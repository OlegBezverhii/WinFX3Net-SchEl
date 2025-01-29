//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Xml.xmldom;

interface

uses
  SysUtils, Classes;

type
  DOMException = class(Exception)
  public
    code:Word;//f18
  end;
  EDOMParseError = class(Exception)
  published
    constructor Create(Msg:string);//0065C634
  public
    FParseError:IDOMParseError;//f18
    function GetErrorCode:Integer;//0065C680
    function GetFilePos:Integer;//0065C698
    function GetLine:Integer;//0065C6B0
    function GetLinePos:Integer;//0065C6C8
    function GetReason:UnicodeString;//0065C6E0
    function GetSrcText:UnicodeString;//0065C700
    function GetURL:UnicodeString;//0065C720
  end;
  TAsyncEventHandler = procedure(Sender:TObject; AsyncLoadState:Integer) of object;;
  TDOMVendor = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    procedure Description; virtual; abstract;//v0//00405554
    procedure DOMImplementation; virtual; abstract;//v4//00405554
  end;
  TDOMVendorArray = array of TDOMVendor;
//elSize = 4;
  TDOMVendorList = class(TObject)
  published
    procedure Remove(Vendor:TDOMVendor);//0065C5A4
    function GetVendors(Index:Integer):TDOMVendor;//0065C62C
    function Find(VendorDesc:string):TDOMVendor;//0065C43C
    procedure Add(Vendor:TDOMVendor);//0065C4C4
    function Count:Integer;//0065C424
  public
    .FVendors:TDOMVendorArray;//f4
  end;
    function IsPrefixed(const AName:UnicodeString):Boolean;//0065BF34
    function ExtractLocalName(const AName:UnicodeString):UnicodeString;//0065BF58
    function ExtractPrefix(const AName:UnicodeString):UnicodeString;//0065BFA8
    function MakeNodeName(const Prefix:UnicodeString; const LocalName:UnicodeString):UnicodeString;//0065BFF4
    function SameNamespace(const Node:IDOMNode; const namespaceURI:UnicodeString):Boolean;//0065C034
    //function sub_0065C0B8(?:?; ?:?):Boolean;//0065C0B8
    function NodeMatches(const Node:IDOMNode; const TagName:UnicodeString; const NamespaceURI:UnicodeString):Boolean;//0065C0E8
    function GetDOMNodeEx(const Node:IDOMNode):IDOMNodeEx;//0065C18C
    function DOMVendorList:TDOMVendorList;//0065C214
    procedure RegisterDOMVendor(const Vendor:TDOMVendor);//0065C234
    procedure UnRegisterDOMVendor(const Vendor:TDOMVendor);//0065C248
    function GetDOMVendor(VendorDesc:UnicodeString):TDOMVendor;//0065C264
    function GetDOM(const VendorDesc:UnicodeString):IDOMImplementation;//0065C394
    procedure DOMVendorNotSupported(const PropOrMethod:UnicodeString; const VendorName:UnicodeString);//0065C3AC

implementation

//0065BF34
function IsPrefixed(const AName:UnicodeString):Boolean;
begin
{*
 0065BF34    push        ecx
 0065BF35    mov         dword ptr [esp],eax
 0065BF38    mov         eax,esp
 0065BF3A    mov         edx,65BF54;':'
 0065BF3F    call        TStringHelper.Contains
 0065BF44    pop         edx
 0065BF45    ret
*}
end;

//0065BF58
function ExtractLocalName(const AName:UnicodeString):UnicodeString;
begin
{*
 0065BF58    push        ebx
 0065BF59    push        esi
 0065BF5A    push        ecx
 0065BF5B    mov         esi,edx
 0065BF5D    mov         dword ptr [esp],eax
 0065BF60    mov         ecx,1
 0065BF65    mov         edx,dword ptr [esp]
 0065BF68    mov         eax,65BFA4;':'
 0065BF6D    call        Pos
 0065BF72    dec         eax
 0065BF73    mov         ebx,eax
 0065BF75    test        ebx,ebx
>0065BF77    jl          0065BF87
 0065BF79    mov         ecx,esi
 0065BF7B    lea         edx,[ebx+1]
 0065BF7E    mov         eax,esp
 0065BF80    call        TStringHelper.Substring
>0065BF85    jmp         0065BF91
 0065BF87    mov         eax,esi
 0065BF89    mov         edx,dword ptr [esp]
 0065BF8C    call        @UStrAsg
 0065BF91    pop         edx
 0065BF92    pop         esi
 0065BF93    pop         ebx
 0065BF94    ret
*}
end;

//0065BFA8
function ExtractPrefix(const AName:UnicodeString):UnicodeString;
begin
{*
 0065BFA8    push        ebx
 0065BFA9    push        esi
 0065BFAA    push        ecx
 0065BFAB    mov         esi,edx
 0065BFAD    mov         dword ptr [esp],eax
 0065BFB0    mov         ecx,1
 0065BFB5    mov         edx,dword ptr [esp]
 0065BFB8    mov         eax,65BFF0;':'
 0065BFBD    call        Pos
 0065BFC2    dec         eax
 0065BFC3    mov         ebx,eax
 0065BFC5    test        ebx,ebx
>0065BFC7    jl          0065BFD9
 0065BFC9    push        esi
 0065BFCA    lea         eax,[esp+4]
 0065BFCE    mov         ecx,ebx
 0065BFD0    xor         edx,edx
 0065BFD2    call        00426870
>0065BFD7    jmp         0065BFE0
 0065BFD9    mov         eax,esi
 0065BFDB    call        @UStrClr
 0065BFE0    pop         edx
 0065BFE1    pop         esi
 0065BFE2    pop         ebx
 0065BFE3    ret
*}
end;

