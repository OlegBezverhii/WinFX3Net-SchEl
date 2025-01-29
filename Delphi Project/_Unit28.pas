//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit28;

interface

uses
  SysUtils, Classes, System.Win.Registry, Vcl.Graphics, System.UIConsts, Vcl.StdActns, Vcl.ComCtrls, Vcl.Forms, Vcl.ExtCtrls, System.TypInfo, System.Classes;

type
  TRegistry = class(TObject)
  published
    function ReadInteger(Name:string):Integer;//004B96E0
    function ReadString(Name:string):string;//004B9454
    function ReadTime(Name:string):TDateTime;//004B97DC
    function ReadFloat(Name:string):Double;//004B9724
    //function ReadBinaryData(Name:string; var Buffer:?; BufSize:Integer):Integer;//004B9804
    function ReadDate(Name:string):TDateTime;//004B97B4
    function ReadDateTime(Name:string):TDateTime;//004B976C
    function ValueExists(Name:string):Boolean;//004B9958
    procedure WriteInteger(Name:string; Value:Integer);//004B96CC
    procedure WriteString(Name:string; Value:string);//004B9420
    procedure WriteTime(Name:string; Value:TDateTime);//004B97C8
    procedure WriteFloat(Name:string; Value:Double);//004B9710
    //procedure WriteBinaryData(Name:string; var Buffer:?; BufSize:Integer);//004B97F0
    procedure WriteDate(Name:string; Value:TDateTime);//004B97A0
    procedure WriteDateTime(Name:string; Value:TDateTime);//004B9758
    function OpenKeyReadOnly(Key:string):Boolean;//004B8C24
    function CreateKey(Key:string):Boolean;//004B8A00
    function DeleteKey(Key:string):Boolean;//004B8E0C
    function DeleteValue(Name:string):Boolean;//004B8FD8
    procedure CloseKey;//004B8968
    constructor Create();//004B88B0
    constructor Create;//004B88F4
    destructor Destroy();//004B8930
    function GetDataAsString(ValueName:string; PrefixType:Boolean):string;//004B9510
    procedure GetKeyNames(Strings:TStrings);//004B9068
    procedure GetValueNames(Strings:TStrings);//004B92DC
    function OpenKey(Key:string; CanCreate:Boolean):Boolean;//004B8AF0
    function GetKeyInfo(var Value:TRegKeyInfo):Boolean;//004B8FFC
    function GetDataInfo(ValueName:string; var Value:TRegDataInfo):Boolean;//004B93A4
    function GetDataSize(ValueName:string):Integer;//004B93F8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FCurrentKey:HKEY;//f4
    FRootKey:HKEY;//f8
    FLazyWrite:Boolean;//fC
    FCurrentPath:string;//f10
    FCloseRootKey:Boolean;//f14
    FAccess:Cardinal;//f18
    FLastError:Integer;//f1C
    function CheckResult(RetVal:LongInt):Boolean;//004B895C
    procedure SetRootKey(Value:Windows.HKEY);//004B8998
    procedure ChangeKey(Value:Windows.HKEY; const Path:UnicodeString);//004B89C4
    function GetBaseKey(Relative:Boolean):HKEY;//004B89E8
    procedure SetCurrentKey(Value:Windows.HKEY);//004B89FC
    function GetRootKeyName:UnicodeString;//004B92A4
    procedure PutData(const Name:UnicodeString; Buffer:Pointer; BufSize:Integer; RegData:TRegDataType);//004B9868
    function GetData(const Name:UnicodeString; Buffer:Pointer; BufSize:Integer; var RegData:TRegDataType):Integer;//004B98DC
    function GetKey(const Key:UnicodeString):HKEY;//004B9968
  end;
  TRegIniFile = class(TRegistry)
  published
    procedure ReadSectionValues(Section:string; Strings:TStrings);//004B9C80
    procedure ReadSections(Strings:TStrings);//004B9C78
    procedure DeleteKey(Section:string; Ident:string);//004B9DF4
    procedure EraseSection(Section:string);//004B9DEC
    procedure ReadSection(Section:string; Strings:TStrings);//004B9BDC
    constructor Create(AAccess:Cardinal);//004B9A00
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure WriteString(Section:string; Ident:string; Value:string);//004B9B2C
    function ReadString(Section:string; Ident:string; Default:string):string;//004B9A58
  public
    FFileName:string;//f20
    constructor Create;//004B9E90
  end;
  TRegistryIniFile = class(TCustomIniFile)
  published
    procedure WriteBinaryStream(Section:string; Name:string; Value:TStream);//004BA980
    procedure ReadSection(Section:string; Strings:TStrings);//004BAB10
    procedure ReadSections(Strings:TStrings);//004BAB1C
    procedure WriteInteger(Section:string; Ident:string; Value:Integer);//004BA7B0
    procedure WriteString(Section:string; Ident:string; Value:string);//004BAAF8
    procedure WriteTime(Section:string; Name:string; Value:TDateTime);//004BA8C8
    procedure EraseSection(Section:string);//004BADA8
    procedure DeleteKey(Section:string; Ident:string);//004BADB4
    procedure UpdateFile;//004BADC0
    procedure ReadSections(Section:string; Strings:TStrings);//004BAB28
    procedure ReadSubSections(Section:string; Strings:TStrings; Recurse:Boolean);//004BAD1C
    procedure ReadSectionValues(Section:string; Strings:TStrings);//004BAD9C
    //procedure WriteFloat(Section:string; Name:string; Value:Double; ?:?);//004BA6F8
    function ReadDate(Section:string; Name:string; Default:TDateTime):TDateTime;//004B9F78
    function ReadDateTime(Section:string; Name:string; Default:TDateTime):TDateTime;//004BA04C
    function ReadInteger(Section:string; Ident:string; Default:Integer):Integer;//004BA1F4
    constructor Create;//004B9E90
    constructor Create(AAccess:Cardinal);//004B9ECC
    destructor Destroy();//004B9F24
    function ReadBinaryStream(Section:string; Name:string; Value:TStream):Integer;//004BA3E4
    procedure WriteDate(Section:string; Name:string; Value:TDateTime);//004BA588
    procedure WriteDateTime(Section:string; Name:string; Value:TDateTime);//004BA640
    function ReadFloat(Section:string; Name:string; Default:Double):Double;//004BA120
    function ReadString(Section:string; Ident:string; Default:string):string;//004B9F50
    function ReadTime(Section:string; Name:string; Default:TDateTime):TDateTime;//004BA310
  public
    ..FRegIniFile:TRegIniFile;//f8
    destructor Destroy(); virtual;//004B9F24
    function ReadString(Section:string; Ident:string; Default:string):string; virtual;//v4//004B9F50
    procedure WriteString(Section:string; Ident:string; Value:string); virtual;//v8//004BAAF8
    function ReadInteger(Section:string; Ident:string; Default:Integer):Integer; virtual;//vC//004BA1F4
    procedure WriteInteger(Section:string; Ident:string; Value:Integer); virtual;//v10//004BA7B0
    function ReadBinaryStream(Section:string; Name:string; Value:TStream):Integer; virtual;//v1C//004BA3E4
    function ReadDate(Section:string; Name:string; Default:TDateTime):TDateTime; virtual;//v20//004B9F78
    function ReadDateTime(Section:string; Name:string; Default:TDateTime):TDateTime; virtual;//v24//004BA04C
    function ReadFloat(Section:string; Name:string; Default:Double):Double; virtual;//v28//004BA120
    function ReadTime(Section:string; Name:string; Default:TDateTime):TDateTime; virtual;//v2C//004BA310
    procedure WriteBinaryStream(Section:string; Name:string; Value:TStream); virtual;//v30//004BA980
    procedure WriteDate(Section:string; Name:string; Value:TDateTime); virtual;//v34//004BA588
    procedure WriteDateTime(Section:string; Name:string; Value:TDateTime); virtual;//v38//004BA640
    //procedure WriteFloat(Section:string; Name:string; Value:Double; ?:?); virtual;//v3C//004BA6F8
    procedure WriteTime(Section:string; Name:string; Value:TDateTime); virtual;//v40//004BA8C8
    procedure ReadSection(Section:string; Strings:TStrings); virtual;//v44//004BAB10
    procedure ReadSections(Strings:TStrings); virtual;//v48//004BAB1C
    procedure ReadSections(Section:string; Strings:TStrings); virtual;//v4C//004BAB28
    procedure ReadSubSections(Section:string; Strings:TStrings; Recurse:Boolean); virtual;//v50//004BAD1C
    procedure ReadSectionValues(Section:string; Strings:TStrings); virtual;//v54//004BAD9C
    procedure EraseSection(Section:string); virtual;//v58//004BADA8
    procedure DeleteKey(Section:string; Ident:string); virtual;//v5C//004BADB4
    procedure UpdateFile; virtual;//v60//004BADC0
  end;
  :TRegistry.:2 = array of Byte;
//elSize = 1
//varType equivalent: varByte;
  EInvalidGraphic = class(Exception)
  end;
  EInvalidGraphicOperation = class(Exception)
  end;
  TResData = TResData = record//size=4
Handle:NativeUInt;//f0
end;;
  TFontData = TFontData = record//size=90
Handle:HFONT;//f0
Height:Integer;//f4
Orientation:Integer;//f8
Pitch:TFontPitch;//fC
Style:TFontStylesBase;//fD
Charset:TFontCharset;//fE
Name:TFontDataName;//fF
Quality:TFontQuality;//f8C
end;;
  TPenStyle = (psSolid, psDash, psDot, psDashDot, psDashDotDot, psClear, psInsideFrame, psUserStyle, psAlternate);
  TPenMode = (pmBlack, pmWhite, pmNop, pmNot, pmCopy, pmNotCopy, pmMergePenNot, pmMaskPenNot, pmMergeNotPen, pmMaskNotPen, pmMerge, pmNotMerge, pmMask, pmNotMask, pmXor, pmNotXor);
  TPenData = TPenData = record//size=10
Handle:HPEN;//f0
Color:TColor;//f4
Width:Integer;//f8
Style:TPenStyle;//fC
end;;
  TBrushStyle = (bsSolid, bsClear, bsHorizontal, bsVertical, bsFDiagonal, bsBDiagonal, bsCross, bsDiagCross);
  TBrushData = TBrushData = record//size=10
Handle:HBRUSH;//f0
Color:TColor;//f4
Bitmap:TBitmap;//f8
Style:TBrushStyle;//fC
OwnsBitmap:Boolean;//fD
end;;
  TResource = TResource = record//size=A4
Next:PResource;//f0
RefCount:Integer;//f4
Handle:NativeUInt;//f8
HashCode:Word;//fC
Owner:Cardinal;//f10
Data:TResData;//f14
Font:TFontData;//f14
Pen:TPenData;//f14
Brush:TBrushData;//f14
end;;
  TGraphicsObject = class(TPersistent)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FOnChange:TNotifyEvent;//f8
    fC:TCustomTreeView;//fC
    FResource:PResource;//f10
    FOwnerLock:PRTLCriticalSection;//f14
  end;
  TFont = class(TGraphicsObject)
  published
    procedure Assign(Source:TPersistent);//004C3E54
    destructor Destroy();//004C3E04
    constructor Create();//004C3DA4
  public
    FColor:TColor;//f18
    FPixelsPerInch:Integer;//f1C
    FNotify:IChangeNotifier;//f20
    destructor Destroy(); virtual;//004C3E04
    procedure Assign(Source:TPersistent); virtual;//v8//004C3E54
    procedure Changed; virtual;//vC//004C3E38
  end;
  TPen = class(TGraphicsObject)
  published
    procedure Assign(Source:TPersistent);//004C4640
    destructor Destroy();//004C460C
    constructor Create();//004C45C0
  public
    FMode:TPenMode;//f18
    destructor Destroy(); virtual;//004C460C
    procedure Assign(Source:TPersistent); virtual;//v8//004C4640
  end;
  TBrush = class(TGraphicsObject)
  published
    procedure Assign(Source:TPersistent);//004C49F4
    destructor Destroy();//004C49C0
    constructor Create();//004C4978
  public
    destructor Destroy(); virtual;//004C49C0
    procedure Assign(Source:TPersistent); virtual;//v8//004C49F4
  end;
  TFillStyle = (fsSurface, fsBorder);
  TCanvasStates = (csHandleValid, csFontValid, csPenValid, csBrushValid);
  TCanvasState = set of TCanvasStates;
  TCanvasOrientation = (coLeftToRight, coRightToLeft);
  TTextFormats = (tfBottom, tfCalcRect, tfCenter, tfEditControl, tfEndEllipsis, tfPathEllipsis, tfExpandTabs, tfExternalLeading, tfLeft, tfModifyString, tfNoClip, tfNoPrefix, tfRight, tfRtlReading, tfSingleLine, tfTop, tfVerticalCenter, tfWordBreak, tfHidePrefix, tfNoFullWidthCharBreak, tfPrefixOnly, tfTabStop, tfWordEllipsis, tfComposited);
  TTextFormat = set of TTextFormats;
  TCustomCanvas = class(TPersistent)
  published
    function TextWidth(Text:string):Integer;//004C4DA0
    function TryLock:Boolean;//004C4DC0
    procedure Unlock;//004C4E1C
    function TextHeight(Text:string):Integer;//004C4D80
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure Lock;//004C4D40
    procedure Rectangle(Rect:TRect);//004C4D68
  public
    FOnChange:TNotifyEvent;//f8
    FOnChanging:TNotifyEvent;//f10
    FTextFlags:Integer;//f18
    FLock:_RTL_CRITICAL_SECTION;//f1C
    FLockCount:Integer;//f34
    procedure GetCanvasOrientation; virtual; abstract;//vC//00405554
    procedure GetClipRect; virtual; abstract;//v10//00405554
    procedure GetPenPos; virtual; abstract;//v14//00405554
    procedure GetPixel; virtual; abstract;//v18//00405554
    procedure SetPenPos; virtual; abstract;//v1C//00405554
    procedure SetPixel; virtual; abstract;//v20//00405554
    procedure Changing; virtual;//v28//004C4D2C
    procedure RequiredState; virtual; abstract;//v2C//00405554
    procedure Arc; virtual; abstract;//v30//00405554
    procedure ArcTo; virtual; abstract;//v34//00405554
    procedure AngleArc; virtual; abstract;//v38//00405554
    procedure BrushCopy; virtual; abstract;//v3C//00405554
    procedure Chord; virtual; abstract;//v40//00405554
    procedure Draw; virtual; abstract;//v44//00405554
    procedure Draw; virtual; abstract;//v48//00405554
    procedure DrawFocusRect; virtual; abstract;//v4C//00405554
    procedure Ellipse; virtual; abstract;//v50//00405554
    procedure FillRect; virtual; abstract;//v54//00405554
    procedure FloodFill; virtual; abstract;//v58//00405554
    procedure FrameRect; virtual; abstract;//v5C//00405554
    procedure LineTo; virtual; abstract;//v60//00405554
    procedure MoveTo; virtual; abstract;//v64//00405554
    procedure Pie; virtual; abstract;//v68//00405554
    procedure Polygon; virtual; abstract;//v6C//00405554
    procedure Polyline; virtual; abstract;//v70//00405554
    procedure PolyBezier; virtual; abstract;//v74//00405554
    procedure PolyBezierTo; virtual; abstract;//v78//00405554
    procedure Rectangle; virtual; abstract;//v7C//00405554
    procedure Refresh; virtual; abstract;//v80//00405554
    procedure RoundRect; virtual; abstract;//v84//00405554
    procedure StretchDraw; virtual; abstract;//v88//00405554
    procedure TextExtent; virtual; abstract;//v8C//00405554
    procedure TextOut; virtual; abstract;//v90//00405554
    procedure TextRect; virtual; abstract;//v94//00405554
    procedure TextRect; virtual; abstract;//v98//00405554
  end;
  TCanvas = class(TCustomCanvas)
  published
    procedure Polyline(Points:TPoint);//004C57AC
    procedure PolyBezier(Points:TPoint);//004C57E8
    procedure PolyBezierTo(Points:TPoint);//004C5824
    procedure Polygon(Points:TPoint);//004C5770
    procedure LineTo(X:Integer; Y:Integer);//004C56B4
    procedure MoveTo(X:Integer; Y:Integer);//004C56EC
    procedure Pie(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);//004C5718
    procedure Rectangle(X1:Integer; Y1:Integer; Y2:Integer; X2:Integer);//004C5860
    procedure TextOut(X:Integer; Y:Integer; Text:string);//004C5968
    //procedure TextRect(var Rect:TRect; var Text:string; TextFormat:TTextFormat; ?:?; ?:?);//004C5AC4
    procedure TextRect(Rect:TRect; X:Integer; Text:string; Y:Integer);//004C5A10
    //procedure TextExtent(Text:string; ?:?);//004C5BA4
    procedure Refresh;//004C58A8
    procedure RoundRect(X1:Integer; Y1:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);//004C58B0
    procedure StretchDraw(Rect:TRect; Graphic:TGraphic);//004C5900
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure AngleArc(X:Integer; Y:Integer; SweepAngle:Single; StartAngle:Single; Radius:Cardinal);//004C5014
    procedure BrushCopy(Dest:TRect; Bitmap:TBitmap; Color:TColor; Source:TRect);//004C505C
    procedure Chord(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);//004C5320
    procedure ArcTo(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);//004C4FBC
    constructor Create();//004C4E44
    destructor Destroy();//004C4F08
    procedure Arc(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);//004C4F64
    procedure CopyRect(Dest:TRect; Canvas:TCanvas; Source:TRect);//004C5378
    procedure FillRect(Rect:TRect);//004C55EC
    procedure FloodFill(X:Integer; Y:Integer; FillStyle:TFillStyle; Color:TColor);//004C5628
    procedure FrameRect(Rect:TRect);//004C5678
    procedure Ellipse(X1:Integer; Y1:Integer; Y2:Integer; X2:Integer);//004C55A4
    procedure Draw(X:Integer; Y:Integer; Graphic:TGraphic);//004C5400
    procedure Draw(X:Integer; Y:Integer; Opacity:Byte; Graphic:TGraphic);//004C54B4
    procedure DrawFocusRect(Rect:TRect);//004C5570
  public
    FHandle:HDC;//f38
    State:TCanvasState;//f3C
    FFont:TFont;//f40
    FPen:TPen;//f44
    FBrush:TBrush;//f48
    FPenPos:TPoint;//f4C
    FCopyMode:Integer;//f54
    destructor Destroy(); virtual;//004C4F08
    function GetCanvasOrientation:TCanvasOrientation; virtual;//vC//004C593C
    function GetClipRect:TRect; virtual;//v10//004C5CD8
    function GetPenPos:TPoint; virtual;//v14//004C5C1C
    function GetPixel(X:Integer; Y:Integer):TColor; virtual;//v18//004C5C64
    procedure SetPenPos(Value:Windows.TPoint); virtual;//v1C//004C5C44
    procedure SetPixel(X:Integer; Y:Integer; Value:UITypes.TColor); virtual;//v20//004C5C90
    procedure RequiredState(ReqState:TCanvasState); virtual;//v2C//004C5DD8
    procedure Arc(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer); virtual;//v30//004C4F64
    procedure ArcTo(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer); virtual;//v34//004C4FBC
    procedure AngleArc(X:Integer; Y:Integer; SweepAngle:Single; StartAngle:Single; Radius:Cardinal); virtual;//v38//004C5014
    procedure BrushCopy(Dest:TRect; Bitmap:TBitmap; Color:TColor; Source:TRect); virtual;//v3C//004C505C
    procedure Chord(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer); virtual;//v40//004C5320
    procedure Draw(X:Integer; Y:Integer; Graphic:TGraphic); virtual;//v44//004C5400
    procedure Draw(X:Integer; Y:Integer; Opacity:Byte; Graphic:TGraphic); virtual;//v48//004C54B4
    procedure DrawFocusRect(Rect:TRect); virtual;//v4C//004C5570
    procedure Ellipse(X1:Integer; Y1:Integer; Y2:Integer; X2:Integer); virtual;//v50//004C55A4
    procedure FillRect(Rect:TRect); virtual;//v54//004C55EC
    procedure FloodFill(X:Integer; Y:Integer; FillStyle:TFillStyle; Color:TColor); virtual;//v58//004C5628
    procedure FrameRect(Rect:TRect); virtual;//v5C//004C5678
    procedure LineTo(X:Integer; Y:Integer); virtual;//v60//004C56B4
    procedure MoveTo(X:Integer; Y:Integer); virtual;//v64//004C56EC
    procedure Pie(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer); virtual;//v68//004C5718
    procedure Polygon(Points:TPoint); virtual;//v6C//004C5770
    procedure Polyline(Points:TPoint); virtual;//v70//004C57AC
    procedure PolyBezier(Points:TPoint); virtual;//v74//004C57E8
    procedure PolyBezierTo(Points:TPoint); virtual;//v78//004C5824
    procedure Rectangle(X1:Integer; Y1:Integer; Y2:Integer; X2:Integer); virtual;//v7C//004C5860
    procedure Refresh; virtual;//v80//004C58A8
    procedure RoundRect(X1:Integer; Y1:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer); virtual;//v84//004C58B0
    procedure StretchDraw(Rect:TRect; Graphic:TGraphic); virtual;//v88//004C5900
    //procedure TextExtent(Text:string; ?:?); virtual;//v8C//004C5BA4
    procedure TextOut(X:Integer; Y:Integer; Text:string); virtual;//v90//004C5968
    //procedure TextRect(var Rect:TRect; var Text:string; TextFormat:TTextFormat; ?:?; ?:?); virtual;//v94//004C5AC4
    procedure TextRect(Rect:TRect; X:Integer; Text:string; Y:Integer); virtual;//v98//004C5A10
    procedure v9C; virtual;//v9C//004C5D80
  end;
  TProgressStage = (psStarting, psRunning, psEnding);
  TProgressEvent = procedure(Sender:TObject; Stage:TProgressStage; PercentDone:Byte; RedrawNow:Boolean; const R:TRect; const Msg:string) of object;;
  TGraphic = class(TInterfacedPersistent)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure SetSize(AWidth:Integer; AHeight:Integer);//004C768C
    procedure SaveToFile(Filename:string);//004C761C
    constructor Create();//004C730C
    function Equals(Obj:TObject):Boolean;//004C7554
    procedure LoadFromFile(Filename:string);//004C7594
  public
    FOnChange:TNotifyEvent;//f10
    f14:TCustomForm;//f14
    FOnProgress:TProgressEvent;//f18
    FModified:Boolean;//f20
    FTransparent:Boolean;//f21
    FPaletteModified:Boolean;//f22
    function Equals(Obj:TObject):Boolean; virtual;//004C7554
    procedure DefineProperties(Filer:Classes.TFiler); virtual;//v4//004C73B0
    procedure Changed(Sender:TObject); virtual;//v10//004C7344
    procedure Draw; virtual; abstract;//v14//00405554
    procedure v18; virtual;//v18//004C7404
    function Equals(Graphic:TGraphic):Boolean; virtual;//v1C//004C7414
    procedure GetEmpty; virtual; abstract;//v20//00405554
    procedure GetHeight; virtual; abstract;//v24//00405554
    //function v28:?; virtual;//v28//004C7584
    //function v2C:?; virtual;//v2C//004C758C
    procedure GetWidth; virtual; abstract;//v30//00405554
    procedure v34; virtual;//v34//004C7614
    procedure SetHeight; virtual; abstract;//v38//00405554
    procedure v3C; virtual;//v3C//004C7674
    procedure SetTransparent(Value:Boolean); virtual;//v40//004C76A8
    procedure SetWidth; virtual; abstract;//v44//00405554
    procedure v48; virtual;//v48//004C76B8
    //function v4C:?; virtual;//v4C//004C7588
    constructor Create(); virtual;//v50//004C730C
    procedure LoadFromFile(Filename:string); virtual;//v54//004C7594
    procedure SaveToFile(Filename:string); virtual;//v58//004C761C
    procedure LoadFromStream; virtual; abstract;//v5C//00405554
    procedure SaveToStream; virtual; abstract;//v60//00405554
    procedure LoadFromClipboardFormat; virtual; abstract;//v64//00405554
    procedure SaveToClipboardFormat; virtual; abstract;//v68//00405554
    procedure SetSize(AWidth:Integer; AHeight:Integer); virtual;//v6C//004C768C
    procedure Progress(Sender:TObject; Stage:TProgressStage; PercentDone:Byte; RedrawNow:Boolean; const R:Windows.TRect; const Msg:UnicodeString); dynamic;//004C75E8
  end;
  TPicture = class(TInterfacedPersistent)
  published
    function SupportsClipboardFormat(AFormat:Word):Boolean;//004C83BC
    procedure Assign(Source:TPersistent);//004C8404
    procedure SaveToClipboardFormat(var AFormat:Word; var AData:NativeUInt; var APalette:HPALETTE);//004C8398
    destructor Destroy();//004C8100
    constructor Create();//004C80C0
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);//004C82D4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FGraphic:TGraphic;//fC
    FOnChange:TNotifyEvent;//f10
    f14:TImage;//f14
    FNotify:IChangeNotifier;//f18
    FOnProgress:TProgressEvent;//f20
    f24:TImage;//f24
    destructor Destroy(); virtual;//004C8100
    procedure AssignTo(Dest:Classes.TPersistent); virtual;//v0//004C812C
    procedure DefineProperties(Filer:Classes.TFiler); virtual;//v4//004C8754
    procedure Assign(Source:TPersistent); virtual;//v8//004C8404
    procedure Progress(Sender:TObject; Stage:TProgressStage; PercentDone:Byte; RedrawNow:Boolean; const R:Windows.TRect; const Msg:UnicodeString); dynamic;//004C8484
    procedure Changed(Sender:TObject); dynamic;//004C8460
  end;
  TSharedImage = class(TObject)
  published
    destructor Destroy();//004C9C58
  public
    FRefCount:Integer;//f4
    destructor Destroy(); virtual;//004C9C58
    procedure FreeHandle; virtual; abstract;//v0//00405554
  end;
  TMetafileImage = class(TSharedImage)
  published
    destructor Destroy();//004C87D8
  public
    FHandle:NativeUInt;//f8
    FWidth:Integer;//fC
    FHeight:Integer;//f10
    FPalette:HPALETTE;//f14
    FInch:Word;//f18
    FTempWidth:Integer;//f1C
    FTempHeight:Integer;//f20
    destructor Destroy(); virtual;//004C87D8
    procedure FreeHandle; virtual;//v0//004C8814
  end;
  TMetafile = class(TGraphic)
  published
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);//004C95D8
    procedure SaveToStream(Stream:TStream);//004C9054
    procedure SaveToClipboardFormat(var AFormat:Word; var AData:NativeUInt; var APalette:HPALETTE);//004C965C
    procedure SetSize(AWidth:Integer; AHeight:Integer);//004C9690
    procedure Assign(Source:TPersistent);//004C888C
    destructor Destroy();//004C8860
    constructor Create();//004C8818
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure SaveToFile(Filename:string);//004C8F84
    procedure LoadFromStream(Stream:TStream);//004C8C40
  public
    FImage:TMetafileImage;//f28
    FEnhanced:Boolean;//f2C
    destructor Destroy(); virtual;//004C8860
    procedure Assign(Source:TPersistent); virtual;//v8//004C888C
    procedure Draw(ACanvas:TCanvas; const Rect:Windows.TRect); virtual;//v14//004C8920
    function GetEmpty:Boolean; virtual;//v20//004C8A94
    function GetHeight:Integer; virtual;//v24//004C8AAC
    function GetPalette:HPALETTE; virtual;//v28//004C8B50
    function GetWidth:Integer; virtual;//v30//004C8BDC
    procedure ReadData(Stream:Classes.TStream); virtual;//v34//004C8CBC
    procedure SetHeight(Value:Integer); virtual;//v38//004C9100
    procedure SetTransparent(Value:Boolean); virtual;//v40//004C9224
    procedure SetWidth(Value:Integer); virtual;//v44//004C9228
    //procedure v48(?:?); virtual;//v48//004C9380
    constructor Create(); virtual;//v50//004C8818
    procedure SaveToFile(Filename:string); virtual;//v58//004C8F84
    procedure LoadFromStream(Stream:TStream); virtual;//v5C//004C8C40
    procedure SaveToStream(Stream:TStream); virtual;//v60//004C9054
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE); virtual;//v64//004C95D8
    procedure SaveToClipboardFormat(var AFormat:Word; var AData:NativeUInt; var APalette:HPALETTE); virtual;//v68//004C965C
    procedure SetSize(AWidth:Integer; AHeight:Integer); virtual;//v6C//004C9690
  end;
  TBitmapImage = class(TSharedImage)
  published
    destructor Destroy();//004C9CA0
  public
    FHandle:HBITMAP;//f8
    FMaskHandle:HBITMAP;//fC
    FPalette:HPALETTE;//f10
    FDIBHandle:HBITMAP;//f14
    FDIB:tagDIBSECTION;//f18
    FSaveStream:TMemoryStream;//f6C
    FHalftone:Boolean;//f70
    FOS2Format:Boolean;//f71
    destructor Destroy(); virtual;//004C9CA0
    procedure FreeHandle; virtual;//v0//004C9D0C
  end;
  TBitmapHandleType = (bmDIB, bmDDB);
  TPixelFormat = (pfDevice, pf1bit, pf4bit, pf8bit, pf15bit, pf16bit, pf24bit, pf32bit, pfCustom);
  TAlphaFormat = (afIgnored, afDefined, afPremultiplied);
  TTransparentMode = (tmAuto, tmFixed);
  TBitmap = class(TGraphic)
  published
    procedure SaveToClipboardFormat(var Format:Word; var Data:NativeUInt; var APalette:HPALETTE);//004CC858
    procedure Mask(TransparentColor:TColor);//004CB58C
    procedure LoadFromStream(Stream:TStream);//004CB87C
    procedure SaveToStream(Stream:TStream);//004CC850
    function GetScanline(Row:Integer):Pointer;//004CB1D8
    procedure LoadFromResourceName(Instance:NativeUInt; ResName:string);//004CB80C
    procedure SetSize(AWidth:Integer; AHeight:Integer);//004CC8F8
    procedure Assign(Source:TPersistent);//004CA7E4
    destructor Destroy();//004CA7A8
    constructor Create();//004CA734
    procedure Dormant;//004CA9F8
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);//004CB788
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure FreeImage;//004CAFE8
  public
    FImage:TBitmapImage;//f28
    FCanvas:TCanvas;//f2C
    FIgnorePalette:Boolean;//f30
    FMaskBitsValid:Boolean;//f31
    FMaskValid:Boolean;//f32
    FTransparentColor:TColor;//f34
    FTransparentMode:TTransparentMode;//f38
    FAlphaFormat:TAlphaFormat;//f39
    destructor Destroy(); virtual;//004CA7A8
    procedure Assign(Source:TPersistent); virtual;//v8//004CA7E4
    procedure Changed(Sender:TObject); virtual;//v10//004CA9EC
    procedure Draw(ACanvas:TCanvas; const Rect:Windows.TRect); virtual;//v14//004CAA80
    procedure DrawTransparent(ACanvas:TCanvas; const Rect:Windows.TRect; Opacity:Byte); virtual;//v18//004CAD2C
    function GetEmpty:Boolean; virtual;//v20//004CB04C
    function GetHeight:Integer; virtual;//v24//004CB100
    function GetPalette:HPALETTE; virtual;//v28//004CB140
    //function GetWidth:?; virtual;//v30//004CB460
    procedure ReadData(Stream:Classes.TStream); virtual;//v34//004CB9A0
    //procedure SetHeight(?:?); virtual;//v38//004CC1EC
    procedure SetPalette(Value:Windows.HPALETTE); virtual;//v3C//004CC298
    //procedure SetWidth(?:?); virtual;//v44//004CC550
    procedure WriteData(Stream:Classes.TStream); virtual;//v48//004CC56C
    function GetSupportsPartialTransparency:Boolean; virtual;//v4C//004CB23C
    constructor Create(); virtual;//v50//004CA734
    procedure LoadFromStream(Stream:TStream); virtual;//v5C//004CB87C
    procedure SaveToStream(Stream:TStream); virtual;//v60//004CC850
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE); virtual;//v64//004CB788
    procedure SaveToClipboardFormat(var Format:Word; var Data:NativeUInt; var APalette:HPALETTE); virtual;//v68//004CC858
    procedure SetSize(AWidth:Integer; AHeight:Integer); virtual;//v6C//004CC8F8
    function GetHandle:HBITMAP; virtual;//v70//004CB0B0
    function GetMaskHandle:HBITMAP; virtual;//v74//004CB110
    procedure SetHandleType(Value:TBitmapHandleType); virtual;//v78//004CC0B0
  end;
  TIconImage = class(TSharedImage)
  published
    destructor Destroy();//004CC960
  public
    FMemoryImage:TCustomMemoryStream;//f8
    FSize:TPoint;//fC
    FHandle:HICON;//f14
    destructor Destroy(); virtual;//004CC960
    procedure FreeHandle; virtual;//v0//004CC98C
  end;
  TIcon = class(TGraphic)
  published
    procedure LoadFromStream(Stream:TStream);//004CCF6C
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);//004CD1B0
    procedure SaveToClipboardFormat(var Format:Word; var Data:NativeUInt; var APalette:HPALETTE);//004CD1C4
    procedure SetSize(AWidth:Integer; AHeight:Integer);//004CD14C
    procedure SaveToStream(Stream:TStream);//004CD188
    destructor Destroy();//004CCCF0
    constructor Create();//004CCC9C
    procedure Assign(Source:TPersistent);//004CCD1C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure AssignTo(Dest:TPersistent);//004CC9DC
  public
    FImage:TIconImage;//f28
    FRequestedSize:TPoint;//f2C
    destructor Destroy(); virtual;//004CCCF0
    procedure AssignTo(Dest:TPersistent); virtual;//v0//004CC9DC
    procedure Assign(Source:TPersistent); virtual;//v8//004CCD1C
    procedure Draw(ACanvas:TCanvas; const Rect:Windows.TRect); virtual;//v14//004CCD78
    function GetEmpty:Boolean; virtual;//v20//004CCDBC
    function GetHeight:Integer; virtual;//v24//004CCDE8
    function GetWidth:Integer; virtual;//v30//004CCE14
    //procedure SetHeight(?:?); virtual;//v38//004CD134
    procedure SetTransparent(Value:Boolean); virtual;//v40//004CD16C
    //procedure SetWidth(?:?); virtual;//v44//004CD170
    constructor Create(); virtual;//v50//004CCC9C
    procedure LoadFromStream(Stream:TStream); virtual;//v5C//004CCF6C
    procedure SaveToStream(Stream:TStream); virtual;//v60//004CD188
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE); virtual;//v64//004CD1B0
    procedure SaveToClipboardFormat(var Format:Word; var Data:NativeUInt; var APalette:HPALETTE); virtual;//v68//004CD1C4
    procedure SetSize(AWidth:Integer; AHeight:Integer); virtual;//v6C//004CD14C
  end;
  TWICImageFormat = (wifBmp, wifPng, wifJpeg, wifGif, wifTiff, wifWMPhoto, wifOther);
    procedure ReadError(const Name:UnicodeString);//004B8730
    function IsRelative(const Value:UnicodeString):Boolean;//004B875C
    function RegDataToDataType(Value:TRegDataType):Integer;//004B8774
    function DataTypeToRegData(Value:Integer):TRegDataType;//004B87A4
    function BinaryToHexString(const BinaryData:array[$0..-$1] of System.Byte; const _Dv_:$0..-$1; const PrefixStr:UnicodeString):UnicodeString;//004B87CC
    procedure AddSubSection(const Parent:UnicodeString; const Section:UnicodeString);//004BABCC
    function CursorToIdent(Cursor:LongInt; var Ident:UnicodeString):Boolean;//004BB07C
    function IdentToCursor(const Ident:UnicodeString; var Cursor:LongInt):Boolean;//004BB08C
    function ColorToIdent(Color:LongInt; var Ident:UnicodeString):Boolean;//004BB7E8
    function IdentToColor(const Ident:UnicodeString; var Color:LongInt):Boolean;//004BB7F8
    procedure RegisterColorIntegerConsts;//004BB808
    function StringToAlphaColor(const Value:UnicodeString):TAlphaColor;//004BCE9C
    function AlphaColorToIdent(Color:LongInt; var Ident:UnicodeString):Boolean;//004BCFD8
    function IdentToAlphaColor(const Ident:UnicodeString; var Color:LongInt):Boolean;//004BD060
    procedure RegisterAlphaColorIntegerConsts;//004BD154

