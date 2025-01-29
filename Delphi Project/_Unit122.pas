//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit122;

interface

uses
  SysUtils, Classes, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.StdActns, Vcl.ComCtrls, FXFileImport, FXFileExport, FXNetAutoConfig, FXSpecialSettings, FXDelayedControlRange, FXDCData, System.Generics.Collections;

type
  TComparer<FXDCData.TDCAddr> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TDCAddr>.Default(?:?);//00774934
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<FXDCData.TDCIoLine> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TDCIoLine>.Default(?:?);//00774954
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<FXDCData.TDCIoUnit> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TDCIoUnit>.Default(?:?);//00774974
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<FXDCData.TDCLoop> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TDCLoop>.Default(?:?);//00774994
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<FXDCData.TDCPanel> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TDCPanel>.Default(?:?);//007749B4
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TComparer<FXDCData.TCtrlOutput> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure TCtrlOutput>.Default(?:?);//007749D4
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TDCErrorFrm = class(TForm)
  published
    Memo1:TMemo;//f3C0
    procedure FormCreate(Sender:TObject);//00775A8C
  end;
  TSearchCriteria = (scByInput, scByOutput, scByCGroup);
  TDCCauseEffectForm = class(TForm)
  published
    Panel1:TPanel;//f3C0
    ViewSelector:TRadioGroup;//f3C4
    lblPanel:TLabel;//f3C8
    lbPanel:TListBox;//f3CC
    lblLoop:TLabel;//f3D0
    lbLoop:TListBox;//f3D4
    lblAddress:TLabel;//f3D8
    lbAddress:TListBox;//f3DC
    lblGroup:TLabel;//f3E0
    rbInput:TRadioButton;//f3E4
    rbOutput:TRadioButton;//f3E8
    edGroup:TEdit;//f3EC
    btnSearch:TButton;//f3F0
    PanelAx:TPanel;//f3F4
    PanelBx:TPanel;//f3F8
    TreeA:TTreeView;//f3FC
    HeaderB:THeaderControl;//f400
    TreeB:TTreeView;//f404
    HeaderA:THeaderControl;//f408
    Splitter1:TSplitter;//f40C
    PanelA3:TPanel;//f410
    lblInputsHeader:TLabel;//f414
    PanelB3:TPanel;//f418
    lblOutputsHeader:TLabel;//f41C
    procedure HeaderASectionClick(HeaderControl:THeaderControl; Section:THeaderSection);//00779618
    procedure HeaderASectionResize(HeaderControl:THeaderControl; Section:THeaderSection);//00779668
    procedure edGroupExit(Sender:TObject);//0077923C
    procedure FormDestroy(Sender:TObject);//00777420
    procedure lbAddressClick(Sender:TObject);//007791EC
    procedure UpdateITree;//007799E0
    procedure Translate(IniFile:TFXIniFile);//007775F8
    procedure UpdateOTree;//0077A048
    procedure rbInputClick(Sender:TObject);//0077922C
    procedure rbOutputClick(Sender:TObject);//00779234
    procedure FormShow(Sender:TObject);//00777430
    procedure TreeACustomDrawItem(Sender:TCustomTreeView; Node:TTreeNode; var DefaultDraw:Boolean; State:TCustomDrawState);//0077967C
    procedure HeaderBSectionClick(HeaderControl:THeaderControl; Section:THeaderSection);//00779B94
    procedure TreeBCustomDrawItem(Sender:TCustomTreeView; Node:TTreeNode; var DefaultDraw:Boolean; State:TCustomDrawState);//00779BF8
    procedure HeaderBSectionResize(HeaderControl:THeaderControl; Section:THeaderSection);//00779BE4
    procedure btnSearchClick(Sender:TObject);//007793A0
    procedure FormCreate(Sender:TObject);//0077732C
    procedure lbLoopClick(Sender:TObject);//00778FC4
    procedure ViewSelectorClick(Sender:TObject);//00778B24
    procedure lbPanelClick(Sender:TObject);//00778D38
  public
    SearchPanel:Integer;//f420
    SearchLoop:Integer;//f424
    SearchAddr:Integer;//f428
    SearchCtrlPanel:TDCPanel;//f42C
    SearchCtrlLoop:TDCLoop;//f430
    SearchCtrlEntity:TDCAddr;//f434
    SearchCtrlUnit:TDCIoUnit;//f438
    SearchCtrlGroup:Integer;//f43C
    SearchCriteria:TSearchCriteria;//f440
    SearchCGKind:TCtrlGroupKind;//f441
    TreeAExpanded:Boolean;//f442
    TreeBExpanded:Boolean;//f443
    procedure CreateParams(var Params:TCreateParams); virtual;//vC4//00777310
  end;
    destructor TDCAddr>.Destroy();//00772F24
    function TDCAddr>.GetEnumerator:TEnumerator<FXDCData.TDCAddr>;//00772F48
    //procedure TDCAddr>.ToArray(?:?);//00772F50
    function TDCAddr>.MoveNext:Boolean;//00773004
    procedure sub_00773054(?:TList<FXDCData.TDCAddr>);//00773054
    //procedure sub_00773060(?:?; ?:?);//00773060
    //procedure sub_0077306C(?:?; ?:?; ?:?);//0077306C
    procedure sub_0077307C;//0077307C
    //procedure sub_00773084(?:?);//00773084
    constructor sub_0077309C;//0077309C
    constructor sub_00773114(AComparer:IComparer<FXDCData.TDCAddr>);//00773114
    destructor TDCAddr>.Destroy();//007731C4
    //procedure TDCAddr>.Error(Msg:string; Data:NativeInt; ?:?);//00773210
    procedure TDCAddr>.Add(Value:TDCAddr);//00773248
    //procedure TDCAddr>.ToArray(?:?);//00773258
    procedure TDCAddr>.GetEnumerator;//0077326C
    //function sub_0077327C(?:?):?;//0077327C
    procedure sub_00773298;//00773298
    procedure sub_007732A0;//007732A0
    constructor sub_007732A8(AList:TList<FXDCData.TDCAddr>);//007732A8
    function TDCAddr>.TEnumerator.MoveNext:Boolean;//007732EC
    //procedure sub_0077330C(?:?; ?:?);//0077330C
    constructor sub_00773338(AOwnsObjects:Boolean);//00773338
    destructor TDCIoLine>.Destroy();//0077337C
    function TDCIoLine>.GetEnumerator:TEnumerator<FXDCData.TDCIoLine>;//007733A0
    //procedure TDCIoLine>.ToArray(?:?);//007733A8
    function TDCIoLine>.MoveNext:Boolean;//0077345C
    procedure sub_007734AC(?:TList<FXDCData.TDCIoLine>);//007734AC
    //procedure sub_007734B8(?:?; ?:?);//007734B8
    //procedure sub_007734C4(?:?; ?:?; ?:?);//007734C4
    procedure sub_007734D4;//007734D4
    //procedure sub_007734DC(?:?);//007734DC
    constructor sub_007734F4;//007734F4
    constructor sub_0077356C(AComparer:IComparer<FXDCData.TDCIoLine>);//0077356C
    destructor TDCIoLine>.Destroy();//0077361C
    //procedure TDCIoLine>.Error(Msg:string; Data:NativeInt; ?:?);//00773668
    procedure TDCIoLine>.Add(Value:TDCIoLine);//007736A0
    //procedure TDCIoLine>.ToArray(?:?);//007736B0
    procedure TDCIoLine>.GetEnumerator;//007736C4
    //function sub_007736D4(?:?):?;//007736D4
    procedure sub_007736F0;//007736F0
    procedure sub_007736F8;//007736F8
    constructor sub_00773700(AList:TList<FXDCData.TDCIoLine>);//00773700
    function TDCIoLine>.TEnumerator.MoveNext:Boolean;//00773744
    //procedure sub_00773764(?:?; ?:?);//00773764
    constructor sub_00773790(AOwnsObjects:Boolean);//00773790
    destructor TDCIoUnit>.Destroy();//007737D4
    function TDCIoUnit>.GetEnumerator:TEnumerator<FXDCData.TDCIoUnit>;//007737F8
    //procedure TDCIoUnit>.ToArray(?:?);//00773800
    function TDCIoUnit>.MoveNext:Boolean;//007738B4
    procedure sub_00773904(?:TList<FXDCData.TDCIoUnit>);//00773904
    //procedure sub_00773910(?:?; ?:?);//00773910
    //procedure sub_0077391C(?:?; ?:?; ?:?);//0077391C
    procedure sub_0077392C;//0077392C
    //procedure sub_00773934(?:?);//00773934
    constructor sub_0077394C;//0077394C
    constructor sub_007739C4(AComparer:IComparer<FXDCData.TDCIoUnit>);//007739C4
    destructor TDCIoUnit>.Destroy();//00773A74
    //procedure TDCIoUnit>.Error(Msg:string; Data:NativeInt; ?:?);//00773AC0
    procedure TDCIoUnit>.Add(Value:TDCIoUnit);//00773AF8
    //procedure TDCIoUnit>.ToArray(?:?);//00773B08
    procedure TDCIoUnit>.GetEnumerator;//00773B1C
    //function sub_00773B2C(?:?):?;//00773B2C
    procedure sub_00773B48;//00773B48
    procedure sub_00773B50;//00773B50
    constructor sub_00773B58(AList:TList<FXDCData.TDCIoUnit>);//00773B58
    function TDCIoUnit>.TEnumerator.MoveNext:Boolean;//00773B9C
    //procedure sub_00773BBC(?:?; ?:?);//00773BBC
    constructor sub_00773BE8(AOwnsObjects:Boolean);//00773BE8
    destructor TDCLoop>.Destroy();//00773C2C
    function TDCLoop>.GetEnumerator:TEnumerator<FXDCData.TDCLoop>;//00773C50
    //procedure TDCLoop>.ToArray(?:?);//00773C58
    function TDCLoop>.MoveNext:Boolean;//00773D0C
    procedure sub_00773D5C(?:TList<FXDCData.TDCLoop>);//00773D5C
    //procedure sub_00773D68(?:?; ?:?);//00773D68
    //procedure sub_00773D74(?:?; ?:?; ?:?);//00773D74
    procedure sub_00773D84;//00773D84
    //procedure sub_00773D8C(?:?);//00773D8C
    constructor sub_00773DA4;//00773DA4
    constructor sub_00773E1C(AComparer:IComparer<FXDCData.TDCLoop>);//00773E1C
    destructor TDCLoop>.Destroy();//00773ECC
    //procedure TDCLoop>.Error(Msg:string; Data:NativeInt; ?:?);//00773F18
    procedure TDCLoop>.Add(Value:TDCLoop);//00773F50
    //procedure TDCLoop>.ToArray(?:?);//00773F60
    procedure TDCLoop>.GetEnumerator;//00773F74
    //function sub_00773F84(?:?):?;//00773F84
    procedure sub_00773FA0;//00773FA0
    procedure sub_00773FA8;//00773FA8
    constructor sub_00773FB0(AList:TList<FXDCData.TDCLoop>);//00773FB0
    function TDCLoop>.TEnumerator.MoveNext:Boolean;//00773FF4
    //procedure sub_00774014(?:?; ?:?);//00774014
    constructor sub_00774040(AOwnsObjects:Boolean);//00774040
    destructor TDCPanel>.Destroy();//00774084
    function TDCPanel>.GetEnumerator:TEnumerator<FXDCData.TDCPanel>;//007740A8
    //procedure TDCPanel>.ToArray(?:?);//007740B0
    function TDCPanel>.MoveNext:Boolean;//00774164
    procedure sub_007741B4(?:TList<FXDCData.TDCPanel>);//007741B4
    //procedure sub_007741C0(?:?; ?:?);//007741C0
    //procedure sub_007741CC(?:?; ?:?; ?:?);//007741CC
    procedure sub_007741DC;//007741DC
    //procedure sub_007741E4(?:?);//007741E4
    constructor sub_007741FC;//007741FC
    constructor sub_00774274(AComparer:IComparer<FXDCData.TDCPanel>);//00774274
    destructor TDCPanel>.Destroy();//00774324
    //procedure TDCPanel>.Error(Msg:string; Data:NativeInt; ?:?);//00774370
    procedure TDCPanel>.Add(Value:TDCPanel);//007743A8
    //procedure TDCPanel>.ToArray(?:?);//007743B8
    procedure TDCPanel>.GetEnumerator;//007743CC
    //function sub_007743DC(?:?):?;//007743DC
    procedure sub_007743F8;//007743F8
    procedure sub_00774400;//00774400
    constructor sub_00774408(AList:TList<FXDCData.TDCPanel>);//00774408
    function TDCPanel>.TEnumerator.MoveNext:Boolean;//0077444C
    //procedure sub_0077446C(?:?; ?:?);//0077446C
    constructor sub_00774498(AOwnsObjects:Boolean);//00774498
    destructor TCtrlOutput>.Destroy();//007744DC
    function TCtrlOutput>.GetEnumerator:TEnumerator<FXDCData.TCtrlOutput>;//00774500
    //procedure TCtrlOutput>.ToArray(?:?);//00774508
    function TCtrlOutput>.MoveNext:Boolean;//007745BC
    procedure sub_0077460C(?:TList<FXDCData.TCtrlOutput>);//0077460C
    //procedure sub_00774618(?:?; ?:?);//00774618
    //procedure sub_00774624(?:?; ?:?; ?:?);//00774624
    procedure sub_00774634;//00774634
    //procedure sub_0077463C(?:?);//0077463C
    constructor sub_00774654;//00774654
    constructor sub_007746CC(AComparer:IComparer<FXDCData.TCtrlOutput>);//007746CC
    destructor TCtrlOutput>.Destroy();//0077477C
    //procedure TCtrlOutput>.Error(Msg:string; Data:NativeInt; ?:?);//007747C8
    procedure TCtrlOutput>.Add(Value:TCtrlOutput);//00774800
    //procedure TCtrlOutput>.ToArray(?:?);//00774810
    procedure TCtrlOutput>.GetEnumerator;//00774824
    //function sub_00774834(?:?):?;//00774834
    procedure sub_00774850;//00774850
    procedure sub_00774858;//00774858
    constructor sub_00774860(AList:TList<FXDCData.TCtrlOutput>);//00774860
    function TCtrlOutput>.TEnumerator.MoveNext:Boolean;//007748A4
    //procedure sub_007748C4(?:?; ?:?);//007748C4
    constructor sub_007748F0(AOwnsObjects:Boolean);//007748F0
    procedure CreateParams(var Params:TCreateParams);//00777310
    procedure sub_00779228;//00779228

implementation

{$R *.DFM}

//00772F24
destructor TEnumerable<FXDCData.TDCAddr>.Destroy();
begin
{*
 00772F24    push        ebx
 00772F25    push        esi
 00772F26    call        @BeforeDestruction
 00772F2B    mov         ebx,edx
 00772F2D    mov         esi,eax
 00772F2F    mov         dl,0FC
 00772F31    and         dl,bl
 00772F33    mov         eax,esi
 00772F35    call        TObject.Destroy
 00772F3A    test        bl,bl
>00772F3C    jle         00772F45
 00772F3E    mov         eax,esi
 00772F40    call        @ClassDestroy
 00772F45    pop         esi
 00772F46    pop         ebx
 00772F47    ret
*}
end;

//00772F48
function TEnumerable<FXDCData.TDCAddr>.GetEnumerator:TEnumerator<FXDCData.TDCAddr>;
begin
{*
 00772F48    mov         edx,dword ptr [eax]
 00772F4A    call        dword ptr [edx]
 00772F4C    ret
*}
end;

//00772F50
{*procedure TEnumerable<FXDCData.TDCAddr>.ToArray(?:?);
begin
 00772F50    push        ebp
 00772F51    mov         ebp,esp
 00772F53    add         esp,0FFFFFFF4
 00772F56    push        ebx
 00772F57    mov         dword ptr [ebp-4],edx
 00772F5A    mov         ebx,eax
 00772F5C    mov         dl,1
 00772F5E    mov         eax,[00767AFC];TList<FXDCData.TDCAddr>
 00772F63    call        0077309C
 00772F68    mov         dword ptr [ebp-8],eax
 00772F6B    xor         eax,eax
 00772F6D    push        ebp
 00772F6E    push        772FF8
 00772F73    push        dword ptr fs:[eax]
 00772F76    mov         dword ptr fs:[eax],esp
 00772F79    mov         eax,ebx
 00772F7B    call        TEnumerable<FXDCData.TDCAddr>.GetEnumerator
 00772F80    mov         dword ptr [ebp-0C],eax
 00772F83    xor         eax,eax
 00772F85    push        ebp
 00772F86    push        772FD0
 00772F8B    push        dword ptr fs:[eax]
 00772F8E    mov         dword ptr fs:[eax],esp
>00772F91    jmp         00772FA6
 00772F93    mov         eax,dword ptr [ebp-0C]
 00772F96    mov         edx,dword ptr [eax]
 00772F98    call        dword ptr [edx]
 00772F9A    mov         ebx,eax
 00772F9C    mov         edx,ebx
 00772F9E    mov         eax,dword ptr [ebp-8]
 00772FA1    call        TList<FXDCData.TDCAddr>.Add
 00772FA6    mov         eax,dword ptr [ebp-0C]
 00772FA9    call        TEnumerator<FXDCData.TDCAddr>.MoveNext
 00772FAE    test        al,al
>00772FB0    jne         00772F93
 00772FB2    xor         eax,eax
 00772FB4    pop         edx
 00772FB5    pop         ecx
 00772FB6    pop         ecx
 00772FB7    mov         dword ptr fs:[eax],edx
 00772FBA    push        772FD7
 00772FBF    cmp         dword ptr [ebp-0C],0
>00772FC3    je          00772FCF
 00772FC5    mov         dl,1
 00772FC7    mov         eax,dword ptr [ebp-0C]
 00772FCA    mov         ecx,dword ptr [eax]
 00772FCC    call        dword ptr [ecx-4]
 00772FCF    ret
>00772FD0    jmp         @HandleFinally
>00772FD5    jmp         00772FBF
 00772FD7    mov         edx,dword ptr [ebp-4]
 00772FDA    mov         eax,dword ptr [ebp-8]
 00772FDD    call        TList<FXDCData.TDCAddr>.ToArray
 00772FE2    xor         eax,eax
 00772FE4    pop         edx
 00772FE5    pop         ecx
 00772FE6    pop         ecx
 00772FE7    mov         dword ptr fs:[eax],edx
 00772FEA    push        772FFF
 00772FEF    mov         eax,dword ptr [ebp-8]
 00772FF2    call        TObject.Free
 00772FF7    ret
>00772FF8    jmp         @HandleFinally
>00772FFD    jmp         00772FEF
 00772FFF    pop         ebx
 00773000    mov         esp,ebp
 00773002    pop         ebp
 00773003    ret
end;*}

//00773004
function TEnumerator<FXDCData.TDCAddr>.MoveNext:Boolean;
begin
{*
 00773004    mov         edx,dword ptr [eax]
 00773006    call        dword ptr [edx+4]
 00773009    ret
*}
end;

//00773054
procedure sub_00773054(?:TList<FXDCData.TDCAddr>);
begin
{*
 00773054    add         eax,8
 00773057    call        004357A0
 0077305C    ret
*}
end;

//00773060
{*procedure sub_00773060(?:?; ?:?);
begin
 00773060    push        ebx
 00773061    mov         edx,dword ptr [edx]
 00773063    mov         ebx,dword ptr [eax]
 00773065    call        dword ptr [ebx+8]
 00773068    pop         ebx
 00773069    ret
end;*}

//0077306C
{*procedure sub_0077306C(?:?; ?:?; ?:?);
begin
 0077306C    push        ebx
 0077306D    mov         edx,dword ptr [edx]
 0077306F    mov         ecx,dword ptr [ecx]
 00773071    mov         eax,dword ptr [eax+24]
 00773074    mov         ebx,dword ptr [eax]
 00773076    call        dword ptr [ebx+0C]
 00773079    pop         ebx
 0077307A    ret
end;*}

//0077307C
procedure sub_0077307C;
begin
{*
 0077307C    call        TList<FXDCData.TDCAddr>.GetEnumerator
 00773081    ret
*}
end;

//00773084
{*procedure sub_00773084(?:?);
begin
 00773084    push        ebx
 00773085    cmp         word ptr [eax+2A],0
>0077308A    je          00773099
 0077308C    push        ecx
 0077308D    mov         ebx,eax
 0077308F    mov         ecx,edx
 00773091    mov         edx,eax
 00773093    mov         eax,dword ptr [ebx+2C]
 00773096    call        dword ptr [ebx+28]
 00773099    pop         ebx
 0077309A    ret
end;*}

//0077309C
constructor sub_0077309C;
begin
{*
 0077309C    push        ebp
 0077309D    mov         ebp,esp
 0077309F    push        0
 007730A1    push        ebx
 007730A2    push        esi
 007730A3    test        dl,dl
>007730A5    je          007730AF
 007730A7    add         esp,0FFFFFFF0
 007730AA    call        @ClassCreate
 007730AF    mov         ebx,edx
 007730B1    mov         esi,eax
 007730B3    xor         eax,eax
 007730B5    push        ebp
 007730B6    push        7730F0
 007730BB    push        dword ptr fs:[eax]
 007730BE    mov         dword ptr fs:[eax],esp
 007730C1    lea         edx,[ebp-4]
 007730C4    mov         eax,[00774AAC];TComparer<FXDCData.TDCAddr>
 007730C9    call        TComparer<FXDCData.TDCAddr>.Default
 007730CE    mov         ecx,dword ptr [ebp-4]
 007730D1    xor         edx,edx
 007730D3    mov         eax,esi
 007730D5    call        00773114
 007730DA    xor         eax,eax
 007730DC    pop         edx
 007730DD    pop         ecx
 007730DE    pop         ecx
 007730DF    mov         dword ptr fs:[eax],edx
 007730E2    push        7730F7
 007730E7    lea         eax,[ebp-4]
 007730EA    call        @IntfClear
 007730EF    ret
>007730F0    jmp         @HandleFinally
>007730F5    jmp         007730E7
 007730F7    mov         eax,esi
 007730F9    test        bl,bl
>007730FB    je          0077310C
 007730FD    call        @AfterConstruction
 00773102    pop         dword ptr fs:[0]
 00773109    add         esp,0C
 0077310C    mov         eax,esi
 0077310E    pop         esi
 0077310F    pop         ebx
 00773110    pop         ecx
 00773111    pop         ebp
 00773112    ret
*}
end;

//00773114
constructor sub_00773114(AComparer:IComparer<FXDCData.TDCAddr>);
begin
{*
 00773114    push        ebp
 00773115    mov         ebp,esp
 00773117    push        0
 00773119    push        ebx
 0077311A    push        esi
 0077311B    push        edi
 0077311C    test        dl,dl
>0077311E    je          00773128
 00773120    add         esp,0FFFFFFF0
 00773123    call        @ClassCreate
 00773128    mov         esi,ecx
 0077312A    mov         ebx,edx
 0077312C    mov         edi,eax
 0077312E    xor         eax,eax
 00773130    push        ebp
 00773131    push        77319F
 00773136    push        dword ptr fs:[eax]
 00773139    mov         dword ptr fs:[eax],esp
 0077313C    xor         edx,edx
 0077313E    mov         eax,edi
 00773140    call        TObject.Create
 00773145    mov         dword ptr [edi+14],edi
 00773148    mov         dword ptr [edi+10],773060;sub_00773060
 0077314F    mov         dword ptr [edi+1C],edi
 00773152    mov         dword ptr [edi+18],77306C;sub_0077306C
 00773159    mov         eax,[00767750];TList<FXDCData.TDCAddr>.arrayofT
 0077315E    mov         dword ptr [edi+0C],eax
 00773161    lea         eax,[edi+24]
 00773164    mov         edx,esi
 00773166    call        @IntfCopy
 0077316B    cmp         dword ptr [edi+24],0
>0077316F    jne         00773189
 00773171    lea         edx,[ebp-4]
 00773174    mov         eax,[00774AAC];TComparer<FXDCData.TDCAddr>
 00773179    call        TComparer<FXDCData.TDCAddr>.Default
 0077317E    mov         edx,dword ptr [ebp-4]
 00773181    lea         eax,[edi+24]
 00773184    call        @IntfCopy
 00773189    xor         eax,eax
 0077318B    pop         edx
 0077318C    pop         ecx
 0077318D    pop         ecx
 0077318E    mov         dword ptr fs:[eax],edx
 00773191    push        7731A6
 00773196    lea         eax,[ebp-4]
 00773199    call        @IntfClear
 0077319E    ret
>0077319F    jmp         @HandleFinally
>007731A4    jmp         00773196
 007731A6    mov         eax,edi
 007731A8    test        bl,bl
>007731AA    je          007731BB
 007731AC    call        @AfterConstruction
 007731B1    pop         dword ptr fs:[0]
 007731B8    add         esp,0C
 007731BB    mov         eax,edi
 007731BD    pop         edi
 007731BE    pop         esi
 007731BF    pop         ebx
 007731C0    pop         ecx
 007731C1    pop         ebp
 007731C2    ret
*}
end;

//007731C4
destructor TList<FXDCData.TDCAddr>.Destroy();
begin
{*
 007731C4    push        ebx
 007731C5    push        esi
 007731C6    call        @BeforeDestruction
 007731CB    mov         ebx,edx
 007731CD    mov         esi,eax
 007731CF    cmp         dword ptr [esi+8],0
>007731D3    jle         007731DE
 007731D5    xor         edx,edx
 007731D7    mov         eax,esi
 007731D9    call        00773054
 007731DE    push        0
 007731E0    lea         eax,[esi+20]
 007731E3    mov         ecx,1
 007731E8    mov         edx,dword ptr ds:[767750];TList<FXDCData.TDCAddr>.arrayofT
 007731EE    call        @DynArraySetLength
 007731F3    add         esp,4
 007731F6    mov         dl,0FC
 007731F8    and         dl,bl
 007731FA    mov         eax,esi
 007731FC    call        TEnumerable<FXDCData.TDCAddr>.Destroy
 00773201    test        bl,bl
>00773203    jle         0077320C
 00773205    mov         eax,esi
 00773207    call        @ClassDestroy
 0077320C    pop         esi
 0077320D    pop         ebx
 0077320E    ret
*}
end;

//00773210
{*procedure TList<FXDCData.TDCAddr>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 00773210    push        ebp
 00773211    mov         ebp,esp
 00773213    add         esp,0FFFFFFF0
 00773216    mov         dword ptr [ebp-8],ecx
 00773219    mov         dword ptr [ebp-4],edx
 0077321C    push        dword ptr [ebp+4]
 0077321F    mov         eax,dword ptr [ebp-8]
 00773222    mov         dword ptr [ebp-10],eax
 00773225    mov         byte ptr [ebp-0C],0
 00773229    lea         eax,[ebp-10]
 0077322C    push        eax
 0077322D    push        0
 0077322F    mov         ecx,dword ptr [ebp-4]
 00773232    mov         dl,1
 00773234    mov         eax,[004180BC];EListError
 00773239    call        Exception.CreateFmt;EListError.Create
>0077323E    jmp         @RaiseExcept
end;*}

//00773248
procedure TList<FXDCData.TDCAddr>.Add(Value:TDCAddr);
begin
{*
 00773248    push        ecx
 00773249    mov         dword ptr [esp],edx
 0077324C    mov         edx,esp
 0077324E    add         eax,8
 00773251    call        0043489C
 00773256    pop         edx
 00773257    ret
*}
end;

//00773258
{*procedure TList<FXDCData.TDCAddr>.ToArray(?:?);
begin
 00773258    push        ecx
 00773259    mov         dword ptr [esp],edx
 0077325C    mov         edx,dword ptr [esp]
 0077325F    add         eax,8
 00773262    call        00435980
 00773267    pop         edx
 00773268    ret
end;*}

//0077326C
procedure TList<FXDCData.TDCAddr>.GetEnumerator;
begin
{*
 0077326C    mov         ecx,eax
 0077326E    mov         dl,1
 00773270    mov         eax,[00767958];TList<FXDCData.TDCAddr>.TEnumerator
 00773275    call        007732A8
 0077327A    ret
*}
end;

//0077327C
{*function sub_0077327C(?:?):?;
begin
 0077327C    push        ebx
 0077327D    push        esi
 0077327E    mov         ebx,dword ptr [eax+4]
 00773281    mov         esi,dword ptr [eax+8]
 00773284    lea         eax,[ebx+8]
 00773287    mov         edx,esi
 00773289    call        00434534
 0077328E    mov         eax,dword ptr [ebx+20]
 00773291    mov         eax,dword ptr [eax+esi*4]
 00773294    pop         esi
 00773295    pop         ebx
 00773296    ret
end;*}

//00773298
procedure sub_00773298;
begin
{*
 00773298    call        0077327C
 0077329D    ret
*}
end;

//007732A0
procedure sub_007732A0;
begin
{*
 007732A0    call        TList<FXDCData.TDCAddr>.TEnumerator.MoveNext
 007732A5    ret
*}
end;

//007732A8
constructor sub_007732A8(AList:TList<FXDCData.TDCAddr>);
begin
{*
 007732A8    push        ebx
 007732A9    push        esi
 007732AA    push        edi
 007732AB    test        dl,dl
>007732AD    je          007732B7
 007732AF    add         esp,0FFFFFFF0
 007732B2    call        @ClassCreate
 007732B7    mov         esi,ecx
 007732B9    mov         ebx,edx
 007732BB    mov         edi,eax
 007732BD    xor         edx,edx
 007732BF    mov         eax,edi
 007732C1    call        TObject.Create
 007732C6    mov         dword ptr [edi+4],esi
 007732C9    mov         dword ptr [edi+8],0FFFFFFFF
 007732D0    mov         eax,edi
 007732D2    test        bl,bl
>007732D4    je          007732E5
 007732D6    call        @AfterConstruction
 007732DB    pop         dword ptr fs:[0]
 007732E2    add         esp,0C
 007732E5    mov         eax,edi
 007732E7    pop         edi
 007732E8    pop         esi
 007732E9    pop         ebx
 007732EA    ret
*}
end;

//007732EC
function TList<FXDCData.TDCAddr>.TEnumerator.MoveNext:Boolean;
begin
{*
 007732EC    mov         edx,dword ptr [eax+4]
 007732EF    mov         edx,dword ptr [edx+8]
 007732F2    cmp         edx,dword ptr [eax+8]
>007732F5    jg          007732FA
 007732F7    xor         eax,eax
 007732F9    ret
 007732FA    inc         dword ptr [eax+8]
 007732FD    mov         edx,dword ptr [eax+4]
 00773300    mov         edx,dword ptr [edx+8]
 00773303    cmp         edx,dword ptr [eax+8]
 00773306    setg        al
 00773309    ret
*}
end;

//0077330C
{*procedure sub_0077330C(?:?; ?:?);
begin
 0077330C    push        ebx
 0077330D    push        esi
 0077330E    push        edi
 0077330F    mov         ebx,ecx
 00773311    mov         edi,edx
 00773313    mov         esi,eax
 00773315    mov         ecx,ebx
 00773317    mov         edx,edi
 00773319    mov         eax,esi
 0077331B    call        00773084
 00773320    cmp         byte ptr [esi+30],0
>00773324    je          00773332
 00773326    cmp         bl,1
>00773329    jne         00773332
 0077332B    mov         eax,edi
 0077332D    call        TObject.Free
 00773332    pop         edi
 00773333    pop         esi
 00773334    pop         ebx
 00773335    ret
end;*}

//00773338
constructor sub_00773338(AOwnsObjects:Boolean);
begin
{*
 00773338    push        ebp
 00773339    mov         ebp,esp
 0077333B    push        ecx
 0077333C    push        ebx
 0077333D    push        esi
 0077333E    test        dl,dl
>00773340    je          0077334A
 00773342    add         esp,0FFFFFFF0
 00773345    call        @ClassCreate
 0077334A    mov         ebx,ecx
 0077334C    mov         byte ptr [ebp-1],dl
 0077334F    mov         esi,eax
 00773351    xor         edx,edx
 00773353    mov         eax,esi
 00773355    call        0077309C
 0077335A    mov         byte ptr [esi+30],bl
 0077335D    mov         eax,esi
 0077335F    cmp         byte ptr [ebp-1],0
>00773363    je          00773374
 00773365    call        @AfterConstruction
 0077336A    pop         dword ptr fs:[0]
 00773371    add         esp,0C
 00773374    mov         eax,esi
 00773376    pop         esi
 00773377    pop         ebx
 00773378    pop         ecx
 00773379    pop         ebp
 0077337A    ret
*}
end;

//0077337C
destructor TEnumerable<FXDCData.TDCIoLine>.Destroy();
begin
{*
 0077337C    push        ebx
 0077337D    push        esi
 0077337E    call        @BeforeDestruction
 00773383    mov         ebx,edx
 00773385    mov         esi,eax
 00773387    mov         dl,0FC
 00773389    and         dl,bl
 0077338B    mov         eax,esi
 0077338D    call        TObject.Destroy
 00773392    test        bl,bl
>00773394    jle         0077339D
 00773396    mov         eax,esi
 00773398    call        @ClassDestroy
 0077339D    pop         esi
 0077339E    pop         ebx
 0077339F    ret
*}
end;

//007733A0
function TEnumerable<FXDCData.TDCIoLine>.GetEnumerator:TEnumerator<FXDCData.TDCIoLine>;
begin
{*
 007733A0    mov         edx,dword ptr [eax]
 007733A2    call        dword ptr [edx]
 007733A4    ret
*}
end;

//007733A8
{*procedure TEnumerable<FXDCData.TDCIoLine>.ToArray(?:?);
begin
 007733A8    push        ebp
 007733A9    mov         ebp,esp
 007733AB    add         esp,0FFFFFFF4
 007733AE    push        ebx
 007733AF    mov         dword ptr [ebp-4],edx
 007733B2    mov         ebx,eax
 007733B4    mov         dl,1
 007733B6    mov         eax,[00769078];TList<FXDCData.TDCIoLine>
 007733BB    call        007734F4
 007733C0    mov         dword ptr [ebp-8],eax
 007733C3    xor         eax,eax
 007733C5    push        ebp
 007733C6    push        773450
 007733CB    push        dword ptr fs:[eax]
 007733CE    mov         dword ptr fs:[eax],esp
 007733D1    mov         eax,ebx
 007733D3    call        TEnumerable<FXDCData.TDCIoLine>.GetEnumerator
 007733D8    mov         dword ptr [ebp-0C],eax
 007733DB    xor         eax,eax
 007733DD    push        ebp
 007733DE    push        773428
 007733E3    push        dword ptr fs:[eax]
 007733E6    mov         dword ptr fs:[eax],esp
>007733E9    jmp         007733FE
 007733EB    mov         eax,dword ptr [ebp-0C]
 007733EE    mov         edx,dword ptr [eax]
 007733F0    call        dword ptr [edx]
 007733F2    mov         ebx,eax
 007733F4    mov         edx,ebx
 007733F6    mov         eax,dword ptr [ebp-8]
 007733F9    call        TList<FXDCData.TDCIoLine>.Add
 007733FE    mov         eax,dword ptr [ebp-0C]
 00773401    call        TEnumerator<FXDCData.TDCIoLine>.MoveNext
 00773406    test        al,al
>00773408    jne         007733EB
 0077340A    xor         eax,eax
 0077340C    pop         edx
 0077340D    pop         ecx
 0077340E    pop         ecx
 0077340F    mov         dword ptr fs:[eax],edx
 00773412    push        77342F
 00773417    cmp         dword ptr [ebp-0C],0
>0077341B    je          00773427
 0077341D    mov         dl,1
 0077341F    mov         eax,dword ptr [ebp-0C]
 00773422    mov         ecx,dword ptr [eax]
 00773424    call        dword ptr [ecx-4]
 00773427    ret
>00773428    jmp         @HandleFinally
>0077342D    jmp         00773417
 0077342F    mov         edx,dword ptr [ebp-4]
 00773432    mov         eax,dword ptr [ebp-8]
 00773435    call        TList<FXDCData.TDCIoLine>.ToArray
 0077343A    xor         eax,eax
 0077343C    pop         edx
 0077343D    pop         ecx
 0077343E    pop         ecx
 0077343F    mov         dword ptr fs:[eax],edx
 00773442    push        773457
 00773447    mov         eax,dword ptr [ebp-8]
 0077344A    call        TObject.Free
 0077344F    ret
>00773450    jmp         @HandleFinally
>00773455    jmp         00773447
 00773457    pop         ebx
 00773458    mov         esp,ebp
 0077345A    pop         ebp
 0077345B    ret
end;*}

