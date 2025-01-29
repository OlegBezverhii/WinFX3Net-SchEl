//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit61;

interface

uses
  SysUtils, Classes;

type
  :TCustomHeaderControl.:1 = array of Integer;
//elSize = 4
//varType equivalent: varInteger;
    destructor Destroy();//0053732C
    procedure CreateParams(var Params:TCreateParams);//00537380
    //procedure sub_00537454(?:?);//00537454
    procedure CreateWnd;//00537520
    procedure ChangeScale(M:Integer; D:Integer);//00537594
    procedure sub_005375FC;//005375FC
    procedure CMBiDiModeChanged(var Message:Messages.TMessage);//005376B8
    procedure FlipChildren(AllLevels:Boolean);//00537710
    //procedure sub_005377E8(?:?; ?:?);//005377E8
    //procedure sub_00537824(?:?);//00537824
    //procedure sub_00537844(?:?);//00537844
    //procedure sub_00537864(?:?);//00537864
    //procedure sub_00537884(?:?; ?:?);//00537884
    procedure SetFullDrag(Value:Boolean);//005378B0
    procedure SetHotTrack(Value:Boolean);//005378C4
    procedure SetStyle(Value:THeaderStyle);//005378D8
    procedure SetCheckBoxes(Value:Boolean);//005378EC
    procedure SetNoSizing(Value:Boolean);//00537934
    procedure SetOverFlow(Value:Boolean);//0053797C
    procedure SetDragReorder(Value:Boolean);//005379C4
    procedure SetSections(Value:THeaderSections);//005379D8
    //procedure sub_005379E4(?:TCustomHeaderControl; ?:?; ?:Integer);//005379E4
    procedure sub_00537B14(?:TCustomHeaderControl; ?:Integer);//00537B14
    procedure sub_00537B38(?:TCustomHeaderControl);//00537B38
    //procedure sub_00537BB4(?:?);//00537BB4
    //procedure sub_00537CCC(?:?);//00537CCC
    //function sub_00538020(?:?):?;//00538020
    //procedure sub_00538058(?:?);//00538058
    //procedure WMLButtonDown(?:?);//00538108
    //procedure WMSize(?:?);//00538168
    //procedure WMWindowPosChangedMsg(?:?);//00538310
    //function sub_00538328(?:TCustomHeaderControl; ?:?):?;//00538328
    //function sub_005383F8(?:TCustomHeaderControl; ?:THeaderSection):?;//005383F8
    procedure Notification(AComponent:TComponent; Operation:TOperation);//0053841C
    procedure SetImages(Value:TCustomImageList);//00538450
    //procedure sub_005384DC(?:?; ?:?);//005384DC
    //procedure sub_00538510(?:?; ?:?);//00538510
    //procedure sub_00538580(?:THeaderSection; ?:?; ?:?);//00538580
    procedure sub_005386B4(?:TCustomHeaderControl);//005386B4
    procedure sub_00538710;//00538710
    procedure sub_00538730;//00538730
    procedure sub_00538768;//00538768
    //function sub_00538778(?:?; ?:?; ?:?):?;//00538778
    //procedure sub_005387E4(?:?);//005387E4
    constructor sub_005387FC(AOwner:TTreeNodes);//005387FC
    destructor Destroy();//0053884C
    function GetHandle:HWND;//00538950
    //function sub_00538964(?:TTreeNode):?;//00538964
    function HasAsParent(Value:TTreeNode):Boolean;//0053896C
    //procedure sub_005389AC(?:?; ?:?);//005389AC
    //function sub_00538A00(?:TTreeNode; ?:UnicodeString):?;//00538A00
    procedure sub_00538AA4(?:TTreeNode; ?:Pointer);//00538AA4
    //procedure sub_00538B14(?:?; ?:?);//00538B14
    //procedure sub_00538BB0(?:?; ?:?; ?:?);//00538BB0
    //procedure sub_00538C54(?:TTreeNode; ?:?);//00538C54
    //procedure sub_00538CB0(?:?; ?:?);//00538CB0
    //procedure sub_00538CF4(?:TTreeNode; ?:?);//00538CF4
    //procedure sub_00538D50(?:TTreeNode; ?:?);//00538D50
    //procedure sub_00538DA0(?:TTreeNode; ?:?);//00538DA0
    //function sub_00538DF4(?:?; ?:?):?;//00538DF4
    //function sub_00538E2C(?:?; ?:?):?;//00538E2C
    //procedure sub_00538E80(?:?; ?:?);//00538E80
    //procedure sub_00538EC4(?:TTreeNode; ?:?; ?:Boolean);//00538EC4
    procedure Expand(Recurse:Boolean);//00538FC0
    procedure Collapse(Recurse:Boolean);//00538FCC
    //function sub_00538FD8:?;//00538FD8
    //procedure sub_00538FE0(?:TTreeNode; ?:?);//00538FE0
    //function sub_0053900C:?;//0053900C
    //procedure sub_00539014(?:TTreeNode; ?:?);//00539014
    //procedure sub_005390B4(?:TTreeNode; ?:?);//005390B4
    //function sub_005390C0:?;//005390C0
    //procedure sub_005390C8(?:TTreeNode; ?:?);//005390C8
    //function sub_005390E8:?;//005390E8
    //procedure sub_005390F0(?:TTreeNode; ?:?);//005390F0
    //function sub_00539138(?:TPersistent):?;//00539138
    //procedure sub_00539180(?:TTreeNode; ?:?);//00539180
    //function sub_005391A0:?;//005391A0
    //procedure sub_005391A8(?:TTreeNode; ?:?);//005391A8
    //function sub_005391E4(?:TTreeNode):?;//005391E4
    function getNextSibling:TTreeNode;//00539220
    function getPrevSibling:TTreeNode;//0053925C
    function GetNextVisible:TTreeNode;//00539298
    function GetPrevVisible:TTreeNode;//005392DC
    function GetNextChild(Value:TTreeNode):TTreeNode;//00539320
    function getFirstChild:TTreeNode;//00539330
    function GetLastChild:TTreeNode;//0053936C
    function GetNext:TTreeNode;//0053938C
    function GetPrev:TTreeNode;//0053940C
    //function sub_0053943C(?:Pointer):?;//0053943C
    //function sub_00539478(?:TObject):?;//00539478
    function GetItem(Index:Integer):TTreeNode;//00539498
    function IndexOf(Value:TTreeNode):Integer;//00539538
    //function sub_00539574:?;//00539574
    //procedure sub_00539598(?:TTreeNode; ?:TTreeNode; ?:TTreeNode; ?:?; ?:?);//00539598
    procedure MoveTo(Destination:TTreeNode; Mode:TNodeAttachMode);//00539734
    function IsFirstNode:Boolean;//005398E0
    //function sub_00539908:?;//00539908
    //function sub_0053992C(?:TTreeNode):?;//0053992C
    //procedure DisplayRect(TextOnly:Boolean; ?:?);//0053995C
    procedure AlphaSort(ARecurse:Boolean);//00539998
    function CustomSort(SortProc:PFNTVCOMPARE; Data:NativeInt; ARecurse:Boolean):Boolean;//005399A4
    procedure Delete;//00539A50
    procedure Assign(Source:TPersistent);//00539A5C
    //function sub_00539B10(?:TTreeNode; ?:?):?;//00539B10
    //procedure sub_00539C38(?:TTreeNode; ?:TMemoryStream; ?:?);//00539C38
    procedure sub_00539F70(?:TTreeNode; ?:TMemoryStream);//00539F70
    procedure GetCurrent;//0053A0B0
    constructor Create(AOwner:TCustomTreeView);//0053A0BC
    destructor Destroy();//0053A0F8
    //function sub_0053A124(?:TTreeNodes):?;//0053A124
    //function sub_0053A154(?:TTreeNodes):?;//0053A154
    //function Delete(Node:TTreeNode):?;//0053A160
    procedure Clear;//0053A168
    function AddChild(Parent:TTreeNode; S:string):TTreeNode;//0053A1FC
    function AddChildObject(Parent:TTreeNode; S:string; Ptr:Pointer):TTreeNode;//0053A20C
    function Add(Sibling:TTreeNode; S:string):TTreeNode;//0053A224
    function AddObject(Sibling:TTreeNode; S:string; Ptr:Pointer):TTreeNode;//0053A234
    function AddNode(Node:TTreeNode; Relative:TTreeNode; Method:TNodeAttachMode; Ptr:Pointer; S:string):TTreeNode;//0053A24C
    //procedure sub_0053A3F8(?:TTreeNodes; ?:?);//0053A3F8
    //procedure sub_0053A44C(?:TTreeNodes; ?:?);//0053A44C
    //procedure sub_0053A46C(?:TTreeNodes; ?:TTreeNode; ?:?);//0053A46C
    //function sub_0053A490(?:TTreeNodes; ?:?; ?:HTREEITEM; ?:?; ?:?):?;//0053A490
    function GetFirstNode:TTreeNode;//0053A510
    function GetNodeFromIndex(Index:Integer):TTreeNode;//0053A52C
    function GetNode(ItemId:HTREEITEM):TTreeNode;//0053A614
    procedure BeginUpdate;//0053A64C
    //procedure sub_0053A664(?:TTreeNodes; ?:?);//0053A664
    procedure EndUpdate;//0053A698
    procedure Assign(Source:TPersistent);//0053A6AC
    //function sub_0053A740(?:?):?;//0053A740
    procedure DefineProperties(Filer:TFiler);//0053A7D0
    procedure sub_0053A940(?:TTreeNodes; ?:TMemoryStream);//0053A940
    procedure sub_0053AA44(?:TPersistent; ?:TMemoryStream);//0053AA44
    procedure sub_0053AABC(?:TTreeNodes; ?:TMemoryStream);//0053AABC
    procedure sub_0053AB38(?:TTreeNodes; ?:TMemoryStream);//0053AB38
    procedure sub_0053AB94(?:TTreeNodes);//0053AB94
    constructor Create(AOwner:TComponent);//0053AB9C

implementation

//0053732C
destructor TCustomHeaderControl.Destroy();
begin
{*
 0053732C    push        ebx
 0053732D    push        esi
 0053732E    call        @BeforeDestruction
 00537333    mov         ebx,edx
 00537335    mov         esi,eax
 00537337    mov         eax,dword ptr [esi+29C];TCustomHeaderControl.FCanvas:TCanvas
 0053733D    call        TObject.Free
 00537342    mov         eax,dword ptr [esi+290];TCustomHeaderControl.FSections:THeaderSections
 00537348    call        TObject.Free
 0053734D    mov         eax,dword ptr [esi+2AC];TCustomHeaderControl.FImageChangeLink:TChangeLink
 00537353    call        TObject.Free
 00537358    mov         eax,dword ptr [esi+294];TCustomHeaderControl.FSectionStream:TMemoryStream
 0053735E    test        eax,eax
>00537360    je          00537367
 00537362    call        TObject.Free
 00537367    mov         dl,0FC
 00537369    and         dl,bl
 0053736B    mov         eax,esi
 0053736D    call        TWinControl.Destroy
 00537372    test        bl,bl
>00537374    jle         0053737D
 00537376    mov         eax,esi
 00537378    call        @ClassDestroy
 0053737D    pop         esi
 0053737E    pop         ebx
 0053737F    ret
*}
end;

//00537380
procedure TCustomHeaderControl.CreateParams(var Params:TCreateParams);
begin
{*
 00537380    push        ebx
 00537381    push        esi
 00537382    mov         esi,edx
 00537384    mov         ebx,eax
 00537386    mov         eax,1
 0053738B    call        InitCommonControl
 00537390    mov         edx,esi
 00537392    mov         eax,ebx
 00537394    call        TWinControl.CreateParams
 00537399    mov         ecx,53743C;'S'
 0053739E    mov         edx,esi
 005373A0    mov         eax,ebx
 005373A2    call        TWinControl.CreateSubClass
 005373A7    movzx       eax,byte ptr [ebx+2B4];TCustomHeaderControl.FStyle:THeaderStyle
 005373AE    mov         eax,dword ptr [eax*4+7A1570]
 005373B5    or          dword ptr [esi+4],eax;TCreateParams.Style:DWORD
 005373B8    cmp         byte ptr [ebx+2A8],0;TCustomHeaderControl.FFullDrag:Boolean
>005373BF    je          005373C8
 005373C1    or          dword ptr [esi+4],80;TCreateParams.Style:DWORD
 005373C8    cmp         byte ptr [ebx+2A9],0;TCustomHeaderControl.FHotTrack:Boolean
>005373CF    je          005373D5
 005373D1    or          dword ptr [esi+4],4;TCreateParams.Style:DWORD
 005373D5    cmp         byte ptr [ebx+2AA],0;TCustomHeaderControl.FDragReorder:Boolean
>005373DC    je          005373E2
 005373DE    or          dword ptr [esi+4],40;TCreateParams.Style:DWORD
 005373E2    and         dword ptr [esi+24],0FFFFFFFC;TCreateParams.WindowClass:TWndClass
 005373E6    mov         edx,1
 005373EB    mov         eax,5
 005373F0    call        CheckWin32Version
 005373F5    test        al,al
>005373F7    je          00537437
 005373F9    call        StyleServices
 005373FE    mov         edx,dword ptr [eax]
 00537400    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00537403    test        al,al
>00537405    je          00537437
 00537407    cmp         byte ptr [ebx+308],0;TCustomHeaderControl.FCheckBoxes:Boolean
>0053740E    je          00537417
 00537410    or          dword ptr [esi+4],400;TCreateParams.Style:DWORD
 00537417    cmp         byte ptr [ebx+30A],0;TCustomHeaderControl.FOverflow:Boolean
>0053741E    je          00537427
 00537420    or          dword ptr [esi+4],1000;TCreateParams.Style:DWORD
 00537427    cmp         byte ptr [ebx+309],0;TCustomHeaderControl.FNoSizing:Boolean
>0053742E    je          00537437
 00537430    or          dword ptr [esi+4],800;TCreateParams.Style:DWORD
 00537437    pop         esi
 00537438    pop         ebx
 00537439    ret
*}
end;

//00537454
{*procedure sub_00537454(?:?);
begin
 00537454    push        ebp
 00537455    mov         ebp,esp
 00537457    push        ecx
 00537458    mov         eax,dword ptr [ebp+8]
 0053745B    mov         eax,dword ptr [eax-4]
 0053745E    cmp         dword ptr [eax+294],0
>00537465    je          0053751C
 0053746B    mov         eax,dword ptr [ebp+8]
 0053746E    mov         eax,dword ptr [eax-4]
 00537471    mov         eax,dword ptr [eax+290]
 00537477    call        TObject.Free
 0053747C    mov         eax,dword ptr [ebp+8]
 0053747F    mov         eax,dword ptr [eax-4]
 00537482    mov         edx,dword ptr [eax]
 00537484    call        dword ptr [edx+10C]
 0053748A    mov         edx,dword ptr [ebp+8]
 0053748D    mov         edx,dword ptr [edx-4]
 00537490    mov         dword ptr [edx+290],eax
 00537496    push        400
 0053749B    mov         eax,dword ptr [ebp+8]
 0053749E    mov         eax,dword ptr [eax-4]
 005374A1    mov         ecx,dword ptr [eax+294]
 005374A7    mov         dl,1
 005374A9    mov         eax,[00474D48];TReader
 005374AE    call        TFiler.Create;TReader.Create
 005374B3    mov         dword ptr [ebp-4],eax
 005374B6    xor         eax,eax
 005374B8    push        ebp
 005374B9    push        5374F6
 005374BE    push        dword ptr fs:[eax]
 005374C1    mov         dword ptr fs:[eax],esp
 005374C4    mov         eax,dword ptr [ebp-4]
 005374C7    call        TReader.ReadValue
 005374CC    mov         eax,dword ptr [ebp+8]
 005374CF    mov         eax,dword ptr [eax-4]
 005374D2    mov         edx,dword ptr [eax+290]
 005374D8    mov         eax,dword ptr [ebp-4]
 005374DB    call        TReader.ReadCollection
 005374E0    xor         eax,eax
 005374E2    pop         edx
 005374E3    pop         ecx
 005374E4    pop         ecx
 005374E5    mov         dword ptr fs:[eax],edx
 005374E8    push        5374FD
 005374ED    mov         eax,dword ptr [ebp-4]
 005374F0    call        TObject.Free
 005374F5    ret
>005374F6    jmp         @HandleFinally
>005374FB    jmp         005374ED
 005374FD    mov         eax,dword ptr [ebp+8]
 00537500    mov         eax,dword ptr [eax-4]
 00537503    mov         eax,dword ptr [eax+294]
 00537509    call        TObject.Free
 0053750E    mov         eax,dword ptr [ebp+8]
 00537511    mov         eax,dword ptr [eax-4]
 00537514    xor         edx,edx
 00537516    mov         dword ptr [eax+294],edx
 0053751C    pop         ecx
 0053751D    pop         ebp
 0053751E    ret
end;*}

//00537520
procedure TCustomHeaderControl.CreateWnd;
begin
{*
 00537520    push        ebp
 00537521    mov         ebp,esp
 00537523    push        ecx
 00537524    push        ebx
 00537525    push        esi
 00537526    mov         dword ptr [ebp-4],eax
 00537529    mov         eax,dword ptr [ebp-4]
 0053752C    call        TWinControl.CreateWnd
 00537531    mov         eax,dword ptr [ebp-4]
 00537534    mov         ebx,dword ptr [eax+2B0];TCustomHeaderControl.FImages:TCustomImageList
 0053753A    test        ebx,ebx
>0053753C    je          00537571
 0053753E    mov         eax,ebx
 00537540    call        TCustomImageList.HandleAllocated
 00537545    test        al,al
>00537547    je          00537571
 00537549    mov         eax,dword ptr [ebp-4]
 0053754C    call        TWinControl.GetHandle
 00537551    mov         ebx,eax
 00537553    mov         eax,dword ptr [ebp-4]
 00537556    mov         eax,dword ptr [eax+2B0];TCustomHeaderControl.FImages:TCustomImageList
 0053755C    call        TCustomImageList.GetHandle
 00537561    mov         esi,eax
 00537563    push        esi
 00537564    push        0
 00537566    push        1208
 0053756B    push        ebx
 0053756C    call        user32.SendMessageW
 00537571    mov         eax,dword ptr [ebp-4]
 00537574    cmp         dword ptr [eax+294],0;TCustomHeaderControl.FSectionStream:TMemoryStream
>0053757B    je          00537586
 0053757D    push        ebp
 0053757E    call        00537454
 00537583    pop         ecx
>00537584    jmp         0053758E
 00537586    mov         eax,dword ptr [ebp-4]
 00537589    call        00537B38
 0053758E    pop         esi
 0053758F    pop         ebx
 00537590    pop         ecx
 00537591    pop         ebp
 00537592    ret
*}
end;

//00537594
procedure TCustomHeaderControl.ChangeScale(M:Integer; D:Integer);
begin
{*
 00537594    push        ebx
 00537595    push        esi
 00537596    push        edi
 00537597    push        ebp
 00537598    push        ecx
 00537599    mov         dword ptr [esp],ecx
 0053759C    mov         ebp,edx
 0053759E    mov         esi,eax
 005375A0    mov         ecx,dword ptr [esp]
 005375A3    mov         edx,ebp
 005375A5    mov         eax,esi
 005375A7    call        TWinControl.ChangeScale
 005375AC    mov         eax,dword ptr [esi+290];TCustomHeaderControl.FSections:THeaderSections
 005375B2    mov         eax,dword ptr [eax+8];THeaderSections.FItems:TList<System.Classes.TCollectionItem>
 005375B5    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 005375B8    dec         edi
 005375B9    test        edi,edi
>005375BB    jl          005375F3
 005375BD    inc         edi
 005375BE    xor         ebx,ebx
 005375C0    mov         eax,dword ptr [esp]
 005375C3    push        eax
 005375C4    push        ebp
 005375C5    mov         edx,ebx
 005375C7    mov         eax,dword ptr [esi+290];TCustomHeaderControl.FSections:THeaderSections
 005375CD    call        THeaderSections.GetItem
 005375D2    mov         eax,dword ptr [eax+10];THeaderSection.FWidth:Integer
 005375D5    push        eax
 005375D6    call        kernel32.MulDiv
 005375DB    push        eax
 005375DC    mov         edx,ebx
 005375DE    mov         eax,dword ptr [esi+290];TCustomHeaderControl.FSections:THeaderSections
 005375E4    call        THeaderSections.GetItem
 005375E9    pop         edx
 005375EA    call        THeaderSection.SetWidth
 005375EF    inc         ebx
 005375F0    dec         edi
>005375F1    jne         005375C0
 005375F3    pop         edx
 005375F4    pop         ebp
 005375F5    pop         edi
 005375F6    pop         esi
 005375F7    pop         ebx
 005375F8    ret
*}
end;

//005375FC
procedure sub_005375FC;
begin
{*
 005375FC    push        ebp
 005375FD    mov         ebp,esp
 005375FF    add         esp,0FFFFFFF8
 00537602    mov         dword ptr [ebp-4],eax
 00537605    mov         eax,dword ptr [ebp-4]
 00537608    test        byte ptr [eax+1C],1;TCustomHeaderControl.FComponentState:TComponentState
>0053760C    jne         005376B3
 00537612    mov         eax,dword ptr [ebp-4]
 00537615    test        byte ptr [eax+65],20;TCustomHeaderControl.FAlign:TAlign
>00537619    je          005376AB
 0053761F    mov         eax,dword ptr [ebp-4]
 00537622    cmp         dword ptr [eax+294],0;TCustomHeaderControl.FSectionStream:TMemoryStream
>00537629    jne         00537640
 0053762B    mov         dl,1
 0053762D    mov         eax,[00472CE4];TMemoryStream
 00537632    call        TObject.Create;TMemoryStream.Create
 00537637    mov         edx,dword ptr [ebp-4]
 0053763A    mov         dword ptr [edx+294],eax;TCustomHeaderControl.FSectionStream:TMemoryStream
 00537640    push        400
 00537645    mov         eax,dword ptr [ebp-4]
 00537648    mov         ecx,dword ptr [eax+294];TCustomHeaderControl.FSectionStream:TMemoryStream
 0053764E    mov         dl,1
 00537650    mov         eax,[00476148];TWriter
 00537655    call        TFiler.Create;TWriter.Create
 0053765A    mov         dword ptr [ebp-8],eax
 0053765D    xor         eax,eax
 0053765F    push        ebp
 00537660    push        5376A4
 00537665    push        dword ptr fs:[eax]
 00537668    mov         dword ptr fs:[eax],esp
 0053766B    mov         eax,dword ptr [ebp-4]
 0053766E    mov         edx,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 00537674    mov         eax,dword ptr [ebp-8]
 00537677    call        TWriter.WriteCollection
 0053767C    xor         eax,eax
 0053767E    pop         edx
 0053767F    pop         ecx
 00537680    pop         ecx
 00537681    mov         dword ptr fs:[eax],edx
 00537684    push        5376AB
 00537689    mov         eax,dword ptr [ebp-8]
 0053768C    call        TObject.Free
 00537691    push        0
 00537693    push        0
 00537695    mov         eax,dword ptr [ebp-4]
 00537698    mov         eax,dword ptr [eax+294];TCustomHeaderControl.FSectionStream:TMemoryStream
 0053769E    call        TStream.SetPosition
 005376A3    ret
>005376A4    jmp         @HandleFinally
>005376A9    jmp         00537689
 005376AB    mov         eax,dword ptr [ebp-4]
 005376AE    call        004EC00C
 005376B3    pop         ecx
 005376B4    pop         ecx
 005376B5    pop         ebp
 005376B6    ret
*}
end;

//005376B8
procedure TCustomHeaderControl.CMBiDiModeChanged(var Message:Messages.TMessage);
begin
{*
 005376B8    push        ebx
 005376B9    push        esi
 005376BA    push        edi
 005376BB    mov         ebx,eax
 005376BD    mov         eax,ebx
 005376BF    call        TWinControl.CMBiDiModeChanged
 005376C4    mov         eax,ebx
 005376C6    call        TWinControl.HandleAllocated
 005376CB    test        al,al
>005376CD    je          0053770C
 005376CF    mov         eax,dword ptr [ebx+290];TCustomHeaderControl.FSections:THeaderSections
 005376D5    mov         eax,dword ptr [eax+8];THeaderSections.FItems:TList<System.Classes.TCollectionItem>
 005376D8    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 005376DB    dec         edi
 005376DC    test        edi,edi
>005376DE    jl          0053770C
 005376E0    inc         edi
 005376E1    xor         esi,esi
 005376E3    mov         edx,esi
 005376E5    mov         eax,dword ptr [ebx+290];TCustomHeaderControl.FSections:THeaderSections
 005376EB    call        THeaderSections.GetItem
 005376F0    cmp         byte ptr [eax+25],0;THeaderSection.FParentBiDiMode:Boolean
>005376F4    je          00537708
 005376F6    mov         edx,esi
 005376F8    mov         eax,dword ptr [ebx+290];TCustomHeaderControl.FSections:THeaderSections
 005376FE    call        THeaderSections.GetItem
 00537703    call        THeaderSection.ParentBiDiModeChanged
 00537708    inc         esi
 00537709    dec         edi
>0053770A    jne         005376E3
 0053770C    pop         edi
 0053770D    pop         esi
 0053770E    pop         ebx
 0053770F    ret
*}
end;

//00537710
procedure TCustomHeaderControl.FlipChildren(AllLevels:Boolean);
begin
{*
 00537710    push        ebp
 00537711    mov         ebp,esp
 00537713    add         esp,0FFFFFFF8
 00537716    push        ebx
 00537717    push        esi
 00537718    push        edi
 00537719    mov         dword ptr [ebp-4],eax
 0053771C    mov         eax,dword ptr [ebp-4]
 0053771F    call        TWinControl.HandleAllocated
 00537724    test        al,al
>00537726    je          005377E0
 0053772C    mov         eax,dword ptr [ebp-4]
 0053772F    mov         edx,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 00537735    mov         eax,edx
 00537737    mov         eax,dword ptr [eax+8];THeaderSections.FItems:TList<System.Classes.TCollectionItem>
 0053773A    cmp         dword ptr [eax+8],1;TList<System.Classes.TCollectionItem>.FCount:Integer
>0053773E    jle         005377E0
 00537744    mov         eax,edx
 00537746    mov         eax,dword ptr [eax+8];THeaderSections.FItems:TList<System.Classes.TCollectionItem>
 00537749    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0053774C    mov         ecx,dword ptr [ebp-4]
 0053774F    mov         dl,1
 00537751    mov         eax,[00522394];THeaderSections
 00537756    call        THeaderSections.Create;THeaderSections.Create
 0053775B    mov         dword ptr [ebp-8],eax
 0053775E    xor         eax,eax
 00537760    push        ebp
 00537761    push        5377D1
 00537766    push        dword ptr fs:[eax]
 00537769    mov         dword ptr fs:[eax],esp
 0053776C    mov         eax,dword ptr [ebp-4]
 0053776F    mov         edx,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 00537775    mov         eax,dword ptr [ebp-8]
 00537778    mov         ecx,dword ptr [eax]
 0053777A    call        dword ptr [ecx+8];TCollection.Assign
 0053777D    mov         eax,dword ptr [ebp-4]
 00537780    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 00537786    call        TCollection.Clear
 0053778B    mov         ebx,edi
 0053778D    dec         ebx
 0053778E    test        ebx,ebx
>00537790    jl          005377BB
 00537792    inc         ebx
 00537793    xor         esi,esi
 00537795    mov         edx,edi
 00537797    sub         edx,esi
 00537799    dec         edx
 0053779A    mov         eax,dword ptr [ebp-8]
 0053779D    call        THeaderSections.GetItem
 005377A2    push        eax
 005377A3    mov         eax,dword ptr [ebp-4]
 005377A6    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 005377AC    call        THeaderSections.Add
 005377B1    pop         edx
 005377B2    mov         ecx,dword ptr [eax]
 005377B4    call        dword ptr [ecx+8];THeaderSection.Assign
 005377B7    inc         esi
 005377B8    dec         ebx
>005377B9    jne         00537795
 005377BB    xor         eax,eax
 005377BD    pop         edx
 005377BE    pop         ecx
 005377BF    pop         ecx
 005377C0    mov         dword ptr fs:[eax],edx
 005377C3    push        5377D8
 005377C8    mov         eax,dword ptr [ebp-8]
 005377CB    call        TObject.Free
 005377D0    ret
>005377D1    jmp         @HandleFinally
>005377D6    jmp         005377C8
 005377D8    mov         eax,dword ptr [ebp-4]
 005377DB    call        00537B38
 005377E0    pop         edi
 005377E1    pop         esi
 005377E2    pop         ebx
 005377E3    pop         ecx
 005377E4    pop         ecx
 005377E5    pop         ebp
 005377E6    ret
*}
end;

//005377E8
{*procedure TCustomHeaderControl.sub_005377E8(?:?; ?:?);
begin
 005377E8    push        ebp
 005377E9    mov         ebp,esp
 005377EB    push        esi
 005377EC    mov         esi,eax
 005377EE    cmp         word ptr [esi+2CA],0;TCustomHeaderControl.?f2CA:word
>005377F6    je          00537812
 005377F8    push        ecx
 005377F9    movzx       eax,byte ptr [ebp+8]
 005377FD    push        eax
 005377FE    mov         eax,esi
 00537800    mov         ecx,edx
 00537802    mov         edx,eax
 00537804    mov         eax,dword ptr [esi+2CC];TCustomHeaderControl.?f2CC:dword
 0053780A    call        dword ptr [esi+2C8];TCustomHeaderControl.FOnDrawSection
>00537810    jmp         0053781F
 00537812    mov         edx,ecx
 00537814    mov         eax,dword ptr [esi+29C];TCustomHeaderControl.FCanvas:TCanvas
 0053781A    mov         ecx,dword ptr [eax]
 0053781C    call        dword ptr [ecx+54];TCanvas.FillRect
 0053781F    pop         esi
 00537820    pop         ebp
 00537821    ret         4
end;*}

//00537824
{*procedure TCustomHeaderControl.sub_00537824(?:?);
begin
 00537824    push        ebx
 00537825    cmp         word ptr [eax+2D2],0;TCustomHeaderControl.?f2D2:word
>0053782D    je          00537841
 0053782F    mov         ebx,eax
 00537831    mov         ecx,edx
 00537833    mov         edx,eax
 00537835    mov         eax,dword ptr [ebx+2D4];TCustomHeaderControl.?f2D4:dword
 0053783B    call        dword ptr [ebx+2D0];TCustomHeaderControl.FOnSectionClick
 00537841    pop         ebx
 00537842    ret
end;*}