//0065BFF4
function MakeNodeName(const Prefix:UnicodeString; const LocalName:UnicodeString):UnicodeString;
begin
{*
 0065BFF4    push        ebx
 0065BFF5    push        esi
 0065BFF6    push        edi
 0065BFF7    mov         edi,ecx
 0065BFF9    mov         esi,edx
 0065BFFB    mov         ebx,eax
 0065BFFD    test        ebx,ebx
>0065BFFF    je          0065C016
 0065C001    push        ebx
 0065C002    push        65C030;':'
 0065C007    push        esi
 0065C008    mov         eax,edi
 0065C00A    mov         edx,3
 0065C00F    call        @UStrCatN
>0065C014    jmp         0065C01F
 0065C016    mov         eax,edi
 0065C018    mov         edx,esi
 0065C01A    call        @UStrAsg
 0065C01F    pop         edi
 0065C020    pop         esi
 0065C021    pop         ebx
 0065C022    ret
*}
end;

//0065C034
function SameNamespace(const Node:IDOMNode; const namespaceURI:UnicodeString):Boolean;
begin
{*
 0065C034    push        ebp
 0065C035    mov         ebp,esp
 0065C037    add         esp,0FFFFFFF8
 0065C03A    push        ebx
 0065C03B    push        esi
 0065C03C    xor         ecx,ecx
 0065C03E    mov         dword ptr [ebp-4],ecx
 0065C041    mov         esi,edx
 0065C043    mov         ebx,eax
 0065C045    xor         eax,eax
 0065C047    push        ebp
 0065C048    push        65C0A8
 0065C04D    push        dword ptr fs:[eax]
 0065C050    mov         dword ptr fs:[eax],esp
 0065C053    lea         eax,[ebp-4]
 0065C056    call        @UStrClr
 0065C05B    push        eax
 0065C05C    push        ebx
 0065C05D    mov         eax,dword ptr [ebx]
 0065C05F    call        dword ptr [eax+3C]
 0065C062    call        @CheckAutoResult
 0065C067    mov         ebx,dword ptr [ebp-4]
 0065C06A    cmp         ebx,esi
>0065C06C    jne         0065C072
 0065C06E    mov         al,1
>0065C070    jmp         0065C090
 0065C072    test        ebx,ebx
>0065C074    je          0065C07A
 0065C076    test        esi,esi
>0065C078    jne         0065C07E
 0065C07A    xor         eax,eax
>0065C07C    jmp         0065C090
 0065C07E    mov         edx,esi
 0065C080    mov         dword ptr [ebp-8],ebx
 0065C083    mov         eax,dword ptr [ebp-8]
 0065C086    call        CompareText
 0065C08B    test        eax,eax
 0065C08D    sete        al
 0065C090    mov         ebx,eax
 0065C092    xor         eax,eax
 0065C094    pop         edx
 0065C095    pop         ecx
 0065C096    pop         ecx
 0065C097    mov         dword ptr fs:[eax],edx
 0065C09A    push        65C0AF
 0065C09F    lea         eax,[ebp-4]
 0065C0A2    call        @UStrClr
 0065C0A7    ret
>0065C0A8    jmp         @HandleFinally
>0065C0AD    jmp         0065C09F
 0065C0AF    mov         eax,ebx
 0065C0B1    pop         esi
 0065C0B2    pop         ebx
 0065C0B3    pop         ecx
 0065C0B4    pop         ecx
 0065C0B5    pop         ebp
 0065C0B6    ret
*}
end;

//0065C0B8
{*function sub_0065C0B8(?:?; ?:?):Boolean;
begin
 0065C0B8    push        ebx
 0065C0B9    push        esi
 0065C0BA    mov         esi,edx
 0065C0BC    mov         ebx,eax
 0065C0BE    cmp         ebx,esi
>0065C0C0    jne         0065C0C7
 0065C0C2    mov         al,1
 0065C0C4    pop         esi
 0065C0C5    pop         ebx
 0065C0C6    ret
 0065C0C7    test        ebx,ebx
>0065C0C9    je          0065C0CF
 0065C0CB    test        esi,esi
>0065C0CD    jne         0065C0D4
 0065C0CF    xor         eax,eax
 0065C0D1    pop         esi
 0065C0D2    pop         ebx
 0065C0D3    ret
 0065C0D4    mov         edx,esi
 0065C0D6    mov         eax,ebx
 0065C0D8    call        CompareText
 0065C0DD    test        eax,eax
 0065C0DF    sete        al
 0065C0E2    pop         esi
 0065C0E3    pop         ebx
 0065C0E4    ret
end;*}

