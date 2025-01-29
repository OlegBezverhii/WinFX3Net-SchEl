//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit19;

interface

uses
  SysUtils, Classes, System.TypInfo, System.Classes, System, System.Classes, System.Generics.Collections, System.SysUtils, Vcl.ExtCtrls, Xml.XMLDoc, FXCalErrFrm, uHaspKey, FXLicFileU, FXStartUp, FXConfigData;

type
  TPropSet<System.IInterface> = class(TObject)
  published
    procedure IInterface>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:IInterface);//0046B208
    function IInterface>.GetProc(Instance:TObject; PropInfo:PPropInfo):IInterface;//0046B180
  end;
  TSeekOrigin = (soBeginning, soCurrent, soEnd);
  TAlignment = (taLeftJustify, taRightJustify, taCenter);
  TLeftRight = (taLeftJustify, taRightJustify);
  TBiDiMode = (bdLeftToRight, bdRightToLeft, bdRightToLeftNoAlign, bdRightToLeftReadingOnly);
  TVerticalAlignment = (taAlignTop, taAlignBottom, taVerticalCenter);
  :1 = (ssShift, ssAlt, ssCtrl, ssLeft, ssRight, ssMiddle, ssDouble, ssTouch, ssPen, ssCommand, ssHorizontal);
  TShiftState = set of :1;
  THelpType = (htKeyword, htContext);
  TNotifyEvent = procedure(Sender:TObject) of object;;
  EStreamError = class(Exception)
  end;
  EFileStreamError = class(EStreamError)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  end;
  EFCreateError = class(EFileStreamError)
  end;
  EFOpenError = class(EFileStreamError)
  end;
  EFilerError = class(EStreamError)
  end;
  EReadError = class(EFilerError)
  end;
  EWriteError = class(EFilerError)
  end;
  EClassNotFound = class(EFilerError)
  end;
  EResNotFound = class(Exception)
  end;
  EBitsError = class(Exception)
  end;
  EStringListError = class(Exception)
  end;
  EComponentError = class(Exception)
  end;
  EOutOfResources = class(EOutOfMemory)
  end;
  EInvalidOperation = class(Exception)
  end;
  TPointerList = array of Pointer;
//elSize = 4;
  TListAssignOp = (laCopy, laAnd, laOr, laXor, laSrcUnique, laDestUnique);
  TListEnumerator = class(TObject)
  published
    function GetCurrent:Pointer;//0048D5A4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FIndex:Integer;//f4
    FList:TList;//f8
  end;
  TList = class(TObject)
  published
    function Last:Pointer;//0048D87C
    procedure Move(CurIndex:Integer; NewIndex:Integer);//0048D8A0
    function IndexOfItem(Item:Pointer; Direction:TDirection):Integer;//0048D7D0
    procedure Insert(Index:Integer; Item:Pointer);//0048D804
    function RemoveItem(Item:Pointer; Direction:TDirection):Integer;//0048D958
    function Get(Index:Integer):Pointer;//0048D754
    procedure Put(Index:Integer; Item:Pointer);//0048D8F8
    procedure Sort(Compare:TListSortCompare);//0048DCC0
    procedure Assign(ListA:TList; AOperator:TListAssignOp; ListB:TList);//0048DD90
    function IndexOf(Item:Pointer):Integer;//0048D7AC
    procedure Clear;//0048D610
    procedure Delete(Index:Integer);//0048D628
    destructor Destroy();//0048D5B0
    function Add(Item:Pointer):Integer;//0048D5D0
    procedure Error(Msg:string; Data:NativeInt);//0048D690
    function Expand:TList;//0048D73C
    function ExtractItem(Item:Pointer; Direction:TDirection):Pointer;//0048DD3C
    procedure Error(Msg:PResStringRec; Data:NativeInt);//0048D6C8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FList:TPointerList;//f4
    FCount:Integer;//f8
    FCapacity:Integer;//fC
    destructor Destroy(); virtual;//0048D5B0
    procedure Grow; virtual;//v0//0048D778
    procedure Notify(Ptr:Pointer; Action:TListNotification); virtual;//v4//0048DD8C
    procedure Clear; virtual;//v8//0048D610
    procedure Error(Msg:string; Data:NativeInt); virtual;//vC//0048D690
  end;
  TThreadList = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function LockList:TList;//0048E200
    procedure UnlockList;//0048E27C
    procedure RemoveItem(Item:Pointer; Direction:TDirection);//0048E228
    destructor Destroy();//0048E0B4
    constructor Create();//0048E05C
    procedure Clear;//0048E1B8
    procedure Add(Item:Pointer);//0048E130
  public
    FList:TList;//f4
    FLock:TObject;//f8
    FDuplicates:TDuplicates;//fC
  end;
  TInterfaceListEnumerator = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function GetCurrent:IInterface;//0048E2CC
    constructor Create;//0048E288
  public
    FIndex:Integer;//f4
    FInterfaceList:TInterfaceList;//f8
  end;
  TInterfaceList = class(TInterfacedObject)
  published
    function Remove(Item:IInterface):Integer;//0048E868
    function RemoveItem(Item:IInterface; Direction:TDirection):Integer;//0048E870
    procedure Insert(Index:Integer; Item:IInterface);//0048E6DC
    //procedure Last(?:?);//0048E758
    procedure Lock;//0048EA40
    function Get(Index:Integer):IInterface;//0048E45C
    procedure Put(Index:Integer; Item:IInterface);//0048E7B4
    procedure Unlock;//0048EA4C
    function GetEnumerator:TInterfaceListEnumerator;//0048E5C8
    function Add(Item:IInterface):Integer;//0048E65C
    procedure Clear;//0048E36C
    procedure Delete(Index:Integer);//0048E3E0
    constructor Create();//0048E2E4
    destructor Destroy();//0048E328
    procedure Exchange(Index1:Integer; Index2:Integer);//0048E9DC
    function IndexOf(Item:IInterface):Integer;//0048E5D8
    function IndexOfItem(Item:IInterface; Direction:TDirection):Integer;//0048E5E0
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function First:IInterface;//0048E448
  public
    .............FList:TThreadList<System.IInterface>;//fC
  end;
  TBits = class(TObject)
  published
    function GetBit(Index:Integer):Boolean;//0048EBB4
    procedure SetBit(Index:Integer; Value:Boolean);//0048EB88
    destructor Destroy();//0048EA58
    function OpenBit:Integer;//0048EBCC
  public
    FSize:Integer;//f4
    FBits:Pointer;//f8
  end;
  TPersistent = class(TObject)
  published
    procedure GetNamePath;//0048ED4C
    destructor Destroy();//0048EC44
    procedure Assign(Source:TPersistent);//0048EC70
  public
    procedure AssignTo(Dest:TPersistent); virtual;//v0//0048ED40
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0048ED48
    procedure Assign(Source:TPersistent); virtual;//v8//0048EC70
    procedure GetNamePath; dynamic;//0048ED4C
    procedure sub_0048EDE4; dynamic;//0048EDE4
  end;
  TInterfacedPersistent = class(TPersistent)
  published
    procedure AfterConstruction;//0048EDE8
    //function QueryInterface(IID:TGUID; Obj:?):HRESULT; stdcall;//0048EE78
  public
    FOwnerInterface:IInterface;//f4
    procedure AfterConstruction; virtual;//0048EDE8
    //function QueryInterface(IID:TGUID; Obj:?):HRESULT; virtual; stdcall;//vC//0048EE78
  end;
  TCollectionItem = class(TPersistent)
  published
    procedure GetNamePath;//0048F0C4
    constructor Create;//0048EFF0
    destructor Destroy();//0048F028
    procedure Release;//0048F05C
  public
    FCollection:TCollection;//f4
    FID:Integer;//f8
    destructor Destroy(); virtual;//0048F028
    function GetDisplayName:UnicodeString; virtual;//vC//0048F0B0
    procedure SetCollection(Value:TCollection); virtual;//v10//0048F174
    //procedure v14(?:?); virtual;//v14//0048F1A4
    procedure SetDisplayName(const Value:UnicodeString); virtual;//v18//0048F19C
    constructor Create; virtual;//v1C//0048EFF0
    procedure Release; virtual;//v20//0048F05C
    procedure GetNamePath; dynamic;//0048F0C4
    procedure sub_0048EDE4; dynamic;//0048F170
  end;
  TCollectionEnumerator = class(TObject)
  published
    procedure GetCurrent;//0048F1D8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FIndex:Integer;//f4
    FCollection:TCollection;//f8
  end;
  TCollection = class(TPersistent)
  published
    function FindItemID(ID:Integer):TCollectionItem;//0048F3F0
    procedure EndUpdate;//0048F3E4
    function GetItem(Index:Integer):TCollectionItem;//0048F480
    procedure GetNamePath;//0048F49C
    function Owner:TPersistent;//0048F7DC
    function Add:TCollectionItem;//0048F27C
    destructor Destroy();//0048F230
    constructor Create;//0048F1E4
    procedure Clear;//0048F378
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure Assign(Source:TPersistent);//0048F29C
    procedure BeginUpdate;//0048F364
  public
    FItemClass:TCollectionItemClass;//f4
    FItems:TList<System.Classes.TCollectionItem>;//f8
    FUpdateCount:Integer;//fC
    FNextID:Integer;//f10
    FPropName:string;//f14
    destructor Destroy(); virtual;//0048F230
    procedure Assign(Source:TPersistent); virtual;//v8//0048F29C
    procedure vC; virtual;//vC//0048F7E8
    procedure v10; virtual;//v10//0048F7EC
    procedure Notify(Item:TCollectionItem; Action:TCollectionNotification); virtual;//v14//0048F7F0
    procedure v18; virtual;//v18//0048F7D4
    procedure v1C; virtual;//v1C//0048F7D8
    procedure BeginUpdate; virtual;//v20//0048F364
    procedure EndUpdate; virtual;//v24//0048F3E4
    procedure GetItemAttr(Index:Integer; ItemIndex:Integer); dynamic;//0048F458
    procedure GetAttr(Index:Integer); dynamic;//0048F434
    procedure sub_0048F430; dynamic;//0048F430
    procedure GetNamePath; dynamic;//0048F49C
  end;
  TOwnedCollection = class(TCollection)
  published
    constructor Create(ItemClass:TCollectionItemClass);//0048F814
  public
    .FOwner:TPersistent;//f18
    procedure sub_0048EDE4; dynamic;//0048F858
  end;
  :23 = (sdDelimiter, sdQuoteChar, sdNameValueSeparator, sdLineBreak, sdStrictDelimiter);
  TStringsDefined = set of :23;
  TStringsEnumerator = class(TObject)
  published
    function MoveNext:Boolean;//0048F8B8
    function GetCurrent:string;//0048F8A0
    constructor Create;//0048F85C
  public
    FIndex:Integer;//f4
    FStrings:TStrings;//f8
  end;
  TStrings = class(TPersistent)
  published
    procedure Move(CurIndex:Integer; NewIndex:Integer);//004907B0
    procedure LoadFromStream(Stream:TStream; Encoding:TEncoding);//004906A8
    procedure SaveToFile(FileName:string; Encoding:TEncoding);//00490974
    procedure SaveToFile(FileName:string);//00490958
    procedure LoadFromFile(FileName:string);//004905E0
    procedure InsertObject(Index:Integer; S:string; AObject:TObject);//004905B0
    procedure LoadFromStream(Stream:TStream);//00490690
    procedure LoadFromFile(FileName:string; Encoding:TEncoding);//00490634
    //procedure GetValue(Name:string; ?:?);//00490390
    procedure PutObject(Index:Integer; AObject:TObject);//004908A4
    procedure Put(Index:Integer; S:string);//00490870
    procedure SetValue(Name:string; Value:string);//00490D7C
    procedure SaveToStream(Stream:TStream; Encoding:TEncoding);//004909F4
    procedure SaveToStream(Stream:TStream);//004909D8
    function GetObject(Index:Integer):TObject;//004901FC
    procedure SetText(Text:PWideChar);//00490B90
    procedure AddStrings(Strings:TStrings);//0048F9E8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure BeginUpdate;//0048FB7C
    procedure Assign(Source:TPersistent);//0048FAA0
    destructor Destroy();//0048F91C
    constructor Create();//0048F8D4
    function AddObject(S:string; AObject:TObject):Integer;//0048F9C4
    function Add(S:string):Integer;//0048F9A0
    function IndexOf(S:string):Integer;//0049041C
    function GetText:PWideChar;//00490200
    function IndexOfObject(AObject:TObject):Integer;//0049057C
    function IndexOfName(Name:string):Integer;//004904A8
    function Equals(Strings:TStrings):Boolean;//0048FC50
    procedure EndUpdate;//0048FC3C
    function GetEnumerator:TStringsEnumerator;//004901EC
    procedure Exchange(Index1:Integer; Index2:Integer);//0048FDC4
  public
    FEncoding:TEncoding;//f4
    FDefined:TStringsDefined;//f8
    FDefaultEncoding:TEncoding;//fC
    FDelimiter:Char;//f10
    FLineBreak:string;//f14
    FQuoteChar:Char;//f18
    FNameValueSeparator:Char;//f1A
    FStrictDelimiter:Boolean;//f1C
    FUpdateCount:Integer;//f20
    FAdapter:IStringsAdapter;//f24
    FWriteBOM:Boolean;//f28
    destructor Destroy(); virtual;//0048F91C
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0048FBE4
    procedure Assign(Source:TPersistent); virtual;//v8//0048FAA0
    procedure Get; virtual; abstract;//vC//00405554
    procedure v10; virtual;//v10//0048FEB0
    procedure GetCount; virtual; abstract;//v14//00405554
    function GetObject(Index:Integer):TObject; virtual;//v18//004901FC
    function GetTextStr:UnicodeString; virtual;//v1C//00490254
    procedure Put(Index:Integer; S:string); virtual;//v20//00490870
    procedure PutObject(Index:Integer; AObject:TObject); virtual;//v24//004908A4
    procedure v28; virtual;//v28//00490AC0
    procedure SetEncoding(const Value:SysUtils.TEncoding); virtual;//v2C//00491158
    procedure SetTextStr(const Value:UnicodeString); virtual;//v30//00490BE0
    procedure v34; virtual;//v34//00490D78
    function CompareStrings(const S1:UnicodeString; const S2:UnicodeString):Integer; virtual;//v38//00491208
    function Add(S:string):Integer; virtual;//v3C//0048F9A0
    function AddObject(S:string; AObject:TObject):Integer; virtual;//v40//0048F9C4
    procedure AddStrings(Strings:TStrings); virtual;//v44//0048F9E8
    procedure Clear; virtual; abstract;//v48//00405554
    procedure Delete; virtual; abstract;//v4C//00405554
    procedure Exchange(Index1:Integer; Index2:Integer); virtual;//v50//0048FDC4
    function GetText:PWideChar; virtual;//v54//00490200
    function IndexOf(S:string):Integer; virtual;//v58//0049041C
    function IndexOfName(Name:string):Integer; virtual;//v5C//004904A8
    function IndexOfObject(AObject:TObject):Integer; virtual;//v60//0049057C
    procedure Insert; virtual; abstract;//v64//00405554
    procedure InsertObject(Index:Integer; S:string; AObject:TObject); virtual;//v68//004905B0
    procedure LoadFromFile(FileName:string); virtual;//v6C//004905E0
    procedure LoadFromFile(FileName:string; Encoding:TEncoding); virtual;//v70//00490634
    procedure LoadFromStream(Stream:TStream); virtual;//v74//00490690
    procedure LoadFromStream(Stream:TStream; Encoding:TEncoding); virtual;//v78//004906A8
    procedure Move(CurIndex:Integer; NewIndex:Integer); virtual;//v7C//004907B0
    procedure SaveToFile(FileName:string); virtual;//v80//00490958
    procedure SaveToFile(FileName:string; Encoding:TEncoding); virtual;//v84//00490974
    procedure SaveToStream(Stream:TStream); virtual;//v88//004909D8
    procedure SaveToStream(Stream:TStream; Encoding:TEncoding); virtual;//v8C//004909F4
    procedure SetText(Text:PWideChar); virtual;//v90//00490B90
  end;
  TStringItem = TStringItem = record//size=8