implementation

//004B8730
procedure ReadError(const Name:UnicodeString);
begin
{*
 004B8730    push        ebx
 004B8731    add         esp,0FFFFFFF8
 004B8734    mov         ebx,eax
 004B8736    mov         dword ptr [esp],ebx
 004B8739    mov         byte ptr [esp+4],11
 004B873E    push        esp
 004B873F    push        0
 004B8741    mov         ecx,dword ptr ds:[7C464C];^SResString132:TResStringRec
 004B8747    mov         dl,1
 004B8749    mov         eax,[004B65C4];ERegistryException
 004B874E    call        Exception.CreateResFmt
 004B8753    call        @RaiseExcept
 004B8758    pop         ecx
 004B8759    pop         edx
 004B875A    pop         ebx
 004B875B    ret
*}
end;

//004B875C
function IsRelative(const Value:UnicodeString):Boolean;
begin
{*
 004B875C    push        ebx
 004B875D    mov         ebx,eax
 004B875F    test        ebx,ebx
>004B8761    je          004B876D
 004B8763    cmp         word ptr [ebx],5C
>004B8767    jne         004B876D
 004B8769    xor         eax,eax
 004B876B    pop         ebx
 004B876C    ret
 004B876D    mov         al,1
 004B876F    pop         ebx
 004B8770    ret
*}
end;

//004B8774
function RegDataToDataType(Value:TRegDataType):Integer;
begin
{*
 004B8774    dec         al
>004B8776    je          004B8786
 004B8778    dec         al
>004B877A    je          004B878C
 004B877C    dec         al
>004B877E    je          004B8792
 004B8780    dec         al
>004B8782    je          004B8798
>004B8784    jmp         004B879E
 004B8786    mov         eax,1
 004B878B    ret
 004B878C    mov         eax,2
 004B8791    ret
 004B8792    mov         eax,4
 004B8797    ret
 004B8798    mov         eax,3
 004B879D    ret
 004B879E    xor         eax,eax
 004B87A0    ret
*}
end;

//004B87A4
function DataTypeToRegData(Value:Integer):TRegDataType;
begin
{*
 004B87A4    cmp         eax,1
>004B87A7    jne         004B87AC
 004B87A9    mov         al,1
 004B87AB    ret
 004B87AC    cmp         eax,2
>004B87AF    jne         004B87B5
 004B87B1    mov         al,2
>004B87B3    jmp         004B87C9
 004B87B5    cmp         eax,4
>004B87B8    jne         004B87BE
 004B87BA    mov         al,3
>004B87BC    jmp         004B87C9
 004B87BE    cmp         eax,3
>004B87C1    jne         004B87C7
 004B87C3    mov         al,4
>004B87C5    jmp         004B87C9
 004B87C7    xor         eax,eax
 004B87C9    ret
*}
end;

//004B87CC
function BinaryToHexString(const BinaryData:array[$0..-$1] of System.Byte; const _Dv_:$0..-$1; const PrefixStr:UnicodeString):UnicodeString;
begin
{*
 004B87CC    push        ebp
 004B87CD    mov         ebp,esp
 004B87CF    add         esp,0FFFFFFE8
 004B87D2    push        ebx
 004B87D3    push        esi
 004B87D4    push        edi
 004B87D5    xor         ebx,ebx
 004B87D7    mov         dword ptr [ebp-4],ebx
 004B87DA    mov         edi,ecx
 004B87DC    mov         dword ptr [ebp-0C],edx
 004B87DF    mov         dword ptr [ebp-8],eax
 004B87E2    mov         ebx,dword ptr [ebp+8]
 004B87E5    xor         eax,eax
 004B87E7    push        ebp
 004B87E8    push        4B889D
 004B87ED    push        dword ptr fs:[eax]
 004B87F0    mov         dword ptr fs:[eax],esp
 004B87F3    xor         esi,esi
 004B87F5    test        edi,edi
>004B87F7    je          004B880F
 004B87F9    mov         eax,ebx
 004B87FB    mov         edx,edi
 004B87FD    call        @UStrAsg
 004B8802    mov         eax,edi
 004B8804    test        eax,eax
>004B8806    je          004B880D
 004B8808    sub         eax,4
 004B880B    mov         eax,dword ptr [eax]
 004B880D    add         esi,eax
 004B880F    mov         eax,dword ptr [ebp-0C]
 004B8812    inc         eax
 004B8813    mov         dword ptr [ebp-10],eax
 004B8816    mov         edx,dword ptr [ebp-10]
 004B8819    lea         edx,[edx+edx*2]
 004B881C    add         edx,esi
 004B881E    dec         edx
 004B881F    mov         eax,ebx
 004B8821    call        @UStrSetLength
 004B8826    mov         eax,dword ptr [ebx]
 004B8828    call        @UStrToPWChar
 004B882D    mov         edi,eax
 004B882F    mov         eax,dword ptr [ebp-10]
 004B8832    dec         eax
 004B8833    test        eax,eax
>004B8835    jl          004B8887
 004B8837    inc         eax
 004B8838    mov         dword ptr [ebp-18],eax
 004B883B    mov         dword ptr [ebp-14],0
 004B8842    mov         ebx,dword ptr [ebp-8]
 004B8845    lea         ecx,[ebp-4]
 004B8848    movzx       eax,byte ptr [ebx]
 004B884B    mov         edx,2
 004B8850    call        IntToHex
 004B8855    mov         eax,dword ptr [ebp-4]
 004B8858    movzx       eax,word ptr [eax]
 004B885B    mov         word ptr [edi+esi*2],ax
 004B885F    mov         eax,dword ptr [ebp-4]
 004B8862    movzx       eax,word ptr [eax+2]
 004B8866    mov         word ptr [edi+esi*2+2],ax
 004B886B    mov         eax,dword ptr [ebp-10]
 004B886E    dec         eax
 004B886F    cmp         eax,dword ptr [ebp-14]
>004B8872    jle         004B887B
 004B8874    mov         word ptr [edi+esi*2+4],2C
 004B887B    add         esi,3
 004B887E    inc         dword ptr [ebp-14]
 004B8881    inc         ebx
 004B8882    dec         dword ptr [ebp-18]
>004B8885    jne         004B8845
 004B8887    xor         eax,eax
 004B8889    pop         edx
 004B888A    pop         ecx
 004B888B    pop         ecx
 004B888C    mov         dword ptr fs:[eax],edx
 004B888F    push        4B88A4
 004B8894    lea         eax,[ebp-4]
 004B8897    call        @UStrClr
 004B889C    ret
>004B889D    jmp         @HandleFinally
>004B88A2    jmp         004B8894
 004B88A4    pop         edi
 004B88A5    pop         esi
 004B88A6    pop         ebx
 004B88A7    mov         esp,ebp
 004B88A9    pop         ebp
 004B88AA    ret         4
*}
end;

//004B88B0
constructor TRegistry.Create();
begin
{*
 004B88B0    push        ebx
 004B88B1    push        esi
 004B88B2    test        dl,dl
>004B88B4    je          004B88BE
 004B88B6    add         esp,0FFFFFFF0
 004B88B9    call        @ClassCreate
 004B88BE    mov         ebx,edx
 004B88C0    mov         esi,eax
 004B88C2    mov         edx,80000001
 004B88C7    mov         eax,esi
 004B88C9    call        TRegistry.SetRootKey
 004B88CE    mov         dword ptr [esi+18],0F003F
 004B88D5    mov         byte ptr [esi+0C],1
 004B88D9    mov         eax,esi
 004B88DB    test        bl,bl
>004B88DD    je          004B88EE
 004B88DF    call        @AfterConstruction
 004B88E4    pop         dword ptr fs:[0]
 004B88EB    add         esp,0C
 004B88EE    mov         eax,esi
 004B88F0    pop         esi
 004B88F1    pop         ebx
 004B88F2    ret
*}
end;

//004B88F4
constructor TRegistry.Create;
begin
{*
 004B88F4    push        ebx
 004B88F5    push        esi
 004B88F6    push        edi
 004B88F7    test        dl,dl
>004B88F9    je          004B8903
 004B88FB    add         esp,0FFFFFFF0
 004B88FE    call        @ClassCreate
 004B8903    mov         esi,ecx
 004B8905    mov         ebx,edx
 004B8907    mov         edi,eax
 004B8909    xor         edx,edx
 004B890B    mov         eax,edi
 004B890D    call        TRegistry.Create
 004B8912    mov         dword ptr [edi+18],esi
 004B8915    mov         eax,edi
 004B8917    test        bl,bl
>004B8919    je          004B892A
 004B891B    call        @AfterConstruction
 004B8920    pop         dword ptr fs:[0]
 004B8927    add         esp,0C
 004B892A    mov         eax,edi
 004B892C    pop         edi
 004B892D    pop         esi
 004B892E    pop         ebx
 004B892F    ret
*}
end;

//004B8930
destructor TRegistry.Destroy();
begin
{*
 004B8930    push        ebx
 004B8931    push        esi
 004B8932    call        @BeforeDestruction
 004B8937    mov         ebx,edx
 004B8939    mov         esi,eax
 004B893B    mov         eax,esi
 004B893D    call        TRegistry.CloseKey
 004B8942    mov         dl,0FC
 004B8944    and         dl,bl
 004B8946    mov         eax,esi
 004B8948    call        TObject.Destroy
 004B894D    test        bl,bl
>004B894F    jle         004B8958
 004B8951    mov         eax,esi
 004B8953    call        @ClassDestroy
 004B8958    pop         esi
 004B8959    pop         ebx
 004B895A    ret
*}
end;

//004B895C
function TRegistry.CheckResult(RetVal:LongInt):Boolean;
begin
{*
 004B895C    mov         dword ptr [eax+1C],edx
 004B895F    test        edx,edx
 004B8961    sete        al
 004B8964    ret
*}
end;

//004B8968
procedure TRegistry.CloseKey;
begin
{*
 004B8968    push        ebx
 004B8969    mov         ebx,eax
 004B896B    mov         eax,dword ptr [ebx+4]
 004B896E    test        eax,eax
>004B8970    je          004B8994
 004B8972    cmp         byte ptr [ebx+0C],0
>004B8976    jne         004B897E
 004B8978    push        eax
 004B8979    call        advapi32.RegFlushKey
 004B897E    mov         eax,dword ptr [ebx+4]
 004B8981    push        eax
 004B8982    call        advapi32.RegCloseKey
 004B8987    xor         eax,eax
 004B8989    mov         dword ptr [ebx+4],eax
 004B898C    lea         eax,[ebx+10]
 004B898F    call        @UStrClr
 004B8994    pop         ebx
 004B8995    ret
*}
end;

//004B8998
procedure TRegistry.SetRootKey(Value:Windows.HKEY);
begin
{*
 004B8998    push        ebx
 004B8999    push        esi
 004B899A    mov         esi,edx
 004B899C    mov         ebx,eax
 004B899E    mov         eax,dword ptr [ebx+8]
 004B89A1    cmp         esi,eax
>004B89A3    je          004B89BF
 004B89A5    cmp         byte ptr [ebx+14],0
>004B89A9    je          004B89B5
 004B89AB    push        eax
 004B89AC    call        advapi32.RegCloseKey
 004B89B1    mov         byte ptr [ebx+14],0
 004B89B5    mov         dword ptr [ebx+8],esi
 004B89B8    mov         eax,ebx
 004B89BA    call        TRegistry.CloseKey
 004B89BF    pop         esi
 004B89C0    pop         ebx
 004B89C1    ret
*}
end;

//004B89C4
procedure TRegistry.ChangeKey(Value:Windows.HKEY; const Path:UnicodeString);
begin
{*
 004B89C4    push        ebx
 004B89C5    push        esi
 004B89C6    push        edi
 004B89C7    mov         edi,ecx
 004B89C9    mov         esi,edx
 004B89CB    mov         ebx,eax
 004B89CD    mov         eax,ebx
 004B89CF    call        TRegistry.CloseKey
 004B89D4    mov         dword ptr [ebx+4],esi
 004B89D7    lea         eax,[ebx+10]
 004B89DA    mov         edx,edi
 004B89DC    call        @UStrAsg
 004B89E1    pop         edi
 004B89E2    pop         esi
 004B89E3    pop         ebx
 004B89E4    ret
*}
end;

//004B89E8
function TRegistry.GetBaseKey(Relative:Boolean):HKEY;
begin
{*
 004B89E8    mov         ecx,dword ptr [eax+4]
 004B89EB    test        ecx,ecx
>004B89ED    je          004B89F3
 004B89EF    test        dl,dl
>004B89F1    jne         004B89F7
 004B89F3    mov         eax,dword ptr [eax+8]
 004B89F6    ret
 004B89F7    mov         eax,ecx
 004B89F9    ret
*}
end;

//004B89FC
procedure TRegistry.SetCurrentKey(Value:Windows.HKEY);
begin
{*
 004B89FC    mov         dword ptr [eax+4],edx
 004B89FF    ret
*}
end;

//004B8A00
function TRegistry.CreateKey(Key:string):Boolean;
begin
{*
 004B8A00    push        ebp
 004B8A01    mov         ebp,esp
 004B8A03    add         esp,0FFFFFFE8
 004B8A06    push        ebx
 004B8A07    push        esi
 004B8A08    push        edi
 004B8A09    xor         ecx,ecx
 004B8A0B    mov         dword ptr [ebp-4],ecx
 004B8A0E    mov         dword ptr [ebp-8],edx
 004B8A11    mov         esi,eax
 004B8A13    xor         eax,eax
 004B8A15    push        ebp
 004B8A16    push        4B8AE0
 004B8A1B    push        dword ptr fs:[eax]
 004B8A1E    mov         dword ptr fs:[eax],esp
 004B8A21    xor         eax,eax
 004B8A23    mov         dword ptr [ebp-0C],eax
 004B8A26    lea         eax,[ebp-4]
 004B8A29    mov         edx,dword ptr [ebp-8]
 004B8A2C    call        @UStrLAsg
 004B8A31    mov         eax,dword ptr [ebp-4]
 004B8A34    call        IsRelative
 004B8A39    mov         ebx,eax
 004B8A3B    test        bl,bl
>004B8A3D    jne         004B8A51
 004B8A3F    lea         eax,[ebp-4]
 004B8A42    mov         ecx,1
 004B8A47    mov         edx,1
 004B8A4C    call        @UStrDelete
 004B8A51    mov         edi,dword ptr [esi+18]
 004B8A54    and         edi,300
 004B8A5A    lea         eax,[ebp-10]
 004B8A5D    push        eax
 004B8A5E    lea         eax,[ebp-0C]
 004B8A61    push        eax
 004B8A62    push        0
 004B8A64    or          edi,0F003F
 004B8A6A    push        edi
 004B8A6B    push        0
 004B8A6D    push        0
 004B8A6F    push        0
 004B8A71    mov         eax,dword ptr [ebp-4]
 004B8A74    call        @UStrToPWChar
 004B8A79    push        eax
 004B8A7A    mov         edx,ebx
 004B8A7C    mov         eax,esi
 004B8A7E    call        TRegistry.GetBaseKey
 004B8A83    push        eax
 004B8A84    call        advapi32.RegCreateKeyExW
 004B8A89    mov         edx,eax
 004B8A8B    mov         eax,esi
 004B8A8D    call        TRegistry.CheckResult
 004B8A92    mov         ebx,eax
 004B8A94    test        bl,bl
>004B8A96    je          004B8AA3
 004B8A98    mov         eax,dword ptr [ebp-0C]
 004B8A9B    push        eax
 004B8A9C    call        advapi32.RegCloseKey
>004B8AA1    jmp         004B8ACA
 004B8AA3    mov         eax,dword ptr [ebp-8]
 004B8AA6    mov         dword ptr [ebp-18],eax
 004B8AA9    mov         byte ptr [ebp-14],11
 004B8AAD    lea         eax,[ebp-18]
 004B8AB0    push        eax
 004B8AB1    push        0
 004B8AB3    mov         ecx,dword ptr ds:[7C42F4];^SResString141:TResStringRec
 004B8AB9    mov         dl,1
 004B8ABB    mov         eax,[004B65C4];ERegistryException
 004B8AC0    call        Exception.CreateResFmt
 004B8AC5    call        @RaiseExcept
 004B8ACA    xor         eax,eax
 004B8ACC    pop         edx
 004B8ACD    pop         ecx
 004B8ACE    pop         ecx
 004B8ACF    mov         dword ptr fs:[eax],edx
 004B8AD2    push        4B8AE7
 004B8AD7    lea         eax,[ebp-4]
 004B8ADA    call        @UStrClr
 004B8ADF    ret
>004B8AE0    jmp         @HandleFinally
>004B8AE5    jmp         004B8AD7
 004B8AE7    mov         eax,ebx
 004B8AE9    pop         edi
 004B8AEA    pop         esi
 004B8AEB    pop         ebx
 004B8AEC    mov         esp,ebp
 004B8AEE    pop         ebp
 004B8AEF    ret
*}
end;