//0065C0E8
function NodeMatches(const Node:IDOMNode; const TagName:UnicodeString; const NamespaceURI:UnicodeString):Boolean;
begin
{*
 0065C0E8    push        ebp
 0065C0E9    mov         ebp,esp
 0065C0EB    push        0
 0065C0ED    push        0
 0065C0EF    push        ebx
 0065C0F0    push        esi
 0065C0F1    push        edi
 0065C0F2    mov         edi,ecx
 0065C0F4    mov         esi,edx
 0065C0F6    mov         ebx,eax
 0065C0F8    xor         eax,eax
 0065C0FA    push        ebp
 0065C0FB    push        65C17A
 0065C100    push        dword ptr fs:[eax]
 0065C103    mov         dword ptr fs:[eax],esp
 0065C106    test        edi,edi
>0065C108    je          0065C117
 0065C10A    mov         edx,edi
 0065C10C    mov         eax,ebx
 0065C10E    call        SameNamespace
 0065C113    test        al,al
>0065C115    je          0065C157
 0065C117    lea         eax,[ebp-4]
 0065C11A    call        @UStrClr
 0065C11F    push        eax
 0065C120    push        ebx
 0065C121    mov         eax,dword ptr [ebx]
 0065C123    call        dword ptr [eax+0C]
 0065C126    call        @CheckAutoResult
 0065C12B    mov         eax,dword ptr [ebp-4]
 0065C12E    mov         edx,esi
 0065C130    call        @UStrEqual
>0065C135    je          0065C15B
 0065C137    lea         eax,[ebp-8]
 0065C13A    call        @UStrClr
 0065C13F    push        eax
 0065C140    push        ebx
 0065C141    mov         eax,dword ptr [ebx]
 0065C143    call        dword ptr [eax+44]
 0065C146    call        @CheckAutoResult
 0065C14B    mov         eax,dword ptr [ebp-8]
 0065C14E    mov         edx,esi
 0065C150    call        @UStrEqual
>0065C155    je          0065C15B
 0065C157    xor         eax,eax
>0065C159    jmp         0065C15D
 0065C15B    mov         al,1
 0065C15D    mov         ebx,eax
 0065C15F    xor         eax,eax
 0065C161    pop         edx
 0065C162    pop         ecx
 0065C163    pop         ecx
 0065C164    mov         dword ptr fs:[eax],edx
 0065C167    push        65C181
 0065C16C    lea         eax,[ebp-8]
 0065C16F    mov         edx,2
 0065C174    call        @UStrArrayClr
 0065C179    ret
>0065C17A    jmp         @HandleFinally
>0065C17F    jmp         0065C16C
 0065C181    mov         eax,ebx
 0065C183    pop         edi
 0065C184    pop         esi
 0065C185    pop         ebx
 0065C186    pop         ecx
 0065C187    pop         ecx
 0065C188    pop         ebp
 0065C189    ret
*}
end;

//0065C18C
function GetDOMNodeEx(const Node:IDOMNode):IDOMNodeEx;
begin
{*
 0065C18C    push        ebp
 0065C18D    mov         ebp,esp
 0065C18F    push        0
 0065C191    push        ebx
 0065C192    push        esi
 0065C193    mov         esi,edx
 0065C195    mov         ebx,eax
 0065C197    xor         eax,eax
 0065C199    push        ebp
 0065C19A    push        65C1F5
 0065C19F    push        dword ptr fs:[eax]
 0065C1A2    mov         dword ptr fs:[eax],esp
 0065C1A5    mov         eax,esi
 0065C1A7    call        @IntfClear
 0065C1AC    mov         ecx,eax
 0065C1AE    mov         edx,65C204
 0065C1B3    mov         eax,ebx
 0065C1B5    call        Supports
 0065C1BA    test        al,al
>0065C1BC    jne         0065C1DF
 0065C1BE    lea         edx,[ebp-4]
 0065C1C1    mov         eax,[007C4EEC];^SResString367:TResStringRec
 0065C1C6    call        LoadResString
 0065C1CB    mov         ecx,dword ptr [ebp-4]
 0065C1CE    mov         dl,1
 0065C1D0    mov         eax,[0065B34C];DOMException
 0065C1D5    call        Exception.Create
 0065C1DA    call        @RaiseExcept
 0065C1DF    xor         eax,eax
 0065C1E1    pop         edx
 0065C1E2    pop         ecx
 0065C1E3    pop         ecx
 0065C1E4    mov         dword ptr fs:[eax],edx
 0065C1E7    push        65C1FC
 0065C1EC    lea         eax,[ebp-4]
 0065C1EF    call        @UStrClr
 0065C1F4    ret
>0065C1F5    jmp         @HandleFinally
>0065C1FA    jmp         0065C1EC
 0065C1FC    pop         esi
 0065C1FD    pop         ebx
 0065C1FE    pop         ecx
 0065C1FF    pop         ebp
 0065C200    ret
*}
end;

//0065C214
function DOMVendorList:TDOMVendorList;
begin
{*
 0065C214    cmp         dword ptr ds:[828618],0;DOMVendors:TDOMVendorList
>0065C21B    jne         0065C22E
 0065C21D    mov         dl,1
 0065C21F    mov         eax,[0065BD30];TDOMVendorList
 0065C224    call        TObject.Create
 0065C229    mov         [00828618],eax;DOMVendors:TDOMVendorList
 0065C22E    mov         eax,[00828618];DOMVendors:TDOMVendorList
 0065C233    ret
*}
end;