f0:string;//f0
end;
FString:string;//f0
FObject:TObject;//f4
end;;
  TStringItemList = array of TStringItem;
//elSize = 8;
  TStringList = class(TStrings)
  published
    function IndexOf(S:string):Integer;//0049174C
    function Find(S:string; var Index:Integer):Boolean;//00491638
    procedure Exchange(Index1:Integer; Index2:Integer);//004915B8
    procedure Insert(Index:Integer; S:string);//00491788
    procedure CustomSort(Compare:TStringListSortCompare);//00491A38
    procedure Sort;//00491A28
    procedure InsertObject(Index:Integer; S:string; AObject:TObject);//00491798
    procedure Delete(Index:Integer);//00491510
    destructor Destroy();//00491250
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Create();//00491A8C
    function Add(S:string):Integer;//0049134C
    procedure Clear;//00491430
    procedure Assign(Source:TPersistent);//004913BC
    function AddObject(S:string; AObject:TObject):Integer;//00491358
  public
    FList:TStringItemList;//f2C
    FCount:Integer;//f30
    FCapacity:Integer;//f34
    FSorted:Boolean;//f38
    FDuplicates:TDuplicates;//f39
    FCaseSensitive:Boolean;//f3A
    FOnChange:TNotifyEvent;//f40
    f44:TCustomRadioGroup;//f44
    FOnChanging:TNotifyEvent;//f48
    f4C:TXMLDocument;//f4C
    FOwnsObject:Boolean;//f50
    destructor Destroy(); virtual;//00491250
    procedure Assign(Source:TPersistent); virtual;//v8//004913BC
    function Get(Index:Integer):UnicodeString; virtual;//vC//004916BC
    //function v10:?; virtual;//v10//004916EC
    //function GetCount:?; virtual;//v14//004916F0
    function GetObject(Index:Integer):TObject; virtual;//v18//004916F4
    procedure Put(Index:Integer; const S:UnicodeString); virtual;//v20//00491874
    procedure PutObject(Index:Integer; AObject:TObject); virtual;//v24//004918CC
    procedure SetCapacity(NewCapacity:Integer); virtual;//v28//004919A0
    //procedure v34(?:?); virtual;//v34//004919FC
    function CompareStrings(const S1:UnicodeString; const S2:UnicodeString):Integer; virtual;//v38//00491A70
    function Add(S:string):Integer; virtual;//v3C//0049134C
    function AddObject(S:string; AObject:TObject):Integer; virtual;//v40//00491358
    procedure Clear; virtual;//v48//00491430
    procedure Delete(Index:Integer); virtual;//v4C//00491510
    procedure Exchange(Index1:Integer; Index2:Integer); virtual;//v50//004915B8
    function IndexOf(S:string):Integer; virtual;//v58//0049174C
    procedure Insert(Index:Integer; S:string); virtual;//v64//00491788
    procedure InsertObject(Index:Integer; S:string; AObject:TObject); virtual;//v68//00491798
    procedure Changed; virtual;//v94//004913F8
    procedure Changing; virtual;//v98//00491414
    procedure InsertItem(Index:Integer; const S:UnicodeString; AObject:TObject); virtual;//v9C//004917EC
    function Find(S:string; var Index:Integer):Boolean; virtual;//vA0//00491638
    procedure Sort; virtual;//vA4//00491A28
    procedure CustomSort(Compare:TStringListSortCompare); virtual;//vA8//00491A38
  end;
  TStream = class(TObject)
  published
    procedure WriteBuffer(Buffer:TArray<System.Byte>; Count:Integer);//00491F64
    procedure WriteBuffer(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);//00491F70
    procedure ReadBuffer(var Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);//00491DDC
    //procedure WriteBuffer(Buffer:?; Count:Integer);//00491EE8
    procedure WriteComponent(Instance:TComponent);//00492190
    procedure WriteDescendent(Instance:TComponent; Ancestor:TComponent);//00492198
    function CopyFrom(Source:TStream; Count:Int64):Int64;//00491FFC
    function ReadComponent(Instance:TComponent):TComponent;//00492130
    procedure ReadBuffer(var Buffer:TArray<System.Byte>; Count:Integer);//00491DD0
    function Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//00491D58
    procedure Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);//00491DBC
    //function Read(var Buffer:?; Count:Integer):Integer;//00491D50
    //function Write(Buffer:?; Count:Integer):Integer;//00491D54
    function Seek(Origin:TSeekOrigin; Offset:Int64):Int64;//00491CE0
    //procedure ReadBuffer(var Buffer:?; Count:Integer);//00491E6C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Seek(Offset:Integer; Origin:Word):Integer;//00491C5C
  public
    procedure v0; virtual;//v0//00491B30
    procedure v4; virtual;//v4//00491B7C
    procedure SetSize(const NewSize:Int64); virtual;//v8//00491B94
    //function Read(var Buffer:?; Count:Integer):Integer; virtual;//vC//00491D50
    //function Write(Buffer:?; Count:Integer):Integer; virtual;//v10//00491D54
    function Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer; virtual;//v14//00491D58
    procedure Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer); virtual;//v18//00491DBC
    function Seek(Offset:Integer; Origin:Word):Integer; virtual;//v1C//00491C5C
    function Seek(Origin:TSeekOrigin; Offset:Int64):Int64; virtual;//v20//00491CE0
  end;
  THandleStream = class(TStream)
  published
    function Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//00492230
    function Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//004922BC
    function Seek(Origin:TSeekOrigin; Offset:Int64):Int64;//004922D8
    constructor Integer,System.Classes.IInterfaceList>.TKeyCollection.Create;//004921F4
    //function Read(var Buffer:?; Count:Integer):Integer;//0049229C
    //function Write(Buffer:?; Count:Integer):Integer;//004922AC
  public
    ..FHandle:NativeUInt;//f4
    procedure SetSize(NewSize:LongInt); virtual;//v4//00492304
    procedure SetSize(const NewSize:Int64); virtual;//v8//00492318
    //function Read(var Buffer:?; Count:Integer):Integer; virtual;//vC//0049229C
    //function Write(Buffer:?; Count:Integer):Integer; virtual;//v10//004922AC
    function Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer; virtual;//v14//00492230
    function Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer; virtual;//v18//004922BC
    function Seek(Origin:TSeekOrigin; Offset:Int64):Int64; virtual;//v20//004922D8
  end;
  TFileStream = class(THandleStream)
  published
    destructor Destroy();//00492500
    constructor sub_00492384(AFileName:string; Rights:Cardinal; Mode:Word);//00492384
    constructor Create(Mode:Word);//00492340
  public
    .FFileName:string;//f8
    destructor Destroy(); virtual;//00492500
  end;
  TCustomMemoryStream = class(TStream)
  published
    procedure SaveToStream(Stream:TStream);//00492648
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Seek(Origin:TSeekOrigin; Offset:Int64):Int64;//00492604
    //function Read(var Buffer:?; Count:Integer):Integer;//0049253C
    function Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//00492574
  public
    FMemory:Pointer;//f4
    FSize:NativeInt;//f8
    FPosition:NativeInt;//fC
    //function Read(var Buffer:?; Count:Integer):Integer; virtual;//vC//0049253C
    function Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer; virtual;//v14//00492574
    function Seek(Origin:TSeekOrigin; Offset:Int64):Int64; virtual;//v20//00492604
    procedure SaveToStream(Stream:TStream); virtual;//v24//00492648
  end;
  TMemoryStream = class(TCustomMemoryStream)
  published
    procedure SetSize(NewSize:Integer);//00492704
    //procedure SetSize(NewSize:Int64; ?:?);//00492718
    function Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//00492828
    //function Write(Buffer:?; Count:Integer):Integer;//004927D8
    procedure Clear;//0049268C
    destructor Destroy();//00492660
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure LoadFromStream(Stream:TStream);//004926A4
  public
    ..FCapacity:Integer;//f10
    procedure SetSize(NewSize:Integer); virtual;//v4//00492704
    //procedure SetSize(NewSize:Int64; ?:?); virtual;//v8//00492718
    //function Write(Buffer:?; Count:Integer):Integer; virtual;//v10//004927D8
    function Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer; virtual;//v18//00492828
    function Realloc(var NewCapacity:LongInt):Pointer; virtual;//v28//00492758
  end;
  TBytesStream = class(TMemoryStream)
  published
    constructor sub_0049288C(ABytes:TArray<System.Byte>);//0049288C
  public
    ....FBytes:TArray<System.Byte>;//f14
    function Realloc(var NewCapacity:LongInt):Pointer; virtual;//v28//0049290C
  end;
  TStringStream = class(TBytesStream)
  published
    destructor Destroy();//00492A54
    constructor Create;//00492978
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FEncoding:TEncoding;//f18
    FOwnsEncoding:Boolean;//f1C
    destructor Destroy(); virtual;//00492A54
  end;
  TResourceStream = class(TCustomMemoryStream)
  published
    //function Write(Buffer:?; Count:Integer):Integer;//00492C3C
    function Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer;//00492C54
    destructor Destroy();//00492C0C
    constructor Create(ResType:PWideChar; ResName:string);//00492AA8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    HResInfo:NativeUInt;//f10
    HGlobal:NativeUInt;//f14
    destructor Destroy(); virtual;//00492C0C
    //function Write(Buffer:?; Count:Integer):Integer; virtual;//v10//00492C3C
    function Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer):Integer; virtual;//v18//00492C54
  end;
  TStreamOwnership = (soReference, soOwned);
  TStreamAdapter = class(TInterfacedObject)
  published
    function LockRegion(libOffset:UInt64; cb:UInt64; dwLockType:Cardinal):HRESULT; stdcall;//004A0438
    function Revert:HRESULT; stdcall;//004A042C
    function Commit(grfCommitFlags:Cardinal):HRESULT; stdcall;//004A0420
    function Clone(stm:IStream):HRESULT; stdcall;//004A04BC
    function Stat(statstg:tagSTATSTG; grfStatFlag:Cardinal):HRESULT; stdcall;//004A0450
    function UnlockRegion(libOffset:UInt64; cb:UInt64; dwLockType:Cardinal):HRESULT; stdcall;//004A0444
    //function CopyTo(stm:IStream; cb:UInt64; ?:?; cbRead:UInt64; cbWritten:UInt64):HRESULT; stdcall;//004A0228
    function Read(pv:Pointer; cb:Cardinal; pcbRead:PFixedUInt):HRESULT; stdcall;//004A0020
    destructor Destroy();//0049FFE8
    constructor Create(Ownership:TStreamOwnership);//0049FF9C
    //function SetSize(libNewSize:UInt64; ?:?):HRESULT; stdcall;//004A0184
    //function Seek(dlibMove:Int64; ?:?; dwOrigin:Cardinal; libNewPosition:UInt64):HRESULT; stdcall;//004A00F0
    function Write(pv:Pointer; cb:Cardinal; pcbWritten:PFixedUInt):HRESULT; stdcall;//004A0088
  public
    FStream:TStream;//fC
    FOwnership:TStreamOwnership;//f10
    destructor Destroy(); virtual;//0049FFE8
    function Read(pv:Pointer; cb:Cardinal; pcbRead:PFixedUInt):HRESULT; virtual; stdcall;//v0//004A0020
    function Write(pv:Pointer; cb:Cardinal; pcbWritten:PFixedUInt):HRESULT; virtual; stdcall;//v4//004A0088
    //function Seek(dlibMove:Int64; ?:?; dwOrigin:Cardinal; libNewPosition:UInt64):HRESULT; virtual; stdcall;//v8//004A00F0
    //function SetSize(libNewSize:UInt64; ?:?):HRESULT; virtual; stdcall;//vC//004A0184
    //function CopyTo(stm:IStream; cb:UInt64; ?:?; cbRead:UInt64; cbWritten:UInt64):HRESULT; virtual; stdcall;//v10//004A0228
    function Commit(grfCommitFlags:Cardinal):HRESULT; virtual; stdcall;//v14//004A0420
    function Revert:HRESULT; virtual;//v18//004A042C
    function LockRegion(libOffset:UInt64; cb:UInt64; dwLockType:Cardinal):HRESULT; virtual; stdcall;//v1C//004A0438
    function UnlockRegion(libOffset:UInt64; cb:UInt64; dwLockType:Cardinal):HRESULT; virtual; stdcall;//v20//004A0444
    function Stat(statstg:tagSTATSTG; grfStatFlag:Cardinal):HRESULT; virtual; stdcall;//v24//004A0450
    function Clone(stm:IStream):HRESULT; virtual; stdcall;//v28//004A04BC
  end;
  TGetClass = procedure(AClass:TPersistentClass) of object;;
  TClassFinder = class(TObject)
  published
    function GetClass(AClassName:string):TPersistentClass;//004888E8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_00488768(AClass:TPersistentClass; AIncludeActiveGroups:Boolean);//00488768
    destructor Destroy();//004888BC
  public
    FGroups:TList<System.TObject>;//f4
    FClass:TPersistentClass;//f8
  end;
  TValueType = (vaNull, vaList, vaInt8, vaInt16, vaInt32, vaExtended, vaString, vaIdent, vaFalse, vaTrue, vaBinary, vaSet, vaLString, vaNil, vaCollection, vaSingle, vaCurrency, vaDate, vaWString, vaInt64, vaUTF8String, vaDouble);
  TFilerFlag = (ffInherited, ffChildPos, ffInline);
  TFilerFlags = set of TFilerFlag;
  TReaderProc = procedure(Reader:TReader) of object;;
  TWriterProc = procedure(Writer:TWriter) of object;;
  TStreamProc = procedure(Stream:TStream) of object;;
  TFiler = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    destructor Destroy();//00492CD8
    constructor Create(BufSize:Integer);//00492C74
  public
    FStream:TStream;//f4
    FBuffer:TArray<System.Byte>;//f8
    FBufSize:Integer;//fC
    FBufPos:Integer;//f10
    FBufEnd:Integer;//f14
    FRoot:TComponent;//f18
    FLookupRoot:TComponent;//f1C
    FAncestor:TPersistent;//f20
    FIgnoreChildren:Boolean;//f24
    destructor Destroy(); virtual;//00492CD8
    procedure SetRoot(Value:TComponent); virtual;//v0//00492D00
    procedure DefineProperty; virtual; abstract;//v4//00405554
    procedure DefineBinaryProperty; virtual; abstract;//v8//00405554
    procedure FlushBuffer; virtual; abstract;//vC//00405554
  end;
  TFindMethodEvent = procedure(Reader:TReader; const MethodName:string; var Address:Pointer; var Error:Boolean) of object;;
  TSetNameEvent = procedure(Reader:TReader; Component:TComponent; var Name:string) of object;;
  TReferenceNameEvent = procedure(Reader:TReader; var Name:string) of object;;
  TAncestorNotFoundEvent = procedure(Reader:TReader; const ComponentName:string; ComponentClass:TPersistentClass; var Component:TComponent) of object;;
  TReadComponentsProc = procedure(Component:TComponent) of object;;
  TReaderError = procedure(Reader:TReader; const Message:string; var Handled:Boolean) of object;;
  TFindComponentClassEvent = procedure(Reader:TReader; const ClassName:string; var ComponentClass:TComponentClass) of object;;
  TCreateComponentEvent = procedure(Reader:TReader; ComponentClass:TComponentClass; var Component:TComponent) of object;;
  TFindMethodInstanceEvent = procedure(Reader:TReader; const MethodName:string; var AMethod:TMethod; var Error:Boolean) of object;;
  TFindComponentInstanceEvent = procedure(Reader:TReader; const Name:string; var Instance:Pointer) of object;;
  TReader = class(TFiler)
  published
    function ReadInt64:Int64;//004962F4
    function ReadInteger:Integer;//00496288
    procedure ReadListEnd;//00496340
    procedure ReadListBegin;//00496338
    function ReadCurrency:Currency;//0049603C
    function ReadDouble:Double;//00495FB4
    function ReadIdent:string;//004960F0
    function ReadDate:TDateTime;//0049609C
    function ReadValue:TValueType;//0049734C
    function ReadString:string;//00497124
    procedure SkipValue;//00497488
    function ReadVariant:Variant;//00497AF4
    function ReadRootComponent(Root:TComponent):TComponent;//00496C30
    procedure ReadPrefix(var Flags:TFilerFlags; var AChildPos:Integer);//00496348
    function ReadStr:string;//0049706C
    procedure ReadSignature;//00497048
    function ReadSingle:Single;//00495FF8
    function EndOfList:Boolean;//00494FE8
    //procedure DefineBinaryProperty(Name:string; HasData:Boolean; WriteData:TStreamProc; ReadData:TStreamProc; ?:?; ?:?);//00494EE0
    function NextValue:TValueType;//004953EC
    procedure FlushBuffer;//004952D4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    destructor Destroy();//00494E1C
    //procedure DefineProperty(Name:string; HasData:Boolean; WriteData:TWriterProc; ReadData:TReaderProc; ?:?; ?:?);//00494E78
    procedure CheckValue(Value:TValueType);//00494E54
    procedure ReadCollection(Collection:TCollection);//004956B8
    function ReadChar:Char;//00495658
    function ReadFloat:Extended;//00495F7C
    function ReadComponent(Component:TComponent):TComponent;//00495BD8
    procedure Read(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);//00495464
    //procedure Read(var Buffer:?; Count:Integer);//00495410
    function ReadBoolean:Boolean;//0049562C
    procedure Read(Buffer:TArray<System.Byte>; Count:Integer);//00495500
  public
    FOwner:TComponent;//f28
    FParent:TComponent;//f2C
    FFixups:TList<System.TObject>;//f30
    FLoaded:TList<System.Classes.TComponent>;//f34
    FOnFindMethod:TFindMethodEvent;//f38
    FOnFindMethodInstance:TFindMethodInstanceEvent;//f40
    FOnSetName:TSetNameEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    FOnReferenceName:TReferenceNameEvent;//f50
    FOnAncestorNotFound:TAncestorNotFoundEvent;//f58
    FOnError:TReaderError;//f60
    FOnFindComponentClass:TFindComponentClassEvent;//f68
    FOnCreateComponent:TCreateComponentEvent;//f70
    FOnFindComponentInstance:TFindComponentInstanceEvent;//f78
    FPropName:string;//f80
    FFinder:TClassFinder;//f84
    FCanHandleExcepts:Boolean;//f88
    destructor Destroy(); virtual;//00494E1C
    //procedure DefineProperty(Name:string; HasData:Boolean; WriteData:TWriterProc; ReadData:TReaderProc; ?:?; ?:?); virtual;//v4//00494E78
    //procedure DefineBinaryProperty(Name:string; HasData:Boolean; WriteData:TStreamProc; ReadData:TStreamProc; ?:?; ?:?); virtual;//v8//00494EE0
    procedure FlushBuffer; virtual;//vC//004952D4
    function Error(const Message:UnicodeString):Boolean; virtual;//v10//00494FFC
    function FindAncestorComponent(const Name:UnicodeString; ComponentClass:TPersistentClass):TComponent; virtual;//v14//0049772C
    function FindMethodInstance(Root:TComponent; const MethodName:UnicodeString):TMethod; virtual;//v18//00495020
    function FindMethod(Root:TComponent; const MethodName:UnicodeString):Pointer; virtual;//v1C//00495090
    //procedure v20(?:?; ?:?); virtual;//v20//004977FC
    procedure ReferenceName(var Name:UnicodeString); virtual;//v24//004977E4
    procedure ReadPrefix(var Flags:TFilerFlags; var AChildPos:Integer); virtual;//v28//00496348
  end;
  TFindAncestorEvent = procedure(Writer:TWriter; Component:TComponent; const Name:string; var Ancestor:TComponent; var RootAncestor:TComponent) of object;;
  TFindMethodNameEvent = procedure(Writer:TWriter; AMethod:TMethod; var MethodName:string) of object;;
  TWriter = class(TFiler)
  published
    procedure WriteIdent(Ident:string);//00498950
    procedure WriteInteger(Value:Integer);//00498AC0
    procedure WriteInteger(Value:Int64);//00498B34
    procedure WriteSingle(Value:Single);//004988C0
    procedure WriteCurrency(Value:Currency);//004988E4
    procedure WriteDate(Value:TDateTime);//0049891C
    procedure WriteListBegin;//00498B8C
    procedure WriteUTF8Str(Value:string);//0049AAA8
    procedure WriteString(Value:string);//0049A920
    procedure WriteVariant(Value:Variant);//0049A4C4
    procedure WriteListEnd;//00498B94
    procedure WriteProperties(Instance:TPersistent);//00498BE4
    procedure WriteSignature;//0049A910
    procedure WriteFloat(Value:Extended);//0049889C
    procedure FlushBuffer;//00497DFC
    //procedure Write(Buffer:?; Count:Integer);//00497E58
    procedure Write(Buffer:TArray<System.Byte>; Offset:Integer; Count:Integer);//00497F48
    destructor Destroy();//00497D10
    procedure DefineProperty(Name:string; HasData:Boolean; WriteData:TWriterProc; ReadData:TReaderProc);//00497D50
    procedure DefineBinaryProperty(Name:string; HasData:Boolean; WriteData:TStreamProc; ReadData:TStreamProc);//00497D78
    procedure Write(Buffer:TArray<System.Byte>; Count:Integer);//004980E4
    procedure WriteComponent(Component:TComponent);//004982C4
    procedure WriteChar(Value:Char);//00498150
    procedure WriteDescendent(Root:TComponent; AAncestor:TComponent);//004987DC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure WriteBoolean(Value:Boolean);//0049813C
    procedure WriteCollection(Value:TCollection);//004981A0
  public
    FRootAncestor:TComponent;//f28
    FPropPath:string;//f2C
    FAncestorList:TList<System.Classes.TComponent>;//f30
    FAncestorPos:Integer;//f34
    FChildPos:Integer;//f38
    FOnFindAncestor:TFindAncestorEvent;//f40
    FOnFindMethodName:TFindMethodNameEvent;//f48
    FUseQualifiedNames:Boolean;//f50
    destructor Destroy(); virtual;//00497D10
    procedure SetRoot(Value:TComponent); virtual;//v0//00497E40
    procedure DefineProperty(Name:string; HasData:Boolean; WriteData:TWriterProc; ReadData:TReaderProc); virtual;//v4//00497D50
    procedure DefineBinaryProperty(Name:string; HasData:Boolean; WriteData:TStreamProc; ReadData:TStreamProc); virtual;//v8//00497D78
    procedure FlushBuffer; virtual;//vC//00497DFC
    //procedure v10(?:?); virtual;//v10//00498418
    function FindMethodName(AMethod:TMethod):UnicodeString; virtual;//v14//00497DB4
  end;
  EThread = class(Exception)
  end;
  TThreadMethod = procedure of object;;
  TThreadPriority = (tpIdle, tpLowest, tpLower, tpNormal, tpHigher, tpHighest, tpTimeCritical);
  TThread.TSynchronizeRecord = TThread.TSynchronizeRecord = record//size=18
