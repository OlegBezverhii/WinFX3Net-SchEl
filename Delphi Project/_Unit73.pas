//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit73;

interface

uses
  SysUtils, Classes, System.HelpIntfs, System.Generics.Collections, System.WideStrUtils, System.Generics.Collections, System.Rtti, System.Generics.Defaults;

type
  EHelpSystemException = class(Exception)
  end;
  THelpViewerNode = class(TObject)
  published
    constructor Create;//00550FA0
  public
    FViewer:ICustomHelpViewer;//f4
    FViewerID:Integer;//f8
  end;
  THelpManager = class(TInterfacedObject)
  published
    procedure ShowSearch(Topic:string; HelpFileName:string);//00551ECC
    procedure ShowTopicHelp(Topic:string; Anchor:string; HelpFileName:string);//00552030
    function UnderstandsKeyword(HelpKeyword:string; HelpFileName:string):Boolean;//00551C1C
    procedure ShowIndex(Topic:string; HelpFileName:string);//00551D68
    //procedure GetFilter(?:?);//00552148
    function GetHelpFile:string;//00552338
    procedure Release(ViewerID:Integer);//0055234C
    procedure SetFilter(Filter:string);//00552238
    function GetHandle:NativeUInt;//00552334
    //procedure RegisterViewer(newViewer:ICustomHelpViewer; ?:?);//005510D0
    procedure ShowHelp(HelpKeyword:string; HelpFileName:string);//00551330
    constructor Create();//00550FE4
    destructor Destroy();//00551048
    procedure ShowContextHelp(ContextID:Integer; HelpFileName:string);//005516A4
    procedure AssignHelpSelector(Selector:IHelpSelector);//00551B84
    function Hook(Handle:NativeUInt; HelpFile:string; Data:NativeInt; Command:Word):Boolean;//00551B98
    procedure ShowTableOfContents;//00551978
    procedure ShowTopicHelp(Topic:string; HelpFileName:string);//00551A88
  public
    FHelpSelector:IHelpSelector;//fC
    FViewerList:TList<System.HelpIntfs.THelpViewerNode>;//f10
    FExtendedViewerList:TList<System.HelpIntfs.THelpViewerNode>;//f14
    FMinCookie:Integer;//f18
    FHandle:NativeUInt;//f1C
    FHelpFile:string;//f20
    function SelectViewer(ViewerNames:TStringList):ICustomHelpViewer;//005511AC
    procedure DoSoftShutDown;//0055121C
    function CallSpecialWinHelp(Handle:Windows.THandle; const HelpFile:UnicodeString; Command:Word; Data:NativeInt):Boolean;//00551254
  end;
  TArray<System.HelpIntfs.THelpViewerNode> = array of THelpViewerNode;
//elSize = 4;
  TEnumerator<System.HelpIntfs.THelpViewerNode> = class(TObject)
  published
    function HelpIntfs.THelpViewerNode>.MoveNext:Boolean;//005524F4
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.HelpIntfs.THelpViewerNode> = class(TObject)
  published
    //procedure HelpIntfs.THelpViewerNode>.ToArray(?:?);//00552440
    function HelpIntfs.THelpViewerNode>.GetEnumerator:TEnumerator<System.HelpIntfs.THelpViewerNode>;//00552438
    destructor HelpIntfs.THelpViewerNode>.Destroy();//00552414
  public
    destructor HelpIntfs.THelpViewerNode>.Destroy(); virtual;//00552414
    procedure v0; virtual; abstract;//v0//00405554
    //procedure HelpIntfs.THelpViewerNode>.ToArray(?:?); virtual;//v4//00552440
  end;
  TList<System.HelpIntfs.THelpViewerNode>.arrayofT = array of THelpViewerNode;
//elSize = 4;
  TCollectionNotifyEvent<System.HelpIntfs.THelpViewerNode> = procedure(Sender:TObject; const Item:THelpViewerNode; Action:TCollectionNotification) of object;;
  TList<System.HelpIntfs.THelpViewerNode>.TEnumerator = class(TEnumerator<System.HelpIntfs.THelpViewerNode>)
  published
    function HelpIntfs.THelpViewerNode>.TEnumerator.MoveNext:Boolean;//005527DC
    constructor Create;//00552798
  public
    FList:TList<System.HelpIntfs.THelpViewerNode>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//00552788
    procedure v4; virtual;//v4//00552790
  end;
  TList<System.HelpIntfs.THelpViewerNode> = class(TEnumerable<System.HelpIntfs.THelpViewerNode>)
  published
    procedure HelpIntfs.THelpViewerNode>.Add(Value:THelpViewerNode);//00552738
    procedure HelpIntfs.THelpViewerNode>.Error(Msg:string; Data:NativeInt);//00552700
    function HelpIntfs.THelpViewerNode>.GetEnumerator:TList<System.HelpIntfs.THelpViewerNode>.TEnumerator;//0055275C
    //procedure HelpIntfs.THelpViewerNode>.ToArray(?:?);//00552748
    constructor sub_00552604(AComparer:IComparer<System.HelpIntfs.THelpViewerNode>);//00552604
    constructor HelpIntfs.THelpViewerNode>.Create();//0055258C
    destructor HelpIntfs.THelpViewerNode>.Destroy();//005526B4
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FItems:TList<System.HelpIntfs.THelpViewerNode>.arrayofT;//f4
    FListHelper:TListHelper;//f8
    FComparer:IComparer<System.HelpIntfs.THelpViewerNode>;//fC
    FOnNotify:TCollectionNotifyEvent<System.HelpIntfs.THelpViewerNode>;//f10
    FArrayManager:TArrayManager<System.HelpIntfs.THelpViewerNode>;//f18
    FItems:TList<System.HelpIntfs.THelpViewerNode>.arrayofT;//f20
    FComparer:IComparer<System.HelpIntfs.THelpViewerNode>;//f24
    FOnNotify:TCollectionNotifyEvent<System.HelpIntfs.THelpViewerNode>;//f28
    destructor HelpIntfs.THelpViewerNode>.Destroy(); virtual;//005526B4
    procedure v0; virtual;//v0//0055256C
    //procedure HelpIntfs.THelpViewerNode>.ToArray(?:?); virtual;//v4//00552748
    //procedure v8(?:?); virtual;//v8//00552574
  end;
    function WStrLCopy(Dest:PWideChar; const Source:PWideChar; MaxLen:Cardinal):PWideChar;//0054EDD0
    function WStrPLCopy(Dest:PWideChar; const Source:WideString; MaxLen:Cardinal):PWideChar;//0054EDF8
    procedure EnsureHelpManager;//00550F34
    function GetHelpSystem(var System:IHelpSystem):Boolean;//00550F60
    //procedure sub_00551600(?:?; ?:?; ?:?);//00551600

implementation

//0054EDD0
function WStrLCopy(Dest:PWideChar; const Source:PWideChar; MaxLen:Cardinal):PWideChar;
begin
{*
 0054EDD0    push        esi
 0054EDD1    push        edi
 0054EDD2    mov         edi,eax
>0054EDD4    jmp         0054EDE0
 0054EDD6    mov         word ptr [eax],si
 0054EDD9    add         edx,2
 0054EDDC    add         eax,2
 0054EDDF    dec         ecx
 0054EDE0    movzx       esi,word ptr [edx]
 0054EDE3    test        si,si
>0054EDE6    je          0054EDEC
 0054EDE8    test        ecx,ecx
>0054EDEA    ja          0054EDD6
 0054EDEC    mov         word ptr [eax],0
 0054EDF1    mov         eax,edi
 0054EDF3    pop         edi
 0054EDF4    pop         esi
 0054EDF5    ret
*}
end;

//0054EDF8
function WStrPLCopy(Dest:PWideChar; const Source:WideString; MaxLen:Cardinal):PWideChar;
begin
{*
 0054EDF8    push        ebx
 0054EDF9    push        esi
 0054EDFA    push        edi
 0054EDFB    mov         edi,ecx
 0054EDFD    mov         esi,edx
 0054EDFF    mov         ebx,eax
 0054EE01    mov         eax,esi
 0054EE03    call        @WStrToPWChar
 0054EE08    mov         edx,eax
 0054EE0A    mov         ecx,edi
 0054EE0C    mov         eax,ebx
 0054EE0E    call        WStrLCopy
 0054EE13    pop         edi
 0054EE14    pop         esi
 0054EE15    pop         ebx
 0054EE16    ret
*}
end;

//00550F34
procedure EnsureHelpManager;
begin
{*
 00550F34    cmp         dword ptr ds:[7CA6DC],0
>00550F3B    jne         00550F5C
 00550F3D    mov         dl,1
 00550F3F    mov         eax,[0054F400];THelpManager
 00550F44    call        THelpManager.Create
 00550F49    mov         edx,eax
 00550F4B    test        edx,edx
>00550F4D    je          00550F52
 00550F4F    sub         edx,0FFFFFFDC
 00550F52    mov         eax,7CA6DC
 00550F57    call        @IntfCopy
 00550F5C    ret
*}
end;

//00550F60
function GetHelpSystem(var System:IHelpSystem):Boolean;
begin
{*
 00550F60    push        ebp
 00550F61    mov         ebp,esp
 00550F63    push        ebx
 00550F64    mov         ebx,eax
 00550F66    test        ebx,ebx
>00550F68    je          00550F6E
 00550F6A    xor         eax,eax
 00550F6C    mov         dword ptr [ebx],eax
 00550F6E    call        EnsureHelpManager
 00550F73    mov         eax,ebx
 00550F75    mov         edx,dword ptr ds:[7CA6DC]
 00550F7B    mov         ecx,550F90
 00550F80    call        @IntfCast
 00550F85    cmp         dword ptr [ebx],0
 00550F88    setne       al
 00550F8B    pop         ebx
 00550F8C    pop         ebp
 00550F8D    ret
*}
end;

//00550FA0
constructor THelpViewerNode.Create;
begin
{*
 00550FA0    push        ebx
 00550FA1    push        esi
 00550FA2    push        edi
 00550FA3    test        dl,dl
>00550FA5    je          00550FAF
 00550FA7    add         esp,0FFFFFFF0
 00550FAA    call        @ClassCreate
 00550FAF    mov         esi,ecx
 00550FB1    mov         ebx,edx
 00550FB3    mov         edi,eax
 00550FB5    xor         edx,edx
 00550FB7    mov         eax,edi
 00550FB9    call        TObject.Create
 00550FBE    lea         eax,[edi+4]
 00550FC1    mov         edx,esi
 00550FC3    call        @IntfCopy
 00550FC8    mov         eax,edi
 00550FCA    test        bl,bl
>00550FCC    je          00550FDD
 00550FCE    call        @AfterConstruction
 00550FD3    pop         dword ptr fs:[0]
 00550FDA    add         esp,0C
 00550FDD    mov         eax,edi
 00550FDF    pop         edi
 00550FE0    pop         esi
 00550FE1    pop         ebx
 00550FE2    ret
*}
end;

//00550FE4
constructor THelpManager.Create();
begin
{*
 00550FE4    push        ebx
 00550FE5    push        esi
 00550FE6    test        dl,dl
>00550FE8    je          00550FF2
 00550FEA    add         esp,0FFFFFFF0
 00550FED    call        @ClassCreate
 00550FF2    mov         ebx,edx
 00550FF4    mov         esi,eax
 00550FF6    xor         edx,edx
 00550FF8    mov         eax,esi
 00550FFA    call        TObject.Create
 00550FFF    mov         dl,1
 00551001    mov         eax,[00550260];TList<System.HelpIntfs.THelpViewerNode>
 00551006    call        TList<System.HelpIntfs.THelpViewerNode>.Create
 0055100B    mov         dword ptr [esi+10],eax
 0055100E    mov         dl,1
 00551010    mov         eax,[00550260];TList<System.HelpIntfs.THelpViewerNode>
 00551015    call        TList<System.HelpIntfs.THelpViewerNode>.Create
 0055101A    mov         dword ptr [esi+14],eax
 0055101D    lea         eax,[esi+20]
 00551020    call        @UStrClr
 00551025    mov         dword ptr [esi+18],1
 0055102C    mov         eax,esi
 0055102E    test        bl,bl
>00551030    je          00551041
 00551032    call        @AfterConstruction
 00551037    pop         dword ptr fs:[0]
 0055103E    add         esp,0C
 00551041    mov         eax,esi
 00551043    pop         esi
 00551044    pop         ebx
 00551045    ret
*}
end;