//00537844
{*procedure TCustomHeaderControl.sub_00537844(?:?);
begin
 00537844    push        ebx
 00537845    cmp         word ptr [eax+2DA],0;TCustomHeaderControl.?f2DA:word
>0053784D    je          00537861
 0053784F    mov         ebx,eax
 00537851    mov         ecx,edx
 00537853    mov         edx,eax
 00537855    mov         eax,dword ptr [ebx+2DC];TCustomHeaderControl.?f2DC:dword
 0053785B    call        dword ptr [ebx+2D8];TCustomHeaderControl.FOnSectionCheck
 00537861    pop         ebx
 00537862    ret
end;*}

//00537864
{*procedure TCustomHeaderControl.sub_00537864(?:?);
begin
 00537864    push        ebx
 00537865    cmp         word ptr [eax+2E2],0;TCustomHeaderControl.?f2E2:word
>0053786D    je          00537881
 0053786F    mov         ebx,eax
 00537871    mov         ecx,edx
 00537873    mov         edx,eax
 00537875    mov         eax,dword ptr [ebx+2E4];TCustomHeaderControl.?f2E4:dword
 0053787B    call        dword ptr [ebx+2E0];TCustomHeaderControl.FOnSectionResize
 00537881    pop         ebx
 00537882    ret
end;*}

//00537884
{*procedure TCustomHeaderControl.sub_00537884(?:?; ?:?);
begin
 00537884    push        ebp
 00537885    mov         ebp,esp
 00537887    push        ebx
 00537888    cmp         word ptr [eax+2EA],0;TCustomHeaderControl.?f2EA:word
>00537890    je          005378AA
 00537892    push        ecx
 00537893    movzx       ecx,byte ptr [ebp+8]
 00537897    push        ecx
 00537898    mov         ebx,eax
 0053789A    mov         ecx,edx
 0053789C    mov         edx,eax
 0053789E    mov         eax,dword ptr [ebx+2EC];TCustomHeaderControl.?f2EC:dword
 005378A4    call        dword ptr [ebx+2E8];TCustomHeaderControl.FOnSectionTrack
 005378AA    pop         ebx
 005378AB    pop         ebp
 005378AC    ret         4
end;*}

//005378B0
procedure TCustomHeaderControl.SetFullDrag(Value:Boolean);
begin
{*
 005378B0    cmp         dl,byte ptr [eax+2A8];TCustomHeaderControl.FFullDrag:Boolean
>005378B6    je          005378C3
 005378B8    mov         byte ptr [eax+2A8],dl;TCustomHeaderControl.FFullDrag:Boolean
 005378BE    call        TWinControl.RecreateWnd
 005378C3    ret
*}
end;

//005378C4
procedure TCustomHeaderControl.SetHotTrack(Value:Boolean);
begin
{*
 005378C4    cmp         dl,byte ptr [eax+2A9];TCustomHeaderControl.FHotTrack:Boolean
>005378CA    je          005378D7
 005378CC    mov         byte ptr [eax+2A9],dl;TCustomHeaderControl.FHotTrack:Boolean
 005378D2    call        TWinControl.RecreateWnd
 005378D7    ret
*}
end;

//005378D8
procedure TCustomHeaderControl.SetStyle(Value:THeaderStyle);
begin
{*
 005378D8    cmp         dl,byte ptr [eax+2B4];TCustomHeaderControl.FStyle:THeaderStyle
>005378DE    je          005378EB
 005378E0    mov         byte ptr [eax+2B4],dl;TCustomHeaderControl.FStyle:THeaderStyle
 005378E6    call        TWinControl.RecreateWnd
 005378EB    ret
*}
end;

//005378EC
procedure TCustomHeaderControl.SetCheckBoxes(Value:Boolean);
begin
{*
 005378EC    push        ebx
 005378ED    mov         ebx,eax
 005378EF    cmp         dl,byte ptr [ebx+308];TCustomHeaderControl.FCheckBoxes:Boolean
>005378F5    je          00537930
 005378F7    mov         byte ptr [ebx+308],dl;TCustomHeaderControl.FCheckBoxes:Boolean
 005378FD    mov         edx,1
 00537902    mov         eax,5
 00537907    call        CheckWin32Version
 0053790C    test        al,al
>0053790E    je          00537930
 00537910    call        StyleServices
 00537915    mov         edx,dword ptr [eax]
 00537917    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0053791A    test        al,al
>0053791C    je          00537930
 0053791E    mov         eax,ebx
 00537920    call        TWinControl.HandleAllocated
 00537925    test        al,al
>00537927    je          00537930
 00537929    mov         eax,ebx
 0053792B    call        TWinControl.RecreateWnd
 00537930    pop         ebx
 00537931    ret
*}
end;

//00537934
procedure TCustomHeaderControl.SetNoSizing(Value:Boolean);
begin
{*
 00537934    push        ebx
 00537935    mov         ebx,eax
 00537937    cmp         dl,byte ptr [ebx+309];TCustomHeaderControl.FNoSizing:Boolean
>0053793D    je          00537978
 0053793F    mov         byte ptr [ebx+309],dl;TCustomHeaderControl.FNoSizing:Boolean
 00537945    mov         edx,1
 0053794A    mov         eax,5
 0053794F    call        CheckWin32Version
 00537954    test        al,al
>00537956    je          00537978
 00537958    call        StyleServices
 0053795D    mov         edx,dword ptr [eax]
 0053795F    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00537962    test        al,al
>00537964    je          00537978
 00537966    mov         eax,ebx
 00537968    call        TWinControl.HandleAllocated
 0053796D    test        al,al
>0053796F    je          00537978
 00537971    mov         eax,ebx
 00537973    call        TWinControl.RecreateWnd
 00537978    pop         ebx
 00537979    ret
*}
end;

//0053797C
procedure TCustomHeaderControl.SetOverFlow(Value:Boolean);
begin
{*
 0053797C    push        ebx
 0053797D    mov         ebx,eax
 0053797F    cmp         dl,byte ptr [ebx+30A];TCustomHeaderControl.FOverflow:Boolean
>00537985    je          005379C0
 00537987    mov         byte ptr [ebx+30A],dl;TCustomHeaderControl.FOverflow:Boolean
 0053798D    mov         edx,1
 00537992    mov         eax,5
 00537997    call        CheckWin32Version
 0053799C    test        al,al
>0053799E    je          005379C0
 005379A0    call        StyleServices
 005379A5    mov         edx,dword ptr [eax]
 005379A7    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 005379AA    test        al,al
>005379AC    je          005379C0
 005379AE    mov         eax,ebx
 005379B0    call        TWinControl.HandleAllocated
 005379B5    test        al,al
>005379B7    je          005379C0
 005379B9    mov         eax,ebx
 005379BB    call        TWinControl.RecreateWnd
 005379C0    pop         ebx
 005379C1    ret
*}
end;

//005379C4
procedure TCustomHeaderControl.SetDragReorder(Value:Boolean);
begin
{*
 005379C4    cmp         dl,byte ptr [eax+2AA];TCustomHeaderControl.FDragReorder:Boolean
>005379CA    je          005379D7
 005379CC    mov         byte ptr [eax+2AA],dl;TCustomHeaderControl.FDragReorder:Boolean
 005379D2    call        TWinControl.RecreateWnd
 005379D7    ret
*}
end;

//005379D8
procedure TCustomHeaderControl.SetSections(Value:THeaderSections);
begin
{*
 005379D8    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 005379DE    mov         ecx,dword ptr [eax]
 005379E0    call        dword ptr [ecx+8];TCollection.Assign
 005379E3    ret
*}
end;

//005379E4
{*procedure sub_005379E4(?:TCustomHeaderControl; ?:?; ?:Integer);
begin
 005379E4    push        ebx
 005379E5    push        esi
 005379E6    push        edi
 005379E7    add         esp,0FFFFFFC8
 005379EA    mov         dword ptr [esp],ecx
 005379ED    mov         edi,edx
 005379EF    mov         esi,eax
 005379F1    mov         eax,dword ptr [esi+290]
 005379F7    mov         edx,dword ptr [esp]
 005379FA    call        THeaderSections.GetItem
 005379FF    mov         ebx,eax
 00537A01    lea         eax,[esp+8]
 00537A05    xor         ecx,ecx
 00537A07    mov         edx,30
 00537A0C    call        @FillChar
 00537A11    mov         dword ptr [esp+8],7
 00537A19    mov         eax,dword ptr [ebx+10];THeaderSection.FWidth:Integer
 00537A1C    mov         dword ptr [esp+0C],eax
 00537A20    mov         eax,dword ptr [ebx+0C];THeaderSection.FText:string
 00537A23    call        @UStrToPWChar
 00537A28    mov         dword ptr [esp+10],eax
 00537A2C    mov         eax,dword ptr [ebx+0C];THeaderSection.FText:string
 00537A2F    test        eax,eax
>00537A31    je          00537A38
 00537A33    sub         eax,4
 00537A36    mov         eax,dword ptr [eax]
 00537A38    mov         dword ptr [esp+18],eax
 00537A3C    movzx       eax,byte ptr [ebx+1C];THeaderSection.FAlignment:TAlignment
 00537A40    mov         byte ptr [esp+4],al
 00537A44    mov         eax,ebx
 00537A46    call        THeaderSection.UseRightToLeftAlignment
 00537A4B    test        al,al
>00537A4D    je          00537A58
 00537A4F    lea         eax,[esp+4]
 00537A53    call        ChangeBiDiModeAlignment
 00537A58    movzx       eax,byte ptr [esp+4]
 00537A5D    sub         al,1
>00537A5F    jb          00537A65
>00537A61    je          00537A6D
>00537A63    jmp         00537A77
 00537A65    xor         eax,eax
 00537A67    mov         dword ptr [esp+1C],eax
>00537A6B    jmp         00537A7F
 00537A6D    mov         dword ptr [esp+1C],1
>00537A75    jmp         00537A7F
 00537A77    mov         dword ptr [esp+1C],2
 00537A7F    cmp         byte ptr [ebx+1D],1;THeaderSection.FStyle:THeaderSectionStyle
>00537A83    jne         00537A8F
 00537A85    or          dword ptr [esp+1C],8000
>00537A8D    jmp         00537A97
 00537A8F    or          dword ptr [esp+1C],4000
 00537A97    cmp         byte ptr [ebx+26],0;THeaderSection.FCheckBox:Boolean
>00537A9B    je          00537AA2
 00537A9D    or          dword ptr [esp+1C],40
 00537AA2    cmp         byte ptr [ebx+27],0;THeaderSection.FChecked:Boolean
>00537AA6    je          00537AB0
 00537AA8    or          dword ptr [esp+1C],80
 00537AB0    cmp         byte ptr [ebx+28],0;THeaderSection.FFixedWidth:Boolean
>00537AB4    je          00537ABE
 00537AB6    or          dword ptr [esp+1C],100
 00537ABE    mov         eax,ebx
 00537AC0    call        THeaderSection.UseRightToLeftReading
 00537AC5    test        al,al
>00537AC7    je          00537ACE
 00537AC9    or          dword ptr [esp+1C],4
 00537ACE    cmp         dword ptr [esi+2B0],0
>00537AD5    je          00537AF1
 00537AD7    cmp         dword ptr [ebx+20],0;THeaderSection.FImageIndex:TImageIndex
>00537ADB    jl          00537AF1
 00537ADD    or          dword ptr [esp+8],20
 00537AE2    or          dword ptr [esp+1C],800
 00537AEA    mov         eax,dword ptr [ebx+20];THeaderSection.FImageIndex:TImageIndex
 00537AED    mov         dword ptr [esp+24],eax
 00537AF1    lea         eax,[esp+8]
 00537AF5    push        eax
 00537AF6    mov         eax,ebx
 00537AF8    call        TCollectionItem.GetIndex
 00537AFD    push        eax
 00537AFE    mov         eax,esi
 00537B00    call        TWinControl.GetHandle
 00537B05    mov         edx,edi
 00537B07    pop         ecx
 00537B08    call        SendStructMessage
 00537B0D    add         esp,38
 00537B10    pop         edi
 00537B11    pop         esi
 00537B12    pop         ebx
 00537B13    ret
end;*}

//00537B14
procedure sub_00537B14(?:TCustomHeaderControl; ?:Integer);
begin
{*
 00537B14    push        ebx
 00537B15    push        esi
 00537B16    mov         esi,edx
 00537B18    mov         ebx,eax
 00537B1A    mov         eax,ebx
 00537B1C    call        TWinControl.HandleAllocated
 00537B21    test        al,al
>00537B23    je          00537B33
 00537B25    mov         ecx,esi
 00537B27    mov         edx,120C
 00537B2C    mov         eax,ebx
 00537B2E    call        005379E4
 00537B33    pop         esi
 00537B34    pop         ebx
 00537B35    ret
*}
end;

//00537B38
procedure sub_00537B38(?:TCustomHeaderControl);
begin
{*
 00537B38    push        ebx
 00537B39    push        esi
 00537B3A    push        edi
 00537B3B    mov         esi,eax
 00537B3D    mov         eax,esi
 00537B3F    call        TWinControl.HandleAllocated
 00537B44    test        al,al
>00537B46    je          00537BAE
 00537B48    cmp         byte ptr [esi+298],0;TCustomHeaderControl.FUpdatingSectionOrder:Boolean
>00537B4F    jne         00537BAE
 00537B51    push        0
 00537B53    push        0
 00537B55    push        1200
 00537B5A    mov         eax,esi
 00537B5C    call        TWinControl.GetHandle
 00537B61    push        eax
 00537B62    call        user32.SendMessageW
 00537B67    mov         ebx,eax
 00537B69    dec         ebx
 00537B6A    test        ebx,ebx
>00537B6C    jl          00537B88
 00537B6E    inc         ebx
 00537B6F    push        0
 00537B71    push        0
 00537B73    push        1202
 00537B78    mov         eax,esi
 00537B7A    call        TWinControl.GetHandle
 00537B7F    push        eax
 00537B80    call        user32.SendMessageW
 00537B85    dec         ebx
>00537B86    jne         00537B6F
 00537B88    mov         eax,dword ptr [esi+290];TCustomHeaderControl.FSections:THeaderSections
 00537B8E    mov         eax,dword ptr [eax+8];THeaderSections.FItems:TList<System.Classes.TCollectionItem>
 00537B91    mov         ebx,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00537B94    dec         ebx
 00537B95    test        ebx,ebx
>00537B97    jl          00537BAE
 00537B99    inc         ebx
 00537B9A    xor         edi,edi
 00537B9C    mov         ecx,edi
 00537B9E    mov         edx,120A
 00537BA3    mov         eax,esi
 00537BA5    call        005379E4
 00537BAA    inc         edi
 00537BAB    dec         ebx
>00537BAC    jne         00537B9C
 00537BAE    pop         edi
 00537BAF    pop         esi
 00537BB0    pop         ebx
 00537BB1    ret
*}
end;

//00537BB4
{*procedure TCustomHeaderControl.sub_00537BB4(?:?);
begin
 00537BB4    push        ebp
 00537BB5    mov         ebp,esp
 00537BB7    add         esp,0FFFFFFF0
 00537BBA    push        esi
 00537BBB    mov         dword ptr [ebp-8],edx
 00537BBE    mov         dword ptr [ebp-4],eax
 00537BC1    mov         eax,dword ptr [ebp-8]
 00537BC4    mov         eax,dword ptr [eax+8]
 00537BC7    mov         dword ptr [ebp-10],eax
 00537BCA    mov         eax,dword ptr [ebp-10]
 00537BCD    mov         eax,dword ptr [eax+18]
 00537BD0    push        eax
 00537BD1    call        gdi32.SaveDC
 00537BD6    mov         dword ptr [ebp-0C],eax
 00537BD9    mov         eax,dword ptr [ebp-4]
 00537BDC    mov         eax,dword ptr [eax+29C];TCustomHeaderControl.FCanvas:TCanvas
 00537BE2    call        TCustomCanvas.Lock
 00537BE7    xor         eax,eax
 00537BE9    push        ebp
 00537BEA    push        537CB5
 00537BEF    push        dword ptr fs:[eax]
 00537BF2    mov         dword ptr fs:[eax],esp
 00537BF5    mov         eax,dword ptr [ebp-10]
 00537BF8    mov         edx,dword ptr [eax+18]
 00537BFB    mov         eax,dword ptr [ebp-4]
 00537BFE    mov         eax,dword ptr [eax+29C];TCustomHeaderControl.FCanvas:TCanvas
 00537C04    call        TCanvas.SetHandle
 00537C09    mov         eax,dword ptr [ebp-4]
 00537C0C    mov         edx,dword ptr [eax+74];TCustomHeaderControl.FFont:TFont
 00537C0F    mov         eax,dword ptr [ebp-4]
 00537C12    mov         eax,dword ptr [eax+29C];TCustomHeaderControl.FCanvas:TCanvas
 00537C18    call        TCanvas.SetFont
 00537C1D    mov         eax,dword ptr [ebp-4]
 00537C20    mov         eax,dword ptr [eax+29C];TCustomHeaderControl.FCanvas:TCanvas
 00537C26    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00537C29    mov         edx,0FF00000F
 00537C2E    call        TBrush.SetColor
 00537C33    mov         eax,dword ptr [ebp-4]
 00537C36    mov         eax,dword ptr [eax+29C];TCustomHeaderControl.FCanvas:TCanvas
 00537C3C    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 00537C3F    xor         edx,edx
 00537C41    call        TBrush.SetStyle
 00537C46    mov         eax,dword ptr [ebp-10]
 00537C49    test        byte ptr [eax+10],1
 00537C4D    setne       al
 00537C50    push        eax
 00537C51    mov         eax,dword ptr [ebp-10]
 00537C54    mov         edx,dword ptr [eax+8]
 00537C57    mov         eax,dword ptr [ebp-4]
 00537C5A    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 00537C60    call        THeaderSections.GetItem
 00537C65    mov         edx,eax
 00537C67    mov         eax,dword ptr [ebp-10]
 00537C6A    lea         ecx,[eax+1C]
 00537C6D    mov         eax,dword ptr [ebp-4]
 00537C70    mov         si,0FFAD
 00537C74    call        @CallDynaInst;TCustomHeaderControl.sub_005377E8
 00537C79    xor         eax,eax
 00537C7B    pop         edx
 00537C7C    pop         ecx
 00537C7D    pop         ecx
 00537C7E    mov         dword ptr fs:[eax],edx
 00537C81    push        537CBC
 00537C86    mov         eax,dword ptr [ebp-4]
 00537C89    mov         eax,dword ptr [eax+29C];TCustomHeaderControl.FCanvas:TCanvas
 00537C8F    xor         edx,edx
 00537C91    call        TCanvas.SetHandle
 00537C96    mov         eax,dword ptr [ebp-4]
 00537C99    mov         eax,dword ptr [eax+29C];TCustomHeaderControl.FCanvas:TCanvas
 00537C9F    call        TCustomCanvas.Unlock
 00537CA4    mov         eax,dword ptr [ebp-0C]
 00537CA7    push        eax
 00537CA8    mov         eax,dword ptr [ebp-10]
 00537CAB    mov         eax,dword ptr [eax+18]
 00537CAE    push        eax
 00537CAF    call        gdi32.RestoreDC
 00537CB4    ret
>00537CB5    jmp         @HandleFinally
>00537CBA    jmp         00537C86
 00537CBC    mov         eax,dword ptr [ebp-8]
 00537CBF    mov         dword ptr [eax+0C],1
 00537CC6    pop         esi
 00537CC7    mov         esp,ebp
 00537CC9    pop         ebp
 00537CCA    ret
end;*}

//00537CCC
{*procedure TCustomHeaderControl.sub_00537CCC(?:?);
begin
 00537CCC    push        ebp
 00537CCD    mov         ebp,esp
 00537CCF    add         esp,0FFFFFFAC
 00537CD2    push        ebx
 00537CD3    push        esi
 00537CD4    push        edi
 00537CD5    mov         esi,edx
 00537CD7    mov         dword ptr [ebp-4],eax
 00537CDA    mov         eax,dword ptr [esi+8]
 00537CDD    mov         ebx,eax
 00537CDF    mov         eax,dword ptr [ebx+8]
 00537CE2    cmp         eax,0FFFFFEC9
>00537CE7    jg          00537D0F
>00537CE9    je          00537EA2
 00537CEF    add         eax,148
 00537CF4    sub         eax,3
>00537CF7    jb          00537DB4
 00537CFD    sub         eax,3
>00537D00    je          00537D35
 00537D02    dec         eax
>00537D03    je          00537D79
 00537D05    sub         eax,5
>00537D08    je          00537D59
>00537D0A    jmp         00538019
 00537D0F    add         eax,134
 00537D14    sub         eax,3
>00537D17    jb          00537DB4
 00537D1D    sub         eax,3
>00537D20    je          00537D35
 00537D22    dec         eax
>00537D23    je          00537D79
 00537D25    sub         eax,11D
>00537D2A    je          00538005
>00537D30    jmp         00538019
 00537D35    mov         edx,dword ptr [ebx+0C]
 00537D38    mov         eax,dword ptr [ebp-4]
 00537D3B    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 00537D41    call        THeaderSections.GetItem
 00537D46    mov         edx,eax
 00537D48    mov         eax,dword ptr [ebp-4]
 00537D4B    mov         si,0FFAC
 00537D4F    call        @CallDynaInst;TCustomHeaderControl.sub_00537824
>00537D54    jmp         00538019
 00537D59    mov         edx,dword ptr [ebx+0C]
 00537D5C    mov         eax,dword ptr [ebp-4]
 00537D5F    call        00538328
 00537D64    mov         esi,eax
 00537D66    movzx       edx,byte ptr [esi+27]
 00537D6A    xor         dl,1
 00537D6D    mov         eax,esi
 00537D6F    call        THeaderSection.SetChecked
>00537D74    jmp         00538019
 00537D79    mov         edi,dword ptr [ebx+14]
 00537D7C    test        byte ptr [edi],1
>00537D7F    je          00538019
 00537D85    mov         edx,dword ptr [ebx+0C]
 00537D88    mov         eax,dword ptr [ebp-4]
 00537D8B    call        00538328
 00537D90    mov         esi,eax
 00537D92    mov         eax,dword ptr [edi+4]
 00537D95    cmp         eax,dword ptr [esi+10]
>00537D98    je          00538019
 00537D9E    mov         dword ptr [esi+10],eax
 00537DA1    mov         edx,esi
 00537DA3    mov         eax,dword ptr [ebp-4]
 00537DA6    mov         si,0FFA8
 00537DAA    call        @CallDynaInst;TCustomHeaderControl.sub_00537864
>00537DAF    jmp         00538019
 00537DB4    mov         edx,dword ptr [ebx+0C]
 00537DB7    mov         eax,dword ptr [ebp-4]
 00537DBA    call        00538328
 00537DBF    mov         esi,eax
 00537DC1    mov         eax,dword ptr [ebx+8]
 00537DC4    sub         eax,0FFFFFEB9
>00537DC9    je          00537DDC
 00537DCB    dec         eax
>00537DCC    je          00537DD6
 00537DCE    sub         eax,13
>00537DD1    je          00537DDC
 00537DD3    dec         eax
>00537DD4    jne         00537DE2
 00537DD6    mov         byte ptr [ebp-5],0
>00537DDA    jmp         00537DE6
 00537DDC    mov         byte ptr [ebp-5],2
>00537DE0    jmp         00537DE6
 00537DE2    mov         byte ptr [ebp-5],1
 00537DE6    xor         edx,edx
 00537DE8    push        ebp
 00537DE9    push        537E9B
 00537DEE    push        dword ptr fs:[edx]
 00537DF1    mov         dword ptr fs:[edx],esp
 00537DF4    cmp         byte ptr [ebp-5],2
>00537DF8    je          00537E4D
 00537DFA    mov         eax,dword ptr [ebp-4]
 00537DFD    mov         dword ptr [eax+2B8],esi;TCustomHeaderControl.FTrackSection:THeaderSection
 00537E03    mov         eax,dword ptr [esi+10]
 00537E06    mov         edx,dword ptr [ebp-4]
 00537E09    mov         dword ptr [edx+2BC],eax;TCustomHeaderControl.FTrackWidth:Integer
 00537E0F    call        user32.GetMessagePos
 00537E14    call        SmallPoint
 00537E19    lea         edx,[ebp-54]
 00537E1C    call        TPoint.&op_Implicit
 00537E21    mov         eax,dword ptr [ebp-4]
 00537E24    mov         edx,dword ptr [ebp-54]
 00537E27    mov         dword ptr [eax+2C0],edx;TCustomHeaderControl.FTrackPos:TPoint
 00537E2D    mov         edx,dword ptr [ebp-50]
 00537E30    mov         dword ptr [eax+2C4],edx
 00537E36    mov         eax,dword ptr [ebp-4]
 00537E39    add         eax,2C0;TCustomHeaderControl.FTrackPos:TPoint
 00537E3E    push        eax
 00537E3F    mov         eax,dword ptr [ebp-4]
 00537E42    call        TWinControl.GetHandle
 00537E47    push        eax
 00537E48    call        user32.ScreenToClient
 00537E4D    mov         edi,dword ptr [ebx+14]
 00537E50    mov         eax,dword ptr [esi+14]
 00537E53    cmp         eax,dword ptr [edi+4]
>00537E56    jle         00537E5B
 00537E58    mov         dword ptr [edi+4],eax
 00537E5B    mov         eax,dword ptr [esi+18]
 00537E5E    cmp         eax,dword ptr [edi+4]
>00537E61    jge         00537E66
 00537E63    mov         dword ptr [edi+4],eax
 00537E66    movzx       eax,byte ptr [ebp-5]
 00537E6A    push        eax
 00537E6B    mov         ecx,dword ptr [edi+4]
 00537E6E    mov         edx,esi
 00537E70    mov         eax,dword ptr [ebp-4]
 00537E73    mov         si,0FFA7
 00537E77    call        @CallDynaInst;TCustomHeaderControl.sub_00537884
 00537E7C    xor         eax,eax
 00537E7E    pop         edx
 00537E7F    pop         ecx
 00537E80    pop         ecx
 00537E81    mov         dword ptr fs:[eax],edx
 00537E84    push        538019
 00537E89    cmp         byte ptr [ebp-5],2
>00537E8D    jne         00537E9A
 00537E8F    mov         eax,dword ptr [ebp-4]
 00537E92    xor         edx,edx
 00537E94    mov         dword ptr [eax+2B8],edx;TCustomHeaderControl.FTrackSection:THeaderSection
 00537E9A    ret
>00537E9B    jmp         @HandleFinally
>00537EA0    jmp         00537E89
 00537EA2    call        user32.GetMessagePos
 00537EA7    call        SmallPoint
 00537EAC    lea         edx,[ebp-54]
 00537EAF    call        TPoint.&op_Implicit
 00537EB4    mov         eax,dword ptr [ebp-54]
 00537EB7    mov         dword ptr [ebp-4C],eax
 00537EBA    mov         eax,dword ptr [ebp-50]
 00537EBD    mov         dword ptr [ebp-48],eax
 00537EC0    lea         eax,[ebp-4C]
 00537EC3    push        eax
 00537EC4    mov         eax,dword ptr [ebp-4]
 00537EC7    call        TWinControl.GetHandle
 00537ECC    push        eax
 00537ECD    call        user32.ScreenToClient
 00537ED2    mov         eax,dword ptr [ebp-4]
 00537ED5    call        TControl.GetClientHeight
 00537EDA    sar         eax,1
>00537EDC    jns         00537EE1
 00537EDE    adc         eax,0
 00537EE1    mov         dword ptr [ebp-48],eax
 00537EE4    lea         eax,[ebp-4C]
 00537EE7    push        eax
 00537EE8    mov         eax,dword ptr [ebp-4]
 00537EEB    call        TWinControl.GetHandle
 00537EF0    xor         ecx,ecx
 00537EF2    mov         edx,1206
 00537EF7    call        SendStructMessage
 00537EFC    mov         dword ptr [ebp-3C],80
 00537F03    cmp         dword ptr [ebp-40],0
>00537F07    jge         00537F43
 00537F09    test        byte ptr [ebp-43],8
>00537F0D    je          00537F1C
 00537F0F    mov         eax,dword ptr [ebp-4]
 00537F12    xor         edx,edx
 00537F14    mov         dword ptr [eax+2A4],edx;TCustomHeaderControl.FToIndex:Integer
>00537F1A    jmp         00537F72
 00537F1C    mov         eax,dword ptr [ebp-44]
 00537F1F    test        ah,4
>00537F22    jne         00537F28
 00537F24    test        al,1
>00537F26    je          00537F72
 00537F28    mov         eax,dword ptr [ebp-4]
 00537F2B    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 00537F31    mov         eax,dword ptr [eax+8];THeaderSections.FItems:TList<System.Classes.TCollectionItem>
 00537F34    mov         eax,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00537F37    dec         eax
 00537F38    mov         edx,dword ptr [ebp-4]
 00537F3B    mov         dword ptr [edx+2A4],eax;TCustomHeaderControl.FToIndex:Integer
>00537F41    jmp         00537F72
 00537F43    mov         eax,dword ptr [ebp-4]
 00537F46    call        TWinControl.GetHandle
 00537F4B    mov         edi,eax
 00537F4D    mov         eax,dword ptr [ebp-40]
 00537F50    mov         dword ptr [ebp-0C],eax
 00537F53    lea         eax,[ebp-3C]
 00537F56    push        eax
 00537F57    mov         eax,dword ptr [ebp-0C]
 00537F5A    push        eax
 00537F5B    push        120B
 00537F60    push        edi
 00537F61    call        user32.SendMessageW
 00537F66    mov         eax,dword ptr [ebp-4]
 00537F69    mov         edx,dword ptr [ebp-1C]
 00537F6C    mov         dword ptr [eax+2A4],edx;TCustomHeaderControl.FToIndex:Integer
 00537F72    mov         eax,dword ptr [ebp-4]
 00537F75    call        TWinControl.GetHandle
 00537F7A    mov         edi,eax
 00537F7C    mov         ebx,dword ptr [ebx+0C]
 00537F7F    lea         eax,[ebp-3C]
 00537F82    push        eax
 00537F83    push        ebx
 00537F84    push        120B
 00537F89    push        edi
 00537F8A    call        user32.SendMessageW
 00537F8F    mov         eax,dword ptr [ebp-4]
 00537F92    mov         edi,dword ptr [ebp-1C]
 00537F95    mov         dword ptr [eax+2A0],edi;TCustomHeaderControl.FFromIndex:Integer
 00537F9B    mov         eax,dword ptr [ebp-4]
 00537F9E    mov         edx,dword ptr [eax+2A4];TCustomHeaderControl.FToIndex:Integer
 00537FA4    mov         eax,dword ptr [ebp-4]
 00537FA7    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 00537FAD    call        THeaderSections.GetItem
 00537FB2    push        eax
 00537FB3    mov         edx,edi
 00537FB5    mov         eax,dword ptr [ebp-4]
 00537FB8    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 00537FBE    call        THeaderSections.GetItem
 00537FC3    mov         edx,eax
 00537FC5    mov         eax,dword ptr [ebp-4]
 00537FC8    pop         ecx
 00537FC9    call        005383F8
 00537FCE    mov         ebx,eax
 00537FD0    mov         eax,dword ptr [ebp-4]
 00537FD3    mov         byte ptr [eax+299],bl;TCustomHeaderControl.FSectionDragged:Boolean
 00537FD9    xor         bl,1
 00537FDC    movzx       eax,bl
 00537FDF    mov         dword ptr [esi+0C],eax
 00537FE2    mov         eax,dword ptr [ebp-4]
 00537FE5    call        TWinControl.GetHandle
 00537FEA    mov         ebx,eax
 00537FEC    call        user32.GetCapture
 00537FF1    cmp         ebx,eax
>00537FF3    je          00538019
 00537FF5    mov         eax,dword ptr [ebp-4]
 00537FF8    call        TWinControl.GetHandle
 00537FFD    push        eax
 00537FFE    call        user32.SetCapture
>00538003    jmp         00538019
 00538005    mov         eax,dword ptr [ebp-4]
 00538008    cmp         byte ptr [eax+299],0;TCustomHeaderControl.FSectionDragged:Boolean
>0053800F    je          00538019
 00538011    mov         eax,dword ptr [ebp-4]
 00538014    call        005386B4
 00538019    pop         edi
 0053801A    pop         esi
 0053801B    pop         ebx
 0053801C    mov         esp,ebp
 0053801E    pop         ebp
 0053801F    ret
end;*}