//0065C234
procedure RegisterDOMVendor(const Vendor:TDOMVendor);
begin
{*
 0065C234    push        ebx
 0065C235    mov         ebx,eax
 0065C237    call        DOMVendorList
 0065C23C    mov         edx,ebx
 0065C23E    call        TDOMVendorList.Add
 0065C243    pop         ebx
 0065C244    ret
*}
end;

//0065C248
procedure UnRegisterDOMVendor(const Vendor:TDOMVendor);
begin
{*
 0065C248    push        ebx
 0065C249    mov         ebx,eax
 0065C24B    cmp         dword ptr ds:[828618],0;DOMVendors:TDOMVendorList
>0065C252    je          0065C260
 0065C254    call        DOMVendorList
 0065C259    mov         edx,ebx
 0065C25B    call        TDOMVendorList.Remove
 0065C260    pop         ebx
 0065C261    ret
*}
end;

//0065C264
function GetDOMVendor(VendorDesc:UnicodeString):TDOMVendor;
begin
{*
 0065C264    push        ebp
 0065C265    mov         ebp,esp
 0065C267    add         esp,0FFFFFFE8
 0065C26A    push        ebx
 0065C26B    xor         edx,edx
 0065C26D    mov         dword ptr [ebp-18],edx
 0065C270    mov         dword ptr [ebp-14],edx
 0065C273    mov         dword ptr [ebp-10],edx
 0065C276    mov         dword ptr [ebp-4],eax
 0065C279    mov         eax,dword ptr [ebp-4]
 0065C27C    call        @UStrAddRef
 0065C281    xor         eax,eax
 0065C283    push        ebp
 0065C284    push        65C385
 0065C289    push        dword ptr fs:[eax]
 0065C28C    mov         dword ptr fs:[eax],esp
 0065C28F    cmp         dword ptr [ebp-4],0
>0065C293    jne         0065C2A3
 0065C295    lea         eax,[ebp-4]
 0065C298    mov         edx,dword ptr ds:[828610];gvar_00828610:UnicodeString
 0065C29E    call        @UStrLAsg
 0065C2A3    cmp         dword ptr [ebp-4],0
>0065C2A7    jne         0065C2C7
 0065C2A9    call        DOMVendorList
 0065C2AE    call        TDOMVendorList.Count
 0065C2B3    test        eax,eax
>0065C2B5    jle         0065C2C7
 0065C2B7    call        DOMVendorList
 0065C2BC    xor         edx,edx
 0065C2BE    call        TDOMVendorList.GetVendors
 0065C2C3    mov         ebx,eax
>0065C2C5    jmp         0065C2D6
 0065C2C7    call        DOMVendorList
 0065C2CC    mov         edx,dword ptr [ebp-4]
 0065C2CF    call        TDOMVendorList.Find
 0065C2D4    mov         ebx,eax
 0065C2D6    test        ebx,ebx
>0065C2D8    jne         0065C34C
 0065C2DA    call        DOMVendorList
 0065C2DF    call        TDOMVendorList.Count
 0065C2E4    test        eax,eax
>0065C2E6    jne         0065C31B
 0065C2E8    mov         eax,dword ptr [ebp-4]
 0065C2EB    mov         dword ptr [ebp-0C],eax
 0065C2EE    mov         byte ptr [ebp-8],11
 0065C2F2    lea         eax,[ebp-0C]
 0065C2F5    push        eax
 0065C2F6    push        0
 0065C2F8    lea         edx,[ebp-10]
 0065C2FB    mov         eax,[007C4678];^SResString369:TResStringRec
 0065C300    call        LoadResString
 0065C305    mov         ecx,dword ptr [ebp-10]
 0065C308    mov         dl,1
 0065C30A    mov         eax,[004174D0];Exception
 0065C30F    call        Exception.CreateFmt
 0065C314    call        @RaiseExcept
>0065C319    jmp         0065C34C
 0065C31B    mov         eax,dword ptr [ebp-4]
 0065C31E    mov         dword ptr [ebp-0C],eax
 0065C321    mov         byte ptr [ebp-8],11
 0065C325    lea         eax,[ebp-0C]
 0065C328    push        eax
 0065C329    push        0
 0065C32B    lea         edx,[ebp-14]
 0065C32E    mov         eax,[007C420C];^SResString366:TResStringRec
 0065C333    call        LoadResString
 0065C338    mov         ecx,dword ptr [ebp-14]
 0065C33B    mov         dl,1
 0065C33D    mov         eax,[004174D0];Exception
 0065C342    call        Exception.CreateFmt
 0065C347    call        @RaiseExcept
 0065C34C    lea         edx,[ebp-18]
 0065C34F    mov         eax,ebx
 0065C351    mov         ecx,dword ptr [eax]
 0065C353    call        dword ptr [ecx]
 0065C355    mov         edx,dword ptr [ebp-18]
 0065C358    mov         eax,828614;gvar_00828614:UnicodeString
 0065C35D    call        @UStrAsg
 0065C362    xor         eax,eax
 0065C364    pop         edx
 0065C365    pop         ecx
 0065C366    pop         ecx
 0065C367    mov         dword ptr fs:[eax],edx
 0065C36A    push        65C38C
 0065C36F    lea         eax,[ebp-18]
 0065C372    mov         edx,3
 0065C377    call        @UStrArrayClr
 0065C37C    lea         eax,[ebp-4]
 0065C37F    call        @UStrClr
 0065C384    ret
>0065C385    jmp         @HandleFinally
>0065C38A    jmp         0065C36F
 0065C38C    mov         eax,ebx
 0065C38E    pop         ebx
 0065C38F    mov         esp,ebp
 0065C391    pop         ebp
 0065C392    ret
*}
end;

