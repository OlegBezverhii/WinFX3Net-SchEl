//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.Forms;

interface

uses
  SysUtils, Classes, Vcl.Forms, System.Win.TaskbarCore, Vcl.Controls, System.Win.Registry, Vcl.Graphics, System.UIConsts, System.Generics.Defaults, System.Generics.Collections, Vcl.ImgList, Vcl.Menus, System.TypInfo, System.Classes;

type
  TScrollBarKind = (sbHorizontal, sbVertical);
  TScrollBarStyle = (ssRegular, ssFlat, ssHotTrack);
  TControlScrollBar = class(TPersistent)
  published
    function IsScrollBarVisible:Boolean;//005BF398
    procedure ChangeBiDiPosition;//005BF1AC
    procedure Assign(Source:TPersistent);//005BF15C
  public
    FControl:TScrollingWinControl;//f4
    FIncrement:TScrollBarInc;//f8
    FPageIncrement:TScrollBarInc;//fA
    FPosition:Integer;//fC
    FRange:Integer;//f10
    FCalcRange:Integer;//f14
    FKind:TScrollBarKind;//f18
    FMargin:Word;//f1A
    FVisible:Boolean;//f1C
    FTracking:Boolean;//f1D
    FScaled:Boolean;//f1E
    FSmooth:Boolean;//f1F
    FDelay:Integer;//f20
    FButtonSize:Integer;//f24
    FColor:TColor;//f28
    FParentColor:Boolean;//f2C
    FSize:Integer;//f30
    FStyle:TScrollBarStyle;//f34
    FThumbSize:Integer;//f38
    FPageDiv:Integer;//f3C
    FLineDiv:Integer;//f40
    FUpdateNeeded:Boolean;//f44
    procedure Assign(Source:TPersistent); virtual;//v8//005BF15C
    constructor Create(AControl:TScrollingWinControl; AKind:TScrollBarKind);//005BF0C8
    procedure IsStoredIncrement(Value:TScrollBarInc);//005BF154
    function ControlSize(ControlSB:Boolean; AssumeSB:Boolean):Integer;//005BF474
    function GetScrollPos:Integer;//005BF4F4
    function NeedsScrollBarVisible:Boolean;//005BF504
    procedure SetButtonSize(Value:Integer);//005BF87C
    procedure SetColor(Value:Graphics.TColor);//005BF8BC
    procedure SetParentColor(Value:Boolean);//005BF8D8
    procedure SetPosition(Value:Integer);//005BF8F0
    procedure SetSize(Value:Integer);//005BF9AC
    procedure SetStyle(Value:TScrollBarStyle);//005BF9EC
    procedure SetThumbSize(Value:Integer);//005BFA04
    procedure DoSetRange(Value:Integer);//005BFA1C
    procedure SetRange(Value:Integer);//005BFA34
    procedure IsStoredRange(Value:Integer);//005BFA48
    procedure SetVisible(Value:Boolean);//005BFA58
    procedure Update(ControlSB:Boolean; AssumeSB:Boolean);//005BFB6C
  end;
  TScrollingWinControl = class(TWinControl)
  published
    constructor Create(AOwner:TComponent);//005BFC80
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure ScrollInView(AControl:TControl);//005C01E0
    destructor Destroy();//005BFD20
  public
    FAutoRangeCount:Integer;//f290
    FAutoScroll:Boolean;//f294
    FHorzScrollBar:TControlScrollBar;//f298
    FPanPoint:TPoint;//f29C
    FVertScrollBar:TControlScrollBar;//f2A0
    FUpdatingScrollBars:Boolean;//f2A4
    FVertScrollBar:TControlScrollBar;//f2A8
    destructor Destroy(); virtual;//005BFD20
    constructor Create(AOwner:TComponent); virtual;//v3C//005BFC80
    //procedure v54(?:?; ?:?); virtual;//v54//005BFF28
    //procedure v58(?:?); virtual;//v58//005BFF9C
    //procedure vB8(?:?); virtual;//vB8//005C0538
    procedure AlignControls(AControl:TControl; var ARect:Windows.TRect); virtual;//vBC//005BFDD0
    procedure CreateParams(var Params:Controls.TCreateParams); virtual;//vC4//005BFD80
    procedure CreateWnd; virtual;//vCC//005BFD90
    //function v108:?; virtual;//v108//005BFDF0
    procedure AutoScrollInView(AControl:Controls.TControl); virtual;//v10C//005C0178
    procedure v110; virtual;//v110//005C03FC
    //procedure WMSize(?:?); message WM_SIZE;//005C0400
    procedure WMHScroll(Message:Messages.TWMCommand); message WM_HSCROLL;//005C04F0
    procedure WMVScroll(Message:Messages.TWMHScroll); message WM_VSCROLL;//005C0514
    procedure CMBiDiModeChanged(Message:Messages.TMessage); message CM_BIDIMODECHANGED;//005C05D8
    procedure sub_004EB37C; dynamic;//005BFE10
    //procedure sub_004E5F1C(?:?); dynamic;//005C0194
    procedure ChangeScale(M:Integer; D:Integer); dynamic;//005C03D8
    procedure CalcAutoRange;//005BFFE0
    procedure SetHorzScrollBar(Value:TControlScrollBar);//005C0040
    procedure SetVertScrollBar(Value:TControlScrollBar);//005C004C
    procedure UpdateScrollBars;//005C0058
    procedure ScaleScrollBars(M:Integer; D:Integer);//005C0334
  end;
  TFormBorderStyle = (bsNone, bsSingle, bsSizeable, bsDialog, bsToolWindow, bsSizeToolWin);
  TBorderStyle = (bsNone, bsSingle);
  TScrollBox = class(TScrollingWinControl)
  published
    constructor Create(AOwner:TComponent);//005C0668
  public
    FBorderStyle:TBorderStyle;//f2B0
    constructor Create(AOwner:TComponent); virtual;//v3C//005C0668
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//005C0710
    procedure vEC; virtual;//vEC//005C07A8
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//005C0774
    procedure CMVisibleChanged; message CM_VISIBLECHANGED;//005C06F4
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//005C077C
    procedure SetAutoScroll(Value:Boolean);//005C0004
  end;
  TCustomFrame = class(TScrollingWinControl)
  published
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);//005C08DC
    constructor Create(AOwner:TComponent);//005C07AC
  public
    constructor Create(AOwner:TComponent); virtual;//v3C//005C07AC
    //procedure v8C(?:?); virtual;//v8C//005C09A8
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//005C08B4
    procedure vEC; virtual;//vEC//005C0948
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?); dynamic;//005C08DC
  end;
  TFrame = class(TCustomFrame)
  end;
  TPopupWnd = TPopupWnd = record//size=8
ID:Integer;//f0
ControlWnd:HWND;//f4
end;;
  TPopupWndArray = array of TPopupWnd;
//elSize = 8;
  TFormStyle = (fsNormal, fsMDIChild, fsMDIForm, fsStayOnTop);
  TPosition = (poDesigned, poDefault, poDefaultPosOnly, poDefaultSizeOnly, poScreenCenter, poDesktopCenter, poMainFormCenter, poOwnerFormCenter);
  TDefaultMonitor = (dmDesktop, dmPrimary, dmMainForm, dmActiveForm);
  TPrintScale = (poNone, poProportional, poPrintToFit);
  TShowAction = (saIgnore, saRestore, saMinimize, saMaximize);
  TTileMode = (tbHorizontal, tbVertical);
  TCloseEvent = procedure(Sender:TObject; var Action:TCloseAction) of object;;
  TCloseQueryEvent = procedure(Sender:TObject; var CanClose:Boolean) of object;;
  :6 = (fsCreating, fsVisible, fsShowing, fsModal, fsCreatedMDIChild, fsActivated);
  TFormState = set of :6;
  TShortCutEvent = procedure(var Msg:TWMKey; var Handled:Boolean) of object;;
  THelpEvent = function(Command:Word; Data:NativeInt; var CallHelp:Boolean):Boolean of object;;
  TMonitorDpiChangedEvent = procedure(Sender:TObject; OldDPI:Integer; NewDPI:Integer) of object;;
  TPopupMode = (pmNone, pmAuto, pmExplicit);
  TGlassFrame = class(TPersistent)
  published
    function FrameExtended:Boolean;//005CD380
    procedure IntersectsControl(Control:TControl);//005CD3C8
    constructor Create(Client:TCustomForm);//005CD278
    procedure Assign(Source:TPersistent);//005CD2CC
  public
    FClient:TCustomForm;//f4
    FEnabled:Boolean;//f8
    FLeft:Integer;//fC
    FTop:Integer;//f10
    FRight:Integer;//f14
    FBottom:Integer;//f18
    FOnChange:TNotifyEvent;//f20
    f22:word;//f22
    f24:TCustomForm;//f24
    FSheetOfGlass:Boolean;//f28
    procedure Assign(Source:TPersistent); virtual;//v8//005CD2CC
    procedure vC; virtual;//vC//005CD324
  end;
  TCustomForm = class(TScrollingWinControl)
  published
    procedure Hide;//005C68CC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure Close;//005C672C
    procedure BeforeDestruction;//005C0DF8
    destructor Destroy();//005C0E70
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);//005C1930
    constructor Create(AOwner:TComponent; Dummy:Integer);//005C0DB0
    procedure Dock(NewDockSite:TWinControl; ARect:TRect);//005C2C94
    function CloseQuery:Boolean;//005C67D0
    procedure FocusControl(Control:TWinControl);//005C4758
    constructor Create(AOwner:TComponent);//005C0A2C
    procedure Release;//005C69A8
    procedure SendCancelMode(Sender:TControl);//005C4B58
    procedure SetFocus;//005C68EC
    procedure IsShortCut(var Message:TWMKey);//005C7140
    procedure MouseWheelHandler(var Message:TMessage);//005C71F4
    procedure RecreateAsPopup(AWindowHandle:HWND);//005C6978
    function WantChildKey(Child:TControl; var Message:TMessage):Boolean;//005C1BD4
    procedure set_PopupParent(Value:TCustomForm);//005C34C8
    procedure AfterConstruction;//005C0C04
    function SetFocusedControl(Control:TWinControl):Boolean;//005C47C4
    procedure Show;//005C68D4
    function ShowModal:Integer;//005C69C4
    //procedure DefaultHandler(var Message:?);//005C45D0
    procedure DefocusControl(Control:TWinControl; Removing:Boolean);//005C4710
  public
    FTaskbarHandler:TTaskbarHandler;//f2B0
    FBorderStyle:TFormBorderStyle;//f2B1
    FWindowState:TWindowState;//f2B2
    FShowAction:TShowAction;//f2B3
    FActiveControl:TWinControl;//f2B4
    FActive:Boolean;//f2B5
    FFormStyle:TFormStyle;//f2B6
    FPosition:TPosition;//f2B7
    FFocusedControl:TWinControl;//f2B8
    FTileMode:TTileMode;//f2B9
    FDropTarget:Boolean;//f2BA
    FPrintScale:TPrintScale;//f2BB
    FBorderIcons:TBorderIcons;//f2BC
    FBorderStyle:TFormBorderStyle;//f2BD
    FWindowState:TWindowState;//f2BE
    FShowAction:TShowAction;//f2BF
    FKeyPreview:Boolean;//f2C0
    FActive:Boolean;//f2C1
    FFormStyle:TFormStyle;//f2C2
    FPosition:TPosition;//f2C3
    FDefaultMonitor:TDefaultMonitor;//f2C4
    FTileMode:TTileMode;//f2C5
    FDropTarget:Boolean;//f2C6
    FPrintScale:TPrintScale;//f2C7
    FCanvas:TControlCanvas;//f2C8
    FHelpFile:string;//f2CC
    FIcon:TIcon;//f2D0
    FInCMParentBiDiModeChanged:Boolean;//f2D4
    FMenu:TMainMenu;//f2D8
    FModalResult:TModalResult;//f2DC
    FDesigner:IDesignerHook;//f2E0
    FWindowMenu:TMenuItem;//f2E4
    FPixelsPerInch:Integer;//f2E8
    FObjectMenuItem:TMenuItem;//f2EC
    FOleForm:IOleForm;//f2F0
    FClientWidth:Integer;//f2F4
    FClientHeight:Integer;//f2F8
    FTextHeight:Integer;//f2FC
    FDefClientProc:Pointer;//f300
    FActiveOleControl:TWinControl;//f304
    FSavedBorderStyle:TFormBorderStyle;//f308
    FOnActivate:TNotifyEvent;//f310
    f312:word;//f312
    f314:dword;//f314
    FOnAfterMonitorDpiChanged:TMonitorDpiChangedEvent;//f318
    f31A:word;//f31A
    f31C:dword;//f31C
    FOnBeforeMonitorDpiChanged:TMonitorDpiChangedEvent;//f320
    f322:word;//f322
    f324:dword;//f324
    FOnClose:TCloseEvent;//f328
    f32A:word;//f32A
    f32C:dword;//f32C
    FOnCloseQuery:TCloseQueryEvent;//f330
    f332:word;//f332
    f334:dword;//f334
    FOnDeactivate:TNotifyEvent;//f338
    f33A:word;//f33A
    f33C:dword;//f33C
    FOnHelp:THelpEvent;//f340
    f342:word;//f342
    f344:dword;//f344
    FOnHide:TNotifyEvent;//f348
    f34A:word;//f34A
    f34C:dword;//f34C
    FOnPaint:TNotifyEvent;//f350
    f352:word;//f352
    f354:dword;//f354
    FOnShortCut:TShortCutEvent;//f358
    FAlphaBlendValue:Byte;//f359
    f35A:word;//f35A
    FPopupChildren:TList;//f35C
    FOnShow:TNotifyEvent;//f360
    f362:word;//f362
    FPopupParent:TCustomForm;//f364
    FOnCreate:TNotifyEvent;//f368
    f36A:word;//f36A
    FPopupWnds:TPopupWndArray;//f36C
    FOnDestroy:TNotifyEvent;//f370
    f372:word;//f372
    FInternalPopupParentWnd:HWND;//f374
    FAlphaBlend:Boolean;//f378
    FAlphaBlendValue:byte;//f379
    FPopupChildren:TList;//f37C
    FPopupMode:TPopupMode;//f380
    FPopupParent:TCustomForm;//f384
    FRecreateChildren:TList;//f388
    FPopupWnds:TPopupWndArray;//f38C
    FInternalPopupParent:TCustomForm;//f390
    FOldCreateOrder:Boolean;//f391
    FInternalPopupParentWnd:HWND;//f394
    FScreenSnap:Boolean;//f398
    FSnapBuffer:Integer;//f39C
    FTransparentColor:Boolean;//f3A0
    FTransparentColorValue:TColor;//f3A4
    FCreatingMainForm:Boolean;//f3A8
    FGlassFrame:TGlassFrame;//f3AC
    FRefreshGlassFrame:Boolean;//f3B0
    FOldCreateOrder:Boolean;//f3B1
    FClientHandle:HWND;//f3B4
    FClientInstance:Pointer;//f3B8
    FFormState:TFormState;//f3BC
    procedure AfterConstruction; virtual;//005C0C04
    procedure BeforeDestruction; virtual;//005C0DF8
    //procedure DefaultHandler(var Message:?); virtual;//005C45D0
    destructor Destroy(); virtual;//005C0E70
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005C14F8
    procedure CMFontChanged(var Message:TMessage); virtual;//v10//005C10A0
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//005C1124
    procedure ReadState(Reader:TReader); virtual;//v18//005C1280
    //procedure v30(?:?; ?:?; ?:?); virtual;//v30//005C1C94
    //function QueryInterface(const IID:TGUID; var Obj:Pointer):?; virtual; stdcall;//v38//005C71B8
    constructor Create(AOwner:TComponent); virtual;//v3C//005C0A2C
    //procedure GetClientRect(?:?); virtual;//v64//005C18A8
    //function v70:?; virtual;//v70//005C19B4
    procedure v78; virtual;//v78//005C6E6C
    //procedure v8C(?:?); virtual;//v8C//005C1BD8
    procedure SetParentBiDiMode(Value:Boolean); virtual;//v90//005C1A7C
    //procedure v98(?:?); virtual;//v98//005C1CD4
    procedure AlignControls(AControl:TControl; var ARect:TRect); virtual;//vBC//005C2584
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//005C3AA0
    procedure vC8; virtual;//vC8//005C42C4
    procedure CreateWnd; virtual;//vCC//005C40AC
    procedure vD8; virtual;//vD8//005C4440
    procedure vDC; virtual;//vDC//005C4574
    //procedure vEC(?:?); virtual;//vEC//005C4D38
    procedure SetFocus; virtual;//v104//005C68EC
    //procedure v110(?:?); virtual;//v110//005C5618
    //procedure v114(?:?); virtual;//v114//005C23A0
    procedure v118; virtual;//v118//005C0FC4
    procedure v11C; virtual;//v11C//005C1040
    procedure v120; virtual;//v120//005C1868
    procedure v124; virtual;//v124//005C187C
    procedure v128; virtual;//v128//005C1890
    procedure v12C; virtual;//v12C//005C6DA0
    constructor Create(AOwner:TComponent; Dummy:Integer); virtual;//v130//005C0DB0
    function CloseQuery:Boolean; virtual;//v134//005C67D0
    function SetFocusedControl(Control:TWinControl):Boolean; virtual;//v138//005C47C4
    function ShowModal:Integer; virtual;//v13C//005C69C4
    function WantChildKey(Child:TControl; var Message:TMessage):Boolean; virtual;//v140//005C1BD4
    //procedure WMDestroy(?:?); message WM_DESTROY;//005C52EC
    //procedure WMActivate(?:?); message WM_ACTIVATE;//005C55D4
    //procedure WMPaint(?:?); message WM_PAINT;//005C4FD8
    procedure WMClose; message WM_CLOSE;//005C5650
    //procedure WMQueryEndSession(?:?); message WM_QUERYENDSESSION;//005C5658
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//005C50D0
    //procedure WMShowWindow(?:?); message WM_SHOWWINDOW;//005C5754
    procedure WMSettingChange(Message:Messages.TMessage); message WM_SETTINGCHANGE;//005C6E8C
    //procedure WMGetMinMaxInfo(?:?); message WM_GETMINMAXINFO;//005C5ABC
    //procedure WMEraseBkgnd(?:?); message WM_ICONERASEBKGND;//005C5070
    //procedure WMNextDlgCtl(?:?); message WM_NEXTDLGCTL;//005C5864
    //procedure WMQueryDragIcon(?:?); message WM_QUERYDRAGICON;//005C5104
    procedure WMWindowPosChangingMsg(Message:Messages.TWMWindowPosChanging); message WM_WINDOWPOSCHANGING;//005C5B58
    //procedure WMHelp(?:?); message WM_HELP;//005C5958
    procedure WMNCCreate; message WM_NCCREATE;//005C5214
    //procedure WMNCCalcSize(?:?); message WM_NCCALCSIZE;//005C5D38
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//005C5248
    //procedure WMNCPaint(?:?); message WM_NCPAINT;//005C5048
    procedure WMNCLButtonDown(Message:Messages.TWMNCLButtonDown); message WM_NCLBUTTONDOWN;//005C5260
    procedure WMCommand(Message:Messages.TWMCharToItem); message WM_COMMAND;//005C548C
    //procedure WMSysCommand(?:?); message WM_SYSCOMMAND;//005C56CC
    //procedure WMInitMenuPopup(?:?); message WM_INITMENUPOPUP;//005C54DC
    //procedure sub_004F1B70(?:?); dynamic;//005C5D8C
    //procedure WMMenuSelect(?:?); message WM_MENUSELECT;//005C552C
    //procedure WMMenuChar(?:?); message WM_MENUCHAR;//005C54F4
    //procedure WMEnterMenuLoop(?:?); message WM_ENTERMENULOOP;//005C5890
    //procedure WMMDIActivate(?:?); message WM_MDIACTIVATE;//005C580C
    //procedure sub_005C5DD4(?:?); dynamic;//005C5DD4
    //procedure sub_005C5DAC(?:?); dynamic;//005C5DAC
    procedure sub_005C5D94; dynamic;//005C5D94
    procedure CMActivate; message CM_ACTIVATE;//005C5EDC
    procedure CMDeactivate; message CM_DEACTIVATE;//005C5F00
    //procedure CMDialogKey(?:?); message CM_DIALOGKEY;//005C5F24
    //procedure CMParentFontChanged(?:?); message CM_PARENTFONTCHANGED;//005C66B8
    procedure CMColorChanged(var Message:Messages.TMessage); message CM_COLORCHANGED;//005C3568
    procedure CMFontChanged; message CM_FONTCHANGED;//005C35FC
    procedure CMCtl3DChanged; message CM_CTL3DCHANGED;//005C35B4
    procedure CMTextChanged; message CM_TEXTCHANGED;//005C6660
    procedure CMMenuChanged; message CM_MENUCHANGED;//005C361C
    //procedure CMAppSysCommand(?:?); message CM_APPSYSCOMMAND;//005C5674
    procedure CMShowingChanged; message CM_SHOWINGCHANGED;//005C5FC0
    procedure CMIconChanged; message CM_ICONCHANGED;//005C6638
    procedure CMRelease; message CM_RELEASE;//005C6658
    procedure CMUIActivate; message CM_UIACTIVATE;//005C66B0
    procedure CMBiDiModeChanged(Message:Messages.TMessage); message CM_BIDIMODECHANGED;//005C2640
    procedure CMParentBiDiModeChanged; message CM_PARENTBIDIMODECHANGED;//005C26D8
    //procedure CMActionUpdate(?:?); message CM_ACTIONUPDATE;//005C7070
    //procedure CMActionExecute(?:?); message CM_ACTIONEXECUTE;//005C6F64
    //procedure CMDockNotification(?:?); message CM_DOCKNOTIFICATION;//005C66F0
    procedure CMRawX11Event; message CM_RAWX11EVENT;//005C671C
    //procedure sub_005C276C(?:?); dynamic;//005C276C
    procedure IsShortCut(var Message:TWMKey); dynamic;//005C7140
    procedure sub_005C4CFC; dynamic;//005C4CFC
    procedure sub_005C0C3C; dynamic;//005C0C3C
    procedure sub_005C722C; dynamic;//005C722C
    procedure sub_005C199C; dynamic;//005C199C
    //procedure sub_005C29E0(?:?; ?:?; ?:?); dynamic;//005C29E0
    //procedure sub_005C2830(?:?; ?:?); dynamic;//005C2830
    procedure sub_005C1848; dynamic;//005C1848
    procedure sub_005C1828; dynamic;//005C1828
    //procedure sub_005C1808(?:?); dynamic;//005C1808
    procedure sub_005C4CCC; dynamic;//005C4CCC
    procedure sub_005C4A64; dynamic;//005C4A64
    procedure sub_005C4C9C; dynamic;//005C4C9C
    procedure MouseWheelHandler(var Message:TMessage); dynamic;//005C71F4
    procedure Dock(NewDockSite:TWinControl; ARect:TRect); dynamic;//005C2C94
    procedure sub_004E8418; dynamic;//005C1B68
    //procedure sub_004E5D58(?:?); dynamic;//005C4F34
    //procedure sub_004E668C(?:?; ?:?); dynamic;//005C2CD8
    procedure ChangeScale(M:Integer; D:Integer); dynamic;//005C16B8
    procedure BeginAutoDrag; dynamic;//005C16B4
    procedure SetChildOrder(Child:Classes.TComponent; Order:Integer); dynamic;//005C19E8
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?); dynamic;//005C1930
  end;
  TForm = class(TCustomForm)
  published
    function get_MDIChildren(I:Integer):TForm;//005C2DB0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  end;
  TCustomDockForm = class(TCustomForm)
  published
    constructor Create(AOwner:TComponent);//005C76C4
  public
    procedure CMFontChanged(var Message:TMessage); virtual;//v10//005C7884
    constructor Create(AOwner:TComponent); virtual;//v3C//005C76C4
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//005C78FC
    procedure WMNCLButtonDown(Message:Messages.TWMNCLButtonDown); message WM_NCLBUTTONDOWN;//005C7924
    procedure CMVisibleChanged; message CM_VISIBLECHANGED;//005C7B50
    //procedure CMControlLIstChange(?:?); message CM_CONTROLLISTCHANGE;//005C79B8
    //procedure CMUndockClient(?:?); message CM_UNDOCKCLIENT;//005C7B38
    //procedure sub_005C7A10(?:?); dynamic;//005C7A10
    //procedure sub_004EE62C(?:?; ?:?; ?:?; ?:?); dynamic;//005C78D0
    procedure sub_004EE464; dynamic;//005C7864
    //procedure sub_004EE458(?:?; ?:?); dynamic;//005C7734
  end;
  TMonitor = class(TObject)
  public
    FHandle:HMONITOR;//f4
    FMonitorNum:Integer;//f8
  end;
  TCursorRec = TCursorRec = record//size=C
