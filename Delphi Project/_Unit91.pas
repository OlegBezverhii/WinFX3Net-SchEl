//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit91;

interface

uses
  SysUtils, Classes, Xml.XMLDoc, FXCalErrFrm, uHaspKey, FXLicFileU, FXStartUp, FXConfigData, System.TypInfo, System.Classes, Xml.xmldom, Vcl.StdCtrls, Vcl.ExtCtrls, System.Generics.Defaults, Vcl.Dialogs;

type
  TNodeListOperation = (nlInsert, nlRemove, nlCreateNode);
  TNodeListNotification = procedure(Operation:TNodeListOperation; var Node:IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean) of object;;
  TXMLNodeList = class(TInterfacedObject)
  published
    destructor Destroy();//0065FDCC
    constructor Create(NotificationProc:TNodeListNotification; DefaultNamespaceURI:string);//0065FD54
  public
    FList:IInterfaceList;//fC
    FNotificationProc:TNodeListNotification;//f10
    FOwner:TXMLNode;//f18
    FUpdateCount:Integer;//f1C
    FDefaultNamespaceURI:string;//f20
    function DoNotify(Operation:TNodeListOperation; const Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean):IXMLNode;//0065FDF8
    function GetCount:Integer;//0065FE38
    function IndexOf(const Node:XMLIntf.IXMLNode):Integer;//0065FE44
    function Delete(const Name:Xmldom.DOMString):Integer;//0065FEB0
    function IndexOf(const Name:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):Integer;//0065FEBC
    function FindNode(NodeName:Xmldom.DOMString):IXMLNode;//0065FF54
    function FindNode(NodeName:Xmldom.DOMString; NamespaceURI:Xmldom.DOMString):IXMLNode;//0065FFA8
    function FindNode(ChildNodeType:TGUID):IXMLNode;//0066002C
    function First:IXMLNode;//006600C0
    function Last:IXMLNode;//0066013C
    function FindSibling(const Node:XMLIntf.IXMLNode; Delta:Integer):IXMLNode;//006601B8
    function Get(Index:Integer):IXMLNode;//00660208
    function GetNode(const IndexOrName:OleVariant):IXMLNode;//0066027C
    function Add(const Node:XMLIntf.IXMLNode):Integer;//006603B0
    function InternalInsert(Index:Integer; const Node:XMLIntf.IXMLNode):Integer;//006603CC
    procedure Insert(Index:Integer; const Node:XMLIntf.IXMLNode);//006605F0
    function Delete(const Index:Integer):Integer;//00660724
    function IndexOf(const Name:Xmldom.DOMString):Integer;//0066077C
    function Delete(const Name:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):Integer;//00660788
    function Remove(const Node:XMLIntf.IXMLNode):Integer;//006607F0
    function ReplaceNode(const OldNode:XMLIntf.IXMLNode; const NewNode:XMLIntf.IXMLNode):IXMLNode;//006608D4
    procedure Clear;//00660908
  end;
  TXMLNodeArray = array of TXMLNode;
//elSize = 4;
  TNodeClassInfo = TNodeClassInfo = record//size=C
f0:string;//f0
f4:string;//f4
end;
NodeName:string;//f0
NamespaceURI:string;//f4
NodeClass:TXMLNodeClass;//f8
end;;
  TNodeClassArray = array of TNodeClassInfo;
//elSize = C;
  TNodeChange = (ncUpdateValue, ncInsertChild, ncRemoveChild, ncAddAttribute, ncRemoveAttribute);
  TXMLNode = class(TInterfacedObject)
  published
    destructor Destroy();//00660AD4
    constructor Create(OwnerDoc:TXMLDocument; AParentNode:TXMLNode);//006609A8
    constructor CreateHosted;//00660A6C
  public
    FAttributeNodes:IXMLNodeList;//fC
    FChildNodes:IXMLNodeList;//f10
    FChildNodeClasses:TNodeClassArray;//f14
    FCollection:TXMLNodeCollection;//f18
    FDocument:TXMLDocument;//f1C
    FDOMNode:IDOMNode;//f20
    FHostNode:TXMLNode;//f24
    FParentNode:TXMLNode;//f28
    FHostedNodes:TXMLNodeArray;//f2C
    FIsDocElement:Boolean;//f30
    FReadOnly:Boolean;//f31
    FOnHostChildNotify:TNodeListNotification;//f38
    FOnHostAttrNotify:TNodeListNotification;//f40
    destructor Destroy(); virtual;//00660AD4
    function CreateAttributeNode(const ADOMNode:Xmldom.IDOMNode):IXMLNode; virtual;//v0//00661040
    //procedure v4(?:?; ?:?); virtual;//v4//00662110
    procedure SetParentNode(const Value:TXMLNode); virtual;//v8//00663744
    procedure ChildListNotify(Operation:TNodeListOperation; var Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean); virtual;//vC//00661E4C
    procedure DoNodeChange(ChangeType:TNodeChange; BeforeOperation:Boolean); virtual;//v10//00663790
    //procedure v14(?:?); virtual;//v14//00660EA4
    procedure SetChildNodes(const Value:XMLIntf.IXMLNodeList); virtual;//v18//00661A40
    procedure CreateChildList; dynamic;//00661878
    procedure CreateAttributeList; dynamic;//00660CE8
    function _AddRef:Integer; stdcall;//00660B48
    function _Release:Integer; stdcall;//00660B7C
    procedure ClearDocumentRef;//00660BB0
    function GetAttributeNodes:IXMLNodeList;//00660E2C
    function HasAttribute(const Name:Xmldom.DOMString):Boolean;//00660EF8
    function HasAttribute(const Name:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):Boolean;//00660F94
    function GetAttribute(const AttrName:Xmldom.DOMString):OleVariant;//00661074
    function GetAttributeNS(const AttrName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):OleVariant;//00661180
    procedure SetAttributeNS(const AttrName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString; const Value:OleVariant);//006614D4
    procedure AttributeListNotify(Operation:TNodeListOperation; var Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean);//00661640
    function GetHasChildNodes:Boolean;//006619A8
    function GetChildNodes:IXMLNodeList;//006619C8
    function HasChildNode(const ChildTag:Xmldom.DOMString):Boolean;//00661A94
    function HasChildNode(const ChildTag:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):Boolean;//00661AEC
    function AddChild(const TagName:Xmldom.DOMString; Index:Integer):IXMLNode;//00661BD4
    function AddChild(const TagName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString; GenPrefix:Boolean; Index:Integer):IXMLNode;//00661C78
    function AddChild(const TagName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString; NodeClass:TXMLNodeClass; Index:Integer):IXMLNode;//00661D8C
    function CreateCollection(const CollectionClass:TXMLNodeCollectionClass; const ItemInterface:TGUID; const ItemTag:Xmldom.DOMString; ItemNS:Xmldom.DOMString):TXMLNodeCollection;//00661DB4
    procedure RegisterChildNode(const TagName:Xmldom.DOMString; ChildNodeClass:TXMLNodeClass; NamespaceURI:Xmldom.DOMString);//00662240
    function InternalAddChild(NodeClass:TXMLNodeClass; const NodeName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString; Index:Integer):IXMLNode;//006622C4
    function FindNamespaceURI(const TagOrPrefix:Xmldom.DOMString):DOMString;//006623C4
    function FindNamespaceDecl(const NamespaceURI:Xmldom.DOMString):IXMLNode;//006625D4
    procedure DeclareNamespace(const Prefix:Xmldom.DOMString; const URI:Xmldom.DOMString);//00662784
    function GetPrefixedName(const Name:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):DOMString;//006628A4
    function CloneNode(Deep:Boolean):IXMLNode;//00662988
    procedure AddHostedNode(Node:TXMLNode);//00662AA0
    function NextSibling:IXMLNode;//00662B68
    function PreviousSibling:IXMLNode;//00662C04
    procedure TransformNode(const stylesheet:XMLIntf.IXMLNode; var output:WideString);//00662C9C
    procedure TransformNode(const stylesheet:XMLIntf.IXMLNode; const output:XMLIntf.IXMLDocument);//00662D10
    function NestingLevel:Integer;//00662D9C
    procedure CheckReadOnly;//00662E38
    procedure CheckTextNode;//00662E88
    function GetText:DOMString;//00663030
    procedure SetText(const Value:Xmldom.DOMString);//006630E8
    function GetNodeValue:OleVariant;//006631A8
    procedure SetNodeValue(const Value:OleVariant);//0066323C
    procedure SetChildValue(const IndexOrName:OleVariant; const Value:OleVariant);//006633C4
    function GetXML:DOMString;//00663434
    function GetDOMNode:IDOMNode;//00663490
    function DOMElement:IDOMElement;//006634A4
    function GetNodeType:TNodeType;//00663520
    function GetLocalName:DOMString;//0066353C
    function GetNamespaceURI:DOMString;//0066355C
    function GetNodeName:DOMString;//0066357C
    function GetPrefix:DOMString;//0066359C
    function GetIsTextElement:Boolean;//006635BC
    function GetOwnerDocument:IXMLDocument;//00663698
    function GetCollection:IXMLNodeCollection;//006636D0
    function GetParentNode:IXMLNode;//006636EC
    function GetChildNodeClasses:TNodeClassArray;//00663708
    procedure RegisterChildNodes(const TagNames:array[$0..-$1] of Xml.Xmldom.DOMString; const _Dv_:$0..-$1; const NodeClasses:array[$0..-$1] of TXMLNodeClass; const _Dv_:$0..-$1);//006637BC
  end;
  TXMLNodeCollection = class(TXMLNode)
  published
    procedure AfterConstruction;//00663860
  public
    FItemInterface:TGUID;//f50
    FItemNS:string;//f60
    FItemTag:string;//f64
    FList:IXMLNodeList;//f68
    procedure AfterConstruction; virtual;//00663860
    procedure ChildListNotify(Operation:TNodeListOperation; var Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean); virtual;//vC//00663F3C
    procedure SetChildNodes(const Value:XMLIntf.IXMLNodeList); virtual;//v18//00663918
    function GetList:IXMLNodeList; virtual;//v1C//006638C0
    function AddItem(Index:Integer):IXMLNode; virtual;//v20//00664024
    procedure CreateItemList(CheckFirst:Boolean);//00663940
    function IsCollectionItem(const Node:XMLIntf.IXMLNode):Boolean;//00663C00
    procedure InsertInCollection(Node:XMLIntf.IXMLNode; Index:Integer);//00663D0C
    procedure UpdateCollectionList(Operation:TNodeListOperation; var Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean);//00663F78
    procedure Delete(Index:Integer);//00664090
    function Remove(const AItem:XMLIntf.IXMLNode):Integer;//00664140
    procedure Clear;//006641B8
    function GetCount:Integer;//00664228
    function GetNode(Index:Integer):IXMLNode;//00664278
  end;
  TNodeChangeEvent = procedure(const Node:IXMLNode; ChangeType:TNodeChange) of object;;
  TXMLDocumentSource = (xdsNone, xdsXMLProperty, xdsXMLData, xdsFile, xdsStream);
  TXMLDocument = class(TComponent)
  published
    procedure SaveToStream(Stream:TStream);//00665124
    procedure SaveToFile(AFileName:string);//00664F10
    procedure Resync;//00664E64
    procedure SaveToXML(var XML:string);//0066520C
    function GeneratePrefix(Node:IXMLNode):string;//006659B0
    procedure SaveToXML(var XML:UTF8String);//006652FC
    procedure SaveToXML(var XML:WideString);//00665284
    procedure RegisterDocBinding(TagName:string; DocNodeClass:TClass; NamespaceURI:string);//00665D24
    constructor Create;//0066431C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure AfterConstruction;//00664434
    destructor Destroy();//00664354
    function CreateElement(TagOrData:string; NamespaceURI:string):IXMLNode;//00665AF4
    function AddChild(TagName:string; NamespaceURI:string):IXMLNode;//00665A8C
    function NewInstance:TObject;//00664424
    function CreateNode(NameOrData:string; NodeType:TNodeType; AddlData:string):IXMLNode;//00665B18
    function AddChild(TagName:string):IXMLNode;//00665A2C
    procedure LoadFromXML(XML:AnsiString);//006651B8
    procedure LoadFromStream(Stream:TStream; EncodingType:TXMLEncodingType);//006650F4
    procedure Refresh;//00664D6C
    procedure LoadFromXML(XML:string);//00665188
    //procedure GetDocBinding(TagName:string; DocNodeClass:TClass; ?:?; NamespaceURI:string);//00665C0C
    function IsEmptyDoc:Boolean;//00665BE0
    procedure LoadFromFile(AFileName:string);//00664E78
  public
    FXMLData:string;//f40
    FSrcStream:TStream;//f44
    FXMLStrings:TStringList;//f48
    FDOMVendor:TDOMVendor;//f4C
    FRefCount:Integer;//f50
    FDocBindingInfo:TNodeClassArray;//f54
    FDOMPersist:IDOMPersist;//f58
    FDOMDocument:IDOMDocument;//f5C
    FDOMImplementation:IDOMImplementation;//f60
    FDOMParseOptions:IDOMParseOptions;//f64
    FParseOptions:TParseOptions;//f68
    FDocumentNode:IXMLNode;//f6C
    FFileName:string;//f70
    FOptions:TXMLDocOptions;//f74
    FPrefixID:Integer;//f78
    FNSPrefixBase:string;//f7C
    FNodeIndentStr:string;//f80
    FStreamedActive:Boolean;//f84
    FModified:Integer;//f88
    FXMLStrRead:Integer;//f8C
    FDocSource:TXMLDocumentSource;//f90
    FAfterClose:TNotifyEvent;//f98
    FBeforeOpen:TNotifyEvent;//fA0
    FBeforeClose:TNotifyEvent;//fA8
    FAfterOpen:TNotifyEvent;//fB0
    fB2:word;//fB2
    fB4:dword;//fB4
    FOwnerIsComponent:Boolean;//fB8
    FBeforeNodeChange:TNodeChangeEvent;//fC0
    FAfterNodeChange:TNodeChangeEvent;//fC8
    FOnAsyncLoad:TAsyncEventHandler;//fD0
    fD2:word;//fD2
    fD4:dword;//fD4
    procedure AfterConstruction; virtual;//00664434
    function NewInstance:TObject; virtual;//00664424
    destructor Destroy(); virtual;//00664354
    procedure DefineProperties(Filer:Classes.TFiler); virtual;//v4//0066471C
    procedure Loaded; virtual;//v10//00664534
    constructor Create; virtual;//v3C//0066431C
    function GetActive:Boolean; virtual;//v44//0066481C
    procedure SetActive(Value:Boolean); virtual;//v48//00664824
    //function v4C:?; virtual;//v4C//00665A28
    procedure SaveToFile(AFileName:string); dynamic;//00664F10
    //procedure sub_00664D14(?:?); dynamic;//00664D14
    procedure sub_006649A4; dynamic;//006649A4
    procedure DoBeforeClose; dynamic;//00666F44
    procedure DoAfterOpen; dynamic;//00666F24
    procedure sub_00666F04; dynamic;//00666F04
    procedure DoBeforeOpen; dynamic;//00666EE4
    procedure sub_00665684; dynamic;//00665684
    procedure sub_006657F0; dynamic;//006657F0
    function _AddRef:Integer; stdcall;//006644D4
    function _Release:Integer; stdcall;//006644F4
    procedure ReadDOMVendor(Reader:Classes.TReader);//006645C8
    procedure WriteDOMVendor(Writer:Classes.TWriter);//00664694
    function IsStoredXML(Value:TStrings):Boolean;//0066478C
    function NodeIndentStored(Value:string):Boolean;//006647C4
    //function GetXML:?;//006650CC
    procedure SetXML(Value:TStrings);//006650E8
    procedure SaveToUTF8String(var XML:UTF8String);//006653B8
    function GetDOMPersist:IDOMPersist;//00665754
    procedure CheckActive;//00665790
    function GetChildNodes:IXMLNodeList;//00665B90
    function GetDOMDocument:IDOMDocument;//00665DF0
    function GetDocumentNode:IXMLNode;//00665E38
    function GetDocumentElement:IXMLNode;//00665ECC
    procedure SetDocumentElement(const Value:XMLIntf.IXMLNode);//00665F94
    procedure SetDOMVendor(const Value:Xmldom.TDOMVendor);//00666084
    //procedure GetFileName(?:?);//00666094
    procedure SetFileName(Value:string);//006660A8
    procedure SetModified(const Value:Boolean);//006660FC
    function GetNodeIndentStr:DOMString;//0066611C
    procedure SetNodeIndentStr(Value:string);//00666134
    function GetOptions:TXMLDocOptions;//0066614C
    procedure SetOptions(Value:TXMLDocOptions);//00666154
    //function GetParseOptions:?;//00666164
    procedure SetParseOptions(Value:TParseOptions);//0066616C
    //procedure SetOnAsyncLoad(Value:TAsyncEventHandler; ?:?; ?:?);//0066617C
    function GetSchemaRef:DOMString;//00666680
    function GetPrologNode:IXMLNode;//006666B4
    function GetPrologValue(PrologItem:TXMLPrologItem; const Default:Xmldom.DOMString):DOMString;//0066686C
    function InternalSetPrologValue(const PrologNode:XMLIntf.IXMLNode; const Value:Variant; PrologItem:TXMLPrologItem):UnicodeString;//00666A54
    procedure SetPrologValue(const Value:Variant; PrologItem:TXMLPrologItem);//00666BC4
    function GetEncoding:DOMString;//00666D94
    procedure SetEncoding(const Value:Xmldom.DOMString);//00666DAC
    function GetVersion:DOMString;//00666E04
    procedure SetVersion(const Value:Xmldom.DOMString);//00666E1C
    function GetStandAlone:DOMString;//00666E74
    procedure SetStandAlone(const Value:Xmldom.DOMString);//00666E8C
    procedure DoNodeChange(const Node:XMLIntf.IXMLNode; ChangeType:TNodeChange; BeforeOperation:Boolean);//00666F64
  end;
  TDOMStringDynArray = array of string;
//elSize = 4
//varType equivalent: var;
  TCalErrForm = class(TForm)
  published
    Label1:TLabel;//f3C0
    btnRetry:TButton;//f3C4
    btnBypass:TButton;//f3C8
    btnCancel:TButton;//f3CC
    StaticText1:TStaticText;//f3D0
    StaticText2:TStaticText;//f3D4
    StaticText3:TStaticText;//f3D8
    StaticText4:TStaticText;//f3DC
    GroupBox1:TGroupBox;//f3E0
    GroupBox2:TGroupBox;//f3E4
    GroupBox3:TGroupBox;//f3E8
    procedure FormCreate(Sender:TObject);//00668D84
    procedure FormShow(Sender:TObject);//00668E38
  public
    Language:TPC_LANG;//f3EC
  end;
  TLicenseKeyData = TLicenseKeyData = record//size=40
Version:Word;//f0
UnusedW:Word;//f2
RecDate:TDateTime;//f4
KeyId:Cardinal;//fC
KeyLocked:Byte;//f10
DummyDate:TDateTime;//f11
DummyByte:Byte;//f19
DummyWord:Word;//f1A
DummyLong:Cardinal;//f1C
GraceDate:TDateTime;//f20
UnSpecified:?;//f28
end;;
  TNewLicenseKey = class(TObject)
  published
    function Verify:Cardinal;//0066A690
  public
    FKeyHandle:Cardinal;//f4
    FKeyId:Integer;//f8
    FKeyType:Integer;//fC
    FKeyDate:TDateTime;//f10
    f14:dword;//f14
    FExpDate:TDateTime;//f18
    FRecDate:TDateTime;//f20
    FGrcDate:TDateTime;//f28
    FKeyData:TLicenseKeyData;//f30
  end;
  TFeatrec = TFeatrec = record//size=10
hasp_id:Cardinal;//f0
feat_id:Integer;//f4
exp_date:Int64;//f8
end;;
  TFeatArr = array of TFeatrec;
//elSize = 10;
  LicenseRecord = LicenseRecord = record//size=200
MsgString:?;//f0
KeyOffset:Byte;//f80
VersionID:Byte;//f81
RecordNum:Word;//f82
Product:Word;//f84
Facility:Word;//f86
Distribut:?;//f88
Licensee:?;//fA2
SerialNum:?;//fD5
ExpDate:?;//fE4
SpareData:?;//fED
Auxiliary:?;//f100
Chckarray:?;//f180
FixData:?;//f0
VarData:?;//f80
AuxData:?;//f100
ChkData:?;//f180
end;;
  TLicenseFile = class(TObject)
  published
    function VerifyLicFile(fn:string; CurrentDate:TDateTime):Integer;//0066B19C
  public
    ActLicRec:LicenseRecord;//f4
    LicExpDate:TDateTime;//f208
    FileName:string;//f210
  end;
  TStartUpForm = class(TForm)
  published
    Panel1:TPanel;//f3C0
    Label1:TLabel;//f3C4
    Label2:TLabel;//f3C8
    Panel2:TPanel;//f3CC
    Image1:TImage;//f3D0
    Label3:TLabel;//f3D4
    OpenDialog1:TOpenDialog;//f3D8
    procedure FormDestroy(Sender:TObject);//0066FC0C
    function VerifyLicensee:Boolean;//0067006C
    procedure FormShow(Sender:TObject);//0066FC34
    procedure FormCreate(Sender:TObject);//0066FA68
  public
    LicenseKey:TNewLicenseKey;//f3DC
  end;
  TCIEntry = TCIEntry = record//size=40
DateTime:TDateTime;//f0
Licensee:string50;//f8
Filler:Byte;//f3B
VerMajor:Byte;//f3C
VerMinor:Byte;//f3D
Reserved:Word;//f3E
end;;
  TFXCIRec = TFXCIRec = record//size=200
CIPD:TCIEntry;//f0
CIIOD:TCIEntry;//f40
CIAD:TCIEntry;//f80
CITD:TCIEntry;//fC0
CICLC:TCIEntry;//f100
CIWR:TCIEntry;//f140
Reserved:?;//f180
end;;
  TFXPCI = class(TObject)
  published
    function IsLicenseeCompany(name:string):Boolean;//00671B70
    procedure InitFXCInfo;//00671A90
    procedure SetConfigInfo(var Section:TCIEntry);//006719C4
    function DecodeFXCIMsg(part:Byte; MsgLen:Byte; MsgData:TMsgData):Boolean;//00671534
    procedure Read(fs:TFileStream; VersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; VersionMinor:Integer);//00671C58
    procedure Save(fs:TFileStream; VersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; VersionMinor:Integer);//00671CAC
    function EncodeFXCIMsg(part:Byte; NegVer:Word; var MsgData:TMsgData; var MsgLen:Byte):Boolean;//00670D4C
  public
    FXCI:TFXCIRec;//f4
    FXCITmp:TFXCIRec;//f204
  end;
    procedure XMLDocError(const Msg:UnicodeString);//0065F1A8
    procedure XMLDocError(const Msg:UnicodeString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);//0065F1C0
    function CreateDOMNode(Doc:Xmldom.IDOMDocument; const NameOrData:Xmldom.DOMString; NodeType:XMLIntf.TNodeType; const AddlData:Xmldom.DOMString):IDOMNode;//0065F1E4
    function IsQuoteChar(C:Char):Boolean;//0065F3D8
    function ExtractAttrValue(const AttrName:UnicodeString; const AttrLine:UnicodeString; const Default:Xmldom.DOMString):DOMString;//0065F3EC
    function ReadAtPos(At:LongInt):LongInt;//0065F498
    function CompareToRead(const AArray:array[$0..-$1] of System.Byte; const _Dv_:$0..-$1):Boolean;//0065F4C8
    function CheckIntegerValue:TXMLEncodingType;//0065F570
    function CheckWordValue:TXMLEncodingType;//0065F7E8
    function DetectCharEncoding(S:Classes.TStream):TXMLEncodingType;//0065F830
    function EncodingMatches(const Encoding:UnicodeString; const EncodingList:array[$0..-$1] of System.UnicodeString; const _Dv_:$0..-$1):Boolean;//0065F908
    procedure CheckEncoding(var XMLData:Xmldom.DOMString; const ValidEncodings:array[$0..-$1] of System.UnicodeString; const _Dv_:$0..-$1);//0065F960
    procedure AddNodeClassInfo(var NodeClasses:TNodeClassArray; const NodeClass:TXMLNodeClass; const TagName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString);//0065FA30
    procedure AppendItem(var AttrStr:UnicodeString; const AttrName:UnicodeString; const AttrValue:UnicodeString);//0065FB38
    //procedure sub_0065FC2C(?:?; ?:?; ?:?; ?:?);//0065FC2C
    //procedure sub_0065FDF0(?:?);//0065FDF0
    //procedure sub_0065FDF4(?:?);//0065FDF4
    procedure InsertFormattingNode(const Len:Integer; const Index:Integer; Break:Boolean);//006604D8
    //function sub_006609A4(?:?):?;//006609A4
    procedure CreateAttributeList;//00660CE8
    //procedure sub_00660EA4(?:?);//00660EA4
    function CreateAttributeNode(const ADOMNode:Xmldom.IDOMNode):IXMLNode;//00661040
    //procedure sub_00661274(?:?; ?:?; ?:?);//00661274
    procedure CreateChildList;//00661878
    procedure SetChildNodes(const Value:XMLIntf.IXMLNodeList);//00661A40
    procedure ChildListNotify(Operation:TNodeListOperation; var Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean);//00661E4C
    //procedure sub_00662110(?:?; ?:?);//00662110
    //procedure sub_00662A14(?:?);//00662A14
    //procedure sub_00662A2C(?:?; ?:?; ?:?);//00662A2C
    procedure sub_00662AF8(?:TXMLNode; ?:TXMLNode);//00662AF8
    //procedure sub_00662E1C(?:?);//00662E1C
    //procedure sub_006632DC(?:?; ?:?; ?:?);//006632DC
    //function sub_00663738(?:?):?;//00663738
    procedure sub_0066373C;//0066373C
    //procedure sub_00663740(?:?; ?:?);//00663740
    procedure SetParentNode(const Value:TXMLNode);//00663744
    //function sub_00663784(?:?):?;//00663784
    //procedure sub_0066378C(?:?; ?:?);//0066378C
    procedure DoNodeChange(ChangeType:TNodeChange; BeforeOperation:Boolean);//00663790
    function GetList:IXMLNodeList;//006638C0
    procedure SetChildNodes(const Value:XMLIntf.IXMLNodeList);//00663918
    procedure ChildListNotify(Operation:TNodeListOperation; var Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean);//00663F3C
    function AddItem(Index:Integer):IXMLNode;//00664024
    procedure Loaded;//00664534
    function DOMVendorStored:Boolean;//006646EC
    procedure DefineProperties(Filer:Classes.TFiler);//0066471C
    function GetActive:Boolean;//0066481C
    procedure SetActive(Value:Boolean);//00664824
    procedure sub_006649A4;//006649A4
    //procedure sub_00664D14(?:?);//00664D14
    //procedure sub_00664FE4(?:?);//00664FE4
    procedure sub_0066500C(?:TXMLDocument);//0066500C
    procedure sub_00665064(?:TXMLDocument);//00665064
    procedure sub_00665684;//00665684
    //procedure sub_0066570C(?:TXMLDocument; ?:?);//0066570C
    procedure sub_006657F0;//006657F0
    procedure sub_0066586C(?:TXMLDocument);//0066586C
    //function sub_00665A28:?;//00665A28
    //function sub_00665D84(?:?):?;//00665D84
    //procedure sub_00665E04(?:?; ?:?);//00665E04
    //procedure sub_00666060(?:?; ?:?);//00666060
    function sub_006660F0(?:TXMLDocument):Boolean;//006660F0
    procedure CheckForDTD;//006661F8
    function FindLocationHint(const AttrName:Xmldom.DOMString; var SchemaLoc:Xmldom.DOMString):Boolean;//00666444
    procedure CheckForXMLSchema;//0066659C
    procedure sub_006666B0;//006666B0
    procedure DoBeforeOpen;//00666EE4
    procedure sub_00666F04;//00666F04
    procedure DoAfterOpen;//00666F24
    procedure DoBeforeClose;//00666F44
    procedure sub_006695D4(?:TNewLicenseKey);//006695D4
    //function sub_00669630(?:TNewLicenseKey):?;//00669630
    //procedure sub_00669674(?:?; ?:?);//00669674
    //function sub_006696E0(?:TNewLicenseKey; ?:?):?;//006696E0
    procedure sub_00669744(?:TNewLicenseKey);//00669744
    //function sub_0066975C(?:TNewLicenseKey):?;//0066975C
    //function sub_0066977C(?:TNewLicenseKey):?;//0066977C
    //function sub_00669A04(?:TNewLicenseKey):?;//00669A04
    //function sub_00669AA0(?:TNewLicenseKey):?;//00669AA0
    //function sub_0066A090(?:TNewLicenseKey):?;//0066A090
    //function sub_0066A580(?:TNewLicenseKey):?;//0066A580
    //function sub_0066A600(?:TNewLicenseKey):?;//0066A600
    //function sub_0066AE98(?:TLicenseFile; ?:string):?;//0066AE98
    //function sub_0066AF48(?:TLicenseFile):?;//0066AF48
    //function sub_0066AF9C(?:TLicenseFile):?;//0066AF9C
    //function sub_0066B010(?:TLicenseFile):?;//0066B010
    //procedure sub_0066B2CC(?:?; ?:?);//0066B2CC
    //procedure sub_0066B33C(?:?; ?:?);//0066B33C
    //procedure sub_0066B3D8(?:?; ?:?);//0066B3D8
    //procedure sub_0066B3F4(?:TLicenseFile; ?:?);//0066B3F4
    //procedure sub_0066B410(?:?; ?:?);//0066B410
    //function sub_0066FCE8:?;//0066FCE8
    procedure sub_0066FD94;//0066FD94
    //function sub_0066FE34(?:TStartUpForm; ?:?):?;//0066FE34
    //procedure sub_00671498(?:?; ?:?);//00671498
    //procedure sub_00671AE0(?:UnicodeString; ?:?);//00671AE0

implementation

{$R *.DFM}

//0065F1A8
procedure XMLDocError(const Msg:UnicodeString);
begin
{*
 0065F1A8    push        ebx
 0065F1A9    mov         ebx,eax
 0065F1AB    mov         ecx,ebx
 0065F1AD    mov         dl,1
 0065F1AF    mov         eax,[0065C854];EXMLDocError
 0065F1B4    call        Exception.Create
 0065F1B9    call        @RaiseExcept
 0065F1BE    pop         ebx
 0065F1BF    ret
*}
end;

//0065F1C0
procedure XMLDocError(const Msg:UnicodeString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);
begin
{*
 0065F1C0    push        ebx
 0065F1C1    push        esi
 0065F1C2    push        edi
 0065F1C3    mov         edi,ecx
 0065F1C5    mov         esi,edx
 0065F1C7    mov         ebx,eax
 0065F1C9    push        esi
 0065F1CA    push        edi
 0065F1CB    mov         ecx,ebx
 0065F1CD    mov         dl,1
 0065F1CF    mov         eax,[0065C854];EXMLDocError
 0065F1D4    call        Exception.CreateFmt
 0065F1D9    call        @RaiseExcept
 0065F1DE    pop         edi
 0065F1DF    pop         esi
 0065F1E0    pop         ebx
 0065F1E1    ret
*}
end;

//0065F1E4
function CreateDOMNode(Doc:Xmldom.IDOMDocument; const NameOrData:Xmldom.DOMString; NodeType:XMLIntf.TNodeType; const AddlData:Xmldom.DOMString):IDOMNode;
begin
{*
 0065F1E4    push        ebp
 0065F1E5    mov         ebp,esp
 0065F1E7    add         esp,0FFFFFFF8
 0065F1EA    push        ebx
 0065F1EB    push        esi
 0065F1EC    xor         ebx,ebx
 0065F1EE    mov         dword ptr [ebp-8],ebx
 0065F1F1    mov         ebx,ecx
 0065F1F3    mov         esi,edx
 0065F1F5    mov         dword ptr [ebp-4],eax
 0065F1F8    mov         eax,dword ptr [ebp-4]
 0065F1FB    call        @IntfAddRef
 0065F200    xor         eax,eax
 0065F202    push        ebp
 0065F203    push        65F3C9
 0065F208    push        dword ptr fs:[eax]
 0065F20B    mov         dword ptr fs:[eax],esp
 0065F20E    movzx       eax,bl
 0065F211    cmp         eax,0B
>0065F214    ja          0065F3AB
 0065F21A    jmp         dword ptr [eax*4+65F221]
 0065F21A    dd          0065F396
 0065F21A    dd          0065F251
 0065F21A    dd          0065F298
 0065F21A    dd          0065F2E2
 0065F21A    dd          0065F302
 0065F21A    dd          0065F322
 0065F21A    dd          0065F396
 0065F21A    dd          0065F33F
 0065F21A    dd          0065F360
 0065F21A    dd          0065F396
 0065F21A    dd          0065F396
 0065F21A    dd          0065F37D
 0065F251    cmp         dword ptr [ebp+0C],0
>0065F255    jne         0065F274
 0065F257    mov         eax,dword ptr [ebp+8]
 0065F25A    call        @IntfClear
 0065F25F    push        eax
 0065F260    push        esi
 0065F261    mov         eax,dword ptr [ebp-4]
 0065F264    push        eax
 0065F265    mov         eax,dword ptr [eax]
 0065F267    call        dword ptr [eax+78]
 0065F26A    call        @CheckAutoResult
>0065F26F    jmp         0065F3AB
 0065F274    mov         eax,dword ptr [ebp+8]
 0065F277    call        @IntfClear
 0065F27C    push        eax
 0065F27D    push        esi
 0065F27E    mov         eax,dword ptr [ebp+0C]
 0065F281    push        eax
 0065F282    mov         eax,dword ptr [ebp-4]
 0065F285    push        eax
 0065F286    mov         eax,dword ptr [eax]
 0065F288    call        dword ptr [eax+0A0]
 0065F28E    call        @CheckAutoResult
>0065F293    jmp         0065F3AB
 0065F298    cmp         dword ptr [ebp+0C],0
>0065F29C    jne         0065F2BE
 0065F29E    mov         eax,dword ptr [ebp+8]
 0065F2A1    call        @IntfClear
 0065F2A6    push        eax
 0065F2A7    push        esi
 0065F2A8    mov         eax,dword ptr [ebp-4]
 0065F2AB    push        eax
 0065F2AC    mov         eax,dword ptr [eax]
 0065F2AE    call        dword ptr [eax+90]
 0065F2B4    call        @CheckAutoResult
>0065F2B9    jmp         0065F3AB
 0065F2BE    mov         eax,dword ptr [ebp+8]
 0065F2C1    call        @IntfClear
 0065F2C6    push        eax
 0065F2C7    push        esi
 0065F2C8    mov         eax,dword ptr [ebp+0C]
 0065F2CB    push        eax
 0065F2CC    mov         eax,dword ptr [ebp-4]
 0065F2CF    push        eax
 0065F2D0    mov         eax,dword ptr [eax]
 0065F2D2    call        dword ptr [eax+0A4]
 0065F2D8    call        @CheckAutoResult
>0065F2DD    jmp         0065F3AB
 0065F2E2    mov         eax,dword ptr [ebp+8]
 0065F2E5    call        @IntfClear
 0065F2EA    push        eax
 0065F2EB    push        esi
 0065F2EC    mov         eax,dword ptr [ebp-4]
 0065F2EF    push        eax
 0065F2F0    mov         eax,dword ptr [eax]
 0065F2F2    call        dword ptr [eax+80]
 0065F2F8    call        @CheckAutoResult
>0065F2FD    jmp         0065F3AB
 0065F302    mov         eax,dword ptr [ebp+8]
 0065F305    call        @IntfClear
 0065F30A    push        eax
 0065F30B    push        esi
 0065F30C    mov         eax,dword ptr [ebp-4]
 0065F30F    push        eax
 0065F310    mov         eax,dword ptr [eax]
 0065F312    call        dword ptr [eax+88]
 0065F318    call        @CheckAutoResult
>0065F31D    jmp         0065F3AB
 0065F322    mov         eax,dword ptr [ebp+8]
 0065F325    call        @IntfClear
 0065F32A    push        eax
 0065F32B    push        esi
 0065F32C    mov         eax,dword ptr [ebp-4]
 0065F32F    push        eax
 0065F330    mov         eax,dword ptr [eax]
 0065F332    call        dword ptr [eax+94]
 0065F338    call        @CheckAutoResult
>0065F33D    jmp         0065F3AB
 0065F33F    mov         eax,dword ptr [ebp+8]
 0065F342    call        @IntfClear
 0065F347    push        eax
 0065F348    mov         eax,dword ptr [ebp+0C]
 0065F34B    push        eax
 0065F34C    push        esi
 0065F34D    mov         eax,dword ptr [ebp-4]
 0065F350    push        eax
 0065F351    mov         eax,dword ptr [eax]
 0065F353    call        dword ptr [eax+8C]
 0065F359    call        @CheckAutoResult
>0065F35E    jmp         0065F3AB
 0065F360    mov         eax,dword ptr [ebp+8]
 0065F363    call        @IntfClear
 0065F368    push        eax
 0065F369    push        esi
 0065F36A    mov         eax,dword ptr [ebp-4]
 0065F36D    push        eax
 0065F36E    mov         eax,dword ptr [eax]
 0065F370    call        dword ptr [eax+84]
 0065F376    call        @CheckAutoResult
>0065F37B    jmp         0065F3AB
 0065F37D    mov         eax,dword ptr [ebp+8]
 0065F380    call        @IntfClear
 0065F385    push        eax
 0065F386    mov         eax,dword ptr [ebp-4]
 0065F389    push        eax
 0065F38A    mov         eax,dword ptr [eax]
 0065F38C    call        dword ptr [eax+7C]
 0065F38F    call        @CheckAutoResult
>0065F394    jmp         0065F3AB
 0065F396    lea         edx,[ebp-8]
 0065F399    mov         eax,[007C4DCC];^SResString376:TResStringRec
 0065F39E    call        LoadResString
 0065F3A3    mov         eax,dword ptr [ebp-8]
 0065F3A6    call        XMLDocError
 0065F3AB    xor         eax,eax
 0065F3AD    pop         edx
 0065F3AE    pop         ecx
 0065F3AF    pop         ecx
 0065F3B0    mov         dword ptr fs:[eax],edx
 0065F3B3    push        65F3D0
 0065F3B8    lea         eax,[ebp-8]
 0065F3BB    call        @UStrClr
 0065F3C0    lea         eax,[ebp-4]
 0065F3C3    call        @IntfClear
 0065F3C8    ret
>0065F3C9    jmp         @HandleFinally
>0065F3CE    jmp         0065F3B8
 0065F3D0    pop         esi
 0065F3D1    pop         ebx
 0065F3D2    pop         ecx
 0065F3D3    pop         ecx
 0065F3D4    pop         ebp
 0065F3D5    ret         8
*}
end;

//0065F3D8
function IsQuoteChar(C:Char):Boolean;
begin
{*
 0065F3D8    cmp         ax,27
>0065F3DC    je          0065F3E7
 0065F3DE    cmp         ax,22
>0065F3E2    je          0065F3E7
 0065F3E4    xor         eax,eax
 0065F3E6    ret
 0065F3E7    mov         al,1
 0065F3E9    ret
*}
end;

//0065F3EC
function ExtractAttrValue(const AttrName:UnicodeString; const AttrLine:UnicodeString; const Default:Xmldom.DOMString):DOMString;
begin
{*
 0065F3EC    push        ebp
 0065F3ED    mov         ebp,esp
 0065F3EF    add         esp,0FFFFFFF4
 0065F3F2    push        ebx
 0065F3F3    push        esi
 0065F3F4    push        edi
 0065F3F5    mov         dword ptr [ebp-0C],ecx
 0065F3F8    mov         dword ptr [ebp-8],edx
 0065F3FB    mov         dword ptr [ebp-4],eax
 0065F3FE    mov         ecx,1
 0065F403    mov         edx,dword ptr [ebp-8]
 0065F406    mov         eax,dword ptr [ebp-4]
 0065F409    call        Pos
 0065F40E    dec         eax
 0065F40F    lea         ebx,[eax+1]
 0065F412    mov         eax,dword ptr [ebp-8]
 0065F415    test        eax,eax
>0065F417    je          0065F41E
 0065F419    sub         eax,4
 0065F41C    mov         eax,dword ptr [eax]
 0065F41E    mov         esi,eax
 0065F420    test        ebx,ebx
>0065F422    jle         0065F484
 0065F424    mov         eax,dword ptr [ebp-4]
 0065F427    test        eax,eax
>0065F429    je          0065F430
 0065F42B    sub         eax,4
 0065F42E    mov         eax,dword ptr [eax]
 0065F430    add         ebx,eax
>0065F432    jmp         0065F435
 0065F434    inc         ebx
 0065F435    cmp         esi,ebx
>0065F437    jle         0065F44D
 0065F439    mov         edx,ebx
 0065F43B    dec         edx
 0065F43C    lea         eax,[ebp-8]
 0065F43F    call        TStringHelper.GetChars
 0065F444    call        IsQuoteChar
 0065F449    test        al,al
>0065F44B    je          0065F434
 0065F44D    cmp         esi,ebx
>0065F44F    jle         0065F48F
 0065F451    lea         edi,[ebx+1]
>0065F454    jmp         0065F457
 0065F456    inc         edi
 0065F457    cmp         esi,edi
>0065F459    jle         0065F46F
 0065F45B    mov         edx,edi
 0065F45D    dec         edx
 0065F45E    lea         eax,[ebp-8]
 0065F461    call        TStringHelper.GetChars
 0065F466    call        IsQuoteChar
 0065F46B    test        al,al
>0065F46D    je          0065F456
 0065F46F    mov         eax,dword ptr [ebp+8]
 0065F472    push        eax
 0065F473    mov         ecx,edi
 0065F475    sub         ecx,ebx
 0065F477    dec         ecx
 0065F478    lea         eax,[ebp-8]
 0065F47B    mov         edx,ebx
 0065F47D    call        00426870
>0065F482    jmp         0065F48F
 0065F484    mov         eax,dword ptr [ebp+8]
 0065F487    mov         edx,dword ptr [ebp-0C]
 0065F48A    call        @UStrAsg
 0065F48F    pop         edi
 0065F490    pop         esi
 0065F491    pop         ebx
 0065F492    mov         esp,ebp
 0065F494    pop         ebp
 0065F495    ret         4
*}
end;

//0065F498
function ReadAtPos(At:LongInt):LongInt;
begin
{*
 0065F498    push        ebp
 0065F499    mov         ebp,esp
 0065F49B    push        ebx
 0065F49C    push        esi
 0065F49D    mov         esi,eax
 0065F49F    mov         eax,dword ptr [ebp+8]
 0065F4A2    mov         eax,dword ptr [eax-8]
 0065F4A5    xor         ecx,ecx
 0065F4A7    mov         edx,esi
 0065F4A9    mov         ebx,dword ptr [eax]
 0065F4AB    call        dword ptr [ebx+1C]
 0065F4AE    mov         eax,dword ptr [ebp+8]
 0065F4B1    lea         edx,[eax-4]
 0065F4B4    mov         eax,dword ptr [ebp+8]
 0065F4B7    mov         eax,dword ptr [eax-8]
 0065F4BA    mov         ecx,4
 0065F4BF    mov         ebx,dword ptr [eax]
 0065F4C1    call        dword ptr [ebx+0C]
 0065F4C4    pop         esi
 0065F4C5    pop         ebx
 0065F4C6    pop         ebp
 0065F4C7    ret
*}
end;

//0065F4C8
function CompareToRead(const AArray:array[$0..-$1] of System.Byte; const _Dv_:$0..-$1):Boolean;
begin
{*
 0065F4C8    push        ebp
 0065F4C9    mov         ebp,esp
 0065F4CB    inc         edx
 0065F4CC    dec         edx
>0065F4CD    je          0065F4DD
 0065F4CF    dec         edx
>0065F4D0    je          0065F4EB
 0065F4D2    dec         edx
>0065F4D3    je          0065F50A
 0065F4D5    dec         edx
>0065F4D6    je          0065F535
>0065F4D8    jmp         0065F56C
 0065F4DD    mov         edx,dword ptr [ebp+8]
 0065F4E0    movzx       edx,byte ptr [edx-4]
 0065F4E4    cmp         dl,byte ptr [eax]
 0065F4E6    sete        al
 0065F4E9    pop         ebp
 0065F4EA    ret
 0065F4EB    mov         edx,dword ptr [ebp+8]
 0065F4EE    movzx       edx,byte ptr [edx-4]
 0065F4F2    cmp         dl,byte ptr [eax]
>0065F4F4    jne         0065F502
 0065F4F6    mov         edx,dword ptr [ebp+8]
 0065F4F9    movzx       edx,byte ptr [edx-3]
 0065F4FD    cmp         dl,byte ptr [eax+1]
>0065F500    je          0065F506
 0065F502    xor         eax,eax
>0065F504    jmp         0065F56E
 0065F506    mov         al,1
 0065F508    pop         ebp
 0065F509    ret
 0065F50A    mov         edx,dword ptr [ebp+8]
 0065F50D    movzx       edx,byte ptr [edx-4]
 0065F511    cmp         dl,byte ptr [eax]
>0065F513    jne         0065F52D
 0065F515    mov         edx,dword ptr [ebp+8]
 0065F518    movzx       edx,byte ptr [edx-3]
 0065F51C    cmp         dl,byte ptr [eax+1]
>0065F51F    jne         0065F52D
 0065F521    mov         edx,dword ptr [ebp+8]
 0065F524    movzx       edx,byte ptr [edx-2]
 0065F528    cmp         dl,byte ptr [eax+2]
>0065F52B    je          0065F531
 0065F52D    xor         eax,eax
>0065F52F    jmp         0065F56E
 0065F531    mov         al,1
 0065F533    pop         ebp
 0065F534    ret
 0065F535    mov         edx,dword ptr [ebp+8]
 0065F538    movzx       edx,byte ptr [edx-4]
 0065F53C    cmp         dl,byte ptr [eax]
>0065F53E    jne         0065F564
 0065F540    mov         edx,dword ptr [ebp+8]
 0065F543    movzx       edx,byte ptr [edx-3]
 0065F547    cmp         dl,byte ptr [eax+1]
>0065F54A    jne         0065F564
 0065F54C    mov         edx,dword ptr [ebp+8]
 0065F54F    movzx       edx,byte ptr [edx-2]
 0065F553    cmp         dl,byte ptr [eax+2]
>0065F556    jne         0065F564
 0065F558    mov         edx,dword ptr [ebp+8]
 0065F55B    movzx       edx,byte ptr [edx-1]
 0065F55F    cmp         dl,byte ptr [eax+3]
>0065F562    je          0065F568
 0065F564    xor         eax,eax
>0065F566    jmp         0065F56E
 0065F568    mov         al,1
 0065F56A    pop         ebp
 0065F56B    ret
 0065F56C    xor         eax,eax
 0065F56E    pop         ebp
 0065F56F    ret
*}
end;

//0065F570
function CheckIntegerValue:TXMLEncodingType;
begin
{*
 0065F570    push        ebp
 0065F571    mov         ebp,esp
 0065F573    push        ebx
 0065F574    xor         ebx,ebx
 0065F576    mov         eax,dword ptr [ebp+8]
 0065F579    push        eax
 0065F57A    mov         eax,65F7B0
 0065F57F    mov         edx,3
 0065F584    call        CompareToRead
 0065F589    pop         ecx
 0065F58A    test        al,al
>0065F58C    je          0065F595
 0065F58E    mov         bl,1
>0065F590    jmp         0065F7AB
 0065F595    mov         eax,dword ptr [ebp+8]
 0065F598    push        eax
 0065F599    mov         eax,65F7B4
 0065F59E    mov         edx,3
 0065F5A3    call        CompareToRead
 0065F5A8    pop         ecx
 0065F5A9    test        al,al
>0065F5AB    je          0065F5B4
 0065F5AD    mov         bl,2
>0065F5AF    jmp         0065F7AB
 0065F5B4    mov         eax,dword ptr [ebp+8]
 0065F5B7    push        eax
 0065F5B8    mov         eax,65F7B8
 0065F5BD    mov         edx,3
 0065F5C2    call        CompareToRead
 0065F5C7    pop         ecx
 0065F5C8    test        al,al
>0065F5CA    je          0065F5D3
 0065F5CC    mov         bl,3
>0065F5CE    jmp         0065F7AB
 0065F5D3    mov         eax,dword ptr [ebp+8]
 0065F5D6    push        eax
 0065F5D7    mov         eax,65F7BC
 0065F5DC    mov         edx,3
 0065F5E1    call        CompareToRead
 0065F5E6    pop         ecx
 0065F5E7    test        al,al
>0065F5E9    je          0065F5F2
 0065F5EB    mov         bl,4
>0065F5ED    jmp         0065F7AB
 0065F5F2    mov         eax,dword ptr [ebp+8]
 0065F5F5    push        eax
 0065F5F6    mov         eax,65F7C0
 0065F5FB    mov         edx,3
 0065F600    call        CompareToRead
 0065F605    pop         ecx
 0065F606    test        al,al
>0065F608    je          0065F611
 0065F60A    mov         bl,9
>0065F60C    jmp         0065F7AB
 0065F611    mov         eax,dword ptr [ebp+8]
 0065F614    push        eax
 0065F615    mov         eax,65F7C4
 0065F61A    mov         edx,3
 0065F61F    call        CompareToRead
 0065F624    pop         ecx
 0065F625    test        al,al
>0065F627    je          0065F630
 0065F629    mov         bl,0A
>0065F62B    jmp         0065F7AB
 0065F630    mov         eax,dword ptr [ebp+8]
 0065F633    push        eax
 0065F634    mov         eax,65F7C8
 0065F639    mov         edx,3
 0065F63E    call        CompareToRead
 0065F643    pop         ecx
 0065F644    test        al,al
>0065F646    je          0065F64F
 0065F648    mov         bl,0B
>0065F64A    jmp         0065F7AB
 0065F64F    mov         eax,dword ptr [ebp+8]
 0065F652    push        eax
 0065F653    mov         eax,65F7CC
 0065F658    mov         edx,3
 0065F65D    call        CompareToRead
 0065F662    pop         ecx
 0065F663    test        al,al
>0065F665    je          0065F66E
 0065F667    mov         bl,0C
>0065F669    jmp         0065F7AB
 0065F66E    mov         eax,dword ptr [ebp+8]
 0065F671    push        eax
 0065F672    mov         eax,65F7D0
 0065F677    mov         edx,3
 0065F67C    call        CompareToRead
 0065F681    pop         ecx
 0065F682    test        al,al
>0065F684    je          0065F761
 0065F68A    mov         eax,dword ptr [ebp+8]
 0065F68D    push        eax
 0065F68E    mov         eax,dword ptr [ebp+8]
 0065F691    mov         eax,dword ptr [eax-0C]
 0065F694    add         eax,4
 0065F697    call        ReadAtPos
 0065F69C    pop         ecx
 0065F69D    cmp         eax,4
>0065F6A0    jne         0065F6C1
 0065F6A2    mov         eax,dword ptr [ebp+8]
 0065F6A5    push        eax
 0065F6A6    mov         eax,65F7D4
 0065F6AB    mov         edx,3
 0065F6B0    call        CompareToRead
 0065F6B5    pop         ecx
 0065F6B6    test        al,al
>0065F6B8    je          0065F6C1
 0065F6BA    mov         bl,1
>0065F6BC    jmp         0065F7AB
 0065F6C1    mov         eax,dword ptr [ebp+8]
 0065F6C4    push        eax
 0065F6C5    mov         eax,dword ptr [ebp+8]
 0065F6C8    mov         eax,dword ptr [eax-0C]
 0065F6CB    add         eax,4
 0065F6CE    call        ReadAtPos
 0065F6D3    pop         ecx
 0065F6D4    cmp         eax,4
>0065F6D7    jne         0065F7AB
 0065F6DD    mov         eax,dword ptr [ebp+8]
 0065F6E0    push        eax
 0065F6E1    mov         eax,65F7D8
 0065F6E6    mov         edx,3
 0065F6EB    call        CompareToRead
 0065F6F0    pop         ecx
 0065F6F1    test        al,al
>0065F6F3    je          0065F7AB
 0065F6F9    mov         eax,dword ptr [ebp+8]
 0065F6FC    push        eax
 0065F6FD    mov         eax,dword ptr [ebp+8]
 0065F700    mov         eax,dword ptr [eax-0C]
 0065F703    add         eax,8
 0065F706    call        ReadAtPos
 0065F70B    pop         ecx
 0065F70C    cmp         eax,4
>0065F70F    jne         0065F7AB
 0065F715    mov         eax,dword ptr [ebp+8]
 0065F718    push        eax
 0065F719    mov         eax,65F7DC
 0065F71E    mov         edx,3
 0065F723    call        CompareToRead
 0065F728    pop         ecx
 0065F729    test        al,al
>0065F72B    je          0065F7AB
 0065F72D    mov         eax,dword ptr [ebp+8]
 0065F730    push        eax
 0065F731    mov         eax,dword ptr [ebp+8]
 0065F734    mov         eax,dword ptr [eax-0C]
 0065F737    add         eax,0C
 0065F73A    call        ReadAtPos
 0065F73F    pop         ecx
 0065F740    cmp         eax,4
>0065F743    jne         0065F7AB
 0065F745    mov         eax,dword ptr [ebp+8]
 0065F748    push        eax
 0065F749    mov         eax,65F7E0
 0065F74E    mov         edx,3
 0065F753    call        CompareToRead
 0065F758    pop         ecx
 0065F759    test        al,al
>0065F75B    je          0065F7AB
 0065F75D    mov         bl,8
>0065F75F    jmp         0065F7AB
 0065F761    mov         eax,dword ptr [ebp+8]
 0065F764    push        eax
 0065F765    mov         eax,65F7D8
 0065F76A    mov         edx,3
 0065F76F    call        CompareToRead
 0065F774    pop         ecx
 0065F775    test        al,al
>0065F777    je          0065F7AB
 0065F779    mov         eax,dword ptr [ebp+8]
 0065F77C    push        eax
 0065F77D    mov         eax,dword ptr [ebp+8]
 0065F780    mov         eax,dword ptr [eax-0C]
 0065F783    add         eax,4
 0065F786    call        ReadAtPos
 0065F78B    pop         ecx
 0065F78C    cmp         eax,4
>0065F78F    jne         0065F7AB
 0065F791    mov         eax,dword ptr [ebp+8]
 0065F794    push        eax
 0065F795    mov         eax,65F7E4
 0065F79A    mov         edx,3
 0065F79F    call        CompareToRead
 0065F7A4    pop         ecx
 0065F7A5    test        al,al
>0065F7A7    je          0065F7AB
 0065F7A9    mov         bl,2
 0065F7AB    mov         eax,ebx
 0065F7AD    pop         ebx
 0065F7AE    pop         ebp
 0065F7AF    ret
*}
end;

//0065F7E8
function CheckWordValue:TXMLEncodingType;
begin
{*
 0065F7E8    push        ebp
 0065F7E9    mov         ebp,esp
 0065F7EB    mov         eax,dword ptr [ebp+8]
 0065F7EE    push        eax
 0065F7EF    mov         eax,65F828
 0065F7F4    mov         edx,3
 0065F7F9    call        CompareToRead
 0065F7FE    pop         ecx
 0065F7FF    test        al,al
>0065F801    je          0065F807
 0065F803    mov         al,5
 0065F805    pop         ebp
 0065F806    ret
 0065F807    mov         eax,dword ptr [ebp+8]
 0065F80A    push        eax
 0065F80B    mov         eax,65F82C
 0065F810    mov         edx,3
 0065F815    call        CompareToRead
 0065F81A    pop         ecx
 0065F81B    test        al,al
>0065F81D    je          0065F823
 0065F81F    mov         al,6
>0065F821    jmp         0065F825
 0065F823    xor         eax,eax
 0065F825    pop         ebp
 0065F826    ret
*}
end;

//0065F830
function DetectCharEncoding(S:Classes.TStream):TXMLEncodingType;
begin
{*
 0065F830    push        ebp
 0065F831    mov         ebp,esp
 0065F833    add         esp,0FFFFFFEC
 0065F836    push        ebx
 0065F837    push        esi
 0065F838    mov         dword ptr [ebp-8],eax
 0065F83B    lea         esi,[ebp-0C]
 0065F83E    mov         byte ptr [ebp-0D],0
 0065F842    mov         eax,dword ptr [ebp-8]
 0065F845    call        TStream.GetPosition
 0065F84A    mov         dword ptr [ebp-14],eax
 0065F84D    xor         eax,eax
 0065F84F    push        ebp
 0065F850    push        65F8F0
 0065F855    push        dword ptr fs:[eax]
 0065F858    mov         dword ptr fs:[eax],esp
 0065F85B    xor         eax,eax
 0065F85D    mov         dword ptr [esi],eax
>0065F85F    jmp         0065F8C0
 0065F861    mov         ebx,dword ptr [esi]
 0065F863    and         ebx,80000003
>0065F869    jns         0065F870
 0065F86B    dec         ebx
 0065F86C    or          ebx,0FFFFFFFC
 0065F86F    inc         ebx
 0065F870    test        ebx,ebx
>0065F872    jne         0065F880
 0065F874    push        ebp
 0065F875    call        CheckIntegerValue
 0065F87A    pop         ecx
 0065F87B    mov         byte ptr [ebp-0D],al
>0065F87E    jmp         0065F89F
 0065F880    cmp         ebx,2
>0065F883    jne         0065F89F
 0065F885    push        ebp
 0065F886    call        CheckIntegerValue
 0065F88B    pop         ecx
 0065F88C    mov         byte ptr [ebp-0D],al
 0065F88F    cmp         byte ptr [ebp-0D],0
>0065F893    jne         0065F89F
 0065F895    push        ebp
 0065F896    call        CheckWordValue
 0065F89B    pop         ecx
 0065F89C    mov         byte ptr [ebp-0D],al
 0065F89F    cmp         byte ptr [ebp-0D],0
>0065F8A3    jne         0065F8BE
 0065F8A5    push        ebp
 0065F8A6    mov         eax,65F904
 0065F8AB    mov         edx,2
 0065F8B0    call        CompareToRead
 0065F8B5    pop         ecx
 0065F8B6    test        al,al
>0065F8B8    je          0065F8BE
 0065F8BA    mov         byte ptr [ebp-0D],7
 0065F8BE    inc         dword ptr [esi]
 0065F8C0    cmp         byte ptr [ebp-0D],0
>0065F8C4    jne         0065F8D4
 0065F8C6    push        ebp
 0065F8C7    mov         eax,dword ptr [esi]
 0065F8C9    call        ReadAtPos
 0065F8CE    pop         ecx
 0065F8CF    cmp         eax,4
>0065F8D2    je          0065F861
 0065F8D4    xor         eax,eax
 0065F8D6    pop         edx
 0065F8D7    pop         ecx
 0065F8D8    pop         ecx
 0065F8D9    mov         dword ptr fs:[eax],edx
 0065F8DC    push        65F8F7
 0065F8E1    mov         eax,dword ptr [ebp-14]
 0065F8E4    cdq
 0065F8E5    push        edx
 0065F8E6    push        eax
 0065F8E7    mov         eax,dword ptr [ebp-8]
 0065F8EA    call        TStream.SetPosition
 0065F8EF    ret
>0065F8F0    jmp         @HandleFinally
>0065F8F5    jmp         0065F8E1
 0065F8F7    movzx       eax,byte ptr [ebp-0D]
 0065F8FB    pop         esi
 0065F8FC    pop         ebx
 0065F8FD    mov         esp,ebp
 0065F8FF    pop         ebp
 0065F900    ret
*}
end;

//0065F908
function EncodingMatches(const Encoding:UnicodeString; const EncodingList:array[$0..-$1] of System.UnicodeString; const _Dv_:$0..-$1):Boolean;
begin
{*
 0065F908    push        ebx
 0065F909    push        esi
 0065F90A    push        edi
 0065F90B    push        ebp
 0065F90C    add         esp,0FFFFFFF8
 0065F90F    mov         dword ptr [esp],edx
 0065F912    mov         esi,eax
 0065F914    mov         ebp,ecx
 0065F916    test        ebp,ebp
>0065F918    jl          0065F956
 0065F91A    inc         ebp
 0065F91B    mov         edi,dword ptr [esp]
 0065F91E    mov         ebx,dword ptr [edi]
 0065F920    cmp         ebx,esi
>0065F922    jne         0065F928
 0065F924    mov         al,1
>0065F926    jmp         0065F948
 0065F928    test        ebx,ebx
>0065F92A    je          0065F930
 0065F92C    test        esi,esi
>0065F92E    jne         0065F934
 0065F930    xor         eax,eax
>0065F932    jmp         0065F948
 0065F934    mov         edx,esi
 0065F936    mov         dword ptr [esp+4],ebx
 0065F93A    mov         eax,dword ptr [esp+4]
 0065F93E    call        CompareText
 0065F943    test        eax,eax
 0065F945    sete        al
 0065F948    test        al,al
>0065F94A    je          0065F950
 0065F94C    mov         al,1
>0065F94E    jmp         0065F958
 0065F950    add         edi,4
 0065F953    dec         ebp
>0065F954    jne         0065F91E
 0065F956    xor         eax,eax
 0065F958    pop         ecx
 0065F959    pop         edx
 0065F95A    pop         ebp
 0065F95B    pop         edi
 0065F95C    pop         esi
 0065F95D    pop         ebx
 0065F95E    ret
*}
end;

//0065F960
procedure CheckEncoding(var XMLData:Xmldom.DOMString; const ValidEncodings:array[$0..-$1] of System.UnicodeString; const _Dv_:$0..-$1);
begin
{*
 0065F960    push        ebp
 0065F961    mov         ebp,esp
 0065F963    push        0
 0065F965    push        0
 0065F967    push        ebx
 0065F968    push        esi
 0065F969    push        edi
 0065F96A    mov         edi,ecx
 0065F96C    mov         esi,edx
 0065F96E    mov         ebx,eax
 0065F970    xor         eax,eax
 0065F972    push        ebp
 0065F973    push        65FA02
 0065F978    push        dword ptr fs:[eax]
 0065F97B    mov         dword ptr fs:[eax],esp
 0065F97E    lea         eax,[ebp-4]
 0065F981    push        eax
 0065F982    lea         eax,[ebp-8]
 0065F985    push        eax
 0065F986    mov         eax,dword ptr [ebx]
 0065F988    mov         ecx,32
 0065F98D    mov         edx,1
 0065F992    call        @UStrCopy
 0065F997    mov         edx,dword ptr [ebp-8]
 0065F99A    xor         ecx,ecx
 0065F99C    mov         eax,65FA1C;'encoding'
 0065F9A1    call        ExtractAttrValue
 0065F9A6    cmp         dword ptr [ebp-4],0
>0065F9AA    je          0065F9E7
 0065F9AC    mov         edx,esi
 0065F9AE    mov         ecx,edi
 0065F9B0    mov         eax,dword ptr [ebp-4]
 0065F9B3    call        EncodingMatches
 0065F9B8    test        al,al
>0065F9BA    jne         0065F9E7
 0065F9BC    mov         edx,dword ptr [ebx]
 0065F9BE    mov         ecx,1
 0065F9C3    mov         eax,65FA1C;'encoding'
 0065F9C8    call        Pos
 0065F9CD    mov         edx,eax
 0065F9CF    mov         eax,dword ptr [ebp-4]
 0065F9D2    test        eax,eax
>0065F9D4    je          0065F9DB
 0065F9D6    sub         eax,4
 0065F9D9    mov         eax,dword ptr [eax]
 0065F9DB    add         eax,0C
 0065F9DE    mov         ecx,ebx
 0065F9E0    dec         edx
 0065F9E1    xchg        eax,ecx
 0065F9E2    call        @UStrDelete
 0065F9E7    xor         eax,eax
 0065F9E9    pop         edx
 0065F9EA    pop         ecx
 0065F9EB    pop         ecx
 0065F9EC    mov         dword ptr fs:[eax],edx
 0065F9EF    push        65FA09
 0065F9F4    lea         eax,[ebp-8]
 0065F9F7    mov         edx,2
 0065F9FC    call        @UStrArrayClr
 0065FA01    ret
>0065FA02    jmp         @HandleFinally
>0065FA07    jmp         0065F9F4
 0065FA09    pop         edi
 0065FA0A    pop         esi
 0065FA0B    pop         ebx
 0065FA0C    pop         ecx
 0065FA0D    pop         ecx
 0065FA0E    pop         ebp
 0065FA0F    ret
*}
end;

//0065FA30
procedure AddNodeClassInfo(var NodeClasses:TNodeClassArray; const NodeClass:TXMLNodeClass; const TagName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString);
begin
{*
 0065FA30    push        ebp
 0065FA31    mov         ebp,esp
 0065FA33    add         esp,0FFFFFFF4
 0065FA36    push        ebx
 0065FA37    push        esi
 0065FA38    push        edi
 0065FA39    mov         dword ptr [ebp-8],ecx
 0065FA3C    mov         dword ptr [ebp-4],edx
 0065FA3F    mov         ebx,eax
 0065FA41    mov         eax,dword ptr [ebx]
 0065FA43    test        eax,eax
>0065FA45    je          0065FA4C
 0065FA47    sub         eax,4
 0065FA4A    mov         eax,dword ptr [eax]
 0065FA4C    mov         dword ptr [ebp-0C],eax
 0065FA4F    mov         edi,dword ptr [ebp-0C]
 0065FA52    dec         edi
 0065FA53    test        edi,edi
>0065FA55    jl          0065FAE9
 0065FA5B    inc         edi
 0065FA5C    xor         esi,esi
 0065FA5E    lea         eax,[esi+esi*2]
 0065FA61    mov         edx,dword ptr [ebx]
 0065FA63    mov         eax,dword ptr [edx+eax*4]
 0065FA66    mov         edx,dword ptr [ebp-8]
 0065FA69    call        @UStrEqual
>0065FA6E    jne         0065FAE1
 0065FA70    lea         eax,[esi+esi*2]
 0065FA73    mov         edx,dword ptr [ebx]
 0065FA75    mov         eax,dword ptr [edx+eax*4+4]
 0065FA79    mov         edx,dword ptr [ebp+8]
 0065FA7C    call        @UStrEqual
>0065FA81    jne         0065FAE1
 0065FA83    cmp         dword ptr [ebp-4],0
>0065FA87    je          0065FA9A
 0065FA89    lea         eax,[esi+esi*2]
 0065FA8C    mov         edx,dword ptr [ebx]
 0065FA8E    mov         ecx,dword ptr [ebp-4]
 0065FA91    mov         dword ptr [edx+eax*4+8],ecx
>0065FA95    jmp         0065FB2D
 0065FA9A    mov         edi,dword ptr [ebp-0C]
 0065FA9D    sub         edi,2
 0065FAA0    sub         edi,esi
>0065FAA2    jl          0065FAC5
 0065FAA4    inc         edi
 0065FAA5    lea         eax,[esi+esi*2]
 0065FAA8    mov         edx,dword ptr [ebx]
 0065FAAA    lea         eax,[edx+eax*4]
 0065FAAD    lea         edx,[esi+esi*2]
 0065FAB0    mov         ecx,dword ptr [ebx]
 0065FAB2    lea         edx,[ecx+edx*4+0C]
 0065FAB6    mov         ecx,dword ptr ds:[65D158];TNodeClassInfo
 0065FABC    call        @CopyRecord
 0065FAC1    inc         esi
 0065FAC2    dec         edi
>0065FAC3    jne         0065FAA5
 0065FAC5    mov         eax,dword ptr [ebp-0C]
 0065FAC8    dec         eax
 0065FAC9    push        eax
 0065FACA    mov         eax,ebx
 0065FACC    mov         ecx,1
 0065FAD1    mov         edx,dword ptr ds:[65D1D0];TNodeClassArray
 0065FAD7    call        @DynArraySetLength
 0065FADC    add         esp,4
>0065FADF    jmp         0065FB2D
 0065FAE1    inc         esi
 0065FAE2    dec         edi
>0065FAE3    jne         0065FA5E
 0065FAE9    mov         eax,dword ptr [ebp-0C]
 0065FAEC    inc         eax
 0065FAED    push        eax
 0065FAEE    mov         eax,ebx
 0065FAF0    mov         ecx,1
 0065FAF5    mov         edx,dword ptr ds:[65D1D0];TNodeClassArray
 0065FAFB    call        @DynArraySetLength
 0065FB00    add         esp,4
 0065FB03    mov         esi,dword ptr [ebp-0C]
 0065FB06    lea         esi,[esi+esi*2]
 0065FB09    mov         eax,dword ptr [ebx]
 0065FB0B    lea         eax,[eax+esi*4]
 0065FB0E    mov         edx,dword ptr [ebp-8]
 0065FB11    call        @UStrAsg
 0065FB16    mov         eax,dword ptr [ebx]
 0065FB18    mov         edx,dword ptr [ebp-4]
 0065FB1B    mov         dword ptr [eax+esi*4+8],edx
 0065FB1F    mov         eax,dword ptr [ebx]
 0065FB21    lea         eax,[eax+esi*4+4]
 0065FB25    mov         edx,dword ptr [ebp+8]
 0065FB28    call        @UStrAsg
 0065FB2D    pop         edi
 0065FB2E    pop         esi
 0065FB2F    pop         ebx
 0065FB30    mov         esp,ebp
 0065FB32    pop         ebp
 0065FB33    ret         4
*}
end;

//0065FB38
procedure AppendItem(var AttrStr:UnicodeString; const AttrName:UnicodeString; const AttrValue:UnicodeString);
begin
{*
 0065FB38    push        ebp
 0065FB39    mov         ebp,esp
 0065FB3B    add         esp,0FFFFFFEC
 0065FB3E    push        ebx
 0065FB3F    push        esi
 0065FB40    push        edi
 0065FB41    xor         ebx,ebx
 0065FB43    mov         dword ptr [ebp-4],ebx
 0065FB46    mov         esi,ecx
 0065FB48    mov         edi,edx
 0065FB4A    mov         ebx,eax
 0065FB4C    xor         eax,eax
 0065FB4E    push        ebp
 0065FB4F    push        65FBB3
 0065FB54    push        dword ptr fs:[eax]
 0065FB57    mov         dword ptr fs:[eax],esp
 0065FB5A    test        esi,esi
>0065FB5C    je          0065FB9D
 0065FB5E    cmp         dword ptr [ebx],0
>0065FB61    je          0065FB6F
 0065FB63    mov         eax,ebx
 0065FB65    mov         edx,65FBD0;' '
 0065FB6A    call        @UStrCat
 0065FB6F    lea         eax,[ebp-4]
 0065FB72    push        eax
 0065FB73    mov         dword ptr [ebp-14],edi
 0065FB76    mov         byte ptr [ebp-10],11
 0065FB7A    mov         dword ptr [ebp-0C],esi
 0065FB7D    mov         byte ptr [ebp-8],11
 0065FB81    lea         edx,[ebp-14]
 0065FB84    mov         ecx,1
 0065FB89    mov         eax,65FBE0;'%s="%s"'
 0065FB8E    call        Format
 0065FB93    mov         edx,dword ptr [ebp-4]
 0065FB96    mov         eax,ebx
 0065FB98    call        @UStrCat
 0065FB9D    xor         eax,eax
 0065FB9F    pop         edx
 0065FBA0    pop         ecx
 0065FBA1    pop         ecx
 0065FBA2    mov         dword ptr fs:[eax],edx
 0065FBA5    push        65FBBA
 0065FBAA    lea         eax,[ebp-4]
 0065FBAD    call        @UStrClr
 0065FBB2    ret
>0065FBB3    jmp         @HandleFinally
>0065FBB8    jmp         0065FBAA
 0065FBBA    pop         edi
 0065FBBB    pop         esi
 0065FBBC    pop         ebx
 0065FBBD    mov         esp,ebp
 0065FBBF    pop         ebp
 0065FBC0    ret
*}
end;

//0065FC2C
{*procedure sub_0065FC2C(?:?; ?:?; ?:?; ?:?);
begin
 0065FC2C    push        ebp
 0065FC2D    mov         ebp,esp
 0065FC2F    add         esp,0FFFFFFEC
 0065FC32    push        ebx
 0065FC33    push        esi
 0065FC34    push        edi
 0065FC35    mov         byte ptr [ebp-7],cl
 0065FC38    mov         word ptr [ebp-6],dx
 0065FC3C    mov         dword ptr [ebp-4],eax
 0065FC3F    mov         eax,dword ptr [ebp+8]
 0065FC42    mov         eax,dword ptr [eax]
 0065FC44    test        eax,eax
>0065FC46    je          0065FC4D
 0065FC48    sub         eax,4
 0065FC4B    mov         eax,dword ptr [eax]
 0065FC4D    mov         dword ptr [ebp-10],eax
 0065FC50    xor         eax,eax
 0065FC52    mov         dword ptr [ebp-14],eax
 0065FC55    mov         edi,1
 0065FC5A    mov         eax,dword ptr [ebp-4]
 0065FC5D    test        eax,eax
>0065FC5F    je          0065FC66
 0065FC61    sub         eax,4
 0065FC64    mov         eax,dword ptr [eax]
 0065FC66    mov         dword ptr [ebp-0C],eax
 0065FC69    mov         esi,dword ptr [ebp-0C]
 0065FC6C    test        esi,esi
>0065FC6E    jle         0065FCDF
 0065FC70    mov         ebx,1
 0065FC75    mov         eax,dword ptr [ebp-4]
 0065FC78    movzx       eax,word ptr [eax+ebx*2-2]
 0065FC7D    cmp         ax,word ptr [ebp-6]
>0065FC81    jne         0065FCDB
 0065FC83    cmp         ebx,edi
>0065FC85    jg          0065FC8D
 0065FC87    test        byte ptr [ebp-7],2
>0065FC8B    jne         0065FCD8
 0065FC8D    mov         eax,dword ptr [ebp-14]
 0065FC90    cmp         eax,dword ptr [ebp-10]
>0065FC93    jne         0065FCBA
 0065FC95    mov         eax,dword ptr [ebp-10]
 0065FC98    add         eax,eax
 0065FC9A    add         eax,8
 0065FC9D    mov         dword ptr [ebp-10],eax
 0065FCA0    mov         eax,dword ptr [ebp-10]
 0065FCA3    push        eax
 0065FCA4    mov         eax,dword ptr [ebp+8]
 0065FCA7    mov         ecx,1
 0065FCAC    mov         edx,dword ptr ds:[65FBF0];TDOMStringDynArray
 0065FCB2    call        @DynArraySetLength
 0065FCB7    add         esp,4
 0065FCBA    mov         eax,dword ptr [ebp-4]
 0065FCBD    lea         edx,[eax+edi*2-2]
 0065FCC1    mov         eax,dword ptr [ebp+8]
 0065FCC4    mov         eax,dword ptr [eax]
 0065FCC6    mov         ecx,dword ptr [ebp-14]
 0065FCC9    lea         eax,[eax+ecx*4]
 0065FCCC    mov         ecx,ebx
 0065FCCE    sub         ecx,edi
 0065FCD0    call        @UStrFromPWCharLen
 0065FCD5    inc         dword ptr [ebp-14]
 0065FCD8    lea         edi,[ebx+1]
 0065FCDB    inc         ebx
 0065FCDC    dec         esi
>0065FCDD    jne         0065FC75
 0065FCDF    cmp         edi,dword ptr [ebp-0C]
>0065FCE2    jle         0065FCEA
 0065FCE4    test        byte ptr [ebp-7],2
>0065FCE8    jne         0065FD29
 0065FCEA    mov         ebx,dword ptr [ebp-14]
 0065FCED    inc         ebx
 0065FCEE    cmp         ebx,dword ptr [ebp-10]
>0065FCF1    je          0065FD0A
 0065FCF3    push        ebx
 0065FCF4    mov         eax,dword ptr [ebp+8]
 0065FCF7    mov         ecx,1
 0065FCFC    mov         edx,dword ptr ds:[65FBF0];TDOMStringDynArray
 0065FD02    call        @DynArraySetLength
 0065FD07    add         esp,4
 0065FD0A    mov         eax,dword ptr [ebp-4]
 0065FD0D    lea         edx,[eax+edi*2-2]
 0065FD11    mov         eax,dword ptr [ebp+8]
 0065FD14    mov         eax,dword ptr [eax]
 0065FD16    mov         ecx,dword ptr [ebp-14]
 0065FD19    lea         eax,[eax+ecx*4]
 0065FD1C    mov         ecx,dword ptr [ebp-0C]
 0065FD1F    sub         ecx,edi
 0065FD21    inc         ecx
 0065FD22    call        @UStrFromPWCharLen
>0065FD27    jmp         0065FD4B
 0065FD29    mov         eax,dword ptr [ebp-14]
 0065FD2C    cmp         eax,dword ptr [ebp-10]
>0065FD2F    je          0065FD4B
 0065FD31    mov         eax,dword ptr [ebp-14]
 0065FD34    push        eax
 0065FD35    mov         eax,dword ptr [ebp+8]
 0065FD38    mov         ecx,1
 0065FD3D    mov         edx,dword ptr ds:[65FBF0];TDOMStringDynArray
 0065FD43    call        @DynArraySetLength
 0065FD48    add         esp,4
 0065FD4B    pop         edi
 0065FD4C    pop         esi
 0065FD4D    pop         ebx
 0065FD4E    mov         esp,ebp
 0065FD50    pop         ebp
 0065FD51    ret         4
end;*}

//0065FD54
constructor TXMLNodeList.Create(NotificationProc:TNodeListNotification; DefaultNamespaceURI:string);
begin
{*
 0065FD54    push        ebp
 0065FD55    mov         ebp,esp
 0065FD57    push        ebx
 0065FD58    push        esi
 0065FD59    push        edi
 0065FD5A    test        dl,dl
>0065FD5C    je          0065FD66
 0065FD5E    add         esp,0FFFFFFF0
 0065FD61    call        @ClassCreate
 0065FD66    mov         esi,ecx
 0065FD68    mov         ebx,edx
 0065FD6A    mov         edi,eax
 0065FD6C    mov         dl,1
 0065FD6E    mov         eax,[0046D010];TInterfaceList
 0065FD73    call        TInterfaceList.Create
 0065FD78    mov         edx,eax
 0065FD7A    test        edx,edx
>0065FD7C    je          0065FD81
 0065FD7E    sub         edx,0FFFFFFF0
 0065FD81    lea         eax,[edi+0C]
 0065FD84    call        @IntfCopy
 0065FD89    mov         dword ptr [edi+18],esi
 0065FD8C    mov         eax,dword ptr [ebp+8]
 0065FD8F    mov         dword ptr [edi+10],eax
 0065FD92    mov         eax,dword ptr [ebp+0C]
 0065FD95    mov         dword ptr [edi+14],eax
 0065FD98    lea         eax,[edi+20]
 0065FD9B    mov         edx,dword ptr [ebp+10]
 0065FD9E    call        @UStrAsg
 0065FDA3    xor         edx,edx
 0065FDA5    mov         eax,edi
 0065FDA7    call        TObject.Create
 0065FDAC    mov         eax,edi
 0065FDAE    test        bl,bl
>0065FDB0    je          0065FDC1
 0065FDB2    call        @AfterConstruction
 0065FDB7    pop         dword ptr fs:[0]
 0065FDBE    add         esp,0C
 0065FDC1    mov         eax,edi
 0065FDC3    pop         edi
 0065FDC4    pop         esi
 0065FDC5    pop         ebx
 0065FDC6    pop         ebp
 0065FDC7    ret         0C
*}
end;

//0065FDCC
destructor TXMLNodeList.Destroy();
begin
{*
 0065FDCC    push        ebx
 0065FDCD    push        esi
 0065FDCE    call        @BeforeDestruction
 0065FDD3    mov         ebx,edx
 0065FDD5    mov         esi,eax
 0065FDD7    mov         dl,0FC
 0065FDD9    and         dl,bl
 0065FDDB    mov         eax,esi
 0065FDDD    call        TObject.Destroy
 0065FDE2    test        bl,bl
>0065FDE4    jle         0065FDED
 0065FDE6    mov         eax,esi
 0065FDE8    call        @ClassDestroy
 0065FDED    pop         esi
 0065FDEE    pop         ebx
 0065FDEF    ret
*}
end;

//0065FDF0
{*procedure sub_0065FDF0(?:?);
begin
 0065FDF0    inc         dword ptr [eax+1C]
 0065FDF3    ret
end;*}

//0065FDF4
{*procedure sub_0065FDF4(?:?);
begin
 0065FDF4    dec         dword ptr [eax+1C]
 0065FDF7    ret
end;*}

//0065FDF8
function TXMLNodeList.DoNotify(Operation:TNodeListOperation; const Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean):IXMLNode;
begin
{*
 0065FDF8    push        ebp
 0065FDF9    mov         ebp,esp
 0065FDFB    push        ecx
 0065FDFC    push        ebx
 0065FDFD    push        esi
 0065FDFE    push        edi
 0065FDFF    mov         edi,ecx
 0065FE01    mov         byte ptr [ebp-1],dl
 0065FE04    mov         ebx,eax
 0065FE06    mov         esi,dword ptr [ebp+8]
 0065FE09    mov         eax,esi
 0065FE0B    mov         edx,edi
 0065FE0D    call        @IntfCopy
 0065FE12    cmp         word ptr [ebx+12],0
>0065FE17    je          0065FE2E
 0065FE19    mov         eax,dword ptr [ebp+10]
 0065FE1C    push        eax
 0065FE1D    movzx       eax,byte ptr [ebp+0C]
 0065FE21    push        eax
 0065FE22    movzx       edx,byte ptr [ebp-1]
 0065FE26    mov         ecx,esi
 0065FE28    mov         eax,dword ptr [ebx+14]
 0065FE2B    call        dword ptr [ebx+10]
 0065FE2E    pop         edi
 0065FE2F    pop         esi
 0065FE30    pop         ebx
 0065FE31    pop         ecx
 0065FE32    pop         ebp
 0065FE33    ret         0C
*}
end;

//0065FE38
function TXMLNodeList.GetCount:Integer;
begin
{*
 0065FE38    mov         eax,dword ptr [eax+0C]
 0065FE3B    mov         edx,dword ptr [eax]
 0065FE3D    call        dword ptr [edx+14]
 0065FE40    ret
*}
end;

//0065FE44
function TXMLNodeList.IndexOf(const Node:XMLIntf.IXMLNode):Integer;
begin
{*
 0065FE44    push        ebp
 0065FE45    mov         ebp,esp
 0065FE47    push        0
 0065FE49    push        ebx
 0065FE4A    push        esi
 0065FE4B    mov         esi,edx
 0065FE4D    mov         ebx,eax
 0065FE4F    xor         eax,eax
 0065FE51    push        ebp
 0065FE52    push        65FE8F
 0065FE57    push        dword ptr fs:[eax]
 0065FE5A    mov         dword ptr fs:[eax],esp
 0065FE5D    lea         eax,[ebp-4]
 0065FE60    mov         edx,esi
 0065FE62    mov         ecx,65FEA0
 0065FE67    call        @IntfCast
 0065FE6C    mov         edx,dword ptr [ebp-4]
 0065FE6F    mov         eax,dword ptr [ebx+0C]
 0065FE72    mov         ecx,dword ptr [eax]
 0065FE74    call        dword ptr [ecx+34]
 0065FE77    mov         ebx,eax
 0065FE79    xor         eax,eax
 0065FE7B    pop         edx
 0065FE7C    pop         ecx
 0065FE7D    pop         ecx
 0065FE7E    mov         dword ptr fs:[eax],edx
 0065FE81    push        65FE96
 0065FE86    lea         eax,[ebp-4]
 0065FE89    call        @IntfClear
 0065FE8E    ret
>0065FE8F    jmp         @HandleFinally
>0065FE94    jmp         0065FE86
 0065FE96    mov         eax,ebx
 0065FE98    pop         esi
 0065FE99    pop         ebx
 0065FE9A    pop         ecx
 0065FE9B    pop         ebp
 0065FE9C    ret
*}
end;

//0065FEB0
function TXMLNodeList.Delete(const Name:Xmldom.DOMString):Integer;
begin
{*
 0065FEB0    mov         ecx,dword ptr [eax+20]
 0065FEB3    call        TXMLNodeList.IndexOf
 0065FEB8    ret
*}
end;

//0065FEBC
function TXMLNodeList.IndexOf(const Name:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):Integer;
begin
{*
 0065FEBC    push        ebp
 0065FEBD    mov         ebp,esp
 0065FEBF    add         esp,0FFFFFFEC
 0065FEC2    push        ebx
 0065FEC3    push        esi
 0065FEC4    xor         ebx,ebx
 0065FEC6    mov         dword ptr [ebp-10],ebx
 0065FEC9    mov         dword ptr [ebp-14],ebx
 0065FECC    mov         dword ptr [ebp-0C],ecx
 0065FECF    mov         dword ptr [ebp-8],edx
 0065FED2    mov         dword ptr [ebp-4],eax
 0065FED5    xor         eax,eax
 0065FED7    push        ebp
 0065FED8    push        65FF44
 0065FEDD    push        dword ptr fs:[eax]
 0065FEE0    mov         dword ptr fs:[eax],esp
 0065FEE3    mov         eax,dword ptr [ebp-4]
 0065FEE6    call        TXMLNodeList.GetCount
 0065FEEB    mov         ebx,eax
 0065FEED    dec         ebx
 0065FEEE    test        ebx,ebx
>0065FEF0    jl          0065FF23
 0065FEF2    inc         ebx
 0065FEF3    xor         esi,esi
 0065FEF5    lea         ecx,[ebp-14]
 0065FEF8    mov         edx,esi
 0065FEFA    mov         eax,dword ptr [ebp-4]
 0065FEFD    call        TXMLNodeList.Get
 0065FF02    mov         eax,dword ptr [ebp-14]
 0065FF05    lea         edx,[ebp-10]
 0065FF08    mov         ecx,dword ptr [eax]
 0065FF0A    call        dword ptr [ecx+20]
 0065FF0D    mov         eax,dword ptr [ebp-10]
 0065FF10    mov         ecx,dword ptr [ebp-0C]
 0065FF13    mov         edx,dword ptr [ebp-8]
 0065FF16    call        NodeMatches
 0065FF1B    test        al,al
>0065FF1D    jne         0065FF26
 0065FF1F    inc         esi
 0065FF20    dec         ebx
>0065FF21    jne         0065FEF5
 0065FF23    or          esi,0FFFFFFFF
 0065FF26    xor         eax,eax
 0065FF28    pop         edx
 0065FF29    pop         ecx
 0065FF2A    pop         ecx
 0065FF2B    mov         dword ptr fs:[eax],edx
 0065FF2E    push        65FF4B
 0065FF33    lea         eax,[ebp-14]
 0065FF36    call        @IntfClear
 0065FF3B    lea         eax,[ebp-10]
 0065FF3E    call        @IntfClear
 0065FF43    ret
>0065FF44    jmp         @HandleFinally
>0065FF49    jmp         0065FF33
 0065FF4B    mov         eax,esi
 0065FF4D    pop         esi
 0065FF4E    pop         ebx
 0065FF4F    mov         esp,ebp
 0065FF51    pop         ebp
 0065FF52    ret
*}
end;

//0065FF54
function TXMLNodeList.FindNode(NodeName:Xmldom.DOMString):IXMLNode;
begin
{*
 0065FF54    push        ebp
 0065FF55    mov         ebp,esp
 0065FF57    push        ecx
 0065FF58    push        ebx
 0065FF59    push        esi
 0065FF5A    mov         esi,ecx
 0065FF5C    mov         dword ptr [ebp-4],edx
 0065FF5F    mov         ebx,eax
 0065FF61    mov         eax,dword ptr [ebp-4]
 0065FF64    call        @UStrAddRef
 0065FF69    xor         eax,eax
 0065FF6B    push        ebp
 0065FF6C    push        65FF9B
 0065FF71    push        dword ptr fs:[eax]
 0065FF74    mov         dword ptr fs:[eax],esp
 0065FF77    push        esi
 0065FF78    mov         ecx,dword ptr [ebx+20]
 0065FF7B    mov         edx,dword ptr [ebp-4]
 0065FF7E    mov         eax,ebx
 0065FF80    call        TXMLNodeList.FindNode
 0065FF85    xor         eax,eax
 0065FF87    pop         edx
 0065FF88    pop         ecx
 0065FF89    pop         ecx
 0065FF8A    mov         dword ptr fs:[eax],edx
 0065FF8D    push        65FFA2
 0065FF92    lea         eax,[ebp-4]
 0065FF95    call        @UStrClr
 0065FF9A    ret
>0065FF9B    jmp         @HandleFinally
>0065FFA0    jmp         0065FF92
 0065FFA2    pop         esi
 0065FFA3    pop         ebx
 0065FFA4    pop         ecx
 0065FFA5    pop         ebp
 0065FFA6    ret
*}
end;

//0065FFA8
function TXMLNodeList.FindNode(NodeName:Xmldom.DOMString; NamespaceURI:Xmldom.DOMString):IXMLNode;
begin
{*
 0065FFA8    push        ebp
 0065FFA9    mov         ebp,esp
 0065FFAB    add         esp,0FFFFFFF8
 0065FFAE    push        ebx
 0065FFAF    push        esi
 0065FFB0    push        edi
 0065FFB1    mov         dword ptr [ebp-8],ecx
 0065FFB4    mov         dword ptr [ebp-4],edx
 0065FFB7    mov         ebx,eax
 0065FFB9    mov         edi,dword ptr [ebp+8]
 0065FFBC    mov         eax,dword ptr [ebp-4]
 0065FFBF    call        @UStrAddRef
 0065FFC4    mov         eax,dword ptr [ebp-8]
 0065FFC7    call        @UStrAddRef
 0065FFCC    xor         eax,eax
 0065FFCE    push        ebp
 0065FFCF    push        66001C
 0065FFD4    push        dword ptr fs:[eax]
 0065FFD7    mov         dword ptr fs:[eax],esp
 0065FFDA    mov         ecx,dword ptr [ebp-8]
 0065FFDD    mov         edx,dword ptr [ebp-4]
 0065FFE0    mov         eax,ebx
 0065FFE2    call        TXMLNodeList.IndexOf
 0065FFE7    mov         esi,eax
 0065FFE9    test        esi,esi
>0065FFEB    jl          0065FFFA
 0065FFED    mov         ecx,edi
 0065FFEF    mov         edx,esi
 0065FFF1    mov         eax,ebx
 0065FFF3    call        TXMLNodeList.Get
>0065FFF8    jmp         00660001
 0065FFFA    mov         eax,edi
 0065FFFC    call        @IntfClear
 00660001    xor         eax,eax
 00660003    pop         edx
 00660004    pop         ecx
 00660005    pop         ecx
 00660006    mov         dword ptr fs:[eax],edx
 00660009    push        660023
 0066000E    lea         eax,[ebp-8]
 00660011    mov         edx,2
 00660016    call        @UStrArrayClr
 0066001B    ret
>0066001C    jmp         @HandleFinally
>00660021    jmp         0066000E
 00660023    pop         edi
 00660024    pop         esi
 00660025    pop         ebx
 00660026    pop         ecx
 00660027    pop         ecx
 00660028    pop         ebp
 00660029    ret         4
*}
end;

//0066002C
function TXMLNodeList.FindNode(ChildNodeType:TGUID):IXMLNode;
begin
{*
 0066002C    push        ebp
 0066002D    mov         ebp,esp
 0066002F    add         esp,0FFFFFFE8
 00660032    push        ebx
 00660033    push        esi
 00660034    push        edi
 00660035    xor         ebx,ebx
 00660037    mov         dword ptr [ebp-18],ebx
 0066003A    mov         esi,edx
 0066003C    lea         edi,[ebp-14]
 0066003F    movs        dword ptr [edi],dword ptr [esi]
 00660040    movs        dword ptr [edi],dword ptr [esi]
 00660041    movs        dword ptr [edi],dword ptr [esi]
 00660042    movs        dword ptr [edi],dword ptr [esi]
 00660043    mov         dword ptr [ebp-4],ecx
 00660046    mov         edi,eax
 00660048    xor         eax,eax
 0066004A    push        ebp
 0066004B    push        6600B0
 00660050    push        dword ptr fs:[eax]
 00660053    mov         dword ptr fs:[eax],esp
 00660056    mov         eax,edi
 00660058    call        TXMLNodeList.GetCount
 0066005D    mov         ebx,eax
 0066005F    dec         ebx
 00660060    test        ebx,ebx
>00660062    jl          00660092
 00660064    inc         ebx
 00660065    xor         esi,esi
 00660067    lea         ecx,[ebp-18]
 0066006A    mov         edx,esi
 0066006C    mov         eax,edi
 0066006E    call        TXMLNodeList.Get
 00660073    mov         eax,dword ptr [ebp-18]
 00660076    push        eax
 00660077    mov         eax,dword ptr [ebp-4]
 0066007A    call        @IntfClear
 0066007F    mov         ecx,eax
 00660081    lea         edx,[ebp-14]
 00660084    pop         eax
 00660085    call        Supports
 0066008A    test        al,al
>0066008C    jne         0066009A
 0066008E    inc         esi
 0066008F    dec         ebx
>00660090    jne         00660067
 00660092    mov         eax,dword ptr [ebp-4]
 00660095    call        @IntfClear
 0066009A    xor         eax,eax
 0066009C    pop         edx
 0066009D    pop         ecx
 0066009E    pop         ecx
 0066009F    mov         dword ptr fs:[eax],edx
 006600A2    push        6600B7
 006600A7    lea         eax,[ebp-18]
 006600AA    call        @IntfClear
 006600AF    ret
>006600B0    jmp         @HandleFinally
>006600B5    jmp         006600A7
 006600B7    pop         edi
 006600B8    pop         esi
 006600B9    pop         ebx
 006600BA    mov         esp,ebp
 006600BC    pop         ebp
 006600BD    ret
*}
end;

//006600C0
function TXMLNodeList.First:IXMLNode;
begin
{*
 006600C0    push        ebp
 006600C1    mov         ebp,esp
 006600C3    push        0
 006600C5    push        ebx
 006600C6    push        esi
 006600C7    mov         esi,edx
 006600C9    mov         ebx,eax
 006600CB    xor         eax,eax
 006600CD    push        ebp
 006600CE    push        66011E
 006600D3    push        dword ptr fs:[eax]
 006600D6    mov         dword ptr fs:[eax],esp
 006600D9    mov         eax,dword ptr [ebx+0C]
 006600DC    mov         edx,dword ptr [eax]
 006600DE    call        dword ptr [edx+14]
 006600E1    test        eax,eax
>006600E3    jle         00660101
 006600E5    lea         edx,[ebp-4]
 006600E8    mov         eax,dword ptr [ebx+0C]
 006600EB    mov         ecx,dword ptr [eax]
 006600ED    call        dword ptr [ecx+30]
 006600F0    mov         edx,dword ptr [ebp-4]
 006600F3    mov         eax,esi
 006600F5    mov         ecx,66012C
 006600FA    call        @IntfCast
>006600FF    jmp         00660108
 00660101    mov         eax,esi
 00660103    call        @IntfClear
 00660108    xor         eax,eax
 0066010A    pop         edx
 0066010B    pop         ecx
 0066010C    pop         ecx
 0066010D    mov         dword ptr fs:[eax],edx
 00660110    push        660125
 00660115    lea         eax,[ebp-4]
 00660118    call        @IntfClear
 0066011D    ret
>0066011E    jmp         @HandleFinally
>00660123    jmp         00660115
 00660125    pop         esi
 00660126    pop         ebx
 00660127    pop         ecx
 00660128    pop         ebp
 00660129    ret
*}
end;

//0066013C
function TXMLNodeList.Last:IXMLNode;
begin
{*
 0066013C    push        ebp
 0066013D    mov         ebp,esp
 0066013F    push        0
 00660141    push        ebx
 00660142    push        esi
 00660143    mov         esi,edx
 00660145    mov         ebx,eax
 00660147    xor         eax,eax
 00660149    push        ebp
 0066014A    push        66019A
 0066014F    push        dword ptr fs:[eax]
 00660152    mov         dword ptr fs:[eax],esp
 00660155    mov         eax,dword ptr [ebx+0C]
 00660158    mov         edx,dword ptr [eax]
 0066015A    call        dword ptr [edx+14]
 0066015D    test        eax,eax
>0066015F    jle         0066017D
 00660161    lea         edx,[ebp-4]
 00660164    mov         eax,dword ptr [ebx+0C]
 00660167    mov         ecx,dword ptr [eax]
 00660169    call        dword ptr [ecx+40]
 0066016C    mov         edx,dword ptr [ebp-4]
 0066016F    mov         eax,esi
 00660171    mov         ecx,6601A8
 00660176    call        @IntfCast
>0066017B    jmp         00660184
 0066017D    mov         eax,esi
 0066017F    call        @IntfClear
 00660184    xor         eax,eax
 00660186    pop         edx
 00660187    pop         ecx
 00660188    pop         ecx
 00660189    mov         dword ptr fs:[eax],edx
 0066018C    push        6601A1
 00660191    lea         eax,[ebp-4]
 00660194    call        @IntfClear
 00660199    ret
>0066019A    jmp         @HandleFinally
>0066019F    jmp         00660191
 006601A1    pop         esi
 006601A2    pop         ebx
 006601A3    pop         ecx
 006601A4    pop         ebp
 006601A5    ret
*}
end;

//006601B8
function TXMLNodeList.FindSibling(const Node:XMLIntf.IXMLNode; Delta:Integer):IXMLNode;
begin
{*
 006601B8    push        ebp
 006601B9    mov         ebp,esp
 006601BB    add         esp,0FFFFFFF8
 006601BE    push        ebx
 006601BF    push        esi
 006601C0    push        edi
 006601C1    mov         dword ptr [ebp-8],ecx
 006601C4    mov         dword ptr [ebp-4],edx
 006601C7    mov         esi,eax
 006601C9    mov         edi,dword ptr [ebp+8]
 006601CC    mov         edx,dword ptr [ebp-4]
 006601CF    mov         eax,esi
 006601D1    call        TXMLNodeList.IndexOf
 006601D6    mov         ebx,eax
 006601D8    add         ebx,dword ptr [ebp-8]
 006601DB    test        ebx,ebx
>006601DD    jl          006601F8
 006601DF    mov         eax,dword ptr [esi+0C]
 006601E2    mov         edx,dword ptr [eax]
 006601E4    call        dword ptr [edx+14]
 006601E7    cmp         ebx,eax
>006601E9    jge         006601F8
 006601EB    mov         ecx,edi
 006601ED    mov         edx,ebx
 006601EF    mov         eax,esi
 006601F1    call        TXMLNodeList.Get
>006601F6    jmp         006601FF
 006601F8    mov         eax,edi
 006601FA    call        @IntfClear
 006601FF    pop         edi
 00660200    pop         esi
 00660201    pop         ebx
 00660202    pop         ecx
 00660203    pop         ecx
 00660204    pop         ebp
 00660205    ret         4
*}
end;

//00660208
function TXMLNodeList.Get(Index:Integer):IXMLNode;
begin
{*
 00660208    push        ebp
 00660209    mov         ebp,esp
 0066020B    add         esp,0FFFFFFF8
 0066020E    push        ebx
 0066020F    push        esi
 00660210    xor         ebx,ebx
 00660212    mov         dword ptr [ebp-8],ebx
 00660215    mov         dword ptr [ebp-4],ecx
 00660218    mov         esi,edx
 0066021A    mov         ebx,eax
 0066021C    xor         eax,eax
 0066021E    push        ebp
 0066021F    push        66025D
 00660224    push        dword ptr fs:[eax]
 00660227    mov         dword ptr fs:[eax],esp
 0066022A    lea         ecx,[ebp-8]
 0066022D    mov         edx,esi
 0066022F    mov         eax,dword ptr [ebx+0C]
 00660232    mov         ebx,dword ptr [eax]
 00660234    call        dword ptr [ebx+0C]
 00660237    mov         edx,dword ptr [ebp-8]
 0066023A    mov         eax,dword ptr [ebp-4]
 0066023D    mov         ecx,66026C
 00660242    call        @IntfCast
 00660247    xor         eax,eax
 00660249    pop         edx
 0066024A    pop         ecx
 0066024B    pop         ecx
 0066024C    mov         dword ptr fs:[eax],edx
 0066024F    push        660264
 00660254    lea         eax,[ebp-8]
 00660257    call        @IntfClear
 0066025C    ret
>0066025D    jmp         @HandleFinally
>00660262    jmp         00660254
 00660264    pop         esi
 00660265    pop         ebx
 00660266    pop         ecx
 00660267    pop         ecx
 00660268    pop         ebp
 00660269    ret
*}
end;

//0066027C
function TXMLNodeList.GetNode(const IndexOrName:OleVariant):IXMLNode;
begin
{*
 0066027C    push        ebp
 0066027D    mov         ebp,esp
 0066027F    push        0
 00660281    push        0
 00660283    push        0
 00660285    push        0
 00660287    push        0
 00660289    push        0
 0066028B    push        0
 0066028D    push        ebx
 0066028E    push        esi
 0066028F    mov         dword ptr [ebp-4],ecx
 00660292    mov         esi,edx
 00660294    mov         ebx,eax
 00660296    xor         eax,eax
 00660298    push        ebp
 00660299    push        660391
 0066029E    push        dword ptr fs:[eax]
 006602A1    mov         dword ptr fs:[eax],esp
 006602A4    mov         eax,esi
 006602A6    call        VarIsOrdinal
 006602AB    test        al,al
>006602AD    je          006602D8
 006602AF    mov         eax,esi
 006602B1    call        @VarToInteger
 006602B6    mov         edx,eax
 006602B8    lea         ecx,[ebp-8]
 006602BB    mov         eax,dword ptr [ebx+0C]
 006602BE    mov         ebx,dword ptr [eax]
 006602C0    call        dword ptr [ebx+0C]
 006602C3    mov         edx,dword ptr [ebp-8]
 006602C6    mov         eax,dword ptr [ebp-4]
 006602C9    mov         ecx,6603A0
 006602CE    call        @IntfCast
>006602D3    jmp         00660363
 006602D8    lea         eax,[ebp-0C]
 006602DB    mov         edx,esi
 006602DD    call        @VarToUStr
 006602E2    mov         edx,dword ptr [ebp-0C]
 006602E5    mov         ecx,dword ptr [ebp-4]
 006602E8    mov         eax,ebx
 006602EA    call        TXMLNodeList.FindNode
 006602EF    mov         eax,dword ptr [ebp-4]
 006602F2    cmp         dword ptr [eax],0
>006602F5    jne         00660338
 006602F7    mov         eax,dword ptr [ebx+18]
 006602FA    mov         eax,dword ptr [eax+1C]
 006602FD    call        TXMLDocument.GetOptions
 00660302    test        al,1
>00660304    je          00660338
 00660306    mov         eax,dword ptr [ebx+18]
 00660309    call        TXMLNode.GetNodeType
 0066030E    cmp         al,9
>00660310    jne         00660326
 00660312    lea         edx,[ebp-10]
 00660315    mov         eax,dword ptr [ebx+18]
 00660318    mov         eax,dword ptr [eax+1C]
 0066031B    call        TXMLDocument.GetDocumentElement
 00660320    cmp         dword ptr [ebp-10],0
>00660324    jne         00660338
 00660326    push        esi
 00660327    push        1
 00660329    mov         eax,dword ptr [ebp-4]
 0066032C    push        eax
 0066032D    xor         ecx,ecx
 0066032F    mov         dl,2
 00660331    mov         eax,ebx
 00660333    call        TXMLNodeList.DoNotify
 00660338    mov         eax,dword ptr [ebp-4]
 0066033B    cmp         dword ptr [eax],0
>0066033E    jne         00660363
 00660340    lea         edx,[ebp-14]
 00660343    mov         eax,[007C4828];^SResString373:TResStringRec
 00660348    call        LoadResString
 0066034D    mov         eax,dword ptr [ebp-14]
 00660350    push        eax
 00660351    mov         dword ptr [ebp-1C],esi
 00660354    mov         byte ptr [ebp-18],0D
 00660358    lea         edx,[ebp-1C]
 0066035B    xor         ecx,ecx
 0066035D    pop         eax
 0066035E    call        XMLDocError
 00660363    xor         eax,eax
 00660365    pop         edx
 00660366    pop         ecx
 00660367    pop         ecx
 00660368    mov         dword ptr fs:[eax],edx
 0066036B    push        660398
 00660370    lea         eax,[ebp-14]
 00660373    call        @UStrClr
 00660378    lea         eax,[ebp-10]
 0066037B    call        @IntfClear
 00660380    lea         eax,[ebp-0C]
 00660383    call        @UStrClr
 00660388    lea         eax,[ebp-8]
 0066038B    call        @IntfClear
 00660390    ret
>00660391    jmp         @HandleFinally
>00660396    jmp         00660370
 00660398    pop         esi
 00660399    pop         ebx
 0066039A    mov         esp,ebp
 0066039C    pop         ebp
 0066039D    ret
*}
end;

//006603B0
function TXMLNodeList.Add(const Node:XMLIntf.IXMLNode):Integer;
begin
{*
 006603B0    push        ebx
 006603B1    mov         ebx,eax
 006603B3    mov         ecx,edx
 006603B5    mov         eax,ebx
 006603B7    or          edx,0FFFFFFFF
 006603BA    call        TXMLNodeList.Insert
 006603BF    mov         eax,ebx
 006603C1    call        TXMLNodeList.GetCount
 006603C6    dec         eax
 006603C7    pop         ebx
 006603C8    ret
*}
end;

//006603CC
function TXMLNodeList.InternalInsert(Index:Integer; const Node:XMLIntf.IXMLNode):Integer;
begin
{*
 006603CC    push        ebp
 006603CD    mov         ebp,esp
 006603CF    push        ecx
 006603D0    mov         ecx,6
 006603D5    push        0
 006603D7    push        0
 006603D9    dec         ecx
>006603DA    jne         006603D5
 006603DC    xchg        ecx,dword ptr [ebp-4]
 006603DF    push        ebx
 006603E0    push        esi
 006603E1    push        edi
 006603E2    mov         dword ptr [ebp-4],ecx
 006603E5    mov         esi,edx
 006603E7    mov         ebx,eax
 006603E9    xor         eax,eax
 006603EB    push        ebp
 006603EC    push        6604B7
 006603F1    push        dword ptr fs:[eax]
 006603F4    mov         dword ptr fs:[eax],esp
 006603F7    lea         eax,[ebp-18]
 006603FA    mov         edx,esi
 006603FC    mov         cl,0FC
 006603FE    call        @OleVarFromInt
 00660403    lea         eax,[ebp-18]
 00660406    push        eax
 00660407    push        1
 00660409    lea         eax,[ebp-8]
 0066040C    push        eax
 0066040D    mov         ecx,dword ptr [ebp-4]
 00660410    xor         edx,edx
 00660412    mov         eax,ebx
 00660414    call        TXMLNodeList.DoNotify
 00660419    cmp         esi,0FFFFFFFF
>0066041C    je          0066043F
 0066041E    lea         eax,[ebp-1C]
 00660421    mov         edx,dword ptr [ebp-4]
 00660424    mov         ecx,6604C8
 00660429    call        @IntfCast
 0066042E    mov         ecx,dword ptr [ebp-1C]
 00660431    mov         edx,esi
 00660433    mov         eax,dword ptr [ebx+0C]
 00660436    mov         edi,dword ptr [eax]
 00660438    call        dword ptr [edi+3C]
 0066043B    mov         edi,esi
>0066043D    jmp         0066045C
 0066043F    lea         eax,[ebp-20]
 00660442    mov         edx,dword ptr [ebp-4]
 00660445    mov         ecx,6604C8
 0066044A    call        @IntfCast
 0066044F    mov         edx,dword ptr [ebp-20]
 00660452    mov         eax,dword ptr [ebx+0C]
 00660455    mov         ecx,dword ptr [eax]
 00660457    call        dword ptr [ecx+38]
 0066045A    mov         edi,eax
 0066045C    lea         eax,[ebp-34]
 0066045F    mov         edx,esi
 00660461    mov         cl,0FC
 00660463    call        @OleVarFromInt
 00660468    lea         eax,[ebp-34]
 0066046B    push        eax
 0066046C    push        0
 0066046E    lea         eax,[ebp-24]
 00660471    push        eax
 00660472    mov         ecx,dword ptr [ebp-4]
 00660475    xor         edx,edx
 00660477    mov         eax,ebx
 00660479    call        TXMLNodeList.DoNotify
 0066047E    xor         eax,eax
 00660480    pop         edx
 00660481    pop         ecx
 00660482    pop         ecx
 00660483    mov         dword ptr fs:[eax],edx
 00660486    push        6604BE
 0066048B    lea         eax,[ebp-34]
 0066048E    call        @VarClr
 00660493    lea         eax,[ebp-24]
 00660496    mov         edx,dword ptr ds:[65C8F8];IXMLNode
 0066049C    mov         ecx,3
 006604A1    call        @FinalizeArray
 006604A6    lea         eax,[ebp-18]
 006604A9    call        @VarClr
 006604AE    lea         eax,[ebp-8]
 006604B1    call        @IntfClear
 006604B6    ret
>006604B7    jmp         @HandleFinally
>006604BC    jmp         0066048B
 006604BE    mov         eax,edi
 006604C0    pop         edi
 006604C1    pop         esi
 006604C2    pop         ebx
 006604C3    mov         esp,ebp
 006604C5    pop         ebp
 006604C6    ret
*}
end;

//006604D8
procedure InsertFormattingNode(const Len:Integer; const Index:Integer; Break:Boolean);
begin
{*
 006604D8    push        ebp
 006604D9    mov         ebp,esp
 006604DB    push        0
 006604DD    push        0
 006604DF    push        0
 006604E1    push        0
 006604E3    push        0
 006604E5    push        ebx
 006604E6    push        esi
 006604E7    push        edi
 006604E8    mov         ebx,ecx
 006604EA    mov         esi,edx
 006604EC    xor         edx,edx
 006604EE    push        ebp
 006604EF    push        6605CF
 006604F4    push        dword ptr fs:[edx]
 006604F7    mov         dword ptr fs:[edx],esp
 006604FA    mov         edi,eax
 006604FC    test        edi,edi
>006604FE    jle         00660522
 00660500    lea         edx,[ebp-0C]
 00660503    mov         eax,dword ptr [ebp+8]
 00660506    mov         eax,dword ptr [eax-4]
 00660509    mov         eax,dword ptr [eax+18]
 0066050C    mov         eax,dword ptr [eax+1C]
 0066050F    call        TXMLDocument.GetNodeIndentStr
 00660514    mov         edx,dword ptr [ebp-0C]
 00660517    lea         eax,[ebp-8]
 0066051A    call        @UStrCat
 0066051F    dec         edi
>00660520    jne         00660500
 00660522    test        bl,bl
>00660524    je          00660536
 00660526    lea         eax,[ebp-8]
 00660529    mov         ecx,dword ptr [ebp-8]
 0066052C    mov         edx,6605EC;'
'
 00660531    call        @UStrCat3
 00660536    push        0
 00660538    mov         eax,dword ptr [ebp+8]
 0066053B    mov         eax,dword ptr [eax-4]
 0066053E    mov         eax,dword ptr [eax+18]
 00660541    mov         eax,dword ptr [eax+1C]
 00660544    push        eax
 00660545    push        0
 00660547    lea         eax,[ebp-10]
 0066054A    push        eax
 0066054B    lea         edx,[ebp-14]
 0066054E    mov         eax,dword ptr [ebp+8]
 00660551    mov         eax,dword ptr [eax-4]
 00660554    mov         eax,dword ptr [eax+18]
 00660557    mov         eax,dword ptr [eax+1C]
 0066055A    call        TXMLDocument.GetDOMDocument
 0066055F    mov         eax,dword ptr [ebp-14]
 00660562    mov         cl,3
 00660564    mov         edx,dword ptr [ebp-8]
 00660567    call        CreateDOMNode
 0066056C    mov         ecx,dword ptr [ebp-10]
 0066056F    mov         dl,1
 00660571    mov         eax,[0065D600];TXMLNode
 00660576    call        TXMLNode.Create
 0066057B    mov         edx,eax
 0066057D    test        edx,edx
>0066057F    je          00660584
 00660581    sub         edx,0FFFFFFB8
 00660584    lea         eax,[ebp-4]
 00660587    call        @IntfCopy
 0066058C    mov         eax,dword ptr [ebp+8]
 0066058F    mov         eax,dword ptr [eax-4]
 00660592    mov         ecx,dword ptr [ebp-4]
 00660595    mov         edx,esi
 00660597    call        TXMLNodeList.InternalInsert
 0066059C    xor         eax,eax
 0066059E    pop         edx
 0066059F    pop         ecx
 006605A0    pop         ecx
 006605A1    mov         dword ptr fs:[eax],edx
 006605A4    push        6605D6
 006605A9    lea         eax,[ebp-14]
 006605AC    call        @IntfClear
 006605B1    lea         eax,[ebp-10]
 006605B4    call        @IntfClear
 006605B9    lea         eax,[ebp-0C]
 006605BC    mov         edx,2
 006605C1    call        @UStrArrayClr
 006605C6    lea         eax,[ebp-4]
 006605C9    call        @IntfClear
 006605CE    ret
>006605CF    jmp         @HandleFinally
>006605D4    jmp         006605A9
 006605D6    pop         edi
 006605D7    pop         esi
 006605D8    pop         ebx
 006605D9    mov         esp,ebp
 006605DB    pop         ebp
 006605DC    ret
*}
end;

//006605F0
procedure TXMLNodeList.Insert(Index:Integer; const Node:XMLIntf.IXMLNode);
begin
{*
 006605F0    push        ebp
 006605F1    mov         ebp,esp
 006605F3    add         esp,0FFFFFFF8
 006605F6    push        ebx
 006605F7    push        esi
 006605F8    push        edi
 006605F9    xor         ebx,ebx
 006605FB    mov         dword ptr [ebp-8],ebx
 006605FE    mov         edi,ecx
 00660600    mov         esi,edx
 00660602    mov         dword ptr [ebp-4],eax
 00660605    xor         eax,eax
 00660607    push        ebp
 00660608    push        660713
 0066060D    push        dword ptr fs:[eax]
 00660610    mov         dword ptr fs:[eax],esp
 00660613    mov         eax,dword ptr [ebp-4]
 00660616    mov         ebx,dword ptr [eax+18]
 00660619    cmp         dword ptr [ebx+28],0
>0066061D    je          006606F1
 00660623    cmp         dword ptr [ebx+24],0
>00660627    jne         006606F1
 0066062D    mov         eax,dword ptr [ebx+1C]
 00660630    call        TXMLDocument.GetOptions
 00660635    test        al,2
>00660637    je          006606F1
 0066063D    mov         eax,edi
 0066063F    mov         edx,dword ptr [eax]
 00660641    call        dword ptr [edx+38]
 00660644    add         al,0FE
 00660646    sub         al,2
>00660648    jb          006606F1
 0066064E    mov         eax,dword ptr [ebp-4]
 00660651    call        TXMLNodeList.GetCount
 00660656    test        eax,eax
>00660658    jne         00660674
 0066065A    push        ebp
 0066065B    mov         eax,dword ptr [ebp-4]
 0066065E    mov         eax,dword ptr [eax+18]
 00660661    mov         eax,dword ptr [eax+28]
 00660664    call        TXMLNode.NestingLevel
 00660669    mov         cl,1
 0066066B    or          edx,0FFFFFFFF
 0066066E    call        InsertFormattingNode
 00660673    pop         ecx
 00660674    cmp         esi,0FFFFFFFF
>00660677    jne         0066068A
 00660679    push        ebp
 0066067A    xor         ecx,ecx
 0066067C    or          edx,0FFFFFFFF
 0066067F    mov         eax,1
 00660684    call        InsertFormattingNode
 00660689    pop         ecx
 0066068A    mov         ecx,edi
 0066068C    mov         edx,esi
 0066068E    mov         eax,dword ptr [ebp-4]
 00660691    call        TXMLNodeList.InternalInsert
 00660696    mov         ebx,eax
 00660698    inc         esi
>00660699    jne         006606AD
 0066069B    mov         eax,dword ptr [ebp-4]
 0066069E    mov         eax,dword ptr [eax+18]
 006606A1    mov         eax,dword ptr [eax+28]
 006606A4    call        TXMLNode.NestingLevel
 006606A9    mov         esi,eax
>006606AB    jmp         006606BA
 006606AD    mov         eax,dword ptr [ebp-4]
 006606B0    mov         eax,dword ptr [eax+18]
 006606B3    call        TXMLNode.NestingLevel
 006606B8    mov         esi,eax
 006606BA    mov         eax,dword ptr [ebp-4]
 006606BD    call        TXMLNodeList.GetCount
 006606C2    dec         eax
 006606C3    cmp         ebx,eax
>006606C5    jge         006606E1
 006606C7    lea         ecx,[ebp-8]
 006606CA    lea         edx,[ebx+1]
 006606CD    mov         eax,dword ptr [ebp-4]
 006606D0    call        TXMLNodeList.Get
 006606D5    mov         eax,dword ptr [ebp-8]
 006606D8    mov         edx,dword ptr [eax]
 006606DA    call        dword ptr [edx+38]
 006606DD    cmp         al,3
>006606DF    je          006606FD
 006606E1    push        ebp
 006606E2    lea         edx,[ebx+1]
 006606E5    mov         cl,1
 006606E7    mov         eax,esi
 006606E9    call        InsertFormattingNode
 006606EE    pop         ecx
>006606EF    jmp         006606FD
 006606F1    mov         ecx,edi
 006606F3    mov         edx,esi
 006606F5    mov         eax,dword ptr [ebp-4]
 006606F8    call        TXMLNodeList.InternalInsert
 006606FD    xor         eax,eax
 006606FF    pop         edx
 00660700    pop         ecx
 00660701    pop         ecx
 00660702    mov         dword ptr fs:[eax],edx
 00660705    push        66071A
 0066070A    lea         eax,[ebp-8]
 0066070D    call        @IntfClear
 00660712    ret
>00660713    jmp         @HandleFinally
>00660718    jmp         0066070A
 0066071A    pop         edi
 0066071B    pop         esi
 0066071C    pop         ebx
 0066071D    pop         ecx
 0066071E    pop         ecx
 0066071F    pop         ebp
 00660720    ret
*}
end;

//00660724
function TXMLNodeList.Delete(const Index:Integer):Integer;
begin
{*
 00660724    push        ebp
 00660725    mov         ebp,esp
 00660727    push        0
 00660729    push        ebx
 0066072A    push        esi
 0066072B    mov         esi,edx
 0066072D    mov         ebx,eax
 0066072F    xor         eax,eax
 00660731    push        ebp
 00660732    push        66076B
 00660737    push        dword ptr fs:[eax]
 0066073A    mov         dword ptr fs:[eax],esp
 0066073D    lea         ecx,[ebp-4]
 00660740    mov         edx,esi
 00660742    mov         eax,ebx
 00660744    call        TXMLNodeList.Get
 00660749    mov         edx,dword ptr [ebp-4]
 0066074C    mov         eax,ebx
 0066074E    call        TXMLNodeList.Remove
 00660753    mov         ebx,eax
 00660755    xor         eax,eax
 00660757    pop         edx
 00660758    pop         ecx
 00660759    pop         ecx
 0066075A    mov         dword ptr fs:[eax],edx
 0066075D    push        660772
 00660762    lea         eax,[ebp-4]
 00660765    call        @IntfClear
 0066076A    ret
>0066076B    jmp         @HandleFinally
>00660770    jmp         00660762
 00660772    mov         eax,ebx
 00660774    pop         esi
 00660775    pop         ebx
 00660776    pop         ecx
 00660777    pop         ebp
 00660778    ret
*}
end;

//0066077C
function TXMLNodeList.IndexOf(const Name:Xmldom.DOMString):Integer;
begin
{*
 0066077C    mov         ecx,dword ptr [eax+20]
 0066077F    call        TXMLNodeList.Delete
 00660784    ret
*}
end;

//00660788
function TXMLNodeList.Delete(const Name:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):Integer;
begin
{*
 00660788    push        ebp
 00660789    mov         ebp,esp
 0066078B    push        0
 0066078D    push        ebx
 0066078E    push        esi
 0066078F    push        edi
 00660790    mov         edi,ecx
 00660792    mov         esi,edx
 00660794    mov         ebx,eax
 00660796    xor         eax,eax
 00660798    push        ebp
 00660799    push        6607E0
 0066079E    push        dword ptr fs:[eax]
 006607A1    mov         dword ptr fs:[eax],esp
 006607A4    lea         eax,[ebp-4]
 006607A7    push        eax
 006607A8    mov         ecx,edi
 006607AA    mov         edx,esi
 006607AC    mov         eax,ebx
 006607AE    call        TXMLNodeList.FindNode
 006607B3    cmp         dword ptr [ebp-4],0
>006607B7    je          006607C7
 006607B9    mov         edx,dword ptr [ebp-4]
 006607BC    mov         eax,ebx
 006607BE    call        TXMLNodeList.Remove
 006607C3    mov         ebx,eax
>006607C5    jmp         006607CA
 006607C7    or          ebx,0FFFFFFFF
 006607CA    xor         eax,eax
 006607CC    pop         edx
 006607CD    pop         ecx
 006607CE    pop         ecx
 006607CF    mov         dword ptr fs:[eax],edx
 006607D2    push        6607E7
 006607D7    lea         eax,[ebp-4]
 006607DA    call        @IntfClear
 006607DF    ret
>006607E0    jmp         @HandleFinally
>006607E5    jmp         006607D7
 006607E7    mov         eax,ebx
 006607E9    pop         edi
 006607EA    pop         esi
 006607EB    pop         ebx
 006607EC    pop         ecx
 006607ED    pop         ebp
 006607EE    ret
*}
end;

//006607F0
function TXMLNodeList.Remove(const Node:XMLIntf.IXMLNode):Integer;
begin
{*
 006607F0    push        ebp
 006607F1    mov         ebp,esp
 006607F3    mov         ecx,5
 006607F8    push        0
 006607FA    push        0
 006607FC    dec         ecx
>006607FD    jne         006607F8
 006607FF    push        ecx
 00660800    push        ebx
 00660801    push        esi
 00660802    push        edi
 00660803    mov         esi,edx
 00660805    mov         ebx,eax
 00660807    xor         eax,eax
 00660809    push        ebp
 0066080A    push        6608B2
 0066080F    push        dword ptr fs:[eax]
 00660812    mov         dword ptr fs:[eax],esp
 00660815    lea         eax,[ebp-14]
 00660818    mov         edx,0FFFFFFFF
 0066081D    mov         cl,0FF
 0066081F    call        @OleVarFromInt
 00660824    lea         eax,[ebp-14]
 00660827    push        eax
 00660828    push        1
 0066082A    lea         eax,[ebp-4]
 0066082D    push        eax
 0066082E    mov         ecx,esi
 00660830    mov         dl,1
 00660832    mov         eax,ebx
 00660834    call        TXMLNodeList.DoNotify
 00660839    lea         eax,[ebp-18]
 0066083C    mov         edx,esi
 0066083E    mov         ecx,6608C4
 00660843    call        @IntfCast
 00660848    mov         edx,dword ptr [ebp-18]
 0066084B    mov         eax,dword ptr [ebx+0C]
 0066084E    mov         ecx,dword ptr [eax]
 00660850    call        dword ptr [ecx+44]
 00660853    mov         edi,eax
 00660855    lea         eax,[ebp-2C]
 00660858    mov         edx,0FFFFFFFF
 0066085D    mov         cl,0FF
 0066085F    call        @OleVarFromInt
 00660864    lea         eax,[ebp-2C]
 00660867    push        eax
 00660868    push        0
 0066086A    lea         eax,[ebp-1C]
 0066086D    push        eax
 0066086E    mov         ecx,esi
 00660870    mov         dl,1
 00660872    mov         eax,ebx
 00660874    call        TXMLNodeList.DoNotify
 00660879    xor         eax,eax
 0066087B    pop         edx
 0066087C    pop         ecx
 0066087D    pop         ecx
 0066087E    mov         dword ptr fs:[eax],edx
 00660881    push        6608B9
 00660886    lea         eax,[ebp-2C]
 00660889    call        @VarClr
 0066088E    lea         eax,[ebp-1C]
 00660891    mov         edx,dword ptr ds:[65C8F8];IXMLNode
 00660897    mov         ecx,2
 0066089C    call        @FinalizeArray
 006608A1    lea         eax,[ebp-14]
 006608A4    call        @VarClr
 006608A9    lea         eax,[ebp-4]
 006608AC    call        @IntfClear
 006608B1    ret
>006608B2    jmp         @HandleFinally
>006608B7    jmp         00660886
 006608B9    mov         eax,edi
 006608BB    pop         edi
 006608BC    pop         esi
 006608BD    pop         ebx
 006608BE    mov         esp,ebp
 006608C0    pop         ebp
 006608C1    ret
*}
end;

//006608D4
function TXMLNodeList.ReplaceNode(const OldNode:XMLIntf.IXMLNode; const NewNode:XMLIntf.IXMLNode):IXMLNode;
begin
{*
 006608D4    push        ebp
 006608D5    mov         ebp,esp
 006608D7    push        ebx
 006608D8    push        esi
 006608D9    push        edi
 006608DA    mov         edi,ecx
 006608DC    mov         esi,edx
 006608DE    mov         ebx,eax
 006608E0    mov         edx,esi
 006608E2    mov         eax,ebx
 006608E4    call        TXMLNodeList.Remove
 006608E9    mov         ecx,edi
 006608EB    mov         edx,eax
 006608ED    mov         eax,ebx
 006608EF    call        TXMLNodeList.Insert
 006608F4    mov         eax,dword ptr [ebp+8]
 006608F7    mov         edx,esi
 006608F9    call        @IntfCopy
 006608FE    pop         edi
 006608FF    pop         esi
 00660900    pop         ebx
 00660901    pop         ebp
 00660902    ret         4
*}
end;

//00660908
procedure TXMLNodeList.Clear;
begin
{*
 00660908    push        ebp
 00660909    mov         ebp,esp
 0066090B    add         esp,0FFFFFFF8
 0066090E    xor         edx,edx
 00660910    mov         dword ptr [ebp-8],edx
 00660913    mov         dword ptr [ebp-4],eax
 00660916    xor         eax,eax
 00660918    push        ebp
 00660919    push        660999
 0066091E    push        dword ptr fs:[eax]
 00660921    mov         dword ptr fs:[eax],esp
 00660924    mov         eax,dword ptr [ebp-4]
 00660927    mov         eax,dword ptr [eax+0C]
 0066092A    mov         edx,dword ptr [eax]
 0066092C    call        dword ptr [edx+48]
 0066092F    xor         eax,eax
 00660931    push        ebp
 00660932    push        66097C
 00660937    push        dword ptr fs:[eax]
 0066093A    mov         dword ptr fs:[eax],esp
>0066093D    jmp         00660957
 0066093F    lea         ecx,[ebp-8]
 00660942    xor         edx,edx
 00660944    mov         eax,dword ptr [ebp-4]
 00660947    call        TXMLNodeList.Get
 0066094C    mov         edx,dword ptr [ebp-8]
 0066094F    mov         eax,dword ptr [ebp-4]
 00660952    call        TXMLNodeList.Remove
 00660957    mov         eax,dword ptr [ebp-4]
 0066095A    call        TXMLNodeList.GetCount
 0066095F    test        eax,eax
>00660961    jg          0066093F
 00660963    xor         eax,eax
 00660965    pop         edx
 00660966    pop         ecx
 00660967    pop         ecx
 00660968    mov         dword ptr fs:[eax],edx
 0066096B    push        660983
 00660970    mov         eax,dword ptr [ebp-4]
 00660973    mov         eax,dword ptr [eax+0C]
 00660976    mov         edx,dword ptr [eax]
 00660978    call        dword ptr [edx+4C]
 0066097B    ret
>0066097C    jmp         @HandleFinally
>00660981    jmp         00660970
 00660983    xor         eax,eax
 00660985    pop         edx
 00660986    pop         ecx
 00660987    pop         ecx
 00660988    mov         dword ptr fs:[eax],edx
 0066098B    push        6609A0
 00660990    lea         eax,[ebp-8]
 00660993    call        @IntfClear
 00660998    ret
>00660999    jmp         @HandleFinally
>0066099E    jmp         00660990
 006609A0    pop         ecx
 006609A1    pop         ecx
 006609A2    pop         ebp
 006609A3    ret
*}
end;

//006609A4
{*function sub_006609A4(?:?):?;
begin
 006609A4    mov         eax,dword ptr [eax+1C]
 006609A7    ret
end;*}

//006609A8
constructor TXMLNode.Create(OwnerDoc:TXMLDocument; AParentNode:TXMLNode);
begin
{*
 006609A8    push        ebp
 006609A9    mov         ebp,esp
 006609AB    push        0
 006609AD    push        ebx
 006609AE    push        esi
 006609AF    push        edi
 006609B0    test        dl,dl
>006609B2    je          006609BC
 006609B4    add         esp,0FFFFFFF0
 006609B7    call        @ClassCreate
 006609BC    mov         esi,ecx
 006609BE    mov         ebx,edx
 006609C0    mov         edi,eax
 006609C2    xor         eax,eax
 006609C4    push        ebp
 006609C5    push        660A44
 006609CA    push        dword ptr fs:[eax]
 006609CD    mov         dword ptr fs:[eax],esp
 006609D0    xor         edx,edx
 006609D2    mov         eax,edi
 006609D4    call        TObject.Create
 006609D9    test        esi,esi
>006609DB    jne         006609F2
 006609DD    lea         edx,[ebp-4]
 006609E0    mov         eax,[007C4878];^SResString374:TResStringRec
 006609E5    call        LoadResString
 006609EA    mov         eax,dword ptr [ebp-4]
 006609ED    call        XMLDocError
 006609F2    lea         eax,[edi+20]
 006609F5    mov         edx,esi
 006609F7    call        @IntfCopy
 006609FC    mov         eax,dword ptr [ebp+0C]
 006609FF    mov         dword ptr [edi+28],eax
 00660A02    mov         eax,dword ptr [ebp+8]
 00660A05    mov         dword ptr [edi+1C],eax
 00660A08    mov         esi,dword ptr [edi+28]
 00660A0B    test        esi,esi
>00660A0D    je          00660A25
 00660A0F    mov         eax,esi
 00660A11    call        TXMLNode.GetNodeType
 00660A16    cmp         al,9
>00660A18    jne         00660A25
 00660A1A    mov         eax,edi
 00660A1C    call        TXMLNode.GetNodeType
 00660A21    cmp         al,1
>00660A23    je          00660A29
 00660A25    xor         eax,eax
>00660A27    jmp         00660A2B
 00660A29    mov         al,1
 00660A2B    mov         byte ptr [edi+30],al
 00660A2E    xor         eax,eax
 00660A30    pop         edx
 00660A31    pop         ecx
 00660A32    pop         ecx
 00660A33    mov         dword ptr fs:[eax],edx
 00660A36    push        660A4B
 00660A3B    lea         eax,[ebp-4]
 00660A3E    call        @UStrClr
 00660A43    ret
>00660A44    jmp         @HandleFinally
>00660A49    jmp         00660A3B
 00660A4B    mov         eax,edi
 00660A4D    test        bl,bl
>00660A4F    je          00660A60
 00660A51    call        @AfterConstruction
 00660A56    pop         dword ptr fs:[0]
 00660A5D    add         esp,0C
 00660A60    mov         eax,edi
 00660A62    pop         edi
 00660A63    pop         esi
 00660A64    pop         ebx
 00660A65    pop         ecx
 00660A66    pop         ebp
 00660A67    ret         8
*}
end;

//00660A6C
constructor TXMLNode.CreateHosted;
begin
{*
 00660A6C    push        ebp
 00660A6D    mov         ebp,esp
 00660A6F    push        ecx
 00660A70    push        ebx
 00660A71    push        esi
 00660A72    test        dl,dl
>00660A74    je          00660A7E
 00660A76    add         esp,0FFFFFFF0
 00660A79    call        @ClassCreate
 00660A7E    mov         ebx,ecx
 00660A80    mov         byte ptr [ebp-1],dl
 00660A83    mov         esi,eax
>00660A85    jmp         00660A89
 00660A87    mov         ebx,eax
 00660A89    mov         eax,dword ptr [ebx+24]
 00660A8C    test        eax,eax
>00660A8E    jne         00660A87
 00660A90    mov         eax,dword ptr [ebx+28]
 00660A93    push        eax
 00660A94    mov         eax,dword ptr [ebx+1C]
 00660A97    push        eax
 00660A98    mov         ecx,dword ptr [ebx+20]
 00660A9B    xor         edx,edx
 00660A9D    mov         eax,esi
 00660A9F    call        TXMLNode.Create
 00660AA4    mov         byte ptr [esi+30],0
 00660AA8    mov         eax,ebx
 00660AAA    mov         dword ptr [esi+24],eax
 00660AAD    mov         edx,esi
 00660AAF    call        TXMLNode.AddHostedNode
 00660AB4    mov         eax,esi
 00660AB6    cmp         byte ptr [ebp-1],0
>00660ABA    je          00660ACB
 00660ABC    call        @AfterConstruction
 00660AC1    pop         dword ptr fs:[0]
 00660AC8    add         esp,0C
 00660ACB    mov         eax,esi
 00660ACD    pop         esi
 00660ACE    pop         ebx
 00660ACF    pop         ecx
 00660AD0    pop         ebp
 00660AD1    ret
*}
end;

//00660AD4
destructor TXMLNode.Destroy();
begin
{*
 00660AD4    push        ebx
 00660AD5    push        esi
 00660AD6    push        edi
 00660AD7    push        ecx
 00660AD8    call        @BeforeDestruction
 00660ADD    mov         ebx,edx
 00660ADF    mov         esi,eax
 00660AE1    cmp         dword ptr [esi+2C],0;TXMLNode.FHostedNodes:TXMLNodeArray
>00660AE5    je          00660B1E
 00660AE7    mov         eax,dword ptr [esi+2C];TXMLNode.FHostedNodes:TXMLNodeArray
 00660AEA    mov         dword ptr [esp],eax
 00660AED    mov         eax,dword ptr [esp]
 00660AF0    test        eax,eax
>00660AF2    je          00660AF9
 00660AF4    sub         eax,4
 00660AF7    mov         eax,dword ptr [eax]
 00660AF9    dec         eax
 00660AFA    test        eax,eax
>00660AFC    jl          00660B10
 00660AFE    inc         eax
 00660AFF    xor         edx,edx
 00660B01    mov         ecx,dword ptr [esi+2C];TXMLNode.FHostedNodes:TXMLNodeArray
 00660B04    mov         ecx,dword ptr [ecx+edx*4]
 00660B07    xor         edi,edi
 00660B09    mov         dword ptr [ecx+24],edi
 00660B0C    inc         edx
 00660B0D    dec         eax
>00660B0E    jne         00660B01
 00660B10    lea         eax,[esi+2C];TXMLNode.FHostedNodes:TXMLNodeArray
 00660B13    mov         edx,dword ptr ds:[65D124];TXMLNodeArray
 00660B19    call        @DynArrayClear
 00660B1E    mov         eax,dword ptr [esi+24];TXMLNode.FHostNode:TXMLNode
 00660B21    test        eax,eax
>00660B23    je          00660B2C
 00660B25    mov         edx,esi
 00660B27    call        00662AF8
 00660B2C    mov         dl,0FC
 00660B2E    and         dl,bl
 00660B30    mov         eax,esi
 00660B32    call        TObject.Destroy
 00660B37    test        bl,bl
>00660B39    jle         00660B42
 00660B3B    mov         eax,esi
 00660B3D    call        @ClassDestroy
 00660B42    pop         edx
 00660B43    pop         edi
 00660B44    pop         esi
 00660B45    pop         ebx
 00660B46    ret
*}
end;

//00660B48
function TXMLNode._AddRef:Integer; stdcall;
begin
{*
 00660B48    push        ebp
 00660B49    mov         ebp,esp
 00660B4B    push        ebx
 00660B4C    push        esi
 00660B4D    mov         ebx,dword ptr [ebp+8]
 00660B50    push        ebx
 00660B51    call        TInterfacedObject._AddRef
 00660B56    mov         esi,eax
 00660B58    cmp         byte ptr [ebx+30],0
>00660B5C    je          00660B72
 00660B5E    cmp         esi,1
>00660B61    jle         00660B72
 00660B63    cmp         dword ptr [ebx+1C],0
>00660B67    je          00660B72
 00660B69    mov         eax,dword ptr [ebx+1C]
 00660B6C    push        eax
 00660B6D    call        TXMLDocument._AddRef
 00660B72    mov         eax,esi
 00660B74    pop         esi
 00660B75    pop         ebx
 00660B76    pop         ebp
 00660B77    ret         4
*}
end;

//00660B7C
function TXMLNode._Release:Integer; stdcall;
begin
{*
 00660B7C    push        ebp
 00660B7D    mov         ebp,esp
 00660B7F    push        ebx
 00660B80    push        esi
 00660B81    mov         ebx,dword ptr [ebp+8]
 00660B84    push        ebx
 00660B85    call        TInterfacedObject._Release
 00660B8A    mov         esi,eax
 00660B8C    test        esi,esi
>00660B8E    jle         00660BA5
 00660B90    cmp         byte ptr [ebx+30],0
>00660B94    je          00660BA5
 00660B96    cmp         dword ptr [ebx+1C],0
>00660B9A    je          00660BA5
 00660B9C    mov         eax,dword ptr [ebx+1C]
 00660B9F    push        eax
 00660BA0    call        TXMLDocument._Release
 00660BA5    mov         eax,esi
 00660BA7    pop         esi
 00660BA8    pop         ebx
 00660BA9    pop         ebp
 00660BAA    ret         4
*}
end;

//00660BB0
procedure TXMLNode.ClearDocumentRef;
begin
{*
 00660BB0    push        ebp
 00660BB1    mov         ebp,esp
 00660BB3    mov         ecx,6
 00660BB8    push        0
 00660BBA    push        0
 00660BBC    dec         ecx
>00660BBD    jne         00660BB8
 00660BBF    push        ecx
 00660BC0    push        ebx
 00660BC1    push        esi
 00660BC2    push        edi
 00660BC3    mov         esi,eax
 00660BC5    xor         eax,eax
 00660BC7    push        ebp
 00660BC8    push        660CC8
 00660BCD    push        dword ptr fs:[eax]
 00660BD0    mov         dword ptr fs:[eax],esp
 00660BD3    xor         eax,eax
 00660BD5    mov         dword ptr [esi+1C],eax
 00660BD8    cmp         dword ptr [esi+10],0
>00660BDC    je          00660C31
 00660BDE    mov         eax,dword ptr [esi+10]
 00660BE1    mov         edx,dword ptr [eax]
 00660BE3    call        dword ptr [edx+0C]
 00660BE6    mov         ebx,eax
 00660BE8    dec         ebx
 00660BE9    test        ebx,ebx
>00660BEB    jl          00660C31
 00660BED    inc         ebx
 00660BEE    mov         dword ptr [ebp-4],0
 00660BF5    lea         eax,[ebp-1C]
 00660BF8    mov         edx,dword ptr [ebp-4]
 00660BFB    mov         cl,0FC
 00660BFD    call        @OleVarFromInt
 00660C02    lea         edx,[ebp-1C]
 00660C05    lea         ecx,[ebp-0C]
 00660C08    mov         eax,dword ptr [esi+10]
 00660C0B    mov         edi,dword ptr [eax]
 00660C0D    call        dword ptr [edi+10]
 00660C10    mov         edx,dword ptr [ebp-0C]
 00660C13    lea         eax,[ebp-8]
 00660C16    mov         ecx,660CD8
 00660C1B    call        @IntfCast
 00660C20    mov         eax,dword ptr [ebp-8]
 00660C23    mov         edx,dword ptr [eax]
 00660C25    call        dword ptr [edx+0B4]
 00660C2B    inc         dword ptr [ebp-4]
 00660C2E    dec         ebx
>00660C2F    jne         00660BF5
 00660C31    cmp         dword ptr [esi+0C],0
>00660C35    je          00660C8A
 00660C37    mov         eax,dword ptr [esi+0C]
 00660C3A    mov         edx,dword ptr [eax]
 00660C3C    call        dword ptr [edx+0C]
 00660C3F    mov         ebx,eax
 00660C41    dec         ebx
 00660C42    test        ebx,ebx
>00660C44    jl          00660C8A
 00660C46    inc         ebx
 00660C47    mov         dword ptr [ebp-4],0
 00660C4E    lea         eax,[ebp-34]
 00660C51    mov         edx,dword ptr [ebp-4]
 00660C54    mov         cl,0FC
 00660C56    call        @OleVarFromInt
 00660C5B    lea         edx,[ebp-34]
 00660C5E    lea         ecx,[ebp-24]
 00660C61    mov         eax,dword ptr [esi+0C]
 00660C64    mov         edi,dword ptr [eax]
 00660C66    call        dword ptr [edi+10]
 00660C69    mov         edx,dword ptr [ebp-24]
 00660C6C    lea         eax,[ebp-20]
 00660C6F    mov         ecx,660CD8
 00660C74    call        @IntfCast
 00660C79    mov         eax,dword ptr [ebp-20]
 00660C7C    mov         edx,dword ptr [eax]
 00660C7E    call        dword ptr [edx+0B4]
 00660C84    inc         dword ptr [ebp-4]
 00660C87    dec         ebx
>00660C88    jne         00660C4E
 00660C8A    xor         eax,eax
 00660C8C    pop         edx
 00660C8D    pop         ecx
 00660C8E    pop         ecx
 00660C8F    mov         dword ptr fs:[eax],edx
 00660C92    push        660CCF
 00660C97    lea         eax,[ebp-34]
 00660C9A    call        @VarClr
 00660C9F    lea         eax,[ebp-24]
 00660CA2    call        @IntfClear
 00660CA7    lea         eax,[ebp-20]
 00660CAA    call        @IntfClear
 00660CAF    lea         eax,[ebp-1C]
 00660CB2    call        @VarClr
 00660CB7    lea         eax,[ebp-0C]
 00660CBA    call        @IntfClear
 00660CBF    lea         eax,[ebp-8]
 00660CC2    call        @IntfClear
 00660CC7    ret
>00660CC8    jmp         @HandleFinally
>00660CCD    jmp         00660C97
 00660CCF    pop         edi
 00660CD0    pop         esi
 00660CD1    pop         ebx
 00660CD2    mov         esp,ebp
 00660CD4    pop         ebp
 00660CD5    ret
*}
end;

//00660CE8
procedure TXMLNode.CreateAttributeList;
begin
{*
 00660CE8    push        ebp
 00660CE9    mov         ebp,esp
 00660CEB    mov         ecx,4
 00660CF0    push        0
 00660CF2    push        0
 00660CF4    dec         ecx
>00660CF5    jne         00660CF0
 00660CF7    push        ecx
 00660CF8    push        ebx
 00660CF9    push        esi
 00660CFA    push        edi
 00660CFB    mov         dword ptr [ebp-4],edx
 00660CFE    mov         ebx,eax
 00660D00    xor         eax,eax
 00660D02    push        ebp
 00660D03    push        660E1B
 00660D08    push        dword ptr fs:[eax]
 00660D0B    mov         dword ptr fs:[eax],esp
 00660D0E    push        0
 00660D10    push        ebx
 00660D11    push        661640;TXMLNode.AttributeListNotify
 00660D16    mov         ecx,ebx
 00660D18    mov         dl,1
 00660D1A    mov         eax,[0065CF24];TXMLNodeList
 00660D1F    call        TXMLNodeList.Create
 00660D24    mov         dword ptr [ebp-0C],eax
 00660D27    lea         eax,[ebp-10]
 00660D2A    call        @IntfClear
 00660D2F    push        eax
 00660D30    mov         eax,dword ptr [ebx+20]
 00660D33    push        eax
 00660D34    mov         eax,dword ptr [eax]
 00660D36    call        dword ptr [eax+34]
 00660D39    call        @CheckAutoResult
 00660D3E    cmp         dword ptr [ebp-10],0
>00660D42    je          00660DD3
 00660D48    lea         eax,[ebp-14]
 00660D4B    push        eax
 00660D4C    lea         eax,[ebp-18]
 00660D4F    call        @IntfClear
 00660D54    push        eax
 00660D55    mov         eax,dword ptr [ebx+20]
 00660D58    push        eax
 00660D59    mov         eax,dword ptr [eax]
 00660D5B    call        dword ptr [eax+34]
 00660D5E    call        @CheckAutoResult
 00660D63    mov         eax,dword ptr [ebp-18]
 00660D66    push        eax
 00660D67    mov         eax,dword ptr [eax]
 00660D69    call        dword ptr [eax+10]
 00660D6C    call        @CheckAutoResult
 00660D71    mov         esi,dword ptr [ebp-14]
 00660D74    dec         esi
 00660D75    test        esi,esi
>00660D77    jl          00660DD3
 00660D79    inc         esi
 00660D7A    mov         dword ptr [ebp-8],0
 00660D81    lea         eax,[ebp-20]
 00660D84    call        @IntfClear
 00660D89    push        eax
 00660D8A    mov         eax,dword ptr [ebp-8]
 00660D8D    push        eax
 00660D8E    lea         eax,[ebp-24]
 00660D91    call        @IntfClear
 00660D96    push        eax
 00660D97    mov         eax,dword ptr [ebx+20]
 00660D9A    push        eax
 00660D9B    mov         eax,dword ptr [eax]
 00660D9D    call        dword ptr [eax+34]
 00660DA0    call        @CheckAutoResult
 00660DA5    mov         eax,dword ptr [ebp-24]
 00660DA8    push        eax
 00660DA9    mov         eax,dword ptr [eax]
 00660DAB    call        dword ptr [eax+0C]
 00660DAE    call        @CheckAutoResult
 00660DB3    mov         edx,dword ptr [ebp-20]
 00660DB6    lea         ecx,[ebp-1C]
 00660DB9    mov         eax,ebx
 00660DBB    mov         edi,dword ptr [eax]
 00660DBD    call        dword ptr [edi]
 00660DBF    mov         edx,dword ptr [ebp-1C]
 00660DC2    mov         eax,dword ptr [ebp-0C]
 00660DC5    mov         eax,dword ptr [eax+0C]
 00660DC8    mov         ecx,dword ptr [eax]
 00660DCA    call        dword ptr [ecx+38]
 00660DCD    inc         dword ptr [ebp-8]
 00660DD0    dec         esi
>00660DD1    jne         00660D81
 00660DD3    mov         eax,dword ptr [ebp-4]
 00660DD6    mov         edx,dword ptr [ebp-0C]
 00660DD9    test        edx,edx
>00660DDB    je          00660DE0
 00660DDD    sub         edx,0FFFFFFDC
 00660DE0    call        @IntfCopy
 00660DE5    xor         eax,eax
 00660DE7    pop         edx
 00660DE8    pop         ecx
 00660DE9    pop         ecx
 00660DEA    mov         dword ptr fs:[eax],edx
 00660DED    push        660E22
 00660DF2    lea         eax,[ebp-24]
 00660DF5    call        @IntfClear
 00660DFA    lea         eax,[ebp-20]
 00660DFD    call        @IntfClear
 00660E02    lea         eax,[ebp-1C]
 00660E05    call        @IntfClear
 00660E0A    lea         eax,[ebp-18]
 00660E0D    call        @IntfClear
 00660E12    lea         eax,[ebp-10]
 00660E15    call        @IntfClear
 00660E1A    ret
>00660E1B    jmp         @HandleFinally
>00660E20    jmp         00660DF2
 00660E22    pop         edi
 00660E23    pop         esi
 00660E24    pop         ebx
 00660E25    mov         esp,ebp
 00660E27    pop         ebp
 00660E28    ret
*}
end;

//00660E2C
function TXMLNode.GetAttributeNodes:IXMLNodeList;
begin
{*
 00660E2C    push        ebp
 00660E2D    mov         ebp,esp
 00660E2F    push        0
 00660E31    push        ebx
 00660E32    push        esi
 00660E33    push        edi
 00660E34    mov         edi,edx
 00660E36    mov         ebx,eax
 00660E38    xor         eax,eax
 00660E3A    push        ebp
 00660E3B    push        660E96
 00660E40    push        dword ptr fs:[eax]
 00660E43    mov         dword ptr fs:[eax],esp
 00660E46    mov         esi,dword ptr [ebx+24]
 00660E49    test        esi,esi
>00660E4B    je          00660E58
 00660E4D    mov         edx,edi
 00660E4F    mov         eax,esi
 00660E51    call        TXMLNode.GetAttributeNodes
>00660E56    jmp         00660E80
 00660E58    cmp         dword ptr [ebx+0C],0
>00660E5C    jne         00660E76
 00660E5E    lea         edx,[ebp-4]
 00660E61    mov         eax,ebx
 00660E63    mov         si,0FFFF
 00660E67    call        @CallDynaInst
 00660E6C    mov         edx,dword ptr [ebp-4]
 00660E6F    mov         eax,ebx
 00660E71    mov         ecx,dword ptr [eax]
 00660E73    call        dword ptr [ecx+14]
 00660E76    mov         eax,edi
 00660E78    mov         edx,dword ptr [ebx+0C]
 00660E7B    call        @IntfCopy
 00660E80    xor         eax,eax
 00660E82    pop         edx
 00660E83    pop         ecx
 00660E84    pop         ecx
 00660E85    mov         dword ptr fs:[eax],edx
 00660E88    push        660E9D
 00660E8D    lea         eax,[ebp-4]
 00660E90    call        @IntfClear
 00660E95    ret
>00660E96    jmp         @HandleFinally
>00660E9B    jmp         00660E8D
 00660E9D    pop         edi
 00660E9E    pop         esi
 00660E9F    pop         ebx
 00660EA0    pop         ecx
 00660EA1    pop         ebp
 00660EA2    ret
*}
end;

//00660EA4
{*procedure sub_00660EA4(?:?);
begin
 00660EA4    push        ebx
 00660EA5    push        esi
 00660EA6    push        edi
 00660EA7    push        ebp
 00660EA8    push        ecx
 00660EA9    mov         ebp,edx
 00660EAB    mov         ebx,eax
 00660EAD    cmp         dword ptr [ebx+24],0;TXMLNode.FHostNode:TXMLNode
>00660EB1    jne         00660EF0
 00660EB3    lea         eax,[ebx+0C];TXMLNode.FAttributeNodes:IXMLNodeList
 00660EB6    mov         edx,ebp
 00660EB8    call        @IntfCopy
 00660EBD    cmp         dword ptr [ebx+2C],0;TXMLNode.FHostedNodes:TXMLNodeArray
>00660EC1    je          00660EF0
 00660EC3    mov         eax,dword ptr [ebx+2C];TXMLNode.FHostedNodes:TXMLNodeArray
 00660EC6    mov         dword ptr [esp],eax
 00660EC9    mov         eax,dword ptr [esp]
 00660ECC    test        eax,eax
>00660ECE    je          00660ED5
 00660ED0    sub         eax,4
 00660ED3    mov         eax,dword ptr [eax]
 00660ED5    mov         esi,eax
 00660ED7    dec         esi
 00660ED8    test        esi,esi
>00660EDA    jl          00660EF0
 00660EDC    inc         esi
 00660EDD    xor         edi,edi
 00660EDF    mov         eax,dword ptr [ebx+2C];TXMLNode.FHostedNodes:TXMLNodeArray
 00660EE2    mov         eax,dword ptr [eax+edi*4]
 00660EE5    mov         edx,ebp
 00660EE7    mov         ecx,dword ptr [eax]
 00660EE9    call        dword ptr [ecx+14]
 00660EEC    inc         edi
 00660EED    dec         esi
>00660EEE    jne         00660EDF
 00660EF0    pop         edx
 00660EF1    pop         ebp
 00660EF2    pop         edi
 00660EF3    pop         esi
 00660EF4    pop         ebx
 00660EF5    ret
end;*}

//00660EF8
function TXMLNode.HasAttribute(const Name:Xmldom.DOMString):Boolean;
begin
{*
 00660EF8    push        ebp
 00660EF9    mov         ebp,esp
 00660EFB    push        0
 00660EFD    push        0
 00660EFF    push        0
 00660F01    push        ebx
 00660F02    push        esi
 00660F03    mov         esi,edx
 00660F05    mov         ebx,eax
 00660F07    xor         eax,eax
 00660F09    push        ebp
 00660F0A    push        660F84
 00660F0F    push        dword ptr fs:[eax]
 00660F12    mov         dword ptr fs:[eax],esp
 00660F15    mov         eax,ebx
 00660F17    call        TXMLNode.GetNodeType
 00660F1C    cmp         al,1
>00660F1E    jne         00660F4C
 00660F20    lea         eax,[ebp-4]
 00660F23    push        eax
 00660F24    push        esi
 00660F25    lea         edx,[ebp-8]
 00660F28    mov         eax,ebx
 00660F2A    call        TXMLNode.DOMElement
 00660F2F    mov         eax,dword ptr [ebp-8]
 00660F32    push        eax
 00660F33    mov         eax,dword ptr [eax]
 00660F35    call        dword ptr [eax+0A0]
 00660F3B    call        @CheckAutoResult
 00660F40    cmp         word ptr [ebp-4],1
 00660F45    sbb         eax,eax
 00660F47    inc         eax
 00660F48    mov         ebx,eax
>00660F4A    jmp         00660F66
 00660F4C    lea         edx,[ebp-0C]
 00660F4F    mov         eax,ebx
 00660F51    call        TXMLNode.GetAttributeNodes
 00660F56    mov         eax,dword ptr [ebp-0C]
 00660F59    mov         edx,esi
 00660F5B    mov         ecx,dword ptr [eax]
 00660F5D    call        dword ptr [ecx+50]
 00660F60    inc         eax
 00660F61    setne       al
 00660F64    mov         ebx,eax
 00660F66    xor         eax,eax
 00660F68    pop         edx
 00660F69    pop         ecx
 00660F6A    pop         ecx
 00660F6B    mov         dword ptr fs:[eax],edx
 00660F6E    push        660F8B
 00660F73    lea         eax,[ebp-0C]
 00660F76    call        @IntfClear
 00660F7B    lea         eax,[ebp-8]
 00660F7E    call        @IntfClear
 00660F83    ret
>00660F84    jmp         @HandleFinally
>00660F89    jmp         00660F73
 00660F8B    mov         eax,ebx
 00660F8D    pop         esi
 00660F8E    pop         ebx
 00660F8F    mov         esp,ebp
 00660F91    pop         ebp
 00660F92    ret
*}
end;

//00660F94
function TXMLNode.HasAttribute(const Name:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):Boolean;
begin
{*
 00660F94    push        ebp
 00660F95    mov         ebp,esp
 00660F97    add         esp,0FFFFFFF0
 00660F9A    push        ebx
 00660F9B    push        esi
 00660F9C    xor         ebx,ebx
 00660F9E    mov         dword ptr [ebp-10],ebx
 00660FA1    mov         dword ptr [ebp-0C],ebx
 00660FA4    mov         dword ptr [ebp-4],ecx
 00660FA7    mov         esi,edx
 00660FA9    mov         ebx,eax
 00660FAB    xor         eax,eax
 00660FAD    push        ebp
 00660FAE    push        66102F
 00660FB3    push        dword ptr fs:[eax]
 00660FB6    mov         dword ptr fs:[eax],esp
 00660FB9    mov         eax,ebx
 00660FBB    call        TXMLNode.GetNodeType
 00660FC0    cmp         al,1
>00660FC2    jne         00660FF4
 00660FC4    lea         eax,[ebp-8]
 00660FC7    push        eax
 00660FC8    push        esi
 00660FC9    mov         eax,dword ptr [ebp-4]
 00660FCC    push        eax
 00660FCD    lea         edx,[ebp-0C]
 00660FD0    mov         eax,ebx
 00660FD2    call        TXMLNode.DOMElement
 00660FD7    mov         eax,dword ptr [ebp-0C]
 00660FDA    push        eax
 00660FDB    mov         eax,dword ptr [eax]
 00660FDD    call        dword ptr [eax+0A4]
 00660FE3    call        @CheckAutoResult
 00660FE8    cmp         word ptr [ebp-8],1
 00660FED    sbb         eax,eax
 00660FEF    inc         eax
 00660FF0    mov         ebx,eax
>00660FF2    jmp         00661011
 00660FF4    lea         edx,[ebp-10]
 00660FF7    mov         eax,ebx
 00660FF9    call        TXMLNode.GetAttributeNodes
 00660FFE    mov         eax,dword ptr [ebp-10]
 00661001    mov         ecx,dword ptr [ebp-4]
 00661004    mov         edx,esi
 00661006    mov         ebx,dword ptr [eax]
 00661008    call        dword ptr [ebx+54]
 0066100B    inc         eax
 0066100C    setne       al
 0066100F    mov         ebx,eax
 00661011    xor         eax,eax
 00661013    pop         edx
 00661014    pop         ecx
 00661015    pop         ecx
 00661016    mov         dword ptr fs:[eax],edx
 00661019    push        661036
 0066101E    lea         eax,[ebp-10]
 00661021    call        @IntfClear
 00661026    lea         eax,[ebp-0C]
 00661029    call        @IntfClear
 0066102E    ret
>0066102F    jmp         @HandleFinally
>00661034    jmp         0066101E
 00661036    mov         eax,ebx
 00661038    pop         esi
 00661039    pop         ebx
 0066103A    mov         esp,ebp
 0066103C    pop         ebp
 0066103D    ret
*}
end;

//00661040
function TXMLNode.CreateAttributeNode(const ADOMNode:Xmldom.IDOMNode):IXMLNode;
begin
{*
 00661040    push        ebx
 00661041    push        esi
 00661042    push        edi
 00661043    mov         edi,ecx
 00661045    mov         esi,edx
 00661047    mov         ebx,eax
 00661049    push        0
 0066104B    mov         eax,dword ptr [ebx+1C]
 0066104E    push        eax
 0066104F    mov         ecx,esi
 00661051    mov         dl,1
 00661053    mov         eax,[0065D600];TXMLNode
 00661058    call        TXMLNode.Create
 0066105D    mov         edx,eax
 0066105F    test        edx,edx
>00661061    je          00661066
 00661063    sub         edx,0FFFFFFB8
 00661066    mov         eax,edi
 00661068    call        @IntfCopy
 0066106D    pop         edi
 0066106E    pop         esi
 0066106F    pop         ebx
 00661070    ret
*}
end;

//00661074
function TXMLNode.GetAttribute(const AttrName:Xmldom.DOMString):OleVariant;
begin
{*
 00661074    push        ebp
 00661075    mov         ebp,esp
 00661077    push        ecx
 00661078    mov         ecx,4
 0066107D    push        0
 0066107F    push        0
 00661081    dec         ecx
>00661082    jne         0066107D
 00661084    xchg        ecx,dword ptr [ebp-4]
 00661087    push        ebx
 00661088    push        esi
 00661089    mov         dword ptr [ebp-4],ecx
 0066108C    mov         esi,edx
 0066108E    mov         ebx,eax
 00661090    xor         eax,eax
 00661092    push        ebp
 00661093    push        661170
 00661098    push        dword ptr fs:[eax]
 0066109B    mov         dword ptr fs:[eax],esp
 0066109E    mov         edx,esi
 006610A0    mov         eax,ebx
 006610A2    call        TXMLNode.HasAttribute
 006610A7    test        al,al
>006610A9    je          00661109
 006610AB    mov         eax,ebx
 006610AD    call        TXMLNode.GetNodeType
 006610B2    cmp         al,1
>006610B4    jne         006610E5
 006610B6    lea         eax,[ebp-8]
 006610B9    call        @UStrClr
 006610BE    push        eax
 006610BF    push        esi
 006610C0    lea         edx,[ebp-0C]
 006610C3    mov         eax,ebx
 006610C5    call        TXMLNode.DOMElement
 006610CA    mov         eax,dword ptr [ebp-0C]
 006610CD    push        eax
 006610CE    mov         eax,dword ptr [eax]
 006610D0    call        dword ptr [eax+6C]
 006610D3    call        @CheckAutoResult
 006610D8    mov         edx,dword ptr [ebp-8]
 006610DB    mov         eax,dword ptr [ebp-4]
 006610DE    call        @OleVarFromUStr
>006610E3    jmp         0066113A
 006610E5    lea         edx,[ebp-14]
 006610E8    mov         eax,ebx
 006610EA    call        TXMLNode.GetAttributeNodes
 006610EF    mov         eax,dword ptr [ebp-14]
 006610F2    lea         ecx,[ebp-10]
 006610F5    mov         edx,esi
 006610F7    mov         ebx,dword ptr [eax]
 006610F9    call        dword ptr [ebx+38]
 006610FC    mov         eax,dword ptr [ebp-10]
 006610FF    mov         edx,dword ptr [ebp-4]
 00661102    mov         ecx,dword ptr [eax]
 00661104    call        dword ptr [ecx+3C]
>00661107    jmp         0066113A
 00661109    mov         esi,dword ptr [ebx+1C]
 0066110C    test        esi,esi
>0066110E    je          0066111B
 00661110    mov         eax,esi
 00661112    call        TXMLDocument.GetOptions
 00661117    test        al,4
>00661119    je          00661130
 0066111B    lea         eax,[ebp-24]
 0066111E    call        Null
 00661123    lea         edx,[ebp-24]
 00661126    mov         eax,dword ptr [ebp-4]
 00661129    call        @OleVarFromVar
>0066112E    jmp         0066113A
 00661130    mov         eax,dword ptr [ebp-4]
 00661133    xor         edx,edx
 00661135    call        @OleVarFromUStr
 0066113A    xor         eax,eax
 0066113C    pop         edx
 0066113D    pop         ecx
 0066113E    pop         ecx
 0066113F    mov         dword ptr fs:[eax],edx
 00661142    push        661177
 00661147    lea         eax,[ebp-24]
 0066114A    call        @VarClr
 0066114F    lea         eax,[ebp-14]
 00661152    call        @IntfClear
 00661157    lea         eax,[ebp-10]
 0066115A    call        @IntfClear
 0066115F    lea         eax,[ebp-0C]
 00661162    call        @IntfClear
 00661167    lea         eax,[ebp-8]
 0066116A    call        @UStrClr
 0066116F    ret
>00661170    jmp         @HandleFinally
>00661175    jmp         00661147
 00661177    pop         esi
 00661178    pop         ebx
 00661179    mov         esp,ebp
 0066117B    pop         ebp
 0066117C    ret
*}
end;

//00661180
function TXMLNode.GetAttributeNS(const AttrName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):OleVariant;
begin
{*
 00661180    push        ebp
 00661181    mov         ebp,esp
 00661183    push        0
 00661185    push        0
 00661187    push        0
 00661189    push        0
 0066118B    push        0
 0066118D    push        0
 0066118F    push        0
 00661191    push        0
 00661193    push        ebx
 00661194    push        esi
 00661195    push        edi
 00661196    mov         edi,ecx
 00661198    mov         esi,edx
 0066119A    mov         ebx,eax
 0066119C    xor         eax,eax
 0066119E    push        ebp
 0066119F    push        661264
 006611A4    push        dword ptr fs:[eax]
 006611A7    mov         dword ptr fs:[eax],esp
 006611AA    lea         eax,[ebp-4]
 006611AD    push        eax
 006611AE    push        esi
 006611AF    push        edi
 006611B0    lea         edx,[ebp-8]
 006611B3    mov         eax,ebx
 006611B5    call        TXMLNode.DOMElement
 006611BA    mov         eax,dword ptr [ebp-8]
 006611BD    push        eax
 006611BE    mov         eax,dword ptr [eax]
 006611C0    call        dword ptr [eax+0A4]
 006611C6    call        @CheckAutoResult
 006611CB    cmp         word ptr [ebp-4],0
>006611D0    je          00661205
 006611D2    lea         eax,[ebp-0C]
 006611D5    call        @UStrClr
 006611DA    push        eax
 006611DB    push        esi
 006611DC    push        edi
 006611DD    lea         edx,[ebp-10]
 006611E0    mov         eax,ebx
 006611E2    call        TXMLNode.DOMElement
 006611E7    mov         eax,dword ptr [ebp-10]
 006611EA    push        eax
 006611EB    mov         eax,dword ptr [eax]
 006611ED    call        dword ptr [eax+88]
 006611F3    call        @CheckAutoResult
 006611F8    mov         edx,dword ptr [ebp-0C]
 006611FB    mov         eax,dword ptr [ebp+8]
 006611FE    call        @OleVarFromUStr
>00661203    jmp         00661236
 00661205    mov         esi,dword ptr [ebx+1C]
 00661208    test        esi,esi
>0066120A    je          00661217
 0066120C    mov         eax,esi
 0066120E    call        TXMLDocument.GetOptions
 00661213    test        al,4
>00661215    je          0066122C
 00661217    lea         eax,[ebp-20]
 0066121A    call        Null
 0066121F    lea         edx,[ebp-20]
 00661222    mov         eax,dword ptr [ebp+8]
 00661225    call        @OleVarFromVar
>0066122A    jmp         00661236
 0066122C    mov         eax,dword ptr [ebp+8]
 0066122F    xor         edx,edx
 00661231    call        @OleVarFromUStr
 00661236    xor         eax,eax
 00661238    pop         edx
 00661239    pop         ecx
 0066123A    pop         ecx
 0066123B    mov         dword ptr fs:[eax],edx
 0066123E    push        66126B
 00661243    lea         eax,[ebp-20]
 00661246    call        @VarClr
 0066124B    lea         eax,[ebp-10]
 0066124E    call        @IntfClear
 00661253    lea         eax,[ebp-0C]
 00661256    call        @UStrClr
 0066125B    lea         eax,[ebp-8]
 0066125E    call        @IntfClear
 00661263    ret
>00661264    jmp         @HandleFinally
>00661269    jmp         00661243
 0066126B    pop         edi
 0066126C    pop         esi
 0066126D    pop         ebx
 0066126E    mov         esp,ebp
 00661270    pop         ebp
 00661271    ret         4
*}
end;

//00661274
{*procedure sub_00661274(?:?; ?:?; ?:?);
begin
 00661274    push        ebp
 00661275    mov         ebp,esp
 00661277    push        ecx
 00661278    mov         ecx,9
 0066127D    push        0
 0066127F    push        0
 00661281    dec         ecx
>00661282    jne         0066127D
 00661284    xchg        ecx,dword ptr [ebp-4]
 00661287    push        ebx
 00661288    push        esi
 00661289    mov         dword ptr [ebp-20],ecx
 0066128C    mov         dword ptr [ebp-1C],edx
 0066128F    mov         esi,eax
 00661291    xor         eax,eax
 00661293    push        ebp
 00661294    push        6614C6
 00661299    push        dword ptr fs:[eax]
 0066129C    mov         dword ptr fs:[eax],esp
 0066129F    mov         eax,dword ptr [ebp-20]
 006612A2    call        VarIsNull
 006612A7    and         eax,7F
 006612AA    movzx       eax,byte ptr [eax+7C0F54]
 006612B1    mov         byte ptr [ebp-21],al
 006612B4    cmp         byte ptr ds:[7C0F4C],0;gvar_007C0F4C
>006612BB    je          006612CF
 006612BD    cmp         byte ptr [ebp-21],3
>006612C1    jne         006612CF
 006612C3    mov         eax,dword ptr [ebp-20]
 006612C6    cmp         word ptr [eax],0B
 006612CA    sete        al
>006612CD    jmp         006612D1
 006612CF    xor         eax,eax
 006612D1    test        al,al
>006612D3    je          006612F1
 006612D5    mov         eax,dword ptr [ebp-20]
 006612D8    call        @VarToBool
 006612DD    and         eax,7F
 006612E0    mov         edx,dword ptr [eax*4+7C0F58];^'false'
 006612E7    lea         eax,[ebp-18]
 006612EA    call        @OleVarFromUStr
>006612EF    jmp         006612FC
 006612F1    lea         eax,[ebp-18]
 006612F4    mov         edx,dword ptr [ebp-20]
 006612F7    call        @VarCopy
 006612FC    movzx       edx,byte ptr [ebp-21]
 00661300    mov         cl,1
 00661302    mov         eax,esi
 00661304    mov         ebx,dword ptr [eax]
 00661306    call        dword ptr [ebx+10]
 00661309    mov         eax,esi
 0066130B    call        TXMLNode.GetNodeType
 00661310    cmp         al,1
>00661312    je          006613F0
 00661318    lea         eax,[ebp-28]
 0066131B    call        @IntfClear
 00661320    push        eax
 00661321    mov         eax,dword ptr [esi+20]
 00661324    push        eax
 00661325    mov         eax,dword ptr [eax]
 00661327    call        dword ptr [eax+34]
 0066132A    call        @CheckAutoResult
 0066132F    cmp         dword ptr [ebp-28],0
>00661333    je          006613F0
 00661339    cmp         byte ptr [ebp-21],3
>0066133D    jne         006613BC
 0066133F    lea         eax,[ebp-4]
 00661342    call        @IntfClear
 00661347    push        eax
 00661348    mov         eax,dword ptr [ebp-1C]
 0066134B    push        eax
 0066134C    lea         edx,[ebp-2C]
 0066134F    mov         eax,dword ptr [esi+1C]
 00661352    call        TXMLDocument.GetDOMDocument
 00661357    mov         eax,dword ptr [ebp-2C]
 0066135A    push        eax
 0066135B    mov         eax,dword ptr [eax]
 0066135D    call        dword ptr [eax+90]
 00661363    call        @CheckAutoResult
 00661368    lea         eax,[ebp-30]
 0066136B    lea         edx,[ebp-18]
 0066136E    call        @VarToUStr
 00661373    mov         eax,dword ptr [ebp-30]
 00661376    push        eax
 00661377    mov         eax,dword ptr [ebp-4]
 0066137A    push        eax
 0066137B    mov         eax,dword ptr [eax]
 0066137D    call        dword ptr [eax+14]
 00661380    call        @CheckAutoResult
 00661385    lea         eax,[ebp-34]
 00661388    call        @IntfClear
 0066138D    push        eax
 0066138E    mov         eax,dword ptr [ebp-4]
 00661391    push        eax
 00661392    lea         eax,[ebp-38]
 00661395    call        @IntfClear
 0066139A    push        eax
 0066139B    mov         eax,dword ptr [esi+20]
 0066139E    push        eax
 0066139F    mov         eax,dword ptr [eax]
 006613A1    call        dword ptr [eax+34]
 006613A4    call        @CheckAutoResult
 006613A9    mov         eax,dword ptr [ebp-38]
 006613AC    push        eax
 006613AD    mov         eax,dword ptr [eax]
 006613AF    call        dword ptr [eax+18]
 006613B2    call        @CheckAutoResult
>006613B7    jmp         0066143F
 006613BC    lea         eax,[ebp-3C]
 006613BF    call        @IntfClear
 006613C4    push        eax
 006613C5    mov         eax,dword ptr [ebp-1C]
 006613C8    push        eax
 006613C9    lea         eax,[ebp-40]
 006613CC    call        @IntfClear
 006613D1    push        eax
 006613D2    mov         eax,dword ptr [esi+20]
 006613D5    push        eax
 006613D6    mov         eax,dword ptr [eax]
 006613D8    call        dword ptr [eax+34]
 006613DB    call        @CheckAutoResult
 006613E0    mov         eax,dword ptr [ebp-40]
 006613E3    push        eax
 006613E4    mov         eax,dword ptr [eax]
 006613E6    call        dword ptr [eax+1C]
 006613E9    call        @CheckAutoResult
>006613EE    jmp         0066143F
 006613F0    cmp         byte ptr [ebp-21],3
>006613F4    jne         00661423
 006613F6    lea         eax,[ebp-44]
 006613F9    lea         edx,[ebp-18]
 006613FC    call        @VarToUStr
 00661401    mov         eax,dword ptr [ebp-44]
 00661404    push        eax
 00661405    mov         eax,dword ptr [ebp-1C]
 00661408    push        eax
 00661409    lea         edx,[ebp-48]
 0066140C    mov         eax,esi
 0066140E    call        TXMLNode.DOMElement
 00661413    mov         eax,dword ptr [ebp-48]
 00661416    push        eax
 00661417    mov         eax,dword ptr [eax]
 00661419    call        dword ptr [eax+70]
 0066141C    call        @CheckAutoResult
>00661421    jmp         0066143F
 00661423    mov         eax,dword ptr [ebp-1C]
 00661426    push        eax
 00661427    lea         edx,[ebp-4C]
 0066142A    mov         eax,esi
 0066142C    call        TXMLNode.DOMElement
 00661431    mov         eax,dword ptr [ebp-4C]
 00661434    push        eax
 00661435    mov         eax,dword ptr [eax]
 00661437    call        dword ptr [eax+74]
 0066143A    call        @CheckAutoResult
 0066143F    xor         edx,edx
 00661441    mov         eax,esi
 00661443    mov         ecx,dword ptr [eax]
 00661445    call        dword ptr [ecx+14]
 00661448    movzx       edx,byte ptr [ebp-21]
 0066144C    xor         ecx,ecx
 0066144E    mov         eax,esi
 00661450    mov         ebx,dword ptr [eax]
 00661452    call        dword ptr [ebx+10]
 00661455    xor         eax,eax
 00661457    pop         edx
 00661458    pop         ecx
 00661459    pop         ecx
 0066145A    mov         dword ptr fs:[eax],edx
 0066145D    push        6614CD
 00661462    lea         eax,[ebp-4C]
 00661465    mov         edx,dword ptr ds:[65B7A8];IDOMElement
 0066146B    mov         ecx,2
 00661470    call        @FinalizeArray
 00661475    lea         eax,[ebp-44]
 00661478    call        @UStrClr
 0066147D    lea         eax,[ebp-40]
 00661480    call        @IntfClear
 00661485    lea         eax,[ebp-3C]
 00661488    call        @IntfClear
 0066148D    lea         eax,[ebp-38]
 00661490    call        @IntfClear
 00661495    lea         eax,[ebp-34]
 00661498    call        @IntfClear
 0066149D    lea         eax,[ebp-30]
 006614A0    call        @UStrClr
 006614A5    lea         eax,[ebp-2C]
 006614A8    call        @IntfClear
 006614AD    lea         eax,[ebp-28]
 006614B0    call        @IntfClear
 006614B5    lea         eax,[ebp-18]
 006614B8    call        @VarClr
 006614BD    lea         eax,[ebp-4]
 006614C0    call        @IntfClear
 006614C5    ret
>006614C6    jmp         @HandleFinally
>006614CB    jmp         00661462
 006614CD    pop         esi
 006614CE    pop         ebx
 006614CF    mov         esp,ebp
 006614D1    pop         ebp
 006614D2    ret
end;*}

//006614D4
procedure TXMLNode.SetAttributeNS(const AttrName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString; const Value:OleVariant);
begin
{*
 006614D4    push        ebp
 006614D5    mov         ebp,esp
 006614D7    push        0
 006614D9    push        0
 006614DB    push        0
 006614DD    push        0
 006614DF    push        0
 006614E1    push        0
 006614E3    push        0
 006614E5    push        ebx
 006614E6    push        esi
 006614E7    mov         dword ptr [ebp-8],ecx
 006614EA    mov         ebx,edx
 006614EC    mov         esi,eax
 006614EE    xor         eax,eax
 006614F0    push        ebp
 006614F1    push        661631
 006614F6    push        dword ptr fs:[eax]
 006614F9    mov         dword ptr fs:[eax],esp
 006614FC    lea         eax,[ebp-4]
 006614FF    push        eax
 00661500    mov         ecx,dword ptr [ebp-8]
 00661503    mov         edx,ebx
 00661505    mov         eax,esi
 00661507    call        TXMLNode.GetPrefixedName
 0066150C    mov         eax,dword ptr [ebp+8]
 0066150F    call        VarIsNull
 00661514    and         eax,7F
 00661517    movzx       eax,byte ptr [eax+7C0F54]
 0066151E    mov         byte ptr [ebp-9],al
 00661521    movzx       edx,byte ptr [ebp-9]
 00661525    mov         cl,1
 00661527    mov         eax,esi
 00661529    mov         ebx,dword ptr [eax]
 0066152B    call        dword ptr [ebx+10]
 0066152E    cmp         byte ptr [ebp-9],3
>00661532    jne         006615BF
 00661538    cmp         byte ptr ds:[7C0F4C],0;gvar_007C0F4C
>0066153F    je          0066154D
 00661541    mov         eax,dword ptr [ebp+8]
 00661544    cmp         word ptr [eax],0B
 00661548    sete        al
>0066154B    jmp         0066154F
 0066154D    xor         eax,eax
 0066154F    test        al,al
>00661551    je          0066158B
 00661553    mov         eax,dword ptr [ebp+8]
 00661556    call        @VarToBool
 0066155B    and         eax,7F
 0066155E    mov         eax,dword ptr [eax*4+7C0F58];^'false'
 00661565    push        eax
 00661566    mov         eax,dword ptr [ebp-4]
 00661569    push        eax
 0066156A    mov         eax,dword ptr [ebp-8]
 0066156D    push        eax
 0066156E    lea         edx,[ebp-10]
 00661571    mov         eax,esi
 00661573    call        TXMLNode.DOMElement
 00661578    mov         eax,dword ptr [ebp-10]
 0066157B    push        eax
 0066157C    mov         eax,dword ptr [eax]
 0066157E    call        dword ptr [eax+8C]
 00661584    call        @CheckAutoResult
>00661589    jmp         006615E2
 0066158B    lea         eax,[ebp-14]
 0066158E    mov         edx,dword ptr [ebp+8]
 00661591    call        @VarToUStr
 00661596    mov         eax,dword ptr [ebp-14]
 00661599    push        eax
 0066159A    mov         eax,dword ptr [ebp-4]
 0066159D    push        eax
 0066159E    mov         eax,dword ptr [ebp-8]
 006615A1    push        eax
 006615A2    lea         edx,[ebp-18]
 006615A5    mov         eax,esi
 006615A7    call        TXMLNode.DOMElement
 006615AC    mov         eax,dword ptr [ebp-18]
 006615AF    push        eax
 006615B0    mov         eax,dword ptr [eax]
 006615B2    call        dword ptr [eax+8C]
 006615B8    call        @CheckAutoResult
>006615BD    jmp         006615E2
 006615BF    mov         eax,dword ptr [ebp-4]
 006615C2    push        eax
 006615C3    mov         eax,dword ptr [ebp-8]
 006615C6    push        eax
 006615C7    lea         edx,[ebp-1C]
 006615CA    mov         eax,esi
 006615CC    call        TXMLNode.DOMElement
 006615D1    mov         eax,dword ptr [ebp-1C]
 006615D4    push        eax
 006615D5    mov         eax,dword ptr [eax]
 006615D7    call        dword ptr [eax+90]
 006615DD    call        @CheckAutoResult
 006615E2    xor         edx,edx
 006615E4    mov         eax,esi
 006615E6    mov         ecx,dword ptr [eax]
 006615E8    call        dword ptr [ecx+14]
 006615EB    movzx       edx,byte ptr [ebp-9]
 006615EF    xor         ecx,ecx
 006615F1    mov         eax,esi
 006615F3    mov         ebx,dword ptr [eax]
 006615F5    call        dword ptr [ebx+10]
 006615F8    xor         eax,eax
 006615FA    pop         edx
 006615FB    pop         ecx
 006615FC    pop         ecx
 006615FD    mov         dword ptr fs:[eax],edx
 00661600    push        661638
 00661605    lea         eax,[ebp-1C]
 00661608    mov         edx,dword ptr ds:[65B7A8];IDOMElement
 0066160E    mov         ecx,2
 00661613    call        @FinalizeArray
 00661618    lea         eax,[ebp-14]
 0066161B    call        @UStrClr
 00661620    lea         eax,[ebp-10]
 00661623    call        @IntfClear
 00661628    lea         eax,[ebp-4]
 0066162B    call        @UStrClr
 00661630    ret
>00661631    jmp         @HandleFinally
>00661636    jmp         00661605
 00661638    pop         esi
 00661639    pop         ebx
 0066163A    mov         esp,ebp
 0066163C    pop         ebp
 0066163D    ret         4
*}
end;

//00661640
procedure TXMLNode.AttributeListNotify(Operation:TNodeListOperation; var Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean);
begin
{*
 00661640    push        ebp
 00661641    mov         ebp,esp
 00661643    push        ecx
 00661644    mov         ecx,8
 00661649    push        0
 0066164B    push        0
 0066164D    dec         ecx
>0066164E    jne         00661649
 00661650    xchg        ecx,dword ptr [ebp-4]
 00661653    push        ebx
 00661654    push        esi
 00661655    mov         dword ptr [ebp-8],ecx
 00661658    mov         byte ptr [ebp-1],dl
 0066165B    mov         esi,eax
 0066165D    xor         eax,eax
 0066165F    push        ebp
 00661660    push        661856
 00661665    push        dword ptr fs:[eax]
 00661668    mov         dword ptr fs:[eax],esp
 0066166B    movzx       eax,byte ptr [ebp-1]
 0066166F    movzx       edx,byte ptr [eax+7C0F60]
 00661676    movzx       ecx,byte ptr [ebp+8]
 0066167A    mov         eax,esi
 0066167C    mov         ebx,dword ptr [eax]
 0066167E    call        dword ptr [ebx+10]
 00661681    cmp         byte ptr [ebp+8],0
>00661685    je          0066178A
 0066168B    lea         edx,[ebp-18]
 0066168E    mov         eax,esi
 00661690    call        TXMLNode.GetAttributeNodes
 00661695    mov         eax,dword ptr [ebp-18]
 00661698    mov         edx,dword ptr [eax]
 0066169A    call        dword ptr [edx+14]
 0066169D    test        eax,eax
>0066169F    jne         0066178A
 006616A5    movzx       eax,byte ptr [ebp-1]
 006616A9    sub         al,1
>006616AB    jb          00661706
>006616AD    je          006616BC
 006616AF    dec         al
>006616B1    je          0066174A
>006616B7    jmp         0066178A
 006616BC    lea         eax,[ebp-1C]
 006616BF    call        @IntfClear
 006616C4    push        eax
 006616C5    lea         edx,[ebp-24]
 006616C8    mov         eax,dword ptr [ebp-8]
 006616CB    mov         eax,dword ptr [eax]
 006616CD    mov         ecx,dword ptr [eax]
 006616CF    call        dword ptr [ecx+20]
 006616D2    mov         edx,dword ptr [ebp-24]
 006616D5    lea         eax,[ebp-20]
 006616D8    mov         ecx,661868
 006616DD    call        @IntfCast
 006616E2    mov         eax,dword ptr [ebp-20]
 006616E5    push        eax
 006616E6    lea         edx,[ebp-28]
 006616E9    mov         eax,esi
 006616EB    call        TXMLNode.DOMElement
 006616F0    mov         eax,dword ptr [ebp-28]
 006616F3    push        eax
 006616F4    mov         eax,dword ptr [eax]
 006616F6    call        dword ptr [eax+80]
 006616FC    call        @CheckAutoResult
>00661701    jmp         0066178A
 00661706    lea         eax,[ebp-2C]
 00661709    call        @IntfClear
 0066170E    push        eax
 0066170F    lea         edx,[ebp-34]
 00661712    mov         eax,dword ptr [ebp-8]
 00661715    mov         eax,dword ptr [eax]
 00661717    mov         ecx,dword ptr [eax]
 00661719    call        dword ptr [ecx+20]
 0066171C    mov         edx,dword ptr [ebp-34]
 0066171F    lea         eax,[ebp-30]
 00661722    mov         ecx,661868
 00661727    call        @IntfCast
 0066172C    mov         eax,dword ptr [ebp-30]
 0066172F    push        eax
 00661730    lea         edx,[ebp-38]
 00661733    mov         eax,esi
 00661735    call        TXMLNode.DOMElement
 0066173A    mov         eax,dword ptr [ebp-38]
 0066173D    push        eax
 0066173E    mov         eax,dword ptr [eax]
 00661740    call        dword ptr [eax+7C]
 00661743    call        @CheckAutoResult
>00661748    jmp         0066178A
 0066174A    push        0
 0066174C    lea         eax,[ebp-3C]
 0066174F    push        eax
 00661750    lea         eax,[ebp-40]
 00661753    mov         edx,dword ptr [ebp+0C]
 00661756    call        @VarToUStr
 0066175B    mov         edx,dword ptr [ebp-40]
 0066175E    mov         cl,2
 00661760    mov         eax,dword ptr [esi+1C]
 00661763    call        TXMLDocument.CreateNode
 00661768    mov         edx,dword ptr [ebp-3C]
 0066176B    mov         eax,dword ptr [ebp-8]
 0066176E    call        @IntfCopy
 00661773    lea         edx,[ebp-44]
 00661776    mov         eax,esi
 00661778    call        TXMLNode.GetAttributeNodes
 0066177D    mov         eax,dword ptr [ebp-44]
 00661780    mov         edx,dword ptr [ebp-8]
 00661783    mov         edx,dword ptr [edx]
 00661785    mov         ecx,dword ptr [eax]
 00661787    call        dword ptr [ecx+18]
 0066178A    cmp         dword ptr [esi+2C],0
>0066178E    je          006617E2
 00661790    mov         eax,dword ptr [esi+2C]
 00661793    mov         dword ptr [ebp-14],eax
 00661796    mov         eax,dword ptr [ebp-14]
 00661799    test        eax,eax
>0066179B    je          006617A2
 0066179D    sub         eax,4
 006617A0    mov         eax,dword ptr [eax]
 006617A2    dec         eax
 006617A3    test        eax,eax
>006617A5    jl          006617E2
 006617A7    inc         eax
 006617A8    mov         dword ptr [ebp-10],eax
 006617AB    mov         dword ptr [ebp-0C],0
 006617B2    mov         eax,dword ptr [esi+2C]
 006617B5    mov         edx,dword ptr [ebp-0C]
 006617B8    mov         eax,dword ptr [eax+edx*4]
 006617BB    cmp         word ptr [eax+42],0
>006617C0    je          006617DA
 006617C2    mov         edx,dword ptr [ebp+0C]
 006617C5    push        edx
 006617C6    movzx       edx,byte ptr [ebp+8]
 006617CA    push        edx
 006617CB    movzx       edx,byte ptr [ebp-1]
 006617CF    mov         ecx,dword ptr [ebp-8]
 006617D2    mov         ebx,eax
 006617D4    mov         eax,dword ptr [ebx+44]
 006617D7    call        dword ptr [ebx+40]
 006617DA    inc         dword ptr [ebp-0C]
 006617DD    dec         dword ptr [ebp-10]
>006617E0    jne         006617B2
 006617E2    xor         eax,eax
 006617E4    pop         edx
 006617E5    pop         ecx
 006617E6    pop         ecx
 006617E7    mov         dword ptr fs:[eax],edx
 006617EA    push        66185D
 006617EF    lea         eax,[ebp-44]
 006617F2    call        @IntfClear
 006617F7    lea         eax,[ebp-40]
 006617FA    call        @UStrClr
 006617FF    lea         eax,[ebp-3C]
 00661802    call        @IntfClear
 00661807    lea         eax,[ebp-38]
 0066180A    call        @IntfClear
 0066180F    lea         eax,[ebp-34]
 00661812    call        @IntfClear
 00661817    lea         eax,[ebp-30]
 0066181A    mov         edx,dword ptr ds:[65B774];IDOMAttr
 00661820    mov         ecx,2
 00661825    call        @FinalizeArray
 0066182A    lea         eax,[ebp-28]
 0066182D    call        @IntfClear
 00661832    lea         eax,[ebp-24]
 00661835    call        @IntfClear
 0066183A    lea         eax,[ebp-20]
 0066183D    mov         edx,dword ptr ds:[65B774];IDOMAttr
 00661843    mov         ecx,2
 00661848    call        @FinalizeArray
 0066184D    lea         eax,[ebp-18]
 00661850    call        @IntfClear
 00661855    ret
>00661856    jmp         @HandleFinally
>0066185B    jmp         006617EF
 0066185D    pop         esi
 0066185E    pop         ebx
 0066185F    mov         esp,ebp
 00661861    pop         ebp
 00661862    ret         8
*}
end;

//00661878
procedure TXMLNode.CreateChildList;
begin
{*
 00661878    push        ebp
 00661879    mov         ebp,esp
 0066187B    mov         ecx,4
 00661880    push        0
 00661882    push        0
 00661884    dec         ecx
>00661885    jne         00661880
 00661887    push        ecx
 00661888    push        ebx
 00661889    push        esi
 0066188A    push        edi
 0066188B    mov         dword ptr [ebp-4],edx
 0066188E    mov         ebx,eax
 00661890    xor         eax,eax
 00661892    push        ebp
 00661893    push        661998
 00661898    push        dword ptr fs:[eax]
 0066189B    mov         dword ptr fs:[eax],esp
 0066189E    lea         edx,[ebp-10]
 006618A1    mov         eax,ebx
 006618A3    call        TXMLNode.GetNamespaceURI
 006618A8    mov         eax,dword ptr [ebp-10]
 006618AB    push        eax
 006618AC    push        ebx
 006618AD    mov         eax,dword ptr [ebx]
 006618AF    mov         eax,dword ptr [eax+0C]
 006618B2    push        eax
 006618B3    mov         ecx,ebx
 006618B5    mov         dl,1
 006618B7    mov         eax,[0065CF24];TXMLNodeList
 006618BC    call        TXMLNodeList.Create
 006618C1    mov         dword ptr [ebp-0C],eax
 006618C4    lea         eax,[ebp-14]
 006618C7    push        eax
 006618C8    lea         eax,[ebp-18]
 006618CB    call        @IntfClear
 006618D0    push        eax
 006618D1    mov         eax,dword ptr [ebx+20]
 006618D4    push        eax
 006618D5    mov         eax,dword ptr [eax]
 006618D7    call        dword ptr [eax+20]
 006618DA    call        @CheckAutoResult
 006618DF    mov         eax,dword ptr [ebp-18]
 006618E2    push        eax
 006618E3    mov         eax,dword ptr [eax]
 006618E5    call        dword ptr [eax+10]
 006618E8    call        @CheckAutoResult
 006618ED    mov         esi,dword ptr [ebp-14]
 006618F0    dec         esi
 006618F1    test        esi,esi
>006618F3    jl          00661950
 006618F5    inc         esi
 006618F6    mov         dword ptr [ebp-8],0
 006618FD    lea         eax,[ebp-20]
 00661900    call        @IntfClear
 00661905    push        eax
 00661906    mov         eax,dword ptr [ebp-8]
 00661909    push        eax
 0066190A    lea         eax,[ebp-24]
 0066190D    call        @IntfClear
 00661912    push        eax
 00661913    mov         eax,dword ptr [ebx+20]
 00661916    push        eax
 00661917    mov         eax,dword ptr [eax]
 00661919    call        dword ptr [eax+20]
 0066191C    call        @CheckAutoResult
 00661921    mov         eax,dword ptr [ebp-24]
 00661924    push        eax
 00661925    mov         eax,dword ptr [eax]
 00661927    call        dword ptr [eax+0C]
 0066192A    call        @CheckAutoResult
 0066192F    mov         edx,dword ptr [ebp-20]
 00661932    lea         ecx,[ebp-1C]
 00661935    mov         eax,ebx
 00661937    mov         edi,dword ptr [eax]
 00661939    call        dword ptr [edi+4]
 0066193C    mov         edx,dword ptr [ebp-1C]
 0066193F    mov         eax,dword ptr [ebp-0C]
 00661942    mov         eax,dword ptr [eax+0C]
 00661945    mov         ecx,dword ptr [eax]
 00661947    call        dword ptr [ecx+38]
 0066194A    inc         dword ptr [ebp-8]
 0066194D    dec         esi
>0066194E    jne         006618FD
 00661950    mov         eax,dword ptr [ebp-4]
 00661953    mov         edx,dword ptr [ebp-0C]
 00661956    test        edx,edx
>00661958    je          0066195D
 0066195A    sub         edx,0FFFFFFDC
 0066195D    call        @IntfCopy
 00661962    xor         eax,eax
 00661964    pop         edx
 00661965    pop         ecx
 00661966    pop         ecx
 00661967    mov         dword ptr fs:[eax],edx
 0066196A    push        66199F
 0066196F    lea         eax,[ebp-24]
 00661972    call        @IntfClear
 00661977    lea         eax,[ebp-20]
 0066197A    call        @IntfClear
 0066197F    lea         eax,[ebp-1C]
 00661982    call        @IntfClear
 00661987    lea         eax,[ebp-18]
 0066198A    call        @IntfClear
 0066198F    lea         eax,[ebp-10]
 00661992    call        @UStrClr
 00661997    ret
>00661998    jmp         @HandleFinally
>0066199D    jmp         0066196F
 0066199F    pop         edi
 006619A0    pop         esi
 006619A1    pop         ebx
 006619A2    mov         esp,ebp
 006619A4    pop         ebp
 006619A5    ret
*}
end;

//006619A8
function TXMLNode.GetHasChildNodes:Boolean;
begin
{*
 006619A8    push        ebx
 006619A9    push        ecx
 006619AA    mov         ebx,eax
 006619AC    push        esp
 006619AD    mov         eax,dword ptr [ebx+20]
 006619B0    push        eax
 006619B1    mov         eax,dword ptr [eax]
 006619B3    call        dword ptr [eax+58]
 006619B6    call        @CheckAutoResult
 006619BB    cmp         word ptr [esp],1
 006619C0    sbb         eax,eax
 006619C2    inc         eax
 006619C3    pop         edx
 006619C4    pop         ebx
 006619C5    ret
*}
end;

//006619C8
function TXMLNode.GetChildNodes:IXMLNodeList;
begin
{*
 006619C8    push        ebp
 006619C9    mov         ebp,esp
 006619CB    push        0
 006619CD    push        ebx
 006619CE    push        esi
 006619CF    push        edi
 006619D0    mov         edi,edx
 006619D2    mov         ebx,eax
 006619D4    xor         eax,eax
 006619D6    push        ebp
 006619D7    push        661A32
 006619DC    push        dword ptr fs:[eax]
 006619DF    mov         dword ptr fs:[eax],esp
 006619E2    mov         esi,dword ptr [ebx+24]
 006619E5    test        esi,esi
>006619E7    je          006619F4
 006619E9    mov         edx,edi
 006619EB    mov         eax,esi
 006619ED    call        TXMLNode.GetChildNodes
>006619F2    jmp         00661A1C
 006619F4    cmp         dword ptr [ebx+10],0
>006619F8    jne         00661A12
 006619FA    lea         edx,[ebp-4]
 006619FD    mov         eax,ebx
 006619FF    mov         si,0FFFE
 00661A03    call        @CallDynaInst
 00661A08    mov         edx,dword ptr [ebp-4]
 00661A0B    mov         eax,ebx
 00661A0D    mov         ecx,dword ptr [eax]
 00661A0F    call        dword ptr [ecx+18]
 00661A12    mov         eax,edi
 00661A14    mov         edx,dword ptr [ebx+10]
 00661A17    call        @IntfCopy
 00661A1C    xor         eax,eax
 00661A1E    pop         edx
 00661A1F    pop         ecx
 00661A20    pop         ecx
 00661A21    mov         dword ptr fs:[eax],edx
 00661A24    push        661A39
 00661A29    lea         eax,[ebp-4]
 00661A2C    call        @IntfClear
 00661A31    ret
>00661A32    jmp         @HandleFinally
>00661A37    jmp         00661A29
 00661A39    pop         edi
 00661A3A    pop         esi
 00661A3B    pop         ebx
 00661A3C    pop         ecx
 00661A3D    pop         ebp
 00661A3E    ret
*}
end;

//00661A40
procedure TXMLNode.SetChildNodes(const Value:XMLIntf.IXMLNodeList);
begin
{*
 00661A40    push        ebx
 00661A41    push        esi
 00661A42    push        edi
 00661A43    push        ebp
 00661A44    push        ecx
 00661A45    mov         ebp,edx
 00661A47    mov         ebx,eax
 00661A49    cmp         dword ptr [ebx+24],0
>00661A4D    jne         00661A8C
 00661A4F    lea         eax,[ebx+10]
 00661A52    mov         edx,ebp
 00661A54    call        @IntfCopy
 00661A59    cmp         dword ptr [ebx+2C],0
>00661A5D    je          00661A8C
 00661A5F    mov         eax,dword ptr [ebx+2C]
 00661A62    mov         dword ptr [esp],eax
 00661A65    mov         eax,dword ptr [esp]
 00661A68    test        eax,eax
>00661A6A    je          00661A71
 00661A6C    sub         eax,4
 00661A6F    mov         eax,dword ptr [eax]
 00661A71    mov         esi,eax
 00661A73    dec         esi
 00661A74    test        esi,esi
>00661A76    jl          00661A8C
 00661A78    inc         esi
 00661A79    xor         edi,edi
 00661A7B    mov         eax,dword ptr [ebx+2C]
 00661A7E    mov         eax,dword ptr [eax+edi*4]
 00661A81    mov         edx,ebp
 00661A83    mov         ecx,dword ptr [eax]
 00661A85    call        dword ptr [ecx+18]
 00661A88    inc         edi
 00661A89    dec         esi
>00661A8A    jne         00661A7B
 00661A8C    pop         edx
 00661A8D    pop         ebp
 00661A8E    pop         edi
 00661A8F    pop         esi
 00661A90    pop         ebx
 00661A91    ret
*}
end;

//00661A94
function TXMLNode.HasChildNode(const ChildTag:Xmldom.DOMString):Boolean;
begin
{*
 00661A94    push        ebp
 00661A95    mov         ebp,esp
 00661A97    push        0
 00661A99    push        ebx
 00661A9A    push        esi
 00661A9B    mov         esi,edx
 00661A9D    mov         ebx,eax
 00661A9F    xor         eax,eax
 00661AA1    push        ebp
 00661AA2    push        661ADB
 00661AA7    push        dword ptr fs:[eax]
 00661AAA    mov         dword ptr fs:[eax],esp
 00661AAD    lea         edx,[ebp-4]
 00661AB0    mov         eax,ebx
 00661AB2    call        TXMLNode.GetNamespaceURI
 00661AB7    mov         ecx,dword ptr [ebp-4]
 00661ABA    mov         edx,esi
 00661ABC    mov         eax,ebx
 00661ABE    call        TXMLNode.HasChildNode
 00661AC3    mov         ebx,eax
 00661AC5    xor         eax,eax
 00661AC7    pop         edx
 00661AC8    pop         ecx
 00661AC9    pop         ecx
 00661ACA    mov         dword ptr fs:[eax],edx
 00661ACD    push        661AE2
 00661AD2    lea         eax,[ebp-4]
 00661AD5    call        @UStrClr
 00661ADA    ret
>00661ADB    jmp         @HandleFinally
>00661AE0    jmp         00661AD2
 00661AE2    mov         eax,ebx
 00661AE4    pop         esi
 00661AE5    pop         ebx
 00661AE6    pop         ecx
 00661AE7    pop         ebp
 00661AE8    ret
*}
end;

//00661AEC
function TXMLNode.HasChildNode(const ChildTag:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):Boolean;
begin
{*
 00661AEC    push        ebp
 00661AED    mov         ebp,esp
 00661AEF    add         esp,0FFFFFFE4
 00661AF2    push        ebx
 00661AF3    push        esi
 00661AF4    push        edi
 00661AF5    xor         ebx,ebx
 00661AF7    mov         dword ptr [ebp-18],ebx
 00661AFA    mov         dword ptr [ebp-1C],ebx
 00661AFD    mov         dword ptr [ebp-14],ebx
 00661B00    mov         dword ptr [ebp-8],ecx
 00661B03    mov         dword ptr [ebp-4],edx
 00661B06    mov         edi,eax
 00661B08    xor         eax,eax
 00661B0A    push        ebp
 00661B0B    push        661BBF
 00661B10    push        dword ptr fs:[eax]
 00661B13    mov         dword ptr fs:[eax],esp
 00661B16    mov         byte ptr [ebp-9],0
 00661B1A    lea         eax,[ebp-10]
 00661B1D    push        eax
 00661B1E    lea         eax,[ebp-14]
 00661B21    call        @IntfClear
 00661B26    push        eax
 00661B27    mov         eax,dword ptr [edi+20]
 00661B2A    push        eax
 00661B2B    mov         eax,dword ptr [eax]
 00661B2D    call        dword ptr [eax+20]
 00661B30    call        @CheckAutoResult
 00661B35    mov         eax,dword ptr [ebp-14]
 00661B38    push        eax
 00661B39    mov         eax,dword ptr [eax]
 00661B3B    call        dword ptr [eax+10]
 00661B3E    call        @CheckAutoResult
 00661B43    mov         ebx,dword ptr [ebp-10]
 00661B46    dec         ebx
 00661B47    test        ebx,ebx
>00661B49    jl          00661B99
 00661B4B    inc         ebx
 00661B4C    xor         esi,esi
 00661B4E    lea         eax,[ebp-18]
 00661B51    call        @IntfClear
 00661B56    push        eax
 00661B57    push        esi
 00661B58    lea         eax,[ebp-1C]
 00661B5B    call        @IntfClear
 00661B60    push        eax
 00661B61    mov         eax,dword ptr [edi+20]
 00661B64    push        eax
 00661B65    mov         eax,dword ptr [eax]
 00661B67    call        dword ptr [eax+20]
 00661B6A    call        @CheckAutoResult
 00661B6F    mov         eax,dword ptr [ebp-1C]
 00661B72    push        eax
 00661B73    mov         eax,dword ptr [eax]
 00661B75    call        dword ptr [eax+0C]
 00661B78    call        @CheckAutoResult
 00661B7D    mov         eax,dword ptr [ebp-18]
 00661B80    mov         ecx,dword ptr [ebp-8]
 00661B83    mov         edx,dword ptr [ebp-4]
 00661B86    call        NodeMatches
 00661B8B    test        al,al
>00661B8D    je          00661B95
 00661B8F    mov         byte ptr [ebp-9],1
>00661B93    jmp         00661B99
 00661B95    inc         esi
 00661B96    dec         ebx
>00661B97    jne         00661B4E
 00661B99    xor         eax,eax
 00661B9B    pop         edx
 00661B9C    pop         ecx
 00661B9D    pop         ecx
 00661B9E    mov         dword ptr fs:[eax],edx
 00661BA1    push        661BC6
 00661BA6    lea         eax,[ebp-1C]
 00661BA9    call        @IntfClear
 00661BAE    lea         eax,[ebp-18]
 00661BB1    call        @IntfClear
 00661BB6    lea         eax,[ebp-14]
 00661BB9    call        @IntfClear
 00661BBE    ret
>00661BBF    jmp         @HandleFinally
>00661BC4    jmp         00661BA6
 00661BC6    movzx       eax,byte ptr [ebp-9]
 00661BCA    pop         edi
 00661BCB    pop         esi
 00661BCC    pop         ebx
 00661BCD    mov         esp,ebp
 00661BCF    pop         ebp
 00661BD0    ret
*}
end;

//00661BD4
function TXMLNode.AddChild(const TagName:Xmldom.DOMString; Index:Integer):IXMLNode;
begin
{*
 00661BD4    push        ebp
 00661BD5    mov         ebp,esp
 00661BD7    push        0
 00661BD9    push        0
 00661BDB    push        0
 00661BDD    push        ebx
 00661BDE    push        esi
 00661BDF    push        edi
 00661BE0    mov         edi,ecx
 00661BE2    mov         esi,edx
 00661BE4    mov         ebx,eax
 00661BE6    xor         eax,eax
 00661BE8    push        ebp
 00661BE9    push        661C68
 00661BEE    push        dword ptr fs:[eax]
 00661BF1    mov         dword ptr fs:[eax],esp
 00661BF4    mov         eax,esi
 00661BF6    call        IsPrefixed
 00661BFB    test        al,al
>00661BFD    je          00661C17
 00661BFF    lea         eax,[ebp-4]
 00661C02    mov         edx,esi
 00661C04    call        @UStrLAsg
 00661C09    lea         ecx,[ebp-8]
 00661C0C    mov         edx,esi
 00661C0E    mov         eax,ebx
 00661C10    call        TXMLNode.FindNamespaceURI
>00661C15    jmp         00661C38
 00661C17    lea         edx,[ebp-0C]
 00661C1A    mov         eax,ebx
 00661C1C    call        TXMLNode.GetPrefix
 00661C21    mov         eax,dword ptr [ebp-0C]
 00661C24    lea         ecx,[ebp-4]
 00661C27    mov         edx,esi
 00661C29    call        MakeNodeName
 00661C2E    lea         edx,[ebp-8]
 00661C31    mov         eax,ebx
 00661C33    call        TXMLNode.GetNamespaceURI
 00661C38    mov         eax,dword ptr [ebp-8]
 00661C3B    push        eax
 00661C3C    push        edi
 00661C3D    mov         eax,dword ptr [ebp+8]
 00661C40    push        eax
 00661C41    mov         ecx,dword ptr [ebp-4]
 00661C44    xor         edx,edx
 00661C46    mov         eax,ebx
 00661C48    call        TXMLNode.InternalAddChild
 00661C4D    xor         eax,eax
 00661C4F    pop         edx
 00661C50    pop         ecx
 00661C51    pop         ecx
 00661C52    mov         dword ptr fs:[eax],edx
 00661C55    push        661C6F
 00661C5A    lea         eax,[ebp-0C]
 00661C5D    mov         edx,3
 00661C62    call        @UStrArrayClr
 00661C67    ret
>00661C68    jmp         @HandleFinally
>00661C6D    jmp         00661C5A
 00661C6F    pop         edi
 00661C70    pop         esi
 00661C71    pop         ebx
 00661C72    mov         esp,ebp
 00661C74    pop         ebp
 00661C75    ret         4
*}
end;

//00661C78
function TXMLNode.AddChild(const TagName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString; GenPrefix:Boolean; Index:Integer):IXMLNode;
begin
{*
 00661C78    push        ebp
 00661C79    mov         ebp,esp
 00661C7B    push        0
 00661C7D    push        0
 00661C7F    push        0
 00661C81    push        0
 00661C83    push        ebx
 00661C84    push        esi
 00661C85    push        edi
 00661C86    mov         esi,ecx
 00661C88    mov         edi,edx
 00661C8A    mov         ebx,eax
 00661C8C    xor         eax,eax
 00661C8E    push        ebp
 00661C8F    push        661D7A
 00661C94    push        dword ptr fs:[eax]
 00661C97    mov         dword ptr fs:[eax],esp
 00661C9A    lea         eax,[ebp-8]
 00661C9D    mov         edx,edi
 00661C9F    call        @UStrLAsg
 00661CA4    lea         ecx,[ebp-4]
 00661CA7    mov         edx,esi
 00661CA9    mov         eax,ebx
 00661CAB    call        TXMLNode.FindNamespaceDecl
 00661CB0    cmp         dword ptr [ebp-4],0
 00661CB4    setne       al
 00661CB7    and         al,byte ptr [ebp+10]
>00661CBA    je          00661CCD
 00661CBC    lea         eax,[ebp-8]
 00661CBF    push        eax
 00661CC0    mov         ecx,esi
 00661CC2    mov         edx,edi
 00661CC4    mov         eax,ebx
 00661CC6    call        TXMLNode.GetPrefixedName
>00661CCB    jmp         00661D17
 00661CCD    mov         eax,edi
 00661CCF    call        IsPrefixed
 00661CD4    test        al,al
>00661CD6    jne         00661D0D
 00661CD8    cmp         byte ptr [ebp+10],0
>00661CDC    je          00661D17
 00661CDE    lea         ecx,[ebp-0C]
 00661CE1    mov         edx,ebx
 00661CE3    test        edx,edx
>00661CE5    je          00661CEA
 00661CE7    sub         edx,0FFFFFFB8
 00661CEA    mov         eax,dword ptr [ebx+1C]
 00661CED    call        TXMLDocument.GeneratePrefix
 00661CF2    lea         ecx,[ebp-10]
 00661CF5    mov         edx,dword ptr [ebp-8]
 00661CF8    mov         eax,dword ptr [ebp-0C]
 00661CFB    call        MakeNodeName
 00661D00    mov         edx,dword ptr [ebp-10]
 00661D03    lea         eax,[ebp-8]
 00661D06    call        @UStrLAsg
>00661D0B    jmp         00661D17
 00661D0D    lea         edx,[ebp-0C]
 00661D10    mov         eax,edi
 00661D12    call        ExtractPrefix
 00661D17    push        esi
 00661D18    mov         eax,dword ptr [ebp+0C]
 00661D1B    push        eax
 00661D1C    mov         eax,dword ptr [ebp+8]
 00661D1F    push        eax
 00661D20    mov         ecx,dword ptr [ebp-8]
 00661D23    xor         edx,edx
 00661D25    mov         eax,ebx
 00661D27    call        TXMLNode.InternalAddChild
 00661D2C    test        esi,esi
>00661D2E    je          00661D57
 00661D30    cmp         dword ptr [ebx+1C],0
>00661D34    je          00661D57
 00661D36    mov         eax,dword ptr [ebx+1C]
 00661D39    call        TXMLDocument.GetOptions
 00661D3E    test        al,10
>00661D40    je          00661D57
 00661D42    cmp         dword ptr [ebp-4],0
>00661D46    jne         00661D57
 00661D48    mov         eax,dword ptr [ebp+8]
 00661D4B    mov         eax,dword ptr [eax]
 00661D4D    mov         ecx,esi
 00661D4F    mov         edx,dword ptr [ebp-0C]
 00661D52    mov         ebx,dword ptr [eax]
 00661D54    call        dword ptr [ebx+78]
 00661D57    xor         eax,eax
 00661D59    pop         edx
 00661D5A    pop         ecx
 00661D5B    pop         ecx
 00661D5C    mov         dword ptr fs:[eax],edx
 00661D5F    push        661D81
 00661D64    lea         eax,[ebp-10]
 00661D67    mov         edx,3
 00661D6C    call        @UStrArrayClr
 00661D71    lea         eax,[ebp-4]
 00661D74    call        @IntfClear
 00661D79    ret
>00661D7A    jmp         @HandleFinally
>00661D7F    jmp         00661D64
 00661D81    pop         edi
 00661D82    pop         esi
 00661D83    pop         ebx
 00661D84    mov         esp,ebp
 00661D86    pop         ebp
 00661D87    ret         0C
*}
end;

//00661D8C
function TXMLNode.AddChild(const TagName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString; NodeClass:TXMLNodeClass; Index:Integer):IXMLNode;
begin
{*
 00661D8C    push        ebp
 00661D8D    mov         ebp,esp
 00661D8F    push        ebx
 00661D90    push        esi
 00661D91    push        edi
 00661D92    mov         edi,ecx
 00661D94    mov         esi,edx
 00661D96    mov         ebx,eax
 00661D98    push        edi
 00661D99    mov         eax,dword ptr [ebp+0C]
 00661D9C    push        eax
 00661D9D    mov         eax,dword ptr [ebp+8]
 00661DA0    push        eax
 00661DA1    mov         ecx,esi
 00661DA3    mov         edx,dword ptr [ebp+10]
 00661DA6    mov         eax,ebx
 00661DA8    call        TXMLNode.InternalAddChild
 00661DAD    pop         edi
 00661DAE    pop         esi
 00661DAF    pop         ebx
 00661DB0    pop         ebp
 00661DB1    ret         0C
*}
end;

//00661DB4
function TXMLNode.CreateCollection(const CollectionClass:TXMLNodeCollectionClass; const ItemInterface:TGUID; const ItemTag:Xmldom.DOMString; ItemNS:Xmldom.DOMString):TXMLNodeCollection;
begin
{*
 00661DB4    push        ebp
 00661DB5    mov         ebp,esp
 00661DB7    push        ebx
 00661DB8    push        esi
 00661DB9    push        edi
 00661DBA    mov         edi,ecx
 00661DBC    mov         ebx,edx
 00661DBE    mov         esi,eax
 00661DC0    mov         eax,dword ptr [ebp+8]
 00661DC3    call        @UStrAddRef
 00661DC8    xor         eax,eax
 00661DCA    push        ebp
 00661DCB    push        661E3A
 00661DD0    push        dword ptr fs:[eax]
 00661DD3    mov         dword ptr fs:[eax],esp
 00661DD6    mov         ecx,esi
 00661DD8    mov         dl,1
 00661DDA    mov         eax,ebx
 00661DDC    call        TXMLNode.CreateHosted
 00661DE1    mov         ebx,eax
 00661DE3    cmp         dword ptr [ebp+8],0
>00661DE7    jne         00661DF3
 00661DE9    lea         edx,[ebp+8]
 00661DEC    mov         eax,esi
 00661DEE    call        TXMLNode.GetNamespaceURI
 00661DF3    push        esi
 00661DF4    mov         esi,edi
 00661DF6    lea         edi,[ebx+50]
 00661DF9    movs        dword ptr [edi],dword ptr [esi]
 00661DFA    movs        dword ptr [edi],dword ptr [esi]
 00661DFB    movs        dword ptr [edi],dword ptr [esi]
 00661DFC    movs        dword ptr [edi],dword ptr [esi]
 00661DFD    pop         esi
 00661DFE    lea         eax,[ebx+64]
 00661E01    mov         edx,dword ptr [ebp+0C]
 00661E04    call        @UStrAsg
 00661E09    lea         eax,[ebx+60]
 00661E0C    mov         edx,dword ptr [ebp+8]
 00661E0F    call        @UStrAsg
 00661E14    cmp         dword ptr [esi+10],0
>00661E18    je          00661E24
 00661E1A    mov         edx,dword ptr [esi+10]
 00661E1D    mov         eax,ebx
 00661E1F    mov         ecx,dword ptr [eax]
 00661E21    call        dword ptr [ecx+18]
 00661E24    xor         eax,eax
 00661E26    pop         edx
 00661E27    pop         ecx
 00661E28    pop         ecx
 00661E29    mov         dword ptr fs:[eax],edx
 00661E2C    push        661E41
 00661E31    lea         eax,[ebp+8]
 00661E34    call        @UStrClr
 00661E39    ret
>00661E3A    jmp         @HandleFinally
>00661E3F    jmp         00661E31
 00661E41    mov         eax,ebx
 00661E43    pop         edi
 00661E44    pop         esi
 00661E45    pop         ebx
 00661E46    pop         ebp
 00661E47    ret         8
*}
end;

//00661E4C
procedure TXMLNode.ChildListNotify(Operation:TNodeListOperation; var Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean);
begin
{*
 00661E4C    push        ebp
 00661E4D    mov         ebp,esp
 00661E4F    push        ecx
 00661E50    mov         ecx,9
 00661E55    push        0
 00661E57    push        0
 00661E59    dec         ecx
>00661E5A    jne         00661E55
 00661E5C    push        ecx
 00661E5D    xchg        ecx,dword ptr [ebp-4]
 00661E60    push        ebx
 00661E61    push        esi
 00661E62    mov         dword ptr [ebp-8],ecx
 00661E65    mov         byte ptr [ebp-1],dl
 00661E68    mov         esi,eax
 00661E6A    xor         eax,eax
 00661E6C    push        ebp
 00661E6D    push        6620EE
 00661E72    push        dword ptr fs:[eax]
 00661E75    mov         dword ptr fs:[eax],esp
 00661E78    movzx       eax,byte ptr [ebp-1]
 00661E7C    movzx       edx,byte ptr [eax+7C0F63]
 00661E83    movzx       ecx,byte ptr [ebp+8]
 00661E87    mov         eax,esi
 00661E89    mov         ebx,dword ptr [eax]
 00661E8B    call        dword ptr [ebx+10]
 00661E8E    cmp         byte ptr [ebp+8],0
>00661E92    je          00662022
 00661E98    lea         edx,[ebp-18]
 00661E9B    mov         eax,esi
 00661E9D    call        TXMLNode.GetChildNodes
 00661EA2    mov         eax,dword ptr [ebp-18]
 00661EA5    mov         edx,dword ptr [eax]
 00661EA7    call        dword ptr [edx+14]
 00661EAA    test        eax,eax
>00661EAC    jne         00662022
 00661EB2    movzx       eax,byte ptr [ebp-1]
 00661EB6    sub         al,1
>00661EB8    jb          00661F15
>00661EBA    je          00661EC9
 00661EBC    dec         al
>00661EBE    je          00661FFB
>00661EC4    jmp         00662022
 00661EC9    lea         eax,[ebp-1C]
 00661ECC    call        @IntfClear
 00661ED1    push        eax
 00661ED2    lea         edx,[ebp-20]
 00661ED5    mov         eax,dword ptr [ebp-8]
 00661ED8    mov         eax,dword ptr [eax]
 00661EDA    mov         ecx,dword ptr [eax]
 00661EDC    call        dword ptr [ecx+20]
 00661EDF    mov         eax,dword ptr [ebp-20]
 00661EE2    push        eax
 00661EE3    mov         eax,dword ptr [esi+20]
 00661EE6    push        eax
 00661EE7    mov         eax,dword ptr [eax]
 00661EE9    call        dword ptr [eax+50]
 00661EEC    call        @CheckAutoResult
 00661EF1    lea         eax,[ebp-24]
 00661EF4    mov         edx,dword ptr [ebp-8]
 00661EF7    mov         edx,dword ptr [edx]
 00661EF9    mov         ecx,662100
 00661EFE    call        @IntfCast
 00661F03    mov         eax,dword ptr [ebp-24]
 00661F06    xor         edx,edx
 00661F08    mov         ecx,dword ptr [eax]
 00661F0A    call        dword ptr [ecx+0F4]
>00661F10    jmp         00662022
 00661F15    lea         eax,[ebp-28]
 00661F18    push        eax
 00661F19    lea         eax,[ebp-2C]
 00661F1C    call        @IntfClear
 00661F21    push        eax
 00661F22    mov         eax,dword ptr [esi+20]
 00661F25    push        eax
 00661F26    mov         eax,dword ptr [eax]
 00661F28    call        dword ptr [eax+20]
 00661F2B    call        @CheckAutoResult
 00661F30    mov         eax,dword ptr [ebp-2C]
 00661F33    push        eax
 00661F34    mov         eax,dword ptr [eax]
 00661F36    call        dword ptr [eax+10]
 00661F39    call        @CheckAutoResult
 00661F3E    mov         ebx,dword ptr [ebp-28]
 00661F41    mov         eax,dword ptr [ebp+0C]
 00661F44    call        @VarToInteger
 00661F49    cmp         ebx,eax
>00661F4B    ja          00661F77
 00661F4D    lea         eax,[ebp-30]
 00661F50    call        @IntfClear
 00661F55    push        eax
 00661F56    lea         edx,[ebp-34]
 00661F59    mov         eax,dword ptr [ebp-8]
 00661F5C    mov         eax,dword ptr [eax]
 00661F5E    mov         ecx,dword ptr [eax]
 00661F60    call        dword ptr [ecx+20]
 00661F63    mov         eax,dword ptr [ebp-34]
 00661F66    push        eax
 00661F67    mov         eax,dword ptr [esi+20]
 00661F6A    push        eax
 00661F6B    mov         eax,dword ptr [eax]
 00661F6D    call        dword ptr [eax+54]
 00661F70    call        @CheckAutoResult
>00661F75    jmp         00661FDA
 00661F77    lea         eax,[ebp-38]
 00661F7A    call        @IntfClear
 00661F7F    push        eax
 00661F80    lea         eax,[ebp-3C]
 00661F83    call        @IntfClear
 00661F88    push        eax
 00661F89    mov         eax,dword ptr [ebp+0C]
 00661F8C    call        @VarToInteger
 00661F91    push        eax
 00661F92    lea         eax,[ebp-40]
 00661F95    call        @IntfClear
 00661F9A    push        eax
 00661F9B    mov         eax,dword ptr [esi+20]
 00661F9E    push        eax
 00661F9F    mov         eax,dword ptr [eax]
 00661FA1    call        dword ptr [eax+20]
 00661FA4    call        @CheckAutoResult
 00661FA9    mov         eax,dword ptr [ebp-40]
 00661FAC    push        eax
 00661FAD    mov         eax,dword ptr [eax]
 00661FAF    call        dword ptr [eax+0C]
 00661FB2    call        @CheckAutoResult
 00661FB7    mov         eax,dword ptr [ebp-3C]
 00661FBA    push        eax
 00661FBB    lea         edx,[ebp-44]
 00661FBE    mov         eax,dword ptr [ebp-8]
 00661FC1    mov         eax,dword ptr [eax]
 00661FC3    mov         ecx,dword ptr [eax]
 00661FC5    call        dword ptr [ecx+20]
 00661FC8    mov         eax,dword ptr [ebp-44]
 00661FCB    push        eax
 00661FCC    mov         eax,dword ptr [esi+20]
 00661FCF    push        eax
 00661FD0    mov         eax,dword ptr [eax]
 00661FD2    call        dword ptr [eax+48]
 00661FD5    call        @CheckAutoResult
 00661FDA    lea         eax,[ebp-48]
 00661FDD    mov         edx,dword ptr [ebp-8]
 00661FE0    mov         edx,dword ptr [edx]
 00661FE2    mov         ecx,662100
 00661FE7    call        @IntfCast
 00661FEC    mov         eax,dword ptr [ebp-48]
 00661FEF    mov         edx,esi
 00661FF1    mov         ecx,dword ptr [eax]
 00661FF3    call        dword ptr [ecx+0F4]
>00661FF9    jmp         00662022
 00661FFB    lea         eax,[ebp-4C]
 00661FFE    push        eax
 00661FFF    lea         eax,[ebp-50]
 00662002    mov         edx,dword ptr [ebp+0C]
 00662005    call        @VarToUStr
 0066200A    mov         edx,dword ptr [ebp-50]
 0066200D    or          ecx,0FFFFFFFF
 00662010    mov         eax,esi
 00662012    call        TXMLNode.AddChild
 00662017    mov         edx,dword ptr [ebp-4C]
 0066201A    mov         eax,dword ptr [ebp-8]
 0066201D    call        @IntfCopy
 00662022    cmp         dword ptr [esi+2C],0
>00662026    je          0066207A
 00662028    mov         eax,dword ptr [esi+2C]
 0066202B    mov         dword ptr [ebp-14],eax
 0066202E    mov         eax,dword ptr [ebp-14]
 00662031    test        eax,eax
>00662033    je          0066203A
 00662035    sub         eax,4
 00662038    mov         eax,dword ptr [eax]
 0066203A    dec         eax
 0066203B    test        eax,eax
>0066203D    jl          0066207A
 0066203F    inc         eax
 00662040    mov         dword ptr [ebp-10],eax
 00662043    mov         dword ptr [ebp-0C],0
 0066204A    mov         eax,dword ptr [esi+2C]
 0066204D    mov         edx,dword ptr [ebp-0C]
 00662050    mov         eax,dword ptr [eax+edx*4]
 00662053    cmp         word ptr [eax+3A],0
>00662058    je          00662072
 0066205A    mov         edx,dword ptr [ebp+0C]
 0066205D    push        edx
 0066205E    movzx       edx,byte ptr [ebp+8]
 00662062    push        edx
 00662063    movzx       edx,byte ptr [ebp-1]
 00662067    mov         ecx,dword ptr [ebp-8]
 0066206A    mov         ebx,eax
 0066206C    mov         eax,dword ptr [ebx+3C]
 0066206F    call        dword ptr [ebx+38]
 00662072    inc         dword ptr [ebp-0C]
 00662075    dec         dword ptr [ebp-10]
>00662078    jne         0066204A
 0066207A    xor         eax,eax
 0066207C    pop         edx
 0066207D    pop         ecx
 0066207E    pop         ecx
 0066207F    mov         dword ptr fs:[eax],edx
 00662082    push        6620F5
 00662087    lea         eax,[ebp-50]
 0066208A    call        @UStrClr
 0066208F    lea         eax,[ebp-4C]
 00662092    call        @IntfClear
 00662097    lea         eax,[ebp-48]
 0066209A    call        @IntfClear
 0066209F    lea         eax,[ebp-44]
 006620A2    call        @IntfClear
 006620A7    lea         eax,[ebp-40]
 006620AA    call        @IntfClear
 006620AF    lea         eax,[ebp-3C]
 006620B2    mov         edx,dword ptr ds:[65B68C];IDOMNode
 006620B8    mov         ecx,4
 006620BD    call        @FinalizeArray
 006620C2    lea         eax,[ebp-2C]
 006620C5    call        @IntfClear
 006620CA    lea         eax,[ebp-24]
 006620CD    call        @IntfClear
 006620D2    lea         eax,[ebp-20]
 006620D5    mov         edx,dword ptr ds:[65B68C];IDOMNode
 006620DB    mov         ecx,2
 006620E0    call        @FinalizeArray
 006620E5    lea         eax,[ebp-18]
 006620E8    call        @IntfClear
 006620ED    ret
>006620EE    jmp         @HandleFinally
>006620F3    jmp         00662087
 006620F5    pop         esi
 006620F6    pop         ebx
 006620F7    mov         esp,ebp
 006620F9    pop         ebp
 006620FA    ret         8
*}
end;

//00662110
{*procedure sub_00662110(?:?; ?:?);
begin
 00662110    push        ebp
 00662111    mov         ebp,esp
 00662113    add         esp,0FFFFFFE0
 00662116    push        ebx
 00662117    push        esi
 00662118    push        edi
 00662119    xor         ebx,ebx
 0066211B    mov         dword ptr [ebp-20],ebx
 0066211E    mov         dword ptr [ebp-18],ebx
 00662121    mov         dword ptr [ebp-1C],ebx
 00662124    mov         dword ptr [ebp-14],ebx
 00662127    mov         dword ptr [ebp-8],ecx
 0066212A    mov         dword ptr [ebp-4],edx
 0066212D    mov         esi,eax
 0066212F    xor         eax,eax
 00662131    push        ebp
 00662132    push        662232
 00662137    push        dword ptr fs:[eax]
 0066213A    mov         dword ptr fs:[eax],esp
 0066213D    mov         ebx,dword ptr [esi+24];TXMLNode.FHostNode:TXMLNode
 00662140    test        ebx,ebx
>00662142    je          00662156
 00662144    mov         ecx,dword ptr [ebp-8]
 00662147    mov         edx,dword ptr [ebp-4]
 0066214A    mov         eax,ebx
 0066214C    mov         ebx,dword ptr [eax]
 0066214E    call        dword ptr [ebx+4];TXMLNode.sub_00662110
>00662151    jmp         00662211
 00662156    mov         edx,dword ptr [ebp-4]
 00662159    mov         eax,dword ptr [esi+1C];TXMLNode.FDocument:TXMLDocument
 0066215C    mov         ecx,dword ptr [eax]
 0066215E    call        dword ptr [ecx+4C];TXMLDocument.sub_00665A28
 00662161    mov         dword ptr [ebp-0C],eax
 00662164    cmp         dword ptr [ebp-0C],0
>00662168    jne         006621EE
 0066216E    mov         eax,[0065D600];TXMLNode
 00662173    mov         dword ptr [ebp-0C],eax
 00662176    lea         edx,[ebp-14]
 00662179    mov         eax,esi
 0066217B    call        TXMLNode.GetChildNodeClasses
 00662180    mov         eax,dword ptr [ebp-14]
 00662183    mov         dword ptr [ebp-10],eax
 00662186    mov         eax,dword ptr [ebp-10]
 00662189    test        eax,eax
>0066218B    je          00662192
 0066218D    sub         eax,4
 00662190    mov         eax,dword ptr [eax]
 00662192    mov         edi,eax
 00662194    dec         edi
 00662195    test        edi,edi
>00662197    jl          006621EE
 00662199    inc         edi
 0066219A    xor         ebx,ebx
 0066219C    lea         edx,[ebp-18]
 0066219F    mov         eax,esi
 006621A1    call        TXMLNode.GetChildNodeClasses
 006621A6    mov         eax,dword ptr [ebp-18]
 006621A9    lea         edx,[ebx+ebx*2]
 006621AC    mov         eax,dword ptr [eax+edx*4+4]
 006621B0    push        eax
 006621B1    lea         edx,[ebp-1C]
 006621B4    mov         eax,esi
 006621B6    call        TXMLNode.GetChildNodeClasses
 006621BB    mov         eax,dword ptr [ebp-1C]
 006621BE    lea         edx,[ebx+ebx*2]
 006621C1    mov         edx,dword ptr [eax+edx*4]
 006621C4    mov         eax,dword ptr [ebp-4]
 006621C7    pop         ecx
 006621C8    call        NodeMatches
 006621CD    test        al,al
>006621CF    je          006621EA
 006621D1    lea         edx,[ebp-20]
 006621D4    mov         eax,esi
 006621D6    call        TXMLNode.GetChildNodeClasses
 006621DB    mov         eax,dword ptr [ebp-20]
 006621DE    lea         edx,[ebx+ebx*2]
 006621E1    mov         eax,dword ptr [eax+edx*4+8]
 006621E5    mov         dword ptr [ebp-0C],eax
>006621E8    jmp         006621EE
 006621EA    inc         ebx
 006621EB    dec         edi
>006621EC    jne         0066219C
 006621EE    push        esi
 006621EF    mov         eax,dword ptr [esi+1C];TXMLNode.FDocument:TXMLDocument
 006621F2    push        eax
 006621F3    mov         ecx,dword ptr [ebp-4]
 006621F6    mov         dl,1
 006621F8    mov         eax,dword ptr [ebp-0C]
 006621FB    call        TXMLNode.Create;TXMLNode.Create
 00662200    mov         edx,eax
 00662202    test        edx,edx
>00662204    je          00662209
 00662206    sub         edx,0FFFFFFB8
 00662209    mov         eax,dword ptr [ebp-8]
 0066220C    call        @IntfCopy
 00662211    xor         eax,eax
 00662213    pop         edx
 00662214    pop         ecx
 00662215    pop         ecx
 00662216    mov         dword ptr fs:[eax],edx
 00662219    push        662239
 0066221E    lea         eax,[ebp-20]
 00662221    mov         edx,dword ptr ds:[65D1D0];TNodeClassArray
 00662227    mov         ecx,4
 0066222C    call        @FinalizeArray
 00662231    ret
>00662232    jmp         @HandleFinally
>00662237    jmp         0066221E
 00662239    pop         edi
 0066223A    pop         esi
 0066223B    pop         ebx
 0066223C    mov         esp,ebp
 0066223E    pop         ebp
 0066223F    ret
end;*}

//00662240
procedure TXMLNode.RegisterChildNode(const TagName:Xmldom.DOMString; ChildNodeClass:TXMLNodeClass; NamespaceURI:Xmldom.DOMString);
begin
{*
 00662240    push        ebp
 00662241    mov         ebp,esp
 00662243    push        ebx
 00662244    push        esi
 00662245    push        edi
 00662246    mov         edi,ecx
 00662248    mov         esi,edx
 0066224A    mov         ebx,eax
 0066224C    mov         eax,dword ptr [ebp+8]
 0066224F    call        @UStrAddRef
 00662254    xor         eax,eax
 00662256    push        ebp
 00662257    push        6622B6
 0066225C    push        dword ptr fs:[eax]
 0066225F    mov         dword ptr fs:[eax],esp
 00662262    mov         eax,dword ptr [ebx+24]
 00662265    test        eax,eax
>00662267    je          00662278
 00662269    mov         edx,dword ptr [ebp+8]
 0066226C    push        edx
 0066226D    mov         ecx,edi
 0066226F    mov         edx,esi
 00662271    call        TXMLNode.RegisterChildNode
>00662276    jmp         006622A0
 00662278    cmp         dword ptr [ebp+8],0
>0066227C    jne         00662288
 0066227E    lea         edx,[ebp+8]
 00662281    mov         eax,ebx
 00662283    call        TXMLNode.GetNamespaceURI
 00662288    mov         eax,dword ptr [ebp+8]
 0066228B    push        eax
 0066228C    lea         eax,[ebx+14]
 0066228F    mov         ecx,esi
 00662291    mov         edx,edi
 00662293    call        AddNodeClassInfo
 00662298    lea         eax,[ebx+10]
 0066229B    call        @IntfClear
 006622A0    xor         eax,eax
 006622A2    pop         edx
 006622A3    pop         ecx
 006622A4    pop         ecx
 006622A5    mov         dword ptr fs:[eax],edx
 006622A8    push        6622BD
 006622AD    lea         eax,[ebp+8]
 006622B0    call        @UStrClr
 006622B5    ret
>006622B6    jmp         @HandleFinally
>006622BB    jmp         006622AD
 006622BD    pop         edi
 006622BE    pop         esi
 006622BF    pop         ebx
 006622C0    pop         ebp
 006622C1    ret         4
*}
end;

//006622C4
function TXMLNode.InternalAddChild(NodeClass:TXMLNodeClass; const NodeName:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString; Index:Integer):IXMLNode;
begin
{*
 006622C4    push        ebp
 006622C5    mov         ebp,esp
 006622C7    push        0
 006622C9    push        0
 006622CB    push        0
 006622CD    push        0
 006622CF    push        ebx
 006622D0    push        esi
 006622D1    push        edi
 006622D2    mov         dword ptr [ebp-0C],ecx
 006622D5    mov         edi,edx
 006622D7    mov         ebx,eax
 006622D9    mov         esi,dword ptr [ebp+8]
 006622DC    xor         eax,eax
 006622DE    push        ebp
 006622DF    push        6623A3
 006622E4    push        dword ptr fs:[eax]
 006622E7    mov         dword ptr fs:[eax],esp
 006622EA    mov         eax,ebx
 006622EC    call        TXMLNode.GetNodeType
 006622F1    cmp         al,9
>006622F3    jne         00662307
 006622F5    lea         eax,[ebp-4]
 006622F8    mov         edx,dword ptr [ebx+20]
 006622FB    mov         ecx,6623B4
 00662300    call        @IntfCast
>00662305    jmp         0066231E
 00662307    lea         eax,[ebp-4]
 0066230A    call        @IntfClear
 0066230F    push        eax
 00662310    mov         eax,dword ptr [ebx+20]
 00662313    push        eax
 00662314    mov         eax,dword ptr [eax]
 00662316    call        dword ptr [eax+38]
 00662319    call        @CheckAutoResult
 0066231E    mov         eax,dword ptr [ebp+10]
 00662321    push        eax
 00662322    lea         eax,[ebp-8]
 00662325    push        eax
 00662326    mov         cl,1
 00662328    mov         edx,dword ptr [ebp-0C]
 0066232B    mov         eax,dword ptr [ebp-4]
 0066232E    call        CreateDOMNode
 00662333    test        edi,edi
>00662335    jne         00662345
 00662337    mov         ecx,esi
 00662339    mov         edx,dword ptr [ebp-8]
 0066233C    mov         eax,ebx
 0066233E    mov         edi,dword ptr [eax]
 00662340    call        dword ptr [edi+4]
>00662343    jmp         00662366
 00662345    push        ebx
 00662346    mov         eax,dword ptr [ebx+1C]
 00662349    push        eax
 0066234A    mov         ecx,dword ptr [ebp-8]
 0066234D    mov         dl,1
 0066234F    mov         eax,edi
 00662351    call        TXMLNode.Create
 00662356    mov         edx,eax
 00662358    test        edx,edx
>0066235A    je          0066235F
 0066235C    sub         edx,0FFFFFFB8
 0066235F    mov         eax,esi
 00662361    call        @IntfCopy
 00662366    lea         edx,[ebp-10]
 00662369    mov         eax,ebx
 0066236B    call        TXMLNode.GetChildNodes
 00662370    mov         eax,dword ptr [ebp-10]
 00662373    mov         ecx,dword ptr [esi]
 00662375    mov         edx,dword ptr [ebp+0C]
 00662378    mov         ebx,dword ptr [eax]
 0066237A    call        dword ptr [ebx+58]
 0066237D    xor         eax,eax
 0066237F    pop         edx
 00662380    pop         ecx
 00662381    pop         ecx
 00662382    mov         dword ptr fs:[eax],edx
 00662385    push        6623AA
 0066238A    lea         eax,[ebp-10]
 0066238D    call        @IntfClear
 00662392    lea         eax,[ebp-8]
 00662395    call        @IntfClear
 0066239A    lea         eax,[ebp-4]
 0066239D    call        @IntfClear
 006623A2    ret
>006623A3    jmp         @HandleFinally
>006623A8    jmp         0066238A
 006623AA    pop         edi
 006623AB    pop         esi
 006623AC    pop         ebx
 006623AD    mov         esp,ebp
 006623AF    pop         ebp
 006623B0    ret         0C
*}
end;

//006623C4
function TXMLNode.FindNamespaceURI(const TagOrPrefix:Xmldom.DOMString):DOMString;
begin
{*
 006623C4    push        ebp
 006623C5    mov         ebp,esp
 006623C7    push        ecx
 006623C8    mov         ecx,0E
 006623CD    push        0
 006623CF    push        0
 006623D1    dec         ecx
>006623D2    jne         006623CD
 006623D4    xchg        ecx,dword ptr [ebp-4]
 006623D7    push        ebx
 006623D8    push        esi
 006623D9    push        edi
 006623DA    mov         dword ptr [ebp-8],ecx
 006623DD    mov         ebx,edx
 006623DF    mov         esi,eax
 006623E1    xor         eax,eax
 006623E3    push        ebp
 006623E4    push        6625AE
 006623E9    push        dword ptr fs:[eax]
 006623EC    mov         dword ptr fs:[eax],esp
 006623EF    mov         eax,dword ptr [ebp-8]
 006623F2    call        @UStrClr
 006623F7    mov         eax,ebx
 006623F9    call        IsPrefixed
 006623FE    test        al,al
>00662400    je          0066240E
 00662402    lea         edx,[ebp-4]
 00662405    mov         eax,ebx
 00662407    call        ExtractPrefix
>0066240C    jmp         00662418
 0066240E    lea         eax,[ebp-4]
 00662411    mov         edx,ebx
 00662413    call        @UStrLAsg
 00662418    mov         ebx,esi
>0066241A    jmp         00662518
 0066241F    lea         edx,[ebp-10]
 00662422    mov         eax,ebx
 00662424    call        TXMLNode.GetAttributeNodes
 00662429    mov         eax,dword ptr [ebp-10]
 0066242C    mov         edx,dword ptr [eax]
 0066242E    call        dword ptr [edx+0C]
 00662431    dec         eax
 00662432    test        eax,eax
>00662434    jl          00662515
 0066243A    inc         eax
 0066243B    mov         dword ptr [ebp-0C],eax
 0066243E    xor         esi,esi
 00662440    lea         edx,[ebp-1C]
 00662443    mov         eax,ebx
 00662445    call        TXMLNode.GetAttributeNodes
 0066244A    mov         eax,dword ptr [ebp-1C]
 0066244D    push        eax
 0066244E    lea         eax,[ebp-2C]
 00662451    mov         edx,esi
 00662453    mov         cl,0FC
 00662455    call        @OleVarFromInt
 0066245A    lea         edx,[ebp-2C]
 0066245D    lea         ecx,[ebp-18]
 00662460    pop         eax
 00662461    mov         edi,dword ptr [eax]
 00662463    call        dword ptr [edi+10]
 00662466    mov         eax,dword ptr [ebp-18]
 00662469    lea         edx,[ebp-14]
 0066246C    mov         ecx,dword ptr [eax]
 0066246E    call        dword ptr [ecx+48]
 00662471    mov         eax,dword ptr [ebp-14]
 00662474    mov         edx,6625C8;^'scbResoundOnNewAlarm'
 00662479    call        @UStrEqual
>0066247E    jne         0066250B
 00662484    lea         edx,[ebp-3C]
 00662487    mov         eax,ebx
 00662489    call        TXMLNode.GetAttributeNodes
 0066248E    mov         eax,dword ptr [ebp-3C]
 00662491    push        eax
 00662492    lea         eax,[ebp-4C]
 00662495    mov         edx,esi
 00662497    mov         cl,0FC
 00662499    call        @OleVarFromInt
 0066249E    lea         edx,[ebp-4C]
 006624A1    lea         ecx,[ebp-38]
 006624A4    pop         eax
 006624A5    mov         edi,dword ptr [eax]
 006624A7    call        dword ptr [edi+10]
 006624AA    mov         eax,dword ptr [ebp-38]
 006624AD    lea         edx,[ebp-34]
 006624B0    mov         ecx,dword ptr [eax]
 006624B2    call        dword ptr [ecx+34]
 006624B5    mov         eax,dword ptr [ebp-34]
 006624B8    lea         edx,[ebp-30]
 006624BB    call        ExtractLocalName
 006624C0    mov         edx,dword ptr [ebp-30]
 006624C3    mov         eax,dword ptr [ebp-4]
 006624C6    call        @UStrEqual
>006624CB    jne         0066250B
 006624CD    lea         edx,[ebp-64]
 006624D0    mov         eax,ebx
 006624D2    call        TXMLNode.GetAttributeNodes
 006624D7    mov         eax,dword ptr [ebp-64]
 006624DA    push        eax
 006624DB    lea         eax,[ebp-74]
 006624DE    mov         edx,esi
 006624E0    mov         cl,0FC
 006624E2    call        @OleVarFromInt
 006624E7    lea         edx,[ebp-74]
 006624EA    lea         ecx,[ebp-60]
 006624ED    pop         eax
 006624EE    mov         edi,dword ptr [eax]
 006624F0    call        dword ptr [edi+10]
 006624F3    mov         eax,dword ptr [ebp-60]
 006624F6    lea         edx,[ebp-5C]
 006624F9    mov         ecx,dword ptr [eax]
 006624FB    call        dword ptr [ecx+3C]
 006624FE    lea         edx,[ebp-5C]
 00662501    mov         eax,dword ptr [ebp-8]
 00662504    call        @VarToUStr
>00662509    jmp         00662515
 0066250B    inc         esi
 0066250C    dec         dword ptr [ebp-0C]
>0066250F    jne         00662440
 00662515    mov         ebx,dword ptr [ebx+28]
 00662518    mov         eax,dword ptr [ebp-8]
 0066251B    cmp         dword ptr [eax],0
>0066251E    jne         00662528
 00662520    test        ebx,ebx
>00662522    jne         0066241F
 00662528    xor         eax,eax
 0066252A    pop         edx
 0066252B    pop         ecx
 0066252C    pop         ecx
 0066252D    mov         dword ptr fs:[eax],edx
 00662530    push        6625B5
 00662535    lea         eax,[ebp-74]
 00662538    call        @VarClr
 0066253D    lea         eax,[ebp-64]
 00662540    call        @IntfClear
 00662545    lea         eax,[ebp-60]
 00662548    call        @IntfClear
 0066254D    lea         eax,[ebp-5C]
 00662550    mov         edx,dword ptr ds:[401300];OleVariant
 00662556    mov         ecx,2
 0066255B    call        @FinalizeArray
 00662560    lea         eax,[ebp-3C]
 00662563    call        @IntfClear
 00662568    lea         eax,[ebp-38]
 0066256B    call        @IntfClear
 00662570    lea         eax,[ebp-34]
 00662573    mov         edx,2
 00662578    call        @UStrArrayClr
 0066257D    lea         eax,[ebp-2C]
 00662580    call        @VarClr
 00662585    lea         eax,[ebp-1C]
 00662588    call        @IntfClear
 0066258D    lea         eax,[ebp-18]
 00662590    call        @IntfClear
 00662595    lea         eax,[ebp-14]
 00662598    call        @UStrClr
 0066259D    lea         eax,[ebp-10]
 006625A0    call        @IntfClear
 006625A5    lea         eax,[ebp-4]
 006625A8    call        @UStrClr
 006625AD    ret
>006625AE    jmp         @HandleFinally
>006625B3    jmp         00662535
 006625B5    pop         edi
 006625B6    pop         esi
 006625B7    pop         ebx
 006625B8    mov         esp,ebp
 006625BA    pop         ebp
 006625BB    ret
*}
end;

//006625D4
function TXMLNode.FindNamespaceDecl(const NamespaceURI:Xmldom.DOMString):IXMLNode;
begin
{*
 006625D4    push        ebp
 006625D5    mov         ebp,esp
 006625D7    push        ecx
 006625D8    mov         ecx,0A
 006625DD    push        0
 006625DF    push        0
 006625E1    dec         ecx
>006625E2    jne         006625DD
 006625E4    push        ecx
 006625E5    xchg        ecx,dword ptr [ebp-4]
 006625E8    push        ebx
 006625E9    push        esi
 006625EA    push        edi
 006625EB    mov         dword ptr [ebp-10],ecx
 006625EE    mov         dword ptr [ebp-0C],edx
 006625F1    mov         dword ptr [ebp-8],eax
 006625F4    xor         eax,eax
 006625F6    push        ebp
 006625F7    push        66275C
 006625FC    push        dword ptr fs:[eax]
 006625FF    mov         dword ptr fs:[eax],esp
 00662602    mov         eax,dword ptr [ebp-10]
 00662605    call        @IntfClear
 0066260A    lea         edx,[ebp-14]
 0066260D    mov         eax,dword ptr [ebp-8]
 00662610    call        TXMLNode.GetAttributeNodes
 00662615    mov         eax,dword ptr [ebp-14]
 00662618    mov         edx,dword ptr [eax]
 0066261A    call        dword ptr [edx+0C]
 0066261D    mov         esi,eax
 0066261F    dec         esi
 00662620    test        esi,esi
>00662622    jl          006626DC
 00662628    inc         esi
 00662629    xor         ebx,ebx
 0066262B    lea         edx,[ebp-18]
 0066262E    mov         eax,dword ptr [ebp-8]
 00662631    call        TXMLNode.GetAttributeNodes
 00662636    mov         eax,dword ptr [ebp-18]
 00662639    push        eax
 0066263A    lea         eax,[ebp-28]
 0066263D    mov         edx,ebx
 0066263F    mov         cl,0FC
 00662641    call        @OleVarFromInt
 00662646    lea         edx,[ebp-28]
 00662649    lea         ecx,[ebp-4]
 0066264C    pop         eax
 0066264D    mov         edi,dword ptr [eax]
 0066264F    call        dword ptr [edi+10]
 00662652    lea         edx,[ebp-3C]
 00662655    mov         eax,dword ptr [ebp-4]
 00662658    mov         ecx,dword ptr [eax]
 0066265A    call        dword ptr [ecx+3C]
 0066265D    lea         eax,[ebp-3C]
 00662660    lea         edx,[ebp-2C]
 00662663    call        VarToStr
 00662668    mov         eax,dword ptr [ebp-2C]
 0066266B    mov         edx,dword ptr [ebp-0C]
 0066266E    call        0065C0B8
 00662673    test        al,al
>00662675    je          006626D4
 00662677    lea         edx,[ebp-40]
 0066267A    mov         eax,dword ptr [ebp-4]
 0066267D    mov         ecx,dword ptr [eax]
 0066267F    call        dword ptr [ecx+48]
 00662682    mov         eax,dword ptr [ebp-40]
 00662685    mov         edx,662778;^'scbResoundOnNewAlarm'
 0066268A    call        @UStrEqual
>0066268F    je          006626AB
 00662691    lea         edx,[ebp-44]
 00662694    mov         eax,dword ptr [ebp-4]
 00662697    mov         ecx,dword ptr [eax]
 00662699    call        dword ptr [ecx+34]
 0066269C    mov         eax,dword ptr [ebp-44]
 0066269F    mov         edx,662778;^'scbResoundOnNewAlarm'
 006626A4    call        @UStrEqual
>006626A9    jne         006626D4
 006626AB    lea         edx,[ebp-48]
 006626AE    mov         eax,dword ptr [ebp-8]
 006626B1    call        TXMLNode.GetAttributeNodes
 006626B6    mov         eax,dword ptr [ebp-48]
 006626B9    push        eax
 006626BA    lea         eax,[ebp-58]
 006626BD    mov         edx,ebx
 006626BF    mov         cl,0FC
 006626C1    call        @OleVarFromInt
 006626C6    lea         edx,[ebp-58]
 006626C9    mov         ecx,dword ptr [ebp-10]
 006626CC    pop         eax
 006626CD    mov         esi,dword ptr [eax]
 006626CF    call        dword ptr [esi+10]
>006626D2    jmp         006626DC
 006626D4    inc         ebx
 006626D5    dec         esi
>006626D6    jne         0066262B
 006626DC    mov         eax,dword ptr [ebp-10]
 006626DF    cmp         dword ptr [eax],0
>006626E2    jne         006626FE
 006626E4    mov         eax,dword ptr [ebp-8]
 006626E7    cmp         dword ptr [eax+28],0
>006626EB    je          006626FE
 006626ED    mov         ecx,dword ptr [ebp-10]
 006626F0    mov         eax,dword ptr [ebp-8]
 006626F3    mov         eax,dword ptr [eax+28]
 006626F6    mov         edx,dword ptr [ebp-0C]
 006626F9    call        TXMLNode.FindNamespaceDecl
 006626FE    xor         eax,eax
 00662700    pop         edx
 00662701    pop         ecx
 00662702    pop         ecx
 00662703    mov         dword ptr fs:[eax],edx
 00662706    push        662763
 0066270B    lea         eax,[ebp-58]
 0066270E    call        @VarClr
 00662713    lea         eax,[ebp-48]
 00662716    call        @IntfClear
 0066271B    lea         eax,[ebp-44]
 0066271E    mov         edx,2
 00662723    call        @UStrArrayClr
 00662728    lea         eax,[ebp-3C]
 0066272B    call        @VarClr
 00662730    lea         eax,[ebp-2C]
 00662733    call        @UStrClr
 00662738    lea         eax,[ebp-28]
 0066273B    call        @VarClr
 00662740    lea         eax,[ebp-18]
 00662743    mov         edx,dword ptr ds:[65C930];IXMLNodeList
 00662749    mov         ecx,2
 0066274E    call        @FinalizeArray
 00662753    lea         eax,[ebp-4]
 00662756    call        @IntfClear
 0066275B    ret
>0066275C    jmp         @HandleFinally
>00662761    jmp         0066270B
 00662763    pop         edi
 00662764    pop         esi
 00662765    pop         ebx
 00662766    mov         esp,ebp
 00662768    pop         ebp
 00662769    ret
*}
end;

//00662784
procedure TXMLNode.DeclareNamespace(const Prefix:Xmldom.DOMString; const URI:Xmldom.DOMString);
begin
{*
 00662784    push        ebp
 00662785    mov         ebp,esp
 00662787    push        0
 00662789    push        0
 0066278B    push        0
 0066278D    push        0
 0066278F    push        0
 00662791    push        0
 00662793    push        ebx
 00662794    push        esi
 00662795    push        edi
 00662796    mov         esi,ecx
 00662798    mov         edi,edx
 0066279A    mov         ebx,eax
 0066279C    xor         eax,eax
 0066279E    push        ebp
 0066279F    push        662826
 006627A4    push        dword ptr fs:[eax]
 006627A7    mov         dword ptr fs:[eax],esp
 006627AA    lea         ecx,[ebp-4]
 006627AD    mov         edx,esi
 006627AF    mov         eax,ebx
 006627B1    call        TXMLNode.FindNamespaceDecl
 006627B6    cmp         dword ptr [ebp-4],0
>006627BA    jne         00662800
 006627BC    lea         eax,[ebp-8]
 006627BF    mov         edx,662840;^'scbResoundOnNewAlarm'
 006627C4    call        @UStrLAsg
 006627C9    test        edi,edi
>006627CB    je          006627E3
 006627CD    push        dword ptr [ebp-8]
 006627D0    push        662858;':'
 006627D5    push        edi
 006627D6    lea         eax,[ebp-8]
 006627D9    mov         edx,3
 006627DE    call        @UStrCatN
 006627E3    lea         eax,[ebp-18]
 006627E6    mov         edx,esi
 006627E8    call        @OleVarFromUStr
 006627ED    lea         eax,[ebp-18]
 006627F0    push        eax
 006627F1    mov         ecx,662868;'http://www.w3.org/2000/xmlns/'
 006627F6    mov         edx,dword ptr [ebp-8]
 006627F9    mov         eax,ebx
 006627FB    call        TXMLNode.SetAttributeNS
 00662800    xor         eax,eax
 00662802    pop         edx
 00662803    pop         ecx
 00662804    pop         ecx
 00662805    mov         dword ptr fs:[eax],edx
 00662808    push        66282D
 0066280D    lea         eax,[ebp-18]
 00662810    call        @VarClr
 00662815    lea         eax,[ebp-8]
 00662818    call        @UStrClr
 0066281D    lea         eax,[ebp-4]
 00662820    call        @IntfClear
 00662825    ret
>00662826    jmp         @HandleFinally
>0066282B    jmp         0066280D
 0066282D    pop         edi
 0066282E    pop         esi
 0066282F    pop         ebx
 00662830    mov         esp,ebp
 00662832    pop         ebp
 00662833    ret
*}
end;

//006628A4
function TXMLNode.GetPrefixedName(const Name:Xmldom.DOMString; const NamespaceURI:Xmldom.DOMString):DOMString;
begin
{*
 006628A4    push        ebp
 006628A5    mov         ebp,esp
 006628A7    push        0
 006628A9    push        0
 006628AB    push        0
 006628AD    push        0
 006628AF    push        ebx
 006628B0    push        esi
 006628B1    push        edi
 006628B2    mov         dword ptr [ebp-8],ecx
 006628B5    mov         esi,edx
 006628B7    mov         ebx,eax
 006628B9    mov         edi,dword ptr [ebp+8]
 006628BC    xor         eax,eax
 006628BE    push        ebp
 006628BF    push        66295E
 006628C4    push        dword ptr fs:[eax]
 006628C7    mov         dword ptr fs:[eax],esp
 006628CA    mov         eax,dword ptr [ebx+1C]
 006628CD    call        TXMLDocument.GetOptions
 006628D2    test        al,8
>006628D4    je          00662932
 006628D6    mov         eax,esi
 006628D8    call        IsPrefixed
 006628DD    test        al,al
>006628DF    jne         00662932
 006628E1    lea         ecx,[ebp-4]
 006628E4    mov         edx,dword ptr [ebp-8]
 006628E7    mov         eax,ebx
 006628E9    call        TXMLNode.FindNamespaceDecl
 006628EE    cmp         dword ptr [ebp-4],0
>006628F2    je          00662927
 006628F4    lea         edx,[ebp-0C]
 006628F7    mov         eax,dword ptr [ebp-4]
 006628FA    mov         ecx,dword ptr [eax]
 006628FC    call        dword ptr [ecx+34]
 006628FF    mov         eax,dword ptr [ebp-0C]
 00662902    mov         edx,66297C;^'scbResoundOnNewAlarm'
 00662907    call        @UStrEqual
>0066290C    je          00662927
 0066290E    lea         edx,[ebp-10]
 00662911    mov         eax,dword ptr [ebp-4]
 00662914    mov         ecx,dword ptr [eax]
 00662916    call        dword ptr [ecx+2C]
 00662919    mov         eax,dword ptr [ebp-10]
 0066291C    mov         ecx,edi
 0066291E    mov         edx,esi
 00662920    call        MakeNodeName
>00662925    jmp         0066293B
 00662927    mov         eax,edi
 00662929    mov         edx,esi
 0066292B    call        @UStrAsg
>00662930    jmp         0066293B
 00662932    mov         eax,edi
 00662934    mov         edx,esi
 00662936    call        @UStrAsg
 0066293B    xor         eax,eax
 0066293D    pop         edx
 0066293E    pop         ecx
 0066293F    pop         ecx
 00662940    mov         dword ptr fs:[eax],edx
 00662943    push        662965
 00662948    lea         eax,[ebp-10]
 0066294B    mov         edx,2
 00662950    call        @UStrArrayClr
 00662955    lea         eax,[ebp-4]
 00662958    call        @IntfClear
 0066295D    ret
>0066295E    jmp         @HandleFinally
>00662963    jmp         00662948
 00662965    pop         edi
 00662966    pop         esi
 00662967    pop         ebx
 00662968    mov         esp,ebp
 0066296A    pop         ebp
 0066296B    ret         4
*}
end;

//00662988
function TXMLNode.CloneNode(Deep:Boolean):IXMLNode;
begin
{*
 00662988    push        ebp
 00662989    mov         ebp,esp
 0066298B    add         esp,0FFFFFFF8
 0066298E    push        ebx
 0066298F    push        esi
 00662990    push        edi
 00662991    xor         ebx,ebx
 00662993    mov         dword ptr [ebp-8],ebx
 00662996    mov         dword ptr [ebp-4],ecx
 00662999    mov         ebx,edx
 0066299B    mov         edi,eax
 0066299D    xor         eax,eax
 0066299F    push        ebp
 006629A0    push        662A06
 006629A5    push        dword ptr fs:[eax]
 006629A8    mov         dword ptr fs:[eax],esp
 006629AB    mov         eax,dword ptr [edi]
 006629AD    mov         esi,eax
 006629AF    push        0
 006629B1    mov         eax,dword ptr [edi+1C]
 006629B4    push        eax
 006629B5    lea         eax,[ebp-8]
 006629B8    call        @IntfClear
 006629BD    push        eax
 006629BE    cmp         bl,1
 006629C1    cmc
 006629C2    sbb         eax,eax
 006629C4    push        eax
 006629C5    mov         eax,dword ptr [edi+20]
 006629C8    push        eax
 006629C9    mov         eax,dword ptr [eax]
 006629CB    call        dword ptr [eax+5C]
 006629CE    call        @CheckAutoResult
 006629D3    mov         ecx,dword ptr [ebp-8]
 006629D6    mov         dl,1
 006629D8    mov         eax,esi
 006629DA    call        TXMLNode.Create
 006629DF    mov         edx,eax
 006629E1    test        edx,edx
>006629E3    je          006629E8
 006629E5    sub         edx,0FFFFFFB8
 006629E8    mov         eax,dword ptr [ebp-4]
 006629EB    call        @IntfCopy
 006629F0    xor         eax,eax
 006629F2    pop         edx
 006629F3    pop         ecx
 006629F4    pop         ecx
 006629F5    mov         dword ptr fs:[eax],edx
 006629F8    push        662A0D
 006629FD    lea         eax,[ebp-8]
 00662A00    call        @IntfClear
 00662A05    ret
>00662A06    jmp         @HandleFinally
>00662A0B    jmp         006629FD
 00662A0D    pop         edi
 00662A0E    pop         esi
 00662A0F    pop         ebx
 00662A10    pop         ecx
 00662A11    pop         ecx
 00662A12    pop         ebp
 00662A13    ret
*}
end;

//00662A14
{*procedure sub_00662A14(?:?);
begin
 00662A14    push        esi
 00662A15    mov         esi,eax
 00662A17    xor         edx,edx
 00662A19    mov         eax,esi
 00662A1B    mov         ecx,dword ptr [eax]
 00662A1D    call        dword ptr [ecx+14]
 00662A20    xor         edx,edx
 00662A22    mov         eax,esi
 00662A24    mov         ecx,dword ptr [eax]
 00662A26    call        dword ptr [ecx+18]
 00662A29    pop         esi
 00662A2A    ret
end;*}

//00662A2C
{*procedure sub_00662A2C(?:?; ?:?; ?:?);
begin
 00662A2C    push        ebx
 00662A2D    push        esi
 00662A2E    push        edi
 00662A2F    push        ebp
 00662A30    add         esp,0FFFFFFF4
 00662A33    mov         dword ptr [esp+4],ecx
 00662A37    mov         dword ptr [esp],edx
 00662A3A    mov         ebx,eax
 00662A3C    mov         eax,dword ptr [esp+4]
 00662A40    call        @IntfClear
 00662A45    cmp         dword ptr [ebx+2C],0
>00662A49    je          00662A95
 00662A4B    mov         eax,dword ptr [ebx+2C]
 00662A4E    mov         dword ptr [esp+8],eax
 00662A52    mov         eax,dword ptr [esp+8]
 00662A56    test        eax,eax
>00662A58    je          00662A5F
 00662A5A    sub         eax,4
 00662A5D    mov         eax,dword ptr [eax]
 00662A5F    mov         edi,eax
 00662A61    dec         edi
 00662A62    test        edi,edi
>00662A64    jl          00662A95
 00662A66    inc         edi
 00662A67    xor         esi,esi
 00662A69    mov         eax,dword ptr [ebx+2C]
 00662A6C    mov         ebp,dword ptr [eax+esi*4]
 00662A6F    mov         eax,ebp
 00662A71    mov         edx,dword ptr [esp]
 00662A74    call        @IsClass
 00662A79    test        al,al
>00662A7B    je          00662A91
 00662A7D    mov         eax,dword ptr [esp+4]
 00662A81    mov         edx,ebp
 00662A83    test        edx,edx
>00662A85    je          00662A8A
 00662A87    sub         edx,0FFFFFFB8
 00662A8A    call        @IntfCopy
>00662A8F    jmp         00662A95
 00662A91    inc         esi
 00662A92    dec         edi
>00662A93    jne         00662A69
 00662A95    add         esp,0C
 00662A98    pop         ebp
 00662A99    pop         edi
 00662A9A    pop         esi
 00662A9B    pop         ebx
 00662A9C    ret
end;*}

//00662AA0
procedure TXMLNode.AddHostedNode(Node:TXMLNode);
begin
{*
 00662AA0    push        ebx
 00662AA1    push        esi
 00662AA2    push        edi
 00662AA3    add         esp,0FFFFFFF8
 00662AA6    mov         edi,edx
 00662AA8    mov         ebx,eax
 00662AAA    mov         eax,dword ptr [ebx+2C]
 00662AAD    mov         dword ptr [esp],eax
 00662AB0    mov         esi,dword ptr [esp]
 00662AB3    test        esi,esi
>00662AB5    je          00662ABC
 00662AB7    sub         esi,4
 00662ABA    mov         esi,dword ptr [esi]
 00662ABC    inc         esi
 00662ABD    push        esi
 00662ABE    lea         eax,[ebx+2C]
 00662AC1    mov         ecx,1
 00662AC6    mov         edx,dword ptr ds:[65D124];TXMLNodeArray
 00662ACC    call        @DynArraySetLength
 00662AD1    add         esp,4
 00662AD4    mov         eax,dword ptr [ebx+2C]
 00662AD7    mov         dword ptr [esp+4],eax
 00662ADB    mov         eax,dword ptr [esp+4]
 00662ADF    test        eax,eax
>00662AE1    je          00662AE8
 00662AE3    sub         eax,4
 00662AE6    mov         eax,dword ptr [eax]
 00662AE8    dec         eax
 00662AE9    mov         edx,dword ptr [ebx+2C]
 00662AEC    mov         dword ptr [edx+eax*4],edi
 00662AEF    pop         ecx
 00662AF0    pop         edx
 00662AF1    pop         edi
 00662AF2    pop         esi
 00662AF3    pop         ebx
 00662AF4    ret
*}
end;

//00662AF8
procedure sub_00662AF8(?:TXMLNode; ?:TXMLNode);
begin
{*
 00662AF8    push        ebx
 00662AF9    push        esi
 00662AFA    push        edi
 00662AFB    push        ebp
 00662AFC    push        ecx
 00662AFD    mov         ebx,eax
 00662AFF    mov         eax,dword ptr [ebx+2C];TXMLNode.FHostedNodes:TXMLNodeArray
 00662B02    mov         dword ptr [esp],eax
 00662B05    mov         eax,dword ptr [esp]
 00662B08    test        eax,eax
>00662B0A    je          00662B11
 00662B0C    sub         eax,4
 00662B0F    mov         eax,dword ptr [eax]
 00662B11    mov         edi,eax
 00662B13    mov         eax,edi
 00662B15    dec         eax
 00662B16    test        eax,eax
>00662B18    jl          00662B61
 00662B1A    inc         eax
 00662B1B    xor         esi,esi
 00662B1D    mov         ecx,dword ptr [ebx+2C];TXMLNode.FHostedNodes:TXMLNodeArray
 00662B20    cmp         edx,dword ptr [ecx+esi*4]
>00662B23    jne         00662B5D
 00662B25    mov         eax,esi
 00662B27    mov         edx,edi
 00662B29    sub         edx,2
 00662B2C    sub         edx,eax
>00662B2E    jl          00662B43
 00662B30    inc         edx
 00662B31    mov         ecx,dword ptr [ebx+2C];TXMLNode.FHostedNodes:TXMLNodeArray
 00662B34    mov         ecx,dword ptr [ecx+eax*4+4]
 00662B38    mov         ebp,dword ptr [ebx+2C];TXMLNode.FHostedNodes:TXMLNodeArray
 00662B3B    mov         dword ptr [ebp+eax*4],ecx
 00662B3F    inc         eax
 00662B40    dec         edx
>00662B41    jne         00662B31
 00662B43    dec         edi
 00662B44    push        edi
 00662B45    lea         eax,[ebx+2C];TXMLNode.FHostedNodes:TXMLNodeArray
 00662B48    mov         ecx,1
 00662B4D    mov         edx,dword ptr ds:[65D124];TXMLNodeArray
 00662B53    call        @DynArraySetLength
 00662B58    add         esp,4
>00662B5B    jmp         00662B61
 00662B5D    inc         esi
 00662B5E    dec         eax
>00662B5F    jne         00662B1D
 00662B61    pop         edx
 00662B62    pop         ebp
 00662B63    pop         edi
 00662B64    pop         esi
 00662B65    pop         ebx
 00662B66    ret
*}
end;

//00662B68
function TXMLNode.NextSibling:IXMLNode;
begin
{*
 00662B68    push        ebp
 00662B69    mov         ebp,esp
 00662B6B    push        0
 00662B6D    push        0
 00662B6F    push        ebx
 00662B70    push        esi
 00662B71    mov         esi,edx
 00662B73    mov         ebx,eax
 00662B75    xor         eax,eax
 00662B77    push        ebp
 00662B78    push        662BE4
 00662B7D    push        dword ptr fs:[eax]
 00662B80    mov         dword ptr fs:[eax],esp
 00662B83    cmp         dword ptr [ebx+28],0
>00662B87    je          00662BBF
 00662B89    push        esi
 00662B8A    lea         edx,[ebp-4]
 00662B8D    mov         eax,dword ptr [ebx+28]
 00662B90    call        TXMLNode.GetChildNodes
 00662B95    mov         eax,dword ptr [ebp-4]
 00662B98    push        eax
 00662B99    lea         eax,[ebp-8]
 00662B9C    mov         edx,ebx
 00662B9E    test        edx,edx
>00662BA0    je          00662BA5
 00662BA2    sub         edx,0FFFFFFF8
 00662BA5    mov         ecx,662BF4
 00662BAA    call        @IntfCast
 00662BAF    mov         edx,dword ptr [ebp-8]
 00662BB2    mov         ecx,1
 00662BB7    pop         eax
 00662BB8    mov         ebx,dword ptr [eax]
 00662BBA    call        dword ptr [ebx+44]
>00662BBD    jmp         00662BC6
 00662BBF    mov         eax,esi
 00662BC1    call        @IntfClear
 00662BC6    xor         eax,eax
 00662BC8    pop         edx
 00662BC9    pop         ecx
 00662BCA    pop         ecx
 00662BCB    mov         dword ptr fs:[eax],edx
 00662BCE    push        662BEB
 00662BD3    lea         eax,[ebp-8]
 00662BD6    call        @IntfClear
 00662BDB    lea         eax,[ebp-4]
 00662BDE    call        @IntfClear
 00662BE3    ret
>00662BE4    jmp         @HandleFinally
>00662BE9    jmp         00662BD3
 00662BEB    pop         esi
 00662BEC    pop         ebx
 00662BED    pop         ecx
 00662BEE    pop         ecx
 00662BEF    pop         ebp
 00662BF0    ret
*}
end;

//00662C04
function TXMLNode.PreviousSibling:IXMLNode;
begin
{*
 00662C04    push        ebp
 00662C05    mov         ebp,esp
 00662C07    push        0
 00662C09    push        0
 00662C0B    push        ebx
 00662C0C    push        esi
 00662C0D    mov         esi,edx
 00662C0F    mov         ebx,eax
 00662C11    xor         eax,eax
 00662C13    push        ebp
 00662C14    push        662C7E
 00662C19    push        dword ptr fs:[eax]
 00662C1C    mov         dword ptr fs:[eax],esp
 00662C1F    cmp         dword ptr [ebx+28],0
>00662C23    je          00662C59
 00662C25    push        esi
 00662C26    lea         edx,[ebp-4]
 00662C29    mov         eax,dword ptr [ebx+28]
 00662C2C    call        TXMLNode.GetChildNodes
 00662C31    mov         eax,dword ptr [ebp-4]
 00662C34    push        eax
 00662C35    lea         eax,[ebp-8]
 00662C38    mov         edx,ebx
 00662C3A    test        edx,edx
>00662C3C    je          00662C41
 00662C3E    sub         edx,0FFFFFFF8
 00662C41    mov         ecx,662C8C
 00662C46    call        @IntfCast
 00662C4B    mov         edx,dword ptr [ebp-8]
 00662C4E    or          ecx,0FFFFFFFF
 00662C51    pop         eax
 00662C52    mov         ebx,dword ptr [eax]
 00662C54    call        dword ptr [ebx+44]
>00662C57    jmp         00662C60
 00662C59    mov         eax,esi
 00662C5B    call        @IntfClear
 00662C60    xor         eax,eax
 00662C62    pop         edx
 00662C63    pop         ecx
 00662C64    pop         ecx
 00662C65    mov         dword ptr fs:[eax],edx
 00662C68    push        662C85
 00662C6D    lea         eax,[ebp-8]
 00662C70    call        @IntfClear
 00662C75    lea         eax,[ebp-4]
 00662C78    call        @IntfClear
 00662C7D    ret
>00662C7E    jmp         @HandleFinally
>00662C83    jmp         00662C6D
 00662C85    pop         esi
 00662C86    pop         ebx
 00662C87    pop         ecx
 00662C88    pop         ecx
 00662C89    pop         ebp
 00662C8A    ret
*}
end;

//00662C9C
procedure TXMLNode.TransformNode(const stylesheet:XMLIntf.IXMLNode; var output:WideString);
begin
{*
 00662C9C    push        ebp
 00662C9D    mov         ebp,esp
 00662C9F    push        0
 00662CA1    push        0
 00662CA3    push        ebx
 00662CA4    push        esi
 00662CA5    push        edi
 00662CA6    mov         edi,ecx
 00662CA8    mov         esi,edx
 00662CAA    mov         ebx,eax
 00662CAC    xor         eax,eax
 00662CAE    push        ebp
 00662CAF    push        662D00
 00662CB4    push        dword ptr fs:[eax]
 00662CB7    mov         dword ptr fs:[eax],esp
 00662CBA    push        edi
 00662CBB    lea         edx,[ebp-4]
 00662CBE    mov         eax,esi
 00662CC0    mov         ecx,dword ptr [eax]
 00662CC2    call        dword ptr [ecx+20]
 00662CC5    mov         eax,dword ptr [ebp-4]
 00662CC8    push        eax
 00662CC9    lea         edx,[ebp-8]
 00662CCC    mov         eax,dword ptr [ebx+20]
 00662CCF    call        GetDOMNodeEx
 00662CD4    mov         eax,dword ptr [ebp-8]
 00662CD7    push        eax
 00662CD8    mov         eax,dword ptr [eax]
 00662CDA    call        dword ptr [eax+74]
 00662CDD    call        @CheckAutoResult
 00662CE2    xor         eax,eax
 00662CE4    pop         edx
 00662CE5    pop         ecx
 00662CE6    pop         ecx
 00662CE7    mov         dword ptr fs:[eax],edx
 00662CEA    push        662D07
 00662CEF    lea         eax,[ebp-8]
 00662CF2    call        @IntfClear
 00662CF7    lea         eax,[ebp-4]
 00662CFA    call        @IntfClear
 00662CFF    ret
>00662D00    jmp         @HandleFinally
>00662D05    jmp         00662CEF
 00662D07    pop         edi
 00662D08    pop         esi
 00662D09    pop         ebx
 00662D0A    pop         ecx
 00662D0B    pop         ecx
 00662D0C    pop         ebp
 00662D0D    ret
*}
end;

//00662D10
procedure TXMLNode.TransformNode(const stylesheet:XMLIntf.IXMLNode; const output:XMLIntf.IXMLDocument);
begin
{*
 00662D10    push        ebp
 00662D11    mov         ebp,esp
 00662D13    push        0
 00662D15    push        0
 00662D17    push        0
 00662D19    push        ebx
 00662D1A    push        esi
 00662D1B    push        edi
 00662D1C    mov         edi,ecx
 00662D1E    mov         esi,edx
 00662D20    mov         ebx,eax
 00662D22    xor         eax,eax
 00662D24    push        ebp
 00662D25    push        662D8B
 00662D2A    push        dword ptr fs:[eax]
 00662D2D    mov         dword ptr fs:[eax],esp
 00662D30    lea         edx,[ebp-4]
 00662D33    mov         eax,edi
 00662D35    mov         ecx,dword ptr [eax]
 00662D37    call        dword ptr [ecx+20]
 00662D3A    mov         eax,dword ptr [ebp-4]
 00662D3D    push        eax
 00662D3E    lea         edx,[ebp-8]
 00662D41    mov         eax,esi
 00662D43    mov         ecx,dword ptr [eax]
 00662D45    call        dword ptr [ecx+20]
 00662D48    mov         eax,dword ptr [ebp-8]
 00662D4B    push        eax
 00662D4C    lea         edx,[ebp-0C]
 00662D4F    mov         eax,dword ptr [ebx+20]
 00662D52    call        GetDOMNodeEx
 00662D57    mov         eax,dword ptr [ebp-0C]
 00662D5A    push        eax
 00662D5B    mov         eax,dword ptr [eax]
 00662D5D    call        dword ptr [eax+78]
 00662D60    call        @CheckAutoResult
 00662D65    xor         eax,eax
 00662D67    pop         edx
 00662D68    pop         ecx
 00662D69    pop         ecx
 00662D6A    mov         dword ptr fs:[eax],edx
 00662D6D    push        662D92
 00662D72    lea         eax,[ebp-0C]
 00662D75    call        @IntfClear
 00662D7A    lea         eax,[ebp-8]
 00662D7D    call        @IntfClear
 00662D82    lea         eax,[ebp-4]
 00662D85    call        @IntfClear
 00662D8A    ret
>00662D8B    jmp         @HandleFinally
>00662D90    jmp         00662D72
 00662D92    pop         edi
 00662D93    pop         esi
 00662D94    pop         ebx
 00662D95    mov         esp,ebp
 00662D97    pop         ebp
 00662D98    ret
*}
end;

//00662D9C
function TXMLNode.NestingLevel:Integer;
begin
{*
 00662D9C    push        ebp
 00662D9D    mov         ebp,esp
 00662D9F    push        0
 00662DA1    push        0
 00662DA3    push        ebx
 00662DA4    push        esi
 00662DA5    mov         esi,eax
 00662DA7    xor         eax,eax
 00662DA9    push        ebp
 00662DAA    push        662E0D
 00662DAF    push        dword ptr fs:[eax]
 00662DB2    mov         dword ptr fs:[eax],esp
 00662DB5    xor         ebx,ebx
 00662DB7    lea         eax,[ebp-4]
 00662DBA    mov         edx,dword ptr [esi+28]
 00662DBD    test        edx,edx
>00662DBF    je          00662DC4
 00662DC1    sub         edx,0FFFFFFB8
 00662DC4    call        @IntfCopy
 00662DC9    cmp         dword ptr [ebp-4],0
>00662DCD    je          00662DEC
 00662DCF    inc         ebx
 00662DD0    lea         edx,[ebp-8]
 00662DD3    mov         eax,dword ptr [ebp-4]
 00662DD6    mov         ecx,dword ptr [eax]
 00662DD8    call        dword ptr [ecx+44]
 00662DDB    mov         edx,dword ptr [ebp-8]
 00662DDE    lea         eax,[ebp-4]
 00662DE1    call        @IntfCopy
 00662DE6    cmp         dword ptr [ebp-4],0
>00662DEA    jne         00662DCF
 00662DEC    xor         eax,eax
 00662DEE    pop         edx
 00662DEF    pop         ecx
 00662DF0    pop         ecx
 00662DF1    mov         dword ptr fs:[eax],edx
 00662DF4    push        662E14
 00662DF9    lea         eax,[ebp-8]
 00662DFC    mov         edx,dword ptr ds:[65C8F8];IXMLNode
 00662E02    mov         ecx,2
 00662E07    call        @FinalizeArray
 00662E0C    ret
>00662E0D    jmp         @HandleFinally
>00662E12    jmp         00662DF9
 00662E14    mov         eax,ebx
 00662E16    pop         esi
 00662E17    pop         ebx
 00662E18    pop         ecx
 00662E19    pop         ecx
 00662E1A    pop         ebp
 00662E1B    ret
*}
end;

//00662E1C
{*procedure sub_00662E1C(?:?);
begin
 00662E1C    push        esi
 00662E1D    mov         esi,eax
 00662E1F    mov         eax,dword ptr [esi+20]
 00662E22    push        eax
 00662E23    mov         eax,dword ptr [eax]
 00662E25    call        dword ptr [eax+60]
 00662E28    call        @CheckAutoResult
 00662E2D    xor         edx,edx
 00662E2F    mov         eax,esi
 00662E31    mov         ecx,dword ptr [eax]
 00662E33    call        dword ptr [ecx+18]
 00662E36    pop         esi
 00662E37    ret
end;*}

//00662E38
procedure TXMLNode.CheckReadOnly;
begin
{*
 00662E38    push        ebp
 00662E39    mov         ebp,esp
 00662E3B    push        0
 00662E3D    xor         edx,edx
 00662E3F    push        ebp
 00662E40    push        662E7C
 00662E45    push        dword ptr fs:[edx]
 00662E48    mov         dword ptr fs:[edx],esp
 00662E4B    cmp         byte ptr [eax+31],0
>00662E4F    je          00662E66
 00662E51    lea         edx,[ebp-4]
 00662E54    mov         eax,[007C4548];^SResString381:TResStringRec
 00662E59    call        LoadResString
 00662E5E    mov         eax,dword ptr [ebp-4]
 00662E61    call        XMLDocError
 00662E66    xor         eax,eax
 00662E68    pop         edx
 00662E69    pop         ecx
 00662E6A    pop         ecx
 00662E6B    mov         dword ptr fs:[eax],edx
 00662E6E    push        662E83
 00662E73    lea         eax,[ebp-4]
 00662E76    call        @UStrClr
 00662E7B    ret
>00662E7C    jmp         @HandleFinally
>00662E81    jmp         00662E73
 00662E83    pop         ecx
 00662E84    pop         ebp
 00662E85    ret
*}
end;

//00662E88
procedure TXMLNode.CheckTextNode;
begin
{*
 00662E88    push        ebp
 00662E89    mov         ebp,esp
 00662E8B    mov         ecx,6
 00662E90    push        0
 00662E92    push        0
 00662E94    dec         ecx
>00662E95    jne         00662E90
 00662E97    push        esi
 00662E98    mov         esi,eax
 00662E9A    xor         eax,eax
 00662E9C    push        ebp
 00662E9D    push        663023
 00662EA2    push        dword ptr fs:[eax]
 00662EA5    mov         dword ptr fs:[eax],esp
 00662EA8    lea         eax,[ebp-4]
 00662EAB    push        eax
 00662EAC    mov         eax,dword ptr [esi+20]
 00662EAF    push        eax
 00662EB0    mov         eax,dword ptr [eax]
 00662EB2    call        dword ptr [eax+58]
 00662EB5    call        @CheckAutoResult
 00662EBA    cmp         word ptr [ebp-4],0
>00662EBF    jne         00662F1D
 00662EC1    lea         eax,[ebp-8]
 00662EC4    call        @IntfClear
 00662EC9    push        eax
 00662ECA    lea         eax,[ebp-0C]
 00662ECD    call        @IntfClear
 00662ED2    push        eax
 00662ED3    push        0
 00662ED5    lea         eax,[ebp-10]
 00662ED8    call        @IntfClear
 00662EDD    push        eax
 00662EDE    mov         eax,dword ptr [esi+20]
 00662EE1    push        eax
 00662EE2    mov         eax,dword ptr [eax]
 00662EE4    call        dword ptr [eax+38]
 00662EE7    call        @CheckAutoResult
 00662EEC    mov         eax,dword ptr [ebp-10]
 00662EEF    push        eax
 00662EF0    mov         eax,dword ptr [eax]
 00662EF2    call        dword ptr [eax+80]
 00662EF8    call        @CheckAutoResult
 00662EFD    mov         eax,dword ptr [ebp-0C]
 00662F00    push        eax
 00662F01    mov         eax,dword ptr [esi+20]
 00662F04    push        eax
 00662F05    mov         eax,dword ptr [eax]
 00662F07    call        dword ptr [eax+54]
 00662F0A    call        @CheckAutoResult
 00662F0F    xor         edx,edx
 00662F11    mov         eax,esi
 00662F13    mov         ecx,dword ptr [eax]
 00662F15    call        dword ptr [ecx+18]
>00662F18    jmp         00662FD8
 00662F1D    lea         eax,[ebp-14]
 00662F20    push        eax
 00662F21    lea         eax,[ebp-18]
 00662F24    call        @IntfClear
 00662F29    push        eax
 00662F2A    mov         eax,dword ptr [esi+20]
 00662F2D    push        eax
 00662F2E    mov         eax,dword ptr [eax]
 00662F30    call        dword ptr [eax+20]
 00662F33    call        @CheckAutoResult
 00662F38    mov         eax,dword ptr [ebp-18]
 00662F3B    push        eax
 00662F3C    mov         eax,dword ptr [eax]
 00662F3E    call        dword ptr [eax+10]
 00662F41    call        @CheckAutoResult
 00662F46    cmp         dword ptr [ebp-14],1
>00662F4A    jg          00662F9B
 00662F4C    lea         eax,[ebp-4]
 00662F4F    push        eax
 00662F50    lea         eax,[ebp-1C]
 00662F53    call        @IntfClear
 00662F58    push        eax
 00662F59    push        0
 00662F5B    lea         eax,[ebp-20]
 00662F5E    call        @IntfClear
 00662F63    push        eax
 00662F64    mov         eax,dword ptr [esi+20]
 00662F67    push        eax
 00662F68    mov         eax,dword ptr [eax]
 00662F6A    call        dword ptr [eax+20]
 00662F6D    call        @CheckAutoResult
 00662F72    mov         eax,dword ptr [ebp-20]
 00662F75    push        eax
 00662F76    mov         eax,dword ptr [eax]
 00662F78    call        dword ptr [eax+0C]
 00662F7B    call        @CheckAutoResult
 00662F80    mov         eax,dword ptr [ebp-1C]
 00662F83    push        eax
 00662F84    mov         eax,dword ptr [eax]
 00662F86    call        dword ptr [eax+18]
 00662F89    call        @CheckAutoResult
 00662F8E    movzx       eax,word ptr [ebp-4]
 00662F92    add         eax,0FFFFFFFD
 00662F95    sub         ax,2
>00662F99    jb          00662FD8
 00662F9B    lea         eax,[ebp-2C]
 00662F9E    call        @UStrClr
 00662FA3    push        eax
 00662FA4    mov         eax,dword ptr [esi+20]
 00662FA7    push        eax
 00662FA8    mov         eax,dword ptr [eax]
 00662FAA    call        dword ptr [eax+0C]
 00662FAD    call        @CheckAutoResult
 00662FB2    mov         eax,dword ptr [ebp-2C]
 00662FB5    mov         dword ptr [ebp-28],eax
 00662FB8    mov         byte ptr [ebp-24],11
 00662FBC    lea         eax,[ebp-28]
 00662FBF    push        eax
 00662FC0    lea         edx,[ebp-30]
 00662FC3    mov         eax,[007C478C];^SResString378:TResStringRec
 00662FC8    call        LoadResString
 00662FCD    mov         eax,dword ptr [ebp-30]
 00662FD0    xor         ecx,ecx
 00662FD2    pop         edx
 00662FD3    call        XMLDocError
 00662FD8    xor         eax,eax
 00662FDA    pop         edx
 00662FDB    pop         ecx
 00662FDC    pop         ecx
 00662FDD    mov         dword ptr fs:[eax],edx
 00662FE0    push        66302A
 00662FE5    lea         eax,[ebp-30]
 00662FE8    mov         edx,2
 00662FED    call        @UStrArrayClr
 00662FF2    lea         eax,[ebp-20]
 00662FF5    call        @IntfClear
 00662FFA    lea         eax,[ebp-1C]
 00662FFD    call        @IntfClear
 00663002    lea         eax,[ebp-18]
 00663005    call        @IntfClear
 0066300A    lea         eax,[ebp-10]
 0066300D    call        @IntfClear
 00663012    lea         eax,[ebp-0C]
 00663015    call        @IntfClear
 0066301A    lea         eax,[ebp-8]
 0066301D    call        @IntfClear
 00663022    ret
>00663023    jmp         @HandleFinally
>00663028    jmp         00662FE5
 0066302A    pop         esi
 0066302B    mov         esp,ebp
 0066302D    pop         ebp
 0066302E    ret
*}
end;

//00663030
function TXMLNode.GetText:DOMString;
begin
{*
 00663030    push        ebp
 00663031    mov         ebp,esp
 00663033    push        0
 00663035    push        0
 00663037    push        ebx
 00663038    push        esi
 00663039    mov         esi,edx
 0066303B    mov         ebx,eax
 0066303D    xor         eax,eax
 0066303F    push        ebp
 00663040    push        6630D9
 00663045    push        dword ptr fs:[eax]
 00663048    mov         dword ptr fs:[eax],esp
 0066304B    mov         eax,ebx
 0066304D    call        TXMLNode.GetNodeType
 00663052    cmp         al,1
>00663054    jne         006630A5
 00663056    mov         eax,ebx
 00663058    call        TXMLNode.CheckTextNode
 0066305D    mov         eax,esi
 0066305F    call        @UStrClr
 00663064    push        eax
 00663065    lea         eax,[ebp-4]
 00663068    call        @IntfClear
 0066306D    push        eax
 0066306E    push        0
 00663070    lea         eax,[ebp-8]
 00663073    call        @IntfClear
 00663078    push        eax
 00663079    mov         eax,dword ptr [ebx+20]
 0066307C    push        eax
 0066307D    mov         eax,dword ptr [eax]
 0066307F    call        dword ptr [eax+20]
 00663082    call        @CheckAutoResult
 00663087    mov         eax,dword ptr [ebp-8]
 0066308A    push        eax
 0066308B    mov         eax,dword ptr [eax]
 0066308D    call        dword ptr [eax+0C]
 00663090    call        @CheckAutoResult
 00663095    mov         eax,dword ptr [ebp-4]
 00663098    push        eax
 00663099    mov         eax,dword ptr [eax]
 0066309B    call        dword ptr [eax+10]
 0066309E    call        @CheckAutoResult
>006630A3    jmp         006630BB
 006630A5    mov         eax,esi
 006630A7    call        @UStrClr
 006630AC    push        eax
 006630AD    mov         eax,dword ptr [ebx+20]
 006630B0    push        eax
 006630B1    mov         eax,dword ptr [eax]
 006630B3    call        dword ptr [eax+10]
 006630B6    call        @CheckAutoResult
 006630BB    xor         eax,eax
 006630BD    pop         edx
 006630BE    pop         ecx
 006630BF    pop         ecx
 006630C0    mov         dword ptr fs:[eax],edx
 006630C3    push        6630E0
 006630C8    lea         eax,[ebp-8]
 006630CB    call        @IntfClear
 006630D0    lea         eax,[ebp-4]
 006630D3    call        @IntfClear
 006630D8    ret
>006630D9    jmp         @HandleFinally
>006630DE    jmp         006630C8
 006630E0    pop         esi
 006630E1    pop         ebx
 006630E2    pop         ecx
 006630E3    pop         ecx
 006630E4    pop         ebp
 006630E5    ret
*}
end;

//006630E8
procedure TXMLNode.SetText(const Value:Xmldom.DOMString);
begin
{*
 006630E8    push        ebp
 006630E9    mov         ebp,esp
 006630EB    push        0
 006630ED    push        0
 006630EF    push        ebx
 006630F0    push        esi
 006630F1    push        edi
 006630F2    mov         ebx,edx
 006630F4    mov         esi,eax
 006630F6    xor         eax,eax
 006630F8    push        ebp
 006630F9    push        66319A
 006630FE    push        dword ptr fs:[eax]
 00663101    mov         dword ptr fs:[eax],esp
 00663104    mov         cl,1
 00663106    xor         edx,edx
 00663108    mov         eax,esi
 0066310A    mov         edi,dword ptr [eax]
 0066310C    call        dword ptr [edi+10]
 0066310F    mov         eax,esi
 00663111    call        TXMLNode.GetNodeType
 00663116    cmp         al,1
>00663118    jne         00663162
 0066311A    mov         eax,esi
 0066311C    call        TXMLNode.CheckTextNode
 00663121    push        ebx
 00663122    lea         eax,[ebp-4]
 00663125    call        @IntfClear
 0066312A    push        eax
 0066312B    push        0
 0066312D    lea         eax,[ebp-8]
 00663130    call        @IntfClear
 00663135    push        eax
 00663136    mov         eax,dword ptr [esi+20]
 00663139    push        eax
 0066313A    mov         eax,dword ptr [eax]
 0066313C    call        dword ptr [eax+20]
 0066313F    call        @CheckAutoResult
 00663144    mov         eax,dword ptr [ebp-8]
 00663147    push        eax
 00663148    mov         eax,dword ptr [eax]
 0066314A    call        dword ptr [eax+0C]
 0066314D    call        @CheckAutoResult
 00663152    mov         eax,dword ptr [ebp-4]
 00663155    push        eax
 00663156    mov         eax,dword ptr [eax]
 00663158    call        dword ptr [eax+14]
 0066315B    call        @CheckAutoResult
>00663160    jmp         00663171
 00663162    push        ebx
 00663163    mov         eax,dword ptr [esi+20]
 00663166    push        eax
 00663167    mov         eax,dword ptr [eax]
 00663169    call        dword ptr [eax+14]
 0066316C    call        @CheckAutoResult
 00663171    xor         ecx,ecx
 00663173    xor         edx,edx
 00663175    mov         eax,esi
 00663177    mov         ebx,dword ptr [eax]
 00663179    call        dword ptr [ebx+10]
 0066317C    xor         eax,eax
 0066317E    pop         edx
 0066317F    pop         ecx
 00663180    pop         ecx
 00663181    mov         dword ptr fs:[eax],edx
 00663184    push        6631A1
 00663189    lea         eax,[ebp-8]
 0066318C    call        @IntfClear
 00663191    lea         eax,[ebp-4]
 00663194    call        @IntfClear
 00663199    ret
>0066319A    jmp         @HandleFinally
>0066319F    jmp         00663189
 006631A1    pop         edi
 006631A2    pop         esi
 006631A3    pop         ebx
 006631A4    pop         ecx
 006631A5    pop         ecx
 006631A6    pop         ebp
 006631A7    ret
*}
end;

//006631A8
function TXMLNode.GetNodeValue:OleVariant;
begin
{*
 006631A8    push        ebp
 006631A9    mov         ebp,esp
 006631AB    mov         ecx,4
 006631B0    push        0
 006631B2    push        0
 006631B4    dec         ecx
>006631B5    jne         006631B0
 006631B7    push        ecx
 006631B8    push        ebx
 006631B9    push        esi
 006631BA    mov         ebx,edx
 006631BC    mov         esi,eax
 006631BE    xor         eax,eax
 006631C0    push        ebp
 006631C1    push        66322E
 006631C6    push        dword ptr fs:[eax]
 006631C9    mov         dword ptr fs:[eax],esp
 006631CC    lea         edx,[ebp-4]
 006631CF    mov         eax,esi
 006631D1    call        TXMLNode.GetText
 006631D6    mov         edx,dword ptr [ebp-4]
 006631D9    mov         eax,ebx
 006631DB    call        @OleVarFromUStr
 006631E0    lea         eax,[ebp-14]
 006631E3    xor         edx,edx
 006631E5    call        @OleVarFromUStr
 006631EA    lea         edx,[ebp-14]
 006631ED    mov         eax,ebx
 006631EF    call        @VarCmpEQ
>006631F4    jne         00663208
 006631F6    lea         eax,[ebp-24]
 006631F9    call        Null
 006631FE    lea         edx,[ebp-24]
 00663201    mov         eax,ebx
 00663203    call        @OleVarFromVar
 00663208    xor         eax,eax
 0066320A    pop         edx
 0066320B    pop         ecx
 0066320C    pop         ecx
 0066320D    mov         dword ptr fs:[eax],edx
 00663210    push        663235
 00663215    lea         eax,[ebp-24]
 00663218    call        @VarClr
 0066321D    lea         eax,[ebp-14]
 00663220    call        @VarClr
 00663225    lea         eax,[ebp-4]
 00663228    call        @UStrClr
 0066322D    ret
>0066322E    jmp         @HandleFinally
>00663233    jmp         00663215
 00663235    pop         esi
 00663236    pop         ebx
 00663237    mov         esp,ebp
 00663239    pop         ebp
 0066323A    ret
*}
end;

//0066323C
procedure TXMLNode.SetNodeValue(const Value:OleVariant);
begin
{*
 0066323C    push        ebp
 0066323D    mov         ebp,esp
 0066323F    push        0
 00663241    push        0
 00663243    push        0
 00663245    push        ebx
 00663246    mov         dword ptr [ebp-4],edx
 00663249    mov         ebx,eax
 0066324B    xor         eax,eax
 0066324D    push        ebp
 0066324E    push        6632CD
 00663253    push        dword ptr fs:[eax]
 00663256    mov         dword ptr fs:[eax],esp
 00663259    cmp         byte ptr ds:[7C0F4C],0;gvar_007C0F4C
>00663260    je          0066326E
 00663262    mov         eax,dword ptr [ebp-4]
 00663265    cmp         word ptr [eax],0B
 00663269    sete        al
>0066326C    jmp         00663270
 0066326E    xor         eax,eax
 00663270    test        al,al
>00663272    je          0066328F
 00663274    mov         eax,dword ptr [ebp-4]
 00663277    call        @VarToBool
 0066327C    and         eax,7F
 0066327F    mov         edx,dword ptr [eax*4+7C0F58];^'false'
 00663286    mov         eax,ebx
 00663288    call        TXMLNode.SetText
>0066328D    jmp         006632AF
 0066328F    lea         edx,[ebp-0C]
 00663292    mov         eax,dword ptr [ebp-4]
 00663295    call        VarToWideStr
 0066329A    mov         edx,dword ptr [ebp-0C]
 0066329D    lea         eax,[ebp-8]
 006632A0    call        @UStrFromWStr
 006632A5    mov         edx,dword ptr [ebp-8]
 006632A8    mov         eax,ebx
 006632AA    call        TXMLNode.SetText
 006632AF    xor         eax,eax
 006632B1    pop         edx
 006632B2    pop         ecx
 006632B3    pop         ecx
 006632B4    mov         dword ptr fs:[eax],edx
 006632B7    push        6632D4
 006632BC    lea         eax,[ebp-0C]
 006632BF    call        @WStrClr
 006632C4    lea         eax,[ebp-8]
 006632C7    call        @UStrClr
 006632CC    ret
>006632CD    jmp         @HandleFinally
>006632D2    jmp         006632BC
 006632D4    pop         ebx
 006632D5    mov         esp,ebp
 006632D7    pop         ebp
 006632D8    ret
*}
end;

//006632DC
{*procedure sub_006632DC(?:?; ?:?; ?:?);
begin
 006632DC    push        ebp
 006632DD    mov         ebp,esp
 006632DF    push        ecx
 006632E0    mov         ecx,4
 006632E5    push        0
 006632E7    push        0
 006632E9    dec         ecx
>006632EA    jne         006632E5
 006632EC    xchg        ecx,dword ptr [ebp-4]
 006632EF    push        ebx
 006632F0    push        esi
 006632F1    mov         esi,ecx
 006632F3    mov         dword ptr [ebp-8],edx
 006632F6    mov         ebx,eax
 006632F8    xor         eax,eax
 006632FA    push        ebp
 006632FB    push        6633B4
 00663300    push        dword ptr fs:[eax]
 00663303    mov         dword ptr fs:[eax],esp
 00663306    mov         eax,dword ptr [ebp-8]
 00663309    cmp         word ptr [eax],3
>0066330D    jne         00663332
 0066330F    lea         edx,[ebp-0C]
 00663312    mov         eax,ebx
 00663314    call        TXMLNode.GetChildNodes
 00663319    mov         eax,dword ptr [ebp-0C]
 0066331C    push        eax
 0066331D    mov         eax,dword ptr [ebp-8]
 00663320    call        @VarToInteger
 00663325    mov         edx,eax
 00663327    lea         ecx,[ebp-4]
 0066332A    pop         eax
 0066332B    mov         ebx,dword ptr [eax]
 0066332D    call        dword ptr [ebx+48]
>00663330    jmp         00663357
 00663332    lea         edx,[ebp-10]
 00663335    mov         eax,ebx
 00663337    call        TXMLNode.GetChildNodes
 0066333C    mov         eax,dword ptr [ebp-10]
 0066333F    push        eax
 00663340    lea         eax,[ebp-14]
 00663343    mov         edx,dword ptr [ebp-8]
 00663346    call        @VarToUStr
 0066334B    mov         edx,dword ptr [ebp-14]
 0066334E    lea         ecx,[ebp-4]
 00663351    pop         eax
 00663352    mov         ebx,dword ptr [eax]
 00663354    call        dword ptr [ebx+38]
 00663357    cmp         dword ptr [ebp-4],0
>0066335B    je          00663369
 0066335D    mov         edx,esi
 0066335F    mov         eax,dword ptr [ebp-4]
 00663362    mov         ecx,dword ptr [eax]
 00663364    call        dword ptr [ecx+3C]
>00663367    jmp         0066337B
 00663369    lea         eax,[ebp-24]
 0066336C    call        Null
 00663371    lea         edx,[ebp-24]
 00663374    mov         eax,esi
 00663376    call        @OleVarFromVar
 0066337B    xor         eax,eax
 0066337D    pop         edx
 0066337E    pop         ecx
 0066337F    pop         ecx
 00663380    mov         dword ptr fs:[eax],edx
 00663383    push        6633BB
 00663388    lea         eax,[ebp-24]
 0066338B    call        @VarClr
 00663390    lea         eax,[ebp-14]
 00663393    call        @UStrClr
 00663398    lea         eax,[ebp-10]
 0066339B    mov         edx,dword ptr ds:[65C930];IXMLNodeList
 006633A1    mov         ecx,2
 006633A6    call        @FinalizeArray
 006633AB    lea         eax,[ebp-4]
 006633AE    call        @IntfClear
 006633B3    ret
>006633B4    jmp         @HandleFinally
>006633B9    jmp         00663388
 006633BB    pop         esi
 006633BC    pop         ebx
 006633BD    mov         esp,ebp
 006633BF    pop         ebp
 006633C0    ret
end;*}

//006633C4
procedure TXMLNode.SetChildValue(const IndexOrName:OleVariant; const Value:OleVariant);
begin
{*
 006633C4    push        ebp
 006633C5    mov         ebp,esp
 006633C7    push        0
 006633C9    push        0
 006633CB    push        0
 006633CD    push        ebx
 006633CE    push        esi
 006633CF    mov         dword ptr [ebp-4],ecx
 006633D2    mov         esi,edx
 006633D4    mov         ebx,eax
 006633D6    xor         eax,eax
 006633D8    push        ebp
 006633D9    push        663424
 006633DE    push        dword ptr fs:[eax]
 006633E1    mov         dword ptr fs:[eax],esp
 006633E4    lea         edx,[ebp-0C]
 006633E7    mov         eax,ebx
 006633E9    call        TXMLNode.GetChildNodes
 006633EE    mov         eax,dword ptr [ebp-0C]
 006633F1    lea         ecx,[ebp-8]
 006633F4    mov         edx,esi
 006633F6    mov         ebx,dword ptr [eax]
 006633F8    call        dword ptr [ebx+10]
 006633FB    mov         eax,dword ptr [ebp-8]
 006633FE    mov         edx,dword ptr [ebp-4]
 00663401    mov         ecx,dword ptr [eax]
 00663403    call        dword ptr [ecx+60]
 00663406    xor         eax,eax
 00663408    pop         edx
 00663409    pop         ecx
 0066340A    pop         ecx
 0066340B    mov         dword ptr fs:[eax],edx
 0066340E    push        66342B
 00663413    lea         eax,[ebp-0C]
 00663416    call        @IntfClear
 0066341B    lea         eax,[ebp-8]
 0066341E    call        @IntfClear
 00663423    ret
>00663424    jmp         @HandleFinally
>00663429    jmp         00663413
 0066342B    pop         esi
 0066342C    pop         ebx
 0066342D    mov         esp,ebp
 0066342F    pop         ebp
 00663430    ret
*}
end;

//00663434
function TXMLNode.GetXML:DOMString;
begin
{*
 00663434    push        ebp
 00663435    mov         ebp,esp
 00663437    push        0
 00663439    push        ebx
 0066343A    push        esi
 0066343B    mov         esi,edx
 0066343D    mov         ebx,eax
 0066343F    xor         eax,eax
 00663441    push        ebp
 00663442    push        663484
 00663447    push        dword ptr fs:[eax]
 0066344A    mov         dword ptr fs:[eax],esp
 0066344D    mov         eax,esi
 0066344F    call        @UStrClr
 00663454    push        eax
 00663455    lea         edx,[ebp-4]
 00663458    mov         eax,dword ptr [ebx+20]
 0066345B    call        GetDOMNodeEx
 00663460    mov         eax,dword ptr [ebp-4]
 00663463    push        eax
 00663464    mov         eax,dword ptr [eax]
 00663466    call        dword ptr [eax+6C]
 00663469    call        @CheckAutoResult
 0066346E    xor         eax,eax
 00663470    pop         edx
 00663471    pop         ecx
 00663472    pop         ecx
 00663473    mov         dword ptr fs:[eax],edx
 00663476    push        66348B
 0066347B    lea         eax,[ebp-4]
 0066347E    call        @IntfClear
 00663483    ret
>00663484    jmp         @HandleFinally
>00663489    jmp         0066347B
 0066348B    pop         esi
 0066348C    pop         ebx
 0066348D    pop         ecx
 0066348E    pop         ebp
 0066348F    ret
*}
end;

//00663490
function TXMLNode.GetDOMNode:IDOMNode;
begin
{*
 00663490    push        ebx
 00663491    push        esi
 00663492    mov         esi,edx
 00663494    mov         ebx,eax
 00663496    mov         eax,esi
 00663498    mov         edx,dword ptr [ebx+20]
 0066349B    call        @IntfCopy
 006634A0    pop         esi
 006634A1    pop         ebx
 006634A2    ret
*}
end;

//006634A4
function TXMLNode.DOMElement:IDOMElement;
begin
{*
 006634A4    push        ebp
 006634A5    mov         ebp,esp
 006634A7    push        0
 006634A9    push        ebx
 006634AA    push        esi
 006634AB    mov         esi,edx
 006634AD    mov         ebx,eax
 006634AF    xor         eax,eax
 006634B1    push        ebp
 006634B2    push        663502
 006634B7    push        dword ptr fs:[eax]
 006634BA    mov         dword ptr fs:[eax],esp
 006634BD    mov         eax,ebx
 006634BF    call        TXMLNode.GetNodeType
 006634C4    cmp         al,1
>006634C6    je          006634DD
 006634C8    lea         edx,[ebp-4]
 006634CB    mov         eax,[007C4E90];^SResString375:TResStringRec
 006634D0    call        LoadResString
 006634D5    mov         eax,dword ptr [ebp-4]
 006634D8    call        XMLDocError
 006634DD    mov         eax,esi
 006634DF    mov         edx,dword ptr [ebx+20]
 006634E2    mov         ecx,663510
 006634E7    call        @IntfCast
 006634EC    xor         eax,eax
 006634EE    pop         edx
 006634EF    pop         ecx
 006634F0    pop         ecx
 006634F1    mov         dword ptr fs:[eax],edx
 006634F4    push        663509
 006634F9    lea         eax,[ebp-4]
 006634FC    call        @UStrClr
 00663501    ret
>00663502    jmp         @HandleFinally
>00663507    jmp         006634F9
 00663509    pop         esi
 0066350A    pop         ebx
 0066350B    pop         ecx
 0066350C    pop         ebp
 0066350D    ret
*}
end;

//00663520
function TXMLNode.GetNodeType:TNodeType;
begin
{*
 00663520    push        ebx
 00663521    push        ecx
 00663522    mov         ebx,eax
 00663524    push        esp
 00663525    mov         eax,dword ptr [ebx+20]
 00663528    push        eax
 00663529    mov         eax,dword ptr [eax]
 0066352B    call        dword ptr [eax+18]
 0066352E    call        @CheckAutoResult
 00663533    movzx       eax,word ptr [esp]
 00663537    pop         edx
 00663538    pop         ebx
 00663539    ret
*}
end;

//0066353C
function TXMLNode.GetLocalName:DOMString;
begin
{*
 0066353C    push        ebx
 0066353D    push        esi
 0066353E    mov         esi,edx
 00663540    mov         ebx,eax
 00663542    mov         eax,esi
 00663544    call        @UStrClr
 00663549    push        eax
 0066354A    mov         eax,dword ptr [ebx+20]
 0066354D    push        eax
 0066354E    mov         eax,dword ptr [eax]
 00663550    call        dword ptr [eax+44]
 00663553    call        @CheckAutoResult
 00663558    pop         esi
 00663559    pop         ebx
 0066355A    ret
*}
end;

//0066355C
function TXMLNode.GetNamespaceURI:DOMString;
begin
{*
 0066355C    push        ebx
 0066355D    push        esi
 0066355E    mov         esi,edx
 00663560    mov         ebx,eax
 00663562    mov         eax,esi
 00663564    call        @UStrClr
 00663569    push        eax
 0066356A    mov         eax,dword ptr [ebx+20]
 0066356D    push        eax
 0066356E    mov         eax,dword ptr [eax]
 00663570    call        dword ptr [eax+3C]
 00663573    call        @CheckAutoResult
 00663578    pop         esi
 00663579    pop         ebx
 0066357A    ret
*}
end;

//0066357C
function TXMLNode.GetNodeName:DOMString;
begin
{*
 0066357C    push        ebx
 0066357D    push        esi
 0066357E    mov         esi,edx
 00663580    mov         ebx,eax
 00663582    mov         eax,esi
 00663584    call        @UStrClr
 00663589    push        eax
 0066358A    mov         eax,dword ptr [ebx+20]
 0066358D    push        eax
 0066358E    mov         eax,dword ptr [eax]
 00663590    call        dword ptr [eax+0C]
 00663593    call        @CheckAutoResult
 00663598    pop         esi
 00663599    pop         ebx
 0066359A    ret
*}
end;

//0066359C
function TXMLNode.GetPrefix:DOMString;
begin
{*
 0066359C    push        ebx
 0066359D    push        esi
 0066359E    mov         esi,edx
 006635A0    mov         ebx,eax
 006635A2    mov         eax,esi
 006635A4    call        @UStrClr
 006635A9    push        eax
 006635AA    mov         eax,dword ptr [ebx+20]
 006635AD    push        eax
 006635AE    mov         eax,dword ptr [eax]
 006635B0    call        dword ptr [eax+40]
 006635B3    call        @CheckAutoResult
 006635B8    pop         esi
 006635B9    pop         ebx
 006635BA    ret
*}
end;

//006635BC
function TXMLNode.GetIsTextElement:Boolean;
begin
{*
 006635BC    push        ebp
 006635BD    mov         ebp,esp
 006635BF    xor         ecx,ecx
 006635C1    push        ecx
 006635C2    push        ecx
 006635C3    push        ecx
 006635C4    push        ecx
 006635C5    push        ecx
 006635C6    push        ebx
 006635C7    mov         ebx,eax
 006635C9    xor         eax,eax
 006635CB    push        ebp
 006635CC    push        663688
 006635D1    push        dword ptr fs:[eax]
 006635D4    mov         dword ptr fs:[eax],esp
 006635D7    mov         eax,ebx
 006635D9    call        TXMLNode.GetNodeType
 006635DE    cmp         al,1
>006635E0    jne         0066365A
 006635E2    lea         eax,[ebp-4]
 006635E5    push        eax
 006635E6    lea         eax,[ebp-8]
 006635E9    call        @IntfClear
 006635EE    push        eax
 006635EF    mov         eax,dword ptr [ebx+20]
 006635F2    push        eax
 006635F3    mov         eax,dword ptr [eax]
 006635F5    call        dword ptr [eax+20]
 006635F8    call        @CheckAutoResult
 006635FD    mov         eax,dword ptr [ebp-8]
 00663600    push        eax
 00663601    mov         eax,dword ptr [eax]
 00663603    call        dword ptr [eax+10]
 00663606    call        @CheckAutoResult
 0066360B    cmp         dword ptr [ebp-4],1
>0066360F    jne         0066365A
 00663611    lea         eax,[ebp-0C]
 00663614    push        eax
 00663615    lea         eax,[ebp-10]
 00663618    call        @IntfClear
 0066361D    push        eax
 0066361E    push        0
 00663620    lea         eax,[ebp-14]
 00663623    call        @IntfClear
 00663628    push        eax
 00663629    mov         eax,dword ptr [ebx+20]
 0066362C    push        eax
 0066362D    mov         eax,dword ptr [eax]
 0066362F    call        dword ptr [eax+20]
 00663632    call        @CheckAutoResult
 00663637    mov         eax,dword ptr [ebp-14]
 0066363A    push        eax
 0066363B    mov         eax,dword ptr [eax]
 0066363D    call        dword ptr [eax+0C]
 00663640    call        @CheckAutoResult
 00663645    mov         eax,dword ptr [ebp-10]
 00663648    push        eax
 00663649    mov         eax,dword ptr [eax]
 0066364B    call        dword ptr [eax+18]
 0066364E    call        @CheckAutoResult
 00663653    cmp         word ptr [ebp-0C],3
>00663658    je          0066365E
 0066365A    xor         eax,eax
>0066365C    jmp         00663660
 0066365E    mov         al,1
 00663660    mov         ebx,eax
 00663662    xor         eax,eax
 00663664    pop         edx
 00663665    pop         ecx
 00663666    pop         ecx
 00663667    mov         dword ptr fs:[eax],edx
 0066366A    push        66368F
 0066366F    lea         eax,[ebp-14]
 00663672    call        @IntfClear
 00663677    lea         eax,[ebp-10]
 0066367A    call        @IntfClear
 0066367F    lea         eax,[ebp-8]
 00663682    call        @IntfClear
 00663687    ret
>00663688    jmp         @HandleFinally
>0066368D    jmp         0066366F
 0066368F    mov         eax,ebx
 00663691    pop         ebx
 00663692    mov         esp,ebp
 00663694    pop         ebp
 00663695    ret
*}
end;

//00663698
function TXMLNode.GetOwnerDocument:IXMLDocument;
begin
{*
 00663698    push        ebx
 00663699    push        esi
 0066369A    push        edi
 0066369B    mov         edi,edx
 0066369D    mov         ebx,eax
 0066369F    mov         esi,dword ptr [ebx+1C]
 006636A2    test        esi,esi
>006636A4    je          006636BB
 006636A6    mov         eax,edi
 006636A8    call        @IntfClear
 006636AD    mov         ecx,eax
 006636AF    mov         edx,6636C0
 006636B4    mov         eax,esi
 006636B6    call        TObject.GetInterface
 006636BB    pop         edi
 006636BC    pop         esi
 006636BD    pop         ebx
 006636BE    ret
*}
end;

//006636D0
function TXMLNode.GetCollection:IXMLNodeCollection;
begin
{*
 006636D0    push        ebx
 006636D1    push        esi
 006636D2    mov         esi,edx
 006636D4    mov         ebx,eax
 006636D6    mov         eax,esi
 006636D8    mov         edx,dword ptr [ebx+18]
 006636DB    test        edx,edx
>006636DD    je          006636E2
 006636DF    sub         edx,0FFFFFF94
 006636E2    call        @IntfCopy
 006636E7    pop         esi
 006636E8    pop         ebx
 006636E9    ret
*}
end;

//006636EC
function TXMLNode.GetParentNode:IXMLNode;
begin
{*
 006636EC    push        ebx
 006636ED    push        esi
 006636EE    mov         esi,edx
 006636F0    mov         ebx,eax
 006636F2    mov         eax,esi
 006636F4    mov         edx,dword ptr [ebx+28]
 006636F7    test        edx,edx
>006636F9    je          006636FE
 006636FB    sub         edx,0FFFFFFB8
 006636FE    call        @IntfCopy
 00663703    pop         esi
 00663704    pop         ebx
 00663705    ret
*}
end;

//00663708
function TXMLNode.GetChildNodeClasses:TNodeClassArray;
begin
{*
 00663708    push        ebx
 00663709    push        esi
 0066370A    push        edi
 0066370B    mov         esi,edx
 0066370D    mov         ebx,eax
 0066370F    mov         edi,dword ptr [ebx+24]
 00663712    test        edi,edi
>00663714    je          00663721
 00663716    mov         edx,esi
 00663718    mov         eax,edi
 0066371A    call        TXMLNode.GetChildNodeClasses
>0066371F    jmp         00663731
 00663721    mov         eax,esi
 00663723    mov         edx,dword ptr [ebx+14]
 00663726    mov         ecx,dword ptr ds:[65D1D0];TNodeClassArray
 0066372C    call        @DynArrayAsg
 00663731    pop         edi
 00663732    pop         esi
 00663733    pop         ebx
 00663734    ret
*}
end;

//00663738
{*function sub_00663738(?:?):?;
begin
 00663738    mov         eax,dword ptr [eax+24]
 0066373B    ret
end;*}

//0066373C
procedure sub_0066373C;
begin
{*
 0066373C    ret
*}
end;

//00663740
{*procedure sub_00663740(?:?; ?:?);
begin
 00663740    mov         dword ptr [eax+18],edx
 00663743    ret
end;*}

//00663744
procedure TXMLNode.SetParentNode(const Value:TXMLNode);
begin
{*
 00663744    push        ebx
 00663745    push        esi
 00663746    push        edi
 00663747    mov         esi,edx
 00663749    mov         ebx,eax
 0066374B    mov         dword ptr [ebx+28],esi
 0066374E    test        esi,esi
>00663750    je          0066377E
 00663752    mov         eax,dword ptr [ebx+1C]
 00663755    cmp         eax,dword ptr [esi+1C]
>00663758    je          0066377E
 0066375A    mov         edi,dword ptr [ebx+4]
>0066375D    jmp         00663765
 0066375F    push        ebx
 00663760    call        TXMLNode._Release
 00663765    cmp         dword ptr [ebx+4],1
>00663769    jg          0066375F
 0066376B    mov         eax,dword ptr [esi+1C]
 0066376E    mov         dword ptr [ebx+1C],eax
>00663771    jmp         00663779
 00663773    push        ebx
 00663774    call        TXMLNode._AddRef
 00663779    cmp         edi,dword ptr [ebx+4]
>0066377C    jg          00663773
 0066377E    pop         edi
 0066377F    pop         esi
 00663780    pop         ebx
 00663781    ret
*}
end;

//00663784
{*function sub_00663784(?:?):?;
begin
 00663784    movzx       eax,byte ptr [eax+31]
 00663788    ret
end;*}

//0066378C
{*procedure sub_0066378C(?:?; ?:?);
begin
 0066378C    mov         byte ptr [eax+31],dl
 0066378F    ret
end;*}

//00663790
procedure TXMLNode.DoNodeChange(ChangeType:TNodeChange; BeforeOperation:Boolean);
begin
{*
 00663790    push        ebx
 00663791    push        esi
 00663792    mov         ebx,ecx
 00663794    mov         esi,eax
 00663796    mov         eax,dword ptr [esi+1C]
 00663799    test        eax,eax
>0066379B    je          006637AE
 0066379D    push        ebx
 0066379E    mov         ecx,edx
 006637A0    mov         edx,esi
 006637A2    test        edx,edx
>006637A4    je          006637A9
 006637A6    sub         edx,0FFFFFFB8
 006637A9    call        TXMLDocument.DoNodeChange
 006637AE    test        bl,bl
>006637B0    je          006637B9
 006637B2    mov         eax,esi
 006637B4    call        TXMLNode.CheckReadOnly
 006637B9    pop         esi
 006637BA    pop         ebx
 006637BB    ret
*}
end;

//006637BC
procedure TXMLNode.RegisterChildNodes(const TagNames:array[$0..-$1] of Xml.Xmldom.DOMString; const _Dv_:$0..-$1; const NodeClasses:array[$0..-$1] of TXMLNodeClass; const _Dv_:$0..-$1);
begin
{*
 006637BC    push        ebp
 006637BD    mov         ebp,esp
 006637BF    add         esp,0FFFFFFF0
 006637C2    push        ebx
 006637C3    push        esi
 006637C4    push        edi
 006637C5    xor         ebx,ebx
 006637C7    mov         dword ptr [ebp-10],ebx
 006637CA    mov         dword ptr [ebp-0C],ebx
 006637CD    mov         ebx,ecx
 006637CF    mov         dword ptr [ebp-8],edx
 006637D2    mov         dword ptr [ebp-4],eax
 006637D5    xor         eax,eax
 006637D7    push        ebp
 006637D8    push        66384D
 006637DD    push        dword ptr fs:[eax]
 006637E0    mov         dword ptr fs:[eax],esp
 006637E3    mov         esi,ebx
 006637E5    mov         eax,dword ptr [ebp+8]
 006637E8    cmp         esi,eax
>006637EA    je          00663801
 006637EC    lea         edx,[ebp-0C]
 006637EF    mov         eax,[007C481C];^SResString377:TResStringRec
 006637F4    call        LoadResString
 006637F9    mov         eax,dword ptr [ebp-0C]
 006637FC    call        XMLDocError
 00663801    mov         edi,esi
 00663803    test        edi,edi
>00663805    jl          00663832
 00663807    inc         edi
 00663808    mov         ebx,dword ptr [ebp-8]
 0066380B    mov         esi,dword ptr [ebp+0C]
 0066380E    lea         edx,[ebp-10]
 00663811    mov         eax,dword ptr [ebp-4]
 00663814    call        TXMLNode.GetNamespaceURI
 00663819    mov         eax,dword ptr [ebp-10]
 0066381C    push        eax
 0066381D    mov         ecx,dword ptr [esi]
 0066381F    mov         edx,dword ptr [ebx]
 00663821    mov         eax,dword ptr [ebp-4]
 00663824    call        TXMLNode.RegisterChildNode
 00663829    add         esi,4
 0066382C    add         ebx,4
 0066382F    dec         edi
>00663830    jne         0066380E
 00663832    xor         eax,eax
 00663834    pop         edx
 00663835    pop         ecx
 00663836    pop         ecx
 00663837    mov         dword ptr fs:[eax],edx
 0066383A    push        663854
 0066383F    lea         eax,[ebp-10]
 00663842    mov         edx,2
 00663847    call        @UStrArrayClr
 0066384C    ret
>0066384D    jmp         @HandleFinally
>00663852    jmp         0066383F
 00663854    pop         edi
 00663855    pop         esi
 00663856    pop         ebx
 00663857    mov         esp,ebp
 00663859    pop         ebp
 0066385A    ret         8
*}
end;

//00663860
procedure TXMLNodeCollection.AfterConstruction;
begin
{*
 00663860    push        ebp
 00663861    mov         ebp,esp
 00663863    push        0
 00663865    push        ebx
 00663866    mov         ebx,eax
 00663868    xor         eax,eax
 0066386A    push        ebp
 0066386B    push        6638B2
 00663870    push        dword ptr fs:[eax]
 00663873    mov         dword ptr fs:[eax],esp
 00663876    mov         dword ptr [ebx+3C],ebx
 00663879    mov         dword ptr [ebx+38],663F78;TXMLNodeCollection.UpdateCollectionList
 00663880    lea         edx,[ebp-4]
 00663883    mov         eax,ebx
 00663885    call        TXMLNode.GetNamespaceURI
 0066388A    mov         edx,dword ptr [ebp-4]
 0066388D    lea         eax,[ebx+60]
 00663890    call        @UStrAsg
 00663895    mov         eax,ebx
 00663897    call        TInterfacedObject.AfterConstruction
 0066389C    xor         eax,eax
 0066389E    pop         edx
 0066389F    pop         ecx
 006638A0    pop         ecx
 006638A1    mov         dword ptr fs:[eax],edx
 006638A4    push        6638B9
 006638A9    lea         eax,[ebp-4]
 006638AC    call        @UStrClr
 006638B1    ret
>006638B2    jmp         @HandleFinally
>006638B7    jmp         006638A9
 006638B9    pop         ebx
 006638BA    pop         ecx
 006638BB    pop         ebp
 006638BC    ret
*}
end;

//006638C0
function TXMLNodeCollection.GetList:IXMLNodeList;
begin
{*
 006638C0    push        ebp
 006638C1    mov         ebp,esp
 006638C3    push        0
 006638C5    push        ebx
 006638C6    push        esi
 006638C7    mov         esi,edx
 006638C9    mov         ebx,eax
 006638CB    xor         eax,eax
 006638CD    push        ebp
 006638CE    push        663909
 006638D3    push        dword ptr fs:[eax]
 006638D6    mov         dword ptr fs:[eax],esp
 006638D9    cmp         dword ptr [ebx+68],0
>006638DD    jne         006638E9
 006638DF    lea         edx,[ebp-4]
 006638E2    mov         eax,ebx
 006638E4    call        TXMLNode.GetChildNodes
 006638E9    mov         eax,esi
 006638EB    mov         edx,dword ptr [ebx+68]
 006638EE    call        @IntfCopy
 006638F3    xor         eax,eax
 006638F5    pop         edx
 006638F6    pop         ecx
 006638F7    pop         ecx
 006638F8    mov         dword ptr fs:[eax],edx
 006638FB    push        663910
 00663900    lea         eax,[ebp-4]
 00663903    call        @IntfClear
 00663908    ret
>00663909    jmp         @HandleFinally
>0066390E    jmp         00663900
 00663910    pop         esi
 00663911    pop         ebx
 00663912    pop         ecx
 00663913    pop         ebp
 00663914    ret
*}
end;

//00663918
procedure TXMLNodeCollection.SetChildNodes(const Value:XMLIntf.IXMLNodeList);
begin
{*
 00663918    push        ebx
 00663919    push        esi
 0066391A    mov         esi,edx
 0066391C    mov         ebx,eax
 0066391E    mov         edx,esi
 00663920    mov         eax,ebx
 00663922    call        TXMLNode.SetChildNodes
 00663927    lea         eax,[ebx+68]
 0066392A    mov         edx,esi
 0066392C    call        @IntfCopy
 00663931    mov         dl,1
 00663933    mov         eax,ebx
 00663935    call        TXMLNodeCollection.CreateItemList
 0066393A    pop         esi
 0066393B    pop         ebx
 0066393C    ret
*}
end;

//00663940
procedure TXMLNodeCollection.CreateItemList(CheckFirst:Boolean);
begin
{*
 00663940    push        ebp
 00663941    mov         ebp,esp
 00663943    mov         ecx,12
 00663948    push        0
 0066394A    push        0
 0066394C    dec         ecx
>0066394D    jne         00663948
 0066394F    push        ecx
 00663950    push        ebx
 00663951    push        esi
 00663952    push        edi
 00663953    mov         ebx,eax
 00663955    xor         eax,eax
 00663957    push        ebp
 00663958    push        663BDE
 0066395D    push        dword ptr fs:[eax]
 00663960    mov         dword ptr fs:[eax],esp
 00663963    test        dl,dl
>00663965    je          00663A21
 0066396B    mov         byte ptr [ebp-1],0
 0066396F    lea         edx,[ebp-10]
 00663972    mov         eax,ebx
 00663974    call        TXMLNode.GetChildNodes
 00663979    mov         eax,dword ptr [ebp-10]
 0066397C    mov         edx,dword ptr [eax]
 0066397E    call        dword ptr [edx+0C]
 00663981    dec         eax
 00663982    test        eax,eax
>00663984    jl          00663A17
 0066398A    inc         eax
 0066398B    mov         dword ptr [ebp-0C],eax
 0066398E    xor         esi,esi
 00663990    lea         edx,[ebp-18]
 00663993    mov         eax,ebx
 00663995    call        TXMLNode.GetChildNodes
 0066399A    mov         eax,dword ptr [ebp-18]
 0066399D    push        eax
 0066399E    lea         eax,[ebp-28]
 006639A1    mov         edx,esi
 006639A3    mov         cl,0FC
 006639A5    call        @OleVarFromInt
 006639AA    lea         edx,[ebp-28]
 006639AD    lea         ecx,[ebp-14]
 006639B0    pop         eax
 006639B1    mov         edi,dword ptr [eax]
 006639B3    call        dword ptr [edi+10]
 006639B6    mov         edx,dword ptr [ebp-14]
 006639B9    mov         eax,ebx
 006639BB    call        TXMLNodeCollection.IsCollectionItem
 006639C0    test        al,al
>006639C2    jne         006639CA
 006639C4    mov         byte ptr [ebp-1],1
>006639C8    jmp         00663A17
 006639CA    lea         edx,[ebp-34]
 006639CD    mov         eax,ebx
 006639CF    call        TXMLNode.GetChildNodes
 006639D4    mov         eax,dword ptr [ebp-34]
 006639D7    push        eax
 006639D8    lea         eax,[ebp-44]
 006639DB    mov         edx,esi
 006639DD    mov         cl,0FC
 006639DF    call        @OleVarFromInt
 006639E4    lea         edx,[ebp-44]
 006639E7    lea         ecx,[ebp-30]
 006639EA    pop         eax
 006639EB    mov         edi,dword ptr [eax]
 006639ED    call        dword ptr [edi+10]
 006639F0    mov         edx,dword ptr [ebp-30]
 006639F3    lea         eax,[ebp-2C]
 006639F6    mov         ecx,663BF0
 006639FB    call        @IntfCast
 00663A00    mov         eax,dword ptr [ebp-2C]
 00663A03    mov         edx,ebx
 00663A05    mov         ecx,dword ptr [eax]
 00663A07    call        dword ptr [ecx+0F0]
 00663A0D    inc         esi
 00663A0E    dec         dword ptr [ebp-0C]
>00663A11    jne         00663990
 00663A17    cmp         byte ptr [ebp-1],0
>00663A1B    je          00663B32
 00663A21    mov         eax,dword ptr [ebx+60]
 00663A24    push        eax
 00663A25    push        0
 00663A27    push        0
 00663A29    mov         ecx,ebx
 00663A2B    mov         dl,1
 00663A2D    mov         eax,[0065CF24];TXMLNodeList
 00663A32    call        TXMLNodeList.Create
 00663A37    mov         dword ptr [ebp-8],eax
 00663A3A    lea         eax,[ebx+68]
 00663A3D    mov         edx,dword ptr [ebp-8]
 00663A40    test        edx,edx
>00663A42    je          00663A47
 00663A44    sub         edx,0FFFFFFDC
 00663A47    call        @IntfCopy
 00663A4C    lea         edx,[ebp-48]
 00663A4F    mov         eax,ebx
 00663A51    call        TXMLNode.GetChildNodes
 00663A56    mov         eax,dword ptr [ebp-48]
 00663A59    mov         edx,dword ptr [eax]
 00663A5B    call        dword ptr [edx+0C]
 00663A5E    dec         eax
 00663A5F    test        eax,eax
>00663A61    jl          00663B32
 00663A67    inc         eax
 00663A68    mov         dword ptr [ebp-0C],eax
 00663A6B    xor         esi,esi
 00663A6D    lea         edx,[ebp-50]
 00663A70    mov         eax,ebx
 00663A72    call        TXMLNode.GetChildNodes
 00663A77    mov         eax,dword ptr [ebp-50]
 00663A7A    push        eax
 00663A7B    lea         eax,[ebp-60]
 00663A7E    mov         edx,esi
 00663A80    mov         cl,0FC
 00663A82    call        @OleVarFromInt
 00663A87    lea         edx,[ebp-60]
 00663A8A    lea         ecx,[ebp-4C]
 00663A8D    pop         eax
 00663A8E    mov         edi,dword ptr [eax]
 00663A90    call        dword ptr [edi+10]
 00663A93    mov         edx,dword ptr [ebp-4C]
 00663A96    mov         eax,ebx
 00663A98    call        TXMLNodeCollection.IsCollectionItem
 00663A9D    test        al,al
>00663A9F    je          00663B28
 00663AA5    lea         edx,[ebp-6C]
 00663AA8    mov         eax,ebx
 00663AAA    call        TXMLNode.GetChildNodes
 00663AAF    mov         eax,dword ptr [ebp-6C]
 00663AB2    push        eax
 00663AB3    lea         eax,[ebp-7C]
 00663AB6    mov         edx,esi
 00663AB8    mov         cl,0FC
 00663ABA    call        @OleVarFromInt
 00663ABF    lea         edx,[ebp-7C]
 00663AC2    lea         ecx,[ebp-68]
 00663AC5    pop         eax
 00663AC6    mov         edi,dword ptr [eax]
 00663AC8    call        dword ptr [edi+10]
 00663ACB    mov         edx,dword ptr [ebp-68]
 00663ACE    lea         eax,[ebp-64]
 00663AD1    mov         ecx,663BF0
 00663AD6    call        @IntfCast
 00663ADB    mov         eax,dword ptr [ebp-64]
 00663ADE    mov         edx,ebx
 00663AE0    mov         ecx,dword ptr [eax]
 00663AE2    call        dword ptr [ecx+0F0]
 00663AE8    lea         edx,[ebp-84]
 00663AEE    mov         eax,ebx
 00663AF0    call        TXMLNode.GetChildNodes
 00663AF5    mov         eax,dword ptr [ebp-84]
 00663AFB    push        eax
 00663AFC    lea         eax,[ebp-94]
 00663B02    mov         edx,esi
 00663B04    mov         cl,0FC
 00663B06    call        @OleVarFromInt
 00663B0B    lea         edx,[ebp-94]
 00663B11    lea         ecx,[ebp-80]
 00663B14    pop         eax
 00663B15    mov         edi,dword ptr [eax]
 00663B17    call        dword ptr [edi+10]
 00663B1A    mov         ecx,dword ptr [ebp-80]
 00663B1D    or          edx,0FFFFFFFF
 00663B20    mov         eax,dword ptr [ebp-8]
 00663B23    call        TXMLNodeList.InternalInsert
 00663B28    inc         esi
 00663B29    dec         dword ptr [ebp-0C]
>00663B2C    jne         00663A6D
 00663B32    xor         eax,eax
 00663B34    pop         edx
 00663B35    pop         ecx
 00663B36    pop         ecx
 00663B37    mov         dword ptr fs:[eax],edx
 00663B3A    push        663BE8
 00663B3F    lea         eax,[ebp-94]
 00663B45    call        @VarClr
 00663B4A    lea         eax,[ebp-84]
 00663B50    call        @IntfClear
 00663B55    lea         eax,[ebp-80]
 00663B58    call        @IntfClear
 00663B5D    lea         eax,[ebp-7C]
 00663B60    call        @VarClr
 00663B65    lea         eax,[ebp-6C]
 00663B68    call        @IntfClear
 00663B6D    lea         eax,[ebp-68]
 00663B70    call        @IntfClear
 00663B75    lea         eax,[ebp-64]
 00663B78    call        @IntfClear
 00663B7D    lea         eax,[ebp-60]
 00663B80    call        @VarClr
 00663B85    lea         eax,[ebp-50]
 00663B88    call        @IntfClear
 00663B8D    lea         eax,[ebp-4C]
 00663B90    call        @IntfClear
 00663B95    lea         eax,[ebp-48]
 00663B98    call        @IntfClear
 00663B9D    lea         eax,[ebp-44]
 00663BA0    call        @VarClr
 00663BA5    lea         eax,[ebp-34]
 00663BA8    call        @IntfClear
 00663BAD    lea         eax,[ebp-30]
 00663BB0    call        @IntfClear
 00663BB5    lea         eax,[ebp-2C]
 00663BB8    call        @IntfClear
 00663BBD    lea         eax,[ebp-28]
 00663BC0    call        @VarClr
 00663BC5    lea         eax,[ebp-18]
 00663BC8    call        @IntfClear
 00663BCD    lea         eax,[ebp-14]
 00663BD0    call        @IntfClear
 00663BD5    lea         eax,[ebp-10]
 00663BD8    call        @IntfClear
 00663BDD    ret
>00663BDE    jmp         @HandleFinally
>00663BE3    jmp         00663B3F
 00663BE8    pop         edi
 00663BE9    pop         esi
 00663BEA    pop         ebx
 00663BEB    mov         esp,ebp
 00663BED    pop         ebp
 00663BEE    ret
*}
end;

//00663C00
function TXMLNodeCollection.IsCollectionItem(const Node:XMLIntf.IXMLNode):Boolean;
begin
{*
 00663C00    push        ebp
 00663C01    mov         ebp,esp
 00663C03    xor         ecx,ecx
 00663C05    push        ecx
 00663C06    push        ecx
 00663C07    push        ecx
 00663C08    push        ecx
 00663C09    push        ebx
 00663C0A    push        esi
 00663C0B    mov         esi,edx
 00663C0D    mov         ebx,eax
 00663C0F    xor         eax,eax
 00663C11    push        ebp
 00663C12    push        663CE6
 00663C17    push        dword ptr fs:[eax]
 00663C1A    mov         dword ptr fs:[eax],esp
 00663C1D    mov         byte ptr [ebp-9],0
 00663C21    lea         edx,[ebx+50]
 00663C24    mov         eax,esi
 00663C26    call        Supports
 00663C2B    test        al,al
>00663C2D    je          00663CBA
 00663C33    lea         edx,[ebp-10]
 00663C36    mov         eax,esi
 00663C38    mov         ecx,dword ptr [eax]
 00663C3A    call        dword ptr [ecx+34]
 00663C3D    mov         eax,dword ptr [ebp-10]
 00663C40    lea         edx,[ebp-4]
 00663C43    call        ExtractLocalName
 00663C48    mov         eax,dword ptr [ebp-4]
 00663C4B    mov         edx,dword ptr [ebx+64]
 00663C4E    call        @UStrEqual
 00663C53    sete        byte ptr [ebp-9]
 00663C57    cmp         byte ptr [ebp-9],0
>00663C5B    jne         00663CBA
 00663C5D    mov         ecx,1
 00663C62    mov         edx,dword ptr [ebx+64]
 00663C65    mov         eax,663D04;';'
 00663C6A    call        Pos
 00663C6F    test        eax,eax
>00663C71    jle         00663CBA
 00663C73    lea         eax,[ebp-8]
 00663C76    push        eax
 00663C77    movzx       ecx,byte ptr ds:[663D08]
 00663C7E    mov         dx,3B
 00663C82    mov         eax,dword ptr [ebx+64]
 00663C85    call        0065FC2C
 00663C8A    mov         eax,dword ptr [ebp-8]
 00663C8D    test        eax,eax
>00663C8F    je          00663C96
 00663C91    sub         eax,4
 00663C94    mov         eax,dword ptr [eax]
 00663C96    mov         ebx,eax
 00663C98    dec         ebx
 00663C99    test        ebx,ebx
>00663C9B    jl          00663CBA
 00663C9D    inc         ebx
 00663C9E    xor         esi,esi
 00663CA0    mov         eax,dword ptr [ebp-4]
 00663CA3    mov         edx,dword ptr [ebp-8]
 00663CA6    mov         edx,dword ptr [edx+esi*4]
 00663CA9    call        @UStrEqual
>00663CAE    jne         00663CB6
 00663CB0    mov         byte ptr [ebp-9],1
>00663CB4    jmp         00663CBA
 00663CB6    inc         esi
 00663CB7    dec         ebx
>00663CB8    jne         00663CA0
 00663CBA    xor         eax,eax
 00663CBC    pop         edx
 00663CBD    pop         ecx
 00663CBE    pop         ecx
 00663CBF    mov         dword ptr fs:[eax],edx
 00663CC2    push        663CED
 00663CC7    lea         eax,[ebp-10]
 00663CCA    call        @UStrClr
 00663CCF    lea         eax,[ebp-8]
 00663CD2    mov         edx,dword ptr ds:[65FBF0];TDOMStringDynArray
 00663CD8    call        @DynArrayClear
 00663CDD    lea         eax,[ebp-4]
 00663CE0    call        @UStrClr
 00663CE5    ret
>00663CE6    jmp         @HandleFinally
>00663CEB    jmp         00663CC7
 00663CED    movzx       eax,byte ptr [ebp-9]
 00663CF1    pop         esi
 00663CF2    pop         ebx
 00663CF3    mov         esp,ebp
 00663CF5    pop         ebp
 00663CF6    ret
*}
end;

//00663D0C
procedure TXMLNodeCollection.InsertInCollection(Node:XMLIntf.IXMLNode; Index:Integer);
begin
{*
 00663D0C    push        ebp
 00663D0D    mov         ebp,esp
 00663D0F    push        ecx
 00663D10    mov         ecx,0C
 00663D15    push        0
 00663D17    push        0
 00663D19    dec         ecx
>00663D1A    jne         00663D15
 00663D1C    xchg        ecx,dword ptr [ebp-4]
 00663D1F    push        ebx
 00663D20    push        esi
 00663D21    push        edi
 00663D22    mov         esi,ecx
 00663D24    mov         dword ptr [ebp-4],edx
 00663D27    mov         ebx,eax
 00663D29    mov         eax,dword ptr [ebp-4]
 00663D2C    call        @IntfAddRef
 00663D31    xor         eax,eax
 00663D33    push        ebp
 00663D34    push        663F1E
 00663D39    push        dword ptr fs:[eax]
 00663D3C    mov         dword ptr fs:[eax],esp
 00663D3F    mov         edx,dword ptr [ebp-4]
 00663D42    mov         eax,ebx
 00663D44    call        TXMLNodeCollection.IsCollectionItem
 00663D49    test        al,al
>00663D4B    je          00663E85
 00663D51    lea         eax,[ebp-10]
 00663D54    mov         edx,dword ptr [ebp-4]
 00663D57    mov         ecx,663F2C
 00663D5C    call        @IntfCast
 00663D61    mov         eax,dword ptr [ebp-10]
 00663D64    mov         edx,ebx
 00663D66    mov         ecx,dword ptr [eax]
 00663D68    call        dword ptr [ecx+0F0]
 00663D6E    lea         edx,[ebp-14]
 00663D71    mov         eax,ebx
 00663D73    mov         ecx,dword ptr [eax]
 00663D75    call        dword ptr [ecx+1C]
 00663D78    mov         edi,dword ptr [ebp-14]
 00663D7B    lea         edx,[ebp-18]
 00663D7E    mov         eax,ebx
 00663D80    call        TXMLNode.GetChildNodes
 00663D85    cmp         edi,dword ptr [ebp-18]
>00663D88    je          00663EAA
 00663D8E    lea         edx,[ebp-1C]
 00663D91    mov         eax,ebx
 00663D93    mov         ecx,dword ptr [eax]
 00663D95    call        dword ptr [ecx+1C]
 00663D98    mov         eax,dword ptr [ebp-1C]
 00663D9B    mov         edx,dword ptr [eax]
 00663D9D    call        dword ptr [edx+0C]
 00663DA0    cmp         eax,esi
>00663DA2    ja          00663DBE
 00663DA4    lea         edx,[ebp-20]
 00663DA7    mov         eax,ebx
 00663DA9    mov         ecx,dword ptr [eax]
 00663DAB    call        dword ptr [ecx+1C]
 00663DAE    mov         eax,dword ptr [ebp-20]
 00663DB1    mov         edx,dword ptr [ebp-4]
 00663DB4    mov         ecx,dword ptr [eax]
 00663DB6    call        dword ptr [ecx+18]
>00663DB9    jmp         00663EAA
 00663DBE    test        esi,esi
>00663DC0    jle         00663E6C
 00663DC6    lea         eax,[esi+1]
 00663DC9    push        eax
 00663DCA    lea         edx,[ebp-24]
 00663DCD    mov         eax,ebx
 00663DCF    call        TXMLNode.GetChildNodes
 00663DD4    mov         eax,dword ptr [ebp-24]
 00663DD7    mov         edx,dword ptr [eax]
 00663DD9    call        dword ptr [edx+0C]
 00663DDC    dec         eax
 00663DDD    pop         edx
 00663DDE    sub         eax,edx
>00663DE0    jl          00663E6C
 00663DE6    inc         eax
 00663DE7    mov         dword ptr [ebp-0C],eax
 00663DEA    mov         dword ptr [ebp-8],edx
 00663DED    lea         edx,[ebp-2C]
 00663DF0    mov         eax,ebx
 00663DF2    call        TXMLNode.GetChildNodes
 00663DF7    mov         eax,dword ptr [ebp-2C]
 00663DFA    push        eax
 00663DFB    lea         eax,[ebp-3C]
 00663DFE    mov         edx,dword ptr [ebp-8]
 00663E01    mov         cl,0FC
 00663E03    call        @OleVarFromInt
 00663E08    lea         edx,[ebp-3C]
 00663E0B    lea         ecx,[ebp-28]
 00663E0E    pop         eax
 00663E0F    mov         edi,dword ptr [eax]
 00663E11    call        dword ptr [edi+10]
 00663E14    mov         edx,dword ptr [ebp-28]
 00663E17    mov         eax,ebx
 00663E19    call        TXMLNodeCollection.IsCollectionItem
 00663E1E    test        al,al
>00663E20    je          00663E64
 00663E22    lea         edx,[ebp-44]
 00663E25    mov         eax,ebx
 00663E27    call        TXMLNode.GetChildNodes
 00663E2C    mov         eax,dword ptr [ebp-44]
 00663E2F    push        eax
 00663E30    lea         eax,[ebp-54]
 00663E33    mov         edx,dword ptr [ebp-8]
 00663E36    mov         cl,0FC
 00663E38    call        @OleVarFromInt
 00663E3D    lea         edx,[ebp-54]
 00663E40    lea         ecx,[ebp-40]
 00663E43    pop         eax
 00663E44    mov         esi,dword ptr [eax]
 00663E46    call        dword ptr [esi+10]
 00663E49    mov         eax,dword ptr [ebp-40]
 00663E4C    push        eax
 00663E4D    lea         edx,[ebp-58]
 00663E50    mov         eax,ebx
 00663E52    mov         ecx,dword ptr [eax]
 00663E54    call        dword ptr [ecx+1C]
 00663E57    mov         eax,dword ptr [ebp-58]
 00663E5A    pop         edx
 00663E5B    mov         ecx,dword ptr [eax]
 00663E5D    call        dword ptr [ecx+4C]
 00663E60    mov         esi,eax
>00663E62    jmp         00663E6C
 00663E64    inc         dword ptr [ebp-8]
 00663E67    dec         dword ptr [ebp-0C]
>00663E6A    jne         00663DED
 00663E6C    lea         edx,[ebp-5C]
 00663E6F    mov         eax,ebx
 00663E71    mov         ecx,dword ptr [eax]
 00663E73    call        dword ptr [ecx+1C]
 00663E76    mov         eax,dword ptr [ebp-5C]
 00663E79    mov         ecx,dword ptr [ebp-4]
 00663E7C    mov         edx,esi
 00663E7E    mov         ebx,dword ptr [eax]
 00663E80    call        dword ptr [ebx+58]
>00663E83    jmp         00663EAA
 00663E85    lea         edx,[ebp-60]
 00663E88    mov         eax,ebx
 00663E8A    mov         ecx,dword ptr [eax]
 00663E8C    call        dword ptr [ecx+1C]
 00663E8F    mov         esi,dword ptr [ebp-60]
 00663E92    lea         edx,[ebp-64]
 00663E95    mov         eax,ebx
 00663E97    call        TXMLNode.GetChildNodes
 00663E9C    cmp         esi,dword ptr [ebp-64]
>00663E9F    jne         00663EAA
 00663EA1    xor         edx,edx
 00663EA3    mov         eax,ebx
 00663EA5    call        TXMLNodeCollection.CreateItemList
 00663EAA    xor         eax,eax
 00663EAC    pop         edx
 00663EAD    pop         ecx
 00663EAE    pop         ecx
 00663EAF    mov         dword ptr fs:[eax],edx
 00663EB2    push        663F25
 00663EB7    lea         eax,[ebp-64]
 00663EBA    mov         edx,dword ptr ds:[65C930];IXMLNodeList
 00663EC0    mov         ecx,4
 00663EC5    call        @FinalizeArray
 00663ECA    lea         eax,[ebp-54]
 00663ECD    call        @VarClr
 00663ED2    lea         eax,[ebp-44]
 00663ED5    call        @IntfClear
 00663EDA    lea         eax,[ebp-40]
 00663EDD    call        @IntfClear
 00663EE2    lea         eax,[ebp-3C]
 00663EE5    call        @VarClr
 00663EEA    lea         eax,[ebp-2C]
 00663EED    call        @IntfClear
 00663EF2    lea         eax,[ebp-28]
 00663EF5    call        @IntfClear
 00663EFA    lea         eax,[ebp-24]
 00663EFD    mov         edx,dword ptr ds:[65C930];IXMLNodeList
 00663F03    mov         ecx,5
 00663F08    call        @FinalizeArray
 00663F0D    lea         eax,[ebp-10]
 00663F10    call        @IntfClear
 00663F15    lea         eax,[ebp-4]
 00663F18    call        @IntfClear
 00663F1D    ret
>00663F1E    jmp         @HandleFinally
>00663F23    jmp         00663EB7
 00663F25    pop         edi
 00663F26    pop         esi
 00663F27    pop         ebx
 00663F28    mov         esp,ebp
 00663F2A    pop         ebp
 00663F2B    ret
*}
end;

//00663F3C
procedure TXMLNodeCollection.ChildListNotify(Operation:TNodeListOperation; var Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean);
begin
{*
 00663F3C    push        ebp
 00663F3D    mov         ebp,esp
 00663F3F    push        ebx
 00663F40    push        esi
 00663F41    push        edi
 00663F42    mov         edi,ecx
 00663F44    mov         ebx,edx
 00663F46    mov         esi,eax
 00663F48    mov         eax,dword ptr [ebp+0C]
 00663F4B    push        eax
 00663F4C    movzx       eax,byte ptr [ebp+8]
 00663F50    push        eax
 00663F51    mov         ecx,edi
 00663F53    mov         edx,ebx
 00663F55    mov         eax,esi
 00663F57    call        TXMLNode.ChildListNotify
 00663F5C    mov         eax,dword ptr [ebp+0C]
 00663F5F    push        eax
 00663F60    movzx       eax,byte ptr [ebp+8]
 00663F64    push        eax
 00663F65    mov         edx,ebx
 00663F67    mov         ecx,edi
 00663F69    mov         eax,esi
 00663F6B    call        TXMLNodeCollection.UpdateCollectionList
 00663F70    pop         edi
 00663F71    pop         esi
 00663F72    pop         ebx
 00663F73    pop         ebp
 00663F74    ret         8
*}
end;

//00663F78
procedure TXMLNodeCollection.UpdateCollectionList(Operation:TNodeListOperation; var Node:XMLIntf.IXMLNode; const IndexOrName:OleVariant; BeforeOperation:Boolean);
begin
{*
 00663F78    push        ebp
 00663F79    mov         ebp,esp
 00663F7B    push        0
 00663F7D    push        0
 00663F7F    push        0
 00663F81    push        ebx
 00663F82    push        esi
 00663F83    push        edi
 00663F84    mov         esi,ecx
 00663F86    mov         ebx,eax
 00663F88    xor         eax,eax
 00663F8A    push        ebp
 00663F8B    push        664012
 00663F90    push        dword ptr fs:[eax]
 00663F93    mov         dword ptr fs:[eax],esp
 00663F96    cmp         byte ptr [ebp+8],0
>00663F9A    je          00663FA5
 00663F9C    mov         eax,ebx
 00663F9E    call        TXMLNode.CheckReadOnly
>00663FA3    jmp         00663FF1
 00663FA5    sub         dl,1
>00663FA8    jb          00663FDE
>00663FAA    jne         00663FF1
 00663FAC    lea         edx,[ebp-4]
 00663FAF    mov         eax,ebx
 00663FB1    mov         ecx,dword ptr [eax]
 00663FB3    call        dword ptr [ecx+1C]
 00663FB6    mov         edi,dword ptr [ebp-4]
 00663FB9    lea         edx,[ebp-8]
 00663FBC    mov         eax,ebx
 00663FBE    call        TXMLNode.GetChildNodes
 00663FC3    cmp         edi,dword ptr [ebp-8]
>00663FC6    je          00663FF1
 00663FC8    lea         edx,[ebp-0C]
 00663FCB    mov         eax,ebx
 00663FCD    mov         ecx,dword ptr [eax]
 00663FCF    call        dword ptr [ecx+1C]
 00663FD2    mov         eax,dword ptr [ebp-0C]
 00663FD5    mov         edx,dword ptr [esi]
 00663FD7    mov         ecx,dword ptr [eax]
 00663FD9    call        dword ptr [ecx+60]
>00663FDC    jmp         00663FF1
 00663FDE    mov         eax,dword ptr [ebp+0C]
 00663FE1    call        @VarToInteger
 00663FE6    mov         ecx,eax
 00663FE8    mov         edx,dword ptr [esi]
 00663FEA    mov         eax,ebx
 00663FEC    call        TXMLNodeCollection.InsertInCollection
 00663FF1    xor         eax,eax
 00663FF3    pop         edx
 00663FF4    pop         ecx
 00663FF5    pop         ecx
 00663FF6    mov         dword ptr fs:[eax],edx
 00663FF9    push        664019
 00663FFE    lea         eax,[ebp-0C]
 00664001    mov         edx,dword ptr ds:[65C930];IXMLNodeList
 00664007    mov         ecx,3
 0066400C    call        @FinalizeArray
 00664011    ret
>00664012    jmp         @HandleFinally
>00664017    jmp         00663FFE
 00664019    pop         edi
 0066401A    pop         esi
 0066401B    pop         ebx
 0066401C    mov         esp,ebp
 0066401E    pop         ebp
 0066401F    ret         8
*}
end;

//00664024
function TXMLNodeCollection.AddItem(Index:Integer):IXMLNode;
begin
{*
 00664024    push        ebp
 00664025    mov         ebp,esp
 00664027    push        0
 00664029    push        ebx
 0066402A    push        esi
 0066402B    push        edi
 0066402C    mov         edi,ecx
 0066402E    mov         esi,edx
 00664030    mov         ebx,eax
 00664032    xor         eax,eax
 00664034    push        ebp
 00664035    push        664082
 0066403A    push        dword ptr fs:[eax]
 0066403D    mov         dword ptr fs:[eax],esp
 00664040    cmp         dword ptr [ebx+64],0
>00664044    jne         0066405B
 00664046    lea         edx,[ebp-4]
 00664049    mov         eax,[007C4340];^SResString380:TResStringRec
 0066404E    call        LoadResString
 00664053    mov         eax,dword ptr [ebp-4]
 00664056    call        XMLDocError
 0066405B    push        0
 0066405D    push        esi
 0066405E    push        edi
 0066405F    mov         ecx,dword ptr [ebx+60]
 00664062    mov         edx,dword ptr [ebx+64]
 00664065    mov         eax,ebx
 00664067    call        TXMLNode.AddChild
 0066406C    xor         eax,eax
 0066406E    pop         edx
 0066406F    pop         ecx
 00664070    pop         ecx
 00664071    mov         dword ptr fs:[eax],edx
 00664074    push        664089
 00664079    lea         eax,[ebp-4]
 0066407C    call        @UStrClr
 00664081    ret
>00664082    jmp         @HandleFinally
>00664087    jmp         00664079
 00664089    pop         edi
 0066408A    pop         esi
 0066408B    pop         ebx
 0066408C    pop         ecx
 0066408D    pop         ebp
 0066408E    ret
*}
end;

//00664090
procedure TXMLNodeCollection.Delete(Index:Integer);
begin
{*
 00664090    push        ebp
 00664091    mov         ebp,esp
 00664093    xor         ecx,ecx
 00664095    push        ecx
 00664096    push        ecx
 00664097    push        ecx
 00664098    push        ecx
 00664099    push        ecx
 0066409A    push        ecx
 0066409B    push        ecx
 0066409C    push        ebx
 0066409D    push        esi
 0066409E    mov         esi,edx
 006640A0    mov         ebx,eax
 006640A2    xor         eax,eax
 006640A4    push        ebp
 006640A5    push        664121
 006640AA    push        dword ptr fs:[eax]
 006640AD    mov         dword ptr fs:[eax],esp
 006640B0    lea         edx,[ebp-0C]
 006640B3    mov         eax,ebx
 006640B5    mov         ecx,dword ptr [eax]
 006640B7    call        dword ptr [ecx+1C]
 006640BA    mov         eax,dword ptr [ebp-0C]
 006640BD    push        eax
 006640BE    lea         eax,[ebp-1C]
 006640C1    mov         edx,esi
 006640C3    mov         cl,0FC
 006640C5    call        @OleVarFromInt
 006640CA    lea         edx,[ebp-1C]
 006640CD    lea         ecx,[ebp-8]
 006640D0    pop         eax
 006640D1    mov         esi,dword ptr [eax]
 006640D3    call        dword ptr [esi+10]
 006640D6    mov         edx,dword ptr [ebp-8]
 006640D9    lea         eax,[ebp-4]
 006640DC    mov         ecx,664130
 006640E1    call        @IntfCast
 006640E6    mov         edx,dword ptr [ebp-4]
 006640E9    mov         eax,ebx
 006640EB    call        TXMLNodeCollection.Remove
 006640F0    xor         eax,eax
 006640F2    pop         edx
 006640F3    pop         ecx
 006640F4    pop         ecx
 006640F5    mov         dword ptr fs:[eax],edx
 006640F8    push        664128
 006640FD    lea         eax,[ebp-1C]
 00664100    call        @VarClr
 00664105    lea         eax,[ebp-0C]
 00664108    call        @IntfClear
 0066410D    lea         eax,[ebp-8]
 00664110    mov         edx,dword ptr ds:[65C8F8];IXMLNode
 00664116    mov         ecx,2
 0066411B    call        @FinalizeArray
 00664120    ret
>00664121    jmp         @HandleFinally
>00664126    jmp         006640FD
 00664128    pop         esi
 00664129    pop         ebx
 0066412A    mov         esp,ebp
 0066412C    pop         ebp
 0066412D    ret
*}
end;

//00664140
function TXMLNodeCollection.Remove(const AItem:XMLIntf.IXMLNode):Integer;
begin
{*
 00664140    push        ebp
 00664141    mov         ebp,esp
 00664143    push        0
 00664145    push        0
 00664147    push        ebx
 00664148    push        esi
 00664149    push        edi
 0066414A    mov         esi,edx
 0066414C    mov         ebx,eax
 0066414E    xor         eax,eax
 00664150    push        ebp
 00664151    push        6641A7
 00664156    push        dword ptr fs:[eax]
 00664159    mov         dword ptr fs:[eax],esp
 0066415C    lea         edx,[ebp-4]
 0066415F    mov         eax,ebx
 00664161    mov         ecx,dword ptr [eax]
 00664163    call        dword ptr [ecx+1C]
 00664166    mov         eax,dword ptr [ebp-4]
 00664169    mov         edx,esi
 0066416B    mov         ecx,dword ptr [eax]
 0066416D    call        dword ptr [ecx+4C]
 00664170    mov         edi,eax
 00664172    lea         edx,[ebp-8]
 00664175    mov         eax,ebx
 00664177    call        TXMLNode.GetChildNodes
 0066417C    mov         eax,dword ptr [ebp-8]
 0066417F    mov         edx,esi
 00664181    mov         ecx,dword ptr [eax]
 00664183    call        dword ptr [ecx+60]
 00664186    xor         eax,eax
 00664188    pop         edx
 00664189    pop         ecx
 0066418A    pop         ecx
 0066418B    mov         dword ptr fs:[eax],edx
 0066418E    push        6641AE
 00664193    lea         eax,[ebp-8]
 00664196    mov         edx,dword ptr ds:[65C930];IXMLNodeList
 0066419C    mov         ecx,2
 006641A1    call        @FinalizeArray
 006641A6    ret
>006641A7    jmp         @HandleFinally
>006641AC    jmp         00664193
 006641AE    mov         eax,edi
 006641B0    pop         edi
 006641B1    pop         esi
 006641B2    pop         ebx
 006641B3    pop         ecx
 006641B4    pop         ecx
 006641B5    pop         ebp
 006641B6    ret
*}
end;

//006641B8
procedure TXMLNodeCollection.Clear;
begin
{*
 006641B8    push        ebp
 006641B9    mov         ebp,esp
 006641BB    push        0
 006641BD    push        0
 006641BF    push        ebx
 006641C0    mov         ebx,eax
 006641C2    xor         eax,eax
 006641C4    push        ebp
 006641C5    push        66421C
 006641CA    push        dword ptr fs:[eax]
 006641CD    mov         dword ptr fs:[eax],esp
>006641D0    jmp         006641E8
 006641D2    lea         ecx,[ebp-4]
 006641D5    xor         edx,edx
 006641D7    mov         eax,ebx
 006641D9    call        TXMLNodeCollection.GetNode
 006641DE    mov         edx,dword ptr [ebp-4]
 006641E1    mov         eax,ebx
 006641E3    call        TXMLNodeCollection.Remove
 006641E8    lea         edx,[ebp-8]
 006641EB    mov         eax,ebx
 006641ED    mov         ecx,dword ptr [eax]
 006641EF    call        dword ptr [ecx+1C]
 006641F2    mov         eax,dword ptr [ebp-8]
 006641F5    mov         edx,dword ptr [eax]
 006641F7    call        dword ptr [edx+0C]
 006641FA    test        eax,eax
>006641FC    jg          006641D2
 006641FE    xor         eax,eax
 00664200    pop         edx
 00664201    pop         ecx
 00664202    pop         ecx
 00664203    mov         dword ptr fs:[eax],edx
 00664206    push        664223
 0066420B    lea         eax,[ebp-8]
 0066420E    call        @IntfClear
 00664213    lea         eax,[ebp-4]
 00664216    call        @IntfClear
 0066421B    ret
>0066421C    jmp         @HandleFinally
>00664221    jmp         0066420B
 00664223    pop         ebx
 00664224    pop         ecx
 00664225    pop         ecx
 00664226    pop         ebp
 00664227    ret
*}
end;

//00664228
function TXMLNodeCollection.GetCount:Integer;
begin
{*
 00664228    push        ebp
 00664229    mov         ebp,esp
 0066422B    push        0
 0066422D    push        ebx
 0066422E    mov         ebx,eax
 00664230    xor         eax,eax
 00664232    push        ebp
 00664233    push        664268
 00664238    push        dword ptr fs:[eax]
 0066423B    mov         dword ptr fs:[eax],esp
 0066423E    lea         edx,[ebp-4]
 00664241    mov         eax,ebx
 00664243    mov         ecx,dword ptr [eax]
 00664245    call        dword ptr [ecx+1C]
 00664248    mov         eax,dword ptr [ebp-4]
 0066424B    mov         edx,dword ptr [eax]
 0066424D    call        dword ptr [edx+0C]
 00664250    mov         ebx,eax
 00664252    xor         eax,eax
 00664254    pop         edx
 00664255    pop         ecx
 00664256    pop         ecx
 00664257    mov         dword ptr fs:[eax],edx
 0066425A    push        66426F
 0066425F    lea         eax,[ebp-4]
 00664262    call        @IntfClear
 00664267    ret
>00664268    jmp         @HandleFinally
>0066426D    jmp         0066425F
 0066426F    mov         eax,ebx
 00664271    pop         ebx
 00664272    pop         ecx
 00664273    pop         ebp
 00664274    ret
*}
end;

//00664278
function TXMLNodeCollection.GetNode(Index:Integer):IXMLNode;
begin
{*
 00664278    push        ebp
 00664279    mov         ebp,esp
 0066427B    push        0
 0066427D    push        0
 0066427F    push        0
 00664281    push        0
 00664283    push        0
 00664285    push        0
 00664287    push        0
 00664289    push        ebx
 0066428A    push        esi
 0066428B    mov         dword ptr [ebp-4],ecx
 0066428E    mov         esi,edx
 00664290    mov         ebx,eax
 00664292    xor         eax,eax
 00664294    push        ebp
 00664295    push        6642FC
 0066429A    push        dword ptr fs:[eax]
 0066429D    mov         dword ptr fs:[eax],esp
 006642A0    lea         edx,[ebp-0C]
 006642A3    mov         eax,ebx
 006642A5    mov         ecx,dword ptr [eax]
 006642A7    call        dword ptr [ecx+1C]
 006642AA    mov         eax,dword ptr [ebp-0C]
 006642AD    push        eax
 006642AE    lea         eax,[ebp-1C]
 006642B1    mov         edx,esi
 006642B3    mov         cl,0FC
 006642B5    call        @OleVarFromInt
 006642BA    lea         edx,[ebp-1C]
 006642BD    lea         ecx,[ebp-8]
 006642C0    pop         eax
 006642C1    mov         ebx,dword ptr [eax]
 006642C3    call        dword ptr [ebx+10]
 006642C6    mov         edx,dword ptr [ebp-8]
 006642C9    mov         eax,dword ptr [ebp-4]
 006642CC    mov         ecx,66430C
 006642D1    call        @IntfCast
 006642D6    xor         eax,eax
 006642D8    pop         edx
 006642D9    pop         ecx
 006642DA    pop         ecx
 006642DB    mov         dword ptr fs:[eax],edx
 006642DE    push        664303
 006642E3    lea         eax,[ebp-1C]
 006642E6    call        @VarClr
 006642EB    lea         eax,[ebp-0C]
 006642EE    call        @IntfClear
 006642F3    lea         eax,[ebp-8]
 006642F6    call        @IntfClear
 006642FB    ret
>006642FC    jmp         @HandleFinally
>00664301    jmp         006642E3
 00664303    pop         esi
 00664304    pop         ebx
 00664305    mov         esp,ebp
 00664307    pop         ebp
 00664308    ret
*}
end;

//0066431C
constructor TXMLDocument.Create;
begin
{*
 0066431C    push        ebx
 0066431D    push        esi
 0066431E    test        dl,dl
>00664320    je          0066432A
 00664322    add         esp,0FFFFFFF0
 00664325    call        @ClassCreate
 0066432A    mov         ebx,edx
 0066432C    mov         esi,eax
 0066432E    xor         edx,edx
 00664330    mov         eax,esi
 00664332    call        TComponent.Create
 00664337    mov         eax,esi
 00664339    test        bl,bl
>0066433B    je          0066434C
 0066433D    call        @AfterConstruction
 00664342    pop         dword ptr fs:[0]
 00664349    add         esp,0C
 0066434C    mov         eax,esi
 0066434E    pop         esi
 0066434F    pop         ebx
 00664350    ret
*}
end;

//00664354
destructor TXMLDocument.Destroy();
begin
{*
 00664354    push        ebp
 00664355    mov         ebp,esp
 00664357    add         esp,0FFFFFFF8
 0066435A    push        ebx
 0066435B    push        esi
 0066435C    xor         ecx,ecx
 0066435E    mov         dword ptr [ebp-8],ecx
 00664361    call        @BeforeDestruction
 00664366    mov         ebx,edx
 00664368    mov         esi,eax
 0066436A    xor         eax,eax
 0066436C    push        ebp
 0066436D    push        6643FB
 00664372    push        dword ptr fs:[eax]
 00664375    mov         dword ptr fs:[eax],esp
 00664378    mov         eax,esi
 0066437A    call        TComponent.Destroying
 0066437F    cmp         byte ptr [esi+0B8],0;TXMLDocument.FOwnerIsComponent:Boolean
>00664386    je          006643BA
 00664388    mov         eax,esi
 0066438A    mov         edx,dword ptr [eax]
 0066438C    call        dword ptr [edx+44];TXMLDocument.GetActive
 0066438F    test        al,al
>00664391    je          006643BA
 00664393    cmp         dword ptr [esi+6C],0;TXMLDocument.FDocumentNode:IXMLNode
>00664397    je          006643BA
 00664399    cmp         dword ptr [esi+50],1;TXMLDocument.FRefCount:Integer
>0066439D    jle         006643BA
 0066439F    lea         eax,[ebp-8]
 006643A2    mov         edx,dword ptr [esi+6C];TXMLDocument.FDocumentNode:IXMLNode
 006643A5    mov         ecx,664414;['{6C819037-AB66-4AA8-B2A5-958EDA8627B7}']
 006643AA    call        @IntfCast
 006643AF    mov         eax,dword ptr [ebp-8]
 006643B2    mov         edx,dword ptr [eax]
 006643B4    call        dword ptr [edx+0B4]
 006643BA    xor         edx,edx
 006643BC    mov         eax,esi
 006643BE    mov         ecx,dword ptr [eax]
 006643C0    call        dword ptr [ecx+48];TXMLDocument.SetActive
 006643C3    lea         eax,[esi+48];TXMLDocument.FXMLStrings:TStringList
 006643C6    mov         dword ptr [ebp-4],eax
 006643C9    mov         eax,dword ptr [ebp-4]
 006643CC    mov         eax,dword ptr [eax]
 006643CE    mov         edx,dword ptr [ebp-4]
 006643D1    xor         ecx,ecx
 006643D3    mov         dword ptr [edx],ecx
 006643D5    call        TObject.Free
 006643DA    mov         dl,0FC
 006643DC    and         dl,bl
 006643DE    mov         eax,esi
 006643E0    call        TComponent.Destroy
 006643E5    xor         eax,eax
 006643E7    pop         edx
 006643E8    pop         ecx
 006643E9    pop         ecx
 006643EA    mov         dword ptr fs:[eax],edx
 006643ED    push        664402
 006643F2    lea         eax,[ebp-8]
 006643F5    call        @IntfClear
 006643FA    ret
>006643FB    jmp         @HandleFinally
>00664400    jmp         006643F2
 00664402    test        bl,bl
>00664404    jle         0066440D
 00664406    mov         eax,esi
 00664408    call        @ClassDestroy
 0066440D    pop         esi
 0066440E    pop         ebx
 0066440F    pop         ecx
 00664410    pop         ecx
 00664411    pop         ebp
 00664412    ret
*}
end;

//00664424
function TXMLDocument.NewInstance:TObject;
begin
{*
 00664424    call        TObject.NewInstance
 00664429    mov         dword ptr [eax+50],1
 00664430    ret
*}
end;

//00664434
procedure TXMLDocument.AfterConstruction;
begin
{*
 00664434    push        ebx
 00664435    push        esi
 00664436    push        ecx
 00664437    mov         ebx,eax
 00664439    mov         eax,ebx
 0066443B    call        TObject.AfterConstruction
 00664440    movzx       eax,byte ptr ds:[6644BC]
 00664447    mov         byte ptr [ebx+74],al
 0066444A    lea         eax,[ebx+7C]
 0066444D    mov         edx,6644CC;'NS'
 00664452    call        @UStrAsg
 00664457    mov         edx,dword ptr ds:[7C0F50];^'  '
 0066445D    mov         eax,ebx
 0066445F    call        TXMLDocument.SetNodeIndentStr
 00664464    mov         eax,dword ptr [ebx+4]
 00664467    test        eax,eax
>00664469    je          0066446F
 0066446B    test        eax,eax
>0066446D    jne         00664473
 0066446F    xor         eax,eax
>00664471    jmp         00664475
 00664473    mov         al,1;{@UStrAsg}
 00664475    mov         byte ptr [ebx+0B8],al;{DefaultNodeIndent}
 0066447B    mov         dl,1
 0066447D    mov         eax,[0046F9A0];TStringList{TXMLDocument.SetNodeIndentStr}
 00664482    call        TStringList.Create
 00664487    mov         esi,eax
 00664489    mov         dword ptr [ebx+48],esi
 0066448C    mov         dword ptr [esi+4C],ebx
 0066448F    mov         dword ptr [esi+48],664FE4;sub_00664FE4
 00664496    cmp         dword ptr [ebx+70],0
>0066449A    je          006644A5
 0066449C    mov         dl,1
 0066449E    mov         eax,ebx
 006644A0    mov         ecx,dword ptr [eax]
 006644A2    call        dword ptr [ecx+48]
 006644A5    lea         eax,[ebx+50]
 006644A8    mov         dword ptr [esp],eax
 006644AB    mov         eax,dword ptr [esp]
 006644AE    or          edx,0FFFFFFFF
 006644B1    call        TInterlocked.Add
 006644B6    pop         edx
 006644B7    pop         esi
 006644B8    pop         ebx
 006644B9    ret
*}
end;

//006644D4
function TXMLDocument._AddRef:Integer; stdcall;
begin
{*
 006644D4    push        ebp
 006644D5    mov         ebp,esp
 006644D7    push        ecx
 006644D8    mov         eax,dword ptr [ebp+8]
 006644DB    add         eax,50
 006644DE    mov         dword ptr [ebp-4],eax
 006644E1    mov         eax,dword ptr [ebp-4]
 006644E4    mov         edx,1
 006644E9    call        TInterlocked.Add
 006644EE    pop         ecx
 006644EF    pop         ebp
 006644F0    ret         4
*}
end;

//006644F4
function TXMLDocument._Release:Integer; stdcall;
begin
{*
 006644F4    push        ebp
 006644F5    mov         ebp,esp
 006644F7    push        ecx
 006644F8    push        esi
 006644F9    push        edi
 006644FA    mov         esi,dword ptr [ebp+8]
 006644FD    lea         eax,[esi+50]
 00664500    mov         dword ptr [ebp-4],eax
 00664503    mov         eax,dword ptr [ebp-4]
 00664506    or          edx,0FFFFFFFF
 00664509    call        TInterlocked.Add
 0066450E    mov         edi,eax
 00664510    test        edi,edi
>00664512    jne         0066452A
 00664514    cmp         byte ptr [esi+0B8],0
>0066451B    jne         0066452A
 0066451D    test        edi,edi
>0066451F    jne         0066452A
 00664521    mov         dl,1
 00664523    mov         eax,esi
 00664525    mov         ecx,dword ptr [eax]
 00664527    call        dword ptr [ecx-4]
 0066452A    mov         eax,edi
 0066452C    pop         edi
 0066452D    pop         esi
 0066452E    pop         ecx
 0066452F    pop         ebp
 00664530    ret         4
*}
end;

//00664534
procedure TXMLDocument.Loaded;
begin
{*
 00664534    push        ebp
 00664535    mov         ebp,esp
 00664537    push        ecx
 00664538    push        ebx
 00664539    push        esi
 0066453A    push        edi
 0066453B    mov         dword ptr [ebp-4],eax
 0066453E    mov         eax,dword ptr [ebp-4]
 00664541    call        TComponent.Loaded
 00664546    xor         eax,eax
 00664548    push        ebp
 00664549    push        664574
 0066454E    push        dword ptr fs:[eax]
 00664551    mov         dword ptr fs:[eax],esp
 00664554    mov         eax,dword ptr [ebp-4]
 00664557    cmp         byte ptr [eax+84],0;TXMLDocument.FStreamedActive:Boolean
>0066455E    je          0066456A
 00664560    mov         dl,1
 00664562    mov         eax,dword ptr [ebp-4]
 00664565    mov         ecx,dword ptr [eax]
 00664567    call        dword ptr [ecx+48];TXMLDocument.SetActive
 0066456A    xor         eax,eax
 0066456C    pop         edx
 0066456D    pop         ecx
 0066456E    pop         ecx
 0066456F    mov         dword ptr fs:[eax],edx
>00664572    jmp         006645BF
>00664574    jmp         @HandleAnyException
 00664579    mov         eax,dword ptr [ebp-4]
 0066457C    test        byte ptr [eax+1C],10;TXMLDocument.FComponentState:TComponentState
>00664580    je          006645B5
 00664582    mov         eax,[007C4840];^gvar_007A05E0
 00664587    cmp         word ptr [eax+2],0
>0066458C    je          006645A2
 0066458E    call        ExceptObject
 00664593    mov         edx,eax
 00664595    mov         ebx,dword ptr ds:[7C4840];^gvar_007A05E0
 0066459B    mov         eax,dword ptr [ebx+4]
 0066459E    call        dword ptr [ebx]
>006645A0    jmp         006645BA
 006645A2    call        ExceptAddr
 006645A7    push        eax
 006645A8    call        ExceptObject
 006645AD    pop         edx
 006645AE    call        ShowException
>006645B3    jmp         006645BA
 006645B5    call        @RaiseAgain
 006645BA    call        @DoneExcept
 006645BF    pop         edi
 006645C0    pop         esi
 006645C1    pop         ebx
 006645C2    pop         ecx
 006645C3    pop         ebp
 006645C4    ret
*}
end;

//006645C8
procedure TXMLDocument.ReadDOMVendor(Reader:Classes.TReader);
begin
{*
 006645C8    push        ebp
 006645C9    mov         ebp,esp
 006645CB    add         esp,0FFFFFFF8
 006645CE    push        ebx
 006645CF    push        esi
 006645D0    push        edi
 006645D1    xor         ecx,ecx
 006645D3    mov         dword ptr [ebp-4],ecx
 006645D6    mov         ebx,edx
 006645D8    mov         dword ptr [ebp-8],eax
 006645DB    xor         eax,eax
 006645DD    push        ebp
 006645DE    push        664684
 006645E3    push        dword ptr fs:[eax]
 006645E6    mov         dword ptr fs:[eax],esp
 006645E9    lea         edx,[ebp-4]
 006645EC    mov         eax,ebx
 006645EE    call        TReader.ReadString
 006645F3    cmp         dword ptr [ebp-4],0
>006645F7    je          0066466E
 006645F9    xor         eax,eax
 006645FB    push        ebp
 006645FC    push        664623
 00664601    push        dword ptr fs:[eax]
 00664604    mov         dword ptr fs:[eax],esp
 00664607    mov         eax,dword ptr [ebp-4]
 0066460A    call        GetDOMVendor
 0066460F    mov         edx,eax
 00664611    mov         eax,dword ptr [ebp-8]
 00664614    call        TXMLDocument.SetDOMVendor
 00664619    xor         eax,eax
 0066461B    pop         edx
 0066461C    pop         ecx
 0066461D    pop         ecx
 0066461E    mov         dword ptr fs:[eax],edx
>00664621    jmp         0066466E
>00664623    jmp         @HandleAnyException
 00664628    mov         eax,dword ptr [ebp-8]
 0066462B    test        byte ptr [eax+1C],10
>0066462F    je          00664664
 00664631    mov         eax,[007C4840];^gvar_007A05E0
 00664636    cmp         word ptr [eax+2],0
>0066463B    je          00664651
 0066463D    call        ExceptObject
 00664642    mov         edx,eax
 00664644    mov         ebx,dword ptr ds:[7C4840];^gvar_007A05E0
 0066464A    mov         eax,dword ptr [ebx+4]
 0066464D    call        dword ptr [ebx]
>0066464F    jmp         00664669
 00664651    call        ExceptAddr
 00664656    push        eax
 00664657    call        ExceptObject
 0066465C    pop         edx
 0066465D    call        ShowException
>00664662    jmp         00664669
 00664664    call        @RaiseAgain
 00664669    call        @DoneExcept
 0066466E    xor         eax,eax
 00664670    pop         edx
 00664671    pop         ecx
 00664672    pop         ecx
 00664673    mov         dword ptr fs:[eax],edx
 00664676    push        66468B
 0066467B    lea         eax,[ebp-4]
 0066467E    call        @UStrClr
 00664683    ret
>00664684    jmp         @HandleFinally
>00664689    jmp         0066467B
 0066468B    pop         edi
 0066468C    pop         esi
 0066468D    pop         ebx
 0066468E    pop         ecx
 0066468F    pop         ecx
 00664690    pop         ebp
 00664691    ret
*}
end;

//00664694
procedure TXMLDocument.WriteDOMVendor(Writer:Classes.TWriter);
begin
{*
 00664694    push        ebp
 00664695    mov         ebp,esp
 00664697    push        0
 00664699    push        ebx
 0066469A    push        esi
 0066469B    push        edi
 0066469C    mov         edi,edx
 0066469E    mov         ebx,eax
 006646A0    xor         eax,eax
 006646A2    push        ebp
 006646A3    push        6646DE
 006646A8    push        dword ptr fs:[eax]
 006646AB    mov         dword ptr fs:[eax],esp
 006646AE    mov         esi,dword ptr [ebx+4C]
 006646B1    test        esi,esi
>006646B3    je          006646C8
 006646B5    lea         edx,[ebp-4]
 006646B8    mov         eax,esi
 006646BA    mov         ecx,dword ptr [eax]
 006646BC    call        dword ptr [ecx]
 006646BE    mov         edx,dword ptr [ebp-4]
 006646C1    mov         eax,edi
 006646C3    call        TWriter.WriteString
 006646C8    xor         eax,eax
 006646CA    pop         edx
 006646CB    pop         ecx
 006646CC    pop         ecx
 006646CD    mov         dword ptr fs:[eax],edx
 006646D0    push        6646E5
 006646D5    lea         eax,[ebp-4]
 006646D8    call        @UStrClr
 006646DD    ret
>006646DE    jmp         @HandleFinally
>006646E3    jmp         006646D5
 006646E5    pop         edi
 006646E6    pop         esi
 006646E7    pop         ebx
 006646E8    pop         ecx
 006646E9    pop         ebp
 006646EA    ret
*}
end;

//006646EC
function DOMVendorStored:Boolean;
begin
{*
 006646EC    push        ebp
 006646ED    mov         ebp,esp
 006646EF    mov         eax,dword ptr [ebp+8]
 006646F2    mov         eax,dword ptr [eax-4]
 006646F5    mov         eax,dword ptr [eax+20]
 006646F8    test        eax,eax
>006646FA    je          0066470D
 006646FC    mov         edx,dword ptr [ebp+8]
 006646FF    mov         edx,dword ptr [edx-8]
 00664702    mov         edx,dword ptr [edx+4C]
 00664705    cmp         edx,dword ptr [eax+4C]
 00664708    setne       al
 0066470B    pop         ebp
 0066470C    ret
 0066470D    mov         eax,dword ptr [ebp+8]
 00664710    mov         eax,dword ptr [eax-8]
 00664713    cmp         dword ptr [eax+4C],0
 00664717    setne       al
 0066471A    pop         ebp
 0066471B    ret
*}
end;

//0066471C
procedure TXMLDocument.DefineProperties(Filer:Classes.TFiler);
begin
{*
 0066471C    push        ebp
 0066471D    mov         ebp,esp
 0066471F    add         esp,0FFFFFFF8
 00664722    push        ebx
 00664723    mov         dword ptr [ebp-4],edx
 00664726    mov         dword ptr [ebp-8],eax
 00664729    mov         edx,dword ptr [ebp-4]
 0066472C    mov         eax,dword ptr [ebp-8]
 0066472F    call        TComponent.DefineProperties
 00664734    mov         eax,dword ptr [ebp-8]
 00664737    push        eax
 00664738    push        6645C8;TXMLDocument.ReadDOMVendor
 0066473D    mov         eax,dword ptr [ebp-8]
 00664740    push        eax
 00664741    push        664694;TXMLDocument.WriteDOMVendor
 00664746    push        ebp
 00664747    call        DOMVendorStored
 0066474C    pop         ecx
 0066474D    mov         ecx,eax
 0066474F    mov         edx,664770;'DOMVendorDesc'
 00664754    mov         eax,dword ptr [ebp-4]
 00664757    mov         ebx,dword ptr [eax]
 00664759    call        dword ptr [ebx+4]
 0066475C    pop         ebx
 0066475D    pop         ecx
 0066475E    pop         ecx
 0066475F    pop         ebp
 00664760    ret
*}
end;

//0066478C
function TXMLDocument.IsStoredXML(Value:TStrings):Boolean;
begin
{*
 0066478C    push        ebx
 0066478D    mov         ebx,eax
 0066478F    mov         eax,ebx
 00664791    mov         edx,dword ptr [eax]
 00664793    call        dword ptr [edx+44];TXMLDocument.GetActive
 00664796    test        al,al
>00664798    je          006647A3
 0066479A    cmp         byte ptr [ebx+90],1;TXMLDocument.FDocSource:TXMLDocumentSource
>006647A1    je          006647BE
 006647A3    mov         eax,ebx
 006647A5    mov         edx,dword ptr [eax]
 006647A7    call        dword ptr [edx+44];TXMLDocument.GetActive
 006647AA    test        al,al
>006647AC    jne         006647BA
 006647AE    mov         eax,dword ptr [ebx+48];TXMLDocument.FXMLStrings:TStringList
 006647B1    mov         edx,dword ptr [eax]
 006647B3    call        dword ptr [edx+14];TStringList.GetCount
 006647B6    test        eax,eax
>006647B8    jg          006647BE
 006647BA    xor         eax,eax
 006647BC    pop         ebx
 006647BD    ret
 006647BE    mov         al,1
 006647C0    pop         ebx
 006647C1    ret
*}
end;

//006647C4
function TXMLDocument.NodeIndentStored(Value:string):Boolean;
begin
{*
 006647C4    push        ebp
 006647C5    mov         ebp,esp
 006647C7    push        0
 006647C9    push        ebx
 006647CA    mov         ebx,eax
 006647CC    xor         eax,eax
 006647CE    push        ebp
 006647CF    push        66480D
 006647D4    push        dword ptr fs:[eax]
 006647D7    mov         dword ptr fs:[eax],esp
 006647DA    lea         edx,[ebp-4]
 006647DD    mov         eax,ebx
 006647DF    call        TXMLDocument.GetNodeIndentStr
 006647E4    mov         eax,dword ptr [ebp-4]
 006647E7    mov         edx,dword ptr ds:[7C0F50];^'  '
 006647ED    call        @UStrEqual
 006647F2    setne       al
 006647F5    mov         ebx,eax
 006647F7    xor         eax,eax
 006647F9    pop         edx
 006647FA    pop         ecx
 006647FB    pop         ecx
 006647FC    mov         dword ptr fs:[eax],edx
 006647FF    push        664814
 00664804    lea         eax,[ebp-4]
 00664807    call        @UStrClr
 0066480C    ret
>0066480D    jmp         @HandleFinally
>00664812    jmp         00664804
 00664814    mov         eax,ebx
 00664816    pop         ebx
 00664817    pop         ecx
 00664818    pop         ebp
 00664819    ret
*}
end;

//0066481C
function TXMLDocument.GetActive:Boolean;
begin
{*
 0066481C    cmp         dword ptr [eax+5C],0;TXMLDocument.FDOMDocument:IDOMDocument
 00664820    setne       al
 00664823    ret
*}
end;

//00664824
procedure TXMLDocument.SetActive(Value:Boolean);
begin
{*
 00664824    push        ebp
 00664825    mov         ebp,esp
 00664827    add         esp,0FFFFFFF8
 0066482A    push        ebx
 0066482B    push        esi
 0066482C    push        edi
 0066482D    xor         ecx,ecx
 0066482F    mov         dword ptr [ebp-8],ecx
 00664832    mov         ebx,edx
 00664834    mov         dword ptr [ebp-4],eax
 00664837    xor         eax,eax
 00664839    push        ebp
 0066483A    push        664945
 0066483F    push        dword ptr fs:[eax]
 00664842    mov         dword ptr fs:[eax],esp
 00664845    mov         eax,dword ptr [ebp-4]
 00664848    test        byte ptr [eax+1C],2;TXMLDocument.FComponentState:TComponentState
>0066484C    je          0066485C
 0066484E    mov         eax,dword ptr [ebp-4]
 00664851    mov         byte ptr [eax+84],bl;TXMLDocument.FStreamedActive:Boolean
>00664857    jmp         0066492F
 0066485C    mov         eax,dword ptr [ebp-4]
 0066485F    mov         edx,dword ptr [eax]
 00664861    call        dword ptr [edx+44];TXMLDocument.GetActive
 00664864    cmp         bl,al
>00664866    je          0066492F
 0066486C    test        bl,bl
>0066486E    je          00664909
 00664874    mov         eax,dword ptr [ebp-4]
 00664877    mov         si,0FFEA
 0066487B    call        @CallDynaInst;TXMLDocument.DoBeforeClose
 00664880    mov         eax,dword ptr [ebp-4]
 00664883    mov         si,0FFEE
 00664887    call        @CallDynaInst;TXMLDocument.sub_00665684
 0066488C    lea         eax,[ebp-8]
 0066488F    call        @IntfClear
 00664894    push        eax
 00664895    push        0
 00664897    push        0
 00664899    push        0
 0066489B    mov         eax,dword ptr [ebp-4]
 0066489E    mov         eax,dword ptr [eax+60];TXMLDocument.FDOMImplementation:IDOMImplementation
 006648A1    push        eax
 006648A2    mov         eax,dword ptr [eax]
 006648A4    call        dword ptr [eax+14]
 006648A7    call        @CheckAutoResult
 006648AC    mov         edx,dword ptr [ebp-8]
 006648AF    mov         eax,dword ptr [ebp-4]
 006648B2    add         eax,5C;TXMLDocument.FDOMDocument:IDOMDocument
 006648B5    call        @IntfCopy
 006648BA    xor         eax,eax
 006648BC    push        ebp
 006648BD    push        6648DE
 006648C2    push        dword ptr fs:[eax]
 006648C5    mov         dword ptr fs:[eax],esp
 006648C8    mov         eax,dword ptr [ebp-4]
 006648CB    mov         si,0FFE9
 006648CF    call        @CallDynaInst;TXMLDocument.sub_006649A4
 006648D4    xor         eax,eax
 006648D6    pop         edx
 006648D7    pop         ecx
 006648D8    pop         ecx
 006648D9    mov         dword ptr fs:[eax],edx
>006648DC    jmp         006648FB
>006648DE    jmp         @HandleAnyException
 006648E3    xor         edx,edx
 006648E5    mov         eax,dword ptr [ebp-4]
 006648E8    mov         si,0FFE8
 006648EC    call        @CallDynaInst;TXMLDocument.sub_00664D14
 006648F1    call        @RaiseAgain
 006648F6    call        @DoneExcept
 006648FB    mov         eax,dword ptr [ebp-4]
 006648FE    mov         si,0FFEC
 00664902    call        @CallDynaInst;TXMLDocument.sub_00666F04
>00664907    jmp         0066492F
 00664909    mov         eax,dword ptr [ebp-4]
 0066490C    mov         si,0FFEB
 00664910    call        @CallDynaInst;TXMLDocument.DoAfterOpen
 00664915    mov         dl,1
 00664917    mov         eax,dword ptr [ebp-4]
 0066491A    mov         si,0FFE8
 0066491E    call        @CallDynaInst;TXMLDocument.sub_00664D14
 00664923    mov         eax,dword ptr [ebp-4]
 00664926    mov         si,0FFED
 0066492A    call        @CallDynaInst;TXMLDocument.DoBeforeOpen
 0066492F    xor         eax,eax
 00664931    pop         edx
 00664932    pop         ecx
 00664933    pop         ecx
 00664934    mov         dword ptr fs:[eax],edx
 00664937    push        66494C
 0066493C    lea         eax,[ebp-8]
 0066493F    call        @IntfClear
 00664944    ret
>00664945    jmp         @HandleFinally
>0066494A    jmp         0066493C
 0066494C    pop         edi
 0066494D    pop         esi
 0066494E    pop         ebx
 0066494F    pop         ecx
 00664950    pop         ecx
 00664951    pop         ebp
 00664952    ret
*}
end;

//006649A4
procedure TXMLDocument.sub_006649A4;
begin
{*
 006649A4    push        ebp
 006649A5    mov         ebp,esp
 006649A7    mov         ecx,10
 006649AC    push        0
 006649AE    push        0
 006649B0    dec         ecx
>006649B1    jne         006649AC
 006649B3    push        ebx
 006649B4    push        esi
 006649B5    push        edi
 006649B6    mov         esi,eax
 006649B8    xor         eax,eax
 006649BA    push        ebp
 006649BB    push        664CBA
 006649C0    push        dword ptr fs:[eax]
 006649C3    mov         dword ptr fs:[eax],esp
 006649C6    mov         byte ptr [esi+90],0;TXMLDocument.FDocSource:TXMLDocumentSource
 006649CD    mov         dword ptr [esi+8C],0FFFFFFFF;TXMLDocument.FXMLStrRead:Integer
 006649D7    mov         eax,esi
 006649D9    call        0066586C
 006649DE    mov         eax,dword ptr [esi+48];TXMLDocument.FXMLStrings:TStringList
 006649E1    mov         edx,dword ptr [eax]
 006649E3    call        dword ptr [edx+14];TStringList.GetCount
 006649E6    test        eax,eax
>006649E8    jle         00664A31
 006649EA    lea         eax,[ebp-14]
 006649ED    push        eax
 006649EE    lea         edx,[ebp-18]
 006649F1    mov         eax,dword ptr [esi+48];TXMLDocument.FXMLStrings:TStringList
 006649F4    mov         ecx,dword ptr [eax]
 006649F6    call        dword ptr [ecx+1C];TStrings.GetTextStr
 006649F9    mov         eax,dword ptr [ebp-18]
 006649FC    push        eax
 006649FD    lea         edx,[ebp-1C]
 00664A00    mov         eax,esi
 00664A02    call        TXMLDocument.GetDOMPersist
 00664A07    mov         eax,dword ptr [ebp-1C]
 00664A0A    push        eax
 00664A0B    mov         eax,dword ptr [eax]
 00664A0D    call        dword ptr [eax+1C]
 00664A10    call        @CheckAutoResult
 00664A15    cmp         word ptr [ebp-14],1
 00664A1A    sbb         ebx,ebx
 00664A1C    inc         ebx
 00664A1D    mov         byte ptr [esi+90],1;TXMLDocument.FDocSource:TXMLDocumentSource
 00664A24    xor         eax,eax
 00664A26    mov         dword ptr [esi+8C],eax;TXMLDocument.FXMLStrRead:Integer
>00664A2C    jmp         00664B4C
 00664A31    cmp         dword ptr [esi+40],0;TXMLDocument.FXMLData:string
>00664A35    je          00664AAE
 00664A37    mov         edx,7C0F68;^'UTF-16'
 00664A3C    lea         eax,[esi+40];TXMLDocument.FXMLData:string
 00664A3F    mov         ecx,2
 00664A44    call        CheckEncoding
 00664A49    mov         eax,dword ptr [esi+40];TXMLDocument.FXMLData:string
 00664A4C    cmp         word ptr [eax],0FEFF
>00664A51    jne         00664A65
 00664A53    lea         eax,[esi+40];TXMLDocument.FXMLData:string
 00664A56    mov         ecx,1
 00664A5B    mov         edx,1
 00664A60    call        @UStrDelete
 00664A65    lea         eax,[ebp-14]
 00664A68    push        eax
 00664A69    mov         eax,dword ptr [esi+40];TXMLDocument.FXMLData:string
 00664A6C    push        eax
 00664A6D    lea         edx,[ebp-20]
 00664A70    mov         eax,esi
 00664A72    call        TXMLDocument.GetDOMPersist
 00664A77    mov         eax,dword ptr [ebp-20]
 00664A7A    push        eax
 00664A7B    mov         eax,dword ptr [eax]
 00664A7D    call        dword ptr [eax+1C]
 00664A80    call        @CheckAutoResult
 00664A85    cmp         word ptr [ebp-14],1
 00664A8A    sbb         ebx,ebx
 00664A8C    inc         ebx
 00664A8D    lea         eax,[esi+40];TXMLDocument.FXMLData:string
 00664A90    call        @UStrClr
 00664A95    cmp         byte ptr [esi+90],0;TXMLDocument.FDocSource:TXMLDocumentSource
>00664A9C    jne         00664B4C
 00664AA2    mov         byte ptr [esi+90],2;TXMLDocument.FDocSource:TXMLDocumentSource
>00664AA9    jmp         00664B4C
 00664AAE    mov         eax,dword ptr [esi+44];TXMLDocument.FSrcStream:TStream
 00664AB1    test        eax,eax
>00664AB3    je          00664B00
 00664AB5    mov         edi,eax
 00664AB7    push        0
 00664AB9    push        0
 00664ABB    xor         edx,edx
 00664ABD    mov         eax,edi
 00664ABF    mov         ecx,dword ptr [eax]
 00664AC1    call        dword ptr [ecx+20];TStream.Seek
 00664AC4    mov         dword ptr [ebp-10],eax
 00664AC7    mov         dword ptr [ebp-0C],edx
 00664ACA    lea         eax,[ebp-14]
 00664ACD    push        eax
 00664ACE    mov         eax,dword ptr [esi+44];TXMLDocument.FSrcStream:TStream
 00664AD1    push        eax
 00664AD2    lea         edx,[ebp-24]
 00664AD5    mov         eax,esi
 00664AD7    call        TXMLDocument.GetDOMPersist
 00664ADC    mov         eax,dword ptr [ebp-24]
 00664ADF    push        eax
 00664AE0    mov         eax,dword ptr [eax]
 00664AE2    call        dword ptr [eax+18]
 00664AE5    call        @CheckAutoResult
 00664AEA    cmp         word ptr [ebp-14],1
 00664AEF    sbb         ebx,ebx
 00664AF1    inc         ebx
 00664AF2    mov         byte ptr [esi+90],4;TXMLDocument.FDocSource:TXMLDocumentSource
 00664AF9    xor         eax,eax
 00664AFB    mov         dword ptr [esi+44],eax;TXMLDocument.FSrcStream:TStream
>00664AFE    jmp         00664B4C
 00664B00    cmp         dword ptr [esi+70],0;TXMLDocument.FFileName:string
>00664B04    je          00664B4A
 00664B06    lea         eax,[ebp-14]
 00664B09    push        eax
 00664B0A    lea         eax,[ebp-34]
 00664B0D    mov         edx,dword ptr [esi+70];TXMLDocument.FFileName:string
 00664B10    call        @OleVarFromUStr
 00664B15    push        dword ptr [ebp-28]
 00664B18    push        dword ptr [ebp-2C]
 00664B1B    push        dword ptr [ebp-30]
 00664B1E    push        dword ptr [ebp-34]
 00664B21    lea         edx,[ebp-38]
 00664B24    mov         eax,esi
 00664B26    call        TXMLDocument.GetDOMPersist
 00664B2B    mov         eax,dword ptr [ebp-38]
 00664B2E    push        eax
 00664B2F    mov         eax,dword ptr [eax]
 00664B31    call        dword ptr [eax+14]
 00664B34    call        @CheckAutoResult
 00664B39    cmp         word ptr [ebp-14],1
 00664B3E    sbb         ebx,ebx
 00664B40    inc         ebx
 00664B41    mov         byte ptr [esi+90],3;TXMLDocument.FDocSource:TXMLDocumentSource
>00664B48    jmp         00664B4C
 00664B4A    mov         bl,1
 00664B4C    test        bl,bl
>00664B4E    jne         00664C46
 00664B54    mov         byte ptr [esi+90],0;TXMLDocument.FDocSource:TXMLDocumentSource
 00664B5B    lea         edx,[ebp-3C]
 00664B5E    mov         eax,esi
 00664B60    call        TXMLDocument.GetDOMDocument
 00664B65    mov         edx,dword ptr [ebp-3C]
 00664B68    lea         eax,[ebp-4]
 00664B6B    mov         ecx,664CC8;['{2BF4C0F2-096E-11D4-83DA-00C04F60B2DD}']
 00664B70    call        @IntfCast
 00664B75    lea         eax,[ebp-8]
 00664B78    push        eax
 00664B79    lea         eax,[ebp-70]
 00664B7C    call        @UStrClr
 00664B81    push        eax
 00664B82    mov         eax,dword ptr [ebp-4]
 00664B85    push        eax
 00664B86    mov         eax,dword ptr [eax]
 00664B88    call        dword ptr [eax+14]
 00664B8B    call        @CheckAutoResult
 00664B90    mov         eax,dword ptr [ebp-70]
 00664B93    mov         dword ptr [ebp-6C],eax
 00664B96    mov         byte ptr [ebp-68],11
 00664B9A    mov         eax,664CE4;#13+#10
 00664B9F    mov         dword ptr [ebp-64],eax
 00664BA2    mov         byte ptr [ebp-60],0B
 00664BA6    lea         edx,[ebp-74]
 00664BA9    mov         eax,[007C4568];^SResString384:TResStringRec
 00664BAE    call        LoadResString
 00664BB3    mov         eax,dword ptr [ebp-74]
 00664BB6    mov         dword ptr [ebp-5C],eax
 00664BB9    mov         byte ptr [ebp-58],11
 00664BBD    lea         eax,[ebp-78]
 00664BC0    push        eax
 00664BC1    mov         eax,dword ptr [ebp-4]
 00664BC4    push        eax
 00664BC5    mov         eax,dword ptr [eax]
 00664BC7    call        dword ptr [eax+1C]
 00664BCA    call        @CheckAutoResult
 00664BCF    mov         eax,dword ptr [ebp-78]
 00664BD2    mov         dword ptr [ebp-54],eax
 00664BD5    mov         byte ptr [ebp-50],0
 00664BD9    mov         eax,664CE4;#13+#10
 00664BDE    mov         dword ptr [ebp-4C],eax
 00664BE1    mov         byte ptr [ebp-48],0B
 00664BE5    lea         eax,[ebp-7C]
 00664BE8    push        eax
 00664BE9    lea         eax,[ebp-80]
 00664BEC    call        @UStrClr
 00664BF1    push        eax
 00664BF2    mov         eax,dword ptr [ebp-4]
 00664BF5    push        eax
 00664BF6    mov         eax,dword ptr [eax]
 00664BF8    call        dword ptr [eax+18]
 00664BFB    call        @CheckAutoResult
 00664C00    mov         eax,dword ptr [ebp-80]
 00664C03    mov         ecx,28
 00664C08    mov         edx,1
 00664C0D    call        @UStrCopy
 00664C12    mov         eax,dword ptr [ebp-7C]
 00664C15    mov         dword ptr [ebp-44],eax
 00664C18    mov         byte ptr [ebp-40],11
 00664C1C    lea         edx,[ebp-6C]
 00664C1F    mov         ecx,5
 00664C24    mov         eax,664CF4;'%s%s%s: %d%s%s'
 00664C29    call        Format
 00664C2E    mov         eax,dword ptr [ebp-8]
 00664C31    push        eax
 00664C32    mov         ecx,dword ptr [ebp-4]
 00664C35    mov         dl,1
 00664C37    mov         eax,[0065B408];EDOMParseError
 00664C3C    call        EDOMParseError.Create;EDOMParseError.Create
 00664C41    call        @RaiseExcept
 00664C46    xor         edx,edx
 00664C48    mov         eax,esi
 00664C4A    call        TXMLDocument.SetModified
 00664C4F    xor         eax,eax
 00664C51    pop         edx
 00664C52    pop         ecx
 00664C53    pop         ecx
 00664C54    mov         dword ptr fs:[eax],edx
 00664C57    push        664CC1
 00664C5C    lea         eax,[ebp-80]
 00664C5F    mov         edx,2
 00664C64    call        @UStrArrayClr
 00664C69    lea         eax,[ebp-74]
 00664C6C    mov         edx,2
 00664C71    call        @UStrArrayClr
 00664C76    lea         eax,[ebp-3C]
 00664C79    call        @IntfClear
 00664C7E    lea         eax,[ebp-38]
 00664C81    call        @IntfClear
 00664C86    lea         eax,[ebp-34]
 00664C89    call        @VarClr
 00664C8E    lea         eax,[ebp-24]
 00664C91    mov         edx,dword ptr ds:[65BB24];IDOMPersist
 00664C97    mov         ecx,3
 00664C9C    call        @FinalizeArray
 00664CA1    lea         eax,[ebp-18]
 00664CA4    call        @UStrClr
 00664CA9    lea         eax,[ebp-8]
 00664CAC    call        @UStrClr
 00664CB1    lea         eax,[ebp-4]
 00664CB4    call        @IntfClear
 00664CB9    ret
>00664CBA    jmp         @HandleFinally
>00664CBF    jmp         00664C5C
 00664CC1    pop         edi
 00664CC2    pop         esi
 00664CC3    pop         ebx
 00664CC4    mov         esp,ebp
 00664CC6    pop         ebp
 00664CC7    ret
*}
end;

//00664D14
{*procedure TXMLDocument.sub_00664D14(?:?);
begin
 00664D14    push        ebx
 00664D15    push        esi
 00664D16    mov         ebx,eax
 00664D18    test        dl,dl
>00664D1A    je          00664D27
 00664D1C    mov         eax,ebx
 00664D1E    mov         si,0FFEF
 00664D22    call        @CallDynaInst;TXMLDocument.sub_006657F0
 00664D27    lea         eax,[ebx+6C];TXMLDocument.FDocumentNode:IXMLNode
 00664D2A    call        @IntfClear
 00664D2F    lea         eax,[ebx+58];TXMLDocument.FDOMPersist:IDOMPersist
 00664D32    call        @IntfClear
 00664D37    lea         eax,[ebx+5C];TXMLDocument.FDOMDocument:IDOMDocument
 00664D3A    call        @IntfClear
 00664D3F    lea         eax,[ebx+64];TXMLDocument.FDOMParseOptions:IDOMParseOptions
 00664D42    call        @IntfClear
 00664D47    xor         eax,eax
 00664D49    mov         dword ptr [ebx+78],eax;TXMLDocument.FPrefixID:Integer
 00664D4C    xor         edx,edx
 00664D4E    mov         eax,ebx
 00664D50    call        TXMLDocument.SetModified
 00664D55    movzx       eax,byte ptr [ebx+90];TXMLDocument.FDocSource:TXMLDocumentSource
 00664D5C    sub         al,2
>00664D5E    jb          00664D69
 00664D60    xor         edx,edx
 00664D62    mov         eax,ebx
 00664D64    call        0066500C
 00664D69    pop         esi
 00664D6A    pop         ebx
 00664D6B    ret
end;*}

//00664D6C
procedure TXMLDocument.Refresh;
begin
{*
 00664D6C    push        ebp
 00664D6D    mov         ebp,esp
 00664D6F    push        0
 00664D71    push        0
 00664D73    push        0
 00664D75    push        ebx
 00664D76    push        esi
 00664D77    push        edi
 00664D78    mov         dword ptr [ebp-4],eax
 00664D7B    xor         eax,eax
 00664D7D    push        ebp
 00664D7E    push        664E53
 00664D83    push        dword ptr fs:[eax]
 00664D86    mov         dword ptr fs:[eax],esp
 00664D89    mov         eax,dword ptr [ebp-4]
 00664D8C    call        TXMLDocument.CheckActive
 00664D91    xor         edx,edx
 00664D93    mov         eax,dword ptr [ebp-4]
 00664D96    mov         si,0FFE8
 00664D9A    call        @CallDynaInst;TXMLDocument.sub_00664D14
 00664D9F    mov         eax,dword ptr [ebp-4]
 00664DA2    movzx       eax,byte ptr [eax+90];TXMLDocument.FDocSource:TXMLDocumentSource
 00664DA9    sub         al,1
>00664DAB    je          00664DC6
 00664DAD    sub         al,2
>00664DAF    je          00664DC6
 00664DB1    lea         edx,[ebp-8]
 00664DB4    mov         eax,[007C4944];^SResString382:TResStringRec
 00664DB9    call        LoadResString
 00664DBE    mov         eax,dword ptr [ebp-8]
 00664DC1    call        XMLDocError
 00664DC6    lea         eax,[ebp-0C]
 00664DC9    call        @IntfClear
 00664DCE    push        eax
 00664DCF    push        0
 00664DD1    push        0
 00664DD3    push        0
 00664DD5    mov         eax,dword ptr [ebp-4]
 00664DD8    mov         eax,dword ptr [eax+60];TXMLDocument.FDOMImplementation:IDOMImplementation
 00664DDB    push        eax
 00664DDC    mov         eax,dword ptr [eax]
 00664DDE    call        dword ptr [eax+14]
 00664DE1    call        @CheckAutoResult
 00664DE6    mov         edx,dword ptr [ebp-0C]
 00664DE9    mov         eax,dword ptr [ebp-4]
 00664DEC    add         eax,5C;TXMLDocument.FDOMDocument:IDOMDocument
 00664DEF    call        @IntfCopy
 00664DF4    xor         eax,eax
 00664DF6    push        ebp
 00664DF7    push        664E18
 00664DFC    push        dword ptr fs:[eax]
 00664DFF    mov         dword ptr fs:[eax],esp
 00664E02    mov         eax,dword ptr [ebp-4]
 00664E05    mov         si,0FFE9
 00664E09    call        @CallDynaInst;TXMLDocument.sub_006649A4
 00664E0E    xor         eax,eax
 00664E10    pop         edx
 00664E11    pop         ecx
 00664E12    pop         ecx
 00664E13    mov         dword ptr fs:[eax],edx
>00664E16    jmp         00664E35
>00664E18    jmp         @HandleAnyException
 00664E1D    xor         edx,edx
 00664E1F    mov         eax,dword ptr [ebp-4]
 00664E22    mov         si,0FFE8
 00664E26    call        @CallDynaInst;TXMLDocument.sub_00664D14
 00664E2B    call        @RaiseAgain
 00664E30    call        @DoneExcept
 00664E35    xor         eax,eax
 00664E37    pop         edx
 00664E38    pop         ecx
 00664E39    pop         ecx
 00664E3A    mov         dword ptr fs:[eax],edx
 00664E3D    push        664E5A
 00664E42    lea         eax,[ebp-0C]
 00664E45    call        @IntfClear
 00664E4A    lea         eax,[ebp-8]
 00664E4D    call        @UStrClr
 00664E52    ret
>00664E53    jmp         @HandleFinally
>00664E58    jmp         00664E42
 00664E5A    pop         edi
 00664E5B    pop         esi
 00664E5C    pop         ebx
 00664E5D    mov         esp,ebp
 00664E5F    pop         ebp
 00664E60    ret
*}
end;

//00664E64
procedure TXMLDocument.Resync;
begin
{*
 00664E64    push        ebx
 00664E65    mov         ebx,eax
 00664E67    mov         eax,ebx
 00664E69    call        TXMLDocument.CheckActive
 00664E6E    lea         eax,[ebx+6C];TXMLDocument.FDocumentNode:IXMLNode
 00664E71    call        @IntfClear
 00664E76    pop         ebx
 00664E77    ret
*}
end;

//00664E78
procedure TXMLDocument.LoadFromFile(AFileName:string);
begin
{*
 00664E78    push        ebp
 00664E79    mov         ebp,esp
 00664E7B    push        0
 00664E7D    push        0
 00664E7F    push        ebx
 00664E80    push        esi
 00664E81    mov         esi,edx
 00664E83    mov         ebx,eax
 00664E85    xor         eax,eax
 00664E87    push        ebp
 00664E88    push        664F03
 00664E8D    push        dword ptr fs:[eax]
 00664E90    mov         dword ptr fs:[eax],esp
 00664E93    xor         edx,edx
 00664E95    mov         eax,ebx
 00664E97    mov         ecx,dword ptr [eax]
 00664E99    call        dword ptr [ecx+48];TXMLDocument.SetActive
 00664E9C    test        esi,esi
>00664E9E    je          00664EA9
 00664EA0    mov         edx,esi
 00664EA2    mov         eax,ebx
 00664EA4    call        TXMLDocument.SetFileName
 00664EA9    lea         edx,[ebp-4]
 00664EAC    mov         eax,ebx
 00664EAE    call        TXMLDocument.GetFileName
 00664EB3    cmp         dword ptr [ebp-4],0
>00664EB7    jne         00664ECE
 00664EB9    lea         edx,[ebp-8]
 00664EBC    mov         eax,[007C43C4];^SResString383:TResStringRec
 00664EC1    call        LoadResString
 00664EC6    mov         eax,dword ptr [ebp-8]
 00664EC9    call        XMLDocError
 00664ECE    lea         eax,[ebx+40];TXMLDocument.FXMLData:string
 00664ED1    call        @UStrClr
 00664ED6    xor         edx,edx
 00664ED8    mov         eax,ebx
 00664EDA    call        0066500C
 00664EDF    mov         dl,1
 00664EE1    mov         eax,ebx
 00664EE3    mov         ecx,dword ptr [eax]
 00664EE5    call        dword ptr [ecx+48];TXMLDocument.SetActive
 00664EE8    xor         eax,eax
 00664EEA    pop         edx
 00664EEB    pop         ecx
 00664EEC    pop         ecx
 00664EED    mov         dword ptr fs:[eax],edx
 00664EF0    push        664F0A
 00664EF5    lea         eax,[ebp-8]
 00664EF8    mov         edx,2
 00664EFD    call        @UStrArrayClr
 00664F02    ret
>00664F03    jmp         @HandleFinally
>00664F08    jmp         00664EF5
 00664F0A    pop         esi
 00664F0B    pop         ebx
 00664F0C    pop         ecx
 00664F0D    pop         ecx
 00664F0E    pop         ebp
 00664F0F    ret
*}
end;

//00664F10
procedure TXMLDocument.SaveToFile(AFileName:string);
begin
{*
 00664F10    push        ebp
 00664F11    mov         ebp,esp
 00664F13    mov         ecx,5
 00664F18    push        0
 00664F1A    push        0
 00664F1C    dec         ecx
>00664F1D    jne         00664F18
 00664F1F    push        ebx
 00664F20    push        esi
 00664F21    mov         esi,edx
 00664F23    mov         ebx,eax
 00664F25    xor         eax,eax
 00664F27    push        ebp
 00664F28    push        664FD4
 00664F2D    push        dword ptr fs:[eax]
 00664F30    mov         dword ptr fs:[eax],esp
 00664F33    mov         eax,ebx
 00664F35    call        TXMLDocument.CheckActive
 00664F3A    test        esi,esi
>00664F3C    jne         00664F6F
 00664F3E    lea         eax,[ebp-10]
 00664F41    mov         edx,dword ptr [ebx+70];TXMLDocument.FFileName:string
 00664F44    call        @OleVarFromUStr
 00664F49    push        dword ptr [ebp-4]
 00664F4C    push        dword ptr [ebp-8]
 00664F4F    push        dword ptr [ebp-0C]
 00664F52    push        dword ptr [ebp-10]
 00664F55    lea         edx,[ebp-14]
 00664F58    mov         eax,ebx
 00664F5A    call        TXMLDocument.GetDOMPersist
 00664F5F    mov         eax,dword ptr [ebp-14]
 00664F62    push        eax
 00664F63    mov         eax,dword ptr [eax]
 00664F65    call        dword ptr [eax+20]
 00664F68    call        @CheckAutoResult
>00664F6D    jmp         00664F9D
 00664F6F    lea         eax,[ebp-24]
 00664F72    mov         edx,esi
 00664F74    call        @OleVarFromUStr
 00664F79    push        dword ptr [ebp-18]
 00664F7C    push        dword ptr [ebp-1C]
 00664F7F    push        dword ptr [ebp-20]
 00664F82    push        dword ptr [ebp-24]
 00664F85    lea         edx,[ebp-28]
 00664F88    mov         eax,ebx
 00664F8A    call        TXMLDocument.GetDOMPersist
 00664F8F    mov         eax,dword ptr [ebp-28]
 00664F92    push        eax
 00664F93    mov         eax,dword ptr [eax]
 00664F95    call        dword ptr [eax+20]
 00664F98    call        @CheckAutoResult
 00664F9D    xor         edx,edx
 00664F9F    mov         eax,ebx
 00664FA1    call        TXMLDocument.SetModified
 00664FA6    xor         eax,eax
 00664FA8    pop         edx
 00664FA9    pop         ecx
 00664FAA    pop         ecx
 00664FAB    mov         dword ptr fs:[eax],edx
 00664FAE    push        664FDB
 00664FB3    lea         eax,[ebp-28]
 00664FB6    call        @IntfClear
 00664FBB    lea         eax,[ebp-24]
 00664FBE    call        @VarClr
 00664FC3    lea         eax,[ebp-14]
 00664FC6    call        @IntfClear
 00664FCB    lea         eax,[ebp-10]
 00664FCE    call        @VarClr
 00664FD3    ret
>00664FD4    jmp         @HandleFinally
>00664FD9    jmp         00664FB3
 00664FDB    pop         esi
 00664FDC    pop         ebx
 00664FDD    mov         esp,ebp
 00664FDF    pop         ebp
 00664FE0    ret
*}
end;

//00664FE4
{*procedure sub_00664FE4(?:?);
begin
 00664FE4    push        ebx
 00664FE5    mov         ebx,eax
 00664FE7    test        byte ptr [ebx+1C],1
>00664FEB    jne         00665001
 00664FED    mov         eax,ebx
 00664FEF    mov         edx,dword ptr [eax]
 00664FF1    call        dword ptr [edx+44]
 00664FF4    test        al,al
>00664FF6    je          00665001
 00664FF8    xor         edx,edx
 00664FFA    mov         eax,ebx
 00664FFC    mov         ecx,dword ptr [eax]
 00664FFE    call        dword ptr [ecx+48]
 00665001    lea         eax,[ebx+70]
 00665004    call        @UStrClr
 00665009    pop         ebx
 0066500A    ret
end;*}

//0066500C
procedure sub_0066500C(?:TXMLDocument);
begin
{*
 0066500C    push        ebp
 0066500D    mov         ebp,esp
 0066500F    push        ecx
 00665010    push        esi
 00665011    mov         dword ptr [ebp-4],eax
 00665014    mov         eax,dword ptr [ebp-4]
 00665017    mov         esi,dword ptr [eax+48];TXMLDocument.FXMLStrings:TStringList
 0066501A    xor         eax,eax
 0066501C    mov         dword ptr [esi+48],eax;TStringList.FOnChanging:TNotifyEvent
 0066501F    mov         dword ptr [esi+4C],eax;TStringList.?f4C:TXMLDocument
 00665022    xor         eax,eax
 00665024    push        ebp
 00665025    push        665058
 0066502A    push        dword ptr fs:[eax]
 0066502D    mov         dword ptr fs:[eax],esp
 00665030    mov         eax,esi
 00665032    mov         ecx,dword ptr [eax]
 00665034    call        dword ptr [ecx+30];TStrings.SetTextStr
 00665037    xor         eax,eax
 00665039    pop         edx
 0066503A    pop         ecx
 0066503B    pop         ecx
 0066503C    mov         dword ptr fs:[eax],edx
 0066503F    push        66505F
 00665044    mov         eax,dword ptr [ebp-4]
 00665047    mov         eax,dword ptr [eax+48];TXMLDocument.FXMLStrings:TStringList
 0066504A    mov         edx,dword ptr [ebp-4]
 0066504D    mov         dword ptr [eax+4C],edx;TStringList.?f4C:TXMLDocument
 00665050    mov         dword ptr [eax+48],664FE4;TStringList.FOnChanging:TNotifyEvent sub_00664FE4
 00665057    ret
>00665058    jmp         @HandleFinally
>0066505D    jmp         00665044
 0066505F    pop         esi
 00665060    pop         ecx
 00665061    pop         ebp
 00665062    ret
*}
end;

//00665064
procedure sub_00665064(?:TXMLDocument);
begin
{*
 00665064    push        ebp
 00665065    mov         ebp,esp
 00665067    push        0
 00665069    push        ebx
 0066506A    mov         ebx,eax
 0066506C    xor         eax,eax
 0066506E    push        ebp
 0066506F    push        6650BE
 00665074    push        dword ptr fs:[eax]
 00665077    mov         dword ptr fs:[eax],esp
 0066507A    mov         eax,dword ptr [ebx+8C]
 00665080    cmp         eax,dword ptr [ebx+88]
>00665086    je          006650A8
 00665088    lea         edx,[ebp-4]
 0066508B    mov         eax,ebx
 0066508D    call        TXMLDocument.SaveToXML
 00665092    mov         edx,dword ptr [ebp-4]
 00665095    mov         eax,ebx
 00665097    call        0066500C
 0066509C    mov         eax,dword ptr [ebx+88]
 006650A2    mov         dword ptr [ebx+8C],eax
 006650A8    xor         eax,eax
 006650AA    pop         edx
 006650AB    pop         ecx
 006650AC    pop         ecx
 006650AD    mov         dword ptr fs:[eax],edx
 006650B0    push        6650C5
 006650B5    lea         eax,[ebp-4]
 006650B8    call        @UStrClr
 006650BD    ret
>006650BE    jmp         @HandleFinally
>006650C3    jmp         006650B5
 006650C5    pop         ebx
 006650C6    pop         ecx
 006650C7    pop         ebp
 006650C8    ret
*}
end;

//006650CC
{*function TXMLDocument.GetXML:?;
begin
 006650CC    push        ebx
 006650CD    mov         ebx,eax
 006650CF    mov         eax,ebx
 006650D1    mov         edx,dword ptr [eax]
 006650D3    call        dword ptr [edx+44];TXMLDocument.GetActive
 006650D6    test        al,al
>006650D8    je          006650E1
 006650DA    mov         eax,ebx
 006650DC    call        00665064
 006650E1    mov         eax,dword ptr [ebx+48];TXMLDocument.FXMLStrings:TStringList
 006650E4    pop         ebx
 006650E5    ret
end;*}

//006650E8
procedure TXMLDocument.SetXML(Value:TStrings);
begin
{*
 006650E8    mov         eax,dword ptr [eax+48];TXMLDocument.FXMLStrings:TStringList
 006650EB    mov         ecx,dword ptr [eax]
 006650ED    call        dword ptr [ecx+8];TStringList.Assign
 006650F0    ret
*}
end;

//006650F4
procedure TXMLDocument.LoadFromStream(Stream:TStream; EncodingType:TXMLEncodingType);
begin
{*
 006650F4    push        ebx
 006650F5    push        esi
 006650F6    mov         esi,edx
 006650F8    mov         ebx,eax
 006650FA    xor         edx,edx
 006650FC    mov         eax,ebx
 006650FE    mov         ecx,dword ptr [eax]
 00665100    call        dword ptr [ecx+48]
 00665103    xor         edx,edx
 00665105    mov         eax,ebx
 00665107    call        0066500C
 0066510C    lea         eax,[ebx+40]
 0066510F    call        @UStrClr
 00665114    mov         dword ptr [ebx+44],esi
 00665117    mov         dl,1
 00665119    mov         eax,ebx
 0066511B    mov         ecx,dword ptr [eax]
 0066511D    call        dword ptr [ecx+48]
 00665120    pop         esi
 00665121    pop         ebx
 00665122    ret
*}
end;

//00665124
procedure TXMLDocument.SaveToStream(Stream:TStream);
begin
{*
 00665124    push        ebp
 00665125    mov         ebp,esp
 00665127    push        0
 00665129    push        ebx
 0066512A    push        esi
 0066512B    mov         esi,edx
 0066512D    mov         ebx,eax
 0066512F    xor         eax,eax
 00665131    push        ebp
 00665132    push        66517C
 00665137    push        dword ptr fs:[eax]
 0066513A    mov         dword ptr fs:[eax],esp
 0066513D    mov         eax,ebx
 0066513F    call        TXMLDocument.CheckActive
 00665144    push        esi
 00665145    lea         edx,[ebp-4]
 00665148    mov         eax,ebx
 0066514A    call        TXMLDocument.GetDOMPersist
 0066514F    mov         eax,dword ptr [ebp-4]
 00665152    push        eax
 00665153    mov         eax,dword ptr [eax]
 00665155    call        dword ptr [eax+24]
 00665158    call        @CheckAutoResult
 0066515D    xor         edx,edx
 0066515F    mov         eax,ebx
 00665161    call        TXMLDocument.SetModified
 00665166    xor         eax,eax
 00665168    pop         edx
 00665169    pop         ecx
 0066516A    pop         ecx
 0066516B    mov         dword ptr fs:[eax],edx
 0066516E    push        665183
 00665173    lea         eax,[ebp-4]
 00665176    call        @IntfClear
 0066517B    ret
>0066517C    jmp         @HandleFinally
>00665181    jmp         00665173
 00665183    pop         esi
 00665184    pop         ebx
 00665185    pop         ecx
 00665186    pop         ebp
 00665187    ret
*}
end;

//00665188
procedure TXMLDocument.LoadFromXML(XML:string);
begin
{*
 00665188    push        ebx
 00665189    push        esi
 0066518A    mov         esi,edx
 0066518C    mov         ebx,eax
 0066518E    xor         edx,edx
 00665190    mov         eax,ebx
 00665192    mov         ecx,dword ptr [eax]
 00665194    call        dword ptr [ecx+48];TXMLDocument.SetActive
 00665197    xor         edx,edx
 00665199    mov         eax,ebx
 0066519B    call        0066500C
 006651A0    lea         eax,[ebx+40];TXMLDocument.FXMLData:string
 006651A3    mov         edx,esi
 006651A5    call        @UStrAsg
 006651AA    mov         dl,1
 006651AC    mov         eax,ebx
 006651AE    mov         ecx,dword ptr [eax]
 006651B0    call        dword ptr [ecx+48];TXMLDocument.SetActive
 006651B3    pop         esi
 006651B4    pop         ebx
 006651B5    ret
*}
end;

//006651B8
procedure TXMLDocument.LoadFromXML(XML:AnsiString);
begin
{*
 006651B8    push        ebp
 006651B9    mov         ebp,esp
 006651BB    push        ecx
 006651BC    push        ebx
 006651BD    mov         ebx,eax
 006651BF    mov         ecx,edx
 006651C1    mov         eax,[00473140];TStringStream
 006651C6    mov         dl,1
 006651C8    call        TStringStream.Create
 006651CD    mov         dword ptr [ebp-4],eax
 006651D0    xor         eax,eax
 006651D2    push        ebp
 006651D3    push        665200
 006651D8    push        dword ptr fs:[eax]
 006651DB    mov         dword ptr fs:[eax],esp
 006651DE    xor         ecx,ecx
 006651E0    mov         edx,dword ptr [ebp-4]
 006651E3    mov         eax,ebx
 006651E5    call        TXMLDocument.LoadFromStream
 006651EA    xor         eax,eax
 006651EC    pop         edx
 006651ED    pop         ecx
 006651EE    pop         ecx
 006651EF    mov         dword ptr fs:[eax],edx
 006651F2    push        665207
 006651F7    mov         eax,dword ptr [ebp-4]
 006651FA    call        TObject.Free
 006651FF    ret
>00665200    jmp         @HandleFinally
>00665205    jmp         006651F7
 00665207    pop         ebx
 00665208    pop         ecx
 00665209    pop         ebp
 0066520A    ret
*}
end;

//0066520C
procedure TXMLDocument.SaveToXML(var XML:string);
begin
{*
 0066520C    push        ebp
 0066520D    mov         ebp,esp
 0066520F    push        0
 00665211    push        0
 00665213    push        ebx
 00665214    push        esi
 00665215    mov         esi,edx
 00665217    mov         ebx,eax
 00665219    xor         eax,eax
 0066521B    push        ebp
 0066521C    push        665277
 00665221    push        dword ptr fs:[eax]
 00665224    mov         dword ptr fs:[eax],esp
 00665227    mov         eax,ebx
 00665229    call        TXMLDocument.CheckActive
 0066522E    lea         eax,[ebp-4]
 00665231    call        @UStrClr
 00665236    push        eax
 00665237    lea         edx,[ebp-8]
 0066523A    mov         eax,ebx
 0066523C    call        TXMLDocument.GetDOMPersist
 00665241    mov         eax,dword ptr [ebp-8]
 00665244    push        eax
 00665245    mov         eax,dword ptr [eax]
 00665247    call        dword ptr [eax+0C]
 0066524A    call        @CheckAutoResult
 0066524F    mov         edx,dword ptr [ebp-4]
 00665252    mov         eax,esi
 00665254    call        @UStrAsg
 00665259    xor         eax,eax
 0066525B    pop         edx
 0066525C    pop         ecx
 0066525D    pop         ecx
 0066525E    mov         dword ptr fs:[eax],edx
 00665261    push        66527E
 00665266    lea         eax,[ebp-8]
 00665269    call        @IntfClear
 0066526E    lea         eax,[ebp-4]
 00665271    call        @UStrClr
 00665276    ret
>00665277    jmp         @HandleFinally
>0066527C    jmp         00665266
 0066527E    pop         esi
 0066527F    pop         ebx
 00665280    pop         ecx
 00665281    pop         ecx
 00665282    pop         ebp
 00665283    ret
*}
end;

//00665284
procedure TXMLDocument.SaveToXML(var XML:WideString);
begin
{*
 00665284    push        ebp
 00665285    mov         ebp,esp
 00665287    push        0
 00665289    push        0
 0066528B    push        ebx
 0066528C    push        esi
 0066528D    mov         esi,edx
 0066528F    mov         ebx,eax
 00665291    xor         eax,eax
 00665293    push        ebp
 00665294    push        6652EF
 00665299    push        dword ptr fs:[eax]
 0066529C    mov         dword ptr fs:[eax],esp
 0066529F    mov         eax,ebx
 006652A1    call        TXMLDocument.CheckActive
 006652A6    lea         eax,[ebp-4]
 006652A9    call        @UStrClr
 006652AE    push        eax
 006652AF    lea         edx,[ebp-8]
 006652B2    mov         eax,ebx
 006652B4    call        TXMLDocument.GetDOMPersist
 006652B9    mov         eax,dword ptr [ebp-8]
 006652BC    push        eax
 006652BD    mov         eax,dword ptr [eax]
 006652BF    call        dword ptr [eax+0C]
 006652C2    call        @CheckAutoResult
 006652C7    mov         edx,dword ptr [ebp-4]
 006652CA    mov         eax,esi
 006652CC    call        @WStrFromUStr
 006652D1    xor         eax,eax
 006652D3    pop         edx
 006652D4    pop         ecx
 006652D5    pop         ecx
 006652D6    mov         dword ptr fs:[eax],edx
 006652D9    push        6652F6
 006652DE    lea         eax,[ebp-8]
 006652E1    call        @IntfClear
 006652E6    lea         eax,[ebp-4]
 006652E9    call        @UStrClr
 006652EE    ret
>006652EF    jmp         @HandleFinally
>006652F4    jmp         006652DE
 006652F6    pop         esi
 006652F7    pop         ebx
 006652F8    pop         ecx
 006652F9    pop         ecx
 006652FA    pop         ebp
 006652FB    ret
*}
end;

//006652FC
procedure TXMLDocument.SaveToXML(var XML:UTF8String);
begin
{*
 006652FC    push        ebp
 006652FD    mov         ebp,esp
 006652FF    push        ecx
 00665300    push        ebx
 00665301    push        esi
 00665302    mov         esi,edx
 00665304    mov         ebx,eax
 00665306    mov         eax,ebx
 00665308    call        TXMLDocument.IsEmptyDoc
 0066530D    test        al,al
>0066530F    jne         006653AC
 00665315    mov         dl,1
 00665317    mov         eax,[00472CE4];TMemoryStream
 0066531C    call        TObject.Create
 00665321    mov         dword ptr [ebp-4],eax
 00665324    xor         eax,eax
 00665326    push        ebp
 00665327    push        6653A5
 0066532C    push        dword ptr fs:[eax]
 0066532F    mov         dword ptr fs:[eax],esp
 00665332    mov         edx,dword ptr [ebp-4]
 00665335    mov         eax,ebx
 00665337    call        TXMLDocument.SaveToStream
 0066533C    mov         eax,dword ptr [ebp-4]
 0066533F    call        DetectCharEncoding
 00665344    test        al,al
>00665346    je          00665350
 00665348    sub         al,7
>0066534A    je          00665350
 0066534C    sub         al,4
>0066534E    jne         00665386
 00665350    mov         eax,dword ptr [ebp-4]
 00665353    mov         edx,dword ptr [eax]
 00665355    call        dword ptr [edx]
 00665357    mov         edx,eax
 00665359    mov         eax,esi
 0066535B    mov         ecx,0FDE9
 00665360    call        @LStrSetLength
 00665365    push        0
 00665367    push        0
 00665369    mov         eax,dword ptr [ebp-4]
 0066536C    call        TStream.SetPosition
 00665371    mov         eax,dword ptr [ebp-4]
 00665374    mov         edx,dword ptr [eax]
 00665376    call        dword ptr [edx]
 00665378    mov         ecx,eax
 0066537A    mov         edx,dword ptr [esi]
 0066537C    mov         eax,dword ptr [ebp-4]
 0066537F    mov         ebx,dword ptr [eax]
 00665381    call        dword ptr [ebx+0C]
>00665384    jmp         0066538F
 00665386    mov         edx,esi
 00665388    mov         eax,ebx
 0066538A    call        TXMLDocument.SaveToUTF8String
 0066538F    xor         eax,eax
 00665391    pop         edx
 00665392    pop         ecx
 00665393    pop         ecx
 00665394    mov         dword ptr fs:[eax],edx
 00665397    push        6653B3
 0066539C    mov         eax,dword ptr [ebp-4]
 0066539F    call        TObject.Free
 006653A4    ret
>006653A5    jmp         @HandleFinally
>006653AA    jmp         0066539C
 006653AC    mov         eax,esi
 006653AE    call        @LStrClr
 006653B3    pop         esi
 006653B4    pop         ebx
 006653B5    pop         ecx
 006653B6    pop         ebp
 006653B7    ret
*}
end;

//006653B8
procedure TXMLDocument.SaveToUTF8String(var XML:UTF8String);
begin
{*
 006653B8    push        ebp
 006653B9    mov         ebp,esp
 006653BB    mov         ecx,7
 006653C0    push        0
 006653C2    push        0
 006653C4    dec         ecx
>006653C5    jne         006653C0
 006653C7    push        ebx
 006653C8    push        esi
 006653C9    mov         ebx,edx
 006653CB    mov         esi,eax
 006653CD    xor         eax,eax
 006653CF    push        ebp
 006653D0    push        665584
 006653D5    push        dword ptr fs:[eax]
 006653D8    mov         dword ptr fs:[eax],esp
 006653DB    lea         edx,[ebp-4]
 006653DE    mov         eax,esi
 006653E0    call        TXMLDocument.SaveToXML
 006653E5    mov         edx,ebx
 006653E7    mov         eax,dword ptr [ebp-4]
 006653EA    call        UTF8Encode
 006653EF    lea         eax,[ebp-14]
 006653F2    call        @IntfClear
 006653F7    push        eax
 006653F8    push        665594
 006653FD    lea         edx,[ebp-18]
 00665400    mov         eax,esi
 00665402    call        TXMLDocument.GetDOMDocument
 00665407    mov         eax,dword ptr [ebp-18]
 0066540A    push        eax
 0066540B    mov         eax,dword ptr [eax]
 0066540D    call        dword ptr [eax]
 0066540F    test        eax,eax
>00665411    jne         00665475
 00665413    lea         eax,[ebp-1C]
 00665416    call        @UStrClr
 0066541B    push        eax
 0066541C    mov         eax,dword ptr [ebp-14]
 0066541F    push        eax
 00665420    mov         eax,dword ptr [eax]
 00665422    call        dword ptr [eax+14]
 00665425    call        @CheckAutoResult
 0066542A    mov         ecx,dword ptr [ebp-1C]
 0066542D    lea         eax,[ebp-0C]
 00665430    mov         edx,6655B0;'version'
 00665435    call        AppendItem
 0066543A    lea         eax,[ebp-20]
 0066543D    call        @UStrClr
 00665442    push        eax
 00665443    mov         eax,dword ptr [ebp-14]
 00665446    push        eax
 00665447    mov         eax,dword ptr [eax]
 00665449    call        dword ptr [eax+10]
 0066544C    call        @CheckAutoResult
 00665451    mov         ecx,dword ptr [ebp-20]
 00665454    lea         eax,[ebp-0C]
 00665457    mov         edx,6655CC;'standalone'
 0066545C    call        AppendItem
 00665461    lea         eax,[ebp-0C]
 00665464    mov         ecx,6655F0;'UTF-8'
 00665469    mov         edx,665608;'encoding'
 0066546E    call        AppendItem
>00665473    jmp         0066549F
 00665475    lea         edx,[ebp-8]
 00665478    mov         eax,esi
 0066547A    call        TXMLDocument.GetPrologNode
 0066547F    push        1
 00665481    lea         eax,[ebp-0C]
 00665484    push        eax
 00665485    lea         eax,[ebp-30]
 00665488    mov         edx,6655F0;'UTF-8'
 0066548D    call        @VarFromUStr
 00665492    lea         ecx,[ebp-30]
 00665495    mov         edx,dword ptr [ebp-8]
 00665498    mov         eax,esi
 0066549A    call        TXMLDocument.InternalSetPrologValue
 0066549F    push        665628;'<?xml '
 006654A4    push        dword ptr [ebp-0C]
 006654A7    push        665644;'?>'
 006654AC    lea         eax,[ebp-10]
 006654AF    mov         edx,3
 006654B4    call        @UStrCatN
 006654B9    lea         eax,[ebp-34]
 006654BC    push        eax
 006654BD    mov         eax,dword ptr [ebx]
 006654BF    mov         ecx,5
 006654C4    mov         edx,1
 006654C9    call        @LStrCopy
 006654CE    mov         eax,dword ptr [ebp-34]
 006654D1    mov         edx,665658;'<?xml'
 006654D6    call        @LStrEqual
>006654DB    jne         006654FE
 006654DD    mov         edx,dword ptr [ebx]
 006654DF    mov         ecx,1
 006654E4    mov         eax,66566C;'>'
 006654E9    call        Pos
 006654EE    mov         ecx,eax
 006654F0    mov         eax,ebx
 006654F2    mov         edx,1
 006654F7    call        @LStrDelete
>006654FC    jmp         0066550B
 006654FE    lea         eax,[ebp-10]
 00665501    mov         edx,66567C;'
'
 00665506    call        @UStrCat
 0066550B    lea         eax,[ebp-38]
 0066550E    mov         edx,dword ptr [ebp-10]
 00665511    mov         ecx,0FDE9
 00665516    call        @LStrFromUStr
 0066551B    mov         edx,dword ptr [ebp-38]
 0066551E    mov         ecx,dword ptr [ebx]
 00665520    mov         eax,ebx
 00665522    call        @LStrCat3
 00665527    xor         eax,eax
 00665529    pop         edx
 0066552A    pop         ecx
 0066552B    pop         ecx
 0066552C    mov         dword ptr fs:[eax],edx
 0066552F    push        66558B
 00665534    lea         eax,[ebp-38]
 00665537    mov         edx,2
 0066553C    call        @LStrArrayClr
 00665541    lea         eax,[ebp-30]
 00665544    call        @VarClr
 00665549    lea         eax,[ebp-20]
 0066554C    mov         edx,2
 00665551    call        @UStrArrayClr
 00665556    lea         eax,[ebp-18]
 00665559    call        @IntfClear
 0066555E    lea         eax,[ebp-14]
 00665561    call        @IntfClear
 00665566    lea         eax,[ebp-10]
 00665569    mov         edx,2
 0066556E    call        @UStrArrayClr
 00665573    lea         eax,[ebp-8]
 00665576    call        @IntfClear
 0066557B    lea         eax,[ebp-4]
 0066557E    call        @UStrClr
 00665583    ret
>00665584    jmp         @HandleFinally
>00665589    jmp         00665534
 0066558B    pop         esi
 0066558C    pop         ebx
 0066558D    mov         esp,ebp
 0066558F    pop         ebp
 00665590    ret
*}
end;

//00665684
procedure TXMLDocument.sub_00665684;
begin
{*
 00665684    push        ebp
 00665685    mov         ebp,esp
 00665687    push        0
 00665689    push        0
 0066568B    push        ebx
 0066568C    push        esi
 0066568D    mov         ebx,eax
 0066568F    xor         eax,eax
 00665691    push        ebp
 00665692    push        6656FC
 00665697    push        dword ptr fs:[eax]
 0066569A    mov         dword ptr fs:[eax],esp
 0066569D    cmp         dword ptr [ebx+60],0;TXMLDocument.FDOMImplementation:IDOMImplementation
>006656A1    jne         006656DB
 006656A3    mov         esi,dword ptr [ebx+4C];TXMLDocument.FDOMVendor:TDOMVendor
 006656A6    test        esi,esi
>006656A8    je          006656C1
 006656AA    lea         edx,[ebp-4]
 006656AD    mov         eax,esi
 006656AF    mov         ecx,dword ptr [eax]
 006656B1    call        dword ptr [ecx+4];TDOMVendor.DOMImplementation
 006656B4    mov         edx,dword ptr [ebp-4]
 006656B7    lea         eax,[ebx+60];TXMLDocument.FDOMImplementation:IDOMImplementation
 006656BA    call        @IntfCopy
>006656BF    jmp         006656DB
 006656C1    lea         edx,[ebp-8]
 006656C4    mov         eax,[007C4AA8];^gvar_00828610:UnicodeString
 006656C9    mov         eax,dword ptr [eax]
 006656CB    call        GetDOM
 006656D0    mov         edx,dword ptr [ebp-8]
 006656D3    lea         eax,[ebx+60];TXMLDocument.FDOMImplementation:IDOMImplementation
 006656D6    call        @IntfCopy
 006656DB    xor         eax,eax
 006656DD    pop         edx
 006656DE    pop         ecx
 006656DF    pop         ecx
 006656E0    mov         dword ptr fs:[eax],edx
 006656E3    push        665703
 006656E8    lea         eax,[ebp-8]
 006656EB    mov         edx,dword ptr ds:[65B64C];IDOMImplementation
 006656F1    mov         ecx,2
 006656F6    call        @FinalizeArray
 006656FB    ret
>006656FC    jmp         @HandleFinally
>00665701    jmp         006656E8
 00665703    pop         esi
 00665704    pop         ebx
 00665705    pop         ecx
 00665706    pop         ecx
 00665707    pop         ebp
 00665708    ret
*}
end;

//0066570C
{*procedure sub_0066570C(?:TXMLDocument; ?:?);
begin
 0066570C    push        ebx
 0066570D    push        esi
 0066570E    mov         esi,edx
 00665710    mov         ebx,eax
 00665712    cmp         dword ptr [ebx+5C],0
>00665716    je          00665734
 00665718    cmp         dword ptr [ebx+64],0
>0066571C    jne         00665734
 0066571E    lea         eax,[ebx+64]
 00665721    call        @IntfClear
 00665726    push        eax
 00665727    push        665744
 0066572C    mov         eax,dword ptr [ebx+5C]
 0066572F    push        eax
 00665730    mov         eax,dword ptr [eax]
 00665732    call        dword ptr [eax]
 00665734    mov         eax,esi
 00665736    mov         edx,dword ptr [ebx+64]
 00665739    call        @IntfCopy
 0066573E    pop         esi
 0066573F    pop         ebx
 00665740    ret
end;*}

//00665754
function TXMLDocument.GetDOMPersist:IDOMPersist;
begin
{*
 00665754    push        ebx
 00665755    push        esi
 00665756    mov         esi,edx
 00665758    mov         ebx,eax
 0066575A    cmp         dword ptr [ebx+58],0
>0066575E    jne         00665770
 00665760    lea         eax,[ebx+58]
 00665763    mov         edx,dword ptr [ebx+5C]
 00665766    mov         ecx,665780
 0066576B    call        @IntfCast
 00665770    mov         eax,esi
 00665772    mov         edx,dword ptr [ebx+58]
 00665775    call        @IntfCopy
 0066577A    pop         esi
 0066577B    pop         ebx
 0066577C    ret
*}
end;

//00665790
procedure TXMLDocument.CheckActive;
begin
{*
 00665790    push        ebp
 00665791    mov         ebp,esp
 00665793    push        0
 00665795    push        ebx
 00665796    push        esi
 00665797    mov         ebx,eax
 00665799    xor         eax,eax
 0066579B    push        ebp
 0066579C    push        6657E3
 006657A1    push        dword ptr fs:[eax]
 006657A4    mov         dword ptr fs:[eax],esp
 006657A7    mov         eax,ebx
 006657A9    mov         si,0FFEE
 006657AD    call        @CallDynaInst
 006657B2    cmp         dword ptr [ebx+5C],0
>006657B6    jne         006657CD
 006657B8    lea         edx,[ebp-4]
 006657BB    mov         eax,[007C42EC];^SResString372:TResStringRec
 006657C0    call        LoadResString
 006657C5    mov         eax,dword ptr [ebp-4]
 006657C8    call        XMLDocError
 006657CD    xor         eax,eax
 006657CF    pop         edx
 006657D0    pop         ecx
 006657D1    pop         ecx
 006657D2    mov         dword ptr fs:[eax],edx
 006657D5    push        6657EA
 006657DA    lea         eax,[ebp-4]
 006657DD    call        @UStrClr
 006657E2    ret
>006657E3    jmp         @HandleFinally
>006657E8    jmp         006657DA
 006657EA    pop         esi
 006657EB    pop         ebx
 006657EC    pop         ecx
 006657ED    pop         ebp
 006657EE    ret
*}
end;

//006657F0
procedure TXMLDocument.sub_006657F0;
begin
{*
 006657F0    push        ebp
 006657F1    mov         ebp,esp
 006657F3    push        0
 006657F5    push        esi
 006657F6    mov         esi,eax
 006657F8    xor         eax,eax
 006657FA    push        ebp
 006657FB    push        66585F
 00665800    push        dword ptr fs:[eax]
 00665803    mov         dword ptr fs:[eax],esp
 00665806    test        byte ptr [esi+74],20;TXMLDocument.FOptions:TXMLDocOptions
>0066580A    je          00665849
 0066580C    mov         eax,esi
 0066580E    call        006660F0
 00665813    test        al,al
>00665815    je          00665849
 00665817    movzx       eax,byte ptr [esi+90];TXMLDocument.FDocSource:TXMLDocumentSource
 0066581E    dec         al
>00665820    je          00665828
 00665822    sub         al,2
>00665824    je          00665831
>00665826    jmp         00665849
 00665828    mov         eax,esi
 0066582A    call        00665064
>0066582F    jmp         00665849
 00665831    lea         edx,[ebp-4]
 00665834    mov         eax,esi
 00665836    call        TXMLDocument.GetFileName
 0066583B    mov         edx,dword ptr [ebp-4]
 0066583E    mov         eax,esi
 00665840    mov         si,0FFE7
 00665844    call        @CallDynaInst;TXMLDocument.sub_00664F10
 00665849    xor         eax,eax
 0066584B    pop         edx
 0066584C    pop         ecx
 0066584D    pop         ecx
 0066584E    mov         dword ptr fs:[eax],edx
 00665851    push        665866
 00665856    lea         eax,[ebp-4]
 00665859    call        @UStrClr
 0066585E    ret
>0066585F    jmp         @HandleFinally
>00665864    jmp         00665856
 00665866    pop         esi
 00665867    pop         ecx
 00665868    pop         ebp
 00665869    ret
*}
end;

//0066586C
procedure sub_0066586C(?:TXMLDocument);
begin
{*
 0066586C    push        ebp
 0066586D    mov         ebp,esp
 0066586F    xor         ecx,ecx
 00665871    push        ecx
 00665872    push        ecx
 00665873    push        ecx
 00665874    push        ecx
 00665875    push        ecx
 00665876    push        ecx
 00665877    push        ecx
 00665878    push        ebx
 00665879    mov         ebx,eax
 0066587B    xor         eax,eax
 0066587D    push        ebp
 0066587E    push        6659A0
 00665883    push        dword ptr fs:[eax]
 00665886    mov         dword ptr fs:[eax],esp
 00665889    lea         edx,[ebp-4]
 0066588C    mov         eax,ebx
 0066588E    call        0066570C
 00665893    cmp         dword ptr [ebp-4],0
>00665897    je          0066594E
 0066589D    test        byte ptr [ebx+68],4;TXMLDocument.FParseOptions:TParseOptions
 006658A1    setne       al
 006658A4    push        eax
 006658A5    lea         edx,[ebp-8]
 006658A8    mov         eax,ebx
 006658AA    call        0066570C
 006658AF    mov         eax,dword ptr [ebp-8]
 006658B2    push        eax
 006658B3    mov         eax,dword ptr [eax]
 006658B5    call        dword ptr [eax+20]
 006658B8    call        @CheckAutoResult
 006658BD    test        byte ptr [ebx+68],1;TXMLDocument.FParseOptions:TParseOptions
 006658C1    setne       al
 006658C4    push        eax
 006658C5    lea         edx,[ebp-0C]
 006658C8    mov         eax,ebx
 006658CA    call        0066570C
 006658CF    mov         eax,dword ptr [ebp-0C]
 006658D2    push        eax
 006658D3    mov         eax,dword ptr [eax]
 006658D5    call        dword ptr [eax+24]
 006658D8    call        @CheckAutoResult
 006658DD    test        byte ptr [ebx+68],2;TXMLDocument.FParseOptions:TParseOptions
 006658E1    setne       al
 006658E4    push        eax
 006658E5    lea         edx,[ebp-10]
 006658E8    mov         eax,ebx
 006658EA    call        0066570C
 006658EF    mov         eax,dword ptr [ebp-10]
 006658F2    push        eax
 006658F3    mov         eax,dword ptr [eax]
 006658F5    call        dword ptr [eax+28]
 006658F8    call        @CheckAutoResult
 006658FD    test        byte ptr [ebx+68],8;TXMLDocument.FParseOptions:TParseOptions
 00665901    setne       al
 00665904    push        eax
 00665905    lea         edx,[ebp-14]
 00665908    mov         eax,ebx
 0066590A    call        0066570C
 0066590F    mov         eax,dword ptr [ebp-14]
 00665912    push        eax
 00665913    mov         eax,dword ptr [eax]
 00665915    call        dword ptr [eax+1C]
 00665918    call        @CheckAutoResult
 0066591D    cmp         word ptr [ebx+0D2],0;TXMLDocument.?fD2:word
>00665925    je          0066596F
 00665927    push        dword ptr [ebx+0D4];TXMLDocument.?fD4:dword
 0066592D    push        dword ptr [ebx+0D0];TXMLDocument.FOnAsyncLoad:TAsyncEventHandler
 00665933    push        ebx
 00665934    lea         edx,[ebp-18]
 00665937    mov         eax,ebx
 00665939    call        TXMLDocument.GetDOMPersist
 0066593E    mov         eax,dword ptr [ebp-18]
 00665941    push        eax
 00665942    mov         eax,dword ptr [eax]
 00665944    call        dword ptr [eax+28]
 00665947    call        @CheckAutoResult
>0066594C    jmp         0066596F
 0066594E    movzx       eax,byte ptr ds:[6659AC];0x0 gvar_006659AC
 00665955    cmp         al,byte ptr [ebx+68];TXMLDocument.FParseOptions:TParseOptions
>00665958    je          0066596F
 0066595A    lea         edx,[ebp-1C]
 0066595D    mov         eax,[007C4D44];^SResString379:TResStringRec
 00665962    call        LoadResString
 00665967    mov         eax,dword ptr [ebp-1C]
 0066596A    call        XMLDocError
 0066596F    xor         eax,eax
 00665971    pop         edx
 00665972    pop         ecx
 00665973    pop         ecx
 00665974    mov         dword ptr fs:[eax],edx
 00665977    push        6659A7
 0066597C    lea         eax,[ebp-1C]
 0066597F    call        @UStrClr
 00665984    lea         eax,[ebp-18]
 00665987    call        @IntfClear
 0066598C    lea         eax,[ebp-14]
 0066598F    mov         edx,dword ptr ds:[65BB98];IDOMParseOptions
 00665995    mov         ecx,5
 0066599A    call        @FinalizeArray
 0066599F    ret
>006659A0    jmp         @HandleFinally
>006659A5    jmp         0066597C
 006659A7    pop         ebx
 006659A8    mov         esp,ebp
 006659AA    pop         ebp
 006659AB    ret
*}
end;

//006659B0
function TXMLDocument.GeneratePrefix(Node:IXMLNode):string;
begin
{*
 006659B0    push        ebp
 006659B1    mov         ebp,esp
 006659B3    push        0
 006659B5    push        0
 006659B7    push        0
 006659B9    push        ebx
 006659BA    push        esi
 006659BB    push        edi
 006659BC    mov         esi,ecx
 006659BE    mov         dword ptr [ebp-4],edx
 006659C1    mov         ebx,eax
 006659C3    xor         eax,eax
 006659C5    push        ebp
 006659C6    push        665A1A
 006659CB    push        dword ptr fs:[eax]
 006659CE    mov         dword ptr fs:[eax],esp
 006659D1    inc         dword ptr [ebx+78]
 006659D4    lea         edx,[ebp-8]
 006659D7    mov         eax,dword ptr [ebx+78]
 006659DA    call        IntToStr
 006659DF    mov         ecx,dword ptr [ebp-8]
 006659E2    mov         eax,esi
 006659E4    mov         edx,dword ptr [ebx+7C]
 006659E7    call        @UStrCat3
 006659EC    lea         ecx,[ebp-0C]
 006659EF    mov         edx,dword ptr [esi]
 006659F1    mov         eax,dword ptr [ebp-4]
 006659F4    mov         edi,dword ptr [eax]
 006659F6    call        dword ptr [edi+7C]
 006659F9    cmp         dword ptr [ebp-0C],0
>006659FD    jne         006659D1
 006659FF    xor         eax,eax
 00665A01    pop         edx
 00665A02    pop         ecx
 00665A03    pop         ecx
 00665A04    mov         dword ptr fs:[eax],edx
 00665A07    push        665A21
 00665A0C    lea         eax,[ebp-0C]
 00665A0F    mov         edx,2
 00665A14    call        @UStrArrayClr
 00665A19    ret
>00665A1A    jmp         @HandleFinally
>00665A1F    jmp         00665A0C
 00665A21    pop         edi
 00665A22    pop         esi
 00665A23    pop         ebx
 00665A24    mov         esp,ebp
 00665A26    pop         ebp
 00665A27    ret
*}
end;

//00665A28
{*function sub_00665A28:?;
begin
 00665A28    xor         eax,eax
 00665A2A    ret
end;*}

//00665A2C
function TXMLDocument.AddChild(TagName:string):IXMLNode;
begin
{*
 00665A2C    push        ebp
 00665A2D    mov         ebp,esp
 00665A2F    add         esp,0FFFFFFF8
 00665A32    push        ebx
 00665A33    push        esi
 00665A34    xor         ebx,ebx
 00665A36    mov         dword ptr [ebp-8],ebx
 00665A39    mov         dword ptr [ebp-4],ecx
 00665A3C    mov         esi,edx
 00665A3E    mov         ebx,eax
 00665A40    xor         eax,eax
 00665A42    push        ebp
 00665A43    push        665A7F
 00665A48    push        dword ptr fs:[eax]
 00665A4B    mov         dword ptr fs:[eax],esp
 00665A4E    mov         eax,dword ptr [ebp-4]
 00665A51    push        eax
 00665A52    lea         edx,[ebp-8]
 00665A55    mov         eax,ebx
 00665A57    call        TXMLDocument.GetDocumentNode
 00665A5C    mov         eax,dword ptr [ebp-8]
 00665A5F    or          ecx,0FFFFFFFF
 00665A62    mov         edx,esi
 00665A64    mov         ebx,dword ptr [eax]
 00665A66    call        dword ptr [ebx+6C]
 00665A69    xor         eax,eax
 00665A6B    pop         edx
 00665A6C    pop         ecx
 00665A6D    pop         ecx
 00665A6E    mov         dword ptr fs:[eax],edx
 00665A71    push        665A86
 00665A76    lea         eax,[ebp-8]
 00665A79    call        @IntfClear
 00665A7E    ret
>00665A7F    jmp         @HandleFinally
>00665A84    jmp         00665A76
 00665A86    pop         esi
 00665A87    pop         ebx
 00665A88    pop         ecx
 00665A89    pop         ecx
 00665A8A    pop         ebp
 00665A8B    ret
*}
end;

//00665A8C
function TXMLDocument.AddChild(TagName:string; NamespaceURI:string):IXMLNode;
begin
{*
 00665A8C    push        ebp
 00665A8D    mov         ebp,esp
 00665A8F    add         esp,0FFFFFFF8
 00665A92    push        ebx
 00665A93    push        esi
 00665A94    xor         ebx,ebx
 00665A96    mov         dword ptr [ebp-8],ebx
 00665A99    mov         dword ptr [ebp-4],ecx
 00665A9C    mov         esi,edx
 00665A9E    mov         ebx,eax
 00665AA0    xor         eax,eax
 00665AA2    push        ebp
 00665AA3    push        665AE3
 00665AA8    push        dword ptr fs:[eax]
 00665AAB    mov         dword ptr fs:[eax],esp
 00665AAE    push        0
 00665AB0    push        0FF
 00665AB2    mov         eax,dword ptr [ebp+8]
 00665AB5    push        eax
 00665AB6    lea         edx,[ebp-8]
 00665AB9    mov         eax,ebx
 00665ABB    call        TXMLDocument.GetDocumentNode
 00665AC0    mov         eax,dword ptr [ebp-8]
 00665AC3    mov         ecx,dword ptr [ebp-4]
 00665AC6    mov         edx,esi
 00665AC8    mov         ebx,dword ptr [eax]
 00665ACA    call        dword ptr [ebx+70]
 00665ACD    xor         eax,eax
 00665ACF    pop         edx
 00665AD0    pop         ecx
 00665AD1    pop         ecx
 00665AD2    mov         dword ptr fs:[eax],edx
 00665AD5    push        665AEA
 00665ADA    lea         eax,[ebp-8]
 00665ADD    call        @IntfClear
 00665AE2    ret
>00665AE3    jmp         @HandleFinally
>00665AE8    jmp         00665ADA
 00665AEA    pop         esi
 00665AEB    pop         ebx
 00665AEC    pop         ecx
 00665AED    pop         ecx
 00665AEE    pop         ebp
 00665AEF    ret         4
*}
end;

//00665AF4
function TXMLDocument.CreateElement(TagOrData:string; NamespaceURI:string):IXMLNode;
begin
{*
 00665AF4    push        ebp
 00665AF5    mov         ebp,esp
 00665AF7    push        ebx
 00665AF8    push        esi
 00665AF9    push        edi
 00665AFA    mov         edi,ecx
 00665AFC    mov         esi,edx
 00665AFE    mov         ebx,eax
 00665B00    push        edi
 00665B01    mov         eax,dword ptr [ebp+8]
 00665B04    push        eax
 00665B05    mov         cl,1
 00665B07    mov         edx,esi
 00665B09    mov         eax,ebx
 00665B0B    call        TXMLDocument.CreateNode
 00665B10    pop         edi
 00665B11    pop         esi
 00665B12    pop         ebx
 00665B13    pop         ebp
 00665B14    ret         4
*}
end;

//00665B18
function TXMLDocument.CreateNode(NameOrData:string; NodeType:TNodeType; AddlData:string):IXMLNode;
begin
{*
 00665B18    push        ebp
 00665B19    mov         ebp,esp
 00665B1B    push        0
 00665B1D    push        ebx
 00665B1E    push        esi
 00665B1F    push        edi
 00665B20    mov         ebx,ecx
 00665B22    mov         esi,edx
 00665B24    mov         edi,eax
 00665B26    xor         eax,eax
 00665B28    push        ebp
 00665B29    push        665B81
 00665B2E    push        dword ptr fs:[eax]
 00665B31    mov         dword ptr fs:[eax],esp
 00665B34    push        0
 00665B36    push        edi
 00665B37    mov         eax,dword ptr [ebp+0C]
 00665B3A    push        eax
 00665B3B    lea         eax,[ebp-4]
 00665B3E    push        eax
 00665B3F    mov         ecx,ebx
 00665B41    mov         edx,esi
 00665B43    mov         eax,dword ptr [edi+5C]
 00665B46    call        CreateDOMNode
 00665B4B    mov         ecx,dword ptr [ebp-4]
 00665B4E    mov         dl,1
 00665B50    mov         eax,[0065D600];TXMLNode
 00665B55    call        TXMLNode.Create
 00665B5A    mov         edx,eax
 00665B5C    test        edx,edx
>00665B5E    je          00665B63
 00665B60    sub         edx,0FFFFFFB8
 00665B63    mov         eax,dword ptr [ebp+8]
 00665B66    call        @IntfCopy
 00665B6B    xor         eax,eax
 00665B6D    pop         edx
 00665B6E    pop         ecx
 00665B6F    pop         ecx
 00665B70    mov         dword ptr fs:[eax],edx
 00665B73    push        665B88
 00665B78    lea         eax,[ebp-4]
 00665B7B    call        @IntfClear
 00665B80    ret
>00665B81    jmp         @HandleFinally
>00665B86    jmp         00665B78
 00665B88    pop         edi
 00665B89    pop         esi
 00665B8A    pop         ebx
 00665B8B    pop         ecx
 00665B8C    pop         ebp
 00665B8D    ret         8
*}
end;

//00665B90
function TXMLDocument.GetChildNodes:IXMLNodeList;
begin
{*
 00665B90    push        ebp
 00665B91    mov         ebp,esp
 00665B93    push        0
 00665B95    push        ebx
 00665B96    push        esi
 00665B97    mov         esi,edx
 00665B99    mov         ebx,eax
 00665B9B    xor         eax,eax
 00665B9D    push        ebp
 00665B9E    push        665BD3
 00665BA3    push        dword ptr fs:[eax]
 00665BA6    mov         dword ptr fs:[eax],esp
 00665BA9    lea         edx,[ebp-4]
 00665BAC    mov         eax,ebx
 00665BAE    call        TXMLDocument.GetDocumentNode
 00665BB3    mov         eax,dword ptr [ebp-4]
 00665BB6    mov         edx,esi
 00665BB8    mov         ecx,dword ptr [eax]
 00665BBA    call        dword ptr [ecx+14]
 00665BBD    xor         eax,eax
 00665BBF    pop         edx
 00665BC0    pop         ecx
 00665BC1    pop         ecx
 00665BC2    mov         dword ptr fs:[eax],edx
 00665BC5    push        665BDA
 00665BCA    lea         eax,[ebp-4]
 00665BCD    call        @IntfClear
 00665BD2    ret
>00665BD3    jmp         @HandleFinally
>00665BD8    jmp         00665BCA
 00665BDA    pop         esi
 00665BDB    pop         ebx
 00665BDC    pop         ecx
 00665BDD    pop         ebp
 00665BDE    ret
*}
end;

//00665BE0
function TXMLDocument.IsEmptyDoc:Boolean;
begin
{*
 00665BE0    push        ebx
 00665BE1    push        ecx
 00665BE2    mov         ebx,eax
 00665BE4    cmp         dword ptr [ebx+5C],0
>00665BE8    je          00665C05
 00665BEA    push        esp
 00665BEB    mov         eax,dword ptr [ebx+5C]
 00665BEE    push        eax
 00665BEF    mov         eax,dword ptr [eax]
 00665BF1    call        dword ptr [eax+58]
 00665BF4    call        @CheckAutoResult
 00665BF9    cmp         word ptr [esp],0
>00665BFE    je          00665C05
 00665C00    xor         eax,eax
 00665C02    pop         edx
 00665C03    pop         ebx
 00665C04    ret
 00665C05    mov         al,1
 00665C07    pop         edx
 00665C08    pop         ebx
 00665C09    ret
*}
end;

//00665C0C
{*procedure TXMLDocument.GetDocBinding(TagName:string; DocNodeClass:TClass; ?:?; NamespaceURI:string);
begin
 00665C0C    push        ebp
 00665C0D    mov         ebp,esp
 00665C0F    push        0
 00665C11    push        0
 00665C13    push        0
 00665C15    push        0
 00665C17    push        0
 00665C19    push        0
 00665C1B    push        ebx
 00665C1C    push        esi
 00665C1D    push        edi
 00665C1E    mov         edi,ecx
 00665C20    mov         esi,edx
 00665C22    mov         ebx,eax
 00665C24    mov         eax,dword ptr [ebp+0C]
 00665C27    call        @UStrAddRef
 00665C2C    xor         eax,eax
 00665C2E    push        ebp
 00665C2F    push        665D13
 00665C34    push        dword ptr fs:[eax]
 00665C37    mov         dword ptr fs:[eax],esp
 00665C3A    mov         eax,dword ptr [ebp+0C]
 00665C3D    push        eax
 00665C3E    mov         ecx,edi
 00665C40    mov         edx,esi
 00665C42    mov         eax,ebx
 00665C44    call        TXMLDocument.RegisterDocBinding
 00665C49    mov         eax,ebx
 00665C4B    mov         edx,dword ptr [eax]
 00665C4D    call        dword ptr [edx+44];TXMLDocument.GetActive
 00665C50    test        al,al
>00665C52    jne         00665C5F
 00665C54    mov         dl,1
 00665C56    mov         eax,ebx
 00665C58    mov         ecx,dword ptr [eax]
 00665C5A    call        dword ptr [ecx+48];TXMLDocument.SetActive
>00665C5D    jmp         00665C67
 00665C5F    lea         eax,[ebx+6C];TXMLDocument.FDocumentNode:IXMLNode
 00665C62    call        @IntfClear
 00665C67    lea         eax,[ebp-4]
 00665C6A    call        @IntfClear
 00665C6F    push        eax
 00665C70    lea         edx,[ebp-8]
 00665C73    mov         eax,ebx
 00665C75    call        TXMLDocument.GetDOMDocument
 00665C7A    mov         eax,dword ptr [ebp-8]
 00665C7D    push        eax
 00665C7E    mov         eax,dword ptr [eax]
 00665C80    call        dword ptr [eax+70]
 00665C83    call        @CheckAutoResult
 00665C88    cmp         dword ptr [ebp-4],0
>00665C8C    jne         00665CD0
 00665C8E    cmp         dword ptr [ebp+0C],0
>00665C92    je          00665CB5
 00665C94    push        0
 00665C96    push        0FF
 00665C98    lea         eax,[ebp-0C]
 00665C9B    push        eax
 00665C9C    lea         edx,[ebp-10]
 00665C9F    mov         eax,ebx
 00665CA1    call        TXMLDocument.GetDocumentNode
 00665CA6    mov         eax,dword ptr [ebp-10]
 00665CA9    mov         ecx,dword ptr [ebp+0C]
 00665CAC    mov         edx,esi
 00665CAE    mov         esi,dword ptr [eax]
 00665CB0    call        dword ptr [esi+70]
>00665CB3    jmp         00665CD0
 00665CB5    lea         eax,[ebp-14]
 00665CB8    push        eax
 00665CB9    lea         edx,[ebp-18]
 00665CBC    mov         eax,ebx
 00665CBE    call        TXMLDocument.GetDocumentNode
 00665CC3    mov         eax,dword ptr [ebp-18]
 00665CC6    or          ecx,0FFFFFFFF
 00665CC9    mov         edx,esi
 00665CCB    mov         esi,dword ptr [eax]
 00665CCD    call        dword ptr [esi+6C]
 00665CD0    mov         edx,dword ptr [ebp+8]
 00665CD3    mov         eax,ebx
 00665CD5    call        TXMLDocument.GetDocumentElement
 00665CDA    xor         eax,eax
 00665CDC    pop         edx
 00665CDD    pop         ecx
 00665CDE    pop         ecx
 00665CDF    mov         dword ptr fs:[eax],edx
 00665CE2    push        665D1A
 00665CE7    lea         eax,[ebp-18]
 00665CEA    mov         edx,dword ptr ds:[65C8F8];IXMLNode
 00665CF0    mov         ecx,4
 00665CF5    call        @FinalizeArray
 00665CFA    lea         eax,[ebp-8]
 00665CFD    call        @IntfClear
 00665D02    lea         eax,[ebp-4]
 00665D05    call        @IntfClear
 00665D0A    lea         eax,[ebp+0C]
 00665D0D    call        @UStrClr
 00665D12    ret
>00665D13    jmp         @HandleFinally
>00665D18    jmp         00665CE7
 00665D1A    pop         edi
 00665D1B    pop         esi
 00665D1C    pop         ebx
 00665D1D    mov         esp,ebp
 00665D1F    pop         ebp
 00665D20    ret         8
end;*}

//00665D24
procedure TXMLDocument.RegisterDocBinding(TagName:string; DocNodeClass:TClass; NamespaceURI:string);
begin
{*
 00665D24    push        ebp
 00665D25    mov         ebp,esp
 00665D27    push        ebx
 00665D28    push        esi
 00665D29    push        edi
 00665D2A    mov         edi,ecx
 00665D2C    mov         esi,edx
 00665D2E    mov         ebx,eax
 00665D30    mov         eax,dword ptr [ebp+8]
 00665D33    call        @UStrAddRef
 00665D38    xor         eax,eax
 00665D3A    push        ebp
 00665D3B    push        665D74
 00665D40    push        dword ptr fs:[eax]
 00665D43    mov         dword ptr fs:[eax],esp
 00665D46    lea         eax,[ebx+6C];TXMLDocument.FDocumentNode:IXMLNode
 00665D49    call        @IntfClear
 00665D4E    mov         eax,dword ptr [ebp+8]
 00665D51    push        eax
 00665D52    lea         eax,[ebx+54];TXMLDocument.FDocBindingInfo:TNodeClassArray
 00665D55    mov         ecx,esi
 00665D57    mov         edx,edi
 00665D59    call        AddNodeClassInfo
 00665D5E    xor         eax,eax
 00665D60    pop         edx
 00665D61    pop         ecx
 00665D62    pop         ecx
 00665D63    mov         dword ptr fs:[eax],edx
 00665D66    push        665D7B
 00665D6B    lea         eax,[ebp+8]
 00665D6E    call        @UStrClr
 00665D73    ret
>00665D74    jmp         @HandleFinally
>00665D79    jmp         00665D6B
 00665D7B    pop         edi
 00665D7C    pop         esi
 00665D7D    pop         ebx
 00665D7E    pop         ebp
 00665D7F    ret         4
*}
end;

//00665D84
{*function sub_00665D84(?:?):?;
begin
 00665D84    push        ebp
 00665D85    mov         ebp,esp
 00665D87    add         esp,0FFFFFFF8
 00665D8A    push        ebx
 00665D8B    xor         edx,edx
 00665D8D    mov         dword ptr [ebp-8],edx
 00665D90    mov         ebx,eax
 00665D92    xor         eax,eax
 00665D94    push        ebp
 00665D95    push        665DDF
 00665D9A    push        dword ptr fs:[eax]
 00665D9D    mov         dword ptr fs:[eax],esp
 00665DA0    cmp         dword ptr [ebx+5C],0
>00665DA4    je          00665DC7
 00665DA6    lea         eax,[ebp-4]
 00665DA9    push        eax
 00665DAA    lea         edx,[ebp-8]
 00665DAD    mov         eax,ebx
 00665DAF    call        TXMLDocument.GetDOMPersist
 00665DB4    mov         eax,dword ptr [ebp-8]
 00665DB7    push        eax
 00665DB8    mov         eax,dword ptr [eax]
 00665DBA    call        dword ptr [eax+10]
 00665DBD    call        @CheckAutoResult
 00665DC2    mov         ebx,dword ptr [ebp-4]
>00665DC5    jmp         00665DC9
 00665DC7    xor         ebx,ebx
 00665DC9    xor         eax,eax
 00665DCB    pop         edx
 00665DCC    pop         ecx
 00665DCD    pop         ecx
 00665DCE    mov         dword ptr fs:[eax],edx
 00665DD1    push        665DE6
 00665DD6    lea         eax,[ebp-8]
 00665DD9    call        @IntfClear
 00665DDE    ret
>00665DDF    jmp         @HandleFinally
>00665DE4    jmp         00665DD6
 00665DE6    mov         eax,ebx
 00665DE8    pop         ebx
 00665DE9    pop         ecx
 00665DEA    pop         ecx
 00665DEB    pop         ebp
 00665DEC    ret
end;*}

//00665DF0
function TXMLDocument.GetDOMDocument:IDOMDocument;
begin
{*
 00665DF0    push        ebx
 00665DF1    push        esi
 00665DF2    mov         esi,edx
 00665DF4    mov         ebx,eax
 00665DF6    mov         eax,esi
 00665DF8    mov         edx,dword ptr [ebx+5C]
 00665DFB    call        @IntfCopy
 00665E00    pop         esi
 00665E01    pop         ebx
 00665E02    ret
*}
end;

//00665E04
{*procedure sub_00665E04(?:?; ?:?);
begin
 00665E04    push        ebx
 00665E05    push        esi
 00665E06    push        edi
 00665E07    mov         ebx,edx
 00665E09    mov         edi,eax
 00665E0B    xor         edx,edx
 00665E0D    mov         eax,edi
 00665E0F    mov         ecx,dword ptr [eax]
 00665E11    call        dword ptr [ecx+48]
 00665E14    mov         eax,edi
 00665E16    mov         si,0FFEA
 00665E1A    call        @CallDynaInst
 00665E1F    lea         eax,[edi+5C]
 00665E22    mov         edx,ebx
 00665E24    call        @IntfCopy
 00665E29    mov         eax,edi
 00665E2B    mov         si,0FFEC
 00665E2F    call        @CallDynaInst
 00665E34    pop         edi
 00665E35    pop         esi
 00665E36    pop         ebx
 00665E37    ret
end;*}

//00665E38
function TXMLDocument.GetDocumentNode:IXMLNode;
begin
{*
 00665E38    push        ebp
 00665E39    mov         ebp,esp
 00665E3B    push        0
 00665E3D    push        ebx
 00665E3E    push        esi
 00665E3F    push        edi
 00665E40    mov         edi,edx
 00665E42    mov         ebx,eax
 00665E44    xor         eax,eax
 00665E46    push        ebp
 00665E47    push        665EBF
 00665E4C    push        dword ptr fs:[eax]
 00665E4F    mov         dword ptr fs:[eax],esp
 00665E52    mov         eax,ebx
 00665E54    call        TXMLDocument.CheckActive
 00665E59    cmp         dword ptr [ebx+6C],0
>00665E5D    jne         00665E9F
 00665E5F    push        0
 00665E61    push        ebx
 00665E62    lea         edx,[ebp-4]
 00665E65    mov         eax,ebx
 00665E67    call        TXMLDocument.GetDOMDocument
 00665E6C    mov         ecx,dword ptr [ebp-4]
 00665E6F    mov         dl,1
 00665E71    mov         eax,[0065D600];TXMLNode
 00665E76    call        TXMLNode.Create
 00665E7B    mov         esi,eax
 00665E7D    lea         eax,[ebx+6C]
 00665E80    mov         edx,esi
 00665E82    test        edx,edx
>00665E84    je          00665E89
 00665E86    sub         edx,0FFFFFFB8
 00665E89    call        @IntfCopy
 00665E8E    lea         eax,[esi+14]
 00665E91    mov         edx,dword ptr [ebx+54]
 00665E94    mov         ecx,dword ptr ds:[65D1D0];TNodeClassArray
 00665E9A    call        @DynArrayAsg
 00665E9F    mov         eax,edi
 00665EA1    mov         edx,dword ptr [ebx+6C]
 00665EA4    call        @IntfCopy
 00665EA9    xor         eax,eax
 00665EAB    pop         edx
 00665EAC    pop         ecx
 00665EAD    pop         ecx
 00665EAE    mov         dword ptr fs:[eax],edx
 00665EB1    push        665EC6
 00665EB6    lea         eax,[ebp-4]
 00665EB9    call        @IntfClear
 00665EBE    ret
>00665EBF    jmp         @HandleFinally
>00665EC4    jmp         00665EB6
 00665EC6    pop         edi
 00665EC7    pop         esi
 00665EC8    pop         ebx
 00665EC9    pop         ecx
 00665ECA    pop         ebp
 00665ECB    ret
*}
end;

//00665ECC
function TXMLDocument.GetDocumentElement:IXMLNode;
begin
{*
 00665ECC    push        ebp
 00665ECD    mov         ebp,esp
 00665ECF    xor         ecx,ecx
 00665ED1    push        ecx
 00665ED2    push        ecx
 00665ED3    push        ecx
 00665ED4    push        ecx
 00665ED5    push        ebx
 00665ED6    push        esi
 00665ED7    mov         ebx,edx
 00665ED9    mov         esi,eax
 00665EDB    xor         eax,eax
 00665EDD    push        ebp
 00665EDE    push        665F86
 00665EE3    push        dword ptr fs:[eax]
 00665EE6    mov         dword ptr fs:[eax],esp
 00665EE9    mov         eax,esi
 00665EEB    call        TXMLDocument.CheckActive
 00665EF0    mov         eax,ebx
 00665EF2    call        @IntfClear
 00665EF7    lea         edx,[ebp-4]
 00665EFA    mov         eax,esi
 00665EFC    call        TXMLDocument.GetDocumentNode
 00665F01    mov         eax,dword ptr [ebp-4]
 00665F04    mov         edx,dword ptr [eax]
 00665F06    call        dword ptr [edx+24]
 00665F09    test        al,al
>00665F0B    je          00665F55
 00665F0D    lea         edx,[ebp-0C]
 00665F10    mov         eax,esi
 00665F12    call        TXMLDocument.GetDocumentNode
 00665F17    mov         eax,dword ptr [ebp-0C]
 00665F1A    lea         edx,[ebp-8]
 00665F1D    mov         ecx,dword ptr [eax]
 00665F1F    call        dword ptr [ecx+14]
 00665F22    mov         eax,dword ptr [ebp-8]
 00665F25    mov         edx,ebx
 00665F27    mov         ecx,dword ptr [eax]
 00665F29    call        dword ptr [ecx+5C]
>00665F2C    jmp         00665F45
 00665F2E    lea         edx,[ebp-10]
 00665F31    mov         eax,dword ptr [ebx]
 00665F33    mov         ecx,dword ptr [eax]
 00665F35    call        dword ptr [ecx+98]
 00665F3B    mov         edx,dword ptr [ebp-10]
 00665F3E    mov         eax,ebx
 00665F40    call        @IntfCopy
 00665F45    cmp         dword ptr [ebx],0
>00665F48    je          00665F55
 00665F4A    mov         eax,dword ptr [ebx]
 00665F4C    mov         edx,dword ptr [eax]
 00665F4E    call        dword ptr [edx+38]
 00665F51    cmp         al,1
>00665F53    jne         00665F2E
 00665F55    xor         eax,eax
 00665F57    pop         edx
 00665F58    pop         ecx
 00665F59    pop         ecx
 00665F5A    mov         dword ptr fs:[eax],edx
 00665F5D    push        665F8D
 00665F62    lea         eax,[ebp-10]
 00665F65    mov         edx,dword ptr ds:[65C8F8];IXMLNode
 00665F6B    mov         ecx,2
 00665F70    call        @FinalizeArray
 00665F75    lea         eax,[ebp-8]
 00665F78    call        @IntfClear
 00665F7D    lea         eax,[ebp-4]
 00665F80    call        @IntfClear
 00665F85    ret
>00665F86    jmp         @HandleFinally
>00665F8B    jmp         00665F62
 00665F8D    pop         esi
 00665F8E    pop         ebx
 00665F8F    mov         esp,ebp
 00665F91    pop         ebp
 00665F92    ret
*}
end;

//00665F94
procedure TXMLDocument.SetDocumentElement(const Value:XMLIntf.IXMLNode);
begin
{*
 00665F94    push        ebp
 00665F95    mov         ebp,esp
 00665F97    xor         ecx,ecx
 00665F99    push        ecx
 00665F9A    push        ecx
 00665F9B    push        ecx
 00665F9C    push        ecx
 00665F9D    push        ecx
 00665F9E    push        ecx
 00665F9F    push        ebx
 00665FA0    push        esi
 00665FA1    mov         esi,edx
 00665FA3    mov         ebx,eax
 00665FA5    xor         eax,eax
 00665FA7    push        ebp
 00665FA8    push        666052
 00665FAD    push        dword ptr fs:[eax]
 00665FB0    mov         dword ptr fs:[eax],esp
 00665FB3    mov         eax,ebx
 00665FB5    call        TXMLDocument.CheckActive
 00665FBA    lea         edx,[ebp-4]
 00665FBD    mov         eax,ebx
 00665FBF    call        TXMLDocument.GetDocumentElement
 00665FC4    cmp         dword ptr [ebp-4],0
>00665FC8    je          00665FF2
 00665FCA    lea         eax,[ebp-8]
 00665FCD    push        eax
 00665FCE    lea         edx,[ebp-10]
 00665FD1    mov         eax,ebx
 00665FD3    call        TXMLDocument.GetDocumentNode
 00665FD8    mov         eax,dword ptr [ebp-10]
 00665FDB    lea         edx,[ebp-0C]
 00665FDE    mov         ecx,dword ptr [eax]
 00665FE0    call        dword ptr [ecx+14]
 00665FE3    mov         eax,dword ptr [ebp-0C]
 00665FE6    mov         ecx,esi
 00665FE8    mov         edx,dword ptr [ebp-4]
 00665FEB    mov         ebx,dword ptr [eax]
 00665FED    call        dword ptr [ebx+64]
>00665FF0    jmp         00666011
 00665FF2    lea         edx,[ebp-18]
 00665FF5    mov         eax,ebx
 00665FF7    call        TXMLDocument.GetDocumentNode
 00665FFC    mov         eax,dword ptr [ebp-18]
 00665FFF    lea         edx,[ebp-14]
 00666002    mov         ecx,dword ptr [eax]
 00666004    call        dword ptr [ecx+14]
 00666007    mov         eax,dword ptr [ebp-14]
 0066600A    mov         edx,esi
 0066600C    mov         ecx,dword ptr [eax]
 0066600E    call        dword ptr [ecx+18]
 00666011    xor         eax,eax
 00666013    pop         edx
 00666014    pop         ecx
 00666015    pop         ecx
 00666016    mov         dword ptr fs:[eax],edx
 00666019    push        666059
 0066601E    lea         eax,[ebp-18]
 00666021    call        @IntfClear
 00666026    lea         eax,[ebp-14]
 00666029    call        @IntfClear
 0066602E    lea         eax,[ebp-10]
 00666031    call        @IntfClear
 00666036    lea         eax,[ebp-0C]
 00666039    call        @IntfClear
 0066603E    lea         eax,[ebp-8]
 00666041    mov         edx,dword ptr ds:[65C8F8];IXMLNode
 00666047    mov         ecx,2
 0066604C    call        @FinalizeArray
 00666051    ret
>00666052    jmp         @HandleFinally
>00666057    jmp         0066601E
 00666059    pop         esi
 0066605A    pop         ebx
 0066605B    mov         esp,ebp
 0066605D    pop         ebp
 0066605E    ret
*}
end;

//00666060
{*procedure sub_00666060(?:?; ?:?);
begin
 00666060    push        ebx
 00666061    push        esi
 00666062    mov         esi,edx
 00666064    mov         ebx,eax
 00666066    cmp         esi,dword ptr [ebx+60]
>00666069    je          0066607E
 0066606B    xor         edx,edx
 0066606D    mov         eax,ebx
 0066606F    mov         ecx,dword ptr [eax]
 00666071    call        dword ptr [ecx+48]
 00666074    lea         eax,[ebx+60]
 00666077    mov         edx,esi
 00666079    call        @IntfCopy
 0066607E    pop         esi
 0066607F    pop         ebx
 00666080    ret
end;*}

//00666084
procedure TXMLDocument.SetDOMVendor(const Value:Xmldom.TDOMVendor);
begin
{*
 00666084    cmp         edx,dword ptr [eax+4C]
>00666087    je          00666093
 00666089    mov         dword ptr [eax+4C],edx
 0066608C    xor         edx,edx
 0066608E    call        00666060
 00666093    ret
*}
end;

//00666094
{*procedure TXMLDocument.GetFileName(?:?);
begin
 00666094    push        ebx
 00666095    push        esi
 00666096    mov         esi,edx
 00666098    mov         ebx,eax
 0066609A    mov         eax,esi
 0066609C    mov         edx,dword ptr [ebx+70];TXMLDocument.FFileName:string
 0066609F    call        @UStrAsg
 006660A4    pop         esi
 006660A5    pop         ebx
 006660A6    ret
end;*}

//006660A8
procedure TXMLDocument.SetFileName(Value:string);
begin
{*
 006660A8    push        ebx
 006660A9    push        esi
 006660AA    mov         esi,edx
 006660AC    mov         ebx,eax
 006660AE    mov         eax,esi
 006660B0    mov         edx,dword ptr [ebx+70];TXMLDocument.FFileName:string
 006660B3    call        @UStrEqual
>006660B8    je          006660EC
 006660BA    mov         eax,ebx
 006660BC    mov         edx,dword ptr [eax]
 006660BE    call        dword ptr [edx+44];TXMLDocument.GetActive
 006660C1    test        al,al
>006660C3    je          006660D9
 006660C5    cmp         byte ptr [ebx+90],3;TXMLDocument.FDocSource:TXMLDocumentSource
>006660CC    jne         006660D9
 006660CE    xor         edx,edx
 006660D0    mov         eax,ebx
 006660D2    mov         ecx,dword ptr [eax]
 006660D4    call        dword ptr [ecx+48];TXMLDocument.SetActive
>006660D7    jmp         006660E2
 006660D9    xor         edx,edx
 006660DB    mov         eax,ebx
 006660DD    call        0066500C
 006660E2    lea         eax,[ebx+70];TXMLDocument.FFileName:string
 006660E5    mov         edx,esi
 006660E7    call        @UStrAsg
 006660EC    pop         esi
 006660ED    pop         ebx
 006660EE    ret
*}
end;

//006660F0
function sub_006660F0(?:TXMLDocument):Boolean;
begin
{*
 006660F0    cmp         dword ptr [eax+88],0;TXMLDocument.FModified:Integer
 006660F7    setne       al
 006660FA    ret
*}
end;

//006660FC
procedure TXMLDocument.SetModified(const Value:Boolean);
begin
{*
 006660FC    test        dl,dl
>006660FE    je          00666107
 00666100    inc         dword ptr [eax+88]
 00666106    ret
 00666107    xor         edx,edx
 00666109    mov         dword ptr [eax+88],edx
 0066610F    mov         dword ptr [eax+8C],0FFFFFFFF
 00666119    ret
*}
end;

//0066611C
function TXMLDocument.GetNodeIndentStr:DOMString;
begin
{*
 0066611C    push        ebx
 0066611D    push        esi
 0066611E    mov         esi,edx
 00666120    mov         ebx,eax
 00666122    mov         eax,esi
 00666124    mov         edx,dword ptr [ebx+80]
 0066612A    call        @UStrAsg
 0066612F    pop         esi
 00666130    pop         ebx
 00666131    ret
*}
end;

//00666134
procedure TXMLDocument.SetNodeIndentStr(Value:string);
begin
{*
 00666134    push        ebx
 00666135    push        esi
 00666136    mov         esi,edx
 00666138    mov         ebx,eax
 0066613A    lea         eax,[ebx+80];TXMLDocument.FNodeIndentStr:string
 00666140    mov         edx,esi
 00666142    call        @UStrAsg
 00666147    pop         esi
 00666148    pop         ebx
 00666149    ret
*}
end;

//0066614C
function TXMLDocument.GetOptions:TXMLDocOptions;
begin
{*
 0066614C    movzx       edx,byte ptr [eax+74]
 00666150    mov         eax,edx
 00666152    ret
*}
end;

//00666154
procedure TXMLDocument.SetOptions(Value:TXMLDocOptions);
begin
{*
 00666154    push        ecx
 00666155    mov         byte ptr [esp],dl
 00666158    movzx       edx,byte ptr [esp]
 0066615C    mov         byte ptr [eax+74],dl;TXMLDocument.FOptions:TXMLDocOptions
 0066615F    pop         edx
 00666160    ret
*}
end;

//00666164
{*function TXMLDocument.GetParseOptions:?;
begin
 00666164    movzx       edx,byte ptr [eax+68];TXMLDocument.FParseOptions:TParseOptions
 00666168    mov         eax,edx
 0066616A    ret
end;*}

//0066616C
procedure TXMLDocument.SetParseOptions(Value:TParseOptions);
begin
{*
 0066616C    push        ecx
 0066616D    mov         byte ptr [esp],dl
 00666170    movzx       edx,byte ptr [esp]
 00666174    mov         byte ptr [eax+68],dl;TXMLDocument.FParseOptions:TParseOptions
 00666177    pop         edx
 00666178    ret
*}
end;

//0066617C
{*procedure TXMLDocument.SetOnAsyncLoad(Value:TAsyncEventHandler; ?:?; ?:?);
begin
 0066617C    push        ebp
 0066617D    mov         ebp,esp
 0066617F    push        0
 00666181    push        ebx
 00666182    mov         ebx,eax
 00666184    xor         eax,eax
 00666186    push        ebp
 00666187    push        6661EA
 0066618C    push        dword ptr fs:[eax]
 0066618F    mov         dword ptr fs:[eax],esp
 00666192    mov         eax,dword ptr [ebp+8]
 00666195    mov         dword ptr [ebx+0D0],eax;TXMLDocument.FOnAsyncLoad:TAsyncEventHandler
 0066619B    mov         eax,dword ptr [ebp+0C]
 0066619E    mov         dword ptr [ebx+0D4],eax;TXMLDocument.?fD4:dword
 006661A4    mov         eax,ebx
 006661A6    mov         edx,dword ptr [eax]
 006661A8    call        dword ptr [edx+44];TXMLDocument.GetActive
 006661AB    test        al,al
>006661AD    je          006661D4
 006661AF    push        dword ptr [ebx+0D4];TXMLDocument.?fD4:dword
 006661B5    push        dword ptr [ebx+0D0];TXMLDocument.FOnAsyncLoad:TAsyncEventHandler
 006661BB    push        ebx
 006661BC    lea         edx,[ebp-4]
 006661BF    mov         eax,ebx
 006661C1    call        TXMLDocument.GetDOMPersist
 006661C6    mov         eax,dword ptr [ebp-4]
 006661C9    push        eax
 006661CA    mov         eax,dword ptr [eax]
 006661CC    call        dword ptr [eax+28]
 006661CF    call        @CheckAutoResult
 006661D4    xor         eax,eax
 006661D6    pop         edx
 006661D7    pop         ecx
 006661D8    pop         ecx
 006661D9    mov         dword ptr fs:[eax],edx
 006661DC    push        6661F1
 006661E1    lea         eax,[ebp-4]
 006661E4    call        @IntfClear
 006661E9    ret
>006661EA    jmp         @HandleFinally
>006661EF    jmp         006661E1
 006661F1    pop         ebx
 006661F2    pop         ecx
 006661F3    pop         ebp
 006661F4    ret         8
end;*}

//006661F8
procedure CheckForDTD;
begin
{*
 006661F8    push        ebp
 006661F9    mov         ebp,esp
 006661FB    mov         ecx,10
 00666200    push        0
 00666202    push        0
 00666204    dec         ecx
>00666205    jne         00666200
 00666207    push        ecx
 00666208    push        ebx
 00666209    push        esi
 0066620A    push        edi
 0066620B    xor         eax,eax
 0066620D    push        ebp
 0066620E    push        666415
 00666213    push        dword ptr fs:[eax]
 00666216    mov         dword ptr fs:[eax],esp
 00666219    mov         eax,dword ptr [ebp+8]
 0066621C    mov         eax,dword ptr [eax-4]
 0066621F    call        @UStrClr
 00666224    lea         edx,[ebp-0C]
 00666227    mov         eax,dword ptr [ebp+8]
 0066622A    mov         eax,dword ptr [eax-8]
 0066622D    call        TXMLDocument.GetChildNodes
 00666232    mov         eax,dword ptr [ebp-0C]
 00666235    mov         edx,dword ptr [eax]
 00666237    call        dword ptr [edx+0C]
 0066623A    mov         ebx,eax
 0066623C    dec         ebx
 0066623D    test        ebx,ebx
>0066623F    jl          0066637C
 00666245    inc         ebx
 00666246    mov         dword ptr [ebp-8],0
 0066624D    lea         edx,[ebp-14]
 00666250    mov         eax,dword ptr [ebp+8]
 00666253    mov         eax,dword ptr [eax-8]
 00666256    call        TXMLDocument.GetChildNodes
 0066625B    mov         eax,dword ptr [ebp-14]
 0066625E    push        eax
 0066625F    lea         eax,[ebp-24]
 00666262    mov         edx,dword ptr [ebp-8]
 00666265    mov         cl,0FC
 00666267    call        @OleVarFromInt
 0066626C    lea         edx,[ebp-24]
 0066626F    lea         ecx,[ebp-10]
 00666272    pop         eax
 00666273    mov         esi,dword ptr [eax]
 00666275    call        dword ptr [esi+10]
 00666278    mov         eax,dword ptr [ebp-10]
 0066627B    mov         edx,dword ptr [eax]
 0066627D    call        dword ptr [edx+38]
 00666280    cmp         al,0A
>00666282    jne         00666372
 00666288    lea         edx,[ebp-28]
 0066628B    mov         eax,dword ptr [ebp+8]
 0066628E    mov         eax,dword ptr [eax-8]
 00666291    call        TXMLDocument.GetChildNodes
 00666296    mov         eax,dword ptr [ebp-28]
 00666299    push        eax
 0066629A    lea         eax,[ebp-38]
 0066629D    mov         edx,dword ptr [ebp-8]
 006662A0    mov         cl,0FC
 006662A2    call        @OleVarFromInt
 006662A7    lea         edx,[ebp-38]
 006662AA    lea         ecx,[ebp-4]
 006662AD    pop         eax
 006662AE    mov         ebx,dword ptr [eax]
 006662B0    call        dword ptr [ebx+10]
 006662B3    lea         edx,[ebp-3C]
 006662B6    mov         eax,dword ptr [ebp-4]
 006662B9    mov         ecx,dword ptr [eax]
 006662BB    call        dword ptr [ecx+10]
 006662BE    mov         eax,dword ptr [ebp-3C]
 006662C1    mov         edx,dword ptr [eax]
 006662C3    call        dword ptr [edx+0C]
 006662C6    mov         esi,eax
 006662C8    dec         esi
 006662C9    test        esi,esi
>006662CB    jl          0066637C
 006662D1    inc         esi
 006662D2    xor         ebx,ebx
 006662D4    lea         edx,[ebp-48]
 006662D7    mov         eax,dword ptr [ebp-4]
 006662DA    mov         ecx,dword ptr [eax]
 006662DC    call        dword ptr [ecx+10]
 006662DF    mov         eax,dword ptr [ebp-48]
 006662E2    push        eax
 006662E3    lea         eax,[ebp-58]
 006662E6    mov         edx,ebx
 006662E8    mov         cl,0FC
 006662EA    call        @OleVarFromInt
 006662EF    lea         edx,[ebp-58]
 006662F2    lea         ecx,[ebp-44]
 006662F5    pop         eax
 006662F6    mov         edi,dword ptr [eax]
 006662F8    call        dword ptr [edi+10]
 006662FB    mov         eax,dword ptr [ebp-44]
 006662FE    lea         edx,[ebp-40]
 00666301    mov         ecx,dword ptr [eax]
 00666303    call        dword ptr [ecx+34]
 00666306    mov         eax,dword ptr [ebp-40]
 00666309    mov         edx,666434;'SYSTEM'
 0066630E    call        @UStrEqual
>00666313    jne         00666368
 00666315    lea         edx,[ebp-74]
 00666318    mov         eax,dword ptr [ebp-4]
 0066631B    mov         ecx,dword ptr [eax]
 0066631D    call        dword ptr [ecx+10]
 00666320    mov         eax,dword ptr [ebp-74]
 00666323    push        eax
 00666324    lea         eax,[ebp-84]
 0066632A    mov         edx,ebx
 0066632C    mov         cl,0FC
 0066632E    call        @OleVarFromInt
 00666333    lea         edx,[ebp-84]
 00666339    lea         ecx,[ebp-70]
 0066633C    pop         eax
 0066633D    mov         esi,dword ptr [eax]
 0066633F    call        dword ptr [esi+10]
 00666342    mov         eax,dword ptr [ebp-70]
 00666345    lea         edx,[ebp-6C]
 00666348    mov         ecx,dword ptr [eax]
 0066634A    call        dword ptr [ecx+3C]
 0066634D    lea         eax,[ebp-6C]
 00666350    lea         edx,[ebp-5C]
 00666353    call        VarToWideStr
 00666358    mov         edx,dword ptr [ebp-5C]
 0066635B    mov         eax,dword ptr [ebp+8]
 0066635E    mov         eax,dword ptr [eax-4]
 00666361    call        @UStrFromWStr
>00666366    jmp         0066637C
 00666368    inc         ebx
 00666369    dec         esi
>0066636A    jne         006662D4
>00666370    jmp         0066637C
 00666372    inc         dword ptr [ebp-8]
 00666375    dec         ebx
>00666376    jne         0066624D
 0066637C    xor         eax,eax
 0066637E    pop         edx
 0066637F    pop         ecx
 00666380    pop         ecx
 00666381    mov         dword ptr fs:[eax],edx
 00666384    push        66641F
 00666389    lea         eax,[ebp-84]
 0066638F    call        @VarClr
 00666394    lea         eax,[ebp-74]
 00666397    call        @IntfClear
 0066639C    lea         eax,[ebp-70]
 0066639F    call        @IntfClear
 006663A4    lea         eax,[ebp-6C]
 006663A7    call        @VarClr
 006663AC    lea         eax,[ebp-5C]
 006663AF    call        @WStrClr
 006663B4    lea         eax,[ebp-58]
 006663B7    call        @VarClr
 006663BC    lea         eax,[ebp-48]
 006663BF    call        @IntfClear
 006663C4    lea         eax,[ebp-44]
 006663C7    call        @IntfClear
 006663CC    lea         eax,[ebp-40]
 006663CF    call        @UStrClr
 006663D4    lea         eax,[ebp-3C]
 006663D7    call        @IntfClear
 006663DC    lea         eax,[ebp-38]
 006663DF    call        @VarClr
 006663E4    lea         eax,[ebp-28]
 006663E7    call        @IntfClear
 006663EC    lea         eax,[ebp-24]
 006663EF    call        @VarClr
 006663F4    lea         eax,[ebp-14]
 006663F7    call        @IntfClear
 006663FC    lea         eax,[ebp-10]
 006663FF    call        @IntfClear
 00666404    lea         eax,[ebp-0C]
 00666407    call        @IntfClear
 0066640C    lea         eax,[ebp-4]
 0066640F    call        @IntfClear
 00666414    ret
>00666415    jmp         @HandleFinally
>0066641A    jmp         00666389
 0066641F    pop         edi
 00666420    pop         esi
 00666421    pop         ebx
 00666422    mov         esp,ebp
 00666424    pop         ebp
 00666425    ret
*}
end;

//00666444
function FindLocationHint(const AttrName:Xmldom.DOMString; var SchemaLoc:Xmldom.DOMString):Boolean;
begin
{*
 00666444    push        ebp
 00666445    mov         ebp,esp
 00666447    xor         ecx,ecx
 00666449    push        ecx
 0066644A    push        ecx
 0066644B    push        ecx
 0066644C    push        ecx
 0066644D    push        ecx
 0066644E    push        ecx
 0066644F    push        ecx
 00666450    push        ecx
 00666451    push        ebx
 00666452    push        esi
 00666453    push        edi
 00666454    mov         esi,edx
 00666456    mov         ebx,eax
 00666458    xor         eax,eax
 0066645A    push        ebp
 0066645B    push        66652B
 00666460    push        dword ptr fs:[eax]
 00666463    mov         dword ptr fs:[eax],esp
 00666466    lea         eax,[ebp-14]
 00666469    push        eax
 0066646A    lea         edx,[ebp-18]
 0066646D    mov         eax,dword ptr [ebp+8]
 00666470    mov         eax,dword ptr [eax-8]
 00666473    call        TXMLDocument.GetDocumentElement
 00666478    mov         eax,dword ptr [ebp-18]
 0066647B    mov         ecx,666548;'http://www.w3.org/2001/XMLSchema-instance'
 00666480    mov         edx,ebx
 00666482    mov         ebx,dword ptr [eax]
 00666484    call        dword ptr [ebx+84]
 0066648A    lea         eax,[ebp-14]
 0066648D    lea         edx,[ebp-4]
 00666490    call        VarToStr
 00666495    mov         edx,dword ptr [ebp-4]
 00666498    mov         eax,esi
 0066649A    call        @UStrAsg
 0066649F    cmp         dword ptr [esi],0
>006664A2    je          006664F2
 006664A4    mov         eax,dword ptr [esi]
 006664A6    test        eax,eax
>006664A8    je          006664AF
 006664AA    sub         eax,4
 006664AD    mov         eax,dword ptr [eax]
 006664AF    mov         edi,eax
 006664B1    mov         ebx,1
 006664B6    cmp         edi,ebx
>006664B8    jle         006664F2
 006664BA    mov         eax,dword ptr [esi]
 006664BC    cmp         word ptr [eax+ebx*2-2],20
>006664C2    ja          006664ED
 006664C4    lea         eax,[ebp-20]
 006664C7    push        eax
 006664C8    mov         eax,dword ptr [esi]
 006664CA    mov         ecx,7FFFFFFF
 006664CF    mov         edx,ebx
 006664D1    call        @UStrCopy
 006664D6    mov         eax,dword ptr [ebp-20]
 006664D9    lea         edx,[ebp-1C]
 006664DC    call        TrimLeft
 006664E1    mov         edx,dword ptr [ebp-1C]
 006664E4    mov         eax,esi
 006664E6    call        @UStrAsg
>006664EB    jmp         006664F2
 006664ED    inc         ebx
 006664EE    cmp         edi,ebx
>006664F0    jg          006664BA
 006664F2    cmp         dword ptr [esi],0
 006664F5    setne       bl
 006664F8    xor         eax,eax
 006664FA    pop         edx
 006664FB    pop         ecx
 006664FC    pop         ecx
 006664FD    mov         dword ptr fs:[eax],edx
 00666500    push        666532
 00666505    lea         eax,[ebp-20]
 00666508    mov         edx,2
 0066650D    call        @UStrArrayClr
 00666512    lea         eax,[ebp-18]
 00666515    call        @IntfClear
 0066651A    lea         eax,[ebp-14]
 0066651D    call        @VarClr
 00666522    lea         eax,[ebp-4]
 00666525    call        @UStrClr
 0066652A    ret
>0066652B    jmp         @HandleFinally
>00666530    jmp         00666505
 00666532    mov         eax,ebx
 00666534    pop         edi
 00666535    pop         esi
 00666536    pop         ebx
 00666537    mov         esp,ebp
 00666539    pop         ebp
 0066653A    ret
*}
end;

//0066659C
procedure CheckForXMLSchema;
begin
{*
 0066659C    push        ebp
 0066659D    mov         ebp,esp
 0066659F    push        0
 006665A1    xor         eax,eax
 006665A3    push        ebp
 006665A4    push        666607
 006665A9    push        dword ptr fs:[eax]
 006665AC    mov         dword ptr fs:[eax],esp
 006665AF    lea         edx,[ebp-4]
 006665B2    mov         eax,dword ptr [ebp+8]
 006665B5    mov         eax,dword ptr [eax-8]
 006665B8    call        TXMLDocument.GetDocumentElement
 006665BD    cmp         dword ptr [ebp-4],0
>006665C1    je          006665F1
 006665C3    mov         eax,dword ptr [ebp+8]
 006665C6    push        eax
 006665C7    mov         eax,dword ptr [ebp+8]
 006665CA    mov         edx,dword ptr [eax-4]
 006665CD    mov         eax,666620;'schemaLocation'
 006665D2    call        FindLocationHint
 006665D7    pop         ecx
 006665D8    test        al,al
>006665DA    jne         006665F1
 006665DC    mov         eax,dword ptr [ebp+8]
 006665DF    push        eax
 006665E0    mov         eax,dword ptr [ebp+8]
 006665E3    mov         edx,dword ptr [eax-4]
 006665E6    mov         eax,66664C;'noNamespaceSchemaLocation'
 006665EB    call        FindLocationHint
 006665F0    pop         ecx
 006665F1    xor         eax,eax
 006665F3    pop         edx
 006665F4    pop         ecx
 006665F5    pop         ecx
 006665F6    mov         dword ptr fs:[eax],edx
 006665F9    push        66660E
 006665FE    lea         eax,[ebp-4]
 00666601    call        @IntfClear
 00666606    ret
>00666607    jmp         @HandleFinally
>0066660C    jmp         006665FE
 0066660E    pop         ecx
 0066660F    pop         ebp
 00666610    ret
*}
end;

//00666680
function TXMLDocument.GetSchemaRef:DOMString;
begin
{*
 00666680    push        ebp
 00666681    mov         ebp,esp
 00666683    add         esp,0FFFFFFF8
 00666686    mov         dword ptr [ebp-4],edx
 00666689    mov         dword ptr [ebp-8],eax
 0066668C    mov         eax,dword ptr [ebp-4]
 0066668F    call        @UStrClr
 00666694    push        ebp
 00666695    call        CheckForDTD
 0066669A    pop         ecx
 0066669B    mov         eax,dword ptr [ebp-4]
 0066669E    cmp         dword ptr [eax],0
>006666A1    jne         006666AA
 006666A3    push        ebp
 006666A4    call        CheckForXMLSchema
 006666A9    pop         ecx
 006666AA    pop         ecx
 006666AB    pop         ecx
 006666AC    pop         ebp
 006666AD    ret
*}
end;

//006666B0
procedure sub_006666B0;
begin
{*
 006666B0    ret
*}
end;

//006666B4
function TXMLDocument.GetPrologNode:IXMLNode;
begin
{*
 006666B4    push        ebp
 006666B5    mov         ebp,esp
 006666B7    mov         ecx,0B
 006666BC    push        0
 006666BE    push        0
 006666C0    dec         ecx
>006666C1    jne         006666BC
 006666C3    push        ecx
 006666C4    push        ebx
 006666C5    push        esi
 006666C6    push        edi
 006666C7    mov         esi,edx
 006666C9    mov         ebx,eax
 006666CB    xor         eax,eax
 006666CD    push        ebp
 006666CE    push        666847
 006666D3    push        dword ptr fs:[eax]
 006666D6    mov         dword ptr fs:[eax],esp
 006666D9    mov         eax,ebx
 006666DB    call        TXMLDocument.CheckActive
 006666E0    lea         edx,[ebp-8]
 006666E3    mov         eax,ebx
 006666E5    call        TXMLDocument.GetDocumentNode
 006666EA    mov         eax,dword ptr [ebp-8]
 006666ED    lea         edx,[ebp-4]
 006666F0    mov         ecx,dword ptr [eax]
 006666F2    call        dword ptr [ecx+14]
 006666F5    mov         eax,dword ptr [ebp-4]
 006666F8    mov         edx,dword ptr [eax]
 006666FA    call        dword ptr [edx+0C]
 006666FD    test        eax,eax
>006666FF    jle         006667BF
 00666705    lea         edx,[ebp-14]
 00666708    mov         eax,ebx
 0066670A    call        TXMLDocument.GetDocumentNode
 0066670F    mov         eax,dword ptr [ebp-14]
 00666712    lea         edx,[ebp-10]
 00666715    mov         ecx,dword ptr [eax]
 00666717    call        dword ptr [ecx+14]
 0066671A    mov         eax,dword ptr [ebp-10]
 0066671D    push        eax
 0066671E    lea         eax,[ebp-24]
 00666721    xor         edx,edx
 00666723    mov         cl,1
 00666725    call        @OleVarFromInt
 0066672A    lea         edx,[ebp-24]
 0066672D    lea         ecx,[ebp-0C]
 00666730    pop         eax
 00666731    mov         edi,dword ptr [eax]
 00666733    call        dword ptr [edi+10]
 00666736    mov         eax,dword ptr [ebp-0C]
 00666739    mov         edx,dword ptr [eax]
 0066673B    call        dword ptr [edx+38]
 0066673E    cmp         al,7
>00666740    jne         006667BF
 00666742    lea         edx,[ebp-34]
 00666745    mov         eax,ebx
 00666747    call        TXMLDocument.GetDocumentNode
 0066674C    mov         eax,dword ptr [ebp-34]
 0066674F    lea         edx,[ebp-30]
 00666752    mov         ecx,dword ptr [eax]
 00666754    call        dword ptr [ecx+14]
 00666757    mov         eax,dword ptr [ebp-30]
 0066675A    push        eax
 0066675B    lea         eax,[ebp-44]
 0066675E    xor         edx,edx
 00666760    mov         cl,1
 00666762    call        @OleVarFromInt
 00666767    lea         edx,[ebp-44]
 0066676A    lea         ecx,[ebp-2C]
 0066676D    pop         eax
 0066676E    mov         edi,dword ptr [eax]
 00666770    call        dword ptr [edi+10]
 00666773    mov         eax,dword ptr [ebp-2C]
 00666776    lea         edx,[ebp-28]
 00666779    mov         ecx,dword ptr [eax]
 0066677B    call        dword ptr [ecx+34]
 0066677E    mov         eax,dword ptr [ebp-28]
 00666781    mov         edx,666864;^'scbResoundOnNewAlarm'
 00666786    call        @UStrEqual
>0066678B    jne         006667BF
 0066678D    lea         edx,[ebp-4C]
 00666790    mov         eax,ebx
 00666792    call        TXMLDocument.GetDocumentNode
 00666797    mov         eax,dword ptr [ebp-4C]
 0066679A    lea         edx,[ebp-48]
 0066679D    mov         ecx,dword ptr [eax]
 0066679F    call        dword ptr [ecx+14]
 006667A2    mov         eax,dword ptr [ebp-48]
 006667A5    push        eax
 006667A6    lea         eax,[ebp-5C]
 006667A9    xor         edx,edx
 006667AB    mov         cl,1
 006667AD    call        @OleVarFromInt
 006667B2    lea         edx,[ebp-5C]
 006667B5    mov         ecx,esi
 006667B7    pop         eax
 006667B8    mov         ebx,dword ptr [eax]
 006667BA    call        dword ptr [ebx+10]
>006667BD    jmp         006667C6
 006667BF    mov         eax,esi
 006667C1    call        @IntfClear
 006667C6    xor         eax,eax
 006667C8    pop         edx
 006667C9    pop         ecx
 006667CA    pop         ecx
 006667CB    mov         dword ptr fs:[eax],edx
 006667CE    push        66684E
 006667D3    lea         eax,[ebp-5C]
 006667D6    call        @VarClr
 006667DB    lea         eax,[ebp-4C]
 006667DE    call        @IntfClear
 006667E3    lea         eax,[ebp-48]
 006667E6    call        @IntfClear
 006667EB    lea         eax,[ebp-44]
 006667EE    call        @VarClr
 006667F3    lea         eax,[ebp-34]
 006667F6    call        @IntfClear
 006667FB    lea         eax,[ebp-30]
 006667FE    call        @IntfClear
 00666803    lea         eax,[ebp-2C]
 00666806    call        @IntfClear
 0066680B    lea         eax,[ebp-28]
 0066680E    call        @UStrClr
 00666813    lea         eax,[ebp-24]
 00666816    call        @VarClr
 0066681B    lea         eax,[ebp-14]
 0066681E    call        @IntfClear
 00666823    lea         eax,[ebp-10]
 00666826    call        @IntfClear
 0066682B    lea         eax,[ebp-0C]
 0066682E    mov         edx,dword ptr ds:[65C8F8];IXMLNode
 00666834    mov         ecx,2
 00666839    call        @FinalizeArray
 0066683E    lea         eax,[ebp-4]
 00666841    call        @IntfClear
 00666846    ret
>00666847    jmp         @HandleFinally
>0066684C    jmp         006667D3
 0066684E    pop         edi
 0066684F    pop         esi
 00666850    pop         ebx
 00666851    mov         esp,ebp
 00666853    pop         ebp
 00666854    ret
*}
end;

//0066686C
function TXMLDocument.GetPrologValue(PrologItem:TXMLPrologItem; const Default:Xmldom.DOMString):DOMString;
begin
{*
 0066686C    push        ebp
 0066686D    mov         ebp,esp
 0066686F    push        ecx
 00666870    mov         ecx,4
 00666875    push        0
 00666877    push        0
 00666879    dec         ecx
>0066687A    jne         00666875
 0066687C    xchg        ecx,dword ptr [ebp-4]
 0066687F    push        ebx
 00666880    push        esi
 00666881    push        edi
 00666882    mov         dword ptr [ebp-10],ecx
 00666885    mov         ebx,edx
 00666887    mov         edi,eax
 00666889    mov         esi,dword ptr [ebp+8]
 0066688C    xor         eax,eax
 0066688E    push        ebp
 0066688F    push        6669D2
 00666894    push        dword ptr fs:[eax]
 00666897    mov         dword ptr fs:[eax],esp
 0066689A    lea         eax,[ebp-0C]
 0066689D    call        @IntfClear
 006668A2    push        eax
 006668A3    push        6669E4
 006668A8    lea         edx,[ebp-14]
 006668AB    mov         eax,edi
 006668AD    call        TXMLDocument.GetDOMDocument
 006668B2    mov         eax,dword ptr [ebp-14]
 006668B5    push        eax
 006668B6    mov         eax,dword ptr [eax]
 006668B8    call        dword ptr [eax]
 006668BA    test        eax,eax
>006668BC    jne         00666926
 006668BE    sub         bl,1
>006668C1    jb          006668CB
>006668C3    je          006668E3
 006668C5    dec         bl
>006668C7    je          006668FB
>006668C9    jmp         00666911
 006668CB    mov         eax,esi
 006668CD    call        @UStrClr
 006668D2    push        eax
 006668D3    mov         eax,dword ptr [ebp-0C]
 006668D6    push        eax
 006668D7    mov         eax,dword ptr [eax]
 006668D9    call        dword ptr [eax+14]
 006668DC    call        @CheckAutoResult
>006668E1    jmp         00666911
 006668E3    mov         eax,esi
 006668E5    call        @UStrClr
 006668EA    push        eax
 006668EB    mov         eax,dword ptr [ebp-0C]
 006668EE    push        eax
 006668EF    mov         eax,dword ptr [eax]
 006668F1    call        dword ptr [eax+0C]
 006668F4    call        @CheckAutoResult
>006668F9    jmp         00666911
 006668FB    mov         eax,esi
 006668FD    call        @UStrClr
 00666902    push        eax
 00666903    mov         eax,dword ptr [ebp-0C]
 00666906    push        eax
 00666907    mov         eax,dword ptr [eax]
 00666909    call        dword ptr [eax+10]
 0066690C    call        @CheckAutoResult
 00666911    cmp         dword ptr [esi],0
>00666914    jne         0066699C
 0066691A    mov         eax,esi
 0066691C    mov         edx,dword ptr [ebp-10]
 0066691F    call        @UStrAsg
>00666924    jmp         0066699C
 00666926    lea         edx,[ebp-4]
 00666929    mov         eax,edi
 0066692B    call        TXMLDocument.GetPrologNode
 00666930    cmp         dword ptr [ebp-4],0
>00666934    je          00666992
 00666936    lea         edx,[ebp-24]
 00666939    mov         eax,dword ptr [ebp-4]
 0066693C    mov         ecx,dword ptr [eax]
 0066693E    call        dword ptr [ecx+3C]
 00666941    lea         edx,[ebp-24]
 00666944    lea         eax,[ebp-8]
 00666947    call        @VarToUStr
 0066694C    sub         bl,1
>0066694F    jb          00666959
>00666951    je          0066696C
 00666953    dec         bl
>00666955    je          0066697F
>00666957    jmp         0066699C
 00666959    push        esi
 0066695A    mov         ecx,dword ptr [ebp-10]
 0066695D    mov         edx,dword ptr [ebp-8]
 00666960    mov         eax,666A00;'version'
 00666965    call        ExtractAttrValue
>0066696A    jmp         0066699C
 0066696C    push        esi
 0066696D    mov         ecx,dword ptr [ebp-10]
 00666970    mov         edx,dword ptr [ebp-8]
 00666973    mov         eax,666A1C;'encoding'
 00666978    call        ExtractAttrValue
>0066697D    jmp         0066699C
 0066697F    push        esi
 00666980    mov         ecx,dword ptr [ebp-10]
 00666983    mov         edx,dword ptr [ebp-8]
 00666986    mov         eax,666A3C;'standalone'
 0066698B    call        ExtractAttrValue
>00666990    jmp         0066699C
 00666992    mov         eax,esi
 00666994    mov         edx,dword ptr [ebp-10]
 00666997    call        @UStrAsg
 0066699C    xor         eax,eax
 0066699E    pop         edx
 0066699F    pop         ecx
 006669A0    pop         ecx
 006669A1    mov         dword ptr fs:[eax],edx
 006669A4    push        6669D9
 006669A9    lea         eax,[ebp-24]
 006669AC    call        @VarClr
 006669B1    lea         eax,[ebp-14]
 006669B4    call        @IntfClear
 006669B9    lea         eax,[ebp-0C]
 006669BC    call        @IntfClear
 006669C1    lea         eax,[ebp-8]
 006669C4    call        @UStrClr
 006669C9    lea         eax,[ebp-4]
 006669CC    call        @IntfClear
 006669D1    ret
>006669D2    jmp         @HandleFinally
>006669D7    jmp         006669A9
 006669D9    pop         edi
 006669DA    pop         esi
 006669DB    pop         ebx
 006669DC    mov         esp,ebp
 006669DE    pop         ebp
 006669DF    ret         4
*}
end;

//00666A54
function TXMLDocument.InternalSetPrologValue(const PrologNode:XMLIntf.IXMLNode; const Value:Variant; PrologItem:TXMLPrologItem):UnicodeString;
begin
{*
 00666A54    push        ebp
 00666A55    mov         ebp,esp
 00666A57    push        0
 00666A59    push        0
 00666A5B    push        0
 00666A5D    push        0
 00666A5F    push        ebx
 00666A60    push        esi
 00666A61    mov         dword ptr [ebp-10],ecx
 00666A64    mov         esi,eax
 00666A66    mov         ebx,dword ptr [ebp+8]
 00666A69    xor         eax,eax
 00666A6B    push        ebp
 00666A6C    push        666B3E
 00666A71    push        dword ptr fs:[eax]
 00666A74    mov         dword ptr fs:[eax],esp
 00666A77    test        edx,edx
>00666A79    je          00666AAD
 00666A7B    lea         eax,[ebp-4]
 00666A7E    push        eax
 00666A7F    mov         ecx,666B5C;'1.0'
 00666A84    xor         edx,edx
 00666A86    mov         eax,esi
 00666A88    call        TXMLDocument.GetPrologValue
 00666A8D    lea         eax,[ebp-8]
 00666A90    push        eax
 00666A91    xor         ecx,ecx
 00666A93    mov         dl,1
 00666A95    mov         eax,esi
 00666A97    call        TXMLDocument.GetPrologValue
 00666A9C    lea         eax,[ebp-0C]
 00666A9F    push        eax
 00666AA0    xor         ecx,ecx
 00666AA2    mov         dl,2
 00666AA4    mov         eax,esi
 00666AA6    call        TXMLDocument.GetPrologValue
>00666AAB    jmp         00666ABA
 00666AAD    lea         eax,[ebp-4]
 00666AB0    mov         edx,666B5C;'1.0'
 00666AB5    call        @UStrLAsg
 00666ABA    movzx       eax,byte ptr [ebp+0C]
 00666ABE    sub         al,1
>00666AC0    jb          00666ACA
>00666AC2    je          00666AD7
 00666AC4    dec         al
>00666AC6    je          00666AE4
>00666AC8    jmp         00666AEF
 00666ACA    lea         eax,[ebp-4]
 00666ACD    mov         edx,dword ptr [ebp-10]
 00666AD0    call        @VarToUStr
>00666AD5    jmp         00666AEF
 00666AD7    lea         eax,[ebp-8]
 00666ADA    mov         edx,dword ptr [ebp-10]
 00666ADD    call        @VarToUStr
>00666AE2    jmp         00666AEF
 00666AE4    lea         eax,[ebp-0C]
 00666AE7    mov         edx,dword ptr [ebp-10]
 00666AEA    call        @VarToUStr
 00666AEF    mov         eax,ebx
 00666AF1    call        @UStrClr
 00666AF6    mov         eax,ebx
 00666AF8    mov         ecx,dword ptr [ebp-4]
 00666AFB    mov         edx,666B70;'version'
 00666B00    call        AppendItem
 00666B05    mov         eax,ebx
 00666B07    mov         ecx,dword ptr [ebp-8]
 00666B0A    mov         edx,666B8C;'encoding'
 00666B0F    call        AppendItem
 00666B14    mov         eax,ebx
 00666B16    mov         ecx,dword ptr [ebp-0C]
 00666B19    mov         edx,666BAC;'standalone'
 00666B1E    call        AppendItem
 00666B23    xor         eax,eax
 00666B25    pop         edx
 00666B26    pop         ecx
 00666B27    pop         ecx
 00666B28    mov         dword ptr fs:[eax],edx
 00666B2B    push        666B45
 00666B30    lea         eax,[ebp-0C]
 00666B33    mov         edx,3
 00666B38    call        @UStrArrayClr
 00666B3D    ret
>00666B3E    jmp         @HandleFinally
>00666B43    jmp         00666B30
 00666B45    pop         esi
 00666B46    pop         ebx
 00666B47    mov         esp,ebp
 00666B49    pop         ebp
 00666B4A    ret         8
*}
end;

//00666BC4
procedure TXMLDocument.SetPrologValue(const Value:Variant; PrologItem:TXMLPrologItem);
begin
{*
 00666BC4    push        ebp
 00666BC5    mov         ebp,esp
 00666BC7    push        ecx
 00666BC8    mov         ecx,5
 00666BCD    push        0
 00666BCF    push        0
 00666BD1    dec         ecx
>00666BD2    jne         00666BCD
 00666BD4    push        ecx
 00666BD5    xchg        ecx,dword ptr [ebp-4]
 00666BD8    push        ebx
 00666BD9    push        esi
 00666BDA    push        edi
 00666BDB    mov         ebx,ecx
 00666BDD    mov         edi,edx
 00666BDF    mov         esi,eax
 00666BE1    xor         eax,eax
 00666BE3    push        ebp
 00666BE4    push        666D60
 00666BE9    push        dword ptr fs:[eax]
 00666BEC    mov         dword ptr fs:[eax],esp
 00666BEF    lea         eax,[ebp-10]
 00666BF2    call        @IntfClear
 00666BF7    push        eax
 00666BF8    push        666D70
 00666BFD    lea         edx,[ebp-14]
 00666C00    mov         eax,esi
 00666C02    call        TXMLDocument.GetDOMDocument
 00666C07    mov         eax,dword ptr [ebp-14]
 00666C0A    push        eax
 00666C0B    mov         eax,dword ptr [eax]
 00666C0D    call        dword ptr [eax]
 00666C0F    test        eax,eax
>00666C11    jne         00666C83
 00666C13    sub         bl,1
>00666C16    jb          00666C23
>00666C18    je          00666C44
 00666C1A    dec         bl
>00666C1C    je          00666C65
>00666C1E    jmp         00666CFA
 00666C23    lea         eax,[ebp-18]
 00666C26    mov         edx,edi
 00666C28    call        @VarToUStr
 00666C2D    mov         eax,dword ptr [ebp-18]
 00666C30    push        eax
 00666C31    mov         eax,dword ptr [ebp-10]
 00666C34    push        eax
 00666C35    mov         eax,dword ptr [eax]
 00666C37    call        dword ptr [eax+20]
 00666C3A    call        @CheckAutoResult
>00666C3F    jmp         00666CFA
 00666C44    lea         eax,[ebp-1C]
 00666C47    mov         edx,edi
 00666C49    call        @VarToUStr
 00666C4E    mov         eax,dword ptr [ebp-1C]
 00666C51    push        eax
 00666C52    mov         eax,dword ptr [ebp-10]
 00666C55    push        eax
 00666C56    mov         eax,dword ptr [eax]
 00666C58    call        dword ptr [eax+18]
 00666C5B    call        @CheckAutoResult
>00666C60    jmp         00666CFA
 00666C65    lea         eax,[ebp-20]
 00666C68    mov         edx,edi
 00666C6A    call        @VarToUStr
 00666C6F    mov         eax,dword ptr [ebp-20]
 00666C72    push        eax
 00666C73    mov         eax,dword ptr [ebp-10]
 00666C76    push        eax
 00666C77    mov         eax,dword ptr [eax]
 00666C79    call        dword ptr [eax+1C]
 00666C7C    call        @CheckAutoResult
>00666C81    jmp         00666CFA
 00666C83    lea         edx,[ebp-0C]
 00666C86    mov         eax,esi
 00666C88    call        TXMLDocument.GetPrologNode
 00666C8D    push        ebx
 00666C8E    lea         eax,[ebp-4]
 00666C91    push        eax
 00666C92    mov         ecx,edi
 00666C94    mov         edx,dword ptr [ebp-0C]
 00666C97    mov         eax,esi
 00666C99    call        TXMLDocument.InternalSetPrologValue
 00666C9E    mov         eax,dword ptr [ebp-4]
 00666CA1    push        eax
 00666CA2    lea         eax,[ebp-8]
 00666CA5    push        eax
 00666CA6    mov         cl,7
 00666CA8    mov         edx,666D8C;^'scbResoundOnNewAlarm'
 00666CAD    mov         eax,esi
 00666CAF    call        TXMLDocument.CreateNode
 00666CB4    cmp         dword ptr [ebp-0C],0
>00666CB8    je          00666CE3
 00666CBA    lea         eax,[ebp-24]
 00666CBD    push        eax
 00666CBE    lea         edx,[ebp-2C]
 00666CC1    mov         eax,esi
 00666CC3    call        TXMLDocument.GetDocumentNode
 00666CC8    mov         eax,dword ptr [ebp-2C]
 00666CCB    lea         edx,[ebp-28]
 00666CCE    mov         ecx,dword ptr [eax]
 00666CD0    call        dword ptr [ecx+14]
 00666CD3    mov         eax,dword ptr [ebp-28]
 00666CD6    mov         ecx,dword ptr [ebp-8]
 00666CD9    mov         edx,dword ptr [ebp-0C]
 00666CDC    mov         ebx,dword ptr [eax]
 00666CDE    call        dword ptr [ebx+64]
>00666CE1    jmp         00666CFA
 00666CE3    lea         edx,[ebp-30]
 00666CE6    mov         eax,esi
 00666CE8    call        TXMLDocument.GetChildNodes
 00666CED    mov         eax,dword ptr [ebp-30]
 00666CF0    mov         ecx,dword ptr [ebp-8]
 00666CF3    xor         edx,edx
 00666CF5    mov         ebx,dword ptr [eax]
 00666CF7    call        dword ptr [ebx+58]
 00666CFA    xor         eax,eax
 00666CFC    pop         edx
 00666CFD    pop         ecx
 00666CFE    pop         ecx
 00666CFF    mov         dword ptr fs:[eax],edx
 00666D02    push        666D67
 00666D07    lea         eax,[ebp-30]
 00666D0A    call        @IntfClear
 00666D0F    lea         eax,[ebp-2C]
 00666D12    call        @IntfClear
 00666D17    lea         eax,[ebp-28]
 00666D1A    call        @IntfClear
 00666D1F    lea         eax,[ebp-24]
 00666D22    call        @IntfClear
 00666D27    lea         eax,[ebp-20]
 00666D2A    mov         edx,3
 00666D2F    call        @UStrArrayClr
 00666D34    lea         eax,[ebp-14]
 00666D37    call        @IntfClear
 00666D3C    lea         eax,[ebp-10]
 00666D3F    call        @IntfClear
 00666D44    lea         eax,[ebp-0C]
 00666D47    mov         edx,dword ptr ds:[65C8F8];IXMLNode
 00666D4D    mov         ecx,2
 00666D52    call        @FinalizeArray
 00666D57    lea         eax,[ebp-4]
 00666D5A    call        @UStrClr
 00666D5F    ret
>00666D60    jmp         @HandleFinally
>00666D65    jmp         00666D07
 00666D67    pop         edi
 00666D68    pop         esi
 00666D69    pop         ebx
 00666D6A    mov         esp,ebp
 00666D6C    pop         ebp
 00666D6D    ret
*}
end;

//00666D94
function TXMLDocument.GetEncoding:DOMString;
begin
{*
 00666D94    push        ebx
 00666D95    push        esi
 00666D96    mov         esi,edx
 00666D98    mov         ebx,eax
 00666D9A    push        esi
 00666D9B    xor         ecx,ecx
 00666D9D    mov         dl,1
 00666D9F    mov         eax,ebx
 00666DA1    call        TXMLDocument.GetPrologValue
 00666DA6    pop         esi
 00666DA7    pop         ebx
 00666DA8    ret
*}
end;

//00666DAC
procedure TXMLDocument.SetEncoding(const Value:Xmldom.DOMString);
begin
{*
 00666DAC    push        ebp
 00666DAD    mov         ebp,esp
 00666DAF    xor         ecx,ecx
 00666DB1    push        ecx
 00666DB2    push        ecx
 00666DB3    push        ecx
 00666DB4    push        ecx
 00666DB5    push        ebx
 00666DB6    push        esi
 00666DB7    mov         esi,edx
 00666DB9    mov         ebx,eax
 00666DBB    xor         eax,eax
 00666DBD    push        ebp
 00666DBE    push        666DF5
 00666DC3    push        dword ptr fs:[eax]
 00666DC6    mov         dword ptr fs:[eax],esp
 00666DC9    lea         eax,[ebp-10]
 00666DCC    mov         edx,esi
 00666DCE    call        @VarFromUStr
 00666DD3    lea         edx,[ebp-10]
 00666DD6    mov         cl,1
 00666DD8    mov         eax,ebx
 00666DDA    call        TXMLDocument.SetPrologValue
 00666DDF    xor         eax,eax
 00666DE1    pop         edx
 00666DE2    pop         ecx
 00666DE3    pop         ecx
 00666DE4    mov         dword ptr fs:[eax],edx
 00666DE7    push        666DFC
 00666DEC    lea         eax,[ebp-10]
 00666DEF    call        @VarClr
 00666DF4    ret
>00666DF5    jmp         @HandleFinally
>00666DFA    jmp         00666DEC
 00666DFC    pop         esi
 00666DFD    pop         ebx
 00666DFE    mov         esp,ebp
 00666E00    pop         ebp
 00666E01    ret
*}
end;

//00666E04
function TXMLDocument.GetVersion:DOMString;
begin
{*
 00666E04    push        ebx
 00666E05    push        esi
 00666E06    mov         esi,edx
 00666E08    mov         ebx,eax
 00666E0A    push        esi
 00666E0B    xor         ecx,ecx
 00666E0D    xor         edx,edx
 00666E0F    mov         eax,ebx
 00666E11    call        TXMLDocument.GetPrologValue
 00666E16    pop         esi
 00666E17    pop         ebx
 00666E18    ret
*}
end;

//00666E1C
procedure TXMLDocument.SetVersion(const Value:Xmldom.DOMString);
begin
{*
 00666E1C    push        ebp
 00666E1D    mov         ebp,esp
 00666E1F    xor         ecx,ecx
 00666E21    push        ecx
 00666E22    push        ecx
 00666E23    push        ecx
 00666E24    push        ecx
 00666E25    push        ebx
 00666E26    push        esi
 00666E27    mov         esi,edx
 00666E29    mov         ebx,eax
 00666E2B    xor         eax,eax
 00666E2D    push        ebp
 00666E2E    push        666E65
 00666E33    push        dword ptr fs:[eax]
 00666E36    mov         dword ptr fs:[eax],esp
 00666E39    lea         eax,[ebp-10]
 00666E3C    mov         edx,esi
 00666E3E    call        @VarFromUStr
 00666E43    lea         edx,[ebp-10]
 00666E46    xor         ecx,ecx
 00666E48    mov         eax,ebx
 00666E4A    call        TXMLDocument.SetPrologValue
 00666E4F    xor         eax,eax
 00666E51    pop         edx
 00666E52    pop         ecx
 00666E53    pop         ecx
 00666E54    mov         dword ptr fs:[eax],edx
 00666E57    push        666E6C
 00666E5C    lea         eax,[ebp-10]
 00666E5F    call        @VarClr
 00666E64    ret
>00666E65    jmp         @HandleFinally
>00666E6A    jmp         00666E5C
 00666E6C    pop         esi
 00666E6D    pop         ebx
 00666E6E    mov         esp,ebp
 00666E70    pop         ebp
 00666E71    ret
*}
end;

//00666E74
function TXMLDocument.GetStandAlone:DOMString;
begin
{*
 00666E74    push        ebx
 00666E75    push        esi
 00666E76    mov         esi,edx
 00666E78    mov         ebx,eax
 00666E7A    push        esi
 00666E7B    xor         ecx,ecx
 00666E7D    mov         dl,2
 00666E7F    mov         eax,ebx
 00666E81    call        TXMLDocument.GetPrologValue
 00666E86    pop         esi
 00666E87    pop         ebx
 00666E88    ret
*}
end;

//00666E8C
procedure TXMLDocument.SetStandAlone(const Value:Xmldom.DOMString);
begin
{*
 00666E8C    push        ebp
 00666E8D    mov         ebp,esp
 00666E8F    xor         ecx,ecx
 00666E91    push        ecx
 00666E92    push        ecx
 00666E93    push        ecx
 00666E94    push        ecx
 00666E95    push        ebx
 00666E96    push        esi
 00666E97    mov         esi,edx
 00666E99    mov         ebx,eax
 00666E9B    xor         eax,eax
 00666E9D    push        ebp
 00666E9E    push        666ED5
 00666EA3    push        dword ptr fs:[eax]
 00666EA6    mov         dword ptr fs:[eax],esp
 00666EA9    lea         eax,[ebp-10]
 00666EAC    mov         edx,esi
 00666EAE    call        @VarFromUStr
 00666EB3    lea         edx,[ebp-10]
 00666EB6    mov         cl,2
 00666EB8    mov         eax,ebx
 00666EBA    call        TXMLDocument.SetPrologValue
 00666EBF    xor         eax,eax
 00666EC1    pop         edx
 00666EC2    pop         ecx
 00666EC3    pop         ecx
 00666EC4    mov         dword ptr fs:[eax],edx
 00666EC7    push        666EDC
 00666ECC    lea         eax,[ebp-10]
 00666ECF    call        @VarClr
 00666ED4    ret
>00666ED5    jmp         @HandleFinally
>00666EDA    jmp         00666ECC
 00666EDC    pop         esi
 00666EDD    pop         ebx
 00666EDE    mov         esp,ebp
 00666EE0    pop         ebp
 00666EE1    ret
*}
end;

//00666EE4
procedure TXMLDocument.DoBeforeOpen;
begin
{*
 00666EE4    push        ebx
 00666EE5    cmp         word ptr [eax+9A],0
>00666EED    je          00666EFF
 00666EEF    mov         ebx,eax
 00666EF1    mov         edx,eax
 00666EF3    mov         eax,dword ptr [ebx+9C]
 00666EF9    call        dword ptr [ebx+98]
 00666EFF    pop         ebx
 00666F00    ret
*}
end;

//00666F04
procedure TXMLDocument.sub_00666F04;
begin
{*
 00666F04    push        ebx
 00666F05    cmp         word ptr [eax+0B2],0;TXMLDocument.?fB2:word
>00666F0D    je          00666F1F
 00666F0F    mov         ebx,eax
 00666F11    mov         edx,eax
 00666F13    mov         eax,dword ptr [ebx+0B4];TXMLDocument.?fB4:dword
 00666F19    call        dword ptr [ebx+0B0];TXMLDocument.FAfterOpen
 00666F1F    pop         ebx
 00666F20    ret
*}
end;

//00666F24
procedure TXMLDocument.DoAfterOpen;
begin
{*
 00666F24    push        ebx
 00666F25    cmp         word ptr [eax+0AA],0
>00666F2D    je          00666F3F
 00666F2F    mov         ebx,eax
 00666F31    mov         edx,eax
 00666F33    mov         eax,dword ptr [ebx+0AC]
 00666F39    call        dword ptr [ebx+0A8]
 00666F3F    pop         ebx
 00666F40    ret
*}
end;

//00666F44
procedure TXMLDocument.DoBeforeClose;
begin
{*
 00666F44    push        ebx
 00666F45    cmp         word ptr [eax+0A2],0
>00666F4D    je          00666F5F
 00666F4F    mov         ebx,eax
 00666F51    mov         edx,eax
 00666F53    mov         eax,dword ptr [ebx+0A4]
 00666F59    call        dword ptr [ebx+0A0]
 00666F5F    pop         ebx
 00666F60    ret
*}
end;

//00666F64
procedure TXMLDocument.DoNodeChange(const Node:XMLIntf.IXMLNode; ChangeType:TNodeChange; BeforeOperation:Boolean);
begin
{*
 00666F64    push        ebp
 00666F65    mov         ebp,esp
 00666F67    push        ebx
 00666F68    push        esi
 00666F69    push        edi
 00666F6A    mov         ebx,ecx
 00666F6C    mov         esi,edx
 00666F6E    mov         edi,eax
 00666F70    mov         dl,1
 00666F72    mov         eax,edi
 00666F74    call        TXMLDocument.SetModified
 00666F79    cmp         byte ptr [ebp+8],0
>00666F7D    je          00666F9B
 00666F7F    cmp         word ptr [edi+0C2],0
>00666F87    je          00666FB5
 00666F89    mov         ecx,ebx
 00666F8B    mov         edx,esi
 00666F8D    mov         eax,dword ptr [edi+0C4]
 00666F93    call        dword ptr [edi+0C0]
>00666F99    jmp         00666FB5
 00666F9B    cmp         word ptr [edi+0CA],0
>00666FA3    je          00666FB5
 00666FA5    mov         ecx,ebx
 00666FA7    mov         edx,esi
 00666FA9    mov         eax,dword ptr [edi+0CC]
 00666FAF    call        dword ptr [edi+0C8]
 00666FB5    pop         edi
 00666FB6    pop         esi
 00666FB7    pop         ebx
 00666FB8    pop         ebp
 00666FB9    ret         4
*}
end;

//00668D84
procedure TCalErrForm.FormCreate(Sender:TObject);
begin
{*
 00668D84    push        ebp
 00668D85    mov         ebp,esp
 00668D87    add         esp,0FFFFFFF0
 00668D8A    push        ebx
 00668D8B    xor         ecx,ecx
 00668D8D    mov         dword ptr [ebp-4],ecx
 00668D90    mov         dword ptr [ebp-10],ecx
 00668D93    mov         ebx,eax
 00668D95    xor         eax,eax
 00668D97    push        ebp
 00668D98    push        668DF7
 00668D9D    push        dword ptr fs:[eax]
 00668DA0    mov         dword ptr fs:[eax],esp
 00668DA3    lea         eax,[ebp-4]
 00668DA6    push        eax
 00668DA7    lea         edx,[ebp-10]
 00668DAA    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00668DAF    mov         eax,dword ptr [eax]
 00668DB1    call        005DDC74
 00668DB6    mov         eax,dword ptr [ebp-10]
 00668DB9    mov         dword ptr [ebp-0C],eax
 00668DBC    mov         byte ptr [ebp-8],11
 00668DC0    lea         edx,[ebp-0C]
 00668DC3    xor         ecx,ecx
 00668DC5    mov         eax,668E10;'Calendar error (%s)'
 00668DCA    call        Format
 00668DCF    mov         edx,dword ptr [ebp-4]
 00668DD2    mov         eax,ebx
 00668DD4    call        TControl.SetText
 00668DD9    xor         eax,eax
 00668DDB    pop         edx
 00668DDC    pop         ecx
 00668DDD    pop         ecx
 00668DDE    mov         dword ptr fs:[eax],edx
 00668DE1    push        668DFE
 00668DE6    lea         eax,[ebp-10]
 00668DE9    call        @UStrClr
 00668DEE    lea         eax,[ebp-4]
 00668DF1    call        @UStrClr
 00668DF6    ret
>00668DF7    jmp         @HandleFinally
>00668DFC    jmp         00668DE6
 00668DFE    pop         ebx
 00668DFF    mov         esp,ebp
 00668E01    pop         ebp
 00668E02    ret
*}
end;

//00668E38
procedure TCalErrForm.FormShow(Sender:TObject);
begin
{*
 00668E38    push        ebx
 00668E39    mov         ebx,eax
 00668E3B    mov         eax,[007C42C4];^gvar_007CA830
 00668E40    movzx       eax,byte ptr [eax]
 00668E43    imul        eax,eax,5
>00668E46    jno         00668E4D
 00668E48    call        @IntOver
 00668E4D    mov         edx,dword ptr [eax*4+7C0F74];^'The calendar settings of the USB License key and your PC ...
 00668E54    mov         eax,dword ptr [ebx+3C0];TCalErrForm.Label1:TLabel
 00668E5A    call        TControl.SetText
 00668E5F    mov         eax,[007C42C4];^gvar_007CA830
 00668E64    movzx       eax,byte ptr [eax]
 00668E67    imul        eax,eax,5
>00668E6A    jno         00668E71
 00668E6C    call        @IntOver
 00668E71    mov         edx,dword ptr [eax*4+7C0F78];^'If the calendar setting of your PC is wrong, correct it n...
 00668E78    mov         eax,dword ptr [ebx+3D0];TCalErrForm.StaticText1:TStaticText
 00668E7E    call        TControl.SetText
 00668E83    mov         eax,[007C42C4];^gvar_007CA830
 00668E88    movzx       eax,byte ptr [eax]
 00668E8B    imul        eax,eax,5
>00668E8E    jno         00668E95
 00668E90    call        @IntOver
 00668E95    mov         edx,dword ptr [eax*4+7C0F7C];^'If the calendar setting of your PC is correct, the USB li...
 00668E9C    mov         eax,dword ptr [ebx+3D4];TCalErrForm.StaticText2:TStaticText
 00668EA2    call        TControl.SetText
 00668EA7    mov         eax,[007C42C4];^gvar_007CA830
 00668EAC    movzx       eax,byte ptr [eax]
 00668EAF    imul        eax,eax,5
>00668EB2    jno         00668EB9
 00668EB4    call        @IntOver
 00668EB9    mov         edx,dword ptr [eax*4+7C0F80];^'WARNING! The USB key will become invalid within 14 days....
 00668EC0    mov         eax,dword ptr [ebx+3D8];TCalErrForm.StaticText3:TStaticText
 00668EC6    call        TControl.SetText
 00668ECB    mov         eax,[007C42C4];^gvar_007CA830
 00668ED0    movzx       eax,byte ptr [eax]
 00668ED3    imul        eax,eax,5
>00668ED6    jno         00668EDD
 00668ED8    call        @IntOver
 00668EDD    mov         edx,dword ptr [eax*4+7C0F84];^'If you do not want to use the software now, choose Cancel...
 00668EE4    mov         eax,dword ptr [ebx+3DC];TCalErrForm.StaticText4:TStaticText
 00668EEA    call        TControl.SetText
 00668EEF    pop         ebx
 00668EF0    ret
*}
end;

//006695D4
procedure sub_006695D4(?:TNewLicenseKey);
begin
{*
 006695D4    push        ebx
 006695D5    add         esp,0FFFFFFF0
 006695D8    mov         ebx,eax
 006695DA    call        00421148
 006695DF    fstp        qword ptr [esp+8]
 006695E3    wait
 006695E4    fld         qword ptr [esp+8]
 006695E8    fsub        dword ptr ds:[66962C];3:Single
 006695EE    fcomp       qword ptr [ebx+10]
 006695F1    wait
 006695F2    fnstsw      al
 006695F4    sahf
>006695F5    jae         00669613
 006695F7    fld         qword ptr [esp+8]
 006695FB    fadd        dword ptr ds:[66962C];3:Single
 00669601    fcomp       qword ptr [ebx+10]
 00669604    wait
 00669605    fnstsw      al
 00669607    sahf
>00669608    jbe         00669613
 0066960A    fld         qword ptr [ebx+10]
 0066960D    fstp        qword ptr [esp]
 00669610    wait
>00669611    jmp         00669622
 00669613    mov         eax,dword ptr [esp+8]
 00669617    mov         dword ptr [esp],eax
 0066961A    mov         eax,dword ptr [esp+0C]
 0066961E    mov         dword ptr [esp+4],eax
 00669622    fld         qword ptr [esp]
 00669625    add         esp,10
 00669628    pop         ebx
 00669629    ret
*}
end;

//00669630
{*function sub_00669630(?:TNewLicenseKey):?;
begin
 00669630    push        ebx
 00669631    add         esp,0FFFFFFF8
 00669634    mov         ebx,eax
 00669636    mov         cx,1
 0066963A    mov         dx,1
 0066963E    mov         ax,7DC
 00669642    call        00420F84
 00669647    fcomp       qword ptr [ebx+28]
 0066964A    wait
 0066964B    fnstsw      al
 0066964D    sahf
>0066964E    jae         0066965F
 00669650    mov         eax,dword ptr [ebx+28]
 00669653    mov         dword ptr [esp],eax
 00669656    mov         eax,dword ptr [ebx+2C]
 00669659    mov         dword ptr [esp+4],eax
>0066965D    jmp         0066966C
 0066965F    mov         eax,dword ptr [ebx+18]
 00669662    mov         dword ptr [esp],eax
 00669665    mov         eax,dword ptr [ebx+1C]
 00669668    mov         dword ptr [esp+4],eax
 0066966C    fld         qword ptr [esp]
 0066966F    pop         ecx
 00669670    pop         edx
 00669671    pop         ebx
 00669672    ret
end;*}

//00669674
{*procedure sub_00669674(?:?; ?:?);
begin
 00669674    push        ebp
 00669675    mov         ebp,esp
 00669677    add         esp,0FFFFFFF0
 0066967A    push        ebx
 0066967B    push        esi
 0066967C    xor         ecx,ecx
 0066967E    mov         dword ptr [ebp-4],ecx
 00669681    mov         esi,edx
 00669683    mov         ebx,eax
 00669685    xor         eax,eax
 00669687    push        ebp
 00669688    push        6696D1
 0066968D    push        dword ptr fs:[eax]
 00669690    mov         dword ptr fs:[eax],esp
 00669693    mov         eax,ebx
 00669695    call        00669630
 0066969A    fstp        qword ptr [ebp-10]
 0066969D    wait
 0066969E    push        dword ptr [ebp-0C]
 006696A1    push        dword ptr [ebp-10]
 006696A4    lea         edx,[ebp-4]
 006696A7    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 006696AC    call        004220EC
 006696B1    mov         eax,esi
 006696B3    mov         edx,dword ptr [ebp-4]
 006696B6    call        @UStrAsg
 006696BB    xor         eax,eax
 006696BD    pop         edx
 006696BE    pop         ecx
 006696BF    pop         ecx
 006696C0    mov         dword ptr fs:[eax],edx
 006696C3    push        6696D8
 006696C8    lea         eax,[ebp-4]
 006696CB    call        @UStrClr
 006696D0    ret
>006696D1    jmp         @HandleFinally
>006696D6    jmp         006696C8
 006696D8    pop         esi
 006696D9    pop         ebx
 006696DA    mov         esp,ebp
 006696DC    pop         ebp
 006696DD    ret
end;*}

//006696E0
{*function sub_006696E0(?:TNewLicenseKey; ?:?):?;
begin
 006696E0    push        ebx
 006696E1    push        esi
 006696E2    mov         esi,edx
 006696E4    mov         ebx,eax
 006696E6    xor         eax,eax
 006696E8    mov         dword ptr [ebx+0C],eax
 006696EB    xor         eax,eax
 006696ED    mov         dword ptr [ebx+4],eax
 006696F0    mov         eax,0FFFF0000
 006696F5    or          eax,esi
 006696F7    or          eax,4000
 006696FC    or          eax,800
 00669701    lea         edx,[ebx+4]
 00669704    push        edx
 00669705    mov         edx,dword ptr ds:[7C10A0];^gvar_006691F8
 0066970B    push        edx
 0066970C    push        eax
 0066970D    call        005DE4AB
 00669712    test        eax,eax
>00669714    jne         00669720
 00669716    mov         dword ptr [ebx+0C],1
 0066971D    pop         esi
 0066971E    pop         ebx
 0066971F    ret
 00669720    mov         eax,esi
 00669722    lea         edx,[ebx+4]
 00669725    push        edx
 00669726    mov         edx,dword ptr ds:[7C10A0];^gvar_006691F8
 0066972C    push        edx
 0066972D    push        eax
 0066972E    call        005DE4AB
 00669733    test        eax,eax
>00669735    jne         0066973E
 00669737    mov         dword ptr [ebx+0C],2
 0066973E    pop         esi
 0066973F    pop         ebx
 00669740    ret
end;*}

//00669744
procedure sub_00669744(?:TNewLicenseKey);
begin
{*
 00669744    push        ebx
 00669745    mov         ebx,eax
 00669747    mov         eax,dword ptr [ebx+4]
 0066974A    push        eax
 0066974B    call        005DE5BB
 00669750    xor         edx,edx
 00669752    mov         dword ptr [ebx+4],edx
 00669755    xor         edx,edx
 00669757    mov         dword ptr [ebx+0C],edx
 0066975A    pop         ebx
 0066975B    ret
*}
end;

//0066975C
{*function sub_0066975C(?:TNewLicenseKey):?;
begin
 0066975C    push        ebx
 0066975D    push        esi
 0066975E    mov         ebx,eax
 00669760    mov         edx,1
 00669765    mov         eax,ebx
 00669767    call        006696E0
 0066976C    mov         esi,eax
 0066976E    mov         eax,dword ptr [ebx+4]
 00669771    push        eax
 00669772    call        005DE5BB
 00669777    mov         eax,esi
 00669779    pop         esi
 0066977A    pop         ebx
 0066977B    ret
end;*}

//0066977C
{*function sub_0066977C(?:TNewLicenseKey):?;
begin
 0066977C    push        ebp
 0066977D    mov         ebp,esp
 0066977F    mov         ecx,8
 00669784    push        0
 00669786    push        0
 00669788    dec         ecx
>00669789    jne         00669784
 0066978B    push        ebx
 0066978C    push        esi
 0066978D    mov         ebx,eax
 0066978F    xor         eax,eax
 00669791    push        ebp
 00669792    push        669984
 00669797    push        dword ptr fs:[eax]
 0066979A    mov         dword ptr fs:[eax],esp
 0066979D    xor         eax,eax
 0066979F    mov         dword ptr [ebp-10],eax
 006697A2    lea         eax,[ebp-10]
 006697A5    push        eax
 006697A6    push        669994
 006697AB    mov         eax,dword ptr [ebx+4]
 006697AE    push        eax
 006697AF    call        005DF10B
 006697B4    mov         dword ptr [ebp-0C],eax
 006697B7    cmp         dword ptr [ebp-0C],0
>006697BB    je          006697C5
 006697BD    mov         ebx,dword ptr [ebp-0C]
>006697C0    jmp         0066991E
 006697C5    xor         eax,eax
 006697C7    push        ebp
 006697C8    push        669914
 006697CD    push        dword ptr fs:[eax]
 006697D0    mov         dword ptr fs:[eax],esp
 006697D3    xor         ecx,ecx
 006697D5    mov         dl,1
 006697D7    mov         eax,[0065E1C8];TXMLDocument
 006697DC    call        TXMLDocument.Create;TXMLDocument.Create
 006697E1    mov         edx,eax
 006697E3    test        edx,edx
>006697E5    je          006697ED
 006697E7    sub         edx,0FFFFFF24
 006697ED    lea         eax,[ebp-4]
 006697F0    call        @IntfCopy
 006697F5    xor         eax,eax
 006697F7    push        ebp
 006697F8    push        6698F6
 006697FD    push        dword ptr fs:[eax]
 00669800    mov         dword ptr fs:[eax],esp
 00669803    mov         eax,dword ptr [ebp-4]
 00669806    mov         edx,dword ptr [eax]
 00669808    call        dword ptr [edx+48]
 0066980B    push        eax
 0066980C    lea         eax,[ebp-14]
 0066980F    mov         edx,dword ptr [ebp-10]
 00669812    call        @UStrFromPChar
 00669817    mov         edx,dword ptr [ebp-14]
 0066981A    pop         eax
 0066981B    mov         ecx,dword ptr [eax]
 0066981D    call        dword ptr [ecx+30]
 00669820    mov         dl,1
 00669822    mov         eax,dword ptr [ebp-4]
 00669825    mov         ecx,dword ptr [eax]
 00669827    call        dword ptr [ecx+4C]
 0066982A    lea         edx,[ebp-8]
 0066982D    mov         eax,dword ptr [ebp-4]
 00669830    mov         ecx,dword ptr [eax]
 00669832    call        dword ptr [ecx+18]
 00669835    cmp         dword ptr [ebp-8],0
>00669839    je          00669861
 0066983B    lea         edx,[ebp-1C]
 0066983E    mov         eax,dword ptr [ebp-8]
 00669841    mov         ecx,dword ptr [eax]
 00669843    call        dword ptr [ecx+14]
 00669846    mov         eax,dword ptr [ebp-1C]
 00669849    lea         ecx,[ebp-18]
 0066984C    mov         edx,6699C0;'keyspec'
 00669851    mov         esi,dword ptr [eax]
 00669853    call        dword ptr [esi+38]
 00669856    mov         edx,dword ptr [ebp-18]
 00669859    lea         eax,[ebp-8]
 0066985C    call        @IntfCopy
 00669861    cmp         dword ptr [ebp-8],0
>00669865    je          0066988D
 00669867    lea         edx,[ebp-24]
 0066986A    mov         eax,dword ptr [ebp-8]
 0066986D    mov         ecx,dword ptr [eax]
 0066986F    call        dword ptr [ecx+14]
 00669872    mov         eax,dword ptr [ebp-24]
 00669875    lea         ecx,[ebp-20]
 00669878    mov         edx,6699DC;'hasp'
 0066987D    mov         esi,dword ptr [eax]
 0066987F    call        dword ptr [esi+38]
 00669882    mov         edx,dword ptr [ebp-20]
 00669885    lea         eax,[ebp-8]
 00669888    call        @IntfCopy
 0066988D    cmp         dword ptr [ebp-8],0
>00669891    je          006698B9
 00669893    lea         edx,[ebp-2C]
 00669896    mov         eax,dword ptr [ebp-8]
 00669899    mov         ecx,dword ptr [eax]
 0066989B    call        dword ptr [ecx+14]
 0066989E    mov         eax,dword ptr [ebp-2C]
 006698A1    lea         ecx,[ebp-28]
 006698A4    mov         edx,6699F4;'haspid'
 006698A9    mov         esi,dword ptr [eax]
 006698AB    call        dword ptr [esi+38]
 006698AE    mov         edx,dword ptr [ebp-28]
 006698B1    lea         eax,[ebp-8]
 006698B4    call        @IntfCopy
 006698B9    cmp         dword ptr [ebp-8],0
>006698BD    je          006698E0
 006698BF    lea         edx,[ebp-40]
 006698C2    mov         eax,dword ptr [ebp-8]
 006698C5    mov         ecx,dword ptr [eax]
 006698C7    call        dword ptr [ecx+3C]
 006698CA    lea         edx,[ebp-40]
 006698CD    lea         eax,[ebp-30]
 006698D0    call        @VarToUStr
 006698D5    mov         eax,dword ptr [ebp-30]
 006698D8    call        StrToInt
 006698DD    mov         dword ptr [ebx+8],eax
 006698E0    xor         eax,eax
 006698E2    pop         edx
 006698E3    pop         ecx
 006698E4    pop         ecx
 006698E5    mov         dword ptr fs:[eax],edx
 006698E8    push        6698FD
 006698ED    lea         eax,[ebp-4]
 006698F0    call        @IntfClear
 006698F5    ret
>006698F6    jmp         @HandleFinally
>006698FB    jmp         006698ED
 006698FD    xor         eax,eax
 006698FF    pop         edx
 00669900    pop         ecx
 00669901    pop         ecx
 00669902    mov         dword ptr fs:[eax],edx
 00669905    push        66991B
 0066990A    mov         eax,dword ptr [ebp-10]
 0066990D    push        eax
 0066990E    call        005DE7CB
 00669913    ret
>00669914    jmp         @HandleFinally
>00669919    jmp         0066990A
 0066991B    mov         ebx,dword ptr [ebp-0C]
 0066991E    xor         eax,eax
 00669920    pop         edx
 00669921    pop         ecx
 00669922    pop         ecx
 00669923    mov         dword ptr fs:[eax],edx
 00669926    push        66998B
 0066992B    lea         eax,[ebp-40]
 0066992E    call        @VarClr
 00669933    lea         eax,[ebp-30]
 00669936    call        @UStrClr
 0066993B    lea         eax,[ebp-2C]
 0066993E    call        @IntfClear
 00669943    lea         eax,[ebp-28]
 00669946    call        @IntfClear
 0066994B    lea         eax,[ebp-24]
 0066994E    call        @IntfClear
 00669953    lea         eax,[ebp-20]
 00669956    call        @IntfClear
 0066995B    lea         eax,[ebp-1C]
 0066995E    call        @IntfClear
 00669963    lea         eax,[ebp-18]
 00669966    call        @IntfClear
 0066996B    lea         eax,[ebp-14]
 0066996E    call        @UStrClr
 00669973    lea         eax,[ebp-8]
 00669976    call        @IntfClear
 0066997B    lea         eax,[ebp-4]
 0066997E    call        @IntfClear
 00669983    ret
>00669984    jmp         @HandleFinally
>00669989    jmp         0066992B
 0066998B    mov         eax,ebx
 0066998D    pop         esi
 0066998E    pop         ebx
 0066998F    mov         esp,ebp
 00669991    pop         ebp
 00669992    ret
end;*}

//00669A04
{*function sub_00669A04(?:TNewLicenseKey):?;
begin
 00669A04    push        ebx
 00669A05    push        esi
 00669A06    add         esp,0FFFFFFE0
 00669A09    mov         esi,eax
 00669A0B    xor         eax,eax
 00669A0D    mov         dword ptr [esi+10],eax
 00669A10    mov         dword ptr [esi+14],eax
 00669A13    push        esp
 00669A14    mov         eax,dword ptr [esi+4]
 00669A17    push        eax
 00669A18    call        005DF64B
 00669A1D    mov         ebx,eax
 00669A1F    test        ebx,ebx
>00669A21    je          00669A27
 00669A23    mov         eax,ebx
>00669A25    jmp         00669A99
 00669A27    lea         eax,[esp+1C]
 00669A2B    push        eax
 00669A2C    lea         eax,[esp+1C]
 00669A30    push        eax
 00669A31    lea         eax,[esp+1C]
 00669A35    push        eax
 00669A36    lea         eax,[esp+14]
 00669A3A    push        eax
 00669A3B    lea         eax,[esp+1C]
 00669A3F    push        eax
 00669A40    lea         eax,[esp+24]
 00669A44    push        eax
 00669A45    push        dword ptr [esp+1C]
 00669A49    push        dword ptr [esp+1C]
 00669A4D    call        005DF33B
 00669A52    mov         ebx,eax
 00669A54    test        ebx,ebx
>00669A56    je          00669A5C
 00669A58    mov         eax,ebx
>00669A5A    jmp         00669A99
 00669A5C    mov         ecx,dword ptr [esp+10]
 00669A60    cmp         ecx,0FFFF
>00669A66    jbe         00669A6D
 00669A68    call        @BoundErr
 00669A6D    mov         edx,dword ptr [esp+0C]
 00669A71    cmp         edx,0FFFF
>00669A77    jbe         00669A7E
 00669A79    call        @BoundErr
 00669A7E    mov         eax,dword ptr [esp+8]
 00669A82    cmp         eax,0FFFF
>00669A87    jbe         00669A8E
 00669A89    call        @BoundErr
 00669A8E    call        00420F84
 00669A93    fstp        qword ptr [esi+10]
 00669A96    wait
 00669A97    mov         eax,ebx
 00669A99    add         esp,20
 00669A9C    pop         esi
 00669A9D    pop         ebx
 00669A9E    ret
end;*}

//00669AA0
{*function sub_00669AA0(?:TNewLicenseKey):?;
begin
 00669AA0    push        ebp
 00669AA1    mov         ebp,esp
 00669AA3    mov         ecx,11
 00669AA8    push        0
 00669AAA    push        0
 00669AAC    dec         ecx
>00669AAD    jne         00669AA8
 00669AAF    push        ecx
 00669AB0    push        ebx
 00669AB1    mov         dword ptr [ebp-0C],eax
 00669AB4    xor         eax,eax
 00669AB6    push        ebp
 00669AB7    push        669E8B
 00669ABC    push        dword ptr fs:[eax]
 00669ABF    mov         dword ptr fs:[eax],esp
 00669AC2    mov         dword ptr [ebp-18],0
 00669AC9    mov         dword ptr [ebp-14],0
 00669AD0    xor         eax,eax
 00669AD2    mov         dword ptr [ebp-34],eax
 00669AD5    xor         eax,eax
 00669AD7    push        ebp
 00669AD8    push        669DE3
 00669ADD    push        dword ptr fs:[eax]
 00669AE0    mov         dword ptr fs:[eax],esp
 00669AE3    lea         eax,[ebp-34]
 00669AE6    push        eax
 00669AE7    push        669EA0
 00669AEC    mov         eax,dword ptr [ebp-0C]
 00669AEF    mov         eax,dword ptr [eax+4]
 00669AF2    push        eax
 00669AF3    call        005DF10B
 00669AF8    mov         ebx,eax
 00669AFA    test        ebx,ebx
>00669AFC    je          00669B0B
 00669AFE    mov         dword ptr [ebp-10],ebx
 00669B01    call        @TryFinallyExit
>00669B06    jmp         00669DEA
 00669B0B    mov         eax,dword ptr [ebp-0C]
 00669B0E    cmp         dword ptr [eax+0C],1
>00669B12    jne         00669C1A
 00669B18    xor         ecx,ecx
 00669B1A    mov         dl,1
 00669B1C    mov         eax,[0065E1C8];TXMLDocument
 00669B21    call        TXMLDocument.Create;TXMLDocument.Create
 00669B26    mov         edx,eax
 00669B28    test        edx,edx
>00669B2A    je          00669B32
 00669B2C    sub         edx,0FFFFFF24
 00669B32    lea         eax,[ebp-4]
 00669B35    call        @IntfCopy
 00669B3A    xor         eax,eax
 00669B3C    push        ebp
 00669B3D    push        669C13
 00669B42    push        dword ptr fs:[eax]
 00669B45    mov         dword ptr fs:[eax],esp
 00669B48    mov         eax,dword ptr [ebp-4]
 00669B4B    mov         edx,dword ptr [eax]
 00669B4D    call        dword ptr [edx+48]
 00669B50    push        eax
 00669B51    lea         eax,[ebp-38]
 00669B54    mov         edx,dword ptr [ebp-34]
 00669B57    call        @UStrFromPChar
 00669B5C    mov         edx,dword ptr [ebp-38]
 00669B5F    pop         eax
 00669B60    mov         ecx,dword ptr [eax]
 00669B62    call        dword ptr [ecx+30]
 00669B65    mov         dl,1
 00669B67    mov         eax,dword ptr [ebp-4]
 00669B6A    mov         ecx,dword ptr [eax]
 00669B6C    call        dword ptr [ecx+4C]
 00669B6F    lea         edx,[ebp-8]
 00669B72    mov         eax,dword ptr [ebp-4]
 00669B75    mov         ecx,dword ptr [eax]
 00669B77    call        dword ptr [ecx+18]
 00669B7A    cmp         dword ptr [ebp-8],0
>00669B7E    je          00669BA6
 00669B80    lea         edx,[ebp-40]
 00669B83    mov         eax,dword ptr [ebp-8]
 00669B86    mov         ecx,dword ptr [eax]
 00669B88    call        dword ptr [ecx+14]
 00669B8B    mov         eax,dword ptr [ebp-40]
 00669B8E    lea         ecx,[ebp-3C]
 00669B91    mov         edx,669ED0;'feature'
 00669B96    mov         ebx,dword ptr [eax]
 00669B98    call        dword ptr [ebx+38]
 00669B9B    mov         edx,dword ptr [ebp-3C]
 00669B9E    lea         eax,[ebp-8]
 00669BA1    call        @IntfCopy
 00669BA6    cmp         dword ptr [ebp-8],0
>00669BAA    je          00669BD2
 00669BAC    lea         edx,[ebp-48]
 00669BAF    mov         eax,dword ptr [ebp-8]
 00669BB2    mov         ecx,dword ptr [eax]
 00669BB4    call        dword ptr [ecx+14]
 00669BB7    mov         eax,dword ptr [ebp-48]
 00669BBA    lea         ecx,[ebp-44]
 00669BBD    mov         edx,669EEC;'expirationdate'
 00669BC2    mov         ebx,dword ptr [eax]
 00669BC4    call        dword ptr [ebx+38]
 00669BC7    mov         edx,dword ptr [ebp-44]
 00669BCA    lea         eax,[ebp-8]
 00669BCD    call        @IntfCopy
 00669BD2    cmp         dword ptr [ebp-8],0
>00669BD6    je          00669BFD
 00669BD8    lea         edx,[ebp-5C]
 00669BDB    mov         eax,dword ptr [ebp-8]
 00669BDE    mov         ecx,dword ptr [eax]
 00669BE0    call        dword ptr [ecx+3C]
 00669BE3    lea         edx,[ebp-5C]
 00669BE6    lea         eax,[ebp-4C]
 00669BE9    call        @VarToUStr
 00669BEE    mov         eax,dword ptr [ebp-4C]
 00669BF1    call        StrToInt
 00669BF6    cdq
 00669BF7    mov         dword ptr [ebp-18],eax
 00669BFA    mov         dword ptr [ebp-14],edx
 00669BFD    xor         eax,eax
 00669BFF    pop         edx
 00669C00    pop         ecx
 00669C01    pop         ecx
 00669C02    mov         dword ptr fs:[eax],edx
 00669C05    push        669C1A
 00669C0A    lea         eax,[ebp-4]
 00669C0D    call        @IntfClear
 00669C12    ret
>00669C13    jmp         @HandleFinally
>00669C18    jmp         00669C0A
 00669C1A    mov         eax,dword ptr [ebp-0C]
 00669C1D    cmp         dword ptr [eax+0C],2
>00669C21    jne         00669D5B
 00669C27    xor         ecx,ecx
 00669C29    mov         dl,1
 00669C2B    mov         eax,[0065E1C8];TXMLDocument
 00669C30    call        TXMLDocument.Create;TXMLDocument.Create
 00669C35    mov         edx,eax
 00669C37    test        edx,edx
>00669C39    je          00669C41
 00669C3B    sub         edx,0FFFFFF24
 00669C41    lea         eax,[ebp-4]
 00669C44    call        @IntfCopy
 00669C49    xor         eax,eax
 00669C4B    push        ebp
 00669C4C    push        669D54
 00669C51    push        dword ptr fs:[eax]
 00669C54    mov         dword ptr fs:[eax],esp
 00669C57    mov         eax,dword ptr [ebp-4]
 00669C5A    mov         edx,dword ptr [eax]
 00669C5C    call        dword ptr [edx+48]
 00669C5F    push        eax
 00669C60    lea         eax,[ebp-60]
 00669C63    mov         edx,dword ptr [ebp-34]
 00669C66    call        @UStrFromPChar
 00669C6B    mov         edx,dword ptr [ebp-60]
 00669C6E    pop         eax
 00669C6F    mov         ecx,dword ptr [eax]
 00669C71    call        dword ptr [ecx+30]
 00669C74    mov         dl,1
 00669C76    mov         eax,dword ptr [ebp-4]
 00669C79    mov         ecx,dword ptr [eax]
 00669C7B    call        dword ptr [ecx+4C]
 00669C7E    lea         edx,[ebp-8]
 00669C81    mov         eax,dword ptr [ebp-4]
 00669C84    mov         ecx,dword ptr [eax]
 00669C86    call        dword ptr [ecx+18]
 00669C89    cmp         dword ptr [ebp-8],0
>00669C8D    je          00669CB5
 00669C8F    lea         edx,[ebp-68]
 00669C92    mov         eax,dword ptr [ebp-8]
 00669C95    mov         ecx,dword ptr [eax]
 00669C97    call        dword ptr [ecx+14]
 00669C9A    mov         eax,dword ptr [ebp-68]
 00669C9D    lea         ecx,[ebp-64]
 00669CA0    mov         edx,669ED0;'feature'
 00669CA5    mov         ebx,dword ptr [eax]
 00669CA7    call        dword ptr [ebx+38]
 00669CAA    mov         edx,dword ptr [ebp-64]
 00669CAD    lea         eax,[ebp-8]
 00669CB0    call        @IntfCopy
 00669CB5    cmp         dword ptr [ebp-8],0
>00669CB9    je          00669CE1
 00669CBB    lea         edx,[ebp-70]
 00669CBE    mov         eax,dword ptr [ebp-8]
 00669CC1    mov         ecx,dword ptr [eax]
 00669CC3    call        dword ptr [ecx+14]
 00669CC6    mov         eax,dword ptr [ebp-70]
 00669CC9    lea         ecx,[ebp-6C]
 00669CCC    mov         edx,669F18;'license'
 00669CD1    mov         ebx,dword ptr [eax]
 00669CD3    call        dword ptr [ebx+38]
 00669CD6    mov         edx,dword ptr [ebp-6C]
 00669CD9    lea         eax,[ebp-8]
 00669CDC    call        @IntfCopy
 00669CE1    cmp         dword ptr [ebp-8],0
>00669CE5    je          00669D0D
 00669CE7    lea         edx,[ebp-78]
 00669CEA    mov         eax,dword ptr [ebp-8]
 00669CED    mov         ecx,dword ptr [eax]
 00669CEF    call        dword ptr [ecx+14]
 00669CF2    mov         eax,dword ptr [ebp-78]
 00669CF5    lea         ecx,[ebp-74]
 00669CF8    mov         edx,669F34;'exp_date'
 00669CFD    mov         ebx,dword ptr [eax]
 00669CFF    call        dword ptr [ebx+38]
 00669D02    mov         edx,dword ptr [ebp-74]
 00669D05    lea         eax,[ebp-8]
 00669D08    call        @IntfCopy
 00669D0D    cmp         dword ptr [ebp-8],0
>00669D11    je          00669D3E
 00669D13    lea         edx,[ebp-8C]
 00669D19    mov         eax,dword ptr [ebp-8]
 00669D1C    mov         ecx,dword ptr [eax]
 00669D1E    call        dword ptr [ecx+3C]
 00669D21    lea         edx,[ebp-8C]
 00669D27    lea         eax,[ebp-7C]
 00669D2A    call        @VarToUStr
 00669D2F    mov         eax,dword ptr [ebp-7C]
 00669D32    call        StrToInt
 00669D37    cdq
 00669D38    mov         dword ptr [ebp-18],eax
 00669D3B    mov         dword ptr [ebp-14],edx
 00669D3E    xor         eax,eax
 00669D40    pop         edx
 00669D41    pop         ecx
 00669D42    pop         ecx
 00669D43    mov         dword ptr fs:[eax],edx
 00669D46    push        669D5B
 00669D4B    lea         eax,[ebp-4]
 00669D4E    call        @IntfClear
 00669D53    ret
>00669D54    jmp         @HandleFinally
>00669D59    jmp         00669D4B
 00669D5B    lea         eax,[ebp-30]
 00669D5E    push        eax
 00669D5F    lea         eax,[ebp-2C]
 00669D62    push        eax
 00669D63    lea         eax,[ebp-28]
 00669D66    push        eax
 00669D67    lea         eax,[ebp-1C]
 00669D6A    push        eax
 00669D6B    lea         eax,[ebp-20]
 00669D6E    push        eax
 00669D6F    lea         eax,[ebp-24]
 00669D72    push        eax
 00669D73    push        dword ptr [ebp-14]
 00669D76    push        dword ptr [ebp-18]
 00669D79    call        005DF33B
 00669D7E    mov         ebx,eax
 00669D80    test        ebx,ebx
>00669D82    je          00669D8E
 00669D84    mov         dword ptr [ebp-10],ebx
 00669D87    call        @TryFinallyExit
>00669D8C    jmp         00669DEA
 00669D8E    mov         ecx,dword ptr [ebp-24]
 00669D91    cmp         ecx,0FFFF
>00669D97    jbe         00669D9E
 00669D99    call        @BoundErr
 00669D9E    mov         edx,dword ptr [ebp-20]
 00669DA1    cmp         edx,0FFFF
>00669DA7    jbe         00669DAE
 00669DA9    call        @BoundErr
 00669DAE    mov         eax,dword ptr [ebp-1C]
 00669DB1    cmp         eax,0FFFF
>00669DB6    jbe         00669DBD
 00669DB8    call        @BoundErr
 00669DBD    call        00420F84
 00669DC2    mov         eax,dword ptr [ebp-0C]
 00669DC5    fstp        qword ptr [eax+18]
 00669DC8    wait
 00669DC9    mov         dword ptr [ebp-10],ebx
 00669DCC    xor         eax,eax
 00669DCE    pop         edx
 00669DCF    pop         ecx
 00669DD0    pop         ecx
 00669DD1    mov         dword ptr fs:[eax],edx
 00669DD4    push        669DEA
 00669DD9    mov         eax,dword ptr [ebp-34]
 00669DDC    push        eax
 00669DDD    call        005DE7CB
 00669DE2    ret
>00669DE3    jmp         @HandleFinally
>00669DE8    jmp         00669DD9
 00669DEA    xor         eax,eax
 00669DEC    pop         edx
 00669DED    pop         ecx
 00669DEE    pop         ecx
 00669DEF    mov         dword ptr fs:[eax],edx
 00669DF2    push        669E95
 00669DF7    lea         eax,[ebp-8C]
 00669DFD    call        @VarClr
 00669E02    lea         eax,[ebp-7C]
 00669E05    call        @UStrClr
 00669E0A    lea         eax,[ebp-78]
 00669E0D    call        @IntfClear
 00669E12    lea         eax,[ebp-74]
 00669E15    call        @IntfClear
 00669E1A    lea         eax,[ebp-70]
 00669E1D    call        @IntfClear
 00669E22    lea         eax,[ebp-6C]
 00669E25    call        @IntfClear
 00669E2A    lea         eax,[ebp-68]
 00669E2D    call        @IntfClear
 00669E32    lea         eax,[ebp-64]
 00669E35    call        @IntfClear
 00669E3A    lea         eax,[ebp-60]
 00669E3D    call        @UStrClr
 00669E42    lea         eax,[ebp-5C]
 00669E45    call        @VarClr
 00669E4A    lea         eax,[ebp-4C]
 00669E4D    call        @UStrClr
 00669E52    lea         eax,[ebp-48]
 00669E55    call        @IntfClear
 00669E5A    lea         eax,[ebp-44]
 00669E5D    call        @IntfClear
 00669E62    lea         eax,[ebp-40]
 00669E65    call        @IntfClear
 00669E6A    lea         eax,[ebp-3C]
 00669E6D    call        @IntfClear
 00669E72    lea         eax,[ebp-38]
 00669E75    call        @UStrClr
 00669E7A    lea         eax,[ebp-8]
 00669E7D    call        @IntfClear
 00669E82    lea         eax,[ebp-4]
 00669E85    call        @IntfClear
 00669E8A    ret
>00669E8B    jmp         @HandleFinally
>00669E90    jmp         00669DF7
 00669E95    mov         eax,dword ptr [ebp-10]
 00669E98    pop         ebx
 00669E99    mov         esp,ebp
 00669E9B    pop         ebp
 00669E9C    ret
end;*}

//0066A090
{*function sub_0066A090(?:TNewLicenseKey):?;
begin
 0066A090    push        ebp
 0066A091    mov         ebp,esp
 0066A093    mov         ecx,15
 0066A098    push        0
 0066A09A    push        0
 0066A09C    dec         ecx
>0066A09D    jne         0066A098
 0066A09F    push        ebx
 0066A0A0    push        esi
 0066A0A1    push        edi
 0066A0A2    mov         dword ptr [ebp-20],eax
 0066A0A5    xor         eax,eax
 0066A0A7    push        ebp
 0066A0A8    push        66A502
 0066A0AD    push        dword ptr fs:[eax]
 0066A0B0    mov         dword ptr fs:[eax],esp
 0066A0B3    xor         eax,eax
 0066A0B5    mov         dword ptr [ebp-28],eax
 0066A0B8    xor         eax,eax
 0066A0BA    mov         dword ptr [ebp-2C],eax
 0066A0BD    lea         eax,[ebp-28]
 0066A0C0    push        eax
 0066A0C1    mov         eax,[007C10A0];^gvar_006691F8
 0066A0C6    push        eax
 0066A0C7    mov         eax,[007C10A8];^gvar_00669F80
 0066A0CC    push        eax
 0066A0CD    mov         eax,[007C10A4];^gvar_00669F48
 0066A0D2    push        eax
 0066A0D3    call        005DFA6B
 0066A0D8    mov         dword ptr [ebp-24],eax
 0066A0DB    cmp         dword ptr [ebp-24],0
>0066A0DF    je          0066A0E9
 0066A0E1    mov         ebx,dword ptr [ebp-24]
>0066A0E4    jmp         0066A469
 0066A0E9    xor         eax,eax
 0066A0EB    push        ebp
 0066A0EC    push        66A45F
 0066A0F1    push        dword ptr fs:[eax]
 0066A0F4    mov         dword ptr fs:[eax],esp
 0066A0F7    xor         ecx,ecx
 0066A0F9    mov         dl,1
 0066A0FB    mov         eax,[0065E1C8];TXMLDocument
 0066A100    call        TXMLDocument.Create;TXMLDocument.Create
 0066A105    mov         edx,eax
 0066A107    test        edx,edx
>0066A109    je          0066A111
 0066A10B    sub         edx,0FFFFFF24
 0066A111    lea         eax,[ebp-4]
 0066A114    call        @IntfCopy
 0066A119    xor         eax,eax
 0066A11B    push        ebp
 0066A11C    push        66A38D
 0066A121    push        dword ptr fs:[eax]
 0066A124    mov         dword ptr fs:[eax],esp
 0066A127    mov         eax,dword ptr [ebp-4]
 0066A12A    mov         edx,dword ptr [eax]
 0066A12C    call        dword ptr [edx+48]
 0066A12F    push        eax
 0066A130    lea         eax,[ebp-54]
 0066A133    mov         edx,dword ptr [ebp-28]
 0066A136    call        @UStrFromPChar
 0066A13B    mov         edx,dword ptr [ebp-54]
 0066A13E    pop         eax
 0066A13F    mov         ecx,dword ptr [eax]
 0066A141    call        dword ptr [ecx+30]
 0066A144    mov         dl,1
 0066A146    mov         eax,dword ptr [ebp-4]
 0066A149    mov         ecx,dword ptr [eax]
 0066A14B    call        dword ptr [ecx+4C]
 0066A14E    lea         edx,[ebp-8]
 0066A151    mov         eax,dword ptr [ebp-4]
 0066A154    mov         ecx,dword ptr [eax]
 0066A156    call        dword ptr [ecx+18]
 0066A159    cmp         dword ptr [ebp-8],0
>0066A15D    je          0066A175
 0066A15F    lea         edx,[ebp-58]
 0066A162    mov         eax,dword ptr [ebp-8]
 0066A165    mov         ecx,dword ptr [eax]
 0066A167    call        dword ptr [ecx+14]
 0066A16A    mov         eax,dword ptr [ebp-58]
 0066A16D    mov         edx,dword ptr [eax]
 0066A16F    call        dword ptr [edx+0C]
 0066A172    mov         dword ptr [ebp-2C],eax
 0066A175    mov         eax,dword ptr [ebp-2C]
 0066A178    push        eax
 0066A179    lea         eax,[ebp-1C]
 0066A17C    mov         ecx,1
 0066A181    mov         edx,dword ptr ds:[66AA60];TFeatArr
 0066A187    call        @DynArraySetLength
 0066A18C    add         esp,4
 0066A18F    mov         esi,dword ptr [ebp-2C]
 0066A192    sub         esi,1
>0066A195    jno         0066A19C
 0066A197    call        @IntOver
 0066A19C    test        esi,esi
>0066A19E    jl          0066A2E6
 0066A1A4    inc         esi
 0066A1A5    xor         ebx,ebx
 0066A1A7    lea         edx,[ebp-5C]
 0066A1AA    mov         eax,dword ptr [ebp-8]
 0066A1AD    mov         ecx,dword ptr [eax]
 0066A1AF    call        dword ptr [ecx+14]
 0066A1B2    mov         eax,dword ptr [ebp-5C]
 0066A1B5    push        eax
 0066A1B6    lea         eax,[ebp-6C]
 0066A1B9    mov         edx,ebx
 0066A1BB    mov         cl,0FC
 0066A1BD    call        @OleVarFromInt
 0066A1C2    lea         edx,[ebp-6C]
 0066A1C5    lea         ecx,[ebp-0C]
 0066A1C8    pop         eax
 0066A1C9    mov         edi,dword ptr [eax]
 0066A1CB    call        dword ptr [edi+10]
 0066A1CE    cmp         dword ptr [ebp-0C],0
>0066A1D2    je          0066A2DE
 0066A1D8    lea         ecx,[ebp-7C]
 0066A1DB    mov         edx,66A524;'id'
 0066A1E0    mov         eax,dword ptr [ebp-0C]
 0066A1E3    mov         edi,dword ptr [eax]
 0066A1E5    call        dword ptr [edi+0C]
 0066A1E8    lea         eax,[ebp-7C]
 0066A1EB    call        @VarToInteger
 0066A1F0    mov         edx,dword ptr [ebp-1C]
 0066A1F3    test        edx,edx
>0066A1F5    je          0066A1FC
 0066A1F7    cmp         ebx,dword ptr [edx-4]
>0066A1FA    jb          0066A201
 0066A1FC    call        @BoundErr
 0066A201    mov         ecx,ebx
 0066A203    add         ecx,ecx
 0066A205    mov         dword ptr [edx+ecx*8+4],eax
 0066A209    lea         edx,[ebp-80]
 0066A20C    mov         eax,dword ptr [ebp-0C]
 0066A20F    mov         ecx,dword ptr [eax]
 0066A211    call        dword ptr [ecx+14]
 0066A214    mov         eax,dword ptr [ebp-80]
 0066A217    lea         ecx,[ebp-18]
 0066A21A    mov         edx,66A538;'hasp'
 0066A21F    mov         edi,dword ptr [eax]
 0066A221    call        dword ptr [edi+38]
 0066A224    lea         ecx,[ebp-90]
 0066A22A    mov         edx,66A524;'id'
 0066A22F    mov         eax,dword ptr [ebp-18]
 0066A232    mov         edi,dword ptr [eax]
 0066A234    call        dword ptr [edi+0C]
 0066A237    lea         eax,[ebp-90]
 0066A23D    call        @VarToInt64
 0066A242    mov         edx,dword ptr [ebp-1C]
 0066A245    test        edx,edx
>0066A247    je          0066A24E
 0066A249    cmp         ebx,dword ptr [edx-4]
>0066A24C    jb          0066A253
 0066A24E    call        @BoundErr
 0066A253    mov         ecx,ebx
 0066A255    add         ecx,ecx
 0066A257    mov         dword ptr [edx+ecx*8],eax
 0066A25A    lea         edx,[ebp-94]
 0066A260    mov         eax,dword ptr [ebp-0C]
 0066A263    mov         ecx,dword ptr [eax]
 0066A265    call        dword ptr [ecx+14]
 0066A268    mov         eax,dword ptr [ebp-94]
 0066A26E    lea         ecx,[ebp-10]
 0066A271    mov         edx,66A550;'license'
 0066A276    mov         edi,dword ptr [eax]
 0066A278    call        dword ptr [edi+38]
 0066A27B    cmp         dword ptr [ebp-10],0
>0066A27F    je          0066A2DE
 0066A281    lea         edx,[ebp-98]
 0066A287    mov         eax,dword ptr [ebp-10]
 0066A28A    mov         ecx,dword ptr [eax]
 0066A28C    call        dword ptr [ecx+14]
 0066A28F    mov         eax,dword ptr [ebp-98]
 0066A295    lea         ecx,[ebp-14]
 0066A298    mov         edx,66A56C;'exp_date'
 0066A29D    mov         edi,dword ptr [eax]
 0066A29F    call        dword ptr [edi+38]
 0066A2A2    cmp         dword ptr [ebp-14],0
>0066A2A6    je          0066A2DE
 0066A2A8    lea         edx,[ebp-0A8]
 0066A2AE    mov         eax,dword ptr [ebp-14]
 0066A2B1    mov         ecx,dword ptr [eax]
 0066A2B3    call        dword ptr [ecx+3C]
 0066A2B6    lea         eax,[ebp-0A8]
 0066A2BC    call        @VarToInt64
 0066A2C1    mov         ecx,dword ptr [ebp-1C]
 0066A2C4    test        ecx,ecx
>0066A2C6    je          0066A2CD
 0066A2C8    cmp         ebx,dword ptr [ecx-4]
>0066A2CB    jb          0066A2D2
 0066A2CD    call        @BoundErr
 0066A2D2    mov         edi,ebx
 0066A2D4    add         edi,edi
 0066A2D6    mov         dword ptr [ecx+edi*8+8],eax
 0066A2DA    mov         dword ptr [ecx+edi*8+0C],edx
 0066A2DE    inc         ebx
 0066A2DF    dec         esi
>0066A2E0    jne         0066A1A7
 0066A2E6    mov         dword ptr [ebp-38],0
 0066A2ED    mov         dword ptr [ebp-34],0
 0066A2F4    mov         esi,dword ptr [ebp-2C]
 0066A2F7    sub         esi,1
>0066A2FA    jno         0066A301
 0066A2FC    call        @IntOver
 0066A301    test        esi,esi
>0066A303    jl          0066A377
 0066A305    inc         esi
 0066A306    xor         ebx,ebx
 0066A308    mov         eax,dword ptr [ebp-1C]
 0066A30B    test        eax,eax
>0066A30D    je          0066A314
 0066A30F    cmp         ebx,dword ptr [eax-4]
>0066A312    jb          0066A319
 0066A314    call        @BoundErr
 0066A319    mov         edx,ebx
 0066A31B    add         edx,edx
 0066A31D    cmp         dword ptr [eax+edx*8+4],1
>0066A322    jne         0066A373
 0066A324    mov         eax,dword ptr [ebp-1C]
 0066A327    test        eax,eax
>0066A329    je          0066A330
 0066A32B    cmp         ebx,dword ptr [eax-4]
>0066A32E    jb          0066A335
 0066A330    call        @BoundErr
 0066A335    mov         edx,ebx
 0066A337    add         edx,edx
 0066A339    lea         eax,[eax+edx*8+8]
 0066A33D    mov         edx,dword ptr [eax+4]
 0066A340    mov         eax,dword ptr [eax]
 0066A342    cmp         edx,dword ptr [ebp-34]
>0066A345    jne         0066A34E
 0066A347    cmp         eax,dword ptr [ebp-38]
>0066A34A    jbe         0066A373
>0066A34C    jmp         0066A350
>0066A34E    jle         0066A373
 0066A350    mov         eax,dword ptr [ebp-1C]
 0066A353    test        eax,eax
>0066A355    je          0066A35C
 0066A357    cmp         ebx,dword ptr [eax-4]
>0066A35A    jb          0066A361
 0066A35C    call        @BoundErr
 0066A361    mov         edx,ebx
 0066A363    add         edx,edx
 0066A365    mov         ecx,dword ptr [eax+edx*8+8]
 0066A369    mov         dword ptr [ebp-38],ecx
 0066A36C    mov         ecx,dword ptr [eax+edx*8+0C]
 0066A370    mov         dword ptr [ebp-34],ecx
 0066A373    inc         ebx
 0066A374    dec         esi
>0066A375    jne         0066A308
 0066A377    xor         eax,eax
 0066A379    pop         edx
 0066A37A    pop         ecx
 0066A37B    pop         ecx
 0066A37C    mov         dword ptr fs:[eax],edx
 0066A37F    push        66A394
 0066A384    lea         eax,[ebp-4]
 0066A387    call        @IntfClear
 0066A38C    ret
>0066A38D    jmp         @HandleFinally
>0066A392    jmp         0066A384
 0066A394    lea         eax,[ebp-50]
 0066A397    push        eax
 0066A398    lea         eax,[ebp-4C]
 0066A39B    push        eax
 0066A39C    lea         eax,[ebp-48]
 0066A39F    push        eax
 0066A3A0    lea         eax,[ebp-3C]
 0066A3A3    push        eax
 0066A3A4    lea         eax,[ebp-40]
 0066A3A7    push        eax
 0066A3A8    lea         eax,[ebp-44]
 0066A3AB    push        eax
 0066A3AC    push        dword ptr [ebp-34]
 0066A3AF    push        dword ptr [ebp-38]
 0066A3B2    call        005DF33B
 0066A3B7    mov         dword ptr [ebp-24],eax
 0066A3BA    cmp         dword ptr [ebp-24],0
>0066A3BE    je          0066A3CD
 0066A3C0    mov         ebx,dword ptr [ebp-24]
 0066A3C3    call        @TryFinallyExit
>0066A3C8    jmp         0066A469
 0066A3CD    mov         ecx,dword ptr [ebp-44]
 0066A3D0    cmp         ecx,0FFFF
>0066A3D6    jbe         0066A3DD
 0066A3D8    call        @BoundErr
 0066A3DD    mov         edx,dword ptr [ebp-40]
 0066A3E0    cmp         edx,0FFFF
>0066A3E6    jbe         0066A3ED
 0066A3E8    call        @BoundErr
 0066A3ED    mov         eax,dword ptr [ebp-3C]
 0066A3F0    cmp         eax,0FFFF
>0066A3F5    jbe         0066A3FC
 0066A3F7    call        @BoundErr
 0066A3FC    call        00420F84
 0066A401    mov         eax,dword ptr [ebp-20]
 0066A404    fcomp       qword ptr [eax+18]
 0066A407    wait
 0066A408    fnstsw      al
 0066A40A    sahf
>0066A40B    jbe         0066A448
 0066A40D    mov         ecx,dword ptr [ebp-44]
 0066A410    cmp         ecx,0FFFF
>0066A416    jbe         0066A41D
 0066A418    call        @BoundErr
 0066A41D    mov         edx,dword ptr [ebp-40]
 0066A420    cmp         edx,0FFFF
>0066A426    jbe         0066A42D
 0066A428    call        @BoundErr
 0066A42D    mov         eax,dword ptr [ebp-3C]
 0066A430    cmp         eax,0FFFF
>0066A435    jbe         0066A43C
 0066A437    call        @BoundErr
 0066A43C    call        00420F84
 0066A441    mov         eax,dword ptr [ebp-20]
 0066A444    fstp        qword ptr [eax+18]
 0066A447    wait
 0066A448    xor         eax,eax
 0066A44A    pop         edx
 0066A44B    pop         ecx
 0066A44C    pop         ecx
 0066A44D    mov         dword ptr fs:[eax],edx
 0066A450    push        66A466
 0066A455    mov         eax,dword ptr [ebp-28]
 0066A458    push        eax
 0066A459    call        005DE7CB
 0066A45E    ret
>0066A45F    jmp         @HandleFinally
>0066A464    jmp         0066A455
 0066A466    mov         ebx,dword ptr [ebp-24]
 0066A469    xor         eax,eax
 0066A46B    pop         edx
 0066A46C    pop         ecx
 0066A46D    pop         ecx
 0066A46E    mov         dword ptr fs:[eax],edx
 0066A471    push        66A50C
 0066A476    lea         eax,[ebp-0A8]
 0066A47C    call        @VarClr
 0066A481    lea         eax,[ebp-98]
 0066A487    mov         edx,dword ptr ds:[65C930];IXMLNodeList
 0066A48D    mov         ecx,2
 0066A492    call        @FinalizeArray
 0066A497    lea         eax,[ebp-90]
 0066A49D    call        @VarClr
 0066A4A2    lea         eax,[ebp-80]
 0066A4A5    call        @IntfClear
 0066A4AA    lea         eax,[ebp-7C]
 0066A4AD    mov         edx,dword ptr ds:[401300];OleVariant
 0066A4B3    mov         ecx,2
 0066A4B8    call        @FinalizeArray
 0066A4BD    lea         eax,[ebp-5C]
 0066A4C0    mov         edx,dword ptr ds:[65C930];IXMLNodeList
 0066A4C6    mov         ecx,2
 0066A4CB    call        @FinalizeArray
 0066A4D0    lea         eax,[ebp-54]
 0066A4D3    call        @UStrClr
 0066A4D8    lea         eax,[ebp-1C]
 0066A4DB    mov         edx,dword ptr ds:[66AA60];TFeatArr
 0066A4E1    call        @DynArrayClear
 0066A4E6    lea         eax,[ebp-18]
 0066A4E9    mov         edx,dword ptr ds:[65C8F8];IXMLNode
 0066A4EF    mov         ecx,5
 0066A4F4    call        @FinalizeArray
 0066A4F9    lea         eax,[ebp-4]
 0066A4FC    call        @IntfClear
 0066A501    ret
>0066A502    jmp         @HandleFinally
>0066A507    jmp         0066A476
 0066A50C    mov         eax,ebx
 0066A50E    pop         edi
 0066A50F    pop         esi
 0066A510    pop         ebx
 0066A511    mov         esp,ebp
 0066A513    pop         ebp
 0066A514    ret
end;*}

//0066A580
{*function sub_0066A580(?:TNewLicenseKey):?;
begin
 0066A580    push        ebx
 0066A581    mov         ebx,eax
 0066A583    mov         eax,dword ptr [ebx+0C]
 0066A586    dec         eax
>0066A587    je          0066A58E
 0066A589    dec         eax
>0066A58A    je          0066A5A6
>0066A58C    jmp         0066A5BE
 0066A58E    lea         eax,[ebx+30]
 0066A591    push        eax
 0066A592    push        40
 0066A594    push        0
 0066A596    push        0FFF0
 0066A59B    mov         eax,dword ptr [ebx+4]
 0066A59E    push        eax
 0066A59F    call        005DF42B
>0066A5A4    jmp         0066A5C5
 0066A5A6    lea         eax,[ebx+30]
 0066A5A9    push        eax
 0066A5AA    push        40
 0066A5AC    push        0
 0066A5AE    push        0FFF4
 0066A5B3    mov         eax,dword ptr [ebx+4]
 0066A5B6    push        eax
 0066A5B7    call        005DF42B
>0066A5BC    jmp         0066A5C5
 0066A5BE    mov         eax,3D
 0066A5C3    pop         ebx
 0066A5C4    ret
 0066A5C5    test        eax,eax
>0066A5C7    jne         0066A5FB
 0066A5C9    cmp         word ptr [ebx+30],0
>0066A5CE    je          0066A5E3
 0066A5D0    push        40
 0066A5D2    lea         eax,[ebx+30]
 0066A5D5    push        eax
 0066A5D6    mov         eax,dword ptr [ebx+4]
 0066A5D9    push        eax
 0066A5DA    call        005DE71B
 0066A5DF    test        eax,eax
>0066A5E1    jne         0066A5FB
 0066A5E3    mov         edx,dword ptr [ebx+34]
 0066A5E6    mov         dword ptr [ebx+20],edx
 0066A5E9    mov         edx,dword ptr [ebx+38]
 0066A5EC    mov         dword ptr [ebx+24],edx
 0066A5EF    mov         edx,dword ptr [ebx+50]
 0066A5F2    mov         dword ptr [ebx+28],edx
 0066A5F5    mov         edx,dword ptr [ebx+54]
 0066A5F8    mov         dword ptr [ebx+2C],edx
 0066A5FB    pop         ebx
 0066A5FC    ret
end;*}

//0066A600
{*function sub_0066A600(?:TNewLicenseKey):?;
begin
 0066A600    push        ebx
 0066A601    mov         ebx,eax
 0066A603    mov         word ptr [ebx+30],1
 0066A609    mov         eax,dword ptr [ebx+8]
 0066A60C    test        eax,eax
>0066A60E    jns         0066A615
 0066A610    call        @BoundErr
 0066A615    mov         dword ptr [ebx+3C],eax
 0066A618    call        00421148
 0066A61D    fcomp       qword ptr [ebx+34]
 0066A620    wait
 0066A621    fnstsw      al
 0066A623    sahf
>0066A624    jbe         0066A62F
 0066A626    call        00421148
 0066A62B    fstp        qword ptr [ebx+34]
 0066A62E    wait
 0066A62F    mov         eax,dword ptr [ebx+28]
 0066A632    mov         dword ptr [ebx+50],eax
 0066A635    mov         eax,dword ptr [ebx+2C]
 0066A638    mov         dword ptr [ebx+54],eax
 0066A63B    push        40
 0066A63D    lea         eax,[ebx+30]
 0066A640    push        eax
 0066A641    mov         eax,dword ptr [ebx+4]
 0066A644    push        eax
 0066A645    call        005DE66B
 0066A64A    test        eax,eax
>0066A64C    jne         0066A68E
 0066A64E    mov         eax,dword ptr [ebx+0C]
 0066A651    dec         eax
>0066A652    je          0066A659
 0066A654    dec         eax
>0066A655    je          0066A671
>0066A657    jmp         0066A689
 0066A659    lea         eax,[ebx+30]
 0066A65C    push        eax
 0066A65D    push        40
 0066A65F    push        0
 0066A661    push        0FFF0
 0066A666    mov         eax,dword ptr [ebx+4]
 0066A669    push        eax
 0066A66A    call        005DF4EB
>0066A66F    jmp         0066A68E
 0066A671    lea         eax,[ebx+30]
 0066A674    push        eax
 0066A675    push        40
 0066A677    push        0
 0066A679    push        0FFF4
 0066A67E    mov         eax,dword ptr [ebx+4]
 0066A681    push        eax
 0066A682    call        005DF4EB
>0066A687    jmp         0066A68E
 0066A689    mov         eax,3D
 0066A68E    pop         ebx
 0066A68F    ret
end;*}

//0066A690
function TNewLicenseKey.Verify:Cardinal;
begin
{*
 0066A690    push        ebp
 0066A691    mov         ebp,esp
 0066A693    add         esp,0FFFFFFDC
 0066A696    mov         dword ptr [ebp-4],eax
 0066A699    mov         eax,dword ptr [ebp-4]
 0066A69C    call        0066975C
 0066A6A1    mov         dword ptr [ebp-0C],eax
 0066A6A4    cmp         dword ptr [ebp-0C],0
>0066A6A8    je          0066A6B5
 0066A6AA    mov         eax,dword ptr [ebp-0C]
 0066A6AD    mov         dword ptr [ebp-8],eax
>0066A6B0    jmp         0066A9E2
 0066A6B5    mov         edx,1
 0066A6BA    mov         eax,dword ptr [ebp-4]
 0066A6BD    call        006696E0
 0066A6C2    mov         dword ptr [ebp-0C],eax
 0066A6C5    cmp         dword ptr [ebp-0C],0
>0066A6C9    je          0066A6D6
 0066A6CB    mov         eax,dword ptr [ebp-0C]
 0066A6CE    mov         dword ptr [ebp-8],eax
>0066A6D1    jmp         0066A9E2
 0066A6D6    xor         edx,edx
 0066A6D8    push        ebp
 0066A6D9    push        66A9DB
 0066A6DE    push        dword ptr fs:[edx]
 0066A6E1    mov         dword ptr fs:[edx],esp
 0066A6E4    mov         eax,dword ptr [ebp-4]
 0066A6E7    call        0066977C
 0066A6EC    mov         dword ptr [ebp-0C],eax
 0066A6EF    cmp         dword ptr [ebp-0C],0
>0066A6F3    je          0066A705
 0066A6F5    mov         eax,dword ptr [ebp-0C]
 0066A6F8    mov         dword ptr [ebp-8],eax
 0066A6FB    call        @TryFinallyExit
>0066A700    jmp         0066A9E2
 0066A705    mov         eax,dword ptr [ebp-4]
 0066A708    call        00669A04
 0066A70D    mov         dword ptr [ebp-0C],eax
 0066A710    cmp         dword ptr [ebp-0C],0
>0066A714    je          0066A726
 0066A716    mov         eax,dword ptr [ebp-0C]
 0066A719    mov         dword ptr [ebp-8],eax
 0066A71C    call        @TryFinallyExit
>0066A721    jmp         0066A9E2
 0066A726    mov         eax,dword ptr [ebp-4]
 0066A729    call        00669AA0
 0066A72E    mov         dword ptr [ebp-0C],eax
 0066A731    cmp         dword ptr [ebp-0C],0
>0066A735    je          0066A747
 0066A737    mov         eax,dword ptr [ebp-0C]
 0066A73A    mov         dword ptr [ebp-8],eax
 0066A73D    call        @TryFinallyExit
>0066A742    jmp         0066A9E2
 0066A747    mov         eax,dword ptr [ebp-4]
 0066A74A    call        0066A090
 0066A74F    mov         eax,dword ptr [ebp-4]
 0066A752    call        0066A580
 0066A757    mov         dword ptr [ebp-0C],eax
 0066A75A    cmp         dword ptr [ebp-0C],0
>0066A75E    je          0066A770
 0066A760    mov         eax,dword ptr [ebp-0C]
 0066A763    mov         dword ptr [ebp-8],eax
 0066A766    call        @TryFinallyExit
>0066A76B    jmp         0066A9E2
 0066A770    mov         eax,dword ptr [ebp-4]
 0066A773    cmp         word ptr [eax+30],1;TNewLicenseKey.FKeyData:TLicenseKeyData
>0066A778    jbe         0066A78B
 0066A77A    mov         dword ptr [ebp-8],3D
 0066A781    call        @TryFinallyExit
>0066A786    jmp         0066A9E2
 0066A78B    mov         eax,dword ptr [ebp-4]
 0066A78E    movzx       eax,byte ptr [eax+40]
 0066A792    sub         al,1
>0066A794    jb          0066A7BC
>0066A796    je          0066A79A
>0066A798    jmp         0066A7AB
 0066A79A    mov         dword ptr [ebp-8],1F41
 0066A7A1    call        @TryFinallyExit
>0066A7A6    jmp         0066A9E2
 0066A7AB    mov         dword ptr [ebp-8],3D
 0066A7B2    call        @TryFinallyExit
>0066A7B7    jmp         0066A9E2
 0066A7BC    mov         eax,dword ptr [ebp-4]
 0066A7BF    mov         edx,dword ptr [ebp-4]
 0066A7C2    fld         qword ptr [eax+10];TNewLicenseKey.FKeyDate:TDateTime
 0066A7C5    fcomp       qword ptr [edx+18];TNewLicenseKey.FExpDate:TDateTime
 0066A7C8    wait
 0066A7C9    fnstsw      al
 0066A7CB    sahf
>0066A7CC    jbe         0066A7DF
 0066A7CE    mov         dword ptr [ebp-8],1F42
 0066A7D5    call        @TryFinallyExit
>0066A7DA    jmp         0066A9E2
 0066A7DF    mov         cx,1
 0066A7E3    mov         dx,1
 0066A7E7    mov         ax,7DA
 0066A7EB    call        00420F84
 0066A7F0    mov         eax,dword ptr [ebp-4]
 0066A7F3    fcomp       qword ptr [eax+28];TNewLicenseKey.FGrcDate:TDateTime
 0066A7F6    wait
 0066A7F7    fnstsw      al
 0066A7F9    sahf
>0066A7FA    jae         0066A8A9
 0066A800    call        00421148
 0066A805    fstp        qword ptr [ebp-18]
 0066A808    wait
 0066A809    mov         eax,dword ptr [ebp-4]
 0066A80C    fld         qword ptr [ebp-18]
 0066A80F    fcomp       qword ptr [eax+28];TNewLicenseKey.FGrcDate:TDateTime
 0066A812    wait
 0066A813    fnstsw      al
 0066A815    sahf
>0066A816    jbe         0066A838
 0066A818    mov         eax,dword ptr [ebp-4]
 0066A81B    mov         byte ptr [eax+40],1
 0066A81F    mov         eax,dword ptr [ebp-4]
 0066A822    call        0066A600
 0066A827    mov         dword ptr [ebp-8],1F42
 0066A82E    call        @TryFinallyExit
>0066A833    jmp         0066A9E2
 0066A838    fld         tbyte ptr ds:[66A9EC];0,0833333333333333:Extended
 0066A83E    fadd        qword ptr [ebp-18]
 0066A841    mov         eax,dword ptr [ebp-4]
 0066A844    fcomp       qword ptr [eax+20];TNewLicenseKey.FRecDate:TDateTime
 0066A847    wait
 0066A848    fnstsw      al
 0066A84A    sahf
>0066A84B    jae         0066A892
 0066A84D    mov         eax,dword ptr [ebp-4]
 0066A850    fld         qword ptr [eax+28];TNewLicenseKey.FGrcDate:TDateTime
 0066A853    fsub        qword ptr [ebp-18]
 0066A856    fdiv        dword ptr ds:[66A9F8];10:Single
 0066A85C    call        @TRUNC
 0066A861    mov         dword ptr [ebp-24],eax
 0066A864    mov         dword ptr [ebp-20],edx
 0066A867    fild        qword ptr [ebp-24]
 0066A86A    mov         eax,dword ptr [ebp-4]
 0066A86D    fsubr       qword ptr [eax+28];TNewLicenseKey.FGrcDate:TDateTime
 0066A870    fld1
 0066A872    fsubp       st(1),st
 0066A874    mov         eax,dword ptr [ebp-4]
 0066A877    fstp        qword ptr [eax+28];TNewLicenseKey.FGrcDate:TDateTime
 0066A87A    wait
 0066A87B    mov         eax,dword ptr [ebp-4]
 0066A87E    call        0066A600
 0066A883    xor         eax,eax
 0066A885    mov         dword ptr [ebp-8],eax
 0066A888    call        @TryFinallyExit
>0066A88D    jmp         0066A9E2
 0066A892    mov         eax,dword ptr [ebp-4]
 0066A895    call        0066A600
 0066A89A    xor         eax,eax
 0066A89C    mov         dword ptr [ebp-8],eax
 0066A89F    call        @TryFinallyExit
>0066A8A4    jmp         0066A9E2
 0066A8A9    mov         byte ptr [ebp-19],1
 0066A8AD    call        00421148
 0066A8B2    fstp        qword ptr [ebp-18]
 0066A8B5    wait
 0066A8B6    fld         qword ptr [ebp-18]
 0066A8B9    fsub        dword ptr ds:[66A9FC];3:Single
 0066A8BF    mov         eax,dword ptr [ebp-4]
 0066A8C2    fcomp       qword ptr [eax+10];TNewLicenseKey.FKeyDate:TDateTime
 0066A8C5    wait
 0066A8C6    fnstsw      al
 0066A8C8    sahf
>0066A8C9    jae         0066A8FA
 0066A8CB    fld         qword ptr [ebp-18]
 0066A8CE    fadd        dword ptr ds:[66A9FC];3:Single
 0066A8D4    mov         eax,dword ptr [ebp-4]
 0066A8D7    fcomp       qword ptr [eax+10];TNewLicenseKey.FKeyDate:TDateTime
 0066A8DA    wait
 0066A8DB    fnstsw      al
 0066A8DD    sahf
>0066A8DE    jbe         0066A8FA
 0066A8E0    mov         cx,1
 0066A8E4    mov         dx,1
 0066A8E8    mov         ax,7DE
 0066A8EC    call        00420F84
 0066A8F1    fcomp       qword ptr [ebp-18]
 0066A8F4    wait
 0066A8F5    fnstsw      al
 0066A8F7    sahf
>0066A8F8    jb          0066A8FE
 0066A8FA    xor         eax,eax
>0066A8FC    jmp         0066A900
 0066A8FE    mov         al,1
 0066A900    test        al,al
>0066A902    jne         0066A9B5
 0066A908    xor         ecx,ecx
 0066A90A    mov         dl,1
 0066A90C    mov         eax,[00666FBC];TCalErrForm
 0066A911    call        TCustomForm.Create;TCalErrForm.Create
 0066A916    mov         edx,dword ptr ds:[7C4A10];^gvar_00828628:TCalErrForm
 0066A91C    mov         dword ptr [edx],eax
 0066A91E    xor         eax,eax
 0066A920    push        ebp
 0066A921    push        66A9AE
 0066A926    push        dword ptr fs:[eax]
 0066A929    mov         dword ptr fs:[eax],esp
 0066A92C    mov         eax,[007C4A10];^gvar_00828628:TCalErrForm
 0066A931    mov         eax,dword ptr [eax]
 0066A933    mov         edx,dword ptr [eax]
 0066A935    call        dword ptr [edx+13C]
 0066A93B    dec         eax
>0066A93C    je          0066A94C
 0066A93E    dec         eax
>0066A93F    je          0066A981
 0066A941    sub         eax,2
>0066A944    jne         0066A994
 0066A946    mov         byte ptr [ebp-19],0
>0066A94A    jmp         0066A994
 0066A94C    call        00421148
 0066A951    fstp        qword ptr [ebp-18]
 0066A954    wait
 0066A955    fld         qword ptr [ebp-18]
 0066A958    fadd        dword ptr ds:[66AA00];14:Single
 0066A95E    mov         eax,dword ptr [ebp-4]
 0066A961    fstp        qword ptr [eax+28];TNewLicenseKey.FGrcDate:TDateTime
 0066A964    wait
 0066A965    mov         eax,dword ptr [ebp-4]
 0066A968    call        0066A600
 0066A96D    mov         dword ptr [ebp-0C],eax
 0066A970    mov         eax,dword ptr [ebp-4]
 0066A973    mov         edx,dword ptr [ebp-18]
 0066A976    mov         dword ptr [eax+10],edx;TNewLicenseKey.FKeyDate:TDateTime
 0066A979    mov         edx,dword ptr [ebp-14]
 0066A97C    mov         dword ptr [eax+14],edx;TNewLicenseKey.?f14:dword
>0066A97F    jmp         0066A994
 0066A981    mov         dword ptr [ebp-8],1F43
 0066A988    call        @TryFinallyExit
 0066A98D    call        @TryFinallyExit
>0066A992    jmp         0066A9E2
 0066A994    xor         eax,eax
 0066A996    pop         edx
 0066A997    pop         ecx
 0066A998    pop         ecx
 0066A999    mov         dword ptr fs:[eax],edx
 0066A99C    push        66A9B5
 0066A9A1    mov         eax,[007C4A10];^gvar_00828628:TCalErrForm
 0066A9A6    mov         eax,dword ptr [eax]
 0066A9A8    call        TObject.Free
 0066A9AD    ret
>0066A9AE    jmp         @HandleFinally
>0066A9B3    jmp         0066A9A1
 0066A9B5    cmp         byte ptr [ebp-19],0
>0066A9B9    je          0066A8A9
 0066A9BF    mov         eax,dword ptr [ebp-0C]
 0066A9C2    mov         dword ptr [ebp-8],eax
 0066A9C5    xor         eax,eax
 0066A9C7    pop         edx
 0066A9C8    pop         ecx
 0066A9C9    pop         ecx
 0066A9CA    mov         dword ptr fs:[eax],edx
 0066A9CD    push        66A9E2
 0066A9D2    mov         eax,dword ptr [ebp-4]
 0066A9D5    call        00669744
 0066A9DA    ret
>0066A9DB    jmp         @HandleFinally
>0066A9E0    jmp         0066A9D2
 0066A9E2    mov         eax,dword ptr [ebp-8]
 0066A9E5    mov         esp,ebp
 0066A9E7    pop         ebp
 0066A9E8    ret
*}
end;

//0066AE98
{*function sub_0066AE98(?:TLicenseFile; ?:string):?;
begin
 0066AE98    push        ebp
 0066AE99    mov         ebp,esp
 0066AE9B    add         esp,0FFFFFFF8
 0066AE9E    push        ebx
 0066AE9F    push        esi
 0066AEA0    push        edi
 0066AEA1    mov         esi,edx
 0066AEA3    mov         ebx,eax
 0066AEA5    mov         byte ptr [ebp-1],0
 0066AEA9    mov         dl,1
 0066AEAB    mov         eax,esi
 0066AEAD    call        0041EA18
 0066AEB2    test        al,al
>0066AEB4    je          0066AF3B
 0066AEBA    xor         eax,eax
 0066AEBC    push        ebp
 0066AEBD    push        66AF31
 0066AEC2    push        dword ptr fs:[eax]
 0066AEC5    mov         dword ptr fs:[eax],esp
 0066AEC8    push        10
 0066AECA    mov         ecx,esi
 0066AECC    mov         dl,1
 0066AECE    mov         eax,[00472830];TFileStream
 0066AED3    call        TFileStream.Create;TFileStream.Create
 0066AED8    mov         dword ptr [ebp-8],eax
 0066AEDB    xor         eax,eax
 0066AEDD    push        ebp
 0066AEDE    push        66AF20
 0066AEE3    push        dword ptr fs:[eax]
 0066AEE6    mov         dword ptr fs:[eax],esp
 0066AEE9    lea         edx,[ebx+4]
 0066AEEC    mov         ecx,200
 0066AEF1    mov         eax,dword ptr [ebp-8]
 0066AEF4    call        TStream.ReadBuffer
 0066AEF9    lea         eax,[ebx+210]
 0066AEFF    mov         edx,esi
 0066AF01    call        @UStrAsg
 0066AF06    mov         byte ptr [ebp-1],1
 0066AF0A    xor         eax,eax
 0066AF0C    pop         edx
 0066AF0D    pop         ecx
 0066AF0E    pop         ecx
 0066AF0F    mov         dword ptr fs:[eax],edx
 0066AF12    push        66AF27
 0066AF17    mov         eax,dword ptr [ebp-8]
 0066AF1A    call        TObject.Free
 0066AF1F    ret
>0066AF20    jmp         @HandleFinally
>0066AF25    jmp         0066AF17
 0066AF27    xor         eax,eax
 0066AF29    pop         edx
 0066AF2A    pop         ecx
 0066AF2B    pop         ecx
 0066AF2C    mov         dword ptr fs:[eax],edx
>0066AF2F    jmp         0066AF3B
>0066AF31    jmp         @HandleAnyException
 0066AF36    call        @DoneExcept
 0066AF3B    movzx       eax,byte ptr [ebp-1]
 0066AF3F    pop         edi
 0066AF40    pop         esi
 0066AF41    pop         ebx
 0066AF42    pop         ecx
 0066AF43    pop         ecx
 0066AF44    pop         ebp
 0066AF45    ret
end;*}

//0066AF48
{*function sub_0066AF48(?:TLicenseFile):?;
begin
 0066AF48    push        ebx
 0066AF49    push        esi
 0066AF4A    push        edi
 0066AF4B    mov         edi,eax
 0066AF4D    xor         eax,eax
 0066AF4F    xor         edx,edx
 0066AF51    movzx       esi,dl
 0066AF54    cmp         esi,7F
>0066AF57    jbe         0066AF5E
 0066AF59    call        @BoundErr
 0066AF5E    movzx       ecx,byte ptr [edi+esi+4]
 0066AF63    movzx       ebx,byte ptr [edi+esi+84]
 0066AF6B    add         ecx,ebx
>0066AF6D    jno         0066AF74
 0066AF6F    call        @IntOver
 0066AF74    movzx       ebx,byte ptr [edi+esi+104]
 0066AF7C    add         ecx,ebx
>0066AF7E    jno         0066AF85
 0066AF80    call        @IntOver
 0066AF85    cmp         cl,byte ptr [edi+esi+184]
>0066AF8C    jne         0066AF96
 0066AF8E    inc         edx
 0066AF8F    cmp         dl,80
>0066AF92    jne         0066AF51
 0066AF94    mov         al,1
 0066AF96    pop         edi
 0066AF97    pop         esi
 0066AF98    pop         ebx
 0066AF99    ret
end;*}

//0066AF9C
{*function sub_0066AF9C(?:TLicenseFile):?;
begin
 0066AF9C    push        ebx
 0066AF9D    push        esi
 0066AF9E    push        edi
 0066AF9F    mov         esi,eax
 0066AFA1    movzx       eax,byte ptr [esi+84]
 0066AFA8    mov         dl,2
 0066AFAA    movzx       edi,dl
 0066AFAD    cmp         edi,7F
>0066AFB0    jbe         0066AFB7
 0066AFB2    call        @BoundErr
 0066AFB7    movzx       ecx,byte ptr [esi+edi+84]
 0066AFBF    movzx       ebx,al
 0066AFC2    cmp         ebx,7F
>0066AFC5    jbe         0066AFCC
 0066AFC7    call        @BoundErr
 0066AFCC    movzx       ebx,byte ptr [esi+ebx+4]
 0066AFD1    not         bl
 0066AFD3    movzx       ebx,bl
 0066AFD6    sub         ecx,ebx
>0066AFD8    jno         0066AFDF
 0066AFDA    call        @IntOver
 0066AFDF    mov         byte ptr [esi+edi+84],cl
 0066AFE6    movzx       eax,al
 0066AFE9    add         eax,1
>0066AFEC    jno         0066AFF3
 0066AFEE    call        @IntOver
 0066AFF3    and         eax,7F
 0066AFF6    cmp         eax,0FF
>0066AFFB    jbe         0066B002
 0066AFFD    call        @BoundErr
 0066B002    inc         edx
 0066B003    cmp         dl,80
>0066B006    jne         0066AFAA
 0066B008    mov         al,1
 0066B00A    pop         edi
 0066B00B    pop         esi
 0066B00C    pop         ebx
 0066B00D    ret
end;*}

//0066B010
{*function sub_0066B010(?:TLicenseFile):?;
begin
 0066B010    push        ebp
 0066B011    mov         ebp,esp
 0066B013    add         esp,0FFFFFFD0
 0066B016    push        ebx
 0066B017    push        esi
 0066B018    push        edi
 0066B019    xor         edx,edx
 0066B01B    mov         dword ptr [ebp-30],edx
 0066B01E    mov         dword ptr [ebp-2C],edx
 0066B021    mov         dword ptr [ebp-28],edx
 0066B024    mov         dword ptr [ebp-4],eax
 0066B027    xor         eax,eax
 0066B029    push        ebp
 0066B02A    push        66B18C
 0066B02F    push        dword ptr fs:[eax]
 0066B032    mov         dword ptr fs:[eax],esp
 0066B035    lea         eax,[ebp-24]
 0066B038    push        eax
 0066B039    mov         eax,dword ptr [ebp-4]
 0066B03C    add         eax,0E8
 0066B041    mov         ecx,4
 0066B046    mov         edx,1
 0066B04B    call        @Copy
 0066B050    lea         edx,[ebp-24]
 0066B053    lea         eax,[ebp-9]
 0066B056    mov         cl,4
 0066B058    call        @PStrNCpy
 0066B05D    lea         eax,[ebp-24]
 0066B060    push        eax
 0066B061    mov         eax,dword ptr [ebp-4]
 0066B064    add         eax,0E8
 0066B069    mov         ecx,2
 0066B06E    mov         edx,5
 0066B073    call        @Copy
 0066B078    lea         edx,[ebp-24]
 0066B07B    lea         eax,[ebp-0C]
 0066B07E    mov         cl,2
 0066B080    call        @PStrNCpy
 0066B085    lea         eax,[ebp-24]
 0066B088    push        eax
 0066B089    mov         eax,dword ptr [ebp-4]
 0066B08C    add         eax,0E8
 0066B091    mov         ecx,2
 0066B096    mov         edx,7
 0066B09B    call        @Copy
 0066B0A0    lea         edx,[ebp-24]
 0066B0A3    lea         eax,[ebp-0F]
 0066B0A6    mov         cl,2
 0066B0A8    call        @PStrNCpy
 0066B0AD    xor         eax,eax
 0066B0AF    push        ebp
 0066B0B0    push        66B12F
 0066B0B5    push        dword ptr fs:[eax]
 0066B0B8    mov         dword ptr fs:[eax],esp
 0066B0BB    lea         eax,[ebp-28]
 0066B0BE    lea         edx,[ebp-0F]
 0066B0C1    call        @UStrFromString
 0066B0C6    mov         eax,dword ptr [ebp-28]
 0066B0C9    call        StrToInt
 0066B0CE    cmp         eax,0FFFF
>0066B0D3    jbe         0066B0DA
 0066B0D5    call        @BoundErr
 0066B0DA    push        eax
 0066B0DB    lea         eax,[ebp-2C]
 0066B0DE    lea         edx,[ebp-0C]
 0066B0E1    call        @UStrFromString
 0066B0E6    mov         eax,dword ptr [ebp-2C]
 0066B0E9    call        StrToInt
 0066B0EE    cmp         eax,0FFFF
>0066B0F3    jbe         0066B0FA
 0066B0F5    call        @BoundErr
 0066B0FA    push        eax
 0066B0FB    lea         eax,[ebp-30]
 0066B0FE    lea         edx,[ebp-9]
 0066B101    call        @UStrFromString
 0066B106    mov         eax,dword ptr [ebp-30]
 0066B109    call        StrToInt
 0066B10E    cmp         eax,0FFFF
>0066B113    jbe         0066B11A
 0066B115    call        @BoundErr
 0066B11A    pop         edx
 0066B11B    pop         ecx
 0066B11C    call        00420F84
 0066B121    fstp        qword ptr [ebp-18]
 0066B124    wait
 0066B125    xor         eax,eax
 0066B127    pop         edx
 0066B128    pop         ecx
 0066B129    pop         ecx
 0066B12A    mov         dword ptr fs:[eax],edx
>0066B12D    jmp         0066B15A
>0066B12F    jmp         @HandleOnException
 0066B134    dd          1
 0066B138    dd          00418D28;EConvertError
 0066B13C    dd          0066B140
 0066B140    mov         cx,1F
 0066B144    mov         dx,0C
 0066B148    mov         ax,7D2
 0066B14C    call        00420F84
 0066B151    fstp        qword ptr [ebp-18]
 0066B154    wait
 0066B155    call        @DoneExcept
 0066B15A    mov         eax,dword ptr [ebp-4]
 0066B15D    mov         edx,dword ptr [ebp-18]
 0066B160    mov         dword ptr [eax+208],edx
 0066B166    mov         edx,dword ptr [ebp-14]
 0066B169    mov         dword ptr [eax+20C],edx
 0066B16F    mov         bl,1
 0066B171    xor         eax,eax
 0066B173    pop         edx
 0066B174    pop         ecx
 0066B175    pop         ecx
 0066B176    mov         dword ptr fs:[eax],edx
 0066B179    push        66B193
 0066B17E    lea         eax,[ebp-30]
 0066B181    mov         edx,3
 0066B186    call        @UStrArrayClr
 0066B18B    ret
>0066B18C    jmp         @HandleFinally
>0066B191    jmp         0066B17E
 0066B193    mov         eax,ebx
 0066B195    pop         edi
 0066B196    pop         esi
 0066B197    pop         ebx
 0066B198    mov         esp,ebp
 0066B19A    pop         ebp
 0066B19B    ret
end;*}

//0066B19C
function TLicenseFile.VerifyLicFile(fn:string; CurrentDate:TDateTime):Integer;
begin
{*
 0066B19C    push        ebp
 0066B19D    mov         ebp,esp
 0066B19F    add         esp,0FFFFFEFC
 0066B1A5    push        ebx
 0066B1A6    push        esi
 0066B1A7    mov         dword ptr [ebp-4],edx
 0066B1AA    mov         ebx,eax
 0066B1AC    mov         eax,dword ptr [ebp-4]
 0066B1AF    call        @UStrAddRef
 0066B1B4    xor         eax,eax
 0066B1B6    push        ebp
 0066B1B7    push        66B2B7
 0066B1BC    push        dword ptr fs:[eax]
 0066B1BF    mov         dword ptr fs:[eax],esp
 0066B1C2    xor         esi,esi
 0066B1C4    mov         edx,dword ptr [ebp-4]
 0066B1C7    mov         eax,ebx
 0066B1C9    call        0066AE98
 0066B1CE    test        al,al
>0066B1D0    jne         0066B1D9
 0066B1D2    mov         esi,1
>0066B1D7    jmp         0066B250
 0066B1D9    mov         eax,ebx
 0066B1DB    call        0066AF48
 0066B1E0    test        al,al
>0066B1E2    jne         0066B1EB
 0066B1E4    mov         esi,2
>0066B1E9    jmp         0066B250
 0066B1EB    mov         eax,ebx
 0066B1ED    call        0066AF9C
 0066B1F2    test        al,al
>0066B1F4    jne         0066B1FD
 0066B1F6    mov         esi,2
>0066B1FB    jmp         0066B250
 0066B1FD    mov         eax,ebx
 0066B1FF    call        0066B010
 0066B204    test        al,al
>0066B206    jne         0066B20F
 0066B208    mov         esi,2
>0066B20D    jmp         0066B250
 0066B20F    cmp         word ptr [ebx+88],3
>0066B217    je          0066B220
 0066B219    mov         esi,3
>0066B21E    jmp         0066B250
 0066B220    fld         qword ptr [ebp+8]
 0066B223    fcomp       qword ptr [ebx+208];TLicenseFile.LicExpDate:TDateTime
 0066B229    wait
 0066B22A    fnstsw      al
 0066B22C    sahf
>0066B22D    jbe         0066B236
 0066B22F    mov         esi,4
>0066B234    jmp         0066B250
 0066B236    fld         qword ptr [ebx+208];TLicenseFile.LicExpDate:TDateTime
 0066B23C    fsub        qword ptr [ebp+8]
 0066B23F    fcomp       dword ptr ds:[66B2C8];60:Single
 0066B245    wait
 0066B246    fnstsw      al
 0066B248    sahf
>0066B249    jae         0066B250
 0066B24B    mov         esi,5
 0066B250    test        esi,esi
>0066B252    je          0066B259
 0066B254    cmp         esi,5
>0066B257    jne         0066B2A1
 0066B259    lea         eax,[ebp-104]
 0066B25F    lea         edx,[ebx+0A7]
 0066B265    call        @_CToPasStr
 0066B26A    lea         edx,[ebp-104]
 0066B270    lea         eax,[ebx+0A6]
 0066B276    mov         cl,32
 0066B278    call        @PStrNCpy
 0066B27D    lea         eax,[ebp-104]
 0066B283    lea         edx,[ebx+8D]
 0066B289    call        @_CToPasStr
 0066B28E    lea         edx,[ebp-104]
 0066B294    lea         eax,[ebx+8C]
 0066B29A    mov         cl,19
 0066B29C    call        @PStrNCpy
 0066B2A1    xor         eax,eax
 0066B2A3    pop         edx
 0066B2A4    pop         ecx
 0066B2A5    pop         ecx
 0066B2A6    mov         dword ptr fs:[eax],edx
 0066B2A9    push        66B2BE
 0066B2AE    lea         eax,[ebp-4]
 0066B2B1    call        @UStrClr
 0066B2B6    ret
>0066B2B7    jmp         @HandleFinally
>0066B2BC    jmp         0066B2AE
 0066B2BE    mov         eax,esi
 0066B2C0    pop         esi
 0066B2C1    pop         ebx
 0066B2C2    mov         esp,ebp
 0066B2C4    pop         ebp
 0066B2C5    ret         8
*}
end;

//0066B2CC
{*procedure sub_0066B2CC(?:?; ?:?);
begin
 0066B2CC    push        ebp
 0066B2CD    mov         ebp,esp
 0066B2CF    add         esp,0FFFFFFF0
 0066B2D2    push        ebx
 0066B2D3    xor         ecx,ecx
 0066B2D5    mov         dword ptr [ebp-4],ecx
 0066B2D8    mov         ebx,edx
 0066B2DA    xor         edx,edx
 0066B2DC    push        ebp
 0066B2DD    push        66B32D
 0066B2E2    push        dword ptr fs:[edx]
 0066B2E5    mov         dword ptr fs:[edx],esp
 0066B2E8    mov         edx,dword ptr [eax+208]
 0066B2EE    mov         dword ptr [ebp-10],edx
 0066B2F1    mov         edx,dword ptr [eax+20C]
 0066B2F7    mov         dword ptr [ebp-0C],edx
 0066B2FA    push        dword ptr [ebp-0C]
 0066B2FD    push        dword ptr [ebp-10]
 0066B300    lea         edx,[ebp-4]
 0066B303    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 0066B308    call        004220EC
 0066B30D    mov         eax,ebx
 0066B30F    mov         edx,dword ptr [ebp-4]
 0066B312    call        @UStrAsg
 0066B317    xor         eax,eax
 0066B319    pop         edx
 0066B31A    pop         ecx
 0066B31B    pop         ecx
 0066B31C    mov         dword ptr fs:[eax],edx
 0066B31F    push        66B334
 0066B324    lea         eax,[ebp-4]
 0066B327    call        @UStrClr
 0066B32C    ret
>0066B32D    jmp         @HandleFinally
>0066B332    jmp         0066B324
 0066B334    pop         ebx
 0066B335    mov         esp,ebp
 0066B337    pop         ebp
 0066B338    ret
end;*}

//0066B33C
{*procedure sub_0066B33C(?:?; ?:?);
begin
 0066B33C    push        ebp
 0066B33D    mov         ebp,esp
 0066B33F    push        0
 0066B341    push        ebx
 0066B342    push        esi
 0066B343    mov         esi,edx
 0066B345    mov         ebx,eax
 0066B347    xor         eax,eax
 0066B349    push        ebp
 0066B34A    push        66B3B8
 0066B34F    push        dword ptr fs:[eax]
 0066B352    mov         dword ptr fs:[eax],esp
 0066B355    lea         eax,[ebp-4]
 0066B358    lea         edx,[ebx+0A6]
 0066B35E    call        @UStrFromString
 0066B363    cmp         dword ptr [ebp-4],0
>0066B367    je          0066B398
 0066B369    lea         eax,[ebp-4]
 0066B36C    push        eax
 0066B36D    mov         ecx,1
 0066B372    mov         edx,dword ptr [ebp-4]
 0066B375    mov         eax,66B3D0;'
'
 0066B37A    call        Pos
 0066B37F    mov         ecx,eax
 0066B381    sub         ecx,1
>0066B384    jno         0066B38B
 0066B386    call        @IntOver
 0066B38B    mov         edx,1
 0066B390    mov         eax,dword ptr [ebp-4]
 0066B393    call        @UStrCopy
 0066B398    mov         eax,esi
 0066B39A    mov         edx,dword ptr [ebp-4]
 0066B39D    call        @UStrAsg
 0066B3A2    xor         eax,eax
 0066B3A4    pop         edx
 0066B3A5    pop         ecx
 0066B3A6    pop         ecx
 0066B3A7    mov         dword ptr fs:[eax],edx
 0066B3AA    push        66B3BF
 0066B3AF    lea         eax,[ebp-4]
 0066B3B2    call        @UStrClr
 0066B3B7    ret
>0066B3B8    jmp         @HandleFinally
>0066B3BD    jmp         0066B3AF
 0066B3BF    pop         esi
 0066B3C0    pop         ebx
 0066B3C1    pop         ecx
 0066B3C2    pop         ebp
 0066B3C3    ret
end;*}

//0066B3D8
{*procedure sub_0066B3D8(?:?; ?:?);
begin
 0066B3D8    push        ebx
 0066B3D9    push        esi
 0066B3DA    mov         esi,edx
 0066B3DC    mov         ebx,eax
 0066B3DE    mov         eax,esi
 0066B3E0    lea         edx,[ebx+8C]
 0066B3E6    mov         ecx,0
 0066B3EB    call        @LStrFromString
 0066B3F0    pop         esi
 0066B3F1    pop         ebx
 0066B3F2    ret
end;*}

//0066B3F4
{*procedure sub_0066B3F4(?:TLicenseFile; ?:?);
begin
 0066B3F4    push        ebx
 0066B3F5    push        esi
 0066B3F6    mov         esi,edx
 0066B3F8    mov         ebx,eax
 0066B3FA    mov         eax,esi
 0066B3FC    lea         edx,[ebx+0A6]
 0066B402    mov         ecx,0
 0066B407    call        @LStrFromString
 0066B40C    pop         esi
 0066B40D    pop         ebx
 0066B40E    ret
end;*}

//0066B410
{*procedure sub_0066B410(?:?; ?:?);
begin
 0066B410    push        ebx
 0066B411    push        esi
 0066B412    mov         esi,edx
 0066B414    mov         ebx,eax
 0066B416    mov         eax,esi
 0066B418    lea         edx,[ebx+0D9]
 0066B41E    mov         ecx,0
 0066B423    call        @LStrFromString
 0066B428    pop         esi
 0066B429    pop         ebx
 0066B42A    ret
end;*}

//0066FA68
procedure TStartUpForm.FormCreate(Sender:TObject);
begin
{*
 0066FA68    push        ebx
 0066FA69    mov         ebx,eax
 0066FA6B    mov         edx,66FB7C;'FX3Net Configuration Tool'
 0066FA70    mov         eax,dword ptr [ebx+3C4];TStartUpForm.Label1:TLabel
 0066FA76    call        TControl.SetText
 0066FA7B    mov         dl,1
 0066FA7D    mov         eax,[005DD8E0];TToolInfo
 0066FA82    call        TObject.Create;TToolInfo.Create
 0066FA87    mov         edx,dword ptr ds:[7C4800];^gvar_007CA844:TToolInfo
 0066FA8D    mov         dword ptr [edx],eax
 0066FA8F    mov         dl,1
 0066FA91    mov         eax,[00668FFC];TNewLicenseKey
 0066FA96    call        TObject.Create;TNewLicenseKey.Create
 0066FA9B    mov         dword ptr [ebx+3DC],eax;TStartUpForm.LicenseKey:TNewLicenseKey
 0066FAA1    mov         dl,1
 0066FAA3    mov         eax,[0066AC0C];TLicenseFile
 0066FAA8    call        TObject.Create;TLicenseFile.Create
 0066FAAD    mov         [00828630],eax;gvar_00828630:TLicenseFile
 0066FAB2    mov         edx,66FBBC;'© Schneider Electric Fire & Security Oy'
 0066FAB7    mov         eax,dword ptr [ebx+3D4];TStartUpForm.Label3:TLabel
 0066FABD    call        TControl.SetText
 0066FAC2    mov         eax,ebx
 0066FAC4    call        0066FCE8
 0066FAC9    movzx       eax,ax
 0066FACC    add         eax,0FFFFFFFA
 0066FACF    cmp         eax,17
>0066FAD2    ja          0066FB64
 0066FAD8    movzx       eax,byte ptr [eax+66FAE6]
 0066FADF    jmp         dword ptr [eax*4+66FAFE]
 0066FADF    db          5
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          1
 0066FADF    db          6
 0066FADF    db          2
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          4
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          7
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          0
 0066FADF    db          3
 0066FADF    dd          0066FB64
 0066FADF    dd          0066FB1E
 0066FADF    dd          0066FB28
 0066FADF    dd          0066FB32
 0066FADF    dd          0066FB3C
 0066FADF    dd          0066FB46
 0066FADF    dd          0066FB50
 0066FADF    dd          0066FB5A
 0066FB1E    mov         eax,[007C42C4];^gvar_007CA830
 0066FB23    mov         byte ptr [eax],0
 0066FB26    pop         ebx
 0066FB27    ret
 0066FB28    mov         eax,[007C42C4];^gvar_007CA830
 0066FB2D    mov         byte ptr [eax],1
 0066FB30    pop         ebx
 0066FB31    ret
 0066FB32    mov         eax,[007C42C4];^gvar_007CA830
 0066FB37    mov         byte ptr [eax],2
 0066FB3A    pop         ebx
 0066FB3B    ret
 0066FB3C    mov         eax,[007C42C4];^gvar_007CA830
 0066FB41    mov         byte ptr [eax],3
 0066FB44    pop         ebx
 0066FB45    ret
 0066FB46    mov         eax,[007C42C4];^gvar_007CA830
 0066FB4B    mov         byte ptr [eax],4
 0066FB4E    pop         ebx
 0066FB4F    ret
 0066FB50    mov         eax,[007C42C4];^gvar_007CA830
 0066FB55    mov         byte ptr [eax],7
 0066FB58    pop         ebx
 0066FB59    ret
 0066FB5A    mov         eax,[007C42C4];^gvar_007CA830
 0066FB5F    mov         byte ptr [eax],0C
 0066FB62    pop         ebx
 0066FB63    ret
 0066FB64    mov         eax,[007C42C4];^gvar_007CA830
 0066FB69    mov         byte ptr [eax],0
 0066FB6C    pop         ebx
 0066FB6D    ret
*}
end;

//0066FC0C
procedure TStartUpForm.FormDestroy(Sender:TObject);
begin
{*
 0066FC0C    push        ebx
 0066FC0D    mov         ebx,eax
 0066FC0F    mov         eax,[00828630];gvar_00828630:TLicenseFile
 0066FC14    call        TObject.Free
 0066FC19    mov         eax,dword ptr [ebx+3DC];TStartUpForm.LicenseKey:TNewLicenseKey
 0066FC1F    call        TObject.Free
 0066FC24    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0066FC29    mov         eax,dword ptr [eax]
 0066FC2B    call        TObject.Free
 0066FC30    pop         ebx
 0066FC31    ret
*}
end;

//0066FC34
procedure TStartUpForm.FormShow(Sender:TObject);
begin
{*
 0066FC34    push        ebp
 0066FC35    mov         ebp,esp
 0066FC37    add         esp,0FFFFFFF0
 0066FC3A    push        ebx
 0066FC3B    xor         ecx,ecx
 0066FC3D    mov         dword ptr [ebp-4],ecx
 0066FC40    mov         dword ptr [ebp-10],ecx
 0066FC43    mov         ebx,eax
 0066FC45    xor         eax,eax
 0066FC47    push        ebp
 0066FC48    push        66FCB7
 0066FC4D    push        dword ptr fs:[eax]
 0066FC50    mov         dword ptr fs:[eax],esp
 0066FC53    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0066FC58    mov         eax,dword ptr [eax]
 0066FC5A    call        TToolInfo.GetVersionInfo
 0066FC5F    lea         eax,[ebp-4]
 0066FC62    push        eax
 0066FC63    lea         edx,[ebp-10]
 0066FC66    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0066FC6B    mov         eax,dword ptr [eax]
 0066FC6D    call        005DDC74
 0066FC72    mov         eax,dword ptr [ebp-10]
 0066FC75    mov         dword ptr [ebp-0C],eax
 0066FC78    mov         byte ptr [ebp-8],11
 0066FC7C    lea         edx,[ebp-0C]
 0066FC7F    xor         ecx,ecx
 0066FC81    mov         eax,66FCD0;'Version: %s'
 0066FC86    call        Format
 0066FC8B    mov         edx,dword ptr [ebp-4]
 0066FC8E    mov         eax,dword ptr [ebx+3C8];TStartUpForm.Label2:TLabel
 0066FC94    call        TControl.SetText
 0066FC99    xor         eax,eax
 0066FC9B    pop         edx
 0066FC9C    pop         ecx
 0066FC9D    pop         ecx
 0066FC9E    mov         dword ptr fs:[eax],edx
 0066FCA1    push        66FCBE
 0066FCA6    lea         eax,[ebp-10]
 0066FCA9    call        @UStrClr
 0066FCAE    lea         eax,[ebp-4]
 0066FCB1    call        @UStrClr
 0066FCB6    ret
>0066FCB7    jmp         @HandleFinally
>0066FCBC    jmp         0066FCA6
 0066FCBE    pop         ebx
 0066FCBF    mov         esp,ebp
 0066FCC1    pop         ebp
 0066FCC2    ret
*}
end;

//0066FCE8
{*function sub_0066FCE8:?;
begin
 0066FCE8    push        ebx
 0066FCE9    push        esi
 0066FCEA    push        edi
 0066FCEB    push        ebp
 0066FCEC    xor         esi,esi
 0066FCEE    push        66FD44;'kernel32.dll'
 0066FCF3    call        kernel32.LoadLibraryW
 0066FCF8    mov         ebx,eax
 0066FCFA    test        ebx,ebx
>0066FCFC    jns         0066FD03
 0066FCFE    call        @BoundErr
 0066FD03    test        ebx,ebx
>0066FD05    je          0066FD36
 0066FD07    push        66FD60
 0066FD0C    test        ebx,ebx
>0066FD0E    jns         0066FD15
 0066FD10    call        @BoundErr
 0066FD15    push        ebx
 0066FD16    call        GetProcAddress
 0066FD1B    mov         ebp,eax
 0066FD1D    mov         edi,ebp
 0066FD1F    test        ebp,ebp
>0066FD21    je          0066FD27
 0066FD23    call        edi
 0066FD25    mov         esi,eax
 0066FD27    test        ebx,ebx
>0066FD29    jns         0066FD30
 0066FD2B    call        @BoundErr
 0066FD30    push        ebx
 0066FD31    call        kernel32.FreeLibrary
 0066FD36    mov         ax,3FF
 0066FD3A    and         ax,si
 0066FD3D    pop         ebp
 0066FD3E    pop         edi
 0066FD3F    pop         esi
 0066FD40    pop         ebx
 0066FD41    ret
end;*}

//0066FD94
procedure sub_0066FD94;
begin
{*
 0066FD94    mov         edx,828630;gvar_00828630:TLicenseFile
 0066FD99    mov         eax,dword ptr [edx]
 0066FD9B    test        byte ptr [eax+8A],1
 0066FDA2    mov         eax,[007C42B4];^gvar_007CA839
 0066FDA7    setne       byte ptr [eax]
 0066FDAA    mov         eax,dword ptr [edx]
 0066FDAC    test        byte ptr [eax+8A],2
 0066FDB3    mov         eax,[007C42E4];^gvar_007CA83A
 0066FDB8    setne       byte ptr [eax]
 0066FDBB    mov         eax,dword ptr [edx]
 0066FDBD    test        byte ptr [eax+8A],4
 0066FDC4    mov         eax,[007C4910];^gvar_007CA83B
 0066FDC9    setne       byte ptr [eax]
 0066FDCC    mov         eax,dword ptr [edx]
 0066FDCE    test        byte ptr [eax+8A],8
 0066FDD5    mov         eax,[007C4E24];^gvar_007CA83C
 0066FDDA    setne       byte ptr [eax]
 0066FDDD    mov         eax,dword ptr [edx]
 0066FDDF    test        byte ptr [eax+8A],10
 0066FDE6    mov         eax,[007C4544];^gvar_007CA83D
 0066FDEB    setne       byte ptr [eax]
 0066FDEE    mov         eax,dword ptr [edx]
 0066FDF0    test        byte ptr [eax+8A],20
 0066FDF7    mov         eax,[007C4E44];^gvar_007CA83E
 0066FDFC    setne       byte ptr [eax]
 0066FDFF    mov         eax,dword ptr [edx]
 0066FE01    test        byte ptr [eax+8A],40
 0066FE08    mov         eax,[007C4780];^gvar_007CA83F
 0066FE0D    setne       byte ptr [eax]
 0066FE10    mov         eax,dword ptr [edx]
 0066FE12    test        byte ptr [eax+8A],80
 0066FE19    mov         eax,[007C4BFC];^gvar_007CA840
 0066FE1E    setne       byte ptr [eax]
 0066FE21    mov         eax,dword ptr [edx]
 0066FE23    test        byte ptr [eax+8B],1
 0066FE2A    mov         eax,[007C4470];^gvar_007CA841
 0066FE2F    setne       byte ptr [eax]
 0066FE32    ret
*}
end;

//0066FE34
{*function sub_0066FE34(?:TStartUpForm; ?:?):?;
begin
 0066FE34    push        ebp
 0066FE35    mov         ebp,esp
 0066FE37    add         esp,0FFFFFFD0
 0066FE3A    push        ebx
 0066FE3B    push        esi
 0066FE3C    push        edi
 0066FE3D    xor         ecx,ecx
 0066FE3F    mov         dword ptr [ebp-20],ecx
 0066FE42    mov         dword ptr [ebp-1C],ecx
 0066FE45    mov         dword ptr [ebp-18],ecx
 0066FE48    mov         dword ptr [ebp-4],ecx
 0066FE4B    mov         dword ptr [ebp-8],edx
 0066FE4E    mov         esi,eax
 0066FE50    xor         eax,eax
 0066FE52    push        ebp
 0066FE53    push        670030
 0066FE58    push        dword ptr fs:[eax]
 0066FE5B    mov         dword ptr fs:[eax],esp
 0066FE5E    xor         ebx,ebx
 0066FE60    mov         byte ptr [ebp-9],0
 0066FE64    mov         eax,dword ptr [esi+3D8]
 0066FE6A    mov         edx,dword ptr [eax]
 0066FE6C    call        dword ptr [edx+54]
 0066FE6F    test        al,al
>0066FE71    je          0066FFF4
 0066FE77    lea         edx,[ebp-18]
 0066FE7A    mov         eax,dword ptr [esi+3D8]
 0066FE80    call        TOpenDialog.GetFileName
 0066FE85    mov         edx,dword ptr [ebp-18]
 0066FE88    mov         eax,dword ptr [ebp-8]
 0066FE8B    call        @UStrAsg
 0066FE90    mov         dl,1
 0066FE92    mov         eax,[0066AC0C];TLicenseFile
 0066FE97    call        TObject.Create;TLicenseFile.Create
 0066FE9C    mov         edi,eax
 0066FE9E    mov         eax,dword ptr [esi+3DC]
 0066FEA4    call        006695D4
 0066FEA9    add         esp,0FFFFFFF8
 0066FEAC    fstp        qword ptr [esp]
 0066FEAF    wait
 0066FEB0    mov         edx,dword ptr [ebp-8]
 0066FEB3    mov         edx,dword ptr [edx]
 0066FEB5    mov         eax,edi
 0066FEB7    call        TLicenseFile.VerifyLicFile
 0066FEBC    mov         dword ptr [ebp-10],eax
 0066FEBF    mov         eax,dword ptr [ebp-10]
 0066FEC2    sub         eax,1
>0066FEC5    jb          0066FED0
 0066FEC7    sub         eax,4
>0066FECA    jne         0066FFA2
 0066FED0    mov         eax,dword ptr [esi+3DC]
 0066FED6    call        006695D4
 0066FEDB    fsubr       qword ptr [edi+208];TLicenseFile.LicExpDate:TDateTime
 0066FEE1    call        @TRUNC
 0066FEE6    push        eax
 0066FEE7    sar         eax,1F
 0066FEEA    cmp         eax,edx
 0066FEEC    pop         eax
>0066FEED    je          0066FEF4
 0066FEEF    call        @BoundErr
 0066FEF4    mov         dword ptr [ebp-14],eax
 0066FEF7    lea         eax,[ebp-4]
 0066FEFA    push        eax
 0066FEFB    lea         edx,[ebp-1C]
 0066FEFE    mov         eax,edi
 0066FF00    call        0066B3F4
 0066FF05    mov         eax,dword ptr [ebp-1C]
 0066FF08    mov         ecx,670050;', '
 0066FF0D    mov         edx,670060;#13+#10
 0066FF12    call        00432308
 0066FF17    push        0
 0066FF19    lea         eax,[ebp-20]
 0066FF1C    push        eax
 0066FF1D    mov         eax,dword ptr [ebp-14]
 0066FF20    mov         dword ptr [ebp-30],eax
 0066FF23    mov         byte ptr [ebp-2C],0
 0066FF27    mov         eax,dword ptr [ebp-4]
 0066FF2A    mov         dword ptr [ebp-28],eax
 0066FF2D    mov         byte ptr [ebp-24],0B
 0066FF31    lea         edx,[ebp-30]
 0066FF34    mov         eax,[007C42C4];^gvar_007CA830
 0066FF39    movzx       eax,byte ptr [eax]
 0066FF3C    imul        eax,eax,7
>0066FF3F    jno         0066FF46
 0066FF41    call        @IntOver
 0066FF46    mov         eax,dword ptr [eax*8+7C10C0];^'This license information file expires in %d days!
Licens...
 0066FF4D    mov         ecx,1
 0066FF52    call        Format
 0066FF57    mov         eax,dword ptr [ebp-20]
 0066FF5A    movzx       ecx,word ptr ds:[670064];0x23 gvar_00670064
 0066FF61    mov         dl,3
 0066FF63    call        MessageDlg
 0066FF68    sub         eax,4
>0066FF6B    je          0066FF92
 0066FF6D    sub         eax,2
>0066FF70    je          0066FF7A
 0066FF72    dec         eax
>0066FF73    je          0066FF9A
>0066FF75    jmp         0066FFFA
 0066FF7A    mov         eax,[00828630];gvar_00828630:TLicenseFile
 0066FF7F    call        TObject.Free
 0066FF84    mov         dword ptr ds:[828630],edi;gvar_00828630:TLicenseFile
 0066FF8A    xor         ebx,ebx
 0066FF8C    mov         byte ptr [ebp-9],1
>0066FF90    jmp         0066FFFA
 0066FF92    mov         bl,1
 0066FF94    mov         byte ptr [ebp-9],0
>0066FF98    jmp         0066FFFA
 0066FF9A    xor         ebx,ebx
 0066FF9C    mov         byte ptr [ebp-9],0
>0066FFA0    jmp         0066FFFA
 0066FFA2    push        0
 0066FFA4    mov         eax,dword ptr [ebp-10]
 0066FFA7    dec         eax
 0066FFA8    cmp         eax,4
>0066FFAB    jbe         0066FFB2
 0066FFAD    call        @BoundErr
 0066FFB2    inc         eax
 0066FFB3    mov         edx,dword ptr ds:[7C42C4];^gvar_007CA830
 0066FFB9    movzx       edx,byte ptr [edx]
 0066FFBC    imul        edx,edx,7
>0066FFBF    jno         0066FFC6
 0066FFC1    call        @IntOver
 0066FFC6    lea         edx,[edx*8+7C10AC];^'The license information file could not be found!
Do you want to lo...
 0066FFCD    mov         eax,dword ptr [edx+eax*4-4]
 0066FFD1    movzx       ecx,word ptr ds:[670068];0x3 gvar_00670068
 0066FFD8    mov         dl,1
 0066FFDA    call        MessageDlg
 0066FFDF    cmp         eax,6
>0066FFE2    jne         0066FFEC
 0066FFE4    mov         bl,1
 0066FFE6    mov         byte ptr [ebp-9],0
>0066FFEA    jmp         0066FFFA
 0066FFEC    xor         ebx,ebx
 0066FFEE    mov         byte ptr [ebp-9],0
>0066FFF2    jmp         0066FFFA
 0066FFF4    xor         ebx,ebx
 0066FFF6    mov         byte ptr [ebp-9],0
 0066FFFA    test        bl,bl
>0066FFFC    jne         0066FE64
 00670002    xor         eax,eax
 00670004    pop         edx
 00670005    pop         ecx
 00670006    pop         ecx
 00670007    mov         dword ptr fs:[eax],edx
 0067000A    push        670037
 0067000F    lea         eax,[ebp-20]
 00670012    call        @UStrClr
 00670017    lea         eax,[ebp-1C]
 0067001A    call        @LStrClr
 0067001F    lea         eax,[ebp-18]
 00670022    call        @UStrClr
 00670027    lea         eax,[ebp-4]
 0067002A    call        @LStrClr
 0067002F    ret
>00670030    jmp         @HandleFinally
>00670035    jmp         0067000F
 00670037    movzx       eax,byte ptr [ebp-9]
 0067003B    pop         edi
 0067003C    pop         esi
 0067003D    pop         ebx
 0067003E    mov         esp,ebp
 00670040    pop         ebp
 00670041    ret
end;*}

//0067006C
function TStartUpForm.VerifyLicensee:Boolean;
begin
{*
 0067006C    push        ebp
 0067006D    mov         ebp,esp
 0067006F    mov         ecx,8D
 00670074    push        0
 00670076    push        0
 00670078    dec         ecx
>00670079    jne         00670074
 0067007B    push        ecx
 0067007C    push        ebx
 0067007D    push        esi
 0067007E    push        edi
 0067007F    mov         edi,eax
 00670081    xor         eax,eax
 00670083    push        ebp
 00670084    push        6706F6
 00670089    push        dword ptr fs:[eax]
 0067008C    mov         dword ptr fs:[eax],esp
 0067008F    mov         byte ptr [ebp-25],0
 00670093    mov         ebx,2
 00670098    mov         eax,dword ptr [edi+3DC];TStartUpForm.LicenseKey:TNewLicenseKey
 0067009E    call        TNewLicenseKey.Verify
 006700A3    mov         esi,eax
 006700A5    cmp         esi,7
>006700A8    jne         006700D5
 006700AA    push        0
 006700AC    mov         eax,[007C42C4];^gvar_007CA830
 006700B1    movzx       eax,byte ptr [eax]
 006700B4    imul        eax,eax,7
>006700B7    jno         006700BE
 006700B9    call        @IntOver
 006700BE    mov         eax,dword ptr [eax*8+7C10C4];^'USB License key could not be found!
Insert the license k...
 006700C5    movzx       ecx,word ptr ds:[670708];0x28 gvar_00670708
 006700CC    mov         dl,1
 006700CE    call        MessageDlg
 006700D3    mov         ebx,eax
 006700D5    test        esi,esi
>006700D7    je          006700DE
 006700D9    cmp         ebx,2
>006700DC    jne         00670093
 006700DE    mov         eax,esi
 006700E0    cmp         eax,29
>006700E3    jg          00670110
>006700E5    je          00670126
 006700E7    sub         eax,1
>006700EA    jb          00670228
 006700F0    sub         eax,6
>006700F3    je          00670228
 006700F9    sub         eax,5
>006700FC    je          006701AD
 00670102    sub         eax,0D
>00670105    je          006701AD
>0067010B    jmp         006701D8
 00670110    sub         eax,1F41
>00670115    je          00670154
 00670117    dec         eax
>00670118    je          00670182
 0067011A    dec         eax
>0067011B    je          00670228
>00670121    jmp         006701D8
 00670126    push        0
 00670128    mov         eax,[007C42C4];^gvar_007CA830
 0067012D    movzx       eax,byte ptr [eax]
 00670130    imul        eax,eax,7
>00670133    jno         0067013A
 00670135    call        @IntOver
 0067013A    mov         eax,dword ptr [eax*8+7C10E0];^'The USB License key has expired'
 00670141    movzx       ecx,word ptr ds:[67070C];0x4 gvar_0067070C
 00670148    mov         dl,1
 0067014A    call        MessageDlg
>0067014F    jmp         00670228
 00670154    push        0
 00670156    mov         eax,[007C42C4];^gvar_007CA830
 0067015B    movzx       eax,byte ptr [eax]
 0067015E    imul        eax,eax,7
>00670161    jno         00670168
 00670163    call        @IntOver
 00670168    mov         eax,dword ptr [eax*8+7C10D0];^'USB License key is invalid'
 0067016F    movzx       ecx,word ptr ds:[67070C];0x4 gvar_0067070C
 00670176    mov         dl,1
 00670178    call        MessageDlg
>0067017D    jmp         00670228
 00670182    push        0
 00670184    mov         eax,[007C42C4];^gvar_007CA830
 00670189    movzx       eax,byte ptr [eax]
 0067018C    imul        eax,eax,7
>0067018F    jno         00670196
 00670191    call        @IntOver
 00670196    mov         eax,dword ptr [eax*8+7C10E0];^'The USB License key has expired'
 0067019D    movzx       ecx,word ptr ds:[67070C];0x4 gvar_0067070C
 006701A4    mov         dl,1
 006701A6    call        MessageDlg
>006701AB    jmp         00670228
 006701AD    push        0
 006701AF    mov         eax,[007C42C4];^gvar_007CA830
 006701B4    movzx       eax,byte ptr [eax]
 006701B7    imul        eax,eax,7
>006701BA    jno         006701C1
 006701BC    call        @IntOver
 006701C1    mov         eax,dword ptr [eax*8+7C10D8];^'USB License key clock failure'
 006701C8    movzx       ecx,word ptr ds:[67070C];0x4 gvar_0067070C
 006701CF    mov         dl,1
 006701D1    call        MessageDlg
>006701D6    jmp         00670228
 006701D8    push        0
 006701DA    lea         eax,[ebp-444]
 006701E0    push        eax
 006701E1    mov         dword ptr [ebp-44C],esi
 006701E7    mov         byte ptr [ebp-448],0
 006701EE    lea         edx,[ebp-44C]
 006701F4    mov         eax,[007C42C4];^gvar_007CA830
 006701F9    movzx       eax,byte ptr [eax]
 006701FC    imul        eax,eax,7
>006701FF    jno         00670206
 00670201    call        @IntOver
 00670206    mov         eax,dword ptr [eax*8+7C10CC];^'USB License key error: %d'
 0067020D    xor         ecx,ecx
 0067020F    call        Format
 00670214    mov         eax,dword ptr [ebp-444]
 0067021A    movzx       ecx,word ptr ds:[67070C];0x4 gvar_0067070C
 00670221    mov         dl,1
 00670223    call        MessageDlg
 00670228    test        esi,esi
>0067022A    je          00670235
 0067022C    mov         byte ptr [ebp-25],0
>00670230    jmp         006706B5
 00670235    mov         eax,dword ptr [edi+3DC];TStartUpForm.LicenseKey:TNewLicenseKey
 0067023B    call        00669630
 00670240    fstp        qword ptr [ebp-44C]
 00670246    wait
 00670247    mov         eax,dword ptr [edi+3DC];TStartUpForm.LicenseKey:TNewLicenseKey
 0067024D    call        006695D4
 00670252    fsubr       qword ptr [ebp-44C]
 00670258    fcomp       dword ptr ds:[670710];60:Single
 0067025E    wait
 0067025F    fnstsw      al
 00670261    sahf
>00670262    jae         006702F2
 00670268    push        0
 0067026A    lea         eax,[ebp-450]
 00670270    push        eax
 00670271    mov         eax,dword ptr [edi+3DC];TStartUpForm.LicenseKey:TNewLicenseKey
 00670277    call        00669630
 0067027C    fstp        qword ptr [ebp-458]
 00670282    wait
 00670283    mov         eax,dword ptr [edi+3DC];TStartUpForm.LicenseKey:TNewLicenseKey
 00670289    call        006695D4
 0067028E    fsubr       qword ptr [ebp-458]
 00670294    call        @TRUNC
 00670299    mov         dword ptr [ebp-458],eax
 0067029F    mov         dword ptr [ebp-454],edx
 006702A5    lea         eax,[ebp-458]
 006702AB    mov         dword ptr [ebp-44C],eax
 006702B1    mov         byte ptr [ebp-448],10
 006702B8    lea         edx,[ebp-44C]
 006702BE    mov         eax,[007C42C4];^gvar_007CA830
 006702C3    movzx       eax,byte ptr [eax]
 006702C6    imul        eax,eax,7
>006702C9    jno         006702D0
 006702CB    call        @IntOver
 006702D0    mov         eax,dword ptr [eax*8+7C10C8];^'The USB License key for this software expires in %d days!...
 006702D7    xor         ecx,ecx
 006702D9    call        Format
 006702DE    mov         eax,dword ptr [ebp-450]
 006702E4    movzx       ecx,word ptr ds:[67070C];0x4 gvar_0067070C
 006702EB    xor         edx,edx
 006702ED    call        MessageDlg
 006702F2    lea         eax,[ebp-236]
 006702F8    push        eax
 006702F9    push        0
 006702FB    push        0
 006702FD    push        0
 006702FF    push        0
 00670301    call        shell32.SHGetFolderPathW
 00670306    lea         eax,[ebp-45C]
 0067030C    lea         edx,[ebp-236]
 00670312    call        @UStrFromPWChar
 00670317    push        dword ptr [ebp-45C]
 0067031D    push        670720;'\'
 00670322    push        670730;'winfxnet[1].lic'
 00670327    lea         eax,[ebp-4]
 0067032A    mov         edx,3
 0067032F    call        @UStrCatN
 00670334    mov         dl,1
 00670336    mov         eax,dword ptr [ebp-4]
 00670339    call        0041EA18
 0067033E    test        al,al
>00670340    je          0067039E
 00670342    mov         dl,1
 00670344    mov         eax,[0066AC0C];TLicenseFile
 00670349    call        TObject.Create;TLicenseFile.Create
 0067034E    mov         ebx,eax
 00670350    mov         eax,dword ptr [edi+3DC];TStartUpForm.LicenseKey:TNewLicenseKey
 00670356    call        006695D4
 0067035B    add         esp,0FFFFFFF8
 0067035E    fstp        qword ptr [esp]
 00670361    wait
 00670362    mov         edx,dword ptr [ebp-4]
 00670365    mov         eax,ebx
 00670367    call        TLicenseFile.VerifyLicFile
 0067036C    mov         esi,eax
 0067036E    test        esi,esi
>00670370    je          00670377
 00670372    cmp         esi,5
>00670375    jne         00670397
 00670377    mov         eax,[00828630];gvar_00828630:TLicenseFile
 0067037C    call        TObject.Free
 00670381    mov         dword ptr ds:[828630],ebx;gvar_00828630:TLicenseFile
 00670387    mov         eax,edi
 00670389    call        0066FD94
 0067038E    mov         byte ptr [ebp-25],1
>00670392    jmp         006706B5
 00670397    mov         eax,ebx
 00670399    call        TObject.Free
 0067039E    lea         eax,[ebp-440]
 006703A4    push        eax
 006703A5    push        0
 006703A7    push        0
 006703A9    push        1C
 006703AB    push        0
 006703AD    call        shell32.SHGetFolderPathW
 006703B2    lea         eax,[ebp-460]
 006703B8    lea         edx,[ebp-440]
 006703BE    mov         ecx,105
 006703C3    call        @UStrFromWArray
 006703C8    mov         edx,dword ptr [ebp-460]
 006703CE    lea         eax,[ebp-8]
 006703D1    mov         ecx,67075C;'\Esmi\WinFXNet\'
 006703D6    call        @UStrCat3
 006703DB    lea         eax,[ebp-0C]
 006703DE    mov         ecx,670788;'winfxnet.lic'
 006703E3    mov         edx,dword ptr [ebp-8]
 006703E6    call        @UStrCat3
 006703EB    lea         eax,[ebp-464]
 006703F1    lea         edx,[ebp-440]
 006703F7    mov         ecx,105
 006703FC    call        @UStrFromWArray
 00670401    mov         edx,dword ptr [ebp-464]
 00670407    lea         eax,[ebp-10]
 0067040A    mov         ecx,6707B0;'\Pelco\WinFXNet\'
 0067040F    call        @UStrCat3
 00670414    lea         eax,[ebp-14]
 00670417    mov         ecx,670788;'winfxnet.lic'
 0067041C    mov         edx,dword ptr [ebp-10]
 0067041F    call        @UStrCat3
 00670424    lea         eax,[ebp-468]
 0067042A    lea         edx,[ebp-440]
 00670430    mov         ecx,105
 00670435    call        @UStrFromWArray
 0067043A    mov         edx,dword ptr [ebp-468]
 00670440    lea         eax,[ebp-18]
 00670443    mov         ecx,6707E0;'\Schneider Electric\WinFXNet\'
 00670448    call        @UStrCat3
 0067044D    lea         eax,[ebp-1C]
 00670450    mov         ecx,670788;'winfxnet.lic'
 00670455    mov         edx,dword ptr [ebp-18]
 00670458    call        @UStrCat3
 0067045D    mov         dl,1
 0067045F    mov         eax,dword ptr [ebp-1C]
 00670462    call        0041EA18
 00670467    test        al,al
>00670469    je          00670478
 0067046B    lea         eax,[ebp-20]
 0067046E    mov         edx,dword ptr [ebp-1C]
 00670471    call        @UStrLAsg
>00670476    jmp         0067049E
 00670478    mov         dl,1
 0067047A    mov         eax,dword ptr [ebp-14]
 0067047D    call        0041EA18
 00670482    test        al,al
>00670484    je          00670493
 00670486    lea         eax,[ebp-20]
 00670489    mov         edx,dword ptr [ebp-14]
 0067048C    call        @UStrLAsg
>00670491    jmp         0067049E
 00670493    lea         eax,[ebp-20]
 00670496    mov         edx,dword ptr [ebp-0C]
 00670499    call        @UStrLAsg
 0067049E    xor         ebx,ebx
 006704A0    mov         eax,dword ptr [edi+3DC];TStartUpForm.LicenseKey:TNewLicenseKey
 006704A6    call        006695D4
 006704AB    add         esp,0FFFFFFF8
 006704AE    fstp        qword ptr [esp]
 006704B1    wait
 006704B2    mov         edx,dword ptr [ebp-20]
 006704B5    mov         eax,[00828630];gvar_00828630:TLicenseFile
 006704BA    call        TLicenseFile.VerifyLicFile
 006704BF    mov         esi,eax
 006704C1    mov         eax,esi
 006704C3    sub         eax,1
>006704C6    jb          006704D8
 006704C8    sub         eax,4
>006704CB    jb          0067052C
>006704CD    je          006705BC
>006704D3    jmp         00670697
 006704D8    xor         ebx,ebx
 006704DA    mov         eax,dword ptr [ebp-20]
 006704DD    mov         edx,dword ptr [ebp-14]
 006704E0    call        @UStrEqual
>006704E5    je          006704F8
 006704E7    mov         eax,dword ptr [ebp-20]
 006704EA    mov         edx,dword ptr [ebp-0C]
 006704ED    call        @UStrEqual
>006704F2    jne         00670697
 006704F8    mov         dl,1
 006704FA    mov         eax,dword ptr [ebp-18]
 006704FD    call        0041EAB0
 00670502    test        al,al
>00670504    jne         0067050E
 00670506    mov         eax,dword ptr [ebp-18]
 00670509    call        0041EB90
 0067050E    push        0
 00670510    mov         eax,dword ptr [ebp-1C]
 00670513    call        @UStrToPWChar
 00670518    push        eax
 00670519    mov         eax,dword ptr [ebp-20]
 0067051C    call        @UStrToPWChar
 00670521    push        eax
 00670522    call        kernel32.CopyFileW
>00670527    jmp         00670697
 0067052C    push        0
 0067052E    dec         esi
 0067052F    cmp         esi,4
>00670532    jbe         00670539
 00670534    call        @BoundErr
 00670539    inc         esi
 0067053A    mov         eax,[007C42C4];^gvar_007CA830
 0067053F    movzx       eax,byte ptr [eax]
 00670542    imul        eax,eax,7
>00670545    jno         0067054C
 00670547    call        @IntOver
 0067054C    lea         eax,[eax*8+7C10AC];^'The license information file could not be found!
Do you want to lo...
 00670553    mov         eax,dword ptr [eax+esi*4-4]
 00670557    movzx       ecx,word ptr ds:[67081C];0x3 gvar_0067081C
 0067055E    mov         dl,1
 00670560    call        MessageDlg
 00670565    cmp         eax,6
>00670568    jne         006705B5
 0067056A    lea         edx,[ebp-24]
 0067056D    mov         eax,edi
 0067056F    call        0066FE34
 00670574    test        al,al
>00670576    je          006705AE
 00670578    mov         dl,1
 0067057A    mov         eax,dword ptr [ebp-18]
 0067057D    call        0041EAB0
 00670582    test        al,al
>00670584    jne         0067058E
 00670586    mov         eax,dword ptr [ebp-18]
 00670589    call        0041EB90
 0067058E    push        0
 00670590    mov         eax,dword ptr [ebp-1C]
 00670593    call        @UStrToPWChar
 00670598    push        eax
 00670599    mov         eax,dword ptr [ebp-24]
 0067059C    call        @UStrToPWChar
 006705A1    push        eax
 006705A2    call        kernel32.CopyFileW
 006705A7    mov         bl,1
>006705A9    jmp         00670697
 006705AE    xor         ebx,ebx
>006705B0    jmp         00670697
 006705B5    xor         ebx,ebx
>006705B7    jmp         00670697
 006705BC    mov         eax,dword ptr [edi+3DC];TStartUpForm.LicenseKey:TNewLicenseKey
 006705C2    call        006695D4
 006705C7    mov         eax,[00828630];gvar_00828630:TLicenseFile
 006705CC    fsubr       qword ptr [eax+208]
 006705D2    call        @TRUNC
 006705D7    push        eax
 006705D8    sar         eax,1F
 006705DB    cmp         eax,edx
 006705DD    pop         eax
>006705DE    je          006705E5
 006705E0    call        @BoundErr
 006705E5    mov         dword ptr [ebp-2C],eax
 006705E8    push        0
 006705EA    lea         eax,[ebp-46C]
 006705F0    push        eax
 006705F1    dec         esi
 006705F2    cmp         esi,4
>006705F5    jbe         006705FC
 006705F7    call        @BoundErr
 006705FC    inc         esi
 006705FD    mov         eax,[007C42C4];^gvar_007CA830
 00670602    movzx       eax,byte ptr [eax]
 00670605    imul        eax,eax,7
>00670608    jno         0067060F
 0067060A    call        @IntOver
 0067060F    lea         eax,[eax*8+7C10AC];^'The license information file could not be found!
Do you want to lo...
 00670616    mov         eax,dword ptr [eax+esi*4-4]
 0067061A    mov         edx,dword ptr [ebp-2C]
 0067061D    mov         dword ptr [ebp-44C],edx
 00670623    mov         byte ptr [ebp-448],0
 0067062A    lea         edx,[ebp-44C]
 00670630    xor         ecx,ecx
 00670632    call        Format
 00670637    mov         eax,dword ptr [ebp-46C]
 0067063D    movzx       ecx,word ptr ds:[67081C];0x3 gvar_0067081C
 00670644    xor         edx,edx
 00670646    call        MessageDlg
 0067064B    cmp         eax,6
>0067064E    jne         00670695
 00670650    lea         edx,[ebp-24]
 00670653    mov         eax,edi
 00670655    call        0066FE34
 0067065A    test        al,al
>0067065C    je          00670691
 0067065E    mov         dl,1
 00670660    mov         eax,dword ptr [ebp-18]
 00670663    call        0041EAB0
 00670668    test        al,al
>0067066A    jne         00670674
 0067066C    mov         eax,dword ptr [ebp-18]
 0067066F    call        0041EB90
 00670674    push        0
 00670676    mov         eax,dword ptr [ebp-1C]
 00670679    call        @UStrToPWChar
 0067067E    push        eax
 0067067F    mov         eax,dword ptr [ebp-24]
 00670682    call        @UStrToPWChar
 00670687    push        eax
 00670688    call        kernel32.CopyFileW
 0067068D    mov         bl,1
>0067068F    jmp         00670697
 00670691    xor         ebx,ebx
>00670693    jmp         00670697
 00670695    xor         ebx,ebx
 00670697    test        bl,bl
>00670699    jne         0067045D
 0067069F    cmp         esi,5
>006706A2    jne         006706A6
 006706A4    xor         esi,esi
 006706A6    test        esi,esi
>006706A8    jne         006706B5
 006706AA    mov         eax,edi
 006706AC    call        0066FD94
 006706B1    mov         byte ptr [ebp-25],1
 006706B5    xor         eax,eax
 006706B7    pop         edx
 006706B8    pop         ecx
 006706B9    pop         ecx
 006706BA    mov         dword ptr fs:[eax],edx
 006706BD    push        6706FD
 006706C2    lea         eax,[ebp-46C]
 006706C8    mov         edx,5
 006706CD    call        @UStrArrayClr
 006706D2    lea         eax,[ebp-450]
 006706D8    call        @UStrClr
 006706DD    lea         eax,[ebp-444]
 006706E3    call        @UStrClr
 006706E8    lea         eax,[ebp-24]
 006706EB    mov         edx,9
 006706F0    call        @UStrArrayClr
 006706F5    ret
>006706F6    jmp         @HandleFinally
>006706FB    jmp         006706C2
 006706FD    movzx       eax,byte ptr [ebp-25]
 00670701    pop         edi
 00670702    pop         esi
 00670703    pop         ebx
 00670704    mov         esp,ebp
 00670706    pop         ebp
 00670707    ret
*}
end;

//00670D4C
function TFXPCI.EncodeFXCIMsg(part:Byte; NegVer:Word; var MsgData:TMsgData; var MsgLen:Byte):Boolean;
begin
{*
 00670D4C    push        ebp
 00670D4D    mov         ebp,esp
 00670D4F    add         esp,0FFFFFEFC
 00670D55    push        ebx
 00670D56    push        esi
 00670D57    push        edi
 00670D58    mov         edi,ecx
 00670D5A    mov         byte ptr [ebp-1],dl
 00670D5D    mov         ebx,eax
 00670D5F    mov         esi,dword ptr [ebp+8]
 00670D62    mov         eax,edi
 00670D64    dec         eax
 00670D65    sub         ax,5
>00670D69    jb          00670D85
 00670D6B    sub         ax,3
>00670D6F    jb          00670D8F
 00670D71    add         eax,0FFFFFFE9
 00670D74    sub         ax,2
>00670D78    jb          00670D8F
 00670D7A    add         eax,0FFFFFFE2
 00670D7D    sub         ax,9
>00670D81    jb          00670D8F
>00670D83    jmp         00670D99
 00670D85    mov         byte ptr [ebp-2],0
 00670D89    mov         byte ptr [ebp-3],0
>00670D8D    jmp         00670DB0
 00670D8F    mov         byte ptr [ebp-2],2
 00670D93    mov         byte ptr [ebp-3],0
>00670D97    jmp         00670DB0
 00670D99    mov         ecx,dword ptr ds:[7C13F4];^'Configuration Info encoding error!'
 00670D9F    mov         dl,1
 00670DA1    mov         eax,[004174D0];Exception
 00670DA6    call        Exception.Create;Exception.Create
 00670DAB    call        @RaiseExcept
 00670DB0    lea         eax,[ebp-101]
 00670DB6    xor         ecx,ecx
 00670DB8    mov         edx,0FE
 00670DBD    call        @FillChar
 00670DC2    movzx       eax,byte ptr [ebp-1]
 00670DC6    dec         al
>00670DC8    je          00670DD7
 00670DCA    dec         al
>00670DCC    je          006711EF
>00670DD2    jmp         00671406
 00670DD7    fldz
 00670DD9    fcomp       qword ptr [ebx+4];TFXPCI.FXCI:TFXCIRec
 00670DDC    wait
 00670DDD    fnstsw      al
 00670DDF    sahf
>00670DE0    je          00670E86
 00670DE6    push        dword ptr [ebx+8]
 00670DE9    push        dword ptr [ebx+4];TFXPCI.FXCI:TFXCIRec
 00670DEC    call        004B37F4
 00670DF1    movzx       eax,ax
 00670DF4    cmp         eax,0FF
>00670DF9    jbe         00670E00
 00670DFB    call        @BoundErr
 00670E00    mov         byte ptr [ebp-101],al
 00670E06    push        dword ptr [ebx+8]
 00670E09    push        dword ptr [ebx+4];TFXPCI.FXCI:TFXCIRec
 00670E0C    call        004B37D0
 00670E11    movzx       eax,ax
 00670E14    cmp         eax,0FF
>00670E19    jbe         00670E20
 00670E1B    call        @BoundErr
 00670E20    mov         byte ptr [ebp-100],al
 00670E26    push        dword ptr [ebx+8]
 00670E29    push        dword ptr [ebx+4];TFXPCI.FXCI:TFXCIRec
 00670E2C    call        004B37AC
 00670E31    movzx       eax,ax
 00670E34    sub         eax,7D0
>00670E39    jno         00670E40
 00670E3B    call        @IntOver
 00670E40    mov         byte ptr [ebp-0FF],al
 00670E46    push        dword ptr [ebx+8]
 00670E49    push        dword ptr [ebx+4];TFXPCI.FXCI:TFXCIRec
 00670E4C    call        004B3818
 00670E51    movzx       eax,ax
 00670E54    cmp         eax,0FF
>00670E59    jbe         00670E60
 00670E5B    call        @BoundErr
 00670E60    mov         byte ptr [ebp-0FE],al
 00670E66    push        dword ptr [ebx+8]
 00670E69    push        dword ptr [ebx+4];TFXPCI.FXCI:TFXCIRec
 00670E6C    call        004B3840
 00670E71    movzx       eax,ax
 00670E74    cmp         eax,0FF
>00670E79    jbe         00670E80
 00670E7B    call        @BoundErr
 00670E80    mov         byte ptr [ebp-0FD],al
 00670E86    movzx       eax,byte ptr [ebx+40]
 00670E8A    mov         edx,10
 00670E8F    mul         eax,edx
>00670E91    jno         00670E98
 00670E93    call        @IntOver
 00670E98    movzx       edx,byte ptr [ebx+41]
 00670E9C    add         eax,edx
>00670E9E    jno         00670EA5
 00670EA0    call        @IntOver
 00670EA5    cmp         eax,0FF
>00670EAA    jbe         00670EB1
 00670EAC    call        @BoundErr
 00670EB1    mov         byte ptr [ebp-0FC],al
 00670EB7    movzx       ecx,byte ptr [ebx+0C]
 00670EBB    lea         edx,[ebp-0FB]
 00670EC1    lea         eax,[ebx+0D]
 00670EC4    call        Move
 00670EC9    fldz
 00670ECB    fcomp       qword ptr [ebx+44]
 00670ECE    wait
 00670ECF    fnstsw      al
 00670ED1    sahf
>00670ED2    je          00670F78
 00670ED8    push        dword ptr [ebx+48]
 00670EDB    push        dword ptr [ebx+44]
 00670EDE    call        004B37F4
 00670EE3    movzx       eax,ax
 00670EE6    cmp         eax,0FF
>00670EEB    jbe         00670EF2
 00670EED    call        @BoundErr
 00670EF2    mov         byte ptr [ebp-0C8],al
 00670EF8    push        dword ptr [ebx+48]
 00670EFB    push        dword ptr [ebx+44]
 00670EFE    call        004B37D0
 00670F03    movzx       eax,ax
 00670F06    cmp         eax,0FF
>00670F0B    jbe         00670F12
 00670F0D    call        @BoundErr
 00670F12    mov         byte ptr [ebp-0C7],al
 00670F18    push        dword ptr [ebx+48]
 00670F1B    push        dword ptr [ebx+44]
 00670F1E    call        004B37AC
 00670F23    movzx       eax,ax
 00670F26    sub         eax,7D0
>00670F2B    jno         00670F32
 00670F2D    call        @IntOver
 00670F32    mov         byte ptr [ebp-0C6],al
 00670F38    push        dword ptr [ebx+48]
 00670F3B    push        dword ptr [ebx+44]
 00670F3E    call        004B3818
 00670F43    movzx       eax,ax
 00670F46    cmp         eax,0FF
>00670F4B    jbe         00670F52
 00670F4D    call        @BoundErr
 00670F52    mov         byte ptr [ebp-0C5],al
 00670F58    push        dword ptr [ebx+48]
 00670F5B    push        dword ptr [ebx+44]
 00670F5E    call        004B3840
 00670F63    movzx       eax,ax
 00670F66    cmp         eax,0FF
>00670F6B    jbe         00670F72
 00670F6D    call        @BoundErr
 00670F72    mov         byte ptr [ebp-0C4],al
 00670F78    movzx       eax,byte ptr [ebx+80]
 00670F7F    mov         edx,10
 00670F84    mul         eax,edx
>00670F86    jno         00670F8D
 00670F88    call        @IntOver
 00670F8D    movzx       edx,byte ptr [ebx+81]
 00670F94    add         eax,edx
>00670F96    jno         00670F9D
 00670F98    call        @IntOver
 00670F9D    cmp         eax,0FF
>00670FA2    jbe         00670FA9
 00670FA4    call        @BoundErr
 00670FA9    mov         byte ptr [ebp-0C3],al
 00670FAF    movzx       ecx,byte ptr [ebx+4C]
 00670FB3    lea         edx,[ebp-0C2]
 00670FB9    lea         eax,[ebx+4D]
 00670FBC    call        Move
 00670FC1    fldz
 00670FC3    fcomp       qword ptr [ebx+84]
 00670FC9    wait
 00670FCA    fnstsw      al
 00670FCC    sahf
>00670FCD    je          00671091
 00670FD3    push        dword ptr [ebx+88]
 00670FD9    push        dword ptr [ebx+84]
 00670FDF    call        004B37F4
 00670FE4    movzx       eax,ax
 00670FE7    cmp         eax,0FF
>00670FEC    jbe         00670FF3
 00670FEE    call        @BoundErr
 00670FF3    mov         byte ptr [ebp-8F],al
 00670FF9    push        dword ptr [ebx+88]
 00670FFF    push        dword ptr [ebx+84]
 00671005    call        004B37D0
 0067100A    movzx       eax,ax
 0067100D    cmp         eax,0FF
>00671012    jbe         00671019
 00671014    call        @BoundErr
 00671019    mov         byte ptr [ebp-8E],al
 0067101F    push        dword ptr [ebx+88]
 00671025    push        dword ptr [ebx+84]
 0067102B    call        004B37AC
 00671030    movzx       eax,ax
 00671033    sub         eax,7D0
>00671038    jno         0067103F
 0067103A    call        @IntOver
 0067103F    mov         byte ptr [ebp-8D],al
 00671045    push        dword ptr [ebx+88]
 0067104B    push        dword ptr [ebx+84]
 00671051    call        004B3818
 00671056    movzx       eax,ax
 00671059    cmp         eax,0FF
>0067105E    jbe         00671065
 00671060    call        @BoundErr
 00671065    mov         byte ptr [ebp-8C],al
 0067106B    push        dword ptr [ebx+88]
 00671071    push        dword ptr [ebx+84]
 00671077    call        004B3840
 0067107C    movzx       eax,ax
 0067107F    cmp         eax,0FF
>00671084    jbe         0067108B
 00671086    call        @BoundErr
 0067108B    mov         byte ptr [ebp-8B],al
 00671091    movzx       eax,byte ptr [ebx+0C0]
 00671098    mov         edx,10
 0067109D    mul         eax,edx
>0067109F    jno         006710A6
 006710A1    call        @IntOver
 006710A6    movzx       edx,byte ptr [ebx+0C1]
 006710AD    add         eax,edx
>006710AF    jno         006710B6
 006710B1    call        @IntOver
 006710B6    cmp         eax,0FF
>006710BB    jbe         006710C2
 006710BD    call        @BoundErr
 006710C2    mov         byte ptr [ebp-8A],al
 006710C8    movzx       ecx,byte ptr [ebx+8C]
 006710CF    lea         edx,[ebp-89]
 006710D5    lea         eax,[ebx+8D]
 006710DB    call        Move
 006710E0    fldz
 006710E2    fcomp       qword ptr [ebx+0C4]
 006710E8    wait
 006710E9    fnstsw      al
 006710EB    sahf
>006710EC    je          006711A1
 006710F2    push        dword ptr [ebx+0C8]
 006710F8    push        dword ptr [ebx+0C4]
 006710FE    call        004B37F4
 00671103    movzx       eax,ax
 00671106    cmp         eax,0FF
>0067110B    jbe         00671112
 0067110D    call        @BoundErr
 00671112    mov         byte ptr [ebp-56],al
 00671115    push        dword ptr [ebx+0C8]
 0067111B    push        dword ptr [ebx+0C4]
 00671121    call        004B37D0
 00671126    movzx       eax,ax
 00671129    cmp         eax,0FF
>0067112E    jbe         00671135
 00671130    call        @BoundErr
 00671135    mov         byte ptr [ebp-55],al
 00671138    push        dword ptr [ebx+0C8]
 0067113E    push        dword ptr [ebx+0C4]
 00671144    call        004B37AC
 00671149    movzx       eax,ax
 0067114C    sub         eax,7D0
>00671151    jno         00671158
 00671153    call        @IntOver
 00671158    mov         byte ptr [ebp-54],al
 0067115B    push        dword ptr [ebx+0C8]
 00671161    push        dword ptr [ebx+0C4]
 00671167    call        004B3818
 0067116C    movzx       eax,ax
 0067116F    cmp         eax,0FF
>00671174    jbe         0067117B
 00671176    call        @BoundErr
 0067117B    mov         byte ptr [ebp-53],al
 0067117E    push        dword ptr [ebx+0C8]
 00671184    push        dword ptr [ebx+0C4]
 0067118A    call        004B3840
 0067118F    movzx       eax,ax
 00671192    cmp         eax,0FF
>00671197    jbe         0067119E
 00671199    call        @BoundErr
 0067119E    mov         byte ptr [ebp-52],al
 006711A1    movzx       eax,byte ptr [ebx+100]
 006711A8    mov         edx,10
 006711AD    mul         eax,edx
>006711AF    jno         006711B6
 006711B1    call        @IntOver
 006711B6    movzx       edx,byte ptr [ebx+101]
 006711BD    add         eax,edx
>006711BF    jno         006711C6
 006711C1    call        @IntOver
 006711C6    cmp         eax,0FF
>006711CB    jbe         006711D2
 006711CD    call        @BoundErr
 006711D2    mov         byte ptr [ebp-51],al
 006711D5    movzx       ecx,byte ptr [ebx+0CC]
 006711DC    lea         edx,[ebp-50]
 006711DF    lea         eax,[ebx+0CD]
 006711E5    call        Move
>006711EA    jmp         00671406
 006711EF    fldz
 006711F1    fcomp       qword ptr [ebx+104]
 006711F7    wait
 006711F8    fnstsw      al
 006711FA    sahf
>006711FB    je          006712BF
 00671201    push        dword ptr [ebx+108]
 00671207    push        dword ptr [ebx+104]
 0067120D    call        004B37F4
 00671212    movzx       eax,ax
 00671215    cmp         eax,0FF
>0067121A    jbe         00671221
 0067121C    call        @BoundErr
 00671221    mov         byte ptr [ebp-101],al
 00671227    push        dword ptr [ebx+108]
 0067122D    push        dword ptr [ebx+104]
 00671233    call        004B37D0
 00671238    movzx       eax,ax
 0067123B    cmp         eax,0FF
>00671240    jbe         00671247
 00671242    call        @BoundErr
 00671247    mov         byte ptr [ebp-100],al
 0067124D    push        dword ptr [ebx+108]
 00671253    push        dword ptr [ebx+104]
 00671259    call        004B37AC
 0067125E    movzx       eax,ax
 00671261    sub         eax,7D0
>00671266    jno         0067126D
 00671268    call        @IntOver
 0067126D    mov         byte ptr [ebp-0FF],al
 00671273    push        dword ptr [ebx+108]
 00671279    push        dword ptr [ebx+104]
 0067127F    call        004B3818
 00671284    movzx       eax,ax
 00671287    cmp         eax,0FF
>0067128C    jbe         00671293
 0067128E    call        @BoundErr
 00671293    mov         byte ptr [ebp-0FE],al
 00671299    push        dword ptr [ebx+108]
 0067129F    push        dword ptr [ebx+104]
 006712A5    call        004B3840
 006712AA    movzx       eax,ax
 006712AD    cmp         eax,0FF
>006712B2    jbe         006712B9
 006712B4    call        @BoundErr
 006712B9    mov         byte ptr [ebp-0FD],al
 006712BF    movzx       eax,byte ptr [ebx+140]
 006712C6    mov         edx,10
 006712CB    mul         eax,edx
>006712CD    jno         006712D4
 006712CF    call        @IntOver
 006712D4    movzx       edx,byte ptr [ebx+141]
 006712DB    add         eax,edx
>006712DD    jno         006712E4
 006712DF    call        @IntOver
 006712E4    cmp         eax,0FF
>006712E9    jbe         006712F0
 006712EB    call        @BoundErr
 006712F0    mov         byte ptr [ebp-0FC],al
 006712F6    movzx       ecx,byte ptr [ebx+10C]
 006712FD    lea         edx,[ebp-0FB]
 00671303    lea         eax,[ebx+10D]
 00671309    call        Move
 0067130E    push        dword ptr [ebx+148]
 00671314    push        dword ptr [ebx+144]
 0067131A    call        004B37F4
 0067131F    movzx       eax,ax
 00671322    cmp         eax,0FF
>00671327    jbe         0067132E
 00671329    call        @BoundErr
 0067132E    mov         byte ptr [ebp-56],al
 00671331    push        dword ptr [ebx+148]
 00671337    push        dword ptr [ebx+144]
 0067133D    call        004B37D0
 00671342    movzx       eax,ax
 00671345    cmp         eax,0FF
>0067134A    jbe         00671351
 0067134C    call        @BoundErr
 00671351    mov         byte ptr [ebp-55],al
 00671354    push        dword ptr [ebx+148]
 0067135A    push        dword ptr [ebx+144]
 00671360    call        004B37AC
 00671365    movzx       eax,ax
 00671368    sub         eax,7D0
>0067136D    jno         00671374
 0067136F    call        @IntOver
 00671374    mov         byte ptr [ebp-54],al
 00671377    push        dword ptr [ebx+148]
 0067137D    push        dword ptr [ebx+144]
 00671383    call        004B3818
 00671388    movzx       eax,ax
 0067138B    cmp         eax,0FF
>00671390    jbe         00671397
 00671392    call        @BoundErr
 00671397    mov         byte ptr [ebp-53],al
 0067139A    push        dword ptr [ebx+148]
 006713A0    push        dword ptr [ebx+144]
 006713A6    call        004B3840
 006713AB    movzx       eax,ax
 006713AE    cmp         eax,0FF
>006713B3    jbe         006713BA
 006713B5    call        @BoundErr
 006713BA    mov         byte ptr [ebp-52],al
 006713BD    movzx       eax,byte ptr [ebx+180]
 006713C4    mov         edx,10
 006713C9    mul         eax,edx
>006713CB    jno         006713D2
 006713CD    call        @IntOver
 006713D2    movzx       edx,byte ptr [ebx+181]
 006713D9    add         eax,edx
>006713DB    jno         006713E2
 006713DD    call        @IntOver
 006713E2    cmp         eax,0FF
>006713E7    jbe         006713EE
 006713E9    call        @BoundErr
 006713EE    mov         byte ptr [ebp-51],al
 006713F1    movzx       ecx,byte ptr [ebx+14C]
 006713F8    lea         edx,[ebp-50]
 006713FB    lea         eax,[ebx+14D]
 00671401    call        Move
 00671406    dec         edi
 00671407    sub         di,5
>0067140B    jb          00671427
 0067140D    sub         di,3
>00671411    jb          00671442
 00671413    add         edi,0FFFFFFE9
 00671416    sub         di,2
>0067141A    jb          00671442
 0067141C    add         edi,0FFFFFFE2
 0067141F    sub         di,9
>00671423    jb          00671442
>00671425    jmp         00671476
 00671427    lea         edx,[esi+1]
 0067142A    lea         eax,[ebp-101]
 00671430    mov         ecx,0FE
 00671435    call        Move
 0067143A    mov         eax,dword ptr [ebp+0C]
 0067143D    mov         byte ptr [eax],0FF
>00671440    jmp         0067148D
 00671442    mov         byte ptr [esi+1],7F
 00671446    movzx       eax,byte ptr [ebp-2]
 0067144A    mov         byte ptr [esi+2],al
 0067144D    movzx       eax,byte ptr [ebp-1]
 00671451    mov         byte ptr [esi+3],al
 00671454    movzx       eax,byte ptr [ebp-3]
 00671458    mov         byte ptr [esi+4],al
 0067145B    lea         edx,[esi+5]
 0067145E    lea         eax,[ebp-101]
 00671464    mov         ecx,0FA
 00671469    call        Move
 0067146E    mov         eax,dword ptr [ebp+0C]
 00671471    mov         byte ptr [eax],0FF
>00671474    jmp         0067148D
 00671476    mov         ecx,dword ptr ds:[7C13F4];^'Configuration Info encoding error!'
 0067147C    mov         dl,1
 0067147E    mov         eax,[004174D0];Exception
 00671483    call        Exception.Create;Exception.Create
 00671488    call        @RaiseExcept
 0067148D    mov         al,1
 0067148F    pop         edi
 00671490    pop         esi
 00671491    pop         ebx
 00671492    mov         esp,ebp
 00671494    pop         ebp
 00671495    ret         8
*}
end;

//00671498
{*procedure sub_00671498(?:?; ?:?);
begin
 00671498    push        ebp
 00671499    mov         ebp,esp
 0067149B    push        0
 0067149D    push        ebx
 0067149E    push        esi
 0067149F    mov         esi,edx
 006714A1    mov         ebx,eax
 006714A3    xor         eax,eax
 006714A5    push        ebp
 006714A6    push        671514
 006714AB    push        dword ptr fs:[eax]
 006714AE    mov         dword ptr fs:[eax],esp
 006714B1    lea         eax,[ebp-4]
 006714B4    lea         edx,[ebx+14C]
 006714BA    call        @UStrFromString
 006714BF    cmp         dword ptr [ebp-4],0
>006714C3    je          006714F4
 006714C5    lea         eax,[ebp-4]
 006714C8    push        eax
 006714C9    mov         ecx,1
 006714CE    mov         edx,dword ptr [ebp-4]
 006714D1    mov         eax,67152C;'
'
 006714D6    call        Pos
 006714DB    mov         ecx,eax
 006714DD    sub         ecx,1
>006714E0    jno         006714E7
 006714E2    call        @IntOver
 006714E7    mov         edx,1
 006714EC    mov         eax,dword ptr [ebp-4]
 006714EF    call        @UStrCopy
 006714F4    mov         eax,esi
 006714F6    mov         edx,dword ptr [ebp-4]
 006714F9    call        @UStrAsg
 006714FE    xor         eax,eax
 00671500    pop         edx
 00671501    pop         ecx
 00671502    pop         ecx
 00671503    mov         dword ptr fs:[eax],edx
 00671506    push        67151B
 0067150B    lea         eax,[ebp-4]
 0067150E    call        @UStrClr
 00671513    ret
>00671514    jmp         @HandleFinally
>00671519    jmp         0067150B
 0067151B    pop         esi
 0067151C    pop         ebx
 0067151D    pop         ecx
 0067151E    pop         ebp
 0067151F    ret
end;*}

//00671534
function TFXPCI.DecodeFXCIMsg(part:Byte; MsgLen:Byte; MsgData:TMsgData):Boolean;
begin
{*
 00671534    push        ebp
 00671535    mov         ebp,esp
 00671537    add         esp,0FFFFFDFC
 0067153D    push        ebx
 0067153E    push        esi
 0067153F    push        edi
 00671540    mov         byte ptr [ebp-2],cl
 00671543    mov         byte ptr [ebp-1],dl
 00671546    mov         edi,eax
 00671548    mov         esi,dword ptr [ebp+8]
 0067154B    mov         byte ptr [ebp-3],0
 0067154F    lea         eax,[ebp-102]
 00671555    xor         ecx,ecx
 00671557    mov         edx,0FE
 0067155C    call        @FillChar
 00671561    movzx       eax,byte ptr [esi+1]
 00671565    sub         al,7F
>00671567    jne         00671592
 00671569    movzx       ebx,byte ptr [esi+2]
 0067156D    movzx       eax,byte ptr [esi+3]
 00671571    mov         byte ptr [ebp-4],al
 00671574    movzx       ecx,byte ptr [ebp-2]
 00671578    sub         ecx,5
>0067157B    jno         00671582
 0067157D    call        @IntOver
 00671582    lea         edx,[ebp-102]
 00671588    lea         eax,[esi+5]
 0067158B    call        Move
>00671590    jmp         006715B7
 00671592    xor         ebx,ebx
 00671594    movzx       eax,byte ptr [ebp-1]
 00671598    mov         byte ptr [ebp-4],al
 0067159B    movzx       ecx,byte ptr [ebp-2]
 0067159F    sub         ecx,1
>006715A2    jno         006715A9
 006715A4    call        @IntOver
 006715A9    lea         edx,[ebp-102]
 006715AF    lea         eax,[esi+1]
 006715B2    call        Move
 006715B7    not         bl
 006715B9    sub         bl,3
>006715BC    jae         006715D3
 006715BE    push        0
 006715C0    movzx       ecx,word ptr ds:[67195C];0x4 gvar_0067195C
 006715C7    xor         edx,edx
 006715C9    mov         eax,67196C;'Unknown version in decoded config info data'
 006715CE    call        MessageDlg
 006715D3    movzx       eax,byte ptr [ebp-4]
 006715D7    dec         al
>006715D9    je          006715E8
 006715DB    dec         al
>006715DD    je          00671836
>006715E3    jmp         0067194E
 006715E8    lea         eax,[edi+4];TFXPCI.FXCI:TFXCIRec
 006715EB    xor         ecx,ecx
 006715ED    mov         edx,200
 006715F2    call        @FillChar
 006715F7    lea         ebx,[edi+4];TFXPCI.FXCI:TFXCIRec
 006715FA    movzx       eax,byte ptr [ebp-0FF]
 00671601    push        eax
 00671602    movzx       eax,byte ptr [ebp-0FE]
 00671609    push        eax
 0067160A    push        0
 0067160C    push        0
 0067160E    push        ebx
 0067160F    movzx       ecx,byte ptr [ebp-102]
 00671616    movzx       edx,byte ptr [ebp-101]
 0067161D    movzx       eax,byte ptr [ebp-100]
 00671624    add         eax,7D0
>00671629    jno         00671630
 0067162B    call        @IntOver
 00671630    cmp         eax,0FFFF
>00671635    jbe         0067163C
 00671637    call        @BoundErr
 0067163C    call        004B3868
 00671641    movzx       eax,byte ptr [ebp-0FD]
 00671648    and         al,0F
 0067164A    mov         byte ptr [ebx+3D],al
 0067164D    movzx       eax,byte ptr [ebp-0FD]
 00671654    shr         eax,4
 00671657    and         eax,0F
 0067165A    cmp         eax,0FF
>0067165F    jbe         00671666
 00671661    call        @BoundErr
 00671666    mov         byte ptr [ebx+3C],al
 00671669    lea         eax,[ebp-204]
 0067166F    lea         edx,[ebp-0FC]
 00671675    call        @_CToPasStr
 0067167A    lea         edx,[ebp-204]
 00671680    lea         eax,[ebx+8]
 00671683    mov         cl,32
 00671685    call        @PStrNCpy
 0067168A    lea         ebx,[edi+44]
 0067168D    movzx       eax,byte ptr [ebp-0C6]
 00671694    push        eax
 00671695    movzx       eax,byte ptr [ebp-0C5]
 0067169C    push        eax
 0067169D    push        0
 0067169F    push        0
 006716A1    push        ebx
 006716A2    movzx       ecx,byte ptr [ebp-0C9]
 006716A9    movzx       edx,byte ptr [ebp-0C8]
 006716B0    movzx       eax,byte ptr [ebp-0C7]
 006716B7    add         eax,7D0
>006716BC    jno         006716C3
 006716BE    call        @IntOver
 006716C3    cmp         eax,0FFFF
>006716C8    jbe         006716CF
 006716CA    call        @BoundErr
 006716CF    call        004B3868
 006716D4    movzx       eax,byte ptr [ebp-0C4]
 006716DB    and         al,0F
 006716DD    mov         byte ptr [ebx+3D],al
 006716E0    movzx       eax,byte ptr [ebp-0C4]
 006716E7    shr         eax,4
 006716EA    and         eax,0F
 006716ED    cmp         eax,0FF
>006716F2    jbe         006716F9
 006716F4    call        @BoundErr
 006716F9    mov         byte ptr [ebx+3C],al
 006716FC    lea         eax,[ebp-204]
 00671702    lea         edx,[ebp-0C3]
 00671708    call        @_CToPasStr
 0067170D    lea         edx,[ebp-204]
 00671713    lea         eax,[ebx+8]
 00671716    mov         cl,32
 00671718    call        @PStrNCpy
 0067171D    lea         ebx,[edi+84]
 00671723    movzx       eax,byte ptr [ebp-8D]
 0067172A    push        eax
 0067172B    movzx       eax,byte ptr [ebp-8C]
 00671732    push        eax
 00671733    push        0
 00671735    push        0
 00671737    push        ebx
 00671738    movzx       ecx,byte ptr [ebp-90]
 0067173F    movzx       edx,byte ptr [ebp-8F]
 00671746    movzx       eax,byte ptr [ebp-8E]
 0067174D    add         eax,7D0
>00671752    jno         00671759
 00671754    call        @IntOver
 00671759    cmp         eax,0FFFF
>0067175E    jbe         00671765
 00671760    call        @BoundErr
 00671765    call        004B3868
 0067176A    movzx       eax,byte ptr [ebp-8B]
 00671771    and         al,0F
 00671773    mov         byte ptr [ebx+3D],al
 00671776    movzx       eax,byte ptr [ebp-8B]
 0067177D    shr         eax,4
 00671780    and         eax,0F
 00671783    cmp         eax,0FF
>00671788    jbe         0067178F
 0067178A    call        @BoundErr
 0067178F    mov         byte ptr [ebx+3C],al
 00671792    lea         eax,[ebp-204]
 00671798    lea         edx,[ebp-8A]
 0067179E    call        @_CToPasStr
 006717A3    lea         edx,[ebp-204]
 006717A9    lea         eax,[ebx+8]
 006717AC    mov         cl,32
 006717AE    call        @PStrNCpy
 006717B3    lea         ebx,[edi+0C4]
 006717B9    movzx       eax,byte ptr [ebp-54]
 006717BD    push        eax
 006717BE    movzx       eax,byte ptr [ebp-53]
 006717C2    push        eax
 006717C3    push        0
 006717C5    push        0
 006717C7    push        ebx
 006717C8    movzx       ecx,byte ptr [ebp-57]
 006717CC    movzx       edx,byte ptr [ebp-56]
 006717D0    movzx       eax,byte ptr [ebp-55]
 006717D4    add         eax,7D0
>006717D9    jno         006717E0
 006717DB    call        @IntOver
 006717E0    cmp         eax,0FFFF
>006717E5    jbe         006717EC
 006717E7    call        @BoundErr
 006717EC    call        004B3868
 006717F1    movzx       eax,byte ptr [ebp-52]
 006717F5    and         al,0F
 006717F7    mov         byte ptr [ebx+3D],al
 006717FA    movzx       eax,byte ptr [ebp-52]
 006717FE    shr         eax,4
 00671801    and         eax,0F
 00671804    cmp         eax,0FF
>00671809    jbe         00671810
 0067180B    call        @BoundErr
 00671810    mov         byte ptr [ebx+3C],al
 00671813    lea         eax,[ebp-204]
 00671819    lea         edx,[ebp-51]
 0067181C    call        @_CToPasStr
 00671821    lea         edx,[ebp-204]
 00671827    lea         eax,[ebx+8]
 0067182A    mov         cl,32
 0067182C    call        @PStrNCpy
>00671831    jmp         0067194A
 00671836    lea         ebx,[edi+104]
 0067183C    movzx       eax,byte ptr [ebp-0FF]
 00671843    push        eax
 00671844    movzx       eax,byte ptr [ebp-0FE]
 0067184B    push        eax
 0067184C    push        0
 0067184E    push        0
 00671850    push        ebx
 00671851    movzx       ecx,byte ptr [ebp-102]
 00671858    movzx       edx,byte ptr [ebp-101]
 0067185F    movzx       eax,byte ptr [ebp-100]
 00671866    add         eax,7D0
>0067186B    jno         00671872
 0067186D    call        @IntOver
 00671872    cmp         eax,0FFFF
>00671877    jbe         0067187E
 00671879    call        @BoundErr
 0067187E    call        004B3868
 00671883    movzx       eax,byte ptr [ebp-0FD]
 0067188A    and         al,0F
 0067188C    mov         byte ptr [ebx+3D],al
 0067188F    movzx       eax,byte ptr [ebp-0FD]
 00671896    shr         eax,4
 00671899    and         eax,0F
 0067189C    cmp         eax,0FF
>006718A1    jbe         006718A8
 006718A3    call        @BoundErr
 006718A8    mov         byte ptr [ebx+3C],al
 006718AB    lea         eax,[ebp-204]
 006718B1    lea         edx,[ebp-0FC]
 006718B7    call        @_CToPasStr
 006718BC    lea         edx,[ebp-204]
 006718C2    lea         eax,[ebx+8]
 006718C5    mov         cl,32
 006718C7    call        @PStrNCpy
 006718CC    lea         ebx,[edi+144]
 006718D2    movzx       eax,byte ptr [ebp-54]
 006718D6    push        eax
 006718D7    movzx       eax,byte ptr [ebp-53]
 006718DB    push        eax
 006718DC    push        0
 006718DE    push        0
 006718E0    push        ebx
 006718E1    movzx       ecx,byte ptr [ebp-57]
 006718E5    movzx       edx,byte ptr [ebp-56]
 006718E9    movzx       eax,byte ptr [ebp-55]
 006718ED    add         eax,7D0
>006718F2    jno         006718F9
 006718F4    call        @IntOver
 006718F9    cmp         eax,0FFFF
>006718FE    jbe         00671905
 00671900    call        @BoundErr
 00671905    call        004B3868
 0067190A    movzx       eax,byte ptr [ebp-52]
 0067190E    and         al,0F
 00671910    mov         byte ptr [ebx+3D],al
 00671913    movzx       eax,byte ptr [ebp-52]
 00671917    shr         eax,4
 0067191A    and         eax,0F
 0067191D    cmp         eax,0FF
>00671922    jbe         00671929
 00671924    call        @BoundErr
 00671929    mov         byte ptr [ebx+3C],al
 0067192C    lea         eax,[ebp-204]
 00671932    lea         edx,[ebp-51]
 00671935    call        @_CToPasStr
 0067193A    lea         edx,[ebp-204]
 00671940    lea         eax,[ebx+8]
 00671943    mov         cl,32
 00671945    call        @PStrNCpy
 0067194A    mov         byte ptr [ebp-3],1
 0067194E    movzx       eax,byte ptr [ebp-3]
 00671952    pop         edi
 00671953    pop         esi
 00671954    pop         ebx
 00671955    mov         esp,ebp
 00671957    pop         ebp
 00671958    ret         4
*}
end;

//006719C4
procedure TFXPCI.SetConfigInfo(var Section:TCIEntry);
begin
{*
 006719C4    push        ebp
 006719C5    mov         ebp,esp
 006719C7    add         esp,0FFFFFEFC
 006719CD    push        ebx
 006719CE    xor         ecx,ecx
 006719D0    mov         dword ptr [ebp-104],ecx
 006719D6    mov         ebx,edx
 006719D8    xor         eax,eax
 006719DA    push        ebp
 006719DB    push        671A81
 006719E0    push        dword ptr fs:[eax]
 006719E3    mov         dword ptr fs:[eax],esp
 006719E6    mov         eax,ebx
 006719E8    xor         ecx,ecx
 006719EA    mov         edx,40
 006719EF    call        @FillChar
 006719F4    call        00421148
 006719F9    fstp        qword ptr [ebx]
 006719FB    wait
 006719FC    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00671A01    mov         eax,dword ptr [eax]
 00671A03    movzx       eax,word ptr [eax+4]
 00671A07    cmp         eax,0FF
>00671A0C    jbe         00671A13
 00671A0E    call        @BoundErr
 00671A13    mov         byte ptr [ebx+3C],al
 00671A16    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00671A1B    mov         eax,dword ptr [eax]
 00671A1D    movzx       eax,word ptr [eax+6]
 00671A21    cmp         eax,0FF
>00671A26    jbe         00671A2D
 00671A28    call        @BoundErr
 00671A2D    mov         byte ptr [ebx+3D],al
 00671A30    lea         edx,[ebp-104]
 00671A36    mov         eax,[007C4C34];^gvar_00828630:TLicenseFile
 00671A3B    mov         eax,dword ptr [eax]
 00671A3D    call        0066B3F4
 00671A42    mov         edx,dword ptr [ebp-104]
 00671A48    lea         eax,[ebp-100]
 00671A4E    mov         ecx,0FF
 00671A53    call        @LStrToString
 00671A58    lea         edx,[ebp-100]
 00671A5E    lea         eax,[ebx+8]
 00671A61    mov         cl,32
 00671A63    call        @PStrNCpy
 00671A68    xor         eax,eax
 00671A6A    pop         edx
 00671A6B    pop         ecx
 00671A6C    pop         ecx
 00671A6D    mov         dword ptr fs:[eax],edx
 00671A70    push        671A88
 00671A75    lea         eax,[ebp-104]
 00671A7B    call        @LStrClr
 00671A80    ret
>00671A81    jmp         @HandleFinally
>00671A86    jmp         00671A75
 00671A88    pop         ebx
 00671A89    mov         esp,ebp
 00671A8B    pop         ebp
 00671A8C    ret
*}
end;

//00671A90
procedure TFXPCI.InitFXCInfo;
begin
{*
 00671A90    push        ebx
 00671A91    mov         ebx,eax
 00671A93    lea         eax,[ebx+4];TFXPCI.FXCI:TFXCIRec
 00671A96    xor         ecx,ecx
 00671A98    mov         edx,200
 00671A9D    call        @FillChar
 00671AA2    lea         edx,[ebx+4];TFXPCI.FXCI:TFXCIRec
 00671AA5    mov         eax,ebx
 00671AA7    call        TFXPCI.SetConfigInfo
 00671AAC    lea         edx,[ebx+44]
 00671AAF    mov         eax,ebx
 00671AB1    call        TFXPCI.SetConfigInfo
 00671AB6    lea         edx,[ebx+84]
 00671ABC    mov         eax,ebx
 00671ABE    call        TFXPCI.SetConfigInfo
 00671AC3    lea         edx,[ebx+0C4]
 00671AC9    mov         eax,ebx
 00671ACB    call        TFXPCI.SetConfigInfo
 00671AD0    lea         edx,[ebx+104]
 00671AD6    mov         eax,ebx
 00671AD8    call        TFXPCI.SetConfigInfo
 00671ADD    pop         ebx
 00671ADE    ret
*}
end;

//00671AE0
{*procedure sub_00671AE0(?:UnicodeString; ?:?);
begin
 00671AE0    push        ebp
 00671AE1    mov         ebp,esp
 00671AE3    push        ecx
 00671AE4    push        ebx
 00671AE5    mov         ebx,edx
 00671AE7    mov         dword ptr [ebp-4],eax
 00671AEA    mov         eax,dword ptr [ebp-4]
 00671AED    call        @UStrAddRef
 00671AF2    xor         eax,eax
 00671AF4    push        ebp
 00671AF5    push        671B51
 00671AFA    push        dword ptr fs:[eax]
 00671AFD    mov         dword ptr fs:[eax],esp
 00671B00    push        ebx
 00671B01    mov         ecx,1
 00671B06    mov         edx,dword ptr [ebp-4]
 00671B09    mov         eax,671B68;'
'
 00671B0E    call        Pos
 00671B13    mov         ecx,eax
 00671B15    sub         ecx,1
>00671B18    jno         00671B1F
 00671B1A    call        @IntOver
 00671B1F    mov         edx,1
 00671B24    mov         eax,dword ptr [ebp-4]
 00671B27    call        @UStrCopy
 00671B2C    cmp         dword ptr [ebx],0
>00671B2F    jne         00671B3B
 00671B31    mov         eax,ebx
 00671B33    mov         edx,dword ptr [ebp-4]
 00671B36    call        @UStrAsg
 00671B3B    xor         eax,eax
 00671B3D    pop         edx
 00671B3E    pop         ecx
 00671B3F    pop         ecx
 00671B40    mov         dword ptr fs:[eax],edx
 00671B43    push        671B58
 00671B48    lea         eax,[ebp-4]
 00671B4B    call        @UStrClr
 00671B50    ret
>00671B51    jmp         @HandleFinally
>00671B56    jmp         00671B48
 00671B58    pop         ebx
 00671B59    pop         ecx
 00671B5A    pop         ebp
 00671B5B    ret
end;*}

//00671B70
function TFXPCI.IsLicenseeCompany(name:string):Boolean;
begin
{*
 00671B70    push        ebp
 00671B71    mov         ebp,esp
 00671B73    xor         ecx,ecx
 00671B75    push        ecx
 00671B76    push        ecx
 00671B77    push        ecx
 00671B78    push        ecx
 00671B79    push        ecx
 00671B7A    push        ebx
 00671B7B    push        esi
 00671B7C    mov         esi,edx
 00671B7E    mov         ebx,eax
 00671B80    xor         eax,eax
 00671B82    push        ebp
 00671B83    push        671C49
 00671B88    push        dword ptr fs:[eax]
 00671B8B    mov         dword ptr fs:[eax],esp
 00671B8E    lea         eax,[ebp-4]
 00671B91    lea         edx,[ebx+0C]
 00671B94    call        @UStrFromString
 00671B99    lea         edx,[ebp-8]
 00671B9C    mov         eax,dword ptr [ebp-4]
 00671B9F    call        00671AE0
 00671BA4    mov         edx,dword ptr [ebp-8]
 00671BA7    mov         eax,esi
 00671BA9    call        @UStrEqual
>00671BAE    jne         00671BB4
 00671BB0    mov         bl,1
>00671BB2    jmp         00671C2E
 00671BB4    lea         eax,[ebp-4]
 00671BB7    lea         edx,[ebx+4C]
 00671BBA    call        @UStrFromString
 00671BBF    lea         edx,[ebp-0C]
 00671BC2    mov         eax,dword ptr [ebp-4]
 00671BC5    call        00671AE0
 00671BCA    mov         edx,dword ptr [ebp-0C]
 00671BCD    mov         eax,esi
 00671BCF    call        @UStrEqual
>00671BD4    jne         00671BDA
 00671BD6    mov         bl,1
>00671BD8    jmp         00671C2E
 00671BDA    lea         eax,[ebp-4]
 00671BDD    lea         edx,[ebx+8C]
 00671BE3    call        @UStrFromString
 00671BE8    lea         edx,[ebp-10]
 00671BEB    mov         eax,dword ptr [ebp-4]
 00671BEE    call        00671AE0
 00671BF3    mov         edx,dword ptr [ebp-10]
 00671BF6    mov         eax,esi
 00671BF8    call        @UStrEqual
>00671BFD    jne         00671C03
 00671BFF    mov         bl,1
>00671C01    jmp         00671C2E
 00671C03    lea         eax,[ebp-4]
 00671C06    lea         edx,[ebx+0CC]
 00671C0C    call        @UStrFromString
 00671C11    lea         edx,[ebp-14]
 00671C14    mov         eax,dword ptr [ebp-4]
 00671C17    call        00671AE0
 00671C1C    mov         edx,dword ptr [ebp-14]
 00671C1F    mov         eax,esi
 00671C21    call        @UStrEqual
>00671C26    jne         00671C2C
 00671C28    mov         bl,1
>00671C2A    jmp         00671C2E
 00671C2C    xor         ebx,ebx
 00671C2E    xor         eax,eax
 00671C30    pop         edx
 00671C31    pop         ecx
 00671C32    pop         ecx
 00671C33    mov         dword ptr fs:[eax],edx
 00671C36    push        671C50
 00671C3B    lea         eax,[ebp-14]
 00671C3E    mov         edx,5
 00671C43    call        @UStrArrayClr
 00671C48    ret
>00671C49    jmp         @HandleFinally
>00671C4E    jmp         00671C3B
 00671C50    mov         eax,ebx
 00671C52    pop         esi
 00671C53    pop         ebx
 00671C54    mov         esp,ebp
 00671C56    pop         ebp
 00671C57    ret
*}
end;

//00671C58
procedure TFXPCI.Read(fs:TFileStream; VersionMajor:Integer; RecordSize:Integer; NumOfRecords:Integer; VersionMinor:Integer);
begin
{*
 00671C58    push        ebp
 00671C59    mov         ebp,esp
 00671C5B    push        ebx
 00671C5C    push        esi
 00671C5D    push        edi
 00671C5E    mov         ebx,eax
 00671C60    cmp         dword ptr [ebp+0C],1
>00671C64    je          00671C6B
 00671C66    or          eax,0FFFFFFFF
>00671C69    jmp         00671CA4
 00671C6B    cmp         dword ptr [ebp+8],200
>00671C72    je          00671C79
 00671C74    or          eax,0FFFFFFFF
>00671C77    jmp         00671CA4
 00671C79    lea         eax,[ebx+204];TFXPCI.FXCITmp:TFXCIRec
 00671C7F    mov         ecx,200
 00671C84    xchg        eax,edx
 00671C85    mov         esi,dword ptr [eax]
 00671C87    call        dword ptr [esi+0C];THandleStream.Read
 00671C8A    cmp         eax,200
>00671C8F    je          00671C94
 00671C91    or          eax,0FFFFFFFF
 00671C94    lea         esi,[ebx+204];TFXPCI.FXCITmp:TFXCIRec
 00671C9A    lea         edi,[ebx+4];TFXPCI.FXCI:TFXCIRec
 00671C9D    mov         ecx,80
 00671CA2    rep movs    dword ptr [edi],dword ptr [esi]
 00671CA4    pop         edi
 00671CA5    pop         esi
 00671CA6    pop         ebx
 00671CA7    pop         ebp
 00671CA8    ret         0C
*}
end;

//00671CAC
procedure TFXPCI.Save(fs:TFileStream; VersionMajor:Integer; RecordSize:Cardinal; NumOfRecords:Word; VersionMinor:Integer);
begin
{*
 00671CAC    push        ebp
 00671CAD    mov         ebp,esp
 00671CAF    push        ebx
 00671CB0    mov         ecx,dword ptr [ebp+0C]
 00671CB3    mov         word ptr [ecx],1
 00671CB8    mov         ecx,dword ptr [ebp+8]
 00671CBB    mov         dword ptr [ecx],200
 00671CC1    add         eax,4;TFXPCI.FXCI:TFXCIRec
 00671CC4    mov         ecx,200
 00671CC9    xchg        eax,edx
 00671CCA    mov         ebx,dword ptr [eax]
 00671CCC    call        dword ptr [ebx+10];THandleStream.Write
 00671CCF    cmp         eax,200
>00671CD4    je          00671CD9
 00671CD6    or          eax,0FFFFFFFF
 00671CD9    pop         ebx
 00671CDA    pop         ebp
 00671CDB    ret         0C
*}
end;

Initialization
Finalization
//00671CE0
{*
 00671CE0    push        ebp
 00671CE1    mov         ebp,esp
 00671CE3    xor         eax,eax
 00671CE5    push        ebp
 00671CE6    push        671D11
 00671CEB    push        dword ptr fs:[eax]
 00671CEE    mov         dword ptr fs:[eax],esp
 00671CF1    inc         dword ptr ds:[828634]
>00671CF7    jne         00671D03
 00671CF9    mov         eax,7C13F4;^'Configuration Info encoding error!'
 00671CFE    call        @UStrClr
 00671D03    xor         eax,eax
 00671D05    pop         edx
 00671D06    pop         ecx
 00671D07    pop         ecx
 00671D08    mov         dword ptr fs:[eax],edx
 00671D0B    push        671D18
 00671D10    ret
>00671D11    jmp         @HandleFinally
>00671D16    jmp         00671D10
 00671D18    pop         ebp
 00671D19    ret
*}
end.