//00538020
{*function sub_00538020(?:?):?;
begin
 00538020    push        ebp
 00538021    mov         ebp,esp
 00538023    push        ecx
 00538024    mov         eax,dword ptr [ebp+8]
 00538027    mov         eax,dword ptr [eax-4]
 0053802A    cmp         byte ptr [eax+2A8],0
>00538031    je          0053804C
 00538033    push        0
 00538035    lea         eax,[ebp-4]
 00538038    push        eax
 00538039    push        0
 0053803B    push        26
 0053803D    call        user32.SystemParametersInfoW
 00538042    test        eax,eax
>00538044    je          0053804C
 00538046    cmp         dword ptr [ebp-4],0
>0053804A    jne         00538051
 0053804C    xor         eax,eax
 0053804E    pop         ecx
 0053804F    pop         ebp
 00538050    ret
 00538051    mov         al,1
 00538053    pop         ecx
 00538054    pop         ebp
 00538055    ret
end;*}

//00538058
{*procedure sub_00538058(?:?);
begin
 00538058    push        ebp
 00538059    mov         ebp,esp
 0053805B    add         esp,0FFFFFFF4
 0053805E    push        esi
 0053805F    push        edi
 00538060    mov         dword ptr [ebp-8],edx
 00538063    mov         dword ptr [ebp-4],eax
 00538066    mov         eax,dword ptr [ebp-8]
 00538069    cmp         dword ptr [eax],200
>0053806F    jne         005380F7
 00538075    push        ebp
 00538076    call        00538020
 0053807B    pop         ecx
 0053807C    test        al,al
>0053807E    je          005380F7
 00538080    mov         eax,dword ptr [ebp-4]
 00538083    cmp         dword ptr [eax+2B8],0;TCustomHeaderControl.FTrackSection:THeaderSection
>0053808A    je          005380F7
 0053808C    mov         eax,dword ptr [ebp-4]
 0053808F    call        TControl.GetMouseCapture
 00538094    test        al,al
>00538096    je          005380F7
 00538098    mov         edi,dword ptr [ebp-8]
 0053809B    movsx       edi,word ptr [edi+8]
 0053809F    mov         eax,dword ptr [ebp-4]
 005380A2    sub         edi,dword ptr [eax+2C0]
 005380A8    mov         eax,dword ptr [ebp-4]
 005380AB    add         edi,dword ptr [eax+2BC];TCustomHeaderControl.FTrackWidth:Integer
 005380B1    mov         byte ptr [ebp-9],0
 005380B5    mov         eax,dword ptr [ebp-4]
 005380B8    mov         esi,dword ptr [eax+2B8];TCustomHeaderControl.FTrackSection:THeaderSection
 005380BE    mov         eax,dword ptr [esi+14];THeaderSection.FMinWidth:Integer
 005380C1    cmp         edi,eax
>005380C3    jge         005380CB
 005380C5    sub         edi,eax
 005380C7    mov         byte ptr [ebp-9],1
 005380CB    mov         eax,dword ptr [esi+18];THeaderSection.FMaxWidth:Integer
 005380CE    cmp         edi,eax
>005380D0    jle         005380D8
 005380D2    sub         edi,eax
 005380D4    mov         byte ptr [ebp-9],1
 005380D8    push        1
 005380DA    mov         edx,esi
 005380DC    mov         ecx,edi
 005380DE    mov         eax,dword ptr [ebp-4]
 005380E1    mov         si,0FFA7
 005380E5    call        @CallDynaInst;TCustomHeaderControl.sub_00537884
 005380EA    cmp         byte ptr [ebp-9],0
>005380EE    je          005380F7
 005380F0    mov         eax,dword ptr [ebp-8]
 005380F3    sub         word ptr [eax+8],di
 005380F7    mov         edx,dword ptr [ebp-8]
 005380FA    mov         eax,dword ptr [ebp-4]
 005380FD    call        004ECAFC
 00538102    pop         edi
 00538103    pop         esi
 00538104    mov         esp,ebp
 00538106    pop         ebp
 00538107    ret
end;*}

//00538108
{*procedure TCustomHeaderControl.WMLButtonDown(?:?);
begin
 00538108    push        ebx
 00538109    push        esi
 0053810A    push        edi
 0053810B    add         esp,0FFFFFFF0
 0053810E    mov         edi,edx
 00538110    mov         ebx,eax
 00538112    movsx       eax,word ptr [edi+8]
 00538116    mov         dword ptr [esp],eax
 00538119    movsx       eax,word ptr [edi+0A]
 0053811D    mov         dword ptr [esp+4],eax
 00538121    push        esp
 00538122    push        1
 00538124    mov         eax,ebx
 00538126    call        TWinControl.GetHandle
 0053812B    xor         ecx,ecx
 0053812D    mov         edx,1206
 00538132    call        SendGetStructMessage
 00538137    mov         esi,eax
 00538139    test        esi,esi
>0053813B    jl          00538157
 0053813D    test        byte ptr [esp+8],2
>00538142    je          00538157
 00538144    mov         edx,esi
 00538146    mov         eax,dword ptr [ebx+290];TCustomHeaderControl.FSections:THeaderSections
 0053814C    call        THeaderSections.GetItem
 00538151    cmp         byte ptr [eax+1E],0;THeaderSection.FAllowClick:Boolean
>00538155    je          00538160
 00538157    mov         edx,edi
 00538159    mov         eax,ebx
 0053815B    call        TControl.WMLButtonDown
 00538160    add         esp,10
 00538163    pop         edi
 00538164    pop         esi
 00538165    pop         ebx
 00538166    ret
end;*}

//00538168
{*procedure TCustomHeaderControl.WMSize(?:?);
begin
 00538168    push        ebp
 00538169    mov         ebp,esp
 0053816B    add         esp,0FFFFFFEC
 0053816E    push        ebx
 0053816F    push        esi
 00538170    push        edi
 00538171    mov         dword ptr [ebp-4],eax
 00538174    mov         eax,dword ptr [ebp-4]
 00538177    call        TWinControl.WMSize
 0053817C    mov         eax,dword ptr [ebp-4]
 0053817F    call        TWinControl.HandleAllocated
 00538184    test        al,al
>00538186    je          00538309
 0053818C    mov         eax,dword ptr [ebp-4]
 0053818F    test        byte ptr [eax+1C],2;TCustomHeaderControl.FComponentState:TComponentState
>00538193    jne         00538309
 00538199    mov         dl,1
 0053819B    mov         eax,[0046C204];TList
 005381A0    call        TObject.Create;TList.Create
 005381A5    mov         dword ptr [ebp-14],eax
 005381A8    xor         edx,edx
 005381AA    push        ebp
 005381AB    push        538302
 005381B0    push        dword ptr fs:[edx]
 005381B3    mov         dword ptr fs:[edx],esp
 005381B6    mov         eax,dword ptr [ebp-4]
 005381B9    call        TControl.GetClientWidth
 005381BE    mov         dword ptr [ebp-0C],eax
 005381C1    mov         eax,dword ptr [ebp-4]
 005381C4    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 005381CA    mov         eax,dword ptr [eax+8];THeaderSections.FItems:TList<System.Classes.TCollectionItem>
 005381CD    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 005381D0    dec         edi
 005381D1    test        edi,edi
>005381D3    jl          00538206
 005381D5    inc         edi
 005381D6    xor         ebx,ebx
 005381D8    mov         eax,dword ptr [ebp-4]
 005381DB    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 005381E1    mov         edx,ebx
 005381E3    call        THeaderSections.GetItem
 005381E8    mov         esi,eax
 005381EA    cmp         byte ptr [esi+1F],0;THeaderSection.FAutoSize:Boolean
>005381EE    je          005381FC
 005381F0    mov         edx,esi
 005381F2    mov         eax,dword ptr [ebp-14]
 005381F5    call        TList.Add
>005381FA    jmp         00538202
 005381FC    mov         eax,dword ptr [esi+10];THeaderSection.FWidth:Integer
 005381FF    sub         dword ptr [ebp-0C],eax
 00538202    inc         ebx
 00538203    dec         edi
>00538204    jne         005381D8
 00538206    mov         eax,dword ptr [ebp-14]
 00538209    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0053820D    jle         005382EC
 00538213    mov         eax,dword ptr [ebp-4]
 00538216    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 0053821C    mov         edx,dword ptr [eax]
 0053821E    call        dword ptr [edx+20];TCollection.BeginUpdate
 00538221    xor         edx,edx
 00538223    push        ebp
 00538224    push        5382E5
 00538229    push        dword ptr fs:[edx]
 0053822C    mov         dword ptr fs:[edx],esp
 0053822F    mov         eax,dword ptr [ebp-14]
 00538232    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00538235    mov         dword ptr [ebp-8],eax
 00538238    mov         eax,dword ptr [ebp-0C]
 0053823B    cdq
 0053823C    idiv        eax,dword ptr [ebp-8]
 0053823F    mov         dword ptr [ebp-10],edx
 00538242    mov         eax,dword ptr [ebp-0C]
 00538245    cdq
 00538246    idiv        eax,dword ptr [ebp-8]
 00538249    mov         edi,eax
 0053824B    mov         ebx,dword ptr [ebp-8]
 0053824E    dec         ebx
 0053824F    cmp         ebx,0
>00538252    jl          00538276
 00538254    mov         edx,ebx
 00538256    mov         eax,dword ptr [ebp-14]
 00538259    call        TList.Get
 0053825E    mov         esi,eax
 00538260    test        ebx,ebx
>00538262    jne         00538267
 00538264    add         edi,dword ptr [ebp-10]
 00538267    mov         edx,edi
 00538269    mov         eax,esi
 0053826B    call        THeaderSection.SetWidth
 00538270    dec         ebx
 00538271    cmp         ebx,0FFFFFFFF
>00538274    jne         00538254
 00538276    mov         eax,dword ptr [ebp-0C]
 00538279    cdq
 0053827A    idiv        eax,dword ptr [ebp-8]
 0053827D    mov         edi,eax
 0053827F    mov         ebx,dword ptr [ebp-8]
 00538282    dec         ebx
 00538283    cmp         ebx,0
>00538286    jl          005382B6
 00538288    mov         edx,ebx
 0053828A    mov         eax,dword ptr [ebp-14]
 0053828D    call        TList.Get
 00538292    mov         esi,eax
 00538294    test        ebx,ebx
>00538296    jne         0053829B
 00538298    add         edi,dword ptr [ebp-10]
 0053829B    cmp         edi,dword ptr [esi+10]
>0053829E    je          005382B0
 005382A0    mov         edx,ebx
 005382A2    mov         eax,dword ptr [ebp-14]
 005382A5    call        TList.Delete
 005382AA    mov         eax,dword ptr [esi+10]
 005382AD    sub         dword ptr [ebp-0C],eax
 005382B0    dec         ebx
 005382B1    cmp         ebx,0FFFFFFFF
>005382B4    jne         00538288
 005382B6    mov         eax,dword ptr [ebp-14]
 005382B9    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005382BC    test        eax,eax
>005382BE    je          005382C9
 005382C0    cmp         eax,dword ptr [ebp-8]
>005382C3    jne         0053822F
 005382C9    xor         eax,eax
 005382CB    pop         edx
 005382CC    pop         ecx
 005382CD    pop         ecx
 005382CE    mov         dword ptr fs:[eax],edx
 005382D1    push        5382EC
 005382D6    mov         eax,dword ptr [ebp-4]
 005382D9    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 005382DF    mov         edx,dword ptr [eax]
 005382E1    call        dword ptr [edx+24];TCollection.EndUpdate
 005382E4    ret
>005382E5    jmp         @HandleFinally
>005382EA    jmp         005382D6
 005382EC    xor         eax,eax
 005382EE    pop         edx
 005382EF    pop         ecx
 005382F0    pop         ecx
 005382F1    mov         dword ptr fs:[eax],edx
 005382F4    push        538309
 005382F9    mov         eax,dword ptr [ebp-14]
 005382FC    call        TObject.Free
 00538301    ret
>00538302    jmp         @HandleFinally
>00538307    jmp         005382F9
 00538309    pop         edi
 0053830A    pop         esi
 0053830B    pop         ebx
 0053830C    mov         esp,ebp
 0053830E    pop         ebp
 0053830F    ret
end;*}

//00538310
{*procedure TCustomHeaderControl.WMWindowPosChangedMsg(?:?);
begin
 00538310    push        esi
 00538311    mov         esi,eax
 00538313    mov         eax,esi
 00538315    call        TWinControl.WMWindowPosChangedMsg
 0053831A    mov         eax,esi
 0053831C    mov         edx,dword ptr [eax]
 0053831E    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00538324    pop         esi
 00538325    ret
end;*}

//00538328
{*function sub_00538328(?:TCustomHeaderControl; ?:?):?;
begin
 00538328    push        ebp
 00538329    mov         ebp,esp
 0053832B    add         esp,0FFFFFFF4
 0053832E    push        ebx
 0053832F    push        esi
 00538330    push        edi
 00538331    xor         ecx,ecx
 00538333    mov         dword ptr [ebp-4],ecx
 00538336    mov         dword ptr [ebp-8],edx
 00538339    mov         edi,eax
 0053833B    xor         eax,eax
 0053833D    push        ebp
 0053833E    push        5383E7
 00538343    push        dword ptr fs:[eax]
 00538346    mov         dword ptr fs:[eax],esp
 00538349    mov         ebx,dword ptr [edi+290];TCustomHeaderControl.FSections:THeaderSections
 0053834F    mov         eax,dword ptr [ebx+8];THeaderSections.FItems:TList<System.Classes.TCollectionItem>
 00538352    mov         eax,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00538355    push        eax
 00538356    lea         eax,[ebp-4]
 00538359    mov         ecx,1
 0053835E    mov         edx,dword ptr ds:[40D424];TIntegerDynArray
 00538364    call        @DynArraySetLength
 00538369    add         esp,4
 0053836C    mov         eax,edi
 0053836E    call        TWinControl.GetHandle
 00538373    mov         ebx,eax
 00538375    mov         eax,dword ptr [edi+290];TCustomHeaderControl.FSections:THeaderSections
 0053837B    mov         eax,dword ptr [eax+8];THeaderSections.FItems:TList<System.Classes.TCollectionItem>
 0053837E    mov         esi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00538381    mov         eax,dword ptr [ebp-4]
 00538384    push        eax
 00538385    push        esi
 00538386    push        1211
 0053838B    push        ebx
 0053838C    call        user32.SendMessageW
 00538391    xor         eax,eax
 00538393    mov         dword ptr [ebp-0C],eax
 00538396    mov         eax,dword ptr [ebp-4]
 00538399    test        eax,eax
>0053839B    je          005383A2
 0053839D    sub         eax,4
 005383A0    mov         eax,dword ptr [eax]
 005383A2    mov         esi,eax
 005383A4    dec         esi
 005383A5    test        esi,esi
>005383A7    jl          005383CB
 005383A9    inc         esi
 005383AA    xor         ebx,ebx
 005383AC    mov         eax,dword ptr [ebp-4]
 005383AF    mov         eax,dword ptr [eax+ebx*4]
 005383B2    cmp         eax,dword ptr [ebp-8]
>005383B5    jne         005383C7
 005383B7    mov         eax,dword ptr [edi+290];TCustomHeaderControl.FSections:THeaderSections
 005383BD    mov         edx,ebx
 005383BF    call        THeaderSections.GetItem
 005383C4    mov         dword ptr [ebp-0C],eax
 005383C7    inc         ebx
 005383C8    dec         esi
>005383C9    jne         005383AC
 005383CB    xor         eax,eax
 005383CD    pop         edx
 005383CE    pop         ecx
 005383CF    pop         ecx
 005383D0    mov         dword ptr fs:[eax],edx
 005383D3    push        5383EE
 005383D8    lea         eax,[ebp-4]
 005383DB    mov         edx,dword ptr ds:[40D424];TIntegerDynArray
 005383E1    call        @DynArrayClear
 005383E6    ret
>005383E7    jmp         @HandleFinally
>005383EC    jmp         005383D8
 005383EE    mov         eax,dword ptr [ebp-0C]
 005383F1    pop         edi
 005383F2    pop         esi
 005383F3    pop         ebx
 005383F4    mov         esp,ebp
 005383F6    pop         ebp
 005383F7    ret
end;*}

//005383F8
{*function sub_005383F8(?:TCustomHeaderControl; ?:THeaderSection):?;
begin
 005383F8    push        esi
 005383F9    push        edi
 005383FA    push        ecx
 005383FB    mov         edi,edx
 005383FD    mov         esi,eax
 005383FF    mov         byte ptr [esp],1
 00538403    push        esp
 00538404    mov         edx,edi
 00538406    mov         eax,esi
 00538408    mov         si,0FFAA
 0053840C    call        @CallDynaInst;TCustomHeaderControl.sub_00538510
 00538411    movzx       eax,byte ptr [esp]
 00538415    pop         edx
 00538416    pop         edi
 00538417    pop         esi
 00538418    ret
end;*}

//0053841C
procedure TCustomHeaderControl.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0053841C    push        ebx
 0053841D    push        esi
 0053841E    push        edi
 0053841F    mov         ebx,ecx
 00538421    mov         edi,edx
 00538423    mov         esi,eax
 00538425    mov         ecx,ebx
 00538427    mov         edx,edi
 00538429    mov         eax,esi
 0053842B    call        TWinControl.Notification
 00538430    cmp         bl,1
>00538433    jne         00538449
 00538435    cmp         edi,dword ptr [esi+2B0];TCustomHeaderControl.FImages:TCustomImageList
>0053843B    jne         00538449
 0053843D    xor         edx,edx
 0053843F    mov         eax,esi
 00538441    mov         ecx,dword ptr [eax]
 00538443    call        dword ptr [ecx+110];TCustomHeaderControl.SetImages
 00538449    pop         edi
 0053844A    pop         esi
 0053844B    pop         ebx
 0053844C    ret
*}
end;

//00538450
procedure TCustomHeaderControl.SetImages(Value:TCustomImageList);
begin
{*
 00538450    push        ebx
 00538451    push        esi
 00538452    push        edi
 00538453    mov         esi,edx
 00538455    mov         ebx,eax
 00538457    mov         eax,dword ptr [ebx+2B0];TCustomHeaderControl.FImages:TCustomImageList
 0053845D    test        eax,eax
>0053845F    je          0053846C
 00538461    mov         edx,dword ptr [ebx+2AC];TCustomHeaderControl.FImageChangeLink:TChangeLink
 00538467    call        TCustomImageList.UnRegisterChanges
 0053846C    mov         eax,esi
 0053846E    mov         dword ptr [ebx+2B0],eax;TCustomHeaderControl.FImages:TCustomImageList
 00538474    test        eax,eax
>00538476    je          005384B6
 00538478    mov         edx,dword ptr [ebx+2AC];TCustomHeaderControl.FImageChangeLink:TChangeLink
 0053847E    call        TCustomImageList.RegisterChanges
 00538483    mov         edx,ebx
 00538485    mov         eax,dword ptr [ebx+2B0];TCustomHeaderControl.FImages:TCustomImageList
 0053848B    call        TComponent.FreeNotification
 00538490    mov         eax,ebx
 00538492    call        TWinControl.GetHandle
 00538497    mov         esi,eax
 00538499    mov         eax,dword ptr [ebx+2B0];TCustomHeaderControl.FImages:TCustomImageList
 0053849F    call        TCustomImageList.GetHandle
 005384A4    mov         edi,eax
 005384A6    push        edi
 005384A7    push        0
 005384A9    push        1208
 005384AE    push        esi
 005384AF    call        user32.SendMessageW
>005384B4    jmp         005384CE
 005384B6    mov         eax,ebx
 005384B8    call        TWinControl.GetHandle
 005384BD    mov         esi,eax
 005384BF    push        0
 005384C1    push        0
 005384C3    push        1208
 005384C8    push        esi
 005384C9    call        user32.SendMessageW
 005384CE    mov         eax,ebx
 005384D0    call        00537B38
 005384D5    pop         edi
 005384D6    pop         esi
 005384D7    pop         ebx
 005384D8    ret
*}
end;

//005384DC
{*procedure sub_005384DC(?:?; ?:?);
begin
 005384DC    push        ebx
 005384DD    push        esi
 005384DE    push        edi
 005384DF    mov         edi,edx
 005384E1    mov         ebx,eax
 005384E3    mov         eax,ebx
 005384E5    call        TWinControl.GetHandle
 005384EA    mov         esi,eax
 005384EC    mov         eax,edi
 005384EE    call        TCustomImageList.GetHandle
 005384F3    mov         edi,eax
 005384F5    push        edi
 005384F6    push        0
 005384F8    push        1208
 005384FD    push        esi
 005384FE    call        user32.SendMessageW
 00538503    mov         eax,ebx
 00538505    call        00537B38
 0053850A    pop         edi
 0053850B    pop         esi
 0053850C    pop         ebx
 0053850D    ret
end;*}

//00538510
{*procedure TCustomHeaderControl.sub_00538510(?:?; ?:?);
begin
 00538510    push        ebp
 00538511    mov         ebp,esp
 00538513    push        ebx
 00538514    cmp         word ptr [eax+2F2],0;TCustomHeaderControl.?f2F2:word
>0053851C    je          00538535
 0053851E    push        ecx
 0053851F    mov         ecx,dword ptr [ebp+8]
 00538522    push        ecx
 00538523    mov         ebx,eax
 00538525    mov         ecx,edx
 00538527    mov         edx,eax
 00538529    mov         eax,dword ptr [ebx+2F4];TCustomHeaderControl.?f2F4:dword
 0053852F    call        dword ptr [ebx+2F0];TCustomHeaderControl.FOnSectionDrag
 00538535    pop         ebx
 00538536    pop         ebp
 00538537    ret         4
end;*}

//00538580
{*procedure sub_00538580(?:THeaderSection; ?:?; ?:?);
begin
 00538580    push        ebp
 00538581    mov         ebp,esp
 00538583    push        0
 00538585    push        ebx
 00538586    push        esi
 00538587    mov         esi,edx
 00538589    mov         ebx,eax
 0053858B    xor         eax,eax
 0053858D    push        ebp
 0053858E    push        5386A8
 00538593    push        dword ptr fs:[eax]
 00538596    mov         dword ptr fs:[eax],esp
 00538599    mov         eax,dword ptr [ebp+8]
 0053859C    mov         eax,dword ptr [eax-4]
 0053859F    mov         byte ptr [eax+298],1
 005385A6    xor         edx,edx
 005385A8    push        ebp
 005385A9    push        538685
 005385AE    push        dword ptr fs:[edx]
 005385B1    mov         dword ptr fs:[edx],esp
 005385B4    mov         edx,dword ptr [ebx+8]
 005385B7    mov         eax,dword ptr [ebp+8]
 005385BA    mov         eax,dword ptr [eax-4]
 005385BD    mov         eax,dword ptr [eax+290]
 005385C3    call        TCollection.FindItemID
 005385C8    push        eax
 005385C9    mov         eax,esi
 005385CB    call        TCollectionItem.GetIndex
 005385D0    mov         edx,eax
 005385D2    pop         eax
 005385D3    mov         ecx,dword ptr [eax]
 005385D5    call        dword ptr [ecx+14]
 005385D8    mov         eax,dword ptr [ebp+8]
 005385DB    mov         eax,dword ptr [eax-4]
 005385DE    mov         ebx,dword ptr [eax+290]
 005385E4    mov         eax,dword ptr [ebx+8]
 005385E7    mov         eax,dword ptr [eax+8]
 005385EA    push        eax
 005385EB    lea         eax,[ebp-4]
 005385EE    mov         ecx,1
 005385F3    mov         edx,dword ptr ds:[53853C];:TCustomHeaderControl.:1
 005385F9    call        @DynArraySetLength
 005385FE    add         esp,4
 00538601    mov         eax,dword ptr [ebp+8]
 00538604    mov         eax,dword ptr [eax-4]
 00538607    mov         eax,dword ptr [eax+290]
 0053860D    mov         eax,dword ptr [eax+8]
 00538610    mov         esi,dword ptr [eax+8]
 00538613    dec         esi
 00538614    test        esi,esi
>00538616    jl          0053863B
 00538618    inc         esi
 00538619    xor         ebx,ebx
 0053861B    mov         eax,dword ptr [ebp+8]
 0053861E    mov         eax,dword ptr [eax-4]
 00538621    mov         eax,dword ptr [eax+290]
 00538627    mov         edx,ebx
 00538629    call        THeaderSections.GetItem
 0053862E    mov         eax,dword ptr [eax+8];THeaderSection.FID:Integer
 00538631    mov         edx,dword ptr [ebp-4]
 00538634    mov         dword ptr [edx+ebx*4],eax
 00538637    inc         ebx
 00538638    dec         esi
>00538639    jne         0053861B
 0053863B    mov         eax,dword ptr [ebp+8]
 0053863E    mov         eax,dword ptr [eax-4]
 00538641    call        TWinControl.GetHandle
 00538646    mov         ebx,eax
 00538648    mov         eax,dword ptr [ebp+8]
 0053864B    mov         eax,dword ptr [eax-4]
 0053864E    mov         eax,dword ptr [eax+290]
 00538654    mov         eax,dword ptr [eax+8]
 00538657    mov         esi,dword ptr [eax+8]
 0053865A    mov         eax,dword ptr [ebp-4]
 0053865D    push        eax
 0053865E    push        esi
 0053865F    push        1212
 00538664    push        ebx
 00538665    call        user32.SendMessageW
 0053866A    xor         eax,eax
 0053866C    pop         edx
 0053866D    pop         ecx
 0053866E    pop         ecx
 0053866F    mov         dword ptr fs:[eax],edx
 00538672    push        53868C
 00538677    mov         eax,dword ptr [ebp+8]
 0053867A    mov         eax,dword ptr [eax-4]
 0053867D    mov         byte ptr [eax+298],0
 00538684    ret
>00538685    jmp         @HandleFinally
>0053868A    jmp         00538677
 0053868C    xor         eax,eax
 0053868E    pop         edx
 0053868F    pop         ecx
 00538690    pop         ecx
 00538691    mov         dword ptr fs:[eax],edx
 00538694    push        5386AF
 00538699    lea         eax,[ebp-4]
 0053869C    mov         edx,dword ptr ds:[53853C];:TCustomHeaderControl.:1
 005386A2    call        @DynArrayClear
 005386A7    ret
>005386A8    jmp         @HandleFinally
>005386AD    jmp         00538699
 005386AF    pop         esi
 005386B0    pop         ebx
 005386B1    pop         ecx
 005386B2    pop         ebp
 005386B3    ret
end;*}

//005386B4
procedure sub_005386B4(?:TCustomHeaderControl);
begin
{*
 005386B4    push        ebp
 005386B5    mov         ebp,esp
 005386B7    push        ecx
 005386B8    push        esi
 005386B9    mov         dword ptr [ebp-4],eax
 005386BC    mov         eax,dword ptr [ebp-4]
 005386BF    mov         byte ptr [eax+299],0;TCustomHeaderControl.FSectionDragged:Boolean
 005386C6    push        ebp
 005386C7    mov         eax,dword ptr [ebp-4]
 005386CA    mov         edx,dword ptr [eax+2A4];TCustomHeaderControl.FToIndex:Integer
 005386D0    mov         eax,dword ptr [ebp-4]
 005386D3    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 005386D9    call        THeaderSections.GetItem
 005386DE    push        eax
 005386DF    mov         eax,dword ptr [ebp-4]
 005386E2    mov         edx,dword ptr [eax+2A0];TCustomHeaderControl.FFromIndex:Integer
 005386E8    mov         eax,dword ptr [ebp-4]
 005386EB    mov         eax,dword ptr [eax+290];TCustomHeaderControl.FSections:THeaderSections
 005386F1    call        THeaderSections.GetItem
 005386F6    pop         edx
 005386F7    call        00538580
 005386FC    pop         ecx
 005386FD    mov         eax,dword ptr [ebp-4]
 00538700    mov         si,0FFA9
 00538704    call        @CallDynaInst;TCustomHeaderControl.sub_00538710
 00538709    pop         esi
 0053870A    pop         ecx
 0053870B    pop         ebp
 0053870C    ret
*}
end;