Next:PCursorRec;//f0
Index:Integer;//f4
Handle:HICON;//f8
end;;
  TMonitorDefaultTo = (mdNearest, mdNull, mdPrimary);
  TScreen = class(TComponent)
  published
    function GetCursors(Index:Integer):HICON;//005C86C4
    function GetCustomForms(Index:Integer):TCustomForm;//005C8138
    procedure ResetFonts;//005C8FE4
    procedure SetCursors(Index:Integer; Handle:HICON);//005C8798
    function GetForm(Index:Integer):TForm;//005C811C
    function GetMonitor(Index:Integer):TMonitor;//005C80F0
    function GetDataModule(Index:Integer):TDataModule;//005C86A8
    procedure Realign;//005C8A14
    procedure DisableAlign;//005C89EC
    destructor Destroy();//005C7F04
    constructor Create;//005C7D68
    procedure EnableAlign;//005C89F4
    function MonitorFromWindow(Handle:NativeUInt; MonitorDefault:TMonitorDefaultTo):TMonitor;//005C93A4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function MonitorFromPoint(Point:TPoint; MonitorDefault:TMonitorDefaultTo):TMonitor;//005C9378
  public
    FFonts:TStrings;//f40
    FImes:TStrings;//f44
    FDefaultIme:string;//f48
    FDefaultKbLayout:HKL;//f4C
    FPixelsPerInch:Integer;//f50
    FCursor:TCursor;//f54
    FCursorCount:Integer;//f58
    FForms:TList;//f5C
    FCustomForms:TList;//f60
    FDataModules:TList;//f64
    FMonitors:TList;//f68
    FActiveControl:TWinControl;//f6C
    FActiveCustomForm:TCustomForm;//f70
    FActiveForm:TForm;//f74
    FLastActiveControl:TWinControl;//f78
    FLastActiveCustomForm:TCustomForm;//f7C
    FFocusedForm:TCustomForm;//f80
    FSaveFocusedList:TList;//f84
    FHintFont:TFont;//f88
    FIconFont:TFont;//f8C
    FMenuFont:TFont;//f90
    FMessageFont:TFont;//f94
    FControlState:TControlState;//f96
    FCaptionFont:TFont;//f98
    FAlignLevel:Word;//f9C
    FControlState:TControlState;//f9E
    FOnActiveControlChange:TNotifyEvent;//fA0
    FOnActiveControlChange:TNotifyEvent;//fA8
    FOnActiveFormChange:TNotifyEvent;//fB0
    FDefaultCursor:HCURSOR;//fB4
    FCursorList:PCursorRec;//fB8
    FDefaultCursor:HICON;//fBC
    destructor Destroy(); virtual;//005C7F04
    constructor Create; virtual;//v3C//005C7D68
  end;
  TTimerMode = (tmShow, tmHide);
  TPopupForm = TPopupForm = record//size=C
FormID:Integer;//f0
Form:TCustomForm;//f4
WasPopup:Boolean;//f8
end;;
  TPopupFormArray = array of TPopupForm;
//elSize = C;
  TMessageEvent = procedure(var Msg:tagMSG; var Handled:Boolean) of object;;
  TExceptionEvent = procedure(Sender:TObject; E:Exception) of object;;
  TGetHandleEvent = procedure(var Handle:HWND) of object;;
  TIdleEvent = procedure(Sender:TObject; var Done:Boolean) of object;;
  TShowHintEvent = procedure(var HintStr:string; var CanShow:Boolean; var HintInfo:THintInfo) of object;;
  TWindowHook = function(var Message:TMessage):Boolean of object;;
  TSettingChangeEvent = procedure(Sender:TObject; Flag:Integer; const Section:string; var Result:Integer) of object;;
  TApplication.TBiDiKeyboard = TApplication.TBiDiKeyboard = record//size=10
f0:string;//f0
f4:string;//f4
end;
BiDiKeyboard:string;//f0
NonBiDiKeyboard:string;//f4
BiDiKeyboardHKL:HKL;//f8
NonBiDiKeyboardHKL:HKL;//fC
end;
//Methods:
SetBiDiKeyboard(Value:string);//005C94B4
SetNonBiDiKeyboard(Value:string);//005C950C
GetBidiKeyboard:string;//0079EC18
GetNonBidiKeyboard:string;//0079EC18
ApplyBiDiKeyboardLayout;//005C9570
ApplyNonBiDiKeyboardLayout;//005C9580;
  :TApplication.:1 = array of HWND;
//elSize = 4
//varType equivalent: varInteger;
  TApplication = class(TComponent)
  published
    procedure NormalizeTopMosts;//005C9E18
    procedure NormalizeAllTopMosts;//005C9E20
    procedure ProcessMessages;//005CB3E4
    procedure Restore;//005CAC04
    procedure RemovePopupForm(APopupForm:TCustomForm);//005C9E28
    procedure Initialize;//005CB4FC
    procedure HookSynchronizeWakeup;//005CD00C
    procedure Minimize;//005CAB00
    procedure ModalFinished;//005C9DEC
    procedure ModalStarted;//005C9DC0
    function UpdateAction(Action:TBasicAction):Boolean;//005CCF5C
    procedure UnhookSynchronizeWakeup;//005CD01C
    function UseRightToLeftAlignment:Boolean;//005CA190
    function MessageBox(Text:PWideChar; Caption:PWideChar; Flags:Integer):Integer;//005CB8AC
    function UseRightToLeftReading:Boolean;//005CA178
    procedure Run;//005CB670
    procedure RestoreTopMosts;//005C9E80
    procedure ShowException(E:Exception);//005CBA2C
    //procedure UnhookMainWindow(Hook:TWindowHook; ?:?);//005CB480
    procedure Terminate;//005CB790
    //procedure HookMainWindow(Hook:TWindowHook; ?:?);//005CB420
    procedure BringToFront;//005CAD38
    function AddPopupForm(APopupForm:TCustomForm):Integer;//005CCC9C
    procedure ControlDestroyed(Control:TControl);//005C9BEC
    //procedure CreateForm(InstanceClass:TComponentClass; var Reference:?);//005CB514
    procedure CancelHint;//005CC5FC
    destructor Destroy();//005C9804
    constructor Create;//005C9590
    procedure ActivateHint(CursorPos:TPoint);//005CC8CC
    procedure ApplyNonBiDiKeyboardLayout;//005CCC90
    procedure ApplyBiDiKeyboardLayout;//005CCC84
    function HelpContext(Context:THelpContext):Boolean;//005CBD90
    procedure HelpCommand(Command:Integer; Data:NativeInt);//005CBE18
    function HelpKeyword(Keyword:string):Boolean;//005CBD00
    procedure HintMouseMessage(Control:TControl; var Message:TMessage);//005CC420
    procedure HideHint;//005CC588
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure CreateHandle;//005C99D4
    function ExecuteAction(Action:TBasicAction):Boolean;//005CCF34
    procedure HandleMessage;//005CB3FC
    procedure HandleException(Sender:TObject);//005CB828
  public
    FAppIconic:Boolean;//f40
    FBiDiMode:TBiDiMode;//f41
    FBiDiKeyboard:TBiDiKeyboard;//f44
    FDefaultFont:TFont;//f4C
    FMainForm:TForm;//f50
    FDefaultFont:TFont;//f54
    FMainForm:TForm;//f58
    FMouseControl:TControl;//f5C
    FHelpSystem:IHelpSystem;//f60
    FHelpFile:string;//f64
    FUpdateFormatSettings:Boolean;//f65
    FUpdateMetricSettings:Boolean;//f66
    FShowMainForm:Boolean;//f67
    FHint:string;//f68
    FHintActive:Boolean;//f6C
    FUpdateFormatSettings:Boolean;//f6D
    FUpdateMetricSettings:Boolean;//f6E
    FShowMainForm:Boolean;//f6F
    FHintColor:TColor;//f70
    FHintControl:TControl;//f74
    FHintCursorRect:TRect;//f78
    FHintHidePause:Integer;//f80
    FHintPause:Integer;//f84
    FHintHidePause:Integer;//f88
    FHintPause:Integer;//f8C
    FHintShortCuts:Boolean;//f90
    FHintShortPause:Integer;//f94
    FTimerMode:TTimerMode;//f95
    FTimerHandle:Word;//f96
    FHintWindow:THintWindow;//f98
    FShowHint:Boolean;//f9C
    FTimerMode:TTimerMode;//f9D
    FTimerHandle:NativeUInt;//fA0
    FTitle:string;//fA4
    FTopMostList:TList;//fA8
    FTopMostLevel:Integer;//fAC
    FPopupOwners:TList;//fB0
    FActive:Boolean;//fB1
    FAllowTesting:Boolean;//fB2
    FPopupLevel:Integer;//fB4
    FIcon:TIcon;//fB8
    FRunning:Boolean;//fB9
    FTerminate:Boolean;//fBC
    FActive:Boolean;//fBD
    FAllowTesting:Boolean;//fBE
    FTestLib:NativeUInt;//fC0
    FHandleCreated:Boolean;//fC4
    FRunning:Boolean;//fC5
    FWindowHooks:TList;//fC8
    FWindowList:Pointer;//fCC
    FDialogHandle:HWND;//fD0
    FAutoDragDocking:Boolean;//fD4
    FActionUpdateDelay:Integer;//fD8
    FModalLevel:Integer;//fDC
    FCreatingMainForm:Boolean;//fDD
    FEnumAllWindowsOnActivateHint:Boolean;//fDE
    FMainFormOnTaskBar:Boolean;//fDF
    FCurrentPopupID:Integer;//fE0
    FPopupForms:TPopupFormArray;//fE4
    FModalPopupMode:TPopupMode;//fE8
    FCreatingMainForm:Boolean;//fE9
    FEnumAllWindowsOnActivateHint:Boolean;//fEA
    FMainFormOnTaskBar:Boolean;//fEB
    FLastActivePopup:HWND;//fEC
    FOwnedAppWnds::1;//fF0
    FInitialMainFormState:TWindowState;//fF4
    FOnActionExecute:TActionEvent;//fF8
    fFA:word;//fFA
    fFC:dword;//fFC
    FOnActionUpdate:TActionEvent;//f100
    f102:word;//f102
    f104:dword;//f104
    FOnException:TExceptionEvent;//f108
    f10C:dword;//f10C
    FOnGetActiveFormHandle:TGetHandleEvent;//f110
    f112:word;//f112
    f114:dword;//f114
    FOnGetMainFormHandle:TGetHandleEvent;//f118
    f11A:word;//f11A
    f11C:dword;//f11C
    FOnMessage:TMessageEvent;//f120
    f124:dword;//f124
    FOnModalBegin:TNotifyEvent;//f128
    f12A:word;//f12A
    f12C:dword;//f12C
    FOnModalEnd:TNotifyEvent;//f130
    f132:word;//f132
    f134:dword;//f134
    FOnHelp:THelpEvent;//f138
    f13C:dword;//f13C
    FOnHint:TNotifyEvent;//f140
    f142:word;//f142
    f144:dword;//f144
    FOnIdle:TIdleEvent;//f148
    f14A:word;//f14A
    f14C:dword;//f14C
    FOnDeactivate:TNotifyEvent;//f150
    f154:dword;//f154
    FOnActivate:TNotifyEvent;//f158
    f15C:dword;//f15C
    FOnMinimize:TNotifyEvent;//f160
    f162:word;//f162
    f164:dword;//f164
    FOnRestore:TNotifyEvent;//f168
    f16A:word;//f16A
    f16C:dword;//f16C
    FOnShortCut:TShortCutEvent;//f170
    f174:dword;//f174
    FOnShowHint:TShowHintEvent;//f178
    f17A:word;//f17A
    f17C:dword;//f17C
    FOnSettingChange:TSettingChangeEvent;//f180
    FObjectInstance:Pointer;//f184
    FHandle:HWND;//f188
    FObjectInstance:Pointer;//f18C
    FIsMetropolisUI:Boolean;//f18D
    FPopupControlWnd:HWND;//f190
    FNeedToUninitialize:Boolean;//f194
    FIsMetropolisUI:Boolean;//f195
    destructor Destroy(); virtual;//005C9804
    constructor Create; virtual;//v3C//005C9590
  end;
  TScrollingStyleHook.TScrollWindow = class(TWinControl)
  published
    constructor TScrollWindow.Create(AOwner:TComponent);//005CD560
  public
    FStyleHook:TScrollingStyleHook;//f290
    FVertical:Boolean;//f294
    constructor TScrollWindow.Create(AOwner:TComponent); virtual;//v3C//005CD560
    procedure v98; virtual;//v98//005CD748
    procedure TScrollWindow.CreateParams(var Params:TCreateParams); virtual;//vC4//005CD5AC
    //procedure TScrollWindow.WMPaint(?:?); message WM_PAINT;//005CD60C
    //procedure TScrollWindow.WMEraseBkgnd(?:?); message WM_ERASEBKGND;//005CD750
    //procedure TScrollWindow.WMNCHitTest(?:?); message WM_NCHITTEST;//005CD604
  end;
  TScrollingStyleHook = class(TMouseTrackControlStyleHook)
  published
    destructor Destroy();//005CD7A0
    constructor Create(AControl:TWinControl);//005CD758
  public
    FHorzDownState:TThemedScrollBar;//f28
    FHorzScrollWnd:TScrollWindow;//f2C
    FHorzSliderState:TThemedScrollBar;//f30
    FHorzUpState:TThemedScrollBar;//f31
    FLeftButtonDown:Boolean;//f32
    FListPos:Single;//f34
    FPrevScrollPos:Integer;//f38
    FScrollPos:Single;//f3C
    FVertDownState:TThemedScrollBar;//f40
    FVertScrollWnd:TScrollWindow;//f44
    FVertSliderState:TThemedScrollBar;//f48
    FVertUpState:TThemedScrollBar;//f49
    FInitingScrollBars:Boolean;//f4A
    destructor Destroy(); virtual;//005CD7A0
    procedure v10; virtual;//v10//005CF828
    procedure v14; virtual;//v14//005CF830
    procedure v18; virtual;//v18//005CDB34
    procedure v1C; virtual;//v1C//005CF948
    constructor Create(AControl:TWinControl); virtual;//v20//005CD758
    procedure v38; virtual;//v38//005CDAE4
    procedure v40; virtual;//v40//005CEA54
    //procedure v44(?:?); virtual;//v44//005CE1D4
    //procedure v48(?:?); virtual;//v48//005CDE48
    procedure v4C; virtual;//v4C//005CEA7C
    procedure WMMove; message WM_MOVE;//005CF9C8
    procedure WMSize; message WM_SIZE;//005CFA04
    procedure WMClose; message WM_CLOSE;//005CF844
    //procedure WMShowWindow(?:?); message WM_SHOWWINDOW;//005CF84C
    //procedure WMWindowPosChangedMsg(?:?); message WM_WINDOWPOSCHANGED;//005CF8D8
    //procedure WMNCMouseMove(?:?); message WM_NCMOUSEMOVE;//005CEFC4
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//005CEB50
    //procedure WMNCLButtonUp(?:?); message WM_NCLBUTTONUP;//005CEDD8
    procedure WMNCLButtonDblClk; message WM_NCLBUTTONDBLCLK;//005CEDD0
    procedure WMKeyDown; message WM_KEYDOWN;//005CF7E0
    procedure WMKeyUp; message WM_KEYUP;//005CF7F8
    procedure WMHScroll; message WM_HSCROLL;//005CEAAC
    procedure WMVScroll; message WM_VSCROLL;//005CEAC4
    //procedure WMMouseMove(?:?); message WM_MOUSEMOVE;//005CF41C
    procedure WMLButtonDown; message WM_LBUTTONDOWN;//005CF810
    procedure WMLButtonUp; message WM_LBUTTONUP;//005CF2EC
    procedure WMMouseWheel; message WM_MOUSEWHEEL;//005CEADC
    //procedure sub_005CEAF4(?:?); dynamic;//005CEAF4
    procedure CMVisibleChanged; message CM_VISIBLECHANGED;//005CF950
  end;
  TFormStyleHook.TMainMenuBarStyleHook.TMenuBarItem = TFormStyleHook.TMainMenuBarStyleHook.TMenuBarItem = record//size=1C
Index:Integer;//f0
State:TThemedMenu;//f4
MenuItem:TMenuItem;//f8
ItemRect:TRect;//fC
end;;
  :TFormStyleHook.TMainMenuBarStyleHook.:1 = array of TFormStyleHook.TMainMenuBarStyleHook.TMenuBarItem;
