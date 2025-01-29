//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit77;

interface

uses
  SysUtils, Classes, System.Win.Registry, Vcl.Graphics, System.UIConsts, Vcl.Controls, System.Classes, System.Generics.Collections, Vcl.Themes, System.Generics.Collections, System.Generics.Collections, System.Rtti, System.Generics.Defaults;

type
  TStyleManager = class(TObject)
  published
    procedure Notification(Operation:TCustomStyleEngine.TStyleEngineNotification; Data:Pointer);//0058B55C
    procedure RegisterStyle(Style:TCustomStyleServices);//0058B570
    procedure UnInitialize;//0058B614
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function HandleMessage(Control:TWinControl; var Message:TMessage; DefWndProc:TWndMethod):Boolean;//0058B46C
    procedure Initialize;//0058B4D0
    procedure CreateStyleEngine;//0058A000
    function GetEngine:TCustomStyleEngine;//0058B3E0
    function GetSystemStyle:TCustomStyleServices;//0058B3FC
    function GetActiveStyle:TCustomStyleServices;//0058B42C
    function GetIsCustomStyleActive:Boolean;//0058B448
  end;
  TCustomElementServices = class(TObject)
  published
    function GetElementRegion(Style:TCustomStyleServices; DC:HDC; Region:HRGN; Rect:TRect; State:Integer; Part:Integer):Boolean;//0058B814
    function GetElementMargins(Style:TCustomStyleServices; DC:HDC; ElementMargins:_MARGINS; Margin:TElementMargin; Rect:PRect; State:Integer; Part:Integer):Boolean;//0058B808
    function GetElementSize(Style:TCustomStyleServices; DC:HDC; Size:TSize; ElementSize:TElementSize; Rect:PRect; State:Integer; Part:Integer):Boolean;//0058B820
    function HasTransparentParts(Style:TCustomStyleServices; Part:Integer; State:Integer):Boolean;//0058B838
    function GetTextExtent(Style:TCustomStyleServices; DC:HDC; ExtentRect:TRect; BoundingRect:PRect; Flags:TTextFormat; Text:string; State:Integer; Part:Integer):Boolean;//0058B82C
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;//0058B7F0
    function DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean;//0058B7B4
    function DrawEdge(Style:TCustomStyleServices; DC:HDC; ContentRect:PRect; Flags:TElementEdgeFlags; Edges:TElementEdges; R:TRect; State:Integer; Part:Integer):Boolean;//0058B7A8
    function DrawIcon(Style:TCustomStyleServices; DC:HDC; Index:Integer; himl:NativeUInt; R:TRect; State:Integer; Part:Integer):Boolean;//0058B7C0
    function GetElementContentRect(Style:TCustomStyleServices; DC:HDC; ContentRect:TRect; BoundingRect:TRect; State:Integer; Part:Integer):Boolean;//0058B7FC
    function DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean;//0058B7CC
  public
    function DrawEdge(Style:TCustomStyleServices; DC:HDC; ContentRect:PRect; Flags:TElementEdgeFlags; Edges:TElementEdges; R:TRect; State:Integer; Part:Integer):Boolean; virtual;//v0//0058B7A8
    function DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean; virtual;//v4//0058B7B4
    function DrawIcon(Style:TCustomStyleServices; DC:HDC; Index:Integer; himl:NativeUInt; R:TRect; State:Integer; Part:Integer):Boolean; virtual;//v8//0058B7C0
    function DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean; virtual;//vC//0058B7CC
    function GetElementContentRect(Style:TCustomStyleServices; DC:HDC; ContentRect:TRect; BoundingRect:TRect; State:Integer; Part:Integer):Boolean; virtual;//v10//0058B7FC
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean; virtual;//v14//0058B7F0
    function GetElementMargins(Style:TCustomStyleServices; DC:HDC; ElementMargins:_MARGINS; Margin:TElementMargin; Rect:PRect; State:Integer; Part:Integer):Boolean; virtual;//v18//0058B808
    function GetElementRegion(Style:TCustomStyleServices; DC:HDC; Region:HRGN; Rect:TRect; State:Integer; Part:Integer):Boolean; virtual;//v1C//0058B814
    function GetElementSize(Style:TCustomStyleServices; DC:HDC; Size:TSize; ElementSize:TElementSize; Rect:PRect; State:Integer; Part:Integer):Boolean; virtual;//v20//0058B820
    function GetTextExtent(Style:TCustomStyleServices; DC:HDC; ExtentRect:TRect; BoundingRect:PRect; Flags:TTextFormat; Text:string; State:Integer; Part:Integer):Boolean; virtual;//v24//0058B82C
    function HasTransparentParts(Style:TCustomStyleServices; Part:Integer; State:Integer):Boolean; virtual;//v28//0058B838
  end;
  TUxThemeCategoryButtonElements = class(TCustomElementServices)
  published
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;//0058C3F0
    function DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean;//0058C380
    function GetElementSize(Style:TCustomStyleServices; DC:HDC; Size:TSize; ElementSize:TElementSize; Rect:PRect; State:Integer; Part:Integer):Boolean;//0058C33C
  public
    function DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean; virtual;//v4//0058C380
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean; virtual;//v14//0058C3F0
    function GetElementSize(Style:TCustomStyleServices; DC:HDC; Size:TSize; ElementSize:TElementSize; Rect:PRect; State:Integer; Part:Integer):Boolean; virtual;//v20//0058C33C
  end;
  TUxThemeCategoryPanelGroupElements = class(TCustomElementServices)
  published
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;//0058C7A4
    function GetElementSize(Style:TCustomStyleServices; DC:HDC; Size:TSize; ElementSize:TElementSize; Rect:PRect; State:Integer; Part:Integer):Boolean;//0058C838
    function DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean;//0058C590
    function DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean;//0058C704
  public
    function DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean; virtual;//v4//0058C590
    function DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean; virtual;//vC//0058C704
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean; virtual;//v14//0058C7A4
    function GetElementSize(Style:TCustomStyleServices; DC:HDC; Size:TSize; ElementSize:TElementSize; Rect:PRect; State:Integer; Part:Integer):Boolean; virtual;//v20//0058C838
  end;
  TUxThemeCheckListBoxElements = class(TCustomElementServices)
  published
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;//0058CAF0
  public
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean; virtual;//v14//0058CAF0
  end;
  TUxThemeControlBarElements = class(TCustomElementServices)
  published
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;//0058CF68
  public
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean; virtual;//v14//0058CF68
  end;
  TUxThemeGridElements = class(TCustomElementServices)
  published
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;//0058BAEC
    function DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean;//0058BA7C
    function DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean;//0058B844
  public
    function DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean; virtual;//v4//0058B844
    function DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean; virtual;//vC//0058BA7C
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean; virtual;//v14//0058BAEC
  end;
  TUxThemeHintElements = class(TCustomElementServices)
  published
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;//0058CFA8
  public
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean; virtual;//v14//0058CFA8
  end;
  TUxThemePanelElements = class(TCustomElementServices)
  published
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;//0058C9BC
    procedure DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer);//0058C96C
  public
    procedure DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer); virtual;//vC//0058C96C
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean; virtual;//v14//0058C9BC
  end;
  TUxThemeTabSetElements = class(TCustomElementServices)
  published
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;//0058CE38
  public
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean; virtual;//v14//0058CE38
  end;
  TUxThemeTextLabelElements = class(TCustomElementServices)
  published
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;//0058C248
    procedure GetTextExtent(Style:TCustomStyleServices; DC:HDC; ExtentRect:TRect; BoundingRect:PRect; Flags:TTextFormat; Text:string; State:Integer; Part:Integer);//0058C2BC
    function DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean;//0058BF24
    function GetElementContentRect(Style:TCustomStyleServices; DC:HDC; ContentRect:TRect; BoundingRect:TRect; State:Integer; Part:Integer):Boolean;//0058C2A0
  public
    function DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean; virtual;//vC//0058BF24
    function GetElementContentRect(Style:TCustomStyleServices; DC:HDC; ContentRect:TRect; BoundingRect:TRect; State:Integer; Part:Integer):Boolean; virtual;//v10//0058C2A0
    function GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean; virtual;//v14//0058C248
    procedure GetTextExtent(Style:TCustomStyleServices; DC:HDC; ExtentRect:TRect; BoundingRect:PRect; Flags:TTextFormat; Text:string; State:Integer; Part:Integer); virtual;//v24//0058C2BC
  end;
  TStyleHook = class(TObject)
  published
    destructor Destroy();//0058D0DC
    constructor Create;//0058D048
    procedure DrawControlText(Canvas:TCanvas; Details:TThemedElementDetails; Flags:Cardinal; var R:TRect; S:string);//0058D134
    procedure InvalidateNC;//0058D498
    procedure Invalidate;//0058D4C0
    function HandleMessage(var Message:TMessage):Boolean;//0058D27C
  public
    FBrush:TBrush;//f4
    FControl:TWinControl;//f8
    FCallDefaultProc:Boolean;//fC
    FDoubleBuffered:Boolean;//fD
    FFocused:Boolean;//fE
    FFocusUpdate:Boolean;//fF
    FFontColor:TColor;//f10
    FHandled:Boolean;//f14
    FNeedsDefaultPaint:Boolean;//f15
    FOverrideEraseBkgnd:Boolean;//f16
    FOverridePaint:Boolean;//f17
    FOverridePaintNC:Boolean;//f18
    FPaintOnEraseBkgnd:Boolean;//f19
    FText:string;//f1C
    destructor Destroy(); virtual;//0058D0DC
    //function v0(?:?):?; virtual;//v0//0058D218
    function v4:Boolean; virtual;//v4//0058D43C
    function v8:Boolean; virtual;//v8//0058D47C
    //function vC:?; virtual;//vC//0058D4F0
    procedure v10; virtual;//v10//0058D4F4
    //procedure v14(?:?); virtual;//v14//0058D4F8
    procedure v18; virtual;//v18//0058D52C
    //procedure v1C(?:?); virtual;//v1C//0058D8DC
    constructor Create; virtual;//v20//0058D048
    function HandleMessage(var Message:TMessage):Boolean; virtual;//v24//0058D27C
    procedure Invalidate; virtual;//v28//0058D4C0
    procedure InvalidateNC; virtual;//v2C//0058D498
    procedure WMSetFocus(var Message:Messages.TMessage); message WM_SETFOCUS;//0058D85C
    procedure WMKillFocus(var Message:Messages.TMessage); message WM_KILLFOCUS;//0058D86C
    procedure WMSetText(var Message:Messages.TMessage); message WM_ENABLE;//0058D8C4
    procedure WMEnable(var Message:Messages.TMessage); message WM_SETTEXT;//0058D8AC
    //procedure WMPaint(?:?); message WM_PAINT;//0058D530
    procedure WMEraseBkgnd(var Message:Messages.TMessage); message WM_ERASEBKGND;//0058D790
    procedure WMNCPaint(var Message:Messages.TMessage); message WM_NCPAINT;//0058D6EC
    procedure CMEnabledChanged(var Message:Messages.TMessage); message CM_ENABLEDCHANGED;//0058D87C
    procedure CMTextChanged(var Message:Messages.TMessage); message CM_TEXTCHANGED;//0058D894
    procedure CallDefaultProc(var Msg:Messages.TMessage);//0058D108
    function GetStringPropValue(const PropName:UnicodeString):UnicodeString;//0058D2F4
    function GetText:UnicodeString;//0058D36C
    function GetHandle:HWND;//0058D41C
  end;
  TMouseTrackControlStyleHook.TMousePosition = (mpNone, mpLeft, mpRight, mpTop, mpBottom);
  TMouseTrackControlStyleHook = class(TStyleHook)
  published
    constructor Create;//0058D960
    destructor Destroy();//0058D9A8
  public
    FHotTrackTimer:TComponent;//f20
    FMouseInControl:Boolean;//f24
    FMouseInNCArea:Boolean;//f25
    destructor Destroy(); virtual;//0058D9A8
    procedure v1C; virtual;//v1C//0058DB4C
    constructor Create; virtual;//v20//0058D960
    procedure DoHotTrackTimer(Sender:TObject); virtual;//v30//0058DA88
    procedure v34; virtual;//v34//0058DB44
    procedure v38; virtual;//v38//0058DB48
    //function v3C:?; virtual;//v3C//0058D9DC
    procedure WMNCMouseMove; message WM_NCMOUSEMOVE;//0058DB20
    procedure WMMouseMove; message WM_MOUSEMOVE;//0058DAD4
    function IsMouseInControl:Boolean;//0058D9E0
    procedure StartHotTrackTimer;//0058DA10
    procedure StopHotTrackTimer;//0058DA5C
  end;
  TArray<Vcl.Themes.TStyleHookClass> = array of TStyleHookClass;
//elSize = 4;
  TEnumerator<Vcl.Themes.TStyleHookClass> = class(TObject)
  published
    function Themes.TStyleHookClass>.MoveNext:Boolean;//0058F3E8
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TStyleHookClass> = class(TObject)
  published
    //procedure Themes.TStyleHookClass>.ToArray(?:?);//0058F334
    function Themes.TStyleHookClass>.GetEnumerator:TEnumerator<Vcl.Themes.TStyleHookClass>;//0058F32C
    destructor Themes.TStyleHookClass>.Destroy();//0058F308
  public
    destructor Themes.TStyleHookClass>.Destroy(); virtual;//0058F308
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TStyleHookClass>.ToArray(?:?); virtual;//v4//0058F334
  end;
  TList<Vcl.Themes.TStyleHookClass>.arrayofT = array of TStyleHookClass;
//elSize = 4;
  TCollectionNotifyEvent<Vcl.Themes.TStyleHookClass> = procedure(Sender:TObject; const Item:TStyleHookClass; Action:TCollectionNotification) of object;;
  TList<Vcl.Themes.TStyleHookClass>.TEnumerator = class(TEnumerator<Vcl.Themes.TStyleHookClass>)
  published
    function Themes.TStyleHookClass>.TEnumerator.MoveNext:Boolean;//0058F6D0
    constructor Create;//0058F68C
  public
    FList:TList<Vcl.Themes.TStyleHookClass>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//0058F67C
    procedure v4; virtual;//v4//0058F684
  end;
  TList<Vcl.Themes.TStyleHookClass> = class(TEnumerable<Vcl.Themes.TStyleHookClass>)
  published
    procedure Themes.TStyleHookClass>.Add(Value:TStyleHookClass);//0058F62C
    //procedure Themes.TStyleHookClass>.Error(Msg:string; Data:NativeInt; ?:?);//0058F5F4
    function Themes.TStyleHookClass>.GetEnumerator:TList<Vcl.Themes.TStyleHookClass>.TEnumerator;//0058F650
    //procedure Themes.TStyleHookClass>.ToArray(?:?);//0058F63C
    constructor sub_0058F4F8(AComparer:IComparer<Vcl.Themes.TStyleHookClass>);//0058F4F8
    constructor sub_0058F480;//0058F480
    destructor Themes.TStyleHookClass>.Destroy();//0058F5A8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<Vcl.Themes.TStyleHookClass>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<Vcl.Themes.TStyleHookClass>;//fC
    FOnNotify:TCollectionNotifyEvent<Vcl.Themes.TStyleHookClass>;//f10
    FArrayManager:TArrayManager<Vcl.Themes.TStyleHookClass>;//f18
    FItems:TList<Vcl.Themes.TStyleHookClass>.arrayofT;//f20
    FComparer:IComparer<Vcl.Themes.TStyleHookClass>;//f24
    FOnNotify:TCollectionNotifyEvent<Vcl.Themes.TStyleHookClass>;//f28
    destructor Themes.TStyleHookClass>.Destroy(); virtual;//0058F5A8
    procedure v0; virtual;//v0//0058F460
    //procedure Themes.TStyleHookClass>.ToArray(?:?); virtual;//v4//0058F63C
    //procedure v8(?:?); virtual;//v8//0058F468
    //procedure Themes.TStyleHookClass>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0058F5F4
  end;
  TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>> = TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>> = record//size=8
Key:TClass;//f0
Value:TList<Vcl.Themes.TStyleHookClass>;//f4
end;
//Methods:
Create(AKey:TClass;AValue:TList<Vcl.Themes.TStyleHookClass>);//0079EC18;
  TArray<Vcl.Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>> = array of TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>;
//elSize = 8;
  TEnumerator<Vcl.Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>> = class(TObject)
  published
    function Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>>.MoveNext:Boolean;//0058F874
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>> = class(TObject)
  published
    //procedure Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>>.ToArray(?:?);//0058F7B8
    function Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>>.GetEnumerator:TEnumerator<Vcl.Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>>;//0058F7B0
    destructor Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>>.Destroy();//0058F78C
  public
    destructor Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>>.Destroy(); virtual;//0058F78C
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>>.ToArray(?:?); virtual;//v4//0058F7B8
  end;
  TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TItem = TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TItem = record//size=C
HashCode:Integer;//f0
Key:TClass;//f4
Value:TList<Vcl.Themes.TStyleHookClass>;//f8
end;;
  TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TItemArray = array of TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TItem;
//elSize = C;
  TCollectionNotifyEvent<System.TClass> = procedure(Sender:TObject; const Item:TClass; Action:TCollectionNotification) of object;;
  TCollectionNotifyEvent<System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>> = procedure(Sender:TObject; const Item:TList<Vcl.Themes.TStyleHookClass>; Action:TCollectionNotification) of object;;
  TArray<System.TClass> = array of TClass;
//elSize = 4;
  TEnumerator<System.TClass> = class(TObject)
  published
    function TClass>.MoveNext:Boolean;//00590048
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.TClass> = class(TObject)
  published
    //procedure TClass>.ToArray(?:?);//0058FF94
    function TClass>.GetEnumerator:TEnumerator<System.TClass>;//0058FF8C
    destructor TClass>.Destroy();//0058FF68
  public
    destructor TClass>.Destroy(); virtual;//0058FF68
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TClass>.ToArray(?:?); virtual;//v4//0058FF94
  end;
  TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TKeyEnumerator = class(TEnumerator<System.TClass>)
  published
    function TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TKeyEnumerator.MoveNext:Boolean;//0059012C
    constructor sub_005900E8(ADictionary:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>);//005900E8
  public
    FDictionary:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//005900D8
    procedure v4; virtual;//v4//005900E0
  end;
  TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TKeyCollection = class(TEnumerable<System.TClass>)
  published
    //procedure TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TKeyCollection.ToArray(?:?);//005900AC
    procedure TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TKeyCollection.GetEnumerator;//0059009C
    constructor sub_00590060(ADictionary:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>);//00590060
  public
    FDictionary:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>;//f4
    procedure v0; virtual;//v0//00590058
    //procedure TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TKeyCollection.ToArray(?:?); virtual;//v4//005900AC
  end;
  TArray<Vcl.Themes.TList<Vcl.Themes.TStyleHookClass>> = array of TList<Vcl.Themes.TStyleHookClass>;
//elSize = 4;
  TEnumerator<Vcl.Themes.TList<Vcl.Themes.TStyleHookClass>> = class(TObject)
  published
    function Themes.TList<Vcl.Themes.TStyleHookClass>>.MoveNext:Boolean;//005902D0
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TList<Vcl.Themes.TStyleHookClass>> = class(TObject)
  published
    //procedure Themes.TList<Vcl.Themes.TStyleHookClass>>.ToArray(?:?);//0059021C
    function Themes.TList<Vcl.Themes.TStyleHookClass>>.GetEnumerator:TEnumerator<Vcl.Themes.TList<Vcl.Themes.TStyleHookClass>>;//00590214
    destructor Themes.TList<Vcl.Themes.TStyleHookClass>>.Destroy();//005901F0
  public
    destructor Themes.TList<Vcl.Themes.TStyleHookClass>>.Destroy(); virtual;//005901F0
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TList<Vcl.Themes.TStyleHookClass>>.ToArray(?:?); virtual;//v4//0059021C
  end;
  TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TValueEnumerator = class(TEnumerator<Vcl.Themes.TList<Vcl.Themes.TStyleHookClass>>)
  published
    function TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TValueEnumerator.MoveNext:Boolean;//005903B4
    constructor sub_00590370(ADictionary:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>);//00590370
  public
    FDictionary:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00590360
    procedure v4; virtual;//v4//00590368
  end;
  TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TValueCollection = class(TEnumerable<Vcl.Themes.TList<Vcl.Themes.TStyleHookClass>>)
  published
    //procedure TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TValueCollection.ToArray(?:?);//00590334
    procedure TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TValueCollection.GetEnumerator;//00590324
    constructor sub_005902E8(ADictionary:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>);//005902E8
  public
    FDictionary:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>;//f4
    procedure v0; virtual;//v0//005902E0
    //procedure TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TValueCollection.ToArray(?:?); virtual;//v4//00590334
  end;
  TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TPairEnumerator = class(TEnumerator<Vcl.Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>>)
  published
    function TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TPairEnumerator.MoveNext:Boolean;//00590474
    constructor Create;//00590430
  public
    FDictionary:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00590414
    procedure v4; virtual;//v4//00590428
  end;
  TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>> = class(TEnumerable<Vcl.Themes.TPair<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>>)
  published
    function TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.ContainsKey(Key:TClass):Boolean;//0058FE50
    procedure TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.Clear;//0058FD84
    //procedure TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.ToArray(?:?);//0058FE74
    function TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.GetItem(Key:TClass):TList<Vcl.Themes.TStyleHookClass>;//0058FAE0
    function TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.GetEnumerator:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TPairEnumerator;//0058FECC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_0058FBF4(ACapacity:Integer);//0058FBF4
    constructor sub_0058FC2C(ACapacity:Integer; AComparer:IEqualityComparer<System.TClass>);//0058FC2C
    procedure TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.Add(Key:TClass; Value:TList<Vcl.Themes.TStyleHookClass>);//0058FD20
    destructor TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.Destroy();//0058FCE4
  public
    FItems:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TItemArray;//f4
    FCount:Integer;//f8
    FComparer:IEqualityComparer<System.TClass>;//fC
    FGrowThreshold:Integer;//f10
    FOnKeyNotify:TCollectionNotifyEvent<System.TClass>;//f18
    FOnValueNotify:TCollectionNotifyEvent<System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>;//f20
    FKeyCollection:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TKeyCollection;//f28
    FValueCollection:TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TValueCollection;//f2C
    destructor TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.Destroy(); virtual;//0058FCE4
    procedure v0; virtual;//v0//0058FBBC
    //procedure TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.ToArray(?:?); virtual;//v4//0058FE74
    //procedure v8(?:?); virtual;//v8//0058FBC4
    //procedure vC(?:?); virtual;//vC//0058FBDC
  end;
  TPair<System.string,Vcl.Themes.TSysStyleHookClass> = TPair<System.string,Vcl.Themes.TSysStyleHookClass> = record//size=8
f0:string;//f0
end;
Key:string;//f0
Value:TSysStyleHookClass;//f4
end;
//Methods:
Create(AKey:string;AValue:TSysStyleHookClass);//0079EC18;
  TArray<Vcl.Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>> = array of TPair<System.string,Vcl.Themes.TSysStyleHookClass>;
//elSize = 8;
  TEnumerator<Vcl.Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>> = class(TObject)
  published
    function Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>>.MoveNext:Boolean;//005906B4
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>> = class(TObject)
  published
    //procedure Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>>.ToArray(?:?);//005905BC
    function Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>>.GetEnumerator:TEnumerator<Vcl.Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>>;//005905B4
    destructor Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>>.Destroy();//00590590
  public
    destructor Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>>.Destroy(); virtual;//00590590
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>>.ToArray(?:?); virtual;//v4//005905BC
  end;
  TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TItem = TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TItem = record//size=C
f4:string;//f4
end;
HashCode:Integer;//f0
Key:string;//f4
Value:TSysStyleHookClass;//f8
end;;
  TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TItemArray = array of TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TItem;
//elSize = C;
  TCollectionNotifyEvent<System.string> = procedure(Sender:TObject; const Item:string; Action:TCollectionNotification) of object;;
  TCollectionNotifyEvent<Vcl.Themes.TSysStyleHookClass> = procedure(Sender:TObject; const Item:TSysStyleHookClass; Action:TCollectionNotification) of object;;
  TEnumerator<System.string> = class(TObject)
  published
    function string>.MoveNext:Boolean;//00590D98
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.string> = class(TObject)
  published
    //procedure string>.ToArray(?:?);//00590CB0
    function string>.GetEnumerator:TEnumerator<System.string>;//00590CA8
    destructor string>.Destroy();//00590C84
  public
    destructor string>.Destroy(); virtual;//00590C84
    procedure v0; virtual; abstract;//v0//00405554
    //procedure string>.ToArray(?:?); virtual;//v4//00590CB0
  end;
  TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TKeyEnumerator = class(TEnumerator<System.string>)
  published
    function string,Vcl.Themes.TSysStyleHookClass>.TKeyEnumerator.MoveNext:Boolean;//00590E94
    constructor sub_00590E50(ADictionary:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>);//00590E50
  public
    FDictionary:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00590E34
    procedure v4; virtual;//v4//00590E48
  end;
  TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TKeyCollection = class(TEnumerable<System.string>)
  published
    //procedure string,Vcl.Themes.TSysStyleHookClass>.TKeyCollection.ToArray(?:?);//00590DFC
    procedure string,Vcl.Themes.TSysStyleHookClass>.TKeyCollection.GetEnumerator;//00590DEC
    constructor sub_00590DB0(ADictionary:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>);//00590DB0
  public
    FDictionary:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>;//f4
    procedure v0; virtual;//v0//00590DA8
    //procedure string,Vcl.Themes.TSysStyleHookClass>.TKeyCollection.ToArray(?:?); virtual;//v4//00590DFC
  end;
  TArray<Vcl.Themes.TSysStyleHookClass> = array of TSysStyleHookClass;
//elSize = 4;
  TEnumerator<Vcl.Themes.TSysStyleHookClass> = class(TObject)
  published
    function Themes.TSysStyleHookClass>.MoveNext:Boolean;//00591038
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TSysStyleHookClass> = class(TObject)
  published
    //procedure Themes.TSysStyleHookClass>.ToArray(?:?);//00590F84
    function Themes.TSysStyleHookClass>.GetEnumerator:TEnumerator<Vcl.Themes.TSysStyleHookClass>;//00590F7C
    destructor Themes.TSysStyleHookClass>.Destroy();//00590F58
  public
    destructor Themes.TSysStyleHookClass>.Destroy(); virtual;//00590F58
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TSysStyleHookClass>.ToArray(?:?); virtual;//v4//00590F84
  end;
  TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TValueEnumerator = class(TEnumerator<Vcl.Themes.TSysStyleHookClass>)
  published
    function string,Vcl.Themes.TSysStyleHookClass>.TValueEnumerator.MoveNext:Boolean;//0059111C
    constructor sub_005910D8(ADictionary:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>);//005910D8
  public
    FDictionary:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//005910C8
    procedure v4; virtual;//v4//005910D0
  end;
  TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TValueCollection = class(TEnumerable<Vcl.Themes.TSysStyleHookClass>)
  published
    //procedure string,Vcl.Themes.TSysStyleHookClass>.TValueCollection.ToArray(?:?);//0059109C
    procedure string,Vcl.Themes.TSysStyleHookClass>.TValueCollection.GetEnumerator;//0059108C
    constructor sub_00591050(ADictionary:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>);//00591050
  public
    FDictionary:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>;//f4
    procedure v0; virtual;//v0//00591048
    //procedure string,Vcl.Themes.TSysStyleHookClass>.TValueCollection.ToArray(?:?); virtual;//v4//0059109C
  end;
  TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TPairEnumerator = class(TEnumerator<Vcl.Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>>)
  published
    function string,Vcl.Themes.TSysStyleHookClass>.TPairEnumerator.MoveNext:Boolean;//005911E8
    constructor sub_005911A4(ADictionary:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>);//005911A4
  public
    FDictionary:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00591188
    procedure v4; virtual;//v4//0059119C
  end;
  TDictionary<System.string,Vcl.Themes.TSysStyleHookClass> = class(TEnumerable<Vcl.Themes.TPair<System.string,Vcl.Themes.TSysStyleHookClass>>)
  published
    procedure string,Vcl.Themes.TSysStyleHookClass>.Clear;//00590A8C
    //procedure string,Vcl.Themes.TSysStyleHookClass>.ToArray(?:?);//00590B58
    procedure string,Vcl.Themes.TSysStyleHookClass>.GetEnumerator;//00590BB0
    destructor string,Vcl.Themes.TSysStyleHookClass>.Destroy();//00590A50
    constructor sub_00590960(ACapacity:Integer);//00590960
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00590998(ACapacity:Integer; AComparer:IEqualityComparer<System.string>);//00590998
  public
    FItems:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TItemArray;//f4
    FCount:Integer;//f8
    FComparer:IEqualityComparer<System.string>;//fC
    FGrowThreshold:Integer;//f10
    FOnKeyNotify:TCollectionNotifyEvent<System.string>;//f18
    FOnValueNotify:TCollectionNotifyEvent<Vcl.Themes.TSysStyleHookClass>;//f20
    FKeyCollection:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TKeyCollection;//f28
    FValueCollection:TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>.TValueCollection;//f2C
    destructor string,Vcl.Themes.TSysStyleHookClass>.Destroy(); virtual;//00590A50
    procedure v0; virtual;//v0//00590928
    //procedure string,Vcl.Themes.TSysStyleHookClass>.ToArray(?:?); virtual;//v4//00590B58
    //procedure v8(?:?); virtual;//v8//00590930
    //procedure vC(?:?); virtual;//vC//00590948
  end;
  TObjectDictionary<System.string,Vcl.Themes.TSysStyleHookClass> = class(TDictionary<System.string,Vcl.Themes.TSysStyleHookClass>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FOwnerships:TDictionaryOwnerships;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//00591220
    //procedure vC(?:?; ?:?); virtual;//vC//00591250
  end;
  TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook> = TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook> = record//size=8
Key:HWND;//f0
Value:TSysStyleHook;//f4
end;
//Methods:
Create(AKey:HWND;AValue:TSysStyleHook);//0079EC18;
  TArray<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>> = array of TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>;
//elSize = 8;
  TEnumerator<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>> = class(TObject)
  published
    function Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>>.MoveNext:Boolean;//00591404
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>> = class(TObject)
  published
    //procedure Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>>.ToArray(?:?);//00591348
    function Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>>.GetEnumerator:TEnumerator<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>>;//00591340
    destructor Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>>.Destroy();//0059131C
  public
    destructor Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>>.Destroy(); virtual;//0059131C
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>>.ToArray(?:?); virtual;//v4//00591348
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TItem = TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TItem = record//size=C
HashCode:Integer;//f0
Key:HWND;//f4
Value:TSysStyleHook;//f8
end;;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TItemArray = array of TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TItem;
//elSize = C;
  TCollectionNotifyEvent<Winapi.Windows.HWND> = procedure(Sender:TObject; const Item:HWND; Action:TCollectionNotification) of object;;
  TCollectionNotifyEvent<Vcl.Themes.TSysStyleHook> = procedure(Sender:TObject; const Item:TSysStyleHook; Action:TCollectionNotification) of object;;
  TArray<Winapi.Windows.HWND> = array of HWND;
//elSize = 4
//varType equivalent: varInteger;
  TEnumerator<Winapi.Windows.HWND> = class(TObject)
  published
    function Windows.HWND>.MoveNext:Boolean;//00591B94
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Winapi.Windows.HWND> = class(TObject)
  published
    //procedure Windows.HWND>.ToArray(?:?);//00591AE0
    function Windows.HWND>.GetEnumerator:TEnumerator<Winapi.Windows.HWND>;//00591AD8
    destructor Windows.HWND>.Destroy();//00591AB4
  public
    destructor Windows.HWND>.Destroy(); virtual;//00591AB4
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Windows.HWND>.ToArray(?:?); virtual;//v4//00591AE0
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TKeyEnumerator = class(TEnumerator<Winapi.Windows.HWND>)
  published
    function Windows.HWND,Vcl.Themes.TSysStyleHook>.TKeyEnumerator.MoveNext:Boolean;//00591C78
    constructor sub_00591C34(ADictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>);//00591C34
  public
    FDictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00591C24
    procedure v4; virtual;//v4//00591C2C
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TKeyCollection = class(TEnumerable<Winapi.Windows.HWND>)
  published
    //procedure Windows.HWND,Vcl.Themes.TSysStyleHook>.TKeyCollection.ToArray(?:?);//00591BF8
    procedure Windows.HWND,Vcl.Themes.TSysStyleHook>.TKeyCollection.GetEnumerator;//00591BE8
    constructor sub_00591BAC(ADictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>);//00591BAC
  public
    FDictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>;//f4
    procedure v0; virtual;//v0//00591BA4
    //procedure Windows.HWND,Vcl.Themes.TSysStyleHook>.TKeyCollection.ToArray(?:?); virtual;//v4//00591BF8
  end;
  TArray<Vcl.Themes.TSysStyleHook> = array of TSysStyleHook;
//elSize = 4;
  TEnumerator<Vcl.Themes.TSysStyleHook> = class(TObject)
  published
    function Themes.TSysStyleHook>.MoveNext:Boolean;//00591E1C
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TSysStyleHook> = class(TObject)
  published
    //procedure Themes.TSysStyleHook>.ToArray(?:?);//00591D68
    function Themes.TSysStyleHook>.GetEnumerator:TEnumerator<Vcl.Themes.TSysStyleHook>;//00591D60
    destructor Themes.TSysStyleHook>.Destroy();//00591D3C
  public
    destructor Themes.TSysStyleHook>.Destroy(); virtual;//00591D3C
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TSysStyleHook>.ToArray(?:?); virtual;//v4//00591D68
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TValueEnumerator = class(TEnumerator<Vcl.Themes.TSysStyleHook>)
  published
    function Windows.HWND,Vcl.Themes.TSysStyleHook>.TValueEnumerator.MoveNext:Boolean;//00591F00
    constructor sub_00591EBC(ADictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>);//00591EBC
  public
    FDictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00591EAC
    procedure v4; virtual;//v4//00591EB4
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TValueCollection = class(TEnumerable<Vcl.Themes.TSysStyleHook>)
  published
    //procedure Windows.HWND,Vcl.Themes.TSysStyleHook>.TValueCollection.ToArray(?:?);//00591E80
    function Windows.HWND,Vcl.Themes.TSysStyleHook>.TValueCollection.GetEnumerator:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TValueEnumerator;//00591E70
    constructor sub_00591E34(ADictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>);//00591E34
  public
    FDictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>;//f4
    procedure v0; virtual;//v0//00591E2C
    //procedure Windows.HWND,Vcl.Themes.TSysStyleHook>.TValueCollection.ToArray(?:?); virtual;//v4//00591E80
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TPairEnumerator = class(TEnumerator<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>>)
  published
    function Windows.HWND,Vcl.Themes.TSysStyleHook>.TPairEnumerator.MoveNext:Boolean;//00591FC0
    constructor sub_00591F7C(ADictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>);//00591F7C
  public
    FDictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00591F60
    procedure v4; virtual;//v4//00591F74
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook> = class(TEnumerable<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>>)
  published
    function Windows.HWND,Vcl.Themes.TSysStyleHook>.ContainsKey(Key:HWND):Boolean;//0059199C
    procedure Windows.HWND,Vcl.Themes.TSysStyleHook>.Clear;//005918D0
    procedure Windows.HWND,Vcl.Themes.TSysStyleHook>.GetEnumerator;//00591A18
    //procedure Windows.HWND,Vcl.Themes.TSysStyleHook>.ToArray(?:?);//005919C0
    procedure Windows.HWND,Vcl.Themes.TSysStyleHook>.Add(Key:HWND; Value:TSysStyleHook);//0059186C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00591740(ACapacity:Integer);//00591740
    destructor Windows.HWND,Vcl.Themes.TSysStyleHook>.Destroy();//00591830
    constructor sub_00591778(ACapacity:Integer; AComparer:IEqualityComparer<Winapi.Windows.HWND>);//00591778
  public
    FItems:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TItemArray;//f4
    FCount:Integer;//f8
    FComparer:IEqualityComparer<Winapi.Windows.HWND>;//fC
    FGrowThreshold:Integer;//f10
    FOnKeyNotify:TCollectionNotifyEvent<Winapi.Windows.HWND>;//f18
    FOnValueNotify:TCollectionNotifyEvent<Vcl.Themes.TSysStyleHook>;//f20
    FKeyCollection:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TKeyCollection;//f28
    FValueCollection:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TValueCollection;//f2C
    destructor Windows.HWND,Vcl.Themes.TSysStyleHook>.Destroy(); virtual;//00591830
    procedure v0; virtual;//v0//00591708
    //procedure Windows.HWND,Vcl.Themes.TSysStyleHook>.ToArray(?:?); virtual;//v4//005919C0
    //procedure v8(?:?); virtual;//v8//00591710
    //procedure vC(?:?); virtual;//vC//00591728
  end;
  TObjectDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook> = class(TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FOwnerships:TDictionaryOwnerships;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//00591FF8
    //procedure vC(?:?; ?:?); virtual;//vC//00592028
  end;
  TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo> = TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo> = record//size=10
Key:HWND;//f0
Value:TChildControlInfo;//f4
end;
//Methods:
Create(AKey:HWND;AValue:TChildControlInfo);//0079EC18;
  TArray<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>> = array of TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>;
//elSize = 10;
  TEnumerator<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>> = class(TObject)
  published
    function Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>>.MoveNext:Boolean;//005921DC
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>> = class(TObject)
  published
    //procedure Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>>.ToArray(?:?);//00592120
    function Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>>.GetEnumerator:TEnumerator<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>>;//00592118
    destructor Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>>.Destroy();//005920F4
  public
    destructor Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>>.Destroy(); virtual;//005920F4
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>>.ToArray(?:?); virtual;//v4//00592120
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TItem = TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TItem = record//size=14
HashCode:Integer;//f0
Key:HWND;//f4
Value:TChildControlInfo;//f8
end;;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TItemArray = array of TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TItem;
//elSize = 14;
  TCollectionNotifyEvent<Vcl.Themes.TChildControlInfo> = procedure(Sender:TObject; const Item:TChildControlInfo; Action:TCollectionNotification) of object;;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TKeyEnumerator = class(TEnumerator<Winapi.Windows.HWND>)
  published
    function Windows.HWND,Vcl.Themes.TChildControlInfo>.TKeyEnumerator.MoveNext:Boolean;//00592848
    constructor sub_00592804(ADictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>);//00592804
  public
    FDictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//005927F4
    procedure v4; virtual;//v4//005927FC
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TKeyCollection = class(TEnumerable<Winapi.Windows.HWND>)
  published
    //procedure Windows.HWND,Vcl.Themes.TChildControlInfo>.TKeyCollection.ToArray(?:?);//005927C8
    function Windows.HWND,Vcl.Themes.TChildControlInfo>.TKeyCollection.GetEnumerator:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TKeyEnumerator;//005927B8
    constructor sub_0059277C(ADictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>);//0059277C
  public
    FDictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>;//f4
    procedure v0; virtual;//v0//00592774
    //procedure Windows.HWND,Vcl.Themes.TChildControlInfo>.TKeyCollection.ToArray(?:?); virtual;//v4//005927C8
  end;
  TArray<Vcl.Themes.TChildControlInfo> = array of TChildControlInfo;
//elSize = C;
  TEnumerator<Vcl.Themes.TChildControlInfo> = class(TObject)
  published
    function Themes.TChildControlInfo>.MoveNext:Boolean;//00592A0C
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TChildControlInfo> = class(TObject)
  published
    //procedure Themes.TChildControlInfo>.ToArray(?:?);//00592950
    function Themes.TChildControlInfo>.GetEnumerator:TEnumerator<Vcl.Themes.TChildControlInfo>;//00592948
    destructor Themes.TChildControlInfo>.Destroy();//00592924
  public
    destructor Themes.TChildControlInfo>.Destroy(); virtual;//00592924
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TChildControlInfo>.ToArray(?:?); virtual;//v4//00592950
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TValueEnumerator = class(TEnumerator<Vcl.Themes.TChildControlInfo>)
  published
    function Windows.HWND,Vcl.Themes.TChildControlInfo>.TValueEnumerator.MoveNext:Boolean;//00592B0C
    constructor sub_00592AC8(ADictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>);//00592AC8
  public
    FDictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00592AAC
    procedure v4; virtual;//v4//00592AC0
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TValueCollection = class(TEnumerable<Vcl.Themes.TChildControlInfo>)
  published
    //procedure Windows.HWND,Vcl.Themes.TChildControlInfo>.TValueCollection.ToArray(?:?);//00592A70
    procedure Windows.HWND,Vcl.Themes.TChildControlInfo>.TValueCollection.GetEnumerator;//00592A60
    constructor sub_00592A24(ADictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>);//00592A24
  public
    FDictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>;//f4
    procedure v0; virtual;//v0//00592A1C
    //procedure Windows.HWND,Vcl.Themes.TChildControlInfo>.TValueCollection.ToArray(?:?); virtual;//v4//00592A70
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TPairEnumerator = class(TEnumerator<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>>)
  published
    function Windows.HWND,Vcl.Themes.TChildControlInfo>.TPairEnumerator.MoveNext:Boolean;//00592BDC
    constructor sub_00592B98(ADictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>);//00592B98
  public
    FDictionary:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00592B7C
    procedure v4; virtual;//v4//00592B90
  end;
  TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo> = class(TEnumerable<Vcl.Themes.TPair<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>>)
  published
    //procedure Windows.HWND,Vcl.Themes.TChildControlInfo>.ToArray(?:?);//00592704
    procedure Windows.HWND,Vcl.Themes.TChildControlInfo>.Clear;//00592638
    //procedure Windows.HWND,Vcl.Themes.TChildControlInfo>.GetItem(Key:HWND; ?:?);//00592424
    procedure Windows.HWND,Vcl.Themes.TChildControlInfo>.GetEnumerator;//0059275C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_0059250C(ACapacity:Integer);//0059250C
    destructor Windows.HWND,Vcl.Themes.TChildControlInfo>.Destroy();//005925FC
    constructor sub_00592544(ACapacity:Integer; AComparer:IEqualityComparer<Winapi.Windows.HWND>);//00592544
  public
    FItems:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TItemArray;//f4
    FCount:Integer;//f8
    FComparer:IEqualityComparer<Winapi.Windows.HWND>;//fC
    FGrowThreshold:Integer;//f10
    FOnKeyNotify:TCollectionNotifyEvent<Winapi.Windows.HWND>;//f18
    FOnValueNotify:TCollectionNotifyEvent<Vcl.Themes.TChildControlInfo>;//f20
    FKeyCollection:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TKeyCollection;//f28
    FValueCollection:TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>.TValueCollection;//f2C
    destructor Windows.HWND,Vcl.Themes.TChildControlInfo>.Destroy(); virtual;//005925FC
    procedure v0; virtual;//v0//005924D4
    //procedure Windows.HWND,Vcl.Themes.TChildControlInfo>.ToArray(?:?); virtual;//v4//00592704
    //procedure v8(?:?); virtual;//v8//005924DC
    //procedure vC(?:?); virtual;//vC//005924F4
  end;
  TObjectDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo> = class(TDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FOwnerships:TDictionaryOwnerships;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//00592C14
    //procedure vC(?:?; ?:?); virtual;//vC//00592C44
  end;
  TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo> = TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo> = record//size=C
f0:string;//f0
end;
Key:string;//f0
Value:TStyleManager.TSourceInfo;//f4
end;
//Methods:
Create(AKey:string;AValue:TStyleManager.TSourceInfo);//0079EC18;
  TArray<Vcl.Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>> = array of TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>;
//elSize = C;
  TEnumerator<Vcl.Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>> = class(TObject)
  published
    function Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>>.MoveNext:Boolean;//00592E74
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>> = class(TObject)
  published
    //procedure Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>>.ToArray(?:?);//00592D7C
    function Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>>.GetEnumerator:TEnumerator<Vcl.Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>>;//00592D74
    destructor Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>>.Destroy();//00592D50
  public
    destructor Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>>.Destroy(); virtual;//00592D50
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>>.ToArray(?:?); virtual;//v4//00592D7C
  end;
  TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TItem = TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TItem = record//size=10
f4:string;//f4
end;
HashCode:Integer;//f0
Key:string;//f4
Value:TStyleManager.TSourceInfo;//f8
end;;
  TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TItemArray = array of TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TItem;
//elSize = 10;
  TCollectionNotifyEvent<Vcl.Themes.TStyleManager.TSourceInfo> = procedure(Sender:TObject; const Item:TStyleManager.TSourceInfo; Action:TCollectionNotification) of object;;
  TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TKeyEnumerator = class(TEnumerator<System.string>)
  published
    function string,Vcl.Themes.TStyleManager.TSourceInfo>.TKeyEnumerator.MoveNext:Boolean;//00593484
    constructor sub_00593440(ADictionary:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>);//00593440
  public
    FDictionary:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00593424
    procedure v4; virtual;//v4//00593438
  end;
  TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TKeyCollection = class(TEnumerable<System.string>)
  published
    //procedure string,Vcl.Themes.TStyleManager.TSourceInfo>.TKeyCollection.ToArray(?:?);//005933EC
    procedure string,Vcl.Themes.TStyleManager.TSourceInfo>.TKeyCollection.GetEnumerator;//005933DC
    constructor sub_005933A0(ADictionary:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>);//005933A0
  public
    FDictionary:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>;//f4
    procedure v0; virtual;//v0//00593398
    //procedure string,Vcl.Themes.TStyleManager.TSourceInfo>.TKeyCollection.ToArray(?:?); virtual;//v4//005933EC
  end;
  TArray<Vcl.Themes.TStyleManager.TSourceInfo> = array of TStyleManager.TSourceInfo;
//elSize = 8;
  TEnumerator<Vcl.Themes.TStyleManager.TSourceInfo> = class(TObject)
  published
    function Themes.TStyleManager.TSourceInfo>.MoveNext:Boolean;//00593640
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TStyleManager.TSourceInfo> = class(TObject)
  published
    //procedure Themes.TStyleManager.TSourceInfo>.ToArray(?:?);//00593584
    function Themes.TStyleManager.TSourceInfo>.GetEnumerator:TEnumerator<Vcl.Themes.TStyleManager.TSourceInfo>;//0059357C
    destructor Themes.TStyleManager.TSourceInfo>.Destroy();//00593558
  public
    destructor Themes.TStyleManager.TSourceInfo>.Destroy(); virtual;//00593558
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TStyleManager.TSourceInfo>.ToArray(?:?); virtual;//v4//00593584
  end;
  TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TValueEnumerator = class(TEnumerator<Vcl.Themes.TStyleManager.TSourceInfo>)
  published
    function string,Vcl.Themes.TStyleManager.TSourceInfo>.TValueEnumerator.MoveNext:Boolean;//00593738
    constructor sub_005936F4(ADictionary:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>);//005936F4
  public
    FDictionary:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//005936D8
    procedure v4; virtual;//v4//005936EC
  end;
  TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TValueCollection = class(TEnumerable<Vcl.Themes.TStyleManager.TSourceInfo>)
  published
    //procedure string,Vcl.Themes.TStyleManager.TSourceInfo>.TValueCollection.ToArray(?:?);//005936A4
    procedure string,Vcl.Themes.TStyleManager.TSourceInfo>.TValueCollection.GetEnumerator;//00593694
    constructor sub_00593658(ADictionary:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>);//00593658
  public
    FDictionary:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>;//f4
    procedure v0; virtual;//v0//00593650
    //procedure string,Vcl.Themes.TStyleManager.TSourceInfo>.TValueCollection.ToArray(?:?); virtual;//v4//005936A4
  end;
  TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TPairEnumerator = class(TEnumerator<Vcl.Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>>)
  published
    function string,Vcl.Themes.TStyleManager.TSourceInfo>.TPairEnumerator.MoveNext:Boolean;//00593808
    constructor sub_005937C4(ADictionary:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>);//005937C4
  public
    FDictionary:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//005937A8
    procedure v4; virtual;//v4//005937BC
  end;
  TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo> = class(TEnumerable<Vcl.Themes.TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>>)
  published
    procedure string,Vcl.Themes.TStyleManager.TSourceInfo>.Clear;//0059325C
    //procedure string,Vcl.Themes.TStyleManager.TSourceInfo>.ToArray(?:?);//00593328
    function string,Vcl.Themes.TStyleManager.TSourceInfo>.GetEnumerator:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TPairEnumerator;//00593380
    destructor string,Vcl.Themes.TStyleManager.TSourceInfo>.Destroy();//00593220
    constructor string,Vcl.Themes.TStyleManager.TSourceInfo>.Create;//00593130
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00593168(ACapacity:Integer; AComparer:IEqualityComparer<System.string>);//00593168
  public
    FItems:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TItemArray;//f4
    FCount:Integer;//f8
    FComparer:IEqualityComparer<System.string>;//fC
    FGrowThreshold:Integer;//f10
    FOnKeyNotify:TCollectionNotifyEvent<System.string>;//f18
    FOnValueNotify:TCollectionNotifyEvent<Vcl.Themes.TStyleManager.TSourceInfo>;//f20
    FKeyCollection:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TKeyCollection;//f28
    FValueCollection:TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TValueCollection;//f2C
    destructor string,Vcl.Themes.TStyleManager.TSourceInfo>.Destroy(); virtual;//00593220
    procedure v0; virtual;//v0//005930F8
    //procedure string,Vcl.Themes.TStyleManager.TSourceInfo>.ToArray(?:?); virtual;//v4//00593328
    //procedure v8(?:?); virtual;//v8//00593100
    //procedure vC(?:?); virtual;//vC//00593118
  end;
  TArray<Vcl.Themes.TStyleManager.TStyleClassDescriptor> = array of TStyleManager.TStyleClassDescriptor;
//elSize = 10;
  TEnumerator<Vcl.Themes.TStyleManager.TStyleClassDescriptor> = class(TObject)
  published
    function Themes.TStyleManager.TStyleClassDescriptor>.MoveNext:Boolean;//00593964
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TStyleManager.TStyleClassDescriptor> = class(TObject)
  published
    //procedure Themes.TStyleManager.TStyleClassDescriptor>.ToArray(?:?);//0059386C
    function Themes.TStyleManager.TStyleClassDescriptor>.GetEnumerator:TEnumerator<Vcl.Themes.TStyleManager.TStyleClassDescriptor>;//00593864
    destructor Themes.TStyleManager.TStyleClassDescriptor>.Destroy();//00593840
  public
    destructor Themes.TStyleManager.TStyleClassDescriptor>.Destroy(); virtual;//00593840
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TStyleManager.TStyleClassDescriptor>.ToArray(?:?); virtual;//v4//0059386C
  end;
  TList<Vcl.Themes.TStyleManager.TStyleClassDescriptor>.arrayofT = array of TStyleManager.TStyleClassDescriptor;
//elSize = 10;
  TCollectionNotifyEvent<Vcl.Themes.TStyleManager.TStyleClassDescriptor> = procedure(Sender:TObject; const Item:TStyleManager.TStyleClassDescriptor; Action:TCollectionNotification) of object;;
  TList<Vcl.Themes.TStyleManager.TStyleClassDescriptor>.TEnumerator = class(TEnumerator<Vcl.Themes.TStyleManager.TStyleClassDescriptor>)
  published
    function Themes.TStyleManager.TStyleClassDescriptor>.TEnumerator.MoveNext:Boolean;//00593CD0
    constructor sub_00593C8C(AList:TList<Vcl.Themes.TStyleManager.TStyleClassDescriptor>);//00593C8C
  public
    FList:TList<Vcl.Themes.TStyleManager.TStyleClassDescriptor>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00593C70
    procedure v4; virtual;//v4//00593C84
  end;
  TList<Vcl.Themes.TStyleManager.TStyleClassDescriptor> = class(TEnumerable<Vcl.Themes.TStyleManager.TStyleClassDescriptor>)
  published
    procedure Themes.TStyleManager.TStyleClassDescriptor>.Add(Value:TStyleManager.TStyleClassDescriptor);//00593BAC
    //procedure Themes.TStyleManager.TStyleClassDescriptor>.Error(Msg:string; Data:NativeInt; ?:?);//00593B74
    procedure Themes.TStyleManager.TStyleClassDescriptor>.GetEnumerator;//00593BD4
    //procedure Themes.TStyleManager.TStyleClassDescriptor>.ToArray(?:?);//00593BC0
    constructor sub_00593A78(AComparer:IComparer<Vcl.Themes.TStyleManager.TStyleClassDescriptor>);//00593A78
    constructor Themes.TStyleManager.TStyleClassDescriptor>.Create();//00593A00
    destructor Themes.TStyleManager.TStyleClassDescriptor>.Destroy();//00593B28
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<Vcl.Themes.TStyleManager.TStyleClassDescriptor>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<Vcl.Themes.TStyleManager.TStyleClassDescriptor>;//fC
    FOnNotify:TCollectionNotifyEvent<Vcl.Themes.TStyleManager.TStyleClassDescriptor>;//f10
    FArrayManager:TArrayManager<Vcl.Themes.TStyleManager.TStyleClassDescriptor>;//f18
    FItems:TList<Vcl.Themes.TStyleManager.TStyleClassDescriptor>.arrayofT;//f20
    FComparer:IComparer<Vcl.Themes.TStyleManager.TStyleClassDescriptor>;//f24
    FOnNotify:TCollectionNotifyEvent<Vcl.Themes.TStyleManager.TStyleClassDescriptor>;//f28
    destructor Themes.TStyleManager.TStyleClassDescriptor>.Destroy(); virtual;//00593B28
    procedure v0; virtual;//v0//005939E0
    //procedure Themes.TStyleManager.TStyleClassDescriptor>.ToArray(?:?); virtual;//v4//00593BC0
    //procedure v8(?:?); virtual;//v8//005939E8
    //procedure Themes.TStyleManager.TStyleClassDescriptor>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//00593B74
  end;
  TArray<Vcl.Themes.TCustomStyleEngineClass> = array of TCustomStyleEngineClass;
//elSize = 4;
  TEnumerator<Vcl.Themes.TCustomStyleEngineClass> = class(TObject)
  published
    function Themes.TCustomStyleEngineClass>.MoveNext:Boolean;//00593DD0
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TCustomStyleEngineClass> = class(TObject)
  published
    //procedure Themes.TCustomStyleEngineClass>.ToArray(?:?);//00593D1C
    function Themes.TCustomStyleEngineClass>.GetEnumerator:TEnumerator<Vcl.Themes.TCustomStyleEngineClass>;//00593D14
    destructor Themes.TCustomStyleEngineClass>.Destroy();//00593CF0
  public
    destructor Themes.TCustomStyleEngineClass>.Destroy(); virtual;//00593CF0
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TCustomStyleEngineClass>.ToArray(?:?); virtual;//v4//00593D1C
  end;
  TList<Vcl.Themes.TCustomStyleEngineClass>.arrayofT = array of TCustomStyleEngineClass;
//elSize = 4;
  TCollectionNotifyEvent<Vcl.Themes.TCustomStyleEngineClass> = procedure(Sender:TObject; const Item:TCustomStyleEngineClass; Action:TCollectionNotification) of object;;
  TList<Vcl.Themes.TCustomStyleEngineClass>.TEnumerator = class(TEnumerator<Vcl.Themes.TCustomStyleEngineClass>)
  published
    function Themes.TCustomStyleEngineClass>.TEnumerator.MoveNext:Boolean;//005940B8
    constructor sub_00594074(AList:TList<Vcl.Themes.TCustomStyleEngineClass>);//00594074
  public
    FList:TList<Vcl.Themes.TCustomStyleEngineClass>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00594064
    procedure v4; virtual;//v4//0059406C
  end;
  TList<Vcl.Themes.TCustomStyleEngineClass> = class(TEnumerable<Vcl.Themes.TCustomStyleEngineClass>)
  published
    procedure Themes.TCustomStyleEngineClass>.Add(Value:TCustomStyleEngineClass);//00594014
    //procedure Themes.TCustomStyleEngineClass>.Error(Msg:string; Data:NativeInt; ?:?);//00593FDC
    procedure Themes.TCustomStyleEngineClass>.GetEnumerator;//00594038
    //procedure Themes.TCustomStyleEngineClass>.ToArray(?:?);//00594024
    constructor sub_00593EE0(AComparer:IComparer<Vcl.Themes.TCustomStyleEngineClass>);//00593EE0
    constructor Themes.TCustomStyleEngineClass>.Create();//00593E68
    destructor Themes.TCustomStyleEngineClass>.Destroy();//00593F90
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<Vcl.Themes.TCustomStyleEngineClass>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<Vcl.Themes.TCustomStyleEngineClass>;//fC
    FOnNotify:TCollectionNotifyEvent<Vcl.Themes.TCustomStyleEngineClass>;//f10
    FArrayManager:TArrayManager<Vcl.Themes.TCustomStyleEngineClass>;//f18
    FItems:TList<Vcl.Themes.TCustomStyleEngineClass>.arrayofT;//f20
    FComparer:IComparer<Vcl.Themes.TCustomStyleEngineClass>;//f24
    FOnNotify:TCollectionNotifyEvent<Vcl.Themes.TCustomStyleEngineClass>;//f28
    destructor Themes.TCustomStyleEngineClass>.Destroy(); virtual;//00593F90
    procedure v0; virtual;//v0//00593E48
    //procedure Themes.TCustomStyleEngineClass>.ToArray(?:?); virtual;//v4//00594024
    //procedure v8(?:?); virtual;//v8//00593E50
    //procedure Themes.TCustomStyleEngineClass>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//00593FDC
  end;
  TArray<Vcl.Themes.TCustomStyleServices> = array of TCustomStyleServices;
//elSize = 4;
  TEnumerator<Vcl.Themes.TCustomStyleServices> = class(TObject)
  published
    function Themes.TCustomStyleServices>.MoveNext:Boolean;//005941B8
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<Vcl.Themes.TCustomStyleServices> = class(TObject)
  published
    //procedure Themes.TCustomStyleServices>.ToArray(?:?);//00594104
    function Themes.TCustomStyleServices>.GetEnumerator:TEnumerator<Vcl.Themes.TCustomStyleServices>;//005940FC
    destructor Themes.TCustomStyleServices>.Destroy();//005940D8
  public
    destructor Themes.TCustomStyleServices>.Destroy(); virtual;//005940D8
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Themes.TCustomStyleServices>.ToArray(?:?); virtual;//v4//00594104
  end;
  TList<Vcl.Themes.TCustomStyleServices>.arrayofT = array of TCustomStyleServices;
//elSize = 4;
  TCollectionNotifyEvent<Vcl.Themes.TCustomStyleServices> = procedure(Sender:TObject; const Item:TCustomStyleServices; Action:TCollectionNotification) of object;;
  TList<Vcl.Themes.TCustomStyleServices>.TEnumerator = class(TEnumerator<Vcl.Themes.TCustomStyleServices>)
  published
    function Themes.TCustomStyleServices>.TEnumerator.MoveNext:Boolean;//005944A0
    constructor sub_0059445C(AList:TList<Vcl.Themes.TCustomStyleServices>);//0059445C
  public
    FList:TList<Vcl.Themes.TCustomStyleServices>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//0059444C
    procedure v4; virtual;//v4//00594454
  end;
  TList<Vcl.Themes.TCustomStyleServices> = class(TEnumerable<Vcl.Themes.TCustomStyleServices>)
  published
    procedure Themes.TCustomStyleServices>.Add(Value:TCustomStyleServices);//005943FC
    //procedure Themes.TCustomStyleServices>.Error(Msg:string; Data:NativeInt; ?:?);//005943C4
    procedure Themes.TCustomStyleServices>.GetEnumerator;//00594420
    //procedure Themes.TCustomStyleServices>.ToArray(?:?);//0059440C
    constructor sub_005942C8(AComparer:IComparer<Vcl.Themes.TCustomStyleServices>);//005942C8
    constructor Themes.TCustomStyleServices>.Create();//00594250
    destructor Themes.TCustomStyleServices>.Destroy();//00594378
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<Vcl.Themes.TCustomStyleServices>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<Vcl.Themes.TCustomStyleServices>;//fC
    FOnNotify:TCollectionNotifyEvent<Vcl.Themes.TCustomStyleServices>;//f10
    FArrayManager:TArrayManager<Vcl.Themes.TCustomStyleServices>;//f18
    FItems:TList<Vcl.Themes.TCustomStyleServices>.arrayofT;//f20
    FComparer:IComparer<Vcl.Themes.TCustomStyleServices>;//f24
    FOnNotify:TCollectionNotifyEvent<Vcl.Themes.TCustomStyleServices>;//f28
    destructor Themes.TCustomStyleServices>.Destroy(); virtual;//00594378
    procedure v0; virtual;//v0//00594230
    //procedure Themes.TCustomStyleServices>.ToArray(?:?); virtual;//v4//0059440C
    //procedure v8(?:?); virtual;//v8//00594238
    //procedure Themes.TCustomStyleServices>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//005943C4
  end;
  EStyleEngineException = class(Exception)
  end;
  ECustomStyleException = class(Exception)
  end;
  EDuplicateStyleException = class(ECustomStyleException)
  end;
  TArray<System.Types.TPoint> = array of TPoint;
//elSize = 8;
  TEnumerator<System.Types.TPoint> = class(TObject)
  published
    function Types.TPoint>.MoveNext:Boolean;//005945A8
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.Types.TPoint> = class(TObject)
  published
    //procedure Types.TPoint>.ToArray(?:?);//005944EC
    function Types.TPoint>.GetEnumerator:TEnumerator<System.Types.TPoint>;//005944E4
    destructor Types.TPoint>.Destroy();//005944C0
  public
    destructor Types.TPoint>.Destroy(); virtual;//005944C0
    procedure v0; virtual; abstract;//v0//00405554
    //procedure Types.TPoint>.ToArray(?:?); virtual;//v4//005944EC
  end;
  TList<System.Types.TPoint>.arrayofT = array of TPoint;
//elSize = 8;
  TCollectionNotifyEvent<System.Types.TPoint> = procedure(Sender:TObject; const Item:TPoint; Action:TCollectionNotification) of object;;
  TList<System.Types.TPoint>.TEnumerator = class(TEnumerator<System.Types.TPoint>)
  published
    function Types.TPoint>.TEnumerator.MoveNext:Boolean;//005948F4
    constructor sub_005948B0(AList:TList<System.Types.TPoint>);//005948B0
  public
    FList:TList<System.Types.TPoint>;//f4
    FIndex:Integer;//f8
    //procedure v0(?:?); virtual;//v0//00594894
    procedure v4; virtual;//v4//005948A8
  end;
  TList<System.Types.TPoint> = class(TEnumerable<System.Types.TPoint>)
  published
    procedure Types.TPoint>.AddRange(Values:TPoint);//00594804
    procedure Types.TPoint>.Add(Value:TPoint);//005947F0
    //procedure Types.TPoint>.InsertRange(Index:Integer; Values:TPoint; ?:?);//00594818
    procedure Types.TPoint>.GetEnumerator;//00594848
    //procedure Types.TPoint>.ToArray(?:?);//00594834
    constructor sub_005946BC(AComparer:IComparer<System.Types.TPoint>);//005946BC
    constructor sub_00594644;//00594644
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Types.TPoint>.Error(Msg:string; Data:NativeInt; ?:?);//005947B8
    destructor Types.TPoint>.Destroy();//0059476C
  public
    FItems:TList<System.Types.TPoint>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.Types.TPoint>;//fC
    FOnNotify:TCollectionNotifyEvent<System.Types.TPoint>;//f10
    FArrayManager:TArrayManager<System.Types.TPoint>;//f18
    FItems:TList<System.Types.TPoint>.arrayofT;//f20
    FComparer:IComparer<System.Types.TPoint>;//f24
    FOnNotify:TCollectionNotifyEvent<System.Types.TPoint>;//f28
    destructor Types.TPoint>.Destroy(); virtual;//0059476C
    procedure v0; virtual;//v0//00594624
    //procedure Types.TPoint>.ToArray(?:?); virtual;//v4//00594834
    //procedure v8(?:?); virtual;//v8//0059462C
    //procedure Types.TPoint>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//005947B8
  end;
    function UnthemedDesigner(AControl:TControl):Boolean;//00585D1C
    function StyleServices:TCustomStyleServices;//00585D88
    //function sub_00585D90(?:TControl):?;//00585D90
    procedure DrawStyleEdge(DC:Windows.HDC; var Rect:Windows.TRect; Edges:TElementEdges; Flags:TElementEdgeFlags);//00585DEC
    //procedure sub_00585E64(?:?; ?:?; ?:?);//00585E64
    //procedure sub_00586090(?:TCanvas; ?:TRect; ?:?; ?:?; ?:?; ?:?);//00586090
    procedure sub_00586318(?:HDC; ?:TRect);//00586318
    constructor Create();//005865F4
    procedure ApplyThemeChange;//0058662C
    function ColorToRGB(Color:TColor; Details:PThemedElementDetails):Cardinal;//00586648
    procedure DoOnThemeChange;//00586650
    function DrawEdge(DC:HDC; Details:TThemedElementDetails; ContentRect:PRect; Flags:TElementEdgeFlags; Edges:TElementEdges; R:TRect):Boolean;//00586664
    function DrawElement(DC:HDC; Details:TThemedElementDetails; ClipRect:PRect; R:TRect):Boolean;//00586698
    function DrawIcon(DC:HDC; Details:TThemedElementDetails; Index:Integer; Images:NativeUInt; R:TRect):Boolean;//005866C4
    function DrawParentBackground(Window:HWND; Target:HDC; Bounds:PRect; OnlyIfTransparent:Boolean; Details:PThemedElementDetails):Boolean;//005866F4
    function DrawParentBackground(Window:HWND; Target:HDC; Bounds:PRect; OnlyIfTransparent:Boolean; Details:TThemedElementDetails):Boolean;//00586710
    function DrawText(DC:HDC; Details:TThemedElementDetails; Flags2:Cardinal; Flags:Cardinal; R:TRect; S:string):Boolean;//0058672C
    function DrawText(DC:HDC; Details:TThemedElementDetails; Color:TColor; Flags:TTextFormat; var R:TRect; S:string):Boolean;//0058677C
    function DrawText(DC:HDC; Details:TThemedElementDetails; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string):Boolean;//00586804
    function GetElementColor(Details:TThemedElementDetails; ElementColor:TElementColor; Color:TColor):Boolean;//00586848
    function GetElementContentRect(DC:HDC; Details:TThemedElementDetails; ContentRect:TRect; BoundingRect:TRect):Boolean;//00586870
    function GetElementMargins(DC:HDC; Details:TThemedElementDetails; Margins:_MARGINS; ElementMargin:TElementMargin):Boolean;//0058689C
    function GetElementRegion(Details:TThemedElementDetails; Rect:TRect; Region:HRGN):Boolean;//005868CC
    function GetElementRegion(DC:HDC; Details:TThemedElementDetails; Region:HRGN; Rect:TRect):Boolean;//005868F4
    function GetElementSize(DC:HDC; Details:TThemedElementDetails; Size:TSize; ElementSize:TElementSize):Boolean;//00586920
    function GetElementSize(DC:HDC; Details:TThemedElementDetails; Size:TSize; ElementSize:TElementSize; Rect:TRect):Boolean;//00586950
    function GetIsSystemStyle:Boolean;//00586980
    function GetStyleColor(Color:TStyleColor):TColor;//00586990
    function GetStyleFontColor(Font:TStyleFont):TColor;//00586998
    function GetSystemColor(Color:TColor):TColor;//005869A0
    function GetFlags:TStyleFlags;//005869A8
    function HasTransparentParts(Details:TThemedElementDetails):Boolean;//005869B4
    function HasElementFixedPosition(Details:TThemedElementDetails):Boolean;//005869D0
    function LoadFromFile(FileName:string):TCustomStyleServices;//005869EC
    procedure PaintBorder(Control:TWinControl; EraseLRCorner:Boolean);//00586A4C
    procedure SaveToFile(FileName:string);//00586BFC
    constructor Create();//00586C54
    destructor Destroy();//00586D30
    function DoColorToRGB(Color:Graphics.TColor; Details:PThemedElementDetails):TColorRef;//00586D60
    function DoDrawEdge(DC:Windows.HDC; Details:TThemedElementDetails; const R:Windows.TRect; Edges:TElementEdges; Flags:TElementEdgeFlags; ContentRect:Windows.PRect):Boolean;//00586D98
    function DoDrawElement(DC:Windows.HDC; Details:TThemedElementDetails; const R:Windows.TRect; ClipRect:Windows.PRect):Boolean;//00586E38
    function DoDrawIcon(DC:Windows.HDC; Details:TThemedElementDetails; const R:Windows.TRect; himl:CommCtrl.HIMAGELIST; Index:Integer):Boolean;//00586EB0
    //function sub_00586F30(?:?; ?:?; ?:?; ?:?; ?:?):Boolean;//00586F30
    //function sub_00586F74(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):Boolean;//00586F74
    function DoGetElementContentRect(DC:Windows.HDC; Details:TThemedElementDetails; const BoundingRect:Windows.TRect; var ContentRect:Windows.TRect):Boolean;//00587198
    function DoGetElementColor(Details:TThemedElementDetails; ElementColor:TElementColor; var Color:Graphics.TColor):Boolean;//00587210
    function DoGetElementMargins(DC:Windows.HDC; Details:TThemedElementDetails; Rect:Windows.PRect; ElementMargin:TElementMargin; var Margins:UxTheme.TMargins):Boolean;//00587288
    function DoGetElementRegion(DC:Windows.HDC; Details:TThemedElementDetails; const Rect:Windows.TRect; var Region:Windows.HRGN):Boolean;//00587314
    function DoGetElementSize(DC:Windows.HDC; Details:TThemedElementDetails; Rect:Windows.PRect; ElementSize:TElementSize; var Size:Windows.TSize):Boolean;//0058738C
    function DoGetStyleColor(Color:TStyleColor):TColor;//00587418
    function GetColor(Details:TThemedElementDetails; Default:UITypes.TColor):TColor;//00587560
    //function sub_00587598(?:?):?;//00587598
    //function sub_00587F68(?:?):?;//00587F68
    //function sub_00587F6C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):Boolean;//00587F6C
    function DoHasTransparentParts(Details:TThemedElementDetails):Boolean;//00588010
    //function sub_00588070:?;//00588070
    function DoIsValidStyle(Stream:Classes.TStream; StyleInfo:PStyleInfo):Boolean;//00588074
    function GetElementDetails(Detail:TThemedListview):TThemedElementDetails;//005880CC
    function GetElementDetails(Detail:TThemedLink):TThemedElementDetails;//005881E8
    function GetElementDetails(Detail:TThemedHeader):TThemedElementDetails;//00588214
    function GetElementDetails(Detail:TThemedMenu):TThemedElementDetails;//005882DC
    function GetElementDetails(Detail:TThemedMenuBand):TThemedElementDetails;//005884E8
    function GetElementDetails(Detail:TThemedMonthCal):TThemedElementDetails;//00588528
    function GetElementDetails(Detail:TThemedNavigation):TThemedElementDetails;//00588648
    function GetElementDetails(Detail:TThemedProgress):TThemedElementDetails;//00588698
    function GetElementDetails(Detail:TThemedPage):TThemedElementDetails;//005887B0
    function GetElementDetails(Detail:TThemedClock):TThemedElementDetails;//00588814
    function GetElementDetails(Detail:TThemedButton):TThemedElementDetails;//00588840
    function GetElementDetails(Detail:TThemedComboBox):TThemedElementDetails;//005888EC
    function GetElementDetails(Detail:TThemedDataNavButtons):TThemedElementDetails;//005889D0
    //procedure GetElementDetails(Detail:TThemedMPlayerButtons; ?:?);//005889E0
    function GetElementDetails(Detail:TThemedDatePicker):TThemedElementDetails;//005889F0
    function GetElementDetails(Detail:TThemedExplorerBar):TThemedElementDetails;//00588A40
    function GetElementDetails(Detail:TThemedEdit):TThemedElementDetails;//00588B74
    function GetElementDetails(Detail:TThemedFlyOut):TThemedElementDetails;//00588C70
    function GetElementDetails(Detail:TThemedRebar):TThemedElementDetails;//00588D48
    //procedure GetElementDetails(Detail:TThemedSearchIndicators; ?:?);//00588E28
    //procedure GetElementDetails(Detail:TThemedToggleSwitch; ?:?);//00588E38
    function GetElementDetails(Detail:TThemedTrackBar):TThemedElementDetails;//00588E48
    function GetElementDetails(Detail:TThemedToolTip):TThemedElementDetails;//00588F58
    function GetElementDetails(Detail:TThemedToolBar):TThemedElementDetails;//00589044
    function GetElementDetails(Detail:TThemedWindow):TThemedElementDetails;//005890F0
    function GetElementDetails(Detail:TThemedHint):TThemedElementDetails;//00589490
    function GetElementDetails(Detail:TThemedControlBar):TThemedElementDetails;//005894A0
    function GetElementDetails(Detail:TThemedTabSet):TThemedElementDetails;//005894B0
    function GetElementDetails(Detail:TThemedPanel):TThemedElementDetails;//005894C0
    function GetElementDetails(Detail:TThemedCategoryButtons):TThemedElementDetails;//005894D0
    function GetElementDetails(Detail:TThemedCategoryPanelGroup):TThemedElementDetails;//005894E0
    function GetElementDetails(Detail:TThemedCheckListBox):TThemedElementDetails;//005894F0
    function GetElementDetails(Detail:TThemedGrid):TThemedElementDetails;//00589500
    function GetName:UnicodeString;//00589510
    function GetElementDetails(Detail:TThemedTreeview):TThemedElementDetails;//00589540
    function GetElementDetails(Detail:TThemedTrayNotify):TThemedElementDetails;//005895A4
    function GetElementDetails(Detail:TThemedTaskBar):TThemedElementDetails;//005895E0
    function GetElementDetails(Detail:TThemedStartPanel):TThemedElementDetails;//005896A0
    function GetElementDetails(Detail:TThemedSpin):TThemedElementDetails;//0058988C
    function GetElementDetails(Detail:TThemedScrollBar):TThemedElementDetails;//005898F0
    function GetElementDetails(Detail:TThemedTaskBand):TThemedElementDetails;//00589A00
    function GetElementDetails(Detail:TThemedTaskDialog):TThemedElementDetails;//00589A50
    function GetElementDetails(Detail:TThemedTab):TThemedElementDetails;//00589C34
    function GetElementDetails(Detail:TThemedTextStyle):TThemedElementDetails;//00589D60
    function GetElementDetails(Detail:TThemedTextLabel):TThemedElementDetails;//00589E44
    function GetElementDetails(Detail:TThemedStatus):TThemedElementDetails;//00589E54
    function GetTheme(Element:TThemedElement):THandle;//00589EA4
    //function sub_00589EE8:?;//00589EE8
    function GetEnabled:Boolean;//00589EF0
    function LoadFromStream(Stream:TStream):TCustomStyleServices;//00589F08
    procedure SaveToStream(Stream:TStream);//00589F60
    procedure sub_00589FB4;//00589FB4
    procedure UpdateThemes;//00589FE4
    function &op_Implicit:TElementEdges;//0058CB98
    function &op_Implicit:TStyleElementEdges;//0058CBA4
    function &op_Implicit:Cardinal;//0058CBB8
    function &op_Implicit:TStyleElementEdges;//0058CBEC
    function &op_Implicit:TElementEdgeFlags;//0058CC84
    function &op_Implicit:TStyleElementEdgeFlags;//0058CC90
    function &op_Implicit:Cardinal;//0058CCA4
    function &op_Implicit:TStyleElementEdgeFlags;//0058CCD4
    //function sub_0058D218(?:?):?;//0058D218
    //procedure sub_0058D3E4(?:TMouseTrackControlStyleHook; ?:?);//0058D3E4
    function sub_0058D43C:Boolean;//0058D43C
    function sub_0058D47C:Boolean;//0058D47C
    //function sub_0058D4F0:?;//0058D4F0
    procedure sub_0058D4F4;//0058D4F4
    //procedure sub_0058D4F8(?:?);//0058D4F8
    procedure sub_0058D52C;//0058D52C
    //procedure WMPaint(?:?);//0058D530
    procedure WMNCPaint(var Message:Messages.TMessage);//0058D6EC
    procedure WMEraseBkgnd(var Message:Messages.TMessage);//0058D790
    procedure WMSetFocus(var Message:Messages.TMessage);//0058D85C
    procedure WMKillFocus(var Message:Messages.TMessage);//0058D86C
    procedure CMEnabledChanged(var Message:Messages.TMessage);//0058D87C
    procedure CMTextChanged(var Message:Messages.TMessage);//0058D894
    procedure WMEnable(var Message:Messages.TMessage);//0058D8AC
    procedure WMSetText(var Message:Messages.TMessage);//0058D8C4
    //procedure sub_0058D8DC(?:?);//0058D8DC
    //function sub_0058D9DC:?;//0058D9DC
    procedure DoHotTrackTimer(Sender:TObject);//0058DA88
    procedure WMMouseMove;//0058DAD4
    procedure WMNCMouseMove;//0058DB20
    procedure sub_0058DB44;//0058DB44
    procedure sub_0058DB48;//0058DB48
    procedure sub_0058DB4C;//0058DB4C

implementation

//00585D1C
function UnthemedDesigner(AControl:TControl):Boolean;
begin
{*
 00585D1C    push        ebx
 00585D1D    mov         ebx,eax
 00585D1F    xor         eax,eax
 00585D21    test        ebx,ebx
>00585D23    je          00585D5D
 00585D25    test        byte ptr [ebx+1C],10
>00585D29    je          00585D5D
 00585D2B    cmp         dword ptr ds:[7CA76C],0
>00585D32    jne         00585D43
 00585D34    push        585D60
 00585D39    call        user32.RegisterWindowMessageW
 00585D3E    mov         [007CA76C],eax
 00585D43    push        0
 00585D45    mov         ecx,64
 00585D4A    mov         edx,dword ptr ds:[7CA76C]
 00585D50    mov         eax,ebx
 00585D52    call        TControl.Perform
 00585D57    cmp         eax,64
 00585D5A    sete        al
 00585D5D    pop         ebx
 00585D5E    ret
*}
end;

//00585D88
function StyleServices:TCustomStyleServices;
begin
{*
 00585D88    call        TStyleManager.GetActiveStyle
 00585D8D    ret
*}
end;

//00585D90
{*function sub_00585D90(?:TControl):?;
begin
 00585D90    push        ebx
 00585D91    push        esi
 00585D92    mov         ebx,eax
 00585D94    xor         eax,eax
 00585D96    test        ebx,ebx
>00585D98    je          00585DE6
 00585D9A    test        byte ptr [ebx+1C],10;TWinControl.FComponentState:TComponentState
>00585D9E    jne         00585DAC
 00585DA0    call        TStyleManager.GetActiveStyle
 00585DA5    mov         edx,dword ptr [eax]
 00585DA7    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
>00585DAA    jmp         00585DAE
 00585DAC    xor         eax,eax
 00585DAE    test        al,al
>00585DB0    je          00585DB6
 00585DB2    mov         al,1
>00585DB4    jmp         00585DE6
 00585DB6    test        byte ptr [ebx+1C],10;TWinControl.FComponentState:TComponentState
>00585DBA    je          00585DE4
 00585DBC    cmp         dword ptr [ebx+40],0;TWinControl.FParent:TWinControl
>00585DC0    je          00585DE4
 00585DC2    call        TStyleManager.GetActiveStyle
 00585DC7    mov         esi,eax
 00585DC9    mov         eax,esi
 00585DCB    mov         edx,dword ptr [eax]
 00585DCD    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00585DD0    test        al,al
>00585DD2    je          00585DE0
 00585DD4    mov         eax,dword ptr [ebx+40];TWinControl.FParent:TWinControl
 00585DD7    call        UnthemedDesigner
 00585DDC    xor         al,1
>00585DDE    jmp         00585DE6
 00585DE0    xor         eax,eax
>00585DE2    jmp         00585DE6
 00585DE4    xor         eax,eax
 00585DE6    pop         esi
 00585DE7    pop         ebx
 00585DE8    ret
end;*}

//00585DEC
procedure DrawStyleEdge(DC:Windows.HDC; var Rect:Windows.TRect; Edges:TElementEdges; Flags:TElementEdgeFlags);
begin
{*
 00585DEC    push        ebp
 00585DED    mov         ebp,esp
 00585DEF    add         esp,0FFFFFFF8
 00585DF2    push        ebx
 00585DF3    push        esi
 00585DF4    mov         byte ptr [ebp-1],cl
 00585DF7    mov         esi,edx
 00585DF9    mov         ebx,eax
 00585DFB    mov         dl,1
 00585DFD    mov         eax,[004BF670];TCanvas
 00585E02    call        TCanvas.Create
 00585E07    mov         dword ptr [ebp-8],eax
 00585E0A    xor         eax,eax
 00585E0C    push        ebp
 00585E0D    push        585E54
 00585E12    push        dword ptr fs:[eax]
 00585E15    mov         dword ptr fs:[eax],esp
 00585E18    mov         edx,ebx
 00585E1A    mov         eax,dword ptr [ebp-8]
 00585E1D    call        TCanvas.SetHandle
 00585E22    mov         eax,dword ptr [ebp+8]
 00585E25    push        eax
 00585E26    mov         edx,esi
 00585E28    movzx       ecx,byte ptr [ebp-1]
 00585E2C    mov         eax,dword ptr [ebp-8]
 00585E2F    call        00586090
 00585E34    xor         eax,eax
 00585E36    pop         edx
 00585E37    pop         ecx
 00585E38    pop         ecx
 00585E39    mov         dword ptr fs:[eax],edx
 00585E3C    push        585E5B
 00585E41    xor         edx,edx
 00585E43    mov         eax,dword ptr [ebp-8]
 00585E46    call        TCanvas.SetHandle
 00585E4B    mov         eax,dword ptr [ebp-8]
 00585E4E    call        TObject.Free
 00585E53    ret
>00585E54    jmp         @HandleFinally
>00585E59    jmp         00585E41
 00585E5B    pop         esi
 00585E5C    pop         ebx
 00585E5D    pop         ecx
 00585E5E    pop         ecx
 00585E5F    pop         ebp
 00585E60    ret         4
*}
end;

//00585E64
{*procedure sub_00585E64(?:?; ?:?; ?:?);
begin
 00585E64    push        ebp
 00585E65    mov         ebp,esp
 00585E67    add         esp,0FFFFFFCC
 00585E6A    push        ebx
 00585E6B    push        esi
 00585E6C    xor         ecx,ecx
 00585E6E    mov         dword ptr [ebp-34],ecx
 00585E71    mov         dword ptr [ebp-30],ecx
 00585E74    mov         byte ptr [ebp-1],dl
 00585E77    xor         edx,edx
 00585E79    push        ebp
 00585E7A    push        586083
 00585E7F    push        dword ptr fs:[edx]
 00585E82    mov         dword ptr fs:[edx],esp
 00585E85    mov         edx,dword ptr [ebp+8]
 00585E88    mov         edx,dword ptr [edx-8]
 00585E8B    mov         dword ptr [ebp-0C],edx
 00585E8E    mov         edx,dword ptr [ebp+8]
 00585E91    mov         edx,dword ptr [edx-0C]
 00585E94    mov         dword ptr [ebp-8],edx
 00585E97    mov         edx,dword ptr [ebp+8]
 00585E9A    mov         edx,dword ptr [edx-10]
 00585E9D    mov         dword ptr [ebp-14],edx
 00585EA0    mov         edx,dword ptr [ebp+8]
 00585EA3    mov         edx,dword ptr [edx-4]
 00585EA6    mov         dword ptr [ebp-10],edx
 00585EA9    test        al,al
>00585EAB    je          00585EC3
 00585EAD    mov         eax,dword ptr [ebp+8]
 00585EB0    mov         edx,dword ptr [eax-18]
 00585EB3    mov         eax,dword ptr [ebp+8]
 00585EB6    mov         eax,dword ptr [eax-14]
 00585EB9    mov         eax,dword ptr [eax+44]
 00585EBC    call        TPen.SetColor
>00585EC1    jmp         00585ED7
 00585EC3    mov         eax,dword ptr [ebp+8]
 00585EC6    mov         edx,dword ptr [eax-1C]
 00585EC9    mov         eax,dword ptr [ebp+8]
 00585ECC    mov         eax,dword ptr [eax-14]
 00585ECF    mov         eax,dword ptr [eax+44]
 00585ED2    call        TPen.SetColor
 00585ED7    mov         eax,dword ptr [ebp+8]
 00585EDA    test        byte ptr [eax+8],1
>00585EDE    je          00585F0E
 00585EE0    mov         eax,dword ptr [ebp-14]
 00585EE3    mov         dword ptr [ebp-2C],eax
 00585EE6    mov         eax,dword ptr [ebp-10]
 00585EE9    mov         dword ptr [ebp-28],eax
 00585EEC    mov         eax,dword ptr [ebp+8]
 00585EEF    mov         edx,dword ptr [eax-10]
 00585EF2    mov         dword ptr [ebp-24],edx
 00585EF5    mov         edx,dword ptr [eax-0C]
 00585EF8    mov         dword ptr [ebp-20],edx
 00585EFB    lea         edx,[ebp-2C]
 00585EFE    mov         eax,dword ptr [ebp+8]
 00585F01    mov         eax,dword ptr [eax-20]
 00585F04    mov         ecx,1
 00585F09    call        TList<System.Types.TPoint>.AddRange
 00585F0E    mov         eax,dword ptr [ebp+8]
 00585F11    test        byte ptr [eax+8],2
>00585F15    je          00585F45
 00585F17    mov         eax,dword ptr [ebp+8]
 00585F1A    mov         edx,dword ptr [eax-10]
 00585F1D    mov         dword ptr [ebp-2C],edx
 00585F20    mov         edx,dword ptr [eax-0C]
 00585F23    mov         dword ptr [ebp-28],edx
 00585F26    mov         eax,dword ptr [ebp-0C]
 00585F29    mov         dword ptr [ebp-24],eax
 00585F2C    mov         eax,dword ptr [ebp-8]
 00585F2F    mov         dword ptr [ebp-20],eax
 00585F32    lea         edx,[ebp-2C]
 00585F35    mov         eax,dword ptr [ebp+8]
 00585F38    mov         eax,dword ptr [eax-20]
 00585F3B    mov         ecx,1
 00585F40    call        TList<System.Types.TPoint>.AddRange
 00585F45    lea         edx,[ebp-30]
 00585F48    mov         eax,dword ptr [ebp+8]
 00585F4B    mov         eax,dword ptr [eax-20]
 00585F4E    call        TList<System.Types.TPoint>.ToArray
 00585F53    mov         esi,dword ptr [ebp-30]
 00585F56    mov         dword ptr [ebp-18],esi
 00585F59    mov         ebx,dword ptr [ebp-18]
 00585F5C    test        ebx,ebx
>00585F5E    je          00585F65
 00585F60    sub         ebx,4
 00585F63    mov         ebx,dword ptr [ebx]
 00585F65    mov         edx,esi
 00585F67    mov         ecx,ebx
 00585F69    dec         ecx
 00585F6A    mov         eax,dword ptr [ebp+8]
 00585F6D    mov         eax,dword ptr [eax-14]
 00585F70    mov         ebx,dword ptr [eax]
 00585F72    call        dword ptr [ebx+70]
 00585F75    mov         eax,dword ptr [ebp+8]
 00585F78    mov         eax,dword ptr [eax-20]
 00585F7B    add         eax,8
 00585F7E    call        004349A0
 00585F83    cmp         byte ptr [ebp-1],0
>00585F87    je          00585F9F
 00585F89    mov         eax,dword ptr [ebp+8]
 00585F8C    mov         edx,dword ptr [eax-18]
 00585F8F    mov         eax,dword ptr [ebp+8]
 00585F92    mov         eax,dword ptr [eax-14]
 00585F95    mov         eax,dword ptr [eax+44]
 00585F98    call        TPen.SetColor
>00585F9D    jmp         00585FB3
 00585F9F    mov         eax,dword ptr [ebp+8]
 00585FA2    mov         edx,dword ptr [eax-1C]
 00585FA5    mov         eax,dword ptr [ebp+8]
 00585FA8    mov         eax,dword ptr [eax-14]
 00585FAB    mov         eax,dword ptr [eax+44]
 00585FAE    call        TPen.SetColor
 00585FB3    dec         dword ptr [ebp-14]
 00585FB6    mov         eax,dword ptr [ebp+8]
 00585FB9    test        byte ptr [eax+8],4
>00585FBD    je          00585FED
 00585FBF    mov         eax,dword ptr [ebp-0C]
 00585FC2    mov         dword ptr [ebp-2C],eax
 00585FC5    mov         eax,dword ptr [ebp-8]
 00585FC8    mov         dword ptr [ebp-28],eax
 00585FCB    mov         eax,dword ptr [ebp+8]
 00585FCE    mov         edx,dword ptr [eax-8]
 00585FD1    mov         dword ptr [ebp-24],edx
 00585FD4    mov         edx,dword ptr [eax-4]
 00585FD7    mov         dword ptr [ebp-20],edx
 00585FDA    lea         edx,[ebp-2C]
 00585FDD    mov         eax,dword ptr [ebp+8]
 00585FE0    mov         eax,dword ptr [eax-20]
 00585FE3    mov         ecx,1
 00585FE8    call        TList<System.Types.TPoint>.AddRange
 00585FED    mov         eax,dword ptr [ebp+8]
 00585FF0    test        byte ptr [eax+8],8
>00585FF4    je          00586024
 00585FF6    mov         eax,dword ptr [ebp+8]
 00585FF9    mov         edx,dword ptr [eax-8]
 00585FFC    mov         dword ptr [ebp-2C],edx
 00585FFF    mov         edx,dword ptr [eax-4]
 00586002    mov         dword ptr [ebp-28],edx
 00586005    mov         eax,dword ptr [ebp-14]
 00586008    mov         dword ptr [ebp-24],eax
 0058600B    mov         eax,dword ptr [ebp-10]
 0058600E    mov         dword ptr [ebp-20],eax
 00586011    lea         edx,[ebp-2C]
 00586014    mov         eax,dword ptr [ebp+8]
 00586017    mov         eax,dword ptr [eax-20]
 0058601A    mov         ecx,1
 0058601F    call        TList<System.Types.TPoint>.AddRange
 00586024    lea         edx,[ebp-34]
 00586027    mov         eax,dword ptr [ebp+8]
 0058602A    mov         eax,dword ptr [eax-20]
 0058602D    call        TList<System.Types.TPoint>.ToArray
 00586032    mov         esi,dword ptr [ebp-34]
 00586035    mov         dword ptr [ebp-1C],esi
 00586038    mov         ebx,dword ptr [ebp-1C]
 0058603B    test        ebx,ebx
>0058603D    je          00586044
 0058603F    sub         ebx,4
 00586042    mov         ebx,dword ptr [ebx]
 00586044    mov         edx,esi
 00586046    mov         ecx,ebx
 00586048    dec         ecx
 00586049    mov         eax,dword ptr [ebp+8]
 0058604C    mov         eax,dword ptr [eax-14]
 0058604F    mov         ebx,dword ptr [eax]
 00586051    call        dword ptr [ebx+70]
 00586054    mov         eax,dword ptr [ebp+8]
 00586057    mov         eax,dword ptr [eax-20]
 0058605A    add         eax,8
 0058605D    call        004349A0
 00586062    xor         eax,eax
 00586064    pop         edx
 00586065    pop         ecx
 00586066    pop         ecx
 00586067    mov         dword ptr fs:[eax],edx
 0058606A    push        58608A
 0058606F    lea         eax,[ebp-34]
 00586072    mov         edx,dword ptr ds:[58A03C];TArray<System.Types.TPoint>
 00586078    mov         ecx,2
 0058607D    call        @FinalizeArray
 00586082    ret
>00586083    jmp         @HandleFinally
>00586088    jmp         0058606F
 0058608A    pop         esi
 0058608B    pop         ebx
 0058608C    mov         esp,ebp
 0058608E    pop         ebp
 0058608F    ret
end;*}

//00586090
{*procedure sub_00586090(?:TCanvas; ?:TRect; ?:?; ?:?; ?:?; ?:?);
begin
 00586090    push        ebp
 00586091    mov         ebp,esp
 00586093    add         esp,0FFFFFFB8
 00586096    push        ebx
 00586097    push        esi
 00586098    push        edi
 00586099    mov         byte ptr [ebp-25],cl
 0058609C    mov         dword ptr [ebp-24],edx
 0058609F    mov         dword ptr [ebp-14],eax
 005860A2    lea         esi,[ebp-25]
 005860A5    mov         eax,dword ptr [ebp-24]
 005860A8    push        esi
 005860A9    mov         esi,eax
 005860AB    lea         edi,[ebp-10]
 005860AE    movs        dword ptr [edi],dword ptr [esi]
 005860AF    movs        dword ptr [edi],dword ptr [esi]
 005860B0    movs        dword ptr [edi],dword ptr [esi]
 005860B1    movs        dword ptr [edi],dword ptr [esi]
 005860B2    pop         esi
 005860B3    push        0
 005860B5    push        0
 005860B7    lea         eax,[ebp-48]
 005860BA    xor         ecx,ecx
 005860BC    xor         edx,edx
 005860BE    call        TRect.Create
 005860C3    push        esi
 005860C4    lea         esi,[ebp-48]
 005860C7    lea         edi,[ebp-38]
 005860CA    movs        dword ptr [edi],dword ptr [esi]
 005860CB    movs        dword ptr [edi],dword ptr [esi]
 005860CC    movs        dword ptr [edi],dword ptr [esi]
 005860CD    movs        dword ptr [edi],dword ptr [esi]
 005860CE    pop         esi
 005860CF    call        TStyleManager.GetActiveStyle
 005860D4    mov         ebx,eax
 005860D6    test        byte ptr [ebp+9],1
>005860DA    je          005860E6
 005860DC    mov         eax,[005862F4];0xF gvar_005862F4
 005860E1    or          dword ptr [ebp+8],eax
>005860E4    jmp         0058611E
 005860E6    test        byte ptr [ebp+8],10
>005860EA    je          005860F4
 005860EC    mov         eax,[005862F8];0x3 gvar_005862F8
 005860F1    or          dword ptr [ebp+8],eax
 005860F4    test        byte ptr [ebp+8],20
>005860F8    je          00586102
 005860FA    mov         eax,[005862FC];0x6 gvar_005862FC
 005860FF    or          dword ptr [ebp+8],eax
 00586102    test        byte ptr [ebp+8],40
>00586106    je          00586110
 00586108    mov         eax,[00586300];0x9 gvar_00586300
 0058610D    or          dword ptr [ebp+8],eax
 00586110    test        byte ptr [ebp+8],80
>00586114    je          0058611E
 00586116    mov         eax,[00586304];0xC gvar_00586304
 0058611B    or          dword ptr [ebp+8],eax
 0058611E    test        byte ptr [esi],10
>00586121    je          0058612C
 00586123    movzx       eax,byte ptr ds:[586308];0x6 gvar_00586308
 0058612A    mov         byte ptr [esi],al
 0058612C    test        byte ptr [esi],20
>0058612F    je          0058613A
 00586131    movzx       eax,byte ptr ds:[58630C];0x9 gvar_0058630C
 00586138    mov         byte ptr [esi],al
 0058613A    test        byte ptr [esi],40
>0058613D    je          00586148
 0058613F    movzx       eax,byte ptr ds:[586310];0x5 gvar_00586310
 00586146    mov         byte ptr [esi],al
 00586148    test        byte ptr [esi],80
>0058614B    je          00586156
 0058614D    movzx       eax,byte ptr ds:[586314];0xA gvar_00586314
 00586154    mov         byte ptr [esi],al
 00586156    mov         dl,1
 00586158    mov         eax,[0058A6F0];TList<System.Types.TPoint>
 0058615D    call        00594644
 00586162    mov         dword ptr [ebp-20],eax
 00586165    xor         edx,edx
 00586167    push        ebp
 00586168    push        5862BB
 0058616D    push        dword ptr fs:[edx]
 00586170    mov         dword ptr fs:[edx],esp
 00586173    mov         eax,dword ptr [ebp-14]
 00586176    mov         eax,dword ptr [eax+44]
 00586179    mov         edx,1
 0058617E    call        TPen.SetWidth
 00586183    dec         dword ptr [ebp-4]
 00586186    dec         dword ptr [ebp-8]
 00586189    test        byte ptr [esi],4
>0058618C    je          005861AE
 0058618E    mov         edx,0FF000015
 00586193    mov         eax,ebx
 00586195    call        TCustomStyleServices.GetSystemColor
 0058619A    mov         dword ptr [ebp-1C],eax
 0058619D    mov         edx,0FF000016
 005861A2    mov         eax,ebx
 005861A4    call        TCustomStyleServices.GetSystemColor
 005861A9    mov         dword ptr [ebp-18],eax
>005861AC    jmp         005861CC
 005861AE    mov         edx,0FF000010
 005861B3    mov         eax,ebx
 005861B5    call        TCustomStyleServices.GetSystemColor
 005861BA    mov         dword ptr [ebp-1C],eax
 005861BD    mov         edx,0FF000014
 005861C2    mov         eax,ebx
 005861C4    call        TCustomStyleServices.GetSystemColor
 005861C9    mov         dword ptr [ebp-18],eax
 005861CC    test        byte ptr [esi],4
 005861CF    setne       al
 005861D2    test        al,al
>005861D4    jne         005861DB
 005861D6    test        byte ptr [esi],8
>005861D9    je          00586222
 005861DB    push        ebp
 005861DC    test        byte ptr [esi],8
 005861DF    setne       dl
 005861E2    push        edx
 005861E3    pop         edx
 005861E4    call        00585E64
 005861E9    pop         ecx
 005861EA    test        byte ptr [ebp+0A],1
>005861EE    je          00586214
 005861F0    test        byte ptr [ebp+8],1
>005861F4    je          005861F9
 005861F6    inc         dword ptr [ebp-38]
 005861F9    test        byte ptr [ebp+8],4
>005861FD    je          00586202
 005861FF    inc         dword ptr [ebp-30]
 00586202    test        byte ptr [ebp+8],2
>00586206    je          0058620B
 00586208    inc         dword ptr [ebp-34]
 0058620B    test        byte ptr [ebp+8],8
>0058620F    je          00586214
 00586211    inc         dword ptr [ebp-2C]
 00586214    lea         eax,[ebp-10]
 00586217    or          ecx,0FFFFFFFF
 0058621A    or          edx,0FFFFFFFF
 0058621D    call        InflateRect
 00586222    test        byte ptr [esi],1
>00586225    jne         0058622C
 00586227    test        byte ptr [esi],2
>0058622A    je          0058629F
 0058622C    test        byte ptr [esi],4
>0058622F    je          00586254
 00586231    test        byte ptr [esi],1
>00586234    je          00586254
 00586236    mov         edx,0FF000010
 0058623B    mov         eax,ebx
 0058623D    call        TCustomStyleServices.GetSystemColor
 00586242    mov         dword ptr [ebp-1C],eax
 00586245    mov         edx,0FF000014
 0058624A    mov         eax,ebx
 0058624C    call        TCustomStyleServices.GetSystemColor
 00586251    mov         dword ptr [ebp-18],eax
 00586254    push        ebp
 00586255    test        byte ptr [esi],2
 00586258    setne       dl
 0058625B    test        byte ptr [esi],1
 0058625E    setne       al
 00586261    call        00585E64
 00586266    pop         ecx
 00586267    test        byte ptr [ebp+0A],1
>0058626B    je          00586291
 0058626D    test        byte ptr [ebp+8],1
>00586271    je          00586276
 00586273    inc         dword ptr [ebp-38]
 00586276    test        byte ptr [ebp+8],4
>0058627A    je          0058627F
 0058627C    inc         dword ptr [ebp-30]
 0058627F    test        byte ptr [ebp+8],2
>00586283    je          00586288
 00586285    inc         dword ptr [ebp-34]
 00586288    test        byte ptr [ebp+8],8
>0058628C    je          00586291
 0058628E    inc         dword ptr [ebp-2C]
 00586291    lea         eax,[ebp-10]
 00586294    or          ecx,0FFFFFFFF
 00586297    or          edx,0FFFFFFFF
 0058629A    call        InflateRect
 0058629F    inc         dword ptr [ebp-4]
 005862A2    inc         dword ptr [ebp-8]
 005862A5    xor         eax,eax
 005862A7    pop         edx
 005862A8    pop         ecx
 005862A9    pop         ecx
 005862AA    mov         dword ptr fs:[eax],edx
 005862AD    push        5862C2
 005862B2    mov         eax,dword ptr [ebp-20]
 005862B5    call        TObject.Free
 005862BA    ret
>005862BB    jmp         @HandleFinally
>005862C0    jmp         005862B2
 005862C2    test        byte ptr [ebp+0A],1
>005862C6    je          005862EB
 005862C8    mov         eax,dword ptr [ebp-24]
 005862CB    mov         edx,dword ptr [ebp-38]
 005862CE    add         dword ptr [eax],edx
 005862D0    mov         eax,dword ptr [ebp-24]
 005862D3    mov         edx,dword ptr [ebp-34]
 005862D6    add         dword ptr [eax+4],edx
 005862D9    mov         eax,dword ptr [ebp-24]
 005862DC    mov         edx,dword ptr [ebp-30]
 005862DF    sub         dword ptr [eax+8],edx
 005862E2    mov         eax,dword ptr [ebp-24]
 005862E5    mov         edx,dword ptr [ebp-2C]
 005862E8    sub         dword ptr [eax+0C],edx
 005862EB    pop         edi
 005862EC    pop         esi
 005862ED    pop         ebx
 005862EE    mov         esp,ebp
 005862F0    pop         ebp
 005862F1    ret         4
end;*}

//00586318
procedure sub_00586318(?:HDC; ?:TRect);
begin
{*
 00586318    push        ebx
 00586319    push        esi
 0058631A    push        edi
 0058631B    push        ebp
 0058631C    add         esp,0FFFFFFB4
 0058631F    mov         esi,edx
 00586321    mov         edi,eax
 00586323    call        TStyleManager.GetActiveStyle
 00586328    mov         dword ptr [esp+4],eax
 0058632C    mov         edx,0FF00000D
 00586331    mov         eax,dword ptr [esp+4]
 00586335    call        TCustomStyleServices.GetSystemColor
 0058633A    call        ColorToRGB
 0058633F    mov         edx,13
 00586344    call        004D79C0
 00586349    mov         ebp,eax
 0058634B    call        TStyleManager.GetActiveStyle
 00586350    mov         dword ptr [esp+8],eax
 00586354    mov         edx,0FF00000D
 00586359    mov         eax,dword ptr [esp+8]
 0058635D    call        TCustomStyleServices.GetSystemColor
 00586362    call        ColorToRGB
 00586367    mov         edx,0FFFFFFCE
 0058636C    call        004D7A98
 00586371    mov         dword ptr [esp],eax
 00586374    mov         ebx,dword ptr [esi]
 00586376    inc         ebx
>00586377    jmp         005863EC
 00586379    mov         eax,dword ptr [esi+4]
 0058637C    push        eax
 0058637D    push        ebx
 0058637E    push        edi
 0058637F    call        gdi32.GetPixel
 00586384    mov         dword ptr [esp+0C],eax
 00586388    cmp         ebp,dword ptr [esp+0C]
>0058638C    jne         00586398
 0058638E    mov         eax,ebp
 00586390    not         eax
 00586392    mov         dword ptr [esp+10],eax
>00586396    jmp         0058639C
 00586398    mov         dword ptr [esp+10],ebp
 0058639C    mov         eax,dword ptr [esp+10]
 005863A0    push        eax
 005863A1    mov         eax,dword ptr [esi+4]
 005863A4    push        eax
 005863A5    push        ebx
 005863A6    push        edi
 005863A7    call        gdi32.SetPixel
 005863AC    mov         eax,dword ptr [esi+4]
 005863AF    push        eax
 005863B0    push        ebx
 005863B1    push        edi
 005863B2    call        gdi32.GetPixel
 005863B7    mov         dword ptr [esp+14],eax
 005863BB    mov         eax,dword ptr [esp]
 005863BE    cmp         eax,dword ptr [esp+14]
>005863C2    jne         005863CF
 005863C4    mov         eax,dword ptr [esp]
 005863C7    not         eax
 005863C9    mov         dword ptr [esp+18],eax
>005863CD    jmp         005863D6
 005863CF    mov         eax,dword ptr [esp]
 005863D2    mov         dword ptr [esp+18],eax
 005863D6    mov         eax,dword ptr [esp+18]
 005863DA    push        eax
 005863DB    mov         eax,dword ptr [esi+4]
 005863DE    push        eax
 005863DF    lea         eax,[ebx+1]
 005863E2    push        eax
 005863E3    push        edi
 005863E4    call        gdi32.SetPixel
 005863E9    add         ebx,2
 005863EC    mov         eax,dword ptr [esi+8]
 005863EF    dec         eax
 005863F0    cmp         ebx,eax
>005863F2    jl          00586379
 005863F4    mov         ebx,dword ptr [esi]
 005863F6    inc         ebx
>005863F7    jmp         00586473
 005863F9    mov         eax,dword ptr [esi+0C]
 005863FC    dec         eax
 005863FD    push        eax
 005863FE    push        ebx
 005863FF    push        edi
 00586400    call        gdi32.GetPixel
 00586405    mov         dword ptr [esp+1C],eax
 00586409    cmp         ebp,dword ptr [esp+1C]
>0058640D    jne         00586419
 0058640F    mov         eax,ebp
 00586411    not         eax
 00586413    mov         dword ptr [esp+20],eax
>00586417    jmp         0058641D
 00586419    mov         dword ptr [esp+20],ebp
 0058641D    mov         eax,dword ptr [esp+20]
 00586421    push        eax
 00586422    mov         eax,dword ptr [esi+0C]
 00586425    dec         eax
 00586426    push        eax
 00586427    push        ebx
 00586428    push        edi
 00586429    call        gdi32.SetPixel
 0058642E    mov         eax,dword ptr [esi+0C]
 00586431    dec         eax
 00586432    push        eax
 00586433    lea         eax,[ebx+1]
 00586436    push        eax
 00586437    push        edi
 00586438    call        gdi32.GetPixel
 0058643D    mov         dword ptr [esp+24],eax
 00586441    mov         eax,dword ptr [esp]
 00586444    cmp         eax,dword ptr [esp+24]
>00586448    jne         00586455
 0058644A    mov         eax,dword ptr [esp]
 0058644D    not         eax
 0058644F    mov         dword ptr [esp+28],eax
>00586453    jmp         0058645C
 00586455    mov         eax,dword ptr [esp]
 00586458    mov         dword ptr [esp+28],eax
 0058645C    mov         eax,dword ptr [esp+28]
 00586460    push        eax
 00586461    mov         eax,dword ptr [esi+0C]
 00586464    dec         eax
 00586465    push        eax
 00586466    lea         eax,[ebx+1]
 00586469    push        eax
 0058646A    push        edi
 0058646B    call        gdi32.SetPixel
 00586470    add         ebx,2
 00586473    mov         eax,dword ptr [esi+8]
 00586476    dec         eax
 00586477    cmp         ebx,eax
>00586479    jl          005863F9
 0058647F    mov         ebx,dword ptr [esi+4]
 00586482    inc         ebx
>00586483    jmp         005864F7
 00586485    push        ebx
 00586486    mov         eax,dword ptr [esi]
 00586488    push        eax
 00586489    push        edi
 0058648A    call        gdi32.GetPixel
 0058648F    mov         dword ptr [esp+2C],eax
 00586493    cmp         ebp,dword ptr [esp+2C]
>00586497    jne         005864A3
 00586499    mov         eax,ebp
 0058649B    not         eax
 0058649D    mov         dword ptr [esp+30],eax
>005864A1    jmp         005864A7
 005864A3    mov         dword ptr [esp+30],ebp
 005864A7    mov         eax,dword ptr [esp+30]
 005864AB    push        eax
 005864AC    push        ebx
 005864AD    mov         eax,dword ptr [esi]
 005864AF    push        eax
 005864B0    push        edi
 005864B1    call        gdi32.SetPixel
 005864B6    lea         eax,[ebx+1]
 005864B9    push        eax
 005864BA    mov         eax,dword ptr [esi]
 005864BC    push        eax
 005864BD    push        edi
 005864BE    call        gdi32.GetPixel
 005864C3    mov         dword ptr [esp+34],eax
 005864C7    mov         eax,dword ptr [esp]
 005864CA    cmp         eax,dword ptr [esp+34]
>005864CE    jne         005864DB
 005864D0    mov         eax,dword ptr [esp]
 005864D3    not         eax
 005864D5    mov         dword ptr [esp+38],eax
>005864D9    jmp         005864E2
 005864DB    mov         eax,dword ptr [esp]
 005864DE    mov         dword ptr [esp+38],eax
 005864E2    mov         eax,dword ptr [esp+38]
 005864E6    push        eax
 005864E7    lea         eax,[ebx+1]
 005864EA    push        eax
 005864EB    mov         eax,dword ptr [esi]
 005864ED    push        eax
 005864EE    push        edi
 005864EF    call        gdi32.SetPixel
 005864F4    add         ebx,2
 005864F7    mov         eax,dword ptr [esi+0C]
 005864FA    dec         eax
 005864FB    cmp         ebx,eax
>005864FD    jl          00586485
 005864FF    mov         ebx,dword ptr [esi+4]
 00586502    inc         ebx
>00586503    jmp         0058657F
 00586505    push        ebx
 00586506    mov         eax,dword ptr [esi+8]
 00586509    dec         eax
 0058650A    push        eax
 0058650B    push        edi
 0058650C    call        gdi32.GetPixel
 00586511    mov         dword ptr [esp+3C],eax
 00586515    cmp         ebp,dword ptr [esp+3C]
>00586519    jne         00586525
 0058651B    mov         eax,ebp
 0058651D    not         eax
 0058651F    mov         dword ptr [esp+40],eax
>00586523    jmp         00586529
 00586525    mov         dword ptr [esp+40],ebp
 00586529    mov         eax,dword ptr [esp+40]
 0058652D    push        eax
 0058652E    push        ebx
 0058652F    mov         eax,dword ptr [esi+8]
 00586532    dec         eax
 00586533    push        eax
 00586534    push        edi
 00586535    call        gdi32.SetPixel
 0058653A    lea         eax,[ebx+1]
 0058653D    push        eax
 0058653E    mov         eax,dword ptr [esi+8]
 00586541    dec         eax
 00586542    push        eax
 00586543    push        edi
 00586544    call        gdi32.GetPixel
 00586549    mov         dword ptr [esp+44],eax
 0058654D    mov         eax,dword ptr [esp]
 00586550    cmp         eax,dword ptr [esp+44]
>00586554    jne         00586561
 00586556    mov         eax,dword ptr [esp]
 00586559    not         eax
 0058655B    mov         dword ptr [esp+48],eax
>0058655F    jmp         00586568
 00586561    mov         eax,dword ptr [esp]
 00586564    mov         dword ptr [esp+48],eax
 00586568    mov         eax,dword ptr [esp+48]
 0058656C    push        eax
 0058656D    lea         eax,[ebx+1]
 00586570    push        eax
 00586571    mov         eax,dword ptr [esi+8]
 00586574    dec         eax
 00586575    push        eax
 00586576    push        edi
 00586577    call        gdi32.SetPixel
 0058657C    add         ebx,2
 0058657F    mov         eax,dword ptr [esi+0C]
 00586582    dec         eax
 00586583    cmp         ebx,eax
>00586585    jl          00586505
 0058658B    add         esp,4C
 0058658E    pop         ebp
 0058658F    pop         edi
 00586590    pop         esi
 00586591    pop         ebx
 00586592    ret
*}
end;

//005865F4
constructor TCustomStyleServices.Create();
begin
{*
 005865F4    push        ebx
 005865F5    push        esi
 005865F6    test        dl,dl
>005865F8    je          00586602
 005865FA    add         esp,0FFFFFFF0
 005865FD    call        @ClassCreate
 00586602    mov         ebx,edx
 00586604    mov         esi,eax
 00586606    xor         edx,edx
 00586608    mov         eax,esi
 0058660A    call        TObject.Create
 0058660F    mov         eax,esi
 00586611    test        bl,bl
>00586613    je          00586624
 00586615    call        @AfterConstruction
 0058661A    pop         dword ptr fs:[0]
 00586621    add         esp,0C
 00586624    mov         eax,esi
 00586626    pop         esi
 00586627    pop         ebx
 00586628    ret
*}
end;

//0058662C
procedure TCustomStyleServices.ApplyThemeChange;
begin
{*
 0058662C    push        ebx
 0058662D    mov         ebx,eax
 0058662F    mov         eax,ebx
 00586631    mov         edx,dword ptr [eax]
 00586633    call        dword ptr [edx+11C];TCustomStyleServices.UpdateThemes
 00586639    mov         eax,ebx
 0058663B    mov         edx,dword ptr [eax]
 0058663D    call        dword ptr [edx+120];TCustomStyleServices.DoOnThemeChange
 00586643    pop         ebx
 00586644    ret
*}
end;

//00586648
function TCustomStyleServices.ColorToRGB(Color:TColor; Details:PThemedElementDetails):Cardinal;
begin
{*
 00586648    push        ebx
 00586649    mov         ebx,dword ptr [eax]
 0058664B    call        dword ptr [ebx];TCustomStyleServices.DoColorToRGB
 0058664D    pop         ebx
 0058664E    ret
*}
end;

//00586650
procedure TCustomStyleServices.DoOnThemeChange;
begin
{*
 00586650    push        ebx
 00586651    cmp         word ptr [eax+0A],0
>00586656    je          00586662
 00586658    mov         ebx,eax
 0058665A    mov         edx,eax
 0058665C    mov         eax,dword ptr [ebx+0C]
 0058665F    call        dword ptr [ebx+8]
 00586662    pop         ebx
 00586663    ret
*}
end;

//00586664
function TCustomStyleServices.DrawEdge(DC:HDC; Details:TThemedElementDetails; ContentRect:PRect; Flags:TElementEdgeFlags; Edges:TElementEdges; R:TRect):Boolean;
begin
{*
 00586664    push        ebp
 00586665    mov         ebp,esp
 00586667    add         esp,0FFFFFFF4
 0058666A    push        ebx
 0058666B    push        esi
 0058666C    push        edi
 0058666D    mov         esi,ecx
 0058666F    lea         edi,[ebp-0C]
 00586672    movs        dword ptr [edi],dword ptr [esi]
 00586673    movs        dword ptr [edi],dword ptr [esi]
 00586674    movs        dword ptr [edi],dword ptr [esi]
 00586675    mov         ecx,dword ptr [ebp+14]
 00586678    push        ecx
 00586679    movzx       ecx,byte ptr [ebp+10]
 0058667D    push        ecx
 0058667E    mov         ecx,dword ptr [ebp+0C]
 00586681    push        ecx
 00586682    mov         ecx,dword ptr [ebp+8]
 00586685    push        ecx
 00586686    lea         ecx,[ebp-0C]
 00586689    mov         ebx,dword ptr [eax]
 0058668B    call        dword ptr [ebx+4]
 0058668E    pop         edi
 0058668F    pop         esi
 00586690    pop         ebx
 00586691    mov         esp,ebp
 00586693    pop         ebp
 00586694    ret         10
*}
end;

//00586698
function TCustomStyleServices.DrawElement(DC:HDC; Details:TThemedElementDetails; ClipRect:PRect; R:TRect):Boolean;
begin
{*
 00586698    push        ebp
 00586699    mov         ebp,esp
 0058669B    add         esp,0FFFFFFF4
 0058669E    push        ebx
 0058669F    push        esi
 005866A0    push        edi
 005866A1    mov         esi,ecx
 005866A3    lea         edi,[ebp-0C]
 005866A6    movs        dword ptr [edi],dword ptr [esi]
 005866A7    movs        dword ptr [edi],dword ptr [esi]
 005866A8    movs        dword ptr [edi],dword ptr [esi]
 005866A9    mov         ecx,dword ptr [ebp+0C]
 005866AC    push        ecx
 005866AD    mov         ecx,dword ptr [ebp+8]
 005866B0    push        ecx
 005866B1    lea         ecx,[ebp-0C]
 005866B4    mov         ebx,dword ptr [eax]
 005866B6    call        dword ptr [ebx+8]
 005866B9    pop         edi
 005866BA    pop         esi
 005866BB    pop         ebx
 005866BC    mov         esp,ebp
 005866BE    pop         ebp
 005866BF    ret         8
*}
end;

//005866C4
function TCustomStyleServices.DrawIcon(DC:HDC; Details:TThemedElementDetails; Index:Integer; Images:NativeUInt; R:TRect):Boolean;
begin
{*
 005866C4    push        ebp
 005866C5    mov         ebp,esp
 005866C7    add         esp,0FFFFFFF4
 005866CA    push        ebx
 005866CB    push        esi
 005866CC    push        edi
 005866CD    mov         esi,ecx
 005866CF    lea         edi,[ebp-0C]
 005866D2    movs        dword ptr [edi],dword ptr [esi]
 005866D3    movs        dword ptr [edi],dword ptr [esi]
 005866D4    movs        dword ptr [edi],dword ptr [esi]
 005866D5    mov         ecx,dword ptr [ebp+10]
 005866D8    push        ecx
 005866D9    mov         ecx,dword ptr [ebp+0C]
 005866DC    push        ecx
 005866DD    mov         ecx,dword ptr [ebp+8]
 005866E0    push        ecx
 005866E1    lea         ecx,[ebp-0C]
 005866E4    mov         ebx,dword ptr [eax]
 005866E6    call        dword ptr [ebx+0C]
 005866E9    pop         edi
 005866EA    pop         esi
 005866EB    pop         ebx
 005866EC    mov         esp,ebp
 005866EE    pop         ebp
 005866EF    ret         0C
*}
end;

//005866F4
function TCustomStyleServices.DrawParentBackground(Window:HWND; Target:HDC; Bounds:PRect; OnlyIfTransparent:Boolean; Details:PThemedElementDetails):Boolean;
begin
{*
 005866F4    push        ebp
 005866F5    mov         ebp,esp
 005866F7    push        ebx
 005866F8    mov         ebx,dword ptr [ebp+10]
 005866FB    push        ebx
 005866FC    movzx       ebx,byte ptr [ebp+0C]
 00586700    push        ebx
 00586701    mov         ebx,dword ptr [ebp+8]
 00586704    push        ebx
 00586705    mov         ebx,dword ptr [eax]
 00586707    call        dword ptr [ebx+10]
 0058670A    pop         ebx
 0058670B    pop         ebp
 0058670C    ret         0C
*}
end;

//00586710
function TCustomStyleServices.DrawParentBackground(Window:HWND; Target:HDC; Bounds:PRect; OnlyIfTransparent:Boolean; Details:TThemedElementDetails):Boolean;
begin
{*
 00586710    push        ebp
 00586711    mov         ebp,esp
 00586713    push        ebx
 00586714    mov         ebx,dword ptr [ebp+10]
 00586717    push        ebx
 00586718    movzx       ebx,byte ptr [ebp+0C]
 0058671C    push        ebx
 0058671D    mov         ebx,dword ptr [ebp+8]
 00586720    push        ebx
 00586721    call        TCustomStyleServices.DrawParentBackground
 00586726    pop         ebx
 00586727    pop         ebp
 00586728    ret         0C
*}
end;

//0058672C
function TCustomStyleServices.DrawText(DC:HDC; Details:TThemedElementDetails; Flags2:Cardinal; Flags:Cardinal; R:TRect; S:string):Boolean;
begin
{*
 0058672C    push        ebp
 0058672D    mov         ebp,esp
 0058672F    add         esp,0FFFFFFE4
 00586732    push        ebx
 00586733    push        esi
 00586734    push        edi
 00586735    mov         esi,dword ptr [ebp+10]
 00586738    lea         edi,[ebp-1C]
 0058673B    movs        dword ptr [edi],dword ptr [esi]
 0058673C    movs        dword ptr [edi],dword ptr [esi]
 0058673D    movs        dword ptr [edi],dword ptr [esi]
 0058673E    movs        dword ptr [edi],dword ptr [esi]
 0058673F    mov         esi,ecx
 00586741    lea         edi,[ebp-0C]
 00586744    movs        dword ptr [edi],dword ptr [esi]
 00586745    movs        dword ptr [edi],dword ptr [esi]
 00586746    movs        dword ptr [edi],dword ptr [esi]
 00586747    mov         esi,edx
 00586749    mov         ebx,eax
 0058674B    mov         eax,dword ptr [ebp+14]
 0058674E    push        eax
 0058674F    lea         eax,[ebp-1C]
 00586752    push        eax
 00586753    mov         eax,dword ptr [ebp+0C]
 00586756    call        TTextFormatFlags.&op_Implicit
 0058675B    call        TTextFormatFlags.&op_Implicit
 00586760    push        eax
 00586761    push        1FFFFFFF
 00586766    lea         ecx,[ebp-0C]
 00586769    mov         edx,esi
 0058676B    mov         eax,ebx
 0058676D    call        TCustomStyleServices.DrawText
 00586772    pop         edi
 00586773    pop         esi
 00586774    pop         ebx
 00586775    mov         esp,ebp
 00586777    pop         ebp
 00586778    ret         10
*}
end;

//0058677C
function TCustomStyleServices.DrawText(DC:HDC; Details:TThemedElementDetails; Color:TColor; Flags:TTextFormat; var R:TRect; S:string):Boolean;
begin
{*
 0058677C    push        ebp
 0058677D    mov         ebp,esp
 0058677F    add         esp,0FFFFFFD0
 00586782    push        ebx
 00586783    push        esi
 00586784    push        edi
 00586785    mov         esi,ecx
 00586787    lea         edi,[ebp-10]
 0058678A    movs        dword ptr [edi],dword ptr [esi]
 0058678B    movs        dword ptr [edi],dword ptr [esi]
 0058678C    movs        dword ptr [edi],dword ptr [esi]
 0058678D    mov         edi,edx
 0058678F    mov         esi,eax
 00586791    mov         ebx,dword ptr [ebp+8]
 00586794    cmp         ebx,1FFFFFFF
>0058679A    jne         005867B3
 0058679C    lea         eax,[ebp-4]
 0058679F    push        eax
 005867A0    mov         cl,2
 005867A2    lea         edx,[ebp-10]
 005867A5    mov         eax,esi
 005867A7    call        TCustomStyleServices.GetElementColor
 005867AC    test        al,al
>005867AE    je          005867B3
 005867B0    mov         ebx,dword ptr [ebp-4]
 005867B3    cmp         ebx,1FFFFFFF
>005867B9    je          005867CA
 005867BB    movzx       eax,byte ptr ds:[5867FC]
 005867C2    mov         byte ptr [ebp-30],al
 005867C5    mov         dword ptr [ebp-2C],ebx
>005867C8    jmp         005867D4
 005867CA    movzx       eax,byte ptr ds:[586800]
 005867D1    mov         byte ptr [ebp-30],al
 005867D4    mov         eax,dword ptr [ebp+14]
 005867D7    push        eax
 005867D8    mov         eax,dword ptr [ebp+10]
 005867DB    push        eax
 005867DC    mov         eax,dword ptr [ebp+0C]
 005867DF    push        eax
 005867E0    lea         eax,[ebp-30]
 005867E3    push        eax
 005867E4    lea         ecx,[ebp-10]
 005867E7    mov         edx,edi
 005867E9    mov         eax,esi
 005867EB    mov         ebx,dword ptr [eax]
 005867ED    call        dword ptr [ebx+14]
 005867F0    pop         edi
 005867F1    pop         esi
 005867F2    pop         ebx
 005867F3    mov         esp,ebp
 005867F5    pop         ebp
 005867F6    ret         10
*}
end;

//00586804
function TCustomStyleServices.DrawText(DC:HDC; Details:TThemedElementDetails; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string):Boolean;
begin
{*
 00586804    push        ebp
 00586805    mov         ebp,esp
 00586807    add         esp,0FFFFFFD4
 0058680A    push        ebx
 0058680B    push        esi
 0058680C    push        edi
 0058680D    mov         esi,dword ptr [ebp+8]
 00586810    lea         edi,[ebp-2C]
 00586813    push        ecx
 00586814    mov         ecx,8
 00586819    rep movs    dword ptr [edi],dword ptr [esi]
 0058681B    pop         ecx
 0058681C    mov         esi,ecx
 0058681E    lea         edi,[ebp-0C]
 00586821    movs        dword ptr [edi],dword ptr [esi]
 00586822    movs        dword ptr [edi],dword ptr [esi]
 00586823    movs        dword ptr [edi],dword ptr [esi]
 00586824    mov         ecx,dword ptr [ebp+14]
 00586827    push        ecx
 00586828    mov         ecx,dword ptr [ebp+10]
 0058682B    push        ecx
 0058682C    mov         ecx,dword ptr [ebp+0C]
 0058682F    push        ecx
 00586830    lea         ecx,[ebp-2C]
 00586833    push        ecx
 00586834    lea         ecx,[ebp-0C]
 00586837    mov         ebx,dword ptr [eax]
 00586839    call        dword ptr [ebx+14]
 0058683C    pop         edi
 0058683D    pop         esi
 0058683E    pop         ebx
 0058683F    mov         esp,ebp
 00586841    pop         ebp
 00586842    ret         10
*}
end;

//00586848
function TCustomStyleServices.GetElementColor(Details:TThemedElementDetails; ElementColor:TElementColor; Color:TColor):Boolean;
begin
{*
 00586848    push        ebp
 00586849    mov         ebp,esp
 0058684B    add         esp,0FFFFFFF4
 0058684E    push        ebx
 0058684F    push        esi
 00586850    push        edi
 00586851    mov         esi,edx
 00586853    lea         edi,[ebp-0C]
 00586856    movs        dword ptr [edi],dword ptr [esi]
 00586857    movs        dword ptr [edi],dword ptr [esi]
 00586858    movs        dword ptr [edi],dword ptr [esi]
 00586859    mov         edx,dword ptr [ebp+8]
 0058685C    push        edx
 0058685D    lea         edx,[ebp-0C]
 00586860    mov         ebx,dword ptr [eax]
 00586862    call        dword ptr [ebx+1C]
 00586865    pop         edi
 00586866    pop         esi
 00586867    pop         ebx
 00586868    mov         esp,ebp
 0058686A    pop         ebp
 0058686B    ret         4
*}
end;

//00586870
function TCustomStyleServices.GetElementContentRect(DC:HDC; Details:TThemedElementDetails; ContentRect:TRect; BoundingRect:TRect):Boolean;
begin
{*
 00586870    push        ebp
 00586871    mov         ebp,esp
 00586873    add         esp,0FFFFFFF4
 00586876    push        ebx
 00586877    push        esi
 00586878    push        edi
 00586879    mov         esi,ecx
 0058687B    lea         edi,[ebp-0C]
 0058687E    movs        dword ptr [edi],dword ptr [esi]
 0058687F    movs        dword ptr [edi],dword ptr [esi]
 00586880    movs        dword ptr [edi],dword ptr [esi]
 00586881    mov         ecx,dword ptr [ebp+0C]
 00586884    push        ecx
 00586885    mov         ecx,dword ptr [ebp+8]
 00586888    push        ecx
 00586889    lea         ecx,[ebp-0C]
 0058688C    mov         ebx,dword ptr [eax]
 0058688E    call        dword ptr [ebx+18]
 00586891    pop         edi
 00586892    pop         esi
 00586893    pop         ebx
 00586894    mov         esp,ebp
 00586896    pop         ebp
 00586897    ret         8
*}
end;

//0058689C
function TCustomStyleServices.GetElementMargins(DC:HDC; Details:TThemedElementDetails; Margins:_MARGINS; ElementMargin:TElementMargin):Boolean;
begin
{*
 0058689C    push        ebp
 0058689D    mov         ebp,esp
 0058689F    add         esp,0FFFFFFF4
 005868A2    push        ebx
 005868A3    push        esi
 005868A4    push        edi
 005868A5    mov         esi,ecx
 005868A7    lea         edi,[ebp-0C]
 005868AA    movs        dword ptr [edi],dword ptr [esi]
 005868AB    movs        dword ptr [edi],dword ptr [esi]
 005868AC    movs        dword ptr [edi],dword ptr [esi]
 005868AD    push        0
 005868AF    movzx       ecx,byte ptr [ebp+0C]
 005868B3    push        ecx
 005868B4    mov         ecx,dword ptr [ebp+8]
 005868B7    push        ecx
 005868B8    lea         ecx,[ebp-0C]
 005868BB    mov         ebx,dword ptr [eax]
 005868BD    call        dword ptr [ebx+20]
 005868C0    pop         edi
 005868C1    pop         esi
 005868C2    pop         ebx
 005868C3    mov         esp,ebp
 005868C5    pop         ebp
 005868C6    ret         8
*}
end;

//005868CC
function TCustomStyleServices.GetElementRegion(Details:TThemedElementDetails; Rect:TRect; Region:HRGN):Boolean;
begin
{*
 005868CC    push        ebp
 005868CD    mov         ebp,esp
 005868CF    add         esp,0FFFFFFF4
 005868D2    push        esi
 005868D3    push        edi
 005868D4    mov         esi,edx
 005868D6    lea         edi,[ebp-0C]
 005868D9    movs        dword ptr [edi],dword ptr [esi]
 005868DA    movs        dword ptr [edi],dword ptr [esi]
 005868DB    movs        dword ptr [edi],dword ptr [esi]
 005868DC    push        ecx
 005868DD    mov         edx,dword ptr [ebp+8]
 005868E0    push        edx
 005868E1    xor         edx,edx
 005868E3    lea         ecx,[ebp-0C]
 005868E6    call        TCustomStyleServices.GetElementRegion
 005868EB    pop         edi
 005868EC    pop         esi
 005868ED    mov         esp,ebp
 005868EF    pop         ebp
 005868F0    ret         4
*}
end;

//005868F4
function TCustomStyleServices.GetElementRegion(DC:HDC; Details:TThemedElementDetails; Region:HRGN; Rect:TRect):Boolean;
begin
{*
 005868F4    push        ebp
 005868F5    mov         ebp,esp
 005868F7    add         esp,0FFFFFFF4
 005868FA    push        ebx
 005868FB    push        esi
 005868FC    push        edi
 005868FD    mov         esi,ecx
 005868FF    lea         edi,[ebp-0C]
 00586902    movs        dword ptr [edi],dword ptr [esi]
 00586903    movs        dword ptr [edi],dword ptr [esi]
 00586904    movs        dword ptr [edi],dword ptr [esi]
 00586905    mov         ecx,dword ptr [ebp+0C]
 00586908    push        ecx
 00586909    mov         ecx,dword ptr [ebp+8]
 0058690C    push        ecx
 0058690D    lea         ecx,[ebp-0C]
 00586910    mov         ebx,dword ptr [eax]
 00586912    call        dword ptr [ebx+24]
 00586915    pop         edi
 00586916    pop         esi
 00586917    pop         ebx
 00586918    mov         esp,ebp
 0058691A    pop         ebp
 0058691B    ret         8
*}
end;

//00586920
function TCustomStyleServices.GetElementSize(DC:HDC; Details:TThemedElementDetails; Size:TSize; ElementSize:TElementSize):Boolean;
begin
{*
 00586920    push        ebp
 00586921    mov         ebp,esp
 00586923    add         esp,0FFFFFFF4
 00586926    push        ebx
 00586927    push        esi
 00586928    push        edi
 00586929    mov         esi,ecx
 0058692B    lea         edi,[ebp-0C]
 0058692E    movs        dword ptr [edi],dword ptr [esi]
 0058692F    movs        dword ptr [edi],dword ptr [esi]
 00586930    movs        dword ptr [edi],dword ptr [esi]
 00586931    push        0
 00586933    movzx       ecx,byte ptr [ebp+0C]
 00586937    push        ecx
 00586938    mov         ecx,dword ptr [ebp+8]
 0058693B    push        ecx
 0058693C    lea         ecx,[ebp-0C]
 0058693F    mov         ebx,dword ptr [eax]
 00586941    call        dword ptr [ebx+28]
 00586944    pop         edi
 00586945    pop         esi
 00586946    pop         ebx
 00586947    mov         esp,ebp
 00586949    pop         ebp
 0058694A    ret         8
*}
end;

//00586950
function TCustomStyleServices.GetElementSize(DC:HDC; Details:TThemedElementDetails; Size:TSize; ElementSize:TElementSize; Rect:TRect):Boolean;
begin
{*
 00586950    push        ebp
 00586951    mov         ebp,esp
 00586953    add         esp,0FFFFFFF4
 00586956    push        ebx
 00586957    push        esi
 00586958    push        edi
 00586959    mov         esi,ecx
 0058695B    lea         edi,[ebp-0C]
 0058695E    movs        dword ptr [edi],dword ptr [esi]
 0058695F    movs        dword ptr [edi],dword ptr [esi]
 00586960    movs        dword ptr [edi],dword ptr [esi]
 00586961    mov         ecx,dword ptr [ebp+10]
 00586964    push        ecx
 00586965    movzx       ecx,byte ptr [ebp+0C]
 00586969    push        ecx
 0058696A    mov         ecx,dword ptr [ebp+8]
 0058696D    push        ecx
 0058696E    lea         ecx,[ebp-0C]
 00586971    mov         ebx,dword ptr [eax]
 00586973    call        dword ptr [ebx+28]
 00586976    pop         edi
 00586977    pop         esi
 00586978    pop         ebx
 00586979    mov         esp,ebp
 0058697B    pop         ebp
 0058697C    ret         0C
*}
end;

//00586980
function TCustomStyleServices.GetIsSystemStyle:Boolean;
begin
{*
 00586980    push        ebx
 00586981    mov         ebx,eax
 00586983    call        TStyleManager.GetSystemStyle
 00586988    cmp         ebx,eax
 0058698A    sete        al
 0058698D    pop         ebx
 0058698E    ret
*}
end;

//00586990
function TCustomStyleServices.GetStyleColor(Color:TStyleColor):TColor;
begin
{*
 00586990    mov         ecx,dword ptr [eax]
 00586992    call        dword ptr [ecx+2C];TCustomStyleServices.DoGetStyleColor
 00586995    ret
*}
end;

//00586998
function TCustomStyleServices.GetStyleFontColor(Font:TStyleFont):TColor;
begin
{*
 00586998    mov         ecx,dword ptr [eax]
 0058699A    call        dword ptr [ecx+30];@AbstractError
 0058699D    ret
*}
end;

//005869A0
function TCustomStyleServices.GetSystemColor(Color:TColor):TColor;
begin
{*
 005869A0    mov         ecx,dword ptr [eax]
 005869A2    call        dword ptr [ecx+34];@AbstractError
 005869A5    ret
*}
end;

//005869A8
function TCustomStyleServices.GetFlags:TStyleFlags;
begin
{*
 005869A8    movzx       eax,byte ptr ds:[5869B0]
 005869AF    ret
*}
end;

//005869B4
function TCustomStyleServices.HasTransparentParts(Details:TThemedElementDetails):Boolean;
begin
{*
 005869B4    push        esi
 005869B5    push        edi
 005869B6    add         esp,0FFFFFFF4
 005869B9    mov         esi,edx
 005869BB    lea         edi,[esp]
 005869BE    movs        dword ptr [edi],dword ptr [esi]
 005869BF    movs        dword ptr [edi],dword ptr [esi]
 005869C0    movs        dword ptr [edi],dword ptr [esi]
 005869C1    mov         edx,esp
 005869C3    mov         ecx,dword ptr [eax]
 005869C5    call        dword ptr [ecx+3C]
 005869C8    add         esp,0C
 005869CB    pop         edi
 005869CC    pop         esi
 005869CD    ret
*}
end;

//005869D0
function TCustomStyleServices.HasElementFixedPosition(Details:TThemedElementDetails):Boolean;
begin
{*
 005869D0    push        esi
 005869D1    push        edi
 005869D2    add         esp,0FFFFFFF4
 005869D5    mov         esi,edx
 005869D7    lea         edi,[esp]
 005869DA    movs        dword ptr [edi],dword ptr [esi]
 005869DB    movs        dword ptr [edi],dword ptr [esi]
 005869DC    movs        dword ptr [edi],dword ptr [esi]
 005869DD    mov         edx,esp
 005869DF    mov         ecx,dword ptr [eax]
 005869E1    call        dword ptr [ecx+40]
 005869E4    add         esp,0C
 005869E7    pop         edi
 005869E8    pop         esi
 005869E9    ret
*}
end;

//005869EC
function TCustomStyleServices.LoadFromFile(FileName:string):TCustomStyleServices;
begin
{*
 005869EC    push        ebp
 005869ED    mov         ebp,esp
 005869EF    add         esp,0FFFFFFF8
 005869F2    push        esi
 005869F3    mov         esi,eax
 005869F5    push        0
 005869F7    mov         ecx,edx
 005869F9    mov         eax,[00472830];TFileStream
 005869FE    mov         dl,1
 00586A00    call        TFileStream.Create;TFileStream.Create
 00586A05    mov         dword ptr [ebp-8],eax
 00586A08    xor         eax,eax
 00586A0A    push        ebp
 00586A0B    push        586A3A
 00586A10    push        dword ptr fs:[eax]
 00586A13    mov         dword ptr fs:[eax],esp
 00586A16    mov         edx,dword ptr [ebp-8]
 00586A19    mov         eax,esi
 00586A1B    call        dword ptr [eax+110]
 00586A21    mov         dword ptr [ebp-4],eax
 00586A24    xor         eax,eax
 00586A26    pop         edx
 00586A27    pop         ecx
 00586A28    pop         ecx
 00586A29    mov         dword ptr fs:[eax],edx
 00586A2C    push        586A41
 00586A31    mov         eax,dword ptr [ebp-8]
 00586A34    call        TObject.Free
 00586A39    ret
>00586A3A    jmp         @HandleFinally
>00586A3F    jmp         00586A31
 00586A41    mov         eax,dword ptr [ebp-4]
 00586A44    pop         esi
 00586A45    pop         ecx
 00586A46    pop         ecx
 00586A47    pop         ebp
 00586A48    ret
*}
end;

//00586A4C
procedure TCustomStyleServices.PaintBorder(Control:TWinControl; EraseLRCorner:Boolean);
begin
{*
 00586A4C    push        ebp
 00586A4D    mov         ebp,esp
 00586A4F    add         esp,0FFFFFFBC
 00586A52    push        ebx
 00586A53    push        esi
 00586A54    push        edi
 00586A55    mov         ebx,ecx
 00586A57    mov         dword ptr [ebp-4],edx
 00586A5A    mov         esi,eax
 00586A5C    mov         eax,dword ptr [ebp-4]
 00586A5F    call        TWinControl.GetHandle
 00586A64    push        0EC
 00586A66    push        eax
 00586A67    call        user32.GetWindowLongW
 00586A6C    test        ah,2
>00586A6F    je          00586BF3
 00586A75    lea         eax,[ebp-28]
 00586A78    push        eax
 00586A79    mov         eax,dword ptr [ebp-4]
 00586A7C    call        TWinControl.GetHandle
 00586A81    push        eax
 00586A82    call        user32.GetWindowRect
 00586A87    mov         ecx,dword ptr [ebp-24]
 00586A8A    neg         ecx
 00586A8C    mov         edx,dword ptr [ebp-28]
 00586A8F    neg         edx
 00586A91    lea         eax,[ebp-28]
 00586A94    call        OffsetRect
 00586A99    mov         eax,dword ptr [ebp-4]
 00586A9C    call        TWinControl.GetHandle
 00586AA1    push        eax
 00586AA2    call        user32.GetWindowDC
 00586AA7    mov         dword ptr [ebp-8],eax
 00586AAA    xor         edx,edx
 00586AAC    push        ebp
 00586AAD    push        586BEC
 00586AB2    push        dword ptr fs:[edx]
 00586AB5    mov         dword ptr fs:[edx],esp
 00586AB8    push        esi
 00586AB9    lea         esi,[ebp-28]
 00586ABC    lea         edi,[ebp-18]
 00586ABF    movs        dword ptr [edi],dword ptr [esi]
 00586AC0    movs        dword ptr [edi],dword ptr [esi]
 00586AC1    movs        dword ptr [edi],dword ptr [esi]
 00586AC2    movs        dword ptr [edi],dword ptr [esi]
 00586AC3    pop         esi
 00586AC4    test        bl,bl
>00586AC6    je          00586B85
 00586ACC    mov         eax,dword ptr [ebp-4]
 00586ACF    call        TWinControl.GetHandle
 00586AD4    push        0F0
 00586AD6    push        eax
 00586AD7    call        user32.GetWindowLongW
 00586ADC    test        eax,100000
>00586AE1    je          00586B85
 00586AE7    test        eax,200000
>00586AEC    je          00586B85
 00586AF2    push        2
 00586AF4    call        user32.GetSystemMetrics
 00586AF9    mov         edi,eax
 00586AFB    push        3
 00586AFD    call        user32.GetSystemMetrics
 00586B02    mov         ebx,eax
 00586B04    lea         eax,[ebp-18]
 00586B07    mov         ecx,0FFFFFFFE
 00586B0C    mov         edx,0FFFFFFFE
 00586B11    call        InflateRect
 00586B16    mov         eax,dword ptr [ebp-4]
 00586B19    call        TControl.UseRightToLeftScrollBar
 00586B1E    test        al,al
>00586B20    je          00586B4A
 00586B22    mov         eax,dword ptr [ebp-0C]
 00586B25    push        eax
 00586B26    lea         eax,[ebp-44]
 00586B29    push        eax
 00586B2A    mov         ecx,dword ptr [ebp-18]
 00586B2D    add         ecx,edi
 00586B2F    mov         edx,dword ptr [ebp-0C]
 00586B32    sub         edx,ebx
 00586B34    mov         eax,dword ptr [ebp-18]
 00586B37    call        Rect
 00586B3C    push        esi
 00586B3D    lea         esi,[ebp-44]
 00586B40    lea         edi,[ebp-18]
 00586B43    movs        dword ptr [edi],dword ptr [esi]
 00586B44    movs        dword ptr [edi],dword ptr [esi]
 00586B45    movs        dword ptr [edi],dword ptr [esi]
 00586B46    movs        dword ptr [edi],dword ptr [esi]
 00586B47    pop         esi
>00586B48    jmp         00586B70
 00586B4A    mov         eax,dword ptr [ebp-0C]
 00586B4D    push        eax
 00586B4E    lea         eax,[ebp-44]
 00586B51    push        eax
 00586B52    mov         edx,dword ptr [ebp-0C]
 00586B55    sub         edx,ebx
 00586B57    mov         eax,dword ptr [ebp-10]
 00586B5A    sub         eax,edi
 00586B5C    mov         ecx,dword ptr [ebp-10]
 00586B5F    call        Rect
 00586B64    push        esi
 00586B65    lea         esi,[ebp-44]
 00586B68    lea         edi,[ebp-18]
 00586B6B    movs        dword ptr [edi],dword ptr [esi]
 00586B6C    movs        dword ptr [edi],dword ptr [esi]
 00586B6D    movs        dword ptr [edi],dword ptr [esi]
 00586B6E    movs        dword ptr [edi],dword ptr [esi]
 00586B6F    pop         esi
 00586B70    push        0F
 00586B72    call        user32.GetSysColorBrush
 00586B77    push        eax
 00586B78    lea         eax,[ebp-18]
 00586B7B    push        eax
 00586B7C    mov         eax,dword ptr [ebp-8]
 00586B7F    push        eax
 00586B80    call        user32.FillRect
 00586B85    mov         eax,dword ptr [ebp-1C]
 00586B88    sub         eax,2
 00586B8B    push        eax
 00586B8C    mov         eax,dword ptr [ebp-20]
 00586B8F    sub         eax,2
 00586B92    push        eax
 00586B93    mov         eax,dword ptr [ebp-24]
 00586B96    add         eax,2
 00586B99    push        eax
 00586B9A    mov         eax,dword ptr [ebp-28]
 00586B9D    add         eax,2;TRect.Left:LongInt
 00586BA0    push        eax
 00586BA1    mov         eax,dword ptr [ebp-8]
 00586BA4    push        eax
 00586BA5    call        gdi32.ExcludeClipRect
 00586BAA    lea         ecx,[ebp-34]
 00586BAD    mov         dl,2
 00586BAF    mov         eax,esi
 00586BB1    mov         ebx,dword ptr [eax]
 00586BB3    call        dword ptr [ebx+84];TCustomStyleServices.GetElementDetails
 00586BB9    lea         eax,[ebp-28]
 00586BBC    push        eax
 00586BBD    push        0
 00586BBF    lea         ecx,[ebp-34]
 00586BC2    mov         edx,dword ptr [ebp-8]
 00586BC5    mov         eax,esi
 00586BC7    call        TCustomStyleServices.DrawElement
 00586BCC    xor         eax,eax
 00586BCE    pop         edx
 00586BCF    pop         ecx
 00586BD0    pop         ecx
 00586BD1    mov         dword ptr fs:[eax],edx
 00586BD4    push        586BF3
 00586BD9    mov         eax,dword ptr [ebp-8]
 00586BDC    push        eax
 00586BDD    mov         eax,dword ptr [ebp-4]
 00586BE0    call        TWinControl.GetHandle
 00586BE5    push        eax
 00586BE6    call        user32.ReleaseDC
 00586BEB    ret
>00586BEC    jmp         @HandleFinally
>00586BF1    jmp         00586BD9
 00586BF3    pop         edi
 00586BF4    pop         esi
 00586BF5    pop         ebx
 00586BF6    mov         esp,ebp
 00586BF8    pop         ebp
 00586BF9    ret
*}
end;

//00586BFC
procedure TCustomStyleServices.SaveToFile(FileName:string);
begin
{*
 00586BFC    push        ebp
 00586BFD    mov         ebp,esp
 00586BFF    push        ecx
 00586C00    push        esi
 00586C01    mov         esi,eax
 00586C03    push        1
 00586C05    mov         ecx,edx
 00586C07    mov         eax,[00472830];TFileStream
 00586C0C    mov         dl,1
 00586C0E    call        TFileStream.Create;TFileStream.Create
 00586C13    mov         dword ptr [ebp-4],eax
 00586C16    xor         eax,eax
 00586C18    push        ebp
 00586C19    push        586C47
 00586C1E    push        dword ptr fs:[eax]
 00586C21    mov         dword ptr fs:[eax],esp
 00586C24    mov         edx,dword ptr [ebp-4]
 00586C27    mov         eax,esi
 00586C29    mov         ecx,dword ptr [eax]
 00586C2B    call        dword ptr [ecx+118];TCustomStyleServices.SaveToStream
 00586C31    xor         eax,eax
 00586C33    pop         edx
 00586C34    pop         ecx
 00586C35    pop         ecx
 00586C36    mov         dword ptr fs:[eax],edx
 00586C39    push        586C4E
 00586C3E    mov         eax,dword ptr [ebp-4]
 00586C41    call        TObject.Free
 00586C46    ret
>00586C47    jmp         @HandleFinally
>00586C4C    jmp         00586C3E
 00586C4E    pop         esi
 00586C4F    pop         ecx
 00586C50    pop         ebp
 00586C51    ret
*}
end;

//00586C54
constructor TUxThemeStyle.Create();
begin
{*
 00586C54    push        ebp
 00586C55    mov         ebp,esp
 00586C57    push        ecx
 00586C58    push        ebx
 00586C59    push        esi
 00586C5A    test        dl,dl
>00586C5C    je          00586C66
 00586C5E    add         esp,0FFFFFFF0
 00586C61    call        @ClassCreate
 00586C66    mov         byte ptr [ebp-1],dl
 00586C69    mov         esi,eax
 00586C6B    xor         edx,edx
 00586C6D    mov         eax,esi
 00586C6F    call        TCustomStyleServices.Create
 00586C74    mov         eax,[00574D0C];TUxThemeCategoryButtonElements
 00586C79    mov         dword ptr [esi+10],eax
 00586C7C    mov         eax,[00574FA8];TUxThemeCategoryPanelGroupElements
 00586C81    mov         dword ptr [esi+14],eax
 00586C84    mov         eax,[005752EC];TUxThemeCheckListBoxElements
 00586C89    mov         dword ptr [esi+18],eax
 00586C8C    mov         eax,[0057545C];TUxThemeControlBarElements
 00586C91    mov         dword ptr [esi+1C],eax
 00586C94    mov         eax,[005755CC];TUxThemeGridElements
 00586C99    mov         dword ptr [esi+24],eax
 00586C9C    mov         eax,[00575854];TUxThemeHintElements
 00586CA1    mov         dword ptr [esi+28],eax
 00586CA4    mov         eax,[005759B4];TUxThemePanelElements
 00586CA9    mov         dword ptr [esi+2C],eax
 00586CAC    mov         eax,[00575BB4];TUxThemeTabSetElements
 00586CB1    mov         dword ptr [esi+30],eax
 00586CB4    mov         eax,[00575D1C];TUxThemeTextLabelElements
 00586CB9    mov         dword ptr [esi+34],eax
 00586CBC    call        004D44C4
 00586CC1    mov         ebx,eax
 00586CC3    mov         byte ptr [esi+38],bl
 00586CC6    test        bl,bl
>00586CC8    je          00586CE9
 00586CCA    mov         eax,586D14;'comctl32.dll'
 00586CCF    call        GetFileVersion
 00586CD4    cmp         eax,60000
 00586CD9    setae       al
 00586CDC    mov         byte ptr [esi+39],al
 00586CDF    mov         eax,esi
 00586CE1    mov         edx,dword ptr [eax]
 00586CE3    call        dword ptr [edx+11C]
 00586CE9    mov         eax,esi
 00586CEB    cmp         byte ptr [ebp-1],0
>00586CEF    je          00586D00
 00586CF1    call        @AfterConstruction
 00586CF6    pop         dword ptr fs:[0]
 00586CFD    add         esp,0C
 00586D00    mov         eax,esi
 00586D02    pop         esi
 00586D03    pop         ebx
 00586D04    pop         ecx
 00586D05    pop         ebp
 00586D06    ret
*}
end;

//00586D30
destructor TUxThemeStyle.Destroy();
begin
{*
 00586D30    push        ebx
 00586D31    push        esi
 00586D32    call        @BeforeDestruction
 00586D37    mov         ebx,edx
 00586D39    mov         esi,eax
 00586D3B    mov         eax,esi
 00586D3D    mov         edx,dword ptr [eax]
 00586D3F    call        dword ptr [edx+58]
 00586D42    mov         eax,[007C41B8];IsLibrary:Boolean
 00586D47    cmp         byte ptr [eax],0
>00586D4A    jne         00586D51
 00586D4C    call        FreeThemeLibrary
 00586D51    test        bl,bl
>00586D53    jle         00586D5C
 00586D55    mov         eax,esi
 00586D57    call        @ClassDestroy
 00586D5C    pop         esi
 00586D5D    pop         ebx
 00586D5E    ret
*}
end;

//00586D60
function TUxThemeStyle.DoColorToRGB(Color:Graphics.TColor; Details:PThemedElementDetails):TColorRef;
begin
{*
 00586D60    push        ebx
 00586D61    push        esi
 00586D62    push        edi
 00586D63    mov         edi,ecx
 00586D65    mov         ebx,edx
 00586D67    mov         esi,eax
 00586D69    test        ebx,80000000
>00586D6F    je          00586D75
 00586D71    test        edi,edi
>00586D73    jne         00586D79
 00586D75    mov         eax,ebx
>00586D77    jmp         00586D94
 00586D79    and         ebx,7FFFFFFF
 00586D7F    push        ebx
 00586D80    movzx       edx,byte ptr [edi]
 00586D83    mov         eax,esi
 00586D85    mov         ecx,dword ptr [eax]
 00586D87    call        dword ptr [ecx+54]
 00586D8A    push        eax
 00586D8B    mov         eax,[007C43F0];^gvar_007CA55C:Pointer
 00586D90    mov         eax,dword ptr [eax]
 00586D92    call        eax
 00586D94    pop         edi
 00586D95    pop         esi
 00586D96    pop         ebx
 00586D97    ret
*}
end;

//00586D98
function TUxThemeStyle.DoDrawEdge(DC:Windows.HDC; Details:TThemedElementDetails; const R:Windows.TRect; Edges:TElementEdges; Flags:TElementEdgeFlags; ContentRect:Windows.PRect):Boolean;
begin
{*
 00586D98    push        ebp
 00586D99    mov         ebp,esp
 00586D9B    add         esp,0FFFFFFF0
 00586D9E    push        ebx
 00586D9F    push        esi
 00586DA0    push        edi
 00586DA1    mov         esi,ecx
 00586DA3    lea         edi,[ebp-10]
 00586DA6    movs        dword ptr [edi],dword ptr [esi]
 00586DA7    movs        dword ptr [edi],dword ptr [esi]
 00586DA8    movs        dword ptr [edi],dword ptr [esi]
 00586DA9    mov         dword ptr [ebp-4],edx
 00586DAC    mov         esi,eax
 00586DAE    movzx       ebx,byte ptr [ebp-10]
 00586DB2    mov         eax,ebx
 00586DB4    add         al,0E0
 00586DB6    sub         al,0A
>00586DB8    jae         00586DE3
 00586DBA    mov         eax,dword ptr [ebp-0C]
 00586DBD    push        eax
 00586DBE    mov         eax,dword ptr [ebp-8]
 00586DC1    push        eax
 00586DC2    mov         eax,dword ptr [ebp+14]
 00586DC5    push        eax
 00586DC6    movzx       eax,byte ptr [ebp+10]
 00586DCA    push        eax
 00586DCB    mov         eax,dword ptr [ebp+0C]
 00586DCE    push        eax
 00586DCF    mov         eax,dword ptr [ebp+8]
 00586DD2    push        eax
 00586DD3    movzx       eax,bl
 00586DD6    mov         eax,dword ptr [esi+eax*4-70]
 00586DDA    mov         ecx,dword ptr [ebp-4]
 00586DDD    mov         edx,esi
 00586DDF    call        dword ptr [eax]
>00586DE1    jmp         00586E2C
 00586DE3    mov         eax,dword ptr [ebp+8]
 00586DE6    push        eax
 00586DE7    mov         eax,dword ptr [ebp+0C]
 00586DEA    call        TStyleElementEdgeFlags.&op_Implicit
 00586DEF    call        TStyleElementEdgeFlags.&op_Implicit
 00586DF4    push        eax
 00586DF5    movzx       eax,byte ptr [ebp+10]
 00586DF9    call        TStyleElementEdges.&op_Implicit
 00586DFE    call        TStyleElementEdges.&op_Implicit
 00586E03    push        eax
 00586E04    mov         eax,dword ptr [ebp+14]
 00586E07    push        eax
 00586E08    mov         eax,dword ptr [ebp-8]
 00586E0B    push        eax
 00586E0C    mov         eax,dword ptr [ebp-0C]
 00586E0F    push        eax
 00586E10    mov         eax,dword ptr [ebp-4]
 00586E13    push        eax
 00586E14    mov         edx,ebx
 00586E16    mov         eax,esi
 00586E18    mov         ecx,dword ptr [eax]
 00586E1A    call        dword ptr [ecx+54]
 00586E1D    push        eax
 00586E1E    mov         eax,[007C4884];^gvar_007CA514:Pointer
 00586E23    mov         eax,dword ptr [eax]
 00586E25    call        eax
 00586E27    test        eax,eax
 00586E29    sete        al
 00586E2C    pop         edi
 00586E2D    pop         esi
 00586E2E    pop         ebx
 00586E2F    mov         esp,ebp
 00586E31    pop         ebp
 00586E32    ret         10
*}
end;

//00586E38
function TUxThemeStyle.DoDrawElement(DC:Windows.HDC; Details:TThemedElementDetails; const R:Windows.TRect; ClipRect:Windows.PRect):Boolean;
begin
{*
 00586E38    push        ebp
 00586E39    mov         ebp,esp
 00586E3B    add         esp,0FFFFFFF0
 00586E3E    push        ebx
 00586E3F    push        esi
 00586E40    push        edi
 00586E41    mov         esi,ecx
 00586E43    lea         edi,[ebp-10]
 00586E46    movs        dword ptr [edi],dword ptr [esi]
 00586E47    movs        dword ptr [edi],dword ptr [esi]
 00586E48    movs        dword ptr [edi],dword ptr [esi]
 00586E49    mov         dword ptr [ebp-4],edx
 00586E4C    mov         esi,eax
 00586E4E    movzx       ebx,byte ptr [ebp-10]
 00586E52    mov         eax,ebx
 00586E54    add         al,0E0
 00586E56    sub         al,0A
>00586E58    jae         00586E7B
 00586E5A    mov         eax,dword ptr [ebp-0C]
 00586E5D    push        eax
 00586E5E    mov         eax,dword ptr [ebp-8]
 00586E61    push        eax
 00586E62    mov         eax,dword ptr [ebp+0C]
 00586E65    push        eax
 00586E66    mov         eax,dword ptr [ebp+8]
 00586E69    push        eax
 00586E6A    movzx       eax,bl
 00586E6D    mov         eax,dword ptr [esi+eax*4-70]
 00586E71    mov         ecx,dword ptr [ebp-4]
 00586E74    mov         edx,esi
 00586E76    call        dword ptr [eax+4]
>00586E79    jmp         00586EA7
 00586E7B    mov         eax,dword ptr [ebp+8]
 00586E7E    push        eax
 00586E7F    mov         eax,dword ptr [ebp+0C]
 00586E82    push        eax
 00586E83    mov         eax,dword ptr [ebp-8]
 00586E86    push        eax
 00586E87    mov         eax,dword ptr [ebp-0C]
 00586E8A    push        eax
 00586E8B    mov         eax,dword ptr [ebp-4]
 00586E8E    push        eax
 00586E8F    mov         edx,ebx
 00586E91    mov         eax,esi
 00586E93    mov         ecx,dword ptr [eax]
 00586E95    call        dword ptr [ecx+54]
 00586E98    push        eax
 00586E99    mov         eax,[007C47E4];^gvar_007CA4F0:Pointer
 00586E9E    mov         eax,dword ptr [eax]
 00586EA0    call        eax
 00586EA2    test        eax,eax
 00586EA4    sete        al
 00586EA7    pop         edi
 00586EA8    pop         esi
 00586EA9    pop         ebx
 00586EAA    mov         esp,ebp
 00586EAC    pop         ebp
 00586EAD    ret         8
*}
end;

//00586EB0
function TUxThemeStyle.DoDrawIcon(DC:Windows.HDC; Details:TThemedElementDetails; const R:Windows.TRect; himl:CommCtrl.HIMAGELIST; Index:Integer):Boolean;
begin
{*
 00586EB0    push        ebp
 00586EB1    mov         ebp,esp
 00586EB3    add         esp,0FFFFFFF0
 00586EB6    push        ebx
 00586EB7    push        esi
 00586EB8    push        edi
 00586EB9    mov         esi,ecx
 00586EBB    lea         edi,[ebp-10]
 00586EBE    movs        dword ptr [edi],dword ptr [esi]
 00586EBF    movs        dword ptr [edi],dword ptr [esi]
 00586EC0    movs        dword ptr [edi],dword ptr [esi]
 00586EC1    mov         dword ptr [ebp-4],edx
 00586EC4    mov         esi,eax
 00586EC6    movzx       ebx,byte ptr [ebp-10]
 00586ECA    mov         eax,ebx
 00586ECC    add         al,0E0
 00586ECE    sub         al,0A
>00586ED0    jae         00586EF7
 00586ED2    mov         eax,dword ptr [ebp-0C]
 00586ED5    push        eax
 00586ED6    mov         eax,dword ptr [ebp-8]
 00586ED9    push        eax
 00586EDA    mov         eax,dword ptr [ebp+10]
 00586EDD    push        eax
 00586EDE    mov         eax,dword ptr [ebp+0C]
 00586EE1    push        eax
 00586EE2    mov         eax,dword ptr [ebp+8]
 00586EE5    push        eax
 00586EE6    movzx       eax,bl
 00586EE9    mov         eax,dword ptr [esi+eax*4-70]
 00586EED    mov         ecx,dword ptr [ebp-4]
 00586EF0    mov         edx,esi
 00586EF2    call        dword ptr [eax+8]
>00586EF5    jmp         00586F27
 00586EF7    mov         eax,dword ptr [ebp+8]
 00586EFA    push        eax
 00586EFB    mov         eax,dword ptr [ebp+0C]
 00586EFE    push        eax
 00586EFF    mov         eax,dword ptr [ebp+10]
 00586F02    push        eax
 00586F03    mov         eax,dword ptr [ebp-8]
 00586F06    push        eax
 00586F07    mov         eax,dword ptr [ebp-0C]
 00586F0A    push        eax
 00586F0B    mov         eax,dword ptr [ebp-4]
 00586F0E    push        eax
 00586F0F    mov         edx,ebx
 00586F11    mov         eax,esi
 00586F13    mov         ecx,dword ptr [eax]
 00586F15    call        dword ptr [ecx+54]
 00586F18    push        eax
 00586F19    mov         eax,[007C4CF8];^gvar_007CA518:Pointer
 00586F1E    mov         eax,dword ptr [eax]
 00586F20    call        eax
 00586F22    test        eax,eax
 00586F24    sete        al
 00586F27    pop         edi
 00586F28    pop         esi
 00586F29    pop         ebx
 00586F2A    mov         esp,ebp
 00586F2C    pop         ebp
 00586F2D    ret         0C
*}
end;

//00586F30
{*function sub_00586F30(?:?; ?:?; ?:?; ?:?; ?:?):Boolean;
begin
 00586F30    push        ebp
 00586F31    mov         ebp,esp
 00586F33    push        ecx
 00586F34    push        esi
 00586F35    mov         dword ptr [ebp-4],ecx
 00586F38    mov         esi,edx
 00586F3A    mov         edx,dword ptr [ebp+10]
 00586F3D    cmp         byte ptr [ebp+0C],0
>00586F41    je          00586F4E
 00586F43    test        edx,edx
>00586F45    je          00586F4E
 00586F47    mov         ecx,dword ptr [eax]
 00586F49    call        dword ptr [ecx+3C];TUxThemeStyle.DoHasTransparentParts
>00586F4C    jmp         00586F50
 00586F4E    mov         al,1
 00586F50    test        al,al
>00586F52    je          00586F6B
 00586F54    mov         eax,dword ptr [ebp+8]
 00586F57    push        eax
 00586F58    mov         eax,dword ptr [ebp-4]
 00586F5B    push        eax
 00586F5C    push        esi
 00586F5D    mov         eax,[007C49A0];^gvar_007CA59C:Pointer
 00586F62    mov         eax,dword ptr [eax]
 00586F64    call        eax
 00586F66    test        eax,eax
 00586F68    sete        al
 00586F6B    pop         esi
 00586F6C    pop         ecx
 00586F6D    pop         ebp
 00586F6E    ret         0C
end;*}

//00586F74
{*function sub_00586F74(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):Boolean;
begin
 00586F74    push        ebp
 00586F75    mov         ebp,esp
 00586F77    add         esp,0FFFFFF88
 00586F7A    push        ebx
 00586F7B    push        esi
 00586F7C    push        edi
 00586F7D    mov         esi,dword ptr [ebp+8]
 00586F80    lea         edi,[ebp-38]
 00586F83    push        ecx
 00586F84    mov         ecx,8
 00586F89    rep movs    dword ptr [edi],dword ptr [esi]
 00586F8B    pop         ecx
 00586F8C    mov         esi,ecx
 00586F8E    lea         edi,[ebp-18]
 00586F91    movs        dword ptr [edi],dword ptr [esi]
 00586F92    movs        dword ptr [edi],dword ptr [esi]
 00586F93    movs        dword ptr [edi],dword ptr [esi]
 00586F94    mov         dword ptr [ebp-4],edx
 00586F97    mov         esi,eax
 00586F99    movzx       eax,byte ptr [ebp-18]
 00586F9D    mov         edx,eax
 00586F9F    add         dl,0E0
 00586FA2    sub         dl,0A
>00586FA5    jae         00586FD3
 00586FA7    mov         edx,dword ptr [ebp-14]
 00586FAA    push        edx
 00586FAB    mov         edx,dword ptr [ebp-10]
 00586FAE    push        edx
 00586FAF    mov         edx,dword ptr [ebp+14]
 00586FB2    push        edx
 00586FB3    mov         edx,dword ptr [ebp+10]
 00586FB6    push        edx
 00586FB7    mov         edx,dword ptr [ebp+0C]
 00586FBA    push        edx
 00586FBB    lea         edx,[ebp-38]
 00586FBE    push        edx
 00586FBF    and         eax,7F
 00586FC2    mov         eax,dword ptr [esi+eax*4-70]
 00586FC6    mov         ecx,dword ptr [ebp-4]
 00586FC9    mov         edx,esi
 00586FCB    call        dword ptr [eax+0C]
>00586FCE    jmp         0058718F
 00586FD3    mov         eax,dword ptr [ebp+0C]
 00586FD6    call        TTextFormatFlags.&op_Implicit
 00586FDB    call        TTextFormatFlags.&op_Implicit
 00586FE0    mov         dword ptr [ebp-8],eax
 00586FE3    mov         eax,[007C4364];^gvar_007C7DC0
 00586FE8    cmp         dword ptr [eax],6
 00586FEB    setge       al
 00586FEE    test        al,al
>00586FF0    je          005870D1
 00586FF6    lea         eax,[ebp-78]
 00586FF9    xor         ecx,ecx
 00586FFB    mov         edx,40
 00587000    call        @FillChar
 00587005    mov         dword ptr [ebp-78],40
 0058700C    xor         eax,eax
 0058700E    mov         edx,7A1AB0
 00587013    mov         ecx,eax
 00587015    cmp         cl,7
>00587018    ja          00587024
 0058701A    and         ecx,7F
 0058701D    movzx       ebx,byte ptr [ebp-38]
 00587021    bt          ebx,ecx
>00587024    jae         0058702B
 00587026    mov         ecx,dword ptr [edx]
 00587028    or          dword ptr [ebp-74],ecx
 0058702B    inc         eax
 0058702C    add         edx,4
 0058702F    cmp         al,6
>00587031    jne         00587013
 00587033    mov         eax,dword ptr [ebp-34]
 00587036    call        ColorToRGB
 0058703B    mov         dword ptr [ebp-70],eax
 0058703E    mov         eax,dword ptr [ebp-30]
 00587041    call        ColorToRGB
 00587046    mov         dword ptr [ebp-6C],eax
 00587049    mov         eax,dword ptr [ebp-2C]
 0058704C    mov         dword ptr [ebp-58],eax
 0058704F    mov         eax,dword ptr [ebp-28]
 00587052    call        ColorToRGB
 00587057    mov         dword ptr [ebp-68],eax
 0058705A    mov         eax,dword ptr [ebp-24]
 0058705D    mov         dword ptr [ebp-60],eax
 00587060    mov         eax,dword ptr [ebp-20]
 00587063    mov         dword ptr [ebp-5C],eax
 00587066    mov         eax,dword ptr [ebp-1C]
 00587069    mov         dword ptr [ebp-44],eax
 0058706C    test        byte ptr [ebp+0E],80
>00587070    je          00587079
 00587072    or          dword ptr [ebp-74],2000
 00587079    test        byte ptr [ebp+0C],2
>0058707D    je          00587086
 0058707F    or          dword ptr [ebp-74],200
 00587086    movzx       edx,byte ptr [ebp-18]
 0058708A    mov         eax,esi
 0058708C    mov         ecx,dword ptr [eax]
 0058708E    call        dword ptr [ecx+54];TUxThemeStyle.GetTheme
 00587091    mov         esi,eax
 00587093    mov         ebx,dword ptr [ebp+14]
 00587096    test        ebx,ebx
>00587098    je          0058709F
 0058709A    sub         ebx,4
 0058709D    mov         ebx,dword ptr [ebx]
 0058709F    lea         eax,[ebp-78]
 005870A2    push        eax
 005870A3    mov         eax,dword ptr [ebp+10]
 005870A6    push        eax
 005870A7    mov         eax,dword ptr [ebp-8]
 005870AA    push        eax
 005870AB    push        ebx
 005870AC    mov         eax,dword ptr [ebp+14]
 005870AF    call        @UStrToPWChar
 005870B4    push        eax
 005870B5    mov         eax,dword ptr [ebp-10]
 005870B8    push        eax
 005870B9    mov         eax,dword ptr [ebp-14]
 005870BC    push        eax
 005870BD    mov         eax,dword ptr [ebp-4]
 005870C0    push        eax
 005870C1    push        esi
 005870C2    call        004D4224
 005870C7    test        eax,eax
 005870C9    sete        al
>005870CC    jmp         0058718F
 005870D1    test        byte ptr [ebp-38],1
>005870D5    je          00587147
 005870D7    mov         eax,dword ptr [ebp-34]
 005870DA    call        ColorToRGB
 005870DF    push        eax
 005870E0    mov         eax,dword ptr [ebp-4]
 005870E3    push        eax
 005870E4    call        gdi32.SetTextColor
 005870E9    mov         dword ptr [ebp-0C],eax
 005870EC    xor         eax,eax
 005870EE    push        ebp
 005870EF    push        58713C
 005870F4    push        dword ptr fs:[eax]
 005870F7    mov         dword ptr fs:[eax],esp
 005870FA    mov         ebx,dword ptr [ebp+14]
 005870FD    test        ebx,ebx
>005870FF    je          00587106
 00587101    sub         ebx,4
 00587104    mov         ebx,dword ptr [ebx]
 00587106    mov         eax,dword ptr [ebp-8]
 00587109    push        eax
 0058710A    mov         eax,dword ptr [ebp+10]
 0058710D    push        eax
 0058710E    push        ebx
 0058710F    mov         eax,dword ptr [ebp+14]
 00587112    call        @UStrToPWChar
 00587117    push        eax
 00587118    mov         eax,dword ptr [ebp-4]
 0058711B    push        eax
 0058711C    call        user32.DrawTextW
 00587121    xor         eax,eax
 00587123    pop         edx
 00587124    pop         ecx
 00587125    pop         ecx
 00587126    mov         dword ptr fs:[eax],edx
 00587129    push        587143
 0058712E    mov         eax,dword ptr [ebp-0C]
 00587131    push        eax
 00587132    mov         eax,dword ptr [ebp-4]
 00587135    push        eax
 00587136    call        gdi32.SetTextColor
 0058713B    ret
>0058713C    jmp         @HandleFinally
>00587141    jmp         0058712E
 00587143    mov         al,1
>00587145    jmp         0058718F
 00587147    movzx       edx,byte ptr [ebp-18]
 0058714B    mov         eax,esi
 0058714D    mov         ecx,dword ptr [eax]
 0058714F    call        dword ptr [ecx+54];TUxThemeStyle.GetTheme
 00587152    mov         esi,eax
 00587154    mov         ebx,dword ptr [ebp+14]
 00587157    test        ebx,ebx
>00587159    je          00587160
 0058715B    sub         ebx,4
 0058715E    mov         ebx,dword ptr [ebx]
 00587160    mov         eax,dword ptr [ebp+10]
 00587163    push        eax
 00587164    push        0
 00587166    mov         eax,dword ptr [ebp-8]
 00587169    push        eax
 0058716A    push        ebx
 0058716B    mov         eax,dword ptr [ebp+14]
 0058716E    call        @UStrToPWChar
 00587173    push        eax
 00587174    mov         eax,dword ptr [ebp-10]
 00587177    push        eax
 00587178    mov         eax,dword ptr [ebp-14]
 0058717B    push        eax
 0058717C    mov         eax,dword ptr [ebp-4]
 0058717F    push        eax
 00587180    push        esi
 00587181    mov         eax,[007C4C58];^gvar_007CA4F4:Pointer
 00587186    mov         eax,dword ptr [eax]
 00587188    call        eax
 0058718A    test        eax,eax
 0058718C    sete        al
 0058718F    pop         edi
 00587190    pop         esi
 00587191    pop         ebx
 00587192    mov         esp,ebp
 00587194    pop         ebp
 00587195    ret         10
end;*}

//00587198
function TUxThemeStyle.DoGetElementContentRect(DC:Windows.HDC; Details:TThemedElementDetails; const BoundingRect:Windows.TRect; var ContentRect:Windows.TRect):Boolean;
begin
{*
 00587198    push        ebp
 00587199    mov         ebp,esp
 0058719B    add         esp,0FFFFFFF0
 0058719E    push        ebx
 0058719F    push        esi
 005871A0    push        edi
 005871A1    mov         esi,ecx
 005871A3    lea         edi,[ebp-10]
 005871A6    movs        dword ptr [edi],dword ptr [esi]
 005871A7    movs        dword ptr [edi],dword ptr [esi]
 005871A8    movs        dword ptr [edi],dword ptr [esi]
 005871A9    mov         dword ptr [ebp-4],edx
 005871AC    mov         esi,eax
 005871AE    movzx       ebx,byte ptr [ebp-10]
 005871B2    mov         eax,ebx
 005871B4    add         al,0E0
 005871B6    sub         al,0A
>005871B8    jae         005871DB
 005871BA    mov         eax,dword ptr [ebp-0C]
 005871BD    push        eax
 005871BE    mov         eax,dword ptr [ebp-8]
 005871C1    push        eax
 005871C2    mov         eax,dword ptr [ebp+0C]
 005871C5    push        eax
 005871C6    mov         eax,dword ptr [ebp+8]
 005871C9    push        eax
 005871CA    movzx       eax,bl
 005871CD    mov         eax,dword ptr [esi+eax*4-70]
 005871D1    mov         ecx,dword ptr [ebp-4]
 005871D4    mov         edx,esi
 005871D6    call        dword ptr [eax+10]
>005871D9    jmp         00587207
 005871DB    mov         eax,dword ptr [ebp+8]
 005871DE    push        eax
 005871DF    mov         eax,dword ptr [ebp+0C]
 005871E2    push        eax
 005871E3    mov         eax,dword ptr [ebp-8]
 005871E6    push        eax
 005871E7    mov         eax,dword ptr [ebp-0C]
 005871EA    push        eax
 005871EB    mov         eax,dword ptr [ebp-4]
 005871EE    push        eax
 005871EF    mov         edx,ebx
 005871F1    mov         eax,esi
 005871F3    mov         ecx,dword ptr [eax]
 005871F5    call        dword ptr [ecx+54]
 005871F8    push        eax
 005871F9    mov         eax,[007C45D0];^gvar_007CA4F8:Pointer
 005871FE    mov         eax,dword ptr [eax]
 00587200    call        eax
 00587202    test        eax,eax
 00587204    sete        al
 00587207    pop         edi
 00587208    pop         esi
 00587209    pop         ebx
 0058720A    mov         esp,ebp
 0058720C    pop         ebp
 0058720D    ret         8
*}
end;

//00587210
function TUxThemeStyle.DoGetElementColor(Details:TThemedElementDetails; ElementColor:TElementColor; var Color:Graphics.TColor):Boolean;
begin
{*
 00587210    push        ebp
 00587211    mov         ebp,esp
 00587213    add         esp,0FFFFFFF0
 00587216    push        ebx
 00587217    push        esi
 00587218    push        edi
 00587219    mov         esi,edx
 0058721B    lea         edi,[ebp-10]
 0058721E    movs        dword ptr [edi],dword ptr [esi]
 0058721F    movs        dword ptr [edi],dword ptr [esi]
 00587220    movs        dword ptr [edi],dword ptr [esi]
 00587221    mov         byte ptr [ebp-1],cl
 00587224    mov         esi,eax
 00587226    movzx       ebx,byte ptr [ebp-10]
 0058722A    mov         eax,ebx
 0058722C    add         al,0E0
 0058722E    sub         al,0A
>00587230    jae         00587250
 00587232    mov         eax,dword ptr [ebp-8]
 00587235    push        eax
 00587236    movzx       eax,byte ptr [ebp-1]
 0058723A    push        eax
 0058723B    mov         eax,dword ptr [ebp+8]
 0058723E    push        eax
 0058723F    movzx       eax,bl
 00587242    mov         eax,dword ptr [esi+eax*4-70]
 00587246    mov         ecx,dword ptr [ebp-0C]
 00587249    mov         edx,esi
 0058724B    call        dword ptr [eax+14]
>0058724E    jmp         0058727E
 00587250    mov         eax,dword ptr [ebp+8]
 00587253    push        eax
 00587254    movzx       eax,byte ptr [ebp-1]
 00587258    add         eax,0ED9
 0058725D    push        eax
 0058725E    mov         eax,dword ptr [ebp-8]
 00587261    push        eax
 00587262    mov         eax,dword ptr [ebp-0C]
 00587265    push        eax
 00587266    mov         edx,ebx
 00587268    mov         eax,esi
 0058726A    mov         ecx,dword ptr [eax]
 0058726C    call        dword ptr [ecx+54]
 0058726F    push        eax
 00587270    mov         eax,[007C4BA4];^gvar_007CA524:Pointer
 00587275    mov         eax,dword ptr [eax]
 00587277    call        eax
 00587279    test        eax,eax
 0058727B    sete        al
 0058727E    pop         edi
 0058727F    pop         esi
 00587280    pop         ebx
 00587281    mov         esp,ebp
 00587283    pop         ebp
 00587284    ret         4
*}
end;

//00587288
function TUxThemeStyle.DoGetElementMargins(DC:Windows.HDC; Details:TThemedElementDetails; Rect:Windows.PRect; ElementMargin:TElementMargin; var Margins:UxTheme.TMargins):Boolean;
begin
{*
 00587288    push        ebp
 00587289    mov         ebp,esp
 0058728B    add         esp,0FFFFFFF0
 0058728E    push        ebx
 0058728F    push        esi
 00587290    push        edi
 00587291    mov         esi,ecx
 00587293    lea         edi,[ebp-10]
 00587296    movs        dword ptr [edi],dword ptr [esi]
 00587297    movs        dword ptr [edi],dword ptr [esi]
 00587298    movs        dword ptr [edi],dword ptr [esi]
 00587299    mov         dword ptr [ebp-4],edx
 0058729C    mov         esi,eax
 0058729E    movzx       ebx,byte ptr [ebp-10]
 005872A2    mov         eax,ebx
 005872A4    add         al,0E0
 005872A6    sub         al,0A
>005872A8    jae         005872D0
 005872AA    mov         eax,dword ptr [ebp-0C]
 005872AD    push        eax
 005872AE    mov         eax,dword ptr [ebp-8]
 005872B1    push        eax
 005872B2    mov         eax,dword ptr [ebp+10]
 005872B5    push        eax
 005872B6    movzx       eax,byte ptr [ebp+0C]
 005872BA    push        eax
 005872BB    mov         eax,dword ptr [ebp+8]
 005872BE    push        eax
 005872BF    movzx       eax,bl
 005872C2    mov         eax,dword ptr [esi+eax*4-70]
 005872C6    mov         ecx,dword ptr [ebp-4]
 005872C9    mov         edx,esi
 005872CB    call        dword ptr [eax+18]
>005872CE    jmp         00587308
 005872D0    mov         eax,dword ptr [ebp+8]
 005872D3    push        eax
 005872D4    mov         eax,dword ptr [ebp+10]
 005872D7    push        eax
 005872D8    movzx       eax,byte ptr [ebp+0C]
 005872DC    mov         eax,dword ptr [eax*4+7A1AC8]
 005872E3    push        eax
 005872E4    mov         eax,dword ptr [ebp-8]
 005872E7    push        eax
 005872E8    mov         eax,dword ptr [ebp-0C]
 005872EB    push        eax
 005872EC    mov         eax,dword ptr [ebp-4]
 005872EF    push        eax
 005872F0    mov         edx,ebx
 005872F2    mov         eax,esi
 005872F4    mov         ecx,dword ptr [eax]
 005872F6    call        dword ptr [ecx+54]
 005872F9    push        eax
 005872FA    mov         eax,[007C4958];^gvar_007CA548:Pointer
 005872FF    mov         eax,dword ptr [eax]
 00587301    call        eax
 00587303    test        eax,eax
 00587305    sete        al
 00587308    pop         edi
 00587309    pop         esi
 0058730A    pop         ebx
 0058730B    mov         esp,ebp
 0058730D    pop         ebp
 0058730E    ret         0C
*}
end;

//00587314
function TUxThemeStyle.DoGetElementRegion(DC:Windows.HDC; Details:TThemedElementDetails; const Rect:Windows.TRect; var Region:Windows.HRGN):Boolean;
begin
{*
 00587314    push        ebp
 00587315    mov         ebp,esp
 00587317    add         esp,0FFFFFFF0
 0058731A    push        ebx
 0058731B    push        esi
 0058731C    push        edi
 0058731D    mov         esi,ecx
 0058731F    lea         edi,[ebp-10]
 00587322    movs        dword ptr [edi],dword ptr [esi]
 00587323    movs        dword ptr [edi],dword ptr [esi]
 00587324    movs        dword ptr [edi],dword ptr [esi]
 00587325    mov         dword ptr [ebp-4],edx
 00587328    mov         esi,eax
 0058732A    movzx       ebx,byte ptr [ebp-10]
 0058732E    mov         eax,ebx
 00587330    add         al,0E0
 00587332    sub         al,0A
>00587334    jae         00587357
 00587336    mov         eax,dword ptr [ebp-0C]
 00587339    push        eax
 0058733A    mov         eax,dword ptr [ebp-8]
 0058733D    push        eax
 0058733E    mov         eax,dword ptr [ebp+0C]
 00587341    push        eax
 00587342    mov         eax,dword ptr [ebp+8]
 00587345    push        eax
 00587346    movzx       eax,bl
 00587349    mov         eax,dword ptr [esi+eax*4-70]
 0058734D    mov         ecx,dword ptr [ebp-4]
 00587350    mov         edx,esi
 00587352    call        dword ptr [eax+1C]
>00587355    jmp         00587383
 00587357    mov         eax,dword ptr [ebp+8]
 0058735A    push        eax
 0058735B    mov         eax,dword ptr [ebp+0C]
 0058735E    push        eax
 0058735F    mov         eax,dword ptr [ebp-8]
 00587362    push        eax
 00587363    mov         eax,dword ptr [ebp-0C]
 00587366    push        eax
 00587367    mov         eax,dword ptr [ebp-4]
 0058736A    push        eax
 0058736B    mov         edx,ebx
 0058736D    mov         eax,esi
 0058736F    mov         ecx,dword ptr [eax]
 00587371    call        dword ptr [ecx+54]
 00587374    push        eax
 00587375    mov         eax,[007C46D8];^gvar_007CA50C:Pointer
 0058737A    mov         eax,dword ptr [eax]
 0058737C    call        eax
 0058737E    test        eax,eax
 00587380    sete        al
 00587383    pop         edi
 00587384    pop         esi
 00587385    pop         ebx
 00587386    mov         esp,ebp
 00587388    pop         ebp
 00587389    ret         8
*}
end;

//0058738C
function TUxThemeStyle.DoGetElementSize(DC:Windows.HDC; Details:TThemedElementDetails; Rect:Windows.PRect; ElementSize:TElementSize; var Size:Windows.TSize):Boolean;
begin
{*
 0058738C    push        ebp
 0058738D    mov         ebp,esp
 0058738F    add         esp,0FFFFFFF0
 00587392    push        ebx
 00587393    push        esi
 00587394    push        edi
 00587395    mov         esi,ecx
 00587397    lea         edi,[ebp-10]
 0058739A    movs        dword ptr [edi],dword ptr [esi]
 0058739B    movs        dword ptr [edi],dword ptr [esi]
 0058739C    movs        dword ptr [edi],dword ptr [esi]
 0058739D    mov         dword ptr [ebp-4],edx
 005873A0    mov         esi,eax
 005873A2    movzx       ebx,byte ptr [ebp-10]
 005873A6    mov         eax,ebx
 005873A8    add         al,0E0
 005873AA    sub         al,0A
>005873AC    jae         005873D4
 005873AE    mov         eax,dword ptr [ebp-0C]
 005873B1    push        eax
 005873B2    mov         eax,dword ptr [ebp-8]
 005873B5    push        eax
 005873B6    mov         eax,dword ptr [ebp+10]
 005873B9    push        eax
 005873BA    movzx       eax,byte ptr [ebp+0C]
 005873BE    push        eax
 005873BF    mov         eax,dword ptr [ebp+8]
 005873C2    push        eax
 005873C3    movzx       eax,bl
 005873C6    mov         eax,dword ptr [esi+eax*4-70]
 005873CA    mov         ecx,dword ptr [ebp-4]
 005873CD    mov         edx,esi
 005873CF    call        dword ptr [eax+20]
>005873D2    jmp         0058740C
 005873D4    mov         eax,dword ptr [ebp+8]
 005873D7    push        eax
 005873D8    movzx       eax,byte ptr [ebp+0C]
 005873DC    mov         eax,dword ptr [eax*4+7A1AD4]
 005873E3    push        eax
 005873E4    mov         eax,dword ptr [ebp+10]
 005873E7    push        eax
 005873E8    mov         eax,dword ptr [ebp-8]
 005873EB    push        eax
 005873EC    mov         eax,dword ptr [ebp-0C]
 005873EF    push        eax
 005873F0    mov         eax,dword ptr [ebp-4]
 005873F3    push        eax
 005873F4    mov         edx,ebx
 005873F6    mov         eax,esi
 005873F8    mov         ecx,dword ptr [eax]
 005873FA    call        dword ptr [ecx+54]
 005873FD    push        eax
 005873FE    mov         eax,[007C47E0];^gvar_007CA500:Pointer
 00587403    mov         eax,dword ptr [eax]
 00587405    call        eax
 00587407    test        eax,eax
 00587409    sete        al
 0058740C    pop         edi
 0058740D    pop         esi
 0058740E    pop         ebx
 0058740F    mov         esp,ebp
 00587411    pop         ebp
 00587412    ret         0C
*}
end;

//00587418
function TUxThemeStyle.DoGetStyleColor(Color:TStyleColor):TColor;
begin
{*
 00587418    movzx       eax,dl
 0058741B    cmp         eax,1D
>0058741E    ja          00587557
 00587424    jmp         dword ptr [eax*4+58742B]
 00587424    dd          005874A3
 00587424    dd          005874A9
 00587424    dd          005874AF
 00587424    dd          005874B5
 00587424    dd          005874BB
 00587424    dd          005874C1
 00587424    dd          005874C7
 00587424    dd          005874CD
 00587424    dd          005874D3
 00587424    dd          005874D9
 00587424    dd          005874DF
 00587424    dd          005874E5
 00587424    dd          005874EB
 00587424    dd          005874F1
 00587424    dd          005874F7
 00587424    dd          005874FD
 00587424    dd          00587509
 00587424    dd          00587503
 00587424    dd          0058750F
 00587424    dd          00587515
 00587424    dd          0058751B
 00587424    dd          00587521
 00587424    dd          00587527
 00587424    dd          0058752D
 00587424    dd          00587533
 00587424    dd          00587539
 00587424    dd          0058753F
 00587424    dd          00587545
 00587424    dd          0058754B
 00587424    dd          00587551
 005874A3    mov         eax,0FF000006
 005874A8    ret
 005874A9    mov         eax,0FF00000F
 005874AE    ret
 005874AF    mov         eax,0FF00000F
 005874B4    ret
 005874B5    mov         eax,0FF00000F
 005874BA    ret
 005874BB    mov         eax,0FF00000F
 005874C0    ret
 005874C1    mov         eax,0FF00000F
 005874C6    ret
 005874C7    mov         eax,0FF00000F
 005874CC    ret
 005874CD    mov         eax,0C0C0C0
 005874D2    ret
 005874D3    mov         eax,0F0F0F0
 005874D8    ret
 005874D9    mov         eax,0A4A0A0
 005874DE    ret
 005874DF    mov         eax,0FF000005
 005874E4    ret
 005874E5    mov         eax,0FF000005
 005874EA    ret
 005874EB    mov         eax,0FF000005
 005874F0    ret
 005874F1    mov         eax,0FF000005
 005874F6    ret
 005874F7    mov         eax,0FF000005
 005874FC    ret
 005874FD    mov         eax,0FF00000F
 00587502    ret
 00587503    mov         eax,0C0C0C0
 00587508    ret
 00587509    mov         eax,0F0F0F0
 0058750E    ret
 0058750F    mov         eax,0FF000018
 00587514    ret
 00587515    mov         eax,0FF000018
 0058751A    ret
 0058751B    mov         eax,0FF000005
 00587520    ret
 00587521    mov         eax,0FF000005
 00587526    ret
 00587527    mov         eax,0FF000005
 0058752C    ret
 0058752D    mov         eax,0FF00000F
 00587532    ret
 00587533    mov         eax,0FF00000F
 00587538    ret
 00587539    mov         eax,0FFFFFF
 0058753E    ret
 0058753F    mov         eax,0C0C0C0
 00587544    ret
 00587545    mov         eax,0F0F0F0
 0058754A    ret
 0058754B    mov         eax,0FF000005
 00587550    ret
 00587551    mov         eax,0FF00000F
 00587556    ret
 00587557    mov         eax,1FFFFFFF
 0058755C    ret
*}
end;

//00587560
function GetColor(Details:TThemedElementDetails; Default:UITypes.TColor):TColor;
begin
{*
 00587560    push        ebp
 00587561    mov         ebp,esp
 00587563    add         esp,0FFFFFFF0
 00587566    push        ebx
 00587567    push        esi
 00587568    push        edi
 00587569    mov         esi,eax
 0058756B    lea         edi,[ebp-10]
 0058756E    movs        dword ptr [edi],dword ptr [esi]
 0058756F    movs        dword ptr [edi],dword ptr [esi]
 00587570    movs        dword ptr [edi],dword ptr [esi]
 00587571    mov         ebx,edx
 00587573    lea         eax,[ebp-4]
 00587576    push        eax
 00587577    mov         eax,dword ptr [ebp+8]
 0058757A    mov         eax,dword ptr [eax-4]
 0058757D    mov         cl,2
 0058757F    lea         edx,[ebp-10]
 00587582    call        TCustomStyleServices.GetElementColor
 00587587    test        al,al
>00587589    jne         0058758E
 0058758B    mov         dword ptr [ebp-4],ebx
 0058758E    mov         eax,dword ptr [ebp-4]
 00587591    pop         edi
 00587592    pop         esi
 00587593    pop         ebx
 00587594    mov         esp,ebp
 00587596    pop         ebp
 00587597    ret
*}
end;

//00587598
{*function sub_00587598(?:?):?;
begin
 00587598    push        ebp
 00587599    mov         ebp,esp
 0058759B    add         esp,0FFFFFFF0
 0058759E    push        ebx
 0058759F    mov         dword ptr [ebp-4],eax
 005875A2    movzx       eax,dl
 005875A5    cmp         eax,54
>005875A8    ja          00587F5C
 005875AE    jmp         dword ptr [eax*4+5875B5]
 005875AE    dd          00587709
 005875AE    dd          0058772A
 005875AE    dd          0058774B
 005875AE    dd          0058776C
 005875AE    dd          0058778D
 005875AE    dd          005877AE
 005875AE    dd          005877D2
 005875AE    dd          005877F6
 005875AE    dd          00587800
 005875AE    dd          0058780A
 005875AE    dd          00587814
 005875AE    dd          0058781E
 005875AE    dd          00587828
 005875AE    dd          00587832
 005875AE    dd          0058783C
 005875AE    dd          0058785D
 005875AE    dd          0058787E
 005875AE    dd          0058789F
 005875AE    dd          005878C0
 005875AE    dd          005878E1
 005875AE    dd          00587905
 005875AE    dd          00587929
 005875AE    dd          0058794D
 005875AE    dd          00587971
 005875AE    dd          005878E1
 005875AE    dd          00587905
 005875AE    dd          00587929
 005875AE    dd          0058794D
 005875AE    dd          00587971
 005875AE    dd          00587995
 005875AE    dd          0058799F
 005875AE    dd          005879A9
 005875AE    dd          005879B3
 005875AE    dd          005879BD
 005875AE    dd          005879C7
 005875AE    dd          005879E8
 005875AE    dd          00587A09
 005875AE    dd          00587A2D
 005875AE    dd          00587A51
 005875AE    dd          00587A75
 005875AE    dd          00587A99
 005875AE    dd          00587ABD
 005875AE    dd          00587AE1
 005875AE    dd          00587B05
 005875AE    dd          00587B29
 005875AE    dd          00587B4D
 005875AE    dd          00587B71
 005875AE    dd          00587B95
 005875AE    dd          00587BB9
 005875AE    dd          00587BDD
 005875AE    dd          00587BE7
 005875AE    dd          00587BF1
 005875AE    dd          00587C15
 005875AE    dd          00587C39
 005875AE    dd          00587C5D
 005875AE    dd          00587C81
 005875AE    dd          00587CA2
 005875AE    dd          00587CC3
 005875AE    dd          00587CE4
 005875AE    dd          00587D05
 005875AE    dd          00587D26
 005875AE    dd          00587D4A
 005875AE    dd          00587D6E
 005875AE    dd          00587D78
 005875AE    dd          00587D82
 005875AE    dd          00587DA6
 005875AE    dd          00587DCA
 005875AE    dd          00587D82
 005875AE    dd          00587DA6
 005875AE    dd          00587DCA
 005875AE    dd          00587DEE
 005875AE    dd          00587DF8
 005875AE    dd          00587E02
 005875AE    dd          00587E0C
 005875AE    dd          00587E16
 005875AE    dd          00587E3A
 005875AE    dd          00587E5E
 005875AE    dd          00587E82
 005875AE    dd          00587EA6
 005875AE    dd          00587ECA
 005875AE    dd          00587EEB
 005875AE    dd          00587F0C
 005875AE    dd          00587F2D
 005875AE    dd          00587F4E
 005875AE    dd          00587F55
 00587709    push        ebp
 0058770A    lea         ecx,[ebp-10]
 0058770D    mov         dl,5
 0058770F    mov         eax,dword ptr [ebp-4]
 00587712    mov         ebx,dword ptr [eax]
 00587714    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 00587717    lea         eax,[ebp-10]
 0058771A    mov         edx,0FF000011
 0058771F    call        GetColor
 00587724    pop         ecx
>00587725    jmp         00587F61
 0058772A    push        ebp
 0058772B    lea         ecx,[ebp-10]
 0058772E    mov         dl,3
 00587730    mov         eax,dword ptr [ebp-4]
 00587733    mov         ebx,dword ptr [eax]
 00587735    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 00587738    lea         eax,[ebp-10]
 0058773B    mov         edx,0FF000012
 00587740    call        GetColor
 00587745    pop         ecx
>00587746    jmp         00587F61
 0058774B    push        ebp
 0058774C    lea         ecx,[ebp-10]
 0058774F    mov         dl,3
 00587751    mov         eax,dword ptr [ebp-4]
 00587754    mov         ebx,dword ptr [eax]
 00587756    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 00587759    lea         eax,[ebp-10]
 0058775C    mov         edx,0FF000012
 00587761    call        GetColor
 00587766    pop         ecx
>00587767    jmp         00587F61
 0058776C    push        ebp
 0058776D    lea         ecx,[ebp-10]
 00587770    mov         dl,2
 00587772    mov         eax,dword ptr [ebp-4]
 00587775    mov         ebx,dword ptr [eax]
 00587777    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 0058777A    lea         eax,[ebp-10]
 0058777D    mov         edx,0FF000012
 00587782    call        GetColor
 00587787    pop         ecx
>00587788    jmp         00587F61
 0058778D    push        ebp
 0058778E    lea         ecx,[ebp-10]
 00587791    mov         dl,4
 00587793    mov         eax,dword ptr [ebp-4]
 00587796    mov         ebx,dword ptr [eax]
 00587798    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 0058779B    lea         eax,[ebp-10]
 0058779E    mov         edx,0FF000012
 005877A3    call        GetColor
 005877A8    pop         ecx
>005877A9    jmp         00587F61
 005877AE    push        ebp
 005877AF    lea         ecx,[ebp-10]
 005877B2    mov         dl,3
 005877B4    mov         eax,dword ptr [ebp-4]
 005877B7    mov         ebx,dword ptr [eax]
 005877B9    call        dword ptr [ebx+10C];TUxThemeStyle.GetElementDetails
 005877BF    lea         eax,[ebp-10]
 005877C2    mov         edx,0FF000013
 005877C7    call        GetColor
 005877CC    pop         ecx
>005877CD    jmp         00587F61
 005877D2    push        ebp
 005877D3    lea         ecx,[ebp-10]
 005877D6    mov         dl,2
 005877D8    mov         eax,dword ptr [ebp-4]
 005877DB    mov         ebx,dword ptr [eax]
 005877DD    call        dword ptr [ebx+10C];TUxThemeStyle.GetElementDetails
 005877E3    lea         eax,[ebp-10]
 005877E6    mov         edx,0FF000009
 005877EB    call        GetColor
 005877F0    pop         ecx
>005877F1    jmp         00587F61
 005877F6    mov         eax,0FF000008
>005877FB    jmp         00587F61
 00587800    mov         eax,0FF000008
>00587805    jmp         00587F61
 0058780A    mov         eax,0FF000008
>0058780F    jmp         00587F61
 00587814    mov         eax,0FF000008
>00587819    jmp         00587F61
 0058781E    mov         eax,0FF000008
>00587823    jmp         00587F61
 00587828    mov         eax,0FF000008
>0058782D    jmp         00587F61
 00587832    mov         eax,0FF000008
>00587837    jmp         00587F61
 0058783C    push        ebp
 0058783D    lea         ecx,[ebp-10]
 00587840    mov         dl,13
 00587842    mov         eax,dword ptr [ebp-4]
 00587845    mov         ebx,dword ptr [eax]
 00587847    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 0058784A    lea         eax,[ebp-10]
 0058784D    mov         edx,0FF000008
 00587852    call        GetColor
 00587857    pop         ecx
>00587858    jmp         00587F61
 0058785D    push        ebp
 0058785E    lea         ecx,[ebp-10]
 00587861    mov         dl,11
 00587863    mov         eax,dword ptr [ebp-4]
 00587866    mov         ebx,dword ptr [eax]
 00587868    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 0058786B    lea         eax,[ebp-10]
 0058786E    mov         edx,0FF000008
 00587873    call        GetColor
 00587878    pop         ecx
>00587879    jmp         00587F61
 0058787E    push        ebp
 0058787F    lea         ecx,[ebp-10]
 00587882    mov         dl,11
 00587884    mov         eax,dword ptr [ebp-4]
 00587887    mov         ebx,dword ptr [eax]
 00587889    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 0058788C    lea         eax,[ebp-10]
 0058788F    mov         edx,0FF000008
 00587894    call        GetColor
 00587899    pop         ecx
>0058789A    jmp         00587F61
 0058789F    push        ebp
 005878A0    lea         ecx,[ebp-10]
 005878A3    mov         dl,10
 005878A5    mov         eax,dword ptr [ebp-4]
 005878A8    mov         ebx,dword ptr [eax]
 005878AA    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 005878AD    lea         eax,[ebp-10]
 005878B0    mov         edx,0FF000008
 005878B5    call        GetColor
 005878BA    pop         ecx
>005878BB    jmp         00587F61
 005878C0    push        ebp
 005878C1    lea         ecx,[ebp-10]
 005878C4    mov         dl,12
 005878C6    mov         eax,dword ptr [ebp-4]
 005878C9    mov         ebx,dword ptr [eax]
 005878CB    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 005878CE    lea         eax,[ebp-10]
 005878D1    mov         edx,0FF000008
 005878D6    call        GetColor
 005878DB    pop         ecx
>005878DC    jmp         00587F61
 005878E1    push        ebp
 005878E2    lea         ecx,[ebp-10]
 005878E5    mov         dl,5
 005878E7    mov         eax,dword ptr [ebp-4]
 005878EA    mov         ebx,dword ptr [eax]
 005878EC    call        dword ptr [ebx+84];TUxThemeStyle.GetElementDetails
 005878F2    lea         eax,[ebp-10]
 005878F5    mov         edx,0FF000011
 005878FA    call        GetColor
 005878FF    pop         ecx
>00587900    jmp         00587F61
 00587905    push        ebp
 00587906    lea         ecx,[ebp-10]
 00587909    mov         dl,6
 0058790B    mov         eax,dword ptr [ebp-4]
 0058790E    mov         ebx,dword ptr [eax]
 00587910    call        dword ptr [ebx+84];TUxThemeStyle.GetElementDetails
 00587916    lea         eax,[ebp-10]
 00587919    mov         edx,0FF000008
 0058791E    call        GetColor
 00587923    pop         ecx
>00587924    jmp         00587F61
 00587929    push        ebp
 0058792A    lea         ecx,[ebp-10]
 0058792D    mov         dl,3
 0058792F    mov         eax,dword ptr [ebp-4]
 00587932    mov         ebx,dword ptr [eax]
 00587934    call        dword ptr [ebx+84];TUxThemeStyle.GetElementDetails
 0058793A    lea         eax,[ebp-10]
 0058793D    mov         edx,0FF000008
 00587942    call        GetColor
 00587947    pop         ecx
>00587948    jmp         00587F61
 0058794D    push        ebp
 0058794E    lea         ecx,[ebp-10]
 00587951    mov         dl,2
 00587953    mov         eax,dword ptr [ebp-4]
 00587956    mov         ebx,dword ptr [eax]
 00587958    call        dword ptr [ebx+84];TUxThemeStyle.GetElementDetails
 0058795E    lea         eax,[ebp-10]
 00587961    mov         edx,0FF000008
 00587966    call        GetColor
 0058796B    pop         ecx
>0058796C    jmp         00587F61
 00587971    push        ebp
 00587972    lea         ecx,[ebp-10]
 00587975    mov         dl,4
 00587977    mov         eax,dword ptr [ebp-4]
 0058797A    mov         ebx,dword ptr [eax]
 0058797C    call        dword ptr [ebx+84];TUxThemeStyle.GetElementDetails
 00587982    lea         eax,[ebp-10]
 00587985    mov         edx,0FF000008
 0058798A    call        GetColor
 0058798F    pop         ecx
>00587990    jmp         00587F61
 00587995    mov         eax,0FF000008
>0058799A    jmp         00587F61
 0058799F    mov         eax,0FF000008
>005879A4    jmp         00587F61
 005879A9    mov         eax,0FF000008
>005879AE    jmp         00587F61
 005879B3    mov         eax,0FF000008
>005879B8    jmp         00587F61
 005879BD    mov         eax,0FF000008
>005879C2    jmp         00587F61
 005879C7    push        ebp
 005879C8    lea         ecx,[ebp-10]
 005879CB    mov         dl,25
 005879CD    mov         eax,dword ptr [ebp-4]
 005879D0    mov         ebx,dword ptr [eax]
 005879D2    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 005879D5    lea         eax,[ebp-10]
 005879D8    mov         edx,0FF000008
 005879DD    call        GetColor
 005879E2    pop         ecx
>005879E3    jmp         00587F61
 005879E8    push        ebp
 005879E9    lea         ecx,[ebp-10]
 005879EC    mov         dl,24
 005879EE    mov         eax,dword ptr [ebp-4]
 005879F1    mov         ebx,dword ptr [eax]
 005879F3    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 005879F6    lea         eax,[ebp-10]
 005879F9    mov         edx,0FF000008
 005879FE    call        GetColor
 00587A03    pop         ecx
>00587A04    jmp         00587F61
 00587A09    push        ebp
 00587A0A    lea         ecx,[ebp-10]
 00587A0D    mov         dl,2
 00587A0F    mov         eax,dword ptr [ebp-4]
 00587A12    mov         ebx,dword ptr [eax]
 00587A14    call        dword ptr [ebx+94];TUxThemeStyle.GetElementDetails
 00587A1A    lea         eax,[ebp-10]
 00587A1D    mov         edx,0FF000008
 00587A22    call        GetColor
 00587A27    pop         ecx
>00587A28    jmp         00587F61
 00587A2D    push        ebp
 00587A2E    lea         ecx,[ebp-10]
 00587A31    mov         dl,3
 00587A33    mov         eax,dword ptr [ebp-4]
 00587A36    mov         ebx,dword ptr [eax]
 00587A38    call        dword ptr [ebx+94];TUxThemeStyle.GetElementDetails
 00587A3E    lea         eax,[ebp-10]
 00587A41    mov         edx,0FF000008
 00587A46    call        GetColor
 00587A4B    pop         ecx
>00587A4C    jmp         00587F61
 00587A51    push        ebp
 00587A52    lea         ecx,[ebp-10]
 00587A55    mov         dl,2
 00587A57    mov         eax,dword ptr [ebp-4]
 00587A5A    mov         ebx,dword ptr [eax]
 00587A5C    call        dword ptr [ebx+94];TUxThemeStyle.GetElementDetails
 00587A62    lea         eax,[ebp-10]
 00587A65    mov         edx,0FF000008
 00587A6A    call        GetColor
 00587A6F    pop         ecx
>00587A70    jmp         00587F61
 00587A75    push        ebp
 00587A76    lea         ecx,[ebp-10]
 00587A79    mov         dl,4
 00587A7B    mov         eax,dword ptr [ebp-4]
 00587A7E    mov         ebx,dword ptr [eax]
 00587A80    call        dword ptr [ebx+94];TUxThemeStyle.GetElementDetails
 00587A86    lea         eax,[ebp-10]
 00587A89    mov         edx,0FF000008
 00587A8E    call        GetColor
 00587A93    pop         ecx
>00587A94    jmp         00587F61
 00587A99    push        ebp
 00587A9A    lea         ecx,[ebp-10]
 00587A9D    mov         dl,5
 00587A9F    mov         eax,dword ptr [ebp-4]
 00587AA2    mov         ebx,dword ptr [eax]
 00587AA4    call        dword ptr [ebx+0A0];TUxThemeStyle.GetElementDetails
 00587AAA    lea         eax,[ebp-10]
 00587AAD    mov         edx,0FF000011
 00587AB2    call        GetColor
 00587AB7    pop         ecx
>00587AB8    jmp         00587F61
 00587ABD    push        ebp
 00587ABE    lea         ecx,[ebp-10]
 00587AC1    mov         dl,3
 00587AC3    mov         eax,dword ptr [ebp-4]
 00587AC6    mov         ebx,dword ptr [eax]
 00587AC8    call        dword ptr [ebx+0A0];TUxThemeStyle.GetElementDetails
 00587ACE    lea         eax,[ebp-10]
 00587AD1    mov         edx,0FF000008
 00587AD6    call        GetColor
 00587ADB    pop         ecx
>00587ADC    jmp         00587F61
 00587AE1    push        ebp
 00587AE2    lea         ecx,[ebp-10]
 00587AE5    mov         dl,3
 00587AE7    mov         eax,dword ptr [ebp-4]
 00587AEA    mov         ebx,dword ptr [eax]
 00587AEC    call        dword ptr [ebx+0A0];TUxThemeStyle.GetElementDetails
 00587AF2    lea         eax,[ebp-10]
 00587AF5    mov         edx,0FF000008
 00587AFA    call        GetColor
 00587AFF    pop         ecx
>00587B00    jmp         00587F61
 00587B05    push        ebp
 00587B06    lea         ecx,[ebp-10]
 00587B09    mov         dl,2
 00587B0B    mov         eax,dword ptr [ebp-4]
 00587B0E    mov         ebx,dword ptr [eax]
 00587B10    call        dword ptr [ebx+0A0];TUxThemeStyle.GetElementDetails
 00587B16    lea         eax,[ebp-10]
 00587B19    mov         edx,0FF000008
 00587B1E    call        GetColor
 00587B23    pop         ecx
>00587B24    jmp         00587F61
 00587B29    push        ebp
 00587B2A    lea         ecx,[ebp-10]
 00587B2D    mov         dl,4
 00587B2F    mov         eax,dword ptr [ebp-4]
 00587B32    mov         ebx,dword ptr [eax]
 00587B34    call        dword ptr [ebx+0A0];TUxThemeStyle.GetElementDetails
 00587B3A    lea         eax,[ebp-10]
 00587B3D    mov         edx,0FF000008
 00587B42    call        GetColor
 00587B47    pop         ecx
>00587B48    jmp         00587F61
 00587B4D    push        ebp
 00587B4E    lea         ecx,[ebp-10]
 00587B51    mov         dl,0F
 00587B53    mov         eax,dword ptr [ebp-4]
 00587B56    mov         ebx,dword ptr [eax]
 00587B58    call        dword ptr [ebx+0A4];TUxThemeStyle.GetElementDetails
 00587B5E    lea         eax,[ebp-10]
 00587B61    mov         edx,0FF000011
 00587B66    call        GetColor
 00587B6B    pop         ecx
>00587B6C    jmp         00587F61
 00587B71    push        ebp
 00587B72    lea         ecx,[ebp-10]
 00587B75    mov         dl,0D
 00587B77    mov         eax,dword ptr [ebp-4]
 00587B7A    mov         ebx,dword ptr [eax]
 00587B7C    call        dword ptr [ebx+0A4];TUxThemeStyle.GetElementDetails
 00587B82    lea         eax,[ebp-10]
 00587B85    mov         edx,0FF000008
 00587B8A    call        GetColor
 00587B8F    pop         ecx
>00587B90    jmp         00587F61
 00587B95    push        ebp
 00587B96    lea         ecx,[ebp-10]
 00587B99    mov         dl,0C
 00587B9B    mov         eax,dword ptr [ebp-4]
 00587B9E    mov         ebx,dword ptr [eax]
 00587BA0    call        dword ptr [ebx+0A4];TUxThemeStyle.GetElementDetails
 00587BA6    lea         eax,[ebp-10]
 00587BA9    mov         edx,0FF000008
 00587BAE    call        GetColor
 00587BB3    pop         ecx
>00587BB4    jmp         00587F61
 00587BB9    push        ebp
 00587BBA    lea         ecx,[ebp-10]
 00587BBD    mov         dl,0E
 00587BBF    mov         eax,dword ptr [ebp-4]
 00587BC2    mov         ebx,dword ptr [eax]
 00587BC4    call        dword ptr [ebx+0A4];TUxThemeStyle.GetElementDetails
 00587BCA    lea         eax,[ebp-10]
 00587BCD    mov         edx,0FF000008
 00587BD2    call        GetColor
 00587BD7    pop         ecx
>00587BD8    jmp         00587F61
 00587BDD    mov         eax,0FF000008
>00587BE2    jmp         00587F61
 00587BE7    mov         eax,0FF000008
>00587BEC    jmp         00587F61
 00587BF1    push        ebp
 00587BF2    lea         ecx,[ebp-10]
 00587BF5    mov         dl,1E
 00587BF7    mov         eax,dword ptr [ebp-4]
 00587BFA    mov         ebx,dword ptr [eax]
 00587BFC    call        dword ptr [ebx+0A4];TUxThemeStyle.GetElementDetails
 00587C02    lea         eax,[ebp-10]
 00587C05    mov         edx,0FF000011
 00587C0A    call        GetColor
 00587C0F    pop         ecx
>00587C10    jmp         00587F61
 00587C15    push        ebp
 00587C16    lea         ecx,[ebp-10]
 00587C19    mov         dl,1D
 00587C1B    mov         eax,dword ptr [ebp-4]
 00587C1E    mov         ebx,dword ptr [eax]
 00587C20    call        dword ptr [ebx+0A4];TUxThemeStyle.GetElementDetails
 00587C26    lea         eax,[ebp-10]
 00587C29    mov         edx,0FF000008
 00587C2E    call        GetColor
 00587C33    pop         ecx
>00587C34    jmp         00587F61
 00587C39    push        ebp
 00587C3A    lea         ecx,[ebp-10]
 00587C3D    mov         dl,1C
 00587C3F    mov         eax,dword ptr [ebp-4]
 00587C42    mov         ebx,dword ptr [eax]
 00587C44    call        dword ptr [ebx+0A4];TUxThemeStyle.GetElementDetails
 00587C4A    lea         eax,[ebp-10]
 00587C4D    mov         edx,0FF000008
 00587C52    call        GetColor
 00587C57    pop         ecx
>00587C58    jmp         00587F61
 00587C5D    push        ebp
 00587C5E    lea         ecx,[ebp-10]
 00587C61    mov         dl,1D
 00587C63    mov         eax,dword ptr [ebp-4]
 00587C66    mov         ebx,dword ptr [eax]
 00587C68    call        dword ptr [ebx+0A4];TUxThemeStyle.GetElementDetails
 00587C6E    lea         eax,[ebp-10]
 00587C71    mov         edx,0FF000008
 00587C76    call        GetColor
 00587C7B    pop         ecx
>00587C7C    jmp         00587F61
 00587C81    push        ebp
 00587C82    lea         ecx,[ebp-10]
 00587C85    mov         dl,0B
 00587C87    mov         eax,dword ptr [ebp-4]
 00587C8A    mov         ebx,dword ptr [eax]
 00587C8C    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 00587C8F    lea         eax,[ebp-10]
 00587C92    mov         edx,0FF000011
 00587C97    call        GetColor
 00587C9C    pop         ecx
>00587C9D    jmp         00587F61
 00587CA2    push        ebp
 00587CA3    lea         ecx,[ebp-10]
 00587CA6    mov         dl,9
 00587CA8    mov         eax,dword ptr [ebp-4]
 00587CAB    mov         ebx,dword ptr [eax]
 00587CAD    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 00587CB0    lea         eax,[ebp-10]
 00587CB3    mov         edx,0FF000008
 00587CB8    call        GetColor
 00587CBD    pop         ecx
>00587CBE    jmp         00587F61
 00587CC3    push        ebp
 00587CC4    lea         ecx,[ebp-10]
 00587CC7    mov         dl,9
 00587CC9    mov         eax,dword ptr [ebp-4]
 00587CCC    mov         ebx,dword ptr [eax]
 00587CCE    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 00587CD1    lea         eax,[ebp-10]
 00587CD4    mov         edx,0FF000008
 00587CD9    call        GetColor
 00587CDE    pop         ecx
>00587CDF    jmp         00587F61
 00587CE4    push        ebp
 00587CE5    lea         ecx,[ebp-10]
 00587CE8    mov         dl,8
 00587CEA    mov         eax,dword ptr [ebp-4]
 00587CED    mov         ebx,dword ptr [eax]
 00587CEF    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 00587CF2    lea         eax,[ebp-10]
 00587CF5    mov         edx,0FF000008
 00587CFA    call        GetColor
 00587CFF    pop         ecx
>00587D00    jmp         00587F61
 00587D05    push        ebp
 00587D06    lea         ecx,[ebp-10]
 00587D09    mov         dl,0A
 00587D0B    mov         eax,dword ptr [ebp-4]
 00587D0E    mov         ebx,dword ptr [eax]
 00587D10    call        dword ptr [ebx+5C];TUxThemeStyle.GetElementDetails
 00587D13    lea         eax,[ebp-10]
 00587D16    mov         edx,0FF000008
 00587D1B    call        GetColor
 00587D20    pop         ecx
>00587D21    jmp         00587F61
 00587D26    push        ebp
 00587D27    lea         ecx,[ebp-10]
 00587D2A    mov         dl,6
 00587D2C    mov         eax,dword ptr [ebp-4]
 00587D2F    mov         ebx,dword ptr [eax]
 00587D31    call        dword ptr [ebx+10C];TUxThemeStyle.GetElementDetails
 00587D37    lea         eax,[ebp-10]
 00587D3A    mov         edx,0FF000003
 00587D3F    call        GetColor
 00587D44    pop         ecx
>00587D45    jmp         00587F61
 00587D4A    push        ebp
 00587D4B    lea         ecx,[ebp-10]
 00587D4E    mov         dl,5
 00587D50    mov         eax,dword ptr [ebp-4]
 00587D53    mov         ebx,dword ptr [eax]
 00587D55    call        dword ptr [ebx+10C];TUxThemeStyle.GetElementDetails
 00587D5B    lea         eax,[ebp-10]
 00587D5E    mov         edx,0FF000002
 00587D63    call        GetColor
 00587D68    pop         ecx
>00587D69    jmp         00587F61
 00587D6E    mov         eax,0FF000008
>00587D73    jmp         00587F61
 00587D78    mov         eax,0FF000008
>00587D7D    jmp         00587F61
 00587D82    push        ebp
 00587D83    lea         ecx,[ebp-10]
 00587D86    mov         dl,5
 00587D88    mov         eax,dword ptr [ebp-4]
 00587D8B    mov         ebx,dword ptr [eax]
 00587D8D    call        dword ptr [ebx+0D8];TUxThemeStyle.GetElementDetails
 00587D93    lea         eax,[ebp-10]
 00587D96    mov         edx,0FF000008
 00587D9B    call        GetColor
 00587DA0    pop         ecx
>00587DA1    jmp         00587F61
 00587DA6    push        ebp
 00587DA7    lea         ecx,[ebp-10]
 00587DAA    mov         dl,3
 00587DAC    mov         eax,dword ptr [ebp-4]
 00587DAF    mov         ebx,dword ptr [eax]
 00587DB1    call        dword ptr [ebx+0D8];TUxThemeStyle.GetElementDetails
 00587DB7    lea         eax,[ebp-10]
 00587DBA    mov         edx,0FF000008
 00587DBF    call        GetColor
 00587DC4    pop         ecx
>00587DC5    jmp         00587F61
 00587DCA    push        ebp
 00587DCB    lea         ecx,[ebp-10]
 00587DCE    mov         dl,2
 00587DD0    mov         eax,dword ptr [ebp-4]
 00587DD3    mov         ebx,dword ptr [eax]
 00587DD5    call        dword ptr [ebx+0D8];TUxThemeStyle.GetElementDetails
 00587DDB    lea         eax,[ebp-10]
 00587DDE    mov         edx,0FF000008
 00587DE3    call        GetColor
 00587DE8    pop         ecx
>00587DE9    jmp         00587F61
 00587DEE    mov         eax,0FF000011
>00587DF3    jmp         00587F61
 00587DF8    mov         eax,0FF000008
>00587DFD    jmp         00587F61
 00587E02    mov         eax,0FF000008
>00587E07    jmp         00587F61
 00587E0C    mov         eax,0FF000008
>00587E11    jmp         00587F61
 00587E16    push        ebp
 00587E17    lea         ecx,[ebp-10]
 00587E1A    mov         dl,5
 00587E1C    mov         eax,dword ptr [ebp-4]
 00587E1F    mov         ebx,dword ptr [eax]
 00587E21    call        dword ptr [ebx+0F8];TUxThemeStyle.GetElementDetails
 00587E27    lea         eax,[ebp-10]
 00587E2A    mov         edx,0FF000011
 00587E2F    call        GetColor
 00587E34    pop         ecx
>00587E35    jmp         00587F61
 00587E3A    push        ebp
 00587E3B    lea         ecx,[ebp-10]
 00587E3E    mov         dl,3
 00587E40    mov         eax,dword ptr [ebp-4]
 00587E43    mov         ebx,dword ptr [eax]
 00587E45    call        dword ptr [ebx+0F8];TUxThemeStyle.GetElementDetails
 00587E4B    lea         eax,[ebp-10]
 00587E4E    mov         edx,0FF000008
 00587E53    call        GetColor
 00587E58    pop         ecx
>00587E59    jmp         00587F61
 00587E5E    push        ebp
 00587E5F    lea         ecx,[ebp-10]
 00587E62    mov         dl,2
 00587E64    mov         eax,dword ptr [ebp-4]
 00587E67    mov         ebx,dword ptr [eax]
 00587E69    call        dword ptr [ebx+0F8];TUxThemeStyle.GetElementDetails
 00587E6F    lea         eax,[ebp-10]
 00587E72    mov         edx,0FF000008
 00587E77    call        GetColor
 00587E7C    pop         ecx
>00587E7D    jmp         00587F61
 00587E82    push        ebp
 00587E83    lea         ecx,[ebp-10]
 00587E86    mov         dl,4
 00587E88    mov         eax,dword ptr [ebp-4]
 00587E8B    mov         ebx,dword ptr [eax]
 00587E8D    call        dword ptr [ebx+0F8];TUxThemeStyle.GetElementDetails
 00587E93    lea         eax,[ebp-10]
 00587E96    mov         edx,0FF000008
 00587E9B    call        GetColor
 00587EA0    pop         ecx
>00587EA1    jmp         00587F61
 00587EA6    push        ebp
 00587EA7    lea         ecx,[ebp-10]
 00587EAA    mov         dl,5
 00587EAC    mov         eax,dword ptr [ebp-4]
 00587EAF    mov         ebx,dword ptr [eax]
 00587EB1    call        dword ptr [ebx+108];TUxThemeStyle.GetElementDetails
 00587EB7    lea         eax,[ebp-10]
 00587EBA    mov         edx,0FF000011
 00587EBF    call        GetColor
 00587EC4    pop         ecx
>00587EC5    jmp         00587F61
 00587ECA    push        ebp
 00587ECB    lea         ecx,[ebp-10]
 00587ECE    mov         dl,4
 00587ED0    mov         eax,dword ptr [ebp-4]
 00587ED3    mov         ebx,dword ptr [eax]
 00587ED5    call        dword ptr [ebx+108];TUxThemeStyle.GetElementDetails
 00587EDB    lea         eax,[ebp-10]
 00587EDE    mov         edx,0FF000008
 00587EE3    call        GetColor
 00587EE8    pop         ecx
>00587EE9    jmp         00587F61
 00587EEB    push        ebp
 00587EEC    lea         ecx,[ebp-10]
 00587EEF    mov         dl,3
 00587EF1    mov         eax,dword ptr [ebp-4]
 00587EF4    mov         ebx,dword ptr [eax]
 00587EF6    call        dword ptr [ebx+108];TUxThemeStyle.GetElementDetails
 00587EFC    lea         eax,[ebp-10]
 00587EFF    mov         edx,0FF000008
 00587F04    call        GetColor
 00587F09    pop         ecx
>00587F0A    jmp         00587F61
 00587F0C    push        ebp
 00587F0D    lea         ecx,[ebp-10]
 00587F10    mov         dl,2
 00587F12    mov         eax,dword ptr [ebp-4]
 00587F15    mov         ebx,dword ptr [eax]
 00587F17    call        dword ptr [ebx+108];TUxThemeStyle.GetElementDetails
 00587F1D    lea         eax,[ebp-10]
 00587F20    mov         edx,0FF000008
 00587F25    call        GetColor
 00587F2A    pop         ecx
>00587F2B    jmp         00587F61
 00587F2D    push        ebp
 00587F2E    lea         ecx,[ebp-10]
 00587F31    mov         dl,4
 00587F33    mov         eax,dword ptr [ebp-4]
 00587F36    mov         ebx,dword ptr [eax]
 00587F38    call        dword ptr [ebx+108];TUxThemeStyle.GetElementDetails
 00587F3E    lea         eax,[ebp-10]
 00587F41    mov         edx,0FF000008
 00587F46    call        GetColor
 00587F4B    pop         ecx
>00587F4C    jmp         00587F61
 00587F4E    mov         eax,0FF000011
>00587F53    jmp         00587F61
 00587F55    mov         eax,0FF000008
>00587F5A    jmp         00587F61
 00587F5C    mov         eax,1FFFFFFF
 00587F61    pop         ebx
 00587F62    mov         esp,ebp
 00587F64    pop         ebp
 00587F65    ret
end;*}

//00587F68
{*function sub_00587F68(?:?):?;
begin
 00587F68    mov         eax,edx
 00587F6A    ret
end;*}

//00587F6C
{*function sub_00587F6C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):Boolean;
begin
 00587F6C    push        ebp
 00587F6D    mov         ebp,esp
 00587F6F    add         esp,0FFFFFFF0
 00587F72    push        ebx
 00587F73    push        esi
 00587F74    push        edi
 00587F75    mov         esi,ecx
 00587F77    lea         edi,[ebp-10]
 00587F7A    movs        dword ptr [edi],dword ptr [esi]
 00587F7B    movs        dword ptr [edi],dword ptr [esi]
 00587F7C    movs        dword ptr [edi],dword ptr [esi]
 00587F7D    mov         dword ptr [ebp-4],edx
 00587F80    movzx       edx,byte ptr [ebp-10]
 00587F84    mov         ecx,edx
 00587F86    add         cl,0E0
 00587F89    sub         cl,0A
>00587F8C    jae         00587FB6
 00587F8E    mov         ecx,dword ptr [ebp-0C]
 00587F91    push        ecx
 00587F92    mov         ecx,dword ptr [ebp-8]
 00587F95    push        ecx
 00587F96    mov         ecx,dword ptr [ebp+14]
 00587F99    push        ecx
 00587F9A    mov         ecx,dword ptr [ebp+10]
 00587F9D    push        ecx
 00587F9E    mov         ecx,dword ptr [ebp+0C]
 00587FA1    push        ecx
 00587FA2    mov         ecx,dword ptr [ebp+8]
 00587FA5    push        ecx
 00587FA6    and         edx,7F
 00587FA9    mov         edx,dword ptr [eax+edx*4-70]
 00587FAD    mov         ecx,dword ptr [ebp-4]
 00587FB0    xchg        eax,edx
 00587FB1    call        dword ptr [eax+24]
>00587FB4    jmp         00588004
 00587FB6    mov         ecx,dword ptr [eax]
 00587FB8    call        dword ptr [ecx+54];TUxThemeStyle.GetTheme
 00587FBB    mov         esi,eax
 00587FBD    mov         ebx,dword ptr [ebp+14]
 00587FC0    test        ebx,ebx
>00587FC2    je          00587FC9
 00587FC4    sub         ebx,4
 00587FC7    mov         ebx,dword ptr [ebx]
 00587FC9    mov         eax,dword ptr [ebp+8]
 00587FCC    push        eax
 00587FCD    mov         eax,dword ptr [ebp+0C]
 00587FD0    push        eax
 00587FD1    mov         eax,dword ptr [ebp+10]
 00587FD4    call        TTextFormatFlags.&op_Implicit
 00587FD9    call        TTextFormatFlags.&op_Implicit
 00587FDE    push        eax
 00587FDF    push        ebx
 00587FE0    mov         eax,dword ptr [ebp+14]
 00587FE3    call        @UStrToPWChar
 00587FE8    push        eax
 00587FE9    mov         eax,dword ptr [ebp-8]
 00587FEC    push        eax
 00587FED    mov         eax,dword ptr [ebp-0C]
 00587FF0    push        eax
 00587FF1    mov         eax,dword ptr [ebp-4]
 00587FF4    push        eax
 00587FF5    push        esi
 00587FF6    mov         eax,[007C4450];^gvar_007CA504:Pointer
 00587FFB    mov         eax,dword ptr [eax]
 00587FFD    call        eax
 00587FFF    test        eax,eax
 00588001    sete        al
 00588004    pop         edi
 00588005    pop         esi
 00588006    pop         ebx
 00588007    mov         esp,ebp
 00588009    pop         ebp
 0058800A    ret         10
end;*}

//00588010
function TUxThemeStyle.DoHasTransparentParts(Details:TThemedElementDetails):Boolean;
begin
{*
 00588010    push        ebx
 00588011    push        esi
 00588012    push        edi
 00588013    add         esp,0FFFFFFF4
 00588016    mov         esi,edx
 00588018    lea         edi,[esp]
 0058801B    movs        dword ptr [edi],dword ptr [esi]
 0058801C    movs        dword ptr [edi],dword ptr [esi]
 0058801D    movs        dword ptr [edi],dword ptr [esi]
 0058801E    mov         esi,eax
 00588020    movzx       ebx,byte ptr [esp]
 00588024    mov         eax,ebx
 00588026    add         al,0E0
 00588028    sub         al,0A
>0058802A    jae         00588043
 0058802C    mov         eax,dword ptr [esp+8]
 00588030    push        eax
 00588031    movzx       eax,bl
 00588034    mov         eax,dword ptr [esi+eax*4-70]
 00588038    mov         ecx,dword ptr [esp+8]
 0058803C    mov         edx,esi
 0058803E    call        dword ptr [eax+28]
>00588041    jmp         00588066
 00588043    mov         eax,dword ptr [esp+8]
 00588047    push        eax
 00588048    mov         eax,dword ptr [esp+8]
 0058804C    push        eax
 0058804D    mov         edx,ebx
 0058804F    mov         eax,esi
 00588051    mov         ecx,dword ptr [eax]
 00588053    call        dword ptr [ecx+54]
 00588056    push        eax
 00588057    mov         eax,[007C44A0];^gvar_007CA520:Pointer
 0058805C    mov         eax,dword ptr [eax]
 0058805E    call        eax
 00588060    cmp         eax,1
 00588063    sbb         eax,eax
 00588065    inc         eax
 00588066    add         esp,0C
 00588069    pop         edi
 0058806A    pop         esi
 0058806B    pop         ebx
 0058806C    ret
*}
end;

//00588070
{*function sub_00588070:?;
begin
 00588070    xor         eax,eax
 00588072    ret
end;*}

//00588074
function TUxThemeStyle.DoIsValidStyle(Stream:Classes.TStream; StyleInfo:PStyleInfo):Boolean;
begin
{*
 00588074    push        ebx
 00588075    push        esi
 00588076    mov         esi,ecx
 00588078    mov         bl,1
 0058807A    test        esi,esi
>0058807C    je          005880AA
 0058807E    mov         eax,esi
 00588080    mov         edx,5880BC;'Windows'
 00588085    call        @UStrAsg
 0058808A    lea         eax,[esi+4]
 0058808D    call        @UStrClr
 00588092    lea         eax,[esi+8]
 00588095    call        @UStrClr
 0058809A    lea         eax,[esi+0C]
 0058809D    call        @UStrClr
 005880A2    lea         eax,[esi+10]
 005880A5    call        @UStrClr
 005880AA    mov         eax,ebx
 005880AC    pop         esi
 005880AD    pop         ebx
 005880AE    ret
*}
end;

//005880CC
function TUxThemeStyle.GetElementDetails(Detail:TThemedListview):TThemedElementDetails;
begin
{*
 005880CC    mov         byte ptr [ecx],9
 005880CF    movzx       eax,dl
 005880D2    cmp         eax,32
>005880D5    ja          005881D7
 005880DB    movzx       eax,byte ptr [eax+5880E9]
 005880E2    jmp         dword ptr [eax*4+58811C]
 005880E2    db          0
 005880E2    db          0
 005880E2    db          1
 005880E2    db          1
 005880E2    db          1
 005880E2    db          1
 005880E2    db          1
 005880E2    db          1
 005880E2    db          2
 005880E2    db          3
 005880E2    db          4
 005880E2    db          5
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          6
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          7
 005880E2    db          8
 005880E2    db          8
 005880E2    db          8
 005880E2    db          9
 005880E2    db          9
 005880E2    db          9
 005880E2    db          10
 005880E2    dd          005881D7
 005880E2    dd          00588148
 005880E2    dd          00588159
 005880E2    dd          00588167
 005880E2    dd          00588175
 005880E2    dd          00588183
 005880E2    dd          00588191
 005880E2    dd          0058819F
 005880E2    dd          005881AD
 005880E2    dd          005881BB
 005880E2    dd          005881C9
 00588148    mov         dword ptr [ecx+4],1
 0058814F    mov         eax,2
>00588154    jmp         005881DE
 00588159    mov         dword ptr [ecx+4],2
 00588160    mov         eax,8
>00588165    jmp         005881DE
 00588167    mov         dword ptr [ecx+4],3
 0058816E    mov         eax,9
>00588173    jmp         005881DE
 00588175    mov         dword ptr [ecx+4],4
 0058817C    mov         eax,0A
>00588181    jmp         005881DE
 00588183    mov         dword ptr [ecx+4],5
 0058818A    mov         eax,0B
>0058818F    jmp         005881DE
 00588191    mov         dword ptr [ecx+4],6
 00588198    mov         eax,0C
>0058819D    jmp         005881DE
 0058819F    mov         dword ptr [ecx+4],7
 005881A6    mov         eax,1C
>005881AB    jmp         005881DE
 005881AD    mov         dword ptr [ecx+4],8
 005881B4    mov         eax,2C
>005881B9    jmp         005881DE
 005881BB    mov         dword ptr [ecx+4],9
 005881C2    mov         eax,2F
>005881C7    jmp         005881DE
 005881C9    mov         dword ptr [ecx+4],0A
 005881D0    mov         eax,32
>005881D5    jmp         005881DE
 005881D7    xor         eax,eax
 005881D9    mov         dword ptr [ecx+4],eax
 005881DC    xor         eax,eax
 005881DE    and         edx,7F
 005881E1    sub         edx,eax
 005881E3    inc         edx
 005881E4    mov         dword ptr [ecx+8],edx
 005881E7    ret
*}
end;

//005881E8
function TUxThemeStyle.GetElementDetails(Detail:TThemedLink):TThemedElementDetails;
begin
{*
 005881E8    mov         byte ptr [ecx],8
 005881EB    mov         eax,edx
 005881ED    add         al,0FE
 005881EF    sub         al,2
>005881F1    jae         00588201
 005881F3    mov         dword ptr [ecx+4],1
 005881FA    mov         eax,2
>005881FF    jmp         00588208
 00588201    xor         eax,eax
 00588203    mov         dword ptr [ecx+4],eax
 00588206    xor         eax,eax
 00588208    and         edx,7F
 0058820B    sub         edx,eax
 0058820D    inc         edx
 0058820E    mov         dword ptr [ecx+8],edx
 00588211    ret
*}
end;

//00588214
function TUxThemeStyle.GetElementDetails(Detail:TThemedHeader):TThemedElementDetails;
begin
{*
 00588214    mov         byte ptr [ecx],7
 00588217    movzx       eax,dl
 0058821A    cmp         eax,14
>0058821D    ja          005882C8
 00588223    movzx       eax,byte ptr [eax+588231]
 0058822A    jmp         dword ptr [eax*4+588246]
 0058822A    db          0
 0058822A    db          0
 0058822A    db          1
 0058822A    db          1
 0058822A    db          1
 0058822A    db          2
 0058822A    db          2
 0058822A    db          2
 0058822A    db          3
 0058822A    db          3
 0058822A    db          3
 0058822A    db          4
 0058822A    db          4
 0058822A    db          5
 0058822A    db          5
 0058822A    db          5
 0058822A    db          6
 0058822A    db          6
 0058822A    db          6
 0058822A    db          7
 0058822A    db          7
 0058822A    dd          005882C8
 0058822A    dd          00588266
 0058822A    dd          00588274
 0058822A    dd          00588282
 0058822A    dd          00588290
 0058822A    dd          0058829E
 0058822A    dd          005882AC
 0058822A    dd          005882BA
 00588266    mov         dword ptr [ecx+4],1
 0058826D    mov         eax,2
>00588272    jmp         005882CF
 00588274    mov         dword ptr [ecx+4],2
 0058827B    mov         eax,5
>00588280    jmp         005882CF
 00588282    mov         dword ptr [ecx+4],3
 00588289    mov         eax,8
>0058828E    jmp         005882CF
 00588290    mov         dword ptr [ecx+4],4
 00588297    mov         eax,0B
>0058829C    jmp         005882CF
 0058829E    mov         dword ptr [ecx+4],5
 005882A5    mov         eax,0D
>005882AA    jmp         005882CF
 005882AC    mov         dword ptr [ecx+4],6
 005882B3    mov         eax,10
>005882B8    jmp         005882CF
 005882BA    mov         dword ptr [ecx+4],7
 005882C1    mov         eax,13
>005882C6    jmp         005882CF
 005882C8    xor         eax,eax
 005882CA    mov         dword ptr [ecx+4],eax
 005882CD    xor         eax,eax
 005882CF    and         edx,7F
 005882D2    sub         edx,eax
 005882D4    inc         edx
 005882D5    mov         dword ptr [ecx+8],edx
 005882D8    ret
*}
end;

//005882DC
function TUxThemeStyle.GetElementDetails(Detail:TThemedMenu):TThemedElementDetails;
begin
{*
 005882DC    mov         byte ptr [ecx],0A
 005882DF    movzx       eax,dl
 005882E2    cmp         eax,2A
>005882E5    ja          005884D7
 005882EB    jmp         dword ptr [eax*4+5882F2]
 005882EB    dd          005884D7
 005882EB    dd          005884D7
 005882EB    dd          0058839E
 005882EB    dd          0058839E
 005882EB    dd          0058839E
 005882EB    dd          005883AF
 005882EB    dd          005883C0
 005882EB    dd          005883D1
 005882EB    dd          005883E2
 005882EB    dd          005883F3
 005882EB    dd          00588404
 005882EB    dd          00588404
 005882EB    dd          00588415
 005882EB    dd          00588415
 005882EB    dd          00588415
 005882EB    dd          00588415
 005882EB    dd          00588415
 005882EB    dd          00588415
 005882EB    dd          00588426
 005882EB    dd          00588437
 005882EB    dd          00588448
 005882EB    dd          00588448
 005882EB    dd          00588448
 005882EB    dd          00588448
 005882EB    dd          00588459
 005882EB    dd          00588459
 005882EB    dd          00588459
 005882EB    dd          00588467
 005882EB    dd          00588475
 005882EB    dd          00588475
 005882EB    dd          00588475
 005882EB    dd          00588475
 005882EB    dd          00588483
 005882EB    dd          00588491
 005882EB    dd          00588491
 005882EB    dd          0058849F
 005882EB    dd          0058849F
 005882EB    dd          005884AD
 005882EB    dd          005884AD
 005882EB    dd          005884BB
 005882EB    dd          005884BB
 005882EB    dd          005884C9
 005882EB    dd          005884C9
 0058839E    mov         dword ptr [ecx+4],1
 005883A5    mov         eax,2
>005883AA    jmp         005884DE
 005883AF    mov         dword ptr [ecx+4],2
 005883B6    mov         eax,5
>005883BB    jmp         005884DE
 005883C0    mov         dword ptr [ecx+4],3
 005883C7    mov         eax,6
>005883CC    jmp         005884DE
 005883D1    mov         dword ptr [ecx+4],4
 005883D8    mov         eax,7
>005883DD    jmp         005884DE
 005883E2    mov         dword ptr [ecx+4],5
 005883E9    mov         eax,8
>005883EE    jmp         005884DE
 005883F3    mov         dword ptr [ecx+4],6
 005883FA    mov         eax,9
>005883FF    jmp         005884DE
 00588404    mov         dword ptr [ecx+4],7
 0058840B    mov         eax,0A
>00588410    jmp         005884DE
 00588415    mov         dword ptr [ecx+4],8
 0058841C    mov         eax,0C
>00588421    jmp         005884DE
 00588426    mov         dword ptr [ecx+4],9
 0058842D    mov         eax,12
>00588432    jmp         005884DE
 00588437    mov         dword ptr [ecx+4],0A
 0058843E    mov         eax,13
>00588443    jmp         005884DE
 00588448    mov         dword ptr [ecx+4],0B
 0058844F    mov         eax,14
>00588454    jmp         005884DE
 00588459    mov         dword ptr [ecx+4],0C
 00588460    mov         eax,18
>00588465    jmp         005884DE
 00588467    mov         dword ptr [ecx+4],0D
 0058846E    mov         eax,1B
>00588473    jmp         005884DE
 00588475    mov         dword ptr [ecx+4],0E
 0058847C    mov         eax,1C
>00588481    jmp         005884DE
 00588483    mov         dword ptr [ecx+4],0F
 0058848A    mov         eax,20
>0058848F    jmp         005884DE
 00588491    mov         dword ptr [ecx+4],10
 00588498    mov         eax,21
>0058849D    jmp         005884DE
 0058849F    mov         dword ptr [ecx+4],11
 005884A6    mov         eax,23
>005884AB    jmp         005884DE
 005884AD    mov         dword ptr [ecx+4],12
 005884B4    mov         eax,25
>005884B9    jmp         005884DE
 005884BB    mov         dword ptr [ecx+4],13
 005884C2    mov         eax,27
>005884C7    jmp         005884DE
 005884C9    mov         dword ptr [ecx+4],14
 005884D0    mov         eax,29
>005884D5    jmp         005884DE
 005884D7    xor         eax,eax
 005884D9    mov         dword ptr [ecx+4],eax
 005884DC    xor         eax,eax
 005884DE    and         edx,7F
 005884E1    sub         edx,eax
 005884E3    inc         edx
 005884E4    mov         dword ptr [ecx+8],edx
 005884E7    ret
*}
end;

//005884E8
function TUxThemeStyle.GetElementDetails(Detail:TThemedMenuBand):TThemedElementDetails;
begin
{*
 005884E8    mov         byte ptr [ecx],0B
 005884EB    mov         eax,edx
 005884ED    add         al,0FE
 005884EF    sub         al,6
>005884F1    jb          005884F9
 005884F3    sub         al,6
>005884F5    jb          00588507
>005884F7    jmp         00588515
 005884F9    mov         dword ptr [ecx+4],1
 00588500    mov         eax,2
>00588505    jmp         0058851C
 00588507    mov         dword ptr [ecx+4],2
 0058850E    mov         eax,8
>00588513    jmp         0058851C
 00588515    xor         eax,eax
 00588517    mov         dword ptr [ecx+4],eax
 0058851A    xor         eax,eax
 0058851C    and         edx,7F
 0058851F    sub         edx,eax
 00588521    inc         edx
 00588522    mov         dword ptr [ecx+8],edx
 00588525    ret
*}
end;

//00588528
function TUxThemeStyle.GetElementDetails(Detail:TThemedMonthCal):TThemedElementDetails;
begin
{*
 00588528    mov         byte ptr [ecx],0C
 0058852B    movzx       eax,dl
 0058852E    cmp         eax,20
>00588531    ja          00588636
 00588537    movzx       eax,byte ptr [eax+588545]
 0058853E    jmp         dword ptr [eax*4+588566]
 0058853E    db          0
 0058853E    db          0
 0058853E    db          1
 0058853E    db          2
 0058853E    db          3
 0058853E    db          4
 0058853E    db          5
 0058853E    db          5
 0058853E    db          5
 0058853E    db          5
 0058853E    db          5
 0058853E    db          6
 0058853E    db          6
 0058853E    db          6
 0058853E    db          6
 0058853E    db          7
 0058853E    db          7
 0058853E    db          7
 0058853E    db          8
 0058853E    db          8
 0058853E    db          8
 0058853E    db          8
 0058853E    db          9
 0058853E    db          9
 0058853E    db          9
 0058853E    db          10
 0058853E    db          10
 0058853E    db          10
 0058853E    db          10
 0058853E    db          11
 0058853E    db          11
 0058853E    db          11
 0058853E    db          11
 0058853E    dd          00588636
 0058853E    dd          00588596
 0058853E    dd          005885A7
 0058853E    dd          005885B8
 0058853E    dd          005885C6
 0058853E    dd          005885D4
 0058853E    dd          005885E2
 0058853E    dd          005885F0
 0058853E    dd          005885FE
 0058853E    dd          0058860C
 0058853E    dd          0058861A
 0058853E    dd          00588628
 00588596    mov         dword ptr [ecx+4],1
 0058859D    mov         eax,2
>005885A2    jmp         0058863D
 005885A7    mov         dword ptr [ecx+4],2
 005885AE    mov         eax,3
>005885B3    jmp         0058863D
 005885B8    mov         dword ptr [ecx+4],3
 005885BF    mov         eax,4
>005885C4    jmp         0058863D
 005885C6    mov         dword ptr [ecx+4],4
 005885CD    mov         eax,5
>005885D2    jmp         0058863D
 005885D4    mov         dword ptr [ecx+4],5
 005885DB    mov         eax,6
>005885E0    jmp         0058863D
 005885E2    mov         dword ptr [ecx+4],6
 005885E9    mov         eax,0B
>005885EE    jmp         0058863D
 005885F0    mov         dword ptr [ecx+4],7
 005885F7    mov         eax,0F
>005885FC    jmp         0058863D
 005885FE    mov         dword ptr [ecx+4],8
 00588605    mov         eax,12
>0058860A    jmp         0058863D
 0058860C    mov         dword ptr [ecx+4],9
 00588613    mov         eax,16
>00588618    jmp         0058863D
 0058861A    mov         dword ptr [ecx+4],0A
 00588621    mov         eax,19
>00588626    jmp         0058863D
 00588628    mov         dword ptr [ecx+4],0B
 0058862F    mov         eax,1D
>00588634    jmp         0058863D
 00588636    xor         eax,eax
 00588638    mov         dword ptr [ecx+4],eax
 0058863B    xor         eax,eax
 0058863D    and         edx,7F
 00588640    sub         edx,eax
 00588642    inc         edx
 00588643    mov         dword ptr [ecx+8],edx
 00588646    ret
*}
end;

//00588648
function TUxThemeStyle.GetElementDetails(Detail:TThemedNavigation):TThemedElementDetails;
begin
{*
 00588648    mov         byte ptr [ecx],0D
 0058864B    mov         eax,edx
 0058864D    add         al,0FE
 0058864F    sub         al,4
>00588651    jb          0058865D
 00588653    sub         al,4
>00588655    jb          0058866B
 00588657    sub         al,4
>00588659    jb          00588679
>0058865B    jmp         00588687
 0058865D    mov         dword ptr [ecx+4],1
 00588664    mov         eax,2
>00588669    jmp         0058868E
 0058866B    mov         dword ptr [ecx+4],2
 00588672    mov         eax,6
>00588677    jmp         0058868E
 00588679    mov         dword ptr [ecx+4],3
 00588680    mov         eax,0A
>00588685    jmp         0058868E
 00588687    xor         eax,eax
 00588689    mov         dword ptr [ecx+4],eax
 0058868C    xor         eax,eax
 0058868E    and         edx,7F
 00588691    sub         edx,eax
 00588693    inc         edx
 00588694    mov         dword ptr [ecx+8],edx
 00588697    ret
*}
end;

//00588698
function TUxThemeStyle.GetElementDetails(Detail:TThemedProgress):TThemedElementDetails;
begin
{*
 00588698    mov         byte ptr [ecx],0F
 0058869B    movzx       eax,dl
 0058869E    cmp         eax,0F
>005886A1    ja          0058879F
 005886A7    jmp         dword ptr [eax*4+5886AE]
 005886A7    dd          0058879F
 005886A7    dd          0058879F
 005886A7    dd          005886EE
 005886A7    dd          005886FF
 005886A7    dd          00588710
 005886A7    dd          00588721
 005886A7    dd          0058872F
 005886A7    dd          0058873D
 005886A7    dd          0058874B
 005886A7    dd          00588759
 005886A7    dd          00588767
 005886A7    dd          00588775
 005886A7    dd          00588783
 005886A7    dd          00588783
 005886A7    dd          00588791
 005886A7    dd          00588791
 005886EE    mov         dword ptr [ecx+4],1
 005886F5    mov         eax,2
>005886FA    jmp         005887A6
 005886FF    mov         dword ptr [ecx+4],2
 00588706    mov         eax,3
>0058870B    jmp         005887A6
 00588710    mov         dword ptr [ecx+4],3
 00588717    mov         eax,4
>0058871C    jmp         005887A6
 00588721    mov         dword ptr [ecx+4],4
 00588728    mov         eax,5
>0058872D    jmp         005887A6
 0058872F    mov         dword ptr [ecx+4],5
 00588736    mov         eax,6
>0058873B    jmp         005887A6
 0058873D    mov         dword ptr [ecx+4],6
 00588744    mov         eax,7
>00588749    jmp         005887A6
 0058874B    mov         dword ptr [ecx+4],7
 00588752    mov         eax,8
>00588757    jmp         005887A6
 00588759    mov         dword ptr [ecx+4],8
 00588760    mov         eax,9
>00588765    jmp         005887A6
 00588767    mov         dword ptr [ecx+4],9
 0058876E    mov         eax,0A
>00588773    jmp         005887A6
 00588775    mov         dword ptr [ecx+4],0A
 0058877C    mov         eax,0B
>00588781    jmp         005887A6
 00588783    mov         dword ptr [ecx+4],0B
 0058878A    mov         eax,0C
>0058878F    jmp         005887A6
 00588791    mov         dword ptr [ecx+4],0C
 00588798    mov         eax,0E
>0058879D    jmp         005887A6
 0058879F    xor         eax,eax
 005887A1    mov         dword ptr [ecx+4],eax
 005887A4    xor         eax,eax
 005887A6    and         edx,7F
 005887A9    sub         edx,eax
 005887AB    inc         edx
 005887AC    mov         dword ptr [ecx+8],edx
 005887AF    ret
*}
end;

//005887B0
function TUxThemeStyle.GetElementDetails(Detail:TThemedPage):TThemedElementDetails;
begin
{*
 005887B0    mov         byte ptr [ecx],0E
 005887B3    mov         eax,edx
 005887B5    add         al,0FE
 005887B7    sub         al,4
>005887B9    jb          005887C9
 005887BB    sub         al,4
>005887BD    jb          005887D7
 005887BF    sub         al,4
>005887C1    jb          005887E5
 005887C3    sub         al,4
>005887C5    jb          005887F3
>005887C7    jmp         00588801
 005887C9    mov         dword ptr [ecx+4],1
 005887D0    mov         eax,2
>005887D5    jmp         00588808
 005887D7    mov         dword ptr [ecx+4],2
 005887DE    mov         eax,6
>005887E3    jmp         00588808
 005887E5    mov         dword ptr [ecx+4],3
 005887EC    mov         eax,0A
>005887F1    jmp         00588808
 005887F3    mov         dword ptr [ecx+4],4
 005887FA    mov         eax,0E
>005887FF    jmp         00588808
 00588801    xor         eax,eax
 00588803    mov         dword ptr [ecx+4],eax
 00588806    xor         eax,eax
 00588808    and         edx,7F
 0058880B    sub         edx,eax
 0058880D    inc         edx
 0058880E    mov         dword ptr [ecx+8],edx
 00588811    ret
*}
end;

//00588814
function TUxThemeStyle.GetElementDetails(Detail:TThemedClock):TThemedElementDetails;
begin
{*
 00588814    mov         byte ptr [ecx],1
 00588817    mov         eax,edx
 00588819    add         al,0FE
 0058881B    sub         al,3
>0058881D    jae         0058882D
 0058881F    mov         dword ptr [ecx+4],1
 00588826    mov         eax,2
>0058882B    jmp         00588834
 0058882D    xor         eax,eax
 0058882F    mov         dword ptr [ecx+4],eax
 00588832    xor         eax,eax
 00588834    and         edx,7F
 00588837    sub         edx,eax
 00588839    inc         edx
 0058883A    mov         dword ptr [ecx+8],edx
 0058883D    ret
*}
end;

//00588840
function TUxThemeStyle.GetElementDetails(Detail:TThemedButton):TThemedElementDetails;
begin
{*
 00588840    mov         byte ptr [ecx],0
 00588843    movzx       eax,dl
 00588846    cmp         eax,24
>00588849    jge         0058885F
 0058884B    add         eax,0FFFFFFFE
 0058884E    sub         eax,6
>00588851    jb          00588876
 00588853    sub         eax,8
>00588856    jb          00588884
 00588858    sub         eax,14
>0058885B    jb          00588892
>0058885D    jmp         005888D8
 0058885F    add         eax,0FFFFFFDC
 00588862    sub         eax,2
>00588865    jb          005888A0
>00588867    je          005888AE
 00588869    dec         eax
 0058886A    sub         eax,6
>0058886D    jb          005888BC
 0058886F    sub         eax,5
>00588872    jb          005888CA
>00588874    jmp         005888D8
 00588876    mov         dword ptr [ecx+4],1
 0058887D    mov         eax,2
>00588882    jmp         005888DF
 00588884    mov         dword ptr [ecx+4],2
 0058888B    mov         eax,8
>00588890    jmp         005888DF
 00588892    mov         dword ptr [ecx+4],3
 00588899    mov         eax,10
>0058889E    jmp         005888DF
 005888A0    mov         dword ptr [ecx+4],4
 005888A7    mov         eax,24
>005888AC    jmp         005888DF
 005888AE    mov         dword ptr [ecx+4],5
 005888B5    mov         eax,26
>005888BA    jmp         005888DF
 005888BC    mov         dword ptr [ecx+4],6
 005888C3    mov         eax,27
>005888C8    jmp         005888DF
 005888CA    mov         dword ptr [ecx+4],7
 005888D1    mov         eax,2D
>005888D6    jmp         005888DF
 005888D8    xor         eax,eax
 005888DA    mov         dword ptr [ecx+4],eax
 005888DD    xor         eax,eax
 005888DF    and         edx,7F
 005888E2    sub         edx,eax
 005888E4    inc         edx
 005888E5    mov         dword ptr [ecx+8],edx
 005888E8    ret
*}
end;

//005888EC
function TUxThemeStyle.GetElementDetails(Detail:TThemedComboBox):TThemedElementDetails;
begin
{*
 005888EC    mov         byte ptr [ecx],2
 005888EF    movzx       eax,dl
 005888F2    cmp         eax,1E
>005888F5    ja          005889BC
 005888FB    movzx       eax,byte ptr [eax+588909]
 00588902    jmp         dword ptr [eax*4+588928]
 00588902    db          0
 00588902    db          0
 00588902    db          1
 00588902    db          1
 00588902    db          1
 00588902    db          1
 00588902    db          2
 00588902    db          3
 00588902    db          3
 00588902    db          3
 00588902    db          3
 00588902    db          4
 00588902    db          4
 00588902    db          4
 00588902    db          4
 00588902    db          5
 00588902    db          5
 00588902    db          5
 00588902    db          5
 00588902    db          6
 00588902    db          6
 00588902    db          6
 00588902    db          6
 00588902    db          7
 00588902    db          7
 00588902    db          7
 00588902    db          7
 00588902    db          8
 00588902    db          8
 00588902    db          8
 00588902    db          8
 00588902    dd          005889BC
 00588902    dd          0058894C
 00588902    dd          0058895A
 00588902    dd          00588968
 00588902    dd          00588976
 00588902    dd          00588984
 00588902    dd          00588992
 00588902    dd          005889A0
 00588902    dd          005889AE
 0058894C    mov         dword ptr [ecx+4],1
 00588953    mov         eax,2
>00588958    jmp         005889C3
 0058895A    mov         dword ptr [ecx+4],2
 00588961    mov         eax,6
>00588966    jmp         005889C3
 00588968    mov         dword ptr [ecx+4],3
 0058896F    mov         eax,7
>00588974    jmp         005889C3
 00588976    mov         dword ptr [ecx+4],4
 0058897D    mov         eax,0B
>00588982    jmp         005889C3
 00588984    mov         dword ptr [ecx+4],5
 0058898B    mov         eax,0F
>00588990    jmp         005889C3
 00588992    mov         dword ptr [ecx+4],6
 00588999    mov         eax,13
>0058899E    jmp         005889C3
 005889A0    mov         dword ptr [ecx+4],7
 005889A7    mov         eax,17
>005889AC    jmp         005889C3
 005889AE    mov         dword ptr [ecx+4],8
 005889B5    mov         eax,1B
>005889BA    jmp         005889C3
 005889BC    xor         eax,eax
 005889BE    mov         dword ptr [ecx+4],eax
 005889C1    xor         eax,eax
 005889C3    and         edx,7F
 005889C6    sub         edx,eax
 005889C8    inc         edx
 005889C9    mov         dword ptr [ecx+8],edx
 005889CC    ret
*}
end;

//005889D0
function TUxThemeStyle.GetElementDetails(Detail:TThemedDataNavButtons):TThemedElementDetails;
begin
{*
 005889D0    mov         byte ptr [ecx],24
 005889D3    xor         eax,eax
 005889D5    mov         dword ptr [ecx+4],eax
 005889D8    movzx       eax,dl
 005889DB    mov         dword ptr [ecx+8],eax
 005889DE    ret
*}
end;

//005889E0
{*procedure TUxThemeStyle.GetElementDetails(Detail:TThemedMPlayerButtons; ?:?);
begin
 005889E0    mov         byte ptr [ecx],2A
 005889E3    xor         eax,eax
 005889E5    mov         dword ptr [ecx+4],eax
 005889E8    movzx       eax,dl
 005889EB    mov         dword ptr [ecx+8],eax
 005889EE    ret
end;*}

//005889F0
function TUxThemeStyle.GetElementDetails(Detail:TThemedDatePicker):TThemedElementDetails;
begin
{*
 005889F0    mov         byte ptr [ecx],3
 005889F3    mov         eax,edx
 005889F5    add         al,0FE
 005889F7    sub         al,3
>005889F9    jb          00588A05
 005889FB    sub         al,4
>005889FD    jb          00588A13
 005889FF    sub         al,4
>00588A01    jb          00588A21
>00588A03    jmp         00588A2F
 00588A05    mov         dword ptr [ecx+4],1
 00588A0C    mov         eax,2
>00588A11    jmp         00588A36
 00588A13    mov         dword ptr [ecx+4],2
 00588A1A    mov         eax,5
>00588A1F    jmp         00588A36
 00588A21    mov         dword ptr [ecx+4],3
 00588A28    mov         eax,9
>00588A2D    jmp         00588A36
 00588A2F    xor         eax,eax
 00588A31    mov         dword ptr [ecx+4],eax
 00588A34    xor         eax,eax
 00588A36    and         edx,7F
 00588A39    sub         edx,eax
 00588A3B    inc         edx
 00588A3C    mov         dword ptr [ecx+8],edx
 00588A3F    ret
*}
end;

//00588A40
function TUxThemeStyle.GetElementDetails(Detail:TThemedExplorerBar):TThemedElementDetails;
begin
{*
 00588A40    mov         byte ptr [ecx],5
 00588A43    movzx       eax,dl
 00588A46    cmp         eax,20
>00588A49    ja          00588B63
 00588A4F    movzx       eax,byte ptr [eax+588A5D]
 00588A56    jmp         dword ptr [eax*4+588A7E]
 00588A56    db          0
 00588A56    db          0
 00588A56    db          1
 00588A56    db          1
 00588A56    db          1
 00588A56    db          2
 00588A56    db          2
 00588A56    db          2
 00588A56    db          3
 00588A56    db          3
 00588A56    db          3
 00588A56    db          3
 00588A56    db          3
 00588A56    db          3
 00588A56    db          4
 00588A56    db          4
 00588A56    db          4
 00588A56    db          5
 00588A56    db          6
 00588A56    db          6
 00588A56    db          6
 00588A56    db          7
 00588A56    db          7
 00588A56    db          7
 00588A56    db          8
 00588A56    db          9
 00588A56    db          10
 00588A56    db          10
 00588A56    db          10
 00588A56    db          11
 00588A56    db          11
 00588A56    db          11
 00588A56    db          12
 00588A56    dd          00588B63
 00588A56    dd          00588AB2
 00588A56    dd          00588AC3
 00588A56    dd          00588AD4
 00588A56    dd          00588AE5
 00588A56    dd          00588AF3
 00588A56    dd          00588B01
 00588A56    dd          00588B0F
 00588A56    dd          00588B1D
 00588A56    dd          00588B2B
 00588A56    dd          00588B39
 00588A56    dd          00588B47
 00588A56    dd          00588B55
 00588AB2    mov         dword ptr [ecx+4],1
 00588AB9    mov         eax,2
>00588ABE    jmp         00588B6A
 00588AC3    mov         dword ptr [ecx+4],2
 00588ACA    mov         eax,5
>00588ACF    jmp         00588B6A
 00588AD4    mov         dword ptr [ecx+4],3
 00588ADB    mov         eax,0B
>00588AE0    jmp         00588B6A
 00588AE5    mov         dword ptr [ecx+4],4
 00588AEC    mov         eax,0E
>00588AF1    jmp         00588B6A
 00588AF3    mov         dword ptr [ecx+4],5
 00588AFA    mov         eax,11
>00588AFF    jmp         00588B6A
 00588B01    mov         dword ptr [ecx+4],6
 00588B08    mov         eax,12
>00588B0D    jmp         00588B6A
 00588B0F    mov         dword ptr [ecx+4],7
 00588B16    mov         eax,15
>00588B1B    jmp         00588B6A
 00588B1D    mov         dword ptr [ecx+4],8
 00588B24    mov         eax,18
>00588B29    jmp         00588B6A
 00588B2B    mov         dword ptr [ecx+4],9
 00588B32    mov         eax,19
>00588B37    jmp         00588B6A
 00588B39    mov         dword ptr [ecx+4],0A
 00588B40    mov         eax,1A
>00588B45    jmp         00588B6A
 00588B47    mov         dword ptr [ecx+4],0B
 00588B4E    mov         eax,1D
>00588B53    jmp         00588B6A
 00588B55    mov         dword ptr [ecx+4],0C
 00588B5C    mov         eax,20
>00588B61    jmp         00588B6A
 00588B63    xor         eax,eax
 00588B65    mov         dword ptr [ecx+4],eax
 00588B68    xor         eax,eax
 00588B6A    and         edx,7F
 00588B6D    sub         edx,eax
 00588B6F    inc         edx
 00588B70    mov         dword ptr [ecx+8],edx
 00588B73    ret
*}
end;

//00588B74
function TUxThemeStyle.GetElementDetails(Detail:TThemedEdit):TThemedElementDetails;
begin
{*
 00588B74    mov         byte ptr [ecx],4
 00588B77    movzx       eax,dl
 00588B7A    cmp         eax,24
>00588B7D    ja          00588C5C
 00588B83    movzx       eax,byte ptr [eax+588B91]
 00588B8A    jmp         dword ptr [eax*4+588BB6]
 00588B8A    db          0
 00588B8A    db          0
 00588B8A    db          1
 00588B8A    db          1
 00588B8A    db          1
 00588B8A    db          1
 00588B8A    db          1
 00588B8A    db          1
 00588B8A    db          1
 00588B8A    db          2
 00588B8A    db          3
 00588B8A    db          3
 00588B8A    db          3
 00588B8A    db          3
 00588B8A    db          3
 00588B8A    db          3
 00588B8A    db          4
 00588B8A    db          5
 00588B8A    db          5
 00588B8A    db          5
 00588B8A    db          5
 00588B8A    db          6
 00588B8A    db          6
 00588B8A    db          6
 00588B8A    db          6
 00588B8A    db          7
 00588B8A    db          7
 00588B8A    db          7
 00588B8A    db          7
 00588B8A    db          8
 00588B8A    db          8
 00588B8A    db          8
 00588B8A    db          8
 00588B8A    db          9
 00588B8A    db          9
 00588B8A    db          9
 00588B8A    db          9
 00588B8A    dd          00588C5C
 00588B8A    dd          00588BDE
 00588B8A    dd          00588BEC
 00588B8A    dd          00588BFA
 00588B8A    dd          00588C08
 00588B8A    dd          00588C16
 00588B8A    dd          00588C24
 00588B8A    dd          00588C32
 00588B8A    dd          00588C40
 00588B8A    dd          00588C4E
 00588BDE    mov         dword ptr [ecx+4],1
 00588BE5    mov         eax,2
>00588BEA    jmp         00588C63
 00588BEC    mov         dword ptr [ecx+4],2
 00588BF3    mov         eax,9
>00588BF8    jmp         00588C63
 00588BFA    mov         dword ptr [ecx+4],3
 00588C01    mov         eax,0A
>00588C06    jmp         00588C63
 00588C08    mov         dword ptr [ecx+4],4
 00588C0F    mov         eax,10
>00588C14    jmp         00588C63
 00588C16    mov         dword ptr [ecx+4],5
 00588C1D    mov         eax,11
>00588C22    jmp         00588C63
 00588C24    mov         dword ptr [ecx+4],6
 00588C2B    mov         eax,15
>00588C30    jmp         00588C63
 00588C32    mov         dword ptr [ecx+4],7
 00588C39    mov         eax,19
>00588C3E    jmp         00588C63
 00588C40    mov         dword ptr [ecx+4],8
 00588C47    mov         eax,1D
>00588C4C    jmp         00588C63
 00588C4E    mov         dword ptr [ecx+4],9
 00588C55    mov         eax,21
>00588C5A    jmp         00588C63
 00588C5C    xor         eax,eax
 00588C5E    mov         dword ptr [ecx+4],eax
 00588C61    xor         eax,eax
 00588C63    and         edx,7F
 00588C66    sub         edx,eax
 00588C68    inc         edx
 00588C69    mov         dword ptr [ecx+8],edx
 00588C6C    ret
*}
end;

//00588C70
function TUxThemeStyle.GetElementDetails(Detail:TThemedFlyOut):TThemedElementDetails;
begin
{*
 00588C70    mov         byte ptr [ecx],6
 00588C73    movzx       eax,dl
 00588C76    cmp         eax,0F
>00588C79    ja          00588D36
 00588C7F    jmp         dword ptr [eax*4+588C86]
 00588C7F    dd          00588D36
 00588C7F    dd          00588D36
 00588C7F    dd          00588CC6
 00588C7F    dd          00588CD4
 00588C7F    dd          00588CD4
 00588C7F    dd          00588CE2
 00588C7F    dd          00588CE2
 00588C7F    dd          00588CE2
 00588C7F    dd          00588CE2
 00588C7F    dd          00588CF0
 00588C7F    dd          00588CF0
 00588C7F    dd          00588CFE
 00588C7F    dd          00588D0C
 00588C7F    dd          00588D1A
 00588C7F    dd          00588D28
 00588C7F    dd          00588D28
 00588CC6    mov         dword ptr [ecx+4],1
 00588CCD    mov         eax,2
>00588CD2    jmp         00588D3D
 00588CD4    mov         dword ptr [ecx+4],2
 00588CDB    mov         eax,3
>00588CE0    jmp         00588D3D
 00588CE2    mov         dword ptr [ecx+4],3
 00588CE9    mov         eax,5
>00588CEE    jmp         00588D3D
 00588CF0    mov         dword ptr [ecx+4],4
 00588CF7    mov         eax,9
>00588CFC    jmp         00588D3D
 00588CFE    mov         dword ptr [ecx+4],5
 00588D05    mov         eax,0B
>00588D0A    jmp         00588D3D
 00588D0C    mov         dword ptr [ecx+4],6
 00588D13    mov         eax,0C
>00588D18    jmp         00588D3D
 00588D1A    mov         dword ptr [ecx+4],7
 00588D21    mov         eax,0D
>00588D26    jmp         00588D3D
 00588D28    mov         dword ptr [ecx+4],8
 00588D2F    mov         eax,0E
>00588D34    jmp         00588D3D
 00588D36    xor         eax,eax
 00588D38    mov         dword ptr [ecx+4],eax
 00588D3B    xor         eax,eax
 00588D3D    and         edx,7F
 00588D40    sub         edx,eax
 00588D42    inc         edx
 00588D43    mov         dword ptr [ecx+8],edx
 00588D46    ret
*}
end;

//00588D48
function TUxThemeStyle.GetElementDetails(Detail:TThemedRebar):TThemedElementDetails;
begin
{*
 00588D48    mov         byte ptr [ecx],10
 00588D4B    movzx       eax,dl
 00588D4E    cmp         eax,11
>00588D51    ja          00588E16
 00588D57    jmp         dword ptr [eax*4+588D5E]
 00588D57    dd          00588E16
 00588D57    dd          00588E16
 00588D57    dd          00588DA6
 00588D57    dd          00588DB4
 00588D57    dd          00588DC2
 00588D57    dd          00588DD0
 00588D57    dd          00588DD0
 00588D57    dd          00588DD0
 00588D57    dd          00588DDE
 00588D57    dd          00588DDE
 00588D57    dd          00588DDE
 00588D57    dd          00588DEC
 00588D57    dd          00588DFA
 00588D57    dd          00588DFA
 00588D57    dd          00588DFA
 00588D57    dd          00588E08
 00588D57    dd          00588E08
 00588D57    dd          00588E08
 00588DA6    mov         dword ptr [ecx+4],1
 00588DAD    mov         eax,2
>00588DB2    jmp         00588E1D
 00588DB4    mov         dword ptr [ecx+4],2
 00588DBB    mov         eax,3
>00588DC0    jmp         00588E1D
 00588DC2    mov         dword ptr [ecx+4],3
 00588DC9    mov         eax,4
>00588DCE    jmp         00588E1D
 00588DD0    mov         dword ptr [ecx+4],4
 00588DD7    mov         eax,5
>00588DDC    jmp         00588E1D
 00588DDE    mov         dword ptr [ecx+4],5
 00588DE5    mov         eax,8
>00588DEA    jmp         00588E1D
 00588DEC    mov         dword ptr [ecx+4],6
 00588DF3    mov         eax,0B
>00588DF8    jmp         00588E1D
 00588DFA    mov         dword ptr [ecx+4],7
 00588E01    mov         eax,0C
>00588E06    jmp         00588E1D
 00588E08    mov         dword ptr [ecx+4],8
 00588E0F    mov         eax,0F
>00588E14    jmp         00588E1D
 00588E16    xor         eax,eax
 00588E18    mov         dword ptr [ecx+4],eax
 00588E1B    xor         eax,eax
 00588E1D    and         edx,7F
 00588E20    sub         edx,eax
 00588E22    inc         edx
 00588E23    mov         dword ptr [ecx+8],edx
 00588E26    ret
*}
end;

//00588E28
{*procedure TUxThemeStyle.GetElementDetails(Detail:TThemedSearchIndicators; ?:?);
begin
 00588E28    mov         byte ptr [ecx],2C
 00588E2B    xor         eax,eax
 00588E2D    mov         dword ptr [ecx+4],eax
 00588E30    movzx       eax,dl
 00588E33    mov         dword ptr [ecx+8],eax
 00588E36    ret
end;*}

//00588E38
{*procedure TUxThemeStyle.GetElementDetails(Detail:TThemedToggleSwitch; ?:?);
begin
 00588E38    mov         byte ptr [ecx],2B
 00588E3B    xor         eax,eax
 00588E3D    mov         dword ptr [ecx+4],eax
 00588E40    movzx       eax,dl
 00588E43    mov         dword ptr [ecx+8],eax
 00588E46    ret
end;*}

//00588E48
function TUxThemeStyle.GetElementDetails(Detail:TThemedTrackBar):TThemedElementDetails;
begin
{*
 00588E48    mov         byte ptr [ecx],1C
 00588E4B    movzx       eax,dl
 00588E4E    cmp         eax,23
>00588E51    ja          00588F44
 00588E57    movzx       eax,byte ptr [eax+588E65]
 00588E5E    jmp         dword ptr [eax*4+588E89]
 00588E5E    db          0
 00588E5E    db          0
 00588E5E    db          1
 00588E5E    db          2
 00588E5E    db          3
 00588E5E    db          3
 00588E5E    db          3
 00588E5E    db          3
 00588E5E    db          3
 00588E5E    db          4
 00588E5E    db          4
 00588E5E    db          4
 00588E5E    db          4
 00588E5E    db          4
 00588E5E    db          5
 00588E5E    db          5
 00588E5E    db          5
 00588E5E    db          5
 00588E5E    db          5
 00588E5E    db          6
 00588E5E    db          6
 00588E5E    db          6
 00588E5E    db          6
 00588E5E    db          6
 00588E5E    db          7
 00588E5E    db          7
 00588E5E    db          7
 00588E5E    db          7
 00588E5E    db          7
 00588E5E    db          8
 00588E5E    db          8
 00588E5E    db          8
 00588E5E    db          8
 00588E5E    db          8
 00588E5E    db          9
 00588E5E    db          10
 00588E5E    dd          00588F44
 00588E5E    dd          00588EB5
 00588E5E    dd          00588EC6
 00588E5E    dd          00588ED4
 00588E5E    dd          00588EE2
 00588E5E    dd          00588EF0
 00588E5E    dd          00588EFE
 00588E5E    dd          00588F0C
 00588E5E    dd          00588F1A
 00588E5E    dd          00588F28
 00588E5E    dd          00588F36
 00588EB5    mov         dword ptr [ecx+4],1
 00588EBC    mov         eax,2
>00588EC1    jmp         00588F4B
 00588EC6    mov         dword ptr [ecx+4],2
 00588ECD    mov         eax,3
>00588ED2    jmp         00588F4B
 00588ED4    mov         dword ptr [ecx+4],3
 00588EDB    mov         eax,4
>00588EE0    jmp         00588F4B
 00588EE2    mov         dword ptr [ecx+4],4
 00588EE9    mov         eax,9
>00588EEE    jmp         00588F4B
 00588EF0    mov         dword ptr [ecx+4],5
 00588EF7    mov         eax,0E
>00588EFC    jmp         00588F4B
 00588EFE    mov         dword ptr [ecx+4],6
 00588F05    mov         eax,13
>00588F0A    jmp         00588F4B
 00588F0C    mov         dword ptr [ecx+4],7
 00588F13    mov         eax,18
>00588F18    jmp         00588F4B
 00588F1A    mov         dword ptr [ecx+4],8
 00588F21    mov         eax,1D
>00588F26    jmp         00588F4B
 00588F28    mov         dword ptr [ecx+4],9
 00588F2F    mov         eax,22
>00588F34    jmp         00588F4B
 00588F36    mov         dword ptr [ecx+4],0A
 00588F3D    mov         eax,23
>00588F42    jmp         00588F4B
 00588F44    xor         eax,eax
 00588F46    mov         dword ptr [ecx+4],eax
 00588F49    xor         eax,eax
 00588F4B    and         edx,7F
 00588F4E    sub         edx,eax
 00588F50    inc         edx
 00588F51    mov         dword ptr [ecx+8],edx
 00588F54    ret
*}
end;

//00588F58
function TUxThemeStyle.GetElementDetails(Detail:TThemedToolTip):TThemedElementDetails;
begin
{*
 00588F58    mov         byte ptr [ecx],1B
 00588F5B    movzx       eax,dl
 00588F5E    cmp         eax,17
>00588F61    ja          00589033
 00588F67    movzx       eax,byte ptr [eax+588F75]
 00588F6E    jmp         dword ptr [eax*4+588F8D]
 00588F6E    db          0
 00588F6E    db          0
 00588F6E    db          1
 00588F6E    db          1
 00588F6E    db          2
 00588F6E    db          2
 00588F6E    db          3
 00588F6E    db          3
 00588F6E    db          4
 00588F6E    db          4
 00588F6E    db          5
 00588F6E    db          6
 00588F6E    db          7
 00588F6E    db          7
 00588F6E    db          7
 00588F6E    db          8
 00588F6E    db          8
 00588F6E    db          8
 00588F6E    db          8
 00588F6E    db          8
 00588F6E    db          8
 00588F6E    db          9
 00588F6E    db          9
 00588F6E    db          9
 00588F6E    dd          00589033
 00588F6E    dd          00588FB5
 00588F6E    dd          00588FC3
 00588F6E    dd          00588FD1
 00588F6E    dd          00588FDF
 00588F6E    dd          00588FED
 00588F6E    dd          00588FFB
 00588F6E    dd          00589009
 00588F6E    dd          00589017
 00588F6E    dd          00589025
 00588FB5    mov         dword ptr [ecx+4],1
 00588FBC    mov         eax,2
>00588FC1    jmp         0058903A
 00588FC3    mov         dword ptr [ecx+4],2
 00588FCA    mov         eax,4
>00588FCF    jmp         0058903A
 00588FD1    mov         dword ptr [ecx+4],3
 00588FD8    mov         eax,6
>00588FDD    jmp         0058903A
 00588FDF    mov         dword ptr [ecx+4],4
 00588FE6    mov         eax,8
>00588FEB    jmp         0058903A
 00588FED    mov         dword ptr [ecx+4],6
 00588FF4    mov         eax,1
>00588FF9    jmp         0058903A
 00588FFB    mov         dword ptr [ecx+4],6
 00589002    mov         eax,6
>00589007    jmp         0058903A
 00589009    mov         dword ptr [ecx+4],5
 00589010    mov         eax,0C
>00589015    jmp         0058903A
 00589017    mov         dword ptr [ecx+4],6
 0058901E    mov         eax,0F
>00589023    jmp         0058903A
 00589025    mov         dword ptr [ecx+4],7
 0058902C    mov         eax,15
>00589031    jmp         0058903A
 00589033    xor         eax,eax
 00589035    mov         dword ptr [ecx+4],eax
 00589038    xor         eax,eax
 0058903A    and         edx,7F
 0058903D    sub         edx,eax
 0058903F    inc         edx
 00589040    mov         dword ptr [ecx+8],edx
 00589043    ret
*}
end;

//00589044
function TUxThemeStyle.GetElementDetails(Detail:TThemedToolBar):TThemedElementDetails;
begin
{*
 00589044    mov         byte ptr [ecx],1A
 00589047    movzx       eax,dl
 0058904A    cmp         eax,1A
>0058904D    jge         00589063
 0058904F    add         eax,0FFFFFFFE
 00589052    sub         eax,8
>00589055    jb          0058907C
 00589057    sub         eax,8
>0058905A    jb          0058908A
 0058905C    sub         eax,8
>0058905F    jb          00589098
>00589061    jmp         005890DE
 00589063    add         eax,0FFFFFFE6
 00589066    sub         eax,8
>00589069    jb          005890A6
 0058906B    sub         eax,8
>0058906E    jb          005890B4
 00589070    sub         eax,8
>00589073    jb          005890C2
 00589075    sub         eax,8
>00589078    jb          005890D0
>0058907A    jmp         005890DE
 0058907C    mov         dword ptr [ecx+4],1
 00589083    mov         eax,2
>00589088    jmp         005890E5
 0058908A    mov         dword ptr [ecx+4],2
 00589091    mov         eax,0A
>00589096    jmp         005890E5
 00589098    mov         dword ptr [ecx+4],3
 0058909F    mov         eax,12
>005890A4    jmp         005890E5
 005890A6    mov         dword ptr [ecx+4],4
 005890AD    mov         eax,1A
>005890B2    jmp         005890E5
 005890B4    mov         dword ptr [ecx+4],5
 005890BB    mov         eax,22
>005890C0    jmp         005890E5
 005890C2    mov         dword ptr [ecx+4],6
 005890C9    mov         eax,2A
>005890CE    jmp         005890E5
 005890D0    mov         dword ptr [ecx+4],7
 005890D7    mov         eax,32
>005890DC    jmp         005890E5
 005890DE    xor         eax,eax
 005890E0    mov         dword ptr [ecx+4],eax
 005890E3    xor         eax,eax
 005890E5    and         edx,7F
 005890E8    sub         edx,eax
 005890EA    inc         edx
 005890EB    mov         dword ptr [ecx+8],edx
 005890EE    ret
*}
end;

//005890F0
function TUxThemeStyle.GetElementDetails(Detail:TThemedWindow):TThemedElementDetails;
begin
{*
 005890F0    mov         byte ptr [ecx],1F
 005890F3    movzx       eax,dl
 005890F6    cmp         eax,69
>005890F9    ja          0058947E
 005890FF    movzx       eax,byte ptr [eax+58910D]
 00589106    jmp         dword ptr [eax*4+589177]
 00589106    db          0
 00589106    db          0
 00589106    db          1
 00589106    db          1
 00589106    db          1
 00589106    db          2
 00589106    db          2
 00589106    db          2
 00589106    db          3
 00589106    db          3
 00589106    db          3
 00589106    db          4
 00589106    db          4
 00589106    db          4
 00589106    db          5
 00589106    db          5
 00589106    db          5
 00589106    db          6
 00589106    db          6
 00589106    db          6
 00589106    db          7
 00589106    db          7
 00589106    db          8
 00589106    db          8
 00589106    db          9
 00589106    db          9
 00589106    db          10
 00589106    db          10
 00589106    db          11
 00589106    db          11
 00589106    db          12
 00589106    db          12
 00589106    db          13
 00589106    db          13
 00589106    db          13
 00589106    db          13
 00589106    db          14
 00589106    db          14
 00589106    db          14
 00589106    db          14
 00589106    db          15
 00589106    db          15
 00589106    db          15
 00589106    db          15
 00589106    db          16
 00589106    db          16
 00589106    db          16
 00589106    db          16
 00589106    db          17
 00589106    db          17
 00589106    db          17
 00589106    db          17
 00589106    db          18
 00589106    db          18
 00589106    db          18
 00589106    db          18
 00589106    db          19
 00589106    db          19
 00589106    db          19
 00589106    db          19
 00589106    db          20
 00589106    db          20
 00589106    db          20
 00589106    db          20
 00589106    db          21
 00589106    db          21
 00589106    db          21
 00589106    db          21
 00589106    db          22
 00589106    db          22
 00589106    db          22
 00589106    db          22
 00589106    db          23
 00589106    db          23
 00589106    db          23
 00589106    db          23
 00589106    db          24
 00589106    db          24
 00589106    db          24
 00589106    db          24
 00589106    db          25
 00589106    db          25
 00589106    db          25
 00589106    db          25
 00589106    db          26
 00589106    db          26
 00589106    db          26
 00589106    db          26
 00589106    db          27
 00589106    db          27
 00589106    db          27
 00589106    db          27
 00589106    db          28
 00589106    db          28
 00589106    db          28
 00589106    db          28
 00589106    db          29
 00589106    db          30
 00589106    db          31
 00589106    db          32
 00589106    db          33
 00589106    db          34
 00589106    db          35
 00589106    db          36
 00589106    db          37
 00589106    db          38
 00589106    dd          0058947E
 00589106    dd          00589213
 00589106    dd          00589224
 00589106    dd          00589235
 00589106    dd          00589246
 00589106    dd          00589257
 00589106    dd          00589268
 00589106    dd          00589279
 00589106    dd          0058928A
 00589106    dd          0058929B
 00589106    dd          005892AC
 00589106    dd          005892BD
 00589106    dd          005892CE
 00589106    dd          005892DF
 00589106    dd          005892F0
 00589106    dd          00589301
 00589106    dd          00589312
 00589106    dd          00589323
 00589106    dd          00589334
 00589106    dd          00589345
 00589106    dd          00589356
 00589106    dd          00589367
 00589106    dd          00589378
 00589106    dd          00589389
 00589106    dd          0058939A
 00589106    dd          005893AB
 00589106    dd          005893BC
 00589106    dd          005893CD
 00589106    dd          005893DE
 00589106    dd          005893EF
 00589106    dd          00589400
 00589106    dd          0058940E
 00589106    dd          0058941C
 00589106    dd          0058942A
 00589106    dd          00589438
 00589106    dd          00589446
 00589106    dd          00589454
 00589106    dd          00589462
 00589106    dd          00589470
 00589213    mov         dword ptr [ecx+4],1
 0058921A    mov         eax,2
>0058921F    jmp         00589485
 00589224    mov         dword ptr [ecx+4],2
 0058922B    mov         eax,5
>00589230    jmp         00589485
 00589235    mov         dword ptr [ecx+4],3
 0058923C    mov         eax,8
>00589241    jmp         00589485
 00589246    mov         dword ptr [ecx+4],4
 0058924D    mov         eax,0B
>00589252    jmp         00589485
 00589257    mov         dword ptr [ecx+4],5
 0058925E    mov         eax,0E
>00589263    jmp         00589485
 00589268    mov         dword ptr [ecx+4],6
 0058926F    mov         eax,11
>00589274    jmp         00589485
 00589279    mov         dword ptr [ecx+4],7
 00589280    mov         eax,14
>00589285    jmp         00589485
 0058928A    mov         dword ptr [ecx+4],8
 00589291    mov         eax,16
>00589296    jmp         00589485
 0058929B    mov         dword ptr [ecx+4],9
 005892A2    mov         eax,18
>005892A7    jmp         00589485
 005892AC    mov         dword ptr [ecx+4],0A
 005892B3    mov         eax,1A
>005892B8    jmp         00589485
 005892BD    mov         dword ptr [ecx+4],0B
 005892C4    mov         eax,1C
>005892C9    jmp         00589485
 005892CE    mov         dword ptr [ecx+4],0C
 005892D5    mov         eax,1E
>005892DA    jmp         00589485
 005892DF    mov         dword ptr [ecx+4],0D
 005892E6    mov         eax,20
>005892EB    jmp         00589485
 005892F0    mov         dword ptr [ecx+4],0E
 005892F7    mov         eax,24
>005892FC    jmp         00589485
 00589301    mov         dword ptr [ecx+4],0F
 00589308    mov         eax,28
>0058930D    jmp         00589485
 00589312    mov         dword ptr [ecx+4],10
 00589319    mov         eax,2C
>0058931E    jmp         00589485
 00589323    mov         dword ptr [ecx+4],11
 0058932A    mov         eax,30
>0058932F    jmp         00589485
 00589334    mov         dword ptr [ecx+4],12
 0058933B    mov         eax,34
>00589340    jmp         00589485
 00589345    mov         dword ptr [ecx+4],13
 0058934C    mov         eax,38
>00589351    jmp         00589485
 00589356    mov         dword ptr [ecx+4],14
 0058935D    mov         eax,3C
>00589362    jmp         00589485
 00589367    mov         dword ptr [ecx+4],15
 0058936E    mov         eax,40
>00589373    jmp         00589485
 00589378    mov         dword ptr [ecx+4],16
 0058937F    mov         eax,44
>00589384    jmp         00589485
 00589389    mov         dword ptr [ecx+4],17
 00589390    mov         eax,48
>00589395    jmp         00589485
 0058939A    mov         dword ptr [ecx+4],18
 005893A1    mov         eax,4C
>005893A6    jmp         00589485
 005893AB    mov         dword ptr [ecx+4],19
 005893B2    mov         eax,50
>005893B7    jmp         00589485
 005893BC    mov         dword ptr [ecx+4],1A
 005893C3    mov         eax,54
>005893C8    jmp         00589485
 005893CD    mov         dword ptr [ecx+4],1B
 005893D4    mov         eax,58
>005893D9    jmp         00589485
 005893DE    mov         dword ptr [ecx+4],1C
 005893E5    mov         eax,5C
>005893EA    jmp         00589485
 005893EF    mov         dword ptr [ecx+4],1D
 005893F6    mov         eax,60
>005893FB    jmp         00589485
 00589400    mov         dword ptr [ecx+4],1E
 00589407    mov         eax,61
>0058940C    jmp         00589485
 0058940E    mov         dword ptr [ecx+4],1F
 00589415    mov         eax,62
>0058941A    jmp         00589485
 0058941C    mov         dword ptr [ecx+4],20
 00589423    mov         eax,63
>00589428    jmp         00589485
 0058942A    mov         dword ptr [ecx+4],21
 00589431    mov         eax,64
>00589436    jmp         00589485
 00589438    mov         dword ptr [ecx+4],22
 0058943F    mov         eax,65
>00589444    jmp         00589485
 00589446    mov         dword ptr [ecx+4],23
 0058944D    mov         eax,66
>00589452    jmp         00589485
 00589454    mov         dword ptr [ecx+4],24
 0058945B    mov         eax,67
>00589460    jmp         00589485
 00589462    mov         dword ptr [ecx+4],25
 00589469    mov         eax,68
>0058946E    jmp         00589485
 00589470    mov         dword ptr [ecx+4],26
 00589477    mov         eax,69
>0058947C    jmp         00589485
 0058947E    xor         eax,eax
 00589480    mov         dword ptr [ecx+4],eax
 00589483    xor         eax,eax
 00589485    and         edx,7F
 00589488    sub         edx,eax
 0058948A    inc         edx
 0058948B    mov         dword ptr [ecx+8],edx
 0058948E    ret
*}
end;

//00589490
function TUxThemeStyle.GetElementDetails(Detail:TThemedHint):TThemedElementDetails;
begin
{*
 00589490    mov         byte ptr [ecx],26
 00589493    xor         eax,eax
 00589495    mov         dword ptr [ecx+4],eax
 00589498    movzx       eax,dl
 0058949B    mov         dword ptr [ecx+8],eax
 0058949E    ret
*}
end;

//005894A0
function TUxThemeStyle.GetElementDetails(Detail:TThemedControlBar):TThemedElementDetails;
begin
{*
 005894A0    mov         byte ptr [ecx],23
 005894A3    xor         eax,eax
 005894A5    mov         dword ptr [ecx+4],eax
 005894A8    movzx       eax,dl
 005894AB    mov         dword ptr [ecx+8],eax
 005894AE    ret
*}
end;

//005894B0
function TUxThemeStyle.GetElementDetails(Detail:TThemedTabSet):TThemedElementDetails;
begin
{*
 005894B0    mov         byte ptr [ecx],28
 005894B3    xor         eax,eax
 005894B5    mov         dword ptr [ecx+4],eax
 005894B8    movzx       eax,dl
 005894BB    mov         dword ptr [ecx+8],eax
 005894BE    ret
*}
end;

//005894C0
function TUxThemeStyle.GetElementDetails(Detail:TThemedPanel):TThemedElementDetails;
begin
{*
 005894C0    mov         byte ptr [ecx],27
 005894C3    xor         eax,eax
 005894C5    mov         dword ptr [ecx+4],eax
 005894C8    movzx       eax,dl
 005894CB    mov         dword ptr [ecx+8],eax
 005894CE    ret
*}
end;

//005894D0
function TUxThemeStyle.GetElementDetails(Detail:TThemedCategoryButtons):TThemedElementDetails;
begin
{*
 005894D0    mov         byte ptr [ecx],20
 005894D3    xor         eax,eax
 005894D5    mov         dword ptr [ecx+4],eax
 005894D8    movzx       eax,dl
 005894DB    mov         dword ptr [ecx+8],eax
 005894DE    ret
*}
end;

//005894E0
function TUxThemeStyle.GetElementDetails(Detail:TThemedCategoryPanelGroup):TThemedElementDetails;
begin
{*
 005894E0    mov         byte ptr [ecx],21
 005894E3    xor         eax,eax
 005894E5    mov         dword ptr [ecx+4],eax
 005894E8    movzx       eax,dl
 005894EB    mov         dword ptr [ecx+8],eax
 005894EE    ret
*}
end;

//005894F0
function TUxThemeStyle.GetElementDetails(Detail:TThemedCheckListBox):TThemedElementDetails;
begin
{*
 005894F0    mov         byte ptr [ecx],22
 005894F3    xor         eax,eax
 005894F5    mov         dword ptr [ecx+4],eax
 005894F8    movzx       eax,dl
 005894FB    mov         dword ptr [ecx+8],eax
 005894FE    ret
*}
end;

//00589500
function TUxThemeStyle.GetElementDetails(Detail:TThemedGrid):TThemedElementDetails;
begin
{*
 00589500    mov         byte ptr [ecx],25
 00589503    xor         eax,eax
 00589505    mov         dword ptr [ecx+4],eax
 00589508    movzx       eax,dl
 0058950B    mov         dword ptr [ecx+8],eax
 0058950E    ret
*}
end;

//00589510
function TUxThemeStyle.GetName:UnicodeString;
begin
{*
 00589510    push        ebx
 00589511    mov         ebx,edx
 00589513    mov         eax,ebx
 00589515    mov         edx,589530;'Windows'
 0058951A    call        @UStrAsg
 0058951F    pop         ebx
 00589520    ret
*}
end;

//00589540
function TUxThemeStyle.GetElementDetails(Detail:TThemedTreeview):TThemedElementDetails;
begin
{*
 00589540    mov         byte ptr [ecx],1E
 00589543    mov         eax,edx
 00589545    add         al,0FE
 00589547    sub         al,6
>00589549    jb          00589558
 0058954B    sub         al,2
>0058954D    jb          00589566
>0058954F    je          00589574
 00589551    dec         eax
 00589552    sub         al,2
>00589554    jb          00589582
>00589556    jmp         00589590
 00589558    mov         dword ptr [ecx+4],1
 0058955F    mov         eax,2
>00589564    jmp         00589597
 00589566    mov         dword ptr [ecx+4],2
 0058956D    mov         eax,8
>00589572    jmp         00589597
 00589574    mov         dword ptr [ecx+4],3
 0058957B    mov         eax,0A
>00589580    jmp         00589597
 00589582    mov         dword ptr [ecx+4],4
 00589589    mov         eax,0B
>0058958E    jmp         00589597
 00589590    xor         eax,eax
 00589592    mov         dword ptr [ecx+4],eax
 00589595    xor         eax,eax
 00589597    and         edx,7F
 0058959A    sub         edx,eax
 0058959C    inc         edx
 0058959D    mov         dword ptr [ecx+8],edx
 005895A0    ret
*}
end;

//005895A4
function TUxThemeStyle.GetElementDetails(Detail:TThemedTrayNotify):TThemedElementDetails;
begin
{*
 005895A4    mov         byte ptr [ecx],1D
 005895A7    mov         eax,edx
 005895A9    sub         al,2
>005895AB    je          005895B3
 005895AD    dec         al
>005895AF    je          005895C1
>005895B1    jmp         005895CF
 005895B3    mov         dword ptr [ecx+4],1
 005895BA    mov         eax,2
>005895BF    jmp         005895D6
 005895C1    mov         dword ptr [ecx+4],2
 005895C8    mov         eax,3
>005895CD    jmp         005895D6
 005895CF    xor         eax,eax
 005895D1    mov         dword ptr [ecx+4],eax
 005895D4    xor         eax,eax
 005895D6    and         edx,7F
 005895D9    sub         edx,eax
 005895DB    inc         edx
 005895DC    mov         dword ptr [ecx+8],edx
 005895DF    ret
*}
end;

//005895E0
function TUxThemeStyle.GetElementDetails(Detail:TThemedTaskBar):TThemedElementDetails;
begin
{*
 005895E0    mov         byte ptr [ecx],17
 005895E3    movzx       eax,dl
 005895E6    cmp         eax,9
>005895E9    ja          0058968E
 005895EF    jmp         dword ptr [eax*4+5895F6]
 005895EF    dd          0058968E
 005895EF    dd          0058968E
 005895EF    dd          0058961E
 005895EF    dd          0058962C
 005895EF    dd          0058963A
 005895EF    dd          00589648
 005895EF    dd          00589656
 005895EF    dd          00589664
 005895EF    dd          00589672
 005895EF    dd          00589680
 0058961E    mov         dword ptr [ecx+4],1
 00589625    mov         eax,2
>0058962A    jmp         00589695
 0058962C    mov         dword ptr [ecx+4],2
 00589633    mov         eax,3
>00589638    jmp         00589695
 0058963A    mov         dword ptr [ecx+4],3
 00589641    mov         eax,4
>00589646    jmp         00589695
 00589648    mov         dword ptr [ecx+4],4
 0058964F    mov         eax,5
>00589654    jmp         00589695
 00589656    mov         dword ptr [ecx+4],5
 0058965D    mov         eax,6
>00589662    jmp         00589695
 00589664    mov         dword ptr [ecx+4],6
 0058966B    mov         eax,7
>00589670    jmp         00589695
 00589672    mov         dword ptr [ecx+4],7
 00589679    mov         eax,8
>0058967E    jmp         00589695
 00589680    mov         dword ptr [ecx+4],8
 00589687    mov         eax,9
>0058968C    jmp         00589695
 0058968E    xor         eax,eax
 00589690    mov         dword ptr [ecx+4],eax
 00589693    xor         eax,eax
 00589695    and         edx,7F
 00589698    sub         edx,eax
 0058969A    inc         edx
 0058969B    mov         dword ptr [ecx+8],edx
 0058969E    ret
*}
end;

//005896A0
function TUxThemeStyle.GetElementDetails(Detail:TThemedStartPanel):TThemedElementDetails;
begin
{*
 005896A0    mov         byte ptr [ecx],13
 005896A3    movzx       eax,dl
 005896A6    cmp         eax,26
>005896A9    ja          0058987A
 005896AF    jmp         dword ptr [eax*4+5896B6]
 005896AF    dd          0058987A
 005896AF    dd          0058987A
 005896AF    dd          00589752
 005896AF    dd          00589763
 005896AF    dd          00589774
 005896AF    dd          00589774
 005896AF    dd          00589774
 005896AF    dd          00589785
 005896AF    dd          00589796
 005896AF    dd          005897A7
 005896AF    dd          005897B8
 005896AF    dd          005897C9
 005896AF    dd          005897DA
 005896AF    dd          005897DA
 005896AF    dd          005897DA
 005896AF    dd          005897EB
 005896AF    dd          005897FC
 005896AF    dd          0058980A
 005896AF    dd          0058980A
 005896AF    dd          0058980A
 005896AF    dd          0058980A
 005896AF    dd          0058980A
 005896AF    dd          00589818
 005896AF    dd          00589826
 005896AF    dd          00589826
 005896AF    dd          00589826
 005896AF    dd          00589826
 005896AF    dd          00589826
 005896AF    dd          00589834
 005896AF    dd          00589834
 005896AF    dd          00589834
 005896AF    dd          00589834
 005896AF    dd          00589834
 005896AF    dd          00589842
 005896AF    dd          00589850
 005896AF    dd          00589850
 005896AF    dd          00589850
 005896AF    dd          0058985E
 005896AF    dd          0058986C
 00589752    mov         dword ptr [ecx+4],1
 00589759    mov         eax,2
>0058975E    jmp         00589881
 00589763    mov         dword ptr [ecx+4],2
 0058976A    mov         eax,3
>0058976F    jmp         00589881
 00589774    mov         dword ptr [ecx+4],3
 0058977B    mov         eax,4
>00589780    jmp         00589881
 00589785    mov         dword ptr [ecx+4],4
 0058978C    mov         eax,7
>00589791    jmp         00589881
 00589796    mov         dword ptr [ecx+4],5
 0058979D    mov         eax,8
>005897A2    jmp         00589881
 005897A7    mov         dword ptr [ecx+4],6
 005897AE    mov         eax,9
>005897B3    jmp         00589881
 005897B8    mov         dword ptr [ecx+4],7
 005897BF    mov         eax,0A
>005897C4    jmp         00589881
 005897C9    mov         dword ptr [ecx+4],8
 005897D0    mov         eax,0B
>005897D5    jmp         00589881
 005897DA    mov         dword ptr [ecx+4],9
 005897E1    mov         eax,0C
>005897E6    jmp         00589881
 005897EB    mov         dword ptr [ecx+4],0A
 005897F2    mov         eax,0F
>005897F7    jmp         00589881
 005897FC    mov         dword ptr [ecx+4],0B
 00589803    mov         eax,10
>00589808    jmp         00589881
 0058980A    mov         dword ptr [ecx+4],0C
 00589811    mov         eax,11
>00589816    jmp         00589881
 00589818    mov         dword ptr [ecx+4],0D
 0058981F    mov         eax,16
>00589824    jmp         00589881
 00589826    mov         dword ptr [ecx+4],0E
 0058982D    mov         eax,17
>00589832    jmp         00589881
 00589834    mov         dword ptr [ecx+4],0F
 0058983B    mov         eax,1C
>00589840    jmp         00589881
 00589842    mov         dword ptr [ecx+4],10
 00589849    mov         eax,21
>0058984E    jmp         00589881
 00589850    mov         dword ptr [ecx+4],11
 00589857    mov         eax,22
>0058985C    jmp         00589881
 0058985E    mov         dword ptr [ecx+4],12
 00589865    mov         eax,25
>0058986A    jmp         00589881
 0058986C    mov         dword ptr [ecx+4],13
 00589873    mov         eax,26
>00589878    jmp         00589881
 0058987A    xor         eax,eax
 0058987C    mov         dword ptr [ecx+4],eax
 0058987F    xor         eax,eax
 00589881    and         edx,7F
 00589884    sub         edx,eax
 00589886    inc         edx
 00589887    mov         dword ptr [ecx+8],edx
 0058988A    ret
*}
end;

//0058988C
function TUxThemeStyle.GetElementDetails(Detail:TThemedSpin):TThemedElementDetails;
begin
{*
 0058988C    mov         byte ptr [ecx],12
 0058988F    mov         eax,edx
 00589891    add         al,0FE
 00589893    sub         al,4
>00589895    jb          005898A5
 00589897    sub         al,4
>00589899    jb          005898B3
 0058989B    sub         al,4
>0058989D    jb          005898C1
 0058989F    sub         al,4
>005898A1    jb          005898CF
>005898A3    jmp         005898DD
 005898A5    mov         dword ptr [ecx+4],1
 005898AC    mov         eax,2
>005898B1    jmp         005898E4
 005898B3    mov         dword ptr [ecx+4],2
 005898BA    mov         eax,6
>005898BF    jmp         005898E4
 005898C1    mov         dword ptr [ecx+4],3
 005898C8    mov         eax,0A
>005898CD    jmp         005898E4
 005898CF    mov         dword ptr [ecx+4],4
 005898D6    mov         eax,0E
>005898DB    jmp         005898E4
 005898DD    xor         eax,eax
 005898DF    mov         dword ptr [ecx+4],eax
 005898E2    xor         eax,eax
 005898E4    and         edx,7F
 005898E7    sub         edx,eax
 005898E9    inc         edx
 005898EA    mov         dword ptr [ecx+8],edx
 005898ED    ret
*}
end;

//005898F0
function TUxThemeStyle.GetElementDetails(Detail:TThemedScrollBar):TThemedElementDetails;
begin
{*
 005898F0    mov         byte ptr [ecx],11
 005898F3    movzx       eax,dl
 005898F6    cmp         eax,28
>005898F9    jge         00589929
 005898FB    cmp         eax,1A
>005898FE    jge         00589912
 00589900    add         eax,0FFFFFFFE
 00589903    sub         eax,14
>00589906    jb          0058995F
 00589908    sub         eax,4
>0058990B    jb          00589970
>0058990D    jmp         005899EE
 00589912    add         eax,0FFFFFFE6
 00589915    sub         eax,4
>00589918    jb          0058997E
 0058991A    sub         eax,5
>0058991D    jb          0058998C
 0058991F    sub         eax,5
>00589922    jb          0058999A
>00589924    jmp         005899EE
 00589929    cmp         eax,32
>0058992C    jge         00589940
 0058992E    add         eax,0FFFFFFD8
 00589931    sub         eax,5
>00589934    jb          005899A8
 00589936    sub         eax,5
>00589939    jb          005899B6
>0058993B    jmp         005899EE
 00589940    add         eax,0FFFFFFCE
 00589943    sub         eax,5
>00589946    jb          005899C4
 00589948    sub         eax,5
>0058994B    jb          005899D2
 00589951    sub         eax,8
>00589954    jb          005899E0
>0058995A    jmp         005899EE
 0058995F    mov         dword ptr [ecx+4],1
 00589966    mov         eax,2
>0058996B    jmp         005899F5
 00589970    mov         dword ptr [ecx+4],2
 00589977    mov         eax,16
>0058997C    jmp         005899F5
 0058997E    mov         dword ptr [ecx+4],3
 00589985    mov         eax,1A
>0058998A    jmp         005899F5
 0058998C    mov         dword ptr [ecx+4],4
 00589993    mov         eax,1E
>00589998    jmp         005899F5
 0058999A    mov         dword ptr [ecx+4],5
 005899A1    mov         eax,23
>005899A6    jmp         005899F5
 005899A8    mov         dword ptr [ecx+4],6
 005899AF    mov         eax,28
>005899B4    jmp         005899F5
 005899B6    mov         dword ptr [ecx+4],7
 005899BD    mov         eax,2D
>005899C2    jmp         005899F5
 005899C4    mov         dword ptr [ecx+4],8
 005899CB    mov         eax,32
>005899D0    jmp         005899F5
 005899D2    mov         dword ptr [ecx+4],9
 005899D9    mov         eax,37
>005899DE    jmp         005899F5
 005899E0    mov         dword ptr [ecx+4],0A
 005899E7    mov         eax,3C
>005899EC    jmp         005899F5
 005899EE    xor         eax,eax
 005899F0    mov         dword ptr [ecx+4],eax
 005899F3    xor         eax,eax
 005899F5    and         edx,7F
 005899F8    sub         edx,eax
 005899FA    inc         edx
 005899FB    mov         dword ptr [ecx+8],edx
 005899FE    ret
*}
end;

//00589A00
function TUxThemeStyle.GetElementDetails(Detail:TThemedTaskBand):TThemedElementDetails;
begin
{*
 00589A00    mov         byte ptr [ecx],16
 00589A03    mov         eax,edx
 00589A05    sub         al,2
>00589A07    je          00589A13
 00589A09    dec         al
>00589A0B    je          00589A21
 00589A0D    dec         al
>00589A0F    je          00589A2F
>00589A11    jmp         00589A3D
 00589A13    mov         dword ptr [ecx+4],1
 00589A1A    mov         eax,2
>00589A1F    jmp         00589A44
 00589A21    mov         dword ptr [ecx+4],2
 00589A28    mov         eax,3
>00589A2D    jmp         00589A44
 00589A2F    mov         dword ptr [ecx+4],3
 00589A36    mov         eax,4
>00589A3B    jmp         00589A44
 00589A3D    xor         eax,eax
 00589A3F    mov         dword ptr [ecx+4],eax
 00589A42    xor         eax,eax
 00589A44    and         edx,7F
 00589A47    sub         edx,eax
 00589A49    inc         edx
 00589A4A    mov         dword ptr [ecx+8],edx
 00589A4D    ret
*}
end;

//00589A50
function TUxThemeStyle.GetElementDetails(Detail:TThemedTaskDialog):TThemedElementDetails;
begin
{*
 00589A50    mov         byte ptr [ecx],18
 00589A53    movzx       eax,dl
 00589A56    cmp         eax,1B
>00589A59    ja          00589C20
 00589A5F    jmp         dword ptr [eax*4+589A66]
 00589A5F    dd          00589C20
 00589A5F    dd          00589C20
 00589A5F    dd          00589AD6
 00589A5F    dd          00589AE7
 00589A5F    dd          00589AF8
 00589A5F    dd          00589B09
 00589A5F    dd          00589B1A
 00589A5F    dd          00589B2B
 00589A5F    dd          00589B3C
 00589A5F    dd          00589B4D
 00589A5F    dd          00589B5E
 00589A5F    dd          00589B6F
 00589A5F    dd          00589B80
 00589A5F    dd          00589B91
 00589A5F    dd          00589BA2
 00589A5F    dd          00589BA2
 00589A5F    dd          00589BA2
 00589A5F    dd          00589BA2
 00589A5F    dd          00589BA2
 00589A5F    dd          00589BA2
 00589A5F    dd          00589BB0
 00589A5F    dd          00589BBE
 00589A5F    dd          00589BCC
 00589A5F    dd          00589BDA
 00589A5F    dd          00589BE8
 00589A5F    dd          00589BF6
 00589A5F    dd          00589C04
 00589A5F    dd          00589C12
 00589AD6    mov         dword ptr [ecx+4],1
 00589ADD    mov         eax,2
>00589AE2    jmp         00589C27
 00589AE7    mov         dword ptr [ecx+4],2
 00589AEE    mov         eax,3
>00589AF3    jmp         00589C27
 00589AF8    mov         dword ptr [ecx+4],3
 00589AFF    mov         eax,4
>00589B04    jmp         00589C27
 00589B09    mov         dword ptr [ecx+4],4
 00589B10    mov         eax,5
>00589B15    jmp         00589C27
 00589B1A    mov         dword ptr [ecx+4],5
 00589B21    mov         eax,6
>00589B26    jmp         00589C27
 00589B2B    mov         dword ptr [ecx+4],6
 00589B32    mov         eax,7
>00589B37    jmp         00589C27
 00589B3C    mov         dword ptr [ecx+4],7
 00589B43    mov         eax,8
>00589B48    jmp         00589C27
 00589B4D    mov         dword ptr [ecx+4],8
 00589B54    mov         eax,9
>00589B59    jmp         00589C27
 00589B5E    mov         dword ptr [ecx+4],9
 00589B65    mov         eax,0A
>00589B6A    jmp         00589C27
 00589B6F    mov         dword ptr [ecx+4],0A
 00589B76    mov         eax,0B
>00589B7B    jmp         00589C27
 00589B80    mov         dword ptr [ecx+4],0B
 00589B87    mov         eax,0C
>00589B8C    jmp         00589C27
 00589B91    mov         dword ptr [ecx+4],0C
 00589B98    mov         eax,0D
>00589B9D    jmp         00589C27
 00589BA2    mov         dword ptr [ecx+4],0D
 00589BA9    mov         eax,0E
>00589BAE    jmp         00589C27
 00589BB0    mov         dword ptr [ecx+4],0E
 00589BB7    mov         eax,14
>00589BBC    jmp         00589C27
 00589BBE    mov         dword ptr [ecx+4],0F
 00589BC5    mov         eax,15
>00589BCA    jmp         00589C27
 00589BCC    mov         dword ptr [ecx+4],10
 00589BD3    mov         eax,16
>00589BD8    jmp         00589C27
 00589BDA    mov         dword ptr [ecx+4],11
 00589BE1    mov         eax,17
>00589BE6    jmp         00589C27
 00589BE8    mov         dword ptr [ecx+4],12
 00589BEF    mov         eax,18
>00589BF4    jmp         00589C27
 00589BF6    mov         dword ptr [ecx+4],13
 00589BFD    mov         eax,19
>00589C02    jmp         00589C27
 00589C04    mov         dword ptr [ecx+4],14
 00589C0B    mov         eax,1A
>00589C10    jmp         00589C27
 00589C12    mov         dword ptr [ecx+4],15
 00589C19    mov         eax,1B
>00589C1E    jmp         00589C27
 00589C20    xor         eax,eax
 00589C22    mov         dword ptr [ecx+4],eax
 00589C25    xor         eax,eax
 00589C27    and         edx,7F
 00589C2A    sub         edx,eax
 00589C2C    inc         edx
 00589C2D    mov         dword ptr [ecx+8],edx
 00589C30    ret
*}
end;

//00589C34
function TUxThemeStyle.GetElementDetails(Detail:TThemedTab):TThemedElementDetails;
begin
{*
 00589C34    mov         byte ptr [ecx],15
 00589C37    movzx       eax,dl
 00589C3A    cmp         eax,2C
>00589C3D    ja          00589D4E
 00589C43    movzx       eax,byte ptr [eax+589C51]
 00589C4A    jmp         dword ptr [eax*4+589C7E]
 00589C4A    db          0
 00589C4A    db          0
 00589C4A    db          1
 00589C4A    db          1
 00589C4A    db          1
 00589C4A    db          1
 00589C4A    db          1
 00589C4A    db          2
 00589C4A    db          2
 00589C4A    db          2
 00589C4A    db          2
 00589C4A    db          2
 00589C4A    db          3
 00589C4A    db          3
 00589C4A    db          3
 00589C4A    db          3
 00589C4A    db          3
 00589C4A    db          4
 00589C4A    db          4
 00589C4A    db          4
 00589C4A    db          4
 00589C4A    db          4
 00589C4A    db          5
 00589C4A    db          5
 00589C4A    db          5
 00589C4A    db          5
 00589C4A    db          5
 00589C4A    db          6
 00589C4A    db          6
 00589C4A    db          6
 00589C4A    db          6
 00589C4A    db          6
 00589C4A    db          7
 00589C4A    db          7
 00589C4A    db          7
 00589C4A    db          7
 00589C4A    db          7
 00589C4A    db          8
 00589C4A    db          8
 00589C4A    db          8
 00589C4A    db          8
 00589C4A    db          8
 00589C4A    db          9
 00589C4A    db          10
 00589C4A    db          11
 00589C4A    dd          00589D4E
 00589C4A    dd          00589CAE
 00589C4A    dd          00589CBF
 00589C4A    dd          00589CD0
 00589C4A    dd          00589CDE
 00589C4A    dd          00589CEC
 00589C4A    dd          00589CFA
 00589C4A    dd          00589D08
 00589C4A    dd          00589D16
 00589C4A    dd          00589D24
 00589C4A    dd          00589D32
 00589C4A    dd          00589D40
 00589CAE    mov         dword ptr [ecx+4],1
 00589CB5    mov         eax,2
>00589CBA    jmp         00589D55
 00589CBF    mov         dword ptr [ecx+4],2
 00589CC6    mov         eax,7
>00589CCB    jmp         00589D55
 00589CD0    mov         dword ptr [ecx+4],3
 00589CD7    mov         eax,0C
>00589CDC    jmp         00589D55
 00589CDE    mov         dword ptr [ecx+4],4
 00589CE5    mov         eax,11
>00589CEA    jmp         00589D55
 00589CEC    mov         dword ptr [ecx+4],5
 00589CF3    mov         eax,16
>00589CF8    jmp         00589D55
 00589CFA    mov         dword ptr [ecx+4],6
 00589D01    mov         eax,1B
>00589D06    jmp         00589D55
 00589D08    mov         dword ptr [ecx+4],7
 00589D0F    mov         eax,20
>00589D14    jmp         00589D55
 00589D16    mov         dword ptr [ecx+4],8
 00589D1D    mov         eax,25
>00589D22    jmp         00589D55
 00589D24    mov         dword ptr [ecx+4],9
 00589D2B    mov         eax,2A
>00589D30    jmp         00589D55
 00589D32    mov         dword ptr [ecx+4],0A
 00589D39    mov         eax,2B
>00589D3E    jmp         00589D55
 00589D40    mov         dword ptr [ecx+4],0B
 00589D47    mov         eax,2C
>00589D4C    jmp         00589D55
 00589D4E    xor         eax,eax
 00589D50    mov         dword ptr [ecx+4],eax
 00589D53    xor         eax,eax
 00589D55    and         edx,7F
 00589D58    sub         edx,eax
 00589D5A    inc         edx
 00589D5B    mov         dword ptr [ecx+8],edx
 00589D5E    ret
*}
end;

//00589D60
function TUxThemeStyle.GetElementDetails(Detail:TThemedTextStyle):TThemedElementDetails;
begin
{*
 00589D60    mov         byte ptr [ecx],19
 00589D63    movzx       eax,dl
 00589D66    cmp         eax,0E
>00589D69    ja          00589E30
 00589D6F    jmp         dword ptr [eax*4+589D76]
 00589D6F    dd          00589E30
 00589D6F    dd          00589E30
 00589D6F    dd          00589DB2
 00589D6F    dd          00589DC0
 00589D6F    dd          00589DCE
 00589D6F    dd          00589DDC
 00589D6F    dd          00589DEA
 00589D6F    dd          00589DF8
 00589D6F    dd          00589DF8
 00589D6F    dd          00589DF8
 00589D6F    dd          00589DF8
 00589D6F    dd          00589E06
 00589D6F    dd          00589E14
 00589D6F    dd          00589E22
 00589D6F    dd          00589E22
 00589DB2    mov         dword ptr [ecx+4],1
 00589DB9    mov         eax,2
>00589DBE    jmp         00589E37
 00589DC0    mov         dword ptr [ecx+4],2
 00589DC7    mov         eax,3
>00589DCC    jmp         00589E37
 00589DCE    mov         dword ptr [ecx+4],3
 00589DD5    mov         eax,4
>00589DDA    jmp         00589E37
 00589DDC    mov         dword ptr [ecx+4],4
 00589DE3    mov         eax,5
>00589DE8    jmp         00589E37
 00589DEA    mov         dword ptr [ecx+4],5
 00589DF1    mov         eax,6
>00589DF6    jmp         00589E37
 00589DF8    mov         dword ptr [ecx+4],6
 00589DFF    mov         eax,7
>00589E04    jmp         00589E37
 00589E06    mov         dword ptr [ecx+4],7
 00589E0D    mov         eax,0B
>00589E12    jmp         00589E37
 00589E14    mov         dword ptr [ecx+4],8
 00589E1B    mov         eax,0C
>00589E20    jmp         00589E37
 00589E22    mov         dword ptr [ecx+4],9
 00589E29    mov         eax,0D
>00589E2E    jmp         00589E37
 00589E30    xor         eax,eax
 00589E32    mov         dword ptr [ecx+4],eax
 00589E35    xor         eax,eax
 00589E37    and         edx,7F
 00589E3A    sub         edx,eax
 00589E3C    inc         edx
 00589E3D    mov         dword ptr [ecx+8],edx
 00589E40    ret
*}
end;

//00589E44
function TUxThemeStyle.GetElementDetails(Detail:TThemedTextLabel):TThemedElementDetails;
begin
{*
 00589E44    mov         byte ptr [ecx],29
 00589E47    xor         eax,eax
 00589E49    mov         dword ptr [ecx+4],eax
 00589E4C    movzx       eax,dl
 00589E4F    mov         dword ptr [ecx+8],eax
 00589E52    ret
*}
end;

//00589E54
function TUxThemeStyle.GetElementDetails(Detail:TThemedStatus):TThemedElementDetails;
begin
{*
 00589E54    mov         byte ptr [ecx],14
 00589E57    mov         eax,edx
 00589E59    sub         al,2
>00589E5B    je          00589E67
 00589E5D    dec         al
>00589E5F    je          00589E75
 00589E61    dec         al
>00589E63    je          00589E83
>00589E65    jmp         00589E91
 00589E67    mov         dword ptr [ecx+4],1
 00589E6E    mov         eax,2
>00589E73    jmp         00589E98
 00589E75    mov         dword ptr [ecx+4],2
 00589E7C    mov         eax,3
>00589E81    jmp         00589E98
 00589E83    mov         dword ptr [ecx+4],3
 00589E8A    mov         eax,4
>00589E8F    jmp         00589E98
 00589E91    xor         eax,eax
 00589E93    mov         dword ptr [ecx+4],eax
 00589E96    xor         eax,eax
 00589E98    and         edx,7F
 00589E9B    sub         edx,eax
 00589E9D    inc         edx
 00589E9E    mov         dword ptr [ecx+8],edx
 00589EA1    ret
*}
end;

//00589EA4
function TUxThemeStyle.GetTheme(Element:TThemedElement):THandle;
begin
{*
 00589EA4    push        ebx
 00589EA5    push        esi
 00589EA6    push        edi
 00589EA7    mov         ebx,edx
 00589EA9    mov         esi,eax
 00589EAB    mov         eax,ebx
 00589EAD    sub         al,20
>00589EAF    jae         00589EDD
 00589EB1    cmp         byte ptr [esi+3A],0
>00589EB5    je          00589EDD
 00589EB7    movzx       eax,bl
 00589EBA    cmp         dword ptr [esi+eax*4+3C],0
>00589EBF    jne         00589EDD
 00589EC1    mov         edi,ebx
 00589EC3    and         edi,7F
 00589EC6    mov         eax,dword ptr [edi*4+7A19FC]
 00589ECD    push        eax
 00589ECE    push        0
 00589ED0    mov         eax,[007C44E8];^gvar_007CA4E8:Pointer
 00589ED5    mov         eax,dword ptr [eax]
 00589ED7    call        eax
 00589ED9    mov         dword ptr [esi+edi*4+3C],eax
 00589EDD    movzx       eax,bl
 00589EE0    mov         eax,dword ptr [esi+eax*4+3C]
 00589EE4    pop         edi
 00589EE5    pop         esi
 00589EE6    pop         ebx
 00589EE7    ret
*}
end;

//00589EE8
{*function sub_00589EE8:?;
begin
 00589EE8    movzx       eax,byte ptr [eax+38];TUxThemeStyle.FAvailable:Boolean
 00589EEC    ret
end;*}

//00589EF0
function TUxThemeStyle.GetEnabled:Boolean;
begin
{*
 00589EF0    cmp         byte ptr [eax+38],0
>00589EF4    je          00589F02
 00589EF6    cmp         byte ptr [eax+3A],0
>00589EFA    je          00589F02
 00589EFC    cmp         byte ptr [eax+39],0
>00589F00    jne         00589F05
 00589F02    xor         eax,eax
 00589F04    ret
 00589F05    mov         al,1
 00589F07    ret
*}
end;

//00589F08
function TUxThemeStyle.LoadFromStream(Stream:TStream):TCustomStyleServices;
begin
{*
 00589F08    push        ebp
 00589F09    mov         ebp,esp
 00589F0B    push        0
 00589F0D    push        ebx
 00589F0E    xor         eax,eax
 00589F10    push        ebp
 00589F11    push        589F53
 00589F16    push        dword ptr fs:[eax]
 00589F19    mov         dword ptr fs:[eax],esp
 00589F1C    lea         edx,[ebp-4]
 00589F1F    mov         eax,[007C4C3C];^SResString344:TResStringRec
 00589F24    call        LoadResString
 00589F29    mov         ecx,dword ptr [ebp-4]
 00589F2C    mov         dl,1
 00589F2E    mov         eax,[00585834];ECustomStyleException
 00589F33    call        Exception.Create
 00589F38    call        @RaiseExcept
 00589F3D    xor         eax,eax
 00589F3F    pop         edx
 00589F40    pop         ecx
 00589F41    pop         ecx
 00589F42    mov         dword ptr fs:[eax],edx
 00589F45    push        589F5A
 00589F4A    lea         eax,[ebp-4]
 00589F4D    call        @UStrClr
 00589F52    ret
>00589F53    jmp         @HandleFinally
>00589F58    jmp         00589F4A
 00589F5A    mov         eax,ebx
 00589F5C    pop         ebx
 00589F5D    pop         ecx
 00589F5E    pop         ebp
 00589F5F    ret
*}
end;

//00589F60
procedure TUxThemeStyle.SaveToStream(Stream:TStream);
begin
{*
 00589F60    push        ebp
 00589F61    mov         ebp,esp
 00589F63    push        0
 00589F65    xor         eax,eax
 00589F67    push        ebp
 00589F68    push        589FAA
 00589F6D    push        dword ptr fs:[eax]
 00589F70    mov         dword ptr fs:[eax],esp
 00589F73    lea         edx,[ebp-4]
 00589F76    mov         eax,[007C4C3C];^SResString344:TResStringRec
 00589F7B    call        LoadResString
 00589F80    mov         ecx,dword ptr [ebp-4]
 00589F83    mov         dl,1
 00589F85    mov         eax,[00585834];ECustomStyleException
 00589F8A    call        Exception.Create
 00589F8F    call        @RaiseExcept
 00589F94    xor         eax,eax
 00589F96    pop         edx
 00589F97    pop         ecx
 00589F98    pop         ecx
 00589F99    mov         dword ptr fs:[eax],edx
 00589F9C    push        589FB1
 00589FA1    lea         eax,[ebp-4]
 00589FA4    call        @UStrClr
 00589FA9    ret
>00589FAA    jmp         @HandleFinally
>00589FAF    jmp         00589FA1
 00589FB1    pop         ecx
 00589FB2    pop         ebp
 00589FB3    ret
*}
end;

//00589FB4
procedure sub_00589FB4;
begin
{*
 00589FB4    push        ebx
 00589FB5    push        esi
 00589FB6    push        edi
 00589FB7    mov         esi,eax
 00589FB9    xor         ebx,ebx
 00589FBB    mov         edi,ebx
 00589FBD    and         edi,7F
 00589FC0    mov         eax,dword ptr [esi+edi*4+3C]
 00589FC4    test        eax,eax
>00589FC6    je          00589FD8
 00589FC8    push        eax
 00589FC9    mov         eax,[007C4820];^gvar_007CA4EC:Pointer
 00589FCE    mov         eax,dword ptr [eax]
 00589FD0    call        eax
 00589FD2    xor         eax,eax
 00589FD4    mov         dword ptr [esi+edi*4+3C],eax
 00589FD8    inc         ebx
 00589FD9    cmp         bl,2D
>00589FDC    jne         00589FBB
 00589FDE    pop         edi
 00589FDF    pop         esi
 00589FE0    pop         ebx
 00589FE1    ret
*}
end;

//00589FE4
procedure TUxThemeStyle.UpdateThemes;
begin
{*
 00589FE4    push        ebx
 00589FE5    mov         ebx,eax
 00589FE7    cmp         byte ptr [ebx+3A],0
>00589FEB    je          00589FF4
 00589FED    mov         eax,ebx
 00589FEF    mov         edx,dword ptr [eax]
 00589FF1    call        dword ptr [edx+58]
 00589FF4    call        UseThemes
 00589FF9    mov         byte ptr [ebx+3A],al
 00589FFC    pop         ebx
 00589FFD    ret
*}
end;

//0058A000
procedure TStyleManager.CreateStyleEngine;
begin
{*
 0058A000    push        ebx
 0058A001    push        ecx
 0058A002    cmp         dword ptr ds:[7CA748],0
>0058A009    je          0058A038
 0058A00B    mov         dl,1
 0058A00D    mov         eax,[007CA748]
 0058A012    call        TObject.Create
 0058A017    mov         ebx,eax
 0058A019    mov         dword ptr [esp],7CA744
 0058A020    push        0
 0058A022    push        ebx
 0058A023    mov         eax,dword ptr [esp+8]
 0058A027    push        eax
 0058A028    call        kernel32.InterlockedCompareExchange
 0058A02D    test        eax,eax
>0058A02F    je          0058A038
 0058A031    mov         eax,ebx
 0058A033    call        TObject.Free
 0058A038    pop         edx
 0058A039    pop         ebx
 0058A03A    ret
*}
end;

//0058B3E0
function TStyleManager.GetEngine:TCustomStyleEngine;
begin
{*
 0058B3E0    cmp         dword ptr ds:[7CA744],0
>0058B3E7    jne         0058B3F3
 0058B3E9    mov         eax,[00573D6C];TStyleManager
 0058B3EE    call        TStyleManager.CreateStyleEngine
 0058B3F3    mov         eax,[007CA744]
 0058B3F8    ret
*}
end;

//0058B3FC
function TStyleManager.GetSystemStyle:TCustomStyleServices;
begin
{*
 0058B3FC    cmp         dword ptr ds:[7CA760],0
>0058B403    jne         0058B426
 0058B405    mov         dl,1
 0058B407    mov         eax,[00571670];TUxThemeStyle
 0058B40C    call        TUxThemeStyle.Create
 0058B411    mov         [007CA760],eax
 0058B416    mov         edx,dword ptr ds:[7CA760]
 0058B41C    mov         eax,[00573D6C];TStyleManager
 0058B421    call        TStyleManager.RegisterStyle
 0058B426    mov         eax,[007CA760]
 0058B42B    ret
*}
end;

//0058B42C
function TStyleManager.GetActiveStyle:TCustomStyleServices;
begin
{*
 0058B42C    cmp         dword ptr ds:[7CA73C],0
>0058B433    jne         0058B43F
 0058B435    call        TStyleManager.GetSystemStyle
 0058B43A    mov         [007CA73C],eax
 0058B43F    mov         eax,[007CA73C]
 0058B444    ret
*}
end;

//0058B448
function TStyleManager.GetIsCustomStyleActive:Boolean;
begin
{*
 0058B448    call        TStyleManager.GetActiveStyle
 0058B44D    mov         edx,dword ptr [eax]
 0058B44F    call        dword ptr [edx+4C]
 0058B452    test        al,al
>0058B454    je          0058B463
 0058B456    mov         eax,[007CA73C]
 0058B45B    cmp         eax,dword ptr ds:[7CA760]
>0058B461    jne         0058B466
 0058B463    xor         eax,eax
 0058B465    ret
 0058B466    mov         al,1
 0058B468    ret
*}
end;

//0058B46C
function TStyleManager.HandleMessage(Control:TWinControl; var Message:TMessage; DefWndProc:TWndMethod):Boolean;
begin
{*
 0058B46C    push        ebp
 0058B46D    mov         ebp,esp
 0058B46F    push        ebx
 0058B470    push        esi
 0058B471    push        edi
 0058B472    mov         edi,ecx
 0058B474    mov         esi,edx
 0058B476    xor         ebx,ebx
 0058B478    test        byte ptr ds:[7CA74C],1;gvar_007CA74C
>0058B47F    je          0058B4C4
 0058B481    cmp         dword ptr ds:[7CA744],0
>0058B488    jne         0058B4AF
 0058B48A    call        TStyleManager.CreateStyleEngine
 0058B48F    call        TStyleManager.GetEngine
 0058B494    test        eax,eax
>0058B496    je          0058B4C4
 0058B498    push        dword ptr [ebp+0C]
 0058B49B    push        dword ptr [ebp+8]
 0058B49E    mov         ecx,edi
 0058B4A0    mov         eax,[007CA744]
 0058B4A5    mov         eax,dword ptr [eax]
 0058B4A7    mov         edx,esi
 0058B4A9    call        dword ptr [eax]
 0058B4AB    mov         ebx,eax
>0058B4AD    jmp         0058B4C4
 0058B4AF    push        dword ptr [ebp+0C]
 0058B4B2    push        dword ptr [ebp+8]
 0058B4B5    mov         ecx,edi
 0058B4B7    mov         eax,[007CA744]
 0058B4BC    mov         eax,dword ptr [eax]
 0058B4BE    mov         edx,esi
 0058B4C0    call        dword ptr [eax]
 0058B4C2    mov         ebx,eax
 0058B4C4    mov         eax,ebx
 0058B4C6    pop         edi
 0058B4C7    pop         esi
 0058B4C8    pop         ebx
 0058B4C9    pop         ebp
 0058B4CA    ret         8
*}
end;

//0058B4D0
procedure TStyleManager.Initialize;
begin
{*
 0058B4D0    movzx       eax,byte ptr ds:[58B558]
 0058B4D7    mov         [007CA74C],al;gvar_007CA74C
 0058B4DC    mov         byte ptr ds:[7CA740],1
 0058B4E3    mov         byte ptr ds:[7CA74D],0
 0058B4EA    cmp         dword ptr ds:[7CA750],0
>0058B4F1    jne         0058B506
 0058B4F3    xor         ecx,ecx
 0058B4F5    mov         dl,1
 0058B4F7    mov         eax,[0058120C];TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>
 0058B4FC    call        TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.Create
 0058B501    mov         [007CA750],eax
 0058B506    cmp         dword ptr ds:[7CA754],0
>0058B50D    jne         0058B520
 0058B50F    mov         dl,1
 0058B511    mov         eax,[005821EC];TList<Vcl.Themes.TStyleManager.TStyleClassDescriptor>
 0058B516    call        TList<Vcl.Themes.TStyleManager.TStyleClassDescriptor>.Create
 0058B51B    mov         [007CA754],eax
 0058B520    cmp         dword ptr ds:[7CA75C],0
>0058B527    jne         0058B53A
 0058B529    mov         dl,1
 0058B52B    mov         eax,[00584AB0];TList<Vcl.Themes.TCustomStyleServices>
 0058B530    call        TList<Vcl.Themes.TCustomStyleServices>.Create
 0058B535    mov         [007CA75C],eax
 0058B53A    cmp         dword ptr ds:[7CA758],0
>0058B541    jne         0058B554
 0058B543    mov         dl,1
 0058B545    mov         eax,[00583688];TList<Vcl.Themes.TCustomStyleEngineClass>
 0058B54A    call        TList<Vcl.Themes.TCustomStyleEngineClass>.Create
 0058B54F    mov         [007CA758],eax
 0058B554    ret
*}
end;

//0058B55C
procedure TStyleManager.Notification(Operation:TCustomStyleEngine.TStyleEngineNotification; Data:Pointer);
begin
{*
 0058B55C    cmp         dword ptr ds:[7CA744],0
>0058B563    je          0058B56F
 0058B565    mov         eax,[007CA744]
 0058B56A    mov         eax,dword ptr [eax]
 0058B56C    call        dword ptr [eax+4]
 0058B56F    ret
*}
end;

//0058B570
procedure TStyleManager.RegisterStyle(Style:TCustomStyleServices);
begin
{*
 0058B570    push        ebp
 0058B571    mov         ebp,esp
 0058B573    add         esp,0FFFFFFE8
 0058B576    push        ebx
 0058B577    push        esi
 0058B578    xor         ecx,ecx
 0058B57A    mov         dword ptr [ebp-18],ecx
 0058B57D    mov         ebx,edx
 0058B57F    xor         eax,eax
 0058B581    push        ebp
 0058B582    push        58B607
 0058B587    push        dword ptr fs:[eax]
 0058B58A    mov         dword ptr fs:[eax],esp
 0058B58D    mov         esi,ebx
 0058B58F    mov         dword ptr [ebp-4],esi
 0058B592    mov         eax,[007CA75C]
 0058B597    add         eax,8
 0058B59A    mov         dword ptr [ebp-8],eax
 0058B59D    lea         edx,[ebp-4]
 0058B5A0    mov         eax,dword ptr [ebp-8]
 0058B5A3    call        00434714
 0058B5A8    inc         eax
>0058B5A9    jne         0058B5C0
 0058B5AB    mov         dword ptr [ebp-0C],esi
 0058B5AE    lea         edx,[ebp-0C]
 0058B5B1    mov         eax,[007CA75C]
 0058B5B6    add         eax,8
 0058B5B9    call        0043489C
>0058B5BE    jmp         0058B5F1
 0058B5C0    lea         edx,[ebp-18]
 0058B5C3    mov         eax,ebx
 0058B5C5    mov         ecx,dword ptr [eax]
 0058B5C7    call        dword ptr [ecx+50]
 0058B5CA    mov         eax,dword ptr [ebp-18]
 0058B5CD    mov         dword ptr [ebp-14],eax
 0058B5D0    mov         byte ptr [ebp-10],11
 0058B5D4    lea         eax,[ebp-14]
 0058B5D7    push        eax
 0058B5D8    push        0
 0058B5DA    mov         ecx,dword ptr ds:[7C44C0];^SResString340:TResStringRec
 0058B5E0    mov         dl,1
 0058B5E2    mov         eax,[005858E8];EDuplicateStyleException
 0058B5E7    call        Exception.CreateResFmt
 0058B5EC    call        @RaiseExcept
 0058B5F1    xor         eax,eax
 0058B5F3    pop         edx
 0058B5F4    pop         ecx
 0058B5F5    pop         ecx
 0058B5F6    mov         dword ptr fs:[eax],edx
 0058B5F9    push        58B60E
 0058B5FE    lea         eax,[ebp-18]
 0058B601    call        @UStrClr
 0058B606    ret
>0058B607    jmp         @HandleFinally
>0058B60C    jmp         0058B5FE
 0058B60E    pop         esi
 0058B60F    pop         ebx
 0058B610    mov         esp,ebp
 0058B612    pop         ebp
 0058B613    ret
*}
end;

//0058B614
procedure TStyleManager.UnInitialize;
begin
{*
 0058B614    push        ebp
 0058B615    mov         ebp,esp
 0058B617    add         esp,0FFFFFFEC
 0058B61A    push        ebx
 0058B61B    lea         eax,[ebp-0C]
 0058B61E    mov         edx,dword ptr ds:[57FDA8];TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>
 0058B624    call        @AddRefRecord
 0058B629    xor         eax,eax
 0058B62B    push        ebp
 0058B62C    push        58B795
 0058B631    push        dword ptr fs:[eax]
 0058B634    mov         dword ptr fs:[eax],esp
 0058B637    movzx       eax,byte ptr ds:[58B7A4]
 0058B63E    mov         [007CA74C],al;gvar_007CA74C
 0058B643    xor         eax,eax
 0058B645    mov         [007CA73C],eax
 0058B64A    xor         eax,eax
 0058B64C    mov         [007CA760],eax
 0058B651    mov         eax,[007CA750]
 0058B656    call        TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.GetEnumerator
 0058B65B    mov         dword ptr [ebp-10],eax
 0058B65E    xor         eax,eax
 0058B660    push        ebp
 0058B661    push        58B6B1
 0058B666    push        dword ptr fs:[eax]
 0058B669    mov         dword ptr fs:[eax],esp
>0058B66C    jmp         0058B687
 0058B66E    lea         edx,[ebp-0C]
 0058B671    mov         eax,dword ptr [ebp-10]
 0058B674    call        00593770
 0058B679    cmp         dword ptr [ebp-8],0
>0058B67D    je          0058B687
 0058B67F    mov         eax,dword ptr [ebp-8]
 0058B682    call        TObject.Free
 0058B687    mov         eax,dword ptr [ebp-10]
 0058B68A    call        TDictionary<System.string,Vcl.Themes.TStyleManager.TSourceInfo>.TPairEnumerator.MoveNext
 0058B68F    test        al,al
>0058B691    jne         0058B66E
 0058B693    xor         eax,eax
 0058B695    pop         edx
 0058B696    pop         ecx
 0058B697    pop         ecx
 0058B698    mov         dword ptr fs:[eax],edx
 0058B69B    push        58B6B8
 0058B6A0    cmp         dword ptr [ebp-10],0
>0058B6A4    je          0058B6B0
 0058B6A6    mov         dl,1
 0058B6A8    mov         eax,dword ptr [ebp-10]
 0058B6AB    mov         ecx,dword ptr [eax]
 0058B6AD    call        dword ptr [ecx-4]
 0058B6B0    ret
>0058B6B1    jmp         @HandleFinally
>0058B6B6    jmp         0058B6A0
 0058B6B8    mov         eax,[007CA750]
 0058B6BD    xor         edx,edx
 0058B6BF    mov         dword ptr ds:[7CA750],edx
 0058B6C5    call        TObject.Free
 0058B6CA    mov         eax,[007CA754]
 0058B6CF    xor         edx,edx
 0058B6D1    mov         dword ptr ds:[7CA754],edx
 0058B6D7    call        TObject.Free
 0058B6DC    mov         ecx,dword ptr ds:[7CA75C]
 0058B6E2    mov         dl,1
 0058B6E4    mov         eax,[005848EC];TList<Vcl.Themes.TCustomStyleServices>.TEnumerator
 0058B6E9    call        0059445C
 0058B6EE    mov         dword ptr [ebp-14],eax
 0058B6F1    xor         eax,eax
 0058B6F3    push        ebp
 0058B6F4    push        58B73C
 0058B6F9    push        dword ptr fs:[eax]
 0058B6FC    mov         dword ptr fs:[eax],esp
>0058B6FF    jmp         0058B712
 0058B701    mov         eax,dword ptr [ebp-14]
 0058B704    call        00594430
 0058B709    mov         ebx,eax
 0058B70B    mov         eax,ebx
 0058B70D    call        TObject.Free
 0058B712    mov         eax,dword ptr [ebp-14]
 0058B715    call        TList<Vcl.Themes.TCustomStyleServices>.TEnumerator.MoveNext
 0058B71A    test        al,al
>0058B71C    jne         0058B701
 0058B71E    xor         eax,eax
 0058B720    pop         edx
 0058B721    pop         ecx
 0058B722    pop         ecx
 0058B723    mov         dword ptr fs:[eax],edx
 0058B726    push        58B743
 0058B72B    cmp         dword ptr [ebp-14],0
>0058B72F    je          0058B73B
 0058B731    mov         dl,1
 0058B733    mov         eax,dword ptr [ebp-14]
 0058B736    mov         ecx,dword ptr [eax]
 0058B738    call        dword ptr [ecx-4]
 0058B73B    ret
>0058B73C    jmp         @HandleFinally
>0058B741    jmp         0058B72B
 0058B743    mov         eax,[007CA758]
 0058B748    xor         edx,edx
 0058B74A    mov         dword ptr ds:[7CA758],edx
 0058B750    call        TObject.Free
 0058B755    mov         eax,[007CA75C]
 0058B75A    xor         edx,edx
 0058B75C    mov         dword ptr ds:[7CA75C],edx
 0058B762    call        TObject.Free
 0058B767    mov         eax,[007CA744]
 0058B76C    xor         edx,edx
 0058B76E    mov         dword ptr ds:[7CA744],edx
 0058B774    call        TObject.Free
 0058B779    xor         eax,eax
 0058B77B    pop         edx
 0058B77C    pop         ecx
 0058B77D    pop         ecx
 0058B77E    mov         dword ptr fs:[eax],edx
 0058B781    push        58B79C
 0058B786    lea         eax,[ebp-0C]
 0058B789    mov         edx,dword ptr ds:[57FDA8];TPair<System.string,Vcl.Themes.TStyleManager.TSourceInfo>
 0058B78F    call        @FinalizeRecord
 0058B794    ret
>0058B795    jmp         @HandleFinally
>0058B79A    jmp         0058B786
 0058B79C    pop         ebx
 0058B79D    mov         esp,ebp
 0058B79F    pop         ebp
 0058B7A0    ret
*}
end;

//0058B7A8
function TCustomElementServices.DrawEdge(Style:TCustomStyleServices; DC:HDC; ContentRect:PRect; Flags:TElementEdgeFlags; Edges:TElementEdges; R:TRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058B7A8    push        ebp
 0058B7A9    mov         ebp,esp
 0058B7AB    xor         eax,eax
 0058B7AD    pop         ebp
 0058B7AE    ret         18
*}
end;

//0058B7B4
function TCustomElementServices.DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058B7B4    push        ebp
 0058B7B5    mov         ebp,esp
 0058B7B7    xor         eax,eax
 0058B7B9    pop         ebp
 0058B7BA    ret         10
*}
end;

//0058B7C0
function TCustomElementServices.DrawIcon(Style:TCustomStyleServices; DC:HDC; Index:Integer; himl:NativeUInt; R:TRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058B7C0    push        ebp
 0058B7C1    mov         ebp,esp
 0058B7C3    xor         eax,eax
 0058B7C5    pop         ebp
 0058B7C6    ret         14
*}
end;

//0058B7CC
function TCustomElementServices.DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean;
begin
{*
 0058B7CC    push        ebp
 0058B7CD    mov         ebp,esp
 0058B7CF    add         esp,0FFFFFFE0
 0058B7D2    push        esi
 0058B7D3    push        edi
 0058B7D4    mov         esi,dword ptr [ebp+8]
 0058B7D7    lea         edi,[ebp-20]
 0058B7DA    push        ecx
 0058B7DB    mov         ecx,8
 0058B7E0    rep movs    dword ptr [edi],dword ptr [esi]
 0058B7E2    pop         ecx
 0058B7E3    xor         eax,eax
 0058B7E5    pop         edi
 0058B7E6    pop         esi
 0058B7E7    mov         esp,ebp
 0058B7E9    pop         ebp
 0058B7EA    ret         18
*}
end;

//0058B7F0
function TCustomElementServices.GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;
begin
{*
 0058B7F0    push        ebp
 0058B7F1    mov         ebp,esp
 0058B7F3    xor         eax,eax
 0058B7F5    pop         ebp
 0058B7F6    ret         0C
*}
end;

//0058B7FC
function TCustomElementServices.GetElementContentRect(Style:TCustomStyleServices; DC:HDC; ContentRect:TRect; BoundingRect:TRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058B7FC    push        ebp
 0058B7FD    mov         ebp,esp
 0058B7FF    xor         eax,eax
 0058B801    pop         ebp
 0058B802    ret         10
*}
end;

//0058B808
function TCustomElementServices.GetElementMargins(Style:TCustomStyleServices; DC:HDC; ElementMargins:_MARGINS; Margin:TElementMargin; Rect:PRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058B808    push        ebp
 0058B809    mov         ebp,esp
 0058B80B    xor         eax,eax
 0058B80D    pop         ebp
 0058B80E    ret         14
*}
end;

//0058B814
function TCustomElementServices.GetElementRegion(Style:TCustomStyleServices; DC:HDC; Region:HRGN; Rect:TRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058B814    push        ebp
 0058B815    mov         ebp,esp
 0058B817    xor         eax,eax
 0058B819    pop         ebp
 0058B81A    ret         10
*}
end;

//0058B820
function TCustomElementServices.GetElementSize(Style:TCustomStyleServices; DC:HDC; Size:TSize; ElementSize:TElementSize; Rect:PRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058B820    push        ebp
 0058B821    mov         ebp,esp
 0058B823    xor         eax,eax
 0058B825    pop         ebp
 0058B826    ret         14
*}
end;

//0058B82C
function TCustomElementServices.GetTextExtent(Style:TCustomStyleServices; DC:HDC; ExtentRect:TRect; BoundingRect:PRect; Flags:TTextFormat; Text:string; State:Integer; Part:Integer):Boolean;
begin
{*
 0058B82C    push        ebp
 0058B82D    mov         ebp,esp
 0058B82F    xor         eax,eax
 0058B831    pop         ebp
 0058B832    ret         18
*}
end;

//0058B838
function TCustomElementServices.HasTransparentParts(Style:TCustomStyleServices; Part:Integer; State:Integer):Boolean;
begin
{*
 0058B838    push        ebp
 0058B839    mov         ebp,esp
 0058B83B    xor         eax,eax
 0058B83D    pop         ebp
 0058B83E    ret         4
*}
end;

//0058B844
function TUxThemeGridElements.DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058B844    push        ebp
 0058B845    mov         ebp,esp
 0058B847    add         esp,0FFFFFFD4
 0058B84A    push        ebx
 0058B84B    push        esi
 0058B84C    push        edi
 0058B84D    mov         dword ptr [ebp-4],ecx
 0058B850    mov         ebx,edx
 0058B852    mov         eax,dword ptr [ebp+10]
 0058B855    mov         edx,eax
 0058B857    mov         ecx,edx
 0058B859    add         cl,0FD
 0058B85C    sub         cl,4
>0058B85F    jb          0058B884
 0058B861    sub         cl,3
>0058B864    jb          0058B935
 0058B86A    add         cl,0F0
 0058B86D    sub         cl,4
>0058B870    jb          0058B9BC
 0058B876    sub         cl,3
>0058B879    jb          0058BA1C
>0058B87F    jmp         0058BA70
 0058B884    sub         dl,3
>0058B887    je          0058B897
 0058B889    dec         dl
>0058B88B    je          0058B8A5
 0058B88D    dec         dl
>0058B88F    je          0058B8C8
 0058B891    dec         dl
>0058B893    je          0058B8EB
>0058B895    jmp         0058B90C
 0058B897    mov         eax,dword ptr [ebp+0C]
 0058B89A    mov         esi,eax
 0058B89C    lea         edi,[ebp-14]
 0058B89F    movs        dword ptr [edi],dword ptr [esi]
 0058B8A0    movs        dword ptr [edi],dword ptr [esi]
 0058B8A1    movs        dword ptr [edi],dword ptr [esi]
 0058B8A2    movs        dword ptr [edi],dword ptr [esi]
>0058B8A3    jmp         0058B90C
 0058B8A5    mov         eax,dword ptr [ebp+0C]
 0058B8A8    mov         eax,dword ptr [eax+8];TRect.Right:LongInt
 0058B8AB    push        eax
 0058B8AC    mov         eax,dword ptr [ebp+0C]
 0058B8AF    mov         eax,dword ptr [eax+0C]
 0058B8B2    push        eax
 0058B8B3    mov         ecx,dword ptr [ebp+0C]
 0058B8B6    mov         ecx,dword ptr [ecx+4];TRect.Top:LongInt
 0058B8B9    mov         edx,dword ptr [ebp+0C]
 0058B8BC    mov         edx,dword ptr [edx]
 0058B8BE    lea         eax,[ebp-14]
 0058B8C1    call        TRect.Create
>0058B8C6    jmp         0058B90C
 0058B8C8    mov         eax,dword ptr [ebp+0C]
 0058B8CB    mov         eax,dword ptr [eax+8];TRect.Right:LongInt
 0058B8CE    push        eax
 0058B8CF    mov         eax,dword ptr [ebp+0C]
 0058B8D2    mov         eax,dword ptr [eax+0C]
 0058B8D5    push        eax
 0058B8D6    mov         ecx,dword ptr [ebp+0C]
 0058B8D9    mov         ecx,dword ptr [ecx+4];TRect.Top:LongInt
 0058B8DC    mov         edx,dword ptr [ebp+0C]
 0058B8DF    mov         edx,dword ptr [edx]
 0058B8E1    lea         eax,[ebp-14]
 0058B8E4    call        TRect.Create
>0058B8E9    jmp         0058B90C
 0058B8EB    mov         eax,dword ptr [ebp+0C]
 0058B8EE    mov         eax,dword ptr [eax+8];TRect.Right:LongInt
 0058B8F1    push        eax
 0058B8F2    mov         eax,dword ptr [ebp+0C]
 0058B8F5    mov         eax,dword ptr [eax+0C]
 0058B8F8    push        eax
 0058B8F9    lea         eax,[ebp-14]
 0058B8FC    mov         ecx,dword ptr [ebp+0C]
 0058B8FF    mov         ecx,dword ptr [ecx+4];TRect.Top:LongInt
 0058B902    mov         edx,dword ptr [ebp+0C]
 0058B905    mov         edx,dword ptr [edx]
 0058B907    call        TRect.Create
 0058B90C    lea         eax,[ebp-14]
 0058B90F    push        eax
 0058B910    mov         eax,dword ptr [ebp+8]
 0058B913    push        eax
 0058B914    lea         ecx,[ebp-2C]
 0058B917    mov         dl,1D
 0058B919    mov         eax,ebx
 0058B91B    mov         esi,dword ptr [eax]
 0058B91D    call        dword ptr [esi+0A4];TCustomStyleServices.GetElementDetails
 0058B923    lea         ecx,[ebp-2C]
 0058B926    mov         edx,dword ptr [ebp-4]
 0058B929    mov         eax,ebx
 0058B92B    call        TCustomStyleServices.DrawElement
>0058B930    jmp         0058BA72
 0058B935    sub         dl,7
>0058B938    je          0058B944
 0058B93A    dec         dl
>0058B93C    je          0058B955
 0058B93E    dec         dl
>0058B940    je          0058B966
>0058B942    jmp         0058B975
 0058B944    lea         ecx,[ebp-20]
 0058B947    mov         dl,2
 0058B949    mov         eax,ebx
 0058B94B    mov         esi,dword ptr [eax]
 0058B94D    call        dword ptr [esi+94];TCustomStyleServices.GetElementDetails
>0058B953    jmp         0058B975
 0058B955    lea         ecx,[ebp-20]
 0058B958    mov         dl,3
 0058B95A    mov         eax,ebx
 0058B95C    mov         esi,dword ptr [eax]
 0058B95E    call        dword ptr [esi+94];TCustomStyleServices.GetElementDetails
>0058B964    jmp         0058B975
 0058B966    lea         ecx,[ebp-20]
 0058B969    mov         dl,4
 0058B96B    mov         eax,ebx
 0058B96D    mov         esi,dword ptr [eax]
 0058B96F    call        dword ptr [esi+94];TCustomStyleServices.GetElementDetails
 0058B975    mov         eax,dword ptr [ebp+0C]
 0058B978    mov         esi,eax
 0058B97A    lea         edi,[ebp-14]
 0058B97D    movs        dword ptr [edi],dword ptr [esi]
 0058B97E    movs        dword ptr [edi],dword ptr [esi]
 0058B97F    movs        dword ptr [edi],dword ptr [esi]
 0058B980    movs        dword ptr [edi],dword ptr [esi]
 0058B981    mov         eax,[007C4364];^gvar_007C7DC0
 0058B986    cmp         dword ptr [eax],6
 0058B989    setge       al
 0058B98C    test        al,al
>0058B98E    je          0058B9A2
 0058B990    lea         eax,[ebp-14]
 0058B993    mov         ecx,1
 0058B998    mov         edx,1
 0058B99D    call        InflateRect
 0058B9A2    mov         eax,dword ptr [ebp+0C]
 0058B9A5    push        eax
 0058B9A6    mov         eax,dword ptr [ebp+8]
 0058B9A9    push        eax
 0058B9AA    lea         ecx,[ebp-20]
 0058B9AD    mov         edx,dword ptr [ebp-4]
 0058B9B0    mov         eax,ebx
 0058B9B2    call        TCustomStyleServices.DrawElement
>0058B9B7    jmp         0058BA72
 0058B9BC    sub         dl,1A
>0058B9BF    je          0058B9CF
 0058B9C1    dec         dl
>0058B9C3    je          0058B9DD
 0058B9C5    dec         dl
>0058B9C7    je          0058B9EB
 0058B9C9    dec         dl
>0058B9CB    je          0058B9F9
>0058B9CD    jmp         0058BA05
 0058B9CF    lea         ecx,[ebp-20]
 0058B9D2    mov         dl,2
 0058B9D4    mov         eax,ebx
 0058B9D6    mov         esi,dword ptr [eax]
 0058B9D8    call        dword ptr [esi+70];TCustomStyleServices.GetElementDetails
>0058B9DB    jmp         0058BA05
 0058B9DD    lea         ecx,[ebp-20]
 0058B9E0    mov         dl,3
 0058B9E2    mov         eax,ebx
 0058B9E4    mov         esi,dword ptr [eax]
 0058B9E6    call        dword ptr [esi+70];TCustomStyleServices.GetElementDetails
>0058B9E9    jmp         0058BA05
 0058B9EB    lea         ecx,[ebp-20]
 0058B9EE    mov         dl,4
 0058B9F0    mov         eax,ebx
 0058B9F2    mov         esi,dword ptr [eax]
 0058B9F4    call        dword ptr [esi+70];TCustomStyleServices.GetElementDetails
>0058B9F7    jmp         0058BA05
 0058B9F9    lea         ecx,[ebp-20]
 0058B9FC    mov         dl,5
 0058B9FE    mov         eax,ebx
 0058BA00    mov         esi,dword ptr [eax]
 0058BA02    call        dword ptr [esi+70];TCustomStyleServices.GetElementDetails
 0058BA05    mov         eax,dword ptr [ebp+0C]
 0058BA08    push        eax
 0058BA09    mov         eax,dword ptr [ebp+8]
 0058BA0C    push        eax
 0058BA0D    lea         ecx,[ebp-20]
 0058BA10    mov         edx,dword ptr [ebp-4]
 0058BA13    mov         eax,ebx
 0058BA15    call        TCustomStyleServices.DrawElement
>0058BA1A    jmp         0058BA72
 0058BA1C    sub         dl,1E
>0058BA1F    je          0058BA2B
 0058BA21    dec         dl
>0058BA23    je          0058BA47
 0058BA25    dec         dl
>0058BA27    je          0058BA39
>0058BA29    jmp         0058BA55
 0058BA2B    lea         ecx,[ebp-20]
 0058BA2E    mov         dl,2
 0058BA30    mov         eax,ebx
 0058BA32    mov         esi,dword ptr [eax]
 0058BA34    call        dword ptr [esi+5C];TCustomStyleServices.GetElementDetails
>0058BA37    jmp         0058BA59
 0058BA39    lea         ecx,[ebp-20]
 0058BA3C    mov         dl,4
 0058BA3E    mov         eax,ebx
 0058BA40    mov         esi,dword ptr [eax]
 0058BA42    call        dword ptr [esi+5C];TCustomStyleServices.GetElementDetails
>0058BA45    jmp         0058BA59
 0058BA47    lea         ecx,[ebp-20]
 0058BA4A    mov         dl,3
 0058BA4C    mov         eax,ebx
 0058BA4E    mov         esi,dword ptr [eax]
 0058BA50    call        dword ptr [esi+5C];TCustomStyleServices.GetElementDetails
>0058BA53    jmp         0058BA59
 0058BA55    xor         eax,eax
>0058BA57    jmp         0058BA72
 0058BA59    mov         eax,dword ptr [ebp+0C]
 0058BA5C    push        eax
 0058BA5D    mov         eax,dword ptr [ebp+8]
 0058BA60    push        eax
 0058BA61    lea         ecx,[ebp-20]
 0058BA64    mov         edx,dword ptr [ebp-4]
 0058BA67    mov         eax,ebx
 0058BA69    call        TCustomStyleServices.DrawElement
>0058BA6E    jmp         0058BA72
 0058BA70    xor         eax,eax
 0058BA72    pop         edi
 0058BA73    pop         esi
 0058BA74    pop         ebx
 0058BA75    mov         esp,ebp
 0058BA77    pop         ebp
 0058BA78    ret         10
*}
end;

//0058BA7C
function TUxThemeGridElements.DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean;
begin
{*
 0058BA7C    push        ebp
 0058BA7D    mov         ebp,esp
 0058BA7F    add         esp,0FFFFFFD4
 0058BA82    push        ebx
 0058BA83    push        esi
 0058BA84    push        edi
 0058BA85    mov         esi,dword ptr [ebp+8]
 0058BA88    lea         edi,[ebp-20]
 0058BA8B    push        ecx
 0058BA8C    mov         ecx,8
 0058BA91    rep movs    dword ptr [edi],dword ptr [esi]
 0058BA93    pop         ecx
 0058BA94    mov         esi,ecx
 0058BA96    mov         ebx,edx
 0058BA98    movzx       eax,byte ptr [ebp+18]
 0058BA9C    add         al,0FE
 0058BA9E    sub         al,2
>0058BAA0    jb          0058BAB4
 0058BAA2    add         al,0FD
 0058BAA4    sub         al,5
>0058BAA6    jb          0058BAB4
 0058BAA8    add         al,0FD
 0058BAAA    sub         al,5
>0058BAAC    jb          0058BAB4
 0058BAAE    add         al,0FD
 0058BAB0    sub         al,3
>0058BAB2    jae         0058BAE1
 0058BAB4    mov         eax,dword ptr [ebp+14]
 0058BAB7    push        eax
 0058BAB8    mov         eax,dword ptr [ebp+10]
 0058BABB    push        eax
 0058BABC    mov         eax,dword ptr [ebp+0C]
 0058BABF    push        eax
 0058BAC0    lea         eax,[ebp-20]
 0058BAC3    push        eax
 0058BAC4    lea         ecx,[ebp-2C]
 0058BAC7    mov         dl,2
 0058BAC9    mov         eax,ebx
 0058BACB    mov         edi,dword ptr [eax]
 0058BACD    call        dword ptr [edi+94];TCustomStyleServices.GetElementDetails
 0058BAD3    lea         ecx,[ebp-2C]
 0058BAD6    mov         edx,esi
 0058BAD8    mov         eax,ebx
 0058BADA    call        TCustomStyleServices.DrawText
>0058BADF    jmp         0058BAE3
 0058BAE1    xor         eax,eax
 0058BAE3    pop         edi
 0058BAE4    pop         esi
 0058BAE5    pop         ebx
 0058BAE6    mov         esp,ebp
 0058BAE8    pop         ebp
 0058BAE9    ret         18
*}
end;

//0058BAEC
function TUxThemeGridElements.GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;
begin
{*
 0058BAEC    push        ebp
 0058BAED    mov         ebp,esp
 0058BAEF    add         esp,0FFFFFFF4
 0058BAF2    push        ebx
 0058BAF3    push        esi
 0058BAF4    mov         ebx,edx
 0058BAF6    mov         al,1
 0058BAF8    movzx       edx,byte ptr [ebp+10]
 0058BAFC    cmp         edx,19
>0058BAFF    ja          0058BF18
 0058BB05    jmp         dword ptr [edx*4+58BB0C]
 0058BB05    dd          0058BF18
 0058BB05    dd          0058BF18
 0058BB05    dd          0058BB74
 0058BB05    dd          0058BBEA
 0058BB05    dd          0058BBEA
 0058BB05    dd          0058BBEA
 0058BB05    dd          0058BBEA
 0058BB05    dd          0058BC1D
 0058BB05    dd          0058BCA9
 0058BB05    dd          0058BCA9
 0058BB05    dd          0058BCC4
 0058BB05    dd          0058BD06
 0058BB05    dd          0058BD06
 0058BB05    dd          0058BD06
 0058BB05    dd          0058BD06
 0058BB05    dd          0058BD4B
 0058BB05    dd          0058BDA2
 0058BB05    dd          0058BDF9
 0058BB05    dd          0058BE50
 0058BB05    dd          0058BE92
 0058BB05    dd          0058BE92
 0058BB05    dd          0058BE92
 0058BB05    dd          0058BE92
 0058BB05    dd          0058BEBA
 0058BB05    dd          0058BEF0
 0058BB05    dd          0058BEF0
 0058BB74    movzx       edx,byte ptr [ebp+0C]
 0058BB78    sub         dl,1
>0058BB7B    jb          0058BB85
>0058BB7D    je          0058BBB1
 0058BB7F    dec         dl
>0058BB81    je          0058BBD5
>0058BB83    jmp         0058BBE3
 0058BB85    mov         edx,dword ptr ds:[7C4364];^gvar_007C7DC0
 0058BB8B    cmp         dword ptr [edx],6
 0058BB8E    setge       dl
 0058BB91    test        dl,dl
>0058BB93    je          0058BBA3
 0058BB95    mov         edx,dword ptr [ebp+8]
 0058BB98    mov         dword ptr [edx],0F0F0F0
>0058BB9E    jmp         0058BF1A
 0058BBA3    mov         edx,dword ptr [ebp+8]
 0058BBA6    mov         dword ptr [edx],0D8E9EC
>0058BBAC    jmp         0058BF1A
 0058BBB1    mov         eax,dword ptr [ebp+8]
 0058BBB4    push        eax
 0058BBB5    lea         ecx,[ebp-0C]
 0058BBB8    mov         dl,2
 0058BBBA    mov         eax,ebx
 0058BBBC    mov         esi,dword ptr [eax]
 0058BBBE    call        dword ptr [esi+0A0];TCustomStyleServices.GetElementDetails
 0058BBC4    lea         edx,[ebp-0C]
 0058BBC7    mov         cl,1
 0058BBC9    mov         eax,ebx
 0058BBCB    call        TCustomStyleServices.GetElementColor
>0058BBD0    jmp         0058BF1A
 0058BBD5    mov         edx,dword ptr [ebp+8]
 0058BBD8    mov         dword ptr [edx],1FFFFFFF
>0058BBDE    jmp         0058BF1A
 0058BBE3    xor         eax,eax
>0058BBE5    jmp         0058BF1A
 0058BBEA    movzx       eax,byte ptr [ebp+0C]
 0058BBEE    sub         al,2
>0058BBF0    jne         0058BC16
 0058BBF2    mov         eax,dword ptr [ebp+8]
 0058BBF5    push        eax
 0058BBF6    lea         ecx,[ebp-0C]
 0058BBF9    mov         dl,1D
 0058BBFB    mov         eax,ebx
 0058BBFD    mov         esi,dword ptr [eax]
 0058BBFF    call        dword ptr [esi+0A4];TCustomStyleServices.GetElementDetails
 0058BC05    lea         edx,[ebp-0C]
 0058BC08    mov         cl,2
 0058BC0A    mov         eax,ebx
 0058BC0C    call        TCustomStyleServices.GetElementColor
>0058BC11    jmp         0058BF1A
 0058BC16    xor         eax,eax
>0058BC18    jmp         0058BF1A
 0058BC1D    movzx       edx,byte ptr [ebp+0C]
 0058BC21    sub         dl,1
>0058BC24    jb          0058BC2E
>0058BC26    je          0058BC70
 0058BC28    dec         dl
>0058BC2A    je          0058BC94
>0058BC2C    jmp         0058BCA2
 0058BC2E    mov         edx,dword ptr ds:[7C4364];^gvar_007C7DC0
 0058BC34    cmp         dword ptr [edx],6
 0058BC37    setge       dl
 0058BC3A    test        dl,dl
>0058BC3C    je          0058BC62
 0058BC3E    mov         eax,dword ptr [ebp+8]
 0058BC41    push        eax
 0058BC42    lea         ecx,[ebp-0C]
 0058BC45    mov         dl,2
 0058BC47    mov         eax,ebx
 0058BC49    mov         esi,dword ptr [eax]
 0058BC4B    call        dword ptr [esi+94];TCustomStyleServices.GetElementDetails
 0058BC51    lea         edx,[ebp-0C]
 0058BC54    mov         cl,7
 0058BC56    mov         eax,ebx
 0058BC58    call        TCustomStyleServices.GetElementColor
>0058BC5D    jmp         0058BF1A
 0058BC62    mov         edx,dword ptr [ebp+8]
 0058BC65    mov         dword ptr [edx],0B8C7CB
>0058BC6B    jmp         0058BF1A
 0058BC70    mov         eax,dword ptr [ebp+8]
 0058BC73    push        eax
 0058BC74    lea         ecx,[ebp-0C]
 0058BC77    mov         dl,2
 0058BC79    mov         eax,ebx
 0058BC7B    mov         esi,dword ptr [eax]
 0058BC7D    call        dword ptr [esi+0A0];TCustomStyleServices.GetElementDetails
 0058BC83    lea         edx,[ebp-0C]
 0058BC86    mov         cl,1
 0058BC88    mov         eax,ebx
 0058BC8A    call        TCustomStyleServices.GetElementColor
>0058BC8F    jmp         0058BF1A
 0058BC94    mov         edx,dword ptr [ebp+8]
 0058BC97    mov         dword ptr [edx],1FFFFFFF
>0058BC9D    jmp         0058BF1A
 0058BCA2    xor         eax,eax
>0058BCA4    jmp         0058BF1A
 0058BCA9    cmp         byte ptr [ebp+0C],2
>0058BCAD    jne         0058BCBD
 0058BCAF    mov         edx,dword ptr [ebp+8]
 0058BCB2    mov         dword ptr [edx],1FFFFFFF
>0058BCB8    jmp         0058BF1A
 0058BCBD    xor         eax,eax
>0058BCBF    jmp         0058BF1A
 0058BCC4    movzx       edx,byte ptr [ebp+0C]
 0058BCC8    sub         dl,1
>0058BCCB    jb          0058BCD5
>0058BCCD    je          0058BCE3
 0058BCCF    dec         dl
>0058BCD1    je          0058BCF1
>0058BCD3    jmp         0058BCFF
 0058BCD5    mov         edx,dword ptr [ebp+8]
 0058BCD8    mov         dword ptr [edx],1FFFFFFF
>0058BCDE    jmp         0058BF1A
 0058BCE3    mov         edx,dword ptr [ebp+8]
 0058BCE6    mov         dword ptr [edx],1FFFFFFF
>0058BCEC    jmp         0058BF1A
 0058BCF1    mov         edx,dword ptr [ebp+8]
 0058BCF4    mov         dword ptr [edx],1FFFFFFF
>0058BCFA    jmp         0058BF1A
 0058BCFF    xor         eax,eax
>0058BD01    jmp         0058BF1A
 0058BD06    movzx       edx,byte ptr [ebp+0C]
 0058BD0A    sub         dl,2
>0058BD0D    je          0058BD1A
 0058BD0F    sub         dl,7
>0058BD12    je          0058BD28
 0058BD14    dec         dl
>0058BD16    je          0058BD36
>0058BD18    jmp         0058BD44
 0058BD1A    mov         edx,dword ptr [ebp+8]
 0058BD1D    mov         dword ptr [edx],1FFFFFFF
>0058BD23    jmp         0058BF1A
 0058BD28    mov         edx,dword ptr [ebp+8]
 0058BD2B    mov         dword ptr [edx],1FFFFFFF
>0058BD31    jmp         0058BF1A
 0058BD36    mov         edx,dword ptr [ebp+8]
 0058BD39    mov         dword ptr [edx],1FFFFFFF
>0058BD3F    jmp         0058BF1A
 0058BD44    xor         eax,eax
>0058BD46    jmp         0058BF1A
 0058BD4B    movzx       edx,byte ptr [ebp+0C]
 0058BD4F    sub         dl,1
>0058BD52    jb          0058BD63
 0058BD54    dec         dl
>0058BD56    je          0058BD8D
 0058BD58    sub         dl,7
>0058BD5B    je          0058BD71
 0058BD5D    dec         dl
>0058BD5F    je          0058BD7F
>0058BD61    jmp         0058BD9B
 0058BD63    mov         edx,dword ptr [ebp+8]
 0058BD66    mov         dword ptr [edx],1FFFFFFF
>0058BD6C    jmp         0058BF1A
 0058BD71    mov         edx,dword ptr [ebp+8]
 0058BD74    mov         dword ptr [edx],1FFFFFFF
>0058BD7A    jmp         0058BF1A
 0058BD7F    mov         edx,dword ptr [ebp+8]
 0058BD82    mov         dword ptr [edx],1FFFFFFF
>0058BD88    jmp         0058BF1A
 0058BD8D    mov         edx,dword ptr [ebp+8]
 0058BD90    mov         dword ptr [edx],1FFFFFFF
>0058BD96    jmp         0058BF1A
 0058BD9B    xor         eax,eax
>0058BD9D    jmp         0058BF1A
 0058BDA2    movzx       edx,byte ptr [ebp+0C]
 0058BDA6    sub         dl,1
>0058BDA9    jb          0058BDBA
 0058BDAB    dec         dl
>0058BDAD    je          0058BDE4
 0058BDAF    sub         dl,7
>0058BDB2    je          0058BDC8
 0058BDB4    dec         dl
>0058BDB6    je          0058BDD6
>0058BDB8    jmp         0058BDF2
 0058BDBA    mov         edx,dword ptr [ebp+8]
 0058BDBD    mov         dword ptr [edx],1FFFFFFF
>0058BDC3    jmp         0058BF1A
 0058BDC8    mov         edx,dword ptr [ebp+8]
 0058BDCB    mov         dword ptr [edx],1FFFFFFF
>0058BDD1    jmp         0058BF1A
 0058BDD6    mov         edx,dword ptr [ebp+8]
 0058BDD9    mov         dword ptr [edx],1FFFFFFF
>0058BDDF    jmp         0058BF1A
 0058BDE4    mov         edx,dword ptr [ebp+8]
 0058BDE7    mov         dword ptr [edx],1FFFFFFF
>0058BDED    jmp         0058BF1A
 0058BDF2    xor         eax,eax
>0058BDF4    jmp         0058BF1A
 0058BDF9    movzx       edx,byte ptr [ebp+0C]
 0058BDFD    sub         dl,1
>0058BE00    jb          0058BE11
 0058BE02    dec         dl
>0058BE04    je          0058BE3B
 0058BE06    sub         dl,7
>0058BE09    je          0058BE1F
 0058BE0B    dec         dl
>0058BE0D    je          0058BE2D
>0058BE0F    jmp         0058BE49
 0058BE11    mov         edx,dword ptr [ebp+8]
 0058BE14    mov         dword ptr [edx],1FFFFFFF
>0058BE1A    jmp         0058BF1A
 0058BE1F    mov         edx,dword ptr [ebp+8]
 0058BE22    mov         dword ptr [edx],1FFFFFFF
>0058BE28    jmp         0058BF1A
 0058BE2D    mov         edx,dword ptr [ebp+8]
 0058BE30    mov         dword ptr [edx],1FFFFFFF
>0058BE36    jmp         0058BF1A
 0058BE3B    mov         edx,dword ptr [ebp+8]
 0058BE3E    mov         dword ptr [edx],1FFFFFFF
>0058BE44    jmp         0058BF1A
 0058BE49    xor         eax,eax
>0058BE4B    jmp         0058BF1A
 0058BE50    movzx       edx,byte ptr [ebp+0C]
 0058BE54    sub         dl,1
>0058BE57    jb          0058BE61
>0058BE59    je          0058BE6F
 0058BE5B    dec         dl
>0058BE5D    je          0058BE7D
>0058BE5F    jmp         0058BE8B
 0058BE61    mov         edx,dword ptr [ebp+8]
 0058BE64    mov         dword ptr [edx],1FFFFFFF
>0058BE6A    jmp         0058BF1A
 0058BE6F    mov         edx,dword ptr [ebp+8]
 0058BE72    mov         dword ptr [edx],1FFFFFFF
>0058BE78    jmp         0058BF1A
 0058BE7D    mov         edx,dword ptr [ebp+8]
 0058BE80    mov         dword ptr [edx],1FFFFFFF
>0058BE86    jmp         0058BF1A
 0058BE8B    xor         eax,eax
>0058BE8D    jmp         0058BF1A
 0058BE92    movzx       edx,byte ptr [ebp+0C]
 0058BE96    dec         dl
>0058BE98    je          0058BEA0
 0058BE9A    dec         dl
>0058BE9C    je          0058BEAB
>0058BE9E    jmp         0058BEB6
 0058BEA0    mov         edx,dword ptr [ebp+8]
 0058BEA3    mov         dword ptr [edx],1FFFFFFF
>0058BEA9    jmp         0058BF1A
 0058BEAB    mov         edx,dword ptr [ebp+8]
 0058BEAE    mov         dword ptr [edx],1FFFFFFF
>0058BEB4    jmp         0058BF1A
 0058BEB6    xor         eax,eax
>0058BEB8    jmp         0058BF1A
 0058BEBA    movzx       edx,byte ptr [ebp+0C]
 0058BEBE    sub         dl,1
>0058BEC1    jb          0058BECB
>0058BEC3    je          0058BED6
 0058BEC5    dec         dl
>0058BEC7    je          0058BEE1
>0058BEC9    jmp         0058BEEC
 0058BECB    mov         edx,dword ptr [ebp+8]
 0058BECE    mov         dword ptr [edx],1FFFFFFF
>0058BED4    jmp         0058BF1A
 0058BED6    mov         edx,dword ptr [ebp+8]
 0058BED9    mov         dword ptr [edx],1FFFFFFF
>0058BEDF    jmp         0058BF1A
 0058BEE1    mov         edx,dword ptr [ebp+8]
 0058BEE4    mov         dword ptr [edx],1FFFFFFF
>0058BEEA    jmp         0058BF1A
 0058BEEC    xor         eax,eax
>0058BEEE    jmp         0058BF1A
 0058BEF0    movzx       edx,byte ptr [ebp+0C]
 0058BEF4    dec         dl
>0058BEF6    je          0058BEFE
 0058BEF8    dec         dl
>0058BEFA    je          0058BF09
>0058BEFC    jmp         0058BF14
 0058BEFE    mov         edx,dword ptr [ebp+8]
 0058BF01    mov         dword ptr [edx],1FFFFFFF
>0058BF07    jmp         0058BF1A
 0058BF09    mov         edx,dword ptr [ebp+8]
 0058BF0C    mov         dword ptr [edx],1FFFFFFF
>0058BF12    jmp         0058BF1A
 0058BF14    xor         eax,eax
>0058BF16    jmp         0058BF1A
 0058BF18    xor         eax,eax
 0058BF1A    pop         esi
 0058BF1B    pop         ebx
 0058BF1C    mov         esp,ebp
 0058BF1E    pop         ebp
 0058BF1F    ret         0C
*}
end;

//0058BF24
function TUxThemeTextLabelElements.DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean;
begin
{*
 0058BF24    push        ebp
 0058BF25    mov         ebp,esp
 0058BF27    add         esp,0FFFFFF58
 0058BF2D    push        ebx
 0058BF2E    push        esi
 0058BF2F    push        edi
 0058BF30    mov         esi,dword ptr [ebp+8]
 0058BF33    lea         edi,[ebp-38]
 0058BF36    push        ecx
 0058BF37    mov         ecx,8
 0058BF3C    rep movs    dword ptr [edi],dword ptr [esi]
 0058BF3E    pop         ecx
 0058BF3F    mov         dword ptr [ebp-8],ecx
 0058BF42    mov         dword ptr [ebp-4],edx
 0058BF45    mov         edi,eax
 0058BF47    mov         ebx,dword ptr [ebp+0C]
 0058BF4A    mov         esi,dword ptr [ebp+14]
 0058BF4D    cmp         dword ptr [ebp+18],2
>0058BF51    je          0058BF58
 0058BF53    test        bl,2
>0058BF56    je          0058BF8B
 0058BF58    push        esi
 0058BF59    mov         eax,dword ptr [ebp+10]
 0058BF5C    push        eax
 0058BF5D    push        ebx
 0058BF5E    lea         eax,[ebp-38]
 0058BF61    push        eax
 0058BF62    lea         ecx,[ebp-0A0]
 0058BF68    mov         dl,2
 0058BF6A    mov         eax,dword ptr [ebp-4]
 0058BF6D    mov         ebx,dword ptr [eax]
 0058BF6F    call        dword ptr [ebx+84];TCustomStyleServices.GetElementDetails
 0058BF75    lea         ecx,[ebp-0A0]
 0058BF7B    mov         edx,dword ptr [ebp-8]
 0058BF7E    mov         eax,dword ptr [ebp-4]
 0058BF81    call        TCustomStyleServices.DrawText
>0058BF86    jmp         0058C23F
 0058BF8B    mov         eax,[007C4364];^gvar_007C7DC0
 0058BF90    cmp         dword ptr [eax],6
 0058BF93    setge       al
 0058BF96    test        al,al
>0058BF98    je          0058C109
 0058BF9E    lea         eax,[ebp-88]
 0058BFA4    xor         ecx,ecx
 0058BFA6    mov         edx,40
 0058BFAB    call        @FillChar
 0058BFB0    mov         dword ptr [ebp-88],40
 0058BFBA    mov         eax,dword ptr [ebp-84]
 0058BFC0    or          eax,1
 0058BFC3    or          eax,4
 0058BFC6    or          eax,8
 0058BFC9    or          eax,10
 0058BFCC    mov         dword ptr [ebp-84],eax
 0058BFD2    mov         eax,dword ptr [ebp+18]
 0058BFD5    push        eax
 0058BFD6    push        0E
 0058BFD8    lea         eax,[ebp-10]
 0058BFDB    push        eax
 0058BFDC    mov         ecx,dword ptr [ebp+1C]
 0058BFDF    mov         edx,dword ptr [ebp-4]
 0058BFE2    mov         eax,edi
 0058BFE4    call        dword ptr [eax+14]
 0058BFE7    test        al,al
>0058BFE9    je          0058BFFC
 0058BFEB    cmp         dword ptr [ebp-10],1FFFFFFF
>0058BFF2    je          0058BFFC
 0058BFF4    mov         eax,dword ptr [ebp-10]
 0058BFF7    mov         dword ptr [ebp-80],eax
>0058BFFA    jmp         0058C009
 0058BFFC    mov         eax,0FF000010
 0058C001    call        ColorToRGB
 0058C006    mov         dword ptr [ebp-80],eax
 0058C009    mov         eax,dword ptr [ebp+18]
 0058C00C    push        eax
 0058C00D    push        2
 0058C00F    lea         eax,[ebp-10]
 0058C012    push        eax
 0058C013    mov         ecx,dword ptr [ebp+1C]
 0058C016    mov         edx,dword ptr [ebp-4]
 0058C019    mov         eax,edi
 0058C01B    call        dword ptr [eax+14]
 0058C01E    test        al,al
>0058C020    je          0058C033
 0058C022    cmp         dword ptr [ebp-10],1FFFFFFF
>0058C029    je          0058C033
 0058C02B    mov         eax,dword ptr [ebp-10]
 0058C02E    mov         dword ptr [ebp-78],eax
>0058C031    jmp         0058C040
 0058C033    mov         eax,0FF000014
 0058C038    call        ColorToRGB
 0058C03D    mov         dword ptr [ebp-78],eax
 0058C040    mov         ecx,1
 0058C045    mov         edx,1
 0058C04A    lea         eax,[ebp-0A8]
 0058C050    call        0040E7E4
 0058C055    mov         eax,dword ptr [ebp-0A8]
 0058C05B    mov         dword ptr [ebp-70],eax
 0058C05E    mov         eax,dword ptr [ebp-0A4]
 0058C064    mov         dword ptr [ebp-6C],eax
 0058C067    mov         dword ptr [ebp-74],1
 0058C06E    test        ebx,800000;gvar_00800000
>0058C074    je          0058C080
 0058C076    or          dword ptr [ebp-84],2000
 0058C080    test        bl,2
>0058C083    je          0058C08F
 0058C085    or          dword ptr [ebp-84],200
 0058C08F    call        TStyleManager.GetSystemStyle
 0058C094    lea         ecx,[ebp-94]
 0058C09A    mov         dl,5
 0058C09C    mov         edi,dword ptr [eax]
 0058C09E    call        dword ptr [edi+84];TCustomStyleServices.GetElementDetails
 0058C0A4    call        TStyleManager.GetSystemStyle
 0058C0A9    movzx       edx,byte ptr [ebp-94]
 0058C0B0    mov         ecx,dword ptr [eax]
 0058C0B2    call        dword ptr [ecx+54];TCustomStyleServices.GetTheme
 0058C0B5    mov         dword ptr [ebp-18],eax
 0058C0B8    mov         edi,esi
 0058C0BA    test        edi,edi
>0058C0BC    je          0058C0C3
 0058C0BE    sub         edi,4
 0058C0C1    mov         edi,dword ptr [edi]
 0058C0C3    lea         eax,[ebp-88]
 0058C0C9    push        eax
 0058C0CA    mov         eax,dword ptr [ebp+10]
 0058C0CD    push        eax
 0058C0CE    mov         eax,ebx
 0058C0D0    call        TTextFormatFlags.&op_Implicit
 0058C0D5    call        TTextFormatFlags.&op_Implicit
 0058C0DA    push        eax
 0058C0DB    push        edi
 0058C0DC    mov         eax,esi
 0058C0DE    call        @UStrToPWChar
 0058C0E3    push        eax
 0058C0E4    mov         eax,dword ptr [ebp-8C]
 0058C0EA    push        eax
 0058C0EB    mov         eax,dword ptr [ebp-90]
 0058C0F1    push        eax
 0058C0F2    mov         eax,dword ptr [ebp-8]
 0058C0F5    push        eax
 0058C0F6    mov         eax,dword ptr [ebp-18]
 0058C0F9    push        eax
 0058C0FA    call        004D4224
 0058C0FF    test        eax,eax
 0058C101    sete        al
>0058C104    jmp         0058C23F
 0058C109    mov         eax,dword ptr [ebp+10]
 0058C10C    push        esi
 0058C10D    push        edi
 0058C10E    mov         esi,eax
 0058C110    lea         edi,[ebp-48]
 0058C113    movs        dword ptr [edi],dword ptr [esi]
 0058C114    movs        dword ptr [edi],dword ptr [esi]
 0058C115    movs        dword ptr [edi],dword ptr [esi]
 0058C116    movs        dword ptr [edi],dword ptr [esi]
 0058C117    pop         edi
 0058C118    pop         esi
 0058C119    mov         eax,ebx
 0058C11B    call        TTextFormatFlags.&op_Implicit
 0058C120    call        TTextFormatFlags.&op_Implicit
 0058C125    mov         dword ptr [ebp-0C],eax
 0058C128    lea         eax,[ebp-48]
 0058C12B    mov         ecx,1
 0058C130    mov         edx,1
 0058C135    call        OffsetRect
 0058C13A    mov         eax,dword ptr [ebp+18]
 0058C13D    push        eax
 0058C13E    push        2
 0058C140    lea         eax,[ebp-10]
 0058C143    push        eax
 0058C144    mov         ecx,dword ptr [ebp+1C]
 0058C147    mov         edx,dword ptr [ebp-4]
 0058C14A    mov         eax,edi
 0058C14C    call        dword ptr [eax+14]
 0058C14F    test        al,al
>0058C151    je          0058C15C
 0058C153    cmp         dword ptr [ebp-10],1FFFFFFF
>0058C15A    jne         0058C169
 0058C15C    mov         eax,0FF000014
 0058C161    call        ColorToRGB
 0058C166    mov         dword ptr [ebp-10],eax
 0058C169    mov         eax,dword ptr [ebp-10]
 0058C16C    push        eax
 0058C16D    mov         eax,dword ptr [ebp-8]
 0058C170    push        eax
 0058C171    call        gdi32.SetTextColor
 0058C176    mov         dword ptr [ebp-14],eax
 0058C179    xor         eax,eax
 0058C17B    push        ebp
 0058C17C    push        58C236
 0058C181    push        dword ptr fs:[eax]
 0058C184    mov         dword ptr fs:[eax],esp
 0058C187    mov         ebx,esi
 0058C189    test        ebx,ebx
>0058C18B    je          0058C192
 0058C18D    sub         ebx,4
 0058C190    mov         ebx,dword ptr [ebx]
 0058C192    mov         eax,dword ptr [ebp-0C]
 0058C195    push        eax
 0058C196    lea         eax,[ebp-48]
 0058C199    push        eax
 0058C19A    push        ebx
 0058C19B    mov         eax,esi
 0058C19D    call        @UStrToPWChar
 0058C1A2    push        eax
 0058C1A3    mov         eax,dword ptr [ebp-8]
 0058C1A6    push        eax
 0058C1A7    call        user32.DrawTextW
 0058C1AC    lea         eax,[ebp-48]
 0058C1AF    or          ecx,0FFFFFFFF
 0058C1B2    or          edx,0FFFFFFFF
 0058C1B5    call        OffsetRect
 0058C1BA    mov         eax,dword ptr [ebp+18]
 0058C1BD    push        eax
 0058C1BE    push        0E
 0058C1C0    lea         eax,[ebp-10]
 0058C1C3    push        eax
 0058C1C4    mov         ecx,dword ptr [ebp+1C]
 0058C1C7    mov         edx,dword ptr [ebp-4]
 0058C1CA    mov         eax,edi
 0058C1CC    call        dword ptr [eax+14]
 0058C1CF    test        al,al
>0058C1D1    je          0058C1DC
 0058C1D3    cmp         dword ptr [ebp-10],1FFFFFFF
>0058C1DA    jne         0058C1E9
 0058C1DC    mov         eax,0FF000010
 0058C1E1    call        ColorToRGB
 0058C1E6    mov         dword ptr [ebp-10],eax
 0058C1E9    mov         eax,dword ptr [ebp-10]
 0058C1EC    push        eax
 0058C1ED    mov         eax,dword ptr [ebp-8]
 0058C1F0    push        eax
 0058C1F1    call        gdi32.SetTextColor
 0058C1F6    mov         ebx,esi
 0058C1F8    test        ebx,ebx
>0058C1FA    je          0058C201
 0058C1FC    sub         ebx,4
 0058C1FF    mov         ebx,dword ptr [ebx]
 0058C201    mov         eax,dword ptr [ebp-0C]
 0058C204    push        eax
 0058C205    lea         eax,[ebp-48]
 0058C208    push        eax
 0058C209    push        ebx
 0058C20A    mov         eax,esi
 0058C20C    call        @UStrToPWChar
 0058C211    push        eax
 0058C212    mov         eax,dword ptr [ebp-8]
 0058C215    push        eax
 0058C216    call        user32.DrawTextW
 0058C21B    xor         eax,eax
 0058C21D    pop         edx
 0058C21E    pop         ecx
 0058C21F    pop         ecx
 0058C220    mov         dword ptr fs:[eax],edx
 0058C223    push        58C23D
 0058C228    mov         eax,dword ptr [ebp-14]
 0058C22B    push        eax
 0058C22C    mov         eax,dword ptr [ebp-8]
 0058C22F    push        eax
 0058C230    call        gdi32.SetTextColor
 0058C235    ret
>0058C236    jmp         @HandleFinally
>0058C23B    jmp         0058C228
 0058C23D    mov         al,1
 0058C23F    pop         edi
 0058C240    pop         esi
 0058C241    pop         ebx
 0058C242    mov         esp,ebp
 0058C244    pop         ebp
 0058C245    ret         18
*}
end;

//0058C248
function TUxThemeTextLabelElements.GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;
begin
{*
 0058C248    push        ebp
 0058C249    mov         ebp,esp
 0058C24B    push        ebx
 0058C24C    mov         bl,1
 0058C24E    movzx       eax,byte ptr [ebp+10]
 0058C252    sub         al,2
>0058C254    je          0058C25C
 0058C256    dec         al
>0058C258    je          0058C260
>0058C25A    jmp         0058C294
 0058C25C    xor         ebx,ebx
>0058C25E    jmp         0058C296
 0058C260    movzx       eax,byte ptr [ebp+0C]
 0058C264    sub         al,2
>0058C266    je          0058C26E
 0058C268    sub         al,0C
>0058C26A    je          0058C27F
>0058C26C    jmp         0058C290
 0058C26E    mov         eax,0FF000014
 0058C273    call        ColorToRGB
 0058C278    mov         edx,dword ptr [ebp+8]
 0058C27B    mov         dword ptr [edx],eax
>0058C27D    jmp         0058C296
 0058C27F    mov         eax,0FF000010
 0058C284    call        ColorToRGB
 0058C289    mov         edx,dword ptr [ebp+8]
 0058C28C    mov         dword ptr [edx],eax
>0058C28E    jmp         0058C296
 0058C290    xor         ebx,ebx
>0058C292    jmp         0058C296
 0058C294    xor         ebx,ebx
 0058C296    mov         eax,ebx
 0058C298    pop         ebx
 0058C299    pop         ebp
 0058C29A    ret         0C
*}
end;

//0058C2A0
function TUxThemeTextLabelElements.GetElementContentRect(Style:TCustomStyleServices; DC:HDC; ContentRect:TRect; BoundingRect:TRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058C2A0    push        ebp
 0058C2A1    mov         ebp,esp
 0058C2A3    push        esi
 0058C2A4    push        edi
 0058C2A5    mov         eax,dword ptr [ebp+0C]
 0058C2A8    mov         edx,dword ptr [ebp+8]
 0058C2AB    mov         esi,eax
 0058C2AD    mov         edi,edx
 0058C2AF    movs        dword ptr [edi],dword ptr [esi]
 0058C2B0    movs        dword ptr [edi],dword ptr [esi]
 0058C2B1    movs        dword ptr [edi],dword ptr [esi]
 0058C2B2    movs        dword ptr [edi],dword ptr [esi]
 0058C2B3    mov         al,1
 0058C2B5    pop         edi
 0058C2B6    pop         esi
 0058C2B7    pop         ebp
 0058C2B8    ret         10
*}
end;

//0058C2BC
procedure TUxThemeTextLabelElements.GetTextExtent(Style:TCustomStyleServices; DC:HDC; ExtentRect:TRect; BoundingRect:PRect; Flags:TTextFormat; Text:string; State:Integer; Part:Integer);
begin
{*
 0058C2BC    push        ebp
 0058C2BD    mov         ebp,esp
 0058C2BF    add         esp,0FFFFFFE0
 0058C2C2    push        ebx
 0058C2C3    push        esi
 0058C2C4    push        edi
 0058C2C5    mov         dword ptr [ebp-4],ecx
 0058C2C8    mov         esi,edx
 0058C2CA    mov         ebx,dword ptr [ebp+8]
 0058C2CD    mov         eax,dword ptr [ebp+0C]
 0058C2D0    test        eax,eax
>0058C2D2    je          0058C2E0
 0058C2D4    push        esi
 0058C2D5    mov         esi,eax
 0058C2D7    mov         edi,ebx
 0058C2D9    movs        dword ptr [edi],dword ptr [esi]
 0058C2DA    movs        dword ptr [edi],dword ptr [esi]
 0058C2DB    movs        dword ptr [edi],dword ptr [esi]
 0058C2DC    movs        dword ptr [edi],dword ptr [esi]
 0058C2DD    pop         esi
>0058C2DE    jmp         0058C2FB
 0058C2E0    push        0
 0058C2E2    push        0
 0058C2E4    lea         eax,[ebp-14]
 0058C2E7    xor         ecx,ecx
 0058C2E9    xor         edx,edx
 0058C2EB    call        TRect.Create
 0058C2F0    push        esi
 0058C2F1    mov         edi,ebx
 0058C2F3    lea         esi,[ebp-14]
 0058C2F6    movs        dword ptr [edi],dword ptr [esi]
 0058C2F7    movs        dword ptr [edi],dword ptr [esi]
 0058C2F8    movs        dword ptr [edi],dword ptr [esi]
 0058C2F9    movs        dword ptr [edi],dword ptr [esi]
 0058C2FA    pop         esi
 0058C2FB    mov         eax,dword ptr [ebp+14]
 0058C2FE    push        eax
 0058C2FF    push        ebx
 0058C300    mov         eax,[0058C338];0x2 gvar_0058C338
 0058C305    or          eax,dword ptr [ebp+10]
 0058C308    push        eax
 0058C309    push        1FFFFFFF
 0058C30E    movzx       edx,byte ptr [ebp+18]
 0058C312    lea         ecx,[ebp-20]
 0058C315    mov         eax,esi
 0058C317    mov         ebx,dword ptr [eax]
 0058C319    call        dword ptr [ebx+0EC];TCustomStyleServices.GetElementDetails
 0058C31F    lea         ecx,[ebp-20]
 0058C322    mov         edx,dword ptr [ebp-4]
 0058C325    mov         eax,esi
 0058C327    call        TCustomStyleServices.DrawText
 0058C32C    pop         edi
 0058C32D    pop         esi
 0058C32E    pop         ebx
 0058C32F    mov         esp,ebp
 0058C331    pop         ebp
 0058C332    ret         18
*}
end;

//0058C33C
function TUxThemeCategoryButtonElements.GetElementSize(Style:TCustomStyleServices; DC:HDC; Size:TSize; ElementSize:TElementSize; Rect:PRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058C33C    push        ebp
 0058C33D    mov         ebp,esp
 0058C33F    add         esp,0FFFFFFF8
 0058C342    xor         eax,eax
 0058C344    cmp         byte ptr [ebp+0C],1
>0058C348    jne         0058C378
 0058C34A    movzx       edx,byte ptr [ebp+14]
 0058C34E    add         dl,0F8
 0058C351    sub         dl,2
>0058C354    jae         0058C378
 0058C356    lea         eax,[ebp-8]
 0058C359    mov         ecx,9
 0058C35E    mov         edx,9
 0058C363    call        0040EBD4
 0058C368    mov         eax,dword ptr [ebp+8]
 0058C36B    mov         edx,dword ptr [ebp-8]
 0058C36E    mov         dword ptr [eax],edx;TSize.cx:LongInt
 0058C370    mov         edx,dword ptr [ebp-4]
 0058C373    mov         dword ptr [eax+4],edx
 0058C376    mov         al,1
 0058C378    pop         ecx
 0058C379    pop         ecx
 0058C37A    pop         ebp
 0058C37B    ret         14
*}
end;

//0058C380
function TUxThemeCategoryButtonElements.DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058C380    push        ebp
 0058C381    mov         ebp,esp
 0058C383    add         esp,0FFFFFFF4
 0058C386    push        ebx
 0058C387    push        esi
 0058C388    push        edi
 0058C389    mov         esi,ecx
 0058C38B    mov         ebx,edx
 0058C38D    movzx       eax,byte ptr [ebp+10]
 0058C391    sub         al,8
>0058C393    je          0058C39B
 0058C395    dec         al
>0058C397    je          0058C3C0
>0058C399    jmp         0058C3E5
 0058C39B    mov         eax,dword ptr [ebp+0C]
 0058C39E    push        eax
 0058C39F    mov         eax,dword ptr [ebp+8]
 0058C3A2    push        eax
 0058C3A3    lea         ecx,[ebp-0C]
 0058C3A6    mov         dl,9
 0058C3A8    mov         eax,ebx
 0058C3AA    mov         edi,dword ptr [eax]
 0058C3AC    call        dword ptr [edi+108];TCustomStyleServices.GetElementDetails
 0058C3B2    lea         ecx,[ebp-0C]
 0058C3B5    mov         edx,esi
 0058C3B7    mov         eax,ebx
 0058C3B9    call        TCustomStyleServices.DrawElement
>0058C3BE    jmp         0058C3E7
 0058C3C0    mov         eax,dword ptr [ebp+0C]
 0058C3C3    push        eax
 0058C3C4    mov         eax,dword ptr [ebp+8]
 0058C3C7    push        eax
 0058C3C8    lea         ecx,[ebp-0C]
 0058C3CB    mov         dl,8
 0058C3CD    mov         eax,ebx
 0058C3CF    mov         edi,dword ptr [eax]
 0058C3D1    call        dword ptr [edi+108];TCustomStyleServices.GetElementDetails
 0058C3D7    lea         ecx,[ebp-0C]
 0058C3DA    mov         edx,esi
 0058C3DC    mov         eax,ebx
 0058C3DE    call        TCustomStyleServices.DrawElement
>0058C3E3    jmp         0058C3E7
 0058C3E5    xor         eax,eax
 0058C3E7    pop         edi
 0058C3E8    pop         esi
 0058C3E9    pop         ebx
 0058C3EA    mov         esp,ebp
 0058C3EC    pop         ebp
 0058C3ED    ret         10
*}
end;

//0058C3F0
function TUxThemeCategoryButtonElements.GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;
begin
{*
 0058C3F0    push        ebp
 0058C3F1    mov         ebp,esp
 0058C3F3    mov         al,1
 0058C3F5    movzx       edx,byte ptr [ebp+10]
 0058C3F9    cmp         edx,0B
>0058C3FC    ja          0058C589
 0058C402    jmp         dword ptr [edx*4+58C409]
 0058C402    dd          0058C589
 0058C402    dd          0058C589
 0058C402    dd          0058C439
 0058C402    dd          0058C456
 0058C402    dd          0058C49B
 0058C402    dd          0058C4E0
 0058C402    dd          0058C50D
 0058C402    dd          0058C534
 0058C402    dd          0058C589
 0058C402    dd          0058C589
 0058C402    dd          0058C55B
 0058C402    dd          0058C572
 0058C439    movzx       edx,byte ptr [ebp+0C]
 0058C43D    dec         dl
>0058C43F    jne         0058C44F
 0058C441    mov         edx,dword ptr [ebp+8]
 0058C444    mov         dword ptr [edx],1FFFFFFF
>0058C44A    jmp         0058C58B
 0058C44F    xor         eax,eax
>0058C451    jmp         0058C58B
 0058C456    movzx       edx,byte ptr [ebp+0C]
 0058C45A    sub         dl,2
>0058C45D    je          0058C486
 0058C45F    sub         dl,7
>0058C462    je          0058C46A
 0058C464    dec         dl
>0058C466    je          0058C478
>0058C468    jmp         0058C494
 0058C46A    mov         edx,dword ptr [ebp+8]
 0058C46D    mov         dword ptr [edx],1FFFFFFF
>0058C473    jmp         0058C58B
 0058C478    mov         edx,dword ptr [ebp+8]
 0058C47B    mov         dword ptr [edx],1FFFFFFF
>0058C481    jmp         0058C58B
 0058C486    mov         edx,dword ptr [ebp+8]
 0058C489    mov         dword ptr [edx],1FFFFFFF
>0058C48F    jmp         0058C58B
 0058C494    xor         eax,eax
>0058C496    jmp         0058C58B
 0058C49B    movzx       edx,byte ptr [ebp+0C]
 0058C49F    sub         dl,2
>0058C4A2    je          0058C4CB
 0058C4A4    sub         dl,7
>0058C4A7    je          0058C4AF
 0058C4A9    dec         dl
>0058C4AB    je          0058C4BD
>0058C4AD    jmp         0058C4D9
 0058C4AF    mov         edx,dword ptr [ebp+8]
 0058C4B2    mov         dword ptr [edx],1FFFFFFF
>0058C4B8    jmp         0058C58B
 0058C4BD    mov         edx,dword ptr [ebp+8]
 0058C4C0    mov         dword ptr [edx],1FFFFFFF
>0058C4C6    jmp         0058C58B
 0058C4CB    mov         edx,dword ptr [ebp+8]
 0058C4CE    mov         dword ptr [edx],1FFFFFFF
>0058C4D4    jmp         0058C58B
 0058C4D9    xor         eax,eax
>0058C4DB    jmp         0058C58B
 0058C4E0    movzx       edx,byte ptr [ebp+0C]
 0058C4E4    sub         dl,1
>0058C4E7    jb          0058C4FB
 0058C4E9    dec         dl
>0058C4EB    jne         0058C509
 0058C4ED    mov         edx,dword ptr [ebp+8]
 0058C4F0    mov         dword ptr [edx],1FFFFFFF
>0058C4F6    jmp         0058C58B
 0058C4FB    mov         edx,dword ptr [ebp+8]
 0058C4FE    mov         dword ptr [edx],1FFFFFFF
>0058C504    jmp         0058C58B
 0058C509    xor         eax,eax
>0058C50B    jmp         0058C58B
 0058C50D    movzx       edx,byte ptr [ebp+0C]
 0058C511    sub         dl,1
>0058C514    jb          0058C525
 0058C516    dec         dl
>0058C518    jne         0058C530
 0058C51A    mov         edx,dword ptr [ebp+8]
 0058C51D    mov         dword ptr [edx],1FFFFFFF
>0058C523    jmp         0058C58B
 0058C525    mov         edx,dword ptr [ebp+8]
 0058C528    mov         dword ptr [edx],1FFFFFFF
>0058C52E    jmp         0058C58B
 0058C530    xor         eax,eax
>0058C532    jmp         0058C58B
 0058C534    movzx       edx,byte ptr [ebp+0C]
 0058C538    sub         dl,1
>0058C53B    jb          0058C54C
 0058C53D    dec         dl
>0058C53F    jne         0058C557
 0058C541    mov         edx,dword ptr [ebp+8]
 0058C544    mov         dword ptr [edx],1FFFFFFF
>0058C54A    jmp         0058C58B
 0058C54C    mov         edx,dword ptr [ebp+8]
 0058C54F    mov         dword ptr [edx],1FFFFFFF
>0058C555    jmp         0058C58B
 0058C557    xor         eax,eax
>0058C559    jmp         0058C58B
 0058C55B    movzx       edx,byte ptr [ebp+0C]
 0058C55F    dec         dl
>0058C561    jne         0058C56E
 0058C563    mov         edx,dword ptr [ebp+8]
 0058C566    mov         dword ptr [edx],1FFFFFFF
>0058C56C    jmp         0058C58B
 0058C56E    xor         eax,eax
>0058C570    jmp         0058C58B
 0058C572    movzx       edx,byte ptr [ebp+0C]
 0058C576    dec         dl
>0058C578    jne         0058C585
 0058C57A    mov         edx,dword ptr [ebp+8]
 0058C57D    mov         dword ptr [edx],1FFFFFFF
>0058C583    jmp         0058C58B
 0058C585    xor         eax,eax
>0058C587    jmp         0058C58B
 0058C589    xor         eax,eax
 0058C58B    pop         ebp
 0058C58C    ret         0C
*}
end;

//0058C590
function TUxThemeCategoryPanelGroupElements.DrawElement(Style:TCustomStyleServices; DC:HDC; ClipRect:PRect; R:TRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058C590    push        ebp
 0058C591    mov         ebp,esp
 0058C593    add         esp,0FFFFFFF4
 0058C596    push        ebx
 0058C597    push        esi
 0058C598    push        edi
 0058C599    mov         esi,ecx
 0058C59B    mov         ebx,edx
 0058C59D    movzx       eax,byte ptr [ebp+10]
 0058C5A1    cmp         eax,13
>0058C5A4    ja          0058C6F8
 0058C5AA    movzx       eax,byte ptr [eax+58C5B8]
 0058C5B1    jmp         dword ptr [eax*4+58C5CC]
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          1
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          0
 0058C5B1    db          2
 0058C5B1    db          3
 0058C5B1    db          4
 0058C5B1    db          5
 0058C5B1    db          6
 0058C5B1    db          7
 0058C5B1    dd          0058C6F8
 0058C5B1    dd          0058C5EC
 0058C5B1    dd          0058C614
 0058C5B1    dd          0058C63C
 0058C5B1    dd          0058C664
 0058C5B1    dd          0058C689
 0058C5B1    dd          0058C6AE
 0058C5B1    dd          0058C6D3
 0058C5EC    mov         eax,dword ptr [ebp+0C]
 0058C5EF    push        eax
 0058C5F0    mov         eax,dword ptr [ebp+8]
 0058C5F3    push        eax
 0058C5F4    lea         ecx,[ebp-0C]
 0058C5F7    mov         dl,18
 0058C5F9    mov         eax,ebx
 0058C5FB    mov         edi,dword ptr [eax]
 0058C5FD    call        dword ptr [edi+88];TCustomStyleServices.GetElementDetails
 0058C603    lea         ecx,[ebp-0C]
 0058C606    mov         edx,esi
 0058C608    mov         eax,ebx
 0058C60A    call        TCustomStyleServices.DrawElement
>0058C60F    jmp         0058C6FA
 0058C614    mov         eax,dword ptr [ebp+0C]
 0058C617    push        eax
 0058C618    mov         eax,dword ptr [ebp+8]
 0058C61B    push        eax
 0058C61C    lea         ecx,[ebp-0C]
 0058C61F    mov         dl,12
 0058C621    mov         eax,ebx
 0058C623    mov         edi,dword ptr [eax]
 0058C625    call        dword ptr [edi+88];TCustomStyleServices.GetElementDetails
 0058C62B    lea         ecx,[ebp-0C]
 0058C62E    mov         edx,esi
 0058C630    mov         eax,ebx
 0058C632    call        TCustomStyleServices.DrawElement
>0058C637    jmp         0058C6FA
 0058C63C    mov         eax,dword ptr [ebp+0C]
 0058C63F    push        eax
 0058C640    mov         eax,dword ptr [ebp+8]
 0058C643    push        eax
 0058C644    lea         ecx,[ebp-0C]
 0058C647    mov         dl,13
 0058C649    mov         eax,ebx
 0058C64B    mov         edi,dword ptr [eax]
 0058C64D    call        dword ptr [edi+88];TCustomStyleServices.GetElementDetails
 0058C653    lea         ecx,[ebp-0C]
 0058C656    mov         edx,esi
 0058C658    mov         eax,ebx
 0058C65A    call        TCustomStyleServices.DrawElement
>0058C65F    jmp         0058C6FA
 0058C664    mov         eax,dword ptr [ebp+0C]
 0058C667    push        eax
 0058C668    mov         eax,dword ptr [ebp+8]
 0058C66B    push        eax
 0058C66C    lea         ecx,[ebp-0C]
 0058C66F    mov         dl,14
 0058C671    mov         eax,ebx
 0058C673    mov         edi,dword ptr [eax]
 0058C675    call        dword ptr [edi+88];TCustomStyleServices.GetElementDetails
 0058C67B    lea         ecx,[ebp-0C]
 0058C67E    mov         edx,esi
 0058C680    mov         eax,ebx
 0058C682    call        TCustomStyleServices.DrawElement
>0058C687    jmp         0058C6FA
 0058C689    mov         eax,dword ptr [ebp+0C]
 0058C68C    push        eax
 0058C68D    mov         eax,dword ptr [ebp+8]
 0058C690    push        eax
 0058C691    lea         ecx,[ebp-0C]
 0058C694    mov         dl,15
 0058C696    mov         eax,ebx
 0058C698    mov         edi,dword ptr [eax]
 0058C69A    call        dword ptr [edi+88];TCustomStyleServices.GetElementDetails
 0058C6A0    lea         ecx,[ebp-0C]
 0058C6A3    mov         edx,esi
 0058C6A5    mov         eax,ebx
 0058C6A7    call        TCustomStyleServices.DrawElement
>0058C6AC    jmp         0058C6FA
 0058C6AE    mov         eax,dword ptr [ebp+0C]
 0058C6B1    push        eax
 0058C6B2    mov         eax,dword ptr [ebp+8]
 0058C6B5    push        eax
 0058C6B6    lea         ecx,[ebp-0C]
 0058C6B9    mov         dl,16
 0058C6BB    mov         eax,ebx
 0058C6BD    mov         edi,dword ptr [eax]
 0058C6BF    call        dword ptr [edi+88];TCustomStyleServices.GetElementDetails
 0058C6C5    lea         ecx,[ebp-0C]
 0058C6C8    mov         edx,esi
 0058C6CA    mov         eax,ebx
 0058C6CC    call        TCustomStyleServices.DrawElement
>0058C6D1    jmp         0058C6FA
 0058C6D3    mov         eax,dword ptr [ebp+0C]
 0058C6D6    push        eax
 0058C6D7    mov         eax,dword ptr [ebp+8]
 0058C6DA    push        eax
 0058C6DB    lea         ecx,[ebp-0C]
 0058C6DE    mov         dl,17
 0058C6E0    mov         eax,ebx
 0058C6E2    mov         edi,dword ptr [eax]
 0058C6E4    call        dword ptr [edi+88];TCustomStyleServices.GetElementDetails
 0058C6EA    lea         ecx,[ebp-0C]
 0058C6ED    mov         edx,esi
 0058C6EF    mov         eax,ebx
 0058C6F1    call        TCustomStyleServices.DrawElement
>0058C6F6    jmp         0058C6FA
 0058C6F8    xor         eax,eax
 0058C6FA    pop         edi
 0058C6FB    pop         esi
 0058C6FC    pop         ebx
 0058C6FD    mov         esp,ebp
 0058C6FF    pop         ebp
 0058C700    ret         10
*}
end;

//0058C704
function TUxThemeCategoryPanelGroupElements.DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer):Boolean;
begin
{*
 0058C704    push        ebp
 0058C705    mov         ebp,esp
 0058C707    add         esp,0FFFFFFD0
 0058C70A    push        ebx
 0058C70B    push        esi
 0058C70C    push        edi
 0058C70D    mov         esi,dword ptr [ebp+8]
 0058C710    lea         edi,[ebp-24]
 0058C713    push        ecx
 0058C714    mov         ecx,8
 0058C719    rep movs    dword ptr [edi],dword ptr [esi]
 0058C71B    pop         ecx
 0058C71C    mov         dword ptr [ebp-4],ecx
 0058C71F    mov         esi,edx
 0058C721    mov         bl,1
 0058C723    movzx       eax,byte ptr [ebp+18]
 0058C727    sub         al,3
>0058C729    je          0058C731
 0058C72B    dec         al
>0058C72D    je          0058C766
>0058C72F    jmp         0058C796
 0058C731    mov         esi,dword ptr [ebp+14]
 0058C734    test        esi,esi
>0058C736    je          0058C73D
 0058C738    sub         esi,4
 0058C73B    mov         esi,dword ptr [esi]
 0058C73D    mov         eax,dword ptr [ebp+0C]
 0058C740    call        TTextFormatFlags.&op_Implicit
 0058C745    call        TTextFormatFlags.&op_Implicit
 0058C74A    mov         edi,eax
 0058C74C    push        edi
 0058C74D    mov         eax,dword ptr [ebp+10]
 0058C750    push        eax
 0058C751    push        esi
 0058C752    mov         eax,dword ptr [ebp+14]
 0058C755    call        @UStrToPWChar
 0058C75A    push        eax
 0058C75B    mov         eax,dword ptr [ebp-4]
 0058C75E    push        eax
 0058C75F    call        user32.DrawTextW
>0058C764    jmp         0058C798
 0058C766    mov         eax,dword ptr [ebp+14]
 0058C769    push        eax
 0058C76A    mov         eax,dword ptr [ebp+10]
 0058C76D    push        eax
 0058C76E    mov         eax,dword ptr [ebp+0C]
 0058C771    push        eax
 0058C772    lea         eax,[ebp-24]
 0058C775    push        eax
 0058C776    lea         ecx,[ebp-30]
 0058C779    mov         dl,18
 0058C77B    mov         eax,esi
 0058C77D    mov         ebx,dword ptr [eax]
 0058C77F    call        dword ptr [ebx+88];TCustomStyleServices.GetElementDetails
 0058C785    lea         ecx,[ebp-30]
 0058C788    mov         edx,dword ptr [ebp-4]
 0058C78B    mov         eax,esi
 0058C78D    call        TCustomStyleServices.DrawText
 0058C792    mov         ebx,eax
>0058C794    jmp         0058C798
 0058C796    xor         ebx,ebx
 0058C798    mov         eax,ebx
 0058C79A    pop         edi
 0058C79B    pop         esi
 0058C79C    pop         ebx
 0058C79D    mov         esp,ebp
 0058C79F    pop         ebp
 0058C7A0    ret         18
*}
end;

//0058C7A4
function TUxThemeCategoryPanelGroupElements.GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;
begin
{*
 0058C7A4    push        ebp
 0058C7A5    mov         ebp,esp
 0058C7A7    mov         al,1
 0058C7A9    movzx       edx,byte ptr [ebp+10]
 0058C7AD    sub         dl,2
>0058C7B0    je          0058C7C5
 0058C7B2    dec         dl
>0058C7B4    je          0058C7DC
 0058C7B6    add         dl,0FE
 0058C7B9    sub         dl,3
>0058C7BC    jb          0058C805
 0058C7BE    sub         dl,3
>0058C7C1    jb          0058C81A
>0058C7C3    jmp         0058C82F
 0058C7C5    movzx       edx,byte ptr [ebp+0C]
 0058C7C9    dec         dl
>0058C7CB    jne         0058C7D8
 0058C7CD    mov         edx,dword ptr [ebp+8]
 0058C7D0    mov         dword ptr [edx],1FFFFFFF
>0058C7D6    jmp         0058C831
 0058C7D8    xor         eax,eax
>0058C7DA    jmp         0058C831
 0058C7DC    movzx       edx,byte ptr [ebp+0C]
 0058C7E0    sub         dl,9
>0058C7E3    je          0058C7EB
 0058C7E5    dec         dl
>0058C7E7    je          0058C7F6
>0058C7E9    jmp         0058C801
 0058C7EB    mov         edx,dword ptr [ebp+8]
 0058C7EE    mov         dword ptr [edx],1FFFFFFF
>0058C7F4    jmp         0058C831
 0058C7F6    mov         edx,dword ptr [ebp+8]
 0058C7F9    mov         dword ptr [edx],1FFFFFFF
>0058C7FF    jmp         0058C831
 0058C801    xor         eax,eax
>0058C803    jmp         0058C831
 0058C805    cmp         byte ptr [ebp+0C],1
>0058C809    jne         0058C816
 0058C80B    mov         edx,dword ptr [ebp+8]
 0058C80E    mov         dword ptr [edx],1FFFFFFF
>0058C814    jmp         0058C831
 0058C816    xor         eax,eax
>0058C818    jmp         0058C831
 0058C81A    cmp         byte ptr [ebp+0C],1
>0058C81E    jne         0058C82B
 0058C820    mov         edx,dword ptr [ebp+8]
 0058C823    mov         dword ptr [edx],1FFFFFFF
>0058C829    jmp         0058C831
 0058C82B    xor         eax,eax
>0058C82D    jmp         0058C831
 0058C82F    xor         eax,eax
 0058C831    pop         ebp
 0058C832    ret         0C
*}
end;

//0058C838
function TUxThemeCategoryPanelGroupElements.GetElementSize(Style:TCustomStyleServices; DC:HDC; Size:TSize; ElementSize:TElementSize; Rect:PRect; State:Integer; Part:Integer):Boolean;
begin
{*
 0058C838    push        ebp
 0058C839    mov         ebp,esp
 0058C83B    add         esp,0FFFFFFE4
 0058C83E    push        ebx
 0058C83F    push        esi
 0058C840    mov         dword ptr [ebp-4],ecx
 0058C843    mov         esi,edx
 0058C845    mov         bl,1
 0058C847    mov         byte ptr [ebp-5],0
 0058C84B    movzx       eax,byte ptr [ebp+14]
 0058C84F    add         eax,0FFFFFFFB
 0058C852    cmp         eax,0E
>0058C855    ja          0058C8F4
 0058C85B    jmp         dword ptr [eax*4+58C862]
 0058C85B    dd          0058C89E
 0058C85B    dd          0058C89E
 0058C85B    dd          0058C89E
 0058C85B    dd          0058C89E
 0058C85B    dd          0058C89E
 0058C85B    dd          0058C89E
 0058C85B    dd          0058C89E
 0058C85B    dd          0058C89E
 0058C85B    dd          0058C89E
 0058C85B    dd          0058C8D0
 0058C85B    dd          0058C8D6
 0058C85B    dd          0058C8DC
 0058C85B    dd          0058C8E2
 0058C85B    dd          0058C8E8
 0058C85B    dd          0058C8EE
 0058C89E    cmp         byte ptr [ebp+0C],1
>0058C8A2    jne         0058C8C9
 0058C8A4    lea         eax,[ebp-10]
 0058C8A7    mov         ecx,10
 0058C8AC    mov         edx,10
 0058C8B1    call        0040EBD4
 0058C8B6    mov         eax,dword ptr [ebp+8]
 0058C8B9    mov         edx,dword ptr [ebp-10]
 0058C8BC    mov         dword ptr [eax],edx;TSize.cx:LongInt
 0058C8BE    mov         edx,dword ptr [ebp-0C]
 0058C8C1    mov         dword ptr [eax+4],edx
>0058C8C4    jmp         0058C962
 0058C8C9    xor         ebx,ebx
>0058C8CB    jmp         0058C962
 0058C8D0    mov         byte ptr [ebp-5],8
>0058C8D4    jmp         0058C8F6
 0058C8D6    mov         byte ptr [ebp-5],9
>0058C8DA    jmp         0058C8F6
 0058C8DC    mov         byte ptr [ebp-5],0A
>0058C8E0    jmp         0058C8F6
 0058C8E2    mov         byte ptr [ebp-5],15
>0058C8E6    jmp         0058C8F6
 0058C8E8    mov         byte ptr [ebp-5],16
>0058C8EC    jmp         0058C8F6
 0058C8EE    mov         byte ptr [ebp-5],17
>0058C8F2    jmp         0058C8F6
 0058C8F4    xor         ebx,ebx
 0058C8F6    test        bl,bl
>0058C8F8    je          0058C962
 0058C8FA    cmp         byte ptr [ebp+0C],1
>0058C8FE    jne         0058C960
 0058C900    cmp         dword ptr [ebp+10],0
>0058C904    je          0058C935
 0058C906    mov         eax,dword ptr [ebp+10]
 0058C909    push        eax
 0058C90A    movzx       eax,byte ptr [ebp+0C]
 0058C90E    push        eax
 0058C90F    mov         eax,dword ptr [ebp+8]
 0058C912    push        eax
 0058C913    movzx       edx,byte ptr [ebp-5]
 0058C917    lea         ecx,[ebp-1C]
 0058C91A    mov         eax,esi
 0058C91C    mov         ebx,dword ptr [eax]
 0058C91E    call        dword ptr [ebx+88];TCustomStyleServices.GetElementDetails
 0058C924    lea         ecx,[ebp-1C]
 0058C927    mov         edx,dword ptr [ebp-4]
 0058C92A    mov         eax,esi
 0058C92C    call        TCustomStyleServices.GetElementSize
 0058C931    mov         ebx,eax
>0058C933    jmp         0058C962
 0058C935    movzx       eax,byte ptr [ebp+0C]
 0058C939    push        eax
 0058C93A    mov         eax,dword ptr [ebp+8]
 0058C93D    push        eax
 0058C93E    movzx       edx,byte ptr [ebp-5]
 0058C942    lea         ecx,[ebp-1C]
 0058C945    mov         eax,esi
 0058C947    mov         ebx,dword ptr [eax]
 0058C949    call        dword ptr [ebx+88];TCustomStyleServices.GetElementDetails
 0058C94F    lea         ecx,[ebp-1C]
 0058C952    mov         edx,dword ptr [ebp-4]
 0058C955    mov         eax,esi
 0058C957    call        TCustomStyleServices.GetElementSize
 0058C95C    mov         ebx,eax
>0058C95E    jmp         0058C962
 0058C960    xor         ebx,ebx
 0058C962    mov         eax,ebx
 0058C964    pop         esi
 0058C965    pop         ebx
 0058C966    mov         esp,ebp
 0058C968    pop         ebp
 0058C969    ret         14
*}
end;

//0058C96C
procedure TUxThemePanelElements.DrawText(Style:TCustomStyleServices; DC:HDC; Options:TStyleTextOptions; Flags:TTextFormat; var R:TRect; S:string; State:Integer; Part:Integer);
begin
{*
 0058C96C    push        ebp
 0058C96D    mov         ebp,esp
 0058C96F    add         esp,0FFFFFFD4
 0058C972    push        ebx
 0058C973    push        esi
 0058C974    push        edi
 0058C975    mov         esi,dword ptr [ebp+8]
 0058C978    lea         edi,[ebp-20]
 0058C97B    push        ecx
 0058C97C    mov         ecx,8
 0058C981    rep movs    dword ptr [edi],dword ptr [esi]
 0058C983    pop         ecx
 0058C984    mov         esi,ecx
 0058C986    mov         ebx,edx
 0058C988    mov         eax,dword ptr [ebp+14]
 0058C98B    push        eax
 0058C98C    mov         eax,dword ptr [ebp+10]
 0058C98F    push        eax
 0058C990    mov         eax,dword ptr [ebp+0C]
 0058C993    push        eax
 0058C994    lea         eax,[ebp-20]
 0058C997    push        eax
 0058C998    lea         ecx,[ebp-2C]
 0058C99B    mov         dl,2
 0058C99D    mov         eax,ebx
 0058C99F    mov         edi,dword ptr [eax]
 0058C9A1    call        dword ptr [edi+84];TCustomStyleServices.GetElementDetails
 0058C9A7    lea         ecx,[ebp-2C]
 0058C9AA    mov         edx,esi
 0058C9AC    mov         eax,ebx
 0058C9AE    call        TCustomStyleServices.DrawText
 0058C9B3    pop         edi
 0058C9B4    pop         esi
 0058C9B5    pop         ebx
 0058C9B6    mov         esp,ebp
 0058C9B8    pop         ebp
 0058C9B9    ret         18
*}
end;

//0058C9BC
function TUxThemePanelElements.GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;
begin
{*
 0058C9BC    push        ebp
 0058C9BD    mov         ebp,esp
 0058C9BF    mov         al,1
 0058C9C1    movzx       edx,byte ptr [ebp+10]
 0058C9C5    sub         dl,2
>0058C9C8    je          0058C9E2
 0058C9CA    dec         dl
>0058C9CC    je          0058CA13
 0058C9CE    dec         edx
 0058C9CF    sub         dl,4
>0058C9D2    jb          0058CA45
 0058C9D4    sub         dl,2
>0058C9D7    jb          0058CA7E
>0058C9DD    jmp         0058CAE9
 0058C9E2    movzx       edx,byte ptr [ebp+0C]
 0058C9E6    dec         dl
>0058C9E8    je          0058C9F0
 0058C9EA    dec         dl
>0058C9EC    je          0058C9FE
>0058C9EE    jmp         0058CA0C
 0058C9F0    mov         edx,dword ptr [ebp+8]
 0058C9F3    mov         dword ptr [edx],1FFFFFFF
>0058C9F9    jmp         0058CAEB
 0058C9FE    mov         edx,dword ptr [ebp+8]
 0058CA01    mov         dword ptr [edx],1FFFFFFF
>0058CA07    jmp         0058CAEB
 0058CA0C    xor         eax,eax
>0058CA0E    jmp         0058CAEB
 0058CA13    movzx       edx,byte ptr [ebp+0C]
 0058CA17    sub         dl,4
>0058CA1A    je          0058CA22
 0058CA1C    dec         dl
>0058CA1E    je          0058CA30
>0058CA20    jmp         0058CA3E
 0058CA22    mov         edx,dword ptr [ebp+8]
 0058CA25    mov         dword ptr [edx],1FFFFFFF
>0058CA2B    jmp         0058CAEB
 0058CA30    mov         edx,dword ptr [ebp+8]
 0058CA33    mov         dword ptr [edx],1FFFFFFF
>0058CA39    jmp         0058CAEB
 0058CA3E    xor         eax,eax
>0058CA40    jmp         0058CAEB
 0058CA45    movzx       edx,byte ptr [ebp+0C]
 0058CA49    sub         dl,1
>0058CA4C    jb          0058CA56
>0058CA4E    je          0058CA64
 0058CA50    dec         dl
>0058CA52    je          0058CA6F
>0058CA54    jmp         0058CA7A
 0058CA56    mov         edx,dword ptr [ebp+8]
 0058CA59    mov         dword ptr [edx],1FFFFFFF
>0058CA5F    jmp         0058CAEB
 0058CA64    mov         edx,dword ptr [ebp+8]
 0058CA67    mov         dword ptr [edx],1FFFFFFF
>0058CA6D    jmp         0058CAEB
 0058CA6F    mov         edx,dword ptr [ebp+8]
 0058CA72    mov         dword ptr [edx],1FFFFFFF
>0058CA78    jmp         0058CAEB
 0058CA7A    xor         eax,eax
>0058CA7C    jmp         0058CAEB
 0058CA7E    movzx       edx,byte ptr [ebp+0C]
 0058CA82    cmp         edx,7
>0058CA85    ja          0058CAE5
 0058CA87    jmp         dword ptr [edx*4+58CA8E]
 0058CA87    dd          0058CAE5
 0058CA87    dd          0058CADA
 0058CA87    dd          0058CAE5
 0058CA87    dd          0058CAE5
 0058CA87    dd          0058CAC4
 0058CA87    dd          0058CAB9
 0058CA87    dd          0058CACF
 0058CA87    dd          0058CAAE
 0058CAAE    mov         edx,dword ptr [ebp+8]
 0058CAB1    mov         dword ptr [edx],1FFFFFFF
>0058CAB7    jmp         0058CAEB
 0058CAB9    mov         edx,dword ptr [ebp+8]
 0058CABC    mov         dword ptr [edx],1FFFFFFF
>0058CAC2    jmp         0058CAEB
 0058CAC4    mov         edx,dword ptr [ebp+8]
 0058CAC7    mov         dword ptr [edx],1FFFFFFF
>0058CACD    jmp         0058CAEB
 0058CACF    mov         edx,dword ptr [ebp+8]
 0058CAD2    mov         dword ptr [edx],1FFFFFFF
>0058CAD8    jmp         0058CAEB
 0058CADA    mov         edx,dword ptr [ebp+8]
 0058CADD    mov         dword ptr [edx],1FFFFFFF
>0058CAE3    jmp         0058CAEB
 0058CAE5    xor         eax,eax
>0058CAE7    jmp         0058CAEB
 0058CAE9    xor         eax,eax
 0058CAEB    pop         ebp
 0058CAEC    ret         0C
*}
end;

//0058CAF0
function TUxThemeCheckListBoxElements.GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;
begin
{*
 0058CAF0    push        ebp
 0058CAF1    mov         ebp,esp
 0058CAF3    mov         al,1
 0058CAF5    movzx       edx,byte ptr [ebp+10]
 0058CAF9    sub         dl,2
>0058CAFC    je          0058CB0F
 0058CAFE    dec         dl
>0058CB00    je          0058CB27
 0058CB02    dec         dl
>0058CB04    je          0058CB3F
 0058CB06    dec         dl
>0058CB08    je          0058CB67
>0058CB0A    jmp         0058CB8F
 0058CB0F    movzx       edx,byte ptr [ebp+0C]
 0058CB13    sub         dl,2
>0058CB16    jne         0058CB23
 0058CB18    mov         edx,dword ptr [ebp+8]
 0058CB1B    mov         dword ptr [edx],1FFFFFFF
>0058CB21    jmp         0058CB91
 0058CB23    xor         eax,eax
>0058CB25    jmp         0058CB91
 0058CB27    movzx       edx,byte ptr [ebp+0C]
 0058CB2B    sub         dl,2
>0058CB2E    jne         0058CB3B
 0058CB30    mov         edx,dword ptr [ebp+8]
 0058CB33    mov         dword ptr [edx],1FFFFFFF
>0058CB39    jmp         0058CB91
 0058CB3B    xor         eax,eax
>0058CB3D    jmp         0058CB91
 0058CB3F    movzx       edx,byte ptr [ebp+0C]
 0058CB43    dec         dl
>0058CB45    je          0058CB4D
 0058CB47    dec         dl
>0058CB49    je          0058CB58
>0058CB4B    jmp         0058CB63
 0058CB4D    mov         edx,dword ptr [ebp+8]
 0058CB50    mov         dword ptr [edx],1FFFFFFF
>0058CB56    jmp         0058CB91
 0058CB58    mov         edx,dword ptr [ebp+8]
 0058CB5B    mov         dword ptr [edx],1FFFFFFF
>0058CB61    jmp         0058CB91
 0058CB63    xor         eax,eax
>0058CB65    jmp         0058CB91
 0058CB67    movzx       edx,byte ptr [ebp+0C]
 0058CB6B    dec         dl
>0058CB6D    je          0058CB75
 0058CB6F    dec         dl
>0058CB71    je          0058CB80
>0058CB73    jmp         0058CB8B
 0058CB75    mov         edx,dword ptr [ebp+8]
 0058CB78    mov         dword ptr [edx],1FFFFFFF
>0058CB7E    jmp         0058CB91
 0058CB80    mov         edx,dword ptr [ebp+8]
 0058CB83    mov         dword ptr [edx],1FFFFFFF
>0058CB89    jmp         0058CB91
 0058CB8B    xor         eax,eax
>0058CB8D    jmp         0058CB91
 0058CB8F    xor         eax,eax
 0058CB91    pop         ebp
 0058CB92    ret         0C
*}
end;

//0058CB98
function TStyleElementEdges.&op_Implicit:TElementEdges;
begin
{*
 0058CB98    push        ecx
 0058CB99    mov         byte ptr [esp],al
 0058CB9C    movzx       eax,byte ptr [esp]
 0058CBA0    pop         edx
 0058CBA1    ret
*}
end;

//0058CBA4
function TStyleElementEdges.&op_Implicit:TStyleElementEdges;
begin
{*
 0058CBA4    push        ecx
 0058CBA5    mov         byte ptr [esp],al
 0058CBA8    movzx       eax,byte ptr [esp]
 0058CBAC    mov         byte ptr [esp+1],al
 0058CBB0    movzx       eax,byte ptr [esp+1]
 0058CBB5    pop         edx
 0058CBB6    ret
*}
end;

//0058CBB8
function TStyleElementEdges.&op_Implicit:Cardinal;
begin
{*
 0058CBB8    push        ebx
 0058CBB9    push        esi
 0058CBBA    push        ecx
 0058CBBB    mov         byte ptr [esp],al
 0058CBBE    xor         esi,esi
 0058CBC0    xor         eax,eax
 0058CBC2    mov         edx,7A1AE0
 0058CBC7    mov         ecx,eax
 0058CBC9    cmp         cl,7
>0058CBCC    ja          0058CBD8
 0058CBCE    and         ecx,7F
 0058CBD1    movzx       ebx,byte ptr [esp]
 0058CBD5    bt          ebx,ecx
>0058CBD8    jae         0058CBDC
 0058CBDA    or          esi,dword ptr [edx]
 0058CBDC    inc         eax
 0058CBDD    add         edx,4
 0058CBE0    cmp         al,8
>0058CBE2    jne         0058CBC7
 0058CBE4    mov         eax,esi
 0058CBE6    pop         edx
 0058CBE7    pop         esi
 0058CBE8    pop         ebx
 0058CBE9    ret
*}
end;

//0058CBEC
function TStyleElementEdges.&op_Implicit:TStyleElementEdges;
begin
{*
 0058CBEC    push        ebx
 0058CBED    push        ecx
 0058CBEE    mov         ebx,eax
 0058CBF0    movzx       eax,byte ptr ds:[58CC80]
 0058CBF7    mov         byte ptr [esp],al
 0058CBFA    mov         eax,1
 0058CBFF    and         eax,ebx
 0058CC01    cmp         eax,1
>0058CC04    jne         0058CC0A
 0058CC06    or          byte ptr [esp],4
 0058CC0A    mov         eax,2
 0058CC0F    and         eax,ebx
 0058CC11    cmp         eax,2
>0058CC14    jne         0058CC1A
 0058CC16    or          byte ptr [esp],8
 0058CC1A    mov         eax,4
 0058CC1F    and         eax,ebx
 0058CC21    cmp         eax,4
>0058CC24    jne         0058CC2A
 0058CC26    or          byte ptr [esp],1
 0058CC2A    mov         eax,8
 0058CC2F    and         eax,ebx
 0058CC31    cmp         eax,8
>0058CC34    jne         0058CC3A
 0058CC36    or          byte ptr [esp],2
 0058CC3A    mov         eax,5
 0058CC3F    and         eax,ebx
 0058CC41    cmp         eax,5
>0058CC44    jne         0058CC4A
 0058CC46    or          byte ptr [esp],40
 0058CC4A    mov         eax,0A
 0058CC4F    and         eax,ebx
 0058CC51    cmp         eax,0A
>0058CC54    jne         0058CC5A
 0058CC56    or          byte ptr [esp],80
 0058CC5A    mov         eax,6
 0058CC5F    and         eax,ebx
 0058CC61    cmp         eax,6
>0058CC64    jne         0058CC6A
 0058CC66    or          byte ptr [esp],20
 0058CC6A    and         ebx,9
 0058CC6D    cmp         ebx,9
>0058CC70    jne         0058CC76
 0058CC72    or          byte ptr [esp],10
 0058CC76    movzx       eax,byte ptr [esp]
 0058CC7A    pop         edx
 0058CC7B    pop         ebx
 0058CC7C    ret
*}
end;

//0058CC84
function TStyleElementEdgeFlags.&op_Implicit:TElementEdgeFlags;
begin
{*
 0058CC84    push        ecx
 0058CC85    mov         dword ptr [esp],eax
 0058CC88    mov         eax,dword ptr [esp]
 0058CC8B    pop         edx
 0058CC8C    ret
*}
end;

//0058CC90
function TStyleElementEdgeFlags.&op_Implicit:TStyleElementEdgeFlags;
begin
{*
 0058CC90    add         esp,0FFFFFFF8
 0058CC93    mov         dword ptr [esp],eax
 0058CC96    mov         eax,dword ptr [esp]
 0058CC99    mov         dword ptr [esp+4],eax
 0058CC9D    mov         eax,dword ptr [esp+4]
 0058CCA1    pop         ecx
 0058CCA2    pop         edx
 0058CCA3    ret
*}
end;

//0058CCA4
function TStyleElementEdgeFlags.&op_Implicit:Cardinal;
begin
{*
 0058CCA4    push        esi
 0058CCA5    push        ecx
 0058CCA6    mov         dword ptr [esp],eax
 0058CCA9    xor         esi,esi
 0058CCAB    xor         eax,eax
 0058CCAD    mov         edx,7A1B00
 0058CCB2    mov         ecx,eax
 0058CCB4    cmp         cl,1F
>0058CCB7    ja          0058CCC0
 0058CCB9    and         ecx,7F
 0058CCBC    bt          dword ptr [esp],ecx
>0058CCC0    jae         0058CCC4
 0058CCC2    or          esi,dword ptr [edx]
 0058CCC4    inc         eax
 0058CCC5    add         edx,4
 0058CCC8    cmp         al,13
>0058CCCA    jne         0058CCB2
 0058CCCC    mov         eax,esi
 0058CCCE    pop         edx
 0058CCCF    pop         esi
 0058CCD0    ret
*}
end;

//0058CCD4
function TStyleElementEdgeFlags.&op_Implicit:TStyleElementEdgeFlags;
begin
{*
 0058CCD4    push        ebx
 0058CCD5    push        esi
 0058CCD6    push        ecx
 0058CCD7    mov         ebx,eax
 0058CCD9    mov         esi,esp
 0058CCDB    mov         eax,[0058CE34]
 0058CCE0    mov         dword ptr [esi],eax
 0058CCE2    mov         eax,1
 0058CCE7    and         eax,ebx
 0058CCE9    cmp         eax,1
>0058CCEC    jne         0058CCF1
 0058CCEE    or          dword ptr [esi],1
 0058CCF1    mov         eax,2
 0058CCF6    and         eax,ebx
 0058CCF8    cmp         eax,2
>0058CCFB    jne         0058CD00
 0058CCFD    or          dword ptr [esi],2
 0058CD00    mov         eax,4
 0058CD05    and         eax,ebx
 0058CD07    cmp         eax,4
>0058CD0A    jne         0058CD0F
 0058CD0C    or          dword ptr [esi],4
 0058CD0F    mov         eax,8
 0058CD14    and         eax,ebx
 0058CD16    cmp         eax,8
>0058CD19    jne         0058CD1E
 0058CD1B    or          dword ptr [esi],8
 0058CD1E    mov         eax,3
 0058CD23    and         eax,ebx
 0058CD25    cmp         eax,3
>0058CD28    jne         0058CD2D
 0058CD2A    or          dword ptr [esi],10
 0058CD2D    mov         eax,6
 0058CD32    and         eax,ebx
 0058CD34    cmp         eax,6
>0058CD37    jne         0058CD3C
 0058CD39    or          dword ptr [esi],20
 0058CD3C    mov         eax,9
 0058CD41    and         eax,ebx
 0058CD43    cmp         eax,9
>0058CD46    jne         0058CD4B
 0058CD48    or          dword ptr [esi],40
 0058CD4B    mov         eax,0C
 0058CD50    and         eax,ebx
 0058CD52    cmp         eax,0C
>0058CD55    jne         0058CD5D
 0058CD57    or          dword ptr [esi],80
 0058CD5D    mov         eax,0F
 0058CD62    and         eax,ebx
 0058CD64    cmp         eax,0F
>0058CD67    jne         0058CD6F
 0058CD69    or          dword ptr [esi],100
 0058CD6F    mov         eax,10
 0058CD74    and         eax,ebx
 0058CD76    cmp         eax,10
>0058CD79    jne         0058CD81
 0058CD7B    or          dword ptr [esi],200
 0058CD81    mov         eax,16
 0058CD86    and         eax,ebx
 0058CD88    cmp         eax,16
>0058CD8B    jne         0058CD93
 0058CD8D    or          dword ptr [esi],400
 0058CD93    mov         eax,13
 0058CD98    and         eax,ebx
 0058CD9A    cmp         eax,13
>0058CD9D    jne         0058CDA5
 0058CD9F    or          dword ptr [esi],800
 0058CDA5    mov         eax,19
 0058CDAA    and         eax,ebx
 0058CDAC    cmp         eax,19
>0058CDAF    jne         0058CDB7
 0058CDB1    or          dword ptr [esi],1000
 0058CDB7    mov         eax,1C
 0058CDBC    and         eax,ebx
 0058CDBE    cmp         eax,1C
>0058CDC1    jne         0058CDC9
 0058CDC3    or          dword ptr [esi],2000
 0058CDC9    mov         eax,800
 0058CDCE    and         eax,ebx
 0058CDD0    cmp         eax,800
>0058CDD5    jne         0058CDDD
 0058CDD7    or          dword ptr [esi],4000
 0058CDDD    mov         eax,1000
 0058CDE2    and         eax,ebx
 0058CDE4    cmp         eax,1000
>0058CDE9    jne         0058CDF1
 0058CDEB    or          dword ptr [esi],8000
 0058CDF1    mov         eax,2000
 0058CDF6    and         eax,ebx
 0058CDF8    cmp         eax,2000
>0058CDFD    jne         0058CE05
 0058CDFF    or          dword ptr [esi],10000
 0058CE05    mov         eax,4000
 0058CE0A    and         eax,ebx
 0058CE0C    cmp         eax,4000
>0058CE11    jne         0058CE19
 0058CE13    or          dword ptr [esi],20000
 0058CE19    and         ebx,8000
 0058CE1F    cmp         ebx,8000
>0058CE25    jne         0058CE2D
 0058CE27    or          dword ptr [esi],40000
 0058CE2D    mov         eax,dword ptr [esi]
 0058CE2F    pop         edx
 0058CE30    pop         esi
 0058CE31    pop         ebx
 0058CE32    ret
*}
end;

//0058CE38
function TUxThemeTabSetElements.GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;
begin
{*
 0058CE38    push        ebp
 0058CE39    mov         ebp,esp
 0058CE3B    mov         al,1
 0058CE3D    movzx       edx,byte ptr [ebp+10]
 0058CE41    sub         dl,2
>0058CE44    je          0058CE57
 0058CE46    dec         dl
>0058CE48    je          0058CE74
 0058CE4A    dec         dl
>0058CE4C    je          0058CEEB
>0058CE52    jmp         0058CF61
 0058CE57    movzx       edx,byte ptr [ebp+0C]
 0058CE5B    dec         dl
>0058CE5D    jne         0058CE6D
 0058CE5F    mov         edx,dword ptr [ebp+8]
 0058CE62    mov         dword ptr [edx],1FFFFFFF
>0058CE68    jmp         0058CF63
 0058CE6D    xor         eax,eax
>0058CE6F    jmp         0058CF63
 0058CE74    movzx       edx,byte ptr [ebp+0C]
 0058CE78    cmp         edx,7
>0058CE7B    ja          0058CEE7
 0058CE7D    jmp         dword ptr [edx*4+58CE84]
 0058CE7D    dd          0058CEE7
 0058CE7D    dd          0058CEA4
 0058CE7D    dd          0058CEDC
 0058CE7D    dd          0058CEE7
 0058CE7D    dd          0058CEE7
 0058CE7D    dd          0058CEC0
 0058CE7D    dd          0058CECE
 0058CE7D    dd          0058CEB2
 0058CEA4    mov         edx,dword ptr [ebp+8]
 0058CEA7    mov         dword ptr [edx],1FFFFFFF
>0058CEAD    jmp         0058CF63
 0058CEB2    mov         edx,dword ptr [ebp+8]
 0058CEB5    mov         dword ptr [edx],1FFFFFFF
>0058CEBB    jmp         0058CF63
 0058CEC0    mov         edx,dword ptr [ebp+8]
 0058CEC3    mov         dword ptr [edx],1FFFFFFF
>0058CEC9    jmp         0058CF63
 0058CECE    mov         edx,dword ptr [ebp+8]
 0058CED1    mov         dword ptr [edx],1FFFFFFF
>0058CED7    jmp         0058CF63
 0058CEDC    mov         edx,dword ptr [ebp+8]
 0058CEDF    mov         dword ptr [edx],1FFFFFFF
>0058CEE5    jmp         0058CF63
 0058CEE7    xor         eax,eax
>0058CEE9    jmp         0058CF63
 0058CEEB    movzx       edx,byte ptr [ebp+0C]
 0058CEEF    cmp         edx,7
>0058CEF2    ja          0058CF5D
 0058CEF4    jmp         dword ptr [edx*4+58CEFB]
 0058CEF4    dd          0058CF5D
 0058CEF4    dd          0058CF1B
 0058CEF4    dd          0058CF52
 0058CEF4    dd          0058CF5D
 0058CEF4    dd          0058CF47
 0058CEF4    dd          0058CF31
 0058CEF4    dd          0058CF3C
 0058CEF4    dd          0058CF26
 0058CF1B    mov         edx,dword ptr [ebp+8]
 0058CF1E    mov         dword ptr [edx],1FFFFFFF
>0058CF24    jmp         0058CF63
 0058CF26    mov         edx,dword ptr [ebp+8]
 0058CF29    mov         dword ptr [edx],1FFFFFFF
>0058CF2F    jmp         0058CF63
 0058CF31    mov         edx,dword ptr [ebp+8]
 0058CF34    mov         dword ptr [edx],1FFFFFFF
>0058CF3A    jmp         0058CF63
 0058CF3C    mov         edx,dword ptr [ebp+8]
 0058CF3F    mov         dword ptr [edx],1FFFFFFF
>0058CF45    jmp         0058CF63
 0058CF47    mov         edx,dword ptr [ebp+8]
 0058CF4A    mov         dword ptr [edx],1FFFFFFF
>0058CF50    jmp         0058CF63
 0058CF52    mov         edx,dword ptr [ebp+8]
 0058CF55    mov         dword ptr [edx],1FFFFFFF
>0058CF5B    jmp         0058CF63
 0058CF5D    xor         eax,eax
>0058CF5F    jmp         0058CF63
 0058CF61    xor         eax,eax
 0058CF63    pop         ebp
 0058CF64    ret         0C
*}
end;

//0058CF68
function TUxThemeControlBarElements.GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;
begin
{*
 0058CF68    push        ebp
 0058CF69    mov         ebp,esp
 0058CF6B    mov         al,1
 0058CF6D    movzx       edx,byte ptr [ebp+10]
 0058CF71    sub         dl,2
>0058CF74    jne         0058CF9F
 0058CF76    movzx       edx,byte ptr [ebp+0C]
 0058CF7A    sub         dl,9
>0058CF7D    je          0058CF85
 0058CF7F    dec         dl
>0058CF81    je          0058CF90
>0058CF83    jmp         0058CF9B
 0058CF85    mov         edx,dword ptr [ebp+8]
 0058CF88    mov         dword ptr [edx],1FFFFFFF
>0058CF8E    jmp         0058CFA1
 0058CF90    mov         edx,dword ptr [ebp+8]
 0058CF93    mov         dword ptr [edx],1FFFFFFF
>0058CF99    jmp         0058CFA1
 0058CF9B    xor         eax,eax
>0058CF9D    jmp         0058CFA1
 0058CF9F    xor         eax,eax
 0058CFA1    pop         ebp
 0058CFA2    ret         0C
*}
end;

//0058CFA8
function TUxThemeHintElements.GetElementColor(Style:TCustomStyleServices; Part:Integer; Color:TColor; ElementColor:TElementColor; State:Integer):Boolean;
begin
{*
 0058CFA8    push        ebp
 0058CFA9    mov         ebp,esp
 0058CFAB    mov         al,1
 0058CFAD    movzx       edx,byte ptr [ebp+10]
 0058CFB1    sub         dl,2
>0058CFB4    je          0058CFBF
 0058CFB6    dec         dl
>0058CFB8    je          0058CFF8
>0058CFBA    jmp         0058D040
 0058CFBF    movzx       edx,byte ptr [ebp+0C]
 0058CFC3    sub         dl,2
>0058CFC6    je          0058CFE9
 0058CFC8    sub         dl,7
>0058CFCB    je          0058CFD3
 0058CFCD    dec         dl
>0058CFCF    je          0058CFDE
>0058CFD1    jmp         0058CFF4
 0058CFD3    mov         edx,dword ptr [ebp+8]
 0058CFD6    mov         dword ptr [edx],1FFFFFFF
>0058CFDC    jmp         0058D042
 0058CFDE    mov         edx,dword ptr [ebp+8]
 0058CFE1    mov         dword ptr [edx],1FFFFFFF
>0058CFE7    jmp         0058D042
 0058CFE9    mov         edx,dword ptr [ebp+8]
 0058CFEC    mov         dword ptr [edx],1FFFFFFF
>0058CFF2    jmp         0058D042
 0058CFF4    xor         eax,eax
>0058CFF6    jmp         0058D042
 0058CFF8    movzx       edx,byte ptr [ebp+0C]
 0058CFFC    sub         dl,1
>0058CFFF    jb          0058D010
 0058D001    dec         dl
>0058D003    je          0058D031
 0058D005    sub         dl,7
>0058D008    je          0058D01B
 0058D00A    dec         dl
>0058D00C    je          0058D026
>0058D00E    jmp         0058D03C
 0058D010    mov         edx,dword ptr [ebp+8]
 0058D013    mov         dword ptr [edx],1FFFFFFF
>0058D019    jmp         0058D042
 0058D01B    mov         edx,dword ptr [ebp+8]
 0058D01E    mov         dword ptr [edx],1FFFFFFF
>0058D024    jmp         0058D042
 0058D026    mov         edx,dword ptr [ebp+8]
 0058D029    mov         dword ptr [edx],1FFFFFFF
>0058D02F    jmp         0058D042
 0058D031    mov         edx,dword ptr [ebp+8]
 0058D034    mov         dword ptr [edx],1FFFFFFF
>0058D03A    jmp         0058D042
 0058D03C    xor         eax,eax
>0058D03E    jmp         0058D042
 0058D040    xor         eax,eax
 0058D042    pop         ebp
 0058D043    ret         0C
*}
end;

//0058D048
constructor TStyleHook.Create;
begin
{*
 0058D048    push        ebx
 0058D049    push        esi
 0058D04A    push        edi
 0058D04B    test        dl,dl
>0058D04D    je          0058D057
 0058D04F    add         esp,0FFFFFFF0
 0058D052    call        @ClassCreate
 0058D057    mov         ebx,edx
 0058D059    mov         edi,eax
 0058D05B    mov         dword ptr [edi+8],ecx
 0058D05E    mov         byte ptr [edi+0C],0
 0058D062    mov         byte ptr [edi+17],0
 0058D066    mov         byte ptr [edi+16],0
 0058D06A    mov         byte ptr [edi+18],0
 0058D06E    mov         byte ptr [edi+0D],0
 0058D072    mov         byte ptr [edi+15],0
 0058D076    mov         byte ptr [edi+19],0
 0058D07A    mov         byte ptr [edi+14],0
 0058D07E    mov         byte ptr [edi+0F],0
 0058D082    mov         dl,1
 0058D084    mov         eax,[004BE308];TBrush
 0058D089    call        TBrush.Create
 0058D08E    mov         dword ptr [edi+4],eax
 0058D091    call        TStyleManager.GetActiveStyle
 0058D096    mov         esi,eax
 0058D098    mov         dl,1D
 0058D09A    mov         eax,esi
 0058D09C    call        TCustomStyleServices.GetStyleColor
 0058D0A1    mov         edx,eax
 0058D0A3    mov         eax,dword ptr [edi+4]
 0058D0A6    call        TBrush.SetColor
 0058D0AB    call        TStyleManager.GetActiveStyle
 0058D0B0    mov         esi,eax
 0058D0B2    mov         edx,0FF000008
 0058D0B7    mov         eax,esi
 0058D0B9    call        TCustomStyleServices.GetSystemColor
 0058D0BE    mov         dword ptr [edi+10],eax
 0058D0C1    mov         eax,edi
 0058D0C3    test        bl,bl
>0058D0C5    je          0058D0D6
 0058D0C7    call        @AfterConstruction
 0058D0CC    pop         dword ptr fs:[0]
 0058D0D3    add         esp,0C
 0058D0D6    mov         eax,edi
 0058D0D8    pop         edi
 0058D0D9    pop         esi
 0058D0DA    pop         ebx
 0058D0DB    ret
*}
end;

//0058D0DC
destructor TStyleHook.Destroy();
begin
{*
 0058D0DC    push        ebx
 0058D0DD    push        esi
 0058D0DE    call        @BeforeDestruction
 0058D0E3    mov         ebx,edx
 0058D0E5    mov         esi,eax
 0058D0E7    mov         eax,dword ptr [esi+4]
 0058D0EA    call        TObject.Free
 0058D0EF    mov         dl,0FC
 0058D0F1    and         dl,bl
 0058D0F3    mov         eax,esi
 0058D0F5    call        TObject.Destroy
 0058D0FA    test        bl,bl
>0058D0FC    jle         0058D105
 0058D0FE    mov         eax,esi
 0058D100    call        @ClassDestroy
 0058D105    pop         esi
 0058D106    pop         ebx
 0058D107    ret
*}
end;

//0058D108
procedure TStyleHook.CallDefaultProc(var Msg:Messages.TMessage);
begin
{*
 0058D108    push        ebx
 0058D109    push        esi
 0058D10A    mov         ebx,eax
 0058D10C    cmp         byte ptr [ebx+0C],0
>0058D110    je          0058D11E
 0058D112    mov         ebx,dword ptr [ebx+8]
 0058D115    mov         eax,dword ptr [ebx+4C]
 0058D118    call        dword ptr [ebx+48]
 0058D11B    pop         esi
 0058D11C    pop         ebx
 0058D11D    ret
 0058D11E    mov         byte ptr [ebx+0C],1
 0058D122    mov         esi,dword ptr [ebx+8]
 0058D125    mov         eax,dword ptr [esi+4C]
 0058D128    call        dword ptr [esi+48]
 0058D12B    mov         byte ptr [ebx+0C],0
 0058D12F    pop         esi
 0058D130    pop         ebx
 0058D131    ret
*}
end;

//0058D134
procedure TStyleHook.DrawControlText(Canvas:TCanvas; Details:TThemedElementDetails; Flags:Cardinal; var R:TRect; S:string);
begin
{*
 0058D134    push        ebp
 0058D135    mov         ebp,esp
 0058D137    add         esp,0FFFFFFEC
 0058D13A    push        ebx
 0058D13B    push        esi
 0058D13C    push        edi
 0058D13D    mov         esi,ecx
 0058D13F    lea         edi,[ebp-14]
 0058D142    movs        dword ptr [edi],dword ptr [esi]
 0058D143    movs        dword ptr [edi],dword ptr [esi]
 0058D144    movs        dword ptr [edi],dword ptr [esi]
 0058D145    mov         ebx,edx
 0058D147    mov         esi,eax
 0058D149    mov         eax,dword ptr [esi+8];TStyleHook.FControl:TWinControl
 0058D14C    mov         edx,dword ptr [eax+74];TWinControl.FFont:TFont
 0058D14F    mov         eax,ebx
 0058D151    call        TCanvas.SetFont
 0058D156    mov         eax,dword ptr [ebp+8]
 0058D159    call        TTextFormatFlags.&op_Implicit
 0058D15E    mov         dword ptr [ebp-8],eax
 0058D161    call        TStyleManager.GetActiveStyle
 0058D166    mov         edi,eax
 0058D168    lea         eax,[ebp-4]
 0058D16B    push        eax
 0058D16C    mov         cl,2
 0058D16E    lea         edx,[ebp-14]
 0058D171    mov         eax,edi
 0058D173    call        TCustomStyleServices.GetElementColor
 0058D178    test        al,al
>0058D17A    je          0058D1D3
 0058D17C    mov         eax,dword ptr [esi+8];TStyleHook.FControl:TWinControl
 0058D17F    mov         edx,dword ptr [eax]
 0058D181    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0058D184    test        al,al
>0058D186    je          0058D194
 0058D188    mov         eax,dword ptr [esi+8];TStyleHook.FControl:TWinControl
 0058D18B    test        byte ptr [eax+188],1;TWinControl.FStyleElements:TStyleElements
>0058D192    je          0058D19F
 0058D194    mov         edx,dword ptr [ebp-4]
 0058D197    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 0058D19A    call        TFont.SetColor
 0058D19F    call        TStyleManager.GetActiveStyle
 0058D1A4    mov         esi,eax
 0058D1A6    mov         eax,dword ptr [ebp+10]
 0058D1A9    push        eax
 0058D1AA    mov         eax,dword ptr [ebp+0C]
 0058D1AD    push        eax
 0058D1AE    mov         eax,dword ptr [ebp-8]
 0058D1B1    call        TTextFormatFlags.&op_Implicit
 0058D1B6    push        eax
 0058D1B7    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 0058D1BA    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 0058D1BD    push        eax
 0058D1BE    mov         eax,ebx
 0058D1C0    call        TCanvas.GetHandle
 0058D1C5    mov         edx,eax
 0058D1C7    lea         ecx,[ebp-14]
 0058D1CA    mov         eax,esi
 0058D1CC    call        TCustomStyleServices.DrawText
>0058D1D1    jmp         0058D20D
 0058D1D3    mov         eax,ebx
 0058D1D5    mov         edx,dword ptr [eax]
 0058D1D7    call        dword ptr [edx+80];TCanvas.Refresh
 0058D1DD    call        TStyleManager.GetActiveStyle
 0058D1E2    mov         esi,eax
 0058D1E4    mov         eax,dword ptr [ebp+10]
 0058D1E7    push        eax
 0058D1E8    mov         eax,dword ptr [ebp+0C]
 0058D1EB    push        eax
 0058D1EC    mov         eax,dword ptr [ebp-8]
 0058D1EF    call        TTextFormatFlags.&op_Implicit
 0058D1F4    push        eax
 0058D1F5    push        1FFFFFFF
 0058D1FA    mov         eax,ebx
 0058D1FC    call        TCanvas.GetHandle
 0058D201    mov         edx,eax
 0058D203    lea         ecx,[ebp-14]
 0058D206    mov         eax,esi
 0058D208    call        TCustomStyleServices.DrawText
 0058D20D    pop         edi
 0058D20E    pop         esi
 0058D20F    pop         ebx
 0058D210    mov         esp,ebp
 0058D212    pop         ebp
 0058D213    ret         0C
*}
end;

//0058D218
{*function sub_0058D218(?:?):?;
begin
 0058D218    push        esi
 0058D219    mov         esi,edx
 0058D21B    mov         dl,1
 0058D21D    mov         ecx,dword ptr [eax+8];TStyleHook.FControl:TWinControl
 0058D220    test        byte ptr [ecx+188],4;TWinControl.FStyleElements:TStyleElements
>0058D227    jne         0058D238
 0058D229    mov         ecx,dword ptr [esi]
 0058D22B    add         ecx,0FFFFFF7F
 0058D231    sub         ecx,29
>0058D234    jae         0058D238
 0058D236    xor         edx,edx
 0058D238    mov         eax,dword ptr [eax+8];TStyleHook.FControl:TWinControl
 0058D23B    test        byte ptr [eax+188],2;TWinControl.FStyleElements:TStyleElements
>0058D242    jne         0058D278
 0058D244    mov         eax,dword ptr [esi]
 0058D246    cmp         eax,1001
>0058D24B    jg          0058D265
>0058D24D    je          0058D276
 0058D24F    sub         eax,0F
>0058D252    je          0058D276
 0058D254    sub         eax,5
>0058D257    je          0058D276
 0058D259    add         eax,0FFFFFEE2
 0058D25E    sub         eax,7
>0058D261    jb          0058D276
>0058D263    jmp         0058D278
 0058D265    sub         eax,111D
>0058D26A    je          0058D276
 0058D26C    add         eax,0FFFF53EB
 0058D271    sub         eax,7
>0058D274    jae         0058D278
 0058D276    xor         edx,edx
 0058D278    mov         eax,edx
 0058D27A    pop         esi
 0058D27B    ret
end;*}

//0058D27C
function TStyleHook.HandleMessage(var Message:TMessage):Boolean;
begin
{*
 0058D27C    push        ebx
 0058D27D    push        esi
 0058D27E    push        edi
 0058D27F    mov         edi,edx
 0058D281    mov         esi,eax
 0058D283    xor         ebx,ebx
 0058D285    mov         edx,edi
 0058D287    mov         eax,esi
 0058D289    mov         ecx,dword ptr [eax]
 0058D28B    call        dword ptr [ecx];TStyleHook.sub_0058D218
 0058D28D    test        al,al
>0058D28F    je          0058D2EB
 0058D291    cmp         byte ptr [esi+0C],0;TStyleHook.FCallDefaultProc:Boolean
>0058D295    je          0058D2C8
 0058D297    cmp         byte ptr [esi+15],0;TStyleHook.FNeedsDefaultPaint:Boolean
>0058D29B    jne         0058D2EB
 0058D29D    mov         eax,dword ptr [edi]
 0058D29F    cmp         eax,85
>0058D2A4    jg          0058D2B4
>0058D2A6    je          0058D2C8
 0058D2A8    sub         eax,0F
>0058D2AB    je          0058D2C8
 0058D2AD    sub         eax,5
>0058D2B0    je          0058D2C8
>0058D2B2    jmp         0058D2EB
 0058D2B4    add         eax,0FFFFFECE
 0058D2B9    sub         eax,7
>0058D2BC    jb          0058D2C8
 0058D2BE    add         eax,0FFFF4407
 0058D2C3    sub         eax,7
>0058D2C6    jae         0058D2EB
 0058D2C8    mov         byte ptr [esi+14],0;TStyleHook.FHandled:Boolean
 0058D2CC    call        TStyleManager.GetActiveStyle
 0058D2D1    mov         ebx,eax
 0058D2D3    mov         eax,ebx
 0058D2D5    mov         edx,dword ptr [eax]
 0058D2D7    call        dword ptr [edx+48];@AbstractError
 0058D2DA    test        al,al
>0058D2DC    je          0058D2E7
 0058D2DE    mov         edx,edi
 0058D2E0    mov         eax,esi
 0058D2E2    mov         ecx,dword ptr [eax]
 0058D2E4    call        dword ptr [ecx+1C];TStyleHook.sub_0058D8DC
 0058D2E7    movzx       ebx,byte ptr [esi+14];TStyleHook.FHandled:Boolean
 0058D2EB    mov         eax,ebx
 0058D2ED    pop         edi
 0058D2EE    pop         esi
 0058D2EF    pop         ebx
 0058D2F0    ret
*}
end;

//0058D2F4
function TStyleHook.GetStringPropValue(const PropName:UnicodeString):UnicodeString;
begin
{*
 0058D2F4    push        ebx
 0058D2F5    push        esi
 0058D2F6    push        edi
 0058D2F7    mov         edi,ecx
 0058D2F9    mov         esi,edx
 0058D2FB    mov         ebx,eax
 0058D2FD    mov         eax,edi
 0058D2FF    call        @UStrClr
 0058D304    cmp         dword ptr [ebx+8],0
>0058D308    je          0058D34B
 0058D30A    mov         eax,esi
 0058D30C    mov         edx,58D35C;'Caption'
 0058D311    call        @UStrEqual
>0058D316    jne         0058D328
 0058D318    cmp         dword ptr [ebx+8],0
>0058D31C    je          0058D328
 0058D31E    mov         edx,edi
 0058D320    mov         eax,dword ptr [ebx+8]
 0058D323    call        TControl.GetText
 0058D328    mov         eax,dword ptr [ebx+8]
 0058D32B    mov         eax,dword ptr [eax]
 0058D32D    add         eax,0FFFFFFB8
 0058D330    mov         eax,dword ptr [eax]
 0058D332    mov         edx,esi
 0058D334    call        GetPropInfo
 0058D339    mov         esi,eax
 0058D33B    test        esi,esi
>0058D33D    je          0058D34B
 0058D33F    mov         ecx,edi
 0058D341    mov         edx,esi
 0058D343    mov         eax,dword ptr [ebx+8]
 0058D346    call        GetStrProp
 0058D34B    pop         edi
 0058D34C    pop         esi
 0058D34D    pop         ebx
 0058D34E    ret
*}
end;

//0058D36C
function TStyleHook.GetText:UnicodeString;
begin
{*
 0058D36C    push        ebx
 0058D36D    push        esi
 0058D36E    add         esp,0FFFFFE00
 0058D374    mov         esi,edx
 0058D376    mov         ebx,eax
 0058D378    mov         eax,ebx
 0058D37A    call        TStyleHook.GetHandle
 0058D37F    test        eax,eax
>0058D381    je          0058D3A7
 0058D383    push        100
 0058D388    lea         eax,[esp+4]
 0058D38C    push        eax
 0058D38D    mov         eax,ebx
 0058D38F    call        TStyleHook.GetHandle
 0058D394    push        eax
 0058D395    call        user32.GetWindowTextW
 0058D39A    mov         ecx,eax
 0058D39C    mov         edx,esp
 0058D39E    mov         eax,esi
 0058D3A0    call        @UStrFromPWCharLen
>0058D3A5    jmp         0058D3B5
 0058D3A7    mov         ecx,esi
 0058D3A9    mov         edx,58D3D4;'Caption'
 0058D3AE    mov         eax,ebx
 0058D3B0    call        TStyleHook.GetStringPropValue
 0058D3B5    lea         eax,[ebx+1C]
 0058D3B8    mov         edx,dword ptr [esi]
 0058D3BA    call        @UStrAsg
 0058D3BF    add         esp,200
 0058D3C5    pop         esi
 0058D3C6    pop         ebx
 0058D3C7    ret
*}
end;

//0058D3E4
{*procedure sub_0058D3E4(?:TMouseTrackControlStyleHook; ?:?);
begin
 0058D3E4    push        ebx
 0058D3E5    push        esi
 0058D3E6    push        edi
 0058D3E7    mov         ebx,edx
 0058D3E9    mov         edi,eax
 0058D3EB    mov         esi,dword ptr [edi+8];TMouseTrackControlStyleHook.FControl:TWinControl
 0058D3EE    cmp         byte ptr [esi+69],0;TWinControl.FVisible:Boolean
>0058D3F2    je          0058D415
 0058D3F4    mov         eax,esi
 0058D3F6    call        TWinControl.HandleAllocated
 0058D3FB    test        al,al
>0058D3FD    je          0058D415
 0058D3FF    push        0
 0058D401    movzx       eax,bl
 0058D404    push        eax
 0058D405    push        0B
 0058D407    mov         eax,dword ptr [edi+8];TMouseTrackControlStyleHook.FControl:TWinControl
 0058D40A    call        TWinControl.GetHandle
 0058D40F    push        eax
 0058D410    call        user32.SendMessageW
 0058D415    pop         edi
 0058D416    pop         esi
 0058D417    pop         ebx
 0058D418    ret
end;*}

//0058D41C
function TStyleHook.GetHandle:HWND;
begin
{*
 0058D41C    push        ebx
 0058D41D    mov         ebx,eax
 0058D41F    mov         eax,dword ptr [ebx+8]
 0058D422    call        TWinControl.HandleAllocated
 0058D427    test        al,al
>0058D429    je          0058D435
 0058D42B    mov         eax,dword ptr [ebx+8]
 0058D42E    call        TWinControl.GetHandle
 0058D433    pop         ebx
 0058D434    ret
 0058D435    xor         eax,eax
 0058D437    pop         ebx
 0058D438    ret
*}
end;

//0058D43C
function sub_0058D43C:Boolean;
begin
{*
 0058D43C    push        ebx
 0058D43D    mov         ebx,eax
 0058D43F    mov         eax,ebx
 0058D441    call        TStyleHook.GetHandle
 0058D446    push        0F0
 0058D448    push        eax
 0058D449    call        user32.GetWindowLongW
 0058D44E    and         eax,800000;gvar_00800000
 0058D453    cmp         eax,800000;gvar_00800000
>0058D458    jne         0058D45E
 0058D45A    mov         al,1
 0058D45C    pop         ebx
 0058D45D    ret
 0058D45E    mov         eax,ebx
 0058D460    call        TStyleHook.GetHandle
 0058D465    push        0EC
 0058D467    push        eax
 0058D468    call        user32.GetWindowLongW
 0058D46D    and         eax,200
 0058D472    cmp         eax,200
 0058D477    sete        al
 0058D47A    pop         ebx
 0058D47B    ret
*}
end;

//0058D47C
function sub_0058D47C:Boolean;
begin
{*
 0058D47C    call        TStyleHook.GetHandle
 0058D481    push        0EC
 0058D483    push        eax
 0058D484    call        user32.GetWindowLongW
 0058D489    and         eax,200
 0058D48E    cmp         eax,200
 0058D493    sete        al
 0058D496    ret
*}
end;

//0058D498
procedure TStyleHook.InvalidateNC;
begin
{*
 0058D498    push        ebx
 0058D499    mov         ebx,eax
 0058D49B    mov         eax,dword ptr [ebx+8]
 0058D49E    call        TWinControl.HandleAllocated
 0058D4A3    test        al,al
>0058D4A5    je          0058D4BD
 0058D4A7    push        0
 0058D4A9    push        0
 0058D4AB    push        85
 0058D4B0    mov         eax,ebx
 0058D4B2    call        TStyleHook.GetHandle
 0058D4B7    push        eax
 0058D4B8    call        user32.SendMessageW
 0058D4BD    pop         ebx
 0058D4BE    ret
*}
end;

//0058D4C0
procedure TStyleHook.Invalidate;
begin
{*
 0058D4C0    push        ebx
 0058D4C1    mov         ebx,eax
 0058D4C3    mov         eax,dword ptr [ebx+8]
 0058D4C6    call        TWinControl.HandleAllocated
 0058D4CB    test        al,al
>0058D4CD    je          0058D4ED
 0058D4CF    cmp         byte ptr [ebx+18],0
>0058D4D3    je          0058D4DC
 0058D4D5    mov         eax,ebx
 0058D4D7    mov         edx,dword ptr [eax]
 0058D4D9    call        dword ptr [edx+2C]
 0058D4DC    push        0
 0058D4DE    push        0
 0058D4E0    mov         eax,ebx
 0058D4E2    call        TStyleHook.GetHandle
 0058D4E7    push        eax
 0058D4E8    call        user32.InvalidateRect
 0058D4ED    pop         ebx
 0058D4EE    ret
*}
end;

//0058D4F0
{*function sub_0058D4F0:?;
begin
 0058D4F0    xor         eax,eax
 0058D4F2    ret
end;*}

//0058D4F4
procedure sub_0058D4F4;
begin
{*
 0058D4F4    ret
*}
end;

//0058D4F8
{*procedure sub_0058D4F8(?:?);
begin
 0058D4F8    push        ebx
 0058D4F9    push        esi
 0058D4FA    add         esp,0FFFFFFF0
 0058D4FD    mov         esi,edx
 0058D4FF    mov         ebx,eax
 0058D501    mov         eax,dword ptr [ebx+4];TStyleHook.FBrush:TBrush
 0058D504    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 0058D507    mov         edx,dword ptr [eax+18]
 0058D50A    mov         eax,dword ptr [esi+48]
 0058D50D    call        TBrush.SetColor
 0058D512    mov         edx,esp
 0058D514    mov         eax,dword ptr [ebx+8];TStyleHook.FControl:TWinControl
 0058D517    mov         ecx,dword ptr [eax]
 0058D519    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0058D51C    mov         edx,esp
 0058D51E    mov         eax,esi
 0058D520    mov         ecx,dword ptr [eax]
 0058D522    call        dword ptr [ecx+54]
 0058D525    add         esp,10
 0058D528    pop         esi
 0058D529    pop         ebx
 0058D52A    ret
end;*}

//0058D52C
procedure sub_0058D52C;
begin
{*
 0058D52C    ret
*}
end;

//0058D530
{*procedure TStyleHook.WMPaint(?:?);
begin
 0058D530    push        ebp
 0058D531    mov         ebp,esp
 0058D533    add         esp,0FFFFFFB0
 0058D536    push        ebx
 0058D537    push        esi
 0058D538    mov         dword ptr [ebp-4],eax
 0058D53B    mov         eax,dword ptr [ebp-4]
 0058D53E    cmp         byte ptr [eax+17],0;TStyleHook.FOverridePaint:Boolean
>0058D542    je          0058D6E3
 0058D548    mov         eax,dword ptr [edx+4]
 0058D54B    mov         dword ptr [ebp-8],eax
 0058D54E    mov         dl,1
 0058D550    mov         eax,[004BF670];TCanvas
 0058D555    call        TCanvas.Create;TCanvas.Create
 0058D55A    mov         dword ptr [ebp-10],eax
 0058D55D    xor         eax,eax
 0058D55F    push        ebp
 0058D560    push        58D6D5
 0058D565    push        dword ptr fs:[eax]
 0058D568    mov         dword ptr fs:[eax],esp
 0058D56B    cmp         dword ptr [ebp-8],0
>0058D56F    je          0058D57E
 0058D571    mov         edx,dword ptr [ebp-8]
 0058D574    mov         eax,dword ptr [ebp-10]
 0058D577    call        TCanvas.SetHandle
>0058D57C    jmp         0058D59D
 0058D57E    lea         eax,[ebp-50]
 0058D581    push        eax
 0058D582    mov         eax,dword ptr [ebp-4]
 0058D585    mov         eax,dword ptr [eax+8];TStyleHook.FControl:TWinControl
 0058D588    call        TWinControl.GetHandle
 0058D58D    push        eax
 0058D58E    call        user32.BeginPaint
 0058D593    mov         edx,eax
 0058D595    mov         eax,dword ptr [ebp-10]
 0058D598    call        TCanvas.SetHandle
 0058D59D    mov         eax,dword ptr [ebp-10]
 0058D5A0    call        TCanvas.GetHandle
 0058D5A5    mov         edx,eax
 0058D5A7    mov         eax,dword ptr [ebp-4]
 0058D5AA    mov         ecx,dword ptr [eax]
 0058D5AC    call        dword ptr [ecx+0C];TStyleHook.sub_0058D4F0
 0058D5AF    test        al,al
>0058D5B1    jne         0058D69A
 0058D5B7    mov         eax,dword ptr [ebp-4]
 0058D5BA    cmp         byte ptr [eax+0D],0;TStyleHook.FDoubleBuffered:Boolean
>0058D5BE    je          0058D672
 0058D5C4    cmp         dword ptr [ebp-8],0
>0058D5C8    jne         0058D672
 0058D5CE    mov         dl,1
 0058D5D0    mov         eax,[004C1D10];TBitmap
 0058D5D5    call        TBitmap.Create;TBitmap.Create
 0058D5DA    mov         dword ptr [ebp-0C],eax
 0058D5DD    xor         eax,eax
 0058D5DF    push        ebp
 0058D5E0    push        58D66B
 0058D5E5    push        dword ptr fs:[eax]
 0058D5E8    mov         dword ptr fs:[eax],esp
 0058D5EB    mov         eax,dword ptr [ebp-4]
 0058D5EE    mov         esi,dword ptr [eax+8];TStyleHook.FControl:TWinControl
 0058D5F1    mov         ecx,dword ptr [esi+5C];TWinControl.FHeight:Integer
 0058D5F4    mov         edx,dword ptr [esi+58];TWinControl.FWidth:Integer
 0058D5F7    mov         eax,dword ptr [ebp-0C]
 0058D5FA    mov         ebx,dword ptr [eax]
 0058D5FC    call        dword ptr [ebx+6C];TBitmap.SetSize
 0058D5FF    mov         eax,dword ptr [ebp-0C]
 0058D602    call        TBitmap.GetCanvas
 0058D607    mov         edx,eax
 0058D609    mov         eax,dword ptr [ebp-4]
 0058D60C    mov         ecx,dword ptr [eax]
 0058D60E    call        dword ptr [ecx+14];TStyleHook.sub_0058D4F8
 0058D611    mov         eax,dword ptr [ebp-0C]
 0058D614    call        TBitmap.GetCanvas
 0058D619    mov         edx,eax
 0058D61B    mov         eax,dword ptr [ebp-4]
 0058D61E    mov         ecx,dword ptr [eax]
 0058D620    call        dword ptr [ecx+10];TStyleHook.sub_0058D4F4
 0058D623    mov         eax,dword ptr [ebp-4]
 0058D626    mov         ebx,dword ptr [eax+8];TStyleHook.FControl:TWinControl
 0058D629    test        ebx,ebx
>0058D62B    je          0058D645
 0058D62D    mov         eax,dword ptr [ebp-0C]
 0058D630    call        TBitmap.GetCanvas
 0058D635    call        TCanvas.GetHandle
 0058D63A    mov         edx,eax
 0058D63C    mov         eax,ebx
 0058D63E    xor         ecx,ecx
 0058D640    call        004ED400
 0058D645    mov         eax,dword ptr [ebp-0C]
 0058D648    push        eax
 0058D649    xor         ecx,ecx
 0058D64B    xor         edx,edx
 0058D64D    mov         eax,dword ptr [ebp-10]
 0058D650    mov         ebx,dword ptr [eax]
 0058D652    call        dword ptr [ebx+44];TCanvas.Draw
 0058D655    xor         eax,eax
 0058D657    pop         edx
 0058D658    pop         ecx
 0058D659    pop         ecx
 0058D65A    mov         dword ptr fs:[eax],edx
 0058D65D    push        58D69A
 0058D662    mov         eax,dword ptr [ebp-0C]
 0058D665    call        TObject.Free
 0058D66A    ret
>0058D66B    jmp         @HandleFinally
>0058D670    jmp         0058D662
 0058D672    mov         edx,dword ptr [ebp-10]
 0058D675    mov         eax,dword ptr [ebp-4]
 0058D678    mov         ecx,dword ptr [eax]
 0058D67A    call        dword ptr [ecx+10];TStyleHook.sub_0058D4F4
 0058D67D    mov         eax,dword ptr [ebp-4]
 0058D680    mov         ebx,dword ptr [eax+8];TStyleHook.FControl:TWinControl
 0058D683    test        ebx,ebx
>0058D685    je          0058D69A
 0058D687    mov         eax,dword ptr [ebp-10]
 0058D68A    call        TCanvas.GetHandle
 0058D68F    mov         edx,eax
 0058D691    mov         eax,ebx
 0058D693    xor         ecx,ecx
 0058D695    call        004ED400
 0058D69A    cmp         dword ptr [ebp-8],0
>0058D69E    jne         0058D6B5
 0058D6A0    lea         eax,[ebp-50]
 0058D6A3    push        eax
 0058D6A4    mov         eax,dword ptr [ebp-4]
 0058D6A7    mov         eax,dword ptr [eax+8];TStyleHook.FControl:TWinControl
 0058D6AA    call        TWinControl.GetHandle
 0058D6AF    push        eax
 0058D6B0    call        user32.EndPaint
 0058D6B5    xor         eax,eax
 0058D6B7    pop         edx
 0058D6B8    pop         ecx
 0058D6B9    pop         ecx
 0058D6BA    mov         dword ptr fs:[eax],edx
 0058D6BD    push        58D6DC
 0058D6C2    xor         edx,edx
 0058D6C4    mov         eax,dword ptr [ebp-10]
 0058D6C7    call        TCanvas.SetHandle
 0058D6CC    mov         eax,dword ptr [ebp-10]
 0058D6CF    call        TObject.Free
 0058D6D4    ret
>0058D6D5    jmp         @HandleFinally
>0058D6DA    jmp         0058D6C2
 0058D6DC    mov         eax,dword ptr [ebp-4]
 0058D6DF    mov         byte ptr [eax+14],1;TStyleHook.FHandled:Boolean
 0058D6E3    pop         esi
 0058D6E4    pop         ebx
 0058D6E5    mov         esp,ebp
 0058D6E7    pop         ebp
 0058D6E8    ret
end;*}

//0058D6EC
procedure TStyleHook.WMNCPaint(var Message:Messages.TMessage);
begin
{*
 0058D6EC    push        ebp
 0058D6ED    mov         ebp,esp
 0058D6EF    add         esp,0FFFFFFF8
 0058D6F2    mov         dword ptr [ebp-4],eax
 0058D6F5    mov         eax,dword ptr [ebp-4]
 0058D6F8    cmp         byte ptr [eax+18],0
>0058D6FC    je          0058D78A
 0058D702    mov         dl,1
 0058D704    mov         eax,[004BF670];TCanvas
 0058D709    call        TCanvas.Create
 0058D70E    mov         dword ptr [ebp-8],eax
 0058D711    xor         eax,eax
 0058D713    push        ebp
 0058D714    push        58D77C
 0058D719    push        dword ptr fs:[eax]
 0058D71C    mov         dword ptr fs:[eax],esp
 0058D71F    mov         eax,dword ptr [ebp-4]
 0058D722    mov         eax,dword ptr [eax+8]
 0058D725    call        TWinControl.GetHandle
 0058D72A    push        eax
 0058D72B    call        user32.GetWindowDC
 0058D730    mov         edx,eax
 0058D732    mov         eax,dword ptr [ebp-8]
 0058D735    call        TCanvas.SetHandle
 0058D73A    mov         edx,dword ptr [ebp-8]
 0058D73D    mov         eax,dword ptr [ebp-4]
 0058D740    mov         ecx,dword ptr [eax]
 0058D742    call        dword ptr [ecx+18]
 0058D745    xor         eax,eax
 0058D747    pop         edx
 0058D748    pop         ecx
 0058D749    pop         ecx
 0058D74A    mov         dword ptr fs:[eax],edx
 0058D74D    push        58D783
 0058D752    mov         eax,dword ptr [ebp-8]
 0058D755    call        TCanvas.GetHandle
 0058D75A    push        eax
 0058D75B    mov         eax,dword ptr [ebp-4]
 0058D75E    call        TStyleHook.GetHandle
 0058D763    push        eax
 0058D764    call        user32.ReleaseDC
 0058D769    xor         edx,edx
 0058D76B    mov         eax,dword ptr [ebp-8]
 0058D76E    call        TCanvas.SetHandle
 0058D773    mov         eax,dword ptr [ebp-8]
 0058D776    call        TObject.Free
 0058D77B    ret
>0058D77C    jmp         @HandleFinally
>0058D781    jmp         0058D752
 0058D783    mov         eax,dword ptr [ebp-4]
 0058D786    mov         byte ptr [eax+14],1
 0058D78A    pop         ecx
 0058D78B    pop         ecx
 0058D78C    pop         ebp
 0058D78D    ret
*}
end;

//0058D790
procedure TStyleHook.WMEraseBkgnd(var Message:Messages.TMessage);
begin
{*
 0058D790    push        ebp
 0058D791    mov         ebp,esp
 0058D793    add         esp,0FFFFFFEC
 0058D796    mov         dword ptr [ebp-8],edx
 0058D799    mov         dword ptr [ebp-4],eax
 0058D79C    mov         eax,dword ptr [ebp-4]
 0058D79F    cmp         byte ptr [eax+16],0
>0058D7A3    je          0058D857
 0058D7A9    mov         eax,dword ptr [ebp-4]
 0058D7AC    cmp         byte ptr [eax+0D],0
>0058D7B0    jne         0058D846
 0058D7B6    mov         eax,dword ptr [ebp-8]
 0058D7B9    mov         eax,dword ptr [eax+4]
 0058D7BC    mov         dword ptr [ebp-0C],eax
 0058D7BF    mov         eax,dword ptr [ebp-0C]
 0058D7C2    push        eax
 0058D7C3    call        gdi32.SaveDC
 0058D7C8    mov         dword ptr [ebp-14],eax
 0058D7CB    mov         dl,1
 0058D7CD    mov         eax,[004BF670];TCanvas
 0058D7D2    call        TCanvas.Create
 0058D7D7    mov         dword ptr [ebp-10],eax
 0058D7DA    xor         eax,eax
 0058D7DC    push        ebp
 0058D7DD    push        58D83F
 0058D7E2    push        dword ptr fs:[eax]
 0058D7E5    mov         dword ptr fs:[eax],esp
 0058D7E8    mov         edx,dword ptr [ebp-0C]
 0058D7EB    mov         eax,dword ptr [ebp-10]
 0058D7EE    call        TCanvas.SetHandle
 0058D7F3    mov         edx,dword ptr [ebp-10]
 0058D7F6    mov         eax,dword ptr [ebp-4]
 0058D7F9    mov         ecx,dword ptr [eax]
 0058D7FB    call        dword ptr [ecx+14]
 0058D7FE    mov         eax,dword ptr [ebp-4]
 0058D801    cmp         byte ptr [eax+19],0
>0058D805    je          0058D812
 0058D807    mov         edx,dword ptr [ebp-10]
 0058D80A    mov         eax,dword ptr [ebp-4]
 0058D80D    mov         ecx,dword ptr [eax]
 0058D80F    call        dword ptr [ecx+10]
 0058D812    xor         eax,eax
 0058D814    pop         edx
 0058D815    pop         ecx
 0058D816    pop         ecx
 0058D817    mov         dword ptr fs:[eax],edx
 0058D81A    push        58D846
 0058D81F    xor         edx,edx
 0058D821    mov         eax,dword ptr [ebp-10]
 0058D824    call        TCanvas.SetHandle
 0058D829    mov         eax,dword ptr [ebp-10]
 0058D82C    call        TObject.Free
 0058D831    mov         eax,dword ptr [ebp-14]
 0058D834    push        eax
 0058D835    mov         eax,dword ptr [ebp-0C]
 0058D838    push        eax
 0058D839    call        gdi32.RestoreDC
 0058D83E    ret
>0058D83F    jmp         @HandleFinally
>0058D844    jmp         0058D81F
 0058D846    mov         eax,dword ptr [ebp-4]
 0058D849    mov         byte ptr [eax+14],1
 0058D84D    mov         eax,dword ptr [ebp-8]
 0058D850    mov         dword ptr [eax+0C],1
 0058D857    mov         esp,ebp
 0058D859    pop         ebp
 0058D85A    ret
*}
end;

//0058D85C
procedure TStyleHook.WMSetFocus(var Message:Messages.TMessage);
begin
{*
 0058D85C    mov         byte ptr [eax+0E],1
 0058D860    cmp         byte ptr [eax+0F],0
>0058D864    je          0058D86B
 0058D866    mov         edx,dword ptr [eax]
 0058D868    call        dword ptr [edx+28]
 0058D86B    ret
*}
end;

//0058D86C
procedure TStyleHook.WMKillFocus(var Message:Messages.TMessage);
begin
{*
 0058D86C    mov         byte ptr [eax+0E],0
 0058D870    cmp         byte ptr [eax+0F],0
>0058D874    je          0058D87B
 0058D876    mov         edx,dword ptr [eax]
 0058D878    call        dword ptr [edx+28]
 0058D87B    ret
*}
end;

//0058D87C
procedure TStyleHook.CMEnabledChanged(var Message:Messages.TMessage);
begin
{*
 0058D87C    push        ebx
 0058D87D    mov         ebx,eax
 0058D87F    mov         eax,ebx
 0058D881    call        TStyleHook.CallDefaultProc
 0058D886    mov         eax,ebx
 0058D888    mov         edx,dword ptr [eax]
 0058D88A    call        dword ptr [edx+28]
 0058D88D    mov         byte ptr [ebx+14],1
 0058D891    pop         ebx
 0058D892    ret
*}
end;

//0058D894
procedure TStyleHook.CMTextChanged(var Message:Messages.TMessage);
begin
{*
 0058D894    push        ebx
 0058D895    mov         ebx,eax
 0058D897    mov         eax,ebx
 0058D899    call        TStyleHook.CallDefaultProc
 0058D89E    mov         eax,ebx
 0058D8A0    mov         edx,dword ptr [eax]
 0058D8A2    call        dword ptr [edx+28]
 0058D8A5    mov         byte ptr [ebx+14],1
 0058D8A9    pop         ebx
 0058D8AA    ret
*}
end;

//0058D8AC
procedure TStyleHook.WMEnable(var Message:Messages.TMessage);
begin
{*
 0058D8AC    push        ebx
 0058D8AD    mov         ebx,eax
 0058D8AF    mov         eax,ebx
 0058D8B1    call        TStyleHook.CallDefaultProc
 0058D8B6    mov         eax,ebx
 0058D8B8    mov         edx,dword ptr [eax]
 0058D8BA    call        dword ptr [edx+28]
 0058D8BD    mov         byte ptr [ebx+14],1
 0058D8C1    pop         ebx
 0058D8C2    ret
*}
end;

//0058D8C4
procedure TStyleHook.WMSetText(var Message:Messages.TMessage);
begin
{*
 0058D8C4    push        ebx
 0058D8C5    mov         ebx,eax
 0058D8C7    mov         eax,ebx
 0058D8C9    call        TStyleHook.CallDefaultProc
 0058D8CE    mov         eax,ebx
 0058D8D0    mov         edx,dword ptr [eax]
 0058D8D2    call        dword ptr [edx+28]
 0058D8D5    mov         byte ptr [ebx+14],1
 0058D8D9    pop         ebx
 0058D8DA    ret
*}
end;

//0058D8DC
{*procedure sub_0058D8DC(?:?);
begin
 0058D8DC    push        ebx
 0058D8DD    push        esi
 0058D8DE    push        edi
 0058D8DF    push        ebp
 0058D8E0    mov         ebx,edx
 0058D8E2    mov         esi,eax
 0058D8E4    mov         edi,dword ptr [ebx]
 0058D8E6    mov         eax,edi
 0058D8E8    add         eax,0FFFFFECE
 0058D8ED    sub         eax,7
>0058D8F0    jb          0058D8FE
 0058D8F2    add         eax,0FFFF4407
 0058D8F7    sub         eax,7
>0058D8FA    jb          0058D918
>0058D8FC    jmp         0058D951
 0058D8FE    mov         ebp,dword ptr [ebx+8]
 0058D901    push        ebp
 0058D902    mov         eax,dword ptr [ebx+4]
 0058D905    push        eax
 0058D906    add         edi,0BC00
 0058D90C    push        edi
 0058D90D    push        ebp
 0058D90E    call        user32.SendMessageW
 0058D913    mov         dword ptr [ebx+0C],eax
>0058D916    jmp         0058D951
 0058D918    mov         eax,dword ptr [esi+10];TStyleHook.FFontColor:TColor
 0058D91B    call        ColorToRGB
 0058D920    push        eax
 0058D921    mov         eax,dword ptr [ebx+4]
 0058D924    push        eax
 0058D925    call        gdi32.SetTextColor
 0058D92A    mov         edi,dword ptr [esi+4];TStyleHook.FBrush:TBrush
 0058D92D    mov         eax,dword ptr [edi+10];TBrush.FResource:PResource
 0058D930    mov         eax,dword ptr [eax+18]
 0058D933    call        ColorToRGB
 0058D938    push        eax
 0058D939    mov         eax,dword ptr [ebx+4]
 0058D93C    push        eax
 0058D93D    call        gdi32.SetBkColor
 0058D942    mov         eax,dword ptr [esi+4];TStyleHook.FBrush:TBrush
 0058D945    call        TBrush.GetHandle
 0058D94A    mov         dword ptr [ebx+0C],eax
 0058D94D    mov         byte ptr [esi+14],1;TStyleHook.FHandled:Boolean
 0058D951    mov         edx,ebx
 0058D953    mov         eax,esi
 0058D955    mov         ecx,dword ptr [eax]
 0058D957    call        dword ptr [ecx-14];TObject.Dispatch
 0058D95A    pop         ebp
 0058D95B    pop         edi
 0058D95C    pop         esi
 0058D95D    pop         ebx
 0058D95E    ret
end;*}

//0058D960
constructor TMouseTrackControlStyleHook.Create;
begin
{*
 0058D960    push        ebx
 0058D961    push        esi
 0058D962    test        dl,dl
>0058D964    je          0058D96E
 0058D966    add         esp,0FFFFFFF0
 0058D969    call        @ClassCreate
 0058D96E    mov         ebx,edx
 0058D970    mov         esi,eax
 0058D972    xor         edx,edx
 0058D974    mov         eax,esi
 0058D976    call        TStyleHook.Create
 0058D97B    mov         byte ptr [esi+24],0
 0058D97F    mov         byte ptr [esi+25],0
 0058D983    mov         byte ptr [esi+0E],0
 0058D987    xor         eax,eax
 0058D989    mov         dword ptr [esi+20],eax
 0058D98C    mov         eax,esi
 0058D98E    test        bl,bl
>0058D990    je          0058D9A1
 0058D992    call        @AfterConstruction
 0058D997    pop         dword ptr fs:[0]
 0058D99E    add         esp,0C
 0058D9A1    mov         eax,esi
 0058D9A3    pop         esi
 0058D9A4    pop         ebx
 0058D9A5    ret
*}
end;

//0058D9A8
destructor TMouseTrackControlStyleHook.Destroy();
begin
{*
 0058D9A8    push        ebx
 0058D9A9    push        esi
 0058D9AA    call        @BeforeDestruction
 0058D9AF    mov         ebx,edx
 0058D9B1    mov         esi,eax
 0058D9B3    cmp         dword ptr [esi+20],0
>0058D9B7    je          0058D9C0
 0058D9B9    mov         eax,esi
 0058D9BB    call        TMouseTrackControlStyleHook.StopHotTrackTimer
 0058D9C0    mov         dl,0FC
 0058D9C2    and         dl,bl
 0058D9C4    mov         eax,esi
 0058D9C6    call        TStyleHook.Destroy
 0058D9CB    test        bl,bl
>0058D9CD    jle         0058D9D6
 0058D9CF    mov         eax,esi
 0058D9D1    call        @ClassDestroy
 0058D9D6    pop         esi
 0058D9D7    pop         ebx
 0058D9D8    ret
*}
end;

//0058D9DC
{*function sub_0058D9DC:?;
begin
 0058D9DC    xor         eax,eax
 0058D9DE    ret
end;*}

//0058D9E0
function TMouseTrackControlStyleHook.IsMouseInControl:Boolean;
begin
{*
 0058D9E0    push        ebx
 0058D9E1    push        esi
 0058D9E2    add         esp,0FFFFFFF8
 0058D9E5    mov         ebx,eax
 0058D9E7    push        esp
 0058D9E8    call        user32.GetCursorPos
 0058D9ED    push        dword ptr [esp+4]
 0058D9F1    push        dword ptr [esp+4]
 0058D9F5    call        user32.WindowFromPoint
 0058D9FA    mov         esi,eax
 0058D9FC    mov         eax,ebx
 0058D9FE    call        TStyleHook.GetHandle
 0058DA03    cmp         esi,eax
 0058DA05    sete        al
 0058DA08    mov         byte ptr [ebx+24],al
 0058DA0B    pop         ecx
 0058DA0C    pop         edx
 0058DA0D    pop         esi
 0058DA0E    pop         ebx
 0058DA0F    ret
*}
end;

//0058DA10
procedure TMouseTrackControlStyleHook.StartHotTrackTimer;
begin
{*
 0058DA10    push        ebx
 0058DA11    push        esi
 0058DA12    mov         ebx,eax
 0058DA14    cmp         dword ptr [ebx+20],0
>0058DA18    je          0058DA21
 0058DA1A    mov         eax,ebx
 0058DA1C    call        TMouseTrackControlStyleHook.StopHotTrackTimer
 0058DA21    xor         ecx,ecx
 0058DA23    mov         dl,1
 0058DA25    mov         eax,[00561460];TTimer
 0058DA2A    call        TTimer.Create
 0058DA2F    mov         esi,eax
 0058DA31    mov         dword ptr [ebx+20],esi
 0058DA34    mov         edx,64
 0058DA39    mov         eax,esi
 0058DA3B    call        TTimer.SetInterval
 0058DA40    push        ebx
 0058DA41    mov         eax,dword ptr [ebx]
 0058DA43    mov         eax,dword ptr [eax+30]
 0058DA46    push        eax
 0058DA47    mov         eax,dword ptr [ebx+20]
 0058DA4A    call        TTimer.SetOnTimer
 0058DA4F    mov         dl,1
 0058DA51    mov         eax,dword ptr [ebx+20]
 0058DA54    call        TTimer.SetEnabled
 0058DA59    pop         esi
 0058DA5A    pop         ebx
 0058DA5B    ret
*}
end;

//0058DA5C
procedure TMouseTrackControlStyleHook.StopHotTrackTimer;
begin
{*
 0058DA5C    push        ebx
 0058DA5D    push        ecx
 0058DA5E    mov         ebx,eax
 0058DA60    mov         eax,dword ptr [ebx+20]
 0058DA63    test        eax,eax
>0058DA65    je          0058DA85
 0058DA67    xor         edx,edx
 0058DA69    call        TTimer.SetEnabled
 0058DA6E    lea         eax,[ebx+20]
 0058DA71    mov         dword ptr [esp],eax
 0058DA74    mov         eax,dword ptr [esp]
 0058DA77    mov         eax,dword ptr [eax]
 0058DA79    mov         edx,dword ptr [esp]
 0058DA7C    xor         ecx,ecx
 0058DA7E    mov         dword ptr [edx],ecx
 0058DA80    call        TObject.Free
 0058DA85    pop         edx
 0058DA86    pop         ebx
 0058DA87    ret
*}
end;

//0058DA88
procedure TMouseTrackControlStyleHook.DoHotTrackTimer(Sender:TObject);
begin
{*
 0058DA88    push        ebx
 0058DA89    push        esi
 0058DA8A    add         esp,0FFFFFFF8
 0058DA8D    mov         ebx,eax
 0058DA8F    push        esp
 0058DA90    call        user32.GetCursorPos
 0058DA95    push        dword ptr [esp+4]
 0058DA99    push        dword ptr [esp+4]
 0058DA9D    call        user32.WindowFromPoint
 0058DAA2    mov         esi,eax
 0058DAA4    mov         eax,ebx
 0058DAA6    call        TStyleHook.GetHandle
 0058DAAB    cmp         esi,eax
>0058DAAD    je          0058DACE
 0058DAAF    mov         edx,esi
 0058DAB1    mov         eax,ebx
 0058DAB3    mov         ecx,dword ptr [eax]
 0058DAB5    call        dword ptr [ecx+3C]
 0058DAB8    test        al,al
>0058DABA    jne         0058DACE
 0058DABC    mov         eax,ebx
 0058DABE    call        TMouseTrackControlStyleHook.StopHotTrackTimer
 0058DAC3    mov         byte ptr [ebx+24],0
 0058DAC7    mov         eax,ebx
 0058DAC9    mov         edx,dword ptr [eax]
 0058DACB    call        dword ptr [edx+38]
 0058DACE    pop         ecx
 0058DACF    pop         edx
 0058DAD0    pop         esi
 0058DAD1    pop         ebx
 0058DAD2    ret
*}
end;

//0058DAD4
procedure TMouseTrackControlStyleHook.WMMouseMove;
begin
{*
 0058DAD4    push        ebx
 0058DAD5    mov         ebx,eax
 0058DAD7    mov         eax,ebx
 0058DAD9    mov         ecx,dword ptr [eax]
 0058DADB    call        dword ptr [ecx-10];TObject.DefaultHandler
 0058DADE    cmp         byte ptr [ebx+24],0;TMouseTrackControlStyleHook.FMouseInControl:Boolean
>0058DAE2    jne         0058DAFE
 0058DAE4    cmp         byte ptr [ebx+25],0;TMouseTrackControlStyleHook.FMouseInNCArea:Boolean
>0058DAE8    jne         0058DAFE
 0058DAEA    mov         byte ptr [ebx+24],1;TMouseTrackControlStyleHook.FMouseInControl:Boolean
 0058DAEE    mov         eax,ebx
 0058DAF0    call        TMouseTrackControlStyleHook.StartHotTrackTimer
 0058DAF5    mov         eax,ebx
 0058DAF7    mov         edx,dword ptr [eax]
 0058DAF9    call        dword ptr [edx+34];TMouseTrackControlStyleHook.sub_0058DB44
 0058DAFC    pop         ebx
 0058DAFD    ret
 0058DAFE    cmp         byte ptr [ebx+25],0;TMouseTrackControlStyleHook.FMouseInNCArea:Boolean
>0058DB02    je          0058DB1C
 0058DB04    cmp         byte ptr [ebx+24],0;TMouseTrackControlStyleHook.FMouseInControl:Boolean
>0058DB08    je          0058DB1C
 0058DB0A    mov         eax,ebx
 0058DB0C    call        TMouseTrackControlStyleHook.StopHotTrackTimer
 0058DB11    mov         byte ptr [ebx+24],0;TMouseTrackControlStyleHook.FMouseInControl:Boolean
 0058DB15    mov         eax,ebx
 0058DB17    mov         edx,dword ptr [eax]
 0058DB19    call        dword ptr [edx+38];TMouseTrackControlStyleHook.sub_0058DB48
 0058DB1C    pop         ebx
 0058DB1D    ret
*}
end;

//0058DB20
procedure TMouseTrackControlStyleHook.WMNCMouseMove;
begin
{*
 0058DB20    push        ebx
 0058DB21    mov         ebx,eax
 0058DB23    mov         eax,ebx
 0058DB25    mov         ecx,dword ptr [eax]
 0058DB27    call        dword ptr [ecx-10];TObject.DefaultHandler
 0058DB2A    cmp         byte ptr [ebx+24],0;TMouseTrackControlStyleHook.FMouseInControl:Boolean
>0058DB2E    jne         0058DB42
 0058DB30    mov         byte ptr [ebx+24],1;TMouseTrackControlStyleHook.FMouseInControl:Boolean
 0058DB34    mov         eax,ebx
 0058DB36    call        TMouseTrackControlStyleHook.StartHotTrackTimer
 0058DB3B    mov         eax,ebx
 0058DB3D    mov         edx,dword ptr [eax]
 0058DB3F    call        dword ptr [edx+34];TMouseTrackControlStyleHook.sub_0058DB44
 0058DB42    pop         ebx
 0058DB43    ret
*}
end;

//0058DB44
procedure sub_0058DB44;
begin
{*
 0058DB44    ret
*}
end;

//0058DB48
procedure sub_0058DB48;
begin
{*
 0058DB48    ret
*}
end;

//0058DB4C
procedure sub_0058DB4C;
begin
{*
 0058DB4C    call        0058D8DC
 0058DB51    ret
*}
end;

Initialization
//0079D658
{*
 0079D658    sub         dword ptr ds:[7CA72C],1
>0079D65F    jae         0079D69A
 0079D661    xor         ecx,ecx
 0079D663    mov         dl,1
 0079D665    mov         eax,[0057DD38];TObjectDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>
 0079D66A    call        00591740
 0079D66F    mov         [007CA734],eax;gvar_007CA734:TObjectDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleH...
 0079D674    xor         ecx,ecx
 0079D676    mov         dl,1
 0079D678    mov         eax,[0057BB98];TObjectDictionary<System.string,Vcl.Themes.TSysStyleHookClass>
 0079D67D    call        00590960
 0079D682    mov         [007CA730],eax;gvar_007CA730:TObjectDictionary<System.string,Vcl.Themes.TSysStyleHookCla...
 0079D687    xor         ecx,ecx
 0079D689    mov         dl,1
 0079D68B    mov         eax,[0057FB4C];TObjectDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildControlInfo>
 0079D690    call        0059250C
 0079D695    mov         [007CA738],eax;gvar_007CA738:TObjectDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildCont...
 0079D69A    ret
*}
Finalization
//0058DB54
{*
 0058DB54    push        ebp
 0058DB55    mov         ebp,esp
 0058DB57    add         esp,0FFFFFFF0
 0058DB5A    push        ebx
 0058DB5B    push        esi
 0058DB5C    lea         esi,[ebp-8]
 0058DB5F    inc         dword ptr ds:[7CA72C]
>0058DB65    jne         0058DC63
 0058DB6B    mov         eax,[007CA728];gvar_007CA728:TDictionary<System.TClass,System.Generics.Collections.TList...
 0058DB70    call        TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.GetEnumerator
 0058DB75    mov         dword ptr [ebp-0C],eax
 0058DB78    xor         eax,eax
 0058DB7A    push        ebp
 0058DB7B    push        58DBC4
 0058DB80    push        dword ptr fs:[eax]
 0058DB83    mov         dword ptr fs:[eax],esp
>0058DB86    jmp         0058DB9A
 0058DB88    mov         edx,esi
 0058DB8A    mov         eax,dword ptr [ebp-0C]
 0058DB8D    call        005903EC
 0058DB92    mov         eax,dword ptr [esi+4]
 0058DB95    call        TObject.Free
 0058DB9A    mov         eax,dword ptr [ebp-0C]
 0058DB9D    call        TDictionary<System.TClass,System.Generics.Collections.TList<Vcl.Themes.TStyleHookClass>>.TPairEnumerator.MoveNext
 0058DBA2    test        al,al
>0058DBA4    jne         0058DB88
 0058DBA6    xor         eax,eax
 0058DBA8    pop         edx
 0058DBA9    pop         ecx
 0058DBAA    pop         ecx
 0058DBAB    mov         dword ptr fs:[eax],edx
 0058DBAE    push        58DBCB
 0058DBB3    cmp         dword ptr [ebp-0C],0
>0058DBB7    je          0058DBC3
 0058DBB9    mov         dl,1
 0058DBBB    mov         eax,dword ptr [ebp-0C]
 0058DBBE    mov         ecx,dword ptr [eax]
 0058DBC0    call        dword ptr [ecx-4]
 0058DBC3    ret
>0058DBC4    jmp         @HandleFinally
>0058DBC9    jmp         0058DBB3
 0058DBCB    mov         eax,[007CA728];gvar_007CA728:TDictionary<System.TClass,System.Generics.Collections.TList...
 0058DBD0    xor         edx,edx
 0058DBD2    mov         dword ptr ds:[7CA728],edx;gvar_007CA728:TDictionary<System.TClass,System.Generics.Collec...
 0058DBD8    call        TObject.Free
 0058DBDD    mov         eax,[007CA730];gvar_007CA730:TObjectDictionary<System.string,Vcl.Themes.TSysStyleHookCla...
 0058DBE2    call        TObject.Free
 0058DBE7    mov         eax,[007CA734];gvar_007CA734:TObjectDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleH...
 0058DBEC    call        005919F8
 0058DBF1    call        TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TValueCollection.GetEnumerator
 0058DBF6    mov         dword ptr [ebp-10],eax
 0058DBF9    xor         eax,eax
 0058DBFB    push        ebp
 0058DBFC    push        58DC48
 0058DC01    push        dword ptr fs:[eax]
 0058DC04    mov         dword ptr fs:[eax],esp
>0058DC07    jmp         0058DC1E
 0058DC09    mov         eax,dword ptr [ebp-10]
 0058DC0C    call        00591E98
 0058DC11    mov         ebx,eax
 0058DC13    test        ebx,ebx
>0058DC15    je          0058DC1E
 0058DC17    mov         eax,ebx
 0058DC19    call        TObject.Free
 0058DC1E    mov         eax,dword ptr [ebp-10]
 0058DC21    call        TDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleHook>.TValueEnumerator.MoveNext
 0058DC26    test        al,al
>0058DC28    jne         0058DC09
 0058DC2A    xor         eax,eax
 0058DC2C    pop         edx
 0058DC2D    pop         ecx
 0058DC2E    pop         ecx
 0058DC2F    mov         dword ptr fs:[eax],edx
 0058DC32    push        58DC4F
 0058DC37    cmp         dword ptr [ebp-10],0
>0058DC3B    je          0058DC47
 0058DC3D    mov         dl,1
 0058DC3F    mov         eax,dword ptr [ebp-10]
 0058DC42    mov         ecx,dword ptr [eax]
 0058DC44    call        dword ptr [ecx-4]
 0058DC47    ret
>0058DC48    jmp         @HandleFinally
>0058DC4D    jmp         0058DC37
 0058DC4F    mov         eax,[007CA734];gvar_007CA734:TObjectDictionary<Winapi.Windows.HWND,Vcl.Themes.TSysStyleH...
 0058DC54    call        TObject.Free
 0058DC59    mov         eax,[007CA738];gvar_007CA738:TObjectDictionary<Winapi.Windows.HWND,Vcl.Themes.TChildCont...
 0058DC5E    call        TObject.Free
 0058DC63    pop         esi
 0058DC64    pop         ebx
 0058DC65    mov         esp,ebp
 0058DC67    pop         ebp
 0058DC68    ret
*}
end.