//00551048
destructor THelpManager.Destroy();
begin
{*
 00551048    push        ebx
 00551049    push        esi
 0055104A    push        edi
 0055104B    push        ebp
 0055104C    push        ecx
 0055104D    call        @BeforeDestruction
 00551052    mov         byte ptr [esp],dl
 00551055    mov         ebx,eax
 00551057    mov         eax,dword ptr [ebx+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 0055105A    mov         ebp,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 0055105D    dec         ebp
 0055105E    test        ebp,ebp
>00551060    jl          0055108E
 00551062    inc         ebp
 00551063    mov         eax,dword ptr [ebx+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 00551066    mov         esi,eax
 00551068    mov         edi,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 0055106B    dec         edi
 0055106C    lea         eax,[esi+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 0055106F    mov         edx,edi
 00551071    call        00434534
 00551076    mov         eax,dword ptr [esi+20]
 00551079    mov         esi,dword ptr [eax+edi*4]
 0055107C    mov         eax,dword ptr [esi+4]
 0055107F    mov         edx,dword ptr [eax]
 00551081    call        dword ptr [edx+2C]
 00551084    mov         eax,esi
 00551086    call        TObject.Free
 0055108B    dec         ebp
>0055108C    jne         00551063
 0055108E    cmp         dword ptr [ebx+0C],0;THelpManager.FHelpSelector:IHelpSelector
>00551092    je          0055109C
 00551094    lea         eax,[ebx+0C];THelpManager.FHelpSelector:IHelpSelector
 00551097    call        @IntfClear
 0055109C    mov         eax,dword ptr [ebx+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 0055109F    call        TObject.Free
 005510A4    mov         eax,dword ptr [ebx+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 005510A7    call        TObject.Free
 005510AC    movzx       edx,byte ptr [esp]
 005510B0    and         dl,0FC
 005510B3    mov         eax,ebx
 005510B5    call        TObject.Destroy
 005510BA    cmp         byte ptr [esp],0
>005510BE    jle         005510C7
 005510C0    mov         eax,ebx
 005510C2    call        @ClassDestroy
 005510C7    pop         edx
 005510C8    pop         ebp
 005510C9    pop         edi
 005510CA    pop         esi
 005510CB    pop         ebx
 005510CC    ret
*}
end;

//005510D0
{*procedure THelpManager.RegisterViewer(newViewer:ICustomHelpViewer; ?:?);
begin
 005510D0    push        ebp
 005510D1    mov         ebp,esp
 005510D3    add         esp,0FFFFFFF0
 005510D6    push        ebx
 005510D7    push        esi
 005510D8    push        edi
 005510D9    xor         ebx,ebx
 005510DB    mov         dword ptr [ebp-4],ebx
 005510DE    mov         dword ptr [ebp-8],ecx
 005510E1    mov         edi,edx
 005510E3    mov         ebx,eax
 005510E5    xor         eax,eax
 005510E7    push        ebp
 005510E8    push        55117E
 005510ED    push        dword ptr fs:[eax]
 005510F0    mov         dword ptr fs:[eax],esp
 005510F3    mov         ecx,edi
 005510F5    mov         dl,1
 005510F7    mov         eax,[0054F058];THelpViewerNode
 005510FC    call        THelpViewerNode.Create;THelpViewerNode.Create
 00551101    mov         esi,eax
 00551103    mov         eax,dword ptr [ebx+18];THelpManager.FMinCookie:Integer
 00551106    mov         dword ptr [esi+8],eax;THelpViewerNode.FViewerID:Integer
 00551109    mov         eax,dword ptr [ebx+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 0055110C    mov         dword ptr [ebp-0C],esi
 0055110F    lea         edx,[ebp-0C]
 00551112    add         eax,8;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551115    call        0043489C
 0055111A    mov         edx,dword ptr [ebx+18];THelpManager.FMinCookie:Integer
 0055111D    mov         eax,edi
 0055111F    mov         ecx,dword ptr [eax]
 00551121    call        dword ptr [ecx+24]
 00551124    lea         eax,[ebp-4]
 00551127    call        @IntfClear
 0055112C    mov         ecx,eax
 0055112E    mov         edx,55118C;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00551133    mov         eax,edi
 00551135    call        Supports
 0055113A    test        al,al
>0055113C    je          0055114F
 0055113E    mov         eax,dword ptr [ebx+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00551141    mov         dword ptr [ebp-10],esi
 00551144    lea         edx,[ebp-10]
 00551147    add         eax,8;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 0055114A    call        0043489C
 0055114F    inc         dword ptr [ebx+18];THelpManager.FMinCookie:Integer
 00551152    mov         eax,dword ptr [ebp-8]
 00551155    mov         edx,ebx
 00551157    test        edx,edx
>00551159    je          0055115E
 0055115B    sub         edx,0FFFFFFF8
 0055115E    mov         ecx,55119C;['{6B0CDB05-C30A-414B-99C4-F11CD195385E}']
 00551163    call        @IntfCast
 00551168    xor         eax,eax
 0055116A    pop         edx
 0055116B    pop         ecx
 0055116C    pop         ecx
 0055116D    mov         dword ptr fs:[eax],edx
 00551170    push        551185
 00551175    lea         eax,[ebp-4]
 00551178    call        @IntfClear
 0055117D    ret
>0055117E    jmp         @HandleFinally
>00551183    jmp         00551175
 00551185    pop         edi
 00551186    pop         esi
 00551187    pop         ebx
 00551188    mov         esp,ebp
 0055118A    pop         ebp
 0055118B    ret
end;*}

//005511AC
function THelpManager.SelectViewer(ViewerNames:TStringList):ICustomHelpViewer;
begin
{*
 005511AC    push        ebx
 005511AD    push        esi
 005511AE    push        edi
 005511AF    mov         edi,ecx
 005511B1    mov         ebx,edx
 005511B3    mov         esi,eax
 005511B5    mov         eax,edi
 005511B7    call        @IntfClear
 005511BC    mov         eax,ebx
 005511BE    mov         edx,dword ptr [eax]
 005511C0    call        dword ptr [edx+14]
 005511C3    dec         eax
>005511C4    jne         005511DB
 005511C6    xor         edx,edx
 005511C8    mov         eax,ebx
 005511CA    mov         ecx,dword ptr [eax]
 005511CC    call        dword ptr [ecx+18]
 005511CF    mov         edx,dword ptr [eax+4]
 005511D2    mov         eax,edi
 005511D4    call        @IntfCopy
>005511D9    jmp         00551215
 005511DB    mov         eax,ebx
 005511DD    mov         edx,dword ptr [eax]
 005511DF    call        dword ptr [edx+14]
 005511E2    test        eax,eax
>005511E4    jle         00551215
 005511E6    cmp         dword ptr [esi+0C],0
>005511EA    je          00551215
 005511EC    mov         eax,ebx
 005511EE    mov         edx,dword ptr [eax]
 005511F0    call        dword ptr [edx+0A4]
 005511F6    mov         edx,ebx
 005511F8    mov         eax,dword ptr [esi+0C]
 005511FB    mov         ecx,dword ptr [eax]
 005511FD    call        dword ptr [ecx+10]
 00551200    mov         esi,eax
 00551202    mov         edx,esi
 00551204    mov         eax,ebx
 00551206    mov         ecx,dword ptr [eax]
 00551208    call        dword ptr [ecx+18]
 0055120B    mov         edx,dword ptr [eax+4]
 0055120E    mov         eax,edi
 00551210    call        @IntfCopy
 00551215    pop         edi
 00551216    pop         esi
 00551217    pop         ebx
 00551218    ret
*}
end;

//0055121C
procedure THelpManager.DoSoftShutDown;
begin
{*
 0055121C    push        ebx
 0055121D    push        esi
 0055121E    push        edi
 0055121F    push        ebp
 00551220    mov         ebp,eax
 00551222    mov         eax,dword ptr [ebp+10]
 00551225    mov         edi,dword ptr [eax+8]
 00551228    dec         edi
 00551229    test        edi,edi
>0055122B    jl          0055124F
 0055122D    inc         edi
 0055122E    xor         ebx,ebx
 00551230    mov         esi,dword ptr [ebp+10]
 00551233    lea         eax,[esi+8]
 00551236    mov         edx,ebx
 00551238    call        00434534
 0055123D    mov         eax,dword ptr [esi+20]
 00551240    mov         eax,dword ptr [eax+ebx*4]
 00551243    mov         eax,dword ptr [eax+4]
 00551246    mov         edx,dword ptr [eax]
 00551248    call        dword ptr [edx+28]
 0055124B    inc         ebx
 0055124C    dec         edi
>0055124D    jne         00551230
 0055124F    pop         ebp
 00551250    pop         edi
 00551251    pop         esi
 00551252    pop         ebx
 00551253    ret
*}
end;

//00551254
function THelpManager.CallSpecialWinHelp(Handle:Windows.THandle; const HelpFile:UnicodeString; Command:Word; Data:NativeInt):Boolean;
begin
{*
 00551254    push        ebp
 00551255    mov         ebp,esp
 00551257    add         esp,0FFFFFFEC
 0055125A    push        ebx
 0055125B    push        esi
 0055125C    push        edi
 0055125D    xor         ebx,ebx
 0055125F    mov         dword ptr [ebp-4],ebx
 00551262    mov         dword ptr [ebp-10],ecx
 00551265    mov         dword ptr [ebp-0C],edx
 00551268    mov         dword ptr [ebp-8],eax
 0055126B    xor         eax,eax
 0055126D    push        ebp
 0055126E    push        551309
 00551273    push        dword ptr fs:[eax]
 00551276    mov         dword ptr fs:[eax],esp
 00551279    mov         byte ptr [ebp-11],0
 0055127D    cmp         dword ptr [ebp-10],0
>00551281    je          00551291
 00551283    mov         eax,dword ptr [ebp-8]
 00551286    add         eax,20
 00551289    mov         edx,dword ptr [ebp-10]
 0055128C    call        @UStrAsg
 00551291    mov         eax,dword ptr [ebp-8]
 00551294    mov         eax,dword ptr [eax+10]
 00551297    mov         edi,dword ptr [eax+8]
 0055129A    dec         edi
 0055129B    test        edi,edi
>0055129D    jl          005512F3
 0055129F    inc         edi
 005512A0    xor         ebx,ebx
 005512A2    mov         eax,dword ptr [ebp-8]
 005512A5    mov         esi,dword ptr [eax+10]
 005512A8    lea         eax,[esi+8]
 005512AB    mov         edx,ebx
 005512AD    call        00434534
 005512B2    lea         eax,[ebp-4]
 005512B5    call        @IntfClear
 005512BA    mov         ecx,eax
 005512BC    mov         edx,551320
 005512C1    mov         eax,dword ptr [esi+20]
 005512C4    mov         eax,dword ptr [eax+ebx*4]
 005512C7    mov         eax,dword ptr [eax+4]
 005512CA    call        Supports
 005512CF    test        al,al
>005512D1    je          005512EF
 005512D3    movzx       eax,word ptr [ebp+0C]
 005512D7    push        eax
 005512D8    mov         eax,dword ptr [ebp+8]
 005512DB    push        eax
 005512DC    mov         ecx,dword ptr [ebp-10]
 005512DF    mov         edx,dword ptr [ebp-0C]
 005512E2    mov         eax,dword ptr [ebp-4]
 005512E5    mov         esi,dword ptr [eax]
 005512E7    call        dword ptr [esi+40]
 005512EA    mov         byte ptr [ebp-11],al
>005512ED    jmp         005512F3
 005512EF    inc         ebx
 005512F0    dec         edi
>005512F1    jne         005512A2
 005512F3    xor         eax,eax
 005512F5    pop         edx
 005512F6    pop         ecx
 005512F7    pop         ecx
 005512F8    mov         dword ptr fs:[eax],edx
 005512FB    push        551310
 00551300    lea         eax,[ebp-4]
 00551303    call        @IntfClear
 00551308    ret
>00551309    jmp         @HandleFinally
>0055130E    jmp         00551300
 00551310    movzx       eax,byte ptr [ebp-11]
 00551314    pop         edi
 00551315    pop         esi
 00551316    pop         ebx
 00551317    mov         esp,ebp
 00551319    pop         ebp
 0055131A    ret         8
*}
end;

//00551330
procedure THelpManager.ShowHelp(HelpKeyword:string; HelpFileName:string);
begin
{*
 00551330    push        ebp
 00551331    mov         ebp,esp
 00551333    add         esp,0FFFFFFCC
 00551336    push        ebx
 00551337    push        esi
 00551338    push        edi
 00551339    xor         ebx,ebx
 0055133B    mov         dword ptr [ebp-34],ebx
 0055133E    mov         dword ptr [ebp-4],ebx
 00551341    mov         ebx,ecx
 00551343    mov         dword ptr [ebp-0C],edx
 00551346    mov         dword ptr [ebp-8],eax
 00551349    xor         eax,eax
 0055134B    push        ebp
 0055134C    push        5515F1
 00551351    push        dword ptr fs:[eax]
 00551354    mov         dword ptr fs:[eax],esp
 00551357    test        ebx,ebx
>00551359    je          00551368
 0055135B    mov         eax,dword ptr [ebp-8]
 0055135E    add         eax,20;THelpManager.FHelpFile:string
 00551361    mov         edx,ebx
 00551363    call        @UStrAsg
 00551368    mov         eax,dword ptr [ebp-8]
 0055136B    mov         eax,dword ptr [eax+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 0055136E    cmp         dword ptr [eax+8],0;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
>00551372    jle         005515D3
 00551378    mov         dl,1
 0055137A    mov         eax,[00550260];TList<System.HelpIntfs.THelpViewerNode>
 0055137F    call        TList<System.HelpIntfs.THelpViewerNode>.Create
 00551384    mov         dword ptr [ebp-20],eax
 00551387    xor         edx,edx
 00551389    push        ebp
 0055138A    push        5515CC
 0055138F    push        dword ptr fs:[edx]
 00551392    mov         dword ptr fs:[edx],esp
 00551395    mov         eax,dword ptr [ebp-8]
 00551398    mov         eax,dword ptr [eax+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 0055139B    mov         eax,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 0055139E    dec         eax
 0055139F    test        eax,eax
>005513A1    jl          005513F0
 005513A3    inc         eax
 005513A4    mov         dword ptr [ebp-24],eax
 005513A7    mov         dword ptr [ebp-10],0
 005513AE    mov         eax,dword ptr [ebp-8]
 005513B1    mov         ebx,dword ptr [eax+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 005513B4    lea         eax,[ebx+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 005513B7    mov         edx,dword ptr [ebp-10]
 005513BA    call        00434534
 005513BF    mov         eax,dword ptr [ebx+20]
 005513C2    mov         edx,dword ptr [ebp-10]
 005513C5    mov         ebx,dword ptr [eax+edx*4]
 005513C8    mov         eax,dword ptr [ebx+4]
 005513CB    mov         edx,dword ptr [ebp-0C]
 005513CE    mov         ecx,dword ptr [eax]
 005513D0    call        dword ptr [ecx+10]
 005513D3    test        eax,eax
>005513D5    jle         005513E8
 005513D7    mov         dword ptr [ebp-28],ebx
 005513DA    lea         edx,[ebp-28]
 005513DD    mov         eax,dword ptr [ebp-20]
 005513E0    add         eax,8;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 005513E3    call        0043489C
 005513E8    inc         dword ptr [ebp-10]
 005513EB    dec         dword ptr [ebp-24]
>005513EE    jne         005513AE
 005513F0    mov         eax,dword ptr [ebp-20]
 005513F3    mov         eax,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 005513F6    test        eax,eax
>005513F8    jne         0055142B
 005513FA    mov         eax,dword ptr [ebp-0C]
 005513FD    call        @UStrToPWChar
 00551402    mov         dword ptr [ebp-30],eax
 00551405    mov         byte ptr [ebp-2C],0A
 00551409    lea         eax,[ebp-30]
 0055140C    push        eax
 0055140D    push        0
 0055140F    mov         ecx,dword ptr ds:[7C41D4];^SResString171:TResStringRec
 00551415    mov         dl,1
 00551417    mov         eax,[0054EF9C];EHelpSystemException
 0055141C    call        Exception.CreateResFmt;EHelpSystemException.Create
 00551421    call        @RaiseExcept
>00551426    jmp         005515B6
 0055142B    dec         eax
>0055142C    jne         00551453
 0055142E    mov         eax,dword ptr [ebp-20]
 00551431    add         eax,8;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551434    xor         edx,edx
 00551436    call        00434534
 0055143B    mov         eax,dword ptr [ebp-20]
 0055143E    mov         eax,dword ptr [eax+20]
 00551441    mov         eax,dword ptr [eax]
 00551443    mov         eax,dword ptr [eax+4]
 00551446    mov         edx,dword ptr [ebp-0C]
 00551449    mov         ecx,dword ptr [eax]
 0055144B    call        dword ptr [ecx+20]
>0055144E    jmp         005515B6
 00551453    mov         dl,1
 00551455    mov         eax,[0046F9A0];TStringList
 0055145A    call        TStringList.Create;TStringList.Create
 0055145F    mov         dword ptr [ebp-18],eax
 00551462    xor         eax,eax
 00551464    push        ebp
 00551465    push        5515AF
 0055146A    push        dword ptr fs:[eax]
 0055146D    mov         dword ptr fs:[eax],esp
 00551470    mov         eax,dword ptr [ebp-20]
 00551473    mov         eax,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551476    dec         eax
 00551477    test        eax,eax
>00551479    jl          00551527
 0055147F    inc         eax
 00551480    mov         dword ptr [ebp-24],eax
 00551483    mov         dword ptr [ebp-10],0
 0055148A    mov         eax,dword ptr [ebp-20]
 0055148D    add         eax,8;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551490    mov         edx,dword ptr [ebp-10]
 00551493    call        00434534
 00551498    mov         eax,dword ptr [ebp-20]
 0055149B    mov         eax,dword ptr [eax+20]
 0055149E    mov         edx,dword ptr [ebp-10]
 005514A1    mov         ebx,dword ptr [eax+edx*4]
 005514A4    mov         eax,dword ptr [ebx+4]
 005514A7    mov         edx,dword ptr [ebp-0C]
 005514AA    mov         ecx,dword ptr [eax]
 005514AC    call        dword ptr [ecx+14]
 005514AF    mov         dword ptr [ebp-1C],eax
 005514B2    cmp         dword ptr [ebp-1C],0
>005514B6    je          0055151B
 005514B8    xor         eax,eax
 005514BA    push        ebp
 005514BB    push        551514
 005514C0    push        dword ptr fs:[eax]
 005514C3    mov         dword ptr fs:[eax],esp
 005514C6    mov         eax,dword ptr [ebp-1C]
 005514C9    mov         edx,dword ptr [eax]
 005514CB    call        dword ptr [edx+14]
 005514CE    mov         esi,eax
 005514D0    dec         esi
 005514D1    test        esi,esi
>005514D3    jl          005514FE
 005514D5    inc         esi
 005514D6    mov         dword ptr [ebp-14],0
 005514DD    lea         ecx,[ebp-34]
 005514E0    mov         edx,dword ptr [ebp-14]
 005514E3    mov         eax,dword ptr [ebp-1C]
 005514E6    mov         edi,dword ptr [eax]
 005514E8    call        dword ptr [edi+0C]
 005514EB    mov         edx,dword ptr [ebp-34]
 005514EE    mov         ecx,ebx
 005514F0    mov         eax,dword ptr [ebp-18]
 005514F3    mov         edi,dword ptr [eax]
 005514F5    call        dword ptr [edi+40];TStringList.AddObject
 005514F8    inc         dword ptr [ebp-14]
 005514FB    dec         esi
>005514FC    jne         005514DD
 005514FE    xor         eax,eax
 00551500    pop         edx
 00551501    pop         ecx
 00551502    pop         ecx
 00551503    mov         dword ptr fs:[eax],edx
 00551506    push        55151B
 0055150B    mov         eax,dword ptr [ebp-1C]
 0055150E    call        TObject.Free
 00551513    ret
>00551514    jmp         @HandleFinally
>00551519    jmp         0055150B
 0055151B    inc         dword ptr [ebp-10]
 0055151E    dec         dword ptr [ebp-24]
>00551521    jne         0055148A
 00551527    mov         eax,dword ptr [ebp-8]
 0055152A    cmp         dword ptr [eax+0C],0;THelpManager.FHelpSelector:IHelpSelector
>0055152E    je          00551575
 00551530    mov         eax,dword ptr [ebp-18]
 00551533    mov         edx,dword ptr [eax]
 00551535    call        dword ptr [edx+0A4];TStringList.Sort
 0055153B    mov         eax,dword ptr [ebp-8]
 0055153E    mov         eax,dword ptr [eax+0C];THelpManager.FHelpSelector:IHelpSelector
 00551541    mov         edx,dword ptr [ebp-18]
 00551544    mov         ecx,dword ptr [eax]
 00551546    call        dword ptr [ecx+0C]
 00551549    mov         ebx,eax
 0055154B    test        ebx,ebx
>0055154D    jl          00551599
 0055154F    mov         edx,ebx
 00551551    mov         eax,dword ptr [ebp-18]
 00551554    mov         ecx,dword ptr [eax]
 00551556    call        dword ptr [ecx+18];TStringList.GetObject
 00551559    mov         esi,eax
 0055155B    lea         ecx,[ebp-4]
 0055155E    mov         edx,ebx
 00551560    mov         eax,dword ptr [ebp-18]
 00551563    mov         ebx,dword ptr [eax]
 00551565    call        dword ptr [ebx+0C];TStringList.Get
 00551568    mov         eax,dword ptr [esi+4]
 0055156B    mov         edx,dword ptr [ebp-4]
 0055156E    mov         ecx,dword ptr [eax]
 00551570    call        dword ptr [ecx+20]
>00551573    jmp         00551599
 00551575    xor         edx,edx
 00551577    mov         eax,dword ptr [ebp-18]
 0055157A    mov         ecx,dword ptr [eax]
 0055157C    call        dword ptr [ecx+18];TStringList.GetObject
 0055157F    mov         esi,eax
 00551581    lea         ecx,[ebp-4]
 00551584    xor         edx,edx
 00551586    mov         eax,dword ptr [ebp-18]
 00551589    mov         ebx,dword ptr [eax]
 0055158B    call        dword ptr [ebx+0C];TStringList.Get
 0055158E    mov         eax,dword ptr [esi+4]
 00551591    mov         edx,dword ptr [ebp-4]
 00551594    mov         ecx,dword ptr [eax]
 00551596    call        dword ptr [ecx+20]
 00551599    xor         eax,eax
 0055159B    pop         edx
 0055159C    pop         ecx
 0055159D    pop         ecx
 0055159E    mov         dword ptr fs:[eax],edx
 005515A1    push        5515B6
 005515A6    mov         eax,dword ptr [ebp-18]
 005515A9    call        TObject.Free
 005515AE    ret
>005515AF    jmp         @HandleFinally
>005515B4    jmp         005515A6
 005515B6    xor         eax,eax
 005515B8    pop         edx
 005515B9    pop         ecx
 005515BA    pop         ecx
 005515BB    mov         dword ptr fs:[eax],edx
 005515BE    push        5515D3
 005515C3    mov         eax,dword ptr [ebp-20]
 005515C6    call        TObject.Free
 005515CB    ret
>005515CC    jmp         @HandleFinally
>005515D1    jmp         005515C3
 005515D3    xor         eax,eax
 005515D5    pop         edx
 005515D6    pop         ecx
 005515D7    pop         ecx
 005515D8    mov         dword ptr fs:[eax],edx
 005515DB    push        5515F8
 005515E0    lea         eax,[ebp-34]
 005515E3    call        @UStrClr
 005515E8    lea         eax,[ebp-4]
 005515EB    call        @UStrClr
 005515F0    ret
>005515F1    jmp         @HandleFinally
>005515F6    jmp         005515E0
 005515F8    pop         edi
 005515F9    pop         esi
 005515FA    pop         ebx
 005515FB    mov         esp,ebp
 005515FD    pop         ebp
 005515FE    ret
*}
end;

//00551600
{*procedure sub_00551600(?:?; ?:?; ?:?);
begin
 00551600    push        ebp
 00551601    mov         ebp,esp
 00551603    push        0
 00551605    push        0
 00551607    push        0
 00551609    push        ebx
 0055160A    push        esi
 0055160B    push        edi
 0055160C    mov         dword ptr [ebp-8],edx
 0055160F    mov         edi,eax
 00551611    xor         eax,eax
 00551613    push        ebp
 00551614    push        551684
 00551619    push        dword ptr fs:[eax]
 0055161C    mov         dword ptr fs:[eax],esp
 0055161F    mov         eax,dword ptr [ebp+8]
 00551622    mov         eax,dword ptr [eax-4]
 00551625    mov         ebx,dword ptr [eax+14]
 00551628    mov         eax,dword ptr [ebp+8]
 0055162B    mov         esi,dword ptr [eax-8]
 0055162E    lea         eax,[ebx+8]
 00551631    mov         edx,esi
 00551633    call        00434534
 00551638    lea         eax,[ebp-4]
 0055163B    mov         edx,dword ptr [ebx+20]
 0055163E    mov         edx,dword ptr [edx+esi*4]
 00551641    mov         edx,dword ptr [edx+4]
 00551644    call        @IntfCopy
 00551649    lea         eax,[ebp-0C]
 0055164C    mov         edx,dword ptr [ebp-4]
 0055164F    mov         ecx,551694;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00551654    call        @IntfCast
 00551659    mov         eax,dword ptr [ebp-0C]
 0055165C    mov         ecx,dword ptr [ebp-8]
 0055165F    mov         edx,edi
 00551661    mov         ebx,dword ptr [eax]
 00551663    call        dword ptr [ebx+3C]
 00551666    xor         eax,eax
 00551668    pop         edx
 00551669    pop         ecx
 0055166A    pop         ecx
 0055166B    mov         dword ptr fs:[eax],edx
 0055166E    push        55168B
 00551673    lea         eax,[ebp-0C]
 00551676    call        @IntfClear
 0055167B    lea         eax,[ebp-4]
 0055167E    call        @IntfClear
 00551683    ret
>00551684    jmp         @HandleFinally
>00551689    jmp         00551673
 0055168B    pop         edi
 0055168C    pop         esi
 0055168D    pop         ebx
 0055168E    mov         esp,ebp
 00551690    pop         ebp
 00551691    ret
end;*}

//005516A4
procedure THelpManager.ShowContextHelp(ContextID:Integer; HelpFileName:string);
begin
{*
 005516A4    push        ebp
 005516A5    mov         ebp,esp
 005516A7    add         esp,0FFFFFFC4
 005516AA    push        ebx
 005516AB    push        esi
 005516AC    push        edi
 005516AD    xor         ebx,ebx
 005516AF    mov         dword ptr [ebp-3C],ebx
 005516B2    mov         dword ptr [ebp-38],ebx
 005516B5    mov         dword ptr [ebp-34],ebx
 005516B8    mov         dword ptr [ebp-28],ebx
 005516BB    mov         dword ptr [ebp-0C],ebx
 005516BE    mov         dword ptr [ebp-10],ebx
 005516C1    mov         dword ptr [ebp-18],ecx
 005516C4    mov         dword ptr [ebp-14],edx
 005516C7    mov         dword ptr [ebp-4],eax
 005516CA    xor         eax,eax
 005516CC    push        ebp
 005516CD    push        551948
 005516D2    push        dword ptr fs:[eax]
 005516D5    mov         dword ptr fs:[eax],esp
 005516D8    xor         eax,eax
 005516DA    mov         dword ptr [ebp-1C],eax
 005516DD    cmp         dword ptr [ebp-18],0
>005516E1    je          005516F1
 005516E3    mov         eax,dword ptr [ebp-4]
 005516E6    add         eax,20
 005516E9    mov         edx,dword ptr [ebp-18]
 005516EC    call        @UStrAsg
 005516F1    mov         eax,dword ptr [ebp-4]
 005516F4    mov         eax,dword ptr [eax+14]
 005516F7    mov         eax,dword ptr [eax+8]
 005516FA    test        eax,eax
>005516FC    jne         00551717
 005516FE    mov         ecx,dword ptr ds:[7C4BA8];^SResString165:TResStringRec
 00551704    mov         dl,1
 00551706    mov         eax,[0054EF9C];EHelpSystemException
 0055170B    call        Exception.CreateRes
 00551710    call        @RaiseExcept
>00551715    jmp         0055176E
 00551717    mov         esi,eax
 00551719    dec         esi
 0055171A    test        esi,esi
>0055171C    jl          0055176E
 0055171E    inc         esi
 0055171F    xor         ebx,ebx
 00551721    mov         eax,dword ptr [ebp-4]
 00551724    mov         edi,dword ptr [eax+14]
 00551727    lea         eax,[edi+8]
 0055172A    mov         edx,ebx
 0055172C    call        00434534
 00551731    lea         eax,[ebp-0C]
 00551734    mov         edx,dword ptr [edi+20]
 00551737    mov         edx,dword ptr [edx+ebx*4]
 0055173A    mov         edx,dword ptr [edx+4]
 0055173D    call        @IntfCopy
 00551742    lea         eax,[ebp-28]
 00551745    mov         edx,dword ptr [ebp-0C]
 00551748    mov         ecx,551958
 0055174D    call        @IntfCast
 00551752    mov         eax,dword ptr [ebp-28]
 00551755    mov         ecx,dword ptr [ebp-18]
 00551758    mov         edx,dword ptr [ebp-14]
 0055175B    mov         edi,dword ptr [eax]
 0055175D    call        dword ptr [edi+38]
 00551760    test        al,al
>00551762    je          0055176A
 00551764    inc         dword ptr [ebp-1C]
 00551767    mov         dword ptr [ebp-8],ebx
 0055176A    inc         ebx
 0055176B    dec         esi
>0055176C    jne         00551721
 0055176E    cmp         dword ptr [ebp-1C],0
>00551772    jne         005517A5
 00551774    cmp         dword ptr [ebp-14],0
>00551778    je          0055190A
 0055177E    mov         eax,dword ptr [ebp-14]
 00551781    mov         dword ptr [ebp-30],eax
 00551784    mov         byte ptr [ebp-2C],0
 00551788    lea         eax,[ebp-30]
 0055178B    push        eax
 0055178C    push        0
 0055178E    mov         ecx,dword ptr ds:[7C4BDC];^SResString166:TResStringRec
 00551794    mov         dl,1
 00551796    mov         eax,[0054EF9C];EHelpSystemException
 0055179B    call        Exception.CreateResFmt
 005517A0    call        @RaiseExcept
 005517A5    cmp         dword ptr [ebp-1C],1
>005517A9    jne         005517BD
 005517AB    push        ebp
 005517AC    mov         edx,dword ptr [ebp-18]
 005517AF    mov         eax,dword ptr [ebp-14]
 005517B2    call        00551600
 005517B7    pop         ecx
>005517B8    jmp         0055190A
 005517BD    mov         eax,dword ptr [ebp-4]
 005517C0    cmp         dword ptr [eax+0C],0
>005517C4    je          005518FD
 005517CA    lea         eax,[ebp-10]
 005517CD    mov         edx,dword ptr [ebp-4]
 005517D0    mov         edx,dword ptr [edx+0C]
 005517D3    mov         ecx,551968
 005517D8    call        @IntfCast
 005517DD    cmp         dword ptr [ebp-10],0
>005517E1    je          005518EE
 005517E7    mov         dl,1
 005517E9    mov         eax,[0046F9A0];TStringList
 005517EE    call        TStringList.Create
 005517F3    mov         dword ptr [ebp-20],eax
 005517F6    xor         edx,edx
 005517F8    push        ebp
 005517F9    push        5518E7
 005517FE    push        dword ptr fs:[edx]
 00551801    mov         dword ptr fs:[edx],esp
 00551804    mov         eax,dword ptr [ebp-4]
 00551807    mov         eax,dword ptr [eax+14]
 0055180A    mov         esi,dword ptr [eax+8]
 0055180D    dec         esi
 0055180E    test        esi,esi
>00551810    jl          0055187E
 00551812    inc         esi
 00551813    xor         ebx,ebx
 00551815    mov         eax,dword ptr [ebp-4]
 00551818    mov         edi,dword ptr [eax+14]
 0055181B    lea         eax,[edi+8]
 0055181E    mov         edx,ebx
 00551820    call        00434534
 00551825    mov         eax,dword ptr [edi+20]
 00551828    mov         eax,dword ptr [eax+ebx*4]
 0055182B    mov         dword ptr [ebp-24],eax
 0055182E    lea         eax,[ebp-0C]
 00551831    mov         edx,dword ptr [ebp-24]
 00551834    mov         edx,dword ptr [edx+4]
 00551837    call        @IntfCopy
 0055183C    lea         eax,[ebp-34]
 0055183F    mov         edx,dword ptr [ebp-0C]
 00551842    mov         ecx,551958
 00551847    call        @IntfCast
 0055184C    mov         eax,dword ptr [ebp-34]
 0055184F    mov         ecx,dword ptr [ebp-18]
 00551852    mov         edx,dword ptr [ebp-14]
 00551855    mov         edi,dword ptr [eax]
 00551857    call        dword ptr [edi+38]
 0055185A    test        al,al
>0055185C    je          0055187A
 0055185E    lea         edx,[ebp-38]
 00551861    mov         eax,dword ptr [ebp-24]
 00551864    mov         eax,dword ptr [eax+4]
 00551867    mov         ecx,dword ptr [eax]
 00551869    call        dword ptr [ecx+0C]
 0055186C    mov         edx,dword ptr [ebp-38]
 0055186F    mov         ecx,dword ptr [ebp-24]
 00551872    mov         eax,dword ptr [ebp-20]
 00551875    mov         edi,dword ptr [eax]
 00551877    call        dword ptr [edi+40]
 0055187A    inc         ebx
 0055187B    dec         esi
>0055187C    jne         00551815
 0055187E    mov         edx,dword ptr [ebp-20]
 00551881    mov         eax,dword ptr [ebp-10]
 00551884    mov         ecx,dword ptr [eax]
 00551886    call        dword ptr [ecx+14]
 00551889    test        eax,eax
>0055188B    jl          005518C4
 0055188D    mov         edx,eax
 0055188F    mov         eax,dword ptr [ebp-20]
 00551892    mov         ecx,dword ptr [eax]
 00551894    call        dword ptr [ecx+18]
 00551897    mov         ebx,eax
 00551899    lea         eax,[ebp-0C]
 0055189C    mov         edx,dword ptr [ebx+4]
 0055189F    call        @IntfCopy
 005518A4    lea         eax,[ebp-3C]
 005518A7    mov         edx,dword ptr [ebp-0C]
 005518AA    mov         ecx,551958
 005518AF    call        @IntfCast
 005518B4    mov         eax,dword ptr [ebp-3C]
 005518B7    mov         ecx,dword ptr [ebp-18]
 005518BA    mov         edx,dword ptr [ebp-14]
 005518BD    mov         ebx,dword ptr [eax]
 005518BF    call        dword ptr [ebx+3C]
>005518C2    jmp         005518D1
 005518C4    push        ebp
 005518C5    mov         edx,dword ptr [ebp-18]
 005518C8    mov         eax,dword ptr [ebp-14]
 005518CB    call        00551600
 005518D0    pop         ecx
 005518D1    xor         eax,eax
 005518D3    pop         edx
 005518D4    pop         ecx
 005518D5    pop         ecx
 005518D6    mov         dword ptr fs:[eax],edx
 005518D9    push        55190A
 005518DE    mov         eax,dword ptr [ebp-20]
 005518E1    call        TObject.Free
 005518E6    ret
>005518E7    jmp         @HandleFinally
>005518EC    jmp         005518DE
 005518EE    push        ebp
 005518EF    mov         edx,dword ptr [ebp-18]
 005518F2    mov         eax,dword ptr [ebp-14]
 005518F5    call        00551600
 005518FA    pop         ecx
>005518FB    jmp         0055190A
 005518FD    push        ebp
 005518FE    mov         edx,dword ptr [ebp-18]
 00551901    mov         eax,dword ptr [ebp-14]
 00551904    call        00551600
 00551909    pop         ecx
 0055190A    xor         eax,eax
 0055190C    pop         edx
 0055190D    pop         ecx
 0055190E    pop         ecx
 0055190F    mov         dword ptr fs:[eax],edx
 00551912    push        55194F
 00551917    lea         eax,[ebp-3C]
 0055191A    call        @IntfClear
 0055191F    lea         eax,[ebp-38]
 00551922    call        @UStrClr
 00551927    lea         eax,[ebp-34]
 0055192A    call        @IntfClear
 0055192F    lea         eax,[ebp-28]
 00551932    call        @IntfClear
 00551937    lea         eax,[ebp-10]
 0055193A    call        @IntfClear
 0055193F    lea         eax,[ebp-0C]
 00551942    call        @IntfClear
 00551947    ret
>00551948    jmp         @HandleFinally
>0055194D    jmp         00551917
 0055194F    pop         edi
 00551950    pop         esi
 00551951    pop         ebx
 00551952    mov         esp,ebp
 00551954    pop         ebp
 00551955    ret
*}
end;

//00551978
procedure THelpManager.ShowTableOfContents;
begin
{*
 00551978    push        ebp
 00551979    mov         ebp,esp
 0055197B    add         esp,0FFFFFFEC
 0055197E    push        ebx
 0055197F    push        esi
 00551980    xor         edx,edx
 00551982    mov         dword ptr [ebp-14],edx
 00551985    mov         dword ptr [ebp-4],edx
 00551988    mov         dword ptr [ebp-8],eax
 0055198B    xor         eax,eax
 0055198D    push        ebp
 0055198E    push        551A7A
 00551993    push        dword ptr fs:[eax]
 00551996    mov         dword ptr fs:[eax],esp
 00551999    mov         dl,1
 0055199B    mov         eax,[0046F9A0];TStringList
 005519A0    call        TStringList.Create
 005519A5    mov         dword ptr [ebp-0C],eax
 005519A8    xor         eax,eax
 005519AA    push        ebp
 005519AB    push        551A2E
 005519B0    push        dword ptr fs:[eax]
 005519B3    mov         dword ptr fs:[eax],esp
 005519B6    mov         eax,dword ptr [ebp-8]
 005519B9    mov         eax,dword ptr [eax+10]
 005519BC    mov         eax,dword ptr [eax+8]
 005519BF    dec         eax
 005519C0    test        eax,eax
>005519C2    jl          00551A0A
 005519C4    inc         eax
 005519C5    mov         dword ptr [ebp-10],eax
 005519C8    xor         esi,esi
 005519CA    mov         eax,dword ptr [ebp-8]
 005519CD    mov         ebx,dword ptr [eax+10]
 005519D0    lea         eax,[ebx+8]
 005519D3    mov         edx,esi
 005519D5    call        00434534
 005519DA    mov         eax,dword ptr [ebx+20]
 005519DD    mov         ebx,dword ptr [eax+esi*4]
 005519E0    mov         eax,dword ptr [ebx+4]
 005519E3    mov         edx,dword ptr [eax]
 005519E5    call        dword ptr [edx+18]
 005519E8    test        al,al
>005519EA    je          00551A04
 005519EC    lea         edx,[ebp-14]
 005519EF    mov         eax,dword ptr [ebx+4]
 005519F2    mov         ecx,dword ptr [eax]
 005519F4    call        dword ptr [ecx+0C]
 005519F7    mov         edx,dword ptr [ebp-14]
 005519FA    mov         ecx,ebx
 005519FC    mov         eax,dword ptr [ebp-0C]
 005519FF    mov         ebx,dword ptr [eax]
 00551A01    call        dword ptr [ebx+40]
 00551A04    inc         esi
 00551A05    dec         dword ptr [ebp-10]
>00551A08    jne         005519CA
 00551A0A    lea         ecx,[ebp-4]
 00551A0D    mov         edx,dword ptr [ebp-0C]
 00551A10    mov         eax,dword ptr [ebp-8]
 00551A13    call        THelpManager.SelectViewer
 00551A18    xor         eax,eax
 00551A1A    pop         edx
 00551A1B    pop         ecx
 00551A1C    pop         ecx
 00551A1D    mov         dword ptr fs:[eax],edx
 00551A20    push        551A35
 00551A25    mov         eax,dword ptr [ebp-0C]
 00551A28    call        TObject.Free
 00551A2D    ret
>00551A2E    jmp         @HandleFinally
>00551A33    jmp         00551A25
 00551A35    cmp         dword ptr [ebp-4],0
>00551A39    je          00551A45
 00551A3B    mov         eax,dword ptr [ebp-4]
 00551A3E    mov         edx,dword ptr [eax]
 00551A40    call        dword ptr [edx+1C]
>00551A43    jmp         00551A5C
 00551A45    mov         ecx,dword ptr ds:[7C4270];^SResString169:TResStringRec
 00551A4B    mov         dl,1
 00551A4D    mov         eax,[0054EF9C];EHelpSystemException
 00551A52    call        Exception.CreateRes
 00551A57    call        @RaiseExcept
 00551A5C    xor         eax,eax
 00551A5E    pop         edx
 00551A5F    pop         ecx
 00551A60    pop         ecx
 00551A61    mov         dword ptr fs:[eax],edx
 00551A64    push        551A81
 00551A69    lea         eax,[ebp-14]
 00551A6C    call        @UStrClr
 00551A71    lea         eax,[ebp-4]
 00551A74    call        @IntfClear
 00551A79    ret
>00551A7A    jmp         @HandleFinally
>00551A7F    jmp         00551A69
 00551A81    pop         esi
 00551A82    pop         ebx
 00551A83    mov         esp,ebp
 00551A85    pop         ebp
 00551A86    ret
*}
end;

//00551A88
procedure THelpManager.ShowTopicHelp(Topic:string; HelpFileName:string);
begin
{*
 00551A88    push        ebp
 00551A89    mov         ebp,esp
 00551A8B    add         esp,0FFFFFFF0
 00551A8E    push        ebx
 00551A8F    push        esi
 00551A90    push        edi
 00551A91    xor         ebx,ebx
 00551A93    mov         dword ptr [ebp-4],ebx
 00551A96    mov         dword ptr [ebp-8],ebx
 00551A99    mov         ebx,ecx
 00551A9B    mov         dword ptr [ebp-10],edx
 00551A9E    mov         dword ptr [ebp-0C],eax
 00551AA1    xor         eax,eax
 00551AA3    push        ebp
 00551AA4    push        551B63
 00551AA9    push        dword ptr fs:[eax]
 00551AAC    mov         dword ptr fs:[eax],esp
 00551AAF    test        ebx,ebx
>00551AB1    je          00551AC0
 00551AB3    mov         eax,dword ptr [ebp-0C]
 00551AB6    add         eax,20;THelpManager.FHelpFile:string
 00551AB9    mov         edx,ebx
 00551ABB    call        @UStrAsg
 00551AC0    mov         eax,dword ptr [ebp-0C]
 00551AC3    mov         eax,dword ptr [eax+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00551AC6    cmp         dword ptr [eax+8],0;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
>00551ACA    jne         00551AE3
 00551ACC    mov         ecx,dword ptr ds:[7C44A4];^SResString170:TResStringRec
 00551AD2    mov         dl,1
 00551AD4    mov         eax,[0054EF9C];EHelpSystemException
 00551AD9    call        Exception.CreateRes;EHelpSystemException.Create
 00551ADE    call        @RaiseExcept
 00551AE3    mov         eax,dword ptr [ebp-0C]
 00551AE6    mov         eax,dword ptr [eax+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00551AE9    mov         edi,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551AEC    dec         edi
 00551AED    test        edi,edi
>00551AEF    jl          00551B45
 00551AF1    inc         edi
 00551AF2    xor         ebx,ebx
 00551AF4    mov         eax,dword ptr [ebp-0C]
 00551AF7    mov         esi,dword ptr [eax+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00551AFA    lea         eax,[esi+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551AFD    mov         edx,ebx
 00551AFF    call        00434534
 00551B04    lea         eax,[ebp-4]
 00551B07    mov         edx,dword ptr [esi+20]
 00551B0A    mov         edx,dword ptr [edx+ebx*4]
 00551B0D    mov         edx,dword ptr [edx+4]
 00551B10    call        @IntfCopy
 00551B15    lea         eax,[ebp-8]
 00551B18    mov         edx,dword ptr [ebp-4]
 00551B1B    mov         ecx,551B74;['{B0FC9366-5F0E-11D3-A3B9-00C04F79AD3A}']
 00551B20    call        @IntfCast
 00551B25    mov         edx,dword ptr [ebp-10]
 00551B28    mov         eax,dword ptr [ebp-8]
 00551B2B    mov         ecx,dword ptr [eax]
 00551B2D    call        dword ptr [ecx+30]
 00551B30    test        al,al
>00551B32    je          00551B41
 00551B34    mov         edx,dword ptr [ebp-10]
 00551B37    mov         eax,dword ptr [ebp-8]
 00551B3A    mov         ecx,dword ptr [eax]
 00551B3C    call        dword ptr [ecx+34]
>00551B3F    jmp         00551B45
 00551B41    inc         ebx
 00551B42    dec         edi
>00551B43    jne         00551AF4
 00551B45    xor         eax,eax
 00551B47    pop         edx
 00551B48    pop         ecx
 00551B49    pop         ecx
 00551B4A    mov         dword ptr fs:[eax],edx
 00551B4D    push        551B6A
 00551B52    lea         eax,[ebp-8]
 00551B55    call        @IntfClear
 00551B5A    lea         eax,[ebp-4]
 00551B5D    call        @IntfClear
 00551B62    ret
>00551B63    jmp         @HandleFinally
>00551B68    jmp         00551B52
 00551B6A    pop         edi
 00551B6B    pop         esi
 00551B6C    pop         ebx
 00551B6D    mov         esp,ebp
 00551B6F    pop         ebp
 00551B70    ret
*}
end;

//00551B84
procedure THelpManager.AssignHelpSelector(Selector:IHelpSelector);
begin
{*
 00551B84    push        ebx
 00551B85    push        esi
 00551B86    mov         esi,edx
 00551B88    mov         ebx,eax
 00551B8A    lea         eax,[ebx+0C]
 00551B8D    mov         edx,esi
 00551B8F    call        @IntfCopy
 00551B94    pop         esi
 00551B95    pop         ebx
 00551B96    ret
*}
end;

//00551B98
function THelpManager.Hook(Handle:NativeUInt; HelpFile:string; Data:NativeInt; Command:Word):Boolean;
begin
{*
 00551B98    push        ebp
 00551B99    mov         ebp,esp
 00551B9B    push        ecx
 00551B9C    push        ebx
 00551B9D    push        esi
 00551B9E    push        edi
 00551B9F    mov         esi,ecx
 00551BA1    mov         dword ptr [ebp-4],edx
 00551BA4    mov         ebx,eax
 00551BA6    mov         edi,dword ptr [ebp+0C]
 00551BA9    test        esi,esi
>00551BAB    je          00551BB7
 00551BAD    lea         eax,[ebx+20]
 00551BB0    mov         edx,esi
 00551BB2    call        @UStrAsg
 00551BB7    mov         eax,edi
 00551BB9    dec         ax
>00551BBC    je          00551BD0
 00551BBE    dec         ax
>00551BC1    je          00551BEC
 00551BC3    dec         ax
>00551BC6    je          00551BF5
 00551BC8    sub         ax,5
>00551BCC    je          00551BDE
>00551BCE    jmp         00551BFE
 00551BD0    mov         ecx,esi
 00551BD2    mov         edx,dword ptr [ebp+8]
 00551BD5    mov         eax,ebx
 00551BD7    call        THelpManager.ShowContextHelp
>00551BDC    jmp         00551C0F
 00551BDE    mov         ecx,esi
 00551BE0    mov         edx,dword ptr [ebp+8]
 00551BE3    mov         eax,ebx
 00551BE5    call        THelpManager.ShowContextHelp
>00551BEA    jmp         00551C0F
 00551BEC    mov         eax,ebx
 00551BEE    call        THelpManager.DoSoftShutDown
>00551BF3    jmp         00551C0F
 00551BF5    mov         eax,ebx
 00551BF7    call        THelpManager.ShowTableOfContents
>00551BFC    jmp         00551C0F
 00551BFE    push        edi
 00551BFF    mov         eax,dword ptr [ebp+8]
 00551C02    push        eax
 00551C03    mov         ecx,esi
 00551C05    mov         edx,dword ptr [ebp-4]
 00551C08    mov         eax,ebx
 00551C0A    call        THelpManager.CallSpecialWinHelp
 00551C0F    mov         al,1
 00551C11    pop         edi
 00551C12    pop         esi
 00551C13    pop         ebx
 00551C14    pop         ecx
 00551C15    pop         ebp
 00551C16    ret         8
*}
end;

//00551C1C
function THelpManager.UnderstandsKeyword(HelpKeyword:string; HelpFileName:string):Boolean;
begin
{*
 00551C1C    push        ebp
 00551C1D    mov         ebp,esp
 00551C1F    add         esp,0FFFFFFE0
 00551C22    push        ebx
 00551C23    xor         ebx,ebx
 00551C25    mov         dword ptr [ebp-4],ebx
 00551C28    mov         dword ptr [ebp-8],ebx
 00551C2B    mov         ebx,ecx
 00551C2D    mov         dword ptr [ebp-10],edx
 00551C30    mov         dword ptr [ebp-0C],eax
 00551C33    xor         eax,eax
 00551C35    push        ebp
 00551C36    push        551D45
 00551C3B    push        dword ptr fs:[eax]
 00551C3E    mov         dword ptr fs:[eax],esp
 00551C41    mov         byte ptr [ebp-11],0
 00551C45    mov         byte ptr [ebp-19],0
 00551C49    test        ebx,ebx
>00551C4B    je          00551C5A
 00551C4D    mov         eax,dword ptr [ebp-0C]
 00551C50    add         eax,20;THelpManager.FHelpFile:string
 00551C53    mov         edx,ebx
 00551C55    call        @UStrAsg
 00551C5A    mov         eax,dword ptr [ebp-0C]
 00551C5D    mov         eax,dword ptr [eax+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 00551C60    mov         eax,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551C63    dec         eax
 00551C64    test        eax,eax
>00551C66    jl          00551D27
 00551C6C    inc         eax
 00551C6D    mov         dword ptr [ebp-20],eax
 00551C70    mov         dword ptr [ebp-18],0
 00551C77    mov         eax,dword ptr [ebp-0C]
 00551C7A    mov         ebx,dword ptr [eax+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 00551C7D    lea         eax,[ebx+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551C80    mov         edx,dword ptr [ebp-18]
 00551C83    call        00434534
 00551C88    lea         eax,[ebp-4]
 00551C8B    mov         edx,dword ptr [ebx+20]
 00551C8E    mov         ecx,dword ptr [ebp-18]
 00551C91    mov         edx,dword ptr [edx+ecx*4]
 00551C94    mov         edx,dword ptr [edx+4]
 00551C97    call        @IntfCopy
 00551C9C    xor         eax,eax
 00551C9E    push        ebp
 00551C9F    push        551D14
 00551CA4    push        dword ptr fs:[eax]
 00551CA7    mov         dword ptr fs:[eax],esp
 00551CAA    lea         eax,[ebp-8]
 00551CAD    call        @IntfClear
 00551CB2    mov         ecx,eax
 00551CB4    mov         edx,551D58;['{69418F09-5E49-4899-9E13-9FE3C1497566}']
 00551CB9    mov         eax,dword ptr [ebp-4]
 00551CBC    call        Supports
 00551CC1    test        al,al
>00551CC3    je          00551CDA
 00551CC5    mov         eax,dword ptr [ebp-8]
 00551CC8    mov         edx,dword ptr [eax]
 00551CCA    call        dword ptr [edx+40]
 00551CCD    mov         byte ptr [ebp-19],al
 00551CD0    xor         edx,edx
 00551CD2    mov         eax,dword ptr [ebp-8]
 00551CD5    mov         ecx,dword ptr [eax]
 00551CD7    call        dword ptr [ecx+44]
 00551CDA    mov         edx,dword ptr [ebp-10]
 00551CDD    mov         eax,dword ptr [ebp-4]
 00551CE0    mov         ecx,dword ptr [eax]
 00551CE2    call        dword ptr [ecx+10]
 00551CE5    test        eax,eax
>00551CE7    jle         00551CF4
 00551CE9    mov         byte ptr [ebp-11],1
 00551CED    call        @TryFinallyExit
>00551CF2    jmp         00551D27
 00551CF4    xor         eax,eax
 00551CF6    pop         edx
 00551CF7    pop         ecx
 00551CF8    pop         ecx
 00551CF9    mov         dword ptr fs:[eax],edx
 00551CFC    push        551D1B
 00551D01    cmp         dword ptr [ebp-8],0
>00551D05    je          00551D13
 00551D07    movzx       edx,byte ptr [ebp-19]
 00551D0B    mov         eax,dword ptr [ebp-8]
 00551D0E    mov         ecx,dword ptr [eax]
 00551D10    call        dword ptr [ecx+44]
 00551D13    ret
>00551D14    jmp         @HandleFinally
>00551D19    jmp         00551D01
 00551D1B    inc         dword ptr [ebp-18]
 00551D1E    dec         dword ptr [ebp-20]
>00551D21    jne         00551C77
 00551D27    xor         eax,eax
 00551D29    pop         edx
 00551D2A    pop         ecx
 00551D2B    pop         ecx
 00551D2C    mov         dword ptr fs:[eax],edx
 00551D2F    push        551D4C
 00551D34    lea         eax,[ebp-8]
 00551D37    call        @IntfClear
 00551D3C    lea         eax,[ebp-4]
 00551D3F    call        @IntfClear
 00551D44    ret
>00551D45    jmp         @HandleFinally
>00551D4A    jmp         00551D34
 00551D4C    movzx       eax,byte ptr [ebp-11]
 00551D50    pop         ebx
 00551D51    mov         esp,ebp
 00551D53    pop         ebp
 00551D54    ret
*}
end;

//00551D68
procedure THelpManager.ShowIndex(Topic:string; HelpFileName:string);
begin
{*
 00551D68    push        ebp
 00551D69    mov         ebp,esp
 00551D6B    add         esp,0FFFFFFE4
 00551D6E    push        ebx
 00551D6F    push        esi
 00551D70    xor         ebx,ebx
 00551D72    mov         dword ptr [ebp-1C],ebx
 00551D75    mov         dword ptr [ebp-18],ebx
 00551D78    mov         dword ptr [ebp-4],ebx
 00551D7B    mov         ebx,ecx
 00551D7D    mov         dword ptr [ebp-0C],edx
 00551D80    mov         dword ptr [ebp-8],eax
 00551D83    xor         eax,eax
 00551D85    push        ebp
 00551D86    push        551EAD
 00551D8B    push        dword ptr fs:[eax]
 00551D8E    mov         dword ptr fs:[eax],esp
 00551D91    test        ebx,ebx
>00551D93    je          00551DA2
 00551D95    mov         eax,dword ptr [ebp-8]
 00551D98    add         eax,20;THelpManager.FHelpFile:string
 00551D9B    mov         edx,ebx
 00551D9D    call        @UStrAsg
 00551DA2    mov         dl,1
 00551DA4    mov         eax,[0046F9A0];TStringList
 00551DA9    call        TStringList.Create;TStringList.Create
 00551DAE    mov         dword ptr [ebp-10],eax
 00551DB1    xor         eax,eax
 00551DB3    push        ebp
 00551DB4    push        551E46
 00551DB9    push        dword ptr fs:[eax]
 00551DBC    mov         dword ptr fs:[eax],esp
 00551DBF    mov         eax,dword ptr [ebp-8]
 00551DC2    mov         eax,dword ptr [eax+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 00551DC5    mov         eax,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551DC8    dec         eax
 00551DC9    test        eax,eax
>00551DCB    jl          00551E22
 00551DCD    inc         eax
 00551DCE    mov         dword ptr [ebp-14],eax
 00551DD1    xor         esi,esi
 00551DD3    mov         eax,dword ptr [ebp-8]
 00551DD6    mov         ebx,dword ptr [eax+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 00551DD9    lea         eax,[ebx+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551DDC    mov         edx,esi
 00551DDE    call        00434534
 00551DE3    mov         eax,dword ptr [ebx+20]
 00551DE6    mov         ebx,dword ptr [eax+esi*4]
 00551DE9    lea         eax,[ebp-4]
 00551DEC    call        @IntfClear
 00551DF1    mov         ecx,eax
 00551DF3    mov         edx,551EBC;['{DD46A379-569A-46AA-89E5-8AACA764304B}']
 00551DF8    mov         eax,dword ptr [ebx+4]
 00551DFB    call        Supports
 00551E00    test        al,al
>00551E02    je          00551E1C
 00551E04    lea         edx,[ebp-18]
 00551E07    mov         eax,dword ptr [ebx+4]
 00551E0A    mov         ecx,dword ptr [eax]
 00551E0C    call        dword ptr [ecx+0C]
 00551E0F    mov         edx,dword ptr [ebp-18]
 00551E12    mov         ecx,ebx
 00551E14    mov         eax,dword ptr [ebp-10]
 00551E17    mov         ebx,dword ptr [eax]
 00551E19    call        dword ptr [ebx+40];TStringList.AddObject
 00551E1C    inc         esi
 00551E1D    dec         dword ptr [ebp-14]
>00551E20    jne         00551DD3
 00551E22    lea         ecx,[ebp-4]
 00551E25    mov         edx,dword ptr [ebp-10]
 00551E28    mov         eax,dword ptr [ebp-8]
 00551E2B    call        THelpManager.SelectViewer
 00551E30    xor         eax,eax
 00551E32    pop         edx
 00551E33    pop         ecx
 00551E34    pop         ecx
 00551E35    mov         dword ptr fs:[eax],edx
 00551E38    push        551E4D
 00551E3D    mov         eax,dword ptr [ebp-10]
 00551E40    call        TObject.Free
 00551E45    ret
>00551E46    jmp         @HandleFinally
>00551E4B    jmp         00551E3D
 00551E4D    cmp         dword ptr [ebp-4],0
>00551E51    je          00551E70
 00551E53    lea         eax,[ebp-1C]
 00551E56    mov         edx,dword ptr [ebp-4]
 00551E59    mov         ecx,551EBC;['{DD46A379-569A-46AA-89E5-8AACA764304B}']
 00551E5E    call        @IntfCast
 00551E63    mov         eax,dword ptr [ebp-1C]
 00551E66    mov         edx,dword ptr [ebp-0C]
 00551E69    mov         ecx,dword ptr [eax]
 00551E6B    call        dword ptr [ecx+40]
>00551E6E    jmp         00551E87
 00551E70    mov         ecx,dword ptr ds:[7C41E4];^SResString167:TResStringRec
 00551E76    mov         dl,1
 00551E78    mov         eax,[0054EF9C];EHelpSystemException
 00551E7D    call        Exception.CreateRes;EHelpSystemException.Create
 00551E82    call        @RaiseExcept
 00551E87    xor         eax,eax
 00551E89    pop         edx
 00551E8A    pop         ecx
 00551E8B    pop         ecx
 00551E8C    mov         dword ptr fs:[eax],edx
 00551E8F    push        551EB4
 00551E94    lea         eax,[ebp-1C]
 00551E97    call        @IntfClear
 00551E9C    lea         eax,[ebp-18]
 00551E9F    call        @UStrClr
 00551EA4    lea         eax,[ebp-4]
 00551EA7    call        @IntfClear
 00551EAC    ret
>00551EAD    jmp         @HandleFinally
>00551EB2    jmp         00551E94
 00551EB4    pop         esi
 00551EB5    pop         ebx
 00551EB6    mov         esp,ebp
 00551EB8    pop         ebp
 00551EB9    ret
*}
end;

//00551ECC
procedure THelpManager.ShowSearch(Topic:string; HelpFileName:string);
begin
{*
 00551ECC    push        ebp
 00551ECD    mov         ebp,esp
 00551ECF    add         esp,0FFFFFFE4
 00551ED2    push        ebx
 00551ED3    push        esi
 00551ED4    xor         ebx,ebx
 00551ED6    mov         dword ptr [ebp-1C],ebx
 00551ED9    mov         dword ptr [ebp-18],ebx
 00551EDC    mov         dword ptr [ebp-4],ebx
 00551EDF    mov         ebx,ecx
 00551EE1    mov         dword ptr [ebp-0C],edx
 00551EE4    mov         dword ptr [ebp-8],eax
 00551EE7    xor         eax,eax
 00551EE9    push        ebp
 00551EEA    push        552011
 00551EEF    push        dword ptr fs:[eax]
 00551EF2    mov         dword ptr fs:[eax],esp
 00551EF5    test        ebx,ebx
>00551EF7    je          00551F06
 00551EF9    mov         eax,dword ptr [ebp-8]
 00551EFC    add         eax,20;THelpManager.FHelpFile:string
 00551EFF    mov         edx,ebx
 00551F01    call        @UStrAsg
 00551F06    mov         dl,1
 00551F08    mov         eax,[0046F9A0];TStringList
 00551F0D    call        TStringList.Create;TStringList.Create
 00551F12    mov         dword ptr [ebp-10],eax
 00551F15    xor         eax,eax
 00551F17    push        ebp
 00551F18    push        551FAA
 00551F1D    push        dword ptr fs:[eax]
 00551F20    mov         dword ptr fs:[eax],esp
 00551F23    mov         eax,dword ptr [ebp-8]
 00551F26    mov         eax,dword ptr [eax+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 00551F29    mov         eax,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551F2C    dec         eax
 00551F2D    test        eax,eax
>00551F2F    jl          00551F86
 00551F31    inc         eax
 00551F32    mov         dword ptr [ebp-14],eax
 00551F35    xor         esi,esi
 00551F37    mov         eax,dword ptr [ebp-8]
 00551F3A    mov         ebx,dword ptr [eax+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 00551F3D    lea         eax,[ebx+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00551F40    mov         edx,esi
 00551F42    call        00434534
 00551F47    mov         eax,dword ptr [ebx+20]
 00551F4A    mov         ebx,dword ptr [eax+esi*4]
 00551F4D    lea         eax,[ebp-4]
 00551F50    call        @IntfClear
 00551F55    mov         ecx,eax
 00551F57    mov         edx,552020;['{DD46A379-569A-46AA-89E5-8AACA764304B}']
 00551F5C    mov         eax,dword ptr [ebx+4]
 00551F5F    call        Supports
 00551F64    test        al,al
>00551F66    je          00551F80
 00551F68    lea         edx,[ebp-18]
 00551F6B    mov         eax,dword ptr [ebx+4]
 00551F6E    mov         ecx,dword ptr [eax]
 00551F70    call        dword ptr [ecx+0C]
 00551F73    mov         edx,dword ptr [ebp-18]
 00551F76    mov         ecx,ebx
 00551F78    mov         eax,dword ptr [ebp-10]
 00551F7B    mov         ebx,dword ptr [eax]
 00551F7D    call        dword ptr [ebx+40];TStringList.AddObject
 00551F80    inc         esi
 00551F81    dec         dword ptr [ebp-14]
>00551F84    jne         00551F37
 00551F86    lea         ecx,[ebp-4]
 00551F89    mov         edx,dword ptr [ebp-10]
 00551F8C    mov         eax,dword ptr [ebp-8]
 00551F8F    call        THelpManager.SelectViewer
 00551F94    xor         eax,eax
 00551F96    pop         edx
 00551F97    pop         ecx
 00551F98    pop         ecx
 00551F99    mov         dword ptr fs:[eax],edx
 00551F9C    push        551FB1
 00551FA1    mov         eax,dword ptr [ebp-10]
 00551FA4    call        TObject.Free
 00551FA9    ret
>00551FAA    jmp         @HandleFinally
>00551FAF    jmp         00551FA1
 00551FB1    cmp         dword ptr [ebp-4],0
>00551FB5    je          00551FD4
 00551FB7    lea         eax,[ebp-1C]
 00551FBA    mov         edx,dword ptr [ebp-4]
 00551FBD    mov         ecx,552020;['{DD46A379-569A-46AA-89E5-8AACA764304B}']
 00551FC2    call        @IntfCast
 00551FC7    mov         eax,dword ptr [ebp-1C]
 00551FCA    mov         edx,dword ptr [ebp-0C]
 00551FCD    mov         ecx,dword ptr [eax]
 00551FCF    call        dword ptr [ecx+44]
>00551FD2    jmp         00551FEB
 00551FD4    mov         ecx,dword ptr ds:[7C4300];^SResString168:TResStringRec
 00551FDA    mov         dl,1
 00551FDC    mov         eax,[0054EF9C];EHelpSystemException
 00551FE1    call        Exception.CreateRes;EHelpSystemException.Create
 00551FE6    call        @RaiseExcept
 00551FEB    xor         eax,eax
 00551FED    pop         edx
 00551FEE    pop         ecx
 00551FEF    pop         ecx
 00551FF0    mov         dword ptr fs:[eax],edx
 00551FF3    push        552018
 00551FF8    lea         eax,[ebp-1C]
 00551FFB    call        @IntfClear
 00552000    lea         eax,[ebp-18]
 00552003    call        @UStrClr
 00552008    lea         eax,[ebp-4]
 0055200B    call        @IntfClear
 00552010    ret
>00552011    jmp         @HandleFinally
>00552016    jmp         00551FF8
 00552018    pop         esi
 00552019    pop         ebx
 0055201A    mov         esp,ebp
 0055201C    pop         ebp
 0055201D    ret
*}
end;

//00552030
procedure THelpManager.ShowTopicHelp(Topic:string; Anchor:string; HelpFileName:string);
begin
{*
 00552030    push        ebp
 00552031    mov         ebp,esp
 00552033    add         esp,0FFFFFFF0
 00552036    push        ebx
 00552037    push        esi
 00552038    xor         ebx,ebx
 0055203A    mov         dword ptr [ebp-4],ebx
 0055203D    mov         dword ptr [ebp-8],ebx
 00552040    mov         dword ptr [ebp-10],ecx
 00552043    mov         dword ptr [ebp-0C],edx
 00552046    mov         esi,eax
 00552048    mov         ebx,dword ptr [ebp+8]
 0055204B    xor         eax,eax
 0055204D    push        ebp
 0055204E    push        552126
 00552053    push        dword ptr fs:[eax]
 00552056    mov         dword ptr fs:[eax],esp
 00552059    test        ebx,ebx
>0055205B    je          00552067
 0055205D    lea         eax,[esi+20];THelpManager.FHelpFile:string
 00552060    mov         edx,ebx
 00552062    call        @UStrAsg
 00552067    mov         eax,dword ptr [esi+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 0055206A    cmp         dword ptr [eax+8],0;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
>0055206E    jne         00552087
 00552070    mov         ecx,dword ptr ds:[7C44A4];^SResString170:TResStringRec
 00552076    mov         dl,1
 00552078    mov         eax,[0054EF9C];EHelpSystemException
 0055207D    call        Exception.CreateRes;EHelpSystemException.Create
 00552082    call        @RaiseExcept
 00552087    mov         eax,dword ptr [esi+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 0055208A    mov         eax,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 0055208D    dec         eax
 0055208E    test        eax,eax
>00552090    jl          00552108
 00552092    inc         eax
 00552093    xor         ebx,ebx
 00552095    mov         esi,dword ptr [esi+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00552098    lea         eax,[esi+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 0055209B    mov         edx,ebx
 0055209D    call        00434534
 005520A2    lea         eax,[ebp-4]
 005520A5    mov         edx,dword ptr [esi+20]
 005520A8    mov         edx,dword ptr [edx+ebx*4]
 005520AB    mov         edx,dword ptr [edx+4]
 005520AE    call        @IntfCopy
 005520B3    lea         eax,[ebp-8]
 005520B6    call        @IntfClear
 005520BB    mov         ecx,eax
 005520BD    mov         edx,552138;['{DD46A379-569A-46AA-89E5-8AACA764304B}']
 005520C2    mov         eax,dword ptr [ebp-4]
 005520C5    call        Supports
 005520CA    test        al,al
>005520CC    je          005520ED
 005520CE    mov         edx,dword ptr [ebp-0C]
 005520D1    mov         eax,dword ptr [ebp-8]
 005520D4    mov         ecx,dword ptr [eax]
 005520D6    call        dword ptr [ecx+30]
 005520D9    test        al,al
>005520DB    je          005520ED
 005520DD    mov         ecx,dword ptr [ebp-10]
 005520E0    mov         edx,dword ptr [ebp-0C]
 005520E3    mov         eax,dword ptr [ebp-8]
 005520E6    mov         esi,dword ptr [eax]
 005520E8    call        dword ptr [esi+48]
>005520EB    jmp         00552108
 005520ED    mov         ecx,dword ptr ds:[7C44A4];^SResString170:TResStringRec
 005520F3    mov         dl,1
 005520F5    mov         eax,[0054EF9C];EHelpSystemException
 005520FA    call        Exception.CreateRes;EHelpSystemException.Create
 005520FF    call        @RaiseExcept
 00552104    inc         ebx
 00552105    dec         eax
>00552106    jne         00552095
 00552108    xor         eax,eax
 0055210A    pop         edx
 0055210B    pop         ecx
 0055210C    pop         ecx
 0055210D    mov         dword ptr fs:[eax],edx
 00552110    push        55212D
 00552115    lea         eax,[ebp-8]
 00552118    call        @IntfClear
 0055211D    lea         eax,[ebp-4]
 00552120    call        @IntfClear
 00552125    ret
>00552126    jmp         @HandleFinally
>0055212B    jmp         00552115
 0055212D    pop         esi
 0055212E    pop         ebx
 0055212F    mov         esp,ebp
 00552131    pop         ebp
 00552132    ret         4
*}
end;

//00552148
{*procedure THelpManager.GetFilter(?:?);
begin
 00552148    push        ebp
 00552149    mov         ebp,esp
 0055214B    push        0
 0055214D    push        0
 0055214F    push        0
 00552151    push        ebx
 00552152    push        esi
 00552153    mov         dword ptr [ebp-0C],edx
 00552156    mov         esi,eax
 00552158    xor         eax,eax
 0055215A    push        ebp
 0055215B    push        55221B
 00552160    push        dword ptr fs:[eax]
 00552163    mov         dword ptr fs:[eax],esp
 00552166    mov         eax,dword ptr [ebp-0C]
 00552169    call        @UStrClr
 0055216E    mov         eax,dword ptr [esi+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00552171    cmp         dword ptr [eax+8],0;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
>00552175    jne         0055218E
 00552177    mov         ecx,dword ptr ds:[7C4654];^SResString162:TResStringRec
 0055217D    mov         dl,1
 0055217F    mov         eax,[0054EF9C];EHelpSystemException
 00552184    call        Exception.CreateRes;EHelpSystemException.Create
 00552189    call        @RaiseExcept
 0055218E    mov         eax,dword ptr [esi+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00552191    mov         eax,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00552194    dec         eax
 00552195    test        eax,eax
>00552197    jl          005521FD
 00552199    inc         eax
 0055219A    xor         ebx,ebx
 0055219C    mov         esi,dword ptr [esi+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 0055219F    lea         eax,[esi+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 005521A2    mov         edx,ebx
 005521A4    call        00434534
 005521A9    lea         eax,[ebp-4]
 005521AC    mov         edx,dword ptr [esi+20]
 005521AF    mov         edx,dword ptr [edx+ebx*4]
 005521B2    mov         edx,dword ptr [edx+4]
 005521B5    call        @IntfCopy
 005521BA    lea         eax,[ebp-8]
 005521BD    call        @IntfClear
 005521C2    mov         ecx,eax
 005521C4    mov         edx,552228;['{991F8E1A-2E3F-4ACB-91A8-4B9587BBA878}']
 005521C9    mov         eax,dword ptr [ebp-4]
 005521CC    call        Supports
 005521D1    test        al,al
>005521D3    je          005521E2
 005521D5    mov         edx,dword ptr [ebp-0C]
 005521D8    mov         eax,dword ptr [ebp-8]
 005521DB    mov         ecx,dword ptr [eax]
 005521DD    call        dword ptr [ecx+4C]
>005521E0    jmp         005521FD
 005521E2    mov         ecx,dword ptr ds:[7C4654];^SResString162:TResStringRec
 005521E8    mov         dl,1
 005521EA    mov         eax,[0054EF9C];EHelpSystemException
 005521EF    call        Exception.CreateRes;EHelpSystemException.Create
 005521F4    call        @RaiseExcept
 005521F9    inc         ebx
 005521FA    dec         eax
>005521FB    jne         0055219C
 005521FD    xor         eax,eax
 005521FF    pop         edx
 00552200    pop         ecx
 00552201    pop         ecx
 00552202    mov         dword ptr fs:[eax],edx
 00552205    push        552222
 0055220A    lea         eax,[ebp-8]
 0055220D    call        @IntfClear
 00552212    lea         eax,[ebp-4]
 00552215    call        @IntfClear
 0055221A    ret
>0055221B    jmp         @HandleFinally
>00552220    jmp         0055220A
 00552222    pop         esi
 00552223    pop         ebx
 00552224    mov         esp,ebp
 00552226    pop         ebp
 00552227    ret
end;*}

//00552238
procedure THelpManager.SetFilter(Filter:string);
begin
{*
 00552238    push        ebp
 00552239    mov         ebp,esp
 0055223B    add         esp,0FFFFFFF0
 0055223E    push        ebx
 0055223F    push        esi
 00552240    push        edi
 00552241    xor         ecx,ecx
 00552243    mov         dword ptr [ebp-4],ecx
 00552246    mov         dword ptr [ebp-8],ecx
 00552249    mov         dword ptr [ebp-10],edx
 0055224C    mov         dword ptr [ebp-0C],eax
 0055224F    xor         eax,eax
 00552251    push        ebp
 00552252    push        552313
 00552257    push        dword ptr fs:[eax]
 0055225A    mov         dword ptr fs:[eax],esp
 0055225D    mov         eax,dword ptr [ebp-0C]
 00552260    mov         eax,dword ptr [eax+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00552263    cmp         dword ptr [eax+8],0;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
>00552267    jne         00552280
 00552269    mov         ecx,dword ptr ds:[7C4654];^SResString162:TResStringRec
 0055226F    mov         dl,1
 00552271    mov         eax,[0054EF9C];EHelpSystemException
 00552276    call        Exception.CreateRes;EHelpSystemException.Create
 0055227B    call        @RaiseExcept
 00552280    mov         eax,dword ptr [ebp-0C]
 00552283    mov         eax,dword ptr [eax+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00552286    mov         edi,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00552289    dec         edi
 0055228A    test        edi,edi
>0055228C    jl          005522F5
 0055228E    inc         edi
 0055228F    xor         ebx,ebx
 00552291    mov         eax,dword ptr [ebp-0C]
 00552294    mov         esi,dword ptr [eax+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00552297    lea         eax,[esi+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 0055229A    mov         edx,ebx
 0055229C    call        00434534
 005522A1    lea         eax,[ebp-4]
 005522A4    mov         edx,dword ptr [esi+20]
 005522A7    mov         edx,dword ptr [edx+ebx*4]
 005522AA    mov         edx,dword ptr [edx+4]
 005522AD    call        @IntfCopy
 005522B2    lea         eax,[ebp-8]
 005522B5    call        @IntfClear
 005522BA    mov         ecx,eax
 005522BC    mov         edx,552324;['{991F8E1A-2E3F-4ACB-91A8-4B9587BBA878}']
 005522C1    mov         eax,dword ptr [ebp-4]
 005522C4    call        Supports
 005522C9    test        al,al
>005522CB    je          005522DA
 005522CD    mov         edx,dword ptr [ebp-10]
 005522D0    mov         eax,dword ptr [ebp-8]
 005522D3    mov         ecx,dword ptr [eax]
 005522D5    call        dword ptr [ecx+50]
>005522D8    jmp         005522F1
 005522DA    mov         ecx,dword ptr ds:[7C4654];^SResString162:TResStringRec
 005522E0    mov         dl,1
 005522E2    mov         eax,[0054EF9C];EHelpSystemException
 005522E7    call        Exception.CreateRes;EHelpSystemException.Create
 005522EC    call        @RaiseExcept
 005522F1    inc         ebx
 005522F2    dec         edi
>005522F3    jne         00552291
 005522F5    xor         eax,eax
 005522F7    pop         edx
 005522F8    pop         ecx
 005522F9    pop         ecx
 005522FA    mov         dword ptr fs:[eax],edx
 005522FD    push        55231A
 00552302    lea         eax,[ebp-8]
 00552305    call        @IntfClear
 0055230A    lea         eax,[ebp-4]
 0055230D    call        @IntfClear
 00552312    ret
>00552313    jmp         @HandleFinally
>00552318    jmp         00552302
 0055231A    pop         edi
 0055231B    pop         esi
 0055231C    pop         ebx
 0055231D    mov         esp,ebp
 0055231F    pop         ebp
 00552320    ret
*}
end;

//00552334
function THelpManager.GetHandle:NativeUInt;
begin
{*
 00552334    mov         eax,dword ptr [eax+1C];THelpManager.FHandle:NativeUInt
 00552337    ret
*}
end;

//00552338
function THelpManager.GetHelpFile:string;
begin
{*
 00552338    push        ebx
 00552339    push        esi
 0055233A    mov         esi,edx
 0055233C    mov         ebx,eax
 0055233E    mov         eax,esi
 00552340    mov         edx,dword ptr [ebx+20]
 00552343    call        @UStrAsg
 00552348    pop         esi
 00552349    pop         ebx
 0055234A    ret
*}
end;

//0055234C
procedure THelpManager.Release(ViewerID:Integer);
begin
{*
 0055234C    push        ebx
 0055234D    push        esi
 0055234E    push        edi
 0055234F    push        ebp
 00552350    mov         ebp,edx
 00552352    mov         esi,eax
 00552354    mov         eax,dword ptr [esi+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00552357    mov         ebx,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 0055235A    dec         ebx
 0055235B    cmp         ebx,0
>0055235E    jl          0055238F
 00552360    mov         edi,dword ptr [esi+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 00552363    lea         eax,[edi+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00552366    mov         edx,ebx
 00552368    call        00434534
 0055236D    mov         eax,dword ptr [edi+20]
 00552370    mov         eax,dword ptr [eax+ebx*4]
 00552373    cmp         ebp,dword ptr [eax+8]
>00552376    jne         00552389
 00552378    mov         eax,dword ptr [esi+14];THelpManager.FExtendedViewerList:TList<System.HelpIntfs.THelpView...
 0055237B    add         eax,8;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 0055237E    mov         cl,1
 00552380    mov         edx,ebx
 00552382    call        00435200
>00552387    jmp         0055238F
 00552389    dec         ebx
 0055238A    cmp         ebx,0FFFFFFFF
>0055238D    jne         00552360
 0055238F    mov         eax,dword ptr [esi+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 00552392    mov         ebx,dword ptr [eax+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 00552395    dec         ebx
 00552396    cmp         ebx,0
>00552399    jl          005523D1
 0055239B    mov         edi,dword ptr [esi+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 0055239E    lea         eax,[edi+8];TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 005523A1    mov         edx,ebx
 005523A3    call        00434534
 005523A8    mov         eax,dword ptr [edi+20]
 005523AB    mov         edi,dword ptr [eax+ebx*4]
 005523AE    cmp         ebp,dword ptr [edi+8]
>005523B1    jne         005523CB
 005523B3    mov         eax,dword ptr [esi+10];THelpManager.FViewerList:TList<System.HelpIntfs.THelpViewerNode>
 005523B6    add         eax,8;TList<System.HelpIntfs.THelpViewerNode>.FCount:Integer
 005523B9    mov         cl,1
 005523BB    mov         edx,ebx
 005523BD    call        00435200
 005523C2    mov         eax,edi
 005523C4    call        TObject.Free
>005523C9    jmp         005523D1
 005523CB    dec         ebx
 005523CC    cmp         ebx,0FFFFFFFF
>005523CF    jne         0055239B
 005523D1    pop         ebp
 005523D2    pop         edi
 005523D3    pop         esi
 005523D4    pop         ebx
 005523D5    ret
*}
end;

Initialization
Finalization
//005523D8
{*
 005523D8    push        ebp
 005523D9    mov         ebp,esp
 005523DB    xor         eax,eax
 005523DD    push        ebp
 005523DE    push        552409
 005523E3    push        dword ptr fs:[eax]
 005523E6    mov         dword ptr fs:[eax],esp
 005523E9    inc         dword ptr ds:[7CA6D8]
>005523EF    jne         005523FB
 005523F1    mov         eax,7CA6DC
 005523F6    call        @IntfClear
 005523FB    xor         eax,eax
 005523FD    pop         edx
 005523FE    pop         ecx
 005523FF    pop         ecx
 00552400    mov         dword ptr fs:[eax],edx
 00552403    push        552410
 00552408    ret
>00552409    jmp         @HandleFinally
>0055240E    jmp         00552408
 00552410    pop         ebp
 00552411    ret
*}
end.