//0077345C
function TEnumerator<FXDCData.TDCIoLine>.MoveNext:Boolean;
begin
{*
 0077345C    mov         edx,dword ptr [eax]
 0077345E    call        dword ptr [edx+4]
 00773461    ret
*}
end;

//007734AC
procedure sub_007734AC(?:TList<FXDCData.TDCIoLine>);
begin
{*
 007734AC    add         eax,8
 007734AF    call        004357A0
 007734B4    ret
*}
end;

//007734B8
{*procedure sub_007734B8(?:?; ?:?);
begin
 007734B8    push        ebx
 007734B9    mov         edx,dword ptr [edx]
 007734BB    mov         ebx,dword ptr [eax]
 007734BD    call        dword ptr [ebx+8]
 007734C0    pop         ebx
 007734C1    ret
end;*}

//007734C4
{*procedure sub_007734C4(?:?; ?:?; ?:?);
begin
 007734C4    push        ebx
 007734C5    mov         edx,dword ptr [edx]
 007734C7    mov         ecx,dword ptr [ecx]
 007734C9    mov         eax,dword ptr [eax+24]
 007734CC    mov         ebx,dword ptr [eax]
 007734CE    call        dword ptr [ebx+0C]
 007734D1    pop         ebx
 007734D2    ret
end;*}

//007734D4
procedure sub_007734D4;
begin
{*
 007734D4    call        TList<FXDCData.TDCIoLine>.GetEnumerator
 007734D9    ret
*}
end;

//007734DC
{*procedure sub_007734DC(?:?);
begin
 007734DC    push        ebx
 007734DD    cmp         word ptr [eax+2A],0
>007734E2    je          007734F1
 007734E4    push        ecx
 007734E5    mov         ebx,eax
 007734E7    mov         ecx,edx
 007734E9    mov         edx,eax
 007734EB    mov         eax,dword ptr [ebx+2C]
 007734EE    call        dword ptr [ebx+28]
 007734F1    pop         ebx
 007734F2    ret
end;*}

//007734F4
constructor sub_007734F4;
begin
{*
 007734F4    push        ebp
 007734F5    mov         ebp,esp
 007734F7    push        0
 007734F9    push        ebx
 007734FA    push        esi
 007734FB    test        dl,dl
>007734FD    je          00773507
 007734FF    add         esp,0FFFFFFF0
 00773502    call        @ClassCreate
 00773507    mov         ebx,edx
 00773509    mov         esi,eax
 0077350B    xor         eax,eax
 0077350D    push        ebp
 0077350E    push        773548
 00773513    push        dword ptr fs:[eax]
 00773516    mov         dword ptr fs:[eax],esp
 00773519    lea         edx,[ebp-4]
 0077351C    mov         eax,[00774D08];TComparer<FXDCData.TDCIoLine>
 00773521    call        TComparer<FXDCData.TDCIoLine>.Default
 00773526    mov         ecx,dword ptr [ebp-4]
 00773529    xor         edx,edx
 0077352B    mov         eax,esi
 0077352D    call        0077356C
 00773532    xor         eax,eax
 00773534    pop         edx
 00773535    pop         ecx
 00773536    pop         ecx
 00773537    mov         dword ptr fs:[eax],edx
 0077353A    push        77354F
 0077353F    lea         eax,[ebp-4]
 00773542    call        @IntfClear
 00773547    ret
>00773548    jmp         @HandleFinally
>0077354D    jmp         0077353F
 0077354F    mov         eax,esi
 00773551    test        bl,bl
>00773553    je          00773564
 00773555    call        @AfterConstruction
 0077355A    pop         dword ptr fs:[0]
 00773561    add         esp,0C
 00773564    mov         eax,esi
 00773566    pop         esi
 00773567    pop         ebx
 00773568    pop         ecx
 00773569    pop         ebp
 0077356A    ret
*}
end;

//0077356C
constructor sub_0077356C(AComparer:IComparer<FXDCData.TDCIoLine>);
begin
{*
 0077356C    push        ebp
 0077356D    mov         ebp,esp
 0077356F    push        0
 00773571    push        ebx
 00773572    push        esi
 00773573    push        edi
 00773574    test        dl,dl
>00773576    je          00773580
 00773578    add         esp,0FFFFFFF0
 0077357B    call        @ClassCreate
 00773580    mov         esi,ecx
 00773582    mov         ebx,edx
 00773584    mov         edi,eax
 00773586    xor         eax,eax
 00773588    push        ebp
 00773589    push        7735F7
 0077358E    push        dword ptr fs:[eax]
 00773591    mov         dword ptr fs:[eax],esp
 00773594    xor         edx,edx
 00773596    mov         eax,edi
 00773598    call        TObject.Create
 0077359D    mov         dword ptr [edi+14],edi
 007735A0    mov         dword ptr [edi+10],7734B8;sub_007734B8
 007735A7    mov         dword ptr [edi+1C],edi
 007735AA    mov         dword ptr [edi+18],7734C4;sub_007734C4
 007735B1    mov         eax,[00768CBC];TList<FXDCData.TDCIoLine>.arrayofT
 007735B6    mov         dword ptr [edi+0C],eax
 007735B9    lea         eax,[edi+24]
 007735BC    mov         edx,esi
 007735BE    call        @IntfCopy
 007735C3    cmp         dword ptr [edi+24],0
>007735C7    jne         007735E1
 007735C9    lea         edx,[ebp-4]
 007735CC    mov         eax,[00774D08];TComparer<FXDCData.TDCIoLine>
 007735D1    call        TComparer<FXDCData.TDCIoLine>.Default
 007735D6    mov         edx,dword ptr [ebp-4]
 007735D9    lea         eax,[edi+24]
 007735DC    call        @IntfCopy
 007735E1    xor         eax,eax
 007735E3    pop         edx
 007735E4    pop         ecx
 007735E5    pop         ecx
 007735E6    mov         dword ptr fs:[eax],edx
 007735E9    push        7735FE
 007735EE    lea         eax,[ebp-4]
 007735F1    call        @IntfClear
 007735F6    ret
>007735F7    jmp         @HandleFinally
>007735FC    jmp         007735EE
 007735FE    mov         eax,edi
 00773600    test        bl,bl
>00773602    je          00773613
 00773604    call        @AfterConstruction
 00773609    pop         dword ptr fs:[0]
 00773610    add         esp,0C
 00773613    mov         eax,edi
 00773615    pop         edi
 00773616    pop         esi
 00773617    pop         ebx
 00773618    pop         ecx
 00773619    pop         ebp
 0077361A    ret
*}
end;

//0077361C
destructor TList<FXDCData.TDCIoLine>.Destroy();
begin
{*
 0077361C    push        ebx
 0077361D    push        esi
 0077361E    call        @BeforeDestruction
 00773623    mov         ebx,edx
 00773625    mov         esi,eax
 00773627    cmp         dword ptr [esi+8],0
>0077362B    jle         00773636
 0077362D    xor         edx,edx
 0077362F    mov         eax,esi
 00773631    call        007734AC
 00773636    push        0
 00773638    lea         eax,[esi+20]
 0077363B    mov         ecx,1
 00773640    mov         edx,dword ptr ds:[768CBC];TList<FXDCData.TDCIoLine>.arrayofT
 00773646    call        @DynArraySetLength
 0077364B    add         esp,4
 0077364E    mov         dl,0FC
 00773650    and         dl,bl
 00773652    mov         eax,esi
 00773654    call        TEnumerable<FXDCData.TDCIoLine>.Destroy
 00773659    test        bl,bl
>0077365B    jle         00773664
 0077365D    mov         eax,esi
 0077365F    call        @ClassDestroy
 00773664    pop         esi
 00773665    pop         ebx
 00773666    ret
*}
end;

//00773668
{*procedure TList<FXDCData.TDCIoLine>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 00773668    push        ebp
 00773669    mov         ebp,esp
 0077366B    add         esp,0FFFFFFF0
 0077366E    mov         dword ptr [ebp-8],ecx
 00773671    mov         dword ptr [ebp-4],edx
 00773674    push        dword ptr [ebp+4]
 00773677    mov         eax,dword ptr [ebp-8]
 0077367A    mov         dword ptr [ebp-10],eax
 0077367D    mov         byte ptr [ebp-0C],0
 00773681    lea         eax,[ebp-10]
 00773684    push        eax
 00773685    push        0
 00773687    mov         ecx,dword ptr [ebp-4]
 0077368A    mov         dl,1
 0077368C    mov         eax,[004180BC];EListError
 00773691    call        Exception.CreateFmt;EListError.Create
>00773696    jmp         @RaiseExcept
end;*}

//007736A0
procedure TList<FXDCData.TDCIoLine>.Add(Value:TDCIoLine);
begin
{*
 007736A0    push        ecx
 007736A1    mov         dword ptr [esp],edx
 007736A4    mov         edx,esp
 007736A6    add         eax,8
 007736A9    call        0043489C
 007736AE    pop         edx
 007736AF    ret
*}
end;

//007736B0
{*procedure TList<FXDCData.TDCIoLine>.ToArray(?:?);
begin
 007736B0    push        ecx
 007736B1    mov         dword ptr [esp],edx
 007736B4    mov         edx,dword ptr [esp]
 007736B7    add         eax,8
 007736BA    call        00435980
 007736BF    pop         edx
 007736C0    ret
end;*}

//007736C4
procedure TList<FXDCData.TDCIoLine>.GetEnumerator;
begin
{*
 007736C4    mov         ecx,eax
 007736C6    mov         dl,1
 007736C8    mov         eax,[00768ED0];TList<FXDCData.TDCIoLine>.TEnumerator
 007736CD    call        00773700
 007736D2    ret
*}
end;

//007736D4
{*function sub_007736D4(?:?):?;
begin
 007736D4    push        ebx
 007736D5    push        esi
 007736D6    mov         ebx,dword ptr [eax+4]
 007736D9    mov         esi,dword ptr [eax+8]
 007736DC    lea         eax,[ebx+8]
 007736DF    mov         edx,esi
 007736E1    call        00434534
 007736E6    mov         eax,dword ptr [ebx+20]
 007736E9    mov         eax,dword ptr [eax+esi*4]
 007736EC    pop         esi
 007736ED    pop         ebx
 007736EE    ret
end;*}

//007736F0
procedure sub_007736F0;
begin
{*
 007736F0    call        007736D4
 007736F5    ret
*}
end;

//007736F8
procedure sub_007736F8;
begin
{*
 007736F8    call        TList<FXDCData.TDCIoLine>.TEnumerator.MoveNext
 007736FD    ret
*}
end;

//00773700
constructor sub_00773700(AList:TList<FXDCData.TDCIoLine>);
begin
{*
 00773700    push        ebx
 00773701    push        esi
 00773702    push        edi
 00773703    test        dl,dl
>00773705    je          0077370F
 00773707    add         esp,0FFFFFFF0
 0077370A    call        @ClassCreate
 0077370F    mov         esi,ecx
 00773711    mov         ebx,edx
 00773713    mov         edi,eax
 00773715    xor         edx,edx
 00773717    mov         eax,edi
 00773719    call        TObject.Create
 0077371E    mov         dword ptr [edi+4],esi
 00773721    mov         dword ptr [edi+8],0FFFFFFFF
 00773728    mov         eax,edi
 0077372A    test        bl,bl
>0077372C    je          0077373D
 0077372E    call        @AfterConstruction
 00773733    pop         dword ptr fs:[0]
 0077373A    add         esp,0C
 0077373D    mov         eax,edi
 0077373F    pop         edi
 00773740    pop         esi
 00773741    pop         ebx
 00773742    ret
*}
end;

//00773744
function TList<FXDCData.TDCIoLine>.TEnumerator.MoveNext:Boolean;
begin
{*
 00773744    mov         edx,dword ptr [eax+4]
 00773747    mov         edx,dword ptr [edx+8]
 0077374A    cmp         edx,dword ptr [eax+8]
>0077374D    jg          00773752
 0077374F    xor         eax,eax
 00773751    ret
 00773752    inc         dword ptr [eax+8]
 00773755    mov         edx,dword ptr [eax+4]
 00773758    mov         edx,dword ptr [edx+8]
 0077375B    cmp         edx,dword ptr [eax+8]
 0077375E    setg        al
 00773761    ret
*}
end;

//00773764
{*procedure sub_00773764(?:?; ?:?);
begin
 00773764    push        ebx
 00773765    push        esi
 00773766    push        edi
 00773767    mov         ebx,ecx
 00773769    mov         edi,edx
 0077376B    mov         esi,eax
 0077376D    mov         ecx,ebx
 0077376F    mov         edx,edi
 00773771    mov         eax,esi
 00773773    call        007734DC
 00773778    cmp         byte ptr [esi+30],0
>0077377C    je          0077378A
 0077377E    cmp         bl,1
>00773781    jne         0077378A
 00773783    mov         eax,edi
 00773785    call        TObject.Free
 0077378A    pop         edi
 0077378B    pop         esi
 0077378C    pop         ebx
 0077378D    ret
end;*}

//00773790
constructor sub_00773790(AOwnsObjects:Boolean);
begin
{*
 00773790    push        ebp
 00773791    mov         ebp,esp
 00773793    push        ecx
 00773794    push        ebx
 00773795    push        esi
 00773796    test        dl,dl
>00773798    je          007737A2
 0077379A    add         esp,0FFFFFFF0
 0077379D    call        @ClassCreate
 007737A2    mov         ebx,ecx
 007737A4    mov         byte ptr [ebp-1],dl
 007737A7    mov         esi,eax
 007737A9    xor         edx,edx
 007737AB    mov         eax,esi
 007737AD    call        007734F4
 007737B2    mov         byte ptr [esi+30],bl
 007737B5    mov         eax,esi
 007737B7    cmp         byte ptr [ebp-1],0
>007737BB    je          007737CC
 007737BD    call        @AfterConstruction
 007737C2    pop         dword ptr fs:[0]
 007737C9    add         esp,0C
 007737CC    mov         eax,esi
 007737CE    pop         esi
 007737CF    pop         ebx
 007737D0    pop         ecx
 007737D1    pop         ebp
 007737D2    ret
*}
end;

//007737D4
destructor TEnumerable<FXDCData.TDCIoUnit>.Destroy();
begin
{*
 007737D4    push        ebx
 007737D5    push        esi
 007737D6    call        @BeforeDestruction
 007737DB    mov         ebx,edx
 007737DD    mov         esi,eax
 007737DF    mov         dl,0FC
 007737E1    and         dl,bl
 007737E3    mov         eax,esi
 007737E5    call        TObject.Destroy
 007737EA    test        bl,bl
>007737EC    jle         007737F5
 007737EE    mov         eax,esi
 007737F0    call        @ClassDestroy
 007737F5    pop         esi
 007737F6    pop         ebx
 007737F7    ret
*}
end;

//007737F8
function TEnumerable<FXDCData.TDCIoUnit>.GetEnumerator:TEnumerator<FXDCData.TDCIoUnit>;
begin
{*
 007737F8    mov         edx,dword ptr [eax]
 007737FA    call        dword ptr [edx]
 007737FC    ret
*}
end;

//00773800
{*procedure TEnumerable<FXDCData.TDCIoUnit>.ToArray(?:?);
begin
 00773800    push        ebp
 00773801    mov         ebp,esp
 00773803    add         esp,0FFFFFFF4
 00773806    push        ebx
 00773807    mov         dword ptr [ebp-4],edx
 0077380A    mov         ebx,eax
 0077380C    mov         dl,1
 0077380E    mov         eax,[0076A5FC];TList<FXDCData.TDCIoUnit>
 00773813    call        0077394C
 00773818    mov         dword ptr [ebp-8],eax
 0077381B    xor         eax,eax
 0077381D    push        ebp
 0077381E    push        7738A8
 00773823    push        dword ptr fs:[eax]
 00773826    mov         dword ptr fs:[eax],esp
 00773829    mov         eax,ebx
 0077382B    call        TEnumerable<FXDCData.TDCIoUnit>.GetEnumerator
 00773830    mov         dword ptr [ebp-0C],eax
 00773833    xor         eax,eax
 00773835    push        ebp
 00773836    push        773880
 0077383B    push        dword ptr fs:[eax]
 0077383E    mov         dword ptr fs:[eax],esp
>00773841    jmp         00773856
 00773843    mov         eax,dword ptr [ebp-0C]
 00773846    mov         edx,dword ptr [eax]
 00773848    call        dword ptr [edx]
 0077384A    mov         ebx,eax
 0077384C    mov         edx,ebx
 0077384E    mov         eax,dword ptr [ebp-8]
 00773851    call        TList<FXDCData.TDCIoUnit>.Add
 00773856    mov         eax,dword ptr [ebp-0C]
 00773859    call        TEnumerator<FXDCData.TDCIoUnit>.MoveNext
 0077385E    test        al,al
>00773860    jne         00773843
 00773862    xor         eax,eax
 00773864    pop         edx
 00773865    pop         ecx
 00773866    pop         ecx
 00773867    mov         dword ptr fs:[eax],edx
 0077386A    push        773887
 0077386F    cmp         dword ptr [ebp-0C],0
>00773873    je          0077387F
 00773875    mov         dl,1
 00773877    mov         eax,dword ptr [ebp-0C]
 0077387A    mov         ecx,dword ptr [eax]
 0077387C    call        dword ptr [ecx-4]
 0077387F    ret
>00773880    jmp         @HandleFinally
>00773885    jmp         0077386F
 00773887    mov         edx,dword ptr [ebp-4]
 0077388A    mov         eax,dword ptr [ebp-8]
 0077388D    call        TList<FXDCData.TDCIoUnit>.ToArray
 00773892    xor         eax,eax
 00773894    pop         edx
 00773895    pop         ecx
 00773896    pop         ecx
 00773897    mov         dword ptr fs:[eax],edx
 0077389A    push        7738AF
 0077389F    mov         eax,dword ptr [ebp-8]
 007738A2    call        TObject.Free
 007738A7    ret
>007738A8    jmp         @HandleFinally
>007738AD    jmp         0077389F
 007738AF    pop         ebx
 007738B0    mov         esp,ebp
 007738B2    pop         ebp
 007738B3    ret
end;*}

//007738B4
function TEnumerator<FXDCData.TDCIoUnit>.MoveNext:Boolean;
begin
{*
 007738B4    mov         edx,dword ptr [eax]
 007738B6    call        dword ptr [edx+4]
 007738B9    ret
*}
end;

//00773904
procedure sub_00773904(?:TList<FXDCData.TDCIoUnit>);
begin
{*
 00773904    add         eax,8
 00773907    call        004357A0
 0077390C    ret
*}
end;

//00773910
{*procedure sub_00773910(?:?; ?:?);
begin
 00773910    push        ebx
 00773911    mov         edx,dword ptr [edx]
 00773913    mov         ebx,dword ptr [eax]
 00773915    call        dword ptr [ebx+8]
 00773918    pop         ebx
 00773919    ret
end;*}

//0077391C
{*procedure sub_0077391C(?:?; ?:?; ?:?);
begin
 0077391C    push        ebx
 0077391D    mov         edx,dword ptr [edx]
 0077391F    mov         ecx,dword ptr [ecx]
 00773921    mov         eax,dword ptr [eax+24]
 00773924    mov         ebx,dword ptr [eax]
 00773926    call        dword ptr [ebx+0C]
 00773929    pop         ebx
 0077392A    ret
end;*}

//0077392C
procedure sub_0077392C;
begin
{*
 0077392C    call        TList<FXDCData.TDCIoUnit>.GetEnumerator
 00773931    ret
*}
end;

//00773934
{*procedure sub_00773934(?:?);
begin
 00773934    push        ebx
 00773935    cmp         word ptr [eax+2A],0
>0077393A    je          00773949
 0077393C    push        ecx
 0077393D    mov         ebx,eax
 0077393F    mov         ecx,edx
 00773941    mov         edx,eax
 00773943    mov         eax,dword ptr [ebx+2C]
 00773946    call        dword ptr [ebx+28]
 00773949    pop         ebx
 0077394A    ret
end;*}

//0077394C
constructor sub_0077394C;
begin
{*
 0077394C    push        ebp
 0077394D    mov         ebp,esp
 0077394F    push        0
 00773951    push        ebx
 00773952    push        esi
 00773953    test        dl,dl
>00773955    je          0077395F
 00773957    add         esp,0FFFFFFF0
 0077395A    call        @ClassCreate
 0077395F    mov         ebx,edx
 00773961    mov         esi,eax
 00773963    xor         eax,eax
 00773965    push        ebp
 00773966    push        7739A0
 0077396B    push        dword ptr fs:[eax]
 0077396E    mov         dword ptr fs:[eax],esp
 00773971    lea         edx,[ebp-4]
 00773974    mov         eax,[00774F6C];TComparer<FXDCData.TDCIoUnit>
 00773979    call        TComparer<FXDCData.TDCIoUnit>.Default
 0077397E    mov         ecx,dword ptr [ebp-4]
 00773981    xor         edx,edx
 00773983    mov         eax,esi
 00773985    call        007739C4
 0077398A    xor         eax,eax
 0077398C    pop         edx
 0077398D    pop         ecx
 0077398E    pop         ecx
 0077398F    mov         dword ptr fs:[eax],edx
 00773992    push        7739A7
 00773997    lea         eax,[ebp-4]
 0077399A    call        @IntfClear
 0077399F    ret
>007739A0    jmp         @HandleFinally
>007739A5    jmp         00773997
 007739A7    mov         eax,esi
 007739A9    test        bl,bl
>007739AB    je          007739BC
 007739AD    call        @AfterConstruction
 007739B2    pop         dword ptr fs:[0]
 007739B9    add         esp,0C
 007739BC    mov         eax,esi
 007739BE    pop         esi
 007739BF    pop         ebx
 007739C0    pop         ecx
 007739C1    pop         ebp
 007739C2    ret
*}
end;

//007739C4
constructor sub_007739C4(AComparer:IComparer<FXDCData.TDCIoUnit>);
begin
{*
 007739C4    push        ebp
 007739C5    mov         ebp,esp
 007739C7    push        0
 007739C9    push        ebx
 007739CA    push        esi
 007739CB    push        edi
 007739CC    test        dl,dl
>007739CE    je          007739D8
 007739D0    add         esp,0FFFFFFF0
 007739D3    call        @ClassCreate
 007739D8    mov         esi,ecx
 007739DA    mov         ebx,edx
 007739DC    mov         edi,eax
 007739DE    xor         eax,eax
 007739E0    push        ebp
 007739E1    push        773A4F
 007739E6    push        dword ptr fs:[eax]
 007739E9    mov         dword ptr fs:[eax],esp
 007739EC    xor         edx,edx
 007739EE    mov         eax,edi
 007739F0    call        TObject.Create
 007739F5    mov         dword ptr [edi+14],edi
 007739F8    mov         dword ptr [edi+10],773910;sub_00773910
 007739FF    mov         dword ptr [edi+1C],edi
 00773A02    mov         dword ptr [edi+18],77391C;sub_0077391C
 00773A09    mov         eax,[0076A240];TList<FXDCData.TDCIoUnit>.arrayofT
 00773A0E    mov         dword ptr [edi+0C],eax
 00773A11    lea         eax,[edi+24]
 00773A14    mov         edx,esi
 00773A16    call        @IntfCopy
 00773A1B    cmp         dword ptr [edi+24],0
>00773A1F    jne         00773A39
 00773A21    lea         edx,[ebp-4]
 00773A24    mov         eax,[00774F6C];TComparer<FXDCData.TDCIoUnit>
 00773A29    call        TComparer<FXDCData.TDCIoUnit>.Default
 00773A2E    mov         edx,dword ptr [ebp-4]
 00773A31    lea         eax,[edi+24]
 00773A34    call        @IntfCopy
 00773A39    xor         eax,eax
 00773A3B    pop         edx
 00773A3C    pop         ecx
 00773A3D    pop         ecx
 00773A3E    mov         dword ptr fs:[eax],edx
 00773A41    push        773A56
 00773A46    lea         eax,[ebp-4]
 00773A49    call        @IntfClear
 00773A4E    ret
>00773A4F    jmp         @HandleFinally
>00773A54    jmp         00773A46
 00773A56    mov         eax,edi
 00773A58    test        bl,bl
>00773A5A    je          00773A6B
 00773A5C    call        @AfterConstruction
 00773A61    pop         dword ptr fs:[0]
 00773A68    add         esp,0C
 00773A6B    mov         eax,edi
 00773A6D    pop         edi
 00773A6E    pop         esi
 00773A6F    pop         ebx
 00773A70    pop         ecx
 00773A71    pop         ebp
 00773A72    ret
*}
end;

//00773A74
destructor TList<FXDCData.TDCIoUnit>.Destroy();
begin
{*
 00773A74    push        ebx
 00773A75    push        esi
 00773A76    call        @BeforeDestruction
 00773A7B    mov         ebx,edx
 00773A7D    mov         esi,eax
 00773A7F    cmp         dword ptr [esi+8],0
>00773A83    jle         00773A8E
 00773A85    xor         edx,edx
 00773A87    mov         eax,esi
 00773A89    call        00773904
 00773A8E    push        0
 00773A90    lea         eax,[esi+20]
 00773A93    mov         ecx,1
 00773A98    mov         edx,dword ptr ds:[76A240];TList<FXDCData.TDCIoUnit>.arrayofT
 00773A9E    call        @DynArraySetLength
 00773AA3    add         esp,4
 00773AA6    mov         dl,0FC
 00773AA8    and         dl,bl
 00773AAA    mov         eax,esi
 00773AAC    call        TEnumerable<FXDCData.TDCIoUnit>.Destroy
 00773AB1    test        bl,bl
>00773AB3    jle         00773ABC
 00773AB5    mov         eax,esi
 00773AB7    call        @ClassDestroy
 00773ABC    pop         esi
 00773ABD    pop         ebx
 00773ABE    ret
*}
end;

//00773AC0
{*procedure TList<FXDCData.TDCIoUnit>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 00773AC0    push        ebp
 00773AC1    mov         ebp,esp
 00773AC3    add         esp,0FFFFFFF0
 00773AC6    mov         dword ptr [ebp-8],ecx
 00773AC9    mov         dword ptr [ebp-4],edx
 00773ACC    push        dword ptr [ebp+4]
 00773ACF    mov         eax,dword ptr [ebp-8]
 00773AD2    mov         dword ptr [ebp-10],eax
 00773AD5    mov         byte ptr [ebp-0C],0
 00773AD9    lea         eax,[ebp-10]
 00773ADC    push        eax
 00773ADD    push        0
 00773ADF    mov         ecx,dword ptr [ebp-4]
 00773AE2    mov         dl,1
 00773AE4    mov         eax,[004180BC];EListError
 00773AE9    call        Exception.CreateFmt;EListError.Create
>00773AEE    jmp         @RaiseExcept
end;*}

//00773AF8
procedure TList<FXDCData.TDCIoUnit>.Add(Value:TDCIoUnit);
begin
{*
 00773AF8    push        ecx
 00773AF9    mov         dword ptr [esp],edx
 00773AFC    mov         edx,esp
 00773AFE    add         eax,8
 00773B01    call        0043489C
 00773B06    pop         edx
 00773B07    ret
*}
end;

//00773B08
{*procedure TList<FXDCData.TDCIoUnit>.ToArray(?:?);
begin
 00773B08    push        ecx
 00773B09    mov         dword ptr [esp],edx
 00773B0C    mov         edx,dword ptr [esp]
 00773B0F    add         eax,8
 00773B12    call        00435980
 00773B17    pop         edx
 00773B18    ret
end;*}

//00773B1C
procedure TList<FXDCData.TDCIoUnit>.GetEnumerator;
begin
{*
 00773B1C    mov         ecx,eax
 00773B1E    mov         dl,1
 00773B20    mov         eax,[0076A454];TList<FXDCData.TDCIoUnit>.TEnumerator
 00773B25    call        00773B58
 00773B2A    ret
*}
end;

//00773B2C
{*function sub_00773B2C(?:?):?;
begin
 00773B2C    push        ebx
 00773B2D    push        esi
 00773B2E    mov         ebx,dword ptr [eax+4]
 00773B31    mov         esi,dword ptr [eax+8]
 00773B34    lea         eax,[ebx+8]
 00773B37    mov         edx,esi
 00773B39    call        00434534
 00773B3E    mov         eax,dword ptr [ebx+20]
 00773B41    mov         eax,dword ptr [eax+esi*4]
 00773B44    pop         esi
 00773B45    pop         ebx
 00773B46    ret
end;*}

//00773B48
procedure sub_00773B48;
begin
{*
 00773B48    call        00773B2C
 00773B4D    ret
*}
end;

//00773B50
procedure sub_00773B50;
begin
{*
 00773B50    call        TList<FXDCData.TDCIoUnit>.TEnumerator.MoveNext
 00773B55    ret
*}
end;

//00773B58
constructor sub_00773B58(AList:TList<FXDCData.TDCIoUnit>);
begin
{*
 00773B58    push        ebx
 00773B59    push        esi
 00773B5A    push        edi
 00773B5B    test        dl,dl
>00773B5D    je          00773B67
 00773B5F    add         esp,0FFFFFFF0
 00773B62    call        @ClassCreate
 00773B67    mov         esi,ecx
 00773B69    mov         ebx,edx
 00773B6B    mov         edi,eax
 00773B6D    xor         edx,edx
 00773B6F    mov         eax,edi
 00773B71    call        TObject.Create
 00773B76    mov         dword ptr [edi+4],esi
 00773B79    mov         dword ptr [edi+8],0FFFFFFFF
 00773B80    mov         eax,edi
 00773B82    test        bl,bl
>00773B84    je          00773B95
 00773B86    call        @AfterConstruction
 00773B8B    pop         dword ptr fs:[0]
 00773B92    add         esp,0C
 00773B95    mov         eax,edi
 00773B97    pop         edi
 00773B98    pop         esi
 00773B99    pop         ebx
 00773B9A    ret
*}
end;

//00773B9C
function TList<FXDCData.TDCIoUnit>.TEnumerator.MoveNext:Boolean;
begin
{*
 00773B9C    mov         edx,dword ptr [eax+4]
 00773B9F    mov         edx,dword ptr [edx+8]
 00773BA2    cmp         edx,dword ptr [eax+8]
>00773BA5    jg          00773BAA
 00773BA7    xor         eax,eax
 00773BA9    ret
 00773BAA    inc         dword ptr [eax+8]
 00773BAD    mov         edx,dword ptr [eax+4]
 00773BB0    mov         edx,dword ptr [edx+8]
 00773BB3    cmp         edx,dword ptr [eax+8]
 00773BB6    setg        al
 00773BB9    ret
*}
end;

//00773BBC
{*procedure sub_00773BBC(?:?; ?:?);
begin
 00773BBC    push        ebx
 00773BBD    push        esi
 00773BBE    push        edi
 00773BBF    mov         ebx,ecx
 00773BC1    mov         edi,edx
 00773BC3    mov         esi,eax
 00773BC5    mov         ecx,ebx
 00773BC7    mov         edx,edi
 00773BC9    mov         eax,esi
 00773BCB    call        00773934
 00773BD0    cmp         byte ptr [esi+30],0
>00773BD4    je          00773BE2
 00773BD6    cmp         bl,1
>00773BD9    jne         00773BE2
 00773BDB    mov         eax,edi
 00773BDD    call        TObject.Free
 00773BE2    pop         edi
 00773BE3    pop         esi
 00773BE4    pop         ebx
 00773BE5    ret
end;*}

//00773BE8
constructor sub_00773BE8(AOwnsObjects:Boolean);
begin
{*
 00773BE8    push        ebp
 00773BE9    mov         ebp,esp
 00773BEB    push        ecx
 00773BEC    push        ebx
 00773BED    push        esi
 00773BEE    test        dl,dl
>00773BF0    je          00773BFA
 00773BF2    add         esp,0FFFFFFF0
 00773BF5    call        @ClassCreate
 00773BFA    mov         ebx,ecx
 00773BFC    mov         byte ptr [ebp-1],dl
 00773BFF    mov         esi,eax
 00773C01    xor         edx,edx
 00773C03    mov         eax,esi
 00773C05    call        0077394C
 00773C0A    mov         byte ptr [esi+30],bl
 00773C0D    mov         eax,esi
 00773C0F    cmp         byte ptr [ebp-1],0
>00773C13    je          00773C24
 00773C15    call        @AfterConstruction
 00773C1A    pop         dword ptr fs:[0]
 00773C21    add         esp,0C
 00773C24    mov         eax,esi
 00773C26    pop         esi
 00773C27    pop         ebx
 00773C28    pop         ecx
 00773C29    pop         ebp
 00773C2A    ret
*}
end;

//00773C2C
destructor TEnumerable<FXDCData.TDCLoop>.Destroy();
begin
{*
 00773C2C    push        ebx
 00773C2D    push        esi
 00773C2E    call        @BeforeDestruction
 00773C33    mov         ebx,edx
 00773C35    mov         esi,eax
 00773C37    mov         dl,0FC
 00773C39    and         dl,bl
 00773C3B    mov         eax,esi
 00773C3D    call        TObject.Destroy
 00773C42    test        bl,bl
>00773C44    jle         00773C4D
 00773C46    mov         eax,esi
 00773C48    call        @ClassDestroy
 00773C4D    pop         esi
 00773C4E    pop         ebx
 00773C4F    ret
*}
end;

//00773C50
function TEnumerable<FXDCData.TDCLoop>.GetEnumerator:TEnumerator<FXDCData.TDCLoop>;
begin
{*
 00773C50    mov         edx,dword ptr [eax]
 00773C52    call        dword ptr [edx]
 00773C54    ret
*}
end;