//004B8AF0
function TRegistry.OpenKey(Key:string; CanCreate:Boolean):Boolean;
begin
{*
 004B8AF0    push        ebp
 004B8AF1    mov         ebp,esp
 004B8AF3    add         esp,0FFFFFFF0
 004B8AF6    push        ebx
 004B8AF7    push        esi
 004B8AF8    xor         ebx,ebx
 004B8AFA    mov         dword ptr [ebp-4],ebx
 004B8AFD    mov         byte ptr [ebp-5],cl
 004B8B00    mov         ebx,edx
 004B8B02    mov         esi,eax
 004B8B04    xor         eax,eax
 004B8B06    push        ebp
 004B8B07    push        4B8C01
 004B8B0C    push        dword ptr fs:[eax]
 004B8B0F    mov         dword ptr fs:[eax],esp
 004B8B12    lea         eax,[ebp-4]
 004B8B15    mov         edx,ebx
 004B8B17    call        @UStrLAsg
 004B8B1C    mov         eax,dword ptr [ebp-4]
 004B8B1F    call        IsRelative
 004B8B24    mov         ebx,eax
 004B8B26    test        bl,bl
>004B8B28    jne         004B8B3C
 004B8B2A    lea         eax,[ebp-4]
 004B8B2D    mov         ecx,1
 004B8B32    mov         edx,1
 004B8B37    call        @UStrDelete
 004B8B3C    xor         eax,eax
 004B8B3E    mov         dword ptr [ebp-0C],eax
 004B8B41    cmp         byte ptr [ebp-5],0
>004B8B45    je          004B8B4D
 004B8B47    cmp         dword ptr [ebp-4],0
>004B8B4B    jne         004B8B7D
 004B8B4D    lea         eax,[ebp-0C]
 004B8B50    push        eax
 004B8B51    mov         eax,dword ptr [esi+18]
 004B8B54    push        eax
 004B8B55    push        0
 004B8B57    mov         eax,dword ptr [ebp-4]
 004B8B5A    call        @UStrToPWChar
 004B8B5F    push        eax
 004B8B60    mov         edx,ebx
 004B8B62    mov         eax,esi
 004B8B64    call        TRegistry.GetBaseKey
 004B8B69    push        eax
 004B8B6A    call        advapi32.RegOpenKeyExW
 004B8B6F    mov         edx,eax
 004B8B71    mov         eax,esi
 004B8B73    call        TRegistry.CheckResult
 004B8B78    mov         byte ptr [ebp-6],al
>004B8B7B    jmp         004B8BB5
 004B8B7D    lea         eax,[ebp-10]
 004B8B80    push        eax
 004B8B81    lea         eax,[ebp-0C]
 004B8B84    push        eax
 004B8B85    push        0
 004B8B87    mov         eax,dword ptr [esi+18]
 004B8B8A    push        eax
 004B8B8B    push        0
 004B8B8D    push        0
 004B8B8F    push        0
 004B8B91    mov         eax,dword ptr [ebp-4]
 004B8B94    call        @UStrToPWChar
 004B8B99    push        eax
 004B8B9A    mov         edx,ebx
 004B8B9C    mov         eax,esi
 004B8B9E    call        TRegistry.GetBaseKey
 004B8BA3    push        eax
 004B8BA4    call        advapi32.RegCreateKeyExW
 004B8BA9    mov         edx,eax
 004B8BAB    mov         eax,esi
 004B8BAD    call        TRegistry.CheckResult
 004B8BB2    mov         byte ptr [ebp-6],al
 004B8BB5    cmp         byte ptr [ebp-6],0
>004B8BB9    je          004B8BEB
 004B8BBB    cmp         dword ptr [esi+4],0
 004B8BBF    setne       al
 004B8BC2    test        al,bl
>004B8BC4    je          004B8BDE
 004B8BC6    push        dword ptr [esi+10]
 004B8BC9    push        4B8C20;'\'
 004B8BCE    push        dword ptr [ebp-4]
 004B8BD1    lea         eax,[ebp-4]
 004B8BD4    mov         edx,3
 004B8BD9    call        @UStrCatN
 004B8BDE    mov         ecx,dword ptr [ebp-4]
 004B8BE1    mov         edx,dword ptr [ebp-0C]
 004B8BE4    mov         eax,esi
 004B8BE6    call        TRegistry.ChangeKey
 004B8BEB    xor         eax,eax
 004B8BED    pop         edx
 004B8BEE    pop         ecx
 004B8BEF    pop         ecx
 004B8BF0    mov         dword ptr fs:[eax],edx
 004B8BF3    push        4B8C08
 004B8BF8    lea         eax,[ebp-4]
 004B8BFB    call        @UStrClr
 004B8C00    ret
>004B8C01    jmp         @HandleFinally
>004B8C06    jmp         004B8BF8
 004B8C08    movzx       eax,byte ptr [ebp-6]
 004B8C0C    pop         esi
 004B8C0D    pop         ebx
 004B8C0E    mov         esp,ebp
 004B8C10    pop         ebp
 004B8C11    ret
*}
end;

//004B8C24
function TRegistry.OpenKeyReadOnly(Key:string):Boolean;
begin
{*
 004B8C24    push        ebp
 004B8C25    mov         ebp,esp
 004B8C27    add         esp,0FFFFFFF4
 004B8C2A    push        ebx
 004B8C2B    push        esi
 004B8C2C    push        edi
 004B8C2D    xor         ecx,ecx
 004B8C2F    mov         dword ptr [ebp-4],ecx
 004B8C32    mov         ebx,edx
 004B8C34    mov         esi,eax
 004B8C36    xor         eax,eax
 004B8C38    push        ebp
 004B8C39    push        4B8DE7
 004B8C3E    push        dword ptr fs:[eax]
 004B8C41    mov         dword ptr fs:[eax],esp
 004B8C44    lea         eax,[ebp-4]
 004B8C47    mov         edx,ebx
 004B8C49    call        @UStrLAsg
 004B8C4E    mov         eax,dword ptr [ebp-4]
 004B8C51    call        IsRelative
 004B8C56    mov         ebx,eax
 004B8C58    test        bl,bl
>004B8C5A    jne         004B8C6E
 004B8C5C    lea         eax,[ebp-4]
 004B8C5F    mov         ecx,1
 004B8C64    mov         edx,1
 004B8C69    call        @UStrDelete
 004B8C6E    xor         eax,eax
 004B8C70    mov         dword ptr [ebp-0C],eax
 004B8C73    mov         edi,dword ptr [esi+18]
 004B8C76    and         edi,300
 004B8C7C    lea         eax,[ebp-0C]
 004B8C7F    push        eax
 004B8C80    mov         eax,edi
 004B8C82    or          eax,20019
 004B8C87    push        eax
 004B8C88    push        0
 004B8C8A    mov         eax,dword ptr [ebp-4]
 004B8C8D    call        @UStrToPWChar
 004B8C92    push        eax
 004B8C93    mov         edx,ebx
 004B8C95    mov         eax,esi
 004B8C97    call        TRegistry.GetBaseKey
 004B8C9C    push        eax
 004B8C9D    call        advapi32.RegOpenKeyExW
 004B8CA2    mov         edx,eax
 004B8CA4    mov         eax,esi
 004B8CA6    call        TRegistry.CheckResult
 004B8CAB    mov         byte ptr [ebp-5],al
 004B8CAE    cmp         byte ptr [ebp-5],0
>004B8CB2    je          004B8CF2
 004B8CB4    or          edi,20019
 004B8CBA    mov         dword ptr [esi+18],edi
 004B8CBD    cmp         dword ptr [esi+4],0
 004B8CC1    setne       al
 004B8CC4    test        al,bl
>004B8CC6    je          004B8CE0
 004B8CC8    push        dword ptr [esi+10]
 004B8CCB    push        4B8E08;'\'
 004B8CD0    push        dword ptr [ebp-4]
 004B8CD3    lea         eax,[ebp-4]
 004B8CD6    mov         edx,3
 004B8CDB    call        @UStrCatN
 004B8CE0    mov         ecx,dword ptr [ebp-4]
 004B8CE3    mov         edx,dword ptr [ebp-0C]
 004B8CE6    mov         eax,esi
 004B8CE8    call        TRegistry.ChangeKey
>004B8CED    jmp         004B8DD1
 004B8CF2    lea         eax,[ebp-0C]
 004B8CF5    push        eax
 004B8CF6    mov         eax,edi
 004B8CF8    or          eax,20009
 004B8CFD    push        eax
 004B8CFE    push        0
 004B8D00    mov         eax,dword ptr [ebp-4]
 004B8D03    call        @UStrToPWChar
 004B8D08    push        eax
 004B8D09    mov         edx,ebx
 004B8D0B    mov         eax,esi
 004B8D0D    call        TRegistry.GetBaseKey
 004B8D12    push        eax
 004B8D13    call        advapi32.RegOpenKeyExW
 004B8D18    mov         edx,eax
 004B8D1A    mov         eax,esi
 004B8D1C    call        TRegistry.CheckResult
 004B8D21    mov         byte ptr [ebp-5],al
 004B8D24    cmp         byte ptr [ebp-5],0
>004B8D28    je          004B8D65
 004B8D2A    or          edi,20009
 004B8D30    mov         dword ptr [esi+18],edi
 004B8D33    cmp         dword ptr [esi+4],0
 004B8D37    setne       al
 004B8D3A    test        al,bl
>004B8D3C    je          004B8D56
 004B8D3E    push        dword ptr [esi+10]
 004B8D41    push        4B8E08;'\'
 004B8D46    push        dword ptr [ebp-4]
 004B8D49    lea         eax,[ebp-4]
 004B8D4C    mov         edx,3
 004B8D51    call        @UStrCatN
 004B8D56    mov         ecx,dword ptr [ebp-4]
 004B8D59    mov         edx,dword ptr [ebp-0C]
 004B8D5C    mov         eax,esi
 004B8D5E    call        TRegistry.ChangeKey
>004B8D63    jmp         004B8DD1
 004B8D65    lea         eax,[ebp-0C]
 004B8D68    push        eax
 004B8D69    mov         eax,edi
 004B8D6B    or          eax,1
 004B8D6E    push        eax
 004B8D6F    push        0
 004B8D71    mov         eax,dword ptr [ebp-4]
 004B8D74    call        @UStrToPWChar
 004B8D79    push        eax
 004B8D7A    mov         edx,ebx
 004B8D7C    mov         eax,esi
 004B8D7E    call        TRegistry.GetBaseKey
 004B8D83    push        eax
 004B8D84    call        advapi32.RegOpenKeyExW
 004B8D89    mov         edx,eax
 004B8D8B    mov         eax,esi
 004B8D8D    call        TRegistry.CheckResult
 004B8D92    mov         byte ptr [ebp-5],al
 004B8D95    cmp         byte ptr [ebp-5],0
>004B8D99    je          004B8DD1
 004B8D9B    or          edi,1
 004B8D9E    mov         dword ptr [esi+18],edi
 004B8DA1    cmp         dword ptr [esi+4],0
 004B8DA5    setne       al
 004B8DA8    test        al,bl
>004B8DAA    je          004B8DC4
 004B8DAC    push        dword ptr [esi+10]
 004B8DAF    push        4B8E08;'\'
 004B8DB4    push        dword ptr [ebp-4]
 004B8DB7    lea         eax,[ebp-4]
 004B8DBA    mov         edx,3
 004B8DBF    call        @UStrCatN
 004B8DC4    mov         ecx,dword ptr [ebp-4]
 004B8DC7    mov         edx,dword ptr [ebp-0C]
 004B8DCA    mov         eax,esi
 004B8DCC    call        TRegistry.ChangeKey
 004B8DD1    xor         eax,eax
 004B8DD3    pop         edx
 004B8DD4    pop         ecx
 004B8DD5    pop         ecx
 004B8DD6    mov         dword ptr fs:[eax],edx
 004B8DD9    push        4B8DEE
 004B8DDE    lea         eax,[ebp-4]
 004B8DE1    call        @UStrClr
 004B8DE6    ret
>004B8DE7    jmp         @HandleFinally
>004B8DEC    jmp         004B8DDE
 004B8DEE    movzx       eax,byte ptr [ebp-5]
 004B8DF2    pop         edi
 004B8DF3    pop         esi
 004B8DF4    pop         ebx
 004B8DF5    mov         esp,ebp
 004B8DF7    pop         ebp
 004B8DF8    ret
*}
end;

//004B8E0C
function TRegistry.DeleteKey(Key:string):Boolean;
begin
{*
 004B8E0C    push        ebp
 004B8E0D    mov         ebp,esp
 004B8E0F    add         esp,0FFFFFFC4
 004B8E12    push        ebx
 004B8E13    xor         ecx,ecx
 004B8E15    mov         dword ptr [ebp-3C],ecx
 004B8E18    mov         dword ptr [ebp-4],ecx
 004B8E1B    mov         dword ptr [ebp-8],ecx
 004B8E1E    mov         ebx,edx
 004B8E20    mov         dword ptr [ebp-0C],eax
 004B8E23    xor         eax,eax
 004B8E25    push        ebp
 004B8E26    push        4B8FC7
 004B8E2B    push        dword ptr fs:[eax]
 004B8E2E    mov         dword ptr fs:[eax],esp
 004B8E31    lea         eax,[ebp-4]
 004B8E34    mov         edx,ebx
 004B8E36    call        @UStrLAsg
 004B8E3B    mov         eax,dword ptr [ebp-4]
 004B8E3E    call        IsRelative
 004B8E43    mov         byte ptr [ebp-11],al
 004B8E46    cmp         byte ptr [ebp-11],0
>004B8E4A    jne         004B8E5E
 004B8E4C    lea         eax,[ebp-4]
 004B8E4F    mov         ecx,1
 004B8E54    mov         edx,1
 004B8E59    call        @UStrDelete
 004B8E5E    mov         eax,dword ptr [ebp-0C]
 004B8E61    mov         eax,dword ptr [eax+4]
 004B8E64    mov         dword ptr [ebp-18],eax
 004B8E67    mov         edx,ebx
 004B8E69    mov         eax,dword ptr [ebp-0C]
 004B8E6C    call        TRegistry.GetKey
 004B8E71    mov         dword ptr [ebp-1C],eax
 004B8E74    cmp         dword ptr [ebp-1C],0
>004B8E78    je          004B8F3D
 004B8E7E    xor         eax,eax
 004B8E80    push        ebp
 004B8E81    push        4B8F36
 004B8E86    push        dword ptr fs:[eax]
 004B8E89    mov         dword ptr fs:[eax],esp
 004B8E8C    mov         edx,dword ptr [ebp-1C]
 004B8E8F    mov         eax,dword ptr [ebp-0C]
 004B8E92    call        TRegistry.SetCurrentKey
 004B8E97    lea         edx,[ebp-38]
 004B8E9A    mov         eax,dword ptr [ebp-0C]
 004B8E9D    call        TRegistry.GetKeyInfo
 004B8EA2    test        al,al
>004B8EA4    je          004B8F14
 004B8EA6    mov         ecx,dword ptr [ebp-34]
 004B8EA9    inc         ecx
 004B8EAA    lea         eax,[ebp-8]
 004B8EAD    xor         edx,edx
 004B8EAF    call        @UStrFromPWCharLen
 004B8EB4    mov         ebx,dword ptr [ebp-38]
 004B8EB7    dec         ebx
 004B8EB8    cmp         ebx,0
>004B8EBB    jl          004B8F14
 004B8EBD    mov         eax,dword ptr [ebp-34]
 004B8EC0    inc         eax
 004B8EC1    mov         dword ptr [ebp-10],eax
 004B8EC4    push        0
 004B8EC6    push        0
 004B8EC8    push        0
 004B8ECA    push        0
 004B8ECC    lea         eax,[ebp-10]
 004B8ECF    push        eax
 004B8ED0    mov         eax,dword ptr [ebp-8]
 004B8ED3    call        @UStrToPWChar
 004B8ED8    push        eax
 004B8ED9    push        ebx
 004B8EDA    mov         eax,dword ptr [ebp-1C]
 004B8EDD    push        eax
 004B8EDE    call        advapi32.RegEnumKeyExW
 004B8EE3    mov         edx,eax
 004B8EE5    mov         eax,dword ptr [ebp-0C]
 004B8EE8    call        TRegistry.CheckResult
 004B8EED    test        al,al
>004B8EEF    je          004B8F0E
 004B8EF1    mov         eax,dword ptr [ebp-8]
 004B8EF4    call        @UStrToPWChar
 004B8EF9    mov         edx,eax
 004B8EFB    lea         eax,[ebp-3C]
 004B8EFE    call        @UStrFromPWChar
 004B8F03    mov         edx,dword ptr [ebp-3C]
 004B8F06    mov         eax,dword ptr [ebp-0C]
 004B8F09    call        TRegistry.DeleteKey
 004B8F0E    dec         ebx
 004B8F0F    cmp         ebx,0FFFFFFFF
>004B8F12    jne         004B8EBD
 004B8F14    xor         eax,eax
 004B8F16    pop         edx
 004B8F17    pop         ecx
 004B8F18    pop         ecx
 004B8F19    mov         dword ptr fs:[eax],edx
 004B8F1C    push        4B8F3D
 004B8F21    mov         edx,dword ptr [ebp-18]
 004B8F24    mov         eax,dword ptr [ebp-0C]
 004B8F27    call        TRegistry.SetCurrentKey
 004B8F2C    mov         eax,dword ptr [ebp-1C]
 004B8F2F    push        eax
 004B8F30    call        advapi32.RegCloseKey
 004B8F35    ret
>004B8F36    jmp         @HandleFinally
>004B8F3B    jmp         004B8F21
 004B8F3D    cmp         byte ptr ds:[7CA43C],0;gvar_007CA43C
>004B8F44    je          004B8F7D
 004B8F46    push        0
 004B8F48    mov         eax,dword ptr [ebp-0C]
 004B8F4B    mov         eax,dword ptr [eax+18]
 004B8F4E    and         eax,300
 004B8F53    push        eax
 004B8F54    mov         eax,dword ptr [ebp-4]
 004B8F57    call        @UStrToPWChar
 004B8F5C    push        eax
 004B8F5D    movzx       edx,byte ptr [ebp-11]
 004B8F61    mov         eax,dword ptr [ebp-0C]
 004B8F64    call        TRegistry.GetBaseKey
 004B8F69    push        eax
 004B8F6A    call        RegDeleteKeyEx
 004B8F6F    mov         edx,eax
 004B8F71    mov         eax,dword ptr [ebp-0C]
 004B8F74    call        TRegistry.CheckResult
 004B8F79    mov         ebx,eax
>004B8F7B    jmp         004B8FA4
 004B8F7D    mov         eax,dword ptr [ebp-4]
 004B8F80    call        @UStrToPWChar
 004B8F85    push        eax
 004B8F86    movzx       edx,byte ptr [ebp-11]
 004B8F8A    mov         eax,dword ptr [ebp-0C]
 004B8F8D    call        TRegistry.GetBaseKey
 004B8F92    push        eax
 004B8F93    call        advapi32.RegDeleteKeyW
 004B8F98    mov         edx,eax
 004B8F9A    mov         eax,dword ptr [ebp-0C]
 004B8F9D    call        TRegistry.CheckResult
 004B8FA2    mov         ebx,eax
 004B8FA4    xor         eax,eax
 004B8FA6    pop         edx
 004B8FA7    pop         ecx
 004B8FA8    pop         ecx
 004B8FA9    mov         dword ptr fs:[eax],edx
 004B8FAC    push        4B8FCE
 004B8FB1    lea         eax,[ebp-3C]
 004B8FB4    call        @UStrClr
 004B8FB9    lea         eax,[ebp-8]
 004B8FBC    mov         edx,2
 004B8FC1    call        @UStrArrayClr
 004B8FC6    ret
>004B8FC7    jmp         @HandleFinally
>004B8FCC    jmp         004B8FB1
 004B8FCE    mov         eax,ebx
 004B8FD0    pop         ebx
 004B8FD1    mov         esp,ebp
 004B8FD3    pop         ebp
 004B8FD4    ret
*}
end;

//004B8FD8
function TRegistry.DeleteValue(Name:string):Boolean;
begin
{*
 004B8FD8    push        ebx
 004B8FD9    push        esi
 004B8FDA    mov         esi,edx
 004B8FDC    mov         ebx,eax
 004B8FDE    mov         eax,esi
 004B8FE0    call        @UStrToPWChar
 004B8FE5    push        eax
 004B8FE6    mov         eax,dword ptr [ebx+4]
 004B8FE9    push        eax
 004B8FEA    call        advapi32.RegDeleteValueW
 004B8FEF    mov         edx,eax
 004B8FF1    mov         eax,ebx
 004B8FF3    call        TRegistry.CheckResult
 004B8FF8    pop         esi
 004B8FF9    pop         ebx
 004B8FFA    ret
*}
end;

//004B8FFC
function TRegistry.GetKeyInfo(var Value:TRegKeyInfo):Boolean;
begin
{*
 004B8FFC    push        ebx
 004B8FFD    push        esi
 004B8FFE    mov         ebx,edx
 004B9000    mov         esi,eax
 004B9002    mov         eax,ebx
 004B9004    xor         ecx,ecx
 004B9006    mov         edx,1C
 004B900B    call        @FillChar
 004B9010    lea         eax,[ebx+14]
 004B9013    push        eax
 004B9014    push        0
 004B9016    lea         eax,[ebx+10]
 004B9019    push        eax
 004B901A    lea         eax,[ebx+0C]
 004B901D    push        eax
 004B901E    lea         eax,[ebx+8]
 004B9021    push        eax
 004B9022    push        0
 004B9024    lea         eax,[ebx+4]
 004B9027    push        eax
 004B9028    push        ebx
 004B9029    push        0
 004B902B    push        0
 004B902D    push        0
 004B902F    mov         eax,dword ptr [esi+4]
 004B9032    push        eax
 004B9033    call        advapi32.RegQueryInfoKeyW
 004B9038    mov         edx,eax
 004B903A    mov         eax,esi
 004B903C    call        TRegistry.CheckResult
 004B9041    mov         edx,dword ptr ds:[7C4EF4];^gvar_007C7CB8:Cardinal
 004B9047    cmp         byte ptr [edx+0C],0
>004B904B    je          004B9064
 004B904D    mov         edx,dword ptr ds:[7C4EC4];^gvar_0079EDDC
 004B9053    cmp         dword ptr [edx],2
>004B9056    jne         004B9064
 004B9058    mov         edx,dword ptr [ebx+4]
 004B905B    add         dword ptr [ebx+4],edx
 004B905E    mov         edx,dword ptr [ebx+0C]
 004B9061    add         dword ptr [ebx+0C],edx
 004B9064    pop         esi
 004B9065    pop         ebx
 004B9066    ret
*}
end;

//004B9068
procedure TRegistry.GetKeyNames(Strings:TStrings);
begin
{*
 004B9068    push        ebp
 004B9069    mov         ebp,esp
 004B906B    add         esp,0FFFFFFD4
 004B906E    push        ebx
 004B906F    push        esi
 004B9070    push        edi
 004B9071    xor         ecx,ecx
 004B9073    mov         dword ptr [ebp-2C],ecx
 004B9076    mov         dword ptr [ebp-4],ecx
 004B9079    mov         dword ptr [ebp-8],edx
 004B907C    mov         edi,eax
 004B907E    xor         eax,eax
 004B9080    push        ebp
 004B9081    push        4B9120
 004B9086    push        dword ptr fs:[eax]
 004B9089    mov         dword ptr fs:[eax],esp
 004B908C    mov         eax,dword ptr [ebp-8]
 004B908F    mov         edx,dword ptr [eax]
 004B9091    call        dword ptr [edx+48]
 004B9094    lea         edx,[ebp-28]
 004B9097    mov         eax,edi
 004B9099    call        TRegistry.GetKeyInfo
 004B909E    test        al,al
>004B90A0    je          004B9102
 004B90A2    mov         ecx,dword ptr [ebp-24]
 004B90A5    inc         ecx
 004B90A6    lea         eax,[ebp-4]
 004B90A9    xor         edx,edx
 004B90AB    call        @UStrFromPWCharLen
 004B90B0    mov         ebx,dword ptr [ebp-28]
 004B90B3    dec         ebx
 004B90B4    test        ebx,ebx
>004B90B6    jl          004B9102
 004B90B8    inc         ebx
 004B90B9    xor         esi,esi
 004B90BB    mov         eax,dword ptr [ebp-24]
 004B90BE    inc         eax
 004B90BF    mov         dword ptr [ebp-0C],eax
 004B90C2    push        0
 004B90C4    push        0
 004B90C6    push        0
 004B90C8    push        0
 004B90CA    lea         eax,[ebp-0C]
 004B90CD    push        eax
 004B90CE    mov         eax,dword ptr [ebp-4]
 004B90D1    call        @UStrToPWChar
 004B90D6    push        eax
 004B90D7    push        esi
 004B90D8    mov         eax,dword ptr [edi+4]
 004B90DB    push        eax
 004B90DC    call        advapi32.RegEnumKeyExW
 004B90E1    mov         eax,dword ptr [ebp-4]
 004B90E4    call        @UStrToPWChar
 004B90E9    mov         edx,eax
 004B90EB    lea         eax,[ebp-2C]
 004B90EE    call        @UStrFromPWChar
 004B90F3    mov         edx,dword ptr [ebp-2C]
 004B90F6    mov         eax,dword ptr [ebp-8]
 004B90F9    mov         ecx,dword ptr [eax]
 004B90FB    call        dword ptr [ecx+3C]
 004B90FE    inc         esi
 004B90FF    dec         ebx
>004B9100    jne         004B90BB
 004B9102    xor         eax,eax
 004B9104    pop         edx
 004B9105    pop         ecx
 004B9106    pop         ecx
 004B9107    mov         dword ptr fs:[eax],edx
 004B910A    push        4B9127
 004B910F    lea         eax,[ebp-2C]
 004B9112    call        @UStrClr
 004B9117    lea         eax,[ebp-4]
 004B911A    call        @UStrClr
 004B911F    ret
>004B9120    jmp         @HandleFinally
>004B9125    jmp         004B910F
 004B9127    pop         edi
 004B9128    pop         esi
 004B9129    pop         ebx
 004B912A    mov         esp,ebp
 004B912C    pop         ebp
 004B912D    ret
*}
end;

