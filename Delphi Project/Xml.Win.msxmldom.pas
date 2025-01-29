//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Xml.Win.msxmldom;

interface

uses
  SysUtils, Classes;

type
  TMSXMLDOMDocumentFactory = class(TObject)
  published
    procedure AddDOMProperty(PropName:string; PropValue:OleVariant; UpdateExisting:Boolean);//0065AE2C
    procedure SetDOMDocumentCoClasses(GuidList:TGUID);//0065AFA8
    //procedure CreateDOMDocument(?:?);//0065B234
  public
    //procedure v0(?:?); virtual;//v0//0065B060
    function TryCoCreateInstance(const GuidList:array[$0..-$1] of System.TGUID; const _Dv_:$0..-$1):IUnknown; virtual;//v4//0065B018
    //procedure CreateDOMDocument(?:?); virtual;//v8//0065B234
  end;
    function MakeNode(Node:msxml.IXMLDOMNode):IDOMNode;//00655C90
    function MakeNamedNodeMap(const NamedNodeMap:msxml.IXMLDOMNamedNodeMap):IDOMNamedNodeMap;//00655D1C
    function MakeNodeList(const NodeList:msxml.IXMLDOMNodeList):IDOMNodeList;//00655D44
    function GetMSNode(const Node:Xmldom.IDOMNode):IXMLDOMNode;//00655D6C
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;//00655E00
    constructor Create;//00655EA4
    function createDocument(const namespaceURI:Xmldom.DOMString; const qualifiedName:Xmldom.DOMString; doctype:Xmldom.IDOMDocumentType):IDOMDocument; safecall;//00655F20
    function createDocumentType(const qualifiedName:Xmldom.DOMString; const publicId:Xmldom.DOMString; const systemId:Xmldom.DOMString):IDOMDocumentType; safecall;//00655FA4
    function hasFeature(const feature:Xmldom.DOMString; const version:Xmldom.DOMString):WordBool;//0065603C
    constructor Create;//00656130
    function appendChild(const newChild:Xmldom.IDOMNode):IDOMNode; safecall;//006561AC
    function cloneNode(deep:WordBool):IDOMNode; safecall;//0065624C
    //function sub_006562BC(?:?; ?:?):?;//006562BC
    //function sub_00656378(?:?; ?:?):?;//00656378
    function get_firstChild:IDOMNode; safecall;//0065640C
    function get_lastChild:IDOMNode; safecall;//00656478
    function get_localName:DOMString; safecall;//006564E4
    function get_namespaceURI:DOMString; safecall;//00656554
    function get_nextSibling:IDOMNode; safecall;//006565C4
    function get_nodeName:DOMString; safecall;//00656630
    function get_nodeType:DOMNodeType; safecall;//0065669C
    function get_nodeValue:DOMString; safecall;//006566EC
    function get_ownerDocument:IDOMDocument; safecall;//00656774
    function get_parentNode:IDOMNode; safecall;//00656808
    function get_prefix:DOMString; safecall;//00656874
    function get_previousSibling:IDOMNode; safecall;//006568E4
    function hasChildNodes:WordBool; safecall;//00656950
    function insertBefore(const newChild:Xmldom.IDOMNode; const refChild:Xmldom.IDOMNode):IDOMNode; safecall;//006569A4
    procedure normalize; safecall;//00656A64
    function removeChild(const childNode:Xmldom.IDOMNode):IDOMNode; safecall;//00656AE0
    function replaceChild(const newChild:Xmldom.IDOMNode; const oldChild:Xmldom.IDOMNode):IDOMNode; safecall;//00656B68
    procedure set_nodeValue(value:Xmldom.DOMString); safecall;//00656C04
    function supports(const feature:Xmldom.DOMString; const version:Xmldom.DOMString):WordBool;//00656C7C
    function GetXMLDOMNode:IXMLDOMNode;//00656CC8
    function selectNode(const nodePath:WideString):IDOMNode; safecall;//00656CDC
    //function sub_00656D60(?:?; ?:?; ?:?):?;//00656D60
    function get_text:DOMString; safecall;//00656DE4
    procedure set_text(const Value:Xmldom.DOMString); safecall;//00656E50
    function get_xml:DOMString; safecall;//00656EAC
    procedure transformNode(const stylesheet:Xmldom.IDOMNode; var output:WideString); safecall;//00656F1C
    procedure transformNode(const stylesheet:Xmldom.IDOMNode; const output:Xmldom.IDOMDocument); safecall;//00656F9C
    constructor Create;//00657038
    function get_item(index:Integer):IDOMNode; safecall;//006570B4
    function get_length:Integer; safecall;//00657124
    constructor Create;//00657174
    function get_item(index:Integer):IDOMNode; safecall;//006571F0
    function get_length:Integer; safecall;//00657260
    function getNamedItem(const name:Xmldom.DOMString):IDOMNode; safecall;//006572B0
    function getNamedItemNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):IDOMNode; safecall;//00657338
    function removeNamedItem(const name:Xmldom.DOMString):IDOMNode; safecall;//006573D4
    function removeNamedItemNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):IDOMNode; safecall;//0065745C
    function setNamedItem(const newItem:Xmldom.IDOMNode):IDOMNode; safecall;//006574F8
    function setNamedItemNS(const arg:Xmldom.IDOMNode):IDOMNode; safecall;//00657580
    function GetMSCharacterData:IXMLDOMCharacterData;//00657608
    procedure appendData(const data:Xmldom.DOMString); safecall;//00657630
    procedure deleteData(offset:Integer; count:Integer); safecall;//006576A4
    function get_data:DOMString; safecall;//00657708
    function get_length:Integer; safecall;//0065778C
    procedure insertData(offset:Integer; const data:Xmldom.DOMString); safecall;//006577F8
    procedure replaceData(offset:Integer; count:Integer; const data:Xmldom.DOMString); safecall;//00657870
    procedure set_data(const data:Xmldom.DOMString); safecall;//006578EC
    function substringData(offset:Integer; count:Integer):DOMString; safecall;//00657960
    function GetMSAttribute:IXMLDOMAttribute;//006579EC
    function get_name:DOMString; safecall;//00657A14
    function get_ownerElement:IDOMElement; safecall;//00657A98
    function get_specified:WordBool; safecall;//00657B34
    function get_value:DOMString; safecall;//00657BA0
    procedure set_value(const attributeValue:Xmldom.DOMString); safecall;//00657C28
    function GetMSElement:IXMLDOMElement;//00657CA8
    function get_tagName:DOMString; safecall;//00657CD0
    function getAttribute(const name:Xmldom.DOMString):DOMString; safecall;//00657D54
    function getAttributeNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):DOMString; safecall;//00657DF4
    function getAttributeNode(const name:Xmldom.DOMString):IDOMAttr; safecall;//00657EB0
    function getAttributeNodeNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):IDOMAttr; safecall;//00657F74
    //function sub_0065806C(?:?; ?:?; ?:?):?;//0065806C
    function getElementsByTagNameNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):IDOMNodeList; safecall;//00658108
    function hasAttribute(const name:Xmldom.DOMString):WordBool; safecall;//006581A8
    function hasAttributeNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):WordBool; safecall;//0065826C
    procedure removeAttribute(const name:Xmldom.DOMString); safecall;//00658304
    function removeAttributeNode(const oldAttr:Xmldom.IDOMAttr):IDOMAttr; safecall;//00658378
    procedure removeAttributeNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString); safecall;//00658468
    procedure setAttribute(const name:Xmldom.DOMString; const value:Xmldom.DOMString); safecall;//00658520
    function setAttributeNode(const newAttr:Xmldom.IDOMAttr):IDOMAttr; safecall;//006585B8
    function setAttributeNodeNS(const newAttr:Xmldom.IDOMAttr):IDOMAttr; safecall;//006586A8
    procedure setAttributeNS(const namespaceURI:Xmldom.DOMString; const qualifiedName:Xmldom.DOMString; const value:Xmldom.DOMString); safecall;//00658700
    procedure normalize; safecall;//00658860
    function splitText(offset:Integer):IDOMText; safecall;//006588BC
    function GetMSDocumentType:IXMLDOMDocumentType;//00658988
    //function sub_006589B0(?:?; ?:?):?;//006589B0
    function get_internalSubset:DOMString; safecall;//00658A5C
    function get_name:DOMString; safecall;//00658AF4
    //function sub_00658B78(?:?; ?:?):?;//00658B78
    function get_publicId:DOMString; safecall;//00658C24
    function get_systemId:DOMString; safecall;//00658CB0
    function GetMSNotation:IXMLDOMNotation;//00658D3C
    function get_publicId:DOMString; safecall;//00658D64
    function get_systemId:DOMString; safecall;//00658DEC
    function GetMSEntity:IXMLDOMEntity;//00658E74
    function get_notationName:DOMString; safecall;//00658E9C
    function get_publicId:DOMString; safecall;//00658F20
    function get_systemId:DOMString; safecall;//00658FA8
    function GetMSProcessingInstruction:IXMLDOMProcessingInstruction;//00659030
    function get_data:DOMString; safecall;//00659058
    function get_target:DOMString; safecall;//006590DC
    procedure set_data(const value:Xmldom.DOMString); safecall;//00659160
    constructor Create(Sender:TObject; AsyncEventHandler:TAsyncEventHandler);//006591D4
    function GetIDsOfNames(const IID:TGUID; Names:Pointer; NameCount:Integer; LocaleID:Integer; DispIDs:Pointer):HRESULT; stdcall;//00659210
    function GetTypeInfo(Index:Integer; LocaleID:Integer; var TypeInfo:void ):HRESULT; stdcall;//0065921C
    function GetTypeInfoCount(var Count:Integer):HRESULT; stdcall;//00659228
    function Invoke(DispID:Integer; const IID:TGUID; LocaleID:Integer; Flags:Word; var Params:void ; VarResult:Pointer; ExcepInfo:Pointer; ArgErr:Pointer):HRESULT; stdcall;//00659234
    function GetMSDocument:IXMLDOMDocument;//00659288
    function createAttribute(const name:Xmldom.DOMString):IDOMAttr; safecall;//006592B0
    function createAttributeNS(const namespaceURI:Xmldom.DOMString; const qualifiedName:Xmldom.DOMString):IDOMAttr; safecall;//00659374
    function createCDATASection(const data:Xmldom.DOMString):IDOMCDATASection; safecall;//00659478
    function createComment(const data:Xmldom.DOMString):IDOMComment; safecall;//00659540
    function createDocumentFragment:IDOMDocumentFragment; safecall;//00659608
    function createElement(const tagName:Xmldom.DOMString):IDOMElement; safecall;//006596B8
    function createElementNS(const namespaceURI:Xmldom.DOMString; const qualifiedName:Xmldom.DOMString):IDOMElement; safecall;//0065977C
    function createEntityReference(const name:Xmldom.DOMString):IDOMEntityReference; safecall;//00659880
    function createProcessingInstruction(const target:Xmldom.DOMString; const data:Xmldom.DOMString):IDOMProcessingInstruction; safecall;//00659934
    function createTextNode(const data:Xmldom.DOMString):IDOMText; safecall;//006599FC
    function get_doctype:IDOMDocumentType; safecall;//00659AC0
    function get_documentElement:IDOMElement; safecall;//00659B58
    function get_domImplementation:IDOMImplementation; safecall;//00659C08
    function getElementById(const elementId:Xmldom.DOMString):IDOMElement; safecall;//00659CA0
    //function sub_00659D30(?:?; ?:?; ?:?):?;//00659D30
    function getElementsByTagNameNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):IDOMNodeList; safecall;//00659DCC
    function importNode(importedNode:Xmldom.IDOMNode; deep:WordBool):IDOMNode; safecall;//00659E6C
    procedure set_documentElement(const IDOMElement:Xmldom.IDOMElement); safecall;//00659F04
    function get_async:Boolean; safecall;//0065A058
    procedure set_async(Value:Boolean); safecall;//0065A0CC
    function get_preserveWhiteSpace:Boolean; safecall;//0065A130
    function get_resolveExternals:Boolean; safecall;//0065A1A4
    function get_validate:Boolean; safecall;//0065A218
    procedure set_preserveWhiteSpace(Value:Boolean); safecall;//0065A28C
    procedure set_resolveExternals(Value:Boolean); safecall;//0065A2F0
    procedure set_validate(Value:Boolean); safecall;//0065A354
    function asyncLoadState:Integer; safecall;//0065A3B8
    function get_xml:DOMString; safecall;//0065A424
    function load(source:OleVariant):WordBool; safecall;//0065A4A8
    function loadFromStream(const stream:Classes.TStream):WordBool; safecall;//0065A534
    procedure save(destination:OleVariant); safecall;//0065A5EC
    procedure saveToStream(const stream:Classes.TStream); safecall;//0065A664
    function loadxml(const Value:Xmldom.DOMString):WordBool; safecall;//0065A710
    procedure set_OnAsyncLoad(const Sender:TObject; EventHandler:Xmldom.TAsyncEventHandler); safecall;//0065A794
    function loadFromStream(const stream:ActiveX.IStream):WordBool; safecall;//0065A8B0
    procedure saveToStream(const stream:ActiveX.IStream); safecall;//0065A940
    function get_errorCode:Integer; safecall;//0065A9C0
    function get_filepos:Integer; safecall;//0065AA4C
    function get_line:Integer; safecall;//0065AAD8
    function get_linepos:Integer; safecall;//0065AB64
    function get_reason:DOMString; safecall;//0065ABF0
    function get_srcText:DOMString; safecall;//0065AC94
    function get_url:DOMString; safecall;//0065AD38
    function DOMImplementation:IDOMImplementation;//0065ADDC
    function Description:string;//0065AE00
    function TryCoCreateInstance(const GuidList:array[$0..-$1] of System.TGUID; const _Dv_:$0..-$1):IUnknown;//0065B018
    //procedure sub_0065B060(?:?);//0065B060

implementation

//00655C90
function MakeNode(Node:msxml.IXMLDOMNode):IDOMNode;
begin
{*
 00655C90    push        ebp
 00655C91    mov         ebp,esp
 00655C93    add         esp,0FFFFFFF8
 00655C96    push        ebx
 00655C97    mov         ebx,edx
 00655C99    mov         dword ptr [ebp-4],eax
 00655C9C    mov         eax,dword ptr [ebp-4]
 00655C9F    call        @IntfAddRef
 00655CA4    xor         eax,eax
 00655CA6    push        ebp
 00655CA7    push        655D0D
 00655CAC    push        dword ptr fs:[eax]
 00655CAF    mov         dword ptr fs:[eax],esp
 00655CB2    cmp         dword ptr [ebp-4],0
>00655CB6    je          00655CF0
 00655CB8    lea         eax,[ebp-8]
 00655CBB    push        eax
 00655CBC    mov         eax,dword ptr [ebp-4]
 00655CBF    push        eax
 00655CC0    mov         eax,dword ptr [eax]
 00655CC2    call        dword ptr [eax+28]
 00655CC5    call        @CheckAutoResult
 00655CCA    mov         eax,dword ptr [ebp-8]
 00655CCD    mov         eax,dword ptr [eax*4+7C0F14];gvar_007C0F14
 00655CD4    mov         ecx,dword ptr [ebp-4]
 00655CD7    mov         dl,1
 00655CD9    call        TMSDOMNode.Create
 00655CDE    mov         edx,eax
 00655CE0    test        edx,edx
>00655CE2    je          00655CE7
 00655CE4    sub         edx,0FFFFFFE0
 00655CE7    mov         eax,ebx
 00655CE9    call        @IntfCopy
>00655CEE    jmp         00655CF7
 00655CF0    mov         eax,ebx
 00655CF2    call        @IntfClear
 00655CF7    xor         eax,eax
 00655CF9    pop         edx
 00655CFA    pop         ecx
 00655CFB    pop         ecx
 00655CFC    mov         dword ptr fs:[eax],edx
 00655CFF    push        655D14
 00655D04    lea         eax,[ebp-4]
 00655D07    call        @IntfClear
 00655D0C    ret
>00655D0D    jmp         @HandleFinally
>00655D12    jmp         00655D04
 00655D14    pop         ebx
 00655D15    pop         ecx
 00655D16    pop         ecx
 00655D17    pop         ebp
 00655D18    ret
*}
end;

//00655D1C
function MakeNamedNodeMap(const NamedNodeMap:msxml.IXMLDOMNamedNodeMap):IDOMNamedNodeMap;
begin
{*
 00655D1C    push        ebx
 00655D1D    push        esi
 00655D1E    mov         esi,edx
 00655D20    mov         ebx,eax
 00655D22    mov         ecx,ebx
 00655D24    mov         dl,1
 00655D26    mov         eax,[00652CFC];TMSDOMNodeList
 00655D2B    call        TMSDOMNamedNodeMap.Create
 00655D30    mov         edx,eax
 00655D32    test        edx,edx
>00655D34    je          00655D39
 00655D36    sub         edx,0FFFFFFF0
 00655D39    mov         eax,esi
 00655D3B    call        @IntfCopy
 00655D40    pop         esi
 00655D41    pop         ebx
 00655D42    ret
*}
end;

//00655D44
function MakeNodeList(const NodeList:msxml.IXMLDOMNodeList):IDOMNodeList;
begin
{*
 00655D44    push        ebx
 00655D45    push        esi
 00655D46    mov         esi,edx
 00655D48    mov         ebx,eax
 00655D4A    mov         ecx,ebx
 00655D4C    mov         dl,1
 00655D4E    mov         eax,[00652F00];TMSDOMNamedNodeMap
 00655D53    call        TMSDOMNodeList.Create
 00655D58    mov         edx,eax
 00655D5A    test        edx,edx
>00655D5C    je          00655D61
 00655D5E    sub         edx,0FFFFFFF0
 00655D61    mov         eax,esi
 00655D63    call        @IntfCopy
 00655D68    pop         esi
 00655D69    pop         ebx
 00655D6A    ret
*}
end;

//00655D6C
function GetMSNode(const Node:Xmldom.IDOMNode):IXMLDOMNode;
begin
{*
 00655D6C    push        ebp
 00655D6D    mov         ebp,esp
 00655D6F    push        0
 00655D71    push        0
 00655D73    push        ebx
 00655D74    push        esi
 00655D75    mov         esi,edx
 00655D77    mov         ebx,eax
 00655D79    xor         eax,eax
 00655D7B    push        ebp
 00655D7C    push        655DE3
 00655D81    push        dword ptr fs:[eax]
 00655D84    mov         dword ptr fs:[eax],esp
 00655D87    test        ebx,ebx
>00655D89    jne         00655DAC
 00655D8B    lea         edx,[ebp-4]
 00655D8E    mov         eax,[007C4634];^SResString370:TResStringRec
 00655D93    call        LoadResString
 00655D98    mov         ecx,dword ptr [ebp-4]
 00655D9B    mov         dl,1
 00655D9D    mov         eax,[0065B34C];DOMException
 00655DA2    call        Exception.Create
 00655DA7    call        @RaiseExcept
 00655DAC    lea         eax,[ebp-8]
 00655DAF    mov         edx,ebx
 00655DB1    mov         ecx,655DF0
 00655DB6    call        @IntfCast
 00655DBB    mov         eax,dword ptr [ebp-8]
 00655DBE    mov         edx,esi
 00655DC0    mov         ecx,dword ptr [eax]
 00655DC2    call        dword ptr [ecx+0C]
 00655DC5    xor         eax,eax
 00655DC7    pop         edx
 00655DC8    pop         ecx
 00655DC9    pop         ecx
 00655DCA    mov         dword ptr fs:[eax],edx
 00655DCD    push        655DEA
 00655DD2    lea         eax,[ebp-8]
 00655DD5    call        @IntfClear
 00655DDA    lea         eax,[ebp-4]
 00655DDD    call        @UStrClr
 00655DE2    ret
>00655DE3    jmp         @HandleFinally
>00655DE8    jmp         00655DD2
 00655DEA    pop         esi
 00655DEB    pop         ebx
 00655DEC    pop         ecx
 00655DED    pop         ecx
 00655DEE    pop         ebp
 00655DEF    ret
*}
end;

//00655E00
function TMSDOMInterface.SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;
begin
{*
 00655E00    push        ebp
 00655E01    mov         ebp,esp
 00655E03    push        0
 00655E05    push        0
 00655E07    push        ebx
 00655E08    push        esi
 00655E09    mov         esi,ecx
 00655E0B    mov         ebx,edx
 00655E0D    xor         eax,eax
 00655E0F    push        ebp
 00655E10    push        655E83
 00655E15    push        dword ptr fs:[eax]
 00655E18    mov         dword ptr fs:[eax],esp
 00655E1B    mov         eax,ebx
 00655E1D    mov         edx,dword ptr ds:[4D5E4C];EOleException
 00655E23    call        @IsClass
 00655E28    test        al,al
>00655E2A    je          00655E44
 00655E2C    mov         eax,ebx
 00655E2E    mov         edx,dword ptr ds:[4D5E4C];EOleException
 00655E34    call        @AsClass
 00655E39    mov         edx,dword ptr [eax+20]
 00655E3C    lea         eax,[ebp-4]
 00655E3F    call        @UStrLAsg
 00655E44    push        0
 00655E46    lea         eax,[ebp-8]
 00655E49    mov         edx,dword ptr [ebp-4]
 00655E4C    call        @WStrFromUStr
 00655E51    mov         eax,dword ptr [ebp-8]
 00655E54    push        eax
 00655E55    mov         ecx,655E94
 00655E5A    mov         edx,esi
 00655E5C    mov         eax,ebx
 00655E5E    call        HandleSafeCallException
 00655E63    mov         ebx,eax
 00655E65    xor         eax,eax
 00655E67    pop         edx
 00655E68    pop         ecx
 00655E69    pop         ecx
 00655E6A    mov         dword ptr fs:[eax],edx
 00655E6D    push        655E8A
 00655E72    lea         eax,[ebp-8]
 00655E75    call        @WStrClr
 00655E7A    lea         eax,[ebp-4]
 00655E7D    call        @UStrClr
 00655E82    ret
>00655E83    jmp         @HandleFinally
>00655E88    jmp         00655E72
 00655E8A    mov         eax,ebx
 00655E8C    pop         esi
 00655E8D    pop         ebx
 00655E8E    pop         ecx
 00655E8F    pop         ecx
 00655E90    pop         ebp
 00655E91    ret
*}
end;

//00655EA4
constructor TMSDOMImplementation.Create;
begin
{*
 00655EA4    push        ebp
 00655EA5    mov         ebp,esp
 00655EA7    push        ecx
 00655EA8    push        ebx
 00655EA9    push        esi
 00655EAA    test        dl,dl
>00655EAC    je          00655EB6
 00655EAE    add         esp,0FFFFFFF0
 00655EB1    call        @ClassCreate
 00655EB6    mov         dword ptr [ebp-4],ecx
 00655EB9    mov         ebx,edx
 00655EBB    mov         esi,eax
 00655EBD    mov         eax,dword ptr [ebp-4]
 00655EC0    call        @IntfAddRef
 00655EC5    xor         eax,eax
 00655EC7    push        ebp
 00655EC8    push        655EFD
 00655ECD    push        dword ptr fs:[eax]
 00655ED0    mov         dword ptr fs:[eax],esp
 00655ED3    xor         edx,edx
 00655ED5    mov         eax,esi
 00655ED7    call        TObject.Create
 00655EDC    lea         eax,[esi+0C]
 00655EDF    mov         edx,dword ptr [ebp-4]
 00655EE2    call        @IntfCopy
 00655EE7    xor         eax,eax
 00655EE9    pop         edx
 00655EEA    pop         ecx
 00655EEB    pop         ecx
 00655EEC    mov         dword ptr fs:[eax],edx
 00655EEF    push        655F04
 00655EF4    lea         eax,[ebp-4]
 00655EF7    call        @IntfClear
 00655EFC    ret
>00655EFD    jmp         @HandleFinally
>00655F02    jmp         00655EF4
 00655F04    mov         eax,esi
 00655F06    test        bl,bl
>00655F08    je          00655F19
 00655F0A    call        @AfterConstruction
 00655F0F    pop         dword ptr fs:[0]
 00655F16    add         esp,0C
 00655F19    mov         eax,esi
 00655F1B    pop         esi
 00655F1C    pop         ebx
 00655F1D    pop         ecx
 00655F1E    pop         ebp
 00655F1F    ret
*}
end;

//00655F20
function TMSDOMImplementation.createDocument(const namespaceURI:Xmldom.DOMString; const qualifiedName:Xmldom.DOMString; doctype:Xmldom.IDOMDocumentType):IDOMDocument; safecall;
begin
{*
 00655F20    push        ebp
 00655F21    mov         ebp,esp
 00655F23    push        0
 00655F25    push        ebx
 00655F26    push        esi
 00655F27    push        edi
 00655F28    mov         eax,dword ptr [ebp+14]
 00655F2B    call        @IntfAddRef
 00655F30    mov         eax,dword ptr [ebp+18]
 00655F33    test        eax,eax
>00655F35    je          00655F3B
 00655F37    xor         edx,edx
 00655F39    mov         dword ptr [eax],edx
 00655F3B    push        dword ptr [ebp+8]
 00655F3E    xor         eax,eax
 00655F40    push        ebp
 00655F41    push        655F84
 00655F46    push        dword ptr fs:[eax]
 00655F49    mov         dword ptr fs:[eax],esp
 00655F4C    lea         edx,[ebp-4]
 00655F4F    mov         eax,[007C0F10]
 00655F54    call        dword ptr [eax+8]
 00655F57    mov         ecx,dword ptr [ebp-4]
 00655F5A    mov         dl,1
 00655F5C    mov         eax,[00655764];TMSDOMDocument
 00655F61    call        TMSDOMNode.Create
 00655F66    mov         edx,eax
 00655F68    test        edx,edx
>00655F6A    je          00655F6F
 00655F6C    sub         edx,0FFFFFFCC
 00655F6F    mov         eax,dword ptr [ebp+18]
 00655F72    call        @IntfCopy
 00655F77    xor         eax,eax
 00655F79    pop         edx
 00655F7A    pop         ecx
 00655F7B    pop         ecx
 00655F7C    mov         dword ptr fs:[eax],edx
 00655F7F    pop         eax
 00655F80    xor         ebx,ebx
>00655F82    jmp         00655F89
>00655F84    jmp         @HandleAutoException
 00655F89    lea         eax,[ebp-4]
 00655F8C    call        @IntfClear
 00655F91    lea         eax,[ebp+14]
 00655F94    call        @IntfClear
 00655F99    mov         eax,ebx
 00655F9B    pop         edi
 00655F9C    pop         esi
 00655F9D    pop         ebx
 00655F9E    pop         ecx
 00655F9F    pop         ebp
 00655FA0    ret         14
*}
end;

//00655FA4
function TMSDOMImplementation.createDocumentType(const qualifiedName:Xmldom.DOMString; const publicId:Xmldom.DOMString; const systemId:Xmldom.DOMString):IDOMDocumentType; safecall;
begin
{*
 00655FA4    push        ebp
 00655FA5    mov         ebp,esp
 00655FA7    push        ebx
 00655FA8    push        esi
 00655FA9    push        edi
 00655FAA    mov         eax,dword ptr [ebp+18]
 00655FAD    test        eax,eax
>00655FAF    je          00655FB5
 00655FB1    xor         edx,edx
 00655FB3    mov         dword ptr [eax],edx
 00655FB5    push        dword ptr [ebp+8]
 00655FB8    xor         eax,eax
 00655FBA    push        ebp
 00655FBB    push        655FE2
 00655FC0    push        dword ptr fs:[eax]
 00655FC3    mov         dword ptr fs:[eax],esp
 00655FC6    mov         edx,655FFC;'MSXML'
 00655FCB    mov         eax,656014;'createDocumentType'
 00655FD0    call        DOMVendorNotSupported
 00655FD5    xor         eax,eax
 00655FD7    pop         edx
 00655FD8    pop         ecx
 00655FD9    pop         ecx
 00655FDA    mov         dword ptr fs:[eax],edx
 00655FDD    pop         eax
 00655FDE    xor         ebx,ebx
>00655FE0    jmp         00655FE7
>00655FE2    jmp         @HandleAutoException
 00655FE7    mov         eax,ebx
 00655FE9    pop         edi
 00655FEA    pop         esi
 00655FEB    pop         ebx
 00655FEC    pop         ebp
 00655FED    ret         14
*}
end;

//0065603C
function TMSDOMImplementation.hasFeature(const feature:Xmldom.DOMString; const version:Xmldom.DOMString):WordBool;
begin
{*
 0065603C    push        ebp
 0065603D    mov         ebp,esp
 0065603F    push        0
 00656041    push        0
 00656043    push        0
 00656045    push        0
 00656047    push        0
 00656049    push        0
 0065604B    push        0
 0065604D    push        ebx
 0065604E    push        esi
 0065604F    push        edi
 00656050    mov         edi,ecx
 00656052    mov         esi,edx
 00656054    mov         ebx,eax
 00656056    xor         eax,eax
 00656058    push        ebp
 00656059    push        656120
 0065605E    push        dword ptr fs:[eax]
 00656061    mov         dword ptr fs:[eax],esp
 00656064    cmp         dword ptr [ebx+0C],0
>00656068    je          0065609E
 0065606A    lea         eax,[ebp-4]
 0065606D    push        eax
 0065606E    lea         eax,[ebp-8]
 00656071    mov         edx,edi
 00656073    call        @WStrFromUStr
 00656078    mov         eax,dword ptr [ebp-8]
 0065607B    push        eax
 0065607C    lea         eax,[ebp-0C]
 0065607F    mov         edx,esi
 00656081    call        @WStrFromUStr
 00656086    mov         eax,dword ptr [ebp-0C]
 00656089    push        eax
 0065608A    mov         eax,dword ptr [ebx+0C]
 0065608D    push        eax
 0065608E    mov         eax,dword ptr [eax]
 00656090    call        dword ptr [eax+1C]
 00656093    call        @CheckAutoResult
 00656098    movzx       ebx,word ptr [ebp-4]
>0065609C    jmp         006560F5
 0065609E    lea         eax,[ebp-4]
 006560A1    push        eax
 006560A2    lea         eax,[ebp-10]
 006560A5    mov         edx,edi
 006560A7    call        @WStrFromUStr
 006560AC    mov         eax,dword ptr [ebp-10]
 006560AF    push        eax
 006560B0    lea         eax,[ebp-14]
 006560B3    mov         edx,esi
 006560B5    call        @WStrFromUStr
 006560BA    mov         eax,dword ptr [ebp-14]
 006560BD    push        eax
 006560BE    lea         eax,[ebp-18]
 006560C1    call        @IntfClear
 006560C6    push        eax
 006560C7    lea         edx,[ebp-1C]
 006560CA    mov         eax,[007C0F10]
 006560CF    call        dword ptr [eax+8]
 006560D2    mov         eax,dword ptr [ebp-1C]
 006560D5    push        eax
 006560D6    mov         eax,dword ptr [eax]
 006560D8    call        dword ptr [eax+0B0]
 006560DE    call        @CheckAutoResult
 006560E3    mov         eax,dword ptr [ebp-18]
 006560E6    push        eax
 006560E7    mov         eax,dword ptr [eax]
 006560E9    call        dword ptr [eax+1C]
 006560EC    call        @CheckAutoResult
 006560F1    movzx       ebx,word ptr [ebp-4]
 006560F5    xor         eax,eax
 006560F7    pop         edx
 006560F8    pop         ecx
 006560F9    pop         ecx
 006560FA    mov         dword ptr fs:[eax],edx
 006560FD    push        656127
 00656102    lea         eax,[ebp-1C]
 00656105    call        @IntfClear
 0065610A    lea         eax,[ebp-18]
 0065610D    call        @IntfClear
 00656112    lea         eax,[ebp-14]
 00656115    mov         edx,4
 0065611A    call        @WStrArrayClr
 0065611F    ret
>00656120    jmp         @HandleFinally
>00656125    jmp         00656102
 00656127    mov         eax,ebx
 00656129    pop         edi
 0065612A    pop         esi
 0065612B    pop         ebx
 0065612C    mov         esp,ebp
 0065612E    pop         ebp
 0065612F    ret
*}
end;

//00656130
constructor TMSDOMNode.Create;
begin
{*
 00656130    push        ebp
 00656131    mov         ebp,esp
 00656133    push        ecx
 00656134    push        ebx
 00656135    push        esi
 00656136    test        dl,dl
>00656138    je          00656142
 0065613A    add         esp,0FFFFFFF0
 0065613D    call        @ClassCreate
 00656142    mov         dword ptr [ebp-4],ecx
 00656145    mov         ebx,edx
 00656147    mov         esi,eax
 00656149    mov         eax,dword ptr [ebp-4]
 0065614C    call        @IntfAddRef
 00656151    xor         eax,eax
 00656153    push        ebp
 00656154    push        656189
 00656159    push        dword ptr fs:[eax]
 0065615C    mov         dword ptr fs:[eax],esp
 0065615F    lea         eax,[esi+0C]
 00656162    mov         edx,dword ptr [ebp-4]
 00656165    call        @IntfCopy
 0065616A    xor         edx,edx
 0065616C    mov         eax,esi
 0065616E    call        TObject.Create
 00656173    xor         eax,eax
 00656175    pop         edx
 00656176    pop         ecx
 00656177    pop         ecx
 00656178    mov         dword ptr fs:[eax],edx
 0065617B    push        656190
 00656180    lea         eax,[ebp-4]
 00656183    call        @IntfClear
 00656188    ret
>00656189    jmp         @HandleFinally
>0065618E    jmp         00656180
 00656190    mov         eax,esi
 00656192    test        bl,bl
>00656194    je          006561A5
 00656196    call        @AfterConstruction
 0065619B    pop         dword ptr fs:[0]
 006561A2    add         esp,0C
 006561A5    mov         eax,esi
 006561A7    pop         esi
 006561A8    pop         ebx
 006561A9    pop         ecx
 006561AA    pop         ebp
 006561AB    ret
*}
end;

//006561AC
function TMSDOMNode.appendChild(const newChild:Xmldom.IDOMNode):IDOMNode; safecall;
begin
{*
 006561AC    push        ebp
 006561AD    mov         ebp,esp
 006561AF    push        0
 006561B1    push        0
 006561B3    push        ebx
 006561B4    push        esi
 006561B5    push        edi
 006561B6    mov         esi,dword ptr [ebp+0C]
 006561B9    mov         ebx,dword ptr [ebp+8]
 006561BC    mov         eax,dword ptr [ebp+10]
 006561BF    test        eax,eax
>006561C1    je          006561C7
 006561C3    xor         edx,edx
 006561C5    mov         dword ptr [eax],edx
 006561C7    push        ebx
 006561C8    xor         eax,eax
 006561CA    push        ebp
 006561CB    push        656227
 006561D0    push        dword ptr fs:[eax]
 006561D3    mov         dword ptr fs:[eax],esp
 006561D6    lea         edx,[ebp-4]
 006561D9    mov         eax,esi
 006561DB    call        GetMSNode
 006561E0    lea         eax,[ebp-8]
 006561E3    call        @IntfClear
 006561E8    push        eax
 006561E9    mov         eax,dword ptr [ebp-4]
 006561EC    push        eax
 006561ED    mov         eax,dword ptr [ebx+0C]
 006561F0    push        eax
 006561F1    mov         eax,dword ptr [eax]
 006561F3    call        dword ptr [eax+54]
 006561F6    call        @CheckAutoResult
 006561FB    mov         eax,dword ptr [ebp-8]
 006561FE    cmp         eax,dword ptr [ebp-4]
>00656201    jne         0065620F
 00656203    mov         eax,dword ptr [ebp+10]
 00656206    mov         edx,esi
 00656208    call        @IntfCopy
>0065620D    jmp         0065621A
 0065620F    mov         edx,dword ptr [ebp+10]
 00656212    mov         eax,dword ptr [ebp-8]
 00656215    call        MakeNode
 0065621A    xor         eax,eax
 0065621C    pop         edx
 0065621D    pop         ecx
 0065621E    pop         ecx
 0065621F    mov         dword ptr fs:[eax],edx
 00656222    pop         eax
 00656223    xor         ebx,ebx
>00656225    jmp         0065622C
>00656227    jmp         @HandleAutoException
 0065622C    lea         eax,[ebp-8]
 0065622F    mov         edx,dword ptr ds:[518238];IXMLDOMNode
 00656235    mov         ecx,2
 0065623A    call        @FinalizeArray
 0065623F    mov         eax,ebx
 00656241    pop         edi
 00656242    pop         esi
 00656243    pop         ebx
 00656244    pop         ecx
 00656245    pop         ecx
 00656246    pop         ebp
 00656247    ret         0C
*}
end;

//0065624C
function TMSDOMNode.cloneNode(deep:WordBool):IDOMNode; safecall;
begin
{*
 0065624C    push        ebp
 0065624D    mov         ebp,esp
 0065624F    push        0
 00656251    push        ebx
 00656252    push        esi
 00656253    push        edi
 00656254    mov         ebx,dword ptr [ebp+8]
 00656257    mov         eax,dword ptr [ebp+10]
 0065625A    test        eax,eax
>0065625C    je          00656262
 0065625E    xor         edx,edx
 00656260    mov         dword ptr [eax],edx
 00656262    push        ebx
 00656263    xor         eax,eax
 00656265    push        ebp
 00656266    push        6562A5
 0065626B    push        dword ptr fs:[eax]
 0065626E    mov         dword ptr fs:[eax],esp
 00656271    lea         eax,[ebp-4]
 00656274    call        @IntfClear
 00656279    push        eax
 0065627A    movzx       eax,word ptr [ebp+0C]
 0065627E    push        eax
 0065627F    mov         eax,dword ptr [ebx+0C]
 00656282    push        eax
 00656283    mov         eax,dword ptr [eax]
 00656285    call        dword ptr [eax+60]
 00656288    call        @CheckAutoResult
 0065628D    mov         eax,dword ptr [ebp-4]
 00656290    mov         edx,dword ptr [ebp+10]
 00656293    call        MakeNode
 00656298    xor         eax,eax
 0065629A    pop         edx
 0065629B    pop         ecx
 0065629C    pop         ecx
 0065629D    mov         dword ptr fs:[eax],edx
 006562A0    pop         eax
 006562A1    xor         ebx,ebx
>006562A3    jmp         006562AA
>006562A5    jmp         @HandleAutoException
 006562AA    lea         eax,[ebp-4]
 006562AD    call        @IntfClear
 006562B2    mov         eax,ebx
 006562B4    pop         edi
 006562B5    pop         esi
 006562B6    pop         ebx
 006562B7    pop         ecx
 006562B8    pop         ebp
 006562B9    ret         0C
*}
end;

//006562BC
{*function sub_006562BC(?:?; ?:?):?;
begin
 006562BC    push        ebp
 006562BD    mov         ebp,esp
 006562BF    push        0
 006562C1    push        0
 006562C3    push        0
 006562C5    push        ebx
 006562C6    push        esi
 006562C7    push        edi
 006562C8    mov         ebx,dword ptr [ebp+8]
 006562CB    mov         eax,dword ptr [ebp+0C]
 006562CE    test        eax,eax
>006562D0    je          006562D6
 006562D2    xor         edx,edx
 006562D4    mov         dword ptr [eax],edx
 006562D6    push        ebx
 006562D7    xor         eax,eax
 006562D9    push        ebp
 006562DA    push        65634D
 006562DF    push        dword ptr fs:[eax]
 006562E2    mov         dword ptr fs:[eax],esp
 006562E5    cmp         dword ptr [ebx+14],0
>006562E9    jne         00656335
 006562EB    lea         eax,[ebp-4]
 006562EE    call        @IntfClear
 006562F3    push        eax
 006562F4    mov         eax,dword ptr [ebx+0C]
 006562F7    push        eax
 006562F8    mov         eax,dword ptr [eax]
 006562FA    call        dword ptr [eax+44]
 006562FD    call        @CheckAutoResult
 00656302    cmp         dword ptr [ebp-4],0
>00656306    je          00656335
 00656308    lea         eax,[ebp-0C]
 0065630B    call        @IntfClear
 00656310    push        eax
 00656311    mov         eax,dword ptr [ebx+0C]
 00656314    push        eax
 00656315    mov         eax,dword ptr [eax]
 00656317    call        dword ptr [eax+44]
 0065631A    call        @CheckAutoResult
 0065631F    mov         eax,dword ptr [ebp-0C]
 00656322    lea         edx,[ebp-8]
 00656325    call        MakeNodeList
 0065632A    mov         edx,dword ptr [ebp-8]
 0065632D    lea         eax,[ebx+14]
 00656330    call        @IntfCopy
 00656335    mov         eax,dword ptr [ebp+0C]
 00656338    mov         edx,dword ptr [ebx+14]
 0065633B    call        @IntfCopy
 00656340    xor         eax,eax
 00656342    pop         edx
 00656343    pop         ecx
 00656344    pop         ecx
 00656345    mov         dword ptr fs:[eax],edx
 00656348    pop         eax
 00656349    xor         ebx,ebx
>0065634B    jmp         00656352
>0065634D    jmp         @HandleAutoException
 00656352    lea         eax,[ebp-0C]
 00656355    call        @IntfClear
 0065635A    lea         eax,[ebp-8]
 0065635D    call        @IntfClear
 00656362    lea         eax,[ebp-4]
 00656365    call        @IntfClear
 0065636A    mov         eax,ebx
 0065636C    pop         edi
 0065636D    pop         esi
 0065636E    pop         ebx
 0065636F    mov         esp,ebp
 00656371    pop         ebp
 00656372    ret         8
end;*}

//00656378
{*function sub_00656378(?:?; ?:?):?;
begin
 00656378    push        ebp
 00656379    mov         ebp,esp
 0065637B    push        0
 0065637D    push        0
 0065637F    push        ebx
 00656380    push        esi
 00656381    push        edi
 00656382    mov         ebx,dword ptr [ebp+8]
 00656385    mov         eax,dword ptr [ebp+0C]
 00656388    test        eax,eax
>0065638A    je          00656390
 0065638C    xor         edx,edx
 0065638E    mov         dword ptr [eax],edx
 00656390    push        ebx
 00656391    xor         eax,eax
 00656393    push        ebp
 00656394    push        6563EA
 00656399    push        dword ptr fs:[eax]
 0065639C    mov         dword ptr fs:[eax],esp
 0065639F    cmp         dword ptr [ebx+10],0
>006563A3    jne         006563D2
 006563A5    lea         eax,[ebp-8]
 006563A8    call        @IntfClear
 006563AD    push        eax
 006563AE    mov         eax,dword ptr [ebx+0C]
 006563B1    push        eax
 006563B2    mov         eax,dword ptr [eax]
 006563B4    call        dword ptr [eax+30]
 006563B7    call        @CheckAutoResult
 006563BC    mov         eax,dword ptr [ebp-8]
 006563BF    lea         edx,[ebp-4]
 006563C2    call        MakeNamedNodeMap
 006563C7    mov         edx,dword ptr [ebp-4]
 006563CA    lea         eax,[ebx+10]
 006563CD    call        @IntfCopy
 006563D2    mov         eax,dword ptr [ebp+0C]
 006563D5    mov         edx,dword ptr [ebx+10]
 006563D8    call        @IntfCopy
 006563DD    xor         eax,eax
 006563DF    pop         edx
 006563E0    pop         ecx
 006563E1    pop         ecx
 006563E2    mov         dword ptr fs:[eax],edx
 006563E5    pop         eax
 006563E6    xor         ebx,ebx
>006563E8    jmp         006563EF
>006563EA    jmp         @HandleAutoException
 006563EF    lea         eax,[ebp-8]
 006563F2    call        @IntfClear
 006563F7    lea         eax,[ebp-4]
 006563FA    call        @IntfClear
 006563FF    mov         eax,ebx
 00656401    pop         edi
 00656402    pop         esi
 00656403    pop         ebx
 00656404    pop         ecx
 00656405    pop         ecx
 00656406    pop         ebp
 00656407    ret         8
end;*}

//0065640C
function TMSDOMNode.get_firstChild:IDOMNode; safecall;
begin
{*
 0065640C    push        ebp
 0065640D    mov         ebp,esp
 0065640F    push        0
 00656411    push        ebx
 00656412    push        esi
 00656413    push        edi
 00656414    mov         ebx,dword ptr [ebp+8]
 00656417    mov         eax,dword ptr [ebp+0C]
 0065641A    test        eax,eax
>0065641C    je          00656422
 0065641E    xor         edx,edx
 00656420    mov         dword ptr [eax],edx
 00656422    push        ebx
 00656423    xor         eax,eax
 00656425    push        ebp
 00656426    push        656460
 0065642B    push        dword ptr fs:[eax]
 0065642E    mov         dword ptr fs:[eax],esp
 00656431    lea         eax,[ebp-4]
 00656434    call        @IntfClear
 00656439    push        eax
 0065643A    mov         eax,dword ptr [ebx+0C]
 0065643D    push        eax
 0065643E    mov         eax,dword ptr [eax]
 00656440    call        dword ptr [eax+34]
 00656443    call        @CheckAutoResult
 00656448    mov         eax,dword ptr [ebp-4]
 0065644B    mov         edx,dword ptr [ebp+0C]
 0065644E    call        MakeNode
 00656453    xor         eax,eax
 00656455    pop         edx
 00656456    pop         ecx
 00656457    pop         ecx
 00656458    mov         dword ptr fs:[eax],edx
 0065645B    pop         eax
 0065645C    xor         ebx,ebx
>0065645E    jmp         00656465
>00656460    jmp         @HandleAutoException
 00656465    lea         eax,[ebp-4]
 00656468    call        @IntfClear
 0065646D    mov         eax,ebx
 0065646F    pop         edi
 00656470    pop         esi
 00656471    pop         ebx
 00656472    pop         ecx
 00656473    pop         ebp
 00656474    ret         8
*}
end;

//00656478
function TMSDOMNode.get_lastChild:IDOMNode; safecall;
begin
{*
 00656478    push        ebp
 00656479    mov         ebp,esp
 0065647B    push        0
 0065647D    push        ebx
 0065647E    push        esi
 0065647F    push        edi
 00656480    mov         ebx,dword ptr [ebp+8]
 00656483    mov         eax,dword ptr [ebp+0C]
 00656486    test        eax,eax
>00656488    je          0065648E
 0065648A    xor         edx,edx
 0065648C    mov         dword ptr [eax],edx
 0065648E    push        ebx
 0065648F    xor         eax,eax
 00656491    push        ebp
 00656492    push        6564CC
 00656497    push        dword ptr fs:[eax]
 0065649A    mov         dword ptr fs:[eax],esp
 0065649D    lea         eax,[ebp-4]
 006564A0    call        @IntfClear
 006564A5    push        eax
 006564A6    mov         eax,dword ptr [ebx+0C]
 006564A9    push        eax
 006564AA    mov         eax,dword ptr [eax]
 006564AC    call        dword ptr [eax+38]
 006564AF    call        @CheckAutoResult
 006564B4    mov         eax,dword ptr [ebp-4]
 006564B7    mov         edx,dword ptr [ebp+0C]
 006564BA    call        MakeNode
 006564BF    xor         eax,eax
 006564C1    pop         edx
 006564C2    pop         ecx
 006564C3    pop         ecx
 006564C4    mov         dword ptr fs:[eax],edx
 006564C7    pop         eax
 006564C8    xor         ebx,ebx
>006564CA    jmp         006564D1
>006564CC    jmp         @HandleAutoException
 006564D1    lea         eax,[ebp-4]
 006564D4    call        @IntfClear
 006564D9    mov         eax,ebx
 006564DB    pop         edi
 006564DC    pop         esi
 006564DD    pop         ebx
 006564DE    pop         ecx
 006564DF    pop         ebp
 006564E0    ret         8
*}
end;

//006564E4
function TMSDOMNode.get_localName:DOMString; safecall;
begin
{*
 006564E4    push        ebp
 006564E5    mov         ebp,esp
 006564E7    push        0
 006564E9    push        ebx
 006564EA    push        esi
 006564EB    push        edi
 006564EC    mov         ebx,dword ptr [ebp+8]
 006564EF    mov         eax,dword ptr [ebp+0C]
 006564F2    test        eax,eax
>006564F4    je          006564FA
 006564F6    xor         edx,edx
 006564F8    mov         dword ptr [eax],edx
 006564FA    push        ebx
 006564FB    xor         eax,eax
 006564FD    push        ebp
 006564FE    push        65653B
 00656503    push        dword ptr fs:[eax]
 00656506    mov         dword ptr fs:[eax],esp
 00656509    lea         eax,[ebp-4]
 0065650C    call        @WStrClr
 00656511    push        eax
 00656512    mov         eax,dword ptr [ebx+0C]
 00656515    push        eax
 00656516    mov         eax,dword ptr [eax]
 00656518    call        dword ptr [eax+0A4]
 0065651E    call        @CheckAutoResult
 00656523    mov         edx,dword ptr [ebp-4]
 00656526    mov         eax,dword ptr [ebp+0C]
 00656529    call        @UStrFromWStr
 0065652E    xor         eax,eax
 00656530    pop         edx
 00656531    pop         ecx
 00656532    pop         ecx
 00656533    mov         dword ptr fs:[eax],edx
 00656536    pop         eax
 00656537    xor         ebx,ebx
>00656539    jmp         00656540
>0065653B    jmp         @HandleAutoException
 00656540    lea         eax,[ebp-4]
 00656543    call        @WStrClr
 00656548    mov         eax,ebx
 0065654A    pop         edi
 0065654B    pop         esi
 0065654C    pop         ebx
 0065654D    pop         ecx
 0065654E    pop         ebp
 0065654F    ret         8
*}
end;

//00656554
function TMSDOMNode.get_namespaceURI:DOMString; safecall;
begin
{*
 00656554    push        ebp
 00656555    mov         ebp,esp
 00656557    push        0
 00656559    push        ebx
 0065655A    push        esi
 0065655B    push        edi
 0065655C    mov         ebx,dword ptr [ebp+8]
 0065655F    mov         eax,dword ptr [ebp+0C]
 00656562    test        eax,eax
>00656564    je          0065656A
 00656566    xor         edx,edx
 00656568    mov         dword ptr [eax],edx
 0065656A    push        ebx
 0065656B    xor         eax,eax
 0065656D    push        ebp
 0065656E    push        6565AB
 00656573    push        dword ptr fs:[eax]
 00656576    mov         dword ptr fs:[eax],esp
 00656579    lea         eax,[ebp-4]
 0065657C    call        @WStrClr
 00656581    push        eax
 00656582    mov         eax,dword ptr [ebx+0C]
 00656585    push        eax
 00656586    mov         eax,dword ptr [eax]
 00656588    call        dword ptr [eax+9C]
 0065658E    call        @CheckAutoResult
 00656593    mov         edx,dword ptr [ebp-4]
 00656596    mov         eax,dword ptr [ebp+0C]
 00656599    call        @UStrFromWStr
 0065659E    xor         eax,eax
 006565A0    pop         edx
 006565A1    pop         ecx
 006565A2    pop         ecx
 006565A3    mov         dword ptr fs:[eax],edx
 006565A6    pop         eax
 006565A7    xor         ebx,ebx
>006565A9    jmp         006565B0
>006565AB    jmp         @HandleAutoException
 006565B0    lea         eax,[ebp-4]
 006565B3    call        @WStrClr
 006565B8    mov         eax,ebx
 006565BA    pop         edi
 006565BB    pop         esi
 006565BC    pop         ebx
 006565BD    pop         ecx
 006565BE    pop         ebp
 006565BF    ret         8
*}
end;

//006565C4
function TMSDOMNode.get_nextSibling:IDOMNode; safecall;
begin
{*
 006565C4    push        ebp
 006565C5    mov         ebp,esp
 006565C7    push        0
 006565C9    push        ebx
 006565CA    push        esi
 006565CB    push        edi
 006565CC    mov         ebx,dword ptr [ebp+8]
 006565CF    mov         eax,dword ptr [ebp+0C]
 006565D2    test        eax,eax
>006565D4    je          006565DA
 006565D6    xor         edx,edx
 006565D8    mov         dword ptr [eax],edx
 006565DA    push        ebx
 006565DB    xor         eax,eax
 006565DD    push        ebp
 006565DE    push        656618
 006565E3    push        dword ptr fs:[eax]
 006565E6    mov         dword ptr fs:[eax],esp
 006565E9    lea         eax,[ebp-4]
 006565EC    call        @IntfClear
 006565F1    push        eax
 006565F2    mov         eax,dword ptr [ebx+0C]
 006565F5    push        eax
 006565F6    mov         eax,dword ptr [eax]
 006565F8    call        dword ptr [eax+40]
 006565FB    call        @CheckAutoResult
 00656600    mov         eax,dword ptr [ebp-4]
 00656603    mov         edx,dword ptr [ebp+0C]
 00656606    call        MakeNode
 0065660B    xor         eax,eax
 0065660D    pop         edx
 0065660E    pop         ecx
 0065660F    pop         ecx
 00656610    mov         dword ptr fs:[eax],edx
 00656613    pop         eax
 00656614    xor         ebx,ebx
>00656616    jmp         0065661D
>00656618    jmp         @HandleAutoException
 0065661D    lea         eax,[ebp-4]
 00656620    call        @IntfClear
 00656625    mov         eax,ebx
 00656627    pop         edi
 00656628    pop         esi
 00656629    pop         ebx
 0065662A    pop         ecx
 0065662B    pop         ebp
 0065662C    ret         8
*}
end;

//00656630
function TMSDOMNode.get_nodeName:DOMString; safecall;
begin
{*
 00656630    push        ebp
 00656631    mov         ebp,esp
 00656633    push        0
 00656635    push        ebx
 00656636    push        esi
 00656637    push        edi
 00656638    mov         ebx,dword ptr [ebp+8]
 0065663B    mov         eax,dword ptr [ebp+0C]
 0065663E    test        eax,eax
>00656640    je          00656646
 00656642    xor         edx,edx
 00656644    mov         dword ptr [eax],edx
 00656646    push        ebx
 00656647    xor         eax,eax
 00656649    push        ebp
 0065664A    push        656684
 0065664F    push        dword ptr fs:[eax]
 00656652    mov         dword ptr fs:[eax],esp
 00656655    lea         eax,[ebp-4]
 00656658    call        @WStrClr
 0065665D    push        eax
 0065665E    mov         eax,dword ptr [ebx+0C]
 00656661    push        eax
 00656662    mov         eax,dword ptr [eax]
 00656664    call        dword ptr [eax+1C]
 00656667    call        @CheckAutoResult
 0065666C    mov         edx,dword ptr [ebp-4]
 0065666F    mov         eax,dword ptr [ebp+0C]
 00656672    call        @UStrFromWStr
 00656677    xor         eax,eax
 00656679    pop         edx
 0065667A    pop         ecx
 0065667B    pop         ecx
 0065667C    mov         dword ptr fs:[eax],edx
 0065667F    pop         eax
 00656680    xor         ebx,ebx
>00656682    jmp         00656689
>00656684    jmp         @HandleAutoException
 00656689    lea         eax,[ebp-4]
 0065668C    call        @WStrClr
 00656691    mov         eax,ebx
 00656693    pop         edi
 00656694    pop         esi
 00656695    pop         ebx
 00656696    pop         ecx
 00656697    pop         ebp
 00656698    ret         8
*}
end;

//0065669C
function TMSDOMNode.get_nodeType:DOMNodeType; safecall;
begin
{*
 0065669C    push        ebp
 0065669D    mov         ebp,esp
 0065669F    push        ecx
 006566A0    push        ebx
 006566A1    push        esi
 006566A2    push        edi
 006566A3    mov         ebx,dword ptr [ebp+8]
 006566A6    push        ebx
 006566A7    xor         eax,eax
 006566A9    push        ebp
 006566AA    push        6566DD
 006566AF    push        dword ptr fs:[eax]
 006566B2    mov         dword ptr fs:[eax],esp
 006566B5    lea         eax,[ebp-4]
 006566B8    push        eax
 006566B9    mov         eax,dword ptr [ebx+0C]
 006566BC    push        eax
 006566BD    mov         eax,dword ptr [eax]
 006566BF    call        dword ptr [eax+28]
 006566C2    call        @CheckAutoResult
 006566C7    mov         eax,dword ptr [ebp-4]
 006566CA    mov         edx,dword ptr [ebp+0C]
 006566CD    mov         word ptr [edx],ax
 006566D0    xor         eax,eax
 006566D2    pop         edx
 006566D3    pop         ecx
 006566D4    pop         ecx
 006566D5    mov         dword ptr fs:[eax],edx
 006566D8    pop         eax
 006566D9    xor         ebx,ebx
>006566DB    jmp         006566E2
>006566DD    jmp         @HandleAutoException
 006566E2    mov         eax,ebx
 006566E4    pop         edi
 006566E5    pop         esi
 006566E6    pop         ebx
 006566E7    pop         ecx
 006566E8    pop         ebp
 006566E9    ret         8
*}
end;

//006566EC
function TMSDOMNode.get_nodeValue:DOMString; safecall;
begin
{*
 006566EC    push        ebp
 006566ED    mov         ebp,esp
 006566EF    xor         ecx,ecx
 006566F1    push        ecx
 006566F2    push        ecx
 006566F3    push        ecx
 006566F4    push        ecx
 006566F5    push        ebx
 006566F6    push        esi
 006566F7    push        edi
 006566F8    mov         ebx,dword ptr [ebp+8]
 006566FB    mov         eax,dword ptr [ebp+0C]
 006566FE    test        eax,eax
>00656700    je          00656706
 00656702    xor         edx,edx
 00656704    mov         dword ptr [eax],edx
 00656706    push        ebx
 00656707    xor         eax,eax
 00656709    push        ebp
 0065670A    push        65675A
 0065670F    push        dword ptr fs:[eax]
 00656712    mov         dword ptr fs:[eax],esp
 00656715    lea         eax,[ebp-10]
 00656718    call        @VarClr
 0065671D    push        eax
 0065671E    mov         eax,dword ptr [ebx+0C]
 00656721    push        eax
 00656722    mov         eax,dword ptr [eax]
 00656724    call        dword ptr [eax+20]
 00656727    call        @CheckAutoResult
 0065672C    lea         eax,[ebp-10]
 0065672F    call        VarIsNull
 00656734    test        al,al
>00656736    jne         00656745
 00656738    mov         eax,dword ptr [ebp+0C]
 0065673B    lea         edx,[ebp-10]
 0065673E    call        @VarToUStr
>00656743    jmp         0065674D
 00656745    mov         eax,dword ptr [ebp+0C]
 00656748    call        @UStrClr
 0065674D    xor         eax,eax
 0065674F    pop         edx
 00656750    pop         ecx
 00656751    pop         ecx
 00656752    mov         dword ptr fs:[eax],edx
 00656755    pop         eax
 00656756    xor         ebx,ebx
>00656758    jmp         0065675F
>0065675A    jmp         @HandleAutoException
 0065675F    lea         eax,[ebp-10]
 00656762    call        @VarClr
 00656767    mov         eax,ebx
 00656769    pop         edi
 0065676A    pop         esi
 0065676B    pop         ebx
 0065676C    mov         esp,ebp
 0065676E    pop         ebp
 0065676F    ret         8
*}
end;

//00656774
function TMSDOMNode.get_ownerDocument:IDOMDocument; safecall;
begin
{*
 00656774    push        ebp
 00656775    mov         ebp,esp
 00656777    push        0
 00656779    push        ebx
 0065677A    push        esi
 0065677B    push        edi
 0065677C    mov         ebx,dword ptr [ebp+8]
 0065677F    mov         eax,dword ptr [ebp+0C]
 00656782    test        eax,eax
>00656784    je          0065678A
 00656786    xor         edx,edx
 00656788    mov         dword ptr [eax],edx
 0065678A    push        ebx
 0065678B    xor         eax,eax
 0065678D    push        ebp
 0065678E    push        6567EE
 00656793    push        dword ptr fs:[eax]
 00656796    mov         dword ptr fs:[eax],esp
 00656799    cmp         dword ptr [ebx+18],0
>0065679D    jne         006567D6
 0065679F    lea         eax,[ebp-4]
 006567A2    call        @IntfClear
 006567A7    push        eax
 006567A8    mov         eax,dword ptr [ebx+0C]
 006567AB    push        eax
 006567AC    mov         eax,dword ptr [eax]
 006567AE    call        dword ptr [eax+5C]
 006567B1    call        @CheckAutoResult
 006567B6    mov         ecx,dword ptr [ebp-4]
 006567B9    mov         dl,1
 006567BB    mov         eax,[00655764];TMSDOMDocument
 006567C0    call        TMSDOMNode.Create
 006567C5    mov         edx,eax
 006567C7    test        edx,edx
>006567C9    je          006567CE
 006567CB    sub         edx,0FFFFFFCC
 006567CE    lea         eax,[ebx+18]
 006567D1    call        @IntfCopy
 006567D6    mov         eax,dword ptr [ebp+0C]
 006567D9    mov         edx,dword ptr [ebx+18]
 006567DC    call        @IntfCopy
 006567E1    xor         eax,eax
 006567E3    pop         edx
 006567E4    pop         ecx
 006567E5    pop         ecx
 006567E6    mov         dword ptr fs:[eax],edx
 006567E9    pop         eax
 006567EA    xor         ebx,ebx
>006567EC    jmp         006567F3
>006567EE    jmp         @HandleAutoException
 006567F3    lea         eax,[ebp-4]
 006567F6    call        @IntfClear
 006567FB    mov         eax,ebx
 006567FD    pop         edi
 006567FE    pop         esi
 006567FF    pop         ebx
 00656800    pop         ecx
 00656801    pop         ebp
 00656802    ret         8
*}
end;

//00656808
function TMSDOMNode.get_parentNode:IDOMNode; safecall;
begin
{*
 00656808    push        ebp
 00656809    mov         ebp,esp
 0065680B    push        0
 0065680D    push        ebx
 0065680E    push        esi
 0065680F    push        edi
 00656810    mov         ebx,dword ptr [ebp+8]
 00656813    mov         eax,dword ptr [ebp+0C]
 00656816    test        eax,eax
>00656818    je          0065681E
 0065681A    xor         edx,edx
 0065681C    mov         dword ptr [eax],edx
 0065681E    push        ebx
 0065681F    xor         eax,eax
 00656821    push        ebp
 00656822    push        65685C
 00656827    push        dword ptr fs:[eax]
 0065682A    mov         dword ptr fs:[eax],esp
 0065682D    lea         eax,[ebp-4]
 00656830    call        @IntfClear
 00656835    push        eax
 00656836    mov         eax,dword ptr [ebx+0C]
 00656839    push        eax
 0065683A    mov         eax,dword ptr [eax]
 0065683C    call        dword ptr [eax+2C]
 0065683F    call        @CheckAutoResult
 00656844    mov         eax,dword ptr [ebp-4]
 00656847    mov         edx,dword ptr [ebp+0C]
 0065684A    call        MakeNode
 0065684F    xor         eax,eax
 00656851    pop         edx
 00656852    pop         ecx
 00656853    pop         ecx
 00656854    mov         dword ptr fs:[eax],edx
 00656857    pop         eax
 00656858    xor         ebx,ebx
>0065685A    jmp         00656861
>0065685C    jmp         @HandleAutoException
 00656861    lea         eax,[ebp-4]
 00656864    call        @IntfClear
 00656869    mov         eax,ebx
 0065686B    pop         edi
 0065686C    pop         esi
 0065686D    pop         ebx
 0065686E    pop         ecx
 0065686F    pop         ebp
 00656870    ret         8
*}
end;

//00656874
function TMSDOMNode.get_prefix:DOMString; safecall;
begin
{*
 00656874    push        ebp
 00656875    mov         ebp,esp
 00656877    push        0
 00656879    push        ebx
 0065687A    push        esi
 0065687B    push        edi
 0065687C    mov         ebx,dword ptr [ebp+8]
 0065687F    mov         eax,dword ptr [ebp+0C]
 00656882    test        eax,eax
>00656884    je          0065688A
 00656886    xor         edx,edx
 00656888    mov         dword ptr [eax],edx
 0065688A    push        ebx
 0065688B    xor         eax,eax
 0065688D    push        ebp
 0065688E    push        6568CB
 00656893    push        dword ptr fs:[eax]
 00656896    mov         dword ptr fs:[eax],esp
 00656899    lea         eax,[ebp-4]
 0065689C    call        @WStrClr
 006568A1    push        eax
 006568A2    mov         eax,dword ptr [ebx+0C]
 006568A5    push        eax
 006568A6    mov         eax,dword ptr [eax]
 006568A8    call        dword ptr [eax+0A0]
 006568AE    call        @CheckAutoResult
 006568B3    mov         edx,dword ptr [ebp-4]
 006568B6    mov         eax,dword ptr [ebp+0C]
 006568B9    call        @UStrFromWStr
 006568BE    xor         eax,eax
 006568C0    pop         edx
 006568C1    pop         ecx
 006568C2    pop         ecx
 006568C3    mov         dword ptr fs:[eax],edx
 006568C6    pop         eax
 006568C7    xor         ebx,ebx
>006568C9    jmp         006568D0
>006568CB    jmp         @HandleAutoException
 006568D0    lea         eax,[ebp-4]
 006568D3    call        @WStrClr
 006568D8    mov         eax,ebx
 006568DA    pop         edi
 006568DB    pop         esi
 006568DC    pop         ebx
 006568DD    pop         ecx
 006568DE    pop         ebp
 006568DF    ret         8
*}
end;

//006568E4
function TMSDOMNode.get_previousSibling:IDOMNode; safecall;
begin
{*
 006568E4    push        ebp
 006568E5    mov         ebp,esp
 006568E7    push        0
 006568E9    push        ebx
 006568EA    push        esi
 006568EB    push        edi
 006568EC    mov         ebx,dword ptr [ebp+8]
 006568EF    mov         eax,dword ptr [ebp+0C]
 006568F2    test        eax,eax
>006568F4    je          006568FA
 006568F6    xor         edx,edx
 006568F8    mov         dword ptr [eax],edx
 006568FA    push        ebx
 006568FB    xor         eax,eax
 006568FD    push        ebp
 006568FE    push        656938
 00656903    push        dword ptr fs:[eax]
 00656906    mov         dword ptr fs:[eax],esp
 00656909    lea         eax,[ebp-4]
 0065690C    call        @IntfClear
 00656911    push        eax
 00656912    mov         eax,dword ptr [ebx+0C]
 00656915    push        eax
 00656916    mov         eax,dword ptr [eax]
 00656918    call        dword ptr [eax+3C]
 0065691B    call        @CheckAutoResult
 00656920    mov         eax,dword ptr [ebp-4]
 00656923    mov         edx,dword ptr [ebp+0C]
 00656926    call        MakeNode
 0065692B    xor         eax,eax
 0065692D    pop         edx
 0065692E    pop         ecx
 0065692F    pop         ecx
 00656930    mov         dword ptr fs:[eax],edx
 00656933    pop         eax
 00656934    xor         ebx,ebx
>00656936    jmp         0065693D
>00656938    jmp         @HandleAutoException
 0065693D    lea         eax,[ebp-4]
 00656940    call        @IntfClear
 00656945    mov         eax,ebx
 00656947    pop         edi
 00656948    pop         esi
 00656949    pop         ebx
 0065694A    pop         ecx
 0065694B    pop         ebp
 0065694C    ret         8
*}
end;

//00656950
function TMSDOMNode.hasChildNodes:WordBool; safecall;
begin
{*
 00656950    push        ebp
 00656951    mov         ebp,esp
 00656953    push        ecx
 00656954    push        ebx
 00656955    push        esi
 00656956    push        edi
 00656957    mov         ebx,dword ptr [ebp+8]
 0065695A    push        ebx
 0065695B    xor         eax,eax
 0065695D    push        ebp
 0065695E    push        656992
 00656963    push        dword ptr fs:[eax]
 00656966    mov         dword ptr fs:[eax],esp
 00656969    lea         eax,[ebp-4]
 0065696C    push        eax
 0065696D    mov         eax,dword ptr [ebx+0C]
 00656970    push        eax
 00656971    mov         eax,dword ptr [eax]
 00656973    call        dword ptr [eax+58]
 00656976    call        @CheckAutoResult
 0065697B    movzx       eax,word ptr [ebp-4]
 0065697F    mov         edx,dword ptr [ebp+0C]
 00656982    mov         word ptr [edx],ax
 00656985    xor         eax,eax
 00656987    pop         edx
 00656988    pop         ecx
 00656989    pop         ecx
 0065698A    mov         dword ptr fs:[eax],edx
 0065698D    pop         eax
 0065698E    xor         ebx,ebx
>00656990    jmp         00656997
>00656992    jmp         @HandleAutoException
 00656997    mov         eax,ebx
 00656999    pop         edi
 0065699A    pop         esi
 0065699B    pop         ebx
 0065699C    pop         ecx
 0065699D    pop         ebp
 0065699E    ret         8
*}
end;

//006569A4
function TMSDOMNode.insertBefore(const newChild:Xmldom.IDOMNode; const refChild:Xmldom.IDOMNode):IDOMNode; safecall;
begin
{*
 006569A4    push        ebp
 006569A5    mov         ebp,esp
 006569A7    xor         ecx,ecx
 006569A9    push        ecx
 006569AA    push        ecx
 006569AB    push        ecx
 006569AC    push        ecx
 006569AD    push        ecx
 006569AE    push        ecx
 006569AF    push        ecx
 006569B0    push        ebx
 006569B1    push        esi
 006569B2    push        edi
 006569B3    mov         ebx,dword ptr [ebp+8]
 006569B6    mov         eax,dword ptr [ebp+14]
 006569B9    test        eax,eax
>006569BB    je          006569C1
 006569BD    xor         edx,edx
 006569BF    mov         dword ptr [eax],edx
 006569C1    push        ebx
 006569C2    xor         eax,eax
 006569C4    push        ebp
 006569C5    push        656A30
 006569CA    push        dword ptr fs:[eax]
 006569CD    mov         dword ptr fs:[eax],esp
 006569D0    lea         eax,[ebp-4]
 006569D3    call        @IntfClear
 006569D8    push        eax
 006569D9    lea         edx,[ebp-18]
 006569DC    mov         eax,dword ptr [ebp+10]
 006569DF    call        GetMSNode
 006569E4    mov         edx,dword ptr [ebp-18]
 006569E7    lea         eax,[ebp-14]
 006569EA    call        @VarFromDisp
 006569EF    push        dword ptr [ebp-8]
 006569F2    push        dword ptr [ebp-0C]
 006569F5    push        dword ptr [ebp-10]
 006569F8    push        dword ptr [ebp-14]
 006569FB    lea         edx,[ebp-1C]
 006569FE    mov         eax,dword ptr [ebp+0C]
 00656A01    call        GetMSNode
 00656A06    mov         eax,dword ptr [ebp-1C]
 00656A09    push        eax
 00656A0A    mov         eax,dword ptr [ebx+0C]
 00656A0D    push        eax
 00656A0E    mov         eax,dword ptr [eax]
 00656A10    call        dword ptr [eax+48]
 00656A13    call        @CheckAutoResult
 00656A18    mov         eax,dword ptr [ebp-4]
 00656A1B    mov         edx,dword ptr [ebp+14]
 00656A1E    call        MakeNode
 00656A23    xor         eax,eax
 00656A25    pop         edx
 00656A26    pop         ecx
 00656A27    pop         ecx
 00656A28    mov         dword ptr fs:[eax],edx
 00656A2B    pop         eax
 00656A2C    xor         ebx,ebx
>00656A2E    jmp         00656A35
>00656A30    jmp         @HandleAutoException
 00656A35    lea         eax,[ebp-1C]
 00656A38    mov         edx,dword ptr ds:[518238];IXMLDOMNode
 00656A3E    mov         ecx,2
 00656A43    call        @FinalizeArray
 00656A48    lea         eax,[ebp-14]
 00656A4B    call        @VarClr
 00656A50    lea         eax,[ebp-4]
 00656A53    call        @IntfClear
 00656A58    mov         eax,ebx
 00656A5A    pop         edi
 00656A5B    pop         esi
 00656A5C    pop         ebx
 00656A5D    mov         esp,ebp
 00656A5F    pop         ebp
 00656A60    ret         10
*}
end;

//00656A64
procedure TMSDOMNode.normalize; safecall;
begin
{*
 00656A64    push        ebp
 00656A65    mov         ebp,esp
 00656A67    push        ebx
 00656A68    push        esi
 00656A69    push        edi
 00656A6A    push        dword ptr [ebp+8]
 00656A6D    xor         eax,eax
 00656A6F    push        ebp
 00656A70    push        656A97
 00656A75    push        dword ptr fs:[eax]
 00656A78    mov         dword ptr fs:[eax],esp
 00656A7B    mov         edx,656AB4;'MSXML'
 00656A80    mov         eax,656ACC;'normalize'
 00656A85    call        DOMVendorNotSupported
 00656A8A    xor         eax,eax
 00656A8C    pop         edx
 00656A8D    pop         ecx
 00656A8E    pop         ecx
 00656A8F    mov         dword ptr fs:[eax],edx
 00656A92    pop         eax
 00656A93    xor         ebx,ebx
>00656A95    jmp         00656A9C
>00656A97    jmp         @HandleAutoException
 00656A9C    mov         eax,ebx
 00656A9E    pop         edi
 00656A9F    pop         esi
 00656AA0    pop         ebx
 00656AA1    pop         ebp
 00656AA2    ret         4
*}
end;

//00656AE0
function TMSDOMNode.removeChild(const childNode:Xmldom.IDOMNode):IDOMNode; safecall;
begin
{*
 00656AE0    push        ebp
 00656AE1    mov         ebp,esp
 00656AE3    push        0
 00656AE5    push        0
 00656AE7    push        ebx
 00656AE8    push        esi
 00656AE9    push        edi
 00656AEA    mov         ebx,dword ptr [ebp+8]
 00656AED    mov         eax,dword ptr [ebp+10]
 00656AF0    test        eax,eax
>00656AF2    je          00656AF8
 00656AF4    xor         edx,edx
 00656AF6    mov         dword ptr [eax],edx
 00656AF8    push        ebx
 00656AF9    xor         eax,eax
 00656AFB    push        ebp
 00656AFC    push        656B45
 00656B01    push        dword ptr fs:[eax]
 00656B04    mov         dword ptr fs:[eax],esp
 00656B07    lea         eax,[ebp-4]
 00656B0A    call        @IntfClear
 00656B0F    push        eax
 00656B10    lea         edx,[ebp-8]
 00656B13    mov         eax,dword ptr [ebp+0C]
 00656B16    call        GetMSNode
 00656B1B    mov         eax,dword ptr [ebp-8]
 00656B1E    push        eax
 00656B1F    mov         eax,dword ptr [ebx+0C]
 00656B22    push        eax
 00656B23    mov         eax,dword ptr [eax]
 00656B25    call        dword ptr [eax+50]
 00656B28    call        @CheckAutoResult
 00656B2D    mov         eax,dword ptr [ebp-4]
 00656B30    mov         edx,dword ptr [ebp+10]
 00656B33    call        MakeNode
 00656B38    xor         eax,eax
 00656B3A    pop         edx
 00656B3B    pop         ecx
 00656B3C    pop         ecx
 00656B3D    mov         dword ptr fs:[eax],edx
 00656B40    pop         eax
 00656B41    xor         ebx,ebx
>00656B43    jmp         00656B4A
>00656B45    jmp         @HandleAutoException
 00656B4A    lea         eax,[ebp-8]
 00656B4D    mov         edx,dword ptr ds:[518238];IXMLDOMNode
 00656B53    mov         ecx,2
 00656B58    call        @FinalizeArray
 00656B5D    mov         eax,ebx
 00656B5F    pop         edi
 00656B60    pop         esi
 00656B61    pop         ebx
 00656B62    pop         ecx
 00656B63    pop         ecx
 00656B64    pop         ebp
 00656B65    ret         0C
*}
end;

//00656B68
function TMSDOMNode.replaceChild(const newChild:Xmldom.IDOMNode; const oldChild:Xmldom.IDOMNode):IDOMNode; safecall;
begin
{*
 00656B68    push        ebp
 00656B69    mov         ebp,esp
 00656B6B    push        0
 00656B6D    push        0
 00656B6F    push        0
 00656B71    push        ebx
 00656B72    push        esi
 00656B73    push        edi
 00656B74    mov         ebx,dword ptr [ebp+8]
 00656B77    mov         eax,dword ptr [ebp+14]
 00656B7A    test        eax,eax
>00656B7C    je          00656B82
 00656B7E    xor         edx,edx
 00656B80    mov         dword ptr [eax],edx
 00656B82    push        ebx
 00656B83    xor         eax,eax
 00656B85    push        ebp
 00656B86    push        656BDE
 00656B8B    push        dword ptr fs:[eax]
 00656B8E    mov         dword ptr fs:[eax],esp
 00656B91    lea         eax,[ebp-4]
 00656B94    call        @IntfClear
 00656B99    push        eax
 00656B9A    lea         edx,[ebp-8]
 00656B9D    mov         eax,dword ptr [ebp+10]
 00656BA0    call        GetMSNode
 00656BA5    mov         eax,dword ptr [ebp-8]
 00656BA8    push        eax
 00656BA9    lea         edx,[ebp-0C]
 00656BAC    mov         eax,dword ptr [ebp+0C]
 00656BAF    call        GetMSNode
 00656BB4    mov         eax,dword ptr [ebp-0C]
 00656BB7    push        eax
 00656BB8    mov         eax,dword ptr [ebx+0C]
 00656BBB    push        eax
 00656BBC    mov         eax,dword ptr [eax]
 00656BBE    call        dword ptr [eax+4C]
 00656BC1    call        @CheckAutoResult
 00656BC6    mov         eax,dword ptr [ebp-4]
 00656BC9    mov         edx,dword ptr [ebp+14]
 00656BCC    call        MakeNode
 00656BD1    xor         eax,eax
 00656BD3    pop         edx
 00656BD4    pop         ecx
 00656BD5    pop         ecx
 00656BD6    mov         dword ptr fs:[eax],edx
 00656BD9    pop         eax
 00656BDA    xor         ebx,ebx
>00656BDC    jmp         00656BE3
>00656BDE    jmp         @HandleAutoException
 00656BE3    lea         eax,[ebp-0C]
 00656BE6    mov         edx,dword ptr ds:[518238];IXMLDOMNode
 00656BEC    mov         ecx,3
 00656BF1    call        @FinalizeArray
 00656BF6    mov         eax,ebx
 00656BF8    pop         edi
 00656BF9    pop         esi
 00656BFA    pop         ebx
 00656BFB    mov         esp,ebp
 00656BFD    pop         ebp
 00656BFE    ret         10
*}
end;

//00656C04
procedure TMSDOMNode.set_nodeValue(value:Xmldom.DOMString); safecall;
begin
{*
 00656C04    push        ebp
 00656C05    mov         ebp,esp
 00656C07    xor         ecx,ecx
 00656C09    push        ecx
 00656C0A    push        ecx
 00656C0B    push        ecx
 00656C0C    push        ecx
 00656C0D    push        ebx
 00656C0E    push        esi
 00656C0F    push        edi
 00656C10    mov         ebx,dword ptr [ebp+8]
 00656C13    mov         eax,dword ptr [ebp+0C]
 00656C16    call        @UStrAddRef
 00656C1B    push        ebx
 00656C1C    xor         eax,eax
 00656C1E    push        ebp
 00656C1F    push        656C5C
 00656C24    push        dword ptr fs:[eax]
 00656C27    mov         dword ptr fs:[eax],esp
 00656C2A    lea         eax,[ebp-10]
 00656C2D    mov         edx,dword ptr [ebp+0C]
 00656C30    call        @OleVarFromUStr
 00656C35    push        dword ptr [ebp-4]
 00656C38    push        dword ptr [ebp-8]
 00656C3B    push        dword ptr [ebp-0C]
 00656C3E    push        dword ptr [ebp-10]
 00656C41    mov         eax,dword ptr [ebx+0C]
 00656C44    push        eax
 00656C45    mov         eax,dword ptr [eax]
 00656C47    call        dword ptr [eax+24]
 00656C4A    call        @CheckAutoResult
 00656C4F    xor         eax,eax
 00656C51    pop         edx
 00656C52    pop         ecx
 00656C53    pop         ecx
 00656C54    mov         dword ptr fs:[eax],edx
 00656C57    pop         eax
 00656C58    xor         ebx,ebx
>00656C5A    jmp         00656C61
>00656C5C    jmp         @HandleAutoException
 00656C61    lea         eax,[ebp-10]
 00656C64    call        @VarClr
 00656C69    lea         eax,[ebp+0C]
 00656C6C    call        @UStrClr
 00656C71    mov         eax,ebx
 00656C73    pop         edi
 00656C74    pop         esi
 00656C75    pop         ebx
 00656C76    mov         esp,ebp
 00656C78    pop         ebp
 00656C79    ret         8
*}
end;

//00656C7C
function TMSDOMNode.supports(const feature:Xmldom.DOMString; const version:Xmldom.DOMString):WordBool;
begin
{*
 00656C7C    mov         edx,656C9C;'MSXML'
 00656C81    mov         eax,656CB4;'supports'
 00656C86    call        DOMVendorNotSupported
 00656C8B    xor         eax,eax
 00656C8D    ret
*}
end;

//00656CC8
function TMSDOMNode.GetXMLDOMNode:IXMLDOMNode;
begin
{*
 00656CC8    push        ebx
 00656CC9    push        esi
 00656CCA    mov         esi,edx
 00656CCC    mov         ebx,eax
 00656CCE    mov         eax,esi
 00656CD0    mov         edx,dword ptr [ebx+0C]
 00656CD3    call        @IntfCopy
 00656CD8    pop         esi
 00656CD9    pop         ebx
 00656CDA    ret
*}
end;

//00656CDC
function TMSDOMNode.selectNode(const nodePath:WideString):IDOMNode; safecall;
begin
{*
 00656CDC    push        ebp
 00656CDD    mov         ebp,esp
 00656CDF    push        0
 00656CE1    push        ebx
 00656CE2    push        esi
 00656CE3    push        edi
 00656CE4    mov         ebx,dword ptr [ebp+8]
 00656CE7    mov         eax,dword ptr [ebp+10]
 00656CEA    test        eax,eax
>00656CEC    je          00656CF2
 00656CEE    xor         edx,edx
 00656CF0    mov         dword ptr [eax],edx
 00656CF2    push        ebx
 00656CF3    xor         eax,eax
 00656CF5    push        ebp
 00656CF6    push        656D47
 00656CFB    push        dword ptr fs:[eax]
 00656CFE    mov         dword ptr fs:[eax],esp
 00656D01    lea         eax,[ebp-4]
 00656D04    call        @IntfClear
 00656D09    push        eax
 00656D0A    mov         eax,dword ptr [ebp+0C]
 00656D0D    push        eax
 00656D0E    mov         eax,dword ptr [ebx+0C]
 00656D11    push        eax
 00656D12    mov         eax,dword ptr [eax]
 00656D14    call        dword ptr [eax+94]
 00656D1A    call        @CheckAutoResult
 00656D1F    cmp         dword ptr [ebp-4],0
>00656D23    je          00656D32
 00656D25    mov         edx,dword ptr [ebp+10]
 00656D28    mov         eax,dword ptr [ebp-4]
 00656D2B    call        MakeNode
>00656D30    jmp         00656D3A
 00656D32    mov         eax,dword ptr [ebp+10]
 00656D35    call        @IntfClear
 00656D3A    xor         eax,eax
 00656D3C    pop         edx
 00656D3D    pop         ecx
 00656D3E    pop         ecx
 00656D3F    mov         dword ptr fs:[eax],edx
 00656D42    pop         eax
 00656D43    xor         ebx,ebx
>00656D45    jmp         00656D4C
>00656D47    jmp         @HandleAutoException
 00656D4C    lea         eax,[ebp-4]
 00656D4F    call        @IntfClear
 00656D54    mov         eax,ebx
 00656D56    pop         edi
 00656D57    pop         esi
 00656D58    pop         ebx
 00656D59    pop         ecx
 00656D5A    pop         ebp
 00656D5B    ret         0C
*}
end;

//00656D60
{*function sub_00656D60(?:?; ?:?; ?:?):?;
begin
 00656D60    push        ebp
 00656D61    mov         ebp,esp
 00656D63    push        0
 00656D65    push        ebx
 00656D66    push        esi
 00656D67    push        edi
 00656D68    mov         ebx,dword ptr [ebp+8]
 00656D6B    mov         eax,dword ptr [ebp+10]
 00656D6E    test        eax,eax
>00656D70    je          00656D76
 00656D72    xor         edx,edx
 00656D74    mov         dword ptr [eax],edx
 00656D76    push        ebx
 00656D77    xor         eax,eax
 00656D79    push        ebp
 00656D7A    push        656DCB
 00656D7F    push        dword ptr fs:[eax]
 00656D82    mov         dword ptr fs:[eax],esp
 00656D85    lea         eax,[ebp-4]
 00656D88    call        @IntfClear
 00656D8D    push        eax
 00656D8E    mov         eax,dword ptr [ebp+0C]
 00656D91    push        eax
 00656D92    mov         eax,dword ptr [ebx+0C]
 00656D95    push        eax
 00656D96    mov         eax,dword ptr [eax]
 00656D98    call        dword ptr [eax+90]
 00656D9E    call        @CheckAutoResult
 00656DA3    cmp         dword ptr [ebp-4],0
>00656DA7    je          00656DB6
 00656DA9    mov         edx,dword ptr [ebp+10]
 00656DAC    mov         eax,dword ptr [ebp-4]
 00656DAF    call        MakeNamedNodeMap
>00656DB4    jmp         00656DBE
 00656DB6    mov         eax,dword ptr [ebp+10]
 00656DB9    call        @IntfClear
 00656DBE    xor         eax,eax
 00656DC0    pop         edx
 00656DC1    pop         ecx
 00656DC2    pop         ecx
 00656DC3    mov         dword ptr fs:[eax],edx
 00656DC6    pop         eax
 00656DC7    xor         ebx,ebx
>00656DC9    jmp         00656DD0
>00656DCB    jmp         @HandleAutoException
 00656DD0    lea         eax,[ebp-4]
 00656DD3    call        @IntfClear
 00656DD8    mov         eax,ebx
 00656DDA    pop         edi
 00656DDB    pop         esi
 00656DDC    pop         ebx
 00656DDD    pop         ecx
 00656DDE    pop         ebp
 00656DDF    ret         0C
end;*}

//00656DE4
function TMSDOMNode.get_text:DOMString; safecall;
begin
{*
 00656DE4    push        ebp
 00656DE5    mov         ebp,esp
 00656DE7    push        0
 00656DE9    push        ebx
 00656DEA    push        esi
 00656DEB    push        edi
 00656DEC    mov         ebx,dword ptr [ebp+8]
 00656DEF    mov         eax,dword ptr [ebp+0C]
 00656DF2    test        eax,eax
>00656DF4    je          00656DFA
 00656DF6    xor         edx,edx
 00656DF8    mov         dword ptr [eax],edx
 00656DFA    push        ebx
 00656DFB    xor         eax,eax
 00656DFD    push        ebp
 00656DFE    push        656E38
 00656E03    push        dword ptr fs:[eax]
 00656E06    mov         dword ptr fs:[eax],esp
 00656E09    lea         eax,[ebp-4]
 00656E0C    call        @WStrClr
 00656E11    push        eax
 00656E12    mov         eax,dword ptr [ebx+0C]
 00656E15    push        eax
 00656E16    mov         eax,dword ptr [eax]
 00656E18    call        dword ptr [eax+68]
 00656E1B    call        @CheckAutoResult
 00656E20    mov         edx,dword ptr [ebp-4]
 00656E23    mov         eax,dword ptr [ebp+0C]
 00656E26    call        @UStrFromWStr
 00656E2B    xor         eax,eax
 00656E2D    pop         edx
 00656E2E    pop         ecx
 00656E2F    pop         ecx
 00656E30    mov         dword ptr fs:[eax],edx
 00656E33    pop         eax
 00656E34    xor         ebx,ebx
>00656E36    jmp         00656E3D
>00656E38    jmp         @HandleAutoException
 00656E3D    lea         eax,[ebp-4]
 00656E40    call        @WStrClr
 00656E45    mov         eax,ebx
 00656E47    pop         edi
 00656E48    pop         esi
 00656E49    pop         ebx
 00656E4A    pop         ecx
 00656E4B    pop         ebp
 00656E4C    ret         8
*}
end;

//00656E50
procedure TMSDOMNode.set_text(const Value:Xmldom.DOMString); safecall;
begin
{*
 00656E50    push        ebp
 00656E51    mov         ebp,esp
 00656E53    push        0
 00656E55    push        ebx
 00656E56    push        esi
 00656E57    push        edi
 00656E58    mov         ebx,dword ptr [ebp+8]
 00656E5B    push        ebx
 00656E5C    xor         eax,eax
 00656E5E    push        ebp
 00656E5F    push        656E94
 00656E64    push        dword ptr fs:[eax]
 00656E67    mov         dword ptr fs:[eax],esp
 00656E6A    lea         eax,[ebp-4]
 00656E6D    mov         edx,dword ptr [ebp+0C]
 00656E70    call        @WStrFromUStr
 00656E75    mov         eax,dword ptr [ebp-4]
 00656E78    push        eax
 00656E79    mov         eax,dword ptr [ebx+0C]
 00656E7C    push        eax
 00656E7D    mov         eax,dword ptr [eax]
 00656E7F    call        dword ptr [eax+6C]
 00656E82    call        @CheckAutoResult
 00656E87    xor         eax,eax
 00656E89    pop         edx
 00656E8A    pop         ecx
 00656E8B    pop         ecx
 00656E8C    mov         dword ptr fs:[eax],edx
 00656E8F    pop         eax
 00656E90    xor         ebx,ebx
>00656E92    jmp         00656E99
>00656E94    jmp         @HandleAutoException
 00656E99    lea         eax,[ebp-4]
 00656E9C    call        @WStrClr
 00656EA1    mov         eax,ebx
 00656EA3    pop         edi
 00656EA4    pop         esi
 00656EA5    pop         ebx
 00656EA6    pop         ecx
 00656EA7    pop         ebp
 00656EA8    ret         8
*}
end;

//00656EAC
function TMSDOMNode.get_xml:DOMString; safecall;
begin
{*
 00656EAC    push        ebp
 00656EAD    mov         ebp,esp
 00656EAF    push        0
 00656EB1    push        ebx
 00656EB2    push        esi
 00656EB3    push        edi
 00656EB4    mov         ebx,dword ptr [ebp+8]
 00656EB7    mov         eax,dword ptr [ebp+0C]
 00656EBA    test        eax,eax
>00656EBC    je          00656EC2
 00656EBE    xor         edx,edx
 00656EC0    mov         dword ptr [eax],edx
 00656EC2    push        ebx
 00656EC3    xor         eax,eax
 00656EC5    push        ebp
 00656EC6    push        656F03
 00656ECB    push        dword ptr fs:[eax]
 00656ECE    mov         dword ptr fs:[eax],esp
 00656ED1    lea         eax,[ebp-4]
 00656ED4    call        @WStrClr
 00656ED9    push        eax
 00656EDA    mov         eax,dword ptr [ebx+0C]
 00656EDD    push        eax
 00656EDE    mov         eax,dword ptr [eax]
 00656EE0    call        dword ptr [eax+88]
 00656EE6    call        @CheckAutoResult
 00656EEB    mov         edx,dword ptr [ebp-4]
 00656EEE    mov         eax,dword ptr [ebp+0C]
 00656EF1    call        @UStrFromWStr
 00656EF6    xor         eax,eax
 00656EF8    pop         edx
 00656EF9    pop         ecx
 00656EFA    pop         ecx
 00656EFB    mov         dword ptr fs:[eax],edx
 00656EFE    pop         eax
 00656EFF    xor         ebx,ebx
>00656F01    jmp         00656F08
>00656F03    jmp         @HandleAutoException
 00656F08    lea         eax,[ebp-4]
 00656F0B    call        @WStrClr
 00656F10    mov         eax,ebx
 00656F12    pop         edi
 00656F13    pop         esi
 00656F14    pop         ebx
 00656F15    pop         ecx
 00656F16    pop         ebp
 00656F17    ret         8
*}
end;

//00656F1C
procedure TMSDOMNode.transformNode(const stylesheet:Xmldom.IDOMNode; var output:WideString); safecall;
begin
{*
 00656F1C    push        ebp
 00656F1D    mov         ebp,esp
 00656F1F    push        0
 00656F21    push        0
 00656F23    push        ebx
 00656F24    push        esi
 00656F25    push        edi
 00656F26    mov         ebx,dword ptr [ebp+8]
 00656F29    push        ebx
 00656F2A    xor         eax,eax
 00656F2C    push        ebp
 00656F2D    push        656F79
 00656F32    push        dword ptr fs:[eax]
 00656F35    mov         dword ptr fs:[eax],esp
 00656F38    lea         eax,[ebp-4]
 00656F3B    call        @WStrClr
 00656F40    push        eax
 00656F41    lea         edx,[ebp-8]
 00656F44    mov         eax,dword ptr [ebp+0C]
 00656F47    call        GetMSNode
 00656F4C    mov         eax,dword ptr [ebp-8]
 00656F4F    push        eax
 00656F50    mov         eax,dword ptr [ebx+0C]
 00656F53    push        eax
 00656F54    mov         eax,dword ptr [eax]
 00656F56    call        dword ptr [eax+8C]
 00656F5C    call        @CheckAutoResult
 00656F61    mov         edx,dword ptr [ebp-4]
 00656F64    mov         eax,dword ptr [ebp+10]
 00656F67    call        @WStrAsg
 00656F6C    xor         eax,eax
 00656F6E    pop         edx
 00656F6F    pop         ecx
 00656F70    pop         ecx
 00656F71    mov         dword ptr fs:[eax],edx
 00656F74    pop         eax
 00656F75    xor         ebx,ebx
>00656F77    jmp         00656F7E
>00656F79    jmp         @HandleAutoException
 00656F7E    lea         eax,[ebp-8]
 00656F81    call        @IntfClear
 00656F86    lea         eax,[ebp-4]
 00656F89    call        @WStrClr
 00656F8E    mov         eax,ebx
 00656F90    pop         edi
 00656F91    pop         esi
 00656F92    pop         ebx
 00656F93    pop         ecx
 00656F94    pop         ecx
 00656F95    pop         ebp
 00656F96    ret         0C
*}
end;

//00656F9C
procedure TMSDOMNode.transformNode(const stylesheet:Xmldom.IDOMNode; const output:Xmldom.IDOMDocument); safecall;
begin
{*
 00656F9C    push        ebp
 00656F9D    mov         ebp,esp
 00656F9F    xor         ecx,ecx
 00656FA1    push        ecx
 00656FA2    push        ecx
 00656FA3    push        ecx
 00656FA4    push        ecx
 00656FA5    push        ecx
 00656FA6    push        ecx
 00656FA7    push        ebx
 00656FA8    push        esi
 00656FA9    push        edi
 00656FAA    mov         ebx,dword ptr [ebp+8]
 00656FAD    push        ebx
 00656FAE    xor         eax,eax
 00656FB0    push        ebp
 00656FB1    push        65700B
 00656FB6    push        dword ptr fs:[eax]
 00656FB9    mov         dword ptr fs:[eax],esp
 00656FBC    lea         edx,[ebp-14]
 00656FBF    mov         eax,dword ptr [ebp+10]
 00656FC2    call        GetMSNode
 00656FC7    mov         edx,dword ptr [ebp-14]
 00656FCA    lea         eax,[ebp-10]
 00656FCD    call        @VarFromDisp
 00656FD2    push        dword ptr [ebp-4]
 00656FD5    push        dword ptr [ebp-8]
 00656FD8    push        dword ptr [ebp-0C]
 00656FDB    push        dword ptr [ebp-10]
 00656FDE    lea         edx,[ebp-18]
 00656FE1    mov         eax,dword ptr [ebp+0C]
 00656FE4    call        GetMSNode
 00656FE9    mov         eax,dword ptr [ebp-18]
 00656FEC    push        eax
 00656FED    mov         eax,dword ptr [ebx+0C]
 00656FF0    push        eax
 00656FF1    mov         eax,dword ptr [eax]
 00656FF3    call        dword ptr [eax+0A8]
 00656FF9    call        @CheckAutoResult
 00656FFE    xor         eax,eax
 00657000    pop         edx
 00657001    pop         ecx
 00657002    pop         ecx
 00657003    mov         dword ptr fs:[eax],edx
 00657006    pop         eax
 00657007    xor         ebx,ebx
>00657009    jmp         00657010
>0065700B    jmp         @HandleAutoException
 00657010    lea         eax,[ebp-18]
 00657013    mov         edx,dword ptr ds:[518238];IXMLDOMNode
 00657019    mov         ecx,2
 0065701E    call        @FinalizeArray
 00657023    lea         eax,[ebp-10]
 00657026    call        @VarClr
 0065702B    mov         eax,ebx
 0065702D    pop         edi
 0065702E    pop         esi
 0065702F    pop         ebx
 00657030    mov         esp,ebp
 00657032    pop         ebp
 00657033    ret         0C
*}
end;

//00657038
constructor TMSDOMNamedNodeMap.Create;
begin
{*
 00657038    push        ebp
 00657039    mov         ebp,esp
 0065703B    push        ecx
 0065703C    push        ebx
 0065703D    push        esi
 0065703E    test        dl,dl
>00657040    je          0065704A
 00657042    add         esp,0FFFFFFF0
 00657045    call        @ClassCreate
 0065704A    mov         dword ptr [ebp-4],ecx
 0065704D    mov         ebx,edx
 0065704F    mov         esi,eax
 00657051    mov         eax,dword ptr [ebp-4]
 00657054    call        @IntfAddRef
 00657059    xor         eax,eax
 0065705B    push        ebp
 0065705C    push        657091
 00657061    push        dword ptr fs:[eax]
 00657064    mov         dword ptr fs:[eax],esp
 00657067    xor         edx,edx
 00657069    mov         eax,esi
 0065706B    call        TObject.Create
 00657070    lea         eax,[esi+0C]
 00657073    mov         edx,dword ptr [ebp-4]
 00657076    call        @IntfCopy
 0065707B    xor         eax,eax
 0065707D    pop         edx
 0065707E    pop         ecx
 0065707F    pop         ecx
 00657080    mov         dword ptr fs:[eax],edx
 00657083    push        657098
 00657088    lea         eax,[ebp-4]
 0065708B    call        @IntfClear
 00657090    ret
>00657091    jmp         @HandleFinally
>00657096    jmp         00657088
 00657098    mov         eax,esi
 0065709A    test        bl,bl
>0065709C    je          006570AD
 0065709E    call        @AfterConstruction
 006570A3    pop         dword ptr fs:[0]
 006570AA    add         esp,0C
 006570AD    mov         eax,esi
 006570AF    pop         esi
 006570B0    pop         ebx
 006570B1    pop         ecx
 006570B2    pop         ebp
 006570B3    ret
*}
end;

//006570B4
function TMSDOMNodeList.get_item(index:Integer):IDOMNode; safecall;
begin
{*
 006570B4    push        ebp
 006570B5    mov         ebp,esp
 006570B7    push        0
 006570B9    push        ebx
 006570BA    push        esi
 006570BB    push        edi
 006570BC    mov         ebx,dword ptr [ebp+8]
 006570BF    mov         eax,dword ptr [ebp+10]
 006570C2    test        eax,eax
>006570C4    je          006570CA
 006570C6    xor         edx,edx
 006570C8    mov         dword ptr [eax],edx
 006570CA    push        ebx
 006570CB    xor         eax,eax
 006570CD    push        ebp
 006570CE    push        65710C
 006570D3    push        dword ptr fs:[eax]
 006570D6    mov         dword ptr fs:[eax],esp
 006570D9    lea         eax,[ebp-4]
 006570DC    call        @IntfClear
 006570E1    push        eax
 006570E2    mov         eax,dword ptr [ebp+0C]
 006570E5    push        eax
 006570E6    mov         eax,dword ptr [ebx+0C]
 006570E9    push        eax
 006570EA    mov         eax,dword ptr [eax]
 006570EC    call        dword ptr [eax+1C]
 006570EF    call        @CheckAutoResult
 006570F4    mov         eax,dword ptr [ebp-4]
 006570F7    mov         edx,dword ptr [ebp+10]
 006570FA    call        MakeNode
 006570FF    xor         eax,eax
 00657101    pop         edx
 00657102    pop         ecx
 00657103    pop         ecx
 00657104    mov         dword ptr fs:[eax],edx
 00657107    pop         eax
 00657108    xor         ebx,ebx
>0065710A    jmp         00657111
>0065710C    jmp         @HandleAutoException
 00657111    lea         eax,[ebp-4]
 00657114    call        @IntfClear
 00657119    mov         eax,ebx
 0065711B    pop         edi
 0065711C    pop         esi
 0065711D    pop         ebx
 0065711E    pop         ecx
 0065711F    pop         ebp
 00657120    ret         0C
*}
end;

//00657124
function TMSDOMNodeList.get_length:Integer; safecall;
begin
{*
 00657124    push        ebp
 00657125    mov         ebp,esp
 00657127    push        ecx
 00657128    push        ebx
 00657129    push        esi
 0065712A    push        edi
 0065712B    mov         ebx,dword ptr [ebp+8]
 0065712E    push        ebx
 0065712F    xor         eax,eax
 00657131    push        ebp
 00657132    push        657164
 00657137    push        dword ptr fs:[eax]
 0065713A    mov         dword ptr fs:[eax],esp
 0065713D    lea         eax,[ebp-4]
 00657140    push        eax
 00657141    mov         eax,dword ptr [ebx+0C]
 00657144    push        eax
 00657145    mov         eax,dword ptr [eax]
 00657147    call        dword ptr [eax+20]
 0065714A    call        @CheckAutoResult
 0065714F    mov         eax,dword ptr [ebp-4]
 00657152    mov         edx,dword ptr [ebp+0C]
 00657155    mov         dword ptr [edx],eax
 00657157    xor         eax,eax
 00657159    pop         edx
 0065715A    pop         ecx
 0065715B    pop         ecx
 0065715C    mov         dword ptr fs:[eax],edx
 0065715F    pop         eax
 00657160    xor         ebx,ebx
>00657162    jmp         00657169
>00657164    jmp         @HandleAutoException
 00657169    mov         eax,ebx
 0065716B    pop         edi
 0065716C    pop         esi
 0065716D    pop         ebx
 0065716E    pop         ecx
 0065716F    pop         ebp
 00657170    ret         8
*}
end;

//00657174
constructor TMSDOMNodeList.Create;
begin
{*
 00657174    push        ebp
 00657175    mov         ebp,esp
 00657177    push        ecx
 00657178    push        ebx
 00657179    push        esi
 0065717A    test        dl,dl
>0065717C    je          00657186
 0065717E    add         esp,0FFFFFFF0
 00657181    call        @ClassCreate
 00657186    mov         dword ptr [ebp-4],ecx
 00657189    mov         ebx,edx
 0065718B    mov         esi,eax
 0065718D    mov         eax,dword ptr [ebp-4]
 00657190    call        @IntfAddRef
 00657195    xor         eax,eax
 00657197    push        ebp
 00657198    push        6571CD
 0065719D    push        dword ptr fs:[eax]
 006571A0    mov         dword ptr fs:[eax],esp
 006571A3    xor         edx,edx
 006571A5    mov         eax,esi
 006571A7    call        TObject.Create
 006571AC    lea         eax,[esi+0C]
 006571AF    mov         edx,dword ptr [ebp-4]
 006571B2    call        @IntfCopy
 006571B7    xor         eax,eax
 006571B9    pop         edx
 006571BA    pop         ecx
 006571BB    pop         ecx
 006571BC    mov         dword ptr fs:[eax],edx
 006571BF    push        6571D4
 006571C4    lea         eax,[ebp-4]
 006571C7    call        @IntfClear
 006571CC    ret
>006571CD    jmp         @HandleFinally
>006571D2    jmp         006571C4
 006571D4    mov         eax,esi
 006571D6    test        bl,bl
>006571D8    je          006571E9
 006571DA    call        @AfterConstruction
 006571DF    pop         dword ptr fs:[0]
 006571E6    add         esp,0C
 006571E9    mov         eax,esi
 006571EB    pop         esi
 006571EC    pop         ebx
 006571ED    pop         ecx
 006571EE    pop         ebp
 006571EF    ret
*}
end;

//006571F0
function TMSDOMNamedNodeMap.get_item(index:Integer):IDOMNode; safecall;
begin
{*
 006571F0    push        ebp
 006571F1    mov         ebp,esp
 006571F3    push        0
 006571F5    push        ebx
 006571F6    push        esi
 006571F7    push        edi
 006571F8    mov         ebx,dword ptr [ebp+8]
 006571FB    mov         eax,dword ptr [ebp+10]
 006571FE    test        eax,eax
>00657200    je          00657206
 00657202    xor         edx,edx
 00657204    mov         dword ptr [eax],edx
 00657206    push        ebx
 00657207    xor         eax,eax
 00657209    push        ebp
 0065720A    push        657248
 0065720F    push        dword ptr fs:[eax]
 00657212    mov         dword ptr fs:[eax],esp
 00657215    lea         eax,[ebp-4]
 00657218    call        @IntfClear
 0065721D    push        eax
 0065721E    mov         eax,dword ptr [ebp+0C]
 00657221    push        eax
 00657222    mov         eax,dword ptr [ebx+0C]
 00657225    push        eax
 00657226    mov         eax,dword ptr [eax]
 00657228    call        dword ptr [eax+28]
 0065722B    call        @CheckAutoResult
 00657230    mov         eax,dword ptr [ebp-4]
 00657233    mov         edx,dword ptr [ebp+10]
 00657236    call        MakeNode
 0065723B    xor         eax,eax
 0065723D    pop         edx
 0065723E    pop         ecx
 0065723F    pop         ecx
 00657240    mov         dword ptr fs:[eax],edx
 00657243    pop         eax
 00657244    xor         ebx,ebx
>00657246    jmp         0065724D
>00657248    jmp         @HandleAutoException
 0065724D    lea         eax,[ebp-4]
 00657250    call        @IntfClear
 00657255    mov         eax,ebx
 00657257    pop         edi
 00657258    pop         esi
 00657259    pop         ebx
 0065725A    pop         ecx
 0065725B    pop         ebp
 0065725C    ret         0C
*}
end;

//00657260
function TMSDOMNamedNodeMap.get_length:Integer; safecall;
begin
{*
 00657260    push        ebp
 00657261    mov         ebp,esp
 00657263    push        ecx
 00657264    push        ebx
 00657265    push        esi
 00657266    push        edi
 00657267    mov         ebx,dword ptr [ebp+8]
 0065726A    push        ebx
 0065726B    xor         eax,eax
 0065726D    push        ebp
 0065726E    push        6572A0
 00657273    push        dword ptr fs:[eax]
 00657276    mov         dword ptr fs:[eax],esp
 00657279    lea         eax,[ebp-4]
 0065727C    push        eax
 0065727D    mov         eax,dword ptr [ebx+0C]
 00657280    push        eax
 00657281    mov         eax,dword ptr [eax]
 00657283    call        dword ptr [eax+2C]
 00657286    call        @CheckAutoResult
 0065728B    mov         eax,dword ptr [ebp-4]
 0065728E    mov         edx,dword ptr [ebp+0C]
 00657291    mov         dword ptr [edx],eax
 00657293    xor         eax,eax
 00657295    pop         edx
 00657296    pop         ecx
 00657297    pop         ecx
 00657298    mov         dword ptr fs:[eax],edx
 0065729B    pop         eax
 0065729C    xor         ebx,ebx
>0065729E    jmp         006572A5
>006572A0    jmp         @HandleAutoException
 006572A5    mov         eax,ebx
 006572A7    pop         edi
 006572A8    pop         esi
 006572A9    pop         ebx
 006572AA    pop         ecx
 006572AB    pop         ebp
 006572AC    ret         8
*}
end;

//006572B0
function TMSDOMNamedNodeMap.getNamedItem(const name:Xmldom.DOMString):IDOMNode; safecall;
begin
{*
 006572B0    push        ebp
 006572B1    mov         ebp,esp
 006572B3    push        0
 006572B5    push        0
 006572B7    push        ebx
 006572B8    push        esi
 006572B9    push        edi
 006572BA    mov         ebx,dword ptr [ebp+8]
 006572BD    mov         eax,dword ptr [ebp+10]
 006572C0    test        eax,eax
>006572C2    je          006572C8
 006572C4    xor         edx,edx
 006572C6    mov         dword ptr [eax],edx
 006572C8    push        ebx
 006572C9    xor         eax,eax
 006572CB    push        ebp
 006572CC    push        657315
 006572D1    push        dword ptr fs:[eax]
 006572D4    mov         dword ptr fs:[eax],esp
 006572D7    lea         eax,[ebp-4]
 006572DA    call        @IntfClear
 006572DF    push        eax
 006572E0    lea         eax,[ebp-8]
 006572E3    mov         edx,dword ptr [ebp+0C]
 006572E6    call        @WStrFromUStr
 006572EB    mov         eax,dword ptr [ebp-8]
 006572EE    push        eax
 006572EF    mov         eax,dword ptr [ebx+0C]
 006572F2    push        eax
 006572F3    mov         eax,dword ptr [eax]
 006572F5    call        dword ptr [eax+1C]
 006572F8    call        @CheckAutoResult
 006572FD    mov         eax,dword ptr [ebp-4]
 00657300    mov         edx,dword ptr [ebp+10]
 00657303    call        MakeNode
 00657308    xor         eax,eax
 0065730A    pop         edx
 0065730B    pop         ecx
 0065730C    pop         ecx
 0065730D    mov         dword ptr fs:[eax],edx
 00657310    pop         eax
 00657311    xor         ebx,ebx
>00657313    jmp         0065731A
>00657315    jmp         @HandleAutoException
 0065731A    lea         eax,[ebp-8]
 0065731D    call        @WStrClr
 00657322    lea         eax,[ebp-4]
 00657325    call        @IntfClear
 0065732A    mov         eax,ebx
 0065732C    pop         edi
 0065732D    pop         esi
 0065732E    pop         ebx
 0065732F    pop         ecx
 00657330    pop         ecx
 00657331    pop         ebp
 00657332    ret         0C
*}
end;

//00657338
function TMSDOMNamedNodeMap.getNamedItemNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):IDOMNode; safecall;
begin
{*
 00657338    push        ebp
 00657339    mov         ebp,esp
 0065733B    push        0
 0065733D    push        0
 0065733F    push        0
 00657341    push        ebx
 00657342    push        esi
 00657343    push        edi
 00657344    mov         ebx,dword ptr [ebp+8]
 00657347    mov         eax,dword ptr [ebp+14]
 0065734A    test        eax,eax
>0065734C    je          00657352
 0065734E    xor         edx,edx
 00657350    mov         dword ptr [eax],edx
 00657352    push        ebx
 00657353    xor         eax,eax
 00657355    push        ebp
 00657356    push        6573AE
 0065735B    push        dword ptr fs:[eax]
 0065735E    mov         dword ptr fs:[eax],esp
 00657361    lea         eax,[ebp-4]
 00657364    call        @IntfClear
 00657369    push        eax
 0065736A    lea         eax,[ebp-8]
 0065736D    mov         edx,dword ptr [ebp+0C]
 00657370    call        @WStrFromUStr
 00657375    mov         eax,dword ptr [ebp-8]
 00657378    push        eax
 00657379    lea         eax,[ebp-0C]
 0065737C    mov         edx,dword ptr [ebp+10]
 0065737F    call        @WStrFromUStr
 00657384    mov         eax,dword ptr [ebp-0C]
 00657387    push        eax
 00657388    mov         eax,dword ptr [ebx+0C]
 0065738B    push        eax
 0065738C    mov         eax,dword ptr [eax]
 0065738E    call        dword ptr [eax+30]
 00657391    call        @CheckAutoResult
 00657396    mov         eax,dword ptr [ebp-4]
 00657399    mov         edx,dword ptr [ebp+14]
 0065739C    call        MakeNode
 006573A1    xor         eax,eax
 006573A3    pop         edx
 006573A4    pop         ecx
 006573A5    pop         ecx
 006573A6    mov         dword ptr fs:[eax],edx
 006573A9    pop         eax
 006573AA    xor         ebx,ebx
>006573AC    jmp         006573B3
>006573AE    jmp         @HandleAutoException
 006573B3    lea         eax,[ebp-0C]
 006573B6    mov         edx,2
 006573BB    call        @WStrArrayClr
 006573C0    lea         eax,[ebp-4]
 006573C3    call        @IntfClear
 006573C8    mov         eax,ebx
 006573CA    pop         edi
 006573CB    pop         esi
 006573CC    pop         ebx
 006573CD    mov         esp,ebp
 006573CF    pop         ebp
 006573D0    ret         10
*}
end;

//006573D4
function TMSDOMNamedNodeMap.removeNamedItem(const name:Xmldom.DOMString):IDOMNode; safecall;
begin
{*
 006573D4    push        ebp
 006573D5    mov         ebp,esp
 006573D7    push        0
 006573D9    push        0
 006573DB    push        ebx
 006573DC    push        esi
 006573DD    push        edi
 006573DE    mov         ebx,dword ptr [ebp+8]
 006573E1    mov         eax,dword ptr [ebp+10]
 006573E4    test        eax,eax
>006573E6    je          006573EC
 006573E8    xor         edx,edx
 006573EA    mov         dword ptr [eax],edx
 006573EC    push        ebx
 006573ED    xor         eax,eax
 006573EF    push        ebp
 006573F0    push        657439
 006573F5    push        dword ptr fs:[eax]
 006573F8    mov         dword ptr fs:[eax],esp
 006573FB    lea         eax,[ebp-4]
 006573FE    call        @IntfClear
 00657403    push        eax
 00657404    lea         eax,[ebp-8]
 00657407    mov         edx,dword ptr [ebp+0C]
 0065740A    call        @WStrFromUStr
 0065740F    mov         eax,dword ptr [ebp-8]
 00657412    push        eax
 00657413    mov         eax,dword ptr [ebx+0C]
 00657416    push        eax
 00657417    mov         eax,dword ptr [eax]
 00657419    call        dword ptr [eax+24]
 0065741C    call        @CheckAutoResult
 00657421    mov         eax,dword ptr [ebp-4]
 00657424    mov         edx,dword ptr [ebp+10]
 00657427    call        MakeNode
 0065742C    xor         eax,eax
 0065742E    pop         edx
 0065742F    pop         ecx
 00657430    pop         ecx
 00657431    mov         dword ptr fs:[eax],edx
 00657434    pop         eax
 00657435    xor         ebx,ebx
>00657437    jmp         0065743E
>00657439    jmp         @HandleAutoException
 0065743E    lea         eax,[ebp-8]
 00657441    call        @WStrClr
 00657446    lea         eax,[ebp-4]
 00657449    call        @IntfClear
 0065744E    mov         eax,ebx
 00657450    pop         edi
 00657451    pop         esi
 00657452    pop         ebx
 00657453    pop         ecx
 00657454    pop         ecx
 00657455    pop         ebp
 00657456    ret         0C
*}
end;

//0065745C
function TMSDOMNamedNodeMap.removeNamedItemNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):IDOMNode; safecall;
begin
{*
 0065745C    push        ebp
 0065745D    mov         ebp,esp
 0065745F    push        0
 00657461    push        0
 00657463    push        0
 00657465    push        ebx
 00657466    push        esi
 00657467    push        edi
 00657468    mov         ebx,dword ptr [ebp+8]
 0065746B    mov         eax,dword ptr [ebp+14]
 0065746E    test        eax,eax
>00657470    je          00657476
 00657472    xor         edx,edx
 00657474    mov         dword ptr [eax],edx
 00657476    push        ebx
 00657477    xor         eax,eax
 00657479    push        ebp
 0065747A    push        6574D2
 0065747F    push        dword ptr fs:[eax]
 00657482    mov         dword ptr fs:[eax],esp
 00657485    lea         eax,[ebp-4]
 00657488    call        @IntfClear
 0065748D    push        eax
 0065748E    lea         eax,[ebp-8]
 00657491    mov         edx,dword ptr [ebp+0C]
 00657494    call        @WStrFromUStr
 00657499    mov         eax,dword ptr [ebp-8]
 0065749C    push        eax
 0065749D    lea         eax,[ebp-0C]
 006574A0    mov         edx,dword ptr [ebp+10]
 006574A3    call        @WStrFromUStr
 006574A8    mov         eax,dword ptr [ebp-0C]
 006574AB    push        eax
 006574AC    mov         eax,dword ptr [ebx+0C]
 006574AF    push        eax
 006574B0    mov         eax,dword ptr [eax]
 006574B2    call        dword ptr [eax+34]
 006574B5    call        @CheckAutoResult
 006574BA    mov         eax,dword ptr [ebp-4]
 006574BD    mov         edx,dword ptr [ebp+14]
 006574C0    call        MakeNode
 006574C5    xor         eax,eax
 006574C7    pop         edx
 006574C8    pop         ecx
 006574C9    pop         ecx
 006574CA    mov         dword ptr fs:[eax],edx
 006574CD    pop         eax
 006574CE    xor         ebx,ebx
>006574D0    jmp         006574D7
>006574D2    jmp         @HandleAutoException
 006574D7    lea         eax,[ebp-0C]
 006574DA    mov         edx,2
 006574DF    call        @WStrArrayClr
 006574E4    lea         eax,[ebp-4]
 006574E7    call        @IntfClear
 006574EC    mov         eax,ebx
 006574EE    pop         edi
 006574EF    pop         esi
 006574F0    pop         ebx
 006574F1    mov         esp,ebp
 006574F3    pop         ebp
 006574F4    ret         10
*}
end;

//006574F8
function TMSDOMNamedNodeMap.setNamedItem(const newItem:Xmldom.IDOMNode):IDOMNode; safecall;
begin
{*
 006574F8    push        ebp
 006574F9    mov         ebp,esp
 006574FB    push        0
 006574FD    push        0
 006574FF    push        ebx
 00657500    push        esi
 00657501    push        edi
 00657502    mov         ebx,dword ptr [ebp+8]
 00657505    mov         eax,dword ptr [ebp+10]
 00657508    test        eax,eax
>0065750A    je          00657510
 0065750C    xor         edx,edx
 0065750E    mov         dword ptr [eax],edx
 00657510    push        ebx
 00657511    xor         eax,eax
 00657513    push        ebp
 00657514    push        65755D
 00657519    push        dword ptr fs:[eax]
 0065751C    mov         dword ptr fs:[eax],esp
 0065751F    lea         eax,[ebp-4]
 00657522    call        @IntfClear
 00657527    push        eax
 00657528    lea         edx,[ebp-8]
 0065752B    mov         eax,dword ptr [ebp+0C]
 0065752E    call        GetMSNode
 00657533    mov         eax,dword ptr [ebp-8]
 00657536    push        eax
 00657537    mov         eax,dword ptr [ebx+0C]
 0065753A    push        eax
 0065753B    mov         eax,dword ptr [eax]
 0065753D    call        dword ptr [eax+20]
 00657540    call        @CheckAutoResult
 00657545    mov         eax,dword ptr [ebp-4]
 00657548    mov         edx,dword ptr [ebp+10]
 0065754B    call        MakeNode
 00657550    xor         eax,eax
 00657552    pop         edx
 00657553    pop         ecx
 00657554    pop         ecx
 00657555    mov         dword ptr fs:[eax],edx
 00657558    pop         eax
 00657559    xor         ebx,ebx
>0065755B    jmp         00657562
>0065755D    jmp         @HandleAutoException
 00657562    lea         eax,[ebp-8]
 00657565    mov         edx,dword ptr ds:[518238];IXMLDOMNode
 0065756B    mov         ecx,2
 00657570    call        @FinalizeArray
 00657575    mov         eax,ebx
 00657577    pop         edi
 00657578    pop         esi
 00657579    pop         ebx
 0065757A    pop         ecx
 0065757B    pop         ecx
 0065757C    pop         ebp
 0065757D    ret         0C
*}
end;

//00657580
function TMSDOMNamedNodeMap.setNamedItemNS(const arg:Xmldom.IDOMNode):IDOMNode; safecall;
begin
{*
 00657580    push        ebp
 00657581    mov         ebp,esp
 00657583    push        0
 00657585    push        0
 00657587    push        ebx
 00657588    push        esi
 00657589    push        edi
 0065758A    mov         ebx,dword ptr [ebp+8]
 0065758D    mov         eax,dword ptr [ebp+10]
 00657590    test        eax,eax
>00657592    je          00657598
 00657594    xor         edx,edx
 00657596    mov         dword ptr [eax],edx
 00657598    push        ebx
 00657599    xor         eax,eax
 0065759B    push        ebp
 0065759C    push        6575E5
 006575A1    push        dword ptr fs:[eax]
 006575A4    mov         dword ptr fs:[eax],esp
 006575A7    lea         eax,[ebp-4]
 006575AA    call        @IntfClear
 006575AF    push        eax
 006575B0    lea         edx,[ebp-8]
 006575B3    mov         eax,dword ptr [ebp+0C]
 006575B6    call        GetMSNode
 006575BB    mov         eax,dword ptr [ebp-8]
 006575BE    push        eax
 006575BF    mov         eax,dword ptr [ebx+0C]
 006575C2    push        eax
 006575C3    mov         eax,dword ptr [eax]
 006575C5    call        dword ptr [eax+20]
 006575C8    call        @CheckAutoResult
 006575CD    mov         eax,dword ptr [ebp-4]
 006575D0    mov         edx,dword ptr [ebp+10]
 006575D3    call        MakeNode
 006575D8    xor         eax,eax
 006575DA    pop         edx
 006575DB    pop         ecx
 006575DC    pop         ecx
 006575DD    mov         dword ptr fs:[eax],edx
 006575E0    pop         eax
 006575E1    xor         ebx,ebx
>006575E3    jmp         006575EA
>006575E5    jmp         @HandleAutoException
 006575EA    lea         eax,[ebp-8]
 006575ED    mov         edx,dword ptr ds:[518238];IXMLDOMNode
 006575F3    mov         ecx,2
 006575F8    call        @FinalizeArray
 006575FD    mov         eax,ebx
 006575FF    pop         edi
 00657600    pop         esi
 00657601    pop         ebx
 00657602    pop         ecx
 00657603    pop         ecx
 00657604    pop         ebp
 00657605    ret         0C
*}
end;

//00657608
function TMSDOMCharacterData.GetMSCharacterData:IXMLDOMCharacterData;
begin
{*
 00657608    push        ebx
 00657609    push        esi
 0065760A    mov         esi,edx
 0065760C    mov         ebx,eax
 0065760E    mov         eax,esi
 00657610    mov         edx,dword ptr [ebx+0C]
 00657613    mov         ecx,657620
 00657618    call        @IntfCast
 0065761D    pop         esi
 0065761E    pop         ebx
 0065761F    ret
*}
end;

//00657630
procedure TMSDOMCharacterData.appendData(const data:Xmldom.DOMString); safecall;
begin
{*
 00657630    push        ebp
 00657631    mov         ebp,esp
 00657633    push        0
 00657635    push        0
 00657637    push        ebx
 00657638    push        esi
 00657639    push        edi
 0065763A    mov         ebx,dword ptr [ebp+8]
 0065763D    push        ebx
 0065763E    xor         eax,eax
 00657640    push        ebp
 00657641    push        657683
 00657646    push        dword ptr fs:[eax]
 00657649    mov         dword ptr fs:[eax],esp
 0065764C    lea         eax,[ebp-4]
 0065764F    mov         edx,dword ptr [ebp+0C]
 00657652    call        @WStrFromUStr
 00657657    mov         eax,dword ptr [ebp-4]
 0065765A    push        eax
 0065765B    lea         edx,[ebp-8]
 0065765E    mov         eax,ebx
 00657660    call        TMSDOMCharacterData.GetMSCharacterData
 00657665    mov         eax,dword ptr [ebp-8]
 00657668    push        eax
 00657669    mov         eax,dword ptr [eax]
 0065766B    call        dword ptr [eax+0BC]
 00657671    call        @CheckAutoResult
 00657676    xor         eax,eax
 00657678    pop         edx
 00657679    pop         ecx
 0065767A    pop         ecx
 0065767B    mov         dword ptr fs:[eax],edx
 0065767E    pop         eax
 0065767F    xor         ebx,ebx
>00657681    jmp         00657688
>00657683    jmp         @HandleAutoException
 00657688    lea         eax,[ebp-8]
 0065768B    call        @IntfClear
 00657690    lea         eax,[ebp-4]
 00657693    call        @WStrClr
 00657698    mov         eax,ebx
 0065769A    pop         edi
 0065769B    pop         esi
 0065769C    pop         ebx
 0065769D    pop         ecx
 0065769E    pop         ecx
 0065769F    pop         ebp
 006576A0    ret         8
*}
end;

//006576A4
procedure TMSDOMCharacterData.deleteData(offset:Integer; count:Integer); safecall;
begin
{*
 006576A4    push        ebp
 006576A5    mov         ebp,esp
 006576A7    push        0
 006576A9    push        ebx
 006576AA    push        esi
 006576AB    push        edi
 006576AC    mov         ebx,dword ptr [ebp+8]
 006576AF    push        ebx
 006576B0    xor         eax,eax
 006576B2    push        ebp
 006576B3    push        6576EE
 006576B8    push        dword ptr fs:[eax]
 006576BB    mov         dword ptr fs:[eax],esp
 006576BE    mov         eax,dword ptr [ebp+10]
 006576C1    push        eax
 006576C2    mov         eax,dword ptr [ebp+0C]
 006576C5    push        eax
 006576C6    lea         edx,[ebp-4]
 006576C9    mov         eax,ebx
 006576CB    call        TMSDOMCharacterData.GetMSCharacterData
 006576D0    mov         eax,dword ptr [ebp-4]
 006576D3    push        eax
 006576D4    mov         eax,dword ptr [eax]
 006576D6    call        dword ptr [eax+0C4]
 006576DC    call        @CheckAutoResult
 006576E1    xor         eax,eax
 006576E3    pop         edx
 006576E4    pop         ecx
 006576E5    pop         ecx
 006576E6    mov         dword ptr fs:[eax],edx
 006576E9    pop         eax
 006576EA    xor         ebx,ebx
>006576EC    jmp         006576F3
>006576EE    jmp         @HandleAutoException
 006576F3    lea         eax,[ebp-4]
 006576F6    call        @IntfClear
 006576FB    mov         eax,ebx
 006576FD    pop         edi
 006576FE    pop         esi
 006576FF    pop         ebx
 00657700    pop         ecx
 00657701    pop         ebp
 00657702    ret         0C
*}
end;

//00657708
function TMSDOMCharacterData.get_data:DOMString; safecall;
begin
{*
 00657708    push        ebp
 00657709    mov         ebp,esp
 0065770B    push        0
 0065770D    push        0
 0065770F    push        ebx
 00657710    push        esi
 00657711    push        edi
 00657712    mov         ebx,dword ptr [ebp+8]
 00657715    mov         eax,dword ptr [ebp+0C]
 00657718    test        eax,eax
>0065771A    je          00657720
 0065771C    xor         edx,edx
 0065771E    mov         dword ptr [eax],edx
 00657720    push        ebx
 00657721    xor         eax,eax
 00657723    push        ebp
 00657724    push        65776B
 00657729    push        dword ptr fs:[eax]
 0065772C    mov         dword ptr fs:[eax],esp
 0065772F    lea         eax,[ebp-4]
 00657732    call        @WStrClr
 00657737    push        eax
 00657738    lea         edx,[ebp-8]
 0065773B    mov         eax,ebx
 0065773D    call        TMSDOMCharacterData.GetMSCharacterData
 00657742    mov         eax,dword ptr [ebp-8]
 00657745    push        eax
 00657746    mov         eax,dword ptr [eax]
 00657748    call        dword ptr [eax+0AC]
 0065774E    call        @CheckAutoResult
 00657753    mov         edx,dword ptr [ebp-4]
 00657756    mov         eax,dword ptr [ebp+0C]
 00657759    call        @UStrFromWStr
 0065775E    xor         eax,eax
 00657760    pop         edx
 00657761    pop         ecx
 00657762    pop         ecx
 00657763    mov         dword ptr fs:[eax],edx
 00657766    pop         eax
 00657767    xor         ebx,ebx
>00657769    jmp         00657770
>0065776B    jmp         @HandleAutoException
 00657770    lea         eax,[ebp-8]
 00657773    call        @IntfClear
 00657778    lea         eax,[ebp-4]
 0065777B    call        @WStrClr
 00657780    mov         eax,ebx
 00657782    pop         edi
 00657783    pop         esi
 00657784    pop         ebx
 00657785    pop         ecx
 00657786    pop         ecx
 00657787    pop         ebp
 00657788    ret         8
*}
end;

//0065778C
function TMSDOMCharacterData.get_length:Integer; safecall;
begin
{*
 0065778C    push        ebp
 0065778D    mov         ebp,esp
 0065778F    add         esp,0FFFFFFF8
 00657792    push        ebx
 00657793    push        esi
 00657794    push        edi
 00657795    xor         eax,eax
 00657797    mov         dword ptr [ebp-8],eax
 0065779A    mov         ebx,dword ptr [ebp+8]
 0065779D    push        ebx
 0065779E    xor         eax,eax
 006577A0    push        ebp
 006577A1    push        6577E0
 006577A6    push        dword ptr fs:[eax]
 006577A9    mov         dword ptr fs:[eax],esp
 006577AC    lea         eax,[ebp-4]
 006577AF    push        eax
 006577B0    lea         edx,[ebp-8]
 006577B3    mov         eax,ebx
 006577B5    call        TMSDOMCharacterData.GetMSCharacterData
 006577BA    mov         eax,dword ptr [ebp-8]
 006577BD    push        eax
 006577BE    mov         eax,dword ptr [eax]
 006577C0    call        dword ptr [eax+0B4]
 006577C6    call        @CheckAutoResult
 006577CB    mov         eax,dword ptr [ebp-4]
 006577CE    mov         edx,dword ptr [ebp+0C]
 006577D1    mov         dword ptr [edx],eax
 006577D3    xor         eax,eax
 006577D5    pop         edx
 006577D6    pop         ecx
 006577D7    pop         ecx
 006577D8    mov         dword ptr fs:[eax],edx
 006577DB    pop         eax
 006577DC    xor         ebx,ebx
>006577DE    jmp         006577E5
>006577E0    jmp         @HandleAutoException
 006577E5    lea         eax,[ebp-8]
 006577E8    call        @IntfClear
 006577ED    mov         eax,ebx
 006577EF    pop         edi
 006577F0    pop         esi
 006577F1    pop         ebx
 006577F2    pop         ecx
 006577F3    pop         ecx
 006577F4    pop         ebp
 006577F5    ret         8
*}
end;

//006577F8
procedure TMSDOMCharacterData.insertData(offset:Integer; const data:Xmldom.DOMString); safecall;
begin
{*
 006577F8    push        ebp
 006577F9    mov         ebp,esp
 006577FB    push        0
 006577FD    push        0
 006577FF    push        ebx
 00657800    push        esi
 00657801    push        edi
 00657802    mov         ebx,dword ptr [ebp+8]
 00657805    push        ebx
 00657806    xor         eax,eax
 00657808    push        ebp
 00657809    push        65784F
 0065780E    push        dword ptr fs:[eax]
 00657811    mov         dword ptr fs:[eax],esp
 00657814    lea         eax,[ebp-4]
 00657817    mov         edx,dword ptr [ebp+10]
 0065781A    call        @WStrFromUStr
 0065781F    mov         eax,dword ptr [ebp-4]
 00657822    push        eax
 00657823    mov         eax,dword ptr [ebp+0C]
 00657826    push        eax
 00657827    lea         edx,[ebp-8]
 0065782A    mov         eax,ebx
 0065782C    call        TMSDOMCharacterData.GetMSCharacterData
 00657831    mov         eax,dword ptr [ebp-8]
 00657834    push        eax
 00657835    mov         eax,dword ptr [eax]
 00657837    call        dword ptr [eax+0C0]
 0065783D    call        @CheckAutoResult
 00657842    xor         eax,eax
 00657844    pop         edx
 00657845    pop         ecx
 00657846    pop         ecx
 00657847    mov         dword ptr fs:[eax],edx
 0065784A    pop         eax
 0065784B    xor         ebx,ebx
>0065784D    jmp         00657854
>0065784F    jmp         @HandleAutoException
 00657854    lea         eax,[ebp-8]
 00657857    call        @IntfClear
 0065785C    lea         eax,[ebp-4]
 0065785F    call        @WStrClr
 00657864    mov         eax,ebx
 00657866    pop         edi
 00657867    pop         esi
 00657868    pop         ebx
 00657869    pop         ecx
 0065786A    pop         ecx
 0065786B    pop         ebp
 0065786C    ret         0C
*}
end;

//00657870
procedure TMSDOMCharacterData.replaceData(offset:Integer; count:Integer; const data:Xmldom.DOMString); safecall;
begin
{*
 00657870    push        ebp
 00657871    mov         ebp,esp
 00657873    push        0
 00657875    push        0
 00657877    push        ebx
 00657878    push        esi
 00657879    push        edi
 0065787A    mov         ebx,dword ptr [ebp+8]
 0065787D    push        ebx
 0065787E    xor         eax,eax
 00657880    push        ebp
 00657881    push        6578CB
 00657886    push        dword ptr fs:[eax]
 00657889    mov         dword ptr fs:[eax],esp
 0065788C    lea         eax,[ebp-4]
 0065788F    mov         edx,dword ptr [ebp+14]
 00657892    call        @WStrFromUStr
 00657897    mov         eax,dword ptr [ebp-4]
 0065789A    push        eax
 0065789B    mov         eax,dword ptr [ebp+10]
 0065789E    push        eax
 0065789F    mov         eax,dword ptr [ebp+0C]
 006578A2    push        eax
 006578A3    lea         edx,[ebp-8]
 006578A6    mov         eax,ebx
 006578A8    call        TMSDOMCharacterData.GetMSCharacterData
 006578AD    mov         eax,dword ptr [ebp-8]
 006578B0    push        eax
 006578B1    mov         eax,dword ptr [eax]
 006578B3    call        dword ptr [eax+0C8]
 006578B9    call        @CheckAutoResult
 006578BE    xor         eax,eax
 006578C0    pop         edx
 006578C1    pop         ecx
 006578C2    pop         ecx
 006578C3    mov         dword ptr fs:[eax],edx
 006578C6    pop         eax
 006578C7    xor         ebx,ebx
>006578C9    jmp         006578D0
>006578CB    jmp         @HandleAutoException
 006578D0    lea         eax,[ebp-8]
 006578D3    call        @IntfClear
 006578D8    lea         eax,[ebp-4]
 006578DB    call        @WStrClr
 006578E0    mov         eax,ebx
 006578E2    pop         edi
 006578E3    pop         esi
 006578E4    pop         ebx
 006578E5    pop         ecx
 006578E6    pop         ecx
 006578E7    pop         ebp
 006578E8    ret         10
*}
end;

//006578EC
procedure TMSDOMCharacterData.set_data(const data:Xmldom.DOMString); safecall;
begin
{*
 006578EC    push        ebp
 006578ED    mov         ebp,esp
 006578EF    push        0
 006578F1    push        0
 006578F3    push        ebx
 006578F4    push        esi
 006578F5    push        edi
 006578F6    mov         ebx,dword ptr [ebp+8]
 006578F9    push        ebx
 006578FA    xor         eax,eax
 006578FC    push        ebp
 006578FD    push        65793F
 00657902    push        dword ptr fs:[eax]
 00657905    mov         dword ptr fs:[eax],esp
 00657908    lea         eax,[ebp-4]
 0065790B    mov         edx,dword ptr [ebp+0C]
 0065790E    call        @WStrFromUStr
 00657913    mov         eax,dword ptr [ebp-4]
 00657916    push        eax
 00657917    lea         edx,[ebp-8]
 0065791A    mov         eax,ebx
 0065791C    call        TMSDOMCharacterData.GetMSCharacterData
 00657921    mov         eax,dword ptr [ebp-8]
 00657924    push        eax
 00657925    mov         eax,dword ptr [eax]
 00657927    call        dword ptr [eax+0B0]
 0065792D    call        @CheckAutoResult
 00657932    xor         eax,eax
 00657934    pop         edx
 00657935    pop         ecx
 00657936    pop         ecx
 00657937    mov         dword ptr fs:[eax],edx
 0065793A    pop         eax
 0065793B    xor         ebx,ebx
>0065793D    jmp         00657944
>0065793F    jmp         @HandleAutoException
 00657944    lea         eax,[ebp-8]
 00657947    call        @IntfClear
 0065794C    lea         eax,[ebp-4]
 0065794F    call        @WStrClr
 00657954    mov         eax,ebx
 00657956    pop         edi
 00657957    pop         esi
 00657958    pop         ebx
 00657959    pop         ecx
 0065795A    pop         ecx
 0065795B    pop         ebp
 0065795C    ret         8
*}
end;

//00657960
function TMSDOMCharacterData.substringData(offset:Integer; count:Integer):DOMString; safecall;
begin
{*
 00657960    push        ebp
 00657961    mov         ebp,esp
 00657963    push        0
 00657965    push        0
 00657967    push        ebx
 00657968    push        esi
 00657969    push        edi
 0065796A    mov         ebx,dword ptr [ebp+8]
 0065796D    mov         eax,dword ptr [ebp+14]
 00657970    test        eax,eax
>00657972    je          00657978
 00657974    xor         edx,edx
 00657976    mov         dword ptr [eax],edx
 00657978    push        ebx
 00657979    xor         eax,eax
 0065797B    push        ebp
 0065797C    push        6579CB
 00657981    push        dword ptr fs:[eax]
 00657984    mov         dword ptr fs:[eax],esp
 00657987    lea         eax,[ebp-4]
 0065798A    call        @WStrClr
 0065798F    push        eax
 00657990    mov         eax,dword ptr [ebp+10]
 00657993    push        eax
 00657994    mov         eax,dword ptr [ebp+0C]
 00657997    push        eax
 00657998    lea         edx,[ebp-8]
 0065799B    mov         eax,ebx
 0065799D    call        TMSDOMCharacterData.GetMSCharacterData
 006579A2    mov         eax,dword ptr [ebp-8]
 006579A5    push        eax
 006579A6    mov         eax,dword ptr [eax]
 006579A8    call        dword ptr [eax+0B8]
 006579AE    call        @CheckAutoResult
 006579B3    mov         edx,dword ptr [ebp-4]
 006579B6    mov         eax,dword ptr [ebp+14]
 006579B9    call        @UStrFromWStr
 006579BE    xor         eax,eax
 006579C0    pop         edx
 006579C1    pop         ecx
 006579C2    pop         ecx
 006579C3    mov         dword ptr fs:[eax],edx
 006579C6    pop         eax
 006579C7    xor         ebx,ebx
>006579C9    jmp         006579D0
>006579CB    jmp         @HandleAutoException
 006579D0    lea         eax,[ebp-8]
 006579D3    call        @IntfClear
 006579D8    lea         eax,[ebp-4]
 006579DB    call        @WStrClr
 006579E0    mov         eax,ebx
 006579E2    pop         edi
 006579E3    pop         esi
 006579E4    pop         ebx
 006579E5    pop         ecx
 006579E6    pop         ecx
 006579E7    pop         ebp
 006579E8    ret         10
*}
end;

//006579EC
function TMSDOMAttr.GetMSAttribute:IXMLDOMAttribute;
begin
{*
 006579EC    push        ebx
 006579ED    push        esi
 006579EE    mov         esi,edx
 006579F0    mov         ebx,eax
 006579F2    mov         eax,esi
 006579F4    mov         edx,dword ptr [ebx+0C]
 006579F7    mov         ecx,657A04
 006579FC    call        @IntfCast
 00657A01    pop         esi
 00657A02    pop         ebx
 00657A03    ret
*}
end;

//00657A14
function TMSDOMAttr.get_name:DOMString; safecall;
begin
{*
 00657A14    push        ebp
 00657A15    mov         ebp,esp
 00657A17    push        0
 00657A19    push        0
 00657A1B    push        ebx
 00657A1C    push        esi
 00657A1D    push        edi
 00657A1E    mov         ebx,dword ptr [ebp+8]
 00657A21    mov         eax,dword ptr [ebp+0C]
 00657A24    test        eax,eax
>00657A26    je          00657A2C
 00657A28    xor         edx,edx
 00657A2A    mov         dword ptr [eax],edx
 00657A2C    push        ebx
 00657A2D    xor         eax,eax
 00657A2F    push        ebp
 00657A30    push        657A77
 00657A35    push        dword ptr fs:[eax]
 00657A38    mov         dword ptr fs:[eax],esp
 00657A3B    lea         eax,[ebp-4]
 00657A3E    call        @WStrClr
 00657A43    push        eax
 00657A44    lea         edx,[ebp-8]
 00657A47    mov         eax,ebx
 00657A49    call        TMSDOMAttr.GetMSAttribute
 00657A4E    mov         eax,dword ptr [ebp-8]
 00657A51    push        eax
 00657A52    mov         eax,dword ptr [eax]
 00657A54    call        dword ptr [eax+0AC]
 00657A5A    call        @CheckAutoResult
 00657A5F    mov         edx,dword ptr [ebp-4]
 00657A62    mov         eax,dword ptr [ebp+0C]
 00657A65    call        @UStrFromWStr
 00657A6A    xor         eax,eax
 00657A6C    pop         edx
 00657A6D    pop         ecx
 00657A6E    pop         ecx
 00657A6F    mov         dword ptr fs:[eax],edx
 00657A72    pop         eax
 00657A73    xor         ebx,ebx
>00657A75    jmp         00657A7C
>00657A77    jmp         @HandleAutoException
 00657A7C    lea         eax,[ebp-8]
 00657A7F    call        @IntfClear
 00657A84    lea         eax,[ebp-4]
 00657A87    call        @WStrClr
 00657A8C    mov         eax,ebx
 00657A8E    pop         edi
 00657A8F    pop         esi
 00657A90    pop         ebx
 00657A91    pop         ecx
 00657A92    pop         ecx
 00657A93    pop         ebp
 00657A94    ret         8
*}
end;

//00657A98
function TMSDOMAttr.get_ownerElement:IDOMElement; safecall;
begin
{*
 00657A98    push        ebp
 00657A99    mov         ebp,esp
 00657A9B    push        ebx
 00657A9C    push        esi
 00657A9D    push        edi
 00657A9E    mov         eax,dword ptr [ebp+0C]
 00657AA1    test        eax,eax
>00657AA3    je          00657AA9
 00657AA5    xor         edx,edx
 00657AA7    mov         dword ptr [eax],edx
 00657AA9    push        dword ptr [ebp+8]
 00657AAC    xor         eax,eax
 00657AAE    push        ebp
 00657AAF    push        657ADE
 00657AB4    push        dword ptr fs:[eax]
 00657AB7    mov         dword ptr fs:[eax],esp
 00657ABA    mov         edx,657AF8;'MSXML'
 00657ABF    mov         eax,657B10;'get_ownerElement'
 00657AC4    call        DOMVendorNotSupported
 00657AC9    mov         eax,dword ptr [ebp+0C]
 00657ACC    call        @IntfClear
 00657AD1    xor         eax,eax
 00657AD3    pop         edx
 00657AD4    pop         ecx
 00657AD5    pop         ecx
 00657AD6    mov         dword ptr fs:[eax],edx
 00657AD9    pop         eax
 00657ADA    xor         ebx,ebx
>00657ADC    jmp         00657AE3
>00657ADE    jmp         @HandleAutoException
 00657AE3    mov         eax,ebx
 00657AE5    pop         edi
 00657AE6    pop         esi
 00657AE7    pop         ebx
 00657AE8    pop         ebp
 00657AE9    ret         8
*}
end;

//00657B34
function TMSDOMAttr.get_specified:WordBool; safecall;
begin
{*
 00657B34    push        ebp
 00657B35    mov         ebp,esp
 00657B37    add         esp,0FFFFFFF8
 00657B3A    push        ebx
 00657B3B    push        esi
 00657B3C    push        edi
 00657B3D    xor         eax,eax
 00657B3F    mov         dword ptr [ebp-8],eax
 00657B42    mov         ebx,dword ptr [ebp+8]
 00657B45    push        ebx
 00657B46    xor         eax,eax
 00657B48    push        ebp
 00657B49    push        657B87
 00657B4E    push        dword ptr fs:[eax]
 00657B51    mov         dword ptr fs:[eax],esp
 00657B54    lea         eax,[ebp-4]
 00657B57    push        eax
 00657B58    lea         edx,[ebp-8]
 00657B5B    mov         eax,ebx
 00657B5D    call        TMSDOMAttr.GetMSAttribute
 00657B62    mov         eax,dword ptr [ebp-8]
 00657B65    push        eax
 00657B66    mov         eax,dword ptr [eax]
 00657B68    call        dword ptr [eax+70]
 00657B6B    call        @CheckAutoResult
 00657B70    movzx       eax,word ptr [ebp-4]
 00657B74    mov         edx,dword ptr [ebp+0C]
 00657B77    mov         word ptr [edx],ax
 00657B7A    xor         eax,eax
 00657B7C    pop         edx
 00657B7D    pop         ecx
 00657B7E    pop         ecx
 00657B7F    mov         dword ptr fs:[eax],edx
 00657B82    pop         eax
 00657B83    xor         ebx,ebx
>00657B85    jmp         00657B8C
>00657B87    jmp         @HandleAutoException
 00657B8C    lea         eax,[ebp-8]
 00657B8F    call        @IntfClear
 00657B94    mov         eax,ebx
 00657B96    pop         edi
 00657B97    pop         esi
 00657B98    pop         ebx
 00657B99    pop         ecx
 00657B9A    pop         ecx
 00657B9B    pop         ebp
 00657B9C    ret         8
*}
end;

//00657BA0
function TMSDOMAttr.get_value:DOMString; safecall;
begin
{*
 00657BA0    push        ebp
 00657BA1    mov         ebp,esp
 00657BA3    xor         ecx,ecx
 00657BA5    push        ecx
 00657BA6    push        ecx
 00657BA7    push        ecx
 00657BA8    push        ecx
 00657BA9    push        ecx
 00657BAA    push        ebx
 00657BAB    push        esi
 00657BAC    push        edi
 00657BAD    mov         ebx,dword ptr [ebp+8]
 00657BB0    mov         eax,dword ptr [ebp+0C]
 00657BB3    test        eax,eax
>00657BB5    je          00657BBB
 00657BB7    xor         edx,edx
 00657BB9    mov         dword ptr [eax],edx
 00657BBB    push        ebx
 00657BBC    xor         eax,eax
 00657BBE    push        ebp
 00657BBF    push        657C06
 00657BC4    push        dword ptr fs:[eax]
 00657BC7    mov         dword ptr fs:[eax],esp
 00657BCA    lea         eax,[ebp-10]
 00657BCD    call        @VarClr
 00657BD2    push        eax
 00657BD3    lea         edx,[ebp-14]
 00657BD6    mov         eax,ebx
 00657BD8    call        TMSDOMAttr.GetMSAttribute
 00657BDD    mov         eax,dword ptr [ebp-14]
 00657BE0    push        eax
 00657BE1    mov         eax,dword ptr [eax]
 00657BE3    call        dword ptr [eax+0B0]
 00657BE9    call        @CheckAutoResult
 00657BEE    lea         edx,[ebp-10]
 00657BF1    mov         eax,dword ptr [ebp+0C]
 00657BF4    call        @VarToUStr
 00657BF9    xor         eax,eax
 00657BFB    pop         edx
 00657BFC    pop         ecx
 00657BFD    pop         ecx
 00657BFE    mov         dword ptr fs:[eax],edx
 00657C01    pop         eax
 00657C02    xor         ebx,ebx
>00657C04    jmp         00657C0B
>00657C06    jmp         @HandleAutoException
 00657C0B    lea         eax,[ebp-14]
 00657C0E    call        @IntfClear
 00657C13    lea         eax,[ebp-10]
 00657C16    call        @VarClr
 00657C1B    mov         eax,ebx
 00657C1D    pop         edi
 00657C1E    pop         esi
 00657C1F    pop         ebx
 00657C20    mov         esp,ebp
 00657C22    pop         ebp
 00657C23    ret         8
*}
end;

//00657C28
procedure TMSDOMAttr.set_value(const attributeValue:Xmldom.DOMString); safecall;
begin
{*
 00657C28    push        ebp
 00657C29    mov         ebp,esp
 00657C2B    xor         ecx,ecx
 00657C2D    push        ecx
 00657C2E    push        ecx
 00657C2F    push        ecx
 00657C30    push        ecx
 00657C31    push        ecx
 00657C32    push        ebx
 00657C33    push        esi
 00657C34    push        edi
 00657C35    mov         ebx,dword ptr [ebp+8]
 00657C38    push        ebx
 00657C39    xor         eax,eax
 00657C3B    push        ebp
 00657C3C    push        657C86
 00657C41    push        dword ptr fs:[eax]
 00657C44    mov         dword ptr fs:[eax],esp
 00657C47    lea         eax,[ebp-10]
 00657C4A    mov         edx,dword ptr [ebp+0C]
 00657C4D    call        @OleVarFromUStr
 00657C52    push        dword ptr [ebp-4]
 00657C55    push        dword ptr [ebp-8]
 00657C58    push        dword ptr [ebp-0C]
 00657C5B    push        dword ptr [ebp-10]
 00657C5E    lea         edx,[ebp-14]
 00657C61    mov         eax,ebx
 00657C63    call        TMSDOMAttr.GetMSAttribute
 00657C68    mov         eax,dword ptr [ebp-14]
 00657C6B    push        eax
 00657C6C    mov         eax,dword ptr [eax]
 00657C6E    call        dword ptr [eax+0B4]
 00657C74    call        @CheckAutoResult
 00657C79    xor         eax,eax
 00657C7B    pop         edx
 00657C7C    pop         ecx
 00657C7D    pop         ecx
 00657C7E    mov         dword ptr fs:[eax],edx
 00657C81    pop         eax
 00657C82    xor         ebx,ebx
>00657C84    jmp         00657C8B
>00657C86    jmp         @HandleAutoException
 00657C8B    lea         eax,[ebp-14]
 00657C8E    call        @IntfClear
 00657C93    lea         eax,[ebp-10]
 00657C96    call        @VarClr
 00657C9B    mov         eax,ebx
 00657C9D    pop         edi
 00657C9E    pop         esi
 00657C9F    pop         ebx
 00657CA0    mov         esp,ebp
 00657CA2    pop         ebp
 00657CA3    ret         8
*}
end;

//00657CA8
function TMSDOMElement.GetMSElement:IXMLDOMElement;
begin
{*
 00657CA8    push        ebx
 00657CA9    push        esi
 00657CAA    mov         esi,edx
 00657CAC    mov         ebx,eax
 00657CAE    mov         eax,esi
 00657CB0    mov         edx,dword ptr [ebx+0C]
 00657CB3    mov         ecx,657CC0
 00657CB8    call        @IntfCast
 00657CBD    pop         esi
 00657CBE    pop         ebx
 00657CBF    ret
*}
end;

//00657CD0
function TMSDOMElement.get_tagName:DOMString; safecall;
begin
{*
 00657CD0    push        ebp
 00657CD1    mov         ebp,esp
 00657CD3    push        0
 00657CD5    push        0
 00657CD7    push        ebx
 00657CD8    push        esi
 00657CD9    push        edi
 00657CDA    mov         ebx,dword ptr [ebp+8]
 00657CDD    mov         eax,dword ptr [ebp+0C]
 00657CE0    test        eax,eax
>00657CE2    je          00657CE8
 00657CE4    xor         edx,edx
 00657CE6    mov         dword ptr [eax],edx
 00657CE8    push        ebx
 00657CE9    xor         eax,eax
 00657CEB    push        ebp
 00657CEC    push        657D33
 00657CF1    push        dword ptr fs:[eax]
 00657CF4    mov         dword ptr fs:[eax],esp
 00657CF7    lea         eax,[ebp-4]
 00657CFA    call        @WStrClr
 00657CFF    push        eax
 00657D00    lea         edx,[ebp-8]
 00657D03    mov         eax,ebx
 00657D05    call        TMSDOMElement.GetMSElement
 00657D0A    mov         eax,dword ptr [ebp-8]
 00657D0D    push        eax
 00657D0E    mov         eax,dword ptr [eax]
 00657D10    call        dword ptr [eax+0AC]
 00657D16    call        @CheckAutoResult
 00657D1B    mov         edx,dword ptr [ebp-4]
 00657D1E    mov         eax,dword ptr [ebp+0C]
 00657D21    call        @UStrFromWStr
 00657D26    xor         eax,eax
 00657D28    pop         edx
 00657D29    pop         ecx
 00657D2A    pop         ecx
 00657D2B    mov         dword ptr fs:[eax],edx
 00657D2E    pop         eax
 00657D2F    xor         ebx,ebx
>00657D31    jmp         00657D38
>00657D33    jmp         @HandleAutoException
 00657D38    lea         eax,[ebp-8]
 00657D3B    call        @IntfClear
 00657D40    lea         eax,[ebp-4]
 00657D43    call        @WStrClr
 00657D48    mov         eax,ebx
 00657D4A    pop         edi
 00657D4B    pop         esi
 00657D4C    pop         ebx
 00657D4D    pop         ecx
 00657D4E    pop         ecx
 00657D4F    pop         ebp
 00657D50    ret         8
*}
end;

//00657D54
function TMSDOMElement.getAttribute(const name:Xmldom.DOMString):DOMString; safecall;
begin
{*
 00657D54    push        ebp
 00657D55    mov         ebp,esp
 00657D57    xor         ecx,ecx
 00657D59    push        ecx
 00657D5A    push        ecx
 00657D5B    push        ecx
 00657D5C    push        ecx
 00657D5D    push        ecx
 00657D5E    push        ecx
 00657D5F    push        ebx
 00657D60    push        esi
 00657D61    push        edi
 00657D62    mov         ebx,dword ptr [ebp+8]
 00657D65    mov         eax,dword ptr [ebp+10]
 00657D68    test        eax,eax
>00657D6A    je          00657D70
 00657D6C    xor         edx,edx
 00657D6E    mov         dword ptr [eax],edx
 00657D70    push        ebx
 00657D71    xor         eax,eax
 00657D73    push        ebp
 00657D74    push        657DCA
 00657D79    push        dword ptr fs:[eax]
 00657D7C    mov         dword ptr fs:[eax],esp
 00657D7F    lea         eax,[ebp-10]
 00657D82    call        @VarClr
 00657D87    push        eax
 00657D88    lea         eax,[ebp-14]
 00657D8B    mov         edx,dword ptr [ebp+0C]
 00657D8E    call        @WStrFromUStr
 00657D93    mov         eax,dword ptr [ebp-14]
 00657D96    push        eax
 00657D97    lea         edx,[ebp-18]
 00657D9A    mov         eax,ebx
 00657D9C    call        TMSDOMElement.GetMSElement
 00657DA1    mov         eax,dword ptr [ebp-18]
 00657DA4    push        eax
 00657DA5    mov         eax,dword ptr [eax]
 00657DA7    call        dword ptr [eax+0B0]
 00657DAD    call        @CheckAutoResult
 00657DB2    lea         eax,[ebp-10]
 00657DB5    mov         edx,dword ptr [ebp+10]
 00657DB8    call        VarToStr
 00657DBD    xor         eax,eax
 00657DBF    pop         edx
 00657DC0    pop         ecx
 00657DC1    pop         ecx
 00657DC2    mov         dword ptr fs:[eax],edx
 00657DC5    pop         eax
 00657DC6    xor         ebx,ebx
>00657DC8    jmp         00657DCF
>00657DCA    jmp         @HandleAutoException
 00657DCF    lea         eax,[ebp-18]
 00657DD2    call        @IntfClear
 00657DD7    lea         eax,[ebp-14]
 00657DDA    call        @WStrClr
 00657DDF    lea         eax,[ebp-10]
 00657DE2    call        @VarClr
 00657DE7    mov         eax,ebx
 00657DE9    pop         edi
 00657DEA    pop         esi
 00657DEB    pop         ebx
 00657DEC    mov         esp,ebp
 00657DEE    pop         ebp
 00657DEF    ret         0C
*}
end;

//00657DF4
function TMSDOMElement.getAttributeNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):DOMString; safecall;
begin
{*
 00657DF4    push        ebp
 00657DF5    mov         ebp,esp
 00657DF7    xor         ecx,ecx
 00657DF9    push        ecx
 00657DFA    push        ecx
 00657DFB    push        ecx
 00657DFC    push        ecx
 00657DFD    push        ecx
 00657DFE    push        ecx
 00657DFF    push        ebx
 00657E00    push        esi
 00657E01    push        edi
 00657E02    mov         ebx,dword ptr [ebp+8]
 00657E05    mov         eax,dword ptr [ebp+14]
 00657E08    test        eax,eax
>00657E0A    je          00657E10
 00657E0C    xor         edx,edx
 00657E0E    mov         dword ptr [eax],edx
 00657E10    push        ebx
 00657E11    xor         eax,eax
 00657E13    push        ebp
 00657E14    push        657E85
 00657E19    push        dword ptr fs:[eax]
 00657E1C    mov         dword ptr fs:[eax],esp
 00657E1F    lea         eax,[ebp-4]
 00657E22    call        @IntfClear
 00657E27    push        eax
 00657E28    mov         eax,dword ptr [ebp+10]
 00657E2B    push        eax
 00657E2C    mov         eax,dword ptr [ebp+0C]
 00657E2F    push        eax
 00657E30    push        ebx
 00657E31    call        TMSDOMElement.getAttributeNodeNS
 00657E36    call        @CheckAutoResult
 00657E3B    cmp         dword ptr [ebp-4],0
>00657E3F    je          00657E70
 00657E41    lea         eax,[ebp-18]
 00657E44    call        @UStrClr
 00657E49    push        eax
 00657E4A    mov         eax,dword ptr [ebp-4]
 00657E4D    push        eax
 00657E4E    mov         eax,dword ptr [eax]
 00657E50    call        dword ptr [eax+10]
 00657E53    call        @CheckAutoResult
 00657E58    mov         edx,dword ptr [ebp-18]
 00657E5B    lea         eax,[ebp-14]
 00657E5E    call        @VarFromUStr
 00657E63    lea         eax,[ebp-14]
 00657E66    mov         edx,dword ptr [ebp+14]
 00657E69    call        VarToStr
>00657E6E    jmp         00657E78
 00657E70    mov         eax,dword ptr [ebp+14]
 00657E73    call        @UStrClr
 00657E78    xor         eax,eax
 00657E7A    pop         edx
 00657E7B    pop         ecx
 00657E7C    pop         ecx
 00657E7D    mov         dword ptr fs:[eax],edx
 00657E80    pop         eax
 00657E81    xor         ebx,ebx
>00657E83    jmp         00657E8A
>00657E85    jmp         @HandleAutoException
 00657E8A    lea         eax,[ebp-18]
 00657E8D    call        @UStrClr
 00657E92    lea         eax,[ebp-14]
 00657E95    call        @VarClr
 00657E9A    lea         eax,[ebp-4]
 00657E9D    call        @IntfClear
 00657EA2    mov         eax,ebx
 00657EA4    pop         edi
 00657EA5    pop         esi
 00657EA6    pop         ebx
 00657EA7    mov         esp,ebp
 00657EA9    pop         ebp
 00657EAA    ret         10
*}
end;

//00657EB0
function TMSDOMElement.getAttributeNode(const name:Xmldom.DOMString):IDOMAttr; safecall;
begin
{*
 00657EB0    push        ebp
 00657EB1    mov         ebp,esp
 00657EB3    xor         ecx,ecx
 00657EB5    push        ecx
 00657EB6    push        ecx
 00657EB7    push        ecx
 00657EB8    push        ecx
 00657EB9    push        ebx
 00657EBA    push        esi
 00657EBB    push        edi
 00657EBC    mov         ebx,dword ptr [ebp+8]
 00657EBF    mov         eax,dword ptr [ebp+10]
 00657EC2    test        eax,eax
>00657EC4    je          00657ECA
 00657EC6    xor         edx,edx
 00657EC8    mov         dword ptr [eax],edx
 00657ECA    push        ebx
 00657ECB    xor         eax,eax
 00657ECD    push        ebp
 00657ECE    push        657F34
 00657ED3    push        dword ptr fs:[eax]
 00657ED6    mov         dword ptr fs:[eax],esp
 00657ED9    lea         eax,[ebp-8]
 00657EDC    call        @IntfClear
 00657EE1    push        eax
 00657EE2    lea         eax,[ebp-0C]
 00657EE5    mov         edx,dword ptr [ebp+0C]
 00657EE8    call        @WStrFromUStr
 00657EED    mov         eax,dword ptr [ebp-0C]
 00657EF0    push        eax
 00657EF1    lea         edx,[ebp-10]
 00657EF4    mov         eax,ebx
 00657EF6    call        TMSDOMElement.GetMSElement
 00657EFB    mov         eax,dword ptr [ebp-10]
 00657EFE    push        eax
 00657EFF    mov         eax,dword ptr [eax]
 00657F01    call        dword ptr [eax+0BC]
 00657F07    call        @CheckAutoResult
 00657F0C    mov         eax,dword ptr [ebp-8]
 00657F0F    lea         edx,[ebp-4]
 00657F12    call        MakeNode
 00657F17    mov         edx,dword ptr [ebp-4]
 00657F1A    mov         eax,dword ptr [ebp+10]
 00657F1D    mov         ecx,657F64
 00657F22    call        @IntfCast
 00657F27    xor         eax,eax
 00657F29    pop         edx
 00657F2A    pop         ecx
 00657F2B    pop         ecx
 00657F2C    mov         dword ptr fs:[eax],edx
 00657F2F    pop         eax
 00657F30    xor         ebx,ebx
>00657F32    jmp         00657F39
>00657F34    jmp         @HandleAutoException
 00657F39    lea         eax,[ebp-10]
 00657F3C    call        @IntfClear
 00657F41    lea         eax,[ebp-0C]
 00657F44    call        @WStrClr
 00657F49    lea         eax,[ebp-8]
 00657F4C    call        @IntfClear
 00657F51    lea         eax,[ebp-4]
 00657F54    call        @IntfClear
 00657F59    mov         eax,ebx
 00657F5B    pop         edi
 00657F5C    pop         esi
 00657F5D    pop         ebx
 00657F5E    mov         esp,ebp
 00657F60    pop         ebp
 00657F61    ret         0C
*}
end;

//00657F74
function TMSDOMElement.getAttributeNodeNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):IDOMAttr; safecall;
begin
{*
 00657F74    push        ebp
 00657F75    mov         ebp,esp
 00657F77    xor         ecx,ecx
 00657F79    push        ecx
 00657F7A    push        ecx
 00657F7B    push        ecx
 00657F7C    push        ecx
 00657F7D    push        ecx
 00657F7E    push        ecx
 00657F7F    push        ebx
 00657F80    push        esi
 00657F81    push        edi
 00657F82    mov         ebx,dword ptr [ebp+8]
 00657F85    mov         eax,dword ptr [ebp+14]
 00657F88    test        eax,eax
>00657F8A    je          00657F90
 00657F8C    xor         edx,edx
 00657F8E    mov         dword ptr [eax],edx
 00657F90    push        ebx
 00657F91    xor         eax,eax
 00657F93    push        ebp
 00657F94    push        65801D
 00657F99    push        dword ptr fs:[eax]
 00657F9C    mov         dword ptr fs:[eax],esp
 00657F9F    lea         eax,[ebp-8]
 00657FA2    call        @IntfClear
 00657FA7    push        eax
 00657FA8    lea         eax,[ebp-0C]
 00657FAB    mov         edx,dword ptr [ebp+0C]
 00657FAE    call        @WStrFromUStr
 00657FB3    mov         eax,dword ptr [ebp-0C]
 00657FB6    push        eax
 00657FB7    lea         eax,[ebp-10]
 00657FBA    mov         edx,dword ptr [ebp+10]
 00657FBD    call        @WStrFromUStr
 00657FC2    mov         eax,dword ptr [ebp-10]
 00657FC5    push        eax
 00657FC6    lea         eax,[ebp-14]
 00657FC9    call        @IntfClear
 00657FCE    push        eax
 00657FCF    lea         edx,[ebp-18]
 00657FD2    mov         eax,ebx
 00657FD4    call        TMSDOMElement.GetMSElement
 00657FD9    mov         eax,dword ptr [ebp-18]
 00657FDC    push        eax
 00657FDD    mov         eax,dword ptr [eax]
 00657FDF    call        dword ptr [eax+44]
 00657FE2    call        @CheckAutoResult
 00657FE7    mov         eax,dword ptr [ebp-14]
 00657FEA    push        eax
 00657FEB    mov         eax,dword ptr [eax]
 00657FED    call        dword ptr [eax+30]
 00657FF0    call        @CheckAutoResult
 00657FF5    mov         eax,dword ptr [ebp-8]
 00657FF8    lea         edx,[ebp-4]
 00657FFB    call        MakeNode
 00658000    mov         edx,dword ptr [ebp-4]
 00658003    mov         eax,dword ptr [ebp+14]
 00658006    mov         ecx,65805C
 0065800B    call        @IntfCast
 00658010    xor         eax,eax
 00658012    pop         edx
 00658013    pop         ecx
 00658014    pop         ecx
 00658015    mov         dword ptr fs:[eax],edx
 00658018    pop         eax
 00658019    xor         ebx,ebx
>0065801B    jmp         00658022
>0065801D    jmp         @HandleAutoException
 00658022    lea         eax,[ebp-18]
 00658025    call        @IntfClear
 0065802A    lea         eax,[ebp-14]
 0065802D    call        @IntfClear
 00658032    lea         eax,[ebp-10]
 00658035    mov         edx,2
 0065803A    call        @WStrArrayClr
 0065803F    lea         eax,[ebp-8]
 00658042    call        @IntfClear
 00658047    lea         eax,[ebp-4]
 0065804A    call        @IntfClear
 0065804F    mov         eax,ebx
 00658051    pop         edi
 00658052    pop         esi
 00658053    pop         ebx
 00658054    mov         esp,ebp
 00658056    pop         ebp
 00658057    ret         10
*}
end;

//0065806C
{*function sub_0065806C(?:?; ?:?; ?:?):?;
begin
 0065806C    push        ebp
 0065806D    mov         ebp,esp
 0065806F    push        0
 00658071    push        0
 00658073    push        0
 00658075    push        ebx
 00658076    push        esi
 00658077    push        edi
 00658078    mov         ebx,dword ptr [ebp+8]
 0065807B    mov         eax,dword ptr [ebp+10]
 0065807E    test        eax,eax
>00658080    je          00658086
 00658082    xor         edx,edx
 00658084    mov         dword ptr [eax],edx
 00658086    push        ebx
 00658087    xor         eax,eax
 00658089    push        ebp
 0065808A    push        6580E0
 0065808F    push        dword ptr fs:[eax]
 00658092    mov         dword ptr fs:[eax],esp
 00658095    lea         eax,[ebp-4]
 00658098    call        @IntfClear
 0065809D    push        eax
 0065809E    lea         eax,[ebp-8]
 006580A1    mov         edx,dword ptr [ebp+0C]
 006580A4    call        @WStrFromUStr
 006580A9    mov         eax,dword ptr [ebp-8]
 006580AC    push        eax
 006580AD    lea         edx,[ebp-0C]
 006580B0    mov         eax,ebx
 006580B2    call        TMSDOMElement.GetMSElement
 006580B7    mov         eax,dword ptr [ebp-0C]
 006580BA    push        eax
 006580BB    mov         eax,dword ptr [eax]
 006580BD    call        dword ptr [eax+0C8]
 006580C3    call        @CheckAutoResult
 006580C8    mov         eax,dword ptr [ebp-4]
 006580CB    mov         edx,dword ptr [ebp+10]
 006580CE    call        MakeNamedNodeMap
 006580D3    xor         eax,eax
 006580D5    pop         edx
 006580D6    pop         ecx
 006580D7    pop         ecx
 006580D8    mov         dword ptr fs:[eax],edx
 006580DB    pop         eax
 006580DC    xor         ebx,ebx
>006580DE    jmp         006580E5
>006580E0    jmp         @HandleAutoException
 006580E5    lea         eax,[ebp-0C]
 006580E8    call        @IntfClear
 006580ED    lea         eax,[ebp-8]
 006580F0    call        @WStrClr
 006580F5    lea         eax,[ebp-4]
 006580F8    call        @IntfClear
 006580FD    mov         eax,ebx
 006580FF    pop         edi
 00658100    pop         esi
 00658101    pop         ebx
 00658102    mov         esp,ebp
 00658104    pop         ebp
 00658105    ret         0C
end;*}

//00658108
function TMSDOMDocument.getElementsByTagNameNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):IDOMNodeList; safecall;
begin
{*
 00658108    push        ebp
 00658109    mov         ebp,esp
 0065810B    push        ebx
 0065810C    push        esi
 0065810D    push        edi
 0065810E    mov         eax,dword ptr [ebp+14]
 00658111    test        eax,eax
>00658113    je          00658119
 00658115    xor         edx,edx
 00658117    mov         dword ptr [eax],edx
 00658119    push        dword ptr [ebp+8]
 0065811C    xor         eax,eax
 0065811E    push        ebp
 0065811F    push        658146
 00658124    push        dword ptr fs:[eax]
 00658127    mov         dword ptr fs:[eax],esp
 0065812A    mov         edx,658160;'MSXML'
 0065812F    mov         eax,658178;'getElementsByTagNameNS'
 00658134    call        DOMVendorNotSupported
 00658139    xor         eax,eax
 0065813B    pop         edx
 0065813C    pop         ecx
 0065813D    pop         ecx
 0065813E    mov         dword ptr fs:[eax],edx
 00658141    pop         eax
 00658142    xor         ebx,ebx
>00658144    jmp         0065814B
>00658146    jmp         @HandleAutoException
 0065814B    mov         eax,ebx
 0065814D    pop         edi
 0065814E    pop         esi
 0065814F    pop         ebx
 00658150    pop         ebp
 00658151    ret         10
*}
end;

//006581A8
function TMSDOMElement.hasAttribute(const name:Xmldom.DOMString):WordBool; safecall;
begin
{*
 006581A8    push        ebp
 006581A9    mov         ebp,esp
 006581AB    push        0
 006581AD    push        0
 006581AF    push        0
 006581B1    push        ebx
 006581B2    push        esi
 006581B3    push        edi
 006581B4    mov         ebx,dword ptr [ebp+8]
 006581B7    push        ebx
 006581B8    xor         eax,eax
 006581BA    push        ebp
 006581BB    push        658241
 006581C0    push        dword ptr fs:[eax]
 006581C3    mov         dword ptr fs:[eax],esp
 006581C6    xor         eax,eax
 006581C8    push        ebp
 006581C9    push        658222
 006581CE    push        dword ptr fs:[eax]
 006581D1    mov         dword ptr fs:[eax],esp
 006581D4    lea         eax,[ebp-4]
 006581D7    call        @IntfClear
 006581DC    push        eax
 006581DD    lea         eax,[ebp-8]
 006581E0    mov         edx,dword ptr [ebp+0C]
 006581E3    call        @WStrFromUStr
 006581E8    mov         eax,dword ptr [ebp-8]
 006581EB    push        eax
 006581EC    lea         edx,[ebp-0C]
 006581EF    mov         eax,ebx
 006581F1    call        TMSDOMElement.GetMSElement
 006581F6    mov         eax,dword ptr [ebp-0C]
 006581F9    push        eax
 006581FA    mov         eax,dword ptr [eax]
 006581FC    call        dword ptr [eax+0BC]
 00658202    call        @CheckAutoResult
 00658207    cmp         dword ptr [ebp-4],0
 0065820B    setne       al
 0065820E    neg         al
 00658210    sbb         eax,eax
 00658212    mov         edx,dword ptr [ebp+10]
 00658215    mov         word ptr [edx],ax
 00658218    xor         eax,eax
 0065821A    pop         edx
 0065821B    pop         ecx
 0065821C    pop         ecx
 0065821D    mov         dword ptr fs:[eax],edx
>00658220    jmp         00658234
>00658222    jmp         @HandleAnyException
 00658227    mov         eax,dword ptr [ebp+10]
 0065822A    mov         word ptr [eax],0
 0065822F    call        @DoneExcept
 00658234    xor         eax,eax
 00658236    pop         edx
 00658237    pop         ecx
 00658238    pop         ecx
 00658239    mov         dword ptr fs:[eax],edx
 0065823C    pop         eax
 0065823D    xor         ebx,ebx
>0065823F    jmp         00658246
>00658241    jmp         @HandleAutoException
 00658246    lea         eax,[ebp-0C]
 00658249    call        @IntfClear
 0065824E    lea         eax,[ebp-8]
 00658251    call        @WStrClr
 00658256    lea         eax,[ebp-4]
 00658259    call        @IntfClear
 0065825E    mov         eax,ebx
 00658260    pop         edi
 00658261    pop         esi
 00658262    pop         ebx
 00658263    mov         esp,ebp
 00658265    pop         ebp
 00658266    ret         0C
*}
end;

//0065826C
function TMSDOMElement.hasAttributeNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):WordBool; safecall;
begin
{*
 0065826C    push        ebp
 0065826D    mov         ebp,esp
 0065826F    push        0
 00658271    push        ebx
 00658272    push        esi
 00658273    push        edi
 00658274    mov         ebx,dword ptr [ebp+8]
 00658277    push        ebx
 00658278    xor         eax,eax
 0065827A    push        ebp
 0065827B    push        6582EA
 00658280    push        dword ptr fs:[eax]
 00658283    mov         dword ptr fs:[eax],esp
 00658286    xor         eax,eax
 00658288    push        ebp
 00658289    push        6582CB
 0065828E    push        dword ptr fs:[eax]
 00658291    mov         dword ptr fs:[eax],esp
 00658294    lea         eax,[ebp-4]
 00658297    call        @IntfClear
 0065829C    push        eax
 0065829D    mov         eax,dword ptr [ebp+10]
 006582A0    push        eax
 006582A1    mov         eax,dword ptr [ebp+0C]
 006582A4    push        eax
 006582A5    push        ebx
 006582A6    call        TMSDOMElement.getAttributeNodeNS
 006582AB    call        @CheckAutoResult
 006582B0    cmp         dword ptr [ebp-4],0
 006582B4    setne       al
 006582B7    neg         al
 006582B9    sbb         eax,eax
 006582BB    mov         edx,dword ptr [ebp+14]
 006582BE    mov         word ptr [edx],ax
 006582C1    xor         eax,eax
 006582C3    pop         edx
 006582C4    pop         ecx
 006582C5    pop         ecx
 006582C6    mov         dword ptr fs:[eax],edx
>006582C9    jmp         006582DD
>006582CB    jmp         @HandleAnyException
 006582D0    mov         eax,dword ptr [ebp+14]
 006582D3    mov         word ptr [eax],0
 006582D8    call        @DoneExcept
 006582DD    xor         eax,eax
 006582DF    pop         edx
 006582E0    pop         ecx
 006582E1    pop         ecx
 006582E2    mov         dword ptr fs:[eax],edx
 006582E5    pop         eax
 006582E6    xor         ebx,ebx
>006582E8    jmp         006582EF
>006582EA    jmp         @HandleAutoException
 006582EF    lea         eax,[ebp-4]
 006582F2    call        @IntfClear
 006582F7    mov         eax,ebx
 006582F9    pop         edi
 006582FA    pop         esi
 006582FB    pop         ebx
 006582FC    pop         ecx
 006582FD    pop         ebp
 006582FE    ret         10
*}
end;

//00658304
procedure TMSDOMElement.removeAttribute(const name:Xmldom.DOMString); safecall;
begin
{*
 00658304    push        ebp
 00658305    mov         ebp,esp
 00658307    push        0
 00658309    push        0
 0065830B    push        ebx
 0065830C    push        esi
 0065830D    push        edi
 0065830E    mov         ebx,dword ptr [ebp+8]
 00658311    push        ebx
 00658312    xor         eax,eax
 00658314    push        ebp
 00658315    push        658357
 0065831A    push        dword ptr fs:[eax]
 0065831D    mov         dword ptr fs:[eax],esp
 00658320    lea         eax,[ebp-4]
 00658323    mov         edx,dword ptr [ebp+0C]
 00658326    call        @WStrFromUStr
 0065832B    mov         eax,dword ptr [ebp-4]
 0065832E    push        eax
 0065832F    lea         edx,[ebp-8]
 00658332    mov         eax,ebx
 00658334    call        TMSDOMElement.GetMSElement
 00658339    mov         eax,dword ptr [ebp-8]
 0065833C    push        eax
 0065833D    mov         eax,dword ptr [eax]
 0065833F    call        dword ptr [eax+0B8]
 00658345    call        @CheckAutoResult
 0065834A    xor         eax,eax
 0065834C    pop         edx
 0065834D    pop         ecx
 0065834E    pop         ecx
 0065834F    mov         dword ptr fs:[eax],edx
 00658352    pop         eax
 00658353    xor         ebx,ebx
>00658355    jmp         0065835C
>00658357    jmp         @HandleAutoException
 0065835C    lea         eax,[ebp-8]
 0065835F    call        @IntfClear
 00658364    lea         eax,[ebp-4]
 00658367    call        @WStrClr
 0065836C    mov         eax,ebx
 0065836E    pop         edi
 0065836F    pop         esi
 00658370    pop         ebx
 00658371    pop         ecx
 00658372    pop         ecx
 00658373    pop         ebp
 00658374    ret         8
*}
end;

//00658378
function TMSDOMElement.removeAttributeNode(const oldAttr:Xmldom.IDOMAttr):IDOMAttr; safecall;
begin
{*
 00658378    push        ebp
 00658379    mov         ebp,esp
 0065837B    xor         ecx,ecx
 0065837D    push        ecx
 0065837E    push        ecx
 0065837F    push        ecx
 00658380    push        ecx
 00658381    push        ecx
 00658382    push        ebx
 00658383    push        esi
 00658384    push        edi
 00658385    mov         ebx,dword ptr [ebp+8]
 00658388    mov         eax,dword ptr [ebp+10]
 0065838B    test        eax,eax
>0065838D    je          00658393
 0065838F    xor         edx,edx
 00658391    mov         dword ptr [eax],edx
 00658393    push        ebx
 00658394    xor         eax,eax
 00658396    push        ebp
 00658397    push        65840D
 0065839C    push        dword ptr fs:[eax]
 0065839F    mov         dword ptr fs:[eax],esp
 006583A2    lea         eax,[ebp-8]
 006583A5    call        @IntfClear
 006583AA    push        eax
 006583AB    lea         edx,[ebp-10]
 006583AE    mov         eax,dword ptr [ebp+0C]
 006583B1    call        GetMSNode
 006583B6    mov         edx,dword ptr [ebp-10]
 006583B9    lea         eax,[ebp-0C]
 006583BC    mov         ecx,658448
 006583C1    call        @IntfCast
 006583C6    mov         eax,dword ptr [ebp-0C]
 006583C9    push        eax
 006583CA    lea         edx,[ebp-14]
 006583CD    mov         eax,ebx
 006583CF    call        TMSDOMElement.GetMSElement
 006583D4    mov         eax,dword ptr [ebp-14]
 006583D7    push        eax
 006583D8    mov         eax,dword ptr [eax]
 006583DA    call        dword ptr [eax+0C4]
 006583E0    call        @CheckAutoResult
 006583E5    mov         eax,dword ptr [ebp-8]
 006583E8    lea         edx,[ebp-4]
 006583EB    call        MakeNode
 006583F0    mov         edx,dword ptr [ebp-4]
 006583F3    mov         eax,dword ptr [ebp+10]
 006583F6    mov         ecx,658458
 006583FB    call        @IntfCast
 00658400    xor         eax,eax
 00658402    pop         edx
 00658403    pop         ecx
 00658404    pop         ecx
 00658405    mov         dword ptr fs:[eax],edx
 00658408    pop         eax
 00658409    xor         ebx,ebx
>0065840B    jmp         00658412
>0065840D    jmp         @HandleAutoException
 00658412    lea         eax,[ebp-14]
 00658415    call        @IntfClear
 0065841A    lea         eax,[ebp-10]
 0065841D    call        @IntfClear
 00658422    lea         eax,[ebp-0C]
 00658425    mov         edx,dword ptr ds:[5183D0];IXMLDOMAttribute
 0065842B    mov         ecx,2
 00658430    call        @FinalizeArray
 00658435    lea         eax,[ebp-4]
 00658438    call        @IntfClear
 0065843D    mov         eax,ebx
 0065843F    pop         edi
 00658440    pop         esi
 00658441    pop         ebx
 00658442    mov         esp,ebp
 00658444    pop         ebp
 00658445    ret         0C
*}
end;

//00658468
procedure TMSDOMElement.removeAttributeNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString); safecall;
begin
{*
 00658468    push        ebp
 00658469    mov         ebp,esp
 0065846B    xor         ecx,ecx
 0065846D    push        ecx
 0065846E    push        ecx
 0065846F    push        ecx
 00658470    push        ecx
 00658471    push        ecx
 00658472    push        ebx
 00658473    push        esi
 00658474    push        edi
 00658475    mov         ebx,dword ptr [ebp+8]
 00658478    push        ebx
 00658479    xor         eax,eax
 0065847B    push        ebp
 0065847C    push        6584EA
 00658481    push        dword ptr fs:[eax]
 00658484    mov         dword ptr fs:[eax],esp
 00658487    lea         eax,[ebp-4]
 0065848A    call        @IntfClear
 0065848F    push        eax
 00658490    lea         eax,[ebp-8]
 00658493    mov         edx,dword ptr [ebp+0C]
 00658496    call        @WStrFromUStr
 0065849B    mov         eax,dword ptr [ebp-8]
 0065849E    push        eax
 0065849F    lea         eax,[ebp-0C]
 006584A2    mov         edx,dword ptr [ebp+10]
 006584A5    call        @WStrFromUStr
 006584AA    mov         eax,dword ptr [ebp-0C]
 006584AD    push        eax
 006584AE    lea         eax,[ebp-10]
 006584B1    call        @IntfClear
 006584B6    push        eax
 006584B7    lea         edx,[ebp-14]
 006584BA    mov         eax,ebx
 006584BC    call        TMSDOMElement.GetMSElement
 006584C1    mov         eax,dword ptr [ebp-14]
 006584C4    push        eax
 006584C5    mov         eax,dword ptr [eax]
 006584C7    call        dword ptr [eax+44]
 006584CA    call        @CheckAutoResult
 006584CF    mov         eax,dword ptr [ebp-10]
 006584D2    push        eax
 006584D3    mov         eax,dword ptr [eax]
 006584D5    call        dword ptr [eax+34]
 006584D8    call        @CheckAutoResult
 006584DD    xor         eax,eax
 006584DF    pop         edx
 006584E0    pop         ecx
 006584E1    pop         ecx
 006584E2    mov         dword ptr fs:[eax],edx
 006584E5    pop         eax
 006584E6    xor         ebx,ebx
>006584E8    jmp         006584EF
>006584EA    jmp         @HandleAutoException
 006584EF    lea         eax,[ebp-14]
 006584F2    call        @IntfClear
 006584F7    lea         eax,[ebp-10]
 006584FA    call        @IntfClear
 006584FF    lea         eax,[ebp-0C]
 00658502    mov         edx,2
 00658507    call        @WStrArrayClr
 0065850C    lea         eax,[ebp-4]
 0065850F    call        @IntfClear
 00658514    mov         eax,ebx
 00658516    pop         edi
 00658517    pop         esi
 00658518    pop         ebx
 00658519    mov         esp,ebp
 0065851B    pop         ebp
 0065851C    ret         0C
*}
end;

//00658520
procedure TMSDOMElement.setAttribute(const name:Xmldom.DOMString; const value:Xmldom.DOMString); safecall;
begin
{*
 00658520    push        ebp
 00658521    mov         ebp,esp
 00658523    xor         ecx,ecx
 00658525    push        ecx
 00658526    push        ecx
 00658527    push        ecx
 00658528    push        ecx
 00658529    push        ecx
 0065852A    push        ecx
 0065852B    push        ebx
 0065852C    push        esi
 0065852D    push        edi
 0065852E    mov         ebx,dword ptr [ebp+8]
 00658531    push        ebx
 00658532    xor         eax,eax
 00658534    push        ebp
 00658535    push        65858E
 0065853A    push        dword ptr fs:[eax]
 0065853D    mov         dword ptr fs:[eax],esp
 00658540    lea         eax,[ebp-10]
 00658543    mov         edx,dword ptr [ebp+10]
 00658546    call        @OleVarFromUStr
 0065854B    push        dword ptr [ebp-4]
 0065854E    push        dword ptr [ebp-8]
 00658551    push        dword ptr [ebp-0C]
 00658554    push        dword ptr [ebp-10]
 00658557    lea         eax,[ebp-14]
 0065855A    mov         edx,dword ptr [ebp+0C]
 0065855D    call        @WStrFromUStr
 00658562    mov         eax,dword ptr [ebp-14]
 00658565    push        eax
 00658566    lea         edx,[ebp-18]
 00658569    mov         eax,ebx
 0065856B    call        TMSDOMElement.GetMSElement
 00658570    mov         eax,dword ptr [ebp-18]
 00658573    push        eax
 00658574    mov         eax,dword ptr [eax]
 00658576    call        dword ptr [eax+0B4]
 0065857C    call        @CheckAutoResult
 00658581    xor         eax,eax
 00658583    pop         edx
 00658584    pop         ecx
 00658585    pop         ecx
 00658586    mov         dword ptr fs:[eax],edx
 00658589    pop         eax
 0065858A    xor         ebx,ebx
>0065858C    jmp         00658593
>0065858E    jmp         @HandleAutoException
 00658593    lea         eax,[ebp-18]
 00658596    call        @IntfClear
 0065859B    lea         eax,[ebp-14]
 0065859E    call        @WStrClr
 006585A3    lea         eax,[ebp-10]
 006585A6    call        @VarClr
 006585AB    mov         eax,ebx
 006585AD    pop         edi
 006585AE    pop         esi
 006585AF    pop         ebx
 006585B0    mov         esp,ebp
 006585B2    pop         ebp
 006585B3    ret         0C
*}
end;

//006585B8
function TMSDOMElement.setAttributeNode(const newAttr:Xmldom.IDOMAttr):IDOMAttr; safecall;
begin
{*
 006585B8    push        ebp
 006585B9    mov         ebp,esp
 006585BB    xor         ecx,ecx
 006585BD    push        ecx
 006585BE    push        ecx
 006585BF    push        ecx
 006585C0    push        ecx
 006585C1    push        ecx
 006585C2    push        ebx
 006585C3    push        esi
 006585C4    push        edi
 006585C5    mov         ebx,dword ptr [ebp+8]
 006585C8    mov         eax,dword ptr [ebp+10]
 006585CB    test        eax,eax
>006585CD    je          006585D3
 006585CF    xor         edx,edx
 006585D1    mov         dword ptr [eax],edx
 006585D3    push        ebx
 006585D4    xor         eax,eax
 006585D6    push        ebp
 006585D7    push        65864D
 006585DC    push        dword ptr fs:[eax]
 006585DF    mov         dword ptr fs:[eax],esp
 006585E2    lea         eax,[ebp-8]
 006585E5    call        @IntfClear
 006585EA    push        eax
 006585EB    lea         edx,[ebp-10]
 006585EE    mov         eax,dword ptr [ebp+0C]
 006585F1    call        GetMSNode
 006585F6    mov         edx,dword ptr [ebp-10]
 006585F9    lea         eax,[ebp-0C]
 006585FC    mov         ecx,658688
 00658601    call        @IntfCast
 00658606    mov         eax,dword ptr [ebp-0C]
 00658609    push        eax
 0065860A    lea         edx,[ebp-14]
 0065860D    mov         eax,ebx
 0065860F    call        TMSDOMElement.GetMSElement
 00658614    mov         eax,dword ptr [ebp-14]
 00658617    push        eax
 00658618    mov         eax,dword ptr [eax]
 0065861A    call        dword ptr [eax+0C0]
 00658620    call        @CheckAutoResult
 00658625    mov         eax,dword ptr [ebp-8]
 00658628    lea         edx,[ebp-4]
 0065862B    call        MakeNode
 00658630    mov         edx,dword ptr [ebp-4]
 00658633    mov         eax,dword ptr [ebp+10]
 00658636    mov         ecx,658698
 0065863B    call        @IntfCast
 00658640    xor         eax,eax
 00658642    pop         edx
 00658643    pop         ecx
 00658644    pop         ecx
 00658645    mov         dword ptr fs:[eax],edx
 00658648    pop         eax
 00658649    xor         ebx,ebx
>0065864B    jmp         00658652
>0065864D    jmp         @HandleAutoException
 00658652    lea         eax,[ebp-14]
 00658655    call        @IntfClear
 0065865A    lea         eax,[ebp-10]
 0065865D    call        @IntfClear
 00658662    lea         eax,[ebp-0C]
 00658665    mov         edx,dword ptr ds:[5183D0];IXMLDOMAttribute
 0065866B    mov         ecx,2
 00658670    call        @FinalizeArray
 00658675    lea         eax,[ebp-4]
 00658678    call        @IntfClear
 0065867D    mov         eax,ebx
 0065867F    pop         edi
 00658680    pop         esi
 00658681    pop         ebx
 00658682    mov         esp,ebp
 00658684    pop         ebp
 00658685    ret         0C
*}
end;

//006586A8
function TMSDOMElement.setAttributeNodeNS(const newAttr:Xmldom.IDOMAttr):IDOMAttr; safecall;
begin
{*
 006586A8    push        ebp
 006586A9    mov         ebp,esp
 006586AB    push        ebx
 006586AC    push        esi
 006586AD    push        edi
 006586AE    mov         ebx,dword ptr [ebp+8]
 006586B1    mov         eax,dword ptr [ebp+10]
 006586B4    test        eax,eax
>006586B6    je          006586BC
 006586B8    xor         edx,edx
 006586BA    mov         dword ptr [eax],edx
 006586BC    push        ebx
 006586BD    xor         eax,eax
 006586BF    push        ebp
 006586C0    push        6586F0
 006586C5    push        dword ptr fs:[eax]
 006586C8    mov         dword ptr fs:[eax],esp
 006586CB    mov         eax,dword ptr [ebp+10]
 006586CE    call        @IntfClear
 006586D3    push        eax
 006586D4    mov         eax,dword ptr [ebp+0C]
 006586D7    push        eax
 006586D8    push        ebx
 006586D9    call        TMSDOMElement.setAttributeNode
 006586DE    call        @CheckAutoResult
 006586E3    xor         eax,eax
 006586E5    pop         edx
 006586E6    pop         ecx
 006586E7    pop         ecx
 006586E8    mov         dword ptr fs:[eax],edx
 006586EB    pop         eax
 006586EC    xor         ebx,ebx
>006586EE    jmp         006586F5
>006586F0    jmp         @HandleAutoException
 006586F5    mov         eax,ebx
 006586F7    pop         edi
 006586F8    pop         esi
 006586F9    pop         ebx
 006586FA    pop         ebp
 006586FB    ret         0C
*}
end;

//00658700
procedure TMSDOMElement.setAttributeNS(const namespaceURI:Xmldom.DOMString; const qualifiedName:Xmldom.DOMString; const value:Xmldom.DOMString); safecall;
begin
{*
 00658700    push        ebp
 00658701    mov         ebp,esp
 00658703    mov         ecx,7
 00658708    push        0
 0065870A    push        0
 0065870C    dec         ecx
>0065870D    jne         00658708
 0065870F    push        ecx
 00658710    push        ebx
 00658711    push        esi
 00658712    push        edi
 00658713    mov         ebx,dword ptr [ebp+8]
 00658716    push        ebx
 00658717    xor         eax,eax
 00658719    push        ebp
 0065871A    push        6587F9
 0065871F    push        dword ptr fs:[eax]
 00658722    mov         dword ptr fs:[eax],esp
 00658725    lea         eax,[ebp-8]
 00658728    call        @IntfClear
 0065872D    push        eax
 0065872E    lea         eax,[ebp-0C]
 00658731    mov         edx,dword ptr [ebp+0C]
 00658734    call        @WStrFromUStr
 00658739    mov         eax,dword ptr [ebp-0C]
 0065873C    push        eax
 0065873D    lea         eax,[ebp-10]
 00658740    mov         edx,dword ptr [ebp+10]
 00658743    call        @WStrFromUStr
 00658748    mov         eax,dword ptr [ebp-10]
 0065874B    push        eax
 0065874C    lea         eax,[ebp-20]
 0065874F    mov         edx,2
 00658754    mov         cl,1
 00658756    call        @OleVarFromInt
 0065875B    push        dword ptr [ebp-14]
 0065875E    push        dword ptr [ebp-18]
 00658761    push        dword ptr [ebp-1C]
 00658764    push        dword ptr [ebp-20]
 00658767    lea         eax,[ebp-24]
 0065876A    call        @IntfClear
 0065876F    push        eax
 00658770    mov         eax,dword ptr [ebx+0C]
 00658773    push        eax
 00658774    mov         eax,dword ptr [eax]
 00658776    call        dword ptr [eax+5C]
 00658779    call        @CheckAutoResult
 0065877E    mov         eax,dword ptr [ebp-24]
 00658781    push        eax
 00658782    mov         eax,dword ptr [eax]
 00658784    call        dword ptr [eax+0E0]
 0065878A    call        @CheckAutoResult
 0065878F    mov         edx,dword ptr [ebp-8]
 00658792    lea         eax,[ebp-4]
 00658795    mov         ecx,658850
 0065879A    call        @IntfCast
 0065879F    lea         eax,[ebp-34]
 006587A2    mov         edx,dword ptr [ebp+14]
 006587A5    call        @OleVarFromUStr
 006587AA    push        dword ptr [ebp-28]
 006587AD    push        dword ptr [ebp-2C]
 006587B0    push        dword ptr [ebp-30]
 006587B3    push        dword ptr [ebp-34]
 006587B6    mov         eax,dword ptr [ebp-4]
 006587B9    push        eax
 006587BA    mov         eax,dword ptr [eax]
 006587BC    call        dword ptr [eax+24]
 006587BF    call        @CheckAutoResult
 006587C4    lea         eax,[ebp-38]
 006587C7    call        @IntfClear
 006587CC    push        eax
 006587CD    mov         eax,dword ptr [ebp-4]
 006587D0    push        eax
 006587D1    lea         edx,[ebp-3C]
 006587D4    mov         eax,ebx
 006587D6    call        TMSDOMElement.GetMSElement
 006587DB    mov         eax,dword ptr [ebp-3C]
 006587DE    push        eax
 006587DF    mov         eax,dword ptr [eax]
 006587E1    call        dword ptr [eax+0C0]
 006587E7    call        @CheckAutoResult
 006587EC    xor         eax,eax
 006587EE    pop         edx
 006587EF    pop         ecx
 006587F0    pop         ecx
 006587F1    mov         dword ptr fs:[eax],edx
 006587F4    pop         eax
 006587F5    xor         ebx,ebx
>006587F7    jmp         006587FE
>006587F9    jmp         @HandleAutoException
 006587FE    lea         eax,[ebp-3C]
 00658801    call        @IntfClear
 00658806    lea         eax,[ebp-38]
 00658809    call        @IntfClear
 0065880E    lea         eax,[ebp-34]
 00658811    call        @VarClr
 00658816    lea         eax,[ebp-24]
 00658819    call        @IntfClear
 0065881E    lea         eax,[ebp-20]
 00658821    call        @VarClr
 00658826    lea         eax,[ebp-10]
 00658829    mov         edx,2
 0065882E    call        @WStrArrayClr
 00658833    lea         eax,[ebp-8]
 00658836    call        @IntfClear
 0065883B    lea         eax,[ebp-4]
 0065883E    call        @IntfClear
 00658843    mov         eax,ebx
 00658845    pop         edi
 00658846    pop         esi
 00658847    pop         ebx
 00658848    mov         esp,ebp
 0065884A    pop         ebp
 0065884B    ret         10
*}
end;

//00658860
procedure TMSDOMElement.normalize; safecall;
begin
{*
 00658860    push        ebp
 00658861    mov         ebp,esp
 00658863    push        0
 00658865    push        ebx
 00658866    push        esi
 00658867    push        edi
 00658868    mov         ebx,dword ptr [ebp+8]
 0065886B    push        ebx
 0065886C    xor         eax,eax
 0065886E    push        ebp
 0065886F    push        6588A2
 00658874    push        dword ptr fs:[eax]
 00658877    mov         dword ptr fs:[eax],esp
 0065887A    lea         edx,[ebp-4]
 0065887D    mov         eax,ebx
 0065887F    call        TMSDOMElement.GetMSElement
 00658884    mov         eax,dword ptr [ebp-4]
 00658887    push        eax
 00658888    mov         eax,dword ptr [eax]
 0065888A    call        dword ptr [eax+0CC]
 00658890    call        @CheckAutoResult
 00658895    xor         eax,eax
 00658897    pop         edx
 00658898    pop         ecx
 00658899    pop         ecx
 0065889A    mov         dword ptr fs:[eax],edx
 0065889D    pop         eax
 0065889E    xor         ebx,ebx
>006588A0    jmp         006588A7
>006588A2    jmp         @HandleAutoException
 006588A7    lea         eax,[ebp-4]
 006588AA    call        @IntfClear
 006588AF    mov         eax,ebx
 006588B1    pop         edi
 006588B2    pop         esi
 006588B3    pop         ebx
 006588B4    pop         ecx
 006588B5    pop         ebp
 006588B6    ret         4
*}
end;

//006588BC
function TMSDOMText.splitText(offset:Integer):IDOMText; safecall;
begin
{*
 006588BC    push        ebp
 006588BD    mov         ebp,esp
 006588BF    push        0
 006588C1    push        0
 006588C3    push        0
 006588C5    push        ebx
 006588C6    push        esi
 006588C7    push        edi
 006588C8    mov         ebx,dword ptr [ebp+8]
 006588CB    mov         eax,dword ptr [ebp+10]
 006588CE    test        eax,eax
>006588D0    je          006588D6
 006588D2    xor         edx,edx
 006588D4    mov         dword ptr [eax],edx
 006588D6    push        ebx
 006588D7    xor         eax,eax
 006588D9    push        ebp
 006588DA    push        65893B
 006588DF    push        dword ptr fs:[eax]
 006588E2    mov         dword ptr fs:[eax],esp
 006588E5    lea         eax,[ebp-8]
 006588E8    call        @IntfClear
 006588ED    push        eax
 006588EE    mov         eax,dword ptr [ebp+0C]
 006588F1    push        eax
 006588F2    lea         eax,[ebp-0C]
 006588F5    mov         edx,dword ptr [ebx+0C]
 006588F8    mov         ecx,658968
 006588FD    call        @IntfCast
 00658902    mov         eax,dword ptr [ebp-0C]
 00658905    push        eax
 00658906    mov         eax,dword ptr [eax]
 00658908    call        dword ptr [eax+0CC]
 0065890E    call        @CheckAutoResult
 00658913    mov         eax,dword ptr [ebp-8]
 00658916    lea         edx,[ebp-4]
 00658919    call        MakeNode
 0065891E    mov         edx,dword ptr [ebp-4]
 00658921    mov         eax,dword ptr [ebp+10]
 00658924    mov         ecx,658978
 00658929    call        @IntfCast
 0065892E    xor         eax,eax
 00658930    pop         edx
 00658931    pop         ecx
 00658932    pop         ecx
 00658933    mov         dword ptr fs:[eax],edx
 00658936    pop         eax
 00658937    xor         ebx,ebx
>00658939    jmp         00658940
>0065893B    jmp         @HandleAutoException
 00658940    lea         eax,[ebp-0C]
 00658943    mov         edx,dword ptr ds:[51845C];IXMLDOMText
 00658949    mov         ecx,2
 0065894E    call        @FinalizeArray
 00658953    lea         eax,[ebp-4]
 00658956    call        @IntfClear
 0065895B    mov         eax,ebx
 0065895D    pop         edi
 0065895E    pop         esi
 0065895F    pop         ebx
 00658960    mov         esp,ebp
 00658962    pop         ebp
 00658963    ret         0C
*}
end;

//00658988
function TMSDOMDocumentType.GetMSDocumentType:IXMLDOMDocumentType;
begin
{*
 00658988    push        ebx
 00658989    push        esi
 0065898A    mov         esi,edx
 0065898C    mov         ebx,eax
 0065898E    mov         eax,esi
 00658990    mov         edx,dword ptr [ebx+0C]
 00658993    mov         ecx,6589A0
 00658998    call        @IntfCast
 0065899D    pop         esi
 0065899E    pop         ebx
 0065899F    ret
*}
end;

//006589B0
{*function sub_006589B0(?:?; ?:?):?;
begin
 006589B0    push        ebp
 006589B1    mov         ebp,esp
 006589B3    push        0
 006589B5    push        0
 006589B7    push        0
 006589B9    push        ebx
 006589BA    push        esi
 006589BB    push        edi
 006589BC    mov         ebx,dword ptr [ebp+8]
 006589BF    mov         eax,dword ptr [ebp+0C]
 006589C2    test        eax,eax
>006589C4    je          006589CA
 006589C6    xor         edx,edx
 006589C8    mov         dword ptr [eax],edx
 006589CA    push        ebx
 006589CB    xor         eax,eax
 006589CD    push        ebp
 006589CE    push        658A31
 006589D3    push        dword ptr fs:[eax]
 006589D6    mov         dword ptr fs:[eax],esp
 006589D9    cmp         dword ptr [ebx+28],0
>006589DD    jne         00658A19
 006589DF    lea         eax,[ebp-8]
 006589E2    call        @IntfClear
 006589E7    push        eax
 006589E8    lea         edx,[ebp-0C]
 006589EB    mov         eax,ebx
 006589ED    call        TMSDOMDocumentType.GetMSDocumentType
 006589F2    mov         eax,dword ptr [ebp-0C]
 006589F5    push        eax
 006589F6    mov         eax,dword ptr [eax]
 006589F8    call        dword ptr [eax+0B0]
 006589FE    call        @CheckAutoResult
 00658A03    mov         eax,dword ptr [ebp-8]
 00658A06    lea         edx,[ebp-4]
 00658A09    call        MakeNodeList
 00658A0E    mov         edx,dword ptr [ebp-4]
 00658A11    lea         eax,[ebx+28]
 00658A14    call        @IntfCopy
 00658A19    mov         eax,dword ptr [ebp+0C]
 00658A1C    mov         edx,dword ptr [ebx+28]
 00658A1F    call        @IntfCopy
 00658A24    xor         eax,eax
 00658A26    pop         edx
 00658A27    pop         ecx
 00658A28    pop         ecx
 00658A29    mov         dword ptr fs:[eax],edx
 00658A2C    pop         eax
 00658A2D    xor         ebx,ebx
>00658A2F    jmp         00658A36
>00658A31    jmp         @HandleAutoException
 00658A36    lea         eax,[ebp-0C]
 00658A39    call        @IntfClear
 00658A3E    lea         eax,[ebp-8]
 00658A41    call        @IntfClear
 00658A46    lea         eax,[ebp-4]
 00658A49    call        @IntfClear
 00658A4E    mov         eax,ebx
 00658A50    pop         edi
 00658A51    pop         esi
 00658A52    pop         ebx
 00658A53    mov         esp,ebp
 00658A55    pop         ebp
 00658A56    ret         8
end;*}

//00658A5C
function TMSDOMDocumentType.get_internalSubset:DOMString; safecall;
begin
{*
 00658A5C    push        ebp
 00658A5D    mov         ebp,esp
 00658A5F    push        ebx
 00658A60    push        esi
 00658A61    push        edi
 00658A62    mov         eax,dword ptr [ebp+0C]
 00658A65    test        eax,eax
>00658A67    je          00658A6D
 00658A69    xor         edx,edx
 00658A6B    mov         dword ptr [eax],edx
 00658A6D    push        dword ptr [ebp+8]
 00658A70    xor         eax,eax
 00658A72    push        ebp
 00658A73    push        658A9A
 00658A78    push        dword ptr fs:[eax]
 00658A7B    mov         dword ptr fs:[eax],esp
 00658A7E    mov         edx,658AB4;'MSXML'
 00658A83    mov         eax,658ACC;'get_internalSubset'
 00658A88    call        DOMVendorNotSupported
 00658A8D    xor         eax,eax
 00658A8F    pop         edx
 00658A90    pop         ecx
 00658A91    pop         ecx
 00658A92    mov         dword ptr fs:[eax],edx
 00658A95    pop         eax
 00658A96    xor         ebx,ebx
>00658A98    jmp         00658A9F
>00658A9A    jmp         @HandleAutoException
 00658A9F    mov         eax,ebx
 00658AA1    pop         edi
 00658AA2    pop         esi
 00658AA3    pop         ebx
 00658AA4    pop         ebp
 00658AA5    ret         8
*}
end;

//00658AF4
function TMSDOMDocumentType.get_name:DOMString; safecall;
begin
{*
 00658AF4    push        ebp
 00658AF5    mov         ebp,esp
 00658AF7    push        0
 00658AF9    push        0
 00658AFB    push        ebx
 00658AFC    push        esi
 00658AFD    push        edi
 00658AFE    mov         ebx,dword ptr [ebp+8]
 00658B01    mov         eax,dword ptr [ebp+0C]
 00658B04    test        eax,eax
>00658B06    je          00658B0C
 00658B08    xor         edx,edx
 00658B0A    mov         dword ptr [eax],edx
 00658B0C    push        ebx
 00658B0D    xor         eax,eax
 00658B0F    push        ebp
 00658B10    push        658B57
 00658B15    push        dword ptr fs:[eax]
 00658B18    mov         dword ptr fs:[eax],esp
 00658B1B    lea         eax,[ebp-4]
 00658B1E    call        @WStrClr
 00658B23    push        eax
 00658B24    lea         edx,[ebp-8]
 00658B27    mov         eax,ebx
 00658B29    call        TMSDOMDocumentType.GetMSDocumentType
 00658B2E    mov         eax,dword ptr [ebp-8]
 00658B31    push        eax
 00658B32    mov         eax,dword ptr [eax]
 00658B34    call        dword ptr [eax+0AC]
 00658B3A    call        @CheckAutoResult
 00658B3F    mov         edx,dword ptr [ebp-4]
 00658B42    mov         eax,dword ptr [ebp+0C]
 00658B45    call        @UStrFromWStr
 00658B4A    xor         eax,eax
 00658B4C    pop         edx
 00658B4D    pop         ecx
 00658B4E    pop         ecx
 00658B4F    mov         dword ptr fs:[eax],edx
 00658B52    pop         eax
 00658B53    xor         ebx,ebx
>00658B55    jmp         00658B5C
>00658B57    jmp         @HandleAutoException
 00658B5C    lea         eax,[ebp-8]
 00658B5F    call        @IntfClear
 00658B64    lea         eax,[ebp-4]
 00658B67    call        @WStrClr
 00658B6C    mov         eax,ebx
 00658B6E    pop         edi
 00658B6F    pop         esi
 00658B70    pop         ebx
 00658B71    pop         ecx
 00658B72    pop         ecx
 00658B73    pop         ebp
 00658B74    ret         8
*}
end;

//00658B78
{*function sub_00658B78(?:?; ?:?):?;
begin
 00658B78    push        ebp
 00658B79    mov         ebp,esp
 00658B7B    push        0
 00658B7D    push        0
 00658B7F    push        0
 00658B81    push        ebx
 00658B82    push        esi
 00658B83    push        edi
 00658B84    mov         ebx,dword ptr [ebp+8]
 00658B87    mov         eax,dword ptr [ebp+0C]
 00658B8A    test        eax,eax
>00658B8C    je          00658B92
 00658B8E    xor         edx,edx
 00658B90    mov         dword ptr [eax],edx
 00658B92    push        ebx
 00658B93    xor         eax,eax
 00658B95    push        ebp
 00658B96    push        658BF9
 00658B9B    push        dword ptr fs:[eax]
 00658B9E    mov         dword ptr fs:[eax],esp
 00658BA1    cmp         dword ptr [ebx+2C],0
>00658BA5    jne         00658BE1
 00658BA7    lea         eax,[ebp-8]
 00658BAA    call        @IntfClear
 00658BAF    push        eax
 00658BB0    lea         edx,[ebp-0C]
 00658BB3    mov         eax,ebx
 00658BB5    call        TMSDOMDocumentType.GetMSDocumentType
 00658BBA    mov         eax,dword ptr [ebp-0C]
 00658BBD    push        eax
 00658BBE    mov         eax,dword ptr [eax]
 00658BC0    call        dword ptr [eax+0B4]
 00658BC6    call        @CheckAutoResult
 00658BCB    mov         eax,dword ptr [ebp-8]
 00658BCE    lea         edx,[ebp-4]
 00658BD1    call        MakeNodeList
 00658BD6    mov         edx,dword ptr [ebp-4]
 00658BD9    lea         eax,[ebx+2C]
 00658BDC    call        @IntfCopy
 00658BE1    mov         eax,dword ptr [ebp+0C]
 00658BE4    mov         edx,dword ptr [ebx+2C]
 00658BE7    call        @IntfCopy
 00658BEC    xor         eax,eax
 00658BEE    pop         edx
 00658BEF    pop         ecx
 00658BF0    pop         ecx
 00658BF1    mov         dword ptr fs:[eax],edx
 00658BF4    pop         eax
 00658BF5    xor         ebx,ebx
>00658BF7    jmp         00658BFE
>00658BF9    jmp         @HandleAutoException
 00658BFE    lea         eax,[ebp-0C]
 00658C01    call        @IntfClear
 00658C06    lea         eax,[ebp-8]
 00658C09    call        @IntfClear
 00658C0E    lea         eax,[ebp-4]
 00658C11    call        @IntfClear
 00658C16    mov         eax,ebx
 00658C18    pop         edi
 00658C19    pop         esi
 00658C1A    pop         ebx
 00658C1B    mov         esp,ebp
 00658C1D    pop         ebp
 00658C1E    ret         8
end;*}

//00658C24
function TMSDOMDocumentType.get_publicId:DOMString; safecall;
begin
{*
 00658C24    push        ebp
 00658C25    mov         ebp,esp
 00658C27    push        ebx
 00658C28    push        esi
 00658C29    push        edi
 00658C2A    mov         eax,dword ptr [ebp+0C]
 00658C2D    test        eax,eax
>00658C2F    je          00658C35
 00658C31    xor         edx,edx
 00658C33    mov         dword ptr [eax],edx
 00658C35    push        dword ptr [ebp+8]
 00658C38    xor         eax,eax
 00658C3A    push        ebp
 00658C3B    push        658C62
 00658C40    push        dword ptr fs:[eax]
 00658C43    mov         dword ptr fs:[eax],esp
 00658C46    mov         edx,658C7C;'MSXML'
 00658C4B    mov         eax,658C94;'get_publicId'
 00658C50    call        DOMVendorNotSupported
 00658C55    xor         eax,eax
 00658C57    pop         edx
 00658C58    pop         ecx
 00658C59    pop         ecx
 00658C5A    mov         dword ptr fs:[eax],edx
 00658C5D    pop         eax
 00658C5E    xor         ebx,ebx
>00658C60    jmp         00658C67
>00658C62    jmp         @HandleAutoException
 00658C67    mov         eax,ebx
 00658C69    pop         edi
 00658C6A    pop         esi
 00658C6B    pop         ebx
 00658C6C    pop         ebp
 00658C6D    ret         8
*}
end;

//00658CB0
function TMSDOMDocumentType.get_systemId:DOMString; safecall;
begin
{*
 00658CB0    push        ebp
 00658CB1    mov         ebp,esp
 00658CB3    push        ebx
 00658CB4    push        esi
 00658CB5    push        edi
 00658CB6    mov         eax,dword ptr [ebp+0C]
 00658CB9    test        eax,eax
>00658CBB    je          00658CC1
 00658CBD    xor         edx,edx
 00658CBF    mov         dword ptr [eax],edx
 00658CC1    push        dword ptr [ebp+8]
 00658CC4    xor         eax,eax
 00658CC6    push        ebp
 00658CC7    push        658CEE
 00658CCC    push        dword ptr fs:[eax]
 00658CCF    mov         dword ptr fs:[eax],esp
 00658CD2    mov         edx,658D08;'MSXML'
 00658CD7    mov         eax,658D20;'get_systemId'
 00658CDC    call        DOMVendorNotSupported
 00658CE1    xor         eax,eax
 00658CE3    pop         edx
 00658CE4    pop         ecx
 00658CE5    pop         ecx
 00658CE6    mov         dword ptr fs:[eax],edx
 00658CE9    pop         eax
 00658CEA    xor         ebx,ebx
>00658CEC    jmp         00658CF3
>00658CEE    jmp         @HandleAutoException
 00658CF3    mov         eax,ebx
 00658CF5    pop         edi
 00658CF6    pop         esi
 00658CF7    pop         ebx
 00658CF8    pop         ebp
 00658CF9    ret         8
*}
end;

//00658D3C
function TMSDOMNotation.GetMSNotation:IXMLDOMNotation;
begin
{*
 00658D3C    push        ebx
 00658D3D    push        esi
 00658D3E    mov         esi,edx
 00658D40    mov         ebx,eax
 00658D42    mov         eax,esi
 00658D44    mov         edx,dword ptr [ebx+0C]
 00658D47    mov         ecx,658D54
 00658D4C    call        @IntfCast
 00658D51    pop         esi
 00658D52    pop         ebx
 00658D53    ret
*}
end;

//00658D64
function TMSDOMNotation.get_publicId:DOMString; safecall;
begin
{*
 00658D64    push        ebp
 00658D65    mov         ebp,esp
 00658D67    xor         ecx,ecx
 00658D69    push        ecx
 00658D6A    push        ecx
 00658D6B    push        ecx
 00658D6C    push        ecx
 00658D6D    push        ecx
 00658D6E    push        ebx
 00658D6F    push        esi
 00658D70    push        edi
 00658D71    mov         ebx,dword ptr [ebp+8]
 00658D74    mov         eax,dword ptr [ebp+0C]
 00658D77    test        eax,eax
>00658D79    je          00658D7F
 00658D7B    xor         edx,edx
 00658D7D    mov         dword ptr [eax],edx
 00658D7F    push        ebx
 00658D80    xor         eax,eax
 00658D82    push        ebp
 00658D83    push        658DCA
 00658D88    push        dword ptr fs:[eax]
 00658D8B    mov         dword ptr fs:[eax],esp
 00658D8E    lea         eax,[ebp-10]
 00658D91    call        @VarClr
 00658D96    push        eax
 00658D97    lea         edx,[ebp-14]
 00658D9A    mov         eax,ebx
 00658D9C    call        TMSDOMNotation.GetMSNotation
 00658DA1    mov         eax,dword ptr [ebp-14]
 00658DA4    push        eax
 00658DA5    mov         eax,dword ptr [eax]
 00658DA7    call        dword ptr [eax+0AC]
 00658DAD    call        @CheckAutoResult
 00658DB2    lea         edx,[ebp-10]
 00658DB5    mov         eax,dword ptr [ebp+0C]
 00658DB8    call        @VarToUStr
 00658DBD    xor         eax,eax
 00658DBF    pop         edx
 00658DC0    pop         ecx
 00658DC1    pop         ecx
 00658DC2    mov         dword ptr fs:[eax],edx
 00658DC5    pop         eax
 00658DC6    xor         ebx,ebx
>00658DC8    jmp         00658DCF
>00658DCA    jmp         @HandleAutoException
 00658DCF    lea         eax,[ebp-14]
 00658DD2    call        @IntfClear
 00658DD7    lea         eax,[ebp-10]
 00658DDA    call        @VarClr
 00658DDF    mov         eax,ebx
 00658DE1    pop         edi
 00658DE2    pop         esi
 00658DE3    pop         ebx
 00658DE4    mov         esp,ebp
 00658DE6    pop         ebp
 00658DE7    ret         8
*}
end;

//00658DEC
function TMSDOMNotation.get_systemId:DOMString; safecall;
begin
{*
 00658DEC    push        ebp
 00658DED    mov         ebp,esp
 00658DEF    xor         ecx,ecx
 00658DF1    push        ecx
 00658DF2    push        ecx
 00658DF3    push        ecx
 00658DF4    push        ecx
 00658DF5    push        ecx
 00658DF6    push        ebx
 00658DF7    push        esi
 00658DF8    push        edi
 00658DF9    mov         ebx,dword ptr [ebp+8]
 00658DFC    mov         eax,dword ptr [ebp+0C]
 00658DFF    test        eax,eax
>00658E01    je          00658E07
 00658E03    xor         edx,edx
 00658E05    mov         dword ptr [eax],edx
 00658E07    push        ebx
 00658E08    xor         eax,eax
 00658E0A    push        ebp
 00658E0B    push        658E52
 00658E10    push        dword ptr fs:[eax]
 00658E13    mov         dword ptr fs:[eax],esp
 00658E16    lea         eax,[ebp-10]
 00658E19    call        @VarClr
 00658E1E    push        eax
 00658E1F    lea         edx,[ebp-14]
 00658E22    mov         eax,ebx
 00658E24    call        TMSDOMNotation.GetMSNotation
 00658E29    mov         eax,dword ptr [ebp-14]
 00658E2C    push        eax
 00658E2D    mov         eax,dword ptr [eax]
 00658E2F    call        dword ptr [eax+0B0]
 00658E35    call        @CheckAutoResult
 00658E3A    lea         edx,[ebp-10]
 00658E3D    mov         eax,dword ptr [ebp+0C]
 00658E40    call        @VarToUStr
 00658E45    xor         eax,eax
 00658E47    pop         edx
 00658E48    pop         ecx
 00658E49    pop         ecx
 00658E4A    mov         dword ptr fs:[eax],edx
 00658E4D    pop         eax
 00658E4E    xor         ebx,ebx
>00658E50    jmp         00658E57
>00658E52    jmp         @HandleAutoException
 00658E57    lea         eax,[ebp-14]
 00658E5A    call        @IntfClear
 00658E5F    lea         eax,[ebp-10]
 00658E62    call        @VarClr
 00658E67    mov         eax,ebx
 00658E69    pop         edi
 00658E6A    pop         esi
 00658E6B    pop         ebx
 00658E6C    mov         esp,ebp
 00658E6E    pop         ebp
 00658E6F    ret         8
*}
end;

//00658E74
function TMSDOMEntity.GetMSEntity:IXMLDOMEntity;
begin
{*
 00658E74    push        ebx
 00658E75    push        esi
 00658E76    mov         esi,edx
 00658E78    mov         ebx,eax
 00658E7A    mov         eax,esi
 00658E7C    mov         edx,dword ptr [ebx+0C]
 00658E7F    mov         ecx,658E8C
 00658E84    call        @IntfCast
 00658E89    pop         esi
 00658E8A    pop         ebx
 00658E8B    ret
*}
end;

//00658E9C
function TMSDOMEntity.get_notationName:DOMString; safecall;
begin
{*
 00658E9C    push        ebp
 00658E9D    mov         ebp,esp
 00658E9F    push        0
 00658EA1    push        0
 00658EA3    push        ebx
 00658EA4    push        esi
 00658EA5    push        edi
 00658EA6    mov         ebx,dword ptr [ebp+8]
 00658EA9    mov         eax,dword ptr [ebp+0C]
 00658EAC    test        eax,eax
>00658EAE    je          00658EB4
 00658EB0    xor         edx,edx
 00658EB2    mov         dword ptr [eax],edx
 00658EB4    push        ebx
 00658EB5    xor         eax,eax
 00658EB7    push        ebp
 00658EB8    push        658EFF
 00658EBD    push        dword ptr fs:[eax]
 00658EC0    mov         dword ptr fs:[eax],esp
 00658EC3    lea         eax,[ebp-4]
 00658EC6    call        @WStrClr
 00658ECB    push        eax
 00658ECC    lea         edx,[ebp-8]
 00658ECF    mov         eax,ebx
 00658ED1    call        TMSDOMEntity.GetMSEntity
 00658ED6    mov         eax,dword ptr [ebp-8]
 00658ED9    push        eax
 00658EDA    mov         eax,dword ptr [eax]
 00658EDC    call        dword ptr [eax+0B4]
 00658EE2    call        @CheckAutoResult
 00658EE7    mov         edx,dword ptr [ebp-4]
 00658EEA    mov         eax,dword ptr [ebp+0C]
 00658EED    call        @UStrFromWStr
 00658EF2    xor         eax,eax
 00658EF4    pop         edx
 00658EF5    pop         ecx
 00658EF6    pop         ecx
 00658EF7    mov         dword ptr fs:[eax],edx
 00658EFA    pop         eax
 00658EFB    xor         ebx,ebx
>00658EFD    jmp         00658F04
>00658EFF    jmp         @HandleAutoException
 00658F04    lea         eax,[ebp-8]
 00658F07    call        @IntfClear
 00658F0C    lea         eax,[ebp-4]
 00658F0F    call        @WStrClr
 00658F14    mov         eax,ebx
 00658F16    pop         edi
 00658F17    pop         esi
 00658F18    pop         ebx
 00658F19    pop         ecx
 00658F1A    pop         ecx
 00658F1B    pop         ebp
 00658F1C    ret         8
*}
end;

//00658F20
function TMSDOMEntity.get_publicId:DOMString; safecall;
begin
{*
 00658F20    push        ebp
 00658F21    mov         ebp,esp
 00658F23    xor         ecx,ecx
 00658F25    push        ecx
 00658F26    push        ecx
 00658F27    push        ecx
 00658F28    push        ecx
 00658F29    push        ecx
 00658F2A    push        ebx
 00658F2B    push        esi
 00658F2C    push        edi
 00658F2D    mov         ebx,dword ptr [ebp+8]
 00658F30    mov         eax,dword ptr [ebp+0C]
 00658F33    test        eax,eax
>00658F35    je          00658F3B
 00658F37    xor         edx,edx
 00658F39    mov         dword ptr [eax],edx
 00658F3B    push        ebx
 00658F3C    xor         eax,eax
 00658F3E    push        ebp
 00658F3F    push        658F86
 00658F44    push        dword ptr fs:[eax]
 00658F47    mov         dword ptr fs:[eax],esp
 00658F4A    lea         eax,[ebp-10]
 00658F4D    call        @VarClr
 00658F52    push        eax
 00658F53    lea         edx,[ebp-14]
 00658F56    mov         eax,ebx
 00658F58    call        TMSDOMEntity.GetMSEntity
 00658F5D    mov         eax,dword ptr [ebp-14]
 00658F60    push        eax
 00658F61    mov         eax,dword ptr [eax]
 00658F63    call        dword ptr [eax+0AC]
 00658F69    call        @CheckAutoResult
 00658F6E    lea         edx,[ebp-10]
 00658F71    mov         eax,dword ptr [ebp+0C]
 00658F74    call        @VarToUStr
 00658F79    xor         eax,eax
 00658F7B    pop         edx
 00658F7C    pop         ecx
 00658F7D    pop         ecx
 00658F7E    mov         dword ptr fs:[eax],edx
 00658F81    pop         eax
 00658F82    xor         ebx,ebx
>00658F84    jmp         00658F8B
>00658F86    jmp         @HandleAutoException
 00658F8B    lea         eax,[ebp-14]
 00658F8E    call        @IntfClear
 00658F93    lea         eax,[ebp-10]
 00658F96    call        @VarClr
 00658F9B    mov         eax,ebx
 00658F9D    pop         edi
 00658F9E    pop         esi
 00658F9F    pop         ebx
 00658FA0    mov         esp,ebp
 00658FA2    pop         ebp
 00658FA3    ret         8
*}
end;

//00658FA8
function TMSDOMEntity.get_systemId:DOMString; safecall;
begin
{*
 00658FA8    push        ebp
 00658FA9    mov         ebp,esp
 00658FAB    xor         ecx,ecx
 00658FAD    push        ecx
 00658FAE    push        ecx
 00658FAF    push        ecx
 00658FB0    push        ecx
 00658FB1    push        ecx
 00658FB2    push        ebx
 00658FB3    push        esi
 00658FB4    push        edi
 00658FB5    mov         ebx,dword ptr [ebp+8]
 00658FB8    mov         eax,dword ptr [ebp+0C]
 00658FBB    test        eax,eax
>00658FBD    je          00658FC3
 00658FBF    xor         edx,edx
 00658FC1    mov         dword ptr [eax],edx
 00658FC3    push        ebx
 00658FC4    xor         eax,eax
 00658FC6    push        ebp
 00658FC7    push        65900E
 00658FCC    push        dword ptr fs:[eax]
 00658FCF    mov         dword ptr fs:[eax],esp
 00658FD2    lea         eax,[ebp-10]
 00658FD5    call        @VarClr
 00658FDA    push        eax
 00658FDB    lea         edx,[ebp-14]
 00658FDE    mov         eax,ebx
 00658FE0    call        TMSDOMEntity.GetMSEntity
 00658FE5    mov         eax,dword ptr [ebp-14]
 00658FE8    push        eax
 00658FE9    mov         eax,dword ptr [eax]
 00658FEB    call        dword ptr [eax+0B0]
 00658FF1    call        @CheckAutoResult
 00658FF6    lea         edx,[ebp-10]
 00658FF9    mov         eax,dword ptr [ebp+0C]
 00658FFC    call        @VarToUStr
 00659001    xor         eax,eax
 00659003    pop         edx
 00659004    pop         ecx
 00659005    pop         ecx
 00659006    mov         dword ptr fs:[eax],edx
 00659009    pop         eax
 0065900A    xor         ebx,ebx
>0065900C    jmp         00659013
>0065900E    jmp         @HandleAutoException
 00659013    lea         eax,[ebp-14]
 00659016    call        @IntfClear
 0065901B    lea         eax,[ebp-10]
 0065901E    call        @VarClr
 00659023    mov         eax,ebx
 00659025    pop         edi
 00659026    pop         esi
 00659027    pop         ebx
 00659028    mov         esp,ebp
 0065902A    pop         ebp
 0065902B    ret         8
*}
end;

//00659030
function TMSDOMProcessingInstruction.GetMSProcessingInstruction:IXMLDOMProcessingInstruction;
begin
{*
 00659030    push        ebx
 00659031    push        esi
 00659032    mov         esi,edx
 00659034    mov         ebx,eax
 00659036    mov         eax,esi
 00659038    mov         edx,dword ptr [ebx+0C]
 0065903B    mov         ecx,659048
 00659040    call        @IntfCast
 00659045    pop         esi
 00659046    pop         ebx
 00659047    ret
*}
end;

//00659058
function TMSDOMProcessingInstruction.get_data:DOMString; safecall;
begin
{*
 00659058    push        ebp
 00659059    mov         ebp,esp
 0065905B    push        0
 0065905D    push        0
 0065905F    push        ebx
 00659060    push        esi
 00659061    push        edi
 00659062    mov         ebx,dword ptr [ebp+8]
 00659065    mov         eax,dword ptr [ebp+0C]
 00659068    test        eax,eax
>0065906A    je          00659070
 0065906C    xor         edx,edx
 0065906E    mov         dword ptr [eax],edx
 00659070    push        ebx
 00659071    xor         eax,eax
 00659073    push        ebp
 00659074    push        6590BB
 00659079    push        dword ptr fs:[eax]
 0065907C    mov         dword ptr fs:[eax],esp
 0065907F    lea         eax,[ebp-4]
 00659082    call        @WStrClr
 00659087    push        eax
 00659088    lea         edx,[ebp-8]
 0065908B    mov         eax,ebx
 0065908D    call        TMSDOMProcessingInstruction.GetMSProcessingInstruction
 00659092    mov         eax,dword ptr [ebp-8]
 00659095    push        eax
 00659096    mov         eax,dword ptr [eax]
 00659098    call        dword ptr [eax+0B0]
 0065909E    call        @CheckAutoResult
 006590A3    mov         edx,dword ptr [ebp-4]
 006590A6    mov         eax,dword ptr [ebp+0C]
 006590A9    call        @UStrFromWStr
 006590AE    xor         eax,eax
 006590B0    pop         edx
 006590B1    pop         ecx
 006590B2    pop         ecx
 006590B3    mov         dword ptr fs:[eax],edx
 006590B6    pop         eax
 006590B7    xor         ebx,ebx
>006590B9    jmp         006590C0
>006590BB    jmp         @HandleAutoException
 006590C0    lea         eax,[ebp-8]
 006590C3    call        @IntfClear
 006590C8    lea         eax,[ebp-4]
 006590CB    call        @WStrClr
 006590D0    mov         eax,ebx
 006590D2    pop         edi
 006590D3    pop         esi
 006590D4    pop         ebx
 006590D5    pop         ecx
 006590D6    pop         ecx
 006590D7    pop         ebp
 006590D8    ret         8
*}
end;

//006590DC
function TMSDOMProcessingInstruction.get_target:DOMString; safecall;
begin
{*
 006590DC    push        ebp
 006590DD    mov         ebp,esp
 006590DF    push        0
 006590E1    push        0
 006590E3    push        ebx
 006590E4    push        esi
 006590E5    push        edi
 006590E6    mov         ebx,dword ptr [ebp+8]
 006590E9    mov         eax,dword ptr [ebp+0C]
 006590EC    test        eax,eax
>006590EE    je          006590F4
 006590F0    xor         edx,edx
 006590F2    mov         dword ptr [eax],edx
 006590F4    push        ebx
 006590F5    xor         eax,eax
 006590F7    push        ebp
 006590F8    push        65913F
 006590FD    push        dword ptr fs:[eax]
 00659100    mov         dword ptr fs:[eax],esp
 00659103    lea         eax,[ebp-4]
 00659106    call        @WStrClr
 0065910B    push        eax
 0065910C    lea         edx,[ebp-8]
 0065910F    mov         eax,ebx
 00659111    call        TMSDOMProcessingInstruction.GetMSProcessingInstruction
 00659116    mov         eax,dword ptr [ebp-8]
 00659119    push        eax
 0065911A    mov         eax,dword ptr [eax]
 0065911C    call        dword ptr [eax+0AC]
 00659122    call        @CheckAutoResult
 00659127    mov         edx,dword ptr [ebp-4]
 0065912A    mov         eax,dword ptr [ebp+0C]
 0065912D    call        @UStrFromWStr
 00659132    xor         eax,eax
 00659134    pop         edx
 00659135    pop         ecx
 00659136    pop         ecx
 00659137    mov         dword ptr fs:[eax],edx
 0065913A    pop         eax
 0065913B    xor         ebx,ebx
>0065913D    jmp         00659144
>0065913F    jmp         @HandleAutoException
 00659144    lea         eax,[ebp-8]
 00659147    call        @IntfClear
 0065914C    lea         eax,[ebp-4]
 0065914F    call        @WStrClr
 00659154    mov         eax,ebx
 00659156    pop         edi
 00659157    pop         esi
 00659158    pop         ebx
 00659159    pop         ecx
 0065915A    pop         ecx
 0065915B    pop         ebp
 0065915C    ret         8
*}
end;

//00659160
procedure TMSDOMProcessingInstruction.set_data(const value:Xmldom.DOMString); safecall;
begin
{*
 00659160    push        ebp
 00659161    mov         ebp,esp
 00659163    push        0
 00659165    push        0
 00659167    push        ebx
 00659168    push        esi
 00659169    push        edi
 0065916A    mov         ebx,dword ptr [ebp+8]
 0065916D    push        ebx
 0065916E    xor         eax,eax
 00659170    push        ebp
 00659171    push        6591B3
 00659176    push        dword ptr fs:[eax]
 00659179    mov         dword ptr fs:[eax],esp
 0065917C    lea         eax,[ebp-4]
 0065917F    mov         edx,dword ptr [ebp+0C]
 00659182    call        @WStrFromUStr
 00659187    mov         eax,dword ptr [ebp-4]
 0065918A    push        eax
 0065918B    lea         edx,[ebp-8]
 0065918E    mov         eax,ebx
 00659190    call        TMSDOMProcessingInstruction.GetMSProcessingInstruction
 00659195    mov         eax,dword ptr [ebp-8]
 00659198    push        eax
 00659199    mov         eax,dword ptr [eax]
 0065919B    call        dword ptr [eax+0B4]
 006591A1    call        @CheckAutoResult
 006591A6    xor         eax,eax
 006591A8    pop         edx
 006591A9    pop         ecx
 006591AA    pop         ecx
 006591AB    mov         dword ptr fs:[eax],edx
 006591AE    pop         eax
 006591AF    xor         ebx,ebx
>006591B1    jmp         006591B8
>006591B3    jmp         @HandleAutoException
 006591B8    lea         eax,[ebp-8]
 006591BB    call        @IntfClear
 006591C0    lea         eax,[ebp-4]
 006591C3    call        @WStrClr
 006591C8    mov         eax,ebx
 006591CA    pop         edi
 006591CB    pop         esi
 006591CC    pop         ebx
 006591CD    pop         ecx
 006591CE    pop         ecx
 006591CF    pop         ebp
 006591D0    ret         8
*}
end;

//006591D4
constructor TMSDOMEventHandler.Create(Sender:TObject; AsyncEventHandler:TAsyncEventHandler);
begin
{*
 006591D4    push        ebp
 006591D5    mov         ebp,esp
 006591D7    test        dl,dl
>006591D9    je          006591E3
 006591DB    add         esp,0FFFFFFF0
 006591DE    call        @ClassCreate
 006591E3    mov         dword ptr [eax+10],ecx
 006591E6    mov         ecx,dword ptr [ebp+0C]
 006591E9    mov         dword ptr [eax+18],ecx
 006591EC    mov         ecx,dword ptr [ebp+10]
 006591EF    mov         dword ptr [eax+1C],ecx
 006591F2    mov         ecx,dword ptr [ebp+8]
 006591F5    mov         dword ptr [eax+0C],ecx
 006591F8    test        dl,dl
>006591FA    je          0065920B
 006591FC    call        @AfterConstruction
 00659201    pop         dword ptr fs:[0]
 00659208    add         esp,0C
 0065920B    pop         ebp
 0065920C    ret         0C
*}
end;

//00659210
function TMSDOMEventHandler.GetIDsOfNames(const IID:TGUID; Names:Pointer; NameCount:Integer; LocaleID:Integer; DispIDs:Pointer):HRESULT; stdcall;
begin
{*
 00659210    push        ebp
 00659211    mov         ebp,esp
 00659213    mov         eax,80004001
 00659218    pop         ebp
 00659219    ret         18
*}
end;

//0065921C
function TMSDOMEventHandler.GetTypeInfo(Index:Integer; LocaleID:Integer; var TypeInfo:void ):HRESULT; stdcall;
begin
{*
 0065921C    push        ebp
 0065921D    mov         ebp,esp
 0065921F    mov         eax,80004001
 00659224    pop         ebp
 00659225    ret         10
*}
end;

//00659228
function TMSDOMEventHandler.GetTypeInfoCount(var Count:Integer):HRESULT; stdcall;
begin
{*
 00659228    push        ebp
 00659229    mov         ebp,esp
 0065922B    mov         eax,80004001
 00659230    pop         ebp
 00659231    ret         8
*}
end;

//00659234
function TMSDOMEventHandler.Invoke(DispID:Integer; const IID:TGUID; LocaleID:Integer; Flags:Word; var Params:void ; VarResult:Pointer; ExcepInfo:Pointer; ArgErr:Pointer):HRESULT; stdcall;
begin
{*
 00659234    push        ebp
 00659235    mov         ebp,esp
 00659237    push        ecx
 00659238    push        ebx
 00659239    push        esi
 0065923A    push        edi
 0065923B    mov         ebx,dword ptr [ebp+8]
 0065923E    xor         eax,eax
 00659240    push        ebp
 00659241    push        659274
 00659246    push        dword ptr fs:[eax]
 00659249    mov         dword ptr fs:[eax],esp
 0065924C    lea         eax,[ebp-4]
 0065924F    push        eax
 00659250    mov         eax,dword ptr [ebx+10]
 00659253    push        eax
 00659254    call        TMSDOMDocument.asyncLoadState
 00659259    call        @CheckAutoResult
 0065925E    mov         ecx,dword ptr [ebp-4]
 00659261    mov         edx,dword ptr [ebx+0C]
 00659264    mov         eax,dword ptr [ebx+1C]
 00659267    call        dword ptr [ebx+18]
 0065926A    xor         eax,eax
 0065926C    pop         edx
 0065926D    pop         ecx
 0065926E    pop         ecx
 0065926F    mov         dword ptr fs:[eax],edx
>00659272    jmp         0065927E
>00659274    jmp         @HandleAnyException
 00659279    call        @DoneExcept
 0065927E    xor         eax,eax
 00659280    pop         edi
 00659281    pop         esi
 00659282    pop         ebx
 00659283    pop         ecx
 00659284    pop         ebp
 00659285    ret         24
*}
end;

//00659288
function TMSDOMDocument.GetMSDocument:IXMLDOMDocument;
begin
{*
 00659288    push        ebx
 00659289    push        esi
 0065928A    mov         esi,edx
 0065928C    mov         ebx,eax
 0065928E    mov         eax,esi
 00659290    mov         edx,dword ptr [ebx+0C]
 00659293    mov         ecx,6592A0
 00659298    call        @IntfCast
 0065929D    pop         esi
 0065929E    pop         ebx
 0065929F    ret
*}
end;

//006592B0
function TMSDOMDocument.createAttribute(const name:Xmldom.DOMString):IDOMAttr; safecall;
begin
{*
 006592B0    push        ebp
 006592B1    mov         ebp,esp
 006592B3    xor         ecx,ecx
 006592B5    push        ecx
 006592B6    push        ecx
 006592B7    push        ecx
 006592B8    push        ecx
 006592B9    push        ebx
 006592BA    push        esi
 006592BB    push        edi
 006592BC    mov         ebx,dword ptr [ebp+8]
 006592BF    mov         eax,dword ptr [ebp+10]
 006592C2    test        eax,eax
>006592C4    je          006592CA
 006592C6    xor         edx,edx
 006592C8    mov         dword ptr [eax],edx
 006592CA    push        ebx
 006592CB    xor         eax,eax
 006592CD    push        ebp
 006592CE    push        659334
 006592D3    push        dword ptr fs:[eax]
 006592D6    mov         dword ptr fs:[eax],esp
 006592D9    lea         eax,[ebp-8]
 006592DC    call        @IntfClear
 006592E1    push        eax
 006592E2    lea         eax,[ebp-0C]
 006592E5    mov         edx,dword ptr [ebp+0C]
 006592E8    call        @WStrFromUStr
 006592ED    mov         eax,dword ptr [ebp-0C]
 006592F0    push        eax
 006592F1    lea         edx,[ebp-10]
 006592F4    mov         eax,ebx
 006592F6    call        TMSDOMDocument.GetMSDocument
 006592FB    mov         eax,dword ptr [ebp-10]
 006592FE    push        eax
 006592FF    mov         eax,dword ptr [eax]
 00659301    call        dword ptr [eax+0D4]
 00659307    call        @CheckAutoResult
 0065930C    mov         eax,dword ptr [ebp-8]
 0065930F    lea         edx,[ebp-4]
 00659312    call        MakeNode
 00659317    mov         edx,dword ptr [ebp-4]
 0065931A    mov         eax,dword ptr [ebp+10]
 0065931D    mov         ecx,659364
 00659322    call        @IntfCast
 00659327    xor         eax,eax
 00659329    pop         edx
 0065932A    pop         ecx
 0065932B    pop         ecx
 0065932C    mov         dword ptr fs:[eax],edx
 0065932F    pop         eax
 00659330    xor         ebx,ebx
>00659332    jmp         00659339
>00659334    jmp         @HandleAutoException
 00659339    lea         eax,[ebp-10]
 0065933C    call        @IntfClear
 00659341    lea         eax,[ebp-0C]
 00659344    call        @WStrClr
 00659349    lea         eax,[ebp-8]
 0065934C    call        @IntfClear
 00659351    lea         eax,[ebp-4]
 00659354    call        @IntfClear
 00659359    mov         eax,ebx
 0065935B    pop         edi
 0065935C    pop         esi
 0065935D    pop         ebx
 0065935E    mov         esp,ebp
 00659360    pop         ebp
 00659361    ret         0C
*}
end;

//00659374
function TMSDOMDocument.createAttributeNS(const namespaceURI:Xmldom.DOMString; const qualifiedName:Xmldom.DOMString):IDOMAttr; safecall;
begin
{*
 00659374    push        ebp
 00659375    mov         ebp,esp
 00659377    mov         ecx,4
 0065937C    push        0
 0065937E    push        0
 00659380    dec         ecx
>00659381    jne         0065937C
 00659383    push        ecx
 00659384    push        ebx
 00659385    push        esi
 00659386    push        edi
 00659387    mov         ebx,dword ptr [ebp+8]
 0065938A    mov         eax,dword ptr [ebp+14]
 0065938D    test        eax,eax
>0065938F    je          00659395
 00659391    xor         edx,edx
 00659393    mov         dword ptr [eax],edx
 00659395    push        ebx
 00659396    xor         eax,eax
 00659398    push        ebp
 00659399    push        659429
 0065939E    push        dword ptr fs:[eax]
 006593A1    mov         dword ptr fs:[eax],esp
 006593A4    lea         eax,[ebp-8]
 006593A7    call        @IntfClear
 006593AC    push        eax
 006593AD    lea         eax,[ebp-0C]
 006593B0    mov         edx,dword ptr [ebp+0C]
 006593B3    call        @WStrFromUStr
 006593B8    mov         eax,dword ptr [ebp-0C]
 006593BB    push        eax
 006593BC    lea         eax,[ebp-10]
 006593BF    mov         edx,dword ptr [ebp+10]
 006593C2    call        @WStrFromUStr
 006593C7    mov         eax,dword ptr [ebp-10]
 006593CA    push        eax
 006593CB    lea         eax,[ebp-20]
 006593CE    mov         edx,2
 006593D3    mov         cl,1
 006593D5    call        @OleVarFromInt
 006593DA    push        dword ptr [ebp-14]
 006593DD    push        dword ptr [ebp-18]
 006593E0    push        dword ptr [ebp-1C]
 006593E3    push        dword ptr [ebp-20]
 006593E6    lea         edx,[ebp-24]
 006593E9    mov         eax,ebx
 006593EB    call        TMSDOMDocument.GetMSDocument
 006593F0    mov         eax,dword ptr [ebp-24]
 006593F3    push        eax
 006593F4    mov         eax,dword ptr [eax]
 006593F6    call        dword ptr [eax+0E0]
 006593FC    call        @CheckAutoResult
 00659401    mov         eax,dword ptr [ebp-8]
 00659404    lea         edx,[ebp-4]
 00659407    call        MakeNode
 0065940C    mov         edx,dword ptr [ebp-4]
 0065940F    mov         eax,dword ptr [ebp+14]
 00659412    mov         ecx,659468
 00659417    call        @IntfCast
 0065941C    xor         eax,eax
 0065941E    pop         edx
 0065941F    pop         ecx
 00659420    pop         ecx
 00659421    mov         dword ptr fs:[eax],edx
 00659424    pop         eax
 00659425    xor         ebx,ebx
>00659427    jmp         0065942E
>00659429    jmp         @HandleAutoException
 0065942E    lea         eax,[ebp-24]
 00659431    call        @IntfClear
 00659436    lea         eax,[ebp-20]
 00659439    call        @VarClr
 0065943E    lea         eax,[ebp-10]
 00659441    mov         edx,2
 00659446    call        @WStrArrayClr
 0065944B    lea         eax,[ebp-8]
 0065944E    call        @IntfClear
 00659453    lea         eax,[ebp-4]
 00659456    call        @IntfClear
 0065945B    mov         eax,ebx
 0065945D    pop         edi
 0065945E    pop         esi
 0065945F    pop         ebx
 00659460    mov         esp,ebp
 00659462    pop         ebp
 00659463    ret         10
*}
end;

//00659478
function TMSDOMDocument.createCDATASection(const data:Xmldom.DOMString):IDOMCDATASection; safecall;
begin
{*
 00659478    push        ebp
 00659479    mov         ebp,esp
 0065947B    push        0
 0065947D    push        0
 0065947F    push        0
 00659481    push        ebx
 00659482    push        esi
 00659483    push        edi
 00659484    mov         ebx,dword ptr [ebp+8]
 00659487    mov         eax,dword ptr [ebp+10]
 0065948A    test        eax,eax
>0065948C    je          00659492
 0065948E    xor         edx,edx
 00659490    mov         dword ptr [eax],edx
 00659492    push        ebx
 00659493    xor         eax,eax
 00659495    push        ebp
 00659496    push        659506
 0065949B    push        dword ptr fs:[eax]
 0065949E    mov         dword ptr fs:[eax],esp
 006594A1    lea         eax,[ebp-4]
 006594A4    call        @IntfClear
 006594A9    push        eax
 006594AA    lea         eax,[ebp-8]
 006594AD    mov         edx,dword ptr [ebp+0C]
 006594B0    call        @WStrFromUStr
 006594B5    mov         eax,dword ptr [ebp-8]
 006594B8    push        eax
 006594B9    lea         edx,[ebp-0C]
 006594BC    mov         eax,ebx
 006594BE    call        TMSDOMDocument.GetMSDocument
 006594C3    mov         eax,dword ptr [ebp-0C]
 006594C6    push        eax
 006594C7    mov         eax,dword ptr [eax]
 006594C9    call        dword ptr [eax+0CC]
 006594CF    call        @CheckAutoResult
 006594D4    mov         ecx,dword ptr [ebp-4]
 006594D7    mov         dl,1
 006594D9    mov         eax,[00654084];TMSDOMCDATASection
 006594DE    call        TMSDOMNode.Create
 006594E3    mov         edx,eax
 006594E5    test        edx,edx
>006594E7    je          006594EC
 006594E9    sub         edx,0FFFFFFF8
 006594EC    mov         eax,dword ptr [ebp+10]
 006594EF    mov         ecx,659530
 006594F4    call        @IntfCast
 006594F9    xor         eax,eax
 006594FB    pop         edx
 006594FC    pop         ecx
 006594FD    pop         ecx
 006594FE    mov         dword ptr fs:[eax],edx
 00659501    pop         eax
 00659502    xor         ebx,ebx
>00659504    jmp         0065950B
>00659506    jmp         @HandleAutoException
 0065950B    lea         eax,[ebp-0C]
 0065950E    call        @IntfClear
 00659513    lea         eax,[ebp-8]
 00659516    call        @WStrClr
 0065951B    lea         eax,[ebp-4]
 0065951E    call        @IntfClear
 00659523    mov         eax,ebx
 00659525    pop         edi
 00659526    pop         esi
 00659527    pop         ebx
 00659528    mov         esp,ebp
 0065952A    pop         ebp
 0065952B    ret         0C
*}
end;

//00659540
function TMSDOMDocument.createComment(const data:Xmldom.DOMString):IDOMComment; safecall;
begin
{*
 00659540    push        ebp
 00659541    mov         ebp,esp
 00659543    push        0
 00659545    push        0
 00659547    push        0
 00659549    push        ebx
 0065954A    push        esi
 0065954B    push        edi
 0065954C    mov         ebx,dword ptr [ebp+8]
 0065954F    mov         eax,dword ptr [ebp+10]
 00659552    test        eax,eax
>00659554    je          0065955A
 00659556    xor         edx,edx
 00659558    mov         dword ptr [eax],edx
 0065955A    push        ebx
 0065955B    xor         eax,eax
 0065955D    push        ebp
 0065955E    push        6595CE
 00659563    push        dword ptr fs:[eax]
 00659566    mov         dword ptr fs:[eax],esp
 00659569    lea         eax,[ebp-4]
 0065956C    call        @IntfClear
 00659571    push        eax
 00659572    lea         eax,[ebp-8]
 00659575    mov         edx,dword ptr [ebp+0C]
 00659578    call        @WStrFromUStr
 0065957D    mov         eax,dword ptr [ebp-8]
 00659580    push        eax
 00659581    lea         edx,[ebp-0C]
 00659584    mov         eax,ebx
 00659586    call        TMSDOMDocument.GetMSDocument
 0065958B    mov         eax,dword ptr [ebp-0C]
 0065958E    push        eax
 0065958F    mov         eax,dword ptr [eax]
 00659591    call        dword ptr [eax+0C8]
 00659597    call        @CheckAutoResult
 0065959C    mov         ecx,dword ptr [ebp-4]
 0065959F    mov         dl,1
 006595A1    mov         eax,[00653DD0];TMSDOMComment
 006595A6    call        TMSDOMNode.Create
 006595AB    mov         edx,eax
 006595AD    test        edx,edx
>006595AF    je          006595B4
 006595B1    sub         edx,0FFFFFFF8
 006595B4    mov         eax,dword ptr [ebp+10]
 006595B7    mov         ecx,6595F8
 006595BC    call        @IntfCast
 006595C1    xor         eax,eax
 006595C3    pop         edx
 006595C4    pop         ecx
 006595C5    pop         ecx
 006595C6    mov         dword ptr fs:[eax],edx
 006595C9    pop         eax
 006595CA    xor         ebx,ebx
>006595CC    jmp         006595D3
>006595CE    jmp         @HandleAutoException
 006595D3    lea         eax,[ebp-0C]
 006595D6    call        @IntfClear
 006595DB    lea         eax,[ebp-8]
 006595DE    call        @WStrClr
 006595E3    lea         eax,[ebp-4]
 006595E6    call        @IntfClear
 006595EB    mov         eax,ebx
 006595ED    pop         edi
 006595EE    pop         esi
 006595EF    pop         ebx
 006595F0    mov         esp,ebp
 006595F2    pop         ebp
 006595F3    ret         0C
*}
end;

//00659608
function TMSDOMDocument.createDocumentFragment:IDOMDocumentFragment; safecall;
begin
{*
 00659608    push        ebp
 00659609    mov         ebp,esp
 0065960B    push        0
 0065960D    push        0
 0065960F    push        ebx
 00659610    push        esi
 00659611    push        edi
 00659612    mov         ebx,dword ptr [ebp+8]
 00659615    mov         eax,dword ptr [ebp+0C]
 00659618    test        eax,eax
>0065961A    je          00659620
 0065961C    xor         edx,edx
 0065961E    mov         dword ptr [eax],edx
 00659620    push        ebx
 00659621    xor         eax,eax
 00659623    push        ebp
 00659624    push        659685
 00659629    push        dword ptr fs:[eax]
 0065962C    mov         dword ptr fs:[eax],esp
 0065962F    lea         eax,[ebp-4]
 00659632    call        @IntfClear
 00659637    push        eax
 00659638    lea         edx,[ebp-8]
 0065963B    mov         eax,ebx
 0065963D    call        TMSDOMDocument.GetMSDocument
 00659642    mov         eax,dword ptr [ebp-8]
 00659645    push        eax
 00659646    mov         eax,dword ptr [eax]
 00659648    call        dword ptr [eax+0C0]
 0065964E    call        @CheckAutoResult
 00659653    mov         ecx,dword ptr [ebp-4]
 00659656    mov         dl,1
 00659658    mov         eax,[00654FD8];TMSDOMDocumentFragment
 0065965D    call        TMSDOMNode.Create
 00659662    mov         edx,eax
 00659664    test        edx,edx
>00659666    je          0065966B
 00659668    sub         edx,0FFFFFFF8
 0065966B    mov         eax,dword ptr [ebp+0C]
 0065966E    mov         ecx,6596A8
 00659673    call        @IntfCast
 00659678    xor         eax,eax
 0065967A    pop         edx
 0065967B    pop         ecx
 0065967C    pop         ecx
 0065967D    mov         dword ptr fs:[eax],edx
 00659680    pop         eax
 00659681    xor         ebx,ebx
>00659683    jmp         0065968A
>00659685    jmp         @HandleAutoException
 0065968A    lea         eax,[ebp-8]
 0065968D    call        @IntfClear
 00659692    lea         eax,[ebp-4]
 00659695    call        @IntfClear
 0065969A    mov         eax,ebx
 0065969C    pop         edi
 0065969D    pop         esi
 0065969E    pop         ebx
 0065969F    pop         ecx
 006596A0    pop         ecx
 006596A1    pop         ebp
 006596A2    ret         8
*}
end;

//006596B8
function TMSDOMDocument.createElement(const tagName:Xmldom.DOMString):IDOMElement; safecall;
begin
{*
 006596B8    push        ebp
 006596B9    mov         ebp,esp
 006596BB    xor         ecx,ecx
 006596BD    push        ecx
 006596BE    push        ecx
 006596BF    push        ecx
 006596C0    push        ecx
 006596C1    push        ebx
 006596C2    push        esi
 006596C3    push        edi
 006596C4    mov         ebx,dword ptr [ebp+8]
 006596C7    mov         eax,dword ptr [ebp+10]
 006596CA    test        eax,eax
>006596CC    je          006596D2
 006596CE    xor         edx,edx
 006596D0    mov         dword ptr [eax],edx
 006596D2    push        ebx
 006596D3    xor         eax,eax
 006596D5    push        ebp
 006596D6    push        65973C
 006596DB    push        dword ptr fs:[eax]
 006596DE    mov         dword ptr fs:[eax],esp
 006596E1    lea         eax,[ebp-8]
 006596E4    call        @IntfClear
 006596E9    push        eax
 006596EA    lea         eax,[ebp-0C]
 006596ED    mov         edx,dword ptr [ebp+0C]
 006596F0    call        @WStrFromUStr
 006596F5    mov         eax,dword ptr [ebp-0C]
 006596F8    push        eax
 006596F9    lea         edx,[ebp-10]
 006596FC    mov         eax,ebx
 006596FE    call        TMSDOMDocument.GetMSDocument
 00659703    mov         eax,dword ptr [ebp-10]
 00659706    push        eax
 00659707    mov         eax,dword ptr [eax]
 00659709    call        dword ptr [eax+0BC]
 0065970F    call        @CheckAutoResult
 00659714    mov         eax,dword ptr [ebp-8]
 00659717    lea         edx,[ebp-4]
 0065971A    call        MakeNode
 0065971F    mov         edx,dword ptr [ebp-4]
 00659722    mov         eax,dword ptr [ebp+10]
 00659725    mov         ecx,65976C
 0065972A    call        @IntfCast
 0065972F    xor         eax,eax
 00659731    pop         edx
 00659732    pop         ecx
 00659733    pop         ecx
 00659734    mov         dword ptr fs:[eax],edx
 00659737    pop         eax
 00659738    xor         ebx,ebx
>0065973A    jmp         00659741
>0065973C    jmp         @HandleAutoException
 00659741    lea         eax,[ebp-10]
 00659744    call        @IntfClear
 00659749    lea         eax,[ebp-0C]
 0065974C    call        @WStrClr
 00659751    lea         eax,[ebp-8]
 00659754    call        @IntfClear
 00659759    lea         eax,[ebp-4]
 0065975C    call        @IntfClear
 00659761    mov         eax,ebx
 00659763    pop         edi
 00659764    pop         esi
 00659765    pop         ebx
 00659766    mov         esp,ebp
 00659768    pop         ebp
 00659769    ret         0C
*}
end;

//0065977C
function TMSDOMDocument.createElementNS(const namespaceURI:Xmldom.DOMString; const qualifiedName:Xmldom.DOMString):IDOMElement; safecall;
begin
{*
 0065977C    push        ebp
 0065977D    mov         ebp,esp
 0065977F    mov         ecx,4
 00659784    push        0
 00659786    push        0
 00659788    dec         ecx
>00659789    jne         00659784
 0065978B    push        ecx
 0065978C    push        ebx
 0065978D    push        esi
 0065978E    push        edi
 0065978F    mov         ebx,dword ptr [ebp+8]
 00659792    mov         eax,dword ptr [ebp+14]
 00659795    test        eax,eax
>00659797    je          0065979D
 00659799    xor         edx,edx
 0065979B    mov         dword ptr [eax],edx
 0065979D    push        ebx
 0065979E    xor         eax,eax
 006597A0    push        ebp
 006597A1    push        659831
 006597A6    push        dword ptr fs:[eax]
 006597A9    mov         dword ptr fs:[eax],esp
 006597AC    lea         eax,[ebp-8]
 006597AF    call        @IntfClear
 006597B4    push        eax
 006597B5    lea         eax,[ebp-0C]
 006597B8    mov         edx,dword ptr [ebp+0C]
 006597BB    call        @WStrFromUStr
 006597C0    mov         eax,dword ptr [ebp-0C]
 006597C3    push        eax
 006597C4    lea         eax,[ebp-10]
 006597C7    mov         edx,dword ptr [ebp+10]
 006597CA    call        @WStrFromUStr
 006597CF    mov         eax,dword ptr [ebp-10]
 006597D2    push        eax
 006597D3    lea         eax,[ebp-20]
 006597D6    mov         edx,1
 006597DB    mov         cl,1
 006597DD    call        @OleVarFromInt
 006597E2    push        dword ptr [ebp-14]
 006597E5    push        dword ptr [ebp-18]
 006597E8    push        dword ptr [ebp-1C]
 006597EB    push        dword ptr [ebp-20]
 006597EE    lea         edx,[ebp-24]
 006597F1    mov         eax,ebx
 006597F3    call        TMSDOMDocument.GetMSDocument
 006597F8    mov         eax,dword ptr [ebp-24]
 006597FB    push        eax
 006597FC    mov         eax,dword ptr [eax]
 006597FE    call        dword ptr [eax+0E0]
 00659804    call        @CheckAutoResult
 00659809    mov         eax,dword ptr [ebp-8]
 0065980C    lea         edx,[ebp-4]
 0065980F    call        MakeNode
 00659814    mov         edx,dword ptr [ebp-4]
 00659817    mov         eax,dword ptr [ebp+14]
 0065981A    mov         ecx,659870
 0065981F    call        @IntfCast
 00659824    xor         eax,eax
 00659826    pop         edx
 00659827    pop         ecx
 00659828    pop         ecx
 00659829    mov         dword ptr fs:[eax],edx
 0065982C    pop         eax
 0065982D    xor         ebx,ebx
>0065982F    jmp         00659836
>00659831    jmp         @HandleAutoException
 00659836    lea         eax,[ebp-24]
 00659839    call        @IntfClear
 0065983E    lea         eax,[ebp-20]
 00659841    call        @VarClr
 00659846    lea         eax,[ebp-10]
 00659849    mov         edx,2
 0065984E    call        @WStrArrayClr
 00659853    lea         eax,[ebp-8]
 00659856    call        @IntfClear
 0065985B    lea         eax,[ebp-4]
 0065985E    call        @IntfClear
 00659863    mov         eax,ebx
 00659865    pop         edi
 00659866    pop         esi
 00659867    pop         ebx
 00659868    mov         esp,ebp
 0065986A    pop         ebp
 0065986B    ret         10
*}
end;

//00659880
function TMSDOMDocument.createEntityReference(const name:Xmldom.DOMString):IDOMEntityReference; safecall;
begin
{*
 00659880    push        ebp
 00659881    mov         ebp,esp
 00659883    push        0
 00659885    push        0
 00659887    push        0
 00659889    push        ebx
 0065988A    push        esi
 0065988B    push        edi
 0065988C    mov         ebx,dword ptr [ebp+8]
 0065988F    mov         eax,dword ptr [ebp+10]
 00659892    test        eax,eax
>00659894    je          0065989A
 00659896    xor         edx,edx
 00659898    mov         dword ptr [eax],edx
 0065989A    push        ebx
 0065989B    xor         eax,eax
 0065989D    push        ebp
 0065989E    push        659909
 006598A3    push        dword ptr fs:[eax]
 006598A6    mov         dword ptr fs:[eax],esp
 006598A9    lea         eax,[ebp-4]
 006598AC    call        @IntfClear
 006598B1    push        eax
 006598B2    lea         eax,[ebp-8]
 006598B5    mov         edx,dword ptr [ebp+0C]
 006598B8    call        @WStrFromUStr
 006598BD    mov         eax,dword ptr [ebp-8]
 006598C0    push        eax
 006598C1    lea         edx,[ebp-0C]
 006598C4    mov         eax,ebx
 006598C6    call        TMSDOMDocument.GetMSDocument
 006598CB    mov         eax,dword ptr [ebp-0C]
 006598CE    push        eax
 006598CF    mov         eax,dword ptr [eax]
 006598D1    call        dword ptr [eax+0D8]
 006598D7    call        @CheckAutoResult
 006598DC    mov         ecx,dword ptr [ebp-4]
 006598DF    mov         dl,1
 006598E1    mov         eax,[00654ADC];TMSDOMEntityReference
 006598E6    call        TMSDOMNode.Create
 006598EB    mov         edx,eax
 006598ED    test        edx,edx
>006598EF    je          006598F4
 006598F1    sub         edx,0FFFFFFD8
 006598F4    mov         eax,dword ptr [ebp+10]
 006598F7    call        @IntfCopy
 006598FC    xor         eax,eax
 006598FE    pop         edx
 006598FF    pop         ecx
 00659900    pop         ecx
 00659901    mov         dword ptr fs:[eax],edx
 00659904    pop         eax
 00659905    xor         ebx,ebx
>00659907    jmp         0065990E
>00659909    jmp         @HandleAutoException
 0065990E    lea         eax,[ebp-0C]
 00659911    call        @IntfClear
 00659916    lea         eax,[ebp-8]
 00659919    call        @WStrClr
 0065991E    lea         eax,[ebp-4]
 00659921    call        @IntfClear
 00659926    mov         eax,ebx
 00659928    pop         edi
 00659929    pop         esi
 0065992A    pop         ebx
 0065992B    mov         esp,ebp
 0065992D    pop         ebp
 0065992E    ret         0C
*}
end;

//00659934
function TMSDOMDocument.createProcessingInstruction(const target:Xmldom.DOMString; const data:Xmldom.DOMString):IDOMProcessingInstruction; safecall;
begin
{*
 00659934    push        ebp
 00659935    mov         ebp,esp
 00659937    xor         ecx,ecx
 00659939    push        ecx
 0065993A    push        ecx
 0065993B    push        ecx
 0065993C    push        ecx
 0065993D    push        ebx
 0065993E    push        esi
 0065993F    push        edi
 00659940    mov         ebx,dword ptr [ebp+8]
 00659943    mov         eax,dword ptr [ebp+14]
 00659946    test        eax,eax
>00659948    je          0065994E
 0065994A    xor         edx,edx
 0065994C    mov         dword ptr [eax],edx
 0065994E    push        ebx
 0065994F    xor         eax,eax
 00659951    push        ebp
 00659952    push        6599CC
 00659957    push        dword ptr fs:[eax]
 0065995A    mov         dword ptr fs:[eax],esp
 0065995D    lea         eax,[ebp-4]
 00659960    call        @IntfClear
 00659965    push        eax
 00659966    lea         eax,[ebp-8]
 00659969    mov         edx,dword ptr [ebp+10]
 0065996C    call        @WStrFromUStr
 00659971    mov         eax,dword ptr [ebp-8]
 00659974    push        eax
 00659975    lea         eax,[ebp-0C]
 00659978    mov         edx,dword ptr [ebp+0C]
 0065997B    call        @WStrFromUStr
 00659980    mov         eax,dword ptr [ebp-0C]
 00659983    push        eax
 00659984    lea         edx,[ebp-10]
 00659987    mov         eax,ebx
 00659989    call        TMSDOMDocument.GetMSDocument
 0065998E    mov         eax,dword ptr [ebp-10]
 00659991    push        eax
 00659992    mov         eax,dword ptr [eax]
 00659994    call        dword ptr [eax+0D0]
 0065999A    call        @CheckAutoResult
 0065999F    mov         ecx,dword ptr [ebp-4]
 006599A2    mov         dl,1
 006599A4    mov         eax,[00654D4C];TMSDOMProcessingInstruction
 006599A9    call        TMSDOMNode.Create
 006599AE    mov         edx,eax
 006599B0    test        edx,edx
>006599B2    je          006599B7
 006599B4    sub         edx,0FFFFFFD8
 006599B7    mov         eax,dword ptr [ebp+14]
 006599BA    call        @IntfCopy
 006599BF    xor         eax,eax
 006599C1    pop         edx
 006599C2    pop         ecx
 006599C3    pop         ecx
 006599C4    mov         dword ptr fs:[eax],edx
 006599C7    pop         eax
 006599C8    xor         ebx,ebx
>006599CA    jmp         006599D1
>006599CC    jmp         @HandleAutoException
 006599D1    lea         eax,[ebp-10]
 006599D4    call        @IntfClear
 006599D9    lea         eax,[ebp-0C]
 006599DC    mov         edx,2
 006599E1    call        @WStrArrayClr
 006599E6    lea         eax,[ebp-4]
 006599E9    call        @IntfClear
 006599EE    mov         eax,ebx
 006599F0    pop         edi
 006599F1    pop         esi
 006599F2    pop         ebx
 006599F3    mov         esp,ebp
 006599F5    pop         ebp
 006599F6    ret         10
*}
end;

//006599FC
function TMSDOMDocument.createTextNode(const data:Xmldom.DOMString):IDOMText; safecall;
begin
{*
 006599FC    push        ebp
 006599FD    mov         ebp,esp
 006599FF    xor         ecx,ecx
 00659A01    push        ecx
 00659A02    push        ecx
 00659A03    push        ecx
 00659A04    push        ecx
 00659A05    push        ebx
 00659A06    push        esi
 00659A07    push        edi
 00659A08    mov         ebx,dword ptr [ebp+8]
 00659A0B    mov         eax,dword ptr [ebp+10]
 00659A0E    test        eax,eax
>00659A10    je          00659A16
 00659A12    xor         edx,edx
 00659A14    mov         dword ptr [eax],edx
 00659A16    push        ebx
 00659A17    xor         eax,eax
 00659A19    push        ebp
 00659A1A    push        659A80
 00659A1F    push        dword ptr fs:[eax]
 00659A22    mov         dword ptr fs:[eax],esp
 00659A25    lea         eax,[ebp-8]
 00659A28    call        @IntfClear
 00659A2D    push        eax
 00659A2E    lea         eax,[ebp-0C]
 00659A31    mov         edx,dword ptr [ebp+0C]
 00659A34    call        @WStrFromUStr
 00659A39    mov         eax,dword ptr [ebp-0C]
 00659A3C    push        eax
 00659A3D    lea         edx,[ebp-10]
 00659A40    mov         eax,ebx
 00659A42    call        TMSDOMDocument.GetMSDocument
 00659A47    mov         eax,dword ptr [ebp-10]
 00659A4A    push        eax
 00659A4B    mov         eax,dword ptr [eax]
 00659A4D    call        dword ptr [eax+0C4]
 00659A53    call        @CheckAutoResult
 00659A58    mov         eax,dword ptr [ebp-8]
 00659A5B    lea         edx,[ebp-4]
 00659A5E    call        MakeNode
 00659A63    mov         edx,dword ptr [ebp-4]
 00659A66    mov         eax,dword ptr [ebp+10]
 00659A69    mov         ecx,659AB0
 00659A6E    call        @IntfCast
 00659A73    xor         eax,eax
 00659A75    pop         edx
 00659A76    pop         ecx
 00659A77    pop         ecx
 00659A78    mov         dword ptr fs:[eax],edx
 00659A7B    pop         eax
 00659A7C    xor         ebx,ebx
>00659A7E    jmp         00659A85
>00659A80    jmp         @HandleAutoException
 00659A85    lea         eax,[ebp-10]
 00659A88    call        @IntfClear
 00659A8D    lea         eax,[ebp-0C]
 00659A90    call        @WStrClr
 00659A95    lea         eax,[ebp-8]
 00659A98    call        @IntfClear
 00659A9D    lea         eax,[ebp-4]
 00659AA0    call        @IntfClear
 00659AA5    mov         eax,ebx
 00659AA7    pop         edi
 00659AA8    pop         esi
 00659AA9    pop         ebx
 00659AAA    mov         esp,ebp
 00659AAC    pop         ebp
 00659AAD    ret         0C
*}
end;

//00659AC0
function TMSDOMDocument.get_doctype:IDOMDocumentType; safecall;
begin
{*
 00659AC0    push        ebp
 00659AC1    mov         ebp,esp
 00659AC3    push        0
 00659AC5    push        0
 00659AC7    push        ebx
 00659AC8    push        esi
 00659AC9    push        edi
 00659ACA    mov         ebx,dword ptr [ebp+8]
 00659ACD    mov         eax,dword ptr [ebp+0C]
 00659AD0    test        eax,eax
>00659AD2    je          00659AD8
 00659AD4    xor         edx,edx
 00659AD6    mov         dword ptr [eax],edx
 00659AD8    push        ebx
 00659AD9    xor         eax,eax
 00659ADB    push        ebp
 00659ADC    push        659B38
 00659AE1    push        dword ptr fs:[eax]
 00659AE4    mov         dword ptr fs:[eax],esp
 00659AE7    lea         eax,[ebp-4]
 00659AEA    call        @IntfClear
 00659AEF    push        eax
 00659AF0    lea         edx,[ebp-8]
 00659AF3    mov         eax,ebx
 00659AF5    call        TMSDOMDocument.GetMSDocument
 00659AFA    mov         eax,dword ptr [ebp-8]
 00659AFD    push        eax
 00659AFE    mov         eax,dword ptr [eax]
 00659B00    call        dword ptr [eax+0AC]
 00659B06    call        @CheckAutoResult
 00659B0B    mov         ecx,dword ptr [ebp-4]
 00659B0E    mov         dl,1
 00659B10    mov         eax,[00654318];TMSDOMDocumentType
 00659B15    call        TMSDOMNode.Create
 00659B1A    mov         edx,eax
 00659B1C    test        edx,edx
>00659B1E    je          00659B23
 00659B20    sub         edx,0FFFFFFD0
 00659B23    mov         eax,dword ptr [ebp+0C]
 00659B26    call        @IntfCopy
 00659B2B    xor         eax,eax
 00659B2D    pop         edx
 00659B2E    pop         ecx
 00659B2F    pop         ecx
 00659B30    mov         dword ptr fs:[eax],edx
 00659B33    pop         eax
 00659B34    xor         ebx,ebx
>00659B36    jmp         00659B3D
>00659B38    jmp         @HandleAutoException
 00659B3D    lea         eax,[ebp-8]
 00659B40    call        @IntfClear
 00659B45    lea         eax,[ebp-4]
 00659B48    call        @IntfClear
 00659B4D    mov         eax,ebx
 00659B4F    pop         edi
 00659B50    pop         esi
 00659B51    pop         ebx
 00659B52    pop         ecx
 00659B53    pop         ecx
 00659B54    pop         ebp
 00659B55    ret         8
*}
end;

//00659B58
function TMSDOMDocument.get_documentElement:IDOMElement; safecall;
begin
{*
 00659B58    push        ebp
 00659B59    mov         ebp,esp
 00659B5B    push        0
 00659B5D    push        0
 00659B5F    push        0
 00659B61    push        ebx
 00659B62    push        esi
 00659B63    push        edi
 00659B64    mov         ebx,dword ptr [ebp+8]
 00659B67    mov         eax,dword ptr [ebp+0C]
 00659B6A    test        eax,eax
>00659B6C    je          00659B72
 00659B6E    xor         edx,edx
 00659B70    mov         dword ptr [eax],edx
 00659B72    push        ebx
 00659B73    xor         eax,eax
 00659B75    push        ebp
 00659B76    push        659BCD
 00659B7B    push        dword ptr fs:[eax]
 00659B7E    mov         dword ptr fs:[eax],esp
 00659B81    lea         eax,[ebp-8]
 00659B84    call        @IntfClear
 00659B89    push        eax
 00659B8A    lea         edx,[ebp-0C]
 00659B8D    mov         eax,ebx
 00659B8F    call        TMSDOMDocument.GetMSDocument
 00659B94    mov         eax,dword ptr [ebp-0C]
 00659B97    push        eax
 00659B98    mov         eax,dword ptr [eax]
 00659B9A    call        dword ptr [eax+0B4]
 00659BA0    call        @CheckAutoResult
 00659BA5    mov         eax,dword ptr [ebp-8]
 00659BA8    lea         edx,[ebp-4]
 00659BAB    call        MakeNode
 00659BB0    mov         edx,dword ptr [ebp-4]
 00659BB3    mov         eax,dword ptr [ebp+0C]
 00659BB6    mov         ecx,659BF8
 00659BBB    call        @IntfCast
 00659BC0    xor         eax,eax
 00659BC2    pop         edx
 00659BC3    pop         ecx
 00659BC4    pop         ecx
 00659BC5    mov         dword ptr fs:[eax],edx
 00659BC8    pop         eax
 00659BC9    xor         ebx,ebx
>00659BCB    jmp         00659BD2
>00659BCD    jmp         @HandleAutoException
 00659BD2    lea         eax,[ebp-0C]
 00659BD5    call        @IntfClear
 00659BDA    lea         eax,[ebp-8]
 00659BDD    call        @IntfClear
 00659BE2    lea         eax,[ebp-4]
 00659BE5    call        @IntfClear
 00659BEA    mov         eax,ebx
 00659BEC    pop         edi
 00659BED    pop         esi
 00659BEE    pop         ebx
 00659BEF    mov         esp,ebp
 00659BF1    pop         ebp
 00659BF2    ret         8
*}
end;

//00659C08
function TMSDOMDocument.get_domImplementation:IDOMImplementation; safecall;
begin
{*
 00659C08    push        ebp
 00659C09    mov         ebp,esp
 00659C0B    push        0
 00659C0D    push        0
 00659C0F    push        ebx
 00659C10    push        esi
 00659C11    push        edi
 00659C12    mov         ebx,dword ptr [ebp+8]
 00659C15    mov         eax,dword ptr [ebp+0C]
 00659C18    test        eax,eax
>00659C1A    je          00659C20
 00659C1C    xor         edx,edx
 00659C1E    mov         dword ptr [eax],edx
 00659C20    push        ebx
 00659C21    xor         eax,eax
 00659C23    push        ebp
 00659C24    push        659C80
 00659C29    push        dword ptr fs:[eax]
 00659C2C    mov         dword ptr fs:[eax],esp
 00659C2F    lea         eax,[ebp-4]
 00659C32    call        @IntfClear
 00659C37    push        eax
 00659C38    lea         edx,[ebp-8]
 00659C3B    mov         eax,ebx
 00659C3D    call        TMSDOMDocument.GetMSDocument
 00659C42    mov         eax,dword ptr [ebp-8]
 00659C45    push        eax
 00659C46    mov         eax,dword ptr [eax]
 00659C48    call        dword ptr [eax+0B0]
 00659C4E    call        @CheckAutoResult
 00659C53    mov         ecx,dword ptr [ebp-4]
 00659C56    mov         dl,1
 00659C58    mov         eax,[00652700];TMSDOMImplementation
 00659C5D    call        TMSDOMImplementation.Create
 00659C62    mov         edx,eax
 00659C64    test        edx,edx
>00659C66    je          00659C6B
 00659C68    sub         edx,0FFFFFFF0
 00659C6B    mov         eax,dword ptr [ebp+0C]
 00659C6E    call        @IntfCopy
 00659C73    xor         eax,eax
 00659C75    pop         edx
 00659C76    pop         ecx
 00659C77    pop         ecx
 00659C78    mov         dword ptr fs:[eax],edx
 00659C7B    pop         eax
 00659C7C    xor         ebx,ebx
>00659C7E    jmp         00659C85
>00659C80    jmp         @HandleAutoException
 00659C85    lea         eax,[ebp-8]
 00659C88    call        @IntfClear
 00659C8D    lea         eax,[ebp-4]
 00659C90    call        @IntfClear
 00659C95    mov         eax,ebx
 00659C97    pop         edi
 00659C98    pop         esi
 00659C99    pop         ebx
 00659C9A    pop         ecx
 00659C9B    pop         ecx
 00659C9C    pop         ebp
 00659C9D    ret         8
*}
end;

//00659CA0
function TMSDOMDocument.getElementById(const elementId:Xmldom.DOMString):IDOMElement; safecall;
begin
{*
 00659CA0    push        ebp
 00659CA1    mov         ebp,esp
 00659CA3    push        ebx
 00659CA4    push        esi
 00659CA5    push        edi
 00659CA6    mov         eax,dword ptr [ebp+10]
 00659CA9    test        eax,eax
>00659CAB    je          00659CB1
 00659CAD    xor         edx,edx
 00659CAF    mov         dword ptr [eax],edx
 00659CB1    push        dword ptr [ebp+8]
 00659CB4    xor         eax,eax
 00659CB6    push        ebp
 00659CB7    push        659CDE
 00659CBC    push        dword ptr fs:[eax]
 00659CBF    mov         dword ptr fs:[eax],esp
 00659CC2    mov         edx,659CF8;'MSXML'
 00659CC7    mov         eax,659D10;'getElementById'
 00659CCC    call        DOMVendorNotSupported
 00659CD1    xor         eax,eax
 00659CD3    pop         edx
 00659CD4    pop         ecx
 00659CD5    pop         ecx
 00659CD6    mov         dword ptr fs:[eax],edx
 00659CD9    pop         eax
 00659CDA    xor         ebx,ebx
>00659CDC    jmp         00659CE3
>00659CDE    jmp         @HandleAutoException
 00659CE3    mov         eax,ebx
 00659CE5    pop         edi
 00659CE6    pop         esi
 00659CE7    pop         ebx
 00659CE8    pop         ebp
 00659CE9    ret         0C
*}
end;

//00659D30
{*function sub_00659D30(?:?; ?:?; ?:?):?;
begin
 00659D30    push        ebp
 00659D31    mov         ebp,esp
 00659D33    push        0
 00659D35    push        0
 00659D37    push        0
 00659D39    push        ebx
 00659D3A    push        esi
 00659D3B    push        edi
 00659D3C    mov         ebx,dword ptr [ebp+8]
 00659D3F    mov         eax,dword ptr [ebp+10]
 00659D42    test        eax,eax
>00659D44    je          00659D4A
 00659D46    xor         edx,edx
 00659D48    mov         dword ptr [eax],edx
 00659D4A    push        ebx
 00659D4B    xor         eax,eax
 00659D4D    push        ebp
 00659D4E    push        659DA4
 00659D53    push        dword ptr fs:[eax]
 00659D56    mov         dword ptr fs:[eax],esp
 00659D59    lea         eax,[ebp-4]
 00659D5C    call        @IntfClear
 00659D61    push        eax
 00659D62    lea         eax,[ebp-8]
 00659D65    mov         edx,dword ptr [ebp+0C]
 00659D68    call        @WStrFromUStr
 00659D6D    mov         eax,dword ptr [ebp-8]
 00659D70    push        eax
 00659D71    lea         edx,[ebp-0C]
 00659D74    mov         eax,ebx
 00659D76    call        TMSDOMDocument.GetMSDocument
 00659D7B    mov         eax,dword ptr [ebp-0C]
 00659D7E    push        eax
 00659D7F    mov         eax,dword ptr [eax]
 00659D81    call        dword ptr [eax+0DC]
 00659D87    call        @CheckAutoResult
 00659D8C    mov         eax,dword ptr [ebp-4]
 00659D8F    mov         edx,dword ptr [ebp+10]
 00659D92    call        MakeNamedNodeMap
 00659D97    xor         eax,eax
 00659D99    pop         edx
 00659D9A    pop         ecx
 00659D9B    pop         ecx
 00659D9C    mov         dword ptr fs:[eax],edx
 00659D9F    pop         eax
 00659DA0    xor         ebx,ebx
>00659DA2    jmp         00659DA9
>00659DA4    jmp         @HandleAutoException
 00659DA9    lea         eax,[ebp-0C]
 00659DAC    call        @IntfClear
 00659DB1    lea         eax,[ebp-8]
 00659DB4    call        @WStrClr
 00659DB9    lea         eax,[ebp-4]
 00659DBC    call        @IntfClear
 00659DC1    mov         eax,ebx
 00659DC3    pop         edi
 00659DC4    pop         esi
 00659DC5    pop         ebx
 00659DC6    mov         esp,ebp
 00659DC8    pop         ebp
 00659DC9    ret         0C
end;*}

//00659DCC
function TMSDOMElement.getElementsByTagNameNS(const namespaceURI:Xmldom.DOMString; const localName:Xmldom.DOMString):IDOMNodeList; safecall;
begin
{*
 00659DCC    push        ebp
 00659DCD    mov         ebp,esp
 00659DCF    push        ebx
 00659DD0    push        esi
 00659DD1    push        edi
 00659DD2    mov         eax,dword ptr [ebp+14]
 00659DD5    test        eax,eax
>00659DD7    je          00659DDD
 00659DD9    xor         edx,edx
 00659DDB    mov         dword ptr [eax],edx
 00659DDD    push        dword ptr [ebp+8]
 00659DE0    xor         eax,eax
 00659DE2    push        ebp
 00659DE3    push        659E0A
 00659DE8    push        dword ptr fs:[eax]
 00659DEB    mov         dword ptr fs:[eax],esp
 00659DEE    mov         edx,659E24;'MSXML'
 00659DF3    mov         eax,659E3C;'getElementsByTagNameNS'
 00659DF8    call        DOMVendorNotSupported
 00659DFD    xor         eax,eax
 00659DFF    pop         edx
 00659E00    pop         ecx
 00659E01    pop         ecx
 00659E02    mov         dword ptr fs:[eax],edx
 00659E05    pop         eax
 00659E06    xor         ebx,ebx
>00659E08    jmp         00659E0F
>00659E0A    jmp         @HandleAutoException
 00659E0F    mov         eax,ebx
 00659E11    pop         edi
 00659E12    pop         esi
 00659E13    pop         ebx
 00659E14    pop         ebp
 00659E15    ret         10
*}
end;

//00659E6C
function TMSDOMDocument.importNode(importedNode:Xmldom.IDOMNode; deep:WordBool):IDOMNode; safecall;
begin
{*
 00659E6C    push        ebp
 00659E6D    mov         ebp,esp
 00659E6F    push        ebx
 00659E70    push        esi
 00659E71    push        edi
 00659E72    mov         eax,dword ptr [ebp+0C]
 00659E75    call        @IntfAddRef
 00659E7A    mov         eax,dword ptr [ebp+14]
 00659E7D    test        eax,eax
>00659E7F    je          00659E85
 00659E81    xor         edx,edx
 00659E83    mov         dword ptr [eax],edx
 00659E85    push        dword ptr [ebp+8]
 00659E88    xor         eax,eax
 00659E8A    push        ebp
 00659E8B    push        659EB2
 00659E90    push        dword ptr fs:[eax]
 00659E93    mov         dword ptr fs:[eax],esp
 00659E96    mov         edx,659ED4;'MSXML'
 00659E9B    mov         eax,659EEC;'importNode'
 00659EA0    call        DOMVendorNotSupported
 00659EA5    xor         eax,eax
 00659EA7    pop         edx
 00659EA8    pop         ecx
 00659EA9    pop         ecx
 00659EAA    mov         dword ptr fs:[eax],edx
 00659EAD    pop         eax
 00659EAE    xor         ebx,ebx
>00659EB0    jmp         00659EB7
>00659EB2    jmp         @HandleAutoException
 00659EB7    lea         eax,[ebp+0C]
 00659EBA    call        @IntfClear
 00659EBF    mov         eax,ebx
 00659EC1    pop         edi
 00659EC2    pop         esi
 00659EC3    pop         ebx
 00659EC4    pop         ebp
 00659EC5    ret         10
*}
end;

//00659F04
procedure TMSDOMDocument.set_documentElement(const IDOMElement:Xmldom.IDOMElement); safecall;
begin
{*
 00659F04    push        ebp
 00659F05    mov         ebp,esp
 00659F07    mov         ecx,4
 00659F0C    push        0
 00659F0E    push        0
 00659F10    dec         ecx
>00659F11    jne         00659F0C
 00659F13    push        ecx
 00659F14    push        ebx
 00659F15    push        esi
 00659F16    push        edi
 00659F17    mov         esi,dword ptr [ebp+0C]
 00659F1A    mov         ebx,dword ptr [ebp+8]
 00659F1D    push        ebx
 00659F1E    xor         eax,eax
 00659F20    push        ebp
 00659F21    push        659FEB
 00659F26    push        dword ptr fs:[eax]
 00659F29    mov         dword ptr fs:[eax],esp
 00659F2C    test        esi,esi
>00659F2E    je          00659F6B
 00659F30    lea         edx,[ebp-8]
 00659F33    mov         eax,esi
 00659F35    call        GetMSNode
 00659F3A    mov         edx,dword ptr [ebp-8]
 00659F3D    lea         eax,[ebp-4]
 00659F40    mov         ecx,65A048
 00659F45    call        @IntfCast
 00659F4A    mov         eax,dword ptr [ebp-4]
 00659F4D    push        eax
 00659F4E    lea         edx,[ebp-0C]
 00659F51    mov         eax,ebx
 00659F53    call        TMSDOMDocument.GetMSDocument
 00659F58    mov         eax,dword ptr [ebp-0C]
 00659F5B    push        eax
 00659F5C    mov         eax,dword ptr [eax]
 00659F5E    call        dword ptr [eax+0B8]
 00659F64    call        @CheckAutoResult
>00659F69    jmp         00659FDE
 00659F6B    lea         eax,[ebp-10]
 00659F6E    call        @IntfClear
 00659F73    push        eax
 00659F74    lea         edx,[ebp-14]
 00659F77    mov         eax,ebx
 00659F79    call        TMSDOMDocument.GetMSDocument
 00659F7E    mov         eax,dword ptr [ebp-14]
 00659F81    push        eax
 00659F82    mov         eax,dword ptr [eax]
 00659F84    call        dword ptr [eax+0B4]
 00659F8A    call        @CheckAutoResult
 00659F8F    cmp         dword ptr [ebp-10],0
>00659F93    je          00659FDE
 00659F95    lea         eax,[ebp-18]
 00659F98    call        @IntfClear
 00659F9D    push        eax
 00659F9E    lea         eax,[ebp-1C]
 00659FA1    call        @IntfClear
 00659FA6    push        eax
 00659FA7    lea         edx,[ebp-20]
 00659FAA    mov         eax,ebx
 00659FAC    call        TMSDOMDocument.GetMSDocument
 00659FB1    mov         eax,dword ptr [ebp-20]
 00659FB4    push        eax
 00659FB5    mov         eax,dword ptr [eax]
 00659FB7    call        dword ptr [eax+0B4]
 00659FBD    call        @CheckAutoResult
 00659FC2    mov         eax,dword ptr [ebp-1C]
 00659FC5    push        eax
 00659FC6    lea         edx,[ebp-24]
 00659FC9    mov         eax,ebx
 00659FCB    call        TMSDOMDocument.GetMSDocument
 00659FD0    mov         eax,dword ptr [ebp-24]
 00659FD3    push        eax
 00659FD4    mov         eax,dword ptr [eax]
 00659FD6    call        dword ptr [eax+50]
 00659FD9    call        @CheckAutoResult
 00659FDE    xor         eax,eax
 00659FE0    pop         edx
 00659FE1    pop         ecx
 00659FE2    pop         ecx
 00659FE3    mov         dword ptr fs:[eax],edx
 00659FE6    pop         eax
 00659FE7    xor         ebx,ebx
>00659FE9    jmp         00659FF0
>00659FEB    jmp         @HandleAutoException
 00659FF0    lea         eax,[ebp-24]
 00659FF3    mov         edx,dword ptr ds:[518304];IXMLDOMDocument
 00659FF9    mov         ecx,2
 00659FFE    call        @FinalizeArray
 0065A003    lea         eax,[ebp-1C]
 0065A006    call        @IntfClear
 0065A00B    lea         eax,[ebp-18]
 0065A00E    call        @IntfClear
 0065A013    lea         eax,[ebp-14]
 0065A016    call        @IntfClear
 0065A01B    lea         eax,[ebp-10]
 0065A01E    call        @IntfClear
 0065A023    lea         eax,[ebp-0C]
 0065A026    call        @IntfClear
 0065A02B    lea         eax,[ebp-8]
 0065A02E    call        @IntfClear
 0065A033    lea         eax,[ebp-4]
 0065A036    call        @IntfClear
 0065A03B    mov         eax,ebx
 0065A03D    pop         edi
 0065A03E    pop         esi
 0065A03F    pop         ebx
 0065A040    mov         esp,ebp
 0065A042    pop         ebp
 0065A043    ret         8
*}
end;

//0065A058
function TMSDOMDocument.get_async:Boolean; safecall;
begin
{*
 0065A058    push        ebp
 0065A059    mov         ebp,esp
 0065A05B    add         esp,0FFFFFFF8
 0065A05E    push        ebx
 0065A05F    push        esi
 0065A060    push        edi
 0065A061    xor         eax,eax
 0065A063    mov         dword ptr [ebp-8],eax
 0065A066    mov         ebx,dword ptr [ebp+8]
 0065A069    push        ebx
 0065A06A    xor         eax,eax
 0065A06C    push        ebp
 0065A06D    push        65A0B1
 0065A072    push        dword ptr fs:[eax]
 0065A075    mov         dword ptr fs:[eax],esp
 0065A078    lea         eax,[ebp-4]
 0065A07B    push        eax
 0065A07C    lea         edx,[ebp-8]
 0065A07F    mov         eax,ebx
 0065A081    call        TMSDOMDocument.GetMSDocument
 0065A086    mov         eax,dword ptr [ebp-8]
 0065A089    push        eax
 0065A08A    mov         eax,dword ptr [eax]
 0065A08C    call        dword ptr [eax+0F8]
 0065A092    call        @CheckAutoResult
 0065A097    cmp         word ptr [ebp-4],1
 0065A09C    sbb         eax,eax
 0065A09E    inc         eax
 0065A09F    mov         edx,dword ptr [ebp+0C]
 0065A0A2    mov         byte ptr [edx],al
 0065A0A4    xor         eax,eax
 0065A0A6    pop         edx
 0065A0A7    pop         ecx
 0065A0A8    pop         ecx
 0065A0A9    mov         dword ptr fs:[eax],edx
 0065A0AC    pop         eax
 0065A0AD    xor         ebx,ebx
>0065A0AF    jmp         0065A0B6
>0065A0B1    jmp         @HandleAutoException
 0065A0B6    lea         eax,[ebp-8]
 0065A0B9    call        @IntfClear
 0065A0BE    mov         eax,ebx
 0065A0C0    pop         edi
 0065A0C1    pop         esi
 0065A0C2    pop         ebx
 0065A0C3    pop         ecx
 0065A0C4    pop         ecx
 0065A0C5    pop         ebp
 0065A0C6    ret         8
*}
end;

//0065A0CC
procedure TMSDOMDocument.set_async(Value:Boolean); safecall;
begin
{*
 0065A0CC    push        ebp
 0065A0CD    mov         ebp,esp
 0065A0CF    push        0
 0065A0D1    push        ebx
 0065A0D2    push        esi
 0065A0D3    push        edi
 0065A0D4    mov         ebx,dword ptr [ebp+8]
 0065A0D7    push        ebx
 0065A0D8    xor         eax,eax
 0065A0DA    push        ebp
 0065A0DB    push        65A116
 0065A0E0    push        dword ptr fs:[eax]
 0065A0E3    mov         dword ptr fs:[eax],esp
 0065A0E6    cmp         byte ptr [ebp+0C],1
 0065A0EA    cmc
 0065A0EB    sbb         eax,eax
 0065A0ED    push        eax
 0065A0EE    lea         edx,[ebp-4]
 0065A0F1    mov         eax,ebx
 0065A0F3    call        TMSDOMDocument.GetMSDocument
 0065A0F8    mov         eax,dword ptr [ebp-4]
 0065A0FB    push        eax
 0065A0FC    mov         eax,dword ptr [eax]
 0065A0FE    call        dword ptr [eax+0FC]
 0065A104    call        @CheckAutoResult
 0065A109    xor         eax,eax
 0065A10B    pop         edx
 0065A10C    pop         ecx
 0065A10D    pop         ecx
 0065A10E    mov         dword ptr fs:[eax],edx
 0065A111    pop         eax
 0065A112    xor         ebx,ebx
>0065A114    jmp         0065A11B
>0065A116    jmp         @HandleAutoException
 0065A11B    lea         eax,[ebp-4]
 0065A11E    call        @IntfClear
 0065A123    mov         eax,ebx
 0065A125    pop         edi
 0065A126    pop         esi
 0065A127    pop         ebx
 0065A128    pop         ecx
 0065A129    pop         ebp
 0065A12A    ret         8
*}
end;

//0065A130
function TMSDOMDocument.get_preserveWhiteSpace:Boolean; safecall;
begin
{*
 0065A130    push        ebp
 0065A131    mov         ebp,esp
 0065A133    add         esp,0FFFFFFF8
 0065A136    push        ebx
 0065A137    push        esi
 0065A138    push        edi
 0065A139    xor         eax,eax
 0065A13B    mov         dword ptr [ebp-8],eax
 0065A13E    mov         ebx,dword ptr [ebp+8]
 0065A141    push        ebx
 0065A142    xor         eax,eax
 0065A144    push        ebp
 0065A145    push        65A189
 0065A14A    push        dword ptr fs:[eax]
 0065A14D    mov         dword ptr fs:[eax],esp
 0065A150    lea         eax,[ebp-4]
 0065A153    push        eax
 0065A154    lea         edx,[ebp-8]
 0065A157    mov         eax,ebx
 0065A159    call        TMSDOMDocument.GetMSDocument
 0065A15E    mov         eax,dword ptr [ebp-8]
 0065A161    push        eax
 0065A162    mov         eax,dword ptr [eax]
 0065A164    call        dword ptr [eax+11C]
 0065A16A    call        @CheckAutoResult
 0065A16F    cmp         word ptr [ebp-4],1
 0065A174    sbb         eax,eax
 0065A176    inc         eax
 0065A177    mov         edx,dword ptr [ebp+0C]
 0065A17A    mov         byte ptr [edx],al
 0065A17C    xor         eax,eax
 0065A17E    pop         edx
 0065A17F    pop         ecx
 0065A180    pop         ecx
 0065A181    mov         dword ptr fs:[eax],edx
 0065A184    pop         eax
 0065A185    xor         ebx,ebx
>0065A187    jmp         0065A18E
>0065A189    jmp         @HandleAutoException
 0065A18E    lea         eax,[ebp-8]
 0065A191    call        @IntfClear
 0065A196    mov         eax,ebx
 0065A198    pop         edi
 0065A199    pop         esi
 0065A19A    pop         ebx
 0065A19B    pop         ecx
 0065A19C    pop         ecx
 0065A19D    pop         ebp
 0065A19E    ret         8
*}
end;

//0065A1A4
function TMSDOMDocument.get_resolveExternals:Boolean; safecall;
begin
{*
 0065A1A4    push        ebp
 0065A1A5    mov         ebp,esp
 0065A1A7    add         esp,0FFFFFFF8
 0065A1AA    push        ebx
 0065A1AB    push        esi
 0065A1AC    push        edi
 0065A1AD    xor         eax,eax
 0065A1AF    mov         dword ptr [ebp-8],eax
 0065A1B2    mov         ebx,dword ptr [ebp+8]
 0065A1B5    push        ebx
 0065A1B6    xor         eax,eax
 0065A1B8    push        ebp
 0065A1B9    push        65A1FD
 0065A1BE    push        dword ptr fs:[eax]
 0065A1C1    mov         dword ptr fs:[eax],esp
 0065A1C4    lea         eax,[ebp-4]
 0065A1C7    push        eax
 0065A1C8    lea         edx,[ebp-8]
 0065A1CB    mov         eax,ebx
 0065A1CD    call        TMSDOMDocument.GetMSDocument
 0065A1D2    mov         eax,dword ptr [ebp-8]
 0065A1D5    push        eax
 0065A1D6    mov         eax,dword ptr [eax]
 0065A1D8    call        dword ptr [eax+114]
 0065A1DE    call        @CheckAutoResult
 0065A1E3    cmp         word ptr [ebp-4],1
 0065A1E8    sbb         eax,eax
 0065A1EA    inc         eax
 0065A1EB    mov         edx,dword ptr [ebp+0C]
 0065A1EE    mov         byte ptr [edx],al
 0065A1F0    xor         eax,eax
 0065A1F2    pop         edx
 0065A1F3    pop         ecx
 0065A1F4    pop         ecx
 0065A1F5    mov         dword ptr fs:[eax],edx
 0065A1F8    pop         eax
 0065A1F9    xor         ebx,ebx
>0065A1FB    jmp         0065A202
>0065A1FD    jmp         @HandleAutoException
 0065A202    lea         eax,[ebp-8]
 0065A205    call        @IntfClear
 0065A20A    mov         eax,ebx
 0065A20C    pop         edi
 0065A20D    pop         esi
 0065A20E    pop         ebx
 0065A20F    pop         ecx
 0065A210    pop         ecx
 0065A211    pop         ebp
 0065A212    ret         8
*}
end;

//0065A218
function TMSDOMDocument.get_validate:Boolean; safecall;
begin
{*
 0065A218    push        ebp
 0065A219    mov         ebp,esp
 0065A21B    add         esp,0FFFFFFF8
 0065A21E    push        ebx
 0065A21F    push        esi
 0065A220    push        edi
 0065A221    xor         eax,eax
 0065A223    mov         dword ptr [ebp-8],eax
 0065A226    mov         ebx,dword ptr [ebp+8]
 0065A229    push        ebx
 0065A22A    xor         eax,eax
 0065A22C    push        ebp
 0065A22D    push        65A271
 0065A232    push        dword ptr fs:[eax]
 0065A235    mov         dword ptr fs:[eax],esp
 0065A238    lea         eax,[ebp-4]
 0065A23B    push        eax
 0065A23C    lea         edx,[ebp-8]
 0065A23F    mov         eax,ebx
 0065A241    call        TMSDOMDocument.GetMSDocument
 0065A246    mov         eax,dword ptr [ebp-8]
 0065A249    push        eax
 0065A24A    mov         eax,dword ptr [eax]
 0065A24C    call        dword ptr [eax+10C]
 0065A252    call        @CheckAutoResult
 0065A257    cmp         word ptr [ebp-4],1
 0065A25C    sbb         eax,eax
 0065A25E    inc         eax
 0065A25F    mov         edx,dword ptr [ebp+0C]
 0065A262    mov         byte ptr [edx],al
 0065A264    xor         eax,eax
 0065A266    pop         edx
 0065A267    pop         ecx
 0065A268    pop         ecx
 0065A269    mov         dword ptr fs:[eax],edx
 0065A26C    pop         eax
 0065A26D    xor         ebx,ebx
>0065A26F    jmp         0065A276
>0065A271    jmp         @HandleAutoException
 0065A276    lea         eax,[ebp-8]
 0065A279    call        @IntfClear
 0065A27E    mov         eax,ebx
 0065A280    pop         edi
 0065A281    pop         esi
 0065A282    pop         ebx
 0065A283    pop         ecx
 0065A284    pop         ecx
 0065A285    pop         ebp
 0065A286    ret         8
*}
end;

//0065A28C
procedure TMSDOMDocument.set_preserveWhiteSpace(Value:Boolean); safecall;
begin
{*
 0065A28C    push        ebp
 0065A28D    mov         ebp,esp
 0065A28F    push        0
 0065A291    push        ebx
 0065A292    push        esi
 0065A293    push        edi
 0065A294    mov         ebx,dword ptr [ebp+8]
 0065A297    push        ebx
 0065A298    xor         eax,eax
 0065A29A    push        ebp
 0065A29B    push        65A2D6
 0065A2A0    push        dword ptr fs:[eax]
 0065A2A3    mov         dword ptr fs:[eax],esp
 0065A2A6    cmp         byte ptr [ebp+0C],1
 0065A2AA    cmc
 0065A2AB    sbb         eax,eax
 0065A2AD    push        eax
 0065A2AE    lea         edx,[ebp-4]
 0065A2B1    mov         eax,ebx
 0065A2B3    call        TMSDOMDocument.GetMSDocument
 0065A2B8    mov         eax,dword ptr [ebp-4]
 0065A2BB    push        eax
 0065A2BC    mov         eax,dword ptr [eax]
 0065A2BE    call        dword ptr [eax+120]
 0065A2C4    call        @CheckAutoResult
 0065A2C9    xor         eax,eax
 0065A2CB    pop         edx
 0065A2CC    pop         ecx
 0065A2CD    pop         ecx
 0065A2CE    mov         dword ptr fs:[eax],edx
 0065A2D1    pop         eax
 0065A2D2    xor         ebx,ebx
>0065A2D4    jmp         0065A2DB
>0065A2D6    jmp         @HandleAutoException
 0065A2DB    lea         eax,[ebp-4]
 0065A2DE    call        @IntfClear
 0065A2E3    mov         eax,ebx
 0065A2E5    pop         edi
 0065A2E6    pop         esi
 0065A2E7    pop         ebx
 0065A2E8    pop         ecx
 0065A2E9    pop         ebp
 0065A2EA    ret         8
*}
end;

//0065A2F0
procedure TMSDOMDocument.set_resolveExternals(Value:Boolean); safecall;
begin
{*
 0065A2F0    push        ebp
 0065A2F1    mov         ebp,esp
 0065A2F3    push        0
 0065A2F5    push        ebx
 0065A2F6    push        esi
 0065A2F7    push        edi
 0065A2F8    mov         ebx,dword ptr [ebp+8]
 0065A2FB    push        ebx
 0065A2FC    xor         eax,eax
 0065A2FE    push        ebp
 0065A2FF    push        65A33A
 0065A304    push        dword ptr fs:[eax]
 0065A307    mov         dword ptr fs:[eax],esp
 0065A30A    cmp         byte ptr [ebp+0C],1
 0065A30E    cmc
 0065A30F    sbb         eax,eax
 0065A311    push        eax
 0065A312    lea         edx,[ebp-4]
 0065A315    mov         eax,ebx
 0065A317    call        TMSDOMDocument.GetMSDocument
 0065A31C    mov         eax,dword ptr [ebp-4]
 0065A31F    push        eax
 0065A320    mov         eax,dword ptr [eax]
 0065A322    call        dword ptr [eax+118]
 0065A328    call        @CheckAutoResult
 0065A32D    xor         eax,eax
 0065A32F    pop         edx
 0065A330    pop         ecx
 0065A331    pop         ecx
 0065A332    mov         dword ptr fs:[eax],edx
 0065A335    pop         eax
 0065A336    xor         ebx,ebx
>0065A338    jmp         0065A33F
>0065A33A    jmp         @HandleAutoException
 0065A33F    lea         eax,[ebp-4]
 0065A342    call        @IntfClear
 0065A347    mov         eax,ebx
 0065A349    pop         edi
 0065A34A    pop         esi
 0065A34B    pop         ebx
 0065A34C    pop         ecx
 0065A34D    pop         ebp
 0065A34E    ret         8
*}
end;

//0065A354
procedure TMSDOMDocument.set_validate(Value:Boolean); safecall;
begin
{*
 0065A354    push        ebp
 0065A355    mov         ebp,esp
 0065A357    push        0
 0065A359    push        ebx
 0065A35A    push        esi
 0065A35B    push        edi
 0065A35C    mov         ebx,dword ptr [ebp+8]
 0065A35F    push        ebx
 0065A360    xor         eax,eax
 0065A362    push        ebp
 0065A363    push        65A39E
 0065A368    push        dword ptr fs:[eax]
 0065A36B    mov         dword ptr fs:[eax],esp
 0065A36E    cmp         byte ptr [ebp+0C],1
 0065A372    cmc
 0065A373    sbb         eax,eax
 0065A375    push        eax
 0065A376    lea         edx,[ebp-4]
 0065A379    mov         eax,ebx
 0065A37B    call        TMSDOMDocument.GetMSDocument
 0065A380    mov         eax,dword ptr [ebp-4]
 0065A383    push        eax
 0065A384    mov         eax,dword ptr [eax]
 0065A386    call        dword ptr [eax+110]
 0065A38C    call        @CheckAutoResult
 0065A391    xor         eax,eax
 0065A393    pop         edx
 0065A394    pop         ecx
 0065A395    pop         ecx
 0065A396    mov         dword ptr fs:[eax],edx
 0065A399    pop         eax
 0065A39A    xor         ebx,ebx
>0065A39C    jmp         0065A3A3
>0065A39E    jmp         @HandleAutoException
 0065A3A3    lea         eax,[ebp-4]
 0065A3A6    call        @IntfClear
 0065A3AB    mov         eax,ebx
 0065A3AD    pop         edi
 0065A3AE    pop         esi
 0065A3AF    pop         ebx
 0065A3B0    pop         ecx
 0065A3B1    pop         ebp
 0065A3B2    ret         8
*}
end;

//0065A3B8
function TMSDOMDocument.asyncLoadState:Integer; safecall;
begin
{*
 0065A3B8    push        ebp
 0065A3B9    mov         ebp,esp
 0065A3BB    add         esp,0FFFFFFF8
 0065A3BE    push        ebx
 0065A3BF    push        esi
 0065A3C0    push        edi
 0065A3C1    xor         eax,eax
 0065A3C3    mov         dword ptr [ebp-8],eax
 0065A3C6    mov         ebx,dword ptr [ebp+8]
 0065A3C9    push        ebx
 0065A3CA    xor         eax,eax
 0065A3CC    push        ebp
 0065A3CD    push        65A40C
 0065A3D2    push        dword ptr fs:[eax]
 0065A3D5    mov         dword ptr fs:[eax],esp
 0065A3D8    lea         eax,[ebp-4]
 0065A3DB    push        eax
 0065A3DC    lea         edx,[ebp-8]
 0065A3DF    mov         eax,ebx
 0065A3E1    call        TMSDOMDocument.GetMSDocument
 0065A3E6    mov         eax,dword ptr [ebp-8]
 0065A3E9    push        eax
 0065A3EA    mov         eax,dword ptr [eax]
 0065A3EC    call        dword ptr [eax+0EC]
 0065A3F2    call        @CheckAutoResult
 0065A3F7    mov         eax,dword ptr [ebp-4]
 0065A3FA    mov         edx,dword ptr [ebp+0C]
 0065A3FD    mov         dword ptr [edx],eax
 0065A3FF    xor         eax,eax
 0065A401    pop         edx
 0065A402    pop         ecx
 0065A403    pop         ecx
 0065A404    mov         dword ptr fs:[eax],edx
 0065A407    pop         eax
 0065A408    xor         ebx,ebx
>0065A40A    jmp         0065A411
>0065A40C    jmp         @HandleAutoException
 0065A411    lea         eax,[ebp-8]
 0065A414    call        @IntfClear
 0065A419    mov         eax,ebx
 0065A41B    pop         edi
 0065A41C    pop         esi
 0065A41D    pop         ebx
 0065A41E    pop         ecx
 0065A41F    pop         ecx
 0065A420    pop         ebp
 0065A421    ret         8
*}
end;

//0065A424
function TMSDOMDocument.get_xml:DOMString; safecall;
begin
{*
 0065A424    push        ebp
 0065A425    mov         ebp,esp
 0065A427    push        0
 0065A429    push        0
 0065A42B    push        ebx
 0065A42C    push        esi
 0065A42D    push        edi
 0065A42E    mov         ebx,dword ptr [ebp+8]
 0065A431    mov         eax,dword ptr [ebp+0C]
 0065A434    test        eax,eax
>0065A436    je          0065A43C
 0065A438    xor         edx,edx
 0065A43A    mov         dword ptr [eax],edx
 0065A43C    push        ebx
 0065A43D    xor         eax,eax
 0065A43F    push        ebp
 0065A440    push        65A487
 0065A445    push        dword ptr fs:[eax]
 0065A448    mov         dword ptr fs:[eax],esp
 0065A44B    lea         eax,[ebp-4]
 0065A44E    call        @WStrClr
 0065A453    push        eax
 0065A454    lea         edx,[ebp-8]
 0065A457    mov         eax,ebx
 0065A459    call        TMSDOMDocument.GetMSDocument
 0065A45E    mov         eax,dword ptr [ebp-8]
 0065A461    push        eax
 0065A462    mov         eax,dword ptr [eax]
 0065A464    call        dword ptr [eax+88]
 0065A46A    call        @CheckAutoResult
 0065A46F    mov         edx,dword ptr [ebp-4]
 0065A472    mov         eax,dword ptr [ebp+0C]
 0065A475    call        @UStrFromWStr
 0065A47A    xor         eax,eax
 0065A47C    pop         edx
 0065A47D    pop         ecx
 0065A47E    pop         ecx
 0065A47F    mov         dword ptr fs:[eax],edx
 0065A482    pop         eax
 0065A483    xor         ebx,ebx
>0065A485    jmp         0065A48C
>0065A487    jmp         @HandleAutoException
 0065A48C    lea         eax,[ebp-8]
 0065A48F    call        @IntfClear
 0065A494    lea         eax,[ebp-4]
 0065A497    call        @WStrClr
 0065A49C    mov         eax,ebx
 0065A49E    pop         edi
 0065A49F    pop         esi
 0065A4A0    pop         ebx
 0065A4A1    pop         ecx
 0065A4A2    pop         ecx
 0065A4A3    pop         ebp
 0065A4A4    ret         8
*}
end;

//0065A4A8
function TMSDOMDocument.load(source:OleVariant):WordBool; safecall;
begin
{*
 0065A4A8    push        ebp
 0065A4A9    mov         ebp,esp
 0065A4AB    add         esp,0FFFFFFF8
 0065A4AE    push        ebx
 0065A4AF    push        esi
 0065A4B0    push        edi
 0065A4B1    xor         eax,eax
 0065A4B3    mov         dword ptr [ebp-8],eax
 0065A4B6    mov         ebx,dword ptr [ebp+8]
 0065A4B9    lea         eax,[ebp+0C]
 0065A4BC    call        @VarAddRef
 0065A4C1    push        ebx
 0065A4C2    xor         eax,eax
 0065A4C4    push        ebp
 0065A4C5    push        65A512
 0065A4CA    push        dword ptr fs:[eax]
 0065A4CD    mov         dword ptr fs:[eax],esp
 0065A4D0    lea         eax,[ebp-4]
 0065A4D3    push        eax
 0065A4D4    push        dword ptr [ebp+18]
 0065A4D7    push        dword ptr [ebp+14]
 0065A4DA    push        dword ptr [ebp+10]
 0065A4DD    push        dword ptr [ebp+0C]
 0065A4E0    lea         edx,[ebp-8]
 0065A4E3    mov         eax,ebx
 0065A4E5    call        TMSDOMDocument.GetMSDocument
 0065A4EA    mov         eax,dword ptr [ebp-8]
 0065A4ED    push        eax
 0065A4EE    mov         eax,dword ptr [eax]
 0065A4F0    call        dword ptr [eax+0E8]
 0065A4F6    call        @CheckAutoResult
 0065A4FB    movzx       eax,word ptr [ebp-4]
 0065A4FF    mov         edx,dword ptr [ebp+1C]
 0065A502    mov         word ptr [edx],ax
 0065A505    xor         eax,eax
 0065A507    pop         edx
 0065A508    pop         ecx
 0065A509    pop         ecx
 0065A50A    mov         dword ptr fs:[eax],edx
 0065A50D    pop         eax
 0065A50E    xor         ebx,ebx
>0065A510    jmp         0065A517
>0065A512    jmp         @HandleAutoException
 0065A517    lea         eax,[ebp-8]
 0065A51A    call        @IntfClear
 0065A51F    lea         eax,[ebp+0C]
 0065A522    call        @VarClr
 0065A527    mov         eax,ebx
 0065A529    pop         edi
 0065A52A    pop         esi
 0065A52B    pop         ebx
 0065A52C    pop         ecx
 0065A52D    pop         ecx
 0065A52E    pop         ebp
 0065A52F    ret         18
*}
end;

//0065A534
function TMSDOMDocument.loadFromStream(const stream:Classes.TStream):WordBool; safecall;
begin
{*
 0065A534    push        ebp
 0065A535    mov         ebp,esp
 0065A537    xor         ecx,ecx
 0065A539    push        ecx
 0065A53A    push        ecx
 0065A53B    push        ecx
 0065A53C    push        ecx
 0065A53D    push        ecx
 0065A53E    push        ecx
 0065A53F    push        ecx
 0065A540    push        ebx
 0065A541    push        esi
 0065A542    push        edi
 0065A543    mov         ebx,dword ptr [ebp+8]
 0065A546    push        ebx
 0065A547    xor         eax,eax
 0065A549    push        ebp
 0065A54A    push        65A5C4
 0065A54F    push        dword ptr fs:[eax]
 0065A552    mov         dword ptr fs:[eax],esp
 0065A555    push        0
 0065A557    mov         ecx,dword ptr [ebp+0C]
 0065A55A    mov         dl,1
 0065A55C    mov         eax,[004738F8];TStreamAdapter
 0065A561    call        TStreamAdapter.Create
 0065A566    mov         edx,eax
 0065A568    test        edx,edx
>0065A56A    je          0065A56F
 0065A56C    sub         edx,0FFFFFFEC
 0065A56F    lea         eax,[ebp-4]
 0065A572    call        @IntfCopy
 0065A577    lea         eax,[ebp-8]
 0065A57A    push        eax
 0065A57B    lea         eax,[ebp-18]
 0065A57E    mov         edx,dword ptr [ebp-4]
 0065A581    call        @VarFromIntf
 0065A586    push        dword ptr [ebp-0C]
 0065A589    push        dword ptr [ebp-10]
 0065A58C    push        dword ptr [ebp-14]
 0065A58F    push        dword ptr [ebp-18]
 0065A592    lea         edx,[ebp-1C]
 0065A595    mov         eax,ebx
 0065A597    call        TMSDOMDocument.GetMSDocument
 0065A59C    mov         eax,dword ptr [ebp-1C]
 0065A59F    push        eax
 0065A5A0    mov         eax,dword ptr [eax]
 0065A5A2    call        dword ptr [eax+0E8]
 0065A5A8    call        @CheckAutoResult
 0065A5AD    movzx       eax,word ptr [ebp-8]
 0065A5B1    mov         edx,dword ptr [ebp+10]
 0065A5B4    mov         word ptr [edx],ax
 0065A5B7    xor         eax,eax
 0065A5B9    pop         edx
 0065A5BA    pop         ecx
 0065A5BB    pop         ecx
 0065A5BC    mov         dword ptr fs:[eax],edx
 0065A5BF    pop         eax
 0065A5C0    xor         ebx,ebx
>0065A5C2    jmp         0065A5C9
>0065A5C4    jmp         @HandleAutoException
 0065A5C9    lea         eax,[ebp-1C]
 0065A5CC    call        @IntfClear
 0065A5D1    lea         eax,[ebp-18]
 0065A5D4    call        @VarClr
 0065A5D9    lea         eax,[ebp-4]
 0065A5DC    call        @IntfClear
 0065A5E1    mov         eax,ebx
 0065A5E3    pop         edi
 0065A5E4    pop         esi
 0065A5E5    pop         ebx
 0065A5E6    mov         esp,ebp
 0065A5E8    pop         ebp
 0065A5E9    ret         0C
*}
end;

//0065A5EC
procedure TMSDOMDocument.save(destination:OleVariant); safecall;
begin
{*
 0065A5EC    push        ebp
 0065A5ED    mov         ebp,esp
 0065A5EF    push        0
 0065A5F1    push        ebx
 0065A5F2    push        esi
 0065A5F3    push        edi
 0065A5F4    mov         ebx,dword ptr [ebp+8]
 0065A5F7    lea         eax,[ebp+0C]
 0065A5FA    call        @VarAddRef
 0065A5FF    push        ebx
 0065A600    xor         eax,eax
 0065A602    push        ebp
 0065A603    push        65A642
 0065A608    push        dword ptr fs:[eax]
 0065A60B    mov         dword ptr fs:[eax],esp
 0065A60E    push        dword ptr [ebp+18]
 0065A611    push        dword ptr [ebp+14]
 0065A614    push        dword ptr [ebp+10]
 0065A617    push        dword ptr [ebp+0C]
 0065A61A    lea         edx,[ebp-4]
 0065A61D    mov         eax,ebx
 0065A61F    call        TMSDOMDocument.GetMSDocument
 0065A624    mov         eax,dword ptr [ebp-4]
 0065A627    push        eax
 0065A628    mov         eax,dword ptr [eax]
 0065A62A    call        dword ptr [eax+108]
 0065A630    call        @CheckAutoResult
 0065A635    xor         eax,eax
 0065A637    pop         edx
 0065A638    pop         ecx
 0065A639    pop         ecx
 0065A63A    mov         dword ptr fs:[eax],edx
 0065A63D    pop         eax
 0065A63E    xor         ebx,ebx
>0065A640    jmp         0065A647
>0065A642    jmp         @HandleAutoException
 0065A647    lea         eax,[ebp-4]
 0065A64A    call        @IntfClear
 0065A64F    lea         eax,[ebp+0C]
 0065A652    call        @VarClr
 0065A657    mov         eax,ebx
 0065A659    pop         edi
 0065A65A    pop         esi
 0065A65B    pop         ebx
 0065A65C    pop         ecx
 0065A65D    pop         ebp
 0065A65E    ret         14
*}
end;

//0065A664
procedure TMSDOMDocument.saveToStream(const stream:Classes.TStream); safecall;
begin
{*
 0065A664    push        ebp
 0065A665    mov         ebp,esp
 0065A667    xor         ecx,ecx
 0065A669    push        ecx
 0065A66A    push        ecx
 0065A66B    push        ecx
 0065A66C    push        ecx
 0065A66D    push        ecx
 0065A66E    push        ecx
 0065A66F    push        ebx
 0065A670    push        esi
 0065A671    push        edi
 0065A672    mov         ebx,dword ptr [ebp+8]
 0065A675    push        ebx
 0065A676    xor         eax,eax
 0065A678    push        ebp
 0065A679    push        65A6E5
 0065A67E    push        dword ptr fs:[eax]
 0065A681    mov         dword ptr fs:[eax],esp
 0065A684    push        0
 0065A686    mov         ecx,dword ptr [ebp+0C]
 0065A689    mov         dl,1
 0065A68B    mov         eax,[004738F8];TStreamAdapter
 0065A690    call        TStreamAdapter.Create
 0065A695    mov         edx,eax
 0065A697    test        edx,edx
>0065A699    je          0065A69E
 0065A69B    sub         edx,0FFFFFFEC
 0065A69E    lea         eax,[ebp-4]
 0065A6A1    call        @IntfCopy
 0065A6A6    lea         eax,[ebp-14]
 0065A6A9    mov         edx,dword ptr [ebp-4]
 0065A6AC    call        @VarFromIntf
 0065A6B1    push        dword ptr [ebp-8]
 0065A6B4    push        dword ptr [ebp-0C]
 0065A6B7    push        dword ptr [ebp-10]
 0065A6BA    push        dword ptr [ebp-14]
 0065A6BD    lea         edx,[ebp-18]
 0065A6C0    mov         eax,ebx
 0065A6C2    call        TMSDOMDocument.GetMSDocument
 0065A6C7    mov         eax,dword ptr [ebp-18]
 0065A6CA    push        eax
 0065A6CB    mov         eax,dword ptr [eax]
 0065A6CD    call        dword ptr [eax+108]
 0065A6D3    call        @CheckAutoResult
 0065A6D8    xor         eax,eax
 0065A6DA    pop         edx
 0065A6DB    pop         ecx
 0065A6DC    pop         ecx
 0065A6DD    mov         dword ptr fs:[eax],edx
 0065A6E0    pop         eax
 0065A6E1    xor         ebx,ebx
>0065A6E3    jmp         0065A6EA
>0065A6E5    jmp         @HandleAutoException
 0065A6EA    lea         eax,[ebp-18]
 0065A6ED    call        @IntfClear
 0065A6F2    lea         eax,[ebp-14]
 0065A6F5    call        @VarClr
 0065A6FA    lea         eax,[ebp-4]
 0065A6FD    call        @IntfClear
 0065A702    mov         eax,ebx
 0065A704    pop         edi
 0065A705    pop         esi
 0065A706    pop         ebx
 0065A707    mov         esp,ebp
 0065A709    pop         ebp
 0065A70A    ret         8
*}
end;

//0065A710
function TMSDOMDocument.loadxml(const Value:Xmldom.DOMString):WordBool; safecall;
begin
{*
 0065A710    push        ebp
 0065A711    mov         ebp,esp
 0065A713    push        0
 0065A715    push        0
 0065A717    push        0
 0065A719    push        ebx
 0065A71A    push        esi
 0065A71B    push        edi
 0065A71C    mov         ebx,dword ptr [ebp+8]
 0065A71F    push        ebx
 0065A720    xor         eax,eax
 0065A722    push        ebp
 0065A723    push        65A773
 0065A728    push        dword ptr fs:[eax]
 0065A72B    mov         dword ptr fs:[eax],esp
 0065A72E    lea         eax,[ebp-4]
 0065A731    push        eax
 0065A732    lea         eax,[ebp-8]
 0065A735    mov         edx,dword ptr [ebp+0C]
 0065A738    call        @WStrFromUStr
 0065A73D    mov         eax,dword ptr [ebp-8]
 0065A740    push        eax
 0065A741    lea         edx,[ebp-0C]
 0065A744    mov         eax,ebx
 0065A746    call        TMSDOMDocument.GetMSDocument
 0065A74B    mov         eax,dword ptr [ebp-0C]
 0065A74E    push        eax
 0065A74F    mov         eax,dword ptr [eax]
 0065A751    call        dword ptr [eax+104]
 0065A757    call        @CheckAutoResult
 0065A75C    movzx       eax,word ptr [ebp-4]
 0065A760    mov         edx,dword ptr [ebp+10]
 0065A763    mov         word ptr [edx],ax
 0065A766    xor         eax,eax
 0065A768    pop         edx
 0065A769    pop         ecx
 0065A76A    pop         ecx
 0065A76B    mov         dword ptr fs:[eax],edx
 0065A76E    pop         eax
 0065A76F    xor         ebx,ebx
>0065A771    jmp         0065A778
>0065A773    jmp         @HandleAutoException
 0065A778    lea         eax,[ebp-0C]
 0065A77B    call        @IntfClear
 0065A780    lea         eax,[ebp-8]
 0065A783    call        @WStrClr
 0065A788    mov         eax,ebx
 0065A78A    pop         edi
 0065A78B    pop         esi
 0065A78C    pop         ebx
 0065A78D    mov         esp,ebp
 0065A78F    pop         ebp
 0065A790    ret         0C
*}
end;

//0065A794
procedure TMSDOMDocument.set_OnAsyncLoad(const Sender:TObject; EventHandler:Xmldom.TAsyncEventHandler); safecall;
begin
{*
 0065A794    push        ebp
 0065A795    mov         ebp,esp
 0065A797    mov         ecx,5
 0065A79C    push        0
 0065A79E    push        0
 0065A7A0    dec         ecx
>0065A7A1    jne         0065A79C
 0065A7A3    push        ecx
 0065A7A4    push        ebx
 0065A7A5    push        esi
 0065A7A6    push        edi
 0065A7A7    mov         ebx,dword ptr [ebp+8]
 0065A7AA    push        ebx
 0065A7AB    xor         eax,eax
 0065A7AD    push        ebp
 0065A7AE    push        65A865
 0065A7B3    push        dword ptr fs:[eax]
 0065A7B6    mov         dword ptr fs:[eax],esp
 0065A7B9    cmp         word ptr [ebp+12],0
>0065A7BE    je          0065A822
 0065A7C0    push        dword ptr [ebp+14]
 0065A7C3    push        dword ptr [ebp+10]
 0065A7C6    mov         eax,dword ptr [ebp+0C]
 0065A7C9    push        eax
 0065A7CA    mov         ecx,ebx
 0065A7CC    mov         dl,1
 0065A7CE    mov         eax,[00655128];TMSDOMEventHandler
 0065A7D3    call        TMSDOMEventHandler.Create
 0065A7D8    mov         edx,eax
 0065A7DA    test        edx,edx
>0065A7DC    je          0065A7E1
 0065A7DE    sub         edx,0FFFFFFF8
 0065A7E1    lea         eax,[ebp-14]
 0065A7E4    mov         ecx,65A8A0
 0065A7E9    call        @IntfCast
 0065A7EE    mov         edx,dword ptr [ebp-14]
 0065A7F1    lea         eax,[ebp-10]
 0065A7F4    call        @VarFromDisp
 0065A7F9    push        dword ptr [ebp-4]
 0065A7FC    push        dword ptr [ebp-8]
 0065A7FF    push        dword ptr [ebp-0C]
 0065A802    push        dword ptr [ebp-10]
 0065A805    lea         edx,[ebp-18]
 0065A808    mov         eax,ebx
 0065A80A    call        TMSDOMDocument.GetMSDocument
 0065A80F    mov         eax,dword ptr [ebp-18]
 0065A812    push        eax
 0065A813    mov         eax,dword ptr [eax]
 0065A815    call        dword ptr [eax+124]
 0065A81B    call        @CheckAutoResult
>0065A820    jmp         0065A858
 0065A822    lea         eax,[ebp-28]
 0065A825    mov         edx,1
 0065A82A    mov         cl,1
 0065A82C    call        @OleVarFromInt
 0065A831    push        dword ptr [ebp-1C]
 0065A834    push        dword ptr [ebp-20]
 0065A837    push        dword ptr [ebp-24]
 0065A83A    push        dword ptr [ebp-28]
 0065A83D    lea         edx,[ebp-2C]
 0065A840    mov         eax,ebx
 0065A842    call        TMSDOMDocument.GetMSDocument
 0065A847    mov         eax,dword ptr [ebp-2C]
 0065A84A    push        eax
 0065A84B    mov         eax,dword ptr [eax]
 0065A84D    call        dword ptr [eax+124]
 0065A853    call        @CheckAutoResult
 0065A858    xor         eax,eax
 0065A85A    pop         edx
 0065A85B    pop         ecx
 0065A85C    pop         ecx
 0065A85D    mov         dword ptr fs:[eax],edx
 0065A860    pop         eax
 0065A861    xor         ebx,ebx
>0065A863    jmp         0065A86A
>0065A865    jmp         @HandleAutoException
 0065A86A    lea         eax,[ebp-2C]
 0065A86D    call        @IntfClear
 0065A872    lea         eax,[ebp-28]
 0065A875    call        @VarClr
 0065A87A    lea         eax,[ebp-18]
 0065A87D    call        @IntfClear
 0065A882    lea         eax,[ebp-14]
 0065A885    call        @IntfClear
 0065A88A    lea         eax,[ebp-10]
 0065A88D    call        @VarClr
 0065A892    mov         eax,ebx
 0065A894    pop         edi
 0065A895    pop         esi
 0065A896    pop         ebx
 0065A897    mov         esp,ebp
 0065A899    pop         ebp
 0065A89A    ret         10
*}
end;

//0065A8B0
function TMSDOMDocument.loadFromStream(const stream:ActiveX.IStream):WordBool; safecall;
begin
{*
 0065A8B0    push        ebp
 0065A8B1    mov         ebp,esp
 0065A8B3    xor         ecx,ecx
 0065A8B5    push        ecx
 0065A8B6    push        ecx
 0065A8B7    push        ecx
 0065A8B8    push        ecx
 0065A8B9    push        ecx
 0065A8BA    push        ecx
 0065A8BB    push        ebx
 0065A8BC    push        esi
 0065A8BD    push        edi
 0065A8BE    mov         ebx,dword ptr [ebp+8]
 0065A8C1    push        ebx
 0065A8C2    xor         eax,eax
 0065A8C4    push        ebp
 0065A8C5    push        65A91D
 0065A8CA    push        dword ptr fs:[eax]
 0065A8CD    mov         dword ptr fs:[eax],esp
 0065A8D0    lea         eax,[ebp-4]
 0065A8D3    push        eax
 0065A8D4    lea         eax,[ebp-14]
 0065A8D7    mov         edx,dword ptr [ebp+0C]
 0065A8DA    call        @VarFromIntf
 0065A8DF    push        dword ptr [ebp-8]
 0065A8E2    push        dword ptr [ebp-0C]
 0065A8E5    push        dword ptr [ebp-10]
 0065A8E8    push        dword ptr [ebp-14]
 0065A8EB    lea         edx,[ebp-18]
 0065A8EE    mov         eax,ebx
 0065A8F0    call        TMSDOMDocument.GetMSDocument
 0065A8F5    mov         eax,dword ptr [ebp-18]
 0065A8F8    push        eax
 0065A8F9    mov         eax,dword ptr [eax]
 0065A8FB    call        dword ptr [eax+0E8]
 0065A901    call        @CheckAutoResult
 0065A906    movzx       eax,word ptr [ebp-4]
 0065A90A    mov         edx,dword ptr [ebp+10]
 0065A90D    mov         word ptr [edx],ax
 0065A910    xor         eax,eax
 0065A912    pop         edx
 0065A913    pop         ecx
 0065A914    pop         ecx
 0065A915    mov         dword ptr fs:[eax],edx
 0065A918    pop         eax
 0065A919    xor         ebx,ebx
>0065A91B    jmp         0065A922
>0065A91D    jmp         @HandleAutoException
 0065A922    lea         eax,[ebp-18]
 0065A925    call        @IntfClear
 0065A92A    lea         eax,[ebp-14]
 0065A92D    call        @VarClr
 0065A932    mov         eax,ebx
 0065A934    pop         edi
 0065A935    pop         esi
 0065A936    pop         ebx
 0065A937    mov         esp,ebp
 0065A939    pop         ebp
 0065A93A    ret         0C
*}
end;

//0065A940
procedure TMSDOMDocument.saveToStream(const stream:ActiveX.IStream); safecall;
begin
{*
 0065A940    push        ebp
 0065A941    mov         ebp,esp
 0065A943    xor         ecx,ecx
 0065A945    push        ecx
 0065A946    push        ecx
 0065A947    push        ecx
 0065A948    push        ecx
 0065A949    push        ecx
 0065A94A    push        ebx
 0065A94B    push        esi
 0065A94C    push        edi
 0065A94D    mov         ebx,dword ptr [ebp+8]
 0065A950    push        ebx
 0065A951    xor         eax,eax
 0065A953    push        ebp
 0065A954    push        65A99E
 0065A959    push        dword ptr fs:[eax]
 0065A95C    mov         dword ptr fs:[eax],esp
 0065A95F    lea         eax,[ebp-10]
 0065A962    mov         edx,dword ptr [ebp+0C]
 0065A965    call        @VarFromIntf
 0065A96A    push        dword ptr [ebp-4]
 0065A96D    push        dword ptr [ebp-8]
 0065A970    push        dword ptr [ebp-0C]
 0065A973    push        dword ptr [ebp-10]
 0065A976    lea         edx,[ebp-14]
 0065A979    mov         eax,ebx
 0065A97B    call        TMSDOMDocument.GetMSDocument
 0065A980    mov         eax,dword ptr [ebp-14]
 0065A983    push        eax
 0065A984    mov         eax,dword ptr [eax]
 0065A986    call        dword ptr [eax+108]
 0065A98C    call        @CheckAutoResult
 0065A991    xor         eax,eax
 0065A993    pop         edx
 0065A994    pop         ecx
 0065A995    pop         ecx
 0065A996    mov         dword ptr fs:[eax],edx
 0065A999    pop         eax
 0065A99A    xor         ebx,ebx
>0065A99C    jmp         0065A9A3
>0065A99E    jmp         @HandleAutoException
 0065A9A3    lea         eax,[ebp-14]
 0065A9A6    call        @IntfClear
 0065A9AB    lea         eax,[ebp-10]
 0065A9AE    call        @VarClr
 0065A9B3    mov         eax,ebx
 0065A9B5    pop         edi
 0065A9B6    pop         esi
 0065A9B7    pop         ebx
 0065A9B8    mov         esp,ebp
 0065A9BA    pop         ebp
 0065A9BB    ret         8
*}
end;

//0065A9C0
function TMSDOMDocument.get_errorCode:Integer; safecall;
begin
{*
 0065A9C0    push        ebp
 0065A9C1    mov         ebp,esp
 0065A9C3    push        0
 0065A9C5    push        0
 0065A9C7    push        0
 0065A9C9    push        ebx
 0065A9CA    push        esi
 0065A9CB    push        edi
 0065A9CC    mov         ebx,dword ptr [ebp+8]
 0065A9CF    push        ebx
 0065A9D0    xor         eax,eax
 0065A9D2    push        ebp
 0065A9D3    push        65AA29
 0065A9D8    push        dword ptr fs:[eax]
 0065A9DB    mov         dword ptr fs:[eax],esp
 0065A9DE    lea         eax,[ebp-4]
 0065A9E1    push        eax
 0065A9E2    lea         eax,[ebp-8]
 0065A9E5    call        @IntfClear
 0065A9EA    push        eax
 0065A9EB    lea         edx,[ebp-0C]
 0065A9EE    mov         eax,ebx
 0065A9F0    call        TMSDOMDocument.GetMSDocument
 0065A9F5    mov         eax,dword ptr [ebp-0C]
 0065A9F8    push        eax
 0065A9F9    mov         eax,dword ptr [eax]
 0065A9FB    call        dword ptr [eax+0F0]
 0065AA01    call        @CheckAutoResult
 0065AA06    mov         eax,dword ptr [ebp-8]
 0065AA09    push        eax
 0065AA0A    mov         eax,dword ptr [eax]
 0065AA0C    call        dword ptr [eax+1C]
 0065AA0F    call        @CheckAutoResult
 0065AA14    mov         eax,dword ptr [ebp-4]
 0065AA17    mov         edx,dword ptr [ebp+0C]
 0065AA1A    mov         dword ptr [edx],eax
 0065AA1C    xor         eax,eax
 0065AA1E    pop         edx
 0065AA1F    pop         ecx
 0065AA20    pop         ecx
 0065AA21    mov         dword ptr fs:[eax],edx
 0065AA24    pop         eax
 0065AA25    xor         ebx,ebx
>0065AA27    jmp         0065AA2E
>0065AA29    jmp         @HandleAutoException
 0065AA2E    lea         eax,[ebp-0C]
 0065AA31    call        @IntfClear
 0065AA36    lea         eax,[ebp-8]
 0065AA39    call        @IntfClear
 0065AA3E    mov         eax,ebx
 0065AA40    pop         edi
 0065AA41    pop         esi
 0065AA42    pop         ebx
 0065AA43    mov         esp,ebp
 0065AA45    pop         ebp
 0065AA46    ret         8
*}
end;

//0065AA4C
function TMSDOMDocument.get_filepos:Integer; safecall;
begin
{*
 0065AA4C    push        ebp
 0065AA4D    mov         ebp,esp
 0065AA4F    push        0
 0065AA51    push        0
 0065AA53    push        0
 0065AA55    push        ebx
 0065AA56    push        esi
 0065AA57    push        edi
 0065AA58    mov         ebx,dword ptr [ebp+8]
 0065AA5B    push        ebx
 0065AA5C    xor         eax,eax
 0065AA5E    push        ebp
 0065AA5F    push        65AAB5
 0065AA64    push        dword ptr fs:[eax]
 0065AA67    mov         dword ptr fs:[eax],esp
 0065AA6A    lea         eax,[ebp-4]
 0065AA6D    push        eax
 0065AA6E    lea         eax,[ebp-8]
 0065AA71    call        @IntfClear
 0065AA76    push        eax
 0065AA77    lea         edx,[ebp-0C]
 0065AA7A    mov         eax,ebx
 0065AA7C    call        TMSDOMDocument.GetMSDocument
 0065AA81    mov         eax,dword ptr [ebp-0C]
 0065AA84    push        eax
 0065AA85    mov         eax,dword ptr [eax]
 0065AA87    call        dword ptr [eax+0F0]
 0065AA8D    call        @CheckAutoResult
 0065AA92    mov         eax,dword ptr [ebp-8]
 0065AA95    push        eax
 0065AA96    mov         eax,dword ptr [eax]
 0065AA98    call        dword ptr [eax+34]
 0065AA9B    call        @CheckAutoResult
 0065AAA0    mov         eax,dword ptr [ebp-4]
 0065AAA3    mov         edx,dword ptr [ebp+0C]
 0065AAA6    mov         dword ptr [edx],eax
 0065AAA8    xor         eax,eax
 0065AAAA    pop         edx
 0065AAAB    pop         ecx
 0065AAAC    pop         ecx
 0065AAAD    mov         dword ptr fs:[eax],edx
 0065AAB0    pop         eax
 0065AAB1    xor         ebx,ebx
>0065AAB3    jmp         0065AABA
>0065AAB5    jmp         @HandleAutoException
 0065AABA    lea         eax,[ebp-0C]
 0065AABD    call        @IntfClear
 0065AAC2    lea         eax,[ebp-8]
 0065AAC5    call        @IntfClear
 0065AACA    mov         eax,ebx
 0065AACC    pop         edi
 0065AACD    pop         esi
 0065AACE    pop         ebx
 0065AACF    mov         esp,ebp
 0065AAD1    pop         ebp
 0065AAD2    ret         8
*}
end;

//0065AAD8
function TMSDOMDocument.get_line:Integer; safecall;
begin
{*
 0065AAD8    push        ebp
 0065AAD9    mov         ebp,esp
 0065AADB    push        0
 0065AADD    push        0
 0065AADF    push        0
 0065AAE1    push        ebx
 0065AAE2    push        esi
 0065AAE3    push        edi
 0065AAE4    mov         ebx,dword ptr [ebp+8]
 0065AAE7    push        ebx
 0065AAE8    xor         eax,eax
 0065AAEA    push        ebp
 0065AAEB    push        65AB41
 0065AAF0    push        dword ptr fs:[eax]
 0065AAF3    mov         dword ptr fs:[eax],esp
 0065AAF6    lea         eax,[ebp-4]
 0065AAF9    push        eax
 0065AAFA    lea         eax,[ebp-8]
 0065AAFD    call        @IntfClear
 0065AB02    push        eax
 0065AB03    lea         edx,[ebp-0C]
 0065AB06    mov         eax,ebx
 0065AB08    call        TMSDOMDocument.GetMSDocument
 0065AB0D    mov         eax,dword ptr [ebp-0C]
 0065AB10    push        eax
 0065AB11    mov         eax,dword ptr [eax]
 0065AB13    call        dword ptr [eax+0F0]
 0065AB19    call        @CheckAutoResult
 0065AB1E    mov         eax,dword ptr [ebp-8]
 0065AB21    push        eax
 0065AB22    mov         eax,dword ptr [eax]
 0065AB24    call        dword ptr [eax+2C]
 0065AB27    call        @CheckAutoResult
 0065AB2C    mov         eax,dword ptr [ebp-4]
 0065AB2F    mov         edx,dword ptr [ebp+0C]
 0065AB32    mov         dword ptr [edx],eax
 0065AB34    xor         eax,eax
 0065AB36    pop         edx
 0065AB37    pop         ecx
 0065AB38    pop         ecx
 0065AB39    mov         dword ptr fs:[eax],edx
 0065AB3C    pop         eax
 0065AB3D    xor         ebx,ebx
>0065AB3F    jmp         0065AB46
>0065AB41    jmp         @HandleAutoException
 0065AB46    lea         eax,[ebp-0C]
 0065AB49    call        @IntfClear
 0065AB4E    lea         eax,[ebp-8]
 0065AB51    call        @IntfClear
 0065AB56    mov         eax,ebx
 0065AB58    pop         edi
 0065AB59    pop         esi
 0065AB5A    pop         ebx
 0065AB5B    mov         esp,ebp
 0065AB5D    pop         ebp
 0065AB5E    ret         8
*}
end;

//0065AB64
function TMSDOMDocument.get_linepos:Integer; safecall;
begin
{*
 0065AB64    push        ebp
 0065AB65    mov         ebp,esp
 0065AB67    push        0
 0065AB69    push        0
 0065AB6B    push        0
 0065AB6D    push        ebx
 0065AB6E    push        esi
 0065AB6F    push        edi
 0065AB70    mov         ebx,dword ptr [ebp+8]
 0065AB73    push        ebx
 0065AB74    xor         eax,eax
 0065AB76    push        ebp
 0065AB77    push        65ABCD
 0065AB7C    push        dword ptr fs:[eax]
 0065AB7F    mov         dword ptr fs:[eax],esp
 0065AB82    lea         eax,[ebp-4]
 0065AB85    push        eax
 0065AB86    lea         eax,[ebp-8]
 0065AB89    call        @IntfClear
 0065AB8E    push        eax
 0065AB8F    lea         edx,[ebp-0C]
 0065AB92    mov         eax,ebx
 0065AB94    call        TMSDOMDocument.GetMSDocument
 0065AB99    mov         eax,dword ptr [ebp-0C]
 0065AB9C    push        eax
 0065AB9D    mov         eax,dword ptr [eax]
 0065AB9F    call        dword ptr [eax+0F0]
 0065ABA5    call        @CheckAutoResult
 0065ABAA    mov         eax,dword ptr [ebp-8]
 0065ABAD    push        eax
 0065ABAE    mov         eax,dword ptr [eax]
 0065ABB0    call        dword ptr [eax+30]
 0065ABB3    call        @CheckAutoResult
 0065ABB8    mov         eax,dword ptr [ebp-4]
 0065ABBB    mov         edx,dword ptr [ebp+0C]
 0065ABBE    mov         dword ptr [edx],eax
 0065ABC0    xor         eax,eax
 0065ABC2    pop         edx
 0065ABC3    pop         ecx
 0065ABC4    pop         ecx
 0065ABC5    mov         dword ptr fs:[eax],edx
 0065ABC8    pop         eax
 0065ABC9    xor         ebx,ebx
>0065ABCB    jmp         0065ABD2
>0065ABCD    jmp         @HandleAutoException
 0065ABD2    lea         eax,[ebp-0C]
 0065ABD5    call        @IntfClear
 0065ABDA    lea         eax,[ebp-8]
 0065ABDD    call        @IntfClear
 0065ABE2    mov         eax,ebx
 0065ABE4    pop         edi
 0065ABE5    pop         esi
 0065ABE6    pop         ebx
 0065ABE7    mov         esp,ebp
 0065ABE9    pop         ebp
 0065ABEA    ret         8
*}
end;

//0065ABF0
function TMSDOMDocument.get_reason:DOMString; safecall;
begin
{*
 0065ABF0    push        ebp
 0065ABF1    mov         ebp,esp
 0065ABF3    push        0
 0065ABF5    push        0
 0065ABF7    push        0
 0065ABF9    push        ebx
 0065ABFA    push        esi
 0065ABFB    push        edi
 0065ABFC    mov         ebx,dword ptr [ebp+8]
 0065ABFF    mov         eax,dword ptr [ebp+0C]
 0065AC02    test        eax,eax
>0065AC04    je          0065AC0A
 0065AC06    xor         edx,edx
 0065AC08    mov         dword ptr [eax],edx
 0065AC0A    push        ebx
 0065AC0B    xor         eax,eax
 0065AC0D    push        ebp
 0065AC0E    push        65AC6C
 0065AC13    push        dword ptr fs:[eax]
 0065AC16    mov         dword ptr fs:[eax],esp
 0065AC19    lea         eax,[ebp-4]
 0065AC1C    call        @WStrClr
 0065AC21    push        eax
 0065AC22    lea         eax,[ebp-8]
 0065AC25    call        @IntfClear
 0065AC2A    push        eax
 0065AC2B    lea         edx,[ebp-0C]
 0065AC2E    mov         eax,ebx
 0065AC30    call        TMSDOMDocument.GetMSDocument
 0065AC35    mov         eax,dword ptr [ebp-0C]
 0065AC38    push        eax
 0065AC39    mov         eax,dword ptr [eax]
 0065AC3B    call        dword ptr [eax+0F0]
 0065AC41    call        @CheckAutoResult
 0065AC46    mov         eax,dword ptr [ebp-8]
 0065AC49    push        eax
 0065AC4A    mov         eax,dword ptr [eax]
 0065AC4C    call        dword ptr [eax+24]
 0065AC4F    call        @CheckAutoResult
 0065AC54    mov         edx,dword ptr [ebp-4]
 0065AC57    mov         eax,dword ptr [ebp+0C]
 0065AC5A    call        @UStrFromWStr
 0065AC5F    xor         eax,eax
 0065AC61    pop         edx
 0065AC62    pop         ecx
 0065AC63    pop         ecx
 0065AC64    mov         dword ptr fs:[eax],edx
 0065AC67    pop         eax
 0065AC68    xor         ebx,ebx
>0065AC6A    jmp         0065AC71
>0065AC6C    jmp         @HandleAutoException
 0065AC71    lea         eax,[ebp-0C]
 0065AC74    call        @IntfClear
 0065AC79    lea         eax,[ebp-8]
 0065AC7C    call        @IntfClear
 0065AC81    lea         eax,[ebp-4]
 0065AC84    call        @WStrClr
 0065AC89    mov         eax,ebx
 0065AC8B    pop         edi
 0065AC8C    pop         esi
 0065AC8D    pop         ebx
 0065AC8E    mov         esp,ebp
 0065AC90    pop         ebp
 0065AC91    ret         8
*}
end;

//0065AC94
function TMSDOMDocument.get_srcText:DOMString; safecall;
begin
{*
 0065AC94    push        ebp
 0065AC95    mov         ebp,esp
 0065AC97    push        0
 0065AC99    push        0
 0065AC9B    push        0
 0065AC9D    push        ebx
 0065AC9E    push        esi
 0065AC9F    push        edi
 0065ACA0    mov         ebx,dword ptr [ebp+8]
 0065ACA3    mov         eax,dword ptr [ebp+0C]
 0065ACA6    test        eax,eax
>0065ACA8    je          0065ACAE
 0065ACAA    xor         edx,edx
 0065ACAC    mov         dword ptr [eax],edx
 0065ACAE    push        ebx
 0065ACAF    xor         eax,eax
 0065ACB1    push        ebp
 0065ACB2    push        65AD10
 0065ACB7    push        dword ptr fs:[eax]
 0065ACBA    mov         dword ptr fs:[eax],esp
 0065ACBD    lea         eax,[ebp-4]
 0065ACC0    call        @WStrClr
 0065ACC5    push        eax
 0065ACC6    lea         eax,[ebp-8]
 0065ACC9    call        @IntfClear
 0065ACCE    push        eax
 0065ACCF    lea         edx,[ebp-0C]
 0065ACD2    mov         eax,ebx
 0065ACD4    call        TMSDOMDocument.GetMSDocument
 0065ACD9    mov         eax,dword ptr [ebp-0C]
 0065ACDC    push        eax
 0065ACDD    mov         eax,dword ptr [eax]
 0065ACDF    call        dword ptr [eax+0F0]
 0065ACE5    call        @CheckAutoResult
 0065ACEA    mov         eax,dword ptr [ebp-8]
 0065ACED    push        eax
 0065ACEE    mov         eax,dword ptr [eax]
 0065ACF0    call        dword ptr [eax+28]
 0065ACF3    call        @CheckAutoResult
 0065ACF8    mov         edx,dword ptr [ebp-4]
 0065ACFB    mov         eax,dword ptr [ebp+0C]
 0065ACFE    call        @UStrFromWStr
 0065AD03    xor         eax,eax
 0065AD05    pop         edx
 0065AD06    pop         ecx
 0065AD07    pop         ecx
 0065AD08    mov         dword ptr fs:[eax],edx
 0065AD0B    pop         eax
 0065AD0C    xor         ebx,ebx
>0065AD0E    jmp         0065AD15
>0065AD10    jmp         @HandleAutoException
 0065AD15    lea         eax,[ebp-0C]
 0065AD18    call        @IntfClear
 0065AD1D    lea         eax,[ebp-8]
 0065AD20    call        @IntfClear
 0065AD25    lea         eax,[ebp-4]
 0065AD28    call        @WStrClr
 0065AD2D    mov         eax,ebx
 0065AD2F    pop         edi
 0065AD30    pop         esi
 0065AD31    pop         ebx
 0065AD32    mov         esp,ebp
 0065AD34    pop         ebp
 0065AD35    ret         8
*}
end;

//0065AD38
function TMSDOMDocument.get_url:DOMString; safecall;
begin
{*
 0065AD38    push        ebp
 0065AD39    mov         ebp,esp
 0065AD3B    push        0
 0065AD3D    push        0
 0065AD3F    push        0
 0065AD41    push        ebx
 0065AD42    push        esi
 0065AD43    push        edi
 0065AD44    mov         ebx,dword ptr [ebp+8]
 0065AD47    mov         eax,dword ptr [ebp+0C]
 0065AD4A    test        eax,eax
>0065AD4C    je          0065AD52
 0065AD4E    xor         edx,edx
 0065AD50    mov         dword ptr [eax],edx
 0065AD52    push        ebx
 0065AD53    xor         eax,eax
 0065AD55    push        ebp
 0065AD56    push        65ADB4
 0065AD5B    push        dword ptr fs:[eax]
 0065AD5E    mov         dword ptr fs:[eax],esp
 0065AD61    lea         eax,[ebp-4]
 0065AD64    call        @WStrClr
 0065AD69    push        eax
 0065AD6A    lea         eax,[ebp-8]
 0065AD6D    call        @IntfClear
 0065AD72    push        eax
 0065AD73    lea         edx,[ebp-0C]
 0065AD76    mov         eax,ebx
 0065AD78    call        TMSDOMDocument.GetMSDocument
 0065AD7D    mov         eax,dword ptr [ebp-0C]
 0065AD80    push        eax
 0065AD81    mov         eax,dword ptr [eax]
 0065AD83    call        dword ptr [eax+0F0]
 0065AD89    call        @CheckAutoResult
 0065AD8E    mov         eax,dword ptr [ebp-8]
 0065AD91    push        eax
 0065AD92    mov         eax,dword ptr [eax]
 0065AD94    call        dword ptr [eax+20]
 0065AD97    call        @CheckAutoResult
 0065AD9C    mov         edx,dword ptr [ebp-4]
 0065AD9F    mov         eax,dword ptr [ebp+0C]
 0065ADA2    call        @UStrFromWStr
 0065ADA7    xor         eax,eax
 0065ADA9    pop         edx
 0065ADAA    pop         ecx
 0065ADAB    pop         ecx
 0065ADAC    mov         dword ptr fs:[eax],edx
 0065ADAF    pop         eax
 0065ADB0    xor         ebx,ebx
>0065ADB2    jmp         0065ADB9
>0065ADB4    jmp         @HandleAutoException
 0065ADB9    lea         eax,[ebp-0C]
 0065ADBC    call        @IntfClear
 0065ADC1    lea         eax,[ebp-8]
 0065ADC4    call        @IntfClear
 0065ADC9    lea         eax,[ebp-4]
 0065ADCC    call        @WStrClr
 0065ADD1    mov         eax,ebx
 0065ADD3    pop         edi
 0065ADD4    pop         esi
 0065ADD5    pop         ebx
 0065ADD6    mov         esp,ebp
 0065ADD8    pop         ebp
 0065ADD9    ret         8
*}
end;

//0065ADDC
function TMSDOMImplementationFactory.DOMImplementation:IDOMImplementation;
begin
{*
 0065ADDC    push        ebx
 0065ADDD    mov         ebx,edx
 0065ADDF    xor         ecx,ecx
 0065ADE1    mov         dl,1
 0065ADE3    mov         eax,[00652700];TMSDOMImplementation
 0065ADE8    call        TMSDOMImplementation.Create
 0065ADED    mov         edx,eax
 0065ADEF    test        edx,edx
>0065ADF1    je          0065ADF6
 0065ADF3    sub         edx,0FFFFFFF0
 0065ADF6    mov         eax,ebx
 0065ADF8    call        @IntfCopy
 0065ADFD    pop         ebx
 0065ADFE    ret
*}
end;

//0065AE00
function TMSDOMImplementationFactory.Description:string;
begin
{*
 0065AE00    push        ebx
 0065AE01    mov         ebx,edx
 0065AE03    mov         eax,ebx
 0065AE05    mov         edx,65AE20;'MSXML'
 0065AE0A    call        @UStrAsg
 0065AE0F    pop         ebx
 0065AE10    ret
*}
end;

//0065AE2C
procedure TMSXMLDOMDocumentFactory.AddDOMProperty(PropName:string; PropValue:OleVariant; UpdateExisting:Boolean);
begin
{*
 0065AE2C    push        ebp
 0065AE2D    mov         ebp,esp
 0065AE2F    add         esp,0FFFFFFC4
 0065AE32    push        ebx
 0065AE33    push        esi
 0065AE34    push        edi
 0065AE35    xor         ebx,ebx
 0065AE37    mov         dword ptr [ebp-4],ebx
 0065AE3A    mov         esi,ecx
 0065AE3C    lea         edi,[ebp-18]
 0065AE3F    movs        dword ptr [edi],dword ptr [esi]
 0065AE40    movs        dword ptr [edi],dword ptr [esi]
 0065AE41    movs        dword ptr [edi],dword ptr [esi]
 0065AE42    movs        dword ptr [edi],dword ptr [esi]
 0065AE43    mov         edi,edx
 0065AE45    lea         eax,[ebp-18]
 0065AE48    call        @VarAddRef
 0065AE4D    lea         eax,[ebp-30]
 0065AE50    mov         edx,dword ptr ds:[655980];TMSXMLDOMDocumentFactory.TDOMProperty
 0065AE56    call        @AddRefRecord
 0065AE5B    xor         eax,eax
 0065AE5D    push        ebp
 0065AE5E    push        65AF96
 0065AE63    push        dword ptr fs:[eax]
 0065AE66    mov         dword ptr fs:[eax],esp
 0065AE69    xor         eax,eax
 0065AE6B    mov         dword ptr [ebp-38],eax
 0065AE6E    mov         dword ptr [ebp-34],0FFFFFFFF
 0065AE75    mov         byte ptr [ebp-39],0
 0065AE79    lea         eax,[ebp-4]
 0065AE7C    mov         edx,dword ptr ds:[8285FC];gvar_008285FC:?
 0065AE82    mov         ecx,dword ptr ds:[6559F0];TMSXMLDOMDocumentFactory.TDOMPropertyList
 0065AE88    call        @DynArrayAsg
 0065AE8D    xor         esi,esi
>0065AE8F    jmp         0065AEDC
 0065AE91    lea         eax,[ebp-30]
 0065AE94    lea         edx,[esi+esi*2]
 0065AE97    mov         ecx,dword ptr [ebp-4]
 0065AE9A    lea         edx,[ecx+edx*8]
 0065AE9D    mov         ecx,dword ptr ds:[655980];TMSXMLDOMDocumentFactory.TDOMProperty
 0065AEA3    call        @CopyRecord
 0065AEA8    cmp         edi,dword ptr [ebp-30]
>0065AEAB    jne         0065AEB1
 0065AEAD    mov         bl,1
>0065AEAF    jmp         0065AECE
 0065AEB1    test        edi,edi
>0065AEB3    je          0065AEBB
 0065AEB5    cmp         dword ptr [ebp-30],0
>0065AEB9    jne         0065AEBF
 0065AEBB    xor         ebx,ebx
>0065AEBD    jmp         0065AECE
 0065AEBF    mov         edx,dword ptr [ebp-30]
 0065AEC2    mov         eax,edi
 0065AEC4    call        CompareText
 0065AEC9    test        eax,eax
 0065AECB    sete        bl
 0065AECE    test        bl,bl
>0065AED0    je          0065AED8
 0065AED2    mov         byte ptr [ebp-39],1
>0065AED6    jmp         0065AEE8
 0065AED8    inc         dword ptr [ebp-38]
 0065AEDB    inc         esi
 0065AEDC    mov         eax,dword ptr [ebp-4]
 0065AEDF    call        0040ABA8
 0065AEE4    cmp         esi,eax
>0065AEE6    jl          0065AE91
 0065AEE8    lea         eax,[ebp-4]
 0065AEEB    mov         edx,dword ptr ds:[6559F0];TMSXMLDOMDocumentFactory.TDOMPropertyList
 0065AEF1    call        @DynArrayClear
 0065AEF6    cmp         byte ptr [ebp-39],0
>0065AEFA    jne         0065AF2C
 0065AEFC    mov         eax,[008285FC];gvar_008285FC:?
 0065AF01    test        eax,eax
>0065AF03    je          0065AF0A
 0065AF05    sub         eax,4
 0065AF08    mov         eax,dword ptr [eax]
 0065AF0A    mov         dword ptr [ebp-34],eax
 0065AF0D    mov         eax,dword ptr [ebp-34]
 0065AF10    inc         eax
 0065AF11    push        eax
 0065AF12    mov         eax,8285FC;gvar_008285FC:?
 0065AF17    mov         ecx,1
 0065AF1C    mov         edx,dword ptr ds:[6559F0];TMSXMLDOMDocumentFactory.TDOMPropertyList
 0065AF22    call        @DynArraySetLength
 0065AF27    add         esp,4
>0065AF2A    jmp         0065AF38
 0065AF2C    cmp         byte ptr [ebp+8],0
>0065AF30    je          0065AF38
 0065AF32    mov         eax,dword ptr [ebp-38]
 0065AF35    mov         dword ptr [ebp-34],eax
 0065AF38    cmp         dword ptr [ebp-34],0FFFFFFFF
>0065AF3C    je          0065AF64
 0065AF3E    mov         ebx,dword ptr [ebp-34]
 0065AF41    lea         ebx,[ebx+ebx*2]
 0065AF44    mov         eax,[008285FC];gvar_008285FC:?
 0065AF49    lea         eax,[eax+ebx*8]
 0065AF4C    mov         edx,edi
 0065AF4E    call        @UStrAsg
 0065AF53    mov         eax,[008285FC];gvar_008285FC:?
 0065AF58    lea         eax,[eax+ebx*8+8]
 0065AF5C    lea         edx,[ebp-18]
 0065AF5F    call        @VarCopy
 0065AF64    xor         eax,eax
 0065AF66    pop         edx
 0065AF67    pop         ecx
 0065AF68    pop         ecx
 0065AF69    mov         dword ptr fs:[eax],edx
 0065AF6C    push        65AF9D
 0065AF71    lea         eax,[ebp-30]
 0065AF74    mov         edx,dword ptr ds:[655980];TMSXMLDOMDocumentFactory.TDOMProperty
 0065AF7A    call        @FinalizeRecord
 0065AF7F    lea         eax,[ebp-18]
 0065AF82    call        @VarClr
 0065AF87    lea         eax,[ebp-4]
 0065AF8A    mov         edx,dword ptr ds:[6559F0];TMSXMLDOMDocumentFactory.TDOMPropertyList
 0065AF90    call        @DynArrayClear
 0065AF95    ret
>0065AF96    jmp         @HandleFinally
>0065AF9B    jmp         0065AF71
 0065AF9D    pop         edi
 0065AF9E    pop         esi
 0065AF9F    pop         ebx
 0065AFA0    mov         esp,ebp
 0065AFA2    pop         ebp
 0065AFA3    ret         4
*}
end;

//0065AFA8
procedure TMSXMLDOMDocumentFactory.SetDOMDocumentCoClasses(GuidList:TGUID);
begin
{*
 0065AFA8    push        ebp
 0065AFA9    mov         ebp,esp
 0065AFAB    push        ebx
 0065AFAC    push        esi
 0065AFAD    push        edi
 0065AFAE    mov         ebx,ecx
 0065AFB0    add         ebx,ebx
 0065AFB2    add         ebx,ebx
 0065AFB4    add         ebx,3
 0065AFB7    test        ebx,ebx
>0065AFB9    js          0065AFC2
 0065AFBB    mov         esi,dword ptr [edx+ebx*4]
 0065AFBE    dec         ebx
 0065AFBF    push        esi
>0065AFC0    jns         0065AFBB
 0065AFC2    mov         edx,esp
 0065AFC4    mov         ebx,ecx
 0065AFC6    mov         esi,edx
 0065AFC8    lea         eax,[ebx+1]
 0065AFCB    push        eax
 0065AFCC    mov         eax,828600;TMSXMLDOMDocumentFactory.FDOMDocumentCoClasses::1
 0065AFD1    mov         ecx,1
 0065AFD6    mov         edx,dword ptr ds:[655A48];:TMSXMLDOMDocumentFactory.:1
 0065AFDC    call        @DynArraySetLength
 0065AFE1    add         esp,4
 0065AFE4    mov         edx,ebx
 0065AFE6    test        edx,edx
>0065AFE8    jl          0065B009
 0065AFEA    inc         edx
 0065AFEB    xor         ebx,ebx
 0065AFED    mov         eax,esi
 0065AFEF    mov         ecx,ebx
 0065AFF1    add         ecx,ecx
 0065AFF3    mov         esi,dword ptr ds:[828600];TMSXMLDOMDocumentFactory.FDOMDocumentCoClasses::1
 0065AFF9    lea         edi,[esi+ecx*8]
 0065AFFC    mov         esi,eax
 0065AFFE    movs        dword ptr [edi],dword ptr [esi]
 0065AFFF    movs        dword ptr [edi],dword ptr [esi]
 0065B000    movs        dword ptr [edi],dword ptr [esi]
 0065B001    movs        dword ptr [edi],dword ptr [esi]
 0065B002    inc         ebx
 0065B003    add         eax,10
 0065B006    dec         edx
>0065B007    jne         0065AFEF
 0065B009    mov         edi,dword ptr [ebp-0C]
 0065B00C    mov         esi,dword ptr [ebp-8]
 0065B00F    mov         ebx,dword ptr [ebp-4]
 0065B012    mov         esp,ebp
 0065B014    pop         ebp
 0065B015    ret
*}
end;

//0065B018
function TMSXMLDOMDocumentFactory.TryCoCreateInstance(const GuidList:array[$0..-$1] of System.TGUID; const _Dv_:$0..-$1):IUnknown;
begin
{*
 0065B018    push        ebp
 0065B019    mov         ebp,esp
 0065B01B    push        ebx
 0065B01C    push        esi
 0065B01D    mov         esi,ecx
 0065B01F    test        esi,esi
>0065B021    jl          0065B048
 0065B023    inc         esi
 0065B024    mov         ebx,edx
 0065B026    mov         eax,dword ptr [ebp+8]
 0065B029    call        @IntfClear
 0065B02E    push        eax
 0065B02F    push        65B050
 0065B034    push        5
 0065B036    push        0
 0065B038    push        ebx
 0065B039    call        ole32.CoCreateInstance
 0065B03E    test        eax,eax
>0065B040    je          0065B048
 0065B042    add         ebx,10
 0065B045    dec         esi
>0065B046    jne         0065B026
 0065B048    pop         esi
 0065B049    pop         ebx
 0065B04A    pop         ebp
 0065B04B    ret         4
*}
end;

//0065B060
{*procedure sub_0065B060(?:?);
begin
 0065B060    push        ebp
 0065B061    mov         ebp,esp
 0065B063    add         esp,0FFFFFFA8
 0065B066    push        ebx
 0065B067    push        esi
 0065B068    push        edi
 0065B069    xor         ecx,ecx
 0065B06B    mov         dword ptr [ebp-38],ecx
 0065B06E    mov         dword ptr [ebp-34],ecx
 0065B071    mov         dword ptr [ebp-30],ecx
 0065B074    mov         dword ptr [ebp-2C],ecx
 0065B077    mov         dword ptr [ebp-48],ecx
 0065B07A    mov         dword ptr [ebp-44],ecx
 0065B07D    mov         dword ptr [ebp-40],ecx
 0065B080    mov         dword ptr [ebp-3C],ecx
 0065B083    mov         dword ptr [ebp-28],ecx
 0065B086    mov         dword ptr [ebp-8],ecx
 0065B089    mov         dword ptr [ebp-4],edx
 0065B08C    mov         dword ptr [ebp-24],eax
 0065B08F    mov         eax,dword ptr [ebp-4]
 0065B092    call        @IntfAddRef
 0065B097    lea         eax,[ebp-20]
 0065B09A    mov         edx,dword ptr ds:[655980];TMSXMLDOMDocumentFactory.TDOMProperty
 0065B0A0    call        @AddRefRecord
 0065B0A5    xor         eax,eax
 0065B0A7    push        ebp
 0065B0A8    push        65B209
 0065B0AD    push        dword ptr fs:[eax]
 0065B0B0    mov         dword ptr fs:[eax],esp
 0065B0B3    lea         eax,[ebp-8]
 0065B0B6    mov         edx,dword ptr ds:[8285FC];gvar_008285FC:?
 0065B0BC    mov         ecx,dword ptr ds:[6559F0];TMSXMLDOMDocumentFactory.TDOMPropertyList
 0065B0C2    call        @DynArrayAsg
 0065B0C7    xor         ebx,ebx
>0065B0C9    jmp         0065B1A1
 0065B0CE    lea         eax,[ebp-20]
 0065B0D1    lea         edx,[ebx+ebx*2]
 0065B0D4    mov         ecx,dword ptr [ebp-8]
 0065B0D7    lea         edx,[ecx+edx*8]
 0065B0DA    mov         ecx,dword ptr ds:[655980];TMSXMLDOMDocumentFactory.TDOMProperty
 0065B0E0    call        @CopyRecord
 0065B0E5    xor         eax,eax
 0065B0E7    push        ebp
 0065B0E8    push        65B135
 0065B0ED    push        dword ptr fs:[eax]
 0065B0F0    mov         dword ptr fs:[eax],esp
 0065B0F3    lea         eax,[ebp-18]
 0065B0F6    call        VarIsNull
 0065B0FB    test        al,al
>0065B0FD    jne         0065B12B
 0065B0FF    push        dword ptr [ebp-0C]
 0065B102    push        dword ptr [ebp-10]
 0065B105    push        dword ptr [ebp-14]
 0065B108    push        dword ptr [ebp-18]
 0065B10B    lea         eax,[ebp-28]
 0065B10E    mov         edx,dword ptr [ebp-20]
 0065B111    call        @WStrFromUStr
 0065B116    mov         eax,dword ptr [ebp-28]
 0065B119    push        eax
 0065B11A    mov         eax,dword ptr [ebp-4]
 0065B11D    push        eax
 0065B11E    mov         eax,dword ptr [eax]
 0065B120    call        dword ptr [eax+140]
 0065B126    call        @CheckAutoResult
 0065B12B    xor         eax,eax
 0065B12D    pop         edx
 0065B12E    pop         ecx
 0065B12F    pop         ecx
 0065B130    mov         dword ptr fs:[eax],edx
>0065B133    jmp         0065B1A0
>0065B135    jmp         @HandleOnException
 0065B13A    dd          1
 0065B13E    dd          004D5C4C;EOleError
 0065B142    dd          0065B146
 0065B146    mov         esi,eax
 0065B148    push        1
 0065B14A    lea         eax,[ebp-48]
 0065B14D    call        Null
 0065B152    lea         edx,[ebp-48]
 0065B155    lea         eax,[ebp-38]
 0065B158    call        @OleVarFromVar
 0065B15D    lea         ecx,[ebp-38]
 0065B160    mov         edx,dword ptr [ebp-20]
 0065B163    mov         eax,dword ptr [ebp-24]
 0065B166    call        TMSXMLDOMDocumentFactory.AddDOMProperty
 0065B16B    mov         eax,dword ptr [esi+4];EOleError.FMessage:string
 0065B16E    mov         dword ptr [ebp-58],eax
 0065B171    mov         byte ptr [ebp-54],11
 0065B175    mov         eax,dword ptr [ebp-20]
 0065B178    mov         dword ptr [ebp-50],eax
 0065B17B    mov         byte ptr [ebp-4C],11
 0065B17F    lea         eax,[ebp-58]
 0065B182    push        eax
 0065B183    push        1
 0065B185    mov         ecx,65B224;'%s: %s'
 0065B18A    mov         dl,1
 0065B18C    mov         eax,[0065B34C];DOMException
 0065B191    call        Exception.CreateFmt;DOMException.Create
 0065B196    call        @RaiseExcept
 0065B19B    call        @DoneExcept
 0065B1A0    inc         ebx
 0065B1A1    mov         eax,dword ptr [ebp-8]
 0065B1A4    call        0040ABA8
 0065B1A9    cmp         ebx,eax
>0065B1AB    jl          0065B0CE
 0065B1B1    lea         eax,[ebp-8]
 0065B1B4    mov         edx,dword ptr ds:[6559F0];TMSXMLDOMDocumentFactory.TDOMPropertyList
 0065B1BA    call        @DynArrayClear
 0065B1BF    xor         eax,eax
 0065B1C1    pop         edx
 0065B1C2    pop         ecx
 0065B1C3    pop         ecx
 0065B1C4    mov         dword ptr fs:[eax],edx
 0065B1C7    push        65B210
 0065B1CC    lea         eax,[ebp-48]
 0065B1CF    call        @VarClr
 0065B1D4    lea         eax,[ebp-38]
 0065B1D7    call        @VarClr
 0065B1DC    lea         eax,[ebp-28]
 0065B1DF    call        @WStrClr
 0065B1E4    lea         eax,[ebp-20]
 0065B1E7    mov         edx,dword ptr ds:[655980];TMSXMLDOMDocumentFactory.TDOMProperty
 0065B1ED    call        @FinalizeRecord
 0065B1F2    lea         eax,[ebp-8]
 0065B1F5    mov         edx,dword ptr ds:[6559F0];TMSXMLDOMDocumentFactory.TDOMPropertyList
 0065B1FB    call        @DynArrayClear
 0065B200    lea         eax,[ebp-4]
 0065B203    call        @IntfClear
 0065B208    ret
>0065B209    jmp         @HandleFinally
>0065B20E    jmp         0065B1CC
 0065B210    pop         edi
 0065B211    pop         esi
 0065B212    pop         ebx
 0065B213    mov         esp,ebp
 0065B215    pop         ebp
 0065B216    ret
end;*}

//0065B234
{*procedure TMSXMLDOMDocumentFactory.CreateDOMDocument(?:?);
begin
 0065B234    push        ebp
 0065B235    mov         ebp,esp
 0065B237    xor         ecx,ecx
 0065B239    push        ecx
 0065B23A    push        ecx
 0065B23B    push        ecx
 0065B23C    push        ecx
 0065B23D    push        ebx
 0065B23E    push        esi
 0065B23F    mov         dword ptr [ebp-4],edx
 0065B242    mov         esi,eax
 0065B244    xor         eax,eax
 0065B246    push        ebp
 0065B247    push        65B2FD
 0065B24C    push        dword ptr fs:[eax]
 0065B24F    mov         dword ptr fs:[eax],esp
 0065B252    mov         ebx,dword ptr ds:[828600];TMSXMLDOMDocumentFactory.FDOMDocumentCoClasses::1
 0065B258    test        ebx,ebx
>0065B25A    je          0065B261
 0065B25C    sub         ebx,4
 0065B25F    mov         ebx,dword ptr [ebx]
 0065B261    lea         eax,[ebp-8]
 0065B264    push        eax
 0065B265    mov         ecx,ebx
 0065B267    dec         ecx
 0065B268    mov         edx,dword ptr ds:[828600];TMSXMLDOMDocumentFactory.FDOMDocumentCoClasses::1
 0065B26E    mov         eax,esi
 0065B270    call        dword ptr [eax+4]
 0065B273    mov         edx,dword ptr [ebp-8]
 0065B276    mov         eax,dword ptr [ebp-4]
 0065B279    mov         ecx,65B30C;['{2933BF81-7B36-11D2-B20E-00C04F983E60}']
 0065B27E    call        @IntfCast
 0065B283    mov         eax,dword ptr [ebp-4]
 0065B286    cmp         dword ptr [eax],0
>0065B289    jne         0065B2AC
 0065B28B    lea         edx,[ebp-0C]
 0065B28E    mov         eax,[007C4AFC];^SResString371:TResStringRec
 0065B293    call        LoadResString
 0065B298    mov         ecx,dword ptr [ebp-0C]
 0065B29B    mov         dl,1
 0065B29D    mov         eax,[0065B34C];DOMException
 0065B2A2    call        Exception.Create;DOMException.Create
 0065B2A7    call        @RaiseExcept
 0065B2AC    mov         eax,[008285FC];gvar_008285FC:?
 0065B2B1    test        eax,eax
>0065B2B3    je          0065B2BA
 0065B2B5    sub         eax,4
 0065B2B8    mov         eax,dword ptr [eax]
 0065B2BA    test        eax,eax
>0065B2BC    jle         0065B2D7
 0065B2BE    lea         eax,[ebp-10]
 0065B2C1    mov         edx,dword ptr [ebp-4]
 0065B2C4    mov         edx,dword ptr [edx]
 0065B2C6    mov         ecx,65B31C;['{2933BF95-7B36-11D2-B20E-00C04F983E60}']
 0065B2CB    call        @IntfCast
 0065B2D0    mov         edx,dword ptr [ebp-10]
 0065B2D3    mov         eax,esi
 0065B2D5    call        dword ptr [eax]
 0065B2D7    xor         eax,eax
 0065B2D9    pop         edx
 0065B2DA    pop         ecx
 0065B2DB    pop         ecx
 0065B2DC    mov         dword ptr fs:[eax],edx
 0065B2DF    push        65B304
 0065B2E4    lea         eax,[ebp-10]
 0065B2E7    call        @IntfClear
 0065B2EC    lea         eax,[ebp-0C]
 0065B2EF    call        @UStrClr
 0065B2F4    lea         eax,[ebp-8]
 0065B2F7    call        @IntfClear
 0065B2FC    ret
>0065B2FD    jmp         @HandleFinally
>0065B302    jmp         0065B2E4
 0065B304    pop         esi
 0065B305    pop         ebx
 0065B306    mov         esp,ebp
 0065B308    pop         ebp
 0065B309    ret
end;*}

Initialization
//0079D96C
{*
 0079D96C    sub         dword ptr ds:[82860C],1
>0079D973    jae         0079D990
 0079D975    mov         dl,1
 0079D977    mov         eax,[00655838];TMSDOMImplementationFactory
 0079D97C    call        TObject.Create
 0079D981    mov         [00828608],eax;MSXML_DOM:TMSDOMImplementationFactory
 0079D986    mov         eax,[00828608];MSXML_DOM:TMSDOMImplementationFactory
 0079D98B    call        RegisterDOMVendor
 0079D990    ret
*}
Finalization
end.