//00538710
procedure TCustomHeaderControl.sub_00538710;
begin
{*
 00538710    push        ebx
 00538711    cmp         word ptr [eax+2FA],0;TCustomHeaderControl.?f2FA:word
>00538719    je          0053872B
 0053871B    mov         ebx,eax
 0053871D    mov         edx,eax
 0053871F    mov         eax,dword ptr [ebx+2FC];TCustomHeaderControl.?f2FC:dword
 00538725    call        dword ptr [ebx+2F8];TCustomHeaderControl.FOnSectionEndDrag
 0053872B    pop         ebx
 0053872C    ret
*}
end;

//00538730
procedure sub_00538730;
begin
{*
 00538730    push        ebx
 00538731    push        ecx
 00538732    mov         ebx,eax
 00538734    mov         eax,[00521DB8];THeaderSection
 00538739    mov         dword ptr [esp],eax
 0053873C    cmp         word ptr [ebx+302],0;TCustomHeaderControl.FOverflow:Boolean
>00538744    je          00538756
 00538746    mov         ecx,esp
 00538748    mov         edx,ebx
 0053874A    mov         eax,dword ptr [ebx+304];TCustomHeaderControl.?f304:dword
 00538750    call        dword ptr [ebx+300];TCustomHeaderControl.FOnCreateSectionClass
 00538756    mov         ecx,dword ptr [ebx+290];TCustomHeaderControl.FSections:THeaderSections
 0053875C    mov         dl,1
 0053875E    mov         eax,dword ptr [esp]
 00538761    call        dword ptr [eax+1C]
 00538764    pop         edx
 00538765    pop         ebx
 00538766    ret
*}
end;

//00538768
procedure sub_00538768;
begin
{*
 00538768    mov         ecx,eax
 0053876A    mov         dl,1
 0053876C    mov         eax,[00522394];THeaderSections
 00538771    call        THeaderSections.Create;THeaderSections.Create
 00538776    ret
*}
end;

//00538778
{*function sub_00538778(?:?; ?:?; ?:?):?;
begin
 00538778    push        ebp
 00538779    mov         ebp,esp
 0053877B    push        ecx
 0053877C    push        ebx
 0053877D    push        esi
 0053877E    mov         esi,dword ptr [ebp+0C]
 00538781    mov         ebx,dword ptr [ebp+8]
 00538784    mov         eax,ebx
 00538786    call        00538964
 0053878B    cmp         word ptr [eax+362],0
>00538793    je          005387C0
 00538795    push        esi
 00538796    mov         eax,dword ptr [ebp+10]
 00538799    push        eax
 0053879A    lea         eax,[ebp-4]
 0053879D    push        eax
 0053879E    mov         eax,ebx
 005387A0    call        00538964
 005387A5    mov         esi,eax
 005387A7    mov         eax,ebx
 005387A9    call        00538964
 005387AE    mov         edx,eax
 005387B0    mov         ecx,ebx
 005387B2    mov         eax,dword ptr [esi+364]
 005387B8    call        dword ptr [esi+360]
>005387BE    jmp         005387DA
 005387C0    mov         eax,dword ptr [esi+8]
 005387C3    call        @UStrToPWChar
 005387C8    push        eax
 005387C9    mov         eax,dword ptr [ebx+8]
 005387CC    call        @UStrToPWChar
 005387D1    push        eax
 005387D2    call        kernel32.lstrcmpW
 005387D7    mov         dword ptr [ebp-4],eax
 005387DA    mov         eax,dword ptr [ebp-4]
 005387DD    pop         esi
 005387DE    pop         ebx
 005387DF    pop         ecx
 005387E0    pop         ebp
 005387E1    ret         0C
end;*}

//005387E4
{*procedure sub_005387E4(?:?);
begin
 005387E4    push        ebx
 005387E5    mov         ebx,eax
 005387E7    mov         ecx,ebx
 005387E9    mov         dl,1
 005387EB    mov         eax,[005259F8];ETreeViewError
 005387F0    call        Exception.Create;ETreeViewError.Create
 005387F5    call        @RaiseExcept
 005387FA    pop         ebx
 005387FB    ret
end;*}

//005387FC
constructor sub_005387FC(AOwner:TTreeNodes);
begin
{*
 005387FC    push        ebx
 005387FD    push        esi
 005387FE    push        edi
 005387FF    test        dl,dl
>00538801    je          0053880B
 00538803    add         esp,0FFFFFFF0
 00538806    call        @ClassCreate
 0053880B    mov         esi,ecx
 0053880D    mov         ebx,edx
 0053880F    mov         edi,eax
 00538811    xor         edx,edx
 00538813    mov         eax,edi
 00538815    call        TObject.Create
 0053881A    mov         dword ptr [edi+1C],0FFFFFFFF;TTreeNode.FOverlayIndex:Integer
 00538821    mov         dword ptr [edi+20],0FFFFFFFF;TTreeNode.FStateIndex:Integer
 00538828    mov         dword ptr [edi+4],esi;TTreeNode.FOwner:TTreeNodes
 0053882B    mov         byte ptr [edi+26],1;TTreeNode.FEnabled:Boolean
 0053882F    mov         eax,edi
 00538831    test        bl,bl
>00538833    je          00538844
 00538835    call        @AfterConstruction
 0053883A    pop         dword ptr fs:[0]
 00538841    add         esp,0C
 00538844    mov         eax,edi
 00538846    pop         edi
 00538847    pop         esi
 00538848    pop         ebx
 00538849    ret
*}
end;

//0053884C
destructor TTreeNode.Destroy();
begin
{*
 0053884C    push        ebx
 0053884D    push        esi
 0053884E    push        edi
 0053884F    push        ebp
 00538850    call        @BeforeDestruction
 00538855    mov         ebx,edx
 00538857    mov         edi,eax
 00538859    mov         eax,dword ptr [edi+4];TTreeNode.FOwner:TTreeNodes
 0053885C    call        0053AB94
 00538861    mov         byte ptr [edi+24],1;TTreeNode.FDeleting:Boolean
 00538865    mov         eax,dword ptr [edi+4];TTreeNode.FOwner:TTreeNodes
 00538868    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 0053886B    test        eax,eax
>0053886D    je          0053887E
 0053886F    mov         eax,dword ptr [eax+304];TCustomTreeView.FSelections:TList
 00538875    mov         edx,edi
 00538877    xor         ecx,ecx
 00538879    call        TList.RemoveItem
 0053887E    mov         eax,dword ptr [edi+4];TTreeNode.FOwner:TTreeNodes
 00538881    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 00538884    cmp         edi,dword ptr [eax+2C4];TCustomTreeView.FLastDropTarget:TTreeNode
>0053888A    jne         00538894
 0053888C    xor         edx,edx
 0053888E    mov         dword ptr [eax+2C4],edx;TCustomTreeView.FLastDropTarget:TTreeNode
 00538894    mov         eax,edi
 00538896    call        005391E4
 0053889B    mov         esi,eax
 0053889D    test        esi,esi
>0053889F    je          005388DB
 005388A1    cmp         byte ptr [esi+24],0
>005388A5    jne         005388DB
 005388A7    mov         edx,edi
 005388A9    mov         eax,esi
 005388AB    call        TTreeNode.IndexOf
 005388B0    inc         eax
>005388B1    je          005388BA
 005388B3    mov         ebp,1
>005388B8    jmp         005388BC
 005388BA    xor         ebp,ebp
 005388BC    mov         edx,ebp
 005388BE    mov         eax,esi
 005388C0    call        00538DF4
 005388C5    test        al,al
>005388C7    je          005388DB
 005388C9    xor         edx,edx
 005388CB    mov         eax,edi
 005388CD    call        00538FE0
 005388D2    xor         edx,edx
 005388D4    mov         eax,esi
 005388D6    call        005391A8
 005388DB    mov         edx,dword ptr [edi+4];TTreeNode.FOwner:TTreeNodes
 005388DE    cmp         dword ptr [edx+4],0;TTreeNodes.FOwner:TCustomTreeView
>005388E2    je          0053890A
 005388E4    mov         eax,dword ptr [edi+4];TTreeNode.FOwner:TTreeNodes
 005388E7    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 005388EA    cmp         byte ptr [eax+31C],0;TCustomTreeView.FCreateWndRestores:Boolean
>005388F1    je          005388F9
 005388F3    test        byte ptr [eax+65],20;TCustomTreeView.FAlign:TAlign
>005388F7    jne         0053890A
 005388F9    mov         eax,dword ptr [edi+4];TTreeNode.FOwner:TTreeNodes
 005388FC    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 005388FF    mov         edx,edi
 00538901    mov         si,0FFA7
 00538905    call        @CallDynaInst;TCustomTreeView.sub_0053CB7C
 0053890A    cmp         dword ptr [edi+10],0;TTreeNode.FItemId:HTREEITEM
>0053890E    je          0053892A
 00538910    mov         eax,edi
 00538912    call        TTreeNode.GetHandle
 00538917    mov         esi,eax
 00538919    mov         ebp,dword ptr [edi+10];TTreeNode.FItemId:HTREEITEM
 0053891C    push        ebp
 0053891D    push        0
 0053891F    push        1101
 00538924    push        esi
 00538925    call        user32.SendMessageW
 0053892A    xor         edx,edx
 0053892C    mov         eax,edi
 0053892E    call        00538AA4
 00538933    mov         dl,0FC
 00538935    and         dl,bl
 00538937    mov         eax,edi
 00538939    call        TMemoryStream.Destroy
 0053893E    test        bl,bl
>00538940    jle         00538949
 00538942    mov         eax,edi
 00538944    call        @ClassDestroy
 00538949    pop         ebp
 0053894A    pop         edi
 0053894B    pop         esi
 0053894C    pop         ebx
 0053894D    ret
*}
end;

//00538950
function TTreeNode.GetHandle:HWND;
begin
{*
 00538950    push        ebx
 00538951    mov         ebx,eax
 00538953    mov         eax,ebx
 00538955    call        00538964
 0053895A    call        TWinControl.GetHandle
 0053895F    pop         ebx
 00538960    ret
*}
end;

//00538964
{*function sub_00538964(?:TTreeNode):?;
begin
 00538964    mov         eax,dword ptr [eax+4];TTreeNode.FOwner:TTreeNodes
 00538967    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 0053896A    ret
end;*}

//0053896C
function TTreeNode.HasAsParent(Value:TTreeNode):Boolean;
begin
{*
 0053896C    push        ebx
 0053896D    push        esi
 0053896E    mov         esi,edx
 00538970    mov         ebx,eax
 00538972    test        esi,esi
>00538974    je          005389A5
 00538976    mov         eax,ebx
 00538978    call        005391E4
 0053897D    test        eax,eax
>0053897F    jne         00538985
 00538981    xor         eax,eax
>00538983    jmp         005389A7
 00538985    mov         eax,ebx
 00538987    call        005391E4
 0053898C    cmp         esi,eax
>0053898E    jne         00538994
 00538990    mov         al,1
>00538992    jmp         005389A7
 00538994    mov         eax,ebx
 00538996    call        005391E4
 0053899B    mov         edx,esi
 0053899D    call        TTreeNode.HasAsParent
 005389A2    pop         esi
 005389A3    pop         ebx
 005389A4    ret
 005389A5    mov         al,1
 005389A7    pop         esi
 005389A8    pop         ebx
 005389A9    ret
*}
end;

//005389AC
{*procedure sub_005389AC(?:?; ?:?);
begin
 005389AC    push        ebx
 005389AD    add         esp,0FFFFFFC4
 005389B0    cmp         byte ptr [eax+24],0
>005389B4    jne         005389F9
 005389B6    cmp         dl,byte ptr [eax+26]
>005389B9    je          005389F9
 005389BB    mov         ecx,edx
 005389BD    mov         byte ptr [eax+26],cl
 005389C0    mov         dword ptr [esp],100
 005389C7    mov         edx,dword ptr [eax+10]
 005389CA    mov         dword ptr [esp+4],edx
 005389CE    test        cl,cl
>005389D0    jne         005389DC
 005389D2    mov         dword ptr [esp+2C],2
>005389DA    jmp         005389E2
 005389DC    xor         edx,edx
 005389DE    mov         dword ptr [esp+2C],edx
 005389E2    call        TTreeNode.GetHandle
 005389E7    mov         ebx,eax
 005389E9    mov         eax,esp
 005389EB    push        eax
 005389EC    push        0
 005389EE    push        113F
 005389F3    push        ebx
 005389F4    call        user32.SendMessageW
 005389F9    add         esp,3C
 005389FC    pop         ebx
 005389FD    ret
end;*}

//00538A00
{*function sub_00538A00(?:TTreeNode; ?:UnicodeString):?;
begin
 00538A00    push        ebx
 00538A01    push        esi
 00538A02    add         esp,0FFFFFFD8
 00538A05    mov         esi,edx
 00538A07    mov         ebx,eax
 00538A09    cmp         byte ptr [ebx+24],0
>00538A0D    jne         00538A9B
 00538A13    mov         eax,esi
 00538A15    mov         edx,dword ptr [ebx+8]
 00538A18    call        @UStrEqual
>00538A1D    je          00538A9B
 00538A1F    lea         eax,[ebx+8]
 00538A22    mov         edx,esi
 00538A24    call        @UStrAsg
 00538A29    mov         dword ptr [esp],1
 00538A30    mov         eax,dword ptr [ebx+10]
 00538A33    mov         dword ptr [esp+4],eax
 00538A37    mov         dword ptr [esp+10],0FFFFFFFF
 00538A3F    mov         eax,ebx
 00538A41    call        TTreeNode.GetHandle
 00538A46    mov         esi,eax
 00538A48    mov         eax,esp
 00538A4A    push        eax
 00538A4B    push        0
 00538A4D    push        113F
 00538A52    push        esi
 00538A53    call        user32.SendMessageW
 00538A58    mov         eax,ebx
 00538A5A    call        00538964
 00538A5F    movzx       eax,byte ptr [eax+2E7]
 00538A66    add         al,0FE
 00538A68    sub         al,2
>00538A6A    jae         00538A9B
 00538A6C    cmp         byte ptr [ebx+25],0
>00538A70    je          00538A9B
 00538A72    mov         eax,ebx
 00538A74    call        005391E4
 00538A79    test        eax,eax
>00538A7B    je          00538A8D
 00538A7D    mov         eax,ebx
 00538A7F    call        005391E4
 00538A84    xor         edx,edx
 00538A86    call        TTreeNode.AlphaSort
>00538A8B    jmp         00538A9B
 00538A8D    mov         eax,ebx
 00538A8F    call        00538964
 00538A94    xor         edx,edx
 00538A96    call        TCustomTreeView.AlphaSort
 00538A9B    add         esp,28
 00538A9E    pop         esi
 00538A9F    pop         ebx
 00538AA0    ret
end;*}

//00538AA4
procedure sub_00538AA4(?:TTreeNode; ?:Pointer);
begin
{*
 00538AA4    push        ebx
 00538AA5    mov         ebx,eax
 00538AA7    cmp         byte ptr [ebx+24],0;TTreeNode.FDeleting:Boolean
>00538AAB    jne         00538B11
 00538AAD    cmp         edx,dword ptr [ebx+0C];TTreeNode.FData:Pointer
>00538AB0    je          00538B11
 00538AB2    mov         dword ptr [ebx+0C],edx;TTreeNode.FData:Pointer
 00538AB5    mov         eax,ebx
 00538AB7    call        00538964
 00538ABC    movzx       eax,byte ptr [eax+2E7]
 00538AC3    sub         al,1
>00538AC5    je          00538ACB
 00538AC7    sub         al,2
>00538AC9    jne         00538B11
 00538ACB    mov         eax,ebx
 00538ACD    call        00538964
 00538AD2    cmp         word ptr [eax+362],0
>00538ADA    je          00538B11
 00538ADC    cmp         byte ptr [ebx+24],0;TTreeNode.FDeleting:Boolean
>00538AE0    jne         00538B11
 00538AE2    cmp         byte ptr [ebx+25],0;TTreeNode.FInTree:Boolean
>00538AE6    je          00538B11
 00538AE8    mov         eax,ebx
 00538AEA    call        005391E4
 00538AEF    test        eax,eax
>00538AF1    je          00538B03
 00538AF3    mov         eax,ebx
 00538AF5    call        005391E4
 00538AFA    xor         edx,edx
 00538AFC    call        TTreeNode.AlphaSort
>00538B01    jmp         00538B11
 00538B03    mov         eax,ebx
 00538B05    call        00538964
 00538B0A    xor         edx,edx
 00538B0C    call        TCustomTreeView.AlphaSort
 00538B11    pop         ebx
 00538B12    ret
*}
end;

//00538B14
{*procedure sub_00538B14(?:?; ?:?);
begin
 00538B14    push        ebx
 00538B15    push        esi
 00538B16    add         esp,0FFFFFFD4
 00538B19    mov         byte ptr [esp],dl
 00538B1C    xor         ebx,ebx
 00538B1E    cmp         byte ptr [eax+24],0
>00538B22    jne         00538BA8
 00538B28    mov         dword ptr [esp+4],8
 00538B30    mov         edx,dword ptr [eax+10]
 00538B33    mov         dword ptr [esp+8],edx
 00538B37    call        TTreeNode.GetHandle
 00538B3C    mov         esi,eax
 00538B3E    lea         eax,[esp+4]
 00538B42    push        eax
 00538B43    push        0
 00538B45    push        113E
 00538B4A    push        esi
 00538B4B    call        user32.SendMessageW
 00538B50    test        eax,eax
>00538B52    je          00538BA8
 00538B54    movzx       eax,byte ptr [esp]
 00538B58    cmp         eax,4
>00538B5B    ja          00538BA8
 00538B5D    jmp         dword ptr [eax*4+538B64]
 00538B5D    dd          00538B78
 00538B5D    dd          00538BA0
 00538B5D    dd          00538B82
 00538B5D    dd          00538B8C
 00538B5D    dd          00538B96
 00538B78    test        byte ptr [esp+0C],4
 00538B7D    setne       bl
>00538B80    jmp         00538BA8
 00538B82    test        byte ptr [esp+0C],1
 00538B87    setne       bl
>00538B8A    jmp         00538BA8
 00538B8C    test        byte ptr [esp+0C],2
 00538B91    setne       bl
>00538B94    jmp         00538BA8
 00538B96    test        byte ptr [esp+0C],20
 00538B9B    setne       bl
>00538B9E    jmp         00538BA8
 00538BA0    test        byte ptr [esp+0C],8
 00538BA5    setne       bl
 00538BA8    mov         eax,ebx
 00538BAA    add         esp,2C
 00538BAD    pop         esi
 00538BAE    pop         ebx
 00538BAF    ret
end;*}

//00538BB0
{*procedure sub_00538BB0(?:?; ?:?; ?:?);
begin
 00538BB0    push        ebx
 00538BB1    add         esp,0FFFFFFD8
 00538BB4    cmp         byte ptr [eax+24],0
>00538BB8    jne         00538C4D
 00538BBE    mov         dword ptr [esp],8
 00538BC5    mov         ebx,dword ptr [eax+10]
 00538BC8    mov         dword ptr [esp+4],ebx
 00538BCC    and         edx,7F
 00538BCF    cmp         edx,4
>00538BD2    ja          00538C1F
 00538BD4    jmp         dword ptr [edx*4+538BDB]
 00538BD4    dd          00538BEF
 00538BD4    dd          00538C17
 00538BD4    dd          00538BF9
 00538BD4    dd          00538C03
 00538BD4    dd          00538C0D
 00538BEF    mov         dword ptr [esp+0C],4
>00538BF7    jmp         00538C1F
 00538BF9    mov         dword ptr [esp+0C],1
>00538C01    jmp         00538C1F
 00538C03    mov         dword ptr [esp+0C],2
>00538C0B    jmp         00538C1F
 00538C0D    mov         dword ptr [esp+0C],20
>00538C15    jmp         00538C1F
 00538C17    mov         dword ptr [esp+0C],8
 00538C1F    test        cl,cl
>00538C21    je          00538C30
 00538C23    mov         edx,dword ptr [esp+0C]
 00538C27    and         edx,0FFFFFFFF
 00538C2A    mov         dword ptr [esp+8],edx
>00538C2E    jmp         00538C36
 00538C30    xor         edx,edx
 00538C32    mov         dword ptr [esp+8],edx
 00538C36    call        TTreeNode.GetHandle
 00538C3B    mov         ebx,eax
 00538C3D    mov         eax,esp
 00538C3F    push        eax
 00538C40    push        0
 00538C42    push        113F
 00538C47    push        ebx
 00538C48    call        user32.SendMessageW
 00538C4D    add         esp,28
 00538C50    pop         ebx
 00538C51    ret
end;*}

//00538C54
{*procedure sub_00538C54(?:TTreeNode; ?:?);
begin
 00538C54    push        ebx
 00538C55    add         esp,0FFFFFFD8
 00538C58    cmp         byte ptr [eax+24],0
>00538C5C    jne         00538CAB
 00538C5E    cmp         edx,dword ptr [eax+14]
>00538C61    je          00538CAB
 00538C63    mov         ecx,edx
 00538C65    mov         dword ptr [eax+14],ecx
 00538C68    mov         dword ptr [esp],12
 00538C6F    mov         edx,dword ptr [eax+10]
 00538C72    mov         dword ptr [esp+4],edx
 00538C76    mov         edx,dword ptr [eax+4]
 00538C79    mov         edx,dword ptr [edx+4]
 00538C7C    cmp         word ptr [edx+3AA],0
>00538C84    je          00538C90
 00538C86    mov         dword ptr [esp+18],0FFFFFFFF
>00538C8E    jmp         00538C94
 00538C90    mov         dword ptr [esp+18],ecx
 00538C94    call        TTreeNode.GetHandle
 00538C99    mov         ebx,eax
 00538C9B    mov         eax,esp
 00538C9D    push        eax
 00538C9E    push        0
 00538CA0    push        113F
 00538CA5    push        ebx
 00538CA6    call        user32.SendMessageW
 00538CAB    add         esp,28
 00538CAE    pop         ebx
 00538CAF    ret
end;*}

//00538CB0
{*procedure sub_00538CB0(?:?; ?:?);
begin
 00538CB0    push        ebx
 00538CB1    add         esp,0FFFFFFC4
 00538CB4    cmp         byte ptr [eax+24],0
>00538CB8    jne         00538CED
 00538CBA    cmp         edx,dword ptr [eax+28]
>00538CBD    je          00538CED
 00538CBF    mov         ecx,edx
 00538CC1    mov         dword ptr [eax+28],ecx
 00538CC4    mov         dword ptr [esp],210
 00538CCB    mov         edx,dword ptr [eax+10]
 00538CCE    mov         dword ptr [esp+4],edx
 00538CD2    mov         dword ptr [esp+34],ecx
 00538CD6    call        TTreeNode.GetHandle
 00538CDB    mov         ebx,eax
 00538CDD    mov         eax,esp
 00538CDF    push        eax
 00538CE0    push        0
 00538CE2    push        113F
 00538CE7    push        ebx
 00538CE8    call        user32.SendMessageW
 00538CED    add         esp,3C
 00538CF0    pop         ebx
 00538CF1    ret
end;*}

//00538CF4
{*procedure sub_00538CF4(?:TTreeNode; ?:?);
begin
 00538CF4    push        ebx
 00538CF5    add         esp,0FFFFFFD8
 00538CF8    cmp         byte ptr [eax+24],0
>00538CFC    jne         00538D4B
 00538CFE    cmp         edx,dword ptr [eax+18]
>00538D01    je          00538D4B
 00538D03    mov         ecx,edx
 00538D05    mov         dword ptr [eax+18],ecx
 00538D08    mov         dword ptr [esp],30
 00538D0F    mov         edx,dword ptr [eax+10]
 00538D12    mov         dword ptr [esp+4],edx
 00538D16    mov         edx,dword ptr [eax+4]
 00538D19    mov         edx,dword ptr [edx+4]
 00538D1C    cmp         word ptr [edx+3B2],0
>00538D24    je          00538D30
 00538D26    mov         dword ptr [esp+1C],0FFFFFFFF
>00538D2E    jmp         00538D34
 00538D30    mov         dword ptr [esp+1C],ecx
 00538D34    call        TTreeNode.GetHandle
 00538D39    mov         ebx,eax
 00538D3B    mov         eax,esp
 00538D3D    push        eax
 00538D3E    push        0
 00538D40    push        113F
 00538D45    push        ebx
 00538D46    call        user32.SendMessageW
 00538D4B    add         esp,28
 00538D4E    pop         ebx
 00538D4F    ret
end;*}

//00538D50
{*procedure sub_00538D50(?:TTreeNode; ?:?);
begin
 00538D50    push        ebx
 00538D51    add         esp,0FFFFFFD8
 00538D54    cmp         byte ptr [eax+24],0
>00538D58    jne         00538D9B
 00538D5A    cmp         edx,dword ptr [eax+1C]
>00538D5D    je          00538D9B
 00538D5F    mov         ecx,edx
 00538D61    mov         dword ptr [eax+1C],ecx
 00538D64    mov         dword ptr [esp],18
 00538D6B    mov         dword ptr [esp+0C],0F00
 00538D73    mov         edx,dword ptr [eax+10]
 00538D76    mov         dword ptr [esp+4],edx
 00538D7A    mov         edx,ecx
 00538D7C    inc         edx
 00538D7D    shl         edx,8
 00538D80    mov         dword ptr [esp+8],edx
 00538D84    call        TTreeNode.GetHandle
 00538D89    mov         ebx,eax
 00538D8B    mov         eax,esp
 00538D8D    push        eax
 00538D8E    push        0
 00538D90    push        113F
 00538D95    push        ebx
 00538D96    call        user32.SendMessageW
 00538D9B    add         esp,28
 00538D9E    pop         ebx
 00538D9F    ret
end;*}

//00538DA0
{*procedure sub_00538DA0(?:TTreeNode; ?:?);
begin
 00538DA0    push        ebx
 00538DA1    add         esp,0FFFFFFD8
 00538DA4    cmp         byte ptr [eax+24],0
>00538DA8    jne         00538DEC
 00538DAA    cmp         edx,dword ptr [eax+20]
>00538DAD    je          00538DEC
 00538DAF    mov         dword ptr [eax+20],edx
 00538DB2    test        edx,edx
>00538DB4    jl          00538DB7
 00538DB6    dec         edx
 00538DB7    mov         dword ptr [esp],18
 00538DBE    mov         dword ptr [esp+0C],0F000
 00538DC6    mov         ecx,dword ptr [eax+10]
 00538DC9    mov         dword ptr [esp+4],ecx
 00538DCD    inc         edx
 00538DCE    shl         edx,0C
 00538DD1    mov         dword ptr [esp+8],edx
 00538DD5    call        TTreeNode.GetHandle
 00538DDA    mov         ebx,eax
 00538DDC    mov         eax,esp
 00538DDE    push        eax
 00538DDF    push        0
 00538DE1    push        113F
 00538DE6    push        ebx
 00538DE7    call        user32.SendMessageW
 00538DEC    add         esp,28
 00538DEF    pop         ebx
 00538DF0    ret
end;*}

//00538DF4
{*function sub_00538DF4(?:?; ?:?):?;
begin
 00538DF4    push        ebx
 00538DF5    push        esi
 00538DF6    push        edi
 00538DF7    push        ebp
 00538DF8    mov         edi,edx
 00538DFA    xor         esi,esi
 00538DFC    xor         ebx,ebx
 00538DFE    call        TTreeNode.getFirstChild
 00538E03    mov         ebp,eax
 00538E05    test        ebp,ebp
>00538E07    je          00538E1D
 00538E09    inc         esi
 00538E0A    mov         edx,ebp
 00538E0C    mov         eax,ebp
 00538E0E    call        TTreeNode.GetNextChild
 00538E13    mov         ebp,eax
 00538E15    cmp         edi,esi
>00538E17    jl          00538E23
 00538E19    test        ebp,ebp
>00538E1B    jne         00538E09
 00538E1D    cmp         edi,esi
>00538E1F    jne         00538E23
 00538E21    mov         bl,1
 00538E23    mov         eax,ebx
 00538E25    pop         ebp
 00538E26    pop         edi
 00538E27    pop         esi
 00538E28    pop         ebx
 00538E29    ret
end;*}

//00538E2C
{*function sub_00538E2C(?:?; ?:?):?;
begin
 00538E2C    push        ebx
 00538E2D    push        esi
 00538E2E    push        ecx
 00538E2F    mov         byte ptr [esp],dl
 00538E32    mov         esi,eax
 00538E34    xor         ebx,ebx
 00538E36    cmp         byte ptr [esi+24],0
>00538E3A    jne         00538E77
 00538E3C    mov         eax,esi
 00538E3E    call        00539138
 00538E43    test        al,al
>00538E45    je          00538E77
 00538E47    cmp         byte ptr [esp],0
>00538E4B    je          00538E63
 00538E4D    mov         eax,esi
 00538E4F    call        00538964
 00538E54    mov         edx,esi
 00538E56    mov         si,0FFAA
 00538E5A    call        @CallDynaInst
 00538E5F    mov         ebx,eax
>00538E61    jmp         00538E77
 00538E63    mov         eax,esi
 00538E65    call        00538964
 00538E6A    mov         edx,esi
 00538E6C    mov         si,0FFAB
 00538E70    call        @CallDynaInst
 00538E75    mov         ebx,eax
 00538E77    mov         eax,ebx
 00538E79    pop         edx
 00538E7A    pop         esi
 00538E7B    pop         ebx
 00538E7C    ret
end;*}

//00538E80
{*procedure sub_00538E80(?:?; ?:?);
begin
 00538E80    push        ebx
 00538E81    push        esi
 00538E82    mov         ebx,edx
 00538E84    mov         esi,eax
 00538E86    cmp         byte ptr [esi+24],0
>00538E8A    jne         00538EC1
 00538E8C    mov         eax,esi
 00538E8E    call        00539138
 00538E93    test        al,al
>00538E95    je          00538EC1
 00538E97    test        bl,bl
>00538E99    je          00538EAF
 00538E9B    mov         eax,esi
 00538E9D    call        00538964
 00538EA2    mov         edx,esi
 00538EA4    mov         si,0FFA4
 00538EA8    call        @CallDynaInst
>00538EAD    jmp         00538EC1
 00538EAF    mov         eax,esi
 00538EB1    call        00538964
 00538EB6    mov         edx,esi
 00538EB8    mov         si,0FFA8
 00538EBC    call        @CallDynaInst
 00538EC1    pop         esi
 00538EC2    pop         ebx
 00538EC3    ret
end;*}