//0065C394
function GetDOM(const VendorDesc:UnicodeString):IDOMImplementation;
begin
{*
 0065C394    push        ebx
 0065C395    push        esi
 0065C396    mov         esi,edx
 0065C398    mov         ebx,eax
 0065C39A    mov         eax,ebx
 0065C39C    call        GetDOMVendor
 0065C3A1    mov         edx,esi
 0065C3A3    mov         ecx,dword ptr [eax]
 0065C3A5    call        dword ptr [ecx+4]
 0065C3A8    pop         esi
 0065C3A9    pop         ebx
 0065C3AA    ret
*}
end;

//0065C3AC
procedure DOMVendorNotSupported(const PropOrMethod:UnicodeString; const VendorName:UnicodeString);
begin
{*
 0065C3AC    push        ebp
 0065C3AD    mov         ebp,esp
 0065C3AF    add         esp,0FFFFFFEC
 0065C3B2    push        ebx
 0065C3B3    push        esi
 0065C3B4    xor         ecx,ecx
 0065C3B6    mov         dword ptr [ebp-14],ecx
 0065C3B9    mov         esi,edx
 0065C3BB    mov         ebx,eax
 0065C3BD    xor         eax,eax
 0065C3BF    push        ebp
 0065C3C0    push        65C416
 0065C3C5    push        dword ptr fs:[eax]
 0065C3C8    mov         dword ptr fs:[eax],esp
 0065C3CB    mov         dword ptr [ebp-10],ebx
 0065C3CE    mov         byte ptr [ebp-0C],11
 0065C3D2    mov         dword ptr [ebp-8],esi
 0065C3D5    mov         byte ptr [ebp-4],11
 0065C3D9    lea         eax,[ebp-10]
 0065C3DC    push        eax
 0065C3DD    push        1
 0065C3DF    lea         edx,[ebp-14]
 0065C3E2    mov         eax,[007C48E4];^SResString368:TResStringRec
 0065C3E7    call        LoadResString
 0065C3EC    mov         ecx,dword ptr [ebp-14]
 0065C3EF    mov         dl,1
 0065C3F1    mov         eax,[0065B34C];DOMException
 0065C3F6    call        Exception.CreateFmt
 0065C3FB    call        @RaiseExcept
 0065C400    xor         eax,eax
 0065C402    pop         edx
 0065C403    pop         ecx
 0065C404    pop         ecx
 0065C405    mov         dword ptr fs:[eax],edx
 0065C408    push        65C41D
 0065C40D    lea         eax,[ebp-14]
 0065C410    call        @UStrClr
 0065C415    ret
>0065C416    jmp         @HandleFinally
>0065C41B    jmp         0065C40D
 0065C41D    pop         esi
 0065C41E    pop         ebx
 0065C41F    mov         esp,ebp
 0065C421    pop         ebp
 0065C422    ret
*}
end;

//0065C424
function TDOMVendorList.Count:Integer;
begin
{*
 0065C424    push        ecx
 0065C425    mov         eax,dword ptr [eax+4]
 0065C428    mov         dword ptr [esp],eax
 0065C42B    mov         eax,dword ptr [esp]
 0065C42E    test        eax,eax
>0065C430    je          0065C437
 0065C432    sub         eax,4
 0065C435    mov         eax,dword ptr [eax]
 0065C437    pop         edx
 0065C438    ret
*}
end;

//0065C43C
function TDOMVendorList.Find(VendorDesc:string):TDOMVendor;
begin
{*
 0065C43C    push        ebp
 0065C43D    mov         ebp,esp
 0065C43F    add         esp,0FFFFFFF4
 0065C442    push        ebx
 0065C443    push        esi
 0065C444    push        edi
 0065C445    xor         ecx,ecx
 0065C447    mov         dword ptr [ebp-0C],ecx
 0065C44A    mov         dword ptr [ebp-4],edx
 0065C44D    mov         edi,eax
 0065C44F    xor         eax,eax
 0065C451    push        ebp
 0065C452    push        65C4B2
 0065C457    push        dword ptr fs:[eax]
 0065C45A    mov         dword ptr fs:[eax],esp
 0065C45D    xor         eax,eax
 0065C45F    mov         dword ptr [ebp-8],eax
 0065C462    mov         eax,edi
 0065C464    call        TDOMVendorList.Count
 0065C469    mov         esi,eax
 0065C46B    dec         esi
 0065C46C    test        esi,esi
>0065C46E    jl          0065C49C
 0065C470    inc         esi
 0065C471    xor         ebx,ebx
 0065C473    lea         edx,[ebp-0C]
 0065C476    mov         eax,dword ptr [edi+4]
 0065C479    mov         eax,dword ptr [eax+ebx*4]
 0065C47C    mov         ecx,dword ptr [eax]
 0065C47E    call        dword ptr [ecx]
 0065C480    mov         edx,dword ptr [ebp-0C]
 0065C483    mov         eax,dword ptr [ebp-4]
 0065C486    call        @UStrEqual
>0065C48B    jne         0065C498
 0065C48D    mov         eax,dword ptr [edi+4]
 0065C490    mov         eax,dword ptr [eax+ebx*4]
 0065C493    mov         dword ptr [ebp-8],eax
>0065C496    jmp         0065C49C
 0065C498    inc         ebx
 0065C499    dec         esi
>0065C49A    jne         0065C473
 0065C49C    xor         eax,eax
 0065C49E    pop         edx
 0065C49F    pop         ecx
 0065C4A0    pop         ecx
 0065C4A1    mov         dword ptr fs:[eax],edx
 0065C4A4    push        65C4B9
 0065C4A9    lea         eax,[ebp-0C]
 0065C4AC    call        @UStrClr
 0065C4B1    ret
>0065C4B2    jmp         @HandleFinally
>0065C4B7    jmp         0065C4A9
 0065C4B9    mov         eax,dword ptr [ebp-8]
 0065C4BC    pop         edi
 0065C4BD    pop         esi
 0065C4BE    pop         ebx
 0065C4BF    mov         esp,ebp
 0065C4C1    pop         ebp
 0065C4C2    ret
*}
end;