//00773C58
{*procedure TEnumerable<FXDCData.TDCLoop>.ToArray(?:?);
begin
 00773C58    push        ebp
 00773C59    mov         ebp,esp
 00773C5B    add         esp,0FFFFFFF4
 00773C5E    push        ebx
 00773C5F    mov         dword ptr [ebp-4],edx
 00773C62    mov         ebx,eax
 00773C64    mov         dl,1
 00773C66    mov         eax,[0076BB68];TList<FXDCData.TDCLoop>
 00773C6B    call        00773DA4
 00773C70    mov         dword ptr [ebp-8],eax
 00773C73    xor         eax,eax
 00773C75    push        ebp
 00773C76    push        773D00
 00773C7B    push        dword ptr fs:[eax]
 00773C7E    mov         dword ptr fs:[eax],esp
 00773C81    mov         eax,ebx
 00773C83    call        TEnumerable<FXDCData.TDCLoop>.GetEnumerator
 00773C88    mov         dword ptr [ebp-0C],eax
 00773C8B    xor         eax,eax
 00773C8D    push        ebp
 00773C8E    push        773CD8
 00773C93    push        dword ptr fs:[eax]
 00773C96    mov         dword ptr fs:[eax],esp
>00773C99    jmp         00773CAE
 00773C9B    mov         eax,dword ptr [ebp-0C]
 00773C9E    mov         edx,dword ptr [eax]
 00773CA0    call        dword ptr [edx]
 00773CA2    mov         ebx,eax
 00773CA4    mov         edx,ebx
 00773CA6    mov         eax,dword ptr [ebp-8]
 00773CA9    call        TList<FXDCData.TDCLoop>.Add
 00773CAE    mov         eax,dword ptr [ebp-0C]
 00773CB1    call        TEnumerator<FXDCData.TDCLoop>.MoveNext
 00773CB6    test        al,al
>00773CB8    jne         00773C9B
 00773CBA    xor         eax,eax
 00773CBC    pop         edx
 00773CBD    pop         ecx
 00773CBE    pop         ecx
 00773CBF    mov         dword ptr fs:[eax],edx
 00773CC2    push        773CDF
 00773CC7    cmp         dword ptr [ebp-0C],0
>00773CCB    je          00773CD7
 00773CCD    mov         dl,1
 00773CCF    mov         eax,dword ptr [ebp-0C]
 00773CD2    mov         ecx,dword ptr [eax]
 00773CD4    call        dword ptr [ecx-4]
 00773CD7    ret
>00773CD8    jmp         @HandleFinally
>00773CDD    jmp         00773CC7
 00773CDF    mov         edx,dword ptr [ebp-4]
 00773CE2    mov         eax,dword ptr [ebp-8]
 00773CE5    call        TList<FXDCData.TDCLoop>.ToArray
 00773CEA    xor         eax,eax
 00773CEC    pop         edx
 00773CED    pop         ecx
 00773CEE    pop         ecx
 00773CEF    mov         dword ptr fs:[eax],edx
 00773CF2    push        773D07
 00773CF7    mov         eax,dword ptr [ebp-8]
 00773CFA    call        TObject.Free
 00773CFF    ret
>00773D00    jmp         @HandleFinally
>00773D05    jmp         00773CF7
 00773D07    pop         ebx
 00773D08    mov         esp,ebp
 00773D0A    pop         ebp
 00773D0B    ret
end;*}

//00773D0C
function TEnumerator<FXDCData.TDCLoop>.MoveNext:Boolean;
begin
{*
 00773D0C    mov         edx,dword ptr [eax]
 00773D0E    call        dword ptr [edx+4]
 00773D11    ret
*}
end;

//00773D5C
procedure sub_00773D5C(?:TList<FXDCData.TDCLoop>);
begin
{*
 00773D5C    add         eax,8
 00773D5F    call        004357A0
 00773D64    ret
*}
end;

//00773D68
{*procedure sub_00773D68(?:?; ?:?);
begin
 00773D68    push        ebx
 00773D69    mov         edx,dword ptr [edx]
 00773D6B    mov         ebx,dword ptr [eax]
 00773D6D    call        dword ptr [ebx+8]
 00773D70    pop         ebx
 00773D71    ret
end;*}

//00773D74
{*procedure sub_00773D74(?:?; ?:?; ?:?);
begin
 00773D74    push        ebx
 00773D75    mov         edx,dword ptr [edx]
 00773D77    mov         ecx,dword ptr [ecx]
 00773D79    mov         eax,dword ptr [eax+24]
 00773D7C    mov         ebx,dword ptr [eax]
 00773D7E    call        dword ptr [ebx+0C]
 00773D81    pop         ebx
 00773D82    ret
end;*}

//00773D84
procedure sub_00773D84;
begin
{*
 00773D84    call        TList<FXDCData.TDCLoop>.GetEnumerator
 00773D89    ret
*}
end;

//00773D8C
{*procedure sub_00773D8C(?:?);
begin
 00773D8C    push        ebx
 00773D8D    cmp         word ptr [eax+2A],0
>00773D92    je          00773DA1
 00773D94    push        ecx
 00773D95    mov         ebx,eax
 00773D97    mov         ecx,edx
 00773D99    mov         edx,eax
 00773D9B    mov         eax,dword ptr [ebx+2C]
 00773D9E    call        dword ptr [ebx+28]
 00773DA1    pop         ebx
 00773DA2    ret
end;*}

//00773DA4
constructor sub_00773DA4;
begin
{*
 00773DA4    push        ebp
 00773DA5    mov         ebp,esp
 00773DA7    push        0
 00773DA9    push        ebx
 00773DAA    push        esi
 00773DAB    test        dl,dl
>00773DAD    je          00773DB7
 00773DAF    add         esp,0FFFFFFF0
 00773DB2    call        @ClassCreate
 00773DB7    mov         ebx,edx
 00773DB9    mov         esi,eax
 00773DBB    xor         eax,eax
 00773DBD    push        ebp
 00773DBE    push        773DF8
 00773DC3    push        dword ptr fs:[eax]
 00773DC6    mov         dword ptr fs:[eax],esp
 00773DC9    lea         edx,[ebp-4]
 00773DCC    mov         eax,[007751CC];TComparer<FXDCData.TDCLoop>
 00773DD1    call        TComparer<FXDCData.TDCLoop>.Default
 00773DD6    mov         ecx,dword ptr [ebp-4]
 00773DD9    xor         edx,edx
 00773DDB    mov         eax,esi
 00773DDD    call        00773E1C
 00773DE2    xor         eax,eax
 00773DE4    pop         edx
 00773DE5    pop         ecx
 00773DE6    pop         ecx
 00773DE7    mov         dword ptr fs:[eax],edx
 00773DEA    push        773DFF
 00773DEF    lea         eax,[ebp-4]
 00773DF2    call        @IntfClear
 00773DF7    ret
>00773DF8    jmp         @HandleFinally
>00773DFD    jmp         00773DEF
 00773DFF    mov         eax,esi
 00773E01    test        bl,bl
>00773E03    je          00773E14
 00773E05    call        @AfterConstruction
 00773E0A    pop         dword ptr fs:[0]
 00773E11    add         esp,0C
 00773E14    mov         eax,esi
 00773E16    pop         esi
 00773E17    pop         ebx
 00773E18    pop         ecx
 00773E19    pop         ebp
 00773E1A    ret
*}
end;

//00773E1C
constructor sub_00773E1C(AComparer:IComparer<FXDCData.TDCLoop>);
begin
{*
 00773E1C    push        ebp
 00773E1D    mov         ebp,esp
 00773E1F    push        0
 00773E21    push        ebx
 00773E22    push        esi
 00773E23    push        edi
 00773E24    test        dl,dl
>00773E26    je          00773E30
 00773E28    add         esp,0FFFFFFF0
 00773E2B    call        @ClassCreate
 00773E30    mov         esi,ecx
 00773E32    mov         ebx,edx
 00773E34    mov         edi,eax
 00773E36    xor         eax,eax
 00773E38    push        ebp
 00773E39    push        773EA7
 00773E3E    push        dword ptr fs:[eax]
 00773E41    mov         dword ptr fs:[eax],esp
 00773E44    xor         edx,edx
 00773E46    mov         eax,edi
 00773E48    call        TObject.Create
 00773E4D    mov         dword ptr [edi+14],edi
 00773E50    mov         dword ptr [edi+10],773D68;sub_00773D68
 00773E57    mov         dword ptr [edi+1C],edi
 00773E5A    mov         dword ptr [edi+18],773D74;sub_00773D74
 00773E61    mov         eax,[0076B7BC];TList<FXDCData.TDCLoop>.arrayofT
 00773E66    mov         dword ptr [edi+0C],eax
 00773E69    lea         eax,[edi+24]
 00773E6C    mov         edx,esi
 00773E6E    call        @IntfCopy
 00773E73    cmp         dword ptr [edi+24],0
>00773E77    jne         00773E91
 00773E79    lea         edx,[ebp-4]
 00773E7C    mov         eax,[007751CC];TComparer<FXDCData.TDCLoop>
 00773E81    call        TComparer<FXDCData.TDCLoop>.Default
 00773E86    mov         edx,dword ptr [ebp-4]
 00773E89    lea         eax,[edi+24]
 00773E8C    call        @IntfCopy
 00773E91    xor         eax,eax
 00773E93    pop         edx
 00773E94    pop         ecx
 00773E95    pop         ecx
 00773E96    mov         dword ptr fs:[eax],edx
 00773E99    push        773EAE
 00773E9E    lea         eax,[ebp-4]
 00773EA1    call        @IntfClear
 00773EA6    ret
>00773EA7    jmp         @HandleFinally
>00773EAC    jmp         00773E9E
 00773EAE    mov         eax,edi
 00773EB0    test        bl,bl
>00773EB2    je          00773EC3
 00773EB4    call        @AfterConstruction
 00773EB9    pop         dword ptr fs:[0]
 00773EC0    add         esp,0C
 00773EC3    mov         eax,edi
 00773EC5    pop         edi
 00773EC6    pop         esi
 00773EC7    pop         ebx
 00773EC8    pop         ecx
 00773EC9    pop         ebp
 00773ECA    ret
*}
end;

//00773ECC
destructor TList<FXDCData.TDCLoop>.Destroy();
begin
{*
 00773ECC    push        ebx
 00773ECD    push        esi
 00773ECE    call        @BeforeDestruction
 00773ED3    mov         ebx,edx
 00773ED5    mov         esi,eax
 00773ED7    cmp         dword ptr [esi+8],0
>00773EDB    jle         00773EE6
 00773EDD    xor         edx,edx
 00773EDF    mov         eax,esi
 00773EE1    call        00773D5C
 00773EE6    push        0
 00773EE8    lea         eax,[esi+20]
 00773EEB    mov         ecx,1
 00773EF0    mov         edx,dword ptr ds:[76B7BC];TList<FXDCData.TDCLoop>.arrayofT
 00773EF6    call        @DynArraySetLength
 00773EFB    add         esp,4
 00773EFE    mov         dl,0FC
 00773F00    and         dl,bl
 00773F02    mov         eax,esi
 00773F04    call        TEnumerable<FXDCData.TDCLoop>.Destroy
 00773F09    test        bl,bl
>00773F0B    jle         00773F14
 00773F0D    mov         eax,esi
 00773F0F    call        @ClassDestroy
 00773F14    pop         esi
 00773F15    pop         ebx
 00773F16    ret
*}
end;

//00773F18
{*procedure TList<FXDCData.TDCLoop>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 00773F18    push        ebp
 00773F19    mov         ebp,esp
 00773F1B    add         esp,0FFFFFFF0
 00773F1E    mov         dword ptr [ebp-8],ecx
 00773F21    mov         dword ptr [ebp-4],edx
 00773F24    push        dword ptr [ebp+4]
 00773F27    mov         eax,dword ptr [ebp-8]
 00773F2A    mov         dword ptr [ebp-10],eax
 00773F2D    mov         byte ptr [ebp-0C],0
 00773F31    lea         eax,[ebp-10]
 00773F34    push        eax
 00773F35    push        0
 00773F37    mov         ecx,dword ptr [ebp-4]
 00773F3A    mov         dl,1
 00773F3C    mov         eax,[004180BC];EListError
 00773F41    call        Exception.CreateFmt;EListError.Create
>00773F46    jmp         @RaiseExcept
end;*}

//00773F50
procedure TList<FXDCData.TDCLoop>.Add(Value:TDCLoop);
begin
{*
 00773F50    push        ecx
 00773F51    mov         dword ptr [esp],edx
 00773F54    mov         edx,esp
 00773F56    add         eax,8
 00773F59    call        0043489C
 00773F5E    pop         edx
 00773F5F    ret
*}
end;

//00773F60
{*procedure TList<FXDCData.TDCLoop>.ToArray(?:?);
begin
 00773F60    push        ecx
 00773F61    mov         dword ptr [esp],edx
 00773F64    mov         edx,dword ptr [esp]
 00773F67    add         eax,8
 00773F6A    call        00435980
 00773F6F    pop         edx
 00773F70    ret
end;*}

//00773F74
procedure TList<FXDCData.TDCLoop>.GetEnumerator;
begin
{*
 00773F74    mov         ecx,eax
 00773F76    mov         dl,1
 00773F78    mov         eax,[0076B9C4];TList<FXDCData.TDCLoop>.TEnumerator
 00773F7D    call        00773FB0
 00773F82    ret
*}
end;

//00773F84
{*function sub_00773F84(?:?):?;
begin
 00773F84    push        ebx
 00773F85    push        esi
 00773F86    mov         ebx,dword ptr [eax+4]
 00773F89    mov         esi,dword ptr [eax+8]
 00773F8C    lea         eax,[ebx+8]
 00773F8F    mov         edx,esi
 00773F91    call        00434534
 00773F96    mov         eax,dword ptr [ebx+20]
 00773F99    mov         eax,dword ptr [eax+esi*4]
 00773F9C    pop         esi
 00773F9D    pop         ebx
 00773F9E    ret
end;*}

//00773FA0
procedure sub_00773FA0;
begin
{*
 00773FA0    call        00773F84
 00773FA5    ret
*}
end;

//00773FA8
procedure sub_00773FA8;
begin
{*
 00773FA8    call        TList<FXDCData.TDCLoop>.TEnumerator.MoveNext
 00773FAD    ret
*}
end;

//00773FB0
constructor sub_00773FB0(AList:TList<FXDCData.TDCLoop>);
begin
{*
 00773FB0    push        ebx
 00773FB1    push        esi
 00773FB2    push        edi
 00773FB3    test        dl,dl
>00773FB5    je          00773FBF
 00773FB7    add         esp,0FFFFFFF0
 00773FBA    call        @ClassCreate
 00773FBF    mov         esi,ecx
 00773FC1    mov         ebx,edx
 00773FC3    mov         edi,eax
 00773FC5    xor         edx,edx
 00773FC7    mov         eax,edi
 00773FC9    call        TObject.Create
 00773FCE    mov         dword ptr [edi+4],esi
 00773FD1    mov         dword ptr [edi+8],0FFFFFFFF
 00773FD8    mov         eax,edi
 00773FDA    test        bl,bl
>00773FDC    je          00773FED
 00773FDE    call        @AfterConstruction
 00773FE3    pop         dword ptr fs:[0]
 00773FEA    add         esp,0C
 00773FED    mov         eax,edi
 00773FEF    pop         edi
 00773FF0    pop         esi
 00773FF1    pop         ebx
 00773FF2    ret
*}
end;

//00773FF4
function TList<FXDCData.TDCLoop>.TEnumerator.MoveNext:Boolean;
begin
{*
 00773FF4    mov         edx,dword ptr [eax+4]
 00773FF7    mov         edx,dword ptr [edx+8]
 00773FFA    cmp         edx,dword ptr [eax+8]
>00773FFD    jg          00774002
 00773FFF    xor         eax,eax
 00774001    ret
 00774002    inc         dword ptr [eax+8]
 00774005    mov         edx,dword ptr [eax+4]
 00774008    mov         edx,dword ptr [edx+8]
 0077400B    cmp         edx,dword ptr [eax+8]
 0077400E    setg        al
 00774011    ret
*}
end;

//00774014
{*procedure sub_00774014(?:?; ?:?);
begin
 00774014    push        ebx
 00774015    push        esi
 00774016    push        edi
 00774017    mov         ebx,ecx
 00774019    mov         edi,edx
 0077401B    mov         esi,eax
 0077401D    mov         ecx,ebx
 0077401F    mov         edx,edi
 00774021    mov         eax,esi
 00774023    call        00773D8C
 00774028    cmp         byte ptr [esi+30],0
>0077402C    je          0077403A
 0077402E    cmp         bl,1
>00774031    jne         0077403A
 00774033    mov         eax,edi
 00774035    call        TObject.Free
 0077403A    pop         edi
 0077403B    pop         esi
 0077403C    pop         ebx
 0077403D    ret
end;*}

//00774040
constructor sub_00774040(AOwnsObjects:Boolean);
begin
{*
 00774040    push        ebp
 00774041    mov         ebp,esp
 00774043    push        ecx
 00774044    push        ebx
 00774045    push        esi
 00774046    test        dl,dl
>00774048    je          00774052
 0077404A    add         esp,0FFFFFFF0
 0077404D    call        @ClassCreate
 00774052    mov         ebx,ecx
 00774054    mov         byte ptr [ebp-1],dl
 00774057    mov         esi,eax
 00774059    xor         edx,edx
 0077405B    mov         eax,esi
 0077405D    call        00773DA4
 00774062    mov         byte ptr [esi+30],bl
 00774065    mov         eax,esi
 00774067    cmp         byte ptr [ebp-1],0
>0077406B    je          0077407C
 0077406D    call        @AfterConstruction
 00774072    pop         dword ptr fs:[0]
 00774079    add         esp,0C
 0077407C    mov         eax,esi
 0077407E    pop         esi
 0077407F    pop         ebx
 00774080    pop         ecx
 00774081    pop         ebp
 00774082    ret
*}
end;

//00774084
destructor TEnumerable<FXDCData.TDCPanel>.Destroy();
begin
{*
 00774084    push        ebx
 00774085    push        esi
 00774086    call        @BeforeDestruction
 0077408B    mov         ebx,edx
 0077408D    mov         esi,eax
 0077408F    mov         dl,0FC
 00774091    and         dl,bl
 00774093    mov         eax,esi
 00774095    call        TObject.Destroy
 0077409A    test        bl,bl
>0077409C    jle         007740A5
 0077409E    mov         eax,esi
 007740A0    call        @ClassDestroy
 007740A5    pop         esi
 007740A6    pop         ebx
 007740A7    ret
*}
end;

//007740A8
function TEnumerable<FXDCData.TDCPanel>.GetEnumerator:TEnumerator<FXDCData.TDCPanel>;
begin
{*
 007740A8    mov         edx,dword ptr [eax]
 007740AA    call        dword ptr [edx]
 007740AC    ret
*}
end;

//007740B0
{*procedure TEnumerable<FXDCData.TDCPanel>.ToArray(?:?);
begin
 007740B0    push        ebp
 007740B1    mov         ebp,esp
 007740B3    add         esp,0FFFFFFF4
 007740B6    push        ebx
 007740B7    mov         dword ptr [ebp-4],edx
 007740BA    mov         ebx,eax
 007740BC    mov         dl,1
 007740BE    mov         eax,[0076D0DC];TList<FXDCData.TDCPanel>
 007740C3    call        007741FC
 007740C8    mov         dword ptr [ebp-8],eax
 007740CB    xor         eax,eax
 007740CD    push        ebp
 007740CE    push        774158
 007740D3    push        dword ptr fs:[eax]
 007740D6    mov         dword ptr fs:[eax],esp
 007740D9    mov         eax,ebx
 007740DB    call        TEnumerable<FXDCData.TDCPanel>.GetEnumerator
 007740E0    mov         dword ptr [ebp-0C],eax
 007740E3    xor         eax,eax
 007740E5    push        ebp
 007740E6    push        774130
 007740EB    push        dword ptr fs:[eax]
 007740EE    mov         dword ptr fs:[eax],esp
>007740F1    jmp         00774106
 007740F3    mov         eax,dword ptr [ebp-0C]
 007740F6    mov         edx,dword ptr [eax]
 007740F8    call        dword ptr [edx]
 007740FA    mov         ebx,eax
 007740FC    mov         edx,ebx
 007740FE    mov         eax,dword ptr [ebp-8]
 00774101    call        TList<FXDCData.TDCPanel>.Add
 00774106    mov         eax,dword ptr [ebp-0C]
 00774109    call        TEnumerator<FXDCData.TDCPanel>.MoveNext
 0077410E    test        al,al
>00774110    jne         007740F3
 00774112    xor         eax,eax
 00774114    pop         edx
 00774115    pop         ecx
 00774116    pop         ecx
 00774117    mov         dword ptr fs:[eax],edx
 0077411A    push        774137
 0077411F    cmp         dword ptr [ebp-0C],0
>00774123    je          0077412F
 00774125    mov         dl,1
 00774127    mov         eax,dword ptr [ebp-0C]
 0077412A    mov         ecx,dword ptr [eax]
 0077412C    call        dword ptr [ecx-4]
 0077412F    ret
>00774130    jmp         @HandleFinally
>00774135    jmp         0077411F
 00774137    mov         edx,dword ptr [ebp-4]
 0077413A    mov         eax,dword ptr [ebp-8]
 0077413D    call        TList<FXDCData.TDCPanel>.ToArray
 00774142    xor         eax,eax
 00774144    pop         edx
 00774145    pop         ecx
 00774146    pop         ecx
 00774147    mov         dword ptr fs:[eax],edx
 0077414A    push        77415F
 0077414F    mov         eax,dword ptr [ebp-8]
 00774152    call        TObject.Free
 00774157    ret
>00774158    jmp         @HandleFinally
>0077415D    jmp         0077414F
 0077415F    pop         ebx
 00774160    mov         esp,ebp
 00774162    pop         ebp
 00774163    ret
end;*}

//00774164
function TEnumerator<FXDCData.TDCPanel>.MoveNext:Boolean;
begin
{*
 00774164    mov         edx,dword ptr [eax]
 00774166    call        dword ptr [edx+4]
 00774169    ret
*}
end;

//007741B4
procedure sub_007741B4(?:TList<FXDCData.TDCPanel>);
begin
{*
 007741B4    add         eax,8
 007741B7    call        004357A0
 007741BC    ret
*}
end;

//007741C0
{*procedure sub_007741C0(?:?; ?:?);
begin
 007741C0    push        ebx
 007741C1    mov         edx,dword ptr [edx]
 007741C3    mov         ebx,dword ptr [eax]
 007741C5    call        dword ptr [ebx+8]
 007741C8    pop         ebx
 007741C9    ret
end;*}

//007741CC
{*procedure sub_007741CC(?:?; ?:?; ?:?);
begin
 007741CC    push        ebx
 007741CD    mov         edx,dword ptr [edx]
 007741CF    mov         ecx,dword ptr [ecx]
 007741D1    mov         eax,dword ptr [eax+24]
 007741D4    mov         ebx,dword ptr [eax]
 007741D6    call        dword ptr [ebx+0C]
 007741D9    pop         ebx
 007741DA    ret
end;*}

//007741DC
procedure sub_007741DC;
begin
{*
 007741DC    call        TList<FXDCData.TDCPanel>.GetEnumerator
 007741E1    ret
*}
end;

//007741E4
{*procedure sub_007741E4(?:?);
begin
 007741E4    push        ebx
 007741E5    cmp         word ptr [eax+2A],0
>007741EA    je          007741F9
 007741EC    push        ecx
 007741ED    mov         ebx,eax
 007741EF    mov         ecx,edx
 007741F1    mov         edx,eax
 007741F3    mov         eax,dword ptr [ebx+2C]
 007741F6    call        dword ptr [ebx+28]
 007741F9    pop         ebx
 007741FA    ret
end;*}

//007741FC
constructor sub_007741FC;
begin
{*
 007741FC    push        ebp
 007741FD    mov         ebp,esp
 007741FF    push        0
 00774201    push        ebx
 00774202    push        esi
 00774203    test        dl,dl
>00774205    je          0077420F
 00774207    add         esp,0FFFFFFF0
 0077420A    call        @ClassCreate
 0077420F    mov         ebx,edx
 00774211    mov         esi,eax
 00774213    xor         eax,eax
 00774215    push        ebp
 00774216    push        774250
 0077421B    push        dword ptr fs:[eax]
 0077421E    mov         dword ptr fs:[eax],esp
 00774221    lea         edx,[ebp-4]
 00774224    mov         eax,[00775424];TComparer<FXDCData.TDCPanel>
 00774229    call        TComparer<FXDCData.TDCPanel>.Default
 0077422E    mov         ecx,dword ptr [ebp-4]
 00774231    xor         edx,edx
 00774233    mov         eax,esi
 00774235    call        00774274
 0077423A    xor         eax,eax
 0077423C    pop         edx
 0077423D    pop         ecx
 0077423E    pop         ecx
 0077423F    mov         dword ptr fs:[eax],edx
 00774242    push        774257
 00774247    lea         eax,[ebp-4]
 0077424A    call        @IntfClear
 0077424F    ret
>00774250    jmp         @HandleFinally
>00774255    jmp         00774247
 00774257    mov         eax,esi
 00774259    test        bl,bl
>0077425B    je          0077426C
 0077425D    call        @AfterConstruction
 00774262    pop         dword ptr fs:[0]
 00774269    add         esp,0C
 0077426C    mov         eax,esi
 0077426E    pop         esi
 0077426F    pop         ebx
 00774270    pop         ecx
 00774271    pop         ebp
 00774272    ret
*}
end;

//00774274
constructor sub_00774274(AComparer:IComparer<FXDCData.TDCPanel>);
begin
{*
 00774274    push        ebp
 00774275    mov         ebp,esp
 00774277    push        0
 00774279    push        ebx
 0077427A    push        esi
 0077427B    push        edi
 0077427C    test        dl,dl
>0077427E    je          00774288
 00774280    add         esp,0FFFFFFF0
 00774283    call        @ClassCreate
 00774288    mov         esi,ecx
 0077428A    mov         ebx,edx
 0077428C    mov         edi,eax
 0077428E    xor         eax,eax
 00774290    push        ebp
 00774291    push        7742FF
 00774296    push        dword ptr fs:[eax]
 00774299    mov         dword ptr fs:[eax],esp
 0077429C    xor         edx,edx
 0077429E    mov         eax,edi
 007742A0    call        TObject.Create
 007742A5    mov         dword ptr [edi+14],edi
 007742A8    mov         dword ptr [edi+10],7741C0;sub_007741C0
 007742AF    mov         dword ptr [edi+1C],edi
 007742B2    mov         dword ptr [edi+18],7741CC;sub_007741CC
 007742B9    mov         eax,[0076CD24];TList<FXDCData.TDCPanel>.arrayofT
 007742BE    mov         dword ptr [edi+0C],eax
 007742C1    lea         eax,[edi+24]
 007742C4    mov         edx,esi
 007742C6    call        @IntfCopy
 007742CB    cmp         dword ptr [edi+24],0
>007742CF    jne         007742E9
 007742D1    lea         edx,[ebp-4]
 007742D4    mov         eax,[00775424];TComparer<FXDCData.TDCPanel>
 007742D9    call        TComparer<FXDCData.TDCPanel>.Default
 007742DE    mov         edx,dword ptr [ebp-4]
 007742E1    lea         eax,[edi+24]
 007742E4    call        @IntfCopy
 007742E9    xor         eax,eax
 007742EB    pop         edx
 007742EC    pop         ecx
 007742ED    pop         ecx
 007742EE    mov         dword ptr fs:[eax],edx
 007742F1    push        774306
 007742F6    lea         eax,[ebp-4]
 007742F9    call        @IntfClear
 007742FE    ret
>007742FF    jmp         @HandleFinally
>00774304    jmp         007742F6
 00774306    mov         eax,edi
 00774308    test        bl,bl
>0077430A    je          0077431B
 0077430C    call        @AfterConstruction
 00774311    pop         dword ptr fs:[0]
 00774318    add         esp,0C
 0077431B    mov         eax,edi
 0077431D    pop         edi
 0077431E    pop         esi
 0077431F    pop         ebx
 00774320    pop         ecx
 00774321    pop         ebp
 00774322    ret
*}
end;

//00774324
destructor TList<FXDCData.TDCPanel>.Destroy();
begin
{*
 00774324    push        ebx
 00774325    push        esi
 00774326    call        @BeforeDestruction
 0077432B    mov         ebx,edx
 0077432D    mov         esi,eax
 0077432F    cmp         dword ptr [esi+8],0
>00774333    jle         0077433E
 00774335    xor         edx,edx
 00774337    mov         eax,esi
 00774339    call        007741B4
 0077433E    push        0
 00774340    lea         eax,[esi+20]
 00774343    mov         ecx,1
 00774348    mov         edx,dword ptr ds:[76CD24];TList<FXDCData.TDCPanel>.arrayofT
 0077434E    call        @DynArraySetLength
 00774353    add         esp,4
 00774356    mov         dl,0FC
 00774358    and         dl,bl
 0077435A    mov         eax,esi
 0077435C    call        TEnumerable<FXDCData.TDCPanel>.Destroy
 00774361    test        bl,bl
>00774363    jle         0077436C
 00774365    mov         eax,esi
 00774367    call        @ClassDestroy
 0077436C    pop         esi
 0077436D    pop         ebx
 0077436E    ret
*}
end;

//00774370
{*procedure TList<FXDCData.TDCPanel>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 00774370    push        ebp
 00774371    mov         ebp,esp
 00774373    add         esp,0FFFFFFF0
 00774376    mov         dword ptr [ebp-8],ecx
 00774379    mov         dword ptr [ebp-4],edx
 0077437C    push        dword ptr [ebp+4]
 0077437F    mov         eax,dword ptr [ebp-8]
 00774382    mov         dword ptr [ebp-10],eax
 00774385    mov         byte ptr [ebp-0C],0
 00774389    lea         eax,[ebp-10]
 0077438C    push        eax
 0077438D    push        0
 0077438F    mov         ecx,dword ptr [ebp-4]
 00774392    mov         dl,1
 00774394    mov         eax,[004180BC];EListError
 00774399    call        Exception.CreateFmt;EListError.Create
>0077439E    jmp         @RaiseExcept
end;*}

//007743A8
procedure TList<FXDCData.TDCPanel>.Add(Value:TDCPanel);
begin
{*
 007743A8    push        ecx
 007743A9    mov         dword ptr [esp],edx
 007743AC    mov         edx,esp
 007743AE    add         eax,8
 007743B1    call        0043489C
 007743B6    pop         edx
 007743B7    ret
*}
end;

//007743B8
{*procedure TList<FXDCData.TDCPanel>.ToArray(?:?);
begin
 007743B8    push        ecx
 007743B9    mov         dword ptr [esp],edx
 007743BC    mov         edx,dword ptr [esp]
 007743BF    add         eax,8
 007743C2    call        00435980
 007743C7    pop         edx
 007743C8    ret
end;*}

//007743CC
procedure TList<FXDCData.TDCPanel>.GetEnumerator;
begin
{*
 007743CC    mov         ecx,eax
 007743CE    mov         dl,1
 007743D0    mov         eax,[0076CF34];TList<FXDCData.TDCPanel>.TEnumerator
 007743D5    call        00774408
 007743DA    ret
*}
end;

//007743DC
{*function sub_007743DC(?:?):?;
begin
 007743DC    push        ebx
 007743DD    push        esi
 007743DE    mov         ebx,dword ptr [eax+4]
 007743E1    mov         esi,dword ptr [eax+8]
 007743E4    lea         eax,[ebx+8]
 007743E7    mov         edx,esi
 007743E9    call        00434534
 007743EE    mov         eax,dword ptr [ebx+20]
 007743F1    mov         eax,dword ptr [eax+esi*4]
 007743F4    pop         esi
 007743F5    pop         ebx
 007743F6    ret
end;*}

//007743F8
procedure sub_007743F8;
begin
{*
 007743F8    call        007743DC
 007743FD    ret
*}
end;

//00774400
procedure sub_00774400;
begin
{*
 00774400    call        TList<FXDCData.TDCPanel>.TEnumerator.MoveNext
 00774405    ret
*}
end;

//00774408
constructor sub_00774408(AList:TList<FXDCData.TDCPanel>);
begin
{*
 00774408    push        ebx
 00774409    push        esi
 0077440A    push        edi
 0077440B    test        dl,dl
>0077440D    je          00774417
 0077440F    add         esp,0FFFFFFF0
 00774412    call        @ClassCreate
 00774417    mov         esi,ecx
 00774419    mov         ebx,edx
 0077441B    mov         edi,eax
 0077441D    xor         edx,edx
 0077441F    mov         eax,edi
 00774421    call        TObject.Create
 00774426    mov         dword ptr [edi+4],esi
 00774429    mov         dword ptr [edi+8],0FFFFFFFF
 00774430    mov         eax,edi
 00774432    test        bl,bl
>00774434    je          00774445
 00774436    call        @AfterConstruction
 0077443B    pop         dword ptr fs:[0]
 00774442    add         esp,0C
 00774445    mov         eax,edi
 00774447    pop         edi
 00774448    pop         esi
 00774449    pop         ebx
 0077444A    ret
*}
end;

//0077444C
function TList<FXDCData.TDCPanel>.TEnumerator.MoveNext:Boolean;
begin
{*
 0077444C    mov         edx,dword ptr [eax+4]
 0077444F    mov         edx,dword ptr [edx+8]
 00774452    cmp         edx,dword ptr [eax+8]
>00774455    jg          0077445A
 00774457    xor         eax,eax
 00774459    ret
 0077445A    inc         dword ptr [eax+8]
 0077445D    mov         edx,dword ptr [eax+4]
 00774460    mov         edx,dword ptr [edx+8]
 00774463    cmp         edx,dword ptr [eax+8]
 00774466    setg        al
 00774469    ret
*}
end;

//0077446C
{*procedure sub_0077446C(?:?; ?:?);
begin
 0077446C    push        ebx
 0077446D    push        esi
 0077446E    push        edi
 0077446F    mov         ebx,ecx
 00774471    mov         edi,edx
 00774473    mov         esi,eax
 00774475    mov         ecx,ebx
 00774477    mov         edx,edi
 00774479    mov         eax,esi
 0077447B    call        007741E4
 00774480    cmp         byte ptr [esi+30],0
>00774484    je          00774492
 00774486    cmp         bl,1
>00774489    jne         00774492
 0077448B    mov         eax,edi
 0077448D    call        TObject.Free
 00774492    pop         edi
 00774493    pop         esi
 00774494    pop         ebx
 00774495    ret
end;*}

//00774498
constructor sub_00774498(AOwnsObjects:Boolean);
begin
{*
 00774498    push        ebp
 00774499    mov         ebp,esp
 0077449B    push        ecx
 0077449C    push        ebx
 0077449D    push        esi
 0077449E    test        dl,dl
>007744A0    je          007744AA
 007744A2    add         esp,0FFFFFFF0
 007744A5    call        @ClassCreate
 007744AA    mov         ebx,ecx
 007744AC    mov         byte ptr [ebp-1],dl
 007744AF    mov         esi,eax
 007744B1    xor         edx,edx
 007744B3    mov         eax,esi
 007744B5    call        007741FC
 007744BA    mov         byte ptr [esi+30],bl
 007744BD    mov         eax,esi
 007744BF    cmp         byte ptr [ebp-1],0
>007744C3    je          007744D4
 007744C5    call        @AfterConstruction
 007744CA    pop         dword ptr fs:[0]
 007744D1    add         esp,0C
 007744D4    mov         eax,esi
 007744D6    pop         esi
 007744D7    pop         ebx
 007744D8    pop         ecx
 007744D9    pop         ebp
 007744DA    ret
*}
end;

