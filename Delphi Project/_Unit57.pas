//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit57;

interface

uses
  SysUtils, Classes, Vcl.ListActns, Vcl.Clipbrd, System.Generics.Defaults, System.Generics.Collections, Vcl.ImgList, Vcl.Menus;

type
  TListControlItem = class(TCollectionItem)
  published
    procedure Assign(Source:TPersistent);//0051C1CC
    constructor Create;//0051C264
  public
    FListControlItems:TListControlItems;//fC
    FCaption:string;//f10
    FData:Pointer;//f14
    FImageIndex:TImageIndex;//f18
    procedure Assign(Source:TPersistent); virtual;//v8//0051C1CC
    function GetDisplayName:UnicodeString; virtual;//vC//0051C2A0
    constructor Create; virtual;//v1C//0051C264
    procedure SetCaption(const Value:UnicodeString); virtual;//v24//0051C2D0
    procedure SetData(const Value:Controls.TCustomData); virtual;//v28//0051C2EC
    procedure SetImageIndex(const Value:ImgList.TImageIndex); virtual;//v2C//0051C2F8
    procedure Changed;//0051C254
  end;
  TListItemsSortType = (stNone, stData, stText, stBoth);
  TListCompareEvent = function(List:TListControlItems; Item1:TListControlItem; Item2:TListControlItem):Integer of object;;
  TListControlItems = class(TOwnedCollection)
  published
    procedure CustomSort(Compare:TListItemsCompare);//0051C340
    function GetListItem(Index:Integer):TListControlItem;//0051C490
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Create(ItemClass:TCollectionItemClass);//0051C4BC
    function Add:TListControlItem;//0051C330
  public
    FCaseSensitive:Boolean;//f1C
    FSortType:TListItemsSortType;//f1D
    FOnCompare:TListCompareEvent;//f20
    procedure v1C; virtual;//v1C//0051C398
    function CompareItems(I1:TListControlItem; I2:TListControlItem):Integer; virtual;//v28//0051C35C
    constructor Create(ItemClass:TCollectionItemClass); virtual;//v2C//0051C4BC
    procedure ExchangeItems(Index1:Integer; Index2:Integer);//0051C3A0
    procedure QuickSort(L:Integer; R:Integer; SCompare:TListItemsCompare);//0051C3FC
    procedure SetSortType(const Value:TListItemsSortType);//0051C4A4
  end;
  TGetItemCountEvent = procedure(Sender:TCustomListAction; var Count:Integer) of object;;
  TItemSelectedEvent = procedure(Sender:TCustomListAction; Control:TControl) of object;;
  TCustomListAction = class(TCustomAction)
  published
    function GetString(Index:Integer):string;//0051C68C
    procedure SetString(Index:Integer; Value:string);//0051C898
    function HandlesTarget(Target:TObject):Boolean;//0051C698
    constructor Create(AOwner:TComponent);//0051C504
    procedure ExecuteTarget(Target:TObject);//0051C55C
  public
    FActive:Boolean;//fA8
    FActivated:Boolean;//fA9
    FImages:TCustomImageList;//fAC
    FInUpdate:Boolean;//fB0
    FLoadedImages:TCustomImageList;//fB4
    FLoading:Boolean;//fB8
    FOnGetItemCount:TGetItemCountEvent;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FOnItemSelected:TItemSelectedEvent;//fC8
    fCA:word;//fCA
    fCC:dword;//fCC
    FItemIndex:Integer;//fD0
    procedure Loaded; virtual;//v10//0051C69C
    constructor Create(AOwner:TComponent); virtual;//v3C//0051C504
    function HandlesTarget(Target:TObject):Boolean; virtual;//v50//0051C698
    procedure ExecuteTarget(Target:TObject); virtual;//v58//0051C55C
    //function v9C:?; virtual;//v9C//0051C660
    function GetString(Index:Integer):string; virtual;//vA0//0051C68C
    procedure SetString(Index:Integer; Value:string); virtual;//vA4//0051C898
  end;
  TGetVirtualItemEvent = procedure(Sender:TCustomListAction; const Index:Integer; var Value:string; var ImageIndex:Integer; var Data:Pointer) of object;;
  TCustomVirtualListAction = class(TCustomListAction)
  public
    FOnGetItem:TGetVirtualItemEvent;//fD8
    fDA:word;//fDA
    fDC:dword;//fDC
    //procedure GetString(Index:Integer; ?:?); virtual;//vA0//0051C8F0
  end;
  TVirtualListAction = class(TCustomVirtualListAction)
    procedure SetActive(Value:Boolean);//0051C6D0
    procedure SetImages(Value:TCustomImageList);//0051C7CC
    procedure SetItemIndex(Value:Integer);//0051C83C
  end;
  TGetItemEvent = procedure(Sender:TCustomListAction; const Index:Integer; var Item:TListControlItem) of object;;
  TStaticListItems = class(TListControlItems)
  public
    .......FStaticListAction:TCustomStaticListAction;//f28
    procedure Notify(Item:TCollectionItem; Action:TCollectionNotification); virtual;//v14//0051C9D4
    //procedure v1C(?:?); virtual;//v1C//0051CB7C
  end;
  TCustomStaticListAction = class(TCustomListAction)
  published
    destructor Destroy();//0051CCEC
    constructor Create(AOwner:TComponent);//0051CC88
  public
    FListItems:TStaticListItems;//fD8
    FOnGetItem:TGetItemEvent;//fE0
    destructor Destroy(); virtual;//0051CCEC
    constructor Create(AOwner:TComponent); virtual;//v3C//0051CC88
    //function v9C:?; virtual;//v9C//0051CD2C
    //procedure GetString(Index:Integer; ?:?); virtual;//vA0//0051CDA8
    //procedure vA4(?:?; ?:?); virtual;//vA4//0051CDD8
    constructor Create; virtual;//vA8//0051CDA0
  end;
  TStaticListAction = class(TCustomStaticListAction)
    procedure SetItems(Value:TStaticListItems);//0051CDCC
  end;
  TListActionLink = class(TWinControlActionLink)
  public
    procedure SetAction(Value:TBasicAction); virtual;//vC//0051CE3C
    function IsActiveLinked:Boolean; virtual;//vA0//0051CDFC
    //procedure vA4(?:?); virtual;//vA4//0051CE80
    //function vA8:?; virtual;//vA8//0051CE10
    procedure vAC; virtual;//vAC//0051CEEC
    //procedure vB0(?:?); virtual;//vB0//0051D078
    procedure vB4; virtual;//vB4//0051D048
    procedure AddItem(ACaption:UnicodeString; AImageIndex:Integer; DataPtr:Controls.TCustomData); virtual;//vB8//0051D04C
  end;
  TClipboard = class(TPersistent)
  published
    procedure Open;//0051D718
    function HasFormat(Format:Word):Boolean;//0051DE14
    procedure SetTextBuf(Buffer:PWideChar);//0051D974
    function GetTextBuf(Buffer:PWideChar; BufSize:Integer):Integer;//0051D8EC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure Assign(Source:TPersistent);//0051DD40
    destructor Destroy();//0051DEC8
    procedure Close;//0051D6EC
    procedure Clear;//0051D68C
  public
    FOpenRefCount:Integer;//f4
    FClipboardWindow:HWND;//f8
    FAllocated:Boolean;//fC
    FEmptied:Boolean;//fD
    destructor Destroy(); virtual;//0051DEC8
    procedure AssignTo(Dest:Classes.TPersistent); virtual;//v0//0051DBD0
    procedure Assign(Source:TPersistent); virtual;//v8//0051DD40
    procedure WndProc(var Message:Messages.TMessage); virtual;//vC//0051D7CC
    procedure Clear; virtual;//v10//0051D68C
    procedure Close; virtual;//v14//0051D6EC
    procedure Open; virtual;//v18//0051D718
    procedure Adding;//0051D6D0
    procedure SetBuffer(Format:Word; var Buffer:void ; Size:Integer);//0051D7EC
    function GetAsText:UnicodeString;//0051D998
    procedure AssignToPicture(Dest:Graphics.TPicture);//0051DA4C
    procedure AssignToBitmap(Dest:Graphics.TBitmap);//0051DB04
    procedure AssignToMetafile(Dest:Graphics.TMetafile);//0051DB6C
    procedure AssignPicture(Source:Graphics.TPicture);//0051DC38
    procedure AssignGraphic(Source:Graphics.TGraphic);//0051DCBC
    procedure MainWndProc(var Message:Messages.TMessage);//0051DE6C
  end;
  EClipboardException = class(Exception)
  end;
    //function sub_0051A674(?:HWND; ?:?; ?:?; ?:?):?;//0051A674
    function GetDisplayName:UnicodeString;//0051C2A0
    procedure SetCaption(const Value:UnicodeString);//0051C2D0
    procedure SetData(const Value:Controls.TCustomData);//0051C2EC
    procedure SetImageIndex(const Value:ImgList.TImageIndex);//0051C2F8
    function ListItemsCompare(List:TListControlItems; Index1:Integer; Index2:Integer):Integer;//0051C304
    function CompareItems(I1:TListControlItem; I2:TListControlItem):Integer;//0051C35C
    procedure sub_0051C398;//0051C398
    //function sub_0051C660:?;//0051C660
    procedure Loaded;//0051C69C
    //function sub_0051C89C(?:TVirtualListAction; ?:?; ?:?; ?:?; ?:?):?;//0051C89C
    //procedure GetString(Index:Integer; ?:?);//0051C8F0
    procedure Notify(Item:TCollectionItem; Action:TCollectionNotification);//0051C9D4
    //procedure sub_0051CB7C(?:?);//0051CB7C
    //function sub_0051CD2C:?;//0051CD2C
    //function sub_0051CD3C(?:TStaticListAction; ?:?; ?:TListControlItem):?;//0051CD3C
    constructor Create;//0051CDA0
    //procedure GetString(Index:Integer; ?:?);//0051CDA8
    //procedure sub_0051CDD8(?:?; ?:?);//0051CDD8
    function IsActiveLinked:Boolean;//0051CDFC
    //function sub_0051CE10:?;//0051CE10
    procedure SetAction(Value:TBasicAction);//0051CE3C
    //procedure sub_0051CE80(?:?);//0051CE80
    procedure sub_0051CEEC;//0051CEEC
    procedure sub_0051CEF0(?:TListActionLink);//0051CEF0
    procedure sub_0051D048;//0051D048
    procedure AddItem(ACaption:UnicodeString; AImageIndex:Integer; DataPtr:Controls.TCustomData);//0051D04C
    //procedure sub_0051D078(?:?);//0051D078
    procedure WndProc(var Message:Messages.TMessage);//0051D7CC
    //procedure sub_0051DA18(?:TClipboard; ?:?);//0051DA18
    procedure AssignTo(Dest:Classes.TPersistent);//0051DBD0
    function HasAPicture:Boolean;//0051DD94
    function Clipboard:TClipboard;//0051DE4C

implementation

//0051A674
{*function sub_0051A674(?:HWND; ?:?; ?:?; ?:?):?;
begin
 0051A674    push        ebp
 0051A675    mov         ebp,esp
 0051A677    push        ecx
 0051A678    push        ebx
 0051A679    push        esi
 0051A67A    push        edi
 0051A67B    mov         dword ptr [ebp-4],ecx
 0051A67E    mov         edi,edx
 0051A680    mov         esi,eax
 0051A682    mov         ebx,dword ptr [ebp+8]
 0051A685    mov         eax,dword ptr [ebx]
 0051A687    call        @UStrToPWChar
 0051A68C    push        eax
 0051A68D    mov         eax,dword ptr [ebp-4]
 0051A690    push        eax
 0051A691    push        edi
 0051A692    push        esi
 0051A693    call        user32.SendMessageW
 0051A698    mov         esi,eax
 0051A69A    mov         eax,ebx
 0051A69C    mov         edx,esi
 0051A69E    call        @UStrSetLength
 0051A6A3    mov         eax,esi
 0051A6A5    pop         edi
 0051A6A6    pop         esi
 0051A6A7    pop         ebx
 0051A6A8    pop         ecx
 0051A6A9    pop         ebp
 0051A6AA    ret         4
end;*}

//0051C1CC
procedure TListControlItem.Assign(Source:TPersistent);
begin
{*
 0051C1CC    push        ebp
 0051C1CD    mov         ebp,esp
 0051C1CF    push        ecx
 0051C1D0    push        ebx
 0051C1D1    push        esi
 0051C1D2    mov         ebx,edx
 0051C1D4    mov         dword ptr [ebp-4],eax
 0051C1D7    mov         eax,ebx
 0051C1D9    mov         edx,dword ptr ds:[51A6B0];TListControlItem
 0051C1DF    call        @IsClass
 0051C1E4    test        al,al
>0051C1E6    je          0051C24C
 0051C1E8    mov         eax,dword ptr [ebp-4]
 0051C1EB    mov         eax,dword ptr [eax+4];TListControlItem.FCollection:TCollection
 0051C1EE    test        eax,eax
>0051C1F0    je          0051C1F7
 0051C1F2    mov         edx,dword ptr [eax]
 0051C1F4    call        dword ptr [edx+20];TCollection.BeginUpdate
 0051C1F7    xor         edx,edx
 0051C1F9    push        ebp
 0051C1FA    push        51C245
 0051C1FF    push        dword ptr fs:[edx]
 0051C202    mov         dword ptr fs:[edx],esp
 0051C205    mov         esi,ebx
 0051C207    mov         edx,dword ptr [esi+10]
 0051C20A    mov         eax,dword ptr [ebp-4]
 0051C20D    mov         ecx,dword ptr [eax]
 0051C20F    call        dword ptr [ecx+24];TListControlItem.SetCaption
 0051C212    mov         edx,dword ptr [esi+18]
 0051C215    mov         eax,dword ptr [ebp-4]
 0051C218    mov         ecx,dword ptr [eax]
 0051C21A    call        dword ptr [ecx+2C];TListControlItem.SetImageIndex
 0051C21D    mov         edx,dword ptr [esi+14]
 0051C220    mov         eax,dword ptr [ebp-4]
 0051C223    mov         ecx,dword ptr [eax]
 0051C225    call        dword ptr [ecx+28];TListControlItem.SetData
 0051C228    xor         eax,eax
 0051C22A    pop         edx
 0051C22B    pop         ecx
 0051C22C    pop         ecx
 0051C22D    mov         dword ptr fs:[eax],edx
 0051C230    push        51C24C
 0051C235    mov         eax,dword ptr [ebp-4]
 0051C238    mov         eax,dword ptr [eax+4];TListControlItem.FCollection:TCollection
 0051C23B    test        eax,eax
>0051C23D    je          0051C244
 0051C23F    mov         edx,dword ptr [eax]
 0051C241    call        dword ptr [edx+24];TCollection.EndUpdate
 0051C244    ret
>0051C245    jmp         @HandleFinally
>0051C24A    jmp         0051C235
 0051C24C    pop         esi
 0051C24D    pop         ebx
 0051C24E    pop         ecx
 0051C24F    pop         ebp
 0051C250    ret
*}
end;

//0051C254
procedure TListControlItem.Changed;
begin
{*
 0051C254    mov         edx,dword ptr [eax+0C]
 0051C257    test        edx,edx
>0051C259    je          0051C261
 0051C25B    xchg        eax,edx
 0051C25C    mov         ecx,dword ptr [eax]
 0051C25E    call        dword ptr [ecx+1C]
 0051C261    ret
*}
end;