f10:TThreadProcedure;//f10
end;
FThread:TObject;//f0
FMethod:TThreadMethod;//f8
FProcedure:TThreadProcedure;//f10
FSynchronizeException:TObject;//f14
end;;
  TThread.TSystemTimes = TThread.TSystemTimes = record//size=20
IdleTime:UInt64;//f0
UserTime:UInt64;//f8
KernelTime:UInt64;//f10
NiceTime:UInt64;//f18
end;;
  TThread = class(TObject)
  published
    procedure RemoveQueuedEvents;//0049E344
    procedure Queue(AMethod:TThreadMethod);//0049E0D0
    function WaitFor:Cardinal;//0049E4E8
    procedure SpinWait;//0049E408
    procedure GetTickCount;//0049E03C
    procedure Yield;//0049E420
    procedure Sleep;//0049E418
    destructor Destroy();//0049DD28
    constructor Create;//0049DC28
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure AfterConstruction;//0049DDD8
    procedure Terminate;//0049E4C0
    procedure Suspend;//0049E428
    procedure Resume;//0049E498
  public
    FThreadID:Cardinal;//f4
    FHandle:NativeUInt;//f8
    FStarted:Boolean;//fC
    FCreateSuspended:Boolean;//fD
    FTerminated:Boolean;//fE
    FSuspended:Boolean;//fF
    FFreeOnTerminate:Boolean;//f10
    FFinished:Boolean;//f11
    FReturnValue:Integer;//f14
    FOnTerminate:TNotifyEvent;//f18
    FSynchronize:TSynchronizeRecord;//f20
    FFatalException:TObject;//f38
    FExternalThread:Boolean;//f3C
    procedure AfterConstruction; virtual;//0049DDD8
    destructor Destroy(); virtual;//0049DD28
    procedure DoTerminate; virtual;//v0//0049DE94
    procedure v4; virtual;//v4//0049DEA8
    procedure Execute; virtual; abstract;//v8//00405554
  end;
  TComponentEnumerator = class(TObject)
  published
    function GetCurrent:TComponent;//0049E5AC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FIndex:Integer;//f4
    FComponent:TComponent;//f8
  end;
  TOperation = (opInsert, opRemove);
  :45 = (csLoading, csReading, csWriting, csDestroying, csDesigning, csAncestor, csUpdating, csFixups, csFreeNotification, csInline, csDesignInstance);
  TComponentState = set of :45;
  :55 = (csInheritable, csCheckPropAvail, csSubComponent, csTransient);
  TComponentStyle = set of :55;
  TGetChildProc = procedure(Child:TComponent) of object;;
  TGetStreamProc = procedure(const S:TStream) of object;;
  TGetDeltaStreamsEvent = procedure(Sender:TObject; Proc:TGetStreamProc; var Handled:Boolean) of object;;
  TObservers = class(TObject)
  published
    function IsObserving(ID:Integer):Boolean;//004A16B8
    procedure RemoveObserver(IDs:Integer; AIntf:IInterface);//004A188C
    function TryIsObserving(ID:Integer; AIntf:IInterface):Boolean;//004A1788
    function GetMultiCastObserver(ID:Integer):IInterfaceList;//004A13EC
    function GetSingleCastObserver(ID:Integer):IInterface;//004A153C
    procedure RemoveObserver(ID:Integer; AIntf:IInterface);//004A1874
    destructor Destroy();//004A1120
    constructor Create();//004A10D8
    function CanObserve(ID:Integer):Boolean;//004A114C
    procedure AddObserver(IDs:Integer; AIntf:IInterface);//004A1170
    procedure AddObserver(ID:Integer; AIntf:IInterface);//004A13D4
  public
    FObservers:TDictionary<System.Integer,System.Classes.IInterfaceList>;//f4
    FCanObserve:TCanObserveEvent;//f8
    FObserverAdded:TObserverAddedEvent;//fC
    destructor Destroy(); virtual;//004A1120
    function CanObserve(ID:Integer):Boolean; virtual;//v0//004A114C
    procedure AddObserver(ID:Integer; AIntf:IInterface); virtual;//v4//004A13D4
    procedure AddObserver(IDs:Integer; AIntf:IInterface); virtual;//v8//004A1170
    procedure RemoveObserver(ID:Integer; AIntf:IInterface); virtual;//vC//004A1874
    procedure RemoveObserver(IDs:Integer; AIntf:IInterface); virtual;//v10//004A188C
    function IsObserving(ID:Integer):Boolean; virtual;//v14//004A16B8
    function TryIsObserving(ID:Integer; AIntf:IInterface):Boolean; virtual;//v18//004A1788
    function GetSingleCastObserver(ID:Integer):IInterface; virtual;//v1C//004A153C
    function GetMultiCastObserver(ID:Integer):IInterfaceList; virtual;//v20//004A13EC
  end;
  EObserverException = class(Exception)
  end;
  TAsyncProcedureEvent = procedure(const ASyncResult:IAsyncResult) of object;;
  TAsyncFunctionEvent = procedure(const ASyncResult:IAsyncResult; Result:TObject) of object;;
  TAsyncConstArrayProcedureEvent = procedure(const ASyncResult:IAsyncResult; const Params:TVarRec) of object;;
  TAsyncConstArrayFunctionEvent = procedure(const ASyncResult:IAsyncResult; Result:TObject; const Params:TVarRec) of object;;
    function string>.GetProc(Instance:TObject; PropInfo:PPropInfo):string;//0046A9FC
    procedure string>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:string);//0046AA84
    function WideString>.GetProc(Instance:TObject; PropInfo:PPropInfo):WideString;//0046AB08
    procedure WideString>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:WideString);//0046AB90
    function Single>.GetProc(Instance:TObject; PropInfo:PPropInfo):Single;//0046AC14
    procedure Single>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Single);//0046AC98
    function Double>.GetProc(Instance:TObject; PropInfo:PPropInfo):Double;//0046AD14
    procedure Double>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Double);//0046ADA0
    function Extended>.GetProc(Instance:TObject; PropInfo:PPropInfo):Extended;//0046AE28
    procedure Extended>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Extended);//0046AEBC
    function Comp>.GetProc(Instance:TObject; PropInfo:PPropInfo):Comp;//0046AF58
    procedure Comp>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Comp);//0046AFE4
    function Currency>.GetProc(Instance:TObject; PropInfo:PPropInfo):Currency;//0046B06C
    procedure Currency>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Currency);//0046B0F8