//elSize = 1C;
  TFormStyleHook.TMainMenuBarStyleHook = class(TObject)
  published
    procedure TMainMenuBarStyleHook.Paint(Canvas:TCanvas);//005D1590
    procedure TMainMenuBarStyleHook.MouseUp(X:Integer; Y:Integer);//005D2290
    procedure TMainMenuBarStyleHook.MouseMove(X:Integer; Y:Integer);//005D2420
    procedure TMainMenuBarStyleHook.TrackMDIChildSystemMenu;//005D2570
    //function TMainMenuBarStyleHook.TrackSystemMenu:?;//005D2674
    procedure TMainMenuBarStyleHook.ProcessMenuLoop(ATrackMenu:Boolean);//005CFFBC
    procedure TMainMenuBarStyleHook.MouseDown(X:Integer; Y:Integer);//005D2370
    function TMainMenuBarStyleHook.CheckHotKeyItem(ACharCode:Word):Boolean;//005CFF28
    destructor TMainMenuBarStyleHook.Destroy();//005CFB84
    constructor sub_005CFA80(FormHook:TFormStyleHook);//005CFA80
    procedure TMainMenuBarStyleHook.MenuEnter(ATrackMenu:Boolean);//005CFE58
    procedure TMainMenuBarStyleHook.Invalidate;//005D0A64
    function TMainMenuBarStyleHook.GetMenuHeight(AWidth:Integer):Integer;//005D0D28
  public
    FActiveItem:Integer;//f4
    FBoundsRect:TRect;//f8
    FEnterWithKeyboard:Boolean;//f18
    FFormHook:TFormStyleHook;//f1C
    FIcon:TIcon;//f20
    FIconHandle:HICON;//f24
    FInMenuLoop:Boolean;//f28
    FItemCount:Integer;//f2C
    FItems:TMainMenuBarStyleHook.:1;//f30
    FHotMDIButton:Integer;//f34
    FOldMDIHotButton:Integer;//f38
    FMDIButtons:?;//f3C
    FMDIChildSysMenuActive:Boolean;//f84
    FMDIChildSystemMenuTracking:Boolean;//f85
    FMenuActive:Boolean;//f86
    FMenuHook:HHOOK;//f88
    FMenuPush:Boolean;//f8C
    FMouseInMainMenu:Boolean;//f8D
    FMustActivateMDIChildSysMenu:Boolean;//f8E
    FMustActivateMenuItem:Boolean;//f8F
    FMustActivateSysMenu:Boolean;//f90
    FOldActiveItem:Integer;//f94
    FOldCursorPos:TPoint;//f98
    FPressedMDIButton:Integer;//fA0
    FSelectFirstItem:Boolean;//fA4
    FShowMDIButtons:Boolean;//fA5
    FSysMenuActive:Boolean;//fA6
    FSystemMenuTracking:Boolean;//fA7
  end;
  TFormStyleHook = class(TMouseTrackControlStyleHook)
  published
    procedure Invalidate;//005D2B24
    constructor Create(AControl:TWinControl);//005D28D4
    destructor Destroy();//005D29F4
  public
    FCaptionRect:TRect;//f28
    FChangeSizeCalled:Boolean;//f38
    FChangeVisibleChildHandle:HWND;//f3C
    FCloseButtonRect:TRect;//f40
    FFormActive:Boolean;//f50
    FHotButton:Integer;//f54
    FHeight:Integer;//f58
    FHelpButtonRect:TRect;//f5C
    FIcon:TIcon;//f6C
    FIconHandle:HICON;//f70
    FMainMenuBarHook:TMainMenuBarStyleHook;//f74
    FMaxButtonRect:TRect;//f78
    FMDIClientInstance:Pointer;//f88
    FMDIHorzScrollBar:TWinControl;//f8C
    f8D:byte;//f8D
    f8F:byte;//f8F
    FMDIPrevClientProc:Pointer;//f90
    FMDIScrollSizeBox:TWinControl;//f94
    FMDIStopHorzScrollBar:Boolean;//f98
    FMDIStopVertScrollBar:Boolean;//f99
    FMDIVertScrollBar:TWinControl;//f9C
    FMinButtonRect:TRect;//fA0
    FLeft:Integer;//fB0
    FNeedsUpdate:Boolean;//fB4
    FOldHorzSrollBarPosition:Integer;//fB8
    FOldVertSrollBarPosition:Integer;//fBC
    FPressedButton:Integer;//fC0
    FRegion:HRGN;//fC4
    FStopCheckChildMove:Boolean;//fC8
    FSysMenuButtonRect:TRect;//fCC
    FTop:Integer;//fDC
    FWidth:Integer;//fE0
    FCaptionEmulation:Boolean;//fE4
    FRestoring:Boolean;//fE5
    FRestoringConstraints:TSizeConstraints;//fE8
    destructor Destroy(); virtual;//005D29F4
    //procedure v14(?:?); virtual;//v14//005D3888
    //procedure v18(?:?); virtual;//v18//005D499C
    //procedure v1C(?:?); virtual;//v1C//005D5EC4
    constructor Create(AControl:TWinControl); virtual;//v20//005D28D4
    procedure Invalidate; virtual;//v28//005D2B24
    procedure v34; virtual;//v34//005D63D0
    procedure v38; virtual;//v38//005D63E4
    procedure v40; virtual;//v40//005D6470
    procedure v44; virtual;//v44//005D659C
    procedure v48; virtual;//v48//005D64D4
    //procedure v4C(?:?); virtual;//v4C//005D3794
    procedure v50; virtual;//v50//005D6538
    procedure v54; virtual;//v54//005D649C
    procedure WMDestroy; message WM_DESTROY;//005D40D4
    procedure WMMove; message WM_MOVE;//005D5B38
    //procedure WMSize(?:?); message WM_SIZE;//005D5BF8
    //procedure WMActivate(?:?); message WM_ACTIVATE;//005D6428
    procedure WMSetText(Message:Messages.TMessage); message WM_SETTEXT;//005D3F98
    //procedure WMShowWindow(?:?); message WM_SHOWWINDOW;//005D65BC
    //procedure WMGetMinMaxInfo(?:?); message WM_GETMINMAXINFO;//005D66CC
    //procedure WMWindowPosChangingMsg(?:?); message WM_WINDOWPOSCHANGING;//005D5CB8
    //procedure WMNCCalcSize(?:?); message WM_NCCALCSIZE;//005D427C
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//005D4234
    //procedure WMNCActivate(?:?); message WM_NCACTIVATE;//005D5620
    //procedure WMNCMouseMove(?:?); message WM_NCMOUSEMOVE;//005D5F60
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//005D6074
    //procedure WMNCLButtonUp(?:?); message WM_NCLBUTTONUP;//005D61E8
    //procedure WMNCLButtonDblClk(?:?); message WM_NCLBUTTONDBLCLK;//005D6380
    //procedure WMNCRButtonDown(?:?); message WM_NCRBUTTONDOWN;//005D6040
    //procedure WMNCRButtonUp(?:?); message WM_NCRBUTTONUP;//005D6194
    procedure sub_005D6454; dynamic;//005D6454
    //procedure WMSysCommand(?:?); message WM_SYSCOMMAND;//005D4104
    //procedure WMInitMenu(?:?); message WM_INITMENU;//005D41C4
    //procedure sub_005D5B70(?:?); dynamic;//005D5B70
    //procedure sub_005D4054(?:?); dynamic;//005D4054
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//005D3F54
    procedure CMMenuChanged; message CM_MENUCHANGED;//005D41FC
  end;
  TScrollBoxStyleHook = class(TScrollingStyleHook)
  published
    constructor Create(AControl:TWinControl);//005D670C
  public
    //procedure v1C(?:?); virtual;//v1C//005D677C
    constructor Create(AControl:TWinControl); virtual;//v20//005D670C
  end;
    //function sub_005BE99C(?:HWND):?;//005BE99C
    //function sub_005BE9C0:?;//005BE9C0
    //procedure sub_005BE9C8(?:?);//005BE9C8
    //procedure sub_005BE9D0(?:HWND; ?:?);//005BE9D0
    //procedure sub_005BEA20(?:HWND; ?:?; ?:?);//005BEA20
    procedure sub_005BEAE4;//005BEAE4
    function DoDisableWindow(Window:Windows.HWND; Data:Windows.LPARAM):BOOL; stdcall;//005BEB20
    function DisableTaskWindows(ActiveWindow:Windows.HWND):Pointer;//005BEB70
    procedure EnableTaskWindows(WindowList:Pointer);//005BEC34
    function DoFindWindow(Window:Windows.HWND; Param:Windows.LPARAM):BOOL; stdcall;//005BEC68
    function FindTopMostWindow(ActiveWindow:Windows.HWND):HWND;//005BECCC
    function SendFocusMessage(Window:Windows.HWND; Msg:Word):Boolean;//005BED0C
    function CheckTaskWindow(Window:Windows.HWND; Data:Windows.LPARAM):BOOL; stdcall;//005BED2C
    function CheckTaskWindowAll(Window:Windows.HWND; Data:Windows.LPARAM):BOOL; stdcall;//005BED4C
    function ForegroundTaskCheck(CheckAll:Boolean):Boolean;//005BED84
    function FindGlobalComponent(const Name:UnicodeString):TComponent;//005BEDC8
    function MakeObjectInstance(Method:Controls.TWndMethod):Pointer;//005BEE48
    procedure sub_005BEE5C;//005BEE5C
    function AllocateHWnd(Method:Controls.TWndMethod):HWND;//005BEE64
    procedure sub_005BEE78;//005BEE78
    function KeysToShiftState(Keys:Word):TShiftState;//005BEE80
    function KeyDataToShiftState(KeyData:LongInt):TShiftState;//005BEED4
    function KeyboardStateToShiftState(const KeyboardState:Windows.TKeyboardState):TShiftState;//005BEF14
    function KeyboardStateToShiftState:TShiftState;//005BEF64
    function IsAccel(VK:Word; const Str:UnicodeString):Boolean;//005BEF84
    function GetRealParentForm(Control:Controls.TControl; TopForm:Boolean):TCustomForm;//005BEFF4
    function GetParentForm(Control:TControl; TopForm:Boolean):TCustomForm;//005BF038
    function ValidParentForm(Control:TControl; TopForm:Boolean):TCustomForm;//005BF048
    //procedure sub_005BF1E4(?:TControl; ?:?);//005BF1E4
    //procedure sub_005BF26C(?:TControl; ?:?);//005BF26C
    //procedure sub_005BF2EC(?:?);//005BF2EC
    function ScrollBarVisible(Code:Word):Boolean;//005BF3CC
    function Adjustment(Code:Word; Metric:Word):Integer;//005BF400
    function GetRealScrollPosition:Integer;//005BF51C
    //procedure sub_005BF578(?:TControlScrollBar; ?:?);//005BF578
    procedure UpdateScrollProperties(Redraw:Boolean);//005BFA64
    procedure CreateParams(var Params:Controls.TCreateParams);//005BFD80
    procedure CreateWnd;//005BFD90
    procedure AlignControls(AControl:TControl; var ARect:Windows.TRect);//005BFDD0
    //function sub_005BFDF0:?;//005BFDF0
    procedure sub_004EB37C;//005BFE10
    //procedure sub_005BFF28(?:?; ?:?);//005BFF28
    //procedure sub_005BFF9C(?:?);//005BFF9C
    procedure AutoScrollInView(AControl:Controls.TControl);//005C0178
    //procedure sub_004E5F1C(?:?);//005C0194
    procedure ChangeScale(M:Integer; D:Integer);//005C03D8
    procedure sub_005C03FC;//005C03FC
    //procedure WMSize(?:?);//005C0400
    procedure WMHScroll(Message:Messages.TWMCommand);//005C04F0
    procedure WMVScroll(Message:Messages.TWMHScroll);//005C0514
    //procedure sub_005C0538(?:?);//005C0538
    procedure CMBiDiModeChanged(Message:Messages.TMessage);//005C05D8

implementation

//005BE99C
{*function sub_005BE99C(?:HWND):?;
begin
 005BE99C    mov         edx,dword ptr ds:[7CA7C8];Application:TApplication
 005BE9A2    cmp         eax,dword ptr [edx+188]
>005BE9A8    jne         005BE9B7
 005BE9AA    mov         eax,[007CA7C8];Application:TApplication
 005BE9AF    cmp         byte ptr [eax+40],1
 005BE9B3    cmc
 005BE9B4    sbb         eax,eax
 005BE9B6    ret
 005BE9B7    push        eax
 005BE9B8    call        user32.IsIconic
 005BE9BD    ret
end;*}

//005BE9C0
{*function sub_005BE9C0:?;
begin
 005BE9C0    mov         eax,[007A1CB0];0x0 gvar_007A1CB0
 005BE9C5    ret
end;*}

//005BE9C8
{*procedure sub_005BE9C8(?:?);
begin
 005BE9C8    mov         [007A1CB0],eax;gvar_007A1CB0
 005BE9CD    ret
end;*}

//005BE9D0
{*procedure sub_005BE9D0(?:HWND; ?:?);
begin
 005BE9D0    push        ebx
 005BE9D1    push        esi
 005BE9D2    push        edi
 005BE9D3    mov         ebx,edx
 005BE9D5    mov         edi,eax
 005BE9D7    test        edi,edi
>005BE9D9    je          005BEA1A
 005BE9DB    push        0EC
 005BE9DD    mov         esi,edi
 005BE9DF    push        esi
 005BE9E0    call        user32.GetWindowLongW
 005BE9E5    test        bl,bl
>005BE9E7    je          005BE9F5
 005BE9E9    test        ah,2
>005BE9EC    jne         005BEA1A
 005BE9EE    or          eax,200
>005BE9F3    jmp         005BE9FF
 005BE9F5    test        ah,2
>005BE9F8    je          005BEA1A
 005BE9FA    and         eax,0FFFFFDFF
 005BE9FF    push        eax
 005BEA00    push        0EC
 005BEA02    push        esi
 005BEA03    call        user32.SetWindowLongW
 005BEA08    push        37
 005BEA0A    push        0
 005BEA0C    push        0
 005BEA0E    push        0
 005BEA10    push        0
 005BEA12    push        0
 005BEA14    push        edi
 005BEA15    call        user32.SetWindowPos
 005BEA1A    pop         edi
 005BEA1B    pop         esi
 005BEA1C    pop         ebx
 005BEA1D    ret
end;*}

//005BEA20
{*procedure sub_005BEA20(?:HWND; ?:?; ?:?);
begin
 005BEA20    push        ebx
 005BEA21    push        esi
 005BEA22    push        edi
 005BEA23    push        ecx
 005BEA24    mov         byte ptr [esp],cl
 005BEA27    mov         ebx,edx
 005BEA29    mov         esi,eax
 005BEA2B    push        0EC
 005BEA2D    push        esi
 005BEA2E    call        user32.GetWindowLongW
 005BEA33    mov         edi,eax
 005BEA35    test        bl,bl
>005BEA37    je          005BEA41
 005BEA39    test        edi,40000
>005BEA3F    je          005BEA5B
 005BEA41    test        bl,bl
>005BEA43    jne         005BEADC
 005BEA49    mov         eax,40000
 005BEA4E    and         eax,edi
 005BEA50    cmp         eax,40000
>005BEA55    jne         005BEADC
 005BEA5B    push        esi
 005BEA5C    call        user32.IsIconic
 005BEA61    cmp         eax,1
 005BEA64    sbb         eax,eax
 005BEA66    inc         eax
 005BEA67    mov         byte ptr [esp+2],al
 005BEA6B    push        esi
 005BEA6C    call        user32.IsWindowVisible
 005BEA71    cmp         eax,1
 005BEA74    sbb         eax,eax
 005BEA76    inc         eax
 005BEA77    mov         byte ptr [esp+1],al
 005BEA7B    movzx       eax,byte ptr [esp+1]
 005BEA80    or          al,byte ptr [esp+2]
>005BEA84    je          005BEA8E
 005BEA86    push        0
 005BEA88    push        esi
 005BEA89    call        user32.ShowWindow
 005BEA8E    test        bl,bl
>005BEA90    je          005BEAA3
 005BEA92    or          edi,40000
 005BEA98    push        edi
 005BEA99    push        0EC
 005BEA9B    push        esi
 005BEA9C    call        user32.SetWindowLongW
>005BEAA1    jmp         005BEAB2
 005BEAA3    and         edi,0FFFBFFFF
 005BEAA9    push        edi
 005BEAAA    push        0EC
 005BEAAC    push        esi
 005BEAAD    call        user32.SetWindowLongW
 005BEAB2    movzx       eax,byte ptr [esp]
 005BEAB6    and         al,byte ptr [esp+1]
>005BEABA    jne         005BEAC3
 005BEABC    cmp         byte ptr [esp+2],0
>005BEAC1    je          005BEADC
 005BEAC3    cmp         byte ptr [esp+2],0
>005BEAC8    je          005BEAD4
 005BEACA    push        6
 005BEACC    push        esi
 005BEACD    call        user32.ShowWindow
>005BEAD2    jmp         005BEADC
 005BEAD4    push        5
 005BEAD6    push        esi
 005BEAD7    call        user32.ShowWindow
 005BEADC    pop         edx
 005BEADD    pop         edi
 005BEADE    pop         esi
 005BEADF    pop         ebx
 005BEAE0    ret
end;*}

//005BEAE4
procedure sub_005BEAE4;
begin
{*
 005BEAE4    mov         eax,[007CA7C8];Application:TApplication
 005BEAE9    cmp         dword ptr [eax+188],0
>005BEAF0    je          005BEAFE
 005BEAF2    xor         edx,edx
 005BEAF4    mov         eax,[007CA7C8];Application:TApplication
 005BEAF9    call        005C9FF8
 005BEAFE    xor         edx,edx
 005BEB00    mov         eax,[007CA7C8];Application:TApplication
 005BEB05    call        TApplication.SetShowHint
 005BEB0A    mov         eax,[007CA7C8];Application:TApplication
 005BEB0F    call        TComponent.Destroying
 005BEB14    mov         eax,[007CA7C8];Application:TApplication
 005BEB19    call        TComponent.DestroyComponents
 005BEB1E    ret
*}
end;

//005BEB20
function DoDisableWindow(Window:Windows.HWND; Data:Windows.LPARAM):BOOL; stdcall;
begin
{*
 005BEB20    push        ebp
 005BEB21    mov         ebp,esp
 005BEB23    push        ebx
 005BEB24    mov         ebx,dword ptr [ebp+8]
 005BEB27    cmp         ebx,dword ptr ds:[7A1CB4]
>005BEB2D    je          005BEB65
 005BEB2F    push        ebx
 005BEB30    call        user32.IsWindowVisible
 005BEB35    test        eax,eax
>005BEB37    je          005BEB65
 005BEB39    push        ebx
 005BEB3A    call        user32.IsWindowEnabled
 005BEB3F    test        eax,eax
>005BEB41    je          005BEB65
 005BEB43    mov         eax,8
 005BEB48    call        @GetMem
 005BEB4D    mov         edx,dword ptr ds:[7A1CC4]
 005BEB53    mov         dword ptr [eax],edx
 005BEB55    mov         dword ptr [eax+4],ebx
 005BEB58    mov         [007A1CC4],eax
 005BEB5D    push        0
 005BEB5F    push        ebx
 005BEB60    call        user32.EnableWindow
 005BEB65    or          eax,0FFFFFFFF
 005BEB68    pop         ebx
 005BEB69    pop         ebp
 005BEB6A    ret         8
*}
end;

//005BEB70
function DisableTaskWindows(ActiveWindow:Windows.HWND):Pointer;
begin
{*
 005BEB70    push        ebp
 005BEB71    mov         ebp,esp
 005BEB73    add         esp,0FFFFFFF4
 005BEB76    push        ebx
 005BEB77    push        esi
 005BEB78    push        edi
 005BEB79    xor         edx,edx
 005BEB7B    mov         dword ptr [ebp-4],edx
 005BEB7E    mov         edx,dword ptr ds:[7A1CB4]
 005BEB84    mov         dword ptr [ebp-8],edx
 005BEB87    mov         edx,dword ptr ds:[7A1CC4]
 005BEB8D    mov         dword ptr [ebp-0C],edx
 005BEB90    mov         [007A1CB4],eax
 005BEB95    xor         eax,eax
 005BEB97    mov         [007A1CC4],eax
 005BEB9C    mov         ebx,5BEB20;DoDisableWindow:Windows.BOOL
 005BEBA1    xor         eax,eax
 005BEBA3    push        ebp
 005BEBA4    push        5BEC22
 005BEBA9    push        dword ptr fs:[eax]
 005BEBAC    mov         dword ptr fs:[eax],esp
 005BEBAF    mov         byte ptr ds:[7A1CC0],1;gvar_007A1CC0
 005BEBB6    xor         eax,eax
 005BEBB8    push        ebp
 005BEBB9    push        5BEBE4
 005BEBBE    push        dword ptr fs:[eax]
 005BEBC1    mov         dword ptr fs:[eax],esp
 005BEBC4    push        0
 005BEBC6    push        ebx
 005BEBC7    call        kernel32.GetCurrentThreadId
 005BEBCC    push        eax
 005BEBCD    call        user32.EnumThreadWindows
 005BEBD2    mov         eax,[007A1CC4]
 005BEBD7    mov         dword ptr [ebp-4],eax
 005BEBDA    xor         eax,eax
 005BEBDC    pop         edx
 005BEBDD    pop         ecx
 005BEBDE    pop         ecx
 005BEBDF    mov         dword ptr fs:[eax],edx
>005BEBE2    jmp         005BEBFD
>005BEBE4    jmp         @HandleAnyException
 005BEBE9    mov         eax,[007A1CC4]
 005BEBEE    call        EnableTaskWindows
 005BEBF3    call        @RaiseAgain
 005BEBF8    call        @DoneExcept
 005BEBFD    xor         eax,eax
 005BEBFF    pop         edx
 005BEC00    pop         ecx
 005BEC01    pop         ecx
 005BEC02    mov         dword ptr fs:[eax],edx
 005BEC05    push        5BEC29
 005BEC0A    mov         byte ptr ds:[7A1CC0],0;gvar_007A1CC0
 005BEC11    mov         eax,dword ptr [ebp-0C]
 005BEC14    mov         [007A1CC4],eax
 005BEC19    mov         eax,dword ptr [ebp-8]
 005BEC1C    mov         [007A1CB4],eax
 005BEC21    ret
>005BEC22    jmp         @HandleFinally
>005BEC27    jmp         005BEC0A
 005BEC29    mov         eax,dword ptr [ebp-4]
 005BEC2C    pop         edi
 005BEC2D    pop         esi
 005BEC2E    pop         ebx
 005BEC2F    mov         esp,ebp
 005BEC31    pop         ebp
 005BEC32    ret
*}
end;

//005BEC34
procedure EnableTaskWindows(WindowList:Pointer);
begin
{*
 005BEC34    push        ebx
 005BEC35    push        esi
 005BEC36    mov         esi,eax
 005BEC38    test        esi,esi
>005BEC3A    je          005BEC63
 005BEC3C    mov         ebx,esi
 005BEC3E    mov         eax,dword ptr [ebx+4]
 005BEC41    push        eax
 005BEC42    call        user32.IsWindow
 005BEC47    test        eax,eax
>005BEC49    je          005BEC56
 005BEC4B    push        0FF
 005BEC4D    mov         eax,dword ptr [ebx+4]
 005BEC50    push        eax
 005BEC51    call        user32.EnableWindow
 005BEC56    mov         esi,dword ptr [ebx]
 005BEC58    mov         eax,ebx
 005BEC5A    call        @FreeMem
 005BEC5F    test        esi,esi
>005BEC61    jne         005BEC3C
 005BEC63    pop         esi
 005BEC64    pop         ebx
 005BEC65    ret
*}
end;

//005BEC68
function DoFindWindow(Window:Windows.HWND; Param:Windows.LPARAM):BOOL; stdcall;
begin
{*
 005BEC68    push        ebp
 005BEC69    mov         ebp,esp
 005BEC6B    push        ebx
 005BEC6C    mov         ebx,dword ptr [ebp+8]
 005BEC6F    cmp         ebx,dword ptr ds:[7A1CB4]
>005BEC75    je          005BECC4
 005BEC77    mov         eax,[007CA7C8];Application:TApplication
 005BEC7C    cmp         ebx,dword ptr [eax+188]
>005BEC82    je          005BECC4
 005BEC84    push        ebx
 005BEC85    call        user32.IsWindowVisible
 005BEC8A    test        eax,eax
>005BEC8C    je          005BECC4
 005BEC8E    push        ebx
 005BEC8F    call        user32.IsWindowEnabled
 005BEC94    test        eax,eax
>005BEC96    je          005BECC4
 005BEC98    push        0EC
 005BEC9A    push        ebx
 005BEC9B    call        user32.GetWindowLongW
 005BECA0    test        al,8
>005BECA2    jne         005BECB5
 005BECA4    cmp         dword ptr ds:[7A1CB8],0
>005BECAB    jne         005BECC4
 005BECAD    mov         dword ptr ds:[7A1CB8],ebx
>005BECB3    jmp         005BECC4
 005BECB5    cmp         dword ptr ds:[7A1CBC],0
>005BECBC    jne         005BECC4
 005BECBE    mov         dword ptr ds:[7A1CBC],ebx
 005BECC4    or          eax,0FFFFFFFF
 005BECC7    pop         ebx
 005BECC8    pop         ebp
 005BECC9    ret         8
*}
end;

//005BECCC
function FindTopMostWindow(ActiveWindow:Windows.HWND):HWND;
begin
{*
 005BECCC    push        ebx
 005BECCD    mov         [007A1CB4],eax
 005BECD2    xor         eax,eax
 005BECD4    mov         [007A1CB8],eax
 005BECD9    xor         eax,eax
 005BECDB    mov         [007A1CBC],eax
 005BECE0    mov         ebx,5BEC68;DoFindWindow:Windows.BOOL
 005BECE5    push        0
 005BECE7    push        ebx
 005BECE8    call        kernel32.GetCurrentThreadId
 005BECED    push        eax
 005BECEE    call        user32.EnumThreadWindows
 005BECF3    cmp         dword ptr ds:[7A1CB8],0
>005BECFA    je          005BED03
 005BECFC    mov         eax,[007A1CB8]
 005BED01    pop         ebx
 005BED02    ret
 005BED03    mov         eax,[007A1CBC]
 005BED08    pop         ebx
 005BED09    ret
*}
end;

//005BED0C
function SendFocusMessage(Window:Windows.HWND; Msg:Word):Boolean;
begin
{*
 005BED0C    push        ebx
 005BED0D    mov         ebx,dword ptr ds:[7A1CB0];gvar_007A1CB0
 005BED13    push        0
 005BED15    push        0
 005BED17    movzx       edx,dx
 005BED1A    push        edx
 005BED1B    push        eax
 005BED1C    call        user32.SendMessageW
 005BED21    cmp         ebx,dword ptr ds:[7A1CB0];gvar_007A1CB0
 005BED27    sete        al
 005BED2A    pop         ebx
 005BED2B    ret
*}
end;

//005BED2C
function CheckTaskWindow(Window:Windows.HWND; Data:Windows.LPARAM):BOOL; stdcall;
begin
{*
 005BED2C    push        ebp
 005BED2D    mov         ebp,esp
 005BED2F    push        ebx
 005BED30    mov         eax,dword ptr [ebp+0C]
 005BED33    or          edx,0FFFFFFFF
 005BED36    mov         ecx,eax
 005BED38    mov         ebx,dword ptr [ecx]
 005BED3A    cmp         ebx,dword ptr [ebp+8]
>005BED3D    jne         005BED45
 005BED3F    xor         edx,edx
 005BED41    mov         byte ptr [ecx+4],1
 005BED45    mov         eax,edx
 005BED47    pop         ebx
 005BED48    pop         ebp
 005BED49    ret         8
*}
end;

