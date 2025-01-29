//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.ComCtrls;

interface

uses
  SysUtils, Classes, Vcl.StdActns, Vcl.ComCtrls, System.TypInfo, System.Classes;

type
  :TListColumn.:1 = array of Integer;
//elSize = 4
//varType equivalent: varInteger;
  :TWorkAreas.:1 = array of TRect;
//elSize = 10;
  TSubItems = class(TStringList)
  published
    procedure Insert(Index:Integer; S:string);//00543418
    procedure Delete(Index:Integer);//0054339C
    procedure SetImageIndex(Index:Integer; Value:TImageIndex);//005434C0
    function GetImageIndex(Index:Integer):TImageIndex;//005434AC
    procedure Clear;//00543388
    destructor Destroy();//0054330C
    constructor Create;//005432C0
    function AddObject(S:string; AObject:TObject):Integer;//00543360
    function Add(S:string):Integer;//00543338
  public
    FOwner:TListItem;//f58
    FImageIndices:TList;//f5C
    destructor Destroy(); virtual;//0054330C
    procedure Put(Index:Integer; const S:UnicodeString); virtual;//v20//00543458
    procedure SetUpdateState(Updating:Boolean); virtual;//v34//005434A0
    function Add(S:string):Integer; virtual;//v3C//00543338
    function AddObject(S:string; AObject:TObject):Integer; virtual;//v40//00543360
    procedure Clear; virtual;//v48//00543388
    procedure Delete(Index:Integer); virtual;//v4C//0054339C
    procedure Insert(Index:Integer; S:string); virtual;//v64//00543418
    function GetHandle:HWND;//005433C0
    procedure SetColumnWidth(Index:Integer);//005433CC
    procedure RefreshItem(Index:Integer);//00543474
  end;
    constructor Create;//005424AC
    destructor Destroy();//0054255C
    procedure DefineProperties(Filer:Classes.TFiler);//005425D0
    procedure ReadData(Reader:Classes.TReader);//00542624
    procedure WriteData(Writer:Classes.TWriter);//00542650
    procedure WriteCols;//00542678
    procedure DoChange;//00542774
    procedure sub_00542804;//00542804
    procedure SetCaption(const Value:UnicodeString);//005428BC
    //function GetWidth:?;//005428E4
    procedure IsStoredWidth(Value:TWidth);//00542978
    procedure SetWidth(Value:TWidth);//00542980
    procedure SetAlignment(Value:TAlignment);//005429AC
    procedure SetAutoSize(Value:Boolean);//005429E4
    procedure SetImageIndex(Value:UITypes.TImageIndex);//00542A18
    procedure SetImageIndex(Value:UITypes.TImageIndex);//00542A28
    procedure SetMinWidth(Value:TWidth);//00542A38
    procedure Assign(Source:TPersistent);//00542A48
    function GetDisplayName:UnicodeString;//00542ABC
    constructor Create;//00542AE0
    function GetItem(Index:Integer):TListColumn;//00542B24
    function Owner:TCustomListView;//00542B38
    procedure sub_0048EDE4;//00542B3C
    procedure Update(Item:Classes.TCollectionItem);//00542B40
    procedure UpdateCols;//00542B74
    constructor Create;//00542CFC
    function GetDisplayName:string;//00542D40
    procedure SetColor(const Value:UITypes.TColor);//00542D54
    procedure SetDisplayName(Value:string);//00542D60
    procedure SetRect(const Value:Windows.TRect);//00542D7C
    procedure sub_00542DCC;//00542DCC
    function GetItem(Index:Integer):TWorkArea;//00542E9C
    procedure Put(Index:Integer; const S:UnicodeString);//00543458
    procedure SetUpdateState(Updating:Boolean);//005434A0
    constructor Create;//005434CC
    destructor Destroy();//00543530
    function GetListView:TCustomListView;//005435BC
    procedure Delete;//005435C4
    function GetHandle:HWND;//005435E8
    procedure MakeVisible(PartialOK:Boolean);//005435FC
    function GetChecked:Boolean;//00543620
    procedure SetChecked(Value:Boolean);//00543674
    procedure SetGroupID(Value:Integer);//005436C0
    function GetLeft:Integer;//00543718
    procedure SetLeft(Value:Integer);//00543730
    function GetTop:Integer;//00543758
    procedure SetTop(Value:Integer);//00543770
    procedure Update;//00543798
    procedure SetCaption(const Value:UnicodeString);//005437C8
    procedure SetData(Value:Controls.TCustomData);//00543884
    //function sub_005438B4(?:TListItem; ?:?):Boolean;//005438B4
    procedure SetState(Index:Integer; State:Boolean);//00543928
    procedure SetImage(Index:Integer; Value:UITypes.TImageIndex);//00543998
    procedure SetIndent(Value:Integer);//00543ADC
    procedure Assign(Source:TPersistent);//00543B54
    function IsEqual(Item:TListItem):Boolean;//00543BF8
    procedure SetSubItems(Value:Classes.TStrings);//00543C20
    function GetIndex:Integer;//00543C34
    function GetPosition:TPoint;//00543C50
    procedure SetPosition(Value:TPoint);//00543C80
    function DisplayRect(Code:TDisplayCode):TRect;//00543CD4
    function GetSubItemImage(Index:Integer):Integer;//00543D04
    procedure SetSubItemImage(Index:Integer; Value:Integer);//00543D10
    function GetCurrent:TListItem;//00543D84
    constructor Create;//00543D90
    destructor Destroy();//00543DCC
    function Add:TListItem;//00543DF8
    function AddItem(Item:TListItem; Index:Integer):TListItem;//00543E04
    function GetCount:Integer;//00543E60
    function GetHandle:HWND;//00543E90
    function GetItem(Index:Integer):TListItem;//00543E9C
    procedure IndexOf(Value:TListItem);//00543F28
    procedure sub_00543F54(?:TListItems; ?:Integer);//00543F54
    procedure Clear;//00543F88
    procedure BeginUpdate;//00543FB4
    procedure SetUpdateState(Updating:Boolean);//00543FCC
    procedure EndUpdate;//00544194
    procedure Assign(Source:TPersistent);//005441A8
    function WriteItems:Boolean;//00544208
    procedure DefineProperties(Filer:Classes.TFiler);//005442BC
    procedure ReadData(Stream:Classes.TStream);//00544358
    procedure ReadItemData(Stream:Classes.TStream);//00544558
    function GetByteLength(const S:UnicodeString):Integer;//005449C0
    //procedure sub_005449D8(?:?; ?:?);//005449D8
    procedure WriteItemData(Stream:Classes.TStream);//00544B58
    procedure Delete(Index:Integer);//00544E9C
    function CreateItem(Index:Integer; ListItem:TListItem):TLVItem;//00544EB4
    constructor Create;//00544EE0
    procedure SetArrangement(Value:TIconArrangement);//00544F90
    procedure SetAutoArrange(Value:Boolean);//00544FA4
    procedure SetWrapText(Value:Boolean);//00544FB8
    //function sub_00544FCC(?:?; ?:?; ?:?):?;//00544FCC
    constructor Create(AOwner:TComponent);//00545038

implementation

//005424AC
constructor TListColumn.Create;
begin
{*
 005424AC    push        ebp
 005424AD    mov         ebp,esp
 005424AF    add         esp,0FFFFFFD0
 005424B2    push        ebx
 005424B3    push        esi
 005424B4    push        edi
 005424B5    test        dl,dl
>005424B7    je          005424C1
 005424B9    add         esp,0FFFFFFF0
 005424BC    call        @ClassCreate
 005424C1    mov         esi,ecx
 005424C3    mov         byte ptr [ebp-1],dl
 005424C6    mov         ebx,eax
 005424C8    mov         eax,dword ptr [esi+8]
 005424CB    mov         eax,dword ptr [eax+8]
 005424CE    mov         dword ptr [ebx+28],eax
 005424D1    mov         ecx,esi
 005424D3    xor         edx,edx
 005424D5    mov         eax,ebx
 005424D7    call        TCollectionItem.Create
 005424DC    mov         dword ptr [ebx+24],32
 005424E3    mov         byte ptr [ebx+0C],0
 005424E7    or          eax,0FFFFFFFF
 005424EA    mov         dword ptr [ebx+1C],eax
 005424ED    mov         dword ptr [ebp-30],3
 005424F4    xor         edx,edx
 005424F6    mov         dword ptr [ebp-2C],edx
 005424F9    mov         edx,dword ptr [ebx+24]
 005424FC    mov         dword ptr [ebp-28],edx
 005424FF    mov         dword ptr [ebp-18],eax
 00542502    mov         edi,esi
 00542504    mov         eax,edi
 00542506    call        TListColumns.Owner
 0054250B    call        TWinControl.HandleAllocated
 00542510    test        al,al
>00542512    je          0054253B
 00542514    mov         eax,edi
 00542516    call        TListColumns.Owner
 0054251B    call        TWinControl.GetHandle
 00542520    mov         esi,eax
 00542522    mov         eax,ebx
 00542524    call        TCollectionItem.GetIndex
 00542529    mov         edi,eax
 0054252B    lea         eax,[ebp-30]
 0054252E    push        eax
 0054252F    push        edi
 00542530    push        1061
 00542535    push        esi
 00542536    call        user32.SendMessageW
 0054253B    mov         eax,ebx
 0054253D    cmp         byte ptr [ebp-1],0
>00542541    je          00542552
 00542543    call        @AfterConstruction
 00542548    pop         dword ptr fs:[0]
 0054254F    add         esp,0C
 00542552    mov         eax,ebx
 00542554    pop         edi
 00542555    pop         esi
 00542556    pop         ebx
 00542557    mov         esp,ebp
 00542559    pop         ebp
 0054255A    ret
*}
end;

//0054255C
destructor TListColumn.Destroy();
begin
{*
 0054255C    push        ebx
 0054255D    push        esi
 0054255E    push        edi
 0054255F    push        ebp
 00542560    push        ecx
 00542561    call        @BeforeDestruction
 00542566    mov         byte ptr [esp],dl
 00542569    mov         ebp,eax
 0054256B    mov         edi,dword ptr [ebp+4]
 0054256E    mov         esi,edi
 00542570    mov         eax,edi
 00542572    call        TListColumns.Owner
 00542577    call        TWinControl.HandleAllocated
 0054257C    test        al,al
>0054257E    je          005425A6
 00542580    mov         eax,dword ptr [ebp+4]
 00542583    call        TListColumns.Owner
 00542588    call        TWinControl.GetHandle
 0054258D    mov         edi,eax
 0054258F    mov         eax,ebp
 00542591    call        TCollectionItem.GetIndex
 00542596    mov         ebx,eax
 00542598    push        0
 0054259A    push        ebx
 0054259B    push        101C
 005425A0    push        edi
 005425A1    call        user32.SendMessageW
 005425A6    movzx       edx,byte ptr [esp]
 005425AA    and         dl,0FC
 005425AD    mov         eax,ebp
 005425AF    call        TCollectionItem.Destroy
 005425B4    mov         eax,esi
 005425B6    call        TListColumns.UpdateCols
 005425BB    cmp         byte ptr [esp],0
>005425BF    jle         005425C8
 005425C1    mov         eax,ebp
 005425C3    call        @ClassDestroy
 005425C8    pop         edx
 005425C9    pop         ebp
 005425CA    pop         edi
 005425CB    pop         esi
 005425CC    pop         ebx
 005425CD    ret
*}
end;

//005425D0
procedure TListColumn.DefineProperties(Filer:Classes.TFiler);
begin
{*
 005425D0    push        ebx
 005425D1    push        esi
 005425D2    mov         esi,edx
 005425D4    mov         ebx,eax
 005425D6    mov         edx,esi
 005425D8    mov         eax,ebx
 005425DA    call        TPersistent.DefineProperties
 005425DF    push        ebx
 005425E0    push        542624;TListColumn.ReadData
 005425E5    push        ebx
 005425E6    push        542650;TListColumn.WriteData
 005425EB    cmp         dword ptr [ebx+24],0FFFFFFFF
 005425EF    setle       cl
 005425F2    mov         edx,542610;'WidthType'
 005425F7    mov         eax,esi
 005425F9    mov         ebx,dword ptr [eax]
 005425FB    call        dword ptr [ebx+4]
 005425FE    pop         esi
 005425FF    pop         ebx
 00542600    ret
*}
end;

//00542624
procedure TListColumn.ReadData(Reader:Classes.TReader);
begin
{*
 00542624    push        ebx
 00542625    push        esi
 00542626    mov         ebx,edx
 00542628    mov         esi,eax
 0054262A    mov         dl,1
 0054262C    mov         eax,ebx
 0054262E    call        TReader.CheckValue
 00542633    mov         eax,ebx
 00542635    call        TReader.ReadInteger
 0054263A    mov         edx,eax
 0054263C    mov         eax,esi
 0054263E    call        TListColumn.SetWidth
 00542643    xor         edx,edx
 00542645    mov         eax,ebx
 00542647    call        TReader.CheckValue
 0054264C    pop         esi
 0054264D    pop         ebx
 0054264E    ret
*}
end;

//00542650
procedure TListColumn.WriteData(Writer:Classes.TWriter);
begin
{*
 00542650    push        ebx
 00542651    push        esi
 00542652    mov         ebx,edx
 00542654    mov         esi,eax
 00542656    mov         dl,1
 00542658    mov         eax,ebx
 0054265A    call        TWriter.WriteValue
 0054265F    mov         edx,dword ptr [esi+24]
 00542662    mov         eax,ebx
 00542664    call        TWriter.WriteInteger
 00542669    xor         edx,edx
 0054266B    mov         eax,ebx
 0054266D    call        TWriter.WriteValue
 00542672    pop         esi
 00542673    pop         ebx
 00542674    ret
*}
end;

//00542678
procedure WriteCols;
begin
{*
 00542678    push        ebp
 00542679    mov         ebp,esp
 0054267B    add         esp,0FFFFFFF8
 0054267E    mov         eax,dword ptr [ebp+8]
 00542681    mov         eax,dword ptr [eax-4]
 00542684    mov         eax,dword ptr [eax+4]
 00542687    call        TListColumns.Owner
 0054268C    mov         dword ptr [ebp-8],eax
 0054268F    mov         eax,dword ptr [ebp-8]
 00542692    call        TWinControl.HandleAllocated
 00542697    test        al,al
>00542699    jne         00542765
 0054269F    mov         eax,dword ptr [ebp-8]
 005426A2    movzx       eax,word ptr [eax+1C]
 005426A6    and         ax,word ptr ds:[54276C]
 005426AD    movzx       edx,word ptr ds:[542770]
 005426B4    cmp         dx,ax
>005426B7    jne         00542765
 005426BD    mov         eax,dword ptr [ebp-8]
 005426C0    cmp         byte ptr [eax+319],0
>005426C7    jne         00542765
 005426CD    mov         eax,dword ptr [ebp-8]
 005426D0    mov         eax,dword ptr [eax+2D8]
 005426D6    test        eax,eax
>005426D8    jne         005426F1
 005426DA    mov         dl,1
 005426DC    mov         eax,[00472CE4];TMemoryStream
 005426E1    call        TObject.Create
 005426E6    mov         edx,dword ptr [ebp-8]
 005426E9    mov         dword ptr [edx+2D8],eax
>005426EF    jmp         005426FA
 005426F1    push        0
 005426F3    push        0
 005426F5    call        TStream.SetSize64
 005426FA    push        400
 005426FF    mov         eax,dword ptr [ebp-8]
 00542702    mov         ecx,dword ptr [eax+2D8]
 00542708    mov         dl,1
 0054270A    mov         eax,[00476148];TWriter
 0054270F    call        TFiler.Create
 00542714    mov         dword ptr [ebp-4],eax
 00542717    xor         eax,eax
 00542719    push        ebp
 0054271A    push        54275E
 0054271F    push        dword ptr fs:[eax]
 00542722    mov         dword ptr fs:[eax],esp
 00542725    mov         eax,dword ptr [ebp+8]
 00542728    mov         eax,dword ptr [eax-4]
 0054272B    mov         edx,dword ptr [eax+4]
 0054272E    mov         eax,dword ptr [ebp-4]
 00542731    call        TWriter.WriteCollection
 00542736    xor         eax,eax
 00542738    pop         edx
 00542739    pop         ecx
 0054273A    pop         ecx
 0054273B    mov         dword ptr fs:[eax],edx
 0054273E    push        542765
 00542743    mov         eax,dword ptr [ebp-4]
 00542746    call        TObject.Free
 0054274B    push        0
 0054274D    push        0
 0054274F    mov         eax,dword ptr [ebp-8]
 00542752    mov         eax,dword ptr [eax+2D8]
 00542758    call        TStream.SetPosition
 0054275D    ret
>0054275E    jmp         @HandleFinally
>00542763    jmp         00542743
 00542765    pop         ecx
 00542766    pop         ecx
 00542767    pop         ebp
 00542768    ret
*}
end;

//00542774
procedure TListColumn.DoChange;
begin
{*
 00542774    push        ebp
 00542775    mov         ebp,esp
 00542777    push        ecx
 00542778    push        ebx
 00542779    push        esi
 0054277A    mov         dword ptr [ebp-4],eax
 0054277D    mov         eax,dword ptr [ebp-4]
 00542780    mov         eax,dword ptr [eax+4]
 00542783    mov         eax,dword ptr [eax+8]
 00542786    mov         ebx,dword ptr [eax+8]
 00542789    dec         ebx
 0054278A    test        ebx,ebx
>0054278C    jl          005427A8
 0054278E    inc         ebx
 0054278F    xor         esi,esi
 00542791    mov         eax,dword ptr [ebp-4]
 00542794    mov         eax,dword ptr [eax+4]
 00542797    mov         edx,esi
 00542799    call        TCollection.GetItem
 0054279E    cmp         dword ptr [eax+24],0FFFFFFFF
>005427A2    jle         005427A8
 005427A4    inc         esi
 005427A5    dec         ebx
>005427A6    jne         00542791
 005427A8    mov         eax,dword ptr [ebp-4]
 005427AB    mov         eax,dword ptr [eax+4]
 005427AE    mov         eax,dword ptr [eax+8]
 005427B1    cmp         esi,dword ptr [eax+8]
 005427B4    setne       dl
 005427B7    mov         eax,dword ptr [ebp-4]
 005427BA    call        TCollectionItem.Changed
 005427BF    push        ebp
 005427C0    call        WriteCols
 005427C5    pop         ecx
 005427C6    pop         esi
 005427C7    pop         ebx
 005427C8    pop         ecx
 005427C9    pop         ebp
 005427CA    ret
*}
end;