implementation

//0046A9FC
function TPropSet<System.string>.GetProc(Instance:TObject; PropInfo:PPropInfo):string;
begin
{*
 0046A9FC    push        ebp
 0046A9FD    mov         ebp,esp
 0046A9FF    add         esp,0FFFFFFF8
 0046AA02    push        ebx
 0046AA03    push        esi
 0046AA04    mov         ebx,ecx
 0046AA06    mov         esi,edx
 0046AA08    mov         edx,dword ptr [ebx+4]
 0046AA0B    mov         eax,edx
 0046AA0D    and         eax,0FF000000
 0046AA12    cmp         eax,0FF000000
 0046AA17    sete        al
 0046AA1A    test        al,al
>0046AA1C    je          0046AA34
 0046AA1E    mov         ebx,edx
 0046AA20    mov         eax,dword ptr [ebp+8]
 0046AA23    and         ebx,0FFFFFF
 0046AA29    add         ebx,esi
 0046AA2B    mov         edx,dword ptr [ebx]
 0046AA2D    call        @UStrAsg
>0046AA32    jmp         0046AA7B
 0046AA34    mov         eax,edx
 0046AA36    mov         edx,eax
 0046AA38    mov         ecx,edx
 0046AA3A    and         ecx,0FF000000
 0046AA40    cmp         ecx,0FE000000
>0046AA46    jne         0046AA54
 0046AA48    mov         ecx,dword ptr [esi]
 0046AA4A    and         edx,0FFFF
 0046AA50    add         ecx,edx
 0046AA52    mov         eax,dword ptr [ecx]
 0046AA54    mov         dword ptr [ebp-8],eax
 0046AA57    mov         dword ptr [ebp-4],esi
 0046AA5A    mov         esi,dword ptr [ebx+10]
 0046AA5D    cmp         esi,80000000
>0046AA63    jne         0046AA70
 0046AA65    mov         edx,dword ptr [ebp+8]
 0046AA68    mov         eax,dword ptr [ebp-4]
 0046AA6B    call        dword ptr [ebp-8]
>0046AA6E    jmp         0046AA7B
 0046AA70    mov         ecx,dword ptr [ebp+8]
 0046AA73    mov         edx,esi
 0046AA75    mov         eax,dword ptr [ebp-4]
 0046AA78    call        dword ptr [ebp-8]
 0046AA7B    pop         esi
 0046AA7C    pop         ebx
 0046AA7D    pop         ecx
 0046AA7E    pop         ecx
 0046AA7F    pop         ebp
 0046AA80    ret         4
*}
end;

