//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit74;

interface

uses
  SysUtils, Classes, Vcl.Controls, System.TypInfo, System.Classes, System, System.Win.Registry, Vcl.Graphics, System.UIConsts, System.Generics.Defaults, Vcl.Dialogs, Vcl.StdCtrls;

type
  TComparer<System.HelpIntfs.THelpViewerNode> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function HelpIntfs.THelpViewerNode>.Default:IComparer<System.HelpIntfs.THelpViewerNode>;//005527FC
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TCommonDialog = class(TComponent)
  published
    destructor Destroy();//00558580
    constructor Create(AOwner:TComponent);//00558538
    procedure Execute;//005585D8
    //procedure DefaultHandler(var Message:?);//00558640
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FCtl3D:Boolean;//f40
    FHelpContext:THelpContext;//f44
    FHandle:HWND;//f48
    FRedirector:TWinControl;//f4C
    FTemplateModule:NativeUInt;//f50
    FOnClose:TNotifyEvent;//f58
    FOnShow:TNotifyEvent;//f60
    f62:word;//f62
    FObjectInstance:Pointer;//f64
    FDefWndProc:Pointer;//f68
    FObjectInstance:Pointer;//f6C
    FTemplate:PWideChar;//f70
    //procedure DefaultHandler(var Message:?); virtual;//00558640
    destructor Destroy(); virtual;//00558580
    constructor Create(AOwner:TComponent); virtual;//v3C//00558538
    procedure v44; virtual;//v44//005586C4
    //function v48:?; virtual;//v48//00558614
    //function v4C(?:?):?; virtual;//v4C//00558618
    //function v50(?:?; ?:?):?; virtual;//v50//00558714
    procedure Execute; virtual;//v54//005585D8
    procedure Execute; virtual; abstract;//v58//00405554
    procedure WMDestroy; message WM_DESTROY;//005586CC
    procedure WMNCDestroy; message WM_NCDESTROY;//00558700
    //procedure WMInitDialog(?:?); message WM_INITDIALOG;//005586E8
    procedure sub_005587F4; dynamic;//005587F4
    procedure DoShow; dynamic;//005587E0
  end;
  TFileEditStyle = (fsEdit, fsComboBox);
  TOFNotifyEx = TOFNotifyEx = record//size=18
f10:IShellFolder;//f10
end;
hdr:tagNMHDR;//f0
lpOFN:POpenFilenameW;//fC
psf:IShellFolder;//f10
pidl:Pointer;//f14
end;;
  TIncludeItemEvent = procedure(const OFN:TOFNotifyEx; var Include:Boolean) of object;;
  TOpenDialog = class(TCommonDialog)
  published
    constructor Create(AOwner:TComponent);//0055934C
    destructor Destroy();//005593D8
    function Execute(ParentWnd:HWND):Boolean;//00559A90
  public
    FHistoryList:TStrings;//f78
    FOptions:TOpenOptions;//f7C
    f7D:byte;//f7D
    f7E:byte;//f7E
    FFilter:string;//f80
    FFilterIndex:Integer;//f84
    FCurrentFilterIndex:Integer;//f88
    FInitialDir:string;//f8C
    FTitle:string;//f90
    FDefaultExt:string;//f94
    FFileName:TFileName;//f98
    FFiles:TStrings;//f9C
    FFileEditStyle:TFileEditStyle;//fA0
    FOnSelectionChange:TNotifyEvent;//fA8
    fAA:word;//fAA
    FOnFolderChange:TNotifyEvent;//fB0
    fB2:word;//fB2
    FOnTypeChange:TNotifyEvent;//fB8
    fBA:word;//fBA
    fBC:dword;//fBC
    FOnCanClose:TCloseQueryEvent;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FOnIncludeItem:TIncludeItemEvent;//fC8
    fCA:word;//fCA
    FInternalWrapper:TObject;//fCC
    FOptionsEx:TOpenOptionsEx;//fD0
    FInternalWrapper:TObject;//fD4
    destructor Destroy(); virtual;//005593D8
    procedure DefineProperties(Filer:Classes.TFiler); virtual;//v4//00559614
    constructor Create(AOwner:TComponent); virtual;//v3C//0055934C
    //procedure v44(?:?); virtual;//v44//0055943C
    procedure v48; virtual;//v48//0055998C
    function Execute(ParentWnd:HWND):Boolean; virtual;//v58//00559A90
    //procedure v5C(?:?); virtual;//v5C//005598B4
    procedure sub_00559F78; dynamic;//00559F78
    procedure sub_005595B8; dynamic;//005595B8
    procedure sub_0055954C; dynamic;//0055954C
    procedure ReadFileEditStyle(Reader:Classes.TReader);//005595D8
    //procedure GetFileName(?:?);//00559908
    //function GetFilterIndex:?;//00559978
    //procedure GetInitialDir(?:?);//005599A4
    procedure SetFileName(Value:TFileName);//005599BC
    procedure SetInitialDir(Value:string);//00559A2C
    function DoExecute(Func:Pointer; ParentWnd:Windows.HWND):BOOL;//00559B14
  end;
  TSaveDialog = class(TOpenDialog)
  published
    function Execute(ParentWnd:HWND):Boolean;//00559F94
  public
    function Execute(ParentWnd:HWND):Boolean; virtual;//v58//00559F94
  end;
  TFontDialogOption = (fdAnsiOnly, fdTrueTypeOnly, fdEffects, fdFixedPitchOnly, fdForceFontExist, fdNoFaceSel, fdNoOEMFonts, fdNoSimulations, fdNoSizeSel, fdNoStyleSel, fdNoVectorFonts, fdShowHelp, fdWysiwyg, fdLimitSize, fdScalableOnly, fdApplyButton);
  TFontDialogOptions = set of TFontDialogOption;
  TFontDialogDevice = (fdScreen, fdPrinter, fdBoth);
  TFDApplyEvent = procedure(Sender:TObject; Wnd:HWND) of object;;
  TFontDialog = class(TCommonDialog)
  published
    function Execute(ParentWnd:HWND):Boolean;//0055A194
    constructor Create(AOwner:TComponent);//0055A00C
    destructor Destroy();//0055A060
  public
    FFont:TFont;//f78
    FDevice:TFontDialogDevice;//f7C
    FOptions:TFontDialogOptions;//f7D
    FOnApply:TFDApplyEvent;//f80
    f82:word;//f82
    FMaxFontSize:Integer;//f84
    FMinFontSize:Integer;//f88
    FFontColorModified:Boolean;//f89
    FMaxFontSize:Integer;//f8C
    FFontCharsetModified:Boolean;//f90
    FFontColorModified:Boolean;//f91
    constructor Create(AOwner:TComponent); virtual;//v3C//0055A00C
    //procedure v44(?:?); virtual;//v44//0055A08C
    function Execute(ParentWnd:HWND):Boolean; virtual;//v58//0055A194
    //procedure sub_0055A0C4(?:?); dynamic;//0055A0C4
    procedure DoApply(Wnd:Windows.HWND);//0055A0E4
    procedure SetFont(Value:TFont);//0055A3B4
  end;
  TPrinterSetupDialog = class(TCommonDialog)
  published
    procedure Execute(ParentWnd:HWND);//0055A6B8
  public
    procedure Execute(ParentWnd:HWND); virtual;//v58//0055A6B8
  end;
  TPrintDialog = class(TCommonDialog)
  published
    procedure Execute(ParentWnd:HWND);//0055A7BC
  public
    FFromPage:Integer;//f78
    FOptions:TPrintDialogOptions;//f79
    FPrintToFile:Boolean;//f7A
    FPrintRange:TPrintRange;//f7B
    FToPage:Integer;//f7C
    FCollate:Boolean;//f80
    FOptions:TPrintDialogOptions;//f81
    FPrintToFile:Boolean;//f82
    FPrintRange:TPrintRange;//f83
    FMinPage:Integer;//f84
    FMaxPage:Integer;//f88
    FCopies:Integer;//f8C
    procedure Execute(ParentWnd:HWND); virtual;//v58//0055A7BC
    //function SetCopies(Value:Integer):?;//0055A7A4
  end;
  EPlatformVersionException = class(Exception)
  end;
  TFileDialogOption = (fdoOverWritePrompt, fdoStrictFileTypes, fdoNoChangeDir, fdoPickFolders, fdoForceFileSystem, fdoAllNonStorageItems, fdoNoValidate, fdoAllowMultiSelect, fdoPathMustExist, fdoFileMustExist, fdoCreatePrompt, fdoShareAware, fdoNoReadOnlyReturn, fdoNoTestFileCreate, fdoHideMRUPlaces, fdoHidePinnedPlaces, fdoNoDereferenceLinks, fdoDontAddToRecent, fdoForceShowHidden, fdoDefaultNoMiniMode, fdoForcePreviewPaneOn);
  TFileDialogOptions = set of TFileDialogOption;
  TFileDialogOverwriteResponse = (forDefault, forAccept, forRefuse);
  TFileDialogShareViolationResponse = (fsrDefault, fsrAccept, fsrRefuse);
  TFileDialogCloseEvent = procedure(Sender:TObject; var CanClose:Boolean) of object;;
  TFileDialogFolderChangingEvent = procedure(Sender:TObject; var CanChange:Boolean) of object;;
  TFileDialogOverwriteEvent = procedure(Sender:TObject; var Response:TFileDialogOverwriteResponse) of object;;
  TFileDialogShareViolationEvent = procedure(Sender:TObject; var Response:TFileDialogShareViolationResponse) of object;;
  TFileTypeItem = class(TCollectionItem)
  published
    destructor Destroy();//0055AA9C
    constructor Create;//0055AA5C
  public
    FDisplayName:string;//fC
    FDisplayNameWStr:PWideChar;//f10
    FFileMask:string;//f14
    FFileMaskWStr:PWideChar;//f18
    destructor Destroy(); virtual;//0055AA9C
    constructor Create; virtual;//v1C//0055AA5C
    function GetDisplayNameWStr:LPCWSTR;//0055AAF0
    function GetFileMaskWStr:LPCWSTR;//0055AB44
  end;
  TFileTypeItems = class(TCollection)
  published
    function GetItem(Index:Integer):TFileTypeItem;//0055ABE4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Add:TFileTypeItem;//0055AB70
    function FilterSpecArray:TComdlgFilterSpecArray;//0055AB7C
  end;
  TFavoriteLinkItem = class(TCollectionItem)
  public
    .FLocation:string;//fC
  end;
  TFavoriteLinkItemsEnumerator = class(TObject)
  published
    function MoveNext:Boolean;//0055AC48
    function GetCurrent:TFavoriteLinkItem;//0055AC3C
    constructor Create;//0055ABF8
  public
    FIndex:Integer;//f4
    FCollection:TFavoriteLinkItems;//f8
    constructor Create;//00552798
  end;
  TFavoriteLinkItems = class(TCollection)
  published
    function GetItem(Index:Integer):TFavoriteLinkItem;//0055AC9C
    function GetEnumerator:TFavoriteLinkItemsEnumerator;//0055AC8C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  end;
  TCustomFileDialog = class(TComponent)
  published
    procedure Execute;//0055B448
    function Execute(ParentWnd:HWND):Boolean;//0055B4A8
    constructor Create;//0055B24C
    destructor Destroy();//0055B2E4
  public
    FClientGuid:string;//f40
    FDefaultExtension:string;//f44
    FDefaultFolder:string;//f48
    FDialog:IFileDialog;//f4C
    FFavoriteLinks:TFavoriteLinkItems;//f50
    FFileName:TFileName;//f54
    FFileNameLabel:string;//f58
    FFiles:TStrings;//f5C
    FFileTypeIndex:Cardinal;//f60
    FFileTypes:TFileTypeItems;//f64
    FHandle:HWND;//f68
    FOkButtonLabel:string;//f6C
    FOptions:TFileDialogOptions;//f70
    FShellItem:IShellItem;//f74
    FShellItems:IShellItemArray;//f78
    FTitle:string;//f7C
    FOnExecute:TNotifyEvent;//f80
    f84:TFileOpenDialogWrapper;//f84
    FOnFileOkClick:TFileDialogCloseEvent;//f88
    f8A:word;//f8A
    f8C:TFileDialogWrapper;//f8C
    FOnFolderChange:TNotifyEvent;//f90
    f92:word;//f92
    f94:TFileDialogWrapper;//f94
    FOnFolderChanging:TFileDialogFolderChangingEvent;//f98
    f9A:word;//f9A
    f9C:dword;//f9C
    FOnOverwrite:TFileDialogOverwriteEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    FOnSelectionChange:TNotifyEvent;//fA8
    fAA:word;//fAA
    fAC:TFileDialogWrapper;//fAC
    FOnShareViolation:TFileDialogShareViolationEvent;//fB0
    fB2:word;//fB2
    fB4:TFileDialogWrapper;//fB4
    FOnTypeChange:TNotifyEvent;//fB8
    fBA:word;//fBA
    fBC:TFileDialogWrapper;//fBC
    FActualFolder:TFileName;//fC0
    destructor Destroy(); virtual;//0055B2E4
    constructor Create; virtual;//v3C//0055B24C
    procedure CreateFileDialog; virtual; abstract;//v44//00405554
    //function v48:?; virtual;//v48//0055BEB8
    procedure Execute; virtual;//v4C//0055B448
    function Execute(ParentWnd:HWND):Boolean; virtual;//v50//0055B4A8
    procedure sub_0055C1EC; dynamic;//0055C1EC
    //procedure sub_0055C148(?:?; ?:?); dynamic;//0055C148
    procedure sub_0055C050; dynamic;//0055C050
    //procedure sub_0055BFAC(?:?; ?:?); dynamic;//0055BFAC
    //procedure sub_0055BA00(?:?); dynamic;//0055BA00
    procedure sub_0055B99C; dynamic;//0055B99C
    procedure sub_0055B95C; dynamic;//0055B95C
    //procedure sub_0055BDE4(?:?; ?:?); dynamic;//0055BDE4
    //procedure sub_0055BC70(?:?); dynamic;//0055BC70
    procedure sub_0055B428; dynamic;//0055B428
    //procedure sub_0055B408(?:?); dynamic;//0055B408
    //procedure sub_0055B3C8(?:?); dynamic;//0055B3C8
    procedure sub_0055B39C; dynamic;//0055B39C
    procedure sub_0055B37C; dynamic;//0055B37C
    procedure sub_0055B350; dynamic;//0055B350
    function GetFileName:TFileName;//0055BAAC
  end;
  TCustomFileOpenDialog = class(TCustomFileDialog)
  public
    function CreateFileDialog:IFileDialog; virtual;//v44//0055C228
    //function v48:?; virtual;//v48//0055C2CC
    procedure sub_0055C050; dynamic;//0055C364
  end;
  TFileOpenDialog = class(TCustomFileOpenDialog)
    //procedure GetDefaultFolder(?:?);//0055BA98
    procedure SetClientGuid(Value:string);//0055C0B4
    procedure SetDefaultFolder(Value:string);//0055C0E8
    procedure SetFileName(Value:TFileName);//0055C108
    procedure SetFileTypes(Value:TFileTypeItems);//0055C128
    procedure SetFavoriteLinks(Value:TFavoriteLinkItems);//0055C138
  end;
  TCustomFileSaveDialog = class(TCustomFileDialog)
  public
    function CreateFileDialog:IFileDialog; virtual;//v44//0055C42C
  end;
  TFileSaveDialog = class(TCustomFileSaveDialog)
  end;
  TTaskDialogFlag = (tfEnableHyperlinks, tfUseHiconMain, tfUseHiconFooter, tfAllowDialogCancellation, tfUseCommandLinks, tfUseCommandLinksNoIcon, tfExpandFooterArea, tfExpandedByDefault, tfVerificationFlagChecked, tfShowProgressBar, tfShowMarqueeProgressBar, tfCallbackTimer, tfPositionRelativeToWindow, tfRtlLayout, tfNoDefaultRadioButton, tfCanBeMinimized);
  TTaskDialogFlags = set of TTaskDialogFlag;
  TTaskDialogCommonButton = (tcbOk, tcbYes, tcbNo, tcbCancel, tcbRetry, tcbClose);
  TTaskDialogCommonButtons = set of TTaskDialogCommonButton;
  TTaskDialogProgressBar = class(TPersistent)
  published
    procedure Initialize;//0055C77C
    constructor Create;//0055C4D0
  public
    FClient:TCustomTaskDialog;//f4
    FMarqueeSpeed:Cardinal;//f8
    FMax:Integer;//fC
    FMin:Integer;//f10
    FPosition:Integer;//f14
    FState:TProgressBarState;//f18
    procedure SetMax(Value:Integer);//0055C528
    procedure SetMin(Value:Integer);//0055C5EC
    procedure SetPosition(Value:Integer);//0055C6B0
    procedure SetState(Value:TProgressBarState);//0055C720
    procedure SetMarqueeSpeed(Value:Cardinal);//0055C750
  end;
  TTaskDialogBaseButtonItem = class(TCollectionItem)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure SetInitialState;//0055CA18
    constructor Create;//0055C81C
    destructor Destroy();//0055C87C
  public
    FCaption:string;//fC
    FClient:TCustomTaskDialog;//f10
    FEnabled:Boolean;//f14
    FModalResult:TModalResult;//f18
    FTextWStr:PWideChar;//f1C
    destructor Destroy(); virtual;//0055C87C
    function GetDisplayName:UnicodeString; virtual;//vC//0055C914
    constructor Create; virtual;//v1C//0055C81C
    procedure v24; virtual;//v24//0055C8B8
    procedure v28; virtual;//v28//0055C8D4
    function GetButtonText:UnicodeString; virtual;//v2C//0055C8F4
    procedure SetInitialState; virtual;//v30//0055CA18
    function GetDefault:Boolean;//0055C908
    function GetTextWStr:LPCWSTR;//0055C938
    procedure SetCaption(const Value:UnicodeString);//0055C9A8
    procedure SetDefault(const Value:Boolean);//0055C9E4
    procedure SetEnabled(const Value:Boolean);//0055CA08
  end;
  TTaskDialogButtonItem = class(TTaskDialogBaseButtonItem)
  published
    procedure SetInitialState;//0055CB58
    constructor Create;//0055CA24
  public
    FCommandLinkHint:string;//f20
    FElevationRequired:Boolean;//f24
    constructor Create; virtual;//v1C//0055CA24
    //procedure GetButtonText(?:?); virtual;//v2C//0055CAF4
    procedure SetInitialState; virtual;//v30//0055CB58
    procedure DoSetElevationRequired;//0055CAD4
    procedure SetElevationRequired(const Value:Boolean);//0055CB48
  end;
  TTaskDialogRadioButtonItem = class(TTaskDialogBaseButtonItem)
  published
    constructor Create;//0055CB74
  public
    constructor Create; virtual;//v1C//0055CB74
    procedure v24; virtual;//v24//0055CC20
    procedure v28; virtual;//v28//0055CC3C
  end;
  TTaskDialogButtonList = array of TASKDIALOG_BUTTON;
//elSize = 8;
  TTaskDialogButtonsEnumerator = class(TObject)
  published
    function MoveNext:Boolean;//0055CCAC
    function GetCurrent:TTaskDialogBaseButtonItem;//0055CCA0
    constructor Classes.TCollectionItem>.TEnumerator.Create;//0055CC5C
  public
    FIndex:Integer;//f4
    FCollection:TTaskDialogButtons;//f8
  end;
  TTaskDialogButtons = class(TOwnedCollection)
  published
    procedure SetInitialState;//0055CE0C
    function GetItem(Index:Integer):TTaskDialogBaseButtonItem;//0055CDEC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function GetEnumerator:TTaskDialogButtonsEnumerator;//0055CDDC
    function Add:TTaskDialogBaseButtonItem;//0055CCEC
    destructor Destroy();//0055CCC8
    function FindButton(AModalResult:TModalResult):TTaskDialogBaseButtonItem;//0055CD60
    function Buttons:PTaskDialogButton;//0055CCF8
  public
    FButtonList:TTaskDialogButtonList;//f1C
    FButtonListPtr:PTaskDialogButton;//f20
    FDefaultButton:TTaskDialogBaseButtonItem;//f24
    destructor Destroy(); virtual;//0055CCC8
    procedure SetInitialState; dynamic;//0055CE0C
    procedure SetDefaultButton(const Value:TTaskDialogBaseButtonItem);//0055CE00
  end;
  TTaskDlgClickEvent = procedure(Sender:TObject; ModalResult:TModalResult; var CanClose:Boolean) of object;;
  TTaskDlgTimerEvent = procedure(Sender:TObject; TickCount:Cardinal; var Reset:Boolean) of object;;
  TCustomTaskDialog = class(TComponent)
  published
    procedure Execute;//0055D668
    destructor Destroy();//0055CF3C
    constructor Create(AOwner:TComponent);//0055CE70
    procedure Execute(ParentWnd:HWND);//0055D6B8
  public
    FButton:TTaskDialogButtonItem;//f40
    FButtons:TTaskDialogButtons;//f44
    FCaption:string;//f48
    FCommonButtons:TTaskDialogCommonButtons;//f4C
    FCustomFooterIcon:TIcon;//f50
    FCustomMainIcon:TIcon;//f54
    FDefaultButton:TTaskDialogCommonButton;//f58
    FExpandButtonCaption:string;//f5C
    FExpanded:Boolean;//f60
    FExpandedText:string;//f64
    FFlags:TTaskDialogFlags;//f68
    f69:byte;//f69
    FFooterIcon:TTaskDialogIcon;//f6C
    FFooterText:string;//f70
    FHandle:HWND;//f74
    FHelpContext:Integer;//f78
    FMainIcon:TTaskDialogIcon;//f7C
    FModalResult:TModalResult;//f80
    FProgressBar:TTaskDialogProgressBar;//f84
    FRadioButton:TTaskDialogRadioButtonItem;//f88
    FRadioButtons:TTaskDialogButtons;//f8C
    FText:string;//f90
    FTitle:string;//f94
    FURL:string;//f98
    FVerificationText:string;//f9C
    FOnButtonClicked:TTaskDlgClickEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    FOnDialogConstructed:TNotifyEvent;//fA8
    fAA:word;//fAA
    fAC:dword;//fAC
    FOnDialogCreated:TNotifyEvent;//fB0
    FOnDialogDestroyed:TNotifyEvent;//fB8
    fBA:word;//fBA
    fBC:dword;//fBC
    FOnExpanded:TNotifyEvent;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FOnHyperlinkClicked:TNotifyEvent;//fC8
    fCA:word;//fCA
    fCC:dword;//fCC
    FOnNavigated:TNotifyEvent;//fD0
    fD2:word;//fD2
    fD4:dword;//fD4
    FOnRadioButtonClicked:TNotifyEvent;//fD8
    fDA:word;//fDA
    fDC:dword;//fDC
    FOnTimer:TTaskDlgTimerEvent;//fE0
    fE2:word;//fE2
    fE4:dword;//fE4
    FOnVerificationClicked:TNotifyEvent;//fE8
    fEA:word;//fEA
    fEC:dword;//fEC
    destructor Destroy(); virtual;//0055CF3C
    constructor Create(AOwner:TComponent); virtual;//v3C//0055CE70
    procedure Execute(ParentWnd:HWND); dynamic;//0055D6B8
    procedure Execute; dynamic;//0055D668
    //procedure sub_0055CF90(?:?; ?:?; ?:?; ?:?); dynamic;//0055CF90
    //procedure sub_0055D8B0(?:?); dynamic;//0055D8B0
    //procedure sub_0055D638(?:?); dynamic;//0055D638
    //procedure sub_0055D618(?:?); dynamic;//0055D618
    //procedure sub_0055D5E4(?:?); dynamic;//0055D5E4
    procedure sub_0055D5C4; dynamic;//0055D5C4
    //procedure sub_0055D594(?:?); dynamic;//0055D594
    procedure sub_0055D530; dynamic;//0055D530
    //procedure sub_0055D510(?:?); dynamic;//0055D510
    procedure sub_0055D4D0; dynamic;//0055D4D0
    procedure DoOnDialogDestroyed; dynamic;//0055D4B0
    procedure sub_0055D4F0; dynamic;//0055D4F0
    //procedure sub_0055D478(?:?; ?:?); dynamic;//0055D478
    //procedure sub_0055D154(?:?); dynamic;//0055D154
  end;
  TRedirectorWindow = class(TWinControl)
  public
    FCommonDialog:TCommonDialog;//f290
    FFormHandle:NativeUInt;//f294
    //procedure v98(?:?); virtual;//v98//005584C4
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//005584A0
    procedure CMRelease; message CM_RELEASE;//00558530
  end;
  TFileDialogWrapper = class(TObject)
  published
    function Execute(ParentWnd:HWND):Boolean;//00558DF4
    destructor Destroy();//00558BA8
    constructor Create;//00558B60
  public
    FFileDialog:TCustomFileDialog;//f4
    FOpenDialog:TOpenDialog;//f8
    destructor Destroy(); virtual;//00558BA8
    procedure CreateFileDialog; virtual; abstract;//v0//00405554
    function GetFileName:TFileName;//0055903C
  end;
  TFileOpenDialogWrapper = class(TFileDialogWrapper)
  public
    procedure CreateFileDialog; virtual;//v0//005591E0
  end;
  TFileSaveDialogWrapper = class(TFileDialogWrapper)
  public
    function CreateFileDialog:TCustomFileDialog; virtual;//v0//005592BC
  end;
  TFileDialogEvents = class(TInterfacedObject)
  published
    function OnShareViolation(pfd:IFileDialog; psi:IShellItem; pResponse:Cardinal):HRESULT; stdcall;//0055B1EC
    function OnSelectionChange(pfd:IFileDialog):HRESULT; stdcall;//0055B1AC
    function OnOverwrite(pfd:IFileDialog; psi:IShellItem; pResponse:Cardinal):HRESULT; stdcall;//0055B178
    procedure OnTypeChange(pfd:IFileDialog); stdcall;//0055B220
    function OnFileOk(pfd:IFileDialog):HRESULT; stdcall;//0055B0F0
    constructor Create;//0055B0B0
    function OnFolderChange(pfd:IFileDialog):HRESULT; stdcall;//0055B11C
    function OnFolderChanging(pfd:IFileDialog; psiFolder:IShellItem):HRESULT; stdcall;//0055B148
  public
    FFileDialog:TCustomFileDialog;//fC
    FRetrieveHandle:Boolean;//f10
  end;
  :TCustomFileDialog.:1 = array of IShellItem;
//elSize = 4
//varType equivalent: varUnknown;
  TMessageForm = class(TForm)
  published
    constructor Create(AOwner:TComponent; Dummy:Integer);//0055DC50
  public
    Message:TLabel;//f3C0
    constructor Create(AOwner:TComponent; Dummy:Integer); virtual;//v130//0055DC50
    procedure CustomKeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);//0055DCBC
    procedure WriteToClipBoard(Text:UnicodeString);//0055DD2C
    function GetFormText:UnicodeString;//0055DE78
  end;
  TTaskMessageDialog = class(TCustomTaskDialog)
  published
    procedure Execute(ParentWnd:HWND);//0055EE84
  public
    FHelpFile:string;//fF0
    FParentWnd:HWND;//fF4
    FPosition:TPoint;//fF8
    procedure Execute(ParentWnd:HWND); dynamic;//0055EE84
    procedure sub_0055D530; dynamic;//0055ED8C
    procedure DoOnDialogDestroyed; dynamic;//0055ECE8
    //procedure sub_0055D478(?:?; ?:?); dynamic;//0055ECD4
  end;
  TInputQueryForm = class(TForm)
  published
    function CloseQuery:Boolean;//0055F334
  public
    FCloseQueryFunc:TFunc<System.Boolean>;//f3C0
    function CloseQuery:Boolean; virtual;//v134//0055F334
  end;
  :14 = array of string;
//elSize = 4
//varType equivalent: var;
  InputQuery$280$ActRec = class(TInterfacedObject)
  public
    Form:TInputQueryForm;//fC
    PromptCount:Integer;//f10
    CloseQueryFunc:TInputCloseQueryFunc;//f14
  end;
  TDefaultLoginCredentials = class(TObject)
  published
    procedure LoginEventUsrPw(Sender:TObject; var Success:Boolean; Callback:TLoginCredentialService.TLoginEvent);//005603C4
    procedure LoginEvent(Sender:TObject; var Success:Boolean; Callback:TLoginCredentialService.TLoginEvent);//0056007C
    function LoginEvent$833$ActRec.$0$Body(const Values:array[$0..-$1] of System.UnicodeString; const _Dv_:$0..-$1):Boolean;//00560054
    function LoginEventUsrPw$835$ActRec.$0$Body(const Values:array[$0..-$1] of System.UnicodeString; const _Dv_:$0..-$1):Boolean;//0056039C
  end;
  TDefaultLoginCredentials.LoginEvent$290$ActRec = class(TInterfacedObject)
  public
    Sender:TObject;//fC
    Callback:TLoginEvent;//f10
  end;
  TDefaultLoginCredentials.LoginEventUsrPw$292$ActRec = class(TInterfacedObject)
  public
    Sender:TObject;//fC
    Callback:TLoginEvent;//f10
  end;
    destructor HelpIntfs.THelpViewerNode>.Destroy();//00552414
    function HelpIntfs.THelpViewerNode>.GetEnumerator:TEnumerator<System.HelpIntfs.THelpViewerNode>;//00552438
    //procedure HelpIntfs.THelpViewerNode>.ToArray(?:?);//00552440
    function HelpIntfs.THelpViewerNode>.MoveNext:Boolean;//005524F4
    procedure sub_00552544(?:TList<System.HelpIntfs.THelpViewerNode>);//00552544
    //procedure sub_00552550(?:?; ?:?);//00552550
    //procedure sub_0055255C(?:?; ?:?; ?:?);//0055255C
    procedure sub_0055256C;//0055256C
    //procedure sub_00552574(?:?);//00552574
    constructor HelpIntfs.THelpViewerNode>.Create();//0055258C
    constructor sub_00552604(AComparer:IComparer<System.HelpIntfs.THelpViewerNode>);//00552604
    destructor HelpIntfs.THelpViewerNode>.Destroy();//005526B4
    procedure HelpIntfs.THelpViewerNode>.Error(Msg:string; Data:NativeInt);//00552700
    procedure HelpIntfs.THelpViewerNode>.Add(Value:THelpViewerNode);//00552738
    //procedure HelpIntfs.THelpViewerNode>.ToArray(?:?);//00552748
    function HelpIntfs.THelpViewerNode>.GetEnumerator:TList<System.HelpIntfs.THelpViewerNode>.TEnumerator;//0055275C
    //function sub_0055276C(?:?):?;//0055276C
    procedure sub_00552788;//00552788
    procedure sub_00552790;//00552790
    function HelpIntfs.THelpViewerNode>.TEnumerator.MoveNext:Boolean;//005527DC
    //function sub_00558168:?;//00558168
    procedure sub_005581A0(?:NativeInt);//005581A0
    function DialogHook(Wnd:Windows.HWND; Msg:Windows.UINT; WParam:Windows.WPARAM; LParam:Windows.LPARAM):UINT_PTR; stdcall;//00558248
    procedure CreateParams(var Params:TCreateParams);//005584A0
    //procedure sub_005584C4(?:?);//005584C4
    procedure CMRelease;//00558530
    //function sub_00558614:?;//00558614
    //function sub_00558618(?:?):?;//00558618
    procedure sub_005586C4;//005586C4
    procedure WMDestroy;//005586CC
    //procedure WMInitDialog(?:?);//005586E8
    procedure WMNCDestroy;//00558700
    //function sub_00558714(?:?; ?:?):?;//00558714
    procedure DoShow;//005587E0
    procedure sub_005587F4;//005587F4
    procedure sub_00558BD4(?:TFileDialogWrapper);//00558BD4
    procedure sub_00558DA0(?:TFileDialogWrapper);//00558DA0
    //function sub_00559050(?:TObject):?;//00559050
    //procedure sub_005591BC(?:?);//005591BC
    procedure CreateFileDialog;//005591E0
    function CreateFileDialog:TCustomFileDialog;//005592BC
    //function sub_005592CC(?:?; ?:?; ?:?; ?:?):?;//005592CC
    //function sub_00559410(?:TOpenDialog):?;//00559410
    //procedure sub_0055943C(?:?);//0055943C
    procedure sub_0055954C;//0055954C
    procedure DoOnDialogCreated;//00559578
    procedure DoOnTypeChange;//00559598
    procedure sub_005595B8;//005595B8
    procedure DefineProperties(Filer:Classes.TFiler);//00559614
    //function sub_00559668(?:?; ?:UnicodeString; ?:?):?;//00559668
    //procedure sub_005596BC(?:?; ?:?);//005596BC
    //procedure sub_005597E0(?:?; ?:?);//005597E0
    //function sub_005598AC(?:TOpenDialog):?;//005598AC
    //procedure sub_005598B4(?:?);//005598B4
    procedure sub_0055998C;//0055998C
    //procedure sub_00559AB0(?:?; ?:?);//00559AB0
    procedure sub_00559F78;//00559F78
    function FontDialogHook(Wnd:Windows.HWND; Msg:Windows.UINT; WParam:Windows.WPARAM; LParam:Windows.LPARAM):UINT_PTR; stdcall;//00559FB4
    //procedure sub_0055A08C(?:?);//0055A08C
    //procedure sub_0055A0C4(?:?);//0055A0C4
    //procedure sub_0055A3C0(?:TFontDialog; ?:?);//0055A3C0
    procedure GetPrinter(var DeviceMode:Windows.HGLOBAL; var DeviceNames:Windows.HGLOBAL);//0055A474
    procedure SetPrinter(DeviceMode:Windows.HGLOBAL; DeviceNames:Windows.HGLOBAL);//0055A59C
    function CopyData(Handle:Windows.THandle):THandle;//0055A620
    function AllocCoTaskMemStr(const S:UnicodeString):LPCWSTR;//0055A9E8
    function GetDisplayName:UnicodeString;//0055AB1C
    function GetDisplayName:UnicodeString;//0055AC64
    procedure Find;//0055B330
    procedure sub_0055B350;//0055B350
    procedure sub_0055B37C;//0055B37C
    procedure sub_0055B39C;//0055B39C
    //procedure sub_0055B3C8(?:?);//0055B3C8
    procedure DoFolderChange;//0055B3E8
    //procedure sub_0055B408(?:?);//0055B408
    procedure sub_0055B428;//0055B428
    //procedure sub_0055B494(?:?);//0055B494
    procedure sub_0055B95C;//0055B95C
    procedure sub_0055B99C;//0055B99C
    //procedure sub_0055BA00(?:?);//0055BA00
    //procedure sub_0055BC70(?:?);//0055BC70
    //function sub_0055BDE0(?:TCustomFileDialog):?;//0055BDE0
    //procedure sub_0055BDE4(?:?; ?:?);//0055BDE4
    //function sub_0055BEB8:?;//0055BEB8
    procedure sub_0055BF3C(?:TCustomFileDialog);//0055BF3C
    //procedure sub_0055BFAC(?:?; ?:?);//0055BFAC
    procedure sub_0055C050;//0055C050
    //procedure sub_0055C148(?:?; ?:?);//0055C148
    procedure sub_0055C1EC;//0055C1EC
    function CreateFileDialog:IFileDialog;//0055C228
    //function sub_0055C2CC:?;//0055C2CC
    procedure sub_0055C050;//0055C364
    function CreateFileDialog:IFileDialog;//0055C42C
    procedure sub_0055C8B8;//0055C8B8
    procedure sub_0055C8D4;//0055C8D4
    function GetButtonText:UnicodeString;//0055C8F4
    function GetDisplayName:UnicodeString;//0055C914
    //procedure GetButtonText(?:?);//0055CAF4
    procedure sub_0055CC20;//0055CC20
    procedure sub_0055CC3C;//0055CC3C
    //procedure sub_0055CF90(?:?; ?:?; ?:?; ?:?);//0055CF90
    //procedure sub_0055D12C(?:?; ?:?; ?:?; ?:?; ?:?);//0055D12C
    //procedure sub_0055D154(?:?);//0055D154
    //procedure sub_0055D478(?:?; ?:?);//0055D478
    procedure DoOnDialogDestroyed;//0055D4B0
    procedure sub_0055D4D0;//0055D4D0
    procedure sub_0055D4F0;//0055D4F0
    //procedure sub_0055D510(?:?);//0055D510
    procedure sub_0055D530;//0055D530
    //procedure sub_0055D594(?:?);//0055D594
    procedure sub_0055D5C4;//0055D5C4
    //procedure sub_0055D5E4(?:?);//0055D5E4
    //procedure sub_0055D618(?:?);//0055D618
    //procedure sub_0055D638(?:?);//0055D638
    //procedure sub_0055D738(?:TTaskMessageDialog; ?:?);//0055D738
    //procedure sub_0055D7F0(?:TTaskMessageDialog; ?:?);//0055D7F0
    //procedure sub_0055D82C(?:TTaskMessageDialog; ?:?);//0055D82C
    //procedure sub_0055D86C(?:TTaskMessageDialog; ?:?);//0055D86C
    //procedure sub_0055D8B0(?:?);//0055D8B0
    function GetAveCharSize(Canvas:Graphics.TCanvas):TPoint;//0055D9AC
    //function sub_0055E1DC(?:?; ?:?; ?:?; ?:?):?;//0055E1DC
    function CreateMessageDialog(const Msg:UnicodeString; DlgType:UITypes.TMsgDlgType; Buttons:UITypes.TMsgDlgButtons):TForm;//0055E7E4
    function MessageDlg(const Msg:UnicodeString; DlgType:UITypes.TMsgDlgType; Buttons:UITypes.TMsgDlgButtons; HelpCtx:LongInt):Integer;//0055E80C
    function MessageDlg(const Msg:UnicodeString; DlgType:UITypes.TMsgDlgType; Buttons:UITypes.TMsgDlgButtons; HelpCtx:LongInt; DefaultButton:UITypes.TMsgDlgBtn):Integer;//0055E82C
    //function sub_0055E854(?:?; ?:?; ?:?; ?:?; ?:?):?;//0055E854
    function MessageDlgPosHelp(const Msg:UnicodeString; DlgType:UITypes.TMsgDlgType; Buttons:UITypes.TMsgDlgButtons; HelpCtx:LongInt; X:Integer; Y:Integer; const HelpFileName:UnicodeString):Integer;//0055E8F0
    //procedure sub_0055E9CC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0055E9CC
    procedure ShowMessage(const Msg:UnicodeString);//0055EAB4
    procedure ShowMessagePos(const Msg:UnicodeString; X:Integer; Y:Integer);//0055EAC0
    //procedure sub_0055D478(?:?; ?:?);//0055ECD4
    procedure DoOnDialogDestroyed;//0055ECE8
    procedure sub_0055D530;//0055ED8C
    //function sub_0055EE90(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0055EE90
    function DoTaskMessageDlgPosHelp(const Instruction:UnicodeString; const Msg:UnicodeString; DlgType:UITypes.TMsgDlgType; Buttons:UITypes.TMsgDlgButtons; HelpCtx:LongInt; X:Integer; Y:Integer; const HelpFileName:UnicodeString):Integer;//0055F098
    //function sub_0055F360(?:TControl; ?:?):?;//0055F360
    function GetPromptCaption(const ACaption:UnicodeString):UnicodeString;//0055F5A4
    //function sub_0055F5E8(?:?):?;//0055F5E8
    function GetPasswordChar(const ACaption:UnicodeString):Char;//0055F6BC
    //function sub_0055F6E4(?:?):?;//0055F6E4
    //function sub_0055F7DC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0055F7DC
    procedure InitGlobals;//005604FC

implementation

//00552414
destructor TEnumerable<System.HelpIntfs.THelpViewerNode>.Destroy();
begin
{*
 00552414    push        ebx
 00552415    push        esi
 00552416    call        @BeforeDestruction
 0055241B    mov         ebx,edx
 0055241D    mov         esi,eax
 0055241F    mov         dl,0FC
 00552421    and         dl,bl
 00552423    mov         eax,esi
 00552425    call        TObject.Destroy
 0055242A    test        bl,bl
>0055242C    jle         00552435
 0055242E    mov         eax,esi
 00552430    call        @ClassDestroy
 00552435    pop         esi
 00552436    pop         ebx
 00552437    ret
*}
end;

//00552438
function TEnumerable<System.HelpIntfs.THelpViewerNode>.GetEnumerator:TEnumerator<System.HelpIntfs.THelpViewerNode>;
begin
{*
 00552438    mov         edx,dword ptr [eax]
 0055243A    call        dword ptr [edx]
 0055243C    ret
*}
end;

//00552440
{*procedure TEnumerable<System.HelpIntfs.THelpViewerNode>.ToArray(?:?);
begin
 00552440    push        ebp
 00552441    mov         ebp,esp
 00552443    add         esp,0FFFFFFF4
 00552446    push        ebx
 00552447    mov         dword ptr [ebp-4],edx
 0055244A    mov         ebx,eax
 0055244C    mov         dl,1
 0055244E    mov         eax,[00550260];TList<System.HelpIntfs.THelpViewerNode>
 00552453    call        TList<System.HelpIntfs.THelpViewerNode>.Create
 00552458    mov         dword ptr [ebp-8],eax
 0055245B    xor         eax,eax
 0055245D    push        ebp
 0055245E    push        5524E8
 00552463    push        dword ptr fs:[eax]
 00552466    mov         dword ptr fs:[eax],esp
 00552469    mov         eax,ebx
 0055246B    call        TEnumerable<System.HelpIntfs.THelpViewerNode>.GetEnumerator
 00552470    mov         dword ptr [ebp-0C],eax
 00552473    xor         eax,eax
 00552475    push        ebp
 00552476    push        5524C0
 0055247B    push        dword ptr fs:[eax]
 0055247E    mov         dword ptr fs:[eax],esp
>00552481    jmp         00552496
 00552483    mov         eax,dword ptr [ebp-0C]
 00552486    mov         edx,dword ptr [eax]
 00552488    call        dword ptr [edx]
 0055248A    mov         ebx,eax
 0055248C    mov         edx,ebx
 0055248E    mov         eax,dword ptr [ebp-8]
 00552491    call        TList<System.HelpIntfs.THelpViewerNode>.Add
 00552496    mov         eax,dword ptr [ebp-0C]
 00552499    call        TEnumerator<System.HelpIntfs.THelpViewerNode>.MoveNext
 0055249E    test        al,al
>005524A0    jne         00552483
 005524A2    xor         eax,eax
 005524A4    pop         edx
 005524A5    pop         ecx
 005524A6    pop         ecx
 005524A7    mov         dword ptr fs:[eax],edx
 005524AA    push        5524C7
 005524AF    cmp         dword ptr [ebp-0C],0
>005524B3    je          005524BF
 005524B5    mov         dl,1
 005524B7    mov         eax,dword ptr [ebp-0C]
 005524BA    mov         ecx,dword ptr [eax]
 005524BC    call        dword ptr [ecx-4]
 005524BF    ret
>005524C0    jmp         @HandleFinally
>005524C5    jmp         005524AF
 005524C7    mov         edx,dword ptr [ebp-4]
 005524CA    mov         eax,dword ptr [ebp-8]
 005524CD    call        TList<System.HelpIntfs.THelpViewerNode>.ToArray
 005524D2    xor         eax,eax
 005524D4    pop         edx
 005524D5    pop         ecx
 005524D6    pop         ecx
 005524D7    mov         dword ptr fs:[eax],edx
 005524DA    push        5524EF
 005524DF    mov         eax,dword ptr [ebp-8]
 005524E2    call        TObject.Free
 005524E7    ret
>005524E8    jmp         @HandleFinally
>005524ED    jmp         005524DF
 005524EF    pop         ebx
 005524F0    mov         esp,ebp
 005524F2    pop         ebp
 005524F3    ret
end;*}

//005524F4
function TEnumerator<System.HelpIntfs.THelpViewerNode>.MoveNext:Boolean;
begin
{*
 005524F4    mov         edx,dword ptr [eax]
 005524F6    call        dword ptr [edx+4]
 005524F9    ret
*}
end;

//00552544
procedure sub_00552544(?:TList<System.HelpIntfs.THelpViewerNode>);
begin
{*
 00552544    add         eax,8
 00552547    call        004357A0
 0055254C    ret
*}
end;

//00552550
{*procedure sub_00552550(?:?; ?:?);
begin
 00552550    push        ebx
 00552551    mov         edx,dword ptr [edx]
 00552553    mov         ebx,dword ptr [eax]
 00552555    call        dword ptr [ebx+8]
 00552558    pop         ebx
 00552559    ret
end;*}

//0055255C
{*procedure sub_0055255C(?:?; ?:?; ?:?);
begin
 0055255C    push        ebx
 0055255D    mov         edx,dword ptr [edx]
 0055255F    mov         ecx,dword ptr [ecx]
 00552561    mov         eax,dword ptr [eax+24]
 00552564    mov         ebx,dword ptr [eax]
 00552566    call        dword ptr [ebx+0C]
 00552569    pop         ebx
 0055256A    ret
end;*}

//0055256C
procedure sub_0055256C;
begin
{*
 0055256C    call        TList<System.HelpIntfs.THelpViewerNode>.GetEnumerator
 00552571    ret
*}
end;

//00552574
{*procedure sub_00552574(?:?);
begin
 00552574    push        ebx
 00552575    cmp         word ptr [eax+2A],0
>0055257A    je          00552589
 0055257C    push        ecx
 0055257D    mov         ebx,eax
 0055257F    mov         ecx,edx
 00552581    mov         edx,eax
 00552583    mov         eax,dword ptr [ebx+2C]
 00552586    call        dword ptr [ebx+28]
 00552589    pop         ebx
 0055258A    ret
end;*}

//0055258C
constructor TList<System.HelpIntfs.THelpViewerNode>.Create();
begin
{*
 0055258C    push        ebp
 0055258D    mov         ebp,esp
 0055258F    push        0
 00552591    push        ebx
 00552592    push        esi
 00552593    test        dl,dl
>00552595    je          0055259F
 00552597    add         esp,0FFFFFFF0
 0055259A    call        @ClassCreate
 0055259F    mov         ebx,edx
 005525A1    mov         esi,eax
 005525A3    xor         eax,eax
 005525A5    push        ebp
 005525A6    push        5525E0
 005525AB    push        dword ptr fs:[eax]
 005525AE    mov         dword ptr fs:[eax],esp
 005525B1    lea         edx,[ebp-4]
 005525B4    mov         eax,[005528E4];TComparer<System.HelpIntfs.THelpViewerNode>
 005525B9    call        TComparer<System.HelpIntfs.THelpViewerNode>.Default
 005525BE    mov         ecx,dword ptr [ebp-4]
 005525C1    xor         edx,edx
 005525C3    mov         eax,esi
 005525C5    call        00552604
 005525CA    xor         eax,eax
 005525CC    pop         edx
 005525CD    pop         ecx
 005525CE    pop         ecx
 005525CF    mov         dword ptr fs:[eax],edx
 005525D2    push        5525E7
 005525D7    lea         eax,[ebp-4]
 005525DA    call        @IntfClear
 005525DF    ret
>005525E0    jmp         @HandleFinally
>005525E5    jmp         005525D7
 005525E7    mov         eax,esi
 005525E9    test        bl,bl
>005525EB    je          005525FC
 005525ED    call        @AfterConstruction
 005525F2    pop         dword ptr fs:[0]
 005525F9    add         esp,0C
 005525FC    mov         eax,esi
 005525FE    pop         esi
 005525FF    pop         ebx
 00552600    pop         ecx
 00552601    pop         ebp
 00552602    ret
*}
end;

//00552604
constructor sub_00552604(AComparer:IComparer<System.HelpIntfs.THelpViewerNode>);
begin
{*
 00552604    push        ebp
 00552605    mov         ebp,esp
 00552607    push        0
 00552609    push        ebx
 0055260A    push        esi
 0055260B    push        edi
 0055260C    test        dl,dl
>0055260E    je          00552618
 00552610    add         esp,0FFFFFFF0
 00552613    call        @ClassCreate
 00552618    mov         esi,ecx
 0055261A    mov         ebx,edx
 0055261C    mov         edi,eax
 0055261E    xor         eax,eax
 00552620    push        ebp
 00552621    push        55268F
 00552626    push        dword ptr fs:[eax]
 00552629    mov         dword ptr fs:[eax],esp
 0055262C    xor         edx,edx
 0055262E    mov         eax,edi
 00552630    call        TObject.Create
 00552635    mov         dword ptr [edi+14],edi;TList<System.HelpIntfs.THelpViewerNode>.FOnNotify:TCollectionNoti...
 00552638    mov         dword ptr [edi+10],552550;TList<System.HelpIntfs.THelpViewerNode>.FOnNotify:TCollectionN...
 0055263F    mov         dword ptr [edi+1C],edi
 00552642    mov         dword ptr [edi+18],55255C;sub_0055255C
 00552649    mov         eax,[0054FE3C];TList<System.HelpIntfs.THelpViewerNode>.arrayofT
 0055264E    mov         dword ptr [edi+0C],eax;TList<System.HelpIntfs.THelpViewerNode>.FComparer:IComparer<Syste...
 00552651    lea         eax,[edi+24]
 00552654    mov         edx,esi
 00552656    call        @IntfCopy
 0055265B    cmp         dword ptr [edi+24],0
>0055265F    jne         00552679
 00552661    lea         edx,[ebp-4]
 00552664    mov         eax,[005528E4];TComparer<System.HelpIntfs.THelpViewerNode>
 00552669    call        TComparer<System.HelpIntfs.THelpViewerNode>.Default
 0055266E    mov         edx,dword ptr [ebp-4]
 00552671    lea         eax,[edi+24]
 00552674    call        @IntfCopy
 00552679    xor         eax,eax
 0055267B    pop         edx
 0055267C    pop         ecx
 0055267D    pop         ecx
 0055267E    mov         dword ptr fs:[eax],edx
 00552681    push        552696
 00552686    lea         eax,[ebp-4]
 00552689    call        @IntfClear
 0055268E    ret
>0055268F    jmp         @HandleFinally
>00552694    jmp         00552686
 00552696    mov         eax,edi
 00552698    test        bl,bl
>0055269A    je          005526AB
 0055269C    call        @AfterConstruction
 005526A1    pop         dword ptr fs:[0]
 005526A8    add         esp,0C
 005526AB    mov         eax,edi
 005526AD    pop         edi
 005526AE    pop         esi
 005526AF    pop         ebx
 005526B0    pop         ecx
 005526B1    pop         ebp
 005526B2    ret
*}
end;

//005526B4
destructor TList<System.HelpIntfs.THelpViewerNode>.Destroy();
begin
{*
 005526B4    push        ebx
 005526B5    push        esi
 005526B6    call        @BeforeDestruction
 005526BB    mov         ebx,edx
 005526BD    mov         esi,eax
 005526BF    cmp         dword ptr [esi+8],0;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
>005526C3    jle         005526CE
 005526C5    xor         edx,edx
 005526C7    mov         eax,esi
 005526C9    call        00552544
 005526CE    push        0
 005526D0    lea         eax,[esi+20]
 005526D3    mov         ecx,1
 005526D8    mov         edx,dword ptr ds:[54FE3C];TList<System.HelpIntfs.THelpViewerNode>.arrayofT
 005526DE    call        @DynArraySetLength
 005526E3    add         esp,4
 005526E6    mov         dl,0FC
 005526E8    and         dl,bl
 005526EA    mov         eax,esi
 005526EC    call        TEnumerable<System.HelpIntfs.THelpViewerNode>.Destroy
 005526F1    test        bl,bl
>005526F3    jle         005526FC
 005526F5    mov         eax,esi
 005526F7    call        @ClassDestroy
 005526FC    pop         esi
 005526FD    pop         ebx
 005526FE    ret
*}
end;

//00552700
procedure TList<System.HelpIntfs.THelpViewerNode>.Error(Msg:string; Data:NativeInt);
begin
{*
 00552700    push        ebp
 00552701    mov         ebp,esp
 00552703    add         esp,0FFFFFFF0
 00552706    mov         dword ptr [ebp-8],ecx
 00552709    mov         dword ptr [ebp-4],edx
 0055270C    push        dword ptr [ebp+4]
 0055270F    mov         eax,dword ptr [ebp-8]
 00552712    mov         dword ptr [ebp-10],eax
 00552715    mov         byte ptr [ebp-0C],0
 00552719    lea         eax,[ebp-10]
 0055271C    push        eax
 0055271D    push        0
 0055271F    mov         ecx,dword ptr [ebp-4]
 00552722    mov         dl,1
 00552724    mov         eax,[004180BC];EListError
 00552729    call        Exception.CreateFmt
>0055272E    jmp         @RaiseExcept
 00552733    mov         esp,ebp
 00552735    pop         ebp
 00552736    ret
*}
end;

//00552738
procedure TList<System.HelpIntfs.THelpViewerNode>.Add(Value:THelpViewerNode);
begin
{*
 00552738    push        ecx
 00552739    mov         dword ptr [esp],edx
 0055273C    mov         edx,esp
 0055273E    add         eax,8
 00552741    call        0043489C
 00552746    pop         edx
 00552747    ret
*}
end;

//00552748
{*procedure TList<System.HelpIntfs.THelpViewerNode>.ToArray(?:?);
begin
 00552748    push        ecx
 00552749    mov         dword ptr [esp],edx
 0055274C    mov         edx,dword ptr [esp]
 0055274F    add         eax,8
 00552752    call        00435980
 00552757    pop         edx
 00552758    ret
end;*}

//0055275C
function TList<System.HelpIntfs.THelpViewerNode>.GetEnumerator:TList<System.HelpIntfs.THelpViewerNode>.TEnumerator;
begin
{*
 0055275C    mov         ecx,eax
 0055275E    mov         dl,1
 00552760    mov         eax,[0055009C];TList<System.HelpIntfs.THelpViewerNode>.TEnumerator
 00552765    call        TFavoriteLinkItemsEnumerator.Create
 0055276A    ret
*}
end;

//0055276C
{*function sub_0055276C(?:?):?;
begin
 0055276C    push        ebx
 0055276D    push        esi
 0055276E    mov         ebx,dword ptr [eax+4]
 00552771    mov         esi,dword ptr [eax+8]
 00552774    lea         eax,[ebx+8]
 00552777    mov         edx,esi
 00552779    call        00434534
 0055277E    mov         eax,dword ptr [ebx+20]
 00552781    mov         eax,dword ptr [eax+esi*4]
 00552784    pop         esi
 00552785    pop         ebx
 00552786    ret
end;*}

//00552788
procedure sub_00552788;
begin
{*
 00552788    call        0055276C
 0055278D    ret
*}
end;

//00552790
procedure sub_00552790;
begin
{*
 00552790    call        TList<System.HelpIntfs.THelpViewerNode>.TEnumerator.MoveNext
 00552795    ret
*}
end;

//00552798
constructor TFavoriteLinkItemsEnumerator.Create;
begin
{*
 00552798    push        ebx
 00552799    push        esi
 0055279A    push        edi
 0055279B    test        dl,dl
>0055279D    je          005527A7
 0055279F    add         esp,0FFFFFFF0
 005527A2    call        @ClassCreate
 005527A7    mov         esi,ecx
 005527A9    mov         ebx,edx
 005527AB    mov         edi,eax
 005527AD    xor         edx,edx
 005527AF    mov         eax,edi
 005527B1    call        TObject.Create
 005527B6    mov         dword ptr [edi+4],esi
 005527B9    mov         dword ptr [edi+8],0FFFFFFFF
 005527C0    mov         eax,edi
 005527C2    test        bl,bl
>005527C4    je          005527D5
 005527C6    call        @AfterConstruction
 005527CB    pop         dword ptr fs:[0]
 005527D2    add         esp,0C
 005527D5    mov         eax,edi
 005527D7    pop         edi
 005527D8    pop         esi
 005527D9    pop         ebx
 005527DA    ret
*}
end;

//005527DC
function TList<System.HelpIntfs.THelpViewerNode>.TEnumerator.MoveNext:Boolean;
begin
{*
 005527DC    mov         edx,dword ptr [eax+4]
 005527DF    mov         edx,dword ptr [edx+8]
 005527E2    cmp         edx,dword ptr [eax+8]
>005527E5    jg          005527EA
 005527E7    xor         eax,eax
 005527E9    ret
 005527EA    inc         dword ptr [eax+8]
 005527ED    mov         edx,dword ptr [eax+4]
 005527F0    mov         edx,dword ptr [edx+8]
 005527F3    cmp         edx,dword ptr [eax+8]
 005527F6    setg        al
 005527F9    ret
*}
end;

//005527FC
function TComparer<System.HelpIntfs.THelpViewerNode>.Default:IComparer<System.HelpIntfs.THelpViewerNode>;
begin
{*
 005527FC    push        ebx
 005527FD    mov         ebx,edx
 005527FF    mov         ecx,4
 00552804    mov         edx,dword ptr ds:[54F148];THelpViewerNode
 0055280A    xor         eax,eax
 0055280C    call        _LookupVtableInfo
 00552811    mov         edx,eax
 00552813    mov         eax,ebx
 00552815    call        @IntfCopy
 0055281A    pop         ebx
 0055281B    ret
*}
end;

//00558168
{*function sub_00558168:?;
begin
 00558168    mov         eax,[007C4A18];^Application:TApplication
 0055816D    mov         eax,dword ptr [eax]
 0055816F    cmp         byte ptr [eax+0EB],0;TApplication.FMainFormOnTaskBar:Boolean
>00558176    je          00558192
 00558178    mov         eax,[007C4A18];^Application:TApplication
 0055817D    mov         eax,dword ptr [eax]
 0055817F    cmp         dword ptr [eax+58],0;TApplication.FMainForm:TForm
>00558183    je          00558192
 00558185    mov         eax,[007C4A18];^Application:TApplication
 0055818A    mov         eax,dword ptr [eax]
 0055818C    call        005CCE5C
 00558191    ret
 00558192    mov         eax,[007C4A18];^Application:TApplication
 00558197    mov         eax,dword ptr [eax]
 00558199    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 0055819F    ret
end;*}

//005581A0
procedure sub_005581A0(?:NativeInt);
begin
{*
 005581A0    push        ebx
 005581A1    push        esi
 005581A2    push        edi
 005581A3    add         esp,0FFFFFFF0
 005581A6    mov         esi,eax
 005581A8    push        esp
 005581A9    push        esi
 005581AA    call        user32.GetWindowRect
 005581AF    mov         eax,[007C4A18];^Application:TApplication
 005581B4    mov         eax,dword ptr [eax]
 005581B6    mov         edx,dword ptr [eax+58];TApplication.FMainForm:TForm
 005581B9    test        edx,edx
>005581BB    je          005581DF
 005581BD    mov         eax,[007C4E78];^Screen:TScreen
 005581C2    mov         eax,dword ptr [eax]
 005581C4    mov         eax,dword ptr [eax+74];TScreen.FActiveForm:TForm
 005581C7    test        eax,eax
>005581C9    je          005581D4
 005581CB    call        005C2E30
 005581D0    mov         ebx,eax
>005581D2    jmp         005581ED
 005581D4    mov         eax,edx
 005581D6    call        005C2E30
 005581DB    mov         ebx,eax
>005581DD    jmp         005581ED
 005581DF    mov         eax,[007C4E78];^Screen:TScreen
 005581E4    mov         eax,dword ptr [eax]
 005581E6    call        TScreen.GetPrimaryMonitor
 005581EB    mov         ebx,eax
 005581ED    push        15
 005581EF    push        0
 005581F1    push        0
 005581F3    mov         eax,ebx
 005581F5    call        005C7BC4
 005581FA    mov         edi,eax
 005581FC    mov         eax,ebx
 005581FE    call        TMonitor.GetHeight
 00558203    sub         eax,dword ptr [esp+18]
 00558207    add         eax,dword ptr [esp+10]
 0055820B    mov         ecx,3
 00558210    cdq
 00558211    idiv        eax,ecx
 00558213    add         edi,eax
 00558215    push        edi
 00558216    mov         eax,ebx
 00558218    call        005C7B90
 0055821D    mov         edi,eax
 0055821F    mov         eax,ebx
 00558221    call        TMonitor.GetWidth
 00558226    sub         eax,dword ptr [esp+18]
 0055822A    add         eax,dword ptr [esp+10]
 0055822E    sar         eax,1
>00558230    jns         00558235
 00558232    adc         eax,0
 00558235    add         edi,eax
 00558237    push        edi
 00558238    push        0
 0055823A    push        esi
 0055823B    call        user32.SetWindowPos
 00558240    add         esp,10
 00558243    pop         edi
 00558244    pop         esi
 00558245    pop         ebx
 00558246    ret
*}
end;

//00558248
function DialogHook(Wnd:Windows.HWND; Msg:Windows.UINT; WParam:Windows.WPARAM; LParam:Windows.LPARAM):UINT_PTR; stdcall;
begin
{*
 00558248    push        ebp
 00558249    mov         ebp,esp
 0055824B    push        ebx
 0055824C    push        esi
 0055824D    push        edi
 0055824E    mov         esi,dword ptr [ebp+0C]
 00558251    mov         ebx,dword ptr [ebp+8]
 00558254    xor         edi,edi
 00558256    cmp         esi,110
>0055825C    jne         005582A6
 0055825E    mov         eax,ebx
 00558260    call        005581A0
 00558265    mov         eax,[007A16D8];gvar_007A16D8:TCommonDialog
 0055826A    mov         dword ptr [eax+48],ebx
 0055826D    mov         eax,[007A16D8];gvar_007A16D8:TCommonDialog
 00558272    mov         eax,dword ptr [eax+6C]
 00558275    push        eax
 00558276    push        0FC
 00558278    push        ebx
 00558279    call        user32.SetWindowLongW
 0055827E    mov         edx,dword ptr ds:[7A16D8];gvar_007A16D8:TCommonDialog
 00558284    mov         dword ptr [edx+68],eax
 00558287    mov         eax,dword ptr [ebp+14]
 0055828A    push        eax
 0055828B    mov         eax,dword ptr [ebp+10]
 0055828E    push        eax
 0055828F    push        esi
 00558290    push        ebx
 00558291    mov         eax,[007A16D8];gvar_007A16D8:TCommonDialog
 00558296    mov         eax,dword ptr [eax+6C]
 00558299    push        eax
 0055829A    call        user32.CallWindowProcW
 0055829F    xor         eax,eax
 005582A1    mov         [007A16D8],eax;gvar_007A16D8:TCommonDialog
 005582A6    mov         eax,edi
 005582A8    pop         edi
 005582A9    pop         esi
 005582AA    pop         ebx
 005582AB    pop         ebp
 005582AC    ret         10
*}
end;

//005584A0
procedure TRedirectorWindow.CreateParams(var Params:TCreateParams);
begin
{*
 005584A0    push        ebx
 005584A1    push        esi
 005584A2    mov         esi,edx
 005584A4    mov         ebx,eax
 005584A6    mov         edx,esi
 005584A8    mov         eax,ebx
 005584AA    call        TWinControl.CreateParams
 005584AF    mov         dword ptr [esi+4],90000000;TCreateParams.Style:DWORD
 005584B6    mov         eax,dword ptr [ebx+294];TRedirectorWindow.FFormHandle:NativeUInt
 005584BC    mov         dword ptr [esi+1C],eax;TCreateParams.WndParent:HWND
 005584BF    pop         esi
 005584C0    pop         ebx
 005584C1    ret
*}
end;

//005584C4
{*procedure sub_005584C4(?:?);
begin
 005584C4    push        ebx
 005584C5    push        esi
 005584C6    mov         ebx,edx
 005584C8    mov         esi,eax
 005584CA    mov         edx,ebx
 005584CC    mov         eax,esi
 005584CE    call        004ECAFC
 005584D3    cmp         dword ptr [ebx+0C],0
>005584D7    jne         005584FD
 005584D9    cmp         dword ptr [ebx],0B021
>005584DF    je          005584FD
 005584E1    cmp         dword ptr [esi+290],0;TRedirectorWindow.FCommonDialog:TCommonDialog
>005584E8    je          005584FD
 005584EA    mov         edx,ebx
 005584EC    mov         eax,dword ptr [esi+290];TRedirectorWindow.FCommonDialog:TCommonDialog
 005584F2    mov         ecx,dword ptr [eax]
 005584F4    call        dword ptr [ecx+4C];TCommonDialog.sub_00558618
 005584F7    and         eax,7F
 005584FA    mov         dword ptr [ebx+0C],eax
 005584FD    cmp         dword ptr [ebx+0C],0
>00558501    jne         0055852A
 00558503    cmp         dword ptr [ebx],7
>00558506    jne         0055852A
 00558508    cmp         dword ptr [esi+294],0;TRedirectorWindow.FFormHandle:NativeUInt
>0055850F    je          0055852A
 00558511    mov         eax,dword ptr [ebx+8]
 00558514    push        eax
 00558515    mov         eax,dword ptr [ebx+4]
 00558518    push        eax
 00558519    push        7
 0055851B    mov         eax,dword ptr [esi+294];TRedirectorWindow.FFormHandle:NativeUInt
 00558521    push        eax
 00558522    call        user32.SendMessageW
 00558527    mov         dword ptr [ebx+0C],eax
 0055852A    pop         esi
 0055852B    pop         ebx
 0055852C    ret
end;*}

//00558530
procedure TRedirectorWindow.CMRelease;
begin
{*
 00558530    call        TObject.Free
 00558535    ret
*}
end;

//00558538
constructor TCommonDialog.Create(AOwner:TComponent);
begin
{*
 00558538    push        ebx
 00558539    push        esi
 0055853A    test        dl,dl
>0055853C    je          00558546
 0055853E    add         esp,0FFFFFFF0
 00558541    call        @ClassCreate
 00558546    mov         ebx,edx
 00558548    mov         esi,eax
 0055854A    xor         edx,edx
 0055854C    mov         eax,esi
 0055854E    call        TComponent.Create
 00558553    mov         byte ptr [esi+40],1;TCommonDialog.FCtl3D:Boolean
 00558557    push        esi
 00558558    push        558678
 0055855D    call        MakeObjectInstance
 00558562    mov         dword ptr [esi+6C],eax;TCommonDialog.FObjectInstance:Pointer
 00558565    mov         eax,esi
 00558567    test        bl,bl
>00558569    je          0055857A
 0055856B    call        @AfterConstruction
 00558570    pop         dword ptr fs:[0]
 00558577    add         esp,0C
 0055857A    mov         eax,esi
 0055857C    pop         esi
 0055857D    pop         ebx
 0055857E    ret
*}
end;

//00558580
destructor TCommonDialog.Destroy();
begin
{*
 00558580    push        ebx
 00558581    push        esi
 00558582    push        ecx
 00558583    call        @BeforeDestruction
 00558588    mov         ebx,edx
 0055858A    mov         esi,eax
 0055858C    mov         eax,dword ptr [esi+6C]
 0055858F    test        eax,eax
>00558591    je          00558598
 00558593    call        FreeObjectInstance
 00558598    mov         eax,dword ptr [esi+4C]
 0055859B    test        eax,eax
>0055859D    je          005585BE
 0055859F    xor         edx,edx
 005585A1    mov         dword ptr [eax+290],edx
 005585A7    lea         eax,[esi+4C]
 005585AA    mov         dword ptr [esp],eax
 005585AD    mov         eax,dword ptr [esp]
 005585B0    mov         eax,dword ptr [eax]
 005585B2    mov         edx,dword ptr [esp]
 005585B5    xor         ecx,ecx
 005585B7    mov         dword ptr [edx],ecx
 005585B9    call        TObject.Free
 005585BE    mov         dl,0FC
 005585C0    and         dl,bl
 005585C2    mov         eax,esi
 005585C4    call        TComponent.Destroy
 005585C9    test        bl,bl
>005585CB    jle         005585D4
 005585CD    mov         eax,esi
 005585CF    call        @ClassDestroy
 005585D4    pop         edx
 005585D5    pop         esi
 005585D6    pop         ebx
 005585D7    ret
*}
end;

//005585D8
procedure TCommonDialog.Execute;
begin
{*
 005585D8    push        ebx
 005585D9    mov         ebx,eax
 005585DB    mov         eax,[007C4A18];^Application:TApplication
 005585E0    mov         eax,dword ptr [eax]
 005585E2    cmp         byte ptr [eax+0E8],0;TApplication.FModalPopupMode:TPopupMode
>005585E9    je          00558602
 005585EB    mov         eax,[007C4A18];^Application:TApplication
 005585F0    mov         eax,dword ptr [eax]
 005585F2    call        005CCE10
 005585F7    test        eax,eax
>005585F9    jne         00558607
 005585FB    call        00558168
>00558600    jmp         00558607
 00558602    call        00558168
 00558607    mov         edx,eax
 00558609    mov         eax,ebx
 0055860B    mov         ecx,dword ptr [eax]
 0055860D    call        dword ptr [ecx+58];TCommonDialog.Execute
 00558610    pop         ebx
 00558611    ret
*}
end;

//00558614
{*function sub_00558614:?;
begin
 00558614    mov         eax,dword ptr [eax+48];TCommonDialog.FHandle:HWND
 00558617    ret
end;*}

//00558618
{*function sub_00558618(?:?):?;
begin
 00558618    xor         ecx,ecx
 0055861A    mov         edx,dword ptr [edx]
 0055861C    cmp         edx,dword ptr ds:[7CA6E4];gvar_007CA6E4
>00558622    jne         0055863D
 00558624    cmp         dword ptr [eax+44],0;TCommonDialog.FHelpContext:THelpContext
>00558628    je          0055863D
 0055862A    mov         edx,dword ptr ds:[7C4A18];^Application:TApplication
 00558630    mov         edx,dword ptr [edx]
 00558632    mov         eax,dword ptr [eax+44];TCommonDialog.FHelpContext:THelpContext
 00558635    xchg        eax,edx
 00558636    call        TApplication.HelpContext
 0055863B    mov         cl,1
 0055863D    mov         eax,ecx
 0055863F    ret
end;*}

//00558640
{*procedure TCommonDialog.DefaultHandler(var Message:?);
begin
 00558640    push        ebx
 00558641    push        esi
 00558642    push        edi
 00558643    mov         esi,edx
 00558645    mov         ebx,eax
 00558647    mov         edi,dword ptr [ebx+48]
 0055864A    test        edi,edi
>0055864C    je          00558668
 0055864E    mov         eax,dword ptr [esi+8]
 00558651    push        eax
 00558652    mov         eax,dword ptr [esi+4]
 00558655    push        eax
 00558656    mov         eax,dword ptr [esi]
 00558658    push        eax
 00558659    push        edi
 0055865A    mov         eax,dword ptr [ebx+68]
 0055865D    push        eax
 0055865E    call        user32.CallWindowProcW
 00558663    mov         dword ptr [esi+0C],eax
>00558666    jmp         00558671
 00558668    mov         edx,esi
 0055866A    mov         eax,ebx
 0055866C    call        TObject.DefaultHandler
 00558671    pop         edi
 00558672    pop         esi
 00558673    pop         ebx
 00558674    ret
end;*}

//005586C4
procedure sub_005586C4;
begin
{*
 005586C4    mov         ecx,dword ptr [eax]
 005586C6    call        dword ptr [ecx-14];TObject.Dispatch
 005586C9    ret
*}
end;

//005586CC
procedure TCommonDialog.WMDestroy;
begin
{*
 005586CC    push        ebx
 005586CD    push        esi
 005586CE    mov         ebx,eax
 005586D0    mov         eax,ebx
 005586D2    mov         ecx,dword ptr [eax]
 005586D4    call        dword ptr [ecx-10];TCommonDialog.DefaultHandler
 005586D7    mov         eax,ebx
 005586D9    mov         si,0FFEF
 005586DD    call        @CallDynaInst;TCommonDialog.DoShow
 005586E2    pop         esi
 005586E3    pop         ebx
 005586E4    ret
*}
end;

//005586E8
{*procedure TCommonDialog.WMInitDialog(?:?);
begin
 005586E8    push        ebx
 005586E9    push        esi
 005586EA    mov         ebx,edx
 005586EC    mov         si,0FFEE
 005586F0    call        @CallDynaInst;TCommonDialog.sub_005587F4
 005586F5    xor         eax,eax
 005586F7    mov         dword ptr [ebx+0C],eax
 005586FA    pop         esi
 005586FB    pop         ebx
 005586FC    ret
end;*}

//00558700
procedure TCommonDialog.WMNCDestroy;
begin
{*
 00558700    push        ebx
 00558701    mov         ebx,eax
 00558703    mov         eax,ebx
 00558705    mov         ecx,dword ptr [eax]
 00558707    call        dword ptr [ecx-10];TCommonDialog.DefaultHandler
 0055870A    xor         eax,eax
 0055870C    mov         dword ptr [ebx+48],eax;TCommonDialog.FHandle:HWND
 0055870F    pop         ebx
 00558710    ret
*}
end;

//00558714
{*function sub_00558714(?:?; ?:?):?;
begin
 00558714    push        ebp
 00558715    mov         ebp,esp
 00558717    add         esp,0FFFFFFE4
 0055871A    push        ebx
 0055871B    push        esi
 0055871C    mov         ebx,ecx
 0055871E    mov         esi,edx
 00558720    mov         dword ptr [ebp-8],eax
 00558723    mov         eax,[007C4A18];^Application:TApplication
 00558728    mov         eax,dword ptr [eax]
 0055872A    call        005CCE10
 0055872F    mov         dword ptr [ebp-10],eax
 00558732    mov         eax,dword ptr [ebx+4]
 00558735    call        DisableTaskWindows
 0055873A    mov         dword ptr [ebp-18],eax
 0055873D    call        005BE9C0
 00558742    mov         dword ptr [ebp-14],eax
 00558745    xor         edx,edx
 00558747    push        ebp
 00558748    push        5587CD
 0055874D    push        dword ptr fs:[edx]
 00558750    mov         dword ptr fs:[edx],esp
 00558753    fnstcw      word ptr [ebp-2]
 00558756    xor         eax,eax
 00558758    push        ebp
 00558759    push        558785
 0055875E    push        dword ptr fs:[eax]
 00558761    mov         dword ptr fs:[eax],esp
 00558764    mov         eax,dword ptr [ebp-8]
 00558767    mov         [007A16D8],eax;gvar_007A16D8:TCommonDialog
 0055876C    push        ebx
 0055876D    call        esi
 0055876F    mov         dword ptr [ebp-0C],eax
 00558772    xor         eax,eax
 00558774    pop         edx
 00558775    pop         ecx
 00558776    pop         ecx
 00558777    mov         dword ptr fs:[eax],edx
 0055877A    push        55878C
 0055877F    fnclex
 00558781    fldcw       word ptr [ebp-2]
 00558784    ret
>00558785    jmp         @HandleFinally
>0055878A    jmp         0055877F
 0055878C    xor         eax,eax
 0055878E    pop         edx
 0055878F    pop         ecx
 00558790    pop         ecx
 00558791    mov         dword ptr fs:[eax],edx
 00558794    push        5587D4
 00558799    mov         eax,dword ptr [ebp-18]
 0055879C    call        EnableTaskWindows
 005587A1    mov         eax,dword ptr [ebp-10]
 005587A4    push        eax
 005587A5    call        user32.SetActiveWindow
 005587AA    mov         eax,dword ptr [ebp-14]
 005587AD    call        005BE9C8
 005587B2    mov         eax,dword ptr [ebp-8]
 005587B5    add         eax,4C;TCommonDialog.FRedirector:TWinControl
 005587B8    mov         dword ptr [ebp-1C],eax
 005587BB    mov         eax,dword ptr [ebp-1C]
 005587BE    mov         eax,dword ptr [eax]
 005587C0    mov         edx,dword ptr [ebp-1C]
 005587C3    xor         ecx,ecx
 005587C5    mov         dword ptr [edx],ecx
 005587C7    call        TObject.Free
 005587CC    ret
>005587CD    jmp         @HandleFinally
>005587D2    jmp         00558799
 005587D4    mov         eax,dword ptr [ebp-0C]
 005587D7    pop         esi
 005587D8    pop         ebx
 005587D9    mov         esp,ebp
 005587DB    pop         ebp
 005587DC    ret
end;*}

//005587E0
procedure TCommonDialog.DoShow;
begin
{*
 005587E0    push        ebx
 005587E1    cmp         word ptr [eax+5A],0
>005587E6    je          005587F2
 005587E8    mov         ebx,eax
 005587EA    mov         edx,eax
 005587EC    mov         eax,dword ptr [ebx+5C]
 005587EF    call        dword ptr [ebx+58]
 005587F2    pop         ebx
 005587F3    ret
*}
end;

//005587F4
procedure TCommonDialog.sub_005587F4;
begin
{*
 005587F4    push        ebx
 005587F5    cmp         word ptr [eax+62],0;TCommonDialog.?f62:word
>005587FA    je          00558806
 005587FC    mov         ebx,eax
 005587FE    mov         edx,eax
 00558800    mov         eax,dword ptr [ebx+64];TCommonDialog.FObjectInstance:Pointer
 00558803    call        dword ptr [ebx+60];TCommonDialog.FOnShow
 00558806    pop         ebx
 00558807    ret
*}
end;

//00558B60
constructor TFileDialogWrapper.Create;
begin
{*
 00558B60    push        ebx
 00558B61    push        esi
 00558B62    push        edi
 00558B63    test        dl,dl
>00558B65    je          00558B6F
 00558B67    add         esp,0FFFFFFF0
 00558B6A    call        @ClassCreate
 00558B6F    mov         esi,ecx
 00558B71    mov         ebx,edx
 00558B73    mov         edi,eax
 00558B75    xor         edx,edx
 00558B77    mov         eax,edi
 00558B79    call        TObject.Create
 00558B7E    mov         dword ptr [edi+8],esi
 00558B81    mov         eax,edi
 00558B83    mov         edx,dword ptr [eax]
 00558B85    call        dword ptr [edx]
 00558B87    mov         dword ptr [edi+4],eax
 00558B8A    mov         eax,edi
 00558B8C    test        bl,bl
>00558B8E    je          00558B9F
 00558B90    call        @AfterConstruction
 00558B95    pop         dword ptr fs:[0]
 00558B9C    add         esp,0C
 00558B9F    mov         eax,edi
 00558BA1    pop         edi
 00558BA2    pop         esi
 00558BA3    pop         ebx
 00558BA4    ret
*}
end;

//00558BA8
destructor TFileDialogWrapper.Destroy();
begin
{*
 00558BA8    push        ebx
 00558BA9    push        esi
 00558BAA    call        @BeforeDestruction
 00558BAF    mov         ebx,edx
 00558BB1    mov         esi,eax
 00558BB3    mov         eax,dword ptr [esi+4]
 00558BB6    call        TObject.Free
 00558BBB    mov         dl,0FC
 00558BBD    and         dl,bl
 00558BBF    mov         eax,esi
 00558BC1    call        TObject.Destroy
 00558BC6    test        bl,bl
>00558BC8    jle         00558BD1
 00558BCA    mov         eax,esi
 00558BCC    call        @ClassDestroy
 00558BD1    pop         esi
 00558BD2    pop         ebx
 00558BD3    ret
*}
end;

//00558BD4
procedure sub_00558BD4(?:TFileDialogWrapper);
begin
{*
 00558BD4    push        ebp
 00558BD5    mov         ebp,esp
 00558BD7    add         esp,0FFFFFFDC
 00558BDA    push        ebx
 00558BDB    push        esi
 00558BDC    push        edi
 00558BDD    xor         edx,edx
 00558BDF    mov         dword ptr [ebp-24],edx
 00558BE2    mov         dword ptr [ebp-20],edx
 00558BE5    mov         dword ptr [ebp-4],edx
 00558BE8    mov         dword ptr [ebp-8],eax
 00558BEB    xor         eax,eax
 00558BED    push        ebp
 00558BEE    push        558D81
 00558BF3    push        dword ptr fs:[eax]
 00558BF6    mov         dword ptr fs:[eax],esp
 00558BF9    lea         eax,[ebp-4]
 00558BFC    mov         edx,dword ptr [ebp-8]
 00558BFF    mov         edx,dword ptr [edx+8]
 00558C02    mov         edx,dword ptr [edx+80]
 00558C08    call        @UStrLAsg
 00558C0D    mov         ebx,1
 00558C12    mov         edx,dword ptr [ebp-4]
 00558C15    mov         eax,558D9C;'|'
 00558C1A    call        AnsiPos
 00558C1F    mov         esi,eax
 00558C21    test        esi,esi
>00558C23    je          00558D5E
 00558C29    mov         eax,dword ptr [ebp-8]
 00558C2C    mov         eax,dword ptr [eax+4]
 00558C2F    mov         eax,dword ptr [eax+64]
 00558C32    call        TFileTypeItems.Add
 00558C37    mov         edi,eax
 00558C39    lea         eax,[edi+0C];TFileTypeItem.FDisplayName:string
 00558C3C    push        eax
 00558C3D    mov         ecx,esi
 00558C3F    sub         ecx,ebx
 00558C41    mov         edx,ebx
 00558C43    mov         eax,dword ptr [ebp-4]
 00558C46    call        @UStrCopy
 00558C4B    mov         eax,[007C4EF4];^gvar_007C7CB8:Cardinal
 00558C50    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>00558C54    jne         00558C6E
 00558C56    lea         ecx,[esi+1]
 00558C59    mov         edx,dword ptr [ebp-4]
 00558C5C    mov         eax,558D9C;'|'
 00558C61    call        Pos
 00558C66    mov         dword ptr [ebp-0C],eax
 00558C69    mov         ebx,dword ptr [ebp-0C]
>00558C6C    jmp         00558C9B
 00558C6E    lea         eax,[ebp-20]
 00558C71    push        eax
 00558C72    lea         edx,[esi+1]
 00558C75    mov         ecx,7FFFFFFF
 00558C7A    mov         eax,dword ptr [ebp-4]
 00558C7D    call        @UStrCopy
 00558C82    mov         edx,dword ptr [ebp-20]
 00558C85    mov         eax,558D9C;'|'
 00558C8A    call        AnsiPos
 00558C8F    mov         ebx,eax
 00558C91    test        ebx,ebx
>00558C93    je          00558C9B
 00558C95    lea         eax,[esi+1]
 00558C98    add         ebx,eax
 00558C9A    dec         ebx
 00558C9B    test        ebx,ebx
>00558C9D    jne         00558CBA
 00558C9F    mov         eax,dword ptr [ebp-4]
 00558CA2    mov         dword ptr [ebp-10],eax
 00558CA5    cmp         dword ptr [ebp-10],0
>00558CA9    je          00558CB6
 00558CAB    mov         eax,dword ptr [ebp-10]
 00558CAE    sub         eax,4
 00558CB1    mov         eax,dword ptr [eax]
 00558CB3    mov         dword ptr [ebp-10],eax
 00558CB6    mov         ebx,dword ptr [ebp-10]
 00558CB9    inc         ebx
 00558CBA    lea         eax,[edi+14];TFileTypeItem.FFileMask:string
 00558CBD    push        eax
 00558CBE    mov         ecx,ebx
 00558CC0    sub         ecx,esi
 00558CC2    dec         ecx
 00558CC3    lea         edx,[esi+1]
 00558CC6    mov         eax,dword ptr [ebp-4]
 00558CC9    call        @UStrCopy
 00558CCE    inc         ebx
 00558CCF    mov         eax,[007C4EF4];^gvar_007C7CB8:Cardinal
 00558CD4    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>00558CD8    jne         00558CF1
 00558CDA    mov         ecx,ebx
 00558CDC    mov         edx,dword ptr [ebp-4]
 00558CDF    mov         eax,558D9C;'|'
 00558CE4    call        Pos
 00558CE9    mov         dword ptr [ebp-14],eax
 00558CEC    mov         esi,dword ptr [ebp-14]
>00558CEF    jmp         00558D56
 00558CF1    lea         eax,[ebp-24]
 00558CF4    push        eax
 00558CF5    mov         ecx,7FFFFFFF
 00558CFA    mov         edx,ebx
 00558CFC    mov         eax,dword ptr [ebp-4]
 00558CFF    call        @UStrCopy
 00558D04    mov         edx,dword ptr [ebp-24]
 00558D07    mov         eax,558D9C;'|'
 00558D0C    call        AnsiPos
 00558D11    mov         esi,eax
 00558D13    test        esi,esi
>00558D15    je          00558D1F
 00558D17    lea         eax,[ebx+esi]
 00558D1A    dec         eax
 00558D1B    mov         esi,eax
>00558D1D    jmp         00558D56
 00558D1F    mov         eax,dword ptr [ebp-4]
 00558D22    mov         dword ptr [ebp-18],eax
 00558D25    cmp         dword ptr [ebp-18],0
>00558D29    je          00558D36
 00558D2B    mov         eax,dword ptr [ebp-18]
 00558D2E    sub         eax,4
 00558D31    mov         eax,dword ptr [eax]
 00558D33    mov         dword ptr [ebp-18],eax
 00558D36    cmp         ebx,dword ptr [ebp-18]
>00558D39    jge         00558D56
 00558D3B    mov         eax,dword ptr [ebp-4]
 00558D3E    mov         dword ptr [ebp-1C],eax
 00558D41    cmp         dword ptr [ebp-1C],0
>00558D45    je          00558D52
 00558D47    mov         eax,dword ptr [ebp-1C]
 00558D4A    sub         eax,4
 00558D4D    mov         eax,dword ptr [eax]
 00558D4F    mov         dword ptr [ebp-1C],eax
 00558D52    mov         esi,dword ptr [ebp-1C]
 00558D55    inc         esi
 00558D56    test        esi,esi
>00558D58    jne         00558C29
 00558D5E    xor         eax,eax
 00558D60    pop         edx
 00558D61    pop         ecx
 00558D62    pop         ecx
 00558D63    mov         dword ptr fs:[eax],edx
 00558D66    push        558D88
 00558D6B    lea         eax,[ebp-24]
 00558D6E    mov         edx,2
 00558D73    call        @UStrArrayClr
 00558D78    lea         eax,[ebp-4]
 00558D7B    call        @UStrClr
 00558D80    ret
>00558D81    jmp         @HandleFinally
>00558D86    jmp         00558D6B
 00558D88    pop         edi
 00558D89    pop         esi
 00558D8A    pop         ebx
 00558D8B    mov         esp,ebp
 00558D8D    pop         ebp
 00558D8E    ret
*}
end;

//00558DA0
procedure sub_00558DA0(?:TFileDialogWrapper);
begin
{*
 00558DA0    push        ebx
 00558DA1    push        esi
 00558DA2    push        edi
 00558DA3    push        ebp
 00558DA4    mov         esi,eax
 00558DA6    xor         ebx,ebx
 00558DA8    mov         edi,7A16DE
 00558DAD    mov         eax,dword ptr [esi+8]
 00558DB0    mov         edx,ebx
 00558DB2    cmp         dl,1F
>00558DB5    ja          00558DBE
 00558DB7    and         edx,7F
 00558DBA    bt          dword ptr [eax+7C],edx
>00558DBE    jae         00558DC8
 00558DC0    mov         eax,dword ptr [edi]
 00558DC2    mov         ebp,dword ptr [esi+4]
 00558DC5    or          dword ptr [ebp+70],eax
 00558DC8    inc         ebx
 00558DC9    add         edi,4
 00558DCC    cmp         bl,16
>00558DCF    jne         00558DAD
 00558DD1    mov         eax,dword ptr [esi+8]
 00558DD4    test        byte ptr [eax+0D0],1
>00558DDB    je          00558DE8
 00558DDD    mov         ebx,dword ptr [esi+4]
 00558DE0    mov         eax,[00558DF0];0x8000 gvar_00558DF0
 00558DE5    or          dword ptr [ebx+70],eax
 00558DE8    pop         ebp
 00558DE9    pop         edi
 00558DEA    pop         esi
 00558DEB    pop         ebx
 00558DEC    ret
*}
end;

//00558DF4
function TFileDialogWrapper.Execute(ParentWnd:HWND):Boolean;
begin
{*
 00558DF4    push        ebp
 00558DF5    mov         ebp,esp
 00558DF7    xor         ecx,ecx
 00558DF9    push        ecx
 00558DFA    push        ecx
 00558DFB    push        ecx
 00558DFC    push        ecx
 00558DFD    push        ecx
 00558DFE    push        ebx
 00558DFF    push        esi
 00558E00    mov         esi,edx
 00558E02    mov         dword ptr [ebp-4],eax
 00558E05    xor         eax,eax
 00558E07    push        ebp
 00558E08    push        559029
 00558E0D    push        dword ptr fs:[eax]
 00558E10    mov         dword ptr fs:[eax],esp
 00558E13    mov         eax,dword ptr [ebp-4]
 00558E16    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558E19    add         eax,44;TCustomFileDialog.FDefaultExtension:string
 00558E1C    mov         edx,dword ptr [ebp-4]
 00558E1F    mov         edx,dword ptr [edx+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558E22    mov         edx,dword ptr [edx+94];TOpenDialog.FDefaultExt:string
 00558E28    call        @UStrAsg
 00558E2D    lea         edx,[ebp-0C]
 00558E30    mov         eax,dword ptr [ebp-4]
 00558E33    mov         eax,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558E36    call        TOpenDialog.GetInitialDir
 00558E3B    mov         edx,dword ptr [ebp-0C]
 00558E3E    mov         eax,dword ptr [ebp-4]
 00558E41    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558E44    call        TFileOpenDialog.SetDefaultFolder
 00558E49    lea         edx,[ebp-10]
 00558E4C    mov         eax,dword ptr [ebp-4]
 00558E4F    mov         eax,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558E52    call        TOpenDialog.GetFileName
 00558E57    mov         edx,dword ptr [ebp-10]
 00558E5A    mov         eax,dword ptr [ebp-4]
 00558E5D    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558E60    call        TFileOpenDialog.SetFileName
 00558E65    mov         eax,dword ptr [ebp-4]
 00558E68    mov         eax,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558E6B    call        TOpenDialog.GetFilterIndex
 00558E70    mov         edx,dword ptr [ebp-4]
 00558E73    mov         ebx,dword ptr [edx+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558E76    mov         dword ptr [ebx+60],eax;TCustomFileDialog.FFileTypeIndex:Cardinal
 00558E79    lea         eax,[ebx+7C];TCustomFileDialog.FTitle:string
 00558E7C    mov         edx,dword ptr [ebp-4]
 00558E7F    mov         edx,dword ptr [edx+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558E82    mov         edx,dword ptr [edx+90];TOpenDialog.FTitle:string
 00558E88    call        @UStrAsg
 00558E8D    mov         eax,dword ptr [ebp-4]
 00558E90    mov         eax,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558E93    cmp         word ptr [eax+0C2],0;TOpenDialog.?fC2:word
>00558E9B    je          00558EB6
 00558E9D    mov         eax,dword ptr [ebp-4]
 00558EA0    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558EA3    mov         edx,dword ptr [ebp-4]
 00558EA6    mov         dword ptr [eax+8C],edx;TCustomFileDialog.?f8C:TFileDialogWrapper
 00558EAC    mov         dword ptr [eax+88],55905C;TCustomFileDialog.FOnFileOkClick:TFileDialogCloseEvent
 00558EB6    mov         eax,dword ptr [ebp-4]
 00558EB9    mov         eax,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558EBC    cmp         word ptr [eax+0B2],0;TOpenDialog.?fB2:word
>00558EC4    je          00558EDF
 00558EC6    mov         eax,dword ptr [ebp-4]
 00558EC9    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558ECC    mov         edx,dword ptr [ebp-4]
 00558ECF    mov         dword ptr [eax+94],edx;TCustomFileDialog.?f94:TFileDialogWrapper
 00558ED5    mov         dword ptr [eax+90],5590E4;TCustomFileDialog.FOnFolderChange:TNotifyEvent
 00558EDF    mov         eax,dword ptr [ebp-4]
 00558EE2    mov         eax,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558EE5    cmp         word ptr [eax+0AA],0;TOpenDialog.?fAA:word
>00558EED    je          00558F08
 00558EEF    mov         eax,dword ptr [ebp-4]
 00558EF2    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558EF5    mov         edx,dword ptr [ebp-4]
 00558EF8    mov         dword ptr [eax+0AC],edx;TCustomFileDialog.?fAC:TFileDialogWrapper
 00558EFE    mov         dword ptr [eax+0A8],559144;TCustomFileDialog.FOnSelectionChange:TNotifyEvent
 00558F08    mov         eax,dword ptr [ebp-4]
 00558F0B    mov         eax,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558F0E    cmp         word ptr [eax+0BA],0;TOpenDialog.?fBA:word
>00558F16    je          00558F31
 00558F18    mov         eax,dword ptr [ebp-4]
 00558F1B    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558F1E    mov         edx,dword ptr [ebp-4]
 00558F21    mov         dword ptr [eax+0BC],edx;TCustomFileDialog.?fBC:TFileDialogWrapper
 00558F27    mov         dword ptr [eax+0B8],5591BC;TCustomFileDialog.FOnTypeChange:TNotifyEvent sub_005591BC
 00558F31    mov         eax,dword ptr [ebp-4]
 00558F34    mov         eax,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558F37    test        byte ptr [eax+7D],8;TOpenDialog.?f7D:byte
>00558F3B    je          00558F56
 00558F3D    mov         eax,dword ptr [ebp-4]
 00558F40    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558F43    mov         edx,dword ptr [ebp-4]
 00558F46    mov         dword ptr [eax+0B4],edx;TCustomFileDialog.?fB4:TFileDialogWrapper
 00558F4C    mov         dword ptr [eax+0B0],559058;TCustomFileDialog.FOnShareViolation:TFileDialogShareViolation...
 00558F56    mov         eax,dword ptr [ebp-4]
 00558F59    call        00558BD4
 00558F5E    mov         eax,dword ptr [ebp-4]
 00558F61    call        00558DA0
 00558F66    mov         eax,dword ptr [ebp-4]
 00558F69    mov         eax,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558F6C    mov         edx,dword ptr [ebp-4]
 00558F6F    mov         dword ptr [eax+0D4],edx;TOpenDialog.FInternalWrapper:TObject
 00558F75    xor         eax,eax
 00558F77    push        ebp
 00558F78    push        558FAF
 00558F7D    push        dword ptr fs:[eax]
 00558F80    mov         dword ptr fs:[eax],esp
 00558F83    mov         eax,dword ptr [ebp-4]
 00558F86    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558F89    mov         edx,esi
 00558F8B    mov         ecx,dword ptr [eax]
 00558F8D    call        dword ptr [ecx+50];TCustomFileDialog.Execute
 00558F90    mov         byte ptr [ebp-5],al
 00558F93    xor         eax,eax
 00558F95    pop         edx
 00558F96    pop         ecx
 00558F97    pop         ecx
 00558F98    mov         dword ptr fs:[eax],edx
 00558F9B    push        558FB6
 00558FA0    mov         eax,dword ptr [ebp-4]
 00558FA3    mov         ebx,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558FA6    xor         eax,eax
 00558FA8    mov         dword ptr [ebx+0D4],eax;TOpenDialog.FInternalWrapper:TObject
 00558FAE    ret
>00558FAF    jmp         @HandleFinally
>00558FB4    jmp         00558FA0
 00558FB6    cmp         byte ptr [ebp-5],0
>00558FBA    je          00559006
 00558FBC    lea         edx,[ebp-14]
 00558FBF    mov         eax,dword ptr [ebp-4]
 00558FC2    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558FC5    call        TCustomFileDialog.GetFileName
 00558FCA    mov         edx,dword ptr [ebp-14]
 00558FCD    mov         eax,ebx
 00558FCF    call        TOpenDialog.SetFileName
 00558FD4    mov         eax,dword ptr [ebp-4]
 00558FD7    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558FDA    call        0055BDE0
 00558FDF    push        eax
 00558FE0    mov         eax,dword ptr [ebp-4]
 00558FE3    mov         eax,dword ptr [eax+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00558FE6    call        005598AC
 00558FEB    pop         edx
 00558FEC    mov         ecx,dword ptr [eax]
 00558FEE    call        dword ptr [ecx+8]
 00558FF1    mov         eax,dword ptr [ebp-4]
 00558FF4    mov         eax,dword ptr [eax+4];TFileDialogWrapper.FFileDialog:TCustomFileDialog
 00558FF7    mov         eax,dword ptr [eax+60];TCustomFileDialog.FFileTypeIndex:Cardinal
 00558FFA    mov         edx,dword ptr [ebp-4]
 00558FFD    mov         edx,dword ptr [edx+8];TFileDialogWrapper.FOpenDialog:TOpenDialog
 00559000    mov         dword ptr [edx+84],eax;TOpenDialog.FFilterIndex:Integer
 00559006    xor         eax,eax
 00559008    pop         edx
 00559009    pop         ecx
 0055900A    pop         ecx
 0055900B    mov         dword ptr fs:[eax],edx
 0055900E    push        559030
 00559013    lea         eax,[ebp-14]
 00559016    mov         edx,2
 0055901B    call        @UStrArrayClr
 00559020    lea         eax,[ebp-0C]
 00559023    call        @UStrClr
 00559028    ret
>00559029    jmp         @HandleFinally
>0055902E    jmp         00559013
 00559030    movzx       eax,byte ptr [ebp-5]
 00559034    pop         esi
 00559035    pop         ebx
 00559036    mov         esp,ebp
 00559038    pop         ebp
 00559039    ret
*}
end;

//0055903C
function TFileDialogWrapper.GetFileName:TFileName;
begin
{*
 0055903C    push        ebx
 0055903D    push        esi
 0055903E    mov         esi,edx
 00559040    mov         ebx,eax
 00559042    mov         edx,esi
 00559044    mov         eax,dword ptr [ebx+4]
 00559047    call        TCustomFileDialog.GetFileName
 0055904C    pop         esi
 0055904D    pop         ebx
 0055904E    ret
*}
end;

//00559050
{*function sub_00559050(?:TObject):?;
begin
 00559050    mov         eax,dword ptr [eax+4]
 00559053    mov         eax,dword ptr [eax+68]
 00559056    ret
end;*}

//005591BC
{*procedure sub_005591BC(?:?);
begin
 005591BC    push        ebx
 005591BD    mov         edx,dword ptr [eax+8]
 005591C0    mov         ecx,dword ptr [eax+4]
 005591C3    mov         ecx,dword ptr [ecx+60]
 005591C6    mov         dword ptr [edx+84],ecx
 005591CC    mov         ebx,edx
 005591CE    mov         edx,dword ptr [eax+8]
 005591D1    mov         eax,dword ptr [ebx+0BC]
 005591D7    call        dword ptr [ebx+0B8]
 005591DD    pop         ebx
 005591DE    ret
end;*}

//005591E0
procedure TFileOpenDialogWrapper.CreateFileDialog;
begin
{*
 005591E0    push        ebx
 005591E1    mov         ebx,eax
 005591E3    xor         ecx,ecx
 005591E5    mov         dl,1
 005591E7    mov         eax,[00555A04];TFileOpenDialog
 005591EC    call        TCustomFileDialog.Create;TFileOpenDialog.Create
 005591F1    mov         dword ptr [eax+84],ebx;TFileOpenDialog.?f84:TFileOpenDialogWrapper
 005591F7    mov         dword ptr [eax+80],559204;TFileOpenDialog.FOnExecute:TNotifyEvent
 00559201    pop         ebx
 00559202    ret
*}
end;

//005592BC
function TFileSaveDialogWrapper.CreateFileDialog:TCustomFileDialog;
begin
{*
 005592BC    xor         ecx,ecx
 005592BE    mov         dl,1
 005592C0    mov         eax,[00555F3C];TFileSaveDialog
 005592C5    call        TCustomFileDialog.Create
 005592CA    ret
*}
end;

//005592CC
{*function sub_005592CC(?:?; ?:?; ?:?; ?:?):?;
begin
 005592CC    push        ebp
 005592CD    mov         ebp,esp
 005592CF    push        ebx
 005592D0    push        esi
 005592D1    push        edi
 005592D2    mov         ebx,dword ptr [ebp+0C]
 005592D5    mov         esi,dword ptr [ebp+8]
 005592D8    xor         edi,edi
 005592DA    cmp         ebx,110
>005592E0    jne         00559325
 005592E2    mov         eax,[007A16D8];0x0 gvar_007A16D8:TCommonDialog
 005592E7    mov         dword ptr [eax+48],esi;TCommonDialog.FHandle:HWND
 005592EA    mov         eax,[007A16D8];0x0 gvar_007A16D8:TCommonDialog
 005592EF    mov         eax,dword ptr [eax+6C];TCommonDialog.FObjectInstance:Pointer
 005592F2    push        eax
 005592F3    push        0FC
 005592F5    push        esi
 005592F6    call        user32.SetWindowLongW
 005592FB    mov         edx,dword ptr ds:[7A16D8];0x0 gvar_007A16D8:TCommonDialog
 00559301    mov         dword ptr [edx+68],eax;TCommonDialog.FDefWndProc:Pointer
 00559304    mov         eax,dword ptr [ebp+14]
 00559307    push        eax
 00559308    mov         eax,dword ptr [ebp+10]
 0055930B    push        eax
 0055930C    push        ebx
 0055930D    push        esi
 0055930E    mov         eax,[007A16D8];0x0 gvar_007A16D8:TCommonDialog
 00559313    mov         eax,dword ptr [eax+6C];TCommonDialog.FObjectInstance:Pointer
 00559316    push        eax
 00559317    call        user32.CallWindowProcW
 0055931C    xor         eax,eax
 0055931E    mov         [007A16D8],eax;gvar_007A16D8:TCommonDialog
>00559323    jmp         00559343
 00559325    cmp         ebx,4E
>00559328    jne         00559343
 0055932A    mov         eax,dword ptr [ebp+14]
 0055932D    cmp         dword ptr [eax+8],0FFFFFDA7
>00559334    jne         00559343
 00559336    push        0F8
 00559338    push        esi
 00559339    call        user32.GetWindowLongW
 0055933E    call        005581A0
 00559343    mov         eax,edi
 00559345    pop         edi
 00559346    pop         esi
 00559347    pop         ebx
 00559348    pop         ebp
 00559349    ret         10
end;*}

//0055934C
constructor TOpenDialog.Create(AOwner:TComponent);
begin
{*
 0055934C    push        ebx
 0055934D    push        esi
 0055934E    test        dl,dl
>00559350    je          0055935A
 00559352    add         esp,0FFFFFFF0
 00559355    call        @ClassCreate
 0055935A    mov         ebx,edx
 0055935C    mov         esi,eax
 0055935E    xor         edx,edx
 00559360    mov         eax,esi
 00559362    call        TCommonDialog.Create
 00559367    mov         dl,1
 00559369    mov         eax,[0046F9A0];TStringList
 0055936E    call        TStringList.Create;TStringList.Create
 00559373    mov         dword ptr [esi+78],eax;TOpenDialog.FHistoryList:TStrings
 00559376    mov         eax,[005593D0];0x80004 gvar_005593D0
 0055937B    mov         dword ptr [esi+7C],eax;TOpenDialog.FOptions:TOpenOptions
 0055937E    movzx       eax,byte ptr ds:[5593D4];0x0 gvar_005593D4
 00559385    mov         byte ptr [esi+0D0],al;TOpenDialog.FOptionsEx:TOpenOptionsEx
 0055938B    mov         dl,1
 0055938D    mov         eax,[0046F9A0];TStringList
 00559392    call        TStringList.Create;TStringList.Create
 00559397    mov         dword ptr [esi+9C],eax;TOpenDialog.FFiles:TStrings
 0055939D    mov         dword ptr [esi+84],1;TOpenDialog.FFilterIndex:Integer
 005593A7    mov         byte ptr [esi+0A0],0;TOpenDialog.FFileEditStyle:TFileEditStyle
 005593AE    xor         eax,eax
 005593B0    mov         dword ptr [esi+0D4],eax;TOpenDialog.FInternalWrapper:TObject
 005593B6    mov         eax,esi
 005593B8    test        bl,bl
>005593BA    je          005593CB
 005593BC    call        @AfterConstruction
 005593C1    pop         dword ptr fs:[0]
 005593C8    add         esp,0C
 005593CB    mov         eax,esi
 005593CD    pop         esi
 005593CE    pop         ebx
 005593CF    ret
*}
end;

//005593D8
destructor TOpenDialog.Destroy();
begin
{*
 005593D8    push        ebx
 005593D9    push        esi
 005593DA    call        @BeforeDestruction
 005593DF    mov         ebx,edx
 005593E1    mov         esi,eax
 005593E3    mov         eax,dword ptr [esi+9C];TOpenDialog.FFiles:TStrings
 005593E9    call        TObject.Free
 005593EE    mov         eax,dword ptr [esi+78];TOpenDialog.FHistoryList:TStrings
 005593F1    call        TObject.Free
 005593F6    mov         dl,0FC
 005593F8    and         dl,bl
 005593FA    mov         eax,esi
 005593FC    call        TCommonDialog.Destroy
 00559401    test        bl,bl
>00559403    jle         0055940C
 00559405    mov         eax,esi
 00559407    call        @ClassDestroy
 0055940C    pop         esi
 0055940D    pop         ebx
 0055940E    ret
*}
end;

//00559410
{*function sub_00559410(?:TOpenDialog):?;
begin
 00559410    push        ebx
 00559411    push        esi
 00559412    push        edi
 00559413    mov         edi,eax
 00559415    mov         eax,edi
 00559417    call        005597E0
 0055941C    mov         eax,edi
 0055941E    mov         si,0FFED
 00559422    call        @CallDynaInst
 00559427    mov         ebx,eax
 00559429    mov         eax,dword ptr [edi+9C]
 0055942F    mov         edx,dword ptr [eax]
 00559431    call        dword ptr [edx+48]
 00559434    mov         eax,ebx
 00559436    pop         edi
 00559437    pop         esi
 00559438    pop         ebx
 00559439    ret
end;*}

//0055943C
{*procedure sub_0055943C(?:?);
begin
 0055943C    push        ebx
 0055943D    push        esi
 0055943E    push        edi
 0055943F    push        ecx
 00559440    mov         ebx,edx
 00559442    mov         edi,eax
 00559444    xor         eax,eax
 00559446    mov         dword ptr [ebx+0C],eax
 00559449    mov         eax,dword ptr [ebx]
 0055944B    cmp         eax,110
>00559450    jne         0055945C
 00559452    test        byte ptr [edi+7E],1;TOpenDialog.?f7E:byte
>00559456    je          00559546
 0055945C    cmp         eax,4E
>0055945F    jne         0055953D
 00559465    mov         edx,dword ptr [ebx+8]
 00559468    mov         eax,edx
 0055946A    mov         ecx,dword ptr [eax+8]
 0055946D    add         ecx,260
 00559473    cmp         ecx,7
>00559476    ja          0055953D
 0055947C    jmp         dword ptr [ecx*4+559483]
 0055947C    dd          0055951B
 0055947C    dd          005594FA
 0055947C    dd          005594A3
 0055947C    dd          0055953D
 0055947C    dd          0055953D
 0055947C    dd          005594ED
 0055947C    dd          005594E0
 0055947C    dd          005594D3
 005594A3    mov         esi,dword ptr [eax+0C]
 005594A6    mov         edx,esi
 005594A8    mov         eax,edi
 005594AA    call        00559410
 005594AF    test        al,al
>005594B1    jne         0055953D
 005594B7    mov         dword ptr [ebx+0C],1
 005594BE    mov         eax,edi
 005594C0    mov         edx,dword ptr [eax]
 005594C2    call        dword ptr [edx+48];TOpenDialog.sub_0055998C
 005594C5    mov         edx,dword ptr [ebx+0C]
 005594C8    push        edx
 005594C9    push        0
 005594CB    push        eax
 005594CC    call        user32.SetWindowLongW
>005594D1    jmp         00559546
 005594D3    mov         eax,edi
 005594D5    mov         si,0FFEE
 005594D9    call        @CallDynaInst;TCommonDialog.sub_005587F4
>005594DE    jmp         0055953D
 005594E0    mov         eax,edi
 005594E2    mov         si,0FFEC
 005594E6    call        @CallDynaInst;TCustomTaskDialog.DoOnDialogCreated
>005594EB    jmp         0055953D
 005594ED    mov         eax,edi
 005594EF    mov         si,0FFEB
 005594F3    call        @CallDynaInst;TCustomFileDialog.DoOnTypeChange
>005594F8    jmp         0055953D
 005594FA    mov         esi,dword ptr [eax+0C]
 005594FD    mov         eax,dword ptr [esi+18]
 00559500    cmp         eax,dword ptr [edi+88];TOpenDialog.FCurrentFilterIndex:Integer
>00559506    je          0055953D
 00559508    mov         dword ptr [edi+88],eax;TOpenDialog.FCurrentFilterIndex:Integer
 0055950E    mov         eax,edi
 00559510    mov         si,0FFEA
 00559514    call        @CallDynaInst;TOpenDialog.sub_005595B8
>00559519    jmp         0055953D
 0055951B    cmp         dword ptr [ebx+8],0
>0055951F    je          0055953D
 00559521    mov         eax,edx
 00559523    mov         byte ptr [esp],1
 00559527    mov         ecx,esp
 00559529    mov         edx,eax
 0055952B    mov         eax,edi
 0055952D    mov         si,0FFE9
 00559531    call        @CallDynaInst;TOpenDialog.sub_00559F78
 00559536    movzx       eax,byte ptr [esp]
 0055953A    mov         dword ptr [ebx+0C],eax
 0055953D    mov         edx,ebx
 0055953F    mov         eax,edi
 00559541    call        005586C4
 00559546    pop         edx
 00559547    pop         edi
 00559548    pop         esi
 00559549    pop         ebx
 0055954A    ret
end;*}

//0055954C
procedure TOpenDialog.sub_0055954C;
begin
{*
 0055954C    push        ebx
 0055954D    push        ecx
 0055954E    mov         byte ptr [esp],1
 00559552    cmp         word ptr [eax+0C2],0;TOpenDialog.?fC2:word
>0055955A    je          0055956E
 0055955C    mov         ecx,esp
 0055955E    mov         ebx,eax
 00559560    mov         edx,eax
 00559562    mov         eax,dword ptr [ebx+0C4];TOpenDialog.?fC4:dword
 00559568    call        dword ptr [ebx+0C0];TOpenDialog.FOnCanClose
 0055956E    movzx       eax,byte ptr [esp]
 00559572    pop         edx
 00559573    pop         ebx
 00559574    ret
*}
end;

//00559578
procedure TCustomTaskDialog.DoOnDialogCreated;
begin
{*
 00559578    push        ebx
 00559579    cmp         word ptr [eax+0AA],0
>00559581    je          00559593
 00559583    mov         ebx,eax
 00559585    mov         edx,eax
 00559587    mov         eax,dword ptr [ebx+0AC]
 0055958D    call        dword ptr [ebx+0A8]
 00559593    pop         ebx
 00559594    ret
*}
end;

//00559598
procedure TCustomFileDialog.DoOnTypeChange;
begin
{*
 00559598    push        ebx
 00559599    cmp         word ptr [eax+0B2],0
>005595A1    je          005595B3
 005595A3    mov         ebx,eax
 005595A5    mov         edx,eax
 005595A7    mov         eax,dword ptr [ebx+0B4]
 005595AD    call        dword ptr [ebx+0B0]
 005595B3    pop         ebx
 005595B4    ret
*}
end;

//005595B8
procedure TOpenDialog.sub_005595B8;
begin
{*
 005595B8    push        ebx
 005595B9    cmp         word ptr [eax+0BA],0;TOpenDialog.?fBA:word
>005595C1    je          005595D3
 005595C3    mov         ebx,eax
 005595C5    mov         edx,eax
 005595C7    mov         eax,dword ptr [ebx+0BC];TOpenDialog.?fBC:dword
 005595CD    call        dword ptr [ebx+0B8];TOpenDialog.FOnTypeChange
 005595D3    pop         ebx
 005595D4    ret
*}
end;

//005595D8
procedure TOpenDialog.ReadFileEditStyle(Reader:Classes.TReader);
begin
{*
 005595D8    push        ebp
 005595D9    mov         ebp,esp
 005595DB    push        0
 005595DD    xor         eax,eax
 005595DF    push        ebp
 005595E0    push        55960A
 005595E5    push        dword ptr fs:[eax]
 005595E8    mov         dword ptr fs:[eax],esp
 005595EB    lea         eax,[ebp-4]
 005595EE    xchg        eax,edx
 005595EF    call        TReader.ReadIdent
 005595F4    xor         eax,eax
 005595F6    pop         edx
 005595F7    pop         ecx
 005595F8    pop         ecx
 005595F9    mov         dword ptr fs:[eax],edx
 005595FC    push        559611
 00559601    lea         eax,[ebp-4]
 00559604    call        @UStrClr
 00559609    ret
>0055960A    jmp         @HandleFinally
>0055960F    jmp         00559601
 00559611    pop         ecx
 00559612    pop         ebp
 00559613    ret
*}
end;

//00559614
procedure TOpenDialog.DefineProperties(Filer:Classes.TFiler);
begin
{*
 00559614    push        ebx
 00559615    push        esi
 00559616    mov         esi,edx
 00559618    mov         ebx,eax
 0055961A    mov         edx,esi
 0055961C    mov         eax,ebx
 0055961E    call        TComponent.DefineProperties
 00559623    push        ebx
 00559624    push        5595D8;TOpenDialog.ReadFileEditStyle
 00559629    push        0
 0055962B    push        0
 0055962D    xor         ecx,ecx
 0055962F    mov         edx,55964C;'FileEditStyle'
 00559634    mov         eax,esi
 00559636    mov         ebx,dword ptr [eax]
 00559638    call        dword ptr [ebx+4]
 0055963B    pop         esi
 0055963C    pop         ebx
 0055963D    ret
*}
end;

//00559668
{*function sub_00559668(?:?; ?:UnicodeString; ?:?):?;
begin
 00559668    push        ebp
 00559669    mov         ebp,esp
 0055966B    push        ebx
 0055966C    push        esi
 0055966D    push        edi
 0055966E    mov         edi,edx
 00559670    mov         esi,eax
 00559672    mov         eax,dword ptr [ebp+8]
 00559675    movzx       eax,word ptr [eax-2]
 00559679    mov         edx,eax
 0055967B    mov         eax,esi
 0055967D    call        0041F38C
 00559682    mov         ebx,eax
 00559684    test        ebx,ebx
>00559686    jne         0055969C
 00559688    mov         eax,edi
 0055968A    mov         edx,esi
 0055968C    call        @UStrFromPWChar
 00559691    mov         eax,esi
 00559693    call        StrEnd
 00559698    mov         ebx,eax
>0055969A    jmp         005596B3
 0055969C    mov         ecx,ebx
 0055969E    sub         ecx,esi
 005596A0    sar         ecx,1
>005596A2    jns         005596A7
 005596A4    adc         ecx,0
 005596A7    mov         eax,edi
 005596A9    mov         edx,esi
 005596AB    call        @UStrFromPWCharLen
 005596B0    add         ebx,2
 005596B3    mov         eax,ebx
 005596B5    pop         edi
 005596B6    pop         esi
 005596B7    pop         ebx
 005596B8    pop         ebp
 005596B9    ret
end;*}

//005596BC
{*procedure sub_005596BC(?:?; ?:?);
begin
 005596BC    push        ebp
 005596BD    mov         ebp,esp
 005596BF    push        0
 005596C1    push        0
 005596C3    push        ebx
 005596C4    mov         ebx,eax
 005596C6    xor         eax,eax
 005596C8    push        ebp
 005596C9    push        5597C4
 005596CE    push        dword ptr fs:[eax]
 005596D1    mov         dword ptr fs:[eax],esp
 005596D4    mov         eax,dword ptr [ebp+8]
 005596D7    push        eax
 005596D8    lea         edx,[ebp-4]
 005596DB    mov         eax,ebx
 005596DD    call        00559668
 005596E2    pop         ecx
 005596E3    mov         ebx,eax
 005596E5    mov         eax,dword ptr [ebp+8]
 005596E8    push        eax
 005596E9    lea         edx,[ebp-8]
 005596EC    mov         eax,ebx
 005596EE    call        00559668
 005596F3    pop         ecx
 005596F4    mov         ebx,eax
 005596F6    cmp         dword ptr [ebp-8],0
>005596FA    jne         00559715
 005596FC    mov         eax,dword ptr [ebp+8]
 005596FF    mov         eax,dword ptr [eax-8]
 00559702    mov         eax,dword ptr [eax+9C]
 00559708    mov         edx,dword ptr [ebp-4]
 0055970B    mov         ecx,dword ptr [eax]
 0055970D    call        dword ptr [ecx+3C]
>00559710    jmp         005597A9
 00559715    mov         eax,dword ptr [ebp-4]
 00559718    call        AnsiLastChar
 0055971D    cmp         word ptr [eax],5C
>00559721    je          00559730
 00559723    lea         eax,[ebp-4]
 00559726    mov         edx,5597DC;'\'
 0055972B    call        @UStrCat
 00559730    mov         eax,dword ptr [ebp-8]
 00559733    cmp         word ptr [eax],5C
>00559737    je          0055977E
 00559739    mov         eax,dword ptr [ebp-8]
 0055973C    test        eax,eax
>0055973E    je          00559745
 00559740    sub         eax,4
 00559743    mov         eax,dword ptr [eax]
 00559745    cmp         eax,3
>00559748    jg          0055974E
 0055974A    mov         al,1
>0055974C    jmp         00559759
 0055974E    mov         eax,dword ptr [ebp-8]
 00559751    cmp         word ptr [eax+2],3A
 00559756    setne       al
 00559759    test        al,al
>0055975B    je          00559761
 0055975D    mov         al,1
>0055975F    jmp         0055976C
 00559761    mov         eax,dword ptr [ebp-8]
 00559764    cmp         word ptr [eax+4],5C
 00559769    setne       al
 0055976C    test        al,al
>0055976E    je          0055977E
 00559770    lea         eax,[ebp-8]
 00559773    mov         ecx,dword ptr [ebp-8]
 00559776    mov         edx,dword ptr [ebp-4]
 00559779    call        @UStrCat3
 0055977E    mov         eax,dword ptr [ebp+8]
 00559781    mov         eax,dword ptr [eax-8]
 00559784    mov         eax,dword ptr [eax+9C]
 0055978A    mov         edx,dword ptr [ebp-8]
 0055978D    mov         ecx,dword ptr [eax]
 0055978F    call        dword ptr [ecx+3C]
 00559792    mov         eax,dword ptr [ebp+8]
 00559795    push        eax
 00559796    lea         edx,[ebp-8]
 00559799    mov         eax,ebx
 0055979B    call        00559668
 005597A0    pop         ecx
 005597A1    mov         ebx,eax
 005597A3    cmp         dword ptr [ebp-8],0
>005597A7    jne         00559730
 005597A9    xor         eax,eax
 005597AB    pop         edx
 005597AC    pop         ecx
 005597AD    pop         ecx
 005597AE    mov         dword ptr fs:[eax],edx
 005597B1    push        5597CB
 005597B6    lea         eax,[ebp-8]
 005597B9    mov         edx,2
 005597BE    call        @UStrArrayClr
 005597C3    ret
>005597C4    jmp         @HandleFinally
>005597C9    jmp         005597B6
 005597CB    pop         ebx
 005597CC    pop         ecx
 005597CD    pop         ecx
 005597CE    pop         ebp
 005597CF    ret
end;*}

//005597E0
{*procedure sub_005597E0(?:?; ?:?);
begin
 005597E0    push        ebp
 005597E1    mov         ebp,esp
 005597E3    add         esp,0FFFFFFF4
 005597E6    push        ebx
 005597E7    xor         ecx,ecx
 005597E9    mov         dword ptr [ebp-0C],ecx
 005597EC    mov         dword ptr [ebp-8],eax
 005597EF    xor         eax,eax
 005597F1    push        ebp
 005597F2    push        55989D
 005597F7    push        dword ptr fs:[eax]
 005597FA    mov         dword ptr fs:[eax],esp
 005597FD    mov         word ptr [ebp-2],0
 00559803    mov         eax,dword ptr [ebp-8]
 00559806    test        byte ptr [eax+7C],40
>0055980A    je          00559825
 0055980C    mov         eax,dword ptr [ebp-8]
 0055980F    test        byte ptr [eax+7E],1
>00559813    jne         0055981F
 00559815    mov         eax,[007C4770];^gvar_007CA5E0
 0055981A    cmp         byte ptr [eax],0
>0055981D    jne         00559825
 0055981F    mov         word ptr [ebp-2],20
 00559825    mov         eax,dword ptr [ebp-8]
 00559828    test        byte ptr [eax+7C],40
>0055982C    je          0055985D
 0055982E    push        ebp
 0055982F    mov         eax,dword ptr [edx+1C]
 00559832    call        005596BC
 00559837    pop         ecx
 00559838    lea         ecx,[ebp-0C]
 0055983B    mov         eax,dword ptr [ebp-8]
 0055983E    mov         eax,dword ptr [eax+9C]
 00559844    xor         edx,edx
 00559846    mov         ebx,dword ptr [eax]
 00559848    call        dword ptr [ebx+0C]
 0055984B    mov         edx,dword ptr [ebp-0C]
 0055984E    mov         eax,dword ptr [ebp-8]
 00559851    add         eax,98
 00559856    call        @UStrAsg
>0055985B    jmp         00559887
 0055985D    push        ebp
 0055985E    mov         eax,dword ptr [edx+1C]
 00559861    mov         edx,dword ptr [ebp-8]
 00559864    add         edx,98
 0055986A    call        00559668
 0055986F    pop         ecx
 00559870    mov         eax,dword ptr [ebp-8]
 00559873    mov         edx,dword ptr [eax+98]
 00559879    mov         eax,dword ptr [ebp-8]
 0055987C    mov         eax,dword ptr [eax+9C]
 00559882    mov         ecx,dword ptr [eax]
 00559884    call        dword ptr [ecx+3C]
 00559887    xor         eax,eax
 00559889    pop         edx
 0055988A    pop         ecx
 0055988B    pop         ecx
 0055988C    mov         dword ptr fs:[eax],edx
 0055988F    push        5598A4
 00559894    lea         eax,[ebp-0C]
 00559897    call        @UStrClr
 0055989C    ret
>0055989D    jmp         @HandleFinally
>005598A2    jmp         00559894
 005598A4    pop         ebx
 005598A5    mov         esp,ebp
 005598A7    pop         ebp
 005598A8    ret
end;*}

//005598AC
{*function sub_005598AC(?:TOpenDialog):?;
begin
 005598AC    mov         eax,dword ptr [eax+9C];TOpenDialog.FFiles:TStrings
 005598B2    ret
end;*}

//005598B4
{*procedure sub_005598B4(?:?);
begin
 005598B4    push        ebx
 005598B5    push        esi
 005598B6    push        edi
 005598B7    mov         esi,edx
 005598B9    mov         ebx,eax
 005598BB    mov         edi,dword ptr [ebx+48];TOpenDialog.FHandle:HWND
 005598BE    test        edi,edi
>005598C0    je          005598F3
 005598C2    test        byte ptr [ebx+7E],1;TOpenDialog.?f7E:byte
>005598C6    jne         005598EA
 005598C8    push        esi
 005598C9    push        45F
 005598CE    push        edi
 005598CF    call        user32.GetDlgItem
 005598D4    push        eax
 005598D5    call        user32.GetWindowRect
 005598DA    push        2
 005598DC    push        esi
 005598DD    mov         eax,dword ptr [ebx+48];TOpenDialog.FHandle:HWND
 005598E0    push        eax
 005598E1    push        0
 005598E3    call        user32.MapWindowPoints
>005598E8    jmp         00559901
 005598EA    push        esi
 005598EB    push        edi
 005598EC    call        user32.GetClientRect
>005598F1    jmp         00559901
 005598F3    push        0
 005598F5    push        esi
 005598F6    xor         ecx,ecx
 005598F8    xor         edx,edx
 005598FA    xor         eax,eax
 005598FC    call        Rect
 00559901    pop         edi
 00559902    pop         esi
 00559903    pop         ebx
 00559904    ret
end;*}

//00559908
{*procedure TOpenDialog.GetFileName(?:?);
begin
 00559908    push        ebx
 00559909    push        esi
 0055990A    push        edi
 0055990B    add         esp,0FFFFFDF4
 00559911    mov         esi,edx
 00559913    mov         ebx,eax
 00559915    mov         edi,dword ptr [ebx+0D4];TOpenDialog.FInternalWrapper:TObject
 0055991B    test        edi,edi
>0055991D    je          0055992A
 0055991F    mov         edx,esi
 00559921    mov         eax,edi
 00559923    call        TFileDialogWrapper.GetFileName
>00559928    jmp         0055996E
 0055992A    mov         eax,[007C4770];^gvar_007CA5E0
 0055992F    cmp         byte ptr [eax],0
>00559932    je          00559961
 00559934    cmp         dword ptr [ebx+48],0;TOpenDialog.FHandle:HWND
>00559938    je          00559961
 0055993A    mov         eax,esp
 0055993C    push        eax
 0055993D    push        105
 00559942    push        465
 00559947    mov         eax,dword ptr [ebx+48];TOpenDialog.FHandle:HWND
 0055994A    push        eax
 0055994B    call        user32.GetParent
 00559950    push        eax
 00559951    call        user32.SendMessageW
 00559956    mov         edx,esi
 00559958    mov         eax,esp
 0055995A    call        0041F490
>0055995F    jmp         0055996E
 00559961    mov         eax,esi
 00559963    mov         edx,dword ptr [ebx+98];TOpenDialog.FFileName:TFileName
 00559969    call        @UStrAsg
 0055996E    add         esp,20C
 00559974    pop         edi
 00559975    pop         esi
 00559976    pop         ebx
 00559977    ret
end;*}

//00559978
{*function TOpenDialog.GetFilterIndex:?;
begin
 00559978    cmp         dword ptr [eax+48],0;TOpenDialog.FHandle:HWND
>0055997C    je          00559985
 0055997E    mov         eax,dword ptr [eax+88];TOpenDialog.FCurrentFilterIndex:Integer
 00559984    ret
 00559985    mov         eax,dword ptr [eax+84];TOpenDialog.FFilterIndex:Integer
 0055998B    ret
end;*}

//0055998C
procedure sub_0055998C;
begin
{*
 0055998C    mov         edx,dword ptr [eax+0D4];TOpenDialog.FInternalWrapper:TObject
 00559992    test        edx,edx
>00559994    je          0055999E
 00559996    mov         eax,edx
 00559998    call        00559050
 0055999D    ret
 0055999E    call        00558614
 005599A3    ret
*}
end;

//005599A4
{*procedure TOpenDialog.GetInitialDir(?:?);
begin
 005599A4    push        ebx
 005599A5    push        esi
 005599A6    mov         esi,edx
 005599A8    mov         ebx,eax
 005599AA    mov         eax,esi
 005599AC    mov         edx,dword ptr [ebx+8C];TOpenDialog.FInitialDir:string
 005599B2    call        @UStrAsg
 005599B7    pop         esi
 005599B8    pop         ebx
 005599B9    ret
end;*}

//005599BC
procedure TOpenDialog.SetFileName(Value:TFileName);
begin
{*
 005599BC    push        ebp
 005599BD    mov         ebp,esp
 005599BF    push        ecx
 005599C0    push        ebx
 005599C1    mov         dword ptr [ebp-4],edx
 005599C4    mov         ebx,eax
 005599C6    mov         eax,dword ptr [ebp-4]
 005599C9    call        @UStrAddRef
 005599CE    xor         eax,eax
 005599D0    push        ebp
 005599D1    push        559A10
 005599D6    push        dword ptr fs:[eax]
 005599D9    mov         dword ptr fs:[eax],esp
 005599DC    mov         eax,dword ptr [ebp-4]
 005599DF    mov         edx,dword ptr [ebx+98];TOpenDialog.FFileName:TFileName
 005599E5    call        @UStrEqual
>005599EA    je          005599FA
 005599EC    lea         eax,[ebx+98];TOpenDialog.FFileName:TFileName
 005599F2    mov         edx,dword ptr [ebp-4]
 005599F5    call        @UStrAsg
 005599FA    xor         eax,eax
 005599FC    pop         edx
 005599FD    pop         ecx
 005599FE    pop         ecx
 005599FF    mov         dword ptr fs:[eax],edx
 00559A02    push        559A17
 00559A07    lea         eax,[ebp-4]
 00559A0A    call        @UStrClr
 00559A0F    ret
>00559A10    jmp         @HandleFinally
>00559A15    jmp         00559A07
 00559A17    pop         ebx
 00559A18    pop         ecx
 00559A19    pop         ebp
 00559A1A    ret
*}
end;

//00559A2C
procedure TOpenDialog.SetInitialDir(Value:string);
begin
{*
 00559A2C    push        ebx
 00559A2D    push        esi
 00559A2E    push        edi
 00559A2F    mov         esi,edx
 00559A31    mov         edi,eax
 00559A33    mov         eax,esi
 00559A35    test        eax,eax
>00559A37    je          00559A3E
 00559A39    sub         eax,4
 00559A3C    mov         eax,dword ptr [eax]
 00559A3E    mov         ebx,eax
 00559A40    cmp         ebx,1
>00559A43    jle         00559A66
 00559A45    mov         edx,ebx
 00559A47    mov         eax,esi
 00559A49    call        00425174
 00559A4E    test        al,al
>00559A50    je          00559A66
 00559A52    mov         ecx,ebx
 00559A54    dec         ecx
 00559A55    mov         edx,esi
 00559A57    mov         eax,559A8C;':'
 00559A5C    call        004251C0
 00559A61    test        al,al
>00559A63    jne         00559A66
 00559A65    dec         ebx
 00559A66    lea         eax,[edi+8C];TOpenDialog.FInitialDir:string
 00559A6C    push        eax
 00559A6D    mov         ecx,ebx
 00559A6F    mov         edx,1
 00559A74    mov         eax,esi
 00559A76    call        @UStrCopy
 00559A7B    pop         edi
 00559A7C    pop         esi
 00559A7D    pop         ebx
 00559A7E    ret
*}
end;

//00559A90
function TOpenDialog.Execute(ParentWnd:HWND):Boolean;
begin
{*
 00559A90    push        ebx
 00559A91    push        esi
 00559A92    mov         esi,edx
 00559A94    mov         ebx,eax
 00559A96    mov         edx,518A14;comdlg32.GetOpenFileNameW:Windows.BOOL
 00559A9B    mov         ecx,esi
 00559A9D    mov         eax,ebx
 00559A9F    call        TOpenDialog.DoExecute
 00559AA4    cmp         eax,1
 00559AA7    sbb         eax,eax
 00559AA9    inc         eax
 00559AAA    pop         esi
 00559AAB    pop         ebx
 00559AAC    ret
*}
end;

//00559AB0
{*procedure sub_00559AB0(?:?; ?:?);
begin
 00559AB0    push        ebx
 00559AB1    push        esi
 00559AB2    mov         ebx,edx
 00559AB4    mov         esi,eax
 00559AB6    mov         eax,ebx
 00559AB8    call        @UStrClr
 00559ABD    test        esi,esi
>00559ABF    je          00559B00
 00559AC1    mov         eax,ebx
 00559AC3    mov         ecx,559B10;''
 00559AC8    mov         edx,esi
 00559ACA    call        @UStrCat3
 00559ACF    mov         eax,dword ptr [ebx]
 00559AD1    call        @UStrToPWChar
 00559AD6    mov         dx,7C
 00559ADA    call        0041F38C
 00559ADF    mov         ebx,eax
 00559AE1    test        ebx,ebx
>00559AE3    je          00559B00
 00559AE5    mov         word ptr [ebx],0
 00559AEA    add         ebx,2
 00559AED    mov         dx,7C
 00559AF1    mov         eax,ebx
 00559AF3    call        0041F38C
 00559AF8    mov         esi,eax
 00559AFA    mov         ebx,esi
 00559AFC    test        ebx,ebx
>00559AFE    jne         00559AE5
 00559B00    pop         esi
 00559B01    pop         ebx
 00559B02    ret
end;*}

//00559B14
function TOpenDialog.DoExecute(Func:Pointer; ParentWnd:Windows.HWND):BOOL;
begin
{*
 00559B14    push        ebp
 00559B15    mov         ebp,esp
 00559B17    add         esp,0FFFFFF8C
 00559B1A    push        ebx
 00559B1B    push        esi
 00559B1C    xor         ebx,ebx
 00559B1E    mov         dword ptr [ebp-4],ebx
 00559B21    mov         dword ptr [ebp-8],ebx
 00559B24    mov         dword ptr [ebp-0C],ebx
 00559B27    mov         dword ptr [ebp-14],ecx
 00559B2A    mov         dword ptr [ebp-10],edx
 00559B2D    mov         ebx,eax
 00559B2F    xor         eax,eax
 00559B31    push        ebp
 00559B32    push        559F39
 00559B37    push        dword ptr fs:[eax]
 00559B3A    mov         dword ptr fs:[eax],esp
 00559B3D    mov         eax,[007C4590];^gvar_0079EDE0
 00559B42    cmp         dword ptr [eax],6
>00559B45    jl          00559B8A
 00559B47    cmp         byte ptr ds:[7A16D1],0;gvar_007A16D1
>00559B4E    je          00559B8A
 00559B50    call        TStyleManager.GetIsCustomStyleActive
 00559B55    test        al,al
>00559B57    je          00559B63
 00559B59    mov         eax,[007C461C];^gvar_007CA765
 00559B5E    test        byte ptr [eax],2
>00559B61    jne         00559B8A
 00559B63    cmp         dword ptr ds:[7A16D4],0FFFFFFFF;gvar_007A16D4:Cardinal
>00559B6A    jne         00559B7B
 00559B6C    mov         eax,559F58;'comctl32.dll'
 00559B71    call        GetFileVersion
 00559B76    mov         [007A16D4],eax;gvar_007A16D4:Cardinal
 00559B7B    cmp         dword ptr ds:[7A16D4],60000;gvar_007A16D4:Cardinal
 00559B85    setae       al
>00559B88    jmp         00559B8C
 00559B8A    xor         eax,eax
 00559B8C    test        al,al
>00559B8E    je          00559B99
 00559B90    cmp         dword ptr [ebx+70],0
 00559B94    sete        al
>00559B97    jmp         00559B9B
 00559B99    xor         eax,eax
 00559B9B    test        al,al
>00559B9D    je          00559BB0
 00559B9F    mov         eax,[007C4EDC];^gvar_007CA57C:Pointer
 00559BA4    mov         eax,dword ptr [eax]
 00559BA6    call        eax
 00559BA8    cmp         eax,1
 00559BAB    sbb         eax,eax
 00559BAD    inc         eax
>00559BAE    jmp         00559BB2
 00559BB0    xor         eax,eax
 00559BB2    test        al,al
>00559BB4    je          00559C3D
 00559BBA    cmp         word ptr [ebx+0CA],0
>00559BC2    jne         00559C3D
 00559BC4    cmp         word ptr [ebx+5A],0
>00559BC9    jne         00559C3D
 00559BCB    cmp         word ptr [ebx+62],0
>00559BD0    jne         00559C3D
 00559BD2    mov         eax,518A14;comdlg32.GetOpenFileNameW:Windows.BOOL
 00559BD7    cmp         eax,dword ptr [ebp-10]
>00559BDA    jne         00559BEF
 00559BDC    mov         ecx,ebx
 00559BDE    mov         dl,1
 00559BE0    mov         eax,[005589F0];TFileOpenDialogWrapper
 00559BE5    call        TFileDialogWrapper.Create
 00559BEA    mov         dword ptr [ebp-1C],eax
>00559BED    jmp         00559C00
 00559BEF    mov         ecx,ebx
 00559BF1    mov         dl,1
 00559BF3    mov         eax,[00558AA8];TFileSaveDialogWrapper
 00559BF8    call        TFileDialogWrapper.Create
 00559BFD    mov         dword ptr [ebp-1C],eax
 00559C00    xor         eax,eax
 00559C02    push        ebp
 00559C03    push        559C36
 00559C08    push        dword ptr fs:[eax]
 00559C0B    mov         dword ptr fs:[eax],esp
 00559C0E    mov         edx,dword ptr [ebp-14]
 00559C11    mov         eax,dword ptr [ebp-1C]
 00559C14    call        TFileDialogWrapper.Execute
 00559C19    neg         al
 00559C1B    sbb         eax,eax
 00559C1D    mov         dword ptr [ebp-18],eax
 00559C20    xor         eax,eax
 00559C22    pop         edx
 00559C23    pop         ecx
 00559C24    pop         ecx
 00559C25    mov         dword ptr fs:[eax],edx
 00559C28    push        559F1E
 00559C2D    mov         eax,dword ptr [ebp-1C]
 00559C30    call        TObject.Free
 00559C35    ret
>00559C36    jmp         @HandleFinally
>00559C3B    jmp         00559C2D
 00559C3D    mov         eax,dword ptr [ebx+9C]
 00559C43    mov         edx,dword ptr [eax]
 00559C45    call        dword ptr [edx+48]
 00559C48    lea         eax,[ebp-74]
 00559C4B    xor         ecx,ecx
 00559C4D    mov         edx,58
 00559C52    call        @FillChar
 00559C57    mov         eax,[007C4590];^gvar_0079EDE0
 00559C5C    cmp         dword ptr [eax],5
>00559C5F    jl          00559C6B
 00559C61    mov         eax,[007C4EC4];^gvar_0079EDDC
 00559C66    cmp         dword ptr [eax],2
>00559C69    je          00559C89
 00559C6B    mov         eax,[007C4EC4];^gvar_0079EDDC
 00559C70    cmp         dword ptr [eax],1
>00559C73    jne         00559C92
 00559C75    mov         eax,[007C4590];^gvar_0079EDE0
 00559C7A    cmp         dword ptr [eax],4
>00559C7D    jl          00559C92
 00559C7F    mov         eax,[007C4B24];^gvar_0079EDE4
 00559C84    cmp         dword ptr [eax],5A
>00559C87    jl          00559C92
 00559C89    mov         dword ptr [ebp-74],58
>00559C90    jmp         00559C99
 00559C92    mov         dword ptr [ebp-74],4C
 00559C99    mov         eax,[007C7C54];gvar_007C7C54
 00559C9E    mov         dword ptr [ebp-6C],eax
 00559CA1    lea         edx,[ebp-4]
 00559CA4    mov         eax,dword ptr [ebx+80]
 00559CAA    call        00559AB0
 00559CAF    mov         eax,dword ptr [ebp-4]
 00559CB2    call        @UStrToPWChar
 00559CB7    mov         dword ptr [ebp-68],eax
 00559CBA    mov         eax,dword ptr [ebx+84]
 00559CC0    mov         dword ptr [ebp-5C],eax
 00559CC3    mov         dword ptr [ebx+88],eax
 00559CC9    test        byte ptr [ebx+7C],40
>00559CCD    je          00559CD8
 00559CCF    mov         dword ptr [ebp-54],0FFEF
>00559CD6    jmp         00559CDF
 00559CD8    mov         dword ptr [ebp-54],104
 00559CDF    mov         edx,dword ptr [ebp-54]
 00559CE2    add         edx,2
 00559CE5    lea         eax,[ebp-8]
 00559CE8    call        @UStrSetLength
 00559CED    mov         eax,dword ptr [ebp-8]
 00559CF0    call        @UStrToPWChar
 00559CF5    mov         esi,eax
 00559CF7    mov         dword ptr [ebp-58],esi
 00559CFA    mov         eax,dword ptr [ebp-54]
 00559CFD    add         eax,2
 00559D00    mov         edx,eax
 00559D02    add         edx,edx
 00559D04    mov         eax,esi
 00559D06    xor         ecx,ecx
 00559D08    call        @FillChar
 00559D0D    mov         eax,dword ptr [ebx+98]
 00559D13    call        @UStrToPWChar
 00559D18    mov         edx,eax
 00559D1A    mov         ecx,dword ptr [ebp-54]
 00559D1D    mov         eax,dword ptr [ebp-58]
 00559D20    call        StrLCopy
 00559D25    cmp         dword ptr [ebx+8C],0
>00559D2C    jne         00559D41
 00559D2E    cmp         byte ptr ds:[7A16D0],0
>00559D35    je          00559D41
 00559D37    mov         eax,559F74
 00559D3C    mov         dword ptr [ebp-48],eax
>00559D3F    jmp         00559D4F
 00559D41    mov         eax,dword ptr [ebx+8C]
 00559D47    call        @UStrToPWChar
 00559D4C    mov         dword ptr [ebp-48],eax
 00559D4F    mov         eax,dword ptr [ebx+90]
 00559D55    call        @UStrToPWChar
 00559D5A    mov         dword ptr [ebp-44],eax
 00559D5D    mov         dword ptr [ebp-40],20
 00559D64    xor         eax,eax
 00559D66    mov         dword ptr [ebp-20],eax
 00559D69    xor         eax,eax
 00559D6B    mov         esi,7A1738
 00559D70    mov         edx,eax
 00559D72    cmp         dl,1F
>00559D75    ja          00559D7E
 00559D77    and         edx,7F
 00559D7A    bt          dword ptr [ebx+7C],edx
>00559D7E    jae         00559D85
 00559D80    mov         edx,dword ptr [esi]
 00559D82    or          dword ptr [ebp-40],edx
 00559D85    inc         eax
 00559D86    add         esi,4
 00559D89    cmp         al,16
>00559D8B    jne         00559D70
 00559D8D    mov         eax,[007C4770];^gvar_007CA5E0
 00559D92    cmp         byte ptr [eax],0
>00559D95    je          00559DFC
 00559D97    xor         dword ptr [ebp-40],80000
 00559D9E    mov         eax,[007C4590];^gvar_0079EDE0
 00559DA3    cmp         dword ptr [eax],5
>00559DA6    jl          00559DB2
 00559DA8    mov         eax,[007C4EC4];^gvar_0079EDDC
 00559DAD    cmp         dword ptr [eax],2
>00559DB0    je          00559DD0
 00559DB2    mov         eax,[007C4EC4];^gvar_0079EDDC
 00559DB7    cmp         dword ptr [eax],1
>00559DBA    jne         00559E03
 00559DBC    mov         eax,[007C4590];^gvar_0079EDE0
 00559DC1    cmp         dword ptr [eax],4
>00559DC4    jl          00559E03
 00559DC6    mov         eax,[007C4B24];^gvar_0079EDE4
 00559DCB    cmp         dword ptr [eax],5A
>00559DCE    jl          00559E03
 00559DD0    xor         eax,eax
 00559DD2    mov         esi,7A1790
 00559DD7    mov         edx,eax
 00559DD9    cmp         dl,7
>00559DDC    ja          00559DEB
 00559DDE    and         edx,7F
 00559DE1    movzx       ecx,byte ptr [ebx+0D0]
 00559DE8    bt          ecx,edx
>00559DEB    jae         00559DF2
 00559DED    mov         edx,dword ptr [esi]
 00559DEF    or          dword ptr [ebp-20],edx
 00559DF2    inc         eax
 00559DF3    add         esi,4
 00559DF6    cmp         al,1
>00559DF8    jne         00559DD7
>00559DFA    jmp         00559E03
 00559DFC    and         dword ptr [ebp-40],0FFF7FFFF
 00559E03    lea         eax,[ebp-0C]
 00559E06    mov         edx,dword ptr [ebx+94]
 00559E0C    call        @UStrLAsg
 00559E11    cmp         dword ptr [ebp-0C],0
>00559E15    jne         00559E3D
 00559E17    test        byte ptr [ebp-3E],8
>00559E1B    jne         00559E3D
 00559E1D    lea         edx,[ebp-0C]
 00559E20    mov         eax,dword ptr [ebx+98]
 00559E26    call        ExtractFileExt
 00559E2B    lea         eax,[ebp-0C]
 00559E2E    mov         ecx,1
 00559E33    mov         edx,1
 00559E38    call        @UStrDelete
 00559E3D    cmp         dword ptr [ebp-0C],0
>00559E41    je          00559E4E
 00559E43    mov         eax,dword ptr [ebp-0C]
 00559E46    call        @UStrToPWChar
 00559E4B    mov         dword ptr [ebp-38],eax
 00559E4E    test        byte ptr [ebx+7E],1
>00559E52    jne         00559E5E
 00559E54    mov         eax,[007C4770];^gvar_007CA5E0
 00559E59    cmp         byte ptr [eax],0
>00559E5C    jne         00559E67
 00559E5E    mov         dword ptr [ebp-30],558248;DialogHook:Windows.UINT_PTR
>00559E65    jmp         00559E6E
 00559E67    mov         dword ptr [ebp-30],5592CC;sub_005592CC
 00559E6E    mov         eax,dword ptr [ebx+70]
 00559E71    test        eax,eax
>00559E73    je          00559E86
 00559E75    or          dword ptr [ebp-40],40
 00559E79    mov         dword ptr [ebp-2C],eax
 00559E7C    mov         eax,dword ptr [ebx+50]
 00559E7F    test        eax,eax
>00559E81    je          00559E86
 00559E83    mov         dword ptr [ebp-6C],eax
 00559E86    mov         eax,[007C4A18];^Application:TApplication
 00559E8B    mov         eax,dword ptr [eax]
 00559E8D    cmp         byte ptr [eax+0E8],0
>00559E94    je          00559EC7
 00559E96    xor         ecx,ecx
 00559E98    mov         dl,1
 00559E9A    mov         eax,[005582B0];TRedirectorWindow
 00559E9F    call        TWinControl.Create
 00559EA4    mov         esi,eax
 00559EA6    mov         dword ptr [ebx+4C],esi
 00559EA9    mov         eax,esi
 00559EAB    mov         dword ptr [eax+290],ebx
 00559EB1    mov         edx,dword ptr [ebp-14]
 00559EB4    mov         dword ptr [eax+294],edx
 00559EBA    mov         eax,dword ptr [ebx+4C]
 00559EBD    call        TWinControl.GetHandle
 00559EC2    mov         dword ptr [ebp-70],eax
>00559EC5    jmp         00559ECF
 00559EC7    call        00558168
 00559ECC    mov         dword ptr [ebp-70],eax
 00559ECF    lea         ecx,[ebp-74]
 00559ED2    mov         edx,dword ptr [ebp-10]
 00559ED5    mov         eax,ebx
 00559ED7    mov         esi,dword ptr [eax]
 00559ED9    call        dword ptr [esi+50]
 00559EDC    mov         dword ptr [ebp-18],eax
 00559EDF    cmp         dword ptr [ebp-18],0
>00559EE3    je          00559F1E
 00559EE5    lea         edx,[ebp-74]
 00559EE8    mov         eax,ebx
 00559EEA    call        005597E0
 00559EEF    test        byte ptr [ebp-3F],4
>00559EF3    je          00559EFE
 00559EF5    or          dword ptr [ebx+7C],80
>00559EFC    jmp         00559F05
 00559EFE    and         dword ptr [ebx+7C],0FFFFFF7F
 00559F05    test        byte ptr [ebp-40],1
>00559F09    je          00559F11
 00559F0B    or          dword ptr [ebx+7C],1
>00559F0F    jmp         00559F15
 00559F11    and         dword ptr [ebx+7C],0FFFFFFFE
 00559F15    mov         eax,dword ptr [ebp-5C]
 00559F18    mov         dword ptr [ebx+84],eax
 00559F1E    xor         eax,eax
 00559F20    pop         edx
 00559F21    pop         ecx
 00559F22    pop         ecx
 00559F23    mov         dword ptr fs:[eax],edx
 00559F26    push        559F40
 00559F2B    lea         eax,[ebp-0C]
 00559F2E    mov         edx,3
 00559F33    call        @UStrArrayClr
 00559F38    ret
>00559F39    jmp         @HandleFinally
>00559F3E    jmp         00559F2B
 00559F40    mov         eax,dword ptr [ebp-18]
 00559F43    pop         esi
 00559F44    pop         ebx
 00559F45    mov         esp,ebp
 00559F47    pop         ebp
 00559F48    ret
*}
end;

//00559F78
procedure TOpenDialog.sub_00559F78;
begin
{*
 00559F78    push        ebx
 00559F79    cmp         word ptr [eax+0CA],0;TOpenDialog.?fCA:word
>00559F81    je          00559F91
 00559F83    mov         ebx,eax
 00559F85    mov         eax,dword ptr [ebx+0CC];TOpenDialog.FInternalWrapper:TObject
 00559F8B    call        dword ptr [ebx+0C8];TOpenDialog.FOnIncludeItem
 00559F91    pop         ebx
 00559F92    ret
*}
end;

//00559F94
function TSaveDialog.Execute(ParentWnd:HWND):Boolean;
begin
{*
 00559F94    push        ebx
 00559F95    push        esi
 00559F96    mov         esi,edx
 00559F98    mov         ebx,eax
 00559F9A    mov         edx,518A1C;comdlg32.GetSaveFileNameW:Windows.BOOL
 00559F9F    mov         ecx,esi
 00559FA1    mov         eax,ebx
 00559FA3    call        TOpenDialog.DoExecute
 00559FA8    cmp         eax,1
 00559FAB    sbb         eax,eax
 00559FAD    inc         eax
 00559FAE    pop         esi
 00559FAF    pop         ebx
 00559FB0    ret
*}
end;

//00559FB4
function FontDialogHook(Wnd:Windows.HWND; Msg:Windows.UINT; WParam:Windows.WPARAM; LParam:Windows.LPARAM):UINT_PTR; stdcall;
begin
{*
 00559FB4    push        ebp
 00559FB5    mov         ebp,esp
 00559FB7    push        ebx
 00559FB8    mov         eax,dword ptr [ebp+10]
 00559FBB    mov         edx,dword ptr [ebp+0C]
 00559FBE    mov         ecx,dword ptr [ebp+8]
 00559FC1    cmp         edx,111
>00559FC7    jne         00559FF8
 00559FC9    mov         ebx,0FFFF
 00559FCE    and         ebx,eax
 00559FD0    cmp         ebx,402
>00559FD6    jne         00559FF8
 00559FD8    mov         ebx,eax
 00559FDA    shr         ebx,10
 00559FDD    test        ebx,0FFFF
>00559FE3    jne         00559FF8
 00559FE5    mov         edx,ecx
 00559FE7    mov         eax,[007CA6EC];gvar_007CA6EC:TFontDialog
 00559FEC    call        TFontDialog.DoApply
 00559FF1    mov         eax,1
>00559FF6    jmp         0055A004
 00559FF8    mov         ebx,dword ptr [ebp+14]
 00559FFB    push        ebx
 00559FFC    push        eax
 00559FFD    push        edx
 00559FFE    push        ecx
 00559FFF    call        DialogHook
 0055A004    pop         ebx
 0055A005    pop         ebp
 0055A006    ret         10
*}
end;

//0055A00C
constructor TFontDialog.Create(AOwner:TComponent);
begin
{*
 0055A00C    push        ebx
 0055A00D    push        esi
 0055A00E    test        dl,dl
>0055A010    je          0055A01A
 0055A012    add         esp,0FFFFFFF0
 0055A015    call        @ClassCreate
 0055A01A    mov         ebx,edx
 0055A01C    mov         esi,eax
 0055A01E    xor         edx,edx
 0055A020    mov         eax,esi
 0055A022    call        TCommonDialog.Create
 0055A027    mov         dl,1
 0055A029    mov         eax,[004BDD74];TFont
 0055A02E    call        TFont.Create;TFont.Create
 0055A033    mov         dword ptr [esi+78],eax;TFontDialog.FFont:TFont
 0055A036    movzx       eax,word ptr ds:[55A05C];0x4 gvar_0055A05C
 0055A03D    mov         word ptr [esi+7D],ax;TFontDialog.FOptions:TFontDialogOptions
 0055A041    mov         eax,esi
 0055A043    test        bl,bl
>0055A045    je          0055A056
 0055A047    call        @AfterConstruction
 0055A04C    pop         dword ptr fs:[0]
 0055A053    add         esp,0C
 0055A056    mov         eax,esi
 0055A058    pop         esi
 0055A059    pop         ebx
 0055A05A    ret
*}
end;

//0055A060
destructor TColorDialog.Destroy();
begin
{*
 0055A060    push        ebx
 0055A061    push        esi
 0055A062    call        @BeforeDestruction
 0055A067    mov         ebx,edx
 0055A069    mov         esi,eax
 0055A06B    mov         eax,dword ptr [esi+78]
 0055A06E    call        TObject.Free
 0055A073    mov         dl,0FC
 0055A075    and         dl,bl
 0055A077    mov         eax,esi
 0055A079    call        TCommonDialog.Destroy
 0055A07E    test        bl,bl
>0055A080    jle         0055A089
 0055A082    mov         eax,esi
 0055A084    call        @ClassDestroy
 0055A089    pop         esi
 0055A08A    pop         ebx
 0055A08B    ret
*}
end;

//0055A08C
{*procedure sub_0055A08C(?:?);
begin
 0055A08C    cmp         dword ptr [edx],111
>0055A092    jne         0055A0BD
 0055A094    cmp         word ptr [edx+6],9
>0055A099    jne         0055A0BD
 0055A09B    movzx       ecx,word ptr [edx+4]
 0055A09F    cmp         cx,473
>0055A0A4    jne         0055A0AF
 0055A0A6    mov         byte ptr [eax+91],1;TFontDialog.FFontColorModified:Boolean
>0055A0AD    jmp         0055A0BD
 0055A0AF    cmp         cx,474
>0055A0B4    jne         0055A0BD
 0055A0B6    mov         byte ptr [eax+90],1;TFontDialog.FFontCharsetModified:Boolean
 0055A0BD    call        005586C4
 0055A0C2    ret
end;*}

//0055A0C4
{*procedure TFontDialog.sub_0055A0C4(?:?);
begin
 0055A0C4    push        ebx
 0055A0C5    cmp         word ptr [eax+82],0;TFontDialog.?f82:word
>0055A0CD    je          0055A0E1
 0055A0CF    mov         ebx,eax
 0055A0D1    mov         ecx,edx
 0055A0D3    mov         edx,eax
 0055A0D5    mov         eax,dword ptr [ebx+84];TFontDialog.FMaxFontSize:Integer
 0055A0DB    call        dword ptr [ebx+80];TFontDialog.FOnApply
 0055A0E1    pop         ebx
 0055A0E2    ret
end;*}

//0055A0E4
procedure TFontDialog.DoApply(Wnd:Windows.HWND);
begin
{*
 0055A0E4    push        ebp
 0055A0E5    mov         ebp,esp
 0055A0E7    add         esp,0FFFFFFA0
 0055A0EA    push        ebx
 0055A0EB    push        esi
 0055A0EC    push        edi
 0055A0ED    mov         ebx,edx
 0055A0EF    mov         dword ptr [ebp-4],eax
 0055A0F2    lea         eax,[ebp-60]
 0055A0F5    push        eax
 0055A0F6    push        0
 0055A0F8    xor         ecx,ecx
 0055A0FA    mov         edx,401
 0055A0FF    mov         eax,ebx
 0055A101    call        SendGetStructMessage
 0055A106    lea         edx,[ebp-60]
 0055A109    mov         eax,dword ptr [ebp-4]
 0055A10C    call        0055A3C0
 0055A111    push        0
 0055A113    push        0
 0055A115    push        147
 0055A11A    push        473
 0055A11F    push        ebx
 0055A120    call        user32.SendDlgItemMessageW
 0055A125    mov         esi,eax
 0055A127    cmp         esi,0FFFFFFFF
>0055A12A    je          0055A14C
 0055A12C    push        0
 0055A12E    push        esi
 0055A12F    push        150
 0055A134    push        473
 0055A139    push        ebx
 0055A13A    call        user32.SendDlgItemMessageW
 0055A13F    mov         edx,eax
 0055A141    mov         eax,dword ptr [ebp-4]
 0055A144    mov         eax,dword ptr [eax+78]
 0055A147    call        TFont.SetColor
 0055A14C    xor         eax,eax
 0055A14E    push        ebp
 0055A14F    push        55A172
 0055A154    push        dword ptr fs:[eax]
 0055A157    mov         dword ptr fs:[eax],esp
 0055A15A    mov         edx,ebx
 0055A15C    mov         eax,dword ptr [ebp-4]
 0055A15F    mov         si,0FFED
 0055A163    call        @CallDynaInst
 0055A168    xor         eax,eax
 0055A16A    pop         edx
 0055A16B    pop         ecx
 0055A16C    pop         ecx
 0055A16D    mov         dword ptr fs:[eax],edx
>0055A170    jmp         0055A18B
>0055A172    jmp         @HandleAnyException
 0055A177    mov         eax,[007C4A18];^Application:TApplication
 0055A17C    mov         eax,dword ptr [eax]
 0055A17E    mov         edx,dword ptr [ebp-4]
 0055A181    call        TApplication.HandleException
 0055A186    call        @DoneExcept
 0055A18B    pop         edi
 0055A18C    pop         esi
 0055A18D    pop         ebx
 0055A18E    mov         esp,ebp
 0055A190    pop         ebp
 0055A191    ret
*}
end;

//0055A194
function TFontDialog.Execute(ParentWnd:HWND):Boolean;
begin
{*
 0055A194    push        ebp
 0055A195    mov         ebp,esp
 0055A197    add         esp,0FFFFFF58
 0055A19D    push        ebx
 0055A19E    push        esi
 0055A19F    push        edi
 0055A1A0    xor         ecx,ecx
 0055A1A2    mov         dword ptr [ebp-0A8],ecx
 0055A1A8    mov         dword ptr [ebp-4],ecx
 0055A1AB    mov         dword ptr [ebp-8],edx
 0055A1AE    mov         ebx,eax
 0055A1B0    xor         eax,eax
 0055A1B2    push        ebp
 0055A1B3    push        55A39F
 0055A1B8    push        dword ptr fs:[eax]
 0055A1BB    mov         dword ptr fs:[eax],esp
 0055A1BE    mov         dword ptr [ebp-45],3C
 0055A1C5    lea         eax,[ebp-0A4]
 0055A1CB    mov         dword ptr [ebp-39],eax
 0055A1CE    lea         eax,[ebp-0A4]
 0055A1D4    push        eax
 0055A1D5    push        5C
 0055A1D7    mov         eax,dword ptr [ebx+78];TFontDialog.FFont:TFont
 0055A1DA    call        TFont.GetHandle
 0055A1DF    push        eax
 0055A1E0    call        gdi32.GetObjectW
 0055A1E5    lea         eax,[ebp-4]
 0055A1E8    lea         edx,[ebp-88]
 0055A1EE    mov         ecx,20
 0055A1F3    call        @UStrFromWArray
 0055A1F8    xor         eax,eax
 0055A1FA    mov         dword ptr [ebp-3D],eax
 0055A1FD    cmp         byte ptr [ebx+7C],0;TFontDialog.FDevice:TFontDialogDevice
>0055A201    je          0055A210
 0055A203    call        Printer
 0055A208    call        TPrinter.GetHandle
 0055A20D    mov         dword ptr [ebp-3D],eax
 0055A210    movzx       eax,byte ptr [ebx+7C];TFontDialog.FDevice:TFontDialogDevice
 0055A214    mov         eax,dword ptr [eax*4+7A17D4]
 0055A21B    or          eax,48
 0055A21E    mov         dword ptr [ebp-31],eax
 0055A221    xor         eax,eax
 0055A223    mov         esi,7A1794
 0055A228    mov         edx,eax
 0055A22A    cmp         dl,0F
>0055A22D    ja          0055A237
 0055A22F    and         edx,7F
 0055A232    bt          word ptr [ebx+7D],dx;TFontDialog.FOptions:TFontDialogOptions
>0055A237    jae         0055A23E
 0055A239    mov         edx,dword ptr [esi]
 0055A23B    or          dword ptr [ebp-31],edx
 0055A23E    inc         eax
 0055A23F    add         esi,4
 0055A242    cmp         al,10
>0055A244    jne         0055A228
 0055A246    cmp         word ptr [ebx+82],0;TFontDialog.?f82:word
>0055A24E    je          0055A257
 0055A250    or          dword ptr [ebp-31],200
 0055A257    mov         eax,dword ptr [ebx+70];TFontDialog.FTemplate:PWideChar
 0055A25A    test        eax,eax
>0055A25C    je          0055A26F
 0055A25E    mov         dword ptr [ebp-21],eax
 0055A261    or          dword ptr [ebp-31],10
 0055A265    mov         eax,dword ptr [ebx+50];TFontDialog.FTemplateModule:NativeUInt
 0055A268    test        eax,eax
>0055A26A    je          0055A26F
 0055A26C    mov         dword ptr [ebp-1D],eax
 0055A26F    mov         eax,dword ptr [ebx+78];TFontDialog.FFont:TFont
 0055A272    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 0055A275    call        ColorToRGB
 0055A27A    mov         dword ptr [ebp-2D],eax
 0055A27D    xor         eax,eax
 0055A27F    mov         dword ptr [ebp-29],eax
 0055A282    mov         dword ptr [ebp-25],559FB4;FontDialogHook:Windows.UINT_PTR
 0055A289    mov         eax,dword ptr [ebx+88];TFontDialog.FMinFontSize:Integer
 0055A28F    mov         dword ptr [ebp-11],eax
 0055A292    mov         eax,dword ptr [ebx+8C];TFontDialog.FMaxFontSize:Integer
 0055A298    mov         dword ptr [ebp-0D],eax
 0055A29B    cmp         eax,dword ptr [ebp-11]
>0055A29E    jge         0055A2A7
 0055A2A0    and         dword ptr [ebp-31],0FFFFDFFF
 0055A2A7    mov         eax,[007C4A18];^Application:TApplication
 0055A2AC    mov         eax,dword ptr [eax]
 0055A2AE    cmp         byte ptr [eax+0E8],0;TApplication.FModalPopupMode:TPopupMode
>0055A2B5    je          0055A2E8
 0055A2B7    xor         ecx,ecx
 0055A2B9    mov         dl,1
 0055A2BB    mov         eax,[005582B0];TRedirectorWindow
 0055A2C0    call        TWinControl.Create;TRedirectorWindow.Create
 0055A2C5    mov         esi,eax
 0055A2C7    mov         dword ptr [ebx+4C],esi;TFontDialog.FRedirector:TWinControl
 0055A2CA    mov         eax,esi
 0055A2CC    mov         dword ptr [eax+290],ebx;TRedirectorWindow.FCommonDialog:TCommonDialog
 0055A2D2    mov         edx,dword ptr [ebp-8]
 0055A2D5    mov         dword ptr [eax+294],edx;TRedirectorWindow.FFormHandle:NativeUInt
 0055A2DB    mov         eax,dword ptr [ebx+4C];TFontDialog.FRedirector:TWinControl
 0055A2DE    call        TWinControl.GetHandle
 0055A2E3    mov         dword ptr [ebp-41],eax
>0055A2E6    jmp         0055A2F0
 0055A2E8    call        00558168
 0055A2ED    mov         dword ptr [ebp-41],eax
 0055A2F0    mov         byte ptr [ebx+91],0;TFontDialog.FFontColorModified:Boolean
 0055A2F7    mov         byte ptr [ebx+90],0;TFontDialog.FFontCharsetModified:Boolean
 0055A2FE    mov         esi,dword ptr ds:[7CA6EC];gvar_007CA6EC:TFontDialog
 0055A304    mov         dword ptr ds:[7CA6EC],ebx;gvar_007CA6EC:TFontDialog
 0055A30A    lea         ecx,[ebp-45]
 0055A30D    mov         edx,518A24;comdlg32.ChooseFontW:Windows.BOOL
 0055A312    mov         eax,ebx
 0055A314    mov         edi,dword ptr [eax]
 0055A316    call        dword ptr [edi+50];TFontDialog.sub_00558714
 0055A319    cmp         eax,1
 0055A31C    sbb         eax,eax
 0055A31E    inc         eax
 0055A31F    mov         byte ptr [ebp-9],al
 0055A322    mov         dword ptr ds:[7CA6EC],esi;gvar_007CA6EC:TFontDialog
 0055A328    cmp         byte ptr [ebp-9],0
>0055A32C    je          0055A37E
 0055A32E    lea         eax,[ebp-0A8]
 0055A334    lea         edx,[ebp-88]
 0055A33A    mov         ecx,20
 0055A33F    call        @UStrFromWArray
 0055A344    mov         edx,dword ptr [ebp-0A8]
 0055A34A    mov         eax,dword ptr [ebp-4]
 0055A34D    call        AnsiCompareText
 0055A352    test        eax,eax
>0055A354    je          0055A35D
 0055A356    mov         byte ptr [ebx+90],1;TFontDialog.FFontCharsetModified:Boolean
 0055A35D    lea         edx,[ebp-0A4]
 0055A363    mov         eax,ebx
 0055A365    call        0055A3C0
 0055A36A    cmp         byte ptr [ebx+91],0;TFontDialog.FFontColorModified:Boolean
>0055A371    je          0055A37E
 0055A373    mov         edx,dword ptr [ebp-2D]
 0055A376    mov         eax,dword ptr [ebx+78];TFontDialog.FFont:TFont
 0055A379    call        TFont.SetColor
 0055A37E    xor         eax,eax
 0055A380    pop         edx
 0055A381    pop         ecx
 0055A382    pop         ecx
 0055A383    mov         dword ptr fs:[eax],edx
 0055A386    push        55A3A6
 0055A38B    lea         eax,[ebp-0A8]
 0055A391    call        @UStrClr
 0055A396    lea         eax,[ebp-4]
 0055A399    call        @UStrClr
 0055A39E    ret
>0055A39F    jmp         @HandleFinally
>0055A3A4    jmp         0055A38B
 0055A3A6    movzx       eax,byte ptr [ebp-9]
 0055A3AA    pop         edi
 0055A3AB    pop         esi
 0055A3AC    pop         ebx
 0055A3AD    mov         esp,ebp
 0055A3AF    pop         ebp
 0055A3B0    ret
*}
end;

//0055A3B4
procedure TFontDialog.SetFont(Value:TFont);
begin
{*
 0055A3B4    mov         eax,dword ptr [eax+78];TFontDialog.FFont:TFont
 0055A3B7    mov         ecx,dword ptr [eax]
 0055A3B9    call        dword ptr [ecx+8];TFont.Assign
 0055A3BC    ret
*}
end;

//0055A3C0
{*procedure sub_0055A3C0(?:TFontDialog; ?:?);
begin
 0055A3C0    push        ebp
 0055A3C1    mov         ebp,esp
 0055A3C3    push        0
 0055A3C5    push        ebx
 0055A3C6    push        esi
 0055A3C7    push        edi
 0055A3C8    mov         edi,edx
 0055A3CA    mov         esi,eax
 0055A3CC    xor         eax,eax
 0055A3CE    push        ebp
 0055A3CF    push        55A462
 0055A3D4    push        dword ptr fs:[eax]
 0055A3D7    mov         dword ptr fs:[eax],esp
 0055A3DA    lea         eax,[ebp-4]
 0055A3DD    lea         edx,[edi+1C]
 0055A3E0    mov         ecx,20
 0055A3E5    call        @UStrFromWArray
 0055A3EA    mov         edx,dword ptr [ebp-4]
 0055A3ED    mov         eax,dword ptr [esi+78];TFontDialog.FFont:TFont
 0055A3F0    call        TFont.SetName
 0055A3F5    mov         edx,dword ptr [edi]
 0055A3F7    mov         eax,dword ptr [esi+78];TFontDialog.FFont:TFont
 0055A3FA    call        TFont.SetHeight
 0055A3FF    cmp         byte ptr [esi+90],0;TFontDialog.FFontCharsetModified:Boolean
>0055A406    je          0055A414
 0055A408    movzx       edx,byte ptr [edi+17]
 0055A40C    mov         eax,dword ptr [esi+78];TFontDialog.FFont:TFont
 0055A40F    call        TFont.SetCharset
 0055A414    movzx       ebx,byte ptr ds:[55A470];0x0 gvar_0055A470
 0055A41B    cmp         dword ptr [edi+10],190
>0055A422    jle         0055A427
 0055A424    or          bl,1
 0055A427    cmp         byte ptr [edi+14],0
>0055A42B    je          0055A430
 0055A42D    or          bl,2
 0055A430    cmp         byte ptr [edi+15],0
>0055A434    je          0055A439
 0055A436    or          bl,4
 0055A439    cmp         byte ptr [edi+16],0
>0055A43D    je          0055A442
 0055A43F    or          bl,8
 0055A442    mov         edx,ebx
 0055A444    mov         eax,dword ptr [esi+78];TFontDialog.FFont:TFont
 0055A447    call        TFont.SetStyle
 0055A44C    xor         eax,eax
 0055A44E    pop         edx
 0055A44F    pop         ecx
 0055A450    pop         ecx
 0055A451    mov         dword ptr fs:[eax],edx
 0055A454    push        55A469
 0055A459    lea         eax,[ebp-4]
 0055A45C    call        @UStrClr
 0055A461    ret
>0055A462    jmp         @HandleFinally
>0055A467    jmp         0055A459
 0055A469    pop         edi
 0055A46A    pop         esi
 0055A46B    pop         ebx
 0055A46C    pop         ecx
 0055A46D    pop         ebp
 0055A46E    ret
end;*}

//0055A474
procedure GetPrinter(var DeviceMode:Windows.HGLOBAL; var DeviceNames:Windows.HGLOBAL);
begin
{*
 0055A474    push        ebp
 0055A475    mov         ebp,esp
 0055A477    add         esp,0FFFFF004
 0055A47D    push        eax
 0055A47E    add         esp,0FFFFF7FC
 0055A484    push        ebx
 0055A485    push        esi
 0055A486    push        edi
 0055A487    mov         dword ptr [ebp-4],edx
 0055A48A    mov         ebx,eax
 0055A48C    lea         eax,[ebp-1804]
 0055A492    push        eax
 0055A493    push        ebx
 0055A494    call        Printer
 0055A499    lea         ecx,[ebp-1004]
 0055A49F    lea         edx,[ebp-804]
 0055A4A5    call        TPrinter.GetPrinter
 0055A4AA    cmp         dword ptr [ebx],0
>0055A4AD    je          0055A594
 0055A4B3    lea         eax,[ebp-804]
 0055A4B9    call        @PWCharLen
 0055A4BE    mov         ebx,eax
 0055A4C0    lea         eax,[ebp-1004]
 0055A4C6    call        @PWCharLen
 0055A4CB    mov         esi,eax
 0055A4CD    lea         eax,[ebp-1804]
 0055A4D3    call        @PWCharLen
 0055A4D8    mov         edi,eax
 0055A4DA    add         esi,ebx
 0055A4DC    add         edi,esi
 0055A4DE    add         edi,3
 0055A4E1    mov         eax,edi
 0055A4E3    add         eax,eax
 0055A4E5    add         eax,8
 0055A4E8    push        eax
 0055A4E9    push        42
 0055A4EB    call        kernel32.GlobalAlloc
 0055A4F0    mov         edx,dword ptr [ebp-4]
 0055A4F3    mov         dword ptr [edx],eax
 0055A4F5    mov         eax,dword ptr [ebp-4]
 0055A4F8    mov         eax,dword ptr [eax]
 0055A4FA    push        eax
 0055A4FB    call        kernel32.GlobalLock
 0055A500    mov         esi,eax
 0055A502    xor         eax,eax
 0055A504    push        ebp
 0055A505    push        55A58D
 0055A50A    push        dword ptr fs:[eax]
 0055A50D    mov         dword ptr fs:[eax],esp
 0055A510    mov         ebx,esi
 0055A512    add         ebx,8
 0055A515    mov         edi,esi
 0055A517    mov         eax,ebx
 0055A519    sub         eax,esi
 0055A51B    sar         eax,1
>0055A51D    jns         0055A522
 0055A51F    adc         eax,0
 0055A522    mov         word ptr [edi],ax
 0055A525    lea         edx,[ebp-1004]
 0055A52B    mov         eax,ebx
 0055A52D    call        StrECopy
 0055A532    add         eax,2
 0055A535    mov         ebx,eax
 0055A537    mov         eax,ebx
 0055A539    sub         eax,esi
 0055A53B    sar         eax,1
>0055A53D    jns         0055A542
 0055A53F    adc         eax,0
 0055A542    mov         word ptr [edi+2],ax
 0055A546    lea         edx,[ebp-804]
 0055A54C    mov         eax,ebx
 0055A54E    call        StrECopy
 0055A553    add         eax,2
 0055A556    mov         ebx,eax
 0055A558    mov         eax,ebx
 0055A55A    sub         eax,esi
 0055A55C    sar         eax,1
>0055A55E    jns         0055A563
 0055A560    adc         eax,0
 0055A563    mov         word ptr [edi+4],ax
 0055A567    lea         edx,[ebp-1804]
 0055A56D    mov         eax,ebx
 0055A56F    call        StrCopy
 0055A574    xor         eax,eax
 0055A576    pop         edx
 0055A577    pop         ecx
 0055A578    pop         ecx
 0055A579    mov         dword ptr fs:[eax],edx
 0055A57C    push        55A594
 0055A581    mov         eax,dword ptr [ebp-4]
 0055A584    mov         eax,dword ptr [eax]
 0055A586    push        eax
 0055A587    call        kernel32.GlobalUnlock
 0055A58C    ret
>0055A58D    jmp         @HandleFinally
>0055A592    jmp         0055A581
 0055A594    pop         edi
 0055A595    pop         esi
 0055A596    pop         ebx
 0055A597    mov         esp,ebp
 0055A599    pop         ebp
 0055A59A    ret
*}
end;

//0055A59C
procedure SetPrinter(DeviceMode:Windows.HGLOBAL; DeviceNames:Windows.HGLOBAL);
begin
{*
 0055A59C    push        ebp
 0055A59D    mov         ebp,esp
 0055A59F    add         esp,0FFFFFFF8
 0055A5A2    push        ebx
 0055A5A3    push        esi
 0055A5A4    push        edi
 0055A5A5    mov         dword ptr [ebp-8],edx
 0055A5A8    mov         dword ptr [ebp-4],eax
 0055A5AB    mov         eax,dword ptr [ebp-8]
 0055A5AE    push        eax
 0055A5AF    call        kernel32.GlobalLock
 0055A5B4    mov         ebx,eax
 0055A5B6    xor         eax,eax
 0055A5B8    push        ebp
 0055A5B9    push        55A610
 0055A5BE    push        dword ptr fs:[eax]
 0055A5C1    mov         dword ptr fs:[eax],esp
 0055A5C4    mov         esi,ebx
 0055A5C6    movzx       eax,word ptr [esi+4]
 0055A5CA    add         eax,eax
 0055A5CC    mov         edi,ebx
 0055A5CE    add         eax,edi
 0055A5D0    push        eax
 0055A5D1    mov         eax,dword ptr [ebp-4]
 0055A5D4    push        eax
 0055A5D5    call        Printer
 0055A5DA    movzx       edx,word ptr [esi]
 0055A5DD    mov         ecx,edx
 0055A5DF    add         ecx,ecx
 0055A5E1    add         ecx,edi
 0055A5E3    movzx       edx,word ptr [esi+2]
 0055A5E7    add         edx,edx
 0055A5E9    add         edx,edi
 0055A5EB    call        TPrinter.SetPrinter
 0055A5F0    xor         eax,eax
 0055A5F2    pop         edx
 0055A5F3    pop         ecx
 0055A5F4    pop         ecx
 0055A5F5    mov         dword ptr fs:[eax],edx
 0055A5F8    push        55A617
 0055A5FD    mov         eax,dword ptr [ebp-8]
 0055A600    push        eax
 0055A601    call        kernel32.GlobalUnlock
 0055A606    mov         eax,dword ptr [ebp-8]
 0055A609    push        eax
 0055A60A    call        kernel32.GlobalFree
 0055A60F    ret
>0055A610    jmp         @HandleFinally
>0055A615    jmp         0055A5FD
 0055A617    pop         edi
 0055A618    pop         esi
 0055A619    pop         ebx
 0055A61A    pop         ecx
 0055A61B    pop         ecx
 0055A61C    pop         ebp
 0055A61D    ret
*}
end;

//0055A620
function CopyData(Handle:Windows.THandle):THandle;
begin
{*
 0055A620    push        ebp
 0055A621    mov         ebp,esp
 0055A623    add         esp,0FFFFFFF8
 0055A626    push        ebx
 0055A627    push        esi
 0055A628    mov         dword ptr [ebp-4],eax
 0055A62B    cmp         dword ptr [ebp-4],0
>0055A62F    je          0055A6A9
 0055A631    mov         eax,dword ptr [ebp-4]
 0055A634    push        eax
 0055A635    call        kernel32.GlobalSize
 0055A63A    mov         ebx,eax
 0055A63C    push        ebx
 0055A63D    push        42
 0055A63F    call        kernel32.GlobalAlloc
 0055A644    mov         dword ptr [ebp-8],eax
 0055A647    cmp         dword ptr [ebp-8],0
>0055A64B    je          0055A6AE
 0055A64D    xor         edx,edx
 0055A64F    push        ebp
 0055A650    push        55A6A2
 0055A655    push        dword ptr fs:[edx]
 0055A658    mov         dword ptr fs:[edx],esp
 0055A65B    mov         eax,dword ptr [ebp-4]
 0055A65E    push        eax
 0055A65F    call        kernel32.GlobalLock
 0055A664    mov         esi,eax
 0055A666    mov         eax,dword ptr [ebp-8]
 0055A669    push        eax
 0055A66A    call        kernel32.GlobalLock
 0055A66F    test        esi,esi
>0055A671    je          0055A682
 0055A673    test        eax,eax
>0055A675    je          0055A682
 0055A677    mov         edx,eax
 0055A679    mov         eax,esi
 0055A67B    mov         ecx,ebx
 0055A67D    call        Move
 0055A682    xor         eax,eax
 0055A684    pop         edx
 0055A685    pop         ecx
 0055A686    pop         ecx
 0055A687    mov         dword ptr fs:[eax],edx
 0055A68A    push        55A6AE
 0055A68F    mov         eax,dword ptr [ebp-4]
 0055A692    push        eax
 0055A693    call        kernel32.GlobalUnlock
 0055A698    mov         eax,dword ptr [ebp-8]
 0055A69B    push        eax
 0055A69C    call        kernel32.GlobalUnlock
 0055A6A1    ret
>0055A6A2    jmp         @HandleFinally
>0055A6A7    jmp         0055A68F
 0055A6A9    xor         eax,eax
 0055A6AB    mov         dword ptr [ebp-8],eax
 0055A6AE    mov         eax,dword ptr [ebp-8]
 0055A6B1    pop         esi
 0055A6B2    pop         ebx
 0055A6B3    pop         ecx
 0055A6B4    pop         ecx
 0055A6B5    pop         ebp
 0055A6B6    ret
*}
end;

//0055A6B8
procedure TPrinterSetupDialog.Execute(ParentWnd:HWND);
begin
{*
 0055A6B8    push        ebx
 0055A6B9    push        esi
 0055A6BA    push        edi
 0055A6BB    add         esp,0FFFFFFB8
 0055A6BE    mov         edi,edx
 0055A6C0    mov         ebx,eax
 0055A6C2    lea         eax,[esp+4]
 0055A6C6    xor         ecx,ecx
 0055A6C8    mov         edx,42
 0055A6CD    call        @FillChar
 0055A6D2    mov         dword ptr [esp+4],42
 0055A6DA    mov         eax,[007C7C54];gvar_007C7C54
 0055A6DF    mov         dword ptr [esp+26],eax
 0055A6E3    lea         edx,[esp+10]
 0055A6E7    mov         eax,esp
 0055A6E9    call        GetPrinter
 0055A6EE    mov         eax,dword ptr [esp]
 0055A6F1    call        CopyData
 0055A6F6    mov         dword ptr [esp+0C],eax
 0055A6FA    mov         dword ptr [esp+18],2040
 0055A702    mov         dword ptr [esp+32],558248;DialogHook:Windows.UINT_PTR
 0055A70A    mov         eax,[007C4A18];^Application:TApplication
 0055A70F    mov         eax,dword ptr [eax]
 0055A711    cmp         byte ptr [eax+0E8],0;TApplication.FModalPopupMode:TPopupMode
>0055A718    je          0055A749
 0055A71A    xor         ecx,ecx
 0055A71C    mov         dl,1
 0055A71E    mov         eax,[005582B0];TRedirectorWindow
 0055A723    call        TWinControl.Create;TRedirectorWindow.Create
 0055A728    mov         esi,eax
 0055A72A    mov         dword ptr [ebx+4C],esi;TPrinterSetupDialog.FRedirector:TWinControl
 0055A72D    mov         eax,esi
 0055A72F    mov         dword ptr [eax+290],ebx;TRedirectorWindow.FCommonDialog:TCommonDialog
 0055A735    mov         dword ptr [eax+294],edi;TRedirectorWindow.FFormHandle:NativeUInt
 0055A73B    mov         eax,dword ptr [ebx+4C];TPrinterSetupDialog.FRedirector:TWinControl
 0055A73E    call        TWinControl.GetHandle
 0055A743    mov         dword ptr [esp+8],eax
>0055A747    jmp         0055A752
 0055A749    call        00558168
 0055A74E    mov         dword ptr [esp+8],eax
 0055A752    lea         ecx,[esp+4]
 0055A756    mov         edx,518A2C;comdlg32.PrintDlgW:Windows.BOOL
 0055A75B    mov         eax,ebx
 0055A75D    mov         ebx,dword ptr [eax]
 0055A75F    call        dword ptr [ebx+50];TPrinterSetupDialog.sub_00558714
 0055A762    cmp         eax,1
 0055A765    sbb         eax,eax
 0055A767    inc         eax
 0055A768    mov         ebx,eax
 0055A76A    test        bl,bl
>0055A76C    je          0055A77D
 0055A76E    mov         edx,dword ptr [esp+10]
 0055A772    mov         eax,dword ptr [esp+0C]
 0055A776    call        SetPrinter
>0055A77B    jmp         0055A799
 0055A77D    mov         eax,dword ptr [esp+0C]
 0055A781    test        eax,eax
>0055A783    je          0055A78B
 0055A785    push        eax
 0055A786    call        kernel32.GlobalFree
 0055A78B    mov         eax,dword ptr [esp+10]
 0055A78F    test        eax,eax
>0055A791    je          0055A799
 0055A793    push        eax
 0055A794    call        kernel32.GlobalFree
 0055A799    mov         eax,ebx
 0055A79B    add         esp,48
 0055A79E    pop         edi
 0055A79F    pop         esi
 0055A7A0    pop         ebx
 0055A7A1    ret
*}
end;

//0055A7A4
{*function TPrintDialog.SetCopies(Value:Integer):?;
begin
 0055A7A4    push        ebx
 0055A7A5    mov         ebx,edx
 0055A7A7    mov         dword ptr [eax+8C],ebx;TPrintDialog.FCopies:Integer
 0055A7AD    call        Printer
 0055A7B2    mov         edx,ebx
 0055A7B4    call        TPrinter.SetNumCopies
 0055A7B9    pop         ebx
 0055A7BA    ret
end;*}

//0055A7BC
procedure TPrintDialog.Execute(ParentWnd:HWND);
begin
{*
 0055A7BC    push        ebx
 0055A7BD    push        esi
 0055A7BE    push        edi
 0055A7BF    push        ebp
 0055A7C0    add         esp,0FFFFFFB8
 0055A7C3    mov         ebp,edx
 0055A7C5    mov         edi,eax
 0055A7C7    lea         esi,[esp+4]
 0055A7CB    mov         eax,esi
 0055A7CD    xor         ecx,ecx
 0055A7CF    mov         edx,42
 0055A7D4    call        @FillChar
 0055A7D9    mov         dword ptr [esi],42
 0055A7DF    mov         eax,[007C7C54];gvar_007C7C54
 0055A7E4    mov         dword ptr [esi+22],eax
 0055A7E7    lea         edx,[esi+0C]
 0055A7EA    mov         eax,esp
 0055A7EC    call        GetPrinter
 0055A7F1    mov         eax,dword ptr [esp]
 0055A7F4    call        CopyData
 0055A7F9    mov         dword ptr [esi+8],eax
 0055A7FC    movzx       eax,byte ptr [edi+83];TPrintDialog.FPrintRange:TPrintRange
 0055A803    mov         eax,dword ptr [eax*4+7A17E0]
 0055A80A    or          eax,3000
 0055A80F    mov         dword ptr [esi+14],eax
 0055A812    cmp         byte ptr [edi+80],0;TPrintDialog.FCollate:Boolean
>0055A819    je          0055A81F
 0055A81B    add         dword ptr [esi+14],10
 0055A81F    test        byte ptr [edi+81],1;TPrintDialog.FOptions:TPrintDialogOptions
>0055A826    jne         0055A82F
 0055A828    add         dword ptr [esi+14],100000
 0055A82F    test        byte ptr [edi+81],2;TPrintDialog.FOptions:TPrintDialogOptions
>0055A836    jne         0055A83C
 0055A838    add         dword ptr [esi+14],8
 0055A83C    test        byte ptr [edi+81],4;TPrintDialog.FOptions:TPrintDialogOptions
>0055A843    jne         0055A849
 0055A845    add         dword ptr [esi+14],4
 0055A849    test        byte ptr [edi+81],20;TPrintDialog.FOptions:TPrintDialogOptions
>0055A850    je          0055A859
 0055A852    add         dword ptr [esi+14],80000
 0055A859    cmp         byte ptr [edi+82],0;TPrintDialog.FPrintToFile:Boolean
>0055A860    je          0055A866
 0055A862    add         dword ptr [esi+14],20
 0055A866    test        byte ptr [edi+81],10;TPrintDialog.FOptions:TPrintDialogOptions
>0055A86D    je          0055A876
 0055A86F    add         dword ptr [esi+14],800
 0055A876    test        byte ptr [edi+81],8;TPrintDialog.FOptions:TPrintDialogOptions
>0055A87D    jne         0055A886
 0055A87F    add         dword ptr [esi+14],80
 0055A886    mov         eax,dword ptr [edi+70];TPrintDialog.FTemplate:PWideChar
 0055A889    test        eax,eax
>0055A88B    je          0055A8A1
 0055A88D    or          dword ptr [esi+14],4000
 0055A894    mov         dword ptr [esi+32],eax
 0055A897    mov         eax,dword ptr [edi+50];TPrintDialog.FTemplateModule:NativeUInt
 0055A89A    test        eax,eax
>0055A89C    je          0055A8A1
 0055A89E    mov         dword ptr [esi+22],eax
 0055A8A1    movzx       eax,word ptr [edi+78];TPrintDialog.FFromPage:Integer
 0055A8A5    mov         word ptr [esi+18],ax
 0055A8A9    movzx       eax,word ptr [edi+7C];TPrintDialog.FToPage:Integer
 0055A8AD    mov         word ptr [esi+1A],ax
 0055A8B1    movzx       eax,word ptr [edi+84];TPrintDialog.FMinPage:Integer
 0055A8B8    mov         word ptr [esi+1C],ax
 0055A8BC    movzx       eax,word ptr [edi+88];TPrintDialog.FMaxPage:Integer
 0055A8C3    mov         word ptr [esi+1E],ax
 0055A8C7    mov         dword ptr [esi+2A],558248;DialogHook:Windows.UINT_PTR
 0055A8CE    mov         dword ptr [esi+2E],558248;DialogHook:Windows.UINT_PTR
 0055A8D5    mov         eax,[007C4A18];^Application:TApplication
 0055A8DA    mov         eax,dword ptr [eax]
 0055A8DC    cmp         byte ptr [eax+0E8],0;TApplication.FModalPopupMode:TPopupMode
>0055A8E3    je          0055A913
 0055A8E5    xor         ecx,ecx
 0055A8E7    mov         dl,1
 0055A8E9    mov         eax,[005582B0];TRedirectorWindow
 0055A8EE    call        TWinControl.Create;TRedirectorWindow.Create
 0055A8F3    mov         ebx,eax
 0055A8F5    mov         dword ptr [edi+4C],ebx;TPrintDialog.FRedirector:TWinControl
 0055A8F8    mov         eax,ebx
 0055A8FA    mov         dword ptr [eax+290],edi;TRedirectorWindow.FCommonDialog:TCommonDialog
 0055A900    mov         dword ptr [eax+294],ebp;TRedirectorWindow.FFormHandle:NativeUInt
 0055A906    mov         eax,dword ptr [edi+4C];TPrintDialog.FRedirector:TWinControl
 0055A909    call        TWinControl.GetHandle
 0055A90E    mov         dword ptr [esi+4],eax
>0055A911    jmp         0055A91B
 0055A913    call        00558168
 0055A918    mov         dword ptr [esi+4],eax
 0055A91B    mov         ecx,esi
 0055A91D    mov         edx,518A2C;comdlg32.PrintDlgW:Windows.BOOL
 0055A922    mov         eax,edi
 0055A924    mov         ebx,dword ptr [eax]
 0055A926    call        dword ptr [ebx+50];TPrintDialog.sub_00558714
 0055A929    cmp         eax,1
 0055A92C    sbb         ebx,ebx
 0055A92E    inc         ebx
 0055A92F    test        bl,bl
>0055A931    je          0055A9B9
 0055A937    mov         edx,dword ptr [esi+0C]
 0055A93A    mov         eax,dword ptr [esi+8]
 0055A93D    call        SetPrinter
 0055A942    test        byte ptr [esi+14],10
 0055A946    setne       al
 0055A949    mov         byte ptr [edi+80],al;TPrintDialog.FCollate:Boolean
 0055A94F    test        byte ptr [esi+14],20
 0055A953    setne       al
 0055A956    mov         byte ptr [edi+82],al;TPrintDialog.FPrintToFile:Boolean
 0055A95C    mov         eax,dword ptr [esi+14]
 0055A95F    test        al,1
>0055A961    je          0055A96C
 0055A963    mov         byte ptr [edi+83],1;TPrintDialog.FPrintRange:TPrintRange
>0055A96A    jmp         0055A980
 0055A96C    test        al,2
>0055A96E    je          0055A979
 0055A970    mov         byte ptr [edi+83],2;TPrintDialog.FPrintRange:TPrintRange
>0055A977    jmp         0055A980
 0055A979    mov         byte ptr [edi+83],0;TPrintDialog.FPrintRange:TPrintRange
 0055A980    movzx       eax,word ptr [esi+18]
 0055A984    mov         dword ptr [edi+78],eax;TPrintDialog.FFromPage:Integer
 0055A987    movzx       eax,word ptr [esi+1A]
 0055A98B    mov         dword ptr [edi+7C],eax;TPrintDialog.FToPage:Integer
 0055A98E    movzx       eax,word ptr [esi+20]
 0055A992    cmp         ax,1
>0055A996    jne         0055A9AD
 0055A998    call        Printer
 0055A99D    call        TPrinter.GetNumCopies
 0055A9A2    mov         edx,eax
 0055A9A4    mov         eax,edi
 0055A9A6    call        TPrintDialog.SetCopies
>0055A9AB    jmp         0055A9DD
 0055A9AD    movzx       edx,ax
 0055A9B0    mov         eax,edi
 0055A9B2    call        TPrintDialog.SetCopies
>0055A9B7    jmp         0055A9DD
 0055A9B9    mov         eax,dword ptr [esi+8]
 0055A9BC    test        eax,eax
>0055A9BE    je          0055A9CB
 0055A9C0    push        eax
 0055A9C1    call        kernel32.GlobalFree
 0055A9C6    xor         eax,eax
 0055A9C8    mov         dword ptr [esi+8],eax
 0055A9CB    mov         eax,dword ptr [esi+0C]
 0055A9CE    test        eax,eax
>0055A9D0    je          0055A9DD
 0055A9D2    push        eax
 0055A9D3    call        kernel32.GlobalFree
 0055A9D8    xor         eax,eax
 0055A9DA    mov         dword ptr [esi+0C],eax
 0055A9DD    mov         eax,ebx
 0055A9DF    add         esp,48
 0055A9E2    pop         ebp
 0055A9E3    pop         edi
 0055A9E4    pop         esi
 0055A9E5    pop         ebx
 0055A9E6    ret
*}
end;

//0055A9E8
function AllocCoTaskMemStr(const S:UnicodeString):LPCWSTR;
begin
{*
 0055A9E8    push        ebp
 0055A9E9    mov         ebp,esp
 0055A9EB    push        0
 0055A9ED    push        ebx
 0055A9EE    push        esi
 0055A9EF    push        edi
 0055A9F0    mov         edi,eax
 0055A9F2    xor         eax,eax
 0055A9F4    push        ebp
 0055A9F5    push        55AA4A
 0055A9FA    push        dword ptr fs:[eax]
 0055A9FD    mov         dword ptr fs:[eax],esp
 0055AA00    mov         eax,edi
 0055AA02    test        eax,eax
>0055AA04    je          0055AA0B
 0055AA06    sub         eax,4
 0055AA09    mov         eax,dword ptr [eax]
 0055AA0B    mov         esi,eax
 0055AA0D    mov         eax,esi
 0055AA0F    add         eax,eax
 0055AA11    add         eax,2
 0055AA14    push        eax
 0055AA15    call        ole32.CoTaskMemAlloc
 0055AA1A    mov         ebx,eax
 0055AA1C    lea         eax,[ebp-4]
 0055AA1F    mov         edx,edi
 0055AA21    call        @WStrFromUStr
 0055AA26    mov         edx,dword ptr [ebp-4]
 0055AA29    mov         ecx,esi
 0055AA2B    mov         eax,ebx
 0055AA2D    call        WStrPLCopy
 0055AA32    mov         ebx,eax
 0055AA34    xor         eax,eax
 0055AA36    pop         edx
 0055AA37    pop         ecx
 0055AA38    pop         ecx
 0055AA39    mov         dword ptr fs:[eax],edx
 0055AA3C    push        55AA51
 0055AA41    lea         eax,[ebp-4]
 0055AA44    call        @WStrClr
 0055AA49    ret
>0055AA4A    jmp         @HandleFinally
>0055AA4F    jmp         0055AA41
 0055AA51    mov         eax,ebx
 0055AA53    pop         edi
 0055AA54    pop         esi
 0055AA55    pop         ebx
 0055AA56    pop         ecx
 0055AA57    pop         ebp
 0055AA58    ret
*}
end;

//0055AA5C
constructor TFileTypeItem.Create;
begin
{*
 0055AA5C    push        ebx
 0055AA5D    push        esi
 0055AA5E    test        dl,dl
>0055AA60    je          0055AA6A
 0055AA62    add         esp,0FFFFFFF0
 0055AA65    call        @ClassCreate
 0055AA6A    mov         ebx,edx
 0055AA6C    mov         esi,eax
 0055AA6E    xor         edx,edx
 0055AA70    mov         eax,esi
 0055AA72    call        TCollectionItem.Create
 0055AA77    xor         eax,eax
 0055AA79    mov         dword ptr [esi+10],eax
 0055AA7C    xor         eax,eax
 0055AA7E    mov         dword ptr [esi+18],eax
 0055AA81    mov         eax,esi
 0055AA83    test        bl,bl
>0055AA85    je          0055AA96
 0055AA87    call        @AfterConstruction
 0055AA8C    pop         dword ptr fs:[0]
 0055AA93    add         esp,0C
 0055AA96    mov         eax,esi
 0055AA98    pop         esi
 0055AA99    pop         ebx
 0055AA9A    ret
*}
end;

//0055AA9C
destructor TFileTypeItem.Destroy();
begin
{*
 0055AA9C    push        ebx
 0055AA9D    push        esi
 0055AA9E    add         esp,0FFFFFFF8
 0055AAA1    call        @BeforeDestruction
 0055AAA6    mov         ebx,edx
 0055AAA8    mov         esi,eax
 0055AAAA    mov         eax,dword ptr [esi+10];TFileTypeItem.FDisplayNameWStr:PWideChar
 0055AAAD    test        eax,eax
>0055AAAF    je          0055AABD
 0055AAB1    mov         dword ptr [esp],eax
 0055AAB4    mov         eax,dword ptr [esp]
 0055AAB7    push        eax
 0055AAB8    call        ole32.CoTaskMemFree
 0055AABD    mov         eax,dword ptr [esi+18];TFileTypeItem.FFileMaskWStr:PWideChar
 0055AAC0    test        eax,eax
>0055AAC2    je          0055AAD2
 0055AAC4    mov         dword ptr [esp+4],eax
 0055AAC8    mov         eax,dword ptr [esp+4]
 0055AACC    push        eax
 0055AACD    call        ole32.CoTaskMemFree
 0055AAD2    mov         dl,0FC
 0055AAD4    and         dl,bl
 0055AAD6    mov         eax,esi
 0055AAD8    call        TCollectionItem.Destroy
 0055AADD    test        bl,bl
>0055AADF    jle         0055AAE8
 0055AAE1    mov         eax,esi
 0055AAE3    call        @ClassDestroy
 0055AAE8    pop         ecx
 0055AAE9    pop         edx
 0055AAEA    pop         esi
 0055AAEB    pop         ebx
 0055AAEC    ret
*}
end;

//0055AAF0
function TFileTypeItem.GetDisplayNameWStr:LPCWSTR;
begin
{*
 0055AAF0    push        ebx
 0055AAF1    push        esi
 0055AAF2    push        ecx
 0055AAF3    mov         ebx,eax
 0055AAF5    mov         eax,dword ptr [ebx+10]
 0055AAF8    test        eax,eax
>0055AAFA    je          0055AB08
 0055AAFC    mov         dword ptr [esp],eax
 0055AAFF    mov         eax,dword ptr [esp]
 0055AB02    push        eax
 0055AB03    call        ole32.CoTaskMemFree
 0055AB08    mov         eax,dword ptr [ebx+0C]
 0055AB0B    call        AllocCoTaskMemStr
 0055AB10    mov         esi,eax
 0055AB12    mov         dword ptr [ebx+10],esi
 0055AB15    mov         eax,esi
 0055AB17    pop         edx
 0055AB18    pop         esi
 0055AB19    pop         ebx
 0055AB1A    ret
*}
end;

//0055AB1C
function TFavoriteLinkItem.GetDisplayName:UnicodeString;
begin
{*
 0055AB1C    push        ebx
 0055AB1D    push        esi
 0055AB1E    mov         esi,edx
 0055AB20    mov         ebx,eax
 0055AB22    cmp         dword ptr [ebx+0C],0
>0055AB26    je          0055AB35
 0055AB28    mov         eax,esi
 0055AB2A    mov         edx,dword ptr [ebx+0C]
 0055AB2D    call        @UStrAsg
 0055AB32    pop         esi
 0055AB33    pop         ebx
 0055AB34    ret
 0055AB35    mov         edx,esi
 0055AB37    mov         eax,ebx
 0055AB39    call        TCollectionItem.GetDisplayName
 0055AB3E    pop         esi
 0055AB3F    pop         ebx
 0055AB40    ret
*}
end;

//0055AB44
function TFileTypeItem.GetFileMaskWStr:LPCWSTR;
begin
{*
 0055AB44    push        ebx
 0055AB45    push        esi
 0055AB46    push        ecx
 0055AB47    mov         ebx,eax
 0055AB49    mov         eax,dword ptr [ebx+18]
 0055AB4C    test        eax,eax
>0055AB4E    je          0055AB5C
 0055AB50    mov         dword ptr [esp],eax
 0055AB53    mov         eax,dword ptr [esp]
 0055AB56    push        eax
 0055AB57    call        ole32.CoTaskMemFree
 0055AB5C    mov         eax,dword ptr [ebx+14]
 0055AB5F    call        AllocCoTaskMemStr
 0055AB64    mov         esi,eax
 0055AB66    mov         dword ptr [ebx+18],esi
 0055AB69    mov         eax,esi
 0055AB6B    pop         edx
 0055AB6C    pop         esi
 0055AB6D    pop         ebx
 0055AB6E    ret
*}
end;

//0055AB70
function TFileTypeItems.Add:TFileTypeItem;
begin
{*
 0055AB70    push        ebx
 0055AB71    mov         ebx,eax
 0055AB73    mov         eax,ebx
 0055AB75    call        TCollection.Add
 0055AB7A    pop         ebx
 0055AB7B    ret
*}
end;

//0055AB7C
function TFileTypeItems.FilterSpecArray:TComdlgFilterSpecArray;
begin
{*
 0055AB7C    push        ebx
 0055AB7D    push        esi
 0055AB7E    push        edi
 0055AB7F    push        ebp
 0055AB80    mov         ebp,edx
 0055AB82    mov         esi,eax
 0055AB84    mov         ebx,esi
 0055AB86    mov         eax,dword ptr [ebx+8]
 0055AB89    mov         eax,dword ptr [eax+8]
 0055AB8C    push        eax
 0055AB8D    mov         eax,ebp
 0055AB8F    mov         ecx,1
 0055AB94    mov         edx,dword ptr ds:[5186F4];TComdlgFilterSpecArray
 0055AB9A    call        @DynArraySetLength
 0055AB9F    add         esp,4
 0055ABA2    mov         eax,dword ptr [ebx+8]
 0055ABA5    mov         edi,dword ptr [eax+8]
 0055ABA8    dec         edi
 0055ABA9    test        edi,edi
>0055ABAB    jl          0055ABDD
 0055ABAD    inc         edi
 0055ABAE    xor         ebx,ebx
 0055ABB0    mov         edx,ebx
 0055ABB2    mov         eax,esi
 0055ABB4    call        TFileTypeItems.GetItem
 0055ABB9    call        TFileTypeItem.GetDisplayNameWStr
 0055ABBE    mov         edx,dword ptr [ebp]
 0055ABC1    mov         dword ptr [edx+ebx*8],eax
 0055ABC4    mov         edx,ebx
 0055ABC6    mov         eax,esi
 0055ABC8    call        TFileTypeItems.GetItem
 0055ABCD    call        TFileTypeItem.GetFileMaskWStr
 0055ABD2    mov         edx,dword ptr [ebp]
 0055ABD5    mov         dword ptr [edx+ebx*8+4],eax
 0055ABD9    inc         ebx
 0055ABDA    dec         edi
>0055ABDB    jne         0055ABB0
 0055ABDD    pop         ebp
 0055ABDE    pop         edi
 0055ABDF    pop         esi
 0055ABE0    pop         ebx
 0055ABE1    ret
*}
end;

//0055ABE4
function TFileTypeItems.GetItem(Index:Integer):TFileTypeItem;
begin
{*
 0055ABE4    push        ebx
 0055ABE5    push        esi
 0055ABE6    mov         esi,edx
 0055ABE8    mov         ebx,eax
 0055ABEA    mov         edx,esi
 0055ABEC    mov         eax,ebx
 0055ABEE    call        TCollection.GetItem
 0055ABF3    pop         esi
 0055ABF4    pop         ebx
 0055ABF5    ret
*}
end;

//0055ABF8
constructor TTaskDialogButtonsEnumerator.Create;
begin
{*
 0055ABF8    push        ebx
 0055ABF9    push        esi
 0055ABFA    push        edi
 0055ABFB    test        dl,dl
>0055ABFD    je          0055AC07
 0055ABFF    add         esp,0FFFFFFF0
 0055AC02    call        @ClassCreate
 0055AC07    mov         esi,ecx
 0055AC09    mov         ebx,edx
 0055AC0B    mov         edi,eax
 0055AC0D    xor         edx,edx
 0055AC0F    mov         eax,edi
 0055AC11    call        TObject.Create
 0055AC16    mov         dword ptr [edi+4],0FFFFFFFF
 0055AC1D    mov         dword ptr [edi+8],esi
 0055AC20    mov         eax,edi
 0055AC22    test        bl,bl
>0055AC24    je          0055AC35
 0055AC26    call        @AfterConstruction
 0055AC2B    pop         dword ptr fs:[0]
 0055AC32    add         esp,0C
 0055AC35    mov         eax,edi
 0055AC37    pop         edi
 0055AC38    pop         esi
 0055AC39    pop         ebx
 0055AC3A    ret
*}
end;

//0055AC3C
function TFavoriteLinkItemsEnumerator.GetCurrent:TFavoriteLinkItem;
begin
{*
 0055AC3C    mov         edx,dword ptr [eax+4]
 0055AC3F    mov         eax,dword ptr [eax+8]
 0055AC42    call        TFavoriteLinkItems.GetItem
 0055AC47    ret
*}
end;

//0055AC48
function TFavoriteLinkItemsEnumerator.MoveNext:Boolean;
begin
{*
 0055AC48    mov         edx,dword ptr [eax+8]
 0055AC4B    mov         edx,dword ptr [edx+8]
 0055AC4E    mov         edx,dword ptr [edx+8]
 0055AC51    dec         edx
 0055AC52    cmp         edx,dword ptr [eax+4]
 0055AC55    setg        dl
 0055AC58    test        dl,dl
>0055AC5A    je          0055AC5F
 0055AC5C    inc         dword ptr [eax+4]
 0055AC5F    mov         eax,edx
 0055AC61    ret
*}
end;

//0055AC64
function TFileTypeItem.GetDisplayName:UnicodeString;
begin
{*
 0055AC64    push        ebx
 0055AC65    push        esi
 0055AC66    mov         esi,edx
 0055AC68    mov         ebx,eax
 0055AC6A    cmp         dword ptr [ebx+0C],0
>0055AC6E    je          0055AC7D
 0055AC70    mov         eax,esi
 0055AC72    mov         edx,dword ptr [ebx+0C]
 0055AC75    call        @UStrAsg
 0055AC7A    pop         esi
 0055AC7B    pop         ebx
 0055AC7C    ret
 0055AC7D    mov         edx,esi
 0055AC7F    mov         eax,ebx
 0055AC81    call        TCollectionItem.GetDisplayName
 0055AC86    pop         esi
 0055AC87    pop         ebx
 0055AC88    ret
*}
end;

//0055AC8C
function TFavoriteLinkItems.GetEnumerator:TFavoriteLinkItemsEnumerator;
begin
{*
 0055AC8C    mov         ecx,eax
 0055AC8E    mov         dl,1
 0055AC90    mov         eax,[00554C30];TFavoriteLinkItemsEnumerator
 0055AC95    call        TTaskDialogButtonsEnumerator.Create
 0055AC9A    ret
*}
end;

//0055AC9C
function TFavoriteLinkItems.GetItem(Index:Integer):TFavoriteLinkItem;
begin
{*
 0055AC9C    push        ebx
 0055AC9D    push        esi
 0055AC9E    mov         esi,edx
 0055ACA0    mov         ebx,eax
 0055ACA2    mov         edx,esi
 0055ACA4    mov         eax,ebx
 0055ACA6    call        TCollection.GetItem
 0055ACAB    pop         esi
 0055ACAC    pop         ebx
 0055ACAD    ret
*}
end;

//0055B0B0
constructor TFileDialogEvents.Create;
begin
{*
 0055B0B0    push        ebx
 0055B0B1    push        esi
 0055B0B2    push        edi
 0055B0B3    test        dl,dl
>0055B0B5    je          0055B0BF
 0055B0B7    add         esp,0FFFFFFF0
 0055B0BA    call        @ClassCreate
 0055B0BF    mov         esi,ecx
 0055B0C1    mov         ebx,edx
 0055B0C3    mov         edi,eax
 0055B0C5    xor         edx,edx
 0055B0C7    mov         eax,edi
 0055B0C9    call        TObject.Create
 0055B0CE    mov         dword ptr [edi+0C],esi
 0055B0D1    mov         byte ptr [edi+10],1
 0055B0D5    mov         eax,edi
 0055B0D7    test        bl,bl
>0055B0D9    je          0055B0EA
 0055B0DB    call        @AfterConstruction
 0055B0E0    pop         dword ptr fs:[0]
 0055B0E7    add         esp,0C
 0055B0EA    mov         eax,edi
 0055B0EC    pop         edi
 0055B0ED    pop         esi
 0055B0EE    pop         ebx
 0055B0EF    ret
*}
end;

//0055B0F0
function TFileDialogEvents.OnFileOk(pfd:IFileDialog):HRESULT; stdcall;
begin
{*
 0055B0F0    push        ebp
 0055B0F1    mov         ebp,esp
 0055B0F3    push        esi
 0055B0F4    mov         eax,dword ptr [ebp+8]
 0055B0F7    mov         esi,dword ptr [eax+0C]
 0055B0FA    cmp         word ptr [esi+8A],0
>0055B102    je          0055B111
 0055B104    mov         eax,esi
 0055B106    mov         si,0FFE5
 0055B10A    call        @CallDynaInst
>0055B10F    jmp         0055B116
 0055B111    mov         eax,80004001
 0055B116    pop         esi
 0055B117    pop         ebp
 0055B118    ret         8
*}
end;

//0055B11C
function TFileDialogEvents.OnFolderChange(pfd:IFileDialog):HRESULT; stdcall;
begin
{*
 0055B11C    push        ebp
 0055B11D    mov         ebp,esp
 0055B11F    push        esi
 0055B120    mov         eax,dword ptr [ebp+8]
 0055B123    mov         esi,dword ptr [eax+0C];TFileDialogEvents.FFileDialog:TCustomFileDialog
 0055B126    cmp         word ptr [esi+92],0;TCustomFileDialog.?f92:word
>0055B12E    je          0055B13D
 0055B130    mov         eax,esi
 0055B132    mov         si,0FFE4
 0055B136    call        @CallDynaInst;TCustomFileDialog.sub_0055B99C
>0055B13B    jmp         0055B142
 0055B13D    mov         eax,80004001
 0055B142    pop         esi
 0055B143    pop         ebp
 0055B144    ret         8
*}
end;

//0055B148
function TFileDialogEvents.OnFolderChanging(pfd:IFileDialog; psiFolder:IShellItem):HRESULT; stdcall;
begin
{*
 0055B148    push        ebp
 0055B149    mov         ebp,esp
 0055B14B    push        esi
 0055B14C    mov         eax,dword ptr [ebp+8]
 0055B14F    mov         esi,dword ptr [eax+0C];TFileDialogEvents.FFileDialog:TCustomFileDialog
 0055B152    cmp         word ptr [esi+9A],0;TCustomFileDialog.?f9A:word
>0055B15A    je          0055B16C
 0055B15C    mov         edx,dword ptr [ebp+10]
 0055B15F    mov         eax,esi
 0055B161    mov         si,0FFE3
 0055B165    call        @CallDynaInst;TCustomFileDialog.sub_0055BA00
>0055B16A    jmp         0055B171
 0055B16C    mov         eax,80004001
 0055B171    pop         esi
 0055B172    pop         ebp
 0055B173    ret         0C
*}
end;

//0055B178
function TFileDialogEvents.OnOverwrite(pfd:IFileDialog; psi:IShellItem; pResponse:Cardinal):HRESULT; stdcall;
begin
{*
 0055B178    push        ebp
 0055B179    mov         ebp,esp
 0055B17B    push        esi
 0055B17C    mov         eax,dword ptr [ebp+8]
 0055B17F    mov         esi,dword ptr [eax+0C];TFileDialogEvents.FFileDialog:TCustomFileDialog
 0055B182    cmp         word ptr [esi+0A2],0;TCustomFileDialog.?fA2:word
>0055B18A    je          0055B19F
 0055B18C    mov         ecx,dword ptr [ebp+14]
 0055B18F    mov         edx,dword ptr [ebp+10]
 0055B192    mov         eax,esi
 0055B194    mov         si,0FFE2
 0055B198    call        @CallDynaInst;TCustomFileDialog.sub_0055BFAC
>0055B19D    jmp         0055B1A4
 0055B19F    mov         eax,80004001
 0055B1A4    pop         esi
 0055B1A5    pop         ebp
 0055B1A6    ret         10
*}
end;

//0055B1AC
function TFileDialogEvents.OnSelectionChange(pfd:IFileDialog):HRESULT; stdcall;
begin
{*
 0055B1AC    push        ebp
 0055B1AD    mov         ebp,esp
 0055B1AF    push        ebx
 0055B1B0    push        esi
 0055B1B1    mov         ebx,dword ptr [ebp+8]
 0055B1B4    cmp         byte ptr [ebx+10],0;TFileDialogEvents.FRetrieveHandle:Boolean
>0055B1B8    je          0055B1C6
 0055B1BA    mov         eax,dword ptr [ebx+0C];TFileDialogEvents.FFileDialog:TCustomFileDialog
 0055B1BD    call        0055BF3C
 0055B1C2    mov         byte ptr [ebx+10],0;TFileDialogEvents.FRetrieveHandle:Boolean
 0055B1C6    mov         esi,dword ptr [ebx+0C];TFileDialogEvents.FFileDialog:TCustomFileDialog
 0055B1C9    cmp         word ptr [esi+0AA],0;TCustomFileDialog.?fAA:word
>0055B1D1    je          0055B1E0
 0055B1D3    mov         eax,esi
 0055B1D5    mov         si,0FFE1
 0055B1D9    call        @CallDynaInst;TCustomFileDialog.sub_0055C050
>0055B1DE    jmp         0055B1E5
 0055B1E0    mov         eax,80004001
 0055B1E5    pop         esi
 0055B1E6    pop         ebx
 0055B1E7    pop         ebp
 0055B1E8    ret         8
*}
end;

//0055B1EC
function TFileDialogEvents.OnShareViolation(pfd:IFileDialog; psi:IShellItem; pResponse:Cardinal):HRESULT; stdcall;
begin
{*
 0055B1EC    push        ebp
 0055B1ED    mov         ebp,esp
 0055B1EF    push        esi
 0055B1F0    mov         eax,dword ptr [ebp+8]
 0055B1F3    mov         esi,dword ptr [eax+0C];TFileDialogEvents.FFileDialog:TCustomFileDialog
 0055B1F6    cmp         word ptr [esi+0B2],0;TCustomFileDialog.?fB2:word
>0055B1FE    je          0055B213
 0055B200    mov         ecx,dword ptr [ebp+14]
 0055B203    mov         edx,dword ptr [ebp+10]
 0055B206    mov         eax,esi
 0055B208    mov         si,0FFE0
 0055B20C    call        @CallDynaInst;TCustomFileDialog.sub_0055C148
>0055B211    jmp         0055B218
 0055B213    mov         eax,80004001
 0055B218    pop         esi
 0055B219    pop         ebp
 0055B21A    ret         10
*}
end;

//0055B220
procedure TFileDialogEvents.OnTypeChange(pfd:IFileDialog); stdcall;
begin
{*
 0055B220    push        ebp
 0055B221    mov         ebp,esp
 0055B223    push        ebx
 0055B224    push        esi
 0055B225    mov         ebx,dword ptr [ebp+8]
 0055B228    cmp         byte ptr [ebx+10],0;TFileDialogEvents.FRetrieveHandle:Boolean
>0055B22C    je          0055B23A
 0055B22E    mov         eax,dword ptr [ebx+0C];TFileDialogEvents.FFileDialog:TCustomFileDialog
 0055B231    call        0055BF3C
 0055B236    mov         byte ptr [ebx+10],0;TFileDialogEvents.FRetrieveHandle:Boolean
 0055B23A    mov         eax,dword ptr [ebx+0C];TFileDialogEvents.FFileDialog:TCustomFileDialog
 0055B23D    mov         si,0FFDF
 0055B241    call        @CallDynaInst;TCustomFileDialog.sub_0055C1EC
 0055B246    pop         esi
 0055B247    pop         ebx
 0055B248    pop         ebp
 0055B249    ret         8
*}
end;

//0055B24C
constructor TCustomFileDialog.Create;
begin
{*
 0055B24C    push        ebx
 0055B24D    push        esi
 0055B24E    test        dl,dl
>0055B250    je          0055B25A
 0055B252    add         esp,0FFFFFFF0
 0055B255    call        @ClassCreate
 0055B25A    mov         ebx,edx
 0055B25C    mov         esi,eax
 0055B25E    xor         edx,edx
 0055B260    mov         eax,esi
 0055B262    call        TComponent.Create
 0055B267    mov         dl,1
 0055B269    mov         eax,[0046F9A0];TStringList
 0055B26E    call        TStringList.Create
 0055B273    mov         dword ptr [esi+5C],eax
 0055B276    mov         dword ptr [esi+60],1
 0055B27D    mov         ecx,dword ptr ds:[5546CC];TFileTypeItem
 0055B283    mov         dl,1
 0055B285    mov         eax,[0055493C];TFileTypeItems
 0055B28A    call        TCollection.Create
 0055B28F    mov         dword ptr [esi+64],eax
 0055B292    xor         eax,eax
 0055B294    mov         dword ptr [esi+68],eax
 0055B297    mov         eax,[0055B2E0]
 0055B29C    mov         dword ptr [esi+70],eax
 0055B29F    mov         ecx,dword ptr ds:[554B0C];TFavoriteLinkItem
 0055B2A5    mov         dl,1
 0055B2A7    mov         eax,[00554DF0];TFavoriteLinkItems
 0055B2AC    call        TCollection.Create
 0055B2B1    mov         dword ptr [esi+50],eax
 0055B2B4    lea         eax,[esi+74]
 0055B2B7    call        @IntfClear
 0055B2BC    lea         eax,[esi+78]
 0055B2BF    call        @IntfClear
 0055B2C4    mov         eax,esi
 0055B2C6    test        bl,bl
>0055B2C8    je          0055B2D9
 0055B2CA    call        @AfterConstruction
 0055B2CF    pop         dword ptr fs:[0]
 0055B2D6    add         esp,0C
 0055B2D9    mov         eax,esi
 0055B2DB    pop         esi
 0055B2DC    pop         ebx
 0055B2DD    ret
*}
end;

//0055B2E4
destructor TCustomFileDialog.Destroy();
begin
{*
 0055B2E4    push        ebx
 0055B2E5    push        esi
 0055B2E6    call        @BeforeDestruction
 0055B2EB    mov         ebx,edx
 0055B2ED    mov         esi,eax
 0055B2EF    mov         eax,dword ptr [esi+5C];TCustomFileDialog.FFiles:TStrings
 0055B2F2    call        TObject.Free
 0055B2F7    mov         eax,dword ptr [esi+64];TCustomFileDialog.FFileTypes:TFileTypeItems
 0055B2FA    call        TObject.Free
 0055B2FF    mov         eax,dword ptr [esi+50];TCustomFileDialog.FFavoriteLinks:TFavoriteLinkItems
 0055B302    call        TObject.Free
 0055B307    lea         eax,[esi+74];TCustomFileDialog.FShellItem:IShellItem
 0055B30A    call        @IntfClear
 0055B30F    lea         eax,[esi+78];TCustomFileDialog.FShellItems:IShellItemArray
 0055B312    call        @IntfClear
 0055B317    mov         dl,0FC
 0055B319    and         dl,bl
 0055B31B    mov         eax,esi
 0055B31D    call        TComponent.Destroy
 0055B322    test        bl,bl
>0055B324    jle         0055B32D
 0055B326    mov         eax,esi
 0055B328    call        @ClassDestroy
 0055B32D    pop         esi
 0055B32E    pop         ebx
 0055B32F    ret
*}
end;

//0055B330
procedure TFindDialog.Find;
begin
{*
 0055B330    push        ebx
 0055B331    cmp         word ptr [eax+82],0
>0055B339    je          0055B34B
 0055B33B    mov         ebx,eax
 0055B33D    mov         edx,eax
 0055B33F    mov         eax,dword ptr [ebx+84]
 0055B345    call        dword ptr [ebx+80]
 0055B34B    pop         ebx
 0055B34C    ret
*}
end;

//0055B350
procedure TCustomFileDialog.sub_0055B350;
begin
{*
 0055B350    push        ebx
 0055B351    push        ecx
 0055B352    mov         byte ptr [esp],1
 0055B356    cmp         word ptr [eax+8A],0;TCustomFileDialog.?f8A:word
>0055B35E    je          0055B372
 0055B360    mov         ecx,esp
 0055B362    mov         ebx,eax
 0055B364    mov         edx,eax
 0055B366    mov         eax,dword ptr [ebx+8C];TCustomFileDialog.?f8C:TFileDialogWrapper
 0055B36C    call        dword ptr [ebx+88];TCustomFileDialog.FOnFileOkClick
 0055B372    movzx       eax,byte ptr [esp]
 0055B376    pop         edx
 0055B377    pop         ebx
 0055B378    ret
*}
end;

//0055B37C
procedure TCustomFileDialog.sub_0055B37C;
begin
{*
 0055B37C    push        ebx
 0055B37D    cmp         word ptr [eax+92],0;TCustomFileDialog.?f92:word
>0055B385    je          0055B397
 0055B387    mov         ebx,eax
 0055B389    mov         edx,eax
 0055B38B    mov         eax,dword ptr [ebx+94];TCustomFileDialog.?f94:TFileDialogWrapper
 0055B391    call        dword ptr [ebx+90];TCustomFileDialog.FOnFolderChange
 0055B397    pop         ebx
 0055B398    ret
*}
end;

//0055B39C
procedure TCustomFileDialog.sub_0055B39C;
begin
{*
 0055B39C    push        ebx
 0055B39D    push        ecx
 0055B39E    mov         byte ptr [esp],1
 0055B3A2    cmp         word ptr [eax+9A],0;TCustomFileDialog.?f9A:word
>0055B3AA    je          0055B3BE
 0055B3AC    mov         ecx,esp
 0055B3AE    mov         ebx,eax
 0055B3B0    mov         edx,eax
 0055B3B2    mov         eax,dword ptr [ebx+9C];TCustomFileDialog.?f9C:dword
 0055B3B8    call        dword ptr [ebx+98];TCustomFileDialog.FOnFolderChanging
 0055B3BE    movzx       eax,byte ptr [esp]
 0055B3C2    pop         edx
 0055B3C3    pop         ebx
 0055B3C4    ret
*}
end;

//0055B3C8
{*procedure TCustomFileDialog.sub_0055B3C8(?:?);
begin
 0055B3C8    push        ebx
 0055B3C9    cmp         word ptr [eax+0A2],0;TCustomFileDialog.?fA2:word
>0055B3D1    je          0055B3E5
 0055B3D3    mov         ecx,edx
 0055B3D5    mov         ebx,eax
 0055B3D7    mov         edx,eax
 0055B3D9    mov         eax,dword ptr [ebx+0A4];TCustomFileDialog.?fA4:dword
 0055B3DF    call        dword ptr [ebx+0A0];TCustomFileDialog.FOnOverwrite
 0055B3E5    pop         ebx
 0055B3E6    ret
end;*}

//0055B3E8
procedure TOpenDialog.DoFolderChange;
begin
{*
 0055B3E8    push        ebx
 0055B3E9    cmp         word ptr [eax+0AA],0
>0055B3F1    je          0055B403
 0055B3F3    mov         ebx,eax
 0055B3F5    mov         edx,eax
 0055B3F7    mov         eax,dword ptr [ebx+0AC]
 0055B3FD    call        dword ptr [ebx+0A8]
 0055B403    pop         ebx
 0055B404    ret
*}
end;

//0055B408
{*procedure TCustomFileDialog.sub_0055B408(?:?);
begin
 0055B408    push        ebx
 0055B409    cmp         word ptr [eax+0B2],0;TCustomFileDialog.?fB2:word
>0055B411    je          0055B425
 0055B413    mov         ecx,edx
 0055B415    mov         ebx,eax
 0055B417    mov         edx,eax
 0055B419    mov         eax,dword ptr [ebx+0B4];TCustomFileDialog.?fB4:TFileDialogWrapper
 0055B41F    call        dword ptr [ebx+0B0];TCustomFileDialog.FOnShareViolation
 0055B425    pop         ebx
 0055B426    ret
end;*}

//0055B428
procedure TCustomFileDialog.sub_0055B428;
begin
{*
 0055B428    push        ebx
 0055B429    cmp         word ptr [eax+0BA],0;TCustomFileDialog.?fBA:word
>0055B431    je          0055B443
 0055B433    mov         ebx,eax
 0055B435    mov         edx,eax
 0055B437    mov         eax,dword ptr [ebx+0BC];TCustomFileDialog.?fBC:TFileDialogWrapper
 0055B43D    call        dword ptr [ebx+0B8];TCustomFileDialog.FOnTypeChange
 0055B443    pop         ebx
 0055B444    ret
*}
end;

//0055B448
procedure TCustomFileDialog.Execute;
begin
{*
 0055B448    push        esi
 0055B449    mov         esi,eax
 0055B44B    mov         eax,[007C4A18];^Application:TApplication
 0055B450    mov         eax,dword ptr [eax]
 0055B452    cmp         byte ptr [eax+0E8],0;TApplication.FModalPopupMode:TPopupMode
>0055B459    je          0055B47A
 0055B45B    mov         eax,[007C4A18];^Application:TApplication
 0055B460    mov         eax,dword ptr [eax]
 0055B462    call        005CCE10
 0055B467    test        eax,eax
>0055B469    jne         0055B487
 0055B46B    mov         eax,[007C4A18];^Application:TApplication
 0055B470    mov         eax,dword ptr [eax]
 0055B472    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
>0055B478    jmp         0055B487
 0055B47A    mov         eax,[007C4A18];^Application:TApplication
 0055B47F    mov         eax,dword ptr [eax]
 0055B481    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 0055B487    mov         edx,eax
 0055B489    mov         eax,esi
 0055B48B    mov         ecx,dword ptr [eax]
 0055B48D    call        dword ptr [ecx+50];TCustomFileDialog.Execute
 0055B490    pop         esi
 0055B491    ret
*}
end;

//0055B494
{*procedure sub_0055B494(?:?);
begin
 0055B494    push        ebx
 0055B495    mov         ebx,eax
 0055B497    lea         eax,[ebx+0C0]
 0055B49D    mov         edx,dword ptr [ebx+54]
 0055B4A0    call        @UStrAsg
 0055B4A5    pop         ebx
 0055B4A6    ret
end;*}

//0055B4A8
function TCustomFileDialog.Execute(ParentWnd:HWND):Boolean;
begin
{*
 0055B4A8    push        ebp
 0055B4A9    mov         ebp,esp
 0055B4AB    add         esp,0FFFFFFB8
 0055B4AE    push        ebx
 0055B4AF    push        esi
 0055B4B0    push        edi
 0055B4B1    xor         ecx,ecx
 0055B4B3    mov         dword ptr [ebp-48],ecx
 0055B4B6    mov         dword ptr [ebp-34],ecx
 0055B4B9    mov         dword ptr [ebp-30],ecx
 0055B4BC    mov         dword ptr [ebp-4],ecx
 0055B4BF    mov         dword ptr [ebp-8],ecx
 0055B4C2    mov         dword ptr [ebp-10],edx
 0055B4C5    mov         dword ptr [ebp-0C],eax
 0055B4C8    xor         eax,eax
 0055B4CA    push        ebp
 0055B4CB    push        55B8EB
 0055B4D0    push        dword ptr fs:[eax]
 0055B4D3    mov         dword ptr fs:[eax],esp
 0055B4D6    mov         eax,[007C4590];^gvar_0079EDE0
 0055B4DB    cmp         dword ptr [eax],6
>0055B4DE    jge         0055B514
 0055B4E0    lea         edx,[ebp-30]
 0055B4E3    mov         eax,dword ptr [ebp-0C]
 0055B4E6    mov         eax,dword ptr [eax]
 0055B4E8    call        TObject.ClassName
 0055B4ED    mov         eax,dword ptr [ebp-30]
 0055B4F0    mov         dword ptr [ebp-2C],eax
 0055B4F3    mov         byte ptr [ebp-28],11
 0055B4F7    lea         eax,[ebp-2C]
 0055B4FA    push        eax
 0055B4FB    push        0
 0055B4FD    mov         ecx,dword ptr ds:[7C4854];^SResString336:TResStringRec
 0055B503    mov         dl,1
 0055B505    mov         eax,[0055415C];EPlatformVersionException
 0055B50A    call        Exception.CreateResFmt;EPlatformVersionException.Create
 0055B50F    call        @RaiseExcept
 0055B514    mov         byte ptr [ebp-11],0
 0055B518    lea         edx,[ebp-34]
 0055B51B    mov         eax,dword ptr [ebp-0C]
 0055B51E    mov         ecx,dword ptr [eax]
 0055B520    call        dword ptr [ecx+44];TCustomFileDialog.CreateFileDialog
 0055B523    mov         edx,dword ptr [ebp-34]
 0055B526    mov         eax,dword ptr [ebp-0C]
 0055B529    add         eax,4C;TCustomFileDialog.FDialog:IFileDialog
 0055B52C    call        @IntfCopy
 0055B531    mov         eax,dword ptr [ebp-0C]
 0055B534    cmp         dword ptr [eax+4C],0;TCustomFileDialog.FDialog:IFileDialog
>0055B538    je          0055B8AF
 0055B53E    xor         edi,edi
 0055B540    push        ebp
 0055B541    push        55B8A8
 0055B546    push        dword ptr fs:[edi]
 0055B549    mov         dword ptr fs:[edi],esp
 0055B54C    lea         eax,[ebp-8]
 0055B54F    mov         edx,dword ptr [ebp-0C]
 0055B552    mov         edx,dword ptr [edx+4C];TCustomFileDialog.FDialog:IFileDialog
 0055B555    call        @IntfCopy
 0055B55A    mov         eax,dword ptr [ebp-0C]
 0055B55D    cmp         dword ptr [eax+40],0;TCustomFileDialog.FClientGuid:string
>0055B561    je          0055B57E
 0055B563    lea         edx,[ebp-44]
 0055B566    mov         eax,dword ptr [ebp-0C]
 0055B569    mov         eax,dword ptr [eax+40];TCustomFileDialog.FClientGuid:string
 0055B56C    call        StringToGUID
 0055B571    lea         eax,[ebp-44]
 0055B574    push        eax
 0055B575    mov         eax,dword ptr [ebp-8]
 0055B578    push        eax
 0055B579    mov         eax,dword ptr [eax]
 0055B57B    call        dword ptr [eax+60]
 0055B57E    mov         eax,dword ptr [ebp-0C]
 0055B581    cmp         dword ptr [eax+44],0;TCustomFileDialog.FDefaultExtension:string
>0055B585    je          0055B59C
 0055B587    mov         eax,dword ptr [ebp-0C]
 0055B58A    mov         eax,dword ptr [eax+44];TCustomFileDialog.FDefaultExtension:string
 0055B58D    call        @UStrToPWChar
 0055B592    push        eax
 0055B593    mov         eax,dword ptr [ebp-8]
 0055B596    push        eax
 0055B597    mov         eax,dword ptr [eax]
 0055B599    call        dword ptr [eax+58]
 0055B59C    mov         eax,dword ptr [ebp-0C]
 0055B59F    cmp         dword ptr [eax+54],0;TCustomFileDialog.FFileName:TFileName
>0055B5A3    je          0055B5BA
 0055B5A5    mov         eax,dword ptr [ebp-0C]
 0055B5A8    mov         eax,dword ptr [eax+54];TCustomFileDialog.FFileName:TFileName
 0055B5AB    call        @UStrToPWChar
 0055B5B0    push        eax
 0055B5B1    mov         eax,dword ptr [ebp-8]
 0055B5B4    push        eax
 0055B5B5    mov         eax,dword ptr [eax]
 0055B5B7    call        dword ptr [eax+3C]
 0055B5BA    mov         eax,dword ptr [ebp-0C]
 0055B5BD    cmp         dword ptr [eax+58],0;TCustomFileDialog.FFileNameLabel:string
>0055B5C1    je          0055B5D8
 0055B5C3    mov         eax,dword ptr [ebp-0C]
 0055B5C6    mov         eax,dword ptr [eax+58];TCustomFileDialog.FFileNameLabel:string
 0055B5C9    call        @UStrToPWChar
 0055B5CE    push        eax
 0055B5CF    mov         eax,dword ptr [ebp-8]
 0055B5D2    push        eax
 0055B5D3    mov         eax,dword ptr [eax]
 0055B5D5    call        dword ptr [eax+4C]
 0055B5D8    mov         eax,dword ptr [ebp-0C]
 0055B5DB    cmp         dword ptr [eax+6C],0;TCustomFileDialog.FOkButtonLabel:string
>0055B5DF    je          0055B5F6
 0055B5E1    mov         eax,dword ptr [ebp-0C]
 0055B5E4    mov         eax,dword ptr [eax+6C];TCustomFileDialog.FOkButtonLabel:string
 0055B5E7    call        @UStrToPWChar
 0055B5EC    push        eax
 0055B5ED    mov         eax,dword ptr [ebp-8]
 0055B5F0    push        eax
 0055B5F1    mov         eax,dword ptr [eax]
 0055B5F3    call        dword ptr [eax+48]
 0055B5F6    mov         eax,dword ptr [ebp-0C]
 0055B5F9    cmp         dword ptr [eax+7C],0;TCustomFileDialog.FTitle:string
>0055B5FD    je          0055B614
 0055B5FF    mov         eax,dword ptr [ebp-0C]
 0055B602    mov         eax,dword ptr [eax+7C];TCustomFileDialog.FTitle:string
 0055B605    call        @UStrToPWChar
 0055B60A    push        eax
 0055B60B    mov         eax,dword ptr [ebp-8]
 0055B60E    push        eax
 0055B60F    mov         eax,dword ptr [eax]
 0055B611    call        dword ptr [eax+44]
 0055B614    mov         eax,dword ptr [ebp-0C]
 0055B617    cmp         dword ptr [eax+48],0;TCustomFileDialog.FDefaultFolder:string
>0055B61B    je          0055B663
 0055B61D    lea         eax,[ebp-4]
 0055B620    call        @IntfClear
 0055B625    push        eax
 0055B626    lea         edx,[ebp-44]
 0055B629    mov         eax,55B90C;'{43826D1E-E718-42EE-BC55-A1E261C37BFE}'
 0055B62E    call        StringToGUID
 0055B633    lea         eax,[ebp-44]
 0055B636    push        eax
 0055B637    push        0
 0055B639    mov         eax,dword ptr [ebp-0C]
 0055B63C    mov         eax,dword ptr [eax+48];TCustomFileDialog.FDefaultFolder:string
 0055B63F    call        @UStrToPWChar
 0055B644    push        eax
 0055B645    call        005187B8
 0055B64A    test        eax,80000000
 0055B64F    sete        al
 0055B652    test        al,al
>0055B654    je          0055B663
 0055B656    mov         eax,dword ptr [ebp-4]
 0055B659    push        eax
 0055B65A    mov         eax,dword ptr [ebp-8]
 0055B65D    push        eax
 0055B65E    mov         eax,dword ptr [eax]
 0055B660    call        dword ptr [eax+30]
 0055B663    mov         eax,dword ptr [ebp-0C]
 0055B666    mov         ebx,dword ptr [eax+64];TCustomFileDialog.FFileTypes:TFileTypeItems
 0055B669    mov         eax,ebx
 0055B66B    mov         eax,dword ptr [eax+8];TFileTypeItems.FItems:TList<System.Classes.TCollectionItem>
 0055B66E    cmp         dword ptr [eax+8],0;TList<System.Classes.TCollectionItem>.FCount:Integer
>0055B672    jle         0055B6A7
 0055B674    mov         esi,ebx
 0055B676    lea         edx,[ebp-48]
 0055B679    mov         eax,ebx
 0055B67B    call        TFileTypeItems.FilterSpecArray
 0055B680    mov         eax,dword ptr [ebp-48]
 0055B683    push        eax
 0055B684    mov         eax,dword ptr [esi+8];TFileTypeItems.FItems:TList<System.Classes.TCollectionItem>
 0055B687    mov         eax,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0055B68A    push        eax
 0055B68B    mov         eax,dword ptr [ebp-0C]
 0055B68E    mov         eax,dword ptr [eax+4C];TCustomFileDialog.FDialog:IFileDialog
 0055B691    push        eax
 0055B692    mov         eax,dword ptr [eax]
 0055B694    call        dword ptr [eax+10]
 0055B697    mov         eax,dword ptr [ebp-0C]
 0055B69A    mov         eax,dword ptr [eax+60];TCustomFileDialog.FFileTypeIndex:Cardinal
 0055B69D    push        eax
 0055B69E    mov         eax,dword ptr [ebp-8]
 0055B6A1    push        eax
 0055B6A2    mov         eax,dword ptr [eax]
 0055B6A4    call        dword ptr [eax+14]
 0055B6A7    xor         esi,esi
 0055B6A9    mov         eax,dword ptr [ebp-0C]
 0055B6AC    mov         edx,dword ptr [eax+70];TCustomFileDialog.FOptions:TFileDialogOptions
 0055B6AF    xor         eax,eax
 0055B6B1    mov         ecx,eax
 0055B6B3    cmp         cl,1F
>0055B6B6    ja          0055B6BE
 0055B6B8    and         ecx,7F
 0055B6BB    bt          edx,ecx
>0055B6BE    jae         0055B6CC
 0055B6C0    mov         ecx,eax
 0055B6C2    and         ecx,7F
 0055B6C5    or          esi,dword ptr [ecx*4+7A17EC]
 0055B6CC    inc         eax
 0055B6CD    cmp         al,15
>0055B6CF    jne         0055B6B1
 0055B6D1    push        esi
 0055B6D2    mov         eax,dword ptr [ebp-8]
 0055B6D5    push        eax
 0055B6D6    mov         eax,dword ptr [eax]
 0055B6D8    call        dword ptr [eax+24]
 0055B6DB    mov         eax,dword ptr [ebp-0C]
 0055B6DE    mov         eax,dword ptr [eax+50];TCustomFileDialog.FFavoriteLinks:TFavoriteLinkItems
 0055B6E1    call        TFavoriteLinkItems.GetEnumerator
 0055B6E6    mov         dword ptr [ebp-24],eax
 0055B6E9    xor         eax,eax
 0055B6EB    push        ebp
 0055B6EC    push        55B775
 0055B6F1    push        dword ptr fs:[eax]
 0055B6F4    mov         dword ptr fs:[eax],esp
>0055B6F7    jmp         0055B74B
 0055B6F9    mov         eax,dword ptr [ebp-24]
 0055B6FC    call        TFavoriteLinkItemsEnumerator.GetCurrent
 0055B701    mov         ebx,eax
 0055B703    lea         eax,[ebp-4]
 0055B706    call        @IntfClear
 0055B70B    push        eax
 0055B70C    lea         edx,[ebp-44]
 0055B70F    mov         eax,55B90C;'{43826D1E-E718-42EE-BC55-A1E261C37BFE}'
 0055B714    call        StringToGUID
 0055B719    lea         eax,[ebp-44]
 0055B71C    push        eax
 0055B71D    push        0
 0055B71F    mov         eax,dword ptr [ebx+0C];TFavoriteLinkItem...FLocation:string
 0055B722    call        @UStrToPWChar
 0055B727    push        eax
 0055B728    call        005187B8
 0055B72D    mov         esi,eax
 0055B72F    test        esi,80000000
 0055B735    sete        al
 0055B738    test        al,al
>0055B73A    je          0055B74B
 0055B73C    push        0
 0055B73E    mov         eax,dword ptr [ebp-4]
 0055B741    push        eax
 0055B742    mov         eax,dword ptr [ebp-8]
 0055B745    push        eax
 0055B746    mov         eax,dword ptr [eax]
 0055B748    call        dword ptr [eax+54]
 0055B74B    mov         eax,dword ptr [ebp-24]
 0055B74E    call        TFavoriteLinkItemsEnumerator.MoveNext
 0055B753    test        al,al
>0055B755    jne         0055B6F9
 0055B757    xor         eax,eax
 0055B759    pop         edx
 0055B75A    pop         ecx
 0055B75B    pop         ecx
 0055B75C    mov         dword ptr fs:[eax],edx
 0055B75F    push        55B77C
 0055B764    cmp         dword ptr [ebp-24],0
>0055B768    je          0055B774
 0055B76A    mov         dl,1
 0055B76C    mov         eax,dword ptr [ebp-24]
 0055B76F    mov         ecx,dword ptr [eax]
 0055B771    call        dword ptr [ecx-4]
 0055B774    ret
>0055B775    jmp         @HandleFinally
>0055B77A    jmp         0055B764
 0055B77C    mov         eax,dword ptr [ebp-0C]
 0055B77F    mov         si,0FFEF
 0055B783    call        @CallDynaInst;TFindDialog.Find
 0055B788    mov         eax,dword ptr [ebp-10]
 0055B78B    call        DisableTaskWindows
 0055B790    mov         dword ptr [ebp-18],eax
 0055B793    call        005BE9C0
 0055B798    mov         dword ptr [ebp-1C],eax
 0055B79B    xor         edx,edx
 0055B79D    push        ebp
 0055B79E    push        55B888
 0055B7A3    push        dword ptr fs:[edx]
 0055B7A6    mov         dword ptr fs:[edx],esp
 0055B7A9    mov         ecx,dword ptr [ebp-0C]
 0055B7AC    mov         dl,1
 0055B7AE    mov         eax,[0055AD64];TFileDialogEvents
 0055B7B3    call        TFileDialogEvents.Create;TFileDialogEvents.Create
 0055B7B8    lea         edx,[ebp-20]
 0055B7BB    push        edx
 0055B7BC    test        eax,eax
>0055B7BE    je          0055B7C3
 0055B7C0    sub         eax,0FFFFFFEC
 0055B7C3    push        eax
 0055B7C4    mov         eax,dword ptr [ebp-8]
 0055B7C7    push        eax
 0055B7C8    mov         eax,dword ptr [eax]
 0055B7CA    call        dword ptr [eax+1C]
 0055B7CD    mov         eax,dword ptr [ebp-0C]
 0055B7D0    test        byte ptr [eax+70],8;TCustomFileDialog.FOptions:TFileDialogOptions
>0055B7D4    je          0055B800
 0055B7D6    mov         eax,[007C4590];^gvar_0079EDE0
 0055B7DB    cmp         dword ptr [eax],6
>0055B7DE    jne         0055B800
 0055B7E0    mov         eax,[007C4B24];^gvar_0079EDE4
 0055B7E5    cmp         dword ptr [eax],0
>0055B7E8    jne         0055B800
 0055B7EA    mov         eax,dword ptr [ebp-0C]
 0055B7ED    mov         edx,dword ptr [ebp-0C]
 0055B7F0    mov         dword ptr [eax+94],edx;TCustomFileDialog.?f94:TFileDialogWrapper
 0055B7F6    mov         dword ptr [eax+90],55B494;TCustomFileDialog.FOnFolderChange:TNotifyEvent sub_0055B494
 0055B800    xor         edx,edx
 0055B802    push        ebp
 0055B803    push        55B85A
 0055B808    push        dword ptr fs:[edx]
 0055B80B    mov         dword ptr fs:[edx],esp
 0055B80E    mov         eax,dword ptr [ebp-10]
 0055B811    push        eax
 0055B812    mov         eax,dword ptr [ebp-8]
 0055B815    push        eax
 0055B816    mov         eax,dword ptr [eax]
 0055B818    call        dword ptr [eax+0C]
 0055B81B    test        eax,80000000
 0055B820    sete        al
 0055B823    mov         byte ptr [ebp-11],al
 0055B826    cmp         byte ptr [ebp-11],0
>0055B82A    je          0055B83F
 0055B82C    mov         eax,dword ptr [ebp-0C]
 0055B82F    mov         edx,dword ptr [eax]
 0055B831    call        dword ptr [edx+48];TCustomFileDialog.sub_0055BEB8
 0055B834    test        eax,80000000
 0055B839    sete        al
 0055B83C    mov         byte ptr [ebp-11],al
 0055B83F    xor         eax,eax
 0055B841    pop         edx
 0055B842    pop         ecx
 0055B843    pop         ecx
 0055B844    mov         dword ptr fs:[eax],edx
 0055B847    push        55B861
 0055B84C    mov         eax,dword ptr [ebp-20]
 0055B84F    push        eax
 0055B850    mov         eax,dword ptr [ebp-8]
 0055B853    push        eax
 0055B854    mov         eax,dword ptr [eax]
 0055B856    call        dword ptr [eax+20]
 0055B859    ret
>0055B85A    jmp         @HandleFinally
>0055B85F    jmp         0055B84C
 0055B861    xor         eax,eax
 0055B863    pop         edx
 0055B864    pop         ecx
 0055B865    pop         ecx
 0055B866    mov         dword ptr fs:[eax],edx
 0055B869    push        55B88F
 0055B86E    mov         eax,dword ptr [ebp-18]
 0055B871    call        EnableTaskWindows
 0055B876    mov         eax,dword ptr [ebp-10]
 0055B879    push        eax
 0055B87A    call        user32.SetActiveWindow
 0055B87F    mov         eax,dword ptr [ebp-1C]
 0055B882    call        005BE9C8
 0055B887    ret
>0055B888    jmp         @HandleFinally
>0055B88D    jmp         0055B86E
 0055B88F    xor         eax,eax
 0055B891    pop         edx
 0055B892    pop         ecx
 0055B893    pop         ecx
 0055B894    mov         dword ptr fs:[eax],edx
 0055B897    push        55B8AF
 0055B89C    mov         eax,dword ptr [ebp-0C]
 0055B89F    add         eax,4C;TCustomFileDialog.FDialog:IFileDialog
 0055B8A2    call        @IntfClear
 0055B8A7    ret
>0055B8A8    jmp         @HandleFinally
>0055B8AD    jmp         0055B89C
 0055B8AF    xor         eax,eax
 0055B8B1    pop         edx
 0055B8B2    pop         ecx
 0055B8B3    pop         ecx
 0055B8B4    mov         dword ptr fs:[eax],edx
 0055B8B7    push        55B8F2
 0055B8BC    lea         eax,[ebp-48]
 0055B8BF    mov         edx,dword ptr ds:[5186F4];TComdlgFilterSpecArray
 0055B8C5    call        @DynArrayClear
 0055B8CA    lea         eax,[ebp-34]
 0055B8CD    call        @IntfClear
 0055B8D2    lea         eax,[ebp-30]
 0055B8D5    call        @UStrClr
 0055B8DA    lea         eax,[ebp-8]
 0055B8DD    call        @IntfClear
 0055B8E2    lea         eax,[ebp-4]
 0055B8E5    call        @IntfClear
 0055B8EA    ret
>0055B8EB    jmp         @HandleFinally
>0055B8F0    jmp         0055B8BC
 0055B8F2    movzx       eax,byte ptr [ebp-11]
 0055B8F6    pop         edi
 0055B8F7    pop         esi
 0055B8F8    pop         ebx
 0055B8F9    mov         esp,ebp
 0055B8FB    pop         ebp
 0055B8FC    ret
*}
end;

//0055B95C
procedure TCustomFileDialog.sub_0055B95C;
begin
{*
 0055B95C    push        ebx
 0055B95D    push        esi
 0055B95E    mov         ebx,eax
 0055B960    mov         eax,ebx
 0055B962    mov         edx,dword ptr [eax]
 0055B964    call        dword ptr [edx+48];TCustomFileDialog.sub_0055BEB8
 0055B967    mov         esi,eax
 0055B969    test        esi,80000000
 0055B96F    sete        al
 0055B972    test        al,al
>0055B974    je          0055B98B
 0055B976    mov         eax,ebx
 0055B978    mov         si,0FFEE
 0055B97C    call        @CallDynaInst;TCustomFileDialog.sub_0055B350
 0055B981    and         eax,7F
 0055B984    mov         esi,dword ptr [eax*4+7A1840]
 0055B98B    mov         eax,ebx
 0055B98D    call        0055BDE0
 0055B992    mov         edx,dword ptr [eax]
 0055B994    call        dword ptr [edx+48]
 0055B997    mov         eax,esi
 0055B999    pop         esi
 0055B99A    pop         ebx
 0055B99B    ret
*}
end;

//0055B99C
procedure TCustomFileDialog.sub_0055B99C;
begin
{*
 0055B99C    push        ebx
 0055B99D    push        esi
 0055B99E    push        edi
 0055B99F    mov         ebx,eax
 0055B9A1    lea         eax,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055B9A4    call        @UStrClr
 0055B9A9    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055B9AC    push        eax
 0055B9AD    mov         eax,dword ptr [ebx+4C];TCustomFileDialog.FDialog:IFileDialog
 0055B9B0    push        eax
 0055B9B1    mov         eax,dword ptr [eax]
 0055B9B3    call        dword ptr [eax+34]
 0055B9B6    mov         edi,eax
 0055B9B8    test        edi,80000000
 0055B9BE    sete        al
 0055B9C1    test        al,al
>0055B9C3    je          0055B9F0
 0055B9C5    lea         ecx,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055B9C8    mov         edx,dword ptr [ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055B9CB    mov         eax,ebx
 0055B9CD    mov         si,0FFE6
 0055B9D1    call        @CallDynaInst;TCustomFileDialog.sub_0055BDE4
 0055B9D6    mov         edi,eax
 0055B9D8    test        edi,80000000
 0055B9DE    sete        al
 0055B9E1    test        al,al
>0055B9E3    je          0055B9F0
 0055B9E5    mov         eax,ebx
 0055B9E7    mov         si,0FFED
 0055B9EB    call        @CallDynaInst;TCustomFileDialog.sub_0055B37C
 0055B9F0    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055B9F3    call        @IntfClear
 0055B9F8    mov         eax,edi
 0055B9FA    pop         edi
 0055B9FB    pop         esi
 0055B9FC    pop         ebx
 0055B9FD    ret
*}
end;

//0055BA00
{*procedure TCustomFileDialog.sub_0055BA00(?:?);
begin
 0055BA00    push        ebp
 0055BA01    mov         ebp,esp
 0055BA03    push        ecx
 0055BA04    push        ebx
 0055BA05    push        esi
 0055BA06    mov         dword ptr [ebp-4],edx
 0055BA09    mov         ebx,eax
 0055BA0B    mov         eax,dword ptr [ebp-4]
 0055BA0E    call        @IntfAddRef
 0055BA13    xor         eax,eax
 0055BA15    push        ebp
 0055BA16    push        55BA87
 0055BA1B    push        dword ptr fs:[eax]
 0055BA1E    mov         dword ptr fs:[eax],esp
 0055BA21    lea         eax,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BA24    call        @UStrClr
 0055BA29    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055BA2C    mov         edx,dword ptr [ebp-4]
 0055BA2F    call        @IntfCopy
 0055BA34    lea         ecx,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BA37    mov         edx,dword ptr [ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055BA3A    mov         eax,ebx
 0055BA3C    mov         si,0FFE6
 0055BA40    call        @CallDynaInst;TCustomFileDialog.sub_0055BDE4
 0055BA45    mov         esi,eax
 0055BA47    test        esi,80000000
 0055BA4D    sete        al
 0055BA50    test        al,al
>0055BA52    je          0055BA69
 0055BA54    mov         eax,ebx
 0055BA56    mov         si,0FFEC
 0055BA5A    call        @CallDynaInst;TCustomFileDialog.sub_0055B39C
 0055BA5F    and         eax,7F
 0055BA62    mov         esi,dword ptr [eax*4+7A1848]
 0055BA69    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055BA6C    call        @IntfClear
 0055BA71    xor         eax,eax
 0055BA73    pop         edx
 0055BA74    pop         ecx
 0055BA75    pop         ecx
 0055BA76    mov         dword ptr fs:[eax],edx
 0055BA79    push        55BA8E
 0055BA7E    lea         eax,[ebp-4]
 0055BA81    call        @IntfClear
 0055BA86    ret
>0055BA87    jmp         @HandleFinally
>0055BA8C    jmp         0055BA7E
 0055BA8E    mov         eax,esi
 0055BA90    pop         esi
 0055BA91    pop         ebx
 0055BA92    pop         ecx
 0055BA93    pop         ebp
 0055BA94    ret
end;*}

//0055BA98
{*procedure TFileOpenDialog.GetDefaultFolder(?:?);
begin
 0055BA98    push        ebx
 0055BA99    push        esi
 0055BA9A    mov         esi,edx
 0055BA9C    mov         ebx,eax
 0055BA9E    mov         eax,esi
 0055BAA0    mov         edx,dword ptr [ebx+48];TFileOpenDialog.FDefaultFolder:string
 0055BAA3    call        @UStrAsg
 0055BAA8    pop         esi
 0055BAA9    pop         ebx
 0055BAAA    ret
end;*}

//0055BAAC
function TCustomFileDialog.GetFileName:TFileName;
begin
{*
 0055BAAC    push        ebp
 0055BAAD    mov         ebp,esp
 0055BAAF    mov         ecx,4
 0055BAB4    push        0
 0055BAB6    push        0
 0055BAB8    dec         ecx
>0055BAB9    jne         0055BAB4
 0055BABB    push        ecx
 0055BABC    push        ebx
 0055BABD    push        esi
 0055BABE    mov         dword ptr [ebp-18],edx
 0055BAC1    mov         dword ptr [ebp-14],eax
 0055BAC4    xor         eax,eax
 0055BAC6    push        ebp
 0055BAC7    push        55BC23
 0055BACC    push        dword ptr fs:[eax]
 0055BACF    mov         dword ptr fs:[eax],esp
 0055BAD2    mov         eax,dword ptr [ebp-14]
 0055BAD5    cmp         dword ptr [eax+4C],0
>0055BAD9    je          0055BAF8
 0055BADB    mov         eax,dword ptr [ebp-14]
 0055BADE    add         eax,74
 0055BAE1    push        eax
 0055BAE2    mov         eax,dword ptr [ebp-14]
 0055BAE5    mov         eax,dword ptr [eax+4C]
 0055BAE8    push        eax
 0055BAE9    mov         eax,dword ptr [eax]
 0055BAEB    call        dword ptr [eax+34]
 0055BAEE    test        eax,80000000
 0055BAF3    sete        al
>0055BAF6    jmp         0055BAFA
 0055BAF8    xor         eax,eax
 0055BAFA    test        al,al
>0055BAFC    je          0055BBEA
 0055BB02    lea         ecx,[ebp-4]
 0055BB05    mov         eax,dword ptr [ebp-14]
 0055BB08    mov         edx,dword ptr [eax+74]
 0055BB0B    mov         eax,dword ptr [ebp-14]
 0055BB0E    mov         si,0FFE6
 0055BB12    call        @CallDynaInst
 0055BB17    test        eax,80000000
 0055BB1C    sete        al
 0055BB1F    test        al,al
>0055BB21    je          0055BBEA
 0055BB27    mov         eax,dword ptr [ebp-14]
 0055BB2A    mov         eax,dword ptr [eax+5C]
 0055BB2D    mov         edx,dword ptr [eax]
 0055BB2F    call        dword ptr [edx+14]
 0055BB32    test        eax,eax
>0055BB34    jne         0055BBB5
 0055BB36    lea         eax,[ebp-1C]
 0055BB39    push        eax
 0055BB3A    mov         eax,dword ptr [ebp-14]
 0055BB3D    mov         eax,dword ptr [eax+4C]
 0055BB40    push        eax
 0055BB41    mov         eax,dword ptr [eax]
 0055BB43    call        dword ptr [eax+40]
 0055BB46    test        eax,80000000
 0055BB4B    sete        al
 0055BB4E    test        al,al
>0055BB50    je          0055BBA8
 0055BB52    xor         eax,eax
 0055BB54    push        ebp
 0055BB55    push        55BBA1
 0055BB5A    push        dword ptr fs:[eax]
 0055BB5D    mov         dword ptr fs:[eax],esp
 0055BB60    lea         eax,[ebp-8]
 0055BB63    mov         edx,dword ptr [ebp-1C]
 0055BB66    call        @UStrFromPWChar
 0055BB6B    lea         eax,[ebp-0C]
 0055BB6E    push        eax
 0055BB6F    mov         cl,1
 0055BB71    mov         edx,dword ptr [ebp-8]
 0055BB74    mov         eax,dword ptr [ebp-4]
 0055BB77    call        004B3C2C
 0055BB7C    mov         eax,dword ptr [ebp-14]
 0055BB7F    add         eax,54
 0055BB82    mov         edx,dword ptr [ebp-0C]
 0055BB85    call        @UStrAsg
 0055BB8A    xor         eax,eax
 0055BB8C    pop         edx
 0055BB8D    pop         ecx
 0055BB8E    pop         ecx
 0055BB8F    mov         dword ptr fs:[eax],edx
 0055BB92    push        55BBEA
 0055BB97    mov         eax,dword ptr [ebp-1C]
 0055BB9A    push        eax
 0055BB9B    call        ole32.CoTaskMemFree
 0055BBA0    ret
>0055BBA1    jmp         @HandleFinally
>0055BBA6    jmp         0055BB97
 0055BBA8    mov         eax,dword ptr [ebp-14]
 0055BBAB    add         eax,54
 0055BBAE    call        @UStrClr
>0055BBB3    jmp         0055BBEA
 0055BBB5    lea         ecx,[ebp-20]
 0055BBB8    mov         eax,dword ptr [ebp-14]
 0055BBBB    mov         eax,dword ptr [eax+5C]
 0055BBBE    xor         edx,edx
 0055BBC0    mov         ebx,dword ptr [eax]
 0055BBC2    call        dword ptr [ebx+0C]
 0055BBC5    mov         ebx,dword ptr [ebp-20]
 0055BBC8    lea         eax,[ebp-10]
 0055BBCB    push        eax
 0055BBCC    mov         cl,1
 0055BBCE    mov         dword ptr [ebp-24],ebx
 0055BBD1    mov         edx,dword ptr [ebp-24]
 0055BBD4    mov         eax,dword ptr [ebp-4]
 0055BBD7    call        004B3C2C
 0055BBDC    mov         eax,dword ptr [ebp-14]
 0055BBDF    add         eax,54
 0055BBE2    mov         edx,dword ptr [ebp-10]
 0055BBE5    call        @UStrAsg
 0055BBEA    mov         eax,dword ptr [ebp-18]
 0055BBED    mov         edx,dword ptr [ebp-14]
 0055BBF0    mov         edx,dword ptr [edx+54]
 0055BBF3    call        @UStrAsg
 0055BBF8    xor         eax,eax
 0055BBFA    pop         edx
 0055BBFB    pop         ecx
 0055BBFC    pop         ecx
 0055BBFD    mov         dword ptr fs:[eax],edx
 0055BC00    push        55BC2A
 0055BC05    lea         eax,[ebp-20]
 0055BC08    call        @UStrClr
 0055BC0D    lea         eax,[ebp-10]
 0055BC10    mov         edx,3
 0055BC15    call        @UStrArrayClr
 0055BC1A    lea         eax,[ebp-4]
 0055BC1D    call        @UStrClr
 0055BC22    ret
>0055BC23    jmp         @HandleFinally
>0055BC28    jmp         0055BC05
 0055BC2A    pop         esi
 0055BC2B    pop         ebx
 0055BC2C    mov         esp,ebp
 0055BC2E    pop         ebp
 0055BC2F    ret
*}
end;

//0055BC70
{*procedure TCustomFileDialog.sub_0055BC70(?:?);
begin
 0055BC70    push        ebp
 0055BC71    mov         ebp,esp
 0055BC73    add         esp,0FFFFFFE0
 0055BC76    push        ebx
 0055BC77    push        esi
 0055BC78    push        edi
 0055BC79    xor         ecx,ecx
 0055BC7B    mov         dword ptr [ebp-20],ecx
 0055BC7E    mov         dword ptr [ebp-8],ecx
 0055BC81    mov         dword ptr [ebp-0C],ecx
 0055BC84    mov         dword ptr [ebp-4],edx
 0055BC87    mov         ebx,eax
 0055BC89    mov         eax,dword ptr [ebp-4]
 0055BC8C    call        @IntfAddRef
 0055BC91    xor         eax,eax
 0055BC93    push        ebp
 0055BC94    push        55BDCF
 0055BC99    push        dword ptr fs:[eax]
 0055BC9C    mov         dword ptr fs:[eax],esp
 0055BC9F    mov         eax,ebx
 0055BCA1    call        0055BDE0
 0055BCA6    mov         edx,dword ptr [eax]
 0055BCA8    call        dword ptr [edx+48]
 0055BCAB    lea         eax,[ebp-8]
 0055BCAE    push        eax
 0055BCAF    mov         eax,dword ptr [ebp-4]
 0055BCB2    push        eax
 0055BCB3    mov         eax,dword ptr [eax]
 0055BCB5    call        dword ptr [eax+24]
 0055BCB8    mov         edi,eax
 0055BCBA    test        edi,80000000
 0055BCC0    sete        al
 0055BCC3    test        al,al
>0055BCC5    je          0055BD9B
 0055BCCB    lea         eax,[ebp-18]
 0055BCCE    push        eax
 0055BCCF    mov         eax,dword ptr [ebp-4]
 0055BCD2    push        eax
 0055BCD3    mov         eax,dword ptr [eax]
 0055BCD5    call        dword ptr [eax+1C]
 0055BCD8    mov         edi,eax
 0055BCDA    test        edi,80000000
 0055BCE0    sete        al
 0055BCE3    test        al,al
>0055BCE5    je          0055BD6F
 0055BCEB    mov         eax,dword ptr [ebp-18]
 0055BCEE    push        eax
 0055BCEF    lea         eax,[ebp-0C]
 0055BCF2    mov         ecx,1
 0055BCF7    mov         edx,dword ptr ds:[55BC30];:TCustomFileDialog.:1
 0055BCFD    call        @DynArraySetLength
 0055BD02    add         esp,4
 0055BD05    lea         eax,[ebp-10]
 0055BD08    push        eax
 0055BD09    mov         eax,dword ptr [ebp-0C]
 0055BD0C    call        @IntfClear
 0055BD11    push        eax
 0055BD12    mov         eax,dword ptr [ebp-18]
 0055BD15    push        eax
 0055BD16    mov         eax,dword ptr [ebp-8]
 0055BD19    push        eax
 0055BD1A    mov         eax,dword ptr [eax]
 0055BD1C    call        dword ptr [eax+0C]
 0055BD1F    mov         edi,eax
 0055BD21    test        edi,80000000
 0055BD27    sete        al
 0055BD2A    test        al,al
>0055BD2C    je          0055BD6F
 0055BD2E    mov         eax,dword ptr [ebp-10]
 0055BD31    dec         eax
 0055BD32    test        eax,eax
>0055BD34    jl          0055BD6F
 0055BD36    inc         eax
 0055BD37    mov         dword ptr [ebp-1C],eax
 0055BD3A    mov         dword ptr [ebp-14],0
 0055BD41    mov         eax,dword ptr [ebp-0C]
 0055BD44    mov         edx,dword ptr [ebp-14]
 0055BD47    mov         edx,dword ptr [eax+edx*4]
 0055BD4A    lea         ecx,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BD4D    mov         eax,ebx
 0055BD4F    mov         si,0FFE6
 0055BD53    call        @CallDynaInst;TCustomFileDialog.sub_0055BDE4
 0055BD58    mov         eax,ebx
 0055BD5A    call        0055BDE0
 0055BD5F    mov         edx,dword ptr [ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BD62    mov         ecx,dword ptr [eax]
 0055BD64    call        dword ptr [ecx+3C]
 0055BD67    inc         dword ptr [ebp-14]
 0055BD6A    dec         dword ptr [ebp-1C]
>0055BD6D    jne         0055BD41
 0055BD6F    mov         eax,ebx
 0055BD71    call        0055BDE0
 0055BD76    mov         edx,dword ptr [eax]
 0055BD78    call        dword ptr [edx+14]
 0055BD7B    test        eax,eax
>0055BD7D    jle         0055BD9B
 0055BD7F    mov         eax,ebx
 0055BD81    call        0055BDE0
 0055BD86    lea         ecx,[ebp-20]
 0055BD89    xor         edx,edx
 0055BD8B    mov         esi,dword ptr [eax]
 0055BD8D    call        dword ptr [esi+0C]
 0055BD90    mov         edx,dword ptr [ebp-20]
 0055BD93    lea         eax,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BD96    call        @UStrAsg
 0055BD9B    xor         eax,eax
 0055BD9D    pop         edx
 0055BD9E    pop         ecx
 0055BD9F    pop         ecx
 0055BDA0    mov         dword ptr fs:[eax],edx
 0055BDA3    push        55BDD6
 0055BDA8    lea         eax,[ebp-20]
 0055BDAB    call        @UStrClr
 0055BDB0    lea         eax,[ebp-0C]
 0055BDB3    mov         edx,dword ptr ds:[55BC30];:TCustomFileDialog.:1
 0055BDB9    call        @DynArrayClear
 0055BDBE    lea         eax,[ebp-8]
 0055BDC1    call        @IntfClear
 0055BDC6    lea         eax,[ebp-4]
 0055BDC9    call        @IntfClear
 0055BDCE    ret
>0055BDCF    jmp         @HandleFinally
>0055BDD4    jmp         0055BDA8
 0055BDD6    mov         eax,edi
 0055BDD8    pop         edi
 0055BDD9    pop         esi
 0055BDDA    pop         ebx
 0055BDDB    mov         esp,ebp
 0055BDDD    pop         ebp
 0055BDDE    ret
end;*}

//0055BDE0
{*function sub_0055BDE0(?:TCustomFileDialog):?;
begin
 0055BDE0    mov         eax,dword ptr [eax+5C];TCustomFileDialog.FFiles:TStrings
 0055BDE3    ret
end;*}

//0055BDE4
{*procedure TCustomFileDialog.sub_0055BDE4(?:?; ?:?);
begin
 0055BDE4    push        ebp
 0055BDE5    mov         ebp,esp
 0055BDE7    add         esp,0FFFFFFF0
 0055BDEA    push        ebx
 0055BDEB    xor         ebx,ebx
 0055BDED    mov         dword ptr [ebp-8],ebx
 0055BDF0    mov         ebx,ecx
 0055BDF2    mov         dword ptr [ebp-4],edx
 0055BDF5    mov         eax,dword ptr [ebp-4]
 0055BDF8    call        @IntfAddRef
 0055BDFD    xor         eax,eax
 0055BDFF    push        ebp
 0055BE00    push        55BEA7
 0055BE05    push        dword ptr fs:[eax]
 0055BE08    mov         dword ptr fs:[eax],esp
 0055BE0B    lea         eax,[ebp-10]
 0055BE0E    push        eax
 0055BE0F    push        80058000
 0055BE14    mov         eax,dword ptr [ebp-4]
 0055BE17    push        eax
 0055BE18    mov         eax,dword ptr [eax]
 0055BE1A    call        dword ptr [eax+14]
 0055BE1D    mov         dword ptr [ebp-0C],eax
 0055BE20    test        byte ptr [ebp-9],80
 0055BE24    setne       al
 0055BE27    test        al,al
>0055BE29    je          0055BE3D
 0055BE2B    lea         eax,[ebp-10]
 0055BE2E    push        eax
 0055BE2F    push        0
 0055BE31    mov         eax,dword ptr [ebp-4]
 0055BE34    push        eax
 0055BE35    mov         eax,dword ptr [eax]
 0055BE37    call        dword ptr [eax+14]
 0055BE3A    mov         dword ptr [ebp-0C],eax
 0055BE3D    test        byte ptr [ebp-9],80
 0055BE41    sete        al
 0055BE44    test        al,al
>0055BE46    je          0055BE89
 0055BE48    xor         eax,eax
 0055BE4A    push        ebp
 0055BE4B    push        55BE82
 0055BE50    push        dword ptr fs:[eax]
 0055BE53    mov         dword ptr fs:[eax],esp
 0055BE56    lea         eax,[ebp-8]
 0055BE59    mov         edx,dword ptr [ebp-10]
 0055BE5C    call        @UStrFromPWChar
 0055BE61    mov         eax,ebx
 0055BE63    mov         edx,dword ptr [ebp-8]
 0055BE66    call        @UStrAsg
 0055BE6B    xor         eax,eax
 0055BE6D    pop         edx
 0055BE6E    pop         ecx
 0055BE6F    pop         ecx
 0055BE70    mov         dword ptr fs:[eax],edx
 0055BE73    push        55BE89
 0055BE78    mov         eax,dword ptr [ebp-10]
 0055BE7B    push        eax
 0055BE7C    call        ole32.CoTaskMemFree
 0055BE81    ret
>0055BE82    jmp         @HandleFinally
>0055BE87    jmp         0055BE78
 0055BE89    xor         eax,eax
 0055BE8B    pop         edx
 0055BE8C    pop         ecx
 0055BE8D    pop         ecx
 0055BE8E    mov         dword ptr fs:[eax],edx
 0055BE91    push        55BEAE
 0055BE96    lea         eax,[ebp-8]
 0055BE99    call        @UStrClr
 0055BE9E    lea         eax,[ebp-4]
 0055BEA1    call        @IntfClear
 0055BEA6    ret
>0055BEA7    jmp         @HandleFinally
>0055BEAC    jmp         0055BE96
 0055BEAE    mov         eax,dword ptr [ebp-0C]
 0055BEB1    pop         ebx
 0055BEB2    mov         esp,ebp
 0055BEB4    pop         ebp
 0055BEB5    ret
end;*}

//0055BEB8
{*function sub_0055BEB8:?;
begin
 0055BEB8    push        ebx
 0055BEB9    push        esi
 0055BEBA    mov         ebx,eax
 0055BEBC    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055BEBF    push        eax
 0055BEC0    mov         eax,dword ptr [ebx+4C];TCustomFileDialog.FDialog:IFileDialog
 0055BEC3    push        eax
 0055BEC4    mov         eax,dword ptr [eax]
 0055BEC6    call        dword ptr [eax+50]
 0055BEC9    mov         esi,eax
 0055BECB    test        esi,80000000
 0055BED1    sete        al
 0055BED4    test        al,al
>0055BED6    je          0055BF34
 0055BED8    lea         ecx,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BEDB    mov         edx,dword ptr [ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055BEDE    mov         eax,ebx
 0055BEE0    mov         si,0FFE6
 0055BEE4    call        @CallDynaInst;TCustomFileDialog.sub_0055BDE4
 0055BEE9    mov         esi,eax
 0055BEEB    test        byte ptr [ebx+70],8;TCustomFileDialog.FOptions:TFileDialogOptions
>0055BEEF    je          0055BF21
 0055BEF1    mov         eax,[007C4590];^gvar_0079EDE0
 0055BEF6    cmp         dword ptr [eax],6
>0055BEF9    jne         0055BF21
 0055BEFB    mov         eax,[007C4B24];^gvar_0079EDE4
 0055BF00    cmp         dword ptr [eax],0
>0055BF03    jne         0055BF21
 0055BF05    mov         eax,dword ptr [ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BF08    mov         dl,1
 0055BF0A    call        0041EAB0
 0055BF0F    test        al,al
>0055BF11    jne         0055BF21
 0055BF13    lea         eax,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BF16    mov         edx,dword ptr [ebx+0C0];TCustomFileDialog.FActualFolder:TFileName
 0055BF1C    call        @UStrAsg
 0055BF21    mov         eax,dword ptr [ebx+5C];TCustomFileDialog.FFiles:TStrings
 0055BF24    mov         edx,dword ptr [eax]
 0055BF26    call        dword ptr [edx+48];TStrings.Clear
 0055BF29    mov         edx,dword ptr [ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BF2C    mov         eax,dword ptr [ebx+5C];TCustomFileDialog.FFiles:TStrings
 0055BF2F    mov         ecx,dword ptr [eax]
 0055BF31    call        dword ptr [ecx+3C];TStrings.Add
 0055BF34    mov         eax,esi
 0055BF36    pop         esi
 0055BF37    pop         ebx
 0055BF38    ret
end;*}

//0055BF3C
procedure sub_0055BF3C(?:TCustomFileDialog);
begin
{*
 0055BF3C    push        ebp
 0055BF3D    mov         ebp,esp
 0055BF3F    push        0
 0055BF41    push        ebx
 0055BF42    mov         ebx,eax
 0055BF44    xor         eax,eax
 0055BF46    push        ebp
 0055BF47    push        55BF90
 0055BF4C    push        dword ptr fs:[eax]
 0055BF4F    mov         dword ptr fs:[eax],esp
 0055BF52    lea         eax,[ebp-4]
 0055BF55    call        @IntfClear
 0055BF5A    mov         ecx,eax
 0055BF5C    mov         edx,55BF9C;['{00000114-0000-0000-C000-000000000046}']
 0055BF61    mov         eax,dword ptr [ebx+4C];TCustomFileDialog.FDialog:IFileDialog
 0055BF64    call        Supports
 0055BF69    test        al,al
>0055BF6B    je          0055BF7A
 0055BF6D    lea         eax,[ebx+68];TCustomFileDialog.FHandle:HWND
 0055BF70    push        eax
 0055BF71    mov         eax,dword ptr [ebp-4]
 0055BF74    push        eax
 0055BF75    mov         eax,dword ptr [eax]
 0055BF77    call        dword ptr [eax+0C]
 0055BF7A    xor         eax,eax
 0055BF7C    pop         edx
 0055BF7D    pop         ecx
 0055BF7E    pop         ecx
 0055BF7F    mov         dword ptr fs:[eax],edx
 0055BF82    push        55BF97
 0055BF87    lea         eax,[ebp-4]
 0055BF8A    call        @IntfClear
 0055BF8F    ret
>0055BF90    jmp         @HandleFinally
>0055BF95    jmp         0055BF87
 0055BF97    pop         ebx
 0055BF98    pop         ecx
 0055BF99    pop         ebp
 0055BF9A    ret
*}
end;

//0055BFAC
{*procedure TCustomFileDialog.sub_0055BFAC(?:?; ?:?);
begin
 0055BFAC    push        ebp
 0055BFAD    mov         ebp,esp
 0055BFAF    add         esp,0FFFFFFF4
 0055BFB2    push        ebx
 0055BFB3    push        esi
 0055BFB4    push        edi
 0055BFB5    mov         dword ptr [ebp-8],ecx
 0055BFB8    mov         dword ptr [ebp-4],edx
 0055BFBB    mov         ebx,eax
 0055BFBD    mov         eax,dword ptr [ebp-4]
 0055BFC0    call        @IntfAddRef
 0055BFC5    xor         eax,eax
 0055BFC7    push        ebp
 0055BFC8    push        55C03F
 0055BFCD    push        dword ptr fs:[eax]
 0055BFD0    mov         dword ptr fs:[eax],esp
 0055BFD3    lea         eax,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BFD6    call        @UStrClr
 0055BFDB    mov         byte ptr [ebp-9],1
 0055BFDF    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055BFE2    mov         edx,dword ptr [ebp-4]
 0055BFE5    call        @IntfCopy
 0055BFEA    lea         ecx,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055BFED    mov         edx,dword ptr [ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055BFF0    mov         eax,ebx
 0055BFF2    mov         si,0FFE6
 0055BFF6    call        @CallDynaInst;TCustomFileDialog.sub_0055BDE4
 0055BFFB    mov         edi,eax
 0055BFFD    test        edi,80000000
 0055C003    sete        al
 0055C006    test        al,al
>0055C008    je          0055C018
 0055C00A    lea         edx,[ebp-9]
 0055C00D    mov         eax,ebx
 0055C00F    mov         si,0FFEB
 0055C013    call        @CallDynaInst;TCustomFileDialog.sub_0055B3C8
 0055C018    movzx       eax,byte ptr [ebp-9]
 0055C01C    mov         edx,dword ptr [ebp-8]
 0055C01F    mov         dword ptr [edx],eax
 0055C021    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055C024    call        @IntfClear
 0055C029    xor         eax,eax
 0055C02B    pop         edx
 0055C02C    pop         ecx
 0055C02D    pop         ecx
 0055C02E    mov         dword ptr fs:[eax],edx
 0055C031    push        55C046
 0055C036    lea         eax,[ebp-4]
 0055C039    call        @IntfClear
 0055C03E    ret
>0055C03F    jmp         @HandleFinally
>0055C044    jmp         0055C036
 0055C046    mov         eax,edi
 0055C048    pop         edi
 0055C049    pop         esi
 0055C04A    pop         ebx
 0055C04B    mov         esp,ebp
 0055C04D    pop         ebp
 0055C04E    ret
end;*}

//0055C050
procedure TCustomFileDialog.sub_0055C050;
begin
{*
 0055C050    push        ebx
 0055C051    push        esi
 0055C052    push        edi
 0055C053    mov         ebx,eax
 0055C055    lea         eax,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055C058    call        @UStrClr
 0055C05D    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055C060    push        eax
 0055C061    mov         eax,dword ptr [ebx+4C];TCustomFileDialog.FDialog:IFileDialog
 0055C064    push        eax
 0055C065    mov         eax,dword ptr [eax]
 0055C067    call        dword ptr [eax+38]
 0055C06A    mov         edi,eax
 0055C06C    test        edi,80000000
 0055C072    sete        al
 0055C075    test        al,al
>0055C077    je          0055C0A4
 0055C079    lea         ecx,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055C07C    mov         edx,dword ptr [ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055C07F    mov         eax,ebx
 0055C081    mov         si,0FFE6
 0055C085    call        @CallDynaInst;TCustomFileDialog.sub_0055BDE4
 0055C08A    mov         edi,eax
 0055C08C    test        edi,80000000
 0055C092    sete        al
 0055C095    test        al,al
>0055C097    je          0055C0A4
 0055C099    mov         eax,ebx
 0055C09B    mov         si,0FFEA
 0055C09F    call        @CallDynaInst;TOpenDialog.DoFolderChange
 0055C0A4    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055C0A7    call        @IntfClear
 0055C0AC    mov         eax,edi
 0055C0AE    pop         edi
 0055C0AF    pop         esi
 0055C0B0    pop         ebx
 0055C0B1    ret
*}
end;

//0055C0B4
procedure TFileOpenDialog.SetClientGuid(Value:string);
begin
{*
 0055C0B4    push        ebx
 0055C0B5    push        esi
 0055C0B6    add         esp,0FFFFFFF0
 0055C0B9    mov         esi,edx
 0055C0BB    mov         ebx,eax
 0055C0BD    mov         eax,esi
 0055C0BF    mov         edx,dword ptr [ebx+40];TFileOpenDialog.FClientGuid:string
 0055C0C2    call        @UStrEqual
>0055C0C7    je          0055C0E0
 0055C0C9    test        esi,esi
>0055C0CB    je          0055C0D6
 0055C0CD    mov         edx,esp
 0055C0CF    mov         eax,esi
 0055C0D1    call        StringToGUID
 0055C0D6    lea         eax,[ebx+40];TFileOpenDialog.FClientGuid:string
 0055C0D9    mov         edx,esi
 0055C0DB    call        @UStrAsg
 0055C0E0    add         esp,10
 0055C0E3    pop         esi
 0055C0E4    pop         ebx
 0055C0E5    ret
*}
end;

//0055C0E8
procedure TFileOpenDialog.SetDefaultFolder(Value:string);
begin
{*
 0055C0E8    push        ebx
 0055C0E9    push        esi
 0055C0EA    mov         esi,edx
 0055C0EC    mov         ebx,eax
 0055C0EE    mov         eax,dword ptr [ebx+48];TFileOpenDialog.FDefaultFolder:string
 0055C0F1    mov         edx,esi
 0055C0F3    call        @UStrEqual
>0055C0F8    je          0055C104
 0055C0FA    lea         eax,[ebx+48];TFileOpenDialog.FDefaultFolder:string
 0055C0FD    mov         edx,esi
 0055C0FF    call        @UStrAsg
 0055C104    pop         esi
 0055C105    pop         ebx
 0055C106    ret
*}
end;

//0055C108
procedure TFileOpenDialog.SetFileName(Value:TFileName);
begin
{*
 0055C108    push        ebx
 0055C109    push        esi
 0055C10A    mov         esi,edx
 0055C10C    mov         ebx,eax
 0055C10E    mov         eax,esi
 0055C110    mov         edx,dword ptr [ebx+54];TFileOpenDialog.FFileName:TFileName
 0055C113    call        @UStrEqual
>0055C118    je          0055C124
 0055C11A    lea         eax,[ebx+54];TFileOpenDialog.FFileName:TFileName
 0055C11D    mov         edx,esi
 0055C11F    call        @UStrAsg
 0055C124    pop         esi
 0055C125    pop         ebx
 0055C126    ret
*}
end;

//0055C128
procedure TFileOpenDialog.SetFileTypes(Value:TFileTypeItems);
begin
{*
 0055C128    test        edx,edx
>0055C12A    je          0055C134
 0055C12C    mov         eax,dword ptr [eax+64];TFileOpenDialog.FFileTypes:TFileTypeItems
 0055C12F    mov         ecx,dword ptr [eax]
 0055C131    call        dword ptr [ecx+8];TCollection.Assign
 0055C134    ret
*}
end;

//0055C138
procedure TFileOpenDialog.SetFavoriteLinks(Value:TFavoriteLinkItems);
begin
{*
 0055C138    test        edx,edx
>0055C13A    je          0055C144
 0055C13C    mov         eax,dword ptr [eax+50];TFileOpenDialog.FFavoriteLinks:TFavoriteLinkItems
 0055C13F    mov         ecx,dword ptr [eax]
 0055C141    call        dword ptr [ecx+8];TCollection.Assign
 0055C144    ret
*}
end;

//0055C148
{*procedure TCustomFileDialog.sub_0055C148(?:?; ?:?);
begin
 0055C148    push        ebp
 0055C149    mov         ebp,esp
 0055C14B    add         esp,0FFFFFFF4
 0055C14E    push        ebx
 0055C14F    push        esi
 0055C150    push        edi
 0055C151    mov         dword ptr [ebp-8],ecx
 0055C154    mov         dword ptr [ebp-4],edx
 0055C157    mov         ebx,eax
 0055C159    mov         eax,dword ptr [ebp-4]
 0055C15C    call        @IntfAddRef
 0055C161    xor         eax,eax
 0055C163    push        ebp
 0055C164    push        55C1DB
 0055C169    push        dword ptr fs:[eax]
 0055C16C    mov         dword ptr fs:[eax],esp
 0055C16F    lea         eax,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055C172    call        @UStrClr
 0055C177    mov         byte ptr [ebp-9],1
 0055C17B    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055C17E    mov         edx,dword ptr [ebp-4]
 0055C181    call        @IntfCopy
 0055C186    lea         ecx,[ebx+54];TCustomFileDialog.FFileName:TFileName
 0055C189    mov         edx,dword ptr [ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055C18C    mov         eax,ebx
 0055C18E    mov         si,0FFE6
 0055C192    call        @CallDynaInst;TCustomFileDialog.sub_0055BDE4
 0055C197    mov         edi,eax
 0055C199    test        edi,80000000
 0055C19F    sete        al
 0055C1A2    test        al,al
>0055C1A4    je          0055C1B4
 0055C1A6    lea         edx,[ebp-9]
 0055C1A9    mov         eax,ebx
 0055C1AB    mov         si,0FFE9
 0055C1AF    call        @CallDynaInst;TCustomFileDialog.sub_0055B408
 0055C1B4    movzx       eax,byte ptr [ebp-9]
 0055C1B8    mov         edx,dword ptr [ebp-8]
 0055C1BB    mov         dword ptr [edx],eax
 0055C1BD    lea         eax,[ebx+74];TCustomFileDialog.FShellItem:IShellItem
 0055C1C0    call        @IntfClear
 0055C1C5    xor         eax,eax
 0055C1C7    pop         edx
 0055C1C8    pop         ecx
 0055C1C9    pop         ecx
 0055C1CA    mov         dword ptr fs:[eax],edx
 0055C1CD    push        55C1E2
 0055C1D2    lea         eax,[ebp-4]
 0055C1D5    call        @IntfClear
 0055C1DA    ret
>0055C1DB    jmp         @HandleFinally
>0055C1E0    jmp         0055C1D2
 0055C1E2    mov         eax,edi
 0055C1E4    pop         edi
 0055C1E5    pop         esi
 0055C1E6    pop         ebx
 0055C1E7    mov         esp,ebp
 0055C1E9    pop         ebp
 0055C1EA    ret
end;*}

//0055C1EC
procedure TCustomFileDialog.sub_0055C1EC;
begin
{*
 0055C1EC    push        ebx
 0055C1ED    push        esi
 0055C1EE    push        edi
 0055C1EF    mov         ebx,eax
 0055C1F1    lea         eax,[ebx+60];TCustomFileDialog.FFileTypeIndex:Cardinal
 0055C1F4    push        eax
 0055C1F5    mov         eax,dword ptr [ebx+4C];TCustomFileDialog.FDialog:IFileDialog
 0055C1F8    push        eax
 0055C1F9    mov         eax,dword ptr [eax]
 0055C1FB    call        dword ptr [eax+18]
 0055C1FE    mov         edi,eax
 0055C200    cmp         word ptr [ebx+0BA],0;TCustomFileDialog.?fBA:word
>0055C208    je          0055C222
 0055C20A    test        edi,80000000
 0055C210    sete        al
 0055C213    test        al,al
>0055C215    je          0055C222
 0055C217    mov         eax,ebx
 0055C219    mov         si,0FFE8
 0055C21D    call        @CallDynaInst;TCustomFileDialog.sub_0055B428
 0055C222    mov         eax,edi
 0055C224    pop         edi
 0055C225    pop         esi
 0055C226    pop         ebx
 0055C227    ret
*}
end;

//0055C228
function TCustomFileOpenDialog.CreateFileDialog:IFileDialog;
begin
{*
 0055C228    push        ebx
 0055C229    push        esi
 0055C22A    push        edi
 0055C22B    add         esp,0FFFFFFE0
 0055C22E    mov         ebx,edx
 0055C230    mov         eax,[007C4C80]
 0055C235    mov         esi,eax
 0055C237    mov         edi,esp
 0055C239    movs        dword ptr [edi],dword ptr [esi]
 0055C23A    movs        dword ptr [edi],dword ptr [esi]
 0055C23B    movs        dword ptr [edi],dword ptr [esi]
 0055C23C    movs        dword ptr [edi],dword ptr [esi]
 0055C23D    mov         eax,ebx
 0055C23F    call        @IntfClear
 0055C244    push        eax
 0055C245    lea         edx,[esp+14]
 0055C249    mov         eax,55C27C;'{D57C7288-D4AD-4768-BE02-9D969532D960}'
 0055C24E    call        StringToGUID
 0055C253    lea         eax,[esp+14]
 0055C257    push        eax
 0055C258    push        1
 0055C25A    push        0
 0055C25C    lea         eax,[esp+10]
 0055C260    push        eax
 0055C261    call        ole32.CoCreateInstance
 0055C266    add         esp,20
 0055C269    pop         edi
 0055C26A    pop         esi
 0055C26B    pop         ebx
 0055C26C    ret
*}
end;

//0055C2CC
{*function sub_0055C2CC:?;
begin
 0055C2CC    push        ebp
 0055C2CD    mov         ebp,esp
 0055C2CF    push        0
 0055C2D1    push        ebx
 0055C2D2    push        esi
 0055C2D3    mov         ebx,eax
 0055C2D5    xor         eax,eax
 0055C2D7    push        ebp
 0055C2D8    push        55C346
 0055C2DD    push        dword ptr fs:[eax]
 0055C2E0    mov         dword ptr fs:[eax],esp
 0055C2E3    test        byte ptr [ebx+70],80;TCustomFileOpenDialog.FOptions:TFileDialogOptions
>0055C2E7    jne         0055C2F4
 0055C2E9    mov         eax,ebx
 0055C2EB    call        0055BEB8
 0055C2F0    mov         esi,eax
>0055C2F2    jmp         0055C330
 0055C2F4    lea         eax,[ebx+78];TCustomFileOpenDialog.FShellItems:IShellItemArray
 0055C2F7    push        eax
 0055C2F8    lea         eax,[ebp-4]
 0055C2FB    mov         edx,dword ptr [ebx+4C];TCustomFileOpenDialog.FDialog:IFileDialog
 0055C2FE    mov         ecx,55C354;['{D57C7288-D4AD-4768-BE02-9D969532D960}']
 0055C303    call        @IntfCast
 0055C308    mov         eax,dword ptr [ebp-4]
 0055C30B    push        eax
 0055C30C    mov         eax,dword ptr [eax]
 0055C30E    call        dword ptr [eax+6C]
 0055C311    mov         esi,eax
 0055C313    test        esi,80000000
 0055C319    sete        al
 0055C31C    test        al,al
>0055C31E    je          0055C330
 0055C320    mov         edx,dword ptr [ebx+78];TCustomFileOpenDialog.FShellItems:IShellItemArray
 0055C323    mov         eax,ebx
 0055C325    mov         si,0FFE7
 0055C329    call        @CallDynaInst;TCustomFileDialog.sub_0055BC70
 0055C32E    mov         esi,eax
 0055C330    xor         eax,eax
 0055C332    pop         edx
 0055C333    pop         ecx
 0055C334    pop         ecx
 0055C335    mov         dword ptr fs:[eax],edx
 0055C338    push        55C34D
 0055C33D    lea         eax,[ebp-4]
 0055C340    call        @IntfClear
 0055C345    ret
>0055C346    jmp         @HandleFinally
>0055C34B    jmp         0055C33D
 0055C34D    mov         eax,esi
 0055C34F    pop         esi
 0055C350    pop         ebx
 0055C351    pop         ecx
 0055C352    pop         ebp
 0055C353    ret
end;*}

//0055C364
procedure TCustomFileOpenDialog.sub_0055C050;
begin
{*
 0055C364    push        ebp
 0055C365    mov         ebp,esp
 0055C367    push        0
 0055C369    push        ebx
 0055C36A    push        esi
 0055C36B    push        edi
 0055C36C    mov         ebx,eax
 0055C36E    xor         eax,eax
 0055C370    push        ebp
 0055C371    push        55C40C
 0055C376    push        dword ptr fs:[eax]
 0055C379    mov         dword ptr fs:[eax],esp
 0055C37C    test        byte ptr [ebx+70],80;TCustomFileOpenDialog.FOptions:TFileDialogOptions
>0055C380    jne         0055C38D
 0055C382    mov         eax,ebx
 0055C384    call        TCustomFileDialog.sub_0055C050
 0055C389    mov         edi,eax
>0055C38B    jmp         0055C3F6
 0055C38D    lea         eax,[ebx+78];TCustomFileOpenDialog.FShellItems:IShellItemArray
 0055C390    push        eax
 0055C391    lea         eax,[ebp-4]
 0055C394    mov         edx,dword ptr [ebx+4C];TCustomFileOpenDialog.FDialog:IFileDialog
 0055C397    mov         ecx,55C41C;['{D57C7288-D4AD-4768-BE02-9D969532D960}']
 0055C39C    call        @IntfCast
 0055C3A1    mov         eax,dword ptr [ebp-4]
 0055C3A4    push        eax
 0055C3A5    mov         eax,dword ptr [eax]
 0055C3A7    call        dword ptr [eax+70]
 0055C3AA    mov         edi,eax
 0055C3AC    test        edi,80000000
 0055C3B2    sete        al
 0055C3B5    test        al,al
>0055C3B7    je          0055C3F6
 0055C3B9    mov         edx,dword ptr [ebx+78];TCustomFileOpenDialog.FShellItems:IShellItemArray
 0055C3BC    mov         eax,ebx
 0055C3BE    mov         si,0FFE7
 0055C3C2    call        @CallDynaInst;TCustomFileDialog.sub_0055BC70
 0055C3C7    mov         edi,eax
 0055C3C9    test        edi,80000000
 0055C3CF    sete        al
 0055C3D2    test        al,al
>0055C3D4    je          0055C3EE
 0055C3D6    lea         eax,[ebx+74];TCustomFileOpenDialog.FShellItem:IShellItem
 0055C3D9    push        eax
 0055C3DA    mov         eax,dword ptr [ebx+4C];TCustomFileOpenDialog.FDialog:IFileDialog
 0055C3DD    push        eax
 0055C3DE    mov         eax,dword ptr [eax]
 0055C3E0    call        dword ptr [eax+38]
 0055C3E3    mov         eax,ebx
 0055C3E5    mov         si,0FFEA
 0055C3E9    call        @CallDynaInst;TOpenDialog.DoFolderChange
 0055C3EE    lea         eax,[ebx+78];TCustomFileOpenDialog.FShellItems:IShellItemArray
 0055C3F1    call        @IntfClear
 0055C3F6    xor         eax,eax
 0055C3F8    pop         edx
 0055C3F9    pop         ecx
 0055C3FA    pop         ecx
 0055C3FB    mov         dword ptr fs:[eax],edx
 0055C3FE    push        55C413
 0055C403    lea         eax,[ebp-4]
 0055C406    call        @IntfClear
 0055C40B    ret
>0055C40C    jmp         @HandleFinally
>0055C411    jmp         0055C403
 0055C413    mov         eax,edi
 0055C415    pop         edi
 0055C416    pop         esi
 0055C417    pop         ebx
 0055C418    pop         ecx
 0055C419    pop         ebp
 0055C41A    ret
*}
end;

//0055C42C
function TCustomFileSaveDialog.CreateFileDialog:IFileDialog;
begin
{*
 0055C42C    push        ebx
 0055C42D    push        esi
 0055C42E    push        edi
 0055C42F    add         esp,0FFFFFFE0
 0055C432    mov         ebx,edx
 0055C434    mov         eax,[007C4738]
 0055C439    mov         esi,eax
 0055C43B    mov         edi,esp
 0055C43D    movs        dword ptr [edi],dword ptr [esi]
 0055C43E    movs        dword ptr [edi],dword ptr [esi]
 0055C43F    movs        dword ptr [edi],dword ptr [esi]
 0055C440    movs        dword ptr [edi],dword ptr [esi]
 0055C441    mov         eax,ebx
 0055C443    call        @IntfClear
 0055C448    push        eax
 0055C449    lea         edx,[esp+14]
 0055C44D    mov         eax,55C480;'{84BCCD23-5FDE-4CDB-AEA4-AF64B83D78AB}'
 0055C452    call        StringToGUID
 0055C457    lea         eax,[esp+14]
 0055C45B    push        eax
 0055C45C    push        1
 0055C45E    push        0
 0055C460    lea         eax,[esp+10]
 0055C464    push        eax
 0055C465    call        ole32.CoCreateInstance
 0055C46A    add         esp,20
 0055C46D    pop         edi
 0055C46E    pop         esi
 0055C46F    pop         ebx
 0055C470    ret
*}
end;

//0055C4D0
constructor TTaskDialogProgressBar.Create;
begin
{*
 0055C4D0    push        ebx
 0055C4D1    push        esi
 0055C4D2    push        edi
 0055C4D3    test        dl,dl
>0055C4D5    je          0055C4DF
 0055C4D7    add         esp,0FFFFFFF0
 0055C4DA    call        @ClassCreate
 0055C4DF    mov         esi,ecx
 0055C4E1    mov         ebx,edx
 0055C4E3    mov         edi,eax
 0055C4E5    xor         edx,edx
 0055C4E7    mov         eax,edi
 0055C4E9    call        TObject.Create
 0055C4EE    mov         dword ptr [edi+4],esi
 0055C4F1    mov         dword ptr [edi+0C],64
 0055C4F8    xor         eax,eax
 0055C4FA    mov         dword ptr [edi+10],eax
 0055C4FD    xor         eax,eax
 0055C4FF    mov         dword ptr [edi+14],eax
 0055C502    xor         eax,eax
 0055C504    mov         dword ptr [edi+8],eax
 0055C507    mov         byte ptr [edi+18],0
 0055C50B    mov         eax,edi
 0055C50D    test        bl,bl
>0055C50F    je          0055C520
 0055C511    call        @AfterConstruction
 0055C516    pop         dword ptr fs:[0]
 0055C51D    add         esp,0C
 0055C520    mov         eax,edi
 0055C522    pop         edi
 0055C523    pop         esi
 0055C524    pop         ebx
 0055C525    ret
*}
end;

//0055C528
procedure TTaskDialogProgressBar.SetMax(Value:Integer);
begin
{*
 0055C528    push        ebp
 0055C529    mov         ebp,esp
 0055C52B    add         esp,0FFFFFFF0
 0055C52E    push        ebx
 0055C52F    push        esi
 0055C530    xor         ecx,ecx
 0055C532    mov         dword ptr [ebp-0C],ecx
 0055C535    mov         dword ptr [ebp-10],ecx
 0055C538    mov         ebx,eax
 0055C53A    xor         eax,eax
 0055C53C    push        ebp
 0055C53D    push        55C5DE
 0055C542    push        dword ptr fs:[eax]
 0055C545    mov         dword ptr fs:[eax],esp
 0055C548    cmp         edx,dword ptr [ebx+0C];TTaskDialogProgressBar.FMax:Integer
>0055C54B    je          0055C5C3
 0055C54D    cmp         edx,dword ptr [ebx+10];TTaskDialogProgressBar.FMin:Integer
>0055C550    jge         0055C58D
 0055C552    lea         edx,[ebp-0C]
 0055C555    mov         eax,dword ptr [ebx]
 0055C557    call        TObject.ClassName
 0055C55C    mov         eax,dword ptr [ebp-0C]
 0055C55F    mov         dword ptr [ebp-8],eax
 0055C562    mov         byte ptr [ebp-4],11
 0055C566    lea         eax,[ebp-8]
 0055C569    push        eax
 0055C56A    push        0
 0055C56C    lea         edx,[ebp-10]
 0055C56F    mov         eax,[007C45BC];^SResString237:TResStringRec
 0055C574    call        LoadResString
 0055C579    mov         ecx,dword ptr [ebp-10]
 0055C57C    mov         dl,1
 0055C57E    mov         eax,[0046BE9C];EInvalidOperation
 0055C583    call        Exception.CreateFmt;EInvalidOperation.Create
 0055C588    call        @RaiseExcept
 0055C58D    mov         dword ptr [ebx+0C],edx;TTaskDialogProgressBar.FMax:Integer
 0055C590    mov         eax,dword ptr [ebx+4];TTaskDialogProgressBar.FClient:TCustomTaskDialog
 0055C593    cmp         dword ptr [eax+74],0;TCustomTaskDialog.FHandle:HWND
>0055C597    je          0055C5C3
 0055C599    test        byte ptr [eax+69],4;TCustomTaskDialog.?f69:byte
>0055C59D    jne         0055C5C3
 0055C59F    movzx       edx,word ptr [ebx+10];TTaskDialogProgressBar.FMin:Integer
 0055C5A3    movzx       esi,word ptr [ebx+0C];TTaskDialogProgressBar.FMax:Integer
 0055C5A7    movzx       edx,dx
 0055C5AA    movzx       ecx,si
 0055C5AD    shl         ecx,10
 0055C5B0    or          edx,ecx
 0055C5B2    push        edx
 0055C5B3    push        0
 0055C5B5    push        469
 0055C5BA    mov         eax,dword ptr [eax+74];TCustomTaskDialog.FHandle:HWND
 0055C5BD    push        eax
 0055C5BE    call        user32.SendMessageW
 0055C5C3    xor         eax,eax
 0055C5C5    pop         edx
 0055C5C6    pop         ecx
 0055C5C7    pop         ecx
 0055C5C8    mov         dword ptr fs:[eax],edx
 0055C5CB    push        55C5E5
 0055C5D0    lea         eax,[ebp-10]
 0055C5D3    mov         edx,2
 0055C5D8    call        @UStrArrayClr
 0055C5DD    ret
>0055C5DE    jmp         @HandleFinally
>0055C5E3    jmp         0055C5D0
 0055C5E5    pop         esi
 0055C5E6    pop         ebx
 0055C5E7    mov         esp,ebp
 0055C5E9    pop         ebp
 0055C5EA    ret
*}
end;

//0055C5EC
procedure TTaskDialogProgressBar.SetMin(Value:Integer);
begin
{*
 0055C5EC    push        ebp
 0055C5ED    mov         ebp,esp
 0055C5EF    add         esp,0FFFFFFF0
 0055C5F2    push        ebx
 0055C5F3    push        esi
 0055C5F4    xor         ecx,ecx
 0055C5F6    mov         dword ptr [ebp-0C],ecx
 0055C5F9    mov         dword ptr [ebp-10],ecx
 0055C5FC    mov         ebx,eax
 0055C5FE    xor         eax,eax
 0055C600    push        ebp
 0055C601    push        55C6A2
 0055C606    push        dword ptr fs:[eax]
 0055C609    mov         dword ptr fs:[eax],esp
 0055C60C    cmp         edx,dword ptr [ebx+10];TTaskDialogProgressBar.FMin:Integer
>0055C60F    je          0055C687
 0055C611    cmp         edx,dword ptr [ebx+0C];TTaskDialogProgressBar.FMax:Integer
>0055C614    jle         0055C651
 0055C616    lea         edx,[ebp-0C]
 0055C619    mov         eax,dword ptr [ebx]
 0055C61B    call        TObject.ClassName
 0055C620    mov         eax,dword ptr [ebp-0C]
 0055C623    mov         dword ptr [ebp-8],eax
 0055C626    mov         byte ptr [ebp-4],11
 0055C62A    lea         eax,[ebp-8]
 0055C62D    push        eax
 0055C62E    push        0
 0055C630    lea         edx,[ebp-10]
 0055C633    mov         eax,[007C45BC];^SResString237:TResStringRec
 0055C638    call        LoadResString
 0055C63D    mov         ecx,dword ptr [ebp-10]
 0055C640    mov         dl,1
 0055C642    mov         eax,[0046BE9C];EInvalidOperation
 0055C647    call        Exception.CreateFmt;EInvalidOperation.Create
 0055C64C    call        @RaiseExcept
 0055C651    mov         dword ptr [ebx+10],edx;TTaskDialogProgressBar.FMin:Integer
 0055C654    mov         eax,dword ptr [ebx+4];TTaskDialogProgressBar.FClient:TCustomTaskDialog
 0055C657    cmp         dword ptr [eax+74],0;TCustomTaskDialog.FHandle:HWND
>0055C65B    je          0055C687
 0055C65D    test        byte ptr [eax+69],4;TCustomTaskDialog.?f69:byte
>0055C661    jne         0055C687
 0055C663    movzx       edx,word ptr [ebx+10];TTaskDialogProgressBar.FMin:Integer
 0055C667    movzx       esi,word ptr [ebx+0C];TTaskDialogProgressBar.FMax:Integer
 0055C66B    movzx       edx,dx
 0055C66E    movzx       ecx,si
 0055C671    shl         ecx,10
 0055C674    or          edx,ecx
 0055C676    push        edx
 0055C677    push        0
 0055C679    push        469
 0055C67E    mov         eax,dword ptr [eax+74];TCustomTaskDialog.FHandle:HWND
 0055C681    push        eax
 0055C682    call        user32.SendMessageW
 0055C687    xor         eax,eax
 0055C689    pop         edx
 0055C68A    pop         ecx
 0055C68B    pop         ecx
 0055C68C    mov         dword ptr fs:[eax],edx
 0055C68F    push        55C6A9
 0055C694    lea         eax,[ebp-10]
 0055C697    mov         edx,2
 0055C69C    call        @UStrArrayClr
 0055C6A1    ret
>0055C6A2    jmp         @HandleFinally
>0055C6A7    jmp         0055C694
 0055C6A9    pop         esi
 0055C6AA    pop         ebx
 0055C6AB    mov         esp,ebp
 0055C6AD    pop         ebp
 0055C6AE    ret
*}
end;

//0055C6B0
procedure TTaskDialogProgressBar.SetPosition(Value:Integer);
begin
{*
 0055C6B0    push        esi
 0055C6B1    add         esp,0FFFFFFF0
 0055C6B4    cmp         edx,dword ptr [eax+14];TTaskDialogProgressBar.FPosition:Integer
>0055C6B7    je          0055C71A
 0055C6B9    test        edx,edx
>0055C6BB    jl          0055C6C5
 0055C6BD    cmp         edx,0FFFF
>0055C6C3    jle         0055C6F6
 0055C6C5    xor         eax,eax
 0055C6C7    mov         dword ptr [esp],eax
 0055C6CA    mov         byte ptr [esp+4],0
 0055C6CF    mov         dword ptr [esp+8],0FFFF
 0055C6D7    mov         byte ptr [esp+0C],0
 0055C6DC    push        esp
 0055C6DD    push        1
 0055C6DF    mov         ecx,dword ptr ds:[7C46E8];^SResString309:TResStringRec
 0055C6E5    mov         dl,1
 0055C6E7    mov         eax,[004174D0];Exception
 0055C6EC    call        Exception.CreateResFmt;Exception.Create
 0055C6F1    call        @RaiseExcept
 0055C6F6    mov         dword ptr [eax+14],edx;TTaskDialogProgressBar.FPosition:Integer
 0055C6F9    mov         edx,dword ptr [eax+4];TTaskDialogProgressBar.FClient:TCustomTaskDialog
 0055C6FC    mov         esi,dword ptr [edx+74];TCustomTaskDialog.FHandle:HWND
 0055C6FF    test        esi,esi
>0055C701    je          0055C71A
 0055C703    test        byte ptr [edx+69],4;TCustomTaskDialog.?f69:byte
>0055C707    jne         0055C71A
 0055C709    push        0
 0055C70B    mov         ecx,dword ptr [eax+14];TTaskDialogProgressBar.FPosition:Integer
 0055C70E    push        ecx
 0055C70F    push        46A
 0055C714    push        esi
 0055C715    call        user32.SendMessageW
 0055C71A    add         esp,10
 0055C71D    pop         esi
 0055C71E    ret
*}
end;

//0055C720
procedure TTaskDialogProgressBar.SetState(Value:TProgressBarState);
begin
{*
 0055C720    cmp         dl,byte ptr [eax+18];TTaskDialogProgressBar.FState:TProgressBarState
>0055C723    je          0055C74C
 0055C725    mov         ecx,edx
 0055C727    mov         byte ptr [eax+18],cl;TTaskDialogProgressBar.FState:TProgressBarState
 0055C72A    mov         edx,dword ptr [eax+4];TTaskDialogProgressBar.FClient:TCustomTaskDialog
 0055C72D    mov         edx,dword ptr [edx+74];TCustomTaskDialog.FHandle:HWND
 0055C730    test        edx,edx
>0055C732    je          0055C74C
 0055C734    push        0
 0055C736    and         ecx,7F
 0055C739    mov         ecx,dword ptr [ecx*4+7A1850]
 0055C740    push        ecx
 0055C741    push        468
 0055C746    push        edx
 0055C747    call        user32.SendMessageW
 0055C74C    ret
*}
end;

//0055C750
procedure TTaskDialogProgressBar.SetMarqueeSpeed(Value:Cardinal);
begin
{*
 0055C750    push        esi
 0055C751    cmp         edx,dword ptr [eax+8];TTaskDialogProgressBar.FMarqueeSpeed:Cardinal
>0055C754    je          0055C77A
 0055C756    mov         dword ptr [eax+8],edx;TTaskDialogProgressBar.FMarqueeSpeed:Cardinal
 0055C759    mov         edx,dword ptr [eax+4];TTaskDialogProgressBar.FClient:TCustomTaskDialog
 0055C75C    mov         esi,dword ptr [edx+74];TCustomTaskDialog.FHandle:HWND
 0055C75F    test        esi,esi
>0055C761    je          0055C77A
 0055C763    test        byte ptr [edx+69],4;TCustomTaskDialog.?f69:byte
>0055C767    je          0055C77A
 0055C769    mov         ecx,dword ptr [eax+8];TTaskDialogProgressBar.FMarqueeSpeed:Cardinal
 0055C76C    push        ecx
 0055C76D    push        0FF
 0055C76F    push        46B
 0055C774    push        esi
 0055C775    call        user32.SendMessageW
 0055C77A    pop         esi
 0055C77B    ret
*}
end;

//0055C77C
procedure TTaskDialogProgressBar.Initialize;
begin
{*
 0055C77C    push        ebx
 0055C77D    push        esi
 0055C77E    mov         ebx,eax
 0055C780    push        0
 0055C782    mov         eax,dword ptr [ebx+4];TTaskDialogProgressBar.FClient:TCustomTaskDialog
 0055C785    test        byte ptr [eax+69],4;TCustomTaskDialog.?f69:byte
 0055C789    setne       dl
 0055C78C    neg         dl
 0055C78E    sbb         edx,edx
 0055C790    push        edx
 0055C791    push        467
 0055C796    mov         eax,dword ptr [eax+74];TCustomTaskDialog.FHandle:HWND
 0055C799    push        eax
 0055C79A    call        user32.SendMessageW
 0055C79F    mov         eax,dword ptr [ebx+4];TTaskDialogProgressBar.FClient:TCustomTaskDialog
 0055C7A2    test        byte ptr [eax+69],4;TCustomTaskDialog.?f69:byte
>0055C7A6    je          0055C7BE
 0055C7A8    mov         edx,dword ptr [ebx+8];TTaskDialogProgressBar.FMarqueeSpeed:Cardinal
 0055C7AB    push        edx
 0055C7AC    push        0FF
 0055C7AE    push        46B
 0055C7B3    mov         eax,dword ptr [eax+74];TCustomTaskDialog.FHandle:HWND
 0055C7B6    push        eax
 0055C7B7    call        user32.SendMessageW
>0055C7BC    jmp         0055C7F9
 0055C7BE    movzx       edx,word ptr [ebx+10];TTaskDialogProgressBar.FMin:Integer
 0055C7C2    movzx       esi,word ptr [ebx+0C];TTaskDialogProgressBar.FMax:Integer
 0055C7C6    movzx       edx,dx
 0055C7C9    movzx       ecx,si
 0055C7CC    shl         ecx,10
 0055C7CF    or          edx,ecx
 0055C7D1    push        edx
 0055C7D2    push        0
 0055C7D4    push        469
 0055C7D9    mov         eax,dword ptr [eax+74];TCustomTaskDialog.FHandle:HWND
 0055C7DC    push        eax
 0055C7DD    call        user32.SendMessageW
 0055C7E2    push        0
 0055C7E4    mov         eax,dword ptr [ebx+14];TTaskDialogProgressBar.FPosition:Integer
 0055C7E7    push        eax
 0055C7E8    push        46A
 0055C7ED    mov         eax,dword ptr [ebx+4];TTaskDialogProgressBar.FClient:TCustomTaskDialog
 0055C7F0    mov         eax,dword ptr [eax+74];TCustomTaskDialog.FHandle:HWND
 0055C7F3    push        eax
 0055C7F4    call        user32.SendMessageW
 0055C7F9    push        0
 0055C7FB    movzx       eax,byte ptr [ebx+18];TTaskDialogProgressBar.FState:TProgressBarState
 0055C7FF    mov         eax,dword ptr [eax*4+7A1850]
 0055C806    push        eax
 0055C807    push        468
 0055C80C    mov         eax,dword ptr [ebx+4];TTaskDialogProgressBar.FClient:TCustomTaskDialog
 0055C80F    mov         eax,dword ptr [eax+74];TCustomTaskDialog.FHandle:HWND
 0055C812    push        eax
 0055C813    call        user32.SendMessageW
 0055C818    pop         esi
 0055C819    pop         ebx
 0055C81A    ret
*}
end;

//0055C81C
constructor TTaskDialogBaseButtonItem.Create;
begin
{*
 0055C81C    push        ebx
 0055C81D    push        esi
 0055C81E    push        edi
 0055C81F    test        dl,dl
>0055C821    je          0055C82B
 0055C823    add         esp,0FFFFFFF0
 0055C826    call        @ClassCreate
 0055C82B    mov         esi,ecx
 0055C82D    mov         ebx,edx
 0055C82F    mov         edi,eax
 0055C831    mov         ecx,esi
 0055C833    xor         edx,edx
 0055C835    mov         eax,edi
 0055C837    call        TCollectionItem.Create
 0055C83C    lea         eax,[edi+0C]
 0055C83F    call        @UStrClr
 0055C844    mov         eax,esi
 0055C846    call        TCollection.Owner
 0055C84B    mov         dword ptr [edi+10],eax
 0055C84E    mov         byte ptr [edi+14],1
 0055C852    mov         eax,dword ptr [edi+8]
 0055C855    add         eax,64
 0055C858    mov         dword ptr [edi+18],eax
 0055C85B    xor         eax,eax
 0055C85D    mov         dword ptr [edi+1C],eax
 0055C860    mov         eax,edi
 0055C862    test        bl,bl
>0055C864    je          0055C875
 0055C866    call        @AfterConstruction
 0055C86B    pop         dword ptr fs:[0]
 0055C872    add         esp,0C
 0055C875    mov         eax,edi
 0055C877    pop         edi
 0055C878    pop         esi
 0055C879    pop         ebx
 0055C87A    ret
*}
end;

//0055C87C
destructor TTaskDialogBaseButtonItem.Destroy();
begin
{*
 0055C87C    push        ebx
 0055C87D    push        esi
 0055C87E    push        ecx
 0055C87F    call        @BeforeDestruction
 0055C884    mov         ebx,edx
 0055C886    mov         esi,eax
 0055C888    mov         eax,dword ptr [esi+1C];TTaskDialogBaseButtonItem.FTextWStr:PWideChar
 0055C88B    test        eax,eax
>0055C88D    je          0055C89B
 0055C88F    mov         dword ptr [esp],eax
 0055C892    mov         eax,dword ptr [esp]
 0055C895    push        eax
 0055C896    call        ole32.CoTaskMemFree
 0055C89B    mov         dl,0FC
 0055C89D    and         dl,bl
 0055C89F    mov         eax,esi
 0055C8A1    call        TCollectionItem.Destroy
 0055C8A6    test        bl,bl
>0055C8A8    jle         0055C8B1
 0055C8AA    mov         eax,esi
 0055C8AC    call        @ClassDestroy
 0055C8B1    pop         edx
 0055C8B2    pop         esi
 0055C8B3    pop         ebx
 0055C8B4    ret
*}
end;

//0055C8B8
procedure sub_0055C8B8;
begin
{*
 0055C8B8    mov         edx,dword ptr [eax+10];TTaskDialogBaseButtonItem.FClient:TCustomTaskDialog
 0055C8BB    mov         edx,dword ptr [edx+74];TCustomTaskDialog.FHandle:HWND
 0055C8BE    test        edx,edx
>0055C8C0    je          0055C8D3
 0055C8C2    push        0
 0055C8C4    mov         ecx,dword ptr [eax+18];TTaskDialogBaseButtonItem.FModalResult:TModalResult
 0055C8C7    push        ecx
 0055C8C8    push        466
 0055C8CD    push        edx
 0055C8CE    call        user32.SendMessageW
 0055C8D3    ret
*}
end;

//0055C8D4
procedure sub_0055C8D4;
begin
{*
 0055C8D4    mov         edx,dword ptr [eax+10];TTaskDialogBaseButtonItem.FClient:TCustomTaskDialog
 0055C8D7    mov         edx,dword ptr [edx+74];TCustomTaskDialog.FHandle:HWND
 0055C8DA    test        edx,edx
>0055C8DC    je          0055C8F2
 0055C8DE    movzx       ecx,byte ptr [eax+14];TTaskDialogBaseButtonItem.FEnabled:Boolean
 0055C8E2    push        ecx
 0055C8E3    mov         ecx,dword ptr [eax+18];TTaskDialogBaseButtonItem.FModalResult:TModalResult
 0055C8E6    push        ecx
 0055C8E7    push        46F
 0055C8EC    push        edx
 0055C8ED    call        user32.SendMessageW
 0055C8F2    ret
*}
end;

//0055C8F4
function TTaskDialogBaseButtonItem.GetButtonText:UnicodeString;
begin
{*
 0055C8F4    push        ebx
 0055C8F5    push        esi
 0055C8F6    mov         esi,edx
 0055C8F8    mov         ebx,eax
 0055C8FA    mov         eax,esi
 0055C8FC    mov         edx,dword ptr [ebx+0C]
 0055C8FF    call        @UStrAsg
 0055C904    pop         esi
 0055C905    pop         ebx
 0055C906    ret
*}
end;

//0055C908
function TTaskDialogBaseButtonItem.GetDefault:Boolean;
begin
{*
 0055C908    mov         edx,dword ptr [eax+4]
 0055C90B    cmp         eax,dword ptr [edx+24]
 0055C90E    sete        al
 0055C911    ret
*}
end;

//0055C914
function TTaskDialogBaseButtonItem.GetDisplayName:UnicodeString;
begin
{*
 0055C914    push        ebx
 0055C915    push        esi
 0055C916    mov         esi,edx
 0055C918    mov         ebx,eax
 0055C91A    mov         eax,esi
 0055C91C    mov         edx,dword ptr [ebx+0C]
 0055C91F    call        @UStrAsg
 0055C924    cmp         dword ptr [esi],0
>0055C927    jne         0055C932
 0055C929    mov         edx,esi
 0055C92B    mov         eax,ebx
 0055C92D    call        TCollectionItem.GetDisplayName
 0055C932    pop         esi
 0055C933    pop         ebx
 0055C934    ret
*}
end;

//0055C938
function TTaskDialogBaseButtonItem.GetTextWStr:LPCWSTR;
begin
{*
 0055C938    push        ebp
 0055C939    mov         ebp,esp
 0055C93B    add         esp,0FFFFFFF8
 0055C93E    push        ebx
 0055C93F    push        esi
 0055C940    xor         edx,edx
 0055C942    mov         dword ptr [ebp-4],edx
 0055C945    mov         ebx,eax
 0055C947    xor         eax,eax
 0055C949    push        ebp
 0055C94A    push        55C997
 0055C94F    push        dword ptr fs:[eax]
 0055C952    mov         dword ptr fs:[eax],esp
 0055C955    lea         edx,[ebp-4]
 0055C958    mov         eax,ebx
 0055C95A    mov         ecx,dword ptr [eax]
 0055C95C    call        dword ptr [ecx+2C]
 0055C95F    mov         eax,dword ptr [ebx+1C]
 0055C962    test        eax,eax
>0055C964    je          0055C972
 0055C966    mov         dword ptr [ebp-8],eax
 0055C969    mov         eax,dword ptr [ebp-8]
 0055C96C    push        eax
 0055C96D    call        ole32.CoTaskMemFree
 0055C972    mov         eax,dword ptr [ebp-4]
 0055C975    call        AllocCoTaskMemStr
 0055C97A    mov         esi,eax
 0055C97C    mov         dword ptr [ebx+1C],esi
 0055C97F    mov         ebx,esi
 0055C981    xor         eax,eax
 0055C983    pop         edx
 0055C984    pop         ecx
 0055C985    pop         ecx
 0055C986    mov         dword ptr fs:[eax],edx
 0055C989    push        55C99E
 0055C98E    lea         eax,[ebp-4]
 0055C991    call        @UStrClr
 0055C996    ret
>0055C997    jmp         @HandleFinally
>0055C99C    jmp         0055C98E
 0055C99E    mov         eax,ebx
 0055C9A0    pop         esi
 0055C9A1    pop         ebx
 0055C9A2    pop         ecx
 0055C9A3    pop         ecx
 0055C9A4    pop         ebp
 0055C9A5    ret
*}
end;

//0055C9A8
procedure TTaskDialogBaseButtonItem.SetCaption(const Value:UnicodeString);
begin
{*
 0055C9A8    push        ebx
 0055C9A9    push        esi
 0055C9AA    mov         esi,edx
 0055C9AC    mov         ebx,eax
 0055C9AE    mov         eax,esi
 0055C9B0    mov         edx,dword ptr [ebx+0C]
 0055C9B3    call        @UStrEqual
>0055C9B8    je          0055C9DF
 0055C9BA    test        esi,esi
>0055C9BC    jne         0055C9D5
 0055C9BE    mov         ecx,dword ptr ds:[7C49B8];^SResString339:TResStringRec
 0055C9C4    mov         dl,1
 0055C9C6    mov         eax,[004174D0];Exception
 0055C9CB    call        Exception.CreateRes
 0055C9D0    call        @RaiseExcept
 0055C9D5    lea         eax,[ebx+0C]
 0055C9D8    mov         edx,esi
 0055C9DA    call        @UStrAsg
 0055C9DF    pop         esi
 0055C9E0    pop         ebx
 0055C9E1    ret
*}
end;

//0055C9E4
procedure TTaskDialogBaseButtonItem.SetDefault(const Value:Boolean);
begin
{*
 0055C9E4    test        dl,dl
>0055C9E6    je          0055C9F3
 0055C9E8    mov         edx,eax
 0055C9EA    mov         eax,dword ptr [eax+4]
 0055C9ED    call        TTaskDialogButtons.SetDefaultButton
 0055C9F2    ret
 0055C9F3    mov         edx,dword ptr [eax+4]
 0055C9F6    cmp         eax,dword ptr [edx+24]
>0055C9F9    jne         0055CA04
 0055C9FB    mov         eax,edx
 0055C9FD    xor         edx,edx
 0055C9FF    call        TTaskDialogButtons.SetDefaultButton
 0055CA04    ret
*}
end;

//0055CA08
procedure TTaskDialogBaseButtonItem.SetEnabled(const Value:Boolean);
begin
{*
 0055CA08    cmp         dl,byte ptr [eax+14]
>0055CA0B    je          0055CA15
 0055CA0D    mov         byte ptr [eax+14],dl
 0055CA10    mov         edx,dword ptr [eax]
 0055CA12    call        dword ptr [edx+28]
 0055CA15    ret
*}
end;

//0055CA18
procedure TTaskDialogBaseButtonItem.SetInitialState;
begin
{*
 0055CA18    cmp         byte ptr [eax+14],0
>0055CA1C    jne         0055CA23
 0055CA1E    mov         edx,dword ptr [eax]
 0055CA20    call        dword ptr [edx+28]
 0055CA23    ret
*}
end;

//0055CA24
constructor TTaskDialogButtonItem.Create;
begin
{*
 0055CA24    push        ebp
 0055CA25    mov         ebp,esp
 0055CA27    add         esp,0FFFFFFF0
 0055CA2A    push        ebx
 0055CA2B    push        esi
 0055CA2C    xor         ebx,ebx
 0055CA2E    mov         dword ptr [ebp-4],ebx
 0055CA31    mov         dword ptr [ebp-8],ebx
 0055CA34    test        dl,dl
>0055CA36    je          0055CA40
 0055CA38    add         esp,0FFFFFFF0
 0055CA3B    call        @ClassCreate
 0055CA40    mov         ebx,edx
 0055CA42    mov         esi,eax
 0055CA44    xor         eax,eax
 0055CA46    push        ebp
 0055CA47    push        55CAAD
 0055CA4C    push        dword ptr fs:[eax]
 0055CA4F    mov         dword ptr fs:[eax],esp
 0055CA52    xor         edx,edx
 0055CA54    mov         eax,esi
 0055CA56    call        TTaskDialogBaseButtonItem.Create
 0055CA5B    lea         eax,[ebp-4]
 0055CA5E    push        eax
 0055CA5F    lea         edx,[ebp-8]
 0055CA62    mov         eax,[007C48D0];^SResString337:TResStringRec
 0055CA67    call        LoadResString
 0055CA6C    mov         eax,dword ptr [ebp-8]
 0055CA6F    mov         edx,dword ptr [esi+8]
 0055CA72    inc         edx
 0055CA73    mov         dword ptr [ebp-10],edx
 0055CA76    mov         byte ptr [ebp-0C],0
 0055CA7A    lea         edx,[ebp-10]
 0055CA7D    xor         ecx,ecx
 0055CA7F    call        Format
 0055CA84    mov         edx,dword ptr [ebp-4]
 0055CA87    mov         eax,esi
 0055CA89    call        TTaskDialogBaseButtonItem.SetCaption
 0055CA8E    mov         byte ptr [esi+24],0
 0055CA92    xor         eax,eax
 0055CA94    pop         edx
 0055CA95    pop         ecx
 0055CA96    pop         ecx
 0055CA97    mov         dword ptr fs:[eax],edx
 0055CA9A    push        55CAB4
 0055CA9F    lea         eax,[ebp-8]
 0055CAA2    mov         edx,2
 0055CAA7    call        @UStrArrayClr
 0055CAAC    ret
>0055CAAD    jmp         @HandleFinally
>0055CAB2    jmp         0055CA9F
 0055CAB4    mov         eax,esi
 0055CAB6    test        bl,bl
>0055CAB8    je          0055CAC9
 0055CABA    call        @AfterConstruction
 0055CABF    pop         dword ptr fs:[0]
 0055CAC6    add         esp,0C
 0055CAC9    mov         eax,esi
 0055CACB    pop         esi
 0055CACC    pop         ebx
 0055CACD    mov         esp,ebp
 0055CACF    pop         ebp
 0055CAD0    ret
*}
end;

//0055CAD4
procedure TTaskDialogButtonItem.DoSetElevationRequired;
begin
{*
 0055CAD4    mov         edx,dword ptr [eax+10]
 0055CAD7    mov         edx,dword ptr [edx+74]
 0055CADA    test        edx,edx
>0055CADC    je          0055CAF2
 0055CADE    movzx       ecx,byte ptr [eax+24]
 0055CAE2    push        ecx
 0055CAE3    mov         ecx,dword ptr [eax+18]
 0055CAE6    push        ecx
 0055CAE7    push        473
 0055CAEC    push        edx
 0055CAED    call        user32.SendMessageW
 0055CAF2    ret
*}
end;

//0055CAF4
{*procedure TTaskDialogButtonItem.GetButtonText(?:?);
begin
 0055CAF4    push        ebx
 0055CAF5    push        esi
 0055CAF6    mov         esi,edx
 0055CAF8    mov         ebx,eax
 0055CAFA    cmp         dword ptr [ebx+20],0;TTaskDialogButtonItem.FCommandLinkHint:string
>0055CAFE    je          0055CB2C
 0055CB00    mov         eax,dword ptr [ebx+10];TTaskDialogButtonItem.FClient:TCustomTaskDialog
 0055CB03    test        byte ptr [eax+68],10;TCustomTaskDialog.FFlags:TTaskDialogFlags
>0055CB07    jne         0055CB12
 0055CB09    mov         eax,dword ptr [ebx+10];TTaskDialogButtonItem.FClient:TCustomTaskDialog
 0055CB0C    test        byte ptr [eax+68],20;TCustomTaskDialog.FFlags:TTaskDialogFlags
>0055CB10    je          0055CB2C
 0055CB12    push        dword ptr [ebx+0C];TTaskDialogButtonItem.FCaption:string
 0055CB15    push        55CB44;'
'
 0055CB1A    push        dword ptr [ebx+20];TTaskDialogButtonItem.FCommandLinkHint:string
 0055CB1D    mov         eax,esi
 0055CB1F    mov         edx,3
 0055CB24    call        @UStrCatN
 0055CB29    pop         esi
 0055CB2A    pop         ebx
 0055CB2B    ret
 0055CB2C    mov         edx,esi
 0055CB2E    mov         eax,ebx
 0055CB30    call        TTaskDialogBaseButtonItem.GetButtonText
 0055CB35    pop         esi
 0055CB36    pop         ebx
 0055CB37    ret
end;*}

//0055CB48
procedure TTaskDialogButtonItem.SetElevationRequired(const Value:Boolean);
begin
{*
 0055CB48    cmp         dl,byte ptr [eax+24]
>0055CB4B    je          0055CB55
 0055CB4D    mov         byte ptr [eax+24],dl
 0055CB50    call        TTaskDialogButtonItem.DoSetElevationRequired
 0055CB55    ret
*}
end;

//0055CB58
procedure TTaskDialogButtonItem.SetInitialState;
begin
{*
 0055CB58    push        ebx
 0055CB59    mov         ebx,eax
 0055CB5B    mov         eax,ebx
 0055CB5D    call        TTaskDialogBaseButtonItem.SetInitialState
 0055CB62    cmp         byte ptr [ebx+24],0
>0055CB66    je          0055CB6F
 0055CB68    mov         eax,ebx
 0055CB6A    call        TTaskDialogButtonItem.DoSetElevationRequired
 0055CB6F    pop         ebx
 0055CB70    ret
*}
end;

//0055CB74
constructor TTaskDialogRadioButtonItem.Create;
begin
{*
 0055CB74    push        ebp
 0055CB75    mov         ebp,esp
 0055CB77    add         esp,0FFFFFFF0
 0055CB7A    push        ebx
 0055CB7B    push        esi
 0055CB7C    xor         ebx,ebx
 0055CB7E    mov         dword ptr [ebp-4],ebx
 0055CB81    mov         dword ptr [ebp-8],ebx
 0055CB84    test        dl,dl
>0055CB86    je          0055CB90
 0055CB88    add         esp,0FFFFFFF0
 0055CB8B    call        @ClassCreate
 0055CB90    mov         ebx,edx
 0055CB92    mov         esi,eax
 0055CB94    xor         eax,eax
 0055CB96    push        ebp
 0055CB97    push        55CBF9
 0055CB9C    push        dword ptr fs:[eax]
 0055CB9F    mov         dword ptr fs:[eax],esp
 0055CBA2    xor         edx,edx
 0055CBA4    mov         eax,esi
 0055CBA6    call        TTaskDialogBaseButtonItem.Create
 0055CBAB    lea         eax,[ebp-4]
 0055CBAE    push        eax
 0055CBAF    lea         edx,[ebp-8]
 0055CBB2    mov         eax,[007C452C];^SResString338:TResStringRec
 0055CBB7    call        LoadResString
 0055CBBC    mov         eax,dword ptr [ebp-8]
 0055CBBF    mov         edx,dword ptr [esi+8]
 0055CBC2    inc         edx
 0055CBC3    mov         dword ptr [ebp-10],edx
 0055CBC6    mov         byte ptr [ebp-0C],0
 0055CBCA    lea         edx,[ebp-10]
 0055CBCD    xor         ecx,ecx
 0055CBCF    call        Format
 0055CBD4    mov         edx,dword ptr [ebp-4]
 0055CBD7    mov         eax,esi
 0055CBD9    call        TTaskDialogBaseButtonItem.SetCaption
 0055CBDE    xor         eax,eax
 0055CBE0    pop         edx
 0055CBE1    pop         ecx
 0055CBE2    pop         ecx
 0055CBE3    mov         dword ptr fs:[eax],edx
 0055CBE6    push        55CC00
 0055CBEB    lea         eax,[ebp-8]
 0055CBEE    mov         edx,2
 0055CBF3    call        @UStrArrayClr
 0055CBF8    ret
>0055CBF9    jmp         @HandleFinally
>0055CBFE    jmp         0055CBEB
 0055CC00    mov         eax,esi
 0055CC02    test        bl,bl
>0055CC04    je          0055CC15
 0055CC06    call        @AfterConstruction
 0055CC0B    pop         dword ptr fs:[0]
 0055CC12    add         esp,0C
 0055CC15    mov         eax,esi
 0055CC17    pop         esi
 0055CC18    pop         ebx
 0055CC19    mov         esp,ebp
 0055CC1B    pop         ebp
 0055CC1C    ret
*}
end;

//0055CC20
procedure sub_0055CC20;
begin
{*
 0055CC20    mov         edx,dword ptr [eax+10];TTaskDialogRadioButtonItem.FClient:TCustomTaskDialog
 0055CC23    mov         edx,dword ptr [edx+74];TCustomTaskDialog.FHandle:HWND
 0055CC26    test        edx,edx
>0055CC28    je          0055CC3B
 0055CC2A    push        0
 0055CC2C    mov         ecx,dword ptr [eax+18];TTaskDialogRadioButtonItem.FModalResult:TModalResult
 0055CC2F    push        ecx
 0055CC30    push        46E
 0055CC35    push        edx
 0055CC36    call        user32.SendMessageW
 0055CC3B    ret
*}
end;

//0055CC3C
procedure sub_0055CC3C;
begin
{*
 0055CC3C    mov         edx,dword ptr [eax+10];TTaskDialogRadioButtonItem.FClient:TCustomTaskDialog
 0055CC3F    mov         edx,dword ptr [edx+74];TCustomTaskDialog.FHandle:HWND
 0055CC42    test        edx,edx
>0055CC44    je          0055CC5A
 0055CC46    movzx       ecx,byte ptr [eax+14];TTaskDialogRadioButtonItem.FEnabled:Boolean
 0055CC4A    push        ecx
 0055CC4B    mov         ecx,dword ptr [eax+18];TTaskDialogRadioButtonItem.FModalResult:TModalResult
 0055CC4E    push        ecx
 0055CC4F    push        470
 0055CC54    push        edx
 0055CC55    call        user32.SendMessageW
 0055CC5A    ret
*}
end;

//0055CC5C
constructor TList<System.Classes.TCollectionItem>.TEnumerator.Create;
begin
{*
 0055CC5C    push        ebx
 0055CC5D    push        esi
 0055CC5E    push        edi
 0055CC5F    test        dl,dl
>0055CC61    je          0055CC6B
 0055CC63    add         esp,0FFFFFFF0
 0055CC66    call        @ClassCreate
 0055CC6B    mov         esi,ecx
 0055CC6D    mov         ebx,edx
 0055CC6F    mov         edi,eax
 0055CC71    xor         edx,edx
 0055CC73    mov         eax,edi
 0055CC75    call        TObject.Create
 0055CC7A    mov         dword ptr [edi+4],0FFFFFFFF
 0055CC81    mov         dword ptr [edi+8],esi
 0055CC84    mov         eax,edi
 0055CC86    test        bl,bl
>0055CC88    je          0055CC99
 0055CC8A    call        @AfterConstruction
 0055CC8F    pop         dword ptr fs:[0]
 0055CC96    add         esp,0C
 0055CC99    mov         eax,edi
 0055CC9B    pop         edi
 0055CC9C    pop         esi
 0055CC9D    pop         ebx
 0055CC9E    ret
*}
end;

//0055CCA0
function TTaskDialogButtonsEnumerator.GetCurrent:TTaskDialogBaseButtonItem;
begin
{*
 0055CCA0    mov         edx,dword ptr [eax+4]
 0055CCA3    mov         eax,dword ptr [eax+8]
 0055CCA6    call        TTaskDialogButtons.GetItem
 0055CCAB    ret
*}
end;

//0055CCAC
function TTaskDialogButtonsEnumerator.MoveNext:Boolean;
begin
{*
 0055CCAC    mov         edx,dword ptr [eax+8]
 0055CCAF    mov         edx,dword ptr [edx+8]
 0055CCB2    mov         edx,dword ptr [edx+8]
 0055CCB5    dec         edx
 0055CCB6    cmp         edx,dword ptr [eax+4]
 0055CCB9    setg        dl
 0055CCBC    test        dl,dl
>0055CCBE    je          0055CCC3
 0055CCC0    inc         dword ptr [eax+4]
 0055CCC3    mov         eax,edx
 0055CCC5    ret
*}
end;

//0055CCC8
destructor TTaskDialogButtons.Destroy();
begin
{*
 0055CCC8    push        ebx
 0055CCC9    push        esi
 0055CCCA    call        @BeforeDestruction
 0055CCCF    mov         ebx,edx
 0055CCD1    mov         esi,eax
 0055CCD3    mov         dl,0FC
 0055CCD5    and         dl,bl
 0055CCD7    mov         eax,esi
 0055CCD9    call        TCollection.Destroy
 0055CCDE    test        bl,bl
>0055CCE0    jle         0055CCE9
 0055CCE2    mov         eax,esi
 0055CCE4    call        @ClassDestroy
 0055CCE9    pop         esi
 0055CCEA    pop         ebx
 0055CCEB    ret
*}
end;

//0055CCEC
function TTaskDialogButtons.Add:TTaskDialogBaseButtonItem;
begin
{*
 0055CCEC    push        ebx
 0055CCED    mov         ebx,eax
 0055CCEF    mov         eax,ebx
 0055CCF1    call        TCollection.Add
 0055CCF6    pop         ebx
 0055CCF7    ret
*}
end;

//0055CCF8
function TTaskDialogButtons.Buttons:PTaskDialogButton;
begin
{*
 0055CCF8    push        ebx
 0055CCF9    push        esi
 0055CCFA    push        edi
 0055CCFB    mov         ebx,eax
 0055CCFD    mov         esi,ebx
 0055CCFF    mov         eax,dword ptr [esi+8]
 0055CD02    mov         eax,dword ptr [eax+8]
 0055CD05    push        eax
 0055CD06    lea         eax,[ebx+1C]
 0055CD09    mov         ecx,1
 0055CD0E    mov         edx,dword ptr ds:[556EE0];TTaskDialogButtonList
 0055CD14    call        @DynArraySetLength
 0055CD19    add         esp,4
 0055CD1C    mov         eax,dword ptr [esi+8]
 0055CD1F    mov         edi,dword ptr [eax+8]
 0055CD22    dec         edi
 0055CD23    test        edi,edi
>0055CD25    jl          0055CD55
 0055CD27    inc         edi
 0055CD28    xor         esi,esi
 0055CD2A    mov         edx,esi
 0055CD2C    mov         eax,ebx
 0055CD2E    call        TTaskDialogButtons.GetItem
 0055CD33    mov         eax,dword ptr [eax+18]
 0055CD36    mov         edx,dword ptr [ebx+1C]
 0055CD39    mov         dword ptr [edx+esi*8],eax
 0055CD3C    mov         edx,esi
 0055CD3E    mov         eax,ebx
 0055CD40    call        TTaskDialogButtons.GetItem
 0055CD45    call        TTaskDialogBaseButtonItem.GetTextWStr
 0055CD4A    mov         edx,dword ptr [ebx+1C]
 0055CD4D    mov         dword ptr [edx+esi*8+4],eax
 0055CD51    inc         esi
 0055CD52    dec         edi
>0055CD53    jne         0055CD2A
 0055CD55    mov         eax,dword ptr [ebx+1C]
 0055CD58    mov         dword ptr [ebx+20],eax
 0055CD5B    pop         edi
 0055CD5C    pop         esi
 0055CD5D    pop         ebx
 0055CD5E    ret
*}
end;

//0055CD60
function TTaskDialogButtons.FindButton(AModalResult:TModalResult):TTaskDialogBaseButtonItem;
begin
{*
 0055CD60    push        ebp
 0055CD61    mov         ebp,esp
 0055CD63    add         esp,0FFFFFFF8
 0055CD66    push        ebx
 0055CD67    push        esi
 0055CD68    mov         esi,edx
 0055CD6A    xor         edx,edx
 0055CD6C    mov         dword ptr [ebp-4],edx
 0055CD6F    call        TTaskDialogButtons.GetEnumerator
 0055CD74    mov         dword ptr [ebp-8],eax
 0055CD77    xor         eax,eax
 0055CD79    push        ebp
 0055CD7A    push        55CDCA
 0055CD7F    push        dword ptr fs:[eax]
 0055CD82    mov         dword ptr fs:[eax],esp
>0055CD85    jmp         0055CDA0
 0055CD87    mov         eax,dword ptr [ebp-8]
 0055CD8A    call        TTaskDialogButtonsEnumerator.GetCurrent
 0055CD8F    mov         ebx,eax
 0055CD91    cmp         esi,dword ptr [ebx+18]
>0055CD94    jne         0055CDA0
 0055CD96    mov         dword ptr [ebp-4],ebx
 0055CD99    call        @TryFinallyExit
>0055CD9E    jmp         0055CDD1
 0055CDA0    mov         eax,dword ptr [ebp-8]
 0055CDA3    call        TTaskDialogButtonsEnumerator.MoveNext
 0055CDA8    test        al,al
>0055CDAA    jne         0055CD87
 0055CDAC    xor         eax,eax
 0055CDAE    pop         edx
 0055CDAF    pop         ecx
 0055CDB0    pop         ecx
 0055CDB1    mov         dword ptr fs:[eax],edx
 0055CDB4    push        55CDD1
 0055CDB9    cmp         dword ptr [ebp-8],0
>0055CDBD    je          0055CDC9
 0055CDBF    mov         dl,1
 0055CDC1    mov         eax,dword ptr [ebp-8]
 0055CDC4    mov         ecx,dword ptr [eax]
 0055CDC6    call        dword ptr [ecx-4]
 0055CDC9    ret
>0055CDCA    jmp         @HandleFinally
>0055CDCF    jmp         0055CDB9
 0055CDD1    mov         eax,dword ptr [ebp-4]
 0055CDD4    pop         esi
 0055CDD5    pop         ebx
 0055CDD6    pop         ecx
 0055CDD7    pop         ecx
 0055CDD8    pop         ebp
 0055CDD9    ret
*}
end;

//0055CDDC
function TTaskDialogButtons.GetEnumerator:TTaskDialogButtonsEnumerator;
begin
{*
 0055CDDC    mov         ecx,eax
 0055CDDE    mov         dl,1
 0055CDE0    mov         eax,[00556F20];TTaskDialogButtonsEnumerator
 0055CDE5    call        TList<System.Classes.TCollectionItem>.TEnumerator.Create
 0055CDEA    ret
*}
end;

//0055CDEC
function TTaskDialogButtons.GetItem(Index:Integer):TTaskDialogBaseButtonItem;
begin
{*
 0055CDEC    push        ebx
 0055CDED    push        esi
 0055CDEE    mov         esi,edx
 0055CDF0    mov         ebx,eax
 0055CDF2    mov         edx,esi
 0055CDF4    mov         eax,ebx
 0055CDF6    call        TCollection.GetItem
 0055CDFB    pop         esi
 0055CDFC    pop         ebx
 0055CDFD    ret
*}
end;

//0055CE00
procedure TTaskDialogButtons.SetDefaultButton(const Value:TTaskDialogBaseButtonItem);
begin
{*
 0055CE00    cmp         edx,dword ptr [eax+24]
>0055CE03    je          0055CE08
 0055CE05    mov         dword ptr [eax+24],edx
 0055CE08    ret
*}
end;

//0055CE0C
procedure TTaskDialogButtons.SetInitialState;
begin
{*
 0055CE0C    push        ebp
 0055CE0D    mov         ebp,esp
 0055CE0F    push        ecx
 0055CE10    push        ebx
 0055CE11    call        TTaskDialogButtons.GetEnumerator
 0055CE16    mov         dword ptr [ebp-4],eax
 0055CE19    xor         eax,eax
 0055CE1B    push        ebp
 0055CE1C    push        55CE64
 0055CE21    push        dword ptr fs:[eax]
 0055CE24    mov         dword ptr fs:[eax],esp
>0055CE27    jmp         0055CE3A
 0055CE29    mov         eax,dword ptr [ebp-4]
 0055CE2C    call        TTaskDialogButtonsEnumerator.GetCurrent
 0055CE31    mov         ebx,eax
 0055CE33    mov         eax,ebx
 0055CE35    mov         edx,dword ptr [eax]
 0055CE37    call        dword ptr [edx+30];TTaskDialogBaseButtonItem.SetInitialState
 0055CE3A    mov         eax,dword ptr [ebp-4]
 0055CE3D    call        TTaskDialogButtonsEnumerator.MoveNext
 0055CE42    test        al,al
>0055CE44    jne         0055CE29
 0055CE46    xor         eax,eax
 0055CE48    pop         edx
 0055CE49    pop         ecx
 0055CE4A    pop         ecx
 0055CE4B    mov         dword ptr fs:[eax],edx
 0055CE4E    push        55CE6B
 0055CE53    cmp         dword ptr [ebp-4],0
>0055CE57    je          0055CE63
 0055CE59    mov         dl,1
 0055CE5B    mov         eax,dword ptr [ebp-4]
 0055CE5E    mov         ecx,dword ptr [eax]
 0055CE60    call        dword ptr [ecx-4]
 0055CE63    ret
>0055CE64    jmp         @HandleFinally
>0055CE69    jmp         0055CE53
 0055CE6B    pop         ebx
 0055CE6C    pop         ecx
 0055CE6D    pop         ebp
 0055CE6E    ret
*}
end;

//0055CE70
constructor TCustomTaskDialog.Create(AOwner:TComponent);
begin
{*
 0055CE70    push        ebx
 0055CE71    push        esi
 0055CE72    test        dl,dl
>0055CE74    je          0055CE7E
 0055CE76    add         esp,0FFFFFFF0
 0055CE79    call        @ClassCreate
 0055CE7E    mov         ebx,edx
 0055CE80    mov         esi,eax
 0055CE82    xor         edx,edx
 0055CE84    mov         eax,esi
 0055CE86    call        TComponent.Create
 0055CE8B    mov         eax,[00556B6C];TTaskDialogButtonItem
 0055CE90    push        eax
 0055CE91    mov         ecx,esi
 0055CE93    mov         dl,1
 0055CE95    mov         eax,[005570E0];TTaskDialogButtons
 0055CE9A    call        TOwnedCollection.Create;TTaskDialogButtons.Create
 0055CE9F    mov         dword ptr [esi+44],eax;TCustomTaskDialog.FButtons:TTaskDialogButtons
 0055CEA2    movzx       eax,byte ptr ds:[55CF34];0x9 gvar_0055CF34
 0055CEA9    mov         byte ptr [esi+4C],al;TCustomTaskDialog.FCommonButtons:TTaskDialogCommonButtons
 0055CEAC    mov         dl,1
 0055CEAE    mov         eax,[004C2694];TIcon
 0055CEB3    call        TIcon.Create;TIcon.Create
 0055CEB8    mov         dword ptr [esi+50],eax;TCustomTaskDialog.FCustomFooterIcon:TIcon
 0055CEBB    mov         dl,1
 0055CEBD    mov         eax,[004C2694];TIcon
 0055CEC2    call        TIcon.Create;TIcon.Create
 0055CEC7    mov         dword ptr [esi+54],eax;TCustomTaskDialog.FCustomMainIcon:TIcon
 0055CECA    mov         byte ptr [esi+58],0;TCustomTaskDialog.FDefaultButton:TTaskDialogCommonButton
 0055CECE    movzx       eax,word ptr ds:[55CF38];0x8 gvar_0055CF38
 0055CED5    mov         word ptr [esi+68],ax;TCustomTaskDialog.FFlags:TTaskDialogFlags
 0055CED9    xor         eax,eax
 0055CEDB    mov         dword ptr [esi+6C],eax;TCustomTaskDialog.FFooterIcon:TTaskDialogIcon
 0055CEDE    xor         eax,eax
 0055CEE0    mov         dword ptr [esi+74],eax;TCustomTaskDialog.FHandle:HWND
 0055CEE3    mov         dword ptr [esi+7C],3;TCustomTaskDialog.FMainIcon:TTaskDialogIcon
 0055CEEA    mov         ecx,esi
 0055CEEC    mov         dl,1
 0055CEEE    mov         eax,[005565E4];TTaskDialogProgressBar
 0055CEF3    call        TTaskDialogProgressBar.Create;TTaskDialogProgressBar.Create
 0055CEF8    mov         dword ptr [esi+84],eax;TCustomTaskDialog.FProgressBar:TTaskDialogProgressBar
 0055CEFE    mov         eax,[00556DB0];TTaskDialogRadioButtonItem
 0055CF03    push        eax
 0055CF04    mov         ecx,esi
 0055CF06    mov         dl,1
 0055CF08    mov         eax,[005570E0];TTaskDialogButtons
 0055CF0D    call        TOwnedCollection.Create;TTaskDialogButtons.Create
 0055CF12    mov         dword ptr [esi+8C],eax;TCustomTaskDialog.FRadioButtons:TTaskDialogButtons
 0055CF18    mov         eax,esi
 0055CF1A    test        bl,bl
>0055CF1C    je          0055CF2D
 0055CF1E    call        @AfterConstruction
 0055CF23    pop         dword ptr fs:[0]
 0055CF2A    add         esp,0C
 0055CF2D    mov         eax,esi
 0055CF2F    pop         esi
 0055CF30    pop         ebx
 0055CF31    ret
*}
end;

//0055CF3C
destructor TCustomTaskDialog.Destroy();
begin
{*
 0055CF3C    push        ebx
 0055CF3D    push        esi
 0055CF3E    call        @BeforeDestruction
 0055CF43    mov         ebx,edx
 0055CF45    mov         esi,eax
 0055CF47    mov         eax,dword ptr [esi+44];TCustomTaskDialog.FButtons:TTaskDialogButtons
 0055CF4A    call        TObject.Free
 0055CF4F    mov         eax,dword ptr [esi+50];TCustomTaskDialog.FCustomFooterIcon:TIcon
 0055CF52    call        TObject.Free
 0055CF57    mov         eax,dword ptr [esi+54];TCustomTaskDialog.FCustomMainIcon:TIcon
 0055CF5A    call        TObject.Free
 0055CF5F    mov         eax,dword ptr [esi+84];TCustomTaskDialog.FProgressBar:TTaskDialogProgressBar
 0055CF65    call        TObject.Free
 0055CF6A    mov         eax,dword ptr [esi+8C];TCustomTaskDialog.FRadioButtons:TTaskDialogButtons
 0055CF70    call        TObject.Free
 0055CF75    mov         dl,0FC
 0055CF77    and         dl,bl
 0055CF79    mov         eax,esi
 0055CF7B    call        TComponent.Destroy
 0055CF80    test        bl,bl
>0055CF82    jle         0055CF8B
 0055CF84    mov         eax,esi
 0055CF86    call        @ClassDestroy
 0055CF8B    pop         esi
 0055CF8C    pop         ebx
 0055CF8D    ret
*}
end;

//0055CF90
{*procedure TCustomTaskDialog.sub_0055CF90(?:?; ?:?; ?:?; ?:?);
begin
 0055CF90    push        ebp
 0055CF91    mov         ebp,esp
 0055CF93    add         esp,0FFFFFFF4
 0055CF96    push        ebx
 0055CF97    push        esi
 0055CF98    push        edi
 0055CF99    xor         ebx,ebx
 0055CF9B    mov         dword ptr [ebp-4],ebx
 0055CF9E    mov         edi,eax
 0055CFA0    xor         eax,eax
 0055CFA2    push        ebp
 0055CFA3    push        55D118
 0055CFA8    push        dword ptr fs:[eax]
 0055CFAB    mov         dword ptr fs:[eax],esp
 0055CFAE    xor         eax,eax
 0055CFB0    mov         dword ptr [ebp-8],eax
 0055CFB3    cmp         ecx,0A
>0055CFB6    ja          0055D102
 0055CFBC    jmp         dword ptr [ecx*4+55CFC3]
 0055CFBC    dd          0055D01A
 0055CFBC    dd          0055D0AF
 0055CFBC    dd          0055CFEF
 0055CFBC    dd          0055D094
 0055CFBC    dd          0055D0CC
 0055CFBC    dd          0055D02A
 0055CFBC    dd          0055D0BC
 0055CFBC    dd          0055D03A
 0055CFBC    dd          0055D0F0
 0055CFBC    dd          0055D087
 0055CFBC    dd          0055D073
 0055CFEF    mov         byte ptr [ebp-9],1
 0055CFF3    lea         ecx,[ebp-9]
 0055CFF6    mov         edx,dword ptr [ebp+10]
 0055CFF9    mov         eax,edi
 0055CFFB    mov         si,0FFEE
 0055CFFF    call        @CallDynaInst;TCustomTaskDialog.sub_0055D478
 0055D004    cmp         byte ptr [ebp-9],0
>0055D008    jne         0055D102
 0055D00E    mov         dword ptr [ebp-8],1
>0055D015    jmp         0055D102
 0055D01A    mov         eax,edi
 0055D01C    mov         si,0FFEC
 0055D020    call        @CallDynaInst;TCustomTaskDialog.DoOnDialogDestroyed
>0055D025    jmp         0055D102
 0055D02A    mov         eax,edi
 0055D02C    mov         si,0FFEB
 0055D030    call        @CallDynaInst;TCustomTaskDialog.sub_0055D4D0
>0055D035    jmp         0055D102
 0055D03A    mov         dword ptr [edi+74],edx;TCustomTaskDialog.FHandle:HWND
 0055D03D    mov         eax,dword ptr [edi+44];TCustomTaskDialog.FButtons:TTaskDialogButtons
 0055D040    mov         si,0FFFA
 0055D044    call        @CallDynaInst;TTaskDialogButtons.sub_0055CE0C
 0055D049    mov         eax,dword ptr [edi+8C];TCustomTaskDialog.FRadioButtons:TTaskDialogButtons
 0055D04F    mov         si,0FFFA
 0055D053    call        @CallDynaInst;TTaskDialogButtons.sub_0055CE0C
 0055D058    mov         eax,dword ptr [edi+84];TCustomTaskDialog.FProgressBar:TTaskDialogProgressBar
 0055D05E    call        TTaskDialogProgressBar.Initialize
 0055D063    mov         eax,edi
 0055D065    mov         si,0FFED
 0055D069    call        @CallDynaInst;TCustomTaskDialog.sub_0055D4F0
>0055D06E    jmp         0055D102
 0055D073    cmp         dword ptr [ebp+10],1
 0055D077    sbb         edx,edx
 0055D079    inc         edx
 0055D07A    mov         eax,edi
 0055D07C    mov         si,0FFEA
 0055D080    call        @CallDynaInst;TCustomTaskDialog.sub_0055D510
>0055D085    jmp         0055D102
 0055D087    mov         eax,edi
 0055D089    mov         si,0FFE9
 0055D08D    call        @CallDynaInst;TCustomTaskDialog.sub_0055D530
>0055D092    jmp         0055D102
 0055D094    lea         eax,[ebp-4]
 0055D097    mov         edx,dword ptr [ebp+0C]
 0055D09A    call        @UStrFromPWChar
 0055D09F    mov         edx,dword ptr [ebp-4]
 0055D0A2    mov         eax,edi
 0055D0A4    mov         si,0FFE8
 0055D0A8    call        @CallDynaInst;TCustomTaskDialog.sub_0055D594
>0055D0AD    jmp         0055D102
 0055D0AF    mov         eax,edi
 0055D0B1    mov         si,0FFE7
 0055D0B5    call        @CallDynaInst;TCustomTaskDialog.sub_0055D5C4
>0055D0BA    jmp         0055D102
 0055D0BC    mov         edx,dword ptr [ebp+10]
 0055D0BF    mov         eax,edi
 0055D0C1    mov         si,0FFE6
 0055D0C5    call        @CallDynaInst;TCustomTaskDialog.sub_0055D5E4
>0055D0CA    jmp         0055D102
 0055D0CC    mov         byte ptr [ebp-0A],0
 0055D0D0    lea         ecx,[ebp-0A]
 0055D0D3    mov         edx,dword ptr [ebp+10]
 0055D0D6    mov         eax,edi
 0055D0D8    mov         si,0FFE5
 0055D0DC    call        @CallDynaInst;TCustomTaskDialog.sub_0055D618
 0055D0E1    cmp         byte ptr [ebp-0A],0
>0055D0E5    je          0055D102
 0055D0E7    mov         dword ptr [ebp-8],1
>0055D0EE    jmp         0055D102
 0055D0F0    cmp         dword ptr [ebp+10],1
 0055D0F4    sete        dl
 0055D0F7    mov         eax,edi
 0055D0F9    mov         si,0FFE4
 0055D0FD    call        @CallDynaInst;TCustomTaskDialog.sub_0055D638
 0055D102    xor         eax,eax
 0055D104    pop         edx
 0055D105    pop         ecx
 0055D106    pop         ecx
 0055D107    mov         dword ptr fs:[eax],edx
 0055D10A    push        55D11F
 0055D10F    lea         eax,[ebp-4]
 0055D112    call        @UStrClr
 0055D117    ret
>0055D118    jmp         @HandleFinally
>0055D11D    jmp         0055D10F
 0055D11F    mov         eax,dword ptr [ebp-8]
 0055D122    pop         edi
 0055D123    pop         esi
 0055D124    pop         ebx
 0055D125    mov         esp,ebp
 0055D127    pop         ebp
 0055D128    ret         0C
end;*}

//0055D12C
{*procedure sub_0055D12C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0055D12C    push        ebp
 0055D12D    mov         ebp,esp
 0055D12F    push        esi
 0055D130    mov         eax,dword ptr [ebp+10]
 0055D133    push        eax
 0055D134    mov         eax,dword ptr [ebp+14]
 0055D137    push        eax
 0055D138    push        0
 0055D13A    mov         ecx,dword ptr [ebp+0C]
 0055D13D    mov         edx,dword ptr [ebp+8]
 0055D140    mov         eax,dword ptr [ebp+18]
 0055D143    mov         si,0FFE2
 0055D147    call        @CallDynaInst
 0055D14C    pop         esi
 0055D14D    pop         ebp
 0055D14E    ret         14
end;*}

//0055D154
{*procedure TCustomTaskDialog.sub_0055D154(?:?);
begin
 0055D154    push        ebp
 0055D155    mov         ebp,esp
 0055D157    add         esp,0FFFFFF78
 0055D15D    push        ebx
 0055D15E    push        esi
 0055D15F    push        edi
 0055D160    xor         ecx,ecx
 0055D162    mov         dword ptr [ebp-88],ecx
 0055D168    mov         dword ptr [ebp-4],edx
 0055D16B    mov         ebx,eax
 0055D16D    lea         esi,[ebp-7C]
 0055D170    xor         eax,eax
 0055D172    push        ebp
 0055D173    push        55D466
 0055D178    push        dword ptr fs:[eax]
 0055D17B    mov         dword ptr fs:[eax],esp
 0055D17E    mov         eax,[007C4590];^gvar_0079EDE0
 0055D183    cmp         dword ptr [eax],6
>0055D186    jge         0055D1C5
 0055D188    lea         edx,[ebp-88]
 0055D18E    mov         eax,dword ptr [ebx]
 0055D190    call        TObject.ClassName
 0055D195    mov         eax,dword ptr [ebp-88]
 0055D19B    mov         dword ptr [ebp-84],eax
 0055D1A1    mov         byte ptr [ebp-80],11
 0055D1A5    lea         eax,[ebp-84]
 0055D1AB    push        eax
 0055D1AC    push        0
 0055D1AE    mov         ecx,dword ptr ds:[7C4854];^SResString336:TResStringRec
 0055D1B4    mov         dl,1
 0055D1B6    mov         eax,[0055415C];EPlatformVersionException
 0055D1BB    call        Exception.CreateResFmt;EPlatformVersionException.Create
 0055D1C0    call        @RaiseExcept
 0055D1C5    mov         eax,esi
 0055D1C7    xor         ecx,ecx
 0055D1C9    mov         edx,60
 0055D1CE    call        @FillChar
 0055D1D3    mov         dword ptr [esi],60
 0055D1D9    mov         eax,dword ptr [ebp-4]
 0055D1DC    mov         dword ptr [esi+4],eax
 0055D1DF    xor         eax,eax
 0055D1E1    mov         dword ptr [esi+0C],eax
 0055D1E4    xor         eax,eax
 0055D1E6    mov         edi,7A1870
 0055D1EB    mov         edx,eax
 0055D1ED    cmp         dl,0F
>0055D1F0    ja          0055D1FA
 0055D1F2    and         edx,7F
 0055D1F5    bt          word ptr [ebx+68],dx;TCustomTaskDialog.FFlags:TTaskDialogFlags
>0055D1FA    jae         0055D201
 0055D1FC    mov         edx,dword ptr [edi]
 0055D1FE    or          dword ptr [esi+0C],edx
 0055D201    inc         eax
 0055D202    add         edi,4
 0055D205    cmp         al,10
>0055D207    jne         0055D1EB
 0055D209    xor         eax,eax
 0055D20B    mov         dword ptr [esi+10],eax
 0055D20E    xor         eax,eax
 0055D210    mov         edi,7A18B0
 0055D215    mov         edx,eax
 0055D217    cmp         dl,7
>0055D21A    ja          0055D226
 0055D21C    and         edx,7F
 0055D21F    movzx       ecx,byte ptr [ebx+4C];TCustomTaskDialog.FCommonButtons:TTaskDialogCommonButtons
 0055D223    bt          ecx,edx
>0055D226    jae         0055D22D
 0055D228    mov         edx,dword ptr [edi]
 0055D22A    or          dword ptr [esi+10],edx
 0055D22D    inc         eax
 0055D22E    add         edi,4
 0055D231    cmp         al,6
>0055D233    jne         0055D215
 0055D235    cmp         dword ptr [ebx+90],0;TCustomTaskDialog.FText:string
>0055D23C    je          0055D24C
 0055D23E    mov         eax,dword ptr [ebx+90];TCustomTaskDialog.FText:string
 0055D244    call        @UStrToPWChar
 0055D249    mov         dword ptr [esi+20],eax
 0055D24C    cmp         dword ptr [ebx+94],0;TCustomTaskDialog.FTitle:string
>0055D253    je          0055D263
 0055D255    mov         eax,dword ptr [ebx+94];TCustomTaskDialog.FTitle:string
 0055D25B    call        @UStrToPWChar
 0055D260    mov         dword ptr [esi+1C],eax
 0055D263    cmp         dword ptr [ebx+48],0;TCustomTaskDialog.FCaption:string
>0055D267    je          0055D274
 0055D269    mov         eax,dword ptr [ebx+48];TCustomTaskDialog.FCaption:string
 0055D26C    call        @UStrToPWChar
 0055D271    mov         dword ptr [esi+14],eax
 0055D274    test        byte ptr [ebx+68],2;TCustomTaskDialog.FFlags:TTaskDialogFlags
>0055D278    je          0055D287
 0055D27A    mov         eax,dword ptr [ebx+54];TCustomTaskDialog.FCustomMainIcon:TIcon
 0055D27D    call        TIcon.GetHandle
 0055D282    mov         dword ptr [esi+18],eax
>0055D285    jmp         0055D2A4
 0055D287    mov         eax,dword ptr [ebx+7C];TCustomTaskDialog.FMainIcon:TTaskDialogIcon
 0055D28A    mov         edx,eax
 0055D28C    sub         edx,5
>0055D28F    jae         0055D29D
 0055D291    mov         eax,dword ptr [eax*4+7A185C]
 0055D298    mov         dword ptr [esi+18],eax
>0055D29B    jmp         0055D2A4
 0055D29D    movzx       eax,word ptr [ebx+7C];TCustomTaskDialog.FMainIcon:TTaskDialogIcon
 0055D2A1    mov         dword ptr [esi+18],eax
 0055D2A4    movzx       eax,byte ptr [ebx+58];TCustomTaskDialog.FDefaultButton:TTaskDialogCommonButton
 0055D2A8    mov         eax,dword ptr [eax*4+7A18C8]
 0055D2AF    mov         dword ptr [esi+2C],eax
 0055D2B2    cmp         dword ptr [ebx+70],0;TCustomTaskDialog.FFooterText:string
>0055D2B6    je          0055D2C3
 0055D2B8    mov         eax,dword ptr [ebx+70];TCustomTaskDialog.FFooterText:string
 0055D2BB    call        @UStrToPWChar
 0055D2C0    mov         dword ptr [esi+50],eax
 0055D2C3    test        byte ptr [ebx+68],4;TCustomTaskDialog.FFlags:TTaskDialogFlags
>0055D2C7    je          0055D2D6
 0055D2C9    mov         eax,dword ptr [ebx+50];TCustomTaskDialog.FCustomFooterIcon:TIcon
 0055D2CC    call        TIcon.GetHandle
 0055D2D1    mov         dword ptr [esi+4C],eax
>0055D2D4    jmp         0055D2F3
 0055D2D6    mov         eax,dword ptr [ebx+6C];TCustomTaskDialog.FFooterIcon:TTaskDialogIcon
 0055D2D9    mov         edx,eax
 0055D2DB    sub         edx,5
>0055D2DE    jae         0055D2EC
 0055D2E0    mov         eax,dword ptr [eax*4+7A185C]
 0055D2E7    mov         dword ptr [esi+4C],eax
>0055D2EA    jmp         0055D2F3
 0055D2EC    movzx       eax,word ptr [ebx+6C];TCustomTaskDialog.FFooterIcon:TTaskDialogIcon
 0055D2F0    mov         dword ptr [esi+4C],eax
 0055D2F3    cmp         dword ptr [ebx+9C],0;TCustomTaskDialog.FVerificationText:string
>0055D2FA    je          0055D30A
 0055D2FC    mov         eax,dword ptr [ebx+9C];TCustomTaskDialog.FVerificationText:string
 0055D302    call        @UStrToPWChar
 0055D307    mov         dword ptr [esi+3C],eax
 0055D30A    cmp         dword ptr [ebx+64],0;TCustomTaskDialog.FExpandedText:string
>0055D30E    je          0055D31B
 0055D310    mov         eax,dword ptr [ebx+64];TCustomTaskDialog.FExpandedText:string
 0055D313    call        @UStrToPWChar
 0055D318    mov         dword ptr [esi+40],eax
 0055D31B    cmp         dword ptr [ebx+5C],0;TCustomTaskDialog.FExpandButtonCaption:string
>0055D31F    je          0055D32C
 0055D321    mov         eax,dword ptr [ebx+5C];TCustomTaskDialog.FExpandButtonCaption:string
 0055D324    call        @UStrToPWChar
 0055D329    mov         dword ptr [esi+48],eax
 0055D32C    mov         edi,dword ptr [ebx+44];TCustomTaskDialog.FButtons:TTaskDialogButtons
 0055D32F    mov         eax,edi
 0055D331    mov         eax,dword ptr [eax+8];TTaskDialogButtons.FItems:TList<System.Classes.TCollectionItem>
 0055D334    mov         edx,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0055D337    mov         dword ptr [esi+24],edx
 0055D33A    test        edx,edx
>0055D33C    jbe         0055D348
 0055D33E    mov         eax,edi
 0055D340    call        TTaskDialogButtons.Buttons
 0055D345    mov         dword ptr [esi+28],eax
 0055D348    mov         eax,dword ptr [ebx+44];TCustomTaskDialog.FButtons:TTaskDialogButtons
 0055D34B    mov         eax,dword ptr [eax+24];TTaskDialogButtons.FDefaultButton:TTaskDialogBaseButtonItem
 0055D34E    test        eax,eax
>0055D350    je          0055D358
 0055D352    mov         eax,dword ptr [eax+18];TTaskDialogBaseButtonItem.FModalResult:TModalResult
 0055D355    mov         dword ptr [esi+2C],eax
 0055D358    mov         edi,dword ptr [ebx+8C];TCustomTaskDialog.FRadioButtons:TTaskDialogButtons
 0055D35E    mov         eax,edi
 0055D360    mov         eax,dword ptr [eax+8];TTaskDialogButtons.FItems:TList<System.Classes.TCollectionItem>
 0055D363    mov         edx,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0055D366    mov         dword ptr [esi+30],edx
 0055D369    test        edx,edx
>0055D36B    jbe         0055D377
 0055D36D    mov         eax,edi
 0055D36F    call        TTaskDialogButtons.Buttons
 0055D374    mov         dword ptr [esi+34],eax
 0055D377    test        byte ptr [ebx+69],40;TCustomTaskDialog.?f69:byte
>0055D37B    jne         0055D398
 0055D37D    mov         eax,dword ptr [ebx+8C];TCustomTaskDialog.FRadioButtons:TTaskDialogButtons
 0055D383    cmp         dword ptr [eax+24],0;TTaskDialogButtons.FDefaultButton:TTaskDialogBaseButtonItem
>0055D387    je          0055D398
 0055D389    mov         eax,dword ptr [ebx+8C];TCustomTaskDialog.FRadioButtons:TTaskDialogButtons
 0055D38F    mov         eax,dword ptr [eax+24];TTaskDialogButtons.FDefaultButton:TTaskDialogBaseButtonItem
 0055D392    mov         eax,dword ptr [eax+18];TTaskDialogBaseButtonItem.FModalResult:TModalResult
 0055D395    mov         dword ptr [esi+38],eax
 0055D398    mov         dword ptr [esi+58],ebx
 0055D39B    mov         eax,55D12C;sub_0055D12C
 0055D3A0    mov         dword ptr [esi+54],eax
 0055D3A3    mov         eax,dword ptr [ebp-4]
 0055D3A6    call        DisableTaskWindows
 0055D3AB    mov         dword ptr [ebp-0C],eax
 0055D3AE    call        005BE9C0
 0055D3B3    mov         dword ptr [ebp-18],eax
 0055D3B6    xor         eax,eax
 0055D3B8    push        ebp
 0055D3B9    push        55D446
 0055D3BE    push        dword ptr fs:[eax]
 0055D3C1    mov         dword ptr fs:[eax],esp
 0055D3C4    lea         eax,[ebp-1C]
 0055D3C7    push        eax
 0055D3C8    lea         ecx,[ebp-14]
 0055D3CB    lea         edx,[ebp-10]
 0055D3CE    mov         eax,esi
 0055D3D0    call        TaskDialogIndirect
 0055D3D5    test        eax,eax
 0055D3D7    sete        byte ptr [ebp-5]
 0055D3DB    mov         esi,dword ptr [ebp-10]
 0055D3DE    mov         dword ptr [ebx+80],esi;TCustomTaskDialog.FModalResult:TModalResult
 0055D3E4    cmp         byte ptr [ebp-5],0
>0055D3E8    je          0055D41F
 0055D3EA    mov         edx,esi
 0055D3EC    mov         eax,dword ptr [ebx+44];TCustomTaskDialog.FButtons:TTaskDialogButtons
 0055D3EF    call        TTaskDialogButtons.FindButton
 0055D3F4    mov         dword ptr [ebx+40],eax;TCustomTaskDialog.FButton:TTaskDialogButtonItem
 0055D3F7    mov         eax,dword ptr [ebx+8C];TCustomTaskDialog.FRadioButtons:TTaskDialogButtons
 0055D3FD    mov         edx,dword ptr [ebp-14]
 0055D400    call        TTaskDialogButtons.FindButton
 0055D405    mov         dword ptr [ebx+88],eax;TCustomTaskDialog.FRadioButton:TTaskDialogRadioButtonItem
 0055D40B    cmp         dword ptr [ebp-1C],0
>0055D40F    je          0055D419
 0055D411    or          word ptr [ebx+68],100;TCustomTaskDialog.FFlags:TTaskDialogFlags
>0055D417    jmp         0055D41F
 0055D419    and         word ptr [ebx+68],0FEFF;TCustomTaskDialog.FFlags:TTaskDialogFlags
 0055D41F    xor         eax,eax
 0055D421    pop         edx
 0055D422    pop         ecx
 0055D423    pop         ecx
 0055D424    mov         dword ptr fs:[eax],edx
 0055D427    push        55D44D
 0055D42C    mov         eax,dword ptr [ebp-0C]
 0055D42F    call        EnableTaskWindows
 0055D434    mov         eax,dword ptr [ebp-4]
 0055D437    push        eax
 0055D438    call        user32.SetActiveWindow
 0055D43D    mov         eax,dword ptr [ebp-18]
 0055D440    call        005BE9C8
 0055D445    ret
>0055D446    jmp         @HandleFinally
>0055D44B    jmp         0055D42C
 0055D44D    xor         eax,eax
 0055D44F    pop         edx
 0055D450    pop         ecx
 0055D451    pop         ecx
 0055D452    mov         dword ptr fs:[eax],edx
 0055D455    push        55D46D
 0055D45A    lea         eax,[ebp-88]
 0055D460    call        @UStrClr
 0055D465    ret
>0055D466    jmp         @HandleFinally
>0055D46B    jmp         0055D45A
 0055D46D    movzx       eax,byte ptr [ebp-5]
 0055D471    pop         edi
 0055D472    pop         esi
 0055D473    pop         ebx
 0055D474    mov         esp,ebp
 0055D476    pop         ebp
 0055D477    ret
end;*}

//0055D478
{*procedure TCustomTaskDialog.sub_0055D478(?:?; ?:?);
begin
 0055D478    push        ebx
 0055D479    push        esi
 0055D47A    push        edi
 0055D47B    mov         edi,ecx
 0055D47D    mov         esi,edx
 0055D47F    mov         ebx,eax
 0055D481    cmp         word ptr [ebx+0A2],0;TCustomTaskDialog.?fA2:word
>0055D489    je          0055D4A9
 0055D48B    mov         edx,esi
 0055D48D    mov         eax,dword ptr [ebx+44];TCustomTaskDialog.FButtons:TTaskDialogButtons
 0055D490    call        TTaskDialogButtons.FindButton
 0055D495    mov         dword ptr [ebx+40],eax;TCustomTaskDialog.FButton:TTaskDialogButtonItem
 0055D498    push        edi
 0055D499    mov         ecx,esi
 0055D49B    mov         edx,ebx
 0055D49D    mov         eax,dword ptr [ebx+0A4];TCustomTaskDialog.?fA4:dword
 0055D4A3    call        dword ptr [ebx+0A0];TCustomTaskDialog.FOnButtonClicked
 0055D4A9    pop         edi
 0055D4AA    pop         esi
 0055D4AB    pop         ebx
 0055D4AC    ret
end;*}

//0055D4B0
procedure TCustomTaskDialog.DoOnDialogDestroyed;
begin
{*
 0055D4B0    push        ebx
 0055D4B1    cmp         word ptr [eax+0B2],0
>0055D4B9    je          0055D4CB
 0055D4BB    mov         ebx,eax
 0055D4BD    mov         edx,eax
 0055D4BF    mov         eax,dword ptr [ebx+0B4]
 0055D4C5    call        dword ptr [ebx+0B0]
 0055D4CB    pop         ebx
 0055D4CC    ret
*}
end;

//0055D4D0
procedure TCustomTaskDialog.sub_0055D4D0;
begin
{*
 0055D4D0    push        ebx
 0055D4D1    cmp         word ptr [eax+0BA],0;TCustomTaskDialog.?fBA:word
>0055D4D9    je          0055D4EB
 0055D4DB    mov         ebx,eax
 0055D4DD    mov         edx,eax
 0055D4DF    mov         eax,dword ptr [ebx+0BC];TCustomTaskDialog.?fBC:dword
 0055D4E5    call        dword ptr [ebx+0B8];TCustomTaskDialog.FOnDialogDestroyed
 0055D4EB    pop         ebx
 0055D4EC    ret
*}
end;

//0055D4F0
procedure TCustomTaskDialog.sub_0055D4F0;
begin
{*
 0055D4F0    push        ebx
 0055D4F1    cmp         word ptr [eax+0AA],0;TCustomTaskDialog.?fAA:word
>0055D4F9    je          0055D50B
 0055D4FB    mov         ebx,eax
 0055D4FD    mov         edx,eax
 0055D4FF    mov         eax,dword ptr [ebx+0AC];TCustomTaskDialog.?fAC:dword
 0055D505    call        dword ptr [ebx+0A8];TCustomTaskDialog.FOnDialogConstructed
 0055D50B    pop         ebx
 0055D50C    ret
*}
end;

//0055D510
{*procedure TCustomTaskDialog.sub_0055D510(?:?);
begin
 0055D510    push        ebx
 0055D511    cmp         word ptr [eax+0C2],0;TCustomTaskDialog.?fC2:word
>0055D519    je          0055D52E
 0055D51B    mov         byte ptr [eax+60],dl;TCustomTaskDialog.FExpanded:Boolean
 0055D51E    mov         ebx,eax
 0055D520    mov         edx,eax
 0055D522    mov         eax,dword ptr [ebx+0C4];TCustomTaskDialog.?fC4:dword
 0055D528    call        dword ptr [ebx+0C0];TCustomTaskDialog.FOnExpanded
 0055D52E    pop         ebx
 0055D52F    ret
end;*}

//0055D530
procedure TCustomTaskDialog.sub_0055D530;
begin
{*
 0055D530    push        ebp
 0055D531    mov         ebp,esp
 0055D533    push        ecx
 0055D534    push        ebx
 0055D535    push        esi
 0055D536    push        edi
 0055D537    mov         dword ptr [ebp-4],eax
 0055D53A    mov         eax,dword ptr [ebp-4]
 0055D53D    mov         eax,dword ptr [eax+78];TCustomTaskDialog.FHelpContext:Integer
 0055D540    test        eax,eax
>0055D542    je          0055D58E
 0055D544    xor         edx,edx
 0055D546    push        ebp
 0055D547    push        55D56A
 0055D54C    push        dword ptr fs:[edx]
 0055D54F    mov         dword ptr fs:[edx],esp
 0055D552    mov         edx,eax
 0055D554    mov         eax,[007C4A18];^Application:TApplication
 0055D559    mov         eax,dword ptr [eax]
 0055D55B    call        TApplication.HelpContext
 0055D560    xor         eax,eax
 0055D562    pop         edx
 0055D563    pop         ecx
 0055D564    pop         ecx
 0055D565    mov         dword ptr fs:[eax],edx
>0055D568    jmp         0055D58E
>0055D56A    jmp         @HandleOnException
 0055D56F    dd          1
 0055D573    dd          004174D0;Exception
 0055D577    dd          0055D57B
 0055D57B    mov         edx,eax
 0055D57D    mov         eax,dword ptr [ebp-4]
 0055D580    mov         si,0FFE3
 0055D584    call        @CallDynaInst;TCustomTaskDialog.sub_0055D8B0
 0055D589    call        @DoneExcept
 0055D58E    pop         edi
 0055D58F    pop         esi
 0055D590    pop         ebx
 0055D591    pop         ecx
 0055D592    pop         ebp
 0055D593    ret
*}
end;

//0055D594
{*procedure TCustomTaskDialog.sub_0055D594(?:?);
begin
 0055D594    push        ebx
 0055D595    push        esi
 0055D596    mov         esi,edx
 0055D598    mov         ebx,eax
 0055D59A    cmp         word ptr [ebx+0CA],0;TCustomTaskDialog.?fCA:word
>0055D5A2    je          0055D5BF
 0055D5A4    lea         eax,[ebx+98];TCustomTaskDialog.FURL:string
 0055D5AA    mov         edx,esi
 0055D5AC    call        @UStrAsg
 0055D5B1    mov         edx,ebx
 0055D5B3    mov         eax,dword ptr [ebx+0CC];TCustomTaskDialog.?fCC:dword
 0055D5B9    call        dword ptr [ebx+0C8];TCustomTaskDialog.FOnHyperlinkClicked
 0055D5BF    pop         esi
 0055D5C0    pop         ebx
 0055D5C1    ret
end;*}

//0055D5C4
procedure TCustomTaskDialog.sub_0055D5C4;
begin
{*
 0055D5C4    push        ebx
 0055D5C5    cmp         word ptr [eax+0D2],0;TCustomTaskDialog.?fD2:word
>0055D5CD    je          0055D5DF
 0055D5CF    mov         ebx,eax
 0055D5D1    mov         edx,eax
 0055D5D3    mov         eax,dword ptr [ebx+0D4];TCustomTaskDialog.?fD4:dword
 0055D5D9    call        dword ptr [ebx+0D0];TCustomTaskDialog.FOnNavigated
 0055D5DF    pop         ebx
 0055D5E0    ret
*}
end;

//0055D5E4
{*procedure TCustomTaskDialog.sub_0055D5E4(?:?);
begin
 0055D5E4    push        ebx
 0055D5E5    push        esi
 0055D5E6    mov         esi,edx
 0055D5E8    mov         ebx,eax
 0055D5EA    cmp         word ptr [ebx+0DA],0;TCustomTaskDialog.?fDA:word
>0055D5F2    je          0055D615
 0055D5F4    mov         edx,esi
 0055D5F6    mov         eax,dword ptr [ebx+8C];TCustomTaskDialog.FRadioButtons:TTaskDialogButtons
 0055D5FC    call        TTaskDialogButtons.FindButton
 0055D601    mov         dword ptr [ebx+88],eax;TCustomTaskDialog.FRadioButton:TTaskDialogRadioButtonItem
 0055D607    mov         edx,ebx
 0055D609    mov         eax,dword ptr [ebx+0DC];TCustomTaskDialog.?fDC:dword
 0055D60F    call        dword ptr [ebx+0D8];TCustomTaskDialog.FOnRadioButtonClicked
 0055D615    pop         esi
 0055D616    pop         ebx
 0055D617    ret
end;*}

//0055D618
{*procedure TCustomTaskDialog.sub_0055D618(?:?);
begin
 0055D618    push        ebx
 0055D619    cmp         word ptr [eax+0E2],0;TCustomTaskDialog.?fE2:word
>0055D621    je          0055D636
 0055D623    push        ecx
 0055D624    mov         ebx,eax
 0055D626    mov         ecx,edx
 0055D628    mov         edx,eax
 0055D62A    mov         eax,dword ptr [ebx+0E4];TCustomTaskDialog.?fE4:dword
 0055D630    call        dword ptr [ebx+0E0];TCustomTaskDialog.FOnTimer
 0055D636    pop         ebx
 0055D637    ret
end;*}

//0055D638
{*procedure TCustomTaskDialog.sub_0055D638(?:?);
begin
 0055D638    push        ebx
 0055D639    mov         ebx,eax
 0055D63B    cmp         word ptr [ebx+0EA],0;TCustomTaskDialog.?fEA:word
>0055D643    je          0055D665
 0055D645    test        dl,dl
>0055D647    je          0055D651
 0055D649    or          word ptr [ebx+68],100;TCustomTaskDialog.FFlags:TTaskDialogFlags
>0055D64F    jmp         0055D657
 0055D651    and         word ptr [ebx+68],0FEFF;TCustomTaskDialog.FFlags:TTaskDialogFlags
 0055D657    mov         edx,ebx
 0055D659    mov         eax,dword ptr [ebx+0EC];TCustomTaskDialog.?fEC:dword
 0055D65F    call        dword ptr [ebx+0E8];TCustomTaskDialog.FOnVerificationClicked
 0055D665    pop         ebx
 0055D666    ret
end;*}

//0055D668
procedure TCustomTaskDialog.Execute;
begin
{*
 0055D668    push        esi
 0055D669    mov         esi,eax
 0055D66B    mov         eax,[007C4E78];^Screen:TScreen
 0055D670    mov         eax,dword ptr [eax]
 0055D672    mov         eax,dword ptr [eax+74];TScreen.FActiveForm:TForm
 0055D675    test        eax,eax
>0055D677    je          0055D689
 0055D679    cmp         byte ptr [eax+2C2],1;TForm.FFormStyle:TFormStyle
>0055D680    je          0055D689
 0055D682    call        TWinControl.GetHandle
>0055D687    jmp         0055D6A6
 0055D689    mov         eax,[007C4A18];^Application:TApplication
 0055D68E    mov         eax,dword ptr [eax]
 0055D690    call        005CCE10
 0055D695    test        eax,eax
>0055D697    jne         0055D6A6
 0055D699    mov         eax,[007C4A18];^Application:TApplication
 0055D69E    mov         eax,dword ptr [eax]
 0055D6A0    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 0055D6A6    mov         edx,eax
 0055D6A8    mov         eax,esi
 0055D6AA    mov         si,0FFE0
 0055D6AE    call        @CallDynaInst;TCustomTaskDialog.sub_0055D6B8
 0055D6B3    pop         esi
 0055D6B4    ret
*}
end;

//0055D6B8
procedure TCustomTaskDialog.Execute(ParentWnd:HWND);
begin
{*
 0055D6B8    push        esi
 0055D6B9    xor         ecx,ecx
 0055D6BB    mov         dword ptr [eax+80],ecx;TCustomTaskDialog.FModalResult:TModalResult
 0055D6C1    mov         si,0FFEF
 0055D6C5    call        @CallDynaInst;TCustomTaskDialog.sub_0055D154
 0055D6CA    pop         esi
 0055D6CB    ret
*}
end;

//0055D738
{*procedure sub_0055D738(?:TTaskMessageDialog; ?:?);
begin
 0055D738    push        esi
 0055D739    push        ecx
 0055D73A    mov         word ptr [esp],dx
 0055D73E    mov         esi,eax
 0055D740    movzx       eax,word ptr [esi+68]
 0055D744    cmp         ax,word ptr [esp]
>0055D748    je          0055D789
 0055D74A    test        byte ptr [esi+69],1
 0055D74E    setne       dl
 0055D751    test        byte ptr [esp+1],1
 0055D756    setne       al
 0055D759    test        al,al
>0055D75B    je          0055D763
 0055D75D    cmp         dword ptr [esi+74],0
>0055D761    jne         0055D767
 0055D763    xor         ecx,ecx
>0055D765    jmp         0055D769
 0055D767    mov         cl,1
 0055D769    cmp         dl,cl
>0055D76B    je          0055D781
 0055D76D    push        0
 0055D76F    and         eax,7F
 0055D772    push        eax
 0055D773    push        471
 0055D778    mov         eax,dword ptr [esi+74]
 0055D77B    push        eax
 0055D77C    call        user32.SendMessageW
 0055D781    movzx       eax,word ptr [esp]
 0055D785    mov         word ptr [esi+68],ax
 0055D789    pop         edx
 0055D78A    pop         esi
 0055D78B    ret
end;*}

//0055D7F0
{*procedure sub_0055D7F0(?:TTaskMessageDialog; ?:?);
begin
 0055D7F0    cmp         edx,dword ptr [eax+7C]
>0055D7F3    je          0055D816
 0055D7F5    mov         ecx,edx
 0055D7F7    mov         dword ptr [eax+7C],ecx
 0055D7FA    mov         edx,dword ptr [eax+74]
 0055D7FD    test        edx,edx
>0055D7FF    je          0055D816
 0055D801    mov         ecx,dword ptr [ecx*4+7A185C]
 0055D808    push        ecx
 0055D809    push        0
 0055D80B    push        474
 0055D810    push        edx
 0055D811    call        user32.SendMessageW
 0055D816    ret
end;*}

//0055D82C
{*procedure sub_0055D82C(?:TTaskMessageDialog; ?:?);
begin
 0055D82C    push        ebx
 0055D82D    push        esi
 0055D82E    mov         esi,edx
 0055D830    mov         ebx,eax
 0055D832    mov         eax,esi
 0055D834    mov         edx,dword ptr [ebx+90]
 0055D83A    call        @UStrEqual
>0055D83F    je          0055D868
 0055D841    lea         eax,[ebx+90]
 0055D847    mov         edx,esi
 0055D849    call        @UStrAsg
 0055D84E    mov         eax,dword ptr [ebx+74]
 0055D851    test        eax,eax
>0055D853    je          0055D868
 0055D855    mov         edx,dword ptr [ebx+90]
 0055D85B    push        edx
 0055D85C    xor         ecx,ecx
 0055D85E    mov         edx,472
 0055D863    call        SendTextMessage
 0055D868    pop         esi
 0055D869    pop         ebx
 0055D86A    ret
end;*}

//0055D86C
{*procedure sub_0055D86C(?:TTaskMessageDialog; ?:?);
begin
 0055D86C    push        ebx
 0055D86D    push        esi
 0055D86E    mov         esi,edx
 0055D870    mov         ebx,eax
 0055D872    mov         eax,esi
 0055D874    mov         edx,dword ptr [ebx+94]
 0055D87A    call        @UStrEqual
>0055D87F    je          0055D8AB
 0055D881    lea         eax,[ebx+94]
 0055D887    mov         edx,esi
 0055D889    call        @UStrAsg
 0055D88E    mov         eax,dword ptr [ebx+74]
 0055D891    test        eax,eax
>0055D893    je          0055D8AB
 0055D895    mov         edx,dword ptr [ebx+94]
 0055D89B    push        edx
 0055D89C    mov         ecx,3
 0055D8A1    mov         edx,472
 0055D8A6    call        SendTextMessage
 0055D8AB    pop         esi
 0055D8AC    pop         ebx
 0055D8AD    ret
end;*}

//0055D8B0
{*procedure TCustomTaskDialog.sub_0055D8B0(?:?);
begin
 0055D8B0    push        ebp
 0055D8B1    mov         ebp,esp
 0055D8B3    push        0
 0055D8B5    push        0
 0055D8B7    push        0
 0055D8B9    push        ebx
 0055D8BA    push        esi
 0055D8BB    push        edi
 0055D8BC    mov         ebx,edx
 0055D8BE    mov         dword ptr [ebp-8],eax
 0055D8C1    xor         eax,eax
 0055D8C3    push        ebp
 0055D8C4    push        55D98D
 0055D8C9    push        dword ptr fs:[eax]
 0055D8CC    mov         dword ptr fs:[eax],esp
 0055D8CF    mov         edi,10
 0055D8D4    mov         eax,[007C4A18];^Application:TApplication
 0055D8D9    mov         eax,dword ptr [eax]
 0055D8DB    call        TApplication.UseRightToLeftReading
 0055D8E0    test        al,al
>0055D8E2    je          0055D8EA
 0055D8E4    or          edi,100000
 0055D8EA    lea         eax,[ebp-4]
 0055D8ED    mov         edx,dword ptr [ebx+4]
 0055D8F0    call        @UStrLAsg
 0055D8F5    mov         eax,ebx
 0055D8F7    mov         edx,dword ptr [eax]
 0055D8F9    call        dword ptr [edx+4]
 0055D8FC    mov         esi,eax
 0055D8FE    cmp         ebx,esi
>0055D900    je          0055D917
 0055D902    mov         ebx,esi
 0055D904    cmp         dword ptr [ebx+4],0
>0055D908    je          0055D8F5
 0055D90A    lea         eax,[ebp-4]
 0055D90D    mov         edx,dword ptr [ebx+4]
 0055D910    call        @UStrLAsg
>0055D915    jmp         0055D8F5
 0055D917    cmp         dword ptr [ebp-4],0
>0055D91B    je          0055D941
 0055D91D    mov         eax,dword ptr [ebp-4]
 0055D920    test        eax,eax
>0055D922    je          0055D929
 0055D924    sub         eax,4
 0055D927    mov         eax,dword ptr [eax]
 0055D929    mov         edx,dword ptr [ebp-4]
 0055D92C    cmp         word ptr [edx+eax*2-2],2E
>0055D932    jbe         0055D941
 0055D934    lea         eax,[ebp-4]
 0055D937    mov         edx,55D9A8;'.'
 0055D93C    call        @UStrCat
 0055D941    push        edi
 0055D942    lea         edx,[ebp-0C]
 0055D945    mov         eax,[007C4A18];^Application:TApplication
 0055D94A    mov         eax,dword ptr [eax]
 0055D94C    call        005CAD90
 0055D951    mov         eax,dword ptr [ebp-0C]
 0055D954    call        @UStrToPWChar
 0055D959    push        eax
 0055D95A    mov         eax,dword ptr [ebp-4]
 0055D95D    call        @UStrToPWChar
 0055D962    push        eax
 0055D963    mov         eax,dword ptr [ebp-8]
 0055D966    mov         eax,dword ptr [eax+74];TCustomTaskDialog.FHandle:HWND
 0055D969    push        eax
 0055D96A    call        user32.MessageBoxW
 0055D96F    xor         eax,eax
 0055D971    pop         edx
 0055D972    pop         ecx
 0055D973    pop         ecx
 0055D974    mov         dword ptr fs:[eax],edx
 0055D977    push        55D994
 0055D97C    lea         eax,[ebp-0C]
 0055D97F    call        @UStrClr
 0055D984    lea         eax,[ebp-4]
 0055D987    call        @UStrClr
 0055D98C    ret
>0055D98D    jmp         @HandleFinally
>0055D992    jmp         0055D97C
 0055D994    pop         edi
 0055D995    pop         esi
 0055D996    pop         ebx
 0055D997    mov         esp,ebp
 0055D999    pop         ebp
 0055D99A    ret
end;*}

//0055D9AC
function GetAveCharSize(Canvas:Graphics.TCanvas):TPoint;
begin
{*
 0055D9AC    push        ebx
 0055D9AD    push        esi
 0055D9AE    add         esp,0FFFFFF98
 0055D9B1    mov         ebx,edx
 0055D9B3    mov         esi,eax
 0055D9B5    xor         eax,eax
 0055D9B7    mov         edx,esp
 0055D9B9    lea         ecx,[eax+41]
 0055D9BC    mov         word ptr [edx],cx
 0055D9BF    inc         eax
 0055D9C0    add         edx,2
 0055D9C3    cmp         eax,1A
>0055D9C6    jne         0055D9B9
 0055D9C8    xor         eax,eax
 0055D9CA    lea         edx,[esp+34]
 0055D9CE    lea         ecx,[eax+61]
 0055D9D1    mov         word ptr [edx],cx
 0055D9D4    inc         eax
 0055D9D5    add         edx,2
 0055D9D8    cmp         eax,1A
>0055D9DB    jne         0055D9CE
 0055D9DD    push        ebx
 0055D9DE    push        34
 0055D9E0    lea         eax,[esp+8]
 0055D9E4    push        eax
 0055D9E5    mov         eax,esi
 0055D9E7    call        TCanvas.GetHandle
 0055D9EC    push        eax
 0055D9ED    call        gdi32.GetTextExtentPointW
 0055D9F2    mov         ecx,34
 0055D9F7    mov         eax,dword ptr [ebx]
 0055D9F9    cdq
 0055D9FA    idiv        eax,ecx
 0055D9FC    mov         dword ptr [ebx],eax
 0055D9FE    add         esp,68
 0055DA01    pop         esi
 0055DA02    pop         ebx
 0055DA03    ret
*}
end;

//0055DC50
constructor TMessageForm.Create(AOwner:TComponent; Dummy:Integer);
begin
{*
 0055DC50    push        ebp
 0055DC51    mov         ebp,esp
 0055DC53    push        ebx
 0055DC54    push        esi
 0055DC55    test        dl,dl
>0055DC57    je          0055DC61
 0055DC59    add         esp,0FFFFFFF0
 0055DC5C    call        @ClassCreate
 0055DC61    mov         ebx,edx
 0055DC63    mov         esi,eax
 0055DC65    mov         eax,dword ptr [ebp+8]
 0055DC68    push        eax
 0055DC69    xor         edx,edx
 0055DC6B    mov         eax,esi
 0055DC6D    call        TInputQueryForm.Create
 0055DC72    mov         eax,[007C4E78];^Screen:TScreen
 0055DC77    mov         eax,dword ptr [eax]
 0055DC79    mov         edx,dword ptr [eax+94];TScreen.FMessageFont:TFont
 0055DC7F    mov         eax,dword ptr [esi+74];TMessageForm.FFont:TFont
 0055DC82    mov         ecx,dword ptr [eax]
 0055DC84    call        dword ptr [ecx+8];TFont.Assign
 0055DC87    mov         eax,esi
 0055DC89    test        bl,bl
>0055DC8B    je          0055DC9C
 0055DC8D    call        @AfterConstruction
 0055DC92    pop         dword ptr fs:[0]
 0055DC99    add         esp,0C
 0055DC9C    mov         eax,esi
 0055DC9E    pop         esi
 0055DC9F    pop         ebx
 0055DCA0    pop         ebp
 0055DCA1    ret         4
*}
end;

//0055DCBC
procedure TMessageForm.CustomKeyDown(Sender:TObject; var Key:Word; Shift:Classes.TShiftState);
begin
{*
 0055DCBC    push        ebp
 0055DCBD    mov         ebp,esp
 0055DCBF    push        0
 0055DCC1    push        ebx
 0055DCC2    push        esi
 0055DCC3    mov         esi,ecx
 0055DCC5    mov         ebx,eax
 0055DCC7    xor         eax,eax
 0055DCC9    push        ebp
 0055DCCA    push        55DD19
 0055DCCF    push        dword ptr fs:[eax]
 0055DCD2    mov         dword ptr fs:[eax],esp
 0055DCD5    movzx       eax,word ptr ds:[55DD28]
 0055DCDC    cmp         ax,word ptr [ebp+8]
>0055DCE0    jne         0055DD03
 0055DCE2    cmp         word ptr [esi],43
>0055DCE6    jne         0055DD03
 0055DCE8    push        0
 0055DCEA    call        user32.MessageBeep
 0055DCEF    lea         edx,[ebp-4]
 0055DCF2    mov         eax,ebx
 0055DCF4    call        TMessageForm.GetFormText
 0055DCF9    mov         edx,dword ptr [ebp-4]
 0055DCFC    mov         eax,ebx
 0055DCFE    call        TMessageForm.WriteToClipBoard
 0055DD03    xor         eax,eax
 0055DD05    pop         edx
 0055DD06    pop         ecx
 0055DD07    pop         ecx
 0055DD08    mov         dword ptr fs:[eax],edx
 0055DD0B    push        55DD20
 0055DD10    lea         eax,[ebp-4]
 0055DD13    call        @UStrClr
 0055DD18    ret
>0055DD19    jmp         @HandleFinally
>0055DD1E    jmp         0055DD10
 0055DD20    pop         esi
 0055DD21    pop         ebx
 0055DD22    pop         ecx
 0055DD23    pop         ebp
 0055DD24    ret         4
*}
end;

//0055DD2C
procedure TMessageForm.WriteToClipBoard(Text:UnicodeString);
begin
{*
 0055DD2C    push        ebp
 0055DD2D    mov         ebp,esp
 0055DD2F    add         esp,0FFFFFFF8
 0055DD32    push        ebx
 0055DD33    push        esi
 0055DD34    push        edi
 0055DD35    mov         dword ptr [ebp-4],edx
 0055DD38    mov         eax,dword ptr [ebp-4]
 0055DD3B    call        @UStrAddRef
 0055DD40    xor         eax,eax
 0055DD42    push        ebp
 0055DD43    push        55DE69
 0055DD48    push        dword ptr fs:[eax]
 0055DD4B    mov         dword ptr fs:[eax],esp
 0055DD4E    push        0
 0055DD50    call        user32.OpenClipboard
 0055DD55    test        eax,eax
>0055DD57    je          0055DE3C
 0055DD5D    xor         edx,edx
 0055DD5F    push        ebp
 0055DD60    push        55DE35
 0055DD65    push        dword ptr fs:[edx]
 0055DD68    mov         dword ptr fs:[edx],esp
 0055DD6B    mov         ebx,dword ptr [ebp-4]
 0055DD6E    mov         eax,ebx
 0055DD70    test        eax,eax
>0055DD72    je          0055DD79
 0055DD74    sub         eax,4
 0055DD77    mov         eax,dword ptr [eax]
 0055DD79    add         eax,eax
 0055DD7B    add         eax,2
 0055DD7E    push        eax
 0055DD7F    push        2002
 0055DD84    call        kernel32.GlobalAlloc
 0055DD89    mov         dword ptr [ebp-8],eax
 0055DD8C    xor         eax,eax
 0055DD8E    push        ebp
 0055DD8F    push        55DE0A
 0055DD94    push        dword ptr fs:[eax]
 0055DD97    mov         dword ptr fs:[eax],esp
 0055DD9A    mov         eax,dword ptr [ebp-8]
 0055DD9D    push        eax
 0055DD9E    call        kernel32.GlobalLock
 0055DDA3    mov         esi,eax
 0055DDA5    xor         eax,eax
 0055DDA7    push        ebp
 0055DDA8    push        55DDF9
 0055DDAD    push        dword ptr fs:[eax]
 0055DDB0    mov         dword ptr fs:[eax],esp
 0055DDB3    test        ebx,ebx
>0055DDB5    je          0055DDBC
 0055DDB7    sub         ebx,4
 0055DDBA    mov         ebx,dword ptr [ebx]
 0055DDBC    mov         eax,dword ptr [ebp-4]
 0055DDBF    call        @UStrToPWChar
 0055DDC4    mov         ecx,ebx
 0055DDC6    add         ecx,ecx
 0055DDC8    add         ecx,2
 0055DDCB    mov         edx,esi
 0055DDCD    call        Move
 0055DDD2    call        user32.EmptyClipboard
 0055DDD7    mov         eax,dword ptr [ebp-8]
 0055DDDA    push        eax
 0055DDDB    push        0D
 0055DDDD    call        user32.SetClipboardData
 0055DDE2    xor         eax,eax
 0055DDE4    pop         edx
 0055DDE5    pop         ecx
 0055DDE6    pop         ecx
 0055DDE7    mov         dword ptr fs:[eax],edx
 0055DDEA    push        55DE00
 0055DDEF    mov         eax,dword ptr [ebp-8]
 0055DDF2    push        eax
 0055DDF3    call        kernel32.GlobalUnlock
 0055DDF8    ret
>0055DDF9    jmp         @HandleFinally
>0055DDFE    jmp         0055DDEF
 0055DE00    xor         eax,eax
 0055DE02    pop         edx
 0055DE03    pop         ecx
 0055DE04    pop         ecx
 0055DE05    mov         dword ptr fs:[eax],edx
>0055DE08    jmp         0055DE22
>0055DE0A    jmp         @HandleAnyException
 0055DE0F    mov         eax,dword ptr [ebp-8]
 0055DE12    push        eax
 0055DE13    call        kernel32.GlobalFree
 0055DE18    call        @RaiseAgain
 0055DE1D    call        @DoneExcept
 0055DE22    xor         eax,eax
 0055DE24    pop         edx
 0055DE25    pop         ecx
 0055DE26    pop         ecx
 0055DE27    mov         dword ptr fs:[eax],edx
 0055DE2A    push        55DE53
 0055DE2F    call        user32.CloseClipboard
 0055DE34    ret
>0055DE35    jmp         @HandleFinally
>0055DE3A    jmp         0055DE2F
 0055DE3C    mov         ecx,dword ptr ds:[7C42E8];^SResString313:TResStringRec
 0055DE42    mov         dl,1
 0055DE44    mov         eax,[004174D0];Exception
 0055DE49    call        Exception.CreateRes
 0055DE4E    call        @RaiseExcept
 0055DE53    xor         eax,eax
 0055DE55    pop         edx
 0055DE56    pop         ecx
 0055DE57    pop         ecx
 0055DE58    mov         dword ptr fs:[eax],edx
 0055DE5B    push        55DE70
 0055DE60    lea         eax,[ebp-4]
 0055DE63    call        @UStrClr
 0055DE68    ret
>0055DE69    jmp         @HandleFinally
>0055DE6E    jmp         0055DE60
 0055DE70    pop         edi
 0055DE71    pop         esi
 0055DE72    pop         ebx
 0055DE73    pop         ecx
 0055DE74    pop         ecx
 0055DE75    pop         ebp
 0055DE76    ret
*}
end;

//0055DE78
function TMessageForm.GetFormText:UnicodeString;
begin
{*
 0055DE78    push        ebp
 0055DE79    mov         ebp,esp
 0055DE7B    add         esp,0FFFFFF8C
 0055DE7E    push        ebx
 0055DE7F    push        esi
 0055DE80    push        edi
 0055DE81    xor         ecx,ecx
 0055DE83    mov         dword ptr [ebp-70],ecx
 0055DE86    mov         dword ptr [ebp-74],ecx
 0055DE89    mov         dword ptr [ebp-1C],ecx
 0055DE8C    mov         dword ptr [ebp-14],ecx
 0055DE8F    mov         dword ptr [ebp-18],ecx
 0055DE92    mov         dword ptr [ebp-10],ecx
 0055DE95    mov         dword ptr [ebp-4],ecx
 0055DE98    mov         dword ptr [ebp-8],ecx
 0055DE9B    mov         dword ptr [ebp-0C],edx
 0055DE9E    mov         ebx,eax
 0055DEA0    xor         eax,eax
 0055DEA2    push        ebp
 0055DEA3    push        55E037
 0055DEA8    push        dword ptr fs:[eax]
 0055DEAB    mov         dword ptr fs:[eax],esp
 0055DEAE    lea         ecx,[ebp-10]
 0055DEB1    mov         edx,1B
 0055DEB6    mov         ax,2D
 0055DEBA    call        StringOfChar
 0055DEBF    mov         edx,dword ptr [ebp-10]
 0055DEC2    lea         eax,[ebp-4]
 0055DEC5    mov         ecx,55E054;'
'
 0055DECA    call        @UStrCat3
 0055DECF    mov         eax,ebx
 0055DED1    call        TComponent.GetComponentCount
 0055DED6    mov         edi,eax
 0055DED8    dec         edi
 0055DED9    test        edi,edi
>0055DEDB    jl          0055DF34
 0055DEDD    inc         edi
 0055DEDE    xor         esi,esi
 0055DEE0    mov         edx,esi
 0055DEE2    mov         eax,ebx
 0055DEE4    call        TComponent.GetComponent
 0055DEE9    mov         edx,dword ptr ds:[4FF09C];TButton
 0055DEEF    call        @IsClass
 0055DEF4    test        al,al
>0055DEF6    je          0055DF30
 0055DEF8    push        dword ptr [ebp-8]
 0055DEFB    mov         edx,esi
 0055DEFD    mov         eax,ebx
 0055DEFF    call        TComponent.GetComponent
 0055DF04    lea         edx,[ebp-14]
 0055DF07    call        TControl.GetText
 0055DF0C    push        dword ptr [ebp-14]
 0055DF0F    lea         ecx,[ebp-18]
 0055DF12    mov         edx,3
 0055DF17    mov         ax,20
 0055DF1B    call        StringOfChar
 0055DF20    push        dword ptr [ebp-18]
 0055DF23    lea         eax,[ebp-8]
 0055DF26    mov         edx,3
 0055DF2B    call        @UStrCatN
 0055DF30    inc         esi
 0055DF31    dec         edi
>0055DF32    jne         0055DEE0
 0055DF34    movzx       eax,byte ptr ds:[55E05C]
 0055DF3B    push        eax
 0055DF3C    lea         eax,[ebp-1C]
 0055DF3F    push        eax
 0055DF40    xor         ecx,ecx
 0055DF42    mov         edx,55E06C;'&'
 0055DF47    mov         eax,dword ptr [ebp-8]
 0055DF4A    call        00425440
 0055DF4F    mov         edx,dword ptr [ebp-1C]
 0055DF52    lea         eax,[ebp-8]
 0055DF55    call        @UStrLAsg
 0055DF5A    mov         eax,dword ptr [ebp-0C]
 0055DF5D    push        eax
 0055DF5E    mov         eax,dword ptr [ebp-4]
 0055DF61    mov         dword ptr [ebp-6C],eax
 0055DF64    mov         byte ptr [ebp-68],11
 0055DF68    lea         edx,[ebp-70]
 0055DF6B    mov         eax,ebx
 0055DF6D    call        TControl.GetText
 0055DF72    mov         eax,dword ptr [ebp-70]
 0055DF75    mov         dword ptr [ebp-64],eax
 0055DF78    mov         byte ptr [ebp-60],11
 0055DF7C    mov         eax,55E07C;#13+#10
 0055DF81    mov         dword ptr [ebp-5C],eax
 0055DF84    mov         byte ptr [ebp-58],0B
 0055DF88    mov         eax,dword ptr [ebp-4]
 0055DF8B    mov         dword ptr [ebp-54],eax
 0055DF8E    mov         byte ptr [ebp-50],11
 0055DF92    lea         edx,[ebp-74]
 0055DF95    mov         eax,dword ptr [ebx+3C0]
 0055DF9B    call        TControl.GetText
 0055DFA0    mov         eax,dword ptr [ebp-74]
 0055DFA3    mov         dword ptr [ebp-4C],eax
 0055DFA6    mov         byte ptr [ebp-48],11
 0055DFAA    mov         eax,55E07C;#13+#10
 0055DFAF    mov         dword ptr [ebp-44],eax
 0055DFB2    mov         byte ptr [ebp-40],0B
 0055DFB6    mov         eax,dword ptr [ebp-4]
 0055DFB9    mov         dword ptr [ebp-3C],eax
 0055DFBC    mov         byte ptr [ebp-38],11
 0055DFC0    mov         eax,dword ptr [ebp-8]
 0055DFC3    mov         dword ptr [ebp-34],eax
 0055DFC6    mov         byte ptr [ebp-30],11
 0055DFCA    mov         eax,55E07C;#13+#10
 0055DFCF    mov         dword ptr [ebp-2C],eax
 0055DFD2    mov         byte ptr [ebp-28],0B
 0055DFD6    mov         eax,dword ptr [ebp-4]
 0055DFD9    mov         dword ptr [ebp-24],eax
 0055DFDC    mov         byte ptr [ebp-20],11
 0055DFE0    lea         edx,[ebp-6C]
 0055DFE3    mov         ecx,9
 0055DFE8    mov         eax,55E08C;'%s%s%s%s%s%s%s%s%s%s'
 0055DFED    call        Format
 0055DFF2    xor         eax,eax
 0055DFF4    pop         edx
 0055DFF5    pop         ecx
 0055DFF6    pop         ecx
 0055DFF7    mov         dword ptr fs:[eax],edx
 0055DFFA    push        55E03E
 0055DFFF    lea         eax,[ebp-74]
 0055E002    mov         edx,2
 0055E007    call        @UStrArrayClr
 0055E00C    lea         eax,[ebp-1C]
 0055E00F    mov         edx,2
 0055E014    call        @UStrArrayClr
 0055E019    lea         eax,[ebp-14]
 0055E01C    call        @UStrClr
 0055E021    lea         eax,[ebp-10]
 0055E024    call        @UStrClr
 0055E029    lea         eax,[ebp-8]
 0055E02C    mov         edx,2
 0055E031    call        @UStrArrayClr
 0055E036    ret
>0055E037    jmp         @HandleFinally
>0055E03C    jmp         0055DFFF
 0055E03E    pop         edi
 0055E03F    pop         esi
 0055E040    pop         ebx
 0055E041    mov         esp,ebp
 0055E043    pop         ebp
 0055E044    ret
*}
end;

//0055E1DC
{*function sub_0055E1DC(?:?; ?:?; ?:?; ?:?):?;
begin
 0055E1DC    push        ebp
 0055E1DD    mov         ebp,esp
 0055E1DF    add         esp,0FFFFFF7C
 0055E1E5    push        ebx
 0055E1E6    push        esi
 0055E1E7    push        edi
 0055E1E8    xor         ebx,ebx
 0055E1EA    mov         dword ptr [ebp-84],ebx
 0055E1F0    mov         dword ptr [ebp-80],ebx
 0055E1F3    mov         dword ptr [ebp-7C],ebx
 0055E1F6    mov         dword ptr [ebp-78],ebx
 0055E1F9    mov         word ptr [ebp-7],cx
 0055E1FD    mov         byte ptr [ebp-5],dl
 0055E200    mov         dword ptr [ebp-4],eax
 0055E203    xor         eax,eax
 0055E205    push        ebp
 0055E206    push        55E79B
 0055E20B    push        dword ptr fs:[eax]
 0055E20E    mov         dword ptr fs:[eax],esp
 0055E211    push        0
 0055E213    mov         ecx,dword ptr ds:[7C4A18];^Application:TApplication
 0055E219    mov         ecx,dword ptr [ecx]
 0055E21B    mov         dl,1
 0055E21D    mov         eax,[0055DA04];TMessageForm
 0055E222    call        TMessageForm.Create;TMessageForm.Create
 0055E227    mov         edi,eax
 0055E229    mov         eax,[007C4E78];^Screen:TScreen
 0055E22E    mov         eax,dword ptr [eax]
 0055E230    mov         edx,dword ptr [eax+94];TScreen.FMessageFont:TFont
 0055E236    mov         eax,edi
 0055E238    call        TGroupBox.SetFont
 0055E23D    mov         eax,[007C4A18];^Application:TApplication
 0055E242    mov         eax,dword ptr [eax]
 0055E244    movzx       edx,byte ptr [eax+41];TApplication.FBiDiMode:TBiDiMode
 0055E248    mov         eax,edi
 0055E24A    mov         ecx,dword ptr [eax]
 0055E24C    call        dword ptr [ecx+94];TGroupBox.SetBiDiMode
 0055E252    mov         dl,3
 0055E254    mov         eax,edi
 0055E256    call        TForm.SetBorderStyle
 0055E25B    mov         eax,edi
 0055E25D    call        005C2ECC
 0055E262    mov         edx,dword ptr [edi+74];TMessageForm.FFont:TFont
 0055E265    call        TCanvas.SetFont
 0055E26A    mov         byte ptr [edi+2C0],1;TMessageForm.FKeyPreview:Boolean
 0055E271    mov         dl,1
 0055E273    mov         eax,edi
 0055E275    call        TForm.SetPopupMode
 0055E27A    xor         edx,edx
 0055E27C    mov         eax,edi
 0055E27E    call        TForm.SetPosition
 0055E283    mov         dword ptr [edi+23C],edi;TMessageForm.?f23C:TMessageForm
 0055E289    mov         dword ptr [edi+238],55DCBC;TMessageForm.FOnKeyDown:TKeyEvent TMessageForm.CustomKeyDown
 0055E293    mov         eax,edi
 0055E295    call        005C2ECC
 0055E29A    lea         edx,[ebp-10]
 0055E29D    call        GetAveCharSize
 0055E2A2    push        4
 0055E2A4    mov         ebx,dword ptr [ebp-10]
 0055E2A7    push        ebx
 0055E2A8    push        8
 0055E2AA    call        kernel32.MulDiv
 0055E2AF    mov         dword ptr [ebp-14],eax
 0055E2B2    push        8
 0055E2B4    mov         eax,dword ptr [ebp-0C]
 0055E2B7    push        eax
 0055E2B8    push        8
 0055E2BA    call        kernel32.MulDiv
 0055E2BF    mov         dword ptr [ebp-18],eax
 0055E2C2    push        4
 0055E2C4    push        ebx
 0055E2C5    push        0A
 0055E2C7    call        kernel32.MulDiv
 0055E2CC    mov         dword ptr [ebp-1C],eax
 0055E2CF    push        8
 0055E2D1    mov         eax,dword ptr [ebp-0C]
 0055E2D4    push        eax
 0055E2D5    push        0A
 0055E2D7    call        kernel32.MulDiv
 0055E2DC    mov         dword ptr [ebp-20],eax
 0055E2DF    push        4
 0055E2E1    push        ebx
 0055E2E2    push        32
 0055E2E4    call        kernel32.MulDiv
 0055E2E9    mov         dword ptr [ebp-24],eax
 0055E2EC    xor         ebx,ebx
 0055E2EE    mov         dword ptr [ebp-5C],7CA6F0
 0055E2F5    mov         dword ptr [ebp-60],7A1908;^SResString279:TResStringRec
 0055E2FC    mov         eax,ebx
 0055E2FE    cmp         al,0F
>0055E300    ja          0055E30A
 0055E302    and         eax,7F
 0055E305    bt          word ptr [ebp-7],ax
>0055E30A    jae         0055E37B
 0055E30C    mov         eax,dword ptr [ebp-5C]
 0055E30F    cmp         dword ptr [eax],0
>0055E312    jne         0055E36E
 0055E314    push        0
 0055E316    lea         eax,[ebp-74]
 0055E319    push        eax
 0055E31A    xor         ecx,ecx
 0055E31C    xor         edx,edx
 0055E31E    xor         eax,eax
 0055E320    call        Rect
 0055E325    mov         eax,edi
 0055E327    call        TControl.DrawTextBiDiModeFlagsReadingOnly
 0055E32C    or          eax,420
 0055E331    push        eax
 0055E332    lea         eax,[ebp-74]
 0055E335    push        eax
 0055E336    push        0FF
 0055E338    lea         edx,[ebp-78]
 0055E33B    mov         eax,dword ptr [ebp-60]
 0055E33E    mov         eax,dword ptr [eax]
 0055E340    call        LoadResString
 0055E345    mov         eax,dword ptr [ebp-78]
 0055E348    call        @UStrToPWChar
 0055E34D    push        eax
 0055E34E    mov         eax,edi
 0055E350    call        005C2ECC
 0055E355    call        TCanvas.GetHandle
 0055E35A    push        eax
 0055E35B    call        user32.DrawTextW
 0055E360    mov         eax,dword ptr [ebp-6C]
 0055E363    sub         eax,dword ptr [ebp-74]
 0055E366    add         eax,8
 0055E369    mov         edx,dword ptr [ebp-5C]
 0055E36C    mov         dword ptr [edx],eax
 0055E36E    mov         eax,dword ptr [ebp-5C]
 0055E371    mov         eax,dword ptr [eax]
 0055E373    cmp         eax,dword ptr [ebp-24]
>0055E376    jle         0055E37B
 0055E378    mov         dword ptr [ebp-24],eax
 0055E37B    inc         ebx
 0055E37C    add         dword ptr [ebp-60],4
 0055E380    add         dword ptr [ebp-5C],4
 0055E384    cmp         bl,0C
>0055E387    jne         0055E2FC
 0055E38D    push        8
 0055E38F    mov         eax,dword ptr [ebp-0C]
 0055E392    push        eax
 0055E393    push        0E
 0055E395    call        kernel32.MulDiv
 0055E39A    mov         dword ptr [ebp-28],eax
 0055E39D    push        4
 0055E39F    mov         eax,dword ptr [ebp-10]
 0055E3A2    push        eax
 0055E3A3    push        4
 0055E3A5    call        kernel32.MulDiv
 0055E3AA    mov         dword ptr [ebp-2C],eax
 0055E3AD    push        0
 0055E3AF    mov         eax,[007C4E78];^Screen:TScreen
 0055E3B4    mov         eax,dword ptr [eax]
 0055E3B6    call        005C80C8
 0055E3BB    sar         eax,1
>0055E3BD    jns         0055E3C2
 0055E3BF    adc         eax,0
 0055E3C2    push        eax
 0055E3C3    push        0
 0055E3C5    push        0
 0055E3C7    lea         eax,[ebp-74]
 0055E3CA    push        eax
 0055E3CB    call        user32.SetRect
 0055E3D0    mov         eax,edi
 0055E3D2    call        005C2ECC
 0055E3D7    call        TCanvas.GetHandle
 0055E3DC    mov         esi,eax
 0055E3DE    mov         ebx,dword ptr [ebp-4]
 0055E3E1    test        ebx,ebx
>0055E3E3    je          0055E3EA
 0055E3E5    sub         ebx,4
 0055E3E8    mov         ebx,dword ptr [ebx]
 0055E3EA    mov         eax,edi
 0055E3EC    call        TControl.DrawTextBiDiModeFlagsReadingOnly
 0055E3F1    or          eax,450
 0055E3F6    mov         dword ptr [ebp-54],eax
 0055E3F9    mov         eax,dword ptr [ebp-54]
 0055E3FC    push        eax
 0055E3FD    lea         eax,[ebp-74]
 0055E400    push        eax
 0055E401    inc         ebx
 0055E402    push        ebx
 0055E403    mov         eax,dword ptr [ebp-4]
 0055E406    call        @UStrToPWChar
 0055E40B    push        eax
 0055E40C    push        esi
 0055E40D    call        user32.DrawTextW
 0055E412    mov         dword ptr [ebp-58],eax
 0055E415    movzx       eax,byte ptr [ebp-5]
 0055E419    mov         esi,dword ptr [eax*4+7A18F4]
 0055E420    mov         eax,dword ptr [ebp-6C]
 0055E423    mov         dword ptr [ebp-34],eax
 0055E426    mov         eax,dword ptr [ebp-68]
 0055E429    mov         dword ptr [ebp-38],eax
 0055E42C    test        esi,esi
>0055E42E    je          0055E446
 0055E430    mov         eax,dword ptr [ebp-1C]
 0055E433    add         eax,20
 0055E436    add         dword ptr [ebp-34],eax
 0055E439    cmp         dword ptr [ebp-38],20
>0055E43D    jge         0055E446
 0055E43F    mov         dword ptr [ebp-38],20
 0055E446    xor         eax,eax
 0055E448    xor         ebx,ebx
 0055E44A    mov         edx,ebx
 0055E44C    cmp         dl,0F
>0055E44F    ja          0055E459
 0055E451    and         edx,7F
 0055E454    bt          word ptr [ebp-7],dx
>0055E459    jae         0055E45C
 0055E45B    inc         eax
 0055E45C    inc         ebx
 0055E45D    cmp         bl,0C
>0055E460    jne         0055E44A
 0055E462    xor         edx,edx
 0055E464    mov         dword ptr [ebp-30],edx
 0055E467    test        eax,eax
>0055E469    je          0055E47B
 0055E46B    mov         edx,dword ptr [ebp-24]
 0055E46E    imul        edx,eax
 0055E471    dec         eax
 0055E472    imul        eax,dword ptr [ebp-2C]
 0055E476    add         edx,eax
 0055E478    mov         dword ptr [ebp-30],edx
 0055E47B    mov         eax,dword ptr [ebp-34]
 0055E47E    cmp         eax,dword ptr [ebp-30]
>0055E481    jle         0055E488
 0055E483    mov         eax,dword ptr [ebp-34]
>0055E486    jmp         0055E48B
 0055E488    mov         eax,dword ptr [ebp-30]
 0055E48B    mov         edx,dword ptr [ebp-14]
 0055E48E    add         edx,edx
 0055E490    add         edx,eax
 0055E492    mov         eax,edi
 0055E494    call        TForm.SetClientWidth
 0055E499    mov         edx,dword ptr [ebp-38]
 0055E49C    add         edx,dword ptr [ebp-28]
 0055E49F    add         edx,dword ptr [ebp-20]
 0055E4A2    mov         eax,dword ptr [ebp-18]
 0055E4A5    add         eax,eax
 0055E4A7    add         edx,eax
 0055E4A9    mov         eax,edi
 0055E4AB    call        TForm.SetClientHeight
 0055E4B0    mov         eax,[007C4E78];^Screen:TScreen
 0055E4B5    mov         eax,dword ptr [eax]
 0055E4B7    call        005C80C8
 0055E4BC    mov         edx,eax
 0055E4BE    sar         edx,1
>0055E4C0    jns         0055E4C5
 0055E4C2    adc         edx,0
 0055E4C5    mov         eax,dword ptr [edi+58];TMessageForm.FWidth:Integer
 0055E4C8    sar         eax,1
>0055E4CA    jns         0055E4CF
 0055E4CC    adc         eax,0
 0055E4CF    sub         edx,eax
 0055E4D1    mov         eax,edi
 0055E4D3    call        TCustomForm.SetLeft
 0055E4D8    mov         eax,[007C4E78];^Screen:TScreen
 0055E4DD    mov         eax,dword ptr [eax]
 0055E4DF    call        005C80C0
 0055E4E4    mov         edx,eax
 0055E4E6    sar         edx,1
>0055E4E8    jns         0055E4ED
 0055E4EA    adc         edx,0
 0055E4ED    mov         eax,dword ptr [edi+5C];TMessageForm.FHeight:Integer
 0055E4F0    sar         eax,1
>0055E4F2    jns         0055E4F7
 0055E4F4    adc         eax,0
 0055E4F7    sub         edx,eax
 0055E4F9    mov         eax,edi
 0055E4FB    call        TCustomForm.SetTop
 0055E500    cmp         byte ptr [ebp-5],4
>0055E504    je          0055E525
 0055E506    lea         edx,[ebp-7C]
 0055E509    movzx       eax,byte ptr [ebp-5]
 0055E50D    mov         eax,dword ptr [eax*4+7A18E0];^SResString275:TResStringRec
 0055E514    call        LoadResString
 0055E519    mov         edx,dword ptr [ebp-7C]
 0055E51C    mov         eax,edi
 0055E51E    call        TControl.SetText
>0055E523    jmp         0055E53E
 0055E525    lea         edx,[ebp-80]
 0055E528    mov         eax,[007C4A18];^Application:TApplication
 0055E52D    mov         eax,dword ptr [eax]
 0055E52F    call        005CAD90
 0055E534    mov         edx,dword ptr [ebp-80]
 0055E537    mov         eax,edi
 0055E539    call        TControl.SetText
 0055E53E    test        esi,esi
>0055E540    je          0055E59F
 0055E542    mov         ecx,edi
 0055E544    mov         dl,1
 0055E546    mov         eax,[0056077C];TImage
 0055E54B    call        TImage.Create;TImage.Create
 0055E550    mov         dword ptr [ebp-4C],eax
 0055E553    mov         edx,55E7BC;'Image'
 0055E558    mov         eax,dword ptr [ebp-4C]
 0055E55B    mov         ecx,dword ptr [eax]
 0055E55D    call        dword ptr [ecx+28];TImage.sub_004E6CB8
 0055E560    mov         edx,edi
 0055E562    mov         eax,dword ptr [ebp-4C]
 0055E565    mov         ecx,dword ptr [eax]
 0055E567    call        dword ptr [ecx+8C];TImage.sub_004E6DA4
 0055E56D    push        esi
 0055E56E    push        0
 0055E570    call        user32.LoadIconW
 0055E575    push        eax
 0055E576    mov         eax,dword ptr [ebp-4C]
 0055E579    mov         eax,dword ptr [eax+1C0];TImage.FPicture:TPicture
 0055E57F    call        TPicture.GetIcon
 0055E584    pop         edx
 0055E585    call        TIcon.SetHandle
 0055E58A    push        20
 0055E58C    push        20
 0055E58E    mov         ecx,dword ptr [ebp-18]
 0055E591    mov         edx,dword ptr [ebp-14]
 0055E594    mov         eax,dword ptr [ebp-4C]
 0055E597    mov         ebx,dword ptr [eax]
 0055E599    call        dword ptr [ebx+0B0];TControl.SetBounds
 0055E59F    mov         ecx,edi
 0055E5A1    mov         dl,1
 0055E5A3    mov         eax,[004F936C];TLabel
 0055E5A8    call        TCustomLabel.Create;TLabel.Create
 0055E5AD    mov         dword ptr [edi+3C0],eax;TMessageForm.Message:TLabel
 0055E5B3    mov         eax,dword ptr [edi+3C0];TMessageForm.Message:TLabel
 0055E5B9    mov         dword ptr [ebp-50],eax
 0055E5BC    mov         edx,55E7D4;'Message'
 0055E5C1    mov         eax,dword ptr [ebp-50]
 0055E5C4    mov         ecx,dword ptr [eax]
 0055E5C6    call        dword ptr [ecx+28];TLabel.sub_004E6CB8
 0055E5C9    mov         edx,edi
 0055E5CB    mov         eax,dword ptr [ebp-50]
 0055E5CE    mov         ecx,dword ptr [eax]
 0055E5D0    call        dword ptr [ecx+8C];TLabel.sub_004E6DA4
 0055E5D6    mov         dl,1
 0055E5D8    mov         eax,dword ptr [ebp-50]
 0055E5DB    call        TLabel.SetWordWrap
 0055E5E0    mov         edx,dword ptr [ebp-4]
 0055E5E3    mov         eax,dword ptr [ebp-50]
 0055E5E6    call        TControl.SetText
 0055E5EB    lea         edx,[ebp-74]
 0055E5EE    mov         eax,dword ptr [ebp-50]
 0055E5F1    call        004E6768
 0055E5F6    movzx       edx,byte ptr [edi+71];TMessageForm.FBiDiMode:TBiDiMode
 0055E5FA    mov         eax,dword ptr [ebp-50]
 0055E5FD    mov         ecx,dword ptr [eax]
 0055E5FF    call        dword ptr [ecx+94];TGroupBox.SetBiDiMode
 0055E605    mov         eax,dword ptr [ebp-34]
 0055E608    sub         eax,dword ptr [ebp-6C]
 0055E60B    add         eax,dword ptr [ebp-14]
 0055E60E    mov         dword ptr [ebp-40],eax
 0055E611    mov         eax,dword ptr [ebp-50]
 0055E614    mov         si,0FFC6
 0055E618    call        @CallDynaInst;TControl.sub_004E7698
 0055E61D    test        al,al
>0055E61F    je          0055E634
 0055E621    mov         eax,edi
 0055E623    call        TControl.GetClientWidth
 0055E628    sub         eax,dword ptr [ebp-40]
 0055E62B    mov         edx,dword ptr [ebp-50]
 0055E62E    sub         eax,dword ptr [edx+58]
 0055E631    mov         dword ptr [ebp-40],eax
 0055E634    mov         eax,dword ptr [ebp-6C]
 0055E637    push        eax
 0055E638    mov         eax,dword ptr [ebp-68]
 0055E63B    push        eax
 0055E63C    mov         ecx,dword ptr [ebp-18]
 0055E63F    mov         edx,dword ptr [ebp-40]
 0055E642    mov         eax,dword ptr [ebp-50]
 0055E645    mov         ebx,dword ptr [eax]
 0055E647    call        dword ptr [ebx+0B0];TControl.SetBounds
 0055E64D    test        byte ptr [ebp-7],8
>0055E651    je          0055E659
 0055E653    mov         byte ptr [ebp-41],3
>0055E657    jmp         0055E669
 0055E659    test        byte ptr [ebp-7],2
>0055E65D    je          0055E665
 0055E65F    mov         byte ptr [ebp-41],1
>0055E663    jmp         0055E669
 0055E665    mov         byte ptr [ebp-41],2
 0055E669    mov         eax,edi
 0055E66B    call        TControl.GetClientWidth
 0055E670    sub         eax,dword ptr [ebp-30]
 0055E673    sar         eax,1
>0055E675    jns         0055E67A
 0055E677    adc         eax,0
 0055E67A    mov         dword ptr [ebp-3C],eax
 0055E67D    xor         ebx,ebx
 0055E67F    mov         dword ptr [ebp-60],7A1938;^'Yes'
 0055E686    mov         dword ptr [ebp-5C],7A1908;^SResString279:TResStringRec
 0055E68D    mov         dword ptr [ebp-64],7A1968
 0055E694    mov         eax,ebx
 0055E696    cmp         al,0F
>0055E698    ja          0055E6A2
 0055E69A    and         eax,7F
 0055E69D    bt          word ptr [ebp-7],ax
>0055E6A2    jae         0055E767
 0055E6A8    mov         ecx,edi
 0055E6AA    mov         dl,1
 0055E6AC    mov         eax,[004FF09C];TButton
 0055E6B1    call        TCustomButton.Create;TButton.Create
 0055E6B6    mov         dword ptr [ebp-48],eax
 0055E6B9    mov         eax,dword ptr [ebp-60]
 0055E6BC    mov         edx,dword ptr [eax]
 0055E6BE    mov         eax,dword ptr [ebp-48]
 0055E6C1    mov         ecx,dword ptr [eax]
 0055E6C3    call        dword ptr [ecx+28];TButton.sub_004E6CB8
 0055E6C6    mov         edx,edi
 0055E6C8    mov         eax,dword ptr [ebp-48]
 0055E6CB    mov         ecx,dword ptr [eax]
 0055E6CD    call        dword ptr [ecx+8C];TButton.sub_004F22F8
 0055E6D3    lea         edx,[ebp-84]
 0055E6D9    mov         eax,dword ptr [ebp-5C]
 0055E6DC    mov         eax,dword ptr [eax]
 0055E6DE    call        LoadResString
 0055E6E3    mov         edx,dword ptr [ebp-84]
 0055E6E9    mov         eax,dword ptr [ebp-48]
 0055E6EC    call        TControl.SetText
 0055E6F1    mov         eax,dword ptr [ebp-64]
 0055E6F4    mov         eax,dword ptr [eax]
 0055E6F6    mov         edx,dword ptr [ebp-48]
 0055E6F9    mov         dword ptr [edx+2CC],eax;TButton.FModalResult:TModalResult
 0055E6FF    cmp         bl,byte ptr [ebp+8]
>0055E702    jne         0055E718
 0055E704    mov         dl,1
 0055E706    mov         eax,dword ptr [ebp-48]
 0055E709    call        TButton.SetDefault
 0055E70E    mov         edx,dword ptr [ebp-48]
 0055E711    mov         eax,edi
 0055E713    call        TCustomForm.SetActiveControl
 0055E718    cmp         bl,byte ptr [ebp-41]
>0055E71B    jne         0055E727
 0055E71D    mov         eax,dword ptr [ebp-48]
 0055E720    mov         byte ptr [eax+299],1;TButton.FCancel:Boolean
 0055E727    mov         eax,dword ptr [ebp-24]
 0055E72A    push        eax
 0055E72B    mov         eax,dword ptr [ebp-28]
 0055E72E    push        eax
 0055E72F    mov         ecx,dword ptr [ebp-38]
 0055E732    add         ecx,dword ptr [ebp-18]
 0055E735    add         ecx,dword ptr [ebp-20]
 0055E738    mov         edx,dword ptr [ebp-3C]
 0055E73B    mov         eax,dword ptr [ebp-48]
 0055E73E    mov         esi,dword ptr [eax]
 0055E740    call        dword ptr [esi+0B0];TWinControl.SetBounds
 0055E746    mov         eax,dword ptr [ebp-24]
 0055E749    add         eax,dword ptr [ebp-2C]
 0055E74C    add         dword ptr [ebp-3C],eax
 0055E74F    cmp         bl,0A
>0055E752    jne         0055E767
 0055E754    mov         eax,dword ptr [ebp-48]
 0055E757    mov         dword ptr [eax+124],edi;TButton.?f124:TMessageForm
 0055E75D    mov         dword ptr [eax+120],55DCA4;TButton.FOnClick:TNotifyEvent
 0055E767    inc         ebx
 0055E768    add         dword ptr [ebp-64],4
 0055E76C    add         dword ptr [ebp-5C],4
 0055E770    add         dword ptr [ebp-60],4
 0055E774    cmp         bl,0C
>0055E777    jne         0055E694
 0055E77D    xor         eax,eax
 0055E77F    pop         edx
 0055E780    pop         ecx
 0055E781    pop         ecx
 0055E782    mov         dword ptr fs:[eax],edx
 0055E785    push        55E7A2
 0055E78A    lea         eax,[ebp-84]
 0055E790    mov         edx,4
 0055E795    call        @UStrArrayClr
 0055E79A    ret
>0055E79B    jmp         @HandleFinally
>0055E7A0    jmp         0055E78A
 0055E7A2    mov         eax,edi
 0055E7A4    pop         edi
 0055E7A5    pop         esi
 0055E7A6    pop         ebx
 0055E7A7    mov         esp,ebp
 0055E7A9    pop         ebp
 0055E7AA    ret         4
end;*}

//0055E7E4
function CreateMessageDialog(const Msg:UnicodeString; DlgType:UITypes.TMsgDlgType; Buttons:UITypes.TMsgDlgButtons):TForm;
begin
{*
 0055E7E4    push        ecx
 0055E7E5    mov         word ptr [esp],cx
 0055E7E9    test        byte ptr [esp],4
>0055E7ED    je          0055E7F3
 0055E7EF    mov         cl,2
>0055E7F1    jmp         0055E7FF
 0055E7F3    test        byte ptr [esp],1
>0055E7F7    je          0055E7FD
 0055E7F9    xor         ecx,ecx
>0055E7FB    jmp         0055E7FF
 0055E7FD    mov         cl,5
 0055E7FF    push        ecx
 0055E800    movzx       ecx,word ptr [esp+4]
 0055E805    call        0055E1DC
 0055E80A    pop         edx
 0055E80B    ret
*}
end;

//0055E80C
function MessageDlg(const Msg:UnicodeString; DlgType:UITypes.TMsgDlgType; Buttons:UITypes.TMsgDlgButtons; HelpCtx:LongInt):Integer;
begin
{*
 0055E80C    push        ebp
 0055E80D    mov         ebp,esp
 0055E80F    push        ecx
 0055E810    mov         word ptr [ebp-2],cx
 0055E814    mov         ecx,dword ptr [ebp+8]
 0055E817    push        ecx
 0055E818    push        0FF
 0055E81A    push        0FF
 0055E81C    push        0
 0055E81E    movzx       ecx,word ptr [ebp-2]
 0055E822    call        MessageDlgPosHelp
 0055E827    pop         ecx
 0055E828    pop         ebp
 0055E829    ret         4
*}
end;

//0055E82C
function MessageDlg(const Msg:UnicodeString; DlgType:UITypes.TMsgDlgType; Buttons:UITypes.TMsgDlgButtons; HelpCtx:LongInt; DefaultButton:UITypes.TMsgDlgBtn):Integer;
begin
{*
 0055E82C    push        ebp
 0055E82D    mov         ebp,esp
 0055E82F    push        ecx
 0055E830    mov         word ptr [ebp-2],cx
 0055E834    mov         ecx,dword ptr [ebp+0C]
 0055E837    push        ecx
 0055E838    push        0FF
 0055E83A    push        0FF
 0055E83C    push        0
 0055E83E    movzx       ecx,byte ptr [ebp+8]
 0055E842    push        ecx
 0055E843    movzx       ecx,word ptr [ebp-2]
 0055E847    call        0055E9CC
 0055E84C    pop         ecx
 0055E84D    pop         ebp
 0055E84E    ret         8
*}
end;

//0055E854
{*function sub_0055E854(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0055E854    push        ebp
 0055E855    mov         ebp,esp
 0055E857    add         esp,0FFFFFFF8
 0055E85A    push        ebx
 0055E85B    push        esi
 0055E85C    mov         ebx,ecx
 0055E85E    mov         dword ptr [ebp-4],eax
 0055E861    mov         esi,dword ptr [ebp+0C]
 0055E864    xor         eax,eax
 0055E866    push        ebp
 0055E867    push        55E8DC
 0055E86C    push        dword ptr fs:[eax]
 0055E86F    mov         dword ptr fs:[eax],esp
 0055E872    mov         eax,dword ptr [ebp-4]
 0055E875    call        TControl.SetHelpKeyword
 0055E87A    mov         eax,dword ptr [ebp-4]
 0055E87D    add         eax,2CC
 0055E882    mov         edx,dword ptr [ebp+8]
 0055E885    call        @UStrAsg
 0055E88A    test        ebx,ebx
>0055E88C    jl          0055E898
 0055E88E    mov         edx,ebx
 0055E890    mov         eax,dword ptr [ebp-4]
 0055E893    call        TCustomForm.SetLeft
 0055E898    test        esi,esi
>0055E89A    jl          0055E8A6
 0055E89C    mov         edx,esi
 0055E89E    mov         eax,dword ptr [ebp-4]
 0055E8A1    call        TCustomForm.SetTop
 0055E8A6    test        esi,esi
>0055E8A8    jge         0055E8B8
 0055E8AA    test        ebx,ebx
>0055E8AC    jge         0055E8B8
 0055E8AE    mov         dl,4
 0055E8B0    mov         eax,dword ptr [ebp-4]
 0055E8B3    call        TForm.SetPosition
 0055E8B8    mov         eax,dword ptr [ebp-4]
 0055E8BB    mov         edx,dword ptr [eax]
 0055E8BD    call        dword ptr [edx+13C]
 0055E8C3    mov         dword ptr [ebp-8],eax
 0055E8C6    xor         eax,eax
 0055E8C8    pop         edx
 0055E8C9    pop         ecx
 0055E8CA    pop         ecx
 0055E8CB    mov         dword ptr fs:[eax],edx
 0055E8CE    push        55E8E3
 0055E8D3    mov         eax,dword ptr [ebp-4]
 0055E8D6    call        TObject.Free
 0055E8DB    ret
>0055E8DC    jmp         @HandleFinally
>0055E8E1    jmp         0055E8D3
 0055E8E3    mov         eax,dword ptr [ebp-8]
 0055E8E6    pop         esi
 0055E8E7    pop         ebx
 0055E8E8    pop         ecx
 0055E8E9    pop         ecx
 0055E8EA    pop         ebp
 0055E8EB    ret         8
end;*}

//0055E8F0
function MessageDlgPosHelp(const Msg:UnicodeString; DlgType:UITypes.TMsgDlgType; Buttons:UITypes.TMsgDlgButtons; HelpCtx:LongInt; X:Integer; Y:Integer; const HelpFileName:UnicodeString):Integer;
begin
{*
 0055E8F0    push        ebp
 0055E8F1    mov         ebp,esp
 0055E8F3    push        ecx
 0055E8F4    push        ebx
 0055E8F5    push        esi
 0055E8F6    mov         word ptr [ebp-2],cx
 0055E8FA    mov         ebx,edx
 0055E8FC    mov         esi,eax
 0055E8FE    mov         eax,[007C4364];^gvar_007C7DC0
 0055E903    cmp         dword ptr [eax],6
 0055E906    setge       al
 0055E909    test        al,al
>0055E90B    je          0055E916
 0055E90D    movzx       eax,byte ptr ds:[7A16D1];gvar_007A16D1
>0055E914    jmp         0055E918
 0055E916    xor         eax,eax
 0055E918    test        al,al
>0055E91A    je          0055E943
 0055E91C    cmp         dword ptr ds:[7A16D4],0FFFFFFFF;gvar_007A16D4:Cardinal
>0055E923    jne         0055E934
 0055E925    mov         eax,55E9B0;'comctl32.dll'
 0055E92A    call        GetFileVersion
 0055E92F    mov         [007A16D4],eax;gvar_007A16D4:Cardinal
 0055E934    cmp         dword ptr ds:[7A16D4],60000;gvar_007A16D4:Cardinal
 0055E93E    setae       al
>0055E941    jmp         0055E945
 0055E943    xor         eax,eax
 0055E945    test        al,al
>0055E947    je          0055E955
 0055E949    call        StyleServices
 0055E94E    call        TCustomStyleServices.GetIsSystemStyle
>0055E953    jmp         0055E957
 0055E955    xor         eax,eax
 0055E957    test        al,al
>0055E959    je          0055E97D
 0055E95B    movzx       eax,word ptr [ebp-2]
 0055E95F    push        eax
 0055E960    mov         eax,dword ptr [ebp+14]
 0055E963    push        eax
 0055E964    mov         eax,dword ptr [ebp+10]
 0055E967    push        eax
 0055E968    mov         eax,dword ptr [ebp+0C]
 0055E96B    push        eax
 0055E96C    mov         eax,dword ptr [ebp+8]
 0055E96F    push        eax
 0055E970    mov         ecx,ebx
 0055E972    mov         edx,esi
 0055E974    xor         eax,eax
 0055E976    call        DoTaskMessageDlgPosHelp
>0055E97B    jmp         0055E99D
 0055E97D    mov         eax,dword ptr [ebp+0C]
 0055E980    push        eax
 0055E981    mov         eax,dword ptr [ebp+8]
 0055E984    push        eax
 0055E985    mov         edx,ebx
 0055E987    movzx       ecx,word ptr [ebp-2]
 0055E98B    mov         eax,esi
 0055E98D    call        CreateMessageDialog
 0055E992    mov         ecx,dword ptr [ebp+10]
 0055E995    mov         edx,dword ptr [ebp+14]
 0055E998    call        0055E854
 0055E99D    pop         esi
 0055E99E    pop         ebx
 0055E99F    pop         ecx
 0055E9A0    pop         ebp
 0055E9A1    ret         10
*}
end;

//0055E9CC
{*procedure sub_0055E9CC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0055E9CC    push        ebp
 0055E9CD    mov         ebp,esp
 0055E9CF    push        ecx
 0055E9D0    push        ebx
 0055E9D1    push        esi
 0055E9D2    mov         word ptr [ebp-2],cx
 0055E9D6    mov         ebx,edx
 0055E9D8    mov         esi,eax
 0055E9DA    mov         eax,[007C4364];^gvar_007C7DC0
 0055E9DF    cmp         dword ptr [eax],6
 0055E9E2    setge       al
 0055E9E5    test        al,al
>0055E9E7    je          0055E9F2
 0055E9E9    movzx       eax,byte ptr ds:[7A16D1];0xFF000001 gvar_007A16D1
>0055E9F0    jmp         0055E9F4
 0055E9F2    xor         eax,eax
 0055E9F4    test        al,al
>0055E9F6    je          0055EA1F
 0055E9F8    cmp         dword ptr ds:[7A16D4],0FFFFFFFF;gvar_007A16D4:Cardinal
>0055E9FF    jne         0055EA10
 0055EA01    mov         eax,55EA98;'comctl32.dll'
 0055EA06    call        GetFileVersion
 0055EA0B    mov         [007A16D4],eax;gvar_007A16D4:Cardinal
 0055EA10    cmp         dword ptr ds:[7A16D4],60000;gvar_007A16D4:Cardinal
 0055EA1A    setae       al
>0055EA1D    jmp         0055EA21
 0055EA1F    xor         eax,eax
 0055EA21    test        al,al
>0055EA23    je          0055EA31
 0055EA25    call        StyleServices
 0055EA2A    call        TCustomStyleServices.GetIsSystemStyle
>0055EA2F    jmp         0055EA33
 0055EA31    xor         eax,eax
 0055EA33    test        al,al
>0055EA35    je          0055EA5E
 0055EA37    movzx       eax,word ptr [ebp-2]
 0055EA3B    push        eax
 0055EA3C    mov         eax,dword ptr [ebp+18]
 0055EA3F    push        eax
 0055EA40    mov         eax,dword ptr [ebp+14]
 0055EA43    push        eax
 0055EA44    mov         eax,dword ptr [ebp+10]
 0055EA47    push        eax
 0055EA48    mov         eax,dword ptr [ebp+0C]
 0055EA4B    push        eax
 0055EA4C    movzx       eax,byte ptr [ebp+8]
 0055EA50    push        eax
 0055EA51    mov         ecx,ebx
 0055EA53    mov         edx,esi
 0055EA55    xor         eax,eax
 0055EA57    call        0055EE90
>0055EA5C    jmp         0055EA83
 0055EA5E    mov         eax,dword ptr [ebp+10]
 0055EA61    push        eax
 0055EA62    mov         eax,dword ptr [ebp+0C]
 0055EA65    push        eax
 0055EA66    movzx       eax,byte ptr [ebp+8]
 0055EA6A    push        eax
 0055EA6B    mov         edx,ebx
 0055EA6D    movzx       ecx,word ptr [ebp-2]
 0055EA71    mov         eax,esi
 0055EA73    call        0055E1DC
 0055EA78    mov         ecx,dword ptr [ebp+14]
 0055EA7B    mov         edx,dword ptr [ebp+18]
 0055EA7E    call        0055E854
 0055EA83    pop         esi
 0055EA84    pop         ebx
 0055EA85    pop         ecx
 0055EA86    pop         ebp
 0055EA87    ret         14
end;*}

//0055EAB4
procedure ShowMessage(const Msg:UnicodeString);
begin
{*
 0055EAB4    or          ecx,0FFFFFFFF
 0055EAB7    or          edx,0FFFFFFFF
 0055EABA    call        ShowMessagePos
 0055EABF    ret
*}
end;

//0055EAC0
procedure ShowMessagePos(const Msg:UnicodeString; X:Integer; Y:Integer);
begin
{*
 0055EAC0    push        0
 0055EAC2    push        edx
 0055EAC3    push        ecx
 0055EAC4    push        0
 0055EAC6    mov         dl,4
 0055EAC8    movzx       ecx,word ptr ds:[55EAD8]
 0055EACF    call        MessageDlgPosHelp
 0055EAD4    ret
*}
end;

//0055ECD4
{*procedure TTaskMessageDialog.sub_0055D478(?:?; ?:?);
begin
 0055ECD4    push        esi
 0055ECD5    inc         edx
>0055ECD6    jne         0055ECE4
 0055ECD8    mov         byte ptr [ecx],0
 0055ECDB    mov         si,0FFE9
 0055ECDF    call        @CallDynaInst;TTaskMessageDialog.sub_0055D530
 0055ECE4    pop         esi
 0055ECE5    ret
end;*}

//0055ECE8
procedure TTaskMessageDialog.DoOnDialogDestroyed;
begin
{*
 0055ECE8    push        ebx
 0055ECE9    push        esi
 0055ECEA    push        edi
 0055ECEB    push        ebp
 0055ECEC    add         esp,0FFFFFFC8
 0055ECEF    mov         ebx,eax
 0055ECF1    mov         esi,dword ptr [ebx+0F8];TTaskMessageDialog.FPosition:TPoint
 0055ECF7    mov         edi,dword ptr [ebx+0FC]
 0055ECFD    push        2
 0055ECFF    mov         eax,dword ptr [ebx+0F4];TTaskMessageDialog.FParentWnd:HWND
 0055ED05    push        eax
 0055ED06    call        user32.MonitorFromWindow
 0055ED0B    mov         ebp,eax
 0055ED0D    mov         dword ptr [esp+10],28
 0055ED15    lea         eax,[esp+10]
 0055ED19    push        eax
 0055ED1A    push        ebp
 0055ED1B    call        user32.GetMonitorInfoW
 0055ED20    test        al,al
>0055ED22    je          0055ED82
 0055ED24    push        esp
 0055ED25    mov         eax,dword ptr [ebx+74];TTaskMessageDialog.FHandle:HWND
 0055ED28    push        eax
 0055ED29    call        user32.GetWindowRect
 0055ED2E    test        esi,esi
>0055ED30    jge         0055ED4A
 0055ED32    mov         esi,dword ptr [esp+2C]
 0055ED36    sub         esi,dword ptr [esp+24]
 0055ED3A    mov         eax,dword ptr [esp+8]
 0055ED3E    sub         eax,dword ptr [esp]
 0055ED41    sub         esi,eax
 0055ED43    sar         esi,1
>0055ED45    jns         0055ED4A
 0055ED47    adc         esi,0
 0055ED4A    test        edi,edi
>0055ED4C    jge         0055ED67
 0055ED4E    mov         edi,dword ptr [esp+30]
 0055ED52    sub         edi,dword ptr [esp+28]
 0055ED56    mov         eax,dword ptr [esp+0C]
 0055ED5A    sub         eax,dword ptr [esp+4]
 0055ED5E    sub         edi,eax
 0055ED60    sar         edi,1
>0055ED62    jns         0055ED67
 0055ED64    adc         edi,0
 0055ED67    add         esi,dword ptr [esp+24]
 0055ED6B    add         edi,dword ptr [esp+28]
 0055ED6F    push        15
 0055ED71    push        0
 0055ED73    push        0
 0055ED75    push        edi
 0055ED76    push        esi
 0055ED77    push        0
 0055ED79    mov         eax,dword ptr [ebx+74];TTaskMessageDialog.FHandle:HWND
 0055ED7C    push        eax
 0055ED7D    call        user32.SetWindowPos
 0055ED82    add         esp,38
 0055ED85    pop         ebp
 0055ED86    pop         edi
 0055ED87    pop         esi
 0055ED88    pop         ebx
 0055ED89    ret
*}
end;

//0055ED8C
procedure TTaskMessageDialog.sub_0055D530;
begin
{*
 0055ED8C    push        ebp
 0055ED8D    mov         ebp,esp
 0055ED8F    push        0
 0055ED91    push        0
 0055ED93    push        0
 0055ED95    push        ebx
 0055ED96    push        esi
 0055ED97    push        edi
 0055ED98    mov         dword ptr [ebp-0C],eax
 0055ED9B    xor         eax,eax
 0055ED9D    push        ebp
 0055ED9E    push        55EE74
 0055EDA3    push        dword ptr fs:[eax]
 0055EDA6    mov         dword ptr fs:[eax],esp
 0055EDA9    mov         eax,dword ptr [ebp-0C]
 0055EDAC    cmp         dword ptr [eax+78],0;TTaskMessageDialog.FHelpContext:Integer
>0055EDB0    je          0055EE56
 0055EDB6    mov         eax,dword ptr [ebp-0C]
 0055EDB9    cmp         dword ptr [eax+0F0],0;TTaskMessageDialog.FHelpFile:string
>0055EDC0    jne         0055EDD7
 0055EDC2    lea         eax,[ebp-4]
 0055EDC5    mov         edx,dword ptr ds:[7C4A18];^Application:TApplication
 0055EDCB    mov         edx,dword ptr [edx]
 0055EDCD    mov         edx,dword ptr [edx+64];TApplication.FHelpFile:string
 0055EDD0    call        @UStrLAsg
>0055EDD5    jmp         0055EDE8
 0055EDD7    lea         eax,[ebp-4]
 0055EDDA    mov         edx,dword ptr [ebp-0C]
 0055EDDD    mov         edx,dword ptr [edx+0F0];TTaskMessageDialog.FHelpFile:string
 0055EDE3    call        @UStrLAsg
 0055EDE8    lea         eax,[ebp-8]
 0055EDEB    call        @IntfClear
 0055EDF0    call        GetHelpSystem
 0055EDF5    test        al,al
>0055EDF7    je          0055EE56
 0055EDF9    xor         edx,edx
 0055EDFB    push        ebp
 0055EDFC    push        55EE32
 0055EE01    push        dword ptr fs:[edx]
 0055EE04    mov         dword ptr fs:[edx],esp
 0055EE07    push        1
 0055EE09    mov         eax,dword ptr [ebp-0C]
 0055EE0C    mov         eax,dword ptr [eax+78];TTaskMessageDialog.FHelpContext:Integer
 0055EE0F    push        eax
 0055EE10    mov         eax,[007C4A18];^Application:TApplication
 0055EE15    mov         eax,dword ptr [eax]
 0055EE17    mov         edx,dword ptr [eax+188];TApplication.FHandle:HWND
 0055EE1D    mov         ecx,dword ptr [ebp-4]
 0055EE20    mov         eax,dword ptr [ebp-8]
 0055EE23    mov         ebx,dword ptr [eax]
 0055EE25    call        dword ptr [ebx+20]
 0055EE28    xor         eax,eax
 0055EE2A    pop         edx
 0055EE2B    pop         ecx
 0055EE2C    pop         ecx
 0055EE2D    mov         dword ptr fs:[eax],edx
>0055EE30    jmp         0055EE56
>0055EE32    jmp         @HandleOnException
 0055EE37    dd          1
 0055EE3B    dd          004174D0;Exception
 0055EE3F    dd          0055EE43
 0055EE43    mov         edx,eax
 0055EE45    mov         eax,dword ptr [ebp-0C]
 0055EE48    mov         si,0FFE3
 0055EE4C    call        @CallDynaInst;TCustomTaskDialog.sub_0055D8B0
 0055EE51    call        @DoneExcept
 0055EE56    xor         eax,eax
 0055EE58    pop         edx
 0055EE59    pop         ecx
 0055EE5A    pop         ecx
 0055EE5B    mov         dword ptr fs:[eax],edx
 0055EE5E    push        55EE7B
 0055EE63    lea         eax,[ebp-8]
 0055EE66    call        @IntfClear
 0055EE6B    lea         eax,[ebp-4]
 0055EE6E    call        @UStrClr
 0055EE73    ret
>0055EE74    jmp         @HandleFinally
>0055EE79    jmp         0055EE63
 0055EE7B    pop         edi
 0055EE7C    pop         esi
 0055EE7D    pop         ebx
 0055EE7E    mov         esp,ebp
 0055EE80    pop         ebp
 0055EE81    ret
*}
end;

//0055EE84
procedure TTaskMessageDialog.Execute(ParentWnd:HWND);
begin
{*
 0055EE84    mov         dword ptr [eax+0F4],edx;TTaskMessageDialog.FParentWnd:HWND
 0055EE8A    call        TCustomTaskDialog.Execute
 0055EE8F    ret
*}
end;

//0055EE90
{*function sub_0055EE90(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0055EE90    push        ebp
 0055EE91    mov         ebp,esp
 0055EE93    add         esp,0FFFFFFD8
 0055EE96    push        ebx
 0055EE97    push        esi
 0055EE98    push        edi
 0055EE99    xor         ebx,ebx
 0055EE9B    mov         dword ptr [ebp-28],ebx
 0055EE9E    mov         dword ptr [ebp-24],ebx
 0055EEA1    mov         byte ptr [ebp-9],cl
 0055EEA4    mov         dword ptr [ebp-8],edx
 0055EEA7    mov         dword ptr [ebp-4],eax
 0055EEAA    xor         eax,eax
 0055EEAC    push        ebp
 0055EEAD    push        55F07B
 0055EEB2    push        dword ptr fs:[eax]
 0055EEB5    mov         dword ptr fs:[eax],esp
 0055EEB8    mov         eax,[007C4A18];^Application:TApplication
 0055EEBD    mov         eax,dword ptr [eax]
 0055EEBF    call        TApplication.ModalStarted
 0055EEC4    xor         ecx,ecx
 0055EEC6    mov         dl,1
 0055EEC8    mov         eax,[0055EADC];TTaskMessageDialog
 0055EECD    call        TCustomTaskDialog.Create;TTaskMessageDialog.Create
 0055EED2    mov         dword ptr [ebp-14],eax
 0055EED5    xor         eax,eax
 0055EED7    push        ebp
 0055EED8    push        55F059
 0055EEDD    push        dword ptr fs:[eax]
 0055EEE0    mov         dword ptr fs:[eax],esp
 0055EEE3    xor         ebx,ebx
 0055EEE5    mov         esi,7A1908;^SResString279:TResStringRec
 0055EEEA    mov         edi,7A19AC
 0055EEEF    mov         eax,ebx
 0055EEF1    cmp         al,0F
>0055EEF3    ja          0055EEFD
 0055EEF5    and         eax,7F
 0055EEF8    bt          word ptr [ebp+1C],ax
>0055EEFD    jae         0055EF39
 0055EEFF    mov         eax,dword ptr [ebp-14]
 0055EF02    mov         eax,dword ptr [eax+44];TTaskMessageDialog.FButtons:TTaskDialogButtons
 0055EF05    call        TTaskDialogButtons.Add
 0055EF0A    mov         dword ptr [ebp-18],eax
 0055EF0D    lea         edx,[ebp-24]
 0055EF10    mov         eax,dword ptr [esi]
 0055EF12    call        LoadResString
 0055EF17    mov         edx,dword ptr [ebp-24]
 0055EF1A    mov         eax,dword ptr [ebp-18]
 0055EF1D    call        TTaskDialogBaseButtonItem.SetCaption
 0055EF22    cmp         bl,byte ptr [ebp+8]
>0055EF25    jne         0055EF31
 0055EF27    mov         dl,1
 0055EF29    mov         eax,dword ptr [ebp-18]
 0055EF2C    call        TTaskDialogBaseButtonItem.SetDefault
 0055EF31    mov         eax,dword ptr [edi]
 0055EF33    mov         edx,dword ptr [ebp-18]
 0055EF36    mov         dword ptr [edx+18],eax;TTaskDialogBaseButtonItem.FModalResult:TModalResult
 0055EF39    inc         ebx
 0055EF3A    add         edi,4
 0055EF3D    add         esi,4
 0055EF40    cmp         bl,0C
>0055EF43    jne         0055EEEF
 0055EF45    cmp         byte ptr [ebp-9],4
>0055EF49    je          0055EF63
 0055EF4B    mov         eax,dword ptr [ebp-14]
 0055EF4E    lea         edx,[eax+48];TTaskMessageDialog.FCaption:string
 0055EF51    movzx       eax,byte ptr [ebp-9]
 0055EF55    mov         eax,dword ptr [eax*4+7A18E0];^SResString275:TResStringRec
 0055EF5C    call        LoadResString
>0055EF61    jmp         0055EF80
 0055EF63    lea         edx,[ebp-28]
 0055EF66    mov         eax,[007C4A18];^Application:TApplication
 0055EF6B    mov         eax,dword ptr [eax]
 0055EF6D    call        005CAD90
 0055EF72    mov         edx,dword ptr [ebp-28]
 0055EF75    mov         eax,dword ptr [ebp-14]
 0055EF78    add         eax,48;TTaskMessageDialog.FCaption:string
 0055EF7B    call        @UStrAsg
 0055EF80    mov         eax,dword ptr [ebp-14]
 0055EF83    movzx       edx,byte ptr ds:[55F090];0x0 gvar_0055F090
 0055EF8A    mov         byte ptr [eax+4C],dl;TTaskMessageDialog.FCommonButtons:TTaskDialogCommonButtons
 0055EF8D    mov         eax,[007C4A18];^Application:TApplication
 0055EF92    mov         eax,dword ptr [eax]
 0055EF94    call        TApplication.UseRightToLeftReading
 0055EF99    test        al,al
>0055EF9B    je          0055EFB3
 0055EF9D    mov         eax,dword ptr [ebp-14]
 0055EFA0    movzx       edx,word ptr [eax+68];TTaskMessageDialog.FFlags:TTaskDialogFlags
 0055EFA4    or          dx,word ptr ds:[55F094];0x2000 gvar_0055F094
 0055EFAB    mov         eax,dword ptr [ebp-14]
 0055EFAE    call        0055D738
 0055EFB3    mov         eax,dword ptr [ebp-14]
 0055EFB6    mov         edx,dword ptr [ebp+18]
 0055EFB9    mov         dword ptr [eax+78],edx;TTaskMessageDialog.FHelpContext:Integer
 0055EFBC    mov         eax,dword ptr [ebp-14]
 0055EFBF    add         eax,0F0;TTaskMessageDialog.FHelpFile:string
 0055EFC4    mov         edx,dword ptr [ebp+0C]
 0055EFC7    call        @UStrAsg
 0055EFCC    movzx       eax,byte ptr [ebp-9]
 0055EFD0    mov         edx,dword ptr [eax*4+7A1998]
 0055EFD7    mov         eax,dword ptr [ebp-14]
 0055EFDA    call        0055D7F0
 0055EFDF    mov         eax,dword ptr [ebp+14]
 0055EFE2    mov         dword ptr [ebp-20],eax
 0055EFE5    mov         eax,dword ptr [ebp+10]
 0055EFE8    mov         dword ptr [ebp-1C],eax
 0055EFEB    mov         eax,dword ptr [ebp-14]
 0055EFEE    mov         edx,dword ptr [ebp-20]
 0055EFF1    mov         dword ptr [eax+0F8],edx;TTaskMessageDialog.FPosition:TPoint
 0055EFF7    mov         edx,dword ptr [ebp-1C]
 0055EFFA    mov         dword ptr [eax+0FC],edx
 0055F000    mov         edx,dword ptr [ebp-8]
 0055F003    mov         eax,dword ptr [ebp-14]
 0055F006    call        0055D82C
 0055F00B    mov         edx,dword ptr [ebp-4]
 0055F00E    mov         eax,dword ptr [ebp-14]
 0055F011    call        0055D86C
 0055F016    xor         eax,eax
 0055F018    mov         dword ptr [ebp-10],eax
 0055F01B    mov         eax,dword ptr [ebp-14]
 0055F01E    mov         si,0FFE1
 0055F022    call        @CallDynaInst;TCustomTaskDialog.sub_0055D668
 0055F027    test        al,al
>0055F029    je          0055F037
 0055F02B    mov         eax,dword ptr [ebp-14]
 0055F02E    mov         eax,dword ptr [eax+80];TTaskMessageDialog.FModalResult:TModalResult
 0055F034    mov         dword ptr [ebp-10],eax
 0055F037    xor         eax,eax
 0055F039    pop         edx
 0055F03A    pop         ecx
 0055F03B    pop         ecx
 0055F03C    mov         dword ptr fs:[eax],edx
 0055F03F    push        55F060
 0055F044    mov         eax,dword ptr [ebp-14]
 0055F047    call        TObject.Free
 0055F04C    mov         eax,[007C4A18];^Application:TApplication
 0055F051    mov         eax,dword ptr [eax]
 0055F053    call        TApplication.ModalFinished
 0055F058    ret
>0055F059    jmp         @HandleFinally
>0055F05E    jmp         0055F044
 0055F060    xor         eax,eax
 0055F062    pop         edx
 0055F063    pop         ecx
 0055F064    pop         ecx
 0055F065    mov         dword ptr fs:[eax],edx
 0055F068    push        55F082
 0055F06D    lea         eax,[ebp-28]
 0055F070    mov         edx,2
 0055F075    call        @UStrArrayClr
 0055F07A    ret
>0055F07B    jmp         @HandleFinally
>0055F080    jmp         0055F06D
 0055F082    mov         eax,dword ptr [ebp-10]
 0055F085    pop         edi
 0055F086    pop         esi
 0055F087    pop         ebx
 0055F088    mov         esp,ebp
 0055F08A    pop         ebp
 0055F08B    ret         18
end;*}

//0055F098
function DoTaskMessageDlgPosHelp(const Instruction:UnicodeString; const Msg:UnicodeString; DlgType:UITypes.TMsgDlgType; Buttons:UITypes.TMsgDlgButtons; HelpCtx:LongInt; X:Integer; Y:Integer; const HelpFileName:UnicodeString):Integer;
begin
{*
 0055F098    push        ebp
 0055F099    mov         ebp,esp
 0055F09B    push        ecx
 0055F09C    push        esi
 0055F09D    push        edi
 0055F09E    mov         byte ptr [ebp-1],cl
 0055F0A1    mov         edi,eax
 0055F0A3    mov         esi,dword ptr [ebp+18]
 0055F0A6    test        si,4
>0055F0AB    je          0055F0B1
 0055F0AD    mov         al,2
>0055F0AF    jmp         0055F0BE
 0055F0B1    test        si,1
>0055F0B6    je          0055F0BC
 0055F0B8    xor         eax,eax
>0055F0BA    jmp         0055F0BE
 0055F0BC    mov         al,5
 0055F0BE    push        esi
 0055F0BF    mov         ecx,dword ptr [ebp+14]
 0055F0C2    push        ecx
 0055F0C3    mov         ecx,dword ptr [ebp+10]
 0055F0C6    push        ecx
 0055F0C7    mov         ecx,dword ptr [ebp+0C]
 0055F0CA    push        ecx
 0055F0CB    mov         ecx,dword ptr [ebp+8]
 0055F0CE    push        ecx
 0055F0CF    push        eax
 0055F0D0    movzx       ecx,byte ptr [ebp-1]
 0055F0D4    mov         eax,edi
 0055F0D6    call        0055EE90
 0055F0DB    pop         edi
 0055F0DC    pop         esi
 0055F0DD    pop         ecx
 0055F0DE    pop         ebp
 0055F0DF    ret         14
*}
end;

//0055F334
function TInputQueryForm.CloseQuery:Boolean;
begin
{*
 0055F334    push        ebx
 0055F335    mov         ebx,eax
 0055F337    cmp         dword ptr [ebx+2DC],2;TInputQueryForm.FModalResult:TModalResult
>0055F33E    je          0055F35C
 0055F340    cmp         dword ptr [ebx+3C0],0;TInputQueryForm.FCloseQueryFunc:TFunc<System.Boolean>
>0055F347    je          0055F35C
 0055F349    mov         eax,dword ptr [ebx+3C0];TInputQueryForm.FCloseQueryFunc:TFunc<System.Boolean>
 0055F34F    mov         edx,dword ptr [eax]
 0055F351    call        dword ptr [edx+0C]
 0055F354    test        al,al
>0055F356    jne         0055F35C
 0055F358    xor         eax,eax
 0055F35A    pop         ebx
 0055F35B    ret
 0055F35C    mov         al,1
 0055F35E    pop         ebx
 0055F35F    ret
*}
end;

//0055F360
{*function sub_0055F360(?:TControl; ?:?):?;
begin
 0055F360    push        ebx
 0055F361    push        esi
 0055F362    add         esp,0FFFFFFA4
 0055F365    mov         esi,edx
 0055F367    mov         ebx,eax
 0055F369    lea         edx,[esp+3C]
 0055F36D    mov         eax,ebx
 0055F36F    mov         ecx,dword ptr [eax]
 0055F371    call        dword ptr [ecx+64]
 0055F374    push        esp
 0055F375    mov         eax,esi
 0055F377    call        TCanvas.GetHandle
 0055F37C    push        eax
 0055F37D    call        gdi32.GetTextMetricsW
 0055F382    mov         eax,dword ptr [esp+4]
 0055F386    inc         eax
 0055F387    mov         esi,dword ptr [esp+40]
 0055F38B    add         esi,eax
 0055F38D    lea         eax,[esp+4C]
 0055F391    mov         ecx,esi
 0055F393    xor         edx,edx
 0055F395    call        0040E7E4
 0055F39A    lea         edx,[esp+4C]
 0055F39E    lea         ecx,[esp+54]
 0055F3A2    mov         eax,ebx
 0055F3A4    call        TControl.ClientToScreen
 0055F3A9    lea         edx,[esp+54]
 0055F3AD    lea         ecx,[esp+4C]
 0055F3B1    mov         eax,dword ptr [ebx+40]
 0055F3B4    call        TControl.ScreenToClient
 0055F3B9    mov         eax,dword ptr [esp+50]
 0055F3BD    sub         eax,dword ptr [ebx+54]
 0055F3C0    mov         esi,eax
 0055F3C2    mov         eax,esi
 0055F3C4    add         esp,5C
 0055F3C7    pop         esi
 0055F3C8    pop         ebx
 0055F3C9    ret
end;*}

//0055F5A4
function GetPromptCaption(const ACaption:UnicodeString):UnicodeString;
begin
{*
 0055F5A4    push        ebx
 0055F5A5    push        esi
 0055F5A6    mov         esi,edx
 0055F5A8    mov         ebx,eax
 0055F5AA    mov         eax,ebx
 0055F5AC    test        eax,eax
>0055F5AE    je          0055F5B5
 0055F5B0    sub         eax,4
 0055F5B3    mov         eax,dword ptr [eax]
 0055F5B5    dec         eax
>0055F5B6    jle         0055F5C1
 0055F5B8    cmp         word ptr [ebx],20
 0055F5BC    setb        al
>0055F5BF    jmp         0055F5C3
 0055F5C1    xor         eax,eax
 0055F5C3    test        al,al
>0055F5C5    je          0055F5DC
 0055F5C7    push        esi
 0055F5C8    mov         ecx,7FFFFFFF
 0055F5CD    mov         edx,2
 0055F5D2    mov         eax,ebx
 0055F5D4    call        @UStrCopy
 0055F5D9    pop         esi
 0055F5DA    pop         ebx
 0055F5DB    ret
 0055F5DC    mov         eax,esi
 0055F5DE    mov         edx,ebx
 0055F5E0    call        @UStrAsg
 0055F5E5    pop         esi
 0055F5E6    pop         ebx
 0055F5E7    ret
*}
end;

//0055F5E8
{*function sub_0055F5E8(?:?):?;
begin
 0055F5E8    push        ebp
 0055F5E9    mov         ebp,esp
 0055F5EB    add         esp,0FFFFFFF0
 0055F5EE    push        ebx
 0055F5EF    push        esi
 0055F5F0    xor         edx,edx
 0055F5F2    mov         dword ptr [ebp-10],edx
 0055F5F5    xor         eax,eax
 0055F5F7    push        ebp
 0055F5F8    push        55F6AC
 0055F5FD    push        dword ptr fs:[eax]
 0055F600    mov         dword ptr fs:[eax],esp
 0055F603    xor         eax,eax
 0055F605    mov         dword ptr [ebp-4],eax
 0055F608    xor         ecx,ecx
 0055F60A    mov         dl,1
 0055F60C    mov         eax,[004F936C];TLabel
 0055F611    call        TCustomLabel.Create;TLabel.Create
 0055F616    mov         dword ptr [ebp-8],eax
 0055F619    xor         edx,edx
 0055F61B    push        ebp
 0055F61C    push        55F68F
 0055F621    push        dword ptr fs:[edx]
 0055F624    mov         dword ptr fs:[edx],esp
 0055F627    mov         eax,dword ptr [ebp+8]
 0055F62A    mov         eax,dword ptr [eax-4]
 0055F62D    mov         esi,dword ptr [eax+10]
 0055F630    dec         esi
 0055F631    test        esi,esi
>0055F633    jl          0055F679
 0055F635    inc         esi
 0055F636    mov         eax,dword ptr [ebp+8]
 0055F639    mov         ebx,dword ptr [eax-8]
 0055F63C    lea         edx,[ebp-10]
 0055F63F    mov         eax,dword ptr [ebx]
 0055F641    call        GetPromptCaption
 0055F646    mov         edx,dword ptr [ebp-10]
 0055F649    mov         eax,dword ptr [ebp-8]
 0055F64C    call        TControl.SetText
 0055F651    mov         eax,dword ptr [ebp-8]
 0055F654    mov         eax,dword ptr [eax+58];TLabel.FWidth:Integer
 0055F657    mov         edx,dword ptr [ebp+8]
 0055F65A    add         eax,dword ptr [edx-10]
 0055F65D    mov         dword ptr [ebp-0C],eax
 0055F660    mov         eax,dword ptr [ebp-4]
 0055F663    cmp         eax,dword ptr [ebp-0C]
>0055F666    jle         0055F66D
 0055F668    mov         eax,dword ptr [ebp-4]
>0055F66B    jmp         0055F670
 0055F66D    mov         eax,dword ptr [ebp-0C]
 0055F670    mov         dword ptr [ebp-4],eax
 0055F673    add         ebx,4
 0055F676    dec         esi
>0055F677    jne         0055F63C
 0055F679    xor         eax,eax
 0055F67B    pop         edx
 0055F67C    pop         ecx
 0055F67D    pop         ecx
 0055F67E    mov         dword ptr fs:[eax],edx
 0055F681    push        55F696
 0055F686    mov         eax,dword ptr [ebp-8]
 0055F689    call        TObject.Free
 0055F68E    ret
>0055F68F    jmp         @HandleFinally
>0055F694    jmp         0055F686
 0055F696    xor         eax,eax
 0055F698    pop         edx
 0055F699    pop         ecx
 0055F69A    pop         ecx
 0055F69B    mov         dword ptr fs:[eax],edx
 0055F69E    push        55F6B3
 0055F6A3    lea         eax,[ebp-10]
 0055F6A6    call        @UStrClr
 0055F6AB    ret
>0055F6AC    jmp         @HandleFinally
>0055F6B1    jmp         0055F6A3
 0055F6B3    mov         eax,dword ptr [ebp-4]
 0055F6B6    pop         esi
 0055F6B7    pop         ebx
 0055F6B8    mov         esp,ebp
 0055F6BA    pop         ebp
 0055F6BB    ret
end;*}

//0055F6BC
function GetPasswordChar(const ACaption:UnicodeString):Char;
begin
{*
 0055F6BC    mov         edx,eax
 0055F6BE    test        edx,edx
>0055F6C0    je          0055F6C7
 0055F6C2    sub         edx,4
 0055F6C5    mov         edx,dword ptr [edx]
 0055F6C7    dec         edx
>0055F6C8    jle         0055F6D3
 0055F6CA    cmp         word ptr [eax],20
 0055F6CE    setb        al
>0055F6D1    jmp         0055F6D5
 0055F6D3    xor         eax,eax
 0055F6D5    test        al,al
>0055F6D7    je          0055F6DE
 0055F6D9    mov         ax,2A
 0055F6DD    ret
 0055F6DE    xor         eax,eax
 0055F6E0    ret
*}
end;

//0055F6E4
{*function sub_0055F6E4(?:?):?;
begin
 0055F6E4    push        ebp
 0055F6E5    mov         ebp,esp
 0055F6E7    add         esp,0FFFFFFF0
 0055F6EA    push        ebx
 0055F6EB    push        esi
 0055F6EC    push        edi
 0055F6ED    xor         edx,edx
 0055F6EF    mov         dword ptr [ebp-10],edx
 0055F6F2    mov         dword ptr [ebp-4],edx
 0055F6F5    mov         edi,eax
 0055F6F7    xor         eax,eax
 0055F6F9    push        ebp
 0055F6FA    push        55F7C9
 0055F6FF    push        dword ptr fs:[eax]
 0055F702    mov         dword ptr fs:[eax],esp
 0055F705    mov         bl,1
 0055F707    cmp         dword ptr [edi+14],0
>0055F70B    je          0055F7A5
 0055F711    mov         eax,dword ptr [edi+10]
 0055F714    push        eax
 0055F715    lea         eax,[ebp-4]
 0055F718    mov         ecx,1
 0055F71D    mov         edx,dword ptr ds:[55F3CC];:14
 0055F723    call        @DynArraySetLength
 0055F728    add         esp,4
 0055F72B    xor         eax,eax
 0055F72D    mov         dword ptr [ebp-0C],eax
 0055F730    mov         eax,dword ptr [edi+0C]
 0055F733    call        TWinControl.GetControlCount
 0055F738    mov         esi,eax
 0055F73A    dec         esi
 0055F73B    test        esi,esi
>0055F73D    jl          0055F789
 0055F73F    inc         esi
 0055F740    mov         dword ptr [ebp-8],0
 0055F747    mov         eax,dword ptr [edi+0C]
 0055F74A    mov         edx,dword ptr [ebp-8]
 0055F74D    call        TWinControl.GetControl
 0055F752    mov         ebx,eax
 0055F754    mov         eax,ebx
 0055F756    mov         edx,dword ptr ds:[4FA534];TEdit
 0055F75C    call        @IsClass
 0055F761    test        al,al
>0055F763    je          0055F783
 0055F765    lea         edx,[ebp-10]
 0055F768    mov         eax,ebx
 0055F76A    call        TControl.GetText
 0055F76F    mov         edx,dword ptr [ebp-10]
 0055F772    mov         eax,dword ptr [ebp-4]
 0055F775    mov         ecx,dword ptr [ebp-0C]
 0055F778    lea         eax,[eax+ecx*4]
 0055F77B    call        @UStrAsg
 0055F780    inc         dword ptr [ebp-0C]
 0055F783    inc         dword ptr [ebp-8]
 0055F786    dec         esi
>0055F787    jne         0055F747
 0055F789    mov         eax,dword ptr [ebp-4]
 0055F78C    test        eax,eax
>0055F78E    je          0055F795
 0055F790    sub         eax,4
 0055F793    mov         eax,dword ptr [eax]
 0055F795    mov         ecx,eax
 0055F797    dec         ecx
 0055F798    mov         eax,dword ptr [edi+14]
 0055F79B    mov         edx,dword ptr [ebp-4]
 0055F79E    mov         ebx,dword ptr [eax]
 0055F7A0    call        dword ptr [ebx+0C]
 0055F7A3    mov         ebx,eax
 0055F7A5    xor         eax,eax
 0055F7A7    pop         edx
 0055F7A8    pop         ecx
 0055F7A9    pop         ecx
 0055F7AA    mov         dword ptr fs:[eax],edx
 0055F7AD    push        55F7D0
 0055F7B2    lea         eax,[ebp-10]
 0055F7B5    call        @UStrClr
 0055F7BA    lea         eax,[ebp-4]
 0055F7BD    mov         edx,dword ptr ds:[55F3CC];:14
 0055F7C3    call        @DynArrayClear
 0055F7C8    ret
>0055F7C9    jmp         @HandleFinally
>0055F7CE    jmp         0055F7B2
 0055F7D0    mov         eax,ebx
 0055F7D2    pop         edi
 0055F7D3    pop         esi
 0055F7D4    pop         ebx
 0055F7D5    mov         esp,ebp
 0055F7D7    pop         ebp
 0055F7D8    ret
end;*}

//0055F7DC
{*function sub_0055F7DC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0055F7DC    push        ebp
 0055F7DD    mov         ebp,esp
 0055F7DF    add         esp,0FFFFFFC0
 0055F7E2    push        ebx
 0055F7E3    push        esi
 0055F7E4    push        edi
 0055F7E5    xor         ebx,ebx
 0055F7E7    mov         dword ptr [ebp-40],ebx
 0055F7EA    mov         dword ptr [ebp-3C],ebx
 0055F7ED    mov         dword ptr [ebp-38],ebx
 0055F7F0    mov         dword ptr [ebp-34],ebx
 0055F7F3    mov         dword ptr [ebp-14],ebx
 0055F7F6    mov         ebx,ecx
 0055F7F8    mov         dword ptr [ebp-8],edx
 0055F7FB    mov         esi,eax
 0055F7FD    mov         eax,dword ptr [ebp+8]
 0055F800    call        @IntfAddRef
 0055F805    xor         eax,eax
 0055F807    push        ebp
 0055F808    push        55FCF3
 0055F80D    push        dword ptr fs:[eax]
 0055F810    mov         dword ptr fs:[eax],esp
 0055F813    mov         dl,1
 0055F815    mov         eax,[0055F498];InputQuery$280$ActRec
 0055F81A    call        TObject.Create;InputQuery$280$ActRec.Create
 0055F81F    mov         dword ptr [ebp-4],eax
 0055F822    lea         eax,[ebp-14]
 0055F825    mov         edx,dword ptr [ebp-4]
 0055F828    test        edx,edx
>0055F82A    je          0055F82F
 0055F82C    sub         edx,0FFFFFFF8
 0055F82F    call        @IntfCopy
 0055F834    mov         eax,dword ptr [ebp-4]
 0055F837    add         eax,14;InputQuery$280$ActRec.CloseQueryFunc:TInputCloseQueryFunc
 0055F83A    mov         edx,dword ptr [ebp+8]
 0055F83D    call        @IntfCopy
 0055F842    lea         eax,[ebx+1]
 0055F845    mov         edx,dword ptr [ebp+0C]
 0055F848    inc         edx
 0055F849    cmp         eax,edx
>0055F84B    jle         0055F864
 0055F84D    mov         ecx,dword ptr ds:[7C43A8];^SResString324:TResStringRec
 0055F853    mov         dl,1
 0055F855    mov         eax,[0046BE9C];EInvalidOperation
 0055F85A    call        Exception.CreateRes;EInvalidOperation.Create
 0055F85F    call        @RaiseExcept
 0055F864    mov         edx,eax
 0055F866    mov         eax,dword ptr [ebp-4]
 0055F869    mov         dword ptr [eax+10],edx;InputQuery$280$ActRec.PromptCount:Integer
 0055F86C    dec         edx
>0055F86D    jge         0055F886
 0055F86F    mov         ecx,dword ptr ds:[7C4694];^SResString325:TResStringRec
 0055F875    mov         dl,1
 0055F877    mov         eax,[0046BE9C];EInvalidOperation
 0055F87C    call        Exception.CreateRes;EInvalidOperation.Create
 0055F881    call        @RaiseExcept
 0055F886    mov         byte ptr [ebp-15],0
 0055F88A    push        0
 0055F88C    mov         ecx,dword ptr ds:[7C4A18];^Application:TApplication
 0055F892    mov         ecx,dword ptr [ecx]
 0055F894    mov         dl,1
 0055F896    mov         eax,[0055F0E4];TInputQueryForm
 0055F89B    call        TInputQueryForm.Create;TInputQueryForm.Create
 0055F8A0    mov         ebx,eax
 0055F8A2    mov         eax,dword ptr [ebp-4]
 0055F8A5    mov         dword ptr [eax+0C],ebx;InputQuery$280$ActRec.Form:TInputQueryForm
 0055F8A8    xor         eax,eax
 0055F8AA    push        ebp
 0055F8AB    push        55FCB9
 0055F8B0    push        dword ptr fs:[eax]
 0055F8B3    mov         dword ptr fs:[eax],esp
 0055F8B6    lea         eax,[ebx+3C0];TInputQueryForm.FCloseQueryFunc:TFunc<System.Boolean>
 0055F8BC    mov         edx,dword ptr [ebp-4]
 0055F8BF    test        edx,edx
>0055F8C1    je          0055F8C6
 0055F8C3    sub         edx,0FFFFFFE8
 0055F8C6    call        @IntfCopy
 0055F8CB    mov         eax,dword ptr [ebp-4]
 0055F8CE    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F8D1    call        005C2ECC
 0055F8D6    mov         edx,dword ptr [ebp-4]
 0055F8D9    mov         edx,dword ptr [edx+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F8DC    mov         edx,dword ptr [edx+74];TInputQueryForm.FFont:TFont
 0055F8DF    call        TCanvas.SetFont
 0055F8E4    mov         eax,dword ptr [ebp-4]
 0055F8E7    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F8EA    call        005C2ECC
 0055F8EF    lea         edx,[ebp-10]
 0055F8F2    call        GetAveCharSize
 0055F8F7    push        ebp
 0055F8F8    mov         eax,dword ptr [ebp-4]
 0055F8FB    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F8FE    call        005C2ECC
 0055F903    call        0055F5E8
 0055F908    pop         ecx
 0055F909    mov         dword ptr [ebp-20],eax
 0055F90C    mov         eax,dword ptr [ebp-4]
 0055F90F    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F912    mov         dl,3
 0055F914    call        TForm.SetBorderStyle
 0055F919    mov         eax,dword ptr [ebp-4]
 0055F91C    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F91F    mov         edx,esi
 0055F921    call        TControl.SetText
 0055F926    push        4
 0055F928    mov         eax,dword ptr [ebp-10]
 0055F92B    push        eax
 0055F92C    mov         eax,dword ptr [ebp-20]
 0055F92F    add         eax,0B4
 0055F934    push        eax
 0055F935    call        kernel32.MulDiv
 0055F93A    mov         edx,eax
 0055F93C    mov         eax,dword ptr [ebp-4]
 0055F93F    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F942    call        TForm.SetClientWidth
 0055F947    mov         eax,dword ptr [ebp-4]
 0055F94A    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F94D    mov         dl,1
 0055F94F    call        TForm.SetPopupMode
 0055F954    mov         eax,dword ptr [ebp-4]
 0055F957    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F95A    mov         dl,4
 0055F95C    call        TForm.SetPosition
 0055F961    push        8
 0055F963    mov         eax,dword ptr [ebp-0C]
 0055F966    push        eax
 0055F967    push        8
 0055F969    call        kernel32.MulDiv
 0055F96E    mov         dword ptr [ebp-1C],eax
 0055F971    xor         ebx,ebx
 0055F973    mov         eax,dword ptr [ebp-4]
 0055F976    mov         eax,dword ptr [eax+10];InputQuery$280$ActRec.PromptCount:Integer
 0055F979    dec         eax
 0055F97A    test        eax,eax
>0055F97C    jl          0055FAEE
 0055F982    inc         eax
 0055F983    mov         dword ptr [ebp-2C],eax
 0055F986    mov         edi,dword ptr [ebp-8]
 0055F989    mov         eax,dword ptr [ebp+10]
 0055F98C    mov         dword ptr [ebp-30],eax
 0055F98F    mov         eax,dword ptr [ebp-4]
 0055F992    mov         ecx,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F995    mov         dl,1
 0055F997    mov         eax,[004F936C];TLabel
 0055F99C    call        TCustomLabel.Create;TLabel.Create
 0055F9A1    mov         esi,eax
 0055F9A3    mov         eax,dword ptr [ebp-4]
 0055F9A6    mov         edx,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055F9A9    mov         eax,esi
 0055F9AB    mov         ecx,dword ptr [eax]
 0055F9AD    call        dword ptr [ecx+8C];TLabel.sub_004E6DA4
 0055F9B3    lea         edx,[ebp-34]
 0055F9B6    mov         eax,dword ptr [edi]
 0055F9B8    call        GetPromptCaption
 0055F9BD    mov         edx,dword ptr [ebp-34]
 0055F9C0    mov         eax,esi
 0055F9C2    call        TControl.SetText
 0055F9C7    push        4
 0055F9C9    mov         eax,dword ptr [ebp-10]
 0055F9CC    push        eax
 0055F9CD    push        8
 0055F9CF    call        kernel32.MulDiv
 0055F9D4    mov         edx,eax
 0055F9D6    mov         eax,esi
 0055F9D8    call        TControl.SetLeft
 0055F9DD    mov         edx,dword ptr [ebp-1C]
 0055F9E0    mov         eax,esi
 0055F9E2    call        TControl.SetTop
 0055F9E7    mov         eax,dword ptr [esi+80];TLabel.FConstraints:TSizeConstraints
 0055F9ED    mov         ecx,dword ptr [ebp-20]
 0055F9F0    mov         edx,1
 0055F9F5    call        TSizeConstraints.SetMaxHeight
 0055F9FA    mov         dl,1
 0055F9FC    mov         eax,esi
 0055F9FE    call        TLabel.SetWordWrap
 0055FA03    mov         eax,dword ptr [ebp-4]
 0055FA06    mov         ecx,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FA09    mov         dl,1
 0055FA0B    mov         eax,[004FA534];TEdit
 0055FA10    call        TCustomEdit.Create;TEdit.Create
 0055FA15    mov         ebx,eax
 0055FA17    mov         eax,dword ptr [ebp-4]
 0055FA1A    mov         edx,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FA1D    mov         eax,ebx
 0055FA1F    mov         ecx,dword ptr [eax]
 0055FA21    call        dword ptr [ecx+8C];TEdit.sub_004F22F8
 0055FA27    mov         eax,dword ptr [edi]
 0055FA29    call        GetPasswordChar
 0055FA2E    mov         edx,eax
 0055FA30    mov         eax,ebx
 0055FA32    call        TEdit.SetPasswordChar
 0055FA37    mov         edx,dword ptr [esi+50];TLabel.FLeft:Integer
 0055FA3A    add         edx,dword ptr [ebp-20]
 0055FA3D    mov         eax,ebx
 0055FA3F    call        TControl.SetLeft
 0055FA44    mov         eax,dword ptr [ebp-4]
 0055FA47    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FA4A    call        005C2ECC
 0055FA4F    mov         edx,eax
 0055FA51    mov         eax,ebx
 0055FA53    call        0055F360
 0055FA58    push        eax
 0055FA59    mov         eax,dword ptr [ebp-4]
 0055FA5C    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FA5F    call        005C2ECC
 0055FA64    mov         edx,eax
 0055FA66    mov         eax,esi
 0055FA68    call        0055F360
 0055FA6D    pop         edx
 0055FA6E    sub         edx,eax
 0055FA70    push        edx
 0055FA71    mov         edx,dword ptr [esi+54];TLabel.FTop:Integer
 0055FA74    add         edx,dword ptr [esi+5C];TLabel.FHeight:Integer
 0055FA77    sub         edx,dword ptr [ebp-0C]
 0055FA7A    pop         eax
 0055FA7B    sub         edx,eax
 0055FA7D    mov         eax,ebx
 0055FA7F    call        TControl.SetTop
 0055FA84    mov         eax,dword ptr [ebp-4]
 0055FA87    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FA8A    call        TControl.GetClientWidth
 0055FA8F    sub         eax,dword ptr [ebx+50]
 0055FA92    push        eax
 0055FA93    push        4
 0055FA95    mov         eax,dword ptr [ebp-10]
 0055FA98    push        eax
 0055FA99    push        8
 0055FA9B    call        kernel32.MulDiv
 0055FAA0    pop         edx
 0055FAA1    sub         edx,eax
 0055FAA3    mov         eax,ebx
 0055FAA5    call        TControl.SetWidth
 0055FAAA    mov         edx,0FF
 0055FAAF    mov         eax,ebx
 0055FAB1    call        TEdit.SetMaxLength
 0055FAB6    mov         eax,dword ptr [ebp-30]
 0055FAB9    mov         edx,dword ptr [eax]
 0055FABB    mov         eax,ebx
 0055FABD    call        TControl.SetText
 0055FAC2    mov         eax,ebx
 0055FAC4    call        TCustomEdit.SelectAll
 0055FAC9    mov         edx,ebx
 0055FACB    mov         eax,esi
 0055FACD    call        TLabel.SetFocusControl
 0055FAD2    mov         eax,dword ptr [ebx+54];TEdit.FTop:Integer
 0055FAD5    add         eax,dword ptr [ebx+5C];TEdit.FHeight:Integer
 0055FAD8    add         eax,5
 0055FADB    mov         dword ptr [ebp-1C],eax
 0055FADE    add         dword ptr [ebp-30],4
 0055FAE2    add         edi,4
 0055FAE5    dec         dword ptr [ebp-2C]
>0055FAE8    jne         0055F98F
 0055FAEE    mov         eax,dword ptr [ebx+54]
 0055FAF1    add         eax,dword ptr [ebx+5C]
 0055FAF4    add         eax,0F
 0055FAF7    mov         dword ptr [ebp-24],eax
 0055FAFA    push        4
 0055FAFC    mov         eax,dword ptr [ebp-10]
 0055FAFF    push        eax
 0055FB00    push        32
 0055FB02    call        kernel32.MulDiv
 0055FB07    mov         edi,eax
 0055FB09    push        8
 0055FB0B    mov         eax,dword ptr [ebp-0C]
 0055FB0E    push        eax
 0055FB0F    push        0E
 0055FB11    call        kernel32.MulDiv
 0055FB16    mov         dword ptr [ebp-28],eax
 0055FB19    mov         eax,dword ptr [ebp-4]
 0055FB1C    mov         ecx,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FB1F    mov         dl,1
 0055FB21    mov         eax,[004FF09C];TButton
 0055FB26    call        TCustomButton.Create;TButton.Create
 0055FB2B    mov         esi,eax
 0055FB2D    mov         eax,dword ptr [ebp-4]
 0055FB30    mov         edx,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FB33    mov         eax,esi
 0055FB35    mov         ecx,dword ptr [eax]
 0055FB37    call        dword ptr [ecx+8C];TButton.sub_004F22F8
 0055FB3D    lea         edx,[ebp-38]
 0055FB40    mov         eax,[007C48A8];^SResString281:TResStringRec
 0055FB45    call        LoadResString
 0055FB4A    mov         edx,dword ptr [ebp-38]
 0055FB4D    mov         eax,esi
 0055FB4F    call        TControl.SetText
 0055FB54    mov         dword ptr [esi+2CC],1;TButton.FModalResult:TModalResult
 0055FB5E    mov         dl,1
 0055FB60    mov         eax,esi
 0055FB62    call        TButton.SetDefault
 0055FB67    push        edi
 0055FB68    mov         eax,dword ptr [ebp-28]
 0055FB6B    push        eax
 0055FB6C    mov         eax,dword ptr [ebp-4]
 0055FB6F    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FB72    call        TControl.GetClientWidth
 0055FB77    push        eax
 0055FB78    push        4
 0055FB7A    mov         eax,dword ptr [ebp-10]
 0055FB7D    push        eax
 0055FB7E    push        8
 0055FB80    call        kernel32.MulDiv
 0055FB85    add         eax,edi
 0055FB87    add         eax,eax
 0055FB89    pop         edx
 0055FB8A    sub         edx,eax
 0055FB8C    mov         ecx,dword ptr [ebp-24]
 0055FB8F    mov         eax,esi
 0055FB91    mov         ebx,dword ptr [eax]
 0055FB93    call        dword ptr [ebx+0B0];TWinControl.SetBounds
 0055FB99    mov         eax,dword ptr [ebp-4]
 0055FB9C    mov         ecx,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FB9F    mov         dl,1
 0055FBA1    mov         eax,[004FF09C];TButton
 0055FBA6    call        TCustomButton.Create;TButton.Create
 0055FBAB    mov         esi,eax
 0055FBAD    mov         eax,dword ptr [ebp-4]
 0055FBB0    mov         edx,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FBB3    mov         eax,esi
 0055FBB5    mov         ecx,dword ptr [eax]
 0055FBB7    call        dword ptr [ecx+8C];TButton.sub_004F22F8
 0055FBBD    lea         edx,[ebp-3C]
 0055FBC0    mov         eax,[007C4604];^SResString282:TResStringRec
 0055FBC5    call        LoadResString
 0055FBCA    mov         edx,dword ptr [ebp-3C]
 0055FBCD    mov         eax,esi
 0055FBCF    call        TControl.SetText
 0055FBD4    mov         dword ptr [esi+2CC],2;TButton.FModalResult:TModalResult
 0055FBDE    mov         byte ptr [esi+299],1;TButton.FCancel:Boolean
 0055FBE5    push        edi
 0055FBE6    mov         eax,dword ptr [ebp-28]
 0055FBE9    push        eax
 0055FBEA    mov         eax,dword ptr [ebp-4]
 0055FBED    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FBF0    call        TControl.GetClientWidth
 0055FBF5    push        eax
 0055FBF6    push        4
 0055FBF8    mov         eax,dword ptr [ebp-10]
 0055FBFB    push        eax
 0055FBFC    push        8
 0055FBFE    call        kernel32.MulDiv
 0055FC03    add         edi,eax
 0055FC05    pop         edx
 0055FC06    sub         edx,edi
 0055FC08    mov         ecx,dword ptr [ebp-24]
 0055FC0B    mov         eax,esi
 0055FC0D    mov         ebx,dword ptr [eax]
 0055FC0F    call        dword ptr [ebx+0B0];TWinControl.SetBounds
 0055FC15    mov         edx,dword ptr [esi+54];TButton.FTop:Integer
 0055FC18    add         edx,dword ptr [esi+5C];TButton.FHeight:Integer
 0055FC1B    add         edx,0D
 0055FC1E    mov         eax,dword ptr [ebp-4]
 0055FC21    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FC24    call        TForm.SetClientHeight
 0055FC29    mov         eax,dword ptr [ebp-4]
 0055FC2C    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FC2F    mov         edx,dword ptr [eax]
 0055FC31    call        dword ptr [edx+13C];TCustomForm.ShowModal
 0055FC37    dec         eax
>0055FC38    jne         0055FCA0
 0055FC3A    xor         edi,edi
 0055FC3C    mov         eax,dword ptr [ebp-4]
 0055FC3F    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FC42    call        TWinControl.GetControlCount
 0055FC47    dec         eax
 0055FC48    test        eax,eax
>0055FC4A    jl          0055FC9C
 0055FC4C    inc         eax
 0055FC4D    mov         dword ptr [ebp-2C],eax
 0055FC50    xor         esi,esi
 0055FC52    mov         eax,dword ptr [ebp-4]
 0055FC55    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FC58    mov         edx,esi
 0055FC5A    call        TWinControl.GetControl
 0055FC5F    mov         edx,dword ptr ds:[4FA534];TEdit
 0055FC65    call        @IsClass
 0055FC6A    test        al,al
>0055FC6C    je          0055FC96
 0055FC6E    mov         eax,dword ptr [ebp-4]
 0055FC71    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FC74    mov         edx,esi
 0055FC76    call        TWinControl.GetControl
 0055FC7B    mov         ebx,eax
 0055FC7D    lea         edx,[ebp-40]
 0055FC80    mov         eax,ebx
 0055FC82    call        TControl.GetText
 0055FC87    mov         edx,dword ptr [ebp-40]
 0055FC8A    mov         eax,dword ptr [ebp+10]
 0055FC8D    lea         eax,[eax+edi*4]
 0055FC90    call        @UStrAsg
 0055FC95    inc         edi
 0055FC96    inc         esi
 0055FC97    dec         dword ptr [ebp-2C]
>0055FC9A    jne         0055FC52
 0055FC9C    mov         byte ptr [ebp-15],1
 0055FCA0    xor         eax,eax
 0055FCA2    pop         edx
 0055FCA3    pop         ecx
 0055FCA4    pop         ecx
 0055FCA5    mov         dword ptr fs:[eax],edx
 0055FCA8    push        55FCC0
 0055FCAD    mov         eax,dword ptr [ebp-4]
 0055FCB0    mov         eax,dword ptr [eax+0C];InputQuery$280$ActRec.Form:TInputQueryForm
 0055FCB3    call        TObject.Free
 0055FCB8    ret
>0055FCB9    jmp         @HandleFinally
>0055FCBE    jmp         0055FCAD
 0055FCC0    xor         eax,eax
 0055FCC2    pop         edx
 0055FCC3    pop         ecx
 0055FCC4    pop         ecx
 0055FCC5    mov         dword ptr fs:[eax],edx
 0055FCC8    push        55FCFA
 0055FCCD    lea         eax,[ebp-40]
 0055FCD0    call        @UStrClr
 0055FCD5    lea         eax,[ebp-3C]
 0055FCD8    mov         edx,3
 0055FCDD    call        @UStrArrayClr
 0055FCE2    lea         eax,[ebp-14]
 0055FCE5    call        @IntfClear
 0055FCEA    lea         eax,[ebp+8]
 0055FCED    call        @IntfClear
 0055FCF2    ret
>0055FCF3    jmp         @HandleFinally
>0055FCF8    jmp         0055FCCD
 0055FCFA    movzx       eax,byte ptr [ebp-15]
 0055FCFE    pop         edi
 0055FCFF    pop         esi
 0055FD00    pop         ebx
 0055FD01    mov         esp,ebp
 0055FD03    pop         ebp
 0055FD04    ret         0C
end;*}

//00560054
function TDefaultLoginCredentials.LoginEvent$833$ActRec.$0$Body(const Values:array[$0..-$1] of System.UnicodeString; const _Dv_:$0..-$1):Boolean;
begin
{*
 00560054    push        ebx
 00560055    push        ecx
 00560056    mov         byte ptr [esp],1
 0056005A    mov         ecx,dword ptr [edx+4]
 0056005D    push        ecx
 0056005E    mov         ecx,dword ptr [edx+8]
 00560061    push        ecx
 00560062    lea         ecx,[esp+8]
 00560066    push        ecx
 00560067    mov         ecx,dword ptr [edx]
 00560069    mov         ebx,eax
 0056006B    mov         edx,dword ptr [eax+0C]
 0056006E    mov         eax,dword ptr [ebx+14]
 00560071    call        dword ptr [ebx+10]
 00560074    movzx       eax,byte ptr [esp]
 00560078    pop         edx
 00560079    pop         ebx
 0056007A    ret
*}
end;

//0056007C
procedure TDefaultLoginCredentials.LoginEvent(Sender:TObject; var Success:Boolean; Callback:TLoginCredentialService.TLoginEvent);
begin
{*
 0056007C    push        ebp
 0056007D    mov         ebp,esp
 0056007F    push        ecx
 00560080    mov         ecx,4
 00560085    push        0
 00560087    push        0
 00560089    dec         ecx
>0056008A    jne         00560085
 0056008C    push        ecx
 0056008D    xchg        ecx,dword ptr [ebp-4]
 00560090    push        ebx
 00560091    push        esi
 00560092    push        edi
 00560093    mov         edi,ecx
 00560095    mov         esi,edx
 00560097    xor         eax,eax
 00560099    push        ebp
 0056009A    push        5601A6
 0056009F    push        dword ptr fs:[eax]
 005600A2    mov         dword ptr fs:[eax],esp
 005600A5    mov         dl,1
 005600A7    mov         eax,[0055FF44];TDefaultLoginCredentials.LoginEvent$290$ActRec
 005600AC    call        TObject.Create
 005600B1    mov         ebx,eax
 005600B3    lea         eax,[ebp-8]
 005600B6    mov         edx,ebx
 005600B8    test        edx,edx
>005600BA    je          005600BF
 005600BC    sub         edx,0FFFFFFF8
 005600BF    call        @IntfCopy
 005600C4    mov         dword ptr [ebx+0C],esi
 005600C7    mov         eax,dword ptr [ebp+8]
 005600CA    mov         dword ptr [ebx+10],eax
 005600CD    mov         eax,dword ptr [ebp+0C]
 005600D0    mov         dword ptr [ebx+14],eax
 005600D3    push        3
 005600D5    lea         eax,[ebp-4]
 005600D8    mov         ecx,1
 005600DD    mov         edx,dword ptr ds:[41B770];TArray<System.string>
 005600E3    call        @DynArraySetLength
 005600E8    add         esp,4
 005600EB    lea         edx,[ebp-0C]
 005600EE    mov         eax,[007C451C];^SResString329:TResStringRec
 005600F3    call        LoadResString
 005600F8    mov         esi,dword ptr [ebp-4]
 005600FB    test        esi,esi
>005600FD    je          00560104
 005600FF    sub         esi,4
 00560102    mov         esi,dword ptr [esi]
 00560104    mov         eax,dword ptr [ebp-4]
 00560107    push        eax
 00560108    dec         esi
 00560109    push        esi
 0056010A    test        ebx,ebx
>0056010C    je          00560111
 0056010E    sub         ebx,0FFFFFFE8
 00560111    push        ebx
 00560112    lea         edx,[ebp-1C]
 00560115    mov         eax,[007C4458];^SResString326:TResStringRec
 0056011A    call        LoadResString
 0056011F    mov         eax,dword ptr [ebp-1C]
 00560122    mov         dword ptr [ebp-18],eax
 00560125    lea         edx,[ebp-24]
 00560128    mov         eax,[007C4A14];^SResString327:TResStringRec
 0056012D    call        LoadResString
 00560132    mov         ecx,dword ptr [ebp-24]
 00560135    lea         eax,[ebp-20]
 00560138    mov         edx,5601C4;''
 0056013D    call        @UStrCat3
 00560142    mov         eax,dword ptr [ebp-20]
 00560145    mov         dword ptr [ebp-14],eax
 00560148    lea         edx,[ebp-28]
 0056014B    mov         eax,[007C4F0C];^SResString328:TResStringRec
 00560150    call        LoadResString
 00560155    mov         eax,dword ptr [ebp-28]
 00560158    mov         dword ptr [ebp-10],eax
 0056015B    lea         edx,[ebp-18]
 0056015E    mov         ecx,2
 00560163    mov         eax,dword ptr [ebp-0C]
 00560166    call        0055F7DC
 0056016B    mov         byte ptr [edi],al
 0056016D    xor         eax,eax
 0056016F    pop         edx
 00560170    pop         ecx
 00560171    pop         ecx
 00560172    mov         dword ptr fs:[eax],edx
 00560175    push        5601AD
 0056017A    lea         eax,[ebp-28]
 0056017D    mov         edx,4
 00560182    call        @UStrArrayClr
 00560187    lea         eax,[ebp-0C]
 0056018A    call        @UStrClr
 0056018F    lea         eax,[ebp-8]
 00560192    call        @IntfClear
 00560197    lea         eax,[ebp-4]
 0056019A    mov         edx,dword ptr ds:[41B770];TArray<System.string>
 005601A0    call        @DynArrayClear
 005601A5    ret
>005601A6    jmp         @HandleFinally
>005601AB    jmp         0056017A
 005601AD    pop         edi
 005601AE    pop         esi
 005601AF    pop         ebx
 005601B0    mov         esp,ebp
 005601B2    pop         ebp
 005601B3    ret         8
*}
end;

//0056039C
function TDefaultLoginCredentials.LoginEventUsrPw$835$ActRec.$0$Body(const Values:array[$0..-$1] of System.UnicodeString; const _Dv_:$0..-$1):Boolean;
begin
{*
 0056039C    push        ebx
 0056039D    push        ecx
 0056039E    mov         byte ptr [esp],1
 005603A2    mov         ecx,dword ptr [edx+4]
 005603A5    push        ecx
 005603A6    push        0
 005603A8    lea         ecx,[esp+8]
 005603AC    push        ecx
 005603AD    mov         ecx,dword ptr [edx]
 005603AF    mov         ebx,eax
 005603B1    mov         edx,dword ptr [eax+0C]
 005603B4    mov         eax,dword ptr [ebx+14]
 005603B7    call        dword ptr [ebx+10]
 005603BA    movzx       eax,byte ptr [esp]
 005603BE    pop         edx
 005603BF    pop         ebx
 005603C0    ret
*}
end;

//005603C4
procedure TDefaultLoginCredentials.LoginEventUsrPw(Sender:TObject; var Success:Boolean; Callback:TLoginCredentialService.TLoginEvent);
begin
{*
 005603C4    push        ebp
 005603C5    mov         ebp,esp
 005603C7    push        0
 005603C9    push        0
 005603CB    push        0
 005603CD    push        0
 005603CF    push        0
 005603D1    push        0
 005603D3    push        0
 005603D5    push        0
 005603D7    push        ebx
 005603D8    push        esi
 005603D9    push        edi
 005603DA    mov         edi,ecx
 005603DC    mov         esi,edx
 005603DE    xor         eax,eax
 005603E0    push        ebp
 005603E1    push        5604DA
 005603E6    push        dword ptr fs:[eax]
 005603E9    mov         dword ptr fs:[eax],esp
 005603EC    mov         dl,1
 005603EE    mov         eax,[00560284];TDefaultLoginCredentials.LoginEventUsrPw$292$ActRec
 005603F3    call        TObject.Create
 005603F8    mov         ebx,eax
 005603FA    lea         eax,[ebp-8]
 005603FD    mov         edx,ebx
 005603FF    test        edx,edx
>00560401    je          00560406
 00560403    sub         edx,0FFFFFFF8
 00560406    call        @IntfCopy
 0056040B    mov         dword ptr [ebx+0C],esi
 0056040E    mov         eax,dword ptr [ebp+8]
 00560411    mov         dword ptr [ebx+10],eax
 00560414    mov         eax,dword ptr [ebp+0C]
 00560417    mov         dword ptr [ebx+14],eax
 0056041A    push        2
 0056041C    lea         eax,[ebp-4]
 0056041F    mov         ecx,1
 00560424    mov         edx,dword ptr ds:[41B770];TArray<System.string>
 0056042A    call        @DynArraySetLength
 0056042F    add         esp,4
 00560432    lea         edx,[ebp-0C]
 00560435    mov         eax,[007C451C];^SResString329:TResStringRec
 0056043A    call        LoadResString
 0056043F    mov         esi,dword ptr [ebp-4]
 00560442    test        esi,esi
>00560444    je          0056044B
 00560446    sub         esi,4
 00560449    mov         esi,dword ptr [esi]
 0056044B    mov         eax,dword ptr [ebp-4]
 0056044E    push        eax
 0056044F    dec         esi
 00560450    push        esi
 00560451    test        ebx,ebx
>00560453    je          00560458
 00560455    sub         ebx,0FFFFFFE8
 00560458    push        ebx
 00560459    lea         edx,[ebp-18]
 0056045C    mov         eax,[007C4458];^SResString326:TResStringRec
 00560461    call        LoadResString
 00560466    mov         eax,dword ptr [ebp-18]
 00560469    mov         dword ptr [ebp-14],eax
 0056046C    lea         edx,[ebp-20]
 0056046F    mov         eax,[007C4A14];^SResString327:TResStringRec
 00560474    call        LoadResString
 00560479    mov         ecx,dword ptr [ebp-20]
 0056047C    lea         eax,[ebp-1C]
 0056047F    mov         edx,5604F8;''
 00560484    call        @UStrCat3
 00560489    mov         eax,dword ptr [ebp-1C]
 0056048C    mov         dword ptr [ebp-10],eax
 0056048F    lea         edx,[ebp-14]
 00560492    mov         ecx,1
 00560497    mov         eax,dword ptr [ebp-0C]
 0056049A    call        0055F7DC
 0056049F    mov         byte ptr [edi],al
 005604A1    xor         eax,eax
 005604A3    pop         edx
 005604A4    pop         ecx
 005604A5    pop         ecx
 005604A6    mov         dword ptr fs:[eax],edx
 005604A9    push        5604E1
 005604AE    lea         eax,[ebp-20]
 005604B1    mov         edx,3
 005604B6    call        @UStrArrayClr
 005604BB    lea         eax,[ebp-0C]
 005604BE    call        @UStrClr
 005604C3    lea         eax,[ebp-8]
 005604C6    call        @IntfClear
 005604CB    lea         eax,[ebp-4]
 005604CE    mov         edx,dword ptr ds:[41B770];TArray<System.string>
 005604D4    call        @DynArrayClear
 005604D9    ret
>005604DA    jmp         @HandleFinally
>005604DF    jmp         005604AE
 005604E1    pop         edi
 005604E2    pop         esi
 005604E3    pop         ebx
 005604E4    mov         esp,ebp
 005604E6    pop         ebp
 005604E7    ret         8
*}
end;

//005604FC
procedure InitGlobals;
begin
{*
 005604FC    add         esp,0FFFFFFB0
 005604FF    push        560560
 00560504    call        user32.RegisterWindowMessageW
 00560509    mov         [007CA6E4],eax;gvar_007CA6E4
 0056050E    push        56057C
 00560513    call        user32.RegisterWindowMessageW
 00560518    mov         [007CA6E8],eax
 0056051D    push        1
 0056051F    mov         eax,[007C7C54];gvar_007C7C54
 00560524    mov         dword ptr [esp+44],eax
 00560528    mov         byte ptr [esp+48],0
 0056052D    call        kernel32.GetCurrentThreadId
 00560532    mov         dword ptr [esp+4C],eax
 00560536    mov         byte ptr [esp+50],0
 0056053B    lea         ecx,[esp+44]
 0056053F    mov         edx,5605A4
 00560544    lea         eax,[esp+4]
 00560548    call        StrFmt
 0056054D    push        eax
 0056054E    call        kernel32.GlobalAddAtomW
 00560553    mov         [007A16DC],ax
 00560559    add         esp,50
 0056055C    ret
*}
end;

Initialization
//0079D4EC
{*
 0079D4EC    sub         dword ptr ds:[7CA6E0],1
>0079D4F3    jae         0079D574
 0079D4F5    mov         eax,5605CC
 0079D4FA    call        @InitImports
 0079D4FF    call        InitGlobals
 0079D504    mov         eax,[004DC470];TControl
 0079D509    call        StartClassGroup
 0079D50E    mov         eax,[004DC470];TControl
 0079D513    call        ActivateClassGroup
 0079D518    mov         edx,dword ptr ds:[4DC470];TControl
 0079D51E    mov         eax,[00552AA4];TCommonDialog
 0079D523    call        GroupDescendentsWith
 0079D528    mov         edx,dword ptr ds:[4DC470];TControl
 0079D52E    mov         eax,[00554FB8];TCustomFileDialog
 0079D533    call        GroupDescendentsWith
 0079D538    mov         eax,[0055FD08];TDefaultLoginCredentials
 0079D53D    push        eax
 0079D53E    push        5603C4;TDefaultLoginCredentials.LoginEventUsrPw
 0079D543    xor         eax,eax
 0079D545    call        TLoginCredentialService.RegisterLoginHandler
 0079D54A    mov         eax,[0055FD08];TDefaultLoginCredentials
 0079D54F    push        eax
 0079D550    push        56007C;TDefaultLoginCredentials.LoginEvent
 0079D555    mov         eax,79D584;'DefaultUsrPwDm'
 0079D55A    call        TLoginCredentialService.RegisterLoginHandler
 0079D55F    mov         eax,[0055FD08];TDefaultLoginCredentials
 0079D564    push        eax
 0079D565    push        5603C4;TDefaultLoginCredentials.LoginEventUsrPw
 0079D56A    mov         eax,79D5B0;'DefaultUsrPw'
 0079D56F    call        TLoginCredentialService.RegisterLoginHandler
 0079D574    ret
*}
Finalization
//00560690
{*
 00560690    push        ebp
 00560691    mov         ebp,esp
 00560693    xor         eax,eax
 00560695    push        ebp
 00560696    push        56071F
 0056069B    push        dword ptr fs:[eax]
 0056069E    mov         dword ptr fs:[eax],esp
 005606A1    inc         dword ptr ds:[7CA6E0]
>005606A7    jne         00560711
 005606A9    mov         eax,[0055FD08];TDefaultLoginCredentials
 005606AE    push        eax
 005606AF    push        5603C4;TDefaultLoginCredentials.LoginEventUsrPw
 005606B4    mov         eax,560734;'DefaultUsrPw'
 005606B9    call        TLoginCredentialService.UnregisterLoginHandler
 005606BE    mov         eax,[0055FD08];TDefaultLoginCredentials
 005606C3    push        eax
 005606C4    push        56007C;TDefaultLoginCredentials.LoginEvent
 005606C9    mov         eax,56075C;'DefaultUsrPwDm'
 005606CE    call        TLoginCredentialService.UnregisterLoginHandler
 005606D3    mov         eax,[0055FD08];TDefaultLoginCredentials
 005606D8    push        eax
 005606D9    push        5603C4;TDefaultLoginCredentials.LoginEventUsrPw
 005606DE    xor         eax,eax
 005606E0    call        TLoginCredentialService.UnregisterLoginHandler
 005606E5    cmp         word ptr ds:[7A16DC],0
>005606ED    je          005606FC
 005606EF    movzx       eax,word ptr ds:[7A16DC]
 005606F6    push        eax
 005606F7    call        kernel32.GlobalDeleteAtom
 005606FC    mov         eax,7A1938;^'Yes'
 00560701    mov         ecx,0C
 00560706    mov         edx,dword ptr ds:[4012B8];string
 0056070C    call        @FinalizeArray
 00560711    xor         eax,eax
 00560713    pop         edx
 00560714    pop         ecx
 00560715    pop         ecx
 00560716    mov         dword ptr fs:[eax],edx
 00560719    push        560726
 0056071E    ret
>0056071F    jmp         @HandleFinally
>00560724    jmp         0056071E
 00560726    pop         ebp
 00560727    ret
*}
end.