//004B92A4
function TRegistry.GetRootKeyName:UnicodeString;
begin
{*
 004B92A4    push        ebx
 004B92A5    push        esi
 004B92A6    push        edi
 004B92A7    mov         edi,edx
 004B92A9    mov         ebx,eax
 004B92AB    mov         esi,dword ptr [ebx+8]
 004B92AE    cmp         esi,80000000
>004B92B4    jb          004B92CE
 004B92B6    cmp         esi,80000006
>004B92BC    ja          004B92CE
 004B92BE    mov         eax,edi
 004B92C0    mov         edx,dword ptr [esi*4+7A07A8];^'HKEY_CLASSES_ROOT'
 004B92C7    call        @UStrAsg
>004B92CC    jmp         004B92D5
 004B92CE    mov         eax,edi
 004B92D0    call        @UStrClr
 004B92D5    pop         edi
 004B92D6    pop         esi
 004B92D7    pop         ebx
 004B92D8    ret
*}
end;

//004B92DC
procedure TRegistry.GetValueNames(Strings:TStrings);
begin
{*
 004B92DC    push        ebp
 004B92DD    mov         ebp,esp
 004B92DF    add         esp,0FFFFFFD4
 004B92E2    push        ebx
 004B92E3    push        esi
 004B92E4    push        edi
 004B92E5    xor         ecx,ecx
 004B92E7    mov         dword ptr [ebp-2C],ecx
 004B92EA    mov         dword ptr [ebp-4],ecx
 004B92ED    mov         dword ptr [ebp-8],edx
 004B92F0    mov         edi,eax
 004B92F2    xor         eax,eax
 004B92F4    push        ebp
 004B92F5    push        4B9394
 004B92FA    push        dword ptr fs:[eax]
 004B92FD    mov         dword ptr fs:[eax],esp
 004B9300    mov         eax,dword ptr [ebp-8]
 004B9303    mov         edx,dword ptr [eax]
 004B9305    call        dword ptr [edx+48]
 004B9308    lea         edx,[ebp-28]
 004B930B    mov         eax,edi
 004B930D    call        TRegistry.GetKeyInfo
 004B9312    test        al,al
>004B9314    je          004B9376
 004B9316    mov         ecx,dword ptr [ebp-1C]
 004B9319    inc         ecx
 004B931A    lea         eax,[ebp-4]
 004B931D    xor         edx,edx
 004B931F    call        @UStrFromPWCharLen
 004B9324    mov         ebx,dword ptr [ebp-20]
 004B9327    dec         ebx
 004B9328    test        ebx,ebx
>004B932A    jl          004B9376
 004B932C    inc         ebx
 004B932D    xor         esi,esi
 004B932F    mov         eax,dword ptr [ebp-1C]
 004B9332    inc         eax
 004B9333    mov         dword ptr [ebp-0C],eax
 004B9336    push        0
 004B9338    push        0
 004B933A    push        0
 004B933C    push        0
 004B933E    lea         eax,[ebp-0C]
 004B9341    push        eax
 004B9342    mov         eax,dword ptr [ebp-4]
 004B9345    call        @UStrToPWChar
 004B934A    push        eax
 004B934B    push        esi
 004B934C    mov         eax,dword ptr [edi+4]
 004B934F    push        eax
 004B9350    call        advapi32.RegEnumValueW
 004B9355    mov         eax,dword ptr [ebp-4]
 004B9358    call        @UStrToPWChar
 004B935D    mov         edx,eax
 004B935F    lea         eax,[ebp-2C]
 004B9362    call        @UStrFromPWChar
 004B9367    mov         edx,dword ptr [ebp-2C]
 004B936A    mov         eax,dword ptr [ebp-8]
 004B936D    mov         ecx,dword ptr [eax]
 004B936F    call        dword ptr [ecx+3C]
 004B9372    inc         esi
 004B9373    dec         ebx
>004B9374    jne         004B932F
 004B9376    xor         eax,eax
 004B9378    pop         edx
 004B9379    pop         ecx
 004B937A    pop         ecx
 004B937B    mov         dword ptr fs:[eax],edx
 004B937E    push        4B939B
 004B9383    lea         eax,[ebp-2C]
 004B9386    call        @UStrClr
 004B938B    lea         eax,[ebp-4]
 004B938E    call        @UStrClr
 004B9393    ret
>004B9394    jmp         @HandleFinally
>004B9399    jmp         004B9383
 004B939B    pop         edi
 004B939C    pop         esi
 004B939D    pop         ebx
 004B939E    mov         esp,ebp
 004B93A0    pop         ebp
 004B93A1    ret
*}
end;

//004B93A4
function TRegistry.GetDataInfo(ValueName:string; var Value:TRegDataInfo):Boolean;
begin
{*
 004B93A4    push        ebx
 004B93A5    push        esi
 004B93A6    push        edi
 004B93A7    push        ecx
 004B93A8    mov         esi,ecx
 004B93AA    mov         edi,edx
 004B93AC    mov         ebx,eax
 004B93AE    mov         eax,esi
 004B93B0    xor         ecx,ecx
 004B93B2    mov         edx,8
 004B93B7    call        @FillChar
 004B93BC    lea         eax,[esi+4]
 004B93BF    push        eax
 004B93C0    push        0
 004B93C2    lea         eax,[esp+8]
 004B93C6    push        eax
 004B93C7    push        0
 004B93C9    mov         eax,edi
 004B93CB    call        @UStrToPWChar
 004B93D0    push        eax
 004B93D1    mov         eax,dword ptr [ebx+4]
 004B93D4    push        eax
 004B93D5    call        advapi32.RegQueryValueExW
 004B93DA    mov         edx,eax
 004B93DC    mov         eax,ebx
 004B93DE    call        TRegistry.CheckResult
 004B93E3    mov         ebx,eax
 004B93E5    mov         eax,dword ptr [esp]
 004B93E8    call        DataTypeToRegData
 004B93ED    mov         byte ptr [esi],al
 004B93EF    mov         eax,ebx
 004B93F1    pop         edx
 004B93F2    pop         edi
 004B93F3    pop         esi
 004B93F4    pop         ebx
 004B93F5    ret
*}
end;

//004B93F8
function TRegistry.GetDataSize(ValueName:string):Integer;
begin
{*
 004B93F8    push        ebx
 004B93F9    push        esi
 004B93FA    add         esp,0FFFFFFF8
 004B93FD    mov         esi,edx
 004B93FF    mov         ebx,eax
 004B9401    mov         ecx,esp
 004B9403    mov         edx,esi
 004B9405    mov         eax,ebx
 004B9407    call        TRegistry.GetDataInfo
 004B940C    test        al,al
>004B940E    je          004B9416
 004B9410    mov         eax,dword ptr [esp+4]
>004B9414    jmp         004B9419
 004B9416    or          eax,0FFFFFFFF
 004B9419    pop         ecx
 004B941A    pop         edx
 004B941B    pop         esi
 004B941C    pop         ebx
 004B941D    ret
*}
end;

//004B9420
procedure TRegistry.WriteString(Name:string; Value:string);
begin
{*
 004B9420    push        ebx
 004B9421    push        esi
 004B9422    push        edi
 004B9423    push        ebp
 004B9424    mov         edi,ecx
 004B9426    mov         ebp,edx
 004B9428    mov         esi,eax
 004B942A    mov         ebx,edi
 004B942C    test        ebx,ebx
>004B942E    je          004B9435
 004B9430    sub         ebx,4
 004B9433    mov         ebx,dword ptr [ebx]
 004B9435    inc         ebx
 004B9436    mov         eax,ebx
 004B9438    add         eax,eax
 004B943A    push        eax
 004B943B    push        1
 004B943D    mov         eax,edi
 004B943F    call        @UStrToPWChar
 004B9444    mov         ecx,eax
 004B9446    mov         edx,ebp
 004B9448    mov         eax,esi
 004B944A    call        TRegistry.PutData
 004B944F    pop         ebp
 004B9450    pop         edi
 004B9451    pop         esi
 004B9452    pop         ebx
 004B9453    ret
*}
end;

//004B9454
function TRegistry.ReadString(Name:string):string;
begin
{*
 004B9454    push        ebx
 004B9455    push        esi
 004B9456    push        edi
 004B9457    push        ebp
 004B9458    push        ecx
 004B9459    mov         edi,ecx
 004B945B    mov         ebp,edx
 004B945D    mov         esi,eax
 004B945F    mov         edx,ebp
 004B9461    mov         eax,esi
 004B9463    call        TRegistry.GetDataSize
 004B9468    mov         ebx,eax
 004B946A    test        ebx,ebx
>004B946C    jle         004B94C3
 004B946E    mov         ecx,ebx
 004B9470    sar         ecx,1
>004B9472    jns         004B9477
 004B9474    adc         ecx,0
 004B9477    mov         eax,edi
 004B9479    xor         edx,edx
 004B947B    call        @UStrFromPWCharLen
 004B9480    push        ebx
 004B9481    lea         eax,[esp+4]
 004B9485    push        eax
 004B9486    mov         eax,dword ptr [edi]
 004B9488    call        @UStrToPWChar
 004B948D    mov         ecx,eax
 004B948F    mov         edx,ebp
 004B9491    mov         eax,esi
 004B9493    call        TRegistry.GetData
 004B9498    cmp         byte ptr [esp],1
>004B949C    je          004B94A4
 004B949E    cmp         byte ptr [esp],2
>004B94A2    jne         004B94BA
 004B94A4    mov         eax,dword ptr [edi]
 004B94A6    call        @UStrToPWChar
 004B94AB    call        @PWCharLen
 004B94B0    mov         edx,edi
 004B94B2    xchg        eax,edx
 004B94B3    call        @UStrSetLength
>004B94B8    jmp         004B94CA
 004B94BA    mov         eax,ebp
 004B94BC    call        ReadError
>004B94C1    jmp         004B94CA
 004B94C3    mov         eax,edi
 004B94C5    call        @UStrClr
 004B94CA    pop         edx
 004B94CB    pop         ebp
 004B94CC    pop         edi
 004B94CD    pop         esi
 004B94CE    pop         ebx
 004B94CF    ret
*}
end;

//004B9510
function TRegistry.GetDataAsString(ValueName:string; PrefixType:Boolean):string;
begin
{*
 004B9510    push        ebp
 004B9511    mov         ebp,esp
 004B9513    add         esp,0FFFFFFEC
 004B9516    push        ebx
 004B9517    push        esi
 004B9518    push        edi
 004B9519    xor         ebx,ebx
 004B951B    mov         dword ptr [ebp-14],ebx
 004B951E    mov         dword ptr [ebp-4],ebx
 004B9521    mov         byte ptr [ebp-5],cl
 004B9524    mov         edi,edx
 004B9526    mov         ebx,eax
 004B9528    mov         esi,dword ptr [ebp+8]
 004B952B    xor         eax,eax
 004B952D    push        ebp
 004B952E    push        4B9688
 004B9533    push        dword ptr fs:[eax]
 004B9536    mov         dword ptr fs:[eax],esp
 004B9539    mov         eax,esi
 004B953B    call        @UStrClr
 004B9540    lea         ecx,[ebp-10]
 004B9543    mov         edx,edi
 004B9545    mov         eax,ebx
 004B9547    call        TRegistry.GetDataInfo
 004B954C    test        al,al
>004B954E    je          004B9664
 004B9554    cmp         dword ptr [ebp-0C],0
>004B9558    jle         004B9664
 004B955E    movzx       eax,byte ptr [ebp-10]
 004B9562    sub         al,1
>004B9564    jb          004B95FB
 004B956A    sub         al,2
>004B956C    jb          004B957D
>004B956E    je          004B95BC
 004B9570    dec         al
>004B9572    je          004B95FB
>004B9578    jmp         004B9664
 004B957D    mov         eax,esi
 004B957F    mov         ecx,dword ptr [ebp-0C]
 004B9582    xor         edx,edx
 004B9584    call        @UStrFromPWCharLen
 004B9589    mov         eax,dword ptr [ebp-0C]
 004B958C    push        eax
 004B958D    lea         eax,[ebp-10]
 004B9590    push        eax
 004B9591    mov         eax,dword ptr [esi]
 004B9593    call        @UStrToPWChar
 004B9598    mov         ecx,eax
 004B959A    mov         edx,edi
 004B959C    mov         eax,ebx
 004B959E    call        TRegistry.GetData
 004B95A3    mov         eax,dword ptr [esi]
 004B95A5    call        @UStrToPWChar
 004B95AA    call        @PWCharLen
 004B95AF    mov         edx,esi
 004B95B1    xchg        eax,edx
 004B95B2    call        @UStrSetLength
>004B95B7    jmp         004B9664
 004B95BC    cmp         byte ptr [ebp-5],0
>004B95C0    je          004B95E9
 004B95C2    mov         edx,edi
 004B95C4    mov         eax,ebx
 004B95C6    call        TRegistry.ReadInteger
 004B95CB    lea         ecx,[ebp-14]
 004B95CE    mov         edx,8
 004B95D3    call        IntToHex
 004B95D8    mov         ecx,dword ptr [ebp-14]
 004B95DB    mov         eax,esi
 004B95DD    mov         edx,4B96A4;'dword:'
 004B95E2    call        @UStrCat3
>004B95E7    jmp         004B9664
 004B95E9    mov         edx,edi
 004B95EB    mov         eax,ebx
 004B95ED    call        TRegistry.ReadInteger
 004B95F2    mov         edx,esi
 004B95F4    call        IntToStr
>004B95F9    jmp         004B9664
 004B95FB    mov         eax,dword ptr [ebp-0C]
 004B95FE    push        eax
 004B95FF    lea         eax,[ebp-4]
 004B9602    mov         ecx,1
 004B9607    mov         edx,dword ptr ds:[4B94D0];:TRegistry.:2
 004B960D    call        @DynArraySetLength
 004B9612    add         esp,4
 004B9615    mov         eax,dword ptr [ebp-0C]
 004B9618    push        eax
 004B9619    mov         ecx,dword ptr [ebp-4]
 004B961C    mov         edx,edi
 004B961E    mov         eax,ebx
 004B9620    call        TRegistry.ReadBinaryData
 004B9625    cmp         byte ptr [ebp-5],0
>004B9629    je          004B964A
 004B962B    mov         ebx,dword ptr [ebp-4]
 004B962E    test        ebx,ebx
>004B9630    je          004B9637
 004B9632    sub         ebx,4
 004B9635    mov         ebx,dword ptr [ebx]
 004B9637    push        esi
 004B9638    mov         edx,ebx
 004B963A    dec         edx
 004B963B    mov         ecx,4B96C0;'hex:'
 004B9640    mov         eax,dword ptr [ebp-4]
 004B9643    call        BinaryToHexString
>004B9648    jmp         004B9664
 004B964A    mov         ebx,dword ptr [ebp-4]
 004B964D    test        ebx,ebx
>004B964F    je          004B9656
 004B9651    sub         ebx,4
 004B9654    mov         ebx,dword ptr [ebx]
 004B9656    push        esi
 004B9657    mov         edx,ebx
 004B9659    dec         edx
 004B965A    xor         ecx,ecx
 004B965C    mov         eax,dword ptr [ebp-4]
 004B965F    call        BinaryToHexString
 004B9664    xor         eax,eax
 004B9666    pop         edx
 004B9667    pop         ecx
 004B9668    pop         ecx
 004B9669    mov         dword ptr fs:[eax],edx
 004B966C    push        4B968F
 004B9671    lea         eax,[ebp-14]
 004B9674    call        @UStrClr
 004B9679    lea         eax,[ebp-4]
 004B967C    mov         edx,dword ptr ds:[4B94D0];:TRegistry.:2
 004B9682    call        @DynArrayClear
 004B9687    ret
>004B9688    jmp         @HandleFinally
>004B968D    jmp         004B9671
 004B968F    pop         edi
 004B9690    pop         esi
 004B9691    pop         ebx
 004B9692    mov         esp,ebp
 004B9694    pop         ebp
 004B9695    ret         4
*}
end;

//004B96CC
procedure TRegistry.WriteInteger(Name:string; Value:Integer);
begin
{*
 004B96CC    push        ecx
 004B96CD    mov         dword ptr [esp],ecx
 004B96D0    push        4
 004B96D2    push        3
 004B96D4    lea         ecx,[esp+8]
 004B96D8    call        TRegistry.PutData
 004B96DD    pop         edx
 004B96DE    ret
*}
end;

//004B96E0
function TRegistry.ReadInteger(Name:string):Integer;
begin
{*
 004B96E0    push        ebx
 004B96E1    add         esp,0FFFFFFF8
 004B96E4    mov         ebx,edx
 004B96E6    push        4
 004B96E8    lea         edx,[esp+8]
 004B96EC    push        edx
 004B96ED    lea         ecx,[esp+8]
 004B96F1    mov         edx,ebx
 004B96F3    call        TRegistry.GetData
 004B96F8    cmp         byte ptr [esp+4],3
>004B96FD    je          004B9706
 004B96FF    mov         eax,ebx
 004B9701    call        ReadError
 004B9706    mov         eax,dword ptr [esp]
 004B9709    pop         ecx
 004B970A    pop         edx
 004B970B    pop         ebx
 004B970C    ret
*}
end;

//004B9710
procedure TRegistry.WriteFloat(Name:string; Value:Double);
begin
{*
 004B9710    push        ebp
 004B9711    mov         ebp,esp
 004B9713    push        8
 004B9715    push        4
 004B9717    lea         ecx,[ebp+8]
 004B971A    call        TRegistry.PutData
 004B971F    pop         ebp
 004B9720    ret         8
*}
end;

//004B9724
function TRegistry.ReadFloat(Name:string):Double;
begin
{*
 004B9724    push        ebx
 004B9725    add         esp,0FFFFFFF4
 004B9728    mov         ebx,edx
 004B972A    push        8
 004B972C    lea         edx,[esp+0C]
 004B9730    push        edx
 004B9731    lea         ecx,[esp+8]
 004B9735    mov         edx,ebx
 004B9737    call        TRegistry.GetData
 004B973C    cmp         byte ptr [esp+8],4
>004B9741    jne         004B9748
 004B9743    cmp         eax,8
>004B9746    je          004B974F
 004B9748    mov         eax,ebx
 004B974A    call        ReadError
 004B974F    fld         qword ptr [esp]
 004B9752    add         esp,0C
 004B9755    pop         ebx
 004B9756    ret
*}
end;

//004B9758
procedure TRegistry.WriteDateTime(Name:string; Value:TDateTime);
begin
{*
 004B9758    push        ebp
 004B9759    mov         ebp,esp
 004B975B    push        8
 004B975D    push        4
 004B975F    lea         ecx,[ebp+8]
 004B9762    call        TRegistry.PutData
 004B9767    pop         ebp
 004B9768    ret         8
*}
end;

//004B976C
function TRegistry.ReadDateTime(Name:string):TDateTime;
begin
{*
 004B976C    push        ebx
 004B976D    add         esp,0FFFFFFF4
 004B9770    mov         ebx,edx
 004B9772    push        8
 004B9774    lea         edx,[esp+0C]
 004B9778    push        edx
 004B9779    lea         ecx,[esp+8]
 004B977D    mov         edx,ebx
 004B977F    call        TRegistry.GetData
 004B9784    cmp         byte ptr [esp+8],4
>004B9789    jne         004B9790
 004B978B    cmp         eax,8
>004B978E    je          004B9797
 004B9790    mov         eax,ebx
 004B9792    call        ReadError
 004B9797    fld         qword ptr [esp]
 004B979A    add         esp,0C
 004B979D    pop         ebx
 004B979E    ret
*}
end;

//004B97A0
procedure TRegistry.WriteDate(Name:string; Value:TDateTime);
begin
{*
 004B97A0    push        ebp
 004B97A1    mov         ebp,esp
 004B97A3    push        dword ptr [ebp+0C]
 004B97A6    push        dword ptr [ebp+8]
 004B97A9    call        TRegistry.WriteDateTime
 004B97AE    pop         ebp
 004B97AF    ret         8
*}
end;

//004B97B4
function TRegistry.ReadDate(Name:string):TDateTime;
begin
{*
 004B97B4    add         esp,0FFFFFFF8
 004B97B7    call        TRegistry.ReadDateTime
 004B97BC    fstp        qword ptr [esp]
 004B97BF    wait
 004B97C0    fld         qword ptr [esp]
 004B97C3    pop         ecx
 004B97C4    pop         edx
 004B97C5    ret
*}
end;

//004B97C8
procedure TRegistry.WriteTime(Name:string; Value:TDateTime);
begin
{*
 004B97C8    push        ebp
 004B97C9    mov         ebp,esp
 004B97CB    push        dword ptr [ebp+0C]
 004B97CE    push        dword ptr [ebp+8]
 004B97D1    call        TRegistry.WriteDateTime
 004B97D6    pop         ebp
 004B97D7    ret         8
*}
end;

//004B97DC
function TRegistry.ReadTime(Name:string):TDateTime;
begin
{*
 004B97DC    add         esp,0FFFFFFF8
 004B97DF    call        TRegistry.ReadDateTime
 004B97E4    fstp        qword ptr [esp]
 004B97E7    wait
 004B97E8    fld         qword ptr [esp]
 004B97EB    pop         ecx
 004B97EC    pop         edx
 004B97ED    ret
*}
end;

//004B97F0
{*procedure TRegistry.WriteBinaryData(Name:string; var Buffer:?; BufSize:Integer);
begin
 004B97F0    push        ebp
 004B97F1    mov         ebp,esp
 004B97F3    push        ebx
 004B97F4    mov         ebx,dword ptr [ebp+8]
 004B97F7    push        ebx
 004B97F8    push        4
 004B97FA    call        TRegistry.PutData
 004B97FF    pop         ebx
 004B9800    pop         ebp
 004B9801    ret         4
end;*}

//004B9804
{*function TRegistry.ReadBinaryData(Name:string; var Buffer:?; BufSize:Integer):Integer;
begin
 004B9804    push        ebp
 004B9805    mov         ebp,esp
 004B9807    add         esp,0FFFFFFF0
 004B980A    push        ebx
 004B980B    push        esi
 004B980C    push        edi
 004B980D    mov         dword ptr [ebp-4],ecx
 004B9810    mov         edi,edx
 004B9812    mov         ebx,eax
 004B9814    lea         ecx,[ebp-10]
 004B9817    mov         edx,edi
 004B9819    mov         eax,ebx
 004B981B    call        TRegistry.GetDataInfo
 004B9820    test        al,al
>004B9822    je          004B985B
 004B9824    mov         esi,dword ptr [ebp-0C]
 004B9827    movzx       eax,byte ptr [ebp-10]
 004B982B    mov         byte ptr [ebp-5],al
 004B982E    cmp         byte ptr [ebp-5],4
>004B9832    je          004B983A
 004B9834    cmp         byte ptr [ebp-5],0
>004B9838    jne         004B9852
 004B983A    cmp         esi,dword ptr [ebp+8]
>004B983D    jg          004B9852
 004B983F    push        esi
 004B9840    lea         eax,[ebp-5]
 004B9843    push        eax
 004B9844    mov         ecx,dword ptr [ebp-4]
 004B9847    mov         edx,edi
 004B9849    mov         eax,ebx
 004B984B    call        TRegistry.GetData
>004B9850    jmp         004B985D
 004B9852    mov         eax,edi
 004B9854    call        ReadError
>004B9859    jmp         004B985D
 004B985B    xor         esi,esi
 004B985D    mov         eax,esi
 004B985F    pop         edi
 004B9860    pop         esi
 004B9861    pop         ebx
 004B9862    mov         esp,ebp
 004B9864    pop         ebp
 004B9865    ret         4
end;*}

//004B9868
procedure TRegistry.PutData(const Name:UnicodeString; Buffer:Pointer; BufSize:Integer; RegData:TRegDataType);
begin
{*
 004B9868    push        ebp
 004B9869    mov         ebp,esp
 004B986B    add         esp,0FFFFFFF4
 004B986E    push        ebx
 004B986F    push        esi
 004B9870    push        edi
 004B9871    mov         dword ptr [ebp-4],ecx
 004B9874    mov         edi,edx
 004B9876    mov         ebx,eax
 004B9878    movzx       eax,byte ptr [ebp+8]
 004B987C    call        RegDataToDataType
 004B9881    mov         esi,eax
 004B9883    mov         eax,dword ptr [ebp+0C]
 004B9886    push        eax
 004B9887    mov         eax,dword ptr [ebp-4]
 004B988A    push        eax
 004B988B    push        esi
 004B988C    push        0
 004B988E    mov         eax,edi
 004B9890    call        @UStrToPWChar
 004B9895    push        eax
 004B9896    mov         eax,dword ptr [ebx+4]
 004B9899    push        eax
 004B989A    call        advapi32.RegSetValueExW
 004B989F    mov         edx,eax
 004B98A1    mov         eax,ebx
 004B98A3    call        TRegistry.CheckResult
 004B98A8    test        al,al
>004B98AA    jne         004B98D0
 004B98AC    mov         dword ptr [ebp-0C],edi
 004B98AF    mov         byte ptr [ebp-8],11
 004B98B3    lea         eax,[ebp-0C]
 004B98B6    push        eax
 004B98B7    push        0
 004B98B9    mov         ecx,dword ptr ds:[7C4894];^SResString143:TResStringRec
 004B98BF    mov         dl,1
 004B98C1    mov         eax,[004B65C4];ERegistryException
 004B98C6    call        Exception.CreateResFmt
 004B98CB    call        @RaiseExcept
 004B98D0    pop         edi
 004B98D1    pop         esi
 004B98D2    pop         ebx
 004B98D3    mov         esp,ebp
 004B98D5    pop         ebp
 004B98D6    ret         8
*}
end;

//004B98DC
function TRegistry.GetData(const Name:UnicodeString; Buffer:Pointer; BufSize:Integer; var RegData:TRegDataType):Integer;
begin
{*
 004B98DC    push        ebp
 004B98DD    mov         ebp,esp
 004B98DF    add         esp,0FFFFFFF4
 004B98E2    push        ebx
 004B98E3    push        esi
 004B98E4    push        edi
 004B98E5    mov         edi,ecx
 004B98E7    mov         esi,edx
 004B98E9    mov         ebx,eax
 004B98EB    xor         eax,eax
 004B98ED    mov         dword ptr [ebp-4],eax
 004B98F0    lea         eax,[ebp+0C]
 004B98F3    push        eax
 004B98F4    push        edi
 004B98F5    lea         eax,[ebp-4]
 004B98F8    push        eax
 004B98F9    push        0
 004B98FB    mov         eax,esi
 004B98FD    call        @UStrToPWChar
 004B9902    push        eax
 004B9903    mov         eax,dword ptr [ebx+4]
 004B9906    push        eax
 004B9907    call        advapi32.RegQueryValueExW
 004B990C    mov         edx,eax
 004B990E    mov         eax,ebx
 004B9910    call        TRegistry.CheckResult
 004B9915    test        al,al
>004B9917    jne         004B993D
 004B9919    mov         dword ptr [ebp-0C],esi
 004B991C    mov         byte ptr [ebp-8],11
 004B9920    lea         eax,[ebp-0C]
 004B9923    push        eax
 004B9924    push        0
 004B9926    mov         ecx,dword ptr ds:[7C4F10];^SResString142:TResStringRec
 004B992C    mov         dl,1
 004B992E    mov         eax,[004B65C4];ERegistryException
 004B9933    call        Exception.CreateResFmt
 004B9938    call        @RaiseExcept
 004B993D    mov         ebx,dword ptr [ebp+0C]
 004B9940    mov         eax,dword ptr [ebp-4]
 004B9943    call        DataTypeToRegData
 004B9948    mov         edx,dword ptr [ebp+8]
 004B994B    mov         byte ptr [edx],al
 004B994D    mov         eax,ebx
 004B994F    pop         edi
 004B9950    pop         esi
 004B9951    pop         ebx
 004B9952    mov         esp,ebp
 004B9954    pop         ebp
 004B9955    ret         8
*}
end;