//0046AA84
procedure TPropSet<System.string>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:string);
begin
{*
 0046AA84    push        ebp
 0046AA85    mov         ebp,esp
 0046AA87    add         esp,0FFFFFFF8
 0046AA8A    push        ebx
 0046AA8B    push        esi
 0046AA8C    push        edi
 0046AA8D    mov         ebx,edx
 0046AA8F    mov         esi,dword ptr [ebp+8]
 0046AA92    mov         edi,dword ptr [ecx+8]
 0046AA95    mov         eax,edi
 0046AA97    and         eax,0FF000000
 0046AA9C    cmp         eax,0FF000000
 0046AAA1    sete        al
 0046AAA4    test        al,al
>0046AAA6    je          0046AABB
 0046AAA8    and         edi,0FFFFFF
 0046AAAE    add         edi,ebx
 0046AAB0    mov         eax,edi
 0046AAB2    mov         edx,esi
 0046AAB4    call        @UStrAsg
>0046AAB9    jmp         0046AAFC
 0046AABB    mov         eax,edi
 0046AABD    mov         edx,eax
 0046AABF    and         edx,0FF000000
 0046AAC5    cmp         edx,0FE000000
>0046AACB    jne         0046AAD8
 0046AACD    mov         edx,dword ptr [ebx]
 0046AACF    and         eax,0FFFF
 0046AAD4    add         edx,eax
 0046AAD6    mov         eax,dword ptr [edx]
 0046AAD8    mov         dword ptr [ebp-8],eax
 0046AADB    mov         dword ptr [ebp-4],ebx
 0046AADE    mov         eax,dword ptr [ecx+10]
 0046AAE1    cmp         eax,80000000
>0046AAE6    jne         0046AAF2
 0046AAE8    mov         edx,esi
 0046AAEA    mov         eax,dword ptr [ebp-4]
 0046AAED    call        dword ptr [ebp-8]
>0046AAF0    jmp         0046AAFC
 0046AAF2    mov         edx,eax
 0046AAF4    mov         ecx,esi
 0046AAF6    mov         eax,dword ptr [ebp-4]
 0046AAF9    call        dword ptr [ebp-8]
 0046AAFC    pop         edi
 0046AAFD    pop         esi
 0046AAFE    pop         ebx
 0046AAFF    pop         ecx
 0046AB00    pop         ecx
 0046AB01    pop         ebp
 0046AB02    ret         4
*}
end;

//0046AB08
function TPropSet<System.WideString>.GetProc(Instance:TObject; PropInfo:PPropInfo):WideString;
begin
{*
 0046AB08    push        ebp
 0046AB09    mov         ebp,esp
 0046AB0B    add         esp,0FFFFFFF8
 0046AB0E    push        ebx
 0046AB0F    push        esi
 0046AB10    mov         ebx,ecx
 0046AB12    mov         esi,edx
 0046AB14    mov         edx,dword ptr [ebx+4]
 0046AB17    mov         eax,edx
 0046AB19    and         eax,0FF000000
 0046AB1E    cmp         eax,0FF000000
 0046AB23    sete        al
 0046AB26    test        al,al
>0046AB28    je          0046AB40
 0046AB2A    mov         ebx,edx
 0046AB2C    mov         eax,dword ptr [ebp+8]
 0046AB2F    and         ebx,0FFFFFF
 0046AB35    add         ebx,esi
 0046AB37    mov         edx,dword ptr [ebx]
 0046AB39    call        @WStrAsg
>0046AB3E    jmp         0046AB87
 0046AB40    mov         eax,edx
 0046AB42    mov         edx,eax
 0046AB44    mov         ecx,edx
 0046AB46    and         ecx,0FF000000
 0046AB4C    cmp         ecx,0FE000000
>0046AB52    jne         0046AB60
 0046AB54    mov         ecx,dword ptr [esi]
 0046AB56    and         edx,0FFFF
 0046AB5C    add         ecx,edx
 0046AB5E    mov         eax,dword ptr [ecx]
 0046AB60    mov         dword ptr [ebp-8],eax
 0046AB63    mov         dword ptr [ebp-4],esi
 0046AB66    mov         esi,dword ptr [ebx+10]
 0046AB69    cmp         esi,80000000
>0046AB6F    jne         0046AB7C
 0046AB71    mov         edx,dword ptr [ebp+8]
 0046AB74    mov         eax,dword ptr [ebp-4]
 0046AB77    call        dword ptr [ebp-8]
>0046AB7A    jmp         0046AB87
 0046AB7C    mov         ecx,dword ptr [ebp+8]
 0046AB7F    mov         edx,esi
 0046AB81    mov         eax,dword ptr [ebp-4]
 0046AB84    call        dword ptr [ebp-8]
 0046AB87    pop         esi
 0046AB88    pop         ebx
 0046AB89    pop         ecx
 0046AB8A    pop         ecx
 0046AB8B    pop         ebp
 0046AB8C    ret         4
*}
end;

//0046AB90
procedure TPropSet<System.WideString>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:WideString);
begin
{*
 0046AB90    push        ebp
 0046AB91    mov         ebp,esp
 0046AB93    add         esp,0FFFFFFF8
 0046AB96    push        ebx
 0046AB97    push        esi
 0046AB98    push        edi
 0046AB99    mov         ebx,edx
 0046AB9B    mov         esi,dword ptr [ebp+8]
 0046AB9E    mov         edi,dword ptr [ecx+8]
 0046ABA1    mov         eax,edi
 0046ABA3    and         eax,0FF000000
 0046ABA8    cmp         eax,0FF000000
 0046ABAD    sete        al
 0046ABB0    test        al,al
>0046ABB2    je          0046ABC7
 0046ABB4    and         edi,0FFFFFF
 0046ABBA    add         edi,ebx
 0046ABBC    mov         eax,edi
 0046ABBE    mov         edx,esi
 0046ABC0    call        @WStrAsg
>0046ABC5    jmp         0046AC08
 0046ABC7    mov         eax,edi
 0046ABC9    mov         edx,eax
 0046ABCB    and         edx,0FF000000
 0046ABD1    cmp         edx,0FE000000
>0046ABD7    jne         0046ABE4
 0046ABD9    mov         edx,dword ptr [ebx]
 0046ABDB    and         eax,0FFFF
 0046ABE0    add         edx,eax
 0046ABE2    mov         eax,dword ptr [edx]
 0046ABE4    mov         dword ptr [ebp-8],eax
 0046ABE7    mov         dword ptr [ebp-4],ebx
 0046ABEA    mov         eax,dword ptr [ecx+10]
 0046ABED    cmp         eax,80000000
>0046ABF2    jne         0046ABFE
 0046ABF4    mov         edx,esi
 0046ABF6    mov         eax,dword ptr [ebp-4]
 0046ABF9    call        dword ptr [ebp-8]
>0046ABFC    jmp         0046AC08
 0046ABFE    mov         edx,eax
 0046AC00    mov         ecx,esi
 0046AC02    mov         eax,dword ptr [ebp-4]
 0046AC05    call        dword ptr [ebp-8]
 0046AC08    pop         edi
 0046AC09    pop         esi
 0046AC0A    pop         ebx
 0046AC0B    pop         ecx
 0046AC0C    pop         ecx
 0046AC0D    pop         ebp
 0046AC0E    ret         4
*}
end;