//0051C264
constructor TListControlItem.Create;
begin
{*
 0051C264    push        ebx
 0051C265    push        esi
 0051C266    test        dl,dl
>0051C268    je          0051C272
 0051C26A    add         esp,0FFFFFFF0
 0051C26D    call        @ClassCreate
 0051C272    mov         ebx,edx
 0051C274    mov         esi,eax
 0051C276    xor         edx,edx
 0051C278    mov         eax,esi
 0051C27A    call        TCollectionItem.Create
 0051C27F    mov         dword ptr [esi+18],0FFFFFFFF
 0051C286    mov         eax,esi
 0051C288    test        bl,bl
>0051C28A    je          0051C29B
 0051C28C    call        @AfterConstruction
 0051C291    pop         dword ptr fs:[0]
 0051C298    add         esp,0C
 0051C29B    mov         eax,esi
 0051C29D    pop         esi
 0051C29E    pop         ebx
 0051C29F    ret
*}
end;

//0051C2A0
function TListControlItem.GetDisplayName:UnicodeString;
begin
{*
 0051C2A0    push        ebx
 0051C2A1    push        esi
 0051C2A2    mov         esi,edx
 0051C2A4    mov         ebx,eax
 0051C2A6    mov         eax,dword ptr [ebx+10]
 0051C2A9    test        eax,eax
>0051C2AB    je          0051C2B2
 0051C2AD    sub         eax,4
 0051C2B0    mov         eax,dword ptr [eax]
 0051C2B2    test        eax,eax
>0051C2B4    jle         0051C2C3
 0051C2B6    mov         eax,esi
 0051C2B8    mov         edx,dword ptr [ebx+10]
 0051C2BB    call        @UStrAsg
 0051C2C0    pop         esi
 0051C2C1    pop         ebx
 0051C2C2    ret
 0051C2C3    mov         edx,esi
 0051C2C5    mov         eax,ebx
 0051C2C7    call        TCollectionItem.GetDisplayName
 0051C2CC    pop         esi
 0051C2CD    pop         ebx
 0051C2CE    ret
*}
end;

//0051C2D0
procedure TListControlItem.SetCaption(const Value:UnicodeString);
begin
{*
 0051C2D0    push        ebx
 0051C2D1    push        esi
 0051C2D2    mov         esi,edx
 0051C2D4    mov         ebx,eax
 0051C2D6    lea         eax,[ebx+10]
 0051C2D9    mov         edx,esi
 0051C2DB    call        @UStrAsg
 0051C2E0    mov         eax,ebx
 0051C2E2    call        TListControlItem.Changed
 0051C2E7    pop         esi
 0051C2E8    pop         ebx
 0051C2E9    ret
*}
end;

//0051C2EC
procedure TListControlItem.SetData(const Value:Controls.TCustomData);
begin
{*
 0051C2EC    mov         dword ptr [eax+14],edx
 0051C2EF    call        TListControlItem.Changed
 0051C2F4    ret
*}
end;

//0051C2F8
procedure TListControlItem.SetImageIndex(const Value:ImgList.TImageIndex);
begin
{*
 0051C2F8    mov         dword ptr [eax+18],edx
 0051C2FB    call        TListControlItem.Changed
 0051C300    ret
*}
end;

//0051C304
function ListItemsCompare(List:TListControlItems; Index1:Integer; Index2:Integer):Integer;
begin
{*
 0051C304    push        ebx
 0051C305    push        esi
 0051C306    push        edi
 0051C307    mov         edi,ecx
 0051C309    mov         esi,edx
 0051C30B    mov         ebx,eax
 0051C30D    mov         edx,edi
 0051C30F    mov         eax,ebx
 0051C311    call        TListControlItems.GetListItem
 0051C316    push        eax
 0051C317    mov         edx,esi
 0051C319    mov         eax,ebx
 0051C31B    call        TListControlItems.GetListItem
 0051C320    mov         edx,eax
 0051C322    mov         eax,ebx
 0051C324    pop         ecx
 0051C325    mov         ebx,dword ptr [eax]
 0051C327    call        dword ptr [ebx+28]
 0051C32A    pop         edi
 0051C32B    pop         esi
 0051C32C    pop         ebx
 0051C32D    ret
*}
end;

//0051C330
function TListControlItems.Add:TListControlItem;
begin
{*
 0051C330    push        ebx
 0051C331    mov         ebx,eax
 0051C333    mov         eax,ebx
 0051C335    call        TCollection.Add
 0051C33A    mov         dword ptr [eax+0C],ebx
 0051C33D    pop         ebx
 0051C33E    ret
*}
end;

//0051C340
procedure TListControlItems.CustomSort(Compare:TListItemsCompare);
begin
{*
 0051C340    cmp         byte ptr [eax+1D],0
>0051C344    je          0051C35A
 0051C346    mov         ecx,dword ptr [eax+8]
 0051C349    mov         ecx,dword ptr [ecx+8]
 0051C34C    cmp         ecx,1
>0051C34F    jle         0051C35A
 0051C351    push        edx
 0051C352    dec         ecx
 0051C353    xor         edx,edx
 0051C355    call        TListControlItems.QuickSort
 0051C35A    ret
*}
end;

//0051C35C
function TListControlItems.CompareItems(I1:TListControlItem; I2:TListControlItem):Integer;
begin
{*
 0051C35C    push        ebx
 0051C35D    cmp         word ptr [eax+22],0
>0051C362    je          0051C373
 0051C364    push        ecx
 0051C365    mov         ebx,eax
 0051C367    mov         ecx,edx
 0051C369    mov         edx,eax
 0051C36B    mov         eax,dword ptr [ebx+24]
 0051C36E    call        dword ptr [ebx+20]
 0051C371    pop         ebx
 0051C372    ret
 0051C373    cmp         byte ptr [eax+1C],0
>0051C377    je          0051C387
 0051C379    mov         eax,dword ptr [ecx+10]
 0051C37C    mov         edx,dword ptr [edx+10]
 0051C37F    xchg        eax,edx
 0051C380    call        AnsiCompareStr
>0051C385    jmp         0051C393
 0051C387    mov         eax,dword ptr [ecx+10]
 0051C38A    mov         edx,dword ptr [edx+10]
 0051C38D    xchg        eax,edx
 0051C38E    call        AnsiCompareText
 0051C393    pop         ebx
 0051C394    ret
*}
end;

//0051C398
procedure sub_0051C398;
begin
{*
 0051C398    call        0048F7D8
 0051C39D    ret
*}
end;

//0051C3A0
procedure TListControlItems.ExchangeItems(Index1:Integer; Index2:Integer);
begin
{*
 0051C3A0    push        ebx
 0051C3A1    push        esi
 0051C3A2    push        edi
 0051C3A3    push        ebp
 0051C3A4    push        ecx
 0051C3A5    mov         edi,ecx
 0051C3A7    mov         esi,edx
 0051C3A9    mov         ebx,eax
 0051C3AB    mov         edx,esi
 0051C3AD    mov         eax,ebx
 0051C3AF    call        TListControlItems.GetListItem
 0051C3B4    mov         ebp,eax
 0051C3B6    mov         edx,edi
 0051C3B8    mov         eax,ebx
 0051C3BA    call        TListControlItems.GetListItem
 0051C3BF    mov         dword ptr [esp],eax
 0051C3C2    mov         edx,esi
 0051C3C4    mov         eax,ebx
 0051C3C6    call        TListControlItems.GetListItem
 0051C3CB    call        TCollectionItem.GetIndex
 0051C3D0    mov         esi,eax
 0051C3D2    mov         edx,edi
 0051C3D4    mov         eax,ebx
 0051C3D6    call        TListControlItems.GetListItem
 0051C3DB    call        TCollectionItem.GetIndex
 0051C3E0    mov         edx,eax
 0051C3E2    mov         eax,ebp
 0051C3E4    mov         ecx,dword ptr [eax]
 0051C3E6    call        dword ptr [ecx+14]
 0051C3E9    mov         edx,esi
 0051C3EB    mov         eax,dword ptr [esp]
 0051C3EE    mov         ecx,dword ptr [eax]
 0051C3F0    call        dword ptr [ecx+14]
 0051C3F3    pop         edx
 0051C3F4    pop         ebp
 0051C3F5    pop         edi
 0051C3F6    pop         esi
 0051C3F7    pop         ebx
 0051C3F8    ret
*}
end;

//0051C3FC
procedure TListControlItems.QuickSort(L:Integer; R:Integer; SCompare:TListItemsCompare);
begin
{*
 0051C3FC    push        ebp
 0051C3FD    mov         ebp,esp
 0051C3FF    add         esp,0FFFFFFF0
 0051C402    push        ebx
 0051C403    push        esi
 0051C404    mov         dword ptr [ebp-0C],ecx
 0051C407    mov         dword ptr [ebp-8],edx
 0051C40A    mov         dword ptr [ebp-4],eax
 0051C40D    mov         ebx,dword ptr [ebp-8]
 0051C410    mov         esi,dword ptr [ebp-0C]
 0051C413    mov         eax,dword ptr [ebp-8]
 0051C416    add         eax,dword ptr [ebp-0C]
 0051C419    shr         eax,1
 0051C41B    mov         dword ptr [ebp-10],eax
>0051C41E    jmp         0051C421
 0051C420    inc         ebx
 0051C421    mov         ecx,dword ptr [ebp-10]
 0051C424    mov         edx,ebx
 0051C426    mov         eax,dword ptr [ebp-4]
 0051C429    call        dword ptr [ebp+8]
 0051C42C    test        eax,eax
>0051C42E    jl          0051C420
>0051C430    jmp         0051C433
 0051C432    dec         esi
 0051C433    mov         ecx,dword ptr [ebp-10]
 0051C436    mov         edx,esi
 0051C438    mov         eax,dword ptr [ebp-4]
 0051C43B    call        dword ptr [ebp+8]
 0051C43E    test        eax,eax
>0051C440    jg          0051C432
 0051C442    cmp         esi,ebx
>0051C444    jl          0051C466
 0051C446    mov         ecx,esi
 0051C448    mov         edx,ebx
 0051C44A    mov         eax,dword ptr [ebp-4]
 0051C44D    call        TListControlItems.ExchangeItems
 0051C452    cmp         ebx,dword ptr [ebp-10]
>0051C455    jne         0051C45C
 0051C457    mov         dword ptr [ebp-10],esi
>0051C45A    jmp         0051C464
 0051C45C    cmp         esi,dword ptr [ebp-10]
>0051C45F    jne         0051C464
 0051C461    mov         dword ptr [ebp-10],ebx
 0051C464    inc         ebx
 0051C465    dec         esi
 0051C466    cmp         esi,ebx
>0051C468    jge         0051C421
 0051C46A    cmp         esi,dword ptr [ebp-8]
>0051C46D    jle         0051C480
 0051C46F    mov         eax,dword ptr [ebp+8]
 0051C472    push        eax
 0051C473    mov         ecx,esi
 0051C475    mov         edx,dword ptr [ebp-8]
 0051C478    mov         eax,dword ptr [ebp-4]
 0051C47B    call        TListControlItems.QuickSort
 0051C480    mov         dword ptr [ebp-8],ebx
 0051C483    cmp         ebx,dword ptr [ebp-0C]
>0051C486    jl          0051C40D
 0051C488    pop         esi
 0051C489    pop         ebx
 0051C48A    mov         esp,ebp
 0051C48C    pop         ebp
 0051C48D    ret         4
*}
end;

//0051C490
function TListControlItems.GetListItem(Index:Integer):TListControlItem;
begin
{*
 0051C490    push        ebx
 0051C491    push        esi
 0051C492    mov         esi,edx
 0051C494    mov         ebx,eax
 0051C496    mov         edx,esi
 0051C498    mov         eax,ebx
 0051C49A    call        TCollection.GetItem
 0051C49F    pop         esi
 0051C4A0    pop         ebx
 0051C4A1    ret
*}
end;

//0051C4A4
procedure TListControlItems.SetSortType(const Value:TListItemsSortType);
begin
{*
 0051C4A4    cmp         dl,byte ptr [eax+1D]
>0051C4A7    je          0051C4BA
 0051C4A9    mov         byte ptr [eax+1D],dl
 0051C4AC    test        dl,dl
>0051C4AE    je          0051C4BA
 0051C4B0    mov         edx,51C304;ListItemsCompare:Integer
 0051C4B5    call        TListControlItems.CustomSort
 0051C4BA    ret
*}
end;

//0051C4BC
constructor TListControlItems.Create(ItemClass:TCollectionItemClass);
begin
{*
 0051C4BC    push        ebp
 0051C4BD    mov         ebp,esp
 0051C4BF    push        ebx
 0051C4C0    push        esi
 0051C4C1    test        dl,dl
>0051C4C3    je          0051C4CD
 0051C4C5    add         esp,0FFFFFFF0
 0051C4C8    call        @ClassCreate
 0051C4CD    mov         ebx,edx
 0051C4CF    mov         esi,eax
 0051C4D1    mov         eax,dword ptr [ebp+8]
 0051C4D4    push        eax
 0051C4D5    xor         edx,edx
 0051C4D7    mov         eax,esi
 0051C4D9    call        TOwnedCollection.Create
 0051C4DE    mov         byte ptr [esi+1C],0
 0051C4E2    mov         byte ptr [esi+1D],0
 0051C4E6    mov         eax,esi
 0051C4E8    test        bl,bl
>0051C4EA    je          0051C4FB
 0051C4EC    call        @AfterConstruction
 0051C4F1    pop         dword ptr fs:[0]
 0051C4F8    add         esp,0C
 0051C4FB    mov         eax,esi
 0051C4FD    pop         esi
 0051C4FE    pop         ebx
 0051C4FF    pop         ebp
 0051C500    ret         4
*}
end;

//0051C504
constructor TCustomListAction.Create(AOwner:TComponent);
begin
{*
 0051C504    push        ebx
 0051C505    push        esi
 0051C506    test        dl,dl
>0051C508    je          0051C512
 0051C50A    add         esp,0FFFFFFF0
 0051C50D    call        @ClassCreate
 0051C512    mov         ebx,edx
 0051C514    mov         esi,eax
 0051C516    xor         edx,edx
 0051C518    mov         eax,esi
 0051C51A    call        TCustomAction.Create
 0051C51F    mov         dword ptr [esi+0D0],0FFFFFFFF;TCustomListAction.FItemIndex:Integer
 0051C529    mov         byte ptr [esi+69],0;TCustomListAction.FDisableIfNoHandler:Boolean
 0051C52D    mov         dl,1
 0051C52F    mov         eax,esi
 0051C531    mov         ecx,dword ptr [eax]
 0051C533    call        dword ptr [ecx+74];TVirtualListAction.SetEnabled
 0051C536    mov         dl,1
 0051C538    mov         eax,esi
 0051C53A    call        TVirtualListAction.SetActive
 0051C53F    mov         eax,esi
 0051C541    test        bl,bl
>0051C543    je          0051C554
 0051C545    call        @AfterConstruction
 0051C54A    pop         dword ptr fs:[0]
 0051C551    add         esp,0C
 0051C554    mov         eax,esi
 0051C556    pop         esi
 0051C557    pop         ebx
 0051C558    ret
*}
end;