//005BED4C
function CheckTaskWindowAll(Window:Windows.HWND; Data:Windows.LPARAM):BOOL; stdcall;
begin
{*
 005BED4C    push        ebp
 005BED4D    mov         ebp,esp
 005BED4F    push        ecx
 005BED50    push        ebx
 005BED51    push        esi
 005BED52    push        edi
 005BED53    mov         esi,dword ptr [ebp+0C]
 005BED56    mov         ebx,dword ptr [ebp+8]
 005BED59    or          edi,0FFFFFFFF
 005BED5C    lea         eax,[ebp-4]
 005BED5F    push        eax
 005BED60    push        ebx
 005BED61    call        user32.GetWindowThreadProcessId
 005BED66    cmp         ebx,dword ptr [esi]
>005BED68    jne         005BED7A
 005BED6A    call        kernel32.GetCurrentProcessId
 005BED6F    cmp         eax,dword ptr [ebp-4]
>005BED72    jne         005BED7A
 005BED74    xor         edi,edi
 005BED76    mov         byte ptr [esi+4],1
 005BED7A    mov         eax,edi
 005BED7C    pop         edi
 005BED7D    pop         esi
 005BED7E    pop         ebx
 005BED7F    pop         ecx
 005BED80    pop         ebp
 005BED81    ret         8
*}
end;

//005BED84
function ForegroundTaskCheck(CheckAll:Boolean):Boolean;
begin
{*
 005BED84    push        ebx
 005BED85    add         esp,0FFFFFFF8
 005BED88    mov         ebx,eax
 005BED8A    call        user32.GetActiveWindow
 005BED8F    mov         dword ptr [esp],eax
 005BED92    mov         byte ptr [esp+4],0
 005BED97    test        bl,bl
>005BED99    je          005BEDAA
 005BED9B    mov         eax,esp
 005BED9D    push        eax
 005BED9E    push        5BED4C;CheckTaskWindowAll:Windows.BOOL
 005BEDA3    call        user32.EnumWindows
>005BEDA8    jmp         005BEDBD
 005BEDAA    mov         eax,esp
 005BEDAC    push        eax
 005BEDAD    push        5BED2C;CheckTaskWindow:Windows.BOOL
 005BEDB2    call        kernel32.GetCurrentThreadId
 005BEDB7    push        eax
 005BEDB8    call        user32.EnumThreadWindows
 005BEDBD    movzx       eax,byte ptr [esp+4]
 005BEDC2    pop         ecx
 005BEDC3    pop         edx
 005BEDC4    pop         ebx
 005BEDC5    ret
*}
end;

//005BEDC8
function FindGlobalComponent(const Name:UnicodeString):TComponent;
begin
{*
 005BEDC8    push        ebx
 005BEDC9    push        esi
 005BEDCA    push        edi
 005BEDCB    push        ebp
 005BEDCC    mov         ebp,eax
 005BEDCE    mov         eax,[007CA7CC];Screen:TScreen
 005BEDD3    call        TScreen.GetFormCount
 005BEDD8    mov         esi,eax
 005BEDDA    dec         esi
 005BEDDB    test        esi,esi
>005BEDDD    jl          005BEE08
 005BEDDF    inc         esi
 005BEDE0    xor         edi,edi
 005BEDE2    mov         edx,edi
 005BEDE4    mov         eax,[007CA7CC];Screen:TScreen
 005BEDE9    call        TScreen.GetForm
 005BEDEE    mov         ebx,eax
 005BEDF0    test        byte ptr [ebx+1D],2
>005BEDF4    jne         005BEE04
 005BEDF6    mov         edx,dword ptr [ebx+8]
 005BEDF9    mov         eax,ebp
 005BEDFB    call        CompareText
 005BEE00    test        eax,eax
>005BEE02    je          005BEE3E
 005BEE04    inc         edi
 005BEE05    dec         esi
>005BEE06    jne         005BEDE2
 005BEE08    mov         eax,[007CA7CC];Screen:TScreen
 005BEE0D    call        TScreen.GetDataModuleCount
 005BEE12    mov         esi,eax
 005BEE14    dec         esi
 005BEE15    test        esi,esi
>005BEE17    jl          005BEE3C
 005BEE19    inc         esi
 005BEE1A    xor         edi,edi
 005BEE1C    mov         edx,edi
 005BEE1E    mov         eax,[007CA7CC];Screen:TScreen
 005BEE23    call        TScreen.GetDataModule
 005BEE28    mov         ebx,eax
 005BEE2A    mov         edx,dword ptr [ebx+8]
 005BEE2D    mov         eax,ebp
 005BEE2F    call        CompareText
 005BEE34    test        eax,eax
>005BEE36    je          005BEE3E
 005BEE38    inc         edi
 005BEE39    dec         esi
>005BEE3A    jne         005BEE1C
 005BEE3C    xor         ebx,ebx
 005BEE3E    mov         eax,ebx
 005BEE40    pop         ebp
 005BEE41    pop         edi
 005BEE42    pop         esi
 005BEE43    pop         ebx
 005BEE44    ret
*}
end;

//005BEE48
function MakeObjectInstance(Method:Controls.TWndMethod):Pointer;
begin
{*
 005BEE48    push        ebp
 005BEE49    mov         ebp,esp
 005BEE4B    push        dword ptr [ebp+0C]
 005BEE4E    push        dword ptr [ebp+8]
 005BEE51    call        MakeObjectInstance
 005BEE56    pop         ebp
 005BEE57    ret         8
*}
end;

//005BEE5C
procedure sub_005BEE5C;
begin
{*
 005BEE5C    call        FreeObjectInstance
 005BEE61    ret
*}
end;

//005BEE64
function AllocateHWnd(Method:Controls.TWndMethod):HWND;
begin
{*
 005BEE64    push        ebp
 005BEE65    mov         ebp,esp
 005BEE67    push        dword ptr [ebp+0C]
 005BEE6A    push        dword ptr [ebp+8]
 005BEE6D    call        AllocateHWnd
 005BEE72    pop         ebp
 005BEE73    ret         8
*}
end;

//005BEE78
procedure sub_005BEE78;
begin
{*
 005BEE78    call        DeallocateHWnd
 005BEE7D    ret
*}
end;

//005BEE80
function KeysToShiftState(Keys:Word):TShiftState;
begin
{*
 005BEE80    push        ebx
 005BEE81    push        esi
 005BEE82    mov         ebx,eax
 005BEE84    movzx       esi,word ptr ds:[5BEED0]
 005BEE8B    test        bl,4
>005BEE8E    je          005BEE94
 005BEE90    or          si,1
 005BEE94    test        bl,8
>005BEE97    je          005BEE9D
 005BEE99    or          si,4
 005BEE9D    test        bl,1
>005BEEA0    je          005BEEA6
 005BEEA2    or          si,8
 005BEEA6    test        bl,2
>005BEEA9    je          005BEEAF
 005BEEAB    or          si,10
 005BEEAF    test        bl,10
>005BEEB2    je          005BEEB8
 005BEEB4    or          si,20
 005BEEB8    push        12
 005BEEBA    call        user32.GetKeyState
 005BEEBF    test        ax,ax
>005BEEC2    jge         005BEEC8
 005BEEC4    or          si,2
 005BEEC8    mov         eax,esi
 005BEECA    pop         esi
 005BEECB    pop         ebx
 005BEECC    ret
*}
end;

//005BEED4
function KeyDataToShiftState(KeyData:LongInt):TShiftState;
begin
{*
 005BEED4    push        ebx
 005BEED5    push        esi
 005BEED6    mov         esi,eax
 005BEED8    movzx       ebx,word ptr ds:[5BEF10]
 005BEEDF    push        10
 005BEEE1    call        user32.GetKeyState
 005BEEE6    test        ax,ax
>005BEEE9    jge         005BEEEF
 005BEEEB    or          bx,1
 005BEEEF    push        11
 005BEEF1    call        user32.GetKeyState
 005BEEF6    test        ax,ax
>005BEEF9    jge         005BEEFF
 005BEEFB    or          bx,4
 005BEEFF    test        esi,20000000
>005BEF05    je          005BEF0B
 005BEF07    or          bx,2
 005BEF0B    mov         eax,ebx
 005BEF0D    pop         esi
 005BEF0E    pop         ebx
 005BEF0F    ret
*}
end;

//005BEF14
function KeyboardStateToShiftState(const KeyboardState:Windows.TKeyboardState):TShiftState;
begin
{*
 005BEF14    push        ebx
 005BEF15    push        esi
 005BEF16    mov         ebx,eax
 005BEF18    movzx       esi,word ptr ds:[5BEF60]
 005BEF1F    test        byte ptr [ebx+10],80
>005BEF23    je          005BEF29
 005BEF25    or          si,1
 005BEF29    test        byte ptr [ebx+11],80
>005BEF2D    je          005BEF33
 005BEF2F    or          si,4
 005BEF33    test        byte ptr [ebx+12],80
>005BEF37    je          005BEF3D
 005BEF39    or          si,2
 005BEF3D    test        byte ptr [ebx+1],80
>005BEF41    je          005BEF47
 005BEF43    or          si,8
 005BEF47    test        byte ptr [ebx+2],80
>005BEF4B    je          005BEF51
 005BEF4D    or          si,10
 005BEF51    test        byte ptr [ebx+4],80
>005BEF55    je          005BEF5B
 005BEF57    or          si,20
 005BEF5B    mov         eax,esi
 005BEF5D    pop         esi
 005BEF5E    pop         ebx
 005BEF5F    ret
*}
end;

//005BEF64
function KeyboardStateToShiftState:TShiftState;
begin
{*
 005BEF64    push        ebx
 005BEF65    add         esp,0FFFFFF00
 005BEF6B    push        esp
 005BEF6C    call        user32.GetKeyboardState
 005BEF71    mov         eax,esp
 005BEF73    call        KeyboardStateToShiftState
 005BEF78    mov         ebx,eax
 005BEF7A    mov         eax,ebx
 005BEF7C    add         esp,100
 005BEF82    pop         ebx
 005BEF83    ret
*}
end;

//005BEF84
function IsAccel(VK:Word; const Str:UnicodeString):Boolean;
begin
{*
 005BEF84    push        ebp
 005BEF85    mov         ebp,esp
 005BEF87    push        0
 005BEF89    push        0
 005BEF8B    push        ebx
 005BEF8C    push        esi
 005BEF8D    mov         esi,edx
 005BEF8F    mov         ebx,eax
 005BEF91    xor         eax,eax
 005BEF93    push        ebp
 005BEF94    push        5BEFE4
 005BEF99    push        dword ptr fs:[eax]
 005BEF9C    mov         dword ptr fs:[eax],esp
 005BEF9F    lea         edx,[ebp-4]
 005BEFA2    mov         eax,esi
 005BEFA4    call        GetHotkey
 005BEFA9    mov         eax,dword ptr [ebp-4]
 005BEFAC    push        eax
 005BEFAD    lea         eax,[ebp-8]
 005BEFB0    mov         edx,ebx
 005BEFB2    call        @UStrFromWChar
 005BEFB7    mov         eax,dword ptr [ebp-8]
 005BEFBA    mov         cl,1
 005BEFBC    pop         edx
 005BEFBD    call        CompareText
 005BEFC2    test        eax,eax
 005BEFC4    sete        al
 005BEFC7    mov         ebx,eax
 005BEFC9    xor         eax,eax
 005BEFCB    pop         edx
 005BEFCC    pop         ecx
 005BEFCD    pop         ecx
 005BEFCE    mov         dword ptr fs:[eax],edx
 005BEFD1    push        5BEFEB
 005BEFD6    lea         eax,[ebp-8]
 005BEFD9    mov         edx,2
 005BEFDE    call        @UStrArrayClr
 005BEFE3    ret
>005BEFE4    jmp         @HandleFinally
>005BEFE9    jmp         005BEFD6
 005BEFEB    mov         eax,ebx
 005BEFED    pop         esi
 005BEFEE    pop         ebx
 005BEFEF    pop         ecx
 005BEFF0    pop         ecx
 005BEFF1    pop         ebp
 005BEFF2    ret
*}
end;

//005BEFF4
function GetRealParentForm(Control:Controls.TControl; TopForm:Boolean):TCustomForm;
begin
{*
 005BEFF4    push        ebx
 005BEFF5    push        esi
 005BEFF6    mov         ebx,edx
 005BEFF8    mov         esi,eax
>005BEFFA    jmp         005BEFFF
 005BEFFC    mov         esi,dword ptr [esi+40]
 005BEFFF    test        bl,bl
>005BF001    jne         005BF014
 005BF003    mov         eax,esi
 005BF005    mov         edx,dword ptr ds:[5B7120];TCustomForm
 005BF00B    call        @IsClass
 005BF010    test        al,al
>005BF012    jne         005BF01A
 005BF014    cmp         dword ptr [esi+40],0
>005BF018    jne         005BEFFC
 005BF01A    mov         eax,esi
 005BF01C    mov         edx,dword ptr ds:[5B7120];TCustomForm
 005BF022    call        @IsClass
 005BF027    test        al,al
>005BF029    je          005BF030
 005BF02B    mov         eax,esi
 005BF02D    pop         esi
 005BF02E    pop         ebx
 005BF02F    ret
 005BF030    xor         eax,eax
 005BF032    pop         esi
 005BF033    pop         ebx
 005BF034    ret
*}
end;

//005BF038
function GetParentForm(Control:TControl; TopForm:Boolean):TCustomForm;
begin
{*
 005BF038    test        byte ptr [eax+1C],10
>005BF03C    je          005BF040
 005BF03E    xor         edx,edx
 005BF040    call        GetRealParentForm
 005BF045    ret
*}
end;

//005BF048
function ValidParentForm(Control:TControl; TopForm:Boolean):TCustomForm;
begin
{*
 005BF048    push        ebp
 005BF049    mov         ebp,esp
 005BF04B    add         esp,0FFFFFFF4
 005BF04E    push        ebx
 005BF04F    push        esi
 005BF050    xor         ecx,ecx
 005BF052    mov         dword ptr [ebp-0C],ecx
 005BF055    mov         esi,eax
 005BF057    xor         eax,eax
 005BF059    push        ebp
 005BF05A    push        5BF0B9
 005BF05F    push        dword ptr fs:[eax]
 005BF062    mov         dword ptr fs:[eax],esp
 005BF065    mov         eax,esi
 005BF067    call        GetParentForm
 005BF06C    mov         ebx,eax
 005BF06E    test        ebx,ebx
>005BF070    jne         005BF0A3
 005BF072    mov         eax,dword ptr [esi+8]
 005BF075    mov         dword ptr [ebp-8],eax
 005BF078    mov         byte ptr [ebp-4],11
 005BF07C    lea         eax,[ebp-8]
 005BF07F    push        eax
 005BF080    push        0
 005BF082    lea         edx,[ebp-0C]
 005BF085    mov         eax,[007C4B08];^SResString231:TResStringRec
 005BF08A    call        LoadResString
 005BF08F    mov         ecx,dword ptr [ebp-0C]
 005BF092    mov         dl,1
 005BF094    mov         eax,[0046BE9C];EInvalidOperation
 005BF099    call        Exception.CreateFmt
 005BF09E    call        @RaiseExcept
 005BF0A3    xor         eax,eax
 005BF0A5    pop         edx
 005BF0A6    pop         ecx
 005BF0A7    pop         ecx
 005BF0A8    mov         dword ptr fs:[eax],edx
 005BF0AB    push        5BF0C0
 005BF0B0    lea         eax,[ebp-0C]
 005BF0B3    call        @UStrClr
 005BF0B8    ret
>005BF0B9    jmp         @HandleFinally
>005BF0BE    jmp         005BF0B0
 005BF0C0    mov         eax,ebx
 005BF0C2    pop         esi
 005BF0C3    pop         ebx
 005BF0C4    mov         esp,ebp
 005BF0C6    pop         ebp
 005BF0C7    ret
*}
end;

//005BF0C8
constructor TControlScrollBar.Create(AControl:TScrollingWinControl; AKind:TScrollBarKind);
begin
{*
 005BF0C8    push        ebp
 005BF0C9    mov         ebp,esp
 005BF0CB    push        ebx
 005BF0CC    push        esi
 005BF0CD    push        edi
 005BF0CE    test        dl,dl
>005BF0D0    je          005BF0DA
 005BF0D2    add         esp,0FFFFFFF0
 005BF0D5    call        @ClassCreate
 005BF0DA    mov         esi,ecx
 005BF0DC    mov         ebx,edx
 005BF0DE    mov         edi,eax
 005BF0E0    xor         edx,edx
 005BF0E2    mov         eax,edi
 005BF0E4    call        TObject.Create
 005BF0E9    mov         dword ptr [edi+4],esi
 005BF0EC    movzx       eax,byte ptr [ebp+8]
 005BF0F0    mov         byte ptr [edi+18],al
 005BF0F3    mov         cx,50
 005BF0F7    mov         word ptr [edi+0A],cx
 005BF0FB    movzx       eax,cx
 005BF0FE    mov         ecx,0A
 005BF103    xor         edx,edx
 005BF105    div         eax,ecx
 005BF107    mov         word ptr [edi+8],ax
 005BF10B    mov         byte ptr [edi+1C],1
 005BF10F    mov         dword ptr [edi+20],0A
 005BF116    mov         dword ptr [edi+40],4
 005BF11D    mov         dword ptr [edi+3C],0C
 005BF124    mov         dword ptr [edi+28],0FF000014
 005BF12B    mov         byte ptr [edi+2C],1
 005BF12F    mov         byte ptr [edi+44],1
 005BF133    mov         eax,edi
 005BF135    test        bl,bl
>005BF137    je          005BF148
 005BF139    call        @AfterConstruction
 005BF13E    pop         dword ptr fs:[0]
 005BF145    add         esp,0C
 005BF148    mov         eax,edi
 005BF14A    pop         edi
 005BF14B    pop         esi
 005BF14C    pop         ebx
 005BF14D    pop         ebp
 005BF14E    ret         4
*}
end;

//005BF154
procedure TControlScrollBar.IsStoredIncrement(Value:TScrollBarInc);
begin
{*
 005BF154    movzx       eax,byte ptr [eax+1F];TControlScrollBar.FSmooth:Boolean
 005BF158    xor         al,1
 005BF15A    ret
*}
end;

//005BF15C
procedure TControlScrollBar.Assign(Source:TPersistent);
begin
{*
 005BF15C    push        ebx
 005BF15D    push        esi
 005BF15E    push        edi
 005BF15F    mov         esi,edx
 005BF161    mov         ebx,eax
 005BF163    mov         eax,esi
 005BF165    mov         edx,dword ptr ds:[5B4198];TControlScrollBar
 005BF16B    call        @IsClass
 005BF170    test        al,al
>005BF172    je          005BF19F
 005BF174    mov         edi,esi
 005BF176    movzx       edx,byte ptr [edi+1C]
 005BF17A    mov         eax,ebx
 005BF17C    call        TControlScrollBar.SetVisible
 005BF181    mov         edx,dword ptr [edi+10]
 005BF184    mov         eax,ebx
 005BF186    call        TControlScrollBar.SetRange
 005BF18B    mov         edx,dword ptr [edi+0C]
 005BF18E    mov         eax,ebx
 005BF190    call        TControlScrollBar.SetPosition
 005BF195    movzx       eax,word ptr [edi+8]
 005BF199    mov         word ptr [ebx+8],ax
>005BF19D    jmp         005BF1A8
 005BF19F    mov         edx,esi
 005BF1A1    mov         eax,ebx
 005BF1A3    call        TPersistent.Assign
 005BF1A8    pop         edi
 005BF1A9    pop         esi
 005BF1AA    pop         ebx
 005BF1AB    ret
*}
end;

//005BF1AC
procedure TControlScrollBar.ChangeBiDiPosition;
begin
{*
 005BF1AC    push        ebx
 005BF1AD    mov         ebx,eax
 005BF1AF    cmp         byte ptr [ebx+18],0
>005BF1B3    jne         005BF1E1
 005BF1B5    mov         eax,ebx
 005BF1B7    call        TControlScrollBar.IsScrollBarVisible
 005BF1BC    test        al,al
>005BF1BE    je          005BF1E1
 005BF1C0    mov         eax,dword ptr [ebx+4]
 005BF1C3    call        TControl.UseRightToLeftScrollBar
 005BF1C8    test        al,al
>005BF1CA    jne         005BF1D7
 005BF1CC    xor         edx,edx
 005BF1CE    mov         eax,ebx
 005BF1D0    call        TControlScrollBar.SetPosition
>005BF1D5    jmp         005BF1E1
 005BF1D7    mov         edx,dword ptr [ebx+10]
 005BF1DA    mov         eax,ebx
 005BF1DC    call        TControlScrollBar.SetPosition
 005BF1E1    pop         ebx
 005BF1E2    ret
*}
end;

//005BF1E4
{*procedure sub_005BF1E4(?:TControl; ?:?);
begin
 005BF1E4    push        ebp
 005BF1E5    mov         ebp,esp
 005BF1E7    add         esp,0FFFFFFF8
 005BF1EA    push        ebx
 005BF1EB    mov         ebx,eax
 005BF1ED    cmp         byte ptr [ebx+69],0
>005BF1F1    je          005BF25C
 005BF1F3    movzx       eax,byte ptr [ebx+6D]
 005BF1F7    sub         al,1
>005BF1F9    jb          005BF205
 005BF1FB    sub         al,2
>005BF1FD    je          005BF205
 005BF1FF    dec         al
>005BF201    je          005BF253
>005BF203    jmp         005BF25C
 005BF205    cmp         byte ptr [ebx+6D],3
>005BF209    je          005BF220
 005BF20B    movzx       eax,byte ptr ds:[5BF264];0x5 gvar_005BF264
 005BF212    and         al,byte ptr [ebx+73]
 005BF215    movzx       edx,byte ptr ds:[5BF268];0x1 gvar_005BF268
 005BF21C    cmp         dl,al
>005BF21E    jne         005BF25C
 005BF220    mov         eax,dword ptr [ebp+8]
 005BF223    mov         eax,dword ptr [eax-4]
 005BF226    mov         dword ptr [ebp-4],eax
 005BF229    mov         eax,dword ptr [ebp+8]
 005BF22C    mov         eax,dword ptr [eax-8]
 005BF22F    mov         eax,dword ptr [eax+0C]
 005BF232    add         eax,dword ptr [ebx+50]
 005BF235    add         eax,dword ptr [ebx+58]
 005BF238    mov         dword ptr [ebp-8],eax
 005BF23B    mov         eax,dword ptr [ebp-4]
 005BF23E    cmp         eax,dword ptr [ebp-8]
>005BF241    jle         005BF248
 005BF243    mov         eax,dword ptr [ebp-4]
>005BF246    jmp         005BF24B
 005BF248    mov         eax,dword ptr [ebp-8]
 005BF24B    mov         edx,dword ptr [ebp+8]
 005BF24E    mov         dword ptr [edx-4],eax
>005BF251    jmp         005BF25C
 005BF253    mov         eax,dword ptr [ebp+8]
 005BF256    mov         edx,dword ptr [ebx+58]
 005BF259    add         dword ptr [eax-0C],edx
 005BF25C    pop         ebx
 005BF25D    pop         ecx
 005BF25E    pop         ecx
 005BF25F    pop         ebp
 005BF260    ret
end;*}