//0046AC14
function TPropSet<System.Single>.GetProc(Instance:TObject; PropInfo:PPropInfo):Single;
begin
{*
 0046AC14    push        ebx
 0046AC15    push        esi
 0046AC16    add         esp,0FFFFFFF4
 0046AC19    mov         esi,dword ptr [ecx+4]
 0046AC1C    mov         eax,esi
 0046AC1E    and         eax,0FF000000
 0046AC23    cmp         eax,0FF000000
 0046AC28    sete        al
 0046AC2B    test        al,al
>0046AC2D    je          0046AC3F
 0046AC2F    mov         eax,esi
 0046AC31    and         eax,0FFFFFF
 0046AC36    add         eax,edx
 0046AC38    mov         eax,dword ptr [eax]
 0046AC3A    mov         dword ptr [esp],eax
>0046AC3D    jmp         0046AC8D
 0046AC3F    mov         eax,esi
 0046AC41    mov         ebx,eax
 0046AC43    mov         esi,ebx
 0046AC45    and         esi,0FF000000
 0046AC4B    cmp         esi,0FE000000
>0046AC51    jne         0046AC5F
 0046AC53    mov         esi,dword ptr [edx]
 0046AC55    and         ebx,0FFFF
 0046AC5B    add         esi,ebx
 0046AC5D    mov         eax,dword ptr [esi]
 0046AC5F    mov         dword ptr [esp+4],eax
 0046AC63    mov         dword ptr [esp+8],edx
 0046AC67    mov         eax,dword ptr [ecx+10]
 0046AC6A    cmp         eax,80000000
>0046AC6F    jne         0046AC7F
 0046AC71    mov         eax,dword ptr [esp+8]
 0046AC75    call        dword ptr [esp+4]
 0046AC79    fstp        dword ptr [esp]
 0046AC7C    wait
>0046AC7D    jmp         0046AC8D
 0046AC7F    mov         edx,eax
 0046AC81    mov         eax,dword ptr [esp+8]
 0046AC85    call        dword ptr [esp+4]
 0046AC89    fstp        dword ptr [esp]
 0046AC8C    wait
 0046AC8D    fld         dword ptr [esp]
 0046AC90    add         esp,0C
 0046AC93    pop         esi
 0046AC94    pop         ebx
 0046AC95    ret
*}
end;

//0046AC98
procedure TPropSet<System.Single>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Single);
begin
{*
 0046AC98    push        ebp
 0046AC99    mov         ebp,esp
 0046AC9B    add         esp,0FFFFFFF8
 0046AC9E    push        ebx
 0046AC9F    push        esi
 0046ACA0    mov         esi,dword ptr [ecx+8]
 0046ACA3    mov         eax,esi
 0046ACA5    and         eax,0FF000000
 0046ACAA    cmp         eax,0FF000000
 0046ACAF    sete        al
 0046ACB2    test        al,al
>0046ACB4    je          0046ACC6
 0046ACB6    mov         eax,esi
 0046ACB8    and         eax,0FFFFFF
 0046ACBD    add         eax,edx
 0046ACBF    mov         edx,dword ptr [ebp+8]
 0046ACC2    mov         dword ptr [eax],edx
>0046ACC4    jmp         0046AD0C
 0046ACC6    mov         eax,esi
 0046ACC8    mov         ebx,eax
 0046ACCA    mov         esi,ebx
 0046ACCC    and         esi,0FF000000
 0046ACD2    cmp         esi,0FE000000
>0046ACD8    jne         0046ACE6
 0046ACDA    mov         esi,dword ptr [edx]
 0046ACDC    and         ebx,0FFFF
 0046ACE2    add         esi,ebx
 0046ACE4    mov         eax,dword ptr [esi]
 0046ACE6    mov         dword ptr [ebp-8],eax
 0046ACE9    mov         dword ptr [ebp-4],edx
 0046ACEC    mov         eax,dword ptr [ecx+10]
 0046ACEF    cmp         eax,80000000
>0046ACF4    jne         0046AD01
 0046ACF6    push        dword ptr [ebp+8]
 0046ACF9    mov         eax,dword ptr [ebp-4]
 0046ACFC    call        dword ptr [ebp-8]
>0046ACFF    jmp         0046AD0C
 0046AD01    push        dword ptr [ebp+8]
 0046AD04    mov         edx,eax
 0046AD06    mov         eax,dword ptr [ebp-4]
 0046AD09    call        dword ptr [ebp-8]
 0046AD0C    pop         esi
 0046AD0D    pop         ebx
 0046AD0E    pop         ecx
 0046AD0F    pop         ecx
 0046AD10    pop         ebp
 0046AD11    ret         4
*}
end;

//0046AD14
function TPropSet<System.Double>.GetProc(Instance:TObject; PropInfo:PPropInfo):Double;
begin
{*
 0046AD14    push        ebx
 0046AD15    push        esi
 0046AD16    add         esp,0FFFFFFF0
 0046AD19    mov         esi,dword ptr [ecx+4]
 0046AD1C    mov         eax,esi
 0046AD1E    and         eax,0FF000000
 0046AD23    cmp         eax,0FF000000
 0046AD28    sete        al
 0046AD2B    test        al,al
>0046AD2D    je          0046AD46
 0046AD2F    mov         eax,esi
 0046AD31    and         eax,0FFFFFF
 0046AD36    add         eax,edx
 0046AD38    mov         edx,dword ptr [eax]
 0046AD3A    mov         dword ptr [esp],edx
 0046AD3D    mov         edx,dword ptr [eax+4]
 0046AD40    mov         dword ptr [esp+4],edx
>0046AD44    jmp         0046AD94
 0046AD46    mov         eax,esi
 0046AD48    mov         ebx,eax
 0046AD4A    mov         esi,ebx
 0046AD4C    and         esi,0FF000000
 0046AD52    cmp         esi,0FE000000
>0046AD58    jne         0046AD66
 0046AD5A    mov         esi,dword ptr [edx]
 0046AD5C    and         ebx,0FFFF
 0046AD62    add         esi,ebx
 0046AD64    mov         eax,dword ptr [esi]
 0046AD66    mov         dword ptr [esp+8],eax
 0046AD6A    mov         dword ptr [esp+0C],edx
 0046AD6E    mov         eax,dword ptr [ecx+10]
 0046AD71    cmp         eax,80000000
>0046AD76    jne         0046AD86
 0046AD78    mov         eax,dword ptr [esp+0C]
 0046AD7C    call        dword ptr [esp+8]
 0046AD80    fstp        qword ptr [esp]
 0046AD83    wait
>0046AD84    jmp         0046AD94
 0046AD86    mov         edx,eax
 0046AD88    mov         eax,dword ptr [esp+0C]
 0046AD8C    call        dword ptr [esp+8]
 0046AD90    fstp        qword ptr [esp]
 0046AD93    wait
 0046AD94    fld         qword ptr [esp]
 0046AD97    add         esp,10
 0046AD9A    pop         esi
 0046AD9B    pop         ebx
 0046AD9C    ret
*}
end;

//0046ADA0
procedure TPropSet<System.Double>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Double);
begin
{*
 0046ADA0    push        ebp
 0046ADA1    mov         ebp,esp
 0046ADA3    add         esp,0FFFFFFF8
 0046ADA6    push        ebx
 0046ADA7    push        esi
 0046ADA8    mov         esi,dword ptr [ecx+8]
 0046ADAB    mov         eax,esi
 0046ADAD    and         eax,0FF000000
 0046ADB2    cmp         eax,0FF000000
 0046ADB7    sete        al
 0046ADBA    test        al,al
>0046ADBC    je          0046ADD4
 0046ADBE    mov         eax,esi
 0046ADC0    and         eax,0FFFFFF
 0046ADC5    add         eax,edx
 0046ADC7    mov         edx,dword ptr [ebp+8]
 0046ADCA    mov         dword ptr [eax],edx
 0046ADCC    mov         edx,dword ptr [ebp+0C]
 0046ADCF    mov         dword ptr [eax+4],edx
>0046ADD2    jmp         0046AE20
 0046ADD4    mov         eax,esi
 0046ADD6    mov         ebx,eax
 0046ADD8    mov         esi,ebx
 0046ADDA    and         esi,0FF000000
 0046ADE0    cmp         esi,0FE000000
>0046ADE6    jne         0046ADF4
 0046ADE8    mov         esi,dword ptr [edx]
 0046ADEA    and         ebx,0FFFF
 0046ADF0    add         esi,ebx
 0046ADF2    mov         eax,dword ptr [esi]
 0046ADF4    mov         dword ptr [ebp-8],eax
 0046ADF7    mov         dword ptr [ebp-4],edx
 0046ADFA    mov         eax,dword ptr [ecx+10]
 0046ADFD    cmp         eax,80000000
>0046AE02    jne         0046AE12
 0046AE04    push        dword ptr [ebp+0C]
 0046AE07    push        dword ptr [ebp+8]
 0046AE0A    mov         eax,dword ptr [ebp-4]
 0046AE0D    call        dword ptr [ebp-8]
>0046AE10    jmp         0046AE20
 0046AE12    push        dword ptr [ebp+0C]
 0046AE15    push        dword ptr [ebp+8]
 0046AE18    mov         edx,eax
 0046AE1A    mov         eax,dword ptr [ebp-4]
 0046AE1D    call        dword ptr [ebp-8]
 0046AE20    pop         esi
 0046AE21    pop         ebx
 0046AE22    pop         ecx
 0046AE23    pop         ecx
 0046AE24    pop         ebp
 0046AE25    ret         8
*}
end;