//0051C55C
procedure TCustomListAction.ExecuteTarget(Target:TObject);
begin
{*
 0051C55C    push        ebp
 0051C55D    mov         ebp,esp
 0051C55F    push        ecx
 0051C560    push        ebx
 0051C561    push        esi
 0051C562    push        edi
 0051C563    mov         edi,edx
 0051C565    mov         dword ptr [ebp-4],eax
 0051C568    mov         eax,dword ptr [ebp-4]
 0051C56B    cmp         byte ptr [eax+0B0],0;TCustomListAction.FInUpdate:Boolean
>0051C572    jne         0051C65A
 0051C578    mov         eax,dword ptr [ebp-4]
 0051C57B    mov         byte ptr [eax+0B0],1;TCustomListAction.FInUpdate:Boolean
 0051C582    xor         eax,eax
 0051C584    push        ebp
 0051C585    push        51C653
 0051C58A    push        dword ptr fs:[eax]
 0051C58D    mov         dword ptr fs:[eax],esp
 0051C590    mov         eax,edi
 0051C592    mov         edx,dword ptr ds:[4E20BC];TCustomListControl
 0051C598    call        @IsClass
 0051C59D    test        al,al
>0051C59F    je          0051C60D
 0051C5A1    mov         eax,edi
 0051C5A3    mov         edx,dword ptr [eax]
 0051C5A5    call        dword ptr [edx+108]
 0051C5AB    mov         edx,dword ptr [ebp-4]
 0051C5AE    mov         dword ptr [edx+0D0],eax;TCustomListAction.FItemIndex:Integer
 0051C5B4    mov         eax,dword ptr [ebp-4]
 0051C5B7    call        0049FE10
 0051C5BC    mov         esi,eax
 0051C5BE    dec         esi
 0051C5BF    test        esi,esi
>0051C5C1    jl          0051C60D
 0051C5C3    inc         esi
 0051C5C4    xor         ebx,ebx
 0051C5C6    mov         edx,ebx
 0051C5C8    mov         eax,dword ptr [ebp-4]
 0051C5CB    call        0049FDF4
 0051C5D0    mov         edx,dword ptr ds:[51C068];TListActionLink
 0051C5D6    call        @IsClass
 0051C5DB    test        al,al
>0051C5DD    je          0051C609
 0051C5DF    mov         edx,ebx
 0051C5E1    mov         eax,dword ptr [ebp-4]
 0051C5E4    call        0049FDF4
 0051C5E9    cmp         edi,dword ptr [eax+20]
>0051C5EC    je          0051C609
 0051C5EE    mov         edx,ebx
 0051C5F0    mov         eax,dword ptr [ebp-4]
 0051C5F3    call        0049FDF4
 0051C5F8    mov         edx,dword ptr [ebp-4]
 0051C5FB    mov         edx,dword ptr [edx+0D0];TCustomListAction.FItemIndex:Integer
 0051C601    mov         ecx,dword ptr [eax]
 0051C603    call        dword ptr [ecx+0B0]
 0051C609    inc         ebx
 0051C60A    dec         esi
>0051C60B    jne         0051C5C6
 0051C60D    mov         eax,dword ptr [ebp-4]
 0051C610    cmp         word ptr [eax+0CA],0;TCustomListAction.?fCA:word
>0051C618    je          0051C63B
 0051C61A    mov         eax,edi
 0051C61C    mov         edx,dword ptr ds:[4DC470];TControl
 0051C622    call        @AsClass
 0051C627    mov         ecx,eax
 0051C629    mov         ebx,dword ptr [ebp-4]
 0051C62C    mov         edx,dword ptr [ebp-4]
 0051C62F    mov         eax,dword ptr [ebx+0CC];TCustomListAction.?fCC:dword
 0051C635    call        dword ptr [ebx+0C8];TCustomListAction.FOnItemSelected
 0051C63B    xor         eax,eax
 0051C63D    pop         edx
 0051C63E    pop         ecx
 0051C63F    pop         ecx
 0051C640    mov         dword ptr fs:[eax],edx
 0051C643    push        51C65A
 0051C648    mov         eax,dword ptr [ebp-4]
 0051C64B    mov         byte ptr [eax+0B0],0;TCustomListAction.FInUpdate:Boolean
 0051C652    ret
>0051C653    jmp         @HandleFinally
>0051C658    jmp         0051C648
 0051C65A    pop         edi
 0051C65B    pop         esi
 0051C65C    pop         ebx
 0051C65D    pop         ecx
 0051C65E    pop         ebp
 0051C65F    ret
*}
end;

//0051C660
{*function sub_0051C660:?;
begin
 0051C660    push        ebx
 0051C661    push        ecx
 0051C662    mov         dword ptr [esp],0FFFFFFFF
 0051C669    cmp         word ptr [eax+0C2],0;TCustomListAction.?fC2:word
>0051C671    je          0051C685
 0051C673    mov         ecx,esp
 0051C675    mov         ebx,eax
 0051C677    mov         edx,eax
 0051C679    mov         eax,dword ptr [ebx+0C4];TCustomListAction.?fC4:dword
 0051C67F    call        dword ptr [ebx+0C0];TCustomListAction.FOnGetItemCount
 0051C685    mov         eax,dword ptr [esp]
 0051C688    pop         edx
 0051C689    pop         ebx
 0051C68A    ret
end;*}

//0051C68C
function TCustomListAction.GetString(Index:Integer):string;
begin
{*
 0051C68C    push        ebx
 0051C68D    mov         ebx,ecx
 0051C68F    mov         eax,ebx
 0051C691    call        @UStrClr
 0051C696    pop         ebx
 0051C697    ret
*}
end;

//0051C698
function TCustomListAction.HandlesTarget(Target:TObject):Boolean;
begin
{*
 0051C698    mov         al,1
 0051C69A    ret
*}
end;

//0051C69C
procedure TCustomListAction.Loaded;
begin
{*
 0051C69C    push        ebx
 0051C69D    mov         ebx,eax
 0051C69F    mov         eax,ebx
 0051C6A1    call        TComponent.Loaded
 0051C6A6    movzx       eax,byte ptr [ebx+0A9];TCustomListAction.FActivated:Boolean
 0051C6AD    test        al,al
>0051C6AF    je          0051C6BA
 0051C6B1    mov         edx,eax
 0051C6B3    mov         eax,ebx
 0051C6B5    call        TVirtualListAction.SetActive
 0051C6BA    mov         eax,dword ptr [ebx+0B4];TCustomListAction.FLoadedImages:TCustomImageList
 0051C6C0    test        eax,eax
>0051C6C2    je          0051C6CD
 0051C6C4    mov         edx,eax
 0051C6C6    mov         eax,ebx
 0051C6C8    call        TVirtualListAction.SetImages
 0051C6CD    pop         ebx
 0051C6CE    ret
*}
end;

//0051C6D0
procedure TVirtualListAction.SetActive(Value:Boolean);
begin
{*
 0051C6D0    push        ebp
 0051C6D1    mov         ebp,esp
 0051C6D3    add         esp,0FFFFFFF0
 0051C6D6    mov         byte ptr [ebp-5],dl
 0051C6D9    mov         dword ptr [ebp-4],eax
 0051C6DC    cmp         byte ptr [ebp-5],0
>0051C6E0    je          0051C6FD
 0051C6E2    mov         eax,dword ptr [ebp-4]
 0051C6E5    test        byte ptr [eax+1C],1;TVirtualListAction.FComponentState:TComponentState
>0051C6E9    je          0051C6FD
 0051C6EB    mov         eax,dword ptr [ebp-4]
 0051C6EE    movzx       edx,byte ptr [ebp-5]
 0051C6F2    mov         byte ptr [eax+0A9],dl;TVirtualListAction.FActivated:Boolean
>0051C6F8    jmp         0051C7C5
 0051C6FD    mov         eax,dword ptr [ebp-4]
 0051C700    movzx       eax,byte ptr [eax+0A8];TVirtualListAction.FActive:Boolean
 0051C707    cmp         al,byte ptr [ebp-5]
>0051C70A    je          0051C7C5
 0051C710    mov         eax,dword ptr [ebp-4]
 0051C713    movzx       edx,byte ptr [ebp-5]
 0051C717    mov         byte ptr [eax+0A8],dl;TVirtualListAction.FActive:Boolean
 0051C71D    mov         eax,dword ptr [ebp-4]
 0051C720    call        0049FE10
 0051C725    dec         eax
 0051C726    test        eax,eax
>0051C728    jl          0051C7A5
 0051C72A    inc         eax
 0051C72B    mov         dword ptr [ebp-10],eax
 0051C72E    mov         dword ptr [ebp-0C],0
 0051C735    mov         edx,dword ptr [ebp-0C]
 0051C738    mov         eax,dword ptr [ebp-4]
 0051C73B    call        0049FDF4
 0051C740    mov         edx,dword ptr ds:[51C068];TListActionLink
 0051C746    call        @IsClass
 0051C74B    test        al,al
>0051C74D    je          0051C79D
 0051C74F    mov         eax,dword ptr [ebp-4]
 0051C752    mov         byte ptr [eax+0B8],1;TVirtualListAction.FLoading:Boolean
 0051C759    xor         eax,eax
 0051C75B    push        ebp
 0051C75C    push        51C796
 0051C761    push        dword ptr fs:[eax]
 0051C764    mov         dword ptr fs:[eax],esp
 0051C767    mov         edx,dword ptr [ebp-0C]
 0051C76A    mov         eax,dword ptr [ebp-4]
 0051C76D    call        0049FDF4
 0051C772    movzx       edx,byte ptr [ebp-5]
 0051C776    mov         ecx,dword ptr [eax]
 0051C778    call        dword ptr [ecx+0A4]
 0051C77E    xor         eax,eax
 0051C780    pop         edx
 0051C781    pop         ecx
 0051C782    pop         ecx
 0051C783    mov         dword ptr fs:[eax],edx
 0051C786    push        51C79D
 0051C78B    mov         eax,dword ptr [ebp-4]
 0051C78E    mov         byte ptr [eax+0B8],0;TVirtualListAction.FLoading:Boolean
 0051C795    ret
>0051C796    jmp         @HandleFinally
>0051C79B    jmp         0051C78B
 0051C79D    inc         dword ptr [ebp-0C]
 0051C7A0    dec         dword ptr [ebp-10]
>0051C7A3    jne         0051C735
 0051C7A5    mov         eax,dword ptr [ebp-4]
 0051C7A8    mov         edx,dword ptr [eax]
 0051C7AA    call        dword ptr [edx+44];TVirtualListAction.sub_0049FEF0
 0051C7AD    mov         eax,dword ptr [ebp-4]
 0051C7B0    mov         eax,dword ptr [eax+0D0];TVirtualListAction.FItemIndex:Integer
 0051C7B6    cmp         eax,0FFFFFFFF
>0051C7B9    je          0051C7C5
 0051C7BB    mov         edx,eax
 0051C7BD    mov         eax,dword ptr [ebp-4]
 0051C7C0    call        TVirtualListAction.SetItemIndex
 0051C7C5    mov         esp,ebp
 0051C7C7    pop         ebp
 0051C7C8    ret
*}
end;

//0051C7CC
procedure TVirtualListAction.SetImages(Value:TCustomImageList);
begin
{*
 0051C7CC    push        ebx
 0051C7CD    push        esi
 0051C7CE    push        edi
 0051C7CF    push        ebp
 0051C7D0    mov         ebp,edx
 0051C7D2    mov         ebx,eax
 0051C7D4    test        ebp,ebp
>0051C7D6    je          0051C7E6
 0051C7D8    test        byte ptr [ebx+1C],1;TVirtualListAction.FComponentState:TComponentState
>0051C7DC    je          0051C7E6
 0051C7DE    mov         dword ptr [ebx+0B4],ebp;TVirtualListAction.FLoadedImages:TCustomImageList
>0051C7E4    jmp         0051C834
 0051C7E6    cmp         ebp,dword ptr [ebx+0AC];TVirtualListAction.FImages:TCustomImageList
>0051C7EC    je          0051C834
 0051C7EE    mov         dword ptr [ebx+0AC],ebp;TVirtualListAction.FImages:TCustomImageList
 0051C7F4    mov         eax,ebx
 0051C7F6    call        0049FE10
 0051C7FB    mov         edi,eax
 0051C7FD    dec         edi
 0051C7FE    test        edi,edi
>0051C800    jl          0051C834
 0051C802    inc         edi
 0051C803    xor         esi,esi
 0051C805    mov         edx,esi
 0051C807    mov         eax,ebx
 0051C809    call        0049FDF4
 0051C80E    mov         edx,dword ptr ds:[51C068];TListActionLink
 0051C814    call        @IsClass
 0051C819    test        al,al
>0051C81B    je          0051C830
 0051C81D    mov         edx,esi
 0051C81F    mov         eax,ebx
 0051C821    call        0049FDF4
 0051C826    mov         edx,ebp
 0051C828    mov         ecx,dword ptr [eax]
 0051C82A    call        dword ptr [ecx+0AC]
 0051C830    inc         esi
 0051C831    dec         edi
>0051C832    jne         0051C805
 0051C834    pop         ebp
 0051C835    pop         edi
 0051C836    pop         esi
 0051C837    pop         ebx
 0051C838    ret
*}
end;

//0051C83C
procedure TVirtualListAction.SetItemIndex(Value:Integer);
begin
{*
 0051C83C    push        ebx
 0051C83D    push        esi
 0051C83E    push        edi
 0051C83F    push        ebp
 0051C840    mov         ebp,edx
 0051C842    mov         ebx,eax
 0051C844    cmp         byte ptr [ebx+0A8],0;TVirtualListAction.FActive:Boolean
>0051C84B    je          0051C893
 0051C84D    mov         eax,ebx
 0051C84F    call        0049FE10
 0051C854    mov         edi,eax
 0051C856    dec         edi
 0051C857    test        edi,edi
>0051C859    jl          0051C88D
 0051C85B    inc         edi
 0051C85C    xor         esi,esi
 0051C85E    mov         edx,esi
 0051C860    mov         eax,ebx
 0051C862    call        0049FDF4
 0051C867    mov         edx,dword ptr ds:[51C068];TListActionLink
 0051C86D    call        @IsClass
 0051C872    test        al,al
>0051C874    je          0051C889
 0051C876    mov         edx,esi
 0051C878    mov         eax,ebx
 0051C87A    call        0049FDF4
 0051C87F    mov         edx,ebp
 0051C881    mov         ecx,dword ptr [eax]
 0051C883    call        dword ptr [ecx+0B0]
 0051C889    inc         esi
 0051C88A    dec         edi
>0051C88B    jne         0051C85E
 0051C88D    mov         dword ptr [ebx+0D0],ebp;TVirtualListAction.FItemIndex:Integer
 0051C893    pop         ebp
 0051C894    pop         edi
 0051C895    pop         esi
 0051C896    pop         ebx
 0051C897    ret
*}
end;

//0051C898
procedure TCustomListAction.SetString(Index:Integer; Value:string);
begin
{*
 0051C898    ret
*}
end;

//0051C89C
{*function sub_0051C89C(?:TVirtualListAction; ?:?; ?:?; ?:?; ?:?):?;
begin
 0051C89C    push        ebp
 0051C89D    mov         ebp,esp
 0051C89F    push        ecx
 0051C8A0    push        ebx
 0051C8A1    push        esi
 0051C8A2    push        edi
 0051C8A3    mov         dword ptr [ebp-4],ecx
 0051C8A6    mov         edi,edx
 0051C8A8    mov         esi,eax
 0051C8AA    xor         ebx,ebx
 0051C8AC    mov         eax,esi
 0051C8AE    mov         edx,dword ptr [eax]
 0051C8B0    call        dword ptr [edx+9C]
 0051C8B6    test        eax,eax
>0051C8B8    jle         0051C8E5
 0051C8BA    cmp         word ptr [esi+0DA],0
 0051C8C2    setne       bl
 0051C8C5    test        bl,bl
>0051C8C7    je          0051C8E5
 0051C8C9    mov         eax,dword ptr [ebp-4]
 0051C8CC    push        eax
 0051C8CD    mov         eax,dword ptr [ebp+0C]
 0051C8D0    push        eax
 0051C8D1    mov         eax,dword ptr [ebp+8]
 0051C8D4    push        eax
 0051C8D5    mov         ecx,edi
 0051C8D7    mov         edx,esi
 0051C8D9    mov         eax,dword ptr [esi+0DC]
 0051C8DF    call        dword ptr [esi+0D8]
 0051C8E5    mov         eax,ebx
 0051C8E7    pop         edi
 0051C8E8    pop         esi
 0051C8E9    pop         ebx
 0051C8EA    pop         ecx
 0051C8EB    pop         ebp
 0051C8EC    ret         8
end;*}