//0065C4C4
procedure TDOMVendorList.Add(Vendor:TDOMVendor);
begin
{*
 0065C4C4    push        ebp
 0065C4C5    mov         ebp,esp
 0065C4C7    add         esp,0FFFFFFE4
 0065C4CA    push        ebx
 0065C4CB    push        esi
 0065C4CC    xor         ecx,ecx
 0065C4CE    mov         dword ptr [ebp-18],ecx
 0065C4D1    mov         dword ptr [ebp-1C],ecx
 0065C4D4    mov         dword ptr [ebp-0C],ecx
 0065C4D7    mov         dword ptr [ebp-4],edx
 0065C4DA    mov         ebx,eax
 0065C4DC    xor         eax,eax
 0065C4DE    push        ebp
 0065C4DF    push        65C597
 0065C4E4    push        dword ptr fs:[eax]
 0065C4E7    mov         dword ptr fs:[eax],esp
 0065C4EA    lea         edx,[ebp-0C]
 0065C4ED    mov         eax,dword ptr [ebp-4]
 0065C4F0    mov         ecx,dword ptr [eax]
 0065C4F2    call        dword ptr [ecx]
 0065C4F4    mov         edx,dword ptr [ebp-0C]
 0065C4F7    mov         eax,ebx
 0065C4F9    call        TDOMVendorList.Find
 0065C4FE    test        eax,eax
>0065C500    je          0065C53D
 0065C502    lea         edx,[ebp-18]
 0065C505    mov         eax,dword ptr [ebp-4]
 0065C508    mov         ecx,dword ptr [eax]
 0065C50A    call        dword ptr [ecx]
 0065C50C    mov         eax,dword ptr [ebp-18]
 0065C50F    mov         dword ptr [ebp-14],eax
 0065C512    mov         byte ptr [ebp-10],11
 0065C516    lea         eax,[ebp-14]
 0065C519    push        eax
 0065C51A    push        0
 0065C51C    lea         edx,[ebp-1C]
 0065C51F    mov         eax,[007C4AC0];^SResString365:TResStringRec
 0065C524    call        LoadResString
 0065C529    mov         ecx,dword ptr [ebp-1C]
 0065C52C    mov         dl,1
 0065C52E    mov         eax,[004174D0];Exception
 0065C533    call        Exception.CreateFmt
 0065C538    call        @RaiseExcept
 0065C53D    mov         eax,dword ptr [ebx+4]
 0065C540    mov         dword ptr [ebp-8],eax
 0065C543    mov         eax,dword ptr [ebp-8]
 0065C546    test        eax,eax
>0065C548    je          0065C54F
 0065C54A    sub         eax,4
 0065C54D    mov         eax,dword ptr [eax]
 0065C54F    mov         esi,eax
 0065C551    lea         eax,[esi+1]
 0065C554    push        eax
 0065C555    lea         eax,[ebx+4]
 0065C558    mov         ecx,1
 0065C55D    mov         edx,dword ptr ds:[65BCF8];TDOMVendorArray
 0065C563    call        @DynArraySetLength
 0065C568    add         esp,4
 0065C56B    mov         eax,dword ptr [ebx+4]
 0065C56E    mov         edx,dword ptr [ebp-4]
 0065C571    mov         dword ptr [eax+esi*4],edx
 0065C574    xor         eax,eax
 0065C576    pop         edx
 0065C577    pop         ecx
 0065C578    pop         ecx
 0065C579    mov         dword ptr fs:[eax],edx
 0065C57C    push        65C59E
 0065C581    lea         eax,[ebp-1C]
 0065C584    mov         edx,2
 0065C589    call        @UStrArrayClr
 0065C58E    lea         eax,[ebp-0C]
 0065C591    call        @UStrClr
 0065C596    ret
>0065C597    jmp         @HandleFinally
>0065C59C    jmp         0065C581
 0065C59E    pop         esi
 0065C59F    pop         ebx
 0065C5A0    mov         esp,ebp
 0065C5A2    pop         ebp
 0065C5A3    ret
*}
end;