//0046AE28
function TPropSet<System.Extended>.GetProc(Instance:TObject; PropInfo:PPropInfo):Extended;
begin
{*
 0046AE28    push        ebx
 0046AE29    push        esi
 0046AE2A    add         esp,0FFFFFFEC
 0046AE2D    mov         esi,dword ptr [ecx+4]
 0046AE30    mov         eax,esi
 0046AE32    and         eax,0FF000000
 0046AE37    cmp         eax,0FF000000
 0046AE3C    sete        al
 0046AE3F    test        al,al
>0046AE41    je          0046AE63
 0046AE43    mov         eax,esi
 0046AE45    and         eax,0FFFFFF
 0046AE4A    add         eax,edx
 0046AE4C    mov         edx,dword ptr [eax]
 0046AE4E    mov         dword ptr [esp],edx
 0046AE51    mov         edx,dword ptr [eax+4]
 0046AE54    mov         dword ptr [esp+4],edx
 0046AE58    mov         dx,word ptr [eax+8]
 0046AE5C    mov         word ptr [esp+8],dx
>0046AE61    jmp         0046AEB1
 0046AE63    mov         eax,esi
 0046AE65    mov         ebx,eax
 0046AE67    mov         esi,ebx
 0046AE69    and         esi,0FF000000
 0046AE6F    cmp         esi,0FE000000
>0046AE75    jne         0046AE83
 0046AE77    mov         esi,dword ptr [edx]
 0046AE79    and         ebx,0FFFF
 0046AE7F    add         esi,ebx
 0046AE81    mov         eax,dword ptr [esi]
 0046AE83    mov         dword ptr [esp+0C],eax
 0046AE87    mov         dword ptr [esp+10],edx
 0046AE8B    mov         eax,dword ptr [ecx+10]
 0046AE8E    cmp         eax,80000000
>0046AE93    jne         0046AEA3
 0046AE95    mov         eax,dword ptr [esp+10]
 0046AE99    call        dword ptr [esp+0C]
 0046AE9D    fstp        tbyte ptr [esp]
 0046AEA0    wait
>0046AEA1    jmp         0046AEB1
 0046AEA3    mov         edx,eax
 0046AEA5    mov         eax,dword ptr [esp+10]
 0046AEA9    call        dword ptr [esp+0C]
 0046AEAD    fstp        tbyte ptr [esp]
 0046AEB0    wait
 0046AEB1    fld         tbyte ptr [esp]
 0046AEB4    add         esp,14
 0046AEB7    pop         esi
 0046AEB8    pop         ebx
 0046AEB9    ret
*}
end;

//0046AEBC
procedure TPropSet<System.Extended>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Extended);
begin
{*
 0046AEBC    push        ebp
 0046AEBD    mov         ebp,esp
 0046AEBF    add         esp,0FFFFFFF8
 0046AEC2    push        ebx
 0046AEC3    push        esi
 0046AEC4    mov         esi,dword ptr [ecx+8]
 0046AEC7    mov         eax,esi
 0046AEC9    and         eax,0FF000000
 0046AECE    cmp         eax,0FF000000
 0046AED3    sete        al
 0046AED6    test        al,al
>0046AED8    je          0046AEF8
 0046AEDA    mov         eax,esi
 0046AEDC    and         eax,0FFFFFF
 0046AEE1    add         eax,edx
 0046AEE3    mov         edx,dword ptr [ebp+8]
 0046AEE6    mov         dword ptr [eax],edx
 0046AEE8    mov         edx,dword ptr [ebp+0C]
 0046AEEB    mov         dword ptr [eax+4],edx
 0046AEEE    mov         dx,word ptr [ebp+10]
 0046AEF2    mov         word ptr [eax+8],dx
>0046AEF6    jmp         0046AF4E
 0046AEF8    mov         eax,esi
 0046AEFA    mov         ebx,eax
 0046AEFC    mov         esi,ebx
 0046AEFE    and         esi,0FF000000
 0046AF04    cmp         esi,0FE000000
>0046AF0A    jne         0046AF18
 0046AF0C    mov         esi,dword ptr [edx]
 0046AF0E    and         ebx,0FFFF
 0046AF14    add         esi,ebx
 0046AF16    mov         eax,dword ptr [esi]
 0046AF18    mov         dword ptr [ebp-8],eax
 0046AF1B    mov         dword ptr [ebp-4],edx
 0046AF1E    mov         eax,dword ptr [ecx+10]
 0046AF21    cmp         eax,80000000
>0046AF26    jne         0046AF3B
 0046AF28    movzx       eax,word ptr [ebp+10]
 0046AF2C    push        eax
 0046AF2D    push        dword ptr [ebp+0C]
 0046AF30    push        dword ptr [ebp+8]
 0046AF33    mov         eax,dword ptr [ebp-4]
 0046AF36    call        dword ptr [ebp-8]
>0046AF39    jmp         0046AF4E
 0046AF3B    movzx       edx,word ptr [ebp+10]
 0046AF3F    push        edx
 0046AF40    push        dword ptr [ebp+0C]
 0046AF43    push        dword ptr [ebp+8]
 0046AF46    mov         edx,eax
 0046AF48    mov         eax,dword ptr [ebp-4]
 0046AF4B    call        dword ptr [ebp-8]
 0046AF4E    pop         esi
 0046AF4F    pop         ebx
 0046AF50    pop         ecx
 0046AF51    pop         ecx
 0046AF52    pop         ebp
 0046AF53    ret         0C
*}
end;

//0046AF58
function TPropSet<System.Comp>.GetProc(Instance:TObject; PropInfo:PPropInfo):Comp;
begin
{*
 0046AF58    push        ebx
 0046AF59    push        esi
 0046AF5A    add         esp,0FFFFFFF0
 0046AF5D    mov         esi,dword ptr [ecx+4]
 0046AF60    mov         eax,esi
 0046AF62    and         eax,0FF000000
 0046AF67    cmp         eax,0FF000000
 0046AF6C    sete        al
 0046AF6F    test        al,al
>0046AF71    je          0046AF8A
 0046AF73    mov         eax,esi
 0046AF75    and         eax,0FFFFFF
 0046AF7A    add         eax,edx
 0046AF7C    mov         edx,dword ptr [eax]
 0046AF7E    mov         dword ptr [esp],edx
 0046AF81    mov         edx,dword ptr [eax+4]
 0046AF84    mov         dword ptr [esp+4],edx
>0046AF88    jmp         0046AFD8
 0046AF8A    mov         eax,esi
 0046AF8C    mov         ebx,eax
 0046AF8E    mov         esi,ebx
 0046AF90    and         esi,0FF000000
 0046AF96    cmp         esi,0FE000000
>0046AF9C    jne         0046AFAA
 0046AF9E    mov         esi,dword ptr [edx]
 0046AFA0    and         ebx,0FFFF
 0046AFA6    add         esi,ebx
 0046AFA8    mov         eax,dword ptr [esi]
 0046AFAA    mov         dword ptr [esp+8],eax
 0046AFAE    mov         dword ptr [esp+0C],edx
 0046AFB2    mov         eax,dword ptr [ecx+10]
 0046AFB5    cmp         eax,80000000
>0046AFBA    jne         0046AFCA
 0046AFBC    mov         eax,dword ptr [esp+0C]
 0046AFC0    call        dword ptr [esp+8]
 0046AFC4    fistp       qword ptr [esp]
 0046AFC7    wait
>0046AFC8    jmp         0046AFD8
 0046AFCA    mov         edx,eax
 0046AFCC    mov         eax,dword ptr [esp+0C]
 0046AFD0    call        dword ptr [esp+8]
 0046AFD4    fistp       qword ptr [esp]
 0046AFD7    wait
 0046AFD8    fild        qword ptr [esp]
 0046AFDB    add         esp,10
 0046AFDE    pop         esi
 0046AFDF    pop         ebx
 0046AFE0    ret
*}
end;

//0046AFE4
procedure TPropSet<System.Comp>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Comp);
begin
{*
 0046AFE4    push        ebp
 0046AFE5    mov         ebp,esp
 0046AFE7    add         esp,0FFFFFFF8
 0046AFEA    push        ebx
 0046AFEB    push        esi
 0046AFEC    mov         esi,dword ptr [ecx+8]
 0046AFEF    mov         eax,esi
 0046AFF1    and         eax,0FF000000
 0046AFF6    cmp         eax,0FF000000
 0046AFFB    sete        al
 0046AFFE    test        al,al
>0046B000    je          0046B018
 0046B002    mov         eax,esi
 0046B004    and         eax,0FFFFFF
 0046B009    add         eax,edx
 0046B00B    mov         edx,dword ptr [ebp+8]
 0046B00E    mov         dword ptr [eax],edx
 0046B010    mov         edx,dword ptr [ebp+0C]
 0046B013    mov         dword ptr [eax+4],edx
>0046B016    jmp         0046B064
 0046B018    mov         eax,esi
 0046B01A    mov         ebx,eax
 0046B01C    mov         esi,ebx
 0046B01E    and         esi,0FF000000
 0046B024    cmp         esi,0FE000000
>0046B02A    jne         0046B038
 0046B02C    mov         esi,dword ptr [edx]
 0046B02E    and         ebx,0FFFF
 0046B034    add         esi,ebx
 0046B036    mov         eax,dword ptr [esi]
 0046B038    mov         dword ptr [ebp-8],eax
 0046B03B    mov         dword ptr [ebp-4],edx
 0046B03E    mov         eax,dword ptr [ecx+10]
 0046B041    cmp         eax,80000000
>0046B046    jne         0046B056
 0046B048    push        dword ptr [ebp+0C]
 0046B04B    push        dword ptr [ebp+8]
 0046B04E    mov         eax,dword ptr [ebp-4]
 0046B051    call        dword ptr [ebp-8]
>0046B054    jmp         0046B064
 0046B056    push        dword ptr [ebp+0C]
 0046B059    push        dword ptr [ebp+8]
 0046B05C    mov         edx,eax
 0046B05E    mov         eax,dword ptr [ebp-4]
 0046B061    call        dword ptr [ebp-8]
 0046B064    pop         esi
 0046B065    pop         ebx
 0046B066    pop         ecx
 0046B067    pop         ecx
 0046B068    pop         ebp
 0046B069    ret         8
*}
end;