//0051C8F0
{*procedure TCustomVirtualListAction.GetString(Index:Integer; ?:?);
begin
 0051C8F0    push        ebp
 0051C8F1    mov         ebp,esp
 0051C8F3    add         esp,0FFFFFFE8
 0051C8F6    push        ebx
 0051C8F7    push        esi
 0051C8F8    push        edi
 0051C8F9    xor         ebx,ebx
 0051C8FB    mov         dword ptr [ebp-18],ebx
 0051C8FE    mov         dword ptr [ebp-0C],ebx
 0051C901    mov         edi,ecx
 0051C903    mov         esi,edx
 0051C905    mov         ebx,eax
 0051C907    xor         eax,eax
 0051C909    push        ebp
 0051C90A    push        51C9C5
 0051C90F    push        dword ptr fs:[eax]
 0051C912    mov         dword ptr fs:[eax],esp
 0051C915    mov         eax,ebx
 0051C917    mov         edx,dword ptr [eax]
 0051C919    call        dword ptr [edx+9C];TCustomVirtualListAction.sub_0051C660
 0051C91F    cmp         esi,eax
>0051C921    jge         0051C979
 0051C923    mov         eax,ebx
 0051C925    mov         edx,dword ptr [eax]
 0051C927    call        dword ptr [edx+9C];TCustomVirtualListAction.sub_0051C660
 0051C92D    test        eax,eax
>0051C92F    jle         0051C979
 0051C931    cmp         word ptr [ebx+0DA],0;TCustomVirtualListAction.?fDA:word
>0051C939    je          0051C956
 0051C93B    push        edi
 0051C93C    lea         eax,[ebp-4]
 0051C93F    push        eax
 0051C940    lea         eax,[ebp-8]
 0051C943    push        eax
 0051C944    mov         ecx,esi
 0051C946    mov         edx,ebx
 0051C948    mov         eax,dword ptr [ebx+0DC];TCustomVirtualListAction.?fDC:dword
 0051C94E    call        dword ptr [ebx+0D8];TCustomVirtualListAction.FOnGetItem
>0051C954    jmp         0051C9A7
 0051C956    lea         edx,[ebp-0C]
 0051C959    mov         eax,[007C4B1C];^SResString332:TResStringRec
 0051C95E    call        LoadResString
 0051C963    mov         ecx,dword ptr [ebp-0C]
 0051C966    mov         dl,1
 0051C968    mov         eax,[004174D0];Exception
 0051C96D    call        Exception.Create;Exception.Create
 0051C972    call        @RaiseExcept
>0051C977    jmp         0051C9A7
 0051C979    mov         dword ptr [ebp-14],esi
 0051C97C    mov         byte ptr [ebp-10],0
 0051C980    lea         eax,[ebp-14]
 0051C983    push        eax
 0051C984    push        0
 0051C986    lea         edx,[ebp-18]
 0051C989    mov         eax,[007C4BB4];^SResString135:TResStringRec
 0051C98E    call        LoadResString
 0051C993    mov         ecx,dword ptr [ebp-18]
 0051C996    mov         dl,1
 0051C998    mov         eax,[004174D0];Exception
 0051C99D    call        Exception.CreateFmt;Exception.Create
 0051C9A2    call        @RaiseExcept
 0051C9A7    xor         eax,eax
 0051C9A9    pop         edx
 0051C9AA    pop         ecx
 0051C9AB    pop         ecx
 0051C9AC    mov         dword ptr fs:[eax],edx
 0051C9AF    push        51C9CC
 0051C9B4    lea         eax,[ebp-18]
 0051C9B7    call        @UStrClr
 0051C9BC    lea         eax,[ebp-0C]
 0051C9BF    call        @UStrClr
 0051C9C4    ret
>0051C9C5    jmp         @HandleFinally
>0051C9CA    jmp         0051C9B4
 0051C9CC    pop         edi
 0051C9CD    pop         esi
 0051C9CE    pop         ebx
 0051C9CF    mov         esp,ebp
 0051C9D1    pop         ebp
 0051C9D2    ret
end;*}

//0051C9D4
procedure TStaticListItems.Notify(Item:TCollectionItem; Action:TCollectionNotification);
begin
{*
 0051C9D4    push        ebx
 0051C9D5    push        esi
 0051C9D6    push        edi
 0051C9D7    push        ebp
 0051C9D8    add         esp,0FFFFFFF0
 0051C9DB    mov         byte ptr [esp+4],cl
 0051C9DF    mov         dword ptr [esp],edx
 0051C9E2    mov         esi,eax
 0051C9E4    movzx       eax,byte ptr [esp+4]
 0051C9E9    sub         al,1
>0051C9EB    jb          0051C9FA
 0051C9ED    dec         al
>0051C9EF    je          0051CAE6
>0051C9F5    jmp         0051CB71
 0051C9FA    mov         ebx,dword ptr [esi+28];TStaticListItems.........FStaticListAction:TCustomStaticListActio...
 0051C9FD    test        ebx,ebx
>0051C9FF    je          0051CB71
 0051CA05    cmp         byte ptr [ebx+0A8],0;TCustomStaticListAction.FActive:Boolean
>0051CA0C    je          0051CB71
 0051CA12    mov         eax,ebx
 0051CA14    call        0049FE10
 0051CA19    dec         eax
 0051CA1A    test        eax,eax
>0051CA1C    jl          0051CB71
 0051CA22    inc         eax
 0051CA23    mov         ebx,eax
 0051CA25    xor         edi,edi
 0051CA27    mov         edx,edi
 0051CA29    mov         eax,dword ptr [esi+28];TStaticListItems..........FStaticListAction:TCustomStaticListActi...
 0051CA2C    call        0049FDF4
 0051CA31    mov         ebp,eax
 0051CA33    mov         eax,dword ptr [ebp+20]
 0051CA36    mov         edx,dword ptr ds:[79EC18];0x0 TComparer<FXLicenseManagerFrm.TLicFile>.Compare:Integer
 0051CA3C    call        @IsClass
 0051CA41    test        al,al
>0051CA43    je          0051CA86
 0051CA45    mov         eax,dword ptr [ebp+20]
 0051CA48    mov         eax,dword ptr [eax+324]
 0051CA4E    call        0054A4A8
 0051CA53    mov         dword ptr [esp+8],eax
 0051CA57    mov         eax,dword ptr [esp]
 0051CA5A    mov         edx,dword ptr [eax+10]
 0051CA5D    mov         eax,dword ptr [esp+8]
 0051CA61    mov         ecx,dword ptr [eax]
 0051CA63    call        dword ptr [ecx+24]
 0051CA66    mov         eax,dword ptr [esp]
 0051CA69    mov         edx,dword ptr [eax+18]
 0051CA6C    mov         eax,dword ptr [esp+8]
 0051CA70    mov         ecx,dword ptr [eax]
 0051CA72    call        dword ptr [ecx+2C]
 0051CA75    mov         eax,dword ptr [esp]
 0051CA78    mov         edx,dword ptr [eax+14]
 0051CA7B    mov         eax,dword ptr [esp+8]
 0051CA7F    mov         ecx,dword ptr [eax]
 0051CA81    call        dword ptr [ecx+28]
>0051CA84    jmp         0051CAD9
 0051CA86    mov         eax,dword ptr [ebp+20]
 0051CA89    mov         edx,dword ptr ds:[52F86C];TCustomListView
 0051CA8F    call        @IsClass
 0051CA94    test        al,al
>0051CA96    je          0051CAD9
 0051CA98    mov         eax,dword ptr [ebp+20]
 0051CA9B    mov         eax,dword ptr [eax+2BC]
 0051CAA1    call        TListItems.Add
 0051CAA6    mov         dword ptr [esp+0C],eax
 0051CAAA    mov         eax,dword ptr [esp]
 0051CAAD    mov         edx,dword ptr [eax+10]
 0051CAB0    mov         eax,dword ptr [esp+0C]
 0051CAB4    call        TListItem.SetCaption
 0051CAB9    mov         eax,dword ptr [esp]
 0051CABC    mov         ecx,dword ptr [eax+18]
 0051CABF    xor         edx,edx
 0051CAC1    mov         eax,dword ptr [esp+0C]
 0051CAC5    call        TListItem.SetImage
 0051CACA    mov         eax,dword ptr [esp]
 0051CACD    mov         edx,dword ptr [eax+14]
 0051CAD0    mov         eax,dword ptr [esp+0C]
 0051CAD4    call        TListItem.SetData
 0051CAD9    inc         edi
 0051CADA    dec         ebx
>0051CADB    jne         0051CA27
>0051CAE1    jmp         0051CB71
 0051CAE6    mov         ebx,dword ptr [esi+28];TStaticListItems...........FStaticListAction:TCustomStaticListAct...
 0051CAE9    test        ebx,ebx
>0051CAEB    je          0051CB71
 0051CAF1    cmp         byte ptr [ebx+0A8],0;TCustomStaticListAction.FActive:Boolean
>0051CAF8    je          0051CB71
 0051CAFA    mov         eax,ebx
 0051CAFC    call        0049FE10
 0051CB01    dec         eax
 0051CB02    test        eax,eax
>0051CB04    jl          0051CB71
 0051CB06    inc         eax
 0051CB07    mov         ebx,eax
 0051CB09    xor         edi,edi
 0051CB0B    mov         edx,edi
 0051CB0D    mov         eax,dword ptr [esi+28];TStaticListItems............FStaticListAction:TCustomStaticListAc...
 0051CB10    call        0049FDF4
 0051CB15    mov         ebp,eax
 0051CB17    mov         eax,dword ptr [ebp+20]
 0051CB1A    mov         edx,dword ptr ds:[79EC18];0x0 TComparer<FXLicenseManagerFrm.TLicFile>.Compare:Integer
 0051CB20    call        @IsClass
 0051CB25    test        al,al
>0051CB27    je          0051CB43
 0051CB29    mov         eax,dword ptr [esp]
 0051CB2C    call        TCollectionItem.GetIndex
 0051CB31    mov         edx,eax
 0051CB33    mov         eax,dword ptr [ebp+20]
 0051CB36    mov         eax,dword ptr [eax+2CC]
 0051CB3C    mov         ecx,dword ptr [eax]
 0051CB3E    call        dword ptr [ecx+4C]
>0051CB41    jmp         0051CB6D
 0051CB43    mov         eax,dword ptr [ebp+20]
 0051CB46    mov         edx,dword ptr ds:[52F86C];TCustomListView
 0051CB4C    call        @IsClass
 0051CB51    test        al,al
>0051CB53    je          0051CB6D
 0051CB55    mov         eax,dword ptr [esp]
 0051CB58    call        TCollectionItem.GetIndex
 0051CB5D    mov         edx,eax
 0051CB5F    mov         eax,dword ptr [ebp+20]
 0051CB62    mov         eax,dword ptr [eax+2BC]
 0051CB68    call        TListItems.Delete
 0051CB6D    inc         edi
 0051CB6E    dec         ebx
>0051CB6F    jne         0051CB0B
 0051CB71    add         esp,10
 0051CB74    pop         ebp
 0051CB75    pop         edi
 0051CB76    pop         esi
 0051CB77    pop         ebx
 0051CB78    ret
*}
end;

//0051CB7C
{*procedure sub_0051CB7C(?:?);
begin
 0051CB7C    push        ebx
 0051CB7D    push        esi
 0051CB7E    push        edi
 0051CB7F    push        ebp
 0051CB80    push        ecx
 0051CB81    mov         ebx,edx
 0051CB83    mov         edi,eax
 0051CB85    mov         edx,ebx
 0051CB87    mov         eax,edi
 0051CB89    call        0051C398
 0051CB8E    mov         esi,dword ptr [edi+28];TStaticListItems.............FStaticListAction:TCustomStaticListA...
 0051CB91    test        esi,esi
>0051CB93    je          0051CC82
 0051CB99    test        ebx,ebx
>0051CB9B    je          0051CC82
 0051CBA1    cmp         byte ptr [esi+0A8],0;TCustomStaticListAction.FActive:Boolean
>0051CBA8    je          0051CC82
 0051CBAE    cmp         byte ptr [esi+0B8],0;TCustomStaticListAction.FLoading:Boolean
>0051CBB5    jne         0051CC82
 0051CBBB    mov         eax,esi
 0051CBBD    call        0049FE10
 0051CBC2    mov         ebp,eax
 0051CBC4    dec         ebp
 0051CBC5    test        ebp,ebp
>0051CBC7    jl          0051CC82
 0051CBCD    inc         ebp
 0051CBCE    mov         dword ptr [esp],0
 0051CBD5    mov         eax,dword ptr [edi+28];TStaticListItems..............FStaticListAction:TCustomStaticList...
 0051CBD8    mov         edx,dword ptr [esp]
 0051CBDB    call        0049FDF4
 0051CBE0    mov         esi,eax
 0051CBE2    mov         eax,dword ptr [esi+20]
 0051CBE5    mov         edx,dword ptr ds:[79EC18];0x0 TComparer<FXLicenseManagerFrm.TLicFile>.Compare:Integer
 0051CBEB    call        @IsClass
 0051CBF0    test        al,al
>0051CBF2    je          0051CC2D
 0051CBF4    mov         esi,dword ptr [esi+20]
 0051CBF7    mov         eax,ebx
 0051CBF9    call        TCollectionItem.GetIndex
 0051CBFE    mov         edx,eax
 0051CC00    mov         eax,dword ptr [esi+324]
 0051CC06    call        TListControlItems.GetListItem
 0051CC0B    mov         esi,eax
 0051CC0D    mov         edx,dword ptr [ebx+10]
 0051CC10    mov         eax,esi
 0051CC12    mov         ecx,dword ptr [eax]
 0051CC14    call        dword ptr [ecx+24];TListControlItem.SetCaption
 0051CC17    mov         edx,dword ptr [ebx+18]
 0051CC1A    mov         eax,esi
 0051CC1C    mov         ecx,dword ptr [eax]
 0051CC1E    call        dword ptr [ecx+2C];TListControlItem.SetImageIndex
 0051CC21    mov         edx,dword ptr [ebx+14]
 0051CC24    mov         eax,esi
 0051CC26    mov         ecx,dword ptr [eax]
 0051CC28    call        dword ptr [ecx+28];TListControlItem.SetData
>0051CC2B    jmp         0051CC78
 0051CC2D    mov         eax,dword ptr [esi+20]
 0051CC30    mov         edx,dword ptr ds:[52F86C];TCustomListView
 0051CC36    call        @IsClass
 0051CC3B    test        al,al
>0051CC3D    je          0051CC78
 0051CC3F    mov         eax,ebx
 0051CC41    call        TCollectionItem.GetIndex
 0051CC46    mov         edx,eax
 0051CC48    mov         eax,dword ptr [esi+20]
 0051CC4B    mov         eax,dword ptr [eax+2BC]
 0051CC51    call        TListItems.GetItem
 0051CC56    mov         esi,eax
 0051CC58    mov         edx,dword ptr [ebx+10]
 0051CC5B    mov         eax,esi
 0051CC5D    call        TListItem.SetCaption
 0051CC62    mov         ecx,dword ptr [ebx+18]
 0051CC65    xor         edx,edx
 0051CC67    mov         eax,esi
 0051CC69    call        TListItem.SetImage
 0051CC6E    mov         edx,dword ptr [ebx+14]
 0051CC71    mov         eax,esi
 0051CC73    call        TListItem.SetData
 0051CC78    inc         dword ptr [esp]
 0051CC7B    dec         ebp
>0051CC7C    jne         0051CBD5
 0051CC82    pop         edx
 0051CC83    pop         ebp
 0051CC84    pop         edi
 0051CC85    pop         esi
 0051CC86    pop         ebx
 0051CC87    ret
end;*}