//00538EC4
{*procedure sub_00538EC4(?:TTreeNode; ?:?; ?:Boolean);
begin
 00538EC4    push        ebp
 00538EC5    mov         ebp,esp
 00538EC7    push        ecx
 00538EC8    push        ebx
 00538EC9    push        esi
 00538ECA    push        edi
 00538ECB    mov         ebx,edx
 00538ECD    mov         dword ptr [ebp-4],eax
 00538ED0    mov         eax,dword ptr [ebp-4]
 00538ED3    cmp         byte ptr [eax+24],0
>00538ED7    jne         00538FB7
 00538EDD    test        cl,cl
>00538EDF    je          00538F13
 00538EE1    mov         esi,dword ptr [ebp-4]
 00538EE4    xor         ecx,ecx
 00538EE6    mov         edx,ebx
 00538EE8    mov         eax,esi
 00538EEA    call        00538EC4
 00538EEF    mov         eax,esi
 00538EF1    call        TTreeNode.GetNext
 00538EF6    mov         esi,eax
 00538EF8    test        esi,esi
>00538EFA    je          00538FB7
 00538F00    mov         edx,dword ptr [ebp-4]
 00538F03    mov         eax,esi
 00538F05    call        TTreeNode.HasAsParent
 00538F0A    test        al,al
>00538F0C    jne         00538EE4
>00538F0E    jmp         00538FB7
 00538F13    mov         eax,dword ptr [ebp-4]
 00538F16    call        00538964
 00538F1B    mov         byte ptr [eax+2D1],1
 00538F22    xor         edx,edx
 00538F24    push        ebp
 00538F25    push        538FB0
 00538F2A    push        dword ptr fs:[edx]
 00538F2D    mov         dword ptr fs:[edx],esp
 00538F30    xor         esi,esi
 00538F32    test        bl,bl
>00538F34    je          00538F55
 00538F36    mov         dl,1
 00538F38    mov         eax,dword ptr [ebp-4]
 00538F3B    call        00538E2C
 00538F40    test        al,al
>00538F42    je          00538F72
 00538F44    mov         esi,2
 00538F49    mov         dl,1
 00538F4B    mov         eax,dword ptr [ebp-4]
 00538F4E    call        00538E80
>00538F53    jmp         00538F72
 00538F55    xor         edx,edx
 00538F57    mov         eax,dword ptr [ebp-4]
 00538F5A    call        00538E2C
 00538F5F    test        al,al
>00538F61    je          00538F72
 00538F63    mov         esi,1
 00538F68    xor         edx,edx
 00538F6A    mov         eax,dword ptr [ebp-4]
 00538F6D    call        00538E80
 00538F72    test        esi,esi
>00538F74    je          00538F93
 00538F76    mov         eax,dword ptr [ebp-4]
 00538F79    call        TTreeNode.GetHandle
 00538F7E    mov         ebx,eax
 00538F80    mov         eax,dword ptr [ebp-4]
 00538F83    mov         edi,dword ptr [eax+10]
 00538F86    push        edi
 00538F87    push        esi
 00538F88    push        1102
 00538F8D    push        ebx
 00538F8E    call        user32.SendMessageW
 00538F93    xor         eax,eax
 00538F95    pop         edx
 00538F96    pop         ecx
 00538F97    pop         ecx
 00538F98    mov         dword ptr fs:[eax],edx
 00538F9B    push        538FB7
 00538FA0    mov         eax,dword ptr [ebp-4]
 00538FA3    call        00538964
 00538FA8    mov         byte ptr [eax+2D1],0
 00538FAF    ret
>00538FB0    jmp         @HandleFinally
>00538FB5    jmp         00538FA0
 00538FB7    pop         edi
 00538FB8    pop         esi
 00538FB9    pop         ebx
 00538FBA    pop         ecx
 00538FBB    pop         ebp
 00538FBC    ret
end;*}

//00538FC0
procedure TTreeNode.Expand(Recurse:Boolean);
begin
{*
 00538FC0    mov         ecx,edx
 00538FC2    mov         dl,1
 00538FC4    call        00538EC4
 00538FC9    ret
*}
end;

//00538FCC
procedure TTreeNode.Collapse(Recurse:Boolean);
begin
{*
 00538FCC    mov         ecx,edx
 00538FCE    xor         edx,edx
 00538FD0    call        00538EC4
 00538FD5    ret
*}
end;

//00538FD8
{*function sub_00538FD8:?;
begin
 00538FD8    mov         dl,4
 00538FDA    call        00538B14
 00538FDF    ret
end;*}

//00538FE0
{*procedure sub_00538FE0(?:TTreeNode; ?:?);
begin
 00538FE0    push        ebx
 00538FE1    push        esi
 00538FE2    mov         ebx,edx
 00538FE4    mov         esi,eax
 00538FE6    mov         eax,esi
 00538FE8    call        00538FD8
 00538FED    cmp         bl,al
>00538FEF    je          00539009
 00538FF1    test        bl,bl
>00538FF3    je          00539000
 00538FF5    xor         edx,edx
 00538FF7    mov         eax,esi
 00538FF9    call        TTreeNode.Expand
>00538FFE    jmp         00539009
 00539000    xor         edx,edx
 00539002    mov         eax,esi
 00539004    call        TTreeNode.Collapse
 00539009    pop         esi
 0053900A    pop         ebx
 0053900B    ret
end;*}

//0053900C
{*function sub_0053900C:?;
begin
 0053900C    mov         dl,3
 0053900E    call        00538B14
 00539013    ret
end;*}

//00539014
{*procedure sub_00539014(?:TTreeNode; ?:?);
begin
 00539014    push        ebx
 00539015    push        esi
 00539016    mov         ebx,edx
 00539018    mov         esi,eax
 0053901A    cmp         byte ptr [esi+24],0
>0053901E    jne         005390AB
 00539024    mov         eax,esi
 00539026    call        TTreeNode.GetHandle
 0053902B    test        eax,eax
>0053902D    je          005390AB
 0053902F    cmp         dword ptr [esi+10],0
>00539033    je          005390AB
 00539035    mov         eax,esi
 00539037    call        0053900C
 0053903C    cmp         bl,al
>0053903E    je          00539070
 00539040    test        bl,bl
>00539042    je          00539055
 00539044    mov         eax,esi
 00539046    call        TTreeNode.GetHandle
 0053904B    mov         edx,dword ptr [esi+10]
 0053904E    call        004CFF20
>00539053    jmp         005390AB
 00539055    mov         eax,esi
 00539057    call        0053900C
 0053905C    test        al,al
>0053905E    je          005390AB
 00539060    mov         eax,esi
 00539062    call        TTreeNode.GetHandle
 00539067    xor         edx,edx
 00539069    call        004CFF20
>0053906E    jmp         005390AB
 00539070    mov         eax,esi
 00539072    call        00538964
 00539077    cmp         byte ptr [eax+300],0
>0053907E    je          005390AB
 00539080    mov         eax,esi
 00539082    call        00538964
 00539087    mov         eax,dword ptr [eax+304]
 0053908D    cmp         dword ptr [eax+8],1
>00539091    jle         005390AB
 00539093    mov         eax,esi
 00539095    call        00538964
 0053909A    movzx       ecx,word ptr ds:[5390B0];0x0 gvar_005390B0
 005390A1    mov         edx,esi
 005390A3    mov         ebx,dword ptr [eax]
 005390A5    call        dword ptr [ebx+124]
 005390AB    pop         esi
 005390AC    pop         ebx
 005390AD    ret
end;*}

//005390B4
{*procedure sub_005390B4(?:TTreeNode; ?:?);
begin
 005390B4    mov         ecx,edx
 005390B6    mov         dl,3
 005390B8    call        00538BB0
 005390BD    ret
end;*}

//005390C0
{*function sub_005390C0:?;
begin
 005390C0    xor         edx,edx
 005390C2    call        00538B14
 005390C7    ret
end;*}

//005390C8
{*procedure sub_005390C8(?:TTreeNode; ?:?);
begin
 005390C8    push        ebx
 005390C9    push        esi
 005390CA    mov         ebx,edx
 005390CC    mov         esi,eax
 005390CE    mov         eax,esi
 005390D0    call        005390C0
 005390D5    cmp         bl,al
>005390D7    je          005390E4
 005390D9    mov         ecx,ebx
 005390DB    xor         edx,edx
 005390DD    mov         eax,esi
 005390DF    call        00538BB0
 005390E4    pop         esi
 005390E5    pop         ebx
 005390E6    ret
end;*}

//005390E8
{*function sub_005390E8:?;
begin
 005390E8    mov         dl,1
 005390EA    call        00538B14
 005390EF    ret
end;*}

//005390F0
{*procedure sub_005390F0(?:TTreeNode; ?:?);
begin
 005390F0    push        ebx
 005390F1    push        esi
 005390F2    mov         ebx,edx
 005390F4    mov         esi,eax
 005390F6    mov         eax,esi
 005390F8    call        TTreeNode.GetHandle
 005390FD    test        eax,eax
>005390FF    je          00539135
 00539101    cmp         dword ptr [esi+10],0
>00539105    je          00539135
 00539107    test        bl,bl
>00539109    je          0053911C
 0053910B    mov         eax,esi
 0053910D    call        TTreeNode.GetHandle
 00539112    mov         edx,dword ptr [esi+10]
 00539115    call        004CFF38
>0053911A    jmp         00539135
 0053911C    mov         eax,esi
 0053911E    call        005390E8
 00539123    test        al,al
>00539125    je          00539135
 00539127    mov         eax,esi
 00539129    call        TTreeNode.GetHandle
 0053912E    xor         edx,edx
 00539130    call        004CFF38
 00539135    pop         esi
 00539136    pop         ebx
 00539137    ret
end;*}

//00539138
{*function sub_00539138(?:TPersistent):?;
begin
 00539138    push        ebx
 00539139    push        esi
 0053913A    add         esp,0FFFFFFD8
 0053913D    xor         ebx,ebx
 0053913F    cmp         byte ptr [eax+24],0
>00539143    jne         00539176
 00539145    mov         dword ptr [esp],40
 0053914C    mov         edx,dword ptr [eax+10]
 0053914F    mov         dword ptr [esp+4],edx
 00539153    call        TTreeNode.GetHandle
 00539158    mov         esi,eax
 0053915A    mov         eax,esp
 0053915C    push        eax
 0053915D    push        0
 0053915F    push        113E
 00539164    push        esi
 00539165    call        user32.SendMessageW
 0053916A    test        eax,eax
>0053916C    je          00539176
 0053916E    cmp         dword ptr [esp+20],0
 00539173    setg        bl
 00539176    mov         eax,ebx
 00539178    add         esp,28
 0053917B    pop         esi
 0053917C    pop         ebx
 0053917D    ret
end;*}

//00539180
{*procedure sub_00539180(?:TTreeNode; ?:?);
begin
 00539180    push        ebx
 00539181    push        esi
 00539182    mov         ebx,edx
 00539184    mov         esi,eax
 00539186    mov         eax,esi
 00539188    call        005391A0
 0053918D    cmp         bl,al
>0053918F    je          0053919C
 00539191    mov         ecx,ebx
 00539193    mov         dl,2
 00539195    mov         eax,esi
 00539197    call        00538BB0
 0053919C    pop         esi
 0053919D    pop         ebx
 0053919E    ret
end;*}

//005391A0
{*function sub_005391A0:?;
begin
 005391A0    mov         dl,2
 005391A2    call        00538B14
 005391A7    ret
end;*}

//005391A8
{*procedure sub_005391A8(?:TTreeNode; ?:?);
begin
 005391A8    push        ebx
 005391A9    add         esp,0FFFFFFD8
 005391AC    cmp         byte ptr [eax+24],0
>005391B0    jne         005391DE
 005391B2    mov         dword ptr [esp],40
 005391B9    mov         ecx,dword ptr [eax+10]
 005391BC    mov         dword ptr [esp+4],ecx
 005391C0    and         edx,7F
 005391C3    mov         dword ptr [esp+20],edx
 005391C7    call        TTreeNode.GetHandle
 005391CC    mov         ebx,eax
 005391CE    mov         eax,esp
 005391D0    push        eax
 005391D1    push        0
 005391D3    push        113F
 005391D8    push        ebx
 005391D9    call        user32.SendMessageW
 005391DE    add         esp,28
 005391E1    pop         ebx
 005391E2    ret
end;*}

//005391E4
{*function sub_005391E4(?:TTreeNode):?;
begin
 005391E4    push        ebx
 005391E5    push        esi
 005391E6    mov         ebx,eax
 005391E8    xor         esi,esi
 005391EA    mov         eax,ebx
 005391EC    call        TTreeNode.GetHandle
 005391F1    test        eax,eax
>005391F3    je          00539218
 005391F5    cmp         dword ptr [ebx+10],0;TTreeNode.FItemId:HTREEITEM
>005391F9    je          00539218
 005391FB    mov         esi,dword ptr [ebx+4];TTreeNode.FOwner:TTreeNodes
 005391FE    mov         eax,esi
 00539200    call        0053A154
 00539205    mov         edx,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
 00539208    call        004CFE88
 0053920D    mov         edx,eax
 0053920F    mov         eax,esi
 00539211    call        TTreeNodes.GetNode
 00539216    mov         esi,eax
 00539218    mov         eax,esi
 0053921A    pop         esi
 0053921B    pop         ebx
 0053921C    ret
end;*}

//00539220
function TTreeNode.getNextSibling:TTreeNode;
begin
{*
 00539220    push        ebx
 00539221    push        esi
 00539222    mov         ebx,eax
 00539224    xor         esi,esi
 00539226    mov         eax,ebx
 00539228    call        TTreeNode.GetHandle
 0053922D    test        eax,eax
>0053922F    je          00539254
 00539231    cmp         dword ptr [ebx+10],0;TTreeNode.FItemId:HTREEITEM
>00539235    je          00539254
 00539237    mov         esi,dword ptr [ebx+4];TTreeNode.FOwner:TTreeNodes
 0053923A    mov         eax,esi
 0053923C    call        0053A154
 00539241    mov         edx,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
 00539244    call        004CFE58
 00539249    mov         edx,eax
 0053924B    mov         eax,esi
 0053924D    call        TTreeNodes.GetNode
 00539252    mov         esi,eax
 00539254    mov         eax,esi
 00539256    pop         esi
 00539257    pop         ebx
 00539258    ret
*}
end;

//0053925C
function TTreeNode.getPrevSibling:TTreeNode;
begin
{*
 0053925C    push        ebx
 0053925D    push        esi
 0053925E    mov         ebx,eax
 00539260    xor         esi,esi
 00539262    mov         eax,ebx
 00539264    call        TTreeNode.GetHandle
 00539269    test        eax,eax
>0053926B    je          00539290
 0053926D    cmp         dword ptr [ebx+10],0;TTreeNode.FItemId:HTREEITEM
>00539271    je          00539290
 00539273    mov         esi,dword ptr [ebx+4];TTreeNode.FOwner:TTreeNodes
 00539276    mov         eax,esi
 00539278    call        0053A154
 0053927D    mov         edx,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
 00539280    call        004CFE70
 00539285    mov         edx,eax
 00539287    mov         eax,esi
 00539289    call        TTreeNodes.GetNode
 0053928E    mov         esi,eax
 00539290    mov         eax,esi
 00539292    pop         esi
 00539293    pop         ebx
 00539294    ret
*}
end;

//00539298
function TTreeNode.GetNextVisible:TTreeNode;
begin
{*
 00539298    push        ebx
 00539299    push        esi
 0053929A    mov         ebx,eax
 0053929C    xor         esi,esi
 0053929E    mov         eax,ebx
 005392A0    call        TTreeNode.GetHandle
 005392A5    test        eax,eax
>005392A7    je          005392D7
 005392A9    cmp         dword ptr [ebx+10],0;TTreeNode.FItemId:HTREEITEM
>005392AD    je          005392D7
 005392AF    mov         eax,ebx
 005392B1    call        0053992C
 005392B6    test        al,al
>005392B8    je          005392D7
 005392BA    mov         esi,dword ptr [ebx+4];TTreeNode.FOwner:TTreeNodes
 005392BD    mov         eax,esi
 005392BF    call        0053A154
 005392C4    mov         edx,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
 005392C7    call        004CFEB4
 005392CC    mov         edx,eax
 005392CE    mov         eax,esi
 005392D0    call        TTreeNodes.GetNode
 005392D5    mov         esi,eax
 005392D7    mov         eax,esi
 005392D9    pop         esi
 005392DA    pop         ebx
 005392DB    ret
*}
end;

//005392DC
function TTreeNode.GetPrevVisible:TTreeNode;
begin
{*
 005392DC    push        ebx
 005392DD    push        esi
 005392DE    mov         ebx,eax
 005392E0    xor         esi,esi
 005392E2    mov         eax,ebx
 005392E4    call        TTreeNode.GetHandle
 005392E9    test        eax,eax
>005392EB    je          0053931B
 005392ED    cmp         dword ptr [ebx+10],0;TTreeNode.FItemId:HTREEITEM
>005392F1    je          0053931B
 005392F3    mov         eax,ebx
 005392F5    call        0053992C
 005392FA    test        al,al
>005392FC    je          0053931B
 005392FE    mov         esi,dword ptr [ebx+4];TTreeNode.FOwner:TTreeNodes
 00539301    mov         eax,esi
 00539303    call        0053A154
 00539308    mov         edx,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
 0053930B    call        004CFECC
 00539310    mov         edx,eax
 00539312    mov         eax,esi
 00539314    call        TTreeNodes.GetNode
 00539319    mov         esi,eax
 0053931B    mov         eax,esi
 0053931D    pop         esi
 0053931E    pop         ebx
 0053931F    ret
*}
end;

//00539320
function TTreeNode.GetNextChild(Value:TTreeNode):TTreeNode;
begin
{*
 00539320    test        edx,edx
>00539322    je          0053932C
 00539324    mov         eax,edx
 00539326    call        TTreeNode.getNextSibling
 0053932B    ret
 0053932C    xor         eax,eax
 0053932E    ret
*}
end;

//00539330
function TTreeNode.getFirstChild:TTreeNode;
begin
{*
 00539330    push        ebx
 00539331    push        esi
 00539332    mov         ebx,eax
 00539334    xor         esi,esi
 00539336    mov         eax,ebx
 00539338    call        TTreeNode.GetHandle
 0053933D    test        eax,eax
>0053933F    je          00539364
 00539341    cmp         dword ptr [ebx+10],0;TTreeNode.FItemId:HTREEITEM
>00539345    je          00539364
 00539347    mov         esi,dword ptr [ebx+4];TTreeNode.FOwner:TTreeNodes
 0053934A    mov         eax,esi
 0053934C    call        0053A154
 00539351    mov         edx,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
 00539354    call        004CFE40
 00539359    mov         edx,eax
 0053935B    mov         eax,esi
 0053935D    call        TTreeNodes.GetNode
 00539362    mov         esi,eax
 00539364    mov         eax,esi
 00539366    pop         esi
 00539367    pop         ebx
 00539368    ret
*}
end;

//0053936C
function TTreeNode.GetLastChild:TTreeNode;
begin
{*
 0053936C    push        ebx
 0053936D    call        TTreeNode.getFirstChild
 00539372    mov         ebx,eax
 00539374    test        ebx,ebx
>00539376    je          00539387
 00539378    mov         eax,ebx
 0053937A    mov         ebx,eax
 0053937C    mov         eax,ebx
 0053937E    call        TTreeNode.getNextSibling
 00539383    test        eax,eax
>00539385    jne         0053937A
 00539387    mov         eax,ebx
 00539389    pop         ebx
 0053938A    ret
*}
end;

//0053938C
function TTreeNode.GetNext:TTreeNode;
begin
{*
 0053938C    push        ebx
 0053938D    push        esi
 0053938E    push        edi
 0053938F    mov         ebx,eax
 00539391    xor         esi,esi
 00539393    mov         eax,ebx
 00539395    call        TTreeNode.GetHandle
 0053939A    test        eax,eax
>0053939C    je          00539403
 0053939E    cmp         dword ptr [ebx+10],0;TTreeNode.FItemId:HTREEITEM
>005393A2    je          00539403
 005393A4    mov         eax,ebx
 005393A6    call        TTreeNode.GetHandle
 005393AB    mov         edx,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
 005393AE    call        004CFE40
 005393B3    mov         edi,eax
 005393B5    test        edi,edi
>005393B7    jne         005393CA
 005393B9    mov         eax,ebx
 005393BB    call        TTreeNode.GetHandle
 005393C0    mov         edx,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
 005393C3    call        004CFE58
 005393C8    mov         edi,eax
 005393CA    mov         esi,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
>005393CD    jmp         005393EF
 005393CF    mov         eax,ebx
 005393D1    call        TTreeNode.GetHandle
 005393D6    mov         edx,esi
 005393D8    call        004CFE88
 005393DD    mov         esi,eax
 005393DF    mov         eax,ebx
 005393E1    call        TTreeNode.GetHandle
 005393E6    mov         edx,esi
 005393E8    call        004CFE58
 005393ED    mov         edi,eax
 005393EF    test        edi,edi
>005393F1    jne         005393F7
 005393F3    test        esi,esi
>005393F5    jne         005393CF
 005393F7    mov         edx,edi
 005393F9    mov         eax,dword ptr [ebx+4];TTreeNode.FOwner:TTreeNodes
 005393FC    call        TTreeNodes.GetNode
 00539401    mov         esi,eax
 00539403    mov         eax,esi
 00539405    pop         edi
 00539406    pop         esi
 00539407    pop         ebx
 00539408    ret
*}
end;

//0053940C
function TTreeNode.GetPrev:TTreeNode;
begin
{*
 0053940C    push        ebx
 0053940D    push        esi
 0053940E    mov         esi,eax
 00539410    mov         eax,esi
 00539412    call        TTreeNode.getPrevSibling
 00539417    mov         ebx,eax
 00539419    test        ebx,ebx
>0053941B    je          0053942E
 0053941D    mov         eax,ebx
 0053941F    mov         ebx,eax
 00539421    mov         eax,ebx
 00539423    call        TTreeNode.GetLastChild
 00539428    test        eax,eax
>0053942A    jne         0053941F
>0053942C    jmp         00539437
 0053942E    mov         eax,esi
 00539430    call        005391E4
 00539435    mov         ebx,eax
 00539437    mov         eax,ebx
 00539439    pop         esi
 0053943A    pop         ebx
 0053943B    ret
*}
end;

//0053943C
{*function sub_0053943C(?:Pointer):?;
begin
 0053943C    push        ebx
 0053943D    push        esi
 0053943E    mov         ebx,eax
 00539440    mov         eax,dword ptr [ebx+4]
 00539443    cmp         ebx,dword ptr [eax+0C]
>00539446    jne         0053944D
 00539448    mov         esi,dword ptr [eax+10]
>0053944B    jmp         00539471
 0053944D    mov         eax,ebx
 0053944F    call        TTreeNode.IsFirstNode
 00539454    test        al,al
>00539456    je          0053945C
 00539458    xor         esi,esi
>0053945A    jmp         00539471
 0053945C    or          esi,0FFFFFFFF
 0053945F    test        ebx,ebx
>00539461    je          00539471
 00539463    inc         esi
 00539464    mov         eax,ebx
 00539466    call        TTreeNode.GetPrev
 0053946B    mov         ebx,eax
 0053946D    test        ebx,ebx
>0053946F    jne         00539463
 00539471    mov         eax,esi
 00539473    pop         esi
 00539474    pop         ebx
 00539475    ret
end;*}

//00539478
{*function sub_00539478(?:TObject):?;
begin
 00539478    push        ebx
 00539479    push        esi
 0053947A    or          esi,0FFFFFFFF
 0053947D    mov         ebx,eax
 0053947F    test        ebx,ebx
>00539481    je          00539491
 00539483    inc         esi
 00539484    mov         eax,ebx
 00539486    call        TTreeNode.getPrevSibling
 0053948B    mov         ebx,eax
 0053948D    test        ebx,ebx
>0053948F    jne         00539483
 00539491    mov         eax,esi
 00539493    pop         esi
 00539494    pop         ebx
 00539495    ret
end;*}

//00539498
function TTreeNode.GetItem(Index:Integer):TTreeNode;
begin
{*
 00539498    push        ebp
 00539499    mov         ebp,esp
 0053949B    add         esp,0FFFFFFF0
 0053949E    push        ebx
 0053949F    push        esi
 005394A0    push        edi
 005394A1    xor         ecx,ecx
 005394A3    mov         dword ptr [ebp-4],ecx
 005394A6    mov         dword ptr [ebp-8],ecx
 005394A9    mov         esi,edx
 005394AB    mov         edi,eax
 005394AD    xor         eax,eax
 005394AF    push        ebp
 005394B0    push        539526
 005394B5    push        dword ptr fs:[eax]
 005394B8    mov         dword ptr fs:[eax],esp
 005394BB    mov         eax,edi
 005394BD    call        TTreeNode.getFirstChild
 005394C2    mov         ebx,eax
>005394C4    jmp         005394D2
 005394C6    mov         edx,ebx
 005394C8    mov         eax,edi
 005394CA    call        TTreeNode.GetNextChild
 005394CF    mov         ebx,eax
 005394D1    dec         esi
 005394D2    test        ebx,ebx
>005394D4    je          005394DA
 005394D6    test        esi,esi
>005394D8    jg          005394C6
 005394DA    test        ebx,ebx
>005394DC    jne         0053950B
 005394DE    lea         eax,[ebp-4]
 005394E1    push        eax
 005394E2    lea         edx,[ebp-8]
 005394E5    mov         eax,[007C4BB4];^SResString135:TResStringRec
 005394EA    call        LoadResString
 005394EF    mov         eax,dword ptr [ebp-8]
 005394F2    mov         dword ptr [ebp-10],esi
 005394F5    mov         byte ptr [ebp-0C],0
 005394F9    lea         edx,[ebp-10]
 005394FC    xor         ecx,ecx
 005394FE    call        Format
 00539503    mov         eax,dword ptr [ebp-4]
 00539506    call        005387E4
 0053950B    xor         eax,eax
 0053950D    pop         edx
 0053950E    pop         ecx
 0053950F    pop         ecx
 00539510    mov         dword ptr fs:[eax],edx
 00539513    push        53952D
 00539518    lea         eax,[ebp-8]
 0053951B    mov         edx,2
 00539520    call        @UStrArrayClr
 00539525    ret
>00539526    jmp         @HandleFinally
>0053952B    jmp         00539518
 0053952D    mov         eax,ebx
 0053952F    pop         edi
 00539530    pop         esi
 00539531    pop         ebx
 00539532    mov         esp,ebp
 00539534    pop         ebp
 00539535    ret
*}
end;

//00539538
function TTreeNode.IndexOf(Value:TTreeNode):Integer;
begin
{*
 00539538    push        ebx
 00539539    push        esi
 0053953A    push        edi
 0053953B    push        ebp
 0053953C    mov         ebp,edx
 0053953E    mov         esi,eax
 00539540    or          edi,0FFFFFFFF
 00539543    mov         eax,esi
 00539545    call        TTreeNode.getFirstChild
 0053954A    mov         ebx,eax
 0053954C    test        ebx,ebx
>0053954E    je          00539564
 00539550    inc         edi
 00539551    cmp         ebp,ebx
>00539553    je          00539564
 00539555    mov         edx,ebx
 00539557    mov         eax,esi
 00539559    call        TTreeNode.GetNextChild
 0053955E    mov         ebx,eax
 00539560    test        ebx,ebx
>00539562    jne         00539550
 00539564    test        ebx,ebx
>00539566    jne         0053956B
 00539568    or          edi,0FFFFFFFF
 0053956B    mov         eax,edi
 0053956D    pop         ebp
 0053956E    pop         edi
 0053956F    pop         esi
 00539570    pop         ebx
 00539571    ret
*}
end;

//00539574
{*function sub_00539574:?;
begin
 00539574    push        ebx
 00539575    push        esi
 00539576    xor         esi,esi
 00539578    call        TTreeNode.getFirstChild
 0053957D    mov         ebx,eax
 0053957F    test        ebx,ebx
>00539581    je          00539593
 00539583    inc         esi
 00539584    mov         edx,ebx
 00539586    mov         eax,ebx
 00539588    call        TTreeNode.GetNextChild
 0053958D    mov         ebx,eax
 0053958F    test        ebx,ebx
>00539591    jne         00539583
 00539593    mov         eax,esi
 00539595    pop         esi
 00539596    pop         ebx
 00539597    ret
end;*}