//0065C5A4
procedure TDOMVendorList.Remove(Vendor:TDOMVendor);
begin
{*
 0065C5A4    push        ebx
 0065C5A5    push        esi
 0065C5A6    push        edi
 0065C5A7    mov         edi,edx
 0065C5A9    mov         ebx,eax
 0065C5AB    mov         eax,ebx
 0065C5AD    call        TDOMVendorList.Count
 0065C5B2    mov         esi,eax
 0065C5B4    mov         eax,ebx
 0065C5B6    call        TDOMVendorList.Count
 0065C5BB    mov         edx,eax
 0065C5BD    dec         edx
 0065C5BE    test        edx,edx
>0065C5C0    jl          0065C5D5
 0065C5C2    inc         edx
 0065C5C3    xor         eax,eax
 0065C5C5    mov         ecx,dword ptr [ebx+4]
 0065C5C8    cmp         edi,dword ptr [ecx+eax*4]
>0065C5CB    jne         0065C5D1
 0065C5CD    mov         esi,eax
>0065C5CF    jmp         0065C5D5
 0065C5D1    inc         eax
 0065C5D2    dec         edx
>0065C5D3    jne         0065C5C5
 0065C5D5    mov         eax,ebx
 0065C5D7    call        TDOMVendorList.Count
 0065C5DC    cmp         esi,eax
>0065C5DE    jge         0065C625
 0065C5E0    mov         eax,esi
 0065C5E2    push        eax
 0065C5E3    mov         eax,ebx
 0065C5E5    call        TDOMVendorList.Count
 0065C5EA    mov         edx,eax
 0065C5EC    sub         edx,2
 0065C5EF    pop         eax
 0065C5F0    sub         edx,eax
>0065C5F2    jl          0065C606
 0065C5F4    inc         edx
 0065C5F5    mov         ecx,dword ptr [ebx+4]
 0065C5F8    mov         ecx,dword ptr [ecx+eax*4+4]
 0065C5FC    mov         esi,dword ptr [ebx+4]
 0065C5FF    mov         dword ptr [esi+eax*4],ecx
 0065C602    inc         eax
 0065C603    dec         edx
>0065C604    jne         0065C5F5
 0065C606    mov         eax,ebx
 0065C608    call        TDOMVendorList.Count
 0065C60D    dec         eax
 0065C60E    push        eax
 0065C60F    lea         eax,[ebx+4]
 0065C612    mov         ecx,1
 0065C617    mov         edx,dword ptr ds:[65BCF8];TDOMVendorArray
 0065C61D    call        @DynArraySetLength
 0065C622    add         esp,4
 0065C625    pop         edi
 0065C626    pop         esi
 0065C627    pop         ebx
 0065C628    ret
*}
end;

//0065C62C
function TDOMVendorList.GetVendors(Index:Integer):TDOMVendor;
begin
{*
 0065C62C    mov         eax,dword ptr [eax+4];TDOMVendorList...FVendors:TDOMVendorArray
 0065C62F    mov         eax,dword ptr [eax+edx*4]
 0065C632    ret
*}
end;

//0065C634
constructor EDOMParseError.Create(Msg:string);
begin
{*
 0065C634    push        ebp
 0065C635    mov         ebp,esp
 0065C637    push        ebx
 0065C638    push        esi
 0065C639    push        edi
 0065C63A    test        dl,dl
>0065C63C    je          0065C646
 0065C63E    add         esp,0FFFFFFF0
 0065C641    call        @ClassCreate
 0065C646    mov         esi,ecx
 0065C648    mov         ebx,edx
 0065C64A    mov         edi,eax
 0065C64C    lea         eax,[edi+18]
 0065C64F    mov         edx,esi
 0065C651    call        @IntfCopy
 0065C656    mov         ecx,dword ptr [ebp+8]
 0065C659    xor         edx,edx
 0065C65B    mov         eax,edi
 0065C65D    call        Exception.Create
 0065C662    mov         eax,edi
 0065C664    test        bl,bl
>0065C666    je          0065C677
 0065C668    call        @AfterConstruction
 0065C66D    pop         dword ptr fs:[0]
 0065C674    add         esp,0C
 0065C677    mov         eax,edi
 0065C679    pop         edi
 0065C67A    pop         esi
 0065C67B    pop         ebx
 0065C67C    pop         ebp
 0065C67D    ret         4
*}
end;

//0065C680
function EDOMParseError.GetErrorCode:Integer;
begin
{*
 0065C680    push        ecx
 0065C681    push        esp
 0065C682    mov         eax,dword ptr [eax+18]
 0065C685    push        eax
 0065C686    mov         eax,dword ptr [eax]
 0065C688    call        dword ptr [eax+0C]
 0065C68B    call        @CheckAutoResult
 0065C690    mov         eax,dword ptr [esp]
 0065C693    pop         edx
 0065C694    ret
*}
end;

//0065C698
function EDOMParseError.GetFilePos:Integer;
begin
{*
 0065C698    push        ecx
 0065C699    push        esp
 0065C69A    mov         eax,dword ptr [eax+18]
 0065C69D    push        eax
 0065C69E    mov         eax,dword ptr [eax]
 0065C6A0    call        dword ptr [eax+24]
 0065C6A3    call        @CheckAutoResult
 0065C6A8    mov         eax,dword ptr [esp]
 0065C6AB    pop         edx
 0065C6AC    ret
*}
end;