//005BF26C
{*procedure sub_005BF26C(?:TControl; ?:?);
begin
 005BF26C    push        ebp
 005BF26D    mov         ebp,esp
 005BF26F    add         esp,0FFFFFFF8
 005BF272    push        ebx
 005BF273    mov         ebx,eax
 005BF275    cmp         byte ptr [ebx+69],0
>005BF279    je          005BF2DE
 005BF27B    movzx       eax,byte ptr [ebx+6D]
 005BF27F    sub         al,2
>005BF281    jb          005BF287
>005BF283    je          005BF2D5
>005BF285    jmp         005BF2DE
 005BF287    cmp         byte ptr [ebx+6D],1
>005BF28B    je          005BF2A2
 005BF28D    movzx       eax,byte ptr ds:[5BF2E4];0xA gvar_005BF2E4
 005BF294    and         al,byte ptr [ebx+73]
 005BF297    movzx       edx,byte ptr ds:[5BF2E8];0x2 gvar_005BF2E8
 005BF29E    cmp         dl,al
>005BF2A0    jne         005BF2DE
 005BF2A2    mov         eax,dword ptr [ebp+8]
 005BF2A5    mov         eax,dword ptr [eax-4]
 005BF2A8    mov         dword ptr [ebp-4],eax
 005BF2AB    mov         eax,dword ptr [ebp+8]
 005BF2AE    mov         eax,dword ptr [eax-8]
 005BF2B1    mov         eax,dword ptr [eax+0C]
 005BF2B4    add         eax,dword ptr [ebx+54]
 005BF2B7    add         eax,dword ptr [ebx+5C]
 005BF2BA    mov         dword ptr [ebp-8],eax
 005BF2BD    mov         eax,dword ptr [ebp-4]
 005BF2C0    cmp         eax,dword ptr [ebp-8]
>005BF2C3    jle         005BF2CA
 005BF2C5    mov         eax,dword ptr [ebp-4]
>005BF2C8    jmp         005BF2CD
 005BF2CA    mov         eax,dword ptr [ebp-8]
 005BF2CD    mov         edx,dword ptr [ebp+8]
 005BF2D0    mov         dword ptr [edx-4],eax
>005BF2D3    jmp         005BF2DE
 005BF2D5    mov         eax,dword ptr [ebp+8]
 005BF2D8    mov         edx,dword ptr [ebx+5C]
 005BF2DB    add         dword ptr [eax-0C],edx
 005BF2DE    pop         ebx
 005BF2DF    pop         ecx
 005BF2E0    pop         ecx
 005BF2E1    pop         ebp
 005BF2E2    ret
end;*}

//005BF2EC
{*procedure sub_005BF2EC(?:?);
begin
 005BF2EC    push        ebp
 005BF2ED    mov         ebp,esp
 005BF2EF    add         esp,0FFFFFFF4
 005BF2F2    push        ebx
 005BF2F3    push        esi
 005BF2F4    mov         dword ptr [ebp-8],eax
 005BF2F7    mov         eax,dword ptr [ebp-8]
 005BF2FA    mov         ebx,dword ptr [eax+4]
 005BF2FD    cmp         byte ptr [ebx+294],0
>005BF304    je          005BF391
 005BF30A    mov         eax,ebx
 005BF30C    mov         edx,dword ptr [eax]
 005BF30E    call        dword ptr [edx+108]
 005BF314    test        al,al
>005BF316    je          005BF387
 005BF318    xor         eax,eax
 005BF31A    mov         dword ptr [ebp-4],eax
 005BF31D    xor         eax,eax
 005BF31F    mov         dword ptr [ebp-0C],eax
 005BF322    mov         eax,dword ptr [ebp-8]
 005BF325    mov         eax,dword ptr [eax+4]
 005BF328    call        TWinControl.GetControlCount
 005BF32D    mov         ebx,eax
 005BF32F    dec         ebx
 005BF330    test        ebx,ebx
>005BF332    jl          005BF36E
 005BF334    inc         ebx
 005BF335    xor         esi,esi
 005BF337    mov         eax,dword ptr [ebp-8]
 005BF33A    cmp         byte ptr [eax+18],0
>005BF33E    jne         005BF356
 005BF340    push        ebp
 005BF341    mov         eax,dword ptr [ebp-8]
 005BF344    mov         eax,dword ptr [eax+4]
 005BF347    mov         edx,esi
 005BF349    call        TWinControl.GetControl
 005BF34E    call        005BF1E4
 005BF353    pop         ecx
>005BF354    jmp         005BF36A
 005BF356    push        ebp
 005BF357    mov         eax,dword ptr [ebp-8]
 005BF35A    mov         eax,dword ptr [eax+4]
 005BF35D    mov         edx,esi
 005BF35F    call        TWinControl.GetControl
 005BF364    call        005BF26C
 005BF369    pop         ecx
 005BF36A    inc         esi
 005BF36B    dec         ebx
>005BF36C    jne         005BF337
 005BF36E    mov         edx,dword ptr [ebp-4]
 005BF371    add         edx,dword ptr [ebp-0C]
 005BF374    mov         eax,dword ptr [ebp-8]
 005BF377    movzx       eax,word ptr [eax+1A]
 005BF37B    add         edx,eax
 005BF37D    mov         eax,dword ptr [ebp-8]
 005BF380    call        TControlScrollBar.DoSetRange
>005BF385    jmp         005BF391
 005BF387    xor         edx,edx
 005BF389    mov         eax,dword ptr [ebp-8]
 005BF38C    call        TControlScrollBar.DoSetRange
 005BF391    pop         esi
 005BF392    pop         ebx
 005BF393    mov         esp,ebp
 005BF395    pop         ebp
 005BF396    ret
end;*}

//005BF398
function TControlScrollBar.IsScrollBarVisible:Boolean;
begin
{*
 005BF398    push        ebx
 005BF399    mov         ebx,100000
 005BF39E    cmp         byte ptr [eax+18],1
>005BF3A2    jne         005BF3A9
 005BF3A4    mov         ebx,200000
 005BF3A9    cmp         byte ptr [eax+1C],0
>005BF3AD    je          005BF3C6
 005BF3AF    mov         eax,dword ptr [eax+4]
 005BF3B2    call        TWinControl.GetHandle
 005BF3B7    push        0F0
 005BF3B9    push        eax
 005BF3BA    call        user32.GetWindowLongW
 005BF3BF    test        ebx,eax
 005BF3C1    setne       al
 005BF3C4    pop         ebx
 005BF3C5    ret
 005BF3C6    xor         eax,eax
 005BF3C8    pop         ebx
 005BF3C9    ret
*}
end;

//005BF3CC
function ScrollBarVisible(Code:Word):Boolean;
begin
{*
 005BF3CC    push        ebp
 005BF3CD    mov         ebp,esp
 005BF3CF    push        ebx
 005BF3D0    mov         ebx,100000
 005BF3D5    cmp         ax,1
>005BF3D9    jne         005BF3E0
 005BF3DB    mov         ebx,200000
 005BF3E0    mov         eax,dword ptr [ebp+8]
 005BF3E3    mov         eax,dword ptr [eax-4]
 005BF3E6    mov         eax,dword ptr [eax+4]
 005BF3E9    call        TWinControl.GetHandle
 005BF3EE    push        0F0
 005BF3F0    push        eax
 005BF3F1    call        user32.GetWindowLongW
 005BF3F6    test        ebx,eax
 005BF3F8    setne       al
 005BF3FB    pop         ebx
 005BF3FC    pop         ebp
 005BF3FD    ret
*}
end;

//005BF400
function Adjustment(Code:Word; Metric:Word):Integer;
begin
{*
 005BF400    push        ebp
 005BF401    mov         ebp,esp
 005BF403    push        ebx
 005BF404    push        esi
 005BF405    push        edi
 005BF406    mov         edi,edx
 005BF408    mov         esi,eax
 005BF40A    xor         ebx,ebx
 005BF40C    mov         eax,dword ptr [ebp+8]
 005BF40F    cmp         byte ptr [eax-5],0
>005BF413    jne         005BF46D
 005BF415    mov         eax,dword ptr [ebp+8]
 005BF418    cmp         byte ptr [eax-6],0
>005BF41C    je          005BF443
 005BF41E    mov         eax,dword ptr [ebp+8]
 005BF421    push        eax
 005BF422    mov         eax,esi
 005BF424    call        ScrollBarVisible
 005BF429    pop         ecx
 005BF42A    test        al,al
>005BF42C    jne         005BF443
 005BF42E    movzx       eax,di
 005BF431    push        eax
 005BF432    call        user32.GetSystemMetrics
 005BF437    mov         ebx,eax
 005BF439    mov         eax,dword ptr [ebp+8]
 005BF43C    sub         ebx,dword ptr [eax-0C]
 005BF43F    neg         ebx
>005BF441    jmp         005BF46D
 005BF443    mov         eax,dword ptr [ebp+8]
 005BF446    cmp         byte ptr [eax-6],0
>005BF44A    jne         005BF46D
 005BF44C    mov         eax,dword ptr [ebp+8]
 005BF44F    push        eax
 005BF450    mov         eax,esi
 005BF452    call        ScrollBarVisible
 005BF457    pop         ecx
 005BF458    test        al,al
>005BF45A    je          005BF46D
 005BF45C    movzx       eax,di
 005BF45F    push        eax
 005BF460    call        user32.GetSystemMetrics
 005BF465    mov         ebx,eax
 005BF467    mov         eax,dword ptr [ebp+8]
 005BF46A    sub         ebx,dword ptr [eax-0C]
 005BF46D    mov         eax,ebx
 005BF46F    pop         edi
 005BF470    pop         esi
 005BF471    pop         ebx
 005BF472    pop         ebp
 005BF473    ret
*}
end;

//005BF474
function TControlScrollBar.ControlSize(ControlSB:Boolean; AssumeSB:Boolean):Integer;
begin
{*
 005BF474    push        ebp
 005BF475    mov         ebp,esp
 005BF477    add         esp,0FFFFFFF4
 005BF47A    push        ebx
 005BF47B    mov         byte ptr [ebp-6],cl
 005BF47E    mov         byte ptr [ebp-5],dl
 005BF481    mov         dword ptr [ebp-4],eax
 005BF484    mov         eax,dword ptr [ebp-4]
 005BF487    mov         eax,dword ptr [eax+4]
 005BF48A    call        TWinControl.GetHandle
 005BF48F    push        0F0
 005BF491    push        eax
 005BF492    call        user32.GetWindowLongW
 005BF497    test        eax,840000
 005BF49C    setne       al
 005BF49F    and         eax,7F
 005BF4A2    mov         dword ptr [ebp-0C],eax
 005BF4A5    mov         eax,dword ptr [ebp-4]
 005BF4A8    cmp         byte ptr [eax+18],1
>005BF4AC    jne         005BF4CE
 005BF4AE    push        ebp
 005BF4AF    mov         dx,15
 005BF4B3    xor         eax,eax
 005BF4B5    call        Adjustment
 005BF4BA    pop         ecx
 005BF4BB    mov         ebx,eax
 005BF4BD    mov         eax,dword ptr [ebp-4]
 005BF4C0    mov         eax,dword ptr [eax+4]
 005BF4C3    call        TControl.GetClientHeight
 005BF4C8    add         ebx,eax
 005BF4CA    mov         eax,ebx
>005BF4CC    jmp         005BF4EE
 005BF4CE    push        ebp
 005BF4CF    mov         dx,14
 005BF4D3    mov         ax,1
 005BF4D7    call        Adjustment
 005BF4DC    pop         ecx
 005BF4DD    mov         ebx,eax
 005BF4DF    mov         eax,dword ptr [ebp-4]
 005BF4E2    mov         eax,dword ptr [eax+4]
 005BF4E5    call        TControl.GetClientWidth
 005BF4EA    add         ebx,eax
 005BF4EC    mov         eax,ebx
 005BF4EE    pop         ebx
 005BF4EF    mov         esp,ebp
 005BF4F1    pop         ebp
 005BF4F2    ret
*}
end;

//005BF4F4
function TControlScrollBar.GetScrollPos:Integer;
begin
{*
 005BF4F4    xor         edx,edx
 005BF4F6    cmp         byte ptr [eax+1C],0
>005BF4FA    je          005BF4FF
 005BF4FC    mov         edx,dword ptr [eax+0C]
 005BF4FF    mov         eax,edx
 005BF501    ret
*}
end;

//005BF504
function TControlScrollBar.NeedsScrollBarVisible:Boolean;
begin
{*
 005BF504    push        ebx
 005BF505    mov         ebx,eax
 005BF507    xor         ecx,ecx
 005BF509    xor         edx,edx
 005BF50B    mov         eax,ebx
 005BF50D    call        TControlScrollBar.ControlSize
 005BF512    cmp         eax,dword ptr [ebx+10]
 005BF515    setl        al
 005BF518    pop         ebx
 005BF519    ret
*}
end;

//005BF51C
function GetRealScrollPosition:Integer;
begin
{*
 005BF51C    push        ebp
 005BF51D    mov         ebp,esp
 005BF51F    add         esp,0FFFFFFE4
 005BF522    push        ebx
 005BF523    push        esi
 005BF524    mov         dword ptr [ebp-1C],1C
 005BF52B    mov         dword ptr [ebp-18],10
 005BF532    xor         ebx,ebx
 005BF534    mov         eax,dword ptr [ebp+8]
 005BF537    mov         eax,dword ptr [eax-4]
 005BF53A    cmp         byte ptr [eax+18],1
>005BF53E    jne         005BF545
 005BF540    mov         ebx,1
 005BF545    mov         eax,dword ptr [ebp+8]
 005BF548    mov         esi,dword ptr [eax-8]
 005BF54B    movsx       esi,word ptr [esi+6]
 005BF54F    lea         eax,[ebp-1C]
 005BF552    push        eax
 005BF553    push        ebx
 005BF554    mov         eax,dword ptr [ebp+8]
 005BF557    mov         eax,dword ptr [eax-4]
 005BF55A    mov         eax,dword ptr [eax+4]
 005BF55D    call        TWinControl.GetHandle
 005BF562    push        eax
 005BF563    call        comctl32.FlatSB_GetScrollInfo
 005BF568    test        eax,eax
>005BF56A    je          005BF56F
 005BF56C    mov         esi,dword ptr [ebp-4]
 005BF56F    mov         eax,esi
 005BF571    pop         esi
 005BF572    pop         ebx
 005BF573    mov         esp,ebp
 005BF575    pop         ebp
 005BF576    ret
*}
end;

//005BF578
{*procedure sub_005BF578(?:TControlScrollBar; ?:?);
begin
 005BF578    push        ebp
 005BF579    mov         ebp,esp
 005BF57B    add         esp,0FFFFFFE8
 005BF57E    push        ebx
 005BF57F    push        esi
 005BF580    push        edi
 005BF581    mov         dword ptr [ebp-8],edx
 005BF584    mov         dword ptr [ebp-4],eax
 005BF587    mov         eax,dword ptr [ebp-4]
 005BF58A    cmp         byte ptr [eax+1F],0
>005BF58E    je          005BF73F
 005BF594    mov         eax,dword ptr [ebp-8]
 005BF597    movzx       eax,word ptr [eax+4]
 005BF59B    sub         ax,4
>005BF59F    jae         005BF73F
 005BF5A5    mov         eax,dword ptr [ebp-8]
 005BF5A8    movzx       eax,word ptr [eax+4]
 005BF5AC    sub         ax,2
>005BF5B0    jb          005BF5BA
 005BF5B2    sub         ax,2
>005BF5B6    jb          005BF5DB
>005BF5B8    jmp         005BF601
 005BF5BA    mov         eax,dword ptr [ebp-4]
 005BF5BD    movzx       ebx,word ptr [eax+8]
 005BF5C1    mov         eax,ebx
 005BF5C3    mov         edx,dword ptr [ebp-4]
 005BF5C6    mov         ecx,dword ptr [edx+40]
 005BF5C9    cdq
 005BF5CA    idiv        eax,ecx
 005BF5CC    mov         dword ptr [ebp-0C],eax
 005BF5CF    mov         eax,ebx
 005BF5D1    cdq
 005BF5D2    idiv        eax,ecx
 005BF5D4    mov         dword ptr [ebp-10],edx
 005BF5D7    mov         edi,ecx
>005BF5D9    jmp         005BF60D
 005BF5DB    mov         eax,dword ptr [ebp-4]
 005BF5DE    movzx       eax,word ptr [eax+0A]
 005BF5E2    mov         dword ptr [ebp-0C],eax
 005BF5E5    mov         eax,dword ptr [ebp-4]
 005BF5E8    mov         ebx,dword ptr [eax+3C]
 005BF5EB    mov         eax,dword ptr [ebp-0C]
 005BF5EE    cdq
 005BF5EF    idiv        eax,ebx
 005BF5F1    mov         dword ptr [ebp-10],edx
 005BF5F4    mov         eax,dword ptr [ebp-0C]
 005BF5F7    cdq
 005BF5F8    idiv        eax,ebx
 005BF5FA    mov         dword ptr [ebp-0C],eax
 005BF5FD    mov         edi,ebx
>005BF5FF    jmp         005BF60D
 005BF601    xor         edi,edi
 005BF603    xor         eax,eax
 005BF605    mov         dword ptr [ebp-0C],eax
 005BF608    xor         eax,eax
 005BF60A    mov         dword ptr [ebp-10],eax
 005BF60D    xor         eax,eax
 005BF60F    mov         dword ptr [ebp-14],eax
 005BF612    test        edi,edi
>005BF614    jle         005BF6BF
 005BF61A    call        kernel32.GetTickCount
 005BF61F    mov         dword ptr [ebp-18],eax
 005BF622    mov         ebx,dword ptr [ebp-18]
 005BF625    mov         esi,ebx
 005BF627    sub         esi,dword ptr [ebp-14]
 005BF62A    mov         eax,dword ptr [ebp-4]
 005BF62D    cmp         esi,dword ptr [eax+20]
>005BF630    jae         005BF640
 005BF632    mov         eax,dword ptr [ebp-4]
 005BF635    mov         eax,dword ptr [eax+20]
 005BF638    sub         eax,esi
 005BF63A    push        eax
 005BF63B    call        kernel32.Sleep
 005BF640    mov         dword ptr [ebp-14],ebx
 005BF643    mov         eax,dword ptr [ebp-8]
 005BF646    movzx       eax,word ptr [eax+4]
 005BF64A    sub         ax,1
>005BF64E    jb          005BF65E
>005BF650    je          005BF671
 005BF652    dec         ax
>005BF655    je          005BF684
 005BF657    dec         ax
>005BF65A    je          005BF697
>005BF65C    jmp         005BF6A8
 005BF65E    mov         eax,dword ptr [ebp-4]
 005BF661    mov         edx,dword ptr [eax+0C]
 005BF664    sub         edx,dword ptr [ebp-0C]
 005BF667    mov         eax,dword ptr [ebp-4]
 005BF66A    call        TControlScrollBar.SetPosition
>005BF66F    jmp         005BF6A8
 005BF671    mov         eax,dword ptr [ebp-4]
 005BF674    mov         edx,dword ptr [eax+0C]
 005BF677    add         edx,dword ptr [ebp-0C]
 005BF67A    mov         eax,dword ptr [ebp-4]
 005BF67D    call        TControlScrollBar.SetPosition
>005BF682    jmp         005BF6A8
 005BF684    mov         eax,dword ptr [ebp-4]
 005BF687    mov         edx,dword ptr [eax+0C]
 005BF68A    sub         edx,dword ptr [ebp-0C]
 005BF68D    mov         eax,dword ptr [ebp-4]
 005BF690    call        TControlScrollBar.SetPosition
>005BF695    jmp         005BF6A8
 005BF697    mov         eax,dword ptr [ebp-4]
 005BF69A    mov         edx,dword ptr [eax+0C]
 005BF69D    add         edx,dword ptr [ebp-0C]
 005BF6A0    mov         eax,dword ptr [ebp-4]
 005BF6A3    call        TControlScrollBar.SetPosition
 005BF6A8    mov         eax,dword ptr [ebp-4]
 005BF6AB    mov         eax,dword ptr [eax+4]
 005BF6AE    mov         edx,dword ptr [eax]
 005BF6B0    call        dword ptr [edx+0B4]
 005BF6B6    dec         edi
 005BF6B7    test        edi,edi
>005BF6B9    jg          005BF61A
 005BF6BF    cmp         dword ptr [ebp-10],0
>005BF6C3    jle         005BF873
 005BF6C9    mov         eax,dword ptr [ebp-8]
 005BF6CC    movzx       eax,word ptr [eax+4]
 005BF6D0    sub         ax,1
>005BF6D4    jb          005BF6E7
>005BF6D6    je          005BF6FD
 005BF6D8    dec         ax
>005BF6DB    je          005BF713
 005BF6DD    dec         ax
>005BF6E0    je          005BF729
>005BF6E2    jmp         005BF873
 005BF6E7    mov         eax,dword ptr [ebp-4]
 005BF6EA    mov         edx,dword ptr [eax+0C]
 005BF6ED    sub         edx,dword ptr [ebp-10]
 005BF6F0    mov         eax,dword ptr [ebp-4]
 005BF6F3    call        TControlScrollBar.SetPosition
>005BF6F8    jmp         005BF873
 005BF6FD    mov         eax,dword ptr [ebp-4]
 005BF700    mov         edx,dword ptr [eax+0C]
 005BF703    add         edx,dword ptr [ebp-10]
 005BF706    mov         eax,dword ptr [ebp-4]
 005BF709    call        TControlScrollBar.SetPosition
>005BF70E    jmp         005BF873
 005BF713    mov         eax,dword ptr [ebp-4]
 005BF716    mov         edx,dword ptr [eax+0C]
 005BF719    sub         edx,dword ptr [ebp-10]
 005BF71C    mov         eax,dword ptr [ebp-4]
 005BF71F    call        TControlScrollBar.SetPosition
>005BF724    jmp         005BF873
 005BF729    mov         eax,dword ptr [ebp-4]
 005BF72C    mov         edx,dword ptr [eax+0C]
 005BF72F    add         edx,dword ptr [ebp-10]
 005BF732    mov         eax,dword ptr [ebp-4]
 005BF735    call        TControlScrollBar.SetPosition
>005BF73A    jmp         005BF873
 005BF73F    mov         eax,dword ptr [ebp-8]
 005BF742    movsx       eax,word ptr [eax+4]
 005BF746    cmp         eax,7
>005BF749    ja          005BF873
 005BF74F    jmp         dword ptr [eax*4+5BF756]
 005BF74F    dd          005BF776
 005BF74F    dd          005BF792
 005BF74F    dd          005BF7AE
 005BF74F    dd          005BF7CF
 005BF74F    dd          005BF7F0
 005BF74F    dd          005BF820
 005BF74F    dd          005BF859
 005BF74F    dd          005BF865
 005BF776    mov         eax,dword ptr [ebp-4]
 005BF779    mov         edx,dword ptr [eax+0C]
 005BF77C    mov         eax,dword ptr [ebp-4]
 005BF77F    movzx       eax,word ptr [eax+8]
 005BF783    sub         edx,eax
 005BF785    mov         eax,dword ptr [ebp-4]
 005BF788    call        TControlScrollBar.SetPosition
>005BF78D    jmp         005BF873
 005BF792    mov         eax,dword ptr [ebp-4]
 005BF795    mov         edx,dword ptr [eax+0C]
 005BF798    mov         eax,dword ptr [ebp-4]
 005BF79B    movzx       eax,word ptr [eax+8]
 005BF79F    add         edx,eax
 005BF7A1    mov         eax,dword ptr [ebp-4]
 005BF7A4    call        TControlScrollBar.SetPosition
>005BF7A9    jmp         005BF873
 005BF7AE    xor         ecx,ecx
 005BF7B0    mov         dl,1
 005BF7B2    mov         eax,dword ptr [ebp-4]
 005BF7B5    call        TControlScrollBar.ControlSize
 005BF7BA    mov         edx,dword ptr [ebp-4]
 005BF7BD    mov         edx,dword ptr [edx+0C]
 005BF7C0    sub         edx,eax
 005BF7C2    mov         eax,dword ptr [ebp-4]
 005BF7C5    call        TControlScrollBar.SetPosition
>005BF7CA    jmp         005BF873
 005BF7CF    xor         ecx,ecx
 005BF7D1    mov         dl,1
 005BF7D3    mov         eax,dword ptr [ebp-4]
 005BF7D6    call        TControlScrollBar.ControlSize
 005BF7DB    mov         edx,eax
 005BF7DD    mov         eax,dword ptr [ebp-4]
 005BF7E0    add         edx,dword ptr [eax+0C]
 005BF7E3    mov         eax,dword ptr [ebp-4]
 005BF7E6    call        TControlScrollBar.SetPosition
>005BF7EB    jmp         005BF873
 005BF7F0    mov         eax,dword ptr [ebp-4]
 005BF7F3    cmp         dword ptr [eax+14],7FFF
>005BF7FA    jle         005BF80F
 005BF7FC    push        ebp
 005BF7FD    call        GetRealScrollPosition
 005BF802    pop         ecx
 005BF803    mov         edx,eax
 005BF805    mov         eax,dword ptr [ebp-4]
 005BF808    call        TControlScrollBar.SetPosition
>005BF80D    jmp         005BF873
 005BF80F    mov         edx,dword ptr [ebp-8]
 005BF812    movsx       edx,word ptr [edx+6]
 005BF816    mov         eax,dword ptr [ebp-4]
 005BF819    call        TControlScrollBar.SetPosition
>005BF81E    jmp         005BF873
 005BF820    mov         eax,dword ptr [ebp-4]
 005BF823    cmp         byte ptr [eax+1D],0
>005BF827    je          005BF873
 005BF829    mov         eax,dword ptr [ebp-4]
 005BF82C    cmp         dword ptr [eax+14],7FFF
>005BF833    jle         005BF848
 005BF835    push        ebp
 005BF836    call        GetRealScrollPosition
 005BF83B    pop         ecx
 005BF83C    mov         edx,eax
 005BF83E    mov         eax,dword ptr [ebp-4]
 005BF841    call        TControlScrollBar.SetPosition
>005BF846    jmp         005BF873
 005BF848    mov         edx,dword ptr [ebp-8]
 005BF84B    movsx       edx,word ptr [edx+6]
 005BF84F    mov         eax,dword ptr [ebp-4]
 005BF852    call        TControlScrollBar.SetPosition
>005BF857    jmp         005BF873
 005BF859    xor         edx,edx
 005BF85B    mov         eax,dword ptr [ebp-4]
 005BF85E    call        TControlScrollBar.SetPosition
>005BF863    jmp         005BF873
 005BF865    mov         eax,dword ptr [ebp-4]
 005BF868    mov         edx,dword ptr [eax+14]
 005BF86B    mov         eax,dword ptr [ebp-4]
 005BF86E    call        TControlScrollBar.SetPosition
 005BF873    pop         edi
 005BF874    pop         esi
 005BF875    pop         ebx
 005BF876    mov         esp,ebp
 005BF878    pop         ebp
 005BF879    ret
end;*}