//0051CC88
constructor TCustomStaticListAction.Create(AOwner:TComponent);
begin
{*
 0051CC88    push        ebp
 0051CC89    mov         ebp,esp
 0051CC8B    push        ecx
 0051CC8C    push        ebx
 0051CC8D    push        esi
 0051CC8E    test        dl,dl
>0051CC90    je          0051CC9A
 0051CC92    add         esp,0FFFFFFF0
 0051CC95    call        @ClassCreate
 0051CC9A    mov         byte ptr [ebp-1],dl
 0051CC9D    mov         ebx,eax
 0051CC9F    xor         edx,edx
 0051CCA1    mov         eax,ebx
 0051CCA3    call        TCustomListAction.Create
 0051CCA8    mov         eax,ebx
 0051CCAA    mov         edx,dword ptr [eax]
 0051CCAC    call        dword ptr [edx+0A8];TCustomStaticListAction.sub_0051CDA0
 0051CCB2    push        eax
 0051CCB3    mov         ecx,ebx
 0051CCB5    mov         dl,1
 0051CCB7    mov         eax,[0051B920];TStaticListItems
 0051CCBC    call        TListControlItems.Create;TStaticListItems.Create
 0051CCC1    mov         esi,eax
 0051CCC3    mov         dword ptr [ebx+0D8],esi;TCustomStaticListAction.FListItems:TStaticListItems
 0051CCC9    mov         dword ptr [esi+28],ebx;TStaticListItems...............FStaticListAction:TCustomStaticLis...
 0051CCCC    mov         eax,ebx
 0051CCCE    cmp         byte ptr [ebp-1],0
>0051CCD2    je          0051CCE3
 0051CCD4    call        @AfterConstruction
 0051CCD9    pop         dword ptr fs:[0]
 0051CCE0    add         esp,0C
 0051CCE3    mov         eax,ebx
 0051CCE5    pop         esi
 0051CCE6    pop         ebx
 0051CCE7    pop         ecx
 0051CCE8    pop         ebp
 0051CCE9    ret
*}
end;

//0051CCEC
destructor TCustomStaticListAction.Destroy();
begin
{*
 0051CCEC    push        ebx
 0051CCED    push        esi
 0051CCEE    push        ecx
 0051CCEF    call        @BeforeDestruction
 0051CCF4    mov         ebx,edx
 0051CCF6    mov         esi,eax
 0051CCF8    lea         eax,[esi+0D8];TCustomStaticListAction.FListItems:TStaticListItems
 0051CCFE    mov         dword ptr [esp],eax
 0051CD01    mov         eax,dword ptr [esp]
 0051CD04    mov         eax,dword ptr [eax]
 0051CD06    mov         edx,dword ptr [esp]
 0051CD09    xor         ecx,ecx
 0051CD0B    mov         dword ptr [edx],ecx
 0051CD0D    call        TObject.Free
 0051CD12    mov         dl,0FC
 0051CD14    and         dl,bl
 0051CD16    mov         eax,esi
 0051CD18    call        TCustomAction.Destroy
 0051CD1D    test        bl,bl
>0051CD1F    jle         0051CD28
 0051CD21    mov         eax,esi
 0051CD23    call        @ClassDestroy
 0051CD28    pop         edx
 0051CD29    pop         esi
 0051CD2A    pop         ebx
 0051CD2B    ret
*}
end;

//0051CD2C
{*function sub_0051CD2C:?;
begin
 0051CD2C    mov         eax,dword ptr [eax+0D8];TCustomStaticListAction.FListItems:TStaticListItems
 0051CD32    mov         eax,dword ptr [eax+8];TStaticListItems.FItems:TList<System.Classes.TCollectionItem>
 0051CD35    mov         eax,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0051CD38    ret
end;*}

//0051CD3C
{*function sub_0051CD3C(?:TStaticListAction; ?:?; ?:TListControlItem):?;
begin
 0051CD3C    push        ebx
 0051CD3D    push        esi
 0051CD3E    push        edi
 0051CD3F    push        ecx
 0051CD40    mov         dword ptr [esp],ecx
 0051CD43    mov         esi,edx
 0051CD45    mov         edi,eax
 0051CD47    test        esi,esi
>0051CD49    jl          0051CD5C
 0051CD4B    mov         eax,dword ptr [edi+0D8]
 0051CD51    mov         eax,dword ptr [eax+8]
 0051CD54    cmp         esi,dword ptr [eax+8]
 0051CD57    setl        al
>0051CD5A    jmp         0051CD5E
 0051CD5C    xor         eax,eax
 0051CD5E    mov         ebx,eax
 0051CD60    test        bl,bl
>0051CD62    je          0051CD96
 0051CD64    mov         edx,esi
 0051CD66    mov         eax,dword ptr [edi+0D8]
 0051CD6C    call        TListControlItems.GetListItem
 0051CD71    mov         edx,eax
 0051CD73    mov         eax,dword ptr [esp]
 0051CD76    mov         ecx,dword ptr [eax]
 0051CD78    call        dword ptr [ecx+8]
 0051CD7B    cmp         word ptr [edi+0E2],0
>0051CD83    je          0051CD96
 0051CD85    push        esp
 0051CD86    mov         ecx,esi
 0051CD88    mov         edx,edi
 0051CD8A    mov         eax,dword ptr [edi+0E4]
 0051CD90    call        dword ptr [edi+0E0]
 0051CD96    mov         eax,ebx
 0051CD98    pop         edx
 0051CD99    pop         edi
 0051CD9A    pop         esi
 0051CD9B    pop         ebx
 0051CD9C    ret
end;*}

//0051CDA0
constructor TListControlItem.Create;
begin
{*
 0051CDA0    mov         eax,[0051A6B0];TListControlItem
 0051CDA5    ret
*}
end;

//0051CDA8
{*procedure TCustomStaticListAction.GetString(Index:Integer; ?:?);
begin
 0051CDA8    push        ebx
 0051CDA9    push        esi
 0051CDAA    push        edi
 0051CDAB    mov         edi,ecx
 0051CDAD    mov         esi,edx
 0051CDAF    mov         ebx,eax
 0051CDB1    mov         edx,esi
 0051CDB3    mov         eax,dword ptr [ebx+0D8];TCustomStaticListAction.FListItems:TStaticListItems
 0051CDB9    call        TListControlItems.GetListItem
 0051CDBE    mov         edx,dword ptr [eax+10];TListControlItem.FCaption:string
 0051CDC1    mov         eax,edi
 0051CDC3    call        @UStrAsg
 0051CDC8    pop         edi
 0051CDC9    pop         esi
 0051CDCA    pop         ebx
 0051CDCB    ret
end;*}

//0051CDCC
procedure TStaticListAction.SetItems(Value:TStaticListItems);
begin
{*
 0051CDCC    mov         eax,dword ptr [eax+0D8];TStaticListAction.FListItems:TStaticListItems
 0051CDD2    mov         ecx,dword ptr [eax]
 0051CDD4    call        dword ptr [ecx+8];TCollection.Assign
 0051CDD7    ret
*}
end;

//0051CDD8
{*procedure sub_0051CDD8(?:?; ?:?);
begin
 0051CDD8    push        ebx
 0051CDD9    push        esi
 0051CDDA    push        edi
 0051CDDB    mov         edi,ecx
 0051CDDD    mov         esi,edx
 0051CDDF    mov         ebx,eax
 0051CDE1    mov         edx,esi
 0051CDE3    mov         eax,dword ptr [ebx+0D8];TCustomStaticListAction.FListItems:TStaticListItems
 0051CDE9    call        TListControlItems.GetListItem
 0051CDEE    mov         edx,edi
 0051CDF0    mov         ecx,dword ptr [eax]
 0051CDF2    call        dword ptr [ecx+24];TListControlItem.SetCaption
 0051CDF5    pop         edi
 0051CDF6    pop         esi
 0051CDF7    pop         ebx
 0051CDF8    ret
end;*}

//0051CDFC
function TListActionLink.IsActiveLinked:Boolean;
begin
{*
 0051CDFC    push        ebx
 0051CDFD    mov         ebx,eax
 0051CDFF    mov         eax,dword ptr [ebx+10]
 0051CE02    mov         edx,dword ptr ds:[51AE1C];TCustomListAction
 0051CE08    call        @IsClass
 0051CE0D    pop         ebx
 0051CE0E    ret
*}
end;

//0051CE10
{*function sub_0051CE10:?;
begin
 0051CE10    push        ebx
 0051CE11    push        esi
 0051CE12    mov         ebx,eax
 0051CE14    mov         esi,dword ptr [ebx+10];TListActionLink.FAction:TBasicAction
 0051CE17    mov         eax,esi
 0051CE19    mov         edx,dword ptr ds:[51AE1C];TCustomListAction
 0051CE1F    call        @IsClass
 0051CE24    test        al,al
>0051CE26    je          0051CE31
 0051CE28    cmp         dword ptr [esi+0AC],0
>0051CE2F    jne         0051CE36
 0051CE31    xor         eax,eax
 0051CE33    pop         esi
 0051CE34    pop         ebx
 0051CE35    ret
 0051CE36    mov         al,1
 0051CE38    pop         esi
 0051CE39    pop         ebx
 0051CE3A    ret
end;*}

//0051CE3C
procedure TListActionLink.SetAction(Value:TBasicAction);
begin
{*
 0051CE3C    push        ebx
 0051CE3D    push        esi
 0051CE3E    mov         ebx,eax
 0051CE40    mov         eax,ebx
 0051CE42    call        TBasicActionLink.SetAction
 0051CE47    mov         eax,dword ptr [ebx+20];TListActionLink.........FClient:TWinControl
 0051CE4A    mov         edx,dword ptr ds:[4E20BC];TCustomListControl
 0051CE50    call        @IsClass
 0051CE55    test        al,al
>0051CE57    je          0051CE7D
 0051CE59    mov         esi,dword ptr [ebx+10];TListActionLink.FAction:TBasicAction
 0051CE5C    mov         eax,esi
 0051CE5E    mov         edx,dword ptr ds:[51AE1C];TCustomListAction
 0051CE64    call        @IsClass
 0051CE69    test        al,al
>0051CE6B    je          0051CE7D
 0051CE6D    cmp         byte ptr [esi+0A8],0
>0051CE74    je          0051CE7D
 0051CE76    mov         eax,ebx
 0051CE78    call        0051CEF0
 0051CE7D    pop         esi
 0051CE7E    pop         ebx
 0051CE7F    ret
*}
end;

//0051CE80
{*procedure sub_0051CE80(?:?);
begin
 0051CE80    push        ebx
 0051CE81    push        esi
 0051CE82    mov         ebx,edx
 0051CE84    mov         esi,eax
 0051CE86    test        bl,bl
>0051CE88    jne         0051CEAB
 0051CE8A    mov         ebx,dword ptr [esi+20];TListActionLink..........FClient:TWinControl
 0051CE8D    mov         eax,ebx
 0051CE8F    mov         edx,dword ptr ds:[4E20BC];TCustomListControl
 0051CE95    call        @IsClass
 0051CE9A    test        al,al
>0051CE9C    je          0051CEE6
 0051CE9E    mov         eax,ebx
 0051CEA0    mov         edx,dword ptr [eax]
 0051CEA2    call        dword ptr [edx+114]
 0051CEA8    pop         esi
 0051CEA9    pop         ebx
 0051CEAA    ret
 0051CEAB    test        bl,bl
>0051CEAD    je          0051CECD
 0051CEAF    mov         eax,dword ptr [esi+10];TListActionLink.FAction:TBasicAction
 0051CEB2    mov         edx,dword ptr ds:[51AE1C];TCustomListAction
 0051CEB8    call        @IsClass
 0051CEBD    test        al,al
>0051CEBF    je          0051CECD
 0051CEC1    mov         eax,dword ptr [esi+10];TListActionLink.FAction:TBasicAction
 0051CEC4    cmp         byte ptr [eax+0A8],0
>0051CECB    je          0051CEE6
 0051CECD    mov         eax,dword ptr [esi+10];TListActionLink.FAction:TBasicAction
 0051CED0    mov         edx,dword ptr ds:[51AE1C];TCustomListAction
 0051CED6    call        @IsClass
 0051CEDB    test        al,al
>0051CEDD    je          0051CEE6
 0051CEDF    mov         eax,esi
 0051CEE1    call        0051CEF0
 0051CEE6    pop         esi
 0051CEE7    pop         ebx
 0051CEE8    ret
end;*}

//0051CEEC
procedure sub_0051CEEC;
begin
{*
 0051CEEC    ret
*}
end;