//004B9958
function TRegistry.ValueExists(Name:string):Boolean;
begin
{*
 004B9958    add         esp,0FFFFFFF8
 004B995B    mov         ecx,esp
 004B995D    call        TRegistry.GetDataInfo
 004B9962    pop         ecx
 004B9963    pop         edx
 004B9964    ret
*}
end;

//004B9968
function TRegistry.GetKey(const Key:UnicodeString):HKEY;
begin
{*
 004B9968    push        ebp
 004B9969    mov         ebp,esp
 004B996B    add         esp,0FFFFFFF8
 004B996E    push        ebx
 004B996F    push        esi
 004B9970    xor         ecx,ecx
 004B9972    mov         dword ptr [ebp-4],ecx
 004B9975    mov         ebx,edx
 004B9977    mov         esi,eax
 004B9979    xor         eax,eax
 004B997B    push        ebp
 004B997C    push        4B99EE
 004B9981    push        dword ptr fs:[eax]
 004B9984    mov         dword ptr fs:[eax],esp
 004B9987    lea         eax,[ebp-4]
 004B998A    mov         edx,ebx
 004B998C    call        @UStrLAsg
 004B9991    mov         eax,dword ptr [ebp-4]
 004B9994    call        IsRelative
 004B9999    mov         ebx,eax
 004B999B    test        bl,bl
>004B999D    jne         004B99B1
 004B999F    lea         eax,[ebp-4]
 004B99A2    mov         ecx,1
 004B99A7    mov         edx,1
 004B99AC    call        @UStrDelete
 004B99B1    xor         eax,eax
 004B99B3    mov         dword ptr [ebp-8],eax
 004B99B6    lea         eax,[ebp-8]
 004B99B9    push        eax
 004B99BA    mov         eax,dword ptr [esi+18]
 004B99BD    push        eax
 004B99BE    push        0
 004B99C0    mov         eax,dword ptr [ebp-4]
 004B99C3    call        @UStrToPWChar
 004B99C8    push        eax
 004B99C9    mov         edx,ebx
 004B99CB    mov         eax,esi
 004B99CD    call        TRegistry.GetBaseKey
 004B99D2    push        eax
 004B99D3    call        advapi32.RegOpenKeyExW
 004B99D8    xor         eax,eax
 004B99DA    pop         edx
 004B99DB    pop         ecx
 004B99DC    pop         ecx
 004B99DD    mov         dword ptr fs:[eax],edx
 004B99E0    push        4B99F5
 004B99E5    lea         eax,[ebp-4]
 004B99E8    call        @UStrClr
 004B99ED    ret
>004B99EE    jmp         @HandleFinally
>004B99F3    jmp         004B99E5
 004B99F5    mov         eax,dword ptr [ebp-8]
 004B99F8    pop         esi
 004B99F9    pop         ebx
 004B99FA    pop         ecx
 004B99FB    pop         ecx
 004B99FC    pop         ebp
 004B99FD    ret
*}
end;

//004B9A00
constructor TRegIniFile.Create(AAccess:Cardinal);
begin
{*
 004B9A00    push        ebp
 004B9A01    mov         ebp,esp
 004B9A03    push        ebx
 004B9A04    push        esi
 004B9A05    push        edi
 004B9A06    test        dl,dl
>004B9A08    je          004B9A12
 004B9A0A    add         esp,0FFFFFFF0
 004B9A0D    call        @ClassCreate
 004B9A12    mov         esi,ecx
 004B9A14    mov         ebx,edx
 004B9A16    mov         edi,eax
 004B9A18    mov         ecx,dword ptr [ebp+8]
 004B9A1B    xor         edx,edx
 004B9A1D    mov         eax,edi
 004B9A1F    call        TRegistry.Create
 004B9A24    lea         eax,[edi+20]
 004B9A27    mov         edx,esi
 004B9A29    call        @UStrAsg
 004B9A2E    mov         cl,1
 004B9A30    mov         edx,esi
 004B9A32    mov         eax,edi
 004B9A34    call        TRegistry.OpenKey
 004B9A39    mov         eax,edi
 004B9A3B    test        bl,bl
>004B9A3D    je          004B9A4E
 004B9A3F    call        @AfterConstruction
 004B9A44    pop         dword ptr fs:[0]
 004B9A4B    add         esp,0C
 004B9A4E    mov         eax,edi
 004B9A50    pop         edi
 004B9A51    pop         esi
 004B9A52    pop         ebx
 004B9A53    pop         ebp
 004B9A54    ret         4
*}
end;

//004B9A58
function TRegIniFile.ReadString(Section:string; Ident:string; Default:string):string;
begin
{*
 004B9A58    push        ebp
 004B9A59    mov         ebp,esp
 004B9A5B    add         esp,0FFFFFFF0
 004B9A5E    push        ebx
 004B9A5F    push        esi
 004B9A60    mov         dword ptr [ebp-8],ecx
 004B9A63    mov         dword ptr [ebp-4],eax
 004B9A66    mov         esi,dword ptr [ebp+8]
 004B9A69    mov         ebx,dword ptr [ebp+0C]
 004B9A6C    mov         eax,dword ptr [ebp-4]
 004B9A6F    call        TRegistry.GetKey
 004B9A74    mov         dword ptr [ebp-0C],eax
 004B9A77    cmp         dword ptr [ebp-0C],0
>004B9A7B    je          004B9B1A
 004B9A81    xor         eax,eax
 004B9A83    push        ebp
 004B9A84    push        4B9B13
 004B9A89    push        dword ptr fs:[eax]
 004B9A8C    mov         dword ptr fs:[eax],esp
 004B9A8F    mov         eax,dword ptr [ebp-4]
 004B9A92    mov         eax,dword ptr [eax+4]
 004B9A95    mov         dword ptr [ebp-10],eax
 004B9A98    mov         edx,dword ptr [ebp-0C]
 004B9A9B    mov         eax,dword ptr [ebp-4]
 004B9A9E    call        TRegistry.SetCurrentKey
 004B9AA3    xor         eax,eax
 004B9AA5    push        ebp
 004B9AA6    push        4B9AF5
 004B9AAB    push        dword ptr fs:[eax]
 004B9AAE    mov         dword ptr fs:[eax],esp
 004B9AB1    test        ebx,ebx
>004B9AB3    je          004B9AC4
 004B9AB5    mov         edx,dword ptr [ebp-8]
 004B9AB8    mov         eax,dword ptr [ebp-4]
 004B9ABB    call        TRegistry.ValueExists
 004B9AC0    test        al,al
>004B9AC2    je          004B9AD3
 004B9AC4    mov         ecx,esi
 004B9AC6    mov         edx,dword ptr [ebp-8]
 004B9AC9    mov         eax,dword ptr [ebp-4]
 004B9ACC    call        TRegistry.ReadString
>004B9AD1    jmp         004B9ADC
 004B9AD3    mov         eax,esi
 004B9AD5    mov         edx,ebx
 004B9AD7    call        @UStrAsg
 004B9ADC    xor         eax,eax
 004B9ADE    pop         edx
 004B9ADF    pop         ecx
 004B9AE0    pop         ecx
 004B9AE1    mov         dword ptr fs:[eax],edx
 004B9AE4    push        4B9AFC
 004B9AE9    mov         edx,dword ptr [ebp-10]
 004B9AEC    mov         eax,dword ptr [ebp-4]
 004B9AEF    call        TRegistry.SetCurrentKey
 004B9AF4    ret
>004B9AF5    jmp         @HandleFinally
>004B9AFA    jmp         004B9AE9
 004B9AFC    xor         eax,eax
 004B9AFE    pop         edx
 004B9AFF    pop         ecx
 004B9B00    pop         ecx
 004B9B01    mov         dword ptr fs:[eax],edx
 004B9B04    push        4B9B23
 004B9B09    mov         eax,dword ptr [ebp-0C]
 004B9B0C    push        eax
 004B9B0D    call        advapi32.RegCloseKey
 004B9B12    ret
>004B9B13    jmp         @HandleFinally
>004B9B18    jmp         004B9B09
 004B9B1A    mov         eax,esi
 004B9B1C    mov         edx,ebx
 004B9B1E    call        @UStrAsg
 004B9B23    pop         esi
 004B9B24    pop         ebx
 004B9B25    mov         esp,ebp
 004B9B27    pop         ebp
 004B9B28    ret         8
*}
end;

//004B9B2C
procedure TRegIniFile.WriteString(Section:string; Ident:string; Value:string);
begin
{*
 004B9B2C    push        ebp
 004B9B2D    mov         ebp,esp
 004B9B2F    add         esp,0FFFFFFF4
 004B9B32    push        ebx
 004B9B33    push        esi
 004B9B34    mov         esi,ecx
 004B9B36    mov         ebx,edx
 004B9B38    mov         dword ptr [ebp-4],eax
 004B9B3B    mov         edx,ebx
 004B9B3D    mov         eax,dword ptr [ebp-4]
 004B9B40    call        TRegistry.CreateKey
 004B9B45    mov         edx,ebx
 004B9B47    mov         eax,dword ptr [ebp-4]
 004B9B4A    call        TRegistry.GetKey
 004B9B4F    mov         dword ptr [ebp-8],eax
 004B9B52    cmp         dword ptr [ebp-8],0
>004B9B56    je          004B9BD3
 004B9B58    xor         eax,eax
 004B9B5A    push        ebp
 004B9B5B    push        4B9BCC
 004B9B60    push        dword ptr fs:[eax]
 004B9B63    mov         dword ptr fs:[eax],esp
 004B9B66    mov         eax,dword ptr [ebp-4]
 004B9B69    mov         eax,dword ptr [eax+4]
 004B9B6C    mov         dword ptr [ebp-0C],eax
 004B9B6F    mov         edx,dword ptr [ebp-8]
 004B9B72    mov         eax,dword ptr [ebp-4]
 004B9B75    call        TRegistry.SetCurrentKey
 004B9B7A    xor         eax,eax
 004B9B7C    push        ebp
 004B9B7D    push        4B9BAE
 004B9B82    push        dword ptr fs:[eax]
 004B9B85    mov         dword ptr fs:[eax],esp
 004B9B88    mov         ecx,dword ptr [ebp+8]
 004B9B8B    mov         edx,esi
 004B9B8D    mov         eax,dword ptr [ebp-4]
 004B9B90    call        TRegistry.WriteString
 004B9B95    xor         eax,eax
 004B9B97    pop         edx
 004B9B98    pop         ecx
 004B9B99    pop         ecx
 004B9B9A    mov         dword ptr fs:[eax],edx
 004B9B9D    push        4B9BB5
 004B9BA2    mov         edx,dword ptr [ebp-0C]
 004B9BA5    mov         eax,dword ptr [ebp-4]
 004B9BA8    call        TRegistry.SetCurrentKey
 004B9BAD    ret
>004B9BAE    jmp         @HandleFinally
>004B9BB3    jmp         004B9BA2
 004B9BB5    xor         eax,eax
 004B9BB7    pop         edx
 004B9BB8    pop         ecx
 004B9BB9    pop         ecx
 004B9BBA    mov         dword ptr fs:[eax],edx
 004B9BBD    push        4B9BD3
 004B9BC2    mov         eax,dword ptr [ebp-8]
 004B9BC5    push        eax
 004B9BC6    call        advapi32.RegCloseKey
 004B9BCB    ret
>004B9BCC    jmp         @HandleFinally
>004B9BD1    jmp         004B9BC2
 004B9BD3    pop         esi
 004B9BD4    pop         ebx
 004B9BD5    mov         esp,ebp
 004B9BD7    pop         ebp
 004B9BD8    ret         4
*}
end;

//004B9BDC
procedure TRegIniFile.ReadSection(Section:string; Strings:TStrings);
begin
{*
 004B9BDC    push        ebp
 004B9BDD    mov         ebp,esp
 004B9BDF    add         esp,0FFFFFFF4
 004B9BE2    push        ebx
 004B9BE3    mov         ebx,ecx
 004B9BE5    mov         dword ptr [ebp-4],eax
 004B9BE8    mov         eax,dword ptr [ebp-4]
 004B9BEB    call        TRegistry.GetKey
 004B9BF0    mov         dword ptr [ebp-8],eax
 004B9BF3    cmp         dword ptr [ebp-8],0
>004B9BF7    je          004B9C71
 004B9BF9    xor         eax,eax
 004B9BFB    push        ebp
 004B9BFC    push        4B9C6A
 004B9C01    push        dword ptr fs:[eax]
 004B9C04    mov         dword ptr fs:[eax],esp
 004B9C07    mov         eax,dword ptr [ebp-4]
 004B9C0A    mov         eax,dword ptr [eax+4]
 004B9C0D    mov         dword ptr [ebp-0C],eax
 004B9C10    mov         edx,dword ptr [ebp-8]
 004B9C13    mov         eax,dword ptr [ebp-4]
 004B9C16    call        TRegistry.SetCurrentKey
 004B9C1B    xor         eax,eax
 004B9C1D    push        ebp
 004B9C1E    push        4B9C4C
 004B9C23    push        dword ptr fs:[eax]
 004B9C26    mov         dword ptr fs:[eax],esp
 004B9C29    mov         edx,ebx
 004B9C2B    mov         eax,dword ptr [ebp-4]
 004B9C2E    call        TRegistry.GetValueNames
 004B9C33    xor         eax,eax
 004B9C35    pop         edx
 004B9C36    pop         ecx
 004B9C37    pop         ecx
 004B9C38    mov         dword ptr fs:[eax],edx
 004B9C3B    push        4B9C53
 004B9C40    mov         edx,dword ptr [ebp-0C]
 004B9C43    mov         eax,dword ptr [ebp-4]
 004B9C46    call        TRegistry.SetCurrentKey
 004B9C4B    ret
>004B9C4C    jmp         @HandleFinally
>004B9C51    jmp         004B9C40
 004B9C53    xor         eax,eax
 004B9C55    pop         edx
 004B9C56    pop         ecx
 004B9C57    pop         ecx
 004B9C58    mov         dword ptr fs:[eax],edx
 004B9C5B    push        4B9C71
 004B9C60    mov         eax,dword ptr [ebp-8]
 004B9C63    push        eax
 004B9C64    call        advapi32.RegCloseKey
 004B9C69    ret
>004B9C6A    jmp         @HandleFinally
>004B9C6F    jmp         004B9C60
 004B9C71    pop         ebx
 004B9C72    mov         esp,ebp
 004B9C74    pop         ebp
 004B9C75    ret
*}
end;

//004B9C78
procedure TRegIniFile.ReadSections(Strings:TStrings);
begin
{*
 004B9C78    call        TRegistry.GetKeyNames
 004B9C7D    ret
*}
end;

//004B9C80
procedure TRegIniFile.ReadSectionValues(Section:string; Strings:TStrings);
begin
{*
 004B9C80    push        ebp
 004B9C81    mov         ebp,esp
 004B9C83    add         esp,0FFFFFFE4
 004B9C86    push        ebx
 004B9C87    push        esi
 004B9C88    push        edi
 004B9C89    xor         ebx,ebx
 004B9C8B    mov         dword ptr [ebp-1C],ebx
 004B9C8E    mov         dword ptr [ebp-4],ebx
 004B9C91    mov         dword ptr [ebp-0C],ecx
 004B9C94    mov         dword ptr [ebp-8],eax
 004B9C97    xor         eax,eax
 004B9C99    push        ebp
 004B9C9A    push        4B9DDD
 004B9C9F    push        dword ptr fs:[eax]
 004B9CA2    mov         dword ptr fs:[eax],esp
 004B9CA5    mov         eax,dword ptr [ebp-8]
 004B9CA8    call        TRegistry.GetKey
 004B9CAD    mov         dword ptr [ebp-10],eax
 004B9CB0    cmp         dword ptr [ebp-10],0
>004B9CB4    je          004B9DBF
 004B9CBA    xor         eax,eax
 004B9CBC    push        ebp
 004B9CBD    push        4B9DB8
 004B9CC2    push        dword ptr fs:[eax]
 004B9CC5    mov         dword ptr fs:[eax],esp
 004B9CC8    mov         eax,dword ptr [ebp-8]
 004B9CCB    mov         eax,dword ptr [eax+4]
 004B9CCE    mov         dword ptr [ebp-14],eax
 004B9CD1    mov         edx,dword ptr [ebp-10]
 004B9CD4    mov         eax,dword ptr [ebp-8]
 004B9CD7    call        TRegistry.SetCurrentKey
 004B9CDC    xor         eax,eax
 004B9CDE    push        ebp
 004B9CDF    push        4B9D9A
 004B9CE4    push        dword ptr fs:[eax]
 004B9CE7    mov         dword ptr fs:[eax],esp
 004B9CEA    mov         dl,1
 004B9CEC    mov         eax,[0046F9A0];TStringList
 004B9CF1    call        TStringList.Create
 004B9CF6    mov         dword ptr [ebp-18],eax
 004B9CF9    mov         eax,dword ptr [ebp-0C]
 004B9CFC    call        TStrings.BeginUpdate
 004B9D01    xor         eax,eax
 004B9D03    push        ebp
 004B9D04    push        4B9D7A
 004B9D09    push        dword ptr fs:[eax]
 004B9D0C    mov         dword ptr fs:[eax],esp
 004B9D0F    mov         edx,dword ptr [ebp-18]
 004B9D12    mov         eax,dword ptr [ebp-8]
 004B9D15    call        TRegistry.GetValueNames
 004B9D1A    mov         eax,dword ptr [ebp-18]
 004B9D1D    mov         edx,dword ptr [eax]
 004B9D1F    call        dword ptr [edx+14]
 004B9D22    mov         ebx,eax
 004B9D24    dec         ebx
 004B9D25    test        ebx,ebx
>004B9D27    jl          004B9D5C
 004B9D29    inc         ebx
 004B9D2A    xor         esi,esi
 004B9D2C    lea         ecx,[ebp-4]
 004B9D2F    mov         edx,esi
 004B9D31    mov         eax,dword ptr [ebp-18]
 004B9D34    mov         edi,dword ptr [eax]
 004B9D36    call        dword ptr [edi+0C]
 004B9D39    lea         eax,[ebp-1C]
 004B9D3C    push        eax
 004B9D3D    mov         cl,1
 004B9D3F    mov         edx,dword ptr [ebp-4]
 004B9D42    mov         eax,dword ptr [ebp-8]
 004B9D45    call        TRegistry.GetDataAsString
 004B9D4A    mov         ecx,dword ptr [ebp-1C]
 004B9D4D    mov         edx,dword ptr [ebp-4]
 004B9D50    mov         eax,dword ptr [ebp-0C]
 004B9D53    call        TStrings.SetValue
 004B9D58    inc         esi
 004B9D59    dec         ebx
>004B9D5A    jne         004B9D2C
 004B9D5C    xor         eax,eax
 004B9D5E    pop         edx
 004B9D5F    pop         ecx
 004B9D60    pop         ecx
 004B9D61    mov         dword ptr fs:[eax],edx
 004B9D64    push        4B9D81
 004B9D69    mov         eax,dword ptr [ebp-0C]
 004B9D6C    call        TStrings.EndUpdate
 004B9D71    mov         eax,dword ptr [ebp-18]
 004B9D74    call        TObject.Free
 004B9D79    ret
>004B9D7A    jmp         @HandleFinally
>004B9D7F    jmp         004B9D69
 004B9D81    xor         eax,eax
 004B9D83    pop         edx
 004B9D84    pop         ecx
 004B9D85    pop         ecx
 004B9D86    mov         dword ptr fs:[eax],edx
 004B9D89    push        4B9DA1
 004B9D8E    mov         edx,dword ptr [ebp-14]
 004B9D91    mov         eax,dword ptr [ebp-8]
 004B9D94    call        TRegistry.SetCurrentKey
 004B9D99    ret
>004B9D9A    jmp         @HandleFinally
>004B9D9F    jmp         004B9D8E
 004B9DA1    xor         eax,eax
 004B9DA3    pop         edx
 004B9DA4    pop         ecx
 004B9DA5    pop         ecx
 004B9DA6    mov         dword ptr fs:[eax],edx
 004B9DA9    push        4B9DBF
 004B9DAE    mov         eax,dword ptr [ebp-10]
 004B9DB1    push        eax
 004B9DB2    call        advapi32.RegCloseKey
 004B9DB7    ret
>004B9DB8    jmp         @HandleFinally
>004B9DBD    jmp         004B9DAE
 004B9DBF    xor         eax,eax
 004B9DC1    pop         edx
 004B9DC2    pop         ecx
 004B9DC3    pop         ecx
 004B9DC4    mov         dword ptr fs:[eax],edx
 004B9DC7    push        4B9DE4
 004B9DCC    lea         eax,[ebp-1C]
 004B9DCF    call        @UStrClr
 004B9DD4    lea         eax,[ebp-4]
 004B9DD7    call        @UStrClr
 004B9DDC    ret
>004B9DDD    jmp         @HandleFinally
>004B9DE2    jmp         004B9DCC
 004B9DE4    pop         edi
 004B9DE5    pop         esi
 004B9DE6    pop         ebx
 004B9DE7    mov         esp,ebp
 004B9DE9    pop         ebp
 004B9DEA    ret
*}
end;

//004B9DEC
procedure TRegIniFile.EraseSection(Section:string);
begin
{*
 004B9DEC    call        TRegistry.DeleteKey
 004B9DF1    ret
*}
end;

//004B9DF4
procedure TRegIniFile.DeleteKey(Section:string; Ident:string);
begin
{*
 004B9DF4    push        ebp
 004B9DF5    mov         ebp,esp
 004B9DF7    add         esp,0FFFFFFF4
 004B9DFA    push        ebx
 004B9DFB    mov         ebx,ecx
 004B9DFD    mov         dword ptr [ebp-4],eax
 004B9E00    mov         eax,dword ptr [ebp-4]
 004B9E03    call        TRegistry.GetKey
 004B9E08    mov         dword ptr [ebp-8],eax
 004B9E0B    cmp         dword ptr [ebp-8],0
>004B9E0F    je          004B9E89
 004B9E11    xor         eax,eax
 004B9E13    push        ebp
 004B9E14    push        4B9E82
 004B9E19    push        dword ptr fs:[eax]
 004B9E1C    mov         dword ptr fs:[eax],esp
 004B9E1F    mov         eax,dword ptr [ebp-4]
 004B9E22    mov         eax,dword ptr [eax+4]
 004B9E25    mov         dword ptr [ebp-0C],eax
 004B9E28    mov         edx,dword ptr [ebp-8]
 004B9E2B    mov         eax,dword ptr [ebp-4]
 004B9E2E    call        TRegistry.SetCurrentKey
 004B9E33    xor         eax,eax
 004B9E35    push        ebp
 004B9E36    push        4B9E64
 004B9E3B    push        dword ptr fs:[eax]
 004B9E3E    mov         dword ptr fs:[eax],esp
 004B9E41    mov         edx,ebx
 004B9E43    mov         eax,dword ptr [ebp-4]
 004B9E46    call        TRegistry.DeleteValue
 004B9E4B    xor         eax,eax
 004B9E4D    pop         edx
 004B9E4E    pop         ecx
 004B9E4F    pop         ecx
 004B9E50    mov         dword ptr fs:[eax],edx
 004B9E53    push        4B9E6B
 004B9E58    mov         edx,dword ptr [ebp-0C]
 004B9E5B    mov         eax,dword ptr [ebp-4]
 004B9E5E    call        TRegistry.SetCurrentKey
 004B9E63    ret
>004B9E64    jmp         @HandleFinally
>004B9E69    jmp         004B9E58
 004B9E6B    xor         eax,eax
 004B9E6D    pop         edx
 004B9E6E    pop         ecx
 004B9E6F    pop         ecx
 004B9E70    mov         dword ptr fs:[eax],edx
 004B9E73    push        4B9E89
 004B9E78    mov         eax,dword ptr [ebp-8]
 004B9E7B    push        eax
 004B9E7C    call        advapi32.RegCloseKey
 004B9E81    ret
>004B9E82    jmp         @HandleFinally
>004B9E87    jmp         004B9E78
 004B9E89    pop         ebx
 004B9E8A    mov         esp,ebp
 004B9E8C    pop         ebp
 004B9E8D    ret
*}
end;

//004B9E90
constructor TRegIniFile.Create;
begin
{*
 004B9E90    push        ebx
 004B9E91    push        esi
 004B9E92    test        dl,dl
>004B9E94    je          004B9E9E
 004B9E96    add         esp,0FFFFFFF0
 004B9E99    call        @ClassCreate
 004B9E9E    mov         ebx,edx
 004B9EA0    mov         esi,eax
 004B9EA2    push        0F003F
 004B9EA7    xor         edx,edx
 004B9EA9    mov         eax,esi
 004B9EAB    call        TRegistryIniFile.Create
 004B9EB0    mov         eax,esi
 004B9EB2    test        bl,bl
>004B9EB4    je          004B9EC5
 004B9EB6    call        @AfterConstruction
 004B9EBB    pop         dword ptr fs:[0]
 004B9EC2    add         esp,0C
 004B9EC5    mov         eax,esi
 004B9EC7    pop         esi
 004B9EC8    pop         ebx
 004B9EC9    ret
*}
end;

//004B9ECC
constructor TRegistryIniFile.Create(AAccess:Cardinal);
begin
{*
 004B9ECC    push        ebp
 004B9ECD    mov         ebp,esp
 004B9ECF    push        ebx
 004B9ED0    push        esi
 004B9ED1    push        edi
 004B9ED2    test        dl,dl
>004B9ED4    je          004B9EDE
 004B9ED6    add         esp,0FFFFFFF0
 004B9ED9    call        @ClassCreate
 004B9EDE    mov         esi,ecx
 004B9EE0    mov         ebx,edx
 004B9EE2    mov         edi,eax
 004B9EE4    mov         ecx,esi
 004B9EE6    xor         edx,edx
 004B9EE8    mov         eax,edi
 004B9EEA    call        TCustomIniFile.Create
 004B9EEF    mov         eax,dword ptr [ebp+8]
 004B9EF2    push        eax
 004B9EF3    mov         ecx,esi
 004B9EF5    mov         dl,1
 004B9EF7    mov         eax,[004B77B4];TRegIniFile
 004B9EFC    call        TRegIniFile.Create
 004B9F01    mov         dword ptr [edi+8],eax
 004B9F04    mov         eax,edi
 004B9F06    test        bl,bl
>004B9F08    je          004B9F19
 004B9F0A    call        @AfterConstruction
 004B9F0F    pop         dword ptr fs:[0]
 004B9F16    add         esp,0C
 004B9F19    mov         eax,edi
 004B9F1B    pop         edi
 004B9F1C    pop         esi
 004B9F1D    pop         ebx
 004B9F1E    pop         ebp
 004B9F1F    ret         4
*}
end;