//007744DC
destructor TEnumerable<FXDCData.TCtrlOutput>.Destroy();
begin
{*
 007744DC    push        ebx
 007744DD    push        esi
 007744DE    call        @BeforeDestruction
 007744E3    mov         ebx,edx
 007744E5    mov         esi,eax
 007744E7    mov         dl,0FC
 007744E9    and         dl,bl
 007744EB    mov         eax,esi
 007744ED    call        TObject.Destroy
 007744F2    test        bl,bl
>007744F4    jle         007744FD
 007744F6    mov         eax,esi
 007744F8    call        @ClassDestroy
 007744FD    pop         esi
 007744FE    pop         ebx
 007744FF    ret
*}
end;

//00774500
function TEnumerable<FXDCData.TCtrlOutput>.GetEnumerator:TEnumerator<FXDCData.TCtrlOutput>;
begin
{*
 00774500    mov         edx,dword ptr [eax]
 00774502    call        dword ptr [edx]
 00774504    ret
*}
end;

//00774508
{*procedure TEnumerable<FXDCData.TCtrlOutput>.ToArray(?:?);
begin
 00774508    push        ebp
 00774509    mov         ebp,esp
 0077450B    add         esp,0FFFFFFF4
 0077450E    push        ebx
 0077450F    mov         dword ptr [ebp-4],edx
 00774512    mov         ebx,eax
 00774514    mov         dl,1
 00774516    mov         eax,[0076E674];TList<FXDCData.TCtrlOutput>
 0077451B    call        00774654
 00774520    mov         dword ptr [ebp-8],eax
 00774523    xor         eax,eax
 00774525    push        ebp
 00774526    push        7745B0
 0077452B    push        dword ptr fs:[eax]
 0077452E    mov         dword ptr fs:[eax],esp
 00774531    mov         eax,ebx
 00774533    call        TEnumerable<FXDCData.TCtrlOutput>.GetEnumerator
 00774538    mov         dword ptr [ebp-0C],eax
 0077453B    xor         eax,eax
 0077453D    push        ebp
 0077453E    push        774588
 00774543    push        dword ptr fs:[eax]
 00774546    mov         dword ptr fs:[eax],esp
>00774549    jmp         0077455E
 0077454B    mov         eax,dword ptr [ebp-0C]
 0077454E    mov         edx,dword ptr [eax]
 00774550    call        dword ptr [edx]
 00774552    mov         ebx,eax
 00774554    mov         edx,ebx
 00774556    mov         eax,dword ptr [ebp-8]
 00774559    call        TList<FXDCData.TCtrlOutput>.Add
 0077455E    mov         eax,dword ptr [ebp-0C]
 00774561    call        TEnumerator<FXDCData.TCtrlOutput>.MoveNext
 00774566    test        al,al
>00774568    jne         0077454B
 0077456A    xor         eax,eax
 0077456C    pop         edx
 0077456D    pop         ecx
 0077456E    pop         ecx
 0077456F    mov         dword ptr fs:[eax],edx
 00774572    push        77458F
 00774577    cmp         dword ptr [ebp-0C],0
>0077457B    je          00774587
 0077457D    mov         dl,1
 0077457F    mov         eax,dword ptr [ebp-0C]
 00774582    mov         ecx,dword ptr [eax]
 00774584    call        dword ptr [ecx-4]
 00774587    ret
>00774588    jmp         @HandleFinally
>0077458D    jmp         00774577
 0077458F    mov         edx,dword ptr [ebp-4]
 00774592    mov         eax,dword ptr [ebp-8]
 00774595    call        TList<FXDCData.TCtrlOutput>.ToArray
 0077459A    xor         eax,eax
 0077459C    pop         edx
 0077459D    pop         ecx
 0077459E    pop         ecx
 0077459F    mov         dword ptr fs:[eax],edx
 007745A2    push        7745B7
 007745A7    mov         eax,dword ptr [ebp-8]
 007745AA    call        TObject.Free
 007745AF    ret
>007745B0    jmp         @HandleFinally
>007745B5    jmp         007745A7
 007745B7    pop         ebx
 007745B8    mov         esp,ebp
 007745BA    pop         ebp
 007745BB    ret
end;*}

//007745BC
function TEnumerator<FXDCData.TCtrlOutput>.MoveNext:Boolean;
begin
{*
 007745BC    mov         edx,dword ptr [eax]
 007745BE    call        dword ptr [edx+4]
 007745C1    ret
*}
end;

//0077460C
procedure sub_0077460C(?:TList<FXDCData.TCtrlOutput>);
begin
{*
 0077460C    add         eax,8
 0077460F    call        004357A0
 00774614    ret
*}
end;

//00774618
{*procedure sub_00774618(?:?; ?:?);
begin
 00774618    push        ebx
 00774619    mov         edx,dword ptr [edx]
 0077461B    mov         ebx,dword ptr [eax]
 0077461D    call        dword ptr [ebx+8]
 00774620    pop         ebx
 00774621    ret
end;*}

//00774624
{*procedure sub_00774624(?:?; ?:?; ?:?);
begin
 00774624    push        ebx
 00774625    mov         edx,dword ptr [edx]
 00774627    mov         ecx,dword ptr [ecx]
 00774629    mov         eax,dword ptr [eax+24]
 0077462C    mov         ebx,dword ptr [eax]
 0077462E    call        dword ptr [ebx+0C]
 00774631    pop         ebx
 00774632    ret
end;*}

//00774634
procedure sub_00774634;
begin
{*
 00774634    call        TList<FXDCData.TCtrlOutput>.GetEnumerator
 00774639    ret
*}
end;

//0077463C
{*procedure sub_0077463C(?:?);
begin
 0077463C    push        ebx
 0077463D    cmp         word ptr [eax+2A],0
>00774642    je          00774651
 00774644    push        ecx
 00774645    mov         ebx,eax
 00774647    mov         ecx,edx
 00774649    mov         edx,eax
 0077464B    mov         eax,dword ptr [ebx+2C]
 0077464E    call        dword ptr [ebx+28]
 00774651    pop         ebx
 00774652    ret
end;*}

//00774654
constructor sub_00774654;
begin
{*
 00774654    push        ebp
 00774655    mov         ebp,esp
 00774657    push        0
 00774659    push        ebx
 0077465A    push        esi
 0077465B    test        dl,dl
>0077465D    je          00774667
 0077465F    add         esp,0FFFFFFF0
 00774662    call        @ClassCreate
 00774667    mov         ebx,edx
 00774669    mov         esi,eax
 0077466B    xor         eax,eax
 0077466D    push        ebp
 0077466E    push        7746A8
 00774673    push        dword ptr fs:[eax]
 00774676    mov         dword ptr fs:[eax],esp
 00774679    lea         edx,[ebp-4]
 0077467C    mov         eax,[00775688];TComparer<FXDCData.TCtrlOutput>
 00774681    call        TComparer<FXDCData.TCtrlOutput>.Default
 00774686    mov         ecx,dword ptr [ebp-4]
 00774689    xor         edx,edx
 0077468B    mov         eax,esi
 0077468D    call        007746CC
 00774692    xor         eax,eax
 00774694    pop         edx
 00774695    pop         ecx
 00774696    pop         ecx
 00774697    mov         dword ptr fs:[eax],edx
 0077469A    push        7746AF
 0077469F    lea         eax,[ebp-4]
 007746A2    call        @IntfClear
 007746A7    ret
>007746A8    jmp         @HandleFinally
>007746AD    jmp         0077469F
 007746AF    mov         eax,esi
 007746B1    test        bl,bl
>007746B3    je          007746C4
 007746B5    call        @AfterConstruction
 007746BA    pop         dword ptr fs:[0]
 007746C1    add         esp,0C
 007746C4    mov         eax,esi
 007746C6    pop         esi
 007746C7    pop         ebx
 007746C8    pop         ecx
 007746C9    pop         ebp
 007746CA    ret
*}
end;

//007746CC
constructor sub_007746CC(AComparer:IComparer<FXDCData.TCtrlOutput>);
begin
{*
 007746CC    push        ebp
 007746CD    mov         ebp,esp
 007746CF    push        0
 007746D1    push        ebx
 007746D2    push        esi
 007746D3    push        edi
 007746D4    test        dl,dl
>007746D6    je          007746E0
 007746D8    add         esp,0FFFFFFF0
 007746DB    call        @ClassCreate
 007746E0    mov         esi,ecx
 007746E2    mov         ebx,edx
 007746E4    mov         edi,eax
 007746E6    xor         eax,eax
 007746E8    push        ebp
 007746E9    push        774757
 007746EE    push        dword ptr fs:[eax]
 007746F1    mov         dword ptr fs:[eax],esp
 007746F4    xor         edx,edx
 007746F6    mov         eax,edi
 007746F8    call        TObject.Create
 007746FD    mov         dword ptr [edi+14],edi
 00774700    mov         dword ptr [edi+10],774618;sub_00774618
 00774707    mov         dword ptr [edi+1C],edi
 0077470A    mov         dword ptr [edi+18],774624;sub_00774624
 00774711    mov         eax,[0076E2A8];TList<FXDCData.TCtrlOutput>.arrayofT
 00774716    mov         dword ptr [edi+0C],eax
 00774719    lea         eax,[edi+24]
 0077471C    mov         edx,esi
 0077471E    call        @IntfCopy
 00774723    cmp         dword ptr [edi+24],0
>00774727    jne         00774741
 00774729    lea         edx,[ebp-4]
 0077472C    mov         eax,[00775688];TComparer<FXDCData.TCtrlOutput>
 00774731    call        TComparer<FXDCData.TCtrlOutput>.Default
 00774736    mov         edx,dword ptr [ebp-4]
 00774739    lea         eax,[edi+24]
 0077473C    call        @IntfCopy
 00774741    xor         eax,eax
 00774743    pop         edx
 00774744    pop         ecx
 00774745    pop         ecx
 00774746    mov         dword ptr fs:[eax],edx
 00774749    push        77475E
 0077474E    lea         eax,[ebp-4]
 00774751    call        @IntfClear
 00774756    ret
>00774757    jmp         @HandleFinally
>0077475C    jmp         0077474E
 0077475E    mov         eax,edi
 00774760    test        bl,bl
>00774762    je          00774773
 00774764    call        @AfterConstruction
 00774769    pop         dword ptr fs:[0]
 00774770    add         esp,0C
 00774773    mov         eax,edi
 00774775    pop         edi
 00774776    pop         esi
 00774777    pop         ebx
 00774778    pop         ecx
 00774779    pop         ebp
 0077477A    ret
*}
end;

//0077477C
destructor TList<FXDCData.TCtrlOutput>.Destroy();
begin
{*
 0077477C    push        ebx
 0077477D    push        esi
 0077477E    call        @BeforeDestruction
 00774783    mov         ebx,edx
 00774785    mov         esi,eax
 00774787    cmp         dword ptr [esi+8],0
>0077478B    jle         00774796
 0077478D    xor         edx,edx
 0077478F    mov         eax,esi
 00774791    call        0077460C
 00774796    push        0
 00774798    lea         eax,[esi+20]
 0077479B    mov         ecx,1
 007747A0    mov         edx,dword ptr ds:[76E2A8];TList<FXDCData.TCtrlOutput>.arrayofT
 007747A6    call        @DynArraySetLength
 007747AB    add         esp,4
 007747AE    mov         dl,0FC
 007747B0    and         dl,bl
 007747B2    mov         eax,esi
 007747B4    call        TEnumerable<FXDCData.TCtrlOutput>.Destroy
 007747B9    test        bl,bl
>007747BB    jle         007747C4
 007747BD    mov         eax,esi
 007747BF    call        @ClassDestroy
 007747C4    pop         esi
 007747C5    pop         ebx
 007747C6    ret
*}
end;

//007747C8
{*procedure TList<FXDCData.TCtrlOutput>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 007747C8    push        ebp
 007747C9    mov         ebp,esp
 007747CB    add         esp,0FFFFFFF0
 007747CE    mov         dword ptr [ebp-8],ecx
 007747D1    mov         dword ptr [ebp-4],edx
 007747D4    push        dword ptr [ebp+4]
 007747D7    mov         eax,dword ptr [ebp-8]
 007747DA    mov         dword ptr [ebp-10],eax
 007747DD    mov         byte ptr [ebp-0C],0
 007747E1    lea         eax,[ebp-10]
 007747E4    push        eax
 007747E5    push        0
 007747E7    mov         ecx,dword ptr [ebp-4]
 007747EA    mov         dl,1
 007747EC    mov         eax,[004180BC];EListError
 007747F1    call        Exception.CreateFmt;EListError.Create
>007747F6    jmp         @RaiseExcept
end;*}

//00774800
procedure TList<FXDCData.TCtrlOutput>.Add(Value:TCtrlOutput);
begin
{*
 00774800    push        ecx
 00774801    mov         dword ptr [esp],edx
 00774804    mov         edx,esp
 00774806    add         eax,8
 00774809    call        0043489C
 0077480E    pop         edx
 0077480F    ret
*}
end;

//00774810
{*procedure TList<FXDCData.TCtrlOutput>.ToArray(?:?);
begin
 00774810    push        ecx
 00774811    mov         dword ptr [esp],edx
 00774814    mov         edx,dword ptr [esp]
 00774817    add         eax,8
 0077481A    call        00435980
 0077481F    pop         edx
 00774820    ret
end;*}

//00774824
procedure TList<FXDCData.TCtrlOutput>.GetEnumerator;
begin
{*
 00774824    mov         ecx,eax
 00774826    mov         dl,1
 00774828    mov         eax,[0076E4C8];TList<FXDCData.TCtrlOutput>.TEnumerator
 0077482D    call        00774860
 00774832    ret
*}
end;

//00774834
{*function sub_00774834(?:?):?;
begin
 00774834    push        ebx
 00774835    push        esi
 00774836    mov         ebx,dword ptr [eax+4]
 00774839    mov         esi,dword ptr [eax+8]
 0077483C    lea         eax,[ebx+8]
 0077483F    mov         edx,esi
 00774841    call        00434534
 00774846    mov         eax,dword ptr [ebx+20]
 00774849    mov         eax,dword ptr [eax+esi*4]
 0077484C    pop         esi
 0077484D    pop         ebx
 0077484E    ret
end;*}

//00774850
procedure sub_00774850;
begin
{*
 00774850    call        00774834
 00774855    ret
*}
end;

//00774858
procedure sub_00774858;
begin
{*
 00774858    call        TList<FXDCData.TCtrlOutput>.TEnumerator.MoveNext
 0077485D    ret
*}
end;

//00774860
constructor sub_00774860(AList:TList<FXDCData.TCtrlOutput>);
begin
{*
 00774860    push        ebx
 00774861    push        esi
 00774862    push        edi
 00774863    test        dl,dl
>00774865    je          0077486F
 00774867    add         esp,0FFFFFFF0
 0077486A    call        @ClassCreate
 0077486F    mov         esi,ecx
 00774871    mov         ebx,edx
 00774873    mov         edi,eax
 00774875    xor         edx,edx
 00774877    mov         eax,edi
 00774879    call        TObject.Create
 0077487E    mov         dword ptr [edi+4],esi
 00774881    mov         dword ptr [edi+8],0FFFFFFFF
 00774888    mov         eax,edi
 0077488A    test        bl,bl
>0077488C    je          0077489D
 0077488E    call        @AfterConstruction
 00774893    pop         dword ptr fs:[0]
 0077489A    add         esp,0C
 0077489D    mov         eax,edi
 0077489F    pop         edi
 007748A0    pop         esi
 007748A1    pop         ebx
 007748A2    ret
*}
end;

//007748A4
function TList<FXDCData.TCtrlOutput>.TEnumerator.MoveNext:Boolean;
begin
{*
 007748A4    mov         edx,dword ptr [eax+4]
 007748A7    mov         edx,dword ptr [edx+8]
 007748AA    cmp         edx,dword ptr [eax+8]
>007748AD    jg          007748B2
 007748AF    xor         eax,eax
 007748B1    ret
 007748B2    inc         dword ptr [eax+8]
 007748B5    mov         edx,dword ptr [eax+4]
 007748B8    mov         edx,dword ptr [edx+8]
 007748BB    cmp         edx,dword ptr [eax+8]
 007748BE    setg        al
 007748C1    ret
*}
end;

//007748C4
{*procedure sub_007748C4(?:?; ?:?);
begin
 007748C4    push        ebx
 007748C5    push        esi
 007748C6    push        edi
 007748C7    mov         ebx,ecx
 007748C9    mov         edi,edx
 007748CB    mov         esi,eax
 007748CD    mov         ecx,ebx
 007748CF    mov         edx,edi
 007748D1    mov         eax,esi
 007748D3    call        0077463C
 007748D8    cmp         byte ptr [esi+30],0
>007748DC    je          007748EA
 007748DE    cmp         bl,1
>007748E1    jne         007748EA
 007748E3    mov         eax,edi
 007748E5    call        TObject.Free
 007748EA    pop         edi
 007748EB    pop         esi
 007748EC    pop         ebx
 007748ED    ret
end;*}

//007748F0
constructor sub_007748F0(AOwnsObjects:Boolean);
begin
{*
 007748F0    push        ebp
 007748F1    mov         ebp,esp
 007748F3    push        ecx
 007748F4    push        ebx
 007748F5    push        esi
 007748F6    test        dl,dl
>007748F8    je          00774902
 007748FA    add         esp,0FFFFFFF0
 007748FD    call        @ClassCreate
 00774902    mov         ebx,ecx
 00774904    mov         byte ptr [ebp-1],dl
 00774907    mov         esi,eax
 00774909    xor         edx,edx
 0077490B    mov         eax,esi
 0077490D    call        00774654
 00774912    mov         byte ptr [esi+30],bl
 00774915    mov         eax,esi
 00774917    cmp         byte ptr [ebp-1],0
>0077491B    je          0077492C
 0077491D    call        @AfterConstruction
 00774922    pop         dword ptr fs:[0]
 00774929    add         esp,0C
 0077492C    mov         eax,esi
 0077492E    pop         esi
 0077492F    pop         ebx
 00774930    pop         ecx
 00774931    pop         ebp
 00774932    ret
*}
end;

//00774934
{*procedure TComparer<FXDCData.TDCAddr>.Default(?:?);
begin
 00774934    push        ebx
 00774935    mov         ebx,edx
 00774937    mov         ecx,4
 0077493C    mov         edx,dword ptr ds:[7654C0];TDCAddr
 00774942    xor         eax,eax
 00774944    call        _LookupVtableInfo
 00774949    mov         edx,eax
 0077494B    mov         eax,ebx
 0077494D    call        @IntfCopy
 00774952    pop         ebx
 00774953    ret
end;*}

//00774954
{*procedure TComparer<FXDCData.TDCIoLine>.Default(?:?);
begin
 00774954    push        ebx
 00774955    mov         ebx,edx
 00774957    mov         ecx,4
 0077495C    mov         edx,dword ptr ds:[766134];TDCIoLine
 00774962    xor         eax,eax
 00774964    call        _LookupVtableInfo
 00774969    mov         edx,eax
 0077496B    mov         eax,ebx
 0077496D    call        @IntfCopy
 00774972    pop         ebx
 00774973    ret
end;*}

//00774974
{*procedure TComparer<FXDCData.TDCIoUnit>.Default(?:?);
begin
 00774974    push        ebx
 00774975    mov         ebx,edx
 00774977    mov         ecx,4
 0077497C    mov         edx,dword ptr ds:[766530];TDCIoUnit
 00774982    xor         eax,eax
 00774984    call        _LookupVtableInfo
 00774989    mov         edx,eax
 0077498B    mov         eax,ebx
 0077498D    call        @IntfCopy
 00774992    pop         ebx
 00774993    ret
end;*}

//00774994
{*procedure TComparer<FXDCData.TDCLoop>.Default(?:?);
begin
 00774994    push        ebx
 00774995    mov         ebx,edx
 00774997    mov         ecx,4
 0077499C    mov         edx,dword ptr ds:[765D00];TDCLoop
 007749A2    xor         eax,eax
 007749A4    call        _LookupVtableInfo
 007749A9    mov         edx,eax
 007749AB    mov         eax,ebx
 007749AD    call        @IntfCopy
 007749B2    pop         ebx
 007749B3    ret
end;*}

//007749B4
{*procedure TComparer<FXDCData.TDCPanel>.Default(?:?);
begin
 007749B4    push        ebx
 007749B5    mov         ebx,edx
 007749B7    mov         ecx,4
 007749BC    mov         edx,dword ptr ds:[76689C];TDCPanel
 007749C2    xor         eax,eax
 007749C4    call        _LookupVtableInfo
 007749C9    mov         edx,eax
 007749CB    mov         eax,ebx
 007749CD    call        @IntfCopy
 007749D2    pop         ebx
 007749D3    ret
end;*}

//007749D4
{*procedure TComparer<FXDCData.TCtrlOutput>.Default(?:?);
begin
 007749D4    push        ebx
 007749D5    mov         ebx,edx
 007749D7    mov         ecx,4
 007749DC    mov         edx,dword ptr ds:[764FC8];TCtrlOutput
 007749E2    xor         eax,eax
 007749E4    call        _LookupVtableInfo
 007749E9    mov         edx,eax
 007749EB    mov         eax,ebx
 007749ED    call        @IntfCopy
 007749F2    pop         ebx
 007749F3    ret
end;*}

//00775A8C
procedure TDCErrorFrm.FormCreate(Sender:TObject);
begin
{*
 00775A8C    push        ebp
 00775A8D    mov         ebp,esp
 00775A8F    add         esp,0FFFFFFF0
 00775A92    push        ebx
 00775A93    xor         ecx,ecx
 00775A95    mov         dword ptr [ebp-4],ecx
 00775A98    mov         dword ptr [ebp-10],ecx
 00775A9B    mov         ebx,eax
 00775A9D    xor         eax,eax
 00775A9F    push        ebp
 00775AA0    push        775AFF
 00775AA5    push        dword ptr fs:[eax]
 00775AA8    mov         dword ptr fs:[eax],esp
 00775AAB    lea         eax,[ebp-4]
 00775AAE    push        eax
 00775AAF    lea         edx,[ebp-10]
 00775AB2    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00775AB7    mov         eax,dword ptr [eax]
 00775AB9    call        005DDC74
 00775ABE    mov         eax,dword ptr [ebp-10]
 00775AC1    mov         dword ptr [ebp-0C],eax
 00775AC4    mov         byte ptr [ebp-8],11
 00775AC8    lea         edx,[ebp-0C]
 00775ACB    xor         ecx,ecx
 00775ACD    mov         eax,775B18;'Delayed controls errors (%s)'
 00775AD2    call        Format
 00775AD7    mov         edx,dword ptr [ebp-4]
 00775ADA    mov         eax,ebx
 00775ADC    call        TControl.SetText
 00775AE1    xor         eax,eax
 00775AE3    pop         edx
 00775AE4    pop         ecx
 00775AE5    pop         ecx
 00775AE6    mov         dword ptr fs:[eax],edx
 00775AE9    push        775B06
 00775AEE    lea         eax,[ebp-10]
 00775AF1    call        @UStrClr
 00775AF6    lea         eax,[ebp-4]
 00775AF9    call        @UStrClr
 00775AFE    ret
>00775AFF    jmp         @HandleFinally
>00775B04    jmp         00775AEE
 00775B06    pop         ebx
 00775B07    mov         esp,ebp
 00775B09    pop         ebp
 00775B0A    ret
*}
end;

//00777310
procedure TDCCauseEffectForm.CreateParams(var Params:TCreateParams);
begin
{*
 00777310    push        ebx
 00777311    mov         ebx,edx
 00777313    mov         edx,ebx
 00777315    call        TCustomForm.CreateParams
 0077731A    mov         eax,[007C4358];^gvar_009037A8:TDCGroupsFrm
 0077731F    mov         eax,dword ptr [eax]
 00777321    call        TWinControl.GetHandle
 00777326    mov         dword ptr [ebx+1C],eax;TCreateParams.WndParent:HWND
 00777329    pop         ebx
 0077732A    ret
*}
end;

//0077732C
procedure TDCCauseEffectForm.FormCreate(Sender:TObject);
begin
{*
 0077732C    push        ebp
 0077732D    mov         ebp,esp
 0077732F    add         esp,0FFFFFFE8
 00777332    push        ebx
 00777333    xor         ecx,ecx
 00777335    mov         dword ptr [ebp-4],ecx
 00777338    mov         dword ptr [ebp-18],ecx
 0077733B    mov         ebx,eax
 0077733D    xor         eax,eax
 0077733F    push        ebp
 00777340    push        7773C2
 00777345    push        dword ptr fs:[eax]
 00777348    mov         dword ptr fs:[eax],esp
 0077734B    lea         eax,[ebp-4]
 0077734E    push        eax
 0077734F    mov         eax,7773DC;'Control Activations'
 00777354    mov         dword ptr [ebp-14],eax
 00777357    mov         byte ptr [ebp-10],11
 0077735B    lea         edx,[ebp-18]
 0077735E    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 00777363    mov         eax,dword ptr [eax]
 00777365    call        005DDC74
 0077736A    mov         eax,dword ptr [ebp-18]
 0077736D    mov         dword ptr [ebp-0C],eax
 00777370    mov         byte ptr [ebp-8],11
 00777374    lea         edx,[ebp-14]
 00777377    mov         ecx,1
 0077737C    mov         eax,777410;'%s (%s)'
 00777381    call        Format
 00777386    mov         edx,dword ptr [ebp-4]
 00777389    mov         eax,ebx
 0077738B    call        TControl.SetText
 00777390    mov         dl,1
 00777392    mov         eax,[00766E28];TDCCtrlObjects
 00777397    call        TDCCtrlObjects.Create;TDCCtrlObjects.Create
 0077739C    mov         edx,dword ptr ds:[7C495C];^gvar_00903794:TDCCtrlObjects
 007773A2    mov         dword ptr [edx],eax
 007773A4    xor         eax,eax
 007773A6    pop         edx
 007773A7    pop         ecx
 007773A8    pop         ecx
 007773A9    mov         dword ptr fs:[eax],edx
 007773AC    push        7773C9
 007773B1    lea         eax,[ebp-18]
 007773B4    call        @UStrClr
 007773B9    lea         eax,[ebp-4]
 007773BC    call        @UStrClr
 007773C1    ret
>007773C2    jmp         @HandleFinally
>007773C7    jmp         007773B1
 007773C9    pop         ebx
 007773CA    mov         esp,ebp
 007773CC    pop         ebp
 007773CD    ret
*}
end;

//00777420
procedure TDCCauseEffectForm.FormDestroy(Sender:TObject);
begin
{*
 00777420    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 00777425    mov         eax,dword ptr [eax]
 00777427    call        TObject.Free
 0077742C    ret
*}
end;