//0051CEF0
procedure sub_0051CEF0(?:TListActionLink);
begin
{*
 0051CEF0    push        ebp
 0051CEF1    mov         ebp,esp
 0051CEF3    add         esp,0FFFFFFF0
 0051CEF6    push        ebx
 0051CEF7    push        esi
 0051CEF8    push        edi
 0051CEF9    xor         edx,edx
 0051CEFB    mov         dword ptr [ebp-4],edx
 0051CEFE    mov         esi,eax
 0051CF00    xor         eax,eax
 0051CF02    push        ebp
 0051CF03    push        51D039
 0051CF08    push        dword ptr fs:[eax]
 0051CF0B    mov         dword ptr fs:[eax],esp
 0051CF0E    mov         eax,dword ptr [esi+10];TListActionLink.FAction:TBasicAction
 0051CF11    mov         edx,dword ptr ds:[51AE1C];TCustomListAction
 0051CF17    call        @IsClass
 0051CF1C    test        al,al
>0051CF1E    je          0051D023
 0051CF24    mov         ebx,dword ptr [esi+20];TListActionLink...........FClient:TWinControl
 0051CF27    mov         eax,ebx
 0051CF29    mov         edx,dword ptr ds:[4E20BC];TCustomListControl
 0051CF2F    call        @IsClass
 0051CF34    test        al,al
>0051CF36    je          0051CF42
 0051CF38    mov         eax,ebx
 0051CF3A    mov         edx,dword ptr [eax]
 0051CF3C    call        dword ptr [edx+114]
 0051CF42    mov         ebx,dword ptr [esi+10];TListActionLink.FAction:TBasicAction
 0051CF45    mov         eax,ebx
 0051CF47    mov         edx,dword ptr ds:[51BC98];TStaticListAction
 0051CF4D    call        @IsClass
 0051CF52    test        al,al
>0051CF54    je          0051CFBB
 0051CF56    mov         eax,ebx
 0051CF58    mov         edx,dword ptr ds:[51BC98];TStaticListAction
 0051CF5E    call        @AsClass
 0051CF63    mov         edi,eax
 0051CF65    mov         eax,edi
 0051CF67    mov         edx,dword ptr [eax]
 0051CF69    call        dword ptr [edx+9C];TStaticListAction.sub_0051CD2C
 0051CF6F    dec         eax
 0051CF70    test        eax,eax
>0051CF72    jl          0051D023
 0051CF78    inc         eax
 0051CF79    mov         dword ptr [ebp-10],eax
 0051CF7C    xor         ebx,ebx
 0051CF7E    mov         eax,dword ptr [edi+0D8];TStaticListAction.FListItems:TStaticListItems
 0051CF84    mov         edx,ebx
 0051CF86    call        TListControlItems.GetListItem
 0051CF8B    mov         ecx,eax
 0051CF8D    mov         edx,ebx
 0051CF8F    mov         eax,edi
 0051CF91    call        0051CD3C
 0051CF96    test        al,al
>0051CF98    je          0051CFB3
 0051CF9A    mov         eax,dword ptr [edi+0D8];TStaticListAction.FListItems:TStaticListItems
 0051CFA0    mov         edx,ebx
 0051CFA2    call        TListControlItems.GetListItem
 0051CFA7    mov         edx,eax
 0051CFA9    mov         eax,esi
 0051CFAB    mov         ecx,dword ptr [eax]
 0051CFAD    call        dword ptr [ecx+0B4];TListActionLink.sub_0051D048
 0051CFB3    inc         ebx
 0051CFB4    dec         dword ptr [ebp-10]
>0051CFB7    jne         0051CF7E
>0051CFB9    jmp         0051D023
 0051CFBB    mov         eax,ebx
 0051CFBD    mov         edx,dword ptr ds:[51B4D8];TVirtualListAction
 0051CFC3    call        @IsClass
 0051CFC8    test        al,al
>0051CFCA    je          0051D023
 0051CFCC    mov         eax,ebx
 0051CFCE    mov         edx,dword ptr [eax]
 0051CFD0    call        dword ptr [edx+9C]
 0051CFD6    dec         eax
 0051CFD7    test        eax,eax
>0051CFD9    jl          0051D023
 0051CFDB    inc         eax
 0051CFDC    mov         dword ptr [ebp-10],eax
 0051CFDF    xor         ebx,ebx
 0051CFE1    mov         eax,dword ptr [esi+10];TListActionLink.FAction:TBasicAction
 0051CFE4    mov         edx,dword ptr ds:[51B4D8];TVirtualListAction
 0051CFEA    call        @AsClass
 0051CFEF    mov         edi,eax
 0051CFF1    lea         eax,[ebp-8]
 0051CFF4    push        eax
 0051CFF5    lea         eax,[ebp-0C]
 0051CFF8    push        eax
 0051CFF9    lea         ecx,[ebp-4]
 0051CFFC    mov         edx,ebx
 0051CFFE    mov         eax,edi
 0051D000    call        0051C89C
 0051D005    test        al,al
>0051D007    je          0051D01D
 0051D009    mov         eax,dword ptr [ebp-0C]
 0051D00C    push        eax
 0051D00D    mov         ecx,dword ptr [ebp-8]
 0051D010    mov         edx,dword ptr [ebp-4]
 0051D013    mov         eax,esi
 0051D015    mov         edi,dword ptr [eax]
 0051D017    call        dword ptr [edi+0B8];TListActionLink.AddItem
 0051D01D    inc         ebx
 0051D01E    dec         dword ptr [ebp-10]
>0051D021    jne         0051CFE1
 0051D023    xor         eax,eax
 0051D025    pop         edx
 0051D026    pop         ecx
 0051D027    pop         ecx
 0051D028    mov         dword ptr fs:[eax],edx
 0051D02B    push        51D040
 0051D030    lea         eax,[ebp-4]
 0051D033    call        @UStrClr
 0051D038    ret
>0051D039    jmp         @HandleFinally
>0051D03E    jmp         0051D030
 0051D040    pop         edi
 0051D041    pop         esi
 0051D042    pop         ebx
 0051D043    mov         esp,ebp
 0051D045    pop         ebp
 0051D046    ret
*}
end;

//0051D048
procedure sub_0051D048;
begin
{*
 0051D048    ret
*}
end;

//0051D04C
procedure TListActionLink.AddItem(ACaption:UnicodeString; AImageIndex:Integer; DataPtr:Controls.TCustomData);
begin
{*
 0051D04C    push        ebp
 0051D04D    mov         ebp,esp
 0051D04F    xor         eax,eax
 0051D051    push        ebp
 0051D052    push        51D06B
 0051D057    push        dword ptr fs:[eax]
 0051D05A    mov         dword ptr fs:[eax],esp
 0051D05D    xor         eax,eax
 0051D05F    pop         edx
 0051D060    pop         ecx
 0051D061    pop         ecx
 0051D062    mov         dword ptr fs:[eax],edx
 0051D065    push        51D072
 0051D06A    ret
>0051D06B    jmp         @HandleFinally
>0051D070    jmp         0051D06A
 0051D072    pop         ebp
 0051D073    ret         4
*}
end;

//0051D078
{*procedure sub_0051D078(?:?);
begin
 0051D078    push        ebx
 0051D079    push        esi
 0051D07A    push        edi
 0051D07B    mov         edi,edx
 0051D07D    mov         ebx,eax
 0051D07F    mov         esi,dword ptr [ebx+20];TListActionLink............FClient:TWinControl
 0051D082    mov         eax,esi
 0051D084    mov         edx,dword ptr ds:[4E20BC];TCustomListControl
 0051D08A    call        @IsClass
 0051D08F    test        al,al
>0051D091    je          0051D09F
 0051D093    mov         edx,edi
 0051D095    mov         eax,esi
 0051D097    mov         ecx,dword ptr [eax]
 0051D099    call        dword ptr [ecx+10C]
 0051D09F    pop         edi
 0051D0A0    pop         esi
 0051D0A1    pop         ebx
 0051D0A2    ret
end;*}

//0051D68C
procedure TClipboard.Clear;
begin
{*
 0051D68C    push        ebp
 0051D68D    mov         ebp,esp
 0051D68F    push        ecx
 0051D690    mov         dword ptr [ebp-4],eax
 0051D693    mov         eax,dword ptr [ebp-4]
 0051D696    mov         edx,dword ptr [eax]
 0051D698    call        dword ptr [edx+18]
 0051D69B    xor         eax,eax
 0051D69D    push        ebp
 0051D69E    push        51D6C4
 0051D6A3    push        dword ptr fs:[eax]
 0051D6A6    mov         dword ptr fs:[eax],esp
 0051D6A9    call        user32.EmptyClipboard
 0051D6AE    xor         eax,eax
 0051D6B0    pop         edx
 0051D6B1    pop         ecx
 0051D6B2    pop         ecx
 0051D6B3    mov         dword ptr fs:[eax],edx
 0051D6B6    push        51D6CB
 0051D6BB    mov         eax,dword ptr [ebp-4]
 0051D6BE    mov         edx,dword ptr [eax]
 0051D6C0    call        dword ptr [edx+14]
 0051D6C3    ret
>0051D6C4    jmp         @HandleFinally
>0051D6C9    jmp         0051D6BB
 0051D6CB    pop         ecx
 0051D6CC    pop         ebp
 0051D6CD    ret
*}
end;

//0051D6D0
procedure TClipboard.Adding;
begin
{*
 0051D6D0    push        ebx
 0051D6D1    mov         ebx,eax
 0051D6D3    cmp         dword ptr [ebx+4],0
>0051D6D7    je          0051D6EA
 0051D6D9    cmp         byte ptr [ebx+0D],0
>0051D6DD    jne         0051D6EA
 0051D6DF    mov         eax,ebx
 0051D6E1    mov         edx,dword ptr [eax]
 0051D6E3    call        dword ptr [edx+10]
 0051D6E6    mov         byte ptr [ebx+0D],1
 0051D6EA    pop         ebx
 0051D6EB    ret
*}
end;

//0051D6EC
procedure TClipboard.Close;
begin
{*
 0051D6EC    push        ebx
 0051D6ED    mov         ebx,eax
 0051D6EF    cmp         dword ptr [ebx+4],0
>0051D6F3    je          0051D716
 0051D6F5    dec         dword ptr [ebx+4]
 0051D6F8    cmp         dword ptr [ebx+4],0
>0051D6FC    jne         0051D716
 0051D6FE    call        user32.CloseClipboard
 0051D703    cmp         byte ptr [ebx+0C],0
>0051D707    je          0051D711
 0051D709    mov         eax,dword ptr [ebx+8]
 0051D70C    call        DeallocateHWnd
 0051D711    xor         eax,eax
 0051D713    mov         dword ptr [ebx+8],eax
 0051D716    pop         ebx
 0051D717    ret
*}
end;

//0051D718
procedure TClipboard.Open;
begin
{*
 0051D718    push        ebp
 0051D719    mov         ebp,esp
 0051D71B    add         esp,0FFFFFFF4
 0051D71E    push        ebx
 0051D71F    xor         edx,edx
 0051D721    mov         dword ptr [ebp-0C],edx
 0051D724    mov         ebx,eax
 0051D726    xor         eax,eax
 0051D728    push        ebp
 0051D729    push        51D7C0
 0051D72E    push        dword ptr fs:[eax]
 0051D731    mov         dword ptr fs:[eax],esp
 0051D734    cmp         dword ptr [ebx+4],0;TClipboard.FOpenRefCount:Integer
>0051D738    jne         0051D7A7
 0051D73A    mov         eax,[007C4A18];^Application:TApplication
 0051D73F    mov         eax,dword ptr [eax]
 0051D741    mov         eax,dword ptr [eax+188];TApplication.FHandle:HWND
 0051D747    mov         dword ptr [ebx+8],eax;TClipboard.FClipboardWindow:HWND
 0051D74A    test        eax,eax
>0051D74C    jne         0051D760
 0051D74E    push        ebx
 0051D74F    push        51DE6C;TClipboard.MainWndProc
 0051D754    call        AllocateHWnd
 0051D759    mov         dword ptr [ebx+8],eax;TClipboard.FClipboardWindow:HWND
 0051D75C    mov         byte ptr [ebx+0C],1;TClipboard.FAllocated:Boolean
 0051D760    mov         eax,dword ptr [ebx+8];TClipboard.FClipboardWindow:HWND
 0051D763    push        eax
 0051D764    call        user32.OpenClipboard
 0051D769    test        eax,eax
>0051D76B    jne         0051D7A3
 0051D76D    call        kernel32.GetLastError
 0051D772    lea         ecx,[ebp-0C]
 0051D775    xor         edx,edx
 0051D777    call        00422CB4
 0051D77C    mov         eax,dword ptr [ebp-0C]
 0051D77F    mov         dword ptr [ebp-8],eax
 0051D782    mov         byte ptr [ebp-4],11
 0051D786    lea         eax,[ebp-8]
 0051D789    push        eax
 0051D78A    push        0
 0051D78C    mov         ecx,dword ptr ds:[7C42E8];^SResString313:TResStringRec
 0051D792    mov         dl,1
 0051D794    mov         eax,[0051D5D8];EClipboardException
 0051D799    call        Exception.CreateResFmt;EClipboardException.Create
 0051D79E    call        @RaiseExcept
 0051D7A3    mov         byte ptr [ebx+0D],0;TClipboard.FEmptied:Boolean
 0051D7A7    inc         dword ptr [ebx+4];TClipboard.FOpenRefCount:Integer
 0051D7AA    xor         eax,eax
 0051D7AC    pop         edx
 0051D7AD    pop         ecx
 0051D7AE    pop         ecx
 0051D7AF    mov         dword ptr fs:[eax],edx
 0051D7B2    push        51D7C7
 0051D7B7    lea         eax,[ebp-0C]
 0051D7BA    call        @UStrClr
 0051D7BF    ret
>0051D7C0    jmp         @HandleFinally
>0051D7C5    jmp         0051D7B7
 0051D7C7    pop         ebx
 0051D7C8    mov         esp,ebp
 0051D7CA    pop         ebp
 0051D7CB    ret
*}
end;

//0051D7CC
procedure TClipboard.WndProc(var Message:Messages.TMessage);
begin
{*
 0051D7CC    push        ebx
 0051D7CD    push        esi
 0051D7CE    mov         ebx,edx
 0051D7D0    mov         esi,eax
 0051D7D2    mov         eax,dword ptr [ebx+8]
 0051D7D5    push        eax
 0051D7D6    mov         eax,dword ptr [ebx+4]
 0051D7D9    push        eax
 0051D7DA    mov         eax,dword ptr [ebx]
 0051D7DC    push        eax
 0051D7DD    mov         eax,dword ptr [esi+8]
 0051D7E0    push        eax
 0051D7E1    call        user32.DefWindowProcW
 0051D7E6    mov         dword ptr [ebx+0C],eax
 0051D7E9    pop         esi
 0051D7EA    pop         ebx
 0051D7EB    ret
*}
end;

//0051D7EC
procedure TClipboard.SetBuffer(Format:Word; var Buffer:void ; Size:Integer);
begin
{*
 0051D7EC    push        ebp
 0051D7ED    mov         ebp,esp
 0051D7EF    add         esp,0FFFFFFF8
 0051D7F2    push        ebx
 0051D7F3    push        esi
 0051D7F4    push        edi
 0051D7F5    mov         edi,ecx
 0051D7F7    mov         esi,edx
 0051D7F9    mov         dword ptr [ebp-4],eax
 0051D7FC    mov         ebx,dword ptr [ebp+8]
 0051D7FF    mov         eax,dword ptr [ebp-4]
 0051D802    mov         edx,dword ptr [eax]
 0051D804    call        dword ptr [edx+18]
 0051D807    xor         edx,edx
 0051D809    push        ebp
 0051D80A    push        51D8D9
 0051D80F    push        dword ptr fs:[edx]
 0051D812    mov         dword ptr fs:[edx],esp
 0051D815    push        ebx
 0051D816    push        2002
 0051D81B    call        kernel32.GlobalAlloc
 0051D820    mov         dword ptr [ebp-8],eax
 0051D823    xor         edx,edx
 0051D825    push        ebp
 0051D826    push        51D8AB
 0051D82B    push        dword ptr fs:[edx]
 0051D82E    mov         dword ptr fs:[edx],esp
 0051D831    mov         eax,dword ptr [ebp-8]
 0051D834    push        eax
 0051D835    call        kernel32.GlobalLock
 0051D83A    xor         edx,edx
 0051D83C    push        ebp
 0051D83D    push        51D89A
 0051D842    push        dword ptr fs:[edx]
 0051D845    mov         dword ptr fs:[edx],esp
 0051D848    mov         edx,eax
 0051D84A    mov         eax,edi
 0051D84C    mov         ecx,ebx
 0051D84E    call        Move
 0051D853    mov         eax,dword ptr [ebp-4]
 0051D856    call        TClipboard.Adding
 0051D85B    mov         eax,dword ptr [ebp-8]
 0051D85E    push        eax
 0051D85F    movzx       eax,si
 0051D862    push        eax
 0051D863    call        user32.SetClipboardData
 0051D868    test        eax,eax
>0051D86A    jne         0051D883
 0051D86C    mov         ecx,dword ptr ds:[7C434C];^SResString219:TResStringRec
 0051D872    mov         dl,1
 0051D874    mov         eax,[0046BDEC];EOutOfResources
 0051D879    call        Exception.CreateRes
 0051D87E    call        @RaiseExcept
 0051D883    xor         eax,eax
 0051D885    pop         edx
 0051D886    pop         ecx
 0051D887    pop         ecx
 0051D888    mov         dword ptr fs:[eax],edx
 0051D88B    push        51D8A1
 0051D890    mov         eax,dword ptr [ebp-8]
 0051D893    push        eax
 0051D894    call        kernel32.GlobalUnlock
 0051D899    ret
>0051D89A    jmp         @HandleFinally
>0051D89F    jmp         0051D890
 0051D8A1    xor         eax,eax
 0051D8A3    pop         edx
 0051D8A4    pop         ecx
 0051D8A5    pop         ecx
 0051D8A6    mov         dword ptr fs:[eax],edx
>0051D8A9    jmp         0051D8C3
>0051D8AB    jmp         @HandleAnyException
 0051D8B0    mov         eax,dword ptr [ebp-8]
 0051D8B3    push        eax
 0051D8B4    call        kernel32.GlobalFree
 0051D8B9    call        @RaiseAgain
 0051D8BE    call        @DoneExcept
 0051D8C3    xor         eax,eax
 0051D8C5    pop         edx
 0051D8C6    pop         ecx
 0051D8C7    pop         ecx
 0051D8C8    mov         dword ptr fs:[eax],edx
 0051D8CB    push        51D8E0
 0051D8D0    mov         eax,dword ptr [ebp-4]
 0051D8D3    mov         edx,dword ptr [eax]
 0051D8D5    call        dword ptr [edx+14]
 0051D8D8    ret
>0051D8D9    jmp         @HandleFinally
>0051D8DE    jmp         0051D8D0
 0051D8E0    pop         edi
 0051D8E1    pop         esi
 0051D8E2    pop         ebx
 0051D8E3    pop         ecx
 0051D8E4    pop         ecx
 0051D8E5    pop         ebp
 0051D8E6    ret         4
*}
end;