//004B9F24
destructor TRegistryIniFile.Destroy();
begin
{*
 004B9F24    push        ebx
 004B9F25    push        esi
 004B9F26    call        @BeforeDestruction
 004B9F2B    mov         ebx,edx
 004B9F2D    mov         esi,eax
 004B9F2F    mov         eax,dword ptr [esi+8]
 004B9F32    call        TObject.Free
 004B9F37    mov         dl,0FC
 004B9F39    and         dl,bl
 004B9F3B    mov         eax,esi
 004B9F3D    call        TObject.Destroy
 004B9F42    test        bl,bl
>004B9F44    jle         004B9F4D
 004B9F46    mov         eax,esi
 004B9F48    call        @ClassDestroy
 004B9F4D    pop         esi
 004B9F4E    pop         ebx
 004B9F4F    ret
*}
end;

//004B9F50
function TRegistryIniFile.ReadString(Section:string; Ident:string; Default:string):string;
begin
{*
 004B9F50    push        ebp
 004B9F51    mov         ebp,esp
 004B9F53    push        ebx
 004B9F54    push        esi
 004B9F55    push        edi
 004B9F56    mov         edi,ecx
 004B9F58    mov         esi,edx
 004B9F5A    mov         ebx,eax
 004B9F5C    mov         eax,dword ptr [ebp+0C]
 004B9F5F    push        eax
 004B9F60    mov         eax,dword ptr [ebp+8]
 004B9F63    push        eax
 004B9F64    mov         ecx,edi
 004B9F66    mov         edx,esi
 004B9F68    mov         eax,dword ptr [ebx+8]
 004B9F6B    call        TRegIniFile.ReadString
 004B9F70    pop         edi
 004B9F71    pop         esi
 004B9F72    pop         ebx
 004B9F73    pop         ebp
 004B9F74    ret         8
*}
end;

//004B9F78
function TRegistryIniFile.ReadDate(Section:string; Name:string; Default:TDateTime):TDateTime;
begin
{*
 004B9F78    push        ebp
 004B9F79    mov         ebp,esp
 004B9F7B    add         esp,0FFFFFFEC
 004B9F7E    push        ebx
 004B9F7F    mov         ebx,ecx
 004B9F81    mov         eax,dword ptr [eax+8]
 004B9F84    mov         dword ptr [ebp-14],eax
 004B9F87    mov         eax,dword ptr [ebp-14]
 004B9F8A    call        TRegistry.GetKey
 004B9F8F    mov         dword ptr [ebp-0C],eax
 004B9F92    cmp         dword ptr [ebp-0C],0
>004B9F96    je          004BA034
 004B9F9C    xor         eax,eax
 004B9F9E    push        ebp
 004B9F9F    push        4BA02D
 004B9FA4    push        dword ptr fs:[eax]
 004B9FA7    mov         dword ptr fs:[eax],esp
 004B9FAA    mov         eax,dword ptr [ebp-14]
 004B9FAD    mov         eax,dword ptr [eax+4]
 004B9FB0    mov         dword ptr [ebp-10],eax
 004B9FB3    mov         edx,dword ptr [ebp-0C]
 004B9FB6    mov         eax,dword ptr [ebp-14]
 004B9FB9    call        TRegistry.SetCurrentKey
 004B9FBE    xor         eax,eax
 004B9FC0    push        ebp
 004B9FC1    push        4BA00F
 004B9FC6    push        dword ptr fs:[eax]
 004B9FC9    mov         dword ptr fs:[eax],esp
 004B9FCC    mov         edx,ebx
 004B9FCE    mov         eax,dword ptr [ebp-14]
 004B9FD1    call        TRegistry.ValueExists
 004B9FD6    test        al,al
>004B9FD8    je          004B9FEA
 004B9FDA    mov         edx,ebx
 004B9FDC    mov         eax,dword ptr [ebp-14]
 004B9FDF    call        TRegistry.ReadDate
 004B9FE4    fstp        qword ptr [ebp-8]
 004B9FE7    wait
>004B9FE8    jmp         004B9FF6
 004B9FEA    mov         eax,dword ptr [ebp+8]
 004B9FED    mov         dword ptr [ebp-8],eax
 004B9FF0    mov         eax,dword ptr [ebp+0C]
 004B9FF3    mov         dword ptr [ebp-4],eax
 004B9FF6    xor         eax,eax
 004B9FF8    pop         edx
 004B9FF9    pop         ecx
 004B9FFA    pop         ecx
 004B9FFB    mov         dword ptr fs:[eax],edx
 004B9FFE    push        4BA016
 004BA003    mov         edx,dword ptr [ebp-10]
 004BA006    mov         eax,dword ptr [ebp-14]
 004BA009    call        TRegistry.SetCurrentKey
 004BA00E    ret
>004BA00F    jmp         @HandleFinally
>004BA014    jmp         004BA003
 004BA016    xor         eax,eax
 004BA018    pop         edx
 004BA019    pop         ecx
 004BA01A    pop         ecx
 004BA01B    mov         dword ptr fs:[eax],edx
 004BA01E    push        4BA040
 004BA023    mov         eax,dword ptr [ebp-0C]
 004BA026    push        eax
 004BA027    call        advapi32.RegCloseKey
 004BA02C    ret
>004BA02D    jmp         @HandleFinally
>004BA032    jmp         004BA023
 004BA034    mov         eax,dword ptr [ebp+8]
 004BA037    mov         dword ptr [ebp-8],eax
 004BA03A    mov         eax,dword ptr [ebp+0C]
 004BA03D    mov         dword ptr [ebp-4],eax
 004BA040    fld         qword ptr [ebp-8]
 004BA043    pop         ebx
 004BA044    mov         esp,ebp
 004BA046    pop         ebp
 004BA047    ret         8
*}
end;

//004BA04C
function TRegistryIniFile.ReadDateTime(Section:string; Name:string; Default:TDateTime):TDateTime;
begin
{*
 004BA04C    push        ebp
 004BA04D    mov         ebp,esp
 004BA04F    add         esp,0FFFFFFEC
 004BA052    push        ebx
 004BA053    mov         ebx,ecx
 004BA055    mov         eax,dword ptr [eax+8]
 004BA058    mov         dword ptr [ebp-14],eax
 004BA05B    mov         eax,dword ptr [ebp-14]
 004BA05E    call        TRegistry.GetKey
 004BA063    mov         dword ptr [ebp-0C],eax
 004BA066    cmp         dword ptr [ebp-0C],0
>004BA06A    je          004BA108
 004BA070    xor         eax,eax
 004BA072    push        ebp
 004BA073    push        4BA101
 004BA078    push        dword ptr fs:[eax]
 004BA07B    mov         dword ptr fs:[eax],esp
 004BA07E    mov         eax,dword ptr [ebp-14]
 004BA081    mov         eax,dword ptr [eax+4]
 004BA084    mov         dword ptr [ebp-10],eax
 004BA087    mov         edx,dword ptr [ebp-0C]
 004BA08A    mov         eax,dword ptr [ebp-14]
 004BA08D    call        TRegistry.SetCurrentKey
 004BA092    xor         eax,eax
 004BA094    push        ebp
 004BA095    push        4BA0E3
 004BA09A    push        dword ptr fs:[eax]
 004BA09D    mov         dword ptr fs:[eax],esp
 004BA0A0    mov         edx,ebx
 004BA0A2    mov         eax,dword ptr [ebp-14]
 004BA0A5    call        TRegistry.ValueExists
 004BA0AA    test        al,al
>004BA0AC    je          004BA0BE
 004BA0AE    mov         edx,ebx
 004BA0B0    mov         eax,dword ptr [ebp-14]
 004BA0B3    call        TRegistry.ReadDateTime
 004BA0B8    fstp        qword ptr [ebp-8]
 004BA0BB    wait
>004BA0BC    jmp         004BA0CA
 004BA0BE    mov         eax,dword ptr [ebp+8]
 004BA0C1    mov         dword ptr [ebp-8],eax
 004BA0C4    mov         eax,dword ptr [ebp+0C]
 004BA0C7    mov         dword ptr [ebp-4],eax
 004BA0CA    xor         eax,eax
 004BA0CC    pop         edx
 004BA0CD    pop         ecx
 004BA0CE    pop         ecx
 004BA0CF    mov         dword ptr fs:[eax],edx
 004BA0D2    push        4BA0EA
 004BA0D7    mov         edx,dword ptr [ebp-10]
 004BA0DA    mov         eax,dword ptr [ebp-14]
 004BA0DD    call        TRegistry.SetCurrentKey
 004BA0E2    ret
>004BA0E3    jmp         @HandleFinally
>004BA0E8    jmp         004BA0D7
 004BA0EA    xor         eax,eax
 004BA0EC    pop         edx
 004BA0ED    pop         ecx
 004BA0EE    pop         ecx
 004BA0EF    mov         dword ptr fs:[eax],edx
 004BA0F2    push        4BA114
 004BA0F7    mov         eax,dword ptr [ebp-0C]
 004BA0FA    push        eax
 004BA0FB    call        advapi32.RegCloseKey
 004BA100    ret
>004BA101    jmp         @HandleFinally
>004BA106    jmp         004BA0F7
 004BA108    mov         eax,dword ptr [ebp+8]
 004BA10B    mov         dword ptr [ebp-8],eax
 004BA10E    mov         eax,dword ptr [ebp+0C]
 004BA111    mov         dword ptr [ebp-4],eax
 004BA114    fld         qword ptr [ebp-8]
 004BA117    pop         ebx
 004BA118    mov         esp,ebp
 004BA11A    pop         ebp
 004BA11B    ret         8
*}
end;

//004BA120
function TRegistryIniFile.ReadFloat(Section:string; Name:string; Default:Double):Double;
begin
{*
 004BA120    push        ebp
 004BA121    mov         ebp,esp
 004BA123    add         esp,0FFFFFFEC
 004BA126    push        ebx
 004BA127    mov         ebx,ecx
 004BA129    mov         eax,dword ptr [eax+8]
 004BA12C    mov         dword ptr [ebp-14],eax
 004BA12F    mov         eax,dword ptr [ebp-14]
 004BA132    call        TRegistry.GetKey
 004BA137    mov         dword ptr [ebp-0C],eax
 004BA13A    cmp         dword ptr [ebp-0C],0
>004BA13E    je          004BA1DC
 004BA144    xor         eax,eax
 004BA146    push        ebp
 004BA147    push        4BA1D5
 004BA14C    push        dword ptr fs:[eax]
 004BA14F    mov         dword ptr fs:[eax],esp
 004BA152    mov         eax,dword ptr [ebp-14]
 004BA155    mov         eax,dword ptr [eax+4]
 004BA158    mov         dword ptr [ebp-10],eax
 004BA15B    mov         edx,dword ptr [ebp-0C]
 004BA15E    mov         eax,dword ptr [ebp-14]
 004BA161    call        TRegistry.SetCurrentKey
 004BA166    xor         eax,eax
 004BA168    push        ebp
 004BA169    push        4BA1B7
 004BA16E    push        dword ptr fs:[eax]
 004BA171    mov         dword ptr fs:[eax],esp
 004BA174    mov         edx,ebx
 004BA176    mov         eax,dword ptr [ebp-14]
 004BA179    call        TRegistry.ValueExists
 004BA17E    test        al,al
>004BA180    je          004BA192
 004BA182    mov         edx,ebx
 004BA184    mov         eax,dword ptr [ebp-14]
 004BA187    call        TRegistry.ReadFloat
 004BA18C    fstp        qword ptr [ebp-8]
 004BA18F    wait
>004BA190    jmp         004BA19E
 004BA192    mov         eax,dword ptr [ebp+8]
 004BA195    mov         dword ptr [ebp-8],eax
 004BA198    mov         eax,dword ptr [ebp+0C]
 004BA19B    mov         dword ptr [ebp-4],eax
 004BA19E    xor         eax,eax
 004BA1A0    pop         edx
 004BA1A1    pop         ecx
 004BA1A2    pop         ecx
 004BA1A3    mov         dword ptr fs:[eax],edx
 004BA1A6    push        4BA1BE
 004BA1AB    mov         edx,dword ptr [ebp-10]
 004BA1AE    mov         eax,dword ptr [ebp-14]
 004BA1B1    call        TRegistry.SetCurrentKey
 004BA1B6    ret
>004BA1B7    jmp         @HandleFinally
>004BA1BC    jmp         004BA1AB
 004BA1BE    xor         eax,eax
 004BA1C0    pop         edx
 004BA1C1    pop         ecx
 004BA1C2    pop         ecx
 004BA1C3    mov         dword ptr fs:[eax],edx
 004BA1C6    push        4BA1E8
 004BA1CB    mov         eax,dword ptr [ebp-0C]
 004BA1CE    push        eax
 004BA1CF    call        advapi32.RegCloseKey
 004BA1D4    ret
>004BA1D5    jmp         @HandleFinally
>004BA1DA    jmp         004BA1CB
 004BA1DC    mov         eax,dword ptr [ebp+8]
 004BA1DF    mov         dword ptr [ebp-8],eax
 004BA1E2    mov         eax,dword ptr [ebp+0C]
 004BA1E5    mov         dword ptr [ebp-4],eax
 004BA1E8    fld         qword ptr [ebp-8]
 004BA1EB    pop         ebx
 004BA1EC    mov         esp,ebp
 004BA1EE    pop         ebp
 004BA1EF    ret         8
*}
end;

//004BA1F4
function TRegistryIniFile.ReadInteger(Section:string; Ident:string; Default:Integer):Integer;
begin
{*
 004BA1F4    push        ebp
 004BA1F5    mov         ebp,esp
 004BA1F7    add         esp,0FFFFFFE0
 004BA1FA    push        ebx
 004BA1FB    xor         ebx,ebx
 004BA1FD    mov         dword ptr [ebp-20],ebx
 004BA200    mov         dword ptr [ebp-4],ecx
 004BA203    mov         ebx,dword ptr [ebp+8]
 004BA206    xor         ecx,ecx
 004BA208    push        ebp
 004BA209    push        4BA2FC
 004BA20E    push        dword ptr fs:[ecx]
 004BA211    mov         dword ptr fs:[ecx],esp
 004BA214    mov         eax,dword ptr [eax+8]
 004BA217    mov         dword ptr [ebp-1C],eax
 004BA21A    mov         eax,dword ptr [ebp-1C]
 004BA21D    call        TRegistry.GetKey
 004BA222    mov         dword ptr [ebp-0C],eax
 004BA225    cmp         dword ptr [ebp-0C],0
>004BA229    je          004BA2E3
 004BA22F    xor         eax,eax
 004BA231    push        ebp
 004BA232    push        4BA2DC
 004BA237    push        dword ptr fs:[eax]
 004BA23A    mov         dword ptr fs:[eax],esp
 004BA23D    mov         eax,dword ptr [ebp-1C]
 004BA240    mov         eax,dword ptr [eax+4]
 004BA243    mov         dword ptr [ebp-10],eax
 004BA246    mov         edx,dword ptr [ebp-0C]
 004BA249    mov         eax,dword ptr [ebp-1C]
 004BA24C    call        TRegistry.SetCurrentKey
 004BA251    xor         eax,eax
 004BA253    push        ebp
 004BA254    push        4BA2BE
 004BA259    push        dword ptr fs:[eax]
 004BA25C    mov         dword ptr fs:[eax],esp
 004BA25F    mov         dword ptr [ebp-8],ebx
 004BA262    lea         ecx,[ebp-18]
 004BA265    mov         edx,dword ptr [ebp-4]
 004BA268    mov         eax,dword ptr [ebp-1C]
 004BA26B    call        TRegistry.GetDataInfo
 004BA270    test        al,al
>004BA272    je          004BA2A5
 004BA274    cmp         byte ptr [ebp-18],1
>004BA278    jne         004BA297
 004BA27A    lea         ecx,[ebp-20]
 004BA27D    mov         edx,dword ptr [ebp-4]
 004BA280    mov         eax,dword ptr [ebp-1C]
 004BA283    call        TRegistry.ReadString
 004BA288    mov         eax,dword ptr [ebp-20]
 004BA28B    mov         edx,ebx
 004BA28D    call        StrToIntDef
 004BA292    mov         dword ptr [ebp-8],eax
>004BA295    jmp         004BA2A5
 004BA297    mov         edx,dword ptr [ebp-4]
 004BA29A    mov         eax,dword ptr [ebp-1C]
 004BA29D    call        TRegistry.ReadInteger
 004BA2A2    mov         dword ptr [ebp-8],eax
 004BA2A5    xor         eax,eax
 004BA2A7    pop         edx
 004BA2A8    pop         ecx
 004BA2A9    pop         ecx
 004BA2AA    mov         dword ptr fs:[eax],edx
 004BA2AD    push        4BA2C5
 004BA2B2    mov         edx,dword ptr [ebp-10]
 004BA2B5    mov         eax,dword ptr [ebp-1C]
 004BA2B8    call        TRegistry.SetCurrentKey
 004BA2BD    ret
>004BA2BE    jmp         @HandleFinally
>004BA2C3    jmp         004BA2B2
 004BA2C5    xor         eax,eax
 004BA2C7    pop         edx
 004BA2C8    pop         ecx
 004BA2C9    pop         ecx
 004BA2CA    mov         dword ptr fs:[eax],edx
 004BA2CD    push        4BA2E6
 004BA2D2    mov         eax,dword ptr [ebp-0C]
 004BA2D5    push        eax
 004BA2D6    call        advapi32.RegCloseKey
 004BA2DB    ret
>004BA2DC    jmp         @HandleFinally
>004BA2E1    jmp         004BA2D2
 004BA2E3    mov         dword ptr [ebp-8],ebx
 004BA2E6    xor         eax,eax
 004BA2E8    pop         edx
 004BA2E9    pop         ecx
 004BA2EA    pop         ecx
 004BA2EB    mov         dword ptr fs:[eax],edx
 004BA2EE    push        4BA303
 004BA2F3    lea         eax,[ebp-20]
 004BA2F6    call        @UStrClr
 004BA2FB    ret
>004BA2FC    jmp         @HandleFinally
>004BA301    jmp         004BA2F3
 004BA303    mov         eax,dword ptr [ebp-8]
 004BA306    pop         ebx
 004BA307    mov         esp,ebp
 004BA309    pop         ebp
 004BA30A    ret         4
*}
end;

//004BA310
function TRegistryIniFile.ReadTime(Section:string; Name:string; Default:TDateTime):TDateTime;
begin
{*
 004BA310    push        ebp
 004BA311    mov         ebp,esp
 004BA313    add         esp,0FFFFFFEC
 004BA316    push        ebx
 004BA317    mov         ebx,ecx
 004BA319    mov         eax,dword ptr [eax+8]
 004BA31C    mov         dword ptr [ebp-14],eax
 004BA31F    mov         eax,dword ptr [ebp-14]
 004BA322    call        TRegistry.GetKey
 004BA327    mov         dword ptr [ebp-0C],eax
 004BA32A    cmp         dword ptr [ebp-0C],0
>004BA32E    je          004BA3CC
 004BA334    xor         eax,eax
 004BA336    push        ebp
 004BA337    push        4BA3C5
 004BA33C    push        dword ptr fs:[eax]
 004BA33F    mov         dword ptr fs:[eax],esp
 004BA342    mov         eax,dword ptr [ebp-14]
 004BA345    mov         eax,dword ptr [eax+4]
 004BA348    mov         dword ptr [ebp-10],eax
 004BA34B    mov         edx,dword ptr [ebp-0C]
 004BA34E    mov         eax,dword ptr [ebp-14]
 004BA351    call        TRegistry.SetCurrentKey
 004BA356    xor         eax,eax
 004BA358    push        ebp
 004BA359    push        4BA3A7
 004BA35E    push        dword ptr fs:[eax]
 004BA361    mov         dword ptr fs:[eax],esp
 004BA364    mov         edx,ebx
 004BA366    mov         eax,dword ptr [ebp-14]
 004BA369    call        TRegistry.ValueExists
 004BA36E    test        al,al
>004BA370    je          004BA382
 004BA372    mov         edx,ebx
 004BA374    mov         eax,dword ptr [ebp-14]
 004BA377    call        TRegistry.ReadTime
 004BA37C    fstp        qword ptr [ebp-8]
 004BA37F    wait
>004BA380    jmp         004BA38E
 004BA382    mov         eax,dword ptr [ebp+8]
 004BA385    mov         dword ptr [ebp-8],eax
 004BA388    mov         eax,dword ptr [ebp+0C]
 004BA38B    mov         dword ptr [ebp-4],eax
 004BA38E    xor         eax,eax
 004BA390    pop         edx
 004BA391    pop         ecx
 004BA392    pop         ecx
 004BA393    mov         dword ptr fs:[eax],edx
 004BA396    push        4BA3AE
 004BA39B    mov         edx,dword ptr [ebp-10]
 004BA39E    mov         eax,dword ptr [ebp-14]
 004BA3A1    call        TRegistry.SetCurrentKey
 004BA3A6    ret
>004BA3A7    jmp         @HandleFinally
>004BA3AC    jmp         004BA39B
 004BA3AE    xor         eax,eax
 004BA3B0    pop         edx
 004BA3B1    pop         ecx
 004BA3B2    pop         ecx
 004BA3B3    mov         dword ptr fs:[eax],edx
 004BA3B6    push        4BA3D8
 004BA3BB    mov         eax,dword ptr [ebp-0C]
 004BA3BE    push        eax
 004BA3BF    call        advapi32.RegCloseKey
 004BA3C4    ret
>004BA3C5    jmp         @HandleFinally
>004BA3CA    jmp         004BA3BB
 004BA3CC    mov         eax,dword ptr [ebp+8]
 004BA3CF    mov         dword ptr [ebp-8],eax
 004BA3D2    mov         eax,dword ptr [ebp+0C]
 004BA3D5    mov         dword ptr [ebp-4],eax
 004BA3D8    fld         qword ptr [ebp-8]
 004BA3DB    pop         ebx
 004BA3DC    mov         esp,ebp
 004BA3DE    pop         ebp
 004BA3DF    ret         8
*}
end;

//004BA3E4
function TRegistryIniFile.ReadBinaryStream(Section:string; Name:string; Value:TStream):Integer;
begin
{*
 004BA3E4    push        ebp
 004BA3E5    mov         ebp,esp
 004BA3E7    add         esp,0FFFFFFE0
 004BA3EA    push        ebx
 004BA3EB    push        esi
 004BA3EC    mov         dword ptr [ebp-8],ecx
 004BA3EF    mov         dword ptr [ebp-4],eax
 004BA3F2    xor         eax,eax
 004BA3F4    mov         dword ptr [ebp-0C],eax
 004BA3F7    mov         eax,dword ptr [ebp-4]
 004BA3FA    mov         eax,dword ptr [eax+8]
 004BA3FD    mov         esi,eax
 004BA3FF    call        TRegistry.GetKey
 004BA404    mov         dword ptr [ebp-18],eax
 004BA407    cmp         dword ptr [ebp-18],0
>004BA40B    je          004BA57C
 004BA411    xor         eax,eax
 004BA413    push        ebp
 004BA414    push        4BA575
 004BA419    push        dword ptr fs:[eax]
 004BA41C    mov         dword ptr fs:[eax],esp
 004BA41F    mov         eax,dword ptr [esi+4]
 004BA422    mov         dword ptr [ebp-1C],eax
 004BA425    mov         eax,dword ptr [ebp-4]
 004BA428    mov         eax,dword ptr [eax+8]
 004BA42B    mov         edx,dword ptr [ebp-18]
 004BA42E    call        TRegistry.SetCurrentKey
 004BA433    xor         eax,eax
 004BA435    push        ebp
 004BA436    push        4BA557
 004BA43B    push        dword ptr fs:[eax]
 004BA43E    mov         dword ptr fs:[eax],esp
 004BA441    lea         ecx,[ebp-14]
 004BA444    mov         edx,dword ptr [ebp-8]
 004BA447    mov         eax,esi
 004BA449    call        TRegistry.GetDataInfo
 004BA44E    test        al,al
>004BA450    je          004BA53B
 004BA456    mov         eax,dword ptr [ebp-10]
 004BA459    mov         dword ptr [ebp-0C],eax
 004BA45C    movzx       ebx,byte ptr [ebp-14]
 004BA460    mov         eax,dword ptr [ebp+8]
 004BA463    mov         edx,dword ptr ds:[472CE4];TMemoryStream
 004BA469    call        @IsClass
 004BA46E    test        al,al
>004BA470    je          004BA47A
 004BA472    mov         eax,dword ptr [ebp+8]
 004BA475    mov         dword ptr [ebp-20],eax
>004BA478    jmp         004BA489
 004BA47A    mov         dl,1
 004BA47C    mov         eax,[00472CE4];TMemoryStream
 004BA481    call        TObject.Create
 004BA486    mov         dword ptr [ebp-20],eax
 004BA489    xor         eax,eax
 004BA48B    push        ebp
 004BA48C    push        4BA534
 004BA491    push        dword ptr fs:[eax]
 004BA494    mov         dword ptr fs:[eax],esp
 004BA497    cmp         bl,4
>004BA49A    je          004BA4A0
 004BA49C    test        bl,bl
>004BA49E    jne         004BA516
 004BA4A0    mov         eax,dword ptr [ebp-20]
 004BA4A3    call        TStream.GetPosition
 004BA4A8    push        edx
 004BA4A9    push        eax
 004BA4AA    mov         eax,dword ptr [ebp-10]
 004BA4AD    cdq
 004BA4AE    add         eax,dword ptr [esp]
 004BA4B1    adc         edx,dword ptr [esp+4]
 004BA4B5    add         esp,8
 004BA4B8    push        edx
 004BA4B9    push        eax
 004BA4BA    mov         eax,dword ptr [ebp-20]
 004BA4BD    call        TStream.SetSize64
 004BA4C2    mov         eax,dword ptr [ebp-20]
 004BA4C5    mov         edx,dword ptr [eax]
 004BA4C7    call        dword ptr [edx]
 004BA4C9    push        eax
 004BA4CA    mov         eax,dword ptr [ebp-20]
 004BA4CD    call        TStream.GetPosition
 004BA4D2    mov         ecx,eax
 004BA4D4    mov         eax,dword ptr [ebp-20]
 004BA4D7    add         ecx,dword ptr [eax+4]
 004BA4DA    mov         edx,dword ptr [ebp-8]
 004BA4DD    mov         eax,esi
 004BA4DF    call        TRegistry.ReadBinaryData
 004BA4E4    mov         dword ptr [ebp-0C],eax
 004BA4E7    mov         eax,dword ptr [ebp-20]
 004BA4EA    cmp         eax,dword ptr [ebp+8]
>004BA4ED    je          004BA516
 004BA4EF    mov         eax,dword ptr [ebp-20]
 004BA4F2    mov         edx,dword ptr [eax]
 004BA4F4    call        dword ptr [edx]
 004BA4F6    push        edx
 004BA4F7    push        eax
 004BA4F8    mov         eax,dword ptr [ebp-20]
 004BA4FB    call        TStream.GetPosition
 004BA500    sub         dword ptr [esp],eax
 004BA503    sbb         dword ptr [esp+4],edx
 004BA507    pop         eax
 004BA508    pop         edx
 004BA509    push        edx
 004BA50A    push        eax
 004BA50B    mov         edx,dword ptr [ebp-20]
 004BA50E    mov         eax,dword ptr [ebp+8]
 004BA511    call        TStream.CopyFrom
 004BA516    xor         eax,eax
 004BA518    pop         edx
 004BA519    pop         ecx
 004BA51A    pop         ecx
 004BA51B    mov         dword ptr fs:[eax],edx
 004BA51E    push        4BA53B
 004BA523    mov         eax,dword ptr [ebp-20]
 004BA526    cmp         eax,dword ptr [ebp+8]
>004BA529    je          004BA533
 004BA52B    mov         eax,dword ptr [ebp-20]
 004BA52E    call        TObject.Free
 004BA533    ret
>004BA534    jmp         @HandleFinally
>004BA539    jmp         004BA523
 004BA53B    xor         eax,eax
 004BA53D    pop         edx
 004BA53E    pop         ecx
 004BA53F    pop         ecx
 004BA540    mov         dword ptr fs:[eax],edx
 004BA543    push        4BA55E
 004BA548    mov         eax,dword ptr [ebp-4]
 004BA54B    mov         eax,dword ptr [eax+8]
 004BA54E    mov         edx,dword ptr [ebp-1C]
 004BA551    call        TRegistry.SetCurrentKey
 004BA556    ret
>004BA557    jmp         @HandleFinally
>004BA55C    jmp         004BA548
 004BA55E    xor         eax,eax
 004BA560    pop         edx
 004BA561    pop         ecx
 004BA562    pop         ecx
 004BA563    mov         dword ptr fs:[eax],edx
 004BA566    push        4BA57C
 004BA56B    mov         eax,dword ptr [ebp-18]
 004BA56E    push        eax
 004BA56F    call        advapi32.RegCloseKey
 004BA574    ret
>004BA575    jmp         @HandleFinally
>004BA57A    jmp         004BA56B
 004BA57C    mov         eax,dword ptr [ebp-0C]
 004BA57F    pop         esi
 004BA580    pop         ebx
 004BA581    mov         esp,ebp
 004BA583    pop         ebp
 004BA584    ret         4
*}
end;