//0065C6B0
function EDOMParseError.GetLine:Integer;
begin
{*
 0065C6B0    push        ecx
 0065C6B1    push        esp
 0065C6B2    mov         eax,dword ptr [eax+18]
 0065C6B5    push        eax
 0065C6B6    mov         eax,dword ptr [eax]
 0065C6B8    call        dword ptr [eax+1C]
 0065C6BB    call        @CheckAutoResult
 0065C6C0    mov         eax,dword ptr [esp]
 0065C6C3    pop         edx
 0065C6C4    ret
*}
end;

//0065C6C8
function EDOMParseError.GetLinePos:Integer;
begin
{*
 0065C6C8    push        ecx
 0065C6C9    push        esp
 0065C6CA    mov         eax,dword ptr [eax+18]
 0065C6CD    push        eax
 0065C6CE    mov         eax,dword ptr [eax]
 0065C6D0    call        dword ptr [eax+20]
 0065C6D3    call        @CheckAutoResult
 0065C6D8    mov         eax,dword ptr [esp]
 0065C6DB    pop         edx
 0065C6DC    ret
*}
end;

//0065C6E0
function EDOMParseError.GetReason:UnicodeString;
begin
{*
 0065C6E0    push        ebx
 0065C6E1    push        esi
 0065C6E2    mov         esi,edx
 0065C6E4    mov         ebx,eax
 0065C6E6    mov         eax,esi
 0065C6E8    call        @UStrClr
 0065C6ED    push        eax
 0065C6EE    mov         eax,dword ptr [ebx+18]
 0065C6F1    push        eax
 0065C6F2    mov         eax,dword ptr [eax]
 0065C6F4    call        dword ptr [eax+14]
 0065C6F7    call        @CheckAutoResult
 0065C6FC    pop         esi
 0065C6FD    pop         ebx
 0065C6FE    ret
*}
end;

//0065C700
function EDOMParseError.GetSrcText:UnicodeString;
begin
{*
 0065C700    push        ebx
 0065C701    push        esi
 0065C702    mov         esi,edx
 0065C704    mov         ebx,eax
 0065C706    mov         eax,esi
 0065C708    call        @UStrClr
 0065C70D    push        eax
 0065C70E    mov         eax,dword ptr [ebx+18]
 0065C711    push        eax
 0065C712    mov         eax,dword ptr [eax]
 0065C714    call        dword ptr [eax+18]
 0065C717    call        @CheckAutoResult
 0065C71C    pop         esi
 0065C71D    pop         ebx
 0065C71E    ret
*}
end;

//0065C720
function EDOMParseError.GetURL:UnicodeString;
begin
{*
 0065C720    push        ebx
 0065C721    push        esi
 0065C722    mov         esi,edx
 0065C724    mov         ebx,eax
 0065C726    mov         eax,esi
 0065C728    call        @UStrClr
 0065C72D    push        eax
 0065C72E    mov         eax,dword ptr [ebx+18]
 0065C731    push        eax
 0065C732    mov         eax,dword ptr [eax]
 0065C734    call        dword ptr [eax+10]
 0065C737    call        @CheckAutoResult
 0065C73C    pop         esi
 0065C73D    pop         ebx
 0065C73E    ret
*}
end;

Initialization
//0079D994
{*
 0079D994    push        ebp
 0079D995    mov         ebp,esp
 0079D997    xor         eax,eax
 0079D999    push        ebp
 0079D99A    push        79D9BA
 0079D99F    push        dword ptr fs:[eax]
 0079D9A2    mov         dword ptr fs:[eax],esp
 0079D9A5    sub         dword ptr ds:[82861C],1
 0079D9AC    xor         eax,eax
 0079D9AE    pop         edx
 0079D9AF    pop         ecx
 0079D9B0    pop         ecx
 0079D9B1    mov         dword ptr fs:[eax],edx
 0079D9B4    push        79D9C1
 0079D9B9    ret
>0079D9BA    jmp         @HandleFinally
>0079D9BF    jmp         0079D9B9
 0079D9C1    pop         ebp
 0079D9C2    ret
*}
Finalization
//0065C740
{*
 0065C740    push        ebp
 0065C741    mov         ebp,esp
 0065C743    xor         eax,eax
 0065C745    push        ebp
 0065C746    push        65C78D
 0065C74B    push        dword ptr fs:[eax]
 0065C74E    mov         dword ptr fs:[eax],esp
 0065C751    inc         dword ptr ds:[82861C]
>0065C757    jne         0065C77F
 0065C759    mov         eax,[00828618];DOMVendors:TDOMVendorList
 0065C75E    xor         edx,edx
 0065C760    mov         dword ptr ds:[828618],edx;DOMVendors:TDOMVendorList
 0065C766    call        TObject.Free
 0065C76B    mov         eax,828610;gvar_00828610:UnicodeString
 0065C770    call        @UStrClr
 0065C775    mov         eax,828614;gvar_00828614:UnicodeString
 0065C77A    call        @UStrClr
 0065C77F    xor         eax,eax
 0065C781    pop         edx
 0065C782    pop         ecx
 0065C783    pop         ecx
 0065C784    mov         dword ptr fs:[eax],edx
 0065C787    push        65C794
 0065C78C    ret
>0065C78D    jmp         @HandleFinally
>0065C792    jmp         0065C78C
 0065C794    pop         ebp
 0065C795    ret
*}
end.