//0051D8EC
function TClipboard.GetTextBuf(Buffer:PWideChar; BufSize:Integer):Integer;
begin
{*
 0051D8EC    push        ebp
 0051D8ED    mov         ebp,esp
 0051D8EF    add         esp,0FFFFFFF4
 0051D8F2    push        ebx
 0051D8F3    push        esi
 0051D8F4    push        edi
 0051D8F5    mov         edi,ecx
 0051D8F7    mov         esi,edx
 0051D8F9    mov         dword ptr [ebp-4],eax
 0051D8FC    mov         eax,dword ptr [ebp-4]
 0051D8FF    mov         edx,dword ptr [eax]
 0051D901    call        dword ptr [edx+18];TClipboard.Open
 0051D904    xor         edx,edx
 0051D906    push        ebp
 0051D907    push        51D962
 0051D90C    push        dword ptr fs:[edx]
 0051D90F    mov         dword ptr fs:[edx],esp
 0051D912    push        0D
 0051D914    call        user32.GetClipboardData
 0051D919    mov         ebx,eax
 0051D91B    test        ebx,ebx
>0051D91D    jne         0051D926
 0051D91F    xor         eax,eax
 0051D921    mov         dword ptr [ebp-8],eax
>0051D924    jmp         0051D94C
 0051D926    push        ebx
 0051D927    call        kernel32.GlobalLock
 0051D92C    mov         edx,eax
 0051D92E    mov         ecx,edi
 0051D930    dec         ecx
 0051D931    mov         eax,esi
 0051D933    call        StrLCopy
 0051D938    mov         dword ptr [ebp-0C],eax
 0051D93B    mov         eax,dword ptr [ebp-0C]
 0051D93E    call        @PWCharLen
 0051D943    mov         dword ptr [ebp-8],eax
 0051D946    push        ebx
 0051D947    call        kernel32.GlobalUnlock
 0051D94C    xor         eax,eax
 0051D94E    pop         edx
 0051D94F    pop         ecx
 0051D950    pop         ecx
 0051D951    mov         dword ptr fs:[eax],edx
 0051D954    push        51D969
 0051D959    mov         eax,dword ptr [ebp-4]
 0051D95C    mov         edx,dword ptr [eax]
 0051D95E    call        dword ptr [edx+14];TClipboard.Close
 0051D961    ret
>0051D962    jmp         @HandleFinally
>0051D967    jmp         0051D959
 0051D969    mov         eax,dword ptr [ebp-8]
 0051D96C    pop         edi
 0051D96D    pop         esi
 0051D96E    pop         ebx
 0051D96F    mov         esp,ebp
 0051D971    pop         ebp
 0051D972    ret
*}
end;

//0051D974
procedure TClipboard.SetTextBuf(Buffer:PWideChar);
begin
{*
 0051D974    push        ebx
 0051D975    push        esi
 0051D976    mov         esi,edx
 0051D978    mov         ebx,eax
 0051D97A    mov         eax,esi
 0051D97C    call        @PWCharLen
 0051D981    add         eax,eax
 0051D983    add         eax,2
 0051D986    push        eax
 0051D987    mov         ecx,esi
 0051D989    mov         dx,0D
 0051D98D    mov         eax,ebx
 0051D98F    call        TClipboard.SetBuffer
 0051D994    pop         esi
 0051D995    pop         ebx
 0051D996    ret
*}
end;

//0051D998
function TClipboard.GetAsText:UnicodeString;
begin
{*
 0051D998    push        ebp
 0051D999    mov         ebp,esp
 0051D99B    add         esp,0FFFFFFF8
 0051D99E    push        ebx
 0051D99F    mov         ebx,edx
 0051D9A1    mov         dword ptr [ebp-4],eax
 0051D9A4    mov         eax,dword ptr [ebp-4]
 0051D9A7    mov         edx,dword ptr [eax]
 0051D9A9    call        dword ptr [edx+18]
 0051D9AC    push        0D
 0051D9AE    call        user32.GetClipboardData
 0051D9B3    mov         dword ptr [ebp-8],eax
 0051D9B6    xor         eax,eax
 0051D9B8    push        ebp
 0051D9B9    push        51DA0A
 0051D9BE    push        dword ptr fs:[eax]
 0051D9C1    mov         dword ptr fs:[eax],esp
 0051D9C4    cmp         dword ptr [ebp-8],0
>0051D9C8    je          0051D9DE
 0051D9CA    mov         eax,dword ptr [ebp-8]
 0051D9CD    push        eax
 0051D9CE    call        kernel32.GlobalLock
 0051D9D3    mov         edx,eax
 0051D9D5    mov         eax,ebx
 0051D9D7    call        @UStrFromPWChar
>0051D9DC    jmp         0051D9E5
 0051D9DE    mov         eax,ebx
 0051D9E0    call        @UStrClr
 0051D9E5    xor         eax,eax
 0051D9E7    pop         edx
 0051D9E8    pop         ecx
 0051D9E9    pop         ecx
 0051D9EA    mov         dword ptr fs:[eax],edx
 0051D9ED    push        51DA11
 0051D9F2    cmp         dword ptr [ebp-8],0
>0051D9F6    je          0051DA01
 0051D9F8    mov         eax,dword ptr [ebp-8]
 0051D9FB    push        eax
 0051D9FC    call        kernel32.GlobalUnlock
 0051DA01    mov         eax,dword ptr [ebp-4]
 0051DA04    mov         edx,dword ptr [eax]
 0051DA06    call        dword ptr [edx+14]
 0051DA09    ret
>0051DA0A    jmp         @HandleFinally
>0051DA0F    jmp         0051D9F2
 0051DA11    pop         ebx
 0051DA12    pop         ecx
 0051DA13    pop         ecx
 0051DA14    pop         ebp
 0051DA15    ret
*}
end;

//0051DA18
{*procedure sub_0051DA18(?:TClipboard; ?:?);
begin
 0051DA18    push        ebx
 0051DA19    push        esi
 0051DA1A    push        edi
 0051DA1B    mov         edi,edx
 0051DA1D    mov         esi,eax
 0051DA1F    mov         ebx,edi
 0051DA21    test        ebx,ebx
>0051DA23    je          0051DA2A
 0051DA25    sub         ebx,4
 0051DA28    mov         ebx,dword ptr [ebx]
 0051DA2A    mov         eax,ebx
 0051DA2C    add         eax,eax
 0051DA2E    add         eax,2
 0051DA31    push        eax
 0051DA32    mov         eax,edi
 0051DA34    call        @UStrToPWChar
 0051DA39    mov         ecx,eax
 0051DA3B    mov         dx,0D
 0051DA3F    mov         eax,esi
 0051DA41    call        TClipboard.SetBuffer
 0051DA46    pop         edi
 0051DA47    pop         esi
 0051DA48    pop         ebx
 0051DA49    ret
end;*}

//0051DA4C
procedure TClipboard.AssignToPicture(Dest:Graphics.TPicture);
begin
{*
 0051DA4C    push        ebp
 0051DA4D    mov         ebp,esp
 0051DA4F    add         esp,0FFFFFFF8
 0051DA52    push        ebx
 0051DA53    push        esi
 0051DA54    push        edi
 0051DA55    mov         dword ptr [ebp-8],edx
 0051DA58    mov         dword ptr [ebp-4],eax
 0051DA5B    mov         eax,dword ptr [ebp-4]
 0051DA5E    mov         edx,dword ptr [eax]
 0051DA60    call        dword ptr [edx+18]
 0051DA63    xor         eax,eax
 0051DA65    push        ebp
 0051DA66    push        51DAF4
 0051DA6B    push        dword ptr fs:[eax]
 0051DA6E    mov         dword ptr fs:[eax],esp
 0051DA71    push        0
 0051DA73    call        user32.EnumClipboardFormats
 0051DA78    mov         ebx,eax
 0051DA7A    test        bx,bx
>0051DA7D    je          0051DAC7
 0051DA7F    mov         edx,ebx
 0051DA81    mov         eax,[004C0BB8];TPicture
 0051DA86    call        TPicture.SupportsClipboardFormat
 0051DA8B    test        al,al
>0051DA8D    je          0051DAB7
 0051DA8F    movzx       eax,bx
 0051DA92    push        eax
 0051DA93    call        user32.GetClipboardData
 0051DA98    mov         esi,eax
 0051DA9A    push        9
 0051DA9C    call        user32.GetClipboardData
 0051DAA1    mov         edi,eax
 0051DAA3    push        edi
 0051DAA4    mov         ecx,esi
 0051DAA6    mov         edx,ebx
 0051DAA8    mov         eax,dword ptr [ebp-8]
 0051DAAB    call        TPicture.LoadFromClipboardFormat
 0051DAB0    call        @TryFinallyExit
>0051DAB5    jmp         0051DAFB
 0051DAB7    movzx       eax,bx
 0051DABA    push        eax
 0051DABB    call        user32.EnumClipboardFormats
 0051DAC0    mov         ebx,eax
 0051DAC2    test        bx,bx
>0051DAC5    jne         0051DA7F
 0051DAC7    mov         ecx,dword ptr ds:[7C444C];^SResString311:TResStringRec
 0051DACD    mov         dl,1
 0051DACF    mov         eax,[0051D5D8];EClipboardException
 0051DAD4    call        Exception.CreateRes
 0051DAD9    call        @RaiseExcept
 0051DADE    xor         eax,eax
 0051DAE0    pop         edx
 0051DAE1    pop         ecx
 0051DAE2    pop         ecx
 0051DAE3    mov         dword ptr fs:[eax],edx
 0051DAE6    push        51DAFB
 0051DAEB    mov         eax,dword ptr [ebp-4]
 0051DAEE    mov         edx,dword ptr [eax]
 0051DAF0    call        dword ptr [edx+14]
 0051DAF3    ret
>0051DAF4    jmp         @HandleFinally
>0051DAF9    jmp         0051DAEB
 0051DAFB    pop         edi
 0051DAFC    pop         esi
 0051DAFD    pop         ebx
 0051DAFE    pop         ecx
 0051DAFF    pop         ecx
 0051DB00    pop         ebp
 0051DB01    ret
*}
end;

//0051DB04
procedure TClipboard.AssignToBitmap(Dest:Graphics.TBitmap);
begin
{*
 0051DB04    push        ebp
 0051DB05    mov         ebp,esp
 0051DB07    push        ecx
 0051DB08    push        ebx
 0051DB09    push        esi
 0051DB0A    push        edi
 0051DB0B    mov         edi,edx
 0051DB0D    mov         dword ptr [ebp-4],eax
 0051DB10    mov         eax,dword ptr [ebp-4]
 0051DB13    mov         edx,dword ptr [eax]
 0051DB15    call        dword ptr [edx+18]
 0051DB18    xor         eax,eax
 0051DB1A    push        ebp
 0051DB1B    push        51DB5C
 0051DB20    push        dword ptr fs:[eax]
 0051DB23    mov         dword ptr fs:[eax],esp
 0051DB26    push        2
 0051DB28    call        user32.GetClipboardData
 0051DB2D    mov         ebx,eax
 0051DB2F    push        9
 0051DB31    call        user32.GetClipboardData
 0051DB36    mov         esi,eax
 0051DB38    push        esi
 0051DB39    mov         ecx,ebx
 0051DB3B    mov         dx,2
 0051DB3F    mov         eax,edi
 0051DB41    mov         ebx,dword ptr [eax]
 0051DB43    call        dword ptr [ebx+64]
 0051DB46    xor         eax,eax
 0051DB48    pop         edx
 0051DB49    pop         ecx
 0051DB4A    pop         ecx
 0051DB4B    mov         dword ptr fs:[eax],edx
 0051DB4E    push        51DB63
 0051DB53    mov         eax,dword ptr [ebp-4]
 0051DB56    mov         edx,dword ptr [eax]
 0051DB58    call        dword ptr [edx+14]
 0051DB5B    ret
>0051DB5C    jmp         @HandleFinally
>0051DB61    jmp         0051DB53
 0051DB63    pop         edi
 0051DB64    pop         esi
 0051DB65    pop         ebx
 0051DB66    pop         ecx
 0051DB67    pop         ebp
 0051DB68    ret
*}
end;

//0051DB6C
procedure TClipboard.AssignToMetafile(Dest:Graphics.TMetafile);
begin
{*
 0051DB6C    push        ebp
 0051DB6D    mov         ebp,esp
 0051DB6F    push        ecx
 0051DB70    push        ebx
 0051DB71    push        esi
 0051DB72    mov         esi,edx
 0051DB74    mov         dword ptr [ebp-4],eax
 0051DB77    mov         eax,dword ptr [ebp-4]
 0051DB7A    mov         edx,dword ptr [eax]
 0051DB7C    call        dword ptr [edx+18]
 0051DB7F    xor         edx,edx
 0051DB81    push        ebp
 0051DB82    push        51DBC1
 0051DB87    push        dword ptr fs:[edx]
 0051DB8A    mov         dword ptr fs:[edx],esp
 0051DB8D    push        3
 0051DB8F    call        user32.GetClipboardData
 0051DB94    mov         ebx,eax
 0051DB96    push        9
 0051DB98    call        user32.GetClipboardData
 0051DB9D    push        eax
 0051DB9E    mov         ecx,ebx
 0051DBA0    mov         dx,3
 0051DBA4    mov         eax,esi
 0051DBA6    mov         ebx,dword ptr [eax]
 0051DBA8    call        dword ptr [ebx+64]
 0051DBAB    xor         eax,eax
 0051DBAD    pop         edx
 0051DBAE    pop         ecx
 0051DBAF    pop         ecx
 0051DBB0    mov         dword ptr fs:[eax],edx
 0051DBB3    push        51DBC8
 0051DBB8    mov         eax,dword ptr [ebp-4]
 0051DBBB    mov         edx,dword ptr [eax]
 0051DBBD    call        dword ptr [edx+14]
 0051DBC0    ret
>0051DBC1    jmp         @HandleFinally
>0051DBC6    jmp         0051DBB8
 0051DBC8    pop         esi
 0051DBC9    pop         ebx
 0051DBCA    pop         ecx
 0051DBCB    pop         ebp
 0051DBCC    ret
*}
end;