//004BA588
procedure TRegistryIniFile.WriteDate(Section:string; Name:string; Value:TDateTime);
begin
{*
 004BA588    push        ebp
 004BA589    mov         ebp,esp
 004BA58B    add         esp,0FFFFFFF4
 004BA58E    push        ebx
 004BA58F    push        esi
 004BA590    mov         esi,ecx
 004BA592    mov         ebx,edx
 004BA594    mov         eax,dword ptr [eax+8]
 004BA597    mov         dword ptr [ebp-0C],eax
 004BA59A    mov         edx,ebx
 004BA59C    mov         eax,dword ptr [ebp-0C]
 004BA59F    call        TRegistry.CreateKey
 004BA5A4    mov         edx,ebx
 004BA5A6    mov         eax,dword ptr [ebp-0C]
 004BA5A9    call        TRegistry.GetKey
 004BA5AE    mov         dword ptr [ebp-4],eax
 004BA5B1    cmp         dword ptr [ebp-4],0
>004BA5B5    je          004BA635
 004BA5B7    xor         eax,eax
 004BA5B9    push        ebp
 004BA5BA    push        4BA62E
 004BA5BF    push        dword ptr fs:[eax]
 004BA5C2    mov         dword ptr fs:[eax],esp
 004BA5C5    mov         eax,dword ptr [ebp-0C]
 004BA5C8    mov         eax,dword ptr [eax+4]
 004BA5CB    mov         dword ptr [ebp-8],eax
 004BA5CE    mov         edx,dword ptr [ebp-4]
 004BA5D1    mov         eax,dword ptr [ebp-0C]
 004BA5D4    call        TRegistry.SetCurrentKey
 004BA5D9    xor         eax,eax
 004BA5DB    push        ebp
 004BA5DC    push        4BA610
 004BA5E1    push        dword ptr fs:[eax]
 004BA5E4    mov         dword ptr fs:[eax],esp
 004BA5E7    push        dword ptr [ebp+0C]
 004BA5EA    push        dword ptr [ebp+8]
 004BA5ED    mov         edx,esi
 004BA5EF    mov         eax,dword ptr [ebp-0C]
 004BA5F2    call        TRegistry.WriteDate
 004BA5F7    xor         eax,eax
 004BA5F9    pop         edx
 004BA5FA    pop         ecx
 004BA5FB    pop         ecx
 004BA5FC    mov         dword ptr fs:[eax],edx
 004BA5FF    push        4BA617
 004BA604    mov         edx,dword ptr [ebp-8]
 004BA607    mov         eax,dword ptr [ebp-0C]
 004BA60A    call        TRegistry.SetCurrentKey
 004BA60F    ret
>004BA610    jmp         @HandleFinally
>004BA615    jmp         004BA604
 004BA617    xor         eax,eax
 004BA619    pop         edx
 004BA61A    pop         ecx
 004BA61B    pop         ecx
 004BA61C    mov         dword ptr fs:[eax],edx
 004BA61F    push        4BA635
 004BA624    mov         eax,dword ptr [ebp-4]
 004BA627    push        eax
 004BA628    call        advapi32.RegCloseKey
 004BA62D    ret
>004BA62E    jmp         @HandleFinally
>004BA633    jmp         004BA624
 004BA635    pop         esi
 004BA636    pop         ebx
 004BA637    mov         esp,ebp
 004BA639    pop         ebp
 004BA63A    ret         8
*}
end;

//004BA640
procedure TRegistryIniFile.WriteDateTime(Section:string; Name:string; Value:TDateTime);
begin
{*
 004BA640    push        ebp
 004BA641    mov         ebp,esp
 004BA643    add         esp,0FFFFFFF4
 004BA646    push        ebx
 004BA647    push        esi
 004BA648    mov         esi,ecx
 004BA64A    mov         ebx,edx
 004BA64C    mov         eax,dword ptr [eax+8]
 004BA64F    mov         dword ptr [ebp-0C],eax
 004BA652    mov         edx,ebx
 004BA654    mov         eax,dword ptr [ebp-0C]
 004BA657    call        TRegistry.CreateKey
 004BA65C    mov         edx,ebx
 004BA65E    mov         eax,dword ptr [ebp-0C]
 004BA661    call        TRegistry.GetKey
 004BA666    mov         dword ptr [ebp-4],eax
 004BA669    cmp         dword ptr [ebp-4],0
>004BA66D    je          004BA6ED
 004BA66F    xor         eax,eax
 004BA671    push        ebp
 004BA672    push        4BA6E6
 004BA677    push        dword ptr fs:[eax]
 004BA67A    mov         dword ptr fs:[eax],esp
 004BA67D    mov         eax,dword ptr [ebp-0C]
 004BA680    mov         eax,dword ptr [eax+4]
 004BA683    mov         dword ptr [ebp-8],eax
 004BA686    mov         edx,dword ptr [ebp-4]
 004BA689    mov         eax,dword ptr [ebp-0C]
 004BA68C    call        TRegistry.SetCurrentKey
 004BA691    xor         eax,eax
 004BA693    push        ebp
 004BA694    push        4BA6C8
 004BA699    push        dword ptr fs:[eax]
 004BA69C    mov         dword ptr fs:[eax],esp
 004BA69F    push        dword ptr [ebp+0C]
 004BA6A2    push        dword ptr [ebp+8]
 004BA6A5    mov         edx,esi
 004BA6A7    mov         eax,dword ptr [ebp-0C]
 004BA6AA    call        TRegistry.WriteDateTime
 004BA6AF    xor         eax,eax
 004BA6B1    pop         edx
 004BA6B2    pop         ecx
 004BA6B3    pop         ecx
 004BA6B4    mov         dword ptr fs:[eax],edx
 004BA6B7    push        4BA6CF
 004BA6BC    mov         edx,dword ptr [ebp-8]
 004BA6BF    mov         eax,dword ptr [ebp-0C]
 004BA6C2    call        TRegistry.SetCurrentKey
 004BA6C7    ret
>004BA6C8    jmp         @HandleFinally
>004BA6CD    jmp         004BA6BC
 004BA6CF    xor         eax,eax
 004BA6D1    pop         edx
 004BA6D2    pop         ecx
 004BA6D3    pop         ecx
 004BA6D4    mov         dword ptr fs:[eax],edx
 004BA6D7    push        4BA6ED
 004BA6DC    mov         eax,dword ptr [ebp-4]
 004BA6DF    push        eax
 004BA6E0    call        advapi32.RegCloseKey
 004BA6E5    ret
>004BA6E6    jmp         @HandleFinally
>004BA6EB    jmp         004BA6DC
 004BA6ED    pop         esi
 004BA6EE    pop         ebx
 004BA6EF    mov         esp,ebp
 004BA6F1    pop         ebp
 004BA6F2    ret         8
*}
end;

//004BA6F8
{*procedure TRegistryIniFile.WriteFloat(Section:string; Name:string; Value:Double; ?:?);
begin
 004BA6F8    push        ebp
 004BA6F9    mov         ebp,esp
 004BA6FB    add         esp,0FFFFFFF4
 004BA6FE    push        ebx
 004BA6FF    push        esi
 004BA700    mov         esi,ecx
 004BA702    mov         ebx,edx
 004BA704    mov         eax,dword ptr [eax+8];TRegistryIniFile....FRegIniFile:TRegIniFile
 004BA707    mov         dword ptr [ebp-0C],eax
 004BA70A    mov         edx,ebx
 004BA70C    mov         eax,dword ptr [ebp-0C]
 004BA70F    call        TRegistry.CreateKey
 004BA714    mov         edx,ebx
 004BA716    mov         eax,dword ptr [ebp-0C]
 004BA719    call        TRegistry.GetKey
 004BA71E    mov         dword ptr [ebp-4],eax
 004BA721    cmp         dword ptr [ebp-4],0
>004BA725    je          004BA7A5
 004BA727    xor         eax,eax
 004BA729    push        ebp
 004BA72A    push        4BA79E
 004BA72F    push        dword ptr fs:[eax]
 004BA732    mov         dword ptr fs:[eax],esp
 004BA735    mov         eax,dword ptr [ebp-0C]
 004BA738    mov         eax,dword ptr [eax+4];TRegIniFile.FCurrentKey:HKEY
 004BA73B    mov         dword ptr [ebp-8],eax
 004BA73E    mov         edx,dword ptr [ebp-4]
 004BA741    mov         eax,dword ptr [ebp-0C]
 004BA744    call        TRegistry.SetCurrentKey
 004BA749    xor         eax,eax
 004BA74B    push        ebp
 004BA74C    push        4BA780
 004BA751    push        dword ptr fs:[eax]
 004BA754    mov         dword ptr fs:[eax],esp
 004BA757    push        dword ptr [ebp+0C]
 004BA75A    push        dword ptr [ebp+8]
 004BA75D    mov         edx,esi
 004BA75F    mov         eax,dword ptr [ebp-0C]
 004BA762    call        TRegistry.WriteFloat
 004BA767    xor         eax,eax
 004BA769    pop         edx
 004BA76A    pop         ecx
 004BA76B    pop         ecx
 004BA76C    mov         dword ptr fs:[eax],edx
 004BA76F    push        4BA787
 004BA774    mov         edx,dword ptr [ebp-8]
 004BA777    mov         eax,dword ptr [ebp-0C]
 004BA77A    call        TRegistry.SetCurrentKey
 004BA77F    ret
>004BA780    jmp         @HandleFinally
>004BA785    jmp         004BA774
 004BA787    xor         eax,eax
 004BA789    pop         edx
 004BA78A    pop         ecx
 004BA78B    pop         ecx
 004BA78C    mov         dword ptr fs:[eax],edx
 004BA78F    push        4BA7A5
 004BA794    mov         eax,dword ptr [ebp-4]
 004BA797    push        eax
 004BA798    call        advapi32.RegCloseKey
 004BA79D    ret
>004BA79E    jmp         @HandleFinally
>004BA7A3    jmp         004BA794
 004BA7A5    pop         esi
 004BA7A6    pop         ebx
 004BA7A7    mov         esp,ebp
 004BA7A9    pop         ebp
 004BA7AA    ret         8
end;*}

//004BA7B0
procedure TRegistryIniFile.WriteInteger(Section:string; Ident:string; Value:Integer);
begin
{*
 004BA7B0    push        ebp
 004BA7B1    mov         ebp,esp
 004BA7B3    add         esp,0FFFFFFE8
 004BA7B6    push        ebx
 004BA7B7    push        esi
 004BA7B8    xor         ebx,ebx
 004BA7BA    mov         dword ptr [ebp-18],ebx
 004BA7BD    mov         ebx,ecx
 004BA7BF    mov         esi,edx
 004BA7C1    xor         edx,edx
 004BA7C3    push        ebp
 004BA7C4    push        4BA8B8
 004BA7C9    push        dword ptr fs:[edx]
 004BA7CC    mov         dword ptr fs:[edx],esp
 004BA7CF    mov         eax,dword ptr [eax+8]
 004BA7D2    mov         dword ptr [ebp-14],eax
 004BA7D5    mov         edx,esi
 004BA7D7    mov         eax,dword ptr [ebp-14]
 004BA7DA    call        TRegistry.CreateKey
 004BA7DF    mov         edx,esi
 004BA7E1    mov         eax,dword ptr [ebp-14]
 004BA7E4    call        TRegistry.GetKey
 004BA7E9    mov         dword ptr [ebp-4],eax
 004BA7EC    cmp         dword ptr [ebp-4],0
>004BA7F0    je          004BA8A2
 004BA7F6    xor         eax,eax
 004BA7F8    push        ebp
 004BA7F9    push        4BA89B
 004BA7FE    push        dword ptr fs:[eax]
 004BA801    mov         dword ptr fs:[eax],esp
 004BA804    mov         eax,dword ptr [ebp-14]
 004BA807    mov         eax,dword ptr [eax+4]
 004BA80A    mov         dword ptr [ebp-8],eax
 004BA80D    mov         edx,dword ptr [ebp-4]
 004BA810    mov         eax,dword ptr [ebp-14]
 004BA813    call        TRegistry.SetCurrentKey
 004BA818    xor         eax,eax
 004BA81A    push        ebp
 004BA81B    push        4BA87D
 004BA820    push        dword ptr fs:[eax]
 004BA823    mov         dword ptr fs:[eax],esp
 004BA826    lea         ecx,[ebp-10]
 004BA829    mov         edx,ebx
 004BA82B    mov         eax,dword ptr [ebp-14]
 004BA82E    call        TRegistry.GetDataInfo
 004BA833    test        al,al
>004BA835    je          004BA857
 004BA837    cmp         byte ptr [ebp-10],1
>004BA83B    jne         004BA857
 004BA83D    lea         edx,[ebp-18]
 004BA840    mov         eax,dword ptr [ebp+8]
 004BA843    call        IntToStr
 004BA848    mov         ecx,dword ptr [ebp-18]
 004BA84B    mov         edx,ebx
 004BA84D    mov         eax,dword ptr [ebp-14]
 004BA850    call        TRegistry.WriteString
>004BA855    jmp         004BA864
 004BA857    mov         ecx,dword ptr [ebp+8]
 004BA85A    mov         edx,ebx
 004BA85C    mov         eax,dword ptr [ebp-14]
 004BA85F    call        TRegistry.WriteInteger
 004BA864    xor         eax,eax
 004BA866    pop         edx
 004BA867    pop         ecx
 004BA868    pop         ecx
 004BA869    mov         dword ptr fs:[eax],edx
 004BA86C    push        4BA884
 004BA871    mov         edx,dword ptr [ebp-8]
 004BA874    mov         eax,dword ptr [ebp-14]
 004BA877    call        TRegistry.SetCurrentKey
 004BA87C    ret
>004BA87D    jmp         @HandleFinally
>004BA882    jmp         004BA871
 004BA884    xor         eax,eax
 004BA886    pop         edx
 004BA887    pop         ecx
 004BA888    pop         ecx
 004BA889    mov         dword ptr fs:[eax],edx
 004BA88C    push        4BA8A2
 004BA891    mov         eax,dword ptr [ebp-4]
 004BA894    push        eax
 004BA895    call        advapi32.RegCloseKey
 004BA89A    ret
>004BA89B    jmp         @HandleFinally
>004BA8A0    jmp         004BA891
 004BA8A2    xor         eax,eax
 004BA8A4    pop         edx
 004BA8A5    pop         ecx
 004BA8A6    pop         ecx
 004BA8A7    mov         dword ptr fs:[eax],edx
 004BA8AA    push        4BA8BF
 004BA8AF    lea         eax,[ebp-18]
 004BA8B2    call        @UStrClr
 004BA8B7    ret
>004BA8B8    jmp         @HandleFinally
>004BA8BD    jmp         004BA8AF
 004BA8BF    pop         esi
 004BA8C0    pop         ebx
 004BA8C1    mov         esp,ebp
 004BA8C3    pop         ebp
 004BA8C4    ret         4
*}
end;

//004BA8C8
procedure TRegistryIniFile.WriteTime(Section:string; Name:string; Value:TDateTime);
begin
{*
 004BA8C8    push        ebp
 004BA8C9    mov         ebp,esp
 004BA8CB    add         esp,0FFFFFFF4
 004BA8CE    push        ebx
 004BA8CF    push        esi
 004BA8D0    mov         esi,ecx
 004BA8D2    mov         ebx,edx
 004BA8D4    mov         eax,dword ptr [eax+8]
 004BA8D7    mov         dword ptr [ebp-0C],eax
 004BA8DA    mov         edx,ebx
 004BA8DC    mov         eax,dword ptr [ebp-0C]
 004BA8DF    call        TRegistry.CreateKey
 004BA8E4    mov         edx,ebx
 004BA8E6    mov         eax,dword ptr [ebp-0C]
 004BA8E9    call        TRegistry.GetKey
 004BA8EE    mov         dword ptr [ebp-4],eax
 004BA8F1    cmp         dword ptr [ebp-4],0
>004BA8F5    je          004BA975
 004BA8F7    xor         eax,eax
 004BA8F9    push        ebp
 004BA8FA    push        4BA96E
 004BA8FF    push        dword ptr fs:[eax]
 004BA902    mov         dword ptr fs:[eax],esp
 004BA905    mov         eax,dword ptr [ebp-0C]
 004BA908    mov         eax,dword ptr [eax+4]
 004BA90B    mov         dword ptr [ebp-8],eax
 004BA90E    mov         edx,dword ptr [ebp-4]
 004BA911    mov         eax,dword ptr [ebp-0C]
 004BA914    call        TRegistry.SetCurrentKey
 004BA919    xor         eax,eax
 004BA91B    push        ebp
 004BA91C    push        4BA950
 004BA921    push        dword ptr fs:[eax]
 004BA924    mov         dword ptr fs:[eax],esp
 004BA927    push        dword ptr [ebp+0C]
 004BA92A    push        dword ptr [ebp+8]
 004BA92D    mov         edx,esi
 004BA92F    mov         eax,dword ptr [ebp-0C]
 004BA932    call        TRegistry.WriteTime
 004BA937    xor         eax,eax
 004BA939    pop         edx
 004BA93A    pop         ecx
 004BA93B    pop         ecx
 004BA93C    mov         dword ptr fs:[eax],edx
 004BA93F    push        4BA957
 004BA944    mov         edx,dword ptr [ebp-8]
 004BA947    mov         eax,dword ptr [ebp-0C]
 004BA94A    call        TRegistry.SetCurrentKey
 004BA94F    ret
>004BA950    jmp         @HandleFinally
>004BA955    jmp         004BA944
 004BA957    xor         eax,eax
 004BA959    pop         edx
 004BA95A    pop         ecx
 004BA95B    pop         ecx
 004BA95C    mov         dword ptr fs:[eax],edx
 004BA95F    push        4BA975
 004BA964    mov         eax,dword ptr [ebp-4]
 004BA967    push        eax
 004BA968    call        advapi32.RegCloseKey
 004BA96D    ret
>004BA96E    jmp         @HandleFinally
>004BA973    jmp         004BA964
 004BA975    pop         esi
 004BA976    pop         ebx
 004BA977    mov         esp,ebp
 004BA979    pop         ebp
 004BA97A    ret         8
*}
end;

//004BA980
procedure TRegistryIniFile.WriteBinaryStream(Section:string; Name:string; Value:TStream);
begin
{*
 004BA980    push        ebp
 004BA981    mov         ebp,esp
 004BA983    add         esp,0FFFFFFF0
 004BA986    push        ebx
 004BA987    push        esi
 004BA988    push        edi
 004BA989    mov         esi,ecx
 004BA98B    mov         edi,edx
 004BA98D    mov         dword ptr [ebp-4],eax
 004BA990    mov         eax,dword ptr [ebp-4]
 004BA993    mov         ebx,dword ptr [eax+8]
 004BA996    mov         edx,edi
 004BA998    mov         eax,ebx
 004BA99A    call        TRegistry.CreateKey
 004BA99F    mov         eax,dword ptr [ebp-4]
 004BA9A2    mov         eax,dword ptr [eax+8]
 004BA9A5    mov         edx,edi
 004BA9A7    call        TRegistry.GetKey
 004BA9AC    mov         dword ptr [ebp-8],eax
 004BA9AF    cmp         dword ptr [ebp-8],0
>004BA9B3    je          004BAAEE
 004BA9B9    xor         eax,eax
 004BA9BB    push        ebp
 004BA9BC    push        4BAAE7
 004BA9C1    push        dword ptr fs:[eax]
 004BA9C4    mov         dword ptr fs:[eax],esp
 004BA9C7    mov         eax,dword ptr [ebx+4]
 004BA9CA    mov         dword ptr [ebp-0C],eax
 004BA9CD    mov         eax,dword ptr [ebp+8]
 004BA9D0    mov         edx,dword ptr ds:[472CE4];TMemoryStream
 004BA9D6    call        @IsClass
 004BA9DB    test        al,al
>004BA9DD    je          004BA9E7
 004BA9DF    mov         eax,dword ptr [ebp+8]
 004BA9E2    mov         dword ptr [ebp-10],eax
>004BA9E5    jmp         004BA9F6
 004BA9E7    mov         dl,1
 004BA9E9    mov         eax,[00472CE4];TMemoryStream
 004BA9EE    call        TObject.Create
 004BA9F3    mov         dword ptr [ebp-10],eax
 004BA9F6    xor         eax,eax
 004BA9F8    push        ebp
 004BA9F9    push        4BAAC9
 004BA9FE    push        dword ptr fs:[eax]
 004BAA01    mov         dword ptr fs:[eax],esp
 004BAA04    mov         eax,dword ptr [ebp-10]
 004BAA07    cmp         eax,dword ptr [ebp+8]
>004BAA0A    je          004BAA3F
 004BAA0C    mov         eax,dword ptr [ebp+8]
 004BAA0F    mov         edx,dword ptr [eax]
 004BAA11    call        dword ptr [edx]
 004BAA13    push        edx
 004BAA14    push        eax
 004BAA15    mov         eax,dword ptr [ebp+8]
 004BAA18    call        TStream.GetPosition
 004BAA1D    sub         dword ptr [esp],eax
 004BAA20    sbb         dword ptr [esp+4],edx
 004BAA24    pop         eax
 004BAA25    pop         edx
 004BAA26    push        edx
 004BAA27    push        eax
 004BAA28    mov         edx,dword ptr [ebp+8]
 004BAA2B    mov         eax,dword ptr [ebp-10]
 004BAA2E    call        TStream.CopyFrom
 004BAA33    push        0
 004BAA35    push        0
 004BAA37    mov         eax,dword ptr [ebp-10]
 004BAA3A    call        TStream.SetPosition
 004BAA3F    mov         eax,dword ptr [ebp-4]
 004BAA42    mov         eax,dword ptr [eax+8]
 004BAA45    mov         edx,dword ptr [ebp-8]
 004BAA48    call        TRegistry.SetCurrentKey
 004BAA4D    xor         eax,eax
 004BAA4F    push        ebp
 004BAA50    push        4BAAA4
 004BAA55    push        dword ptr fs:[eax]
 004BAA58    mov         dword ptr fs:[eax],esp
 004BAA5B    mov         eax,dword ptr [ebp-10]
 004BAA5E    mov         edx,dword ptr [eax]
 004BAA60    call        dword ptr [edx]
 004BAA62    mov         edi,eax
 004BAA64    mov         eax,dword ptr [ebp-10]
 004BAA67    call        TStream.GetPosition
 004BAA6C    sub         edi,eax
 004BAA6E    push        edi
 004BAA6F    mov         eax,dword ptr [ebp-10]
 004BAA72    call        TStream.GetPosition
 004BAA77    mov         ecx,eax
 004BAA79    mov         eax,dword ptr [ebp-10]
 004BAA7C    add         ecx,dword ptr [eax+4]
 004BAA7F    mov         edx,esi
 004BAA81    mov         eax,ebx
 004BAA83    call        TRegistry.WriteBinaryData
 004BAA88    xor         eax,eax
 004BAA8A    pop         edx
 004BAA8B    pop         ecx
 004BAA8C    pop         ecx
 004BAA8D    mov         dword ptr fs:[eax],edx
 004BAA90    push        4BAAAB
 004BAA95    mov         eax,dword ptr [ebp-4]
 004BAA98    mov         eax,dword ptr [eax+8]
 004BAA9B    mov         edx,dword ptr [ebp-0C]
 004BAA9E    call        TRegistry.SetCurrentKey
 004BAAA3    ret
>004BAAA4    jmp         @HandleFinally
>004BAAA9    jmp         004BAA95
 004BAAAB    xor         eax,eax
 004BAAAD    pop         edx
 004BAAAE    pop         ecx
 004BAAAF    pop         ecx
 004BAAB0    mov         dword ptr fs:[eax],edx
 004BAAB3    push        4BAAD0
 004BAAB8    mov         eax,dword ptr [ebp+8]
 004BAABB    cmp         eax,dword ptr [ebp-10]
>004BAABE    je          004BAAC8
 004BAAC0    mov         eax,dword ptr [ebp-10]
 004BAAC3    call        TObject.Free
 004BAAC8    ret
>004BAAC9    jmp         @HandleFinally
>004BAACE    jmp         004BAAB8
 004BAAD0    xor         eax,eax
 004BAAD2    pop         edx
 004BAAD3    pop         ecx
 004BAAD4    pop         ecx
 004BAAD5    mov         dword ptr fs:[eax],edx
 004BAAD8    push        4BAAEE
 004BAADD    mov         eax,dword ptr [ebp-8]
 004BAAE0    push        eax
 004BAAE1    call        advapi32.RegCloseKey
 004BAAE6    ret
>004BAAE7    jmp         @HandleFinally
>004BAAEC    jmp         004BAADD
 004BAAEE    pop         edi
 004BAAEF    pop         esi
 004BAAF0    pop         ebx
 004BAAF1    mov         esp,ebp
 004BAAF3    pop         ebp
 004BAAF4    ret         4
*}
end;