//005BF87C
procedure TControlScrollBar.SetButtonSize(Value:Integer);
begin
{*
 005BF87C    push        ebx
 005BF87D    push        esi
 005BF87E    mov         ebx,eax
 005BF880    cmp         edx,dword ptr [ebx+24]
>005BF883    je          005BF8B6
 005BF885    mov         esi,edx
 005BF887    test        esi,esi
>005BF889    jne         005BF89E
 005BF88B    movzx       eax,byte ptr [ebx+18]
 005BF88F    mov         eax,dword ptr [eax*4+7A1CC8]
 005BF896    push        eax
 005BF897    call        user32.GetSystemMetrics
 005BF89C    mov         edx,eax
 005BF89E    mov         dword ptr [ebx+24],edx
 005BF8A1    mov         byte ptr [ebx+44],1
 005BF8A5    mov         eax,dword ptr [ebx+4]
 005BF8A8    call        TScrollingWinControl.UpdateScrollBars
 005BF8AD    test        esi,esi
>005BF8AF    jne         005BF8B6
 005BF8B1    xor         eax,eax
 005BF8B3    mov         dword ptr [ebx+24],eax
 005BF8B6    pop         esi
 005BF8B7    pop         ebx
 005BF8B8    ret
*}
end;

//005BF8BC
procedure TControlScrollBar.SetColor(Value:Graphics.TColor);
begin
{*
 005BF8BC    cmp         edx,dword ptr [eax+28]
>005BF8BF    je          005BF8D4
 005BF8C1    mov         dword ptr [eax+28],edx
 005BF8C4    mov         byte ptr [eax+2C],0
 005BF8C8    mov         byte ptr [eax+44],1
 005BF8CC    mov         eax,dword ptr [eax+4]
 005BF8CF    call        TScrollingWinControl.UpdateScrollBars
 005BF8D4    ret
*}
end;

//005BF8D8
procedure TControlScrollBar.SetParentColor(Value:Boolean);
begin
{*
 005BF8D8    cmp         dl,byte ptr [eax+2C]
>005BF8DB    je          005BF8EE
 005BF8DD    mov         byte ptr [eax+2C],dl
 005BF8E0    test        dl,dl
>005BF8E2    je          005BF8EE
 005BF8E4    mov         edx,0FF000014
 005BF8E9    call        TControlScrollBar.SetColor
 005BF8EE    ret
*}
end;

//005BF8F0
procedure TControlScrollBar.SetPosition(Value:Integer);
begin
{*
 005BF8F0    push        ebx
 005BF8F1    push        esi
 005BF8F2    push        edi
 005BF8F3    mov         ebx,eax
 005BF8F5    mov         eax,dword ptr [ebx+4]
 005BF8F8    test        byte ptr [eax+1C],2
>005BF8FC    je          005BF906
 005BF8FE    mov         dword ptr [ebx+0C],edx
>005BF901    jmp         005BF9A7
 005BF906    mov         eax,dword ptr [ebx+14]
 005BF909    cmp         edx,eax
>005BF90B    jle         005BF911
 005BF90D    mov         edx,eax
>005BF90F    jmp         005BF917
 005BF911    test        edx,edx
>005BF913    jge         005BF917
 005BF915    xor         edx,edx
 005BF917    cmp         byte ptr [ebx+18],0
>005BF91B    jne         005BF921
 005BF91D    xor         esi,esi
>005BF91F    jmp         005BF925
 005BF921    mov         si,1
 005BF925    mov         eax,dword ptr [ebx+0C]
 005BF928    cmp         edx,eax
>005BF92A    je          005BF97B
 005BF92C    mov         dword ptr [ebx+0C],edx
 005BF92F    cmp         byte ptr [ebx+18],0
>005BF933    jne         005BF945
 005BF935    sub         eax,edx
 005BF937    mov         edx,eax
 005BF939    xor         ecx,ecx
 005BF93B    mov         eax,dword ptr [ebx+4]
 005BF93E    call        TWinControl.ScrollBy
>005BF943    jmp         005BF953
 005BF945    mov         ecx,eax
 005BF947    sub         ecx,edx
 005BF949    mov         eax,dword ptr [ebx+4]
 005BF94C    xor         edx,edx
 005BF94E    call        TWinControl.ScrollBy
 005BF953    mov         eax,dword ptr [ebx+4]
 005BF956    test        byte ptr [eax+1C],10
>005BF95A    je          005BF97B
 005BF95C    xor         edx,edx
 005BF95E    call        GetParentForm
 005BF963    test        eax,eax
>005BF965    je          005BF97B
 005BF967    cmp         dword ptr [eax+2E0],0
>005BF96E    je          005BF97B
 005BF970    mov         eax,dword ptr [eax+2E0]
 005BF976    mov         edx,dword ptr [eax]
 005BF978    call        dword ptr [edx+0C]
 005BF97B    movzx       edi,si
 005BF97E    push        edi
 005BF97F    mov         eax,dword ptr [ebx+4]
 005BF982    call        TWinControl.GetHandle
 005BF987    push        eax
 005BF988    call        comctl32.FlatSB_GetScrollPos
 005BF98D    cmp         eax,dword ptr [ebx+0C]
>005BF990    je          005BF9A7
 005BF992    push        0FF
 005BF994    mov         eax,dword ptr [ebx+0C]
 005BF997    push        eax
 005BF998    push        edi
 005BF999    mov         eax,dword ptr [ebx+4]
 005BF99C    call        TWinControl.GetHandle
 005BF9A1    push        eax
 005BF9A2    call        comctl32.FlatSB_SetScrollPos
 005BF9A7    pop         edi
 005BF9A8    pop         esi
 005BF9A9    pop         ebx
 005BF9AA    ret
*}
end;

//005BF9AC
procedure TControlScrollBar.SetSize(Value:Integer);
begin
{*
 005BF9AC    push        ebx
 005BF9AD    push        esi
 005BF9AE    mov         ebx,eax
 005BF9B0    cmp         edx,dword ptr [ebx+30]
>005BF9B3    je          005BF9E6
 005BF9B5    mov         esi,edx
 005BF9B7    test        esi,esi
>005BF9B9    jne         005BF9CE
 005BF9BB    movzx       eax,byte ptr [ebx+18]
 005BF9BF    mov         eax,dword ptr [eax*4+7A1CD0]
 005BF9C6    push        eax
 005BF9C7    call        user32.GetSystemMetrics
 005BF9CC    mov         edx,eax
 005BF9CE    mov         dword ptr [ebx+30],edx
 005BF9D1    mov         byte ptr [ebx+44],1
 005BF9D5    mov         eax,dword ptr [ebx+4]
 005BF9D8    call        TScrollingWinControl.UpdateScrollBars
 005BF9DD    test        esi,esi
>005BF9DF    jne         005BF9E6
 005BF9E1    xor         eax,eax
 005BF9E3    mov         dword ptr [ebx+30],eax
 005BF9E6    pop         esi
 005BF9E7    pop         ebx
 005BF9E8    ret
*}
end;

//005BF9EC
procedure TControlScrollBar.SetStyle(Value:TScrollBarStyle);
begin
{*
 005BF9EC    cmp         dl,byte ptr [eax+34]
>005BF9EF    je          005BFA00
 005BF9F1    mov         byte ptr [eax+34],dl
 005BF9F4    mov         byte ptr [eax+44],1
 005BF9F8    mov         eax,dword ptr [eax+4]
 005BF9FB    call        TScrollingWinControl.UpdateScrollBars
 005BFA00    ret
*}
end;

//005BFA04
procedure TControlScrollBar.SetThumbSize(Value:Integer);
begin
{*
 005BFA04    cmp         edx,dword ptr [eax+38]
>005BFA07    je          005BFA18
 005BFA09    mov         dword ptr [eax+38],edx
 005BFA0C    mov         byte ptr [eax+44],1
 005BFA10    mov         eax,dword ptr [eax+4]
 005BFA13    call        TScrollingWinControl.UpdateScrollBars
 005BFA18    ret
*}
end;

//005BFA1C
procedure TControlScrollBar.DoSetRange(Value:Integer);
begin
{*
 005BFA1C    mov         ecx,edx
 005BFA1E    mov         dword ptr [eax+10],ecx
 005BFA21    test        ecx,ecx
>005BFA23    jge         005BFA2A
 005BFA25    xor         edx,edx
 005BFA27    mov         dword ptr [eax+10],edx
 005BFA2A    mov         eax,dword ptr [eax+4]
 005BFA2D    call        TScrollingWinControl.UpdateScrollBars
 005BFA32    ret
*}
end;

//005BFA34
procedure TControlScrollBar.SetRange(Value:Integer);
begin
{*
 005BFA34    mov         ecx,dword ptr [eax+4]
 005BFA37    mov         byte ptr [ecx+294],0
 005BFA3E    mov         byte ptr [eax+1E],1
 005BFA42    call        TControlScrollBar.DoSetRange
 005BFA47    ret
*}
end;

//005BFA48
procedure TControlScrollBar.IsStoredRange(Value:Integer);
begin
{*
 005BFA48    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 005BFA4B    movzx       eax,byte ptr [eax+294];TScrollingWinControl.FAutoScroll:Boolean
 005BFA52    xor         al,1
 005BFA54    ret
*}
end;

//005BFA58
procedure TControlScrollBar.SetVisible(Value:Boolean);
begin
{*
 005BFA58    mov         byte ptr [eax+1C],dl
 005BFA5B    mov         eax,dword ptr [eax+4]
 005BFA5E    call        TScrollingWinControl.UpdateScrollBars
 005BFA63    ret
*}
end;

//005BFA64
procedure UpdateScrollProperties(Redraw:Boolean);
begin
{*
 005BFA64    push        ebp
 005BFA65    mov         ebp,esp
 005BFA67    push        ebx
 005BFA68    push        esi
 005BFA69    mov         ebx,eax
 005BFA6B    mov         esi,dword ptr [ebp+8]
 005BFA6E    add         esi,0FFFFFFFC
 005BFA71    cmp         bl,1
 005BFA74    cmc
 005BFA75    sbb         eax,eax
 005BFA77    push        eax
 005BFA78    mov         eax,dword ptr [esi]
 005BFA7A    movzx       eax,byte ptr [eax+34]
 005BFA7E    mov         eax,dword ptr [eax*4+7A1D00]
 005BFA85    push        eax
 005BFA86    mov         eax,dword ptr [esi]
 005BFA88    movzx       eax,byte ptr [eax+18]
 005BFA8C    lea         eax,[eax+eax*4]
 005BFA8F    mov         eax,dword ptr [eax*4+7A1CD8]
 005BFA96    push        eax
 005BFA97    mov         eax,dword ptr [esi]
 005BFA99    mov         eax,dword ptr [eax+4]
 005BFA9C    call        TWinControl.GetHandle
 005BFAA1    push        eax
 005BFAA2    call        comctl32.FlatSB_SetScrollProp
 005BFAA7    mov         eax,dword ptr [esi]
 005BFAA9    cmp         dword ptr [eax+24],0
>005BFAAD    jle         005BFAD8
 005BFAAF    push        0
 005BFAB1    mov         eax,dword ptr [esi]
 005BFAB3    mov         eax,dword ptr [eax+24]
 005BFAB6    push        eax
 005BFAB7    mov         eax,dword ptr [esi]
 005BFAB9    movzx       eax,byte ptr [eax+18]
 005BFABD    lea         eax,[eax+eax*4]
 005BFAC0    mov         eax,dword ptr [eax*4+7A1CDC]
 005BFAC7    push        eax
 005BFAC8    mov         eax,dword ptr [esi]
 005BFACA    mov         eax,dword ptr [eax+4]
 005BFACD    call        TWinControl.GetHandle
 005BFAD2    push        eax
 005BFAD3    call        comctl32.FlatSB_SetScrollProp
 005BFAD8    mov         eax,dword ptr [esi]
 005BFADA    cmp         dword ptr [eax+38],0
>005BFADE    jle         005BFB09
 005BFAE0    push        0
 005BFAE2    mov         eax,dword ptr [esi]
 005BFAE4    mov         eax,dword ptr [eax+38]
 005BFAE7    push        eax
 005BFAE8    mov         eax,dword ptr [esi]
 005BFAEA    movzx       eax,byte ptr [eax+18]
 005BFAEE    lea         eax,[eax+eax*4]
 005BFAF1    mov         eax,dword ptr [eax*4+7A1CE0]
 005BFAF8    push        eax
 005BFAF9    mov         eax,dword ptr [esi]
 005BFAFB    mov         eax,dword ptr [eax+4]
 005BFAFE    call        TWinControl.GetHandle
 005BFB03    push        eax
 005BFB04    call        comctl32.FlatSB_SetScrollProp
 005BFB09    mov         eax,dword ptr [esi]
 005BFB0B    cmp         dword ptr [eax+30],0
>005BFB0F    jle         005BFB3A
 005BFB11    push        0
 005BFB13    mov         eax,dword ptr [esi]
 005BFB15    mov         eax,dword ptr [eax+30]
 005BFB18    push        eax
 005BFB19    mov         eax,dword ptr [esi]
 005BFB1B    movzx       eax,byte ptr [eax+18]
 005BFB1F    lea         eax,[eax+eax*4]
 005BFB22    mov         eax,dword ptr [eax*4+7A1CE4]
 005BFB29    push        eax
 005BFB2A    mov         eax,dword ptr [esi]
 005BFB2C    mov         eax,dword ptr [eax+4]
 005BFB2F    call        TWinControl.GetHandle
 005BFB34    push        eax
 005BFB35    call        comctl32.FlatSB_SetScrollProp
 005BFB3A    push        0
 005BFB3C    mov         eax,dword ptr [esi]
 005BFB3E    mov         eax,dword ptr [eax+28]
 005BFB41    call        ColorToRGB
 005BFB46    push        eax
 005BFB47    mov         eax,dword ptr [esi]
 005BFB49    movzx       eax,byte ptr [eax+18]
 005BFB4D    lea         eax,[eax+eax*4]
 005BFB50    mov         eax,dword ptr [eax*4+7A1CE8]
 005BFB57    push        eax
 005BFB58    mov         eax,dword ptr [esi]
 005BFB5A    mov         eax,dword ptr [eax+4]
 005BFB5D    call        TWinControl.GetHandle
 005BFB62    push        eax
 005BFB63    call        comctl32.FlatSB_SetScrollProp
 005BFB68    pop         esi
 005BFB69    pop         ebx
 005BFB6A    pop         ebp
 005BFB6B    ret
*}
end;

//005BFB6C
procedure TControlScrollBar.Update(ControlSB:Boolean; AssumeSB:Boolean);
begin
{*
 005BFB6C    push        ebp
 005BFB6D    mov         ebp,esp
 005BFB6F    add         esp,0FFFFFFDC
 005BFB72    push        ebx
 005BFB73    push        esi
 005BFB74    push        edi
 005BFB75    mov         byte ptr [ebp-6],cl
 005BFB78    mov         byte ptr [ebp-5],dl
 005BFB7B    mov         dword ptr [ebp-4],eax
 005BFB7E    lea         esi,[ebp-4]
 005BFB81    mov         eax,dword ptr [esi]
 005BFB83    xor         edx,edx
 005BFB85    mov         dword ptr [eax+14],edx
 005BFB88    xor         ebx,ebx
 005BFB8A    mov         eax,dword ptr [esi]
 005BFB8C    cmp         byte ptr [eax+18],1
>005BFB90    jne         005BFB96
 005BFB92    mov         bx,1
 005BFB96    mov         eax,dword ptr [esi]
 005BFB98    cmp         byte ptr [eax+1C],0
>005BFB9C    je          005BFBC4
 005BFB9E    movzx       ecx,byte ptr [ebp-6]
 005BFBA2    movzx       edx,byte ptr [ebp-5]
 005BFBA6    mov         eax,dword ptr [esi]
 005BFBA8    call        TControlScrollBar.ControlSize
 005BFBAD    mov         edx,dword ptr [esi]
 005BFBAF    mov         edi,dword ptr [edx+10]
 005BFBB2    sub         edi,eax
 005BFBB4    mov         eax,dword ptr [esi]
 005BFBB6    mov         dword ptr [eax+14],edi
 005BFBB9    test        edi,edi
>005BFBBB    jge         005BFBC4
 005BFBBD    mov         eax,dword ptr [esi]
 005BFBBF    xor         edx,edx
 005BFBC1    mov         dword ptr [eax+14],edx
 005BFBC4    mov         dword ptr [ebp-24],1C
 005BFBCB    mov         dword ptr [ebp-20],17
 005BFBD2    xor         eax,eax
 005BFBD4    mov         dword ptr [ebp-1C],eax
 005BFBD7    mov         eax,dword ptr [esi]
 005BFBD9    cmp         dword ptr [eax+14],0
>005BFBDD    jle         005BFBE9
 005BFBDF    mov         eax,dword ptr [esi]
 005BFBE1    mov         eax,dword ptr [eax+10]
 005BFBE4    mov         dword ptr [ebp-18],eax
>005BFBE7    jmp         005BFBEE
 005BFBE9    xor         eax,eax
 005BFBEB    mov         dword ptr [ebp-18],eax
 005BFBEE    movzx       ecx,byte ptr [ebp-6]
 005BFBF2    movzx       edx,byte ptr [ebp-5]
 005BFBF6    mov         eax,dword ptr [esi]
 005BFBF8    call        TControlScrollBar.ControlSize
 005BFBFD    inc         eax
 005BFBFE    mov         dword ptr [ebp-14],eax
 005BFC01    mov         eax,dword ptr [esi]
 005BFC03    mov         eax,dword ptr [eax+0C]
 005BFC06    mov         dword ptr [ebp-10],eax
 005BFC09    mov         dword ptr [ebp-0C],eax
 005BFC0C    mov         edx,dword ptr [esi]
 005BFC0E    xor         eax,eax
 005BFC10    mov         byte ptr [edx+44],al
 005BFC13    push        ebp
 005BFC14    call        UpdateScrollProperties
 005BFC19    pop         ecx
 005BFC1A    push        0FF
 005BFC1C    lea         eax,[ebp-24]
 005BFC1F    push        eax
 005BFC20    movzx       eax,bx
 005BFC23    push        eax
 005BFC24    mov         eax,dword ptr [esi]
 005BFC26    mov         eax,dword ptr [eax+4]
 005BFC29    call        TWinControl.GetHandle
 005BFC2E    push        eax
 005BFC2F    call        comctl32.FlatSB_SetScrollInfo
 005BFC34    mov         eax,dword ptr [esi]
 005BFC36    mov         edx,dword ptr [eax+0C]
 005BFC39    mov         eax,dword ptr [esi]
 005BFC3B    call        TControlScrollBar.SetPosition
 005BFC40    xor         ecx,ecx
 005BFC42    mov         dl,1
 005BFC44    mov         eax,dword ptr [esi]
 005BFC46    call        TControlScrollBar.ControlSize
 005BFC4B    lea         eax,[eax+eax*8]
 005BFC4E    mov         ecx,0A
 005BFC53    cdq
 005BFC54    idiv        eax,ecx
 005BFC56    mov         ebx,eax
 005BFC58    mov         eax,dword ptr [esi]
 005BFC5A    mov         word ptr [eax+0A],bx
 005BFC5E    mov         eax,dword ptr [esi]
 005BFC60    cmp         byte ptr [eax+1F],0
>005BFC64    je          005BFC78
 005BFC66    movzx       eax,bx
 005BFC69    mov         ecx,0A
 005BFC6E    xor         edx,edx
 005BFC70    div         eax,ecx
 005BFC72    mov         edx,dword ptr [esi]
 005BFC74    mov         word ptr [edx+8],ax
 005BFC78    pop         edi
 005BFC79    pop         esi
 005BFC7A    pop         ebx
 005BFC7B    mov         esp,ebp
 005BFC7D    pop         ebp
 005BFC7E    ret
*}
end;