//0051DBD0
procedure TClipboard.AssignTo(Dest:Classes.TPersistent);
begin
{*
 0051DBD0    push        ebx
 0051DBD1    push        esi
 0051DBD2    mov         ebx,edx
 0051DBD4    mov         esi,eax
 0051DBD6    mov         eax,ebx
 0051DBD8    mov         edx,dword ptr ds:[4C0BB8];TPicture
 0051DBDE    call        @IsClass
 0051DBE3    test        al,al
>0051DBE5    je          0051DBF3
 0051DBE7    mov         edx,ebx
 0051DBE9    mov         eax,esi
 0051DBEB    call        TClipboard.AssignToPicture
 0051DBF0    pop         esi
 0051DBF1    pop         ebx
 0051DBF2    ret
 0051DBF3    mov         eax,ebx
 0051DBF5    mov         edx,dword ptr ds:[4C1D10];TBitmap
 0051DBFB    call        @IsClass
 0051DC00    test        al,al
>0051DC02    je          0051DC0F
 0051DC04    mov         edx,ebx
 0051DC06    mov         eax,esi
 0051DC08    call        TClipboard.AssignToBitmap
>0051DC0D    jmp         0051DC34
 0051DC0F    mov         eax,ebx
 0051DC11    mov         edx,dword ptr ds:[4C14B0];TMetafile
 0051DC17    call        @IsClass
 0051DC1C    test        al,al
>0051DC1E    je          0051DC2B
 0051DC20    mov         edx,ebx
 0051DC22    mov         eax,esi
 0051DC24    call        TClipboard.AssignToMetafile
>0051DC29    jmp         0051DC34
 0051DC2B    mov         edx,ebx
 0051DC2D    mov         eax,esi
 0051DC2F    call        TPersistent.AssignTo
 0051DC34    pop         esi
 0051DC35    pop         ebx
 0051DC36    ret
*}
end;

//0051DC38
procedure TClipboard.AssignPicture(Source:Graphics.TPicture);
begin
{*
 0051DC38    push        ebp
 0051DC39    mov         ebp,esp
 0051DC3B    add         esp,0FFFFFFF0
 0051DC3E    push        ebx
 0051DC3F    mov         ebx,edx
 0051DC41    mov         dword ptr [ebp-4],eax
 0051DC44    mov         eax,dword ptr [ebp-4]
 0051DC47    mov         edx,dword ptr [eax]
 0051DC49    call        dword ptr [edx+18]
 0051DC4C    xor         eax,eax
 0051DC4E    push        ebp
 0051DC4F    push        51DCAD
 0051DC54    push        dword ptr fs:[eax]
 0051DC57    mov         dword ptr fs:[eax],esp
 0051DC5A    mov         eax,dword ptr [ebp-4]
 0051DC5D    call        TClipboard.Adding
 0051DC62    xor         eax,eax
 0051DC64    mov         dword ptr [ebp-10],eax
 0051DC67    lea         eax,[ebp-10]
 0051DC6A    push        eax
 0051DC6B    lea         ecx,[ebp-8]
 0051DC6E    lea         edx,[ebp-0A]
 0051DC71    mov         eax,ebx
 0051DC73    call        TPicture.SaveToClipboardFormat
 0051DC78    mov         eax,dword ptr [ebp-8]
 0051DC7B    push        eax
 0051DC7C    movzx       eax,word ptr [ebp-0A]
 0051DC80    push        eax
 0051DC81    call        user32.SetClipboardData
 0051DC86    cmp         dword ptr [ebp-10],0
>0051DC8A    je          0051DC97
 0051DC8C    mov         eax,dword ptr [ebp-10]
 0051DC8F    push        eax
 0051DC90    push        9
 0051DC92    call        user32.SetClipboardData
 0051DC97    xor         eax,eax
 0051DC99    pop         edx
 0051DC9A    pop         ecx
 0051DC9B    pop         ecx
 0051DC9C    mov         dword ptr fs:[eax],edx
 0051DC9F    push        51DCB4
 0051DCA4    mov         eax,dword ptr [ebp-4]
 0051DCA7    mov         edx,dword ptr [eax]
 0051DCA9    call        dword ptr [edx+14]
 0051DCAC    ret
>0051DCAD    jmp         @HandleFinally
>0051DCB2    jmp         0051DCA4
 0051DCB4    pop         ebx
 0051DCB5    mov         esp,ebp
 0051DCB7    pop         ebp
 0051DCB8    ret
*}
end;

//0051DCBC
procedure TClipboard.AssignGraphic(Source:Graphics.TGraphic);
begin
{*
 0051DCBC    push        ebp
 0051DCBD    mov         ebp,esp
 0051DCBF    add         esp,0FFFFFFF0
 0051DCC2    push        ebx
 0051DCC3    mov         ebx,edx
 0051DCC5    mov         dword ptr [ebp-4],eax
 0051DCC8    mov         eax,dword ptr [ebp-4]
 0051DCCB    mov         edx,dword ptr [eax]
 0051DCCD    call        dword ptr [edx+18]
 0051DCD0    xor         eax,eax
 0051DCD2    push        ebp
 0051DCD3    push        51DD31
 0051DCD8    push        dword ptr fs:[eax]
 0051DCDB    mov         dword ptr fs:[eax],esp
 0051DCDE    mov         eax,dword ptr [ebp-4]
 0051DCE1    call        TClipboard.Adding
 0051DCE6    xor         eax,eax
 0051DCE8    mov         dword ptr [ebp-10],eax
 0051DCEB    lea         eax,[ebp-10]
 0051DCEE    push        eax
 0051DCEF    lea         ecx,[ebp-8]
 0051DCF2    lea         edx,[ebp-0A]
 0051DCF5    mov         eax,ebx
 0051DCF7    mov         ebx,dword ptr [eax]
 0051DCF9    call        dword ptr [ebx+68]
 0051DCFC    mov         eax,dword ptr [ebp-8]
 0051DCFF    push        eax
 0051DD00    movzx       eax,word ptr [ebp-0A]
 0051DD04    push        eax
 0051DD05    call        user32.SetClipboardData
 0051DD0A    cmp         dword ptr [ebp-10],0
>0051DD0E    je          0051DD1B
 0051DD10    mov         eax,dword ptr [ebp-10]
 0051DD13    push        eax
 0051DD14    push        9
 0051DD16    call        user32.SetClipboardData
 0051DD1B    xor         eax,eax
 0051DD1D    pop         edx
 0051DD1E    pop         ecx
 0051DD1F    pop         ecx
 0051DD20    mov         dword ptr fs:[eax],edx
 0051DD23    push        51DD38
 0051DD28    mov         eax,dword ptr [ebp-4]
 0051DD2B    mov         edx,dword ptr [eax]
 0051DD2D    call        dword ptr [edx+14]
 0051DD30    ret
>0051DD31    jmp         @HandleFinally
>0051DD36    jmp         0051DD28
 0051DD38    pop         ebx
 0051DD39    mov         esp,ebp
 0051DD3B    pop         ebp
 0051DD3C    ret
*}
end;

//0051DD40
procedure TClipboard.Assign(Source:TPersistent);
begin
{*
 0051DD40    push        ebx
 0051DD41    push        esi
 0051DD42    mov         ebx,edx
 0051DD44    mov         esi,eax
 0051DD46    mov         eax,ebx
 0051DD48    mov         edx,dword ptr ds:[4C0BB8];TPicture
 0051DD4E    call        @IsClass
 0051DD53    test        al,al
>0051DD55    je          0051DD63
 0051DD57    mov         edx,ebx
 0051DD59    mov         eax,esi
 0051DD5B    call        TClipboard.AssignPicture
 0051DD60    pop         esi
 0051DD61    pop         ebx
 0051DD62    ret
 0051DD63    mov         eax,ebx
 0051DD65    mov         edx,dword ptr ds:[4C053C];TGraphic
 0051DD6B    call        @IsClass
 0051DD70    test        al,al
>0051DD72    je          0051DD7F
 0051DD74    mov         edx,ebx
 0051DD76    mov         eax,esi
 0051DD78    call        TClipboard.AssignGraphic
>0051DD7D    jmp         0051DD88
 0051DD7F    mov         edx,ebx
 0051DD81    mov         eax,esi
 0051DD83    call        TPersistent.Assign
 0051DD88    pop         esi
 0051DD89    pop         ebx
 0051DD8A    ret
*}
end;

//0051DD94
function HasAPicture:Boolean;
begin
{*
 0051DD94    push        ebp
 0051DD95    mov         ebp,esp
 0051DD97    push        ecx
 0051DD98    push        ebx
 0051DD99    mov         eax,dword ptr [ebp+8]
 0051DD9C    mov         eax,dword ptr [eax-4]
 0051DD9F    mov         edx,dword ptr [eax]
 0051DDA1    call        dword ptr [edx+18]
 0051DDA4    xor         eax,eax
 0051DDA6    push        ebp
 0051DDA7    push        51DE03
 0051DDAC    push        dword ptr fs:[eax]
 0051DDAF    mov         dword ptr fs:[eax],esp
 0051DDB2    mov         byte ptr [ebp-1],0
 0051DDB6    push        0
 0051DDB8    call        user32.EnumClipboardFormats
 0051DDBD    mov         ebx,eax
 0051DDBF    test        bx,bx
>0051DDC2    je          0051DDEA
 0051DDC4    mov         edx,ebx
 0051DDC6    mov         eax,[004C0BB8];TPicture
 0051DDCB    call        TPicture.SupportsClipboardFormat
 0051DDD0    test        al,al
>0051DDD2    je          0051DDDA
 0051DDD4    mov         byte ptr [ebp-1],1
>0051DDD8    jmp         0051DDEA
 0051DDDA    movzx       eax,bx
 0051DDDD    push        eax
 0051DDDE    call        user32.EnumClipboardFormats
 0051DDE3    mov         ebx,eax
 0051DDE5    test        bx,bx
>0051DDE8    jne         0051DDC4
 0051DDEA    xor         eax,eax
 0051DDEC    pop         edx
 0051DDED    pop         ecx
 0051DDEE    pop         ecx
 0051DDEF    mov         dword ptr fs:[eax],edx
 0051DDF2    push        51DE0A
 0051DDF7    mov         eax,dword ptr [ebp+8]
 0051DDFA    mov         eax,dword ptr [eax-4]
 0051DDFD    mov         edx,dword ptr [eax]
 0051DDFF    call        dword ptr [edx+14]
 0051DE02    ret
>0051DE03    jmp         @HandleFinally
>0051DE08    jmp         0051DDF7
 0051DE0A    movzx       eax,byte ptr [ebp-1]
 0051DE0E    pop         ebx
 0051DE0F    pop         ecx
 0051DE10    pop         ebp
 0051DE11    ret
*}
end;

//0051DE14
function TClipboard.HasFormat(Format:Word):Boolean;
begin
{*
 0051DE14    push        ebp
 0051DE15    mov         ebp,esp
 0051DE17    push        ecx
 0051DE18    push        ebx
 0051DE19    mov         ebx,edx
 0051DE1B    mov         dword ptr [ebp-4],eax
 0051DE1E    movzx       eax,bx
 0051DE21    push        eax
 0051DE22    call        user32.IsClipboardFormatAvailable
 0051DE27    test        eax,eax
>0051DE29    jne         0051DE43
 0051DE2B    cmp         bx,word ptr ds:[7CA680]
>0051DE32    jne         0051DE3F
 0051DE34    push        ebp
 0051DE35    call        HasAPicture
 0051DE3A    pop         ecx
 0051DE3B    test        al,al
>0051DE3D    jne         0051DE43
 0051DE3F    xor         eax,eax
>0051DE41    jmp         0051DE45
 0051DE43    mov         al,1
 0051DE45    pop         ebx
 0051DE46    pop         ecx
 0051DE47    pop         ebp
 0051DE48    ret
*}
end;

//0051DE4C
function Clipboard:TClipboard;
begin
{*
 0051DE4C    cmp         dword ptr ds:[7CA688],0;gvar_007CA688
>0051DE53    jne         0051DE66
 0051DE55    mov         dl,1
 0051DE57    mov         eax,[0051D11C];TClipboard
 0051DE5C    call        TObject.Create
 0051DE61    mov         [007CA688],eax;gvar_007CA688
 0051DE66    mov         eax,[007CA688];gvar_007CA688
 0051DE6B    ret
*}
end;

//0051DE6C
procedure TClipboard.MainWndProc(var Message:Messages.TMessage);
begin
{*
 0051DE6C    push        ebp
 0051DE6D    mov         ebp,esp
 0051DE6F    push        ecx
 0051DE70    push        ebx
 0051DE71    push        esi
 0051DE72    push        edi
 0051DE73    mov         dword ptr [ebp-4],eax
 0051DE76    xor         eax,eax
 0051DE78    push        ebp
 0051DE79    push        51DE96
 0051DE7E    push        dword ptr fs:[eax]
 0051DE81    mov         dword ptr fs:[eax],esp
 0051DE84    mov         eax,dword ptr [ebp-4]
 0051DE87    mov         ecx,dword ptr [eax]
 0051DE89    call        dword ptr [ecx+0C]
 0051DE8C    xor         eax,eax
 0051DE8E    pop         edx
 0051DE8F    pop         ecx
 0051DE90    pop         ecx
 0051DE91    mov         dword ptr fs:[eax],edx
>0051DE94    jmp         0051DEC1
>0051DE96    jmp         @HandleAnyException
 0051DE9B    mov         eax,[007C4840];^gvar_007A05E0
 0051DEA0    cmp         word ptr [eax+2],0
>0051DEA5    je          0051DEB7
 0051DEA7    mov         ebx,dword ptr ds:[7C4840];^gvar_007A05E0
 0051DEAD    mov         edx,dword ptr [ebp-4]
 0051DEB0    mov         eax,dword ptr [ebx+4]
 0051DEB3    call        dword ptr [ebx]
>0051DEB5    jmp         0051DEBC
 0051DEB7    call        @RaiseAgain
 0051DEBC    call        @DoneExcept
 0051DEC1    pop         edi
 0051DEC2    pop         esi
 0051DEC3    pop         ebx
 0051DEC4    pop         ecx
 0051DEC5    pop         ebp
 0051DEC6    ret
*}
end;

//0051DEC8
destructor TClipboard.Destroy();
begin
{*
 0051DEC8    push        ebx
 0051DEC9    push        esi
 0051DECA    call        @BeforeDestruction
 0051DECF    mov         ebx,edx
 0051DED1    mov         esi,eax
 0051DED3    cmp         esi,dword ptr ds:[7CA688];gvar_007CA688
>0051DED9    jne         0051DEE2
 0051DEDB    xor         eax,eax
 0051DEDD    mov         [007CA688],eax;gvar_007CA688
 0051DEE2    mov         dl,0FC
 0051DEE4    and         dl,bl
 0051DEE6    mov         eax,esi
 0051DEE8    call        TMemoryStream.Destroy
 0051DEED    test        bl,bl
>0051DEEF    jle         0051DEF8
 0051DEF1    mov         eax,esi
 0051DEF3    call        @ClassDestroy
 0051DEF8    pop         esi
 0051DEF9    pop         ebx
 0051DEFA    ret
*}
end;

Initialization
//0079D270
{*
 0079D270    sub         dword ptr ds:[7CA684],1
>0079D277    jae         0079D2A0
 0079D279    push        79D2A4
 0079D27E    call        user32.RegisterClipboardFormatW
 0079D283    mov         [007CA680],ax
 0079D289    push        79D2C4
 0079D28E    call        user32.RegisterClipboardFormatW
 0079D293    mov         [007CA682],ax
 0079D299    xor         eax,eax
 0079D29B    mov         [007CA688],eax;gvar_007CA688
 0079D2A0    ret
*}
Finalization
end.