//00777430
procedure TDCCauseEffectForm.FormShow(Sender:TObject);
begin
{*
 00777430    push        ebx
 00777431    push        esi
 00777432    push        edi
 00777433    push        ebp
 00777434    push        ecx
 00777435    mov         esi,eax
 00777437    mov         edx,dword ptr ds:[7C3FA0];^'Control Activations'
 0077743D    mov         eax,esi
 0077743F    call        TControl.SetText
 00777444    xor         ebx,ebx
 00777446    mov         edi,7C3FAC;^'Outputs controlled by given input'
 0077744B    mov         ecx,dword ptr [edi]
 0077744D    mov         eax,dword ptr [esi+3C4];TDCCauseEffectForm.ViewSelector:TRadioGroup
 00777453    mov         eax,dword ptr [eax+29C];TRadioGroup.FItems:TStrings
 00777459    mov         edx,ebx
 0077745B    mov         ebp,dword ptr [eax]
 0077745D    call        dword ptr [ebp+20];TStrings.Put
 00777460    inc         ebx
 00777461    add         edi,4
 00777464    cmp         ebx,3
>00777467    jne         0077744B
 00777469    mov         edx,dword ptr ds:[7C3FB8];^'Panel'
 0077746F    mov         eax,dword ptr [esi+3C8];TDCCauseEffectForm.lblPanel:TLabel
 00777475    call        TControl.SetText
 0077747A    mov         edx,dword ptr ds:[7C3FBC];^'Loop or Unit'
 00777480    mov         eax,dword ptr [esi+3D0];TDCCauseEffectForm.lblLoop:TLabel
 00777486    call        TControl.SetText
 0077748B    mov         edx,dword ptr ds:[7C3FC0];^'Address or Line'
 00777491    mov         eax,dword ptr [esi+3D8];TDCCauseEffectForm.lblAddress:TLabel
 00777497    call        TControl.SetText
 0077749C    mov         edx,dword ptr ds:[7C3FC4];^'Control group'
 007774A2    mov         eax,dword ptr [esi+3E0];TDCCauseEffectForm.lblGroup:TLabel
 007774A8    call        TControl.SetText
 007774AD    mov         edx,dword ptr ds:[7C3FC8];^'Input group'
 007774B3    mov         eax,dword ptr [esi+3E4];TDCCauseEffectForm.rbInput:TRadioButton
 007774B9    call        TControl.SetText
 007774BE    mov         edx,dword ptr ds:[7C3FCC];^'Output group'
 007774C4    mov         eax,dword ptr [esi+3E8];TDCCauseEffectForm.rbOutput:TRadioButton
 007774CA    call        TControl.SetText
 007774CF    mov         edx,dword ptr ds:[7C3FD0];^'Search'
 007774D5    mov         eax,dword ptr [esi+3F0];TDCCauseEffectForm.btnSearch:TButton
 007774DB    call        TControl.SetText
 007774E0    mov         edx,dword ptr ds:[7C3FD4];^'Control inputs'
 007774E6    mov         eax,dword ptr [esi+414];TDCCauseEffectForm.lblInputsHeader:TLabel
 007774EC    call        TControl.SetText
 007774F1    mov         edx,dword ptr ds:[7C3FD8];^'Control outputs'
 007774F7    mov         eax,dword ptr [esi+41C];TDCCauseEffectForm.lblOutputsHeader:TLabel
 007774FD    call        TControl.SetText
 00777502    xor         ebx,ebx
 00777504    mov         edi,7C3FDC;^'Input kind'
 00777509    mov         eax,dword ptr [esi+408];TDCCauseEffectForm.HeaderA:THeaderControl
 0077750F    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00777515    mov         edx,ebx
 00777517    call        THeaderSections.GetItem
 0077751C    mov         edx,dword ptr [edi]
 0077751E    call        THeaderSection.SetText
 00777523    inc         ebx
 00777524    add         edi,4
 00777527    cmp         ebx,6
>0077752A    jne         00777509
 0077752C    xor         ebx,ebx
 0077752E    mov         edi,7C3FF4;^'Timing sequence'
 00777533    mov         eax,dword ptr [esi+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00777539    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 0077753F    mov         edx,ebx
 00777541    call        THeaderSections.GetItem
 00777546    mov         edx,dword ptr [edi]
 00777548    call        THeaderSection.SetText
 0077754D    inc         ebx
 0077754E    add         edi,4
 00777551    cmp         ebx,8
>00777554    jne         00777533
 00777556    mov         eax,dword ptr [esi+3CC];TDCCauseEffectForm.lbPanel:TListBox
 0077755C    mov         edx,dword ptr [eax]
 0077755E    call        dword ptr [edx+114];TCustomListBox.Clear
 00777564    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 00777569    mov         eax,dword ptr [eax]
 0077756B    mov         eax,dword ptr [eax+0C]
 0077756E    mov         eax,dword ptr [eax+8]
 00777571    sub         eax,1
>00777574    jno         0077757B
 00777576    call        @IntOver
 0077757B    test        eax,eax
>0077757D    jl          007775D3
 0077757F    inc         eax
 00777580    mov         dword ptr [esp],eax
 00777583    xor         ebx,ebx
 00777585    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 0077758A    mov         eax,dword ptr [eax]
 0077758C    mov         ebp,dword ptr [eax+0C]
 0077758F    lea         eax,[ebp+8]
 00777592    mov         edx,ebx
 00777594    call        00434534
 00777599    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 0077759E    mov         eax,dword ptr [eax]
 007775A0    mov         edi,dword ptr [eax+0C]
 007775A3    lea         eax,[edi+8]
 007775A6    mov         edx,ebx
 007775A8    call        00434534
 007775AD    mov         eax,dword ptr [edi+20]
 007775B0    mov         ecx,dword ptr [eax+ebx*4]
 007775B3    mov         eax,dword ptr [ebp+20]
 007775B6    mov         eax,dword ptr [eax+ebx*4]
 007775B9    mov         edx,dword ptr [eax+28]
 007775BC    mov         eax,dword ptr [esi+3CC];TDCCauseEffectForm.lbPanel:TListBox
 007775C2    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 007775C8    mov         edi,dword ptr [eax]
 007775CA    call        dword ptr [edi+40];TStrings.AddObject
 007775CD    inc         ebx
 007775CE    dec         dword ptr [esp]
>007775D1    jne         00777585
 007775D3    mov         eax,dword ptr [esi+3D4];TDCCauseEffectForm.lbLoop:TListBox
 007775D9    mov         edx,dword ptr [eax]
 007775DB    call        dword ptr [edx+114];TCustomListBox.Clear
 007775E1    mov         eax,dword ptr [esi+3DC];TDCCauseEffectForm.lbAddress:TListBox
 007775E7    mov         edx,dword ptr [eax]
 007775E9    call        dword ptr [edx+114];TCustomListBox.Clear
 007775EF    pop         edx
 007775F0    pop         ebp
 007775F1    pop         edi
 007775F2    pop         esi
 007775F3    pop         ebx
 007775F4    ret
*}
end;

//007775F8
procedure TDCCauseEffectForm.Translate(IniFile:TFXIniFile);
begin
{*
 007775F8    push        ebp
 007775F9    mov         ebp,esp
 007775FB    mov         ecx,17
 00777600    push        0
 00777602    push        0
 00777604    dec         ecx
>00777605    jne         00777600
 00777607    push        ecx
 00777608    push        ebx
 00777609    push        esi
 0077760A    push        edi
 0077760B    mov         ebx,edx
 0077760D    mov         dword ptr [ebp-4],eax
 00777610    mov         esi,7C3FF4;^'Timing sequence'
 00777615    xor         eax,eax
 00777617    push        ebp
 00777618    push        777D86
 0077761D    push        dword ptr fs:[eax]
 00777620    mov         dword ptr fs:[eax],esp
 00777623    push        777DA0;'Control Activations'
 00777628    lea         eax,[ebp-8]
 0077762B    push        eax
 0077762C    mov         ecx,777DD4;'sDCActForm'
 00777631    mov         edx,777DF8;'DelayedControls'
 00777636    mov         eax,ebx
 00777638    mov         edi,dword ptr [eax]
 0077763A    call        dword ptr [edi+4];TFXIniFile.ReadString
 0077763D    push        dword ptr [ebp-8]
 00777640    push        777E24;' ('
 00777645    lea         edx,[ebp-0C]
 00777648    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 0077764D    mov         eax,dword ptr [eax]
 0077764F    call        005DDC74
 00777654    push        dword ptr [ebp-0C]
 00777657    push        777E38;')'
 0077765C    mov         eax,7C3FA0;^'Control Activations'
 00777661    mov         edx,4
 00777666    call        @UStrCatN
 0077766B    push        777E48;'Control outputs activated by input %s.%s.%s'
 00777670    lea         eax,[ebp-10]
 00777673    push        eax
 00777674    mov         ecx,777EAC;'sCtrlsByInput'
 00777679    mov         edx,777DF8;'DelayedControls'
 0077767E    mov         eax,ebx
 00777680    mov         edi,dword ptr [eax]
 00777682    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777685    mov         edx,dword ptr [ebp-10]
 00777688    mov         eax,7C3FA4;^'Control outputs activated by input %s.%s.%s'
 0077768D    call        @UStrAsg
 00777692    push        777ED4;'Last Local Control Group of input panel is: %.3d'
 00777697    lea         eax,[ebp-14]
 0077769A    push        eax
 0077769B    mov         ecx,777F44;'sLastLocalCG'
 007776A0    mov         edx,777DF8;'DelayedControls'
 007776A5    mov         eax,ebx
 007776A7    mov         edi,dword ptr [eax]
 007776A9    call        dword ptr [edi+4];TFXIniFile.ReadString
 007776AC    mov         edx,dword ptr [ebp-14]
 007776AF    mov         eax,7C3FA8;^'Last Local Control Group of input panel is: %.3d'
 007776B4    call        @UStrAsg
 007776B9    push        777F6C;'Outputs controlled by given input'
 007776BE    lea         eax,[ebp-18]
 007776C1    push        eax
 007776C2    mov         ecx,777FBC;'sOutputsByGivenInput'
 007776C7    mov         edx,777DF8;'DelayedControls'
 007776CC    mov         eax,ebx
 007776CE    mov         edi,dword ptr [eax]
 007776D0    call        dword ptr [edi+4];TFXIniFile.ReadString
 007776D3    mov         edx,dword ptr [ebp-18]
 007776D6    mov         eax,7C3FAC;^'Outputs controlled by given input'
 007776DB    call        @UStrAsg
 007776E0    push        777FF4;'Inputs controlling a given output'
 007776E5    lea         eax,[ebp-1C]
 007776E8    push        eax
 007776E9    mov         ecx,778044;'sInputsByGivenOutput'
 007776EE    mov         edx,777DF8;'DelayedControls'
 007776F3    mov         eax,ebx
 007776F5    mov         edi,dword ptr [eax]
 007776F7    call        dword ptr [edi+4];TFXIniFile.ReadString
 007776FA    mov         edx,dword ptr [ebp-1C]
 007776FD    mov         eax,7C3FB0;^'Inputs controlling a given output'
 00777702    call        @UStrAsg
 00777707    push        77807C;'Inputs and outputs of given group'
 0077770C    lea         eax,[ebp-20]
 0077770F    push        eax
 00777710    mov         ecx,7780CC;'sInputsAndOutputsByGroup'
 00777715    mov         edx,777DF8;'DelayedControls'
 0077771A    mov         eax,ebx
 0077771C    mov         edi,dword ptr [eax]
 0077771E    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777721    mov         edx,dword ptr [ebp-20]
 00777724    mov         eax,7C3FB4;^'Inputs and outputs of given group'
 00777729    call        @UStrAsg
 0077772E    push        77810C;'Panel'
 00777733    lea         eax,[ebp-24]
 00777736    push        eax
 00777737    mov         ecx,778124;'sPanel'
 0077773C    mov         edx,777DF8;'DelayedControls'
 00777741    mov         eax,ebx
 00777743    mov         edi,dword ptr [eax]
 00777745    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777748    mov         edx,dword ptr [ebp-24]
 0077774B    mov         eax,7C3FB8;^'Panel'
 00777750    call        @UStrAsg
 00777755    push        778140;'Loop or Unit'
 0077775A    lea         eax,[ebp-28]
 0077775D    push        eax
 0077775E    mov         ecx,778168;'sLoopOrUnit'
 00777763    mov         edx,777DF8;'DelayedControls'
 00777768    mov         eax,ebx
 0077776A    mov         edi,dword ptr [eax]
 0077776C    call        dword ptr [edi+4];TFXIniFile.ReadString
 0077776F    mov         edx,dword ptr [ebp-28]
 00777772    mov         eax,7C3FBC;^'Loop or Unit'
 00777777    call        @UStrAsg
 0077777C    push        77818C;'Address or Line'
 00777781    lea         eax,[ebp-2C]
 00777784    push        eax
 00777785    mov         ecx,7781B8;'sAddrOrLine'
 0077778A    mov         edx,777DF8;'DelayedControls'
 0077778F    mov         eax,ebx
 00777791    mov         edi,dword ptr [eax]
 00777793    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777796    mov         edx,dword ptr [ebp-2C]
 00777799    mov         eax,7C3FC0;^'Address or Line'
 0077779E    call        @UStrAsg
 007777A3    push        7781DC;'Control group'
 007777A8    lea         eax,[ebp-30]
 007777AB    push        eax
 007777AC    mov         ecx,778204;'sCtrlGroup'
 007777B1    mov         edx,777DF8;'DelayedControls'
 007777B6    mov         eax,ebx
 007777B8    mov         edi,dword ptr [eax]
 007777BA    call        dword ptr [edi+4];TFXIniFile.ReadString
 007777BD    mov         edx,dword ptr [ebp-30]
 007777C0    mov         eax,7C3FC4;^'Control group'
 007777C5    call        @UStrAsg
 007777CA    push        778228;'Input group'
 007777CF    lea         eax,[ebp-34]
 007777D2    push        eax
 007777D3    mov         ecx,77824C;'sInputGroup'
 007777D8    mov         edx,777DF8;'DelayedControls'
 007777DD    mov         eax,ebx
 007777DF    mov         edi,dword ptr [eax]
 007777E1    call        dword ptr [edi+4];TFXIniFile.ReadString
 007777E4    mov         edx,dword ptr [ebp-34]
 007777E7    mov         eax,7C3FC8;^'Input group'
 007777EC    call        @UStrAsg
 007777F1    push        778270;'Output group'
 007777F6    lea         eax,[ebp-38]
 007777F9    push        eax
 007777FA    mov         ecx,778298;'sOutputGroup'
 007777FF    mov         edx,777DF8;'DelayedControls'
 00777804    mov         eax,ebx
 00777806    mov         edi,dword ptr [eax]
 00777808    call        dword ptr [edi+4];TFXIniFile.ReadString
 0077780B    mov         edx,dword ptr [ebp-38]
 0077780E    mov         eax,7C3FCC;^'Output group'
 00777813    call        @UStrAsg
 00777818    push        7782C0;'Search'
 0077781D    lea         eax,[ebp-3C]
 00777820    push        eax
 00777821    mov         ecx,7782DC;'sSearch'
 00777826    mov         edx,777DF8;'DelayedControls'
 0077782B    mov         eax,ebx
 0077782D    mov         edi,dword ptr [eax]
 0077782F    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777832    mov         edx,dword ptr [ebp-3C]
 00777835    mov         eax,7C3FD0;^'Search'
 0077783A    call        @UStrAsg
 0077783F    push        7782F8;'Control inputs'
 00777844    lea         eax,[ebp-40]
 00777847    push        eax
 00777848    mov         ecx,778324;'sInputs'
 0077784D    mov         edx,777DF8;'DelayedControls'
 00777852    mov         eax,ebx
 00777854    mov         edi,dword ptr [eax]
 00777856    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777859    mov         edx,dword ptr [ebp-40]
 0077785C    mov         eax,7C3FD4;^'Control inputs'
 00777861    call        @UStrAsg
 00777866    push        778340;'Control outputs'
 0077786B    lea         eax,[ebp-44]
 0077786E    push        eax
 0077786F    mov         ecx,77836C;'sOutputs'
 00777874    mov         edx,777DF8;'DelayedControls'
 00777879    mov         eax,ebx
 0077787B    mov         edi,dword ptr [eax]
 0077787D    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777880    mov         edx,dword ptr [ebp-44]
 00777883    mov         eax,7C3FD8;^'Control outputs'
 00777888    call        @UStrAsg
 0077788D    push        77838C;'Inputs by single output'
 00777892    lea         eax,[ebp-48]
 00777895    push        eax
 00777896    mov         ecx,7783C8;'sInputsByOutput'
 0077789B    mov         edx,777DF8;'DelayedControls'
 007778A0    mov         eax,ebx
 007778A2    mov         edi,dword ptr [eax]
 007778A4    call        dword ptr [edi+4];TFXIniFile.ReadString
 007778A7    mov         edx,dword ptr [ebp-48]
 007778AA    mov         eax,7C4050;^'Inputs by single output'
 007778AF    call        @UStrAsg
 007778B4    push        7783F4;'Inputs by Control Group'
 007778B9    lea         eax,[ebp-4C]
 007778BC    push        eax
 007778BD    mov         ecx,778430;'sInputsByCGroup'
 007778C2    mov         edx,777DF8;'DelayedControls'
 007778C7    mov         eax,ebx
 007778C9    mov         edi,dword ptr [eax]
 007778CB    call        dword ptr [edi+4];TFXIniFile.ReadString
 007778CE    mov         edx,dword ptr [ebp-4C]
 007778D1    mov         eax,7C4054;^'Inputs by Control Group'
 007778D6    call        @UStrAsg
 007778DB    push        77845C;'Outputs by Control Group'
 007778E0    lea         eax,[ebp-50]
 007778E3    push        eax
 007778E4    mov         ecx,77849C;'sOutputsByCGroup'
 007778E9    mov         edx,777DF8;'DelayedControls'
 007778EE    mov         eax,ebx
 007778F0    mov         edi,dword ptr [eax]
 007778F2    call        dword ptr [edi+4];TFXIniFile.ReadString
 007778F5    mov         edx,dword ptr [ebp-50]
 007778F8    mov         eax,7C4058;^'Outputs by Control Group'
 007778FD    call        @UStrAsg
 00777902    push        7784CC;'Input kind'
 00777907    lea         eax,[ebp-54]
 0077790A    push        eax
 0077790B    mov         ecx,7784F0;'sInputKind'
 00777910    mov         edx,777DF8;'DelayedControls'
 00777915    mov         eax,ebx
 00777917    mov         edi,dword ptr [eax]
 00777919    call        dword ptr [edi+4];TFXIniFile.ReadString
 0077791C    mov         edx,dword ptr [ebp-54]
 0077791F    mov         eax,7C3FDC;^'Input kind'
 00777924    call        @UStrAsg
 00777929    push        77810C;'Panel'
 0077792E    lea         eax,[ebp-58]
 00777931    push        eax
 00777932    mov         ecx,778124;'sPanel'
 00777937    mov         edx,777DF8;'DelayedControls'
 0077793C    mov         eax,ebx
 0077793E    mov         edi,dword ptr [eax]
 00777940    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777943    mov         edx,dword ptr [ebp-58]
 00777946    mov         eax,7C3FE0;^'Panel'
 0077794B    call        @UStrAsg
 00777950    push        778514;'Loop'
 00777955    lea         eax,[ebp-5C]
 00777958    push        eax
 00777959    mov         ecx,77852C;'sALoop'
 0077795E    mov         edx,777DF8;'DelayedControls'
 00777963    mov         eax,ebx
 00777965    mov         edi,dword ptr [eax]
 00777967    call        dword ptr [edi+4];TFXIniFile.ReadString
 0077796A    mov         edx,dword ptr [ebp-5C]
 0077796D    mov         eax,7C3FE4;^'Loop'
 00777972    call        @UStrAsg
 00777977    push        778548;'Addr'
 0077797C    lea         eax,[ebp-60]
 0077797F    push        eax
 00777980    mov         ecx,778560;'sAddr'
 00777985    mov         edx,777DF8;'DelayedControls'
 0077798A    mov         eax,ebx
 0077798C    mov         edi,dword ptr [eax]
 0077798E    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777991    mov         edx,dword ptr [ebp-60]
 00777994    mov         eax,7C3FE8;^'Addr'
 00777999    call        @UStrAsg
 0077799E    push        778578;'Type/Input'
 007779A3    lea         eax,[ebp-64]
 007779A6    push        eax
 007779A7    mov         ecx,77859C;'sType'
 007779AC    mov         edx,777DF8;'DelayedControls'
 007779B1    mov         eax,ebx
 007779B3    mov         edi,dword ptr [eax]
 007779B5    call        dword ptr [edi+4];TFXIniFile.ReadString
 007779B8    mov         edx,dword ptr [ebp-64]
 007779BB    mov         eax,7C3FEC;^'Type/Input'
 007779C0    call        @UStrAsg
 007779C5    push        7785B4;'Text'
 007779CA    lea         eax,[ebp-68]
 007779CD    push        eax
 007779CE    mov         ecx,7785CC;'sCustomText'
 007779D3    mov         edx,777DF8;'DelayedControls'
 007779D8    mov         eax,ebx
 007779DA    mov         edi,dword ptr [eax]
 007779DC    call        dword ptr [edi+4];TFXIniFile.ReadString
 007779DF    mov         edx,dword ptr [ebp-68]
 007779E2    mov         eax,7C3FF0;^'Text'
 007779E7    call        @UStrAsg
 007779EC    push        7785F0;'Timing sequence'
 007779F1    lea         eax,[ebp-6C]
 007779F4    push        eax
 007779F5    mov         ecx,77861C;'sSequence'
 007779FA    mov         edx,777DF8;'DelayedControls'
 007779FF    mov         eax,ebx
 00777A01    mov         edi,dword ptr [eax]
 00777A03    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777A06    mov         edx,dword ptr [ebp-6C]
 00777A09    mov         eax,esi
 00777A0B    call        @UStrAsg
 00777A10    push        77810C;'Panel'
 00777A15    lea         eax,[ebp-70]
 00777A18    push        eax
 00777A19    mov         ecx,778124;'sPanel'
 00777A1E    mov         edx,777DF8;'DelayedControls'
 00777A23    mov         eax,ebx
 00777A25    mov         edi,dword ptr [eax]
 00777A27    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777A2A    mov         edx,dword ptr [ebp-70]
 00777A2D    lea         eax,[esi+4]
 00777A30    call        @UStrAsg
 00777A35    push        778514;'Loop'
 00777A3A    lea         eax,[ebp-74]
 00777A3D    push        eax
 00777A3E    mov         ecx,77852C;'sALoop'
 00777A43    mov         edx,777DF8;'DelayedControls'
 00777A48    mov         eax,ebx
 00777A4A    mov         edi,dword ptr [eax]
 00777A4C    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777A4F    mov         edx,dword ptr [ebp-74]
 00777A52    lea         eax,[esi+8]
 00777A55    call        @UStrAsg
 00777A5A    push        778548;'Addr'
 00777A5F    lea         eax,[ebp-78]
 00777A62    push        eax
 00777A63    mov         ecx,778560;'sAddr'
 00777A68    mov         edx,777DF8;'DelayedControls'
 00777A6D    mov         eax,ebx
 00777A6F    mov         edi,dword ptr [eax]
 00777A71    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777A74    mov         edx,dword ptr [ebp-78]
 00777A77    lea         eax,[esi+0C]
 00777A7A    call        @UStrAsg
 00777A7F    push        778578;'Type/Input'
 00777A84    lea         eax,[ebp-7C]
 00777A87    push        eax
 00777A88    mov         ecx,77859C;'sType'
 00777A8D    mov         edx,777DF8;'DelayedControls'
 00777A92    mov         eax,ebx
 00777A94    mov         edi,dword ptr [eax]
 00777A96    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777A99    mov         edx,dword ptr [ebp-7C]
 00777A9C    lea         eax,[esi+10]
 00777A9F    call        @UStrAsg
 00777AA4    push        77863C;'Output function'
 00777AA9    lea         eax,[ebp-80]
 00777AAC    push        eax
 00777AAD    mov         ecx,778668;'sOutFunction'
 00777AB2    mov         edx,777DF8;'DelayedControls'
 00777AB7    mov         eax,ebx
 00777AB9    mov         edi,dword ptr [eax]
 00777ABB    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777ABE    mov         edx,dword ptr [ebp-80]
 00777AC1    lea         eax,[esi+14]
 00777AC4    call        @UStrAsg
 00777AC9    push        778690;'Ctrl groups'
 00777ACE    lea         eax,[ebp-84]
 00777AD4    push        eax
 00777AD5    mov         ecx,7786B4;'sCtrlGroups'
 00777ADA    mov         edx,777DF8;'DelayedControls'
 00777ADF    mov         eax,ebx
 00777AE1    mov         edi,dword ptr [eax]
 00777AE3    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777AE6    mov         edx,dword ptr [ebp-84]
 00777AEC    lea         eax,[esi+18]
 00777AEF    call        @UStrAsg
 00777AF4    push        7785B4;'Text'
 00777AF9    lea         eax,[ebp-88]
 00777AFF    push        eax
 00777B00    mov         ecx,7785CC;'sCustomText'
 00777B05    mov         edx,777DF8;'DelayedControls'
 00777B0A    mov         eax,ebx
 00777B0C    mov         edi,dword ptr [eax]
 00777B0E    call        dword ptr [edi+4];TFXIniFile.ReadString
 00777B11    mov         edx,dword ptr [ebp-88]
 00777B17    lea         eax,[esi+1C]
 00777B1A    call        @UStrAsg
 00777B1F    push        7786D8;'Addr. input'
 00777B24    lea         eax,[ebp-8C]
 00777B2A    push        eax
 00777B2B    mov         ecx,7786FC;'sAddrInput'
 00777B30    mov         edx,777DF8;'DelayedControls'
 00777B35    mov         eax,ebx
 00777B37    mov         esi,dword ptr [eax]
 00777B39    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777B3C    mov         edx,dword ptr [ebp-8C]
 00777B42    mov         eax,7C4014;^'Addr. input'
 00777B47    call        @UStrAsg
 00777B4C    push        778720;'Immediate or delayed by CtrlA, CtrlB or CtrlB2'
 00777B51    lea         eax,[ebp-90]
 00777B57    push        eax
 00777B58    mov         ecx,77878C;'sImmediateByAOrB'
 00777B5D    mov         edx,777DF8;'DelayedControls'
 00777B62    mov         eax,ebx
 00777B64    mov         esi,dword ptr [eax]
 00777B66    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777B69    mov         edx,dword ptr [ebp-90]
 00777B6F    mov         eax,7C4018;^'Immediate or delayed by CtrlA, CtrlB or CtrlB2'
 00777B74    call        @UStrAsg
 00777B79    push        7787BC;'Panel output'
 00777B7E    lea         eax,[ebp-94]
 00777B84    push        eax
 00777B85    mov         ecx,7787E4;'sPanelOutput'
 00777B8A    mov         edx,777DF8;'DelayedControls'
 00777B8F    mov         eax,ebx
 00777B91    mov         esi,dword ptr [eax]
 00777B93    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777B96    mov         edx,dword ptr [ebp-94]
 00777B9C    mov         eax,7C401C;^'Panel output'
 00777BA1    call        @UStrAsg
 00777BA6    push        77880C;'Addr. output'
 00777BAB    lea         eax,[ebp-98]
 00777BB1    push        eax
 00777BB2    mov         ecx,778834;'sAddrOutput'
 00777BB7    mov         edx,777DF8;'DelayedControls'
 00777BBC    mov         eax,ebx
 00777BBE    mov         esi,dword ptr [eax]
 00777BC0    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777BC3    mov         edx,dword ptr [ebp-98]
 00777BC9    mov         eax,7C4020;^'Addr. output'
 00777BCE    call        @UStrAsg
 00777BD3    push        778858;'Delayed (%s) CtrlC1 (%s)'
 00777BD8    lea         eax,[ebp-9C]
 00777BDE    push        eax
 00777BDF    mov         ecx,778898;'sDelayedByC1'
 00777BE4    mov         edx,777DF8;'DelayedControls'
 00777BE9    mov         eax,ebx
 00777BEB    mov         esi,dword ptr [eax]
 00777BED    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777BF0    mov         edx,dword ptr [ebp-9C]
 00777BF6    mov         eax,7C4024;^'Delayed (%s) CtrlC1 (%s)'
 00777BFB    call        @UStrAsg
 00777C00    push        7788C0;'Delayed (%s) CtrlC2 (%s)'
 00777C05    lea         eax,[ebp-0A0]
 00777C0B    push        eax
 00777C0C    mov         ecx,778900;'sDelayedByC2'
 00777C11    mov         edx,777DF8;'DelayedControls'
 00777C16    mov         eax,ebx
 00777C18    mov         esi,dword ptr [eax]
 00777C1A    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777C1D    mov         edx,dword ptr [ebp-0A0]
 00777C23    mov         eax,7C4028;^'Delayed (%s) CtrlC2 (%s)'
 00777C28    call        @UStrAsg
 00777C2D    push        778928;'Delayed (%s) CtrlC3 (%s)'
 00777C32    lea         eax,[ebp-0A4]
 00777C38    push        eax
 00777C39    mov         ecx,778968;'sDelayedByC3'
 00777C3E    mov         edx,777DF8;'DelayedControls'
 00777C43    mov         eax,ebx
 00777C45    mov         esi,dword ptr [eax]
 00777C47    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777C4A    mov         edx,dword ptr [ebp-0A4]
 00777C50    mov         eax,7C402C;^'Delayed (%s) CtrlC3 (%s)'
 00777C55    call        @UStrAsg
 00777C5A    push        778990;'Delayed (%s) CtrlC4 (%s)'
 00777C5F    lea         eax,[ebp-0A8]
 00777C65    push        eax
 00777C66    mov         ecx,7789D0;'sDelayedByC4'
 00777C6B    mov         edx,777DF8;'DelayedControls'
 00777C70    mov         eax,ebx
 00777C72    mov         esi,dword ptr [eax]
 00777C74    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777C77    mov         edx,dword ptr [ebp-0A8]
 00777C7D    mov         eax,7C4030;^'Delayed (%s) CtrlC4 (%s)'
 00777C82    call        @UStrAsg
 00777C87    push        7789F8;'Delayed (%s) CtrlC5 (%s)'
 00777C8C    lea         eax,[ebp-0AC]
 00777C92    push        eax
 00777C93    mov         ecx,778A38;'sDelayedByC5'
 00777C98    mov         edx,777DF8;'DelayedControls'
 00777C9D    mov         eax,ebx
 00777C9F    mov         esi,dword ptr [eax]
 00777CA1    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777CA4    mov         edx,dword ptr [ebp-0AC]
 00777CAA    mov         eax,7C4034;^'Delayed (%s) CtrlC5 (%s)'
 00777CAF    call        @UStrAsg
 00777CB4    push        778A60;'Delayed (%s) CtrlC6 (%s)'
 00777CB9    lea         eax,[ebp-0B0]
 00777CBF    push        eax
 00777CC0    mov         ecx,778AA0;'sDelayedByC6'
 00777CC5    mov         edx,777DF8;'DelayedControls'
 00777CCA    mov         eax,ebx
 00777CCC    mov         esi,dword ptr [eax]
 00777CCE    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777CD1    mov         edx,dword ptr [ebp-0B0]
 00777CD7    mov         eax,7C4038;^'Delayed (%s) CtrlC6 (%s)'
 00777CDC    call        @UStrAsg
 00777CE1    push        778AC8;'Delayed (%s) CtrlC7 (%s)'
 00777CE6    lea         eax,[ebp-0B4]
 00777CEC    push        eax
 00777CED    mov         ecx,778B08;'sDelayedByC7'
 00777CF2    mov         edx,777DF8;'DelayedControls'
 00777CF7    mov         eax,ebx
 00777CF9    mov         esi,dword ptr [eax]
 00777CFB    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777CFE    mov         edx,dword ptr [ebp-0B4]
 00777D04    mov         eax,7C403C;^'Delayed (%s) CtrlC7 (%s)'
 00777D09    call        @UStrAsg
 00777D0E    push        7787BC;'Panel output'
 00777D13    lea         eax,[ebp-0B8]
 00777D19    push        eax
 00777D1A    mov         ecx,7787E4;'sPanelOutput'
 00777D1F    mov         edx,777DF8;'DelayedControls'
 00777D24    mov         eax,ebx
 00777D26    mov         esi,dword ptr [eax]
 00777D28    call        dword ptr [esi+4];TFXIniFile.ReadString
 00777D2B    mov         edx,dword ptr [ebp-0B8]
 00777D31    mov         eax,7C4048;^'Panel output'
 00777D36    call        @UStrAsg
 00777D3B    push        77880C;'Addr. output'
 00777D40    lea         eax,[ebp-0BC]
 00777D46    push        eax
 00777D47    mov         ecx,778834;'sAddrOutput'
 00777D4C    mov         edx,777DF8;'DelayedControls'
 00777D51    mov         eax,ebx
 00777D53    mov         ebx,dword ptr [eax]
 00777D55    call        dword ptr [ebx+4];TFXIniFile.ReadString
 00777D58    mov         edx,dword ptr [ebp-0BC]
 00777D5E    mov         eax,7C404C;^'Addr. output'
 00777D63    call        @UStrAsg
 00777D68    xor         eax,eax
 00777D6A    pop         edx
 00777D6B    pop         ecx
 00777D6C    pop         ecx
 00777D6D    mov         dword ptr fs:[eax],edx
 00777D70    push        777D8D
 00777D75    lea         eax,[ebp-0BC]
 00777D7B    mov         edx,2E
 00777D80    call        @UStrArrayClr
 00777D85    ret
>00777D86    jmp         @HandleFinally
>00777D8B    jmp         00777D75
 00777D8D    pop         edi
 00777D8E    pop         esi
 00777D8F    pop         ebx
 00777D90    mov         esp,ebp
 00777D92    pop         ebp
 00777D93    ret
*}
end;

//00778B24
procedure TDCCauseEffectForm.ViewSelectorClick(Sender:TObject);
begin
{*
 00778B24    push        ebx
 00778B25    push        esi
 00778B26    push        edi
 00778B27    push        ebp
 00778B28    add         esp,0FFFFFFF8
 00778B2B    mov         dword ptr [esp],edx
 00778B2E    mov         ebx,eax
 00778B30    mov         eax,dword ptr [ebx+3CC];TDCCauseEffectForm.lbPanel:TListBox
 00778B36    mov         edx,dword ptr [eax]
 00778B38    call        dword ptr [edx+114];TCustomListBox.Clear
 00778B3E    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 00778B43    mov         eax,dword ptr [eax]
 00778B45    mov         eax,dword ptr [eax+0C]
 00778B48    mov         eax,dword ptr [eax+8]
 00778B4B    sub         eax,1
>00778B4E    jno         00778B55
 00778B50    call        @IntOver
 00778B55    test        eax,eax
>00778B57    jl          00778BAF
 00778B59    inc         eax
 00778B5A    mov         dword ptr [esp+4],eax
 00778B5E    xor         esi,esi
 00778B60    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 00778B65    mov         eax,dword ptr [eax]
 00778B67    mov         edi,dword ptr [eax+0C]
 00778B6A    lea         eax,[edi+8]
 00778B6D    mov         edx,esi
 00778B6F    call        00434534
 00778B74    mov         eax,[007C471C];^gvar_0090378C:TDCSystem
 00778B79    mov         eax,dword ptr [eax]
 00778B7B    mov         ebp,dword ptr [eax+0C]
 00778B7E    lea         eax,[ebp+8]
 00778B81    mov         edx,esi
 00778B83    call        00434534
 00778B88    mov         eax,dword ptr [ebp+20]
 00778B8B    mov         ecx,dword ptr [eax+esi*4]
 00778B8E    mov         eax,dword ptr [edi+20]
 00778B91    mov         eax,dword ptr [eax+esi*4]
 00778B94    mov         edx,dword ptr [eax+28]
 00778B97    mov         eax,dword ptr [ebx+3CC];TDCCauseEffectForm.lbPanel:TListBox
 00778B9D    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 00778BA3    mov         edi,dword ptr [eax]
 00778BA5    call        dword ptr [edi+40];TStrings.AddObject
 00778BA8    inc         esi
 00778BA9    dec         dword ptr [esp+4]
>00778BAD    jne         00778B60
 00778BAF    mov         dl,1
 00778BB1    mov         eax,dword ptr [ebx+3CC];TDCCauseEffectForm.lbPanel:TListBox
 00778BB7    mov         ecx,dword ptr [eax]
 00778BB9    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00778BBF    mov         eax,dword ptr [ebx+3D4];TDCCauseEffectForm.lbLoop:TListBox
 00778BC5    mov         edx,dword ptr [eax]
 00778BC7    call        dword ptr [edx+114];TCustomListBox.Clear
 00778BCD    xor         edx,edx
 00778BCF    mov         eax,dword ptr [ebx+3D4];TDCCauseEffectForm.lbLoop:TListBox
 00778BD5    mov         ecx,dword ptr [eax]
 00778BD7    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00778BDD    mov         eax,dword ptr [ebx+3DC];TDCCauseEffectForm.lbAddress:TListBox
 00778BE3    mov         edx,dword ptr [eax]
 00778BE5    call        dword ptr [edx+114];TCustomListBox.Clear
 00778BEB    xor         edx,edx
 00778BED    mov         eax,dword ptr [ebx+3DC];TDCCauseEffectForm.lbAddress:TListBox
 00778BF3    mov         ecx,dword ptr [eax]
 00778BF5    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00778BFB    xor         edx,edx
 00778BFD    mov         eax,dword ptr [ebx+3EC];TDCCauseEffectForm.edGroup:TEdit
 00778C03    call        TControl.SetText
 00778C08    xor         edx,edx
 00778C0A    mov         eax,dword ptr [ebx+3EC];TDCCauseEffectForm.edGroup:TEdit
 00778C10    mov         ecx,dword ptr [eax]
 00778C12    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00778C18    mov         eax,dword ptr [esp]
 00778C1B    mov         edx,dword ptr ds:[562C04];TRadioGroup
 00778C21    call        @AsClass
 00778C26    mov         eax,dword ptr [eax+2A0];TRadioGroup.FItemIndex:Integer
 00778C2C    mov         byte ptr [ebx+440],al;TDCCauseEffectForm.SearchCriteria:TSearchCriteria
 00778C32    xor         eax,eax
 00778C34    mov         dword ptr [ebx+420],eax;TDCCauseEffectForm.SearchPanel:Integer
 00778C3A    xor         eax,eax
 00778C3C    mov         dword ptr [ebx+424],eax;TDCCauseEffectForm.SearchLoop:Integer
 00778C42    xor         eax,eax
 00778C44    mov         dword ptr [ebx+428],eax;TDCCauseEffectForm.SearchAddr:Integer
 00778C4A    xor         eax,eax
 00778C4C    mov         dword ptr [ebx+42C],eax;TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778C52    xor         eax,eax
 00778C54    mov         dword ptr [ebx+430],eax;TDCCauseEffectForm.SearchCtrlLoop:TDCLoop
 00778C5A    xor         eax,eax
 00778C5C    mov         dword ptr [ebx+434],eax;TDCCauseEffectForm.SearchCtrlEntity:TDCAddr
 00778C62    xor         eax,eax
 00778C64    mov         dword ptr [ebx+438],eax;TDCCauseEffectForm.SearchCtrlUnit:TDCIoUnit
 00778C6A    xor         eax,eax
 00778C6C    mov         dword ptr [ebx+43C],eax;TDCCauseEffectForm.SearchCtrlGroup:Integer
 00778C72    movzx       eax,byte ptr [ebx+440];TDCCauseEffectForm.SearchCriteria:TSearchCriteria
 00778C79    test        al,al
>00778C7B    je          00778C85
 00778C7D    cmp         al,1
>00778C7F    je          00778C85
 00778C81    xor         edx,edx
>00778C83    jmp         00778C87
 00778C85    mov         dl,1
 00778C87    mov         eax,dword ptr [ebx+3D4];TDCCauseEffectForm.lbLoop:TListBox
 00778C8D    call        TControl.SetVisible
 00778C92    movzx       eax,byte ptr [ebx+440];TDCCauseEffectForm.SearchCriteria:TSearchCriteria
 00778C99    test        al,al
>00778C9B    je          00778CA5
 00778C9D    cmp         al,1
>00778C9F    je          00778CA5
 00778CA1    xor         edx,edx
>00778CA3    jmp         00778CA7
 00778CA5    mov         dl,1
 00778CA7    mov         eax,dword ptr [ebx+3DC];TDCCauseEffectForm.lbAddress:TListBox
 00778CAD    call        TControl.SetVisible
 00778CB2    cmp         byte ptr [ebx+440],2;TDCCauseEffectForm.SearchCriteria:TSearchCriteria
 00778CB9    sete        dl
 00778CBC    mov         eax,dword ptr [ebx+3E4];TDCCauseEffectForm.rbInput:TRadioButton
 00778CC2    call        TControl.SetVisible
 00778CC7    cmp         byte ptr [ebx+440],2;TDCCauseEffectForm.SearchCriteria:TSearchCriteria
 00778CCE    sete        dl
 00778CD1    mov         eax,dword ptr [ebx+3E8];TDCCauseEffectForm.rbOutput:TRadioButton
 00778CD7    call        TControl.SetVisible
 00778CDC    cmp         byte ptr [ebx+440],2;TDCCauseEffectForm.SearchCriteria:TSearchCriteria
 00778CE3    sete        dl
 00778CE6    mov         eax,dword ptr [ebx+3EC];TDCCauseEffectForm.edGroup:TEdit
 00778CEC    call        TControl.SetVisible
 00778CF1    mov         eax,dword ptr [ebx+3D4];TDCCauseEffectForm.lbLoop:TListBox
 00778CF7    movzx       edx,byte ptr [eax+69];TListBox.FVisible:Boolean
 00778CFB    mov         eax,dword ptr [ebx+3D0];TDCCauseEffectForm.lblLoop:TLabel
 00778D01    call        TControl.SetVisible
 00778D06    mov         eax,dword ptr [ebx+3DC];TDCCauseEffectForm.lbAddress:TListBox
 00778D0C    movzx       edx,byte ptr [eax+69];TListBox.FVisible:Boolean
 00778D10    mov         eax,dword ptr [ebx+3D8];TDCCauseEffectForm.lblAddress:TLabel
 00778D16    call        TControl.SetVisible
 00778D1B    mov         eax,dword ptr [ebx+3EC];TDCCauseEffectForm.edGroup:TEdit
 00778D21    movzx       edx,byte ptr [eax+69];TEdit.FVisible:Boolean
 00778D25    mov         eax,dword ptr [ebx+3E0];TDCCauseEffectForm.lblGroup:TLabel
 00778D2B    call        TControl.SetVisible
 00778D30    pop         ecx
 00778D31    pop         edx
 00778D32    pop         ebp
 00778D33    pop         edi
 00778D34    pop         esi
 00778D35    pop         ebx
 00778D36    ret
*}
end;

//00778D38
procedure TDCCauseEffectForm.lbPanelClick(Sender:TObject);
begin
{*
 00778D38    push        ebp
 00778D39    mov         ebp,esp
 00778D3B    xor         ecx,ecx
 00778D3D    push        ecx
 00778D3E    push        ecx
 00778D3F    push        ecx
 00778D40    push        ecx
 00778D41    push        ecx
 00778D42    push        ebx
 00778D43    push        esi
 00778D44    push        edi
 00778D45    mov         esi,edx
 00778D47    mov         ebx,eax
 00778D49    xor         eax,eax
 00778D4B    push        ebp
 00778D4C    push        778FB3
 00778D51    push        dword ptr fs:[eax]
 00778D54    mov         dword ptr fs:[eax],esp
 00778D57    xor         eax,eax
 00778D59    mov         dword ptr [ebx+424],eax;TDCCauseEffectForm.SearchLoop:Integer
 00778D5F    xor         eax,eax
 00778D61    mov         dword ptr [ebx+428],eax;TDCCauseEffectForm.SearchAddr:Integer
 00778D67    mov         eax,esi
 00778D69    mov         edx,dword ptr ds:[5020AC];TListBox
 00778D6F    call        @AsClass
 00778D74    mov         esi,eax
 00778D76    mov         eax,esi
 00778D78    mov         edx,dword ptr [eax]
 00778D7A    call        dword ptr [edx+108];TListBox.sub_0050E790
 00778D80    mov         edx,eax
 00778D82    lea         ecx,[ebp-14]
 00778D85    mov         eax,dword ptr [esi+2A0];TListBox.FItems:TStrings
 00778D8B    mov         edi,dword ptr [eax]
 00778D8D    call        dword ptr [edi+0C];TStrings.Get
 00778D90    mov         eax,dword ptr [ebp-14]
 00778D93    call        StrToInt
 00778D98    mov         dword ptr [ebx+420],eax;TDCCauseEffectForm.SearchPanel:Integer
 00778D9E    mov         eax,esi
 00778DA0    mov         edx,dword ptr [eax]
 00778DA2    call        dword ptr [edx+108];TListBox.sub_0050E790
 00778DA8    mov         edx,eax
 00778DAA    mov         eax,dword ptr [esi+2A0];TListBox.FItems:TStrings
 00778DB0    mov         ecx,dword ptr [eax]
 00778DB2    call        dword ptr [ecx+18];TStrings.GetObject
 00778DB5    mov         dword ptr [ebx+42C],eax;TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778DBB    mov         eax,ebx
 00778DBD    call        00779228
 00778DC2    mov         eax,dword ptr [ebx+3D4];TDCCauseEffectForm.lbLoop:TListBox
 00778DC8    mov         edx,dword ptr [eax]
 00778DCA    call        dword ptr [edx+114];TCustomListBox.Clear
 00778DD0    mov         eax,dword ptr [ebx+3DC];TDCCauseEffectForm.lbAddress:TListBox
 00778DD6    mov         edx,dword ptr [eax]
 00778DD8    call        dword ptr [edx+114];TCustomListBox.Clear
 00778DDE    movzx       eax,byte ptr [ebx+440];TDCCauseEffectForm.SearchCriteria:TSearchCriteria
 00778DE5    sub         al,1
>00778DE7    jb          00778DFC
>00778DE9    je          00778E85
 00778DEF    dec         al
>00778DF1    je          00778F80
>00778DF7    jmp         00778F90
 00778DFC    mov         eax,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778E02    mov         eax,dword ptr [eax+20];TDCPanel.FLoops:TObjectList<FXDCData.TDCLoop>
 00778E05    mov         eax,dword ptr [eax+8]
 00778E08    sub         eax,1
>00778E0B    jno         00778E12
 00778E0D    call        @IntOver
 00778E12    test        eax,eax
>00778E14    jl          00778E70
 00778E16    inc         eax
 00778E17    mov         dword ptr [ebp-0C],eax
 00778E1A    xor         esi,esi
 00778E1C    mov         eax,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778E22    mov         edi,dword ptr [eax+20];TDCPanel.FLoops:TObjectList<FXDCData.TDCLoop>
 00778E25    lea         eax,[edi+8]
 00778E28    mov         edx,esi
 00778E2A    call        00434534
 00778E2F    lea         edx,[ebp-4]
 00778E32    mov         eax,dword ptr [edi+20]
 00778E35    mov         eax,dword ptr [eax+esi*4]
 00778E38    call        00770894
 00778E3D    mov         eax,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778E43    mov         edi,dword ptr [eax+20];TDCPanel.FLoops:TObjectList<FXDCData.TDCLoop>
 00778E46    lea         eax,[edi+8]
 00778E49    mov         edx,esi
 00778E4B    call        00434534
 00778E50    mov         eax,dword ptr [edi+20]
 00778E53    mov         ecx,dword ptr [eax+esi*4]
 00778E56    mov         eax,dword ptr [ebx+3D4];TDCCauseEffectForm.lbLoop:TListBox
 00778E5C    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 00778E62    mov         edx,dword ptr [ebp-4]
 00778E65    mov         edi,dword ptr [eax]
 00778E67    call        dword ptr [edi+40];TStrings.AddObject
 00778E6A    inc         esi
 00778E6B    dec         dword ptr [ebp-0C]
>00778E6E    jne         00778E1C
 00778E70    mov         dl,1
 00778E72    mov         eax,dword ptr [ebx+3D4];TDCCauseEffectForm.lbLoop:TListBox
 00778E78    mov         ecx,dword ptr [eax]
 00778E7A    call        dword ptr [ecx+88];TGroupBox.SetEnabled
>00778E80    jmp         00778F90
 00778E85    mov         eax,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778E8B    mov         eax,dword ptr [eax+20];TDCPanel.FLoops:TObjectList<FXDCData.TDCLoop>
 00778E8E    mov         eax,dword ptr [eax+8]
 00778E91    sub         eax,1
>00778E94    jno         00778E9B
 00778E96    call        @IntOver
 00778E9B    test        eax,eax
>00778E9D    jl          00778EF9
 00778E9F    inc         eax
 00778EA0    mov         dword ptr [ebp-0C],eax
 00778EA3    xor         esi,esi
 00778EA5    mov         eax,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778EAB    mov         edi,dword ptr [eax+20];TDCPanel.FLoops:TObjectList<FXDCData.TDCLoop>
 00778EAE    lea         eax,[edi+8]
 00778EB1    mov         edx,esi
 00778EB3    call        00434534
 00778EB8    lea         edx,[ebp-8]
 00778EBB    mov         eax,dword ptr [edi+20]
 00778EBE    mov         eax,dword ptr [eax+esi*4]
 00778EC1    call        00770894
 00778EC6    mov         eax,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778ECC    mov         edi,dword ptr [eax+20];TDCPanel.FLoops:TObjectList<FXDCData.TDCLoop>
 00778ECF    lea         eax,[edi+8]
 00778ED2    mov         edx,esi
 00778ED4    call        00434534
 00778ED9    mov         eax,dword ptr [edi+20]
 00778EDC    mov         ecx,dword ptr [eax+esi*4]
 00778EDF    mov         eax,dword ptr [ebx+3D4];TDCCauseEffectForm.lbLoop:TListBox
 00778EE5    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 00778EEB    mov         edx,dword ptr [ebp-8]
 00778EEE    mov         edi,dword ptr [eax]
 00778EF0    call        dword ptr [edi+40];TStrings.AddObject
 00778EF3    inc         esi
 00778EF4    dec         dword ptr [ebp-0C]
>00778EF7    jne         00778EA5
 00778EF9    mov         eax,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778EFF    mov         eax,dword ptr [eax+1C];TDCPanel.FIoUnits:TObjectList<FXDCData.TDCIoUnit>
 00778F02    mov         eax,dword ptr [eax+8]
 00778F05    sub         eax,1
>00778F08    jno         00778F0F
 00778F0A    call        @IntOver
 00778F0F    test        eax,eax
>00778F11    jl          00778F6E
 00778F13    inc         eax
 00778F14    mov         dword ptr [ebp-0C],eax
 00778F17    xor         esi,esi
 00778F19    mov         eax,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778F1F    mov         edi,dword ptr [eax+1C];TDCPanel.FIoUnits:TObjectList<FXDCData.TDCIoUnit>
 00778F22    lea         eax,[edi+8]
 00778F25    mov         edx,esi
 00778F27    call        00434534
 00778F2C    mov         eax,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00778F32    mov         eax,dword ptr [eax+1C];TDCPanel.FIoUnits:TObjectList<FXDCData.TDCIoUnit>
 00778F35    mov         dword ptr [ebp-10],eax
 00778F38    mov         eax,dword ptr [ebp-10]
 00778F3B    add         eax,8
 00778F3E    mov         edx,esi
 00778F40    call        00434534
 00778F45    mov         eax,dword ptr [ebp-10]
 00778F48    mov         eax,dword ptr [eax+20]
 00778F4B    mov         ecx,dword ptr [eax+esi*4]
 00778F4E    mov         eax,dword ptr [edi+20]
 00778F51    mov         eax,dword ptr [eax+esi*4]
 00778F54    mov         edx,dword ptr [eax+20]
 00778F57    mov         eax,dword ptr [ebx+3D4];TDCCauseEffectForm.lbLoop:TListBox
 00778F5D    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 00778F63    mov         edi,dword ptr [eax]
 00778F65    call        dword ptr [edi+40];TStrings.AddObject
 00778F68    inc         esi
 00778F69    dec         dword ptr [ebp-0C]
>00778F6C    jne         00778F19
 00778F6E    mov         dl,1
 00778F70    mov         eax,dword ptr [ebx+3D4];TDCCauseEffectForm.lbLoop:TListBox
 00778F76    mov         ecx,dword ptr [eax]
 00778F78    call        dword ptr [ecx+88];TGroupBox.SetEnabled
>00778F7E    jmp         00778F90
 00778F80    mov         dl,1
 00778F82    mov         eax,dword ptr [ebx+3EC];TDCCauseEffectForm.edGroup:TEdit
 00778F88    mov         ecx,dword ptr [eax]
 00778F8A    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 00778F90    xor         eax,eax
 00778F92    pop         edx
 00778F93    pop         ecx
 00778F94    pop         ecx
 00778F95    mov         dword ptr fs:[eax],edx
 00778F98    push        778FBA
 00778F9D    lea         eax,[ebp-14]
 00778FA0    call        @UStrClr
 00778FA5    lea         eax,[ebp-8]
 00778FA8    mov         edx,2
 00778FAD    call        @UStrArrayClr
 00778FB2    ret
>00778FB3    jmp         @HandleFinally
>00778FB8    jmp         00778F9D
 00778FBA    pop         edi
 00778FBB    pop         esi
 00778FBC    pop         ebx
 00778FBD    mov         esp,ebp
 00778FBF    pop         ebp
 00778FC0    ret
*}
end;

//00778FC4
procedure TDCCauseEffectForm.lbLoopClick(Sender:TObject);
begin
{*
 00778FC4    push        ebp
 00778FC5    mov         ebp,esp
 00778FC7    add         esp,0FFFFFFEC
 00778FCA    push        ebx
 00778FCB    push        esi
 00778FCC    push        edi
 00778FCD    xor         ecx,ecx
 00778FCF    mov         dword ptr [ebp-14],ecx
 00778FD2    mov         ebx,edx
 00778FD4    mov         esi,eax
 00778FD6    xor         eax,eax
 00778FD8    push        ebp
 00778FD9    push        7791DE
 00778FDE    push        dword ptr fs:[eax]
 00778FE1    mov         dword ptr fs:[eax],esp
 00778FE4    mov         eax,dword ptr [esi+3DC];TDCCauseEffectForm.lbAddress:TListBox
 00778FEA    mov         edx,dword ptr [eax]
 00778FEC    call        dword ptr [edx+114];TCustomListBox.Clear
 00778FF2    mov         eax,ebx
 00778FF4    mov         edx,dword ptr ds:[5020AC];TListBox
 00778FFA    call        @AsClass
 00778FFF    mov         dword ptr [ebp-4],eax
 00779002    mov         eax,dword ptr [ebp-4]
 00779005    mov         edx,dword ptr [eax]
 00779007    call        dword ptr [edx+108];TListBox.sub_0050E790
 0077900D    mov         edx,eax
 0077900F    mov         eax,dword ptr [ebp-4]
 00779012    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 00779018    mov         ecx,dword ptr [eax]
 0077901A    call        dword ptr [ecx+18];TStrings.GetObject
 0077901D    mov         edx,dword ptr ds:[765B88];TDCLoop
 00779023    call        @IsClass
 00779028    test        al,al
>0077902A    je          007790EE
 00779030    mov         eax,dword ptr [ebp-4]
 00779033    mov         edx,dword ptr [eax]
 00779035    call        dword ptr [edx+108];TListBox.sub_0050E790
 0077903B    mov         edx,eax
 0077903D    lea         ecx,[ebp-14]
 00779040    mov         eax,dword ptr [ebp-4]
 00779043    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 00779049    mov         ebx,dword ptr [eax]
 0077904B    call        dword ptr [ebx+0C];TStrings.Get
 0077904E    mov         eax,dword ptr [ebp-14]
 00779051    call        StrToInt
 00779056    mov         dword ptr [esi+424],eax;TDCCauseEffectForm.SearchLoop:Integer
 0077905C    mov         eax,dword ptr [ebp-4]
 0077905F    mov         edx,dword ptr [eax]
 00779061    call        dword ptr [edx+108];TListBox.sub_0050E790
 00779067    mov         edx,eax
 00779069    mov         eax,dword ptr [ebp-4]
 0077906C    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 00779072    mov         ecx,dword ptr [eax]
 00779074    call        dword ptr [ecx+18];TStrings.GetObject
 00779077    mov         ebx,eax
 00779079    mov         dword ptr [esi+430],ebx;TDCCauseEffectForm.SearchCtrlLoop:TDCLoop
 0077907F    mov         eax,dword ptr [ebx+1C]
 00779082    mov         eax,dword ptr [eax+8]
 00779085    sub         eax,1
>00779088    jno         0077908F
 0077908A    call        @IntOver
 0077908F    test        eax,eax
>00779091    jl          007790EE
 00779093    inc         eax
 00779094    mov         dword ptr [ebp-8],eax
 00779097    xor         ebx,ebx
 00779099    mov         eax,dword ptr [esi+430];TDCCauseEffectForm.SearchCtrlLoop:TDCLoop
 0077909F    mov         edi,dword ptr [eax+1C];TDCLoop.FAddresses:TObjectList<FXDCData.TDCAddr>
 007790A2    lea         eax,[edi+8]
 007790A5    mov         edx,ebx
 007790A7    call        00434534
 007790AC    mov         eax,dword ptr [esi+430];TDCCauseEffectForm.SearchCtrlLoop:TDCLoop
 007790B2    mov         eax,dword ptr [eax+1C];TDCLoop.FAddresses:TObjectList<FXDCData.TDCAddr>
 007790B5    mov         dword ptr [ebp-0C],eax
 007790B8    mov         eax,dword ptr [ebp-0C]
 007790BB    add         eax,8
 007790BE    mov         edx,ebx
 007790C0    call        00434534
 007790C5    mov         eax,dword ptr [ebp-0C]
 007790C8    mov         eax,dword ptr [eax+20]
 007790CB    mov         ecx,dword ptr [eax+ebx*4]
 007790CE    mov         eax,dword ptr [edi+20]
 007790D1    mov         eax,dword ptr [eax+ebx*4]
 007790D4    mov         edx,dword ptr [eax+2C]
 007790D7    mov         eax,dword ptr [esi+3DC];TDCCauseEffectForm.lbAddress:TListBox
 007790DD    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 007790E3    mov         edi,dword ptr [eax]
 007790E5    call        dword ptr [edi+40];TStrings.AddObject
 007790E8    inc         ebx
 007790E9    dec         dword ptr [ebp-8]
>007790EC    jne         00779099
 007790EE    mov         eax,dword ptr [ebp-4]
 007790F1    mov         edx,dword ptr [eax]
 007790F3    call        dword ptr [edx+108];TListBox.sub_0050E790
 007790F9    mov         edx,eax
 007790FB    mov         eax,dword ptr [ebp-4]
 007790FE    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 00779104    mov         ecx,dword ptr [eax]
 00779106    call        dword ptr [ecx+18];TStrings.GetObject
 00779109    mov         edx,dword ptr ds:[766334];TDCIoUnit
 0077910F    call        @IsClass
 00779114    test        al,al
>00779116    je          007791B1
 0077911C    mov         eax,dword ptr [ebp-4]
 0077911F    mov         edx,dword ptr [eax]
 00779121    call        dword ptr [edx+108];TListBox.sub_0050E790
 00779127    mov         edx,eax
 00779129    mov         eax,dword ptr [ebp-4]
 0077912C    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 00779132    mov         ecx,dword ptr [eax]
 00779134    call        dword ptr [ecx+18];TStrings.GetObject
 00779137    mov         ebx,eax
 00779139    mov         dword ptr [esi+438],ebx;TDCCauseEffectForm.SearchCtrlUnit:TDCIoUnit
 0077913F    mov         eax,dword ptr [ebx+1C]
 00779142    mov         eax,dword ptr [eax+8]
 00779145    sub         eax,1
>00779148    jno         0077914F
 0077914A    call        @IntOver
 0077914F    test        eax,eax
>00779151    jl          007791B1
 00779153    inc         eax
 00779154    mov         dword ptr [ebp-8],eax
 00779157    xor         ebx,ebx
 00779159    mov         eax,dword ptr [esi+438];TDCCauseEffectForm.SearchCtrlUnit:TDCIoUnit
 0077915F    mov         edi,dword ptr [eax+1C];TDCIoUnit.FIOLines:TObjectList<FXDCData.TDCIoLine>
 00779162    lea         eax,[edi+8]
 00779165    mov         edx,ebx
 00779167    call        00434534
 0077916C    mov         eax,dword ptr [esi+438];TDCCauseEffectForm.SearchCtrlUnit:TDCIoUnit
 00779172    mov         eax,dword ptr [eax+1C];TDCIoUnit.FIOLines:TObjectList<FXDCData.TDCIoLine>
 00779175    mov         dword ptr [ebp-10],eax
 00779178    mov         eax,dword ptr [ebp-10]
 0077917B    add         eax,8
 0077917E    mov         edx,ebx
 00779180    call        00434534
 00779185    mov         eax,dword ptr [ebp-10]
 00779188    mov         eax,dword ptr [eax+20]
 0077918B    mov         ecx,dword ptr [eax+ebx*4]
 0077918E    mov         eax,dword ptr [edi+20]
 00779191    mov         eax,dword ptr [eax+ebx*4]
 00779194    mov         edx,dword ptr [eax+0AC]
 0077919A    mov         eax,dword ptr [esi+3DC];TDCCauseEffectForm.lbAddress:TListBox
 007791A0    mov         eax,dword ptr [eax+2A0];TListBox.FItems:TStrings
 007791A6    mov         edi,dword ptr [eax]
 007791A8    call        dword ptr [edi+40];TStrings.AddObject
 007791AB    inc         ebx
 007791AC    dec         dword ptr [ebp-8]
>007791AF    jne         00779159
 007791B1    mov         eax,esi
 007791B3    call        00779228
 007791B8    mov         dl,1
 007791BA    mov         eax,dword ptr [esi+3DC];TDCCauseEffectForm.lbAddress:TListBox
 007791C0    mov         ecx,dword ptr [eax]
 007791C2    call        dword ptr [ecx+88];TGroupBox.SetEnabled
 007791C8    xor         eax,eax
 007791CA    pop         edx
 007791CB    pop         ecx
 007791CC    pop         ecx
 007791CD    mov         dword ptr fs:[eax],edx
 007791D0    push        7791E5
 007791D5    lea         eax,[ebp-14]
 007791D8    call        @UStrClr
 007791DD    ret
>007791DE    jmp         @HandleFinally
>007791E3    jmp         007791D5
 007791E5    pop         edi
 007791E6    pop         esi
 007791E7    pop         ebx
 007791E8    mov         esp,ebp
 007791EA    pop         ebp
 007791EB    ret
*}
end;

//007791EC
procedure TDCCauseEffectForm.lbAddressClick(Sender:TObject);
begin
{*
 007791EC    push        ebx
 007791ED    push        esi
 007791EE    mov         esi,edx
 007791F0    mov         ebx,eax
 007791F2    mov         eax,esi
 007791F4    mov         edx,dword ptr ds:[5020AC];TListBox
 007791FA    call        @AsClass
 007791FF    mov         esi,eax
 00779201    mov         eax,esi
 00779203    mov         edx,dword ptr [eax]
 00779205    call        dword ptr [edx+108];TListBox.sub_0050E790
 0077920B    mov         edx,eax
 0077920D    mov         eax,dword ptr [esi+2A0];TListBox.FItems:TStrings
 00779213    mov         ecx,dword ptr [eax]
 00779215    call        dword ptr [ecx+18];TStrings.GetObject
 00779218    mov         dword ptr [ebx+434],eax;TDCCauseEffectForm.SearchCtrlEntity:TDCAddr
 0077921E    mov         eax,ebx
 00779220    call        00779228
 00779225    pop         esi
 00779226    pop         ebx
 00779227    ret
*}
end;

//00779228
procedure sub_00779228;
begin
{*
 00779228    ret
*}
end;

//0077922C
procedure TDCCauseEffectForm.rbInputClick(Sender:TObject);
begin
{*
 0077922C    mov         byte ptr [eax+441],0;TDCCauseEffectForm.SearchCGKind:TCtrlGroupKind
 00779233    ret
*}
end;

//00779234
procedure TDCCauseEffectForm.rbOutputClick(Sender:TObject);
begin
{*
 00779234    mov         byte ptr [eax+441],1;TDCCauseEffectForm.SearchCGKind:TCtrlGroupKind
 0077923B    ret
*}
end;

//0077923C
procedure TDCCauseEffectForm.edGroupExit(Sender:TObject);
begin
{*
 0077923C    push        ebp
 0077923D    mov         ebp,esp
 0077923F    push        0
 00779241    push        0
 00779243    push        0
 00779245    push        ebx
 00779246    mov         ebx,eax
 00779248    xor         eax,eax
 0077924A    push        ebp
 0077924B    push        7792EB
 00779250    push        dword ptr fs:[eax]
 00779253    mov         dword ptr fs:[eax],esp
 00779256    lea         edx,[ebp-4]
 00779259    mov         eax,dword ptr [ebx+3EC];TDCCauseEffectForm.edGroup:TEdit
 0077925F    call        TControl.GetText
 00779264    mov         eax,dword ptr [ebp-4]
 00779267    mov         edx,779304;'General'
 0077926C    call        @UStrEqual
>00779271    jne         0077927D
 00779273    xor         eax,eax
 00779275    mov         dword ptr [ebx+43C],eax;TDCCauseEffectForm.SearchCtrlGroup:Integer
>0077927B    jmp         007792D0
 0077927D    lea         edx,[ebp-8]
 00779280    mov         eax,dword ptr [ebx+3EC];TDCCauseEffectForm.edGroup:TEdit
 00779286    call        TControl.GetText
 0077928B    mov         eax,dword ptr [ebp-8]
 0077928E    mov         edx,779320;'Local'
 00779293    call        @UStrEqual
>00779298    jne         007792A6
 0077929A    mov         dword ptr [ebx+43C],0FFFFFFFF;TDCCauseEffectForm.SearchCtrlGroup:Integer
>007792A4    jmp         007792D0
 007792A6    lea         edx,[ebp-0C]
 007792A9    mov         eax,dword ptr [ebx+3EC];TDCCauseEffectForm.edGroup:TEdit
 007792AF    call        TControl.GetText
 007792B4    mov         eax,dword ptr [ebp-0C]
 007792B7    lea         edx,[ebx+43C];TDCCauseEffectForm.SearchCtrlGroup:Integer
 007792BD    call        0041E5A0
 007792C2    test        al,al
>007792C4    jne         007792D0
 007792C6    mov         eax,779338;'Control group must be ''General'', ''Local'' or 1..999'
 007792CB    call        ShowMessage
 007792D0    xor         eax,eax
 007792D2    pop         edx
 007792D3    pop         ecx
 007792D4    pop         ecx
 007792D5    mov         dword ptr fs:[eax],edx
 007792D8    push        7792F2
 007792DD    lea         eax,[ebp-0C]
 007792E0    mov         edx,3
 007792E5    call        @UStrArrayClr
 007792EA    ret
>007792EB    jmp         @HandleFinally
>007792F0    jmp         007792DD
 007792F2    pop         ebx
 007792F3    mov         esp,ebp
 007792F5    pop         ebp
 007792F6    ret
*}
end;

//007793A0
procedure TDCCauseEffectForm.btnSearchClick(Sender:TObject);
begin
{*
 007793A0    push        ebp
 007793A1    mov         ebp,esp
 007793A3    push        0
 007793A5    push        ebx
 007793A6    mov         ebx,eax
 007793A8    xor         eax,eax
 007793AA    push        ebp
 007793AB    push        77954C
 007793B0    push        dword ptr fs:[eax]
 007793B3    mov         dword ptr fs:[eax],esp
 007793B6    cmp         dword ptr [ebx+42C],0;TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
>007793BD    jne         007793CE
 007793BF    mov         eax,779564;'No panel is selected!'
 007793C4    call        ShowMessage
>007793C9    jmp         00779536
 007793CE    movzx       eax,byte ptr [ebx+440];TDCCauseEffectForm.SearchCriteria:TSearchCriteria
 007793D5    sub         al,1
>007793D7    jb          007793E8
>007793D9    je          00779445
 007793DB    dec         al
>007793DD    je          007794BD
>007793E3    jmp         00779536
 007793E8    cmp         dword ptr [ebx+434],0;TDCCauseEffectForm.SearchCtrlEntity:TDCAddr
>007793EF    jne         00779400
 007793F1    mov         eax,77959C;'No IO entity is selected!'
 007793F6    call        ShowMessage
>007793FB    jmp         00779536
 00779400    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 00779405    mov         eax,dword ptr [eax]
 00779407    mov         ecx,dword ptr [ebx+434];TDCCauseEffectForm.SearchCtrlEntity:TDCAddr
 0077940D    mov         edx,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00779413    call        TDCCtrlObjects.CollectOutputsOfSingleInput
 00779418    mov         edx,2
 0077941D    mov         eax,dword ptr [ebx+3F4];TDCCauseEffectForm.PanelAx:TPanel
 00779423    call        TControl.SetHeight
 00779428    mov         eax,dword ptr [ebx+3FC];TDCCauseEffectForm.TreeA:TTreeView
 0077942E    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00779434    call        TTreeNodes.Clear
 00779439    mov         eax,ebx
 0077943B    call        TDCCauseEffectForm.UpdateOTree
>00779440    jmp         00779536
 00779445    cmp         dword ptr [ebx+434],0;TDCCauseEffectForm.SearchCtrlEntity:TDCAddr
>0077944C    jne         0077945D
 0077944E    mov         eax,77959C;'No IO entity is selected!'
 00779453    call        ShowMessage
>00779458    jmp         00779536
 0077945D    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 00779462    mov         eax,dword ptr [eax]
 00779464    mov         ecx,dword ptr [ebx+434];TDCCauseEffectForm.SearchCtrlEntity:TDCAddr
 0077946A    mov         edx,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 00779470    call        TDCCtrlObjects.CollectInputsOfSingleOutput
 00779475    mov         eax,ebx
 00779477    call        TControl.GetClientHeight
 0077947C    mov         edx,eax
 0077947E    mov         eax,dword ptr [ebx+3C0];TDCCauseEffectForm.Panel1:TPanel
 00779484    sub         edx,dword ptr [eax+5C]
>00779487    jno         0077948E
 00779489    call        @IntOver
 0077948E    sub         edx,2
>00779491    jno         00779498
 00779493    call        @IntOver
 00779498    mov         eax,dword ptr [ebx+3F4];TDCCauseEffectForm.PanelAx:TPanel
 0077949E    call        TControl.SetHeight
 007794A3    mov         eax,ebx
 007794A5    call        TDCCauseEffectForm.UpdateITree
 007794AA    mov         eax,dword ptr [ebx+404];TDCCauseEffectForm.TreeB:TTreeView
 007794B0    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 007794B6    call        TTreeNodes.Clear
>007794BB    jmp         00779536
 007794BD    lea         edx,[ebp-4]
 007794C0    mov         eax,dword ptr [ebx+3EC];TDCCauseEffectForm.edGroup:TEdit
 007794C6    call        TControl.GetText
 007794CB    cmp         dword ptr [ebp-4],0
>007794CF    jne         007794DD
 007794D1    mov         eax,7795DC;'Group definition is missing!'
 007794D6    call        ShowMessage
>007794DB    jmp         00779536
 007794DD    movzx       eax,byte ptr [ebx+441];TDCCauseEffectForm.SearchCGKind:TCtrlGroupKind
 007794E4    push        eax
 007794E5    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 007794EA    mov         eax,dword ptr [eax]
 007794EC    mov         ecx,dword ptr [ebx+43C];TDCCauseEffectForm.SearchCtrlGroup:Integer
 007794F2    mov         edx,dword ptr [ebx+42C];TDCCauseEffectForm.SearchCtrlPanel:TDCPanel
 007794F8    call        TDCCtrlObjects.CollectInputsOutputsOfCGroup
 007794FD    mov         eax,ebx
 007794FF    call        TControl.GetClientHeight
 00779504    mov         edx,eax
 00779506    mov         eax,dword ptr [ebx+3C0];TDCCauseEffectForm.Panel1:TPanel
 0077950C    sub         edx,dword ptr [eax+5C]
>0077950F    jno         00779516
 00779511    call        @IntOver
 00779516    sar         edx,1
>00779518    jns         0077951D
 0077951A    adc         edx,0
 0077951D    mov         eax,dword ptr [ebx+3F4];TDCCauseEffectForm.PanelAx:TPanel
 00779523    call        TControl.SetHeight
 00779528    mov         eax,ebx
 0077952A    call        TDCCauseEffectForm.UpdateITree
 0077952F    mov         eax,ebx
 00779531    call        TDCCauseEffectForm.UpdateOTree
 00779536    xor         eax,eax
 00779538    pop         edx
 00779539    pop         ecx
 0077953A    pop         ecx
 0077953B    mov         dword ptr fs:[eax],edx
 0077953E    push        779553
 00779543    lea         eax,[ebp-4]
 00779546    call        @UStrClr
 0077954B    ret
>0077954C    jmp         @HandleFinally
>00779551    jmp         00779543
 00779553    pop         ebx
 00779554    pop         ecx
 00779555    pop         ebp
 00779556    ret
*}
end;

//00779618
procedure TDCCauseEffectForm.HeaderASectionClick(HeaderControl:THeaderControl; Section:THeaderSection);
begin
{*
 00779618    push        ebx
 00779619    push        esi
 0077961A    push        edi
 0077961B    mov         edi,ecx
 0077961D    mov         esi,edx
 0077961F    mov         ebx,eax
 00779621    xor         edx,edx
 00779623    mov         eax,dword ptr [esi+290];THeaderControl.FSections:THeaderSections
 00779629    call        THeaderSections.GetItem
 0077962E    cmp         edi,eax
>00779630    jne         00779661
 00779632    cmp         byte ptr [ebx+442],0;TDCCauseEffectForm.TreeAExpanded:Boolean
>00779639    je          0077964F
 0077963B    mov         eax,dword ptr [ebx+3FC];TDCCauseEffectForm.TreeA:TTreeView
 00779641    call        TCustomTreeView.FullCollapse
 00779646    mov         byte ptr [ebx+442],0;TDCCauseEffectForm.TreeAExpanded:Boolean
>0077964D    jmp         00779661
 0077964F    mov         eax,dword ptr [ebx+3FC];TDCCauseEffectForm.TreeA:TTreeView
 00779655    call        TCustomTreeView.FullExpand
 0077965A    mov         byte ptr [ebx+442],1;TDCCauseEffectForm.TreeAExpanded:Boolean
 00779661    pop         edi
 00779662    pop         esi
 00779663    pop         ebx
 00779664    ret
*}
end;

//00779668
procedure TDCCauseEffectForm.HeaderASectionResize(HeaderControl:THeaderControl; Section:THeaderSection);
begin
{*
 00779668    push        esi
 00779669    mov         esi,eax
 0077966B    mov         eax,dword ptr [esi+3FC];TDCCauseEffectForm.TreeA:TTreeView
 00779671    mov         edx,dword ptr [eax]
 00779673    call        dword ptr [edx+0AC];TWinControl.Repaint
 00779679    pop         esi
 0077967A    ret
*}
end;

//0077967C
procedure TDCCauseEffectForm.TreeACustomDrawItem(Sender:TCustomTreeView; Node:TTreeNode; var DefaultDraw:Boolean; State:TCustomDrawState);
begin
{*
 0077967C    push        ebp
 0077967D    mov         ebp,esp
 0077967F    add         esp,0FFFFFFD4
 00779682    push        ebx
 00779683    push        esi
 00779684    push        edi
 00779685    xor         ebx,ebx
 00779687    mov         dword ptr [ebp-2C],ebx
 0077968A    mov         dword ptr [ebp-28],ebx
 0077968D    mov         dword ptr [ebp-24],ebx
 00779690    mov         dword ptr [ebp-20],ebx
 00779693    mov         dword ptr [ebp-1C],ebx
 00779696    mov         esi,ecx
 00779698    mov         dword ptr [ebp-8],edx
 0077969B    mov         dword ptr [ebp-4],eax
 0077969E    xor         eax,eax
 007796A0    push        ebp
 007796A1    push        7799C6
 007796A6    push        dword ptr fs:[eax]
 007796A9    mov         dword ptr fs:[eax],esp
 007796AC    mov         eax,dword ptr [ebp+8]
 007796AF    mov         byte ptr [eax],1
 007796B2    mov         eax,dword ptr [ebp-8]
 007796B5    mov         ebx,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 007796BB    mov         edx,9
 007796C0    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 007796C3    call        TFont.SetSize
 007796C8    mov         edx,8
 007796CD    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 007796D0    call        TFont.SetSize
 007796D5    mov         eax,esi
 007796D7    call        00539908
 007796DC    test        eax,eax
>007796DE    jne         007796EF
 007796E0    mov         edx,0FF0000
 007796E5    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 007796E8    call        TFont.SetColor
>007796ED    jmp         007796F9
 007796EF    xor         edx,edx
 007796F1    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 007796F4    call        TFont.SetColor
 007796F9    mov         eax,esi
 007796FB    call        00539908
 00779700    test        eax,eax
>00779702    jne         00779715
 00779704    movzx       edx,byte ptr ds:[7799D8];0x1 gvar_007799D8
 0077970B    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 0077970E    call        TFont.SetStyle
>00779713    jmp         00779724
 00779715    movzx       edx,byte ptr ds:[7799DC];0x0 gvar_007799DC
 0077971C    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 0077971F    call        TFont.SetStyle
 00779724    lea         ecx,[ebp-18]
 00779727    mov         dl,1
 00779729    mov         eax,esi
 0077972B    call        TTreeNode.DisplayRect
 00779730    mov         eax,dword ptr [esi+8];TTreeNode.FText:string
 00779733    push        eax
 00779734    mov         ecx,dword ptr [ebp-14]
 00779737    mov         edx,dword ptr [ebp-18]
 0077973A    mov         eax,ebx
 0077973C    mov         edi,dword ptr [eax]
 0077973E    call        dword ptr [edi+90];TCanvas.TextOut
 00779744    cmp         dword ptr [esi+0C],0;TTreeNode.FData:Pointer
>00779748    je          007799AB
 0077974E    mov         eax,dword ptr [ebp-4]
 00779751    mov         eax,dword ptr [eax+408];TDCCauseEffectForm.HeaderA:THeaderControl
 00779757    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 0077975D    mov         edx,1
 00779762    call        THeaderSections.GetItem
 00779767    call        00536FB8
 0077976C    add         eax,10
>0077976F    jno         00779776
 00779771    call        @IntOver
 00779776    mov         dword ptr [ebp-18],eax
 00779779    mov         eax,dword ptr [ebp-4]
 0077977C    mov         eax,dword ptr [eax+408];TDCCauseEffectForm.HeaderA:THeaderControl
 00779782    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779788    mov         edx,1
 0077978D    call        THeaderSections.GetItem
 00779792    call        00536FEC
 00779797    sub         eax,2
>0077979A    jno         007797A1
 0077979C    call        @IntOver
 007797A1    mov         dword ptr [ebp-10],eax
 007797A4    mov         eax,dword ptr [ebp-14]
 007797A7    push        eax
 007797A8    lea         edx,[ebp-1C]
 007797AB    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 007797AE    mov         ecx,dword ptr [eax]
 007797B0    call        dword ptr [ecx+4]
 007797B3    mov         eax,dword ptr [ebp-1C]
 007797B6    push        eax
 007797B7    mov         ecx,dword ptr [ebp-18]
 007797BA    lea         edx,[ebp-18]
 007797BD    mov         eax,ebx
 007797BF    mov         edi,dword ptr [eax]
 007797C1    call        dword ptr [edi+98];TCanvas.TextRect
 007797C7    mov         eax,dword ptr [ebp-4]
 007797CA    mov         eax,dword ptr [eax+408];TDCCauseEffectForm.HeaderA:THeaderControl
 007797D0    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 007797D6    mov         edx,2
 007797DB    call        THeaderSections.GetItem
 007797E0    call        00536FB8
 007797E5    add         eax,10
>007797E8    jno         007797EF
 007797EA    call        @IntOver
 007797EF    mov         dword ptr [ebp-18],eax
 007797F2    mov         eax,dword ptr [ebp-4]
 007797F5    mov         eax,dword ptr [eax+408];TDCCauseEffectForm.HeaderA:THeaderControl
 007797FB    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779801    mov         edx,2
 00779806    call        THeaderSections.GetItem
 0077980B    call        00536FEC
 00779810    sub         eax,2
>00779813    jno         0077981A
 00779815    call        @IntOver
 0077981A    mov         dword ptr [ebp-10],eax
 0077981D    mov         eax,dword ptr [ebp-14]
 00779820    push        eax
 00779821    lea         edx,[ebp-20]
 00779824    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 00779827    mov         ecx,dword ptr [eax]
 00779829    call        dword ptr [ecx+8]
 0077982C    mov         eax,dword ptr [ebp-20]
 0077982F    push        eax
 00779830    mov         ecx,dword ptr [ebp-18]
 00779833    lea         edx,[ebp-18]
 00779836    mov         eax,ebx
 00779838    mov         edi,dword ptr [eax]
 0077983A    call        dword ptr [edi+98];TCanvas.TextRect
 00779840    mov         eax,dword ptr [ebp-4]
 00779843    mov         eax,dword ptr [eax+408];TDCCauseEffectForm.HeaderA:THeaderControl
 00779849    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 0077984F    mov         edx,3
 00779854    call        THeaderSections.GetItem
 00779859    call        00536FB8
 0077985E    add         eax,10
>00779861    jno         00779868
 00779863    call        @IntOver
 00779868    mov         dword ptr [ebp-18],eax
 0077986B    mov         eax,dword ptr [ebp-4]
 0077986E    mov         eax,dword ptr [eax+408];TDCCauseEffectForm.HeaderA:THeaderControl
 00779874    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 0077987A    mov         edx,3
 0077987F    call        THeaderSections.GetItem
 00779884    call        00536FEC
 00779889    sub         eax,2
>0077988C    jno         00779893
 0077988E    call        @IntOver
 00779893    mov         dword ptr [ebp-10],eax
 00779896    mov         eax,dword ptr [ebp-14]
 00779899    push        eax
 0077989A    lea         edx,[ebp-24]
 0077989D    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 007798A0    mov         ecx,dword ptr [eax]
 007798A2    call        dword ptr [ecx+0C]
 007798A5    mov         eax,dword ptr [ebp-24]
 007798A8    push        eax
 007798A9    mov         ecx,dword ptr [ebp-18]
 007798AC    lea         edx,[ebp-18]
 007798AF    mov         eax,ebx
 007798B1    mov         edi,dword ptr [eax]
 007798B3    call        dword ptr [edi+98];TCanvas.TextRect
 007798B9    mov         eax,dword ptr [ebp-4]
 007798BC    mov         eax,dword ptr [eax+408];TDCCauseEffectForm.HeaderA:THeaderControl
 007798C2    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 007798C8    mov         edx,4
 007798CD    call        THeaderSections.GetItem
 007798D2    call        00536FB8
 007798D7    add         eax,8
>007798DA    jno         007798E1
 007798DC    call        @IntOver
 007798E1    mov         dword ptr [ebp-18],eax
 007798E4    mov         eax,dword ptr [ebp-4]
 007798E7    mov         eax,dword ptr [eax+408];TDCCauseEffectForm.HeaderA:THeaderControl
 007798ED    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 007798F3    mov         edx,4
 007798F8    call        THeaderSections.GetItem
 007798FD    call        00536FEC
 00779902    sub         eax,2
>00779905    jno         0077990C
 00779907    call        @IntOver
 0077990C    mov         dword ptr [ebp-10],eax
 0077990F    mov         eax,dword ptr [ebp-14]
 00779912    push        eax
 00779913    lea         edx,[ebp-28]
 00779916    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 00779919    mov         ecx,dword ptr [eax]
 0077991B    call        dword ptr [ecx+10]
 0077991E    mov         eax,dword ptr [ebp-28]
 00779921    push        eax
 00779922    mov         ecx,dword ptr [ebp-18]
 00779925    lea         edx,[ebp-18]
 00779928    mov         eax,ebx
 0077992A    mov         edi,dword ptr [eax]
 0077992C    call        dword ptr [edi+98];TCanvas.TextRect
 00779932    mov         eax,dword ptr [ebp-4]
 00779935    mov         eax,dword ptr [eax+408];TDCCauseEffectForm.HeaderA:THeaderControl
 0077993B    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779941    mov         edx,5
 00779946    call        THeaderSections.GetItem
 0077994B    call        00536FB8
 00779950    add         eax,8
>00779953    jno         0077995A
 00779955    call        @IntOver
 0077995A    mov         dword ptr [ebp-18],eax
 0077995D    mov         eax,dword ptr [ebp-4]
 00779960    mov         eax,dword ptr [eax+408];TDCCauseEffectForm.HeaderA:THeaderControl
 00779966    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 0077996C    mov         edx,5
 00779971    call        THeaderSections.GetItem
 00779976    call        00536FEC
 0077997B    sub         eax,2
>0077997E    jno         00779985
 00779980    call        @IntOver
 00779985    mov         dword ptr [ebp-10],eax
 00779988    mov         eax,dword ptr [ebp-14]
 0077998B    push        eax
 0077998C    lea         edx,[ebp-2C]
 0077998F    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 00779992    mov         ecx,dword ptr [eax]
 00779994    call        dword ptr [ecx+1C]
 00779997    mov         eax,dword ptr [ebp-2C]
 0077999A    push        eax
 0077999B    mov         ecx,dword ptr [ebp-18]
 0077999E    lea         edx,[ebp-18]
 007799A1    mov         eax,ebx
 007799A3    mov         ebx,dword ptr [eax]
 007799A5    call        dword ptr [ebx+98];TCanvas.TextRect
 007799AB    xor         eax,eax
 007799AD    pop         edx
 007799AE    pop         ecx
 007799AF    pop         ecx
 007799B0    mov         dword ptr fs:[eax],edx
 007799B3    push        7799CD
 007799B8    lea         eax,[ebp-2C]
 007799BB    mov         edx,5
 007799C0    call        @UStrArrayClr
 007799C5    ret
>007799C6    jmp         @HandleFinally
>007799CB    jmp         007799B8
 007799CD    pop         edi
 007799CE    pop         esi
 007799CF    pop         ebx
 007799D0    mov         esp,ebp
 007799D2    pop         ebp
 007799D3    ret         8
*}
end;

//007799E0
procedure TDCCauseEffectForm.UpdateITree;
begin
{*
 007799E0    push        ebp
 007799E1    mov         ebp,esp
 007799E3    add         esp,0FFFFFFF8
 007799E6    push        ebx
 007799E7    push        esi
 007799E8    push        edi
 007799E9    mov         dword ptr [ebp-4],eax
 007799EC    mov         eax,dword ptr [ebp-4]
 007799EF    mov         eax,dword ptr [eax+3FC];TDCCauseEffectForm.TreeA:TTreeView
 007799F5    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 007799FB    call        TTreeNodes.BeginUpdate
 00779A00    xor         eax,eax
 00779A02    push        ebp
 00779A03    push        779B84
 00779A08    push        dword ptr fs:[eax]
 00779A0B    mov         dword ptr fs:[eax],esp
 00779A0E    mov         eax,dword ptr [ebp-4]
 00779A11    mov         eax,dword ptr [eax+3FC];TDCCauseEffectForm.TreeA:TTreeView
 00779A17    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00779A1D    call        TTreeNodes.Clear
 00779A22    mov         eax,dword ptr [ebp-4]
 00779A25    movzx       eax,byte ptr [eax+440];TDCCauseEffectForm.SearchCriteria:TSearchCriteria
 00779A2C    dec         al
>00779A2E    je          00779A3D
 00779A30    dec         al
>00779A32    je          00779AC7
>00779A38    jmp         00779B48
 00779A3D    push        0
 00779A3F    mov         eax,dword ptr [ebp-4]
 00779A42    mov         eax,dword ptr [eax+3FC];TDCCauseEffectForm.TreeA:TTreeView
 00779A48    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00779A4E    mov         ecx,dword ptr ds:[7C4050];^'Inputs by single output'
 00779A54    xor         edx,edx
 00779A56    call        TTreeNodes.AddChildObject
 00779A5B    mov         dword ptr [ebp-8],eax
 00779A5E    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 00779A63    mov         eax,dword ptr [eax]
 00779A65    mov         eax,dword ptr [eax+4]
 00779A68    mov         eax,dword ptr [eax+0C]
 00779A6B    mov         esi,dword ptr [eax+8]
 00779A6E    sub         esi,1
>00779A71    jno         00779A78
 00779A73    call        @IntOver
 00779A78    test        esi,esi
>00779A7A    jl          00779B48
 00779A80    inc         esi
 00779A81    xor         ebx,ebx
 00779A83    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 00779A88    mov         eax,dword ptr [eax]
 00779A8A    mov         eax,dword ptr [eax+4]
 00779A8D    mov         edi,dword ptr [eax+0C]
 00779A90    lea         eax,[edi+8]
 00779A93    mov         edx,ebx
 00779A95    call        00434534
 00779A9A    mov         eax,dword ptr [edi+20]
 00779A9D    mov         eax,dword ptr [eax+ebx*4]
 00779AA0    push        eax
 00779AA1    mov         eax,dword ptr [ebp-4]
 00779AA4    mov         eax,dword ptr [eax+3FC];TDCCauseEffectForm.TreeA:TTreeView
 00779AAA    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00779AB0    mov         ecx,dword ptr ds:[7C4014];^'Addr. input'
 00779AB6    mov         edx,dword ptr [ebp-8]
 00779AB9    call        TTreeNodes.AddChildObject
 00779ABE    inc         ebx
 00779ABF    dec         esi
>00779AC0    jne         00779A83
>00779AC2    jmp         00779B48
 00779AC7    push        0
 00779AC9    mov         eax,dword ptr [ebp-4]
 00779ACC    mov         eax,dword ptr [eax+3FC];TDCCauseEffectForm.TreeA:TTreeView
 00779AD2    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00779AD8    mov         ecx,dword ptr ds:[7C4054];^'Inputs by Control Group'
 00779ADE    xor         edx,edx
 00779AE0    call        TTreeNodes.AddChildObject
 00779AE5    mov         dword ptr [ebp-8],eax
 00779AE8    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 00779AED    mov         eax,dword ptr [eax]
 00779AEF    mov         eax,dword ptr [eax+4]
 00779AF2    mov         eax,dword ptr [eax+0C]
 00779AF5    mov         esi,dword ptr [eax+8]
 00779AF8    sub         esi,1
>00779AFB    jno         00779B02
 00779AFD    call        @IntOver
 00779B02    test        esi,esi
>00779B04    jl          00779B48
 00779B06    inc         esi
 00779B07    xor         ebx,ebx
 00779B09    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 00779B0E    mov         eax,dword ptr [eax]
 00779B10    mov         eax,dword ptr [eax+4]
 00779B13    mov         edi,dword ptr [eax+0C]
 00779B16    lea         eax,[edi+8]
 00779B19    mov         edx,ebx
 00779B1B    call        00434534
 00779B20    mov         eax,dword ptr [edi+20]
 00779B23    mov         eax,dword ptr [eax+ebx*4]
 00779B26    push        eax
 00779B27    mov         eax,dword ptr [ebp-4]
 00779B2A    mov         eax,dword ptr [eax+3FC];TDCCauseEffectForm.TreeA:TTreeView
 00779B30    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00779B36    mov         ecx,dword ptr ds:[7C4014];^'Addr. input'
 00779B3C    mov         edx,dword ptr [ebp-8]
 00779B3F    call        TTreeNodes.AddChildObject
 00779B44    inc         ebx
 00779B45    dec         esi
>00779B46    jne         00779B09
 00779B48    xor         eax,eax
 00779B4A    pop         edx
 00779B4B    pop         ecx
 00779B4C    pop         ecx
 00779B4D    mov         dword ptr fs:[eax],edx
 00779B50    push        779B8B
 00779B55    mov         eax,dword ptr [ebp-4]
 00779B58    cmp         byte ptr [eax+442],0;TDCCauseEffectForm.TreeAExpanded:Boolean
>00779B5F    je          00779B6F
 00779B61    mov         eax,dword ptr [ebp-4]
 00779B64    mov         eax,dword ptr [eax+3FC];TDCCauseEffectForm.TreeA:TTreeView
 00779B6A    call        TCustomTreeView.FullExpand
 00779B6F    mov         eax,dword ptr [ebp-4]
 00779B72    mov         eax,dword ptr [eax+3FC];TDCCauseEffectForm.TreeA:TTreeView
 00779B78    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 00779B7E    call        TTreeNodes.EndUpdate
 00779B83    ret
>00779B84    jmp         @HandleFinally
>00779B89    jmp         00779B55
 00779B8B    pop         edi
 00779B8C    pop         esi
 00779B8D    pop         ebx
 00779B8E    pop         ecx
 00779B8F    pop         ecx
 00779B90    pop         ebp
 00779B91    ret
*}
end;

//00779B94
procedure TDCCauseEffectForm.HeaderBSectionClick(HeaderControl:THeaderControl; Section:THeaderSection);
begin
{*
 00779B94    push        ebx
 00779B95    push        esi
 00779B96    push        edi
 00779B97    mov         edi,ecx
 00779B99    mov         esi,edx
 00779B9B    mov         ebx,eax
 00779B9D    xor         edx,edx
 00779B9F    mov         eax,dword ptr [esi+290];THeaderControl.FSections:THeaderSections
 00779BA5    call        THeaderSections.GetItem
 00779BAA    cmp         edi,eax
>00779BAC    jne         00779BDD
 00779BAE    cmp         byte ptr [ebx+443],0;TDCCauseEffectForm.TreeBExpanded:Boolean
>00779BB5    je          00779BCB
 00779BB7    mov         eax,dword ptr [ebx+404];TDCCauseEffectForm.TreeB:TTreeView
 00779BBD    call        TCustomTreeView.FullCollapse
 00779BC2    mov         byte ptr [ebx+443],0;TDCCauseEffectForm.TreeBExpanded:Boolean
>00779BC9    jmp         00779BDD
 00779BCB    mov         eax,dword ptr [ebx+404];TDCCauseEffectForm.TreeB:TTreeView
 00779BD1    call        TCustomTreeView.FullExpand
 00779BD6    mov         byte ptr [ebx+443],1;TDCCauseEffectForm.TreeBExpanded:Boolean
 00779BDD    pop         edi
 00779BDE    pop         esi
 00779BDF    pop         ebx
 00779BE0    ret
*}
end;

//00779BE4
procedure TDCCauseEffectForm.HeaderBSectionResize(HeaderControl:THeaderControl; Section:THeaderSection);
begin
{*
 00779BE4    push        esi
 00779BE5    mov         esi,eax
 00779BE7    mov         eax,dword ptr [esi+404];TDCCauseEffectForm.TreeB:TTreeView
 00779BED    mov         edx,dword ptr [eax]
 00779BEF    call        dword ptr [edx+0AC];TWinControl.Repaint
 00779BF5    pop         esi
 00779BF6    ret
*}
end;

//00779BF8
procedure TDCCauseEffectForm.TreeBCustomDrawItem(Sender:TCustomTreeView; Node:TTreeNode; var DefaultDraw:Boolean; State:TCustomDrawState);
begin
{*
 00779BF8    push        ebp
 00779BF9    mov         ebp,esp
 00779BFB    push        ecx
 00779BFC    mov         ecx,6
 00779C01    push        0
 00779C03    push        0
 00779C05    dec         ecx
>00779C06    jne         00779C01
 00779C08    xchg        ecx,dword ptr [ebp-4]
 00779C0B    push        ebx
 00779C0C    push        esi
 00779C0D    push        edi
 00779C0E    mov         esi,ecx
 00779C10    mov         dword ptr [ebp-8],edx
 00779C13    mov         dword ptr [ebp-4],eax
 00779C16    xor         eax,eax
 00779C18    push        ebp
 00779C19    push        77A030
 00779C1E    push        dword ptr fs:[eax]
 00779C21    mov         dword ptr fs:[eax],esp
 00779C24    mov         eax,dword ptr [ebp+8]
 00779C27    mov         byte ptr [eax],1
 00779C2A    mov         eax,dword ptr [ebp-8]
 00779C2D    mov         ebx,dword ptr [eax+294];TCustomTreeView.FCanvas:TCanvas
 00779C33    mov         edx,9
 00779C38    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 00779C3B    call        TFont.SetSize
 00779C40    mov         edx,8
 00779C45    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 00779C48    call        TFont.SetSize
 00779C4D    mov         eax,esi
 00779C4F    call        00539908
 00779C54    test        eax,eax
>00779C56    jne         00779C67
 00779C58    mov         edx,0FF0000
 00779C5D    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 00779C60    call        TFont.SetColor
>00779C65    jmp         00779C71
 00779C67    xor         edx,edx
 00779C69    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 00779C6C    call        TFont.SetColor
 00779C71    mov         eax,esi
 00779C73    call        00539908
 00779C78    test        eax,eax
>00779C7A    jne         00779C8D
 00779C7C    movzx       edx,byte ptr ds:[77A040];0x1 gvar_0077A040
 00779C83    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 00779C86    call        TFont.SetStyle
>00779C8B    jmp         00779C9C
 00779C8D    movzx       edx,byte ptr ds:[77A044];0x0 gvar_0077A044
 00779C94    mov         eax,dword ptr [ebx+40];TCanvas.FFont:TFont
 00779C97    call        TFont.SetStyle
 00779C9C    lea         ecx,[ebp-18]
 00779C9F    mov         dl,1
 00779CA1    mov         eax,esi
 00779CA3    call        TTreeNode.DisplayRect
 00779CA8    mov         eax,dword ptr [esi+8];TTreeNode.FText:string
 00779CAB    push        eax
 00779CAC    mov         ecx,dword ptr [ebp-14]
 00779CAF    mov         edx,dword ptr [ebp-18]
 00779CB2    mov         eax,ebx
 00779CB4    mov         edi,dword ptr [eax]
 00779CB6    call        dword ptr [edi+90];TCanvas.TextOut
 00779CBC    cmp         dword ptr [esi+0C],0;TTreeNode.FData:Pointer
>00779CC0    je          0077A015
 00779CC6    mov         eax,dword ptr [ebp-4]
 00779CC9    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779CCF    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779CD5    mov         edx,1
 00779CDA    call        THeaderSections.GetItem
 00779CDF    call        00536FB8
 00779CE4    add         eax,10
>00779CE7    jno         00779CEE
 00779CE9    call        @IntOver
 00779CEE    mov         dword ptr [ebp-18],eax
 00779CF1    mov         eax,dword ptr [ebp-4]
 00779CF4    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779CFA    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779D00    mov         edx,1
 00779D05    call        THeaderSections.GetItem
 00779D0A    call        00536FEC
 00779D0F    sub         eax,2
>00779D12    jno         00779D19
 00779D14    call        @IntOver
 00779D19    mov         dword ptr [ebp-10],eax
 00779D1C    mov         eax,dword ptr [ebp-14]
 00779D1F    push        eax
 00779D20    lea         edx,[ebp-1C]
 00779D23    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 00779D26    mov         ecx,dword ptr [eax]
 00779D28    call        dword ptr [ecx+4]
 00779D2B    mov         eax,dword ptr [ebp-1C]
 00779D2E    push        eax
 00779D2F    mov         ecx,dword ptr [ebp-18]
 00779D32    lea         edx,[ebp-18]
 00779D35    mov         eax,ebx
 00779D37    mov         edi,dword ptr [eax]
 00779D39    call        dword ptr [edi+98];TCanvas.TextRect
 00779D3F    mov         eax,dword ptr [ebp-4]
 00779D42    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779D48    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779D4E    mov         edx,2
 00779D53    call        THeaderSections.GetItem
 00779D58    call        00536FB8
 00779D5D    add         eax,10
>00779D60    jno         00779D67
 00779D62    call        @IntOver
 00779D67    mov         dword ptr [ebp-18],eax
 00779D6A    mov         eax,dword ptr [ebp-4]
 00779D6D    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779D73    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779D79    mov         edx,2
 00779D7E    call        THeaderSections.GetItem
 00779D83    call        00536FEC
 00779D88    sub         eax,2
>00779D8B    jno         00779D92
 00779D8D    call        @IntOver
 00779D92    mov         dword ptr [ebp-10],eax
 00779D95    mov         eax,dword ptr [ebp-14]
 00779D98    push        eax
 00779D99    lea         edx,[ebp-20]
 00779D9C    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 00779D9F    mov         ecx,dword ptr [eax]
 00779DA1    call        dword ptr [ecx+8]
 00779DA4    mov         eax,dword ptr [ebp-20]
 00779DA7    push        eax
 00779DA8    mov         ecx,dword ptr [ebp-18]
 00779DAB    lea         edx,[ebp-18]
 00779DAE    mov         eax,ebx
 00779DB0    mov         edi,dword ptr [eax]
 00779DB2    call        dword ptr [edi+98];TCanvas.TextRect
 00779DB8    mov         eax,dword ptr [ebp-4]
 00779DBB    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779DC1    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779DC7    mov         edx,3
 00779DCC    call        THeaderSections.GetItem
 00779DD1    call        00536FB8
 00779DD6    add         eax,10
>00779DD9    jno         00779DE0
 00779DDB    call        @IntOver
 00779DE0    mov         dword ptr [ebp-18],eax
 00779DE3    mov         eax,dword ptr [ebp-4]
 00779DE6    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779DEC    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779DF2    mov         edx,3
 00779DF7    call        THeaderSections.GetItem
 00779DFC    call        00536FEC
 00779E01    sub         eax,2
>00779E04    jno         00779E0B
 00779E06    call        @IntOver
 00779E0B    mov         dword ptr [ebp-10],eax
 00779E0E    mov         eax,dword ptr [ebp-14]
 00779E11    push        eax
 00779E12    lea         edx,[ebp-24]
 00779E15    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 00779E18    mov         ecx,dword ptr [eax]
 00779E1A    call        dword ptr [ecx+0C]
 00779E1D    mov         eax,dword ptr [ebp-24]
 00779E20    push        eax
 00779E21    mov         ecx,dword ptr [ebp-18]
 00779E24    lea         edx,[ebp-18]
 00779E27    mov         eax,ebx
 00779E29    mov         edi,dword ptr [eax]
 00779E2B    call        dword ptr [edi+98];TCanvas.TextRect
 00779E31    mov         eax,dword ptr [ebp-4]
 00779E34    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779E3A    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779E40    mov         edx,4
 00779E45    call        THeaderSections.GetItem
 00779E4A    call        00536FB8
 00779E4F    add         eax,8
>00779E52    jno         00779E59
 00779E54    call        @IntOver
 00779E59    mov         dword ptr [ebp-18],eax
 00779E5C    mov         eax,dword ptr [ebp-4]
 00779E5F    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779E65    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779E6B    mov         edx,4
 00779E70    call        THeaderSections.GetItem
 00779E75    call        00536FEC
 00779E7A    sub         eax,2
>00779E7D    jno         00779E84
 00779E7F    call        @IntOver
 00779E84    mov         dword ptr [ebp-10],eax
 00779E87    mov         eax,dword ptr [ebp-14]
 00779E8A    push        eax
 00779E8B    lea         edx,[ebp-28]
 00779E8E    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 00779E91    mov         ecx,dword ptr [eax]
 00779E93    call        dword ptr [ecx+10]
 00779E96    mov         eax,dword ptr [ebp-28]
 00779E99    push        eax
 00779E9A    mov         ecx,dword ptr [ebp-18]
 00779E9D    lea         edx,[ebp-18]
 00779EA0    mov         eax,ebx
 00779EA2    mov         edi,dword ptr [eax]
 00779EA4    call        dword ptr [edi+98];TCanvas.TextRect
 00779EAA    mov         eax,dword ptr [ebp-4]
 00779EAD    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779EB3    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779EB9    mov         edx,5
 00779EBE    call        THeaderSections.GetItem
 00779EC3    call        00536FB8
 00779EC8    add         eax,8
>00779ECB    jno         00779ED2
 00779ECD    call        @IntOver
 00779ED2    mov         dword ptr [ebp-18],eax
 00779ED5    mov         eax,dword ptr [ebp-4]
 00779ED8    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779EDE    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779EE4    mov         edx,5
 00779EE9    call        THeaderSections.GetItem
 00779EEE    call        00536FEC
 00779EF3    sub         eax,2
>00779EF6    jno         00779EFD
 00779EF8    call        @IntOver
 00779EFD    mov         dword ptr [ebp-10],eax
 00779F00    mov         eax,dword ptr [ebp-14]
 00779F03    push        eax
 00779F04    lea         edx,[ebp-2C]
 00779F07    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 00779F0A    mov         ecx,dword ptr [eax]
 00779F0C    call        dword ptr [ecx+14]
 00779F0F    mov         eax,dword ptr [ebp-2C]
 00779F12    push        eax
 00779F13    mov         ecx,dword ptr [ebp-18]
 00779F16    lea         edx,[ebp-18]
 00779F19    mov         eax,ebx
 00779F1B    mov         edi,dword ptr [eax]
 00779F1D    call        dword ptr [edi+98];TCanvas.TextRect
 00779F23    mov         eax,dword ptr [ebp-4]
 00779F26    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779F2C    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779F32    mov         edx,6
 00779F37    call        THeaderSections.GetItem
 00779F3C    call        00536FB8
 00779F41    add         eax,8
>00779F44    jno         00779F4B
 00779F46    call        @IntOver
 00779F4B    mov         dword ptr [ebp-18],eax
 00779F4E    mov         eax,dword ptr [ebp-4]
 00779F51    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779F57    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779F5D    mov         edx,6
 00779F62    call        THeaderSections.GetItem
 00779F67    call        00536FEC
 00779F6C    sub         eax,2
>00779F6F    jno         00779F76
 00779F71    call        @IntOver
 00779F76    mov         dword ptr [ebp-10],eax
 00779F79    mov         eax,dword ptr [ebp-14]
 00779F7C    push        eax
 00779F7D    lea         edx,[ebp-30]
 00779F80    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 00779F83    mov         ecx,dword ptr [eax]
 00779F85    call        dword ptr [ecx+20]
 00779F88    mov         eax,dword ptr [ebp-30]
 00779F8B    push        eax
 00779F8C    mov         ecx,dword ptr [ebp-18]
 00779F8F    lea         edx,[ebp-18]
 00779F92    mov         eax,ebx
 00779F94    mov         edi,dword ptr [eax]
 00779F96    call        dword ptr [edi+98];TCanvas.TextRect
 00779F9C    mov         eax,dword ptr [ebp-4]
 00779F9F    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779FA5    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779FAB    mov         edx,7
 00779FB0    call        THeaderSections.GetItem
 00779FB5    call        00536FB8
 00779FBA    add         eax,8
>00779FBD    jno         00779FC4
 00779FBF    call        @IntOver
 00779FC4    mov         dword ptr [ebp-18],eax
 00779FC7    mov         eax,dword ptr [ebp-4]
 00779FCA    mov         eax,dword ptr [eax+400];TDCCauseEffectForm.HeaderB:THeaderControl
 00779FD0    mov         eax,dword ptr [eax+290];THeaderControl.FSections:THeaderSections
 00779FD6    mov         edx,7
 00779FDB    call        THeaderSections.GetItem
 00779FE0    call        00536FEC
 00779FE5    sub         eax,2
>00779FE8    jno         00779FEF
 00779FEA    call        @IntOver
 00779FEF    mov         dword ptr [ebp-10],eax
 00779FF2    mov         eax,dword ptr [ebp-14]
 00779FF5    push        eax
 00779FF6    lea         edx,[ebp-34]
 00779FF9    mov         eax,dword ptr [esi+0C];TTreeNode.FData:Pointer
 00779FFC    mov         ecx,dword ptr [eax]
 00779FFE    call        dword ptr [ecx+1C]
 0077A001    mov         eax,dword ptr [ebp-34]
 0077A004    push        eax
 0077A005    mov         ecx,dword ptr [ebp-18]
 0077A008    lea         edx,[ebp-18]
 0077A00B    mov         eax,ebx
 0077A00D    mov         ebx,dword ptr [eax]
 0077A00F    call        dword ptr [ebx+98];TCanvas.TextRect
 0077A015    xor         eax,eax
 0077A017    pop         edx
 0077A018    pop         ecx
 0077A019    pop         ecx
 0077A01A    mov         dword ptr fs:[eax],edx
 0077A01D    push        77A037
 0077A022    lea         eax,[ebp-34]
 0077A025    mov         edx,7
 0077A02A    call        @UStrArrayClr
 0077A02F    ret
>0077A030    jmp         @HandleFinally
>0077A035    jmp         0077A022
 0077A037    pop         edi
 0077A038    pop         esi
 0077A039    pop         ebx
 0077A03A    mov         esp,ebp
 0077A03C    pop         ebp
 0077A03D    ret         8
*}
end;

//0077A048
procedure TDCCauseEffectForm.UpdateOTree;
begin
{*
 0077A048    push        ebp
 0077A049    mov         ebp,esp
 0077A04B    mov         ecx,16
 0077A050    push        0
 0077A052    push        0
 0077A054    dec         ecx
>0077A055    jne         0077A050
 0077A057    push        ebx
 0077A058    push        esi
 0077A059    push        edi
 0077A05A    mov         dword ptr [ebp-4],eax
 0077A05D    xor         eax,eax
 0077A05F    push        ebp
 0077A060    push        77AA28
 0077A065    push        dword ptr fs:[eax]
 0077A068    mov         dword ptr fs:[eax],esp
 0077A06B    mov         eax,dword ptr [ebp-4]
 0077A06E    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A074    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A07A    call        TTreeNodes.BeginUpdate
 0077A07F    xor         eax,eax
 0077A081    push        ebp
 0077A082    push        77A9FB
 0077A087    push        dword ptr fs:[eax]
 0077A08A    mov         dword ptr fs:[eax],esp
 0077A08D    mov         eax,dword ptr [ebp-4]
 0077A090    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A096    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A09C    call        TTreeNodes.Clear
 0077A0A1    mov         eax,dword ptr [ebp-4]
 0077A0A4    movzx       eax,byte ptr [eax+440];TDCCauseEffectForm.SearchCriteria:TSearchCriteria
 0077A0AB    sub         al,1
>0077A0AD    jb          0077A0BC
 0077A0AF    dec         al
>0077A0B1    je          0077A902
>0077A0B7    jmp         0077A9BF
 0077A0BC    push        0
 0077A0BE    mov         eax,dword ptr [ebp-4]
 0077A0C1    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A0C7    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A0CD    mov         ecx,dword ptr ds:[7C4018];^'Immediate or delayed by CtrlA, CtrlB or CtrlB2'
 0077A0D3    xor         edx,edx
 0077A0D5    call        TTreeNodes.AddChildObject
 0077A0DA    mov         edi,eax
 0077A0DC    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A0E1    mov         eax,dword ptr [eax]
 0077A0E3    mov         eax,dword ptr [eax+0C]
 0077A0E6    mov         eax,dword ptr [eax+0C]
 0077A0E9    mov         esi,dword ptr [eax+8]
 0077A0EC    sub         esi,1
>0077A0EF    jno         0077A0F6
 0077A0F1    call        @IntOver
 0077A0F6    test        esi,esi
>0077A0F8    jl          0077A179
 0077A0FA    inc         esi
 0077A0FB    xor         ebx,ebx
 0077A0FD    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A102    mov         eax,dword ptr [eax]
 0077A104    mov         eax,dword ptr [eax+0C]
 0077A107    mov         eax,dword ptr [eax+0C]
 0077A10A    mov         dword ptr [ebp-8],eax
 0077A10D    mov         eax,dword ptr [ebp-8]
 0077A110    add         eax,8
 0077A113    mov         edx,ebx
 0077A115    call        00434534
 0077A11A    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A11F    mov         eax,dword ptr [eax]
 0077A121    mov         eax,dword ptr [eax+0C]
 0077A124    mov         eax,dword ptr [eax+0C]
 0077A127    mov         dword ptr [ebp-0C],eax
 0077A12A    mov         eax,dword ptr [ebp-0C]
 0077A12D    add         eax,8
 0077A130    mov         edx,ebx
 0077A132    call        00434534
 0077A137    mov         eax,dword ptr [ebp-0C]
 0077A13A    mov         eax,dword ptr [eax+20]
 0077A13D    mov         eax,dword ptr [eax+ebx*4]
 0077A140    push        eax
 0077A141    mov         eax,dword ptr [ebp-8]
 0077A144    mov         eax,dword ptr [eax+20]
 0077A147    mov         eax,dword ptr [eax+ebx*4]
 0077A14A    mov         edx,dword ptr [eax]
 0077A14C    call        dword ptr [edx]
 0077A14E    cmp         eax,1
>0077A151    jbe         0077A158
 0077A153    call        @BoundErr
 0077A158    mov         ecx,dword ptr [eax*4+7C4048];^'Panel output'
 0077A15F    mov         eax,dword ptr [ebp-4]
 0077A162    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A168    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A16E    mov         edx,edi
 0077A170    call        TTreeNodes.AddChildObject
 0077A175    inc         ebx
 0077A176    dec         esi
>0077A177    jne         0077A0FD
 0077A179    push        0
 0077A17B    lea         eax,[ebp-50]
 0077A17E    push        eax
 0077A17F    lea         edx,[ebp-64]
 0077A182    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A187    mov         eax,dword ptr [eax]
 0077A189    mov         eax,dword ptr [eax+14]
 0077A18C    call        007717D0
 0077A191    mov         eax,dword ptr [ebp-64]
 0077A194    mov         dword ptr [ebp-60],eax
 0077A197    mov         byte ptr [ebp-5C],11
 0077A19B    lea         edx,[ebp-68]
 0077A19E    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A1A3    mov         eax,dword ptr [eax]
 0077A1A5    mov         eax,dword ptr [eax+14]
 0077A1A8    call        0077178C
 0077A1AD    mov         eax,dword ptr [ebp-68]
 0077A1B0    mov         dword ptr [ebp-58],eax
 0077A1B3    mov         byte ptr [ebp-54],11
 0077A1B7    lea         edx,[ebp-60]
 0077A1BA    mov         ecx,1
 0077A1BF    mov         eax,[007C4024];^'Delayed (%s) CtrlC1 (%s)'
 0077A1C4    call        Format
 0077A1C9    mov         ecx,dword ptr [ebp-50]
 0077A1CC    mov         eax,dword ptr [ebp-4]
 0077A1CF    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A1D5    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A1DB    xor         edx,edx
 0077A1DD    call        TTreeNodes.AddChildObject
 0077A1E2    mov         edi,eax
 0077A1E4    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A1E9    mov         eax,dword ptr [eax]
 0077A1EB    mov         eax,dword ptr [eax+14]
 0077A1EE    mov         eax,dword ptr [eax+0C]
 0077A1F1    mov         esi,dword ptr [eax+8]
 0077A1F4    sub         esi,1
>0077A1F7    jno         0077A1FE
 0077A1F9    call        @IntOver
 0077A1FE    test        esi,esi
>0077A200    jl          0077A281
 0077A202    inc         esi
 0077A203    xor         ebx,ebx
 0077A205    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A20A    mov         eax,dword ptr [eax]
 0077A20C    mov         eax,dword ptr [eax+14]
 0077A20F    mov         eax,dword ptr [eax+0C]
 0077A212    mov         dword ptr [ebp-10],eax
 0077A215    mov         eax,dword ptr [ebp-10]
 0077A218    add         eax,8
 0077A21B    mov         edx,ebx
 0077A21D    call        00434534
 0077A222    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A227    mov         eax,dword ptr [eax]
 0077A229    mov         eax,dword ptr [eax+14]
 0077A22C    mov         eax,dword ptr [eax+0C]
 0077A22F    mov         dword ptr [ebp-14],eax
 0077A232    mov         eax,dword ptr [ebp-14]
 0077A235    add         eax,8
 0077A238    mov         edx,ebx
 0077A23A    call        00434534
 0077A23F    mov         eax,dword ptr [ebp-14]
 0077A242    mov         eax,dword ptr [eax+20]
 0077A245    mov         eax,dword ptr [eax+ebx*4]
 0077A248    push        eax
 0077A249    mov         eax,dword ptr [ebp-10]
 0077A24C    mov         eax,dword ptr [eax+20]
 0077A24F    mov         eax,dword ptr [eax+ebx*4]
 0077A252    mov         edx,dword ptr [eax]
 0077A254    call        dword ptr [edx]
 0077A256    cmp         eax,1
>0077A259    jbe         0077A260
 0077A25B    call        @BoundErr
 0077A260    mov         ecx,dword ptr [eax*4+7C4048];^'Panel output'
 0077A267    mov         eax,dword ptr [ebp-4]
 0077A26A    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A270    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A276    mov         edx,edi
 0077A278    call        TTreeNodes.AddChildObject
 0077A27D    inc         ebx
 0077A27E    dec         esi
>0077A27F    jne         0077A205
 0077A281    push        0
 0077A283    lea         eax,[ebp-6C]
 0077A286    push        eax
 0077A287    lea         edx,[ebp-70]
 0077A28A    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A28F    mov         eax,dword ptr [eax]
 0077A291    mov         eax,dword ptr [eax+18]
 0077A294    call        007717D0
 0077A299    mov         eax,dword ptr [ebp-70]
 0077A29C    mov         dword ptr [ebp-60],eax
 0077A29F    mov         byte ptr [ebp-5C],11
 0077A2A3    lea         edx,[ebp-74]
 0077A2A6    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A2AB    mov         eax,dword ptr [eax]
 0077A2AD    mov         eax,dword ptr [eax+18]
 0077A2B0    call        0077178C
 0077A2B5    mov         eax,dword ptr [ebp-74]
 0077A2B8    mov         dword ptr [ebp-58],eax
 0077A2BB    mov         byte ptr [ebp-54],11
 0077A2BF    lea         edx,[ebp-60]
 0077A2C2    mov         ecx,1
 0077A2C7    mov         eax,[007C4028];^'Delayed (%s) CtrlC2 (%s)'
 0077A2CC    call        Format
 0077A2D1    mov         ecx,dword ptr [ebp-6C]
 0077A2D4    mov         eax,dword ptr [ebp-4]
 0077A2D7    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A2DD    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A2E3    xor         edx,edx
 0077A2E5    call        TTreeNodes.AddChildObject
 0077A2EA    mov         edi,eax
 0077A2EC    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A2F1    mov         eax,dword ptr [eax]
 0077A2F3    mov         eax,dword ptr [eax+18]
 0077A2F6    mov         eax,dword ptr [eax+0C]
 0077A2F9    mov         esi,dword ptr [eax+8]
 0077A2FC    sub         esi,1
>0077A2FF    jno         0077A306
 0077A301    call        @IntOver
 0077A306    test        esi,esi
>0077A308    jl          0077A389
 0077A30A    inc         esi
 0077A30B    xor         ebx,ebx
 0077A30D    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A312    mov         eax,dword ptr [eax]
 0077A314    mov         eax,dword ptr [eax+18]
 0077A317    mov         eax,dword ptr [eax+0C]
 0077A31A    mov         dword ptr [ebp-18],eax
 0077A31D    mov         eax,dword ptr [ebp-18]
 0077A320    add         eax,8
 0077A323    mov         edx,ebx
 0077A325    call        00434534
 0077A32A    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A32F    mov         eax,dword ptr [eax]
 0077A331    mov         eax,dword ptr [eax+18]
 0077A334    mov         eax,dword ptr [eax+0C]
 0077A337    mov         dword ptr [ebp-1C],eax
 0077A33A    mov         eax,dword ptr [ebp-1C]
 0077A33D    add         eax,8
 0077A340    mov         edx,ebx
 0077A342    call        00434534
 0077A347    mov         eax,dword ptr [ebp-1C]
 0077A34A    mov         eax,dword ptr [eax+20]
 0077A34D    mov         eax,dword ptr [eax+ebx*4]
 0077A350    push        eax
 0077A351    mov         eax,dword ptr [ebp-18]
 0077A354    mov         eax,dword ptr [eax+20]
 0077A357    mov         eax,dword ptr [eax+ebx*4]
 0077A35A    mov         edx,dword ptr [eax]
 0077A35C    call        dword ptr [edx]
 0077A35E    cmp         eax,1
>0077A361    jbe         0077A368
 0077A363    call        @BoundErr
 0077A368    mov         ecx,dword ptr [eax*4+7C4048];^'Panel output'
 0077A36F    mov         eax,dword ptr [ebp-4]
 0077A372    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A378    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A37E    mov         edx,edi
 0077A380    call        TTreeNodes.AddChildObject
 0077A385    inc         ebx
 0077A386    dec         esi
>0077A387    jne         0077A30D
 0077A389    push        0
 0077A38B    lea         eax,[ebp-78]
 0077A38E    push        eax
 0077A38F    lea         edx,[ebp-7C]
 0077A392    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A397    mov         eax,dword ptr [eax]
 0077A399    mov         eax,dword ptr [eax+1C]
 0077A39C    call        007717D0
 0077A3A1    mov         eax,dword ptr [ebp-7C]
 0077A3A4    mov         dword ptr [ebp-60],eax
 0077A3A7    mov         byte ptr [ebp-5C],11
 0077A3AB    lea         edx,[ebp-80]
 0077A3AE    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A3B3    mov         eax,dword ptr [eax]
 0077A3B5    mov         eax,dword ptr [eax+1C]
 0077A3B8    call        0077178C
 0077A3BD    mov         eax,dword ptr [ebp-80]
 0077A3C0    mov         dword ptr [ebp-58],eax
 0077A3C3    mov         byte ptr [ebp-54],11
 0077A3C7    lea         edx,[ebp-60]
 0077A3CA    mov         ecx,1
 0077A3CF    mov         eax,[007C402C];^'Delayed (%s) CtrlC3 (%s)'
 0077A3D4    call        Format
 0077A3D9    mov         ecx,dword ptr [ebp-78]
 0077A3DC    mov         eax,dword ptr [ebp-4]
 0077A3DF    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A3E5    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A3EB    xor         edx,edx
 0077A3ED    call        TTreeNodes.AddChildObject
 0077A3F2    mov         edi,eax
 0077A3F4    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A3F9    mov         eax,dword ptr [eax]
 0077A3FB    mov         eax,dword ptr [eax+1C]
 0077A3FE    mov         eax,dword ptr [eax+0C]
 0077A401    mov         esi,dword ptr [eax+8]
 0077A404    sub         esi,1
>0077A407    jno         0077A40E
 0077A409    call        @IntOver
 0077A40E    test        esi,esi
>0077A410    jl          0077A491
 0077A412    inc         esi
 0077A413    xor         ebx,ebx
 0077A415    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A41A    mov         eax,dword ptr [eax]
 0077A41C    mov         eax,dword ptr [eax+1C]
 0077A41F    mov         eax,dword ptr [eax+0C]
 0077A422    mov         dword ptr [ebp-20],eax
 0077A425    mov         eax,dword ptr [ebp-20]
 0077A428    add         eax,8
 0077A42B    mov         edx,ebx
 0077A42D    call        00434534
 0077A432    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A437    mov         eax,dword ptr [eax]
 0077A439    mov         eax,dword ptr [eax+1C]
 0077A43C    mov         eax,dword ptr [eax+0C]
 0077A43F    mov         dword ptr [ebp-24],eax
 0077A442    mov         eax,dword ptr [ebp-24]
 0077A445    add         eax,8
 0077A448    mov         edx,ebx
 0077A44A    call        00434534
 0077A44F    mov         eax,dword ptr [ebp-24]
 0077A452    mov         eax,dword ptr [eax+20]
 0077A455    mov         eax,dword ptr [eax+ebx*4]
 0077A458    push        eax
 0077A459    mov         eax,dword ptr [ebp-20]
 0077A45C    mov         eax,dword ptr [eax+20]
 0077A45F    mov         eax,dword ptr [eax+ebx*4]
 0077A462    mov         edx,dword ptr [eax]
 0077A464    call        dword ptr [edx]
 0077A466    cmp         eax,1
>0077A469    jbe         0077A470
 0077A46B    call        @BoundErr
 0077A470    mov         ecx,dword ptr [eax*4+7C4048];^'Panel output'
 0077A477    mov         eax,dword ptr [ebp-4]
 0077A47A    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A480    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A486    mov         edx,edi
 0077A488    call        TTreeNodes.AddChildObject
 0077A48D    inc         ebx
 0077A48E    dec         esi
>0077A48F    jne         0077A415
 0077A491    push        0
 0077A493    lea         eax,[ebp-84]
 0077A499    push        eax
 0077A49A    lea         edx,[ebp-88]
 0077A4A0    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A4A5    mov         eax,dword ptr [eax]
 0077A4A7    mov         eax,dword ptr [eax+20]
 0077A4AA    call        007717D0
 0077A4AF    mov         eax,dword ptr [ebp-88]
 0077A4B5    mov         dword ptr [ebp-60],eax
 0077A4B8    mov         byte ptr [ebp-5C],11
 0077A4BC    lea         edx,[ebp-8C]
 0077A4C2    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A4C7    mov         eax,dword ptr [eax]
 0077A4C9    mov         eax,dword ptr [eax+20]
 0077A4CC    call        0077178C
 0077A4D1    mov         eax,dword ptr [ebp-8C]
 0077A4D7    mov         dword ptr [ebp-58],eax
 0077A4DA    mov         byte ptr [ebp-54],11
 0077A4DE    lea         edx,[ebp-60]
 0077A4E1    mov         ecx,1
 0077A4E6    mov         eax,[007C4030];^'Delayed (%s) CtrlC4 (%s)'
 0077A4EB    call        Format
 0077A4F0    mov         ecx,dword ptr [ebp-84]
 0077A4F6    mov         eax,dword ptr [ebp-4]
 0077A4F9    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A4FF    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A505    xor         edx,edx
 0077A507    call        TTreeNodes.AddChildObject
 0077A50C    mov         edi,eax
 0077A50E    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A513    mov         eax,dword ptr [eax]
 0077A515    mov         eax,dword ptr [eax+20]
 0077A518    mov         eax,dword ptr [eax+0C]
 0077A51B    mov         esi,dword ptr [eax+8]
 0077A51E    sub         esi,1
>0077A521    jno         0077A528
 0077A523    call        @IntOver
 0077A528    test        esi,esi
>0077A52A    jl          0077A5AB
 0077A52C    inc         esi
 0077A52D    xor         ebx,ebx
 0077A52F    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A534    mov         eax,dword ptr [eax]
 0077A536    mov         eax,dword ptr [eax+20]
 0077A539    mov         eax,dword ptr [eax+0C]
 0077A53C    mov         dword ptr [ebp-28],eax
 0077A53F    mov         eax,dword ptr [ebp-28]
 0077A542    add         eax,8
 0077A545    mov         edx,ebx
 0077A547    call        00434534
 0077A54C    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A551    mov         eax,dword ptr [eax]
 0077A553    mov         eax,dword ptr [eax+20]
 0077A556    mov         eax,dword ptr [eax+0C]
 0077A559    mov         dword ptr [ebp-2C],eax
 0077A55C    mov         eax,dword ptr [ebp-2C]
 0077A55F    add         eax,8
 0077A562    mov         edx,ebx
 0077A564    call        00434534
 0077A569    mov         eax,dword ptr [ebp-2C]
 0077A56C    mov         eax,dword ptr [eax+20]
 0077A56F    mov         eax,dword ptr [eax+ebx*4]
 0077A572    push        eax
 0077A573    mov         eax,dword ptr [ebp-28]
 0077A576    mov         eax,dword ptr [eax+20]
 0077A579    mov         eax,dword ptr [eax+ebx*4]
 0077A57C    mov         edx,dword ptr [eax]
 0077A57E    call        dword ptr [edx]
 0077A580    cmp         eax,1
>0077A583    jbe         0077A58A
 0077A585    call        @BoundErr
 0077A58A    mov         ecx,dword ptr [eax*4+7C4048];^'Panel output'
 0077A591    mov         eax,dword ptr [ebp-4]
 0077A594    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A59A    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A5A0    mov         edx,edi
 0077A5A2    call        TTreeNodes.AddChildObject
 0077A5A7    inc         ebx
 0077A5A8    dec         esi
>0077A5A9    jne         0077A52F
 0077A5AB    push        0
 0077A5AD    lea         eax,[ebp-90]
 0077A5B3    push        eax
 0077A5B4    lea         edx,[ebp-94]
 0077A5BA    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A5BF    mov         eax,dword ptr [eax]
 0077A5C1    mov         eax,dword ptr [eax+24]
 0077A5C4    call        007717D0
 0077A5C9    mov         eax,dword ptr [ebp-94]
 0077A5CF    mov         dword ptr [ebp-60],eax
 0077A5D2    mov         byte ptr [ebp-5C],11
 0077A5D6    lea         edx,[ebp-98]
 0077A5DC    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A5E1    mov         eax,dword ptr [eax]
 0077A5E3    mov         eax,dword ptr [eax+24]
 0077A5E6    call        0077178C
 0077A5EB    mov         eax,dword ptr [ebp-98]
 0077A5F1    mov         dword ptr [ebp-58],eax
 0077A5F4    mov         byte ptr [ebp-54],11
 0077A5F8    lea         edx,[ebp-60]
 0077A5FB    mov         ecx,1
 0077A600    mov         eax,[007C4034];^'Delayed (%s) CtrlC5 (%s)'
 0077A605    call        Format
 0077A60A    mov         ecx,dword ptr [ebp-90]
 0077A610    mov         eax,dword ptr [ebp-4]
 0077A613    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A619    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A61F    xor         edx,edx
 0077A621    call        TTreeNodes.AddChildObject
 0077A626    mov         edi,eax
 0077A628    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A62D    mov         eax,dword ptr [eax]
 0077A62F    mov         eax,dword ptr [eax+24]
 0077A632    mov         eax,dword ptr [eax+0C]
 0077A635    mov         esi,dword ptr [eax+8]
 0077A638    sub         esi,1
>0077A63B    jno         0077A642
 0077A63D    call        @IntOver
 0077A642    test        esi,esi
>0077A644    jl          0077A6C5
 0077A646    inc         esi
 0077A647    xor         ebx,ebx
 0077A649    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A64E    mov         eax,dword ptr [eax]
 0077A650    mov         eax,dword ptr [eax+24]
 0077A653    mov         eax,dword ptr [eax+0C]
 0077A656    mov         dword ptr [ebp-30],eax
 0077A659    mov         eax,dword ptr [ebp-30]
 0077A65C    add         eax,8
 0077A65F    mov         edx,ebx
 0077A661    call        00434534
 0077A666    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A66B    mov         eax,dword ptr [eax]
 0077A66D    mov         eax,dword ptr [eax+24]
 0077A670    mov         eax,dword ptr [eax+0C]
 0077A673    mov         dword ptr [ebp-34],eax
 0077A676    mov         eax,dword ptr [ebp-34]
 0077A679    add         eax,8
 0077A67C    mov         edx,ebx
 0077A67E    call        00434534
 0077A683    mov         eax,dword ptr [ebp-34]
 0077A686    mov         eax,dword ptr [eax+20]
 0077A689    mov         eax,dword ptr [eax+ebx*4]
 0077A68C    push        eax
 0077A68D    mov         eax,dword ptr [ebp-30]
 0077A690    mov         eax,dword ptr [eax+20]
 0077A693    mov         eax,dword ptr [eax+ebx*4]
 0077A696    mov         edx,dword ptr [eax]
 0077A698    call        dword ptr [edx]
 0077A69A    cmp         eax,1
>0077A69D    jbe         0077A6A4
 0077A69F    call        @BoundErr
 0077A6A4    mov         ecx,dword ptr [eax*4+7C4048];^'Panel output'
 0077A6AB    mov         eax,dword ptr [ebp-4]
 0077A6AE    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A6B4    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A6BA    mov         edx,edi
 0077A6BC    call        TTreeNodes.AddChildObject
 0077A6C1    inc         ebx
 0077A6C2    dec         esi
>0077A6C3    jne         0077A649
 0077A6C5    push        0
 0077A6C7    lea         eax,[ebp-9C]
 0077A6CD    push        eax
 0077A6CE    lea         edx,[ebp-0A0]
 0077A6D4    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A6D9    mov         eax,dword ptr [eax]
 0077A6DB    mov         eax,dword ptr [eax+28]
 0077A6DE    call        007717D0
 0077A6E3    mov         eax,dword ptr [ebp-0A0]
 0077A6E9    mov         dword ptr [ebp-60],eax
 0077A6EC    mov         byte ptr [ebp-5C],11
 0077A6F0    lea         edx,[ebp-0A4]
 0077A6F6    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A6FB    mov         eax,dword ptr [eax]
 0077A6FD    mov         eax,dword ptr [eax+28]
 0077A700    call        0077178C
 0077A705    mov         eax,dword ptr [ebp-0A4]
 0077A70B    mov         dword ptr [ebp-58],eax
 0077A70E    mov         byte ptr [ebp-54],11
 0077A712    lea         edx,[ebp-60]
 0077A715    mov         ecx,1
 0077A71A    mov         eax,[007C4038];^'Delayed (%s) CtrlC6 (%s)'
 0077A71F    call        Format
 0077A724    mov         ecx,dword ptr [ebp-9C]
 0077A72A    mov         eax,dword ptr [ebp-4]
 0077A72D    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A733    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A739    xor         edx,edx
 0077A73B    call        TTreeNodes.AddChildObject
 0077A740    mov         edi,eax
 0077A742    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A747    mov         eax,dword ptr [eax]
 0077A749    mov         eax,dword ptr [eax+28]
 0077A74C    mov         eax,dword ptr [eax+0C]
 0077A74F    mov         esi,dword ptr [eax+8]
 0077A752    sub         esi,1
>0077A755    jno         0077A75C
 0077A757    call        @IntOver
 0077A75C    test        esi,esi
>0077A75E    jl          0077A7DF
 0077A760    inc         esi
 0077A761    xor         ebx,ebx
 0077A763    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A768    mov         eax,dword ptr [eax]
 0077A76A    mov         eax,dword ptr [eax+28]
 0077A76D    mov         eax,dword ptr [eax+0C]
 0077A770    mov         dword ptr [ebp-38],eax
 0077A773    mov         eax,dword ptr [ebp-38]
 0077A776    add         eax,8
 0077A779    mov         edx,ebx
 0077A77B    call        00434534
 0077A780    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A785    mov         eax,dword ptr [eax]
 0077A787    mov         eax,dword ptr [eax+28]
 0077A78A    mov         eax,dword ptr [eax+0C]
 0077A78D    mov         dword ptr [ebp-3C],eax
 0077A790    mov         eax,dword ptr [ebp-3C]
 0077A793    add         eax,8
 0077A796    mov         edx,ebx
 0077A798    call        00434534
 0077A79D    mov         eax,dword ptr [ebp-3C]
 0077A7A0    mov         eax,dword ptr [eax+20]
 0077A7A3    mov         eax,dword ptr [eax+ebx*4]
 0077A7A6    push        eax
 0077A7A7    mov         eax,dword ptr [ebp-38]
 0077A7AA    mov         eax,dword ptr [eax+20]
 0077A7AD    mov         eax,dword ptr [eax+ebx*4]
 0077A7B0    mov         edx,dword ptr [eax]
 0077A7B2    call        dword ptr [edx]
 0077A7B4    cmp         eax,1
>0077A7B7    jbe         0077A7BE
 0077A7B9    call        @BoundErr
 0077A7BE    mov         ecx,dword ptr [eax*4+7C4048];^'Panel output'
 0077A7C5    mov         eax,dword ptr [ebp-4]
 0077A7C8    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A7CE    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A7D4    mov         edx,edi
 0077A7D6    call        TTreeNodes.AddChildObject
 0077A7DB    inc         ebx
 0077A7DC    dec         esi
>0077A7DD    jne         0077A763
 0077A7DF    push        0
 0077A7E1    lea         eax,[ebp-0A8]
 0077A7E7    push        eax
 0077A7E8    lea         edx,[ebp-0AC]
 0077A7EE    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A7F3    mov         eax,dword ptr [eax]
 0077A7F5    mov         eax,dword ptr [eax+2C]
 0077A7F8    call        007717D0
 0077A7FD    mov         eax,dword ptr [ebp-0AC]
 0077A803    mov         dword ptr [ebp-60],eax
 0077A806    mov         byte ptr [ebp-5C],11
 0077A80A    lea         edx,[ebp-0B0]
 0077A810    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A815    mov         eax,dword ptr [eax]
 0077A817    mov         eax,dword ptr [eax+2C]
 0077A81A    call        0077178C
 0077A81F    mov         eax,dword ptr [ebp-0B0]
 0077A825    mov         dword ptr [ebp-58],eax
 0077A828    mov         byte ptr [ebp-54],11
 0077A82C    lea         edx,[ebp-60]
 0077A82F    mov         ecx,1
 0077A834    mov         eax,[007C403C];^'Delayed (%s) CtrlC7 (%s)'
 0077A839    call        Format
 0077A83E    mov         ecx,dword ptr [ebp-0A8]
 0077A844    mov         eax,dword ptr [ebp-4]
 0077A847    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A84D    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A853    xor         edx,edx
 0077A855    call        TTreeNodes.AddChildObject
 0077A85A    mov         edi,eax
 0077A85C    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A861    mov         eax,dword ptr [eax]
 0077A863    mov         eax,dword ptr [eax+2C]
 0077A866    mov         eax,dword ptr [eax+0C]
 0077A869    mov         esi,dword ptr [eax+8]
 0077A86C    sub         esi,1
>0077A86F    jno         0077A876
 0077A871    call        @IntOver
 0077A876    test        esi,esi
>0077A878    jl          0077A9BF
 0077A87E    inc         esi
 0077A87F    xor         ebx,ebx
 0077A881    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A886    mov         eax,dword ptr [eax]
 0077A888    mov         eax,dword ptr [eax+2C]
 0077A88B    mov         eax,dword ptr [eax+0C]
 0077A88E    mov         dword ptr [ebp-40],eax
 0077A891    mov         eax,dword ptr [ebp-40]
 0077A894    add         eax,8
 0077A897    mov         edx,ebx
 0077A899    call        00434534
 0077A89E    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A8A3    mov         eax,dword ptr [eax]
 0077A8A5    mov         eax,dword ptr [eax+2C]
 0077A8A8    mov         eax,dword ptr [eax+0C]
 0077A8AB    mov         dword ptr [ebp-44],eax
 0077A8AE    mov         eax,dword ptr [ebp-44]
 0077A8B1    add         eax,8
 0077A8B4    mov         edx,ebx
 0077A8B6    call        00434534
 0077A8BB    mov         eax,dword ptr [ebp-44]
 0077A8BE    mov         eax,dword ptr [eax+20]
 0077A8C1    mov         eax,dword ptr [eax+ebx*4]
 0077A8C4    push        eax
 0077A8C5    mov         eax,dword ptr [ebp-40]
 0077A8C8    mov         eax,dword ptr [eax+20]
 0077A8CB    mov         eax,dword ptr [eax+ebx*4]
 0077A8CE    mov         edx,dword ptr [eax]
 0077A8D0    call        dword ptr [edx]
 0077A8D2    cmp         eax,1
>0077A8D5    jbe         0077A8DC
 0077A8D7    call        @BoundErr
 0077A8DC    mov         ecx,dword ptr [eax*4+7C4048];^'Panel output'
 0077A8E3    mov         eax,dword ptr [ebp-4]
 0077A8E6    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A8EC    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A8F2    mov         edx,edi
 0077A8F4    call        TTreeNodes.AddChildObject
 0077A8F9    inc         ebx
 0077A8FA    dec         esi
>0077A8FB    jne         0077A881
>0077A8FD    jmp         0077A9BF
 0077A902    push        0
 0077A904    mov         eax,dword ptr [ebp-4]
 0077A907    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A90D    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A913    mov         ecx,dword ptr ds:[7C4058];^'Outputs by Control Group'
 0077A919    xor         edx,edx
 0077A91B    call        TTreeNodes.AddChildObject
 0077A920    mov         edi,eax
 0077A922    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A927    mov         eax,dword ptr [eax]
 0077A929    mov         eax,dword ptr [eax+8]
 0077A92C    mov         eax,dword ptr [eax+0C]
 0077A92F    mov         esi,dword ptr [eax+8]
 0077A932    sub         esi,1
>0077A935    jno         0077A93C
 0077A937    call        @IntOver
 0077A93C    test        esi,esi
>0077A93E    jl          0077A9BF
 0077A940    inc         esi
 0077A941    xor         ebx,ebx
 0077A943    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A948    mov         eax,dword ptr [eax]
 0077A94A    mov         eax,dword ptr [eax+8]
 0077A94D    mov         eax,dword ptr [eax+0C]
 0077A950    mov         dword ptr [ebp-48],eax
 0077A953    mov         eax,dword ptr [ebp-48]
 0077A956    add         eax,8
 0077A959    mov         edx,ebx
 0077A95B    call        00434534
 0077A960    mov         eax,[007C495C];^gvar_00903794:TDCCtrlObjects
 0077A965    mov         eax,dword ptr [eax]
 0077A967    mov         eax,dword ptr [eax+8]
 0077A96A    mov         eax,dword ptr [eax+0C]
 0077A96D    mov         dword ptr [ebp-4C],eax
 0077A970    mov         eax,dword ptr [ebp-4C]
 0077A973    add         eax,8
 0077A976    mov         edx,ebx
 0077A978    call        00434534
 0077A97D    mov         eax,dword ptr [ebp-4C]
 0077A980    mov         eax,dword ptr [eax+20]
 0077A983    mov         eax,dword ptr [eax+ebx*4]
 0077A986    push        eax
 0077A987    mov         eax,dword ptr [ebp-48]
 0077A98A    mov         eax,dword ptr [eax+20]
 0077A98D    mov         eax,dword ptr [eax+ebx*4]
 0077A990    mov         edx,dword ptr [eax]
 0077A992    call        dword ptr [edx]
 0077A994    cmp         eax,1
>0077A997    jbe         0077A99E
 0077A999    call        @BoundErr
 0077A99E    mov         ecx,dword ptr [eax*4+7C4048];^'Panel output'
 0077A9A5    mov         eax,dword ptr [ebp-4]
 0077A9A8    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A9AE    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A9B4    mov         edx,edi
 0077A9B6    call        TTreeNodes.AddChildObject
 0077A9BB    inc         ebx
 0077A9BC    dec         esi
>0077A9BD    jne         0077A943
 0077A9BF    xor         eax,eax
 0077A9C1    pop         edx
 0077A9C2    pop         ecx
 0077A9C3    pop         ecx
 0077A9C4    mov         dword ptr fs:[eax],edx
 0077A9C7    push        77AA02
 0077A9CC    mov         eax,dword ptr [ebp-4]
 0077A9CF    cmp         byte ptr [eax+443],0;TDCCauseEffectForm.TreeBExpanded:Boolean
>0077A9D6    je          0077A9E6
 0077A9D8    mov         eax,dword ptr [ebp-4]
 0077A9DB    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A9E1    call        TCustomTreeView.FullExpand
 0077A9E6    mov         eax,dword ptr [ebp-4]
 0077A9E9    mov         eax,dword ptr [eax+404];TDCCauseEffectForm.TreeB:TTreeView
 0077A9EF    mov         eax,dword ptr [eax+2F8];TTreeView.FTreeNodes:TTreeNodes
 0077A9F5    call        TTreeNodes.EndUpdate
 0077A9FA    ret
>0077A9FB    jmp         @HandleFinally
>0077AA00    jmp         0077A9CC
 0077AA02    xor         eax,eax
 0077AA04    pop         edx
 0077AA05    pop         ecx
 0077AA06    pop         ecx
 0077AA07    mov         dword ptr fs:[eax],edx
 0077AA0A    push        77AA2F
 0077AA0F    lea         eax,[ebp-0B0]
 0077AA15    mov         edx,14
 0077AA1A    call        @UStrArrayClr
 0077AA1F    lea         eax,[ebp-50]
 0077AA22    call        @UStrClr
 0077AA27    ret
>0077AA28    jmp         @HandleFinally
>0077AA2D    jmp         0077AA0F
 0077AA2F    pop         edi
 0077AA30    pop         esi
 0077AA31    pop         ebx
 0077AA32    mov         esp,ebp
 0077AA34    pop         ebp
 0077AA35    ret
*}
end;

Initialization
Finalization
//0077AA38
{*
 0077AA38    push        ebp
 0077AA39    mov         ebp,esp
 0077AA3B    xor         eax,eax
 0077AA3D    push        ebp
 0077AA3E    push        77ABCF
 0077AA43    push        dword ptr fs:[eax]
 0077AA46    mov         dword ptr fs:[eax],esp
 0077AA49    inc         dword ptr ds:[9037A4]
>0077AA4F    jne         0077ABC1
 0077AA55    mov         eax,7C3FA0;^'Control Activations'
 0077AA5A    call        @UStrClr
 0077AA5F    mov         eax,7C3FA4;^'Control outputs activated by input %s.%s.%s'
 0077AA64    call        @UStrClr
 0077AA69    mov         eax,7C3FA8;^'Last Local Control Group of input panel is: %.3d'
 0077AA6E    call        @UStrClr
 0077AA73    mov         eax,7C3FAC;^'Outputs controlled by given input'
 0077AA78    mov         ecx,3
 0077AA7D    mov         edx,dword ptr ds:[4012B8];string
 0077AA83    call        @FinalizeArray
 0077AA88    mov         eax,7C3FB8;^'Panel'
 0077AA8D    call        @UStrClr
 0077AA92    mov         eax,7C3FBC;^'Loop or Unit'
 0077AA97    call        @UStrClr
 0077AA9C    mov         eax,7C3FC0;^'Address or Line'
 0077AAA1    call        @UStrClr
 0077AAA6    mov         eax,7C3FC4;^'Control group'
 0077AAAB    call        @UStrClr
 0077AAB0    mov         eax,7C3FC8;^'Input group'
 0077AAB5    call        @UStrClr
 0077AABA    mov         eax,7C3FCC;^'Output group'
 0077AABF    call        @UStrClr
 0077AAC4    mov         eax,7C3FD0;^'Search'
 0077AAC9    call        @UStrClr
 0077AACE    mov         eax,7C3FD4;^'Control inputs'
 0077AAD3    call        @UStrClr
 0077AAD8    mov         eax,7C3FD8;^'Control outputs'
 0077AADD    call        @UStrClr
 0077AAE2    mov         eax,7C3FDC;^'Input kind'
 0077AAE7    mov         ecx,6
 0077AAEC    mov         edx,dword ptr ds:[4012B8];string
 0077AAF2    call        @FinalizeArray
 0077AAF7    mov         eax,7C3FF4;^'Timing sequence'
 0077AAFC    mov         ecx,8
 0077AB01    mov         edx,dword ptr ds:[4012B8];string
 0077AB07    call        @FinalizeArray
 0077AB0C    mov         eax,7C4014;^'Addr. input'
 0077AB11    call        @UStrClr
 0077AB16    mov         eax,7C4018;^'Immediate or delayed by CtrlA, CtrlB or CtrlB2'
 0077AB1B    call        @UStrClr
 0077AB20    mov         eax,7C401C;^'Panel output'
 0077AB25    call        @UStrClr
 0077AB2A    mov         eax,7C4020;^'Addr. output'
 0077AB2F    call        @UStrClr
 0077AB34    mov         eax,7C4024;^'Delayed (%s) CtrlC1 (%s)'
 0077AB39    call        @UStrClr
 0077AB3E    mov         eax,7C4028;^'Delayed (%s) CtrlC2 (%s)'
 0077AB43    call        @UStrClr
 0077AB48    mov         eax,7C402C;^'Delayed (%s) CtrlC3 (%s)'
 0077AB4D    call        @UStrClr
 0077AB52    mov         eax,7C4030;^'Delayed (%s) CtrlC4 (%s)'
 0077AB57    call        @UStrClr
 0077AB5C    mov         eax,7C4034;^'Delayed (%s) CtrlC5 (%s)'
 0077AB61    call        @UStrClr
 0077AB66    mov         eax,7C4038;^'Delayed (%s) CtrlC6 (%s)'
 0077AB6B    call        @UStrClr
 0077AB70    mov         eax,7C403C;^'Delayed (%s) CtrlC7 (%s)'
 0077AB75    call        @UStrClr
 0077AB7A    mov         eax,7C4040;^'Fire alarm inputs that control '
 0077AB7F    call        @UStrClr
 0077AB84    mov         eax,7C4044;^'Fire alarm outputs controlled by '
 0077AB89    call        @UStrClr
 0077AB8E    mov         eax,7C4048;^'Panel output'
 0077AB93    mov         ecx,2
 0077AB98    mov         edx,dword ptr ds:[4012B8];string
 0077AB9E    call        @FinalizeArray
 0077ABA3    mov         eax,7C4050;^'Inputs by single output'
 0077ABA8    call        @UStrClr
 0077ABAD    mov         eax,7C4054;^'Inputs by Control Group'
 0077ABB2    call        @UStrClr
 0077ABB7    mov         eax,7C4058;^'Outputs by Control Group'
 0077ABBC    call        @UStrClr
 0077ABC1    xor         eax,eax
 0077ABC3    pop         edx
 0077ABC4    pop         ecx
 0077ABC5    pop         ecx
 0077ABC6    mov         dword ptr fs:[eax],edx
 0077ABC9    push        77ABD6
 0077ABCE    ret
>0077ABCF    jmp         @HandleFinally
>0077ABD4    jmp         0077ABCE
 0077ABD6    pop         ebp
 0077ABD7    ret
*}
end.