//005BFC80
constructor TScrollingWinControl.Create(AOwner:TComponent);
begin
{*
 005BFC80    push        ebp
 005BFC81    mov         ebp,esp
 005BFC83    push        ecx
 005BFC84    push        ebx
 005BFC85    test        dl,dl
>005BFC87    je          005BFC91
 005BFC89    add         esp,0FFFFFFF0
 005BFC8C    call        @ClassCreate
 005BFC91    mov         byte ptr [ebp-1],dl
 005BFC94    mov         ebx,eax
 005BFC96    xor         edx,edx
 005BFC98    mov         eax,ebx
 005BFC9A    call        TWinControl.Create
 005BFC9F    mov         eax,[005BFD14];0x20000 gvar_005BFD14
 005BFCA4    or          dword ptr [ebx+60],eax;TScrollingWinControl.FControlStyle:TControlStyle
 005BFCA7    push        0
 005BFCA9    mov         ecx,ebx
 005BFCAB    mov         dl,1
 005BFCAD    mov         eax,[005B4198];TControlScrollBar
 005BFCB2    call        TControlScrollBar.Create;TControlScrollBar.Create
 005BFCB7    mov         dword ptr [ebx+298],eax;TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005BFCBD    push        1
 005BFCBF    mov         ecx,ebx
 005BFCC1    mov         dl,1
 005BFCC3    mov         eax,[005B4198];TControlScrollBar
 005BFCC8    call        TControlScrollBar.Create;TControlScrollBar.Create
 005BFCCD    mov         dword ptr [ebx+2A8],eax;TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005BFCD3    mov         byte ptr [ebx+294],0;TScrollingWinControl.FAutoScroll:Boolean
 005BFCDA    mov         eax,dword ptr [ebx+0BC];TScrollingWinControl.FTouchManager:TTouchManager
 005BFCE0    movzx       edx,byte ptr ds:[5BFD18];0x12 gvar_005BFD18
 005BFCE7    mov         byte ptr [eax+10],dl;TTouchManager.FInteractiveGestures:TInteractiveGestures
 005BFCEA    movzx       edx,byte ptr ds:[5BFD1C];0x17 gvar_005BFD1C
 005BFCF1    mov         byte ptr [eax+11],dl;TTouchManager.FInteractiveGestureOptions:TInteractiveGestureOptions
 005BFCF4    mov         eax,ebx
 005BFCF6    cmp         byte ptr [ebp-1],0
>005BFCFA    je          005BFD0B
 005BFCFC    call        @AfterConstruction
 005BFD01    pop         dword ptr fs:[0]
 005BFD08    add         esp,0C
 005BFD0B    mov         eax,ebx
 005BFD0D    pop         ebx
 005BFD0E    pop         ecx
 005BFD0F    pop         ebp
 005BFD10    ret
*}
end;