//00539598
{*procedure sub_00539598(?:TTreeNode; ?:TTreeNode; ?:TTreeNode; ?:?; ?:?);
begin
 00539598    push        ebp
 00539599    mov         ebp,esp
 0053959B    add         esp,0FFFFFFA0
 0053959E    push        ebx
 0053959F    push        esi
 005395A0    push        edi
 005395A1    xor         ebx,ebx
 005395A3    mov         dword ptr [ebp-60],ebx
 005395A6    mov         esi,ecx
 005395A8    mov         ebx,eax
 005395AA    mov         edi,dword ptr [ebp+0C]
 005395AD    xor         eax,eax
 005395AF    push        ebp
 005395B0    push        539723
 005395B5    push        dword ptr fs:[eax]
 005395B8    mov         dword ptr fs:[eax],esp
 005395BB    mov         eax,dword ptr [ebx+4]
 005395BE    call        0053AB94
 005395C3    cmp         byte ptr [ebp+8],2
>005395C7    jne         005395D5
 005395C9    test        esi,esi
>005395CB    je          005395D5
 005395CD    mov         eax,dword ptr [esi+10]
 005395D0    mov         dword ptr [ebp-4],eax
>005395D3    jmp         005395DA
 005395D5    xor         eax,eax
 005395D7    mov         dword ptr [ebp-4],eax
 005395DA    mov         eax,ebx
 005395DC    call        00539138
 005395E1    mov         byte ptr [ebp-5],al
 005395E4    mov         eax,ebx
 005395E6    call        0053900C
 005395EB    mov         byte ptr [ebp-6],al
 005395EE    mov         eax,ebx
 005395F0    call        005391E4
 005395F5    test        eax,eax
>005395F7    je          0053962A
 005395F9    mov         eax,ebx
 005395FB    call        005391E4
 00539600    mov         edx,1
 00539605    call        00538DF4
 0053960A    test        al,al
>0053960C    je          0053962A
 0053960E    mov         eax,ebx
 00539610    call        005391E4
 00539615    xor         edx,edx
 00539617    call        00538FE0
 0053961C    mov         eax,ebx
 0053961E    call        005391E4
 00539623    xor         edx,edx
 00539625    call        005391A8
 0053962A    mov         dword ptr [ebp-34],4
 00539631    mov         eax,dword ptr [ebx+10]
 00539634    mov         dword ptr [ebp-30],eax
 00539637    xor         eax,eax
 00539639    mov         dword ptr [ebp-10],eax
 0053963C    mov         eax,ebx
 0053963E    call        TTreeNode.GetHandle
 00539643    mov         esi,eax
 00539645    lea         eax,[ebp-34]
 00539648    push        eax
 00539649    push        0
 0053964B    push        113F
 00539650    push        esi
 00539651    call        user32.SendMessageW
 00539656    mov         esi,dword ptr [ebx+4]
 00539659    lea         ecx,[ebp-5C]
 0053965C    mov         edx,ebx
 0053965E    mov         eax,esi
 00539660    call        0053A46C
 00539665    lea         eax,[ebp-5C]
 00539668    push        eax
 00539669    movzx       eax,byte ptr [ebp+8]
 0053966D    push        eax
 0053966E    mov         ecx,dword ptr [ebp-4]
 00539671    mov         edx,edi
 00539673    mov         eax,esi
 00539675    call        0053A490
 0053967A    mov         edi,eax
 0053967C    test        edi,edi
>0053967E    jne         005396A1
 00539680    lea         edx,[ebp-60]
 00539683    mov         eax,[007C4928];^SResString358:TResStringRec
 00539688    call        LoadResString
 0053968D    mov         ecx,dword ptr [ebp-60]
 00539690    mov         dl,1
 00539692    mov         eax,[0046BDEC];EOutOfResources
 00539697    call        Exception.Create;EOutOfResources.Create
 0053969C    call        @RaiseExcept
 005396A1    mov         eax,ebx
 005396A3    call        00539574
 005396A8    mov         esi,eax
 005396AA    dec         esi
 005396AB    cmp         esi,0
>005396AE    jl          005396CB
 005396B0    push        edi
 005396B1    push        0
 005396B3    mov         edx,esi
 005396B5    mov         eax,ebx
 005396B7    call        TTreeNode.GetItem
 005396BC    xor         ecx,ecx
 005396BE    mov         edx,ebx
 005396C0    call        00539598
 005396C5    dec         esi
 005396C6    cmp         esi,0FFFFFFFF
>005396C9    jne         005396B0
 005396CB    mov         eax,ebx
 005396CD    call        TTreeNode.GetHandle
 005396D2    mov         esi,eax
 005396D4    mov         eax,dword ptr [ebx+10]
 005396D7    mov         dword ptr [ebp-0C],eax
 005396DA    mov         eax,dword ptr [ebp-0C]
 005396DD    push        eax
 005396DE    push        0
 005396E0    push        1101
 005396E5    push        esi
 005396E6    call        user32.SendMessageW
 005396EB    mov         dword ptr [ebx+10],edi
 005396EE    mov         edx,ebx
 005396F0    mov         eax,ebx
 005396F2    mov         ecx,dword ptr [eax]
 005396F4    call        dword ptr [ecx+8]
 005396F7    movzx       edx,byte ptr [ebp-5]
 005396FB    mov         eax,ebx
 005396FD    call        005391A8
 00539702    movzx       edx,byte ptr [ebp-6]
 00539706    mov         eax,ebx
 00539708    call        00539014
 0053970D    xor         eax,eax
 0053970F    pop         edx
 00539710    pop         ecx
 00539711    pop         ecx
 00539712    mov         dword ptr fs:[eax],edx
 00539715    push        53972A
 0053971A    lea         eax,[ebp-60]
 0053971D    call        @UStrClr
 00539722    ret
>00539723    jmp         @HandleFinally
>00539728    jmp         0053971A
 0053972A    pop         edi
 0053972B    pop         esi
 0053972C    pop         ebx
 0053972D    mov         esp,ebp
 0053972F    pop         ebp
 00539730    ret         8
end;*}

//00539734
procedure TTreeNode.MoveTo(Destination:TTreeNode; Mode:TNodeAttachMode);
begin
{*
 00539734    push        ebp
 00539735    mov         ebp,esp
 00539737    add         esp,0FFFFFFE8
 0053973A    push        ebx
 0053973B    push        esi
 0053973C    push        edi
 0053973D    mov         ebx,ecx
 0053973F    mov         edi,edx
 00539741    mov         dword ptr [ebp-4],eax
 00539744    mov         eax,dword ptr [ebp-4]
 00539747    cmp         byte ptr [eax+24],0;TTreeNode.FDeleting:Boolean
>0053974B    jne         005398D8
 00539751    mov         eax,dword ptr [ebp-4]
 00539754    call        005391E4
 00539759    cmp         edi,eax
>0053975B    jne         00539766
 0053975D    cmp         bl,2
>00539760    je          005398D8
 00539766    mov         eax,dword ptr [ebp-4]
 00539769    call        00538964
 0053976E    mov         edx,dword ptr [eax+348]
 00539774    mov         dword ptr [ebp-10],edx
 00539777    mov         edx,dword ptr [eax+34C]
 0053977D    mov         dword ptr [ebp-0C],edx
 00539780    mov         eax,dword ptr [ebp-4]
 00539783    call        00538964
 00539788    mov         edx,dword ptr [eax+340]
 0053978E    mov         dword ptr [ebp-18],edx
 00539791    mov         edx,dword ptr [eax+344]
 00539797    mov         dword ptr [ebp-14],edx
 0053979A    mov         eax,dword ptr [ebp-4]
 0053979D    call        00538964
 005397A2    xor         edx,edx
 005397A4    mov         dword ptr [eax+348],edx
 005397AA    mov         dword ptr [eax+34C],edx
 005397B0    mov         eax,dword ptr [ebp-4]
 005397B3    call        00538964
 005397B8    xor         edx,edx
 005397BA    mov         dword ptr [eax+340],edx
 005397C0    mov         dword ptr [eax+344],edx
 005397C6    xor         edx,edx
 005397C8    push        ebp
 005397C9    push        5398D1
 005397CE    push        dword ptr fs:[edx]
 005397D1    mov         dword ptr fs:[edx],esp
 005397D4    test        edi,edi
>005397D6    je          005397EA
 005397D8    mov         edx,dword ptr [ebp-4]
 005397DB    mov         eax,edi
 005397DD    call        TTreeNode.HasAsParent
 005397E2    test        al,al
>005397E4    jne         0053988F
 005397EA    mov         byte ptr [ebp-5],1
 005397EE    test        edi,edi
>005397F0    je          00539805
 005397F2    mov         eax,ebx
 005397F4    add         al,0FE
 005397F6    sub         al,2
>005397F8    jb          00539805
 005397FA    mov         eax,edi
 005397FC    call        005391E4
 00539801    mov         esi,eax
>00539803    jmp         00539807
 00539805    mov         esi,edi
 00539807    movzx       eax,bl
 0053980A    cmp         eax,4
>0053980D    ja          0053984D
 0053980F    jmp         dword ptr [eax*4+539816]
 0053980F    dd          0053982A
 0053980F    dd          00539830
 0053980F    dd          0053982A
 0053980F    dd          00539830
 0053980F    dd          00539836
 0053982A    mov         byte ptr [ebp-5],1
>0053982E    jmp         0053984D
 00539830    mov         byte ptr [ebp-5],0
>00539834    jmp         0053984D
 00539836    mov         eax,edi
 00539838    call        TTreeNode.getPrevSibling
 0053983D    mov         edi,eax
 0053983F    test        edi,edi
>00539841    jne         00539849
 00539843    mov         byte ptr [ebp-5],0
>00539847    jmp         0053984D
 00539849    mov         byte ptr [ebp-5],2
 0053984D    test        esi,esi
>0053984F    je          00539856
 00539851    mov         eax,dword ptr [esi+10];TTreeNode.FItemId:HTREEITEM
>00539854    jmp         00539858
 00539856    xor         eax,eax
 00539858    cmp         edi,dword ptr [ebp-4]
>0053985B    je          0053986F
 0053985D    push        eax
 0053985E    movzx       eax,byte ptr [ebp-5]
 00539862    push        eax
 00539863    mov         ecx,edi
 00539865    mov         edx,esi
 00539867    mov         eax,dword ptr [ebp-4]
 0053986A    call        00539598
 0053986F    mov         eax,dword ptr [ebp-4]
 00539872    call        005391E4
 00539877    mov         esi,eax
 00539879    test        esi,esi
>0053987B    je          0053988F
 0053987D    mov         dl,1
 0053987F    mov         eax,esi
 00539881    call        005391A8
 00539886    mov         dl,1
 00539888    mov         eax,esi
 0053988A    call        00538FE0
 0053988F    xor         eax,eax
 00539891    pop         edx
 00539892    pop         ecx
 00539893    pop         ecx
 00539894    mov         dword ptr fs:[eax],edx
 00539897    push        5398D8
 0053989C    mov         eax,dword ptr [ebp-4]
 0053989F    call        00538964
 005398A4    mov         edx,dword ptr [ebp-10]
 005398A7    mov         dword ptr [eax+348],edx
 005398AD    mov         edx,dword ptr [ebp-0C]
 005398B0    mov         dword ptr [eax+34C],edx
 005398B6    mov         eax,dword ptr [ebp-4]
 005398B9    call        00538964
 005398BE    mov         edx,dword ptr [ebp-18]
 005398C1    mov         dword ptr [eax+340],edx
 005398C7    mov         edx,dword ptr [ebp-14]
 005398CA    mov         dword ptr [eax+344],edx
 005398D0    ret
>005398D1    jmp         @HandleFinally
>005398D6    jmp         0053989C
 005398D8    pop         edi
 005398D9    pop         esi
 005398DA    pop         ebx
 005398DB    mov         esp,ebp
 005398DD    pop         ebp
 005398DE    ret
*}
end;

//005398E0
function TTreeNode.IsFirstNode:Boolean;
begin
{*
 005398E0    push        ebx
 005398E1    mov         ebx,eax
 005398E3    cmp         byte ptr [ebx+24],0;TTreeNode.FDeleting:Boolean
>005398E7    jne         005398FF
 005398E9    mov         eax,ebx
 005398EB    call        005391E4
 005398F0    test        eax,eax
>005398F2    jne         005398FF
 005398F4    mov         eax,ebx
 005398F6    call        TTreeNode.getPrevSibling
 005398FB    test        eax,eax
>005398FD    je          00539903
 005398FF    xor         eax,eax
 00539901    pop         ebx
 00539902    ret
 00539903    mov         al,1
 00539905    pop         ebx
 00539906    ret
*}
end;

//00539908
{*function sub_00539908:?;
begin
 00539908    push        ebx
 00539909    push        esi
 0053990A    xor         esi,esi
 0053990C    call        005391E4
 00539911    mov         ebx,eax
 00539913    test        ebx,ebx
>00539915    je          00539925
 00539917    inc         esi
 00539918    mov         eax,ebx
 0053991A    call        005391E4
 0053991F    mov         ebx,eax
 00539921    test        ebx,ebx
>00539923    jne         00539917
 00539925    mov         eax,esi
 00539927    pop         esi
 00539928    pop         ebx
 00539929    ret
end;*}

//0053992C
{*function sub_0053992C(?:TTreeNode):?;
begin
 0053992C    push        ebx
 0053992D    add         esp,0FFFFFFF0
 00539930    mov         ebx,eax
 00539932    cmp         byte ptr [ebx+24],0;TTreeNode.FDeleting:Boolean
>00539936    jne         00539951
 00539938    push        0FF
 0053993A    mov         eax,ebx
 0053993C    call        TTreeNode.GetHandle
 00539941    lea         ecx,[esp+4]
 00539945    mov         edx,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
 00539948    call        TreeView_GetItemRect
 0053994D    test        eax,eax
>0053994F    jne         00539955
 00539951    xor         eax,eax
>00539953    jmp         00539957
 00539955    mov         al,1
 00539957    add         esp,10
 0053995A    pop         ebx
 0053995B    ret
end;*}

//0053995C
{*procedure TTreeNode.DisplayRect(TextOnly:Boolean; ?:?);
begin
 0053995C    push        ebx
 0053995D    push        esi
 0053995E    push        edi
 0053995F    mov         esi,ecx
 00539961    mov         ebx,edx
 00539963    mov         edi,eax
 00539965    mov         eax,esi
 00539967    xor         ecx,ecx
 00539969    mov         edx,10
 0053996E    call        @FillChar
 00539973    cmp         byte ptr [edi+24],0;TTreeNode.FDeleting:Boolean
>00539977    jne         00539991
 00539979    cmp         bl,1
 0053997C    cmc
 0053997D    sbb         eax,eax
 0053997F    push        eax
 00539980    mov         eax,edi
 00539982    call        TTreeNode.GetHandle
 00539987    mov         ecx,esi
 00539989    mov         edx,dword ptr [edi+10];TTreeNode.FItemId:HTREEITEM
 0053998C    call        TreeView_GetItemRect
 00539991    pop         edi
 00539992    pop         esi
 00539993    pop         ebx
 00539994    ret
end;*}

//00539998
procedure TTreeNode.AlphaSort(ARecurse:Boolean);
begin
{*
 00539998    push        edx
 00539999    xor         ecx,ecx
 0053999B    xor         edx,edx
 0053999D    call        TTreeNode.CustomSort
 005399A2    ret
*}
end;

//005399A4
function TTreeNode.CustomSort(SortProc:PFNTVCOMPARE; Data:NativeInt; ARecurse:Boolean):Boolean;
begin
{*
 005399A4    push        ebp
 005399A5    mov         ebp,esp
 005399A7    add         esp,0FFFFFFEC
 005399AA    push        ebx
 005399AB    push        esi
 005399AC    push        edi
 005399AD    mov         edi,ecx
 005399AF    mov         esi,edx
 005399B1    mov         ebx,eax
 005399B3    mov         byte ptr [ebp-1],0
 005399B7    cmp         byte ptr [ebx+24],0;TTreeNode.FDeleting:Boolean
>005399BB    jne         00539A42
 005399C1    mov         eax,dword ptr [ebx+4];TTreeNode.FOwner:TTreeNodes
 005399C4    call        0053AB94
 005399C9    test        esi,esi
>005399CB    jne         005399D7
 005399CD    mov         eax,538778;sub_00538778
 005399D2    mov         dword ptr [ebp-10],eax
>005399D5    jmp         005399DA
 005399D7    mov         dword ptr [ebp-10],esi
 005399DA    mov         eax,dword ptr [ebx+10];TTreeNode.FItemId:HTREEITEM
 005399DD    mov         dword ptr [ebp-14],eax
 005399E0    mov         dword ptr [ebp-0C],edi
 005399E3    mov         eax,ebx
 005399E5    call        TTreeNode.GetHandle
 005399EA    mov         dword ptr [ebp-8],eax
 005399ED    lea         eax,[ebp-14]
 005399F0    push        eax
 005399F1    push        0
 005399F3    push        1115
 005399F8    mov         eax,dword ptr [ebp-8]
 005399FB    push        eax
 005399FC    call        user32.SendMessageW
 00539A01    cmp         eax,1
 00539A04    sbb         eax,eax
 00539A06    inc         eax
 00539A07    mov         byte ptr [ebp-1],al
 00539A0A    cmp         byte ptr [ebp+8],0
>00539A0E    je          00539A42
 00539A10    mov         eax,ebx
 00539A12    call        TTreeNode.getFirstChild
 00539A17    mov         ebx,eax
 00539A19    test        ebx,ebx
>00539A1B    je          00539A42
 00539A1D    mov         eax,ebx
 00539A1F    call        00539138
 00539A24    test        al,al
>00539A26    je          00539A35
 00539A28    push        1
 00539A2A    mov         ecx,edi
 00539A2C    mov         edx,esi
 00539A2E    mov         eax,ebx
 00539A30    call        TTreeNode.CustomSort
 00539A35    mov         eax,ebx
 00539A37    call        TTreeNode.getNextSibling
 00539A3C    mov         ebx,eax
 00539A3E    test        ebx,ebx
>00539A40    jne         00539A1D
 00539A42    movzx       eax,byte ptr [ebp-1]
 00539A46    pop         edi
 00539A47    pop         esi
 00539A48    pop         ebx
 00539A49    mov         esp,ebp
 00539A4B    pop         ebp
 00539A4C    ret         4
*}
end;

//00539A50
procedure TTreeNode.Delete;
begin
{*
 00539A50    cmp         byte ptr [eax+24],0;TTreeNode.FDeleting:Boolean
>00539A54    jne         00539A5B
 00539A56    call        TObject.Free
 00539A5B    ret
*}
end;

//00539A5C
procedure TTreeNode.Assign(Source:TPersistent);
begin
{*
 00539A5C    push        ebx
 00539A5D    push        esi
 00539A5E    mov         esi,edx
 00539A60    mov         ebx,eax
 00539A62    mov         eax,dword ptr [ebx+4];TTreeNode.FOwner:TTreeNodes
 00539A65    call        0053AB94
 00539A6A    cmp         byte ptr [ebx+24],0;TTreeNode.FDeleting:Boolean
>00539A6E    jne         00539B04
 00539A74    mov         eax,esi
 00539A76    mov         edx,dword ptr ds:[524178];TTreeNode
 00539A7C    call        @IsClass
 00539A81    test        al,al
>00539A83    je          00539B04
 00539A85    mov         edx,dword ptr [esi+8]
 00539A88    mov         eax,ebx
 00539A8A    call        00538A00
 00539A8F    mov         edx,dword ptr [esi+0C]
 00539A92    mov         eax,ebx
 00539A94    call        00538AA4
 00539A99    mov         edx,dword ptr [esi+14]
 00539A9C    mov         eax,ebx
 00539A9E    call        00538C54
 00539AA3    mov         edx,dword ptr [esi+18]
 00539AA6    mov         eax,ebx
 00539AA8    call        00538CF4
 00539AAD    mov         edx,dword ptr [esi+20]
 00539AB0    mov         eax,ebx
 00539AB2    call        00538DA0
 00539AB7    mov         edx,dword ptr [esi+1C]
 00539ABA    mov         eax,ebx
 00539ABC    call        00538D50
 00539AC1    mov         eax,esi
 00539AC3    call        005391A0
 00539AC8    mov         edx,eax
 00539ACA    mov         eax,ebx
 00539ACC    call        00539180
 00539AD1    mov         eax,esi
 00539AD3    call        005390E8
 00539AD8    mov         edx,eax
 00539ADA    mov         eax,ebx
 00539ADC    call        005390F0
 00539AE1    mov         eax,esi
 00539AE3    call        005390C0
 00539AE8    mov         edx,eax
 00539AEA    mov         eax,ebx
 00539AEC    call        005390C8
 00539AF1    mov         eax,esi
 00539AF3    call        00539138
 00539AF8    mov         edx,eax
 00539AFA    mov         eax,ebx
 00539AFC    call        005391A8
 00539B01    pop         esi
 00539B02    pop         ebx
 00539B03    ret
 00539B04    mov         edx,esi
 00539B06    mov         eax,ebx
 00539B08    call        TPersistent.Assign
 00539B0D    pop         esi
 00539B0E    pop         ebx
 00539B0F    ret
*}
end;

//00539B10
{*function sub_00539B10(?:TTreeNode; ?:?):?;
begin
 00539B10    push        ebx
 00539B11    push        esi
 00539B12    mov         esi,edx
 00539B14    mov         ebx,eax
 00539B16    mov         eax,dword ptr [ebx+8]
 00539B19    mov         edx,dword ptr [esi+8]
 00539B1C    call        @UStrEqual
>00539B21    jne         00539B2B
 00539B23    mov         eax,dword ptr [ebx+0C]
 00539B26    cmp         eax,dword ptr [esi+0C]
>00539B29    je          00539B30
 00539B2B    xor         eax,eax
 00539B2D    pop         esi
 00539B2E    pop         ebx
 00539B2F    ret
 00539B30    mov         al,1
 00539B32    pop         esi
 00539B33    pop         ebx
 00539B34    ret
end;*}

//00539C38
{*procedure sub_00539C38(?:TTreeNode; ?:TMemoryStream; ?:?);
begin
 00539C38    push        ebp
 00539C39    mov         ebp,esp
 00539C3B    add         esp,0FFFFFF94
 00539C3E    push        ebx
 00539C3F    push        esi
 00539C40    push        edi
 00539C41    xor         ebx,ebx
 00539C43    mov         dword ptr [ebp-4],ebx
 00539C46    mov         byte ptr [ebp-9],cl
 00539C49    mov         dword ptr [ebp-8],edx
 00539C4C    mov         ebx,eax
 00539C4E    xor         eax,eax
 00539C50    push        ebp
 00539C51    push        539F61
 00539C56    push        dword ptr fs:[eax]
 00539C59    mov         dword ptr fs:[eax],esp
 00539C5C    mov         eax,dword ptr [ebx+4]
 00539C5F    call        0053AB94
 00539C64    movzx       eax,byte ptr [ebp-9]
 00539C68    sub         al,1
>00539C6A    jb          00539C85
 00539C6C    dec         al
>00539C6E    je          00539C85
 00539C70    sub         al,2
>00539C72    je          00539D72
 00539C78    dec         al
>00539C7A    je          00539E64
>00539C80    jmp         00539F4B
 00539C85    lea         edx,[ebp-10]
 00539C88    mov         ecx,4
 00539C8D    mov         eax,dword ptr [ebp-8]
 00539C90    call        TStream.ReadBuffer
 00539C95    lea         edx,[ebp-29]
 00539C98    mov         ecx,19
 00539C9D    mov         eax,dword ptr [ebp-8]
 00539CA0    call        TStream.ReadBuffer
 00539CA5    movzx       edx,byte ptr [ebp-11]
 00539CA9    lea         eax,[ebp-4]
 00539CAC    call        @UStrSetLength
 00539CB1    lea         eax,[ebp-4]
 00539CB4    call        @UniqueStringU
 00539CB9    mov         edx,eax
 00539CBB    movzx       eax,byte ptr [ebp-11]
 00539CBF    mov         ecx,eax
 00539CC1    add         ecx,ecx
 00539CC3    mov         eax,dword ptr [ebp-8]
 00539CC6    call        TStream.ReadBuffer
 00539CCB    mov         edx,dword ptr [ebp-4]
 00539CCE    mov         eax,ebx
 00539CD0    call        00538A00
 00539CD5    mov         edx,dword ptr [ebp-29]
 00539CD8    mov         eax,ebx
 00539CDA    call        00538C54
 00539CDF    mov         edx,dword ptr [ebp-25]
 00539CE2    mov         eax,ebx
 00539CE4    call        00538CF4
 00539CE9    mov         edx,dword ptr [ebp-21]
 00539CEC    mov         eax,ebx
 00539CEE    call        00538DA0
 00539CF3    mov         edx,dword ptr [ebp-1D]
 00539CF6    mov         eax,ebx
 00539CF8    call        00538D50
 00539CFD    mov         edx,dword ptr [ebp-19]
 00539D00    mov         eax,ebx
 00539D02    call        00538AA4
 00539D07    or          edx,0FFFFFFFF
 00539D0A    mov         eax,ebx
 00539D0C    call        00538CB0
 00539D11    mov         dl,1
 00539D13    mov         eax,ebx
 00539D15    call        005389AC
 00539D1A    mov         esi,dword ptr [ebp-15]
 00539D1D    test        esi,esi
 00539D1F    setne       dl
 00539D22    mov         eax,ebx
 00539D24    call        005391A8
 00539D29    test        esi,esi
>00539D2B    jle         00539F4B
 00539D31    mov         edi,esi
 00539D33    dec         edi
 00539D34    test        edi,edi
>00539D36    jl          00539F4B
 00539D3C    inc         edi
 00539D3D    xor         ecx,ecx
 00539D3F    mov         edx,ebx
 00539D41    mov         eax,dword ptr [ebx+4]
 00539D44    call        TTreeNodes.AddChild
 00539D49    mov         esi,eax
 00539D4B    movzx       ecx,byte ptr [ebp-9]
 00539D4F    mov         edx,dword ptr [ebp-8]
 00539D52    mov         eax,esi
 00539D54    call        00539C38
 00539D59    mov         eax,dword ptr [ebx+4]
 00539D5C    mov         eax,dword ptr [eax+4]
 00539D5F    mov         edx,esi
 00539D61    mov         si,0FFA6
 00539D65    call        @CallDynaInst
 00539D6A    dec         edi
>00539D6B    jne         00539D3D
>00539D6D    jmp         00539F4B
 00539D72    lea         edx,[ebp-10]
 00539D75    mov         ecx,4
 00539D7A    mov         eax,dword ptr [ebp-8]
 00539D7D    call        TStream.ReadBuffer
 00539D82    lea         edx,[ebp-47]
 00539D85    mov         ecx,1E
 00539D8A    mov         eax,dword ptr [ebp-8]
 00539D8D    call        TStream.ReadBuffer
 00539D92    movzx       edx,byte ptr [ebp-2A]
 00539D96    lea         eax,[ebp-4]
 00539D99    call        @UStrSetLength
 00539D9E    lea         eax,[ebp-4]
 00539DA1    call        @UniqueStringU
 00539DA6    mov         edx,eax
 00539DA8    movzx       eax,byte ptr [ebp-2A]
 00539DAC    mov         ecx,eax
 00539DAE    add         ecx,ecx
 00539DB0    mov         eax,dword ptr [ebp-8]
 00539DB3    call        TStream.ReadBuffer
 00539DB8    mov         edx,dword ptr [ebp-4]
 00539DBB    mov         eax,ebx
 00539DBD    call        00538A00
 00539DC2    mov         edx,dword ptr [ebp-47]
 00539DC5    mov         eax,ebx
 00539DC7    call        00538C54
 00539DCC    mov         edx,dword ptr [ebp-43]
 00539DCF    mov         eax,ebx
 00539DD1    call        00538CF4
 00539DD6    mov         edx,dword ptr [ebp-3F]
 00539DD9    mov         eax,ebx
 00539DDB    call        00538DA0
 00539DE0    mov         edx,dword ptr [ebp-3B]
 00539DE3    mov         eax,ebx
 00539DE5    call        00538D50
 00539DEA    mov         edx,dword ptr [ebp-37]
 00539DED    mov         eax,ebx
 00539DEF    call        00538CB0
 00539DF4    cmp         byte ptr [ebp-2B],0
 00539DF8    setne       dl
 00539DFB    mov         eax,ebx
 00539DFD    call        005389AC
 00539E02    mov         edx,dword ptr [ebp-33]
 00539E05    mov         eax,ebx
 00539E07    call        00538AA4
 00539E0C    mov         esi,dword ptr [ebp-2F]
 00539E0F    test        esi,esi
 00539E11    setne       dl
 00539E14    mov         eax,ebx
 00539E16    call        005391A8
 00539E1B    test        esi,esi
>00539E1D    jle         00539F4B
 00539E23    mov         edi,esi
 00539E25    dec         edi
 00539E26    test        edi,edi
>00539E28    jl          00539F4B
 00539E2E    inc         edi
 00539E2F    xor         ecx,ecx
 00539E31    mov         edx,ebx
 00539E33    mov         eax,dword ptr [ebx+4]
 00539E36    call        TTreeNodes.AddChild
 00539E3B    mov         esi,eax
 00539E3D    movzx       ecx,byte ptr [ebp-9]
 00539E41    mov         edx,dword ptr [ebp-8]
 00539E44    mov         eax,esi
 00539E46    call        00539C38
 00539E4B    mov         eax,dword ptr [ebx+4]
 00539E4E    mov         eax,dword ptr [eax+4]
 00539E51    mov         edx,esi
 00539E53    mov         si,0FFA6
 00539E57    call        @CallDynaInst
 00539E5C    dec         edi
>00539E5D    jne         00539E2F
>00539E5F    jmp         00539F4B
 00539E64    lea         edx,[ebp-10]
 00539E67    mov         ecx,4
 00539E6C    mov         eax,dword ptr [ebp-8]
 00539E6F    call        TStream.ReadBuffer
 00539E74    lea         edx,[ebp-69]
 00539E77    mov         ecx,22
 00539E7C    mov         eax,dword ptr [ebp-8]
 00539E7F    call        TStream.ReadBuffer
 00539E84    movzx       edx,byte ptr [ebp-48]
 00539E88    lea         eax,[ebp-4]
 00539E8B    call        @UStrSetLength
 00539E90    lea         eax,[ebp-4]
 00539E93    call        @UniqueStringU
 00539E98    mov         edx,eax
 00539E9A    movzx       eax,byte ptr [ebp-48]
 00539E9E    mov         ecx,eax
 00539EA0    add         ecx,ecx
 00539EA2    mov         eax,dword ptr [ebp-8]
 00539EA5    call        TStream.ReadBuffer
 00539EAA    mov         edx,dword ptr [ebp-4]
 00539EAD    mov         eax,ebx
 00539EAF    call        00538A00
 00539EB4    mov         edx,dword ptr [ebp-69]
 00539EB7    mov         eax,ebx
 00539EB9    call        00538C54
 00539EBE    mov         edx,dword ptr [ebp-65]
 00539EC1    mov         eax,ebx
 00539EC3    call        00538CF4
 00539EC8    mov         edx,dword ptr [ebp-61]
 00539ECB    mov         eax,ebx
 00539ECD    call        00538DA0
 00539ED2    mov         edx,dword ptr [ebp-5D]
 00539ED5    mov         eax,ebx
 00539ED7    call        00538D50
 00539EDC    mov         edx,dword ptr [ebp-59]
 00539EDF    mov         eax,ebx
 00539EE1    call        00538CB0
 00539EE6    cmp         byte ptr [ebp-49],0
 00539EEA    setne       dl
 00539EED    mov         eax,ebx
 00539EEF    call        005389AC
 00539EF4    mov         eax,dword ptr [ebp-55]
 00539EF7    mov         edx,eax
 00539EF9    mov         eax,ebx
 00539EFB    call        00538AA4
 00539F00    mov         esi,dword ptr [ebp-4D]
 00539F03    test        esi,esi
 00539F05    setne       dl
 00539F08    mov         eax,ebx
 00539F0A    call        005391A8
 00539F0F    test        esi,esi
>00539F11    jle         00539F4B
 00539F13    mov         edi,esi
 00539F15    dec         edi
 00539F16    test        edi,edi
>00539F18    jl          00539F4B
 00539F1A    inc         edi
 00539F1B    xor         ecx,ecx
 00539F1D    mov         edx,ebx
 00539F1F    mov         eax,dword ptr [ebx+4]
 00539F22    call        TTreeNodes.AddChild
 00539F27    mov         esi,eax
 00539F29    movzx       ecx,byte ptr [ebp-9]
 00539F2D    mov         edx,dword ptr [ebp-8]
 00539F30    mov         eax,esi
 00539F32    call        00539C38
 00539F37    mov         eax,dword ptr [ebx+4]
 00539F3A    mov         eax,dword ptr [eax+4]
 00539F3D    mov         edx,esi
 00539F3F    mov         si,0FFA6
 00539F43    call        @CallDynaInst
 00539F48    dec         edi
>00539F49    jne         00539F1B
 00539F4B    xor         eax,eax
 00539F4D    pop         edx
 00539F4E    pop         ecx
 00539F4F    pop         ecx
 00539F50    mov         dword ptr fs:[eax],edx
 00539F53    push        539F68
 00539F58    lea         eax,[ebp-4]
 00539F5B    call        @UStrClr
 00539F60    ret
>00539F61    jmp         @HandleFinally
>00539F66    jmp         00539F58
 00539F68    pop         edi
 00539F69    pop         esi
 00539F6A    pop         ebx
 00539F6B    mov         esp,ebp
 00539F6D    pop         ebp
 00539F6E    ret
end;*}