//004BAAF8
procedure TRegistryIniFile.WriteString(Section:string; Ident:string; Value:string);
begin
{*
 004BAAF8    push        ebp
 004BAAF9    mov         ebp,esp
 004BAAFB    push        ebx
 004BAAFC    mov         ebx,dword ptr [ebp+8]
 004BAAFF    push        ebx
 004BAB00    mov         eax,dword ptr [eax+8]
 004BAB03    call        TRegIniFile.WriteString
 004BAB08    pop         ebx
 004BAB09    pop         ebp
 004BAB0A    ret         4
*}
end;

//004BAB10
procedure TRegistryIniFile.ReadSection(Section:string; Strings:TStrings);
begin
{*
 004BAB10    mov         eax,dword ptr [eax+8]
 004BAB13    call        TRegIniFile.ReadSection
 004BAB18    ret
*}
end;

//004BAB1C
procedure TRegistryIniFile.ReadSections(Strings:TStrings);
begin
{*
 004BAB1C    mov         eax,dword ptr [eax+8]
 004BAB1F    call        TRegIniFile.ReadSections
 004BAB24    ret
*}
end;

//004BAB28
procedure TRegistryIniFile.ReadSections(Section:string; Strings:TStrings);
begin
{*
 004BAB28    push        ebp
 004BAB29    mov         ebp,esp
 004BAB2B    add         esp,0FFFFFFF4
 004BAB2E    push        esi
 004BAB2F    mov         esi,ecx
 004BAB31    mov         eax,dword ptr [eax+8]
 004BAB34    mov         dword ptr [ebp-0C],eax
 004BAB37    mov         eax,dword ptr [ebp-0C]
 004BAB3A    call        TRegistry.GetKey
 004BAB3F    mov         dword ptr [ebp-4],eax
 004BAB42    cmp         dword ptr [ebp-4],0
>004BAB46    je          004BABC0
 004BAB48    xor         eax,eax
 004BAB4A    push        ebp
 004BAB4B    push        4BABB9
 004BAB50    push        dword ptr fs:[eax]
 004BAB53    mov         dword ptr fs:[eax],esp
 004BAB56    mov         eax,dword ptr [ebp-0C]
 004BAB59    mov         eax,dword ptr [eax+4]
 004BAB5C    mov         dword ptr [ebp-8],eax
 004BAB5F    mov         edx,dword ptr [ebp-4]
 004BAB62    mov         eax,dword ptr [ebp-0C]
 004BAB65    call        TRegistry.SetCurrentKey
 004BAB6A    xor         eax,eax
 004BAB6C    push        ebp
 004BAB6D    push        4BAB9B
 004BAB72    push        dword ptr fs:[eax]
 004BAB75    mov         dword ptr fs:[eax],esp
 004BAB78    mov         edx,esi
 004BAB7A    mov         eax,dword ptr [ebp-0C]
 004BAB7D    call        TRegistry.GetKeyNames
 004BAB82    xor         eax,eax
 004BAB84    pop         edx
 004BAB85    pop         ecx
 004BAB86    pop         ecx
 004BAB87    mov         dword ptr fs:[eax],edx
 004BAB8A    push        4BABA2
 004BAB8F    mov         edx,dword ptr [ebp-8]
 004BAB92    mov         eax,dword ptr [ebp-0C]
 004BAB95    call        TRegistry.SetCurrentKey
 004BAB9A    ret
>004BAB9B    jmp         @HandleFinally
>004BABA0    jmp         004BAB8F
 004BABA2    xor         eax,eax
 004BABA4    pop         edx
 004BABA5    pop         ecx
 004BABA6    pop         ecx
 004BABA7    mov         dword ptr fs:[eax],edx
 004BABAA    push        4BABC7
 004BABAF    mov         eax,dword ptr [ebp-4]
 004BABB2    push        eax
 004BABB3    call        advapi32.RegCloseKey
 004BABB8    ret
>004BABB9    jmp         @HandleFinally
>004BABBE    jmp         004BABAF
 004BABC0    mov         eax,esi
 004BABC2    mov         edx,dword ptr [eax]
 004BABC4    call        dword ptr [edx+48]
 004BABC7    pop         esi
 004BABC8    mov         esp,ebp
 004BABCA    pop         ebp
 004BABCB    ret
*}
end;

//004BABCC
procedure AddSubSection(const Parent:UnicodeString; const Section:UnicodeString);
begin
{*
 004BABCC    push        ebp
 004BABCD    mov         ebp,esp
 004BABCF    xor         ecx,ecx
 004BABD1    push        ecx
 004BABD2    push        ecx
 004BABD3    push        ecx
 004BABD4    push        ecx
 004BABD5    push        ecx
 004BABD6    push        ebx
 004BABD7    push        esi
 004BABD8    push        edi
 004BABD9    mov         ebx,edx
 004BABDB    mov         esi,eax
 004BABDD    xor         eax,eax
 004BABDF    push        ebp
 004BABE0    push        4BAD0B
 004BABE5    push        dword ptr fs:[eax]
 004BABE8    mov         dword ptr fs:[eax],esp
 004BABEB    mov         eax,dword ptr [ebp+8]
 004BABEE    mov         ecx,dword ptr [eax-8]
 004BABF1    mov         eax,dword ptr [ebp+8]
 004BABF4    mov         eax,dword ptr [eax-4]
 004BABF7    mov         edx,ebx
 004BABF9    mov         edi,dword ptr [eax]
 004BABFB    call        dword ptr [edi+4C]
 004BABFE    mov         eax,dword ptr [ebp+8]
 004BAC01    mov         eax,dword ptr [eax-8]
 004BAC04    call        TStrings.GetEnumerator
 004BAC09    mov         dword ptr [ebp-10],eax
 004BAC0C    xor         eax,eax
 004BAC0E    push        ebp
 004BAC0F    push        4BACE1
 004BAC14    push        dword ptr fs:[eax]
 004BAC17    mov         dword ptr fs:[eax],esp
>004BAC1A    jmp         004BACB3
 004BAC1F    lea         ecx,[ebp-0C]
 004BAC22    mov         eax,dword ptr [ebp-10]
 004BAC25    mov         edx,dword ptr [eax+4]
 004BAC28    mov         eax,dword ptr [ebp-10]
 004BAC2B    mov         eax,dword ptr [eax+8]
 004BAC2E    mov         edi,dword ptr [eax]
 004BAC30    call        dword ptr [edi+0C]
 004BAC33    lea         eax,[ebp-4]
 004BAC36    mov         edx,dword ptr [ebp-0C]
 004BAC39    call        @UStrLAsg
 004BAC3E    test        esi,esi
>004BAC40    je          004BAC5C
 004BAC42    push        esi
 004BAC43    mov         eax,[007C46E0];^^"'\'"
 004BAC48    push        dword ptr [eax]
 004BAC4A    push        dword ptr [ebp-4]
 004BAC4D    lea         eax,[ebp-8]
 004BAC50    mov         edx,3
 004BAC55    call        @UStrCatN
>004BAC5A    jmp         004BAC67
 004BAC5C    lea         eax,[ebp-8]
 004BAC5F    mov         edx,dword ptr [ebp-4]
 004BAC62    call        @UStrLAsg
 004BAC67    mov         eax,dword ptr [ebp+8]
 004BAC6A    mov         eax,dword ptr [eax-0C]
 004BAC6D    mov         edx,dword ptr [ebp-8]
 004BAC70    mov         ecx,dword ptr [eax]
 004BAC72    call        dword ptr [ecx+3C]
 004BAC75    test        ebx,ebx
>004BAC77    je          004BACA3
 004BAC79    mov         eax,dword ptr [ebp+8]
 004BAC7C    push        eax
 004BAC7D    push        ebx
 004BAC7E    mov         eax,[007C46E0];^^"'\'"
 004BAC83    push        dword ptr [eax]
 004BAC85    push        dword ptr [ebp-4]
 004BAC88    lea         eax,[ebp-14]
 004BAC8B    mov         edx,3
 004BAC90    call        @UStrCatN
 004BAC95    mov         edx,dword ptr [ebp-14]
 004BAC98    mov         eax,dword ptr [ebp-8]
 004BAC9B    call        AddSubSection
 004BACA0    pop         ecx
>004BACA1    jmp         004BACB3
 004BACA3    mov         eax,dword ptr [ebp+8]
 004BACA6    push        eax
 004BACA7    mov         edx,dword ptr [ebp-4]
 004BACAA    mov         eax,dword ptr [ebp-8]
 004BACAD    call        AddSubSection
 004BACB2    pop         ecx
 004BACB3    mov         eax,dword ptr [ebp-10]
 004BACB6    call        TStringsEnumerator.MoveNext
 004BACBB    test        al,al
>004BACBD    jne         004BAC1F
 004BACC3    xor         eax,eax
 004BACC5    pop         edx
 004BACC6    pop         ecx
 004BACC7    pop         ecx
 004BACC8    mov         dword ptr fs:[eax],edx
 004BACCB    push        4BACE8
 004BACD0    cmp         dword ptr [ebp-10],0
>004BACD4    je          004BACE0
 004BACD6    mov         dl,1
 004BACD8    mov         eax,dword ptr [ebp-10]
 004BACDB    mov         ecx,dword ptr [eax]
 004BACDD    call        dword ptr [ecx-4]
 004BACE0    ret
>004BACE1    jmp         @HandleFinally
>004BACE6    jmp         004BACD0
 004BACE8    xor         eax,eax
 004BACEA    pop         edx
 004BACEB    pop         ecx
 004BACEC    pop         ecx
 004BACED    mov         dword ptr fs:[eax],edx
 004BACF0    push        4BAD12
 004BACF5    lea         eax,[ebp-14]
 004BACF8    call        @UStrClr
 004BACFD    lea         eax,[ebp-0C]
 004BAD00    mov         edx,3
 004BAD05    call        @UStrArrayClr
 004BAD0A    ret
>004BAD0B    jmp         @HandleFinally
>004BAD10    jmp         004BACF5
 004BAD12    pop         edi
 004BAD13    pop         esi
 004BAD14    pop         ebx
 004BAD15    mov         esp,ebp
 004BAD17    pop         ebp
 004BAD18    ret
*}
end;

//004BAD1C
procedure TRegistryIniFile.ReadSubSections(Section:string; Strings:TStrings; Recurse:Boolean);
begin
{*
 004BAD1C    push        ebp
 004BAD1D    mov         ebp,esp
 004BAD1F    add         esp,0FFFFFFF4
 004BAD22    push        ebx
 004BAD23    mov         dword ptr [ebp-0C],ecx
 004BAD26    mov         ebx,edx
 004BAD28    mov         dword ptr [ebp-4],eax
 004BAD2B    cmp         byte ptr [ebp+8],0
>004BAD2F    je          004BAD86
 004BAD31    mov         eax,dword ptr [ebp-0C]
 004BAD34    call        TStrings.BeginUpdate
 004BAD39    mov         dl,1
 004BAD3B    mov         eax,[0046F9A0];TStringList
 004BAD40    call        TStringList.Create
 004BAD45    mov         dword ptr [ebp-8],eax
 004BAD48    xor         eax,eax
 004BAD4A    push        ebp
 004BAD4B    push        4BAD7F
 004BAD50    push        dword ptr fs:[eax]
 004BAD53    mov         dword ptr fs:[eax],esp
 004BAD56    push        ebp
 004BAD57    mov         edx,ebx
 004BAD59    xor         eax,eax
 004BAD5B    call        AddSubSection
 004BAD60    pop         ecx
 004BAD61    xor         eax,eax
 004BAD63    pop         edx
 004BAD64    pop         ecx
 004BAD65    pop         ecx
 004BAD66    mov         dword ptr fs:[eax],edx
 004BAD69    push        4BAD93
 004BAD6E    mov         eax,dword ptr [ebp-8]
 004BAD71    call        TObject.Free
 004BAD76    mov         eax,dword ptr [ebp-0C]
 004BAD79    call        TStrings.EndUpdate
 004BAD7E    ret
>004BAD7F    jmp         @HandleFinally
>004BAD84    jmp         004BAD6E
 004BAD86    mov         ecx,dword ptr [ebp-0C]
 004BAD89    mov         edx,ebx
 004BAD8B    mov         eax,dword ptr [ebp-4]
 004BAD8E    mov         ebx,dword ptr [eax]
 004BAD90    call        dword ptr [ebx+4C]
 004BAD93    pop         ebx
 004BAD94    mov         esp,ebp
 004BAD96    pop         ebp
 004BAD97    ret         4
*}
end;

//004BAD9C
procedure TRegistryIniFile.ReadSectionValues(Section:string; Strings:TStrings);
begin
{*
 004BAD9C    mov         eax,dword ptr [eax+8]
 004BAD9F    call        TRegIniFile.ReadSectionValues
 004BADA4    ret
*}
end;

//004BADA8
procedure TRegistryIniFile.EraseSection(Section:string);
begin
{*
 004BADA8    mov         eax,dword ptr [eax+8]
 004BADAB    call        TRegIniFile.EraseSection
 004BADB0    ret
*}
end;

//004BADB4
procedure TRegistryIniFile.DeleteKey(Section:string; Ident:string);
begin
{*
 004BADB4    mov         eax,dword ptr [eax+8];TRegistryIniFile.....FRegIniFile:TRegIniFile
 004BADB7    call        TRegIniFile.DeleteKey
 004BADBC    ret
*}
end;

//004BADC0
procedure TRegistryIniFile.UpdateFile;
begin
{*
 004BADC0    ret
*}
end;

//004BB07C
function CursorToIdent(Cursor:LongInt; var Ident:UnicodeString):Boolean;
begin
{*
 004BB07C    push        15
 004BB07E    mov         ecx,7A07C4
 004BB083    call        IntToIdent
 004BB088    ret
*}
end;

//004BB08C
function IdentToCursor(const Ident:UnicodeString; var Cursor:LongInt):Boolean;
begin
{*
 004BB08C    push        15
 004BB08E    mov         ecx,7A07C4
 004BB093    call        IdentToInt
 004BB098    ret
*}
end;

//004BB7E8
function ColorToIdent(Color:LongInt; var Ident:UnicodeString):Boolean;
begin
{*
 004BB7E8    push        33
 004BB7EA    mov         ecx,7A0874
 004BB7EF    call        IntToIdent
 004BB7F4    ret
*}
end;

//004BB7F8
function IdentToColor(const Ident:UnicodeString; var Color:LongInt):Boolean;
begin
{*
 004BB7F8    push        33
 004BB7FA    mov         ecx,7A0874
 004BB7FF    call        IdentToInt
 004BB804    ret
*}
end;

//004BB808
procedure RegisterColorIntegerConsts;
begin
{*
 004BB808    mov         eax,[0040F724];TColor
 004BB80D    call        FindIntToIdent
 004BB812    test        eax,eax
>004BB814    jne         004BB82A
 004BB816    mov         ecx,4BB7E8;ColorToIdent:Boolean
 004BB81B    mov         edx,4BB7F8;IdentToColor:Boolean
 004BB820    mov         eax,[0040F724];TColor
 004BB825    call        RegisterIntegerConsts
 004BB82A    ret
*}
end;

//004BCE9C
function StringToAlphaColor(const Value:UnicodeString):TAlphaColor;
begin
{*
 004BCE9C    push        ebp
 004BCE9D    mov         ebp,esp
 004BCE9F    xor         ecx,ecx
 004BCEA1    push        ecx
 004BCEA2    push        ecx
 004BCEA3    push        ecx
 004BCEA4    push        ecx
 004BCEA5    push        ebx
 004BCEA6    mov         ebx,eax
 004BCEA8    xor         eax,eax
 004BCEAA    push        ebp
 004BCEAB    push        4BCF82
 004BCEB0    push        dword ptr fs:[eax]
 004BCEB3    mov         dword ptr fs:[eax],esp
 004BCEB6    lea         eax,[ebp-4]
 004BCEB9    mov         edx,ebx
 004BCEBB    call        @UStrLAsg
 004BCEC0    mov         eax,dword ptr [ebp-4]
 004BCEC3    mov         edx,4BCF9C;''
 004BCEC8    call        @UStrEqual
>004BCECD    jne         004BCEDE
 004BCECF    lea         eax,[ebp-4]
 004BCED2    mov         edx,4BCFAC;'$0'
 004BCED7    call        @UStrLAsg
>004BCEDC    jmp         004BCF22
 004BCEDE    cmp         dword ptr [ebp-4],0
>004BCEE2    je          004BCF22
 004BCEE4    mov         eax,dword ptr [ebp-4]
 004BCEE7    xor         edx,edx
 004BCEE9    movzx       eax,word ptr [eax+edx*2]
 004BCEED    cmp         ax,23
>004BCEF1    jne         004BCEF7
 004BCEF3    mov         al,1
>004BCEF5    jmp         004BCEFE
 004BCEF7    cmp         ax,78
 004BCEFB    sete        al
 004BCEFE    test        al,al
>004BCF00    je          004BCF22
 004BCF02    lea         ecx,[ebp-0C]
 004BCF05    lea         eax,[ebp-4]
 004BCF08    mov         edx,1
 004BCF0D    call        TStringHelper.Substring
 004BCF12    mov         ecx,dword ptr [ebp-0C]
 004BCF15    lea         eax,[ebp-4]
 004BCF18    mov         edx,4BCFC0;'$'
 004BCF1D    call        @UStrCat3
 004BCF22    lea         eax,[ebp-10]
 004BCF25    mov         ecx,dword ptr [ebp-4]
 004BCF28    mov         edx,4BCFD0;'cla'
 004BCF2D    call        @UStrCat3
 004BCF32    mov         eax,dword ptr [ebp-10]
 004BCF35    lea         edx,[ebp-8]
 004BCF38    call        IdentToAlphaColor
 004BCF3D    test        al,al
>004BCF3F    jne         004BCF5C
 004BCF41    lea         edx,[ebp-8]
 004BCF44    mov         eax,dword ptr [ebp-4]
 004BCF47    call        IdentToAlphaColor
 004BCF4C    test        al,al
>004BCF4E    jne         004BCF5C
 004BCF50    mov         eax,dword ptr [ebp-4]
 004BCF53    call        StrToInt64
 004BCF58    mov         ebx,eax
>004BCF5A    jmp         004BCF5F
 004BCF5C    mov         ebx,dword ptr [ebp-8]
 004BCF5F    xor         eax,eax
 004BCF61    pop         edx
 004BCF62    pop         ecx
 004BCF63    pop         ecx
 004BCF64    mov         dword ptr fs:[eax],edx
 004BCF67    push        4BCF89
 004BCF6C    lea         eax,[ebp-10]
 004BCF6F    mov         edx,2
 004BCF74    call        @UStrArrayClr
 004BCF79    lea         eax,[ebp-4]
 004BCF7C    call        @UStrClr
 004BCF81    ret
>004BCF82    jmp         @HandleFinally
>004BCF87    jmp         004BCF6C
 004BCF89    mov         eax,ebx
 004BCF8B    pop         ebx
 004BCF8C    mov         esp,ebp
 004BCF8E    pop         ebp
 004BCF8F    ret
*}
end;

//004BCFD8
function AlphaColorToIdent(Color:LongInt; var Ident:UnicodeString):Boolean;
begin
{*
 004BCFD8    push        ebp
 004BCFD9    mov         ebp,esp
 004BCFDB    push        0
 004BCFDD    push        ebx
 004BCFDE    push        esi
 004BCFDF    push        edi
 004BCFE0    mov         edi,edx
 004BCFE2    mov         esi,eax
 004BCFE4    xor         eax,eax
 004BCFE6    push        ebp
 004BCFE7    push        4BD041
 004BCFEC    push        dword ptr fs:[eax]
 004BCFEF    mov         dword ptr fs:[eax],esp
 004BCFF2    push        93
 004BCFF7    mov         ecx,7A0A14
 004BCFFC    mov         edx,edi
 004BCFFE    mov         eax,esi
 004BD000    call        IntToIdent
 004BD005    mov         ebx,eax
 004BD007    test        bl,bl
>004BD009    jne         004BD02B
 004BD00B    lea         ecx,[ebp-4]
 004BD00E    mov         edx,8
 004BD013    mov         eax,esi
 004BD015    call        IntToHex
 004BD01A    mov         ecx,dword ptr [ebp-4]
 004BD01D    mov         eax,edi
 004BD01F    mov         edx,4BD05C;'x'
 004BD024    call        @UStrCat3
 004BD029    mov         bl,1
 004BD02B    xor         eax,eax
 004BD02D    pop         edx
 004BD02E    pop         ecx
 004BD02F    pop         ecx
 004BD030    mov         dword ptr fs:[eax],edx
 004BD033    push        4BD048
 004BD038    lea         eax,[ebp-4]
 004BD03B    call        @UStrClr
 004BD040    ret
>004BD041    jmp         @HandleFinally
>004BD046    jmp         004BD038
 004BD048    mov         eax,ebx
 004BD04A    pop         edi
 004BD04B    pop         esi
 004BD04C    pop         ebx
 004BD04D    pop         ecx
 004BD04E    pop         ebp
 004BD04F    ret
*}
end;

//004BD060
function IdentToAlphaColor(const Ident:UnicodeString; var Color:LongInt):Boolean;
begin
{*
 004BD060    push        ebp
 004BD061    mov         ebp,esp
 004BD063    push        0
 004BD065    push        0
 004BD067    push        ebx
 004BD068    push        esi
 004BD069    mov         esi,edx
 004BD06B    mov         ebx,eax
 004BD06D    xor         eax,eax
 004BD06F    push        ebp
 004BD070    push        4BD135
 004BD075    push        dword ptr fs:[eax]
 004BD078    mov         dword ptr fs:[eax],esp
 004BD07B    lea         eax,[ebp-4]
 004BD07E    mov         edx,ebx
 004BD080    call        @UStrLAsg
 004BD085    mov         eax,dword ptr [ebp-4]
 004BD088    test        eax,eax
>004BD08A    je          004BD091
 004BD08C    sub         eax,4
 004BD08F    mov         eax,dword ptr [eax]
 004BD091    test        eax,eax
>004BD093    jle         004BD0A4
 004BD095    mov         eax,dword ptr [ebp-4]
 004BD098    xor         edx,edx
 004BD09A    cmp         word ptr [eax+edx*2],78
 004BD09F    sete        al
>004BD0A2    jmp         004BD0A6
 004BD0A4    xor         eax,eax
 004BD0A6    test        al,al
>004BD0A8    je          004BD0B8
 004BD0AA    mov         eax,dword ptr [ebp-4]
 004BD0AD    call        StringToAlphaColor
 004BD0B2    mov         dword ptr [esi],eax
 004BD0B4    mov         bl,1
>004BD0B6    jmp         004BD0CE
 004BD0B8    push        93
 004BD0BD    mov         ecx,7A0A14
 004BD0C2    mov         edx,esi
 004BD0C4    mov         eax,dword ptr [ebp-4]
 004BD0C7    call        IdentToInt
 004BD0CC    mov         ebx,eax
 004BD0CE    test        bl,bl
>004BD0D0    jne         004BD11A
 004BD0D2    mov         eax,dword ptr [ebp-4]
 004BD0D5    test        eax,eax
>004BD0D7    je          004BD0DE
 004BD0D9    sub         eax,4
 004BD0DC    mov         eax,dword ptr [eax]
 004BD0DE    cmp         eax,3
>004BD0E1    jle         004BD11A
 004BD0E3    lea         eax,[ebp-8]
 004BD0E6    push        eax
 004BD0E7    lea         eax,[ebp-4]
 004BD0EA    mov         ecx,4BD150;'a'
 004BD0EF    mov         edx,2
 004BD0F4    call        TStringHelper.Insert
 004BD0F9    mov         edx,dword ptr [ebp-8]
 004BD0FC    lea         eax,[ebp-4]
 004BD0FF    call        @UStrLAsg
 004BD104    push        93
 004BD109    mov         ecx,7A0A14
 004BD10E    mov         edx,esi
 004BD110    mov         eax,dword ptr [ebp-4]
 004BD113    call        IdentToInt
 004BD118    mov         ebx,eax
 004BD11A    xor         eax,eax
 004BD11C    pop         edx
 004BD11D    pop         ecx
 004BD11E    pop         ecx
 004BD11F    mov         dword ptr fs:[eax],edx
 004BD122    push        4BD13C
 004BD127    lea         eax,[ebp-8]
 004BD12A    mov         edx,2
 004BD12F    call        @UStrArrayClr
 004BD134    ret
>004BD135    jmp         @HandleFinally
>004BD13A    jmp         004BD127
 004BD13C    mov         eax,ebx
 004BD13E    pop         esi
 004BD13F    pop         ebx
 004BD140    pop         ecx
 004BD141    pop         ecx
 004BD142    pop         ebp
 004BD143    ret
*}
end;

//004BD154
procedure RegisterAlphaColorIntegerConsts;
begin
{*
 004BD154    mov         eax,[0040F73C];TAlphaColor
 004BD159    call        FindIntToIdent
 004BD15E    test        eax,eax
>004BD160    jne         004BD176
 004BD162    mov         ecx,4BCFD8;AlphaColorToIdent:Boolean
 004BD167    mov         edx,4BD060;IdentToAlphaColor:Boolean
 004BD16C    mov         eax,[0040F73C];TAlphaColor
 004BD171    call        RegisterIntegerConsts
 004BD176    ret
*}
end;

end.