//00542804
procedure sub_00542804;
begin
{*
 00542804    push        ebp
 00542805    mov         ebp,esp
 00542807    push        0
 00542809    push        ebx
 0054280A    push        esi
 0054280B    push        edi
 0054280C    mov         esi,eax
 0054280E    xor         eax,eax
 00542810    push        ebp
 00542811    push        5428AF
 00542816    push        dword ptr fs:[eax]
 00542819    mov         dword ptr fs:[eax],esp
 0054281C    mov         eax,esi
 0054281E    call        0048F1A4
 00542823    mov         ebx,dword ptr [esi+4];TListColumn.FCollection:TCollection
 00542826    mov         eax,dword ptr [ebx+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 00542829    mov         eax,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0054282C    push        eax
 0054282D    lea         eax,[ebp-4]
 00542830    mov         ecx,1
 00542835    mov         edx,dword ptr ds:[5427CC];:TListColumn.:1
 0054283B    call        @DynArraySetLength
 00542840    add         esp,4
 00542843    mov         eax,dword ptr [esi+4];TListColumn.FCollection:TCollection
 00542846    mov         eax,dword ptr [eax+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 00542849    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0054284C    dec         edi
 0054284D    test        edi,edi
>0054284F    jl          0054286B
 00542851    inc         edi
 00542852    xor         ebx,ebx
 00542854    mov         edx,ebx
 00542856    mov         eax,dword ptr [esi+4];TListColumn.FCollection:TCollection
 00542859    call        TCollection.GetItem
 0054285E    mov         eax,dword ptr [eax+28]
 00542861    mov         edx,dword ptr [ebp-4]
 00542864    mov         dword ptr [edx+ebx*4],eax
 00542867    inc         ebx
 00542868    dec         edi
>00542869    jne         00542854
 0054286B    mov         eax,dword ptr [esi+4];TListColumn.FCollection:TCollection
 0054286E    call        TListColumns.Owner
 00542873    call        TWinControl.GetHandle
 00542878    mov         ebx,eax
 0054287A    mov         eax,dword ptr [esi+4];TListColumn.FCollection:TCollection
 0054287D    mov         eax,dword ptr [eax+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 00542880    mov         esi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00542883    mov         eax,dword ptr [ebp-4]
 00542886    push        eax
 00542887    push        esi
 00542888    push        103A
 0054288D    push        ebx
 0054288E    call        user32.SendMessageW
 00542893    xor         eax,eax
 00542895    pop         edx
 00542896    pop         ecx
 00542897    pop         ecx
 00542898    mov         dword ptr fs:[eax],edx
 0054289B    push        5428B6
 005428A0    lea         eax,[ebp-4]
 005428A3    mov         edx,dword ptr ds:[5427CC];:TListColumn.:1
 005428A9    call        @DynArrayClear
 005428AE    ret
>005428AF    jmp         @HandleFinally
>005428B4    jmp         005428A0
 005428B6    pop         edi
 005428B7    pop         esi
 005428B8    pop         ebx
 005428B9    pop         ecx
 005428BA    pop         ebp
 005428BB    ret
*}
end;

//005428BC
procedure TListColumn.SetCaption(const Value:UnicodeString);
begin
{*
 005428BC    push        ebx
 005428BD    push        esi
 005428BE    mov         esi,edx
 005428C0    mov         ebx,eax
 005428C2    mov         eax,dword ptr [ebx+10]
 005428C5    mov         edx,esi
 005428C7    call        @UStrEqual
>005428CC    je          005428DF
 005428CE    lea         eax,[ebx+10]
 005428D1    mov         edx,esi
 005428D3    call        @UStrAsg
 005428D8    mov         eax,ebx
 005428DA    call        TListColumn.DoChange
 005428DF    pop         esi
 005428E0    pop         ebx
 005428E1    ret
*}
end;

//005428E4
{*function TListColumn.GetWidth:?;
begin
 005428E4    push        ebx
 005428E5    push        esi
 005428E6    push        edi
 005428E7    mov         edi,eax
 005428E9    mov         eax,dword ptr [edi+4];TListColumn.FCollection:TCollection
 005428EC    call        TListColumns.Owner
 005428F1    mov         esi,eax
 005428F3    movzx       eax,word ptr [esi+1C];TCustomListView.FComponentState:TComponentState
 005428F7    and         ax,word ptr ds:[542970];0x7 gvar_00542970
 005428FE    movzx       edx,word ptr ds:[542974];0x0 gvar_00542974
 00542905    cmp         dx,ax
 00542908    setne       bl
 0054290B    cmp         dword ptr [edi+24],0;TListColumn.FWidth:TWidth
>0054290F    jne         00542920
 00542911    mov         eax,esi
 00542913    call        TWinControl.HandleAllocated
 00542918    test        al,al
>0054291A    jne         0054294B
 0054291C    test        bl,bl
>0054291E    je          0054294B
 00542920    cmp         byte ptr [edi+0D],0;TListColumn.FAutoSize:Boolean
>00542924    jne         00542968
 00542926    mov         eax,esi
 00542928    call        TWinControl.HandleAllocated
 0054292D    test        al,al
>0054292F    je          00542968
 00542931    cmp         byte ptr [esi+29D],3;TCustomListView.FViewStyle:TViewStyle
>00542938    jne         00542968
 0054293A    cmp         dword ptr [edi+24],0FFFFFFFF;TListColumn.FWidth:TWidth
>0054293E    je          00542968
 00542940    mov         eax,esi
 00542942    call        00546810
 00542947    test        al,al
>00542949    je          00542968
 0054294B    mov         eax,esi
 0054294D    call        TWinControl.GetHandle
 00542952    mov         ebx,eax
 00542954    mov         esi,dword ptr [edi+28];TListColumn.FOrderTag:Integer
 00542957    push        0
 00542959    push        esi
 0054295A    push        101D
 0054295F    push        ebx
 00542960    call        user32.SendMessageW
 00542965    mov         dword ptr [edi+24],eax;TListColumn.FWidth:TWidth
 00542968    mov         eax,dword ptr [edi+24];TListColumn.FWidth:TWidth
 0054296B    pop         edi
 0054296C    pop         esi
 0054296D    pop         ebx
 0054296E    ret
end;*}

//00542978
procedure TListColumn.IsStoredWidth(Value:TWidth);
begin
{*
 00542978    movzx       eax,byte ptr [eax+0D];TListColumn.FAutoSize:Boolean
 0054297C    xor         al,1
 0054297E    ret
*}
end;

//00542980
procedure TListColumn.SetWidth(Value:TWidth);
begin
{*
 00542980    cmp         edx,dword ptr [eax+24]
>00542983    je          005429A9
 00542985    mov         ecx,dword ptr [eax+18]
 00542988    cmp         edx,ecx
>0054298A    jge         00542994
 0054298C    test        edx,edx
>0054298E    jl          00542994
 00542990    mov         edx,ecx
>00542992    jmp         005429A1
 00542994    mov         ecx,dword ptr [eax+14]
 00542997    test        ecx,ecx
>00542999    jle         005429A1
 0054299B    cmp         ecx,edx
>0054299D    jge         005429A1
 0054299F    mov         edx,ecx
 005429A1    mov         dword ptr [eax+24],edx
 005429A4    call        TListColumn.DoChange
 005429A9    ret
*}
end;

//005429AC
procedure TListColumn.SetAlignment(Value:TAlignment);
begin
{*
 005429AC    push        ebx
 005429AD    push        esi
 005429AE    mov         ebx,edx
 005429B0    mov         esi,eax
 005429B2    cmp         bl,byte ptr [esi+0C];TListColumn.FAlignment:TAlignment
>005429B5    je          005429DE
 005429B7    mov         eax,esi
 005429B9    call        TCollectionItem.GetIndex
 005429BE    test        eax,eax
>005429C0    je          005429DE
 005429C2    mov         byte ptr [esi+0C],bl;TListColumn.FAlignment:TAlignment
 005429C5    xor         edx,edx
 005429C7    mov         eax,esi
 005429C9    call        TCollectionItem.Changed
 005429CE    mov         eax,dword ptr [esi+4];TListColumn.FCollection:TCollection
 005429D1    call        TListColumns.Owner
 005429D6    mov         edx,dword ptr [eax]
 005429D8    call        dword ptr [edx+0AC];TWinControl.Repaint
 005429DE    pop         esi
 005429DF    pop         ebx
 005429E0    ret
*}
end;

//005429E4
procedure TListColumn.SetAutoSize(Value:Boolean);
begin
{*
 005429E4    push        ebx
 005429E5    push        esi
 005429E6    mov         ebx,eax
 005429E8    cmp         dl,byte ptr [ebx+0D];TListColumn.FAutoSize:Boolean
>005429EB    je          00542A14
 005429ED    mov         byte ptr [ebx+0D],dl;TListColumn.FAutoSize:Boolean
 005429F0    mov         eax,dword ptr [ebx+4];TListColumn.FCollection:TCollection
 005429F3    call        TListColumns.Owner
 005429F8    test        eax,eax
>005429FA    je          00542A0D
 005429FC    mov         eax,dword ptr [ebx+4];TListColumn.FCollection:TCollection
 005429FF    call        TListColumns.Owner
 00542A04    mov         si,0FFEE
 00542A08    call        @CallDynaInst;TWinControl.sub_004E9C04
 00542A0D    mov         eax,ebx
 00542A0F    call        TListColumn.DoChange
 00542A14    pop         esi
 00542A15    pop         ebx
 00542A16    ret
*}
end;

//00542A18
procedure TListColumn.SetImageIndex(Value:UITypes.TImageIndex);
begin
{*
 00542A18    cmp         edx,dword ptr [eax+1C]
>00542A1B    je          00542A25
 00542A1D    mov         dword ptr [eax+1C],edx
 00542A20    call        TListColumn.DoChange
 00542A25    ret
*}
end;

//00542A28
procedure TCoolBand.SetImageIndex(Value:UITypes.TImageIndex);
begin
{*
 00542A28    cmp         edx,dword ptr [eax+14]
>00542A2B    je          00542A37
 00542A2D    mov         dword ptr [eax+14],edx
 00542A30    xor         edx,edx
 00542A32    call        TCollectionItem.Changed
 00542A37    ret
*}
end;

//00542A38
procedure TListColumn.SetMinWidth(Value:TWidth);
begin
{*
 00542A38    cmp         edx,dword ptr [eax+18]
>00542A3B    je          00542A47
 00542A3D    mov         dword ptr [eax+18],edx
 00542A40    xor         edx,edx
 00542A42    call        TCollectionItem.Changed
 00542A47    ret
*}
end;

//00542A48
procedure TListColumn.Assign(Source:TPersistent);
begin
{*
 00542A48    push        ebx
 00542A49    push        esi
 00542A4A    mov         esi,edx
 00542A4C    mov         ebx,eax
 00542A4E    mov         eax,esi
 00542A50    mov         edx,dword ptr ds:[52C8A8];TListColumn
 00542A56    call        @IsClass
 00542A5B    test        al,al
>00542A5D    je          00542AB0
 00542A5F    movzx       edx,byte ptr [esi+0C]
 00542A63    mov         eax,ebx
 00542A65    call        TListColumn.SetAlignment
 00542A6A    movzx       edx,byte ptr [esi+0D]
 00542A6E    mov         eax,ebx
 00542A70    call        TListColumn.SetAutoSize
 00542A75    mov         edx,dword ptr [esi+10]
 00542A78    mov         eax,ebx
 00542A7A    call        TListColumn.SetCaption
 00542A7F    mov         edx,dword ptr [esi+1C]
 00542A82    mov         eax,ebx
 00542A84    call        TListColumn.SetImageIndex
 00542A89    mov         edx,dword ptr [esi+14]
 00542A8C    mov         eax,ebx
 00542A8E    call        TCoolBand.SetImageIndex
 00542A93    mov         edx,dword ptr [esi+18]
 00542A96    mov         eax,ebx
 00542A98    call        TListColumn.SetMinWidth
 00542A9D    mov         eax,esi
 00542A9F    call        TListColumn.GetWidth
 00542AA4    mov         edx,eax
 00542AA6    mov         eax,ebx
 00542AA8    call        TListColumn.SetWidth
 00542AAD    pop         esi
 00542AAE    pop         ebx
 00542AAF    ret
 00542AB0    mov         edx,esi
 00542AB2    mov         eax,ebx
 00542AB4    call        TPersistent.Assign
 00542AB9    pop         esi
 00542ABA    pop         ebx
 00542ABB    ret
*}
end;

//00542ABC
function TListColumn.GetDisplayName:UnicodeString;
begin
{*
 00542ABC    push        ebx
 00542ABD    push        esi
 00542ABE    mov         esi,edx
 00542AC0    mov         ebx,eax
 00542AC2    mov         eax,esi
 00542AC4    mov         edx,dword ptr [ebx+10]
 00542AC7    call        @UStrAsg
 00542ACC    cmp         dword ptr [esi],0
>00542ACF    jne         00542ADA
 00542AD1    mov         edx,esi
 00542AD3    mov         eax,ebx
 00542AD5    call        TCollectionItem.GetDisplayName
 00542ADA    pop         esi
 00542ADB    pop         ebx
 00542ADC    ret
*}
end;

//00542AE0
constructor THeaderSections.Create;
begin
{*
 00542AE0    push        ebx
 00542AE1    push        esi
 00542AE2    push        edi
 00542AE3    test        dl,dl
>00542AE5    je          00542AEF
 00542AE7    add         esp,0FFFFFFF0
 00542AEA    call        @ClassCreate
 00542AEF    mov         esi,ecx
 00542AF1    mov         ebx,edx
 00542AF3    mov         edi,eax
 00542AF5    mov         ecx,dword ptr ds:[52C8A8];TListColumn
 00542AFB    xor         edx,edx
 00542AFD    mov         eax,edi
 00542AFF    call        TCollection.Create
 00542B04    mov         dword ptr [edi+18],esi
 00542B07    mov         eax,edi
 00542B09    test        bl,bl
>00542B0B    je          00542B1C
 00542B0D    call        @AfterConstruction
 00542B12    pop         dword ptr fs:[0]
 00542B19    add         esp,0C
 00542B1C    mov         eax,edi
 00542B1E    pop         edi
 00542B1F    pop         esi
 00542B20    pop         ebx
 00542B21    ret
*}
end;

//00542B24
function TListColumns.GetItem(Index:Integer):TListColumn;
begin
{*
 00542B24    push        ebx
 00542B25    push        esi
 00542B26    mov         esi,edx
 00542B28    mov         ebx,eax
 00542B2A    mov         edx,esi
 00542B2C    mov         eax,ebx
 00542B2E    call        TCollection.GetItem
 00542B33    pop         esi
 00542B34    pop         ebx
 00542B35    ret
*}
end;

//00542B38
function TListColumns.Owner:TCustomListView;
begin
{*
 00542B38    mov         eax,dword ptr [eax+18]
 00542B3B    ret
*}
end;

//00542B3C
procedure TListColumns.sub_0048EDE4;
begin
{*
 00542B3C    mov         eax,dword ptr [eax+18];TListColumns...FOwner:TCustomListView
 00542B3F    ret
*}
end;

//00542B40
procedure TListColumns.Update(Item:Classes.TCollectionItem);
begin
{*
 00542B40    push        ebx
 00542B41    push        esi
 00542B42    mov         esi,edx
 00542B44    mov         ebx,eax
 00542B46    test        esi,esi
>00542B48    je          00542B62
 00542B4A    mov         eax,esi
 00542B4C    call        TCollectionItem.GetIndex
 00542B51    push        eax
 00542B52    mov         eax,ebx
 00542B54    call        TListColumns.Owner
 00542B59    pop         edx
 00542B5A    call        TCustomListView.UpdateColumn
 00542B5F    pop         esi
 00542B60    pop         ebx
 00542B61    ret
 00542B62    mov         eax,ebx
 00542B64    call        TListColumns.Owner
 00542B69    call        TCustomListView.UpdateColumns
 00542B6E    pop         esi
 00542B6F    pop         ebx
 00542B70    ret
*}
end;

//00542B74
procedure TListColumns.UpdateCols;
begin
{*
 00542B74    push        ebp
 00542B75    mov         ebp,esp
 00542B77    add         esp,0FFFFFFCC
 00542B7A    push        ebx
 00542B7B    push        esi
 00542B7C    push        edi
 00542B7D    xor         edx,edx
 00542B7F    mov         dword ptr [ebp-4],edx
 00542B82    mov         dword ptr [ebp-8],eax
 00542B85    xor         eax,eax
 00542B87    push        ebp
 00542B88    push        542CED
 00542B8D    push        dword ptr fs:[eax]
 00542B90    mov         dword ptr fs:[eax],esp
 00542B93    mov         eax,dword ptr [ebp-8]
 00542B96    call        TListColumns.Owner
 00542B9B    call        TWinControl.HandleAllocated
 00542BA0    test        al,al
>00542BA2    je          00542CD1
 00542BA8    mov         eax,dword ptr [ebp-8]
 00542BAB    mov         edx,dword ptr [eax]
 00542BAD    call        dword ptr [edx+20]
 00542BB0    xor         edx,edx
 00542BB2    push        ebp
 00542BB3    push        542CCA
 00542BB8    push        dword ptr fs:[edx]
 00542BBB    mov         dword ptr fs:[edx],esp
 00542BBE    mov         ebx,dword ptr [ebp-8]
 00542BC1    mov         eax,dword ptr [ebx+8]
 00542BC4    mov         eax,dword ptr [eax+8]
 00542BC7    push        eax
 00542BC8    lea         eax,[ebp-4]
 00542BCB    mov         ecx,1
 00542BD0    mov         edx,dword ptr ds:[40D424];TIntegerDynArray
 00542BD6    call        @DynArraySetLength
 00542BDB    add         esp,4
 00542BDE    mov         eax,dword ptr [ebx+8]
 00542BE1    mov         eax,dword ptr [eax+8]
 00542BE4    dec         eax
 00542BE5    cmp         eax,0
>00542BE8    jl          00542C22
 00542BEA    mov         ebx,eax
 00542BEC    mov         edx,ebx
 00542BEE    mov         eax,dword ptr [ebp-8]
 00542BF1    call        TListColumns.GetItem
 00542BF6    mov         eax,dword ptr [eax+28]
 00542BF9    mov         edx,dword ptr [ebp-4]
 00542BFC    mov         dword ptr [edx+ebx*4],eax
 00542BFF    mov         eax,dword ptr [ebp-8]
 00542C02    call        TListColumns.Owner
 00542C07    call        TWinControl.GetHandle
 00542C0C    mov         esi,eax
 00542C0E    push        0
 00542C10    push        ebx
 00542C11    push        101C
 00542C16    push        esi
 00542C17    call        user32.SendMessageW
 00542C1C    dec         ebx
 00542C1D    cmp         ebx,0FFFFFFFF
>00542C20    jne         00542BEC
 00542C22    mov         eax,dword ptr [ebp-8]
 00542C25    mov         eax,dword ptr [eax+8]
 00542C28    mov         esi,dword ptr [eax+8]
 00542C2B    dec         esi
 00542C2C    test        esi,esi
>00542C2E    jl          00542C7F
 00542C30    inc         esi
 00542C31    xor         ebx,ebx
 00542C33    mov         edx,ebx
 00542C35    mov         eax,dword ptr [ebp-8]
 00542C38    call        TListColumns.GetItem
 00542C3D    mov         dword ptr [eax+28],ebx
 00542C40    mov         dword ptr [ebp-34],3
 00542C47    xor         eax,eax
 00542C49    mov         dword ptr [ebp-30],eax
 00542C4C    mov         edx,ebx
 00542C4E    mov         eax,dword ptr [ebp-8]
 00542C51    call        TListColumns.GetItem
 00542C56    mov         eax,dword ptr [eax+24]
 00542C59    mov         dword ptr [ebp-2C],eax
 00542C5C    mov         eax,dword ptr [ebp-8]
 00542C5F    call        TListColumns.Owner
 00542C64    call        TWinControl.GetHandle
 00542C69    mov         edi,eax
 00542C6B    lea         eax,[ebp-34]
 00542C6E    push        eax
 00542C6F    push        ebx
 00542C70    push        1061
 00542C75    push        edi
 00542C76    call        user32.SendMessageW
 00542C7B    inc         ebx
 00542C7C    dec         esi
>00542C7D    jne         00542C33
 00542C7F    mov         eax,dword ptr [ebp-8]
 00542C82    call        TListColumns.Owner
 00542C87    call        TWinControl.GetHandle
 00542C8C    mov         ebx,eax
 00542C8E    mov         eax,dword ptr [ebp-8]
 00542C91    mov         eax,dword ptr [eax+8]
 00542C94    mov         esi,dword ptr [eax+8]
 00542C97    mov         eax,dword ptr [ebp-4]
 00542C9A    push        eax
 00542C9B    push        esi
 00542C9C    push        103A
 00542CA1    push        ebx
 00542CA2    call        user32.SendMessageW
 00542CA7    mov         eax,dword ptr [ebp-8]
 00542CAA    call        TListColumns.Owner
 00542CAF    call        TCustomListView.UpdateColumns
 00542CB4    xor         eax,eax
 00542CB6    pop         edx
 00542CB7    pop         ecx
 00542CB8    pop         ecx
 00542CB9    mov         dword ptr fs:[eax],edx
 00542CBC    push        542CD1
 00542CC1    mov         eax,dword ptr [ebp-8]
 00542CC4    mov         edx,dword ptr [eax]
 00542CC6    call        dword ptr [edx+24]
 00542CC9    ret
>00542CCA    jmp         @HandleFinally
>00542CCF    jmp         00542CC1
 00542CD1    xor         eax,eax
 00542CD3    pop         edx
 00542CD4    pop         ecx
 00542CD5    pop         ecx
 00542CD6    mov         dword ptr fs:[eax],edx
 00542CD9    push        542CF4
 00542CDE    lea         eax,[ebp-4]
 00542CE1    mov         edx,dword ptr ds:[40D424];TIntegerDynArray
 00542CE7    call        @DynArrayClear
 00542CEC    ret
>00542CED    jmp         @HandleFinally
>00542CF2    jmp         00542CDE
 00542CF4    pop         edi
 00542CF5    pop         esi
 00542CF6    pop         ebx
 00542CF7    mov         esp,ebp
 00542CF9    pop         ebp
 00542CFA    ret
*}
end;

//00542CFC
constructor TWorkArea.Create;
begin
{*
 00542CFC    push        ebx
 00542CFD    push        esi
 00542CFE    test        dl,dl
>00542D00    je          00542D0A
 00542D02    add         esp,0FFFFFFF0
 00542D05    call        @ClassCreate
 00542D0A    mov         ebx,edx
 00542D0C    mov         esi,eax
 00542D0E    xor         edx,edx
 00542D10    mov         eax,esi
 00542D12    call        TCollectionItem.Create
 00542D17    mov         dword ptr [esi+20],0FF000008
 00542D1E    lea         eax,[esi+1C]
 00542D21    call        @UStrClr
 00542D26    mov         eax,esi
 00542D28    test        bl,bl
>00542D2A    je          00542D3B
 00542D2C    call        @AfterConstruction
 00542D31    pop         dword ptr fs:[0]
 00542D38    add         esp,0C
 00542D3B    mov         eax,esi
 00542D3D    pop         esi
 00542D3E    pop         ebx
 00542D3F    ret
*}
end;

//00542D40
function TWorkArea.GetDisplayName:string;
begin
{*
 00542D40    push        ebx
 00542D41    push        esi
 00542D42    mov         esi,edx
 00542D44    mov         ebx,eax
 00542D46    mov         eax,esi
 00542D48    mov         edx,dword ptr [ebx+1C]
 00542D4B    call        @UStrAsg
 00542D50    pop         esi
 00542D51    pop         ebx
 00542D52    ret
*}
end;

//00542D54
procedure TWorkArea.SetColor(const Value:UITypes.TColor);
begin
{*
 00542D54    mov         dword ptr [eax+20],edx
 00542D57    mov         dl,1
 00542D59    call        TCollectionItem.Changed
 00542D5E    ret
*}
end;

//00542D60
procedure TWorkArea.SetDisplayName(Value:string);
begin
{*
 00542D60    push        ebx
 00542D61    push        esi
 00542D62    mov         esi,edx
 00542D64    mov         ebx,eax
 00542D66    lea         eax,[ebx+1C]
 00542D69    mov         edx,esi
 00542D6B    call        @UStrAsg
 00542D70    mov         dl,1
 00542D72    mov         eax,ebx
 00542D74    call        TCollectionItem.Changed
 00542D79    pop         esi
 00542D7A    pop         ebx
 00542D7B    ret
*}
end;

//00542D7C
procedure TWorkArea.SetRect(const Value:Windows.TRect);
begin
{*
 00542D7C    push        esi
 00542D7D    push        edi
 00542D7E    mov         esi,edx
 00542D80    lea         edi,[eax+0C]
 00542D83    movs        dword ptr [edi],dword ptr [esi]
 00542D84    movs        dword ptr [edi],dword ptr [esi]
 00542D85    movs        dword ptr [edi],dword ptr [esi]
 00542D86    movs        dword ptr [edi],dword ptr [esi]
 00542D87    mov         dl,1
 00542D89    call        TCollectionItem.Changed
 00542D8E    pop         edi
 00542D8F    pop         esi
 00542D90    ret
*}
end;

//00542DCC
procedure sub_00542DCC;
begin
{*
 00542DCC    push        ebp
 00542DCD    mov         ebp,esp
 00542DCF    add         esp,0FFFFFFF8
 00542DD2    push        ebx
 00542DD3    push        esi
 00542DD4    push        edi
 00542DD5    xor         ecx,ecx
 00542DD7    mov         dword ptr [ebp-4],ecx
 00542DDA    mov         edi,eax
 00542DDC    xor         eax,eax
 00542DDE    push        ebp
 00542DDF    push        542E8E
 00542DE4    push        dword ptr fs:[eax]
 00542DE7    mov         dword ptr fs:[eax],esp
 00542DEA    mov         eax,edi
 00542DEC    mov         si,0FFFF
 00542DF0    call        @CallDynaInst;TOwnedCollection.sub_0048EDE4
 00542DF5    mov         dword ptr [ebp-8],eax
 00542DF8    mov         ebx,edi
 00542DFA    mov         eax,dword ptr [ebx+8];TWorkAreas.FItems:TList<System.Classes.TCollectionItem>
 00542DFD    mov         eax,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00542E00    push        eax
 00542E01    lea         eax,[ebp-4]
 00542E04    mov         ecx,1
 00542E09    mov         edx,dword ptr ds:[542D94];:TWorkAreas.:1
 00542E0F    call        @DynArraySetLength
 00542E14    add         esp,4
 00542E17    mov         eax,dword ptr [ebx+8];TWorkAreas.FItems:TList<System.Classes.TCollectionItem>
 00542E1A    mov         esi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00542E1D    dec         esi
 00542E1E    test        esi,esi
>00542E20    jl          00542E47
 00542E22    inc         esi
 00542E23    xor         ebx,ebx
 00542E25    mov         edx,ebx
 00542E27    mov         eax,edi
 00542E29    call        TWorkAreas.GetItem
 00542E2E    mov         edx,ebx
 00542E30    add         edx,edx
 00542E32    mov         ecx,dword ptr [ebp-4]
 00542E35    push        esi
 00542E36    push        edi
 00542E37    lea         esi,[eax+0C];TWorkArea.FRect:TRect
 00542E3A    lea         edi,[ecx+edx*8]
 00542E3D    movs        dword ptr [edi],dword ptr [esi]
 00542E3E    movs        dword ptr [edi],dword ptr [esi]
 00542E3F    movs        dword ptr [edi],dword ptr [esi]
 00542E40    movs        dword ptr [edi],dword ptr [esi]
 00542E41    pop         edi
 00542E42    pop         esi
 00542E43    inc         ebx
 00542E44    dec         esi
>00542E45    jne         00542E25
 00542E47    mov         eax,dword ptr [ebp-8]
 00542E4A    call        TWinControl.GetHandle
 00542E4F    mov         ebx,eax
 00542E51    mov         eax,dword ptr [edi+8];TWorkAreas.FItems:TList<System.Classes.TCollectionItem>
 00542E54    mov         esi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00542E57    mov         eax,dword ptr [ebp-4]
 00542E5A    push        eax
 00542E5B    push        esi
 00542E5C    push        1041
 00542E61    push        ebx
 00542E62    call        user32.SendMessageW
 00542E67    mov         eax,dword ptr [ebp-8]
 00542E6A    mov         edx,dword ptr [eax]
 00542E6C    call        dword ptr [edx+0A8]
 00542E72    xor         eax,eax
 00542E74    pop         edx
 00542E75    pop         ecx
 00542E76    pop         ecx
 00542E77    mov         dword ptr fs:[eax],edx
 00542E7A    push        542E95
 00542E7F    lea         eax,[ebp-4]
 00542E82    mov         edx,dword ptr ds:[542D94];:TWorkAreas.:1
 00542E88    call        @DynArrayClear
 00542E8D    ret
>00542E8E    jmp         @HandleFinally
>00542E93    jmp         00542E7F
 00542E95    pop         edi
 00542E96    pop         esi
 00542E97    pop         ebx
 00542E98    pop         ecx
 00542E99    pop         ecx
 00542E9A    pop         ebp
 00542E9B    ret
*}
end;

//00542E9C
function TWorkAreas.GetItem(Index:Integer):TWorkArea;
begin
{*
 00542E9C    push        ebx
 00542E9D    push        esi
 00542E9E    mov         esi,edx
 00542EA0    mov         ebx,eax
 00542EA2    mov         edx,esi
 00542EA4    mov         eax,ebx
 00542EA6    call        TCollection.GetItem
 00542EAB    pop         esi
 00542EAC    pop         ebx
 00542EAD    ret
*}
end;

//005432C0
constructor TSubItems.Create;
begin
{*
 005432C0    push        ebx
 005432C1    push        esi
 005432C2    push        edi
 005432C3    test        dl,dl
>005432C5    je          005432CF
 005432C7    add         esp,0FFFFFFF0
 005432CA    call        @ClassCreate
 005432CF    mov         esi,ecx
 005432D1    mov         ebx,edx
 005432D3    mov         edi,eax
 005432D5    xor         edx,edx
 005432D7    mov         eax,edi
 005432D9    call        TStringList.Create
 005432DE    mov         dword ptr [edi+58],esi
 005432E1    mov         dl,1
 005432E3    mov         eax,[0046C204];TList
 005432E8    call        TObject.Create
 005432ED    mov         dword ptr [edi+5C],eax
 005432F0    mov         eax,edi
 005432F2    test        bl,bl
>005432F4    je          00543305
 005432F6    call        @AfterConstruction
 005432FB    pop         dword ptr fs:[0]
 00543302    add         esp,0C
 00543305    mov         eax,edi
 00543307    pop         edi
 00543308    pop         esi
 00543309    pop         ebx
 0054330A    ret
*}
end;

//0054330C
destructor TSubItems.Destroy();
begin
{*
 0054330C    push        ebx
 0054330D    push        esi
 0054330E    call        @BeforeDestruction
 00543313    mov         ebx,edx
 00543315    mov         esi,eax
 00543317    mov         eax,dword ptr [esi+5C]
 0054331A    call        TObject.Free
 0054331F    mov         dl,0FC
 00543321    and         dl,bl
 00543323    mov         eax,esi
 00543325    call        TStringList.Destroy
 0054332A    test        bl,bl
>0054332C    jle         00543335
 0054332E    mov         eax,esi
 00543330    call        @ClassDestroy
 00543335    pop         esi
 00543336    pop         ebx
 00543337    ret
*}
end;

//00543338
function TSubItems.Add(S:string):Integer;
begin
{*
 00543338    push        ebx
 00543339    push        esi
 0054333A    mov         ebx,eax
 0054333C    mov         eax,ebx
 0054333E    call        TStringList.Add
 00543343    mov         esi,eax
 00543345    or          edx,0FFFFFFFF
 00543348    mov         eax,dword ptr [ebx+5C]
 0054334B    call        TList.Add
 00543350    lea         edx,[esi+1]
 00543353    mov         eax,ebx
 00543355    call        TSubItems.RefreshItem
 0054335A    mov         eax,esi
 0054335C    pop         esi
 0054335D    pop         ebx
 0054335E    ret
*}
end;

//00543360
function TSubItems.AddObject(S:string; AObject:TObject):Integer;
begin
{*
 00543360    push        ebx
 00543361    push        esi
 00543362    mov         ebx,eax
 00543364    mov         eax,ebx
 00543366    call        TStringList.AddObject
 0054336B    mov         esi,eax
 0054336D    or          edx,0FFFFFFFF
 00543370    mov         eax,dword ptr [ebx+5C]
 00543373    call        TList.Add
 00543378    lea         edx,[esi+1]
 0054337B    mov         eax,ebx
 0054337D    call        TSubItems.RefreshItem
 00543382    mov         eax,esi
 00543384    pop         esi
 00543385    pop         ebx
 00543386    ret
*}
end;

//00543388
procedure TSubItems.Clear;
begin
{*
 00543388    push        ebx
 00543389    mov         ebx,eax
 0054338B    mov         eax,ebx
 0054338D    call        TStringList.Clear
 00543392    mov         eax,dword ptr [ebx+5C]
 00543395    mov         edx,dword ptr [eax]
 00543397    call        dword ptr [edx+8]
 0054339A    pop         ebx
 0054339B    ret
*}
end;

//0054339C
procedure TSubItems.Delete(Index:Integer);
begin
{*
 0054339C    push        ebx
 0054339D    push        esi
 0054339E    mov         esi,edx
 005433A0    mov         ebx,eax
 005433A2    mov         edx,esi
 005433A4    mov         eax,ebx
 005433A6    call        TStringList.Delete
 005433AB    mov         edx,esi
 005433AD    mov         eax,dword ptr [ebx+5C]
 005433B0    call        TList.Delete
 005433B5    mov         eax,dword ptr [ebx+58]
 005433B8    call        TListItem.Update
 005433BD    pop         esi
 005433BE    pop         ebx
 005433BF    ret
*}
end;

//005433C0
function TSubItems.GetHandle:HWND;
begin
{*
 005433C0    mov         eax,dword ptr [eax+58]
 005433C3    mov         eax,dword ptr [eax+4]
 005433C6    call        TListItems.GetHandle
 005433CB    ret
*}
end;

//005433CC
procedure TSubItems.SetColumnWidth(Index:Integer);
begin
{*
 005433CC    push        ebx
 005433CD    push        esi
 005433CE    mov         esi,edx
 005433D0    mov         eax,dword ptr [eax+58]
 005433D3    call        TListItem.GetListView
 005433D8    mov         ebx,eax
 005433DA    mov         eax,ebx
 005433DC    call        00546804
 005433E1    test        al,al
>005433E3    je          005433F6
 005433E5    mov         eax,dword ptr [ebx+2CC]
 005433EB    mov         eax,dword ptr [eax+8]
 005433EE    cmp         esi,dword ptr [eax+8]
 005433F1    setl        al
>005433F4    jmp         005433F8
 005433F6    xor         eax,eax
 005433F8    test        al,al
>005433FA    je          00543414
 005433FC    mov         edx,esi
 005433FE    mov         eax,ebx
 00543400    call        TCustomListView.GetColumnFromIndex
 00543405    cmp         dword ptr [eax+24],0FFFFFFFF
>00543409    jne         00543414
 0054340B    mov         edx,esi
 0054340D    mov         eax,ebx
 0054340F    call        TCustomListView.UpdateColumn
 00543414    pop         esi
 00543415    pop         ebx
 00543416    ret
*}
end;

//00543418
procedure TSubItems.Insert(Index:Integer; S:string);
begin
{*
 00543418    push        ebx
 00543419    push        esi
 0054341A    push        edi
 0054341B    mov         ebx,edx
 0054341D    mov         esi,eax
 0054341F    mov         edx,ebx
 00543421    mov         eax,esi
 00543423    call        TStringList.Insert
 00543428    or          ecx,0FFFFFFFF
 0054342B    mov         edx,ebx
 0054342D    mov         eax,dword ptr [esi+5C]
 00543430    call        TList.Insert
 00543435    lea         edi,[ebx+1]
 00543438    mov         eax,esi
 0054343A    mov         edx,dword ptr [eax]
 0054343C    call        dword ptr [edx+14]
 0054343F    mov         ebx,eax
 00543441    sub         ebx,edi
>00543443    jl          00543453
 00543445    inc         ebx
 00543446    mov         edx,edi
 00543448    mov         eax,esi
 0054344A    call        TSubItems.RefreshItem
 0054344F    inc         edi
 00543450    dec         ebx
>00543451    jne         00543446
 00543453    pop         edi
 00543454    pop         esi
 00543455    pop         ebx
 00543456    ret
*}
end;

//00543458
procedure TSubItems.Put(Index:Integer; const S:UnicodeString);
begin
{*
 00543458    push        ebx
 00543459    push        esi
 0054345A    mov         esi,edx
 0054345C    mov         ebx,eax
 0054345E    mov         edx,esi
 00543460    mov         eax,ebx
 00543462    call        TStringList.Put
 00543467    lea         edx,[esi+1]
 0054346A    mov         eax,ebx
 0054346C    call        TSubItems.RefreshItem
 00543471    pop         esi
 00543472    pop         ebx
 00543473    ret
*}
end;

//00543474
procedure TSubItems.RefreshItem(Index:Integer);
begin
{*
 00543474    push        ebx
 00543475    push        esi
 00543476    mov         esi,edx
 00543478    mov         ebx,eax
 0054347A    push        0FF
 0054347C    mov         eax,dword ptr [ebx+58]
 0054347F    call        TListItem.GetIndex
 00543484    push        eax
 00543485    mov         eax,ebx
 00543487    call        TSubItems.GetHandle
 0054348C    mov         ecx,esi
 0054348E    pop         edx
 0054348F    call        ListView_SetItemText
 00543494    mov         edx,esi
 00543496    mov         eax,ebx
 00543498    call        TSubItems.SetColumnWidth
 0054349D    pop         esi
 0054349E    pop         ebx
 0054349F    ret
*}
end;

//005434A0
procedure TSubItems.SetUpdateState(Updating:Boolean);
begin
{*
 005434A0    mov         eax,dword ptr [eax+58]
 005434A3    mov         eax,dword ptr [eax+4]
 005434A6    call        TListItems.SetUpdateState
 005434AB    ret
*}
end;

//005434AC
function TSubItems.GetImageIndex(Index:Integer):TImageIndex;
begin
{*
 005434AC    push        ebx
 005434AD    push        esi
 005434AE    mov         esi,edx
 005434B0    mov         ebx,eax
 005434B2    mov         edx,esi
 005434B4    mov         eax,dword ptr [ebx+5C]
 005434B7    call        TList.Get
 005434BC    pop         esi
 005434BD    pop         ebx
 005434BE    ret
*}
end;

//005434C0
procedure TSubItems.SetImageIndex(Index:Integer; Value:TImageIndex);
begin
{*
 005434C0    mov         eax,dword ptr [eax+5C]
 005434C3    call        TList.Put
 005434C8    ret
*}
end;

//005434CC
constructor TListItem.Create;
begin
{*
 005434CC    push        ebx
 005434CD    push        esi
 005434CE    push        edi
 005434CF    test        dl,dl
>005434D1    je          005434DB
 005434D3    add         esp,0FFFFFFF0
 005434D6    call        @ClassCreate
 005434DB    mov         esi,ecx
 005434DD    mov         ebx,edx
 005434DF    mov         edi,eax
 005434E1    xor         edx,edx
 005434E3    mov         eax,edi
 005434E5    call        TObject.Create
 005434EA    mov         dword ptr [edi+4],esi
 005434ED    mov         ecx,edi
 005434EF    mov         dl,1
 005434F1    mov         eax,[00542EB0];TSubItems
 005434F6    call        TSubItems.Create
 005434FB    mov         dword ptr [edi+8],eax
 005434FE    mov         dword ptr [edi+18],0FFFFFFFF
 00543505    mov         dword ptr [edi+1C],0FFFFFFFF
 0054350C    mov         dword ptr [edi+2C],0FFFFFFFF
 00543513    mov         eax,edi
 00543515    test        bl,bl
>00543517    je          00543528
 00543519    call        @AfterConstruction
 0054351E    pop         dword ptr fs:[0]
 00543525    add         esp,0C
 00543528    mov         eax,edi
 0054352A    pop         edi
 0054352B    pop         esi
 0054352C    pop         ebx
 0054352D    ret
*}
end;

//00543530
destructor TListItem.Destroy();
begin
{*
 00543530    push        ebx
 00543531    push        esi
 00543532    push        edi
 00543533    push        ebp
 00543534    call        @BeforeDestruction
 00543539    mov         ebx,edx
 0054353B    mov         ebp,eax
 0054353D    mov         byte ptr [ebp+24],1;TListItem.FDeleting:Boolean
 00543541    mov         eax,dword ptr [ebp+4];TListItem.FOwner:TListItems
 00543544    mov         eax,dword ptr [eax+4];TListItems.FOwner:TCustomListView
 00543547    cmp         ebp,dword ptr [eax+2F8];TCustomListView.FLastDropTarget:TListItem
>0054354D    jne         00543557
 0054354F    xor         edx,edx
 00543551    mov         dword ptr [eax+2F8],edx;TCustomListView.FLastDropTarget:TListItem
 00543557    mov         eax,ebp
 00543559    call        TListItem.GetListView
 0054355E    cmp         byte ptr [eax+42C],0;TCustomListView.FDeletingAllItems:Boolean
>00543565    jne         00543597
 00543567    mov         eax,ebp
 00543569    call        TListItem.GetListView
 0054356E    call        TWinControl.HandleAllocated
 00543573    test        al,al
>00543575    je          00543597
 00543577    mov         eax,ebp
 00543579    call        TListItem.GetHandle
 0054357E    mov         esi,eax
 00543580    mov         eax,ebp
 00543582    call        TListItem.GetIndex
 00543587    mov         edi,eax
 00543589    push        0
 0054358B    push        edi
 0054358C    push        1008
 00543591    push        esi
 00543592    call        user32.SendMessageW
 00543597    mov         eax,dword ptr [ebp+8];TListItem.FSubItems:TStrings
 0054359A    call        TObject.Free
 0054359F    mov         dl,0FC
 005435A1    and         dl,bl
 005435A3    mov         eax,ebp
 005435A5    call        TMemoryStream.Destroy
 005435AA    test        bl,bl
>005435AC    jle         005435B5
 005435AE    mov         eax,ebp
 005435B0    call        @ClassDestroy
 005435B5    pop         ebp
 005435B6    pop         edi
 005435B7    pop         esi
 005435B8    pop         ebx
 005435B9    ret
*}
end;

//005435BC
function TListItem.GetListView:TCustomListView;
begin
{*
 005435BC    mov         eax,dword ptr [eax+4]
 005435BF    mov         eax,dword ptr [eax+4]
 005435C2    ret
*}
end;

//005435C4
procedure TListItem.Delete;
begin
{*
 005435C4    push        ebx
 005435C5    mov         ebx,eax
 005435C7    cmp         byte ptr [ebx+24],0
>005435CB    jne         005435E3
 005435CD    mov         eax,ebx
 005435CF    call        TListItem.GetListView
 005435D4    cmp         ebx,dword ptr [eax+31C]
>005435DA    je          005435E3
 005435DC    mov         eax,ebx
 005435DE    call        TObject.Free
 005435E3    pop         ebx
 005435E4    ret
*}
end;

//005435E8
function TListItem.GetHandle:HWND;
begin
{*
 005435E8    push        ebx
 005435E9    mov         ebx,eax
 005435EB    mov         eax,ebx
 005435ED    call        TListItem.GetListView
 005435F2    call        TWinControl.GetHandle
 005435F7    pop         ebx
 005435F8    ret
*}
end;

//005435FC
procedure TListItem.MakeVisible(PartialOK:Boolean);
begin
{*
 005435FC    push        ebx
 005435FD    push        esi
 005435FE    mov         ebx,edx
 00543600    mov         esi,eax
 00543602    mov         eax,esi
 00543604    call        TListItem.GetIndex
 00543609    push        eax
 0054360A    mov         eax,esi
 0054360C    call        TListItem.GetHandle
 00543611    cmp         bl,1
 00543614    cmc
 00543615    sbb         ecx,ecx
 00543617    pop         edx
 00543618    call        ListView_EnsureVisible
 0054361D    pop         esi
 0054361E    pop         ebx
 0054361F    ret
*}
end;

//00543620
function TListItem.GetChecked:Boolean;
begin
{*
 00543620    push        ebx
 00543621    push        esi
 00543622    mov         esi,eax
 00543624    mov         eax,dword ptr [esi+4]
 00543627    mov         ebx,dword ptr [eax+4]
 0054362A    cmp         byte ptr [ebx+2D4],0
>00543631    jne         0054366D
 00543633    mov         eax,ebx
 00543635    call        TWinControl.HandleAllocated
 0054363A    test        al,al
>0054363C    je          0054366D
 0054363E    mov         eax,ebx
 00543640    call        TWinControl.GetHandle
 00543645    mov         ebx,eax
 00543647    mov         eax,esi
 00543649    call        TListItem.GetIndex
 0054364E    mov         esi,eax
 00543650    push        0F000
 00543655    push        esi
 00543656    push        102C
 0054365B    push        ebx
 0054365C    call        user32.SendMessageW
 00543661    shr         eax,0C
 00543664    dec         eax
 00543665    test        eax,eax
 00543667    setne       al
 0054366A    pop         esi
 0054366B    pop         ebx
 0054366C    ret
 0054366D    movzx       eax,byte ptr [esi+26]
 00543671    pop         esi
 00543672    pop         ebx
 00543673    ret
*}
end;

//00543674
procedure TListItem.SetChecked(Value:Boolean);
begin
{*
 00543674    push        ebx
 00543675    push        esi
 00543676    push        edi
 00543677    mov         ebx,edx
 00543679    mov         edi,eax
 0054367B    mov         eax,edi
 0054367D    call        TListItem.GetChecked
 00543682    cmp         bl,al
>00543684    je          005436BA
 00543686    mov         byte ptr [edi+26],bl
 00543689    mov         eax,dword ptr [edi+4]
 0054368C    mov         esi,dword ptr [eax+4]
 0054368F    cmp         byte ptr [esi+2D4],0
>00543696    jne         005436BA
 00543698    mov         eax,esi
 0054369A    call        TWinControl.HandleAllocated
 0054369F    test        al,al
>005436A1    je          005436BA
 005436A3    mov         eax,edi
 005436A5    call        TListItem.GetIndex
 005436AA    push        eax
 005436AB    mov         eax,esi
 005436AD    call        TWinControl.GetHandle
 005436B2    mov         ecx,ebx
 005436B4    pop         edx
 005436B5    call        ListView_SetCheckState
 005436BA    pop         edi
 005436BB    pop         esi
 005436BC    pop         ebx
 005436BD    ret
*}
end;

//005436C0
procedure TListItem.SetGroupID(Value:Integer);
begin
{*
 005436C0    push        ebx
 005436C1    push        esi
 005436C2    push        edi
 005436C3    add         esp,0FFFFFFC4
 005436C6    mov         esi,edx
 005436C8    mov         ebx,eax
 005436CA    cmp         esi,dword ptr [ebx+2C]
>005436CD    je          0054370F
 005436CF    mov         eax,esp
 005436D1    xor         ecx,ecx
 005436D3    mov         edx,3C
 005436D8    call        @FillChar
 005436DD    mov         dword ptr [esp],100
 005436E4    mov         eax,ebx
 005436E6    call        TListItem.GetIndex
 005436EB    mov         dword ptr [esp+4],eax
 005436EF    mov         dword ptr [esp+28],esi
 005436F3    mov         eax,ebx
 005436F5    call        TListItem.GetHandle
 005436FA    mov         edi,eax
 005436FC    mov         eax,esp
 005436FE    push        eax
 005436FF    push        0
 00543701    push        104C
 00543706    push        edi
 00543707    call        user32.SendMessageW
 0054370C    mov         dword ptr [ebx+2C],esi
 0054370F    add         esp,3C
 00543712    pop         edi
 00543713    pop         esi
 00543714    pop         ebx
 00543715    ret
*}
end;

//00543718
function TListItem.GetLeft:Integer;
begin
{*
 00543718    push        ebx
 00543719    add         esp,0FFFFFFF8
 0054371C    mov         ebx,eax
 0054371E    mov         edx,esp
 00543720    mov         eax,ebx
 00543722    call        TListItem.GetPosition
 00543727    mov         eax,dword ptr [esp]
 0054372A    pop         ecx
 0054372B    pop         edx
 0054372C    pop         ebx
 0054372D    ret
*}
end;

//00543730
procedure TListItem.SetLeft(Value:Integer);
begin
{*
 00543730    push        ebx
 00543731    push        esi
 00543732    add         esp,0FFFFFFF8
 00543735    mov         esi,edx
 00543737    mov         ebx,eax
 00543739    mov         eax,ebx
 0054373B    call        TListItem.GetTop
 00543740    mov         dword ptr [esp],esi
 00543743    mov         dword ptr [esp+4],eax
 00543747    mov         edx,esp
 00543749    mov         eax,ebx
 0054374B    call        TListItem.SetPosition
 00543750    pop         ecx
 00543751    pop         edx
 00543752    pop         esi
 00543753    pop         ebx
 00543754    ret
*}
end;

//00543758
function TListItem.GetTop:Integer;
begin
{*
 00543758    push        ebx
 00543759    add         esp,0FFFFFFF8
 0054375C    mov         ebx,eax
 0054375E    mov         edx,esp
 00543760    mov         eax,ebx
 00543762    call        TListItem.GetPosition
 00543767    mov         eax,dword ptr [esp+4]
 0054376B    pop         ecx
 0054376C    pop         edx
 0054376D    pop         ebx
 0054376E    ret
*}
end;

//00543770
procedure TListItem.SetTop(Value:Integer);
begin
{*
 00543770    push        ebx
 00543771    push        esi
 00543772    add         esp,0FFFFFFF8
 00543775    mov         esi,edx
 00543777    mov         ebx,eax
 00543779    mov         eax,ebx
 0054377B    call        TListItem.GetLeft
 00543780    mov         dword ptr [esp],eax
 00543783    mov         dword ptr [esp+4],esi
 00543787    mov         edx,esp
 00543789    mov         eax,ebx
 0054378B    call        TListItem.SetPosition
 00543790    pop         ecx
 00543791    pop         edx
 00543792    pop         esi
 00543793    pop         ebx
 00543794    ret
*}
end;

//00543798
procedure TListItem.Update;
begin
{*
 00543798    push        ebx
 00543799    push        esi
 0054379A    mov         ebx,eax
 0054379C    mov         eax,ebx
 0054379E    call        TListItem.GetHandle
 005437A3    mov         esi,eax
 005437A5    mov         eax,ebx
 005437A7    call        TListItem.GetIndex
 005437AC    mov         ebx,eax
 005437AE    push        0
 005437B0    push        ebx
 005437B1    push        102A
 005437B6    push        esi
 005437B7    call        user32.SendMessageW
 005437BC    test        eax,eax
 005437BE    setne       al
 005437C1    neg         al
 005437C3    sbb         eax,eax
 005437C5    pop         esi
 005437C6    pop         ebx
 005437C7    ret
*}
end;

//005437C8
procedure TListItem.SetCaption(const Value:UnicodeString);
begin
{*
 005437C8    push        ebx
 005437C9    push        esi
 005437CA    mov         esi,edx
 005437CC    mov         ebx,eax
 005437CE    mov         eax,esi
 005437D0    mov         edx,dword ptr [ebx+20]
 005437D3    call        @UStrEqual
>005437D8    je          0054387F
 005437DE    lea         eax,[ebx+20]
 005437E1    mov         edx,esi
 005437E3    call        @UStrAsg
 005437E8    mov         eax,dword ptr [ebx+4]
 005437EB    mov         eax,dword ptr [eax+4]
 005437EE    cmp         byte ptr [eax+2D4],0
>005437F5    jne         00543810
 005437F7    push        0FF
 005437F9    mov         eax,ebx
 005437FB    call        TListItem.GetIndex
 00543800    push        eax
 00543801    mov         eax,ebx
 00543803    call        TListItem.GetHandle
 00543808    xor         ecx,ecx
 0054380A    pop         edx
 0054380B    call        ListView_SetItemText
 00543810    mov         eax,ebx
 00543812    call        TListItem.GetListView
 00543817    call        00546804
 0054381C    test        al,al
>0054381E    je          00543839
 00543820    mov         eax,ebx
 00543822    call        TListItem.GetListView
 00543827    mov         eax,dword ptr [eax+2CC]
 0054382D    mov         eax,dword ptr [eax+8]
 00543830    cmp         dword ptr [eax+8],0
 00543834    setg        al
>00543837    jmp         0054383B
 00543839    xor         eax,eax
 0054383B    test        al,al
>0054383D    je          0054385F
 0054383F    mov         eax,ebx
 00543841    call        TListItem.GetListView
 00543846    xor         edx,edx
 00543848    call        TCustomListView.GetColumnFromIndex
 0054384D    cmp         dword ptr [eax+24],0FFFFFFFF
>00543851    jg          0054385F
 00543853    mov         eax,ebx
 00543855    call        TListItem.GetListView
 0054385A    call        TCustomListView.UpdateColumns
 0054385F    mov         eax,ebx
 00543861    call        TListItem.GetListView
 00543866    movzx       eax,byte ptr [eax+2B9]
 0054386D    add         al,0FE
 0054386F    sub         al,2
>00543871    jae         0054387F
 00543873    mov         eax,ebx
 00543875    call        TListItem.GetListView
 0054387A    call        TCustomListView.AlphaSort
 0054387F    pop         esi
 00543880    pop         ebx
 00543881    ret
*}
end;

//00543884
procedure TListItem.SetData(Value:Controls.TCustomData);
begin
{*
 00543884    push        ebx
 00543885    mov         ebx,eax
 00543887    cmp         edx,dword ptr [ebx+28]
>0054388A    je          005438B1
 0054388C    mov         dword ptr [ebx+28],edx
 0054388F    mov         eax,ebx
 00543891    call        TListItem.GetListView
 00543896    movzx       eax,byte ptr [eax+2B9]
 0054389D    sub         al,1
>0054389F    je          005438A5
 005438A1    sub         al,2
>005438A3    jne         005438B1
 005438A5    mov         eax,ebx
 005438A7    call        TListItem.GetListView
 005438AC    call        TCustomListView.AlphaSort
 005438B1    pop         ebx
 005438B2    ret
*}
end;

//005438B4
{*function sub_005438B4(?:TListItem; ?:?):Boolean;
begin
 005438B4    push        ebx
 005438B5    push        esi
 005438B6    push        edi
 005438B7    mov         esi,eax
 005438B9    cmp         edx,4
>005438BC    ja          005438FC
 005438BE    jmp         dword ptr [edx*4+5438C5]
 005438BE    dd          005438D9
 005438BE    dd          005438E0
 005438BE    dd          005438E7
 005438BE    dd          005438EE
 005438BE    dd          005438F5
 005438D9    mov         ebx,4
>005438DE    jmp         005438FE
 005438E0    mov         ebx,8
>005438E5    jmp         005438FE
 005438E7    mov         ebx,1
>005438EC    jmp         005438FE
 005438EE    mov         ebx,2
>005438F3    jmp         005438FE
 005438F5    mov         ebx,20
>005438FA    jmp         005438FE
 005438FC    xor         ebx,ebx
 005438FE    mov         eax,esi
 00543900    call        TListItem.GetHandle
 00543905    mov         edi,eax
 00543907    mov         eax,esi
 00543909    call        TListItem.GetIndex
 0054390E    mov         esi,eax
 00543910    push        ebx
 00543911    push        esi
 00543912    push        102C
 00543917    push        edi
 00543918    call        user32.SendMessageW
 0054391D    test        ebx,eax
 0054391F    setne       al
 00543922    pop         edi
 00543923    pop         esi
 00543924    pop         ebx
 00543925    ret
end;*}

//00543928
procedure TListItem.SetState(Index:Integer; State:Boolean);
begin
{*
 00543928    push        ebx
 00543929    push        esi
 0054392A    push        edi
 0054392B    mov         ebx,eax
 0054392D    cmp         edx,4
>00543930    ja          00543970
 00543932    jmp         dword ptr [edx*4+543939]
 00543932    dd          0054394D
 00543932    dd          00543954
 00543932    dd          0054395B
 00543932    dd          00543962
 00543932    dd          00543969
 0054394D    mov         esi,4
>00543952    jmp         00543972
 00543954    mov         esi,8
>00543959    jmp         00543972
 0054395B    mov         esi,1
>00543960    jmp         00543972
 00543962    mov         esi,2
>00543967    jmp         00543972
 00543969    mov         esi,20
>0054396E    jmp         00543972
 00543970    xor         esi,esi
 00543972    test        cl,cl
>00543974    je          0054397A
 00543976    mov         edi,esi
>00543978    jmp         0054397C
 0054397A    xor         edi,edi
 0054397C    push        esi
 0054397D    mov         eax,ebx
 0054397F    call        TListItem.GetIndex
 00543984    push        eax
 00543985    mov         eax,ebx
 00543987    call        TListItem.GetHandle
 0054398C    mov         ecx,edi
 0054398E    pop         edx
 0054398F    call        ListView_SetItemState
 00543994    pop         edi
 00543995    pop         esi
 00543996    pop         ebx
 00543997    ret
*}
end;

//00543998
procedure TListItem.SetImage(Index:Integer; Value:UITypes.TImageIndex);
begin
{*
 00543998    push        ebx
 00543999    push        esi
 0054399A    push        edi
 0054399B    add         esp,0FFFFFFC4
 0054399E    mov         edi,ecx
 005439A0    mov         esi,eax
 005439A2    xor         ebx,ebx
 005439A4    sub         edx,1
>005439A7    jb          005439B7
>005439A9    je          00543A16
 005439AB    dec         edx
>005439AC    je          00543A5B
>005439B2    jmp         00543AA4
 005439B7    cmp         edi,dword ptr [esi+0C]
>005439BA    je          00543AA4
 005439C0    mov         bl,1
 005439C2    mov         dword ptr [esi+0C],edi
 005439C5    mov         eax,dword ptr [esi+4]
 005439C8    mov         eax,dword ptr [eax+4]
 005439CB    cmp         byte ptr [eax+2D4],0
>005439D2    jne         00543AA4
 005439D8    mov         dword ptr [esp],2
 005439DF    mov         dword ptr [esp+1C],0FFFFFFFF
 005439E7    mov         eax,esi
 005439E9    call        TListItem.GetIndex
 005439EE    mov         dword ptr [esp+4],eax
 005439F2    xor         eax,eax
 005439F4    mov         dword ptr [esp+8],eax
 005439F8    mov         eax,esi
 005439FA    call        TListItem.GetHandle
 005439FF    mov         edi,eax
 00543A01    mov         eax,esp
 00543A03    push        eax
 00543A04    push        0
 00543A06    push        104C
 00543A0B    push        edi
 00543A0C    call        user32.SendMessageW
>00543A11    jmp         00543AA4
 00543A16    cmp         edi,dword ptr [esi+18]
>00543A19    je          00543AA4
 00543A1F    mov         bl,1
 00543A21    mov         dword ptr [esi+18],edi
 00543A24    mov         eax,dword ptr [esi+4]
 00543A27    mov         eax,dword ptr [eax+4]
 00543A2A    cmp         byte ptr [eax+2D4],0
>00543A31    jne         00543AA4
 00543A33    mov         eax,esi
 00543A35    call        TListItem.GetHandle
 00543A3A    mov         edi,eax
 00543A3C    mov         eax,esi
 00543A3E    call        TListItem.GetIndex
 00543A43    mov         edx,dword ptr [esi+18]
 00543A46    inc         edx
 00543A47    push        0F00
 00543A4C    mov         ecx,edx
 00543A4E    shl         ecx,8
 00543A51    mov         edx,edi
 00543A53    xchg        eax,edx
 00543A54    call        ListView_SetItemState
>00543A59    jmp         00543AA4
 00543A5B    cmp         edi,dword ptr [esi+1C]
>00543A5E    je          00543AA4
 00543A60    mov         bl,1
 00543A62    mov         dword ptr [esi+1C],edi
 00543A65    mov         eax,dword ptr [esi+4]
 00543A68    mov         eax,dword ptr [eax+4]
 00543A6B    cmp         byte ptr [eax+2FC],0
>00543A72    je          00543A7B
 00543A74    cmp         edi,0FFFFFFFF
>00543A77    jne         00543A7B
 00543A79    xor         edi,edi
 00543A7B    cmp         byte ptr [eax+2D4],0
>00543A82    jne         00543AA4
 00543A84    push        0F000
 00543A89    mov         eax,esi
 00543A8B    call        TListItem.GetIndex
 00543A90    push        eax
 00543A91    mov         eax,esi
 00543A93    call        TListItem.GetHandle
 00543A98    lea         ecx,[edi+1]
 00543A9B    shl         ecx,0C
 00543A9E    pop         edx
 00543A9F    call        ListView_SetItemState
 00543AA4    test        bl,bl
>00543AA6    je          00543AD5
 00543AA8    mov         eax,dword ptr [esi+4]
 00543AAB    mov         eax,dword ptr [eax+4]
 00543AAE    cmp         byte ptr [eax+2D4],0
>00543AB5    jne         00543AD5
 00543AB7    mov         eax,esi
 00543AB9    call        TListItem.GetIndex
 00543ABE    push        eax
 00543ABF    mov         eax,esi
 00543AC1    call        TListItem.GetIndex
 00543AC6    push        eax
 00543AC7    mov         eax,esi
 00543AC9    call        TListItem.GetListView
 00543ACE    pop         edx
 00543ACF    pop         ecx
 00543AD0    call        TCustomListView.UpdateItems
 00543AD5    add         esp,3C
 00543AD8    pop         edi
 00543AD9    pop         esi
 00543ADA    pop         ebx
 00543ADB    ret
*}
end;

//00543ADC
procedure TListItem.SetIndent(Value:Integer);
begin
{*
 00543ADC    push        ebx
 00543ADD    push        esi
 00543ADE    add         esp,0FFFFFFC4
 00543AE1    mov         ebx,eax
 00543AE3    cmp         edx,dword ptr [ebx+10]
>00543AE6    je          00543B4D
 00543AE8    mov         dword ptr [ebx+10],edx
 00543AEB    mov         eax,dword ptr [ebx+4]
 00543AEE    mov         eax,dword ptr [eax+4]
 00543AF1    cmp         byte ptr [eax+2D4],0
>00543AF8    jne         00543B4D
 00543AFA    mov         dword ptr [esp],10
 00543B01    mov         dword ptr [esp+24],edx
 00543B05    mov         eax,ebx
 00543B07    call        TListItem.GetIndex
 00543B0C    mov         dword ptr [esp+4],eax
 00543B10    xor         eax,eax
 00543B12    mov         dword ptr [esp+8],eax
 00543B16    mov         eax,ebx
 00543B18    call        TListItem.GetHandle
 00543B1D    mov         esi,eax
 00543B1F    mov         eax,esp
 00543B21    push        eax
 00543B22    push        0
 00543B24    push        104C
 00543B29    push        esi
 00543B2A    call        user32.SendMessageW
 00543B2F    mov         eax,ebx
 00543B31    call        TListItem.GetIndex
 00543B36    push        eax
 00543B37    mov         eax,ebx
 00543B39    call        TListItem.GetIndex
 00543B3E    push        eax
 00543B3F    mov         eax,ebx
 00543B41    call        TListItem.GetListView
 00543B46    pop         edx
 00543B47    pop         ecx
 00543B48    call        TCustomListView.UpdateItems
 00543B4D    add         esp,3C
 00543B50    pop         esi
 00543B51    pop         ebx
 00543B52    ret
*}
end;

//00543B54
procedure TListItem.Assign(Source:TPersistent);
begin
{*
 00543B54    push        ebx
 00543B55    push        esi
 00543B56    mov         esi,edx
 00543B58    mov         ebx,eax
 00543B5A    mov         eax,esi
 00543B5C    mov         edx,dword ptr ds:[52CF04];TListItem
 00543B62    call        @IsClass
 00543B67    test        al,al
>00543B69    je          00543BE9
 00543B6B    mov         eax,esi
 00543B6D    mov         edx,dword ptr ds:[52CF04];TListItem
 00543B73    call        @AsClass
 00543B78    mov         esi,eax
 00543B7A    mov         edx,dword ptr [esi+20]
 00543B7D    mov         eax,ebx
 00543B7F    call        TListItem.SetCaption
 00543B84    mov         edx,dword ptr [esi+28]
 00543B87    mov         eax,ebx
 00543B89    call        TListItem.SetData
 00543B8E    mov         ecx,dword ptr [esi+0C]
 00543B91    xor         edx,edx
 00543B93    mov         eax,ebx
 00543B95    call        TListItem.SetImage
 00543B9A    mov         edx,dword ptr [esi+10]
 00543B9D    mov         eax,ebx
 00543B9F    call        TListItem.SetIndent
 00543BA4    mov         ecx,dword ptr [esi+18]
 00543BA7    mov         edx,1
 00543BAC    mov         eax,ebx
 00543BAE    call        TListItem.SetImage
 00543BB3    mov         ecx,dword ptr [esi+1C]
 00543BB6    mov         edx,2
 00543BBB    mov         eax,ebx
 00543BBD    call        TListItem.SetImage
 00543BC2    mov         edx,dword ptr [esi+8]
 00543BC5    mov         eax,ebx
 00543BC7    call        TListItem.SetSubItems
 00543BCC    mov         eax,esi
 00543BCE    call        TListItem.GetChecked
 00543BD3    mov         edx,eax
 00543BD5    mov         eax,ebx
 00543BD7    call        TListItem.SetChecked
 00543BDC    mov         edx,dword ptr [esi+2C]
 00543BDF    mov         eax,ebx
 00543BE1    call        TListItem.SetGroupID
 00543BE6    pop         esi
 00543BE7    pop         ebx
 00543BE8    ret
 00543BE9    mov         edx,esi
 00543BEB    mov         eax,ebx
 00543BED    call        TPersistent.Assign
 00543BF2    pop         esi
 00543BF3    pop         ebx
 00543BF4    ret
*}
end;

//00543BF8
function TListItem.IsEqual(Item:TListItem):Boolean;
begin
{*
 00543BF8    push        ebx
 00543BF9    push        esi
 00543BFA    mov         esi,edx
 00543BFC    mov         ebx,eax
 00543BFE    mov         eax,dword ptr [ebx+20]
 00543C01    mov         edx,dword ptr [esi+20]
 00543C04    call        @UStrEqual
>00543C09    jne         00543C13
 00543C0B    mov         eax,dword ptr [ebx+28]
 00543C0E    cmp         eax,dword ptr [esi+28]
>00543C11    je          00543C18
 00543C13    xor         eax,eax
 00543C15    pop         esi
 00543C16    pop         ebx
 00543C17    ret
 00543C18    mov         al,1
 00543C1A    pop         esi
 00543C1B    pop         ebx
 00543C1C    ret
*}
end;

//00543C20
procedure TListItem.SetSubItems(Value:Classes.TStrings);
begin
{*
 00543C20    push        esi
 00543C21    mov         esi,eax
 00543C23    test        edx,edx
>00543C25    je          00543C2F
 00543C27    mov         eax,dword ptr [esi+8]
 00543C2A    mov         ecx,dword ptr [eax]
 00543C2C    call        dword ptr [ecx+8]
 00543C2F    pop         esi
 00543C30    ret
*}
end;

//00543C34
function TListItem.GetIndex:Integer;
begin
{*
 00543C34    mov         edx,dword ptr [eax+4]
 00543C37    mov         ecx,dword ptr [edx+4]
 00543C3A    cmp         byte ptr [ecx+2D4],0
>00543C41    je          00543C47
 00543C43    mov         eax,dword ptr [eax+14]
 00543C46    ret
 00543C47    xchg        eax,edx
 00543C48    call        TListItems.IndexOf
 00543C4D    ret
*}
end;

//00543C50
function TListItem.GetPosition:TPoint;
begin
{*
 00543C50    push        ebx
 00543C51    push        esi
 00543C52    push        ecx
 00543C53    mov         dword ptr [esp],edx
 00543C56    mov         ebx,eax
 00543C58    mov         eax,ebx
 00543C5A    call        TListItem.GetHandle
 00543C5F    mov         esi,eax
 00543C61    mov         eax,ebx
 00543C63    call        TListItem.GetIndex
 00543C68    mov         ebx,eax
 00543C6A    mov         eax,dword ptr [esp]
 00543C6D    push        eax
 00543C6E    push        ebx
 00543C6F    push        1010
 00543C74    push        esi
 00543C75    call        user32.SendMessageW
 00543C7A    pop         edx
 00543C7B    pop         esi
 00543C7C    pop         ebx
 00543C7D    ret
*}
end;

//00543C80
procedure TListItem.SetPosition(Value:TPoint);
begin
{*
 00543C80    push        ebx
 00543C81    push        esi
 00543C82    add         esp,0FFFFFFF8
 00543C85    mov         esi,edx
 00543C87    mov         ebx,eax
 00543C89    mov         edx,esp
 00543C8B    mov         eax,ebx
 00543C8D    call        TListItem.GetPosition
 00543C92    mov         eax,dword ptr [esi]
 00543C94    cmp         eax,dword ptr [esp]
>00543C97    jne         00543CA2
 00543C99    mov         eax,dword ptr [esi+4]
 00543C9C    cmp         eax,dword ptr [esp+4]
>00543CA0    je          00543CCF
 00543CA2    mov         eax,ebx
 00543CA4    call        TListItem.GetListView
 00543CA9    movzx       eax,byte ptr [eax+29D]
 00543CB0    sub         al,2
>00543CB2    jae         00543CCF
 00543CB4    mov         eax,dword ptr [esi+4]
 00543CB7    push        eax
 00543CB8    mov         eax,ebx
 00543CBA    call        TListItem.GetIndex
 00543CBF    push        eax
 00543CC0    mov         eax,ebx
 00543CC2    call        TListItem.GetHandle
 00543CC7    mov         ecx,dword ptr [esi]
 00543CC9    pop         edx
 00543CCA    call        ListView_SetItemPosition32
 00543CCF    pop         ecx
 00543CD0    pop         edx
 00543CD1    pop         esi
 00543CD2    pop         ebx
 00543CD3    ret
*}
end;

//00543CD4
function TListItem.DisplayRect(Code:TDisplayCode):TRect;
begin
{*
 00543CD4    push        ebx
 00543CD5    push        esi
 00543CD6    push        edi
 00543CD7    mov         edi,ecx
 00543CD9    mov         ebx,edx
 00543CDB    mov         esi,eax
 00543CDD    movzx       eax,bl
 00543CE0    mov         eax,dword ptr [eax*4+7A15F4]
 00543CE7    push        eax
 00543CE8    mov         eax,esi
 00543CEA    call        TListItem.GetIndex
 00543CEF    push        eax
 00543CF0    mov         eax,esi
 00543CF2    call        TListItem.GetHandle
 00543CF7    mov         ecx,edi
 00543CF9    pop         edx
 00543CFA    call        ListView_GetItemRect
 00543CFF    pop         edi
 00543D00    pop         esi
 00543D01    pop         ebx
 00543D02    ret
*}
end;

//00543D04
function TListItem.GetSubItemImage(Index:Integer):Integer;
begin
{*
 00543D04    mov         eax,dword ptr [eax+8]
 00543D07    call        TSubItems.GetImageIndex
 00543D0C    ret
*}
end;

//00543D10
procedure TListItem.SetSubItemImage(Index:Integer; Value:Integer);
begin
{*
 00543D10    push        ebx
 00543D11    push        esi
 00543D12    push        edi
 00543D13    add         esp,0FFFFFFC4
 00543D16    mov         edi,ecx
 00543D18    mov         esi,edx
 00543D1A    mov         ebx,eax
 00543D1C    mov         edx,esi
 00543D1E    mov         eax,dword ptr [ebx+8]
 00543D21    call        TSubItems.GetImageIndex
 00543D26    cmp         edi,eax
>00543D28    je          00543D7D
 00543D2A    mov         ecx,edi
 00543D2C    mov         edx,esi
 00543D2E    mov         eax,dword ptr [ebx+8]
 00543D31    call        TSubItems.SetImageIndex
 00543D36    mov         eax,dword ptr [ebx+4]
 00543D39    mov         eax,dword ptr [eax+4]
 00543D3C    cmp         byte ptr [eax+2D4],0
>00543D43    jne         00543D7D
 00543D45    mov         dword ptr [esp],2
 00543D4C    mov         dword ptr [esp+1C],0FFFFFFFF
 00543D54    mov         eax,ebx
 00543D56    call        TListItem.GetIndex
 00543D5B    mov         dword ptr [esp+4],eax
 00543D5F    inc         esi
 00543D60    mov         dword ptr [esp+8],esi
 00543D64    mov         eax,ebx
 00543D66    call        TListItem.GetHandle
 00543D6B    mov         ebx,eax
 00543D6D    mov         eax,esp
 00543D6F    push        eax
 00543D70    push        0
 00543D72    push        104C
 00543D77    push        ebx
 00543D78    call        user32.SendMessageW
 00543D7D    add         esp,3C
 00543D80    pop         edi
 00543D81    pop         esi
 00543D82    pop         ebx
 00543D83    ret
*}
end;

//00543D84
function TListItemsEnumerator.GetCurrent:TListItem;
begin
{*
 00543D84    mov         edx,dword ptr [eax+4]
 00543D87    mov         eax,dword ptr [eax+8]
 00543D8A    call        TListItems.GetItem
 00543D8F    ret
*}
end;

//00543D90
constructor TParaAttributes.Create;
begin
{*
 00543D90    push        ebx
 00543D91    push        esi
 00543D92    push        edi
 00543D93    test        dl,dl
>00543D95    je          00543D9F
 00543D97    add         esp,0FFFFFFF0
 00543D9A    call        @ClassCreate
 00543D9F    mov         esi,ecx
 00543DA1    mov         ebx,edx
 00543DA3    mov         edi,eax
 00543DA5    xor         edx,edx
 00543DA7    mov         eax,edi
 00543DA9    call        TObject.Create
 00543DAE    mov         dword ptr [edi+4],esi
 00543DB1    mov         eax,edi
 00543DB3    test        bl,bl
>00543DB5    je          00543DC6
 00543DB7    call        @AfterConstruction
 00543DBC    pop         dword ptr fs:[0]
 00543DC3    add         esp,0C
 00543DC6    mov         eax,edi
 00543DC8    pop         edi
 00543DC9    pop         esi
 00543DCA    pop         ebx
 00543DCB    ret
*}
end;

//00543DCC
destructor TListItems.Destroy();
begin
{*
 00543DCC    push        ebx
 00543DCD    push        esi
 00543DCE    call        @BeforeDestruction
 00543DD3    mov         ebx,edx
 00543DD5    mov         esi,eax
 00543DD7    mov         eax,esi
 00543DD9    call        TListItems.Clear
 00543DDE    mov         dl,0FC
 00543DE0    and         dl,bl
 00543DE2    mov         eax,esi
 00543DE4    call        TMemoryStream.Destroy
 00543DE9    test        bl,bl
>00543DEB    jle         00543DF4
 00543DED    mov         eax,esi
 00543DEF    call        @ClassDestroy
 00543DF4    pop         esi
 00543DF5    pop         ebx
 00543DF6    ret
*}
end;

//00543DF8
function TListItems.Add:TListItem;
begin
{*
 00543DF8    or          ecx,0FFFFFFFF
 00543DFB    xor         edx,edx
 00543DFD    call        TListItems.AddItem
 00543E02    ret
*}
end;

//00543E04
function TListItems.AddItem(Item:TListItem; Index:Integer):TListItem;
begin
{*
 00543E04    push        ebx
 00543E05    push        esi
 00543E06    push        edi
 00543E07    push        ebp
 00543E08    add         esp,0FFFFFFC4
 00543E0B    mov         edi,ecx
 00543E0D    mov         esi,eax
 00543E0F    test        edx,edx
>00543E11    jne         00543E22
 00543E13    mov         eax,dword ptr [esi+4]
 00543E16    mov         edx,dword ptr [eax]
 00543E18    call        dword ptr [edx+138]
 00543E1E    mov         ebx,eax
>00543E20    jmp         00543E24
 00543E22    mov         ebx,edx
 00543E24    test        edi,edi
>00543E26    jge         00543E31
 00543E28    mov         eax,esi
 00543E2A    call        TListItems.GetCount
 00543E2F    mov         edi,eax
 00543E31    mov         eax,esi
 00543E33    call        TListItems.GetHandle
 00543E38    mov         ebp,eax
 00543E3A    push        esp
 00543E3B    mov         ecx,ebx
 00543E3D    mov         edx,edi
 00543E3F    mov         eax,esi
 00543E41    call        TListItems.CreateItem
 00543E46    mov         eax,esp
 00543E48    push        eax
 00543E49    push        0
 00543E4B    push        104D
 00543E50    push        ebp
 00543E51    call        user32.SendMessageW
 00543E56    mov         eax,ebx
 00543E58    add         esp,3C
 00543E5B    pop         ebp
 00543E5C    pop         edi
 00543E5D    pop         esi
 00543E5E    pop         ebx
 00543E5F    ret
*}
end;

//00543E60
function TListItems.GetCount:Integer;
begin
{*
 00543E60    push        ebx
 00543E61    mov         ebx,eax
 00543E63    mov         eax,dword ptr [ebx+4]
 00543E66    call        TWinControl.HandleAllocated
 00543E6B    test        al,al
>00543E6D    je          00543E89
 00543E6F    mov         eax,ebx
 00543E71    call        TListItems.GetHandle
 00543E76    mov         ebx,eax
 00543E78    push        0
 00543E7A    push        0
 00543E7C    push        1004
 00543E81    push        ebx
 00543E82    call        user32.SendMessageW
 00543E87    pop         ebx
 00543E88    ret
 00543E89    xor         eax,eax
 00543E8B    pop         ebx
 00543E8C    ret
*}
end;

//00543E90
function TListItems.GetHandle:HWND;
begin
{*
 00543E90    mov         eax,dword ptr [eax+4]
 00543E93    call        TWinControl.GetHandle
 00543E98    ret
*}
end;

//00543E9C
function TListItems.GetItem(Index:Integer):TListItem;
begin
{*
 00543E9C    push        ebx
 00543E9D    push        esi
 00543E9E    push        edi
 00543E9F    add         esp,0FFFFFFC4
 00543EA2    mov         edi,edx
 00543EA4    mov         ebx,eax
 00543EA6    xor         esi,esi
 00543EA8    mov         eax,dword ptr [ebx+4]
 00543EAB    call        TWinControl.GetHandle
 00543EB0    test        eax,eax
>00543EB2    je          00543F1D
 00543EB4    mov         eax,dword ptr [ebx+4]
 00543EB7    cmp         byte ptr [eax+2D4],0
>00543EBE    je          00543EEB
 00543EC0    mov         eax,esp
 00543EC2    xor         ecx,ecx
 00543EC4    mov         edx,3C
 00543EC9    call        @FillChar
 00543ECE    xor         eax,eax
 00543ED0    mov         dword ptr [esp],eax
 00543ED3    mov         dword ptr [esp+4],edi
 00543ED7    xor         eax,eax
 00543ED9    mov         dword ptr [esp+8],eax
 00543EDD    mov         edx,esp
 00543EDF    mov         eax,dword ptr [ebx+4]
 00543EE2    call        00546B2C
 00543EE7    mov         esi,eax
>00543EE9    jmp         00543F1D
 00543EEB    mov         dword ptr [esp],4
 00543EF2    mov         dword ptr [esp+4],edi
 00543EF6    xor         eax,eax
 00543EF8    mov         dword ptr [esp+8],eax
 00543EFC    mov         eax,ebx
 00543EFE    call        TListItems.GetHandle
 00543F03    mov         ebx,eax
 00543F05    mov         eax,esp
 00543F07    push        eax
 00543F08    push        0
 00543F0A    push        104B
 00543F0F    push        ebx
 00543F10    call        user32.SendMessageW
 00543F15    test        eax,eax
>00543F17    je          00543F1D
 00543F19    mov         esi,dword ptr [esp+20]
 00543F1D    mov         eax,esi
 00543F1F    add         esp,3C
 00543F22    pop         edi
 00543F23    pop         esi
 00543F24    pop         ebx
 00543F25    ret
*}
end;

//00543F28
procedure TListItems.IndexOf(Value:TListItem);
begin
{*
 00543F28    push        ebx
 00543F29    add         esp,0FFFFFFE8
 00543F2C    mov         dword ptr [esp],1
 00543F33    mov         dword ptr [esp+8],edx
 00543F37    call        TListItems.GetHandle
 00543F3C    mov         ebx,eax
 00543F3E    mov         eax,esp
 00543F40    push        eax
 00543F41    push        0FF
 00543F43    push        1053
 00543F48    push        ebx
 00543F49    call        user32.SendMessageW
 00543F4E    add         esp,18
 00543F51    pop         ebx
 00543F52    ret
*}
end;

//00543F54
procedure sub_00543F54(?:TListItems; ?:Integer);
begin
{*
 00543F54    push        ebx
 00543F55    mov         ebx,edx
 00543F57    test        ebx,ebx
>00543F59    je          00543F70
 00543F5B    call        TListItems.GetHandle
 00543F60    push        1
 00543F62    push        ebx
 00543F63    push        102F
 00543F68    push        eax
 00543F69    call        user32.SendMessageW
 00543F6E    pop         ebx
 00543F6F    ret
 00543F70    call        TListItems.GetHandle
 00543F75    push        0
 00543F77    push        ebx
 00543F78    push        102F
 00543F7D    push        eax
 00543F7E    call        user32.SendMessageW
 00543F83    pop         ebx
 00543F84    ret
*}
end;

//00543F88
procedure TListItems.Clear;
begin
{*
 00543F88    push        ebx
 00543F89    mov         ebx,eax
 00543F8B    mov         eax,dword ptr [ebx+4]
 00543F8E    call        TWinControl.HandleAllocated
 00543F93    test        al,al
>00543F95    je          00543FAF
 00543F97    mov         eax,ebx
 00543F99    call        TListItems.GetHandle
 00543F9E    mov         ebx,eax
 00543FA0    push        0
 00543FA2    push        0
 00543FA4    push        1009
 00543FA9    push        ebx
 00543FAA    call        user32.SendMessageW
 00543FAF    pop         ebx
 00543FB0    ret
*}
end;

//00543FB4
procedure TListItems.BeginUpdate;
begin
{*
 00543FB4    push        ebx
 00543FB5    mov         ebx,eax
 00543FB7    cmp         dword ptr [ebx+8],0
>00543FBB    jne         00543FC6
 00543FBD    mov         dl,1
 00543FBF    mov         eax,ebx
 00543FC1    call        TListItems.SetUpdateState
 00543FC6    inc         dword ptr [ebx+8]
 00543FC9    pop         ebx
 00543FCA    ret
*}
end;

//00543FCC
procedure TListItems.SetUpdateState(Updating:Boolean);
begin
{*
 00543FCC    push        ebp
 00543FCD    mov         ebp,esp
 00543FCF    push        ecx
 00543FD0    push        ebx
 00543FD1    push        esi
 00543FD2    push        edi
 00543FD3    mov         dword ptr [ebp-4],eax
 00543FD6    test        dl,dl
>00543FD8    je          0054409D
 00543FDE    mov         eax,dword ptr [ebp-4]
 00543FE1    mov         eax,dword ptr [eax+4]
 00543FE4    movzx       edx,byte ptr [eax+2B9]
 00543FEB    mov         byte ptr [eax+318],dl
 00543FF1    xor         edx,edx
 00543FF3    call        TListView.SetSortType
 00543FF8    mov         eax,dword ptr [ebp-4]
 00543FFB    mov         eax,dword ptr [eax+4]
 00543FFE    mov         eax,dword ptr [eax+2CC]
 00544004    mov         eax,dword ptr [eax+8]
 00544007    mov         esi,dword ptr [eax+8]
 0054400A    dec         esi
 0054400B    test        esi,esi
>0054400D    jl          00544046
 0054400F    inc         esi
 00544010    xor         edi,edi
 00544012    mov         eax,dword ptr [ebp-4]
 00544015    mov         eax,dword ptr [eax+4]
 00544018    mov         eax,dword ptr [eax+2CC]
 0054401E    mov         edx,edi
 00544020    call        TListColumns.GetItem
 00544025    mov         ebx,eax
 00544027    mov         eax,dword ptr [ebx+24]
 0054402A    test        eax,eax
>0054402C    jge         00544042
 0054402E    mov         dword ptr [ebx+20],eax
 00544031    mov         eax,ebx
 00544033    call        TListColumn.GetWidth
 00544038    mov         dword ptr [ebx+24],eax
 0054403B    mov         eax,ebx
 0054403D    call        TListColumn.DoChange
 00544042    inc         edi
 00544043    dec         esi
>00544044    jne         00544012
 00544046    push        0
 00544048    push        0
 0054404A    push        0B
 0054404C    mov         eax,dword ptr [ebp-4]
 0054404F    call        TListItems.GetHandle
 00544054    push        eax
 00544055    call        user32.SendMessageW
 0054405A    mov         eax,dword ptr [ebp-4]
 0054405D    mov         eax,dword ptr [eax+4]
 00544060    call        00546804
 00544065    test        al,al
>00544067    je          0054418D
 0054406D    mov         eax,dword ptr [ebp-4]
 00544070    mov         eax,dword ptr [eax+4]
 00544073    call        00546810
 00544078    test        al,al
>0054407A    je          0054418D
 00544080    push        0
 00544082    push        0
 00544084    push        0B
 00544086    mov         eax,dword ptr [ebp-4]
 00544089    mov         eax,dword ptr [eax+4]
 0054408C    mov         eax,dword ptr [eax+2EC]
 00544092    push        eax
 00544093    call        user32.SendMessageW
>00544098    jmp         0054418D
 0054409D    mov         eax,dword ptr [ebp-4]
 005440A0    cmp         dword ptr [eax+8],0
>005440A4    jne         0054418D
 005440AA    mov         eax,dword ptr [ebp-4]
 005440AD    mov         eax,dword ptr [eax+4]
 005440B0    movzx       edx,byte ptr [eax+318]
 005440B7    call        TListView.SetSortType
 005440BC    mov         eax,dword ptr [ebp-4]
 005440BF    mov         eax,dword ptr [eax+4]
 005440C2    mov         eax,dword ptr [eax+2CC]
 005440C8    mov         eax,dword ptr [eax+8]
 005440CB    mov         esi,dword ptr [eax+8]
 005440CE    dec         esi
 005440CF    test        esi,esi
>005440D1    jl          00544104
 005440D3    inc         esi
 005440D4    xor         edi,edi
 005440D6    mov         eax,dword ptr [ebp-4]
 005440D9    mov         eax,dword ptr [eax+4]
 005440DC    mov         eax,dword ptr [eax+2CC]
 005440E2    mov         edx,edi
 005440E4    call        TListColumns.GetItem
 005440E9    mov         ebx,eax
 005440EB    mov         eax,dword ptr [ebx+20]
 005440EE    test        eax,eax
>005440F0    jge         00544100
 005440F2    mov         edx,eax
 005440F4    mov         eax,ebx
 005440F6    call        TListColumn.SetWidth
 005440FB    xor         eax,eax
 005440FD    mov         dword ptr [ebx+20],eax
 00544100    inc         edi
 00544101    dec         esi
>00544102    jne         005440D6
 00544104    mov         eax,dword ptr [ebp-4]
 00544107    mov         byte ptr [eax+0C],1
 0054410B    xor         eax,eax
 0054410D    push        ebp
 0054410E    push        544150
 00544113    push        dword ptr fs:[eax]
 00544116    mov         dword ptr fs:[eax],esp
 00544119    push        0
 0054411B    push        1
 0054411D    push        0B
 0054411F    mov         eax,dword ptr [ebp-4]
 00544122    call        TListItems.GetHandle
 00544127    push        eax
 00544128    call        user32.SendMessageW
 0054412D    mov         eax,dword ptr [ebp-4]
 00544130    mov         eax,dword ptr [eax+4]
 00544133    mov         edx,dword ptr [eax]
 00544135    call        dword ptr [edx+0A8]
 0054413B    xor         eax,eax
 0054413D    pop         edx
 0054413E    pop         ecx
 0054413F    pop         ecx
 00544140    mov         dword ptr fs:[eax],edx
 00544143    push        544157
 00544148    mov         eax,dword ptr [ebp-4]
 0054414B    mov         byte ptr [eax+0C],0
 0054414F    ret
>00544150    jmp         @HandleFinally
>00544155    jmp         00544148
 00544157    mov         eax,dword ptr [ebp-4]
 0054415A    mov         eax,dword ptr [eax+4]
 0054415D    call        00546804
 00544162    test        al,al
>00544164    je          0054418D
 00544166    mov         eax,dword ptr [ebp-4]
 00544169    mov         eax,dword ptr [eax+4]
 0054416C    call        00546810
 00544171    test        al,al
>00544173    je          0054418D
 00544175    push        0
 00544177    push        1
 00544179    push        0B
 0054417B    mov         eax,dword ptr [ebp-4]
 0054417E    mov         eax,dword ptr [eax+4]
 00544181    mov         eax,dword ptr [eax+2EC]
 00544187    push        eax
 00544188    call        user32.SendMessageW
 0054418D    pop         edi
 0054418E    pop         esi
 0054418F    pop         ebx
 00544190    pop         ecx
 00544191    pop         ebp
 00544192    ret
*}
end;

//00544194
procedure TListItems.EndUpdate;
begin
{*
 00544194    dec         dword ptr [eax+8]
 00544197    cmp         dword ptr [eax+8],0
>0054419B    jne         005441A4
 0054419D    xor         edx,edx
 0054419F    call        TListItems.SetUpdateState
 005441A4    ret
*}
end;

//005441A8
procedure TListItems.Assign(Source:TPersistent);
begin
{*
 005441A8    push        ebx
 005441A9    push        esi
 005441AA    push        edi
 005441AB    push        ebp
 005441AC    mov         ebx,edx
 005441AE    mov         edi,eax
 005441B0    mov         eax,ebx
 005441B2    mov         edx,dword ptr ds:[52D940];TListItems
 005441B8    call        @IsClass
 005441BD    test        al,al
>005441BF    je          005441F8
 005441C1    mov         eax,edi
 005441C3    call        TListItems.Clear
 005441C8    mov         ebp,ebx
 005441CA    mov         eax,ebp
 005441CC    call        TListItems.GetCount
 005441D1    mov         ebx,eax
 005441D3    dec         ebx
 005441D4    test        ebx,ebx
>005441D6    jl          00544201
 005441D8    inc         ebx
 005441D9    xor         esi,esi
 005441DB    mov         edx,esi
 005441DD    mov         eax,ebp
 005441DF    call        TListItems.GetItem
 005441E4    push        eax
 005441E5    mov         eax,edi
 005441E7    call        TListItems.Add
 005441EC    pop         edx
 005441ED    mov         ecx,dword ptr [eax]
 005441EF    call        dword ptr [ecx+8];TListItem.Assign
 005441F2    inc         esi
 005441F3    dec         ebx
>005441F4    jne         005441DB
>005441F6    jmp         00544201
 005441F8    mov         edx,ebx
 005441FA    mov         eax,edi
 005441FC    call        TPersistent.Assign
 00544201    pop         ebp
 00544202    pop         edi
 00544203    pop         esi
 00544204    pop         ebx
 00544205    ret
*}
end;

//00544208
function WriteItems:Boolean;
begin
{*
 00544208    push        ebp
 00544209    mov         ebp,esp
 0054420B    push        ecx
 0054420C    push        ebx
 0054420D    push        esi
 0054420E    push        edi
 0054420F    mov         eax,dword ptr [ebp+8]
 00544212    mov         eax,dword ptr [eax-4]
 00544215    mov         edi,dword ptr [eax+20]
 00544218    test        edi,edi
>0054421A    jne         00544252
 0054421C    mov         eax,dword ptr [ebp+8]
 0054421F    mov         eax,dword ptr [eax-8]
 00544222    call        TListItems.GetCount
 00544227    test        eax,eax
>00544229    jg          0054424C
 0054422B    mov         eax,dword ptr [ebp+8]
 0054422E    mov         eax,dword ptr [eax-8]
 00544231    mov         ebx,dword ptr [eax+4]
 00544234    cmp         dword ptr [ebx+2D0],0
>0054423B    je          00544248
 0054423D    mov         eax,ebx
 0054423F    call        TWinControl.HandleAllocated
 00544244    test        al,al
>00544246    je          0054424C
 00544248    xor         eax,eax
>0054424A    jmp         0054424E
 0054424C    mov         al,1
 0054424E    mov         ebx,eax
>00544250    jmp         005442B2
 00544252    mov         eax,edi
 00544254    call        TListItems.GetCount
 00544259    mov         ebx,eax
 0054425B    mov         eax,dword ptr [ebp+8]
 0054425E    mov         eax,dword ptr [eax-8]
 00544261    call        TListItems.GetCount
 00544266    cmp         ebx,eax
>00544268    je          0054426E
 0054426A    mov         bl,1
>0054426C    jmp         005442B2
 0054426E    xor         ebx,ebx
 00544270    mov         eax,dword ptr [ebp+8]
 00544273    mov         eax,dword ptr [eax-8]
 00544276    call        TListItems.GetCount
 0054427B    dec         eax
 0054427C    test        eax,eax
>0054427E    jl          005442B2
 00544280    inc         eax
 00544281    mov         dword ptr [ebp-4],eax
 00544284    xor         esi,esi
 00544286    mov         edx,esi
 00544288    mov         eax,edi
 0054428A    call        TListItems.GetItem
 0054428F    push        eax
 00544290    mov         eax,dword ptr [ebp+8]
 00544293    mov         eax,dword ptr [eax-8]
 00544296    mov         edx,esi
 00544298    call        TListItems.GetItem
 0054429D    pop         edx
 0054429E    call        TListItem.IsEqual
 005442A3    mov         ebx,eax
 005442A5    xor         bl,1
 005442A8    test        bl,bl
>005442AA    jne         005442B2
 005442AC    inc         esi
 005442AD    dec         dword ptr [ebp-4]
>005442B0    jne         00544286
 005442B2    mov         eax,ebx
 005442B4    pop         edi
 005442B5    pop         esi
 005442B6    pop         ebx
 005442B7    pop         ecx
 005442B8    pop         ebp
 005442B9    ret
*}
end;

//005442BC
procedure TListItems.DefineProperties(Filer:Classes.TFiler);
begin
{*
 005442BC    push        ebp
 005442BD    mov         ebp,esp
 005442BF    add         esp,0FFFFFFF8
 005442C2    push        ebx
 005442C3    mov         dword ptr [ebp-4],edx
 005442C6    mov         dword ptr [ebp-8],eax
 005442C9    mov         edx,dword ptr [ebp-4]
 005442CC    mov         eax,dword ptr [ebp-8]
 005442CF    call        TPersistent.DefineProperties
 005442D4    mov         eax,dword ptr [ebp-8]
 005442D7    push        eax
 005442D8    push        544358;TListItems.ReadData
 005442DD    push        0
 005442DF    push        0
 005442E1    xor         ecx,ecx
 005442E3    mov         edx,54432C;'Data'
 005442E8    mov         eax,dword ptr [ebp-4]
 005442EB    mov         ebx,dword ptr [eax]
 005442ED    call        dword ptr [ebx+8]
 005442F0    mov         eax,dword ptr [ebp-8]
 005442F3    push        eax
 005442F4    push        544558;TListItems.ReadItemData
 005442F9    mov         eax,dword ptr [ebp-8]
 005442FC    push        eax
 005442FD    push        544B58;TListItems.WriteItemData
 00544302    push        ebp
 00544303    call        WriteItems
 00544308    pop         ecx
 00544309    mov         ecx,eax
 0054430B    mov         edx,544344;'ItemData'
 00544310    mov         eax,dword ptr [ebp-4]
 00544313    mov         ebx,dword ptr [eax]
 00544315    call        dword ptr [ebx+8]
 00544318    pop         ebx
 00544319    pop         ecx
 0054431A    pop         ecx
 0054431B    pop         ebp
 0054431C    ret
*}
end;

//00544358
procedure TListItems.ReadData(Stream:Classes.TStream);
begin
{*
 00544358    push        ebp
 00544359    mov         ebp,esp
 0054435B    add         esp,0FFFFFFD4
 0054435E    push        ebx
 0054435F    push        esi
 00544360    push        edi
 00544361    xor         ecx,ecx
 00544363    mov         dword ptr [ebp-2C],ecx
 00544366    mov         dword ptr [ebp-28],ecx
 00544369    mov         ebx,edx
 0054436B    mov         dword ptr [ebp-4],eax
 0054436E    xor         eax,eax
 00544370    push        ebp
 00544371    push        544547
 00544376    push        dword ptr fs:[eax]
 00544379    mov         dword ptr fs:[eax],esp
 0054437C    mov         eax,dword ptr [ebp-4]
 0054437F    call        TListItems.Clear
 00544384    lea         edx,[ebp-0C]
 00544387    mov         ecx,4
 0054438C    mov         eax,ebx
 0054438E    call        TStream.ReadBuffer
 00544393    mov         eax,dword ptr [ebp-0C]
 00544396    call        AllocMem
 0054439B    mov         dword ptr [ebp-14],eax
 0054439E    xor         ecx,ecx
 005443A0    push        ebp
 005443A1    push        544525
 005443A6    push        dword ptr fs:[ecx]
 005443A9    mov         dword ptr fs:[ecx],esp
 005443AC    mov         ecx,dword ptr [ebp-0C]
 005443AF    sub         ecx,4
 005443B2    mov         eax,dword ptr [ebp-14]
 005443B5    lea         edx,[eax+4]
 005443B8    mov         eax,ebx
 005443BA    call        TStream.ReadBuffer
 005443BF    mov         eax,dword ptr [ebp-14]
 005443C2    add         eax,8
 005443C5    mov         dword ptr [ebp-18],eax
 005443C8    xor         ebx,ebx
 005443CA    mov         eax,dword ptr [ebp-14]
 005443CD    mov         eax,dword ptr [eax+4]
 005443D0    dec         eax
 005443D1    test        eax,eax
>005443D3    jl          005444A0
 005443D9    inc         eax
 005443DA    mov         dword ptr [ebp-1C],eax
 005443DD    mov         eax,dword ptr [ebp-4]
 005443E0    call        TListItems.Add
 005443E5    mov         dword ptr [ebp-20],eax
 005443E8    lea         eax,[ebp-28]
 005443EB    mov         edx,dword ptr [ebp-18]
 005443EE    add         edx,14
 005443F1    call        @UStrFromString
 005443F6    mov         edx,dword ptr [ebp-28]
 005443F9    mov         eax,dword ptr [ebp-20]
 005443FC    call        TListItem.SetCaption
 00544401    mov         eax,dword ptr [ebp-18]
 00544404    mov         ecx,dword ptr [eax]
 00544406    xor         edx,edx
 00544408    mov         eax,dword ptr [ebp-20]
 0054440B    call        TListItem.SetImage
 00544410    mov         eax,dword ptr [ebp-18]
 00544413    mov         ecx,dword ptr [eax+8]
 00544416    mov         edx,1
 0054441B    mov         eax,dword ptr [ebp-20]
 0054441E    call        TListItem.SetImage
 00544423    mov         eax,dword ptr [ebp-18]
 00544426    mov         ecx,dword ptr [eax+4]
 00544429    mov         edx,2
 0054442E    mov         eax,dword ptr [ebp-20]
 00544431    call        TListItem.SetImage
 00544436    mov         eax,dword ptr [ebp-18]
 00544439    mov         edx,dword ptr [eax+10]
 0054443C    mov         eax,dword ptr [ebp-20]
 0054443F    call        TListItem.SetData
 00544444    mov         eax,dword ptr [ebp-18]
 00544447    lea         ebx,[eax+14]
 0054444A    movzx       eax,byte ptr [ebx]
 0054444D    inc         eax
 0054444E    add         ebx,eax
 00544450    xor         eax,eax
 00544452    mov         dword ptr [ebp-10],eax
 00544455    mov         eax,dword ptr [ebp-18]
 00544458    mov         esi,dword ptr [eax+0C]
 0054445B    dec         esi
 0054445C    test        esi,esi
>0054445E    jl          00544487
 00544460    inc         esi
 00544461    lea         eax,[ebp-2C]
 00544464    mov         edx,ebx
 00544466    call        @UStrFromString
 0054446B    mov         edx,dword ptr [ebp-2C]
 0054446E    mov         eax,dword ptr [ebp-20]
 00544471    mov         eax,dword ptr [eax+8]
 00544474    mov         ecx,dword ptr [eax]
 00544476    call        dword ptr [ecx+3C]
 00544479    movzx       eax,byte ptr [ebx]
 0054447C    lea         edx,[eax+1]
 0054447F    add         dword ptr [ebp-10],edx
 00544482    add         ebx,edx
 00544484    dec         esi
>00544485    jne         00544461
 00544487    mov         eax,dword ptr [ebp-18]
 0054448A    movzx       eax,byte ptr [eax+14]
 0054448E    add         eax,15
 00544491    add         eax,dword ptr [ebp-10]
 00544494    add         dword ptr [ebp-18],eax
 00544497    dec         dword ptr [ebp-1C]
>0054449A    jne         005443DD
 005444A0    mov         eax,ebx
 005444A2    mov         edx,eax
 005444A4    sub         edx,dword ptr [ebp-14]
 005444A7    sar         edx,1
>005444A9    jns         005444AE
 005444AB    adc         edx,0
 005444AE    cmp         edx,dword ptr [ebp-0C]
>005444B1    jge         0054450C
 005444B3    mov         edi,eax
 005444B5    mov         eax,dword ptr [ebp-4]
 005444B8    call        TListItems.GetCount
 005444BD    dec         eax
 005444BE    test        eax,eax
>005444C0    jl          0054450C
 005444C2    inc         eax
 005444C3    mov         dword ptr [ebp-1C],eax
 005444C6    mov         dword ptr [ebp-8],0
 005444CD    mov         edx,dword ptr [ebp-8]
 005444D0    mov         eax,dword ptr [ebp-4]
 005444D3    call        TListItems.GetItem
 005444D8    mov         dword ptr [ebp-24],eax
 005444DB    mov         eax,dword ptr [ebp-24]
 005444DE    mov         eax,dword ptr [eax+8]
 005444E1    mov         edx,dword ptr [eax]
 005444E3    call        dword ptr [edx+14]
 005444E6    mov         esi,eax
 005444E8    dec         esi
 005444E9    test        esi,esi
>005444EB    jl          00544504
 005444ED    inc         esi
 005444EE    xor         ebx,ebx
 005444F0    movsx       ecx,word ptr [edi]
 005444F3    mov         edx,ebx
 005444F5    mov         eax,dword ptr [ebp-24]
 005444F8    call        TListItem.SetSubItemImage
 005444FD    add         edi,2
 00544500    inc         ebx
 00544501    dec         esi
>00544502    jne         005444F0
 00544504    inc         dword ptr [ebp-8]
 00544507    dec         dword ptr [ebp-1C]
>0054450A    jne         005444CD
 0054450C    xor         eax,eax
 0054450E    pop         edx
 0054450F    pop         ecx
 00544510    pop         ecx
 00544511    mov         dword ptr fs:[eax],edx
 00544514    push        54452C
 00544519    mov         edx,dword ptr [ebp-0C]
 0054451C    mov         eax,dword ptr [ebp-14]
 0054451F    call        @FreeMem
 00544524    ret
>00544525    jmp         @HandleFinally
>0054452A    jmp         00544519
 0054452C    xor         eax,eax
 0054452E    pop         edx
 0054452F    pop         ecx
 00544530    pop         ecx
 00544531    mov         dword ptr fs:[eax],edx
 00544534    push        54454E
 00544539    lea         eax,[ebp-2C]
 0054453C    mov         edx,2
 00544541    call        @UStrArrayClr
 00544546    ret
>00544547    jmp         @HandleFinally
>0054454C    jmp         00544539
 0054454E    pop         edi
 0054454F    pop         esi
 00544550    pop         ebx
 00544551    mov         esp,ebp
 00544553    pop         ebp
 00544554    ret
*}
end;

//00544558
procedure TListItems.ReadItemData(Stream:Classes.TStream);
begin
{*
 00544558    push        ebp
 00544559    mov         ebp,esp
 0054455B    add         esp,0FFFFFF88
 0054455E    push        ebx
 0054455F    push        esi
 00544560    push        edi
 00544561    xor         ecx,ecx
 00544563    mov         dword ptr [ebp-4],ecx
 00544566    mov         esi,edx
 00544568    mov         dword ptr [ebp-8],eax
 0054456B    xor         eax,eax
 0054456D    push        ebp
 0054456E    push        5449AF
 00544573    push        dword ptr fs:[eax]
 00544576    mov         dword ptr fs:[eax],esp
 00544579    mov         eax,dword ptr [ebp-8]
 0054457C    call        TListItems.Clear
 00544581    mov         eax,esi
 00544583    mov         edx,dword ptr [eax]
 00544585    call        dword ptr [edx]
 00544587    cmp         edx,0
>0054458A    jne         00544595
 0054458C    cmp         eax,0
>0054458F    je          00544999
 00544595    lea         edx,[ebp-17]
 00544598    mov         ecx,1
 0054459D    mov         eax,esi
 0054459F    call        TStream.ReadBuffer
 005445A4    movzx       eax,byte ptr [ebp-17]
 005445A8    dec         al
>005445AA    je          005445C9
 005445AC    sub         al,2
>005445AE    je          005446D6
 005445B4    sub         al,2
>005445B6    je          005446D6
 005445BC    dec         al
>005445BE    je          0054480A
>005445C4    jmp         00544999
 005445C9    lea         edx,[ebp-10]
 005445CC    mov         ecx,4
 005445D1    mov         eax,esi
 005445D3    call        TStream.ReadBuffer
 005445D8    lea         edx,[ebp-14]
 005445DB    mov         ecx,4
 005445E0    mov         eax,esi
 005445E2    call        TStream.ReadBuffer
 005445E7    mov         eax,dword ptr [ebp-14]
 005445EA    dec         eax
 005445EB    test        eax,eax
>005445ED    jl          00544935
 005445F3    inc         eax
 005445F4    mov         dword ptr [ebp-20],eax
 005445F7    lea         edx,[ebp-41]
 005445FA    mov         ecx,15
 005445FF    mov         eax,esi
 00544601    call        TStream.ReadBuffer
 00544606    mov         eax,dword ptr [ebp-8]
 00544609    call        TListItems.Add
 0054460E    mov         edi,eax
 00544610    mov         ecx,dword ptr [ebp-41]
 00544613    xor         edx,edx
 00544615    mov         eax,edi
 00544617    call        TListItem.SetImage
 0054461C    mov         ecx,dword ptr [ebp-39]
 0054461F    mov         edx,1
 00544624    mov         eax,edi
 00544626    call        TListItem.SetImage
 0054462B    mov         ecx,dword ptr [ebp-3D]
 0054462E    mov         edx,2
 00544633    mov         eax,edi
 00544635    call        TListItem.SetImage
 0054463A    mov         edx,dword ptr [ebp-31]
 0054463D    mov         eax,edi
 0054463F    call        TListItem.SetData
 00544644    or          edx,0FFFFFFFF
 00544647    mov         eax,edi
 00544649    call        TListItem.SetGroupID
 0054464E    movzx       edx,byte ptr [ebp-2D]
 00544652    lea         eax,[ebp-4]
 00544655    call        @UStrSetLength
 0054465A    lea         eax,[ebp-4]
 0054465D    call        @UniqueStringU
 00544662    mov         edx,eax
 00544664    movzx       eax,byte ptr [ebp-2D]
 00544668    mov         ecx,eax
 0054466A    add         ecx,ecx
 0054466C    mov         eax,esi
 0054466E    call        TStream.ReadBuffer
 00544673    mov         edx,dword ptr [ebp-4]
 00544676    mov         eax,edi
 00544678    call        TListItem.SetCaption
 0054467D    mov         ebx,dword ptr [ebp-35]
 00544680    dec         ebx
 00544681    test        ebx,ebx
>00544683    jl          005446C8
 00544685    inc         ebx
 00544686    lea         edx,[ebp-18]
 00544689    mov         ecx,1
 0054468E    mov         eax,esi
 00544690    call        TStream.ReadBuffer
 00544695    movzx       edx,byte ptr [ebp-18]
 00544699    lea         eax,[ebp-4]
 0054469C    call        @UStrSetLength
 005446A1    lea         eax,[ebp-4]
 005446A4    call        @UniqueStringU
 005446A9    mov         edx,eax
 005446AB    movzx       eax,byte ptr [ebp-18]
 005446AF    mov         ecx,eax
 005446B1    add         ecx,ecx
 005446B3    mov         eax,esi
 005446B5    call        TStream.ReadBuffer
 005446BA    mov         eax,dword ptr [edi+8]
 005446BD    mov         edx,dword ptr [ebp-4]
 005446C0    mov         ecx,dword ptr [eax]
 005446C2    call        dword ptr [ecx+3C]
 005446C5    dec         ebx
>005446C6    jne         00544686
 005446C8    dec         dword ptr [ebp-20]
>005446CB    jne         005445F7
>005446D1    jmp         00544935
 005446D6    lea         edx,[ebp-10]
 005446D9    mov         ecx,4
 005446DE    mov         eax,esi
 005446E0    call        TStream.ReadBuffer
 005446E5    lea         edx,[ebp-14]
 005446E8    mov         ecx,4
 005446ED    mov         eax,esi
 005446EF    call        TStream.ReadBuffer
 005446F4    mov         eax,dword ptr [ebp-14]
 005446F7    dec         eax
 005446F8    test        eax,eax
>005446FA    jl          00544935
 00544700    inc         eax
 00544701    mov         dword ptr [ebp-20],eax
 00544704    lea         edx,[ebp-5A]
 00544707    mov         ecx,19
 0054470C    mov         eax,esi
 0054470E    call        TStream.ReadBuffer
 00544713    mov         eax,dword ptr [ebp-8]
 00544716    call        TListItems.Add
 0054471B    mov         dword ptr [ebp-24],eax
 0054471E    mov         ecx,dword ptr [ebp-5A]
 00544721    xor         edx,edx
 00544723    mov         eax,dword ptr [ebp-24]
 00544726    call        TListItem.SetImage
 0054472B    mov         ecx,dword ptr [ebp-52]
 0054472E    mov         edx,1
 00544733    mov         eax,dword ptr [ebp-24]
 00544736    call        TListItem.SetImage
 0054473B    mov         ecx,dword ptr [ebp-56]
 0054473E    mov         edx,2
 00544743    mov         eax,dword ptr [ebp-24]
 00544746    call        TListItem.SetImage
 0054474B    mov         edx,dword ptr [ebp-46]
 0054474E    mov         eax,dword ptr [ebp-24]
 00544751    call        TListItem.SetData
 00544756    mov         edx,dword ptr [ebp-4A]
 00544759    mov         eax,dword ptr [ebp-24]
 0054475C    call        TListItem.SetGroupID
 00544761    movzx       edx,byte ptr [ebp-42]
 00544765    lea         eax,[ebp-4]
 00544768    call        @UStrSetLength
 0054476D    lea         eax,[ebp-4]
 00544770    call        @UniqueStringU
 00544775    mov         edx,eax
 00544777    movzx       eax,byte ptr [ebp-42]
 0054477B    mov         ecx,eax
 0054477D    add         ecx,ecx
 0054477F    mov         eax,esi
 00544781    call        TStream.ReadBuffer
 00544786    mov         edx,dword ptr [ebp-4]
 00544789    mov         eax,dword ptr [ebp-24]
 0054478C    call        TListItem.SetCaption
 00544791    mov         ebx,dword ptr [ebp-4E]
 00544794    dec         ebx
 00544795    test        ebx,ebx
>00544797    jl          005447FC
 00544799    inc         ebx
 0054479A    lea         edx,[ebp-18]
 0054479D    mov         ecx,1
 005447A2    mov         eax,esi
 005447A4    call        TStream.ReadBuffer
 005447A9    movzx       edx,byte ptr [ebp-18]
 005447AD    lea         eax,[ebp-4]
 005447B0    call        @UStrSetLength
 005447B5    lea         eax,[ebp-4]
 005447B8    call        @UniqueStringU
 005447BD    mov         edx,eax
 005447BF    movzx       eax,byte ptr [ebp-18]
 005447C3    mov         ecx,eax
 005447C5    add         ecx,ecx
 005447C7    mov         eax,esi
 005447C9    call        TStream.ReadBuffer
 005447CE    xor         eax,eax
 005447D0    mov         dword ptr [ebp-1C],eax
 005447D3    cmp         byte ptr [ebp-17],5
>005447D7    jne         005447E8
 005447D9    lea         edx,[ebp-1C]
 005447DC    mov         ecx,4
 005447E1    mov         eax,esi
 005447E3    call        TStream.ReadBuffer
 005447E8    mov         ecx,dword ptr [ebp-1C]
 005447EB    mov         eax,dword ptr [ebp-24]
 005447EE    mov         eax,dword ptr [eax+8]
 005447F1    mov         edx,dword ptr [ebp-4]
 005447F4    mov         edi,dword ptr [eax]
 005447F6    call        dword ptr [edi+40]
 005447F9    dec         ebx
>005447FA    jne         0054479A
 005447FC    dec         dword ptr [ebp-20]
>005447FF    jne         00544704
>00544805    jmp         00544935
 0054480A    lea         edx,[ebp-10]
 0054480D    mov         ecx,4
 00544812    mov         eax,esi
 00544814    call        TStream.ReadBuffer
 00544819    lea         edx,[ebp-14]
 0054481C    mov         ecx,4
 00544821    mov         eax,esi
 00544823    call        TStream.ReadBuffer
 00544828    mov         eax,dword ptr [ebp-14]
 0054482B    dec         eax
 0054482C    test        eax,eax
>0054482E    jl          00544935
 00544834    inc         eax
 00544835    mov         dword ptr [ebp-20],eax
 00544838    lea         edx,[ebp-77]
 0054483B    mov         ecx,1D
 00544840    mov         eax,esi
 00544842    call        TStream.ReadBuffer
 00544847    mov         eax,dword ptr [ebp-8]
 0054484A    call        TListItems.Add
 0054484F    mov         dword ptr [ebp-28],eax
 00544852    mov         ecx,dword ptr [ebp-77]
 00544855    xor         edx,edx
 00544857    mov         eax,dword ptr [ebp-28]
 0054485A    call        TListItem.SetImage
 0054485F    mov         ecx,dword ptr [ebp-6F]
 00544862    mov         edx,1
 00544867    mov         eax,dword ptr [ebp-28]
 0054486A    call        TListItem.SetImage
 0054486F    mov         ecx,dword ptr [ebp-73]
 00544872    mov         edx,2
 00544877    mov         eax,dword ptr [ebp-28]
 0054487A    call        TListItem.SetImage
 0054487F    mov         eax,dword ptr [ebp-63]
 00544882    mov         edx,eax
 00544884    mov         eax,dword ptr [ebp-28]
 00544887    call        TListItem.SetData
 0054488C    mov         edx,dword ptr [ebp-67]
 0054488F    mov         eax,dword ptr [ebp-28]
 00544892    call        TListItem.SetGroupID
 00544897    movzx       edx,byte ptr [ebp-5B]
 0054489B    lea         eax,[ebp-4]
 0054489E    call        @UStrSetLength
 005448A3    lea         eax,[ebp-4]
 005448A6    call        @UniqueStringU
 005448AB    mov         edx,eax
 005448AD    movzx       eax,byte ptr [ebp-5B]
 005448B1    mov         ecx,eax
 005448B3    add         ecx,ecx
 005448B5    mov         eax,esi
 005448B7    call        TStream.ReadBuffer
 005448BC    mov         edx,dword ptr [ebp-4]
 005448BF    mov         eax,dword ptr [ebp-28]
 005448C2    call        TListItem.SetCaption
 005448C7    mov         ebx,dword ptr [ebp-6B]
 005448CA    dec         ebx
 005448CB    test        ebx,ebx
>005448CD    jl          0054492C
 005448CF    inc         ebx
 005448D0    lea         edx,[ebp-18]
 005448D3    mov         ecx,1
 005448D8    mov         eax,esi
 005448DA    call        TStream.ReadBuffer
 005448DF    movzx       edx,byte ptr [ebp-18]
 005448E3    lea         eax,[ebp-4]
 005448E6    call        @UStrSetLength
 005448EB    lea         eax,[ebp-4]
 005448EE    call        @UniqueStringU
 005448F3    mov         edx,eax
 005448F5    movzx       eax,byte ptr [ebp-18]
 005448F9    mov         ecx,eax
 005448FB    add         ecx,ecx
 005448FD    mov         eax,esi
 005448FF    call        TStream.ReadBuffer
 00544904    xor         eax,eax
 00544906    mov         dword ptr [ebp-1C],eax
 00544909    lea         edx,[ebp-1C]
 0054490C    mov         ecx,8
 00544911    mov         eax,esi
 00544913    call        TStream.ReadBuffer
 00544918    mov         ecx,dword ptr [ebp-1C]
 0054491B    mov         eax,dword ptr [ebp-28]
 0054491E    mov         eax,dword ptr [eax+8]
 00544921    mov         edx,dword ptr [ebp-4]
 00544924    mov         edi,dword ptr [eax]
 00544926    call        dword ptr [edi+40]
 00544929    dec         ebx
>0054492A    jne         005448D0
 0054492C    dec         dword ptr [ebp-20]
>0054492F    jne         00544838
 00544935    mov         eax,dword ptr [ebp-8]
 00544938    call        TListItems.GetCount
 0054493D    dec         eax
 0054493E    test        eax,eax
>00544940    jl          00544999
 00544942    inc         eax
 00544943    mov         dword ptr [ebp-20],eax
 00544946    mov         dword ptr [ebp-0C],0
 0054494D    mov         edx,dword ptr [ebp-0C]
 00544950    mov         eax,dword ptr [ebp-8]
 00544953    call        TListItems.GetItem
 00544958    mov         dword ptr [ebp-2C],eax
 0054495B    mov         eax,dword ptr [ebp-2C]
 0054495E    mov         eax,dword ptr [eax+8]
 00544961    mov         edx,dword ptr [eax]
 00544963    call        dword ptr [edx+14]
 00544966    mov         ebx,eax
 00544968    dec         ebx
 00544969    test        ebx,ebx
>0054496B    jl          00544991
 0054496D    inc         ebx
 0054496E    xor         edi,edi
 00544970    lea         edx,[ebp-16]
 00544973    mov         ecx,2
 00544978    mov         eax,esi
 0054497A    call        TStream.ReadBuffer
 0054497F    movsx       ecx,word ptr [ebp-16]
 00544983    mov         edx,edi
 00544985    mov         eax,dword ptr [ebp-2C]
 00544988    call        TListItem.SetSubItemImage
 0054498D    inc         edi
 0054498E    dec         ebx
>0054498F    jne         00544970
 00544991    inc         dword ptr [ebp-0C]
 00544994    dec         dword ptr [ebp-20]
>00544997    jne         0054494D
 00544999    xor         eax,eax
 0054499B    pop         edx
 0054499C    pop         ecx
 0054499D    pop         ecx
 0054499E    mov         dword ptr fs:[eax],edx
 005449A1    push        5449B6
 005449A6    lea         eax,[ebp-4]
 005449A9    call        @UStrClr
 005449AE    ret
>005449AF    jmp         @HandleFinally
>005449B4    jmp         005449A6
 005449B6    pop         edi
 005449B7    pop         esi
 005449B8    pop         ebx
 005449B9    mov         esp,ebp
 005449BB    pop         ebp
 005449BC    ret
*}
end;

//005449C0
function GetByteLength(const S:UnicodeString):Integer;
begin
{*
 005449C0    test        eax,eax
>005449C2    je          005449C9
 005449C4    sub         eax,4
 005449C7    mov         eax,dword ptr [eax]
 005449C9    add         eax,eax
 005449CB    cmp         eax,1FE
>005449D0    jle         005449D7
 005449D2    mov         eax,1FE
 005449D7    ret
*}
end;

//005449D8
{*procedure sub_005449D8(?:?; ?:?);
begin
 005449D8    push        ebp
 005449D9    mov         ebp,esp
 005449DB    add         esp,0FFFFFFE0
 005449DE    push        ebx
 005449DF    push        esi
 005449E0    xor         ecx,ecx
 005449E2    mov         dword ptr [ebp-20],ecx
 005449E5    mov         dword ptr [ebp-1C],ecx
 005449E8    mov         dword ptr [ebp-18],ecx
 005449EB    mov         dword ptr [ebp-14],ecx
 005449EE    mov         esi,edx
 005449F0    mov         ebx,eax
 005449F2    xor         eax,eax
 005449F4    push        ebp
 005449F5    push        544B1D
 005449FA    push        dword ptr fs:[eax]
 005449FD    mov         dword ptr fs:[eax],esp
 00544A00    mov         eax,esi
 00544A02    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00544A08    call        @DynArrayClear
 00544A0D    push        0
 00544A0F    push        0
 00544A11    mov         eax,ebx
 00544A13    call        TStream.SetPosition
 00544A18    push        400
 00544A1D    mov         ecx,ebx
 00544A1F    mov         dl,1
 00544A21    mov         eax,[00474D48];TReader
 00544A26    call        TFiler.Create;TReader.Create
 00544A2B    mov         dword ptr [ebp-4],eax
 00544A2E    xor         eax,eax
 00544A30    push        ebp
 00544A31    push        544AFB
 00544A36    push        dword ptr fs:[eax]
 00544A39    mov         dword ptr fs:[eax],esp
 00544A3C    mov         eax,dword ptr [ebp-4]
 00544A3F    call        TReader.ReadSignature
 00544A44    lea         ecx,[ebp-0C]
 00544A47    lea         edx,[ebp-5]
 00544A4A    mov         eax,dword ptr [ebp-4]
 00544A4D    mov         ebx,dword ptr [eax]
 00544A4F    call        dword ptr [ebx+28];TReader.ReadPrefix
 00544A52    lea         edx,[ebp-14]
 00544A55    mov         eax,dword ptr [ebp-4]
 00544A58    call        TReader.ReadStr
 00544A5D    lea         edx,[ebp-18]
 00544A60    mov         eax,dword ptr [ebp-4]
 00544A63    call        TReader.ReadStr
 00544A68    lea         edx,[ebp-1C]
 00544A6B    mov         eax,dword ptr [ebp-4]
 00544A6E    call        TReader.ReadStr
>00544A73    jmp         00544AD9
 00544A75    mov         eax,dword ptr [ebp-4]
 00544A78    call        TReader.SkipValue
 00544A7D    lea         edx,[ebp-20]
 00544A80    mov         eax,dword ptr [ebp-4]
 00544A83    call        TReader.ReadStr
 00544A88    mov         eax,dword ptr [ebp-20]
 00544A8B    mov         edx,544B38;'Items.ItemData'
 00544A90    call        @UStrEqual
>00544A95    jne         00544AD9
 00544A97    mov         dl,0A
 00544A99    mov         eax,dword ptr [ebp-4]
 00544A9C    call        TReader.CheckValue
 00544AA1    lea         edx,[ebp-10]
 00544AA4    mov         ecx,4
 00544AA9    mov         eax,dword ptr [ebp-4]
 00544AAC    call        TReader.Read
 00544AB1    mov         eax,dword ptr [ebp-10]
 00544AB4    push        eax
 00544AB5    mov         eax,esi
 00544AB7    mov         ecx,1
 00544ABC    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00544AC2    call        @DynArraySetLength
 00544AC7    add         esp,4
 00544ACA    mov         edx,dword ptr [esi]
 00544ACC    mov         ecx,dword ptr [ebp-10]
 00544ACF    mov         eax,dword ptr [ebp-4]
 00544AD2    call        TReader.Read
>00544AD7    jmp         00544AE5
 00544AD9    mov         eax,dword ptr [ebp-4]
 00544ADC    call        TReader.NextValue
 00544AE1    test        al,al
>00544AE3    jne         00544A75
 00544AE5    xor         eax,eax
 00544AE7    pop         edx
 00544AE8    pop         ecx
 00544AE9    pop         ecx
 00544AEA    mov         dword ptr fs:[eax],edx
 00544AED    push        544B02
 00544AF2    mov         eax,dword ptr [ebp-4]
 00544AF5    call        TObject.Free
 00544AFA    ret
>00544AFB    jmp         @HandleFinally
>00544B00    jmp         00544AF2
 00544B02    xor         eax,eax
 00544B04    pop         edx
 00544B05    pop         ecx
 00544B06    pop         ecx
 00544B07    mov         dword ptr fs:[eax],edx
 00544B0A    push        544B24
 00544B0F    lea         eax,[ebp-20]
 00544B12    mov         edx,4
 00544B17    call        @UStrArrayClr
 00544B1C    ret
>00544B1D    jmp         @HandleFinally
>00544B22    jmp         00544B0F
 00544B24    pop         esi
 00544B25    pop         ebx
 00544B26    mov         esp,ebp
 00544B28    pop         ebp
 00544B29    ret
end;*}

//00544B58
procedure TListItems.WriteItemData(Stream:Classes.TStream);
begin
{*
 00544B58    push        ebp
 00544B59    mov         ebp,esp
 00544B5B    add         esp,0FFFFFFAC
 00544B5E    push        ebx
 00544B5F    push        esi
 00544B60    push        edi
 00544B61    xor         ecx,ecx
 00544B63    mov         dword ptr [ebp-54],ecx
 00544B66    mov         dword ptr [ebp-4],ecx
 00544B69    mov         dword ptr [ebp-8],ecx
 00544B6C    mov         dword ptr [ebp-10],edx
 00544B6F    mov         dword ptr [ebp-0C],eax
 00544B72    xor         eax,eax
 00544B74    push        ebp
 00544B75    push        544E8B
 00544B7A    push        dword ptr fs:[eax]
 00544B7D    mov         dword ptr fs:[eax],esp
 00544B80    mov         eax,dword ptr [ebp-0C]
 00544B83    mov         ebx,dword ptr [eax+4]
 00544B86    cmp         dword ptr [ebx+2D0],0
>00544B8D    je          00544BCC
 00544B8F    mov         eax,ebx
 00544B91    call        TWinControl.HandleAllocated
 00544B96    test        al,al
>00544B98    jne         00544BCC
 00544B9A    lea         edx,[ebp-8]
 00544B9D    mov         eax,dword ptr [ebp-0C]
 00544BA0    mov         eax,dword ptr [eax+4]
 00544BA3    mov         eax,dword ptr [eax+2D0]
 00544BA9    call        005449D8
 00544BAE    mov         eax,dword ptr [ebp-8]
 00544BB1    test        eax,eax
>00544BB3    je          00544BBA
 00544BB5    sub         eax,4
 00544BB8    mov         eax,dword ptr [eax]
 00544BBA    mov         edx,dword ptr [ebp-8]
 00544BBD    mov         ecx,eax
 00544BBF    mov         eax,dword ptr [ebp-10]
 00544BC2    mov         ebx,dword ptr [eax]
 00544BC4    call        dword ptr [ebx+10]
>00544BC7    jmp         00544E5F
 00544BCC    xor         eax,eax
 00544BCE    mov         dword ptr [ebp-18],eax
 00544BD1    mov         eax,dword ptr [ebp-0C]
 00544BD4    call        TListItems.GetCount
 00544BD9    dec         eax
 00544BDA    test        eax,eax
>00544BDC    jl          00544C62
 00544BE2    inc         eax
 00544BE3    mov         dword ptr [ebp-30],eax
 00544BE6    mov         dword ptr [ebp-14],0
 00544BED    mov         edx,dword ptr [ebp-14]
 00544BF0    mov         eax,dword ptr [ebp-0C]
 00544BF3    call        TListItems.GetItem
 00544BF8    mov         eax,dword ptr [eax+20]
 00544BFB    call        GetByteLength
 00544C00    inc         eax
 00544C01    mov         dword ptr [ebp-1C],eax
 00544C04    mov         edx,dword ptr [ebp-14]
 00544C07    mov         eax,dword ptr [ebp-0C]
 00544C0A    call        TListItems.GetItem
 00544C0F    mov         eax,dword ptr [eax+8]
 00544C12    mov         edx,dword ptr [eax]
 00544C14    call        dword ptr [edx+14]
 00544C17    mov         ebx,eax
 00544C19    dec         ebx
 00544C1A    test        ebx,ebx
>00544C1C    jl          00544C51
 00544C1E    inc         ebx
 00544C1F    xor         esi,esi
 00544C21    mov         edx,dword ptr [ebp-14]
 00544C24    mov         eax,dword ptr [ebp-0C]
 00544C27    call        TListItems.GetItem
 00544C2C    mov         eax,dword ptr [eax+8]
 00544C2F    lea         ecx,[ebp-54]
 00544C32    mov         edx,esi
 00544C34    mov         edi,dword ptr [eax]
 00544C36    call        dword ptr [edi+0C]
 00544C39    mov         eax,dword ptr [ebp-54]
 00544C3C    call        GetByteLength
 00544C41    inc         eax
 00544C42    add         dword ptr [ebp-1C],eax
 00544C45    add         dword ptr [ebp-1C],4
 00544C49    add         dword ptr [ebp-1C],2
 00544C4D    inc         esi
 00544C4E    dec         ebx
>00544C4F    jne         00544C21
 00544C51    mov         eax,dword ptr [ebp-1C]
 00544C54    add         eax,19
 00544C57    add         dword ptr [ebp-18],eax
 00544C5A    inc         dword ptr [ebp-14]
 00544C5D    dec         dword ptr [ebp-30]
>00544C60    jne         00544BED
 00544C62    mov         eax,dword ptr [ebp-0C]
 00544C65    call        TListItems.GetCount
 00544C6A    mov         dword ptr [ebp-24],eax
 00544C6D    mov         byte ptr [ebp-1F],5
 00544C71    lea         edx,[ebp-1F]
 00544C74    mov         ecx,1
 00544C79    mov         eax,dword ptr [ebp-10]
 00544C7C    call        TStream.WriteBuffer
 00544C81    lea         edx,[ebp-18]
 00544C84    mov         ecx,4
 00544C89    mov         eax,dword ptr [ebp-10]
 00544C8C    call        TStream.WriteBuffer
 00544C91    lea         edx,[ebp-24]
 00544C94    mov         ecx,4
 00544C99    mov         eax,dword ptr [ebp-10]
 00544C9C    call        TStream.WriteBuffer
 00544CA1    mov         eax,dword ptr [ebp-0C]
 00544CA4    call        TListItems.GetCount
 00544CA9    dec         eax
 00544CAA    test        eax,eax
>00544CAC    jl          00544DFF
 00544CB2    inc         eax
 00544CB3    mov         dword ptr [ebp-30],eax
 00544CB6    mov         dword ptr [ebp-14],0
 00544CBD    mov         edx,dword ptr [ebp-14]
 00544CC0    mov         eax,dword ptr [ebp-0C]
 00544CC3    call        TListItems.GetItem
 00544CC8    mov         dword ptr [ebp-34],eax
 00544CCB    mov         eax,dword ptr [ebp-34]
 00544CCE    mov         eax,dword ptr [eax+0C]
 00544CD1    mov         dword ptr [ebp-4D],eax
 00544CD4    mov         eax,dword ptr [ebp-34]
 00544CD7    mov         eax,dword ptr [eax+18]
 00544CDA    mov         dword ptr [ebp-45],eax
 00544CDD    mov         eax,dword ptr [ebp-34]
 00544CE0    mov         eax,dword ptr [eax+1C]
 00544CE3    mov         dword ptr [ebp-49],eax
 00544CE6    mov         eax,dword ptr [ebp-34]
 00544CE9    mov         eax,dword ptr [eax+28]
 00544CEC    mov         dword ptr [ebp-39],eax
 00544CEF    mov         eax,dword ptr [ebp-34]
 00544CF2    mov         eax,dword ptr [eax+2C]
 00544CF5    mov         dword ptr [ebp-3D],eax
 00544CF8    mov         eax,dword ptr [ebp-34]
 00544CFB    mov         eax,dword ptr [eax+8]
 00544CFE    mov         edx,dword ptr [eax]
 00544D00    call        dword ptr [edx+14]
 00544D03    mov         dword ptr [ebp-41],eax
 00544D06    lea         eax,[ebp-4]
 00544D09    mov         edx,dword ptr [ebp-34]
 00544D0C    mov         edx,dword ptr [edx+20]
 00544D0F    call        @UStrLAsg
 00544D14    mov         eax,dword ptr [ebp-4]
 00544D17    test        eax,eax
>00544D19    je          00544D20
 00544D1B    sub         eax,4
 00544D1E    mov         eax,dword ptr [eax]
 00544D20    mov         dword ptr [ebp-28],eax
 00544D23    cmp         dword ptr [ebp-28],0FF
>00544D2A    jle         00544D33
 00544D2C    mov         dword ptr [ebp-28],0FF
 00544D33    movzx       eax,byte ptr [ebp-28]
 00544D37    mov         byte ptr [ebp-35],al
 00544D3A    lea         edx,[ebp-4D]
 00544D3D    mov         ecx,19
 00544D42    mov         eax,dword ptr [ebp-10]
 00544D45    call        TStream.WriteBuffer
 00544D4A    lea         eax,[ebp-4]
 00544D4D    call        @UniqueStringU
 00544D52    mov         edx,eax
 00544D54    movzx       eax,byte ptr [ebp-35]
 00544D58    mov         ecx,eax
 00544D5A    add         ecx,ecx
 00544D5C    mov         eax,dword ptr [ebp-10]
 00544D5F    call        TStream.WriteBuffer
 00544D64    mov         eax,dword ptr [ebp-34]
 00544D67    mov         eax,dword ptr [eax+8]
 00544D6A    mov         edx,dword ptr [eax]
 00544D6C    call        dword ptr [edx+14]
 00544D6F    mov         ebx,eax
 00544D71    dec         ebx
 00544D72    test        ebx,ebx
>00544D74    jl          00544DF3
 00544D76    inc         ebx
 00544D77    xor         esi,esi
 00544D79    lea         ecx,[ebp-4]
 00544D7C    mov         eax,dword ptr [ebp-34]
 00544D7F    mov         eax,dword ptr [eax+8]
 00544D82    mov         edx,esi
 00544D84    mov         edi,dword ptr [eax]
 00544D86    call        dword ptr [edi+0C]
 00544D89    mov         eax,dword ptr [ebp-4]
 00544D8C    test        eax,eax
>00544D8E    je          00544D95
 00544D90    sub         eax,4
 00544D93    mov         eax,dword ptr [eax]
 00544D95    mov         dword ptr [ebp-28],eax
 00544D98    cmp         dword ptr [ebp-28],0FF
>00544D9F    jle         00544DA8
 00544DA1    mov         dword ptr [ebp-28],0FF
 00544DA8    lea         edx,[ebp-28]
 00544DAB    mov         ecx,1
 00544DB0    mov         eax,dword ptr [ebp-10]
 00544DB3    call        TStream.WriteBuffer
 00544DB8    lea         eax,[ebp-4]
 00544DBB    call        @UniqueStringU
 00544DC0    mov         edx,eax
 00544DC2    mov         ecx,dword ptr [ebp-28]
 00544DC5    add         ecx,ecx
 00544DC7    mov         eax,dword ptr [ebp-10]
 00544DCA    call        TStream.WriteBuffer
 00544DCF    mov         eax,dword ptr [ebp-34]
 00544DD2    mov         eax,dword ptr [eax+8]
 00544DD5    mov         edx,esi
 00544DD7    mov         ecx,dword ptr [eax]
 00544DD9    call        dword ptr [ecx+18]
 00544DDC    mov         dword ptr [ebp-2C],eax
 00544DDF    lea         edx,[ebp-2C]
 00544DE2    mov         ecx,4
 00544DE7    mov         eax,dword ptr [ebp-10]
 00544DEA    call        TStream.WriteBuffer
 00544DEF    inc         esi
 00544DF0    dec         ebx
>00544DF1    jne         00544D79
 00544DF3    inc         dword ptr [ebp-14]
 00544DF6    dec         dword ptr [ebp-30]
>00544DF9    jne         00544CBD
 00544DFF    mov         eax,dword ptr [ebp-0C]
 00544E02    call        TListItems.GetCount
 00544E07    dec         eax
 00544E08    test        eax,eax
>00544E0A    jl          00544E5F
 00544E0C    inc         eax
 00544E0D    mov         dword ptr [ebp-30],eax
 00544E10    mov         dword ptr [ebp-14],0
 00544E17    mov         edx,dword ptr [ebp-14]
 00544E1A    mov         eax,dword ptr [ebp-0C]
 00544E1D    call        TListItems.GetItem
 00544E22    mov         edi,eax
 00544E24    mov         eax,dword ptr [edi+8]
 00544E27    mov         edx,dword ptr [eax]
 00544E29    call        dword ptr [edx+14]
 00544E2C    mov         ebx,eax
 00544E2E    dec         ebx
 00544E2F    test        ebx,ebx
>00544E31    jl          00544E57
 00544E33    inc         ebx
 00544E34    xor         esi,esi
 00544E36    mov         edx,esi
 00544E38    mov         eax,edi
 00544E3A    call        TListItem.GetSubItemImage
 00544E3F    mov         word ptr [ebp-1E],ax
 00544E43    lea         edx,[ebp-1E]
 00544E46    mov         ecx,2
 00544E4B    mov         eax,dword ptr [ebp-10]
 00544E4E    call        TStream.WriteBuffer
 00544E53    inc         esi
 00544E54    dec         ebx
>00544E55    jne         00544E36
 00544E57    inc         dword ptr [ebp-14]
 00544E5A    dec         dword ptr [ebp-30]
>00544E5D    jne         00544E17
 00544E5F    xor         eax,eax
 00544E61    pop         edx
 00544E62    pop         ecx
 00544E63    pop         ecx
 00544E64    mov         dword ptr fs:[eax],edx
 00544E67    push        544E92
 00544E6C    lea         eax,[ebp-54]
 00544E6F    call        @UStrClr
 00544E74    lea         eax,[ebp-8]
 00544E77    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00544E7D    call        @DynArrayClear
 00544E82    lea         eax,[ebp-4]
 00544E85    call        @UStrClr
 00544E8A    ret
>00544E8B    jmp         @HandleFinally
>00544E90    jmp         00544E6C
 00544E92    pop         edi
 00544E93    pop         esi
 00544E94    pop         ebx
 00544E95    mov         esp,ebp
 00544E97    pop         ebp
 00544E98    ret
*}
end;

//00544E9C
procedure TListItems.Delete(Index:Integer);
begin
{*
 00544E9C    push        ebx
 00544E9D    push        esi
 00544E9E    mov         esi,edx
 00544EA0    mov         ebx,eax
 00544EA2    mov         edx,esi
 00544EA4    mov         eax,ebx
 00544EA6    call        TListItems.GetItem
 00544EAB    call        TListItem.Delete
 00544EB0    pop         esi
 00544EB1    pop         ebx
 00544EB2    ret
*}
end;

//00544EB4
function TListItems.CreateItem(Index:Integer; ListItem:TListItem):TLVItem;
begin
{*
 00544EB4    push        ebp
 00544EB5    mov         ebp,esp
 00544EB7    mov         eax,dword ptr [ebp+8]
 00544EBA    mov         dword ptr [eax],106
 00544EC0    mov         dword ptr [eax+4],edx
 00544EC3    xor         edx,edx
 00544EC5    mov         dword ptr [eax+8],edx
 00544EC8    mov         dword ptr [eax+1C],0FFFFFFFF
 00544ECF    mov         dword ptr [eax+28],0FFFFFFFF
 00544ED6    mov         dword ptr [eax+20],ecx
 00544ED9    pop         ebp
 00544EDA    ret         4
*}
end;

//00544EE0
constructor TIconOptions.Create;
begin
{*
 00544EE0    push        ebp
 00544EE1    mov         ebp,esp
 00544EE3    push        0
 00544EE5    push        ebx
 00544EE6    push        esi
 00544EE7    push        edi
 00544EE8    test        dl,dl
>00544EEA    je          00544EF4
 00544EEC    add         esp,0FFFFFFF0
 00544EEF    call        @ClassCreate
 00544EF4    mov         esi,ecx
 00544EF6    mov         ebx,edx
 00544EF8    mov         edi,eax
 00544EFA    xor         eax,eax
 00544EFC    push        ebp
 00544EFD    push        544F6A
 00544F02    push        dword ptr fs:[eax]
 00544F05    mov         dword ptr fs:[eax],esp
 00544F08    xor         edx,edx
 00544F0A    mov         eax,edi
 00544F0C    call        TObject.Create
 00544F11    test        esi,esi
>00544F13    jne         00544F36
 00544F15    lea         edx,[ebp-4]
 00544F18    mov         eax,[007C4A4C];^SResString359:TResStringRec
 00544F1D    call        LoadResString
 00544F22    mov         ecx,dword ptr [ebp-4]
 00544F25    mov         dl,1
 00544F27    mov         eax,[004174D0];Exception
 00544F2C    call        Exception.Create
 00544F31    call        @RaiseExcept
 00544F36    mov         dword ptr [edi+4],esi
 00544F39    xor         edx,edx
 00544F3B    mov         eax,edi
 00544F3D    call        TIconOptions.SetArrangement
 00544F42    xor         edx,edx
 00544F44    mov         eax,edi
 00544F46    call        TIconOptions.SetAutoArrange
 00544F4B    mov         dl,1
 00544F4D    mov         eax,edi
 00544F4F    call        TIconOptions.SetWrapText
 00544F54    xor         eax,eax
 00544F56    pop         edx
 00544F57    pop         ecx
 00544F58    pop         ecx
 00544F59    mov         dword ptr fs:[eax],edx
 00544F5C    push        544F71
 00544F61    lea         eax,[ebp-4]
 00544F64    call        @UStrClr
 00544F69    ret
>00544F6A    jmp         @HandleFinally
>00544F6F    jmp         00544F61
 00544F71    mov         eax,edi
 00544F73    test        bl,bl
>00544F75    je          00544F86
 00544F77    call        @AfterConstruction
 00544F7C    pop         dword ptr fs:[0]
 00544F83    add         esp,0C
 00544F86    mov         eax,edi
 00544F88    pop         edi
 00544F89    pop         esi
 00544F8A    pop         ebx
 00544F8B    pop         ecx
 00544F8C    pop         ebp
 00544F8D    ret
*}
end;

//00544F90
procedure TIconOptions.SetArrangement(Value:TIconArrangement);
begin
{*
 00544F90    cmp         dl,byte ptr [eax+8]
>00544F93    je          00544FA0
 00544F95    mov         byte ptr [eax+8],dl
 00544F98    mov         eax,dword ptr [eax+4]
 00544F9B    call        TWinControl.RecreateWnd
 00544FA0    ret
*}
end;

//00544FA4
procedure TIconOptions.SetAutoArrange(Value:Boolean);
begin
{*
 00544FA4    cmp         dl,byte ptr [eax+9]
>00544FA7    je          00544FB4
 00544FA9    mov         byte ptr [eax+9],dl
 00544FAC    mov         eax,dword ptr [eax+4]
 00544FAF    call        TWinControl.RecreateWnd
 00544FB4    ret
*}
end;

//00544FB8
procedure TIconOptions.SetWrapText(Value:Boolean);
begin
{*
 00544FB8    cmp         dl,byte ptr [eax+0A]
>00544FBB    je          00544FC8
 00544FBD    mov         byte ptr [eax+0A],dl
 00544FC0    mov         eax,dword ptr [eax+4]
 00544FC3    call        TWinControl.RecreateWnd
 00544FC8    ret
*}
end;

//00544FCC
{*function sub_00544FCC(?:?; ?:?; ?:?):?;
begin
 00544FCC    push        ebp
 00544FCD    mov         ebp,esp
 00544FCF    push        ecx
 00544FD0    push        ebx
 00544FD1    push        esi
 00544FD2    mov         esi,dword ptr [ebp+0C]
 00544FD5    mov         ebx,dword ptr [ebp+8]
 00544FD8    mov         eax,ebx
 00544FDA    call        TListItem.GetListView
 00544FDF    cmp         word ptr [eax+382],0;TCustomListView.?f382:word
>00544FE7    je          00545014
 00544FE9    push        esi
 00544FEA    mov         eax,dword ptr [ebp+10]
 00544FED    push        eax
 00544FEE    lea         eax,[ebp-4]
 00544FF1    push        eax
 00544FF2    mov         eax,ebx
 00544FF4    call        TListItem.GetListView
 00544FF9    mov         esi,eax
 00544FFB    mov         eax,ebx
 00544FFD    call        TListItem.GetListView
 00545002    mov         edx,eax
 00545004    mov         ecx,ebx
 00545006    mov         eax,dword ptr [esi+384];TCustomListView.?f384:dword
 0054500C    call        dword ptr [esi+380];TCustomListView.FOnCompare
>00545012    jmp         0054502E
 00545014    mov         eax,dword ptr [esi+20]
 00545017    call        @UStrToPWChar
 0054501C    push        eax
 0054501D    mov         eax,dword ptr [ebx+20]
 00545020    call        @UStrToPWChar
 00545025    push        eax
 00545026    call        kernel32.lstrcmpW
 0054502B    mov         dword ptr [ebp-4],eax
 0054502E    mov         eax,dword ptr [ebp-4]
 00545031    pop         esi
 00545032    pop         ebx
 00545033    pop         ecx
 00545034    pop         ebp
 00545035    ret         0C
end;*}

//00545038
constructor TCustomListView.Create(AOwner:TComponent);
begin
{*
 00545038    push        ebp
 00545039    mov         ebp,esp
 0054503B    push        ecx
 0054503C    push        ebx
 0054503D    push        esi
 0054503E    test        dl,dl
>00545040    je          0054504A
 00545042    add         esp,0FFFFFFF0
 00545045    call        @ClassCreate
 0054504A    mov         byte ptr [ebp-1],dl
 0054504D    mov         ebx,eax
 0054504F    xor         edx,edx
 00545051    mov         eax,ebx
 00545053    call        TCustomListControl.Create
 00545058    mov         eax,[00545278];0x2 gvar_00545278
 0054505D    not         eax
 0054505F    and         eax,dword ptr [ebx+60];TCustomListView.FControlStyle:TControlStyle
 00545062    or          eax,dword ptr ds:[54527C];0x86000 gvar_0054527C
 00545068    mov         dword ptr [ebx+60],eax;TCustomListView.FControlStyle:TControlStyle
 0054506B    mov         edx,0FA
 00545070    mov         eax,ebx
 00545072    call        TControl.SetWidth
 00545077    mov         edx,96
 0054507C    mov         eax,ebx
 0054507E    call        TControl.SetHeight
 00545083    mov         dl,1
 00545085    mov         eax,ebx
 00545087    call        TListView.SetBorderStyle
 0054508C    xor         edx,edx
 0054508E    mov         eax,ebx
 00545090    mov         ecx,dword ptr [eax]
 00545092    call        dword ptr [ecx+16C];TListView.SetViewStyle
 00545098    xor         edx,edx
 0054509A    mov         eax,ebx
 0054509C    call        TGroupBox.SetParentColor
 005450A1    mov         dl,1
 005450A3    mov         eax,ebx
 005450A5    call        TWinControl.SetTabStop
 005450AA    mov         dl,1
 005450AC    mov         eax,ebx
 005450AE    call        TListView.SetHideSelection
 005450B3    mov         dl,1
 005450B5    mov         eax,ebx
 005450B7    call        TListView.SetShowColumnHeaders
 005450BC    mov         dl,1
 005450BE    mov         eax,ebx
 005450C0    call        TListView.SetColumnClick
 005450C5    mov         dl,1
 005450C7    mov         eax,[004D9044];TControlCanvas
 005450CC    call        TCanvas.Create;TControlCanvas.Create
 005450D1    mov         esi,eax
 005450D3    mov         dword ptr [ebx+298],esi;TCustomListView.FCanvas:TCanvas
 005450D9    mov         eax,esi
 005450DB    mov         edx,ebx
 005450DD    call        TControlCanvas.SetControl
 005450E2    mov         dword ptr [ebx+2F4],0FFFFFFFF;TCustomListView.FDragIndex:Integer
 005450EC    mov         ecx,ebx
 005450EE    mov         dl,1
 005450F0    mov         eax,[0052CC78];TListColumns
 005450F5    call        THeaderSections.Create;TListColumns.Create
 005450FA    mov         dword ptr [ebx+2CC],eax;TCustomListView.FListColumns:TListColumns
 00545100    mov         ecx,ebx
 00545102    mov         dl,1
 00545104    mov         eax,[0052C664];TListGroups
 00545109    call        TListGroups.Create;TListGroups.Create
 0054510E    mov         dword ptr [ebx+418],eax;TCustomListView.FListGroups:TListGroups
 00545114    mov         eax,ebx
 00545116    mov         edx,dword ptr [eax]
 00545118    call        dword ptr [edx+13C];TCustomListView.sub_00546AD0
 0054511E    mov         dword ptr [ebx+2BC],eax;TCustomListView.FListItems:TListItems
 00545124    mov         eax,ebx
 00545126    mov         edx,dword ptr [eax]
 00545128    call        dword ptr [edx+138];TCustomListView.sub_00546A98
 0054512E    mov         dword ptr [ebx+31C],eax;TCustomListView.FTempItem:TListItem
 00545134    mov         byte ptr [ebx+41C],0;TCustomListView.FGroupView:Boolean
 0054513B    mov         ecx,ebx
 0054513D    mov         dl,1
 0054513F    mov         eax,[0052E244];TIconOptions
 00545144    call        TIconOptions.Create;TIconOptions.Create
 00545149    mov         dword ptr [ebx+2C4],eax;TCustomListView.FIconOptions:TIconOptions
 0054514F    mov         eax,[0052DDDC];TWorkArea
 00545154    push        eax
 00545155    mov         ecx,ebx
 00545157    mov         dl,1
 00545159    mov         eax,[0052E004];TWorkAreas
 0054515E    call        TOwnedCollection.Create;TWorkAreas.Create
 00545163    mov         dword ptr [ebx+320],eax;TCustomListView.FWorkAreas:TWorkAreas
 00545169    mov         byte ptr [ebx+324],0;TCustomListView.FShowWorkAreas:Boolean
 00545170    mov         byte ptr [ebx+325],0;TCustomListView.FUpdatingColumnOrder:Boolean
 00545177    xor         eax,eax
 00545179    mov         dword ptr [ebx+334],eax;TCustomListView.FOwnerDataCount:Integer
 0054517F    mov         dword ptr [ebx+304],0FFFFFFFF;TCustomListView.FHoverTime:Integer
 00545189    push        20
 0054518B    mov         ecx,20
 00545190    mov         dl,1
 00545192    mov         eax,[004E080C];TDragImageList
 00545197    call        TDragImageList.Create;TDragImageList.Create
 0054519C    mov         dword ptr [ebx+2B4],eax;TCustomListView.FDragImage:TDragImageList
 005451A2    push        ebx
 005451A3    push        545E94
 005451A8    call        MakeObjectInstance
 005451AD    mov         dword ptr [ebx+420],eax;TCustomListView.FEditInstance:Pointer
 005451B3    push        ebx
 005451B4    push        545CD4
 005451B9    call        MakeObjectInstance
 005451BE    mov         dword ptr [ebx+424],eax;TCustomListView.FHeaderInstance:Pointer
 005451C4    mov         dl,1
 005451C6    mov         eax,[005A6CE0];TChangeLink
 005451CB    call        TChangeLink.Create;TChangeLink.Create
 005451D0    mov         esi,eax
 005451D2    mov         dword ptr [ebx+308],esi;TCustomListView.FLargeChangeLink:TChangeLink
 005451D8    mov         dword ptr [esi+14],ebx;TChangeLink.?f14:TCustomActionList
 005451DB    mov         dword ptr [esi+10],5459D4;TChangeLink.FOnChange:TNotifyEvent sub_005459D4
 005451E2    mov         dl,1
 005451E4    mov         eax,[005A6CE0];TChangeLink
 005451E9    call        TChangeLink.Create;TChangeLink.Create
 005451EE    mov         esi,eax
 005451F0    mov         dword ptr [ebx+310],esi;TCustomListView.FHeaderChangeLink:TChangeLink
 005451F6    mov         dword ptr [esi+14],ebx;TChangeLink.?f14:TCustomActionList
 005451F9    mov         dword ptr [esi+10],5459D4;TChangeLink.FOnChange:TNotifyEvent sub_005459D4
 00545200    mov         dl,1
 00545202    mov         eax,[005A6CE0];TChangeLink
 00545207    call        TChangeLink.Create;TChangeLink.Create
 0054520C    mov         esi,eax
 0054520E    mov         dword ptr [ebx+30C],esi;TCustomListView.FSmallChangeLink:TChangeLink
 00545214    mov         dword ptr [esi+14],ebx;TChangeLink.?f14:TCustomActionList
 00545217    mov         dword ptr [esi+10],5459D4;TChangeLink.FOnChange:TNotifyEvent sub_005459D4
 0054521E    mov         dl,1
 00545220    mov         eax,[005A6CE0];TChangeLink
 00545225    call        TChangeLink.Create;TChangeLink.Create
 0054522A    mov         esi,eax
 0054522C    mov         dword ptr [ebx+314],esi;TCustomListView.FStateChangeLink:TChangeLink
 00545232    mov         dword ptr [esi+14],ebx;TChangeLink.?f14:TCustomActionList
 00545235    mov         dword ptr [esi+10],5459D4;TChangeLink.FOnChange:TNotifyEvent sub_005459D4
 0054523C    mov         dword ptr [ebx+2A4],0FFFFFFFF;TCustomListView.FSaveSelectedIndex:Integer
 00545246    mov         byte ptr [ebx+330],0;TCustomListView.FInBufferedPrintClient:Boolean
 0054524D    movzx       eax,byte ptr ds:[545280];0x4 gvar_00545280
 00545254    or          byte ptr [ebx+98],al;TCustomListView.FScalingFlags:TScalingFlags
 0054525A    mov         eax,ebx
 0054525C    cmp         byte ptr [ebp-1],0
>00545260    je          00545271
 00545262    call        @AfterConstruction
 00545267    pop         dword ptr fs:[0]
 0054526E    add         esp,0C
 00545271    mov         eax,ebx
 00545273    pop         esi
 00545274    pop         ebx
 00545275    pop         ecx
 00545276    pop         ebp
 00545277    ret
*}
end;

Initialization
//0079D428
{*
 0079D428    sub         dword ptr ds:[7CA6BC],1
>0079D42F    jae         0079D447
 0079D431    mov         ecx,dword ptr ds:[532844];TListViewStyleHook
 0079D437    mov         edx,dword ptr ds:[52F86C];TCustomListView
 0079D43D    mov         eax,[005738E0];TCustomStyleEngine
 0079D442    call        TCustomStyleEngine.RegisterStyleHook
 0079D447    ret
*}
Finalization
end.