//00539F70
procedure sub_00539F70(?:TTreeNode; ?:TMemoryStream);
begin
{*
 00539F70    push        ebp
 00539F71    mov         ebp,esp
 00539F73    add         esp,0FFFFFFD4
 00539F76    push        ebx
 00539F77    push        esi
 00539F78    push        edi
 00539F79    xor         ecx,ecx
 00539F7B    mov         dword ptr [ebp-4],ecx
 00539F7E    mov         dword ptr [ebp-8],edx
 00539F81    mov         ebx,eax
 00539F83    xor         eax,eax
 00539F85    push        ebp
 00539F86    push        53A0A1
 00539F8B    push        dword ptr fs:[eax]
 00539F8E    mov         dword ptr fs:[eax],esp
 00539F91    lea         eax,[ebp-4]
 00539F94    mov         edx,dword ptr [ebx+8]
 00539F97    call        @UStrLAsg
 00539F9C    mov         edx,dword ptr [ebp-4]
 00539F9F    mov         eax,edx
 00539FA1    test        eax,eax
>00539FA3    je          00539FAA
 00539FA5    sub         eax,4
 00539FA8    mov         eax,dword ptr [eax]
 00539FAA    mov         byte ptr [ebp-0D],al
 00539FAD    mov         eax,edx
 00539FAF    test        eax,eax
>00539FB1    je          00539FB8
 00539FB3    sub         eax,4
 00539FB6    mov         eax,dword ptr [eax]
 00539FB8    cmp         eax,0FF
>00539FBD    jle         00539FC4
 00539FBF    mov         eax,0FF
 00539FC4    mov         edx,eax
 00539FC6    mov         byte ptr [ebp-0D],dl
 00539FC9    movzx       eax,dl
 00539FCC    add         eax,eax
 00539FCE    add         eax,1E
 00539FD1    mov         dword ptr [ebp-0C],eax
 00539FD4    mov         eax,dword ptr [ebx+14]
 00539FD7    mov         dword ptr [ebp-2A],eax
 00539FDA    mov         eax,dword ptr [ebx+18]
 00539FDD    mov         dword ptr [ebp-26],eax
 00539FE0    mov         eax,dword ptr [ebx+1C]
 00539FE3    mov         dword ptr [ebp-1E],eax
 00539FE6    mov         eax,dword ptr [ebx+20]
 00539FE9    mov         dword ptr [ebp-22],eax
 00539FEC    mov         eax,dword ptr [ebx+0C]
 00539FEF    mov         dword ptr [ebp-16],eax
 00539FF2    mov         eax,dword ptr [ebx+28]
 00539FF5    mov         dword ptr [ebp-1A],eax
 00539FF8    cmp         byte ptr [ebx+26],0
>00539FFC    je          0053A004
 00539FFE    mov         byte ptr [ebp-0E],1
>0053A002    jmp         0053A008
 0053A004    mov         byte ptr [ebp-0E],0
 0053A008    mov         eax,ebx
 0053A00A    call        00539574
 0053A00F    test        eax,eax
>0053A011    jne         0053A027
 0053A013    mov         eax,ebx
 0053A015    call        00539138
 0053A01A    test        al,al
>0053A01C    je          0053A027
 0053A01E    mov         dword ptr [ebp-12],0FFFFFFFF
>0053A025    jmp         0053A031
 0053A027    mov         eax,ebx
 0053A029    call        00539574
 0053A02E    mov         dword ptr [ebp-12],eax
 0053A031    lea         edx,[ebp-0C]
 0053A034    mov         ecx,4
 0053A039    mov         eax,dword ptr [ebp-8]
 0053A03C    call        TStream.WriteBuffer
 0053A041    lea         edx,[ebp-2A]
 0053A044    mov         ecx,1E
 0053A049    mov         eax,dword ptr [ebp-8]
 0053A04C    call        TStream.WriteBuffer
 0053A051    lea         eax,[ebp-4]
 0053A054    call        @UniqueStringU
 0053A059    mov         edx,eax
 0053A05B    movzx       eax,byte ptr [ebp-0D]
 0053A05F    mov         ecx,eax
 0053A061    add         ecx,ecx
 0053A063    mov         eax,dword ptr [ebp-8]
 0053A066    call        TStream.WriteBuffer
 0053A06B    mov         esi,dword ptr [ebp-12]
 0053A06E    dec         esi
 0053A06F    test        esi,esi
>0053A071    jl          0053A08B
 0053A073    inc         esi
 0053A074    xor         edi,edi
 0053A076    mov         edx,edi
 0053A078    mov         eax,ebx
 0053A07A    call        TTreeNode.GetItem
 0053A07F    mov         edx,dword ptr [ebp-8]
 0053A082    call        00539F70
 0053A087    inc         edi
 0053A088    dec         esi
>0053A089    jne         0053A076
 0053A08B    xor         eax,eax
 0053A08D    pop         edx
 0053A08E    pop         ecx
 0053A08F    pop         ecx
 0053A090    mov         dword ptr fs:[eax],edx
 0053A093    push        53A0A8
 0053A098    lea         eax,[ebp-4]
 0053A09B    call        @UStrClr
 0053A0A0    ret
>0053A0A1    jmp         @HandleFinally
>0053A0A6    jmp         0053A098
 0053A0A8    pop         edi
 0053A0A9    pop         esi
 0053A0AA    pop         ebx
 0053A0AB    mov         esp,ebp
 0053A0AD    pop         ebp
 0053A0AE    ret
*}
end;

//0053A0B0
procedure TTreeNodesEnumerator.GetCurrent;
begin
{*
 0053A0B0    mov         edx,dword ptr [eax+4];TTreeNodesEnumerator.FIndex:Integer
 0053A0B3    mov         eax,dword ptr [eax+8];TTreeNodesEnumerator.FTreeNodes:TTreeNodes
 0053A0B6    call        TTreeNodes.GetNodeFromIndex
 0053A0BB    ret
*}
end;

//0053A0BC
constructor TTreeNodes.Create(AOwner:TCustomTreeView);
begin
{*
 0053A0BC    push        ebx
 0053A0BD    push        esi
 0053A0BE    push        edi
 0053A0BF    test        dl,dl
>0053A0C1    je          0053A0CB
 0053A0C3    add         esp,0FFFFFFF0
 0053A0C6    call        @ClassCreate
 0053A0CB    mov         esi,ecx
 0053A0CD    mov         ebx,edx
 0053A0CF    mov         edi,eax
 0053A0D1    xor         edx,edx
 0053A0D3    mov         eax,edi
 0053A0D5    call        TObject.Create
 0053A0DA    mov         dword ptr [edi+4],esi;TTreeNodes.FOwner:TCustomTreeView
 0053A0DD    mov         eax,edi
 0053A0DF    test        bl,bl
>0053A0E1    je          0053A0F2
 0053A0E3    call        @AfterConstruction
 0053A0E8    pop         dword ptr fs:[0]
 0053A0EF    add         esp,0C
 0053A0F2    mov         eax,edi
 0053A0F4    pop         edi
 0053A0F5    pop         esi
 0053A0F6    pop         ebx
 0053A0F7    ret
*}
end;

//0053A0F8
destructor TTreeNodes.Destroy();
begin
{*
 0053A0F8    push        ebx
 0053A0F9    push        esi
 0053A0FA    call        @BeforeDestruction
 0053A0FF    mov         ebx,edx
 0053A101    mov         esi,eax
 0053A103    mov         eax,esi
 0053A105    call        TTreeNodes.Clear
 0053A10A    mov         dl,0FC
 0053A10C    and         dl,bl
 0053A10E    mov         eax,esi
 0053A110    call        TMemoryStream.Destroy
 0053A115    test        bl,bl
>0053A117    jle         0053A120
 0053A119    mov         eax,esi
 0053A11B    call        @ClassDestroy
 0053A120    pop         esi
 0053A121    pop         ebx
 0053A122    ret
*}
end;

//0053A124
{*function sub_0053A124(?:TTreeNodes):?;
begin
 0053A124    push        ebx
 0053A125    mov         ebx,eax
 0053A127    mov         eax,dword ptr [ebx+4]
 0053A12A    call        TWinControl.HandleAllocated
 0053A12F    test        al,al
>0053A131    je          0053A14D
 0053A133    mov         eax,ebx
 0053A135    call        0053A154
 0053A13A    mov         ebx,eax
 0053A13C    push        0
 0053A13E    push        0
 0053A140    push        1105
 0053A145    push        ebx
 0053A146    call        user32.SendMessageW
 0053A14B    pop         ebx
 0053A14C    ret
 0053A14D    xor         eax,eax
 0053A14F    pop         ebx
 0053A150    ret
end;*}

//0053A154
{*function sub_0053A154(?:TTreeNodes):?;
begin
 0053A154    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 0053A157    call        TWinControl.GetHandle
 0053A15C    ret
end;*}

//0053A160
{*function TTreeNodes.Delete(Node:TTreeNode):?;
begin
 0053A160    mov         eax,edx
 0053A162    call        TTreeNode.Delete
 0053A167    ret
end;*}

//0053A168
procedure TTreeNodes.Clear;
begin
{*
 0053A168    push        ebp
 0053A169    mov         ebp,esp
 0053A16B    add         esp,0FFFFFFF8
 0053A16E    push        ebx
 0053A16F    mov         dword ptr [ebp-4],eax
 0053A172    mov         eax,dword ptr [ebp-4]
 0053A175    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 0053A178    call        TWinControl.HandleAllocated
 0053A17D    mov         byte ptr [ebp-5],al
 0053A180    cmp         byte ptr [ebp-5],0
>0053A184    je          0053A18E
 0053A186    mov         eax,dword ptr [ebp-4]
 0053A189    call        TTreeNodes.BeginUpdate
 0053A18E    xor         edx,edx
 0053A190    push        ebp
 0053A191    push        53A1EE
 0053A196    push        dword ptr fs:[edx]
 0053A199    mov         dword ptr fs:[edx],esp
 0053A19C    mov         eax,dword ptr [ebp-4]
 0053A19F    call        0053AB94
 0053A1A4    mov         eax,dword ptr [ebp-4]
 0053A1A7    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 0053A1AA    call        TWinControl.HandleAllocated
 0053A1AF    test        al,al
>0053A1B1    je          0053A1D2
 0053A1B3    mov         eax,dword ptr [ebp-4]
 0053A1B6    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 0053A1B9    call        TWinControl.GetHandle
 0053A1BE    mov         ebx,eax
 0053A1C0    push        0FFFF0000
 0053A1C5    push        0
 0053A1C7    push        1101
 0053A1CC    push        ebx
 0053A1CD    call        user32.SendMessageW
 0053A1D2    xor         eax,eax
 0053A1D4    pop         edx
 0053A1D5    pop         ecx
 0053A1D6    pop         ecx
 0053A1D7    mov         dword ptr fs:[eax],edx
 0053A1DA    push        53A1F5
 0053A1DF    cmp         byte ptr [ebp-5],0
>0053A1E3    je          0053A1ED
 0053A1E5    mov         eax,dword ptr [ebp-4]
 0053A1E8    call        TTreeNodes.EndUpdate
 0053A1ED    ret
>0053A1EE    jmp         @HandleFinally
>0053A1F3    jmp         0053A1DF
 0053A1F5    pop         ebx
 0053A1F6    pop         ecx
 0053A1F7    pop         ecx
 0053A1F8    pop         ebp
 0053A1F9    ret
*}
end;

//0053A1FC
function TTreeNodes.AddChild(Parent:TTreeNode; S:string):TTreeNode;
begin
{*
 0053A1FC    push        ecx
 0053A1FD    push        0
 0053A1FF    push        2
 0053A201    xor         ecx,ecx
 0053A203    xchg        ecx,edx
 0053A205    call        TTreeNodes.AddNode
 0053A20A    ret
*}
end;

//0053A20C
function TTreeNodes.AddChildObject(Parent:TTreeNode; S:string; Ptr:Pointer):TTreeNode;
begin
{*
 0053A20C    push        ebp
 0053A20D    mov         ebp,esp
 0053A20F    push        ecx
 0053A210    mov         ecx,dword ptr [ebp+8]
 0053A213    push        ecx
 0053A214    push        2
 0053A216    xor         ecx,ecx
 0053A218    xchg        ecx,edx
 0053A21A    call        TTreeNodes.AddNode
 0053A21F    pop         ebp
 0053A220    ret         4
*}
end;

//0053A224
function TTreeNodes.Add(Sibling:TTreeNode; S:string):TTreeNode;
begin
{*
 0053A224    push        ecx
 0053A225    push        0
 0053A227    push        0
 0053A229    xor         ecx,ecx
 0053A22B    xchg        ecx,edx
 0053A22D    call        TTreeNodes.AddNode
 0053A232    ret
*}
end;

//0053A234
function TTreeNodes.AddObject(Sibling:TTreeNode; S:string; Ptr:Pointer):TTreeNode;
begin
{*
 0053A234    push        ebp
 0053A235    mov         ebp,esp
 0053A237    push        ecx
 0053A238    mov         ecx,dword ptr [ebp+8]
 0053A23B    push        ecx
 0053A23C    push        0
 0053A23E    xor         ecx,ecx
 0053A240    xchg        ecx,edx
 0053A242    call        TTreeNodes.AddNode
 0053A247    pop         ebp
 0053A248    ret         4
*}
end;

//0053A24C
function TTreeNodes.AddNode(Node:TTreeNode; Relative:TTreeNode; Method:TNodeAttachMode; Ptr:Pointer; S:string):TTreeNode;
begin
{*
 0053A24C    push        ebp
 0053A24D    mov         ebp,esp
 0053A24F    add         esp,0FFFFFFC4
 0053A252    push        ebx
 0053A253    push        esi
 0053A254    push        edi
 0053A255    xor         ebx,ebx
 0053A257    mov         dword ptr [ebp-3C],ebx
 0053A25A    mov         dword ptr [ebp-4],ecx
 0053A25D    mov         ebx,eax
 0053A25F    xor         eax,eax
 0053A261    push        ebp
 0053A262    push        53A3E4
 0053A267    push        dword ptr fs:[eax]
 0053A26A    mov         dword ptr fs:[eax],esp
 0053A26D    test        edx,edx
>0053A26F    jne         0053A281
 0053A271    mov         eax,dword ptr [ebx+4];TTreeNodes.FOwner:TCustomTreeView
 0053A274    mov         edx,dword ptr [eax]
 0053A276    call        dword ptr [edx+108];TCustomTreeView.sub_0053CD28
 0053A27C    mov         dword ptr [ebp-8],eax
>0053A27F    jmp         0053A284
 0053A281    mov         dword ptr [ebp-8],edx
 0053A284    xor         eax,eax
 0053A286    push        ebp
 0053A287    push        53A3B7
 0053A28C    push        dword ptr fs:[eax]
 0053A28F    mov         dword ptr fs:[eax],esp
 0053A292    xor         esi,esi
 0053A294    xor         eax,eax
 0053A296    mov         dword ptr [ebp-0C],eax
 0053A299    xor         edi,edi
 0053A29B    movzx       eax,byte ptr [ebp+8]
 0053A29F    movzx       eax,byte ptr [eax+7A1578]
 0053A2A6    mov         byte ptr [ebp-0D],al
 0053A2A9    cmp         dword ptr [ebp-4],0
>0053A2AD    je          0053A30B
 0053A2AF    movzx       eax,byte ptr [ebp+8]
 0053A2B3    sub         al,2
>0053A2B5    jb          0053A2BF
 0053A2B7    sub         al,2
>0053A2B9    jb          0053A2D2
>0053A2BB    je          0053A2DA
>0053A2BD    jmp         0053A30B
 0053A2BF    mov         eax,dword ptr [ebp-4]
 0053A2C2    call        005391E4
 0053A2C7    mov         edi,eax
 0053A2C9    test        edi,edi
>0053A2CB    je          0053A30B
 0053A2CD    mov         esi,dword ptr [edi+10]
>0053A2D0    jmp         0053A30B
 0053A2D2    mov         edi,dword ptr [ebp-4]
 0053A2D5    mov         esi,dword ptr [edi+10];TTreeNode.FItemId:HTREEITEM
>0053A2D8    jmp         0053A30B
 0053A2DA    mov         eax,dword ptr [ebp-4]
 0053A2DD    call        005391E4
 0053A2E2    mov         edi,eax
 0053A2E4    test        edi,edi
>0053A2E6    je          0053A2EB
 0053A2E8    mov         esi,dword ptr [edi+10]
 0053A2EB    mov         eax,dword ptr [ebp-4]
 0053A2EE    call        TTreeNode.getPrevSibling
 0053A2F3    mov         dword ptr [ebp-4],eax
 0053A2F6    cmp         dword ptr [ebp-4],0
>0053A2FA    je          0053A307
 0053A2FC    mov         eax,dword ptr [ebp-4]
 0053A2FF    mov         eax,dword ptr [eax+10];TTreeNode.FItemId:HTREEITEM
 0053A302    mov         dword ptr [ebp-0C],eax
>0053A305    jmp         0053A30B
 0053A307    mov         byte ptr [ebp-0D],0
 0053A30B    mov         edx,dword ptr [ebp+0C]
 0053A30E    mov         eax,dword ptr [ebp-8]
 0053A311    call        00538AA4
 0053A316    mov         edx,dword ptr [ebp+10]
 0053A319    mov         eax,dword ptr [ebp-8]
 0053A31C    call        00538A00
 0053A321    lea         ecx,[ebp-38]
 0053A324    mov         edx,dword ptr [ebp-8]
 0053A327    mov         eax,ebx
 0053A329    call        0053A46C
 0053A32E    lea         eax,[ebp-38]
 0053A331    push        eax
 0053A332    movzx       eax,byte ptr [ebp-0D]
 0053A336    push        eax
 0053A337    mov         ecx,dword ptr [ebp-0C]
 0053A33A    mov         edx,esi
 0053A33C    mov         eax,ebx
 0053A33E    call        0053A490
 0053A343    mov         esi,eax
 0053A345    test        esi,esi
>0053A347    jne         0053A36A
 0053A349    lea         edx,[ebp-3C]
 0053A34C    mov         eax,[007C4928];^SResString358:TResStringRec
 0053A351    call        LoadResString
 0053A356    mov         ecx,dword ptr [ebp-3C]
 0053A359    mov         dl,1
 0053A35B    mov         eax,[0046BDEC];EOutOfResources
 0053A360    call        Exception.Create;EOutOfResources.Create
 0053A365    call        @RaiseExcept
 0053A36A    mov         eax,dword ptr [ebp-8]
 0053A36D    mov         dword ptr [eax+10],esi;TTreeNode.FItemId:HTREEITEM
 0053A370    cmp         dword ptr [ebx+8],0;TTreeNodes.FUpdateCount:Integer
>0053A374    jne         0053A395
 0053A376    mov         eax,dword ptr [ebp-8]
 0053A379    call        TTreeNode.IsFirstNode
 0053A37E    test        al,al
>0053A380    je          0053A395
 0053A382    push        0
 0053A384    push        1
 0053A386    push        0B
 0053A388    mov         eax,ebx
 0053A38A    call        0053A154
 0053A38F    push        eax
 0053A390    call        user32.SendMessageW
 0053A395    mov         edx,edi
 0053A397    mov         eax,ebx
 0053A399    call        0053A44C
 0053A39E    mov         eax,dword ptr [ebx+4];TTreeNodes.FOwner:TCustomTreeView
 0053A3A1    mov         edx,dword ptr [ebp-8]
 0053A3A4    mov         si,0FFA6
 0053A3A8    call        @CallDynaInst;TCustomTreeView.sub_0053CB54
 0053A3AD    xor         eax,eax
 0053A3AF    pop         edx
 0053A3B0    pop         ecx
 0053A3B1    pop         ecx
 0053A3B2    mov         dword ptr fs:[eax],edx
>0053A3B5    jmp         0053A3CE
>0053A3B7    jmp         @HandleAnyException
 0053A3BC    mov         eax,dword ptr [ebp-8]
 0053A3BF    call        TObject.Free
 0053A3C4    call        @RaiseAgain
 0053A3C9    call        @DoneExcept
 0053A3CE    xor         eax,eax
 0053A3D0    pop         edx
 0053A3D1    pop         ecx
 0053A3D2    pop         ecx
 0053A3D3    mov         dword ptr fs:[eax],edx
 0053A3D6    push        53A3EB
 0053A3DB    lea         eax,[ebp-3C]
 0053A3DE    call        @UStrClr
 0053A3E3    ret
>0053A3E4    jmp         @HandleFinally
>0053A3E9    jmp         0053A3DB
 0053A3EB    mov         eax,dword ptr [ebp-8]
 0053A3EE    pop         edi
 0053A3EF    pop         esi
 0053A3F0    pop         ebx
 0053A3F1    mov         esp,ebp
 0053A3F3    pop         ebp
 0053A3F4    ret         0C
*}
end;

//0053A3F8
{*procedure sub_0053A3F8(?:TTreeNodes; ?:?);
begin
 0053A3F8    push        ebx
 0053A3F9    push        esi
 0053A3FA    add         esp,0FFFFFFF0
 0053A3FD    mov         ebx,edx
 0053A3FF    mov         esi,eax
 0053A401    cmp         dword ptr [esi+8],1
>0053A405    jge         0053A445
>0053A407    jmp         0053A412
 0053A409    mov         eax,ebx
 0053A40B    call        005391E4
 0053A410    mov         ebx,eax
 0053A412    test        ebx,ebx
>0053A414    je          0053A421
 0053A416    mov         eax,ebx
 0053A418    call        0053992C
 0053A41D    test        al,al
>0053A41F    je          0053A409
 0053A421    test        ebx,ebx
>0053A423    je          0053A445
 0053A425    mov         ecx,esp
 0053A427    xor         edx,edx
 0053A429    mov         eax,ebx
 0053A42B    call        TTreeNode.DisplayRect
 0053A430    push        0FF
 0053A432    lea         eax,[esp+4]
 0053A436    push        eax
 0053A437    mov         eax,dword ptr [esi+4]
 0053A43A    call        TWinControl.GetHandle
 0053A43F    push        eax
 0053A440    call        user32.InvalidateRect
 0053A445    add         esp,10
 0053A448    pop         esi
 0053A449    pop         ebx
 0053A44A    ret
end;*}

//0053A44C
{*procedure sub_0053A44C(?:TTreeNodes; ?:?);
begin
 0053A44C    push        ebx
 0053A44D    push        esi
 0053A44E    mov         ebx,edx
 0053A450    mov         esi,eax
 0053A452    test        ebx,ebx
>0053A454    je          0053A468
 0053A456    mov         dl,1
 0053A458    mov         eax,ebx
 0053A45A    call        005391A8
 0053A45F    mov         edx,ebx
 0053A461    mov         eax,esi
 0053A463    call        0053A3F8
 0053A468    pop         esi
 0053A469    pop         ebx
 0053A46A    ret
end;*}

//0053A46C
{*procedure sub_0053A46C(?:TTreeNodes; ?:TTreeNode; ?:?);
begin
 0053A46C    mov         byte ptr [edx+25],1;TTreeNode.FInTree:Boolean
 0053A470    mov         dword ptr [ecx],27
 0053A476    mov         dword ptr [ecx+24],edx
 0053A479    mov         dword ptr [ecx+10],0FFFFFFFF
 0053A480    mov         dword ptr [ecx+18],0FFFFFFFF
 0053A487    mov         dword ptr [ecx+1C],0FFFFFFFF
 0053A48E    ret
end;*}

//0053A490
{*function sub_0053A490(?:TTreeNodes; ?:?; ?:HTREEITEM; ?:?; ?:?):?;
begin
 0053A490    push        ebp
 0053A491    mov         ebp,esp
 0053A493    add         esp,0FFFFFFBC
 0053A496    push        ebx
 0053A497    push        esi
 0053A498    push        edi
 0053A499    mov         edi,ecx
 0053A49B    mov         esi,edx
 0053A49D    mov         ebx,eax
 0053A49F    mov         eax,ebx
 0053A4A1    call        0053AB94
 0053A4A6    mov         dword ptr [ebp-44],esi
 0053A4A9    movzx       eax,byte ptr [ebp+8]
 0053A4AD    sub         al,1
>0053A4AF    jb          0053A4B9
>0053A4B1    je          0053A4C2
 0053A4B3    dec         al
>0053A4B5    je          0053A4CB
>0053A4B7    jmp         0053A4CE
 0053A4B9    mov         dword ptr [ebp-40],0FFFF0001
>0053A4C0    jmp         0053A4CE
 0053A4C2    mov         dword ptr [ebp-40],0FFFF0002
>0053A4C9    jmp         0053A4CE
 0053A4CB    mov         dword ptr [ebp-40],edi
 0053A4CE    mov         eax,dword ptr [ebp+0C]
 0053A4D1    mov         esi,eax
 0053A4D3    lea         edi,[ebp-3C]
 0053A4D6    mov         ecx,0A
 0053A4DB    rep movs    dword ptr [edi],dword ptr [esi]
 0053A4DD    mov         eax,dword ptr [ebx+4];TTreeNodes.FOwner:TCustomTreeView
 0053A4E0    mov         eax,dword ptr [eax+3C8];TCustomTreeView.FChangeTimer:TTimer
 0053A4E6    xor         edx,edx
 0053A4E8    call        TTimer.SetEnabled
 0053A4ED    mov         eax,ebx
 0053A4EF    call        0053A154
 0053A4F4    mov         ebx,eax
 0053A4F6    lea         eax,[ebp-44]
 0053A4F9    push        eax
 0053A4FA    push        0
 0053A4FC    push        1132
 0053A501    push        ebx
 0053A502    call        user32.SendMessageW
 0053A507    pop         edi
 0053A508    pop         esi
 0053A509    pop         ebx
 0053A50A    mov         esp,ebp
 0053A50C    pop         ebp
 0053A50D    ret         8
end;*}

//0053A510
function TTreeNodes.GetFirstNode:TTreeNode;
begin
{*
 0053A510    push        ebx
 0053A511    mov         ebx,eax
 0053A513    mov         eax,ebx
 0053A515    call        0053A154
 0053A51A    call        004CFF0C
 0053A51F    mov         edx,eax
 0053A521    mov         eax,ebx
 0053A523    call        TTreeNodes.GetNode
 0053A528    pop         ebx
 0053A529    ret
*}
end;

//0053A52C
function TTreeNodes.GetNodeFromIndex(Index:Integer):TTreeNode;
begin
{*
 0053A52C    push        ebp
 0053A52D    mov         ebp,esp
 0053A52F    push        0
 0053A531    push        0
 0053A533    push        0
 0053A535    push        ebx
 0053A536    push        esi
 0053A537    push        edi
 0053A538    mov         dword ptr [ebp-4],edx
 0053A53B    mov         esi,eax
 0053A53D    xor         eax,eax
 0053A53F    push        ebp
 0053A540    push        53A601
 0053A545    push        dword ptr fs:[eax]
 0053A548    mov         dword ptr fs:[eax],esp
 0053A54B    cmp         dword ptr [ebp-4],0
>0053A54F    jge         0053A566
 0053A551    lea         edx,[ebp-8]
 0053A554    mov         eax,[007C4E30];^SResString357:TResStringRec
 0053A559    call        LoadResString
 0053A55E    mov         eax,dword ptr [ebp-8]
 0053A561    call        005387E4
 0053A566    cmp         dword ptr [esi+0C],0;TTreeNodes.FNodeCache:TNodeCache
>0053A56A    je          0053A5A4
 0053A56C    mov         eax,dword ptr [esi+10]
 0053A56F    sub         eax,dword ptr [ebp-4]
 0053A572    cdq
 0053A573    xor         eax,edx
 0053A575    sub         eax,edx
 0053A577    dec         eax
>0053A578    jg          0053A5A4
 0053A57A    lea         eax,[esi+0C];TTreeNodes.FNodeCache:TNodeCache
 0053A57D    mov         edx,dword ptr [eax+4]
 0053A580    cmp         edx,dword ptr [ebp-4]
>0053A583    jne         0053A589
 0053A585    mov         ebx,dword ptr [eax]
>0053A587    jmp         0053A5C4
 0053A589    cmp         edx,dword ptr [ebp-4]
>0053A58C    jle         0053A599
 0053A58E    mov         eax,dword ptr [eax]
 0053A590    call        TTreeNode.GetPrev
 0053A595    mov         ebx,eax
>0053A597    jmp         0053A5C4
 0053A599    mov         eax,dword ptr [eax]
 0053A59B    call        TTreeNode.GetNext
 0053A5A0    mov         ebx,eax
>0053A5A2    jmp         0053A5C4
 0053A5A4    mov         eax,esi
 0053A5A6    call        TTreeNodes.GetFirstNode
 0053A5AB    mov         ebx,eax
 0053A5AD    mov         edi,dword ptr [ebp-4]
>0053A5B0    jmp         0053A5BC
 0053A5B2    mov         eax,ebx
 0053A5B4    call        TTreeNode.GetNext
 0053A5B9    mov         ebx,eax
 0053A5BB    dec         edi
 0053A5BC    test        edi,edi
>0053A5BE    je          0053A5C4
 0053A5C0    test        ebx,ebx
>0053A5C2    jne         0053A5B2
 0053A5C4    test        ebx,ebx
>0053A5C6    jne         0053A5DD
 0053A5C8    lea         edx,[ebp-0C]
 0053A5CB    mov         eax,[007C4E30];^SResString357:TResStringRec
 0053A5D0    call        LoadResString
 0053A5D5    mov         eax,dword ptr [ebp-0C]
 0053A5D8    call        005387E4
 0053A5DD    mov         dword ptr [esi+0C],ebx;TTreeNodes.FNodeCache:TNodeCache
 0053A5E0    mov         eax,dword ptr [ebp-4]
 0053A5E3    mov         dword ptr [esi+10],eax
 0053A5E6    xor         eax,eax
 0053A5E8    pop         edx
 0053A5E9    pop         ecx
 0053A5EA    pop         ecx
 0053A5EB    mov         dword ptr fs:[eax],edx
 0053A5EE    push        53A608
 0053A5F3    lea         eax,[ebp-0C]
 0053A5F6    mov         edx,2
 0053A5FB    call        @UStrArrayClr
 0053A600    ret
>0053A601    jmp         @HandleFinally
>0053A606    jmp         0053A5F3
 0053A608    mov         eax,ebx
 0053A60A    pop         edi
 0053A60B    pop         esi
 0053A60C    pop         ebx
 0053A60D    mov         esp,ebp
 0053A60F    pop         ebp
 0053A610    ret
*}
end;