//0046B06C
function TPropSet<System.Currency>.GetProc(Instance:TObject; PropInfo:PPropInfo):Currency;
begin
{*
 0046B06C    push        ebx
 0046B06D    push        esi
 0046B06E    add         esp,0FFFFFFF0
 0046B071    mov         esi,dword ptr [ecx+4]
 0046B074    mov         eax,esi
 0046B076    and         eax,0FF000000
 0046B07B    cmp         eax,0FF000000
 0046B080    sete        al
 0046B083    test        al,al
>0046B085    je          0046B09E
 0046B087    mov         eax,esi
 0046B089    and         eax,0FFFFFF
 0046B08E    add         eax,edx
 0046B090    mov         edx,dword ptr [eax]
 0046B092    mov         dword ptr [esp],edx
 0046B095    mov         edx,dword ptr [eax+4]
 0046B098    mov         dword ptr [esp+4],edx
>0046B09C    jmp         0046B0EC
 0046B09E    mov         eax,esi
 0046B0A0    mov         ebx,eax
 0046B0A2    mov         esi,ebx
 0046B0A4    and         esi,0FF000000
 0046B0AA    cmp         esi,0FE000000
>0046B0B0    jne         0046B0BE
 0046B0B2    mov         esi,dword ptr [edx]
 0046B0B4    and         ebx,0FFFF
 0046B0BA    add         esi,ebx
 0046B0BC    mov         eax,dword ptr [esi]
 0046B0BE    mov         dword ptr [esp+8],eax
 0046B0C2    mov         dword ptr [esp+0C],edx
 0046B0C6    mov         eax,dword ptr [ecx+10]
 0046B0C9    cmp         eax,80000000
>0046B0CE    jne         0046B0DE
 0046B0D0    mov         eax,dword ptr [esp+0C]
 0046B0D4    call        dword ptr [esp+8]
 0046B0D8    fistp       qword ptr [esp]
 0046B0DB    wait
>0046B0DC    jmp         0046B0EC
 0046B0DE    mov         edx,eax
 0046B0E0    mov         eax,dword ptr [esp+0C]
 0046B0E4    call        dword ptr [esp+8]
 0046B0E8    fistp       qword ptr [esp]
 0046B0EB    wait
 0046B0EC    fild        qword ptr [esp]
 0046B0EF    add         esp,10
 0046B0F2    pop         esi
 0046B0F3    pop         ebx
 0046B0F4    ret
*}
end;

//0046B0F8
procedure TPropSet<System.Currency>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:Currency);
begin
{*
 0046B0F8    push        ebp
 0046B0F9    mov         ebp,esp
 0046B0FB    add         esp,0FFFFFFF8
 0046B0FE    push        ebx
 0046B0FF    push        esi
 0046B100    mov         esi,dword ptr [ecx+8]
 0046B103    mov         eax,esi
 0046B105    and         eax,0FF000000
 0046B10A    cmp         eax,0FF000000
 0046B10F    sete        al
 0046B112    test        al,al
>0046B114    je          0046B12C
 0046B116    mov         eax,esi
 0046B118    and         eax,0FFFFFF
 0046B11D    add         eax,edx
 0046B11F    mov         edx,dword ptr [ebp+8]
 0046B122    mov         dword ptr [eax],edx
 0046B124    mov         edx,dword ptr [ebp+0C]
 0046B127    mov         dword ptr [eax+4],edx
>0046B12A    jmp         0046B178
 0046B12C    mov         eax,esi
 0046B12E    mov         ebx,eax
 0046B130    mov         esi,ebx
 0046B132    and         esi,0FF000000
 0046B138    cmp         esi,0FE000000
>0046B13E    jne         0046B14C
 0046B140    mov         esi,dword ptr [edx]
 0046B142    and         ebx,0FFFF
 0046B148    add         esi,ebx
 0046B14A    mov         eax,dword ptr [esi]
 0046B14C    mov         dword ptr [ebp-8],eax
 0046B14F    mov         dword ptr [ebp-4],edx
 0046B152    mov         eax,dword ptr [ecx+10]
 0046B155    cmp         eax,80000000
>0046B15A    jne         0046B16A
 0046B15C    push        dword ptr [ebp+0C]
 0046B15F    push        dword ptr [ebp+8]
 0046B162    mov         eax,dword ptr [ebp-4]
 0046B165    call        dword ptr [ebp-8]
>0046B168    jmp         0046B178
 0046B16A    push        dword ptr [ebp+0C]
 0046B16D    push        dword ptr [ebp+8]
 0046B170    mov         edx,eax
 0046B172    mov         eax,dword ptr [ebp-4]
 0046B175    call        dword ptr [ebp-8]
 0046B178    pop         esi
 0046B179    pop         ebx
 0046B17A    pop         ecx
 0046B17B    pop         ecx
 0046B17C    pop         ebp
 0046B17D    ret         8
*}
end;

//0046B180
function TPropSet<System.IInterface>.GetProc(Instance:TObject; PropInfo:PPropInfo):IInterface;
begin
{*
 0046B180    push        ebp
 0046B181    mov         ebp,esp
 0046B183    add         esp,0FFFFFFF8
 0046B186    push        ebx
 0046B187    push        esi
 0046B188    mov         ebx,ecx
 0046B18A    mov         esi,edx
 0046B18C    mov         edx,dword ptr [ebx+4]
 0046B18F    mov         eax,edx
 0046B191    and         eax,0FF000000
 0046B196    cmp         eax,0FF000000
 0046B19B    sete        al
 0046B19E    test        al,al
>0046B1A0    je          0046B1B8
 0046B1A2    mov         ebx,edx
 0046B1A4    mov         eax,dword ptr [ebp+8]
 0046B1A7    and         ebx,0FFFFFF
 0046B1AD    add         ebx,esi
 0046B1AF    mov         edx,dword ptr [ebx]
 0046B1B1    call        @IntfCopy
>0046B1B6    jmp         0046B1FF
 0046B1B8    mov         eax,edx
 0046B1BA    mov         edx,eax
 0046B1BC    mov         ecx,edx
 0046B1BE    and         ecx,0FF000000
 0046B1C4    cmp         ecx,0FE000000
>0046B1CA    jne         0046B1D8
 0046B1CC    mov         ecx,dword ptr [esi]
 0046B1CE    and         edx,0FFFF
 0046B1D4    add         ecx,edx
 0046B1D6    mov         eax,dword ptr [ecx]
 0046B1D8    mov         dword ptr [ebp-8],eax
 0046B1DB    mov         dword ptr [ebp-4],esi
 0046B1DE    mov         esi,dword ptr [ebx+10]
 0046B1E1    cmp         esi,80000000
>0046B1E7    jne         0046B1F4
 0046B1E9    mov         edx,dword ptr [ebp+8]
 0046B1EC    mov         eax,dword ptr [ebp-4]
 0046B1EF    call        dword ptr [ebp-8]
>0046B1F2    jmp         0046B1FF
 0046B1F4    mov         ecx,dword ptr [ebp+8]
 0046B1F7    mov         edx,esi
 0046B1F9    mov         eax,dword ptr [ebp-4]
 0046B1FC    call        dword ptr [ebp-8]
 0046B1FF    pop         esi
 0046B200    pop         ebx
 0046B201    pop         ecx
 0046B202    pop         ecx
 0046B203    pop         ebp
 0046B204    ret         4
*}
end;

//0046B208
procedure TPropSet<System.IInterface>.SetProc(Instance:TObject; PropInfo:PPropInfo; Value:IInterface);
begin
{*
 0046B208    push        ebp
 0046B209    mov         ebp,esp
 0046B20B    add         esp,0FFFFFFF8
 0046B20E    push        ebx
 0046B20F    push        esi
 0046B210    push        edi
 0046B211    mov         ebx,edx
 0046B213    mov         esi,dword ptr [ebp+8]
 0046B216    mov         edi,dword ptr [ecx+8]
 0046B219    mov         eax,edi
 0046B21B    and         eax,0FF000000
 0046B220    cmp         eax,0FF000000
 0046B225    sete        al
 0046B228    test        al,al
>0046B22A    je          0046B23F
 0046B22C    and         edi,0FFFFFF
 0046B232    add         edi,ebx
 0046B234    mov         eax,edi
 0046B236    mov         edx,esi
 0046B238    call        @IntfCopy
>0046B23D    jmp         0046B280
 0046B23F    mov         eax,edi
 0046B241    mov         edx,eax
 0046B243    and         edx,0FF000000
 0046B249    cmp         edx,0FE000000
>0046B24F    jne         0046B25C
 0046B251    mov         edx,dword ptr [ebx]
 0046B253    and         eax,0FFFF
 0046B258    add         edx,eax
 0046B25A    mov         eax,dword ptr [edx]
 0046B25C    mov         dword ptr [ebp-8],eax
 0046B25F    mov         dword ptr [ebp-4],ebx
 0046B262    mov         eax,dword ptr [ecx+10]
 0046B265    cmp         eax,80000000
>0046B26A    jne         0046B276
 0046B26C    mov         edx,esi
 0046B26E    mov         eax,dword ptr [ebp-4]
 0046B271    call        dword ptr [ebp-8]
>0046B274    jmp         0046B280
 0046B276    mov         edx,eax
 0046B278    mov         ecx,esi
 0046B27A    mov         eax,dword ptr [ebp-4]
 0046B27D    call        dword ptr [ebp-8]
 0046B280    pop         edi
 0046B281    pop         esi
 0046B282    pop         ebx
 0046B283    pop         ecx
 0046B284    pop         ecx
 0046B285    pop         ebp
 0046B286    ret         4
*}
end;

Initialization
//0079C654
{*
 0079C654    push        ebp
 0079C655    mov         ebp,esp
 0079C657    push        0
 0079C659    push        ebx
 0079C65A    xor         eax,eax
 0079C65C    push        ebp
 0079C65D    push        79C6CE
 0079C662    push        dword ptr fs:[eax]
 0079C665    mov         dword ptr fs:[eax],esp
 0079C668    sub         dword ptr ds:[7CA3B4],1
>0079C66F    jae         0079C6B8
 0079C671    mov         dl,1
 0079C673    mov         eax,[0049F29C];TComponent.Create@$940$ActRec
 0079C678    call        TObject.Create
 0079C67D    mov         ebx,eax
 0079C67F    lea         eax,[ebp-4]
 0079C682    mov         edx,ebx
 0079C684    test        edx,edx
>0079C686    je          0079C68B
 0079C688    sub         edx,0FFFFFFF8
 0079C68B    call        @IntfCopy
 0079C690    mov         ecx,ebx
 0079C692    test        ecx,ecx
>0079C694    je          0079C699
 0079C696    sub         ecx,0FFFFFFF4
 0079C699    mov         dl,1
 0079C69B    mov         eax,[0049F094];TDelegatedComparer<System.Classes.TComponent>
 0079C6A0    call        TDelegatedComparer<System.Actions.TContainedAction>.Create
 0079C6A5    mov         edx,eax
 0079C6A7    test        edx,edx
>0079C6A9    je          0079C6AE
 0079C6AB    sub         edx,0FFFFFFF4
 0079C6AE    mov         eax,7CA3B0;gvar_007CA3B0:IInterface
 0079C6B3    call        @IntfCopy
 0079C6B8    xor         eax,eax
 0079C6BA    pop         edx
 0079C6BB    pop         ecx
 0079C6BC    pop         ecx
 0079C6BD    mov         dword ptr fs:[eax],edx
 0079C6C0    push        79C6D5
 0079C6C5    lea         eax,[ebp-4]
 0079C6C8    call        @IntfClear
 0079C6CD    ret
>0079C6CE    jmp         @HandleFinally
>0079C6D3    jmp         0079C6C5
 0079C6D5    pop         ebx
 0079C6D6    pop         ecx
 0079C6D7    pop         ebp
 0079C6D8    ret
*}
Finalization
end.