//005BFD20
destructor TScrollingWinControl.Destroy();
begin
{*
 005BFD20    push        ebx
 005BFD21    push        esi
 005BFD22    add         esp,0FFFFFFF8
 005BFD25    call        @BeforeDestruction
 005BFD2A    mov         ebx,edx
 005BFD2C    mov         esi,eax
 005BFD2E    lea         eax,[esi+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005BFD34    mov         dword ptr [esp],eax
 005BFD37    mov         eax,dword ptr [esp]
 005BFD3A    mov         eax,dword ptr [eax]
 005BFD3C    mov         edx,dword ptr [esp]
 005BFD3F    xor         ecx,ecx
 005BFD41    mov         dword ptr [edx],ecx
 005BFD43    call        TObject.Free
 005BFD48    lea         eax,[esi+2A8];TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005BFD4E    mov         dword ptr [esp+4],eax
 005BFD52    mov         eax,dword ptr [esp+4]
 005BFD56    mov         eax,dword ptr [eax]
 005BFD58    mov         edx,dword ptr [esp+4]
 005BFD5C    xor         ecx,ecx
 005BFD5E    mov         dword ptr [edx],ecx
 005BFD60    call        TObject.Free
 005BFD65    mov         dl,0FC
 005BFD67    and         dl,bl
 005BFD69    mov         eax,esi
 005BFD6B    call        TWinControl.Destroy
 005BFD70    test        bl,bl
>005BFD72    jle         005BFD7B
 005BFD74    mov         eax,esi
 005BFD76    call        @ClassDestroy
 005BFD7B    pop         ecx
 005BFD7C    pop         edx
 005BFD7D    pop         esi
 005BFD7E    pop         ebx
 005BFD7F    ret
*}
end;

//005BFD80
procedure TScrollingWinControl.CreateParams(var Params:Controls.TCreateParams);
begin
{*
 005BFD80    push        ebx
 005BFD81    mov         ebx,edx
 005BFD83    mov         edx,ebx
 005BFD85    call        TWinControl.CreateParams
 005BFD8A    and         dword ptr [ebx+24],0FFFFFFFC
 005BFD8E    pop         ebx
 005BFD8F    ret
*}
end;

//005BFD90
procedure TScrollingWinControl.CreateWnd;
begin
{*
 005BFD90    push        ebx
 005BFD91    mov         ebx,eax
 005BFD93    mov         eax,ebx
 005BFD95    call        TWinControl.CreateWnd
 005BFD9A    mov         eax,[007C4EF4];^gvar_007C7CB8:Cardinal
 005BFD9F    cmp         byte ptr [eax+0D],0
>005BFDA3    jne         005BFDC5
 005BFDA5    mov         edx,1
 005BFDAA    mov         eax,5
 005BFDAF    call        CheckWin32Version
 005BFDB4    test        al,al
>005BFDB6    jne         005BFDC5
 005BFDB8    mov         eax,ebx
 005BFDBA    call        TWinControl.GetHandle
 005BFDBF    push        eax
 005BFDC0    call        comctl32.InitializeFlatSB
 005BFDC5    mov         eax,ebx
 005BFDC7    call        TScrollingWinControl.UpdateScrollBars
 005BFDCC    pop         ebx
 005BFDCD    ret
*}
end;

//005BFDD0
procedure TScrollingWinControl.AlignControls(AControl:TControl; var ARect:Windows.TRect);
begin
{*
 005BFDD0    push        ebx
 005BFDD1    push        esi
 005BFDD2    push        edi
 005BFDD3    mov         edi,ecx
 005BFDD5    mov         esi,edx
 005BFDD7    mov         ebx,eax
 005BFDD9    mov         eax,ebx
 005BFDDB    call        TScrollingWinControl.CalcAutoRange
 005BFDE0    mov         ecx,edi
 005BFDE2    mov         edx,esi
 005BFDE4    mov         eax,ebx
 005BFDE6    call        TWinControl.AlignControls
 005BFDEB    pop         edi
 005BFDEC    pop         esi
 005BFDED    pop         ebx
 005BFDEE    ret
*}
end;

//005BFDF0
{*function sub_005BFDF0:?;
begin
 005BFDF0    cmp         byte ptr [eax+6E],0;TScrollingWinControl.FAutoSize:Boolean
>005BFDF4    jne         005BFE08
 005BFDF6    cmp         byte ptr [eax+207],0;TScrollingWinControl.FDockSite:Boolean
>005BFDFD    je          005BFE0B
 005BFDFF    cmp         byte ptr [eax+206],0;TScrollingWinControl.FUseDockManager:Boolean
>005BFE06    je          005BFE0B
 005BFE08    xor         eax,eax
 005BFE0A    ret
 005BFE0B    mov         al,1
 005BFE0D    ret
end;*}

//005BFE10
procedure TScrollingWinControl.sub_004EB37C;
begin
{*
 005BFE10    push        ebp
 005BFE11    mov         ebp,esp
 005BFE13    add         esp,0FFFFFFF0
 005BFE16    push        ebx
 005BFE17    push        esi
 005BFE18    push        edi
 005BFE19    mov         dword ptr [ebp-4],eax
 005BFE1C    mov         dl,1
 005BFE1E    mov         eax,[0046C204];TList
 005BFE23    call        TObject.Create;TList.Create
 005BFE28    mov         dword ptr [ebp-10],eax
 005BFE2B    xor         eax,eax
 005BFE2D    push        ebp
 005BFE2E    push        5BFF18
 005BFE33    push        dword ptr fs:[eax]
 005BFE36    mov         dword ptr fs:[eax],esp
 005BFE39    mov         eax,dword ptr [ebp-4]
 005BFE3C    call        TControl.GetClientWidth
 005BFE41    mov         dword ptr [ebp-8],eax
 005BFE44    mov         eax,dword ptr [ebp-4]
 005BFE47    mov         ebx,dword ptr [eax+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005BFE4D    mov         eax,ebx
 005BFE4F    call        TControlScrollBar.IsScrollBarVisible
 005BFE54    test        al,al
>005BFE56    je          005BFE60
 005BFE58    mov         eax,dword ptr [ebx+10];TControlScrollBar.FRange:Integer
 005BFE5B    cmp         eax,dword ptr [ebp-8]
>005BFE5E    jg          005BFE64
 005BFE60    xor         eax,eax
>005BFE62    jmp         005BFE66
 005BFE64    mov         al,1
 005BFE66    mov         byte ptr [ebp-9],al
 005BFE69    cmp         byte ptr [ebp-9],0
>005BFE6D    je          005BFE7E
 005BFE6F    mov         eax,dword ptr [ebx+10];TControlScrollBar.FRange:Integer
 005BFE72    mov         dword ptr [ebp-8],eax
 005BFE75    xor         edx,edx
 005BFE77    mov         eax,ebx
 005BFE79    call        TControlScrollBar.SetPosition
 005BFE7E    mov         eax,dword ptr [ebp-4]
 005BFE81    call        TWinControl.GetControlCount
 005BFE86    mov         esi,eax
 005BFE88    dec         esi
 005BFE89    test        esi,esi
>005BFE8B    jl          005BFEC4
 005BFE8D    inc         esi
 005BFE8E    xor         ebx,ebx
 005BFE90    mov         edx,ebx
 005BFE92    mov         eax,dword ptr [ebp-4]
 005BFE95    call        TWinControl.GetControl
 005BFE9A    mov         edi,eax
 005BFE9C    mov         edx,ebx
 005BFE9E    mov         eax,dword ptr [ebp-4]
 005BFEA1    call        TWinControl.GetControl
 005BFEA6    mov         edx,eax
 005BFEA8    mov         eax,dword ptr [ebp-10]
 005BFEAB    call        TList.Add
 005BFEB0    mov         edx,dword ptr [ebp-8]
 005BFEB3    sub         edx,dword ptr [edi+58]
 005BFEB6    sub         edx,dword ptr [edi+50]
 005BFEB9    mov         eax,edi
 005BFEBB    call        TControl.SetLeft
 005BFEC0    inc         ebx
 005BFEC1    dec         esi
>005BFEC2    jne         005BFE90
 005BFEC4    mov         eax,dword ptr [ebp-10]
 005BFEC7    mov         esi,dword ptr [eax+8];TList.FCount:Integer
 005BFECA    dec         esi
 005BFECB    test        esi,esi
>005BFECD    jl          005BFEEE
 005BFECF    inc         esi
 005BFED0    xor         ebx,ebx
 005BFED2    push        0
 005BFED4    mov         edx,ebx
 005BFED6    mov         eax,dword ptr [ebp-10]
 005BFED9    call        TList.Get
 005BFEDE    xor         ecx,ecx
 005BFEE0    mov         edx,0B03E
 005BFEE5    call        TControl.Perform
 005BFEEA    inc         ebx
 005BFEEB    dec         esi
>005BFEEC    jne         005BFED2
 005BFEEE    cmp         byte ptr [ebp-9],0
>005BFEF2    je          005BFF02
 005BFEF4    mov         eax,dword ptr [ebp-4]
 005BFEF7    mov         eax,dword ptr [eax+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005BFEFD    call        TControlScrollBar.ChangeBiDiPosition
 005BFF02    xor         eax,eax
 005BFF04    pop         edx
 005BFF05    pop         ecx
 005BFF06    pop         ecx
 005BFF07    mov         dword ptr fs:[eax],edx
 005BFF0A    push        5BFF1F
 005BFF0F    mov         eax,dword ptr [ebp-10]
 005BFF12    call        TObject.Free
 005BFF17    ret
>005BFF18    jmp         @HandleFinally
>005BFF1D    jmp         005BFF0F
 005BFF1F    pop         edi
 005BFF20    pop         esi
 005BFF21    pop         ebx
 005BFF22    mov         esp,ebp
 005BFF24    pop         ebp
 005BFF25    ret
*}
end;

//005BFF28
{*procedure sub_005BFF28(?:?; ?:?);
begin
 005BFF28    push        ebx
 005BFF29    push        esi
 005BFF2A    mov         esi,edx
 005BFF2C    mov         ebx,eax
 005BFF2E    cmp         word ptr [esi],104
>005BFF33    jne         005BFF96
 005BFF35    mov         byte ptr [ecx],1
 005BFF38    test        byte ptr [esi+0C],1
>005BFF3C    je          005BFF52
 005BFF3E    mov         eax,dword ptr [esi+4]
 005BFF41    mov         dword ptr [ebx+29C],eax;TScrollingWinControl.FPanPoint:TPoint
 005BFF47    mov         eax,dword ptr [esi+8]
 005BFF4A    mov         dword ptr [ebx+2A0],eax;TScrollingWinControl.FVertScrollBar:TControlScrollBar
>005BFF50    jmp         005BFF96
 005BFF52    mov         eax,dword ptr [ebx+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005BFF58    mov         edx,dword ptr [eax+0C];TControlScrollBar.FPosition:Integer
 005BFF5B    mov         ecx,dword ptr [esi+4]
 005BFF5E    sub         ecx,dword ptr [ebx+29C]
 005BFF64    sub         edx,ecx
 005BFF66    call        TControlScrollBar.SetPosition
 005BFF6B    mov         eax,dword ptr [ebx+2A8];TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005BFF71    mov         edx,dword ptr [eax+0C];TControlScrollBar.FPosition:Integer
 005BFF74    mov         ecx,dword ptr [esi+8]
 005BFF77    sub         ecx,dword ptr [ebx+2A0]
 005BFF7D    sub         edx,ecx
 005BFF7F    call        TControlScrollBar.SetPosition
 005BFF84    mov         eax,dword ptr [esi+4]
 005BFF87    mov         dword ptr [ebx+29C],eax;TScrollingWinControl.FPanPoint:TPoint
 005BFF8D    mov         eax,dword ptr [esi+8]
 005BFF90    mov         dword ptr [ebx+2A0],eax;TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005BFF96    pop         esi
 005BFF97    pop         ebx
 005BFF98    ret
end;*}

//005BFF9C
{*procedure sub_005BFF9C(?:?);
begin
 005BFF9C    push        ebx
 005BFF9D    push        esi
 005BFF9E    mov         esi,edx
 005BFFA0    mov         ebx,eax
 005BFFA2    mov         edx,esi
 005BFFA4    mov         eax,ebx
 005BFFA6    call        004E7864
 005BFFAB    test        byte ptr [esi],2
>005BFFAE    je          005BFFD9
 005BFFB0    mov         eax,dword ptr [ebx+2A8];TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005BFFB6    call        TControlScrollBar.IsScrollBarVisible
 005BFFBB    test        al,al
>005BFFBD    jne         005BFFD9
 005BFFBF    mov         eax,dword ptr [ebx+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005BFFC5    call        TControlScrollBar.IsScrollBarVisible
 005BFFCA    test        al,al
>005BFFCC    jne         005BFFD9
 005BFFCE    movzx       eax,byte ptr ds:[5BFFDC];0x2 gvar_005BFFDC
 005BFFD5    not         eax
 005BFFD7    and         byte ptr [esi],al
 005BFFD9    pop         esi
 005BFFDA    pop         ebx
 005BFFDB    ret
end;*}

//005BFFE0
procedure TScrollingWinControl.CalcAutoRange;
begin
{*
 005BFFE0    push        ebx
 005BFFE1    mov         ebx,eax
 005BFFE3    cmp         dword ptr [ebx+290],0
>005BFFEA    jg          005C0002
 005BFFEC    mov         eax,dword ptr [ebx+298]
 005BFFF2    call        005BF2EC
 005BFFF7    mov         eax,dword ptr [ebx+2A8]
 005BFFFD    call        005BF2EC
 005C0002    pop         ebx
 005C0003    ret
*}
end;

//005C0004
procedure TScrollBox.SetAutoScroll(Value:Boolean);
begin
{*
 005C0004    push        ebx
 005C0005    mov         ebx,eax
 005C0007    cmp         dl,byte ptr [ebx+294];TScrollBox.FAutoScroll:Boolean
>005C000D    je          005C003C
 005C000F    mov         byte ptr [ebx+294],dl;TScrollBox.FAutoScroll:Boolean
 005C0015    test        dl,dl
>005C0017    je          005C0022
 005C0019    mov         eax,ebx
 005C001B    call        TScrollingWinControl.CalcAutoRange
>005C0020    jmp         005C003C
 005C0022    xor         edx,edx
 005C0024    mov         eax,dword ptr [ebx+298];TScrollBox.FHorzScrollBar:TControlScrollBar
 005C002A    call        TControlScrollBar.SetRange
 005C002F    xor         edx,edx
 005C0031    mov         eax,dword ptr [ebx+2A8];TScrollBox.FVertScrollBar:TControlScrollBar
 005C0037    call        TControlScrollBar.SetRange
 005C003C    pop         ebx
 005C003D    ret
*}
end;

//005C0040
procedure TScrollingWinControl.SetHorzScrollBar(Value:TControlScrollBar);
begin
{*
 005C0040    mov         eax,dword ptr [eax+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005C0046    mov         ecx,dword ptr [eax]
 005C0048    call        dword ptr [ecx+8];TControlScrollBar.Assign
 005C004B    ret
*}
end;

//005C004C
procedure TScrollingWinControl.SetVertScrollBar(Value:TControlScrollBar);
begin
{*
 005C004C    mov         eax,dword ptr [eax+2A8];TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005C0052    mov         ecx,dword ptr [eax]
 005C0054    call        dword ptr [ecx+8];TControlScrollBar.Assign
 005C0057    ret
*}
end;

//005C0058
procedure TScrollingWinControl.UpdateScrollBars;
begin
{*
 005C0058    push        ebp
 005C0059    mov         ebp,esp
 005C005B    push        ecx
 005C005C    mov         dword ptr [ebp-4],eax
 005C005F    mov         eax,dword ptr [ebp-4]
 005C0062    cmp         byte ptr [eax+2A4],0
>005C0069    jne         005C0172
 005C006F    mov         eax,dword ptr [ebp-4]
 005C0072    call        TWinControl.HandleAllocated
 005C0077    test        al,al
>005C0079    je          005C0172
 005C007F    xor         eax,eax
 005C0081    push        ebp
 005C0082    push        5C016B
 005C0087    push        dword ptr fs:[eax]
 005C008A    mov         dword ptr fs:[eax],esp
 005C008D    mov         eax,dword ptr [ebp-4]
 005C0090    mov         byte ptr [eax+2A4],1
 005C0097    mov         eax,dword ptr [ebp-4]
 005C009A    mov         eax,dword ptr [eax+2A8]
 005C00A0    call        TControlScrollBar.NeedsScrollBarVisible
 005C00A5    test        al,al
>005C00A7    je          005C00CF
 005C00A9    mov         eax,dword ptr [ebp-4]
 005C00AC    mov         eax,dword ptr [eax+298]
 005C00B2    mov         cl,1
 005C00B4    xor         edx,edx
 005C00B6    call        TControlScrollBar.Update
 005C00BB    mov         eax,dword ptr [ebp-4]
 005C00BE    mov         eax,dword ptr [eax+2A8]
 005C00C4    xor         ecx,ecx
 005C00C6    mov         dl,1
 005C00C8    call        TControlScrollBar.Update
>005C00CD    jmp         005C012B
 005C00CF    mov         eax,dword ptr [ebp-4]
 005C00D2    mov         eax,dword ptr [eax+298]
 005C00D8    call        TControlScrollBar.NeedsScrollBarVisible
 005C00DD    test        al,al
>005C00DF    je          005C0107
 005C00E1    mov         eax,dword ptr [ebp-4]
 005C00E4    mov         eax,dword ptr [eax+2A8]
 005C00EA    mov         cl,1
 005C00EC    xor         edx,edx
 005C00EE    call        TControlScrollBar.Update
 005C00F3    mov         eax,dword ptr [ebp-4]
 005C00F6    mov         eax,dword ptr [eax+298]
 005C00FC    xor         ecx,ecx
 005C00FE    mov         dl,1
 005C0100    call        TControlScrollBar.Update
>005C0105    jmp         005C012B
 005C0107    mov         eax,dword ptr [ebp-4]
 005C010A    mov         eax,dword ptr [eax+2A8]
 005C0110    xor         ecx,ecx
 005C0112    xor         edx,edx
 005C0114    call        TControlScrollBar.Update
 005C0119    mov         eax,dword ptr [ebp-4]
 005C011C    mov         eax,dword ptr [eax+298]
 005C0122    xor         ecx,ecx
 005C0124    mov         dl,1
 005C0126    call        TControlScrollBar.Update
 005C012B    xor         eax,eax
 005C012D    pop         edx
 005C012E    pop         ecx
 005C012F    pop         ecx
 005C0130    mov         dword ptr fs:[eax],edx
 005C0133    push        5C0172
 005C0138    mov         eax,dword ptr [ebp-4]
 005C013B    mov         byte ptr [eax+2A4],0
 005C0142    call        StyleServices
 005C0147    mov         edx,dword ptr [eax]
 005C0149    call        dword ptr [edx+124]
 005C014F    test        al,1
>005C0151    je          005C016A
 005C0153    push        0
 005C0155    push        0
 005C0157    push        85
 005C015C    mov         eax,dword ptr [ebp-4]
 005C015F    call        TWinControl.GetHandle
 005C0164    push        eax
 005C0165    call        user32.SendMessageW
 005C016A    ret
>005C016B    jmp         @HandleFinally
>005C0170    jmp         005C0138
 005C0172    pop         ecx
 005C0173    pop         ebp
 005C0174    ret
*}
end;

//005C0178
procedure TScrollingWinControl.AutoScrollInView(AControl:Controls.TControl);
begin
{*
 005C0178    test        edx,edx
>005C017A    je          005C0193
 005C017C    test        byte ptr [edx+1C],1
>005C0180    jne         005C0193
 005C0182    test        byte ptr [eax+1C],1
>005C0186    jne         005C0193
 005C0188    test        byte ptr [eax+1C],8
>005C018C    jne         005C0193
 005C018E    call        TScrollingWinControl.ScrollInView
 005C0193    ret
*}
end;

//005C0194
{*procedure TScrollingWinControl.sub_004E5F1C(?:?);
begin
 005C0194    push        ebx
 005C0195    push        esi
 005C0196    mov         ebx,edx
 005C0198    mov         esi,eax
 005C019A    mov         edx,ebx
 005C019C    mov         eax,esi
 005C019E    call        TControl.sub_004E5F1C
 005C01A3    sub         bl,1
>005C01A6    jb          005C01AC
>005C01A8    je          005C01C2
>005C01AA    jmp         005C01D5
 005C01AC    mov         eax,dword ptr [esi+0BC];TScrollingWinControl.FTouchManager:TTouchManager
 005C01B2    movzx       edx,byte ptr ds:[5C01D8];0x12 gvar_005C01D8
 005C01B9    cmp         dl,byte ptr [eax+10];TTouchManager.FInteractiveGestures:TInteractiveGestures
 005C01BC    setne       al
 005C01BF    pop         esi
 005C01C0    pop         ebx
 005C01C1    ret
 005C01C2    mov         eax,dword ptr [esi+0BC];TScrollingWinControl.FTouchManager:TTouchManager
 005C01C8    movzx       edx,byte ptr ds:[5C01DC];0x17 gvar_005C01DC
 005C01CF    cmp         dl,byte ptr [eax+11];TTouchManager.FInteractiveGestureOptions:TInteractiveGestureOptions
 005C01D2    setne       al
 005C01D5    pop         esi
 005C01D6    pop         ebx
 005C01D7    ret
end;*}

//005C01E0
procedure TScrollingWinControl.ScrollInView(AControl:TControl);
begin
{*
 005C01E0    push        ebx
 005C01E1    push        esi
 005C01E2    push        edi
 005C01E3    push        ebp
 005C01E4    add         esp,0FFFFFFE0
 005C01E7    mov         esi,edx
 005C01E9    mov         ebx,eax
 005C01EB    mov         edi,esp
 005C01ED    test        esi,esi
>005C01EF    je          005C0329
 005C01F5    mov         edx,edi
 005C01F7    mov         eax,esi
 005C01F9    mov         ecx,dword ptr [eax]
 005C01FB    call        dword ptr [ecx+64]
 005C01FE    mov         eax,dword ptr [ebx+298]
 005C0204    movzx       eax,word ptr [eax+1A]
 005C0208    sub         dword ptr [edi],eax
 005C020A    add         dword ptr [edi+8],eax
 005C020D    mov         eax,dword ptr [ebx+2A8]
 005C0213    movzx       eax,word ptr [eax+1A]
 005C0217    sub         dword ptr [edi+4],eax
 005C021A    add         dword ptr [edi+0C],eax
 005C021D    lea         ecx,[esp+18]
 005C0221    mov         edx,edi
 005C0223    mov         eax,esi
 005C0225    call        TControl.ClientToScreen
 005C022A    lea         edx,[esp+18]
 005C022E    lea         ecx,[esp+10]
 005C0232    mov         eax,ebx
 005C0234    call        TControl.ScreenToClient
 005C0239    mov         eax,dword ptr [esp+10]
 005C023D    mov         dword ptr [edi],eax
 005C023F    mov         eax,dword ptr [esp+14]
 005C0243    mov         dword ptr [edi+4],eax
 005C0246    lea         ecx,[esp+18]
 005C024A    lea         edx,[edi+8]
 005C024D    mov         eax,esi
 005C024F    call        TControl.ClientToScreen
 005C0254    lea         edx,[esp+18]
 005C0258    lea         ecx,[esp+10]
 005C025C    mov         eax,ebx
 005C025E    call        TControl.ScreenToClient
 005C0263    mov         eax,dword ptr [esp+10]
 005C0267    mov         dword ptr [edi+8],eax
 005C026A    mov         eax,dword ptr [esp+14]
 005C026E    mov         dword ptr [edi+0C],eax
 005C0271    mov         esi,dword ptr [edi]
 005C0273    test        esi,esi
>005C0275    jge         005C0289
 005C0277    mov         eax,dword ptr [ebx+298]
 005C027D    mov         edx,dword ptr [eax+0C]
 005C0280    add         edx,esi
 005C0282    call        TControlScrollBar.SetPosition
>005C0287    jmp         005C02CC
 005C0289    mov         eax,ebx
 005C028B    call        TControl.GetClientWidth
 005C0290    mov         ebp,dword ptr [edi+8]
 005C0293    cmp         eax,ebp
>005C0295    jge         005C02CC
 005C0297    mov         eax,ebx
 005C0299    call        TControl.GetClientWidth
 005C029E    sub         ebp,esi
 005C02A0    cmp         eax,ebp
>005C02A2    jge         005C02B0
 005C02A4    mov         eax,ebx
 005C02A6    call        TControl.GetClientWidth
 005C02AB    add         eax,dword ptr [edi]
 005C02AD    mov         dword ptr [edi+8],eax
 005C02B0    mov         esi,dword ptr [ebx+298]
 005C02B6    mov         eax,ebx
 005C02B8    call        TControl.GetClientWidth
 005C02BD    mov         edx,dword ptr [esi+0C]
 005C02C0    add         edx,dword ptr [edi+8]
 005C02C3    sub         edx,eax
 005C02C5    mov         eax,esi
 005C02C7    call        TControlScrollBar.SetPosition
 005C02CC    mov         esi,dword ptr [edi+4]
 005C02CF    test        esi,esi
>005C02D1    jge         005C02E5
 005C02D3    mov         eax,dword ptr [ebx+2A8]
 005C02D9    mov         edx,dword ptr [eax+0C]
 005C02DC    add         edx,esi
 005C02DE    call        TControlScrollBar.SetPosition
>005C02E3    jmp         005C0329
 005C02E5    mov         eax,ebx
 005C02E7    call        TControl.GetClientHeight
 005C02EC    mov         ebp,dword ptr [edi+0C]
 005C02EF    cmp         eax,ebp
>005C02F1    jge         005C0329
 005C02F3    mov         eax,ebx
 005C02F5    call        TControl.GetClientHeight
 005C02FA    sub         ebp,esi
 005C02FC    cmp         eax,ebp
>005C02FE    jge         005C030D
 005C0300    mov         eax,ebx
 005C0302    call        TControl.GetClientHeight
 005C0307    add         eax,dword ptr [edi+4]
 005C030A    mov         dword ptr [edi+0C],eax
 005C030D    mov         esi,dword ptr [ebx+2A8]
 005C0313    mov         eax,ebx
 005C0315    call        TControl.GetClientHeight
 005C031A    mov         edx,dword ptr [esi+0C]
 005C031D    add         edx,dword ptr [edi+0C]
 005C0320    sub         edx,eax
 005C0322    mov         eax,esi
 005C0324    call        TControlScrollBar.SetPosition
 005C0329    add         esp,20
 005C032C    pop         ebp
 005C032D    pop         edi
 005C032E    pop         esi
 005C032F    pop         ebx
 005C0330    ret
*}
end;

//005C0334
procedure TScrollingWinControl.ScaleScrollBars(M:Integer; D:Integer);
begin
{*
 005C0334    push        ebx
 005C0335    push        esi
 005C0336    push        edi
 005C0337    push        ebp
 005C0338    mov         edi,ecx
 005C033A    mov         esi,edx
 005C033C    mov         ebx,eax
 005C033E    cmp         edi,esi
>005C0340    je          005C03BF
 005C0342    test        byte ptr [ebx+1C],1
>005C0346    jne         005C035C
 005C0348    mov         eax,dword ptr [ebx+298]
 005C034E    mov         byte ptr [eax+1E],1
 005C0352    mov         eax,dword ptr [ebx+2A8]
 005C0358    mov         byte ptr [eax+1E],1
 005C035C    xor         edx,edx
 005C035E    mov         eax,dword ptr [ebx+298]
 005C0364    call        TControlScrollBar.SetPosition
 005C0369    xor         edx,edx
 005C036B    mov         eax,dword ptr [ebx+2A8]
 005C0371    call        TControlScrollBar.SetPosition
 005C0376    cmp         byte ptr [ebx+294],0
>005C037D    jne         005C03BF
 005C037F    mov         ebp,dword ptr [ebx+298]
 005C0385    cmp         byte ptr [ebp+1E],0
>005C0389    je          005C039F
 005C038B    push        edi
 005C038C    push        esi
 005C038D    mov         eax,dword ptr [ebp+10]
 005C0390    push        eax
 005C0391    call        kernel32.MulDiv
 005C0396    mov         edx,eax
 005C0398    mov         eax,ebp
 005C039A    call        TControlScrollBar.SetRange
 005C039F    mov         ebp,dword ptr [ebx+2A8]
 005C03A5    cmp         byte ptr [ebp+1E],0
>005C03A9    je          005C03BF
 005C03AB    push        edi
 005C03AC    push        esi
 005C03AD    mov         eax,dword ptr [ebp+10]
 005C03B0    push        eax
 005C03B1    call        kernel32.MulDiv
 005C03B6    mov         edx,eax
 005C03B8    mov         eax,ebp
 005C03BA    call        TControlScrollBar.SetRange
 005C03BF    mov         eax,dword ptr [ebx+298]
 005C03C5    mov         byte ptr [eax+1E],0
 005C03C9    mov         eax,dword ptr [ebx+2A8]
 005C03CF    mov         byte ptr [eax+1E],0
 005C03D3    pop         ebp
 005C03D4    pop         edi
 005C03D5    pop         esi
 005C03D6    pop         ebx
 005C03D7    ret
*}
end;

//005C03D8
procedure TScrollingWinControl.ChangeScale(M:Integer; D:Integer);
begin
{*
 005C03D8    push        ebx
 005C03D9    push        esi
 005C03DA    push        edi
 005C03DB    mov         edi,ecx
 005C03DD    mov         esi,edx
 005C03DF    mov         ebx,eax
 005C03E1    mov         ecx,edi
 005C03E3    mov         edx,esi
 005C03E5    mov         eax,ebx
 005C03E7    call        TScrollingWinControl.ScaleScrollBars
 005C03EC    mov         ecx,edi
 005C03EE    mov         edx,esi
 005C03F0    mov         eax,ebx
 005C03F2    call        TWinControl.ChangeScale
 005C03F7    pop         edi
 005C03F8    pop         esi
 005C03F9    pop         ebx
 005C03FA    ret
*}
end;

//005C03FC
procedure sub_005C03FC;
begin
{*
 005C03FC    ret
*}
end;

//005C0400
{*procedure TScrollingWinControl.WMSize(?:?);
begin
 005C0400    push        ebp
 005C0401    mov         ebp,esp
 005C0403    add         esp,0FFFFFFF8
 005C0406    push        ebx
 005C0407    mov         ebx,edx
 005C0409    mov         dword ptr [ebp-4],eax
 005C040C    mov         eax,dword ptr [ebp-4]
 005C040F    inc         dword ptr [eax+290];TScrollingWinControl.FAutoRangeCount:Integer
 005C0415    xor         edx,edx
 005C0417    push        ebp
 005C0418    push        5C046C
 005C041D    push        dword ptr fs:[edx]
 005C0420    mov         dword ptr fs:[edx],esp
 005C0423    mov         edx,ebx
 005C0425    mov         eax,dword ptr [ebp-4]
 005C0428    call        TWinControl.WMSize
 005C042D    xor         eax,eax
 005C042F    mov         edx,dword ptr [ebx+4]
 005C0432    sub         edx,1
>005C0435    jb          005C043E
>005C0437    je          005C0442
 005C0439    dec         edx
>005C043A    je          005C0446
>005C043C    jmp         005C0448
 005C043E    xor         eax,eax
>005C0440    jmp         005C0448
 005C0442    mov         al,1
>005C0444    jmp         005C0448
 005C0446    mov         al,2
 005C0448    mov         edx,eax
 005C044A    mov         eax,dword ptr [ebp-4]
 005C044D    mov         ecx,dword ptr [eax]
 005C044F    call        dword ptr [ecx+110];TScrollingWinControl.sub_005C03FC
 005C0455    xor         eax,eax
 005C0457    pop         edx
 005C0458    pop         ecx
 005C0459    pop         ecx
 005C045A    mov         dword ptr fs:[eax],edx
 005C045D    push        5C0473
 005C0462    mov         eax,dword ptr [ebp-4]
 005C0465    dec         dword ptr [eax+290];TScrollingWinControl.FAutoRangeCount:Integer
 005C046B    ret
>005C046C    jmp         @HandleFinally
>005C0471    jmp         005C0462
 005C0473    mov         eax,dword ptr [ebp-4]
 005C0476    movzx       eax,byte ptr [eax+2A4];TScrollingWinControl.FUpdatingScrollBars:Boolean
 005C047D    mov         byte ptr [ebp-5],al
 005C0480    mov         eax,dword ptr [ebp-4]
 005C0483    mov         byte ptr [eax+2A4],1;TScrollingWinControl.FUpdatingScrollBars:Boolean
 005C048A    xor         eax,eax
 005C048C    push        ebp
 005C048D    push        5C04BB
 005C0492    push        dword ptr fs:[eax]
 005C0495    mov         dword ptr fs:[eax],esp
 005C0498    mov         eax,dword ptr [ebp-4]
 005C049B    call        TScrollingWinControl.CalcAutoRange
 005C04A0    xor         eax,eax
 005C04A2    pop         edx
 005C04A3    pop         ecx
 005C04A4    pop         ecx
 005C04A5    mov         dword ptr fs:[eax],edx
 005C04A8    push        5C04C2
 005C04AD    mov         eax,dword ptr [ebp-4]
 005C04B0    movzx       edx,byte ptr [ebp-5]
 005C04B4    mov         byte ptr [eax+2A4],dl;TScrollingWinControl.FUpdatingScrollBars:Boolean
 005C04BA    ret
>005C04BB    jmp         @HandleFinally
>005C04C0    jmp         005C04AD
 005C04C2    mov         eax,dword ptr [ebp-4]
 005C04C5    mov         eax,dword ptr [eax+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005C04CB    cmp         byte ptr [eax+1C],0;TControlScrollBar.FVisible:Boolean
>005C04CF    jne         005C04E0
 005C04D1    mov         eax,dword ptr [ebp-4]
 005C04D4    mov         eax,dword ptr [eax+2A8];TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005C04DA    cmp         byte ptr [eax+1C],0;TControlScrollBar.FVisible:Boolean
>005C04DE    je          005C04E8
 005C04E0    mov         eax,dword ptr [ebp-4]
 005C04E3    call        TScrollingWinControl.UpdateScrollBars
 005C04E8    pop         ebx
 005C04E9    pop         ecx
 005C04EA    pop         ecx
 005C04EB    pop         ebp
 005C04EC    ret
end;*}

//005C04F0
procedure TScrollingWinControl.WMHScroll(Message:Messages.TWMCommand);
begin
{*
 005C04F0    cmp         dword ptr [edx+8],0
>005C04F4    jne         005C050E
 005C04F6    mov         ecx,dword ptr [eax+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005C04FC    cmp         byte ptr [ecx+1C],0;TControlScrollBar.FVisible:Boolean
>005C0500    je          005C050E
 005C0502    mov         eax,dword ptr [eax+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005C0508    call        005BF578
 005C050D    ret
 005C050E    call        TWinControl.WMCommand
 005C0513    ret
*}
end;

//005C0514
procedure TScrollingWinControl.WMVScroll(Message:Messages.TWMHScroll);
begin
{*
 005C0514    cmp         dword ptr [edx+8],0
>005C0518    jne         005C0532
 005C051A    mov         ecx,dword ptr [eax+2A8];TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005C0520    cmp         byte ptr [ecx+1C],0;TControlScrollBar.FVisible:Boolean
>005C0524    je          005C0532
 005C0526    mov         eax,dword ptr [eax+2A8];TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005C052C    call        005BF578
 005C0531    ret
 005C0532    call        TWinControl.WMHScroll
 005C0537    ret
*}
end;

//005C0538
{*procedure sub_005C0538(?:?);
begin
 005C0538    push        ebx
 005C0539    push        esi
 005C053A    push        edi
 005C053B    push        ebp
 005C053C    add         esp,0FFFFFFE0
 005C053F    mov         ebp,edx
 005C0541    mov         ebx,eax
 005C0543    mov         eax,dword ptr [ebx+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005C0549    mov         eax,dword ptr [eax+10];TControlScrollBar.FRange:Integer
 005C054C    mov         dword ptr [esp],eax
 005C054F    mov         eax,ebx
 005C0551    call        TControl.GetClientWidth
 005C0556    mov         dword ptr [esp+4],eax
 005C055A    mov         eax,dword ptr [esp]
 005C055D    cmp         eax,dword ptr [esp+4]
>005C0561    jle         005C0568
 005C0563    mov         esi,dword ptr [esp]
>005C0566    jmp         005C056C
 005C0568    mov         esi,dword ptr [esp+4]
 005C056C    mov         eax,ebx
 005C056E    call        TControl.GetClientHeight
 005C0573    mov         dword ptr [esp+8],eax
 005C0577    mov         eax,dword ptr [ebx+2A8];TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005C057D    mov         eax,dword ptr [eax+10];TControlScrollBar.FRange:Integer
 005C0580    mov         dword ptr [esp+0C],eax
 005C0584    mov         eax,dword ptr [esp+8]
 005C0588    cmp         eax,dword ptr [esp+0C]
>005C058C    jle         005C0594
 005C058E    mov         edi,dword ptr [esp+8]
>005C0592    jmp         005C0598
 005C0594    mov         edi,dword ptr [esp+0C]
 005C0598    push        edi
 005C0599    lea         eax,[esp+14]
 005C059D    push        eax
 005C059E    mov         eax,dword ptr [ebx+2A8];TScrollingWinControl.FVertScrollBar:TControlScrollBar
 005C05A4    mov         edx,dword ptr [eax+0C];TControlScrollBar.FPosition:Integer
 005C05A7    neg         edx
 005C05A9    mov         eax,dword ptr [ebx+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005C05AF    mov         eax,dword ptr [eax+0C];TControlScrollBar.FPosition:Integer
 005C05B2    neg         eax
 005C05B4    mov         ecx,esi
 005C05B6    call        Bounds
 005C05BB    lea         esi,[esp+10]
 005C05BF    mov         edi,ebp
 005C05C1    movs        dword ptr [edi],dword ptr [esi]
 005C05C2    movs        dword ptr [edi],dword ptr [esi]
 005C05C3    movs        dword ptr [edi],dword ptr [esi]
 005C05C4    movs        dword ptr [edi],dword ptr [esi]
 005C05C5    mov         edx,ebp
 005C05C7    mov         eax,ebx
 005C05C9    call        004EA530
 005C05CE    add         esp,20
 005C05D1    pop         ebp
 005C05D2    pop         edi
 005C05D3    pop         esi
 005C05D4    pop         ebx
 005C05D5    ret
end;*}

//005C05D8
procedure TScrollingWinControl.CMBiDiModeChanged(Message:Messages.TMessage);
begin
{*
 005C05D8    push        ebp
 005C05D9    mov         ebp,esp
 005C05DB    add         esp,0FFFFFFF4
 005C05DE    mov         dword ptr [ebp-8],edx
 005C05E1    mov         dword ptr [ebp-4],eax
 005C05E4    mov         eax,dword ptr [ebp-8]
 005C05E7    mov         eax,dword ptr [eax+4]
 005C05EA    mov         dword ptr [ebp-0C],eax
 005C05ED    xor         eax,eax
 005C05EF    push        ebp
 005C05F0    push        5C0639
 005C05F5    push        dword ptr fs:[eax]
 005C05F8    mov         dword ptr fs:[eax],esp
 005C05FB    mov         eax,dword ptr [ebp-4]
 005C05FE    mov         edx,dword ptr ds:[5B4C3C];TScrollBox
 005C0604    call        @IsClass
 005C0609    test        al,al
>005C060B    jne         005C0617
 005C060D    mov         eax,dword ptr [ebp-8]
 005C0610    mov         dword ptr [eax+4],1
 005C0617    mov         edx,dword ptr [ebp-8]
 005C061A    mov         eax,dword ptr [ebp-4]
 005C061D    call        TWinControl.CMBiDiModeChanged
 005C0622    xor         eax,eax
 005C0624    pop         edx
 005C0625    pop         ecx
 005C0626    pop         ecx
 005C0627    mov         dword ptr fs:[eax],edx
 005C062A    push        5C0640
 005C062F    mov         eax,dword ptr [ebp-8]
 005C0632    mov         edx,dword ptr [ebp-0C]
 005C0635    mov         dword ptr [eax+4],edx
 005C0638    ret
>005C0639    jmp         @HandleFinally
>005C063E    jmp         005C062F
 005C0640    mov         eax,dword ptr [ebp-4]
 005C0643    call        TWinControl.HandleAllocated
 005C0648    test        al,al
>005C064A    je          005C0662
 005C064C    mov         eax,dword ptr [ebp-4]
 005C064F    mov         eax,dword ptr [eax+298];TScrollingWinControl.FHorzScrollBar:TControlScrollBar
 005C0655    call        TControlScrollBar.ChangeBiDiPosition
 005C065A    mov         eax,dword ptr [ebp-4]
 005C065D    call        TScrollingWinControl.UpdateScrollBars
 005C0662    mov         esp,ebp
 005C0664    pop         ebp
 005C0665    ret
*}
end;

//005C0668
constructor TScrollBox.Create(AOwner:TComponent);
begin
{*
 005C0668    push        ebx
 005C0669    push        esi
 005C066A    test        dl,dl
>005C066C    je          005C0676
 005C066E    add         esp,0FFFFFFF0
 005C0671    call        @ClassCreate
 005C0676    mov         ebx,edx
 005C0678    mov         esi,eax
 005C067A    xor         edx,edx
 005C067C    mov         eax,esi
 005C067E    call        TScrollingWinControl.Create
 005C0683    mov         eax,[005C06D0];0x2800AB gvar_005C06D0
 005C0688    mov         dword ptr [esi+60],eax;TScrollBox.FControlStyle:TControlStyle
 005C068B    mov         dl,1
 005C068D    mov         eax,esi
 005C068F    call        TScrollBox.SetAutoScroll
 005C0694    mov         edx,0B9
 005C0699    mov         eax,esi
 005C069B    call        TControl.SetWidth
 005C06A0    mov         edx,29
 005C06A5    mov         eax,esi
 005C06A7    call        TControl.SetHeight
 005C06AC    mov         byte ptr [esi+2B0],1;TScrollBox.FBorderStyle:TBorderStyle
 005C06B3    mov         eax,esi
 005C06B5    test        bl,bl
>005C06B7    je          005C06C8
 005C06B9    call        @AfterConstruction
 005C06BE    pop         dword ptr fs:[0]
 005C06C5    add         esp,0C
 005C06C8    mov         eax,esi
 005C06CA    pop         esi
 005C06CB    pop         ebx
 005C06CC    ret
*}
end;

Initialization
//0079D734
{*
 0079D734    sub         dword ptr ds:[7CA7BC],1
>0079D73B    jae         0079D753
 0079D73D    mov         ecx,dword ptr ds:[5BE860];TScrollBoxStyleHook
 0079D743    mov         edx,dword ptr ds:[5B4C3C];TScrollBox
 0079D749    mov         eax,[005738E0];TCustomStyleEngine
 0079D74E    call        TCustomStyleEngine.RegisterStyleHook
 0079D753    ret
*}
Finalization
end.