//0053A614
function TTreeNodes.GetNode(ItemId:HTREEITEM):TTreeNode;
begin
{*
 0053A614    push        ebx
 0053A615    add         esp,0FFFFFFD8
 0053A618    mov         dword ptr [esp+4],edx
 0053A61C    mov         dword ptr [esp],4
 0053A623    call        0053A154
 0053A628    mov         ebx,eax
 0053A62A    mov         eax,esp
 0053A62C    push        eax
 0053A62D    push        0
 0053A62F    push        113E
 0053A634    push        ebx
 0053A635    call        user32.SendMessageW
 0053A63A    test        eax,eax
>0053A63C    je          0053A644
 0053A63E    mov         eax,dword ptr [esp+24]
>0053A642    jmp         0053A646
 0053A644    xor         eax,eax
 0053A646    add         esp,28
 0053A649    pop         ebx
 0053A64A    ret
*}
end;

//0053A64C
procedure TTreeNodes.BeginUpdate;
begin
{*
 0053A64C    push        ebx
 0053A64D    mov         ebx,eax
 0053A64F    cmp         dword ptr [ebx+8],0;TTreeNodes.FUpdateCount:Integer
>0053A653    jne         0053A65E
 0053A655    mov         dl,1
 0053A657    mov         eax,ebx
 0053A659    call        0053A664
 0053A65E    inc         dword ptr [ebx+8];TTreeNodes.FUpdateCount:Integer
 0053A661    pop         ebx
 0053A662    ret
*}
end;

//0053A664
{*procedure sub_0053A664(?:TTreeNodes; ?:?);
begin
 0053A664    push        ebx
 0053A665    push        esi
 0053A666    mov         ebx,edx
 0053A668    mov         esi,eax
 0053A66A    push        0
 0053A66C    mov         eax,ebx
 0053A66E    xor         al,1
 0053A670    and         eax,7F
 0053A673    push        eax
 0053A674    push        0B
 0053A676    mov         eax,esi
 0053A678    call        0053A154
 0053A67D    push        eax
 0053A67E    call        user32.SendMessageW
 0053A683    xor         bl,1
 0053A686    test        bl,bl
>0053A688    je          0053A692
 0053A68A    mov         eax,dword ptr [esi+4];TTreeNodes.FOwner:TCustomTreeView
 0053A68D    call        TControl.Refresh
 0053A692    pop         esi
 0053A693    pop         ebx
 0053A694    ret
end;*}

//0053A698
procedure TTreeNodes.EndUpdate;
begin
{*
 0053A698    dec         dword ptr [eax+8];TTreeNodes.FUpdateCount:Integer
 0053A69B    cmp         dword ptr [eax+8],0;TTreeNodes.FUpdateCount:Integer
>0053A69F    jne         0053A6A8
 0053A6A1    xor         edx,edx
 0053A6A3    call        0053A664
 0053A6A8    ret
*}
end;

//0053A6AC
procedure TTreeNodes.Assign(Source:TPersistent);
begin
{*
 0053A6AC    push        ebp
 0053A6AD    mov         ebp,esp
 0053A6AF    push        ecx
 0053A6B0    push        ebx
 0053A6B1    push        esi
 0053A6B2    mov         esi,edx
 0053A6B4    mov         ebx,eax
 0053A6B6    mov         eax,ebx
 0053A6B8    call        0053AB94
 0053A6BD    mov         eax,esi
 0053A6BF    mov         edx,dword ptr ds:[525070];TTreeNodes
 0053A6C5    call        @IsClass
 0053A6CA    test        al,al
>0053A6CC    je          0053A72F
 0053A6CE    mov         eax,ebx
 0053A6D0    call        TTreeNodes.Clear
 0053A6D5    mov         dl,1
 0053A6D7    mov         eax,[00472CE4];TMemoryStream
 0053A6DC    call        TObject.Create;TMemoryStream.Create
 0053A6E1    mov         dword ptr [ebp-4],eax
 0053A6E4    xor         eax,eax
 0053A6E6    push        ebp
 0053A6E7    push        53A728
 0053A6EC    push        dword ptr fs:[eax]
 0053A6EF    mov         dword ptr fs:[eax],esp
 0053A6F2    mov         edx,dword ptr [ebp-4]
 0053A6F5    mov         eax,esi
 0053A6F7    call        0053AA44
 0053A6FC    push        0
 0053A6FE    push        0
 0053A700    mov         eax,dword ptr [ebp-4]
 0053A703    call        TStream.SetPosition
 0053A708    mov         edx,dword ptr [ebp-4]
 0053A70B    mov         eax,ebx
 0053A70D    call        0053A940
 0053A712    xor         eax,eax
 0053A714    pop         edx
 0053A715    pop         ecx
 0053A716    pop         ecx
 0053A717    mov         dword ptr fs:[eax],edx
 0053A71A    push        53A738
 0053A71F    mov         eax,dword ptr [ebp-4]
 0053A722    call        TObject.Free
 0053A727    ret
>0053A728    jmp         @HandleFinally
>0053A72D    jmp         0053A71F
 0053A72F    mov         edx,esi
 0053A731    mov         eax,ebx
 0053A733    call        TPersistent.Assign
 0053A738    pop         esi
 0053A739    pop         ebx
 0053A73A    pop         ecx
 0053A73B    pop         ebp
 0053A73C    ret
*}
end;

//0053A740
{*function sub_0053A740(?:?):?;
begin
 0053A740    push        ebp
 0053A741    mov         ebp,esp
 0053A743    push        ecx
 0053A744    push        ebx
 0053A745    push        esi
 0053A746    push        edi
 0053A747    mov         eax,dword ptr [ebp+8]
 0053A74A    mov         eax,dword ptr [eax-4]
 0053A74D    mov         edi,dword ptr [eax+20]
 0053A750    test        edi,edi
>0053A752    jne         0053A766
 0053A754    mov         eax,dword ptr [ebp+8]
 0053A757    mov         eax,dword ptr [eax-8]
 0053A75A    call        0053A124
 0053A75F    test        eax,eax
 0053A761    setg        bl
>0053A764    jmp         0053A7C6
 0053A766    mov         eax,edi
 0053A768    call        0053A124
 0053A76D    mov         ebx,eax
 0053A76F    mov         eax,dword ptr [ebp+8]
 0053A772    mov         eax,dword ptr [eax-8]
 0053A775    call        0053A124
 0053A77A    cmp         ebx,eax
>0053A77C    je          0053A782
 0053A77E    mov         bl,1
>0053A780    jmp         0053A7C6
 0053A782    xor         ebx,ebx
 0053A784    mov         eax,dword ptr [ebp+8]
 0053A787    mov         eax,dword ptr [eax-8]
 0053A78A    call        0053A124
 0053A78F    dec         eax
 0053A790    test        eax,eax
>0053A792    jl          0053A7C6
 0053A794    inc         eax
 0053A795    mov         dword ptr [ebp-4],eax
 0053A798    xor         esi,esi
 0053A79A    mov         edx,esi
 0053A79C    mov         eax,edi
 0053A79E    call        TTreeNodes.GetNodeFromIndex
 0053A7A3    push        eax
 0053A7A4    mov         eax,dword ptr [ebp+8]
 0053A7A7    mov         eax,dword ptr [eax-8]
 0053A7AA    mov         edx,esi
 0053A7AC    call        TTreeNodes.GetNodeFromIndex
 0053A7B1    pop         edx
 0053A7B2    call        00539B10
 0053A7B7    mov         ebx,eax
 0053A7B9    xor         bl,1
 0053A7BC    test        bl,bl
>0053A7BE    jne         0053A7C6
 0053A7C0    inc         esi
 0053A7C1    dec         dword ptr [ebp-4]
>0053A7C4    jne         0053A79A
 0053A7C6    mov         eax,ebx
 0053A7C8    pop         edi
 0053A7C9    pop         esi
 0053A7CA    pop         ebx
 0053A7CB    pop         ecx
 0053A7CC    pop         ebp
 0053A7CD    ret
end;*}

//0053A7D0
procedure TTreeNodes.DefineProperties(Filer:TFiler);
begin
{*
 0053A7D0    push        ebp
 0053A7D1    mov         ebp,esp
 0053A7D3    add         esp,0FFFFFFF8
 0053A7D6    push        ebx
 0053A7D7    mov         dword ptr [ebp-4],edx
 0053A7DA    mov         dword ptr [ebp-8],eax
 0053A7DD    mov         edx,dword ptr [ebp-4]
 0053A7E0    mov         eax,dword ptr [ebp-8]
 0053A7E3    call        TPersistent.DefineProperties
 0053A7E8    mov         eax,dword ptr [ebp-8]
 0053A7EB    push        eax
 0053A7EC    push        53A86C
 0053A7F1    push        0
 0053A7F3    push        0
 0053A7F5    xor         ecx,ecx
 0053A7F7    mov         edx,53A840;'Data'
 0053A7FC    mov         eax,dword ptr [ebp-4]
 0053A7FF    mov         ebx,dword ptr [eax]
 0053A801    call        dword ptr [ebx+8];TFiler.DefineBinaryProperty
 0053A804    mov         eax,dword ptr [ebp-8]
 0053A807    push        eax
 0053A808    push        53A940;sub_0053A940
 0053A80D    mov         eax,dword ptr [ebp-8]
 0053A810    push        eax
 0053A811    push        53AA44;sub_0053AA44
 0053A816    push        ebp
 0053A817    call        0053A740
 0053A81C    pop         ecx
 0053A81D    mov         ecx,eax
 0053A81F    mov         edx,53A858;'NodeData'
 0053A824    mov         eax,dword ptr [ebp-4]
 0053A827    mov         ebx,dword ptr [eax]
 0053A829    call        dword ptr [ebx+8];TFiler.DefineBinaryProperty
 0053A82C    pop         ebx
 0053A82D    pop         ecx
 0053A82E    pop         ecx
 0053A82F    pop         ebp
 0053A830    ret
*}
end;

//0053A940
procedure sub_0053A940(?:TTreeNodes; ?:TMemoryStream);
begin
{*
 0053A940    push        ebp
 0053A941    mov         ebp,esp
 0053A943    add         esp,0FFFFFFEC
 0053A946    push        ebx
 0053A947    push        esi
 0053A948    push        edi
 0053A949    mov         dword ptr [ebp-8],edx
 0053A94C    mov         dword ptr [ebp-4],eax
 0053A94F    mov         eax,dword ptr [ebp-4]
 0053A952    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 0053A955    call        TWinControl.HandleAllocated
 0053A95A    mov         byte ptr [ebp-11],al
 0053A95D    cmp         byte ptr [ebp-11],0
>0053A961    je          0053A96B
 0053A963    mov         eax,dword ptr [ebp-4]
 0053A966    call        TTreeNodes.BeginUpdate
 0053A96B    mov         eax,dword ptr [ebp-4]
 0053A96E    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 0053A971    mov         byte ptr [eax+31D],1;TCustomTreeView.FReading:Boolean
 0053A978    xor         edx,edx
 0053A97A    push        ebp
 0053A97B    push        53AA33
 0053A980    push        dword ptr fs:[edx]
 0053A983    mov         dword ptr fs:[edx],esp
 0053A986    mov         eax,dword ptr [ebp-4]
 0053A989    call        TTreeNodes.Clear
 0053A98E    lea         edx,[ebp-9]
 0053A991    mov         ecx,1
 0053A996    mov         eax,dword ptr [ebp-8]
 0053A999    call        TStream.ReadBuffer
 0053A99E    movzx       eax,byte ptr [ebp-9]
 0053A9A2    dec         al
>0053A9A4    je          0053A9B0
 0053A9A6    sub         al,2
>0053A9A8    je          0053A9B4
 0053A9AA    dec         al
>0053A9AC    je          0053A9B8
>0053A9AE    jmp         0053A9BC
 0053A9B0    xor         ebx,ebx
>0053A9B2    jmp         0053A9C3
 0053A9B4    mov         bl,4
>0053A9B6    jmp         0053A9C3
 0053A9B8    mov         bl,5
>0053A9BA    jmp         0053A9C3
 0053A9BC    call        @TryFinallyExit
>0053A9C1    jmp         0053AA3A
 0053A9C3    lea         edx,[ebp-10]
 0053A9C6    mov         ecx,4
 0053A9CB    mov         eax,dword ptr [ebp-8]
 0053A9CE    call        TStream.ReadBuffer
 0053A9D3    mov         edi,dword ptr [ebp-10]
 0053A9D6    dec         edi
 0053A9D7    test        edi,edi
>0053A9D9    jl          0053AA0A
 0053A9DB    inc         edi
 0053A9DC    xor         ecx,ecx
 0053A9DE    xor         edx,edx
 0053A9E0    mov         eax,dword ptr [ebp-4]
 0053A9E3    call        TTreeNodes.Add
 0053A9E8    mov         esi,eax
 0053A9EA    mov         ecx,ebx
 0053A9EC    mov         edx,dword ptr [ebp-8]
 0053A9EF    mov         eax,esi
 0053A9F1    call        00539C38
 0053A9F6    mov         eax,dword ptr [ebp-4]
 0053A9F9    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 0053A9FC    mov         edx,esi
 0053A9FE    mov         si,0FFA6
 0053AA02    call        @CallDynaInst;TCustomTreeView.sub_0053CB54
 0053AA07    dec         edi
>0053AA08    jne         0053A9DC
 0053AA0A    xor         eax,eax
 0053AA0C    pop         edx
 0053AA0D    pop         ecx
 0053AA0E    pop         ecx
 0053AA0F    mov         dword ptr fs:[eax],edx
 0053AA12    push        53AA3A
 0053AA17    mov         eax,dword ptr [ebp-4]
 0053AA1A    mov         eax,dword ptr [eax+4];TTreeNodes.FOwner:TCustomTreeView
 0053AA1D    mov         byte ptr [eax+31D],0;TCustomTreeView.FReading:Boolean
 0053AA24    cmp         byte ptr [ebp-11],0
>0053AA28    je          0053AA32
 0053AA2A    mov         eax,dword ptr [ebp-4]
 0053AA2D    call        TTreeNodes.EndUpdate
 0053AA32    ret
>0053AA33    jmp         @HandleFinally
>0053AA38    jmp         0053AA17
 0053AA3A    pop         edi
 0053AA3B    pop         esi
 0053AA3C    pop         ebx
 0053AA3D    mov         esp,ebp
 0053AA3F    pop         ebp
 0053AA40    ret
*}
end;

//0053AA44
procedure sub_0053AA44(?:TPersistent; ?:TMemoryStream);
begin
{*
 0053AA44    push        ebx
 0053AA45    push        esi
 0053AA46    push        edi
 0053AA47    add         esp,0FFFFFFF8
 0053AA4A    mov         esi,edx
 0053AA4C    mov         edi,eax
 0053AA4E    xor         eax,eax
 0053AA50    mov         dword ptr [esp],eax
 0053AA53    mov         eax,edi
 0053AA55    call        TTreeNodes.GetFirstNode
 0053AA5A    mov         ebx,eax
 0053AA5C    test        ebx,ebx
>0053AA5E    je          0053AA70
 0053AA60    inc         dword ptr [esp]
 0053AA63    mov         eax,ebx
 0053AA65    call        TTreeNode.getNextSibling
 0053AA6A    mov         ebx,eax
 0053AA6C    test        ebx,ebx
>0053AA6E    jne         0053AA60
 0053AA70    mov         byte ptr [esp+4],3
 0053AA75    lea         edx,[esp+4]
 0053AA79    mov         ecx,1
 0053AA7E    mov         eax,esi
 0053AA80    call        TStream.WriteBuffer
 0053AA85    mov         edx,esp
 0053AA87    mov         ecx,4
 0053AA8C    mov         eax,esi
 0053AA8E    call        TStream.WriteBuffer
 0053AA93    mov         eax,edi
 0053AA95    call        TTreeNodes.GetFirstNode
 0053AA9A    mov         ebx,eax
 0053AA9C    test        ebx,ebx
>0053AA9E    je          0053AAB6
 0053AAA0    mov         edx,esi
 0053AAA2    mov         eax,ebx
 0053AAA4    call        00539F70
 0053AAA9    mov         eax,ebx
 0053AAAB    call        TTreeNode.getNextSibling
 0053AAB0    mov         ebx,eax
 0053AAB2    test        ebx,ebx
>0053AAB4    jne         0053AAA0
 0053AAB6    pop         ecx
 0053AAB7    pop         edx
 0053AAB8    pop         edi
 0053AAB9    pop         esi
 0053AABA    pop         ebx
 0053AABB    ret
*}
end;

//0053AABC
procedure sub_0053AABC(?:TTreeNodes; ?:TMemoryStream);
begin
{*
 0053AABC    push        ebx
 0053AABD    push        esi
 0053AABE    push        edi
 0053AABF    add         esp,0FFFFFFF8
 0053AAC2    mov         edi,edx
 0053AAC4    mov         ebx,eax
 0053AAC6    mov         eax,edi
 0053AAC8    mov         edx,dword ptr [eax]
 0053AACA    call        dword ptr [edx]
 0053AACC    push        edx
 0053AACD    push        eax
 0053AACE    mov         eax,edi
 0053AAD0    call        TStream.GetPosition
 0053AAD5    cmp         edx,dword ptr [esp+4]
>0053AAD9    jne         0053AAE4
 0053AADB    cmp         eax,dword ptr [esp]
 0053AADE    pop         edx
 0053AADF    pop         eax
>0053AAE0    jae         0053AB32
>0053AAE2    jmp         0053AAE8
 0053AAE4    pop         edx
 0053AAE5    pop         eax
>0053AAE6    jge         0053AB32
 0053AAE8    mov         edx,esp
 0053AAEA    mov         ecx,4
 0053AAEF    mov         eax,edi
 0053AAF1    call        TStream.ReadBuffer
 0053AAF6    xor         esi,esi
 0053AAF8    mov         eax,ebx
 0053AAFA    call        TTreeNodes.GetFirstNode
 0053AAFF    mov         ebx,eax
>0053AB01    jmp         0053AB29
 0053AB03    lea         edx,[esp+4]
 0053AB07    mov         ecx,1
 0053AB0C    mov         eax,edi
 0053AB0E    call        TStream.ReadBuffer
 0053AB13    movzx       edx,byte ptr [esp+4]
 0053AB18    mov         eax,ebx
 0053AB1A    call        00538FE0
 0053AB1F    inc         esi
 0053AB20    mov         eax,ebx
 0053AB22    call        TTreeNode.GetNext
 0053AB27    mov         ebx,eax
 0053AB29    cmp         esi,dword ptr [esp]
>0053AB2C    jge         0053AB32
 0053AB2E    test        ebx,ebx
>0053AB30    jne         0053AB03
 0053AB32    pop         ecx
 0053AB33    pop         edx
 0053AB34    pop         edi
 0053AB35    pop         esi
 0053AB36    pop         ebx
 0053AB37    ret
*}
end;

//0053AB38
procedure sub_0053AB38(?:TTreeNodes; ?:TMemoryStream);
begin
{*
 0053AB38    push        ebx
 0053AB39    push        esi
 0053AB3A    add         esp,0FFFFFFF8
 0053AB3D    mov         esi,edx
 0053AB3F    mov         ebx,eax
 0053AB41    mov         eax,ebx
 0053AB43    call        0053A124
 0053AB48    mov         dword ptr [esp],eax
 0053AB4B    mov         edx,esp
 0053AB4D    mov         ecx,4
 0053AB52    mov         eax,esi
 0053AB54    call        TStream.WriteBuffer
 0053AB59    mov         eax,ebx
 0053AB5B    call        TTreeNodes.GetFirstNode
 0053AB60    mov         ebx,eax
 0053AB62    test        ebx,ebx
>0053AB64    je          0053AB8E
 0053AB66    mov         eax,ebx
 0053AB68    call        00538FD8
 0053AB6D    mov         byte ptr [esp+4],al
 0053AB71    lea         edx,[esp+4]
 0053AB75    mov         ecx,1
 0053AB7A    mov         eax,esi
 0053AB7C    call        TStream.WriteBuffer
 0053AB81    mov         eax,ebx
 0053AB83    call        TTreeNode.GetNext
 0053AB88    mov         ebx,eax
 0053AB8A    test        ebx,ebx
>0053AB8C    jne         0053AB66
 0053AB8E    pop         ecx
 0053AB8F    pop         edx
 0053AB90    pop         esi
 0053AB91    pop         ebx
 0053AB92    ret
*}
end;

//0053AB94
procedure sub_0053AB94(?:TTreeNodes);
begin
{*
 0053AB94    xor         edx,edx
 0053AB96    mov         dword ptr [eax+0C],edx;TTreeNodes.FNodeCache:TNodeCache
 0053AB99    ret
*}
end;

//0053AB9C
constructor TCustomTreeView.Create(AOwner:TComponent);
begin
{*
 0053AB9C    push        ebp
 0053AB9D    mov         ebp,esp
 0053AB9F    push        ecx
 0053ABA0    push        ebx
 0053ABA1    push        esi
 0053ABA2    test        dl,dl
>0053ABA4    je          0053ABAE
 0053ABA6    add         esp,0FFFFFFF0
 0053ABA9    call        @ClassCreate
 0053ABAE    mov         byte ptr [ebp-1],dl
 0053ABB1    mov         ebx,eax
 0053ABB3    xor         edx,edx
 0053ABB5    mov         eax,ebx
 0053ABB7    call        TWinControl.Create
 0053ABBC    mov         eax,[0053AD74];0x2 gvar_0053AD74
 0053ABC1    not         eax
 0053ABC3    and         eax,dword ptr [ebx+60];TCustomTreeView.FControlStyle:TControlStyle
 0053ABC6    or          eax,dword ptr ds:[53AD78];0x86000 gvar_0053AD78
 0053ABCC    mov         dword ptr [ebx+60],eax;TCustomTreeView.FControlStyle:TControlStyle
 0053ABCF    mov         edx,79
 0053ABD4    mov         eax,ebx
 0053ABD6    call        TControl.SetWidth
 0053ABDB    mov         edx,61
 0053ABE0    mov         eax,ebx
 0053ABE2    call        TControl.SetHeight
 0053ABE7    mov         dl,1
 0053ABE9    mov         eax,ebx
 0053ABEB    call        TWinControl.SetTabStop
 0053ABF0    xor         edx,edx
 0053ABF2    mov         eax,ebx
 0053ABF4    call        TGroupBox.SetParentColor
 0053ABF9    mov         dl,1
 0053ABFB    mov         eax,[004D9044];TControlCanvas
 0053AC00    call        TCanvas.Create;TControlCanvas.Create
 0053AC05    mov         esi,eax
 0053AC07    mov         dword ptr [ebx+294],esi;TCustomTreeView.FCanvas:TCanvas
 0053AC0D    mov         eax,esi
 0053AC0F    mov         edx,ebx
 0053AC11    call        TControlCanvas.SetControl
 0053AC16    mov         eax,ebx
 0053AC18    mov         edx,dword ptr [eax]
 0053AC1A    call        dword ptr [edx+10C];TCustomTreeView.sub_0053CD60
 0053AC20    mov         dword ptr [ebx+2F8],eax;TCustomTreeView.FTreeNodes:TTreeNodes
 0053AC26    mov         byte ptr [ebx+291],1;TCustomTreeView.FBorderStyle:TBorderStyle
 0053AC2D    mov         byte ptr [ebx+2E4],1;TCustomTreeView.FShowButtons:Boolean
 0053AC34    mov         byte ptr [ebx+2E6],1;TCustomTreeView.FShowRoot:Boolean
 0053AC3B    mov         byte ptr [ebx+2E5],1;TCustomTreeView.FShowLines:Boolean
 0053AC42    mov         byte ptr [ebx+2B4],1;TCustomTreeView.FHideSelection:Boolean
 0053AC49    push        20
 0053AC4B    mov         ecx,20
 0053AC50    mov         dl,1
 0053AC52    mov         eax,[004E080C];TDragImageList
 0053AC57    call        TDragImageList.Create;TDragImageList.Create
 0053AC5C    mov         dword ptr [ebx+2A8],eax;TCustomTreeView.FDragImage:TDragImageList
 0053AC62    mov         dword ptr [ebx+2D8],0FFFFFFFF;TCustomTreeView.FSaveIndent:Integer
 0053AC6C    mov         dl,1
 0053AC6E    mov         eax,[0046C204];TList
 0053AC73    call        TObject.Create;TList.Create
 0053AC78    mov         dword ptr [ebx+304],eax;TCustomTreeView.FSelections:TList
 0053AC7E    mov         byte ptr [ebx+300],0;TCustomTreeView.FMultiSelect:Boolean
 0053AC85    movzx       eax,byte ptr ds:[53AD7C];0x1 gvar_0053AD7C
 0053AC8C    mov         byte ptr [ebx+301],al;TCustomTreeView.FMultiSelectStyle:TMultiSelectStyle
 0053AC92    mov         ecx,ebx
 0053AC94    mov         dl,1
 0053AC96    mov         eax,[00561460];TTimer
 0053AC9B    call        TTimer.Create;TTimer.Create
 0053ACA0    mov         esi,eax
 0053ACA2    mov         dword ptr [ebx+3C8],esi;TCustomTreeView.FChangeTimer:TTimer
 0053ACA8    mov         eax,esi
 0053ACAA    xor         edx,edx
 0053ACAC    call        TTimer.SetEnabled
 0053ACB1    mov         eax,dword ptr [ebx+3C8];TCustomTreeView.FChangeTimer:TTimer
 0053ACB7    xor         edx,edx
 0053ACB9    call        TTimer.SetInterval
 0053ACBE    push        ebx
 0053ACBF    push        53BB24
 0053ACC4    mov         eax,dword ptr [ebx+3C8];TCustomTreeView.FChangeTimer:TTimer
 0053ACCA    call        TTimer.SetOnTimer
 0053ACCF    mov         byte ptr [ebx+31C],1;TCustomTreeView.FCreateWndRestores:Boolean
 0053ACD6    mov         byte ptr [ebx+2F4],1;TCustomTreeView.FToolTips:Boolean
 0053ACDD    push        ebx
 0053ACDE    push        53B458
 0053ACE3    call        MakeObjectInstance
 0053ACE8    mov         dword ptr [ebx+2A0],eax;TCustomTreeView.FEditInstance:Pointer
 0053ACEE    mov         dl,1
 0053ACF0    mov         eax,[005A6CE0];TChangeLink
 0053ACF5    call        TChangeLink.Create;TChangeLink.Create
 0053ACFA    mov         esi,eax
 0053ACFC    mov         dword ptr [ebx+2B8],esi;TCustomTreeView.FImageChangeLink:TChangeLink
 0053AD02    mov         dword ptr [esi+14],ebx;TChangeLink.?f14:TCustomActionList
 0053AD05    mov         dword ptr [esi+10],53CDA0;TChangeLink.FOnChange:TNotifyEvent sub_0053CDA0
 0053AD0C    mov         dl,1
 0053AD0E    mov         eax,[005A6CE0];TChangeLink
 0053AD13    call        TChangeLink.Create;TChangeLink.Create
 0053AD18    mov         esi,eax
 0053AD1A    mov         dword ptr [ebx+2F0],esi;TCustomTreeView.FStateChangeLink:TChangeLink
 0053AD20    mov         dword ptr [esi+14],ebx;TChangeLink.?f14:TCustomActionList
 0053AD23    mov         dword ptr [esi+10],53CDA0;TChangeLink.FOnChange:TNotifyEvent sub_0053CDA0
 0053AD2A    mov         dword ptr [ebx+2D4],0FFFFFFFF;TCustomTreeView.FSaveIndex:Integer
 0053AD34    mov         byte ptr [ebx+2C0],0;TCustomTreeView.FInBufferedPrintClient:Boolean
 0053AD3B    mov         eax,dword ptr [ebx+0BC];TCustomTreeView.FTouchManager:TTouchManager
 0053AD41    movzx       edx,byte ptr ds:[53AD80];0x12 gvar_0053AD80
 0053AD48    mov         byte ptr [eax+10],dl;TTouchManager.FInteractiveGestures:TInteractiveGestures
 0053AD4B    movzx       edx,byte ptr ds:[53AD84];0x1F gvar_0053AD84
 0053AD52    mov         byte ptr [eax+11],dl;TTouchManager.FInteractiveGestureOptions:TInteractiveGestureOptions
 0053AD55    mov         eax,ebx
 0053AD57    cmp         byte ptr [ebp-1],0
>0053AD5B    je          0053AD6C
 0053AD5D    call        @AfterConstruction
 0053AD62    pop         dword ptr fs:[0]
 0053AD69    add         esp,0C
 0053AD6C    mov         eax,ebx
 0053AD6E    pop         esi
 0053AD6F    pop         ebx
 0053AD70    pop         ecx
 0053AD71    pop         ebp
 0053AD72    ret
*}
end;

Initialization
//0079D348
{*
 0079D348    sub         dword ptr ds:[7CA6A0],1
>0079D34F    jae         0079D367
 0079D351    mov         ecx,dword ptr ds:[5326F4];TTreeViewStyleHook
 0079D357    mov         edx,dword ptr ds:[52638C];TCustomTreeView
 0079D35D    mov         eax,[005738E0];TCustomStyleEngine
 0079D362    call        TCustomStyleEngine.RegisterStyleHook
 0079D367    ret
*}
Finalization
end.