//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.Graphics;

interface

uses
  SysUtils, Classes, System.Win.Registry, Vcl.Graphics, System.UIConsts, System.TypInfo, System.Classes;

type
  TWICImage = class(TGraphic)
  published
    procedure SaveToStream(Stream:TStream);//004CD83C
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);//004CD9F0
    procedure SaveToClipboardFormat(var AFormat:Word; var AData:NativeUInt; var APalette:HPALETTE);//004CDA8C
    procedure LoadFromStream(Stream:TStream);//004CD6E0
    constructor Create;//004CD39C
    destructor Destroy();//004CD440
    procedure Assign(Source:TPersistent);//004CD1D8
  public
    FWidth:Cardinal;//f28
    FHeight:Cardinal;//f2C
    FBitmap:TBitmap;//f30
    FData:TMemoryStream;//f34
    FWicBitmap:IWICBitmap;//f38
    FImageFormat:TWICImageFormat;//f3C
    FEncoderContainerFormat:TGUID;//f3D
    FEncoderContainerFormat:TGUID;//f40
    FFormatChanged:Boolean;//f4D
    FFormatChanged:Boolean;//f50
    destructor Destroy(); virtual;//004CD440
    procedure AssignTo(Dest:Classes.TPersistent); virtual;//v0//004CD364
    procedure Assign(Source:TPersistent); virtual;//v8//004CD1D8
    procedure Draw(ACanvas:TCanvas; const Rect:Windows.TRect); virtual;//v14//004CD630
    function GetEmpty:Boolean; virtual;//v20//004CD65C
    //function GetHeight:?; virtual;//v24//004CD678
    //function GetWidth:?; virtual;//v30//004CD67C
    procedure InvalidBitmap; virtual;//v38//004CDC78
    procedure InvalidIcon; virtual;//v44//004CDC84
    constructor Create; virtual;//v50//004CD39C
    procedure LoadFromStream(Stream:TStream); virtual;//v5C//004CD6E0
    procedure SaveToStream(Stream:TStream); virtual;//v60//004CD83C
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE); virtual;//v64//004CD9F0
    procedure SaveToClipboardFormat(var AFormat:Word; var AData:NativeUInt; var APalette:HPALETTE); virtual;//v68//004CDA8C
    procedure SetHeight(Value:Integer);//004C5FBC
    procedure SetWidth(Value:Integer);//004C5FC8
    function GetHandle:IWICBitmap;//004CD664
    procedure RequireBitmap;//004CDCC8
  end;
  TResourceManager = class(TObject)
  published
    //procedure ChangeResource(GraphicsObject:TGraphicsObject; ResData:?);//004C36B4
    procedure AssignResource(GraphicsObject:TGraphicsObject; AResource:PResource);//004C3740
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure FreeResource(Resource:PResource);//004C35E4
    constructor Create;//004C3474
    destructor Destroy();//004C34B0
    //function AllocResource(ResData:?):PResource;//004C34D4
  public
    ResList:PResource;//f4
    FLock:_RTL_CRITICAL_SECTION;//f8
    ResDataSize:Word;//f20
    destructor Destroy(); virtual;//004C34B0
    procedure v0; virtual;//v0//004C373C
  end;
  TBrushResourceManager = class(TResourceManager)
  public
    procedure FreeObjects(Resource:PResource); virtual;//v0//004C37D4
  end;
  TFileFormat = TFileFormat = record//size=10
f4:string;//f4
f8:string;//f8
end;
GraphicClass:TGraphicClass;//f0
Extension:string;//f4
Description:string;//f8
DescResID:Integer;//fC
end;;
  TFileFormatsList = class(TList)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function FindClassName(Classname:string):TGraphicClass;//004C7CA8
    procedure Add(Ext:string; Desc:string; AClass:TGraphicClass; DescID:Integer);//004C7C14
    constructor Create();//004C7A00
    destructor Destroy();//004C7BC8
  public
    destructor Destroy(); virtual;//004C7BC8
  end;
  TClipboardFormats = class(TObject)
  published
    function FindFormat(Fmt:Word):TGraphicClass;//004C8044
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure Add(Fmt:Word; AClass:TGraphicClass);//004C7FDC
    constructor Create();//004C7F20
    destructor Destroy();//004C7FA8
  public
    FClasses:TList;//f4
    FFormats:TList;//f8
  end;
  TBitmapCanvas = class(TCanvas)
  published
    destructor Destroy();//004C9A9C
    constructor Create;//004C9A60
  public
    FBitmap:TBitmap;//f58
    FOldBitmap:HBITMAP;//f5C
    FOldPalette:HPALETTE;//f60
    destructor Destroy(); virtual;//004C9A9C
    procedure CreateHandle; virtual;//v9C//004C9B6C
    procedure FreeContext;//004C9AC8
  end;
  :TWICImage.:1 = array of Byte;
//elSize = 1
//varType equivalent: varByte;
  :TWICImage.:2 = array of Byte;
//elSize = 1
//varType equivalent: varByte;
  TPattern = TPattern = record//size=10
Next:PPattern;//f0
Bitmap:TBitmap;//f4
BkColorRef:Cardinal;//f8
FgColorRef:Cardinal;//fC
end;;
  TPatternManager = class(TObject)
  published
    procedure FreePatterns;//004CE5E0
    procedure Lock;//004CE408
    procedure Unlock;//004CE414
    function AllocPattern(BkColor:Cardinal; FgColor:Cardinal):PPattern;//004CE420
    constructor Create();//004CE3A4
    destructor Destroy();//004CE3DC
  public
    List:PPattern;//f4
    FLock:_RTL_CRITICAL_SECTION;//f8
    function CreateBitmap(BkColor:UITypes.TColor; FgColor:UITypes.TColor):TBitmap;//004CE4D4
  end;
    procedure InternalDeletePalette(Pal:Windows.HPALETTE);//004C3090
    function GetHashCode(const Buffer:void ; Count:Integer):Word;//004C3460
    procedure sub_004C373C;//004C373C
    procedure FreeObjects(Resource:PResource);//004C37D4
    procedure ClearColor(ResMan:TResourceManager);//004C37F4
    procedure PaletteChanged;//004C3878
    function ColorToRGB(Color:UITypes.TColor):LongInt;//004C3928
    procedure Changed;//004C3938
    procedure Lock;//004C394C
    procedure Unlock;//004C395C
    function CharsetToIdent(Charset:LongInt; var Ident:UnicodeString):Boolean;//004C3C78
    function IdentToCharset(const Ident:UnicodeString; var Charset:LongInt):Boolean;//004C3C88
    function GetFontData(Font:Windows.HFONT):TFontData;//004C3C98
    constructor Create();//004C3DA4
    destructor Destroy();//004C3E04
    procedure Changed;//004C3E38
    procedure Assign(Source:TPersistent);//004C3E54
    procedure GetData(var FontData:TFontData);//004C3F28
    procedure SetData(const FontData:TFontData);//004C3F40
    procedure SetColor(const Value:UITypes.TColor);//004C3F90
    function IsDefaultFont(const FontData:TFontData):Boolean;//004C3FA0
    function GetHandle:HFONT;//004C3FCC
    procedure SetHandle(const Value:Windows.HFONT);//004C4204
    //function GetHeight:?;//004C422C
    procedure SetHeight(const Value:Integer);//004C4234
    function GetName:TFontName;//004C4268
    procedure SetName(const Value:UITypes.TFontName);//004C42C4
    function GetSize:Integer;//004C4320
    procedure SetSize(const Value:Integer);//004C433C
    function GetStyle:TFontStyles;//004C435C
    procedure SetStyle(const Value:UITypes.TFontStyles);//004C4368
    function GetPitch:TFontPitch;//004C43A8
    function GetQuality:TFontQuality;//004C43B0
    procedure SetPitch(const Value:UITypes.TFontPitch);//004C43BC
    procedure SetQuality(const Value:UITypes.TFontQuality);//004C43F4
    function GetCharset:TFontCharset;//004C4430
    procedure SetCharset(const Value:UITypes.TFontCharset);//004C4438
    function GetOrientation:Integer;//004C4470
    procedure SetOrientation(const Value:Integer);//004C4478
    function GetPenData(Pen:Windows.HPEN):TPenData;//004C44B0
    constructor Create();//004C45C0
    destructor Destroy();//004C460C
    procedure Assign(Source:TPersistent);//004C4640
    procedure GetData(var PenData:TPenData);//004C46F8
    procedure SetData(const BrushData:TBrushData);//004C4710
    //function GetColor:?;//004C4760
    procedure SetColor(Value:UITypes.TColor);//004C4768
    function GetHandle:HPEN;//004C4798
    //procedure sub_004C4848(?:?; ?:?);//004C4848
    procedure SetMode(Value:TPenMode);//004C486C
    function GetStyle:TBrushStyle;//004C487C
    procedure SetStyle(Value:TPenStyle);//004C4884
    //function GetWidth:?;//004C48B4
    procedure SetWidth(Value:Integer);//004C48BC
    function GetBrushData(Brush:Windows.HBRUSH):TBrushData;//004C48F0
    constructor Create();//004C4978
    destructor Destroy();//004C49C0
    procedure Assign(Source:TPersistent);//004C49F4
    procedure GetData(var BrushData:TBrushData);//004C4A9C
    procedure SetData(const PenData:TPenData);//004C4AB8
    procedure SetBitmap(Value:TBitmap);//004C4B10
    //function GetColor:?;//004C4B34
    procedure SetColor(Value:UITypes.TColor);//004C4B3C
    function GetHandle:HBRUSH;//004C4B9C
    function GetStyle:TPenStyle;//004C4CB4
    procedure SetStyle(Value:TBrushStyle);//004C4CBC
    procedure Changed;//004C4D18
    procedure Changing;//004C4D2C
    procedure Lock;//004C4D40
    procedure Rectangle(Rect:TRect);//004C4D68
    function TextHeight(Text:string):Integer;//004C4D80
    function TextWidth(Text:string):Integer;//004C4DA0
    function TryLock:Boolean;//004C4DC0
    procedure Unlock;//004C4E1C
    constructor Create();//004C4E44
    destructor Destroy();//004C4F08
    procedure Arc(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);//004C4F64
    procedure ArcTo(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);//004C4FBC
    procedure AngleArc(X:Integer; Y:Integer; SweepAngle:Single; StartAngle:Single; Radius:Cardinal);//004C5014
    procedure BrushCopy(Dest:TRect; Bitmap:TBitmap; Color:TColor; Source:TRect);//004C505C
    procedure Chord(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);//004C5320
    procedure CopyRect(Dest:TRect; Canvas:TCanvas; Source:TRect);//004C5378
    procedure Draw(X:Integer; Y:Integer; Graphic:TGraphic);//004C5400
    procedure Draw(X:Integer; Y:Integer; Opacity:Byte; Graphic:TGraphic);//004C54B4
    procedure DrawFocusRect(Rect:TRect);//004C5570
    procedure Ellipse(X1:Integer; Y1:Integer; Y2:Integer; X2:Integer);//004C55A4
    procedure FillRect(Rect:TRect);//004C55EC
    procedure FloodFill(X:Integer; Y:Integer; FillStyle:TFillStyle; Color:TColor);//004C5628
    procedure FrameRect(Rect:TRect);//004C5678
    procedure LineTo(X:Integer; Y:Integer);//004C56B4
    procedure MoveTo(X:Integer; Y:Integer);//004C56EC
    procedure Pie(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);//004C5718
    procedure Polygon(Points:TPoint);//004C5770
    procedure Polyline(Points:TPoint);//004C57AC
    procedure PolyBezier(Points:TPoint);//004C57E8
    procedure PolyBezierTo(Points:TPoint);//004C5824
    procedure Rectangle(X1:Integer; Y1:Integer; Y2:Integer; X2:Integer);//004C5860
    procedure Refresh;//004C58A8
    procedure RoundRect(X1:Integer; Y1:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);//004C58B0
    procedure StretchDraw(Rect:TRect; Graphic:TGraphic);//004C5900
    function GetCanvasOrientation:TCanvasOrientation;//004C593C
    procedure TextOut(X:Integer; Y:Integer; Text:string);//004C5968
    procedure TextRect(Rect:TRect; X:Integer; Text:string; Y:Integer);//004C5A10
    //procedure TextRect(var Rect:TRect; var Text:string; TextFormat:TTextFormat; ?:?; ?:?);//004C5AC4
    //procedure TextExtent(Text:string; ?:?);//004C5BA4
    procedure SetFont(Value:TFont);//004C5BF8
    procedure SetPen(Value:TPen);//004C5C04
    procedure SetBrush(Value:TBrush);//004C5C10
    function GetPenPos:TPoint;//004C5C1C
    procedure SetPenPos(Value:Windows.TPoint);//004C5C44
    function GetPixel(X:Integer; Y:Integer):TColor;//004C5C64
    procedure SetPixel(X:Integer; Y:Integer; Value:UITypes.TColor);//004C5C90
    function GetClipRect:TRect;//004C5CD8
    function GetHandle:HDC;//004C5D00
    procedure DeselectHandles;//004C5D24
    procedure sub_004C5D80;//004C5D80
    procedure SetHandle(Value:Windows.HDC);//004C5D84
    procedure RequiredState(ReqState:TCanvasState);//004C5DD8
    procedure CreateFont;//004C5E50
    procedure CreatePen;//004C5E7C
    procedure CreateBrush;//004C5EAC
    procedure FontChanged(AFont:TObject);//004C5F2C
    procedure PenChanged(APen:TObject);//004C5F4C
    procedure BrushChanged(ABrush:TObject);//004C5F6C
    procedure InvalidGraphic(Str:PResStringRec);//004C5F8C
    procedure InvalidOperation(Str:PResStringRec);//004C5FA4
    procedure InvalidMetafile;//004C5FD4
    procedure OutOfResources;//004C5FE0
    procedure GDIError;//004C6034
    function GDICheck(Value:Windows.THandle):THandle;//004C60DC
    function DupBits(Src:Windows.HBITMAP; Size:Types.TPoint; Mono:Boolean):HBITMAP;//004C60EC
    function GetDInColors(BitCount:Word):Integer;//004C624C
    function BytesPerScanline(PixelsPerScanline:LongInt; BitsPerPixel:LongInt; Alignment:LongInt):LongInt;//004C626C
    function TransparentStretchBlt(DstDC:Windows.HDC; DstX:Integer; DstY:Integer; DstW:Integer; DstH:Integer; SrcDC:Windows.HDC; SrcX:Integer; SrcY:Integer; SrcW:Integer; SrcH:Integer; MaskDC:Windows.HDC; MaskX:Integer; MaskY:Integer):Boolean;//004C6280
    procedure RGBTripleToQuad(var ColorTable:void );//004C650C
    procedure RGBQuadToTriple(var ColorTable:void ; var ColorCount:Integer);//004C6548
    procedure ByteSwapColors(var Colors:void ; Count:Integer);//004C65C4
    function CreateSystemPalette(const Entries:array[$0..-$1] of System.UITypes.TColor; const _Dv_:$0..-$1):HPALETTE;//004C6618
    function SystemPaletteOverride(var Pal:Windows.TMaxLogPalette):Boolean;//004C6730
    function PaletteFromDIBColorTable(DIBHandle:Windows.THandle; ColorTable:Pointer; ColorCount:Integer):HPALETTE;//004C67C8
    function PaletteToDIBColorTable(Pal:Windows.HPALETTE; var ColorTable:array[$0..-$1] of Winapi.Windows.TRGBQuad; const _Dv_:$0..-$1):Integer;//004C6884
    procedure TwoBitsFromDIB(var BI:Windows.TBitmapInfoHeader; var XorBits:Windows.HBITMAP; var AndBits:Windows.HBITMAP; const IconSize:Types.TPoint);//004C68D8
    function BetterSize(const Old:TIconRec; const New:TIconRec):Boolean;//004C6A8C
    procedure ReadIcon(Stream:Classes.TStream; var Icon:Windows.HICON; ImageCount:Integer; StartOffset:Integer; const RequestedSize:Types.TPoint; var IconSize:Types.TPoint);//004C6B70
    function ComputeAldusChecksum(var WMF:TMetafileHeader):Word;//004C6EA8
    procedure InitializeBitmapInfoHeader(Bitmap:Windows.HBITMAP; var BI:Windows.TBitmapInfoHeader; Colors:Integer);//004C6EE0
    procedure InternalGetDIBSizes(Bitmap:Windows.HBITMAP; var InfoHeaderSize:Types.DWORD; var ImageSize:Types.DWORD; Colors:Integer);//004C6FC4
    procedure GetDIBSizes(Bitmap:Windows.HBITMAP; var InfoHeaderSize:Windows.DWORD; var ImageSize:Windows.DWORD);//004C702C
    function InternalGetDIB(Bitmap:Windows.HBITMAP; Palette:Windows.HPALETTE; var BitmapInfo:void ; var Bits:void ; Colors:Integer):Boolean;//004C7034
    function GetDIB(Bitmap:Windows.HBITMAP; Palette:Windows.HPALETTE; var BitmapInfo:void ; var Bits:void ):Boolean;//004C70E8
    procedure WinError;//004C70FC
    procedure CheckBool(Result:Windows.BOOL);//004C7100
    procedure WriteIcon(Stream:Classes.TStream; Icon:Windows.HICON; WriteLength:Boolean);//004C710C
    constructor Create();//004C730C
    procedure Changed(Sender:TObject);//004C7344
    function DoWrite:Boolean;//004C735C
    procedure DefineProperties(Filer:Classes.TFiler);//004C73B0
    procedure sub_004C7404;//004C7404
    function Equals(Graphic:TGraphic):Boolean;//004C7414
    function Equals(Obj:TObject):Boolean;//004C7554
    //function sub_004C7584:?;//004C7584
    //function sub_004C7588:?;//004C7588
    //function sub_004C758C:?;//004C758C
    procedure LoadFromFile(Filename:string);//004C7594
    procedure Progress(Sender:TObject; Stage:TProgressStage; PercentDone:Byte; RedrawNow:Boolean; const R:Windows.TRect; const Msg:UnicodeString);//004C75E8
    procedure sub_004C7614;//004C7614
    procedure SaveToFile(Filename:string);//004C761C
    procedure sub_004C7674;//004C7674
    procedure SetModified(Value:Boolean);//004C7678
    procedure SetSize(AWidth:Integer; AHeight:Integer);//004C768C
    procedure SetTransparent(Value:Boolean);//004C76A8
    procedure sub_004C76B8;//004C76B8
    function GetFileFormats:TFileFormatsList;//004C8080
    function GetClipboardFormats:TClipboardFormats;//004C80A0
    constructor Create();//004C80C0
    destructor Destroy();//004C8100
    procedure AssignTo(Dest:Classes.TPersistent);//004C812C
    procedure ForceType(GraphicType:TGraphicClass);//004C8164
    function GetBitmap:TBitmap;//004C81C8
    function GetIcon:TIcon;//004C81E0
    function GetMetafile:TMetafile;//004C81F8
    procedure SetGraphic(Value:TGraphic);//004C8228
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);//004C82D4
    procedure SaveToClipboardFormat(var AFormat:Word; var AData:NativeUInt; var APalette:HPALETTE);//004C8398
    function SupportsClipboardFormat(AFormat:Word):Boolean;//004C83BC
    //procedure sub_004C83D4(?:?; ?:?);//004C83D4
    //procedure sub_004C83EC(?:?; ?:?);//004C83EC
    procedure Assign(Source:TPersistent);//004C8404
    procedure Changed(Sender:TObject);//004C8460
    procedure Progress(Sender:TObject; Stage:TProgressStage; PercentDone:Byte; RedrawNow:Boolean; const R:Windows.TRect; const Msg:UnicodeString);//004C8484
    procedure ReadData(Stream:Classes.TStream);//004C84B0
    procedure WriteData(Stream:Classes.TStream);//004C8624
    function DoWrite:Boolean;//004C86E0
    procedure DefineProperties(Filer:Classes.TFiler);//004C8754
    //function sub_004C87A8(?:TPicture):?;//004C87A8
    //function sub_004C87C0(?:TPicture):?;//004C87C0
    destructor Destroy();//004C87D8
    procedure FreeHandle;//004C8814
    constructor Create();//004C8818
    destructor Destroy();//004C8860
    procedure Assign(Source:TPersistent);//004C888C
    procedure Draw(ACanvas:TCanvas; const Rect:Windows.TRect);//004C8920
    function GetAuthor:UnicodeString;//004C89B0
    function GetDesc:UnicodeString;//004C8A14
    function GetEmpty:Boolean;//004C8A94
    function GetHandle:THandle;//004C8A9C
    function GetHeight:Integer;//004C8AAC
    function GetInch:Word;//004C8B10
    function GetMMHeight:Integer;//004C8B20
    function GetMMWidth:Integer;//004C8B38
    function GetPalette:HPALETTE;//004C8B50
    function GetWidth:Integer;//004C8BDC
    procedure LoadFromStream(Stream:TStream);//004C8C40
    procedure NewImage;//004C8C94
    procedure ReadData(Stream:Classes.TStream);//004C8CBC
    procedure ReadEMFStream(Stream:Classes.TStream);//004C8D28
    procedure ReadWMFStream(Stream:Classes.TStream; Length:LongInt);//004C8E04
    procedure SaveToFile(Filename:string);//004C8F84
    procedure SaveToStream(Stream:TStream);//004C9054
    procedure SetHandle(Value:Windows.THandle);//004C9070
    procedure SetHeight(Value:Integer);//004C9100
    procedure SetInch(Value:Word);//004C9174
    procedure SetMMHeight(Value:Integer);//004C91AC
    procedure SetMMWidth(Value:Integer);//004C91E8
    procedure SetTransparent(Value:Boolean);//004C9224
    procedure SetWidth(Value:Integer);//004C9228
    function TestEMF(Stream:Classes.TStream):Boolean;//004C929C
    procedure UniqueImage;//004C92FC
    //procedure sub_004C9380(?:?);//004C9380
    procedure WriteEMFStream(Stream:Classes.TStream);//004C9404
    procedure WriteWMFStream(Stream:Classes.TStream);//004C9490
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);//004C95D8
    procedure SaveToClipboardFormat(var AFormat:Word; var AData:NativeUInt; var APalette:HPALETTE);//004C965C
    procedure SetSize(AWidth:Integer; AHeight:Integer);//004C9690
    procedure sub_004C9934;//004C9934
    procedure DeselectBitmap(AHandle:Windows.HBITMAP);//004C99E0
    procedure CreateHandle;//004C9B6C
    destructor Destroy();//004C9C58
    procedure Reference;//004C9C7C
    procedure Release;//004C9C80
    destructor Destroy();//004C9CA0
    procedure FreeHandle;//004C9D0C
    procedure UpdateDIBColorTable(DIBHandle:Windows.HBITMAP; Pal:Windows.HPALETTE; const DIB:Windows.TDIBSection);//004C9D58
    procedure FixupBitFields(var DIB:Windows.TDIBSection);//004C9E14
    function CopyBitmap(Handle:Windows.HBITMAP; OldPalette:Windows.HPALETTE; NewPalette:Windows.HPALETTE; var DIB:Windows.TDIBSection; Canvas:TCanvas):HBITMAP;//004C9E60
    function CopyPalette(Palette:Windows.HPALETTE):HPALETTE;//004CA4C4
    function CopyBitmapAsMask(Handle:Windows.HBITMAP; Palette:Windows.HPALETTE; TransparentColor:UITypes.TColorRef):HBITMAP;//004CA528
    constructor Create();//004CA734
    destructor Destroy();//004CA7A8
    procedure Assign(Source:TPersistent);//004CA7E4
    procedure CopyImage(AHandle:Windows.HBITMAP; APalette:Windows.HPALETTE; DIB:Windows.TDIBSection);//004CA8F8
    procedure Changing(Sender:TObject);//004CA9B8
    procedure Changed(Sender:TObject);//004CA9EC
    procedure Dormant;//004CA9F8
    procedure Draw(ACanvas:TCanvas; const Rect:Windows.TRect);//004CAA80
    procedure DrawTransparent(ACanvas:TCanvas; const Rect:Windows.TRect; Opacity:Byte);//004CAD2C
    procedure FreeImage;//004CAFE8
    function GetEmpty:Boolean;//004CB04C
    function GetCanvas:TCanvas;//004CB068
    function GetHandle:HBITMAP;//004CB0B0
    function GetHandleType:TBitmapHandleType;//004CB0D4
    function GetHeight:Integer;//004CB100
    function GetMaskHandle:HBITMAP;//004CB110
    function GetMonochrome:Boolean;//004CB124
    function GetPalette:HPALETTE;//004CB140
    function GetPixelFormat:TPixelFormat;//004CB154
    function GetScanline(Row:Integer):Pointer;//004CB1D8
    function GetSupportsPartialTransparency:Boolean;//004CB23C
    procedure PreMultiplyAlpha;//004CB258
    procedure UnPreMultiplyAlpha;//004CB2FC
    procedure SetAlphaFormat(Value:TAlphaFormat);//004CB3BC
    function GetTransparentColor:TColor;//004CB418
    //function GetWidth:?;//004CB460
    procedure DIBNeeded;//004CB468
    procedure FreeContext;//004CB4DC
    procedure HandleNeeded;//004CB4EC
    procedure Mask(TransparentColor:TColor);//004CB58C
    procedure MaskHandleNeeded;//004CB670
    procedure PaletteNeeded;//004CB6D0
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);//004CB788
    procedure LoadFromResourceName(Instance:NativeUInt; ResName:string);//004CB80C
    procedure LoadFromStream(Stream:TStream);//004CB87C
    procedure NewImage(NewHandle:Windows.HBITMAP; NewPalette:Windows.HPALETTE; const NewDIB:Windows.TDIBSection; OS2Format:Boolean; RLEStream:Classes.TStream);//004CB8A0
    procedure ReadData(Stream:Classes.TStream);//004CB9A0
    procedure ReadDIB(Stream:Classes.TStream; ImageSize:LongWord; bmf:Windows.PBitmapFileHeader);//004CB9C8
    procedure ReadStream(Stream:Classes.TStream; Size:LongInt);//004CBF7C
    procedure SetHandle(Value:Windows.HBITMAP);//004CBFEC
    procedure SetHandleType(Value:TBitmapHandleType);//004CC0B0
    //procedure SetHeight(?:?);//004CC1EC
    procedure SetMaskHandle(Value:Windows.HBITMAP);//004CC208
    procedure SetMonochrome(Value:Boolean);//004CC21C
    procedure SetPalette(Value:Windows.HPALETTE);//004CC298
    procedure SetPixelFormat(Value:TPixelFormat);//004CC36C
    procedure SetTransparentColor(Value:UITypes.TColor);//004CC4D4
    procedure SetTransparentMode(Value:TTransparentMode);//004CC524
    //procedure SetWidth(?:?);//004CC550
    procedure WriteData(Stream:Classes.TStream);//004CC56C
    procedure WriteStream(Stream:Classes.TStream; WriteSize:Boolean);//004CC574
    procedure SaveToStream(Stream:TStream);//004CC850
    procedure SaveToClipboardFormat(var Format:Word; var Data:NativeUInt; var APalette:HPALETTE);//004CC858
    procedure SetSize(AWidth:Integer; AHeight:Integer);//004CC8F8
    function TransparentColorStored:Boolean;//004CC958
    destructor Destroy();//004CC960
    procedure FreeHandle;//004CC98C
    function HasAlpha(Buf:Windows.PRGBQuad; CX:Integer; CY:Integer):Boolean;//004CC9A4
    procedure AssignTo(Dest:TPersistent);//004CC9DC
    constructor Create();//004CCC9C
    destructor Destroy();//004CCCF0
    procedure Assign(Source:TPersistent);//004CCD1C
    procedure Draw(ACanvas:TCanvas; const Rect:Windows.TRect);//004CCD78
    function GetEmpty:Boolean;//004CCDBC
    function GetHandle:HICON;//004CCDD4
    function GetHeight:Integer;//004CCDE8
    function GetWidth:Integer;//004CCE14
    procedure HandleNeeded;//004CCE40
    procedure ImageNeeded;//004CCEB8
    procedure LoadFromStream(Stream:TStream);//004CCF6C
    procedure NewImage(NewHandle:Windows.HICON; NewImage:Classes.TMemoryStream);//004CD02C
    procedure SetHandle(Value:Windows.HICON);//004CD0A0
    //procedure SetHeight(?:?);//004CD134
    procedure SetSize(AWidth:Integer; AHeight:Integer);//004CD14C
    procedure SetTransparent(Value:Boolean);//004CD16C
    //procedure SetWidth(?:?);//004CD170
    procedure SaveToStream(Stream:TStream);//004CD188
    procedure LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);//004CD1B0
    procedure SaveToClipboardFormat(var Format:Word; var Data:NativeUInt; var APalette:HPALETTE);//004CD1C4
    procedure AssignTo(Dest:Classes.TPersistent);//004CD364
    procedure sub_004CD4DC(?:TWICImage);//004CD4DC
    procedure Draw(ACanvas:TCanvas; const Rect:Windows.TRect);//004CD630
    function GetEmpty:Boolean;//004CD65C
    //function GetHeight:?;//004CD678
    //function GetWidth:?;//004CD67C
    //procedure sub_004CD680(?:?);//004CD680
    //procedure sub_004CDABC(?:TWICImage; ?:?);//004CDABC
    //procedure sub_004CDB70(?:TWICImage; ?:?);//004CDB70
    procedure InvalidBitmap;//004CDC78
    procedure InvalidIcon;//004CDC84
    procedure InitScreenLogPixels;//004CDE90
    function GetDefFontCharSet:TFontCharset;//004CDEF4
    procedure InitDefFontData;//004CDF38
    function AllocPatternBitmap(BkColor:UITypes.TColor; FgColor:UITypes.TColor):TBitmap;//004CE660
    function &op_Implicit:Cardinal;//004CE698
    function &op_Implicit:TTextFormatFlags;//004CE6C8
    function &op_Implicit:TTextFormat;//004CE6DC
    function &op_Implicit:TTextFormatFlags;//004CE6E8

implementation

//004C3090
procedure InternalDeletePalette(Pal:Windows.HPALETTE);
begin
{*
 004C3090    test        eax,eax
>004C3092    je          004C30A2
 004C3094    cmp         eax,dword ptr ds:[7CA44C];gvar_007CA44C
>004C309A    je          004C30A2
 004C309C    push        eax
 004C309D    call        gdi32.DeleteObject
 004C30A2    ret
*}
end;

//004C3460
function GetHashCode(const Buffer:void ; Count:Integer):Word;
begin
{*
 004C3460    mov         ecx,edx
 004C3462    mov         edx,eax
 004C3464    xor         eax,eax
 004C3466    rol         ax,5
 004C346A    xor         al,byte ptr [edx]
 004C346C    inc         edx
 004C346D    dec         ecx
>004C346E    jne         004C3466
 004C3470    ret
*}
end;

//004C3474
constructor TResourceManager.Create;
begin
{*
 004C3474    push        ebx
 004C3475    push        esi
 004C3476    test        dl,dl
>004C3478    je          004C3482
 004C347A    add         esp,0FFFFFFF0
 004C347D    call        @ClassCreate
 004C3482    mov         ebx,edx
 004C3484    mov         esi,eax
 004C3486    mov         word ptr [esi+20],cx
 004C348A    lea         eax,[esi+8]
 004C348D    push        eax
 004C348E    call        kernel32.InitializeCriticalSection
 004C3493    mov         eax,esi
 004C3495    test        bl,bl
>004C3497    je          004C34A8
 004C3499    call        @AfterConstruction
 004C349E    pop         dword ptr fs:[0]
 004C34A5    add         esp,0C
 004C34A8    mov         eax,esi
 004C34AA    pop         esi
 004C34AB    pop         ebx
 004C34AC    ret
*}
end;

//004C34B0
destructor TResourceManager.Destroy();
begin
{*
 004C34B0    push        ebx
 004C34B1    push        esi
 004C34B2    call        @BeforeDestruction
 004C34B7    mov         ebx,edx
 004C34B9    mov         esi,eax
 004C34BB    lea         eax,[esi+8]
 004C34BE    push        eax
 004C34BF    call        kernel32.DeleteCriticalSection
 004C34C4    test        bl,bl
>004C34C6    jle         004C34CF
 004C34C8    mov         eax,esi
 004C34CA    call        @ClassDestroy
 004C34CF    pop         esi
 004C34D0    pop         ebx
 004C34D1    ret
*}
end;

//004C34D4
{*function TResourceManager.AllocResource(ResData:?):PResource;
begin
 004C34D4    push        ebp
 004C34D5    mov         ebp,esp
 004C34D7    add         esp,0FFFFFFF0
 004C34DA    push        ebx
 004C34DB    push        esi
 004C34DC    push        edi
 004C34DD    mov         ebx,edx
 004C34DF    mov         dword ptr [ebp-4],eax
 004C34E2    mov         eax,dword ptr [ebp-4]
 004C34E5    movzx       edx,word ptr [eax+20]
 004C34E9    mov         eax,ebx
 004C34EB    call        GetHashCode
 004C34F0    mov         esi,eax
 004C34F2    mov         eax,dword ptr [ebp-4]
 004C34F5    mov         dword ptr [ebp-0C],eax
 004C34F8    mov         eax,dword ptr [ebp-0C]
 004C34FB    add         eax,8
 004C34FE    push        eax
 004C34FF    call        kernel32.EnterCriticalSection
 004C3504    xor         edx,edx
 004C3506    push        ebp
 004C3507    push        4C35D0
 004C350C    push        dword ptr fs:[edx]
 004C350F    mov         dword ptr fs:[edx],esp
 004C3512    call        TThread.GetCurrentThread
 004C3517    mov         edi,dword ptr [eax+4]
 004C351A    mov         eax,dword ptr [ebp-4]
 004C351D    mov         eax,dword ptr [eax+4]
 004C3520    mov         dword ptr [ebp-8],eax
>004C3523    jmp         004C352D
 004C3525    mov         eax,dword ptr [ebp-8]
 004C3528    mov         eax,dword ptr [eax]
 004C352A    mov         dword ptr [ebp-8],eax
 004C352D    cmp         dword ptr [ebp-8],0
>004C3531    je          004C355C
 004C3533    mov         eax,dword ptr [ebp-8]
 004C3536    cmp         edi,dword ptr [eax+10]
>004C3539    jne         004C3525
 004C353B    mov         eax,dword ptr [ebp-8]
 004C353E    cmp         si,word ptr [eax+0C]
>004C3542    jne         004C3525
 004C3544    mov         eax,dword ptr [ebp-4]
 004C3547    movzx       ecx,word ptr [eax+20]
 004C354B    mov         edx,ebx
 004C354D    mov         eax,dword ptr [ebp-8]
 004C3550    add         eax,14
 004C3553    call        CompareMem
 004C3558    test        al,al
>004C355A    je          004C3525
 004C355C    cmp         dword ptr [ebp-8],0
>004C3560    jne         004C35AA
 004C3562    mov         eax,dword ptr [ebp-4]
 004C3565    movzx       eax,word ptr [eax+20]
 004C3569    add         eax,14
 004C356C    call        @GetMem
 004C3571    mov         dword ptr [ebp-8],eax
 004C3574    mov         eax,dword ptr [ebp-8]
 004C3577    mov         edx,dword ptr [ebp-4]
 004C357A    mov         edx,dword ptr [edx+4]
 004C357D    mov         dword ptr [eax],edx
 004C357F    xor         edx,edx
 004C3581    mov         dword ptr [eax+4],edx
 004C3584    mov         edx,dword ptr [ebx]
 004C3586    mov         dword ptr [eax+8],edx
 004C3589    mov         word ptr [eax+0C],si
 004C358D    mov         dword ptr [eax+10],edi
 004C3590    mov         edx,dword ptr [ebp-4]
 004C3593    movzx       ecx,word ptr [edx+20]
 004C3597    lea         edx,[eax+14]
 004C359A    mov         eax,ebx
 004C359C    call        Move
 004C35A1    mov         eax,dword ptr [ebp-4]
 004C35A4    mov         edx,dword ptr [ebp-8]
 004C35A7    mov         dword ptr [eax+4],edx
 004C35AA    mov         eax,dword ptr [ebp-8]
 004C35AD    inc         dword ptr [eax+4]
 004C35B0    xor         eax,eax
 004C35B2    pop         edx
 004C35B3    pop         ecx
 004C35B4    pop         ecx
 004C35B5    mov         dword ptr fs:[eax],edx
 004C35B8    push        4C35D7
 004C35BD    mov         eax,dword ptr [ebp-4]
 004C35C0    mov         dword ptr [ebp-10],eax
 004C35C3    mov         eax,dword ptr [ebp-10]
 004C35C6    add         eax,8
 004C35C9    push        eax
 004C35CA    call        kernel32.LeaveCriticalSection
 004C35CF    ret
>004C35D0    jmp         @HandleFinally
>004C35D5    jmp         004C35BD
 004C35D7    mov         eax,dword ptr [ebp-8]
 004C35DA    pop         edi
 004C35DB    pop         esi
 004C35DC    pop         ebx
 004C35DD    mov         esp,ebp
 004C35DF    pop         ebp
 004C35E0    ret
end;*}

//004C35E4
procedure TResourceManager.FreeResource(Resource:PResource);
begin
{*
 004C35E4    push        ebp
 004C35E5    mov         ebp,esp
 004C35E7    add         esp,0FFFFFFE8
 004C35EA    mov         dword ptr [ebp-8],edx
 004C35ED    mov         dword ptr [ebp-4],eax
 004C35F0    cmp         dword ptr [ebp-8],0
>004C35F4    je          004C36AE
 004C35FA    mov         eax,dword ptr [ebp-8]
 004C35FD    mov         dword ptr [ebp-10],eax
 004C3600    mov         eax,dword ptr [ebp-4]
 004C3603    mov         dword ptr [ebp-14],eax
 004C3606    mov         eax,dword ptr [ebp-14]
 004C3609    add         eax,8
 004C360C    push        eax
 004C360D    call        kernel32.EnterCriticalSection
 004C3612    xor         ecx,ecx
 004C3614    push        ebp
 004C3615    push        4C367F
 004C361A    push        dword ptr fs:[ecx]
 004C361D    mov         dword ptr fs:[ecx],esp
 004C3620    mov         eax,dword ptr [ebp-10]
 004C3623    dec         dword ptr [eax+4]
 004C3626    mov         eax,dword ptr [ebp-10]
 004C3629    cmp         dword ptr [eax+4],0
 004C362D    sete        byte ptr [ebp-9]
 004C3631    cmp         byte ptr [ebp-9],0
>004C3635    je          004C365F
 004C3637    mov         eax,dword ptr [ebp-4]
 004C363A    mov         eax,dword ptr [eax+4]
 004C363D    cmp         eax,dword ptr [ebp-8]
>004C3640    jne         004C3651
 004C3642    mov         eax,dword ptr [ebp-8]
 004C3645    mov         eax,dword ptr [eax]
 004C3647    mov         edx,dword ptr [ebp-4]
 004C364A    mov         dword ptr [edx+4],eax
>004C364D    jmp         004C365F
 004C364F    mov         eax,edx
 004C3651    mov         edx,dword ptr [eax]
 004C3653    cmp         edx,dword ptr [ebp-8]
>004C3656    jne         004C364F
 004C3658    mov         edx,dword ptr [ebp-8]
 004C365B    mov         edx,dword ptr [edx]
 004C365D    mov         dword ptr [eax],edx
 004C365F    xor         eax,eax
 004C3661    pop         edx
 004C3662    pop         ecx
 004C3663    pop         ecx
 004C3664    mov         dword ptr fs:[eax],edx
 004C3667    push        4C3686
 004C366C    mov         eax,dword ptr [ebp-4]
 004C366F    mov         dword ptr [ebp-18],eax
 004C3672    mov         eax,dword ptr [ebp-18]
 004C3675    add         eax,8
 004C3678    push        eax
 004C3679    call        kernel32.LeaveCriticalSection
 004C367E    ret
>004C367F    jmp         @HandleFinally
>004C3684    jmp         004C366C
 004C3686    cmp         byte ptr [ebp-9],0
>004C368A    je          004C36AE
 004C368C    mov         eax,dword ptr [ebp-10]
 004C368F    mov         eax,dword ptr [eax+8]
 004C3692    test        eax,eax
>004C3694    je          004C369C
 004C3696    push        eax
 004C3697    call        gdi32.DeleteObject
 004C369C    mov         edx,dword ptr [ebp-8]
 004C369F    mov         eax,dword ptr [ebp-4]
 004C36A2    mov         ecx,dword ptr [eax]
 004C36A4    call        dword ptr [ecx]
 004C36A6    mov         eax,dword ptr [ebp-8]
 004C36A9    call        @FreeMem
 004C36AE    mov         esp,ebp
 004C36B0    pop         ebp
 004C36B1    ret
*}
end;

//004C36B4
{*procedure TResourceManager.ChangeResource(GraphicsObject:TGraphicsObject; ResData:?);
begin
 004C36B4    push        ebp
 004C36B5    mov         ebp,esp
 004C36B7    add         esp,0FFFFFFF0
 004C36BA    push        ebx
 004C36BB    push        esi
 004C36BC    push        edi
 004C36BD    mov         dword ptr [ebp-8],ecx
 004C36C0    mov         ebx,edx
 004C36C2    mov         dword ptr [ebp-4],eax
 004C36C5    mov         eax,dword ptr [ebp-4]
 004C36C8    mov         dword ptr [ebp-0C],eax
 004C36CB    mov         eax,dword ptr [ebp-0C]
 004C36CE    add         eax,8
 004C36D1    push        eax
 004C36D2    call        kernel32.EnterCriticalSection
 004C36D7    xor         eax,eax
 004C36D9    push        ebp
 004C36DA    push        4C372D
 004C36DF    push        dword ptr fs:[eax]
 004C36E2    mov         dword ptr fs:[eax],esp
 004C36E5    mov         esi,dword ptr [ebx+10]
 004C36E8    mov         edx,dword ptr [ebp-8]
 004C36EB    mov         eax,dword ptr [ebp-4]
 004C36EE    call        TResourceManager.AllocResource
 004C36F3    mov         edi,eax
 004C36F5    mov         dword ptr [ebx+10],edi
 004C36F8    cmp         esi,edi
>004C36FA    je          004C3703
 004C36FC    mov         eax,ebx
 004C36FE    mov         edx,dword ptr [eax]
 004C3700    call        dword ptr [edx+0C]
 004C3703    mov         edx,esi
 004C3705    mov         eax,dword ptr [ebp-4]
 004C3708    call        TResourceManager.FreeResource
 004C370D    xor         eax,eax
 004C370F    pop         edx
 004C3710    pop         ecx
 004C3711    pop         ecx
 004C3712    mov         dword ptr fs:[eax],edx
 004C3715    push        4C3734
 004C371A    mov         eax,dword ptr [ebp-4]
 004C371D    mov         dword ptr [ebp-10],eax
 004C3720    mov         eax,dword ptr [ebp-10]
 004C3723    add         eax,8
 004C3726    push        eax
 004C3727    call        kernel32.LeaveCriticalSection
 004C372C    ret
>004C372D    jmp         @HandleFinally
>004C3732    jmp         004C371A
 004C3734    pop         edi
 004C3735    pop         esi
 004C3736    pop         ebx
 004C3737    mov         esp,ebp
 004C3739    pop         ebp
 004C373A    ret
end;*}

//004C373C
procedure sub_004C373C;
begin
{*
 004C373C    ret
*}
end;

//004C3740
procedure TResourceManager.AssignResource(GraphicsObject:TGraphicsObject; AResource:PResource);
begin
{*
 004C3740    push        ebp
 004C3741    mov         ebp,esp
 004C3743    add         esp,0FFFFFFF4
 004C3746    push        ebx
 004C3747    push        esi
 004C3748    push        edi
 004C3749    mov         esi,ecx
 004C374B    mov         edi,edx
 004C374D    mov         dword ptr [ebp-4],eax
 004C3750    mov         eax,dword ptr [ebp-4]
 004C3753    mov         dword ptr [ebp-8],eax
 004C3756    mov         eax,dword ptr [ebp-8]
 004C3759    add         eax,8
 004C375C    push        eax
 004C375D    call        kernel32.EnterCriticalSection
 004C3762    xor         eax,eax
 004C3764    push        ebp
 004C3765    push        4C37C5
 004C376A    push        dword ptr fs:[eax]
 004C376D    mov         dword ptr fs:[eax],esp
 004C3770    mov         ebx,dword ptr [edi+10]
 004C3773    cmp         esi,ebx
>004C3775    je          004C37A5
 004C3777    mov         eax,dword ptr [ebx+10]
 004C377A    cmp         eax,dword ptr [esi+10]
>004C377D    jne         004C3798
 004C377F    inc         dword ptr [esi+4]
 004C3782    mov         dword ptr [edi+10],esi
 004C3785    mov         eax,edi
 004C3787    mov         edx,dword ptr [eax]
 004C3789    call        dword ptr [edx+0C]
 004C378C    mov         edx,ebx
 004C378E    mov         eax,dword ptr [ebp-4]
 004C3791    call        TResourceManager.FreeResource
>004C3796    jmp         004C37A5
 004C3798    lea         ecx,[esi+14]
 004C379B    mov         edx,edi
 004C379D    mov         eax,dword ptr [ebp-4]
 004C37A0    call        TResourceManager.ChangeResource
 004C37A5    xor         eax,eax
 004C37A7    pop         edx
 004C37A8    pop         ecx
 004C37A9    pop         ecx
 004C37AA    mov         dword ptr fs:[eax],edx
 004C37AD    push        4C37CC
 004C37B2    mov         eax,dword ptr [ebp-4]
 004C37B5    mov         dword ptr [ebp-0C],eax
 004C37B8    mov         eax,dword ptr [ebp-0C]
 004C37BB    add         eax,8
 004C37BE    push        eax
 004C37BF    call        kernel32.LeaveCriticalSection
 004C37C4    ret
>004C37C5    jmp         @HandleFinally
>004C37CA    jmp         004C37B2
 004C37CC    pop         edi
 004C37CD    pop         esi
 004C37CE    pop         ebx
 004C37CF    mov         esp,ebp
 004C37D1    pop         ebp
 004C37D2    ret
*}
end;

//004C37D4
procedure TBrushResourceManager.FreeObjects(Resource:PResource);
begin
{*
 004C37D4    push        ecx
 004C37D5    cmp         byte ptr [edx+21],0
>004C37D9    je          004C37F2
 004C37DB    lea         eax,[edx+1C]
 004C37DE    mov         dword ptr [esp],eax
 004C37E1    mov         eax,dword ptr [esp]
 004C37E4    mov         eax,dword ptr [eax]
 004C37E6    mov         edx,dword ptr [esp]
 004C37E9    xor         ecx,ecx
 004C37EB    mov         dword ptr [edx],ecx
 004C37ED    call        TObject.Free
 004C37F2    pop         edx
 004C37F3    ret
*}
end;

//004C37F4
procedure ClearColor(ResMan:TResourceManager);
begin
{*
 004C37F4    push        ebp
 004C37F5    mov         ebp,esp
 004C37F7    add         esp,0FFFFFFF4
 004C37FA    push        ebx
 004C37FB    push        esi
 004C37FC    push        edi
 004C37FD    mov         dword ptr [ebp-4],eax
 004C3800    mov         eax,dword ptr [ebp-4]
 004C3803    mov         dword ptr [ebp-8],eax
 004C3806    mov         eax,dword ptr [ebp-8]
 004C3809    add         eax,8
 004C380C    push        eax
 004C380D    call        kernel32.EnterCriticalSection
 004C3812    xor         eax,eax
 004C3814    push        ebp
 004C3815    push        4C386A
 004C381A    push        dword ptr fs:[eax]
 004C381D    mov         dword ptr fs:[eax],esp
 004C3820    mov         eax,dword ptr [ebp-4]
 004C3823    mov         ebx,dword ptr [eax+4]
 004C3826    test        ebx,ebx
>004C3828    je          004C384A
 004C382A    mov         esi,ebx
 004C382C    mov         edi,dword ptr [esi+8]
 004C382F    test        edi,edi
>004C3831    je          004C3844
 004C3833    cmp         dword ptr [esi+18],0
>004C3837    jge         004C3844
 004C3839    push        edi
 004C383A    call        gdi32.DeleteObject
 004C383F    xor         eax,eax
 004C3841    mov         dword ptr [esi+8],eax
 004C3844    mov         ebx,dword ptr [ebx]
 004C3846    test        ebx,ebx
>004C3848    jne         004C382A
 004C384A    xor         eax,eax
 004C384C    pop         edx
 004C384D    pop         ecx
 004C384E    pop         ecx
 004C384F    mov         dword ptr fs:[eax],edx
 004C3852    push        4C3871
 004C3857    mov         eax,dword ptr [ebp-4]
 004C385A    mov         dword ptr [ebp-0C],eax
 004C385D    mov         eax,dword ptr [ebp-0C]
 004C3860    add         eax,8
 004C3863    push        eax
 004C3864    call        kernel32.LeaveCriticalSection
 004C3869    ret
>004C386A    jmp         @HandleFinally
>004C386F    jmp         004C3857
 004C3871    pop         edi
 004C3872    pop         esi
 004C3873    pop         ebx
 004C3874    mov         esp,ebp
 004C3876    pop         ebp
 004C3877    ret
*}
end;

//004C3878
procedure PaletteChanged;
begin
{*
 004C3878    push        ebp
 004C3879    mov         ebp,esp
 004C387B    add         esp,0FFFFFFF8
 004C387E    push        ebx
 004C387F    push        esi
 004C3880    xor         eax,eax
 004C3882    mov         dword ptr [ebp-4],eax
 004C3885    mov         eax,[007CA4A4];gvar_007CA4A4
 004C388A    call        TThreadList.LockList
 004C388F    mov         dword ptr [ebp-8],eax
 004C3892    xor         eax,eax
 004C3894    push        ebp
 004C3895    push        4C3918
 004C389A    push        dword ptr fs:[eax]
 004C389D    mov         dword ptr fs:[eax],esp
>004C38A0    jmp         004C38C0
 004C38A2    mov         edx,dword ptr [ebp-4]
 004C38A5    mov         eax,dword ptr [ebp-8]
 004C38A8    call        TList.Get
 004C38AD    mov         ebx,eax
 004C38AF    mov         eax,ebx
 004C38B1    call        TCustomCanvas.Lock
 004C38B6    inc         dword ptr [ebp-4]
 004C38B9    mov         eax,ebx
 004C38BB    call        TCanvas.DeselectHandles
 004C38C0    mov         eax,dword ptr [ebp-8]
 004C38C3    mov         eax,dword ptr [eax+8]
 004C38C6    cmp         eax,dword ptr [ebp-4]
>004C38C9    jg          004C38A2
 004C38CB    mov         eax,[007CA49C];gvar_007CA49C
 004C38D0    call        ClearColor
 004C38D5    mov         eax,[007CA4A0];gvar_007CA4A0
 004C38DA    call        ClearColor
 004C38DF    xor         eax,eax
 004C38E1    pop         edx
 004C38E2    pop         ecx
 004C38E3    pop         ecx
 004C38E4    mov         dword ptr fs:[eax],edx
 004C38E7    push        4C391F
 004C38EC    mov         ebx,dword ptr [ebp-4]
 004C38EF    dec         ebx
 004C38F0    test        ebx,ebx
>004C38F2    jl          004C390A
 004C38F4    inc         ebx
 004C38F5    xor         esi,esi
 004C38F7    mov         edx,esi
 004C38F9    mov         eax,dword ptr [ebp-8]
 004C38FC    call        TList.Get
 004C3901    call        TCustomCanvas.Unlock
 004C3906    inc         esi
 004C3907    dec         ebx
>004C3908    jne         004C38F7
 004C390A    mov         eax,[007CA4A4];gvar_007CA4A4
 004C390F    mov         eax,dword ptr [eax+8]
 004C3912    call        TMonitor.Exit
 004C3917    ret
>004C3918    jmp         @HandleFinally
>004C391D    jmp         004C38EC
 004C391F    pop         esi
 004C3920    pop         ebx
 004C3921    pop         ecx
 004C3922    pop         ecx
 004C3923    pop         ebp
 004C3924    ret
*}
end;

//004C3928
function ColorToRGB(Color:UITypes.TColor):LongInt;
begin
{*
 004C3928    test        eax,eax
>004C392A    jge         004C3937
 004C392C    and         eax,0FF
 004C3931    push        eax
 004C3932    call        user32.GetSysColor
 004C3937    ret
*}
end;

//004C3938
procedure TCustomCanvas.Changed;
begin
{*
 004C3938    push        ebx
 004C3939    cmp         word ptr [eax+0A],0
>004C393E    je          004C394A
 004C3940    mov         ebx,eax
 004C3942    mov         edx,eax
 004C3944    mov         eax,dword ptr [ebx+0C]
 004C3947    call        dword ptr [ebx+8]
 004C394A    pop         ebx
 004C394B    ret
*}
end;

//004C394C
procedure TGraphicsObject.Lock;
begin
{*
 004C394C    mov         edx,dword ptr [eax+14]
 004C394F    test        edx,edx
>004C3951    je          004C3959
 004C3953    push        edx
 004C3954    call        kernel32.EnterCriticalSection
 004C3959    ret
*}
end;

//004C395C
procedure TGraphicsObject.Unlock;
begin
{*
 004C395C    mov         edx,dword ptr [eax+14]
 004C395F    test        edx,edx
>004C3961    je          004C3969
 004C3963    push        edx
 004C3964    call        kernel32.LeaveCriticalSection
 004C3969    ret
*}
end;

//004C3C78
function CharsetToIdent(Charset:LongInt; var Ident:UnicodeString):Boolean;
begin
{*
 004C3C78    push        11
 004C3C7A    mov         ecx,7A0F48
 004C3C7F    call        IntToIdent
 004C3C84    ret
*}
end;

//004C3C88
function IdentToCharset(const Ident:UnicodeString; var Charset:LongInt):Boolean;
begin
{*
 004C3C88    push        11
 004C3C8A    mov         ecx,7A0F48
 004C3C8F    call        IdentToInt
 004C3C94    ret
*}
end;

//004C3C98
function GetFontData(Font:Windows.HFONT):TFontData;
begin
{*
 004C3C98    push        ebp
 004C3C99    mov         ebp,esp
 004C3C9B    add         esp,0FFFFFEA0
 004C3CA1    push        ebx
 004C3CA2    push        esi
 004C3CA3    push        edi
 004C3CA4    xor         ecx,ecx
 004C3CA6    mov         dword ptr [ebp-160],ecx
 004C3CAC    mov         ebx,edx
 004C3CAE    mov         esi,eax
 004C3CB0    xor         eax,eax
 004C3CB2    push        ebp
 004C3CB3    push        4C3D95
 004C3CB8    push        dword ptr fs:[eax]
 004C3CBB    mov         dword ptr fs:[eax],esp
 004C3CBE    push        esi
 004C3CBF    mov         edi,ebx
 004C3CC1    mov         esi,7A0EB4
 004C3CC6    mov         ecx,24
 004C3CCB    rep movs    dword ptr [edi],dword ptr [esi]
 004C3CCD    pop         esi
 004C3CCE    test        esi,esi
>004C3CD0    je          004C3D7C
 004C3CD6    lea         eax,[ebp-5C]
 004C3CD9    push        eax
 004C3CDA    push        5C
 004C3CDC    push        esi
 004C3CDD    call        gdi32.GetObjectW
 004C3CE2    test        eax,eax
>004C3CE4    je          004C3D7C
 004C3CEA    mov         eax,dword ptr [ebp-5C]
 004C3CED    mov         dword ptr [ebx+4],eax
 004C3CF0    cmp         dword ptr [ebp-4C],2BC
>004C3CF7    jl          004C3CFD
 004C3CF9    or          byte ptr [ebx+0D],1
 004C3CFD    cmp         byte ptr [ebp-48],1
>004C3D01    jne         004C3D07
 004C3D03    or          byte ptr [ebx+0D],2
 004C3D07    cmp         byte ptr [ebp-47],1
>004C3D0B    jne         004C3D11
 004C3D0D    or          byte ptr [ebx+0D],4
 004C3D11    cmp         byte ptr [ebp-46],1
>004C3D15    jne         004C3D1B
 004C3D17    or          byte ptr [ebx+0D],8
 004C3D1B    movzx       eax,byte ptr [ebp-45]
 004C3D1F    mov         byte ptr [ebx+0E],al
 004C3D22    lea         eax,[ebp-160]
 004C3D28    lea         edx,[ebp-40]
 004C3D2B    mov         ecx,20
 004C3D30    call        @UStrFromWArray
 004C3D35    mov         eax,dword ptr [ebp-160]
 004C3D3B    lea         edx,[ebp-15C]
 004C3D41    call        UTF8EncodeToShortString
 004C3D46    lea         edx,[ebp-15C]
 004C3D4C    lea         eax,[ebx+0F]
 004C3D4F    mov         cl,7C
 004C3D51    call        @PStrNCpy
 004C3D56    movzx       eax,byte ptr [ebp-41]
 004C3D5A    and         al,0F
 004C3D5C    dec         al
>004C3D5E    je          004C3D6A
 004C3D60    dec         al
>004C3D62    jne         004C3D70
 004C3D64    mov         byte ptr [ebx+0C],1
>004C3D68    jmp         004C3D74
 004C3D6A    mov         byte ptr [ebx+0C],2
>004C3D6E    jmp         004C3D74
 004C3D70    mov         byte ptr [ebx+0C],0
 004C3D74    mov         dword ptr [ebx],esi
 004C3D76    mov         eax,dword ptr [ebp-50]
 004C3D79    mov         dword ptr [ebx+8],eax
 004C3D7C    xor         eax,eax
 004C3D7E    pop         edx
 004C3D7F    pop         ecx
 004C3D80    pop         ecx
 004C3D81    mov         dword ptr fs:[eax],edx
 004C3D84    push        4C3D9C
 004C3D89    lea         eax,[ebp-160]
 004C3D8F    call        @UStrClr
 004C3D94    ret
>004C3D95    jmp         @HandleFinally
>004C3D9A    jmp         004C3D89
 004C3D9C    pop         edi
 004C3D9D    pop         esi
 004C3D9E    pop         ebx
 004C3D9F    mov         esp,ebp
 004C3DA1    pop         ebp
 004C3DA2    ret
*}
end;

//004C3DA4
constructor TFont.Create();
begin
{*
 004C3DA4    push        ebx
 004C3DA5    push        esi
 004C3DA6    test        dl,dl
>004C3DA8    je          004C3DB2
 004C3DAA    add         esp,0FFFFFFF0
 004C3DAD    call        @ClassCreate
 004C3DB2    mov         ebx,edx
 004C3DB4    mov         esi,eax
 004C3DB6    xor         edx,edx
 004C3DB8    mov         eax,esi
 004C3DBA    call        TObject.Create
 004C3DBF    xor         eax,eax
 004C3DC1    mov         [007A0EB4],eax
 004C3DC6    mov         edx,7A0EB4
 004C3DCB    mov         eax,[007CA498];gvar_007CA498
 004C3DD0    call        TResourceManager.AllocResource
 004C3DD5    mov         dword ptr [esi+10],eax
 004C3DD8    mov         dword ptr [esi+18],0FF000008
 004C3DDF    mov         eax,[007CA454]
 004C3DE4    mov         dword ptr [esi+1C],eax
 004C3DE7    mov         eax,esi
 004C3DE9    test        bl,bl
>004C3DEB    je          004C3DFC
 004C3DED    call        @AfterConstruction
 004C3DF2    pop         dword ptr fs:[0]
 004C3DF9    add         esp,0C
 004C3DFC    mov         eax,esi
 004C3DFE    pop         esi
 004C3DFF    pop         ebx
 004C3E00    ret
*}
end;

//004C3E04
destructor TFont.Destroy();
begin
{*
 004C3E04    push        ebx
 004C3E05    push        esi
 004C3E06    call        @BeforeDestruction
 004C3E0B    mov         ebx,edx
 004C3E0D    mov         esi,eax
 004C3E0F    mov         edx,dword ptr [esi+10];TFont.FResource:PResource
 004C3E12    mov         eax,[007CA498];gvar_007CA498
 004C3E17    call        TResourceManager.FreeResource
 004C3E1C    mov         dl,0FC
 004C3E1E    and         dl,bl
 004C3E20    mov         eax,esi
 004C3E22    call        TMemoryStream.Destroy
 004C3E27    test        bl,bl
>004C3E29    jle         004C3E32
 004C3E2B    mov         eax,esi
 004C3E2D    call        @ClassDestroy
 004C3E32    pop         esi
 004C3E33    pop         ebx
 004C3E34    ret
*}
end;

//004C3E38
procedure TFont.Changed;
begin
{*
 004C3E38    push        ebx
 004C3E39    mov         ebx,eax
 004C3E3B    mov         eax,ebx
 004C3E3D    call        TCustomCanvas.Changed
 004C3E42    cmp         dword ptr [ebx+20],0;TFont.FNotify:IChangeNotifier
>004C3E46    je          004C3E50
 004C3E48    mov         eax,dword ptr [ebx+20];TFont.FNotify:IChangeNotifier
 004C3E4B    mov         edx,dword ptr [eax]
 004C3E4D    call        dword ptr [edx+0C]
 004C3E50    pop         ebx
 004C3E51    ret
*}
end;

//004C3E54
procedure TFont.Assign(Source:TPersistent);
begin
{*
 004C3E54    push        ebp
 004C3E55    mov         ebp,esp
 004C3E57    add         esp,0FFFFFFF8
 004C3E5A    push        ebx
 004C3E5B    mov         dword ptr [ebp-8],edx
 004C3E5E    mov         dword ptr [ebp-4],eax
 004C3E61    mov         eax,dword ptr [ebp-8]
 004C3E64    mov         edx,dword ptr ds:[4BDD74];TFont
 004C3E6A    call        @IsClass
 004C3E6F    test        al,al
>004C3E71    je          004C3F16
 004C3E77    mov         eax,dword ptr [ebp-4]
 004C3E7A    call        TGraphicsObject.Lock
 004C3E7F    xor         eax,eax
 004C3E81    push        ebp
 004C3E82    push        4C3F0F
 004C3E87    push        dword ptr fs:[eax]
 004C3E8A    mov         dword ptr fs:[eax],esp
 004C3E8D    mov         ebx,dword ptr [ebp-8]
 004C3E90    mov         eax,ebx
 004C3E92    call        TGraphicsObject.Lock
 004C3E97    xor         eax,eax
 004C3E99    push        ebp
 004C3E9A    push        4C3EF2
 004C3E9F    push        dword ptr fs:[eax]
 004C3EA2    mov         dword ptr fs:[eax],esp
 004C3EA5    mov         ecx,dword ptr [ebx+10]
 004C3EA8    mov         edx,dword ptr [ebp-4]
 004C3EAB    mov         eax,[007CA498];gvar_007CA498
 004C3EB0    call        TResourceManager.AssignResource
 004C3EB5    mov         edx,dword ptr [ebx+18]
 004C3EB8    mov         eax,dword ptr [ebp-4]
 004C3EBB    call        TFont.SetColor
 004C3EC0    mov         eax,dword ptr [ebp-4]
 004C3EC3    mov         eax,dword ptr [eax+1C]
 004C3EC6    cmp         eax,dword ptr [ebx+1C]
>004C3EC9    je          004C3EDC
 004C3ECB    mov         eax,ebx
 004C3ECD    call        TFont.GetSize
 004C3ED2    mov         edx,eax
 004C3ED4    mov         eax,dword ptr [ebp-4]
 004C3ED7    call        TFont.SetSize
 004C3EDC    xor         eax,eax
 004C3EDE    pop         edx
 004C3EDF    pop         ecx
 004C3EE0    pop         ecx
 004C3EE1    mov         dword ptr fs:[eax],edx
 004C3EE4    push        4C3EF9
 004C3EE9    mov         eax,dword ptr [ebp-8]
 004C3EEC    call        TGraphicsObject.Unlock
 004C3EF1    ret
>004C3EF2    jmp         @HandleFinally
>004C3EF7    jmp         004C3EE9
 004C3EF9    xor         eax,eax
 004C3EFB    pop         edx
 004C3EFC    pop         ecx
 004C3EFD    pop         ecx
 004C3EFE    mov         dword ptr fs:[eax],edx
 004C3F01    push        4C3F21
 004C3F06    mov         eax,dword ptr [ebp-4]
 004C3F09    call        TGraphicsObject.Unlock
 004C3F0E    ret
>004C3F0F    jmp         @HandleFinally
>004C3F14    jmp         004C3F06
 004C3F16    mov         edx,dword ptr [ebp-8]
 004C3F19    mov         eax,dword ptr [ebp-4]
 004C3F1C    call        TPersistent.Assign
 004C3F21    pop         ebx
 004C3F22    pop         ecx
 004C3F23    pop         ecx
 004C3F24    pop         ebp
 004C3F25    ret
*}
end;

//004C3F28
procedure TFont.GetData(var FontData:TFontData);
begin
{*
 004C3F28    push        esi
 004C3F29    push        edi
 004C3F2A    mov         eax,dword ptr [eax+10]
 004C3F2D    lea         esi,[eax+14]
 004C3F30    mov         edi,edx
 004C3F32    mov         ecx,24
 004C3F37    rep movs    dword ptr [edi],dword ptr [esi]
 004C3F39    xor         eax,eax
 004C3F3B    mov         dword ptr [edx],eax
 004C3F3D    pop         edi
 004C3F3E    pop         esi
 004C3F3F    ret
*}
end;

//004C3F40
procedure TFont.SetData(const FontData:TFontData);
begin
{*
 004C3F40    push        ebp
 004C3F41    mov         ebp,esp
 004C3F43    push        ecx
 004C3F44    push        ebx
 004C3F45    mov         ebx,edx
 004C3F47    mov         dword ptr [ebp-4],eax
 004C3F4A    mov         eax,dword ptr [ebp-4]
 004C3F4D    call        TGraphicsObject.Lock
 004C3F52    xor         eax,eax
 004C3F54    push        ebp
 004C3F55    push        4C3F85
 004C3F5A    push        dword ptr fs:[eax]
 004C3F5D    mov         dword ptr fs:[eax],esp
 004C3F60    mov         ecx,ebx
 004C3F62    mov         edx,dword ptr [ebp-4]
 004C3F65    mov         eax,[007CA498];gvar_007CA498
 004C3F6A    call        TResourceManager.ChangeResource
 004C3F6F    xor         eax,eax
 004C3F71    pop         edx
 004C3F72    pop         ecx
 004C3F73    pop         ecx
 004C3F74    mov         dword ptr fs:[eax],edx
 004C3F77    push        4C3F8C
 004C3F7C    mov         eax,dword ptr [ebp-4]
 004C3F7F    call        TGraphicsObject.Unlock
 004C3F84    ret
>004C3F85    jmp         @HandleFinally
>004C3F8A    jmp         004C3F7C
 004C3F8C    pop         ebx
 004C3F8D    pop         ecx
 004C3F8E    pop         ebp
 004C3F8F    ret
*}
end;

//004C3F90
procedure TFont.SetColor(const Value:UITypes.TColor);
begin
{*
 004C3F90    cmp         edx,dword ptr [eax+18]
>004C3F93    je          004C3F9D
 004C3F95    mov         dword ptr [eax+18],edx
 004C3F98    mov         edx,dword ptr [eax]
 004C3F9A    call        dword ptr [edx+0C]
 004C3F9D    ret
*}
end;

//004C3FA0
function IsDefaultFont(const FontData:TFontData):Boolean;
begin
{*
 004C3FA0    push        ebx
 004C3FA1    mov         ebx,eax
 004C3FA3    movzx       eax,byte ptr [ebx+0E]
 004C3FA7    cmp         al,byte ptr ds:[7A0EC2]
>004C3FAD    jne         004C3FC2
 004C3FAF    mov         eax,7A0EC3
 004C3FB4    lea         edx,[ebx+0F]
 004C3FB7    movzx       ecx,byte ptr [eax]
 004C3FBA    inc         ecx
 004C3FBB    call        @AStrCmp
>004C3FC0    je          004C3FC6
 004C3FC2    xor         eax,eax
 004C3FC4    pop         ebx
 004C3FC5    ret
 004C3FC6    mov         al,1
 004C3FC8    pop         ebx
 004C3FC9    ret
*}
end;

//004C3FCC
function TFont.GetHandle:HFONT;
begin
{*
 004C3FCC    push        ebp
 004C3FCD    mov         ebp,esp
 004C3FCF    add         esp,0FFFFFF84
 004C3FD2    push        ebx
 004C3FD3    xor         edx,edx
 004C3FD5    mov         dword ptr [ebp-7C],edx
 004C3FD8    mov         dword ptr [ebp-4],edx
 004C3FDB    mov         dword ptr [ebp-8],edx
 004C3FDE    mov         ebx,eax
 004C3FE0    xor         eax,eax
 004C3FE2    push        ebp
 004C3FE3    push        4C41DA
 004C3FE8    push        dword ptr fs:[eax]
 004C3FEB    mov         dword ptr fs:[eax],esp
 004C3FEE    mov         eax,dword ptr [ebx+10]
 004C3FF1    mov         dword ptr [ebp-0C],eax
 004C3FF4    mov         eax,dword ptr [ebp-0C]
 004C3FF7    cmp         dword ptr [eax+8],0
>004C3FFB    jne         004C41B1
 004C4001    mov         eax,[007CA498];gvar_007CA498
 004C4006    mov         dword ptr [ebp-10],eax
 004C4009    mov         eax,dword ptr [ebp-10]
 004C400C    add         eax,8
 004C400F    push        eax
 004C4010    call        kernel32.EnterCriticalSection
 004C4015    xor         edx,edx
 004C4017    push        ebp
 004C4018    push        4C41AA
 004C401D    push        dword ptr fs:[edx]
 004C4020    mov         dword ptr fs:[edx],esp
 004C4023    mov         eax,dword ptr [ebp-0C]
 004C4026    cmp         dword ptr [eax+8],0
>004C402A    jne         004C4188
 004C4030    mov         eax,dword ptr [ebp-0C]
 004C4033    mov         eax,dword ptr [eax+18]
 004C4036    mov         dword ptr [ebp-78],eax
 004C4039    xor         eax,eax
 004C403B    mov         dword ptr [ebp-74],eax
 004C403E    mov         eax,dword ptr [ebp-0C]
 004C4041    mov         eax,dword ptr [eax+1C]
 004C4044    mov         dword ptr [ebp-70],eax
 004C4047    mov         dword ptr [ebp-6C],eax
 004C404A    mov         eax,dword ptr [ebp-0C]
 004C404D    test        byte ptr [eax+21],1
>004C4051    je          004C405C
 004C4053    mov         dword ptr [ebp-68],2BC
>004C405A    jmp         004C4063
 004C405C    mov         dword ptr [ebp-68],190
 004C4063    mov         eax,dword ptr [ebp-0C]
 004C4066    test        byte ptr [eax+21],2
 004C406A    setne       al
 004C406D    mov         byte ptr [ebp-64],al
 004C4070    mov         eax,dword ptr [ebp-0C]
 004C4073    test        byte ptr [eax+21],4
 004C4077    setne       al
 004C407A    mov         byte ptr [ebp-63],al
 004C407D    mov         eax,dword ptr [ebp-0C]
 004C4080    test        byte ptr [eax+21],8
 004C4084    setne       al
 004C4087    mov         byte ptr [ebp-62],al
 004C408A    mov         eax,dword ptr [ebp-0C]
 004C408D    movzx       eax,byte ptr [eax+22]
 004C4091    cmp         al,1
>004C4093    jne         004C40AA
 004C4095    cmp         byte ptr ds:[7A0EC2],1
>004C409C    je          004C40AA
 004C409E    movzx       eax,byte ptr ds:[7A0EC2]
 004C40A5    mov         byte ptr [ebp-61],al
>004C40A8    jmp         004C40AD
 004C40AA    mov         byte ptr [ebp-61],al
 004C40AD    lea         eax,[ebp-7C]
 004C40B0    mov         edx,dword ptr [ebp-0C]
 004C40B3    add         edx,23
 004C40B6    call        @UStrFromString
 004C40BB    mov         eax,dword ptr [ebp-7C]
 004C40BE    mov         edx,4C41F4;'Default'
 004C40C3    call        CompareText
 004C40C8    test        eax,eax
>004C40CA    jne         004C40F0
 004C40CC    mov         dword ptr [ebp-14],7A0EC3
 004C40D3    lea         edx,[ebp-4]
 004C40D6    mov         eax,dword ptr [ebp-14]
 004C40D9    call        UTF8ToUnicodeString
 004C40DE    lea         eax,[ebp-5C]
 004C40E1    mov         ecx,1F
 004C40E6    mov         edx,dword ptr [ebp-4]
 004C40E9    call        StrPLCopy
>004C40EE    jmp         004C4114
 004C40F0    mov         eax,dword ptr [ebp-0C]
 004C40F3    add         eax,23
 004C40F6    mov         dword ptr [ebp-18],eax
 004C40F9    lea         edx,[ebp-8]
 004C40FC    mov         eax,dword ptr [ebp-18]
 004C40FF    call        UTF8ToUnicodeString
 004C4104    lea         eax,[ebp-5C]
 004C4107    mov         ecx,1F
 004C410C    mov         edx,dword ptr [ebp-8]
 004C410F    call        StrPLCopy
 004C4114    mov         eax,[007C4EC4];^gvar_0079EDDC
 004C4119    cmp         dword ptr [eax],1
>004C411C    jne         004C413A
 004C411E    call        GetDefFontCharSet
 004C4123    cmp         al,80
>004C4125    jne         004C413A
 004C4127    mov         eax,dword ptr [ebp-0C]
 004C412A    add         eax,14
 004C412D    call        IsDefaultFont
 004C4132    test        al,al
>004C4134    je          004C413A
 004C4136    mov         byte ptr [ebp-61],80
 004C413A    mov         eax,ebx
 004C413C    call        TFont.GetQuality
 004C4141    mov         byte ptr [ebp-5E],al
 004C4144    cmp         dword ptr [ebp-6C],0
>004C4148    je          004C4150
 004C414A    mov         byte ptr [ebp-60],7
>004C414E    jmp         004C4154
 004C4150    mov         byte ptr [ebp-60],0
 004C4154    mov         byte ptr [ebp-5F],0
 004C4158    mov         eax,ebx
 004C415A    call        TFont.GetPitch
 004C415F    dec         al
>004C4161    je          004C4169
 004C4163    dec         al
>004C4165    je          004C416F
>004C4167    jmp         004C4175
 004C4169    mov         byte ptr [ebp-5D],2
>004C416D    jmp         004C4179
 004C416F    mov         byte ptr [ebp-5D],1
>004C4173    jmp         004C4179
 004C4175    mov         byte ptr [ebp-5D],0
 004C4179    lea         eax,[ebp-78]
 004C417C    push        eax
 004C417D    call        gdi32.CreateFontIndirectW
 004C4182    mov         edx,dword ptr [ebp-0C]
 004C4185    mov         dword ptr [edx+8],eax
 004C4188    xor         eax,eax
 004C418A    pop         edx
 004C418B    pop         ecx
 004C418C    pop         ecx
 004C418D    mov         dword ptr fs:[eax],edx
 004C4190    push        4C41B1
 004C4195    mov         eax,[007CA498];gvar_007CA498
 004C419A    mov         dword ptr [ebp-1C],eax
 004C419D    mov         eax,dword ptr [ebp-1C]
 004C41A0    add         eax,8
 004C41A3    push        eax
 004C41A4    call        kernel32.LeaveCriticalSection
 004C41A9    ret
>004C41AA    jmp         @HandleFinally
>004C41AF    jmp         004C4195
 004C41B1    mov         eax,dword ptr [ebp-0C]
 004C41B4    mov         ebx,dword ptr [eax+8]
 004C41B7    xor         eax,eax
 004C41B9    pop         edx
 004C41BA    pop         ecx
 004C41BB    pop         ecx
 004C41BC    mov         dword ptr fs:[eax],edx
 004C41BF    push        4C41E1
 004C41C4    lea         eax,[ebp-7C]
 004C41C7    call        @UStrClr
 004C41CC    lea         eax,[ebp-8]
 004C41CF    mov         edx,2
 004C41D4    call        @UStrArrayClr
 004C41D9    ret
>004C41DA    jmp         @HandleFinally
>004C41DF    jmp         004C41C4
 004C41E1    mov         eax,ebx
 004C41E3    pop         ebx
 004C41E4    mov         esp,ebp
 004C41E6    pop         ebp
 004C41E7    ret
*}
end;

//004C4204
procedure TFont.SetHandle(const Value:Windows.HFONT);
begin
{*
 004C4204    push        ebx
 004C4205    push        esi
 004C4206    add         esp,0FFFFFF70
 004C420C    mov         esi,edx
 004C420E    mov         ebx,eax
 004C4210    mov         edx,esp
 004C4212    mov         eax,esi
 004C4214    call        GetFontData
 004C4219    mov         edx,esp
 004C421B    mov         eax,ebx
 004C421D    call        TFont.SetData
 004C4222    add         esp,90
 004C4228    pop         esi
 004C4229    pop         ebx
 004C422A    ret
*}
end;

//004C422C
{*function TFont.GetHeight:?;
begin
 004C422C    mov         eax,dword ptr [eax+10];TFont.FResource:PResource
 004C422F    mov         eax,dword ptr [eax+18]
 004C4232    ret
end;*}

//004C4234
procedure TFont.SetHeight(const Value:Integer);
begin
{*
 004C4234    push        ebx
 004C4235    push        esi
 004C4236    add         esp,0FFFFFF70
 004C423C    mov         esi,edx
 004C423E    mov         ebx,eax
 004C4240    mov         eax,dword ptr [ebx+10]
 004C4243    cmp         esi,dword ptr [eax+18]
>004C4246    je          004C425E
 004C4248    mov         edx,esp
 004C424A    mov         eax,ebx
 004C424C    call        TFont.GetData
 004C4251    mov         dword ptr [esp+4],esi
 004C4255    mov         edx,esp
 004C4257    mov         eax,ebx
 004C4259    call        TFont.SetData
 004C425E    add         esp,90
 004C4264    pop         esi
 004C4265    pop         ebx
 004C4266    ret
*}
end;

//004C4268
function TFont.GetName:TFontName;
begin
{*
 004C4268    push        ebp
 004C4269    mov         ebp,esp
 004C426B    add         esp,0FFFFFFF8
 004C426E    push        ebx
 004C426F    xor         ecx,ecx
 004C4271    mov         dword ptr [ebp-4],ecx
 004C4274    mov         ebx,edx
 004C4276    xor         edx,edx
 004C4278    push        ebp
 004C4279    push        4C42B8
 004C427E    push        dword ptr fs:[edx]
 004C4281    mov         dword ptr fs:[edx],esp
 004C4284    mov         eax,dword ptr [eax+10]
 004C4287    add         eax,23
 004C428A    mov         dword ptr [ebp-8],eax
 004C428D    lea         edx,[ebp-4]
 004C4290    mov         eax,dword ptr [ebp-8]
 004C4293    call        UTF8ToUnicodeString
 004C4298    mov         eax,ebx
 004C429A    mov         edx,dword ptr [ebp-4]
 004C429D    call        @UStrAsg
 004C42A2    xor         eax,eax
 004C42A4    pop         edx
 004C42A5    pop         ecx
 004C42A6    pop         ecx
 004C42A7    mov         dword ptr fs:[eax],edx
 004C42AA    push        4C42BF
 004C42AF    lea         eax,[ebp-4]
 004C42B2    call        @UStrClr
 004C42B7    ret
>004C42B8    jmp         @HandleFinally
>004C42BD    jmp         004C42AF
 004C42BF    pop         ebx
 004C42C0    pop         ecx
 004C42C1    pop         ecx
 004C42C2    pop         ebp
 004C42C3    ret
*}
end;

//004C42C4
procedure TFont.SetName(const Value:UITypes.TFontName);
begin
{*
 004C42C4    push        ebx
 004C42C5    push        esi
 004C42C6    add         esp,0FFFFFE70
 004C42CC    mov         esi,edx
 004C42CE    mov         ebx,eax
 004C42D0    test        esi,esi
>004C42D2    je          004C4316
 004C42D4    mov         edx,esp
 004C42D6    mov         eax,ebx
 004C42D8    call        TFont.GetData
 004C42DD    lea         eax,[esp+0F]
 004C42E1    xor         ecx,ecx
 004C42E3    mov         edx,7D
 004C42E8    call        @FillChar
 004C42ED    lea         edx,[esp+90]
 004C42F4    mov         eax,esi
 004C42F6    call        UTF8EncodeToShortString
 004C42FB    lea         edx,[esp+90]
 004C4302    lea         eax,[esp+0F]
 004C4306    mov         cl,7C
 004C4308    call        @PStrNCpy
 004C430D    mov         edx,esp
 004C430F    mov         eax,ebx
 004C4311    call        TFont.SetData
 004C4316    add         esp,190
 004C431C    pop         esi
 004C431D    pop         ebx
 004C431E    ret
*}
end;

//004C4320
function TFont.GetSize:Integer;
begin
{*
 004C4320    push        ebx
 004C4321    mov         ebx,eax
 004C4323    mov         eax,dword ptr [ebx+1C]
 004C4326    push        eax
 004C4327    push        48
 004C4329    mov         eax,dword ptr [ebx+10]
 004C432C    mov         eax,dword ptr [eax+18]
 004C432F    push        eax
 004C4330    call        kernel32.MulDiv
 004C4335    neg         eax
 004C4337    pop         ebx
 004C4338    ret
*}
end;

//004C433C
procedure TFont.SetSize(const Value:Integer);
begin
{*
 004C433C    push        ebx
 004C433D    push        esi
 004C433E    mov         esi,edx
 004C4340    mov         ebx,eax
 004C4342    push        48
 004C4344    mov         eax,dword ptr [ebx+1C]
 004C4347    push        eax
 004C4348    push        esi
 004C4349    call        kernel32.MulDiv
 004C434E    mov         edx,eax
 004C4350    neg         edx
 004C4352    mov         eax,ebx
 004C4354    call        TFont.SetHeight
 004C4359    pop         esi
 004C435A    pop         ebx
 004C435B    ret
*}
end;

//004C435C
function TFont.GetStyle:TFontStyles;
begin
{*
 004C435C    mov         eax,dword ptr [eax+10]
 004C435F    movzx       edx,byte ptr [eax+21]
 004C4363    mov         eax,edx
 004C4365    ret
*}
end;

//004C4368
procedure TFont.SetStyle(const Value:UITypes.TFontStyles);
begin
{*
 004C4368    push        ebx
 004C4369    push        esi
 004C436A    add         esp,0FFFFFF6C
 004C4370    mov         byte ptr [esp],dl
 004C4373    mov         esi,eax
 004C4375    mov         eax,dword ptr [esi+10]
 004C4378    movzx       ebx,byte ptr [eax+21]
 004C437C    cmp         bl,byte ptr [esp]
>004C437F    je          004C439F
 004C4381    lea         edx,[esp+4]
 004C4385    mov         eax,esi
 004C4387    call        TFont.GetData
 004C438C    movzx       eax,byte ptr [esp]
 004C4390    mov         byte ptr [esp+11],al
 004C4394    lea         edx,[esp+4]
 004C4398    mov         eax,esi
 004C439A    call        TFont.SetData
 004C439F    add         esp,94
 004C43A5    pop         esi
 004C43A6    pop         ebx
 004C43A7    ret
*}
end;

//004C43A8
function TFont.GetPitch:TFontPitch;
begin
{*
 004C43A8    mov         eax,dword ptr [eax+10]
 004C43AB    movzx       eax,byte ptr [eax+20]
 004C43AF    ret
*}
end;

//004C43B0
function TFont.GetQuality:TFontQuality;
begin
{*
 004C43B0    mov         eax,dword ptr [eax+10]
 004C43B3    movzx       eax,byte ptr [eax+0A0]
 004C43BA    ret
*}
end;

//004C43BC
procedure TFont.SetPitch(const Value:UITypes.TFontPitch);
begin
{*
 004C43BC    push        ebx
 004C43BD    push        esi
 004C43BE    add         esp,0FFFFFF70
 004C43C4    mov         ebx,edx
 004C43C6    mov         esi,eax
 004C43C8    mov         eax,esi
 004C43CA    call        TFont.GetPitch
 004C43CF    cmp         bl,al
>004C43D1    je          004C43E9
 004C43D3    mov         edx,esp
 004C43D5    mov         eax,esi
 004C43D7    call        TFont.GetData
 004C43DC    mov         byte ptr [esp+0C],bl
 004C43E0    mov         edx,esp
 004C43E2    mov         eax,esi
 004C43E4    call        TFont.SetData
 004C43E9    add         esp,90
 004C43EF    pop         esi
 004C43F0    pop         ebx
 004C43F1    ret
*}
end;

//004C43F4
procedure TFont.SetQuality(const Value:UITypes.TFontQuality);
begin
{*
 004C43F4    push        ebx
 004C43F5    push        esi
 004C43F6    add         esp,0FFFFFF70
 004C43FC    mov         ebx,edx
 004C43FE    mov         esi,eax
 004C4400    mov         eax,esi
 004C4402    call        TFont.GetQuality
 004C4407    cmp         bl,al
>004C4409    je          004C4424
 004C440B    mov         edx,esp
 004C440D    mov         eax,esi
 004C440F    call        TFont.GetData
 004C4414    mov         byte ptr [esp+8C],bl
 004C441B    mov         edx,esp
 004C441D    mov         eax,esi
 004C441F    call        TFont.SetData
 004C4424    add         esp,90
 004C442A    pop         esi
 004C442B    pop         ebx
 004C442C    ret
*}
end;

//004C4430
function TFont.GetCharset:TFontCharset;
begin
{*
 004C4430    mov         eax,dword ptr [eax+10]
 004C4433    movzx       eax,byte ptr [eax+22]
 004C4437    ret
*}
end;

//004C4438
procedure TFont.SetCharset(const Value:UITypes.TFontCharset);
begin
{*
 004C4438    push        ebx
 004C4439    push        esi
 004C443A    add         esp,0FFFFFF70
 004C4440    mov         ebx,edx
 004C4442    mov         esi,eax
 004C4444    mov         eax,esi
 004C4446    call        TFont.GetCharset
 004C444B    cmp         bl,al
>004C444D    je          004C4465
 004C444F    mov         edx,esp
 004C4451    mov         eax,esi
 004C4453    call        TFont.GetData
 004C4458    mov         byte ptr [esp+0E],bl
 004C445C    mov         edx,esp
 004C445E    mov         eax,esi
 004C4460    call        TFont.SetData
 004C4465    add         esp,90
 004C446B    pop         esi
 004C446C    pop         ebx
 004C446D    ret
*}
end;

//004C4470
function TFont.GetOrientation:Integer;
begin
{*
 004C4470    mov         eax,dword ptr [eax+10]
 004C4473    mov         eax,dword ptr [eax+1C]
 004C4476    ret
*}
end;

//004C4478
procedure TFont.SetOrientation(const Value:Integer);
begin
{*
 004C4478    push        ebx
 004C4479    push        esi
 004C447A    add         esp,0FFFFFF70
 004C4480    mov         esi,edx
 004C4482    mov         ebx,eax
 004C4484    mov         eax,ebx
 004C4486    call        TFont.GetOrientation
 004C448B    cmp         esi,eax
>004C448D    je          004C44A5
 004C448F    mov         edx,esp
 004C4491    mov         eax,ebx
 004C4493    call        TFont.GetData
 004C4498    mov         dword ptr [esp+8],esi
 004C449C    mov         edx,esp
 004C449E    mov         eax,ebx
 004C44A0    call        TFont.SetData
 004C44A5    add         esp,90
 004C44AB    pop         esi
 004C44AC    pop         ebx
 004C44AD    ret
*}
end;

//004C44B0
function GetPenData(Pen:Windows.HPEN):TPenData;
begin
{*
 004C44B0    push        ebp
 004C44B1    mov         ebp,esp
 004C44B3    add         esp,0FFFFFFD0
 004C44B6    push        ebx
 004C44B7    push        esi
 004C44B8    push        edi
 004C44B9    mov         esi,edx
 004C44BB    mov         ebx,eax
 004C44BD    push        esi
 004C44BE    mov         edi,esi
 004C44C0    mov         esi,7A0FD8
 004C44C5    movs        dword ptr [edi],dword ptr [esi]
 004C44C6    movs        dword ptr [edi],dword ptr [esi]
 004C44C7    movs        dword ptr [edi],dword ptr [esi]
 004C44C8    movs        dword ptr [edi],dword ptr [esi]
 004C44C9    pop         esi
 004C44CA    test        ebx,ebx
>004C44CC    je          004C45B7
 004C44D2    push        0
 004C44D4    push        0
 004C44D6    push        ebx
 004C44D7    call        gdi32.GetObjectW
 004C44DC    mov         edi,eax
 004C44DE    cmp         edi,10
>004C44E1    jne         004C4517
 004C44E3    lea         eax,[ebp-14]
 004C44E6    push        eax
 004C44E7    push        10
 004C44E9    push        ebx
 004C44EA    call        gdi32.GetObjectW
 004C44EF    test        eax,eax
>004C44F1    je          004C45B7
 004C44F7    mov         eax,dword ptr [ebp-14]
 004C44FA    movzx       eax,byte ptr [eax+7A0FE8]
 004C4501    mov         byte ptr [esi+0C],al
 004C4504    mov         eax,dword ptr [ebp-10]
 004C4507    mov         dword ptr [esi+8],eax
 004C450A    mov         eax,dword ptr [ebp-8]
 004C450D    mov         dword ptr [esi+4],eax
 004C4510    mov         dword ptr [esi],ebx
>004C4512    jmp         004C45B7
 004C4517    cmp         edi,18
>004C451A    jl          004C45B7
 004C4520    cmp         edi,1C
>004C4523    jle         004C4589
 004C4525    mov         eax,edi
 004C4527    call        @GetMem
 004C452C    mov         dword ptr [ebp-4],eax
 004C452F    xor         edx,edx
 004C4531    push        ebp
 004C4532    push        4C4582
 004C4537    push        dword ptr fs:[edx]
 004C453A    mov         dword ptr fs:[edx],esp
 004C453D    mov         eax,dword ptr [ebp-4]
 004C4540    push        eax
 004C4541    push        edi
 004C4542    push        ebx
 004C4543    call        gdi32.GetObjectW
 004C4548    test        eax,eax
>004C454A    je          004C456C
 004C454C    mov         eax,dword ptr [ebp-4]
 004C454F    mov         edx,dword ptr [eax]
 004C4551    and         edx,0F
 004C4554    movzx       edx,byte ptr [edx+7A0FE8]
 004C455B    mov         byte ptr [esi+0C],dl
 004C455E    mov         edx,dword ptr [eax+4]
 004C4561    mov         dword ptr [esi+8],edx
 004C4564    mov         eax,dword ptr [eax+0C]
 004C4567    mov         dword ptr [esi+4],eax
 004C456A    mov         dword ptr [esi],ebx
 004C456C    xor         eax,eax
 004C456E    pop         edx
 004C456F    pop         ecx
 004C4570    pop         ecx
 004C4571    mov         dword ptr fs:[eax],edx
 004C4574    push        4C45B7
 004C4579    mov         eax,dword ptr [ebp-4]
 004C457C    call        @FreeMem
 004C4581    ret
>004C4582    jmp         @HandleFinally
>004C4587    jmp         004C4579
 004C4589    lea         eax,[ebp-30]
 004C458C    push        eax
 004C458D    push        1C
 004C458F    push        ebx
 004C4590    call        gdi32.GetObjectW
 004C4595    test        eax,eax
>004C4597    je          004C45B7
 004C4599    mov         eax,dword ptr [ebp-30]
 004C459C    and         eax,0F
 004C459F    movzx       eax,byte ptr [eax+7A0FE8]
 004C45A6    mov         byte ptr [esi+0C],al
 004C45A9    mov         eax,dword ptr [ebp-2C]
 004C45AC    mov         dword ptr [esi+8],eax
 004C45AF    mov         eax,dword ptr [ebp-24]
 004C45B2    mov         dword ptr [esi+4],eax
 004C45B5    mov         dword ptr [esi],ebx
 004C45B7    pop         edi
 004C45B8    pop         esi
 004C45B9    pop         ebx
 004C45BA    mov         esp,ebp
 004C45BC    pop         ebp
 004C45BD    ret
*}
end;

//004C45C0
constructor TPen.Create();
begin
{*
 004C45C0    push        ebx
 004C45C1    push        esi
 004C45C2    test        dl,dl
>004C45C4    je          004C45CE
 004C45C6    add         esp,0FFFFFFF0
 004C45C9    call        @ClassCreate
 004C45CE    mov         ebx,edx
 004C45D0    mov         esi,eax
 004C45D2    xor         edx,edx
 004C45D4    mov         eax,esi
 004C45D6    call        TObject.Create
 004C45DB    mov         edx,7A0FD8
 004C45E0    mov         eax,[007CA49C];gvar_007CA49C
 004C45E5    call        TResourceManager.AllocResource
 004C45EA    mov         dword ptr [esi+10],eax
 004C45ED    mov         byte ptr [esi+18],4
 004C45F1    mov         eax,esi
 004C45F3    test        bl,bl
>004C45F5    je          004C4606
 004C45F7    call        @AfterConstruction
 004C45FC    pop         dword ptr fs:[0]
 004C4603    add         esp,0C
 004C4606    mov         eax,esi
 004C4608    pop         esi
 004C4609    pop         ebx
 004C460A    ret
*}
end;

//004C460C
destructor TPen.Destroy();
begin
{*
 004C460C    push        ebx
 004C460D    push        esi
 004C460E    call        @BeforeDestruction
 004C4613    mov         ebx,edx
 004C4615    mov         esi,eax
 004C4617    mov         edx,dword ptr [esi+10];TPen.FResource:PResource
 004C461A    mov         eax,[007CA49C];gvar_007CA49C
 004C461F    call        TResourceManager.FreeResource
 004C4624    mov         dl,0FC
 004C4626    and         dl,bl
 004C4628    mov         eax,esi
 004C462A    call        TMemoryStream.Destroy
 004C462F    test        bl,bl
>004C4631    jle         004C463A
 004C4633    mov         eax,esi
 004C4635    call        @ClassDestroy
 004C463A    pop         esi
 004C463B    pop         ebx
 004C463C    ret
*}
end;

//004C4640
procedure TPen.Assign(Source:TPersistent);
begin
{*
 004C4640    push        ebp
 004C4641    mov         ebp,esp
 004C4643    add         esp,0FFFFFFF8
 004C4646    push        ebx
 004C4647    mov         dword ptr [ebp-8],edx
 004C464A    mov         dword ptr [ebp-4],eax
 004C464D    mov         eax,dword ptr [ebp-8]
 004C4650    mov         edx,dword ptr ds:[4BE0F4];TPen
 004C4656    call        @IsClass
 004C465B    test        al,al
>004C465D    je          004C46E7
 004C4663    mov         eax,dword ptr [ebp-4]
 004C4666    call        TGraphicsObject.Lock
 004C466B    xor         eax,eax
 004C466D    push        ebp
 004C466E    push        4C46E0
 004C4673    push        dword ptr fs:[eax]
 004C4676    mov         dword ptr fs:[eax],esp
 004C4679    mov         ebx,dword ptr [ebp-8]
 004C467C    mov         eax,ebx
 004C467E    call        TGraphicsObject.Lock
 004C4683    xor         eax,eax
 004C4685    push        ebp
 004C4686    push        4C46C3
 004C468B    push        dword ptr fs:[eax]
 004C468E    mov         dword ptr fs:[eax],esp
 004C4691    mov         ecx,dword ptr [ebx+10]
 004C4694    mov         edx,dword ptr [ebp-4]
 004C4697    mov         eax,[007CA49C];gvar_007CA49C
 004C469C    call        TResourceManager.AssignResource
 004C46A1    movzx       edx,byte ptr [ebx+18]
 004C46A5    mov         eax,dword ptr [ebp-4]
 004C46A8    call        TPen.SetMode
 004C46AD    xor         eax,eax
 004C46AF    pop         edx
 004C46B0    pop         ecx
 004C46B1    pop         ecx
 004C46B2    mov         dword ptr fs:[eax],edx
 004C46B5    push        4C46CA
 004C46BA    mov         eax,dword ptr [ebp-8]
 004C46BD    call        TGraphicsObject.Unlock
 004C46C2    ret
>004C46C3    jmp         @HandleFinally
>004C46C8    jmp         004C46BA
 004C46CA    xor         eax,eax
 004C46CC    pop         edx
 004C46CD    pop         ecx
 004C46CE    pop         ecx
 004C46CF    mov         dword ptr fs:[eax],edx
 004C46D2    push        4C46F2
 004C46D7    mov         eax,dword ptr [ebp-4]
 004C46DA    call        TGraphicsObject.Unlock
 004C46DF    ret
>004C46E0    jmp         @HandleFinally
>004C46E5    jmp         004C46D7
 004C46E7    mov         edx,dword ptr [ebp-8]
 004C46EA    mov         eax,dword ptr [ebp-4]
 004C46ED    call        TPersistent.Assign
 004C46F2    pop         ebx
 004C46F3    pop         ecx
 004C46F4    pop         ecx
 004C46F5    pop         ebp
 004C46F6    ret
*}
end;

//004C46F8
procedure TPen.GetData(var PenData:TPenData);
begin
{*
 004C46F8    push        esi
 004C46F9    push        edi
 004C46FA    mov         eax,dword ptr [eax+10]
 004C46FD    lea         esi,[eax+14]
 004C4700    mov         edi,edx
 004C4702    movs        dword ptr [edi],dword ptr [esi]
 004C4703    movs        dword ptr [edi],dword ptr [esi]
 004C4704    movs        dword ptr [edi],dword ptr [esi]
 004C4705    movs        dword ptr [edi],dword ptr [esi]
 004C4706    xor         eax,eax
 004C4708    mov         dword ptr [edx],eax
 004C470A    pop         edi
 004C470B    pop         esi
 004C470C    ret
*}
end;

//004C4710
procedure TBrush.SetData(const BrushData:TBrushData);
begin
{*
 004C4710    push        ebp
 004C4711    mov         ebp,esp
 004C4713    push        ecx
 004C4714    push        ebx
 004C4715    mov         ebx,edx
 004C4717    mov         dword ptr [ebp-4],eax
 004C471A    mov         eax,dword ptr [ebp-4]
 004C471D    call        TGraphicsObject.Lock
 004C4722    xor         eax,eax
 004C4724    push        ebp
 004C4725    push        4C4755
 004C472A    push        dword ptr fs:[eax]
 004C472D    mov         dword ptr fs:[eax],esp
 004C4730    mov         ecx,ebx
 004C4732    mov         edx,dword ptr [ebp-4]
 004C4735    mov         eax,[007CA49C];gvar_007CA49C
 004C473A    call        TResourceManager.ChangeResource
 004C473F    xor         eax,eax
 004C4741    pop         edx
 004C4742    pop         ecx
 004C4743    pop         ecx
 004C4744    mov         dword ptr fs:[eax],edx
 004C4747    push        4C475C
 004C474C    mov         eax,dword ptr [ebp-4]
 004C474F    call        TGraphicsObject.Unlock
 004C4754    ret
>004C4755    jmp         @HandleFinally
>004C475A    jmp         004C474C
 004C475C    pop         ebx
 004C475D    pop         ecx
 004C475E    pop         ebp
 004C475F    ret
*}
end;

//004C4760
{*function TPen.GetColor:?;
begin
 004C4760    mov         eax,dword ptr [eax+10];TPen.FResource:PResource
 004C4763    mov         eax,dword ptr [eax+18]
 004C4766    ret
end;*}

//004C4768
procedure TPen.SetColor(Value:UITypes.TColor);
begin
{*
 004C4768    push        ebx
 004C4769    push        esi
 004C476A    add         esp,0FFFFFFF0
 004C476D    mov         esi,edx
 004C476F    mov         ebx,eax
 004C4771    mov         eax,dword ptr [ebx+10]
 004C4774    cmp         esi,dword ptr [eax+18]
>004C4777    je          004C478F
 004C4779    mov         edx,esp
 004C477B    mov         eax,ebx
 004C477D    call        TPen.GetData
 004C4782    mov         dword ptr [esp+4],esi
 004C4786    mov         edx,esp
 004C4788    mov         eax,ebx
 004C478A    call        TBrush.SetData
 004C478F    add         esp,10
 004C4792    pop         esi
 004C4793    pop         ebx
 004C4794    ret
*}
end;

//004C4798
function TPen.GetHandle:HPEN;
begin
{*
 004C4798    push        ebp
 004C4799    mov         ebp,esp
 004C479B    add         esp,0FFFFFFE4
 004C479E    mov         eax,dword ptr [eax+10]
 004C47A1    mov         dword ptr [ebp-4],eax
 004C47A4    mov         eax,dword ptr [ebp-4]
 004C47A7    cmp         dword ptr [eax+8],0
>004C47AB    jne         004C483D
 004C47B1    mov         eax,[007CA49C];gvar_007CA49C
 004C47B6    mov         dword ptr [ebp-8],eax
 004C47B9    mov         eax,dword ptr [ebp-8]
 004C47BC    add         eax,8
 004C47BF    push        eax
 004C47C0    call        kernel32.EnterCriticalSection
 004C47C5    xor         eax,eax
 004C47C7    push        ebp
 004C47C8    push        4C4836
 004C47CD    push        dword ptr fs:[eax]
 004C47D0    mov         dword ptr fs:[eax],esp
 004C47D3    mov         eax,dword ptr [ebp-4]
 004C47D6    cmp         dword ptr [eax+8],0
>004C47DA    jne         004C4814
 004C47DC    mov         eax,dword ptr [ebp-4]
 004C47DF    movzx       eax,byte ptr [eax+20]
 004C47E3    movzx       eax,word ptr [eax*2+7A0FF2]
 004C47EB    mov         dword ptr [ebp-1C],eax
 004C47EE    mov         eax,dword ptr [ebp-4]
 004C47F1    mov         eax,dword ptr [eax+1C]
 004C47F4    mov         dword ptr [ebp-18],eax
 004C47F7    mov         eax,dword ptr [ebp-4]
 004C47FA    mov         eax,dword ptr [eax+18]
 004C47FD    call        ColorToRGB
 004C4802    mov         dword ptr [ebp-10],eax
 004C4805    lea         eax,[ebp-1C]
 004C4808    push        eax
 004C4809    call        gdi32.CreatePenIndirect
 004C480E    mov         edx,dword ptr [ebp-4]
 004C4811    mov         dword ptr [edx+8],eax
 004C4814    xor         eax,eax
 004C4816    pop         edx
 004C4817    pop         ecx
 004C4818    pop         ecx
 004C4819    mov         dword ptr fs:[eax],edx
 004C481C    push        4C483D
 004C4821    mov         eax,[007CA49C];gvar_007CA49C
 004C4826    mov         dword ptr [ebp-0C],eax
 004C4829    mov         eax,dword ptr [ebp-0C]
 004C482C    add         eax,8
 004C482F    push        eax
 004C4830    call        kernel32.LeaveCriticalSection
 004C4835    ret
>004C4836    jmp         @HandleFinally
>004C483B    jmp         004C4821
 004C483D    mov         eax,dword ptr [ebp-4]
 004C4840    mov         eax,dword ptr [eax+8]
 004C4843    mov         esp,ebp
 004C4845    pop         ebp
 004C4846    ret
*}
end;

//004C4848
{*procedure sub_004C4848(?:?; ?:?);
begin
 004C4848    push        ebx
 004C4849    push        esi
 004C484A    add         esp,0FFFFFFF0
 004C484D    mov         esi,edx
 004C484F    mov         ebx,eax
 004C4851    mov         edx,esp
 004C4853    mov         eax,esi
 004C4855    call        GetPenData
 004C485A    mov         edx,esp
 004C485C    mov         eax,ebx
 004C485E    call        TBrush.SetData
 004C4863    add         esp,10
 004C4866    pop         esi
 004C4867    pop         ebx
 004C4868    ret
end;*}

//004C486C
procedure TPen.SetMode(Value:TPenMode);
begin
{*
 004C486C    cmp         dl,byte ptr [eax+18]
>004C486F    je          004C4879
 004C4871    mov         byte ptr [eax+18],dl
 004C4874    mov         edx,dword ptr [eax]
 004C4876    call        dword ptr [edx+0C]
 004C4879    ret
*}
end;

//004C487C
function TBrush.GetStyle:TBrushStyle;
begin
{*
 004C487C    mov         eax,dword ptr [eax+10]
 004C487F    movzx       eax,byte ptr [eax+20]
 004C4883    ret
*}
end;

//004C4884
procedure TPen.SetStyle(Value:TPenStyle);
begin
{*
 004C4884    push        ebx
 004C4885    push        esi
 004C4886    add         esp,0FFFFFFF0
 004C4889    mov         ebx,edx
 004C488B    mov         esi,eax
 004C488D    mov         eax,esi
 004C488F    call        TBrush.GetStyle
 004C4894    cmp         bl,al
>004C4896    je          004C48AE
 004C4898    mov         edx,esp
 004C489A    mov         eax,esi
 004C489C    call        TPen.GetData
 004C48A1    mov         byte ptr [esp+0C],bl
 004C48A5    mov         edx,esp
 004C48A7    mov         eax,esi
 004C48A9    call        TBrush.SetData
 004C48AE    add         esp,10
 004C48B1    pop         esi
 004C48B2    pop         ebx
 004C48B3    ret
*}
end;

//004C48B4
{*function TPen.GetWidth:?;
begin
 004C48B4    mov         eax,dword ptr [eax+10];TPen.FResource:PResource
 004C48B7    mov         eax,dword ptr [eax+1C]
 004C48BA    ret
end;*}

//004C48BC
procedure TPen.SetWidth(Value:Integer);
begin
{*
 004C48BC    push        ebx
 004C48BD    push        esi
 004C48BE    add         esp,0FFFFFFF0
 004C48C1    mov         esi,edx
 004C48C3    mov         ebx,eax
 004C48C5    test        esi,esi
>004C48C7    jl          004C48E7
 004C48C9    mov         eax,dword ptr [ebx+10]
 004C48CC    cmp         esi,dword ptr [eax+1C]
>004C48CF    je          004C48E7
 004C48D1    mov         edx,esp
 004C48D3    mov         eax,ebx
 004C48D5    call        TPen.GetData
 004C48DA    mov         dword ptr [esp+8],esi
 004C48DE    mov         edx,esp
 004C48E0    mov         eax,ebx
 004C48E2    call        TBrush.SetData
 004C48E7    add         esp,10
 004C48EA    pop         esi
 004C48EB    pop         ebx
 004C48EC    ret
*}
end;

//004C48F0
function GetBrushData(Brush:Windows.HBRUSH):TBrushData;
begin
{*
 004C48F0    push        ebx
 004C48F1    push        esi
 004C48F2    push        edi
 004C48F3    add         esp,0FFFFFFF4
 004C48F6    mov         ebx,edx
 004C48F8    mov         esi,eax
 004C48FA    push        esi
 004C48FB    mov         edi,ebx
 004C48FD    mov         esi,7A1004
 004C4902    movs        dword ptr [edi],dword ptr [esi]
 004C4903    movs        dword ptr [edi],dword ptr [esi]
 004C4904    movs        dword ptr [edi],dword ptr [esi]
 004C4905    movs        dword ptr [edi],dword ptr [esi]
 004C4906    pop         esi
 004C4907    test        esi,esi
>004C4909    je          004C496F
 004C490B    push        esp
 004C490C    push        0C
 004C490E    push        esi
 004C490F    call        gdi32.GetObjectW
 004C4914    test        eax,eax
>004C4916    je          004C496F
 004C4918    mov         eax,dword ptr [esp]
 004C491B    sub         eax,1
>004C491E    jb          004C4929
>004C4920    je          004C492F
 004C4922    sub         eax,2
>004C4925    je          004C4935
>004C4927    jmp         004C495C
 004C4929    mov         byte ptr [ebx+0C],0
>004C492D    jmp         004C4966
 004C492F    mov         byte ptr [ebx+0C],1
>004C4933    jmp         004C4966
 004C4935    cmp         dword ptr [ebx+8],0
>004C4939    jne         004C494E
 004C493B    mov         dl,1
 004C493D    mov         eax,[004C1D10];TBitmap
 004C4942    call        TBitmap.Create
 004C4947    mov         dword ptr [ebx+8],eax
 004C494A    mov         byte ptr [ebx+0D],1
 004C494E    mov         eax,dword ptr [ebx+8]
 004C4951    mov         edx,dword ptr [esp+8]
 004C4955    call        TBitmap.SetHandle
>004C495A    jmp         004C4966
 004C495C    movzx       eax,byte ptr [esp+8]
 004C4961    add         al,2
 004C4963    mov         byte ptr [ebx+0C],al
 004C4966    mov         eax,dword ptr [esp+4]
 004C496A    mov         dword ptr [ebx+4],eax
 004C496D    mov         dword ptr [ebx],esi
 004C496F    add         esp,0C
 004C4972    pop         edi
 004C4973    pop         esi
 004C4974    pop         ebx
 004C4975    ret
*}
end;

//004C4978
constructor TBrush.Create();
begin
{*
 004C4978    push        ebx
 004C4979    push        esi
 004C497A    test        dl,dl
>004C497C    je          004C4986
 004C497E    add         esp,0FFFFFFF0
 004C4981    call        @ClassCreate
 004C4986    mov         ebx,edx
 004C4988    mov         esi,eax
 004C498A    xor         edx,edx
 004C498C    mov         eax,esi
 004C498E    call        TObject.Create
 004C4993    mov         edx,7A1004
 004C4998    mov         eax,[007CA4A0];gvar_007CA4A0
 004C499D    call        TResourceManager.AllocResource
 004C49A2    mov         dword ptr [esi+10],eax
 004C49A5    mov         eax,esi
 004C49A7    test        bl,bl
>004C49A9    je          004C49BA
 004C49AB    call        @AfterConstruction
 004C49B0    pop         dword ptr fs:[0]
 004C49B7    add         esp,0C
 004C49BA    mov         eax,esi
 004C49BC    pop         esi
 004C49BD    pop         ebx
 004C49BE    ret
*}
end;

//004C49C0
destructor TBrush.Destroy();
begin
{*
 004C49C0    push        ebx
 004C49C1    push        esi
 004C49C2    call        @BeforeDestruction
 004C49C7    mov         ebx,edx
 004C49C9    mov         esi,eax
 004C49CB    mov         edx,dword ptr [esi+10];TBrush.FResource:PResource
 004C49CE    mov         eax,[007CA4A0];gvar_007CA4A0
 004C49D3    call        TResourceManager.FreeResource
 004C49D8    mov         dl,0FC
 004C49DA    and         dl,bl
 004C49DC    mov         eax,esi
 004C49DE    call        TMemoryStream.Destroy
 004C49E3    test        bl,bl
>004C49E5    jle         004C49EE
 004C49E7    mov         eax,esi
 004C49E9    call        @ClassDestroy
 004C49EE    pop         esi
 004C49EF    pop         ebx
 004C49F0    ret
*}
end;

//004C49F4
procedure TBrush.Assign(Source:TPersistent);
begin
{*
 004C49F4    push        ebp
 004C49F5    mov         ebp,esp
 004C49F7    add         esp,0FFFFFFF8
 004C49FA    push        ebx
 004C49FB    mov         dword ptr [ebp-8],edx
 004C49FE    mov         dword ptr [ebp-4],eax
 004C4A01    mov         eax,dword ptr [ebp-8]
 004C4A04    mov         edx,dword ptr ds:[4BE308];TBrush
 004C4A0A    call        @IsClass
 004C4A0F    test        al,al
>004C4A11    je          004C4A8B
 004C4A13    mov         eax,dword ptr [ebp-4]
 004C4A16    call        TGraphicsObject.Lock
 004C4A1B    xor         eax,eax
 004C4A1D    push        ebp
 004C4A1E    push        4C4A84
 004C4A23    push        dword ptr fs:[eax]
 004C4A26    mov         dword ptr fs:[eax],esp
 004C4A29    mov         ebx,dword ptr [ebp-8]
 004C4A2C    mov         eax,ebx
 004C4A2E    call        TGraphicsObject.Lock
 004C4A33    xor         eax,eax
 004C4A35    push        ebp
 004C4A36    push        4C4A67
 004C4A3B    push        dword ptr fs:[eax]
 004C4A3E    mov         dword ptr fs:[eax],esp
 004C4A41    mov         ecx,dword ptr [ebx+10]
 004C4A44    mov         edx,dword ptr [ebp-4]
 004C4A47    mov         eax,[007CA4A0];gvar_007CA4A0
 004C4A4C    call        TResourceManager.AssignResource
 004C4A51    xor         eax,eax
 004C4A53    pop         edx
 004C4A54    pop         ecx
 004C4A55    pop         ecx
 004C4A56    mov         dword ptr fs:[eax],edx
 004C4A59    push        4C4A6E
 004C4A5E    mov         eax,dword ptr [ebp-8]
 004C4A61    call        TGraphicsObject.Unlock
 004C4A66    ret
>004C4A67    jmp         @HandleFinally
>004C4A6C    jmp         004C4A5E
 004C4A6E    xor         eax,eax
 004C4A70    pop         edx
 004C4A71    pop         ecx
 004C4A72    pop         ecx
 004C4A73    mov         dword ptr fs:[eax],edx
 004C4A76    push        4C4A96
 004C4A7B    mov         eax,dword ptr [ebp-4]
 004C4A7E    call        TGraphicsObject.Unlock
 004C4A83    ret
>004C4A84    jmp         @HandleFinally
>004C4A89    jmp         004C4A7B
 004C4A8B    mov         edx,dword ptr [ebp-8]
 004C4A8E    mov         eax,dword ptr [ebp-4]
 004C4A91    call        TPersistent.Assign
 004C4A96    pop         ebx
 004C4A97    pop         ecx
 004C4A98    pop         ecx
 004C4A99    pop         ebp
 004C4A9A    ret
*}
end;

//004C4A9C
procedure TBrush.GetData(var BrushData:TBrushData);
begin
{*
 004C4A9C    push        esi
 004C4A9D    push        edi
 004C4A9E    mov         eax,dword ptr [eax+10]
 004C4AA1    lea         esi,[eax+14]
 004C4AA4    mov         edi,edx
 004C4AA6    movs        dword ptr [edi],dword ptr [esi]
 004C4AA7    movs        dword ptr [edi],dword ptr [esi]
 004C4AA8    movs        dword ptr [edi],dword ptr [esi]
 004C4AA9    movs        dword ptr [edi],dword ptr [esi]
 004C4AAA    xor         eax,eax
 004C4AAC    mov         dword ptr [edx],eax
 004C4AAE    xor         eax,eax
 004C4AB0    mov         dword ptr [edx+8],eax
 004C4AB3    pop         edi
 004C4AB4    pop         esi
 004C4AB5    ret
*}
end;

//004C4AB8
procedure TPen.SetData(const PenData:TPenData);
begin
{*
 004C4AB8    push        ebp
 004C4AB9    mov         ebp,esp
 004C4ABB    push        ecx
 004C4ABC    push        ebx
 004C4ABD    mov         ebx,edx
 004C4ABF    mov         dword ptr [ebp-4],eax
 004C4AC2    mov         eax,dword ptr [ebp-4]
 004C4AC5    call        TGraphicsObject.Lock
 004C4ACA    xor         eax,eax
 004C4ACC    push        ebp
 004C4ACD    push        4C4AFD
 004C4AD2    push        dword ptr fs:[eax]
 004C4AD5    mov         dword ptr fs:[eax],esp
 004C4AD8    mov         ecx,ebx
 004C4ADA    mov         edx,dword ptr [ebp-4]
 004C4ADD    mov         eax,[007CA4A0];gvar_007CA4A0
 004C4AE2    call        TResourceManager.ChangeResource
 004C4AE7    xor         eax,eax
 004C4AE9    pop         edx
 004C4AEA    pop         ecx
 004C4AEB    pop         ecx
 004C4AEC    mov         dword ptr fs:[eax],edx
 004C4AEF    push        4C4B04
 004C4AF4    mov         eax,dword ptr [ebp-4]
 004C4AF7    call        TGraphicsObject.Unlock
 004C4AFC    ret
>004C4AFD    jmp         @HandleFinally
>004C4B02    jmp         004C4AF4
 004C4B04    pop         ebx
 004C4B05    pop         ecx
 004C4B06    pop         ebp
 004C4B07    ret
*}
end;

//004C4B10
procedure TBrush.SetBitmap(Value:TBitmap);
begin
{*
 004C4B10    push        esi
 004C4B11    push        edi
 004C4B12    add         esp,0FFFFFFF0
 004C4B15    mov         esi,7A1004
 004C4B1A    mov         edi,esp
 004C4B1C    movs        dword ptr [edi],dword ptr [esi]
 004C4B1D    movs        dword ptr [edi],dword ptr [esi]
 004C4B1E    movs        dword ptr [edi],dword ptr [esi]
 004C4B1F    movs        dword ptr [edi],dword ptr [esi]
 004C4B20    mov         dword ptr [esp+8],edx
 004C4B24    mov         edx,esp
 004C4B26    call        TPen.SetData
 004C4B2B    add         esp,10
 004C4B2E    pop         edi
 004C4B2F    pop         esi
 004C4B30    ret
*}
end;

//004C4B34
{*function TBrush.GetColor:?;
begin
 004C4B34    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 004C4B37    mov         eax,dword ptr [eax+18]
 004C4B3A    ret
end;*}

//004C4B3C
procedure TBrush.SetColor(Value:UITypes.TColor);
begin
{*
 004C4B3C    push        ebx
 004C4B3D    push        esi
 004C4B3E    add         esp,0FFFFFFF0
 004C4B41    mov         esi,edx
 004C4B43    mov         ebx,eax
 004C4B45    mov         eax,dword ptr [ebx+10]
 004C4B48    cmp         esi,dword ptr [eax+18]
>004C4B4B    je          004C4B51
 004C4B4D    mov         al,1
>004C4B4F    jmp         004C4B6D
 004C4B51    mov         eax,ebx
 004C4B53    call        TPen.GetStyle
 004C4B58    cmp         al,1
>004C4B5A    jne         004C4B67
 004C4B5C    mov         eax,ebx
 004C4B5E    call        TPen.GetStyle
 004C4B63    test        al,al
>004C4B65    jne         004C4B6B
 004C4B67    xor         eax,eax
>004C4B69    jmp         004C4B6D
 004C4B6B    mov         al,1
 004C4B6D    test        al,al
>004C4B6F    je          004C4B93
 004C4B71    mov         edx,esp
 004C4B73    mov         eax,ebx
 004C4B75    call        TBrush.GetData
 004C4B7A    mov         dword ptr [esp+4],esi
 004C4B7E    cmp         byte ptr [esp+0C],1
>004C4B83    jne         004C4B8A
 004C4B85    mov         byte ptr [esp+0C],0
 004C4B8A    mov         edx,esp
 004C4B8C    mov         eax,ebx
 004C4B8E    call        TPen.SetData
 004C4B93    add         esp,10
 004C4B96    pop         esi
 004C4B97    pop         ebx
 004C4B98    ret
*}
end;

//004C4B9C
function TBrush.GetHandle:HBRUSH;
begin
{*
 004C4B9C    push        ebp
 004C4B9D    mov         ebp,esp
 004C4B9F    add         esp,0FFFFFFE8
 004C4BA2    mov         eax,dword ptr [eax+10]
 004C4BA5    mov         dword ptr [ebp-4],eax
 004C4BA8    mov         eax,dword ptr [ebp-4]
 004C4BAB    cmp         dword ptr [eax+8],0
>004C4BAF    jne         004C4C85
 004C4BB5    mov         eax,[007CA4A0];gvar_007CA4A0
 004C4BBA    mov         dword ptr [ebp-8],eax
 004C4BBD    mov         eax,dword ptr [ebp-8]
 004C4BC0    add         eax,8
 004C4BC3    push        eax
 004C4BC4    call        kernel32.EnterCriticalSection
 004C4BC9    xor         edx,edx
 004C4BCB    push        ebp
 004C4BCC    push        4C4C7E
 004C4BD1    push        dword ptr fs:[edx]
 004C4BD4    mov         dword ptr fs:[edx],esp
 004C4BD7    mov         eax,dword ptr [ebp-4]
 004C4BDA    cmp         dword ptr [eax+8],0
>004C4BDE    jne         004C4C5C
 004C4BE0    mov         eax,dword ptr [ebp-4]
 004C4BE3    mov         eax,dword ptr [eax+1C]
 004C4BE6    test        eax,eax
>004C4BE8    je          004C4C08
 004C4BEA    mov         dword ptr [ebp-18],3
 004C4BF1    mov         dl,1
 004C4BF3    mov         ecx,dword ptr [eax]
 004C4BF5    call        dword ptr [ecx+78]
 004C4BF8    mov         eax,dword ptr [ebp-4]
 004C4BFB    mov         eax,dword ptr [eax+1C]
 004C4BFE    mov         edx,dword ptr [eax]
 004C4C00    call        dword ptr [edx+70]
 004C4C03    mov         dword ptr [ebp-10],eax
>004C4C06    jmp         004C4C3F
 004C4C08    xor         eax,eax
 004C4C0A    mov         dword ptr [ebp-10],eax
 004C4C0D    mov         eax,dword ptr [ebp-4]
 004C4C10    movzx       eax,byte ptr [eax+20]
 004C4C14    mov         edx,eax
 004C4C16    sub         dl,1
>004C4C19    jb          004C4C1F
>004C4C1B    je          004C4C26
>004C4C1D    jmp         004C4C2F
 004C4C1F    xor         eax,eax
 004C4C21    mov         dword ptr [ebp-18],eax
>004C4C24    jmp         004C4C3F
 004C4C26    mov         dword ptr [ebp-18],1
>004C4C2D    jmp         004C4C3F
 004C4C2F    mov         dword ptr [ebp-18],2
 004C4C36    and         eax,7F
 004C4C39    sub         eax,2
 004C4C3C    mov         dword ptr [ebp-10],eax
 004C4C3F    mov         eax,dword ptr [ebp-4]
 004C4C42    mov         eax,dword ptr [eax+18]
 004C4C45    call        ColorToRGB
 004C4C4A    mov         dword ptr [ebp-14],eax
 004C4C4D    lea         eax,[ebp-18]
 004C4C50    push        eax
 004C4C51    call        gdi32.CreateBrushIndirect
 004C4C56    mov         edx,dword ptr [ebp-4]
 004C4C59    mov         dword ptr [edx+8],eax
 004C4C5C    xor         eax,eax
 004C4C5E    pop         edx
 004C4C5F    pop         ecx
 004C4C60    pop         ecx
 004C4C61    mov         dword ptr fs:[eax],edx
 004C4C64    push        4C4C85
 004C4C69    mov         eax,[007CA4A0];gvar_007CA4A0
 004C4C6E    mov         dword ptr [ebp-0C],eax
 004C4C71    mov         eax,dword ptr [ebp-0C]
 004C4C74    add         eax,8
 004C4C77    push        eax
 004C4C78    call        kernel32.LeaveCriticalSection
 004C4C7D    ret
>004C4C7E    jmp         @HandleFinally
>004C4C83    jmp         004C4C69
 004C4C85    mov         eax,dword ptr [ebp-4]
 004C4C88    mov         eax,dword ptr [eax+8]
 004C4C8B    mov         esp,ebp
 004C4C8D    pop         ebp
 004C4C8E    ret
*}
end;

//004C4CB4
function TPen.GetStyle:TPenStyle;
begin
{*
 004C4CB4    mov         eax,dword ptr [eax+10]
 004C4CB7    movzx       eax,byte ptr [eax+20]
 004C4CBB    ret
*}
end;

//004C4CBC
procedure TBrush.SetStyle(Value:TBrushStyle);
begin
{*
 004C4CBC    push        ebx
 004C4CBD    push        esi
 004C4CBE    add         esp,0FFFFFFF0
 004C4CC1    mov         ebx,edx
 004C4CC3    mov         esi,eax
 004C4CC5    mov         eax,dword ptr [esi+10]
 004C4CC8    movzx       edx,byte ptr [eax+20]
 004C4CCC    cmp         bl,dl
>004C4CCE    je          004C4CD4
 004C4CD0    mov         al,1
>004C4CD2    jmp         004C4CE7
 004C4CD4    cmp         bl,1
>004C4CD7    jne         004C4CE5
 004C4CD9    cmp         dword ptr [eax+18],0FFFFFF
 004C4CE0    setne       al
>004C4CE3    jmp         004C4CE7
 004C4CE5    xor         eax,eax
 004C4CE7    test        al,al
>004C4CE9    je          004C4D0F
 004C4CEB    mov         edx,esp
 004C4CED    mov         eax,esi
 004C4CEF    call        TBrush.GetData
 004C4CF4    mov         eax,ebx
 004C4CF6    mov         byte ptr [esp+0C],al
 004C4CFA    cmp         al,1
>004C4CFC    jne         004C4D06
 004C4CFE    mov         dword ptr [esp+4],0FFFFFF
 004C4D06    mov         edx,esp
 004C4D08    mov         eax,esi
 004C4D0A    call        TPen.SetData
 004C4D0F    add         esp,10
 004C4D12    pop         esi
 004C4D13    pop         ebx
 004C4D14    ret
*}
end;

//004C4D18
procedure TGraphicsObject.Changed;
begin
{*
 004C4D18    push        ebx
 004C4D19    cmp         word ptr [eax+0A],0
>004C4D1E    je          004C4D2A
 004C4D20    mov         ebx,eax
 004C4D22    mov         edx,eax
 004C4D24    mov         eax,dword ptr [ebx+0C]
 004C4D27    call        dword ptr [ebx+8]
 004C4D2A    pop         ebx
 004C4D2B    ret
*}
end;

//004C4D2C
procedure TCustomCanvas.Changing;
begin
{*
 004C4D2C    push        ebx
 004C4D2D    cmp         word ptr [eax+12],0
>004C4D32    je          004C4D3E
 004C4D34    mov         ebx,eax
 004C4D36    mov         edx,eax
 004C4D38    mov         eax,dword ptr [ebx+14]
 004C4D3B    call        dword ptr [ebx+10]
 004C4D3E    pop         ebx
 004C4D3F    ret
*}
end;

//004C4D40
procedure TCustomCanvas.Lock;
begin
{*
 004C4D40    push        ebx
 004C4D41    mov         ebx,eax
 004C4D43    push        7CA480;gvar_007CA480
 004C4D48    call        kernel32.EnterCriticalSection
 004C4D4D    inc         dword ptr [ebx+34]
 004C4D50    push        7CA480;gvar_007CA480
 004C4D55    call        kernel32.LeaveCriticalSection
 004C4D5A    lea         eax,[ebx+1C]
 004C4D5D    push        eax
 004C4D5E    call        kernel32.EnterCriticalSection
 004C4D63    pop         ebx
 004C4D64    ret
*}
end;

//004C4D68
procedure TCustomCanvas.Rectangle(Rect:TRect);
begin
{*
 004C4D68    push        ebx
 004C4D69    mov         ecx,dword ptr [edx+8]
 004C4D6C    push        ecx
 004C4D6D    mov         ecx,dword ptr [edx+0C]
 004C4D70    push        ecx
 004C4D71    mov         ecx,dword ptr [edx+4]
 004C4D74    mov         edx,dword ptr [edx]
 004C4D76    mov         ebx,dword ptr [eax]
 004C4D78    call        dword ptr [ebx+7C]
 004C4D7B    pop         ebx
 004C4D7C    ret
*}
end;

//004C4D80
function TCustomCanvas.TextHeight(Text:string):Integer;
begin
{*
 004C4D80    push        ebx
 004C4D81    push        esi
 004C4D82    add         esp,0FFFFFFF8
 004C4D85    mov         esi,edx
 004C4D87    mov         ebx,eax
 004C4D89    mov         ecx,esp
 004C4D8B    mov         edx,esi
 004C4D8D    mov         eax,ebx
 004C4D8F    mov         ebx,dword ptr [eax]
 004C4D91    call        dword ptr [ebx+8C]
 004C4D97    mov         eax,dword ptr [esp+4]
 004C4D9B    pop         ecx
 004C4D9C    pop         edx
 004C4D9D    pop         esi
 004C4D9E    pop         ebx
 004C4D9F    ret
*}
end;

//004C4DA0
function TCustomCanvas.TextWidth(Text:string):Integer;
begin
{*
 004C4DA0    push        ebx
 004C4DA1    push        esi
 004C4DA2    add         esp,0FFFFFFF8
 004C4DA5    mov         esi,edx
 004C4DA7    mov         ebx,eax
 004C4DA9    mov         ecx,esp
 004C4DAB    mov         edx,esi
 004C4DAD    mov         eax,ebx
 004C4DAF    mov         ebx,dword ptr [eax]
 004C4DB1    call        dword ptr [ebx+8C]
 004C4DB7    mov         eax,dword ptr [esp]
 004C4DBA    pop         ecx
 004C4DBB    pop         edx
 004C4DBC    pop         esi
 004C4DBD    pop         ebx
 004C4DBE    ret
*}
end;

//004C4DC0
function TCustomCanvas.TryLock:Boolean;
begin
{*
 004C4DC0    push        ebp
 004C4DC1    mov         ebp,esp
 004C4DC3    push        ecx
 004C4DC4    push        ebx
 004C4DC5    mov         ebx,eax
 004C4DC7    push        7CA480;gvar_007CA480
 004C4DCC    call        kernel32.EnterCriticalSection
 004C4DD1    xor         eax,eax
 004C4DD3    push        ebp
 004C4DD4    push        4C4E0C
 004C4DD9    push        dword ptr fs:[eax]
 004C4DDC    mov         dword ptr fs:[eax],esp
 004C4DDF    cmp         dword ptr [ebx+34],0
 004C4DE3    sete        byte ptr [ebp-1]
 004C4DE7    cmp         byte ptr [ebp-1],0
>004C4DEB    je          004C4DF4
 004C4DED    mov         eax,ebx
 004C4DEF    call        TCustomCanvas.Lock
 004C4DF4    xor         eax,eax
 004C4DF6    pop         edx
 004C4DF7    pop         ecx
 004C4DF8    pop         ecx
 004C4DF9    mov         dword ptr fs:[eax],edx
 004C4DFC    push        4C4E13
 004C4E01    push        7CA480;gvar_007CA480
 004C4E06    call        kernel32.LeaveCriticalSection
 004C4E0B    ret
>004C4E0C    jmp         @HandleFinally
>004C4E11    jmp         004C4E01
 004C4E13    movzx       eax,byte ptr [ebp-1]
 004C4E17    pop         ebx
 004C4E18    pop         ecx
 004C4E19    pop         ebp
 004C4E1A    ret
*}
end;

//004C4E1C
procedure TCustomCanvas.Unlock;
begin
{*
 004C4E1C    push        ebx
 004C4E1D    mov         ebx,eax
 004C4E1F    lea         eax,[ebx+1C]
 004C4E22    push        eax
 004C4E23    call        kernel32.LeaveCriticalSection
 004C4E28    push        7CA480;gvar_007CA480
 004C4E2D    call        kernel32.EnterCriticalSection
 004C4E32    dec         dword ptr [ebx+34]
 004C4E35    push        7CA480;gvar_007CA480
 004C4E3A    call        kernel32.LeaveCriticalSection
 004C4E3F    pop         ebx
 004C4E40    ret
*}
end;

//004C4E44
constructor TCanvas.Create();
begin
{*
 004C4E44    push        ebx
 004C4E45    push        esi
 004C4E46    push        edi
 004C4E47    test        dl,dl
>004C4E49    je          004C4E53
 004C4E4B    add         esp,0FFFFFFF0
 004C4E4E    call        @ClassCreate
 004C4E53    mov         ebx,edx
 004C4E55    mov         edi,eax
 004C4E57    xor         edx,edx
 004C4E59    mov         eax,edi
 004C4E5B    call        TObject.Create
 004C4E60    lea         eax,[edi+1C]
 004C4E63    push        eax
 004C4E64    call        kernel32.InitializeCriticalSection
 004C4E69    mov         dl,1
 004C4E6B    mov         eax,[004BDD74];TFont
 004C4E70    call        TFont.Create
 004C4E75    mov         esi,eax
 004C4E77    mov         dword ptr [edi+40],esi
 004C4E7A    mov         dword ptr [esi+0C],edi
 004C4E7D    mov         dword ptr [esi+8],4C5F2C;TCanvas.FontChanged
 004C4E84    lea         eax,[edi+1C]
 004C4E87    mov         dword ptr [esi+14],eax
 004C4E8A    mov         dl,1
 004C4E8C    mov         eax,[004BE0F4];TPen
 004C4E91    call        TPen.Create
 004C4E96    mov         esi,eax
 004C4E98    mov         dword ptr [edi+44],esi
 004C4E9B    mov         dword ptr [esi+0C],edi
 004C4E9E    mov         dword ptr [esi+8],4C5F4C;TCanvas.PenChanged
 004C4EA5    lea         eax,[edi+1C]
 004C4EA8    mov         dword ptr [esi+14],eax
 004C4EAB    mov         dl,1
 004C4EAD    mov         eax,[004BE308];TBrush
 004C4EB2    call        TBrush.Create
 004C4EB7    mov         esi,eax
 004C4EB9    mov         dword ptr [edi+48],esi
 004C4EBC    mov         dword ptr [esi+0C],edi
 004C4EBF    mov         dword ptr [esi+8],4C5F6C;TCanvas.BrushChanged
 004C4EC6    lea         eax,[edi+1C]
 004C4EC9    mov         dword ptr [esi+14],eax
 004C4ECC    mov         dword ptr [edi+54],0CC0020
 004C4ED3    movzx       eax,byte ptr ds:[4C4F04]
 004C4EDA    mov         byte ptr [edi+3C],al
 004C4EDD    mov         edx,edi
 004C4EDF    mov         eax,[007CA4A4];gvar_007CA4A4
 004C4EE4    call        TThreadList.Add
 004C4EE9    mov         eax,edi
 004C4EEB    test        bl,bl
>004C4EED    je          004C4EFE
 004C4EEF    call        @AfterConstruction
 004C4EF4    pop         dword ptr fs:[0]
 004C4EFB    add         esp,0C
 004C4EFE    mov         eax,edi
 004C4F00    pop         edi
 004C4F01    pop         esi
 004C4F02    pop         ebx
 004C4F03    ret
*}
end;

//004C4F08
destructor TCanvas.Destroy();
begin
{*
 004C4F08    push        ebx
 004C4F09    push        esi
 004C4F0A    call        @BeforeDestruction
 004C4F0F    mov         ebx,edx
 004C4F11    mov         esi,eax
 004C4F13    mov         cl,1
 004C4F15    mov         edx,esi
 004C4F17    mov         eax,[007CA4A4];gvar_007CA4A4
 004C4F1C    call        TThreadList.RemoveItem
 004C4F21    xor         edx,edx
 004C4F23    mov         eax,esi
 004C4F25    call        TCanvas.SetHandle
 004C4F2A    mov         eax,dword ptr [esi+40]
 004C4F2D    call        TObject.Free
 004C4F32    mov         eax,dword ptr [esi+44]
 004C4F35    call        TObject.Free
 004C4F3A    mov         eax,dword ptr [esi+48]
 004C4F3D    call        TObject.Free
 004C4F42    lea         eax,[esi+1C]
 004C4F45    push        eax
 004C4F46    call        kernel32.DeleteCriticalSection
 004C4F4B    mov         dl,0FC
 004C4F4D    and         dl,bl
 004C4F4F    mov         eax,esi
 004C4F51    call        TMemoryStream.Destroy
 004C4F56    test        bl,bl
>004C4F58    jle         004C4F61
 004C4F5A    mov         eax,esi
 004C4F5C    call        @ClassDestroy
 004C4F61    pop         esi
 004C4F62    pop         ebx
 004C4F63    ret
*}
end;

//004C4F64
procedure TCanvas.Arc(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);
begin
{*
 004C4F64    push        ebp
 004C4F65    mov         ebp,esp
 004C4F67    push        ebx
 004C4F68    push        esi
 004C4F69    push        edi
 004C4F6A    mov         edi,ecx
 004C4F6C    mov         esi,edx
 004C4F6E    mov         ebx,eax
 004C4F70    mov         eax,ebx
 004C4F72    mov         edx,dword ptr [eax]
 004C4F74    call        dword ptr [edx+28]
 004C4F77    movzx       edx,byte ptr ds:[4C4FB8]
 004C4F7E    mov         eax,ebx
 004C4F80    mov         ecx,dword ptr [eax]
 004C4F82    call        dword ptr [ecx+2C]
 004C4F85    mov         eax,dword ptr [ebp+8]
 004C4F88    push        eax
 004C4F89    mov         eax,dword ptr [ebp+0C]
 004C4F8C    push        eax
 004C4F8D    mov         eax,dword ptr [ebp+10]
 004C4F90    push        eax
 004C4F91    mov         eax,dword ptr [ebp+14]
 004C4F94    push        eax
 004C4F95    mov         eax,dword ptr [ebp+18]
 004C4F98    push        eax
 004C4F99    mov         eax,dword ptr [ebp+1C]
 004C4F9C    push        eax
 004C4F9D    push        edi
 004C4F9E    push        esi
 004C4F9F    mov         eax,dword ptr [ebx+38]
 004C4FA2    push        eax
 004C4FA3    call        gdi32.Arc
 004C4FA8    mov         eax,ebx
 004C4FAA    mov         edx,dword ptr [eax]
 004C4FAC    call        dword ptr [edx+24]
 004C4FAF    pop         edi
 004C4FB0    pop         esi
 004C4FB1    pop         ebx
 004C4FB2    pop         ebp
 004C4FB3    ret         18
*}
end;

//004C4FBC
procedure TCanvas.ArcTo(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);
begin
{*
 004C4FBC    push        ebp
 004C4FBD    mov         ebp,esp
 004C4FBF    push        ebx
 004C4FC0    push        esi
 004C4FC1    push        edi
 004C4FC2    mov         edi,ecx
 004C4FC4    mov         esi,edx
 004C4FC6    mov         ebx,eax
 004C4FC8    mov         eax,ebx
 004C4FCA    mov         edx,dword ptr [eax]
 004C4FCC    call        dword ptr [edx+28]
 004C4FCF    movzx       edx,byte ptr ds:[4C5010]
 004C4FD6    mov         eax,ebx
 004C4FD8    mov         ecx,dword ptr [eax]
 004C4FDA    call        dword ptr [ecx+2C]
 004C4FDD    mov         eax,dword ptr [ebp+8]
 004C4FE0    push        eax
 004C4FE1    mov         eax,dword ptr [ebp+0C]
 004C4FE4    push        eax
 004C4FE5    mov         eax,dword ptr [ebp+10]
 004C4FE8    push        eax
 004C4FE9    mov         eax,dword ptr [ebp+14]
 004C4FEC    push        eax
 004C4FED    mov         eax,dword ptr [ebp+18]
 004C4FF0    push        eax
 004C4FF1    mov         eax,dword ptr [ebp+1C]
 004C4FF4    push        eax
 004C4FF5    push        edi
 004C4FF6    push        esi
 004C4FF7    mov         eax,dword ptr [ebx+38]
 004C4FFA    push        eax
 004C4FFB    call        gdi32.ArcTo
 004C5000    mov         eax,ebx
 004C5002    mov         edx,dword ptr [eax]
 004C5004    call        dword ptr [edx+24]
 004C5007    pop         edi
 004C5008    pop         esi
 004C5009    pop         ebx
 004C500A    pop         ebp
 004C500B    ret         18
*}
end;

//004C5014
procedure TCanvas.AngleArc(X:Integer; Y:Integer; SweepAngle:Single; StartAngle:Single; Radius:Cardinal);
begin
{*
 004C5014    push        ebp
 004C5015    mov         ebp,esp
 004C5017    push        ebx
 004C5018    push        esi
 004C5019    push        edi
 004C501A    mov         edi,ecx
 004C501C    mov         esi,edx
 004C501E    mov         ebx,eax
 004C5020    mov         eax,ebx
 004C5022    mov         edx,dword ptr [eax]
 004C5024    call        dword ptr [edx+28]
 004C5027    movzx       edx,byte ptr ds:[4C5058]
 004C502E    mov         eax,ebx
 004C5030    mov         ecx,dword ptr [eax]
 004C5032    call        dword ptr [ecx+2C]
 004C5035    push        dword ptr [ebp+8]
 004C5038    push        dword ptr [ebp+0C]
 004C503B    mov         eax,dword ptr [ebp+10]
 004C503E    push        eax
 004C503F    push        edi
 004C5040    push        esi
 004C5041    mov         eax,dword ptr [ebx+38]
 004C5044    push        eax
 004C5045    call        gdi32.AngleArc
 004C504A    mov         eax,ebx
 004C504C    mov         edx,dword ptr [eax]
 004C504E    call        dword ptr [edx+24]
 004C5051    pop         edi
 004C5052    pop         esi
 004C5053    pop         ebx
 004C5054    pop         ebp
 004C5055    ret         0C
*}
end;

//004C505C
procedure TCanvas.BrushCopy(Dest:TRect; Bitmap:TBitmap; Color:TColor; Source:TRect);
begin
{*
 004C505C    push        ebp
 004C505D    mov         ebp,esp
 004C505F    add         esp,0FFFFFFD8
 004C5062    push        ebx
 004C5063    push        esi
 004C5064    push        edi
 004C5065    mov         dword ptr [ebp-8],ecx
 004C5068    mov         esi,edx
 004C506A    mov         dword ptr [ebp-4],eax
 004C506D    mov         ebx,dword ptr [ebp+0C]
 004C5070    cmp         dword ptr [ebp-8],0
>004C5074    je          004C530E
 004C507A    mov         eax,dword ptr [ebp-4]
 004C507D    call        TCustomCanvas.Lock
 004C5082    xor         edx,edx
 004C5084    push        ebp
 004C5085    push        4C5307
 004C508A    push        dword ptr fs:[edx]
 004C508D    mov         dword ptr fs:[edx],esp
 004C5090    mov         eax,dword ptr [ebp-4]
 004C5093    mov         edx,dword ptr [eax]
 004C5095    call        dword ptr [edx+28];TCustomCanvas.Changing
 004C5098    movzx       edx,byte ptr ds:[4C5318];0x9 gvar_004C5318
 004C509F    mov         eax,dword ptr [ebp-4]
 004C50A2    mov         ecx,dword ptr [eax]
 004C50A4    call        dword ptr [ecx+2C];TCanvas.RequiredState
 004C50A7    mov         eax,dword ptr [ebp-8]
 004C50AA    call        TBitmap.GetCanvas
 004C50AF    call        TCustomCanvas.Lock
 004C50B4    xor         edx,edx
 004C50B6    push        ebp
 004C50B7    push        4C52E2
 004C50BC    push        dword ptr fs:[edx]
 004C50BF    mov         dword ptr fs:[edx],esp
 004C50C2    mov         eax,dword ptr [esi+8];TRect.Right:LongInt
 004C50C5    sub         eax,dword ptr [esi]
 004C50C7    mov         dword ptr [ebp-10],eax
 004C50CA    mov         eax,dword ptr [esi+0C]
 004C50CD    sub         eax,dword ptr [esi+4]
 004C50D0    mov         dword ptr [ebp-14],eax
 004C50D3    mov         edi,dword ptr [ebx+8];TRect.Right:LongInt
 004C50D6    sub         edi,dword ptr [ebx]
 004C50D8    mov         eax,dword ptr [ebx+0C]
 004C50DB    sub         eax,dword ptr [ebx+4]
 004C50DE    mov         dword ptr [ebp-0C],eax
 004C50E1    mov         eax,dword ptr [ebp-8]
 004C50E4    call        TBitmap.GetTransparentColor
 004C50E9    cmp         eax,dword ptr [ebp+8]
>004C50EC    jne         004C511A
 004C50EE    xor         eax,eax
 004C50F0    mov         dword ptr [ebp-24],eax
 004C50F3    mov         eax,dword ptr [ebp-8]
 004C50F6    mov         edx,dword ptr [eax]
 004C50F8    call        dword ptr [edx+74];TBitmap.GetMaskHandle
 004C50FB    mov         dword ptr [ebp-28],eax
 004C50FE    push        0
 004C5100    call        gdi32.CreateCompatibleDC
 004C5105    mov         dword ptr [ebp-20],eax
 004C5108    mov         eax,dword ptr [ebp-28]
 004C510B    push        eax
 004C510C    mov         eax,dword ptr [ebp-20]
 004C510F    push        eax
 004C5110    call        gdi32.SelectObject
 004C5115    mov         dword ptr [ebp-28],eax
>004C5118    jmp         004C5166
 004C511A    mov         dl,1
 004C511C    mov         eax,[004C1D10];TBitmap
 004C5121    call        TBitmap.Create;TBitmap.Create
 004C5126    mov         dword ptr [ebp-24],eax
 004C5129    mov         edx,dword ptr [ebp-8]
 004C512C    mov         eax,dword ptr [ebp-24]
 004C512F    mov         ecx,dword ptr [eax]
 004C5131    call        dword ptr [ecx+8];TBitmap.Assign
 004C5134    mov         edx,dword ptr [ebp+8]
 004C5137    mov         eax,dword ptr [ebp-24]
 004C513A    call        TBitmap.Mask
 004C513F    mov         eax,dword ptr [ebp-24]
 004C5142    call        TBitmap.GetCanvas
 004C5147    movzx       edx,byte ptr ds:[4C531C];0x1 gvar_004C531C
 004C514E    mov         ecx,dword ptr [eax]
 004C5150    call        dword ptr [ecx+2C];TCanvas.RequiredState
 004C5153    mov         eax,dword ptr [ebp-24]
 004C5156    call        TBitmap.GetCanvas
 004C515B    mov         eax,dword ptr [eax+38];TCanvas.FHandle:HDC
 004C515E    mov         dword ptr [ebp-20],eax
 004C5161    xor         eax,eax
 004C5163    mov         dword ptr [ebp-28],eax
 004C5166    xor         edx,edx
 004C5168    push        ebp
 004C5169    push        4C52C0
 004C516E    push        dword ptr fs:[edx]
 004C5171    mov         dword ptr fs:[edx],esp
 004C5174    mov         eax,dword ptr [ebp-8]
 004C5177    call        TBitmap.GetCanvas
 004C517C    movzx       edx,byte ptr ds:[4C531C];0x1 gvar_004C531C
 004C5183    mov         ecx,dword ptr [eax]
 004C5185    call        dword ptr [ecx+2C];TCanvas.RequiredState
 004C5188    mov         eax,dword ptr [ebp-4]
 004C518B    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 004C518E    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 004C5191    movzx       eax,byte ptr [eax+20]
 004C5195    cmp         al,1
>004C5197    jne         004C51D9
 004C5199    mov         eax,dword ptr [ebp-10]
 004C519C    push        eax
 004C519D    mov         eax,dword ptr [ebp-14]
 004C51A0    push        eax
 004C51A1    mov         eax,dword ptr [ebp-8]
 004C51A4    call        TBitmap.GetCanvas
 004C51A9    mov         eax,dword ptr [eax+38];TCanvas.FHandle:HDC
 004C51AC    push        eax
 004C51AD    mov         eax,dword ptr [ebx]
 004C51AF    push        eax
 004C51B0    mov         eax,dword ptr [ebx+4];TRect.Top:LongInt
 004C51B3    push        eax
 004C51B4    push        edi
 004C51B5    mov         eax,dword ptr [ebp-0C]
 004C51B8    push        eax
 004C51B9    mov         eax,dword ptr [ebp-20]
 004C51BC    push        eax
 004C51BD    mov         eax,dword ptr [ebx]
 004C51BF    push        eax
 004C51C0    mov         eax,dword ptr [ebx+4];TRect.Top:LongInt
 004C51C3    push        eax
 004C51C4    mov         ecx,dword ptr [esi+4];TRect.Top:LongInt
 004C51C7    mov         edx,dword ptr [esi]
 004C51C9    mov         eax,dword ptr [ebp-4]
 004C51CC    mov         eax,dword ptr [eax+38];TCanvas.FHandle:HDC
 004C51CF    call        TransparentStretchBlt
>004C51D4    jmp         004C5286
 004C51D9    push        0CC0020
 004C51DE    mov         eax,dword ptr [ebp-0C]
 004C51E1    push        eax
 004C51E2    push        edi
 004C51E3    mov         eax,dword ptr [ebx+4];TRect.Top:LongInt
 004C51E6    push        eax
 004C51E7    mov         eax,dword ptr [ebx]
 004C51E9    push        eax
 004C51EA    mov         eax,dword ptr [ebp-8]
 004C51ED    call        TBitmap.GetCanvas
 004C51F2    mov         eax,dword ptr [eax+38];TCanvas.FHandle:HDC
 004C51F5    push        eax
 004C51F6    mov         eax,dword ptr [ebp-14]
 004C51F9    push        eax
 004C51FA    mov         eax,dword ptr [ebp-10]
 004C51FD    push        eax
 004C51FE    mov         eax,dword ptr [esi+4];TRect.Top:LongInt
 004C5201    push        eax
 004C5202    mov         eax,dword ptr [esi]
 004C5204    push        eax
 004C5205    mov         eax,dword ptr [ebp-4]
 004C5208    mov         eax,dword ptr [eax+38];TCanvas.FHandle:HDC
 004C520B    push        eax
 004C520C    call        gdi32.StretchBlt
 004C5211    push        0
 004C5213    mov         eax,dword ptr [ebp-4]
 004C5216    mov         eax,dword ptr [eax+38];TCanvas.FHandle:HDC
 004C5219    push        eax
 004C521A    call        gdi32.SetTextColor
 004C521F    mov         dword ptr [ebp-1C],eax
 004C5222    push        0FFFFFF
 004C5227    mov         eax,dword ptr [ebp-4]
 004C522A    mov         eax,dword ptr [eax+38];TCanvas.FHandle:HDC
 004C522D    push        eax
 004C522E    call        gdi32.SetBkColor
 004C5233    mov         dword ptr [ebp-18],eax
 004C5236    push        0E20746
 004C523B    mov         eax,dword ptr [ebp-0C]
 004C523E    push        eax
 004C523F    push        edi
 004C5240    mov         eax,dword ptr [ebx+4];TRect.Top:LongInt
 004C5243    push        eax
 004C5244    mov         eax,dword ptr [ebx]
 004C5246    push        eax
 004C5247    mov         eax,dword ptr [ebp-20]
 004C524A    push        eax
 004C524B    mov         eax,dword ptr [ebp-14]
 004C524E    push        eax
 004C524F    mov         eax,dword ptr [ebp-10]
 004C5252    push        eax
 004C5253    mov         eax,dword ptr [esi+4];TRect.Top:LongInt
 004C5256    push        eax
 004C5257    mov         eax,dword ptr [esi]
 004C5259    push        eax
 004C525A    mov         eax,dword ptr [ebp-4]
 004C525D    mov         eax,dword ptr [eax+38];TCanvas.FHandle:HDC
 004C5260    push        eax
 004C5261    call        gdi32.StretchBlt
 004C5266    mov         eax,dword ptr [ebp-1C]
 004C5269    push        eax
 004C526A    mov         eax,dword ptr [ebp-4]
 004C526D    mov         eax,dword ptr [eax+38];TCanvas.FHandle:HDC
 004C5270    push        eax
 004C5271    call        gdi32.SetTextColor
 004C5276    mov         eax,dword ptr [ebp-18]
 004C5279    push        eax
 004C527A    mov         eax,dword ptr [ebp-4]
 004C527D    mov         eax,dword ptr [eax+38];TCanvas.FHandle:HDC
 004C5280    push        eax
 004C5281    call        gdi32.SetBkColor
 004C5286    xor         eax,eax
 004C5288    pop         edx
 004C5289    pop         ecx
 004C528A    pop         ecx
 004C528B    mov         dword ptr fs:[eax],edx
 004C528E    push        4C52C7
 004C5293    cmp         dword ptr [ebp-24],0
>004C5297    je          004C52A3
 004C5299    mov         eax,dword ptr [ebp-24]
 004C529C    call        TObject.Free
>004C52A1    jmp         004C52BF
 004C52A3    cmp         dword ptr [ebp-28],0
>004C52A7    je          004C52B6
 004C52A9    mov         eax,dword ptr [ebp-28]
 004C52AC    push        eax
 004C52AD    mov         eax,dword ptr [ebp-20]
 004C52B0    push        eax
 004C52B1    call        gdi32.SelectObject
 004C52B6    mov         eax,dword ptr [ebp-20]
 004C52B9    push        eax
 004C52BA    call        gdi32.DeleteDC
 004C52BF    ret
>004C52C0    jmp         @HandleFinally
>004C52C5    jmp         004C5293
 004C52C7    xor         eax,eax
 004C52C9    pop         edx
 004C52CA    pop         ecx
 004C52CB    pop         ecx
 004C52CC    mov         dword ptr fs:[eax],edx
 004C52CF    push        4C52E9
 004C52D4    mov         eax,dword ptr [ebp-8]
 004C52D7    call        TBitmap.GetCanvas
 004C52DC    call        TCustomCanvas.Unlock
 004C52E1    ret
>004C52E2    jmp         @HandleFinally
>004C52E7    jmp         004C52D4
 004C52E9    mov         eax,dword ptr [ebp-4]
 004C52EC    mov         edx,dword ptr [eax]
 004C52EE    call        dword ptr [edx+24];TGraphicsObject.Changed
 004C52F1    xor         eax,eax
 004C52F3    pop         edx
 004C52F4    pop         ecx
 004C52F5    pop         ecx
 004C52F6    mov         dword ptr fs:[eax],edx
 004C52F9    push        4C530E
 004C52FE    mov         eax,dword ptr [ebp-4]
 004C5301    call        TCustomCanvas.Unlock
 004C5306    ret
>004C5307    jmp         @HandleFinally
>004C530C    jmp         004C52FE
 004C530E    pop         edi
 004C530F    pop         esi
 004C5310    pop         ebx
 004C5311    mov         esp,ebp
 004C5313    pop         ebp
 004C5314    ret         8
*}
end;

//004C5320
procedure TCanvas.Chord(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);
begin
{*
 004C5320    push        ebp
 004C5321    mov         ebp,esp
 004C5323    push        ebx
 004C5324    push        esi
 004C5325    push        edi
 004C5326    mov         edi,ecx
 004C5328    mov         esi,edx
 004C532A    mov         ebx,eax
 004C532C    mov         eax,ebx
 004C532E    mov         edx,dword ptr [eax]
 004C5330    call        dword ptr [edx+28]
 004C5333    movzx       edx,byte ptr ds:[4C5374]
 004C533A    mov         eax,ebx
 004C533C    mov         ecx,dword ptr [eax]
 004C533E    call        dword ptr [ecx+2C]
 004C5341    mov         eax,dword ptr [ebp+8]
 004C5344    push        eax
 004C5345    mov         eax,dword ptr [ebp+0C]
 004C5348    push        eax
 004C5349    mov         eax,dword ptr [ebp+10]
 004C534C    push        eax
 004C534D    mov         eax,dword ptr [ebp+14]
 004C5350    push        eax
 004C5351    mov         eax,dword ptr [ebp+18]
 004C5354    push        eax
 004C5355    mov         eax,dword ptr [ebp+1C]
 004C5358    push        eax
 004C5359    push        edi
 004C535A    push        esi
 004C535B    mov         eax,dword ptr [ebx+38]
 004C535E    push        eax
 004C535F    call        gdi32.Chord
 004C5364    mov         eax,ebx
 004C5366    mov         edx,dword ptr [eax]
 004C5368    call        dword ptr [edx+24]
 004C536B    pop         edi
 004C536C    pop         esi
 004C536D    pop         ebx
 004C536E    pop         ebp
 004C536F    ret         18
*}
end;

//004C5378
procedure TCanvas.CopyRect(Dest:TRect; Canvas:TCanvas; Source:TRect);
begin
{*
 004C5378    push        ebp
 004C5379    mov         ebp,esp
 004C537B    push        ecx
 004C537C    push        ebx
 004C537D    push        esi
 004C537E    push        edi
 004C537F    mov         dword ptr [ebp-4],ecx
 004C5382    mov         esi,edx
 004C5384    mov         ebx,eax
 004C5386    mov         edi,dword ptr [ebp+8]
 004C5389    mov         eax,ebx
 004C538B    mov         edx,dword ptr [eax]
 004C538D    call        dword ptr [edx+28]
 004C5390    movzx       edx,byte ptr ds:[4C53F8]
 004C5397    mov         eax,ebx
 004C5399    mov         ecx,dword ptr [eax]
 004C539B    call        dword ptr [ecx+2C]
 004C539E    movzx       edx,byte ptr ds:[4C53FC]
 004C53A5    mov         eax,dword ptr [ebp-4]
 004C53A8    mov         ecx,dword ptr [eax]
 004C53AA    call        dword ptr [ecx+2C]
 004C53AD    mov         edx,dword ptr [ebx+54]
 004C53B0    push        edx
 004C53B1    mov         edx,dword ptr [edi+0C]
 004C53B4    sub         edx,dword ptr [edi+4]
 004C53B7    push        edx
 004C53B8    mov         edx,dword ptr [edi+8]
 004C53BB    sub         edx,dword ptr [edi]
 004C53BD    push        edx
 004C53BE    mov         edx,dword ptr [edi+4]
 004C53C1    push        edx
 004C53C2    mov         edx,dword ptr [edi]
 004C53C4    push        edx
 004C53C5    mov         edx,dword ptr [ebp-4]
 004C53C8    mov         edx,dword ptr [edx+38]
 004C53CB    push        edx
 004C53CC    mov         edx,dword ptr [esi+0C]
 004C53CF    sub         edx,dword ptr [esi+4]
 004C53D2    push        edx
 004C53D3    mov         edx,dword ptr [esi+8]
 004C53D6    mov         eax,dword ptr [esi]
 004C53D8    sub         edx,eax
 004C53DA    push        edx
 004C53DB    mov         edx,dword ptr [esi+4]
 004C53DE    push        edx
 004C53DF    push        eax
 004C53E0    mov         eax,dword ptr [ebx+38]
 004C53E3    push        eax
 004C53E4    call        gdi32.StretchBlt
 004C53E9    mov         eax,ebx
 004C53EB    mov         edx,dword ptr [eax]
 004C53ED    call        dword ptr [edx+24]
 004C53F0    pop         edi
 004C53F1    pop         esi
 004C53F2    pop         ebx
 004C53F3    pop         ecx
 004C53F4    pop         ebp
 004C53F5    ret         4
*}
end;

//004C5400
procedure TCanvas.Draw(X:Integer; Y:Integer; Graphic:TGraphic);
begin
{*
 004C5400    push        ebp
 004C5401    mov         ebp,esp
 004C5403    add         esp,0FFFFFFE8
 004C5406    push        ebx
 004C5407    push        esi
 004C5408    push        edi
 004C5409    mov         dword ptr [ebp-4],ecx
 004C540C    mov         edi,edx
 004C540E    mov         ebx,eax
 004C5410    mov         esi,dword ptr [ebp+8]
 004C5413    test        esi,esi
>004C5415    je          004C54A5
 004C541B    mov         eax,esi
 004C541D    mov         edx,dword ptr [eax]
 004C541F    call        dword ptr [edx+20];TGraphic.GetEmpty
 004C5422    test        al,al
>004C5424    jne         004C54A5
 004C5426    mov         eax,ebx
 004C5428    mov         edx,dword ptr [eax]
 004C542A    call        dword ptr [edx+28];TCustomCanvas.Changing
 004C542D    movzx       edx,byte ptr ds:[4C54B0];0x1 gvar_004C54B0
 004C5434    mov         eax,ebx
 004C5436    mov         ecx,dword ptr [eax]
 004C5438    call        dword ptr [ecx+2C];TCanvas.RequiredState
 004C543B    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 004C543E    mov         dword ptr [ebp-8],eax
 004C5441    mov         eax,dword ptr [ebp-8]
 004C5444    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 004C5447    mov         eax,dword ptr [eax+18]
 004C544A    call        ColorToRGB
 004C544F    push        eax
 004C5450    mov         eax,dword ptr [ebx+38];TCanvas.FHandle:HDC
 004C5453    push        eax
 004C5454    call        gdi32.SetBkColor
 004C5459    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 004C545C    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 004C545F    call        ColorToRGB
 004C5464    push        eax
 004C5465    mov         eax,dword ptr [ebx+38];TCanvas.FHandle:HDC
 004C5468    push        eax
 004C5469    call        gdi32.SetTextColor
 004C546E    mov         eax,esi
 004C5470    mov         edx,dword ptr [eax]
 004C5472    call        dword ptr [edx+24];TGraphic.GetHeight
 004C5475    add         eax,dword ptr [ebp-4]
 004C5478    push        eax
 004C5479    lea         eax,[ebp-18]
 004C547C    push        eax
 004C547D    mov         eax,esi
 004C547F    mov         edx,dword ptr [eax]
 004C5481    call        dword ptr [edx+30];TGraphic.GetWidth
 004C5484    mov         ecx,eax
 004C5486    add         ecx,edi
 004C5488    mov         edx,dword ptr [ebp-4]
 004C548B    mov         eax,edi
 004C548D    call        Rect
 004C5492    lea         ecx,[ebp-18]
 004C5495    mov         edx,ebx
 004C5497    mov         eax,esi
 004C5499    mov         esi,dword ptr [eax]
 004C549B    call        dword ptr [esi+14];TGraphic.Draw
 004C549E    mov         eax,ebx
 004C54A0    mov         edx,dword ptr [eax]
 004C54A2    call        dword ptr [edx+24];TGraphicsObject.Changed
 004C54A5    pop         edi
 004C54A6    pop         esi
 004C54A7    pop         ebx
 004C54A8    mov         esp,ebp
 004C54AA    pop         ebp
 004C54AB    ret         4
*}
end;

//004C54B4
procedure TCanvas.Draw(X:Integer; Y:Integer; Opacity:Byte; Graphic:TGraphic);
begin
{*
 004C54B4    push        ebp
 004C54B5    mov         ebp,esp
 004C54B7    add         esp,0FFFFFFE8
 004C54BA    push        ebx
 004C54BB    push        esi
 004C54BC    push        edi
 004C54BD    mov         dword ptr [ebp-4],ecx
 004C54C0    mov         edi,edx
 004C54C2    mov         ebx,eax
 004C54C4    mov         esi,dword ptr [ebp+0C]
 004C54C7    test        esi,esi
>004C54C9    je          004C5562
 004C54CF    mov         eax,esi
 004C54D1    mov         edx,dword ptr [eax]
 004C54D3    call        dword ptr [edx+20];TGraphic.GetEmpty
 004C54D6    test        al,al
>004C54D8    jne         004C5562
 004C54DE    mov         eax,ebx
 004C54E0    mov         edx,dword ptr [eax]
 004C54E2    call        dword ptr [edx+28];TCustomCanvas.Changing
 004C54E5    movzx       edx,byte ptr ds:[4C556C];0x1 gvar_004C556C
 004C54EC    mov         eax,ebx
 004C54EE    mov         ecx,dword ptr [eax]
 004C54F0    call        dword ptr [ecx+2C];TCanvas.RequiredState
 004C54F3    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 004C54F6    mov         dword ptr [ebp-8],eax
 004C54F9    mov         eax,dword ptr [ebp-8]
 004C54FC    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 004C54FF    mov         eax,dword ptr [eax+18]
 004C5502    call        ColorToRGB
 004C5507    push        eax
 004C5508    mov         eax,dword ptr [ebx+38];TCanvas.FHandle:HDC
 004C550B    push        eax
 004C550C    call        gdi32.SetBkColor
 004C5511    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 004C5514    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 004C5517    call        ColorToRGB
 004C551C    push        eax
 004C551D    mov         eax,dword ptr [ebx+38];TCanvas.FHandle:HDC
 004C5520    push        eax
 004C5521    call        gdi32.SetTextColor
 004C5526    movzx       eax,byte ptr [ebp+8]
 004C552A    push        eax
 004C552B    mov         eax,esi
 004C552D    mov         edx,dword ptr [eax]
 004C552F    call        dword ptr [edx+24];TGraphic.GetHeight
 004C5532    add         eax,dword ptr [ebp-4]
 004C5535    push        eax
 004C5536    lea         eax,[ebp-18]
 004C5539    push        eax
 004C553A    mov         eax,esi
 004C553C    mov         edx,dword ptr [eax]
 004C553E    call        dword ptr [edx+30];TGraphic.GetWidth
 004C5541    mov         ecx,eax
 004C5543    add         ecx,edi
 004C5545    mov         edx,dword ptr [ebp-4]
 004C5548    mov         eax,edi
 004C554A    call        Rect
 004C554F    lea         ecx,[ebp-18]
 004C5552    mov         edx,ebx
 004C5554    mov         eax,esi
 004C5556    mov         esi,dword ptr [eax]
 004C5558    call        dword ptr [esi+18];TGraphic.sub_004C7404
 004C555B    mov         eax,ebx
 004C555D    mov         edx,dword ptr [eax]
 004C555F    call        dword ptr [edx+24];TGraphicsObject.Changed
 004C5562    pop         edi
 004C5563    pop         esi
 004C5564    pop         ebx
 004C5565    mov         esp,ebp
 004C5567    pop         ebp
 004C5568    ret         8
*}
end;

//004C5570
procedure TCanvas.DrawFocusRect(Rect:TRect);
begin
{*
 004C5570    push        ebx
 004C5571    push        esi
 004C5572    mov         esi,edx
 004C5574    mov         ebx,eax
 004C5576    mov         eax,ebx
 004C5578    mov         edx,dword ptr [eax]
 004C557A    call        dword ptr [edx+28]
 004C557D    movzx       edx,byte ptr ds:[4C55A0]
 004C5584    mov         eax,ebx
 004C5586    mov         ecx,dword ptr [eax]
 004C5588    call        dword ptr [ecx+2C]
 004C558B    push        esi
 004C558C    mov         eax,dword ptr [ebx+38]
 004C558F    push        eax
 004C5590    call        user32.DrawFocusRect
 004C5595    mov         eax,ebx
 004C5597    mov         edx,dword ptr [eax]
 004C5599    call        dword ptr [edx+24]
 004C559C    pop         esi
 004C559D    pop         ebx
 004C559E    ret
*}
end;

//004C55A4
procedure TCanvas.Ellipse(X1:Integer; Y1:Integer; Y2:Integer; X2:Integer);
begin
{*
 004C55A4    push        ebp
 004C55A5    mov         ebp,esp
 004C55A7    push        ebx
 004C55A8    push        esi
 004C55A9    push        edi
 004C55AA    mov         edi,ecx
 004C55AC    mov         esi,edx
 004C55AE    mov         ebx,eax
 004C55B0    mov         eax,ebx
 004C55B2    mov         edx,dword ptr [eax]
 004C55B4    call        dword ptr [edx+28]
 004C55B7    movzx       edx,byte ptr ds:[4C55E8]
 004C55BE    mov         eax,ebx
 004C55C0    mov         ecx,dword ptr [eax]
 004C55C2    call        dword ptr [ecx+2C]
 004C55C5    mov         eax,dword ptr [ebp+8]
 004C55C8    push        eax
 004C55C9    mov         eax,dword ptr [ebp+0C]
 004C55CC    push        eax
 004C55CD    push        edi
 004C55CE    push        esi
 004C55CF    mov         eax,dword ptr [ebx+38]
 004C55D2    push        eax
 004C55D3    call        gdi32.Ellipse
 004C55D8    mov         eax,ebx
 004C55DA    mov         edx,dword ptr [eax]
 004C55DC    call        dword ptr [edx+24]
 004C55DF    pop         edi
 004C55E0    pop         esi
 004C55E1    pop         ebx
 004C55E2    pop         ebp
 004C55E3    ret         8
*}
end;

//004C55EC
procedure TCanvas.FillRect(Rect:TRect);
begin
{*
 004C55EC    push        ebx
 004C55ED    push        esi
 004C55EE    mov         esi,edx
 004C55F0    mov         ebx,eax
 004C55F2    mov         eax,ebx
 004C55F4    mov         edx,dword ptr [eax]
 004C55F6    call        dword ptr [edx+28]
 004C55F9    movzx       edx,byte ptr ds:[4C5624]
 004C5600    mov         eax,ebx
 004C5602    mov         ecx,dword ptr [eax]
 004C5604    call        dword ptr [ecx+2C]
 004C5607    mov         eax,dword ptr [ebx+48]
 004C560A    call        TBrush.GetHandle
 004C560F    push        eax
 004C5610    push        esi
 004C5611    mov         eax,dword ptr [ebx+38]
 004C5614    push        eax
 004C5615    call        user32.FillRect
 004C561A    mov         eax,ebx
 004C561C    mov         edx,dword ptr [eax]
 004C561E    call        dword ptr [edx+24]
 004C5621    pop         esi
 004C5622    pop         ebx
 004C5623    ret
*}
end;

//004C5628
procedure TCanvas.FloodFill(X:Integer; Y:Integer; FillStyle:TFillStyle; Color:TColor);
begin
{*
 004C5628    push        ebp
 004C5629    mov         ebp,esp
 004C562B    push        ebx
 004C562C    push        esi
 004C562D    push        edi
 004C562E    mov         edi,ecx
 004C5630    mov         esi,edx
 004C5632    mov         ebx,eax
 004C5634    mov         eax,ebx
 004C5636    mov         edx,dword ptr [eax]
 004C5638    call        dword ptr [edx+28]
 004C563B    movzx       edx,byte ptr ds:[4C5674]
 004C5642    mov         eax,ebx
 004C5644    mov         ecx,dword ptr [eax]
 004C5646    call        dword ptr [ecx+2C]
 004C5649    movzx       eax,byte ptr [ebp+8]
 004C564D    movzx       eax,word ptr [eax*2+7A1014]
 004C5655    push        eax
 004C5656    mov         eax,dword ptr [ebp+0C]
 004C5659    push        eax
 004C565A    push        edi
 004C565B    push        esi
 004C565C    mov         eax,dword ptr [ebx+38]
 004C565F    push        eax
 004C5660    call        gdi32.ExtFloodFill
 004C5665    mov         eax,ebx
 004C5667    mov         edx,dword ptr [eax]
 004C5669    call        dword ptr [edx+24]
 004C566C    pop         edi
 004C566D    pop         esi
 004C566E    pop         ebx
 004C566F    pop         ebp
 004C5670    ret         8
*}
end;

//004C5678
procedure TCanvas.FrameRect(Rect:TRect);
begin
{*
 004C5678    push        ebx
 004C5679    push        esi
 004C567A    mov         esi,edx
 004C567C    mov         ebx,eax
 004C567E    mov         eax,ebx
 004C5680    mov         edx,dword ptr [eax]
 004C5682    call        dword ptr [edx+28]
 004C5685    movzx       edx,byte ptr ds:[4C56B0]
 004C568C    mov         eax,ebx
 004C568E    mov         ecx,dword ptr [eax]
 004C5690    call        dword ptr [ecx+2C]
 004C5693    mov         eax,dword ptr [ebx+48]
 004C5696    call        TBrush.GetHandle
 004C569B    push        eax
 004C569C    push        esi
 004C569D    mov         eax,dword ptr [ebx+38]
 004C56A0    push        eax
 004C56A1    call        user32.FrameRect
 004C56A6    mov         eax,ebx
 004C56A8    mov         edx,dword ptr [eax]
 004C56AA    call        dword ptr [edx+24]
 004C56AD    pop         esi
 004C56AE    pop         ebx
 004C56AF    ret
*}
end;

//004C56B4
procedure TCanvas.LineTo(X:Integer; Y:Integer);
begin
{*
 004C56B4    push        ebx
 004C56B5    push        esi
 004C56B6    push        edi
 004C56B7    mov         edi,ecx
 004C56B9    mov         esi,edx
 004C56BB    mov         ebx,eax
 004C56BD    mov         eax,ebx
 004C56BF    mov         edx,dword ptr [eax]
 004C56C1    call        dword ptr [edx+28]
 004C56C4    movzx       edx,byte ptr ds:[4C56E8]
 004C56CB    mov         eax,ebx
 004C56CD    mov         ecx,dword ptr [eax]
 004C56CF    call        dword ptr [ecx+2C]
 004C56D2    push        edi
 004C56D3    push        esi
 004C56D4    mov         eax,dword ptr [ebx+38]
 004C56D7    push        eax
 004C56D8    call        gdi32.LineTo
 004C56DD    mov         eax,ebx
 004C56DF    mov         edx,dword ptr [eax]
 004C56E1    call        dword ptr [edx+24]
 004C56E4    pop         edi
 004C56E5    pop         esi
 004C56E6    pop         ebx
 004C56E7    ret
*}
end;

//004C56EC
procedure TCanvas.MoveTo(X:Integer; Y:Integer);
begin
{*
 004C56EC    push        ebx
 004C56ED    push        esi
 004C56EE    push        edi
 004C56EF    mov         edi,ecx
 004C56F1    mov         esi,edx
 004C56F3    mov         ebx,eax
 004C56F5    movzx       edx,byte ptr ds:[4C5714]
 004C56FC    mov         eax,ebx
 004C56FE    mov         ecx,dword ptr [eax]
 004C5700    call        dword ptr [ecx+2C]
 004C5703    push        0
 004C5705    push        edi
 004C5706    push        esi
 004C5707    mov         eax,dword ptr [ebx+38]
 004C570A    push        eax
 004C570B    call        gdi32.MoveToEx
 004C5710    pop         edi
 004C5711    pop         esi
 004C5712    pop         ebx
 004C5713    ret
*}
end;

//004C5718
procedure TCanvas.Pie(X1:Integer; Y1:Integer; Y4:Integer; X4:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);
begin
{*
 004C5718    push        ebp
 004C5719    mov         ebp,esp
 004C571B    push        ebx
 004C571C    push        esi
 004C571D    push        edi
 004C571E    mov         edi,ecx
 004C5720    mov         esi,edx
 004C5722    mov         ebx,eax
 004C5724    mov         eax,ebx
 004C5726    mov         edx,dword ptr [eax]
 004C5728    call        dword ptr [edx+28]
 004C572B    movzx       edx,byte ptr ds:[4C576C]
 004C5732    mov         eax,ebx
 004C5734    mov         ecx,dword ptr [eax]
 004C5736    call        dword ptr [ecx+2C]
 004C5739    mov         eax,dword ptr [ebp+8]
 004C573C    push        eax
 004C573D    mov         eax,dword ptr [ebp+0C]
 004C5740    push        eax
 004C5741    mov         eax,dword ptr [ebp+10]
 004C5744    push        eax
 004C5745    mov         eax,dword ptr [ebp+14]
 004C5748    push        eax
 004C5749    mov         eax,dword ptr [ebp+18]
 004C574C    push        eax
 004C574D    mov         eax,dword ptr [ebp+1C]
 004C5750    push        eax
 004C5751    push        edi
 004C5752    push        esi
 004C5753    mov         eax,dword ptr [ebx+38]
 004C5756    push        eax
 004C5757    call        gdi32.Pie
 004C575C    mov         eax,ebx
 004C575E    mov         edx,dword ptr [eax]
 004C5760    call        dword ptr [edx+24]
 004C5763    pop         edi
 004C5764    pop         esi
 004C5765    pop         ebx
 004C5766    pop         ebp
 004C5767    ret         18
*}
end;

//004C5770
procedure TCanvas.Polygon(Points:TPoint);
begin
{*
 004C5770    push        ebx
 004C5771    push        esi
 004C5772    push        edi
 004C5773    mov         edi,ecx
 004C5775    mov         esi,edx
 004C5777    mov         ebx,eax
 004C5779    mov         eax,ebx
 004C577B    mov         edx,dword ptr [eax]
 004C577D    call        dword ptr [edx+28]
 004C5780    movzx       edx,byte ptr ds:[4C57A8]
 004C5787    mov         eax,ebx
 004C5789    mov         ecx,dword ptr [eax]
 004C578B    call        dword ptr [ecx+2C]
 004C578E    inc         edi
 004C578F    push        edi
 004C5790    push        esi
 004C5791    mov         eax,dword ptr [ebx+38]
 004C5794    push        eax
 004C5795    call        gdi32.Polygon
 004C579A    mov         eax,ebx
 004C579C    mov         edx,dword ptr [eax]
 004C579E    call        dword ptr [edx+24]
 004C57A1    pop         edi
 004C57A2    pop         esi
 004C57A3    pop         ebx
 004C57A4    ret
*}
end;

//004C57AC
procedure TCanvas.Polyline(Points:TPoint);
begin
{*
 004C57AC    push        ebx
 004C57AD    push        esi
 004C57AE    push        edi
 004C57AF    mov         edi,ecx
 004C57B1    mov         esi,edx
 004C57B3    mov         ebx,eax
 004C57B5    mov         eax,ebx
 004C57B7    mov         edx,dword ptr [eax]
 004C57B9    call        dword ptr [edx+28]
 004C57BC    movzx       edx,byte ptr ds:[4C57E4]
 004C57C3    mov         eax,ebx
 004C57C5    mov         ecx,dword ptr [eax]
 004C57C7    call        dword ptr [ecx+2C]
 004C57CA    inc         edi
 004C57CB    push        edi
 004C57CC    push        esi
 004C57CD    mov         eax,dword ptr [ebx+38]
 004C57D0    push        eax
 004C57D1    call        gdi32.Polyline
 004C57D6    mov         eax,ebx
 004C57D8    mov         edx,dword ptr [eax]
 004C57DA    call        dword ptr [edx+24]
 004C57DD    pop         edi
 004C57DE    pop         esi
 004C57DF    pop         ebx
 004C57E0    ret
*}
end;

//004C57E8
procedure TCanvas.PolyBezier(Points:TPoint);
begin
{*
 004C57E8    push        ebx
 004C57E9    push        esi
 004C57EA    push        edi
 004C57EB    mov         edi,ecx
 004C57ED    mov         esi,edx
 004C57EF    mov         ebx,eax
 004C57F1    mov         eax,ebx
 004C57F3    mov         edx,dword ptr [eax]
 004C57F5    call        dword ptr [edx+28]
 004C57F8    movzx       edx,byte ptr ds:[4C5820]
 004C57FF    mov         eax,ebx
 004C5801    mov         ecx,dword ptr [eax]
 004C5803    call        dword ptr [ecx+2C]
 004C5806    inc         edi
 004C5807    push        edi
 004C5808    push        esi
 004C5809    mov         eax,dword ptr [ebx+38]
 004C580C    push        eax
 004C580D    call        gdi32.PolyBezier
 004C5812    mov         eax,ebx
 004C5814    mov         edx,dword ptr [eax]
 004C5816    call        dword ptr [edx+24]
 004C5819    pop         edi
 004C581A    pop         esi
 004C581B    pop         ebx
 004C581C    ret
*}
end;

//004C5824
procedure TCanvas.PolyBezierTo(Points:TPoint);
begin
{*
 004C5824    push        ebx
 004C5825    push        esi
 004C5826    push        edi
 004C5827    mov         edi,ecx
 004C5829    mov         esi,edx
 004C582B    mov         ebx,eax
 004C582D    mov         eax,ebx
 004C582F    mov         edx,dword ptr [eax]
 004C5831    call        dword ptr [edx+28]
 004C5834    movzx       edx,byte ptr ds:[4C585C]
 004C583B    mov         eax,ebx
 004C583D    mov         ecx,dword ptr [eax]
 004C583F    call        dword ptr [ecx+2C]
 004C5842    inc         edi
 004C5843    push        edi
 004C5844    push        esi
 004C5845    mov         eax,dword ptr [ebx+38]
 004C5848    push        eax
 004C5849    call        gdi32.PolyBezierTo
 004C584E    mov         eax,ebx
 004C5850    mov         edx,dword ptr [eax]
 004C5852    call        dword ptr [edx+24]
 004C5855    pop         edi
 004C5856    pop         esi
 004C5857    pop         ebx
 004C5858    ret
*}
end;

//004C5860
procedure TCanvas.Rectangle(X1:Integer; Y1:Integer; Y2:Integer; X2:Integer);
begin
{*
 004C5860    push        ebp
 004C5861    mov         ebp,esp
 004C5863    push        ebx
 004C5864    push        esi
 004C5865    push        edi
 004C5866    mov         edi,ecx
 004C5868    mov         esi,edx
 004C586A    mov         ebx,eax
 004C586C    mov         eax,ebx
 004C586E    mov         edx,dword ptr [eax]
 004C5870    call        dword ptr [edx+28]
 004C5873    movzx       edx,byte ptr ds:[4C58A4]
 004C587A    mov         eax,ebx
 004C587C    mov         ecx,dword ptr [eax]
 004C587E    call        dword ptr [ecx+2C]
 004C5881    mov         eax,dword ptr [ebp+8]
 004C5884    push        eax
 004C5885    mov         eax,dword ptr [ebp+0C]
 004C5888    push        eax
 004C5889    push        edi
 004C588A    push        esi
 004C588B    mov         eax,dword ptr [ebx+38]
 004C588E    push        eax
 004C588F    call        gdi32.Rectangle
 004C5894    mov         eax,ebx
 004C5896    mov         edx,dword ptr [eax]
 004C5898    call        dword ptr [edx+24]
 004C589B    pop         edi
 004C589C    pop         esi
 004C589D    pop         ebx
 004C589E    pop         ebp
 004C589F    ret         8
*}
end;

//004C58A8
procedure TCanvas.Refresh;
begin
{*
 004C58A8    call        TCanvas.DeselectHandles
 004C58AD    ret
*}
end;

//004C58B0
procedure TCanvas.RoundRect(X1:Integer; Y1:Integer; Y3:Integer; X3:Integer; Y2:Integer; X2:Integer);
begin
{*
 004C58B0    push        ebp
 004C58B1    mov         ebp,esp
 004C58B3    push        ebx
 004C58B4    push        esi
 004C58B5    push        edi
 004C58B6    mov         edi,ecx
 004C58B8    mov         esi,edx
 004C58BA    mov         ebx,eax
 004C58BC    mov         eax,ebx
 004C58BE    mov         edx,dword ptr [eax]
 004C58C0    call        dword ptr [edx+28]
 004C58C3    movzx       edx,byte ptr ds:[4C58FC]
 004C58CA    mov         eax,ebx
 004C58CC    mov         ecx,dword ptr [eax]
 004C58CE    call        dword ptr [ecx+2C]
 004C58D1    mov         eax,dword ptr [ebp+8]
 004C58D4    push        eax
 004C58D5    mov         eax,dword ptr [ebp+0C]
 004C58D8    push        eax
 004C58D9    mov         eax,dword ptr [ebp+10]
 004C58DC    push        eax
 004C58DD    mov         eax,dword ptr [ebp+14]
 004C58E0    push        eax
 004C58E1    push        edi
 004C58E2    push        esi
 004C58E3    mov         eax,dword ptr [ebx+38]
 004C58E6    push        eax
 004C58E7    call        gdi32.RoundRect
 004C58EC    mov         eax,ebx
 004C58EE    mov         edx,dword ptr [eax]
 004C58F0    call        dword ptr [edx+24]
 004C58F3    pop         edi
 004C58F4    pop         esi
 004C58F5    pop         ebx
 004C58F6    pop         ebp
 004C58F7    ret         10
*}
end;

//004C5900
procedure TCanvas.StretchDraw(Rect:TRect; Graphic:TGraphic);
begin
{*
 004C5900    push        ebx
 004C5901    push        esi
 004C5902    push        edi
 004C5903    mov         esi,ecx
 004C5905    mov         edi,edx
 004C5907    mov         ebx,eax
 004C5909    test        esi,esi
>004C590B    je          004C5934
 004C590D    mov         eax,ebx
 004C590F    mov         edx,dword ptr [eax]
 004C5911    call        dword ptr [edx+28]
 004C5914    movzx       edx,byte ptr ds:[4C5938]
 004C591B    mov         eax,ebx
 004C591D    mov         ecx,dword ptr [eax]
 004C591F    call        dword ptr [ecx+2C]
 004C5922    mov         ecx,edi
 004C5924    mov         edx,ebx
 004C5926    mov         eax,esi
 004C5928    mov         esi,dword ptr [eax]
 004C592A    call        dword ptr [esi+14]
 004C592D    mov         eax,ebx
 004C592F    mov         edx,dword ptr [eax]
 004C5931    call        dword ptr [edx+24]
 004C5934    pop         edi
 004C5935    pop         esi
 004C5936    pop         ebx
 004C5937    ret
*}
end;

//004C593C
function TCanvas.GetCanvasOrientation:TCanvasOrientation;
begin
{*
 004C593C    push        ebx
 004C593D    push        esi
 004C593E    add         esp,0FFFFFFF8
 004C5941    mov         esi,eax
 004C5943    xor         ebx,ebx
 004C5945    test        byte ptr [esi+18],80
>004C5949    je          004C5961
 004C594B    push        esp
 004C594C    mov         eax,esi
 004C594E    call        TCanvas.GetHandle
 004C5953    push        eax
 004C5954    call        gdi32.GetWindowOrgEx
 004C5959    cmp         dword ptr [esp],0
>004C595D    je          004C5961
 004C595F    mov         bl,1
 004C5961    mov         eax,ebx
 004C5963    pop         ecx
 004C5964    pop         edx
 004C5965    pop         esi
 004C5966    pop         ebx
 004C5967    ret
*}
end;

//004C5968
procedure TCanvas.TextOut(X:Integer; Y:Integer; Text:string);
begin
{*
 004C5968    push        ebp
 004C5969    mov         ebp,esp
 004C596B    add         esp,0FFFFFFF0
 004C596E    push        ebx
 004C596F    push        esi
 004C5970    push        edi
 004C5971    mov         dword ptr [ebp-8],ecx
 004C5974    mov         dword ptr [ebp-4],edx
 004C5977    mov         ebx,eax
 004C5979    mov         edi,dword ptr [ebp+8]
 004C597C    mov         eax,ebx
 004C597E    mov         edx,dword ptr [eax]
 004C5980    call        dword ptr [edx+28];TCustomCanvas.Changing
 004C5983    movzx       edx,byte ptr ds:[4C5A0C];0xB gvar_004C5A0C
 004C598A    mov         eax,ebx
 004C598C    mov         ecx,dword ptr [eax]
 004C598E    call        dword ptr [ecx+2C];TCanvas.RequiredState
 004C5991    mov         eax,ebx
 004C5993    mov         edx,dword ptr [eax]
 004C5995    call        dword ptr [edx+0C];TCanvas.GetCanvasOrientation
 004C5998    cmp         al,1
>004C599A    jne         004C59A9
 004C599C    mov         edx,edi
 004C599E    mov         eax,ebx
 004C59A0    call        TCustomCanvas.TextWidth
 004C59A5    inc         eax
 004C59A6    add         dword ptr [ebp-4],eax
 004C59A9    mov         esi,edi
 004C59AB    test        esi,esi
>004C59AD    je          004C59B4
 004C59AF    sub         esi,4
 004C59B2    mov         esi,dword ptr [esi]
 004C59B4    mov         eax,dword ptr [ebx+38];TCanvas.FHandle:HDC
 004C59B7    mov         dword ptr [ebp-0C],eax
 004C59BA    mov         eax,dword ptr [ebx+18];TCanvas.FTextFlags:Integer
 004C59BD    mov         dword ptr [ebp-10],eax
 004C59C0    push        0
 004C59C2    push        esi
 004C59C3    mov         eax,edi
 004C59C5    call        @UStrToPWChar
 004C59CA    push        eax
 004C59CB    push        0
 004C59CD    mov         eax,dword ptr [ebp-10]
 004C59D0    push        eax
 004C59D1    mov         eax,dword ptr [ebp-8]
 004C59D4    push        eax
 004C59D5    mov         eax,dword ptr [ebp-4]
 004C59D8    push        eax
 004C59D9    mov         eax,dword ptr [ebp-0C]
 004C59DC    push        eax
 004C59DD    call        gdi32.ExtTextOutW
 004C59E2    mov         edx,edi
 004C59E4    mov         eax,ebx
 004C59E6    call        TCustomCanvas.TextWidth
 004C59EB    mov         edx,eax
 004C59ED    add         edx,dword ptr [ebp-4]
 004C59F0    mov         ecx,dword ptr [ebp-8]
 004C59F3    mov         eax,ebx
 004C59F5    mov         esi,dword ptr [eax]
 004C59F7    call        dword ptr [esi+64];TCanvas.MoveTo
 004C59FA    mov         eax,ebx
 004C59FC    mov         edx,dword ptr [eax]
 004C59FE    call        dword ptr [edx+24];TGraphicsObject.Changed
 004C5A01    pop         edi
 004C5A02    pop         esi
 004C5A03    pop         ebx
 004C5A04    mov         esp,ebp
 004C5A06    pop         ebp
 004C5A07    ret         4
*}
end;

//004C5A10
procedure TCanvas.TextRect(Rect:TRect; X:Integer; Text:string; Y:Integer);
begin
{*
 004C5A10    push        ebp
 004C5A11    mov         ebp,esp
 004C5A13    add         esp,0FFFFFFE4
 004C5A16    push        ebx
 004C5A17    push        esi
 004C5A18    push        edi
 004C5A19    mov         esi,edx
 004C5A1B    lea         edi,[ebp-1C]
 004C5A1E    movs        dword ptr [edi],dword ptr [esi]
 004C5A1F    movs        dword ptr [edi],dword ptr [esi]
 004C5A20    movs        dword ptr [edi],dword ptr [esi]
 004C5A21    movs        dword ptr [edi],dword ptr [esi]
 004C5A22    mov         dword ptr [ebp-4],ecx
 004C5A25    mov         ebx,eax
 004C5A27    mov         edi,dword ptr [ebp+8]
 004C5A2A    mov         eax,ebx
 004C5A2C    mov         edx,dword ptr [eax]
 004C5A2E    call        dword ptr [edx+28];TCustomCanvas.Changing
 004C5A31    movzx       edx,byte ptr ds:[4C5AC0];0xB gvar_004C5AC0
 004C5A38    mov         eax,ebx
 004C5A3A    mov         ecx,dword ptr [eax]
 004C5A3C    call        dword ptr [ecx+2C];TCanvas.RequiredState
 004C5A3F    mov         eax,dword ptr [ebx+18];TCanvas.FTextFlags:Integer
 004C5A42    or          eax,4
 004C5A45    mov         dword ptr [ebp-8],eax
 004C5A48    mov         eax,dword ptr [ebx+48];TCanvas.FBrush:TBrush
 004C5A4B    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 004C5A4E    movzx       eax,byte ptr [eax+20]
 004C5A52    cmp         al,1
>004C5A54    je          004C5A5A
 004C5A56    or          dword ptr [ebp-8],2
 004C5A5A    test        byte ptr [ebx+18],80;TCanvas.FTextFlags:Integer
>004C5A5E    je          004C5A78
 004C5A60    mov         eax,ebx
 004C5A62    mov         edx,dword ptr [eax]
 004C5A64    call        dword ptr [edx+0C];TCanvas.GetCanvasOrientation
 004C5A67    cmp         al,1
>004C5A69    jne         004C5A78
 004C5A6B    mov         edx,edi
 004C5A6D    mov         eax,ebx
 004C5A6F    call        TCustomCanvas.TextWidth
 004C5A74    inc         eax
 004C5A75    add         dword ptr [ebp-4],eax
 004C5A78    mov         esi,edi
 004C5A7A    test        esi,esi
>004C5A7C    je          004C5A83
 004C5A7E    sub         esi,4
 004C5A81    mov         esi,dword ptr [esi]
 004C5A83    mov         eax,dword ptr [ebx+38];TCanvas.FHandle:HDC
 004C5A86    mov         dword ptr [ebp-0C],eax
 004C5A89    push        0
 004C5A8B    push        esi
 004C5A8C    mov         eax,edi
 004C5A8E    call        @UStrToPWChar
 004C5A93    push        eax
 004C5A94    lea         eax,[ebp-1C]
 004C5A97    push        eax
 004C5A98    mov         eax,dword ptr [ebp-8]
 004C5A9B    push        eax
 004C5A9C    mov         eax,dword ptr [ebp+0C]
 004C5A9F    push        eax
 004C5AA0    mov         eax,dword ptr [ebp-4]
 004C5AA3    push        eax
 004C5AA4    mov         eax,dword ptr [ebp-0C]
 004C5AA7    push        eax
 004C5AA8    call        gdi32.ExtTextOutW
 004C5AAD    mov         eax,ebx
 004C5AAF    mov         edx,dword ptr [eax]
 004C5AB1    call        dword ptr [edx+24];TGraphicsObject.Changed
 004C5AB4    pop         edi
 004C5AB5    pop         esi
 004C5AB6    pop         ebx
 004C5AB7    mov         esp,ebp
 004C5AB9    pop         ebp
 004C5ABA    ret         8
*}
end;

//004C5AC4
{*procedure TCanvas.TextRect(var Rect:TRect; var Text:string; TextFormat:TTextFormat; ?:?; ?:?);
begin
 004C5AC4    push        ebp
 004C5AC5    mov         ebp,esp
 004C5AC7    add         esp,0FFFFFFEC
 004C5ACA    push        ebx
 004C5ACB    push        esi
 004C5ACC    push        edi
 004C5ACD    xor         ebx,ebx
 004C5ACF    mov         dword ptr [ebp-14],ebx
 004C5AD2    mov         edi,ecx
 004C5AD4    mov         dword ptr [ebp-4],edx
 004C5AD7    mov         ebx,eax
 004C5AD9    xor         eax,eax
 004C5ADB    push        ebp
 004C5ADC    push        4C5B93
 004C5AE1    push        dword ptr fs:[eax]
 004C5AE4    mov         dword ptr fs:[eax],esp
 004C5AE7    test        byte ptr [ebp+0A],80
>004C5AEB    je          004C5B26
 004C5AED    lea         ecx,[ebp-14]
 004C5AF0    mov         edx,17
 004C5AF5    mov         eax,[004BE5F4];TTextFormats
 004C5AFA    call        GetEnumName
 004C5AFF    mov         eax,dword ptr [ebp-14]
 004C5B02    mov         dword ptr [ebp-10],eax
 004C5B05    mov         byte ptr [ebp-0C],11
 004C5B09    lea         eax,[ebp-10]
 004C5B0C    push        eax
 004C5B0D    push        0
 004C5B0F    mov         ecx,dword ptr ds:[7C4720];^SResString221:TResStringRec
 004C5B15    mov         dl,1
 004C5B17    mov         eax,[0046BE9C];EInvalidOperation
 004C5B1C    call        Exception.CreateResFmt;EInvalidOperation.Create
 004C5B21    call        @RaiseExcept
 004C5B26    mov         eax,dword ptr [ebp+8]
 004C5B29    call        TTextFormatFlags.&op_Implicit
 004C5B2E    call        TTextFormatFlags.&op_Implicit
 004C5B33    mov         dword ptr [ebp-8],eax
 004C5B36    mov         eax,ebx
 004C5B38    call        TCanvas.GetHandle
 004C5B3D    mov         esi,eax
 004C5B3F    mov         ebx,dword ptr [edi]
 004C5B41    test        ebx,ebx
>004C5B43    je          004C5B4A
 004C5B45    sub         ebx,4
 004C5B48    mov         ebx,dword ptr [ebx]
 004C5B4A    push        0
 004C5B4C    mov         eax,dword ptr [ebp-8]
 004C5B4F    push        eax
 004C5B50    mov         eax,dword ptr [ebp-4]
 004C5B53    push        eax
 004C5B54    push        ebx
 004C5B55    mov         eax,dword ptr [edi]
 004C5B57    call        @UStrToPWChar
 004C5B5C    push        eax
 004C5B5D    push        esi
 004C5B5E    call        user32.DrawTextExW
 004C5B63    test        byte ptr [ebp+9],2
>004C5B67    je          004C5B7D
 004C5B69    mov         eax,dword ptr [edi]
 004C5B6B    call        @UStrToPWChar
 004C5B70    call        @PWCharLen
 004C5B75    mov         edx,edi
 004C5B77    xchg        eax,edx
 004C5B78    call        @UStrSetLength
 004C5B7D    xor         eax,eax
 004C5B7F    pop         edx
 004C5B80    pop         ecx
 004C5B81    pop         ecx
 004C5B82    mov         dword ptr fs:[eax],edx
 004C5B85    push        4C5B9A
 004C5B8A    lea         eax,[ebp-14]
 004C5B8D    call        @UStrClr
 004C5B92    ret
>004C5B93    jmp         @HandleFinally
>004C5B98    jmp         004C5B8A
 004C5B9A    pop         edi
 004C5B9B    pop         esi
 004C5B9C    pop         ebx
 004C5B9D    mov         esp,ebp
 004C5B9F    pop         ebp
 004C5BA0    ret         4
end;*}

//004C5BA4
{*procedure TCanvas.TextExtent(Text:string; ?:?);
begin
 004C5BA4    push        ebx
 004C5BA5    push        esi
 004C5BA6    push        edi
 004C5BA7    push        ecx
 004C5BA8    mov         dword ptr [esp],ecx
 004C5BAB    mov         edi,edx
 004C5BAD    mov         esi,eax
 004C5BAF    movzx       edx,byte ptr ds:[4C5BF4];0x3 gvar_004C5BF4
 004C5BB6    mov         eax,esi
 004C5BB8    mov         ecx,dword ptr [eax]
 004C5BBA    call        dword ptr [ecx+2C];TCanvas.RequiredState
 004C5BBD    mov         eax,dword ptr [esp]
 004C5BC0    xor         edx,edx
 004C5BC2    mov         dword ptr [eax],edx
 004C5BC4    mov         eax,dword ptr [esp]
 004C5BC7    xor         edx,edx
 004C5BC9    mov         dword ptr [eax+4],edx
 004C5BCC    mov         ebx,edi
 004C5BCE    test        ebx,ebx
>004C5BD0    je          004C5BD7
 004C5BD2    sub         ebx,4
 004C5BD5    mov         ebx,dword ptr [ebx]
 004C5BD7    mov         esi,dword ptr [esi+38];TCanvas.FHandle:HDC
 004C5BDA    mov         eax,dword ptr [esp]
 004C5BDD    push        eax
 004C5BDE    push        ebx
 004C5BDF    mov         eax,edi
 004C5BE1    call        @UStrToPWChar
 004C5BE6    push        eax
 004C5BE7    push        esi
 004C5BE8    call        gdi32.GetTextExtentPoint32W
 004C5BED    pop         edx
 004C5BEE    pop         edi
 004C5BEF    pop         esi
 004C5BF0    pop         ebx
 004C5BF1    ret
end;*}

//004C5BF8
procedure TCanvas.SetFont(Value:TFont);
begin
{*
 004C5BF8    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 004C5BFB    mov         ecx,dword ptr [eax]
 004C5BFD    call        dword ptr [ecx+8];TFont.Assign
 004C5C00    ret
*}
end;

//004C5C04
procedure TCanvas.SetPen(Value:TPen);
begin
{*
 004C5C04    mov         eax,dword ptr [eax+44]
 004C5C07    mov         ecx,dword ptr [eax]
 004C5C09    call        dword ptr [ecx+8]
 004C5C0C    ret
*}
end;

//004C5C10
procedure TCanvas.SetBrush(Value:TBrush);
begin
{*
 004C5C10    mov         eax,dword ptr [eax+48]
 004C5C13    mov         ecx,dword ptr [eax]
 004C5C15    call        dword ptr [ecx+8]
 004C5C18    ret
*}
end;

//004C5C1C
function TCanvas.GetPenPos:TPoint;
begin
{*
 004C5C1C    push        ebx
 004C5C1D    push        esi
 004C5C1E    mov         esi,edx
 004C5C20    mov         ebx,eax
 004C5C22    movzx       edx,byte ptr ds:[4C5C40]
 004C5C29    mov         eax,ebx
 004C5C2B    mov         ecx,dword ptr [eax]
 004C5C2D    call        dword ptr [ecx+2C]
 004C5C30    push        esi
 004C5C31    mov         eax,dword ptr [ebx+38]
 004C5C34    push        eax
 004C5C35    call        gdi32.GetCurrentPositionEx
 004C5C3A    pop         esi
 004C5C3B    pop         ebx
 004C5C3C    ret
*}
end;

//004C5C44
procedure TCanvas.SetPenPos(Value:Windows.TPoint);
begin
{*
 004C5C44    push        ebx
 004C5C45    push        esi
 004C5C46    push        edi
 004C5C47    add         esp,0FFFFFFF8
 004C5C4A    mov         esi,edx
 004C5C4C    lea         edi,[esp]
 004C5C4F    movs        dword ptr [edi],dword ptr [esi]
 004C5C50    movs        dword ptr [edi],dword ptr [esi]
 004C5C51    mov         ecx,dword ptr [esp+4]
 004C5C55    mov         edx,dword ptr [esp]
 004C5C58    mov         ebx,dword ptr [eax]
 004C5C5A    call        dword ptr [ebx+64]
 004C5C5D    pop         ecx
 004C5C5E    pop         edx
 004C5C5F    pop         edi
 004C5C60    pop         esi
 004C5C61    pop         ebx
 004C5C62    ret
*}
end;

//004C5C64
function TCanvas.GetPixel(X:Integer; Y:Integer):TColor;
begin
{*
 004C5C64    push        ebx
 004C5C65    push        esi
 004C5C66    push        edi
 004C5C67    mov         edi,ecx
 004C5C69    mov         esi,edx
 004C5C6B    mov         ebx,eax
 004C5C6D    movzx       edx,byte ptr ds:[4C5C8C]
 004C5C74    mov         eax,ebx
 004C5C76    mov         ecx,dword ptr [eax]
 004C5C78    call        dword ptr [ecx+2C]
 004C5C7B    push        edi
 004C5C7C    push        esi
 004C5C7D    mov         eax,dword ptr [ebx+38]
 004C5C80    push        eax
 004C5C81    call        gdi32.GetPixel
 004C5C86    pop         edi
 004C5C87    pop         esi
 004C5C88    pop         ebx
 004C5C89    ret
*}
end;

//004C5C90
procedure TCanvas.SetPixel(X:Integer; Y:Integer; Value:UITypes.TColor);
begin
{*
 004C5C90    push        ebp
 004C5C91    mov         ebp,esp
 004C5C93    push        ebx
 004C5C94    push        esi
 004C5C95    push        edi
 004C5C96    mov         edi,ecx
 004C5C98    mov         esi,edx
 004C5C9A    mov         ebx,eax
 004C5C9C    mov         eax,ebx
 004C5C9E    mov         edx,dword ptr [eax]
 004C5CA0    call        dword ptr [edx+28]
 004C5CA3    movzx       edx,byte ptr ds:[4C5CD4]
 004C5CAA    mov         eax,ebx
 004C5CAC    mov         ecx,dword ptr [eax]
 004C5CAE    call        dword ptr [ecx+2C]
 004C5CB1    mov         eax,dword ptr [ebp+8]
 004C5CB4    call        ColorToRGB
 004C5CB9    push        eax
 004C5CBA    push        edi
 004C5CBB    push        esi
 004C5CBC    mov         eax,dword ptr [ebx+38]
 004C5CBF    push        eax
 004C5CC0    call        gdi32.SetPixel
 004C5CC5    mov         eax,ebx
 004C5CC7    mov         edx,dword ptr [eax]
 004C5CC9    call        dword ptr [edx+24]
 004C5CCC    pop         edi
 004C5CCD    pop         esi
 004C5CCE    pop         ebx
 004C5CCF    pop         ebp
 004C5CD0    ret         4
*}
end;

//004C5CD8
function TCanvas.GetClipRect:TRect;
begin
{*
 004C5CD8    push        ebx
 004C5CD9    push        esi
 004C5CDA    mov         esi,edx
 004C5CDC    mov         ebx,eax
 004C5CDE    movzx       edx,byte ptr ds:[4C5CFC]
 004C5CE5    mov         eax,ebx
 004C5CE7    mov         ecx,dword ptr [eax]
 004C5CE9    call        dword ptr [ecx+2C]
 004C5CEC    push        esi
 004C5CED    mov         eax,dword ptr [ebx+38]
 004C5CF0    push        eax
 004C5CF1    call        gdi32.GetClipBox
 004C5CF6    pop         esi
 004C5CF7    pop         ebx
 004C5CF8    ret
*}
end;

//004C5D00
function TCanvas.GetHandle:HDC;
begin
{*
 004C5D00    push        ebx
 004C5D01    mov         ebx,eax
 004C5D03    mov         eax,ebx
 004C5D05    mov         edx,dword ptr [eax]
 004C5D07    call        dword ptr [edx+28]
 004C5D0A    movzx       edx,byte ptr ds:[4C5D20]
 004C5D11    mov         eax,ebx
 004C5D13    mov         ecx,dword ptr [eax]
 004C5D15    call        dword ptr [ecx+2C]
 004C5D18    mov         eax,dword ptr [ebx+38]
 004C5D1B    pop         ebx
 004C5D1C    ret
*}
end;

//004C5D24
procedure TCanvas.DeselectHandles;
begin
{*
 004C5D24    push        ebx
 004C5D25    push        esi
 004C5D26    mov         ebx,eax
 004C5D28    mov         esi,dword ptr [ebx+38]
 004C5D2B    test        esi,esi
>004C5D2D    je          004C5D79
 004C5D2F    movzx       eax,byte ptr ds:[4C5D7C]
 004C5D36    not         eax
 004C5D38    and         al,byte ptr [ebx+3C]
 004C5D3B    movzx       edx,byte ptr [ebx+3C]
 004C5D3F    cmp         dl,al
>004C5D41    je          004C5D79
 004C5D43    mov         eax,[007CA458]
 004C5D48    push        eax
 004C5D49    push        esi
 004C5D4A    call        gdi32.SelectObject
 004C5D4F    mov         eax,[007CA45C]
 004C5D54    push        eax
 004C5D55    mov         eax,dword ptr [ebx+38]
 004C5D58    push        eax
 004C5D59    call        gdi32.SelectObject
 004C5D5E    mov         eax,[007CA460]
 004C5D63    push        eax
 004C5D64    mov         eax,dword ptr [ebx+38]
 004C5D67    push        eax
 004C5D68    call        gdi32.SelectObject
 004C5D6D    movzx       eax,byte ptr ds:[4C5D7C]
 004C5D74    not         eax
 004C5D76    and         byte ptr [ebx+3C],al
 004C5D79    pop         esi
 004C5D7A    pop         ebx
 004C5D7B    ret
*}
end;

//004C5D80
procedure sub_004C5D80;
begin
{*
 004C5D80    ret
*}
end;

//004C5D84
procedure TCanvas.SetHandle(Value:Windows.HDC);
begin
{*
 004C5D84    push        ebx
 004C5D85    push        esi
 004C5D86    add         esp,0FFFFFFF8
 004C5D89    mov         esi,edx
 004C5D8B    mov         ebx,eax
 004C5D8D    mov         eax,dword ptr [ebx+38]
 004C5D90    cmp         esi,eax
>004C5D92    je          004C5DD3
 004C5D94    test        eax,eax
>004C5D96    je          004C5DBE
 004C5D98    mov         eax,ebx
 004C5D9A    call        TCanvas.DeselectHandles
 004C5D9F    mov         edx,esp
 004C5DA1    mov         eax,ebx
 004C5DA3    mov         ecx,dword ptr [eax]
 004C5DA5    call        dword ptr [ecx+14]
 004C5DA8    mov         eax,dword ptr [esp]
 004C5DAB    mov         dword ptr [ebx+4C],eax
 004C5DAE    mov         eax,dword ptr [esp+4]
 004C5DB2    mov         dword ptr [ebx+50],eax
 004C5DB5    xor         eax,eax
 004C5DB7    mov         dword ptr [ebx+38],eax
 004C5DBA    and         byte ptr [ebx+3C],0FE
 004C5DBE    test        esi,esi
>004C5DC0    je          004C5DD3
 004C5DC2    or          byte ptr [ebx+3C],1
 004C5DC6    mov         dword ptr [ebx+38],esi
 004C5DC9    lea         edx,[ebx+4C]
 004C5DCC    mov         eax,ebx
 004C5DCE    mov         ecx,dword ptr [eax]
 004C5DD0    call        dword ptr [ecx+1C]
 004C5DD3    pop         ecx
 004C5DD4    pop         edx
 004C5DD5    pop         esi
 004C5DD6    pop         ebx
 004C5DD7    ret
*}
end;

//004C5DD8
procedure TCanvas.RequiredState(ReqState:TCanvasState);
begin
{*
 004C5DD8    push        ebx
 004C5DD9    push        esi
 004C5DDA    push        ecx
 004C5DDB    mov         byte ptr [esp],dl
 004C5DDE    mov         esi,eax
 004C5DE0    movzx       ebx,byte ptr [esi+3C]
 004C5DE4    not         ebx
 004C5DE6    and         bl,byte ptr [esp]
 004C5DE9    movzx       eax,byte ptr ds:[4C5E4C]
 004C5DF0    cmp         al,bl
>004C5DF2    je          004C5E47
 004C5DF4    test        bl,1
>004C5DF7    je          004C5E20
 004C5DF9    mov         eax,esi
 004C5DFB    mov         edx,dword ptr [eax]
 004C5DFD    call        dword ptr [edx+9C]
 004C5E03    cmp         dword ptr [esi+38],0
>004C5E07    jne         004C5E20
 004C5E09    mov         ecx,dword ptr ds:[7C45F0];^SResString220:TResStringRec
 004C5E0F    mov         dl,1
 004C5E11    mov         eax,[0046BE9C];EInvalidOperation
 004C5E16    call        Exception.CreateRes
 004C5E1B    call        @RaiseExcept
 004C5E20    test        bl,2
>004C5E23    je          004C5E2C
 004C5E25    mov         eax,esi
 004C5E27    call        TCanvas.CreateFont
 004C5E2C    test        bl,4
>004C5E2F    je          004C5E38
 004C5E31    mov         eax,esi
 004C5E33    call        TCanvas.CreatePen
 004C5E38    test        bl,8
>004C5E3B    je          004C5E44
 004C5E3D    mov         eax,esi
 004C5E3F    call        TCanvas.CreateBrush
 004C5E44    or          byte ptr [esi+3C],bl
 004C5E47    pop         edx
 004C5E48    pop         esi
 004C5E49    pop         ebx
 004C5E4A    ret
*}
end;

//004C5E50
procedure TCanvas.CreateFont;
begin
{*
 004C5E50    push        ebx
 004C5E51    mov         ebx,eax
 004C5E53    mov         eax,dword ptr [ebx+40]
 004C5E56    call        TFont.GetHandle
 004C5E5B    push        eax
 004C5E5C    mov         eax,dword ptr [ebx+38]
 004C5E5F    push        eax
 004C5E60    call        gdi32.SelectObject
 004C5E65    mov         eax,dword ptr [ebx+40]
 004C5E68    mov         eax,dword ptr [eax+18]
 004C5E6B    call        ColorToRGB
 004C5E70    push        eax
 004C5E71    mov         eax,dword ptr [ebx+38]
 004C5E74    push        eax
 004C5E75    call        gdi32.SetTextColor
 004C5E7A    pop         ebx
 004C5E7B    ret
*}
end;

//004C5E7C
procedure TCanvas.CreatePen;
begin
{*
 004C5E7C    push        ebx
 004C5E7D    mov         ebx,eax
 004C5E7F    mov         eax,dword ptr [ebx+44]
 004C5E82    call        TPen.GetHandle
 004C5E87    push        eax
 004C5E88    mov         eax,dword ptr [ebx+38]
 004C5E8B    push        eax
 004C5E8C    call        gdi32.SelectObject
 004C5E91    mov         eax,dword ptr [ebx+44]
 004C5E94    movzx       eax,byte ptr [eax+18]
 004C5E98    movzx       eax,word ptr [eax*2+7A1018]
 004C5EA0    push        eax
 004C5EA1    mov         eax,dword ptr [ebx+38]
 004C5EA4    push        eax
 004C5EA5    call        gdi32.SetROP2
 004C5EAA    pop         ebx
 004C5EAB    ret
*}
end;

//004C5EAC
procedure TCanvas.CreateBrush;
begin
{*
 004C5EAC    push        ebx
 004C5EAD    push        esi
 004C5EAE    mov         ebx,eax
 004C5EB0    mov         eax,dword ptr [ebx+48]
 004C5EB3    call        TBrush.GetHandle
 004C5EB8    push        eax
 004C5EB9    call        gdi32.UnrealizeObject
 004C5EBE    mov         eax,dword ptr [ebx+48]
 004C5EC1    call        TBrush.GetHandle
 004C5EC6    push        eax
 004C5EC7    mov         eax,dword ptr [ebx+38]
 004C5ECA    push        eax
 004C5ECB    call        gdi32.SelectObject
 004C5ED0    mov         edx,dword ptr [ebx+48]
 004C5ED3    mov         eax,edx
 004C5ED5    mov         eax,dword ptr [eax+10]
 004C5ED8    cmp         byte ptr [eax+20],0
>004C5EDC    jne         004C5F03
 004C5EDE    mov         esi,edx
 004C5EE0    mov         eax,dword ptr [esi+10]
 004C5EE3    mov         eax,dword ptr [eax+18]
 004C5EE6    call        ColorToRGB
 004C5EEB    push        eax
 004C5EEC    mov         eax,dword ptr [ebx+38]
 004C5EEF    push        eax
 004C5EF0    call        gdi32.SetBkColor
 004C5EF5    push        2
 004C5EF7    mov         eax,dword ptr [ebx+38]
 004C5EFA    push        eax
 004C5EFB    call        gdi32.SetBkMode
 004C5F00    pop         esi
 004C5F01    pop         ebx
 004C5F02    ret
 004C5F03    mov         esi,edx
 004C5F05    mov         eax,dword ptr [esi+10]
 004C5F08    mov         eax,dword ptr [eax+18]
 004C5F0B    call        ColorToRGB
 004C5F10    not         eax
 004C5F12    push        eax
 004C5F13    mov         eax,dword ptr [ebx+38]
 004C5F16    push        eax
 004C5F17    call        gdi32.SetBkColor
 004C5F1C    push        1
 004C5F1E    mov         eax,dword ptr [ebx+38]
 004C5F21    push        eax
 004C5F22    call        gdi32.SetBkMode
 004C5F27    pop         esi
 004C5F28    pop         ebx
 004C5F29    ret
*}
end;

//004C5F2C
procedure TCanvas.FontChanged(AFont:TObject);
begin
{*
 004C5F2C    push        ebx
 004C5F2D    mov         ebx,eax
 004C5F2F    test        byte ptr [ebx+3C],2
>004C5F33    je          004C5F48
 004C5F35    and         byte ptr [ebx+3C],0FD
 004C5F39    mov         eax,[007CA460]
 004C5F3E    push        eax
 004C5F3F    mov         eax,dword ptr [ebx+38]
 004C5F42    push        eax
 004C5F43    call        gdi32.SelectObject
 004C5F48    pop         ebx
 004C5F49    ret
*}
end;

//004C5F4C
procedure TCanvas.PenChanged(APen:TObject);
begin
{*
 004C5F4C    push        ebx
 004C5F4D    mov         ebx,eax
 004C5F4F    test        byte ptr [ebx+3C],4
>004C5F53    je          004C5F68
 004C5F55    and         byte ptr [ebx+3C],0FB
 004C5F59    mov         eax,[007CA458]
 004C5F5E    push        eax
 004C5F5F    mov         eax,dword ptr [ebx+38]
 004C5F62    push        eax
 004C5F63    call        gdi32.SelectObject
 004C5F68    pop         ebx
 004C5F69    ret
*}
end;

//004C5F6C
procedure TCanvas.BrushChanged(ABrush:TObject);
begin
{*
 004C5F6C    push        ebx
 004C5F6D    mov         ebx,eax
 004C5F6F    test        byte ptr [ebx+3C],8
>004C5F73    je          004C5F88
 004C5F75    and         byte ptr [ebx+3C],0F7
 004C5F79    mov         eax,[007CA45C]
 004C5F7E    push        eax
 004C5F7F    mov         eax,dword ptr [ebx+38]
 004C5F82    push        eax
 004C5F83    call        gdi32.SelectObject
 004C5F88    pop         ebx
 004C5F89    ret
*}
end;

//004C5F8C
procedure InvalidGraphic(Str:PResStringRec);
begin
{*
 004C5F8C    push        ebx
 004C5F8D    mov         ebx,eax
 004C5F8F    mov         ecx,ebx
 004C5F91    mov         dl,1
 004C5F93    mov         eax,[004BD674];EInvalidGraphicOperation
 004C5F98    call        Exception.CreateRes
 004C5F9D    call        @RaiseExcept
 004C5FA2    pop         ebx
 004C5FA3    ret
*}
end;

//004C5FA4
procedure InvalidOperation(Str:PResStringRec);
begin
{*
 004C5FA4    push        ebx
 004C5FA5    mov         ebx,eax
 004C5FA7    mov         ecx,ebx
 004C5FA9    mov         dl,1
 004C5FAB    mov         eax,[004BD5C8];EInvalidGraphic
 004C5FB0    call        Exception.CreateRes
 004C5FB5    call        @RaiseExcept
 004C5FBA    pop         ebx
 004C5FBB    ret
*}
end;

//004C5FBC
procedure TWICImage.SetHeight(Value:Integer);
begin
{*
 004C5FBC    mov         eax,[007C457C];^SResString210:TResStringRec
 004C5FC1    call        InvalidOperation
 004C5FC6    ret
*}
end;

//004C5FC8
procedure TWICImage.SetWidth(Value:Integer);
begin
{*
 004C5FC8    mov         eax,[007C4594];^SResString211:TResStringRec
 004C5FCD    call        InvalidOperation
 004C5FD2    ret
*}
end;

//004C5FD4
procedure InvalidMetafile;
begin
{*
 004C5FD4    mov         eax,[007C4AD0];^SResString212:TResStringRec
 004C5FD9    call        InvalidOperation
 004C5FDE    ret
*}
end;

//004C5FE0
procedure OutOfResources;
begin
{*
 004C5FE0    push        ebp
 004C5FE1    mov         ebp,esp
 004C5FE3    push        0
 004C5FE5    xor         eax,eax
 004C5FE7    push        ebp
 004C5FE8    push        4C602A
 004C5FED    push        dword ptr fs:[eax]
 004C5FF0    mov         dword ptr fs:[eax],esp
 004C5FF3    lea         edx,[ebp-4]
 004C5FF6    mov         eax,[007C434C];^SResString219:TResStringRec
 004C5FFB    call        LoadResString
 004C6000    mov         ecx,dword ptr [ebp-4]
 004C6003    mov         dl,1
 004C6005    mov         eax,[0046BDEC];EOutOfResources
 004C600A    call        Exception.Create
 004C600F    call        @RaiseExcept
 004C6014    xor         eax,eax
 004C6016    pop         edx
 004C6017    pop         ecx
 004C6018    pop         ecx
 004C6019    mov         dword ptr fs:[eax],edx
 004C601C    push        4C6031
 004C6021    lea         eax,[ebp-4]
 004C6024    call        @UStrClr
 004C6029    ret
>004C602A    jmp         @HandleFinally
>004C602F    jmp         004C6021
 004C6031    pop         ecx
 004C6032    pop         ebp
 004C6033    ret
*}
end;

//004C6034
procedure GDIError;
begin
{*
 004C6034    push        ebp
 004C6035    mov         ebp,esp
 004C6037    add         esp,0FFFFFDFC
 004C603D    push        ebx
 004C603E    xor         eax,eax
 004C6040    mov         dword ptr [ebp-204],eax
 004C6046    xor         eax,eax
 004C6048    push        ebp
 004C6049    push        4C60D0
 004C604E    push        dword ptr fs:[eax]
 004C6051    mov         dword ptr fs:[eax],esp
 004C6054    call        kernel32.GetLastError
 004C6059    mov         ebx,eax
 004C605B    test        ebx,ebx
>004C605D    je          004C60B2
 004C605F    push        0
 004C6061    push        100
 004C6066    lea         eax,[ebp-200]
 004C606C    push        eax
 004C606D    push        400
 004C6072    push        ebx
 004C6073    push        0
 004C6075    push        1000
 004C607A    call        kernel32.FormatMessageW
 004C607F    test        eax,eax
>004C6081    je          004C60B2
 004C6083    lea         eax,[ebp-204]
 004C6089    lea         edx,[ebp-200]
 004C608F    mov         ecx,100
 004C6094    call        @UStrFromWArray
 004C6099    mov         ecx,dword ptr [ebp-204]
 004C609F    mov         dl,1
 004C60A1    mov         eax,[0046BDEC];EOutOfResources
 004C60A6    call        Exception.Create
 004C60AB    call        @RaiseExcept
>004C60B0    jmp         004C60B7
 004C60B2    call        OutOfResources
 004C60B7    xor         eax,eax
 004C60B9    pop         edx
 004C60BA    pop         ecx
 004C60BB    pop         ecx
 004C60BC    mov         dword ptr fs:[eax],edx
 004C60BF    push        4C60D7
 004C60C4    lea         eax,[ebp-204]
 004C60CA    call        @UStrClr
 004C60CF    ret
>004C60D0    jmp         @HandleFinally
>004C60D5    jmp         004C60C4
 004C60D7    pop         ebx
 004C60D8    mov         esp,ebp
 004C60DA    pop         ebp
 004C60DB    ret
*}
end;

//004C60DC
function GDICheck(Value:Windows.THandle):THandle;
begin
{*
 004C60DC    push        ebx
 004C60DD    mov         ebx,eax
 004C60DF    test        ebx,ebx
>004C60E1    jne         004C60E8
 004C60E3    call        GDIError
 004C60E8    mov         eax,ebx
 004C60EA    pop         ebx
 004C60EB    ret
*}
end;

//004C60EC
function DupBits(Src:Windows.HBITMAP; Size:Types.TPoint; Mono:Boolean):HBITMAP;
begin
{*
 004C60EC    push        ebp
 004C60ED    mov         ebp,esp
 004C60EF    add         esp,0FFFFFFCC
 004C60F2    push        ebx
 004C60F3    push        esi
 004C60F4    push        edi
 004C60F5    mov         esi,edx
 004C60F7    lea         edi,[ebp-0C]
 004C60FA    movs        dword ptr [edi],dword ptr [esi]
 004C60FB    movs        dword ptr [edi],dword ptr [esi]
 004C60FC    mov         ebx,ecx
 004C60FE    mov         dword ptr [ebp-4],eax
 004C6101    push        0
 004C6103    call        gdi32.CreateCompatibleDC
 004C6108    mov         dword ptr [ebp-18],eax
 004C610B    push        0
 004C610D    call        gdi32.CreateCompatibleDC
 004C6112    mov         dword ptr [ebp-1C],eax
 004C6115    xor         eax,eax
 004C6117    push        ebp
 004C6118    push        4C623A
 004C611D    push        dword ptr fs:[eax]
 004C6120    mov         dword ptr fs:[eax],esp
 004C6123    lea         eax,[ebp-34]
 004C6126    push        eax
 004C6127    push        18
 004C6129    mov         eax,dword ptr [ebp-4]
 004C612C    push        eax
 004C612D    call        gdi32.GetObjectW
 004C6132    test        bl,bl
>004C6134    je          004C614E
 004C6136    push        0
 004C6138    push        1
 004C613A    push        1
 004C613C    mov         eax,dword ptr [ebp-8]
 004C613F    push        eax
 004C6140    mov         eax,dword ptr [ebp-0C]
 004C6143    push        eax
 004C6144    call        gdi32.CreateBitmap
 004C6149    mov         dword ptr [ebp-10],eax
>004C614C    jmp         004C61B0
 004C614E    push        0
 004C6150    call        user32.GetDC
 004C6155    mov         dword ptr [ebp-14],eax
 004C6158    cmp         dword ptr [ebp-14],0
>004C615C    jne         004C6163
 004C615E    call        GDIError
 004C6163    xor         eax,eax
 004C6165    push        ebp
 004C6166    push        4C61A9
 004C616B    push        dword ptr fs:[eax]
 004C616E    mov         dword ptr fs:[eax],esp
 004C6171    mov         eax,dword ptr [ebp-8]
 004C6174    push        eax
 004C6175    mov         eax,dword ptr [ebp-0C]
 004C6178    push        eax
 004C6179    mov         eax,dword ptr [ebp-14]
 004C617C    push        eax
 004C617D    call        gdi32.CreateCompatibleBitmap
 004C6182    mov         dword ptr [ebp-10],eax
 004C6185    cmp         dword ptr [ebp-10],0
>004C6189    jne         004C6190
 004C618B    call        GDIError
 004C6190    xor         eax,eax
 004C6192    pop         edx
 004C6193    pop         ecx
 004C6194    pop         ecx
 004C6195    mov         dword ptr fs:[eax],edx
 004C6198    push        4C61B0
 004C619D    mov         eax,dword ptr [ebp-14]
 004C61A0    push        eax
 004C61A1    push        0
 004C61A3    call        user32.ReleaseDC
 004C61A8    ret
>004C61A9    jmp         @HandleFinally
>004C61AE    jmp         004C619D
 004C61B0    cmp         dword ptr [ebp-10],0
>004C61B4    je          004C621A
 004C61B6    mov         eax,dword ptr [ebp-4]
 004C61B9    push        eax
 004C61BA    mov         eax,dword ptr [ebp-18]
 004C61BD    push        eax
 004C61BE    call        gdi32.SelectObject
 004C61C3    mov         ebx,eax
 004C61C5    mov         eax,dword ptr [ebp-10]
 004C61C8    push        eax
 004C61C9    mov         eax,dword ptr [ebp-1C]
 004C61CC    push        eax
 004C61CD    call        gdi32.SelectObject
 004C61D2    mov         esi,eax
 004C61D4    push        0CC0020
 004C61D9    mov         eax,dword ptr [ebp-2C]
 004C61DC    push        eax
 004C61DD    mov         eax,dword ptr [ebp-30]
 004C61E0    push        eax
 004C61E1    push        0
 004C61E3    push        0
 004C61E5    mov         eax,dword ptr [ebp-18]
 004C61E8    push        eax
 004C61E9    mov         eax,dword ptr [ebp-8]
 004C61EC    push        eax
 004C61ED    mov         eax,dword ptr [ebp-0C]
 004C61F0    push        eax
 004C61F1    push        0
 004C61F3    push        0
 004C61F5    mov         eax,dword ptr [ebp-1C]
 004C61F8    push        eax
 004C61F9    call        gdi32.StretchBlt
 004C61FE    test        ebx,ebx
>004C6200    je          004C620C
 004C6202    push        ebx
 004C6203    mov         eax,dword ptr [ebp-18]
 004C6206    push        eax
 004C6207    call        gdi32.SelectObject
 004C620C    test        esi,esi
>004C620E    je          004C621A
 004C6210    push        esi
 004C6211    mov         eax,dword ptr [ebp-1C]
 004C6214    push        eax
 004C6215    call        gdi32.SelectObject
 004C621A    xor         eax,eax
 004C621C    pop         edx
 004C621D    pop         ecx
 004C621E    pop         ecx
 004C621F    mov         dword ptr fs:[eax],edx
 004C6222    push        4C6241
 004C6227    mov         eax,dword ptr [ebp-18]
 004C622A    push        eax
 004C622B    call        gdi32.DeleteDC
 004C6230    mov         eax,dword ptr [ebp-1C]
 004C6233    push        eax
 004C6234    call        gdi32.DeleteDC
 004C6239    ret
>004C623A    jmp         @HandleFinally
>004C623F    jmp         004C6227
 004C6241    mov         eax,dword ptr [ebp-10]
 004C6244    pop         edi
 004C6245    pop         esi
 004C6246    pop         ebx
 004C6247    mov         esp,ebp
 004C6249    pop         ebp
 004C624A    ret
*}
end;

//004C624C
function GetDInColors(BitCount:Word):Integer;
begin
{*
 004C624C    mov         edx,eax
 004C624E    dec         dx
>004C6251    je          004C625F
 004C6253    sub         dx,3
>004C6257    je          004C625F
 004C6259    sub         dx,4
>004C625D    jne         004C6269
 004C625F    mov         ecx,eax
 004C6261    mov         eax,1
 004C6266    shl         eax,cl
 004C6268    ret
 004C6269    xor         eax,eax
 004C626B    ret
*}
end;

//004C626C
function BytesPerScanline(PixelsPerScanline:LongInt; BitsPerPixel:LongInt; Alignment:LongInt):LongInt;
begin
{*
 004C626C    dec         ecx
 004C626D    imul        edx
 004C626F    add         eax,ecx
 004C6271    not         ecx
 004C6273    and         eax,ecx
 004C6275    test        eax,eax
>004C6277    jns         004C627C
 004C6279    add         eax,7
 004C627C    sar         eax,3
 004C627F    ret
*}
end;

//004C6280
function TransparentStretchBlt(DstDC:Windows.HDC; DstX:Integer; DstY:Integer; DstW:Integer; DstH:Integer; SrcDC:Windows.HDC; SrcX:Integer; SrcY:Integer; SrcW:Integer; SrcH:Integer; MaskDC:Windows.HDC; MaskX:Integer; MaskY:Integer):Boolean;
begin
{*
 004C6280    push        ebp
 004C6281    mov         ebp,esp
 004C6283    add         esp,0FFFFFFDC
 004C6286    push        ebx
 004C6287    push        esi
 004C6288    push        edi
 004C6289    mov         dword ptr [ebp-8],ecx
 004C628C    mov         dword ptr [ebp-4],edx
 004C628F    mov         edi,eax
 004C6291    mov         esi,dword ptr [ebp+14]
 004C6294    mov         ebx,dword ptr [ebp+18]
 004C6297    mov         byte ptr [ebp-9],1
 004C629B    mov         eax,[007C4EC4];^gvar_0079EDDC
 004C62A0    cmp         dword ptr [eax],2
>004C62A3    jne         004C634F
 004C62A9    cmp         ebx,dword ptr [ebp+2C]
>004C62AC    jne         004C634F
 004C62B2    cmp         esi,dword ptr [ebp+28]
>004C62B5    jne         004C634F
 004C62BB    push        1
 004C62BD    push        1
 004C62BF    mov         eax,dword ptr [ebp+24]
 004C62C2    push        eax
 004C62C3    call        gdi32.CreateCompatibleBitmap
 004C62C8    call        GDICheck
 004C62CD    mov         dword ptr [ebp-14],eax
 004C62D0    mov         eax,dword ptr [ebp-14]
 004C62D3    push        eax
 004C62D4    mov         eax,dword ptr [ebp+10]
 004C62D7    push        eax
 004C62D8    call        gdi32.SelectObject
 004C62DD    mov         dword ptr [ebp-14],eax
 004C62E0    xor         eax,eax
 004C62E2    push        ebp
 004C62E3    push        4C6348
 004C62E8    push        dword ptr fs:[eax]
 004C62EB    mov         dword ptr fs:[eax],esp
 004C62EE    push        0CCAA0029
 004C62F3    mov         eax,dword ptr [ebp+8]
 004C62F6    push        eax
 004C62F7    mov         eax,dword ptr [ebp+0C]
 004C62FA    push        eax
 004C62FB    mov         eax,dword ptr [ebp-14]
 004C62FE    push        eax
 004C62FF    mov         eax,dword ptr [ebp+1C]
 004C6302    push        eax
 004C6303    mov         eax,dword ptr [ebp+20]
 004C6306    push        eax
 004C6307    mov         eax,dword ptr [ebp+24]
 004C630A    push        eax
 004C630B    mov         eax,dword ptr [ebp+28]
 004C630E    push        eax
 004C630F    mov         eax,dword ptr [ebp+2C]
 004C6312    push        eax
 004C6313    mov         eax,dword ptr [ebp-8]
 004C6316    push        eax
 004C6317    mov         eax,dword ptr [ebp-4]
 004C631A    push        eax
 004C631B    push        edi
 004C631C    call        gdi32.MaskBlt
 004C6321    xor         eax,eax
 004C6323    pop         edx
 004C6324    pop         ecx
 004C6325    pop         ecx
 004C6326    mov         dword ptr fs:[eax],edx
 004C6329    push        4C64FC
 004C632E    mov         eax,dword ptr [ebp-14]
 004C6331    push        eax
 004C6332    mov         eax,dword ptr [ebp+10]
 004C6335    push        eax
 004C6336    call        gdi32.SelectObject
 004C633B    mov         dword ptr [ebp-14],eax
 004C633E    mov         eax,dword ptr [ebp-14]
 004C6341    push        eax
 004C6342    call        gdi32.DeleteObject
 004C6347    ret
>004C6348    jmp         @HandleFinally
>004C634D    jmp         004C632E
 004C634F    xor         eax,eax
 004C6351    mov         dword ptr [ebp-24],eax
 004C6354    push        0
 004C6356    call        gdi32.CreateCompatibleDC
 004C635B    call        GDICheck
 004C6360    mov         dword ptr [ebp-10],eax
 004C6363    xor         eax,eax
 004C6365    push        ebp
 004C6366    push        4C64F5
 004C636B    push        dword ptr fs:[eax]
 004C636E    mov         dword ptr fs:[eax],esp
 004C6371    push        esi
 004C6372    push        ebx
 004C6373    mov         eax,dword ptr [ebp+24]
 004C6376    push        eax
 004C6377    call        gdi32.CreateCompatibleBitmap
 004C637C    call        GDICheck
 004C6381    mov         dword ptr [ebp-14],eax
 004C6384    mov         eax,dword ptr [ebp-14]
 004C6387    push        eax
 004C6388    mov         eax,dword ptr [ebp-10]
 004C638B    push        eax
 004C638C    call        gdi32.SelectObject
 004C6391    mov         dword ptr [ebp-18],eax
 004C6394    push        0
 004C6396    mov         eax,[007CA44C];gvar_007CA44C
 004C639B    push        eax
 004C639C    mov         eax,dword ptr [ebp+24]
 004C639F    push        eax
 004C63A0    call        gdi32.SelectPalette
 004C63A5    mov         dword ptr [ebp-24],eax
 004C63A8    push        0
 004C63AA    mov         eax,dword ptr [ebp-24]
 004C63AD    push        eax
 004C63AE    mov         eax,dword ptr [ebp+24]
 004C63B1    push        eax
 004C63B2    call        gdi32.SelectPalette
 004C63B7    cmp         dword ptr [ebp-24],0
>004C63BB    je          004C63D1
 004C63BD    push        0FF
 004C63BF    mov         eax,dword ptr [ebp-24]
 004C63C2    push        eax
 004C63C3    mov         eax,dword ptr [ebp-10]
 004C63C6    push        eax
 004C63C7    call        gdi32.SelectPalette
 004C63CC    mov         dword ptr [ebp-24],eax
>004C63CF    jmp         004C63E5
 004C63D1    push        0FF
 004C63D3    mov         eax,[007CA44C];gvar_007CA44C
 004C63D8    push        eax
 004C63D9    mov         eax,dword ptr [ebp-10]
 004C63DC    push        eax
 004C63DD    call        gdi32.SelectPalette
 004C63E2    mov         dword ptr [ebp-24],eax
 004C63E5    mov         eax,dword ptr [ebp-10]
 004C63E8    push        eax
 004C63E9    call        gdi32.RealizePalette
 004C63EE    push        0CC0020
 004C63F3    push        esi
 004C63F4    push        ebx
 004C63F5    mov         eax,dword ptr [ebp+8]
 004C63F8    push        eax
 004C63F9    mov         eax,dword ptr [ebp+0C]
 004C63FC    push        eax
 004C63FD    mov         eax,dword ptr [ebp+10]
 004C6400    push        eax
 004C6401    push        esi
 004C6402    push        ebx
 004C6403    push        0
 004C6405    push        0
 004C6407    mov         eax,dword ptr [ebp-10]
 004C640A    push        eax
 004C640B    call        gdi32.StretchBlt
 004C6410    push        440328
 004C6415    push        esi
 004C6416    push        ebx
 004C6417    mov         eax,dword ptr [ebp+1C]
 004C641A    push        eax
 004C641B    mov         eax,dword ptr [ebp+20]
 004C641E    push        eax
 004C641F    mov         eax,dword ptr [ebp+24]
 004C6422    push        eax
 004C6423    push        esi
 004C6424    push        ebx
 004C6425    push        0
 004C6427    push        0
 004C6429    mov         eax,dword ptr [ebp-10]
 004C642C    push        eax
 004C642D    call        gdi32.StretchBlt
 004C6432    push        0
 004C6434    push        edi
 004C6435    call        gdi32.SetTextColor
 004C643A    mov         dword ptr [ebp-1C],eax
 004C643D    push        0FFFFFF
 004C6442    push        edi
 004C6443    call        gdi32.SetBkColor
 004C6448    mov         dword ptr [ebp-20],eax
 004C644B    push        8800C6
 004C6450    push        esi
 004C6451    push        ebx
 004C6452    mov         eax,dword ptr [ebp+8]
 004C6455    push        eax
 004C6456    mov         eax,dword ptr [ebp+0C]
 004C6459    push        eax
 004C645A    mov         eax,dword ptr [ebp+10]
 004C645D    push        eax
 004C645E    mov         eax,dword ptr [ebp+28]
 004C6461    push        eax
 004C6462    mov         eax,dword ptr [ebp+2C]
 004C6465    push        eax
 004C6466    mov         eax,dword ptr [ebp-8]
 004C6469    push        eax
 004C646A    mov         eax,dword ptr [ebp-4]
 004C646D    push        eax
 004C646E    push        edi
 004C646F    call        gdi32.StretchBlt
 004C6474    push        660046
 004C6479    push        esi
 004C647A    push        ebx
 004C647B    push        0
 004C647D    push        0
 004C647F    mov         eax,dword ptr [ebp-10]
 004C6482    push        eax
 004C6483    mov         eax,dword ptr [ebp+28]
 004C6486    push        eax
 004C6487    mov         eax,dword ptr [ebp+2C]
 004C648A    push        eax
 004C648B    mov         eax,dword ptr [ebp-8]
 004C648E    push        eax
 004C648F    mov         eax,dword ptr [ebp-4]
 004C6492    push        eax
 004C6493    push        edi
 004C6494    call        gdi32.StretchBlt
 004C6499    mov         eax,dword ptr [ebp-1C]
 004C649C    push        eax
 004C649D    push        edi
 004C649E    call        gdi32.SetTextColor
 004C64A3    mov         eax,dword ptr [ebp-20]
 004C64A6    push        eax
 004C64A7    push        edi
 004C64A8    call        gdi32.SetBkColor
 004C64AD    cmp         dword ptr [ebp-18],0
>004C64B1    je          004C64C0
 004C64B3    mov         eax,dword ptr [ebp-18]
 004C64B6    push        eax
 004C64B7    mov         eax,dword ptr [ebp-10]
 004C64BA    push        eax
 004C64BB    call        gdi32.SelectObject
 004C64C0    mov         eax,dword ptr [ebp-14]
 004C64C3    push        eax
 004C64C4    call        gdi32.DeleteObject
 004C64C9    xor         eax,eax
 004C64CB    pop         edx
 004C64CC    pop         ecx
 004C64CD    pop         ecx
 004C64CE    mov         dword ptr fs:[eax],edx
 004C64D1    push        4C64FC
 004C64D6    cmp         dword ptr [ebp-24],0
>004C64DA    je          004C64EB
 004C64DC    push        0
 004C64DE    mov         eax,dword ptr [ebp-24]
 004C64E1    push        eax
 004C64E2    mov         eax,dword ptr [ebp-10]
 004C64E5    push        eax
 004C64E6    call        gdi32.SelectPalette
 004C64EB    mov         eax,dword ptr [ebp-10]
 004C64EE    push        eax
 004C64EF    call        gdi32.DeleteDC
 004C64F4    ret
>004C64F5    jmp         @HandleFinally
>004C64FA    jmp         004C64D6
 004C64FC    movzx       eax,byte ptr [ebp-9]
 004C6500    pop         edi
 004C6501    pop         esi
 004C6502    pop         ebx
 004C6503    mov         esp,ebp
 004C6505    pop         ebp
 004C6506    ret         28
*}
end;

//004C650C
procedure RGBTripleToQuad(var ColorTable:void );
begin
{*
 004C650C    push        ebx
 004C650D    push        esi
 004C650E    push        edi
 004C650F    mov         esi,eax
 004C6511    mov         edi,esi
 004C6513    mov         edx,0FF
 004C6518    lea         eax,[edi+edx*4]
 004C651B    lea         ecx,[edx+edx*2]
 004C651E    lea         ecx,[esi+ecx]
 004C6521    movzx       ebx,byte ptr [ecx+2]
 004C6525    mov         byte ptr [eax+2],bl
 004C6528    movzx       ebx,byte ptr [ecx+1]
 004C652C    mov         byte ptr [eax+1],bl
 004C652F    movzx       ecx,byte ptr [ecx]
 004C6532    mov         byte ptr [eax],cl
 004C6534    mov         byte ptr [eax+3],0
 004C6538    dec         edx
 004C6539    test        edx,edx
>004C653B    jne         004C6518
 004C653D    mov         byte ptr [edi+3],0
 004C6541    pop         edi
 004C6542    pop         esi
 004C6543    pop         ebx
 004C6544    ret
*}
end;

//004C6548
procedure RGBQuadToTriple(var ColorTable:void ; var ColorCount:Integer);
begin
{*
 004C6548    push        ebx
 004C6549    push        esi
 004C654A    push        edi
 004C654B    add         esp,0FFFFFFF8
 004C654E    mov         dword ptr [esp],edx
 004C6551    mov         esi,eax
 004C6553    mov         dword ptr [esp+4],esi
 004C6557    mov         edi,dword ptr [esp]
 004C655A    mov         edi,dword ptr [edi]
 004C655C    dec         edi
 004C655D    test        edi,edi
>004C655F    jle         004C658A
 004C6561    mov         ecx,1
 004C6566    mov         eax,dword ptr [esp+4]
 004C656A    lea         eax,[eax+ecx*4]
 004C656D    lea         edx,[ecx+ecx*2]
 004C6570    lea         edx,[esi+edx]
 004C6573    movzx       ebx,byte ptr [eax+2]
 004C6577    mov         byte ptr [edx+2],bl
 004C657A    movzx       ebx,byte ptr [eax+1]
 004C657E    mov         byte ptr [edx+1],bl
 004C6581    movzx       eax,byte ptr [eax]
 004C6584    mov         byte ptr [edx],al
 004C6586    inc         ecx
 004C6587    dec         edi
>004C6588    jne         004C6566
 004C658A    mov         eax,dword ptr [esp]
 004C658D    cmp         dword ptr [eax],100
>004C6593    jge         004C65BD
 004C6595    mov         eax,dword ptr [esp]
 004C6598    mov         edx,100
 004C659D    sub         edx,dword ptr [eax]
 004C659F    lea         edx,[edx+edx*2]
 004C65A2    mov         eax,dword ptr [esp]
 004C65A5    mov         eax,dword ptr [eax]
 004C65A7    lea         eax,[eax+eax*2]
 004C65AA    lea         eax,[esi+eax]
 004C65AD    xor         ecx,ecx
 004C65AF    call        @FillChar
 004C65B4    mov         eax,dword ptr [esp]
 004C65B7    mov         dword ptr [eax],100
 004C65BD    pop         ecx
 004C65BE    pop         edx
 004C65BF    pop         edi
 004C65C0    pop         esi
 004C65C1    pop         ebx
 004C65C2    ret
*}
end;

//004C65C4
procedure ByteSwapColors(var Colors:void ; Count:Integer);
begin
{*
 004C65C4    push        ebp
 004C65C5    mov         ebp,esp
 004C65C7    add         esp,0FFFFFFF4
 004C65CA    mov         dword ptr [ebp-8],edx
 004C65CD    mov         dword ptr [ebp-4],eax
 004C65D0    mov         eax,[007C4C70];Test8086:Byte
 004C65D5    movzx       eax,byte ptr [eax]
 004C65D8    mov         dword ptr [ebp-0C],eax
 004C65DB    mov         edx,dword ptr [ebp-4]
 004C65DE    mov         ecx,dword ptr [ebp-8]
 004C65E1    dec         ecx
>004C65E2    js          004C6613
 004C65E4    cmp         dword ptr [ebp-0C],2
>004C65E8    jle         004C65FA
 004C65EA    mov         eax,dword ptr [edx+ecx*4]
 004C65ED    bswap       eax
 004C65EF    shr         eax,8
 004C65F2    mov         dword ptr [edx+ecx*4],eax
 004C65F5    dec         ecx
>004C65F6    jns         004C65EA
>004C65F8    jmp         004C6613
 004C65FA    push        ebx
 004C65FB    xor         ebx,ebx
 004C65FD    mov         eax,dword ptr [edx+ecx*4]
 004C6600    mov         bh,al
 004C6602    mov         bl,ah
 004C6604    shr         eax,10
 004C6607    shl         ebx,8
 004C660A    mov         bl,al
 004C660C    mov         dword ptr [edx+ecx*4],ebx
 004C660F    dec         ecx
>004C6610    jns         004C65FB
 004C6612    pop         ebx
 004C6613    mov         esp,ebp
 004C6615    pop         ebp
 004C6616    ret
*}
end;

//004C6618
function CreateSystemPalette(const Entries:array[$0..-$1] of System.UITypes.TColor; const _Dv_:$0..-$1):HPALETTE;
begin
{*
 004C6618    push        ebp
 004C6619    mov         ebp,esp
 004C661B    add         esp,0FFFFFBF8
 004C6621    push        ebx
 004C6622    mov         word ptr [ebp-408],300
 004C662B    mov         word ptr [ebp-406],10
 004C6634    lea         edx,[ebp-404]
 004C663A    mov         ecx,40
 004C663F    call        Move
 004C6644    push        0
 004C6646    call        user32.GetDC
 004C664B    mov         dword ptr [ebp-4],eax
 004C664E    xor         eax,eax
 004C6650    push        ebp
 004C6651    push        4C6715
 004C6656    push        dword ptr fs:[eax]
 004C6659    mov         dword ptr fs:[eax],esp
 004C665C    push        68
 004C665E    mov         eax,dword ptr [ebp-4]
 004C6661    push        eax
 004C6662    call        gdi32.GetDeviceCaps
 004C6667    mov         ebx,eax
 004C6669    cmp         ebx,10
>004C666C    jl          004C66FC
 004C6672    lea         eax,[ebp-404]
 004C6678    push        eax
 004C6679    push        8
 004C667B    push        0
 004C667D    mov         eax,dword ptr [ebp-4]
 004C6680    push        eax
 004C6681    call        gdi32.GetSystemPaletteEntries
 004C6686    cmp         dword ptr [ebp-3E8],0C0C0C0
>004C6690    jne         004C66DE
 004C6692    lea         eax,[ebp-3E8]
 004C6698    push        eax
 004C6699    push        1
 004C669B    mov         eax,ebx
 004C669D    sub         eax,8
 004C66A0    push        eax
 004C66A1    mov         eax,dword ptr [ebp-4]
 004C66A4    push        eax
 004C66A5    call        gdi32.GetSystemPaletteEntries
 004C66AA    movzx       eax,word ptr [ebp-406]
 004C66B1    lea         eax,[ebp+eax*4-420]
 004C66B8    push        eax
 004C66B9    push        7
 004C66BB    sub         ebx,7
 004C66BE    push        ebx
 004C66BF    mov         eax,dword ptr [ebp-4]
 004C66C2    push        eax
 004C66C3    call        gdi32.GetSystemPaletteEntries
 004C66C8    lea         eax,[ebp-3E4]
 004C66CE    push        eax
 004C66CF    push        1
 004C66D1    push        7
 004C66D3    mov         eax,dword ptr [ebp-4]
 004C66D6    push        eax
 004C66D7    call        gdi32.GetSystemPaletteEntries
>004C66DC    jmp         004C66FC
 004C66DE    movzx       eax,word ptr [ebp-406]
 004C66E5    lea         eax,[ebp+eax*4-424]
 004C66EC    push        eax
 004C66ED    push        8
 004C66EF    sub         ebx,8
 004C66F2    push        ebx
 004C66F3    mov         eax,dword ptr [ebp-4]
 004C66F6    push        eax
 004C66F7    call        gdi32.GetSystemPaletteEntries
 004C66FC    xor         eax,eax
 004C66FE    pop         edx
 004C66FF    pop         ecx
 004C6700    pop         ecx
 004C6701    mov         dword ptr fs:[eax],edx
 004C6704    push        4C671C
 004C6709    mov         eax,dword ptr [ebp-4]
 004C670C    push        eax
 004C670D    push        0
 004C670F    call        user32.ReleaseDC
 004C6714    ret
>004C6715    jmp         @HandleFinally
>004C671A    jmp         004C6709
 004C671C    lea         eax,[ebp-408]
 004C6722    push        eax
 004C6723    call        gdi32.CreatePalette
 004C6728    pop         ebx
 004C6729    mov         esp,ebp
 004C672B    pop         ebp
 004C672C    ret
*}
end;

//004C6730
function SystemPaletteOverride(var Pal:Windows.TMaxLogPalette):Boolean;
begin
{*
 004C6730    push        ebp
 004C6731    mov         ebp,esp
 004C6733    add         esp,0FFFFFFF8
 004C6736    push        ebx
 004C6737    mov         ebx,eax
 004C6739    mov         byte ptr [ebp-1],0
 004C673D    cmp         dword ptr ds:[7CA44C],0;gvar_007CA44C
>004C6744    je          004C67BD
 004C6746    push        0
 004C6748    call        user32.GetDC
 004C674D    mov         dword ptr [ebp-8],eax
 004C6750    xor         edx,edx
 004C6752    push        ebp
 004C6753    push        4C67B6
 004C6758    push        dword ptr fs:[edx]
 004C675B    mov         dword ptr fs:[edx],esp
 004C675E    push        68
 004C6760    mov         eax,dword ptr [ebp-8]
 004C6763    push        eax
 004C6764    call        gdi32.GetDeviceCaps
 004C6769    cmp         eax,10
>004C676C    jl          004C679D
 004C676E    lea         eax,[ebx+4]
 004C6771    push        eax
 004C6772    push        8
 004C6774    push        0
 004C6776    mov         eax,[007CA44C];gvar_007CA44C
 004C677B    push        eax
 004C677C    call        gdi32.GetPaletteEntries
 004C6781    movzx       eax,word ptr [ebx+2]
 004C6785    lea         eax,[ebx+eax*4-1C]
 004C6789    push        eax
 004C678A    push        8
 004C678C    push        8
 004C678E    mov         eax,[007CA44C];gvar_007CA44C
 004C6793    push        eax
 004C6794    call        gdi32.GetPaletteEntries
 004C6799    mov         byte ptr [ebp-1],1
 004C679D    xor         eax,eax
 004C679F    pop         edx
 004C67A0    pop         ecx
 004C67A1    pop         ecx
 004C67A2    mov         dword ptr fs:[eax],edx
 004C67A5    push        4C67BD
 004C67AA    mov         eax,dword ptr [ebp-8]
 004C67AD    push        eax
 004C67AE    push        0
 004C67B0    call        user32.ReleaseDC
 004C67B5    ret
>004C67B6    jmp         @HandleFinally
>004C67BB    jmp         004C67AA
 004C67BD    movzx       eax,byte ptr [ebp-1]
 004C67C1    pop         ebx
 004C67C2    pop         ecx
 004C67C3    pop         ecx
 004C67C4    pop         ebp
 004C67C5    ret
*}
end;

//004C67C8
function PaletteFromDIBColorTable(DIBHandle:Windows.THandle; ColorTable:Pointer; ColorCount:Integer):HPALETTE;
begin
{*
 004C67C8    push        ebx
 004C67C9    push        esi
 004C67CA    push        edi
 004C67CB    push        ebp
 004C67CC    add         esp,0FFFFFBFC
 004C67D2    mov         ebx,ecx
 004C67D4    mov         ebp,edx
 004C67D6    mov         edi,eax
 004C67D8    xor         esi,esi
 004C67DA    mov         word ptr [esp],300
 004C67E0    test        edi,edi
>004C67E2    je          004C681C
 004C67E4    push        0
 004C67E6    call        gdi32.CreateCompatibleDC
 004C67EB    mov         ebx,eax
 004C67ED    push        edi
 004C67EE    push        ebx
 004C67EF    call        gdi32.SelectObject
 004C67F4    mov         edi,eax
 004C67F6    lea         eax,[esp+4]
 004C67FA    push        eax
 004C67FB    push        100
 004C6800    push        0
 004C6802    push        ebx
 004C6803    call        gdi32.GetDIBColorTable
 004C6808    mov         word ptr [esp+2],ax
 004C680D    push        edi
 004C680E    push        ebx
 004C680F    call        gdi32.SelectObject
 004C6814    push        ebx
 004C6815    call        gdi32.DeleteDC
>004C681A    jmp         004C6844
 004C681C    cmp         ebx,100
>004C6822    jle         004C682E
 004C6824    mov         eax,[007C457C];^SResString210:TResStringRec
 004C6829    call        InvalidOperation
 004C682E    mov         word ptr [esp+2],bx
 004C6833    mov         ecx,ebx
 004C6835    add         ecx,ecx
 004C6837    add         ecx,ecx
 004C6839    lea         edx,[esp+4]
 004C683D    mov         eax,ebp
 004C683F    call        Move
 004C6844    cmp         word ptr [esp+2],0
>004C684A    je          004C6877
 004C684C    cmp         word ptr [esp+2],10
>004C6852    jne         004C685F
 004C6854    mov         eax,esp
 004C6856    call        SystemPaletteOverride
 004C685B    test        al,al
>004C685D    jne         004C686D
 004C685F    movzx       edx,word ptr [esp+2]
 004C6864    lea         eax,[esp+4]
 004C6868    call        ByteSwapColors
 004C686D    mov         eax,esp
 004C686F    push        eax
 004C6870    call        gdi32.CreatePalette
 004C6875    mov         esi,eax
 004C6877    mov         eax,esi
 004C6879    add         esp,404
 004C687F    pop         ebp
 004C6880    pop         edi
 004C6881    pop         esi
 004C6882    pop         ebx
 004C6883    ret
*}
end;

//004C6884
function PaletteToDIBColorTable(Pal:Windows.HPALETTE; var ColorTable:array[$0..-$1] of Winapi.Windows.TRGBQuad; const _Dv_:$0..-$1):Integer;
begin
{*
 004C6884    push        ebx
 004C6885    push        esi
 004C6886    push        edi
 004C6887    push        ecx
 004C6888    mov         edi,ecx
 004C688A    mov         esi,edx
 004C688C    mov         ebx,eax
 004C688E    xor         eax,eax
 004C6890    mov         dword ptr [esp],eax
 004C6893    test        ebx,ebx
>004C6895    je          004C68CD
 004C6897    push        esp
 004C6898    push        4
 004C689A    push        ebx
 004C689B    call        gdi32.GetObjectW
 004C68A0    test        eax,eax
>004C68A2    je          004C68CD
 004C68A4    cmp         dword ptr [esp],0
>004C68A8    je          004C68CD
 004C68AA    mov         eax,edi
 004C68AC    inc         eax
 004C68AD    cmp         eax,dword ptr [esp]
>004C68B0    jge         004C68B5
 004C68B2    mov         dword ptr [esp],eax
 004C68B5    push        esi
 004C68B6    mov         eax,dword ptr [esp+4]
 004C68BA    push        eax
 004C68BB    push        0
 004C68BD    push        ebx
 004C68BE    call        gdi32.GetPaletteEntries
 004C68C3    mov         eax,esi
 004C68C5    mov         edx,dword ptr [esp]
 004C68C8    call        ByteSwapColors
 004C68CD    mov         eax,dword ptr [esp]
 004C68D0    pop         edx
 004C68D1    pop         edi
 004C68D2    pop         esi
 004C68D3    pop         ebx
 004C68D4    ret
*}
end;

//004C68D8
procedure TwoBitsFromDIB(var BI:Windows.TBitmapInfoHeader; var XorBits:Windows.HBITMAP; var AndBits:Windows.HBITMAP; const IconSize:Types.TPoint);
begin
{*
 004C68D8    push        ebp
 004C68D9    mov         ebp,esp
 004C68DB    add         esp,0FFFFFFEC
 004C68DE    push        ebx
 004C68DF    push        esi
 004C68E0    push        edi
 004C68E1    mov         dword ptr [ebp-8],ecx
 004C68E4    mov         ebx,edx
 004C68E6    mov         dword ptr [ebp-4],eax
 004C68E9    mov         eax,dword ptr [ebp-4]
 004C68EC    shr         dword ptr [eax+8],1
 004C68EF    mov         edx,dword ptr [ebp-4]
 004C68F2    movzx       edx,word ptr [edx+0E]
 004C68F6    mov         eax,dword ptr [ebp-4]
 004C68F9    mov         eax,dword ptr [eax+4]
 004C68FC    mov         ecx,20
 004C6901    call        BytesPerScanline
 004C6906    mov         edx,dword ptr [ebp-4]
 004C6909    imul        dword ptr [edx+8]
 004C690C    mov         edx,dword ptr [ebp-4]
 004C690F    mov         dword ptr [edx+14],eax
 004C6912    mov         eax,dword ptr [ebp-4]
 004C6915    movzx       eax,word ptr [eax+0E]
 004C6919    call        GetDInColors
 004C691E    mov         esi,eax
 004C6920    push        0
 004C6922    call        user32.GetDC
 004C6927    mov         dword ptr [ebp-10],eax
 004C692A    cmp         dword ptr [ebp-10],0
>004C692E    jne         004C6935
 004C6930    call        OutOfResources
 004C6935    xor         edx,edx
 004C6937    push        ebp
 004C6938    push        4C6A7C
 004C693D    push        dword ptr fs:[edx]
 004C6940    mov         dword ptr fs:[edx],esp
 004C6943    mov         edi,dword ptr [ebp-4]
 004C6946    mov         eax,edi
 004C6948    add         eax,28
 004C694B    mov         edx,esi
 004C694D    add         edx,edx
 004C694F    add         edx,edx
 004C6951    add         eax,edx
 004C6953    mov         dword ptr [ebp-14],eax
 004C6956    push        0
 004C6958    push        edi
 004C6959    mov         eax,dword ptr [ebp-14]
 004C695C    push        eax
 004C695D    push        4
 004C695F    mov         eax,dword ptr [ebp-4]
 004C6962    push        eax
 004C6963    mov         eax,dword ptr [ebp-10]
 004C6966    push        eax
 004C6967    call        gdi32.CreateDIBitmap
 004C696C    call        GDICheck
 004C6971    mov         dword ptr [ebp-0C],eax
 004C6974    xor         eax,eax
 004C6976    push        ebp
 004C6977    push        4C69A8
 004C697C    push        dword ptr fs:[eax]
 004C697F    mov         dword ptr fs:[eax],esp
 004C6982    mov         edx,dword ptr [ebp+8]
 004C6985    xor         ecx,ecx
 004C6987    mov         eax,dword ptr [ebp-0C]
 004C698A    call        DupBits
 004C698F    mov         dword ptr [ebx],eax
 004C6991    xor         eax,eax
 004C6993    pop         edx
 004C6994    pop         ecx
 004C6995    pop         ecx
 004C6996    mov         dword ptr fs:[eax],edx
 004C6999    push        4C69AF
 004C699E    mov         eax,dword ptr [ebp-0C]
 004C69A1    push        eax
 004C69A2    call        gdi32.DeleteObject
 004C69A7    ret
>004C69A8    jmp         @HandleFinally
>004C69AD    jmp         004C699E
 004C69AF    mov         eax,dword ptr [ebp-4]
 004C69B2    mov         eax,dword ptr [eax+14]
 004C69B5    add         dword ptr [ebp-14],eax
 004C69B8    mov         eax,dword ptr [ebp-4]
 004C69BB    mov         bx,1
 004C69BF    mov         word ptr [eax+0E],bx
 004C69C3    movzx       edx,bx
 004C69C6    mov         eax,dword ptr [ebp-4]
 004C69C9    mov         eax,dword ptr [eax+4]
 004C69CC    mov         ecx,20
 004C69D1    call        BytesPerScanline
 004C69D6    mov         edx,dword ptr [ebp-4]
 004C69D9    imul        dword ptr [edx+8]
 004C69DC    mov         edx,dword ptr [ebp-4]
 004C69DF    mov         dword ptr [edx+14],eax
 004C69E2    mov         eax,dword ptr [ebp-4]
 004C69E5    mov         dword ptr [eax+20],2
 004C69EC    mov         eax,dword ptr [ebp-4]
 004C69EF    mov         dword ptr [eax+24],2
 004C69F6    mov         eax,dword ptr [ebp-4]
 004C69F9    add         eax,28
 004C69FC    xor         edx,edx
 004C69FE    mov         dword ptr [eax],edx
 004C6A00    mov         dword ptr [eax+4],0FFFFFF
 004C6A07    push        0
 004C6A09    mov         ebx,dword ptr [ebp-4]
 004C6A0C    push        ebx
 004C6A0D    mov         eax,dword ptr [ebp-14]
 004C6A10    push        eax
 004C6A11    push        4
 004C6A13    push        ebx
 004C6A14    mov         eax,dword ptr [ebp-10]
 004C6A17    push        eax
 004C6A18    call        gdi32.CreateDIBitmap
 004C6A1D    call        GDICheck
 004C6A22    mov         dword ptr [ebp-0C],eax
 004C6A25    xor         eax,eax
 004C6A27    push        ebp
 004C6A28    push        4C6A5C
 004C6A2D    push        dword ptr fs:[eax]
 004C6A30    mov         dword ptr fs:[eax],esp
 004C6A33    mov         edx,dword ptr [ebp+8]
 004C6A36    mov         cl,1
 004C6A38    mov         eax,dword ptr [ebp-0C]
 004C6A3B    call        DupBits
 004C6A40    mov         edx,dword ptr [ebp-8]
 004C6A43    mov         dword ptr [edx],eax
 004C6A45    xor         eax,eax
 004C6A47    pop         edx
 004C6A48    pop         ecx
 004C6A49    pop         ecx
 004C6A4A    mov         dword ptr fs:[eax],edx
 004C6A4D    push        4C6A63
 004C6A52    mov         eax,dword ptr [ebp-0C]
 004C6A55    push        eax
 004C6A56    call        gdi32.DeleteObject
 004C6A5B    ret
>004C6A5C    jmp         @HandleFinally
>004C6A61    jmp         004C6A52
 004C6A63    xor         eax,eax
 004C6A65    pop         edx
 004C6A66    pop         ecx
 004C6A67    pop         ecx
 004C6A68    mov         dword ptr fs:[eax],edx
 004C6A6B    push        4C6A83
 004C6A70    mov         eax,dword ptr [ebp-10]
 004C6A73    push        eax
 004C6A74    push        0
 004C6A76    call        user32.ReleaseDC
 004C6A7B    ret
>004C6A7C    jmp         @HandleFinally
>004C6A81    jmp         004C6A70
 004C6A83    pop         edi
 004C6A84    pop         esi
 004C6A85    pop         ebx
 004C6A86    mov         esp,ebp
 004C6A88    pop         ebp
 004C6A89    ret         4
*}
end;

//004C6A8C
function BetterSize(const Old:TIconRec; const New:TIconRec):Boolean;
begin
{*
 004C6A8C    push        ebp
 004C6A8D    mov         ebp,esp
 004C6A8F    push        ecx
 004C6A90    push        ebx
 004C6A91    push        esi
 004C6A92    push        edi
 004C6A93    movzx       ecx,byte ptr [edx]
 004C6A96    test        cl,cl
>004C6A98    jne         004C6AAC
 004C6A9A    mov         ecx,dword ptr [ebp+8]
 004C6A9D    mov         ecx,dword ptr [ecx+8]
 004C6AA0    push        dword ptr [ecx]
 004C6AA2    mov         ecx,100
 004C6AA7    pop         ebx
 004C6AA8    sub         ecx,ebx
>004C6AAA    jmp         004C6AB7
 004C6AAC    movzx       ecx,cl
 004C6AAF    mov         ebx,dword ptr [ebp+8]
 004C6AB2    mov         ebx,dword ptr [ebx+8]
 004C6AB5    sub         ecx,dword ptr [ebx]
 004C6AB7    movzx       ebx,byte ptr [edx+1]
 004C6ABB    test        bl,bl
>004C6ABD    jne         004C6ACF
 004C6ABF    mov         edx,dword ptr [ebp+8]
 004C6AC2    mov         edx,dword ptr [edx+8]
 004C6AC5    mov         ebx,100
 004C6ACA    sub         ebx,dword ptr [edx+4]
>004C6ACD    jmp         004C6ADD
 004C6ACF    movzx       edx,bl
 004C6AD2    mov         ebx,dword ptr [ebp+8]
 004C6AD5    mov         ebx,dword ptr [ebx+8]
 004C6AD8    sub         edx,dword ptr [ebx+4]
 004C6ADB    mov         ebx,edx
 004C6ADD    movzx       edx,byte ptr [eax]
 004C6AE0    test        dl,dl
>004C6AE2    jne         004C6AF6
 004C6AE4    mov         edx,dword ptr [ebp+8]
 004C6AE7    mov         edx,dword ptr [edx+8]
 004C6AEA    mov         esi,100
 004C6AEF    sub         esi,dword ptr [edx]
 004C6AF1    mov         dword ptr [ebp-4],esi
>004C6AF4    jmp         004C6B04
 004C6AF6    movzx       edx,dl
 004C6AF9    mov         esi,dword ptr [ebp+8]
 004C6AFC    mov         esi,dword ptr [esi+8]
 004C6AFF    sub         edx,dword ptr [esi]
 004C6B01    mov         dword ptr [ebp-4],edx
 004C6B04    movzx       edx,byte ptr [eax+1]
 004C6B08    test        dl,dl
>004C6B0A    jne         004C6B1C
 004C6B0C    mov         eax,dword ptr [ebp+8]
 004C6B0F    mov         eax,dword ptr [eax+8]
 004C6B12    mov         esi,100
 004C6B17    sub         esi,dword ptr [eax+4]
>004C6B1A    jmp         004C6B28
 004C6B1C    movzx       esi,dl
 004C6B1F    mov         eax,dword ptr [ebp+8]
 004C6B22    mov         eax,dword ptr [eax+8]
 004C6B25    sub         esi,dword ptr [eax+4]
 004C6B28    mov         eax,ecx
 004C6B2A    cdq
 004C6B2B    xor         eax,edx
 004C6B2D    sub         eax,edx
 004C6B2F    mov         edi,eax
 004C6B31    mov         eax,dword ptr [ebp-4]
 004C6B34    cdq
 004C6B35    xor         eax,edx
 004C6B37    sub         eax,edx
 004C6B39    cmp         edi,eax
>004C6B3B    jg          004C6B62
 004C6B3D    test        ecx,ecx
>004C6B3F    jle         004C6B46
 004C6B41    cmp         ecx,dword ptr [ebp-4]
>004C6B44    jg          004C6B62
 004C6B46    mov         eax,ebx
 004C6B48    cdq
 004C6B49    xor         eax,edx
 004C6B4B    sub         eax,edx
 004C6B4D    mov         ecx,eax
 004C6B4F    mov         eax,esi
 004C6B51    cdq
 004C6B52    xor         eax,edx
 004C6B54    sub         eax,edx
 004C6B56    cmp         ecx,eax
>004C6B58    jg          004C6B62
 004C6B5A    test        ebx,ebx
>004C6B5C    jle         004C6B66
 004C6B5E    cmp         esi,ebx
>004C6B60    jge         004C6B66
 004C6B62    xor         eax,eax
>004C6B64    jmp         004C6B68
 004C6B66    mov         al,1
 004C6B68    pop         edi
 004C6B69    pop         esi
 004C6B6A    pop         ebx
 004C6B6B    pop         ecx
 004C6B6C    pop         ebp
 004C6B6D    ret
*}
end;

//004C6B70
procedure ReadIcon(Stream:Classes.TStream; var Icon:Windows.HICON; ImageCount:Integer; StartOffset:Integer; const RequestedSize:Types.TPoint; var IconSize:Types.TPoint);
begin
{*
 004C6B70    push        ebp
 004C6B71    mov         ebp,esp
 004C6B73    add         esp,0FFFFFF90
 004C6B76    push        ebx
 004C6B77    push        esi
 004C6B78    push        edi
 004C6B79    mov         dword ptr [ebp-0C],ecx
 004C6B7C    mov         dword ptr [ebp-8],edx
 004C6B7F    mov         dword ptr [ebp-4],eax
 004C6B82    mov         ebx,dword ptr [ebp+0C]
 004C6B85    mov         eax,dword ptr [ebp-0C]
 004C6B88    shl         eax,4
 004C6B8B    mov         dword ptr [ebp-14],eax
 004C6B8E    mov         eax,dword ptr [ebp-14]
 004C6B91    call        AllocMem
 004C6B96    mov         dword ptr [ebp-10],eax
 004C6B99    xor         edx,edx
 004C6B9B    push        ebp
 004C6B9C    push        4C6E96
 004C6BA1    push        dword ptr fs:[edx]
 004C6BA4    mov         dword ptr fs:[edx],esp
 004C6BA7    mov         edx,dword ptr [ebp-10]
 004C6BAA    mov         ecx,dword ptr [ebp-14]
 004C6BAD    mov         eax,dword ptr [ebp-4]
 004C6BB0    mov         esi,dword ptr [eax]
 004C6BB2    call        dword ptr [esi+0C]
 004C6BB5    mov         eax,dword ptr [ebx]
 004C6BB7    or          eax,dword ptr [ebx+4]
>004C6BBA    jne         004C6BD7
 004C6BBC    push        0B
 004C6BBE    call        user32.GetSystemMetrics
 004C6BC3    mov         edx,dword ptr [ebp+8]
 004C6BC6    mov         dword ptr [edx],eax
 004C6BC8    push        0C
 004C6BCA    call        user32.GetSystemMetrics
 004C6BCF    mov         edx,dword ptr [ebp+8]
 004C6BD2    mov         dword ptr [edx+4],eax
>004C6BD5    jmp         004C6BE4
 004C6BD7    mov         eax,dword ptr [ebp+8]
 004C6BDA    mov         edx,dword ptr [ebx]
 004C6BDC    mov         dword ptr [eax],edx
 004C6BDE    mov         edx,dword ptr [ebx+4]
 004C6BE1    mov         dword ptr [eax+4],edx
 004C6BE4    push        0
 004C6BE6    call        user32.GetDC
 004C6BEB    mov         dword ptr [ebp-28],eax
 004C6BEE    cmp         dword ptr [ebp-28],0
>004C6BF2    jne         004C6BF9
 004C6BF4    call        OutOfResources
 004C6BF9    xor         edx,edx
 004C6BFB    push        ebp
 004C6BFC    push        4C6C59
 004C6C01    push        dword ptr fs:[edx]
 004C6C04    mov         dword ptr fs:[edx],esp
 004C6C07    push        0E
 004C6C09    mov         eax,dword ptr [ebp-28]
 004C6C0C    push        eax
 004C6C0D    call        gdi32.GetDeviceCaps
 004C6C12    mov         ebx,eax
 004C6C14    push        0C
 004C6C16    mov         eax,dword ptr [ebp-28]
 004C6C19    push        eax
 004C6C1A    call        gdi32.GetDeviceCaps
 004C6C1F    imul        bx,ax
 004C6C23    mov         eax,ebx
 004C6C25    cmp         ax,8
>004C6C29    jbe         004C6C34
 004C6C2B    mov         dword ptr [ebp-1C],7FFFFFFF
>004C6C32    jmp         004C6C40
 004C6C34    mov         ecx,eax
 004C6C36    mov         eax,1
 004C6C3B    shl         eax,cl
 004C6C3D    mov         dword ptr [ebp-1C],eax
 004C6C40    xor         eax,eax
 004C6C42    pop         edx
 004C6C43    pop         ecx
 004C6C44    pop         ecx
 004C6C45    mov         dword ptr fs:[eax],edx
 004C6C48    push        4C6C60
 004C6C4D    mov         eax,dword ptr [ebp-28]
 004C6C50    push        eax
 004C6C51    push        0
 004C6C53    call        user32.ReleaseDC
 004C6C58    ret
>004C6C59    jmp         @HandleFinally
>004C6C5E    jmp         004C6C4D
 004C6C60    xor         eax,eax
 004C6C62    mov         dword ptr [ebp-24],eax
 004C6C65    mov         eax,dword ptr [ebp-10]
 004C6C68    movzx       eax,word ptr [eax+2]
 004C6C6C    test        eax,eax
>004C6C6E    jne         004C6C75
 004C6C70    mov         eax,7FFFFFFF
 004C6C75    mov         dword ptr [ebp-20],eax
 004C6C78    mov         edi,dword ptr [ebp-0C]
 004C6C7B    dec         edi
 004C6C7C    test        edi,edi
>004C6C7E    jle         004C6CD0
 004C6C80    mov         esi,1
 004C6C85    mov         eax,esi
 004C6C87    add         eax,eax
 004C6C89    mov         edx,dword ptr [ebp-10]
 004C6C8C    movzx       eax,word ptr [edx+eax*8+2]
 004C6C91    test        eax,eax
>004C6C93    jne         004C6C9A
 004C6C95    mov         eax,7FFFFFFF
 004C6C9A    mov         ebx,eax
 004C6C9C    cmp         ebx,dword ptr [ebp-1C]
>004C6C9F    jg          004C6CCC
 004C6CA1    cmp         ebx,dword ptr [ebp-20]
>004C6CA4    jl          004C6CCC
 004C6CA6    push        ebp
 004C6CA7    mov         eax,esi
 004C6CA9    add         eax,eax
 004C6CAB    mov         edx,dword ptr [ebp-10]
 004C6CAE    lea         edx,[edx+eax*8]
 004C6CB1    mov         eax,dword ptr [ebp-24]
 004C6CB4    add         eax,eax
 004C6CB6    mov         ecx,dword ptr [ebp-10]
 004C6CB9    lea         eax,[ecx+eax*8]
 004C6CBC    call        BetterSize
 004C6CC1    pop         ecx
 004C6CC2    test        al,al
>004C6CC4    je          004C6CCC
 004C6CC6    mov         dword ptr [ebp-24],esi
 004C6CC9    mov         dword ptr [ebp-20],ebx
 004C6CCC    inc         esi
 004C6CCD    dec         edi
>004C6CCE    jne         004C6C85
 004C6CD0    mov         eax,dword ptr [ebp-24]
 004C6CD3    add         eax,eax
 004C6CD5    mov         edx,dword ptr [ebp-10]
 004C6CD8    lea         eax,[edx+eax*8]
 004C6CDB    mov         dword ptr [ebp-40],eax
 004C6CDE    mov         eax,dword ptr [ebp-40]
 004C6CE1    movzx       eax,byte ptr [eax]
 004C6CE4    test        al,al
>004C6CE6    jne         004C6CF3
 004C6CE8    mov         eax,dword ptr [ebp+8]
 004C6CEB    mov         dword ptr [eax],100
>004C6CF1    jmp         004C6CFB
 004C6CF3    movzx       eax,al
 004C6CF6    mov         edx,dword ptr [ebp+8]
 004C6CF9    mov         dword ptr [edx],eax
 004C6CFB    mov         eax,dword ptr [ebp-40]
 004C6CFE    movzx       eax,byte ptr [eax+1]
 004C6D02    test        al,al
>004C6D04    jne         004C6D12
 004C6D06    mov         eax,dword ptr [ebp+8]
 004C6D09    mov         dword ptr [eax+4],100
>004C6D10    jmp         004C6D1B
 004C6D12    movzx       eax,al
 004C6D15    mov         edx,dword ptr [ebp+8]
 004C6D18    mov         dword ptr [edx+4],eax
 004C6D1B    mov         eax,dword ptr [ebp-40]
 004C6D1E    mov         eax,dword ptr [eax+8]
 004C6D21    call        AllocMem
 004C6D26    mov         dword ptr [ebp-2C],eax
 004C6D29    xor         eax,eax
 004C6D2B    push        ebp
 004C6D2C    push        4C6E76
 004C6D31    push        dword ptr fs:[eax]
 004C6D34    mov         dword ptr fs:[eax],esp
 004C6D37    mov         eax,dword ptr [ebp-40]
 004C6D3A    mov         edx,dword ptr [eax+0C]
 004C6D3D    mov         eax,dword ptr [ebp-14]
 004C6D40    add         eax,dword ptr [ebp+10]
 004C6D43    sub         edx,eax
 004C6D45    mov         cx,1
 004C6D49    mov         eax,dword ptr [ebp-4]
 004C6D4C    mov         ebx,dword ptr [eax]
 004C6D4E    call        dword ptr [ebx+1C]
 004C6D51    mov         eax,dword ptr [ebp-40]
 004C6D54    mov         ecx,dword ptr [eax+8]
 004C6D57    mov         ebx,dword ptr [ebp-2C]
 004C6D5A    mov         edx,ebx
 004C6D5C    mov         eax,dword ptr [ebp-4]
 004C6D5F    mov         esi,dword ptr [eax]
 004C6D61    call        dword ptr [esi+0C]
 004C6D64    mov         eax,dword ptr [ebp+8]
 004C6D67    push        eax
 004C6D68    lea         ecx,[ebp-38]
 004C6D6B    lea         edx,[ebp-34]
 004C6D6E    mov         eax,ebx
 004C6D70    call        TwoBitsFromDIB
 004C6D75    lea         eax,[ebp-70]
 004C6D78    push        eax
 004C6D79    push        18
 004C6D7B    mov         eax,dword ptr [ebp-38]
 004C6D7E    push        eax
 004C6D7F    call        gdi32.GetObjectW
 004C6D84    lea         eax,[ebp-58]
 004C6D87    push        eax
 004C6D88    push        18
 004C6D8A    mov         eax,dword ptr [ebp-34]
 004C6D8D    push        eax
 004C6D8E    call        gdi32.GetObjectW
 004C6D93    mov         ebx,dword ptr [ebp-64]
 004C6D96    imul        ebx,dword ptr [ebp-68]
 004C6D9A    movzx       eax,word ptr [ebp-60]
 004C6D9E    imul        ebx,eax
 004C6DA1    mov         eax,dword ptr [ebp-4C]
 004C6DA4    imul        dword ptr [ebp-50]
 004C6DA7    movzx       edx,word ptr [ebp-48]
 004C6DAB    imul        edx
 004C6DAD    mov         dword ptr [ebp-3C],eax
 004C6DB0    mov         eax,ebx
 004C6DB2    add         eax,dword ptr [ebp-3C]
 004C6DB5    mov         dword ptr [ebp-18],eax
 004C6DB8    mov         eax,dword ptr [ebp-18]
 004C6DBB    call        AllocMem
 004C6DC0    mov         dword ptr [ebp-30],eax
 004C6DC3    xor         eax,eax
 004C6DC5    push        ebp
 004C6DC6    push        4C6E53
 004C6DCB    push        dword ptr fs:[eax]
 004C6DCE    mov         dword ptr fs:[eax],esp
 004C6DD1    mov         edi,dword ptr [ebp-30]
 004C6DD4    mov         esi,dword ptr [ebp-30]
 004C6DD7    add         esi,ebx
 004C6DD9    push        edi
 004C6DDA    push        ebx
 004C6DDB    mov         eax,dword ptr [ebp-38]
 004C6DDE    push        eax
 004C6DDF    call        gdi32.GetBitmapBits
 004C6DE4    push        esi
 004C6DE5    mov         eax,dword ptr [ebp-3C]
 004C6DE8    push        eax
 004C6DE9    mov         eax,dword ptr [ebp-34]
 004C6DEC    push        eax
 004C6DED    call        gdi32.GetBitmapBits
 004C6DF2    mov         eax,dword ptr [ebp-34]
 004C6DF5    push        eax
 004C6DF6    call        gdi32.DeleteObject
 004C6DFB    mov         eax,dword ptr [ebp-38]
 004C6DFE    push        eax
 004C6DFF    call        gdi32.DeleteObject
 004C6E04    push        esi
 004C6E05    push        edi
 004C6E06    movzx       eax,byte ptr [ebp-46]
 004C6E0A    push        eax
 004C6E0B    movzx       eax,byte ptr [ebp-48]
 004C6E0F    push        eax
 004C6E10    mov         eax,dword ptr [ebp+8]
 004C6E13    mov         eax,dword ptr [eax+4]
 004C6E16    push        eax
 004C6E17    mov         eax,dword ptr [ebp+8]
 004C6E1A    mov         eax,dword ptr [eax]
 004C6E1C    push        eax
 004C6E1D    mov         eax,[007C7C54];gvar_007C7C54
 004C6E22    push        eax
 004C6E23    call        user32.CreateIcon
 004C6E28    mov         edx,dword ptr [ebp-8]
 004C6E2B    mov         dword ptr [edx],eax
 004C6E2D    mov         eax,dword ptr [ebp-8]
 004C6E30    cmp         dword ptr [eax],0
>004C6E33    jne         004C6E3A
 004C6E35    call        GDIError
 004C6E3A    xor         eax,eax
 004C6E3C    pop         edx
 004C6E3D    pop         ecx
 004C6E3E    pop         ecx
 004C6E3F    mov         dword ptr fs:[eax],edx
 004C6E42    push        4C6E5A
 004C6E47    mov         edx,dword ptr [ebp-18]
 004C6E4A    mov         eax,dword ptr [ebp-30]
 004C6E4D    call        @FreeMem
 004C6E52    ret
>004C6E53    jmp         @HandleFinally
>004C6E58    jmp         004C6E47
 004C6E5A    xor         eax,eax
 004C6E5C    pop         edx
 004C6E5D    pop         ecx
 004C6E5E    pop         ecx
 004C6E5F    mov         dword ptr fs:[eax],edx
 004C6E62    push        4C6E7D
 004C6E67    mov         eax,dword ptr [ebp-40]
 004C6E6A    mov         edx,dword ptr [eax+8]
 004C6E6D    mov         eax,dword ptr [ebp-2C]
 004C6E70    call        @FreeMem
 004C6E75    ret
>004C6E76    jmp         @HandleFinally
>004C6E7B    jmp         004C6E67
 004C6E7D    xor         eax,eax
 004C6E7F    pop         edx
 004C6E80    pop         ecx
 004C6E81    pop         ecx
 004C6E82    mov         dword ptr fs:[eax],edx
 004C6E85    push        4C6E9D
 004C6E8A    mov         edx,dword ptr [ebp-14]
 004C6E8D    mov         eax,dword ptr [ebp-10]
 004C6E90    call        @FreeMem
 004C6E95    ret
>004C6E96    jmp         @HandleFinally
>004C6E9B    jmp         004C6E8A
 004C6E9D    pop         edi
 004C6E9E    pop         esi
 004C6E9F    pop         ebx
 004C6EA0    mov         esp,ebp
 004C6EA2    pop         ebp
 004C6EA3    ret         0C
*}
end;

//004C6EA8
function ComputeAldusChecksum(var WMF:TMetafileHeader):Word;
begin
{*
 004C6EA8    xor         edx,edx
 004C6EAA    xor         dx,word ptr [eax]
 004C6EAD    mov         ecx,dword ptr [eax]
 004C6EAF    shr         ecx,10
 004C6EB2    xor         dx,cx
 004C6EB5    xor         dx,word ptr [eax+4]
 004C6EB9    xor         dx,word ptr [eax+6]
 004C6EBD    xor         dx,word ptr [eax+8]
 004C6EC1    xor         dx,word ptr [eax+0A]
 004C6EC5    xor         dx,word ptr [eax+0C]
 004C6EC9    xor         dx,word ptr [eax+0E]
 004C6ECD    xor         dx,word ptr [eax+10]
 004C6ED1    mov         eax,dword ptr [eax+10]
 004C6ED4    shr         eax,10
 004C6ED7    xor         dx,ax
 004C6EDA    mov         eax,edx
 004C6EDC    ret
*}
end;

//004C6EE0
procedure InitializeBitmapInfoHeader(Bitmap:Windows.HBITMAP; var BI:Windows.TBitmapInfoHeader; Colors:Integer);
begin
{*
 004C6EE0    push        ebx
 004C6EE1    push        esi
 004C6EE2    push        edi
 004C6EE3    add         esp,0FFFFFFAC
 004C6EE6    mov         esi,ecx
 004C6EE8    mov         ebx,edx
 004C6EEA    xor         edx,edx
 004C6EEC    mov         dword ptr [esp+18],edx
 004C6EF0    push        esp
 004C6EF1    push        54
 004C6EF3    push        eax
 004C6EF4    call        gdi32.GetObjectW
 004C6EF9    test        eax,eax
>004C6EFB    jne         004C6F04
 004C6EFD    call        TWICImage.SetHeight
>004C6F02    jmp         004C6F43
 004C6F04    cmp         eax,40
>004C6F07    jl          004C6F21
 004C6F09    cmp         dword ptr [esp+18],28
>004C6F0E    jb          004C6F21
 004C6F10    push        esi
 004C6F11    mov         edi,ebx
 004C6F13    lea         esi,[esp+1C]
 004C6F17    mov         ecx,0A
 004C6F1C    rep movs    dword ptr [edi],dword ptr [esi]
 004C6F1E    pop         esi
>004C6F1F    jmp         004C6F43
 004C6F21    mov         eax,ebx
 004C6F23    xor         ecx,ecx
 004C6F25    mov         edx,28
 004C6F2A    call        @FillChar
 004C6F2F    mov         dword ptr [ebx],28
 004C6F35    mov         eax,dword ptr [esp+4]
 004C6F39    mov         dword ptr [ebx+4],eax
 004C6F3C    mov         eax,dword ptr [esp+8]
 004C6F40    mov         dword ptr [ebx+8],eax
 004C6F43    mov         eax,esi
 004C6F45    sub         eax,2
>004C6F48    je          004C6F59
 004C6F4A    dec         eax
 004C6F4B    sub         eax,0E
>004C6F4E    jb          004C6F61
 004C6F50    sub         eax,0F0
>004C6F55    jb          004C6F6C
>004C6F57    jmp         004C6F77
 004C6F59    mov         word ptr [ebx+0E],1
>004C6F5F    jmp         004C6F85
 004C6F61    mov         word ptr [ebx+0E],4
 004C6F67    mov         dword ptr [ebx+20],esi
>004C6F6A    jmp         004C6F85
 004C6F6C    mov         word ptr [ebx+0E],8
 004C6F72    mov         dword ptr [ebx+20],esi
>004C6F75    jmp         004C6F85
 004C6F77    movzx       eax,word ptr [esp+12]
 004C6F7C    imul        word ptr [esp+10]
 004C6F81    mov         word ptr [ebx+0E],ax
 004C6F85    mov         word ptr [ebx+0C],1
 004C6F8B    mov         eax,dword ptr [ebx+20]
 004C6F8E    cmp         eax,dword ptr [ebx+24]
>004C6F91    jae         004C6F96
 004C6F93    mov         dword ptr [ebx+24],eax
 004C6F96    cmp         dword ptr [ebx+14],0
>004C6F9A    jne         004C6FBD
 004C6F9C    movzx       edx,word ptr [ebx+0E]
 004C6FA0    mov         eax,dword ptr [ebx+4]
 004C6FA3    mov         ecx,20
 004C6FA8    call        BytesPerScanline
 004C6FAD    mov         ecx,eax
 004C6FAF    mov         eax,dword ptr [ebx+8]
 004C6FB2    cdq
 004C6FB3    xor         eax,edx
 004C6FB5    sub         eax,edx
 004C6FB7    imul        ecx,eax
 004C6FBA    mov         dword ptr [ebx+14],ecx
 004C6FBD    add         esp,54
 004C6FC0    pop         edi
 004C6FC1    pop         esi
 004C6FC2    pop         ebx
 004C6FC3    ret
*}
end;

//004C6FC4
procedure InternalGetDIBSizes(Bitmap:Windows.HBITMAP; var InfoHeaderSize:Types.DWORD; var ImageSize:Types.DWORD; Colors:Integer);
begin
{*
 004C6FC4    push        ebp
 004C6FC5    mov         ebp,esp
 004C6FC7    add         esp,0FFFFFFD8
 004C6FCA    push        ebx
 004C6FCB    push        esi
 004C6FCC    mov         esi,ecx
 004C6FCE    mov         ebx,edx
 004C6FD0    lea         edx,[ebp-28]
 004C6FD3    mov         ecx,dword ptr [ebp+8]
 004C6FD6    call        InitializeBitmapInfoHeader
 004C6FDB    movzx       eax,word ptr [ebp-1A]
 004C6FDF    cmp         ax,8
>004C6FE3    jbe         004C6FF6
 004C6FE5    mov         dword ptr [ebx],28
 004C6FEB    test        byte ptr [ebp-18],3
>004C6FEF    je          004C701C
 004C6FF1    add         dword ptr [ebx],0C
>004C6FF4    jmp         004C701C
 004C6FF6    mov         edx,dword ptr [ebp-8]
 004C6FF9    test        edx,edx
>004C6FFB    jne         004C7011
 004C6FFD    mov         ecx,eax
 004C6FFF    mov         eax,1
 004C7004    shl         eax,cl
 004C7006    add         eax,eax
 004C7008    add         eax,eax
 004C700A    add         eax,28
 004C700D    mov         dword ptr [ebx],eax
>004C700F    jmp         004C701C
 004C7011    mov         eax,edx
 004C7013    add         eax,eax
 004C7015    add         eax,eax
 004C7017    add         eax,28
 004C701A    mov         dword ptr [ebx],eax
 004C701C    mov         eax,dword ptr [ebp-14]
 004C701F    mov         dword ptr [esi],eax
 004C7021    pop         esi
 004C7022    pop         ebx
 004C7023    mov         esp,ebp
 004C7025    pop         ebp
 004C7026    ret         4
*}
end;

//004C702C
procedure GetDIBSizes(Bitmap:Windows.HBITMAP; var InfoHeaderSize:Windows.DWORD; var ImageSize:Windows.DWORD);
begin
{*
 004C702C    push        0
 004C702E    call        InternalGetDIBSizes
 004C7033    ret
*}
end;

//004C7034
function InternalGetDIB(Bitmap:Windows.HBITMAP; Palette:Windows.HPALETTE; var BitmapInfo:void ; var Bits:void ; Colors:Integer):Boolean;
begin
{*
 004C7034    push        ebp
 004C7035    mov         ebp,esp
 004C7037    add         esp,0FFFFFFF4
 004C703A    push        ebx
 004C703B    push        esi
 004C703C    push        edi
 004C703D    mov         ebx,ecx
 004C703F    mov         edi,edx
 004C7041    mov         esi,eax
 004C7043    mov         edx,ebx
 004C7045    mov         ecx,dword ptr [ebp+8]
 004C7048    mov         eax,esi
 004C704A    call        InitializeBitmapInfoHeader
 004C704F    xor         eax,eax
 004C7051    mov         dword ptr [ebp-8],eax
 004C7054    push        0
 004C7056    call        gdi32.CreateCompatibleDC
 004C705B    mov         dword ptr [ebp-0C],eax
 004C705E    xor         eax,eax
 004C7060    push        ebp
 004C7061    push        4C70D1
 004C7066    push        dword ptr fs:[eax]
 004C7069    mov         dword ptr fs:[eax],esp
 004C706C    test        edi,edi
>004C706E    je          004C7088
 004C7070    push        0
 004C7072    push        edi
 004C7073    mov         eax,dword ptr [ebp-0C]
 004C7076    push        eax
 004C7077    call        gdi32.SelectPalette
 004C707C    mov         dword ptr [ebp-8],eax
 004C707F    mov         eax,dword ptr [ebp-0C]
 004C7082    push        eax
 004C7083    call        gdi32.RealizePalette
 004C7088    push        0
 004C708A    push        ebx
 004C708B    mov         eax,dword ptr [ebp+0C]
 004C708E    push        eax
 004C708F    mov         eax,dword ptr [ebx+8]
 004C7092    push        eax
 004C7093    push        0
 004C7095    push        esi
 004C7096    mov         eax,dword ptr [ebp-0C]
 004C7099    push        eax
 004C709A    call        gdi32.GetDIBits
 004C709F    test        eax,eax
 004C70A1    setne       byte ptr [ebp-1]
 004C70A5    xor         eax,eax
 004C70A7    pop         edx
 004C70A8    pop         ecx
 004C70A9    pop         ecx
 004C70AA    mov         dword ptr fs:[eax],edx
 004C70AD    push        4C70D8
 004C70B2    cmp         dword ptr [ebp-8],0
>004C70B6    je          004C70C7
 004C70B8    push        0
 004C70BA    mov         eax,dword ptr [ebp-8]
 004C70BD    push        eax
 004C70BE    mov         eax,dword ptr [ebp-0C]
 004C70C1    push        eax
 004C70C2    call        gdi32.SelectPalette
 004C70C7    mov         eax,dword ptr [ebp-0C]
 004C70CA    push        eax
 004C70CB    call        gdi32.DeleteDC
 004C70D0    ret
>004C70D1    jmp         @HandleFinally
>004C70D6    jmp         004C70B2
 004C70D8    movzx       eax,byte ptr [ebp-1]
 004C70DC    pop         edi
 004C70DD    pop         esi
 004C70DE    pop         ebx
 004C70DF    mov         esp,ebp
 004C70E1    pop         ebp
 004C70E2    ret         8
*}
end;

//004C70E8
function GetDIB(Bitmap:Windows.HBITMAP; Palette:Windows.HPALETTE; var BitmapInfo:void ; var Bits:void ):Boolean;
begin
{*
 004C70E8    push        ebp
 004C70E9    mov         ebp,esp
 004C70EB    push        ebx
 004C70EC    mov         ebx,dword ptr [ebp+8]
 004C70EF    push        ebx
 004C70F0    push        0
 004C70F2    call        InternalGetDIB
 004C70F7    pop         ebx
 004C70F8    pop         ebp
 004C70F9    ret         4
*}
end;

//004C70FC
procedure WinError;
begin
{*
 004C70FC    ret
*}
end;

//004C7100
procedure CheckBool(Result:Windows.BOOL);
begin
{*
 004C7100    test        eax,eax
>004C7102    jne         004C7109
 004C7104    call        WinError
 004C7109    ret
*}
end;

//004C710C
procedure WriteIcon(Stream:Classes.TStream; Icon:Windows.HICON; WriteLength:Boolean);
begin
{*
 004C710C    push        ebp
 004C710D    mov         ebp,esp
 004C710F    add         esp,0FFFFFFAC
 004C7112    push        ebx
 004C7113    push        esi
 004C7114    push        edi
 004C7115    mov         byte ptr [ebp-1],cl
 004C7118    mov         esi,edx
 004C711A    mov         ebx,eax
 004C711C    lea         eax,[ebp-2A]
 004C711F    xor         ecx,ecx
 004C7121    mov         edx,6
 004C7126    call        @FillChar
 004C712B    lea         eax,[ebp-54]
 004C712E    xor         ecx,ecx
 004C7130    mov         edx,10
 004C7135    call        @FillChar
 004C713A    lea         eax,[ebp-44]
 004C713D    push        eax
 004C713E    push        esi
 004C713F    call        user32.GetIconInfo
 004C7144    call        CheckBool
 004C7149    xor         edx,edx
 004C714B    push        ebp
 004C714C    push        4C72FC
 004C7151    push        dword ptr fs:[edx]
 004C7154    mov         dword ptr fs:[edx],esp
 004C7157    push        2
 004C7159    lea         ecx,[ebp-10]
 004C715C    lea         edx,[ebp-8]
 004C715F    mov         eax,dword ptr [ebp-38]
 004C7162    call        InternalGetDIBSizes
 004C7167    push        0FF
 004C7169    lea         ecx,[ebp-14]
 004C716C    lea         edx,[ebp-0C]
 004C716F    mov         eax,dword ptr [ebp-34]
 004C7172    call        InternalGetDIBSizes
 004C7177    xor         eax,eax
 004C7179    mov         dword ptr [ebp-18],eax
 004C717C    xor         eax,eax
 004C717E    mov         dword ptr [ebp-1C],eax
 004C7181    xor         eax,eax
 004C7183    mov         dword ptr [ebp-20],eax
 004C7186    xor         eax,eax
 004C7188    mov         dword ptr [ebp-24],eax
 004C718B    xor         edx,edx
 004C718D    push        ebp
 004C718E    push        4C72D5
 004C7193    push        dword ptr fs:[edx]
 004C7196    mov         dword ptr fs:[edx],esp
 004C7199    mov         eax,dword ptr [ebp-8]
 004C719C    call        AllocMem
 004C71A1    mov         dword ptr [ebp-18],eax
 004C71A4    mov         eax,dword ptr [ebp-10]
 004C71A7    call        AllocMem
 004C71AC    mov         dword ptr [ebp-1C],eax
 004C71AF    mov         eax,dword ptr [ebp-0C]
 004C71B2    call        AllocMem
 004C71B7    mov         dword ptr [ebp-20],eax
 004C71BA    mov         eax,dword ptr [ebp-14]
 004C71BD    call        AllocMem
 004C71C2    mov         dword ptr [ebp-24],eax
 004C71C5    mov         eax,dword ptr [ebp-1C]
 004C71C8    push        eax
 004C71C9    push        2
 004C71CB    mov         ecx,dword ptr [ebp-18]
 004C71CE    xor         edx,edx
 004C71D0    mov         eax,dword ptr [ebp-38]
 004C71D3    call        InternalGetDIB
 004C71D8    mov         eax,dword ptr [ebp-24]
 004C71DB    push        eax
 004C71DC    push        0FF
 004C71DE    mov         ecx,dword ptr [ebp-20]
 004C71E1    xor         edx,edx
 004C71E3    mov         eax,dword ptr [ebp-34]
 004C71E6    call        InternalGetDIB
 004C71EB    cmp         byte ptr [ebp-1],0
>004C71EF    je          004C720F
 004C71F1    mov         eax,dword ptr [ebp-0C]
 004C71F4    add         eax,16
 004C71F7    add         eax,dword ptr [ebp-14]
 004C71FA    add         eax,dword ptr [ebp-10]
 004C71FD    mov         dword ptr [ebp-30],eax
 004C7200    lea         edx,[ebp-30]
 004C7203    mov         ecx,4
 004C7208    mov         eax,ebx
 004C720A    mov         esi,dword ptr [eax]
 004C720C    call        dword ptr [esi+10]
 004C720F    mov         word ptr [ebp-28],1
 004C7215    mov         word ptr [ebp-26],1
 004C721B    lea         edx,[ebp-2A]
 004C721E    mov         ecx,6
 004C7223    mov         eax,ebx
 004C7225    mov         esi,dword ptr [eax]
 004C7227    call        dword ptr [esi+10]
 004C722A    mov         esi,dword ptr [ebp-20]
 004C722D    mov         eax,esi
 004C722F    movzx       edx,byte ptr [eax+4]
 004C7233    mov         byte ptr [ebp-54],dl
 004C7236    movzx       edx,byte ptr [eax+8]
 004C723A    mov         byte ptr [ebp-53],dl
 004C723D    movzx       edx,word ptr [eax+0C]
 004C7241    imul        dx,word ptr [eax+0E]
 004C7246    mov         word ptr [ebp-52],dx
 004C724A    mov         eax,dword ptr [ebp-0C]
 004C724D    add         eax,dword ptr [ebp-14]
 004C7250    add         eax,dword ptr [ebp-10]
 004C7253    mov         dword ptr [ebp-4C],eax
 004C7256    mov         dword ptr [ebp-48],16
 004C725D    lea         edx,[ebp-54]
 004C7260    mov         ecx,10
 004C7265    mov         eax,ebx
 004C7267    mov         edi,dword ptr [eax]
 004C7269    call        dword ptr [edi+10]
 004C726C    mov         eax,esi
 004C726E    mov         edx,dword ptr [eax+8]
 004C7271    add         dword ptr [eax+8],edx
 004C7274    mov         edx,dword ptr [ebp-20]
 004C7277    mov         ecx,dword ptr [ebp-0C]
 004C727A    mov         eax,ebx
 004C727C    mov         esi,dword ptr [eax]
 004C727E    call        dword ptr [esi+10]
 004C7281    mov         edx,dword ptr [ebp-24]
 004C7284    mov         ecx,dword ptr [ebp-14]
 004C7287    mov         eax,ebx
 004C7289    mov         esi,dword ptr [eax]
 004C728B    call        dword ptr [esi+10]
 004C728E    mov         edx,dword ptr [ebp-1C]
 004C7291    mov         ecx,dword ptr [ebp-10]
 004C7294    mov         eax,ebx
 004C7296    mov         ebx,dword ptr [eax]
 004C7298    call        dword ptr [ebx+10]
 004C729B    xor         eax,eax
 004C729D    pop         edx
 004C729E    pop         ecx
 004C729F    pop         ecx
 004C72A0    mov         dword ptr fs:[eax],edx
 004C72A3    push        4C72DC
 004C72A8    mov         edx,dword ptr [ebp-0C]
 004C72AB    mov         eax,dword ptr [ebp-20]
 004C72AE    call        @FreeMem
 004C72B3    mov         edx,dword ptr [ebp-14]
 004C72B6    mov         eax,dword ptr [ebp-24]
 004C72B9    call        @FreeMem
 004C72BE    mov         edx,dword ptr [ebp-8]
 004C72C1    mov         eax,dword ptr [ebp-18]
 004C72C4    call        @FreeMem
 004C72C9    mov         edx,dword ptr [ebp-10]
 004C72CC    mov         eax,dword ptr [ebp-1C]
 004C72CF    call        @FreeMem
 004C72D4    ret
>004C72D5    jmp         @HandleFinally
>004C72DA    jmp         004C72A8
 004C72DC    xor         eax,eax
 004C72DE    pop         edx
 004C72DF    pop         ecx
 004C72E0    pop         ecx
 004C72E1    mov         dword ptr fs:[eax],edx
 004C72E4    push        4C7303
 004C72E9    mov         eax,dword ptr [ebp-34]
 004C72EC    push        eax
 004C72ED    call        gdi32.DeleteObject
 004C72F2    mov         eax,dword ptr [ebp-38]
 004C72F5    push        eax
 004C72F6    call        gdi32.DeleteObject
 004C72FB    ret
>004C72FC    jmp         @HandleFinally
>004C7301    jmp         004C72E9
 004C7303    pop         edi
 004C7304    pop         esi
 004C7305    pop         ebx
 004C7306    mov         esp,ebp
 004C7308    pop         ebp
 004C7309    ret
*}
end;

//004C730C
constructor TGraphic.Create();
begin
{*
 004C730C    push        ebx
 004C730D    push        esi
 004C730E    test        dl,dl
>004C7310    je          004C731A
 004C7312    add         esp,0FFFFFFF0
 004C7315    call        @ClassCreate
 004C731A    mov         ebx,edx
 004C731C    mov         esi,eax
 004C731E    xor         edx,edx
 004C7320    mov         eax,esi
 004C7322    call        TObject.Create
 004C7327    mov         eax,esi
 004C7329    test        bl,bl
>004C732B    je          004C733C
 004C732D    call        @AfterConstruction
 004C7332    pop         dword ptr fs:[0]
 004C7339    add         esp,0C
 004C733C    mov         eax,esi
 004C733E    pop         esi
 004C733F    pop         ebx
 004C7340    ret
*}
end;

//004C7344
procedure TGraphic.Changed(Sender:TObject);
begin
{*
 004C7344    push        ebx
 004C7345    mov         byte ptr [eax+20],1
 004C7349    cmp         word ptr [eax+12],0
>004C734E    je          004C735A
 004C7350    mov         ebx,eax
 004C7352    mov         edx,eax
 004C7354    mov         eax,dword ptr [ebx+14]
 004C7357    call        dword ptr [ebx+10]
 004C735A    pop         ebx
 004C735B    ret
*}
end;

//004C735C
function DoWrite:Boolean;
begin
{*
 004C735C    push        ebp
 004C735D    mov         ebp,esp
 004C735F    push        ebx
 004C7360    mov         eax,dword ptr [ebp+8]
 004C7363    mov         eax,dword ptr [eax-4]
 004C7366    cmp         dword ptr [eax+20],0
>004C736A    je          004C73A0
 004C736C    mov         eax,dword ptr [ebp+8]
 004C736F    mov         eax,dword ptr [eax-4]
 004C7372    mov         ebx,dword ptr [eax+20]
 004C7375    mov         eax,ebx
 004C7377    mov         edx,dword ptr ds:[4C053C];TGraphic
 004C737D    call        @IsClass
 004C7382    test        al,al
>004C7384    je          004C739B
 004C7386    mov         edx,ebx
 004C7388    mov         eax,dword ptr [ebp+8]
 004C738B    mov         eax,dword ptr [eax-8]
 004C738E    mov         ecx,dword ptr [eax]
 004C7390    call        dword ptr [ecx+1C]
 004C7393    test        al,al
>004C7395    je          004C739B
 004C7397    xor         eax,eax
>004C7399    jmp         004C73AD
 004C739B    mov         al,1
 004C739D    pop         ebx
 004C739E    pop         ebp
 004C739F    ret
 004C73A0    mov         eax,dword ptr [ebp+8]
 004C73A3    mov         eax,dword ptr [eax-8]
 004C73A6    mov         edx,dword ptr [eax]
 004C73A8    call        dword ptr [edx+20]
 004C73AB    xor         al,1
 004C73AD    pop         ebx
 004C73AE    pop         ebp
 004C73AF    ret
*}
end;

//004C73B0
procedure TGraphic.DefineProperties(Filer:Classes.TFiler);
begin
{*
 004C73B0    push        ebp
 004C73B1    mov         ebp,esp
 004C73B3    add         esp,0FFFFFFF8
 004C73B6    push        ebx
 004C73B7    mov         dword ptr [ebp-4],edx
 004C73BA    mov         dword ptr [ebp-8],eax
 004C73BD    mov         eax,dword ptr [ebp-8]
 004C73C0    push        eax
 004C73C1    mov         eax,dword ptr [eax]
 004C73C3    mov         eax,dword ptr [eax+34]
 004C73C6    push        eax
 004C73C7    mov         eax,dword ptr [ebp-8]
 004C73CA    push        eax
 004C73CB    mov         eax,dword ptr [eax]
 004C73CD    mov         eax,dword ptr [eax+48]
 004C73D0    push        eax
 004C73D1    push        ebp
 004C73D2    call        DoWrite
 004C73D7    pop         ecx
 004C73D8    mov         ecx,eax
 004C73DA    mov         edx,4C73F8;'Data'
 004C73DF    mov         eax,dword ptr [ebp-4]
 004C73E2    mov         ebx,dword ptr [eax]
 004C73E4    call        dword ptr [ebx+8]
 004C73E7    pop         ebx
 004C73E8    pop         ecx
 004C73E9    pop         ecx
 004C73EA    pop         ebp
 004C73EB    ret
*}
end;

//004C7404
procedure sub_004C7404;
begin
{*
 004C7404    push        ebp
 004C7405    mov         ebp,esp
 004C7407    push        ebx
 004C7408    mov         ebx,dword ptr [eax]
 004C740A    call        dword ptr [ebx+14];TGraphic.Draw
 004C740D    pop         ebx
 004C740E    pop         ebp
 004C740F    ret         4
*}
end;

//004C7414
function TGraphic.Equals(Graphic:TGraphic):Boolean;
begin
{*
 004C7414    push        ebp
 004C7415    mov         ebp,esp
 004C7417    add         esp,0FFFFFFF4
 004C741A    push        ebx
 004C741B    push        esi
 004C741C    mov         esi,edx
 004C741E    mov         ebx,eax
 004C7420    test        esi,esi
>004C7422    je          004C7433
 004C7424    mov         edx,dword ptr [ebx]
 004C7426    mov         eax,edx
 004C7428    mov         ecx,dword ptr [esi]
 004C742A    mov         edx,ecx
 004C742C    cmp         edx,eax
 004C742E    sete        al
>004C7431    jmp         004C7435
 004C7433    xor         eax,eax
 004C7435    mov         byte ptr [ebp-1],al
 004C7438    mov         eax,ebx
 004C743A    mov         edx,dword ptr [eax]
 004C743C    call        dword ptr [edx+20]
 004C743F    test        al,al
>004C7441    jne         004C744E
 004C7443    mov         eax,esi
 004C7445    mov         edx,dword ptr [eax]
 004C7447    call        dword ptr [edx+20]
 004C744A    test        al,al
>004C744C    je          004C7472
 004C744E    mov         eax,ebx
 004C7450    mov         edx,dword ptr [eax]
 004C7452    call        dword ptr [edx+20]
 004C7455    test        al,al
>004C7457    je          004C7464
 004C7459    mov         eax,esi
 004C745B    mov         edx,dword ptr [eax]
 004C745D    call        dword ptr [edx+20]
 004C7460    test        al,al
>004C7462    jne         004C7468
 004C7464    xor         eax,eax
>004C7466    jmp         004C746A
 004C7468    mov         al,1
 004C746A    mov         byte ptr [ebp-1],al
>004C746D    jmp         004C7548
 004C7472    cmp         byte ptr [ebp-1],0
>004C7476    je          004C7548
 004C747C    mov         dl,1
 004C747E    mov         eax,[00472CE4];TMemoryStream
 004C7483    call        TObject.Create
 004C7488    mov         dword ptr [ebp-8],eax
 004C748B    xor         eax,eax
 004C748D    push        ebp
 004C748E    push        4C7541
 004C7493    push        dword ptr fs:[eax]
 004C7496    mov         dword ptr fs:[eax],esp
 004C7499    mov         edx,dword ptr [ebp-8]
 004C749C    mov         eax,ebx
 004C749E    mov         ecx,dword ptr [eax]
 004C74A0    call        dword ptr [ecx+48]
 004C74A3    mov         dl,1
 004C74A5    mov         eax,[00472CE4];TMemoryStream
 004C74AA    call        TObject.Create
 004C74AF    mov         dword ptr [ebp-0C],eax
 004C74B2    xor         eax,eax
 004C74B4    push        ebp
 004C74B5    push        4C7524
 004C74BA    push        dword ptr fs:[eax]
 004C74BD    mov         dword ptr fs:[eax],esp
 004C74C0    mov         edx,dword ptr [ebp-0C]
 004C74C3    mov         eax,esi
 004C74C5    mov         ecx,dword ptr [eax]
 004C74C7    call        dword ptr [ecx+48]
 004C74CA    mov         eax,dword ptr [ebp-8]
 004C74CD    mov         edx,dword ptr [eax]
 004C74CF    call        dword ptr [edx]
 004C74D1    push        edx
 004C74D2    push        eax
 004C74D3    mov         eax,dword ptr [ebp-0C]
 004C74D6    mov         edx,dword ptr [eax]
 004C74D8    call        dword ptr [edx]
 004C74DA    cmp         edx,dword ptr [esp+4]
>004C74DE    jne         004C74E3
 004C74E0    cmp         eax,dword ptr [esp]
 004C74E3    pop         edx
 004C74E4    pop         eax
>004C74E5    jne         004C7505
 004C74E7    mov         eax,dword ptr [ebp-8]
 004C74EA    mov         edx,dword ptr [eax]
 004C74EC    call        dword ptr [edx]
 004C74EE    mov         ecx,eax
 004C74F0    mov         eax,dword ptr [ebp-0C]
 004C74F3    mov         edx,dword ptr [eax+4]
 004C74F6    mov         eax,dword ptr [ebp-8]
 004C74F9    mov         eax,dword ptr [eax+4]
 004C74FC    call        CompareMem
 004C7501    test        al,al
>004C7503    jne         004C7509
 004C7505    xor         eax,eax
>004C7507    jmp         004C750B
 004C7509    mov         al,1
 004C750B    mov         byte ptr [ebp-1],al
 004C750E    xor         eax,eax
 004C7510    pop         edx
 004C7511    pop         ecx
 004C7512    pop         ecx
 004C7513    mov         dword ptr fs:[eax],edx
 004C7516    push        4C752B
 004C751B    mov         eax,dword ptr [ebp-0C]
 004C751E    call        TObject.Free
 004C7523    ret
>004C7524    jmp         @HandleFinally
>004C7529    jmp         004C751B
 004C752B    xor         eax,eax
 004C752D    pop         edx
 004C752E    pop         ecx
 004C752F    pop         ecx
 004C7530    mov         dword ptr fs:[eax],edx
 004C7533    push        4C7548
 004C7538    mov         eax,dword ptr [ebp-8]
 004C753B    call        TObject.Free
 004C7540    ret
>004C7541    jmp         @HandleFinally
>004C7546    jmp         004C7538
 004C7548    movzx       eax,byte ptr [ebp-1]
 004C754C    pop         esi
 004C754D    pop         ebx
 004C754E    mov         esp,ebp
 004C7550    pop         ebp
 004C7551    ret
*}
end;

//004C7554
function TGraphic.Equals(Obj:TObject):Boolean;
begin
{*
 004C7554    push        ebx
 004C7555    push        esi
 004C7556    mov         esi,edx
 004C7558    mov         ebx,eax
 004C755A    mov         eax,esi
 004C755C    mov         edx,dword ptr ds:[4C053C];TGraphic
 004C7562    call        @IsClass
 004C7567    test        al,al
>004C7569    je          004C7577
 004C756B    mov         edx,esi
 004C756D    mov         eax,ebx
 004C756F    mov         ecx,dword ptr [eax]
 004C7571    call        dword ptr [ecx+1C]
 004C7574    pop         esi
 004C7575    pop         ebx
 004C7576    ret
 004C7577    mov         edx,esi
 004C7579    mov         eax,ebx
 004C757B    call        TObject.Equals
 004C7580    pop         esi
 004C7581    pop         ebx
 004C7582    ret
*}
end;

//004C7584
{*function sub_004C7584:?;
begin
 004C7584    xor         eax,eax
 004C7586    ret
end;*}

//004C7588
{*function sub_004C7588:?;
begin
 004C7588    xor         eax,eax
 004C758A    ret
end;*}

//004C758C
{*function sub_004C758C:?;
begin
 004C758C    movzx       eax,byte ptr [eax+21];TGraphic.FTransparent:Boolean
 004C7590    ret
end;*}

//004C7594
procedure TGraphic.LoadFromFile(Filename:string);
begin
{*
 004C7594    push        ebp
 004C7595    mov         ebp,esp
 004C7597    push        ecx
 004C7598    push        ebx
 004C7599    mov         ebx,eax
 004C759B    push        20
 004C759D    mov         ecx,edx
 004C759F    mov         eax,[00472830];TFileStream
 004C75A4    mov         dl,1
 004C75A6    call        TFileStream.Create;TFileStream.Create
 004C75AB    mov         dword ptr [ebp-4],eax
 004C75AE    xor         eax,eax
 004C75B0    push        ebp
 004C75B1    push        4C75DC
 004C75B6    push        dword ptr fs:[eax]
 004C75B9    mov         dword ptr fs:[eax],esp
 004C75BC    mov         edx,dword ptr [ebp-4]
 004C75BF    mov         eax,ebx
 004C75C1    mov         ecx,dword ptr [eax]
 004C75C3    call        dword ptr [ecx+5C];TGraphic.LoadFromStream
 004C75C6    xor         eax,eax
 004C75C8    pop         edx
 004C75C9    pop         ecx
 004C75CA    pop         ecx
 004C75CB    mov         dword ptr fs:[eax],edx
 004C75CE    push        4C75E3
 004C75D3    mov         eax,dword ptr [ebp-4]
 004C75D6    call        TObject.Free
 004C75DB    ret
>004C75DC    jmp         @HandleFinally
>004C75E1    jmp         004C75D3
 004C75E3    pop         ebx
 004C75E4    pop         ecx
 004C75E5    pop         ebp
 004C75E6    ret
*}
end;

//004C75E8
procedure TGraphic.Progress(Sender:TObject; Stage:TProgressStage; PercentDone:Byte; RedrawNow:Boolean; const R:Windows.TRect; const Msg:UnicodeString);
begin
{*
 004C75E8    push        ebp
 004C75E9    mov         ebp,esp
 004C75EB    push        ebx
 004C75EC    cmp         word ptr [eax+1A],0
>004C75F1    je          004C760D
 004C75F3    movzx       ebx,byte ptr [ebp+14]
 004C75F7    push        ebx
 004C75F8    movzx       ebx,byte ptr [ebp+10]
 004C75FC    push        ebx
 004C75FD    mov         ebx,dword ptr [ebp+0C]
 004C7600    push        ebx
 004C7601    mov         ebx,dword ptr [ebp+8]
 004C7604    push        ebx
 004C7605    mov         ebx,eax
 004C7607    mov         eax,dword ptr [ebx+1C]
 004C760A    call        dword ptr [ebx+18]
 004C760D    pop         ebx
 004C760E    pop         ebp
 004C760F    ret         10
*}
end;

//004C7614
procedure sub_004C7614;
begin
{*
 004C7614    mov         ecx,dword ptr [eax]
 004C7616    call        dword ptr [ecx+5C];TGraphic.LoadFromStream
 004C7619    ret
*}
end;

//004C761C
procedure TGraphic.SaveToFile(Filename:string);
begin
{*
 004C761C    push        ebp
 004C761D    mov         ebp,esp
 004C761F    push        ecx
 004C7620    push        ebx
 004C7621    mov         ebx,eax
 004C7623    push        0FF00
 004C7628    mov         ecx,edx
 004C762A    mov         eax,[00472830];TFileStream
 004C762F    mov         dl,1
 004C7631    call        TFileStream.Create
 004C7636    mov         dword ptr [ebp-4],eax
 004C7639    xor         eax,eax
 004C763B    push        ebp
 004C763C    push        4C7667
 004C7641    push        dword ptr fs:[eax]
 004C7644    mov         dword ptr fs:[eax],esp
 004C7647    mov         edx,dword ptr [ebp-4]
 004C764A    mov         eax,ebx
 004C764C    mov         ecx,dword ptr [eax]
 004C764E    call        dword ptr [ecx+60]
 004C7651    xor         eax,eax
 004C7653    pop         edx
 004C7654    pop         ecx
 004C7655    pop         ecx
 004C7656    mov         dword ptr fs:[eax],edx
 004C7659    push        4C766E
 004C765E    mov         eax,dword ptr [ebp-4]
 004C7661    call        TObject.Free
 004C7666    ret
>004C7667    jmp         @HandleFinally
>004C766C    jmp         004C765E
 004C766E    pop         ebx
 004C766F    pop         ecx
 004C7670    pop         ebp
 004C7671    ret
*}
end;

//004C7674
procedure sub_004C7674;
begin
{*
 004C7674    ret
*}
end;

//004C7678
procedure TGraphic.SetModified(Value:Boolean);
begin
{*
 004C7678    test        dl,dl
>004C767A    je          004C7684
 004C767C    mov         edx,eax
 004C767E    mov         ecx,dword ptr [eax]
 004C7680    call        dword ptr [ecx+10]
 004C7683    ret
 004C7684    mov         byte ptr [eax+20],0
 004C7688    ret
*}
end;

//004C768C
procedure TGraphic.SetSize(AWidth:Integer; AHeight:Integer);
begin
{*
 004C768C    push        ebx
 004C768D    push        esi
 004C768E    mov         esi,ecx
 004C7690    mov         ebx,eax
 004C7692    mov         eax,ebx
 004C7694    mov         ecx,dword ptr [eax]
 004C7696    call        dword ptr [ecx+44]
 004C7699    mov         edx,esi
 004C769B    mov         eax,ebx
 004C769D    mov         ecx,dword ptr [eax]
 004C769F    call        dword ptr [ecx+38]
 004C76A2    pop         esi
 004C76A3    pop         ebx
 004C76A4    ret
*}
end;

//004C76A8
procedure TGraphic.SetTransparent(Value:Boolean);
begin
{*
 004C76A8    cmp         dl,byte ptr [eax+21]
>004C76AB    je          004C76B7
 004C76AD    mov         byte ptr [eax+21],dl
 004C76B0    mov         edx,eax
 004C76B2    mov         ecx,dword ptr [eax]
 004C76B4    call        dword ptr [ecx+10]
 004C76B7    ret
*}
end;

//004C76B8
procedure sub_004C76B8;
begin
{*
 004C76B8    mov         ecx,dword ptr [eax]
 004C76BA    call        dword ptr [ecx+60];TGraphic.SaveToStream
 004C76BD    ret
*}
end;

//004C7A00
constructor TFileFormatsList.Create();
begin
{*
 004C7A00    push        ebp
 004C7A01    mov         ebp,esp
 004C7A03    xor         ecx,ecx
 004C7A05    push        ecx
 004C7A06    push        ecx
 004C7A07    push        ecx
 004C7A08    push        ecx
 004C7A09    push        ecx
 004C7A0A    push        ecx
 004C7A0B    push        ebx
 004C7A0C    push        esi
 004C7A0D    test        dl,dl
>004C7A0F    je          004C7A19
 004C7A11    add         esp,0FFFFFFF0
 004C7A14    call        @ClassCreate
 004C7A19    mov         ebx,edx
 004C7A1B    mov         esi,eax
 004C7A1D    xor         eax,eax
 004C7A1F    push        ebp
 004C7A20    push        4C7B27
 004C7A25    push        dword ptr fs:[eax]
 004C7A28    mov         dword ptr fs:[eax],esp
 004C7A2B    xor         edx,edx
 004C7A2D    mov         eax,esi
 004C7A2F    call        TObject.Create
 004C7A34    push        0
 004C7A36    mov         eax,[004C14B0];TMetafile
 004C7A3B    push        eax
 004C7A3C    lea         edx,[ebp-4]
 004C7A3F    mov         eax,[007C4880];^SResString262:TResStringRec
 004C7A44    call        LoadResString
 004C7A49    mov         ecx,dword ptr [ebp-4]
 004C7A4C    mov         edx,4C7B58;'wmf'
 004C7A51    mov         eax,esi
 004C7A53    call        TFileFormatsList.Add
 004C7A58    push        0
 004C7A5A    mov         eax,[004C14B0];TMetafile
 004C7A5F    push        eax
 004C7A60    lea         edx,[ebp-8]
 004C7A63    mov         eax,[007C437C];^SResString263:TResStringRec
 004C7A68    call        LoadResString
 004C7A6D    mov         ecx,dword ptr [ebp-8]
 004C7A70    mov         edx,4C7B6C;'emf'
 004C7A75    mov         eax,esi
 004C7A77    call        TFileFormatsList.Add
 004C7A7C    push        0
 004C7A7E    mov         eax,[004C2694];TIcon
 004C7A83    push        eax
 004C7A84    lea         edx,[ebp-0C]
 004C7A87    mov         eax,[007C4378];^SResString264:TResStringRec
 004C7A8C    call        LoadResString
 004C7A91    mov         ecx,dword ptr [ebp-0C]
 004C7A94    mov         edx,4C7B80;'ico'
 004C7A99    mov         eax,esi
 004C7A9B    call        TFileFormatsList.Add
 004C7AA0    push        0
 004C7AA2    mov         eax,[004C2C28];TWICImage
 004C7AA7    push        eax
 004C7AA8    lea         edx,[ebp-10]
 004C7AAB    mov         eax,[007C4C6C];^SResString266:TResStringRec
 004C7AB0    call        LoadResString
 004C7AB5    mov         ecx,dword ptr [ebp-10]
 004C7AB8    mov         edx,4C7B94;'tiff'
 004C7ABD    mov         eax,esi
 004C7ABF    call        TFileFormatsList.Add
 004C7AC4    push        0
 004C7AC6    mov         eax,[004C2C28];TWICImage
 004C7ACB    push        eax
 004C7ACC    lea         edx,[ebp-14]
 004C7ACF    mov         eax,[007C4C6C];^SResString266:TResStringRec
 004C7AD4    call        LoadResString
 004C7AD9    mov         ecx,dword ptr [ebp-14]
 004C7ADC    mov         edx,4C7BAC;'tif'
 004C7AE1    mov         eax,esi
 004C7AE3    call        TFileFormatsList.Add
 004C7AE8    push        0
 004C7AEA    mov         eax,[004C1D10];TBitmap
 004C7AEF    push        eax
 004C7AF0    lea         edx,[ebp-18]
 004C7AF3    mov         eax,[007C4360];^SResString265:TResStringRec
 004C7AF8    call        LoadResString
 004C7AFD    mov         ecx,dword ptr [ebp-18]
 004C7B00    mov         edx,4C7BC0;'bmp'
 004C7B05    mov         eax,esi
 004C7B07    call        TFileFormatsList.Add
 004C7B0C    xor         eax,eax
 004C7B0E    pop         edx
 004C7B0F    pop         ecx
 004C7B10    pop         ecx
 004C7B11    mov         dword ptr fs:[eax],edx
 004C7B14    push        4C7B2E
 004C7B19    lea         eax,[ebp-18]
 004C7B1C    mov         edx,6
 004C7B21    call        @UStrArrayClr
 004C7B26    ret
>004C7B27    jmp         @HandleFinally
>004C7B2C    jmp         004C7B19
 004C7B2E    mov         eax,esi
 004C7B30    test        bl,bl
>004C7B32    je          004C7B43
 004C7B34    call        @AfterConstruction
 004C7B39    pop         dword ptr fs:[0]
 004C7B40    add         esp,0C
 004C7B43    mov         eax,esi
 004C7B45    pop         esi
 004C7B46    pop         ebx
 004C7B47    mov         esp,ebp
 004C7B49    pop         ebp
 004C7B4A    ret
*}
end;

//004C7BC8
destructor TFileFormatsList.Destroy();
begin
{*
 004C7BC8    push        ebx
 004C7BC9    push        esi
 004C7BCA    push        edi
 004C7BCB    push        ebp
 004C7BCC    call        @BeforeDestruction
 004C7BD1    mov         ebx,edx
 004C7BD3    mov         edi,eax
 004C7BD5    mov         ebp,dword ptr [edi+8]
 004C7BD8    dec         ebp
 004C7BD9    test        ebp,ebp
>004C7BDB    jl          004C7BF8
 004C7BDD    inc         ebp
 004C7BDE    xor         esi,esi
 004C7BE0    mov         edx,esi
 004C7BE2    mov         eax,edi
 004C7BE4    call        TList.Get
 004C7BE9    mov         edx,dword ptr ds:[4C76C0];TFileFormat
 004C7BEF    call        @Dispose
 004C7BF4    inc         esi
 004C7BF5    dec         ebp
>004C7BF6    jne         004C7BE0
 004C7BF8    mov         dl,0FC
 004C7BFA    and         dl,bl
 004C7BFC    mov         eax,edi
 004C7BFE    call        TList.Destroy
 004C7C03    test        bl,bl
>004C7C05    jle         004C7C0E
 004C7C07    mov         eax,edi
 004C7C09    call        @ClassDestroy
 004C7C0E    pop         ebp
 004C7C0F    pop         edi
 004C7C10    pop         esi
 004C7C11    pop         ebx
 004C7C12    ret
*}
end;

//004C7C14
procedure TFileFormatsList.Add(Ext:string; Desc:string; AClass:TGraphicClass; DescID:Integer);
begin
{*
 004C7C14    push        ebp
 004C7C15    mov         ebp,esp
 004C7C17    add         esp,0FFFFFFF4
 004C7C1A    push        ebx
 004C7C1B    push        esi
 004C7C1C    push        edi
 004C7C1D    xor         ebx,ebx
 004C7C1F    mov         dword ptr [ebp-0C],ebx
 004C7C22    mov         dword ptr [ebp-8],ecx
 004C7C25    mov         dword ptr [ebp-4],edx
 004C7C28    mov         edi,eax
 004C7C2A    xor         eax,eax
 004C7C2C    push        ebp
 004C7C2D    push        4C7C97
 004C7C32    push        dword ptr fs:[eax]
 004C7C35    mov         dword ptr fs:[eax],esp
 004C7C38    mov         edx,dword ptr ds:[4C76C0];TFileFormat
 004C7C3E    mov         eax,10
 004C7C43    call        @New
 004C7C48    mov         esi,eax
 004C7C4A    mov         ebx,esi
 004C7C4C    lea         edx,[ebp-0C]
 004C7C4F    mov         eax,dword ptr [ebp-4]
 004C7C52    call        AnsiLowerCase
 004C7C57    mov         edx,dword ptr [ebp-0C]
 004C7C5A    lea         eax,[ebx+4]
 004C7C5D    call        @UStrAsg
 004C7C62    mov         eax,dword ptr [ebp+8]
 004C7C65    mov         dword ptr [ebx],eax
 004C7C67    lea         eax,[ebx+8]
 004C7C6A    mov         edx,dword ptr [ebp-8]
 004C7C6D    call        @UStrAsg
 004C7C72    mov         eax,dword ptr [ebp+0C]
 004C7C75    mov         dword ptr [ebx+0C],eax
 004C7C78    mov         edx,esi
 004C7C7A    mov         eax,edi
 004C7C7C    call        TList.Add
 004C7C81    xor         eax,eax
 004C7C83    pop         edx
 004C7C84    pop         ecx
 004C7C85    pop         ecx
 004C7C86    mov         dword ptr fs:[eax],edx
 004C7C89    push        4C7C9E
 004C7C8E    lea         eax,[ebp-0C]
 004C7C91    call        @UStrClr
 004C7C96    ret
>004C7C97    jmp         @HandleFinally
>004C7C9C    jmp         004C7C8E
 004C7C9E    pop         edi
 004C7C9F    pop         esi
 004C7CA0    pop         ebx
 004C7CA1    mov         esp,ebp
 004C7CA3    pop         ebp
 004C7CA4    ret         8
*}
end;

//004C7CA8
function TFileFormatsList.FindClassName(Classname:string):TGraphicClass;
begin
{*
 004C7CA8    push        ebp
 004C7CA9    mov         ebp,esp
 004C7CAB    add         esp,0FFFFFFF8
 004C7CAE    push        ebx
 004C7CAF    push        esi
 004C7CB0    push        edi
 004C7CB1    xor         ecx,ecx
 004C7CB3    mov         dword ptr [ebp-8],ecx
 004C7CB6    mov         dword ptr [ebp-4],edx
 004C7CB9    mov         edi,eax
 004C7CBB    xor         eax,eax
 004C7CBD    push        ebp
 004C7CBE    push        4C7D12
 004C7CC3    push        dword ptr fs:[eax]
 004C7CC6    mov         dword ptr fs:[eax],esp
 004C7CC9    mov         ebx,dword ptr [edi+8]
 004C7CCC    dec         ebx
 004C7CCD    cmp         ebx,0
>004C7CD0    jl          004C7CFA
 004C7CD2    mov         edx,ebx
 004C7CD4    mov         eax,edi
 004C7CD6    call        TList.Get
 004C7CDB    mov         esi,dword ptr [eax]
 004C7CDD    lea         edx,[ebp-8]
 004C7CE0    mov         eax,esi
 004C7CE2    call        TObject.ClassName
 004C7CE7    mov         eax,dword ptr [ebp-8]
 004C7CEA    mov         edx,dword ptr [ebp-4]
 004C7CED    call        @UStrEqual
>004C7CF2    je          004C7CFC
 004C7CF4    dec         ebx
 004C7CF5    cmp         ebx,0FFFFFFFF
>004C7CF8    jne         004C7CD2
 004C7CFA    xor         esi,esi
 004C7CFC    xor         eax,eax
 004C7CFE    pop         edx
 004C7CFF    pop         ecx
 004C7D00    pop         ecx
 004C7D01    mov         dword ptr fs:[eax],edx
 004C7D04    push        4C7D19
 004C7D09    lea         eax,[ebp-8]
 004C7D0C    call        @UStrClr
 004C7D11    ret
>004C7D12    jmp         @HandleFinally
>004C7D17    jmp         004C7D09
 004C7D19    mov         eax,esi
 004C7D1B    pop         edi
 004C7D1C    pop         esi
 004C7D1D    pop         ebx
 004C7D1E    pop         ecx
 004C7D1F    pop         ecx
 004C7D20    pop         ebp
 004C7D21    ret
*}
end;

//004C7F20
constructor TClipboardFormats.Create();
begin
{*
 004C7F20    push        ebx
 004C7F21    push        esi
 004C7F22    test        dl,dl
>004C7F24    je          004C7F2E
 004C7F26    add         esp,0FFFFFFF0
 004C7F29    call        @ClassCreate
 004C7F2E    mov         ebx,edx
 004C7F30    mov         esi,eax
 004C7F32    xor         edx,edx
 004C7F34    mov         eax,esi
 004C7F36    call        TObject.Create
 004C7F3B    mov         dl,1
 004C7F3D    mov         eax,[0046C204];TList
 004C7F42    call        TObject.Create
 004C7F47    mov         dword ptr [esi+4],eax
 004C7F4A    mov         dl,1
 004C7F4C    mov         eax,[0046C204];TList
 004C7F51    call        TObject.Create
 004C7F56    mov         dword ptr [esi+8],eax
 004C7F59    mov         ecx,dword ptr ds:[4C14B0];TMetafile
 004C7F5F    mov         dx,3
 004C7F63    mov         eax,esi
 004C7F65    call        TClipboardFormats.Add
 004C7F6A    mov         ecx,dword ptr ds:[4C14B0];TMetafile
 004C7F70    mov         dx,0E
 004C7F74    mov         eax,esi
 004C7F76    call        TClipboardFormats.Add
 004C7F7B    mov         ecx,dword ptr ds:[4C1D10];TBitmap
 004C7F81    mov         dx,2
 004C7F85    mov         eax,esi
 004C7F87    call        TClipboardFormats.Add
 004C7F8C    mov         eax,esi
 004C7F8E    test        bl,bl
>004C7F90    je          004C7FA1
 004C7F92    call        @AfterConstruction
 004C7F97    pop         dword ptr fs:[0]
 004C7F9E    add         esp,0C
 004C7FA1    mov         eax,esi
 004C7FA3    pop         esi
 004C7FA4    pop         ebx
 004C7FA5    ret
*}
end;

//004C7FA8
destructor TClipboardFormats.Destroy();
begin
{*
 004C7FA8    push        ebx
 004C7FA9    push        esi
 004C7FAA    call        @BeforeDestruction
 004C7FAF    mov         ebx,edx
 004C7FB1    mov         esi,eax
 004C7FB3    mov         eax,dword ptr [esi+4]
 004C7FB6    call        TObject.Free
 004C7FBB    mov         eax,dword ptr [esi+8]
 004C7FBE    call        TObject.Free
 004C7FC3    mov         dl,0FC
 004C7FC5    and         dl,bl
 004C7FC7    mov         eax,esi
 004C7FC9    call        TObject.Destroy
 004C7FCE    test        bl,bl
>004C7FD0    jle         004C7FD9
 004C7FD2    mov         eax,esi
 004C7FD4    call        @ClassDestroy
 004C7FD9    pop         esi
 004C7FDA    pop         ebx
 004C7FDB    ret
*}
end;

//004C7FDC
procedure TClipboardFormats.Add(Fmt:Word; AClass:TGraphicClass);
begin
{*
 004C7FDC    push        ebp
 004C7FDD    mov         ebp,esp
 004C7FDF    add         esp,0FFFFFFF8
 004C7FE2    push        ebx
 004C7FE3    push        esi
 004C7FE4    push        edi
 004C7FE5    mov         ebx,edx
 004C7FE7    mov         dword ptr [ebp-4],eax
 004C7FEA    mov         eax,dword ptr [ebp-4]
 004C7FED    mov         eax,dword ptr [eax+4]
 004C7FF0    mov         edx,ecx
 004C7FF2    call        TList.Add
 004C7FF7    mov         dword ptr [ebp-8],eax
 004C7FFA    xor         eax,eax
 004C7FFC    push        ebp
 004C7FFD    push        4C8020
 004C8002    push        dword ptr fs:[eax]
 004C8005    mov         dword ptr fs:[eax],esp
 004C8008    movzx       edx,bx
 004C800B    mov         eax,dword ptr [ebp-4]
 004C800E    mov         eax,dword ptr [eax+8]
 004C8011    call        TList.Add
 004C8016    xor         eax,eax
 004C8018    pop         edx
 004C8019    pop         ecx
 004C801A    pop         ecx
 004C801B    mov         dword ptr fs:[eax],edx
>004C801E    jmp         004C803D
>004C8020    jmp         @HandleAnyException
 004C8025    mov         eax,dword ptr [ebp-4]
 004C8028    mov         eax,dword ptr [eax+4]
 004C802B    mov         edx,dword ptr [ebp-8]
 004C802E    call        TList.Delete
 004C8033    call        @RaiseAgain
 004C8038    call        @DoneExcept
 004C803D    pop         edi
 004C803E    pop         esi
 004C803F    pop         ebx
 004C8040    pop         ecx
 004C8041    pop         ecx
 004C8042    pop         ebp
 004C8043    ret
*}
end;

//004C8044
function TClipboardFormats.FindFormat(Fmt:Word):TGraphicClass;
begin
{*
 004C8044    push        ebx
 004C8045    push        esi
 004C8046    push        edi
 004C8047    mov         edi,edx
 004C8049    mov         esi,eax
 004C804B    mov         eax,dword ptr [esi+8]
 004C804E    mov         ebx,dword ptr [eax+8]
 004C8051    dec         ebx
 004C8052    cmp         ebx,0
>004C8055    jl          004C807A
 004C8057    mov         edx,ebx
 004C8059    mov         eax,dword ptr [esi+8]
 004C805C    call        TList.Get
 004C8061    movzx       edx,di
 004C8064    cmp         eax,edx
>004C8066    jne         004C8074
 004C8068    mov         edx,ebx
 004C806A    mov         eax,dword ptr [esi+4]
 004C806D    call        TList.Get
>004C8072    jmp         004C807C
 004C8074    dec         ebx
 004C8075    cmp         ebx,0FFFFFFFF
>004C8078    jne         004C8057
 004C807A    xor         eax,eax
 004C807C    pop         edi
 004C807D    pop         esi
 004C807E    pop         ebx
 004C807F    ret
*}
end;

//004C8080
function GetFileFormats:TFileFormatsList;
begin
{*
 004C8080    cmp         dword ptr ds:[7A103C],0;gvar_007A103C
>004C8087    jne         004C809A
 004C8089    mov         dl,1
 004C808B    mov         eax,[004C774C];TFileFormatsList
 004C8090    call        TFileFormatsList.Create
 004C8095    mov         [007A103C],eax;gvar_007A103C
 004C809A    mov         eax,[007A103C];gvar_007A103C
 004C809F    ret
*}
end;

//004C80A0
function GetClipboardFormats:TClipboardFormats;
begin
{*
 004C80A0    cmp         dword ptr ds:[7A1038],0;gvar_007A1038
>004C80A7    jne         004C80BA
 004C80A9    mov         dl,1
 004C80AB    mov         eax,[004C7D24];TClipboardFormats
 004C80B0    call        TClipboardFormats.Create
 004C80B5    mov         [007A1038],eax;gvar_007A1038
 004C80BA    mov         eax,[007A1038];gvar_007A1038
 004C80BF    ret
*}
end;

//004C80C0
constructor TPicture.Create();
begin
{*
 004C80C0    push        ebx
 004C80C1    push        esi
 004C80C2    test        dl,dl
>004C80C4    je          004C80CE
 004C80C6    add         esp,0FFFFFFF0
 004C80C9    call        @ClassCreate
 004C80CE    mov         ebx,edx
 004C80D0    mov         esi,eax
 004C80D2    xor         edx,edx
 004C80D4    mov         eax,esi
 004C80D6    call        TObject.Create
 004C80DB    call        GetFileFormats
 004C80E0    call        GetClipboardFormats
 004C80E5    mov         eax,esi
 004C80E7    test        bl,bl
>004C80E9    je          004C80FA
 004C80EB    call        @AfterConstruction
 004C80F0    pop         dword ptr fs:[0]
 004C80F7    add         esp,0C
 004C80FA    mov         eax,esi
 004C80FC    pop         esi
 004C80FD    pop         ebx
 004C80FE    ret
*}
end;

//004C8100
destructor TPicture.Destroy();
begin
{*
 004C8100    push        ebx
 004C8101    push        esi
 004C8102    call        @BeforeDestruction
 004C8107    mov         ebx,edx
 004C8109    mov         esi,eax
 004C810B    mov         eax,dword ptr [esi+0C];TPicture.FGraphic:TGraphic
 004C810E    call        TObject.Free
 004C8113    mov         dl,0FC
 004C8115    and         dl,bl
 004C8117    mov         eax,esi
 004C8119    call        TMemoryStream.Destroy
 004C811E    test        bl,bl
>004C8120    jle         004C8129
 004C8122    mov         eax,esi
 004C8124    call        @ClassDestroy
 004C8129    pop         esi
 004C812A    pop         ebx
 004C812B    ret
*}
end;

//004C812C
procedure TPicture.AssignTo(Dest:Classes.TPersistent);
begin
{*
 004C812C    push        ebx
 004C812D    push        esi
 004C812E    push        edi
 004C812F    push        ebp
 004C8130    mov         esi,edx
 004C8132    mov         ebx,eax
 004C8134    mov         eax,dword ptr [esi]
 004C8136    mov         edi,eax
 004C8138    mov         ebp,dword ptr [ebx+0C]
 004C813B    mov         eax,ebp
 004C813D    mov         edx,edi
 004C813F    call        @IsClass
 004C8144    test        al,al
>004C8146    je          004C8153
 004C8148    mov         edx,ebp
 004C814A    mov         eax,esi
 004C814C    mov         ecx,dword ptr [eax]
 004C814E    call        dword ptr [ecx+8]
>004C8151    jmp         004C815C
 004C8153    mov         edx,esi
 004C8155    mov         eax,ebx
 004C8157    call        TPersistent.AssignTo
 004C815C    pop         ebp
 004C815D    pop         edi
 004C815E    pop         esi
 004C815F    pop         ebx
 004C8160    ret
*}
end;

//004C8164
procedure TPicture.ForceType(GraphicType:TGraphicClass);
begin
{*
 004C8164    push        ebx
 004C8165    push        esi
 004C8166    push        edi
 004C8167    mov         edi,edx
 004C8169    mov         ebx,eax
 004C816B    mov         esi,dword ptr [ebx+0C]
 004C816E    mov         eax,esi
 004C8170    mov         edx,edi
 004C8172    call        @IsClass
 004C8177    test        al,al
>004C8179    jne         004C81C2
 004C817B    mov         eax,esi
 004C817D    call        TObject.Free
 004C8182    xor         eax,eax
 004C8184    mov         dword ptr [ebx+0C],eax
 004C8187    mov         dl,1
 004C8189    mov         eax,edi
 004C818B    call        dword ptr [eax+50]
 004C818E    mov         esi,eax
 004C8190    mov         dword ptr [ebx+0C],esi
 004C8193    mov         dword ptr [esi+14],ebx
 004C8196    mov         eax,ebx
 004C8198    mov         dx,0FFFD
 004C819C    call        @FindDynaInst
 004C81A1    mov         dword ptr [esi+10],eax
 004C81A4    mov         dword ptr [esi+1C],ebx
 004C81A7    mov         eax,ebx
 004C81A9    mov         dx,0FFFC
 004C81AD    call        @FindDynaInst
 004C81B2    mov         dword ptr [esi+18],eax
 004C81B5    mov         edx,ebx
 004C81B7    mov         eax,ebx
 004C81B9    mov         si,0FFFD
 004C81BD    call        @CallDynaInst
 004C81C2    pop         edi
 004C81C3    pop         esi
 004C81C4    pop         ebx
 004C81C5    ret
*}
end;

//004C81C8
function TPicture.GetBitmap:TBitmap;
begin
{*
 004C81C8    push        ebx
 004C81C9    mov         ebx,eax
 004C81CB    mov         edx,dword ptr ds:[4C1D10];TBitmap
 004C81D1    mov         eax,ebx
 004C81D3    call        TPicture.ForceType
 004C81D8    mov         eax,dword ptr [ebx+0C]
 004C81DB    pop         ebx
 004C81DC    ret
*}
end;

//004C81E0
function TPicture.GetIcon:TIcon;
begin
{*
 004C81E0    push        ebx
 004C81E1    mov         ebx,eax
 004C81E3    mov         edx,dword ptr ds:[4C2694];TIcon
 004C81E9    mov         eax,ebx
 004C81EB    call        TPicture.ForceType
 004C81F0    mov         eax,dword ptr [ebx+0C]
 004C81F3    pop         ebx
 004C81F4    ret
*}
end;

//004C81F8
function TPicture.GetMetafile:TMetafile;
begin
{*
 004C81F8    push        ebx
 004C81F9    mov         ebx,eax
 004C81FB    mov         edx,dword ptr ds:[4C14B0];TMetafile
 004C8201    mov         eax,ebx
 004C8203    call        TPicture.ForceType
 004C8208    mov         eax,dword ptr [ebx+0C]
 004C820B    pop         ebx
 004C820C    ret
*}
end;

//004C8228
procedure TPicture.SetGraphic(Value:TGraphic);
begin
{*
 004C8228    push        ebp
 004C8229    mov         ebp,esp
 004C822B    push        ecx
 004C822C    push        ebx
 004C822D    push        esi
 004C822E    push        edi
 004C822F    mov         esi,edx
 004C8231    mov         ebx,eax
 004C8233    xor         eax,eax
 004C8235    mov         dword ptr [ebp-4],eax
 004C8238    test        esi,esi
>004C823A    je          004C8282
 004C823C    mov         edx,dword ptr [esi]
 004C823E    mov         eax,edx
 004C8240    mov         dl,1
 004C8242    call        dword ptr [eax+50]
 004C8245    mov         dword ptr [ebp-4],eax
 004C8248    mov         edx,esi
 004C824A    mov         eax,dword ptr [ebp-4]
 004C824D    mov         ecx,dword ptr [eax]
 004C824F    call        dword ptr [ecx+8]
 004C8252    mov         eax,dword ptr [ebp-4]
 004C8255    mov         dword ptr [eax+14],ebx
 004C8258    push        eax
 004C8259    mov         eax,ebx
 004C825B    mov         dx,0FFFD
 004C825F    call        @FindDynaInst
 004C8264    mov         edx,eax
 004C8266    pop         eax
 004C8267    mov         dword ptr [eax+10],edx
 004C826A    mov         eax,dword ptr [ebp-4]
 004C826D    mov         dword ptr [eax+1C],ebx
 004C8270    push        eax
 004C8271    mov         eax,ebx
 004C8273    mov         dx,0FFFC
 004C8277    call        @FindDynaInst
 004C827C    mov         edx,eax
 004C827E    pop         eax
 004C827F    mov         dword ptr [eax+18],edx
 004C8282    xor         eax,eax
 004C8284    push        ebp
 004C8285    push        4C82B5
 004C828A    push        dword ptr fs:[eax]
 004C828D    mov         dword ptr fs:[eax],esp
 004C8290    mov         eax,dword ptr [ebx+0C]
 004C8293    call        TObject.Free
 004C8298    mov         eax,dword ptr [ebp-4]
 004C829B    mov         dword ptr [ebx+0C],eax
 004C829E    mov         edx,ebx
 004C82A0    mov         eax,ebx
 004C82A2    mov         si,0FFFD
 004C82A6    call        @CallDynaInst
 004C82AB    xor         eax,eax
 004C82AD    pop         edx
 004C82AE    pop         ecx
 004C82AF    pop         ecx
 004C82B0    mov         dword ptr fs:[eax],edx
>004C82B3    jmp         004C82CC
>004C82B5    jmp         @HandleAnyException
 004C82BA    mov         eax,dword ptr [ebp-4]
 004C82BD    call        TObject.Free
 004C82C2    call        @RaiseAgain
 004C82C7    call        @DoneExcept
 004C82CC    pop         edi
 004C82CD    pop         esi
 004C82CE    pop         ebx
 004C82CF    pop         ecx
 004C82D0    pop         ebp
 004C82D1    ret
*}
end;

//004C82D4
procedure TPicture.LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);
begin
{*
 004C82D4    push        ebp
 004C82D5    mov         ebp,esp
 004C82D7    add         esp,0FFFFFFF8
 004C82DA    push        ebx
 004C82DB    push        esi
 004C82DC    push        edi
 004C82DD    mov         dword ptr [ebp-4],ecx
 004C82E0    mov         edi,edx
 004C82E2    mov         ebx,eax
 004C82E4    mov         edx,edi
 004C82E6    mov         eax,[007A1038];gvar_007A1038
 004C82EB    call        TClipboardFormats.FindFormat
 004C82F0    mov         esi,eax
 004C82F2    test        esi,esi
>004C82F4    jne         004C8300
 004C82F6    mov         eax,[007C4A54];^SResString218:TResStringRec
 004C82FB    call        InvalidOperation
 004C8300    mov         dl,1
 004C8302    mov         eax,esi
 004C8304    call        dword ptr [eax+50]
 004C8307    mov         dword ptr [ebp-8],eax
 004C830A    xor         eax,eax
 004C830C    push        ebp
 004C830D    push        4C834B
 004C8312    push        dword ptr fs:[eax]
 004C8315    mov         dword ptr fs:[eax],esp
 004C8318    mov         eax,dword ptr [ebp-8]
 004C831B    mov         dword ptr [eax+1C],ebx
 004C831E    push        eax
 004C831F    mov         eax,ebx
 004C8321    mov         dx,0FFFC
 004C8325    call        @FindDynaInst
 004C832A    mov         edx,eax
 004C832C    pop         eax
 004C832D    mov         dword ptr [eax+18],edx
 004C8330    mov         eax,dword ptr [ebp+8]
 004C8333    push        eax
 004C8334    mov         ecx,dword ptr [ebp-4]
 004C8337    mov         edx,edi
 004C8339    mov         eax,dword ptr [ebp-8]
 004C833C    mov         esi,dword ptr [eax]
 004C833E    call        dword ptr [esi+64]
 004C8341    xor         eax,eax
 004C8343    pop         edx
 004C8344    pop         ecx
 004C8345    pop         ecx
 004C8346    mov         dword ptr fs:[eax],edx
>004C8349    jmp         004C8362
>004C834B    jmp         @HandleAnyException
 004C8350    mov         eax,dword ptr [ebp-8]
 004C8353    call        TObject.Free
 004C8358    call        @RaiseAgain
 004C835D    call        @DoneExcept
 004C8362    mov         eax,dword ptr [ebx+0C]
 004C8365    call        TObject.Free
 004C836A    mov         esi,dword ptr [ebp-8]
 004C836D    mov         dword ptr [ebx+0C],esi
 004C8370    mov         dword ptr [esi+14],ebx
 004C8373    mov         eax,ebx
 004C8375    mov         dx,0FFFD
 004C8379    call        @FindDynaInst
 004C837E    mov         dword ptr [esi+10],eax
 004C8381    mov         edx,ebx
 004C8383    mov         eax,ebx
 004C8385    mov         si,0FFFD
 004C8389    call        @CallDynaInst
 004C838E    pop         edi
 004C838F    pop         esi
 004C8390    pop         ebx
 004C8391    pop         ecx
 004C8392    pop         ecx
 004C8393    pop         ebp
 004C8394    ret         4
*}
end;

//004C8398
procedure TPicture.SaveToClipboardFormat(var AFormat:Word; var AData:NativeUInt; var APalette:HPALETTE);
begin
{*
 004C8398    push        ebp
 004C8399    mov         ebp,esp
 004C839B    push        ebx
 004C839C    push        esi
 004C839D    push        edi
 004C839E    mov         esi,eax
 004C83A0    mov         edi,dword ptr [esi+0C]
 004C83A3    test        edi,edi
>004C83A5    je          004C83B2
 004C83A7    mov         eax,dword ptr [ebp+8]
 004C83AA    push        eax
 004C83AB    mov         eax,edi
 004C83AD    mov         ebx,dword ptr [eax]
 004C83AF    call        dword ptr [ebx+68]
 004C83B2    pop         edi
 004C83B3    pop         esi
 004C83B4    pop         ebx
 004C83B5    pop         ebp
 004C83B6    ret         4
*}
end;

//004C83BC
function TPicture.SupportsClipboardFormat(AFormat:Word):Boolean;
begin
{*
 004C83BC    push        ebx
 004C83BD    mov         ebx,edx
 004C83BF    call        GetClipboardFormats
 004C83C4    mov         edx,ebx
 004C83C6    call        TClipboardFormats.FindFormat
 004C83CB    test        eax,eax
 004C83CD    setne       al
 004C83D0    pop         ebx
 004C83D1    ret
*}
end;

//004C83D4
{*procedure sub_004C83D4(?:?; ?:?);
begin
 004C83D4    push        ebx
 004C83D5    push        esi
 004C83D6    mov         esi,edx
 004C83D8    mov         ebx,eax
 004C83DA    mov         eax,ebx
 004C83DC    call        TPicture.GetBitmap
 004C83E1    mov         edx,esi
 004C83E3    mov         ecx,dword ptr [eax]
 004C83E5    call        dword ptr [ecx+5C];TBitmap.LoadFromStream
 004C83E8    pop         esi
 004C83E9    pop         ebx
 004C83EA    ret
end;*}

//004C83EC
{*procedure sub_004C83EC(?:?; ?:?);
begin
 004C83EC    push        esi
 004C83ED    push        edi
 004C83EE    mov         edi,edx
 004C83F0    mov         esi,eax
 004C83F2    mov         eax,esi
 004C83F4    call        TPicture.GetBitmap
 004C83F9    mov         edx,edi
 004C83FB    mov         ecx,dword ptr [eax]
 004C83FD    call        dword ptr [ecx+60];TBitmap.SaveToStream
 004C8400    pop         edi
 004C8401    pop         esi
 004C8402    ret
end;*}

//004C8404
procedure TPicture.Assign(Source:TPersistent);
begin
{*
 004C8404    push        ebx
 004C8405    push        esi
 004C8406    mov         ebx,edx
 004C8408    mov         esi,eax
 004C840A    test        ebx,ebx
>004C840C    jne         004C841A
 004C840E    xor         edx,edx
 004C8410    mov         eax,esi
 004C8412    call        TPicture.SetGraphic
 004C8417    pop         esi
 004C8418    pop         ebx
 004C8419    ret
 004C841A    mov         eax,ebx
 004C841C    mov         edx,dword ptr ds:[4C0BB8];TPicture
 004C8422    call        @IsClass
 004C8427    test        al,al
>004C8429    je          004C8437
 004C842B    mov         edx,dword ptr [ebx+0C]
 004C842E    mov         eax,esi
 004C8430    call        TPicture.SetGraphic
>004C8435    jmp         004C845C
 004C8437    mov         eax,ebx
 004C8439    mov         edx,dword ptr ds:[4C053C];TGraphic
 004C843F    call        @IsClass
 004C8444    test        al,al
>004C8446    je          004C8453
 004C8448    mov         edx,ebx
 004C844A    mov         eax,esi
 004C844C    call        TPicture.SetGraphic
>004C8451    jmp         004C845C
 004C8453    mov         edx,ebx
 004C8455    mov         eax,esi
 004C8457    call        TPersistent.Assign
 004C845C    pop         esi
 004C845D    pop         ebx
 004C845E    ret
*}
end;

//004C8460
procedure TPicture.Changed(Sender:TObject);
begin
{*
 004C8460    push        ebx
 004C8461    mov         ebx,eax
 004C8463    cmp         word ptr [ebx+12],0
>004C8468    je          004C8472
 004C846A    mov         edx,ebx
 004C846C    mov         eax,dword ptr [ebx+14]
 004C846F    call        dword ptr [ebx+10]
 004C8472    cmp         dword ptr [ebx+18],0
>004C8476    je          004C8480
 004C8478    mov         eax,dword ptr [ebx+18]
 004C847B    mov         edx,dword ptr [eax]
 004C847D    call        dword ptr [edx+0C]
 004C8480    pop         ebx
 004C8481    ret
*}
end;

//004C8484
procedure TPicture.Progress(Sender:TObject; Stage:TProgressStage; PercentDone:Byte; RedrawNow:Boolean; const R:Windows.TRect; const Msg:UnicodeString);
begin
{*
 004C8484    push        ebp
 004C8485    mov         ebp,esp
 004C8487    push        ebx
 004C8488    cmp         word ptr [eax+22],0
>004C848D    je          004C84A9
 004C848F    movzx       ebx,byte ptr [ebp+14]
 004C8493    push        ebx
 004C8494    movzx       ebx,byte ptr [ebp+10]
 004C8498    push        ebx
 004C8499    mov         ebx,dword ptr [ebp+0C]
 004C849C    push        ebx
 004C849D    mov         ebx,dword ptr [ebp+8]
 004C84A0    push        ebx
 004C84A1    mov         ebx,eax
 004C84A3    mov         eax,dword ptr [ebx+24]
 004C84A6    call        dword ptr [ebx+20]
 004C84A9    pop         ebx
 004C84AA    pop         ebp
 004C84AB    ret         10
*}
end;

//004C84B0
procedure TPicture.ReadData(Stream:Classes.TStream);
begin
{*
 004C84B0    push        ebp
 004C84B1    mov         ebp,esp
 004C84B3    add         esp,0FFFFFFE8
 004C84B6    push        ebx
 004C84B7    push        esi
 004C84B8    push        edi
 004C84B9    xor         ecx,ecx
 004C84BB    mov         dword ptr [ebp-4],ecx
 004C84BE    mov         dword ptr [ebp-8],ecx
 004C84C1    mov         dword ptr [ebp-0C],ecx
 004C84C4    mov         dword ptr [ebp-10],edx
 004C84C7    mov         ebx,eax
 004C84C9    xor         eax,eax
 004C84CB    push        ebp
 004C84CC    push        4C8615
 004C84D1    push        dword ptr fs:[eax]
 004C84D4    mov         dword ptr fs:[eax],esp
 004C84D7    lea         edx,[ebp-15]
 004C84DA    mov         ecx,1
 004C84DF    mov         eax,dword ptr [ebp-10]
 004C84E2    mov         esi,dword ptr [eax]
 004C84E4    call        dword ptr [esi+0C]
 004C84E7    movzx       eax,byte ptr [ebp-15]
 004C84EB    push        eax
 004C84EC    lea         eax,[ebp-8]
 004C84EF    mov         ecx,1
 004C84F4    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004C84FA    call        @DynArraySetLength
 004C84FF    add         esp,4
 004C8502    movzx       ecx,byte ptr [ebp-15]
 004C8506    mov         edx,dword ptr [ebp-8]
 004C8509    mov         eax,dword ptr [ebp-10]
 004C850C    mov         esi,dword ptr [eax]
 004C850E    call        dword ptr [esi+0C]
 004C8511    call        004276C0
 004C8516    mov         edi,eax
 004C8518    mov         esi,dword ptr [ebp-8]
 004C851B    test        esi,esi
>004C851D    je          004C8524
 004C851F    sub         esi,4
 004C8522    mov         esi,dword ptr [esi]
 004C8524    push        esi
 004C8525    lea         eax,[ebp-0C]
 004C8528    push        eax
 004C8529    xor         ecx,ecx
 004C852B    mov         edx,dword ptr [ebp-8]
 004C852E    mov         eax,edi
 004C8530    call        TEncoding.GetString
 004C8535    lea         eax,[ebp-4]
 004C8538    mov         edx,dword ptr [ebp-0C]
 004C853B    call        @UStrLAsg
 004C8540    mov         edx,dword ptr [ebp-4]
 004C8543    mov         eax,[007A103C];gvar_007A103C
 004C8548    call        TFileFormatsList.FindClassName
 004C854D    xor         edx,edx
 004C854F    mov         dword ptr [ebp-14],edx
 004C8552    test        eax,eax
>004C8554    je          004C8598
 004C8556    mov         dl,1
 004C8558    call        dword ptr [eax+50]
 004C855B    mov         dword ptr [ebp-14],eax
 004C855E    xor         eax,eax
 004C8560    push        ebp
 004C8561    push        4C8581
 004C8566    push        dword ptr fs:[eax]
 004C8569    mov         dword ptr fs:[eax],esp
 004C856C    mov         edx,dword ptr [ebp-10]
 004C856F    mov         eax,dword ptr [ebp-14]
 004C8572    mov         ecx,dword ptr [eax]
 004C8574    call        dword ptr [ecx+34]
 004C8577    xor         eax,eax
 004C8579    pop         edx
 004C857A    pop         ecx
 004C857B    pop         ecx
 004C857C    mov         dword ptr fs:[eax],edx
>004C857F    jmp         004C8598
>004C8581    jmp         @HandleAnyException
 004C8586    mov         eax,dword ptr [ebp-14]
 004C8589    call        TObject.Free
 004C858E    call        @RaiseAgain
 004C8593    call        @DoneExcept
 004C8598    mov         eax,dword ptr [ebx+0C]
 004C859B    call        TObject.Free
 004C85A0    mov         eax,dword ptr [ebp-14]
 004C85A3    mov         dword ptr [ebx+0C],eax
 004C85A6    cmp         dword ptr [ebp-14],0
>004C85AA    je          004C85DC
 004C85AC    mov         eax,dword ptr [ebp-14]
 004C85AF    mov         dword ptr [eax+14],ebx
 004C85B2    push        eax
 004C85B3    mov         eax,ebx
 004C85B5    mov         dx,0FFFD
 004C85B9    call        @FindDynaInst
 004C85BE    mov         edx,eax
 004C85C0    pop         eax
 004C85C1    mov         dword ptr [eax+10],edx
 004C85C4    mov         eax,dword ptr [ebp-14]
 004C85C7    mov         dword ptr [eax+1C],ebx
 004C85CA    push        eax
 004C85CB    mov         eax,ebx
 004C85CD    mov         dx,0FFFC
 004C85D1    call        @FindDynaInst
 004C85D6    mov         edx,eax
 004C85D8    pop         eax
 004C85D9    mov         dword ptr [eax+18],edx
 004C85DC    mov         edx,ebx
 004C85DE    mov         eax,ebx
 004C85E0    mov         si,0FFFD
 004C85E4    call        @CallDynaInst
 004C85E9    xor         eax,eax
 004C85EB    pop         edx
 004C85EC    pop         ecx
 004C85ED    pop         ecx
 004C85EE    mov         dword ptr fs:[eax],edx
 004C85F1    push        4C861C
 004C85F6    lea         eax,[ebp-0C]
 004C85F9    call        @UStrClr
 004C85FE    lea         eax,[ebp-8]
 004C8601    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004C8607    call        @DynArrayClear
 004C860C    lea         eax,[ebp-4]
 004C860F    call        @UStrClr
 004C8614    ret
>004C8615    jmp         @HandleFinally
>004C861A    jmp         004C85F6
 004C861C    pop         edi
 004C861D    pop         esi
 004C861E    pop         ebx
 004C861F    mov         esp,ebp
 004C8621    pop         ebp
 004C8622    ret
*}
end;

//004C8624
procedure TPicture.WriteData(Stream:Classes.TStream);
begin
{*
 004C8624    push        ebp
 004C8625    mov         ebp,esp
 004C8627    add         esp,0FFFFFFF0
 004C862A    push        ebx
 004C862B    push        esi
 004C862C    xor         ecx,ecx
 004C862E    mov         dword ptr [ebp-4],ecx
 004C8631    mov         dword ptr [ebp-8],ecx
 004C8634    mov         dword ptr [ebp-0C],edx
 004C8637    mov         ebx,eax
 004C8639    xor         eax,eax
 004C863B    push        ebp
 004C863C    push        4C86D2
 004C8641    push        dword ptr fs:[eax]
 004C8644    mov         dword ptr fs:[eax],esp
 004C8647    mov         esi,dword ptr [ebx+0C]
 004C864A    test        esi,esi
>004C864C    je          004C865A
 004C864E    lea         edx,[ebp-4]
 004C8651    mov         eax,dword ptr [esi]
 004C8653    call        TObject.ClassName
>004C8658    jmp         004C8662
 004C865A    lea         eax,[ebp-4]
 004C865D    call        @UStrClr
 004C8662    call        004276C0
 004C8667    lea         ecx,[ebp-8]
 004C866A    mov         edx,dword ptr [ebp-4]
 004C866D    call        TEncoding.GetBytes
 004C8672    mov         eax,dword ptr [ebp-8]
 004C8675    test        eax,eax
>004C8677    je          004C867E
 004C8679    sub         eax,4
 004C867C    mov         eax,dword ptr [eax]
 004C867E    mov         dword ptr [ebp-10],eax
 004C8681    lea         edx,[ebp-10]
 004C8684    mov         ecx,1
 004C8689    mov         eax,dword ptr [ebp-0C]
 004C868C    mov         esi,dword ptr [eax]
 004C868E    call        dword ptr [esi+10]
 004C8691    mov         edx,dword ptr [ebp-8]
 004C8694    mov         ecx,dword ptr [ebp-10]
 004C8697    mov         eax,dword ptr [ebp-0C]
 004C869A    mov         esi,dword ptr [eax]
 004C869C    call        dword ptr [esi+10]
 004C869F    mov         eax,dword ptr [ebx+0C]
 004C86A2    test        eax,eax
>004C86A4    je          004C86AE
 004C86A6    mov         edx,dword ptr [ebp-0C]
 004C86A9    mov         ecx,dword ptr [eax]
 004C86AB    call        dword ptr [ecx+48]
 004C86AE    xor         eax,eax
 004C86B0    pop         edx
 004C86B1    pop         ecx
 004C86B2    pop         ecx
 004C86B3    mov         dword ptr fs:[eax],edx
 004C86B6    push        4C86D9
 004C86BB    lea         eax,[ebp-8]
 004C86BE    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004C86C4    call        @DynArrayClear
 004C86C9    lea         eax,[ebp-4]
 004C86CC    call        @UStrClr
 004C86D1    ret
>004C86D2    jmp         @HandleFinally
>004C86D7    jmp         004C86BB
 004C86D9    pop         esi
 004C86DA    pop         ebx
 004C86DB    mov         esp,ebp
 004C86DD    pop         ebp
 004C86DE    ret
*}
end;

//004C86E0
function DoWrite:Boolean;
begin
{*
 004C86E0    push        ebp
 004C86E1    mov         ebp,esp
 004C86E3    push        ebx
 004C86E4    push        esi
 004C86E5    mov         eax,dword ptr [ebp+8]
 004C86E8    mov         eax,dword ptr [eax-4]
 004C86EB    mov         esi,dword ptr [eax+20]
 004C86EE    test        esi,esi
>004C86F0    je          004C8740
 004C86F2    mov         bl,1
 004C86F4    mov         eax,esi
 004C86F6    mov         edx,dword ptr ds:[4C0BB8];TPicture
 004C86FC    call        @IsClass
 004C8701    test        al,al
>004C8703    je          004C874D
 004C8705    mov         ebx,esi
 004C8707    mov         eax,dword ptr [ebp+8]
 004C870A    mov         eax,dword ptr [eax-8]
 004C870D    mov         eax,dword ptr [eax+0C]
 004C8710    cmp         eax,dword ptr [ebx+0C]
>004C8713    je          004C8736
 004C8715    mov         eax,dword ptr [ebp+8]
 004C8718    mov         eax,dword ptr [eax-8]
 004C871B    mov         esi,dword ptr [eax+0C]
 004C871E    test        esi,esi
>004C8720    je          004C873A
 004C8722    cmp         dword ptr [ebx+0C],0
>004C8726    je          004C873A
 004C8728    mov         edx,dword ptr [ebx+0C]
 004C872B    mov         eax,esi
 004C872D    mov         ecx,dword ptr [eax]
 004C872F    call        dword ptr [ecx+1C]
 004C8732    test        al,al
>004C8734    je          004C873A
 004C8736    xor         eax,eax
>004C8738    jmp         004C873C
 004C873A    mov         al,1
 004C873C    mov         ebx,eax
>004C873E    jmp         004C874D
 004C8740    mov         eax,dword ptr [ebp+8]
 004C8743    mov         eax,dword ptr [eax-8]
 004C8746    cmp         dword ptr [eax+0C],0
 004C874A    setne       bl
 004C874D    mov         eax,ebx
 004C874F    pop         esi
 004C8750    pop         ebx
 004C8751    pop         ebp
 004C8752    ret
*}
end;

//004C8754
procedure TPicture.DefineProperties(Filer:Classes.TFiler);
begin
{*
 004C8754    push        ebp
 004C8755    mov         ebp,esp
 004C8757    add         esp,0FFFFFFF8
 004C875A    push        ebx
 004C875B    mov         dword ptr [ebp-4],edx
 004C875E    mov         dword ptr [ebp-8],eax
 004C8761    mov         eax,dword ptr [ebp-8]
 004C8764    push        eax
 004C8765    push        4C84B0;TPicture.ReadData
 004C876A    mov         eax,dword ptr [ebp-8]
 004C876D    push        eax
 004C876E    push        4C8624;TPicture.WriteData
 004C8773    push        ebp
 004C8774    call        DoWrite
 004C8779    pop         ecx
 004C877A    mov         ecx,eax
 004C877C    mov         edx,4C879C;'Data'
 004C8781    mov         eax,dword ptr [ebp-4]
 004C8784    mov         ebx,dword ptr [eax]
 004C8786    call        dword ptr [ebx+8]
 004C8789    pop         ebx
 004C878A    pop         ecx
 004C878B    pop         ecx
 004C878C    pop         ebp
 004C878D    ret
*}
end;

//004C87A8
{*function sub_004C87A8(?:TPicture):?;
begin
 004C87A8    xor         edx,edx
 004C87AA    mov         ecx,dword ptr [eax+0C]
 004C87AD    test        ecx,ecx
>004C87AF    je          004C87BA
 004C87B1    mov         eax,ecx
 004C87B3    mov         edx,dword ptr [eax]
 004C87B5    call        dword ptr [edx+30]
 004C87B8    mov         edx,eax
 004C87BA    mov         eax,edx
 004C87BC    ret
end;*}

//004C87C0
{*function sub_004C87C0(?:TPicture):?;
begin
 004C87C0    xor         edx,edx
 004C87C2    mov         ecx,dword ptr [eax+0C]
 004C87C5    test        ecx,ecx
>004C87C7    je          004C87D2
 004C87C9    mov         eax,ecx
 004C87CB    mov         edx,dword ptr [eax]
 004C87CD    call        dword ptr [edx+24]
 004C87D0    mov         edx,eax
 004C87D2    mov         eax,edx
 004C87D4    ret
end;*}

//004C87D8
destructor TMetafileImage.Destroy();
begin
{*
 004C87D8    push        ebx
 004C87D9    push        esi
 004C87DA    call        @BeforeDestruction
 004C87DF    mov         ebx,edx
 004C87E1    mov         esi,eax
 004C87E3    mov         eax,dword ptr [esi+8]
 004C87E6    test        eax,eax
>004C87E8    je          004C87F0
 004C87EA    push        eax
 004C87EB    call        gdi32.DeleteEnhMetaFile
 004C87F0    mov         eax,dword ptr [esi+14]
 004C87F3    call        InternalDeletePalette
 004C87F8    mov         dl,0FC
 004C87FA    and         dl,bl
 004C87FC    mov         eax,esi
 004C87FE    call        TSharedImage.Destroy
 004C8803    test        bl,bl
>004C8805    jle         004C880E
 004C8807    mov         eax,esi
 004C8809    call        @ClassDestroy
 004C880E    pop         esi
 004C880F    pop         ebx
 004C8810    ret
*}
end;

//004C8814
procedure TMetafileImage.FreeHandle;
begin
{*
 004C8814    ret
*}
end;

//004C8818
constructor TMetafile.Create();
begin
{*
 004C8818    push        ebx
 004C8819    push        esi
 004C881A    test        dl,dl
>004C881C    je          004C8826
 004C881E    add         esp,0FFFFFFF0
 004C8821    call        @ClassCreate
 004C8826    mov         ebx,edx
 004C8828    mov         esi,eax
 004C882A    xor         edx,edx
 004C882C    mov         eax,esi
 004C882E    call        TGraphic.Create
 004C8833    mov         byte ptr [esi+2C],1
 004C8837    mov         byte ptr [esi+21],1
 004C883B    xor         edx,edx
 004C883D    mov         eax,esi
 004C883F    mov         ecx,dword ptr [eax]
 004C8841    call        dword ptr [ecx+8]
 004C8844    mov         eax,esi
 004C8846    test        bl,bl
>004C8848    je          004C8859
 004C884A    call        @AfterConstruction
 004C884F    pop         dword ptr fs:[0]
 004C8856    add         esp,0C
 004C8859    mov         eax,esi
 004C885B    pop         esi
 004C885C    pop         ebx
 004C885D    ret
*}
end;

//004C8860
destructor TMetafile.Destroy();
begin
{*
 004C8860    push        ebx
 004C8861    push        esi
 004C8862    call        @BeforeDestruction
 004C8867    mov         ebx,edx
 004C8869    mov         esi,eax
 004C886B    mov         eax,dword ptr [esi+28];TMetafile.FImage:TMetafileImage
 004C886E    call        TSharedImage.Release
 004C8873    mov         dl,0FC
 004C8875    and         dl,bl
 004C8877    mov         eax,esi
 004C8879    call        TMemoryStream.Destroy
 004C887E    test        bl,bl
>004C8880    jle         004C8889
 004C8882    mov         eax,esi
 004C8884    call        @ClassDestroy
 004C8889    pop         esi
 004C888A    pop         ebx
 004C888B    ret
*}
end;

//004C888C
procedure TMetafile.Assign(Source:TPersistent);
begin
{*
 004C888C    push        ebx
 004C888D    push        esi
 004C888E    push        edi
 004C888F    mov         esi,edx
 004C8891    mov         ebx,eax
 004C8893    test        esi,esi
>004C8895    je          004C88A8
 004C8897    mov         eax,esi
 004C8899    mov         edx,dword ptr ds:[4C14B0];TMetafile
 004C889F    call        @IsClass
 004C88A4    test        al,al
>004C88A6    je          004C8913
 004C88A8    xor         edi,edi
 004C88AA    mov         eax,dword ptr [ebx+28]
 004C88AD    test        eax,eax
>004C88AF    je          004C88B9
 004C88B1    mov         edi,dword ptr [eax+14]
 004C88B4    call        TSharedImage.Release
 004C88B9    test        esi,esi
>004C88BB    je          004C88CE
 004C88BD    mov         eax,esi
 004C88BF    mov         edx,dword ptr [eax+28]
 004C88C2    mov         dword ptr [ebx+28],edx
 004C88C5    movzx       eax,byte ptr [eax+2C]
 004C88C9    mov         byte ptr [ebx+2C],al
>004C88CC    jmp         004C88E1
 004C88CE    mov         dl,1
 004C88D0    mov         eax,[004C1348];TMetafileImage
 004C88D5    call        TObject.Create
 004C88DA    mov         dword ptr [ebx+28],eax
 004C88DD    mov         byte ptr [ebx+2C],1
 004C88E1    mov         eax,dword ptr [ebx+28]
 004C88E4    call        TSharedImage.Reference
 004C88E9    mov         eax,ebx
 004C88EB    mov         edx,dword ptr [eax]
 004C88ED    call        dword ptr [edx+28]
 004C88F0    cmp         edi,eax
>004C88F2    je          004C88FF
 004C88F4    mov         eax,ebx
 004C88F6    mov         edx,dword ptr [eax]
 004C88F8    call        dword ptr [edx+28]
 004C88FB    test        eax,eax
>004C88FD    jne         004C8903
 004C88FF    xor         eax,eax
>004C8901    jmp         004C8905
 004C8903    mov         al,1
 004C8905    mov         byte ptr [ebx+22],al
 004C8908    mov         edx,ebx
 004C890A    mov         eax,ebx
 004C890C    mov         ecx,dword ptr [eax]
 004C890E    call        dword ptr [ecx+10]
>004C8911    jmp         004C891C
 004C8913    mov         edx,esi
 004C8915    mov         eax,ebx
 004C8917    call        TPersistent.Assign
 004C891C    pop         edi
 004C891D    pop         esi
 004C891E    pop         ebx
 004C891F    ret
*}
end;

//004C8920
procedure TMetafile.Draw(ACanvas:TCanvas; const Rect:Windows.TRect);
begin
{*
 004C8920    push        ebx
 004C8921    push        esi
 004C8922    push        edi
 004C8923    push        ebp
 004C8924    add         esp,0FFFFFFEC
 004C8927    mov         dword ptr [esp],ecx
 004C892A    mov         edi,edx
 004C892C    mov         ebx,eax
 004C892E    cmp         dword ptr [ebx+28],0
>004C8932    je          004C89A8
 004C8934    mov         eax,ebx
 004C8936    mov         edx,dword ptr [eax]
 004C8938    call        dword ptr [edx+28]
 004C893B    mov         esi,eax
 004C893D    xor         ebp,ebp
 004C893F    test        esi,esi
>004C8941    je          004C8962
 004C8943    push        0FF
 004C8945    push        esi
 004C8946    mov         eax,edi
 004C8948    call        TCanvas.GetHandle
 004C894D    push        eax
 004C894E    call        gdi32.SelectPalette
 004C8953    mov         ebp,eax
 004C8955    mov         eax,edi
 004C8957    call        TCanvas.GetHandle
 004C895C    push        eax
 004C895D    call        gdi32.RealizePalette
 004C8962    mov         eax,dword ptr [esp]
 004C8965    push        esi
 004C8966    push        edi
 004C8967    mov         esi,eax
 004C8969    lea         edi,[esp+0C]
 004C896D    movs        dword ptr [edi],dword ptr [esi]
 004C896E    movs        dword ptr [edi],dword ptr [esi]
 004C896F    movs        dword ptr [edi],dword ptr [esi]
 004C8970    movs        dword ptr [edi],dword ptr [esi]
 004C8971    pop         edi
 004C8972    pop         esi
 004C8973    dec         dword ptr [esp+0C]
 004C8977    dec         dword ptr [esp+10]
 004C897B    lea         eax,[esp+4]
 004C897F    push        eax
 004C8980    mov         eax,dword ptr [ebx+28]
 004C8983    mov         eax,dword ptr [eax+8]
 004C8986    push        eax
 004C8987    mov         eax,edi
 004C8989    call        TCanvas.GetHandle
 004C898E    push        eax
 004C898F    call        gdi32.PlayEnhMetaFile
 004C8994    test        esi,esi
>004C8996    je          004C89A8
 004C8998    push        0FF
 004C899A    push        ebp
 004C899B    mov         eax,edi
 004C899D    call        TCanvas.GetHandle
 004C89A2    push        eax
 004C89A3    call        gdi32.SelectPalette
 004C89A8    add         esp,14
 004C89AB    pop         ebp
 004C89AC    pop         edi
 004C89AD    pop         esi
 004C89AE    pop         ebx
 004C89AF    ret
*}
end;

//004C89B0
function TMetafile.GetAuthor:UnicodeString;
begin
{*
 004C89B0    push        ebx
 004C89B1    push        esi
 004C89B2    push        edi
 004C89B3    mov         esi,edx
 004C89B5    mov         ebx,eax
 004C89B7    mov         eax,esi
 004C89B9    call        @UStrClr
 004C89BE    mov         eax,dword ptr [ebx+28]
 004C89C1    test        eax,eax
>004C89C3    je          004C8A10
 004C89C5    cmp         dword ptr [eax+8],0
>004C89C9    je          004C8A10
 004C89CB    push        0
 004C89CD    push        0
 004C89CF    mov         eax,dword ptr [eax+8]
 004C89D2    push        eax
 004C89D3    call        gdi32.GetEnhMetaFileDescriptionW
 004C89D8    mov         edi,eax
 004C89DA    test        edi,edi
>004C89DC    jle         004C8A10
 004C89DE    mov         eax,esi
 004C89E0    mov         edx,edi
 004C89E2    call        @UStrSetLength
 004C89E7    mov         eax,dword ptr [esi]
 004C89E9    call        @UStrToPWChar
 004C89EE    push        eax
 004C89EF    push        edi
 004C89F0    mov         eax,dword ptr [ebx+28]
 004C89F3    mov         eax,dword ptr [eax+8]
 004C89F6    push        eax
 004C89F7    call        gdi32.GetEnhMetaFileDescriptionW
 004C89FC    mov         eax,dword ptr [esi]
 004C89FE    call        @UStrToPWChar
 004C8A03    call        @PWCharLen
 004C8A08    mov         edx,esi
 004C8A0A    xchg        eax,edx
 004C8A0B    call        @UStrSetLength
 004C8A10    pop         edi
 004C8A11    pop         esi
 004C8A12    pop         ebx
 004C8A13    ret
*}
end;

//004C8A14
function TMetafile.GetDesc:UnicodeString;
begin
{*
 004C8A14    push        ebx
 004C8A15    push        esi
 004C8A16    push        edi
 004C8A17    mov         ebx,edx
 004C8A19    mov         esi,eax
 004C8A1B    mov         eax,ebx
 004C8A1D    call        @UStrClr
 004C8A22    mov         eax,dword ptr [esi+28]
 004C8A25    test        eax,eax
>004C8A27    je          004C8A8F
 004C8A29    cmp         dword ptr [eax+8],0
>004C8A2D    je          004C8A8F
 004C8A2F    push        0
 004C8A31    push        0
 004C8A33    mov         eax,dword ptr [eax+8]
 004C8A36    push        eax
 004C8A37    call        gdi32.GetEnhMetaFileDescriptionW
 004C8A3C    mov         edi,eax
 004C8A3E    test        edi,edi
>004C8A40    jle         004C8A8F
 004C8A42    mov         eax,ebx
 004C8A44    mov         edx,edi
 004C8A46    call        @UStrSetLength
 004C8A4B    mov         eax,dword ptr [ebx]
 004C8A4D    call        @UStrToPWChar
 004C8A52    push        eax
 004C8A53    push        edi
 004C8A54    mov         eax,dword ptr [esi+28]
 004C8A57    mov         eax,dword ptr [eax+8]
 004C8A5A    push        eax
 004C8A5B    call        gdi32.GetEnhMetaFileDescriptionW
 004C8A60    mov         eax,dword ptr [ebx]
 004C8A62    call        @UStrToPWChar
 004C8A67    call        @PWCharLen
 004C8A6C    lea         ecx,[eax+1]
 004C8A6F    mov         eax,ebx
 004C8A71    mov         edx,1
 004C8A76    call        @UStrDelete
 004C8A7B    mov         eax,dword ptr [ebx]
 004C8A7D    call        @UStrToPWChar
 004C8A82    call        @PWCharLen
 004C8A87    mov         edx,ebx
 004C8A89    xchg        eax,edx
 004C8A8A    call        @UStrSetLength
 004C8A8F    pop         edi
 004C8A90    pop         esi
 004C8A91    pop         ebx
 004C8A92    ret
*}
end;

//004C8A94
function TMetafile.GetEmpty:Boolean;
begin
{*
 004C8A94    cmp         dword ptr [eax+28],0
 004C8A98    sete        al
 004C8A9B    ret
*}
end;

//004C8A9C
function TMetafile.GetHandle:THandle;
begin
{*
 004C8A9C    mov         edx,dword ptr [eax+28]
 004C8A9F    test        edx,edx
>004C8AA1    je          004C8AA7
 004C8AA3    mov         eax,dword ptr [edx+8]
 004C8AA6    ret
 004C8AA7    xor         eax,eax
 004C8AA9    ret
*}
end;

//004C8AAC
function TMetafile.GetHeight:Integer;
begin
{*
 004C8AAC    push        ebx
 004C8AAD    add         esp,0FFFFFF94
 004C8AB0    mov         ebx,eax
 004C8AB2    cmp         dword ptr [ebx+28],0
>004C8AB6    jne         004C8ABF
 004C8AB8    mov         eax,ebx
 004C8ABA    call        TMetafile.NewImage
 004C8ABF    mov         ebx,dword ptr [ebx+28]
 004C8AC2    cmp         word ptr [ebx+18],0
>004C8AC7    jne         004C8AF4
 004C8AC9    mov         eax,dword ptr [ebx+8]
 004C8ACC    test        eax,eax
>004C8ACE    jne         004C8AD5
 004C8AD0    mov         eax,dword ptr [ebx+20]
>004C8AD3    jmp         004C8B08
 004C8AD5    push        esp
 004C8AD6    push        6C
 004C8AD8    push        eax
 004C8AD9    call        gdi32.GetEnhMetaFileHeader
 004C8ADE    imul        eax,dword ptr [esp+54],64
 004C8AE3    push        eax
 004C8AE4    mov         eax,dword ptr [esp+50]
 004C8AE8    push        eax
 004C8AE9    mov         eax,dword ptr [ebx+10]
 004C8AEC    push        eax
 004C8AED    call        kernel32.MulDiv
>004C8AF2    jmp         004C8B08
 004C8AF4    push        9EC
 004C8AF9    mov         eax,[007CA454]
 004C8AFE    push        eax
 004C8AFF    mov         eax,dword ptr [ebx+10]
 004C8B02    push        eax
 004C8B03    call        kernel32.MulDiv
 004C8B08    add         esp,6C
 004C8B0B    pop         ebx
 004C8B0C    ret
*}
end;

//004C8B10
function TMetafile.GetInch:Word;
begin
{*
 004C8B10    xor         edx,edx
 004C8B12    mov         ecx,dword ptr [eax+28]
 004C8B15    test        ecx,ecx
>004C8B17    je          004C8B1D
 004C8B19    movzx       edx,word ptr [ecx+18]
 004C8B1D    mov         eax,edx
 004C8B1F    ret
*}
end;

//004C8B20
function TMetafile.GetMMHeight:Integer;
begin
{*
 004C8B20    push        ebx
 004C8B21    mov         ebx,eax
 004C8B23    cmp         dword ptr [ebx+28],0
>004C8B27    jne         004C8B30
 004C8B29    mov         eax,ebx
 004C8B2B    call        TMetafile.NewImage
 004C8B30    mov         eax,dword ptr [ebx+28]
 004C8B33    mov         eax,dword ptr [eax+10]
 004C8B36    pop         ebx
 004C8B37    ret
*}
end;

//004C8B38
function TMetafile.GetMMWidth:Integer;
begin
{*
 004C8B38    push        ebx
 004C8B39    mov         ebx,eax
 004C8B3B    cmp         dword ptr [ebx+28],0
>004C8B3F    jne         004C8B48
 004C8B41    mov         eax,ebx
 004C8B43    call        TMetafile.NewImage
 004C8B48    mov         eax,dword ptr [ebx+28]
 004C8B4B    mov         eax,dword ptr [eax+0C]
 004C8B4E    pop         ebx
 004C8B4F    ret
*}
end;

//004C8B50
function TMetafile.GetPalette:HPALETTE;
begin
{*
 004C8B50    push        ebx
 004C8B51    push        esi
 004C8B52    push        edi
 004C8B53    add         esp,0FFFFFBFC
 004C8B59    mov         ebx,eax
 004C8B5B    xor         edi,edi
 004C8B5D    mov         eax,dword ptr [ebx+28]
 004C8B60    test        eax,eax
>004C8B62    je          004C8BCD
 004C8B64    cmp         dword ptr [eax+8],0
>004C8B68    je          004C8BCD
 004C8B6A    cmp         dword ptr [eax+14],0
>004C8B6E    jne         004C8BC7
 004C8B70    push        0
 004C8B72    push        0
 004C8B74    mov         eax,dword ptr [eax+8]
 004C8B77    push        eax
 004C8B78    call        gdi32.GetEnhMetaFilePaletteEntries
 004C8B7D    mov         esi,eax
 004C8B7F    test        esi,esi
>004C8B81    je          004C8BCD
 004C8B83    cmp         esi,100
>004C8B89    jle         004C8B91
 004C8B8B    and         esi,0FF
 004C8B91    mov         eax,dword ptr [ebx+28]
 004C8B94    mov         eax,dword ptr [eax+14]
 004C8B97    call        InternalDeletePalette
 004C8B9C    mov         word ptr [esp],300
 004C8BA2    mov         word ptr [esp+2],si
 004C8BA7    lea         eax,[esp+4]
 004C8BAB    push        eax
 004C8BAC    push        esi
 004C8BAD    mov         eax,dword ptr [ebx+28]
 004C8BB0    mov         eax,dword ptr [eax+8]
 004C8BB3    push        eax
 004C8BB4    call        gdi32.GetEnhMetaFilePaletteEntries
 004C8BB9    mov         eax,esp
 004C8BBB    push        eax
 004C8BBC    call        gdi32.CreatePalette
 004C8BC1    mov         edx,dword ptr [ebx+28]
 004C8BC4    mov         dword ptr [edx+14],eax
 004C8BC7    mov         eax,dword ptr [ebx+28]
 004C8BCA    mov         edi,dword ptr [eax+14]
 004C8BCD    mov         eax,edi
 004C8BCF    add         esp,404
 004C8BD5    pop         edi
 004C8BD6    pop         esi
 004C8BD7    pop         ebx
 004C8BD8    ret
*}
end;

//004C8BDC
function TMetafile.GetWidth:Integer;
begin
{*
 004C8BDC    push        ebx
 004C8BDD    add         esp,0FFFFFF94
 004C8BE0    mov         ebx,eax
 004C8BE2    cmp         dword ptr [ebx+28],0
>004C8BE6    jne         004C8BEF
 004C8BE8    mov         eax,ebx
 004C8BEA    call        TMetafile.NewImage
 004C8BEF    mov         ebx,dword ptr [ebx+28]
 004C8BF2    cmp         word ptr [ebx+18],0
>004C8BF7    jne         004C8C24
 004C8BF9    mov         eax,dword ptr [ebx+8]
 004C8BFC    test        eax,eax
>004C8BFE    jne         004C8C05
 004C8C00    mov         eax,dword ptr [ebx+1C]
>004C8C03    jmp         004C8C38
 004C8C05    push        esp
 004C8C06    push        6C
 004C8C08    push        eax
 004C8C09    call        gdi32.GetEnhMetaFileHeader
 004C8C0E    imul        eax,dword ptr [esp+50],64
 004C8C13    push        eax
 004C8C14    mov         eax,dword ptr [esp+4C]
 004C8C18    push        eax
 004C8C19    mov         eax,dword ptr [ebx+0C]
 004C8C1C    push        eax
 004C8C1D    call        kernel32.MulDiv
>004C8C22    jmp         004C8C38
 004C8C24    push        9EC
 004C8C29    mov         eax,[007CA454]
 004C8C2E    push        eax
 004C8C2F    mov         eax,dword ptr [ebx+0C]
 004C8C32    push        eax
 004C8C33    call        kernel32.MulDiv
 004C8C38    add         esp,6C
 004C8C3B    pop         ebx
 004C8C3C    ret
*}
end;

//004C8C40
procedure TMetafile.LoadFromStream(Stream:TStream);
begin
{*
 004C8C40    push        ebx
 004C8C41    push        esi
 004C8C42    mov         esi,edx
 004C8C44    mov         ebx,eax
 004C8C46    mov         edx,esi
 004C8C48    mov         eax,ebx
 004C8C4A    call        TMetafile.TestEMF
 004C8C4F    test        al,al
>004C8C51    je          004C8C5E
 004C8C53    mov         edx,esi
 004C8C55    mov         eax,ebx
 004C8C57    call        TMetafile.ReadEMFStream
>004C8C5C    jmp         004C8C78
 004C8C5E    mov         eax,esi
 004C8C60    mov         edx,dword ptr [eax]
 004C8C62    call        dword ptr [edx]
 004C8C64    push        eax
 004C8C65    mov         eax,esi
 004C8C67    call        TStream.GetPosition
 004C8C6C    pop         ecx
 004C8C6D    sub         ecx,eax
 004C8C6F    mov         edx,esi
 004C8C71    mov         eax,ebx
 004C8C73    call        TMetafile.ReadWMFStream
 004C8C78    mov         eax,ebx
 004C8C7A    mov         edx,dword ptr [eax]
 004C8C7C    call        dword ptr [edx+28]
 004C8C7F    test        eax,eax
 004C8C81    setne       al
 004C8C84    mov         byte ptr [ebx+22],al
 004C8C87    mov         edx,ebx
 004C8C89    mov         eax,ebx
 004C8C8B    mov         ecx,dword ptr [eax]
 004C8C8D    call        dword ptr [ecx+10]
 004C8C90    pop         esi
 004C8C91    pop         ebx
 004C8C92    ret
*}
end;

//004C8C94
procedure TMetafile.NewImage;
begin
{*
 004C8C94    push        ebx
 004C8C95    push        esi
 004C8C96    mov         ebx,eax
 004C8C98    mov         eax,dword ptr [ebx+28]
 004C8C9B    call        TSharedImage.Release
 004C8CA0    mov         dl,1
 004C8CA2    mov         eax,[004C1348];TMetafileImage
 004C8CA7    call        TObject.Create
 004C8CAC    mov         esi,eax
 004C8CAE    mov         dword ptr [ebx+28],esi
 004C8CB1    mov         eax,esi
 004C8CB3    call        TSharedImage.Reference
 004C8CB8    pop         esi
 004C8CB9    pop         ebx
 004C8CBA    ret
*}
end;

//004C8CBC
procedure TMetafile.ReadData(Stream:Classes.TStream);
begin
{*
 004C8CBC    push        ebx
 004C8CBD    push        esi
 004C8CBE    push        edi
 004C8CBF    push        ecx
 004C8CC0    mov         esi,edx
 004C8CC2    mov         ebx,eax
 004C8CC4    mov         edx,esp
 004C8CC6    mov         ecx,4
 004C8CCB    mov         eax,esi
 004C8CCD    mov         edi,dword ptr [eax]
 004C8CCF    call        dword ptr [edi+0C]
 004C8CD2    cmp         dword ptr [esp],4
>004C8CD6    jg          004C8CE3
 004C8CD8    xor         edx,edx
 004C8CDA    mov         eax,ebx
 004C8CDC    mov         ecx,dword ptr [eax]
 004C8CDE    call        dword ptr [ecx+8]
>004C8CE1    jmp         004C8D0A
 004C8CE3    mov         edx,esi
 004C8CE5    mov         eax,ebx
 004C8CE7    call        TMetafile.TestEMF
 004C8CEC    test        al,al
>004C8CEE    je          004C8CFB
 004C8CF0    mov         edx,esi
 004C8CF2    mov         eax,ebx
 004C8CF4    call        TMetafile.ReadEMFStream
>004C8CF9    jmp         004C8D0A
 004C8CFB    mov         ecx,dword ptr [esp]
 004C8CFE    sub         ecx,4
 004C8D01    mov         edx,esi
 004C8D03    mov         eax,ebx
 004C8D05    call        TMetafile.ReadWMFStream
 004C8D0A    mov         eax,ebx
 004C8D0C    mov         edx,dword ptr [eax]
 004C8D0E    call        dword ptr [edx+28]
 004C8D11    test        eax,eax
 004C8D13    setne       al
 004C8D16    mov         byte ptr [ebx+22],al
 004C8D19    mov         edx,ebx
 004C8D1B    mov         eax,ebx
 004C8D1D    mov         ecx,dword ptr [eax]
 004C8D1F    call        dword ptr [ecx+10]
 004C8D22    pop         edx
 004C8D23    pop         edi
 004C8D24    pop         esi
 004C8D25    pop         ebx
 004C8D26    ret
*}
end;

//004C8D28
procedure TMetafile.ReadEMFStream(Stream:Classes.TStream);
begin
{*
 004C8D28    push        ebp
 004C8D29    mov         ebp,esp
 004C8D2B    add         esp,0FFFFFF90
 004C8D2E    push        ebx
 004C8D2F    push        esi
 004C8D30    push        edi
 004C8D31    mov         edi,edx
 004C8D33    mov         esi,eax
 004C8D35    mov         eax,esi
 004C8D37    call        TMetafile.NewImage
 004C8D3C    lea         edx,[ebp-70]
 004C8D3F    mov         ecx,6C
 004C8D44    mov         eax,edi
 004C8D46    call        TStream.ReadBuffer
 004C8D4B    cmp         dword ptr [ebp-48],464D4520
>004C8D52    je          004C8D59
 004C8D54    call        InvalidMetafile
 004C8D59    cmp         dword ptr [ebp-40],6C
>004C8D5D    jae         004C8D64
 004C8D5F    call        InvalidMetafile
 004C8D64    mov         eax,dword ptr [ebp-40]
 004C8D67    call        @GetMem
 004C8D6C    mov         dword ptr [ebp-4],eax
 004C8D6F    mov         ebx,dword ptr [esi+28]
 004C8D72    xor         eax,eax
 004C8D74    push        ebp
 004C8D75    push        4C8DF3
 004C8D7A    push        dword ptr fs:[eax]
 004C8D7D    mov         dword ptr fs:[eax],esp
 004C8D80    mov         edx,dword ptr [ebp-4]
 004C8D83    lea         eax,[ebp-70]
 004C8D86    mov         ecx,6C
 004C8D8B    call        Move
 004C8D90    mov         ecx,dword ptr [ebp-40]
 004C8D93    sub         ecx,6C
 004C8D96    mov         edx,dword ptr [ebp-4]
 004C8D99    add         edx,6C
 004C8D9C    mov         eax,edi
 004C8D9E    call        TStream.ReadBuffer
 004C8DA3    mov         eax,dword ptr [ebp-4]
 004C8DA6    push        eax
 004C8DA7    mov         eax,dword ptr [ebp-40]
 004C8DAA    push        eax
 004C8DAB    call        gdi32.SetEnhMetaFileBits
 004C8DB0    mov         edi,eax
 004C8DB2    mov         dword ptr [ebx+8],edi
 004C8DB5    test        edi,edi
>004C8DB7    jne         004C8DBE
 004C8DB9    call        InvalidMetafile
 004C8DBE    mov         word ptr [ebx+18],0
 004C8DC4    mov         eax,dword ptr [ebp-50]
 004C8DC7    sub         eax,dword ptr [ebp-58]
 004C8DCA    mov         dword ptr [ebx+0C],eax
 004C8DCD    mov         eax,dword ptr [ebp-4C]
 004C8DD0    sub         eax,dword ptr [ebp-54]
 004C8DD3    mov         dword ptr [ebx+10],eax
 004C8DD6    mov         byte ptr [esi+2C],1
 004C8DDA    xor         eax,eax
 004C8DDC    pop         edx
 004C8DDD    pop         ecx
 004C8DDE    pop         ecx
 004C8DDF    mov         dword ptr fs:[eax],edx
 004C8DE2    push        4C8DFA
 004C8DE7    mov         edx,dword ptr [ebp-40]
 004C8DEA    mov         eax,dword ptr [ebp-4]
 004C8DED    call        @FreeMem
 004C8DF2    ret
>004C8DF3    jmp         @HandleFinally
>004C8DF8    jmp         004C8DE7
 004C8DFA    pop         edi
 004C8DFB    pop         esi
 004C8DFC    pop         ebx
 004C8DFD    mov         esp,ebp
 004C8DFF    pop         ebp
 004C8E00    ret
*}
end;

//004C8E04
procedure TMetafile.ReadWMFStream(Stream:Classes.TStream; Length:LongInt);
begin
{*
 004C8E04    push        ebp
 004C8E05    mov         ebp,esp
 004C8E07    add         esp,0FFFFFF60
 004C8E0D    push        ebx
 004C8E0E    push        esi
 004C8E0F    push        edi
 004C8E10    mov         dword ptr [ebp-8],ecx
 004C8E13    mov         dword ptr [ebp-4],edx
 004C8E16    mov         esi,eax
 004C8E18    mov         eax,esi
 004C8E1A    call        TMetafile.NewImage
 004C8E1F    lea         edx,[ebp-22]
 004C8E22    mov         ecx,16
 004C8E27    mov         eax,dword ptr [ebp-4]
 004C8E2A    mov         ebx,dword ptr [eax]
 004C8E2C    call        dword ptr [ebx+0C]
 004C8E2F    cmp         dword ptr [ebp-22],9AC6CDD7
>004C8E36    jne         004C8E46
 004C8E38    lea         eax,[ebp-22]
 004C8E3B    call        ComputeAldusChecksum
 004C8E40    cmp         ax,word ptr [ebp-0E]
>004C8E44    je          004C8E4B
 004C8E46    call        InvalidMetafile
 004C8E4B    sub         dword ptr [ebp-8],16
 004C8E4F    mov         eax,dword ptr [ebp-8]
 004C8E52    call        @GetMem
 004C8E57    mov         dword ptr [ebp-0C],eax
 004C8E5A    mov         ebx,dword ptr [esi+28]
 004C8E5D    xor         eax,eax
 004C8E5F    push        ebp
 004C8E60    push        4C8F73
 004C8E65    push        dword ptr fs:[eax]
 004C8E68    mov         dword ptr fs:[eax],esp
 004C8E6B    mov         edx,dword ptr [ebp-0C]
 004C8E6E    mov         ecx,dword ptr [ebp-8]
 004C8E71    mov         eax,dword ptr [ebp-4]
 004C8E74    mov         edi,dword ptr [eax]
 004C8E76    call        dword ptr [edi+0C]
 004C8E79    mov         eax,dword ptr [esi+28]
 004C8E7C    movzx       edx,word ptr [ebp-14]
 004C8E80    mov         word ptr [eax+18],dx
 004C8E84    cmp         word ptr [ebp-14],0
>004C8E89    jne         004C8E91
 004C8E8B    mov         word ptr [ebp-14],60
 004C8E91    movzx       eax,word ptr [ebp-14]
 004C8E95    push        eax
 004C8E96    push        9EC
 004C8E9B    movsx       eax,word ptr [ebp-18]
 004C8E9F    movsx       edx,word ptr [ebp-1C]
 004C8EA3    sub         eax,edx
 004C8EA5    push        eax
 004C8EA6    call        kernel32.MulDiv
 004C8EAB    mov         dword ptr [ebx+0C],eax
 004C8EAE    movzx       eax,word ptr [ebp-14]
 004C8EB2    push        eax
 004C8EB3    push        9EC
 004C8EB8    movsx       eax,word ptr [ebp-16]
 004C8EBC    movsx       edx,word ptr [ebp-1A]
 004C8EC0    sub         eax,edx
 004C8EC2    push        eax
 004C8EC3    call        kernel32.MulDiv
 004C8EC8    mov         dword ptr [ebx+10],eax
 004C8ECB    mov         dword ptr [ebp-34],8
 004C8ED2    xor         eax,eax
 004C8ED4    mov         dword ptr [ebp-30],eax
 004C8ED7    xor         eax,eax
 004C8ED9    mov         dword ptr [ebp-2C],eax
 004C8EDC    xor         eax,eax
 004C8EDE    mov         dword ptr [ebp-28],eax
 004C8EE1    lea         eax,[ebp-34]
 004C8EE4    push        eax
 004C8EE5    push        0
 004C8EE7    mov         eax,dword ptr [ebp-0C]
 004C8EEA    push        eax
 004C8EEB    mov         eax,dword ptr [ebp-8]
 004C8EEE    push        eax
 004C8EEF    call        gdi32.SetWinMetaFileBits
 004C8EF4    mov         edi,eax
 004C8EF6    mov         dword ptr [ebx+8],edi
 004C8EF9    test        edi,edi
>004C8EFB    jne         004C8F02
 004C8EFD    call        InvalidMetafile
 004C8F02    lea         eax,[ebp-0A0]
 004C8F08    push        eax
 004C8F09    push        6C
 004C8F0B    mov         eax,dword ptr [ebx+8]
 004C8F0E    push        eax
 004C8F0F    call        gdi32.GetEnhMetaFileHeader
 004C8F14    mov         dword ptr [ebp-34],8
 004C8F1B    mov         eax,dword ptr [ebp-80]
 004C8F1E    mov         dword ptr [ebp-30],eax
 004C8F21    mov         eax,dword ptr [ebp-7C]
 004C8F24    mov         dword ptr [ebp-2C],eax
 004C8F27    xor         eax,eax
 004C8F29    mov         dword ptr [ebp-28],eax
 004C8F2C    mov         eax,dword ptr [ebx+8]
 004C8F2F    push        eax
 004C8F30    call        gdi32.DeleteEnhMetaFile
 004C8F35    lea         eax,[ebp-34]
 004C8F38    push        eax
 004C8F39    push        0
 004C8F3B    mov         eax,dword ptr [ebp-0C]
 004C8F3E    push        eax
 004C8F3F    mov         eax,dword ptr [ebp-8]
 004C8F42    push        eax
 004C8F43    call        gdi32.SetWinMetaFileBits
 004C8F48    mov         edi,eax
 004C8F4A    mov         dword ptr [ebx+8],edi
 004C8F4D    test        edi,edi
>004C8F4F    jne         004C8F56
 004C8F51    call        InvalidMetafile
 004C8F56    mov         byte ptr [esi+2C],0
 004C8F5A    xor         eax,eax
 004C8F5C    pop         edx
 004C8F5D    pop         ecx
 004C8F5E    pop         ecx
 004C8F5F    mov         dword ptr fs:[eax],edx
 004C8F62    push        4C8F7A
 004C8F67    mov         edx,dword ptr [ebp-8]
 004C8F6A    mov         eax,dword ptr [ebp-0C]
 004C8F6D    call        @FreeMem
 004C8F72    ret
>004C8F73    jmp         @HandleFinally
>004C8F78    jmp         004C8F67
 004C8F7A    pop         edi
 004C8F7B    pop         esi
 004C8F7C    pop         ebx
 004C8F7D    mov         esp,ebp
 004C8F7F    pop         ebp
 004C8F80    ret
*}
end;

//004C8F84
procedure TMetafile.SaveToFile(Filename:string);
begin
{*
 004C8F84    push        ebp
 004C8F85    mov         ebp,esp
 004C8F87    add         esp,0FFFFFFF0
 004C8F8A    push        ebx
 004C8F8B    xor         ecx,ecx
 004C8F8D    mov         dword ptr [ebp-0C],ecx
 004C8F90    mov         dword ptr [ebp-10],ecx
 004C8F93    mov         ebx,edx
 004C8F95    mov         dword ptr [ebp-4],eax
 004C8F98    xor         eax,eax
 004C8F9A    push        ebp
 004C8F9B    push        4C902D
 004C8FA0    push        dword ptr fs:[eax]
 004C8FA3    mov         dword ptr fs:[eax],esp
 004C8FA6    mov         eax,dword ptr [ebp-4]
 004C8FA9    movzx       eax,byte ptr [eax+2C]
 004C8FAD    mov         byte ptr [ebp-5],al
 004C8FB0    xor         eax,eax
 004C8FB2    push        ebp
 004C8FB3    push        4C900B
 004C8FB8    push        dword ptr fs:[eax]
 004C8FBB    mov         dword ptr fs:[eax],esp
 004C8FBE    lea         edx,[ebp-10]
 004C8FC1    mov         eax,ebx
 004C8FC3    call        ExtractFileExt
 004C8FC8    mov         eax,dword ptr [ebp-10]
 004C8FCB    lea         edx,[ebp-0C]
 004C8FCE    call        AnsiLowerCaseFileName
 004C8FD3    mov         eax,dword ptr [ebp-0C]
 004C8FD6    mov         edx,4C9048;'.wmf'
 004C8FDB    call        @UStrEqual
>004C8FE0    jne         004C8FE9
 004C8FE2    mov         eax,dword ptr [ebp-4]
 004C8FE5    mov         byte ptr [eax+2C],0
 004C8FE9    mov         edx,ebx
 004C8FEB    mov         eax,dword ptr [ebp-4]
 004C8FEE    call        TGraphic.SaveToFile
 004C8FF3    xor         eax,eax
 004C8FF5    pop         edx
 004C8FF6    pop         ecx
 004C8FF7    pop         ecx
 004C8FF8    mov         dword ptr fs:[eax],edx
 004C8FFB    push        4C9012
 004C9000    mov         eax,dword ptr [ebp-4]
 004C9003    movzx       edx,byte ptr [ebp-5]
 004C9007    mov         byte ptr [eax+2C],dl
 004C900A    ret
>004C900B    jmp         @HandleFinally
>004C9010    jmp         004C9000
 004C9012    xor         eax,eax
 004C9014    pop         edx
 004C9015    pop         ecx
 004C9016    pop         ecx
 004C9017    mov         dword ptr fs:[eax],edx
 004C901A    push        4C9034
 004C901F    lea         eax,[ebp-10]
 004C9022    mov         edx,2
 004C9027    call        @UStrArrayClr
 004C902C    ret
>004C902D    jmp         @HandleFinally
>004C9032    jmp         004C901F
 004C9034    pop         ebx
 004C9035    mov         esp,ebp
 004C9037    pop         ebp
 004C9038    ret
*}
end;

//004C9054
procedure TMetafile.SaveToStream(Stream:TStream);
begin
{*
 004C9054    cmp         dword ptr [eax+28],0
>004C9058    je          004C906C
 004C905A    cmp         byte ptr [eax+2C],0
>004C905E    je          004C9067
 004C9060    call        TMetafile.WriteEMFStream
>004C9065    jmp         004C906C
 004C9067    call        TMetafile.WriteWMFStream
 004C906C    ret
*}
end;

//004C9070
procedure TMetafile.SetHandle(Value:Windows.THandle);
begin
{*
 004C9070    push        ebx
 004C9071    push        esi
 004C9072    add         esp,0FFFFFF94
 004C9075    mov         esi,edx
 004C9077    mov         ebx,eax
 004C9079    test        esi,esi
>004C907B    je          004C908F
 004C907D    push        esp
 004C907E    push        6C
 004C9080    push        esi
 004C9081    call        gdi32.GetEnhMetaFileHeader
 004C9086    test        eax,eax
>004C9088    jne         004C908F
 004C908A    call        InvalidMetafile
 004C908F    mov         eax,ebx
 004C9091    call        TMetafile.UniqueImage
 004C9096    mov         eax,dword ptr [ebx+28]
 004C9099    mov         eax,dword ptr [eax+8]
 004C909C    test        eax,eax
>004C909E    je          004C90A6
 004C90A0    push        eax
 004C90A1    call        gdi32.DeleteEnhMetaFile
 004C90A6    mov         eax,dword ptr [ebx+28]
 004C90A9    mov         eax,dword ptr [eax+14]
 004C90AC    call        InternalDeletePalette
 004C90B1    mov         eax,dword ptr [ebx+28]
 004C90B4    xor         edx,edx
 004C90B6    mov         dword ptr [eax+14],edx
 004C90B9    mov         dword ptr [eax+8],esi
 004C90BC    xor         edx,edx
 004C90BE    mov         dword ptr [eax+1C],edx
 004C90C1    xor         edx,edx
 004C90C3    mov         dword ptr [eax+20],edx
 004C90C6    test        esi,esi
>004C90C8    je          004C90E0
 004C90CA    mov         edx,dword ptr [esp+20]
 004C90CE    sub         edx,dword ptr [esp+18]
 004C90D2    mov         dword ptr [eax+0C],edx
 004C90D5    mov         edx,dword ptr [esp+24]
 004C90D9    sub         edx,dword ptr [esp+1C]
 004C90DD    mov         dword ptr [eax+10],edx
 004C90E0    mov         eax,ebx
 004C90E2    mov         edx,dword ptr [eax]
 004C90E4    call        dword ptr [edx+28]
 004C90E7    test        eax,eax
 004C90E9    setne       al
 004C90EC    mov         byte ptr [ebx+22],al
 004C90EF    mov         edx,ebx
 004C90F1    mov         eax,ebx
 004C90F3    mov         ecx,dword ptr [eax]
 004C90F5    call        dword ptr [ecx+10]
 004C90F8    add         esp,6C
 004C90FB    pop         esi
 004C90FC    pop         ebx
 004C90FD    ret
*}
end;

//004C9100
procedure TMetafile.SetHeight(Value:Integer);
begin
{*
 004C9100    push        ebx
 004C9101    push        esi
 004C9102    add         esp,0FFFFFF94
 004C9105    mov         esi,edx
 004C9107    mov         ebx,eax
 004C9109    cmp         dword ptr [ebx+28],0
>004C910D    jne         004C9116
 004C910F    mov         eax,ebx
 004C9111    call        TMetafile.NewImage
 004C9116    mov         eax,dword ptr [ebx+28]
 004C9119    cmp         word ptr [eax+18],0
>004C911E    jne         004C9151
 004C9120    mov         edx,dword ptr [eax+8]
 004C9123    test        edx,edx
>004C9125    jne         004C912C
 004C9127    mov         dword ptr [eax+20],esi
>004C912A    jmp         004C916B
 004C912C    push        esp
 004C912D    push        6C
 004C912F    push        edx
 004C9130    call        gdi32.GetEnhMetaFileHeader
 004C9135    mov         eax,dword ptr [esp+4C]
 004C9139    push        eax
 004C913A    imul        eax,dword ptr [esp+58],64
 004C913F    push        eax
 004C9140    push        esi
 004C9141    call        kernel32.MulDiv
 004C9146    mov         edx,eax
 004C9148    mov         eax,ebx
 004C914A    call        TMetafile.SetMMHeight
>004C914F    jmp         004C916B
 004C9151    mov         eax,[007CA454]
 004C9156    push        eax
 004C9157    push        9EC
 004C915C    push        esi
 004C915D    call        kernel32.MulDiv
 004C9162    mov         edx,eax
 004C9164    mov         eax,ebx
 004C9166    call        TMetafile.SetMMHeight
 004C916B    add         esp,6C
 004C916E    pop         esi
 004C916F    pop         ebx
 004C9170    ret
*}
end;

//004C9174
procedure TMetafile.SetInch(Value:Word);
begin
{*
 004C9174    push        ebx
 004C9175    push        esi
 004C9176    mov         esi,edx
 004C9178    mov         ebx,eax
 004C917A    cmp         dword ptr [ebx+28],0
>004C917E    jne         004C9187
 004C9180    mov         eax,ebx
 004C9182    call        TMetafile.NewImage
 004C9187    mov         eax,dword ptr [ebx+28]
 004C918A    cmp         si,word ptr [eax+18]
>004C918E    je          004C91A7
 004C9190    mov         eax,ebx
 004C9192    call        TMetafile.UniqueImage
 004C9197    mov         eax,dword ptr [ebx+28]
 004C919A    mov         word ptr [eax+18],si
 004C919E    mov         edx,ebx
 004C91A0    mov         eax,ebx
 004C91A2    mov         ecx,dword ptr [eax]
 004C91A4    call        dword ptr [ecx+10]
 004C91A7    pop         esi
 004C91A8    pop         ebx
 004C91A9    ret
*}
end;

//004C91AC
procedure TMetafile.SetMMHeight(Value:Integer);
begin
{*
 004C91AC    push        ebx
 004C91AD    push        esi
 004C91AE    mov         esi,edx
 004C91B0    mov         ebx,eax
 004C91B2    cmp         dword ptr [ebx+28],0
>004C91B6    jne         004C91BF
 004C91B8    mov         eax,ebx
 004C91BA    call        TMetafile.NewImage
 004C91BF    mov         eax,dword ptr [ebx+28]
 004C91C2    xor         edx,edx
 004C91C4    mov         dword ptr [eax+20],edx
 004C91C7    cmp         esi,dword ptr [eax+10]
>004C91CA    je          004C91E2
 004C91CC    mov         eax,ebx
 004C91CE    call        TMetafile.UniqueImage
 004C91D3    mov         eax,dword ptr [ebx+28]
 004C91D6    mov         dword ptr [eax+10],esi
 004C91D9    mov         edx,ebx
 004C91DB    mov         eax,ebx
 004C91DD    mov         ecx,dword ptr [eax]
 004C91DF    call        dword ptr [ecx+10]
 004C91E2    pop         esi
 004C91E3    pop         ebx
 004C91E4    ret
*}
end;

//004C91E8
procedure TMetafile.SetMMWidth(Value:Integer);
begin
{*
 004C91E8    push        ebx
 004C91E9    push        esi
 004C91EA    mov         esi,edx
 004C91EC    mov         ebx,eax
 004C91EE    cmp         dword ptr [ebx+28],0
>004C91F2    jne         004C91FB
 004C91F4    mov         eax,ebx
 004C91F6    call        TMetafile.NewImage
 004C91FB    mov         eax,dword ptr [ebx+28]
 004C91FE    xor         edx,edx
 004C9200    mov         dword ptr [eax+1C],edx
 004C9203    cmp         esi,dword ptr [eax+0C]
>004C9206    je          004C921E
 004C9208    mov         eax,ebx
 004C920A    call        TMetafile.UniqueImage
 004C920F    mov         eax,dword ptr [ebx+28]
 004C9212    mov         dword ptr [eax+0C],esi
 004C9215    mov         edx,ebx
 004C9217    mov         eax,ebx
 004C9219    mov         ecx,dword ptr [eax]
 004C921B    call        dword ptr [ecx+10]
 004C921E    pop         esi
 004C921F    pop         ebx
 004C9220    ret
*}
end;

//004C9224
procedure TMetafile.SetTransparent(Value:Boolean);
begin
{*
 004C9224    ret
*}
end;

//004C9228
procedure TMetafile.SetWidth(Value:Integer);
begin
{*
 004C9228    push        ebx
 004C9229    push        esi
 004C922A    add         esp,0FFFFFF94
 004C922D    mov         esi,edx
 004C922F    mov         ebx,eax
 004C9231    cmp         dword ptr [ebx+28],0
>004C9235    jne         004C923E
 004C9237    mov         eax,ebx
 004C9239    call        TMetafile.NewImage
 004C923E    mov         eax,dword ptr [ebx+28]
 004C9241    cmp         word ptr [eax+18],0
>004C9246    jne         004C9279
 004C9248    mov         edx,dword ptr [eax+8]
 004C924B    test        edx,edx
>004C924D    jne         004C9254
 004C924F    mov         dword ptr [eax+1C],esi
>004C9252    jmp         004C9293
 004C9254    push        esp
 004C9255    push        6C
 004C9257    push        edx
 004C9258    call        gdi32.GetEnhMetaFileHeader
 004C925D    mov         eax,dword ptr [esp+48]
 004C9261    push        eax
 004C9262    imul        eax,dword ptr [esp+54],64
 004C9267    push        eax
 004C9268    push        esi
 004C9269    call        kernel32.MulDiv
 004C926E    mov         edx,eax
 004C9270    mov         eax,ebx
 004C9272    call        TMetafile.SetMMWidth
>004C9277    jmp         004C9293
 004C9279    mov         eax,[007CA454]
 004C927E    push        eax
 004C927F    push        9EC
 004C9284    push        esi
 004C9285    call        kernel32.MulDiv
 004C928A    mov         edx,eax
 004C928C    mov         eax,ebx
 004C928E    call        TMetafile.SetMMWidth
 004C9293    add         esp,6C
 004C9296    pop         esi
 004C9297    pop         ebx
 004C9298    ret
*}
end;

//004C929C
function TMetafile.TestEMF(Stream:Classes.TStream):Boolean;
begin
{*
 004C929C    push        ebx
 004C929D    push        esi
 004C929E    push        edi
 004C929F    add         esp,0FFFFFF94
 004C92A2    mov         esi,edx
 004C92A4    mov         eax,esi
 004C92A6    mov         edx,dword ptr [eax]
 004C92A8    call        dword ptr [edx]
 004C92AA    mov         edi,eax
 004C92AC    mov         eax,esi
 004C92AE    call        TStream.GetPosition
 004C92B3    sub         edi,eax
 004C92B5    cmp         edi,6C
>004C92B8    jle         004C92D8
 004C92BA    mov         edx,esp
 004C92BC    mov         ecx,6C
 004C92C1    mov         eax,esi
 004C92C3    mov         ebx,dword ptr [eax]
 004C92C5    call        dword ptr [ebx+0C]
 004C92C8    mov         cx,1
 004C92CC    mov         edx,0FFFFFF94
 004C92D1    mov         eax,esi
 004C92D3    mov         ebx,dword ptr [eax]
 004C92D5    call        dword ptr [ebx+1C]
 004C92D8    cmp         edi,6C
>004C92DB    jle         004C92ED
 004C92DD    cmp         dword ptr [esp],1
>004C92E1    jne         004C92ED
 004C92E3    cmp         dword ptr [esp+28],464D4520
>004C92EB    je          004C92F1
 004C92ED    xor         eax,eax
>004C92EF    jmp         004C92F3
 004C92F1    mov         al,1
 004C92F3    add         esp,6C
 004C92F6    pop         edi
 004C92F7    pop         esi
 004C92F8    pop         ebx
 004C92F9    ret
*}
end;

//004C92FC
procedure TMetafile.UniqueImage;
begin
{*
 004C92FC    push        ebx
 004C92FD    push        esi
 004C92FE    push        edi
 004C92FF    mov         ebx,eax
 004C9301    mov         eax,dword ptr [ebx+28]
 004C9304    test        eax,eax
>004C9306    jne         004C9311
 004C9308    mov         eax,ebx
 004C930A    call        TMetafile.NewImage
>004C930F    jmp         004C937B
 004C9311    cmp         dword ptr [eax+4],1
>004C9315    jle         004C937B
 004C9317    mov         dl,1
 004C9319    mov         eax,[004C1348];TMetafileImage
 004C931E    call        TObject.Create
 004C9323    mov         esi,eax
 004C9325    mov         eax,dword ptr [ebx+28]
 004C9328    mov         edi,dword ptr [eax+8]
 004C932B    test        edi,edi
>004C932D    je          004C933A
 004C932F    push        0
 004C9331    push        edi
 004C9332    call        gdi32.CopyEnhMetaFileW
 004C9337    mov         dword ptr [esi+8],eax
 004C933A    mov         eax,dword ptr [ebx+28]
 004C933D    mov         eax,dword ptr [eax+10]
 004C9340    mov         dword ptr [esi+10],eax
 004C9343    mov         eax,dword ptr [ebx+28]
 004C9346    mov         eax,dword ptr [eax+0C]
 004C9349    mov         dword ptr [esi+0C],eax
 004C934C    mov         eax,dword ptr [ebx+28]
 004C934F    movzx       eax,word ptr [eax+18]
 004C9353    mov         word ptr [esi+18],ax
 004C9357    mov         eax,dword ptr [ebx+28]
 004C935A    mov         eax,dword ptr [eax+1C]
 004C935D    mov         dword ptr [esi+1C],eax
 004C9360    mov         eax,dword ptr [ebx+28]
 004C9363    mov         eax,dword ptr [eax+20]
 004C9366    mov         dword ptr [esi+20],eax
 004C9369    mov         eax,dword ptr [ebx+28]
 004C936C    call        TSharedImage.Release
 004C9371    mov         eax,esi
 004C9373    mov         dword ptr [ebx+28],eax
 004C9376    call        TSharedImage.Reference
 004C937B    pop         edi
 004C937C    pop         esi
 004C937D    pop         ebx
 004C937E    ret
*}
end;

//004C9380
{*procedure sub_004C9380(?:?);
begin
 004C9380    push        ebx
 004C9381    push        esi
 004C9382    push        edi
 004C9383    push        ecx
 004C9384    mov         esi,edx
 004C9386    mov         ebx,eax
 004C9388    cmp         dword ptr [ebx+28],0;TMetafile.FImage:TMetafileImage
>004C938C    je          004C93FE
 004C938E    xor         eax,eax
 004C9390    mov         dword ptr [esp],eax
 004C9393    mov         edx,esp
 004C9395    mov         ecx,4
 004C939A    mov         eax,esi
 004C939C    mov         edi,dword ptr [eax]
 004C939E    call        dword ptr [edi+10]
 004C93A1    mov         eax,esi
 004C93A3    call        TStream.GetPosition
 004C93A8    sub         eax,4
 004C93AB    mov         dword ptr [esp],eax
 004C93AE    cmp         byte ptr [ebx+2C],0;TMetafile.FEnhanced:Boolean
>004C93B2    je          004C93BF
 004C93B4    mov         edx,esi
 004C93B6    mov         eax,ebx
 004C93B8    call        TMetafile.WriteEMFStream
>004C93BD    jmp         004C93C8
 004C93BF    mov         edx,esi
 004C93C1    mov         eax,ebx
 004C93C3    call        TMetafile.WriteWMFStream
 004C93C8    mov         eax,dword ptr [esp]
 004C93CB    cdq
 004C93CC    push        edx
 004C93CD    push        eax
 004C93CE    xor         edx,edx
 004C93D0    mov         eax,esi
 004C93D2    mov         ecx,dword ptr [eax]
 004C93D4    call        dword ptr [ecx+20]
 004C93D7    mov         eax,esi
 004C93D9    mov         edx,dword ptr [eax]
 004C93DB    call        dword ptr [edx]
 004C93DD    sub         eax,dword ptr [esp]
 004C93E0    mov         dword ptr [esp],eax
 004C93E3    mov         edx,esp
 004C93E5    mov         ecx,4
 004C93EA    mov         eax,esi
 004C93EC    mov         ebx,dword ptr [eax]
 004C93EE    call        dword ptr [ebx+10]
 004C93F1    push        0
 004C93F3    push        0
 004C93F5    mov         dl,2
 004C93F7    mov         eax,esi
 004C93F9    mov         ecx,dword ptr [eax]
 004C93FB    call        dword ptr [ecx+20]
 004C93FE    pop         edx
 004C93FF    pop         edi
 004C9400    pop         esi
 004C9401    pop         ebx
 004C9402    ret
end;*}

//004C9404
procedure TMetafile.WriteEMFStream(Stream:Classes.TStream);
begin
{*
 004C9404    push        ebp
 004C9405    mov         ebp,esp
 004C9407    add         esp,0FFFFFFF8
 004C940A    push        ebx
 004C940B    push        esi
 004C940C    mov         esi,edx
 004C940E    mov         ebx,eax
 004C9410    mov         eax,dword ptr [ebx+28]
 004C9413    test        eax,eax
>004C9415    je          004C9487
 004C9417    push        0
 004C9419    push        0
 004C941B    mov         eax,dword ptr [eax+8]
 004C941E    push        eax
 004C941F    call        gdi32.GetEnhMetaFileBits
 004C9424    mov         dword ptr [ebp-8],eax
 004C9427    cmp         dword ptr [ebp-8],0
>004C942B    je          004C9487
 004C942D    mov         eax,dword ptr [ebp-8]
 004C9430    call        @GetMem
 004C9435    mov         dword ptr [ebp-4],eax
 004C9438    xor         eax,eax
 004C943A    push        ebp
 004C943B    push        4C9480
 004C9440    push        dword ptr fs:[eax]
 004C9443    mov         dword ptr fs:[eax],esp
 004C9446    mov         eax,dword ptr [ebp-4]
 004C9449    push        eax
 004C944A    mov         eax,dword ptr [ebp-8]
 004C944D    push        eax
 004C944E    mov         eax,dword ptr [ebx+28]
 004C9451    mov         eax,dword ptr [eax+8]
 004C9454    push        eax
 004C9455    call        gdi32.GetEnhMetaFileBits
 004C945A    mov         edx,dword ptr [ebp-4]
 004C945D    mov         ecx,dword ptr [ebp-8]
 004C9460    mov         eax,esi
 004C9462    call        TStream.WriteBuffer
 004C9467    xor         eax,eax
 004C9469    pop         edx
 004C946A    pop         ecx
 004C946B    pop         ecx
 004C946C    mov         dword ptr fs:[eax],edx
 004C946F    push        4C9487
 004C9474    mov         edx,dword ptr [ebp-8]
 004C9477    mov         eax,dword ptr [ebp-4]
 004C947A    call        @FreeMem
 004C947F    ret
>004C9480    jmp         @HandleFinally
>004C9485    jmp         004C9474
 004C9487    pop         esi
 004C9488    pop         ebx
 004C9489    pop         ecx
 004C948A    pop         ecx
 004C948B    pop         ebp
 004C948C    ret
*}
end;

//004C9490
procedure TMetafile.WriteWMFStream(Stream:Classes.TStream);
begin
{*
 004C9490    push        ebp
 004C9491    mov         ebp,esp
 004C9493    add         esp,0FFFFFFDC
 004C9496    push        ebx
 004C9497    push        esi
 004C9498    mov         esi,edx
 004C949A    mov         ebx,eax
 004C949C    cmp         dword ptr [ebx+28],0
>004C94A0    je          004C95D2
 004C94A6    lea         eax,[ebp-22]
 004C94A9    xor         ecx,ecx
 004C94AB    mov         edx,16
 004C94B0    call        @FillChar
 004C94B5    mov         ebx,dword ptr [ebx+28]
 004C94B8    mov         dword ptr [ebp-22],9AC6CDD7
 004C94BF    movzx       eax,word ptr [ebx+18]
 004C94C3    test        ax,ax
>004C94C6    jne         004C94D0
 004C94C8    mov         word ptr [ebp-14],60
>004C94CE    jmp         004C94D4
 004C94D0    mov         word ptr [ebp-14],ax
 004C94D4    push        9EC
 004C94D9    movzx       eax,word ptr [ebp-14]
 004C94DD    push        eax
 004C94DE    mov         eax,dword ptr [ebx+0C]
 004C94E1    push        eax
 004C94E2    call        kernel32.MulDiv
 004C94E7    mov         word ptr [ebp-18],ax
 004C94EB    push        9EC
 004C94F0    movzx       eax,word ptr [ebp-14]
 004C94F4    push        eax
 004C94F5    mov         eax,dword ptr [ebx+10]
 004C94F8    push        eax
 004C94F9    call        kernel32.MulDiv
 004C94FE    mov         word ptr [ebp-16],ax
 004C9502    lea         eax,[ebp-22]
 004C9505    call        ComputeAldusChecksum
 004C950A    mov         word ptr [ebp-0E],ax
 004C950E    push        0
 004C9510    call        user32.GetDC
 004C9515    mov         dword ptr [ebp-8],eax
 004C9518    xor         eax,eax
 004C951A    push        ebp
 004C951B    push        4C95CB
 004C9520    push        dword ptr fs:[eax]
 004C9523    mov         dword ptr fs:[eax],esp
 004C9526    mov         eax,dword ptr [ebp-8]
 004C9529    push        eax
 004C952A    push        8
 004C952C    push        0
 004C952E    push        0
 004C9530    mov         eax,dword ptr [ebx+8]
 004C9533    push        eax
 004C9534    call        gdi32.GetWinMetaFileBits
 004C9539    mov         dword ptr [ebp-4],eax
 004C953C    mov         eax,dword ptr [ebp-4]
 004C953F    call        @GetMem
 004C9544    mov         dword ptr [ebp-0C],eax
 004C9547    xor         eax,eax
 004C9549    push        ebp
 004C954A    push        4C95AB
 004C954F    push        dword ptr fs:[eax]
 004C9552    mov         dword ptr fs:[eax],esp
 004C9555    mov         eax,dword ptr [ebp-8]
 004C9558    push        eax
 004C9559    push        8
 004C955B    mov         eax,dword ptr [ebp-0C]
 004C955E    push        eax
 004C955F    mov         eax,dword ptr [ebp-4]
 004C9562    push        eax
 004C9563    mov         eax,dword ptr [ebx+8]
 004C9566    push        eax
 004C9567    call        gdi32.GetWinMetaFileBits
 004C956C    cmp         eax,dword ptr [ebp-4]
>004C956F    jae         004C9576
 004C9571    call        GDIError
 004C9576    lea         edx,[ebp-22]
 004C9579    mov         ecx,16
 004C957E    mov         eax,esi
 004C9580    call        TStream.WriteBuffer
 004C9585    mov         edx,dword ptr [ebp-0C]
 004C9588    mov         ecx,dword ptr [ebp-4]
 004C958B    mov         eax,esi
 004C958D    call        TStream.WriteBuffer
 004C9592    xor         eax,eax
 004C9594    pop         edx
 004C9595    pop         ecx
 004C9596    pop         ecx
 004C9597    mov         dword ptr fs:[eax],edx
 004C959A    push        4C95B2
 004C959F    mov         edx,dword ptr [ebp-4]
 004C95A2    mov         eax,dword ptr [ebp-0C]
 004C95A5    call        @FreeMem
 004C95AA    ret
>004C95AB    jmp         @HandleFinally
>004C95B0    jmp         004C959F
 004C95B2    xor         eax,eax
 004C95B4    pop         edx
 004C95B5    pop         ecx
 004C95B6    pop         ecx
 004C95B7    mov         dword ptr fs:[eax],edx
 004C95BA    push        4C95D2
 004C95BF    mov         eax,dword ptr [ebp-8]
 004C95C2    push        eax
 004C95C3    push        0
 004C95C5    call        user32.ReleaseDC
 004C95CA    ret
>004C95CB    jmp         @HandleFinally
>004C95D0    jmp         004C95BF
 004C95D2    pop         esi
 004C95D3    pop         ebx
 004C95D4    mov         esp,ebp
 004C95D6    pop         ebp
 004C95D7    ret
*}
end;

//004C95D8
procedure TMetafile.LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);
begin
{*
 004C95D8    push        ebp
 004C95D9    mov         ebp,esp
 004C95DB    add         esp,0FFFFFF94
 004C95DE    push        ebx
 004C95DF    push        esi
 004C95E0    push        edi
 004C95E1    mov         ebx,eax
 004C95E3    push        0E
 004C95E5    call        user32.GetClipboardData
 004C95EA    mov         edi,eax
 004C95EC    test        edi,edi
>004C95EE    jne         004C95FA
 004C95F0    mov         eax,[007C4A54];^SResString218:TResStringRec
 004C95F5    call        InvalidOperation
 004C95FA    mov         eax,ebx
 004C95FC    call        TMetafile.NewImage
 004C9601    mov         esi,dword ptr [ebx+28];TMetafile.FImage:TMetafileImage
 004C9604    push        0
 004C9606    push        edi
 004C9607    call        gdi32.CopyEnhMetaFileW
 004C960C    mov         dword ptr [esi+8],eax;TMetafileImage.FHandle:NativeUInt
 004C960F    lea         eax,[ebp-6C]
 004C9612    push        eax
 004C9613    push        6C
 004C9615    mov         eax,dword ptr [esi+8];TMetafileImage.FHandle:NativeUInt
 004C9618    push        eax
 004C9619    call        gdi32.GetEnhMetaFileHeader
 004C961E    mov         eax,dword ptr [ebp-4C]
 004C9621    sub         eax,dword ptr [ebp-54]
 004C9624    mov         dword ptr [esi+0C],eax;TMetafileImage.FWidth:Integer
 004C9627    mov         eax,dword ptr [ebp-48]
 004C962A    sub         eax,dword ptr [ebp-50]
 004C962D    mov         dword ptr [esi+10],eax;TMetafileImage.FHeight:Integer
 004C9630    mov         word ptr [esi+18],0;TMetafileImage.FInch:Word
 004C9636    mov         byte ptr [ebx+2C],1;TMetafile.FEnhanced:Boolean
 004C963A    mov         eax,ebx
 004C963C    mov         edx,dword ptr [eax]
 004C963E    call        dword ptr [edx+28];TMetafile.GetPalette
 004C9641    test        eax,eax
 004C9643    setne       al
 004C9646    mov         byte ptr [ebx+22],al;TMetafile.FPaletteModified:Boolean
 004C9649    mov         edx,ebx
 004C964B    mov         eax,ebx
 004C964D    mov         ecx,dword ptr [eax]
 004C964F    call        dword ptr [ecx+10];TGraphic.Changed
 004C9652    pop         edi
 004C9653    pop         esi
 004C9654    pop         ebx
 004C9655    mov         esp,ebp
 004C9657    pop         ebp
 004C9658    ret         4
*}
end;

//004C965C
procedure TMetafile.SaveToClipboardFormat(var AFormat:Word; var AData:NativeUInt; var APalette:HPALETTE);
begin
{*
 004C965C    push        ebp
 004C965D    mov         ebp,esp
 004C965F    push        ebx
 004C9660    push        esi
 004C9661    push        edi
 004C9662    mov         edi,ecx
 004C9664    mov         ebx,eax
 004C9666    mov         esi,dword ptr [ebx+28]
 004C9669    test        esi,esi
>004C966B    je          004C9686
 004C966D    mov         word ptr [edx],0E
 004C9672    mov         eax,dword ptr [ebp+8]
 004C9675    xor         edx,edx
 004C9677    mov         dword ptr [eax],edx
 004C9679    push        0
 004C967B    mov         eax,dword ptr [esi+8]
 004C967E    push        eax
 004C967F    call        gdi32.CopyEnhMetaFileW
 004C9684    mov         dword ptr [edi],eax
 004C9686    pop         edi
 004C9687    pop         esi
 004C9688    pop         ebx
 004C9689    pop         ebp
 004C968A    ret         4
*}
end;

//004C9690
procedure TMetafile.SetSize(AWidth:Integer; AHeight:Integer);
begin
{*
 004C9690    push        ebx
 004C9691    push        esi
 004C9692    push        edi
 004C9693    add         esp,0FFFFFF94
 004C9696    mov         edi,ecx
 004C9698    mov         esi,edx
 004C969A    mov         ebx,eax
 004C969C    cmp         dword ptr [ebx+28],0
>004C96A0    jne         004C96A9
 004C96A2    mov         eax,ebx
 004C96A4    call        TMetafile.NewImage
 004C96A9    mov         eax,dword ptr [ebx+28]
 004C96AC    cmp         word ptr [eax+18],0
>004C96B1    jne         004C9701
 004C96B3    mov         edx,dword ptr [eax+8]
 004C96B6    test        edx,edx
>004C96B8    jne         004C96C2
 004C96BA    mov         dword ptr [eax+1C],esi
 004C96BD    mov         dword ptr [eax+20],edi
>004C96C0    jmp         004C9735
 004C96C2    push        esp
 004C96C3    push        6C
 004C96C5    push        edx
 004C96C6    call        gdi32.GetEnhMetaFileHeader
 004C96CB    mov         eax,dword ptr [esp+48]
 004C96CF    push        eax
 004C96D0    imul        eax,dword ptr [esp+54],64
 004C96D5    push        eax
 004C96D6    push        esi
 004C96D7    call        kernel32.MulDiv
 004C96DC    mov         edx,eax
 004C96DE    mov         eax,ebx
 004C96E0    call        TMetafile.SetMMWidth
 004C96E5    mov         eax,dword ptr [esp+4C]
 004C96E9    push        eax
 004C96EA    imul        eax,dword ptr [esp+58],64
 004C96EF    push        eax
 004C96F0    push        edi
 004C96F1    call        kernel32.MulDiv
 004C96F6    mov         edx,eax
 004C96F8    mov         eax,ebx
 004C96FA    call        TMetafile.SetMMHeight
>004C96FF    jmp         004C9735
 004C9701    mov         eax,[007CA454]
 004C9706    push        eax
 004C9707    push        9EC
 004C970C    push        esi
 004C970D    call        kernel32.MulDiv
 004C9712    mov         edx,eax
 004C9714    mov         eax,ebx
 004C9716    call        TMetafile.SetMMWidth
 004C971B    mov         eax,[007CA454]
 004C9720    push        eax
 004C9721    push        9EC
 004C9726    push        edi
 004C9727    call        kernel32.MulDiv
 004C972C    mov         edx,eax
 004C972E    mov         eax,ebx
 004C9730    call        TMetafile.SetMMHeight
 004C9735    add         esp,6C
 004C9738    pop         edi
 004C9739    pop         esi
 004C973A    pop         ebx
 004C973B    ret
*}
end;

//004C9934
procedure sub_004C9934;
begin
{*
 004C9934    push        ebp
 004C9935    mov         ebp,esp
 004C9937    add         esp,0FFFFFFF4
 004C993A    mov         eax,[007A1040];0x0 gvar_007A1040
 004C993F    call        TThreadList.LockList
 004C9944    mov         dword ptr [ebp-8],eax
 004C9947    xor         eax,eax
 004C9949    push        ebp
 004C994A    push        4C99D5
 004C994F    push        dword ptr fs:[eax]
 004C9952    mov         dword ptr fs:[eax],esp
 004C9955    mov         eax,dword ptr [ebp-8]
 004C9958    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004C995B    dec         eax
 004C995C    cmp         eax,0
>004C995F    jl          004C99BA
 004C9961    mov         dword ptr [ebp-4],eax
 004C9964    mov         edx,dword ptr [ebp-4]
 004C9967    mov         eax,dword ptr [ebp-8]
 004C996A    call        TList.Get
 004C996F    mov         dword ptr [ebp-0C],eax
 004C9972    mov         eax,dword ptr [ebp-0C]
 004C9975    call        TCustomCanvas.TryLock
 004C997A    test        al,al
>004C997C    je          004C99B1
 004C997E    xor         eax,eax
 004C9980    push        ebp
 004C9981    push        4C99AA
 004C9986    push        dword ptr fs:[eax]
 004C9989    mov         dword ptr fs:[eax],esp
 004C998C    mov         eax,dword ptr [ebp-0C]
 004C998F    call        TBitmapCanvas.FreeContext
 004C9994    xor         eax,eax
 004C9996    pop         edx
 004C9997    pop         ecx
 004C9998    pop         ecx
 004C9999    mov         dword ptr fs:[eax],edx
 004C999C    push        4C99B1
 004C99A1    mov         eax,dword ptr [ebp-0C]
 004C99A4    call        TCustomCanvas.Unlock
 004C99A9    ret
>004C99AA    jmp         @HandleFinally
>004C99AF    jmp         004C99A1
 004C99B1    dec         dword ptr [ebp-4]
 004C99B4    cmp         dword ptr [ebp-4],0FFFFFFFF
>004C99B8    jne         004C9964
 004C99BA    xor         eax,eax
 004C99BC    pop         edx
 004C99BD    pop         ecx
 004C99BE    pop         ecx
 004C99BF    mov         dword ptr fs:[eax],edx
 004C99C2    push        4C99DC
 004C99C7    mov         eax,[007A1040];0x0 gvar_007A1040
 004C99CC    mov         eax,dword ptr [eax+8]
 004C99CF    call        TMonitor.Exit
 004C99D4    ret
>004C99D5    jmp         @HandleFinally
>004C99DA    jmp         004C99C7
 004C99DC    mov         esp,ebp
 004C99DE    pop         ebp
 004C99DF    ret
*}
end;

//004C99E0
procedure DeselectBitmap(AHandle:Windows.HBITMAP);
begin
{*
 004C99E0    push        ebp
 004C99E1    mov         ebp,esp
 004C99E3    push        ecx
 004C99E4    push        ebx
 004C99E5    push        esi
 004C99E6    mov         dword ptr [ebp-4],eax
 004C99E9    cmp         dword ptr [ebp-4],0
>004C99ED    je          004C9A5A
 004C99EF    mov         eax,[007A1040];gvar_007A1040
 004C99F4    call        TThreadList.LockList
 004C99F9    mov         esi,eax
 004C99FB    xor         ecx,ecx
 004C99FD    push        ebp
 004C99FE    push        4C9A53
 004C9A03    push        dword ptr fs:[ecx]
 004C9A06    mov         dword ptr fs:[ecx],esp
 004C9A09    mov         ebx,dword ptr [esi+8]
 004C9A0C    dec         ebx
 004C9A0D    cmp         ebx,0
>004C9A10    jl          004C9A38
 004C9A12    mov         edx,ebx
 004C9A14    mov         eax,esi
 004C9A16    call        TList.Get
 004C9A1B    mov         edx,dword ptr [eax+58]
 004C9A1E    test        edx,edx
>004C9A20    je          004C9A32
 004C9A22    mov         edx,dword ptr [edx+28]
 004C9A25    mov         edx,dword ptr [edx+8]
 004C9A28    cmp         edx,dword ptr [ebp-4]
>004C9A2B    jne         004C9A32
 004C9A2D    call        TBitmapCanvas.FreeContext
 004C9A32    dec         ebx
 004C9A33    cmp         ebx,0FFFFFFFF
>004C9A36    jne         004C9A12
 004C9A38    xor         eax,eax
 004C9A3A    pop         edx
 004C9A3B    pop         ecx
 004C9A3C    pop         ecx
 004C9A3D    mov         dword ptr fs:[eax],edx
 004C9A40    push        4C9A5A
 004C9A45    mov         eax,[007A1040];gvar_007A1040
 004C9A4A    mov         eax,dword ptr [eax+8]
 004C9A4D    call        TMonitor.Exit
 004C9A52    ret
>004C9A53    jmp         @HandleFinally
>004C9A58    jmp         004C9A45
 004C9A5A    pop         esi
 004C9A5B    pop         ebx
 004C9A5C    pop         ecx
 004C9A5D    pop         ebp
 004C9A5E    ret
*}
end;

//004C9A60
constructor TBitmapCanvas.Create;
begin
{*
 004C9A60    push        ebx
 004C9A61    push        esi
 004C9A62    push        edi
 004C9A63    test        dl,dl
>004C9A65    je          004C9A6F
 004C9A67    add         esp,0FFFFFFF0
 004C9A6A    call        @ClassCreate
 004C9A6F    mov         esi,ecx
 004C9A71    mov         ebx,edx
 004C9A73    mov         edi,eax
 004C9A75    xor         edx,edx
 004C9A77    mov         eax,edi
 004C9A79    call        TCanvas.Create
 004C9A7E    mov         dword ptr [edi+58],esi
 004C9A81    mov         eax,edi
 004C9A83    test        bl,bl
>004C9A85    je          004C9A96
 004C9A87    call        @AfterConstruction
 004C9A8C    pop         dword ptr fs:[0]
 004C9A93    add         esp,0C
 004C9A96    mov         eax,edi
 004C9A98    pop         edi
 004C9A99    pop         esi
 004C9A9A    pop         ebx
 004C9A9B    ret
*}
end;

//004C9A9C
destructor TBitmapCanvas.Destroy();
begin
{*
 004C9A9C    push        ebx
 004C9A9D    push        esi
 004C9A9E    call        @BeforeDestruction
 004C9AA3    mov         ebx,edx
 004C9AA5    mov         esi,eax
 004C9AA7    mov         eax,esi
 004C9AA9    call        TBitmapCanvas.FreeContext
 004C9AAE    mov         dl,0FC
 004C9AB0    and         dl,bl
 004C9AB2    mov         eax,esi
 004C9AB4    call        TCanvas.Destroy
 004C9AB9    test        bl,bl
>004C9ABB    jle         004C9AC4
 004C9ABD    mov         eax,esi
 004C9ABF    call        @ClassDestroy
 004C9AC4    pop         esi
 004C9AC5    pop         ebx
 004C9AC6    ret
*}
end;

//004C9AC8
procedure TBitmapCanvas.FreeContext;
begin
{*
 004C9AC8    push        ebp
 004C9AC9    mov         ebp,esp
 004C9ACB    push        ecx
 004C9ACC    push        ebx
 004C9ACD    mov         dword ptr [ebp-4],eax
 004C9AD0    mov         eax,dword ptr [ebp-4]
 004C9AD3    cmp         dword ptr [eax+38],0
>004C9AD7    je          004C9B65
 004C9ADD    mov         eax,dword ptr [ebp-4]
 004C9AE0    call        TCustomCanvas.Lock
 004C9AE5    xor         edx,edx
 004C9AE7    push        ebp
 004C9AE8    push        4C9B5E
 004C9AED    push        dword ptr fs:[edx]
 004C9AF0    mov         dword ptr fs:[edx],esp
 004C9AF3    mov         eax,dword ptr [ebp-4]
 004C9AF6    mov         eax,dword ptr [eax+5C]
 004C9AF9    test        eax,eax
>004C9AFB    je          004C9B0A
 004C9AFD    push        eax
 004C9AFE    mov         eax,dword ptr [ebp-4]
 004C9B01    mov         eax,dword ptr [eax+38]
 004C9B04    push        eax
 004C9B05    call        gdi32.SelectObject
 004C9B0A    mov         eax,dword ptr [ebp-4]
 004C9B0D    mov         eax,dword ptr [eax+60]
 004C9B10    test        eax,eax
>004C9B12    je          004C9B23
 004C9B14    push        0FF
 004C9B16    push        eax
 004C9B17    mov         eax,dword ptr [ebp-4]
 004C9B1A    mov         eax,dword ptr [eax+38]
 004C9B1D    push        eax
 004C9B1E    call        gdi32.SelectPalette
 004C9B23    mov         eax,dword ptr [ebp-4]
 004C9B26    mov         ebx,dword ptr [eax+38]
 004C9B29    xor         edx,edx
 004C9B2B    mov         eax,dword ptr [ebp-4]
 004C9B2E    call        TCanvas.SetHandle
 004C9B33    push        ebx
 004C9B34    call        gdi32.DeleteDC
 004C9B39    mov         cl,1
 004C9B3B    mov         edx,dword ptr [ebp-4]
 004C9B3E    mov         eax,[007A1040];gvar_007A1040
 004C9B43    call        TThreadList.RemoveItem
 004C9B48    xor         eax,eax
 004C9B4A    pop         edx
 004C9B4B    pop         ecx
 004C9B4C    pop         ecx
 004C9B4D    mov         dword ptr fs:[eax],edx
 004C9B50    push        4C9B65
 004C9B55    mov         eax,dword ptr [ebp-4]
 004C9B58    call        TCustomCanvas.Unlock
 004C9B5D    ret
>004C9B5E    jmp         @HandleFinally
>004C9B63    jmp         004C9B55
 004C9B65    pop         ebx
 004C9B66    pop         ecx
 004C9B67    pop         ebp
 004C9B68    ret
*}
end;

//004C9B6C
procedure TBitmapCanvas.CreateHandle;
begin
{*
 004C9B6C    push        ebp
 004C9B6D    mov         ebp,esp
 004C9B6F    push        ecx
 004C9B70    push        ebx
 004C9B71    push        esi
 004C9B72    mov         dword ptr [ebp-4],eax
 004C9B75    mov         eax,dword ptr [ebp-4]
 004C9B78    cmp         dword ptr [eax+58],0
>004C9B7C    je          004C9C52
 004C9B82    mov         eax,dword ptr [ebp-4]
 004C9B85    call        TCustomCanvas.Lock
 004C9B8A    xor         eax,eax
 004C9B8C    push        ebp
 004C9B8D    push        4C9C4B
 004C9B92    push        dword ptr fs:[eax]
 004C9B95    mov         dword ptr fs:[eax],esp
 004C9B98    mov         eax,dword ptr [ebp-4]
 004C9B9B    mov         eax,dword ptr [eax+58]
 004C9B9E    call        TBitmap.HandleNeeded
 004C9BA3    mov         eax,dword ptr [ebp-4]
 004C9BA6    mov         eax,dword ptr [eax+58]
 004C9BA9    mov         eax,dword ptr [eax+28]
 004C9BAC    mov         eax,dword ptr [eax+8]
 004C9BAF    call        DeselectBitmap
 004C9BB4    mov         eax,dword ptr [ebp-4]
 004C9BB7    mov         eax,dword ptr [eax+58]
 004C9BBA    call        TBitmap.PaletteNeeded
 004C9BBF    push        0
 004C9BC1    call        gdi32.CreateCompatibleDC
 004C9BC6    mov         ebx,eax
 004C9BC8    mov         eax,dword ptr [ebp-4]
 004C9BCB    mov         eax,dword ptr [eax+58]
 004C9BCE    mov         eax,dword ptr [eax+28]
 004C9BD1    mov         esi,dword ptr [eax+8]
 004C9BD4    test        esi,esi
>004C9BD6    je          004C9BE7
 004C9BD8    push        esi
 004C9BD9    push        ebx
 004C9BDA    call        gdi32.SelectObject
 004C9BDF    mov         edx,dword ptr [ebp-4]
 004C9BE2    mov         dword ptr [edx+5C],eax
>004C9BE5    jmp         004C9BEF
 004C9BE7    mov         eax,dword ptr [ebp-4]
 004C9BEA    xor         edx,edx
 004C9BEC    mov         dword ptr [eax+5C],edx
 004C9BEF    mov         eax,dword ptr [ebp-4]
 004C9BF2    mov         eax,dword ptr [eax+58]
 004C9BF5    mov         eax,dword ptr [eax+28]
 004C9BF8    mov         esi,dword ptr [eax+10]
 004C9BFB    test        esi,esi
>004C9BFD    je          004C9C16
 004C9BFF    push        0FF
 004C9C01    push        esi
 004C9C02    push        ebx
 004C9C03    call        gdi32.SelectPalette
 004C9C08    mov         edx,dword ptr [ebp-4]
 004C9C0B    mov         dword ptr [edx+60],eax
 004C9C0E    push        ebx
 004C9C0F    call        gdi32.RealizePalette
>004C9C14    jmp         004C9C1E
 004C9C16    mov         eax,dword ptr [ebp-4]
 004C9C19    xor         edx,edx
 004C9C1B    mov         dword ptr [eax+60],edx
 004C9C1E    mov         edx,ebx
 004C9C20    mov         eax,dword ptr [ebp-4]
 004C9C23    call        TCanvas.SetHandle
 004C9C28    mov         edx,dword ptr [ebp-4]
 004C9C2B    mov         eax,[007A1040];gvar_007A1040
 004C9C30    call        TThreadList.Add
 004C9C35    xor         eax,eax
 004C9C37    pop         edx
 004C9C38    pop         ecx
 004C9C39    pop         ecx
 004C9C3A    mov         dword ptr fs:[eax],edx
 004C9C3D    push        4C9C52
 004C9C42    mov         eax,dword ptr [ebp-4]
 004C9C45    call        TCustomCanvas.Unlock
 004C9C4A    ret
>004C9C4B    jmp         @HandleFinally
>004C9C50    jmp         004C9C42
 004C9C52    pop         esi
 004C9C53    pop         ebx
 004C9C54    pop         ecx
 004C9C55    pop         ebp
 004C9C56    ret
*}
end;

//004C9C58
destructor TSharedImage.Destroy();
begin
{*
 004C9C58    push        ebx
 004C9C59    push        esi
 004C9C5A    call        @BeforeDestruction
 004C9C5F    mov         ebx,edx
 004C9C61    mov         esi,eax
 004C9C63    mov         dl,0FC
 004C9C65    and         dl,bl
 004C9C67    mov         eax,esi
 004C9C69    call        TObject.Destroy
 004C9C6E    test        bl,bl
>004C9C70    jle         004C9C79
 004C9C72    mov         eax,esi
 004C9C74    call        @ClassDestroy
 004C9C79    pop         esi
 004C9C7A    pop         ebx
 004C9C7B    ret
*}
end;

//004C9C7C
procedure TSharedImage.Reference;
begin
{*
 004C9C7C    inc         dword ptr [eax+4]
 004C9C7F    ret
*}
end;

//004C9C80
procedure TSharedImage.Release;
begin
{*
 004C9C80    push        ebx
 004C9C81    mov         ebx,eax
 004C9C83    test        ebx,ebx
>004C9C85    je          004C9C9D
 004C9C87    dec         dword ptr [ebx+4]
 004C9C8A    cmp         dword ptr [ebx+4],0
>004C9C8E    jne         004C9C9D
 004C9C90    mov         eax,ebx
 004C9C92    mov         edx,dword ptr [eax]
 004C9C94    call        dword ptr [edx]
 004C9C96    mov         eax,ebx
 004C9C98    call        TObject.Free
 004C9C9D    pop         ebx
 004C9C9E    ret
*}
end;

//004C9CA0
destructor TBitmapImage.Destroy();
begin
{*
 004C9CA0    push        ebx
 004C9CA1    push        esi
 004C9CA2    push        ecx
 004C9CA3    call        @BeforeDestruction
 004C9CA8    mov         ebx,edx
 004C9CAA    mov         esi,eax
 004C9CAC    mov         eax,dword ptr [esi+14]
 004C9CAF    test        eax,eax
>004C9CB1    je          004C9CC6
 004C9CB3    call        DeselectBitmap
 004C9CB8    mov         eax,dword ptr [esi+14]
 004C9CBB    push        eax
 004C9CBC    call        gdi32.DeleteObject
 004C9CC1    xor         eax,eax
 004C9CC3    mov         dword ptr [esi+14],eax
 004C9CC6    mov         eax,esi
 004C9CC8    mov         edx,dword ptr [eax]
 004C9CCA    call        dword ptr [edx]
 004C9CCC    mov         eax,dword ptr [esi+64]
 004C9CCF    test        eax,eax
>004C9CD1    je          004C9CD9
 004C9CD3    push        eax
 004C9CD4    call        kernel32.CloseHandle
 004C9CD9    lea         eax,[esi+6C]
 004C9CDC    mov         dword ptr [esp],eax
 004C9CDF    mov         eax,dword ptr [esp]
 004C9CE2    mov         eax,dword ptr [eax]
 004C9CE4    mov         edx,dword ptr [esp]
 004C9CE7    xor         ecx,ecx
 004C9CE9    mov         dword ptr [edx],ecx
 004C9CEB    call        TObject.Free
 004C9CF0    mov         dl,0FC
 004C9CF2    and         dl,bl
 004C9CF4    mov         eax,esi
 004C9CF6    call        TSharedImage.Destroy
 004C9CFB    test        bl,bl
>004C9CFD    jle         004C9D06
 004C9CFF    mov         eax,esi
 004C9D01    call        @ClassDestroy
 004C9D06    pop         edx
 004C9D07    pop         esi
 004C9D08    pop         ebx
 004C9D09    ret
*}
end;

//004C9D0C
procedure TBitmapImage.FreeHandle;
begin
{*
 004C9D0C    push        ebx
 004C9D0D    mov         ebx,eax
 004C9D0F    mov         eax,dword ptr [ebx+8]
 004C9D12    test        eax,eax
>004C9D14    je          004C9D29
 004C9D16    call        DeselectBitmap
 004C9D1B    mov         eax,dword ptr [ebx+8]
 004C9D1E    cmp         eax,dword ptr [ebx+14]
>004C9D21    je          004C9D29
 004C9D23    push        eax
 004C9D24    call        gdi32.DeleteObject
 004C9D29    mov         eax,dword ptr [ebx+0C]
 004C9D2C    test        eax,eax
>004C9D2E    je          004C9D43
 004C9D30    call        DeselectBitmap
 004C9D35    mov         eax,dword ptr [ebx+0C]
 004C9D38    push        eax
 004C9D39    call        gdi32.DeleteObject
 004C9D3E    xor         eax,eax
 004C9D40    mov         dword ptr [ebx+0C],eax
 004C9D43    mov         eax,dword ptr [ebx+10]
 004C9D46    call        InternalDeletePalette
 004C9D4B    xor         eax,eax
 004C9D4D    mov         dword ptr [ebx+8],eax
 004C9D50    xor         eax,eax
 004C9D52    mov         dword ptr [ebx+10],eax
 004C9D55    pop         ebx
 004C9D56    ret
*}
end;

//004C9D58
procedure UpdateDIBColorTable(DIBHandle:Windows.HBITMAP; Pal:Windows.HPALETTE; const DIB:Windows.TDIBSection);
begin
{*
 004C9D58    push        ebp
 004C9D59    mov         ebp,esp
 004C9D5B    add         esp,0FFFFFBF0
 004C9D61    push        ebx
 004C9D62    push        esi
 004C9D63    mov         dword ptr [ebp-4],edx
 004C9D66    mov         esi,eax
 004C9D68    test        esi,esi
>004C9D6A    je          004C9E0E
 004C9D70    cmp         word ptr [ecx+26],8
>004C9D75    ja          004C9E0E
 004C9D7B    lea         edx,[ebp-410]
 004C9D81    mov         ecx,0FF
 004C9D86    mov         eax,dword ptr [ebp-4]
 004C9D89    call        PaletteToDIBColorTable
 004C9D8E    mov         ebx,eax
 004C9D90    test        ebx,ebx
>004C9D92    je          004C9E0E
 004C9D94    push        0
 004C9D96    call        user32.GetDC
 004C9D9B    mov         dword ptr [ebp-8],eax
 004C9D9E    mov         eax,dword ptr [ebp-8]
 004C9DA1    push        eax
 004C9DA2    call        gdi32.CreateCompatibleDC
 004C9DA7    mov         dword ptr [ebp-0C],eax
 004C9DAA    push        esi
 004C9DAB    mov         eax,dword ptr [ebp-0C]
 004C9DAE    push        eax
 004C9DAF    call        gdi32.SelectObject
 004C9DB4    mov         dword ptr [ebp-10],eax
 004C9DB7    xor         eax,eax
 004C9DB9    push        ebp
 004C9DBA    push        4C9E07
 004C9DBF    push        dword ptr fs:[eax]
 004C9DC2    mov         dword ptr fs:[eax],esp
 004C9DC5    lea         eax,[ebp-410]
 004C9DCB    push        eax
 004C9DCC    push        ebx
 004C9DCD    push        0
 004C9DCF    mov         eax,dword ptr [ebp-0C]
 004C9DD2    push        eax
 004C9DD3    call        gdi32.SetDIBColorTable
 004C9DD8    xor         eax,eax
 004C9DDA    pop         edx
 004C9DDB    pop         ecx
 004C9DDC    pop         ecx
 004C9DDD    mov         dword ptr fs:[eax],edx
 004C9DE0    push        4C9E0E
 004C9DE5    mov         eax,dword ptr [ebp-10]
 004C9DE8    push        eax
 004C9DE9    mov         eax,dword ptr [ebp-0C]
 004C9DEC    push        eax
 004C9DED    call        gdi32.SelectObject
 004C9DF2    mov         eax,dword ptr [ebp-0C]
 004C9DF5    push        eax
 004C9DF6    call        gdi32.DeleteDC
 004C9DFB    mov         eax,dword ptr [ebp-8]
 004C9DFE    push        eax
 004C9DFF    push        0
 004C9E01    call        user32.ReleaseDC
 004C9E06    ret
>004C9E07    jmp         @HandleFinally
>004C9E0C    jmp         004C9DE5
 004C9E0E    pop         esi
 004C9E0F    pop         ebx
 004C9E10    mov         esp,ebp
 004C9E12    pop         ebp
 004C9E13    ret
*}
end;

//004C9E14
procedure FixupBitFields(var DIB:Windows.TDIBSection);
begin
{*
 004C9E14    test        byte ptr [eax+28],3
>004C9E18    je          004C9E5C
 004C9E1A    cmp         dword ptr [eax+40],0
>004C9E1E    jne         004C9E5C
 004C9E20    movzx       edx,word ptr [eax+26]
 004C9E24    cmp         dx,10
>004C9E28    jne         004C9E41
 004C9E2A    mov         dword ptr [eax+40],0F800
 004C9E31    mov         dword ptr [eax+44],7E0
 004C9E38    mov         dword ptr [eax+48],1F
>004C9E3F    jmp         004C9E5C
 004C9E41    cmp         dx,20
>004C9E45    jne         004C9E5C
 004C9E47    mov         dword ptr [eax+40],0FF0000
 004C9E4E    mov         dword ptr [eax+44],0FF00
 004C9E55    mov         dword ptr [eax+48],0FF
 004C9E5C    ret
*}
end;

//004C9E60
function CopyBitmap(Handle:Windows.HBITMAP; OldPalette:Windows.HPALETTE; NewPalette:Windows.HPALETTE; var DIB:Windows.TDIBSection; Canvas:TCanvas):HBITMAP;
begin
{*
 004C9E60    push        ebp
 004C9E61    mov         ebp,esp
 004C9E63    add         esp,0FFFFFF68
 004C9E69    push        ebx
 004C9E6A    push        esi
 004C9E6B    push        edi
 004C9E6C    mov         dword ptr [ebp-0C],ecx
 004C9E6F    mov         dword ptr [ebp-8],edx
 004C9E72    mov         dword ptr [ebp-4],eax
 004C9E75    xor         eax,eax
 004C9E77    mov         dword ptr [ebp-10],eax
 004C9E7A    mov         eax,dword ptr [ebp+0C]
 004C9E7D    cmp         dword ptr [eax+18],0
>004C9E81    je          004C9E9D
 004C9E83    mov         eax,dword ptr [ebp+0C]
 004C9E86    cmp         dword ptr [eax+1C],0
>004C9E8A    je          004CA4B5
 004C9E90    mov         eax,dword ptr [ebp+0C]
 004C9E93    cmp         dword ptr [eax+20],0
>004C9E97    je          004CA4B5
 004C9E9D    mov         eax,dword ptr [ebp+0C]
 004C9EA0    cmp         dword ptr [eax+18],0
>004C9EA4    jne         004C9EC0
 004C9EA6    mov         eax,dword ptr [ebp+0C]
 004C9EA9    cmp         dword ptr [eax+4],0
>004C9EAD    je          004CA4B5
 004C9EB3    mov         eax,dword ptr [ebp+0C]
 004C9EB6    cmp         dword ptr [eax+8],0
>004C9EBA    je          004CA4B5
 004C9EC0    mov         eax,dword ptr [ebp-4]
 004C9EC3    call        DeselectBitmap
 004C9EC8    xor         eax,eax
 004C9ECA    mov         dword ptr [ebp-70],eax
 004C9ECD    cmp         dword ptr [ebp-4],0
>004C9ED1    je          004C9EEF
 004C9ED3    lea         eax,[ebp-88]
 004C9ED9    push        eax
 004C9EDA    push        54
 004C9EDC    mov         eax,dword ptr [ebp-4]
 004C9EDF    push        eax
 004C9EE0    call        gdi32.GetObjectW
 004C9EE5    cmp         eax,18
>004C9EE8    jge         004C9EEF
 004C9EEA    call        TWICImage.SetHeight
 004C9EEF    push        0
 004C9EF1    call        user32.GetDC
 004C9EF6    call        GDICheck
 004C9EFB    mov         dword ptr [ebp-18],eax
 004C9EFE    mov         eax,dword ptr [ebp-18]
 004C9F01    push        eax
 004C9F02    call        gdi32.CreateCompatibleDC
 004C9F07    call        GDICheck
 004C9F0C    mov         dword ptr [ebp-1C],eax
 004C9F0F    xor         edx,edx
 004C9F11    push        ebp
 004C9F12    push        4CA4AE
 004C9F17    push        dword ptr fs:[edx]
 004C9F1A    mov         dword ptr fs:[edx],esp
 004C9F1D    mov         eax,dword ptr [ebp+0C]
 004C9F20    cmp         dword ptr [eax+18],28
>004C9F24    jae         004C9F84
 004C9F26    mov         eax,dword ptr [ebp+0C]
 004C9F29    movzx       eax,word ptr [eax+10]
 004C9F2D    mov         edx,dword ptr [ebp+0C]
 004C9F30    or          ax,word ptr [edx+12]
 004C9F34    cmp         ax,1
>004C9F38    jne         004C9F60
 004C9F3A    push        0
 004C9F3C    push        1
 004C9F3E    push        1
 004C9F40    mov         eax,dword ptr [ebp+0C]
 004C9F43    mov         eax,dword ptr [eax+8]
 004C9F46    push        eax
 004C9F47    mov         eax,dword ptr [ebp+0C]
 004C9F4A    mov         eax,dword ptr [eax+4]
 004C9F4D    push        eax
 004C9F4E    call        gdi32.CreateBitmap
 004C9F53    call        GDICheck
 004C9F58    mov         dword ptr [ebp-10],eax
>004C9F5B    jmp         004CA1BC
 004C9F60    mov         eax,dword ptr [ebp+0C]
 004C9F63    mov         eax,dword ptr [eax+8]
 004C9F66    push        eax
 004C9F67    mov         eax,dword ptr [ebp+0C]
 004C9F6A    mov         eax,dword ptr [eax+4]
 004C9F6D    push        eax
 004C9F6E    mov         eax,dword ptr [ebp-18]
 004C9F71    push        eax
 004C9F72    call        gdi32.CreateCompatibleBitmap
 004C9F77    call        GDICheck
 004C9F7C    mov         dword ptr [ebp-10],eax
>004C9F7F    jmp         004CA1BC
 004C9F84    mov         eax,42C
 004C9F89    call        @GetMem
 004C9F8E    mov         dword ptr [ebp-28],eax
 004C9F91    xor         edx,edx
 004C9F93    push        ebp
 004C9F94    push        4CA1B5
 004C9F99    push        dword ptr fs:[edx]
 004C9F9C    mov         dword ptr fs:[edx],esp
 004C9F9F    mov         eax,dword ptr [ebp+0C]
 004C9FA2    mov         dword ptr [eax+18],28
 004C9FA9    mov         eax,dword ptr [ebp+0C]
 004C9FAC    mov         word ptr [eax+24],1
 004C9FB2    mov         eax,dword ptr [ebp+0C]
 004C9FB5    cmp         word ptr [eax+26],0
>004C9FBA    jne         004C9FDF
 004C9FBC    push        0C
 004C9FBE    mov         eax,dword ptr [ebp-18]
 004C9FC1    push        eax
 004C9FC2    call        gdi32.GetDeviceCaps
 004C9FC7    mov         ebx,eax
 004C9FC9    push        0E
 004C9FCB    mov         eax,dword ptr [ebp-18]
 004C9FCE    push        eax
 004C9FCF    call        gdi32.GetDeviceCaps
 004C9FD4    imul        bx,ax
 004C9FD8    mov         eax,dword ptr [ebp+0C]
 004C9FDB    mov         word ptr [eax+26],bx
 004C9FDF    mov         eax,dword ptr [ebp+0C]
 004C9FE2    mov         edx,dword ptr [ebp-28]
 004C9FE5    lea         esi,[eax+18]
 004C9FE8    mov         edi,edx
 004C9FEA    mov         ecx,0A
 004C9FEF    rep movs    dword ptr [edi],dword ptr [esi]
 004C9FF1    mov         eax,dword ptr [ebp+0C]
 004C9FF4    mov         eax,dword ptr [eax+1C]
 004C9FF7    mov         edx,dword ptr [ebp+0C]
 004C9FFA    mov         dword ptr [edx+4],eax
 004C9FFD    mov         eax,dword ptr [ebp+0C]
 004CA000    mov         eax,dword ptr [eax+20]
 004CA003    mov         edx,dword ptr [ebp+0C]
 004CA006    mov         dword ptr [edx+8],eax
 004CA009    mov         eax,dword ptr [ebp+0C]
 004CA00C    cmp         word ptr [eax+26],8
>004CA011    ja          004CA0DE
 004CA017    mov         eax,dword ptr [ebp+0C]
 004CA01A    cmp         word ptr [eax+26],1
>004CA01F    jne         004CA049
 004CA021    cmp         dword ptr [ebp-4],0
>004CA025    je          004CA02D
 004CA027    cmp         dword ptr [ebp-74],0
>004CA02B    jne         004CA049
 004CA02D    mov         eax,dword ptr [ebp-28]
 004CA030    xor         edx,edx
 004CA032    mov         dword ptr [eax+28],edx
 004CA035    mov         eax,dword ptr [ebp-28]
 004CA038    add         eax,28
 004CA03B    add         eax,4
 004CA03E    mov         dword ptr [eax],0FFFFFF
>004CA044    jmp         004CA118
 004CA049    cmp         dword ptr [ebp-0C],0
>004CA04D    je          004CA067
 004CA04F    mov         eax,dword ptr [ebp-28]
 004CA052    lea         edx,[eax+28]
 004CA055    mov         ecx,0FF
 004CA05A    mov         eax,dword ptr [ebp-0C]
 004CA05D    call        PaletteToDIBColorTable
>004CA062    jmp         004CA118
 004CA067    cmp         dword ptr [ebp-4],0
>004CA06B    je          004CA118
 004CA071    mov         eax,dword ptr [ebp-4]
 004CA074    push        eax
 004CA075    mov         eax,dword ptr [ebp-1C]
 004CA078    push        eax
 004CA079    call        gdi32.SelectObject
 004CA07E    mov         dword ptr [ebp-14],eax
 004CA081    cmp         dword ptr [ebp-70],0
>004CA085    jbe         004CA0AC
 004CA087    cmp         dword ptr [ebp-74],0
>004CA08B    je          004CA0AC
 004CA08D    mov         eax,dword ptr [ebp-28]
 004CA090    add         eax,28
 004CA093    push        eax
 004CA094    push        100
 004CA099    push        0
 004CA09B    mov         eax,dword ptr [ebp-1C]
 004CA09E    push        eax
 004CA09F    call        gdi32.GetDIBColorTable
 004CA0A4    mov         edx,dword ptr [ebp+0C]
 004CA0A7    mov         dword ptr [edx+38],eax
>004CA0AA    jmp         004CA0CF
 004CA0AC    push        0
 004CA0AE    mov         eax,dword ptr [ebp-28]
 004CA0B1    push        eax
 004CA0B2    push        0
 004CA0B4    mov         eax,dword ptr [ebp+0C]
 004CA0B7    mov         eax,dword ptr [eax+20]
 004CA0BA    cdq
 004CA0BB    xor         eax,edx
 004CA0BD    sub         eax,edx
 004CA0BF    push        eax
 004CA0C0    push        0
 004CA0C2    mov         eax,dword ptr [ebp-4]
 004CA0C5    push        eax
 004CA0C6    mov         eax,dword ptr [ebp-1C]
 004CA0C9    push        eax
 004CA0CA    call        gdi32.GetDIBits
 004CA0CF    mov         eax,dword ptr [ebp-14]
 004CA0D2    push        eax
 004CA0D3    mov         eax,dword ptr [ebp-1C]
 004CA0D6    push        eax
 004CA0D7    call        gdi32.SelectObject
>004CA0DC    jmp         004CA118
 004CA0DE    mov         eax,dword ptr [ebp+0C]
 004CA0E1    movzx       eax,word ptr [eax+26]
 004CA0E5    cmp         ax,10
>004CA0E9    je          004CA0F1
 004CA0EB    cmp         ax,20
>004CA0EF    jne         004CA118
 004CA0F1    mov         eax,dword ptr [ebp+0C]
 004CA0F4    test        byte ptr [eax+28],3
>004CA0F8    je          004CA118
 004CA0FA    mov         eax,dword ptr [ebp+0C]
 004CA0FD    call        FixupBitFields
 004CA102    mov         eax,dword ptr [ebp-28]
 004CA105    lea         edx,[eax+28]
 004CA108    mov         eax,dword ptr [ebp+0C]
 004CA10B    add         eax,40
 004CA10E    mov         ecx,0C
 004CA113    call        Move
 004CA118    push        0
 004CA11A    push        0
 004CA11C    lea         eax,[ebp-2C]
 004CA11F    push        eax
 004CA120    push        0
 004CA122    mov         eax,dword ptr [ebp-28]
 004CA125    push        eax
 004CA126    mov         eax,dword ptr [ebp-18]
 004CA129    push        eax
 004CA12A    call        gdi32.CreateDIBSection
 004CA12F    call        GDICheck
 004CA134    mov         dword ptr [ebp-10],eax
 004CA137    cmp         dword ptr [ebp-2C],0
>004CA13B    jne         004CA142
 004CA13D    call        GDIError
 004CA142    cmp         dword ptr [ebp-4],0
>004CA146    je          004CA19F
 004CA148    mov         eax,dword ptr [ebp+0C]
 004CA14B    mov         eax,dword ptr [eax+1C]
 004CA14E    cmp         eax,dword ptr [ebp-84]
>004CA154    jne         004CA19F
 004CA156    mov         eax,dword ptr [ebp+0C]
 004CA159    mov         eax,dword ptr [eax+20]
 004CA15C    cmp         eax,dword ptr [ebp-80]
>004CA15F    jne         004CA19F
 004CA161    mov         eax,dword ptr [ebp+0C]
 004CA164    cmp         word ptr [eax+26],8
>004CA169    jbe         004CA19F
 004CA16B    push        0
 004CA16D    mov         eax,dword ptr [ebp-28]
 004CA170    push        eax
 004CA171    mov         eax,dword ptr [ebp-2C]
 004CA174    push        eax
 004CA175    mov         eax,dword ptr [ebp+0C]
 004CA178    mov         eax,dword ptr [eax+20]
 004CA17B    cdq
 004CA17C    xor         eax,edx
 004CA17E    sub         eax,edx
 004CA180    push        eax
 004CA181    push        0
 004CA183    mov         eax,dword ptr [ebp-4]
 004CA186    push        eax
 004CA187    mov         eax,dword ptr [ebp-1C]
 004CA18A    push        eax
 004CA18B    call        gdi32.GetDIBits
 004CA190    call        @TryFinallyExit
 004CA195    call        @TryFinallyExit
>004CA19A    jmp         004CA4B5
 004CA19F    xor         eax,eax
 004CA1A1    pop         edx
 004CA1A2    pop         ecx
 004CA1A3    pop         ecx
 004CA1A4    mov         dword ptr fs:[eax],edx
 004CA1A7    push        4CA1BC
 004CA1AC    mov         eax,dword ptr [ebp-28]
 004CA1AF    call        @FreeMem
 004CA1B4    ret
>004CA1B5    jmp         @HandleFinally
>004CA1BA    jmp         004CA1AC
 004CA1BC    mov         eax,dword ptr [ebp-10]
 004CA1BF    call        GDICheck
 004CA1C4    mov         eax,dword ptr [ebp-10]
 004CA1C7    push        eax
 004CA1C8    mov         eax,dword ptr [ebp-1C]
 004CA1CB    push        eax
 004CA1CC    call        gdi32.SelectObject
 004CA1D1    call        GDICheck
 004CA1D6    mov         dword ptr [ebp-14],eax
 004CA1D9    xor         eax,eax
 004CA1DB    push        ebp
 004CA1DC    push        4CA45F
 004CA1E1    push        dword ptr fs:[eax]
 004CA1E4    mov         dword ptr fs:[eax],esp
 004CA1E7    xor         eax,eax
 004CA1E9    push        ebp
 004CA1EA    push        4CA44E
 004CA1EF    push        dword ptr fs:[eax]
 004CA1F2    mov         dword ptr fs:[eax],esp
 004CA1F5    xor         eax,eax
 004CA1F7    mov         dword ptr [ebp-24],eax
 004CA1FA    xor         ebx,ebx
 004CA1FC    cmp         dword ptr [ebp-0C],0
>004CA200    je          004CA21D
 004CA202    push        0
 004CA204    mov         eax,dword ptr [ebp-0C]
 004CA207    push        eax
 004CA208    mov         eax,dword ptr [ebp-1C]
 004CA20B    push        eax
 004CA20C    call        gdi32.SelectPalette
 004CA211    mov         dword ptr [ebp-24],eax
 004CA214    mov         eax,dword ptr [ebp-1C]
 004CA217    push        eax
 004CA218    call        gdi32.RealizePalette
 004CA21D    xor         eax,eax
 004CA21F    push        ebp
 004CA220    push        4CA42C
 004CA225    push        dword ptr fs:[eax]
 004CA228    mov         dword ptr fs:[eax],esp
 004CA22B    cmp         dword ptr [ebp+8],0
>004CA22F    je          004CA2EC
 004CA235    mov         eax,dword ptr [ebp+8]
 004CA238    mov         eax,dword ptr [eax+48]
 004CA23B    call        TBrush.GetHandle
 004CA240    push        eax
 004CA241    mov         eax,dword ptr [ebp+0C]
 004CA244    mov         eax,dword ptr [eax+8]
 004CA247    push        eax
 004CA248    lea         eax,[ebp-98]
 004CA24E    push        eax
 004CA24F    mov         ecx,dword ptr [ebp+0C]
 004CA252    mov         ecx,dword ptr [ecx+4]
 004CA255    xor         edx,edx
 004CA257    xor         eax,eax
 004CA259    call        Rect
 004CA25E    lea         eax,[ebp-98]
 004CA264    push        eax
 004CA265    mov         eax,dword ptr [ebp-1C]
 004CA268    push        eax
 004CA269    call        user32.FillRect
 004CA26E    mov         eax,dword ptr [ebp+8]
 004CA271    mov         eax,dword ptr [eax+40]
 004CA274    mov         eax,dword ptr [eax+18]
 004CA277    call        ColorToRGB
 004CA27C    push        eax
 004CA27D    mov         eax,dword ptr [ebp-1C]
 004CA280    push        eax
 004CA281    call        gdi32.SetTextColor
 004CA286    mov         eax,dword ptr [ebp+8]
 004CA289    mov         esi,dword ptr [eax+48]
 004CA28C    mov         eax,dword ptr [esi+10]
 004CA28F    mov         eax,dword ptr [eax+18]
 004CA292    call        ColorToRGB
 004CA297    push        eax
 004CA298    mov         eax,dword ptr [ebp-1C]
 004CA29B    push        eax
 004CA29C    call        gdi32.SetBkColor
 004CA2A1    mov         eax,dword ptr [ebp+0C]
 004CA2A4    cmp         word ptr [eax+26],1
>004CA2A9    jne         004CA30C
 004CA2AB    mov         eax,dword ptr [ebp+0C]
 004CA2AE    cmp         dword ptr [eax+14],0
>004CA2B2    je          004CA30C
 004CA2B4    mov         eax,dword ptr [ebp+8]
 004CA2B7    mov         eax,dword ptr [eax+40]
 004CA2BA    mov         eax,dword ptr [eax+18]
 004CA2BD    call        ColorToRGB
 004CA2C2    mov         dword ptr [ebp-34],eax
 004CA2C5    mov         eax,dword ptr [ebp+8]
 004CA2C8    mov         esi,dword ptr [eax+48]
 004CA2CB    mov         eax,dword ptr [esi+10]
 004CA2CE    mov         eax,dword ptr [eax+18]
 004CA2D1    call        ColorToRGB
 004CA2D6    mov         dword ptr [ebp-30],eax
 004CA2D9    lea         eax,[ebp-34]
 004CA2DC    push        eax
 004CA2DD    push        2
 004CA2DF    push        0
 004CA2E1    mov         eax,dword ptr [ebp-1C]
 004CA2E4    push        eax
 004CA2E5    call        gdi32.SetDIBColorTable
>004CA2EA    jmp         004CA30C
 004CA2EC    push        0FF0062
 004CA2F1    mov         eax,dword ptr [ebp+0C]
 004CA2F4    mov         eax,dword ptr [eax+8]
 004CA2F7    push        eax
 004CA2F8    mov         eax,dword ptr [ebp+0C]
 004CA2FB    mov         eax,dword ptr [eax+4]
 004CA2FE    push        eax
 004CA2FF    push        0
 004CA301    push        0
 004CA303    mov         eax,dword ptr [ebp-1C]
 004CA306    push        eax
 004CA307    call        gdi32.PatBlt
 004CA30C    cmp         dword ptr [ebp-4],0
>004CA310    je          004CA409
 004CA316    mov         eax,dword ptr [ebp-18]
 004CA319    push        eax
 004CA31A    call        gdi32.CreateCompatibleDC
 004CA31F    call        GDICheck
 004CA324    mov         dword ptr [ebp-20],eax
 004CA327    xor         eax,eax
 004CA329    push        ebp
 004CA32A    push        4CA402
 004CA32F    push        dword ptr fs:[eax]
 004CA332    mov         dword ptr fs:[eax],esp
 004CA335    mov         eax,dword ptr [ebp-4]
 004CA338    push        eax
 004CA339    mov         eax,dword ptr [ebp-20]
 004CA33C    push        eax
 004CA33D    call        gdi32.SelectObject
 004CA342    call        GDICheck
 004CA347    mov         esi,eax
 004CA349    cmp         dword ptr [ebp-8],0
>004CA34D    je          004CA369
 004CA34F    push        0
 004CA351    mov         eax,dword ptr [ebp-8]
 004CA354    push        eax
 004CA355    mov         eax,dword ptr [ebp-20]
 004CA358    push        eax
 004CA359    call        gdi32.SelectPalette
 004CA35E    mov         ebx,eax
 004CA360    mov         eax,dword ptr [ebp-20]
 004CA363    push        eax
 004CA364    call        gdi32.RealizePalette
 004CA369    cmp         dword ptr [ebp+8],0
>004CA36D    je          004CA3A2
 004CA36F    mov         eax,dword ptr [ebp+8]
 004CA372    mov         eax,dword ptr [eax+40]
 004CA375    mov         eax,dword ptr [eax+18]
 004CA378    call        ColorToRGB
 004CA37D    push        eax
 004CA37E    mov         eax,dword ptr [ebp-20]
 004CA381    push        eax
 004CA382    call        gdi32.SetTextColor
 004CA387    mov         eax,dword ptr [ebp+8]
 004CA38A    mov         edi,dword ptr [eax+48]
 004CA38D    mov         eax,dword ptr [edi+10]
 004CA390    mov         eax,dword ptr [eax+18]
 004CA393    call        ColorToRGB
 004CA398    push        eax
 004CA399    mov         eax,dword ptr [ebp-20]
 004CA39C    push        eax
 004CA39D    call        gdi32.SetBkColor
 004CA3A2    push        0CC0020
 004CA3A7    push        0
 004CA3A9    push        0
 004CA3AB    mov         eax,dword ptr [ebp-20]
 004CA3AE    push        eax
 004CA3AF    mov         eax,dword ptr [ebp+0C]
 004CA3B2    mov         eax,dword ptr [eax+8]
 004CA3B5    push        eax
 004CA3B6    mov         eax,dword ptr [ebp+0C]
 004CA3B9    mov         eax,dword ptr [eax+4]
 004CA3BC    push        eax
 004CA3BD    push        0
 004CA3BF    push        0
 004CA3C1    mov         eax,dword ptr [ebp-1C]
 004CA3C4    push        eax
 004CA3C5    call        gdi32.BitBlt
 004CA3CA    cmp         dword ptr [ebp-8],0
>004CA3CE    je          004CA3DC
 004CA3D0    push        0FF
 004CA3D2    push        ebx
 004CA3D3    mov         eax,dword ptr [ebp-20]
 004CA3D6    push        eax
 004CA3D7    call        gdi32.SelectPalette
 004CA3DC    push        esi
 004CA3DD    mov         eax,dword ptr [ebp-20]
 004CA3E0    push        eax
 004CA3E1    call        gdi32.SelectObject
 004CA3E6    call        GDICheck
 004CA3EB    xor         eax,eax
 004CA3ED    pop         edx
 004CA3EE    pop         ecx
 004CA3EF    pop         ecx
 004CA3F0    mov         dword ptr fs:[eax],edx
 004CA3F3    push        4CA409
 004CA3F8    mov         eax,dword ptr [ebp-20]
 004CA3FB    push        eax
 004CA3FC    call        gdi32.DeleteDC
 004CA401    ret
>004CA402    jmp         @HandleFinally
>004CA407    jmp         004CA3F8
 004CA409    xor         eax,eax
 004CA40B    pop         edx
 004CA40C    pop         ecx
 004CA40D    pop         ecx
 004CA40E    mov         dword ptr fs:[eax],edx
 004CA411    push        4CA433
 004CA416    cmp         dword ptr [ebp-0C],0
>004CA41A    je          004CA42B
 004CA41C    push        0FF
 004CA41E    mov         eax,dword ptr [ebp-24]
 004CA421    push        eax
 004CA422    mov         eax,dword ptr [ebp-1C]
 004CA425    push        eax
 004CA426    call        gdi32.SelectPalette
 004CA42B    ret
>004CA42C    jmp         @HandleFinally
>004CA431    jmp         004CA416
 004CA433    xor         eax,eax
 004CA435    pop         edx
 004CA436    pop         ecx
 004CA437    pop         ecx
 004CA438    mov         dword ptr fs:[eax],edx
 004CA43B    push        4CA455
 004CA440    mov         eax,dword ptr [ebp-14]
 004CA443    push        eax
 004CA444    mov         eax,dword ptr [ebp-1C]
 004CA447    push        eax
 004CA448    call        gdi32.SelectObject
 004CA44D    ret
>004CA44E    jmp         @HandleFinally
>004CA453    jmp         004CA440
 004CA455    xor         eax,eax
 004CA457    pop         edx
 004CA458    pop         ecx
 004CA459    pop         ecx
 004CA45A    mov         dword ptr fs:[eax],edx
>004CA45D    jmp         004CA477
>004CA45F    jmp         @HandleAnyException
 004CA464    mov         eax,dword ptr [ebp-10]
 004CA467    push        eax
 004CA468    call        gdi32.DeleteObject
 004CA46D    call        @RaiseAgain
 004CA472    call        @DoneExcept
 004CA477    xor         eax,eax
 004CA479    pop         edx
 004CA47A    pop         ecx
 004CA47B    pop         ecx
 004CA47C    mov         dword ptr fs:[eax],edx
 004CA47F    push        4CA4B5
 004CA484    mov         eax,dword ptr [ebp-1C]
 004CA487    push        eax
 004CA488    call        gdi32.DeleteDC
 004CA48D    mov         eax,dword ptr [ebp-18]
 004CA490    push        eax
 004CA491    push        0
 004CA493    call        user32.ReleaseDC
 004CA498    cmp         dword ptr [ebp-10],0
>004CA49C    je          004CA4AD
 004CA49E    mov         eax,dword ptr [ebp+0C]
 004CA4A1    push        eax
 004CA4A2    push        54
 004CA4A4    mov         eax,dword ptr [ebp-10]
 004CA4A7    push        eax
 004CA4A8    call        gdi32.GetObjectW
 004CA4AD    ret
>004CA4AE    jmp         @HandleFinally
>004CA4B3    jmp         004CA484
 004CA4B5    mov         eax,dword ptr [ebp-10]
 004CA4B8    pop         edi
 004CA4B9    pop         esi
 004CA4BA    pop         ebx
 004CA4BB    mov         esp,ebp
 004CA4BD    pop         ebp
 004CA4BE    ret         8
*}
end;

//004CA4C4
function CopyPalette(Palette:Windows.HPALETTE):HPALETTE;
begin
{*
 004CA4C4    push        ebx
 004CA4C5    push        esi
 004CA4C6    add         esp,0FFFFFBF8
 004CA4CC    mov         ebx,eax
 004CA4CE    xor         esi,esi
 004CA4D0    test        ebx,ebx
>004CA4D2    je          004CA51A
 004CA4D4    xor         eax,eax
 004CA4D6    mov         dword ptr [esp],eax
 004CA4D9    push        esp
 004CA4DA    push        4
 004CA4DC    push        ebx
 004CA4DD    call        gdi32.GetObjectW
 004CA4E2    test        eax,eax
>004CA4E4    je          004CA51A
 004CA4E6    cmp         dword ptr [esp],0
>004CA4EA    je          004CA51A
 004CA4EC    mov         word ptr [esp+4],300
 004CA4F3    movzx       eax,word ptr [esp]
 004CA4F7    mov         word ptr [esp+6],ax
 004CA4FC    lea         eax,[esp+8]
 004CA500    push        eax
 004CA501    mov         eax,dword ptr [esp+4]
 004CA505    push        eax
 004CA506    push        0
 004CA508    push        ebx
 004CA509    call        gdi32.GetPaletteEntries
 004CA50E    lea         eax,[esp+4]
 004CA512    push        eax
 004CA513    call        gdi32.CreatePalette
 004CA518    mov         esi,eax
 004CA51A    mov         eax,esi
 004CA51C    add         esp,408
 004CA522    pop         esi
 004CA523    pop         ebx
 004CA524    ret
*}
end;

//004CA528
function CopyBitmapAsMask(Handle:Windows.HBITMAP; Palette:Windows.HPALETTE; TransparentColor:UITypes.TColorRef):HBITMAP;
begin
{*
 004CA528    push        ebp
 004CA529    mov         ebp,esp
 004CA52B    add         esp,0FFFFFF90
 004CA52E    push        ebx
 004CA52F    push        esi
 004CA530    push        edi
 004CA531    mov         edi,ecx
 004CA533    mov         esi,edx
 004CA535    mov         ebx,eax
 004CA537    xor         eax,eax
 004CA539    mov         dword ptr [ebp-4],eax
 004CA53C    test        ebx,ebx
>004CA53E    je          004CA72A
 004CA544    lea         eax,[ebp-70]
 004CA547    push        eax
 004CA548    push        54
 004CA54A    push        ebx
 004CA54B    call        gdi32.GetObjectW
 004CA550    test        eax,eax
>004CA552    je          004CA72A
 004CA558    mov         eax,ebx
 004CA55A    call        DeselectBitmap
 004CA55F    xor         eax,eax
 004CA561    mov         dword ptr [ebp-8],eax
 004CA564    xor         eax,eax
 004CA566    mov         dword ptr [ebp-10],eax
 004CA569    xor         eax,eax
 004CA56B    push        ebp
 004CA56C    push        4CA723
 004CA571    push        dword ptr fs:[eax]
 004CA574    mov         dword ptr fs:[eax],esp
 004CA577    push        0
 004CA579    call        user32.GetDC
 004CA57E    call        GDICheck
 004CA583    mov         dword ptr [ebp-8],eax
 004CA586    mov         eax,dword ptr [ebp-8]
 004CA589    push        eax
 004CA58A    call        gdi32.CreateCompatibleDC
 004CA58F    call        GDICheck
 004CA594    mov         dword ptr [ebp-10],eax
 004CA597    push        0
 004CA599    push        1
 004CA59B    push        1
 004CA59D    mov         eax,dword ptr [ebp-68]
 004CA5A0    push        eax
 004CA5A1    mov         eax,dword ptr [ebp-6C]
 004CA5A4    push        eax
 004CA5A5    call        gdi32.CreateBitmap
 004CA5AA    mov         dword ptr [ebp-4],eax
 004CA5AD    cmp         dword ptr [ebp-4],0
>004CA5B1    je          004CA6F5
 004CA5B7    mov         eax,dword ptr [ebp-4]
 004CA5BA    push        eax
 004CA5BB    mov         eax,dword ptr [ebp-10]
 004CA5BE    push        eax
 004CA5BF    call        gdi32.SelectObject
 004CA5C4    mov         dword ptr [ebp-1C],eax
 004CA5C7    cmp         edi,1FFFFFFF
>004CA5CD    jne         004CA5EB
 004CA5CF    push        42
 004CA5D1    mov         eax,dword ptr [ebp-68]
 004CA5D4    push        eax
 004CA5D5    mov         eax,dword ptr [ebp-6C]
 004CA5D8    push        eax
 004CA5D9    push        0
 004CA5DB    push        0
 004CA5DD    mov         eax,dword ptr [ebp-10]
 004CA5E0    push        eax
 004CA5E1    call        gdi32.PatBlt
>004CA5E6    jmp         004CA6E2
 004CA5EB    mov         eax,dword ptr [ebp-8]
 004CA5EE    push        eax
 004CA5EF    call        gdi32.CreateCompatibleDC
 004CA5F4    call        GDICheck
 004CA5F9    mov         dword ptr [ebp-0C],eax
 004CA5FC    xor         eax,eax
 004CA5FE    push        ebp
 004CA5FF    push        4CA6DB
 004CA604    push        dword ptr fs:[eax]
 004CA607    mov         dword ptr fs:[eax],esp
 004CA60A    cmp         dword ptr [ebp-5C],0
>004CA60E    je          004CA62E
 004CA610    mov         byte ptr [ebp-11],1
 004CA614    xor         eax,eax
 004CA616    mov         dword ptr [ebp-58],eax
 004CA619    lea         eax,[ebp-70]
 004CA61C    push        eax
 004CA61D    push        0
 004CA61F    mov         ecx,esi
 004CA621    mov         edx,esi
 004CA623    mov         eax,ebx
 004CA625    call        CopyBitmap
 004CA62A    mov         ebx,eax
>004CA62C    jmp         004CA632
 004CA62E    mov         byte ptr [ebp-11],0
 004CA632    push        ebx
 004CA633    mov         eax,dword ptr [ebp-0C]
 004CA636    push        eax
 004CA637    call        gdi32.SelectObject
 004CA63C    mov         dword ptr [ebp-18],eax
 004CA63F    test        esi,esi
>004CA641    je          004CA66D
 004CA643    push        0
 004CA645    push        esi
 004CA646    mov         eax,dword ptr [ebp-0C]
 004CA649    push        eax
 004CA64A    call        gdi32.SelectPalette
 004CA64F    mov         eax,dword ptr [ebp-0C]
 004CA652    push        eax
 004CA653    call        gdi32.RealizePalette
 004CA658    push        0
 004CA65A    push        esi
 004CA65B    mov         eax,dword ptr [ebp-10]
 004CA65E    push        eax
 004CA65F    call        gdi32.SelectPalette
 004CA664    mov         eax,dword ptr [ebp-10]
 004CA667    push        eax
 004CA668    call        gdi32.RealizePalette
 004CA66D    push        edi
 004CA66E    mov         eax,dword ptr [ebp-0C]
 004CA671    push        eax
 004CA672    call        gdi32.SetBkColor
 004CA677    mov         esi,eax
 004CA679    push        0CC0020
 004CA67E    push        0
 004CA680    push        0
 004CA682    mov         eax,dword ptr [ebp-0C]
 004CA685    push        eax
 004CA686    mov         eax,dword ptr [ebp-68]
 004CA689    push        eax
 004CA68A    mov         eax,dword ptr [ebp-6C]
 004CA68D    push        eax
 004CA68E    push        0
 004CA690    push        0
 004CA692    mov         eax,dword ptr [ebp-10]
 004CA695    push        eax
 004CA696    call        gdi32.BitBlt
 004CA69B    push        esi
 004CA69C    mov         eax,dword ptr [ebp-0C]
 004CA69F    push        eax
 004CA6A0    call        gdi32.SetBkColor
 004CA6A5    cmp         dword ptr [ebp-18],0
>004CA6A9    je          004CA6B8
 004CA6AB    mov         eax,dword ptr [ebp-18]
 004CA6AE    push        eax
 004CA6AF    mov         eax,dword ptr [ebp-0C]
 004CA6B2    push        eax
 004CA6B3    call        gdi32.SelectObject
 004CA6B8    cmp         byte ptr [ebp-11],0
>004CA6BC    je          004CA6C4
 004CA6BE    push        ebx
 004CA6BF    call        gdi32.DeleteObject
 004CA6C4    xor         eax,eax
 004CA6C6    pop         edx
 004CA6C7    pop         ecx
 004CA6C8    pop         ecx
 004CA6C9    mov         dword ptr fs:[eax],edx
 004CA6CC    push        4CA6E2
 004CA6D1    mov         eax,dword ptr [ebp-0C]
 004CA6D4    push        eax
 004CA6D5    call        gdi32.DeleteDC
 004CA6DA    ret
>004CA6DB    jmp         @HandleFinally
>004CA6E0    jmp         004CA6D1
 004CA6E2    cmp         dword ptr [ebp-1C],0
>004CA6E6    je          004CA6F5
 004CA6E8    mov         eax,dword ptr [ebp-1C]
 004CA6EB    push        eax
 004CA6EC    mov         eax,dword ptr [ebp-10]
 004CA6EF    push        eax
 004CA6F0    call        gdi32.SelectObject
 004CA6F5    xor         eax,eax
 004CA6F7    pop         edx
 004CA6F8    pop         ecx
 004CA6F9    pop         ecx
 004CA6FA    mov         dword ptr fs:[eax],edx
 004CA6FD    push        4CA72A
 004CA702    cmp         dword ptr [ebp-10],0
>004CA706    je          004CA711
 004CA708    mov         eax,dword ptr [ebp-10]
 004CA70B    push        eax
 004CA70C    call        gdi32.DeleteDC
 004CA711    cmp         dword ptr [ebp-8],0
>004CA715    je          004CA722
 004CA717    mov         eax,dword ptr [ebp-8]
 004CA71A    push        eax
 004CA71B    push        0
 004CA71D    call        user32.ReleaseDC
 004CA722    ret
>004CA723    jmp         @HandleFinally
>004CA728    jmp         004CA702
 004CA72A    mov         eax,dword ptr [ebp-4]
 004CA72D    pop         edi
 004CA72E    pop         esi
 004CA72F    pop         ebx
 004CA730    mov         esp,ebp
 004CA732    pop         ebp
 004CA733    ret
*}
end;

//004CA734
constructor TBitmap.Create();
begin
{*
 004CA734    push        ebp
 004CA735    mov         ebp,esp
 004CA737    push        ecx
 004CA738    push        ebx
 004CA739    push        esi
 004CA73A    test        dl,dl
>004CA73C    je          004CA746
 004CA73E    add         esp,0FFFFFFF0
 004CA741    call        @ClassCreate
 004CA746    mov         byte ptr [ebp-1],dl
 004CA749    mov         ebx,eax
 004CA74B    xor         edx,edx
 004CA74D    mov         eax,ebx
 004CA74F    call        TGraphic.Create
 004CA754    mov         dword ptr [ebx+34],20000000
 004CA75B    mov         byte ptr [ebx+39],0
 004CA75F    mov         dl,1
 004CA761    mov         eax,[004C1A40];TBitmapImage
 004CA766    call        TObject.Create
 004CA76B    mov         esi,eax
 004CA76D    mov         dword ptr [ebx+28],esi
 004CA770    mov         eax,esi
 004CA772    inc         dword ptr [eax+4]
 004CA775    cmp         byte ptr ds:[7A0F44],0
>004CA77C    je          004CA787
 004CA77E    mov         dl,1
 004CA780    mov         eax,ebx
 004CA782    mov         ecx,dword ptr [eax]
 004CA784    call        dword ptr [ecx+78]
 004CA787    mov         eax,ebx
 004CA789    cmp         byte ptr [ebp-1],0
>004CA78D    je          004CA79E
 004CA78F    call        @AfterConstruction
 004CA794    pop         dword ptr fs:[0]
 004CA79B    add         esp,0C
 004CA79E    mov         eax,ebx
 004CA7A0    pop         esi
 004CA7A1    pop         ebx
 004CA7A2    pop         ecx
 004CA7A3    pop         ebp
 004CA7A4    ret
*}
end;

//004CA7A8
destructor TBitmap.Destroy();
begin
{*
 004CA7A8    push        ebx
 004CA7A9    push        esi
 004CA7AA    call        @BeforeDestruction
 004CA7AF    mov         ebx,edx
 004CA7B1    mov         esi,eax
 004CA7B3    mov         eax,esi
 004CA7B5    call        TBitmap.FreeContext
 004CA7BA    mov         eax,dword ptr [esi+28];TBitmap.FImage:TBitmapImage
 004CA7BD    call        TSharedImage.Release
 004CA7C2    mov         eax,dword ptr [esi+2C];TBitmap.FCanvas:TCanvas
 004CA7C5    call        TObject.Free
 004CA7CA    mov         dl,0FC
 004CA7CC    and         dl,bl
 004CA7CE    mov         eax,esi
 004CA7D0    call        TMemoryStream.Destroy
 004CA7D5    test        bl,bl
>004CA7D7    jle         004CA7E0
 004CA7D9    mov         eax,esi
 004CA7DB    call        @ClassDestroy
 004CA7E0    pop         esi
 004CA7E1    pop         ebx
 004CA7E2    ret
*}
end;

//004CA7E4
procedure TBitmap.Assign(Source:TPersistent);
begin
{*
 004CA7E4    push        ebp
 004CA7E5    mov         ebp,esp
 004CA7E7    add         esp,0FFFFFFA8
 004CA7EA    push        ebx
 004CA7EB    push        esi
 004CA7EC    mov         ebx,edx
 004CA7EE    mov         dword ptr [ebp-4],eax
 004CA7F1    test        ebx,ebx
>004CA7F3    je          004CA80A
 004CA7F5    mov         eax,ebx
 004CA7F7    mov         edx,dword ptr ds:[4C1D10];TBitmap
 004CA7FD    call        @IsClass
 004CA802    test        al,al
>004CA804    je          004CA8E6
 004CA80A    mov         eax,dword ptr [ebp-4]
 004CA80D    call        TBitmap.FreeContext
 004CA812    push        7CA468;gvar_007CA468
 004CA817    call        kernel32.EnterCriticalSection
 004CA81C    xor         edx,edx
 004CA81E    push        ebp
 004CA81F    push        4CA8BF
 004CA824    push        dword ptr fs:[edx]
 004CA827    mov         dword ptr fs:[edx],esp
 004CA82A    test        ebx,ebx
>004CA82C    je          004CA884
 004CA82E    mov         esi,ebx
 004CA830    mov         eax,dword ptr [esi+28]
 004CA833    inc         dword ptr [eax+4]
 004CA836    mov         eax,dword ptr [ebp-4]
 004CA839    mov         eax,dword ptr [eax+28]
 004CA83C    call        TSharedImage.Release
 004CA841    mov         eax,dword ptr [esi+28]
 004CA844    mov         edx,dword ptr [ebp-4]
 004CA847    mov         dword ptr [edx+28],eax
 004CA84A    movzx       eax,byte ptr [esi+21]
 004CA84E    mov         edx,dword ptr [ebp-4]
 004CA851    mov         byte ptr [edx+21],al
 004CA854    mov         eax,dword ptr [esi+34]
 004CA857    mov         edx,dword ptr [ebp-4]
 004CA85A    mov         dword ptr [edx+34],eax
 004CA85D    movzx       eax,byte ptr [esi+38]
 004CA861    mov         edx,dword ptr [ebp-4]
 004CA864    mov         byte ptr [edx+38],al
 004CA867    mov         eax,esi
 004CA869    call        TBitmap.GetPixelFormat
 004CA86E    mov         edx,eax
 004CA870    mov         eax,dword ptr [ebp-4]
 004CA873    call        TBitmap.SetPixelFormat
 004CA878    movzx       eax,byte ptr [esi+39]
 004CA87C    mov         edx,dword ptr [ebp-4]
 004CA87F    mov         byte ptr [edx+39],al
>004CA882    jmp         004CA8A7
 004CA884    lea         eax,[ebp-58]
 004CA887    xor         ecx,ecx
 004CA889    mov         edx,54
 004CA88E    call        @FillChar
 004CA893    lea         eax,[ebp-58]
 004CA896    push        eax
 004CA897    push        0
 004CA899    push        0
 004CA89B    xor         ecx,ecx
 004CA89D    xor         edx,edx
 004CA89F    mov         eax,dword ptr [ebp-4]
 004CA8A2    call        TBitmap.NewImage
 004CA8A7    xor         eax,eax
 004CA8A9    pop         edx
 004CA8AA    pop         ecx
 004CA8AB    pop         ecx
 004CA8AC    mov         dword ptr fs:[eax],edx
 004CA8AF    push        4CA8C6
 004CA8B4    push        7CA468;gvar_007CA468
 004CA8B9    call        kernel32.LeaveCriticalSection
 004CA8BE    ret
>004CA8BF    jmp         @HandleFinally
>004CA8C4    jmp         004CA8B4
 004CA8C6    mov         eax,dword ptr [ebp-4]
 004CA8C9    mov         edx,dword ptr [eax]
 004CA8CB    call        dword ptr [edx+28]
 004CA8CE    test        eax,eax
 004CA8D0    setne       al
 004CA8D3    mov         edx,dword ptr [ebp-4]
 004CA8D6    mov         byte ptr [edx+22],al
 004CA8D9    mov         edx,dword ptr [ebp-4]
 004CA8DC    mov         eax,dword ptr [ebp-4]
 004CA8DF    mov         ecx,dword ptr [eax]
 004CA8E1    call        dword ptr [ecx+10]
>004CA8E4    jmp         004CA8F0
 004CA8E6    mov         edx,ebx
 004CA8E8    mov         eax,dword ptr [ebp-4]
 004CA8EB    call        TPersistent.Assign
 004CA8F0    pop         esi
 004CA8F1    pop         ebx
 004CA8F2    mov         esp,ebp
 004CA8F4    pop         ebp
 004CA8F5    ret
*}
end;

//004CA8F8
procedure TBitmap.CopyImage(AHandle:Windows.HBITMAP; APalette:Windows.HPALETTE; DIB:Windows.TDIBSection);
begin
{*
 004CA8F8    push        ebp
 004CA8F9    mov         ebp,esp
 004CA8FB    add         esp,0FFFFFFA4
 004CA8FE    push        ebx
 004CA8FF    push        esi
 004CA900    push        edi
 004CA901    mov         esi,dword ptr [ebp+8]
 004CA904    lea         edi,[ebp-5C]
 004CA907    push        ecx
 004CA908    mov         ecx,15
 004CA90D    rep movs    dword ptr [edi],dword ptr [esi]
 004CA90F    pop         ecx
 004CA910    mov         esi,ecx
 004CA912    mov         edi,edx
 004CA914    mov         ebx,eax
 004CA916    mov         eax,ebx
 004CA918    call        TBitmap.FreeContext
 004CA91D    xor         eax,eax
 004CA91F    mov         dword ptr [ebp-4],eax
 004CA922    xor         eax,eax
 004CA924    mov         dword ptr [ebp-8],eax
 004CA927    xor         eax,eax
 004CA929    push        ebp
 004CA92A    push        4CA988
 004CA92F    push        dword ptr fs:[eax]
 004CA932    mov         dword ptr fs:[eax],esp
 004CA935    cmp         esi,dword ptr ds:[7CA44C];gvar_007CA44C
>004CA93B    jne         004CA942
 004CA93D    mov         dword ptr [ebp-8],esi
>004CA940    jmp         004CA94C
 004CA942    mov         eax,esi
 004CA944    call        CopyPalette
 004CA949    mov         dword ptr [ebp-8],eax
 004CA94C    lea         eax,[ebp-5C]
 004CA94F    push        eax
 004CA950    mov         eax,dword ptr [ebx+2C]
 004CA953    push        eax
 004CA954    mov         ecx,dword ptr [ebp-8]
 004CA957    mov         edx,esi
 004CA959    mov         eax,edi
 004CA95B    call        CopyBitmap
 004CA960    mov         dword ptr [ebp-4],eax
 004CA963    lea         eax,[ebp-5C]
 004CA966    push        eax
 004CA967    mov         eax,dword ptr [ebx+28]
 004CA96A    movzx       eax,byte ptr [eax+71]
 004CA96E    push        eax
 004CA96F    push        0
 004CA971    mov         ecx,dword ptr [ebp-8]
 004CA974    mov         edx,dword ptr [ebp-4]
 004CA977    mov         eax,ebx
 004CA979    call        TBitmap.NewImage
 004CA97E    xor         eax,eax
 004CA980    pop         edx
 004CA981    pop         ecx
 004CA982    pop         ecx
 004CA983    mov         dword ptr fs:[eax],edx
>004CA986    jmp         004CA9AE
>004CA988    jmp         @HandleAnyException
 004CA98D    mov         eax,dword ptr [ebp-8]
 004CA990    call        InternalDeletePalette
 004CA995    cmp         dword ptr [ebp-4],0
>004CA999    je          004CA9A4
 004CA99B    mov         eax,dword ptr [ebp-4]
 004CA99E    push        eax
 004CA99F    call        gdi32.DeleteObject
 004CA9A4    call        @RaiseAgain
 004CA9A9    call        @DoneExcept
 004CA9AE    pop         edi
 004CA9AF    pop         esi
 004CA9B0    pop         ebx
 004CA9B1    mov         esp,ebp
 004CA9B3    pop         ebp
 004CA9B4    ret         4
*}
end;

//004CA9B8
procedure TBitmap.Changing(Sender:TObject);
begin
{*
 004CA9B8    push        ebx
 004CA9B9    push        ecx
 004CA9BA    mov         ebx,eax
 004CA9BC    mov         eax,ebx
 004CA9BE    call        TBitmap.FreeImage
 004CA9C3    mov         eax,dword ptr [ebx+28]
 004CA9C6    xor         edx,edx
 004CA9C8    mov         dword ptr [eax+50],edx
 004CA9CB    xor         edx,edx
 004CA9CD    mov         dword ptr [eax+54],edx
 004CA9D0    add         eax,6C
 004CA9D3    mov         dword ptr [esp],eax
 004CA9D6    mov         eax,dword ptr [esp]
 004CA9D9    mov         eax,dword ptr [eax]
 004CA9DB    mov         edx,dword ptr [esp]
 004CA9DE    xor         ecx,ecx
 004CA9E0    mov         dword ptr [edx],ecx
 004CA9E2    call        TObject.Free
 004CA9E7    pop         edx
 004CA9E8    pop         ebx
 004CA9E9    ret
*}
end;

//004CA9EC
procedure TBitmap.Changed(Sender:TObject);
begin
{*
 004CA9EC    mov         byte ptr [eax+31],0
 004CA9F0    call        TGraphic.Changed
 004CA9F5    ret
*}
end;

//004CA9F8
procedure TBitmap.Dormant;
begin
{*
 004CA9F8    push        ebx
 004CA9F9    push        esi
 004CA9FA    push        edi
 004CA9FB    add         esp,0FFFFFFA8
 004CA9FE    mov         ebx,eax
 004CAA00    mov         dl,1
 004CAA02    mov         eax,[00472CE4];TMemoryStream
 004CAA07    call        TObject.Create
 004CAA0C    mov         esi,eax
 004CAA0E    mov         edx,esi
 004CAA10    mov         eax,ebx
 004CAA12    mov         ecx,dword ptr [eax]
 004CAA14    call        dword ptr [ecx+60]
 004CAA17    mov         eax,esi
 004CAA19    mov         edx,dword ptr [eax]
 004CAA1B    call        dword ptr [edx]
 004CAA1D    push        edx
 004CAA1E    push        eax
 004CAA1F    mov         eax,esi
 004CAA21    call        TStream.SetSize64
 004CAA26    mov         eax,dword ptr [ebx+28]
 004CAA29    push        esi
 004CAA2A    lea         esi,[eax+18]
 004CAA2D    lea         edi,[esp+8]
 004CAA31    mov         ecx,15
 004CAA36    rep movs    dword ptr [edi],dword ptr [esi]
 004CAA38    pop         esi
 004CAA39    xor         eax,eax
 004CAA3B    mov         dword ptr [esp+18],eax
 004CAA3F    mov         eax,ebx
 004CAA41    call        TBitmap.FreeContext
 004CAA46    lea         eax,[ebx+2C]
 004CAA49    mov         dword ptr [esp],eax
 004CAA4C    mov         eax,dword ptr [esp]
 004CAA4F    mov         eax,dword ptr [eax]
 004CAA51    mov         edx,dword ptr [esp]
 004CAA54    xor         ecx,ecx
 004CAA56    mov         dword ptr [edx],ecx
 004CAA58    call        TObject.Free
 004CAA5D    lea         eax,[esp+4]
 004CAA61    push        eax
 004CAA62    mov         eax,dword ptr [ebx+28]
 004CAA65    movzx       eax,byte ptr [eax+71]
 004CAA69    push        eax
 004CAA6A    push        esi
 004CAA6B    xor         ecx,ecx
 004CAA6D    xor         edx,edx
 004CAA6F    mov         eax,ebx
 004CAA71    call        TBitmap.NewImage
 004CAA76    add         esp,58
 004CAA79    pop         edi
 004CAA7A    pop         esi
 004CAA7B    pop         ebx
 004CAA7C    ret
*}
end;

//004CAA80
procedure TBitmap.Draw(ACanvas:TCanvas; const Rect:Windows.TRect);
begin
{*
 004CAA80    push        ebp
 004CAA81    mov         ebp,esp
 004CAA83    add         esp,0FFFFFFE0
 004CAA86    push        ebx
 004CAA87    push        esi
 004CAA88    push        edi
 004CAA89    mov         edi,ecx
 004CAA8B    mov         dword ptr [ebp-4],edx
 004CAA8E    mov         ebx,eax
 004CAA90    mov         esi,dword ptr [ebx+28]
 004CAA93    movzx       edx,byte ptr ds:[4CAD28]
 004CAA9A    mov         eax,dword ptr [ebp-4]
 004CAA9D    mov         ecx,dword ptr [eax]
 004CAA9F    call        dword ptr [ecx+2C]
 004CAAA2    mov         eax,ebx
 004CAAA4    call        TBitmap.PaletteNeeded
 004CAAA9    xor         eax,eax
 004CAAAB    mov         dword ptr [ebp-8],eax
 004CAAAE    mov         byte ptr [ebp-9],0
 004CAAB2    mov         eax,dword ptr [esi+10]
 004CAAB5    test        eax,eax
>004CAAB7    je          004CAADB
 004CAAB9    push        0FF
 004CAABB    push        eax
 004CAABC    mov         eax,dword ptr [ebp-4]
 004CAABF    mov         eax,dword ptr [eax+38]
 004CAAC2    push        eax
 004CAAC3    call        gdi32.SelectPalette
 004CAAC8    mov         dword ptr [ebp-8],eax
 004CAACB    mov         eax,dword ptr [ebp-4]
 004CAACE    mov         eax,dword ptr [eax+38]
 004CAAD1    push        eax
 004CAAD2    call        gdi32.RealizePalette
 004CAAD7    mov         byte ptr [ebp-9],1
 004CAADB    push        0C
 004CAADD    mov         eax,dword ptr [ebp-4]
 004CAAE0    mov         eax,dword ptr [eax+38]
 004CAAE3    push        eax
 004CAAE4    call        gdi32.GetDeviceCaps
 004CAAE9    push        eax
 004CAAEA    push        0E
 004CAAEC    mov         eax,dword ptr [ebp-4]
 004CAAEF    mov         eax,dword ptr [eax+38]
 004CAAF2    push        eax
 004CAAF3    call        gdi32.GetDeviceCaps
 004CAAF8    mov         edx,eax
 004CAAFA    pop         eax
 004CAAFB    imul        edx
 004CAAFD    cmp         eax,8
>004CAB00    jg          004CAB11
 004CAB02    movzx       edx,word ptr [esi+2A]
 004CAB06    movzx       ecx,word ptr [esi+28]
 004CAB0A    imul        edx,ecx
 004CAB0D    cmp         eax,edx
>004CAB0F    jl          004CAB15
 004CAB11    xor         eax,eax
>004CAB13    jmp         004CAB17
 004CAB15    mov         al,1
 004CAB17    test        al,al
>004CAB19    je          004CAB53
 004CAB1B    lea         eax,[ebp-14]
 004CAB1E    push        eax
 004CAB1F    mov         eax,dword ptr [ebp-4]
 004CAB22    mov         eax,dword ptr [eax+38]
 004CAB25    push        eax
 004CAB26    call        gdi32.GetBrushOrgEx
 004CAB2B    push        4
 004CAB2D    mov         eax,dword ptr [ebp-4]
 004CAB30    mov         eax,dword ptr [eax+38]
 004CAB33    push        eax
 004CAB34    call        gdi32.SetStretchBltMode
 004CAB39    lea         eax,[ebp-14]
 004CAB3C    push        eax
 004CAB3D    mov         eax,dword ptr [ebp-10]
 004CAB40    push        eax
 004CAB41    mov         eax,dword ptr [ebp-14]
 004CAB44    push        eax
 004CAB45    mov         eax,dword ptr [ebp-4]
 004CAB48    mov         eax,dword ptr [eax+38]
 004CAB4B    push        eax
 004CAB4C    call        gdi32.SetBrushOrgEx
>004CAB51    jmp         004CAB6E
 004CAB53    mov         eax,ebx
 004CAB55    call        TBitmap.GetMonochrome
 004CAB5A    test        al,al
>004CAB5C    jne         004CAB6E
 004CAB5E    push        3
 004CAB60    mov         eax,dword ptr [ebp-4]
 004CAB63    call        TCanvas.GetHandle
 004CAB68    push        eax
 004CAB69    call        gdi32.SetStretchBltMode
 004CAB6E    xor         eax,eax
 004CAB70    push        ebp
 004CAB71    push        4CAD17
 004CAB76    push        dword ptr fs:[eax]
 004CAB79    mov         dword ptr fs:[eax],esp
 004CAB7C    mov         eax,ebx
 004CAB7E    mov         edx,dword ptr [eax]
 004CAB80    call        dword ptr [edx+2C]
 004CAB83    test        al,al
>004CAB85    je          004CAB8E
 004CAB87    mov         eax,ebx
 004CAB89    call        TBitmap.MaskHandleNeeded
 004CAB8E    mov         eax,ebx
 004CAB90    call        TBitmap.GetCanvas
 004CAB95    movzx       edx,byte ptr ds:[4CAD28]
 004CAB9C    mov         ecx,dword ptr [eax]
 004CAB9E    call        dword ptr [ecx+2C]
 004CABA1    mov         eax,ebx
 004CABA3    mov         edx,dword ptr [eax]
 004CABA5    call        dword ptr [edx+2C]
 004CABA8    test        al,al
>004CABAA    je          004CAC5A
 004CABB0    xor         eax,eax
 004CABB2    mov         dword ptr [ebp-1C],eax
 004CABB5    xor         eax,eax
 004CABB7    mov         dword ptr [ebp-18],eax
 004CABBA    xor         eax,eax
 004CABBC    push        ebp
 004CABBD    push        4CAC53
 004CABC2    push        dword ptr fs:[eax]
 004CABC5    mov         dword ptr fs:[eax],esp
 004CABC8    push        0
 004CABCA    call        gdi32.CreateCompatibleDC
 004CABCF    call        GDICheck
 004CABD4    mov         dword ptr [ebp-18],eax
 004CABD7    mov         eax,dword ptr [esi+0C]
 004CABDA    push        eax
 004CABDB    mov         eax,dword ptr [ebp-18]
 004CABDE    push        eax
 004CABDF    call        gdi32.SelectObject
 004CABE4    mov         dword ptr [ebp-1C],eax
 004CABE7    mov         eax,dword ptr [edi+8]
 004CABEA    sub         eax,dword ptr [edi]
 004CABEC    push        eax
 004CABED    mov         eax,dword ptr [edi+0C]
 004CABF0    sub         eax,dword ptr [edi+4]
 004CABF3    push        eax
 004CABF4    mov         eax,ebx
 004CABF6    call        TBitmap.GetCanvas
 004CABFB    mov         eax,dword ptr [eax+38]
 004CABFE    push        eax
 004CABFF    push        0
 004CAC01    push        0
 004CAC03    mov         eax,dword ptr [esi+1C]
 004CAC06    push        eax
 004CAC07    mov         eax,dword ptr [esi+20]
 004CAC0A    push        eax
 004CAC0B    mov         eax,dword ptr [ebp-18]
 004CAC0E    push        eax
 004CAC0F    push        0
 004CAC11    push        0
 004CAC13    mov         ecx,dword ptr [edi+4]
 004CAC16    mov         edx,dword ptr [edi]
 004CAC18    mov         eax,dword ptr [ebp-4]
 004CAC1B    mov         eax,dword ptr [eax+38]
 004CAC1E    call        TransparentStretchBlt
 004CAC23    xor         eax,eax
 004CAC25    pop         edx
 004CAC26    pop         ecx
 004CAC27    pop         ecx
 004CAC28    mov         dword ptr fs:[eax],edx
 004CAC2B    push        4CACF1
 004CAC30    cmp         dword ptr [ebp-1C],0
>004CAC34    je          004CAC43
 004CAC36    mov         eax,dword ptr [ebp-1C]
 004CAC39    push        eax
 004CAC3A    mov         eax,dword ptr [ebp-18]
 004CAC3D    push        eax
 004CAC3E    call        gdi32.SelectObject
 004CAC43    cmp         dword ptr [ebp-18],0
>004CAC47    je          004CAC52
 004CAC49    mov         eax,dword ptr [ebp-18]
 004CAC4C    push        eax
 004CAC4D    call        gdi32.DeleteDC
 004CAC52    ret
>004CAC53    jmp         @HandleFinally
>004CAC58    jmp         004CAC30
 004CAC5A    mov         eax,ebx
 004CAC5C    mov         edx,dword ptr [eax]
 004CAC5E    call        dword ptr [edx+4C]
 004CAC61    test        al,al
>004CAC63    je          004CACB3
 004CAC65    mov         byte ptr [ebp-20],0
 004CAC69    mov         byte ptr [ebp-1F],0
 004CAC6D    mov         byte ptr [ebp-1E],0FF
 004CAC71    mov         byte ptr [ebp-1D],1
 004CAC75    push        dword ptr [ebp-20]
 004CAC78    mov         eax,dword ptr [esi+20]
 004CAC7B    push        eax
 004CAC7C    mov         eax,dword ptr [esi+1C]
 004CAC7F    push        eax
 004CAC80    push        0
 004CAC82    push        0
 004CAC84    mov         eax,ebx
 004CAC86    call        TBitmap.GetCanvas
 004CAC8B    mov         eax,dword ptr [eax+38]
 004CAC8E    push        eax
 004CAC8F    mov         eax,dword ptr [edi+0C]
 004CAC92    sub         eax,dword ptr [edi+4]
 004CAC95    push        eax
 004CAC96    mov         eax,dword ptr [edi+8]
 004CAC99    sub         eax,dword ptr [edi]
 004CAC9B    push        eax
 004CAC9C    mov         eax,dword ptr [edi+4]
 004CAC9F    push        eax
 004CACA0    mov         eax,dword ptr [edi]
 004CACA2    push        eax
 004CACA3    mov         eax,dword ptr [ebp-4]
 004CACA6    call        TCanvas.GetHandle
 004CACAB    push        eax
 004CACAC    call        AlphaBlend
>004CACB1    jmp         004CACF1
 004CACB3    mov         eax,dword ptr [ebp-4]
 004CACB6    mov         eax,dword ptr [eax+54]
 004CACB9    push        eax
 004CACBA    mov         eax,dword ptr [esi+20]
 004CACBD    push        eax
 004CACBE    mov         eax,dword ptr [esi+1C]
 004CACC1    push        eax
 004CACC2    push        0
 004CACC4    push        0
 004CACC6    mov         eax,ebx
 004CACC8    call        TBitmap.GetCanvas
 004CACCD    mov         eax,dword ptr [eax+38]
 004CACD0    push        eax
 004CACD1    mov         eax,dword ptr [edi+0C]
 004CACD4    sub         eax,dword ptr [edi+4]
 004CACD7    push        eax
 004CACD8    mov         eax,dword ptr [edi+8]
 004CACDB    sub         eax,dword ptr [edi]
 004CACDD    push        eax
 004CACDE    mov         eax,dword ptr [edi+4]
 004CACE1    push        eax
 004CACE2    mov         eax,dword ptr [edi]
 004CACE4    push        eax
 004CACE5    mov         eax,dword ptr [ebp-4]
 004CACE8    mov         eax,dword ptr [eax+38]
 004CACEB    push        eax
 004CACEC    call        gdi32.StretchBlt
 004CACF1    xor         eax,eax
 004CACF3    pop         edx
 004CACF4    pop         ecx
 004CACF5    pop         ecx
 004CACF6    mov         dword ptr fs:[eax],edx
 004CACF9    push        4CAD1E
 004CACFE    cmp         byte ptr [ebp-9],0
>004CAD02    je          004CAD16
 004CAD04    push        0FF
 004CAD06    mov         eax,dword ptr [ebp-8]
 004CAD09    push        eax
 004CAD0A    mov         eax,dword ptr [ebp-4]
 004CAD0D    mov         eax,dword ptr [eax+38]
 004CAD10    push        eax
 004CAD11    call        gdi32.SelectPalette
 004CAD16    ret
>004CAD17    jmp         @HandleFinally
>004CAD1C    jmp         004CACFE
 004CAD1E    pop         edi
 004CAD1F    pop         esi
 004CAD20    pop         ebx
 004CAD21    mov         esp,ebp
 004CAD23    pop         ebp
 004CAD24    ret
*}
end;

//004CAD2C
procedure TBitmap.DrawTransparent(ACanvas:TCanvas; const Rect:Windows.TRect; Opacity:Byte);
begin
{*
 004CAD2C    push        ebp
 004CAD2D    mov         ebp,esp
 004CAD2F    add         esp,0FFFFFFE0
 004CAD32    push        ebx
 004CAD33    push        esi
 004CAD34    push        edi
 004CAD35    mov         edi,ecx
 004CAD37    mov         dword ptr [ebp-4],edx
 004CAD3A    mov         ebx,eax
 004CAD3C    mov         esi,dword ptr [ebx+28]
 004CAD3F    movzx       edx,byte ptr ds:[4CAFE4]
 004CAD46    mov         eax,dword ptr [ebp-4]
 004CAD49    mov         ecx,dword ptr [eax]
 004CAD4B    call        dword ptr [ecx+2C]
 004CAD4E    mov         eax,ebx
 004CAD50    call        TBitmap.PaletteNeeded
 004CAD55    xor         eax,eax
 004CAD57    mov         dword ptr [ebp-8],eax
 004CAD5A    mov         byte ptr [ebp-9],0
 004CAD5E    mov         eax,dword ptr [esi+10]
 004CAD61    test        eax,eax
>004CAD63    je          004CAD87
 004CAD65    push        0FF
 004CAD67    push        eax
 004CAD68    mov         eax,dword ptr [ebp-4]
 004CAD6B    mov         eax,dword ptr [eax+38]
 004CAD6E    push        eax
 004CAD6F    call        gdi32.SelectPalette
 004CAD74    mov         dword ptr [ebp-8],eax
 004CAD77    mov         eax,dword ptr [ebp-4]
 004CAD7A    mov         eax,dword ptr [eax+38]
 004CAD7D    push        eax
 004CAD7E    call        gdi32.RealizePalette
 004CAD83    mov         byte ptr [ebp-9],1
 004CAD87    push        0C
 004CAD89    mov         eax,dword ptr [ebp-4]
 004CAD8C    mov         eax,dword ptr [eax+38]
 004CAD8F    push        eax
 004CAD90    call        gdi32.GetDeviceCaps
 004CAD95    push        eax
 004CAD96    push        0E
 004CAD98    mov         eax,dword ptr [ebp-4]
 004CAD9B    mov         eax,dword ptr [eax+38]
 004CAD9E    push        eax
 004CAD9F    call        gdi32.GetDeviceCaps
 004CADA4    mov         edx,eax
 004CADA6    pop         eax
 004CADA7    imul        edx
 004CADA9    cmp         eax,8
>004CADAC    jg          004CADBD
 004CADAE    movzx       edx,word ptr [esi+2A]
 004CADB2    movzx       ecx,word ptr [esi+28]
 004CADB6    imul        edx,ecx
 004CADB9    cmp         eax,edx
>004CADBB    jl          004CADC1
 004CADBD    xor         eax,eax
>004CADBF    jmp         004CADC3
 004CADC1    mov         al,1
 004CADC3    test        al,al
>004CADC5    je          004CADFF
 004CADC7    lea         eax,[ebp-14]
 004CADCA    push        eax
 004CADCB    mov         eax,dword ptr [ebp-4]
 004CADCE    mov         eax,dword ptr [eax+38]
 004CADD1    push        eax
 004CADD2    call        gdi32.GetBrushOrgEx
 004CADD7    push        4
 004CADD9    mov         eax,dword ptr [ebp-4]
 004CADDC    mov         eax,dword ptr [eax+38]
 004CADDF    push        eax
 004CADE0    call        gdi32.SetStretchBltMode
 004CADE5    lea         eax,[ebp-14]
 004CADE8    push        eax
 004CADE9    mov         eax,dword ptr [ebp-10]
 004CADEC    push        eax
 004CADED    mov         eax,dword ptr [ebp-14]
 004CADF0    push        eax
 004CADF1    mov         eax,dword ptr [ebp-4]
 004CADF4    mov         eax,dword ptr [eax+38]
 004CADF7    push        eax
 004CADF8    call        gdi32.SetBrushOrgEx
>004CADFD    jmp         004CAE1A
 004CADFF    mov         eax,ebx
 004CAE01    call        TBitmap.GetMonochrome
 004CAE06    test        al,al
>004CAE08    jne         004CAE1A
 004CAE0A    push        3
 004CAE0C    mov         eax,dword ptr [ebp-4]
 004CAE0F    call        TCanvas.GetHandle
 004CAE14    push        eax
 004CAE15    call        gdi32.SetStretchBltMode
 004CAE1A    xor         eax,eax
 004CAE1C    push        ebp
 004CAE1D    push        4CAFD3
 004CAE22    push        dword ptr fs:[eax]
 004CAE25    mov         dword ptr fs:[eax],esp
 004CAE28    mov         eax,ebx
 004CAE2A    mov         edx,dword ptr [eax]
 004CAE2C    call        dword ptr [edx+2C]
 004CAE2F    test        al,al
>004CAE31    je          004CAE3A
 004CAE33    mov         eax,ebx
 004CAE35    call        TBitmap.MaskHandleNeeded
 004CAE3A    mov         eax,ebx
 004CAE3C    call        TBitmap.GetCanvas
 004CAE41    movzx       edx,byte ptr ds:[4CAFE4]
 004CAE48    mov         ecx,dword ptr [eax]
 004CAE4A    call        dword ptr [ecx+2C]
 004CAE4D    mov         eax,ebx
 004CAE4F    mov         edx,dword ptr [eax]
 004CAE51    call        dword ptr [edx+2C]
 004CAE54    test        al,al
>004CAE56    je          004CAF06
 004CAE5C    xor         eax,eax
 004CAE5E    mov         dword ptr [ebp-1C],eax
 004CAE61    xor         eax,eax
 004CAE63    mov         dword ptr [ebp-18],eax
 004CAE66    xor         eax,eax
 004CAE68    push        ebp
 004CAE69    push        4CAEFF
 004CAE6E    push        dword ptr fs:[eax]
 004CAE71    mov         dword ptr fs:[eax],esp
 004CAE74    push        0
 004CAE76    call        gdi32.CreateCompatibleDC
 004CAE7B    call        GDICheck
 004CAE80    mov         dword ptr [ebp-18],eax
 004CAE83    mov         eax,dword ptr [esi+0C]
 004CAE86    push        eax
 004CAE87    mov         eax,dword ptr [ebp-18]
 004CAE8A    push        eax
 004CAE8B    call        gdi32.SelectObject
 004CAE90    mov         dword ptr [ebp-1C],eax
 004CAE93    mov         eax,dword ptr [edi+8]
 004CAE96    sub         eax,dword ptr [edi]
 004CAE98    push        eax
 004CAE99    mov         eax,dword ptr [edi+0C]
 004CAE9C    sub         eax,dword ptr [edi+4]
 004CAE9F    push        eax
 004CAEA0    mov         eax,ebx
 004CAEA2    call        TBitmap.GetCanvas
 004CAEA7    mov         eax,dword ptr [eax+38]
 004CAEAA    push        eax
 004CAEAB    push        0
 004CAEAD    push        0
 004CAEAF    mov         eax,dword ptr [esi+1C]
 004CAEB2    push        eax
 004CAEB3    mov         eax,dword ptr [esi+20]
 004CAEB6    push        eax
 004CAEB7    mov         eax,dword ptr [ebp-18]
 004CAEBA    push        eax
 004CAEBB    push        0
 004CAEBD    push        0
 004CAEBF    mov         ecx,dword ptr [edi+4]
 004CAEC2    mov         edx,dword ptr [edi]
 004CAEC4    mov         eax,dword ptr [ebp-4]
 004CAEC7    mov         eax,dword ptr [eax+38]
 004CAECA    call        TransparentStretchBlt
 004CAECF    xor         eax,eax
 004CAED1    pop         edx
 004CAED2    pop         ecx
 004CAED3    pop         ecx
 004CAED4    mov         dword ptr fs:[eax],edx
 004CAED7    push        4CAFAD
 004CAEDC    cmp         dword ptr [ebp-1C],0
>004CAEE0    je          004CAEEF
 004CAEE2    mov         eax,dword ptr [ebp-1C]
 004CAEE5    push        eax
 004CAEE6    mov         eax,dword ptr [ebp-18]
 004CAEE9    push        eax
 004CAEEA    call        gdi32.SelectObject
 004CAEEF    cmp         dword ptr [ebp-18],0
>004CAEF3    je          004CAEFE
 004CAEF5    mov         eax,dword ptr [ebp-18]
 004CAEF8    push        eax
 004CAEF9    call        gdi32.DeleteDC
 004CAEFE    ret
>004CAEFF    jmp         @HandleFinally
>004CAF04    jmp         004CAEDC
 004CAF06    cmp         word ptr [esi+3E],20
>004CAF0B    jne         004CAF5E
 004CAF0D    mov         byte ptr [ebp-20],0
 004CAF11    mov         byte ptr [ebp-1F],0
 004CAF15    movzx       eax,byte ptr [ebp+8]
 004CAF19    mov         byte ptr [ebp-1E],al
 004CAF1C    mov         byte ptr [ebp-1D],1
 004CAF20    push        dword ptr [ebp-20]
 004CAF23    mov         eax,dword ptr [esi+20]
 004CAF26    push        eax
 004CAF27    mov         eax,dword ptr [esi+1C]
 004CAF2A    push        eax
 004CAF2B    push        0
 004CAF2D    push        0
 004CAF2F    mov         eax,ebx
 004CAF31    call        TBitmap.GetCanvas
 004CAF36    mov         eax,dword ptr [eax+38]
 004CAF39    push        eax
 004CAF3A    mov         eax,dword ptr [edi+0C]
 004CAF3D    sub         eax,dword ptr [edi+4]
 004CAF40    push        eax
 004CAF41    mov         eax,dword ptr [edi+8]
 004CAF44    sub         eax,dword ptr [edi]
 004CAF46    push        eax
 004CAF47    mov         eax,dword ptr [edi+4]
 004CAF4A    push        eax
 004CAF4B    mov         eax,dword ptr [edi]
 004CAF4D    push        eax
 004CAF4E    mov         eax,dword ptr [ebp-4]
 004CAF51    call        TCanvas.GetHandle
 004CAF56    push        eax
 004CAF57    call        AlphaBlend
>004CAF5C    jmp         004CAFAD
 004CAF5E    mov         byte ptr [ebp-20],0
 004CAF62    mov         byte ptr [ebp-1F],0
 004CAF66    movzx       eax,byte ptr [ebp+8]
 004CAF6A    mov         byte ptr [ebp-1E],al
 004CAF6D    mov         byte ptr [ebp-1D],0
 004CAF71    push        dword ptr [ebp-20]
 004CAF74    mov         eax,dword ptr [esi+20]
 004CAF77    push        eax
 004CAF78    mov         eax,dword ptr [esi+1C]
 004CAF7B    push        eax
 004CAF7C    push        0
 004CAF7E    push        0
 004CAF80    mov         eax,ebx
 004CAF82    call        TBitmap.GetCanvas
 004CAF87    mov         eax,dword ptr [eax+38]
 004CAF8A    push        eax
 004CAF8B    mov         eax,dword ptr [edi+0C]
 004CAF8E    sub         eax,dword ptr [edi+4]
 004CAF91    push        eax
 004CAF92    mov         eax,dword ptr [edi+8]
 004CAF95    sub         eax,dword ptr [edi]
 004CAF97    push        eax
 004CAF98    mov         eax,dword ptr [edi+4]
 004CAF9B    push        eax
 004CAF9C    mov         eax,dword ptr [edi]
 004CAF9E    push        eax
 004CAF9F    mov         eax,dword ptr [ebp-4]
 004CAFA2    call        TCanvas.GetHandle
 004CAFA7    push        eax
 004CAFA8    call        AlphaBlend
 004CAFAD    xor         eax,eax
 004CAFAF    pop         edx
 004CAFB0    pop         ecx
 004CAFB1    pop         ecx
 004CAFB2    mov         dword ptr fs:[eax],edx
 004CAFB5    push        4CAFDA
 004CAFBA    cmp         byte ptr [ebp-9],0
>004CAFBE    je          004CAFD2
 004CAFC0    push        0FF
 004CAFC2    mov         eax,dword ptr [ebp-8]
 004CAFC5    push        eax
 004CAFC6    mov         eax,dword ptr [ebp-4]
 004CAFC9    mov         eax,dword ptr [eax+38]
 004CAFCC    push        eax
 004CAFCD    call        gdi32.SelectPalette
 004CAFD2    ret
>004CAFD3    jmp         @HandleFinally
>004CAFD8    jmp         004CAFBA
 004CAFDA    pop         edi
 004CAFDB    pop         esi
 004CAFDC    pop         ebx
 004CAFDD    mov         esp,ebp
 004CAFDF    pop         ebp
 004CAFE0    ret         4
*}
end;

//004CAFE8
procedure TBitmap.FreeImage;
begin
{*
 004CAFE8    push        ebx
 004CAFE9    push        esi
 004CAFEA    mov         esi,eax
 004CAFEC    mov         ebx,dword ptr [esi+28]
 004CAFEF    cmp         dword ptr [ebx+4],1
>004CAFF3    jle         004CB01C
 004CAFF5    mov         eax,esi
 004CAFF7    call        TBitmap.HandleNeeded
 004CAFFC    cmp         byte ptr [ebx+70],0
>004CB000    je          004CB006
 004CB002    xor         eax,eax
>004CB004    jmp         004CB009
 004CB006    mov         eax,dword ptr [ebx+10]
 004CB009    lea         edx,[ebx+18]
 004CB00C    push        edx
 004CB00D    mov         ecx,eax
 004CB00F    mov         edx,dword ptr [ebx+8]
 004CB012    mov         eax,esi
 004CB014    call        TBitmap.CopyImage
 004CB019    pop         esi
 004CB01A    pop         ebx
 004CB01B    ret
 004CB01C    mov         eax,dword ptr [ebx+8]
 004CB01F    test        eax,eax
>004CB021    je          004CB048
 004CB023    cmp         eax,dword ptr [ebx+14]
>004CB026    je          004CB048
 004CB028    mov         esi,dword ptr [ebx+14]
 004CB02B    test        esi,esi
>004CB02D    je          004CB03E
 004CB02F    push        esi
 004CB030    call        gdi32.DeleteObject
 004CB035    test        eax,eax
>004CB037    jne         004CB03E
 004CB039    call        GDIError
 004CB03E    xor         eax,eax
 004CB040    mov         dword ptr [ebx+14],eax
 004CB043    xor         eax,eax
 004CB045    mov         dword ptr [ebx+2C],eax
 004CB048    pop         esi
 004CB049    pop         ebx
 004CB04A    ret
*}
end;

//004CB04C
function TBitmap.GetEmpty:Boolean;
begin
{*
 004CB04C    mov         eax,dword ptr [eax+28]
 004CB04F    cmp         dword ptr [eax+8],0
>004CB053    jne         004CB061
 004CB055    cmp         dword ptr [eax+14],0
>004CB059    jne         004CB061
 004CB05B    cmp         dword ptr [eax+6C],0
>004CB05F    je          004CB064
 004CB061    xor         eax,eax
 004CB063    ret
 004CB064    mov         al,1
 004CB066    ret
*}
end;

//004CB068
function TBitmap.GetCanvas:TCanvas;
begin
{*
 004CB068    push        ebx
 004CB069    push        esi
 004CB06A    mov         ebx,eax
 004CB06C    cmp         dword ptr [ebx+2C],0
>004CB070    jne         004CB0A7
 004CB072    mov         eax,ebx
 004CB074    call        TBitmap.HandleNeeded
 004CB079    cmp         dword ptr [ebx+2C],0
>004CB07D    jne         004CB0A7
 004CB07F    mov         ecx,ebx
 004CB081    mov         dl,1
 004CB083    mov         eax,[004C973C];TBitmapCanvas
 004CB088    call        TBitmapCanvas.Create
 004CB08D    mov         esi,eax
 004CB08F    mov         dword ptr [ebx+2C],esi
 004CB092    mov         dword ptr [esi+0C],ebx
 004CB095    mov         eax,dword ptr [ebx]
 004CB097    mov         eax,dword ptr [eax+10]
 004CB09A    mov         dword ptr [esi+8],eax
 004CB09D    mov         dword ptr [esi+14],ebx
 004CB0A0    mov         dword ptr [esi+10],4CA9B8;TBitmap.Changing
 004CB0A7    mov         eax,dword ptr [ebx+2C]
 004CB0AA    pop         esi
 004CB0AB    pop         ebx
 004CB0AC    ret
*}
end;

//004CB0B0
function TBitmap.GetHandle:HBITMAP;
begin
{*
 004CB0B0    push        ebx
 004CB0B1    mov         ebx,eax
 004CB0B3    mov         eax,ebx
 004CB0B5    call        TBitmap.FreeContext
 004CB0BA    mov         eax,ebx
 004CB0BC    call        TBitmap.HandleNeeded
 004CB0C1    mov         edx,ebx
 004CB0C3    mov         eax,ebx
 004CB0C5    call        TBitmap.Changing
 004CB0CA    mov         eax,dword ptr [ebx+28]
 004CB0CD    mov         eax,dword ptr [eax+8]
 004CB0D0    pop         ebx
 004CB0D1    ret
*}
end;

//004CB0D4
function TBitmap.GetHandleType:TBitmapHandleType;
begin
{*
 004CB0D4    mov         eax,dword ptr [eax+28]
 004CB0D7    mov         edx,dword ptr [eax+8]
 004CB0DA    test        edx,edx
>004CB0DC    je          004CB0E3
 004CB0DE    cmp         edx,dword ptr [eax+14]
>004CB0E1    jne         004CB0FA
 004CB0E3    cmp         dword ptr [eax+14],0
>004CB0E7    jne         004CB0F7
 004CB0E9    cmp         dword ptr [eax+30],0
>004CB0ED    jne         004CB0F3
 004CB0EF    mov         al,1
>004CB0F1    jmp         004CB0FC
 004CB0F3    xor         eax,eax
>004CB0F5    jmp         004CB0FC
 004CB0F7    xor         eax,eax
 004CB0F9    ret
 004CB0FA    mov         al,1
 004CB0FC    ret
*}
end;

//004CB100
function TBitmap.GetHeight:Integer;
begin
{*
 004CB100    mov         ecx,eax
 004CB102    mov         eax,dword ptr [ecx+28]
 004CB105    mov         eax,dword ptr [eax+20]
 004CB108    cdq
 004CB109    xor         eax,edx
 004CB10B    sub         eax,edx
 004CB10D    ret
*}
end;

//004CB110
function TBitmap.GetMaskHandle:HBITMAP;
begin
{*
 004CB110    push        ebx
 004CB111    mov         ebx,eax
 004CB113    mov         eax,ebx
 004CB115    call        TBitmap.MaskHandleNeeded
 004CB11A    mov         eax,dword ptr [ebx+28]
 004CB11D    mov         eax,dword ptr [eax+0C]
 004CB120    pop         ebx
 004CB121    ret
*}
end;

//004CB124
function TBitmap.GetMonochrome:Boolean;
begin
{*
 004CB124    mov         eax,dword ptr [eax+28]
 004CB127    add         eax,18
 004CB12A    cmp         word ptr [eax+10],1
>004CB12F    jne         004CB138
 004CB131    cmp         word ptr [eax+12],1
>004CB136    je          004CB13B
 004CB138    xor         eax,eax
 004CB13A    ret
 004CB13B    mov         al,1
 004CB13D    ret
*}
end;

//004CB140
function TBitmap.GetPalette:HPALETTE;
begin
{*
 004CB140    push        ebx
 004CB141    mov         ebx,eax
 004CB143    mov         eax,ebx
 004CB145    call        TBitmap.PaletteNeeded
 004CB14A    mov         eax,dword ptr [ebx+28]
 004CB14D    mov         eax,dword ptr [eax+10]
 004CB150    pop         ebx
 004CB151    ret
*}
end;

//004CB154
function TBitmap.GetPixelFormat:TPixelFormat;
begin
{*
 004CB154    push        ebx
 004CB155    push        esi
 004CB156    mov         esi,eax
 004CB158    mov         bl,8
 004CB15A    mov         eax,esi
 004CB15C    call        TBitmap.GetHandleType
 004CB161    cmp         al,1
>004CB163    jne         004CB169
 004CB165    xor         ebx,ebx
>004CB167    jmp         004CB1D0
 004CB169    mov         eax,dword ptr [esi+28]
 004CB16C    lea         edx,[eax+18]
 004CB16F    lea         eax,[edx+18]
 004CB172    movzx       ecx,word ptr [eax+0E]
 004CB176    cmp         ecx,10
>004CB179    jg          004CB18C
>004CB17B    je          004CB1A4
 004CB17D    dec         ecx
>004CB17E    je          004CB198
 004CB180    sub         ecx,3
>004CB183    je          004CB19C
 004CB185    sub         ecx,4
>004CB188    je          004CB1A0
>004CB18A    jmp         004CB1D0
 004CB18C    sub         ecx,18
>004CB18F    je          004CB1C4
 004CB191    sub         ecx,8
>004CB194    je          004CB1C8
>004CB196    jmp         004CB1D0
 004CB198    mov         bl,1
>004CB19A    jmp         004CB1D0
 004CB19C    mov         bl,2
>004CB19E    jmp         004CB1D0
 004CB1A0    mov         bl,3
>004CB1A2    jmp         004CB1D0
 004CB1A4    mov         eax,dword ptr [eax+10]
 004CB1A7    sub         eax,1
>004CB1AA    jb          004CB1B3
 004CB1AC    sub         eax,2
>004CB1AF    je          004CB1B7
>004CB1B1    jmp         004CB1D0
 004CB1B3    mov         bl,4
>004CB1B5    jmp         004CB1D0
 004CB1B7    cmp         dword ptr [edx+44],7E0
>004CB1BE    jne         004CB1D0
 004CB1C0    mov         bl,5
>004CB1C2    jmp         004CB1D0
 004CB1C4    mov         bl,6
>004CB1C6    jmp         004CB1D0
 004CB1C8    cmp         dword ptr [eax+10],0
>004CB1CC    jne         004CB1D0
 004CB1CE    mov         bl,7
 004CB1D0    mov         eax,ebx
 004CB1D2    pop         esi
 004CB1D3    pop         ebx
 004CB1D4    ret
*}
end;

//004CB1D8
function TBitmap.GetScanline(Row:Integer):Pointer;
begin
{*
 004CB1D8    push        ebx
 004CB1D9    push        esi
 004CB1DA    push        edi
 004CB1DB    push        ebp
 004CB1DC    mov         edi,edx
 004CB1DE    mov         ebx,eax
 004CB1E0    mov         edx,ebx
 004CB1E2    mov         eax,ebx
 004CB1E4    call        TBitmap.Changing
 004CB1E9    mov         eax,dword ptr [ebx+28];TBitmap.FImage:TBitmapImage
 004CB1EC    add         eax,18;TBitmapImage.FDIB:tagDIBSECTION
 004CB1EF    mov         ebp,eax
 004CB1F1    lea         esi,[eax+18];tagDIBSECTION.dsBmih:tagBITMAPINFOHEADER
 004CB1F4    test        edi,edi
>004CB1F6    jl          004CB1FD
 004CB1F8    cmp         edi,dword ptr [ebp+8];tagDIBSECTION.dsBm:tagBITMAP
>004CB1FB    jl          004CB207
 004CB1FD    mov         eax,[007C4BAC];^SResString215:TResStringRec
 004CB202    call        InvalidGraphic
 004CB207    mov         eax,ebx
 004CB209    call        TBitmap.DIBNeeded
 004CB20E    call        gdi32.GdiFlush
 004CB213    mov         eax,dword ptr [esi+8]
 004CB216    test        eax,eax
>004CB218    jle         004CB21F
 004CB21A    sub         eax,edi
 004CB21C    dec         eax
 004CB21D    mov         edi,eax
 004CB21F    movzx       edx,word ptr [esi+0E]
 004CB223    mov         ecx,20
 004CB228    mov         eax,dword ptr [esi+4]
 004CB22B    call        BytesPerScanline
 004CB230    imul        edi
 004CB232    add         eax,dword ptr [ebp+14];tagDIBSECTION.dsBm:tagBITMAP
 004CB235    pop         ebp
 004CB236    pop         edi
 004CB237    pop         esi
 004CB238    pop         ebx
 004CB239    ret
*}
end;

//004CB23C
function TBitmap.GetSupportsPartialTransparency:Boolean;
begin
{*
 004CB23C    mov         edx,dword ptr [eax+28]
 004CB23F    cmp         word ptr [edx+3E],20
>004CB244    jne         004CB24F
 004CB246    movzx       eax,byte ptr [eax+39]
 004CB24A    dec         eax
 004CB24B    sub         al,2
>004CB24D    jb          004CB252
 004CB24F    xor         eax,eax
 004CB251    ret
 004CB252    mov         al,1
 004CB254    ret
*}
end;

//004CB258
procedure TBitmap.PreMultiplyAlpha;
begin
{*
 004CB258    push        ebx
 004CB259    push        esi
 004CB25A    push        edi
 004CB25B    push        ebp
 004CB25C    mov         esi,eax
 004CB25E    mov         eax,dword ptr [esi+28]
 004CB261    cmp         word ptr [eax+3E],20
>004CB266    jne         004CB2F5
 004CB26C    cmp         dword ptr [eax+4],1
>004CB270    jle         004CB28C
 004CB272    mov         ebx,eax
 004CB274    mov         eax,esi
 004CB276    call        TBitmap.HandleNeeded
 004CB27B    lea         eax,[ebx+18]
 004CB27E    push        eax
 004CB27F    mov         ecx,dword ptr [ebx+10]
 004CB282    mov         edx,dword ptr [ebx+8]
 004CB285    mov         eax,esi
 004CB287    call        TBitmap.CopyImage
 004CB28C    mov         eax,dword ptr [esi+28]
 004CB28F    mov         eax,dword ptr [eax+2C]
 004CB292    test        eax,eax
>004CB294    je          004CB2F5
 004CB296    mov         ebx,eax
>004CB298    jmp         004CB2E5
 004CB29A    lea         eax,[ebx+3]
 004CB29D    movzx       edi,byte ptr [eax]
 004CB2A0    push        0FF
 004CB2A5    movzx       ebp,di
 004CB2A8    push        ebp
 004CB2A9    movzx       eax,byte ptr [ebx]
 004CB2AC    push        eax
 004CB2AD    call        kernel32.MulDiv
 004CB2B2    mov         byte ptr [ebx],al
 004CB2B4    push        0FF
 004CB2B9    push        ebp
 004CB2BA    lea         eax,[ebx+1]
 004CB2BD    movzx       eax,byte ptr [eax]
 004CB2C0    push        eax
 004CB2C1    call        kernel32.MulDiv
 004CB2C6    lea         edx,[ebx+1]
 004CB2C9    mov         byte ptr [edx],al
 004CB2CB    push        0FF
 004CB2D0    push        ebp
 004CB2D1    lea         eax,[ebx+2]
 004CB2D4    movzx       eax,byte ptr [eax]
 004CB2D7    push        eax
 004CB2D8    call        kernel32.MulDiv
 004CB2DD    lea         edx,[ebx+2]
 004CB2E0    mov         byte ptr [edx],al
 004CB2E2    add         ebx,4
 004CB2E5    mov         eax,dword ptr [esi+28]
 004CB2E8    mov         eax,dword ptr [eax+2C]
 004CB2EB    mov         edx,dword ptr [esi+28]
 004CB2EE    add         eax,dword ptr [edx+44]
 004CB2F1    cmp         eax,ebx
>004CB2F3    ja          004CB29A
 004CB2F5    pop         ebp
 004CB2F6    pop         edi
 004CB2F7    pop         esi
 004CB2F8    pop         ebx
 004CB2F9    ret
*}
end;

//004CB2FC
procedure TBitmap.UnPreMultiplyAlpha;
begin
{*
 004CB2FC    push        ebx
 004CB2FD    push        esi
 004CB2FE    push        edi
 004CB2FF    push        ebp
 004CB300    mov         esi,eax
 004CB302    mov         eax,dword ptr [esi+28]
 004CB305    cmp         word ptr [eax+3E],20
>004CB30A    jne         004CB3B5
 004CB310    cmp         dword ptr [eax+4],1
>004CB314    jle         004CB330
 004CB316    mov         ebx,eax
 004CB318    mov         eax,esi
 004CB31A    call        TBitmap.HandleNeeded
 004CB31F    lea         eax,[ebx+18]
 004CB322    push        eax
 004CB323    mov         ecx,dword ptr [ebx+10]
 004CB326    mov         edx,dword ptr [ebx+8]
 004CB329    mov         eax,esi
 004CB32B    call        TBitmap.CopyImage
 004CB330    mov         eax,dword ptr [esi+28]
 004CB333    mov         eax,dword ptr [eax+2C]
 004CB336    test        eax,eax
>004CB338    je          004CB3B5
 004CB33A    mov         ebx,eax
>004CB33C    jmp         004CB3A8
 004CB33E    lea         eax,[ebx+3]
 004CB341    cmp         byte ptr [eax],0
>004CB344    jne         004CB357
 004CB346    mov         byte ptr [ebx],0
 004CB349    lea         eax,[ebx+1]
 004CB34C    mov         byte ptr [eax],0
 004CB34F    lea         eax,[ebx+2]
 004CB352    mov         byte ptr [eax],0
>004CB355    jmp         004CB3A5
 004CB357    lea         eax,[ebx+3]
 004CB35A    movzx       edi,byte ptr [eax]
 004CB35D    movzx       eax,di
 004CB360    push        eax
 004CB361    push        0FF
 004CB366    movzx       eax,byte ptr [ebx]
 004CB369    push        eax
 004CB36A    call        kernel32.MulDiv
 004CB36F    mov         byte ptr [ebx],al
 004CB371    movzx       eax,di
 004CB374    push        eax
 004CB375    push        0FF
 004CB37A    lea         eax,[ebx+1]
 004CB37D    movzx       eax,byte ptr [eax]
 004CB380    push        eax
 004CB381    call        kernel32.MulDiv
 004CB386    lea         edx,[ebx+1]
 004CB389    mov         byte ptr [edx],al
 004CB38B    movzx       eax,di
 004CB38E    push        eax
 004CB38F    push        0FF
 004CB394    lea         eax,[ebx+2]
 004CB397    movzx       eax,byte ptr [eax]
 004CB39A    push        eax
 004CB39B    call        kernel32.MulDiv
 004CB3A0    lea         edx,[ebx+2]
 004CB3A3    mov         byte ptr [edx],al
 004CB3A5    add         ebx,4
 004CB3A8    mov         ebp,dword ptr [esi+28]
 004CB3AB    mov         eax,dword ptr [ebp+2C]
 004CB3AE    add         eax,dword ptr [ebp+44]
 004CB3B1    cmp         eax,ebx
>004CB3B3    ja          004CB33E
 004CB3B5    pop         ebp
 004CB3B6    pop         edi
 004CB3B7    pop         esi
 004CB3B8    pop         ebx
 004CB3B9    ret
*}
end;

//004CB3BC
procedure TBitmap.SetAlphaFormat(Value:TAlphaFormat);
begin
{*
 004CB3BC    push        ebx
 004CB3BD    push        esi
 004CB3BE    push        edi
 004CB3BF    mov         ebx,edx
 004CB3C1    mov         esi,eax
 004CB3C3    cmp         bl,byte ptr [esi+39]
>004CB3C6    je          004CB411
 004CB3C8    mov         eax,dword ptr [esi+28]
 004CB3CB    cmp         dword ptr [eax+4],1
>004CB3CF    jle         004CB3EB
 004CB3D1    mov         edi,eax
 004CB3D3    mov         eax,esi
 004CB3D5    call        TBitmap.HandleNeeded
 004CB3DA    lea         eax,[edi+18]
 004CB3DD    push        eax
 004CB3DE    mov         ecx,dword ptr [edi+10]
 004CB3E1    mov         edx,dword ptr [edi+8]
 004CB3E4    mov         eax,esi
 004CB3E6    call        TBitmap.CopyImage
 004CB3EB    cmp         byte ptr [esi+39],0
>004CB3EF    jne         004CB3FA
 004CB3F1    mov         eax,esi
 004CB3F3    call        TBitmap.PreMultiplyAlpha
>004CB3F8    jmp         004CB405
 004CB3FA    test        bl,bl
>004CB3FC    jne         004CB405
 004CB3FE    mov         eax,esi
 004CB400    call        TBitmap.UnPreMultiplyAlpha
 004CB405    mov         byte ptr [esi+39],bl
 004CB408    mov         edx,esi
 004CB40A    mov         eax,esi
 004CB40C    mov         ecx,dword ptr [eax]
 004CB40E    call        dword ptr [ecx+10]
 004CB411    pop         edi
 004CB412    pop         esi
 004CB413    pop         ebx
 004CB414    ret
*}
end;

//004CB418
function TBitmap.GetTransparentColor:TColor;
begin
{*
 004CB418    push        ebx
 004CB419    mov         ebx,eax
 004CB41B    mov         eax,dword ptr [ebx+34]
 004CB41E    cmp         eax,20000000
>004CB423    jne         004CB451
 004CB425    mov         eax,ebx
 004CB427    call        TBitmap.GetMonochrome
 004CB42C    test        al,al
>004CB42E    je          004CB437
 004CB430    mov         eax,0FFFFFF
>004CB435    jmp         004CB456
 004CB437    mov         eax,ebx
 004CB439    mov         edx,dword ptr [eax]
 004CB43B    call        dword ptr [edx+24]
 004CB43E    dec         eax
 004CB43F    push        eax
 004CB440    mov         eax,ebx
 004CB442    call        TBitmap.GetCanvas
 004CB447    xor         edx,edx
 004CB449    pop         ecx
 004CB44A    mov         ebx,dword ptr [eax]
 004CB44C    call        dword ptr [ebx+18]
>004CB44F    jmp         004CB456
 004CB451    call        ColorToRGB
 004CB456    or          eax,2000000
 004CB45B    pop         ebx
 004CB45C    ret
*}
end;

//004CB460
{*function TBitmap.GetWidth:?;
begin
 004CB460    mov         eax,dword ptr [eax+28];TBitmap.FImage:TBitmapImage
 004CB463    mov         eax,dword ptr [eax+1C];TBitmapImage.FDIB.dsBm:tagBITMAP
 004CB466    ret
end;*}

//004CB468
procedure TBitmap.DIBNeeded;
begin
{*
 004CB468    push        ebx
 004CB469    push        esi
 004CB46A    mov         ebx,dword ptr [eax+28]
 004CB46D    cmp         dword ptr [ebx+8],0
>004CB471    je          004CB4D8
 004CB473    cmp         dword ptr [ebx+14],0
>004CB477    jne         004CB4D8
 004CB479    call        TBitmap.PaletteNeeded
 004CB47E    cmp         dword ptr [ebx+30],0
>004CB482    jne         004CB4C0
 004CB484    lea         eax,[ebx+18]
 004CB487    push        eax
 004CB488    push        54
 004CB48A    mov         eax,dword ptr [ebx+8]
 004CB48D    push        eax
 004CB48E    call        gdi32.GetObjectW
 004CB493    lea         eax,[ebx+18]
 004CB496    mov         edx,eax
 004CB498    add         eax,18
 004CB49B    mov         dword ptr [eax],28
 004CB4A1    mov         ecx,dword ptr [edx+4]
 004CB4A4    mov         dword ptr [eax+4],ecx
 004CB4A7    mov         ecx,dword ptr [edx+8]
 004CB4AA    mov         dword ptr [eax+8],ecx
 004CB4AD    mov         word ptr [eax+0C],1
 004CB4B3    movzx       ecx,word ptr [edx+10]
 004CB4B7    imul        cx,word ptr [edx+12]
 004CB4BC    mov         word ptr [eax+0E],cx
 004CB4C0    lea         eax,[ebx+18]
 004CB4C3    push        eax
 004CB4C4    push        0
 004CB4C6    mov         esi,dword ptr [ebx+10]
 004CB4C9    mov         ecx,esi
 004CB4CB    mov         edx,esi
 004CB4CD    mov         eax,dword ptr [ebx+8]
 004CB4D0    call        CopyBitmap
 004CB4D5    mov         dword ptr [ebx+14],eax
 004CB4D8    pop         esi
 004CB4D9    pop         ebx
 004CB4DA    ret
*}
end;

//004CB4DC
procedure TBitmap.FreeContext;
begin
{*
 004CB4DC    mov         edx,dword ptr [eax+2C]
 004CB4DF    test        edx,edx
>004CB4E1    je          004CB4EA
 004CB4E3    mov         eax,edx
 004CB4E5    call        TBitmapCanvas.FreeContext
 004CB4EA    ret
*}
end;

//004CB4EC
procedure TBitmap.HandleNeeded;
begin
{*
 004CB4EC    push        ebp
 004CB4ED    mov         ebp,esp
 004CB4EF    add         esp,0FFFFFFF0
 004CB4F2    mov         dword ptr [ebp-4],eax
 004CB4F5    mov         eax,dword ptr [ebp-4]
 004CB4F8    mov         eax,dword ptr [eax+28]
 004CB4FB    cmp         dword ptr [eax+8],0
>004CB4FF    jne         004CB576
 004CB501    cmp         dword ptr [eax+14],0
>004CB505    jne         004CB576
 004CB507    cmp         dword ptr [eax+6C],0
>004CB50B    je          004CB576
 004CB50D    push        0
 004CB50F    push        0
 004CB511    mov         eax,dword ptr [eax+6C]
 004CB514    call        TStream.SetPosition
 004CB519    mov         eax,dword ptr [ebp-4]
 004CB51C    mov         edx,dword ptr [eax+10]
 004CB51F    mov         dword ptr [ebp-10],edx
 004CB522    mov         edx,dword ptr [eax+14]
 004CB525    mov         dword ptr [ebp-0C],edx
 004CB528    xor         eax,eax
 004CB52A    push        ebp
 004CB52B    push        4CB56F
 004CB530    push        dword ptr fs:[eax]
 004CB533    mov         dword ptr fs:[eax],esp
 004CB536    mov         eax,dword ptr [ebp-4]
 004CB539    xor         edx,edx
 004CB53B    mov         dword ptr [eax+10],edx
 004CB53E    mov         dword ptr [eax+14],edx
 004CB541    mov         eax,dword ptr [ebp-4]
 004CB544    mov         eax,dword ptr [eax+28]
 004CB547    mov         edx,dword ptr [eax+6C]
 004CB54A    mov         eax,dword ptr [ebp-4]
 004CB54D    mov         ecx,dword ptr [eax]
 004CB54F    call        dword ptr [ecx+5C]
 004CB552    xor         eax,eax
 004CB554    pop         edx
 004CB555    pop         ecx
 004CB556    pop         ecx
 004CB557    mov         dword ptr fs:[eax],edx
 004CB55A    push        4CB576
 004CB55F    mov         eax,dword ptr [ebp-4]
 004CB562    mov         edx,dword ptr [ebp-10]
 004CB565    mov         dword ptr [eax+10],edx
 004CB568    mov         edx,dword ptr [ebp-0C]
 004CB56B    mov         dword ptr [eax+14],edx
 004CB56E    ret
>004CB56F    jmp         @HandleFinally
>004CB574    jmp         004CB55F
 004CB576    mov         eax,dword ptr [ebp-4]
 004CB579    mov         eax,dword ptr [eax+28]
 004CB57C    cmp         dword ptr [eax+8],0
>004CB580    jne         004CB588
 004CB582    mov         edx,dword ptr [eax+14]
 004CB585    mov         dword ptr [eax+8],edx
 004CB588    mov         esp,ebp
 004CB58A    pop         ebp
 004CB58B    ret
*}
end;

//004CB58C
procedure TBitmap.Mask(TransparentColor:TColor);
begin
{*
 004CB58C    push        ebp
 004CB58D    mov         ebp,esp
 004CB58F    add         esp,0FFFFFFA4
 004CB592    push        ebx
 004CB593    push        esi
 004CB594    push        edi
 004CB595    mov         edi,edx
 004CB597    mov         ebx,eax
 004CB599    xor         eax,eax
 004CB59B    mov         dword ptr [ebp-4],eax
 004CB59E    xor         eax,eax
 004CB5A0    mov         dword ptr [ebp-8],eax
 004CB5A3    xor         edx,edx
 004CB5A5    push        ebp
 004CB5A6    push        4CB637
 004CB5AB    push        dword ptr fs:[edx]
 004CB5AE    mov         dword ptr fs:[edx],esp
 004CB5B1    mov         eax,ebx
 004CB5B3    call        TBitmap.FreeContext
 004CB5B8    mov         eax,ebx
 004CB5BA    call        TBitmap.HandleNeeded
 004CB5BF    mov         eax,edi
 004CB5C1    call        ColorToRGB
 004CB5C6    mov         ecx,eax
 004CB5C8    mov         esi,dword ptr [ebx+28]
 004CB5CB    mov         edx,dword ptr [esi+10]
 004CB5CE    mov         eax,dword ptr [esi+8]
 004CB5D1    call        CopyBitmapAsMask
 004CB5D6    mov         dword ptr [ebp-4],eax
 004CB5D9    lea         eax,[ebp-5C]
 004CB5DC    xor         ecx,ecx
 004CB5DE    mov         edx,54
 004CB5E3    call        @FillChar
 004CB5E8    lea         eax,[ebp-5C]
 004CB5EB    push        eax
 004CB5EC    push        54
 004CB5EE    mov         eax,dword ptr [ebp-4]
 004CB5F1    push        eax
 004CB5F2    call        gdi32.GetObjectW
 004CB5F7    mov         eax,dword ptr [ebx+28]
 004CB5FA    mov         eax,dword ptr [eax+10]
 004CB5FD    cmp         eax,dword ptr ds:[7CA44C];gvar_007CA44C
>004CB603    jne         004CB60A
 004CB605    mov         dword ptr [ebp-8],eax
>004CB608    jmp         004CB612
 004CB60A    call        CopyPalette
 004CB60F    mov         dword ptr [ebp-8],eax
 004CB612    lea         eax,[ebp-5C]
 004CB615    push        eax
 004CB616    mov         eax,dword ptr [ebx+28]
 004CB619    movzx       eax,byte ptr [eax+71]
 004CB61D    push        eax
 004CB61E    push        0
 004CB620    mov         ecx,dword ptr [ebp-8]
 004CB623    mov         edx,dword ptr [ebp-4]
 004CB626    mov         eax,ebx
 004CB628    call        TBitmap.NewImage
 004CB62D    xor         eax,eax
 004CB62F    pop         edx
 004CB630    pop         ecx
 004CB631    pop         ecx
 004CB632    mov         dword ptr fs:[eax],edx
>004CB635    jmp         004CB65D
>004CB637    jmp         @HandleAnyException
 004CB63C    mov         eax,dword ptr [ebp-8]
 004CB63F    call        InternalDeletePalette
 004CB644    cmp         dword ptr [ebp-4],0
>004CB648    je          004CB653
 004CB64A    mov         eax,dword ptr [ebp-4]
 004CB64D    push        eax
 004CB64E    call        gdi32.DeleteObject
 004CB653    call        @RaiseAgain
 004CB658    call        @DoneExcept
 004CB65D    mov         edx,ebx
 004CB65F    mov         eax,ebx
 004CB661    mov         ecx,dword ptr [eax]
 004CB663    call        dword ptr [ecx+10]
 004CB666    pop         edi
 004CB667    pop         esi
 004CB668    pop         ebx
 004CB669    mov         esp,ebp
 004CB66B    pop         ebp
 004CB66C    ret
*}
end;

//004CB670
procedure TBitmap.MaskHandleNeeded;
begin
{*
 004CB670    push        ebx
 004CB671    push        esi
 004CB672    mov         ebx,eax
 004CB674    cmp         byte ptr [ebx+32],0
>004CB678    je          004CB680
 004CB67A    cmp         byte ptr [ebx+31],0
>004CB67E    jne         004CB6CD
 004CB680    mov         esi,dword ptr [ebx+28]
 004CB683    mov         eax,dword ptr [esi+0C]
 004CB686    test        eax,eax
>004CB688    je          004CB69D
 004CB68A    call        DeselectBitmap
 004CB68F    mov         eax,dword ptr [esi+0C]
 004CB692    push        eax
 004CB693    call        gdi32.DeleteObject
 004CB698    xor         eax,eax
 004CB69A    mov         dword ptr [esi+0C],eax
 004CB69D    mov         eax,ebx
 004CB69F    call        TBitmap.FreeContext
 004CB6A4    mov         eax,ebx
 004CB6A6    call        TBitmap.HandleNeeded
 004CB6AB    mov         esi,dword ptr [ebx+28]
 004CB6AE    mov         eax,ebx
 004CB6B0    call        TBitmap.GetTransparentColor
 004CB6B5    mov         ecx,eax
 004CB6B7    mov         edx,dword ptr [esi+10]
 004CB6BA    mov         eax,dword ptr [esi+8]
 004CB6BD    call        CopyBitmapAsMask
 004CB6C2    mov         dword ptr [esi+0C],eax
 004CB6C5    mov         byte ptr [ebx+32],1
 004CB6C9    mov         byte ptr [ebx+31],1
 004CB6CD    pop         esi
 004CB6CE    pop         ebx
 004CB6CF    ret
*}
end;

//004CB6D0
procedure TBitmap.PaletteNeeded;
begin
{*
 004CB6D0    push        ebx
 004CB6D1    push        esi
 004CB6D2    push        edi
 004CB6D3    push        ebp
 004CB6D4    mov         edi,eax
 004CB6D6    mov         ebp,dword ptr [edi+28]
 004CB6D9    cmp         byte ptr [edi+30],0
>004CB6DD    jne         004CB783
 004CB6E3    cmp         dword ptr [ebp+10],0
>004CB6E7    jne         004CB783
 004CB6ED    cmp         dword ptr [ebp+14],0
>004CB6F1    je          004CB783
 004CB6F7    mov         eax,dword ptr [ebp+14]
 004CB6FA    cmp         eax,dword ptr [ebp+8]
>004CB6FD    jne         004CB704
 004CB6FF    call        DeselectBitmap
 004CB704    movzx       ecx,word ptr [ebp+3E]
 004CB708    mov         eax,1
 004CB70D    shl         eax,cl
 004CB70F    mov         ecx,eax
 004CB711    xor         edx,edx
 004CB713    mov         eax,dword ptr [ebp+14]
 004CB716    call        PaletteFromDIBColorTable
 004CB71B    mov         esi,eax
 004CB71D    mov         dword ptr [ebp+10],esi
 004CB720    test        esi,esi
>004CB722    jne         004CB783
 004CB724    push        0
 004CB726    call        user32.GetDC
 004CB72B    call        GDICheck
 004CB730    mov         esi,eax
 004CB732    cmp         byte ptr [ebp+70],0
>004CB736    jne         004CB75F
 004CB738    push        0C
 004CB73A    push        esi
 004CB73B    call        gdi32.GetDeviceCaps
 004CB740    mov         ebx,eax
 004CB742    push        0E
 004CB744    push        esi
 004CB745    call        gdi32.GetDeviceCaps
 004CB74A    imul        ebx,eax
 004CB74D    movzx       eax,word ptr [ebp+2A]
 004CB751    movzx       edx,word ptr [ebp+28]
 004CB755    imul        edx
 004CB757    cmp         ebx,eax
>004CB759    jl          004CB75F
 004CB75B    xor         ebx,ebx
>004CB75D    jmp         004CB761
 004CB75F    mov         bl,1
 004CB761    mov         byte ptr [ebp+70],bl
 004CB764    test        bl,bl
>004CB766    je          004CB771
 004CB768    push        esi
 004CB769    call        gdi32.CreateHalftonePalette
 004CB76E    mov         dword ptr [ebp+10],eax
 004CB771    push        esi
 004CB772    push        0
 004CB774    call        user32.ReleaseDC
 004CB779    cmp         dword ptr [ebp+10],0
>004CB77D    jne         004CB783
 004CB77F    mov         byte ptr [edi+30],1
 004CB783    pop         ebp
 004CB784    pop         edi
 004CB785    pop         esi
 004CB786    pop         ebx
 004CB787    ret
*}
end;

//004CB788
procedure TBitmap.LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);
begin
{*
 004CB788    push        ebp
 004CB789    mov         ebp,esp
 004CB78B    add         esp,0FFFFFFAC
 004CB78E    push        ebx
 004CB78F    push        esi
 004CB790    mov         esi,ecx
 004CB792    mov         ebx,eax
 004CB794    cmp         dx,2
>004CB798    jne         004CB79E
 004CB79A    test        esi,esi
>004CB79C    jne         004CB7A8
 004CB79E    mov         eax,[007C4A54];^SResString218:TResStringRec
 004CB7A3    call        InvalidOperation
 004CB7A8    mov         eax,ebx
 004CB7AA    call        TBitmap.FreeContext
 004CB7AF    lea         eax,[ebp-54]
 004CB7B2    xor         ecx,ecx
 004CB7B4    mov         edx,54
 004CB7B9    call        @FillChar
 004CB7BE    lea         eax,[ebp-54]
 004CB7C1    push        eax
 004CB7C2    push        54
 004CB7C4    push        esi
 004CB7C5    call        gdi32.GetObjectW
 004CB7CA    cmp         dword ptr [ebp-40],0
>004CB7CE    jne         004CB7D5
 004CB7D0    xor         eax,eax
 004CB7D2    mov         dword ptr [ebp-3C],eax
 004CB7D5    lea         eax,[ebp-54]
 004CB7D8    push        eax
 004CB7D9    mov         ecx,dword ptr [ebp+8]
 004CB7DC    mov         edx,esi
 004CB7DE    mov         eax,ebx
 004CB7E0    call        TBitmap.CopyImage
 004CB7E5    mov         eax,dword ptr [ebx+28];TBitmap.FImage:TBitmapImage
 004CB7E8    mov         byte ptr [eax+71],0;TBitmapImage.FOS2Format:Boolean
 004CB7EC    mov         eax,ebx
 004CB7EE    mov         edx,dword ptr [eax]
 004CB7F0    call        dword ptr [edx+28];TBitmap.GetPalette
 004CB7F3    test        eax,eax
 004CB7F5    setne       al
 004CB7F8    mov         byte ptr [ebx+22],al;TBitmap.FPaletteModified:Boolean
 004CB7FB    mov         edx,ebx
 004CB7FD    mov         eax,ebx
 004CB7FF    mov         ecx,dword ptr [eax]
 004CB801    call        dword ptr [ecx+10];TBitmap.Changed
 004CB804    pop         esi
 004CB805    pop         ebx
 004CB806    mov         esp,ebp
 004CB808    pop         ebp
 004CB809    ret         4
*}
end;

//004CB80C
procedure TBitmap.LoadFromResourceName(Instance:NativeUInt; ResName:string);
begin
{*
 004CB80C    push        ebp
 004CB80D    mov         ebp,esp
 004CB80F    push        ecx
 004CB810    push        ebx
 004CB811    push        esi
 004CB812    push        edi
 004CB813    mov         edi,ecx
 004CB815    mov         esi,edx
 004CB817    mov         ebx,eax
 004CB819    mov         eax,ebx
 004CB81B    call        TBitmap.FreeContext
 004CB820    push        edi
 004CB821    push        2
 004CB823    mov         ecx,esi
 004CB825    mov         dl,1
 004CB827    mov         eax,[00473500];TResourceStream
 004CB82C    call        TResourceStream.Create
 004CB831    mov         dword ptr [ebp-4],eax
 004CB834    xor         eax,eax
 004CB836    push        ebp
 004CB837    push        4CB86D
 004CB83C    push        dword ptr fs:[eax]
 004CB83F    mov         dword ptr fs:[eax],esp
 004CB842    push        0
 004CB844    mov         eax,dword ptr [ebp-4]
 004CB847    mov         edx,dword ptr [eax]
 004CB849    call        dword ptr [edx]
 004CB84B    mov         ecx,eax
 004CB84D    mov         edx,dword ptr [ebp-4]
 004CB850    mov         eax,ebx
 004CB852    call        TBitmap.ReadDIB
 004CB857    xor         eax,eax
 004CB859    pop         edx
 004CB85A    pop         ecx
 004CB85B    pop         ecx
 004CB85C    mov         dword ptr fs:[eax],edx
 004CB85F    push        4CB874
 004CB864    mov         eax,dword ptr [ebp-4]
 004CB867    call        TObject.Free
 004CB86C    ret
>004CB86D    jmp         @HandleFinally
>004CB872    jmp         004CB864
 004CB874    pop         edi
 004CB875    pop         esi
 004CB876    pop         ebx
 004CB877    pop         ecx
 004CB878    pop         ebp
 004CB879    ret
*}
end;

//004CB87C
procedure TBitmap.LoadFromStream(Stream:TStream);
begin
{*
 004CB87C    push        ebx
 004CB87D    push        esi
 004CB87E    mov         ebx,edx
 004CB880    mov         esi,eax
 004CB882    mov         eax,ebx
 004CB884    mov         edx,dword ptr [eax]
 004CB886    call        dword ptr [edx]
 004CB888    push        eax
 004CB889    mov         eax,ebx
 004CB88B    call        TStream.GetPosition
 004CB890    pop         ecx
 004CB891    sub         ecx,eax
 004CB893    mov         edx,ebx
 004CB895    mov         eax,esi
 004CB897    call        TBitmap.ReadStream
 004CB89C    pop         esi
 004CB89D    pop         ebx
 004CB89E    ret
*}
end;

//004CB8A0
procedure TBitmap.NewImage(NewHandle:Windows.HBITMAP; NewPalette:Windows.HPALETTE; const NewDIB:Windows.TDIBSection; OS2Format:Boolean; RLEStream:Classes.TStream);
begin
{*
 004CB8A0    push        ebp
 004CB8A1    mov         ebp,esp
 004CB8A3    add         esp,0FFFFFFF8
 004CB8A6    push        ebx
 004CB8A7    push        esi
 004CB8A8    push        edi
 004CB8A9    mov         esi,ecx
 004CB8AB    mov         ebx,edx
 004CB8AD    mov         dword ptr [ebp-4],eax
 004CB8B0    mov         dl,1
 004CB8B2    mov         eax,[004C1A40];TBitmapImage
 004CB8B7    call        TObject.Create
 004CB8BC    mov         dword ptr [ebp-8],eax
 004CB8BF    xor         eax,eax
 004CB8C1    push        ebp
 004CB8C2    push        4CB928
 004CB8C7    push        dword ptr fs:[eax]
 004CB8CA    mov         dword ptr fs:[eax],esp
 004CB8CD    mov         eax,dword ptr [ebp-8]
 004CB8D0    mov         dword ptr [eax+8],ebx
 004CB8D3    mov         eax,dword ptr [ebp-8]
 004CB8D6    mov         dword ptr [eax+10],esi
 004CB8D9    mov         eax,dword ptr [ebp+10]
 004CB8DC    mov         edx,dword ptr [ebp-8]
 004CB8DF    mov         esi,eax
 004CB8E1    lea         edi,[edx+18]
 004CB8E4    mov         ecx,15
 004CB8E9    rep movs    dword ptr [edi],dword ptr [esi]
 004CB8EB    mov         eax,dword ptr [ebp-8]
 004CB8EE    movzx       edx,byte ptr [ebp+0C]
 004CB8F2    mov         byte ptr [eax+71],dl
 004CB8F5    mov         eax,dword ptr [ebp-8]
 004CB8F8    cmp         dword ptr [eax+2C],0
>004CB8FC    je          004CB90A
 004CB8FE    mov         eax,dword ptr [ebp-8]
 004CB901    mov         eax,dword ptr [eax+8]
 004CB904    mov         edx,dword ptr [ebp-8]
 004CB907    mov         dword ptr [edx+14],eax
 004CB90A    mov         eax,dword ptr [ebp+8]
 004CB90D    mov         edx,dword ptr ds:[472CE4];TMemoryStream
 004CB913    call        @AsClass
 004CB918    mov         edx,dword ptr [ebp-8]
 004CB91B    mov         dword ptr [edx+6C],eax
 004CB91E    xor         eax,eax
 004CB920    pop         edx
 004CB921    pop         ecx
 004CB922    pop         ecx
 004CB923    mov         dword ptr fs:[eax],edx
>004CB926    jmp         004CB93F
>004CB928    jmp         @HandleAnyException
 004CB92D    mov         eax,dword ptr [ebp-8]
 004CB930    call        TObject.Free
 004CB935    call        @RaiseAgain
 004CB93A    call        @DoneExcept
 004CB93F    push        7CA468;gvar_007CA468
 004CB944    call        kernel32.EnterCriticalSection
 004CB949    xor         edx,edx
 004CB94B    push        ebp
 004CB94C    push        4CB986
 004CB951    push        dword ptr fs:[edx]
 004CB954    mov         dword ptr fs:[edx],esp
 004CB957    mov         eax,dword ptr [ebp-4]
 004CB95A    mov         eax,dword ptr [eax+28]
 004CB95D    call        TSharedImage.Release
 004CB962    mov         edx,dword ptr [ebp-4]
 004CB965    mov         eax,dword ptr [ebp-8]
 004CB968    mov         dword ptr [edx+28],eax
 004CB96B    inc         dword ptr [eax+4]
 004CB96E    xor         eax,eax
 004CB970    pop         edx
 004CB971    pop         ecx
 004CB972    pop         ecx
 004CB973    mov         dword ptr fs:[eax],edx
 004CB976    push        4CB98D
 004CB97B    push        7CA468;gvar_007CA468
 004CB980    call        kernel32.LeaveCriticalSection
 004CB985    ret
>004CB986    jmp         @HandleFinally
>004CB98B    jmp         004CB97B
 004CB98D    mov         eax,dword ptr [ebp-4]
 004CB990    mov         byte ptr [eax+32],0
 004CB994    pop         edi
 004CB995    pop         esi
 004CB996    pop         ebx
 004CB997    pop         ecx
 004CB998    pop         ecx
 004CB999    pop         ebp
 004CB99A    ret         0C
*}
end;

//004CB9A0
procedure TBitmap.ReadData(Stream:Classes.TStream);
begin
{*
 004CB9A0    push        ebx
 004CB9A1    push        esi
 004CB9A2    push        edi
 004CB9A3    push        ecx
 004CB9A4    mov         esi,edx
 004CB9A6    mov         ebx,eax
 004CB9A8    mov         edx,esp
 004CB9AA    mov         ecx,4
 004CB9AF    mov         eax,esi
 004CB9B1    mov         edi,dword ptr [eax]
 004CB9B3    call        dword ptr [edi+0C]
 004CB9B6    mov         ecx,dword ptr [esp]
 004CB9B9    mov         edx,esi
 004CB9BB    mov         eax,ebx
 004CB9BD    call        TBitmap.ReadStream
 004CB9C2    pop         edx
 004CB9C3    pop         edi
 004CB9C4    pop         esi
 004CB9C5    pop         ebx
 004CB9C6    ret
*}
end;

//004CB9C8
procedure TBitmap.ReadDIB(Stream:Classes.TStream; ImageSize:LongWord; bmf:Windows.PBitmapFileHeader);
begin
{*
 004CB9C8    push        ebp
 004CB9C9    mov         ebp,esp
 004CB9CB    add         esp,0FFFFFF54
 004CB9D1    push        ebx
 004CB9D2    push        esi
 004CB9D3    push        edi
 004CB9D4    mov         esi,ecx
 004CB9D6    mov         dword ptr [ebp-8],edx
 004CB9D9    mov         dword ptr [ebp-4],eax
 004CB9DC    xor         eax,eax
 004CB9DE    mov         dword ptr [ebp-30],eax
 004CB9E1    xor         eax,eax
 004CB9E3    mov         dword ptr [ebp-28],eax
 004CB9E6    xor         eax,eax
 004CB9E8    mov         dword ptr [ebp-38],eax
 004CB9EB    lea         edx,[ebp-20]
 004CB9EE    mov         ecx,4
 004CB9F3    mov         eax,dword ptr [ebp-8]
 004CB9F6    mov         ebx,dword ptr [eax]
 004CB9F8    call        dword ptr [ebx+0C]
 004CB9FB    cmp         dword ptr [ebp-20],0C
 004CB9FF    sete        byte ptr [ebp-21]
 004CBA03    cmp         byte ptr [ebp-21],0
>004CBA07    je          004CBA10
 004CBA09    mov         dword ptr [ebp-20],28
 004CBA10    mov         eax,dword ptr [ebp-20]
 004CBA13    add         eax,0C
 004CBA16    add         eax,400
 004CBA1B    call        @GetMem
 004CBA20    mov         dword ptr [ebp-18],eax
 004CBA23    mov         eax,dword ptr [ebp-18]
 004CBA26    mov         dword ptr [ebp-3C],eax
 004CBA29    xor         edx,edx
 004CBA2B    push        ebp
 004CBA2C    push        4CBF11
 004CBA31    push        dword ptr fs:[edx]
 004CBA34    mov         dword ptr fs:[edx],esp
 004CBA37    xor         edx,edx
 004CBA39    push        ebp
 004CBA3A    push        4CBEE4
 004CBA3F    push        dword ptr fs:[edx]
 004CBA42    mov         dword ptr fs:[edx],esp
 004CBA45    cmp         byte ptr [ebp-21],0
>004CBA49    je          004CBA97
 004CBA4B    lea         edx,[ebp-48]
 004CBA4E    add         edx,4
 004CBA51    mov         ecx,8
 004CBA56    mov         eax,dword ptr [ebp-8]
 004CBA59    mov         ebx,dword ptr [eax]
 004CBA5B    call        dword ptr [ebx+0C]
 004CBA5E    mov         ebx,dword ptr [ebp-3C]
 004CBA61    mov         eax,ebx
 004CBA63    xor         ecx,ecx
 004CBA65    mov         edx,28
 004CBA6A    call        @FillChar
 004CBA6F    mov         eax,ebx
 004CBA71    movzx       edx,word ptr [ebp-44]
 004CBA75    mov         dword ptr [eax+4],edx
 004CBA78    movzx       edx,word ptr [ebp-42]
 004CBA7C    mov         dword ptr [eax+8],edx
 004CBA7F    movzx       edx,word ptr [ebp-40]
 004CBA83    mov         word ptr [eax+0C],dx
 004CBA87    movzx       edx,word ptr [ebp-3E]
 004CBA8B    mov         word ptr [eax+0E],dx
 004CBA8F    sub         esi,0C
>004CBA92    jmp         004CBB66
 004CBA97    mov         ecx,dword ptr [ebp-20]
 004CBA9A    sub         ecx,4
 004CBA9D    mov         edx,dword ptr [ebp-18]
 004CBAA0    add         edx,4
 004CBAA3    mov         eax,dword ptr [ebp-8]
 004CBAA6    mov         ebx,dword ptr [eax]
 004CBAA8    call        dword ptr [ebx+0C]
 004CBAAB    mov         eax,dword ptr [ebp-20]
 004CBAAE    sub         esi,eax
 004CBAB0    mov         eax,dword ptr [ebp-3C]
 004CBAB3    mov         eax,dword ptr [eax+10]
 004CBAB6    cmp         eax,3
>004CBAB9    je          004CBB66
 004CBABF    test        eax,eax
>004CBAC1    je          004CBB66
 004CBAC7    mov         dl,1
 004CBAC9    mov         eax,[00472CE4];TMemoryStream
 004CBACE    call        TObject.Create
 004CBAD3    mov         dword ptr [ebp-38],eax
 004CBAD6    cmp         dword ptr [ebp+8],0
>004CBADA    jne         004CBB0B
 004CBADC    lea         eax,[ebp-0AA]
 004CBAE2    xor         ecx,ecx
 004CBAE4    mov         edx,0E
 004CBAE9    call        @FillChar
 004CBAEE    mov         word ptr [ebp-0AA],4D42
 004CBAF7    mov         eax,esi
 004CBAF9    add         eax,dword ptr [ebp-20]
 004CBAFC    mov         dword ptr [ebp-0A8],eax
 004CBB02    lea         eax,[ebp-0AA]
 004CBB08    mov         dword ptr [ebp+8],eax
 004CBB0B    mov         edx,dword ptr [ebp+8]
 004CBB0E    mov         ecx,0E
 004CBB13    mov         eax,dword ptr [ebp-38]
 004CBB16    mov         ebx,dword ptr [eax]
 004CBB18    call        dword ptr [ebx+10]
 004CBB1B    lea         edx,[ebp-20]
 004CBB1E    mov         ecx,4
 004CBB23    mov         eax,dword ptr [ebp-38]
 004CBB26    mov         ebx,dword ptr [eax]
 004CBB28    call        dword ptr [ebx+10]
 004CBB2B    mov         ecx,dword ptr [ebp-20]
 004CBB2E    sub         ecx,4
 004CBB31    mov         edx,dword ptr [ebp-18]
 004CBB34    add         edx,4
 004CBB37    mov         eax,dword ptr [ebp-38]
 004CBB3A    mov         ebx,dword ptr [eax]
 004CBB3C    call        dword ptr [ebx+10]
 004CBB3F    mov         eax,esi
 004CBB41    xor         edx,edx
 004CBB43    push        edx
 004CBB44    push        eax
 004CBB45    mov         edx,dword ptr [ebp-8]
 004CBB48    mov         eax,dword ptr [ebp-38]
 004CBB4B    call        TStream.CopyFrom
 004CBB50    mov         edx,esi
 004CBB52    neg         edx
 004CBB54    mov         cx,2
 004CBB58    mov         eax,dword ptr [ebp-38]
 004CBB5B    mov         ebx,dword ptr [eax]
 004CBB5D    call        dword ptr [ebx+1C]
 004CBB60    mov         eax,dword ptr [ebp-38]
 004CBB63    mov         dword ptr [ebp-8],eax
 004CBB66    mov         ebx,dword ptr [ebp-3C]
 004CBB69    mov         eax,dword ptr [ebp-20]
 004CBB6C    mov         dword ptr [ebx],eax
 004CBB6E    mov         eax,dword ptr [ebp-18]
 004CBB71    add         eax,dword ptr [ebp-20]
 004CBB74    mov         dword ptr [ebp-1C],eax
 004CBB77    cmp         word ptr [ebx+0C],1
>004CBB7C    je          004CBB83
 004CBB7E    call        TWICImage.SetHeight
 004CBB83    cmp         dword ptr [ebp-20],28
>004CBB87    jne         004CBBB6
 004CBB89    movzx       eax,word ptr [ebx+0E]
 004CBB8D    cmp         ax,10
>004CBB91    je          004CBB99
 004CBB93    cmp         ax,20
>004CBB97    jne         004CBBB6
 004CBB99    cmp         dword ptr [ebx+10],3
>004CBB9D    jne         004CBBB6
 004CBB9F    mov         edx,dword ptr [ebp-1C]
 004CBBA2    mov         ecx,0C
 004CBBA7    mov         eax,dword ptr [ebp-8]
 004CBBAA    call        TStream.ReadBuffer
 004CBBAF    add         dword ptr [ebp-1C],0C
 004CBBB3    sub         esi,0C
 004CBBB6    cmp         dword ptr [ebx+20],0
>004CBBBA    jne         004CBBC8
 004CBBBC    movzx       eax,word ptr [ebx+0E]
 004CBBC0    call        GetDInColors
 004CBBC5    mov         dword ptr [ebx+20],eax
 004CBBC8    mov         eax,dword ptr [ebx+20]
 004CBBCB    movzx       edi,byte ptr [ebp-21]
 004CBBCF    movzx       edx,byte ptr [edi+7A1044]
 004CBBD6    imul        edx
 004CBBD8    cmp         eax,400
>004CBBDD    jbe         004CBBE9
 004CBBDF    mov         eax,[007C457C];^SResString210:TResStringRec
 004CBBE4    call        InvalidOperation
 004CBBE9    mov         ecx,dword ptr [ebx+20]
 004CBBEC    movzx       eax,byte ptr [edi+7A1044]
 004CBBF3    imul        ecx,eax
 004CBBF6    mov         edx,dword ptr [ebp-1C]
 004CBBF9    mov         eax,dword ptr [ebp-8]
 004CBBFC    call        TStream.ReadBuffer
 004CBC01    mov         eax,dword ptr [ebx+20]
 004CBC04    movzx       edx,byte ptr [edi+7A1044]
 004CBC0B    imul        edx
 004CBC0D    sub         esi,eax
 004CBC0F    cmp         dword ptr [ebx+14],0
>004CBC13    je          004CBC1B
 004CBC15    cmp         dword ptr [ebx+10],0
>004CBC19    jne         004CBC3C
 004CBC1B    movzx       edx,word ptr [ebx+0E]
 004CBC1F    mov         eax,dword ptr [ebx+4]
 004CBC22    mov         ecx,20
 004CBC27    call        BytesPerScanline
 004CBC2C    mov         ecx,eax
 004CBC2E    mov         eax,dword ptr [ebx+8]
 004CBC31    cdq
 004CBC32    xor         eax,edx
 004CBC34    sub         eax,edx
 004CBC36    imul        ecx,eax
 004CBC39    mov         dword ptr [ebx+14],ecx
 004CBC3C    mov         eax,dword ptr [ebx+14]
 004CBC3F    cmp         esi,eax
>004CBC41    jbe         004CBC45
 004CBC43    mov         esi,eax
 004CBC45    cmp         byte ptr [ebp-21],0
>004CBC49    je          004CBC53
 004CBC4B    mov         eax,dword ptr [ebp-1C]
 004CBC4E    call        RGBTripleToQuad
 004CBC53    push        0
 004CBC55    call        user32.GetDC
 004CBC5A    call        GDICheck
 004CBC5F    mov         dword ptr [ebp-0C],eax
 004CBC62    xor         edx,edx
 004CBC64    push        ebp
 004CBC65    push        4CBE56
 004CBC6A    push        dword ptr fs:[edx]
 004CBC6D    mov         dword ptr fs:[edx],esp
 004CBC70    mov         eax,dword ptr [ebp-3C]
 004CBC73    mov         eax,dword ptr [eax+10]
 004CBC76    test        eax,eax
>004CBC78    je          004CBC7F
 004CBC7A    cmp         eax,3
>004CBC7D    jne         004CBC8C
 004CBC7F    cmp         byte ptr ds:[7A0F44],0
>004CBC86    je          004CBDC5
 004CBC8C    xor         eax,eax
 004CBC8E    mov         dword ptr [ebp-10],eax
 004CBC91    mov         eax,esi
 004CBC93    call        @GetMem
 004CBC98    mov         dword ptr [ebp-14],eax
 004CBC9B    xor         edx,edx
 004CBC9D    push        ebp
 004CBC9E    push        4CBDBE
 004CBCA3    push        dword ptr fs:[edx]
 004CBCA6    mov         dword ptr fs:[edx],esp
 004CBCA9    mov         edx,dword ptr [ebp-14]
 004CBCAC    mov         ecx,esi
 004CBCAE    mov         eax,dword ptr [ebp-8]
 004CBCB1    call        TStream.ReadBuffer
 004CBCB6    mov         eax,dword ptr [ebp-0C]
 004CBCB9    push        eax
 004CBCBA    call        gdi32.CreateCompatibleDC
 004CBCBF    call        GDICheck
 004CBCC4    mov         dword ptr [ebp-10],eax
 004CBCC7    push        1
 004CBCC9    push        1
 004CBCCB    mov         eax,dword ptr [ebp-0C]
 004CBCCE    push        eax
 004CBCCF    call        gdi32.CreateCompatibleBitmap
 004CBCD4    push        eax
 004CBCD5    mov         eax,dword ptr [ebp-10]
 004CBCD8    push        eax
 004CBCD9    call        gdi32.SelectObject
 004CBCDE    mov         dword ptr [ebp-2C],eax
 004CBCE1    xor         eax,eax
 004CBCE3    mov         dword ptr [ebp-34],eax
 004CBCE6    mov         eax,dword ptr [ebp-3C]
 004CBCE9    mov         eax,dword ptr [eax+20]
 004CBCEC    test        eax,eax
>004CBCEE    jbe         004CBD1A
 004CBCF0    mov         ecx,eax
 004CBCF2    mov         edx,dword ptr [ebp-1C]
 004CBCF5    xor         eax,eax
 004CBCF7    call        PaletteFromDIBColorTable
 004CBCFC    mov         dword ptr [ebp-30],eax
 004CBCFF    push        0
 004CBD01    mov         eax,dword ptr [ebp-30]
 004CBD04    push        eax
 004CBD05    mov         eax,dword ptr [ebp-10]
 004CBD08    push        eax
 004CBD09    call        gdi32.SelectPalette
 004CBD0E    mov         dword ptr [ebp-34],eax
 004CBD11    mov         eax,dword ptr [ebp-10]
 004CBD14    push        eax
 004CBD15    call        gdi32.RealizePalette
 004CBD1A    xor         edx,edx
 004CBD1C    push        ebp
 004CBD1D    push        4CBD92
 004CBD22    push        dword ptr fs:[edx]
 004CBD25    mov         dword ptr fs:[edx],esp
 004CBD28    push        0
 004CBD2A    mov         eax,dword ptr [ebp-18]
 004CBD2D    push        eax
 004CBD2E    mov         edx,dword ptr [ebp-14]
 004CBD31    push        edx
 004CBD32    push        4
 004CBD34    push        eax
 004CBD35    mov         eax,dword ptr [ebp-10]
 004CBD38    push        eax
 004CBD39    call        gdi32.CreateDIBitmap
 004CBD3E    mov         dword ptr [ebp-28],eax
 004CBD41    cmp         dword ptr [ebp-28],0
>004CBD45    jne         004CBD5C
 004CBD47    call        kernel32.GetLastError
 004CBD4C    test        eax,eax
>004CBD4E    jne         004CBD57
 004CBD50    call        TWICImage.SetHeight
>004CBD55    jmp         004CBD5C
 004CBD57    call        RaiseLastOSError
 004CBD5C    xor         eax,eax
 004CBD5E    pop         edx
 004CBD5F    pop         ecx
 004CBD60    pop         ecx
 004CBD61    mov         dword ptr fs:[eax],edx
 004CBD64    push        4CBD99
 004CBD69    cmp         dword ptr [ebp-34],0
>004CBD6D    je          004CBD7E
 004CBD6F    push        0FF
 004CBD71    mov         eax,dword ptr [ebp-34]
 004CBD74    push        eax
 004CBD75    mov         eax,dword ptr [ebp-10]
 004CBD78    push        eax
 004CBD79    call        gdi32.SelectPalette
 004CBD7E    mov         eax,dword ptr [ebp-2C]
 004CBD81    push        eax
 004CBD82    mov         eax,dword ptr [ebp-10]
 004CBD85    push        eax
 004CBD86    call        gdi32.SelectObject
 004CBD8B    push        eax
 004CBD8C    call        gdi32.DeleteObject
 004CBD91    ret
>004CBD92    jmp         @HandleFinally
>004CBD97    jmp         004CBD69
 004CBD99    xor         eax,eax
 004CBD9B    pop         edx
 004CBD9C    pop         ecx
 004CBD9D    pop         ecx
 004CBD9E    mov         dword ptr fs:[eax],edx
 004CBDA1    push        4CBE3D
 004CBDA6    cmp         dword ptr [ebp-10],0
>004CBDAA    je          004CBDB5
 004CBDAC    mov         eax,dword ptr [ebp-10]
 004CBDAF    push        eax
 004CBDB0    call        gdi32.DeleteDC
 004CBDB5    mov         eax,dword ptr [ebp-14]
 004CBDB8    call        @FreeMem
 004CBDBD    ret
>004CBDBE    jmp         @HandleFinally
>004CBDC3    jmp         004CBDA6
 004CBDC5    push        0
 004CBDC7    push        0
 004CBDC9    lea         eax,[ebp-14]
 004CBDCC    push        eax
 004CBDCD    push        0
 004CBDCF    mov         eax,dword ptr [ebp-18]
 004CBDD2    push        eax
 004CBDD3    mov         eax,dword ptr [ebp-0C]
 004CBDD6    push        eax
 004CBDD7    call        gdi32.CreateDIBSection
 004CBDDC    mov         dword ptr [ebp-28],eax
 004CBDDF    cmp         dword ptr [ebp-28],0
>004CBDE3    je          004CBDEB
 004CBDE5    cmp         dword ptr [ebp-14],0
>004CBDE9    jne         004CBE00
 004CBDEB    call        kernel32.GetLastError
 004CBDF0    test        eax,eax
>004CBDF2    jne         004CBDFB
 004CBDF4    call        TWICImage.SetHeight
>004CBDF9    jmp         004CBE00
 004CBDFB    call        RaiseLastOSError
 004CBE00    xor         eax,eax
 004CBE02    push        ebp
 004CBE03    push        4CBE25
 004CBE08    push        dword ptr fs:[eax]
 004CBE0B    mov         dword ptr fs:[eax],esp
 004CBE0E    mov         edx,dword ptr [ebp-14]
 004CBE11    mov         ecx,esi
 004CBE13    mov         eax,dword ptr [ebp-8]
 004CBE16    call        TStream.ReadBuffer
 004CBE1B    xor         eax,eax
 004CBE1D    pop         edx
 004CBE1E    pop         ecx
 004CBE1F    pop         ecx
 004CBE20    mov         dword ptr fs:[eax],edx
>004CBE23    jmp         004CBE3D
>004CBE25    jmp         @HandleAnyException
 004CBE2A    mov         eax,dword ptr [ebp-28]
 004CBE2D    push        eax
 004CBE2E    call        gdi32.DeleteObject
 004CBE33    call        @RaiseAgain
 004CBE38    call        @DoneExcept
 004CBE3D    xor         eax,eax
 004CBE3F    pop         edx
 004CBE40    pop         ecx
 004CBE41    pop         ecx
 004CBE42    mov         dword ptr fs:[eax],edx
 004CBE45    push        4CBE5D
 004CBE4A    mov         eax,dword ptr [ebp-0C]
 004CBE4D    push        eax
 004CBE4E    push        0
 004CBE50    call        user32.ReleaseDC
 004CBE55    ret
>004CBE56    jmp         @HandleFinally
>004CBE5B    jmp         004CBE4A
 004CBE5D    mov         eax,dword ptr [ebp-3C]
 004CBE60    movzx       eax,word ptr [eax+0E]
 004CBE64    cmp         ax,8
>004CBE68    jbe         004CBE92
 004CBE6A    cmp         ax,10
>004CBE6E    ja          004CBE92
 004CBE70    mov         eax,dword ptr [ebp-3C]
 004CBE73    cmp         dword ptr [eax+20],0
>004CBE77    jbe         004CBE92
 004CBE79    cmp         dword ptr [ebp-30],0
>004CBE7D    jne         004CBE92
 004CBE7F    mov         eax,dword ptr [ebp-3C]
 004CBE82    mov         ecx,dword ptr [eax+20]
 004CBE85    mov         edx,dword ptr [ebp-1C]
 004CBE88    xor         eax,eax
 004CBE8A    call        PaletteFromDIBColorTable
 004CBE8F    mov         dword ptr [ebp-30],eax
 004CBE92    lea         eax,[ebp-9C]
 004CBE98    xor         ecx,ecx
 004CBE9A    mov         edx,54
 004CBE9F    call        @FillChar
 004CBEA4    lea         eax,[ebp-9C]
 004CBEAA    push        eax
 004CBEAB    push        54
 004CBEAD    mov         eax,dword ptr [ebp-28]
 004CBEB0    push        eax
 004CBEB1    call        gdi32.GetObjectW
 004CBEB6    mov         eax,dword ptr [ebp-3C]
 004CBEB9    mov         eax,dword ptr [eax+18]
 004CBEBC    mov         dword ptr [ebp-6C],eax
 004CBEBF    mov         eax,dword ptr [ebp-3C]
 004CBEC2    mov         eax,dword ptr [eax+1C]
 004CBEC5    mov         dword ptr [ebp-68],eax
 004CBEC8    mov         eax,dword ptr [ebp-3C]
 004CBECB    mov         eax,dword ptr [eax+20]
 004CBECE    mov         dword ptr [ebp-64],eax
 004CBED1    mov         eax,dword ptr [ebp-3C]
 004CBED4    mov         eax,dword ptr [eax+24]
 004CBED7    mov         dword ptr [ebp-60],eax
 004CBEDA    xor         eax,eax
 004CBEDC    pop         edx
 004CBEDD    pop         ecx
 004CBEDE    pop         ecx
 004CBEDF    mov         dword ptr fs:[eax],edx
>004CBEE2    jmp         004CBEFB
>004CBEE4    jmp         @HandleAnyException
 004CBEE9    mov         eax,dword ptr [ebp-38]
 004CBEEC    call        TObject.Free
 004CBEF1    call        @RaiseAgain
 004CBEF6    call        @DoneExcept
 004CBEFB    xor         eax,eax
 004CBEFD    pop         edx
 004CBEFE    pop         ecx
 004CBEFF    pop         ecx
 004CBF00    mov         dword ptr fs:[eax],edx
 004CBF03    push        4CBF18
 004CBF08    mov         eax,dword ptr [ebp-18]
 004CBF0B    call        @FreeMem
 004CBF10    ret
>004CBF11    jmp         @HandleFinally
>004CBF16    jmp         004CBF08
 004CBF18    lea         eax,[ebp-9C]
 004CBF1E    push        eax
 004CBF1F    movzx       eax,byte ptr [ebp-21]
 004CBF23    push        eax
 004CBF24    mov         eax,dword ptr [ebp-38]
 004CBF27    push        eax
 004CBF28    mov         ecx,dword ptr [ebp-30]
 004CBF2B    mov         edx,dword ptr [ebp-28]
 004CBF2E    mov         eax,dword ptr [ebp-4]
 004CBF31    call        TBitmap.NewImage
 004CBF36    mov         eax,dword ptr [ebp-4]
 004CBF39    mov         eax,dword ptr [eax+28]
 004CBF3C    cmp         word ptr [eax+3E],20
>004CBF41    jne         004CBF54
 004CBF43    mov         eax,dword ptr [ebp-4]
 004CBF46    cmp         byte ptr [eax+39],1
>004CBF4A    jne         004CBF54
 004CBF4C    mov         eax,dword ptr [ebp-4]
 004CBF4F    call        TBitmap.PreMultiplyAlpha
 004CBF54    mov         eax,dword ptr [ebp-4]
 004CBF57    mov         edx,dword ptr [eax]
 004CBF59    call        dword ptr [edx+28]
 004CBF5C    test        eax,eax
 004CBF5E    setne       al
 004CBF61    mov         edx,dword ptr [ebp-4]
 004CBF64    mov         byte ptr [edx+22],al
 004CBF67    mov         edx,dword ptr [ebp-4]
 004CBF6A    mov         eax,dword ptr [ebp-4]
 004CBF6D    mov         ecx,dword ptr [eax]
 004CBF6F    call        dword ptr [ecx+10]
 004CBF72    pop         edi
 004CBF73    pop         esi
 004CBF74    pop         ebx
 004CBF75    mov         esp,ebp
 004CBF77    pop         ebp
 004CBF78    ret         4
*}
end;

//004CBF7C
procedure TBitmap.ReadStream(Stream:Classes.TStream; Size:LongInt);
begin
{*
 004CBF7C    push        ebx
 004CBF7D    push        esi
 004CBF7E    push        edi
 004CBF7F    add         esp,0FFFFFF9C
 004CBF82    mov         esi,ecx
 004CBF84    mov         edi,edx
 004CBF86    mov         ebx,eax
 004CBF88    mov         eax,ebx
 004CBF8A    call        TBitmap.FreeContext
 004CBF8F    test        esi,esi
>004CBF91    jne         004CBFB9
 004CBF93    lea         eax,[esp+10]
 004CBF97    xor         ecx,ecx
 004CBF99    mov         edx,54
 004CBF9E    call        @FillChar
 004CBFA3    lea         eax,[esp+10]
 004CBFA7    push        eax
 004CBFA8    push        0
 004CBFAA    push        0
 004CBFAC    xor         ecx,ecx
 004CBFAE    xor         edx,edx
 004CBFB0    mov         eax,ebx
 004CBFB2    call        TBitmap.NewImage
>004CBFB7    jmp         004CBFE3
 004CBFB9    mov         edx,esp
 004CBFBB    mov         ecx,0E
 004CBFC0    mov         eax,edi
 004CBFC2    call        TStream.ReadBuffer
 004CBFC7    cmp         word ptr [esp],4D42
>004CBFCD    je          004CBFD4
 004CBFCF    call        TWICImage.SetHeight
 004CBFD4    push        esp
 004CBFD5    mov         ecx,esi
 004CBFD7    sub         ecx,0E
 004CBFDA    mov         edx,edi
 004CBFDC    mov         eax,ebx
 004CBFDE    call        TBitmap.ReadDIB
 004CBFE3    add         esp,64
 004CBFE6    pop         edi
 004CBFE7    pop         esi
 004CBFE8    pop         ebx
 004CBFE9    ret
*}
end;

//004CBFEC
procedure TBitmap.SetHandle(Value:Windows.HBITMAP);
begin
{*
 004CBFEC    push        ebp
 004CBFED    mov         ebp,esp
 004CBFEF    add         esp,0FFFFFFA8
 004CBFF2    push        ebx
 004CBFF3    push        esi
 004CBFF4    push        edi
 004CBFF5    mov         edi,edx
 004CBFF7    mov         ebx,eax
 004CBFF9    mov         esi,dword ptr [ebx+28]
 004CBFFC    cmp         edi,dword ptr [esi+8]
>004CBFFF    je          004CC0A7
 004CC005    mov         eax,ebx
 004CC007    call        TBitmap.FreeContext
 004CC00C    lea         eax,[ebp-58]
 004CC00F    xor         ecx,ecx
 004CC011    mov         edx,54
 004CC016    call        @FillChar
 004CC01B    test        edi,edi
>004CC01D    je          004CC02B
 004CC01F    lea         eax,[ebp-58]
 004CC022    push        eax
 004CC023    push        54
 004CC025    push        edi
 004CC026    call        gdi32.GetObjectW
 004CC02B    cmp         dword ptr [esi+4],1
>004CC02F    jne         004CC03E
 004CC031    mov         eax,dword ptr [esi+10]
 004CC034    mov         dword ptr [ebp-4],eax
 004CC037    xor         eax,eax
 004CC039    mov         dword ptr [esi+10],eax
>004CC03C    jmp         004CC05B
 004CC03E    mov         eax,dword ptr [esi+10]
 004CC041    cmp         eax,dword ptr ds:[7CA44C];gvar_007CA44C
>004CC047    jne         004CC053
 004CC049    mov         eax,[007CA44C];gvar_007CA44C
 004CC04E    mov         dword ptr [ebp-4],eax
>004CC051    jmp         004CC05B
 004CC053    call        CopyPalette
 004CC058    mov         dword ptr [ebp-4],eax
 004CC05B    xor         eax,eax
 004CC05D    push        ebp
 004CC05E    push        4CC087
 004CC063    push        dword ptr fs:[eax]
 004CC066    mov         dword ptr fs:[eax],esp
 004CC069    lea         eax,[ebp-58]
 004CC06C    push        eax
 004CC06D    push        0
 004CC06F    push        0
 004CC071    mov         ecx,dword ptr [ebp-4]
 004CC074    mov         edx,edi
 004CC076    mov         eax,ebx
 004CC078    call        TBitmap.NewImage
 004CC07D    xor         eax,eax
 004CC07F    pop         edx
 004CC080    pop         ecx
 004CC081    pop         ecx
 004CC082    mov         dword ptr fs:[eax],edx
>004CC085    jmp         004CC09E
>004CC087    jmp         @HandleAnyException
 004CC08C    mov         eax,dword ptr [ebp-4]
 004CC08F    call        InternalDeletePalette
 004CC094    call        @RaiseAgain
 004CC099    call        @DoneExcept
 004CC09E    mov         edx,ebx
 004CC0A0    mov         eax,ebx
 004CC0A2    mov         ecx,dword ptr [eax]
 004CC0A4    call        dword ptr [ecx+10]
 004CC0A7    pop         edi
 004CC0A8    pop         esi
 004CC0A9    pop         ebx
 004CC0AA    mov         esp,ebp
 004CC0AC    pop         ebp
 004CC0AD    ret
*}
end;

//004CC0B0
procedure TBitmap.SetHandleType(Value:TBitmapHandleType);
begin
{*
 004CC0B0    push        ebx
 004CC0B1    push        esi
 004CC0B2    push        edi
 004CC0B3    push        ebp
 004CC0B4    add         esp,0FFFFFFAC
 004CC0B7    mov         ebx,edx
 004CC0B9    mov         esi,eax
 004CC0BB    mov         eax,esi
 004CC0BD    call        TBitmap.GetHandleType
 004CC0C2    cmp         bl,al
>004CC0C4    je          004CC1E2
 004CC0CA    mov         edi,dword ptr [esi+28]
 004CC0CD    cmp         dword ptr [edi+8],0
>004CC0D1    jne         004CC0F4
 004CC0D3    cmp         dword ptr [edi+14],0
>004CC0D7    jne         004CC0F4
 004CC0D9    cmp         bl,1
>004CC0DC    jne         004CC0E8
 004CC0DE    xor         eax,eax
 004CC0E0    mov         dword ptr [edi+30],eax
>004CC0E3    jmp         004CC1E2
 004CC0E8    mov         dword ptr [edi+30],28
>004CC0EF    jmp         004CC1E2
 004CC0F4    test        bl,bl
>004CC0F6    jne         004CC161
 004CC0F8    mov         eax,dword ptr [edi+14]
 004CC0FB    test        eax,eax
>004CC0FD    je          004CC108
 004CC0FF    cmp         eax,dword ptr [edi+8]
>004CC102    je          004CC1E2
 004CC108    mov         eax,esi
 004CC10A    call        TBitmap.FreeContext
 004CC10F    mov         eax,esi
 004CC111    call        TBitmap.PaletteNeeded
 004CC116    mov         eax,esi
 004CC118    call        TBitmap.DIBNeeded
 004CC11D    cmp         dword ptr [edi+4],1
>004CC121    jne         004CC14E
 004CC123    mov         eax,dword ptr [edi+14]
 004CC126    xor         edx,edx
 004CC128    mov         dword ptr [edi+14],edx
 004CC12B    mov         ebp,dword ptr [edi+10]
 004CC12E    xor         edx,edx
 004CC130    mov         dword ptr [edi+10],edx
 004CC133    lea         edx,[edi+18]
 004CC136    push        edx
 004CC137    movzx       edx,byte ptr [edi+71]
 004CC13B    push        edx
 004CC13C    push        0
 004CC13E    mov         ecx,ebp
 004CC140    mov         edx,eax
 004CC142    mov         eax,esi
 004CC144    call        TBitmap.NewImage
>004CC149    jmp         004CC1D9
 004CC14E    lea         eax,[edi+18]
 004CC151    push        eax
 004CC152    mov         ecx,dword ptr [edi+10]
 004CC155    mov         edx,dword ptr [edi+14]
 004CC158    mov         eax,esi
 004CC15A    call        TBitmap.CopyImage
>004CC15F    jmp         004CC1D9
 004CC161    mov         eax,dword ptr [edi+8]
 004CC164    test        eax,eax
>004CC166    je          004CC16D
 004CC168    cmp         eax,dword ptr [edi+14]
>004CC16B    jne         004CC1E2
 004CC16D    mov         eax,esi
 004CC16F    call        TBitmap.FreeContext
 004CC174    mov         eax,esi
 004CC176    call        TBitmap.PaletteNeeded
 004CC17B    push        esi
 004CC17C    push        edi
 004CC17D    lea         esi,[edi+18]
 004CC180    lea         edi,[esp+8]
 004CC184    mov         ecx,15
 004CC189    rep movs    dword ptr [edi],dword ptr [esi]
 004CC18B    pop         edi
 004CC18C    pop         esi
 004CC18D    xor         eax,eax
 004CC18F    mov         dword ptr [esp+18],eax
 004CC193    cmp         dword ptr [edi+4],1
 004CC197    sete        bl
 004CC19A    test        bl,bl
>004CC19C    je          004CC1A3
 004CC19E    mov         ebp,dword ptr [edi+10]
>004CC1A1    jmp         004CC1AD
 004CC1A3    mov         eax,dword ptr [edi+10]
 004CC1A6    call        CopyPalette
 004CC1AB    mov         ebp,eax
 004CC1AD    push        esp
 004CC1AE    push        0
 004CC1B0    mov         ecx,ebp
 004CC1B2    mov         edx,dword ptr [edi+10]
 004CC1B5    mov         eax,dword ptr [edi+14]
 004CC1B8    call        CopyBitmap
 004CC1BD    test        bl,bl
>004CC1BF    je          004CC1C6
 004CC1C1    mov         dword ptr [edi+8],eax
>004CC1C4    jmp         004CC1D9
 004CC1C6    push        esp
 004CC1C7    movzx       edx,byte ptr [edi+71]
 004CC1CB    push        edx
 004CC1CC    push        0
 004CC1CE    mov         ecx,ebp
 004CC1D0    mov         edx,eax
 004CC1D2    mov         eax,esi
 004CC1D4    call        TBitmap.NewImage
 004CC1D9    mov         edx,esi
 004CC1DB    mov         eax,esi
 004CC1DD    mov         ecx,dword ptr [eax]
 004CC1DF    call        dword ptr [ecx+10]
 004CC1E2    add         esp,54
 004CC1E5    pop         ebp
 004CC1E6    pop         edi
 004CC1E7    pop         esi
 004CC1E8    pop         ebx
 004CC1E9    ret
*}
end;

//004CC1EC
{*procedure TBitmap.SetHeight(?:?);
begin
 004CC1EC    push        ebx
 004CC1ED    push        esi
 004CC1EE    push        edi
 004CC1EF    mov         edi,edx
 004CC1F1    mov         esi,eax
 004CC1F3    mov         eax,dword ptr [esi+28];TBitmap.FImage:TBitmapImage
 004CC1F6    mov         edx,dword ptr [eax+1C];TBitmapImage.FDIB.dsBm:tagBITMAP
 004CC1F9    mov         ecx,edi
 004CC1FB    mov         eax,esi
 004CC1FD    mov         ebx,dword ptr [eax]
 004CC1FF    call        dword ptr [ebx+6C];TBitmap.SetSize
 004CC202    pop         edi
 004CC203    pop         esi
 004CC204    pop         ebx
 004CC205    ret
end;*}

//004CC208
procedure TBitmap.SetMaskHandle(Value:Windows.HBITMAP);
begin
{*
 004CC208    mov         ecx,dword ptr [eax+28]
 004CC20B    cmp         edx,dword ptr [ecx+0C]
>004CC20E    je          004CC21B
 004CC210    mov         dword ptr [ecx+0C],edx
 004CC213    mov         byte ptr [eax+32],1
 004CC217    mov         byte ptr [eax+31],1
 004CC21B    ret
*}
end;

//004CC21C
procedure TBitmap.SetMonochrome(Value:Boolean);
begin
{*
 004CC21C    push        ebx
 004CC21D    push        esi
 004CC21E    push        edi
 004CC21F    add         esp,0FFFFFFAC
 004CC222    mov         ebx,edx
 004CC224    mov         edi,eax
 004CC226    mov         esi,dword ptr [edi+28]
 004CC229    lea         eax,[esi+30]
 004CC22C    cmp         word ptr [eax+0C],1
>004CC231    jne         004CC23A
 004CC233    cmp         word ptr [eax+0E],1
>004CC238    je          004CC23E
 004CC23A    xor         eax,eax
>004CC23C    jmp         004CC240
 004CC23E    mov         al,1
 004CC240    cmp         bl,al
>004CC242    je          004CC291
 004CC244    mov         eax,edi
 004CC246    call        TBitmap.HandleNeeded
 004CC24B    push        esi
 004CC24C    push        edi
 004CC24D    add         esi,18
 004CC250    lea         edi,[esp+8]
 004CC254    mov         ecx,15
 004CC259    rep movs    dword ptr [edi],dword ptr [esi]
 004CC25B    pop         edi
 004CC25C    pop         esi
 004CC25D    xor         eax,eax
 004CC25F    mov         dword ptr [esp+18],eax
 004CC263    movzx       eax,bl
 004CC266    mov         word ptr [esp+24],ax
 004CC26B    mov         word ptr [esp+26],ax
 004CC270    mov         word ptr [esp+10],ax
 004CC275    mov         word ptr [esp+12],ax
 004CC27A    push        esp
 004CC27B    mov         ecx,dword ptr [esi+10]
 004CC27E    mov         edx,dword ptr [esi+8]
 004CC281    mov         eax,edi
 004CC283    call        TBitmap.CopyImage
 004CC288    mov         edx,edi
 004CC28A    mov         eax,edi
 004CC28C    mov         ecx,dword ptr [eax]
 004CC28E    call        dword ptr [ecx+10]
 004CC291    add         esp,54
 004CC294    pop         edi
 004CC295    pop         esi
 004CC296    pop         ebx
 004CC297    ret
*}
end;

//004CC298
procedure TBitmap.SetPalette(Value:Windows.HPALETTE);
begin
{*
 004CC298    push        ebp
 004CC299    mov         ebp,esp
 004CC29B    add         esp,0FFFFFFA8
 004CC29E    push        ebx
 004CC29F    push        esi
 004CC2A0    push        edi
 004CC2A1    mov         edi,edx
 004CC2A3    mov         ebx,eax
 004CC2A5    mov         eax,dword ptr [ebx+28]
 004CC2A8    cmp         edi,dword ptr [eax+10]
>004CC2AB    je          004CC365
 004CC2B1    mov         esi,eax
 004CC2B3    test        edi,edi
>004CC2B5    jne         004CC2CC
 004CC2B7    cmp         dword ptr [esi+4],1
>004CC2BB    jne         004CC2CC
 004CC2BD    mov         eax,dword ptr [esi+10]
 004CC2C0    call        InternalDeletePalette
 004CC2C5    xor         eax,eax
 004CC2C7    mov         dword ptr [esi+10],eax
>004CC2CA    jmp         004CC348
 004CC2CC    mov         eax,ebx
 004CC2CE    call        TBitmap.FreeContext
 004CC2D3    mov         eax,ebx
 004CC2D5    call        TBitmap.HandleNeeded
 004CC2DA    push        esi
 004CC2DB    push        edi
 004CC2DC    add         esi,18
 004CC2DF    lea         edi,[ebp-58]
 004CC2E2    mov         ecx,15
 004CC2E7    rep movs    dword ptr [edi],dword ptr [esi]
 004CC2E9    pop         edi
 004CC2EA    pop         esi
 004CC2EB    lea         eax,[ebp-58]
 004CC2EE    push        eax
 004CC2EF    push        0
 004CC2F1    mov         edx,dword ptr [esi+10]
 004CC2F4    mov         eax,dword ptr [esi+8]
 004CC2F7    mov         ecx,edi
 004CC2F9    call        CopyBitmap
 004CC2FE    mov         dword ptr [ebp-4],eax
 004CC301    xor         eax,eax
 004CC303    push        ebp
 004CC304    push        4CC330
 004CC309    push        dword ptr fs:[eax]
 004CC30C    mov         dword ptr fs:[eax],esp
 004CC30F    lea         eax,[ebp-58]
 004CC312    push        eax
 004CC313    movzx       eax,byte ptr [esi+71]
 004CC317    push        eax
 004CC318    push        0
 004CC31A    mov         ecx,edi
 004CC31C    mov         edx,dword ptr [ebp-4]
 004CC31F    mov         eax,ebx
 004CC321    call        TBitmap.NewImage
 004CC326    xor         eax,eax
 004CC328    pop         edx
 004CC329    pop         ecx
 004CC32A    pop         ecx
 004CC32B    mov         dword ptr fs:[eax],edx
>004CC32E    jmp         004CC348
>004CC330    jmp         @HandleAnyException
 004CC335    mov         eax,dword ptr [ebp-4]
 004CC338    push        eax
 004CC339    call        gdi32.DeleteObject
 004CC33E    call        @RaiseAgain
 004CC343    call        @DoneExcept
 004CC348    mov         eax,dword ptr [ebx+28]
 004CC34B    lea         ecx,[eax+18]
 004CC34E    mov         eax,dword ptr [eax+14]
 004CC351    mov         edx,edi
 004CC353    call        UpdateDIBColorTable
 004CC358    mov         byte ptr [ebx+22],1
 004CC35C    mov         edx,ebx
 004CC35E    mov         eax,ebx
 004CC360    mov         ecx,dword ptr [eax]
 004CC362    call        dword ptr [ecx+10]
 004CC365    pop         edi
 004CC366    pop         esi
 004CC367    pop         ebx
 004CC368    mov         esp,ebp
 004CC36A    pop         ebp
 004CC36B    ret
*}
end;

//004CC36C
procedure TBitmap.SetPixelFormat(Value:TPixelFormat);
begin
{*
 004CC36C    push        ebp
 004CC36D    mov         ebp,esp
 004CC36F    add         esp,0FFFFFFA0
 004CC372    push        ebx
 004CC373    push        esi
 004CC374    push        edi
 004CC375    mov         ebx,edx
 004CC377    mov         dword ptr [ebp-4],eax
 004CC37A    mov         eax,dword ptr [ebp-4]
 004CC37D    call        TBitmap.GetPixelFormat
 004CC382    cmp         bl,al
>004CC384    je          004CC4CA
 004CC38A    mov         eax,ebx
 004CC38C    sub         al,1
>004CC38E    jb          004CC396
 004CC390    sub         al,7
>004CC392    je          004CC3A5
>004CC394    jmp         004CC3B4
 004CC396    mov         dl,1
 004CC398    mov         eax,dword ptr [ebp-4]
 004CC39B    mov         ecx,dword ptr [eax]
 004CC39D    call        dword ptr [ecx+78]
>004CC3A0    jmp         004CC4CA
 004CC3A5    mov         eax,[007C454C];^SResString213:TResStringRec
 004CC3AA    call        InvalidOperation
>004CC3AF    jmp         004CC4CA
 004CC3B4    lea         eax,[ebp-60]
 004CC3B7    xor         ecx,ecx
 004CC3B9    mov         edx,54
 004CC3BE    call        @FillChar
 004CC3C3    mov         eax,dword ptr [ebp-4]
 004CC3C6    mov         eax,dword ptr [eax+28]
 004CC3C9    lea         esi,[eax+18]
 004CC3CC    lea         edi,[ebp-60]
 004CC3CF    mov         ecx,6
 004CC3D4    rep movs    dword ptr [edi],dword ptr [esi]
 004CC3D6    mov         byte ptr [ebp-9],0
 004CC3DA    xor         edx,edx
 004CC3DC    mov         dword ptr [ebp-4C],edx
 004CC3DF    mov         dword ptr [ebp-48],28
 004CC3E6    mov         edx,dword ptr [ebp-5C]
 004CC3E9    mov         dword ptr [ebp-44],edx
 004CC3EC    mov         edx,dword ptr [ebp-58]
 004CC3EF    mov         dword ptr [ebp-40],edx
 004CC3F2    mov         word ptr [ebp-3C],1
 004CC3F8    movzx       edx,bl
 004CC3FB    movzx       edx,byte ptr [edx+7A1045]
 004CC402    mov         word ptr [ebp-3A],dx
 004CC406    mov         eax,dword ptr [eax+10]
 004CC409    mov         dword ptr [ebp-8],eax
 004CC40C    sub         bl,2
>004CC40F    je          004CC41C
 004CC411    dec         bl
>004CC413    je          004CC426
 004CC415    sub         bl,2
>004CC418    je          004CC44B
>004CC41A    jmp         004CC467
 004CC41C    mov         eax,[007CA44C];gvar_007CA44C
 004CC421    mov         dword ptr [ebp-8],eax
>004CC424    jmp         004CC467
 004CC426    push        0
 004CC428    call        user32.GetDC
 004CC42D    call        GDICheck
 004CC432    mov         ebx,eax
 004CC434    push        ebx
 004CC435    call        gdi32.CreateHalftonePalette
 004CC43A    mov         dword ptr [ebp-8],eax
 004CC43D    mov         byte ptr [ebp-9],1
 004CC441    push        ebx
 004CC442    push        0
 004CC444    call        user32.ReleaseDC
>004CC449    jmp         004CC467
 004CC44B    mov         dword ptr [ebp-38],3
 004CC452    mov         dword ptr [ebp-20],0F800
 004CC459    mov         dword ptr [ebp-1C],7E0
 004CC460    mov         dword ptr [ebp-18],1F
 004CC467    xor         eax,eax
 004CC469    push        ebp
 004CC46A    push        4CC4B8
 004CC46F    push        dword ptr fs:[eax]
 004CC472    mov         dword ptr fs:[eax],esp
 004CC475    lea         eax,[ebp-60]
 004CC478    push        eax
 004CC479    mov         eax,dword ptr [ebp-4]
 004CC47C    mov         edx,dword ptr [eax]
 004CC47E    call        dword ptr [edx+70]
 004CC481    mov         edx,eax
 004CC483    mov         ecx,dword ptr [ebp-8]
 004CC486    mov         eax,dword ptr [ebp-4]
 004CC489    call        TBitmap.CopyImage
 004CC48E    cmp         dword ptr [ebp-8],0
 004CC492    setne       al
 004CC495    mov         edx,dword ptr [ebp-4]
 004CC498    mov         byte ptr [edx+22],al
 004CC49B    xor         eax,eax
 004CC49D    pop         edx
 004CC49E    pop         ecx
 004CC49F    pop         ecx
 004CC4A0    mov         dword ptr fs:[eax],edx
 004CC4A3    push        4CC4BF
 004CC4A8    cmp         byte ptr [ebp-9],0
>004CC4AC    je          004CC4B7
 004CC4AE    mov         eax,dword ptr [ebp-8]
 004CC4B1    push        eax
 004CC4B2    call        gdi32.DeleteObject
 004CC4B7    ret
>004CC4B8    jmp         @HandleFinally
>004CC4BD    jmp         004CC4A8
 004CC4BF    mov         edx,dword ptr [ebp-4]
 004CC4C2    mov         eax,dword ptr [ebp-4]
 004CC4C5    mov         ecx,dword ptr [eax]
 004CC4C7    call        dword ptr [ecx+10]
 004CC4CA    pop         edi
 004CC4CB    pop         esi
 004CC4CC    pop         ebx
 004CC4CD    mov         esp,ebp
 004CC4CF    pop         ebp
 004CC4D0    ret
*}
end;

//004CC4D4
procedure TBitmap.SetTransparentColor(Value:UITypes.TColor);
begin
{*
 004CC4D4    push        ebx
 004CC4D5    push        esi
 004CC4D6    mov         ebx,eax
 004CC4D8    cmp         edx,dword ptr [ebx+34]
>004CC4DB    je          004CC51E
 004CC4DD    cmp         edx,20000000
>004CC4E3    jne         004CC4EB
 004CC4E5    mov         byte ptr [ebx+38],0
>004CC4E9    jmp         004CC4EF
 004CC4EB    mov         byte ptr [ebx+38],1
 004CC4EF    mov         dword ptr [ebx+34],edx
 004CC4F2    mov         eax,dword ptr [ebx+28]
 004CC4F5    cmp         dword ptr [eax+4],1
>004CC4F9    jle         004CC515
 004CC4FB    mov         esi,eax
 004CC4FD    mov         eax,ebx
 004CC4FF    call        TBitmap.HandleNeeded
 004CC504    lea         eax,[esi+18]
 004CC507    push        eax
 004CC508    mov         ecx,dword ptr [esi+10]
 004CC50B    mov         edx,dword ptr [esi+8]
 004CC50E    mov         eax,ebx
 004CC510    call        TBitmap.CopyImage
 004CC515    mov         edx,ebx
 004CC517    mov         eax,ebx
 004CC519    mov         ecx,dword ptr [eax]
 004CC51B    call        dword ptr [ecx+10]
 004CC51E    pop         esi
 004CC51F    pop         ebx
 004CC520    ret
*}
end;

//004CC524
procedure TBitmap.SetTransparentMode(Value:TTransparentMode);
begin
{*
 004CC524    push        ebx
 004CC525    mov         ebx,eax
 004CC527    cmp         dl,byte ptr [ebx+38]
>004CC52A    je          004CC54E
 004CC52C    test        dl,dl
>004CC52E    jne         004CC53E
 004CC530    mov         edx,20000000
 004CC535    mov         eax,ebx
 004CC537    call        TBitmap.SetTransparentColor
>004CC53C    jmp         004CC54E
 004CC53E    mov         eax,ebx
 004CC540    call        TBitmap.GetTransparentColor
 004CC545    mov         edx,eax
 004CC547    mov         eax,ebx
 004CC549    call        TBitmap.SetTransparentColor
 004CC54E    pop         ebx
 004CC54F    ret
*}
end;

//004CC550
{*procedure TBitmap.SetWidth(?:?);
begin
 004CC550    push        ebx
 004CC551    push        esi
 004CC552    push        edi
 004CC553    mov         edi,edx
 004CC555    mov         esi,eax
 004CC557    mov         eax,dword ptr [esi+28];TBitmap.FImage:TBitmapImage
 004CC55A    mov         ecx,dword ptr [eax+20];TBitmapImage.FDIB.dsBm:tagBITMAP
 004CC55D    mov         edx,edi
 004CC55F    mov         eax,esi
 004CC561    mov         ebx,dword ptr [eax]
 004CC563    call        dword ptr [ebx+6C];TBitmap.SetSize
 004CC566    pop         edi
 004CC567    pop         esi
 004CC568    pop         ebx
 004CC569    ret
end;*}

//004CC56C
procedure TBitmap.WriteData(Stream:Classes.TStream);
begin
{*
 004CC56C    mov         cl,1
 004CC56E    call        TBitmap.WriteStream
 004CC573    ret
*}
end;

//004CC574
procedure TBitmap.WriteStream(Stream:Classes.TStream; WriteSize:Boolean);
begin
{*
 004CC574    push        ebx
 004CC575    push        esi
 004CC576    push        edi
 004CC577    push        ebp
 004CC578    add         esp,0FFFFFBD4
 004CC57E    mov         ebx,ecx
 004CC580    mov         edi,edx
 004CC582    mov         esi,eax
 004CC584    lea         eax,[esp+10]
 004CC588    xor         ecx,ecx
 004CC58A    mov         edx,0E
 004CC58F    call        @FillChar
 004CC594    mov         word ptr [esp+10],4D42
 004CC59B    mov         eax,dword ptr [esi+28]
 004CC59E    mov         ebp,dword ptr [eax+6C]
 004CC5A1    test        ebp,ebp
>004CC5A3    je          004CC5DD
 004CC5A5    mov         eax,ebp
 004CC5A7    mov         edx,dword ptr [eax]
 004CC5A9    call        dword ptr [edx]
 004CC5AB    mov         dword ptr [esp],eax
 004CC5AE    test        bl,bl
>004CC5B0    je          004CC5C0
 004CC5B2    mov         edx,esp
 004CC5B4    mov         ecx,4
 004CC5B9    mov         eax,edi
 004CC5BB    call        TStream.WriteBuffer
 004CC5C0    mov         eax,dword ptr [esi+28]
 004CC5C3    mov         ebx,dword ptr [eax+6C]
 004CC5C6    mov         eax,ebx
 004CC5C8    mov         edx,dword ptr [eax]
 004CC5CA    call        dword ptr [edx]
 004CC5CC    mov         ecx,eax
 004CC5CE    mov         edx,dword ptr [ebx+4]
 004CC5D1    mov         eax,edi
 004CC5D3    mov         ebx,dword ptr [eax]
 004CC5D5    call        dword ptr [ebx+10]
>004CC5D8    jmp         004CC841
 004CC5DD    mov         eax,esi
 004CC5DF    call        TBitmap.DIBNeeded
 004CC5E4    mov         eax,dword ptr [esi+28]
 004CC5E7    cmp         word ptr [eax+3E],20
>004CC5EC    jne         004CC5FB
 004CC5EE    cmp         byte ptr [esi+39],1
>004CC5F2    jne         004CC5FB
 004CC5F4    mov         eax,esi
 004CC5F6    call        TBitmap.UnPreMultiplyAlpha
 004CC5FB    mov         ebp,dword ptr [esi+28]
 004CC5FE    xor         eax,eax
 004CC600    mov         dword ptr [esp],eax
 004CC603    mov         eax,dword ptr [ebp+14]
 004CC606    test        eax,eax
>004CC608    je          004CC737
 004CC60E    mov         edx,dword ptr [ebp+50]
 004CC611    push        edx
 004CC612    lea         ecx,[esp+4]
 004CC616    lea         edx,[esp+0C]
 004CC61A    call        InternalGetDIBSizes
 004CC61F    cmp         byte ptr [ebp+71],0
>004CC623    je          004CC647
 004CC625    mov         dword ptr [esp+8],0C
 004CC62D    movzx       eax,word ptr [ebp+3E]
 004CC631    cmp         ax,8
>004CC635    ja          004CC647
 004CC637    mov         ecx,eax
 004CC639    mov         eax,1
 004CC63E    shl         eax,cl
 004CC640    lea         eax,[eax+eax*2]
 004CC643    add         dword ptr [esp+8],eax
 004CC647    mov         eax,dword ptr [esp+8]
 004CC64B    add         eax,0E
 004CC64E    add         dword ptr [esp],eax
 004CC651    lea         eax,[esp+10]
 004CC655    xor         ecx,ecx
 004CC657    mov         edx,0E
 004CC65C    call        @FillChar
 004CC661    mov         word ptr [esp+10],4D42
 004CC668    cmp         word ptr [ebp+3E],8
>004CC66D    ja          004CC6CA
 004CC66F    mov         eax,esi
 004CC671    call        TBitmap.GetCanvas
 004CC676    movzx       edx,byte ptr ds:[4CC84C]
 004CC67D    mov         ecx,dword ptr [eax]
 004CC67F    call        dword ptr [ecx+2C]
 004CC682    mov         eax,dword ptr [ebp+14]
 004CC685    push        eax
 004CC686    mov         eax,dword ptr [esi+2C]
 004CC689    mov         eax,dword ptr [eax+38]
 004CC68C    push        eax
 004CC68D    call        gdi32.SelectObject
 004CC692    call        GDICheck
 004CC697    mov         dword ptr [esp+0C],eax
 004CC69B    lea         eax,[esp+2C]
 004CC69F    push        eax
 004CC6A0    push        100
 004CC6A5    push        0
 004CC6A7    mov         eax,dword ptr [esi+2C]
 004CC6AA    mov         eax,dword ptr [eax+38]
 004CC6AD    push        eax
 004CC6AE    call        gdi32.GetDIBColorTable
 004CC6B3    mov         dword ptr [esp+4],eax
 004CC6B7    mov         eax,dword ptr [esp+0C]
 004CC6BB    push        eax
 004CC6BC    mov         eax,dword ptr [esi+2C]
 004CC6BF    mov         eax,dword ptr [eax+38]
 004CC6C2    push        eax
 004CC6C3    call        gdi32.SelectObject
>004CC6C8    jmp         004CC6D0
 004CC6CA    xor         eax,eax
 004CC6CC    mov         dword ptr [esp+4],eax
 004CC6D0    mov         eax,dword ptr [ebp+50]
 004CC6D3    test        eax,eax
>004CC6D5    jbe         004CC6E1
 004CC6D7    cmp         eax,dword ptr [esp+4]
>004CC6DB    jae         004CC6E1
 004CC6DD    mov         dword ptr [esp+4],eax
 004CC6E1    cmp         byte ptr [ebp+71],0
>004CC6E5    jne         004CC725
 004CC6E7    cmp         dword ptr [esp+4],0
>004CC6EC    jne         004CC725
 004CC6EE    cmp         dword ptr [ebp+10],0
>004CC6F2    je          004CC725
 004CC6F4    cmp         byte ptr [ebp+70],0
>004CC6F8    jne         004CC725
 004CC6FA    lea         edx,[esp+2C]
 004CC6FE    mov         ecx,0FF
 004CC703    mov         eax,dword ptr [ebp+10]
 004CC706    call        PaletteToDIBColorTable
 004CC70B    mov         dword ptr [esp+4],eax
 004CC70F    cmp         word ptr [ebp+3E],8
>004CC714    jbe         004CC725
 004CC716    mov         eax,dword ptr [esp+4]
 004CC71A    add         eax,eax
 004CC71C    add         eax,eax
 004CC71E    add         dword ptr [esp],eax
 004CC721    add         dword ptr [esp+8],eax
 004CC725    mov         eax,dword ptr [esp]
 004CC728    mov         dword ptr [esp+12],eax
 004CC72C    mov         eax,dword ptr [esp+8]
 004CC730    add         eax,0E
 004CC733    mov         dword ptr [esp+1A],eax
 004CC737    test        bl,bl
>004CC739    je          004CC749
 004CC73B    mov         edx,esp
 004CC73D    mov         ecx,4
 004CC742    mov         eax,edi
 004CC744    call        TStream.WriteBuffer
 004CC749    cmp         dword ptr [esp],0
>004CC74D    je          004CC841
 004CC753    lea         eax,[ebp+18]
 004CC756    call        FixupBitFields
 004CC75B    cmp         dword ptr [esp+4],0
>004CC760    je          004CC789
 004CC762    mov         eax,dword ptr [ebp+50]
 004CC765    test        eax,eax
>004CC767    je          004CC76F
 004CC769    cmp         eax,dword ptr [esp+4]
>004CC76D    je          004CC776
 004CC76F    mov         eax,dword ptr [esp+4]
 004CC773    mov         dword ptr [ebp+50],eax
 004CC776    cmp         byte ptr [ebp+71],0
>004CC77A    je          004CC789
 004CC77C    lea         edx,[esp+4]
 004CC780    lea         eax,[esp+2C]
 004CC784    call        RGBQuadToTriple
 004CC789    cmp         byte ptr [ebp+71],0
>004CC78D    je          004CC7DE
 004CC78F    lea         eax,[ebp+30]
 004CC792    mov         dword ptr [esp+20],0C
 004CC79A    movzx       edx,word ptr [eax+4]
 004CC79E    mov         word ptr [esp+24],dx
 004CC7A3    movzx       edx,word ptr [eax+8]
 004CC7A7    mov         word ptr [esp+26],dx
 004CC7AC    mov         word ptr [esp+28],1
 004CC7B3    movzx       eax,word ptr [eax+0E]
 004CC7B7    mov         word ptr [esp+2A],ax
 004CC7BC    lea         edx,[esp+10]
 004CC7C0    mov         ecx,0E
 004CC7C5    mov         eax,edi
 004CC7C7    call        TStream.WriteBuffer
 004CC7CC    lea         edx,[esp+20]
 004CC7D0    mov         ecx,0C
 004CC7D5    mov         eax,edi
 004CC7D7    call        TStream.WriteBuffer
>004CC7DC    jmp         004CC819
 004CC7DE    lea         edx,[esp+10]
 004CC7E2    mov         ecx,0E
 004CC7E7    mov         eax,edi
 004CC7E9    call        TStream.WriteBuffer
 004CC7EE    lea         edx,[ebp+30]
 004CC7F1    mov         ecx,28
 004CC7F6    mov         eax,edi
 004CC7F8    call        TStream.WriteBuffer
 004CC7FD    cmp         word ptr [ebp+3E],8
>004CC802    jbe         004CC819
 004CC804    test        byte ptr [ebp+40],3
>004CC808    je          004CC819
 004CC80A    lea         edx,[ebp+58]
 004CC80D    mov         ecx,0C
 004CC812    mov         eax,edi
 004CC814    call        TStream.WriteBuffer
 004CC819    movzx       eax,byte ptr [ebp+71]
 004CC81D    movzx       ecx,byte ptr [eax+7A104D]
 004CC824    imul        ecx,dword ptr [esp+4]
 004CC829    lea         edx,[esp+2C]
 004CC82D    mov         eax,edi
 004CC82F    call        TStream.WriteBuffer
 004CC834    mov         edx,dword ptr [ebp+2C]
 004CC837    mov         ecx,dword ptr [ebp+44]
 004CC83A    mov         eax,edi
 004CC83C    call        TStream.WriteBuffer
 004CC841    add         esp,42C
 004CC847    pop         ebp
 004CC848    pop         edi
 004CC849    pop         esi
 004CC84A    pop         ebx
 004CC84B    ret
*}
end;

//004CC850
procedure TBitmap.SaveToStream(Stream:TStream);
begin
{*
 004CC850    xor         ecx,ecx
 004CC852    call        TBitmap.WriteStream
 004CC857    ret
*}
end;

//004CC858
procedure TBitmap.SaveToClipboardFormat(var Format:Word; var Data:NativeUInt; var APalette:HPALETTE);
begin
{*
 004CC858    push        ebp
 004CC859    mov         ebp,esp
 004CC85B    add         esp,0FFFFFFA8
 004CC85E    push        ebx
 004CC85F    push        esi
 004CC860    push        edi
 004CC861    mov         dword ptr [ebp-4],ecx
 004CC864    mov         ebx,eax
 004CC866    mov         word ptr [edx],2
 004CC86B    mov         eax,ebx
 004CC86D    call        TBitmap.HandleNeeded
 004CC872    mov         esi,dword ptr [ebx+28]
 004CC875    push        esi
 004CC876    add         esi,18
 004CC879    lea         edi,[ebp-58]
 004CC87C    mov         ecx,15
 004CC881    rep movs    dword ptr [edi],dword ptr [esi]
 004CC883    pop         esi
 004CC884    xor         eax,eax
 004CC886    mov         dword ptr [ebp-40],eax
 004CC889    xor         eax,eax
 004CC88B    mov         dword ptr [ebp-44],eax
 004CC88E    lea         eax,[ebp-58]
 004CC891    push        eax
 004CC892    mov         eax,dword ptr [ebx+2C]
 004CC895    push        eax
 004CC896    mov         edi,dword ptr [esi+10]
 004CC899    mov         ecx,edi
 004CC89B    mov         edx,edi
 004CC89D    mov         eax,dword ptr [esi+8]
 004CC8A0    call        CopyBitmap
 004CC8A5    mov         edx,dword ptr [ebp-4]
 004CC8A8    mov         dword ptr [edx],eax
 004CC8AA    xor         eax,eax
 004CC8AC    push        ebp
 004CC8AD    push        4CC8D2
 004CC8B2    push        dword ptr fs:[eax]
 004CC8B5    mov         dword ptr fs:[eax],esp
 004CC8B8    mov         eax,dword ptr [ebx+28]
 004CC8BB    mov         eax,dword ptr [eax+10]
 004CC8BE    call        CopyPalette
 004CC8C3    mov         edx,dword ptr [ebp+8]
 004CC8C6    mov         dword ptr [edx],eax
 004CC8C8    xor         eax,eax
 004CC8CA    pop         edx
 004CC8CB    pop         ecx
 004CC8CC    pop         ecx
 004CC8CD    mov         dword ptr fs:[eax],edx
>004CC8D0    jmp         004CC8EC
>004CC8D2    jmp         @HandleAnyException
 004CC8D7    mov         eax,dword ptr [ebp-4]
 004CC8DA    mov         eax,dword ptr [eax]
 004CC8DC    push        eax
 004CC8DD    call        gdi32.DeleteObject
 004CC8E2    call        @RaiseAgain
 004CC8E7    call        @DoneExcept
 004CC8EC    pop         edi
 004CC8ED    pop         esi
 004CC8EE    pop         ebx
 004CC8EF    mov         esp,ebp
 004CC8F1    pop         ebp
 004CC8F2    ret         4
*}
end;

//004CC8F8
procedure TBitmap.SetSize(AWidth:Integer; AHeight:Integer);
begin
{*
 004CC8F8    push        ebx
 004CC8F9    push        esi
 004CC8FA    push        edi
 004CC8FB    add         esp,0FFFFFFAC
 004CC8FE    mov         edi,ecx
 004CC900    mov         esi,edx
 004CC902    mov         ebx,eax
 004CC904    mov         eax,ebx
 004CC906    call        TBitmap.HandleNeeded
 004CC90B    mov         eax,dword ptr [ebx+28]
 004CC90E    cmp         esi,dword ptr [eax+1C]
>004CC911    jne         004CC918
 004CC913    cmp         edi,dword ptr [eax+20]
>004CC916    je          004CC951
 004CC918    push        esi
 004CC919    push        edi
 004CC91A    lea         esi,[eax+18]
 004CC91D    lea         edi,[esp+8]
 004CC921    mov         ecx,15
 004CC926    rep movs    dword ptr [edi],dword ptr [esi]
 004CC928    pop         edi
 004CC929    pop         esi
 004CC92A    mov         dword ptr [esp+4],esi
 004CC92E    mov         dword ptr [esp+8],edi
 004CC932    mov         dword ptr [esp+1C],esi
 004CC936    mov         dword ptr [esp+20],edi
 004CC93A    push        esp
 004CC93B    mov         ecx,dword ptr [eax+10]
 004CC93E    mov         edx,dword ptr [eax+8]
 004CC941    mov         eax,ebx
 004CC943    call        TBitmap.CopyImage
 004CC948    mov         edx,ebx
 004CC94A    mov         eax,ebx
 004CC94C    mov         ecx,dword ptr [eax]
 004CC94E    call        dword ptr [ecx+10]
 004CC951    add         esp,54
 004CC954    pop         edi
 004CC955    pop         esi
 004CC956    pop         ebx
 004CC957    ret
*}
end;

//004CC958
function TBitmap.TransparentColorStored:Boolean;
begin
{*
 004CC958    cmp         byte ptr [eax+38],1
 004CC95C    sete        al
 004CC95F    ret
*}
end;

//004CC960
destructor TIconImage.Destroy();
begin
{*
 004CC960    push        ebx
 004CC961    push        esi
 004CC962    call        @BeforeDestruction
 004CC967    mov         ebx,edx
 004CC969    mov         esi,eax
 004CC96B    mov         eax,dword ptr [esi+8]
 004CC96E    call        TObject.Free
 004CC973    mov         dl,0FC
 004CC975    and         dl,bl
 004CC977    mov         eax,esi
 004CC979    call        TSharedImage.Destroy
 004CC97E    test        bl,bl
>004CC980    jle         004CC989
 004CC982    mov         eax,esi
 004CC984    call        @ClassDestroy
 004CC989    pop         esi
 004CC98A    pop         ebx
 004CC98B    ret
*}
end;

//004CC98C
procedure TIconImage.FreeHandle;
begin
{*
 004CC98C    push        ebx
 004CC98D    mov         ebx,eax
 004CC98F    mov         eax,dword ptr [ebx+14]
 004CC992    test        eax,eax
>004CC994    je          004CC99C
 004CC996    push        eax
 004CC997    call        user32.DestroyIcon
 004CC99C    xor         eax,eax
 004CC99E    mov         dword ptr [ebx+14],eax
 004CC9A1    pop         ebx
 004CC9A2    ret
*}
end;

//004CC9A4
function HasAlpha(Buf:Windows.PRGBQuad; CX:Integer; CY:Integer):Boolean;
begin
{*
 004CC9A4    push        ebp
 004CC9A5    mov         ebp,esp
 004CC9A7    push        ecx
 004CC9A8    push        ebx
 004CC9A9    mov         dword ptr [ebp-4],ecx
 004CC9AC    xor         ecx,ecx
 004CC9AE    mov         ebx,dword ptr [ebp-4]
 004CC9B1    dec         ebx
 004CC9B2    test        ebx,ebx
>004CC9B4    jl          004CC9D3
 004CC9B6    inc         ebx
 004CC9B7    mov         edx,dword ptr [ebp-4]
 004CC9BA    dec         edx
 004CC9BB    test        edx,edx
>004CC9BD    jl          004CC9D0
 004CC9BF    inc         edx
 004CC9C0    test        byte ptr [eax+3],0FF
>004CC9C4    je          004CC9CA
 004CC9C6    mov         cl,1
>004CC9C8    jmp         004CC9D3
 004CC9CA    add         eax,4
 004CC9CD    dec         edx
>004CC9CE    jne         004CC9C0
 004CC9D0    dec         ebx
>004CC9D1    jne         004CC9B7
 004CC9D3    mov         eax,ecx
 004CC9D5    pop         ebx
 004CC9D6    pop         ecx
 004CC9D7    pop         ebp
 004CC9D8    ret
*}
end;

//004CC9DC
procedure TIcon.AssignTo(Dest:TPersistent);
begin
{*
 004CC9DC    push        ebp
 004CC9DD    mov         ebp,esp
 004CC9DF    add         esp,0FFFFFFA0
 004CC9E2    push        ebx
 004CC9E3    push        esi
 004CC9E4    push        edi
 004CC9E5    mov         esi,edx
 004CC9E7    mov         ebx,eax
 004CC9E9    mov         eax,esi
 004CC9EB    mov         edx,dword ptr ds:[4C1D10];TBitmap
 004CC9F1    call        @IsClass
 004CC9F6    test        al,al
>004CC9F8    je          004CCC8B
 004CC9FE    mov         dword ptr [ebp-0C],esi
 004CCA01    mov         eax,ebx
 004CCA03    mov         edx,dword ptr [eax]
 004CCA05    call        dword ptr [edx+24]
 004CCA08    push        eax
 004CCA09    mov         eax,ebx
 004CCA0B    mov         edx,dword ptr [eax]
 004CCA0D    call        dword ptr [edx+30]
 004CCA10    mov         edx,eax
 004CCA12    mov         eax,dword ptr [ebp-0C]
 004CCA15    pop         ecx
 004CCA16    mov         esi,dword ptr [eax]
 004CCA18    call        dword ptr [esi+6C]
 004CCA1B    mov         dl,7
 004CCA1D    mov         eax,dword ptr [ebp-0C]
 004CCA20    call        TBitmap.SetPixelFormat
 004CCA25    mov         dl,1
 004CCA27    mov         eax,dword ptr [ebp-0C]
 004CCA2A    call        TBitmap.SetAlphaFormat
 004CCA2F    mov         eax,dword ptr [ebp-0C]
 004CCA32    call        TBitmap.GetCanvas
 004CCA37    mov         eax,dword ptr [eax+48]
 004CCA3A    xor         edx,edx
 004CCA3C    call        TBrush.SetColor
 004CCA41    mov         eax,ebx
 004CCA43    mov         edx,dword ptr [eax]
 004CCA45    call        dword ptr [edx+24]
 004CCA48    push        eax
 004CCA49    lea         eax,[ebp-60]
 004CCA4C    push        eax
 004CCA4D    mov         eax,ebx
 004CCA4F    mov         edx,dword ptr [eax]
 004CCA51    call        dword ptr [edx+30]
 004CCA54    mov         ecx,eax
 004CCA56    xor         edx,edx
 004CCA58    xor         eax,eax
 004CCA5A    call        Rect
 004CCA5F    lea         eax,[ebp-60]
 004CCA62    push        eax
 004CCA63    mov         eax,dword ptr [ebp-0C]
 004CCA66    call        TBitmap.GetCanvas
 004CCA6B    pop         edx
 004CCA6C    mov         ecx,dword ptr [eax]
 004CCA6E    call        dword ptr [ecx+54]
 004CCA71    push        3
 004CCA73    push        0
 004CCA75    push        0
 004CCA77    mov         eax,ebx
 004CCA79    mov         edx,dword ptr [eax]
 004CCA7B    call        dword ptr [edx+24]
 004CCA7E    push        eax
 004CCA7F    mov         eax,ebx
 004CCA81    mov         edx,dword ptr [eax]
 004CCA83    call        dword ptr [edx+30]
 004CCA86    push        eax
 004CCA87    mov         eax,ebx
 004CCA89    call        TIcon.GetHandle
 004CCA8E    push        eax
 004CCA8F    push        0
 004CCA91    push        0
 004CCA93    mov         eax,dword ptr [ebp-0C]
 004CCA96    call        TBitmap.GetCanvas
 004CCA9B    call        TCanvas.GetHandle
 004CCAA0    push        eax
 004CCAA1    call        user32.DrawIconEx
 004CCAA6    mov         dword ptr [ebp-50],2C
 004CCAAD    mov         word ptr [ebp-44],1
 004CCAB3    mov         eax,ebx
 004CCAB5    mov         edx,dword ptr [eax]
 004CCAB7    call        dword ptr [edx+30]
 004CCABA    mov         dword ptr [ebp-48],eax
 004CCABD    mov         eax,ebx
 004CCABF    mov         edx,dword ptr [eax]
 004CCAC1    call        dword ptr [edx+24]
 004CCAC4    mov         dword ptr [ebp-4C],eax
 004CCAC7    xor         eax,eax
 004CCAC9    mov         dword ptr [ebp-40],eax
 004CCACC    mov         word ptr [ebp-42],20
 004CCAD2    mov         eax,dword ptr [ebp-4C]
 004CCAD5    add         eax,eax
 004CCAD7    add         eax,eax
 004CCAD9    imul        dword ptr [ebp-48]
 004CCADC    call        AllocMem
 004CCAE1    mov         dword ptr [ebp-4],eax
 004CCAE4    xor         edi,edi
 004CCAE6    push        ebp
 004CCAE7    push        4CCC84
 004CCAEC    push        dword ptr fs:[edi]
 004CCAEF    mov         dword ptr fs:[edi],esp
 004CCAF2    mov         eax,dword ptr [ebp-0C]
 004CCAF5    mov         edx,dword ptr [eax]
 004CCAF7    call        dword ptr [edx+70]
 004CCAFA    mov         esi,eax
 004CCAFC    push        0
 004CCAFE    lea         eax,[ebp-50]
 004CCB01    push        eax
 004CCB02    mov         eax,dword ptr [ebp-4]
 004CCB05    push        eax
 004CCB06    mov         eax,ebx
 004CCB08    mov         edx,dword ptr [eax]
 004CCB0A    call        dword ptr [edx+24]
 004CCB0D    push        eax
 004CCB0E    push        0
 004CCB10    push        esi
 004CCB11    mov         eax,dword ptr [ebp-0C]
 004CCB14    call        TBitmap.GetCanvas
 004CCB19    call        TCanvas.GetHandle
 004CCB1E    push        eax
 004CCB1F    call        gdi32.GetDIBits
 004CCB24    mov         esi,eax
 004CCB26    mov         eax,ebx
 004CCB28    mov         edx,dword ptr [eax]
 004CCB2A    call        dword ptr [edx+24]
 004CCB2D    cmp         esi,eax
>004CCB2F    jne         004CCC6E
 004CCB35    mov         eax,ebx
 004CCB37    mov         edx,dword ptr [eax]
 004CCB39    call        dword ptr [edx+24]
 004CCB3C    push        eax
 004CCB3D    mov         eax,ebx
 004CCB3F    mov         edx,dword ptr [eax]
 004CCB41    call        dword ptr [edx+30]
 004CCB44    mov         edx,eax
 004CCB46    mov         eax,dword ptr [ebp-4]
 004CCB49    pop         ecx
 004CCB4A    call        HasAlpha
 004CCB4F    test        al,al
>004CCB51    jne         004CCC6E
 004CCB57    mov         eax,dword ptr [ebp-4C]
 004CCB5A    add         eax,eax
 004CCB5C    add         eax,eax
 004CCB5E    imul        dword ptr [ebp-48]
 004CCB61    call        AllocMem
 004CCB66    mov         dword ptr [ebp-8],eax
 004CCB69    xor         esi,esi
 004CCB6B    push        ebp
 004CCB6C    push        4CCC67
 004CCB71    push        dword ptr fs:[esi]
 004CCB74    mov         dword ptr fs:[esi],esp
 004CCB77    lea         eax,[ebp-24]
 004CCB7A    push        eax
 004CCB7B    mov         eax,ebx
 004CCB7D    call        TIcon.GetHandle
 004CCB82    push        eax
 004CCB83    call        user32.GetIconInfo
 004CCB88    xor         esi,esi
 004CCB8A    push        ebp
 004CCB8B    push        4CCC4A
 004CCB90    push        dword ptr fs:[esi]
 004CCB93    mov         dword ptr fs:[esi],esp
 004CCB96    push        0
 004CCB98    lea         eax,[ebp-50]
 004CCB9B    push        eax
 004CCB9C    mov         eax,dword ptr [ebp-8]
 004CCB9F    push        eax
 004CCBA0    mov         eax,ebx
 004CCBA2    mov         edx,dword ptr [eax]
 004CCBA4    call        dword ptr [edx+24]
 004CCBA7    push        eax
 004CCBA8    push        0
 004CCBAA    mov         eax,dword ptr [ebp-18]
 004CCBAD    push        eax
 004CCBAE    mov         eax,dword ptr [ebp-0C]
 004CCBB1    call        TBitmap.GetCanvas
 004CCBB6    call        TCanvas.GetHandle
 004CCBBB    push        eax
 004CCBBC    call        gdi32.GetDIBits
 004CCBC1    mov         esi,eax
 004CCBC3    mov         eax,ebx
 004CCBC5    mov         edx,dword ptr [eax]
 004CCBC7    call        dword ptr [edx+24]
 004CCBCA    cmp         esi,eax
>004CCBCC    jne         004CCC2A
 004CCBCE    mov         edx,dword ptr [ebp-4]
 004CCBD1    mov         ecx,dword ptr [ebp-8]
 004CCBD4    mov         eax,dword ptr [ebp-48]
 004CCBD7    dec         eax
 004CCBD8    test        eax,eax
>004CCBDA    jl          004CCC06
 004CCBDC    inc         eax
 004CCBDD    mov         dword ptr [ebp-10],eax
 004CCBE0    mov         eax,dword ptr [ebp-4C]
 004CCBE3    dec         eax
 004CCBE4    test        eax,eax
>004CCBE6    jl          004CCC01
 004CCBE8    inc         eax
 004CCBE9    cmp         dword ptr [ecx],0
>004CCBEC    je          004CCBF4
 004CCBEE    xor         esi,esi
 004CCBF0    mov         dword ptr [edx],esi
>004CCBF2    jmp         004CCBF8
 004CCBF4    mov         byte ptr [edx+3],0FF
 004CCBF8    add         edx,4
 004CCBFB    add         ecx,4
 004CCBFE    dec         eax
>004CCBFF    jne         004CCBE9
 004CCC01    dec         dword ptr [ebp-10]
>004CCC04    jne         004CCBE0
 004CCC06    push        0
 004CCC08    lea         eax,[ebp-50]
 004CCC0B    push        eax
 004CCC0C    mov         eax,dword ptr [ebp-4]
 004CCC0F    push        eax
 004CCC10    mov         eax,ebx
 004CCC12    mov         edx,dword ptr [eax]
 004CCC14    call        dword ptr [edx+24]
 004CCC17    push        eax
 004CCC18    push        0
 004CCC1A    mov         eax,dword ptr [ebp-0C]
 004CCC1D    mov         edx,dword ptr [eax]
 004CCC1F    call        dword ptr [edx+70]
 004CCC22    push        eax
 004CCC23    push        0
 004CCC25    call        gdi32.SetDIBits
 004CCC2A    xor         eax,eax
 004CCC2C    pop         edx
 004CCC2D    pop         ecx
 004CCC2E    pop         ecx
 004CCC2F    mov         dword ptr fs:[eax],edx
 004CCC32    push        4CCC51
 004CCC37    mov         eax,dword ptr [ebp-18]
 004CCC3A    push        eax
 004CCC3B    call        gdi32.DeleteObject
 004CCC40    mov         eax,dword ptr [ebp-14]
 004CCC43    push        eax
 004CCC44    call        gdi32.DeleteObject
 004CCC49    ret
>004CCC4A    jmp         @HandleFinally
>004CCC4F    jmp         004CCC37
 004CCC51    xor         eax,eax
 004CCC53    pop         edx
 004CCC54    pop         ecx
 004CCC55    pop         ecx
 004CCC56    mov         dword ptr fs:[eax],edx
 004CCC59    push        4CCC6E
 004CCC5E    mov         eax,dword ptr [ebp-8]
 004CCC61    call        @FreeMem
 004CCC66    ret
>004CCC67    jmp         @HandleFinally
>004CCC6C    jmp         004CCC5E
 004CCC6E    xor         eax,eax
 004CCC70    pop         edx
 004CCC71    pop         ecx
 004CCC72    pop         ecx
 004CCC73    mov         dword ptr fs:[eax],edx
 004CCC76    push        4CCC94
 004CCC7B    mov         eax,dword ptr [ebp-4]
 004CCC7E    call        @FreeMem
 004CCC83    ret
>004CCC84    jmp         @HandleFinally
>004CCC89    jmp         004CCC7B
 004CCC8B    mov         edx,esi
 004CCC8D    mov         eax,ebx
 004CCC8F    call        TPersistent.AssignTo
 004CCC94    pop         edi
 004CCC95    pop         esi
 004CCC96    pop         ebx
 004CCC97    mov         esp,ebp
 004CCC99    pop         ebp
 004CCC9A    ret
*}
end;

//004CCC9C
constructor TIcon.Create();
begin
{*
 004CCC9C    push        ebx
 004CCC9D    push        esi
 004CCC9E    push        edi
 004CCC9F    test        dl,dl
>004CCCA1    je          004CCCAB
 004CCCA3    add         esp,0FFFFFFF0
 004CCCA6    call        @ClassCreate
 004CCCAB    mov         ebx,edx
 004CCCAD    mov         edi,eax
 004CCCAF    xor         edx,edx
 004CCCB1    mov         eax,edi
 004CCCB3    call        TGraphic.Create
 004CCCB8    mov         byte ptr [edi+21],1
 004CCCBC    mov         dl,1
 004CCCBE    mov         eax,[004C2584];TIconImage
 004CCCC3    call        TObject.Create
 004CCCC8    mov         esi,eax
 004CCCCA    mov         dword ptr [edi+28],esi
 004CCCCD    mov         eax,esi
 004CCCCF    inc         dword ptr [eax+4]
 004CCCD2    mov         eax,edi
 004CCCD4    test        bl,bl
>004CCCD6    je          004CCCE7
 004CCCD8    call        @AfterConstruction
 004CCCDD    pop         dword ptr fs:[0]
 004CCCE4    add         esp,0C
 004CCCE7    mov         eax,edi
 004CCCE9    pop         edi
 004CCCEA    pop         esi
 004CCCEB    pop         ebx
 004CCCEC    ret
*}
end;

//004CCCF0
destructor TIcon.Destroy();
begin
{*
 004CCCF0    push        ebx
 004CCCF1    push        esi
 004CCCF2    call        @BeforeDestruction
 004CCCF7    mov         ebx,edx
 004CCCF9    mov         esi,eax
 004CCCFB    mov         eax,dword ptr [esi+28];TIcon.FImage:TIconImage
 004CCCFE    call        TSharedImage.Release
 004CCD03    mov         dl,0FC
 004CCD05    and         dl,bl
 004CCD07    mov         eax,esi
 004CCD09    call        TMemoryStream.Destroy
 004CCD0E    test        bl,bl
>004CCD10    jle         004CCD19
 004CCD12    mov         eax,esi
 004CCD14    call        @ClassDestroy
 004CCD19    pop         esi
 004CCD1A    pop         ebx
 004CCD1B    ret
*}
end;

//004CCD1C
procedure TIcon.Assign(Source:TPersistent);
begin
{*
 004CCD1C    push        ebx
 004CCD1D    push        esi
 004CCD1E    push        edi
 004CCD1F    mov         ebx,edx
 004CCD21    mov         esi,eax
 004CCD23    test        ebx,ebx
>004CCD25    je          004CCD38
 004CCD27    mov         eax,ebx
 004CCD29    mov         edx,dword ptr ds:[4C2694];TIcon
 004CCD2F    call        @IsClass
 004CCD34    test        al,al
>004CCD36    je          004CCD6A
 004CCD38    test        ebx,ebx
>004CCD3A    je          004CCD54
 004CCD3C    mov         edi,ebx
 004CCD3E    mov         eax,dword ptr [edi+28]
 004CCD41    inc         dword ptr [eax+4]
 004CCD44    mov         eax,dword ptr [esi+28]
 004CCD47    call        TSharedImage.Release
 004CCD4C    mov         eax,dword ptr [edi+28]
 004CCD4F    mov         dword ptr [esi+28],eax
>004CCD52    jmp         004CCD5F
 004CCD54    xor         ecx,ecx
 004CCD56    xor         edx,edx
 004CCD58    mov         eax,esi
 004CCD5A    call        TIcon.NewImage
 004CCD5F    mov         edx,esi
 004CCD61    mov         eax,esi
 004CCD63    mov         ecx,dword ptr [eax]
 004CCD65    call        dword ptr [ecx+10]
>004CCD68    jmp         004CCD73
 004CCD6A    mov         edx,ebx
 004CCD6C    mov         eax,esi
 004CCD6E    call        TPersistent.Assign
 004CCD73    pop         edi
 004CCD74    pop         esi
 004CCD75    pop         ebx
 004CCD76    ret
*}
end;

//004CCD78
procedure TIcon.Draw(ACanvas:TCanvas; const Rect:Windows.TRect);
begin
{*
 004CCD78    push        ebx
 004CCD79    push        esi
 004CCD7A    push        edi
 004CCD7B    mov         edi,ecx
 004CCD7D    mov         esi,edx
 004CCD7F    mov         ebx,eax
 004CCD81    movzx       edx,byte ptr ds:[4CCDB8]
 004CCD88    mov         eax,esi
 004CCD8A    mov         ecx,dword ptr [eax]
 004CCD8C    call        dword ptr [ecx+2C]
 004CCD8F    push        3
 004CCD91    push        0
 004CCD93    push        0
 004CCD95    push        0
 004CCD97    push        0
 004CCD99    mov         eax,ebx
 004CCD9B    call        TIcon.GetHandle
 004CCDA0    push        eax
 004CCDA1    mov         eax,dword ptr [edi+4]
 004CCDA4    push        eax
 004CCDA5    mov         eax,dword ptr [edi]
 004CCDA7    push        eax
 004CCDA8    mov         eax,dword ptr [esi+38]
 004CCDAB    push        eax
 004CCDAC    call        user32.DrawIconEx
 004CCDB1    pop         edi
 004CCDB2    pop         esi
 004CCDB3    pop         ebx
 004CCDB4    ret
*}
end;

//004CCDBC
function TIcon.GetEmpty:Boolean;
begin
{*
 004CCDBC    mov         eax,dword ptr [eax+28]
 004CCDBF    cmp         dword ptr [eax+14],0
>004CCDC3    jne         004CCDCB
 004CCDC5    cmp         dword ptr [eax+8],0
>004CCDC9    je          004CCDCE
 004CCDCB    xor         eax,eax
 004CCDCD    ret
 004CCDCE    mov         al,1
 004CCDD0    ret
*}
end;

//004CCDD4
function TIcon.GetHandle:HICON;
begin
{*
 004CCDD4    push        ebx
 004CCDD5    mov         ebx,eax
 004CCDD7    mov         eax,ebx
 004CCDD9    call        TIcon.HandleNeeded
 004CCDDE    mov         eax,dword ptr [ebx+28]
 004CCDE1    mov         eax,dword ptr [eax+14]
 004CCDE4    pop         ebx
 004CCDE5    ret
*}
end;

//004CCDE8
function TIcon.GetHeight:Integer;
begin
{*
 004CCDE8    push        ebx
 004CCDE9    mov         ebx,eax
 004CCDEB    mov         edx,dword ptr [ebx+28]
 004CCDEE    mov         eax,dword ptr [edx+10]
 004CCDF1    test        eax,eax
>004CCDF3    jne         004CCE11
 004CCDF5    cmp         dword ptr [edx+8],0
>004CCDF9    je          004CCE0A
 004CCDFB    mov         eax,ebx
 004CCDFD    call        TIcon.HandleNeeded
 004CCE02    mov         eax,dword ptr [ebx+28]
 004CCE05    mov         eax,dword ptr [eax+10]
>004CCE08    jmp         004CCE11
 004CCE0A    push        0C
 004CCE0C    call        user32.GetSystemMetrics
 004CCE11    pop         ebx
 004CCE12    ret
*}
end;

//004CCE14
function TIcon.GetWidth:Integer;
begin
{*
 004CCE14    push        ebx
 004CCE15    mov         ebx,eax
 004CCE17    mov         edx,dword ptr [ebx+28]
 004CCE1A    mov         eax,dword ptr [edx+0C]
 004CCE1D    test        eax,eax
>004CCE1F    jne         004CCE3D
 004CCE21    cmp         dword ptr [edx+8],0
>004CCE25    je          004CCE36
 004CCE27    mov         eax,ebx
 004CCE29    call        TIcon.HandleNeeded
 004CCE2E    mov         eax,dword ptr [ebx+28]
 004CCE31    mov         eax,dword ptr [eax+0C]
>004CCE34    jmp         004CCE3D
 004CCE36    push        0C
 004CCE38    call        user32.GetSystemMetrics
 004CCE3D    pop         ebx
 004CCE3E    ret
*}
end;

//004CCE40
procedure TIcon.HandleNeeded;
begin
{*
 004CCE40    push        ebx
 004CCE41    push        esi
 004CCE42    add         esp,0FFFFFFF4
 004CCE45    mov         esi,eax
 004CCE47    mov         ebx,dword ptr [esi+28]
 004CCE4A    cmp         dword ptr [ebx+14],0
>004CCE4E    jne         004CCEB2
 004CCE50    mov         eax,dword ptr [ebx+8]
 004CCE53    test        eax,eax
>004CCE55    je          004CCEB2
 004CCE57    push        0
 004CCE59    push        0
 004CCE5B    call        TStream.SetPosition
 004CCE60    mov         edx,esp
 004CCE62    mov         ecx,6
 004CCE67    mov         eax,dword ptr [ebx+8]
 004CCE6A    call        TStream.ReadBuffer
 004CCE6F    movzx       eax,word ptr [esp+2]
 004CCE74    sub         ax,1
>004CCE78    jb          004CCE7E
>004CCE7A    je          004CCE89
>004CCE7C    jmp         004CCEA6
 004CCE7E    mov         eax,[007CA464]
 004CCE83    mov         dword ptr [esp+8],eax
>004CCE87    jmp         004CCEAB
 004CCE89    push        6
 004CCE8B    lea         eax,[esi+2C]
 004CCE8E    push        eax
 004CCE8F    lea         eax,[ebx+0C]
 004CCE92    push        eax
 004CCE93    movzx       ecx,word ptr [esp+10]
 004CCE98    lea         edx,[esp+14]
 004CCE9C    mov         eax,dword ptr [ebx+8]
 004CCE9F    call        ReadIcon
>004CCEA4    jmp         004CCEAB
 004CCEA6    call        TWICImage.SetWidth
 004CCEAB    mov         eax,dword ptr [esp+8]
 004CCEAF    mov         dword ptr [ebx+14],eax
 004CCEB2    add         esp,0C
 004CCEB5    pop         esi
 004CCEB6    pop         ebx
 004CCEB7    ret
*}
end;

//004CCEB8
procedure TIcon.ImageNeeded;
begin
{*
 004CCEB8    push        ebp
 004CCEB9    mov         ebp,esp
 004CCEBB    add         esp,0FFFFFFF4
 004CCEBE    push        ebx
 004CCEBF    push        esi
 004CCEC0    push        edi
 004CCEC1    mov         esi,eax
 004CCEC3    mov         ebx,dword ptr [esi+28]
 004CCEC6    cmp         dword ptr [ebx+8],0
>004CCECA    jne         004CCF62
 004CCED0    cmp         dword ptr [ebx+14],0
>004CCED4    jne         004CCEDB
 004CCED6    call        TWICImage.SetWidth
 004CCEDB    mov         dl,1
 004CCEDD    mov         eax,[00472CE4];TMemoryStream
 004CCEE2    call        TObject.Create
 004CCEE7    mov         dword ptr [ebp-4],eax
 004CCEEA    xor         eax,eax
 004CCEEC    push        ebp
 004CCEED    push        4CCF45
 004CCEF2    push        dword ptr fs:[eax]
 004CCEF5    mov         dword ptr fs:[eax],esp
 004CCEF8    mov         eax,esi
 004CCEFA    call        TIcon.GetHandle
 004CCEFF    cmp         eax,dword ptr ds:[7CA464]
>004CCF05    jne         004CCF28
 004CCF07    lea         eax,[ebp-0A]
 004CCF0A    xor         ecx,ecx
 004CCF0C    mov         edx,6
 004CCF11    call        @FillChar
 004CCF16    lea         edx,[ebp-0A]
 004CCF19    mov         ecx,6
 004CCF1E    mov         eax,dword ptr [ebp-4]
 004CCF21    call        TStream.WriteBuffer
>004CCF26    jmp         004CCF3B
 004CCF28    mov         eax,esi
 004CCF2A    call        TIcon.GetHandle
 004CCF2F    mov         edx,eax
 004CCF31    xor         ecx,ecx
 004CCF33    mov         eax,dword ptr [ebp-4]
 004CCF36    call        WriteIcon
 004CCF3B    xor         eax,eax
 004CCF3D    pop         edx
 004CCF3E    pop         ecx
 004CCF3F    pop         ecx
 004CCF40    mov         dword ptr fs:[eax],edx
>004CCF43    jmp         004CCF5C
>004CCF45    jmp         @HandleAnyException
 004CCF4A    mov         eax,dword ptr [ebp-4]
 004CCF4D    call        TObject.Free
 004CCF52    call        @RaiseAgain
 004CCF57    call        @DoneExcept
 004CCF5C    mov         eax,dword ptr [ebp-4]
 004CCF5F    mov         dword ptr [ebx+8],eax
 004CCF62    pop         edi
 004CCF63    pop         esi
 004CCF64    pop         ebx
 004CCF65    mov         esp,ebp
 004CCF67    pop         ebp
 004CCF68    ret
*}
end;

//004CCF6C
procedure TIcon.LoadFromStream(Stream:TStream);
begin
{*
 004CCF6C    push        ebp
 004CCF6D    mov         ebp,esp
 004CCF6F    add         esp,0FFFFFFF4
 004CCF72    push        ebx
 004CCF73    push        esi
 004CCF74    push        edi
 004CCF75    mov         esi,edx
 004CCF77    mov         ebx,eax
 004CCF79    mov         dl,1
 004CCF7B    mov         eax,[00472CE4];TMemoryStream
 004CCF80    call        TObject.Create;TMemoryStream.Create
 004CCF85    mov         dword ptr [ebp-4],eax
 004CCF88    xor         eax,eax
 004CCF8A    push        ebp
 004CCF8B    push        4CD003
 004CCF90    push        dword ptr fs:[eax]
 004CCF93    mov         dword ptr fs:[eax],esp
 004CCF96    mov         eax,esi
 004CCF98    mov         edx,dword ptr [eax]
 004CCF9A    call        dword ptr [edx];TStream.sub_00491B30
 004CCF9C    push        edx
 004CCF9D    push        eax
 004CCF9E    mov         eax,esi
 004CCFA0    call        TStream.GetPosition
 004CCFA5    sub         dword ptr [esp],eax
 004CCFA8    sbb         dword ptr [esp+4],edx
 004CCFAC    pop         eax
 004CCFAD    pop         edx
 004CCFAE    push        edx
 004CCFAF    push        eax
 004CCFB0    mov         eax,dword ptr [ebp-4]
 004CCFB3    mov         edx,dword ptr [eax]
 004CCFB5    call        dword ptr [edx+8];TMemoryStream.SetSize
 004CCFB8    mov         eax,dword ptr [ebp-4]
 004CCFBB    mov         edx,dword ptr [eax]
 004CCFBD    call        dword ptr [edx];TMemoryStream.sub_00491B30
 004CCFBF    mov         ecx,eax
 004CCFC1    mov         eax,dword ptr [ebp-4]
 004CCFC4    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 004CCFC7    mov         eax,esi
 004CCFC9    call        TStream.ReadBuffer
 004CCFCE    lea         edx,[ebp-0A]
 004CCFD1    mov         ecx,6
 004CCFD6    mov         eax,dword ptr [ebp-4]
 004CCFD9    call        TStream.ReadBuffer
 004CCFDE    movzx       eax,word ptr [ebp-8]
 004CCFE2    sub         ax,2
>004CCFE6    jb          004CCFED
 004CCFE8    call        TWICImage.SetWidth
 004CCFED    mov         ecx,dword ptr [ebp-4]
 004CCFF0    xor         edx,edx
 004CCFF2    mov         eax,ebx
 004CCFF4    call        TIcon.NewImage
 004CCFF9    xor         eax,eax
 004CCFFB    pop         edx
 004CCFFC    pop         ecx
 004CCFFD    pop         ecx
 004CCFFE    mov         dword ptr fs:[eax],edx
>004CD001    jmp         004CD01A
>004CD003    jmp         @HandleAnyException
 004CD008    mov         eax,dword ptr [ebp-4]
 004CD00B    call        TObject.Free
 004CD010    call        @RaiseAgain
 004CD015    call        @DoneExcept
 004CD01A    mov         edx,ebx
 004CD01C    mov         eax,ebx
 004CD01E    mov         ecx,dword ptr [eax]
 004CD020    call        dword ptr [ecx+10];TGraphic.Changed
 004CD023    pop         edi
 004CD024    pop         esi
 004CD025    pop         ebx
 004CD026    mov         esp,ebp
 004CD028    pop         ebp
 004CD029    ret
*}
end;

//004CD02C
procedure TIcon.NewImage(NewHandle:Windows.HICON; NewImage:Classes.TMemoryStream);
begin
{*
 004CD02C    push        ebp
 004CD02D    mov         ebp,esp
 004CD02F    push        ecx
 004CD030    push        ebx
 004CD031    push        esi
 004CD032    push        edi
 004CD033    mov         edi,ecx
 004CD035    mov         esi,edx
 004CD037    mov         ebx,eax
 004CD039    mov         dl,1
 004CD03B    mov         eax,[004C2584];TIconImage
 004CD040    call        TObject.Create
 004CD045    mov         dword ptr [ebp-4],eax
 004CD048    xor         eax,eax
 004CD04A    push        ebp
 004CD04B    push        4CD06C
 004CD050    push        dword ptr fs:[eax]
 004CD053    mov         dword ptr fs:[eax],esp
 004CD056    mov         eax,dword ptr [ebp-4]
 004CD059    mov         dword ptr [eax+14],esi
 004CD05C    mov         eax,dword ptr [ebp-4]
 004CD05F    mov         dword ptr [eax+8],edi
 004CD062    xor         eax,eax
 004CD064    pop         edx
 004CD065    pop         ecx
 004CD066    pop         ecx
 004CD067    mov         dword ptr fs:[eax],edx
>004CD06A    jmp         004CD083
>004CD06C    jmp         @HandleAnyException
 004CD071    mov         eax,dword ptr [ebp-4]
 004CD074    call        TObject.Free
 004CD079    call        @RaiseAgain
 004CD07E    call        @DoneExcept
 004CD083    mov         eax,dword ptr [ebp-4]
 004CD086    inc         dword ptr [eax+4]
 004CD089    mov         eax,dword ptr [ebx+28]
 004CD08C    call        TSharedImage.Release
 004CD091    mov         eax,dword ptr [ebp-4]
 004CD094    mov         dword ptr [ebx+28],eax
 004CD097    pop         edi
 004CD098    pop         esi
 004CD099    pop         ebx
 004CD09A    pop         ecx
 004CD09B    pop         ebp
 004CD09C    ret
*}
end;

//004CD0A0
procedure TIcon.SetHandle(Value:Windows.HICON);
begin
{*
 004CD0A0    push        ebp
 004CD0A1    mov         ebp,esp
 004CD0A3    add         esp,0FFFFFFD0
 004CD0A6    push        ebx
 004CD0A7    mov         ebx,edx
 004CD0A9    mov         dword ptr [ebp-4],eax
 004CD0AC    xor         ecx,ecx
 004CD0AE    mov         edx,ebx
 004CD0B0    mov         eax,dword ptr [ebp-4]
 004CD0B3    call        TIcon.NewImage
 004CD0B8    test        ebx,ebx
>004CD0BA    je          004CD124
 004CD0BC    lea         eax,[ebp-18]
 004CD0BF    push        eax
 004CD0C0    push        ebx
 004CD0C1    call        user32.GetIconInfo
 004CD0C6    test        eax,eax
>004CD0C8    je          004CD124
 004CD0CA    xor         edx,edx
 004CD0CC    push        ebp
 004CD0CD    push        4CD11D
 004CD0D2    push        dword ptr fs:[edx]
 004CD0D5    mov         dword ptr fs:[edx],esp
 004CD0D8    lea         eax,[ebp-30]
 004CD0DB    push        eax
 004CD0DC    push        18
 004CD0DE    mov         eax,dword ptr [ebp-8]
 004CD0E1    push        eax
 004CD0E2    call        gdi32.GetObjectW
 004CD0E7    test        eax,eax
>004CD0E9    je          004CD0FD
 004CD0EB    mov         eax,dword ptr [ebp-4]
 004CD0EE    mov         eax,dword ptr [eax+28]
 004CD0F1    mov         edx,dword ptr [ebp-2C]
 004CD0F4    mov         dword ptr [eax+0C],edx
 004CD0F7    mov         edx,dword ptr [ebp-28]
 004CD0FA    mov         dword ptr [eax+10],edx
 004CD0FD    xor         eax,eax
 004CD0FF    pop         edx
 004CD100    pop         ecx
 004CD101    pop         ecx
 004CD102    mov         dword ptr fs:[eax],edx
 004CD105    push        4CD124
 004CD10A    mov         eax,dword ptr [ebp-0C]
 004CD10D    push        eax
 004CD10E    call        gdi32.DeleteObject
 004CD113    mov         eax,dword ptr [ebp-8]
 004CD116    push        eax
 004CD117    call        gdi32.DeleteObject
 004CD11C    ret
>004CD11D    jmp         @HandleFinally
>004CD122    jmp         004CD10A
 004CD124    mov         edx,dword ptr [ebp-4]
 004CD127    mov         eax,dword ptr [ebp-4]
 004CD12A    mov         ecx,dword ptr [eax]
 004CD12C    call        dword ptr [ecx+10]
 004CD12F    pop         ebx
 004CD130    mov         esp,ebp
 004CD132    pop         ebp
 004CD133    ret
*}
end;

//004CD134
{*procedure TIcon.SetHeight(?:?);
begin
 004CD134    mov         ecx,dword ptr [eax+28];TIcon.FImage:TIconImage
 004CD137    cmp         dword ptr [ecx+14],0;TIconImage.FHandle:HICON
>004CD13B    jne         004CD141
 004CD13D    mov         dword ptr [eax+30],edx
 004CD140    ret
 004CD141    mov         eax,[007C44F8];^SResString216:TResStringRec
 004CD146    call        InvalidGraphic
 004CD14B    ret
end;*}

//004CD14C
procedure TIcon.SetSize(AWidth:Integer; AHeight:Integer);
begin
{*
 004CD14C    push        ebx
 004CD14D    mov         ebx,dword ptr [eax+28];TIcon.FImage:TIconImage
 004CD150    cmp         dword ptr [ebx+14],0;TIconImage.FHandle:HICON
>004CD154    jne         004CD15E
 004CD156    mov         dword ptr [eax+2C],edx;TIcon.FRequestedSize:TPoint
 004CD159    mov         dword ptr [eax+30],ecx
 004CD15C    pop         ebx
 004CD15D    ret
 004CD15E    mov         eax,[007C44F8];^SResString216:TResStringRec
 004CD163    call        InvalidGraphic
 004CD168    pop         ebx
 004CD169    ret
*}
end;

//004CD16C
procedure TIcon.SetTransparent(Value:Boolean);
begin
{*
 004CD16C    ret
*}
end;

//004CD170
{*procedure TIcon.SetWidth(?:?);
begin
 004CD170    mov         ecx,dword ptr [eax+28];TIcon.FImage:TIconImage
 004CD173    cmp         dword ptr [ecx+14],0;TIconImage.FHandle:HICON
>004CD177    jne         004CD17D
 004CD179    mov         dword ptr [eax+2C],edx;TIcon.FRequestedSize:TPoint
 004CD17C    ret
 004CD17D    mov         eax,[007C44F8];^SResString216:TResStringRec
 004CD182    call        InvalidGraphic
 004CD187    ret
end;*}

//004CD188
procedure TIcon.SaveToStream(Stream:TStream);
begin
{*
 004CD188    push        ebx
 004CD189    push        esi
 004CD18A    mov         esi,edx
 004CD18C    mov         ebx,eax
 004CD18E    mov         eax,ebx
 004CD190    call        TIcon.ImageNeeded
 004CD195    mov         eax,dword ptr [ebx+28]
 004CD198    mov         ebx,dword ptr [eax+8]
 004CD19B    mov         eax,ebx
 004CD19D    mov         edx,dword ptr [eax]
 004CD19F    call        dword ptr [edx]
 004CD1A1    mov         ecx,eax
 004CD1A3    mov         edx,dword ptr [ebx+4]
 004CD1A6    mov         eax,esi
 004CD1A8    call        TStream.WriteBuffer
 004CD1AD    pop         esi
 004CD1AE    pop         ebx
 004CD1AF    ret
*}
end;

//004CD1B0
procedure TIcon.LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);
begin
{*
 004CD1B0    push        ebp
 004CD1B1    mov         ebp,esp
 004CD1B3    mov         eax,[007C41EC];^SResString312:TResStringRec
 004CD1B8    call        InvalidGraphic
 004CD1BD    pop         ebp
 004CD1BE    ret         4
*}
end;

//004CD1C4
procedure TIcon.SaveToClipboardFormat(var Format:Word; var Data:NativeUInt; var APalette:HPALETTE);
begin
{*
 004CD1C4    push        ebp
 004CD1C5    mov         ebp,esp
 004CD1C7    mov         eax,[007C41EC];^SResString312:TResStringRec
 004CD1CC    call        InvalidGraphic
 004CD1D1    pop         ebp
 004CD1D2    ret         4
*}
end;

//004CD1D8
procedure TWICImage.Assign(Source:TPersistent);
begin
{*
 004CD1D8    push        ebp
 004CD1D9    mov         ebp,esp
 004CD1DB    add         esp,0FFFFFFF8
 004CD1DE    push        ebx
 004CD1DF    push        esi
 004CD1E0    push        edi
 004CD1E1    mov         ebx,edx
 004CD1E3    mov         dword ptr [ebp-4],eax
 004CD1E6    mov         eax,ebx
 004CD1E8    mov         edx,dword ptr ds:[4C2C28];TWICImage
 004CD1EE    call        @IsClass
 004CD1F3    test        al,al
>004CD1F5    je          004CD2F8
 004CD1FB    mov         esi,ebx
 004CD1FD    cmp         dword ptr [esi+38],0
>004CD201    je          004CD220
 004CD203    mov         eax,dword ptr [ebp-4]
 004CD206    add         eax,38;TWICImage.FWicBitmap:IWICBitmap
 004CD209    call        @IntfClear
 004CD20E    push        eax
 004CD20F    push        0
 004CD211    mov         eax,dword ptr [esi+38]
 004CD214    push        eax
 004CD215    mov         eax,[007CA444];gvar_007CA444:IInterface
 004CD21A    push        eax
 004CD21B    mov         eax,dword ptr [eax]
 004CD21D    call        dword ptr [eax+48]
 004CD220    cmp         dword ptr [esi+30],0
>004CD224    je          004CD290
 004CD226    mov         eax,dword ptr [ebp-4]
 004CD229    cmp         dword ptr [eax+30],0;TWICImage.FBitmap:TBitmap
>004CD22D    jne         004CD241
 004CD22F    mov         dl,1
 004CD231    mov         eax,[004C1D10];TBitmap
 004CD236    call        TBitmap.Create;TBitmap.Create
 004CD23B    mov         edx,dword ptr [ebp-4]
 004CD23E    mov         dword ptr [edx+30],eax;TWICImage.FBitmap:TBitmap
 004CD241    xor         edx,edx
 004CD243    push        ebp
 004CD244    push        4CD267
 004CD249    push        dword ptr fs:[edx]
 004CD24C    mov         dword ptr fs:[edx],esp
 004CD24F    mov         edx,dword ptr [esi+30]
 004CD252    mov         eax,dword ptr [ebp-4]
 004CD255    mov         eax,dword ptr [eax+30];TWICImage.FBitmap:TBitmap
 004CD258    mov         ecx,dword ptr [eax]
 004CD25A    call        dword ptr [ecx+8];TBitmap.Assign
 004CD25D    xor         eax,eax
 004CD25F    pop         edx
 004CD260    pop         ecx
 004CD261    pop         ecx
 004CD262    mov         dword ptr fs:[eax],edx
>004CD265    jmp         004CD290
>004CD267    jmp         @HandleAnyException
 004CD26C    mov         eax,dword ptr [ebp-4]
 004CD26F    add         eax,30;TWICImage.FBitmap:TBitmap
 004CD272    mov         dword ptr [ebp-8],eax
 004CD275    mov         eax,dword ptr [ebp-8]
 004CD278    mov         eax,dword ptr [eax]
 004CD27A    mov         edx,dword ptr [ebp-8]
 004CD27D    xor         ecx,ecx
 004CD27F    mov         dword ptr [edx],ecx
 004CD281    call        TObject.Free
 004CD286    call        @RaiseAgain
 004CD28B    call        @DoneExcept
 004CD290    mov         eax,dword ptr [ebp-4]
 004CD293    push        esi
 004CD294    add         esi,40
 004CD297    lea         edi,[eax+40];TWICImage.FEncoderContainerFormat:TGUID
 004CD29A    movs        dword ptr [edi],dword ptr [esi]
 004CD29B    movs        dword ptr [edi],dword ptr [esi]
 004CD29C    movs        dword ptr [edi],dword ptr [esi]
 004CD29D    movs        dword ptr [edi],dword ptr [esi]
 004CD29E    pop         esi
 004CD29F    movzx       eax,byte ptr [esi+3C]
 004CD2A3    mov         edx,dword ptr [ebp-4]
 004CD2A6    mov         byte ptr [edx+3C],al;TWICImage.FImageFormat:TWICImageFormat
 004CD2A9    mov         eax,dword ptr [esi+28]
 004CD2AC    mov         edx,dword ptr [ebp-4]
 004CD2AF    mov         dword ptr [edx+28],eax;TWICImage.FWidth:Cardinal
 004CD2B2    mov         eax,dword ptr [esi+2C]
 004CD2B5    mov         edx,dword ptr [ebp-4]
 004CD2B8    mov         dword ptr [edx+2C],eax;TWICImage.FHeight:Cardinal
 004CD2BB    mov         eax,dword ptr [ebp-4]
 004CD2BE    mov         eax,dword ptr [eax+34];TWICImage.FData:TMemoryStream
 004CD2C1    call        TMemoryStream.Clear
 004CD2C6    push        0
 004CD2C8    push        0
 004CD2CA    mov         esi,ebx
 004CD2CC    mov         eax,dword ptr [esi+34]
 004CD2CF    call        TStream.SetPosition
 004CD2D4    mov         edi,dword ptr [esi+34]
 004CD2D7    mov         eax,edi
 004CD2D9    mov         edx,dword ptr [eax]
 004CD2DB    call        dword ptr [edx]
 004CD2DD    push        edx
 004CD2DE    push        eax
 004CD2DF    mov         edx,edi
 004CD2E1    mov         eax,dword ptr [ebp-4]
 004CD2E4    mov         eax,dword ptr [eax+34];TWICImage.FData:TMemoryStream
 004CD2E7    call        TStream.CopyFrom
 004CD2EC    movzx       eax,byte ptr [esi+50]
 004CD2F0    mov         edx,dword ptr [ebp-4]
 004CD2F3    mov         byte ptr [edx+50],al;TWICImage.FFormatChanged:Boolean
>004CD2F6    jmp         004CD35A
 004CD2F8    mov         eax,ebx
 004CD2FA    mov         edx,dword ptr ds:[4C1D10];TBitmap
 004CD300    call        @IsClass
 004CD305    test        al,al
>004CD307    je          004CD350
 004CD309    mov         eax,dword ptr [ebp-4]
 004CD30C    add         eax,38;TWICImage.FWicBitmap:IWICBitmap
 004CD30F    call        @IntfClear
 004CD314    mov         eax,dword ptr [ebp-4]
 004CD317    cmp         dword ptr [eax+30],0;TWICImage.FBitmap:TBitmap
>004CD31B    jne         004CD32F
 004CD31D    mov         dl,1
 004CD31F    mov         eax,[004C1D10];TBitmap
 004CD324    call        TBitmap.Create;TBitmap.Create
 004CD329    mov         edx,dword ptr [ebp-4]
 004CD32C    mov         dword ptr [edx+30],eax;TWICImage.FBitmap:TBitmap
 004CD32F    mov         eax,dword ptr [ebp-4]
 004CD332    mov         eax,dword ptr [eax+30];TWICImage.FBitmap:TBitmap
 004CD335    mov         edx,ebx
 004CD337    mov         ecx,dword ptr [eax]
 004CD339    call        dword ptr [ecx+8];TBitmap.Assign
 004CD33C    mov         eax,dword ptr [ebp-4]
 004CD33F    call        004CD4DC
 004CD344    xor         edx,edx
 004CD346    mov         eax,dword ptr [ebp-4]
 004CD349    call        004CDB70
>004CD34E    jmp         004CD35A
 004CD350    mov         edx,ebx
 004CD352    mov         eax,dword ptr [ebp-4]
 004CD355    call        TPersistent.Assign
 004CD35A    pop         edi
 004CD35B    pop         esi
 004CD35C    pop         ebx
 004CD35D    pop         ecx
 004CD35E    pop         ecx
 004CD35F    pop         ebp
 004CD360    ret
*}
end;

//004CD364
procedure TWICImage.AssignTo(Dest:Classes.TPersistent);
begin
{*
 004CD364    push        ebx
 004CD365    push        esi
 004CD366    mov         esi,edx
 004CD368    mov         ebx,eax
 004CD36A    mov         eax,esi
 004CD36C    mov         edx,dword ptr ds:[4C1D10];TBitmap
 004CD372    call        @IsClass
 004CD377    test        al,al
>004CD379    je          004CD38F
 004CD37B    mov         eax,ebx
 004CD37D    call        TWICImage.RequireBitmap
 004CD382    mov         edx,dword ptr [ebx+30]
 004CD385    mov         eax,esi
 004CD387    mov         ecx,dword ptr [eax]
 004CD389    call        dword ptr [ecx+8]
 004CD38C    pop         esi
 004CD38D    pop         ebx
 004CD38E    ret
 004CD38F    mov         edx,esi
 004CD391    mov         eax,ebx
 004CD393    call        TPersistent.AssignTo
 004CD398    pop         esi
 004CD399    pop         ebx
 004CD39A    ret
*}
end;

//004CD39C
constructor TWICImage.Create;
begin
{*
 004CD39C    push        ebx
 004CD39D    push        esi
 004CD39E    push        edi
 004CD39F    test        dl,dl
>004CD3A1    je          004CD3AB
 004CD3A3    add         esp,0FFFFFFF0
 004CD3A6    call        @ClassCreate
 004CD3AB    mov         ebx,edx
 004CD3AD    mov         esi,eax
 004CD3AF    xor         edx,edx
 004CD3B1    mov         eax,esi
 004CD3B3    call        TGraphic.Create
 004CD3B8    cmp         dword ptr ds:[7CA444],0;gvar_007CA444:IInterface
>004CD3BF    jne         004CD3E2
 004CD3C1    mov         eax,7CA444;gvar_007CA444:IInterface
 004CD3C6    call        @IntfClear
 004CD3CB    push        eax
 004CD3CC    push        4CD430;['{00000000-0000-0000-C000-000000000046}']
 004CD3D1    push        5
 004CD3D3    push        0
 004CD3D5    mov         eax,[007C49BC];^gvar_007A06D8
 004CD3DA    push        eax
 004CD3DB    call        ole32.CoCreateInstance
>004CD3E0    jmp         004CD3ED
 004CD3E2    mov         eax,[007CA444];gvar_007CA444:IInterface
 004CD3E7    push        eax
 004CD3E8    mov         eax,dword ptr [eax]
 004CD3EA    call        dword ptr [eax+4]
 004CD3ED    mov         eax,[007C43E4];^gvar_007A06E8
 004CD3F2    push        esi
 004CD3F3    lea         edi,[esi+40];TWICImage.FEncoderContainerFormat:TGUID
 004CD3F6    mov         esi,eax
 004CD3F8    movs        dword ptr [edi],dword ptr [esi]
 004CD3F9    movs        dword ptr [edi],dword ptr [esi]
 004CD3FA    movs        dword ptr [edi],dword ptr [esi]
 004CD3FB    movs        dword ptr [edi],dword ptr [esi]
 004CD3FC    pop         esi
 004CD3FD    mov         byte ptr [esi+3C],0;TWICImage.FImageFormat:TWICImageFormat
 004CD401    mov         dl,1
 004CD403    mov         eax,[00472CE4];TMemoryStream
 004CD408    call        TObject.Create;TMemoryStream.Create
 004CD40D    mov         dword ptr [esi+34],eax;TWICImage.FData:TMemoryStream
 004CD410    mov         byte ptr [esi+50],0;TWICImage.FFormatChanged:Boolean
 004CD414    mov         eax,esi
 004CD416    test        bl,bl
>004CD418    je          004CD429
 004CD41A    call        @AfterConstruction
 004CD41F    pop         dword ptr fs:[0]
 004CD426    add         esp,0C
 004CD429    mov         eax,esi
 004CD42B    pop         edi
 004CD42C    pop         esi
 004CD42D    pop         ebx
 004CD42E    ret
*}
end;

//004CD440
destructor TWICImage.Destroy();
begin
{*
 004CD440    push        ebx
 004CD441    push        esi
 004CD442    push        ecx
 004CD443    call        @BeforeDestruction
 004CD448    mov         ebx,edx
 004CD44A    mov         esi,eax
 004CD44C    cmp         dword ptr [esi+30],0;TWICImage.FBitmap:TBitmap
>004CD450    je          004CD469
 004CD452    lea         eax,[esi+30];TWICImage.FBitmap:TBitmap
 004CD455    mov         dword ptr [esp],eax
 004CD458    mov         eax,dword ptr [esp]
 004CD45B    mov         eax,dword ptr [eax]
 004CD45D    mov         edx,dword ptr [esp]
 004CD460    xor         ecx,ecx
 004CD462    mov         dword ptr [edx],ecx
 004CD464    call        TObject.Free
 004CD469    mov         eax,dword ptr [esi+34];TWICImage.FData:TMemoryStream
 004CD46C    call        TObject.Free
 004CD471    mov         eax,[007CA444];gvar_007CA444:IInterface
 004CD476    push        eax
 004CD477    mov         eax,dword ptr [eax]
 004CD479    call        dword ptr [eax+8]
 004CD47C    test        eax,eax
>004CD47E    jne         004CD487
 004CD480    xor         eax,eax
 004CD482    mov         [007CA444],eax;gvar_007CA444:IInterface
 004CD487    mov         dl,0FC
 004CD489    and         dl,bl
 004CD48B    mov         eax,esi
 004CD48D    call        TMemoryStream.Destroy
 004CD492    test        bl,bl
>004CD494    jle         004CD49D
 004CD496    mov         eax,esi
 004CD498    call        @ClassDestroy
 004CD49D    pop         edx
 004CD49E    pop         esi
 004CD49F    pop         ebx
 004CD4A0    ret
*}
end;

//004CD4DC
procedure sub_004CD4DC(?:TWICImage);
begin
{*
 004CD4DC    push        ebp
 004CD4DD    mov         ebp,esp
 004CD4DF    add         esp,0FFFFFFC0
 004CD4E2    push        ebx
 004CD4E3    push        esi
 004CD4E4    push        edi
 004CD4E5    xor         edx,edx
 004CD4E7    mov         dword ptr [ebp-4],edx
 004CD4EA    mov         ebx,eax
 004CD4EC    xor         eax,eax
 004CD4EE    push        ebp
 004CD4EF    push        4CD621
 004CD4F4    push        dword ptr fs:[eax]
 004CD4F7    mov         dword ptr fs:[eax],esp
 004CD4FA    mov         eax,dword ptr [ebx+34];TWICImage.FData:TMemoryStream
 004CD4FD    call        TMemoryStream.Clear
 004CD502    mov         byte ptr [ebx+50],1;TWICImage.FFormatChanged:Boolean
 004CD506    mov         eax,dword ptr [ebx+30];TWICImage.FBitmap:TBitmap
 004CD509    cmp         byte ptr [eax+39],1;TBitmap.FAlphaFormat:TAlphaFormat
>004CD50D    jne         004CD51F
 004CD50F    mov         eax,[007C4530];^gvar_007A0758
 004CD514    mov         esi,eax
 004CD516    lea         edi,[ebp-14]
 004CD519    movs        dword ptr [edi],dword ptr [esi]
 004CD51A    movs        dword ptr [edi],dword ptr [esi]
 004CD51B    movs        dword ptr [edi],dword ptr [esi]
 004CD51C    movs        dword ptr [edi],dword ptr [esi]
>004CD51D    jmp         004CD52D
 004CD51F    mov         eax,[007C4190];^gvar_007A0748
 004CD524    mov         esi,eax
 004CD526    lea         edi,[ebp-14]
 004CD529    movs        dword ptr [edi],dword ptr [esi]
 004CD52A    movs        dword ptr [edi],dword ptr [esi]
 004CD52B    movs        dword ptr [edi],dword ptr [esi]
 004CD52C    movs        dword ptr [edi],dword ptr [esi]
 004CD52D    mov         dl,7
 004CD52F    mov         eax,dword ptr [ebx+30];TWICImage.FBitmap:TBitmap
 004CD532    call        TBitmap.SetPixelFormat
 004CD537    mov         eax,dword ptr [ebx+30];TWICImage.FBitmap:TBitmap
 004CD53A    mov         edx,dword ptr [eax]
 004CD53C    call        dword ptr [edx+30];TBitmap.GetWidth
 004CD53F    mov         dword ptr [ebx+28],eax;TWICImage.FWidth:Cardinal
 004CD542    mov         eax,dword ptr [ebx+30];TWICImage.FBitmap:TBitmap
 004CD545    mov         edx,dword ptr [eax]
 004CD547    call        dword ptr [edx+24];TBitmap.GetHeight
 004CD54A    mov         esi,eax
 004CD54C    mov         dword ptr [ebx+2C],esi;TWICImage.FHeight:Cardinal
 004CD54F    mov         eax,dword ptr [ebx+28];TWICImage.FWidth:Cardinal
 004CD552    add         eax,eax
 004CD554    add         eax,eax
 004CD556    imul        esi
 004CD558    push        eax
 004CD559    lea         eax,[ebp-4]
 004CD55C    mov         ecx,1
 004CD561    mov         edx,dword ptr ds:[4CD4A4];:TWICImage.:1
 004CD567    call        @DynArraySetLength
 004CD56C    add         esp,4
 004CD56F    lea         eax,[ebp-40]
 004CD572    xor         ecx,ecx
 004CD574    mov         edx,2C
 004CD579    call        @FillChar
 004CD57E    mov         dword ptr [ebp-40],2C
 004CD585    mov         eax,dword ptr [ebx+28];TWICImage.FWidth:Cardinal
 004CD588    mov         dword ptr [ebp-3C],eax
 004CD58B    mov         eax,dword ptr [ebx+2C];TWICImage.FHeight:Cardinal
 004CD58E    neg         eax
 004CD590    mov         dword ptr [ebp-38],eax
 004CD593    mov         word ptr [ebp-34],1
 004CD599    mov         word ptr [ebp-32],20
 004CD59F    mov         eax,dword ptr [ebx+30];TWICImage.FBitmap:TBitmap
 004CD5A2    mov         edx,dword ptr [eax]
 004CD5A4    call        dword ptr [edx+70];TBitmap.GetHandle
 004CD5A7    mov         esi,eax
 004CD5A9    push        0
 004CD5AB    lea         eax,[ebp-40]
 004CD5AE    push        eax
 004CD5AF    mov         eax,dword ptr [ebp-4]
 004CD5B2    push        eax
 004CD5B3    mov         eax,dword ptr [ebx+2C];TWICImage.FHeight:Cardinal
 004CD5B6    push        eax
 004CD5B7    push        0
 004CD5B9    push        esi
 004CD5BA    mov         eax,dword ptr [ebx+30];TWICImage.FBitmap:TBitmap
 004CD5BD    call        TBitmap.GetCanvas
 004CD5C2    call        TCanvas.GetHandle
 004CD5C7    push        eax
 004CD5C8    call        gdi32.GetDIBits
 004CD5CD    mov         esi,dword ptr [ebp-4]
 004CD5D0    test        esi,esi
>004CD5D2    je          004CD5D9
 004CD5D4    sub         esi,4
 004CD5D7    mov         esi,dword ptr [esi]
 004CD5D9    lea         eax,[ebx+38];TWICImage.FWicBitmap:IWICBitmap
 004CD5DC    call        @IntfClear
 004CD5E1    push        eax
 004CD5E2    mov         eax,dword ptr [ebp-4]
 004CD5E5    push        eax
 004CD5E6    push        esi
 004CD5E7    mov         edi,dword ptr [ebx+28];TWICImage.FWidth:Cardinal
 004CD5EA    mov         eax,edi
 004CD5EC    add         eax,eax
 004CD5EE    add         eax,eax
 004CD5F0    push        eax
 004CD5F1    lea         eax,[ebp-14]
 004CD5F4    push        eax
 004CD5F5    mov         eax,dword ptr [ebx+2C];TWICImage.FHeight:Cardinal
 004CD5F8    push        eax
 004CD5F9    push        edi
 004CD5FA    mov         eax,[007CA444];gvar_007CA444:IInterface
 004CD5FF    push        eax
 004CD600    mov         eax,dword ptr [eax]
 004CD602    call        dword ptr [eax+50]
 004CD605    xor         eax,eax
 004CD607    pop         edx
 004CD608    pop         ecx
 004CD609    pop         ecx
 004CD60A    mov         dword ptr fs:[eax],edx
 004CD60D    push        4CD628
 004CD612    lea         eax,[ebp-4]
 004CD615    mov         edx,dword ptr ds:[4CD4A4];:TWICImage.:1
 004CD61B    call        @DynArrayClear
 004CD620    ret
>004CD621    jmp         @HandleFinally
>004CD626    jmp         004CD612
 004CD628    pop         edi
 004CD629    pop         esi
 004CD62A    pop         ebx
 004CD62B    mov         esp,ebp
 004CD62D    pop         ebp
 004CD62E    ret
*}
end;

//004CD630
procedure TWICImage.Draw(ACanvas:TCanvas; const Rect:Windows.TRect);
begin
{*
 004CD630    push        ebx
 004CD631    push        esi
 004CD632    push        edi
 004CD633    push        ebp
 004CD634    mov         ebp,ecx
 004CD636    mov         edi,edx
 004CD638    mov         ebx,eax
 004CD63A    mov         eax,ebx
 004CD63C    call        TWICImage.RequireBitmap
 004CD641    mov         esi,dword ptr [ebx+30]
 004CD644    test        esi,esi
>004CD646    je          004CD656
 004CD648    mov         edx,ebp
 004CD64A    mov         ecx,esi
 004CD64C    mov         eax,edi
 004CD64E    mov         ebx,dword ptr [eax]
 004CD650    call        dword ptr [ebx+88]
 004CD656    pop         ebp
 004CD657    pop         edi
 004CD658    pop         esi
 004CD659    pop         ebx
 004CD65A    ret
*}
end;

//004CD65C
function TWICImage.GetEmpty:Boolean;
begin
{*
 004CD65C    cmp         dword ptr [eax+38],0
 004CD660    sete        al
 004CD663    ret
*}
end;

//004CD664
function TWICImage.GetHandle:IWICBitmap;
begin
{*
 004CD664    push        ebx
 004CD665    push        esi
 004CD666    mov         esi,edx
 004CD668    mov         ebx,eax
 004CD66A    mov         eax,esi
 004CD66C    mov         edx,dword ptr [ebx+38]
 004CD66F    call        @IntfCopy
 004CD674    pop         esi
 004CD675    pop         ebx
 004CD676    ret
*}
end;

//004CD678
{*function TWICImage.GetHeight:?;
begin
 004CD678    mov         eax,dword ptr [eax+2C];TWICImage.FHeight:Cardinal
 004CD67B    ret
end;*}

//004CD67C
{*function TWICImage.GetWidth:?;
begin
 004CD67C    mov         eax,dword ptr [eax+28];TWICImage.FWidth:Cardinal
 004CD67F    ret
end;*}

//004CD680
{*procedure sub_004CD680(?:?);
begin
 004CD680    push        ebp
 004CD681    mov         ebp,esp
 004CD683    push        0
 004CD685    xor         edx,edx
 004CD687    push        ebp
 004CD688    push        4CD6D6
 004CD68D    push        dword ptr fs:[edx]
 004CD690    mov         dword ptr fs:[edx],esp
 004CD693    test        eax,80000000
 004CD698    setne       al
 004CD69B    test        al,al
>004CD69D    je          004CD6C0
 004CD69F    lea         edx,[ebp-4]
 004CD6A2    mov         eax,[007C473C];^SResString214:TResStringRec
 004CD6A7    call        LoadResString
 004CD6AC    mov         ecx,dword ptr [ebp-4]
 004CD6AF    mov         dl,1
 004CD6B1    mov         eax,[004BD5C8];EInvalidGraphic
 004CD6B6    call        Exception.Create;EInvalidGraphic.Create
 004CD6BB    call        @RaiseExcept
 004CD6C0    xor         eax,eax
 004CD6C2    pop         edx
 004CD6C3    pop         ecx
 004CD6C4    pop         ecx
 004CD6C5    mov         dword ptr fs:[eax],edx
 004CD6C8    push        4CD6DD
 004CD6CD    lea         eax,[ebp-4]
 004CD6D0    call        @UStrClr
 004CD6D5    ret
>004CD6D6    jmp         @HandleFinally
>004CD6DB    jmp         004CD6CD
 004CD6DD    pop         ecx
 004CD6DE    pop         ebp
 004CD6DF    ret
end;*}

//004CD6E0
procedure TWICImage.LoadFromStream(Stream:TStream);
begin
{*
 004CD6E0    push        ebp
 004CD6E1    mov         ebp,esp
 004CD6E3    add         esp,0FFFFFFE0
 004CD6E6    push        ebx
 004CD6E7    push        esi
 004CD6E8    xor         ecx,ecx
 004CD6EA    mov         dword ptr [ebp-4],ecx
 004CD6ED    mov         dword ptr [ebp-8],ecx
 004CD6F0    mov         dword ptr [ebp-0C],ecx
 004CD6F3    mov         esi,edx
 004CD6F5    mov         ebx,eax
 004CD6F7    xor         eax,eax
 004CD6F9    push        ebp
 004CD6FA    push        4CD82F
 004CD6FF    push        dword ptr fs:[eax]
 004CD702    mov         dword ptr fs:[eax],esp
 004CD705    lea         eax,[ebx+30];TWICImage.FBitmap:TBitmap
 004CD708    mov         dword ptr [ebp-10],eax
 004CD70B    mov         eax,dword ptr [ebp-10]
 004CD70E    mov         eax,dword ptr [eax]
 004CD710    mov         edx,dword ptr [ebp-10]
 004CD713    xor         ecx,ecx
 004CD715    mov         dword ptr [edx],ecx
 004CD717    call        TObject.Free
 004CD71C    mov         eax,dword ptr [ebx+34];TWICImage.FData:TMemoryStream
 004CD71F    call        TMemoryStream.Clear
 004CD724    mov         eax,esi
 004CD726    mov         edx,dword ptr [eax]
 004CD728    call        dword ptr [edx];TStream.sub_00491B30
 004CD72A    push        edx
 004CD72B    push        eax
 004CD72C    mov         eax,esi
 004CD72E    call        TStream.GetPosition
 004CD733    sub         dword ptr [esp],eax
 004CD736    sbb         dword ptr [esp+4],edx
 004CD73A    pop         eax
 004CD73B    pop         edx
 004CD73C    push        edx
 004CD73D    push        eax
 004CD73E    mov         edx,esi
 004CD740    mov         eax,dword ptr [ebx+34];TWICImage.FData:TMemoryStream
 004CD743    call        TStream.CopyFrom
 004CD748    push        0
 004CD74A    push        0
 004CD74C    mov         eax,dword ptr [ebx+34];TWICImage.FData:TMemoryStream
 004CD74F    call        TStream.SetPosition
 004CD754    push        0
 004CD756    mov         ecx,dword ptr [ebx+34];TWICImage.FData:TMemoryStream
 004CD759    mov         dl,1
 004CD75B    mov         eax,[004738F8];TStreamAdapter
 004CD760    call        TStreamAdapter.Create;TStreamAdapter.Create
 004CD765    mov         edx,eax
 004CD767    test        edx,edx
>004CD769    je          004CD76E
 004CD76B    sub         edx,0FFFFFFEC
 004CD76E    lea         eax,[ebp-4]
 004CD771    call        @IntfCopy
 004CD776    lea         eax,[ebp-8]
 004CD779    call        @IntfClear
 004CD77E    push        eax
 004CD77F    push        0
 004CD781    mov         eax,[007C4740];^gvar_0079F7D4
 004CD786    push        eax
 004CD787    mov         eax,dword ptr [ebp-4]
 004CD78A    push        eax
 004CD78B    mov         eax,[007CA444];gvar_007CA444:IInterface
 004CD790    push        eax
 004CD791    mov         eax,dword ptr [eax]
 004CD793    call        dword ptr [eax+10]
 004CD796    call        004CD680
 004CD79B    lea         eax,[ebp-20]
 004CD79E    push        eax
 004CD79F    mov         eax,dword ptr [ebp-8]
 004CD7A2    push        eax
 004CD7A3    mov         eax,dword ptr [eax]
 004CD7A5    call        dword ptr [eax+14]
 004CD7A8    call        004CD680
 004CD7AD    lea         edx,[ebp-20]
 004CD7B0    mov         eax,ebx
 004CD7B2    call        004CDABC
 004CD7B7    lea         eax,[ebp-0C]
 004CD7BA    call        @IntfClear
 004CD7BF    push        eax
 004CD7C0    push        0
 004CD7C2    mov         eax,dword ptr [ebp-8]
 004CD7C5    push        eax
 004CD7C6    mov         eax,dword ptr [eax]
 004CD7C8    call        dword ptr [eax+34]
 004CD7CB    call        004CD680
 004CD7D0    lea         eax,[ebx+38];TWICImage.FWicBitmap:IWICBitmap
 004CD7D3    call        @IntfClear
 004CD7D8    push        eax
 004CD7D9    push        2
 004CD7DB    mov         eax,dword ptr [ebp-0C]
 004CD7DE    push        eax
 004CD7DF    mov         eax,[007CA444];gvar_007CA444:IInterface
 004CD7E4    push        eax
 004CD7E5    mov         eax,dword ptr [eax]
 004CD7E7    call        dword ptr [eax+48]
 004CD7EA    call        004CD680
 004CD7EF    lea         eax,[ebx+2C];TWICImage.FHeight:Cardinal
 004CD7F2    push        eax
 004CD7F3    lea         eax,[ebx+28];TWICImage.FWidth:Cardinal
 004CD7F6    push        eax
 004CD7F7    mov         eax,dword ptr [ebx+38];TWICImage.FWicBitmap:IWICBitmap
 004CD7FA    push        eax
 004CD7FB    mov         eax,dword ptr [eax]
 004CD7FD    call        dword ptr [eax+0C]
 004CD800    call        004CD680
 004CD805    mov         byte ptr [ebx+50],0;TWICImage.FFormatChanged:Boolean
 004CD809    xor         eax,eax
 004CD80B    pop         edx
 004CD80C    pop         ecx
 004CD80D    pop         ecx
 004CD80E    mov         dword ptr fs:[eax],edx
 004CD811    push        4CD836
 004CD816    lea         eax,[ebp-0C]
 004CD819    call        @IntfClear
 004CD81E    lea         eax,[ebp-8]
 004CD821    call        @IntfClear
 004CD826    lea         eax,[ebp-4]
 004CD829    call        @IntfClear
 004CD82E    ret
>004CD82F    jmp         @HandleFinally
>004CD834    jmp         004CD816
 004CD836    pop         esi
 004CD837    pop         ebx
 004CD838    mov         esp,ebp
 004CD83A    pop         ebp
 004CD83B    ret
*}
end;

//004CD83C
procedure TWICImage.SaveToStream(Stream:TStream);
begin
{*
 004CD83C    push        ebp
 004CD83D    mov         ebp,esp
 004CD83F    mov         ecx,5
 004CD844    push        0
 004CD846    push        0
 004CD848    dec         ecx
>004CD849    jne         004CD844
 004CD84B    push        ebx
 004CD84C    push        esi
 004CD84D    push        edi
 004CD84E    mov         edi,edx
 004CD850    mov         ebx,eax
 004CD852    xor         eax,eax
 004CD854    push        ebp
 004CD855    push        4CD9E1
 004CD85A    push        dword ptr fs:[eax]
 004CD85D    mov         dword ptr fs:[eax],esp
 004CD860    cmp         byte ptr [ebx+50],0;TWICImage.FFormatChanged:Boolean
>004CD864    je          004CD983
 004CD86A    mov         eax,dword ptr [ebx+34];TWICImage.FData:TMemoryStream
 004CD86D    call        TMemoryStream.Clear
 004CD872    push        0
 004CD874    mov         ecx,dword ptr [ebx+34];TWICImage.FData:TMemoryStream
 004CD877    mov         dl,1
 004CD879    mov         eax,[004738F8];TStreamAdapter
 004CD87E    call        TStreamAdapter.Create;TStreamAdapter.Create
 004CD883    mov         edx,eax
 004CD885    test        edx,edx
>004CD887    je          004CD88C
 004CD889    sub         edx,0FFFFFFEC
 004CD88C    lea         eax,[ebp-10]
 004CD88F    call        @IntfCopy
 004CD894    lea         eax,[ebp-14]
 004CD897    call        @IntfClear
 004CD89C    push        eax
 004CD89D    mov         eax,[007CA444];gvar_007CA444:IInterface
 004CD8A2    push        eax
 004CD8A3    mov         eax,dword ptr [eax]
 004CD8A5    call        dword ptr [eax+38]
 004CD8A8    mov         eax,dword ptr [ebp-10]
 004CD8AB    push        eax
 004CD8AC    mov         eax,dword ptr [ebp-14]
 004CD8AF    push        eax
 004CD8B0    mov         eax,dword ptr [eax]
 004CD8B2    call        dword ptr [eax+38]
 004CD8B5    lea         eax,[ebp-4]
 004CD8B8    call        @IntfClear
 004CD8BD    push        eax
 004CD8BE    mov         eax,[007C4740];^gvar_0079F7D4
 004CD8C3    push        eax
 004CD8C4    lea         eax,[ebx+40];TWICImage.FEncoderContainerFormat:TGUID
 004CD8C7    push        eax
 004CD8C8    mov         eax,[007CA444];gvar_007CA444:IInterface
 004CD8CD    push        eax
 004CD8CE    mov         eax,dword ptr [eax]
 004CD8D0    call        dword ptr [eax+20]
 004CD8D3    push        2
 004CD8D5    mov         eax,dword ptr [ebp-14]
 004CD8D8    push        eax
 004CD8D9    mov         eax,dword ptr [ebp-4]
 004CD8DC    push        eax
 004CD8DD    mov         eax,dword ptr [eax]
 004CD8DF    call        dword ptr [eax+0C]
 004CD8E2    lea         eax,[ebp-0C]
 004CD8E5    push        eax
 004CD8E6    lea         eax,[ebp-8]
 004CD8E9    call        @IntfClear
 004CD8EE    push        eax
 004CD8EF    mov         eax,dword ptr [ebp-4]
 004CD8F2    push        eax
 004CD8F3    mov         eax,dword ptr [eax]
 004CD8F5    call        dword ptr [eax+28]
 004CD8F8    mov         eax,dword ptr [ebp-0C]
 004CD8FB    push        eax
 004CD8FC    mov         eax,dword ptr [ebp-8]
 004CD8FF    push        eax
 004CD900    mov         eax,dword ptr [eax]
 004CD902    call        dword ptr [eax+0C]
 004CD905    lea         eax,[ebp-28]
 004CD908    push        eax
 004CD909    mov         eax,dword ptr [ebx+38];TWICImage.FWicBitmap:IWICBitmap
 004CD90C    push        eax
 004CD90D    mov         eax,dword ptr [eax]
 004CD90F    call        dword ptr [eax+10]
 004CD912    lea         eax,[ebp-28]
 004CD915    push        eax
 004CD916    mov         eax,dword ptr [ebp-8]
 004CD919    push        eax
 004CD91A    mov         eax,dword ptr [eax]
 004CD91C    call        dword ptr [eax+18]
 004CD91F    mov         eax,dword ptr [ebx+2C];TWICImage.FHeight:Cardinal
 004CD922    push        eax
 004CD923    mov         eax,dword ptr [ebx+28];TWICImage.FWidth:Cardinal
 004CD926    push        eax
 004CD927    mov         eax,dword ptr [ebp-8]
 004CD92A    push        eax
 004CD92B    mov         eax,dword ptr [eax]
 004CD92D    call        dword ptr [eax+10]
 004CD930    lea         eax,[ebp-18]
 004CD933    call        @IntfClear
 004CD938    push        eax
 004CD939    mov         eax,[007CA444];gvar_007CA444:IInterface
 004CD93E    push        eax
 004CD93F    mov         eax,dword ptr [eax]
 004CD941    call        dword ptr [eax+24]
 004CD944    mov         eax,dword ptr [ebp-18]
 004CD947    push        eax
 004CD948    mov         eax,dword ptr [ebx+38];TWICImage.FWicBitmap:IWICBitmap
 004CD94B    push        eax
 004CD94C    mov         eax,dword ptr [eax]
 004CD94E    call        dword ptr [eax+18]
 004CD951    mov         eax,dword ptr [ebp-18]
 004CD954    push        eax
 004CD955    mov         eax,dword ptr [ebp-8]
 004CD958    push        eax
 004CD959    mov         eax,dword ptr [eax]
 004CD95B    call        dword ptr [eax+20]
 004CD95E    push        0
 004CD960    mov         eax,dword ptr [ebx+38];TWICImage.FWicBitmap:IWICBitmap
 004CD963    push        eax
 004CD964    mov         eax,dword ptr [ebp-8]
 004CD967    push        eax
 004CD968    mov         eax,dword ptr [eax]
 004CD96A    call        dword ptr [eax+2C]
 004CD96D    mov         eax,dword ptr [ebp-8]
 004CD970    push        eax
 004CD971    mov         eax,dword ptr [eax]
 004CD973    call        dword ptr [eax+30]
 004CD976    mov         eax,dword ptr [ebp-4]
 004CD979    push        eax
 004CD97A    mov         eax,dword ptr [eax]
 004CD97C    call        dword ptr [eax+2C]
 004CD97F    mov         byte ptr [ebx+50],0;TWICImage.FFormatChanged:Boolean
 004CD983    push        0
 004CD985    push        0
 004CD987    mov         eax,dword ptr [ebx+34];TWICImage.FData:TMemoryStream
 004CD98A    call        TStream.SetPosition
 004CD98F    mov         esi,dword ptr [ebx+34];TWICImage.FData:TMemoryStream
 004CD992    mov         eax,esi
 004CD994    mov         edx,dword ptr [eax]
 004CD996    call        dword ptr [edx];TMemoryStream.sub_00491B30
 004CD998    push        edx
 004CD999    push        eax
 004CD99A    mov         edx,esi
 004CD99C    mov         eax,edi
 004CD99E    call        TStream.CopyFrom
 004CD9A3    xor         eax,eax
 004CD9A5    pop         edx
 004CD9A6    pop         ecx
 004CD9A7    pop         ecx
 004CD9A8    mov         dword ptr fs:[eax],edx
 004CD9AB    push        4CD9E8
 004CD9B0    lea         eax,[ebp-18]
 004CD9B3    call        @IntfClear
 004CD9B8    lea         eax,[ebp-14]
 004CD9BB    call        @IntfClear
 004CD9C0    lea         eax,[ebp-10]
 004CD9C3    call        @IntfClear
 004CD9C8    lea         eax,[ebp-0C]
 004CD9CB    call        @IntfClear
 004CD9D0    lea         eax,[ebp-8]
 004CD9D3    call        @IntfClear
 004CD9D8    lea         eax,[ebp-4]
 004CD9DB    call        @IntfClear
 004CD9E0    ret
>004CD9E1    jmp         @HandleFinally
>004CD9E6    jmp         004CD9B0
 004CD9E8    pop         edi
 004CD9E9    pop         esi
 004CD9EA    pop         ebx
 004CD9EB    mov         esp,ebp
 004CD9ED    pop         ebp
 004CD9EE    ret
*}
end;

//004CD9F0
procedure TWICImage.LoadFromClipboardFormat(AFormat:Word; AData:NativeUInt; APalette:HPALETTE);
begin
{*
 004CD9F0    push        ebp
 004CD9F1    mov         ebp,esp
 004CD9F3    add         esp,0FFFFFFF8
 004CD9F6    push        ebx
 004CD9F7    push        esi
 004CD9F8    push        edi
 004CD9F9    mov         esi,ecx
 004CD9FB    mov         ebx,edx
 004CD9FD    mov         dword ptr [ebp-4],eax
 004CDA00    mov         eax,dword ptr [ebp-4]
 004CDA03    add         eax,38;TWICImage.FWicBitmap:IWICBitmap
 004CDA06    call        @IntfClear
 004CDA0B    mov         eax,dword ptr [ebp-4]
 004CDA0E    cmp         dword ptr [eax+30],0;TWICImage.FBitmap:TBitmap
>004CDA12    jne         004CDA26
 004CDA14    mov         dl,1
 004CDA16    mov         eax,[004C1D10];TBitmap
 004CDA1B    call        TBitmap.Create;TBitmap.Create
 004CDA20    mov         edx,dword ptr [ebp-4]
 004CDA23    mov         dword ptr [edx+30],eax;TWICImage.FBitmap:TBitmap
 004CDA26    xor         edx,edx
 004CDA28    push        ebp
 004CDA29    push        4CDA59
 004CDA2E    push        dword ptr fs:[edx]
 004CDA31    mov         dword ptr fs:[edx],esp
 004CDA34    mov         eax,dword ptr [ebp+8]
 004CDA37    push        eax
 004CDA38    mov         eax,dword ptr [ebp-4]
 004CDA3B    mov         eax,dword ptr [eax+30];TWICImage.FBitmap:TBitmap
 004CDA3E    mov         ecx,esi
 004CDA40    mov         edx,ebx
 004CDA42    mov         ebx,dword ptr [eax]
 004CDA44    call        dword ptr [ebx+64];TBitmap.LoadFromClipboardFormat
 004CDA47    mov         eax,dword ptr [ebp-4]
 004CDA4A    call        004CD4DC
 004CDA4F    xor         eax,eax
 004CDA51    pop         edx
 004CDA52    pop         ecx
 004CDA53    pop         ecx
 004CDA54    mov         dword ptr fs:[eax],edx
>004CDA57    jmp         004CDA82
>004CDA59    jmp         @HandleAnyException
 004CDA5E    mov         eax,dword ptr [ebp-4]
 004CDA61    add         eax,30;TWICImage.FBitmap:TBitmap
 004CDA64    mov         dword ptr [ebp-8],eax
 004CDA67    mov         eax,dword ptr [ebp-8]
 004CDA6A    mov         eax,dword ptr [eax]
 004CDA6C    mov         edx,dword ptr [ebp-8]
 004CDA6F    xor         ecx,ecx
 004CDA71    mov         dword ptr [edx],ecx
 004CDA73    call        TObject.Free
 004CDA78    call        @RaiseAgain
 004CDA7D    call        @DoneExcept
 004CDA82    pop         edi
 004CDA83    pop         esi
 004CDA84    pop         ebx
 004CDA85    pop         ecx
 004CDA86    pop         ecx
 004CDA87    pop         ebp
 004CDA88    ret         4
*}
end;

//004CDA8C
procedure TWICImage.SaveToClipboardFormat(var AFormat:Word; var AData:NativeUInt; var APalette:HPALETTE);
begin
{*
 004CDA8C    push        ebp
 004CDA8D    mov         ebp,esp
 004CDA8F    push        ecx
 004CDA90    push        ebx
 004CDA91    push        esi
 004CDA92    push        edi
 004CDA93    mov         dword ptr [ebp-4],ecx
 004CDA96    mov         edi,edx
 004CDA98    mov         esi,eax
 004CDA9A    mov         eax,esi
 004CDA9C    call        TWICImage.RequireBitmap
 004CDAA1    mov         eax,dword ptr [ebp+8]
 004CDAA4    push        eax
 004CDAA5    mov         ecx,dword ptr [ebp-4]
 004CDAA8    mov         edx,edi
 004CDAAA    mov         eax,dword ptr [esi+30];TWICImage.FBitmap:TBitmap
 004CDAAD    mov         ebx,dword ptr [eax]
 004CDAAF    call        dword ptr [ebx+68];TBitmap.SaveToClipboardFormat
 004CDAB2    pop         edi
 004CDAB3    pop         esi
 004CDAB4    pop         ebx
 004CDAB5    pop         ecx
 004CDAB6    pop         ebp
 004CDAB7    ret         4
*}
end;

//004CDABC
{*procedure sub_004CDABC(?:TWICImage; ?:?);
begin
 004CDABC    push        ebx
 004CDABD    push        esi
 004CDABE    push        edi
 004CDABF    mov         esi,edx
 004CDAC1    mov         ebx,eax
 004CDAC3    lea         eax,[ebx+40];TWICImage.FEncoderContainerFormat:TGUID
 004CDAC6    push        eax
 004CDAC7    push        esi
 004CDAC8    call        ole32.IsEqualGUID
 004CDACD    test        al,al
>004CDACF    jne         004CDB6A
 004CDAD5    mov         byte ptr [ebx+50],1;TWICImage.FFormatChanged:Boolean
 004CDAD9    push        esi
 004CDADA    lea         edi,[ebx+40];TWICImage.FEncoderContainerFormat:TGUID
 004CDADD    movs        dword ptr [edi],dword ptr [esi]
 004CDADE    movs        dword ptr [edi],dword ptr [esi]
 004CDADF    movs        dword ptr [edi],dword ptr [esi]
 004CDAE0    movs        dword ptr [edi],dword ptr [esi]
 004CDAE1    pop         esi
 004CDAE2    mov         eax,[007C43E4];^gvar_007A06E8
 004CDAE7    push        eax
 004CDAE8    push        esi
 004CDAE9    call        ole32.IsEqualGUID
 004CDAEE    test        al,al
>004CDAF0    je          004CDAF8
 004CDAF2    mov         byte ptr [ebx+3C],0;TWICImage.FImageFormat:TWICImageFormat
>004CDAF6    jmp         004CDB6A
 004CDAF8    mov         eax,[007C4318];^gvar_007A06F8
 004CDAFD    push        eax
 004CDAFE    push        esi
 004CDAFF    call        ole32.IsEqualGUID
 004CDB04    test        al,al
>004CDB06    je          004CDB0E
 004CDB08    mov         byte ptr [ebx+3C],1;TWICImage.FImageFormat:TWICImageFormat
>004CDB0C    jmp         004CDB6A
 004CDB0E    mov         eax,[007C49A8];^gvar_007A0708
 004CDB13    push        eax
 004CDB14    push        esi
 004CDB15    call        ole32.IsEqualGUID
 004CDB1A    test        al,al
>004CDB1C    je          004CDB24
 004CDB1E    mov         byte ptr [ebx+3C],2;TWICImage.FImageFormat:TWICImageFormat
>004CDB22    jmp         004CDB6A
 004CDB24    mov         eax,[007C4CA0];^gvar_007A0718
 004CDB29    push        eax
 004CDB2A    push        esi
 004CDB2B    call        ole32.IsEqualGUID
 004CDB30    test        al,al
>004CDB32    je          004CDB3A
 004CDB34    mov         byte ptr [ebx+3C],4;TWICImage.FImageFormat:TWICImageFormat
>004CDB38    jmp         004CDB6A
 004CDB3A    mov         eax,[007C4A6C];^gvar_007A0728
 004CDB3F    push        eax
 004CDB40    push        esi
 004CDB41    call        ole32.IsEqualGUID
 004CDB46    test        al,al
>004CDB48    je          004CDB50
 004CDB4A    mov         byte ptr [ebx+3C],3;TWICImage.FImageFormat:TWICImageFormat
>004CDB4E    jmp         004CDB6A
 004CDB50    mov         eax,[007C4CDC];^gvar_007A0738
 004CDB55    push        eax
 004CDB56    push        esi
 004CDB57    call        ole32.IsEqualGUID
 004CDB5C    test        al,al
>004CDB5E    je          004CDB66
 004CDB60    mov         byte ptr [ebx+3C],5;TWICImage.FImageFormat:TWICImageFormat
>004CDB64    jmp         004CDB6A
 004CDB66    mov         byte ptr [ebx+3C],6;TWICImage.FImageFormat:TWICImageFormat
 004CDB6A    pop         edi
 004CDB6B    pop         esi
 004CDB6C    pop         ebx
 004CDB6D    ret
end;*}

//004CDB70
{*procedure sub_004CDB70(?:TWICImage; ?:?);
begin
 004CDB70    push        esi
 004CDB71    push        edi
 004CDB72    cmp         dl,byte ptr [eax+3C];TWICImage.FImageFormat:TWICImageFormat
>004CDB75    je          004CDC11
 004CDB7B    mov         byte ptr [eax+50],1;TWICImage.FFormatChanged:Boolean
 004CDB7F    mov         byte ptr [eax+3C],dl;TWICImage.FImageFormat:TWICImageFormat
 004CDB82    and         edx,7F
 004CDB85    cmp         edx,5
>004CDB88    ja          004CDC11
 004CDB8E    jmp         dword ptr [edx*4+4CDB95]
 004CDB8E    dd          004CDBAD
 004CDB8E    dd          004CDBBE
 004CDB8E    dd          004CDBCF
 004CDB8E    dd          004CDBE0
 004CDB8E    dd          004CDBF1
 004CDB8E    dd          004CDC02
 004CDBAD    mov         edx,dword ptr ds:[7C43E4];^gvar_007A06E8
 004CDBB3    mov         esi,edx
 004CDBB5    lea         edi,[eax+40];TWICImage.FEncoderContainerFormat:TGUID
 004CDBB8    movs        dword ptr [edi],dword ptr [esi]
 004CDBB9    movs        dword ptr [edi],dword ptr [esi]
 004CDBBA    movs        dword ptr [edi],dword ptr [esi]
 004CDBBB    movs        dword ptr [edi],dword ptr [esi]
>004CDBBC    jmp         004CDC11
 004CDBBE    mov         edx,dword ptr ds:[7C4318];^gvar_007A06F8
 004CDBC4    mov         esi,edx
 004CDBC6    lea         edi,[eax+40];TWICImage.FEncoderContainerFormat:TGUID
 004CDBC9    movs        dword ptr [edi],dword ptr [esi]
 004CDBCA    movs        dword ptr [edi],dword ptr [esi]
 004CDBCB    movs        dword ptr [edi],dword ptr [esi]
 004CDBCC    movs        dword ptr [edi],dword ptr [esi]
>004CDBCD    jmp         004CDC11
 004CDBCF    mov         edx,dword ptr ds:[7C49A8];^gvar_007A0708
 004CDBD5    mov         esi,edx
 004CDBD7    lea         edi,[eax+40];TWICImage.FEncoderContainerFormat:TGUID
 004CDBDA    movs        dword ptr [edi],dword ptr [esi]
 004CDBDB    movs        dword ptr [edi],dword ptr [esi]
 004CDBDC    movs        dword ptr [edi],dword ptr [esi]
 004CDBDD    movs        dword ptr [edi],dword ptr [esi]
>004CDBDE    jmp         004CDC11
 004CDBE0    mov         edx,dword ptr ds:[7C4A6C];^gvar_007A0728
 004CDBE6    mov         esi,edx
 004CDBE8    lea         edi,[eax+40];TWICImage.FEncoderContainerFormat:TGUID
 004CDBEB    movs        dword ptr [edi],dword ptr [esi]
 004CDBEC    movs        dword ptr [edi],dword ptr [esi]
 004CDBED    movs        dword ptr [edi],dword ptr [esi]
 004CDBEE    movs        dword ptr [edi],dword ptr [esi]
>004CDBEF    jmp         004CDC11
 004CDBF1    mov         edx,dword ptr ds:[7C4CA0];^gvar_007A0718
 004CDBF7    mov         esi,edx
 004CDBF9    lea         edi,[eax+40];TWICImage.FEncoderContainerFormat:TGUID
 004CDBFC    movs        dword ptr [edi],dword ptr [esi]
 004CDBFD    movs        dword ptr [edi],dword ptr [esi]
 004CDBFE    movs        dword ptr [edi],dword ptr [esi]
 004CDBFF    movs        dword ptr [edi],dword ptr [esi]
>004CDC00    jmp         004CDC11
 004CDC02    mov         edx,dword ptr ds:[7C4CDC];^gvar_007A0738
 004CDC08    mov         esi,edx
 004CDC0A    lea         edi,[eax+40];TWICImage.FEncoderContainerFormat:TGUID
 004CDC0D    movs        dword ptr [edi],dword ptr [esi]
 004CDC0E    movs        dword ptr [edi],dword ptr [esi]
 004CDC0F    movs        dword ptr [edi],dword ptr [esi]
 004CDC10    movs        dword ptr [edi],dword ptr [esi]
 004CDC11    pop         edi
 004CDC12    pop         esi
 004CDC13    ret
end;*}

//004CDC78
procedure InvalidBitmap;
begin
{*
 004CDC78    mov         eax,[007C417C];^SResString217:TResStringRec
 004CDC7D    call        InvalidGraphic
 004CDC82    ret
*}
end;

//004CDC84
procedure InvalidIcon;
begin
{*
 004CDC84    mov         eax,[007C417C];^SResString217:TResStringRec
 004CDC89    call        InvalidGraphic
 004CDC8E    ret
*}
end;

//004CDCC8
procedure TWICImage.RequireBitmap;
begin
{*
 004CDCC8    push        ebp
 004CDCC9    mov         ebp,esp
 004CDCCB    add         esp,0FFFFFFC4
 004CDCCE    push        ebx
 004CDCCF    push        esi
 004CDCD0    push        edi
 004CDCD1    xor         edx,edx
 004CDCD3    mov         dword ptr [ebp-4],edx
 004CDCD6    mov         dword ptr [ebp-8],edx
 004CDCD9    mov         dword ptr [ebp-0C],eax
 004CDCDC    xor         eax,eax
 004CDCDE    push        ebp
 004CDCDF    push        4CDE81
 004CDCE4    push        dword ptr fs:[eax]
 004CDCE7    mov         dword ptr fs:[eax],esp
 004CDCEA    mov         eax,dword ptr [ebp-0C]
 004CDCED    cmp         dword ptr [eax+30],0
>004CDCF1    jne         004CDE5D
 004CDCF7    mov         eax,dword ptr [ebp-0C]
 004CDCFA    cmp         dword ptr [eax+38],0
>004CDCFE    je          004CDE5D
 004CDD04    mov         eax,dword ptr [ebp-0C]
 004CDD07    add         eax,2C
 004CDD0A    push        eax
 004CDD0B    mov         eax,dword ptr [ebp-0C]
 004CDD0E    add         eax,28
 004CDD11    push        eax
 004CDD12    mov         eax,dword ptr [ebp-0C]
 004CDD15    mov         eax,dword ptr [eax+38]
 004CDD18    push        eax
 004CDD19    mov         eax,dword ptr [eax]
 004CDD1B    call        dword ptr [eax+0C]
 004CDD1E    mov         eax,dword ptr [ebp-0C]
 004CDD21    mov         ebx,dword ptr [eax+28]
 004CDD24    add         ebx,ebx
 004CDD26    add         ebx,ebx
 004CDD28    mov         eax,dword ptr [ebp-0C]
 004CDD2B    mov         eax,dword ptr [eax+2C]
 004CDD2E    imul        ebx
 004CDD30    push        eax
 004CDD31    lea         eax,[ebp-8]
 004CDD34    mov         ecx,1
 004CDD39    mov         edx,dword ptr ds:[4CDC90];:TWICImage.:2
 004CDD3F    call        @DynArraySetLength
 004CDD44    add         esp,4
 004CDD47    lea         eax,[ebp-4]
 004CDD4A    call        @IntfClear
 004CDD4F    push        eax
 004CDD50    mov         eax,dword ptr [ebp-0C]
 004CDD53    mov         eax,dword ptr [eax+38]
 004CDD56    push        eax
 004CDD57    mov         eax,[007C4530];^gvar_007A0758
 004CDD5C    push        eax
 004CDD5D    call        004B3194
 004CDD62    mov         eax,dword ptr [ebp-8]
 004CDD65    test        eax,eax
>004CDD67    je          004CDD6E
 004CDD69    sub         eax,4
 004CDD6C    mov         eax,dword ptr [eax]
 004CDD6E    mov         edx,dword ptr [ebp-8]
 004CDD71    push        edx
 004CDD72    push        eax
 004CDD73    push        ebx
 004CDD74    push        0
 004CDD76    mov         eax,dword ptr [ebp-4]
 004CDD79    push        eax
 004CDD7A    mov         eax,dword ptr [eax]
 004CDD7C    call        dword ptr [eax+1C]
 004CDD7F    lea         eax,[ebp-3C]
 004CDD82    xor         ecx,ecx
 004CDD84    mov         edx,2C
 004CDD89    call        @FillChar
 004CDD8E    mov         dword ptr [ebp-3C],2C
 004CDD95    mov         eax,dword ptr [ebp-0C]
 004CDD98    mov         eax,dword ptr [eax+28]
 004CDD9B    mov         dword ptr [ebp-38],eax
 004CDD9E    mov         eax,dword ptr [ebp-0C]
 004CDDA1    mov         eax,dword ptr [eax+2C]
 004CDDA4    neg         eax
 004CDDA6    mov         dword ptr [ebp-34],eax
 004CDDA9    mov         word ptr [ebp-30],1
 004CDDAF    mov         word ptr [ebp-2E],20
 004CDDB5    mov         dl,1
 004CDDB7    mov         eax,[004C1D10];TBitmap
 004CDDBC    call        TBitmap.Create
 004CDDC1    mov         ebx,eax
 004CDDC3    mov         eax,dword ptr [ebp-0C]
 004CDDC6    mov         dword ptr [eax+30],ebx
 004CDDC9    xor         edx,edx
 004CDDCB    push        ebp
 004CDDCC    push        4CDE34
 004CDDD1    push        dword ptr fs:[edx]
 004CDDD4    mov         dword ptr fs:[edx],esp
 004CDDD7    mov         eax,ebx
 004CDDD9    mov         dl,7
 004CDDDB    call        TBitmap.SetPixelFormat
 004CDDE0    mov         eax,dword ptr [ebp-0C]
 004CDDE3    mov         ecx,dword ptr [eax+2C]
 004CDDE6    mov         eax,dword ptr [ebp-0C]
 004CDDE9    mov         edx,dword ptr [eax+28]
 004CDDEC    mov         eax,dword ptr [ebp-0C]
 004CDDEF    mov         eax,dword ptr [eax+30]
 004CDDF2    mov         ebx,dword ptr [eax]
 004CDDF4    call        dword ptr [ebx+6C]
 004CDDF7    push        0
 004CDDF9    lea         eax,[ebp-3C]
 004CDDFC    push        eax
 004CDDFD    mov         eax,dword ptr [ebp-8]
 004CDE00    push        eax
 004CDE01    mov         eax,dword ptr [ebp-0C]
 004CDE04    mov         eax,dword ptr [eax+2C]
 004CDE07    push        eax
 004CDE08    push        0
 004CDE0A    mov         eax,dword ptr [ebp-0C]
 004CDE0D    mov         eax,dword ptr [eax+30]
 004CDE10    mov         edx,dword ptr [eax]
 004CDE12    call        dword ptr [edx+70]
 004CDE15    push        eax
 004CDE16    push        0
 004CDE18    call        gdi32.SetDIBits
 004CDE1D    mov         eax,dword ptr [ebp-0C]
 004CDE20    mov         eax,dword ptr [eax+30]
 004CDE23    mov         dl,1
 004CDE25    call        TBitmap.SetAlphaFormat
 004CDE2A    xor         eax,eax
 004CDE2C    pop         edx
 004CDE2D    pop         ecx
 004CDE2E    pop         ecx
 004CDE2F    mov         dword ptr fs:[eax],edx
>004CDE32    jmp         004CDE5D
>004CDE34    jmp         @HandleAnyException
 004CDE39    mov         eax,dword ptr [ebp-0C]
 004CDE3C    add         eax,30
 004CDE3F    mov         dword ptr [ebp-10],eax
 004CDE42    mov         eax,dword ptr [ebp-10]
 004CDE45    mov         eax,dword ptr [eax]
 004CDE47    mov         edx,dword ptr [ebp-10]
 004CDE4A    xor         ecx,ecx
 004CDE4C    mov         dword ptr [edx],ecx
 004CDE4E    call        TObject.Free
 004CDE53    call        @RaiseAgain
 004CDE58    call        @DoneExcept
 004CDE5D    xor         eax,eax
 004CDE5F    pop         edx
 004CDE60    pop         ecx
 004CDE61    pop         ecx
 004CDE62    mov         dword ptr fs:[eax],edx
 004CDE65    push        4CDE88
 004CDE6A    lea         eax,[ebp-8]
 004CDE6D    mov         edx,dword ptr ds:[4CDC90];:TWICImage.:2
 004CDE73    call        @DynArrayClear
 004CDE78    lea         eax,[ebp-4]
 004CDE7B    call        @IntfClear
 004CDE80    ret
>004CDE81    jmp         @HandleFinally
>004CDE86    jmp         004CDE6A
 004CDE88    pop         edi
 004CDE89    pop         esi
 004CDE8A    pop         ebx
 004CDE8B    mov         esp,ebp
 004CDE8D    pop         ebp
 004CDE8E    ret
*}
end;

//004CDE90
procedure InitScreenLogPixels;
begin
{*
 004CDE90    push        ebp
 004CDE91    mov         ebp,esp
 004CDE93    push        ecx
 004CDE94    push        0
 004CDE96    call        user32.GetDC
 004CDE9B    mov         dword ptr [ebp-4],eax
 004CDE9E    xor         eax,eax
 004CDEA0    push        ebp
 004CDEA1    push        4CDED5
 004CDEA6    push        dword ptr fs:[eax]
 004CDEA9    mov         dword ptr fs:[eax],esp
 004CDEAC    push        5A
 004CDEAE    mov         eax,dword ptr [ebp-4]
 004CDEB1    push        eax
 004CDEB2    call        gdi32.GetDeviceCaps
 004CDEB7    mov         [007CA454],eax
 004CDEBC    xor         eax,eax
 004CDEBE    pop         edx
 004CDEBF    pop         ecx
 004CDEC0    pop         ecx
 004CDEC1    mov         dword ptr fs:[eax],edx
 004CDEC4    push        4CDEDC
 004CDEC9    mov         eax,dword ptr [ebp-4]
 004CDECC    push        eax
 004CDECD    push        0
 004CDECF    call        user32.ReleaseDC
 004CDED4    ret
>004CDED5    jmp         @HandleFinally
>004CDEDA    jmp         004CDEC9
 004CDEDC    mov         eax,7A1050
 004CDEE1    mov         edx,0F
 004CDEE6    call        CreateSystemPalette
 004CDEEB    mov         [007CA44C],eax;gvar_007CA44C
 004CDEF0    pop         ecx
 004CDEF1    pop         ebp
 004CDEF2    ret
*}
end;

//004CDEF4
function GetDefFontCharSet:TFontCharset;
begin
{*
 004CDEF4    push        ebx
 004CDEF5    push        esi
 004CDEF6    add         esp,0FFFFFFC4
 004CDEF9    mov         bl,1
 004CDEFB    push        0
 004CDEFD    call        user32.GetDC
 004CDF02    mov         esi,eax
 004CDF04    test        esi,esi
>004CDF06    je          004CDF30
 004CDF08    mov         eax,[007CA460]
 004CDF0D    push        eax
 004CDF0E    push        esi
 004CDF0F    call        gdi32.SelectObject
 004CDF14    test        eax,eax
>004CDF16    je          004CDF28
 004CDF18    push        esp
 004CDF19    push        esi
 004CDF1A    call        gdi32.GetTextMetricsW
 004CDF1F    test        eax,eax
>004CDF21    je          004CDF28
 004CDF23    movzx       ebx,byte ptr [esp+38]
 004CDF28    push        esi
 004CDF29    push        0
 004CDF2B    call        user32.ReleaseDC
 004CDF30    mov         eax,ebx
 004CDF32    add         esp,3C
 004CDF35    pop         esi
 004CDF36    pop         ebx
 004CDF37    ret
*}
end;

//004CDF38
procedure InitDefFontData;
begin
{*
 004CDF38    push        ebp
 004CDF39    mov         ebp,esp
 004CDF3B    add         esp,0FFFFFEF8
 004CDF41    xor         eax,eax
 004CDF43    mov         dword ptr [ebp-4],eax
 004CDF46    xor         eax,eax
 004CDF48    push        ebp
 004CDF49    push        4CE036
 004CDF4E    push        dword ptr fs:[eax]
 004CDF51    mov         dword ptr fs:[eax],esp
 004CDF54    push        48
 004CDF56    mov         eax,[007CA454]
 004CDF5B    push        eax
 004CDF5C    push        8
 004CDF5E    call        kernel32.MulDiv
 004CDF63    neg         eax
 004CDF65    mov         [007A0EB8],eax
 004CDF6A    mov         eax,[007C4EC4];^gvar_0079EDDC
 004CDF6F    cmp         dword ptr [eax],1
>004CDF72    jne         004CDF8A
 004CDF74    call        GetDefFontCharSet
 004CDF79    cmp         al,80
>004CDF7B    jne         004CDF8A
 004CDF7D    lea         eax,[ebp-4]
 004CDF80    mov         edx,4CE050;'Tahoma'
 004CDF85    call        @UStrLAsg
 004CDF8A    mov         dl,1
 004CDF8C    mov         eax,[004B67E8];TRegistry
 004CDF91    call        TRegistry.Create
 004CDF96    mov         dword ptr [ebp-8],eax
 004CDF99    xor         eax,eax
 004CDF9B    push        ebp
 004CDF9C    push        4CDFF3
 004CDFA1    push        dword ptr fs:[eax]
 004CDFA4    mov         dword ptr fs:[eax],esp
 004CDFA7    mov         edx,80000002
 004CDFAC    mov         eax,dword ptr [ebp-8]
 004CDFAF    call        TRegistry.SetRootKey
 004CDFB4    mov         edx,4CE06C;'SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes'
 004CDFB9    mov         eax,dword ptr [ebp-8]
 004CDFBC    call        TRegistry.OpenKeyReadOnly
 004CDFC1    test        al,al
>004CDFC3    je          004CDFDD
 004CDFC5    lea         ecx,[ebp-4]
 004CDFC8    mov         edx,4CE0F4;'MS Shell Dlg 2'
 004CDFCD    mov         eax,dword ptr [ebp-8]
 004CDFD0    call        TRegistry.ReadString
 004CDFD5    mov         eax,dword ptr [ebp-8]
 004CDFD8    call        TRegistry.CloseKey
 004CDFDD    xor         eax,eax
 004CDFDF    pop         edx
 004CDFE0    pop         ecx
 004CDFE1    pop         ecx
 004CDFE2    mov         dword ptr fs:[eax],edx
 004CDFE5    push        4CDFFA
 004CDFEA    mov         eax,dword ptr [ebp-8]
 004CDFED    call        TObject.Free
 004CDFF2    ret
>004CDFF3    jmp         @HandleFinally
>004CDFF8    jmp         004CDFEA
 004CDFFA    cmp         dword ptr [ebp-4],0
>004CDFFE    je          004CE020
 004CE000    lea         edx,[ebp-108]
 004CE006    mov         eax,dword ptr [ebp-4]
 004CE009    call        UTF8EncodeToShortString
 004CE00E    lea         edx,[ebp-108]
 004CE014    mov         eax,7A0EC3
 004CE019    mov         cl,7C
 004CE01B    call        @PStrNCpy
 004CE020    xor         eax,eax
 004CE022    pop         edx
 004CE023    pop         ecx
 004CE024    pop         ecx
 004CE025    mov         dword ptr fs:[eax],edx
 004CE028    push        4CE03D
 004CE02D    lea         eax,[ebp-4]
 004CE030    call        @UStrClr
 004CE035    ret
>004CE036    jmp         @HandleFinally
>004CE03B    jmp         004CE02D
 004CE03D    mov         esp,ebp
 004CE03F    pop         ebp
 004CE040    ret
*}
end;

//004CE3A4
constructor TPatternManager.Create();
begin
{*
 004CE3A4    push        ebx
 004CE3A5    push        esi
 004CE3A6    test        dl,dl
>004CE3A8    je          004CE3B2
 004CE3AA    add         esp,0FFFFFFF0
 004CE3AD    call        @ClassCreate
 004CE3B2    mov         ebx,edx
 004CE3B4    mov         esi,eax
 004CE3B6    lea         eax,[esi+8]
 004CE3B9    push        eax
 004CE3BA    call        kernel32.InitializeCriticalSection
 004CE3BF    mov         eax,esi
 004CE3C1    test        bl,bl
>004CE3C3    je          004CE3D4
 004CE3C5    call        @AfterConstruction
 004CE3CA    pop         dword ptr fs:[0]
 004CE3D1    add         esp,0C
 004CE3D4    mov         eax,esi
 004CE3D6    pop         esi
 004CE3D7    pop         ebx
 004CE3D8    ret
*}
end;

//004CE3DC
destructor TPatternManager.Destroy();
begin
{*
 004CE3DC    push        ebx
 004CE3DD    push        esi
 004CE3DE    call        @BeforeDestruction
 004CE3E3    mov         ebx,edx
 004CE3E5    mov         esi,eax
 004CE3E7    mov         eax,esi
 004CE3E9    call        TPatternManager.FreePatterns
 004CE3EE    lea         eax,[esi+8]
 004CE3F1    push        eax
 004CE3F2    call        kernel32.DeleteCriticalSection
 004CE3F7    test        bl,bl
>004CE3F9    jle         004CE402
 004CE3FB    mov         eax,esi
 004CE3FD    call        @ClassDestroy
 004CE402    pop         esi
 004CE403    pop         ebx
 004CE404    ret
*}
end;

//004CE408
procedure TPatternManager.Lock;
begin
{*
 004CE408    add         eax,8
 004CE40B    push        eax
 004CE40C    call        kernel32.EnterCriticalSection
 004CE411    ret
*}
end;

//004CE414
procedure TPatternManager.Unlock;
begin
{*
 004CE414    add         eax,8
 004CE417    push        eax
 004CE418    call        kernel32.LeaveCriticalSection
 004CE41D    ret
*}
end;

//004CE420
function TPatternManager.AllocPattern(BkColor:Cardinal; FgColor:Cardinal):PPattern;
begin
{*
 004CE420    push        ebp
 004CE421    mov         ebp,esp
 004CE423    add         esp,0FFFFFFF8
 004CE426    push        ebx
 004CE427    push        esi
 004CE428    push        edi
 004CE429    mov         esi,ecx
 004CE42B    mov         ebx,edx
 004CE42D    mov         dword ptr [ebp-4],eax
 004CE430    mov         eax,dword ptr [ebp-4]
 004CE433    call        TPatternManager.Lock
 004CE438    xor         eax,eax
 004CE43A    push        ebp
 004CE43B    push        4CE4C1
 004CE440    push        dword ptr fs:[eax]
 004CE443    mov         dword ptr fs:[eax],esp
 004CE446    mov         eax,dword ptr [ebp-4]
 004CE449    mov         eax,dword ptr [eax+4]
 004CE44C    mov         dword ptr [ebp-8],eax
>004CE44F    jmp         004CE459
 004CE451    mov         eax,dword ptr [ebp-8]
 004CE454    mov         eax,dword ptr [eax]
 004CE456    mov         dword ptr [ebp-8],eax
 004CE459    cmp         dword ptr [ebp-8],0
>004CE45D    je          004CE46F
 004CE45F    mov         eax,dword ptr [ebp-8]
 004CE462    cmp         ebx,dword ptr [eax+8]
>004CE465    jne         004CE451
 004CE467    mov         eax,dword ptr [ebp-8]
 004CE46A    cmp         esi,dword ptr [eax+0C]
>004CE46D    jne         004CE451
 004CE46F    cmp         dword ptr [ebp-8],0
>004CE473    jne         004CE4AB
 004CE475    mov         eax,10
 004CE47A    call        @GetMem
 004CE47F    mov         dword ptr [ebp-8],eax
 004CE482    mov         edi,dword ptr [ebp-8]
 004CE485    mov         eax,dword ptr [ebp-4]
 004CE488    mov         eax,dword ptr [eax+4]
 004CE48B    mov         dword ptr [edi],eax
 004CE48D    mov         ecx,esi
 004CE48F    mov         edx,ebx
 004CE491    mov         eax,dword ptr [ebp-4]
 004CE494    call        TPatternManager.CreateBitmap
 004CE499    mov         dword ptr [edi+4],eax
 004CE49C    mov         dword ptr [edi+8],ebx
 004CE49F    mov         dword ptr [edi+0C],esi
 004CE4A2    mov         eax,dword ptr [ebp-4]
 004CE4A5    mov         edx,dword ptr [ebp-8]
 004CE4A8    mov         dword ptr [eax+4],edx
 004CE4AB    xor         eax,eax
 004CE4AD    pop         edx
 004CE4AE    pop         ecx
 004CE4AF    pop         ecx
 004CE4B0    mov         dword ptr fs:[eax],edx
 004CE4B3    push        4CE4C8
 004CE4B8    mov         eax,dword ptr [ebp-4]
 004CE4BB    call        TPatternManager.Unlock
 004CE4C0    ret
>004CE4C1    jmp         @HandleFinally
>004CE4C6    jmp         004CE4B8
 004CE4C8    mov         eax,dword ptr [ebp-8]
 004CE4CB    pop         edi
 004CE4CC    pop         esi
 004CE4CD    pop         ebx
 004CE4CE    pop         ecx
 004CE4CF    pop         ecx
 004CE4D0    pop         ebp
 004CE4D1    ret
*}
end;

//004CE4D4
function TPatternManager.CreateBitmap(BkColor:UITypes.TColor; FgColor:UITypes.TColor):TBitmap;
begin
{*
 004CE4D4    push        ebp
 004CE4D5    mov         ebp,esp
 004CE4D7    add         esp,0FFFFFFE4
 004CE4DA    push        ebx
 004CE4DB    push        esi
 004CE4DC    push        edi
 004CE4DD    mov         dword ptr [ebp-4],ecx
 004CE4E0    mov         ebx,edx
 004CE4E2    mov         dl,1
 004CE4E4    mov         eax,[004C1D10];TBitmap
 004CE4E9    call        TBitmap.Create
 004CE4EE    mov         dword ptr [ebp-8],eax
 004CE4F1    xor         eax,eax
 004CE4F3    push        ebp
 004CE4F4    push        4CE5BC
 004CE4F9    push        dword ptr fs:[eax]
 004CE4FC    mov         dword ptr fs:[eax],esp
 004CE4FF    mov         edx,8
 004CE504    mov         eax,dword ptr [ebp-8]
 004CE507    mov         ecx,dword ptr [eax]
 004CE509    call        dword ptr [ecx+44]
 004CE50C    mov         edx,8
 004CE511    mov         eax,dword ptr [ebp-8]
 004CE514    mov         ecx,dword ptr [eax]
 004CE516    call        dword ptr [ecx+38]
 004CE519    mov         eax,dword ptr [ebp-8]
 004CE51C    call        TBitmap.GetCanvas
 004CE521    mov         dword ptr [ebp-0C],eax
 004CE524    mov         eax,dword ptr [ebp-0C]
 004CE527    mov         eax,dword ptr [eax+48]
 004CE52A    xor         edx,edx
 004CE52C    call        TBrush.SetStyle
 004CE531    mov         eax,dword ptr [ebp-0C]
 004CE534    mov         eax,dword ptr [eax+48]
 004CE537    mov         edx,ebx
 004CE539    call        TBrush.SetColor
 004CE53E    mov         eax,dword ptr [ebp-8]
 004CE541    mov         edx,dword ptr [eax]
 004CE543    call        dword ptr [edx+24]
 004CE546    push        eax
 004CE547    lea         eax,[ebp-1C]
 004CE54A    push        eax
 004CE54B    mov         eax,dword ptr [ebp-8]
 004CE54E    mov         edx,dword ptr [eax]
 004CE550    call        dword ptr [edx+30]
 004CE553    mov         ecx,eax
 004CE555    xor         edx,edx
 004CE557    xor         eax,eax
 004CE559    call        Rect
 004CE55E    lea         edx,[ebp-1C]
 004CE561    mov         eax,dword ptr [ebp-0C]
 004CE564    mov         ecx,dword ptr [eax]
 004CE566    call        dword ptr [ecx+54]
 004CE569    xor         esi,esi
 004CE56B    xor         ebx,ebx
 004CE56D    mov         eax,esi
 004CE56F    and         eax,80000001
>004CE574    jns         004CE57B
 004CE576    dec         eax
 004CE577    or          eax,0FFFFFFFE
 004CE57A    inc         eax
 004CE57B    mov         edx,ebx
 004CE57D    and         edx,80000001
>004CE583    jns         004CE58A
 004CE585    dec         edx
 004CE586    or          edx,0FFFFFFFE
 004CE589    inc         edx
 004CE58A    cmp         eax,edx
>004CE58C    jne         004CE59E
 004CE58E    mov         eax,dword ptr [ebp-4]
 004CE591    push        eax
 004CE592    mov         ecx,esi
 004CE594    mov         edx,ebx
 004CE596    mov         eax,dword ptr [ebp-0C]
 004CE599    mov         edi,dword ptr [eax]
 004CE59B    call        dword ptr [edi+20]
 004CE59E    inc         ebx
 004CE59F    cmp         ebx,9
>004CE5A2    jne         004CE56D
 004CE5A4    inc         esi
 004CE5A5    cmp         esi,9
>004CE5A8    jne         004CE56B
 004CE5AA    mov         eax,dword ptr [ebp-8]
 004CE5AD    call        TBitmap.Dormant
 004CE5B2    xor         eax,eax
 004CE5B4    pop         edx
 004CE5B5    pop         ecx
 004CE5B6    pop         ecx
 004CE5B7    mov         dword ptr fs:[eax],edx
>004CE5BA    jmp         004CE5D3
>004CE5BC    jmp         @HandleAnyException
 004CE5C1    mov         eax,dword ptr [ebp-8]
 004CE5C4    call        TObject.Free
 004CE5C9    call        @RaiseAgain
 004CE5CE    call        @DoneExcept
 004CE5D3    mov         eax,dword ptr [ebp-8]
 004CE5D6    pop         edi
 004CE5D7    pop         esi
 004CE5D8    pop         ebx
 004CE5D9    mov         esp,ebp
 004CE5DB    pop         ebp
 004CE5DC    ret
*}
end;

//004CE5E0
procedure TPatternManager.FreePatterns;
begin
{*
 004CE5E0    push        ebp
 004CE5E1    mov         ebp,esp
 004CE5E3    add         esp,0FFFFFFF4
 004CE5E6    push        ebx
 004CE5E7    push        esi
 004CE5E8    mov         dword ptr [ebp-4],eax
>004CE5EB    jmp         004CE64D
 004CE5ED    mov         dword ptr [ebp-8],ebx
 004CE5F0    mov         eax,dword ptr [ebp-8]
 004CE5F3    mov         dword ptr [ebp-0C],eax
 004CE5F6    mov         eax,dword ptr [ebp-4]
 004CE5F9    call        TPatternManager.Lock
 004CE5FE    xor         eax,eax
 004CE600    push        ebp
 004CE601    push        4CE62D
 004CE606    push        dword ptr fs:[eax]
 004CE609    mov         dword ptr fs:[eax],esp
 004CE60C    mov         eax,dword ptr [ebp-0C]
 004CE60F    mov         eax,dword ptr [eax]
 004CE611    mov         edx,dword ptr [ebp-4]
 004CE614    mov         dword ptr [edx+4],eax
 004CE617    xor         eax,eax
 004CE619    pop         edx
 004CE61A    pop         ecx
 004CE61B    pop         ecx
 004CE61C    mov         dword ptr fs:[eax],edx
 004CE61F    push        4CE634
 004CE624    mov         eax,dword ptr [ebp-4]
 004CE627    call        TPatternManager.Unlock
 004CE62C    ret
>004CE62D    jmp         @HandleFinally
>004CE632    jmp         004CE624
 004CE634    mov         eax,dword ptr [ebp-0C]
 004CE637    mov         esi,dword ptr [eax+4]
 004CE63A    test        esi,esi
>004CE63C    je          004CE645
 004CE63E    mov         eax,esi
 004CE640    call        TObject.Free
 004CE645    mov         eax,dword ptr [ebp-8]
 004CE648    call        @FreeMem
 004CE64D    mov         eax,dword ptr [ebp-4]
 004CE650    mov         ebx,dword ptr [eax+4]
 004CE653    test        ebx,ebx
>004CE655    jne         004CE5ED
 004CE657    pop         esi
 004CE658    pop         ebx
 004CE659    mov         esp,ebp
 004CE65B    pop         ebp
 004CE65C    ret
*}
end;

//004CE660
function AllocPatternBitmap(BkColor:UITypes.TColor; FgColor:UITypes.TColor):TBitmap;
begin
{*
 004CE660    push        ebx
 004CE661    push        esi
 004CE662    mov         esi,edx
 004CE664    mov         ebx,eax
 004CE666    cmp         dword ptr ds:[7CA4A8],0;gvar_007CA4A8
>004CE66D    je          004CE691
 004CE66F    mov         eax,esi
 004CE671    call        ColorToRGB
 004CE676    push        eax
 004CE677    mov         eax,ebx
 004CE679    call        ColorToRGB
 004CE67E    mov         edx,eax
 004CE680    mov         eax,[007CA4A8];gvar_007CA4A8
 004CE685    pop         ecx
 004CE686    call        TPatternManager.AllocPattern
 004CE68B    mov         eax,dword ptr [eax+4]
 004CE68E    pop         esi
 004CE68F    pop         ebx
 004CE690    ret
 004CE691    xor         eax,eax
 004CE693    pop         esi
 004CE694    pop         ebx
 004CE695    ret
*}
end;

//004CE698
function TTextFormatFlags.&op_Implicit:Cardinal;
begin
{*
 004CE698    push        esi
 004CE699    push        ecx
 004CE69A    mov         dword ptr [esp],eax
 004CE69D    xor         esi,esi
 004CE69F    xor         eax,eax
 004CE6A1    mov         edx,7A1090
 004CE6A6    mov         ecx,eax
 004CE6A8    cmp         cl,1F
>004CE6AB    ja          004CE6B4
 004CE6AD    and         ecx,7F
 004CE6B0    bt          dword ptr [esp],ecx
>004CE6B4    jae         004CE6B8
 004CE6B6    or          esi,dword ptr [edx]
 004CE6B8    inc         eax
 004CE6B9    add         edx,4
 004CE6BC    cmp         al,18
>004CE6BE    jne         004CE6A6
 004CE6C0    mov         eax,esi
 004CE6C2    pop         edx
 004CE6C3    pop         esi
 004CE6C4    ret
*}
end;

//004CE6C8
function TTextFormatFlags.&op_Implicit:TTextFormatFlags;
begin
{*
 004CE6C8    add         esp,0FFFFFFF8
 004CE6CB    mov         dword ptr [esp],eax
 004CE6CE    mov         eax,dword ptr [esp]
 004CE6D1    mov         dword ptr [esp+4],eax
 004CE6D5    mov         eax,dword ptr [esp+4]
 004CE6D9    pop         ecx
 004CE6DA    pop         edx
 004CE6DB    ret
*}
end;

//004CE6DC
function TTextFormatFlags.&op_Implicit:TTextFormat;
begin
{*
 004CE6DC    push        ecx
 004CE6DD    mov         dword ptr [esp],eax
 004CE6E0    mov         eax,dword ptr [esp]
 004CE6E3    pop         edx
 004CE6E4    ret
*}
end;

//004CE6E8
function TTextFormatFlags.&op_Implicit:TTextFormatFlags;
begin
{*
 004CE6E8    push        ebx
 004CE6E9    push        esi
 004CE6EA    push        edi
 004CE6EB    push        ecx
 004CE6EC    mov         ebx,eax
 004CE6EE    mov         edi,esp
 004CE6F0    mov         eax,[004CE8AC]
 004CE6F5    mov         dword ptr [edi],eax
 004CE6F7    mov         eax,8
 004CE6FC    and         eax,ebx
 004CE6FE    cmp         eax,8
>004CE701    jne         004CE706
 004CE703    or          dword ptr [edi],1
 004CE706    mov         eax,400
 004CE70B    and         eax,ebx
 004CE70D    cmp         eax,400
>004CE712    jne         004CE717
 004CE714    or          dword ptr [edi],2
 004CE717    mov         eax,1
 004CE71C    and         eax,ebx
 004CE71E    cmp         eax,1
>004CE721    jne         004CE726
 004CE723    or          dword ptr [edi],4
 004CE726    mov         eax,2000
 004CE72B    and         eax,ebx
 004CE72D    cmp         eax,2000
>004CE732    jne         004CE737
 004CE734    or          dword ptr [edi],8
 004CE737    mov         eax,8000
 004CE73C    and         eax,ebx
 004CE73E    cmp         eax,8000
>004CE743    jne         004CE748
 004CE745    or          dword ptr [edi],10
 004CE748    mov         eax,4000
 004CE74D    and         eax,ebx
 004CE74F    cmp         eax,4000
>004CE754    jne         004CE759
 004CE756    or          dword ptr [edi],20
 004CE759    mov         eax,40
 004CE75E    and         eax,ebx
 004CE760    cmp         eax,40
>004CE763    jne         004CE768
 004CE765    or          dword ptr [edi],40
 004CE768    mov         eax,200
 004CE76D    and         eax,ebx
 004CE76F    cmp         eax,200
>004CE774    jne         004CE77C
 004CE776    or          dword ptr [edi],80
 004CE77C    xor         esi,esi
 004CE77E    and         esi,ebx
 004CE780    test        esi,esi
>004CE782    jne         004CE78A
 004CE784    or          dword ptr [edi],100
 004CE78A    mov         eax,10000
 004CE78F    and         eax,ebx
 004CE791    cmp         eax,10000
>004CE796    jne         004CE79E
 004CE798    or          dword ptr [edi],200
 004CE79E    mov         eax,100
 004CE7A3    and         eax,ebx
 004CE7A5    cmp         eax,100
>004CE7AA    jne         004CE7B2
 004CE7AC    or          dword ptr [edi],400
 004CE7B2    mov         eax,800
 004CE7B7    and         eax,ebx
 004CE7B9    cmp         eax,800
>004CE7BE    jne         004CE7C6
 004CE7C0    or          dword ptr [edi],800
 004CE7C6    mov         eax,2
 004CE7CB    and         eax,ebx
 004CE7CD    cmp         eax,2
>004CE7D0    jne         004CE7D8
 004CE7D2    or          dword ptr [edi],1000
 004CE7D8    mov         eax,20000
 004CE7DD    and         eax,ebx
 004CE7DF    cmp         eax,20000
>004CE7E4    jne         004CE7EC
 004CE7E6    or          dword ptr [edi],2000
 004CE7EC    mov         eax,20
 004CE7F1    and         eax,ebx
 004CE7F3    cmp         eax,20
>004CE7F6    jne         004CE7FE
 004CE7F8    or          dword ptr [edi],4000
 004CE7FE    test        esi,esi
>004CE800    jne         004CE808
 004CE802    or          dword ptr [edi],8000
 004CE808    mov         eax,4
 004CE80D    and         eax,ebx
 004CE80F    cmp         eax,4
>004CE812    jne         004CE81A
 004CE814    or          dword ptr [edi],10000
 004CE81A    mov         eax,10
 004CE81F    and         eax,ebx
 004CE821    cmp         eax,10
>004CE824    jne         004CE82C
 004CE826    or          dword ptr [edi],20000
 004CE82C    mov         eax,100000
 004CE831    and         eax,ebx
 004CE833    cmp         eax,100000
>004CE838    jne         004CE840
 004CE83A    or          dword ptr [edi],40000
 004CE840    mov         eax,80000
 004CE845    and         eax,ebx
 004CE847    cmp         eax,80000
>004CE84C    jne         004CE854
 004CE84E    or          dword ptr [edi],80000
 004CE854    mov         eax,200000
 004CE859    and         eax,ebx
 004CE85B    cmp         eax,200000
>004CE860    jne         004CE868
 004CE862    or          dword ptr [edi],100000
 004CE868    mov         eax,80
 004CE86D    and         eax,ebx
 004CE86F    cmp         eax,80
>004CE874    jne         004CE87C
 004CE876    or          dword ptr [edi],200000
 004CE87C    mov         eax,40000
 004CE881    and         eax,ebx
 004CE883    cmp         eax,40000
>004CE888    jne         004CE890
 004CE88A    or          dword ptr [edi],400000
 004CE890    and         ebx,800000;gvar_00800000
 004CE896    cmp         ebx,800000;gvar_00800000
>004CE89C    jne         004CE8A4
 004CE89E    or          dword ptr [edi],800000;gvar_00800000
 004CE8A4    mov         eax,dword ptr [edi]
 004CE8A6    pop         edx
 004CE8A7    pop         edi
 004CE8A8    pop         esi
 004CE8A9    pop         ebx
 004CE8AA    ret
*}
end;

Initialization
//0079CD18
{*
 0079CD18    sub         dword ptr ds:[7CA450],1
>0079CD1F    jae         0079CE1E
 0079CD25    call        InitScreenLogPixels
 0079CD2A    push        7CA468;gvar_007CA468
 0079CD2F    call        kernel32.InitializeCriticalSection
 0079CD34    push        7CA480;gvar_007CA480
 0079CD39    call        kernel32.InitializeCriticalSection
 0079CD3E    push        7
 0079CD40    call        gdi32.GetStockObject
 0079CD45    mov         [007CA458],eax
 0079CD4A    push        5
 0079CD4C    call        gdi32.GetStockObject
 0079CD51    mov         [007CA45C],eax
 0079CD56    push        0D
 0079CD58    call        gdi32.GetStockObject
 0079CD5D    mov         [007CA460],eax
 0079CD62    push        7F00
 0079CD67    push        0
 0079CD69    call        user32.LoadIconW
 0079CD6E    mov         [007CA464],eax
 0079CD73    call        InitDefFontData
 0079CD78    mov         cx,90
 0079CD7C    mov         dl,1
 0079CD7E    mov         eax,[004C30A4];TResourceManager
 0079CD83    call        TResourceManager.Create
 0079CD88    mov         [007CA498],eax;gvar_007CA498
 0079CD8D    mov         cx,10
 0079CD91    mov         dl,1
 0079CD93    mov         eax,[004C30A4];TResourceManager
 0079CD98    call        TResourceManager.Create
 0079CD9D    mov         [007CA49C],eax;gvar_007CA49C
 0079CDA2    mov         cx,10
 0079CDA6    mov         dl,1
 0079CDA8    mov         eax,[004C33AC];TBrushResourceManager
 0079CDAD    call        TResourceManager.Create
 0079CDB2    mov         [007CA4A0],eax;gvar_007CA4A0
 0079CDB7    mov         dl,1
 0079CDB9    mov         eax,[004CE198];TPatternManager
 0079CDBE    call        TPatternManager.Create
 0079CDC3    mov         [007CA4A8],eax;gvar_007CA4A8
 0079CDC8    mov         dl,1
 0079CDCA    mov         eax,[0046C9C0];TThreadList
 0079CDCF    call        TThreadList.Create
 0079CDD4    mov         [007A1040],eax;gvar_007A1040
 0079CDD9    mov         dl,1
 0079CDDB    mov         eax,[0046C9C0];TThreadList
 0079CDE0    call        TThreadList.Create
 0079CDE5    mov         [007CA4A4],eax;gvar_007CA4A4
 0079CDEA    call        RegisterColorIntegerConsts
 0079CDEF    mov         eax,[007C4948];TColorRec.ColorToRGB:function(val Color:TColor):System.LongInt
 0079CDF4    mov         dword ptr [eax],4C3928;ColorToRGB:LongInt
 0079CDFA    call        RegisterAlphaColorIntegerConsts
 0079CDFF    mov         ecx,4C3C78;CharsetToIdent:Boolean
 0079CE04    mov         edx,4C3C88;IdentToCharset:Boolean
 0079CE09    mov         eax,[0040F12C];TFontCharset
 0079CE0E    call        RegisterIntegerConsts
 0079CE13    mov         eax,[007C4948];TColorRec.ColorToRGB:function(val Color:TColor):System.LongInt
 0079CE18    mov         dword ptr [eax],4C3928;ColorToRGB:LongInt
 0079CE1E    ret
*}
Finalization
//004CE8B0
{*
 004CE8B0    inc         dword ptr ds:[7CA450]
>004CE8B6    jne         004CE92C
 004CE8B8    mov         eax,[007CA4A8];gvar_007CA4A8
 004CE8BD    call        TObject.Free
 004CE8C2    mov         eax,[007A103C];0x0 gvar_007A103C
 004CE8C7    call        TObject.Free
 004CE8CC    mov         eax,[007A1038];0x0 gvar_007A1038
 004CE8D1    call        TObject.Free
 004CE8D6    call        004C9934
 004CE8DB    mov         eax,[007A1040];0x0 gvar_007A1040
 004CE8E0    call        TObject.Free
 004CE8E5    mov         eax,[007CA4A4];gvar_007CA4A4
 004CE8EA    call        TObject.Free
 004CE8EF    mov         eax,[007CA498];gvar_007CA498
 004CE8F4    call        TObject.Free
 004CE8F9    mov         eax,[007CA49C];gvar_007CA49C
 004CE8FE    call        TObject.Free
 004CE903    mov         eax,[007CA4A0];gvar_007CA4A0
 004CE908    call        TObject.Free
 004CE90D    mov         eax,[007CA44C];gvar_007CA44C
 004CE912    push        eax
 004CE913    call        gdi32.DeleteObject
 004CE918    push        7CA468;gvar_007CA468
 004CE91D    call        kernel32.DeleteCriticalSection
 004CE922    push        7CA480;gvar_007CA480
 004CE927    call        kernel32.DeleteCriticalSection
 004CE92C    ret
*}
end.