//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit72;

interface

uses
  SysUtils, Classes;

type
  :TListGroup.:1 = array of Integer;
//elSize = 4
//varType equivalent: varInteger;
  :TListViewStyleHook.:1 = array of Integer;
//elSize = 4
//varType equivalent: varInteger;
    //procedure GetOnDrawSection(?:?);//0054A524
    //procedure GetOnSectionClick(?:?);//0054A538
    //procedure GetOnSectionResize(?:?);//0054A54C
    //procedure GetOnSectionTrack(?:?);//0054A560
    //procedure SetOnDrawSection(Value:TDrawSectionEvent; ?:?; ?:?);//0054A574
    //procedure SetOnSectionClick(Value:TSectionNotifyEvent; ?:?; ?:?);//0054A590
    //procedure SetOnSectionResize(Value:TSectionNotifyEvent; ?:?; ?:?);//0054A5AC
    //procedure SetOnSectionTrack(Value:TSectionTrackEvent; ?:?; ?:?);//0054A5C8
    procedure AddItem(ACaption:UnicodeString; AImageIndex:Integer; DataPtr:TCustomData);//0054A5E4
    //procedure sub_0054A65C(?:?);//0054A65C
    //procedure sub_0054A694(?:?);//0054A694
    constructor Create(Collection:TCollection);//0054A6C0
    destructor Destroy();//0054A780
    procedure SetHeader(Value:string);//0054A848
    procedure SetFooter(Value:string);//0054A8BC
    procedure SetGroupID(Value:Integer);//0054A968
    //function GetState:?;//0054AB04
    procedure SetState(Value:TListGroupStateSet);//0054ABA4
    procedure SetHeaderAlign(Value:TAlignment);//0054ABDC
    procedure SetFooterAlign(Value:TAlignment);//0054AC04
    procedure SetSubtitle(Value:string);//0054AC2C
    procedure SetTitleImage(Value:TImageIndex);//0054ACA0
    procedure DefineProperties(Filer:TFiler);//0054ADAC
    //procedure GetDisplayName(?:?);//0054AEC0
    procedure sub_0054AEE4;//0054AEE4
    procedure Assign(Source:TPersistent);//0054AEEC
    function GetItem(Index:Integer):TListGroup;//0054AF58
    //function sub_0054AF6C(?:TCollection):?;//0054AF6C
    procedure sub_0054AFB4(?:TCollection);//0054AFB4
    procedure sub_0048EDE4;//0054B010
    //procedure sub_0054B014(?:?);//0054B014
    constructor Create(AOwner:TCustomListView);//0054B048
    function Owner:TCustomListView;//0054B08C
    procedure sub_0054B090;//0054B090
    constructor Create(AControl:TWinControl);//0054B0F0
    destructor Destroy();//0054B150
    //procedure sub_0054B190(?:?);//0054B190
    procedure WMParentNotify;//0054B1C0
    //procedure sub_0054B1D8(?:?);//0054B1D8
    procedure sub_0054B20C(?:TTabControlStyleHook);//0054B20C
    procedure sub_0054B284(?:TTabControlStyleHook);//0054B284
    //procedure sub_0054B358(?:?);//0054B358
    //procedure sub_0054B548(?:?; ?:?);//0054B548
    //procedure sub_0054B6A8(?:?);//0054B6A8
    //procedure sub_0054B6B8(?:?; ?:?);//0054B6B8
    //procedure sub_0054B738(?:?; ?:?);//0054B738
    //procedure sub_0054B87C(?:?);//0054B87C
    //procedure sub_0054B8C0(?:?; ?:?);//0054B8C0
    //procedure sub_0054B980(?:?);//0054B980
    //procedure sub_0054BA28(?:TTabControlStyleHook; ?:?; ?:?; ?:?; ?:?; ?:?);//0054BA28
    //procedure sub_0054BAB4(?:?; ?:?);//0054BAB4
    procedure WMEraseBkgnd(Message:Messages.TMessage);//0054C074
    //procedure sub_0054C0DC(?:?);//0054C0DC
    //function sub_0054C130(?:TTabControlStyleHook):?;//0054C130
    //procedure sub_0054C158(?:?);//0054C158
    //procedure sub_0054C304(?:TTabControlStyleHook; ?:Integer; ?:?);//0054C304
    procedure CMMouseLeave;//0054C374
    //procedure WMMouseMove(?:?);//0054C37C
    //function sub_0054C3C0(?:TTabControlStyleHook):?;//0054C3C0
    //function sub_0054C3E8(?:TTabControlStyleHook):?;//0054C3E8
    //procedure sub_0054C404(?:TTabControlStyleHook; ?:?; ?:?);//0054C404
    //procedure sub_0054C470(?:TTabControlStyleHook; ?:?; ?:?);//0054C470
    //function sub_0054C4EC(?:TTabControlStyleHook):?;//0054C4EC
    //function sub_0054C514(?:TTabControlStyleHook):?;//0054C514
    //procedure sub_0054C550(?:TTabControlStyleHook; ?:?);//0054C550
    //procedure sub_0054C5B0(?:TTabControlStyleHook; ?:?; ?:?);//0054C5B0
    constructor Create(AControl:TWinControl);//0054C640
    //procedure sub_0054C6FC(?:?);//0054C6FC
    //procedure sub_0054C71C(?:?);//0054C71C
    //procedure WMMouseMove(?:?);//0054C734
    procedure sub_0054CAD8;//0054CAD8
    constructor Create(AControl:TWinControl);//0054CAE0
    destructor Destroy();//0054CBD0
    procedure WMNotify;//0054CC10
    procedure sub_0054CC50;//0054CC50
    //procedure sub_0054CC58(?:?);//0054CC58
    //procedure sub_0054CD98(?:?);//0054CD98
    //procedure sub_0054CDB8(?:?);//0054CDB8
    //procedure sub_0054CDD8(?:?);//0054CDD8
    //procedure sub_0054CE30(?:?);//0054CE30
    //procedure sub_0054D0DC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0054D0DC
    //procedure WMMouseMove(?:?);//0054D22C
    constructor Create(AControl:TWinControl);//0054D6D8
    procedure sub_0054D718(?:TProgressBarStyleHook);//0054D718
    //procedure sub_0054D778(?:TProgressBarStyleHook; ?:?);//0054D778
    //procedure WMNCCalcSize(?:?);//0054D7B8
    procedure sub_0054D7C4;//0054D7C4
    //procedure sub_0054D7CC(?:?);//0054D7CC
    //procedure sub_0054D840(?:?);//0054D840
    //procedure sub_0054D928(?:?);//0054D928
    //function sub_0054D98C(?:?):?;//0054D98C
    //function sub_0054D9A8(?:?):?;//0054D9A8
    //function sub_0054D9C4(?:TProgressBarStyleHook):?;//0054D9C4
    //function sub_0054D9F4(?:?):?;//0054D9F4
    //function sub_0054DA10:?;//0054DA10
    constructor Create(AControl:TWinControl);//0054DA14
    //procedure sub_0054DA54(?:?);//0054DA54
    procedure sub_0054DFD4;//0054DFD4
    constructor Create(AControl:TWinControl);//0054DFDC
    //function sub_0054E01C(?:TUpDownStyleHook):?;//0054E01C
    //procedure sub_0054E074(?:?);//0054E074
    //procedure WMLButtonDblClk(?:?);//0054E278
    //procedure WMLButtonDown(?:?);//0054E404
    //procedure WMLButtonUp(?:?);//0054E590
    //procedure WMMouseMove(?:?);//0054E5C8
    procedure sub_0054E768;//0054E768
    procedure sub_0054E770;//0054E770
    constructor Create(AControl:TWinControl);//0054E780
    procedure WMEraseBkgnd(Message:Messages.TMessage);//0054E7CC
    procedure sub_0054E7D8;//0054E7D8
    //procedure sub_0054E7E8(?:?);//0054E7E8
    //procedure sub_0054E968(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0054E968
    //procedure WMLButtonDown(?:?);//0054EB58
    procedure WMLButtonUp;//0054EBCC
    procedure WMRButtonUp;//0054EBF8
    procedure sub_0054EC24;//0054EC24
    //procedure WMMouseMove(?:?);//0054EC2C
    //procedure sub_0054ECB0(?:?);//0054ECB0
    //procedure sub_0054ECE0(?:?);//0054ECE0
    //procedure sub_0054ED68(?:?);//0054ED68

implementation

//0054A524
{*procedure THeaderControl.GetOnDrawSection(?:?);
begin
 0054A524    mov         ecx,dword ptr [eax+2C8];THeaderControl.FOnDrawSection:TCustomDrawSectionEvent
 0054A52A    mov         dword ptr [edx],ecx
 0054A52C    mov         ecx,dword ptr [eax+2CC];THeaderControl.?f2CC:dword
 0054A532    mov         dword ptr [edx+4],ecx
 0054A535    ret
end;*}

//0054A538
{*procedure THeaderControl.GetOnSectionClick(?:?);
begin
 0054A538    mov         ecx,dword ptr [eax+2D0];THeaderControl.FOnSectionClick:TCustomSectionNotifyEvent
 0054A53E    mov         dword ptr [edx],ecx
 0054A540    mov         ecx,dword ptr [eax+2D4];THeaderControl.?f2D4:dword
 0054A546    mov         dword ptr [edx+4],ecx
 0054A549    ret
end;*}

//0054A54C
{*procedure THeaderControl.GetOnSectionResize(?:?);
begin
 0054A54C    mov         ecx,dword ptr [eax+2E0];THeaderControl.FOnSectionResize:TCustomSectionNotifyEvent
 0054A552    mov         dword ptr [edx],ecx
 0054A554    mov         ecx,dword ptr [eax+2E4];THeaderControl.?f2E4:dword
 0054A55A    mov         dword ptr [edx+4],ecx
 0054A55D    ret
end;*}

//0054A560
{*procedure THeaderControl.GetOnSectionTrack(?:?);
begin
 0054A560    mov         ecx,dword ptr [eax+2E8];THeaderControl.FOnSectionTrack:TCustomSectionTrackEvent
 0054A566    mov         dword ptr [edx],ecx
 0054A568    mov         ecx,dword ptr [eax+2EC];THeaderControl.?f2EC:dword
 0054A56E    mov         dword ptr [edx+4],ecx
 0054A571    ret
end;*}

//0054A574
{*procedure THeaderControl.SetOnDrawSection(Value:TDrawSectionEvent; ?:?; ?:?);
begin
 0054A574    push        ebp
 0054A575    mov         ebp,esp
 0054A577    mov         edx,dword ptr [ebp+8]
 0054A57A    mov         dword ptr [eax+2C8],edx;THeaderControl.FOnDrawSection:TCustomDrawSectionEvent
 0054A580    mov         edx,dword ptr [ebp+0C]
 0054A583    mov         dword ptr [eax+2CC],edx;THeaderControl.?f2CC:dword
 0054A589    pop         ebp
 0054A58A    ret         8
end;*}

//0054A590
{*procedure THeaderControl.SetOnSectionClick(Value:TSectionNotifyEvent; ?:?; ?:?);
begin
 0054A590    push        ebp
 0054A591    mov         ebp,esp
 0054A593    mov         edx,dword ptr [ebp+8]
 0054A596    mov         dword ptr [eax+2D0],edx;THeaderControl.FOnSectionClick:TCustomSectionNotifyEvent
 0054A59C    mov         edx,dword ptr [ebp+0C]
 0054A59F    mov         dword ptr [eax+2D4],edx;THeaderControl.?f2D4:dword
 0054A5A5    pop         ebp
 0054A5A6    ret         8
end;*}

//0054A5AC
{*procedure THeaderControl.SetOnSectionResize(Value:TSectionNotifyEvent; ?:?; ?:?);
begin
 0054A5AC    push        ebp
 0054A5AD    mov         ebp,esp
 0054A5AF    mov         edx,dword ptr [ebp+8]
 0054A5B2    mov         dword ptr [eax+2E0],edx;THeaderControl.FOnSectionResize:TCustomSectionNotifyEvent
 0054A5B8    mov         edx,dword ptr [ebp+0C]
 0054A5BB    mov         dword ptr [eax+2E4],edx;THeaderControl.?f2E4:dword
 0054A5C1    pop         ebp
 0054A5C2    ret         8
end;*}

//0054A5C8
{*procedure THeaderControl.SetOnSectionTrack(Value:TSectionTrackEvent; ?:?; ?:?);
begin
 0054A5C8    push        ebp
 0054A5C9    mov         ebp,esp
 0054A5CB    mov         edx,dword ptr [ebp+8]
 0054A5CE    mov         dword ptr [eax+2E8],edx;THeaderControl.FOnSectionTrack:TCustomSectionTrackEvent
 0054A5D4    mov         edx,dword ptr [ebp+0C]
 0054A5D7    mov         dword ptr [eax+2EC],edx;THeaderControl.?f2EC:dword
 0054A5DD    pop         ebp
 0054A5DE    ret         8
end;*}

//0054A5E4
procedure TListViewActionLink.AddItem(ACaption:UnicodeString; AImageIndex:Integer; DataPtr:TCustomData);
begin
{*
 0054A5E4    push        ebp
 0054A5E5    mov         ebp,esp
 0054A5E7    push        ecx
 0054A5E8    push        ebx
 0054A5E9    push        esi
 0054A5EA    mov         esi,ecx
 0054A5EC    mov         dword ptr [ebp-4],edx
 0054A5EF    mov         ebx,eax
 0054A5F1    mov         eax,dword ptr [ebp-4]
 0054A5F4    call        @UStrAddRef
 0054A5F9    xor         eax,eax
 0054A5FB    push        ebp
 0054A5FC    push        54A64C
 0054A601    push        dword ptr fs:[eax]
 0054A604    mov         dword ptr fs:[eax],esp
 0054A607    mov         eax,dword ptr [ebx+20];TListViewActionLink.............FClient:TWinControl
 0054A60A    mov         eax,dword ptr [eax+2BC]
 0054A610    call        TListItems.Add
 0054A615    mov         ebx,eax
 0054A617    mov         ecx,esi
 0054A619    xor         edx,edx
 0054A61B    mov         eax,ebx
 0054A61D    call        TListItem.SetImage
 0054A622    mov         edx,dword ptr [ebp-4]
 0054A625    mov         eax,ebx
 0054A627    call        TListItem.SetCaption
 0054A62C    mov         edx,dword ptr [ebp+8]
 0054A62F    mov         eax,ebx
 0054A631    call        TListItem.SetData
 0054A636    xor         eax,eax
 0054A638    pop         edx
 0054A639    pop         ecx
 0054A63A    pop         ecx
 0054A63B    mov         dword ptr fs:[eax],edx
 0054A63E    push        54A653
 0054A643    lea         eax,[ebp-4]
 0054A646    call        @UStrClr
 0054A64B    ret
>0054A64C    jmp         @HandleFinally
>0054A651    jmp         0054A643
 0054A653    pop         esi
 0054A654    pop         ebx
 0054A655    pop         ecx
 0054A656    pop         ebp
 0054A657    ret         4
*}
end;

//0054A65C
{*procedure sub_0054A65C(?:?);
begin
 0054A65C    push        ebx
 0054A65D    push        esi
 0054A65E    mov         esi,edx
 0054A660    mov         eax,dword ptr [eax+20];TListViewActionLink..............FClient:TWinControl
 0054A663    mov         eax,dword ptr [eax+2BC]
 0054A669    call        TListItems.Add
 0054A66E    mov         ebx,eax
 0054A670    mov         ecx,dword ptr [esi+18]
 0054A673    xor         edx,edx
 0054A675    mov         eax,ebx
 0054A677    call        TListItem.SetImage
 0054A67C    mov         edx,dword ptr [esi+10]
 0054A67F    mov         eax,ebx
 0054A681    call        TListItem.SetCaption
 0054A686    mov         edx,dword ptr [esi+14]
 0054A689    mov         eax,ebx
 0054A68B    call        TListItem.SetData
 0054A690    pop         esi
 0054A691    pop         ebx
 0054A692    ret
end;*}

//0054A694
{*procedure sub_0054A694(?:?);
begin
 0054A694    push        ebx
 0054A695    push        esi
 0054A696    mov         esi,edx
 0054A698    mov         ebx,eax
 0054A69A    mov         eax,ebx
 0054A69C    mov         edx,dword ptr [eax]
 0054A69E    call        dword ptr [edx+0A8];TListViewActionLink.sub_0051CE10
 0054A6A4    test        al,al
>0054A6A6    je          0054A6BD
 0054A6A8    mov         eax,dword ptr [ebx+20];TListViewActionLink...............FClient:TWinControl
 0054A6AB    mov         edx,dword ptr ds:[52F86C];TCustomListView
 0054A6B1    call        @AsClass
 0054A6B6    mov         edx,esi
 0054A6B8    call        TListView.SetSmallImages
 0054A6BD    pop         esi
 0054A6BE    pop         ebx
 0054A6BF    ret
end;*}

//0054A6C0
constructor TListGroup.Create(Collection:TCollection);
begin
{*
 0054A6C0    push        ebp
 0054A6C1    mov         ebp,esp
 0054A6C3    add         esp,0FFFFFF9C
 0054A6C6    push        ebx
 0054A6C7    push        esi
 0054A6C8    push        edi
 0054A6C9    test        dl,dl
>0054A6CB    je          0054A6D5
 0054A6CD    add         esp,0FFFFFFF0
 0054A6D0    call        @ClassCreate
 0054A6D5    mov         esi,ecx
 0054A6D7    mov         byte ptr [ebp-1],dl
 0054A6DA    mov         ebx,eax
 0054A6DC    mov         edi,esi
 0054A6DE    mov         eax,edi
 0054A6E0    call        0054AF6C
 0054A6E5    mov         dword ptr [ebx+14],eax;TListGroup.FGroupID:Integer
 0054A6E8    mov         ecx,esi
 0054A6EA    xor         edx,edx
 0054A6EC    mov         eax,ebx
 0054A6EE    call        TCollectionItem.Create
 0054A6F3    movzx       eax,word ptr ds:[54A77C];0x1 gvar_0054A77C
 0054A6FA    mov         word ptr [ebx+18],ax;TListGroup.FState:TListGroupStateSet
 0054A6FE    mov         byte ptr [ebx+1A],0;TListGroup.FHeaderAlign:TAlignment
 0054A702    mov         byte ptr [ebx+1B],0;TListGroup.FFooterAlign:TAlignment
 0054A706    mov         dword ptr [ebx+28],0FFFFFFFF;TListGroup.FTitleImage:TImageIndex
 0054A70D    mov         dword ptr [ebp-64],60
 0054A714    mov         dword ptr [ebp-60],14
 0054A71B    mov         eax,dword ptr [ebx+14];TListGroup.FGroupID:Integer
 0054A71E    mov         dword ptr [ebp-4C],eax
 0054A721    xor         eax,eax
 0054A723    mov         dword ptr [ebp-44],eax
 0054A726    mov         eax,edi
 0054A728    call        TListGroups.Owner
 0054A72D    call        TWinControl.HandleAllocated
 0054A732    test        al,al
>0054A734    je          0054A75B
 0054A736    mov         eax,edi
 0054A738    call        TListGroups.Owner
 0054A73D    call        TWinControl.GetHandle
 0054A742    mov         esi,eax
 0054A744    mov         eax,ebx
 0054A746    call        TCollectionItem.GetIndex
 0054A74B    lea         edx,[ebp-64]
 0054A74E    push        edx
 0054A74F    push        eax
 0054A750    push        1091
 0054A755    push        esi
 0054A756    call        user32.SendMessageW
 0054A75B    mov         eax,ebx
 0054A75D    cmp         byte ptr [ebp-1],0
>0054A761    je          0054A772
 0054A763    call        @AfterConstruction
 0054A768    pop         dword ptr fs:[0]
 0054A76F    add         esp,0C
 0054A772    mov         eax,ebx
 0054A774    pop         edi
 0054A775    pop         esi
 0054A776    pop         ebx
 0054A777    mov         esp,ebp
 0054A779    pop         ebp
 0054A77A    ret
*}
end;

//0054A780
destructor TListGroup.Destroy();
begin
{*
 0054A780    push        ebx
 0054A781    push        esi
 0054A782    push        edi
 0054A783    push        ebp
 0054A784    add         esp,0FFFFFFF8
 0054A787    call        @BeforeDestruction
 0054A78C    mov         byte ptr [esp],dl
 0054A78F    mov         ebx,eax
 0054A791    mov         esi,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054A794    mov         eax,esi
 0054A796    call        TListGroups.Owner
 0054A79B    call        TWinControl.HandleAllocated
 0054A7A0    test        al,al
>0054A7A2    je          0054A7C1
 0054A7A4    mov         eax,esi
 0054A7A6    call        TListGroups.Owner
 0054A7AB    call        TWinControl.GetHandle
 0054A7B0    mov         edx,dword ptr [ebx+14];TListGroup.FGroupID:Integer
 0054A7B3    push        0
 0054A7B5    push        edx
 0054A7B6    push        1096
 0054A7BB    push        eax
 0054A7BC    call        user32.SendMessageW
 0054A7C1    mov         eax,esi
 0054A7C3    call        TListGroups.Owner
 0054A7C8    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A7CE    mov         dword ptr [esp+4],eax
 0054A7D2    mov         eax,esi
 0054A7D4    call        TListGroups.Owner
 0054A7D9    cmp         byte ptr [eax+2D4],0;TCustomListView.FOwnerData:Boolean
>0054A7E0    jne         0054A81F
 0054A7E2    mov         eax,dword ptr [esp+4]
 0054A7E6    call        TListItems.GetCount
 0054A7EB    mov         ebp,eax
 0054A7ED    dec         ebp
 0054A7EE    test        ebp,ebp
>0054A7F0    jl          0054A81F
 0054A7F2    inc         ebp
 0054A7F3    xor         edi,edi
 0054A7F5    mov         edx,edi
 0054A7F7    mov         eax,dword ptr [esp+4]
 0054A7FB    call        TListItems.GetItem
 0054A800    mov         eax,dword ptr [eax+2C];TListItem.FGroupID:Integer
 0054A803    cmp         eax,dword ptr [ebx+14];TListGroup.FGroupID:Integer
>0054A806    jne         0054A81B
 0054A808    mov         edx,edi
 0054A80A    mov         eax,dword ptr [esp+4]
 0054A80E    call        TListItems.GetItem
 0054A813    or          edx,0FFFFFFFF
 0054A816    call        TListItem.SetGroupID
 0054A81B    inc         edi
 0054A81C    dec         ebp
>0054A81D    jne         0054A7F5
 0054A81F    movzx       edx,byte ptr [esp]
 0054A823    and         dl,0FC
 0054A826    mov         eax,ebx
 0054A828    call        TCollectionItem.Destroy
 0054A82D    mov         eax,esi
 0054A82F    call        0054AFB4
 0054A834    cmp         byte ptr [esp],0
>0054A838    jle         0054A841
 0054A83A    mov         eax,ebx
 0054A83C    call        @ClassDestroy
 0054A841    pop         ecx
 0054A842    pop         edx
 0054A843    pop         ebp
 0054A844    pop         edi
 0054A845    pop         esi
 0054A846    pop         ebx
 0054A847    ret
*}
end;

//0054A848
procedure TListGroup.SetHeader(Value:string);
begin
{*
 0054A848    push        ebp
 0054A849    mov         ebp,esp
 0054A84B    push        ecx
 0054A84C    push        ebx
 0054A84D    mov         dword ptr [ebp-4],edx
 0054A850    mov         ebx,eax
 0054A852    mov         eax,dword ptr [ebp-4]
 0054A855    call        @UStrAddRef
 0054A85A    xor         eax,eax
 0054A85C    push        ebp
 0054A85D    push        54A8B1
 0054A862    push        dword ptr fs:[eax]
 0054A865    mov         dword ptr fs:[eax],esp
 0054A868    mov         eax,dword ptr [ebx+0C];TListGroup.FHeader:string
 0054A86B    mov         edx,dword ptr [ebp-4]
 0054A86E    call        @UStrEqual
>0054A873    je          0054A89B
 0054A875    lea         eax,[ebx+0C];TListGroup.FHeader:string
 0054A878    mov         edx,dword ptr [ebp-4]
 0054A87B    call        @UStrAsg
 0054A880    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054A883    call        TListGroups.Owner
 0054A888    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>0054A88C    jne         0054A89B
 0054A88E    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054A891    call        TListGroups.Owner
 0054A896    call        00548D80
 0054A89B    xor         eax,eax
 0054A89D    pop         edx
 0054A89E    pop         ecx
 0054A89F    pop         ecx
 0054A8A0    mov         dword ptr fs:[eax],edx
 0054A8A3    push        54A8B8
 0054A8A8    lea         eax,[ebp-4]
 0054A8AB    call        @UStrClr
 0054A8B0    ret
>0054A8B1    jmp         @HandleFinally
>0054A8B6    jmp         0054A8A8
 0054A8B8    pop         ebx
 0054A8B9    pop         ecx
 0054A8BA    pop         ebp
 0054A8BB    ret
*}
end;

//0054A8BC
procedure TListGroup.SetFooter(Value:string);
begin
{*
 0054A8BC    push        ebp
 0054A8BD    mov         ebp,esp
 0054A8BF    push        ecx
 0054A8C0    push        ebx
 0054A8C1    mov         dword ptr [ebp-4],edx
 0054A8C4    mov         ebx,eax
 0054A8C6    mov         eax,dword ptr [ebp-4]
 0054A8C9    call        @UStrAddRef
 0054A8CE    xor         eax,eax
 0054A8D0    push        ebp
 0054A8D1    push        54A925
 0054A8D6    push        dword ptr fs:[eax]
 0054A8D9    mov         dword ptr fs:[eax],esp
 0054A8DC    mov         eax,dword ptr [ebx+10];TListGroup.FFooter:string
 0054A8DF    mov         edx,dword ptr [ebp-4]
 0054A8E2    call        @UStrEqual
>0054A8E7    je          0054A90F
 0054A8E9    lea         eax,[ebx+10];TListGroup.FFooter:string
 0054A8EC    mov         edx,dword ptr [ebp-4]
 0054A8EF    call        @UStrAsg
 0054A8F4    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054A8F7    call        TListGroups.Owner
 0054A8FC    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>0054A900    jne         0054A90F
 0054A902    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054A905    call        TListGroups.Owner
 0054A90A    call        00548D80
 0054A90F    xor         eax,eax
 0054A911    pop         edx
 0054A912    pop         ecx
 0054A913    pop         ecx
 0054A914    mov         dword ptr fs:[eax],edx
 0054A917    push        54A92C
 0054A91C    lea         eax,[ebp-4]
 0054A91F    call        @UStrClr
 0054A924    ret
>0054A925    jmp         @HandleFinally
>0054A92A    jmp         0054A91C
 0054A92C    pop         ebx
 0054A92D    pop         ecx
 0054A92E    pop         ebp
 0054A92F    ret
*}
end;

//0054A968
procedure TListGroup.SetGroupID(Value:Integer);
begin
{*
 0054A968    push        ebp
 0054A969    mov         ebp,esp
 0054A96B    add         esp,0FFFFFFF4
 0054A96E    push        ebx
 0054A96F    push        esi
 0054A970    push        edi
 0054A971    xor         ecx,ecx
 0054A973    mov         dword ptr [ebp-4],ecx
 0054A976    mov         dword ptr [ebp-8],edx
 0054A979    mov         ebx,eax
 0054A97B    xor         eax,eax
 0054A97D    push        ebp
 0054A97E    push        54AAF5
 0054A983    push        dword ptr fs:[eax]
 0054A986    mov         dword ptr fs:[eax],esp
 0054A989    lea         eax,[ebp-4]
 0054A98C    mov         edx,dword ptr ds:[54A930];:TListGroup.:1
 0054A992    call        @DynArrayClear
 0054A997    mov         eax,dword ptr [ebp-8]
 0054A99A    cmp         eax,dword ptr [ebx+14];TListGroup.FGroupID:Integer
>0054A99D    je          0054AAD9
 0054A9A3    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054A9A6    mov         eax,dword ptr [eax+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 0054A9A9    mov         esi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0054A9AC    dec         esi
 0054A9AD    test        esi,esi
>0054A9AF    jl          0054A9CE
 0054A9B1    inc         esi
 0054A9B2    xor         edi,edi
 0054A9B4    mov         edx,edi
 0054A9B6    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054A9B9    call        TListGroups.GetItem
 0054A9BE    mov         eax,dword ptr [eax+14];TListGroup.FGroupID:Integer
 0054A9C1    cmp         eax,dword ptr [ebp-8]
>0054A9C4    je          0054AAD9
 0054A9CA    inc         edi
 0054A9CB    dec         esi
>0054A9CC    jne         0054A9B4
 0054A9CE    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054A9D1    call        TListGroups.Owner
 0054A9D6    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A9DC    call        TListItems.GetCount
 0054A9E1    mov         esi,eax
 0054A9E3    dec         esi
 0054A9E4    test        esi,esi
>0054A9E6    jl          0054AA51
 0054A9E8    inc         esi
 0054A9E9    xor         edi,edi
 0054A9EB    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054A9EE    call        TListGroups.Owner
 0054A9F3    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A9F9    mov         edx,edi
 0054A9FB    call        TListItems.GetItem
 0054AA00    mov         eax,dword ptr [eax+2C];TListItem.FGroupID:Integer
 0054AA03    cmp         eax,dword ptr [ebx+14];TListGroup.FGroupID:Integer
>0054AA06    jne         0054AA4D
 0054AA08    mov         eax,dword ptr [ebp-4]
 0054AA0B    mov         dword ptr [ebp-0C],eax
 0054AA0E    cmp         dword ptr [ebp-0C],0
>0054AA12    je          0054AA1F
 0054AA14    mov         eax,dword ptr [ebp-0C]
 0054AA17    sub         eax,4
 0054AA1A    mov         eax,dword ptr [eax]
 0054AA1C    mov         dword ptr [ebp-0C],eax
 0054AA1F    mov         eax,dword ptr [ebp-0C]
 0054AA22    inc         eax
 0054AA23    push        eax
 0054AA24    lea         eax,[ebp-4]
 0054AA27    mov         ecx,1
 0054AA2C    mov         edx,dword ptr ds:[54A930];:TListGroup.:1
 0054AA32    call        @DynArraySetLength
 0054AA37    add         esp,4
 0054AA3A    mov         eax,dword ptr [ebp-4]
 0054AA3D    test        eax,eax
>0054AA3F    je          0054AA46
 0054AA41    sub         eax,4
 0054AA44    mov         eax,dword ptr [eax]
 0054AA46    mov         edx,dword ptr [ebp-4]
 0054AA49    mov         dword ptr [edx+eax*4-4],edi
 0054AA4D    inc         edi
 0054AA4E    dec         esi
>0054AA4F    jne         0054A9EB
 0054AA51    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AA54    call        TListGroups.Owner
 0054AA59    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>0054AA5D    jne         0054AA7D
 0054AA5F    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AA62    call        TListGroups.Owner
 0054AA67    call        TWinControl.GetHandle
 0054AA6C    mov         edx,dword ptr [ebx+14];TListGroup.FGroupID:Integer
 0054AA6F    push        0
 0054AA71    push        edx
 0054AA72    push        1096
 0054AA77    push        eax
 0054AA78    call        user32.SendMessageW
 0054AA7D    mov         eax,dword ptr [ebp-8]
 0054AA80    mov         dword ptr [ebx+14],eax;TListGroup.FGroupID:Integer
 0054AA83    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AA86    call        TListGroups.Owner
 0054AA8B    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>0054AA8F    jne         0054AA9E
 0054AA91    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AA94    call        TListGroups.Owner
 0054AA99    call        00548D80
 0054AA9E    mov         eax,dword ptr [ebp-4]
 0054AAA1    test        eax,eax
>0054AAA3    je          0054AAAA
 0054AAA5    sub         eax,4
 0054AAA8    mov         eax,dword ptr [eax]
 0054AAAA    mov         esi,eax
 0054AAAC    dec         esi
 0054AAAD    test        esi,esi
>0054AAAF    jl          0054AAD9
 0054AAB1    inc         esi
 0054AAB2    xor         edi,edi
 0054AAB4    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AAB7    call        TListGroups.Owner
 0054AABC    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054AAC2    mov         edx,dword ptr [ebp-4]
 0054AAC5    mov         edx,dword ptr [edx+edi*4]
 0054AAC8    call        TListItems.GetItem
 0054AACD    mov         edx,dword ptr [ebx+14];TListGroup.FGroupID:Integer
 0054AAD0    call        TListItem.SetGroupID
 0054AAD5    inc         edi
 0054AAD6    dec         esi
>0054AAD7    jne         0054AAB4
 0054AAD9    xor         eax,eax
 0054AADB    pop         edx
 0054AADC    pop         ecx
 0054AADD    pop         ecx
 0054AADE    mov         dword ptr fs:[eax],edx
 0054AAE1    push        54AAFC
 0054AAE6    lea         eax,[ebp-4]
 0054AAE9    mov         edx,dword ptr ds:[54A930];:TListGroup.:1
 0054AAEF    call        @DynArrayClear
 0054AAF4    ret
>0054AAF5    jmp         @HandleFinally
>0054AAFA    jmp         0054AAE6
 0054AAFC    pop         edi
 0054AAFD    pop         esi
 0054AAFE    pop         ebx
 0054AAFF    mov         esp,ebp
 0054AB01    pop         ebp
 0054AB02    ret
*}
end;

//0054AB04
{*function TListGroup.GetState:?;
begin
 0054AB04    push        ebx
 0054AB05    push        esi
 0054AB06    push        edi
 0054AB07    mov         ebx,eax
 0054AB09    movzx       esi,word ptr [ebx+18];TListGroup.FState:TListGroupStateSet
 0054AB0D    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AB10    call        TListGroups.Owner
 0054AB15    call        TWinControl.HandleAllocated
 0054AB1A    test        al,al
>0054AB1C    je          0054AB98
 0054AB1E    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AB21    call        TListGroups.Owner
 0054AB26    call        TWinControl.GetHandle
 0054AB2B    mov         edx,dword ptr [ebx+14];TListGroup.FGroupID:Integer
 0054AB2E    push        0FF
 0054AB30    push        edx
 0054AB31    push        105C
 0054AB36    push        eax
 0054AB37    call        user32.SendMessageW
 0054AB3C    mov         edi,eax
 0054AB3E    movzx       eax,word ptr ds:[54ABA0];0x1E6 gvar_0054ABA0
 0054AB45    not         eax
 0054AB47    and         si,ax
 0054AB4A    test        edi,2
>0054AB50    je          0054AB56
 0054AB52    or          si,2
 0054AB56    test        edi,1
>0054AB5C    je          0054AB62
 0054AB5E    or          si,4
 0054AB62    test        edi,10
>0054AB68    je          0054AB6E
 0054AB6A    or          si,20
 0054AB6E    test        edi,20
>0054AB74    je          0054AB7A
 0054AB76    or          si,40
 0054AB7A    test        edi,40
>0054AB80    je          0054AB87
 0054AB82    or          si,80
 0054AB87    test        edi,80
>0054AB8D    je          0054AB94
 0054AB8F    or          si,100
 0054AB94    mov         word ptr [ebx+18],si;TListGroup.FState:TListGroupStateSet
 0054AB98    mov         eax,esi
 0054AB9A    pop         edi
 0054AB9B    pop         esi
 0054AB9C    pop         ebx
 0054AB9D    ret
end;*}

//0054ABA4
procedure TListGroup.SetState(Value:TListGroupStateSet);
begin
{*
 0054ABA4    push        ebx
 0054ABA5    push        ecx
 0054ABA6    mov         word ptr [esp],dx
 0054ABAA    mov         ebx,eax
 0054ABAC    movzx       eax,word ptr [esp]
 0054ABB0    cmp         ax,word ptr [ebx+18];TListGroup.FState:TListGroupStateSet
>0054ABB4    je          0054ABD9
 0054ABB6    movzx       eax,word ptr [esp]
 0054ABBA    mov         word ptr [ebx+18],ax;TListGroup.FState:TListGroupStateSet
 0054ABBE    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054ABC1    call        TListGroups.Owner
 0054ABC6    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>0054ABCA    jne         0054ABD9
 0054ABCC    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054ABCF    call        TListGroups.Owner
 0054ABD4    call        00548D80
 0054ABD9    pop         edx
 0054ABDA    pop         ebx
 0054ABDB    ret
*}
end;

//0054ABDC
procedure TListGroup.SetHeaderAlign(Value:TAlignment);
begin
{*
 0054ABDC    push        ebx
 0054ABDD    mov         ebx,eax
 0054ABDF    cmp         dl,byte ptr [ebx+1A];TListGroup.FHeaderAlign:TAlignment
>0054ABE2    je          0054AC02
 0054ABE4    mov         byte ptr [ebx+1A],dl;TListGroup.FHeaderAlign:TAlignment
 0054ABE7    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054ABEA    call        TListGroups.Owner
 0054ABEF    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>0054ABF3    jne         0054AC02
 0054ABF5    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054ABF8    call        TListGroups.Owner
 0054ABFD    call        00548D80
 0054AC02    pop         ebx
 0054AC03    ret
*}
end;

//0054AC04
procedure TListGroup.SetFooterAlign(Value:TAlignment);
begin
{*
 0054AC04    push        ebx
 0054AC05    mov         ebx,eax
 0054AC07    cmp         dl,byte ptr [ebx+1B];TListGroup.FFooterAlign:TAlignment
>0054AC0A    je          0054AC2A
 0054AC0C    mov         byte ptr [ebx+1B],dl;TListGroup.FFooterAlign:TAlignment
 0054AC0F    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AC12    call        TListGroups.Owner
 0054AC17    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>0054AC1B    jne         0054AC2A
 0054AC1D    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AC20    call        TListGroups.Owner
 0054AC25    call        00548D80
 0054AC2A    pop         ebx
 0054AC2B    ret
*}
end;

//0054AC2C
procedure TListGroup.SetSubtitle(Value:string);
begin
{*
 0054AC2C    push        ebp
 0054AC2D    mov         ebp,esp
 0054AC2F    push        ecx
 0054AC30    push        ebx
 0054AC31    mov         dword ptr [ebp-4],edx
 0054AC34    mov         ebx,eax
 0054AC36    mov         eax,dword ptr [ebp-4]
 0054AC39    call        @UStrAddRef
 0054AC3E    xor         eax,eax
 0054AC40    push        ebp
 0054AC41    push        54AC95
 0054AC46    push        dword ptr fs:[eax]
 0054AC49    mov         dword ptr fs:[eax],esp
 0054AC4C    mov         eax,dword ptr [ebx+1C];TListGroup.FSubtitle:string
 0054AC4F    mov         edx,dword ptr [ebp-4]
 0054AC52    call        @UStrEqual
>0054AC57    je          0054AC7F
 0054AC59    lea         eax,[ebx+1C];TListGroup.FSubtitle:string
 0054AC5C    mov         edx,dword ptr [ebp-4]
 0054AC5F    call        @UStrAsg
 0054AC64    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AC67    call        TListGroups.Owner
 0054AC6C    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>0054AC70    jne         0054AC7F
 0054AC72    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054AC75    call        TListGroups.Owner
 0054AC7A    call        00548D80
 0054AC7F    xor         eax,eax
 0054AC81    pop         edx
 0054AC82    pop         ecx
 0054AC83    pop         ecx
 0054AC84    mov         dword ptr fs:[eax],edx
 0054AC87    push        54AC9C
 0054AC8C    lea         eax,[ebp-4]
 0054AC8F    call        @UStrClr
 0054AC94    ret
>0054AC95    jmp         @HandleFinally
>0054AC9A    jmp         0054AC8C
 0054AC9C    pop         ebx
 0054AC9D    pop         ecx
 0054AC9E    pop         ebp
 0054AC9F    ret
*}
end;

//0054ACA0
procedure TListGroup.SetTitleImage(Value:TImageIndex);
begin
{*
 0054ACA0    push        ebx
 0054ACA1    mov         ebx,eax
 0054ACA3    cmp         edx,dword ptr [ebx+28];TListGroup.FTitleImage:TImageIndex
>0054ACA6    je          0054ACC6
 0054ACA8    mov         dword ptr [ebx+28],edx;TListGroup.FTitleImage:TImageIndex
 0054ACAB    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054ACAE    call        TListGroups.Owner
 0054ACB3    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>0054ACB7    jne         0054ACC6
 0054ACB9    mov         eax,dword ptr [ebx+4];TListGroup.FCollection:TCollection
 0054ACBC    call        TListGroups.Owner
 0054ACC1    call        00548D80
 0054ACC6    pop         ebx
 0054ACC7    ret
*}
end;

//0054ADAC
procedure TListGroup.DefineProperties(Filer:TFiler);
begin
{*
 0054ADAC    push        ebx
 0054ADAD    push        esi
 0054ADAE    push        edi
 0054ADAF    mov         esi,edx
 0054ADB1    mov         ebx,eax
 0054ADB3    push        ebx
 0054ADB4    push        54AD68
 0054ADB9    push        0
 0054ADBB    push        0
 0054ADBD    xor         ecx,ecx
 0054ADBF    mov         edx,54AE24;'ExtendedImage'
 0054ADC4    mov         eax,esi
 0054ADC6    mov         edi,dword ptr [eax]
 0054ADC8    call        dword ptr [edi+4];TFiler.DefineProperty
 0054ADCB    push        ebx
 0054ADCC    push        54AD70
 0054ADD1    push        0
 0054ADD3    push        0
 0054ADD5    xor         ecx,ecx
 0054ADD7    mov         edx,54AE4C;'SubsetTitle'
 0054ADDC    mov         eax,esi
 0054ADDE    mov         edi,dword ptr [eax]
 0054ADE0    call        dword ptr [edi+4];TFiler.DefineProperty
 0054ADE3    push        ebx
 0054ADE4    push        54ACC8
 0054ADE9    push        0
 0054ADEB    push        0
 0054ADED    xor         ecx,ecx
 0054ADEF    mov         edx,54AE70;'TopDescription'
 0054ADF4    mov         eax,esi
 0054ADF6    mov         edi,dword ptr [eax]
 0054ADF8    call        dword ptr [edi+4];TFiler.DefineProperty
 0054ADFB    push        ebx
 0054ADFC    push        54AD18
 0054AE01    push        0
 0054AE03    push        0
 0054AE05    xor         ecx,ecx
 0054AE07    mov         edx,54AE9C;'BottomDescription'
 0054AE0C    mov         eax,esi
 0054AE0E    mov         ebx,dword ptr [eax]
 0054AE10    call        dword ptr [ebx+4];TFiler.DefineProperty
 0054AE13    pop         edi
 0054AE14    pop         esi
 0054AE15    pop         ebx
 0054AE16    ret
*}
end;

//0054AEC0
{*procedure TListGroup.GetDisplayName(?:?);
begin
 0054AEC0    push        ebx
 0054AEC1    push        esi
 0054AEC2    mov         esi,edx
 0054AEC4    mov         ebx,eax
 0054AEC6    mov         eax,esi
 0054AEC8    mov         edx,dword ptr [ebx+0C];TListGroup.FHeader:string
 0054AECB    call        @UStrAsg
 0054AED0    cmp         dword ptr [esi],0
>0054AED3    jne         0054AEDE
 0054AED5    mov         edx,esi
 0054AED7    mov         eax,ebx
 0054AED9    call        TCollectionItem.GetDisplayName
 0054AEDE    pop         esi
 0054AEDF    pop         ebx
 0054AEE0    ret
end;*}

//0054AEE4
procedure sub_0054AEE4;
begin
{*
 0054AEE4    call        0048F1A4
 0054AEE9    ret
*}
end;

//0054AEEC
procedure TListGroup.Assign(Source:TPersistent);
begin
{*
 0054AEEC    push        ebx
 0054AEED    push        esi
 0054AEEE    mov         esi,edx
 0054AEF0    mov         ebx,eax
 0054AEF2    mov         eax,esi
 0054AEF4    mov         edx,dword ptr ds:[52C28C];TListGroup
 0054AEFA    call        @IsClass
 0054AEFF    test        al,al
>0054AF01    je          0054AF4A
 0054AF03    mov         edx,dword ptr [esi+0C]
 0054AF06    mov         eax,ebx
 0054AF08    call        TListGroup.SetHeader
 0054AF0D    mov         edx,dword ptr [esi+10]
 0054AF10    mov         eax,ebx
 0054AF12    call        TListGroup.SetFooter
 0054AF17    mov         eax,esi
 0054AF19    call        TListGroup.GetState
 0054AF1E    mov         edx,eax
 0054AF20    mov         eax,ebx
 0054AF22    call        TListGroup.SetState
 0054AF27    movzx       edx,byte ptr [esi+1A]
 0054AF2B    mov         eax,ebx
 0054AF2D    call        TListGroup.SetHeaderAlign
 0054AF32    movzx       edx,byte ptr [esi+1B]
 0054AF36    mov         eax,ebx
 0054AF38    call        TListGroup.SetFooterAlign
 0054AF3D    mov         edx,dword ptr [esi+1C]
 0054AF40    mov         eax,ebx
 0054AF42    call        TListGroup.SetSubtitle
 0054AF47    pop         esi
 0054AF48    pop         ebx
 0054AF49    ret
 0054AF4A    mov         edx,esi
 0054AF4C    mov         eax,ebx
 0054AF4E    call        TPersistent.Assign
 0054AF53    pop         esi
 0054AF54    pop         ebx
 0054AF55    ret
*}
end;

//0054AF58
function TListGroups.GetItem(Index:Integer):TListGroup;
begin
{*
 0054AF58    push        ebx
 0054AF59    push        esi
 0054AF5A    mov         esi,edx
 0054AF5C    mov         ebx,eax
 0054AF5E    mov         edx,esi
 0054AF60    mov         eax,ebx
 0054AF62    call        TCollection.GetItem
 0054AF67    pop         esi
 0054AF68    pop         ebx
 0054AF69    ret
*}
end;

//0054AF6C
{*function sub_0054AF6C(?:TCollection):?;
begin
 0054AF6C    push        ebx
 0054AF6D    push        esi
 0054AF6E    push        edi
 0054AF6F    push        ebp
 0054AF70    mov         edi,eax
 0054AF72    xor         ebp,ebp
 0054AF74    mov         eax,dword ptr [edi+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 0054AF77    cmp         dword ptr [eax+8],0;TList<System.Classes.TCollectionItem>.FCount:Integer
>0054AF7B    je          0054AFAD
 0054AF7D    mov         eax,dword ptr [edi+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 0054AF80    mov         esi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0054AF83    dec         esi
 0054AF84    test        esi,esi
>0054AF86    jl          0054AF7D
 0054AF88    inc         esi
 0054AF89    xor         ebx,ebx
 0054AF8B    mov         edx,ebx
 0054AF8D    mov         eax,edi
 0054AF8F    call        TListGroups.GetItem
 0054AF94    cmp         ebp,dword ptr [eax+14];TListGroup.FGroupID:Integer
>0054AF97    jne         0054AF9C
 0054AF99    inc         ebp
>0054AF9A    jmp         0054AF7D
 0054AF9C    mov         eax,dword ptr [edi+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 0054AF9F    mov         eax,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0054AFA2    dec         eax
 0054AFA3    cmp         ebx,eax
>0054AFA5    je          0054AFAD
 0054AFA7    inc         ebx
 0054AFA8    dec         esi
>0054AFA9    jne         0054AF8B
>0054AFAB    jmp         0054AF7D
 0054AFAD    mov         eax,ebp
 0054AFAF    pop         ebp
 0054AFB0    pop         edi
 0054AFB1    pop         esi
 0054AFB2    pop         ebx
 0054AFB3    ret
end;*}

//0054AFB4
procedure sub_0054AFB4(?:TCollection);
begin
{*
 0054AFB4    push        ebp
 0054AFB5    mov         ebp,esp
 0054AFB7    push        ecx
 0054AFB8    mov         dword ptr [ebp-4],eax
 0054AFBB    mov         eax,dword ptr [ebp-4]
 0054AFBE    call        TListGroups.Owner
 0054AFC3    call        TWinControl.HandleAllocated
 0054AFC8    test        al,al
>0054AFCA    je          0054B00C
 0054AFCC    mov         eax,dword ptr [ebp-4]
 0054AFCF    mov         edx,dword ptr [eax]
 0054AFD1    call        dword ptr [edx+20];TCollection.BeginUpdate
 0054AFD4    xor         eax,eax
 0054AFD6    push        ebp
 0054AFD7    push        54B005
 0054AFDC    push        dword ptr fs:[eax]
 0054AFDF    mov         dword ptr fs:[eax],esp
 0054AFE2    mov         eax,dword ptr [ebp-4]
 0054AFE5    call        TListGroups.Owner
 0054AFEA    call        00548D80
 0054AFEF    xor         eax,eax
 0054AFF1    pop         edx
 0054AFF2    pop         ecx
 0054AFF3    pop         ecx
 0054AFF4    mov         dword ptr fs:[eax],edx
 0054AFF7    push        54B00C
 0054AFFC    mov         eax,dword ptr [ebp-4]
 0054AFFF    mov         edx,dword ptr [eax]
 0054B001    call        dword ptr [edx+24];TCollection.EndUpdate
 0054B004    ret
>0054B005    jmp         @HandleFinally
>0054B00A    jmp         0054AFFC
 0054B00C    pop         ecx
 0054B00D    pop         ebp
 0054B00E    ret
*}
end;

//0054B010
procedure TListGroups.sub_0048EDE4;
begin
{*
 0054B010    mov         eax,dword ptr [eax+18];TListGroups.....FOwner:TCustomListView
 0054B013    ret
*}
end;

//0054B014
{*procedure sub_0054B014(?:?);
begin
 0054B014    push        ebx
 0054B015    push        esi
 0054B016    mov         esi,edx
 0054B018    mov         ebx,eax
 0054B01A    test        esi,esi
>0054B01C    je          0054B036
 0054B01E    mov         eax,esi
 0054B020    call        TCollectionItem.GetIndex
 0054B025    push        eax
 0054B026    mov         eax,ebx
 0054B028    call        TListGroups.Owner
 0054B02D    pop         edx
 0054B02E    call        00548FEC
 0054B033    pop         esi
 0054B034    pop         ebx
 0054B035    ret
 0054B036    mov         eax,ebx
 0054B038    call        TListGroups.Owner
 0054B03D    call        00548D80
 0054B042    pop         esi
 0054B043    pop         ebx
 0054B044    ret
end;*}

//0054B048
constructor TListGroups.Create(AOwner:TCustomListView);
begin
{*
 0054B048    push        ebx
 0054B049    push        esi
 0054B04A    push        edi
 0054B04B    test        dl,dl
>0054B04D    je          0054B057
 0054B04F    add         esp,0FFFFFFF0
 0054B052    call        @ClassCreate
 0054B057    mov         esi,ecx
 0054B059    mov         ebx,edx
 0054B05B    mov         edi,eax
 0054B05D    mov         ecx,dword ptr ds:[52C28C];TListGroup
 0054B063    xor         edx,edx
 0054B065    mov         eax,edi
 0054B067    call        TCollection.Create
 0054B06C    mov         dword ptr [edi+18],esi;TListGroups......FOwner:TCustomListView
 0054B06F    mov         eax,edi
 0054B071    test        bl,bl
>0054B073    je          0054B084
 0054B075    call        @AfterConstruction
 0054B07A    pop         dword ptr fs:[0]
 0054B081    add         esp,0C
 0054B084    mov         eax,edi
 0054B086    pop         edi
 0054B087    pop         esi
 0054B088    pop         ebx
 0054B089    ret
*}
end;

//0054B08C
function TListGroups.Owner:TCustomListView;
begin
{*
 0054B08C    mov         eax,dword ptr [eax+18];TListGroups.......FOwner:TCustomListView
 0054B08F    ret
*}
end;

//0054B090
procedure sub_0054B090;
begin
{*
 0054B090    push        ebx
 0054B091    push        esi
 0054B092    push        edi
 0054B093    mov         edi,7CA6CC;gvar_007CA6CC:TList
 0054B098    cmp         dword ptr [edi],0
>0054B09B    je          0054B0E9
 0054B09D    mov         edx,7A1504
 0054B0A2    xor         ecx,ecx
 0054B0A4    mov         eax,dword ptr [edi]
 0054B0A6    call        TList.RemoveItem
 0054B0AB    mov         edx,7A150C
 0054B0B0    xor         ecx,ecx
 0054B0B2    mov         eax,dword ptr [edi]
 0054B0B4    call        TList.RemoveItem
 0054B0B9    mov         eax,dword ptr [edi]
 0054B0BB    mov         ebx,dword ptr [eax+8]
 0054B0BE    dec         ebx
 0054B0BF    test        ebx,ebx
>0054B0C1    jl          0054B0DE
 0054B0C3    inc         ebx
 0054B0C4    xor         esi,esi
 0054B0C6    mov         edx,esi
 0054B0C8    mov         eax,dword ptr [edi]
 0054B0CA    call        TList.Get
 0054B0CF    mov         edx,dword ptr ds:[529E04];TConversionFormat
 0054B0D5    call        @Dispose
 0054B0DA    inc         esi
 0054B0DB    dec         ebx
>0054B0DC    jne         0054B0C6
 0054B0DE    mov         eax,dword ptr [edi]
 0054B0E0    xor         edx,edx
 0054B0E2    mov         dword ptr [edi],edx
 0054B0E4    call        TObject.Free
 0054B0E9    pop         edi
 0054B0EA    pop         esi
 0054B0EB    pop         ebx
 0054B0EC    ret
*}
end;

//0054B0F0
constructor TTabControlStyleHook.Create(AControl:TWinControl);
begin
{*
 0054B0F0    push        ebx
 0054B0F1    push        esi
 0054B0F2    test        dl,dl
>0054B0F4    je          0054B0FE
 0054B0F6    add         esp,0FFFFFFF0
 0054B0F9    call        @ClassCreate
 0054B0FE    mov         ebx,edx
 0054B100    mov         esi,eax
 0054B102    xor         edx,edx
 0054B104    mov         eax,esi
 0054B106    call        TMouseTrackControlStyleHook.Create
 0054B10B    mov         byte ptr [esi+0D],1;TTabControlStyleHook.FDoubleBuffered:Boolean
 0054B10F    mov         byte ptr [esi+17],1;TTabControlStyleHook.FOverridePaint:Boolean
 0054B113    mov         byte ptr [esi+16],1;TTabControlStyleHook.FOverrideEraseBkgnd:Boolean
 0054B117    xor         eax,eax
 0054B119    mov         dword ptr [esi+34],eax;TTabControlStyleHook.FUpDownInstance:Pointer
 0054B11C    xor         eax,eax
 0054B11E    mov         dword ptr [esi+30],eax;TTabControlStyleHook.FUpDownHandle:HWND
 0054B121    xor         eax,eax
 0054B123    mov         dword ptr [esi+38],eax;TTabControlStyleHook.FUpDownDefWndProc:Pointer
 0054B126    mov         byte ptr [esi+3C],0;TTabControlStyleHook.FUpDownLeftPressed:Boolean
 0054B12A    mov         byte ptr [esi+3D],0;TTabControlStyleHook.FUpDownRightPressed:Boolean
 0054B12E    mov         byte ptr [esi+3E],0;TTabControlStyleHook.FUpDownMouseOnLeft:Boolean
 0054B132    mov         byte ptr [esi+3F],0;TTabControlStyleHook.FUpDownMouseOnRight:Boolean
 0054B136    mov         eax,esi
 0054B138    test        bl,bl
>0054B13A    je          0054B14B
 0054B13C    call        @AfterConstruction
 0054B141    pop         dword ptr fs:[0]
 0054B148    add         esp,0C
 0054B14B    mov         eax,esi
 0054B14D    pop         esi
 0054B14E    pop         ebx
 0054B14F    ret
*}
end;

//0054B150
destructor TTabControlStyleHook.Destroy();
begin
{*
 0054B150    push        ebx
 0054B151    push        esi
 0054B152    call        @BeforeDestruction
 0054B157    mov         ebx,edx
 0054B159    mov         esi,eax
 0054B15B    mov         eax,dword ptr [esi+30];TTabControlStyleHook.FUpDownHandle:HWND
 0054B15E    test        eax,eax
>0054B160    je          0054B16E
 0054B162    mov         edx,dword ptr [esi+38];TTabControlStyleHook.FUpDownDefWndProc:Pointer
 0054B165    push        edx
 0054B166    push        0FC
 0054B168    push        eax
 0054B169    call        user32.SetWindowLongW
 0054B16E    mov         eax,dword ptr [esi+34];TTabControlStyleHook.FUpDownInstance:Pointer
 0054B171    call        FreeObjectInstance
 0054B176    mov         dl,0FC
 0054B178    and         dl,bl
 0054B17A    mov         eax,esi
 0054B17C    call        TMouseTrackControlStyleHook.Destroy
 0054B181    test        bl,bl
>0054B183    jle         0054B18C
 0054B185    mov         eax,esi
 0054B187    call        @ClassDestroy
 0054B18C    pop         esi
 0054B18D    pop         ebx
 0054B18E    ret
*}
end;

//0054B190
{*procedure TTabControlStyleHook.sub_0054B190(?:?);
begin
 0054B190    push        ebx
 0054B191    push        esi
 0054B192    mov         esi,edx
 0054B194    mov         ebx,eax
 0054B196    mov         eax,dword ptr [esi+8]
 0054B199    cmp         dword ptr [eax+8],0FFFFFDD9
>0054B1A0    jne         0054B1BB
 0054B1A2    mov         eax,ebx
 0054B1A4    call        TStyleHook.GetHandle
 0054B1A9    cmp         eax,dword ptr [esi+4]
>0054B1AC    jne         0054B1BB
 0054B1AE    cmp         dword ptr [ebx+30],0;TTabControlStyleHook.FUpDownHandle:HWND
>0054B1B2    je          0054B1BB
 0054B1B4    mov         eax,ebx
 0054B1B6    call        0054B284
 0054B1BB    pop         esi
 0054B1BC    pop         ebx
 0054B1BD    ret
end;*}

//0054B1C0
procedure TTabControlStyleHook.WMParentNotify;
begin
{*
 0054B1C0    cmp         dword ptr [eax+30],0;TTabControlStyleHook.FUpDownHandle:HWND
>0054B1C4    jne         0054B1D7
 0054B1C6    mov         edx,dword ptr [eax+8];TTabControlStyleHook.FControl:TWinControl
 0054B1C9    test        byte ptr [edx+188],2;TWinControl.FStyleElements:TStyleElements
>0054B1D0    je          0054B1D7
 0054B1D2    call        0054B20C
 0054B1D7    ret
*}
end;

//0054B1D8
{*procedure sub_0054B1D8(?:?);
begin
 0054B1D8    push        ebx
 0054B1D9    push        esi
 0054B1DA    mov         esi,edx
 0054B1DC    mov         ebx,eax
 0054B1DE    mov         edx,esi
 0054B1E0    mov         eax,ebx
 0054B1E2    call        0058DB4C
 0054B1E7    mov         eax,dword ptr [esi]
 0054B1E9    sub         eax,1328
>0054B1EE    jne         0054B209
 0054B1F0    cmp         dword ptr [ebx+30],0;TTabControlStyleHook.FUpDownHandle:HWND
>0054B1F4    jne         0054B209
 0054B1F6    mov         eax,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054B1F9    test        byte ptr [eax+188],2;TWinControl.FStyleElements:TStyleElements
>0054B200    je          0054B209
 0054B202    mov         eax,ebx
 0054B204    call        0054B20C
 0054B209    pop         esi
 0054B20A    pop         ebx
 0054B20B    ret
end;*}

//0054B20C
procedure sub_0054B20C(?:TTabControlStyleHook);
begin
{*
 0054B20C    push        ebx
 0054B20D    push        esi
 0054B20E    mov         ebx,eax
 0054B210    cmp         dword ptr [ebx+30],0;TTabControlStyleHook.FUpDownHandle:HWND
>0054B214    jne         0054B261
 0054B216    push        0
 0054B218    push        54B264
 0054B21D    push        0
 0054B21F    mov         eax,ebx
 0054B221    call        TStyleHook.GetHandle
 0054B226    push        eax
 0054B227    call        user32.FindWindowExW
 0054B22C    mov         esi,eax
 0054B22E    mov         dword ptr [ebx+30],esi;TTabControlStyleHook.FUpDownHandle:HWND
 0054B231    test        esi,esi
>0054B233    je          0054B261
 0054B235    push        ebx
 0054B236    mov         eax,dword ptr [ebx]
 0054B238    mov         eax,dword ptr [eax+48]
 0054B23B    push        eax
 0054B23C    call        MakeObjectInstance
 0054B241    mov         dword ptr [ebx+34],eax;TTabControlStyleHook.FUpDownInstance:Pointer
 0054B244    mov         eax,dword ptr [ebx+30];TTabControlStyleHook.FUpDownHandle:HWND
 0054B247    push        0FC
 0054B249    push        eax
 0054B24A    call        user32.GetWindowLongW
 0054B24F    mov         dword ptr [ebx+38],eax;TTabControlStyleHook.FUpDownDefWndProc:Pointer
 0054B252    mov         eax,dword ptr [ebx+30];TTabControlStyleHook.FUpDownHandle:HWND
 0054B255    mov         edx,dword ptr [ebx+34];TTabControlStyleHook.FUpDownInstance:Pointer
 0054B258    push        edx
 0054B259    push        0FC
 0054B25B    push        eax
 0054B25C    call        user32.SetWindowLongW
 0054B261    pop         esi
 0054B262    pop         ebx
 0054B263    ret
*}
end;

//0054B284
procedure sub_0054B284(?:TTabControlStyleHook);
begin
{*
 0054B284    push        ebx
 0054B285    add         esp,0FFFFFFD0
 0054B288    mov         ebx,eax
 0054B28A    mov         eax,dword ptr [ebx+30];TTabControlStyleHook.FUpDownHandle:HWND
 0054B28D    test        eax,eax
>0054B28F    je          0054B352
 0054B295    lea         edx,[esp+10]
 0054B299    push        edx
 0054B29A    push        eax
 0054B29B    call        user32.GetWindowRect
 0054B2A0    mov         eax,dword ptr [esp+14]
 0054B2A4    mov         edx,dword ptr [esp+10]
 0054B2A8    mov         dword ptr [esp+8],edx
 0054B2AC    mov         dword ptr [esp+0C],eax
 0054B2B0    mov         ecx,esp
 0054B2B2    lea         edx,[esp+8]
 0054B2B6    mov         eax,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054B2B9    call        TControl.ScreenToClient
 0054B2BE    mov         eax,ebx
 0054B2C0    call        0054C4EC
 0054B2C5    test        al,al
>0054B2C7    jne         0054B311
 0054B2C9    lea         eax,[esp+10]
 0054B2CD    call        RectHeight
 0054B2D2    add         eax,dword ptr [esp+4]
 0054B2D6    add         eax,5
 0054B2D9    push        eax
 0054B2DA    lea         eax,[esp+24]
 0054B2DE    push        eax
 0054B2DF    lea         eax,[esp+18]
 0054B2E3    call        RectWidth
 0054B2E8    mov         ecx,eax
 0054B2EA    add         ecx,dword ptr [esp+8]
 0054B2EE    xor         edx,edx
 0054B2F0    mov         eax,dword ptr [esp+8]
 0054B2F4    call        Rect
 0054B2F9    push        1
 0054B2FB    push        0
 0054B2FD    lea         eax,[esp+28]
 0054B301    push        eax
 0054B302    mov         eax,ebx
 0054B304    call        TStyleHook.GetHandle
 0054B309    push        eax
 0054B30A    call        user32.RedrawWindow
>0054B30F    jmp         0054B352
 0054B311    mov         eax,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054B314    mov         eax,dword ptr [eax+5C];TWinControl.FHeight:Integer
 0054B317    push        eax
 0054B318    lea         eax,[esp+24]
 0054B31C    push        eax
 0054B31D    lea         eax,[esp+18]
 0054B321    call        RectWidth
 0054B326    mov         ecx,eax
 0054B328    add         ecx,dword ptr [esp+8]
 0054B32C    mov         edx,dword ptr [esp+0C]
 0054B330    sub         edx,5
 0054B333    mov         eax,dword ptr [esp+8]
 0054B337    call        Rect
 0054B33C    push        1
 0054B33E    push        0
 0054B340    lea         eax,[esp+28]
 0054B344    push        eax
 0054B345    mov         eax,ebx
 0054B347    call        TStyleHook.GetHandle
 0054B34C    push        eax
 0054B34D    call        user32.RedrawWindow
 0054B352    add         esp,30
 0054B355    pop         ebx
 0054B356    ret
*}
end;

//0054B358
{*procedure sub_0054B358(?:?);
begin
 0054B358    push        ebp
 0054B359    mov         ebp,esp
 0054B35B    add         esp,0FFFFFFCC
 0054B35E    push        ebx
 0054B35F    push        esi
 0054B360    mov         dword ptr [ebp-4],edx
 0054B363    mov         esi,eax
 0054B365    lea         eax,[ebp-28]
 0054B368    push        eax
 0054B369    mov         eax,dword ptr [esi+30];TTabControlStyleHook.FUpDownHandle:HWND
 0054B36C    push        eax
 0054B36D    call        user32.GetWindowRect
 0054B372    lea         eax,[ebp-28]
 0054B375    call        RectWidth
 0054B37A    test        eax,eax
>0054B37C    je          0054B541
 0054B382    lea         eax,[ebp-28]
 0054B385    call        RectHeight
 0054B38A    test        eax,eax
>0054B38C    je          0054B541
 0054B392    call        StyleServices
 0054B397    mov         edx,dword ptr [eax]
 0054B399    call        dword ptr [edx+48];@AbstractError
 0054B39C    test        al,al
>0054B39E    je          0054B541
 0054B3A4    mov         dl,1
 0054B3A6    mov         eax,[004C1D10];TBitmap
 0054B3AB    call        TBitmap.Create;TBitmap.Create
 0054B3B0    mov         dword ptr [ebp-8],eax
 0054B3B3    xor         eax,eax
 0054B3B5    push        ebp
 0054B3B6    push        54B53A
 0054B3BB    push        dword ptr fs:[eax]
 0054B3BE    mov         dword ptr fs:[eax],esp
 0054B3C1    lea         eax,[ebp-28]
 0054B3C4    call        RectWidth
 0054B3C9    mov         edx,eax
 0054B3CB    mov         eax,dword ptr [ebp-8]
 0054B3CE    mov         ecx,dword ptr [eax]
 0054B3D0    call        dword ptr [ecx+44];TBitmap.SetWidth
 0054B3D3    lea         eax,[ebp-28]
 0054B3D6    call        RectHeight
 0054B3DB    mov         edx,eax
 0054B3DD    mov         eax,dword ptr [ebp-8]
 0054B3E0    mov         ecx,dword ptr [eax]
 0054B3E2    call        dword ptr [ecx+38];TBitmap.SetHeight
 0054B3E5    mov         eax,dword ptr [ebp-8]
 0054B3E8    mov         edx,dword ptr [eax]
 0054B3EA    call        dword ptr [edx+30];TBitmap.GetWidth
 0054B3ED    push        eax
 0054B3EE    mov         eax,dword ptr [ebp-8]
 0054B3F1    mov         edx,dword ptr [eax]
 0054B3F3    call        dword ptr [edx+24];TBitmap.GetHeight
 0054B3F6    push        eax
 0054B3F7    xor         ecx,ecx
 0054B3F9    xor         edx,edx
 0054B3FB    lea         eax,[ebp-18]
 0054B3FE    call        TRect.Create
 0054B403    call        StyleServices
 0054B408    xor         ecx,ecx
 0054B40A    mov         edx,0FF00000F
 0054B40F    call        TCustomStyleServices.ColorToRGB
 0054B414    push        eax
 0054B415    mov         eax,dword ptr [ebp-8]
 0054B418    call        TBitmap.GetCanvas
 0054B41D    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0054B420    pop         edx
 0054B421    call        TBrush.SetColor
 0054B426    mov         eax,dword ptr [ebp-8]
 0054B429    call        TBitmap.GetCanvas
 0054B42E    lea         edx,[ebp-18]
 0054B431    mov         ecx,dword ptr [eax]
 0054B433    call        dword ptr [ecx+54];TCanvas.FillRect
 0054B436    lea         eax,[ebp-18]
 0054B439    call        RectWidth
 0054B43E    sar         eax,1
>0054B440    jns         0054B445
 0054B442    adc         eax,0
 0054B445    add         eax,dword ptr [ebp-18]
 0054B448    mov         dword ptr [ebp-10],eax
 0054B44B    cmp         byte ptr [esi+3C],0;TTabControlStyleHook.FUpDownLeftPressed:Boolean
>0054B44F    je          0054B455
 0054B451    mov         bl,0C
>0054B453    jmp         0054B461
 0054B455    cmp         byte ptr [esi+3E],0;TTabControlStyleHook.FUpDownMouseOnLeft:Boolean
>0054B459    je          0054B45F
 0054B45B    mov         bl,0B
>0054B45D    jmp         0054B461
 0054B45F    mov         bl,0A
 0054B461    call        StyleServices
 0054B466    mov         edx,ebx
 0054B468    lea         ecx,[ebp-34]
 0054B46B    mov         ebx,dword ptr [eax]
 0054B46D    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 0054B473    lea         eax,[ebp-18]
 0054B476    push        eax
 0054B477    push        0
 0054B479    mov         eax,dword ptr [ebp-8]
 0054B47C    call        TBitmap.GetCanvas
 0054B481    call        TCanvas.GetHandle
 0054B486    push        eax
 0054B487    call        StyleServices
 0054B48C    lea         ecx,[ebp-34]
 0054B48F    pop         edx
 0054B490    call        TCustomStyleServices.DrawElement
 0054B495    mov         eax,dword ptr [ebp-8]
 0054B498    mov         edx,dword ptr [eax]
 0054B49A    call        dword ptr [edx+30];TBitmap.GetWidth
 0054B49D    push        eax
 0054B49E    mov         eax,dword ptr [ebp-8]
 0054B4A1    mov         edx,dword ptr [eax]
 0054B4A3    call        dword ptr [edx+24];TBitmap.GetHeight
 0054B4A6    push        eax
 0054B4A7    xor         ecx,ecx
 0054B4A9    xor         edx,edx
 0054B4AB    lea         eax,[ebp-18]
 0054B4AE    call        TRect.Create
 0054B4B3    lea         eax,[ebp-18]
 0054B4B6    call        RectWidth
 0054B4BB    sar         eax,1
>0054B4BD    jns         0054B4C2
 0054B4BF    adc         eax,0
 0054B4C2    mov         edx,dword ptr [ebp-10]
 0054B4C5    sub         edx,eax
 0054B4C7    mov         dword ptr [ebp-18],edx
 0054B4CA    cmp         byte ptr [esi+3D],0;TTabControlStyleHook.FUpDownRightPressed:Boolean
>0054B4CE    je          0054B4D4
 0054B4D0    mov         bl,10
>0054B4D2    jmp         0054B4E0
 0054B4D4    cmp         byte ptr [esi+3F],0;TTabControlStyleHook.FUpDownMouseOnRight:Boolean
>0054B4D8    je          0054B4DE
 0054B4DA    mov         bl,0F
>0054B4DC    jmp         0054B4E0
 0054B4DE    mov         bl,0E
 0054B4E0    call        StyleServices
 0054B4E5    mov         edx,ebx
 0054B4E7    lea         ecx,[ebp-34]
 0054B4EA    mov         ebx,dword ptr [eax]
 0054B4EC    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 0054B4F2    lea         eax,[ebp-18]
 0054B4F5    push        eax
 0054B4F6    push        0
 0054B4F8    mov         eax,dword ptr [ebp-8]
 0054B4FB    call        TBitmap.GetCanvas
 0054B500    call        TCanvas.GetHandle
 0054B505    push        eax
 0054B506    call        StyleServices
 0054B50B    lea         ecx,[ebp-34]
 0054B50E    pop         edx
 0054B50F    call        TCustomStyleServices.DrawElement
 0054B514    mov         eax,dword ptr [ebp-8]
 0054B517    push        eax
 0054B518    xor         ecx,ecx
 0054B51A    xor         edx,edx
 0054B51C    mov         eax,dword ptr [ebp-4]
 0054B51F    mov         ebx,dword ptr [eax]
 0054B521    call        dword ptr [ebx+44]
 0054B524    xor         eax,eax
 0054B526    pop         edx
 0054B527    pop         ecx
 0054B528    pop         ecx
 0054B529    mov         dword ptr fs:[eax],edx
 0054B52C    push        54B541
 0054B531    mov         eax,dword ptr [ebp-8]
 0054B534    call        TObject.Free
 0054B539    ret
>0054B53A    jmp         @HandleFinally
>0054B53F    jmp         0054B531
 0054B541    pop         esi
 0054B542    pop         ebx
 0054B543    mov         esp,ebp
 0054B545    pop         ebp
 0054B546    ret
end;*}

//0054B548
{*procedure sub_0054B548(?:?; ?:?);
begin
 0054B548    push        ebp
 0054B549    mov         ebp,esp
 0054B54B    add         esp,0FFFFFFD0
 0054B54E    push        ebx
 0054B54F    mov         ebx,eax
 0054B551    push        0
 0054B553    push        0
 0054B555    push        0B
 0054B557    mov         eax,dword ptr [ebp+8]
 0054B55A    mov         eax,dword ptr [eax-4]
 0054B55D    mov         eax,dword ptr [eax+30]
 0054B560    push        eax
 0054B561    call        user32.SendMessageW
 0054B566    mov         eax,dword ptr [ebx+8]
 0054B569    push        eax
 0054B56A    mov         eax,dword ptr [ebx+4]
 0054B56D    push        eax
 0054B56E    mov         eax,dword ptr [ebx]
 0054B570    push        eax
 0054B571    mov         eax,dword ptr [ebp+8]
 0054B574    mov         eax,dword ptr [eax-4]
 0054B577    mov         eax,dword ptr [eax+30]
 0054B57A    push        eax
 0054B57B    mov         eax,dword ptr [ebp+8]
 0054B57E    mov         eax,dword ptr [eax-4]
 0054B581    mov         eax,dword ptr [eax+38]
 0054B584    push        eax
 0054B585    call        user32.CallWindowProcW
 0054B58A    mov         dword ptr [ebx+0C],eax
 0054B58D    push        0
 0054B58F    push        1
 0054B591    push        0B
 0054B593    mov         eax,dword ptr [ebp+8]
 0054B596    mov         eax,dword ptr [eax-4]
 0054B599    mov         eax,dword ptr [eax+30]
 0054B59C    push        eax
 0054B59D    call        user32.SendMessageW
 0054B5A2    lea         eax,[ebp-20]
 0054B5A5    push        eax
 0054B5A6    mov         eax,dword ptr [ebp+8]
 0054B5A9    mov         eax,dword ptr [eax-4]
 0054B5AC    mov         eax,dword ptr [eax+30]
 0054B5AF    push        eax
 0054B5B0    call        user32.GetWindowRect
 0054B5B5    lea         eax,[ebp-20]
 0054B5B8    call        RectHeight
 0054B5BD    push        eax
 0054B5BE    lea         eax,[ebp-30]
 0054B5C1    push        eax
 0054B5C2    lea         eax,[ebp-20]
 0054B5C5    call        RectWidth
 0054B5CA    mov         ecx,eax
 0054B5CC    xor         edx,edx
 0054B5CE    xor         eax,eax
 0054B5D0    call        Rect
 0054B5D5    lea         eax,[ebp-30]
 0054B5D8    call        RectWidth
 0054B5DD    sar         eax,1
>0054B5DF    jns         0054B5E4
 0054B5E1    adc         eax,0
 0054B5E4    add         eax,dword ptr [ebp-30]
 0054B5E7    mov         dword ptr [ebp-28],eax
 0054B5EA    movsx       eax,word ptr [ebx+8]
 0054B5EE    movsx       edx,word ptr [ebx+0A]
 0054B5F2    mov         dword ptr [ebp-8],eax
 0054B5F5    mov         dword ptr [ebp-4],edx
 0054B5F8    lea         edx,[ebp-8]
 0054B5FB    lea         eax,[ebp-30]
 0054B5FE    call        TRect.Contains
 0054B603    test        al,al
>0054B605    je          0054B613
 0054B607    mov         eax,dword ptr [ebp+8]
 0054B60A    mov         eax,dword ptr [eax-4]
 0054B60D    mov         byte ptr [eax+3C],1
>0054B611    jmp         0054B61D
 0054B613    mov         eax,dword ptr [ebp+8]
 0054B616    mov         eax,dword ptr [eax-4]
 0054B619    mov         byte ptr [eax+3C],0
 0054B61D    lea         eax,[ebp-20]
 0054B620    call        RectHeight
 0054B625    push        eax
 0054B626    lea         eax,[ebp-30]
 0054B629    push        eax
 0054B62A    lea         eax,[ebp-20]
 0054B62D    call        RectWidth
 0054B632    mov         ecx,eax
 0054B634    xor         edx,edx
 0054B636    xor         eax,eax
 0054B638    call        Rect
 0054B63D    lea         eax,[ebp-30]
 0054B640    call        RectWidth
 0054B645    sar         eax,1
>0054B647    jns         0054B64C
 0054B649    adc         eax,0
 0054B64C    mov         edx,dword ptr [ebp-28]
 0054B64F    sub         edx,eax
 0054B651    mov         dword ptr [ebp-30],edx
 0054B654    movsx       eax,word ptr [ebx+8]
 0054B658    movsx       edx,word ptr [ebx+0A]
 0054B65C    mov         dword ptr [ebp-10],eax
 0054B65F    mov         dword ptr [ebp-0C],edx
 0054B662    lea         edx,[ebp-10]
 0054B665    lea         eax,[ebp-30]
 0054B668    call        TRect.Contains
 0054B66D    test        al,al
>0054B66F    je          0054B67D
 0054B671    mov         eax,dword ptr [ebp+8]
 0054B674    mov         eax,dword ptr [eax-4]
 0054B677    mov         byte ptr [eax+3D],1
>0054B67B    jmp         0054B687
 0054B67D    mov         eax,dword ptr [ebp+8]
 0054B680    mov         eax,dword ptr [eax-4]
 0054B683    mov         byte ptr [eax+3D],0
 0054B687    push        1
 0054B689    push        0
 0054B68B    push        0
 0054B68D    mov         eax,dword ptr [ebp+8]
 0054B690    mov         eax,dword ptr [eax-4]
 0054B693    mov         eax,dword ptr [eax+30]
 0054B696    push        eax
 0054B697    call        user32.RedrawWindow
 0054B69C    mov         eax,dword ptr [ebp+8]
 0054B69F    mov         byte ptr [eax-5],0
 0054B6A3    pop         ebx
 0054B6A4    mov         esp,ebp
 0054B6A6    pop         ebp
 0054B6A7    ret
end;*}

//0054B6A8
{*procedure sub_0054B6A8(?:?);
begin
 0054B6A8    push        ebp
 0054B6A9    mov         ebp,esp
 0054B6AB    mov         edx,dword ptr [ebp+8]
 0054B6AE    push        edx
 0054B6AF    call        0054B548
 0054B6B4    pop         ecx
 0054B6B5    pop         ebp
 0054B6B6    ret
end;*}

//0054B6B8
{*procedure sub_0054B6B8(?:?; ?:?);
begin
 0054B6B8    push        ebp
 0054B6B9    mov         ebp,esp
 0054B6BB    push        ebx
 0054B6BC    push        esi
 0054B6BD    mov         ebx,eax
 0054B6BF    mov         esi,dword ptr [ebp+8]
 0054B6C2    add         esi,0FFFFFFFC
 0054B6C5    push        0
 0054B6C7    push        0
 0054B6C9    push        0B
 0054B6CB    mov         eax,dword ptr [esi]
 0054B6CD    mov         eax,dword ptr [eax+30]
 0054B6D0    push        eax
 0054B6D1    call        user32.SendMessageW
 0054B6D6    mov         eax,dword ptr [ebx+8]
 0054B6D9    push        eax
 0054B6DA    mov         eax,dword ptr [ebx+4]
 0054B6DD    push        eax
 0054B6DE    mov         eax,dword ptr [ebx]
 0054B6E0    push        eax
 0054B6E1    mov         eax,dword ptr [esi]
 0054B6E3    mov         eax,dword ptr [eax+30]
 0054B6E6    push        eax
 0054B6E7    mov         eax,dword ptr [esi]
 0054B6E9    mov         eax,dword ptr [eax+38]
 0054B6EC    push        eax
 0054B6ED    call        user32.CallWindowProcW
 0054B6F2    mov         dword ptr [ebx+0C],eax
 0054B6F5    push        0
 0054B6F7    push        1
 0054B6F9    push        0B
 0054B6FB    mov         eax,dword ptr [esi]
 0054B6FD    mov         eax,dword ptr [eax+30]
 0054B700    push        eax
 0054B701    call        user32.SendMessageW
 0054B706    mov         eax,dword ptr [esi]
 0054B708    mov         byte ptr [eax+3C],0
 0054B70C    mov         eax,dword ptr [esi]
 0054B70E    mov         byte ptr [eax+3D],0
 0054B712    push        1
 0054B714    push        0
 0054B716    push        0
 0054B718    mov         eax,dword ptr [esi]
 0054B71A    mov         eax,dword ptr [eax+30]
 0054B71D    push        eax
 0054B71E    call        user32.RedrawWindow
 0054B723    mov         eax,dword ptr [esi]
 0054B725    call        0054B284
 0054B72A    mov         eax,dword ptr [ebp+8]
 0054B72D    mov         byte ptr [eax-5],0
 0054B731    pop         esi
 0054B732    pop         ebx
 0054B733    pop         ebp
 0054B734    ret
end;*}

//0054B738
{*procedure sub_0054B738(?:?; ?:?);
begin
 0054B738    push        ebp
 0054B739    mov         ebp,esp
 0054B73B    add         esp,0FFFFFFCC
 0054B73E    push        ebx
 0054B73F    push        esi
 0054B740    push        edi
 0054B741    mov         esi,eax
 0054B743    mov         edi,dword ptr [ebp+8]
 0054B746    add         edi,0FFFFFFFC
 0054B749    mov         eax,dword ptr [esi+8]
 0054B74C    push        eax
 0054B74D    mov         eax,dword ptr [esi+4]
 0054B750    push        eax
 0054B751    mov         eax,dword ptr [esi]
 0054B753    push        eax
 0054B754    mov         eax,dword ptr [edi]
 0054B756    mov         eax,dword ptr [eax+30]
 0054B759    push        eax
 0054B75A    mov         eax,dword ptr [edi]
 0054B75C    mov         eax,dword ptr [eax+38]
 0054B75F    push        eax
 0054B760    call        user32.CallWindowProcW
 0054B765    mov         dword ptr [esi+0C],eax
 0054B768    mov         eax,dword ptr [edi]
 0054B76A    movzx       ebx,byte ptr [eax+3E]
 0054B76E    mov         eax,dword ptr [edi]
 0054B770    movzx       eax,byte ptr [eax+3F]
 0054B774    mov         byte ptr [ebp-1],al
 0054B777    lea         eax,[ebp-24]
 0054B77A    push        eax
 0054B77B    mov         eax,dword ptr [edi]
 0054B77D    mov         eax,dword ptr [eax+30]
 0054B780    push        eax
 0054B781    call        user32.GetWindowRect
 0054B786    lea         eax,[ebp-24]
 0054B789    call        RectHeight
 0054B78E    push        eax
 0054B78F    lea         eax,[ebp-34]
 0054B792    push        eax
 0054B793    lea         eax,[ebp-24]
 0054B796    call        RectWidth
 0054B79B    mov         ecx,eax
 0054B79D    xor         edx,edx
 0054B79F    xor         eax,eax
 0054B7A1    call        Rect
 0054B7A6    lea         eax,[ebp-34]
 0054B7A9    call        RectWidth
 0054B7AE    sar         eax,1
>0054B7B0    jns         0054B7B5
 0054B7B2    adc         eax,0
 0054B7B5    add         eax,dword ptr [ebp-34]
 0054B7B8    mov         dword ptr [ebp-2C],eax
 0054B7BB    movsx       eax,word ptr [esi+8]
 0054B7BF    movsx       edx,word ptr [esi+0A]
 0054B7C3    mov         dword ptr [ebp-0C],eax
 0054B7C6    mov         dword ptr [ebp-8],edx
 0054B7C9    lea         edx,[ebp-0C]
 0054B7CC    lea         eax,[ebp-34]
 0054B7CF    call        TRect.Contains
 0054B7D4    test        al,al
>0054B7D6    je          0054B7E0
 0054B7D8    mov         eax,dword ptr [edi]
 0054B7DA    mov         byte ptr [eax+3E],1
>0054B7DE    jmp         0054B7E6
 0054B7E0    mov         eax,dword ptr [edi]
 0054B7E2    mov         byte ptr [eax+3E],0
 0054B7E6    lea         eax,[ebp-24]
 0054B7E9    call        RectHeight
 0054B7EE    push        eax
 0054B7EF    lea         eax,[ebp-34]
 0054B7F2    push        eax
 0054B7F3    lea         eax,[ebp-24]
 0054B7F6    call        RectWidth
 0054B7FB    mov         ecx,eax
 0054B7FD    xor         edx,edx
 0054B7FF    xor         eax,eax
 0054B801    call        Rect
 0054B806    lea         eax,[ebp-34]
 0054B809    call        RectWidth
 0054B80E    sar         eax,1
>0054B810    jns         0054B815
 0054B812    adc         eax,0
 0054B815    mov         edx,dword ptr [ebp-2C]
 0054B818    sub         edx,eax
 0054B81A    mov         dword ptr [ebp-34],edx
 0054B81D    movsx       eax,word ptr [esi+8]
 0054B821    movsx       edx,word ptr [esi+0A]
 0054B825    mov         dword ptr [ebp-14],eax
 0054B828    mov         dword ptr [ebp-10],edx
 0054B82B    lea         edx,[ebp-14]
 0054B82E    lea         eax,[ebp-34]
 0054B831    call        TRect.Contains
 0054B836    test        al,al
>0054B838    je          0054B842
 0054B83A    mov         eax,dword ptr [edi]
 0054B83C    mov         byte ptr [eax+3F],1
>0054B840    jmp         0054B848
 0054B842    mov         eax,dword ptr [edi]
 0054B844    mov         byte ptr [eax+3F],0
 0054B848    mov         eax,dword ptr [edi]
 0054B84A    cmp         bl,byte ptr [eax+3E]
>0054B84D    jne         0054B85A
 0054B84F    mov         eax,dword ptr [edi]
 0054B851    movzx       eax,byte ptr [eax+3F]
 0054B855    cmp         al,byte ptr [ebp-1]
>0054B858    je          0054B86B
 0054B85A    push        1
 0054B85C    push        0
 0054B85E    push        0
 0054B860    mov         eax,dword ptr [edi]
 0054B862    mov         eax,dword ptr [eax+30]
 0054B865    push        eax
 0054B866    call        user32.RedrawWindow
 0054B86B    mov         eax,dword ptr [ebp+8]
 0054B86E    mov         byte ptr [eax-5],0
 0054B872    pop         edi
 0054B873    pop         esi
 0054B874    pop         ebx
 0054B875    mov         esp,ebp
 0054B877    pop         ebp
 0054B878    ret
end;*}

//0054B87C
{*procedure sub_0054B87C(?:?);
begin
 0054B87C    push        ebp
 0054B87D    mov         ebp,esp
 0054B87F    mov         eax,dword ptr [ebp+8]
 0054B882    mov         eax,dword ptr [eax-4]
 0054B885    mov         byte ptr [eax+3E],0
 0054B889    mov         eax,dword ptr [ebp+8]
 0054B88C    mov         eax,dword ptr [eax-4]
 0054B88F    mov         byte ptr [eax+3F],0
 0054B893    mov         eax,dword ptr [ebp+8]
 0054B896    mov         eax,dword ptr [eax-4]
 0054B899    mov         byte ptr [eax+3C],0
 0054B89D    mov         eax,dword ptr [ebp+8]
 0054B8A0    mov         eax,dword ptr [eax-4]
 0054B8A3    mov         byte ptr [eax+3D],0
 0054B8A7    push        1
 0054B8A9    push        0
 0054B8AB    push        0
 0054B8AD    mov         eax,dword ptr [ebp+8]
 0054B8B0    mov         eax,dword ptr [eax-4]
 0054B8B3    mov         eax,dword ptr [eax+30]
 0054B8B6    push        eax
 0054B8B7    call        user32.RedrawWindow
 0054B8BC    pop         ebp
 0054B8BD    ret
end;*}

//0054B8C0
{*procedure sub_0054B8C0(?:?; ?:?);
begin
 0054B8C0    push        ebp
 0054B8C1    mov         ebp,esp
 0054B8C3    add         esp,0FFFFFFA8
 0054B8C6    push        esi
 0054B8C7    push        edi
 0054B8C8    mov         esi,eax
 0054B8CA    lea         edi,[ebp-18]
 0054B8CD    movs        dword ptr [edi],dword ptr [esi]
 0054B8CE    movs        dword ptr [edi],dword ptr [esi]
 0054B8CF    movs        dword ptr [edi],dword ptr [esi]
 0054B8D0    movs        dword ptr [edi],dword ptr [esi]
 0054B8D1    mov         eax,dword ptr [ebp-14]
 0054B8D4    mov         dword ptr [ebp-4],eax
 0054B8D7    mov         dl,1
 0054B8D9    mov         eax,[004BF670];TCanvas
 0054B8DE    call        TCanvas.Create;TCanvas.Create
 0054B8E3    mov         dword ptr [ebp-8],eax
 0054B8E6    cmp         dword ptr [ebp-4],0
>0054B8EA    je          0054B8F9
 0054B8EC    mov         edx,dword ptr [ebp-4]
 0054B8EF    mov         eax,dword ptr [ebp-8]
 0054B8F2    call        TCanvas.SetHandle
>0054B8F7    jmp         0054B916
 0054B8F9    lea         eax,[ebp-58]
 0054B8FC    push        eax
 0054B8FD    mov         eax,dword ptr [ebp+8]
 0054B900    mov         eax,dword ptr [eax-4]
 0054B903    mov         eax,dword ptr [eax+30]
 0054B906    push        eax
 0054B907    call        user32.BeginPaint
 0054B90C    mov         edx,eax
 0054B90E    mov         eax,dword ptr [ebp-8]
 0054B911    call        TCanvas.SetHandle
 0054B916    xor         eax,eax
 0054B918    push        ebp
 0054B919    push        54B96B
 0054B91E    push        dword ptr fs:[eax]
 0054B921    mov         dword ptr fs:[eax],esp
 0054B924    mov         eax,dword ptr [ebp+8]
 0054B927    mov         eax,dword ptr [eax-4]
 0054B92A    mov         edx,dword ptr [ebp-8]
 0054B92D    mov         ecx,dword ptr [eax]
 0054B92F    call        dword ptr [ecx+44]
 0054B932    xor         eax,eax
 0054B934    pop         edx
 0054B935    pop         ecx
 0054B936    pop         ecx
 0054B937    mov         dword ptr fs:[eax],edx
 0054B93A    push        54B972
 0054B93F    cmp         dword ptr [ebp-4],0
>0054B943    jne         0054B958
 0054B945    lea         eax,[ebp-58]
 0054B948    push        eax
 0054B949    mov         eax,dword ptr [ebp+8]
 0054B94C    mov         eax,dword ptr [eax-4]
 0054B94F    mov         eax,dword ptr [eax+30]
 0054B952    push        eax
 0054B953    call        user32.EndPaint
 0054B958    xor         edx,edx
 0054B95A    mov         eax,dword ptr [ebp-8]
 0054B95D    call        TCanvas.SetHandle
 0054B962    mov         eax,dword ptr [ebp-8]
 0054B965    call        TObject.Free
 0054B96A    ret
>0054B96B    jmp         @HandleFinally
>0054B970    jmp         0054B93F
 0054B972    mov         eax,dword ptr [ebp+8]
 0054B975    mov         byte ptr [eax-5],0
 0054B979    pop         edi
 0054B97A    pop         esi
 0054B97B    mov         esp,ebp
 0054B97D    pop         ebp
 0054B97E    ret
end;*}

//0054B980
{*procedure sub_0054B980(?:?);
begin
 0054B980    push        ebp
 0054B981    mov         ebp,esp
 0054B983    add         esp,0FFFFFFF8
 0054B986    push        ebx
 0054B987    mov         ebx,edx
 0054B989    mov         dword ptr [ebp-4],eax
 0054B98C    mov         byte ptr [ebp-5],1
 0054B990    mov         eax,dword ptr [ebx]
 0054B992    cmp         eax,202
>0054B997    jg          0054B9AC
>0054B999    je          0054B9DB
 0054B99B    sub         eax,0F
>0054B99E    je          0054B9F1
 0054B9A0    sub         eax,1F1
>0054B9A5    je          0054B9E6
 0054B9A7    dec         eax
>0054B9A8    je          0054B9D0
>0054B9AA    jmp         0054B9FA
 0054B9AC    sub         eax,203
>0054B9B1    je          0054B9C5
 0054B9B3    sub         eax,0A0
>0054B9B8    jne         0054B9FA
 0054B9BA    push        ebp
 0054B9BB    mov         eax,ebx
 0054B9BD    call        0054B87C
 0054B9C2    pop         ecx
>0054B9C3    jmp         0054B9FA
 0054B9C5    push        ebp
 0054B9C6    mov         eax,ebx
 0054B9C8    call        0054B548
 0054B9CD    pop         ecx
>0054B9CE    jmp         0054B9FA
 0054B9D0    push        ebp
 0054B9D1    mov         eax,ebx
 0054B9D3    call        0054B6A8
 0054B9D8    pop         ecx
>0054B9D9    jmp         0054B9FA
 0054B9DB    push        ebp
 0054B9DC    mov         eax,ebx
 0054B9DE    call        0054B6B8
 0054B9E3    pop         ecx
>0054B9E4    jmp         0054B9FA
 0054B9E6    push        ebp
 0054B9E7    mov         eax,ebx
 0054B9E9    call        0054B738
 0054B9EE    pop         ecx
>0054B9EF    jmp         0054B9FA
 0054B9F1    push        ebp
 0054B9F2    mov         eax,ebx
 0054B9F4    call        0054B8C0
 0054B9F9    pop         ecx
 0054B9FA    cmp         byte ptr [ebp-5],0
>0054B9FE    je          0054BA21
 0054BA00    mov         eax,dword ptr [ebx+8]
 0054BA03    push        eax
 0054BA04    mov         eax,dword ptr [ebx+4]
 0054BA07    push        eax
 0054BA08    mov         eax,dword ptr [ebx]
 0054BA0A    push        eax
 0054BA0B    mov         eax,dword ptr [ebp-4]
 0054BA0E    mov         eax,dword ptr [eax+30];TTabControlStyleHook.FUpDownHandle:HWND
 0054BA11    push        eax
 0054BA12    mov         eax,dword ptr [ebp-4]
 0054BA15    mov         eax,dword ptr [eax+38];TTabControlStyleHook.FUpDownDefWndProc:Pointer
 0054BA18    push        eax
 0054BA19    call        user32.CallWindowProcW
 0054BA1E    mov         dword ptr [ebx+0C],eax
 0054BA21    pop         ebx
 0054BA22    pop         ecx
 0054BA23    pop         ecx
 0054BA24    pop         ebp
 0054BA25    ret
end;*}

//0054BA28
{*procedure sub_0054BA28(?:TTabControlStyleHook; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0054BA28    push        ebp
 0054BA29    mov         ebp,esp
 0054BA2B    add         esp,0FFFFFFF8
 0054BA2E    push        ebx
 0054BA2F    mov         ebx,ecx
 0054BA31    mov         dword ptr [ebp-4],edx
 0054BA34    mov         eax,dword ptr [ebp-4]
 0054BA37    call        TCanvas.GetHandle
 0054BA3C    push        eax
 0054BA3D    call        gdi32.SaveDC
 0054BA42    mov         dword ptr [ebp-8],eax
 0054BA45    xor         eax,eax
 0054BA47    push        ebp
 0054BA48    push        54BAA5
 0054BA4D    push        dword ptr fs:[eax]
 0054BA50    mov         dword ptr fs:[eax],esp
 0054BA53    push        1
 0054BA55    mov         eax,dword ptr [ebp-4]
 0054BA58    call        TCanvas.GetHandle
 0054BA5D    push        eax
 0054BA5E    call        gdi32.SetBkMode
 0054BA63    mov         eax,dword ptr [ebp-4]
 0054BA66    mov         eax,dword ptr [eax+40]
 0054BA69    mov         edx,ebx
 0054BA6B    call        TFont.SetOrientation
 0054BA70    mov         eax,dword ptr [ebp+8]
 0054BA73    push        eax
 0054BA74    mov         ecx,dword ptr [ebp+0C]
 0054BA77    mov         edx,dword ptr [ebp+10]
 0054BA7A    mov         eax,dword ptr [ebp-4]
 0054BA7D    mov         ebx,dword ptr [eax]
 0054BA7F    call        dword ptr [ebx+90]
 0054BA85    xor         eax,eax
 0054BA87    pop         edx
 0054BA88    pop         ecx
 0054BA89    pop         ecx
 0054BA8A    mov         dword ptr fs:[eax],edx
 0054BA8D    push        54BAAC
 0054BA92    mov         eax,dword ptr [ebp-8]
 0054BA95    push        eax
 0054BA96    mov         eax,dword ptr [ebp-4]
 0054BA99    call        TCanvas.GetHandle
 0054BA9E    push        eax
 0054BA9F    call        gdi32.RestoreDC
 0054BAA4    ret
>0054BAA5    jmp         @HandleFinally
>0054BAAA    jmp         0054BA92
 0054BAAC    pop         ebx
 0054BAAD    pop         ecx
 0054BAAE    pop         ecx
 0054BAAF    pop         ebp
 0054BAB0    ret         0C
end;*}

//0054BAB4
{*procedure sub_0054BAB4(?:?; ?:?);
begin
 0054BAB4    push        ebp
 0054BAB5    mov         ebp,esp
 0054BAB7    add         esp,0FFFFFF8C
 0054BABA    push        ebx
 0054BABB    push        esi
 0054BABC    push        edi
 0054BABD    xor         ebx,ebx
 0054BABF    mov         dword ptr [ebp-74],ebx
 0054BAC2    mov         dword ptr [ebp-70],ebx
 0054BAC5    mov         dword ptr [ebp-6C],ebx
 0054BAC8    mov         dword ptr [ebp-68],ebx
 0054BACB    mov         dword ptr [ebp-64],ebx
 0054BACE    mov         dword ptr [ebp-60],ebx
 0054BAD1    mov         dword ptr [ebp-5C],ebx
 0054BAD4    mov         esi,ecx
 0054BAD6    mov         dword ptr [ebp-4],edx
 0054BAD9    mov         ebx,eax
 0054BADB    xor         eax,eax
 0054BADD    push        ebp
 0054BADE    push        54C066
 0054BAE3    push        dword ptr fs:[eax]
 0054BAE6    mov         dword ptr fs:[eax],esp
 0054BAE9    mov         eax,ebx
 0054BAEB    call        0054C3C0
 0054BAF0    test        eax,eax
>0054BAF2    je          0054BB27
 0054BAF4    mov         eax,ebx
 0054BAF6    call        0054C3C0
 0054BAFB    mov         edx,dword ptr [eax]
 0054BAFD    call        dword ptr [edx+48]
 0054BB00    cmp         esi,eax
>0054BB02    jge         0054BB27
 0054BB04    mov         eax,ebx
 0054BB06    call        0054C3C0
 0054BB0B    mov         eax,dword ptr [eax+54]
 0054BB0E    mov         dword ptr [ebp-8],eax
 0054BB11    mov         eax,ebx
 0054BB13    call        0054C3C0
 0054BB18    mov         eax,dword ptr [eax+50]
 0054BB1B    mov         dword ptr [ebp-0C],eax
 0054BB1E    mov         dword ptr [ebp-10],3
>0054BB25    jmp         0054BB36
 0054BB27    xor         eax,eax
 0054BB29    mov         dword ptr [ebp-8],eax
 0054BB2C    xor         eax,eax
 0054BB2E    mov         dword ptr [ebp-0C],eax
 0054BB31    xor         eax,eax
 0054BB33    mov         dword ptr [ebp-10],eax
 0054BB36    lea         ecx,[ebp-2C]
 0054BB39    mov         edx,esi
 0054BB3B    mov         eax,ebx
 0054BB3D    call        0054C470
 0054BB42    cmp         dword ptr [ebp-2C],0
>0054BB46    jl          0054C04B
 0054BB4C    mov         eax,ebx
 0054BB4E    call        0054C4EC
 0054BB53    sub         al,2
>0054BB55    jae         0054BB73
 0054BB57    mov         eax,ebx
 0054BB59    call        0054C514
 0054BB5E    cmp         esi,eax
>0054BB60    jne         0054BB88
 0054BB62    lea         eax,[ebp-2C]
 0054BB65    mov         ecx,2
 0054BB6A    xor         edx,edx
 0054BB6C    call        InflateRect
>0054BB71    jmp         0054BB88
 0054BB73    mov         eax,ebx
 0054BB75    call        0054C514
 0054BB7A    cmp         esi,eax
>0054BB7C    jne         0054BB84
 0054BB7E    sub         dword ptr [ebp-2C],2
>0054BB82    jmp         0054BB88
 0054BB84    sub         dword ptr [ebp-24],2
 0054BB88    mov         eax,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054BB8B    mov         edx,dword ptr [eax+74];TWinControl.FFont:TFont
 0054BB8E    mov         eax,dword ptr [ebp-4]
 0054BB91    mov         eax,dword ptr [eax+40]
 0054BB94    mov         ecx,dword ptr [eax]
 0054BB96    call        dword ptr [ecx+8]
 0054BB99    push        esi
 0054BB9A    lea         esi,[ebp-2C]
 0054BB9D    lea         edi,[ebp-3C]
 0054BBA0    movs        dword ptr [edi],dword ptr [esi]
 0054BBA1    movs        dword ptr [edi],dword ptr [esi]
 0054BBA2    movs        dword ptr [edi],dword ptr [esi]
 0054BBA3    movs        dword ptr [edi],dword ptr [esi]
 0054BBA4    pop         esi
 0054BBA5    mov         byte ptr [ebp-15],0
 0054BBA9    mov         eax,ebx
 0054BBAB    call        0054C4EC
 0054BBB0    sub         al,1
>0054BBB2    jb          0054BBC7
>0054BBB4    je          0054BC1A
 0054BBB6    dec         al
>0054BBB8    je          0054BBF2
 0054BBBA    dec         al
>0054BBBC    je          0054BC42
>0054BBC2    jmp         0054BC68
 0054BBC7    mov         eax,ebx
 0054BBC9    call        0054C514
 0054BBCE    cmp         esi,eax
>0054BBD0    jne         0054BBDB
 0054BBD2    mov         byte ptr [ebp-15],4
>0054BBD6    jmp         0054BC68
 0054BBDB    cmp         esi,dword ptr [ebx+28];TTabControlStyleHook.FHotTabIndex:Integer
>0054BBDE    jne         0054BBEC
 0054BBE0    cmp         byte ptr [ebx+24],0;TTabControlStyleHook.FMouseInControl:Boolean
>0054BBE4    je          0054BBEC
 0054BBE6    mov         byte ptr [ebp-15],3
>0054BBEA    jmp         0054BC68
 0054BBEC    mov         byte ptr [ebp-15],2
>0054BBF0    jmp         0054BC68
 0054BBF2    mov         eax,ebx
 0054BBF4    call        0054C514
 0054BBF9    cmp         esi,eax
>0054BBFB    jne         0054BC03
 0054BBFD    mov         byte ptr [ebp-15],9
>0054BC01    jmp         0054BC68
 0054BC03    cmp         esi,dword ptr [ebx+28];TTabControlStyleHook.FHotTabIndex:Integer
>0054BC06    jne         0054BC14
 0054BC08    cmp         byte ptr [ebx+24],0;TTabControlStyleHook.FMouseInControl:Boolean
>0054BC0C    je          0054BC14
 0054BC0E    mov         byte ptr [ebp-15],8
>0054BC12    jmp         0054BC68
 0054BC14    mov         byte ptr [ebp-15],7
>0054BC18    jmp         0054BC68
 0054BC1A    mov         eax,ebx
 0054BC1C    call        0054C514
 0054BC21    cmp         esi,eax
>0054BC23    jne         0054BC2B
 0054BC25    mov         byte ptr [ebp-15],13
>0054BC29    jmp         0054BC68
 0054BC2B    cmp         esi,dword ptr [ebx+28];TTabControlStyleHook.FHotTabIndex:Integer
>0054BC2E    jne         0054BC3C
 0054BC30    cmp         byte ptr [ebx+24],0;TTabControlStyleHook.FMouseInControl:Boolean
>0054BC34    je          0054BC3C
 0054BC36    mov         byte ptr [ebp-15],12
>0054BC3A    jmp         0054BC68
 0054BC3C    mov         byte ptr [ebp-15],11
>0054BC40    jmp         0054BC68
 0054BC42    mov         eax,ebx
 0054BC44    call        0054C514
 0054BC49    cmp         esi,eax
>0054BC4B    jne         0054BC53
 0054BC4D    mov         byte ptr [ebp-15],0E
>0054BC51    jmp         0054BC68
 0054BC53    cmp         esi,dword ptr [ebx+28];TTabControlStyleHook.FHotTabIndex:Integer
>0054BC56    jne         0054BC64
 0054BC58    cmp         byte ptr [ebx+24],0;TTabControlStyleHook.FMouseInControl:Boolean
>0054BC5C    je          0054BC64
 0054BC5E    mov         byte ptr [ebp-15],0D
>0054BC62    jmp         0054BC68
 0054BC64    mov         byte ptr [ebp-15],0C
 0054BC68    call        StyleServices
 0054BC6D    mov         edx,dword ptr [eax]
 0054BC6F    call        dword ptr [edx+48];@AbstractError
 0054BC72    test        al,al
>0054BC74    je          0054BCA7
 0054BC76    call        StyleServices
 0054BC7B    movzx       edx,byte ptr [ebp-15]
 0054BC7F    lea         ecx,[ebp-58]
 0054BC82    mov         edi,dword ptr [eax]
 0054BC84    call        dword ptr [edi+0D8];TCustomStyleServices.GetElementDetails
 0054BC8A    lea         eax,[ebp-2C]
 0054BC8D    push        eax
 0054BC8E    push        0
 0054BC90    mov         eax,dword ptr [ebp-4]
 0054BC93    call        TCanvas.GetHandle
 0054BC98    push        eax
 0054BC99    call        StyleServices
 0054BC9E    lea         ecx,[ebp-58]
 0054BCA1    pop         edx
 0054BCA2    call        TCustomStyleServices.DrawElement
 0054BCA7    mov         edi,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054BCAA    mov         eax,edi
 0054BCAC    mov         edx,dword ptr ds:[51E408];TCustomTabControl
 0054BCB2    call        @IsClass
 0054BCB7    test        al,al
>0054BCB9    je          0054BCCB
 0054BCBB    mov         edx,esi
 0054BCBD    mov         eax,edi
 0054BCBF    mov         ecx,dword ptr [eax]
 0054BCC1    call        dword ptr [ecx+110]
 0054BCC7    mov         edi,eax
>0054BCC9    jmp         0054BCCD
 0054BCCB    mov         edi,esi
 0054BCCD    mov         eax,ebx
 0054BCCF    call        0054C3C0
 0054BCD4    test        eax,eax
>0054BCD6    je          0054BE46
 0054BCDC    test        edi,edi
>0054BCDE    jl          0054BE46
 0054BCE4    mov         eax,ebx
 0054BCE6    call        0054C3C0
 0054BCEB    mov         edx,dword ptr [eax]
 0054BCED    call        dword ptr [edx+48]
 0054BCF0    cmp         edi,eax
>0054BCF2    jge         0054BE46
 0054BCF8    push        esi
 0054BCF9    push        edi
 0054BCFA    lea         esi,[ebp-3C]
 0054BCFD    lea         edi,[ebp-4C]
 0054BD00    movs        dword ptr [edi],dword ptr [esi]
 0054BD01    movs        dword ptr [edi],dword ptr [esi]
 0054BD02    movs        dword ptr [edi],dword ptr [esi]
 0054BD03    movs        dword ptr [edi],dword ptr [esi]
 0054BD04    pop         edi
 0054BD05    pop         esi
 0054BD06    mov         eax,ebx
 0054BD08    call        0054C4EC
 0054BD0D    sub         al,2
>0054BD0F    jb          0054BD24
>0054BD11    je          0054BDA9
 0054BD17    dec         al
>0054BD19    je          0054BDDD
>0054BD1F    jmp         0054BE0F
 0054BD24    mov         eax,dword ptr [ebp-10]
 0054BD27    add         dword ptr [ebp-4C],eax
 0054BD2A    mov         eax,dword ptr [ebp-4C]
 0054BD2D    add         eax,dword ptr [ebp-8]
 0054BD30    mov         dword ptr [ebp-44],eax
 0054BD33    mov         dword ptr [ebp-3C],eax
 0054BD36    mov         edx,dword ptr [ebp-40]
 0054BD39    mov         eax,dword ptr [ebp-48]
 0054BD3C    sub         edx,eax
 0054BD3E    sar         edx,1
>0054BD40    jns         0054BD45
 0054BD42    adc         edx,0
 0054BD45    add         edx,eax
 0054BD47    mov         eax,dword ptr [ebp-0C]
 0054BD4A    sar         eax,1
>0054BD4C    jns         0054BD51
 0054BD4E    adc         eax,0
 0054BD51    sub         edx,eax
 0054BD53    mov         dword ptr [ebp-48],edx
 0054BD56    mov         eax,ebx
 0054BD58    call        0054C4EC
 0054BD5D    test        al,al
>0054BD5F    jne         0054BD7E
 0054BD61    mov         eax,ebx
 0054BD63    call        0054C514
 0054BD68    cmp         esi,eax
>0054BD6A    jne         0054BD7E
 0054BD6C    lea         eax,[ebp-4C]
 0054BD6F    or          ecx,0FFFFFFFF
 0054BD72    xor         edx,edx
 0054BD74    call        OffsetRect
>0054BD79    jmp         0054BE0F
 0054BD7E    mov         eax,ebx
 0054BD80    call        0054C4EC
 0054BD85    cmp         al,1
>0054BD87    jne         0054BE0F
 0054BD8D    mov         eax,ebx
 0054BD8F    call        0054C514
 0054BD94    cmp         esi,eax
>0054BD96    jne         0054BE0F
 0054BD98    lea         eax,[ebp-4C]
 0054BD9B    mov         ecx,1
 0054BDA0    xor         edx,edx
 0054BDA2    call        OffsetRect
>0054BDA7    jmp         0054BE0F
 0054BDA9    mov         eax,dword ptr [ebp-10]
 0054BDAC    sub         dword ptr [ebp-40],eax
 0054BDAF    mov         eax,dword ptr [ebp-40]
 0054BDB2    sub         eax,dword ptr [ebp-0C]
 0054BDB5    mov         dword ptr [ebp-48],eax
 0054BDB8    mov         dword ptr [ebp-30],eax
 0054BDBB    mov         edx,dword ptr [ebp-44]
 0054BDBE    mov         eax,dword ptr [ebp-4C]
 0054BDC1    sub         edx,eax
 0054BDC3    sar         edx,1
>0054BDC5    jns         0054BDCA
 0054BDC7    adc         edx,0
 0054BDCA    add         edx,eax
 0054BDCC    mov         eax,dword ptr [ebp-8]
 0054BDCF    sar         eax,1
>0054BDD1    jns         0054BDD6
 0054BDD3    adc         eax,0
 0054BDD6    sub         edx,eax
 0054BDD8    mov         dword ptr [ebp-4C],edx
>0054BDDB    jmp         0054BE0F
 0054BDDD    mov         eax,dword ptr [ebp-10]
 0054BDE0    add         dword ptr [ebp-48],eax
 0054BDE3    mov         eax,dword ptr [ebp-48]
 0054BDE6    add         eax,dword ptr [ebp-0C]
 0054BDE9    mov         dword ptr [ebp-40],eax
 0054BDEC    mov         dword ptr [ebp-38],eax
 0054BDEF    mov         edx,dword ptr [ebp-44]
 0054BDF2    mov         eax,dword ptr [ebp-4C]
 0054BDF5    sub         edx,eax
 0054BDF7    sar         edx,1
>0054BDF9    jns         0054BDFE
 0054BDFB    adc         edx,0
 0054BDFE    add         edx,eax
 0054BE00    mov         eax,dword ptr [ebp-8]
 0054BE03    sar         eax,1
>0054BE05    jns         0054BE0A
 0054BE07    adc         eax,0
 0054BE0A    sub         edx,eax
 0054BE0C    mov         dword ptr [ebp-4C],edx
 0054BE0F    call        StyleServices
 0054BE14    mov         edx,dword ptr [eax]
 0054BE16    call        dword ptr [edx+48];@AbstractError
 0054BE19    test        al,al
>0054BE1B    je          0054BE46
 0054BE1D    lea         eax,[ebp-4C]
 0054BE20    push        eax
 0054BE21    mov         eax,ebx
 0054BE23    call        0054C3C0
 0054BE28    call        TCustomImageList.GetHandle
 0054BE2D    push        eax
 0054BE2E    push        edi
 0054BE2F    mov         eax,dword ptr [ebp-4]
 0054BE32    call        TCanvas.GetHandle
 0054BE37    push        eax
 0054BE38    call        StyleServices
 0054BE3D    lea         ecx,[ebp-58]
 0054BE40    pop         edx
 0054BE41    call        TCustomStyleServices.DrawIcon
 0054BE46    call        StyleServices
 0054BE4B    mov         edx,dword ptr [eax]
 0054BE4D    call        dword ptr [edx+48];@AbstractError
 0054BE50    test        al,al
>0054BE52    je          0054C04B
 0054BE58    mov         eax,ebx
 0054BE5A    call        0054C4EC
 0054BE5F    test        al,al
>0054BE61    jne         0054BE7D
 0054BE63    mov         eax,ebx
 0054BE65    call        0054C514
 0054BE6A    cmp         esi,eax
>0054BE6C    jne         0054BE7D
 0054BE6E    lea         eax,[ebp-3C]
 0054BE71    or          ecx,0FFFFFFFF
 0054BE74    xor         edx,edx
 0054BE76    call        OffsetRect
>0054BE7B    jmp         0054BEA2
 0054BE7D    mov         eax,ebx
 0054BE7F    call        0054C4EC
 0054BE84    cmp         al,1
>0054BE86    jne         0054BEA2
 0054BE88    mov         eax,ebx
 0054BE8A    call        0054C514
 0054BE8F    cmp         esi,eax
>0054BE91    jne         0054BEA2
 0054BE93    lea         eax,[ebp-3C]
 0054BE96    mov         ecx,1
 0054BE9B    xor         edx,edx
 0054BE9D    call        OffsetRect
 0054BEA2    mov         eax,ebx
 0054BEA4    call        0054C4EC
 0054BEA9    cmp         al,2
>0054BEAB    jne         0054BF65
 0054BEB1    lea         ecx,[ebp-5C]
 0054BEB4    mov         edx,esi
 0054BEB6    mov         eax,ebx
 0054BEB8    call        0054C404
 0054BEBD    mov         edx,dword ptr [ebp-5C]
 0054BEC0    mov         eax,dword ptr [ebp-4]
 0054BEC3    call        TCustomCanvas.TextHeight
 0054BEC8    sar         eax,1
>0054BECA    jns         0054BECF
 0054BECC    adc         eax,0
 0054BECF    mov         edx,dword ptr [ebp-34]
 0054BED2    mov         edi,dword ptr [ebp-3C]
 0054BED5    sub         edx,edi
 0054BED7    sar         edx,1
>0054BED9    jns         0054BEDE
 0054BEDB    adc         edx,0
 0054BEDE    add         edx,edi
 0054BEE0    sub         edx,eax
 0054BEE2    mov         edi,edx
 0054BEE4    lea         ecx,[ebp-60]
 0054BEE7    mov         edx,esi
 0054BEE9    mov         eax,ebx
 0054BEEB    call        0054C404
 0054BEF0    mov         edx,dword ptr [ebp-60]
 0054BEF3    mov         eax,dword ptr [ebp-4]
 0054BEF6    call        TCustomCanvas.TextWidth
 0054BEFB    sar         eax,1
>0054BEFD    jns         0054BF02
 0054BEFF    adc         eax,0
 0054BF02    mov         edx,dword ptr [ebp-30]
 0054BF05    sub         edx,dword ptr [ebp-38]
 0054BF08    sar         edx,1
>0054BF0A    jns         0054BF0F
 0054BF0C    adc         edx,0
 0054BF0F    add         edx,dword ptr [ebp-38]
 0054BF12    add         eax,edx
 0054BF14    mov         dword ptr [ebp-14],eax
 0054BF17    lea         eax,[ebp-1C]
 0054BF1A    push        eax
 0054BF1B    call        StyleServices
 0054BF20    mov         cl,2
 0054BF22    lea         edx,[ebp-58]
 0054BF25    call        TCustomStyleServices.GetElementColor
 0054BF2A    test        al,al
>0054BF2C    je          0054BF3C
 0054BF2E    mov         eax,dword ptr [ebp-4]
 0054BF31    mov         eax,dword ptr [eax+40]
 0054BF34    mov         edx,dword ptr [ebp-1C]
 0054BF37    call        TFont.SetColor
 0054BF3C    push        edi
 0054BF3D    mov         eax,dword ptr [ebp-14]
 0054BF40    push        eax
 0054BF41    lea         ecx,[ebp-64]
 0054BF44    mov         edx,esi
 0054BF46    mov         eax,ebx
 0054BF48    call        0054C404
 0054BF4D    mov         eax,dword ptr [ebp-64]
 0054BF50    push        eax
 0054BF51    mov         ecx,384
 0054BF56    mov         edx,dword ptr [ebp-4]
 0054BF59    mov         eax,ebx
 0054BF5B    call        0054BA28
>0054BF60    jmp         0054C04B
 0054BF65    mov         eax,ebx
 0054BF67    call        0054C4EC
 0054BF6C    cmp         al,3
>0054BF6E    jne         0054C025
 0054BF74    lea         ecx,[ebp-68]
 0054BF77    mov         edx,esi
 0054BF79    mov         eax,ebx
 0054BF7B    call        0054C404
 0054BF80    mov         edx,dword ptr [ebp-68]
 0054BF83    mov         eax,dword ptr [ebp-4]
 0054BF86    call        TCustomCanvas.TextHeight
 0054BF8B    sar         eax,1
>0054BF8D    jns         0054BF92
 0054BF8F    adc         eax,0
 0054BF92    mov         edx,dword ptr [ebp-34]
 0054BF95    mov         edi,dword ptr [ebp-3C]
 0054BF98    sub         edx,edi
 0054BF9A    sar         edx,1
>0054BF9C    jns         0054BFA1
 0054BF9E    adc         edx,0
 0054BFA1    add         edx,edi
 0054BFA3    add         eax,edx
 0054BFA5    mov         edi,eax
 0054BFA7    lea         ecx,[ebp-6C]
 0054BFAA    mov         edx,esi
 0054BFAC    mov         eax,ebx
 0054BFAE    call        0054C404
 0054BFB3    mov         edx,dword ptr [ebp-6C]
 0054BFB6    mov         eax,dword ptr [ebp-4]
 0054BFB9    call        TCustomCanvas.TextWidth
 0054BFBE    sar         eax,1
>0054BFC0    jns         0054BFC5
 0054BFC2    adc         eax,0
 0054BFC5    mov         edx,dword ptr [ebp-30]
 0054BFC8    sub         edx,dword ptr [ebp-38]
 0054BFCB    sar         edx,1
>0054BFCD    jns         0054BFD2
 0054BFCF    adc         edx,0
 0054BFD2    add         edx,dword ptr [ebp-38]
 0054BFD5    sub         edx,eax
 0054BFD7    mov         dword ptr [ebp-14],edx
 0054BFDA    lea         eax,[ebp-1C]
 0054BFDD    push        eax
 0054BFDE    call        StyleServices
 0054BFE3    mov         cl,2
 0054BFE5    lea         edx,[ebp-58]
 0054BFE8    call        TCustomStyleServices.GetElementColor
 0054BFED    test        al,al
>0054BFEF    je          0054BFFF
 0054BFF1    mov         eax,dword ptr [ebp-4]
 0054BFF4    mov         eax,dword ptr [eax+40]
 0054BFF7    mov         edx,dword ptr [ebp-1C]
 0054BFFA    call        TFont.SetColor
 0054BFFF    push        edi
 0054C000    mov         eax,dword ptr [ebp-14]
 0054C003    push        eax
 0054C004    lea         ecx,[ebp-70]
 0054C007    mov         edx,esi
 0054C009    mov         eax,ebx
 0054C00B    call        0054C404
 0054C010    mov         eax,dword ptr [ebp-70]
 0054C013    push        eax
 0054C014    mov         ecx,0FFFFFC7C
 0054C019    mov         edx,dword ptr [ebp-4]
 0054C01C    mov         eax,ebx
 0054C01E    call        0054BA28
>0054C023    jmp         0054C04B
 0054C025    lea         ecx,[ebp-74]
 0054C028    mov         edx,esi
 0054C02A    mov         eax,ebx
 0054C02C    call        0054C404
 0054C031    mov         eax,dword ptr [ebp-74]
 0054C034    push        eax
 0054C035    lea         eax,[ebp-3C]
 0054C038    push        eax
 0054C039    push        125
 0054C03E    lea         ecx,[ebp-58]
 0054C041    mov         edx,dword ptr [ebp-4]
 0054C044    mov         eax,ebx
 0054C046    call        TStyleHook.DrawControlText
 0054C04B    xor         eax,eax
 0054C04D    pop         edx
 0054C04E    pop         ecx
 0054C04F    pop         ecx
 0054C050    mov         dword ptr fs:[eax],edx
 0054C053    push        54C06D
 0054C058    lea         eax,[ebp-74]
 0054C05B    mov         edx,7
 0054C060    call        @UStrArrayClr
 0054C065    ret
>0054C066    jmp         @HandleFinally
>0054C06B    jmp         0054C058
 0054C06D    pop         edi
 0054C06E    pop         esi
 0054C06F    pop         ebx
 0054C070    mov         esp,ebp
 0054C072    pop         ebp
 0054C073    ret
end;*}

//0054C074
procedure TTabControlStyleHook.WMEraseBkgnd(Message:Messages.TMessage);
begin
{*
 0054C074    push        ebx
 0054C075    push        esi
 0054C076    push        edi
 0054C077    add         esp,0FFFFFFE4
 0054C07A    mov         esi,edx
 0054C07C    mov         ebx,eax
 0054C07E    cmp         dword ptr [esi+8],1
>0054C082    jne         0054C0C7
 0054C084    call        StyleServices
 0054C089    mov         edx,dword ptr [eax]
 0054C08B    call        dword ptr [edx+48];@AbstractError
 0054C08E    test        al,al
>0054C090    je          0054C0C7
 0054C092    call        StyleServices
 0054C097    mov         ecx,esp
 0054C099    mov         dl,2A
 0054C09B    mov         edi,dword ptr [eax]
 0054C09D    call        dword ptr [edi+0D8];TCustomStyleServices.GetElementDetails
 0054C0A3    lea         edx,[esp+0C]
 0054C0A7    mov         eax,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054C0AA    mov         ecx,dword ptr [eax]
 0054C0AC    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054C0AF    lea         eax,[esp+0C]
 0054C0B3    push        eax
 0054C0B4    push        0
 0054C0B6    call        StyleServices
 0054C0BB    mov         edx,dword ptr [esi+4]
 0054C0BE    lea         ecx,[esp+8]
 0054C0C2    call        TCustomStyleServices.DrawElement
 0054C0C7    mov         dword ptr [esi+0C],1
 0054C0CE    mov         byte ptr [ebx+14],1;TTabControlStyleHook.FHandled:Boolean
 0054C0D2    add         esp,1C
 0054C0D5    pop         edi
 0054C0D6    pop         esi
 0054C0D7    pop         ebx
 0054C0D8    ret
*}
end;

//0054C0DC
{*procedure sub_0054C0DC(?:?);
begin
 0054C0DC    push        ebx
 0054C0DD    push        esi
 0054C0DE    push        edi
 0054C0DF    add         esp,0FFFFFFF4
 0054C0E2    mov         esi,edx
 0054C0E4    mov         ebx,eax
 0054C0E6    call        StyleServices
 0054C0EB    mov         edx,dword ptr [eax]
 0054C0ED    call        dword ptr [edx+48];@AbstractError
 0054C0F0    test        al,al
>0054C0F2    je          0054C126
 0054C0F4    call        StyleServices
 0054C0F9    mov         ecx,esp
 0054C0FB    mov         dl,2A
 0054C0FD    mov         edi,dword ptr [eax]
 0054C0FF    call        dword ptr [edi+0D8];TCustomStyleServices.GetElementDetails
 0054C105    push        esp
 0054C106    push        0
 0054C108    push        0
 0054C10A    mov         eax,esi
 0054C10C    call        TCanvas.GetHandle
 0054C111    push        eax
 0054C112    mov         eax,ebx
 0054C114    call        TStyleHook.GetHandle
 0054C119    push        eax
 0054C11A    call        StyleServices
 0054C11F    pop         edx
 0054C120    pop         ecx
 0054C121    call        TCustomStyleServices.DrawParentBackground
 0054C126    add         esp,0C
 0054C129    pop         edi
 0054C12A    pop         esi
 0054C12B    pop         ebx
 0054C12C    ret
end;*}

//0054C130
{*function sub_0054C130(?:TTabControlStyleHook):?;
begin
 0054C130    push        ebx
 0054C131    push        esi
 0054C132    push        edi
 0054C133    mov         esi,eax
 0054C135    xor         ebx,ebx
 0054C137    mov         edi,dword ptr [esi+8]
 0054C13A    mov         eax,edi
 0054C13C    mov         edx,dword ptr ds:[51E408];TCustomTabControl
 0054C142    call        @IsClass
 0054C147    test        al,al
>0054C149    je          0054C152
 0054C14B    movzx       ebx,byte ptr [edi+2AC]
 0054C152    mov         eax,ebx
 0054C154    pop         edi
 0054C155    pop         esi
 0054C156    pop         ebx
 0054C157    ret
end;*}

//0054C158
{*procedure sub_0054C158(?:?);
begin
 0054C158    push        ebp
 0054C159    mov         ebp,esp
 0054C15B    add         esp,0FFFFFFD8
 0054C15E    push        ebx
 0054C15F    push        esi
 0054C160    push        edi
 0054C161    mov         dword ptr [ebp-8],edx
 0054C164    mov         dword ptr [ebp-4],eax
 0054C167    mov         eax,dword ptr [ebp-8]
 0054C16A    call        TCanvas.GetHandle
 0054C16F    push        eax
 0054C170    call        gdi32.SaveDC
 0054C175    mov         dword ptr [ebp-0C],eax
 0054C178    xor         eax,eax
 0054C17A    push        ebp
 0054C17B    push        54C1DA
 0054C180    push        dword ptr fs:[eax]
 0054C183    mov         dword ptr fs:[eax],esp
 0054C186    lea         edx,[ebp-1C]
 0054C189    mov         eax,dword ptr [ebp-4]
 0054C18C    call        0054C550
 0054C191    mov         eax,dword ptr [ebp-10]
 0054C194    push        eax
 0054C195    mov         eax,dword ptr [ebp-14]
 0054C198    push        eax
 0054C199    mov         eax,dword ptr [ebp-18]
 0054C19C    push        eax
 0054C19D    mov         eax,dword ptr [ebp-1C]
 0054C1A0    push        eax
 0054C1A1    mov         eax,dword ptr [ebp-8]
 0054C1A4    call        TCanvas.GetHandle
 0054C1A9    push        eax
 0054C1AA    call        gdi32.ExcludeClipRect
 0054C1AF    mov         edx,dword ptr [ebp-8]
 0054C1B2    mov         eax,dword ptr [ebp-4]
 0054C1B5    mov         ecx,dword ptr [eax]
 0054C1B7    call        dword ptr [ecx+14];TTabControlStyleHook.sub_0054C0DC
 0054C1BA    xor         eax,eax
 0054C1BC    pop         edx
 0054C1BD    pop         ecx
 0054C1BE    pop         ecx
 0054C1BF    mov         dword ptr fs:[eax],edx
 0054C1C2    push        54C1E1
 0054C1C7    mov         eax,dword ptr [ebp-0C]
 0054C1CA    push        eax
 0054C1CB    mov         eax,dword ptr [ebp-8]
 0054C1CE    call        TCanvas.GetHandle
 0054C1D3    push        eax
 0054C1D4    call        gdi32.RestoreDC
 0054C1D9    ret
>0054C1DA    jmp         @HandleFinally
>0054C1DF    jmp         0054C1C7
 0054C1E1    mov         eax,dword ptr [ebp-4]
 0054C1E4    call        0054C3E8
 0054C1E9    mov         esi,eax
 0054C1EB    dec         esi
 0054C1EC    test        esi,esi
>0054C1EE    jl          0054C210
 0054C1F0    inc         esi
 0054C1F1    xor         ebx,ebx
 0054C1F3    mov         eax,dword ptr [ebp-4]
 0054C1F6    call        0054C514
 0054C1FB    cmp         ebx,eax
>0054C1FD    je          0054C20C
 0054C1FF    mov         ecx,ebx
 0054C201    mov         edx,dword ptr [ebp-8]
 0054C204    mov         eax,dword ptr [ebp-4]
 0054C207    mov         edi,dword ptr [eax]
 0054C209    call        dword ptr [edi+40];TTabControlStyleHook.sub_0054BAB4
 0054C20C    inc         ebx
 0054C20D    dec         esi
>0054C20E    jne         0054C1F3
 0054C210    mov         eax,dword ptr [ebp-4]
 0054C213    call        0054C130
 0054C218    test        al,al
>0054C21A    jne         0054C28C
 0054C21C    mov         eax,dword ptr [ebp-4]
 0054C21F    call        0054C4EC
 0054C224    sub         al,1
>0054C226    jb          0054C234
>0054C228    je          0054C26C
 0054C22A    dec         al
>0054C22C    je          0054C250
 0054C22E    dec         al
>0054C230    je          0054C27C
>0054C232    jmp         0054C29E
 0054C234    mov         eax,dword ptr [ebp-4]
 0054C237    mov         eax,dword ptr [eax+8];TTabControlStyleHook.FControl:TWinControl
 0054C23A    mov         ecx,dword ptr [eax+5C];TWinControl.FHeight:Integer
 0054C23D    sub         ecx,dword ptr [ebp-10]
 0054C240    mov         edx,dword ptr [eax+58];TWinControl.FWidth:Integer
 0054C243    sub         edx,dword ptr [ebp-14]
 0054C246    lea         eax,[ebp-1C]
 0054C249    call        InflateRect
>0054C24E    jmp         0054C29E
 0054C250    mov         eax,dword ptr [ebp-4]
 0054C253    mov         eax,dword ptr [eax+8];TTabControlStyleHook.FControl:TWinControl
 0054C256    mov         ecx,dword ptr [eax+5C];TWinControl.FHeight:Integer
 0054C259    sub         ecx,dword ptr [ebp-10]
 0054C25C    mov         edx,dword ptr [eax+58];TWinControl.FWidth:Integer
 0054C25F    sub         edx,dword ptr [ebp-14]
 0054C262    lea         eax,[ebp-1C]
 0054C265    call        InflateRect
>0054C26A    jmp         0054C29E
 0054C26C    lea         eax,[ebp-1C]
 0054C26F    mov         ecx,dword ptr [ebp-18]
 0054C272    mov         edx,dword ptr [ebp-1C]
 0054C275    call        InflateRect
>0054C27A    jmp         0054C29E
 0054C27C    lea         eax,[ebp-1C]
 0054C27F    mov         ecx,dword ptr [ebp-18]
 0054C282    mov         edx,dword ptr [ebp-1C]
 0054C285    call        InflateRect
>0054C28A    jmp         0054C29E
 0054C28C    lea         eax,[ebp-1C]
 0054C28F    mov         ecx,4
 0054C294    mov         edx,4
 0054C299    call        InflateRect
 0054C29E    call        StyleServices
 0054C2A3    mov         edx,dword ptr [eax]
 0054C2A5    call        dword ptr [edx+48];@AbstractError
 0054C2A8    test        al,al
>0054C2AA    je          0054C2DB
 0054C2AC    call        StyleServices
 0054C2B1    lea         ecx,[ebp-28]
 0054C2B4    mov         dl,2A
 0054C2B6    mov         ebx,dword ptr [eax]
 0054C2B8    call        dword ptr [ebx+0D8];TCustomStyleServices.GetElementDetails
 0054C2BE    lea         eax,[ebp-1C]
 0054C2C1    push        eax
 0054C2C2    push        0
 0054C2C4    mov         eax,dword ptr [ebp-8]
 0054C2C7    call        TCanvas.GetHandle
 0054C2CC    push        eax
 0054C2CD    call        StyleServices
 0054C2D2    lea         ecx,[ebp-28]
 0054C2D5    pop         edx
 0054C2D6    call        TCustomStyleServices.DrawElement
 0054C2DB    mov         eax,dword ptr [ebp-4]
 0054C2DE    call        0054C514
 0054C2E3    test        eax,eax
>0054C2E5    jl          0054C2FC
 0054C2E7    mov         eax,dword ptr [ebp-4]
 0054C2EA    call        0054C514
 0054C2EF    mov         ecx,eax
 0054C2F1    mov         edx,dword ptr [ebp-8]
 0054C2F4    mov         eax,dword ptr [ebp-4]
 0054C2F7    mov         ebx,dword ptr [eax]
 0054C2F9    call        dword ptr [ebx+40];TTabControlStyleHook.sub_0054BAB4
 0054C2FC    pop         edi
 0054C2FD    pop         esi
 0054C2FE    pop         ebx
 0054C2FF    mov         esp,ebp
 0054C301    pop         ebp
 0054C302    ret
end;*}

//0054C304
{*procedure sub_0054C304(?:TTabControlStyleHook; ?:Integer; ?:?);
begin
 0054C304    push        ebx
 0054C305    push        esi
 0054C306    push        edi
 0054C307    add         esp,0FFFFFFF0
 0054C30A    mov         edi,ecx
 0054C30C    mov         esi,edx
 0054C30E    mov         ebx,eax
 0054C310    test        esi,esi
>0054C312    jl          0054C33E
 0054C314    mov         eax,ebx
 0054C316    call        0054C3E8
 0054C31B    cmp         esi,eax
>0054C31D    jge         0054C33E
 0054C31F    mov         ecx,esp
 0054C321    mov         edx,esi
 0054C323    mov         eax,ebx
 0054C325    call        0054C470
 0054C32A    push        0FF
 0054C32C    lea         eax,[esp+4]
 0054C330    push        eax
 0054C331    mov         eax,ebx
 0054C333    call        TStyleHook.GetHandle
 0054C338    push        eax
 0054C339    call        user32.InvalidateRect
 0054C33E    test        edi,edi
>0054C340    jl          0054C36C
 0054C342    mov         eax,ebx
 0054C344    call        0054C3E8
 0054C349    cmp         edi,eax
>0054C34B    jge         0054C36C
 0054C34D    mov         ecx,esp
 0054C34F    mov         edx,edi
 0054C351    mov         eax,ebx
 0054C353    call        0054C470
 0054C358    push        0FF
 0054C35A    lea         eax,[esp+4]
 0054C35E    push        eax
 0054C35F    mov         eax,ebx
 0054C361    call        TStyleHook.GetHandle
 0054C366    push        eax
 0054C367    call        user32.InvalidateRect
 0054C36C    add         esp,10
 0054C36F    pop         edi
 0054C370    pop         esi
 0054C371    pop         ebx
 0054C372    ret
end;*}

//0054C374
procedure TTabControlStyleHook.CMMouseLeave;
begin
{*
 0054C374    call        TTabControlStyleHook.WMMouseMove
 0054C379    ret
*}
end;

//0054C37C
{*procedure TTabControlStyleHook.WMMouseMove(?:?);
begin
 0054C37C    push        ebx
 0054C37D    push        esi
 0054C37E    mov         esi,edx
 0054C380    mov         ebx,eax
 0054C382    mov         edx,esi
 0054C384    mov         eax,ebx
 0054C386    call        TMouseTrackControlStyleHook.WMMouseMove
 0054C38B    mov         edx,esi
 0054C38D    mov         eax,ebx
 0054C38F    call        TStyleHook.CallDefaultProc
 0054C394    mov         byte ptr [ebx+2C],0;TTabControlStyleHook.FMousePosition:TMousePosition
 0054C398    movsx       ecx,word ptr [esi+0A]
 0054C39C    movsx       edx,word ptr [esi+8]
 0054C3A0    mov         eax,ebx
 0054C3A2    call        0054C5B0
 0054C3A7    mov         edx,dword ptr [ebx+28];TTabControlStyleHook.FHotTabIndex:Integer
 0054C3AA    cmp         eax,edx
>0054C3AC    je          0054C3BA
 0054C3AE    mov         dword ptr [ebx+28],eax;TTabControlStyleHook.FHotTabIndex:Integer
 0054C3B1    mov         ecx,eax
 0054C3B3    mov         eax,ebx
 0054C3B5    call        0054C304
 0054C3BA    pop         esi
 0054C3BB    pop         ebx
 0054C3BC    ret
end;*}

//0054C3C0
{*function sub_0054C3C0(?:TTabControlStyleHook):?;
begin
 0054C3C0    push        ebx
 0054C3C1    push        esi
 0054C3C2    push        edi
 0054C3C3    mov         ebx,eax
 0054C3C5    xor         esi,esi
 0054C3C7    mov         edi,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054C3CA    mov         eax,edi
 0054C3CC    mov         edx,dword ptr ds:[51E408];TCustomTabControl
 0054C3D2    call        @IsClass
 0054C3D7    test        al,al
>0054C3D9    je          0054C3E1
 0054C3DB    mov         esi,dword ptr [edi+29C]
 0054C3E1    mov         eax,esi
 0054C3E3    pop         edi
 0054C3E4    pop         esi
 0054C3E5    pop         ebx
 0054C3E6    ret
end;*}

//0054C3E8
{*function sub_0054C3E8(?:TTabControlStyleHook):?;
begin
 0054C3E8    push        ebx
 0054C3E9    mov         ebx,eax
 0054C3EB    push        0
 0054C3ED    push        0
 0054C3EF    push        1304
 0054C3F4    mov         eax,ebx
 0054C3F6    call        TStyleHook.GetHandle
 0054C3FB    push        eax
 0054C3FC    call        user32.SendMessageW
 0054C401    pop         ebx
 0054C402    ret
end;*}

//0054C404
{*procedure sub_0054C404(?:TTabControlStyleHook; ?:?; ?:?);
begin
 0054C404    push        ebx
 0054C405    push        esi
 0054C406    push        edi
 0054C407    add         esp,0FFFFFDE4
 0054C40D    mov         esi,ecx
 0054C40F    mov         edi,edx
 0054C411    mov         ebx,eax
 0054C413    mov         eax,esp
 0054C415    xor         ecx,ecx
 0054C417    mov         edx,1C
 0054C41C    call        @FillChar
 0054C421    mov         dword ptr [esp],1
 0054C428    lea         eax,[esp+1C]
 0054C42C    mov         dword ptr [esp+0C],eax
 0054C430    mov         dword ptr [esp+10],1FE
 0054C438    mov         eax,esp
 0054C43A    push        eax
 0054C43B    push        edi
 0054C43C    push        133C
 0054C441    mov         eax,ebx
 0054C443    call        TStyleHook.GetHandle
 0054C448    push        eax
 0054C449    call        user32.SendMessageW
 0054C44E    test        eax,eax
>0054C450    je          0054C45F
 0054C452    mov         eax,esi
 0054C454    mov         edx,dword ptr [esp+0C]
 0054C458    call        @UStrFromPWChar
>0054C45D    jmp         0054C466
 0054C45F    mov         eax,esi
 0054C461    call        @UStrClr
 0054C466    add         esp,21C
 0054C46C    pop         edi
 0054C46D    pop         esi
 0054C46E    pop         ebx
 0054C46F    ret
end;*}

//0054C470
{*procedure sub_0054C470(?:TTabControlStyleHook; ?:?; ?:?);
begin
 0054C470    push        ebx
 0054C471    push        esi
 0054C472    push        edi
 0054C473    add         esp,0FFFFFFEC
 0054C476    mov         dword ptr [esp],ecx
 0054C479    mov         edi,edx
 0054C47B    mov         ebx,eax
 0054C47D    push        0
 0054C47F    push        0
 0054C481    xor         ecx,ecx
 0054C483    xor         edx,edx
 0054C485    lea         eax,[esp+0C]
 0054C489    call        TRect.Create
 0054C48E    mov         eax,dword ptr [esp]
 0054C491    push        edi
 0054C492    mov         edi,eax
 0054C494    lea         esi,[esp+8]
 0054C498    movs        dword ptr [edi],dword ptr [esi]
 0054C499    movs        dword ptr [edi],dword ptr [esi]
 0054C49A    movs        dword ptr [edi],dword ptr [esi]
 0054C49B    movs        dword ptr [edi],dword ptr [esi]
 0054C49C    pop         edi
 0054C49D    mov         esi,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054C4A0    mov         eax,esi
 0054C4A2    mov         edx,dword ptr ds:[51E408];TCustomTabControl
 0054C4A8    call        @IsClass
 0054C4AD    test        al,al
>0054C4AF    je          0054C4BF
 0054C4B1    mov         ecx,dword ptr [esp]
 0054C4B4    mov         edx,edi
 0054C4B6    mov         eax,esi
 0054C4B8    call        TCustomTabControl.TabRect
>0054C4BD    jmp         0054C4E3
 0054C4BF    mov         eax,ebx
 0054C4C1    call        TStyleHook.GetHandle
 0054C4C6    test        eax,eax
>0054C4C8    je          0054C4E3
 0054C4CA    mov         eax,ebx
 0054C4CC    call        TStyleHook.GetHandle
 0054C4D1    mov         ebx,eax
 0054C4D3    mov         eax,dword ptr [esp]
 0054C4D6    push        eax
 0054C4D7    push        edi
 0054C4D8    push        130A
 0054C4DD    push        ebx
 0054C4DE    call        user32.SendMessageW
 0054C4E3    add         esp,14
 0054C4E6    pop         edi
 0054C4E7    pop         esi
 0054C4E8    pop         ebx
 0054C4E9    ret
end;*}

//0054C4EC
{*function sub_0054C4EC(?:TTabControlStyleHook):?;
begin
 0054C4EC    push        ebx
 0054C4ED    push        esi
 0054C4EE    push        edi
 0054C4EF    mov         esi,eax
 0054C4F1    xor         ebx,ebx
 0054C4F3    mov         edi,dword ptr [esi+8];TTabControlStyleHook.FControl:TWinControl
 0054C4F6    mov         eax,edi
 0054C4F8    mov         edx,dword ptr ds:[51E408];TCustomTabControl
 0054C4FE    call        @IsClass
 0054C503    test        al,al
>0054C505    je          0054C50E
 0054C507    movzx       ebx,byte ptr [edi+2AE]
 0054C50E    mov         eax,ebx
 0054C510    pop         edi
 0054C511    pop         esi
 0054C512    pop         ebx
 0054C513    ret
end;*}

//0054C514
{*function sub_0054C514(?:TTabControlStyleHook):?;
begin
 0054C514    push        ebx
 0054C515    push        esi
 0054C516    mov         ebx,eax
 0054C518    mov         esi,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054C51B    mov         eax,esi
 0054C51D    mov         edx,dword ptr ds:[51E408];TCustomTabControl
 0054C523    call        @IsClass
 0054C528    test        al,al
>0054C52A    je          0054C536
 0054C52C    mov         eax,esi
 0054C52E    call        TPageControl.GetTabIndex
 0054C533    pop         esi
 0054C534    pop         ebx
 0054C535    ret
 0054C536    push        0
 0054C538    push        0
 0054C53A    push        130B
 0054C53F    mov         eax,ebx
 0054C541    call        TStyleHook.GetHandle
 0054C546    push        eax
 0054C547    call        user32.SendMessageW
 0054C54C    pop         esi
 0054C54D    pop         ebx
 0054C54E    ret
end;*}

//0054C550
{*procedure sub_0054C550(?:TTabControlStyleHook; ?:?);
begin
 0054C550    push        ebx
 0054C551    push        esi
 0054C552    push        edi
 0054C553    mov         esi,edx
 0054C555    mov         ebx,eax
 0054C557    push        0
 0054C559    push        esi
 0054C55A    xor         ecx,ecx
 0054C55C    xor         edx,edx
 0054C55E    xor         eax,eax
 0054C560    call        Rect
 0054C565    mov         edi,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054C568    test        edi,edi
>0054C56A    je          0054C588
 0054C56C    mov         eax,edi
 0054C56E    mov         edx,dword ptr ds:[51E408];TCustomTabControl
 0054C574    call        @IsClass
 0054C579    test        al,al
>0054C57B    je          0054C588
 0054C57D    mov         edx,esi
 0054C57F    mov         eax,edi
 0054C581    call        00533D7C
>0054C586    jmp         0054C5AA
 0054C588    mov         edx,esi
 0054C58A    mov         eax,edi
 0054C58C    mov         ecx,dword ptr [eax]
 0054C58E    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054C591    push        esi
 0054C592    push        0
 0054C594    push        1328
 0054C599    mov         eax,ebx
 0054C59B    call        TStyleHook.GetHandle
 0054C5A0    push        eax
 0054C5A1    call        user32.SendMessageW
 0054C5A6    add         dword ptr [esi+4],2
 0054C5AA    pop         edi
 0054C5AB    pop         esi
 0054C5AC    pop         ebx
 0054C5AD    ret
end;*}

//0054C5B0
{*procedure sub_0054C5B0(?:TTabControlStyleHook; ?:?; ?:?);
begin
 0054C5B0    push        ebx
 0054C5B1    push        esi
 0054C5B2    push        edi
 0054C5B3    push        ebp
 0054C5B4    add         esp,0FFFFFFD8
 0054C5B7    mov         ebp,ecx
 0054C5B9    mov         edi,edx
 0054C5BB    mov         ebx,eax
 0054C5BD    mov         esi,dword ptr [ebx+8];TTabControlStyleHook.FControl:TWinControl
 0054C5C0    test        esi,esi
>0054C5C2    je          0054C5E5
 0054C5C4    mov         eax,esi
 0054C5C6    mov         edx,dword ptr ds:[51E408];TCustomTabControl
 0054C5CC    call        @IsClass
 0054C5D1    test        al,al
>0054C5D3    je          0054C5E5
 0054C5D5    mov         ecx,ebp
 0054C5D7    mov         edx,edi
 0054C5D9    mov         eax,esi
 0054C5DB    call        TCustomTabControl.IndexOfTabAt
 0054C5E0    mov         dword ptr [esp],eax
>0054C5E3    jmp         0054C634
 0054C5E5    mov         dword ptr [esp],0FFFFFFFF
 0054C5EC    mov         dword ptr [esp+4],edi
 0054C5F0    mov         dword ptr [esp+8],ebp
 0054C5F4    lea         edx,[esp+18]
 0054C5F8    mov         eax,esi
 0054C5FA    mov         ecx,dword ptr [eax]
 0054C5FC    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054C5FF    lea         eax,[esp+18]
 0054C603    lea         edx,[esp+4]
 0054C607    call        TRect.Contains
 0054C60C    test        al,al
>0054C60E    je          0054C634
 0054C610    mov         dword ptr [esp+0C],edi
 0054C614    mov         dword ptr [esp+10],ebp
 0054C618    mov         eax,ebx
 0054C61A    call        TStyleHook.GetHandle
 0054C61F    lea         edx,[esp+0C]
 0054C623    push        edx
 0054C624    push        0
 0054C626    push        130D
 0054C62B    push        eax
 0054C62C    call        user32.SendMessageW
 0054C631    mov         dword ptr [esp],eax
 0054C634    mov         eax,dword ptr [esp]
 0054C637    add         esp,28
 0054C63A    pop         ebp
 0054C63B    pop         edi
 0054C63C    pop         esi
 0054C63D    pop         ebx
 0054C63E    ret
end;*}

//0054C640
constructor TTreeViewStyleHook.Create(AControl:TWinControl);
begin
{*
 0054C640    push        ebp
 0054C641    mov         ebp,esp
 0054C643    add         esp,0FFFFFFEC
 0054C646    push        ebx
 0054C647    push        esi
 0054C648    push        edi
 0054C649    test        dl,dl
>0054C64B    je          0054C655
 0054C64D    add         esp,0FFFFFFF0
 0054C650    call        @ClassCreate
 0054C655    mov         byte ptr [ebp-1],dl
 0054C658    mov         ebx,eax
 0054C65A    xor         edx,edx
 0054C65C    mov         eax,ebx
 0054C65E    call        TScrollingStyleHook.Create
 0054C663    mov         byte ptr [ebx+16],1;TTreeViewStyleHook.FOverrideEraseBkgnd:Boolean
 0054C667    call        StyleServices
 0054C66C    mov         esi,eax
 0054C66E    lea         eax,[ebp-8]
 0054C671    push        eax
 0054C672    lea         ecx,[ebp-14]
 0054C675    mov         dl,2
 0054C677    mov         eax,esi
 0054C679    mov         edi,dword ptr [eax]
 0054C67B    call        dword ptr [edi+108];TCustomStyleServices.GetElementDetails
 0054C681    lea         edx,[ebp-14]
 0054C684    mov         cl,2
 0054C686    mov         eax,esi
 0054C688    call        TCustomStyleServices.GetElementColor
 0054C68D    test        al,al
>0054C68F    je          0054C69A
 0054C691    cmp         dword ptr [ebp-8],1FFFFFFF
>0054C698    jne         0054C6A9
 0054C69A    mov         edx,0FF000008
 0054C69F    mov         eax,esi
 0054C6A1    call        TCustomStyleServices.GetSystemColor
 0054C6A6    mov         dword ptr [ebp-8],eax
 0054C6A9    mov         eax,dword ptr [ebx+8];TTreeViewStyleHook.FControl:TWinControl
 0054C6AC    test        byte ptr [eax+188],1;TWinControl.FStyleElements:TStyleElements
>0054C6B3    je          0054C6BD
 0054C6B5    mov         eax,dword ptr [ebp-8]
 0054C6B8    mov         dword ptr [ebx+10],eax;TTreeViewStyleHook.FFontColor:TColor
>0054C6BB    jmp         0054C6C6
 0054C6BD    mov         eax,dword ptr [eax+74];TWinControl.FFont:TFont
 0054C6C0    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 0054C6C3    mov         dword ptr [ebx+10],eax;TTreeViewStyleHook.FFontColor:TColor
 0054C6C6    call        StyleServices
 0054C6CB    mov         dl,1C
 0054C6CD    call        TCustomStyleServices.GetStyleColor
 0054C6D2    mov         edx,eax
 0054C6D4    mov         eax,dword ptr [ebx+4];TTreeViewStyleHook.FBrush:TBrush
 0054C6D7    call        TBrush.SetColor
 0054C6DC    mov         eax,ebx
 0054C6DE    cmp         byte ptr [ebp-1],0
>0054C6E2    je          0054C6F3
 0054C6E4    call        @AfterConstruction
 0054C6E9    pop         dword ptr fs:[0]
 0054C6F0    add         esp,0C
 0054C6F3    mov         eax,ebx
 0054C6F5    pop         edi
 0054C6F6    pop         esi
 0054C6F7    pop         ebx
 0054C6F8    mov         esp,ebp
 0054C6FA    pop         ebp
 0054C6FB    ret
*}
end;

//0054C6FC
{*procedure TTreeViewStyleHook.sub_0054C6FC(?:?);
begin
 0054C6FC    push        ebx
 0054C6FD    push        esi
 0054C6FE    push        edi
 0054C6FF    mov         edi,edx
 0054C701    mov         ebx,eax
 0054C703    mov         esi,dword ptr [ebx+4];TTreeViewStyleHook.FBrush:TBrush
 0054C706    mov         eax,dword ptr [esi+10];TBrush.FResource:PResource
 0054C709    mov         eax,dword ptr [eax+18]
 0054C70C    call        ColorToRGB
 0054C711    mov         dword ptr [edi+8],eax
 0054C714    mov         byte ptr [ebx+14],0;TTreeViewStyleHook.FHandled:Boolean
 0054C718    pop         edi
 0054C719    pop         esi
 0054C71A    pop         ebx
 0054C71B    ret
end;*}

//0054C71C
{*procedure TTreeViewStyleHook.sub_0054C71C(?:?);
begin
 0054C71C    push        ebx
 0054C71D    push        esi
 0054C71E    mov         esi,edx
 0054C720    mov         ebx,eax
 0054C722    mov         eax,dword ptr [ebx+10];TTreeViewStyleHook.FFontColor:TColor
 0054C725    call        ColorToRGB
 0054C72A    mov         dword ptr [esi+8],eax
 0054C72D    mov         byte ptr [ebx+14],0;TTreeViewStyleHook.FHandled:Boolean
 0054C731    pop         esi
 0054C732    pop         ebx
 0054C733    ret
end;*}

//0054C734
{*procedure TTreeViewStyleHook.WMMouseMove(?:?);
begin
 0054C734    push        ebx
 0054C735    push        esi
 0054C736    add         esp,0FFFFFF98
 0054C739    mov         esi,edx
 0054C73B    mov         ebx,eax
 0054C73D    cmp         byte ptr [ebx+48],1C;TTreeViewStyleHook.FVertSliderState:TThemedScrollBar
>0054C741    jne         0054C8B4
 0054C747    mov         dword ptr [esp+14],17
 0054C74F    mov         dword ptr [esp+10],1C
 0054C757    lea         eax,[esp+10]
 0054C75B    push        eax
 0054C75C    push        1
 0054C75E    mov         eax,ebx
 0054C760    call        TStyleHook.GetHandle
 0054C765    push        eax
 0054C766    call        user32.GetScrollInfo
 0054C76B    lea         edx,[esp+4C]
 0054C76F    mov         eax,[007C4DA0];^gvar_007CA5D4
 0054C774    mov         eax,dword ptr [eax]
 0054C776    call        TMouse.GetCursorPos
 0054C77B    mov         eax,dword ptr [esp+50]
 0054C77F    sub         eax,dword ptr [ebx+38]
 0054C782    mov         dword ptr [esp+54],eax
 0054C786    fild        dword ptr [esp+54]
 0054C78A    fstp        tbyte ptr [esp+58]
 0054C78E    wait
 0054C78F    lea         edx,[esp+2C]
 0054C793    mov         eax,ebx
 0054C795    call        005CE75C
 0054C79A    lea         eax,[esp+2C]
 0054C79E    call        RectHeight
 0054C7A3    mov         dword ptr [esp+64],eax
 0054C7A7    fild        dword ptr [esp+64]
 0054C7AB    fld         tbyte ptr [esp+58]
 0054C7AF    fdivrp      st(1),st
 0054C7B1    mov         eax,dword ptr [esp+1C]
 0054C7B5    sub         eax,dword ptr [esp+18]
 0054C7B9    mov         dword ptr [esp+54],eax
 0054C7BD    fild        dword ptr [esp+54]
 0054C7C1    fmulp       st(1),st
 0054C7C3    fadd        dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C7C6    fstp        dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C7C9    wait
 0054C7CA    fild        dword ptr [esp+18]
 0054C7CE    fcomp       dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C7D1    wait
 0054C7D2    fnstsw      al
 0054C7D4    sahf
>0054C7D5    jbe         0054C7DF
 0054C7D7    fild        dword ptr [esp+18]
 0054C7DB    fstp        dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C7DE    wait
 0054C7DF    fild        dword ptr [esp+1C]
 0054C7E3    fcomp       dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C7E6    wait
 0054C7E7    fnstsw      al
 0054C7E9    sahf
>0054C7EA    jae         0054C7F4
 0054C7EC    fild        dword ptr [esp+1C]
 0054C7F0    fstp        dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C7F3    wait
 0054C7F4    lea         edx,[esp+4C]
 0054C7F8    mov         eax,[007C4DA0];^gvar_007CA5D4
 0054C7FD    mov         eax,dword ptr [eax]
 0054C7FF    call        TMouse.GetCursorPos
 0054C804    mov         eax,dword ptr [esp+50]
 0054C808    mov         dword ptr [ebx+38],eax;TTreeViewStyleHook.FPrevScrollPos:Integer
 0054C80B    mov         eax,dword ptr [ebx+8];TTreeViewStyleHook.FControl:TWinControl
 0054C80E    mov         edx,dword ptr ds:[52638C];TCustomTreeView
 0054C814    call        @IsClass
 0054C819    test        al,al
>0054C81B    je          0054C875
 0054C81D    mov         eax,ebx
 0054C81F    call        TStyleHook.GetHandle
 0054C824    mov         esi,eax
 0054C826    fld         dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C829    call        @ROUND
 0054C82E    mov         word ptr [esp],5
 0054C834    mov         word ptr [esp+2],ax
 0054C839    push        0
 0054C83B    mov         eax,dword ptr [esp+4]
 0054C83F    push        eax
 0054C840    push        115
 0054C845    push        esi
 0054C846    call        user32.PostMessageW
 0054C84B    fld         dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C84E    call        @ROUND
 0054C853    mov         esi,eax
 0054C855    mov         dword ptr [esp+24],esi
 0054C859    mov         dword ptr [esp+28],esi
 0054C85D    push        0FF
 0054C85F    lea         eax,[esp+14]
 0054C863    push        eax
 0054C864    push        1
 0054C866    mov         eax,ebx
 0054C868    call        TStyleHook.GetHandle
 0054C86D    push        eax
 0054C86E    call        user32.SetScrollInfo
>0054C873    jmp         0054C8A4
 0054C875    mov         eax,ebx
 0054C877    call        TStyleHook.GetHandle
 0054C87C    mov         esi,eax
 0054C87E    fld         dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C881    call        @ROUND
 0054C886    mov         word ptr [esp+4],4
 0054C88D    mov         word ptr [esp+6],ax
 0054C892    push        0
 0054C894    mov         eax,dword ptr [esp+8]
 0054C898    push        eax
 0054C899    push        115
 0054C89E    push        esi
 0054C89F    call        user32.PostMessageW
 0054C8A4    mov         eax,ebx
 0054C8A6    mov         edx,dword ptr [eax]
 0054C8A8    call        dword ptr [edx+4C];TTreeViewStyleHook.sub_005CEA7C
 0054C8AB    mov         byte ptr [ebx+14],1;TTreeViewStyleHook.FHandled:Boolean
>0054C8AF    jmp         0054CAD0
 0054C8B4    cmp         byte ptr [ebx+30],18;TTreeViewStyleHook.FHorzSliderState:TThemedScrollBar
>0054C8B8    jne         0054CA2C
 0054C8BE    mov         dword ptr [esp+14],17
 0054C8C6    mov         dword ptr [esp+10],1C
 0054C8CE    lea         eax,[esp+10]
 0054C8D2    push        eax
 0054C8D3    push        0
 0054C8D5    mov         eax,ebx
 0054C8D7    call        TStyleHook.GetHandle
 0054C8DC    push        eax
 0054C8DD    call        user32.GetScrollInfo
 0054C8E2    lea         edx,[esp+4C]
 0054C8E6    mov         eax,[007C4DA0];^gvar_007CA5D4
 0054C8EB    mov         eax,dword ptr [eax]
 0054C8ED    call        TMouse.GetCursorPos
 0054C8F2    mov         eax,dword ptr [esp+4C]
 0054C8F6    sub         eax,dword ptr [ebx+38]
 0054C8F9    mov         dword ptr [esp+54],eax
 0054C8FD    fild        dword ptr [esp+54]
 0054C901    fstp        tbyte ptr [esp+58]
 0054C905    wait
 0054C906    lea         edx,[esp+3C]
 0054C90A    mov         eax,ebx
 0054C90C    call        005CE9D4
 0054C911    lea         eax,[esp+3C]
 0054C915    call        RectWidth
 0054C91A    mov         dword ptr [esp+64],eax
 0054C91E    fild        dword ptr [esp+64]
 0054C922    fld         tbyte ptr [esp+58]
 0054C926    fdivrp      st(1),st
 0054C928    mov         eax,dword ptr [esp+1C]
 0054C92C    sub         eax,dword ptr [esp+18]
 0054C930    mov         dword ptr [esp+54],eax
 0054C934    fild        dword ptr [esp+54]
 0054C938    fmulp       st(1),st
 0054C93A    fadd        dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C93D    fstp        dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C940    wait
 0054C941    fild        dword ptr [esp+18]
 0054C945    fcomp       dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C948    wait
 0054C949    fnstsw      al
 0054C94B    sahf
>0054C94C    jbe         0054C956
 0054C94E    fild        dword ptr [esp+18]
 0054C952    fstp        dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C955    wait
 0054C956    fild        dword ptr [esp+1C]
 0054C95A    fcomp       dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C95D    wait
 0054C95E    fnstsw      al
 0054C960    sahf
>0054C961    jae         0054C96B
 0054C963    fild        dword ptr [esp+1C]
 0054C967    fstp        dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C96A    wait
 0054C96B    lea         edx,[esp+4C]
 0054C96F    mov         eax,[007C4DA0];^gvar_007CA5D4
 0054C974    mov         eax,dword ptr [eax]
 0054C976    call        TMouse.GetCursorPos
 0054C97B    mov         eax,dword ptr [esp+4C]
 0054C97F    mov         dword ptr [ebx+38],eax;TTreeViewStyleHook.FPrevScrollPos:Integer
 0054C982    mov         eax,dword ptr [ebx+8];TTreeViewStyleHook.FControl:TWinControl
 0054C985    mov         edx,dword ptr ds:[52638C];TCustomTreeView
 0054C98B    call        @IsClass
 0054C990    test        al,al
>0054C992    je          0054C9ED
 0054C994    mov         eax,ebx
 0054C996    call        TStyleHook.GetHandle
 0054C99B    mov         esi,eax
 0054C99D    fld         dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C9A0    call        @ROUND
 0054C9A5    mov         word ptr [esp+8],5
 0054C9AC    mov         word ptr [esp+0A],ax
 0054C9B1    push        0
 0054C9B3    mov         eax,dword ptr [esp+0C]
 0054C9B7    push        eax
 0054C9B8    push        114
 0054C9BD    push        esi
 0054C9BE    call        user32.PostMessageW
 0054C9C3    fld         dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C9C6    call        @ROUND
 0054C9CB    mov         esi,eax
 0054C9CD    mov         dword ptr [esp+24],esi
 0054C9D1    mov         dword ptr [esp+28],esi
 0054C9D5    push        0FF
 0054C9D7    lea         eax,[esp+14]
 0054C9DB    push        eax
 0054C9DC    push        0
 0054C9DE    mov         eax,ebx
 0054C9E0    call        TStyleHook.GetHandle
 0054C9E5    push        eax
 0054C9E6    call        user32.SetScrollInfo
>0054C9EB    jmp         0054CA1C
 0054C9ED    mov         eax,ebx
 0054C9EF    call        TStyleHook.GetHandle
 0054C9F4    mov         esi,eax
 0054C9F6    fld         dword ptr [ebx+3C];TTreeViewStyleHook.FScrollPos:Single
 0054C9F9    call        @ROUND
 0054C9FE    mov         word ptr [esp+0C],4
 0054CA05    mov         word ptr [esp+0E],ax
 0054CA0A    push        0
 0054CA0C    mov         eax,dword ptr [esp+10]
 0054CA10    push        eax
 0054CA11    push        114
 0054CA16    push        esi
 0054CA17    call        user32.PostMessageW
 0054CA1C    mov         eax,ebx
 0054CA1E    mov         edx,dword ptr [eax]
 0054CA20    call        dword ptr [edx+4C];TTreeViewStyleHook.sub_005CEA7C
 0054CA23    mov         byte ptr [ebx+14],1;TTreeViewStyleHook.FHandled:Boolean
>0054CA27    jmp         0054CAD0
 0054CA2C    movzx       eax,byte ptr [ebx+30];TTreeViewStyleHook.FHorzSliderState:TThemedScrollBar
 0054CA30    cmp         al,18
>0054CA32    je          0054CA43
 0054CA34    cmp         al,17
>0054CA36    jne         0054CA43
 0054CA38    mov         byte ptr [ebx+30],16;TTreeViewStyleHook.FHorzSliderState:TThemedScrollBar
 0054CA3C    mov         eax,ebx
 0054CA3E    mov         edx,dword ptr [eax]
 0054CA40    call        dword ptr [edx+4C];TTreeViewStyleHook.sub_005CEA7C
 0054CA43    movzx       eax,byte ptr [ebx+48];TTreeViewStyleHook.FVertSliderState:TThemedScrollBar
 0054CA47    cmp         al,1C
>0054CA49    je          0054CA5A
 0054CA4B    cmp         al,1B
>0054CA4D    jne         0054CA5A
 0054CA4F    mov         byte ptr [ebx+48],1A;TTreeViewStyleHook.FVertSliderState:TThemedScrollBar
 0054CA53    mov         eax,ebx
 0054CA55    mov         edx,dword ptr [eax]
 0054CA57    call        dword ptr [edx+4C];TTreeViewStyleHook.sub_005CEA7C
 0054CA5A    movzx       eax,byte ptr [ebx+31];TTreeViewStyleHook.FHorzUpState:TThemedScrollBar
 0054CA5E    cmp         al,0C
>0054CA60    je          0054CA71
 0054CA62    cmp         al,0B
>0054CA64    jne         0054CA71
 0054CA66    mov         byte ptr [ebx+31],0A;TTreeViewStyleHook.FHorzUpState:TThemedScrollBar
 0054CA6A    mov         eax,ebx
 0054CA6C    mov         edx,dword ptr [eax]
 0054CA6E    call        dword ptr [edx+4C];TTreeViewStyleHook.sub_005CEA7C
 0054CA71    movzx       eax,byte ptr [ebx+28];TTreeViewStyleHook.FHorzDownState:TThemedScrollBar
 0054CA75    cmp         al,10
>0054CA77    je          0054CA88
 0054CA79    cmp         al,0F
>0054CA7B    jne         0054CA88
 0054CA7D    mov         byte ptr [ebx+28],0E;TTreeViewStyleHook.FHorzDownState:TThemedScrollBar
 0054CA81    mov         eax,ebx
 0054CA83    mov         edx,dword ptr [eax]
 0054CA85    call        dword ptr [edx+4C];TTreeViewStyleHook.sub_005CEA7C
 0054CA88    movzx       eax,byte ptr [ebx+49];TTreeViewStyleHook.FVertUpState:TThemedScrollBar
 0054CA8C    cmp         al,4
>0054CA8E    je          0054CA9F
 0054CA90    cmp         al,3
>0054CA92    jne         0054CA9F
 0054CA94    mov         byte ptr [ebx+49],2;TTreeViewStyleHook.FVertUpState:TThemedScrollBar
 0054CA98    mov         eax,ebx
 0054CA9A    mov         edx,dword ptr [eax]
 0054CA9C    call        dword ptr [edx+4C];TTreeViewStyleHook.sub_005CEA7C
 0054CA9F    movzx       eax,byte ptr [ebx+40];TTreeViewStyleHook.FVertDownState:TThemedScrollBar
 0054CAA3    cmp         al,8
>0054CAA5    je          0054CAB6
 0054CAA7    cmp         al,7
>0054CAA9    jne         0054CAB6
 0054CAAB    mov         byte ptr [ebx+40],6;TTreeViewStyleHook.FVertDownState:TThemedScrollBar
 0054CAAF    mov         eax,ebx
 0054CAB1    mov         edx,dword ptr [eax]
 0054CAB3    call        dword ptr [edx+4C];TTreeViewStyleHook.sub_005CEA7C
 0054CAB6    mov         edx,esi
 0054CAB8    mov         eax,ebx
 0054CABA    call        TStyleHook.CallDefaultProc
 0054CABF    cmp         byte ptr [ebx+32],0;TTreeViewStyleHook.FLeftButtonDown:Boolean
>0054CAC3    je          0054CACC
 0054CAC5    mov         eax,ebx
 0054CAC7    mov         edx,dword ptr [eax]
 0054CAC9    call        dword ptr [edx+4C];TTreeViewStyleHook.sub_005CEA7C
 0054CACC    mov         byte ptr [ebx+14],1;TTreeViewStyleHook.FHandled:Boolean
 0054CAD0    add         esp,68
 0054CAD3    pop         esi
 0054CAD4    pop         ebx
 0054CAD5    ret
end;*}

//0054CAD8
procedure sub_0054CAD8;
begin
{*
 0054CAD8    call        005CF948
 0054CADD    ret
*}
end;

//0054CAE0
constructor TListViewStyleHook.Create(AControl:TWinControl);
begin
{*
 0054CAE0    push        ebp
 0054CAE1    mov         ebp,esp
 0054CAE3    add         esp,0FFFFFFEC
 0054CAE6    push        ebx
 0054CAE7    push        esi
 0054CAE8    push        edi
 0054CAE9    test        dl,dl
>0054CAEB    je          0054CAF5
 0054CAED    add         esp,0FFFFFFF0
 0054CAF0    call        @ClassCreate
 0054CAF5    mov         byte ptr [ebp-1],dl
 0054CAF8    mov         ebx,eax
 0054CAFA    xor         edx,edx
 0054CAFC    mov         eax,ebx
 0054CAFE    call        TScrollingStyleHook.Create
 0054CB03    mov         byte ptr [ebx+16],1;TListViewStyleHook.FOverrideEraseBkgnd:Boolean
 0054CB07    push        ebx
 0054CB08    mov         eax,dword ptr [ebx]
 0054CB0A    mov         eax,dword ptr [eax+54];TListViewStyleHook.FDefHeaderProc:Pointer
 0054CB0D    push        eax
 0054CB0E    call        MakeObjectInstance
 0054CB13    mov         dword ptr [ebx+50],eax;TListViewStyleHook.FHeaderInstance:Pointer
 0054CB16    mov         dword ptr [ebx+58],0FFFFFFFF;TListViewStyleHook.FPressedSection:Integer
 0054CB1D    xor         eax,eax
 0054CB1F    mov         dword ptr [ebx+4C],eax;TListViewStyleHook.FHeaderHandle:HWND
 0054CB22    call        StyleServices
 0054CB27    mov         esi,eax
 0054CB29    lea         eax,[ebp-8]
 0054CB2C    push        eax
 0054CB2D    lea         ecx,[ebp-14]
 0054CB30    mov         dl,2
 0054CB32    mov         eax,esi
 0054CB34    mov         edi,dword ptr [eax]
 0054CB36    call        dword ptr [edi+108];TCustomStyleServices.GetElementDetails
 0054CB3C    lea         edx,[ebp-14]
 0054CB3F    mov         cl,2
 0054CB41    mov         eax,esi
 0054CB43    call        TCustomStyleServices.GetElementColor
 0054CB48    test        al,al
>0054CB4A    je          0054CB55
 0054CB4C    cmp         dword ptr [ebp-8],1FFFFFFF
>0054CB53    jne         0054CB64
 0054CB55    mov         edx,0FF000008
 0054CB5A    mov         eax,esi
 0054CB5C    call        TCustomStyleServices.GetSystemColor
 0054CB61    mov         dword ptr [ebp-8],eax
 0054CB64    mov         eax,dword ptr [ebx+8];TListViewStyleHook.FControl:TWinControl
 0054CB67    test        byte ptr [eax+188],1;TWinControl.FStyleElements:TStyleElements
>0054CB6E    je          0054CB78
 0054CB70    mov         eax,dword ptr [ebp-8]
 0054CB73    mov         dword ptr [ebx+10],eax;TListViewStyleHook.FFontColor:TColor
>0054CB76    jmp         0054CB81
 0054CB78    mov         eax,dword ptr [eax+74];TWinControl.FFont:TFont
 0054CB7B    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 0054CB7E    mov         dword ptr [ebx+10],eax;TListViewStyleHook.FFontColor:TColor
 0054CB81    mov         eax,dword ptr [ebx+8];TListViewStyleHook.FControl:TWinControl
 0054CB84    test        byte ptr [eax+188],2;TWinControl.FStyleElements:TStyleElements
>0054CB8B    je          0054CBA5
 0054CB8D    call        StyleServices
 0054CB92    mov         dl,16
 0054CB94    call        TCustomStyleServices.GetStyleColor
 0054CB99    mov         edx,eax
 0054CB9B    mov         eax,dword ptr [ebx+4];TListViewStyleHook.FBrush:TBrush
 0054CB9E    call        TBrush.SetColor
>0054CBA3    jmp         0054CBB0
 0054CBA5    mov         edx,dword ptr [eax+7C];TWinControl.FColor:TColor
 0054CBA8    mov         eax,dword ptr [ebx+4];TListViewStyleHook.FBrush:TBrush
 0054CBAB    call        TBrush.SetColor
 0054CBB0    mov         eax,ebx
 0054CBB2    cmp         byte ptr [ebp-1],0
>0054CBB6    je          0054CBC7
 0054CBB8    call        @AfterConstruction
 0054CBBD    pop         dword ptr fs:[0]
 0054CBC4    add         esp,0C
 0054CBC7    mov         eax,ebx
 0054CBC9    pop         edi
 0054CBCA    pop         esi
 0054CBCB    pop         ebx
 0054CBCC    mov         esp,ebp
 0054CBCE    pop         ebp
 0054CBCF    ret
*}
end;

//0054CBD0
destructor TListViewStyleHook.Destroy();
begin
{*
 0054CBD0    push        ebx
 0054CBD1    push        esi
 0054CBD2    call        @BeforeDestruction
 0054CBD7    mov         ebx,edx
 0054CBD9    mov         esi,eax
 0054CBDB    mov         eax,dword ptr [esi+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CBDE    test        eax,eax
>0054CBE0    je          0054CBEE
 0054CBE2    mov         edx,dword ptr [esi+54];TListViewStyleHook.FDefHeaderProc:Pointer
 0054CBE5    push        edx
 0054CBE6    push        0FC
 0054CBE8    push        eax
 0054CBE9    call        user32.SetWindowLongW
 0054CBEE    mov         eax,dword ptr [esi+50];TListViewStyleHook.FHeaderInstance:Pointer
 0054CBF1    call        FreeObjectInstance
 0054CBF6    mov         dl,0FC
 0054CBF8    and         dl,bl
 0054CBFA    mov         eax,esi
 0054CBFC    call        TScrollingStyleHook.Destroy
 0054CC01    test        bl,bl
>0054CC03    jle         0054CC0C
 0054CC05    mov         eax,esi
 0054CC07    call        @ClassDestroy
 0054CC0C    pop         esi
 0054CC0D    pop         ebx
 0054CC0E    ret
*}
end;

//0054CC10
procedure TListViewStyleHook.WMNotify;
begin
{*
 0054CC10    push        ebx
 0054CC11    mov         ebx,eax
 0054CC13    push        5
 0054CC15    mov         eax,ebx
 0054CC17    call        TStyleHook.GetHandle
 0054CC1C    push        eax
 0054CC1D    call        user32.GetWindow
 0054CC22    test        eax,eax
>0054CC24    je          0054CC4D
 0054CC26    cmp         dword ptr [ebx+4C],0;TListViewStyleHook.FHeaderHandle:HWND
>0054CC2A    jne         0054CC4D
 0054CC2C    mov         edx,eax
 0054CC2E    mov         dword ptr [ebx+4C],edx;TListViewStyleHook.FHeaderHandle:HWND
 0054CC31    mov         eax,edx
 0054CC33    push        0FC
 0054CC35    push        eax
 0054CC36    call        user32.GetWindowLongW
 0054CC3B    mov         dword ptr [ebx+54],eax;TListViewStyleHook.FDefHeaderProc:Pointer
 0054CC3E    mov         eax,dword ptr [ebx+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CC41    mov         edx,dword ptr [ebx+50];TListViewStyleHook.FHeaderInstance:Pointer
 0054CC44    push        edx
 0054CC45    push        0FC
 0054CC47    push        eax
 0054CC48    call        user32.SetWindowLongW
 0054CC4D    pop         ebx
 0054CC4E    ret
*}
end;

//0054CC50
procedure sub_0054CC50;
begin
{*
 0054CC50    call        005CF948
 0054CC55    ret
*}
end;

//0054CC58
{*procedure sub_0054CC58(?:?);
begin
 0054CC58    push        ebx
 0054CC59    push        esi
 0054CC5A    push        edi
 0054CC5B    add         esp,0FFFFFFF0
 0054CC5E    mov         ebx,edx
 0054CC60    mov         esi,eax
 0054CC62    mov         edi,dword ptr [ebx]
 0054CC64    mov         eax,edi
 0054CC66    cmp         eax,201
>0054CC6B    jg          0054CC9A
>0054CC6D    je          0054CCAE
 0054CC6F    sub         eax,0F
>0054CC72    je          0054CD39
 0054CC78    sub         eax,5
>0054CC7B    je          0054CD45
 0054CC81    sub         eax,6E
>0054CC84    je          0054CD4E
 0054CC8A    sub         eax,17E
>0054CC8F    je          0054CD24
>0054CC95    jmp         0054CD73
 0054CC9A    sub         eax,202
>0054CC9F    je          0054CD01
 0054CCA1    dec         eax
>0054CCA2    je          0054CCAE
 0054CCA4    sub         eax,2
>0054CCA7    je          0054CD01
>0054CCA9    jmp         0054CD73
 0054CCAE    movsx       eax,word ptr [ebx+8]
 0054CCB2    mov         dword ptr [esp],eax
 0054CCB5    movsx       eax,word ptr [ebx+0A]
 0054CCB9    mov         dword ptr [esp+4],eax
 0054CCBD    mov         eax,esp
 0054CCBF    push        eax
 0054CCC0    push        0
 0054CCC2    push        1206
 0054CCC7    mov         eax,dword ptr [esi+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CCCA    push        eax
 0054CCCB    call        user32.SendMessageW
 0054CCD0    mov         eax,dword ptr [esp+8]
 0054CCD4    test        al,4
>0054CCD6    jne         0054CCE5
 0054CCD8    test        al,8
>0054CCDA    jne         0054CCE5
 0054CCDC    mov         eax,dword ptr [esp+0C]
 0054CCE0    mov         dword ptr [esi+58],eax;TListViewStyleHook.FPressedSection:Integer
>0054CCE3    jmp         0054CCEC
 0054CCE5    mov         dword ptr [esi+58],0FFFFFFFF;TListViewStyleHook.FPressedSection:Integer
 0054CCEC    push        1
 0054CCEE    push        0
 0054CCF0    push        0
 0054CCF2    mov         eax,dword ptr [esi+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CCF5    push        eax
 0054CCF6    call        user32.RedrawWindow
 0054CCFB    mov         byte ptr [esi+5C],1;TListViewStyleHook.FHeaderLBtnDown:Boolean
>0054CCFF    jmp         0054CD73
 0054CD01    mov         dword ptr [esi+58],0FFFFFFFF;TListViewStyleHook.FPressedSection:Integer
 0054CD08    push        1
 0054CD0A    push        0
 0054CD0C    push        0
 0054CD0E    mov         eax,dword ptr [esi+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CD11    push        eax
 0054CD12    call        user32.RedrawWindow
 0054CD17    mov         byte ptr [esi+5C],0;TListViewStyleHook.FHeaderLBtnDown:Boolean
 0054CD1B    mov         eax,esi
 0054CD1D    mov         edx,dword ptr [eax]
 0054CD1F    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
>0054CD22    jmp         0054CD73
 0054CD24    cmp         dword ptr [esi+58],0FFFFFFFF;TListViewStyleHook.FPressedSection:Integer
>0054CD28    jne         0054CD73
 0054CD2A    cmp         byte ptr [esi+5C],0;TListViewStyleHook.FHeaderLBtnDown:Boolean
>0054CD2E    je          0054CD73
 0054CD30    mov         eax,esi
 0054CD32    mov         edx,dword ptr [eax]
 0054CD34    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
>0054CD37    jmp         0054CD73
 0054CD39    mov         edx,dword ptr [ebx+4]
 0054CD3C    mov         eax,esi
 0054CD3E    mov         ecx,dword ptr [eax]
 0054CD40    call        dword ptr [ecx+58];TListViewStyleHook.sub_0054CE30
>0054CD43    jmp         0054CD8E
 0054CD45    mov         dword ptr [ebx+0C],1
>0054CD4C    jmp         0054CD8E
 0054CD4E    mov         eax,dword ptr [ebx+8]
 0054CD51    push        eax
 0054CD52    mov         eax,dword ptr [ebx+4]
 0054CD55    push        eax
 0054CD56    push        edi
 0054CD57    mov         eax,dword ptr [esi+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CD5A    push        eax
 0054CD5B    mov         eax,dword ptr [esi+54];TListViewStyleHook.FDefHeaderProc:Pointer
 0054CD5E    push        eax
 0054CD5F    call        user32.CallWindowProcW
 0054CD64    mov         dword ptr [ebx+0C],eax
 0054CD67    xor         eax,eax
 0054CD69    mov         dword ptr [esi+4C],eax;TListViewStyleHook.FHeaderHandle:HWND
 0054CD6C    xor         eax,eax
 0054CD6E    mov         dword ptr [esi+54],eax;TListViewStyleHook.FDefHeaderProc:Pointer
>0054CD71    jmp         0054CD8E
 0054CD73    mov         eax,dword ptr [ebx+8]
 0054CD76    push        eax
 0054CD77    mov         eax,dword ptr [ebx+4]
 0054CD7A    push        eax
 0054CD7B    mov         eax,dword ptr [ebx]
 0054CD7D    push        eax
 0054CD7E    mov         eax,dword ptr [esi+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CD81    push        eax
 0054CD82    mov         eax,dword ptr [esi+54];TListViewStyleHook.FDefHeaderProc:Pointer
 0054CD85    push        eax
 0054CD86    call        user32.CallWindowProcW
 0054CD8B    mov         dword ptr [ebx+0C],eax
 0054CD8E    add         esp,10
 0054CD91    pop         edi
 0054CD92    pop         esi
 0054CD93    pop         ebx
 0054CD94    ret
end;*}

//0054CD98
{*procedure TListViewStyleHook.sub_0054CD98(?:?);
begin
 0054CD98    push        ebx
 0054CD99    push        esi
 0054CD9A    push        edi
 0054CD9B    mov         edi,edx
 0054CD9D    mov         ebx,eax
 0054CD9F    mov         esi,dword ptr [ebx+4];TListViewStyleHook.FBrush:TBrush
 0054CDA2    mov         eax,dword ptr [esi+10];TBrush.FResource:PResource
 0054CDA5    mov         eax,dword ptr [eax+18]
 0054CDA8    call        ColorToRGB
 0054CDAD    mov         dword ptr [edi+8],eax
 0054CDB0    mov         byte ptr [ebx+14],0;TListViewStyleHook.FHandled:Boolean
 0054CDB4    pop         edi
 0054CDB5    pop         esi
 0054CDB6    pop         ebx
 0054CDB7    ret
end;*}

//0054CDB8
{*procedure TListViewStyleHook.sub_0054CDB8(?:?);
begin
 0054CDB8    push        ebx
 0054CDB9    push        esi
 0054CDBA    push        edi
 0054CDBB    mov         edi,edx
 0054CDBD    mov         ebx,eax
 0054CDBF    mov         esi,dword ptr [ebx+4];TListViewStyleHook.FBrush:TBrush
 0054CDC2    mov         eax,dword ptr [esi+10];TBrush.FResource:PResource
 0054CDC5    mov         eax,dword ptr [eax+18]
 0054CDC8    call        ColorToRGB
 0054CDCD    mov         dword ptr [edi+8],eax
 0054CDD0    mov         byte ptr [ebx+14],0;TListViewStyleHook.FHandled:Boolean
 0054CDD4    pop         edi
 0054CDD5    pop         esi
 0054CDD6    pop         ebx
 0054CDD7    ret
end;*}

//0054CDD8
{*procedure TListViewStyleHook.sub_0054CDD8(?:?);
begin
 0054CDD8    push        ebx
 0054CDD9    push        esi
 0054CDDA    mov         esi,edx
 0054CDDC    mov         ebx,eax
 0054CDDE    mov         eax,dword ptr [ebx+10];TListViewStyleHook.FFontColor:TColor
 0054CDE1    call        ColorToRGB
 0054CDE6    mov         dword ptr [esi+8],eax
 0054CDE9    mov         byte ptr [ebx+14],0;TListViewStyleHook.FHandled:Boolean
 0054CDED    pop         esi
 0054CDEE    pop         ebx
 0054CDEF    ret
end;*}

//0054CE30
{*procedure sub_0054CE30(?:?);
begin
 0054CE30    push        ebp
 0054CE31    mov         ebp,esp
 0054CE33    add         esp,0FFFFFD54
 0054CE39    push        ebx
 0054CE3A    push        esi
 0054CE3B    push        edi
 0054CE3C    xor         ecx,ecx
 0054CE3E    mov         dword ptr [ebp-2AC],ecx
 0054CE44    mov         dword ptr [ebp-4],ecx
 0054CE47    mov         dword ptr [ebp-0C],edx
 0054CE4A    mov         dword ptr [ebp-8],eax
 0054CE4D    xor         eax,eax
 0054CE4F    push        ebp
 0054CE50    push        54D0CC
 0054CE55    push        dword ptr fs:[eax]
 0054CE58    mov         dword ptr fs:[eax],esp
 0054CE5B    cmp         dword ptr [ebp-0C],0
>0054CE5F    jne         0054CE75
 0054CE61    lea         eax,[ebp-78]
 0054CE64    push        eax
 0054CE65    mov         eax,dword ptr [ebp-8]
 0054CE68    mov         eax,dword ptr [eax+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CE6B    push        eax
 0054CE6C    call        user32.BeginPaint
 0054CE71    mov         ebx,eax
>0054CE73    jmp         0054CE78
 0054CE75    mov         ebx,dword ptr [ebp-0C]
 0054CE78    xor         edx,edx
 0054CE7A    push        ebp
 0054CE7B    push        54D09E
 0054CE80    push        dword ptr fs:[edx]
 0054CE83    mov         dword ptr fs:[edx],esp
 0054CE86    mov         dl,1
 0054CE88    mov         eax,[004BF670];TCanvas
 0054CE8D    call        TCanvas.Create;TCanvas.Create
 0054CE92    mov         dword ptr [ebp-10],eax
 0054CE95    xor         edx,edx
 0054CE97    push        ebp
 0054CE98    push        54D073
 0054CE9D    push        dword ptr fs:[edx]
 0054CEA0    mov         dword ptr fs:[edx],esp
 0054CEA3    mov         edx,ebx
 0054CEA5    mov         eax,dword ptr [ebp-10]
 0054CEA8    call        TCanvas.SetHandle
 0054CEAD    xor         eax,eax
 0054CEAF    mov         dword ptr [ebp-18],eax
 0054CEB2    mov         eax,dword ptr [ebp-8]
 0054CEB5    mov         ebx,dword ptr [eax+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CEB8    push        0
 0054CEBA    push        0
 0054CEBC    push        1200
 0054CEC1    push        ebx
 0054CEC2    call        user32.SendMessageW
 0054CEC7    mov         esi,eax
 0054CEC9    dec         esi
 0054CECA    test        esi,esi
>0054CECC    jl          0054CFE7
 0054CED2    inc         esi
 0054CED3    mov         dword ptr [ebp-14],0
 0054CEDA    mov         eax,dword ptr [ebp-8]
 0054CEDD    mov         ebx,dword ptr [eax+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CEE0    push        0
 0054CEE2    push        0
 0054CEE4    push        1200
 0054CEE9    push        ebx
 0054CEEA    call        user32.SendMessageW
 0054CEEF    mov         ebx,eax
 0054CEF1    push        ebx
 0054CEF2    lea         eax,[ebp-4]
 0054CEF5    mov         ecx,1
 0054CEFA    mov         edx,dword ptr ds:[54CDF0];:TListViewStyleHook.:1
 0054CF00    call        @DynArraySetLength
 0054CF05    add         esp,4
 0054CF08    mov         eax,dword ptr [ebp-8]
 0054CF0B    mov         ebx,dword ptr [eax+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CF0E    push        0
 0054CF10    push        0
 0054CF12    push        1200
 0054CF17    push        ebx
 0054CF18    call        user32.SendMessageW
 0054CF1D    mov         ebx,eax
 0054CF1F    mov         eax,dword ptr [ebp-8]
 0054CF22    mov         edi,dword ptr [eax+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CF25    mov         eax,dword ptr [ebp-4]
 0054CF28    push        eax
 0054CF29    push        ebx
 0054CF2A    push        1211
 0054CF2F    push        edi
 0054CF30    call        user32.SendMessageW
 0054CF35    mov         eax,dword ptr [ebp-4]
 0054CF38    mov         edx,dword ptr [ebp-14]
 0054CF3B    mov         ebx,dword ptr [eax+edx*4]
 0054CF3E    mov         eax,dword ptr [ebp-8]
 0054CF41    mov         edi,dword ptr [eax+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CF44    lea         eax,[ebp-28]
 0054CF47    push        eax
 0054CF48    push        ebx
 0054CF49    push        1207
 0054CF4E    push        edi
 0054CF4F    call        user32.SendMessageW
 0054CF54    lea         eax,[ebp-0A8]
 0054CF5A    xor         ecx,ecx
 0054CF5C    mov         edx,30
 0054CF61    call        @FillChar
 0054CF66    mov         dword ptr [ebp-0A8],2
 0054CF70    lea         eax,[ebp-2A8]
 0054CF76    mov         dword ptr [ebp-0A0],eax
 0054CF7C    mov         dword ptr [ebp-98],100
 0054CF86    mov         eax,dword ptr [ebp-8]
 0054CF89    mov         edi,dword ptr [eax+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CF8C    lea         eax,[ebp-0A8]
 0054CF92    push        eax
 0054CF93    push        ebx
 0054CF94    push        120B
 0054CF99    push        edi
 0054CF9A    call        user32.SendMessageW
 0054CF9F    push        ebx
 0054CFA0    lea         eax,[ebp-2AC]
 0054CFA6    mov         edx,dword ptr [ebp-0A0]
 0054CFAC    call        @UStrFromPWChar
 0054CFB1    mov         eax,dword ptr [ebp-2AC]
 0054CFB7    push        eax
 0054CFB8    mov         eax,dword ptr [ebp-8]
 0054CFBB    cmp         ebx,dword ptr [eax+58];TListViewStyleHook.FPressedSection:Integer
 0054CFBE    sete        al
 0054CFC1    push        eax
 0054CFC2    push        0
 0054CFC4    lea         ecx,[ebp-28]
 0054CFC7    mov         edx,dword ptr [ebp-10]
 0054CFCA    mov         eax,dword ptr [ebp-8]
 0054CFCD    mov         ebx,dword ptr [eax]
 0054CFCF    call        dword ptr [ebx+50];TListViewStyleHook.sub_0054D0DC
 0054CFD2    mov         eax,dword ptr [ebp-20]
 0054CFD5    cmp         eax,dword ptr [ebp-18]
>0054CFD8    jle         0054CFDD
 0054CFDA    mov         dword ptr [ebp-18],eax
 0054CFDD    inc         dword ptr [ebp-14]
 0054CFE0    dec         esi
>0054CFE1    jne         0054CEDA
 0054CFE7    lea         eax,[ebp-38]
 0054CFEA    push        eax
 0054CFEB    mov         eax,dword ptr [ebp-8]
 0054CFEE    mov         eax,dword ptr [eax+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054CFF1    push        eax
 0054CFF2    call        user32.GetWindowRect
 0054CFF7    lea         eax,[ebp-38]
 0054CFFA    call        RectHeight
 0054CFFF    push        eax
 0054D000    lea         eax,[ebp-28]
 0054D003    push        eax
 0054D004    lea         eax,[ebp-38]
 0054D007    call        RectWidth
 0054D00C    mov         ecx,eax
 0054D00E    add         ecx,2
 0054D011    xor         edx,edx
 0054D013    mov         eax,dword ptr [ebp-18]
 0054D016    call        Rect
 0054D01B    lea         eax,[ebp-28]
 0054D01E    call        IsRectEmpty
 0054D023    test        al,al
>0054D025    jne         0054D03D
 0054D027    push        0FF
 0054D029    push        0
 0054D02B    push        0
 0054D02D    push        1
 0054D02F    lea         ecx,[ebp-28]
 0054D032    mov         edx,dword ptr [ebp-10]
 0054D035    mov         eax,dword ptr [ebp-8]
 0054D038    mov         ebx,dword ptr [eax]
 0054D03A    call        dword ptr [ebx+50];TListViewStyleHook.sub_0054D0DC
 0054D03D    cmp         dword ptr [ebp-0C],0
>0054D041    je          0054D053
 0054D043    mov         eax,dword ptr [ebp-0C]
 0054D046    push        eax
 0054D047    mov         eax,dword ptr [ebp-8]
 0054D04A    mov         eax,dword ptr [eax+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054D04D    push        eax
 0054D04E    call        user32.ReleaseDC
 0054D053    xor         eax,eax
 0054D055    pop         edx
 0054D056    pop         ecx
 0054D057    pop         ecx
 0054D058    mov         dword ptr fs:[eax],edx
 0054D05B    push        54D07A
 0054D060    xor         edx,edx
 0054D062    mov         eax,dword ptr [ebp-10]
 0054D065    call        TCanvas.SetHandle
 0054D06A    mov         eax,dword ptr [ebp-10]
 0054D06D    call        TObject.Free
 0054D072    ret
>0054D073    jmp         @HandleFinally
>0054D078    jmp         0054D060
 0054D07A    xor         eax,eax
 0054D07C    pop         edx
 0054D07D    pop         ecx
 0054D07E    pop         ecx
 0054D07F    mov         dword ptr fs:[eax],edx
 0054D082    push        54D0A5
 0054D087    cmp         dword ptr [ebp-0C],0
>0054D08B    jne         0054D09D
 0054D08D    lea         eax,[ebp-78]
 0054D090    push        eax
 0054D091    mov         eax,dword ptr [ebp-8]
 0054D094    mov         eax,dword ptr [eax+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054D097    push        eax
 0054D098    call        user32.EndPaint
 0054D09D    ret
>0054D09E    jmp         @HandleFinally
>0054D0A3    jmp         0054D087
 0054D0A5    xor         eax,eax
 0054D0A7    pop         edx
 0054D0A8    pop         ecx
 0054D0A9    pop         ecx
 0054D0AA    mov         dword ptr fs:[eax],edx
 0054D0AD    push        54D0D3
 0054D0B2    lea         eax,[ebp-2AC]
 0054D0B8    call        @UStrClr
 0054D0BD    lea         eax,[ebp-4]
 0054D0C0    mov         edx,dword ptr ds:[54CDF0];:TListViewStyleHook.:1
 0054D0C6    call        @DynArrayClear
 0054D0CB    ret
>0054D0CC    jmp         @HandleFinally
>0054D0D1    jmp         0054D0B2
 0054D0D3    pop         edi
 0054D0D4    pop         esi
 0054D0D5    pop         ebx
 0054D0D6    mov         esp,ebp
 0054D0D8    pop         ebp
 0054D0D9    ret
end;*}

//0054D0DC
{*procedure sub_0054D0DC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0054D0DC    push        ebp
 0054D0DD    mov         ebp,esp
 0054D0DF    add         esp,0FFFFFFA4
 0054D0E2    push        ebx
 0054D0E3    push        esi
 0054D0E4    push        edi
 0054D0E5    mov         esi,ecx
 0054D0E7    lea         edi,[ebp-20]
 0054D0EA    movs        dword ptr [edi],dword ptr [esi]
 0054D0EB    movs        dword ptr [edi],dword ptr [esi]
 0054D0EC    movs        dword ptr [edi],dword ptr [esi]
 0054D0ED    movs        dword ptr [edi],dword ptr [esi]
 0054D0EE    mov         dword ptr [ebp-4],edx
 0054D0F1    mov         ebx,eax
 0054D0F3    lea         eax,[ebp-50]
 0054D0F6    xor         ecx,ecx
 0054D0F8    mov         edx,30
 0054D0FD    call        @FillChar
 0054D102    mov         dword ptr [ebp-50],4
 0054D109    mov         esi,dword ptr [ebx+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054D10C    lea         eax,[ebp-50]
 0054D10F    push        eax
 0054D110    mov         eax,dword ptr [ebp+14]
 0054D113    push        eax
 0054D114    push        120B
 0054D119    push        esi
 0054D11A    call        user32.SendMessageW
 0054D11F    cmp         byte ptr [ebp+8],0
>0054D123    je          0054D12B
 0054D125    mov         byte ptr [ebp-5],2
>0054D129    jmp         0054D13B
 0054D12B    cmp         byte ptr [ebp+0C],0
>0054D12F    je          0054D137
 0054D131    mov         byte ptr [ebp-5],4
>0054D135    jmp         0054D13B
 0054D137    mov         byte ptr [ebp-5],2
 0054D13B    call        StyleServices
 0054D140    movzx       edx,byte ptr [ebp-5]
 0054D144    lea         ecx,[ebp-5C]
 0054D147    mov         esi,dword ptr [eax]
 0054D149    call        dword ptr [esi+94];TCustomStyleServices.GetElementDetails
 0054D14F    lea         eax,[ebp-20]
 0054D152    push        eax
 0054D153    push        0
 0054D155    mov         eax,dword ptr [ebp-4]
 0054D158    call        TCanvas.GetHandle
 0054D15D    push        eax
 0054D15E    call        StyleServices
 0054D163    lea         ecx,[ebp-5C]
 0054D166    pop         edx
 0054D167    call        TCustomStyleServices.DrawElement
 0054D16C    push        0
 0054D16E    push        0
 0054D170    push        1209
 0054D175    mov         eax,dword ptr [ebx+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054D178    push        eax
 0054D179    call        user32.SendMessageW
 0054D17E    mov         esi,eax
 0054D180    mov         dword ptr [ebp-50],24
 0054D187    lea         eax,[ebp-20]
 0054D18A    mov         ecx,0FFFFFFFE
 0054D18F    mov         edx,0FFFFFFFE
 0054D194    call        InflateRect
 0054D199    xor         eax,eax
 0054D19B    mov         dword ptr [ebp-0C],eax
 0054D19E    test        esi,esi
>0054D1A0    je          0054D1FF
 0054D1A2    mov         edi,dword ptr [ebx+4C];TListViewStyleHook.FHeaderHandle:HWND
 0054D1A5    lea         eax,[ebp-50]
 0054D1A8    push        eax
 0054D1A9    mov         eax,dword ptr [ebp+14]
 0054D1AC    push        eax
 0054D1AD    push        120B
 0054D1B2    push        edi
 0054D1B3    call        user32.SendMessageW
 0054D1B8    test        eax,eax
>0054D1BA    je          0054D1FF
 0054D1BC    mov         eax,dword ptr [ebp-3C]
 0054D1BF    and         eax,800
 0054D1C4    cmp         eax,800
>0054D1C9    jne         0054D1FF
 0054D1CB    push        1
 0054D1CD    mov         eax,dword ptr [ebp-1C]
 0054D1D0    push        eax
 0054D1D1    mov         eax,dword ptr [ebp-20]
 0054D1D4    push        eax
 0054D1D5    mov         eax,dword ptr [ebp-4]
 0054D1D8    call        TCanvas.GetHandle
 0054D1DD    push        eax
 0054D1DE    mov         eax,dword ptr [ebp-34]
 0054D1E1    push        eax
 0054D1E2    push        esi
 0054D1E3    call        comctl32.ImageList_Draw
 0054D1E8    lea         eax,[ebp-10]
 0054D1EB    push        eax
 0054D1EC    lea         eax,[ebp-0C]
 0054D1EF    push        eax
 0054D1F0    push        esi
 0054D1F1    call        comctl32.ImageList_GetIconSize
 0054D1F6    mov         eax,dword ptr [ebp-0C]
 0054D1F9    add         eax,5
 0054D1FC    add         dword ptr [ebp-20],eax
 0054D1FF    cmp         dword ptr [ebp-0C],0
>0054D203    jne         0054D209
 0054D205    add         dword ptr [ebp-20],2
 0054D209    mov         eax,dword ptr [ebp+10]
 0054D20C    push        eax
 0054D20D    lea         eax,[ebp-20]
 0054D210    push        eax
 0054D211    push        8024
 0054D216    lea         ecx,[ebp-5C]
 0054D219    mov         edx,dword ptr [ebp-4]
 0054D21C    mov         eax,ebx
 0054D21E    call        TStyleHook.DrawControlText
 0054D223    pop         edi
 0054D224    pop         esi
 0054D225    pop         ebx
 0054D226    mov         esp,ebp
 0054D228    pop         ebp
 0054D229    ret         10
end;*}

//0054D22C
{*procedure TListViewStyleHook.WMMouseMove(?:?);
begin
 0054D22C    push        ebx
 0054D22D    push        esi
 0054D22E    push        edi
 0054D22F    add         esp,0FFFFFF88
 0054D232    mov         esi,edx
 0054D234    mov         ebx,eax
 0054D236    cmp         byte ptr [ebx+48],1C;TListViewStyleHook.FVertSliderState:TThemedScrollBar
>0054D23A    jne         0054D475
 0054D240    mov         dword ptr [esp+14],17
 0054D248    mov         dword ptr [esp+10],1C
 0054D250    lea         eax,[esp+10]
 0054D254    push        eax
 0054D255    push        1
 0054D257    mov         eax,ebx
 0054D259    call        TStyleHook.GetHandle
 0054D25E    push        eax
 0054D25F    call        user32.GetScrollInfo
 0054D264    lea         edx,[esp+5C]
 0054D268    mov         eax,[007C4DA0];^gvar_007CA5D4
 0054D26D    mov         eax,dword ptr [eax]
 0054D26F    call        TMouse.GetCursorPos
 0054D274    mov         eax,dword ptr [esp+60]
 0054D278    sub         eax,dword ptr [ebx+38]
 0054D27B    mov         dword ptr [esp+64],eax
 0054D27F    fild        dword ptr [esp+64]
 0054D283    fstp        tbyte ptr [esp+68]
 0054D287    wait
 0054D288    lea         edx,[esp+3C]
 0054D28C    mov         eax,ebx
 0054D28E    call        005CE75C
 0054D293    lea         eax,[esp+3C]
 0054D297    call        RectHeight
 0054D29C    mov         dword ptr [esp+74],eax
 0054D2A0    fild        dword ptr [esp+74]
 0054D2A4    fld         tbyte ptr [esp+68]
 0054D2A8    fdivrp      st(1),st
 0054D2AA    mov         eax,dword ptr [esp+1C]
 0054D2AE    sub         eax,dword ptr [esp+18]
 0054D2B2    mov         dword ptr [esp+64],eax
 0054D2B6    fild        dword ptr [esp+64]
 0054D2BA    fmulp       st(1),st
 0054D2BC    fadd        dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D2BF    fstp        dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D2C2    wait
 0054D2C3    lea         edx,[esp+5C]
 0054D2C7    mov         eax,[007C4DA0];^gvar_007CA5D4
 0054D2CC    mov         eax,dword ptr [eax]
 0054D2CE    call        TMouse.GetCursorPos
 0054D2D3    mov         eax,dword ptr [esp+60]
 0054D2D7    mov         dword ptr [ebx+38],eax;TListViewStyleHook.FPrevScrollPos:Integer
 0054D2DA    mov         eax,dword ptr [ebx+8];TListViewStyleHook.FControl:TWinControl
 0054D2DD    mov         edx,dword ptr ds:[52F86C];TCustomListView
 0054D2E3    call        @IsClass
 0054D2E8    test        al,al
>0054D2EA    je          0054D436
 0054D2F0    mov         eax,ebx
 0054D2F2    call        TStyleHook.GetHandle
 0054D2F7    mov         esi,eax
 0054D2F9    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D2FC    call        @ROUND
 0054D301    mov         word ptr [esp],5
 0054D307    mov         word ptr [esp+2],ax
 0054D30C    push        0
 0054D30E    mov         eax,dword ptr [esp+4]
 0054D312    push        eax
 0054D313    push        115
 0054D318    push        esi
 0054D319    call        user32.PostMessageW
 0054D31E    mov         eax,dword ptr [ebx+8];TListViewStyleHook.FControl:TWinControl
 0054D321    cmp         byte ptr [eax+29D],3
>0054D328    jne         0054D3F8
 0054D32E    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D331    fsub        dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D334    fabs
 0054D336    fld1
 0054D338    fcompp
 0054D33A    wait
 0054D33B    fnstsw      al
 0054D33D    sahf
>0054D33E    jbe         0054D37A
 0054D340    fild        dword ptr [esp+18]
 0054D344    fcomp       dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D347    wait
 0054D348    fnstsw      al
 0054D34A    sahf
>0054D34B    jne         0054D359
 0054D34D    fld         dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D350    fcomp       dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D353    wait
 0054D354    fnstsw      al
 0054D356    sahf
>0054D357    jne         0054D37A
 0054D359    fild        dword ptr [esp+1C]
 0054D35D    fcomp       dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D360    wait
 0054D361    fnstsw      al
 0054D363    sahf
>0054D364    jne         0054D465
 0054D36A    fld         dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D36D    fcomp       dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D370    wait
 0054D371    fnstsw      al
 0054D373    sahf
>0054D374    je          0054D465
 0054D37A    mov         eax,dword ptr [ebx+8];TListViewStyleHook.FControl:TWinControl
 0054D37D    cmp         byte ptr [eax+41C],0
>0054D384    je          0054D3A5
 0054D386    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D389    fsub        dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D38C    call        @ROUND
 0054D391    mov         esi,eax
 0054D393    mov         eax,dword ptr [esp+24]
 0054D397    add         eax,esi
 0054D399    test        eax,eax
>0054D39B    jge         0054D3D9
 0054D39D    mov         esi,dword ptr [esp+24]
 0054D3A1    neg         esi
>0054D3A3    jmp         0054D3D9
 0054D3A5    push        0
 0054D3A7    mov         eax,ebx
 0054D3A9    call        TStyleHook.GetHandle
 0054D3AE    lea         ecx,[esp+30]
 0054D3B2    xor         edx,edx
 0054D3B4    call        ListView_GetItemRect
 0054D3B9    lea         eax,[esp+2C]
 0054D3BD    call        RectHeight
 0054D3C2    mov         dword ptr [esp+64],eax
 0054D3C6    fild        dword ptr [esp+64]
 0054D3CA    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D3CD    fsub        dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D3D0    fmulp       st(1),st
 0054D3D2    call        @ROUND
 0054D3D7    mov         esi,eax
 0054D3D9    mov         eax,ebx
 0054D3DB    call        TStyleHook.GetHandle
 0054D3E0    mov         edi,eax
 0054D3E2    push        esi
 0054D3E3    push        0
 0054D3E5    push        1014
 0054D3EA    push        edi
 0054D3EB    call        user32.SendMessageW
 0054D3F0    mov         eax,dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D3F3    mov         dword ptr [ebx+34],eax;TListViewStyleHook.FListPos:Single
>0054D3F6    jmp         0054D465
 0054D3F8    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D3FB    fsub        dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D3FE    fabs
 0054D400    fld1
 0054D402    fcompp
 0054D404    wait
 0054D405    fnstsw      al
 0054D407    sahf
>0054D408    ja          0054D465
 0054D40A    mov         eax,ebx
 0054D40C    call        TStyleHook.GetHandle
 0054D411    mov         esi,eax
 0054D413    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D416    fsub        dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D419    call        @ROUND
 0054D41E    mov         edi,eax
 0054D420    push        edi
 0054D421    push        0
 0054D423    push        1014
 0054D428    push        esi
 0054D429    call        user32.SendMessageW
 0054D42E    mov         eax,dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D431    mov         dword ptr [ebx+34],eax;TListViewStyleHook.FListPos:Single
>0054D434    jmp         0054D465
 0054D436    mov         eax,ebx
 0054D438    call        TStyleHook.GetHandle
 0054D43D    mov         esi,eax
 0054D43F    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D442    call        @ROUND
 0054D447    mov         word ptr [esp+4],4
 0054D44E    mov         word ptr [esp+6],ax
 0054D453    push        0
 0054D455    mov         eax,dword ptr [esp+8]
 0054D459    push        eax
 0054D45A    push        115
 0054D45F    push        esi
 0054D460    call        user32.PostMessageW
 0054D465    mov         eax,ebx
 0054D467    mov         edx,dword ptr [eax]
 0054D469    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
 0054D46C    mov         byte ptr [ebx+14],1;TListViewStyleHook.FHandled:Boolean
>0054D470    jmp         0054D6CD
 0054D475    cmp         byte ptr [ebx+30],18;TListViewStyleHook.FHorzSliderState:TThemedScrollBar
>0054D479    jne         0054D629
 0054D47F    mov         dword ptr [esp+14],17
 0054D487    mov         dword ptr [esp+10],1C
 0054D48F    lea         eax,[esp+10]
 0054D493    push        eax
 0054D494    push        0
 0054D496    mov         eax,ebx
 0054D498    call        TStyleHook.GetHandle
 0054D49D    push        eax
 0054D49E    call        user32.GetScrollInfo
 0054D4A3    lea         edx,[esp+5C]
 0054D4A7    mov         eax,[007C4DA0];^gvar_007CA5D4
 0054D4AC    mov         eax,dword ptr [eax]
 0054D4AE    call        TMouse.GetCursorPos
 0054D4B3    mov         eax,dword ptr [esp+5C]
 0054D4B7    sub         eax,dword ptr [ebx+38]
 0054D4BA    mov         dword ptr [esp+64],eax
 0054D4BE    fild        dword ptr [esp+64]
 0054D4C2    fstp        tbyte ptr [esp+68]
 0054D4C6    wait
 0054D4C7    lea         edx,[esp+4C]
 0054D4CB    mov         eax,ebx
 0054D4CD    call        005CE9D4
 0054D4D2    lea         eax,[esp+4C]
 0054D4D6    call        RectWidth
 0054D4DB    mov         dword ptr [esp+74],eax
 0054D4DF    fild        dword ptr [esp+74]
 0054D4E3    fld         tbyte ptr [esp+68]
 0054D4E7    fdivrp      st(1),st
 0054D4E9    mov         eax,dword ptr [esp+1C]
 0054D4ED    sub         eax,dword ptr [esp+18]
 0054D4F1    mov         dword ptr [esp+64],eax
 0054D4F5    fild        dword ptr [esp+64]
 0054D4F9    fmulp       st(1),st
 0054D4FB    fadd        dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D4FE    fstp        dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D501    wait
 0054D502    fild        dword ptr [esp+18]
 0054D506    fcomp       dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D509    wait
 0054D50A    fnstsw      al
 0054D50C    sahf
>0054D50D    jbe         0054D517
 0054D50F    fild        dword ptr [esp+18]
 0054D513    fstp        dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D516    wait
 0054D517    fild        dword ptr [esp+1C]
 0054D51B    fcomp       dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D51E    wait
 0054D51F    fnstsw      al
 0054D521    sahf
>0054D522    jae         0054D52C
 0054D524    fild        dword ptr [esp+1C]
 0054D528    fstp        dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D52B    wait
 0054D52C    lea         edx,[esp+5C]
 0054D530    mov         eax,[007C4DA0];^gvar_007CA5D4
 0054D535    mov         eax,dword ptr [eax]
 0054D537    call        TMouse.GetCursorPos
 0054D53C    mov         eax,dword ptr [esp+5C]
 0054D540    mov         dword ptr [ebx+38],eax;TListViewStyleHook.FPrevScrollPos:Integer
 0054D543    mov         esi,dword ptr [ebx+8];TListViewStyleHook.FControl:TWinControl
 0054D546    mov         eax,esi
 0054D548    mov         edx,dword ptr ds:[52F86C];TCustomListView
 0054D54E    call        @IsClass
 0054D553    test        al,al
>0054D555    je          0054D5EA
 0054D55B    cmp         byte ptr [esi+29D],3
>0054D562    jne         0054D5A6
 0054D564    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D567    fsub        dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D56A    fabs
 0054D56C    fld1
 0054D56E    fcompp
 0054D570    wait
 0054D571    fnstsw      al
 0054D573    sahf
>0054D574    ja          0054D619
 0054D57A    mov         eax,ebx
 0054D57C    call        TStyleHook.GetHandle
 0054D581    mov         esi,eax
 0054D583    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D586    fsub        dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D589    call        @ROUND
 0054D58E    mov         edi,eax
 0054D590    push        0
 0054D592    push        edi
 0054D593    push        1014
 0054D598    push        esi
 0054D599    call        user32.SendMessageW
 0054D59E    mov         eax,dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D5A1    mov         dword ptr [ebx+34],eax;TListViewStyleHook.FListPos:Single
>0054D5A4    jmp         0054D619
 0054D5A6    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D5A9    fsub        dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D5AC    fabs
 0054D5AE    fcomp       dword ptr ds:[54D6D4];0,5:Single
 0054D5B4    wait
 0054D5B5    fnstsw      al
 0054D5B7    sahf
>0054D5B8    jb          0054D619
 0054D5BA    mov         eax,ebx
 0054D5BC    call        TStyleHook.GetHandle
 0054D5C1    mov         esi,eax
 0054D5C3    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D5C6    fsub        dword ptr [ebx+34];TListViewStyleHook.FListPos:Single
 0054D5C9    call        @ROUND
 0054D5CE    mov         edi,eax
 0054D5D0    push        0
 0054D5D2    push        edi
 0054D5D3    push        1014
 0054D5D8    push        esi
 0054D5D9    call        user32.SendMessageW
 0054D5DE    mov         dword ptr [esp+8],eax
 0054D5E2    mov         eax,dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D5E5    mov         dword ptr [ebx+34],eax;TListViewStyleHook.FListPos:Single
>0054D5E8    jmp         0054D619
 0054D5EA    mov         eax,ebx
 0054D5EC    call        TStyleHook.GetHandle
 0054D5F1    mov         esi,eax
 0054D5F3    fld         dword ptr [ebx+3C];TListViewStyleHook.FScrollPos:Single
 0054D5F6    call        @ROUND
 0054D5FB    mov         word ptr [esp+0C],4
 0054D602    mov         word ptr [esp+0E],ax
 0054D607    push        0
 0054D609    mov         eax,dword ptr [esp+10]
 0054D60D    push        eax
 0054D60E    push        114
 0054D613    push        esi
 0054D614    call        user32.PostMessageW
 0054D619    mov         eax,ebx
 0054D61B    mov         edx,dword ptr [eax]
 0054D61D    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
 0054D620    mov         byte ptr [ebx+14],1;TListViewStyleHook.FHandled:Boolean
>0054D624    jmp         0054D6CD
 0054D629    movzx       eax,byte ptr [ebx+30];TListViewStyleHook.FHorzSliderState:TThemedScrollBar
 0054D62D    cmp         al,18
>0054D62F    je          0054D640
 0054D631    cmp         al,17
>0054D633    jne         0054D640
 0054D635    mov         byte ptr [ebx+30],16;TListViewStyleHook.FHorzSliderState:TThemedScrollBar
 0054D639    mov         eax,ebx
 0054D63B    mov         edx,dword ptr [eax]
 0054D63D    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
 0054D640    movzx       eax,byte ptr [ebx+48];TListViewStyleHook.FVertSliderState:TThemedScrollBar
 0054D644    cmp         al,1C
>0054D646    je          0054D657
 0054D648    cmp         al,1B
>0054D64A    jne         0054D657
 0054D64C    mov         byte ptr [ebx+48],1A;TListViewStyleHook.FVertSliderState:TThemedScrollBar
 0054D650    mov         eax,ebx
 0054D652    mov         edx,dword ptr [eax]
 0054D654    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
 0054D657    movzx       eax,byte ptr [ebx+31];TListViewStyleHook.FHorzUpState:TThemedScrollBar
 0054D65B    cmp         al,0C
>0054D65D    je          0054D66E
 0054D65F    cmp         al,0B
>0054D661    jne         0054D66E
 0054D663    mov         byte ptr [ebx+31],0A;TListViewStyleHook.FHorzUpState:TThemedScrollBar
 0054D667    mov         eax,ebx
 0054D669    mov         edx,dword ptr [eax]
 0054D66B    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
 0054D66E    movzx       eax,byte ptr [ebx+28];TListViewStyleHook.FHorzDownState:TThemedScrollBar
 0054D672    cmp         al,10
>0054D674    je          0054D685
 0054D676    cmp         al,0F
>0054D678    jne         0054D685
 0054D67A    mov         byte ptr [ebx+28],0E;TListViewStyleHook.FHorzDownState:TThemedScrollBar
 0054D67E    mov         eax,ebx
 0054D680    mov         edx,dword ptr [eax]
 0054D682    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
 0054D685    movzx       eax,byte ptr [ebx+49];TListViewStyleHook.FVertUpState:TThemedScrollBar
 0054D689    cmp         al,4
>0054D68B    je          0054D69C
 0054D68D    cmp         al,3
>0054D68F    jne         0054D69C
 0054D691    mov         byte ptr [ebx+49],2;TListViewStyleHook.FVertUpState:TThemedScrollBar
 0054D695    mov         eax,ebx
 0054D697    mov         edx,dword ptr [eax]
 0054D699    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
 0054D69C    movzx       eax,byte ptr [ebx+40];TListViewStyleHook.FVertDownState:TThemedScrollBar
 0054D6A0    cmp         al,8
>0054D6A2    je          0054D6B3
 0054D6A4    cmp         al,7
>0054D6A6    jne         0054D6B3
 0054D6A8    mov         byte ptr [ebx+40],6;TListViewStyleHook.FVertDownState:TThemedScrollBar
 0054D6AC    mov         eax,ebx
 0054D6AE    mov         edx,dword ptr [eax]
 0054D6B0    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
 0054D6B3    mov         edx,esi
 0054D6B5    mov         eax,ebx
 0054D6B7    call        TStyleHook.CallDefaultProc
 0054D6BC    cmp         byte ptr [ebx+32],0;TListViewStyleHook.FLeftButtonDown:Boolean
>0054D6C0    je          0054D6C9
 0054D6C2    mov         eax,ebx
 0054D6C4    mov         edx,dword ptr [eax]
 0054D6C6    call        dword ptr [edx+4C];TListViewStyleHook.sub_005CEA7C
 0054D6C9    mov         byte ptr [ebx+14],1;TListViewStyleHook.FHandled:Boolean
 0054D6CD    add         esp,78
 0054D6D0    pop         edi
 0054D6D1    pop         esi
 0054D6D2    pop         ebx
 0054D6D3    ret
end;*}

//0054D6D8
constructor TProgressBarStyleHook.Create(AControl:TWinControl);
begin
{*
 0054D6D8    push        ebx
 0054D6D9    push        esi
 0054D6DA    test        dl,dl
>0054D6DC    je          0054D6E6
 0054D6DE    add         esp,0FFFFFFF0
 0054D6E1    call        @ClassCreate
 0054D6E6    mov         ebx,edx
 0054D6E8    mov         esi,eax
 0054D6EA    xor         edx,edx
 0054D6EC    mov         eax,esi
 0054D6EE    call        TStyleHook.Create
 0054D6F3    mov         byte ptr [esi+17],1;TProgressBarStyleHook.FOverridePaint:Boolean
 0054D6F7    mov         byte ptr [esi+0D],1;TProgressBarStyleHook.FDoubleBuffered:Boolean
 0054D6FB    mov         eax,esi
 0054D6FD    test        bl,bl
>0054D6FF    je          0054D710
 0054D701    call        @AfterConstruction
 0054D706    pop         dword ptr fs:[0]
 0054D70D    add         esp,0C
 0054D710    mov         eax,esi
 0054D712    pop         esi
 0054D713    pop         ebx
 0054D714    ret
*}
end;

//0054D718
procedure sub_0054D718(?:TProgressBarStyleHook);
begin
{*
 0054D718    push        ebx
 0054D719    push        esi
 0054D71A    push        edi
 0054D71B    add         esp,0FFFFFFF4
 0054D71E    mov         esi,eax
 0054D720    mov         eax,esi
 0054D722    call        0054D9A8
 0054D727    mov         ebx,eax
 0054D729    mov         eax,esi
 0054D72B    call        0054D98C
 0054D730    mov         edi,eax
 0054D732    mov         eax,esi
 0054D734    call        0054D9F4
 0054D739    test        ebx,ebx
>0054D73B    jl          0054D767
 0054D73D    cmp         ebx,eax
>0054D73F    jg          0054D767
 0054D741    cmp         eax,edi
>0054D743    jg          0054D767
 0054D745    mov         edx,edi
 0054D747    sub         edx,ebx
>0054D749    je          0054D767
 0054D74B    sub         eax,ebx
 0054D74D    mov         dword ptr [esp+4],eax
 0054D751    fild        dword ptr [esp+4]
 0054D755    sub         edi,ebx
 0054D757    mov         dword ptr [esp+8],edi
 0054D75B    fild        dword ptr [esp+8]
 0054D75F    fdivp       st(1),st
 0054D761    fstp        dword ptr [esp]
 0054D764    wait
>0054D765    jmp         0054D76C
 0054D767    xor         eax,eax
 0054D769    mov         dword ptr [esp],eax
 0054D76C    fld         dword ptr [esp]
 0054D76F    add         esp,0C
 0054D772    pop         edi
 0054D773    pop         esi
 0054D774    pop         ebx
 0054D775    ret
*}
end;

//0054D778
{*procedure sub_0054D778(?:TProgressBarStyleHook; ?:?);
begin
 0054D778    push        ebx
 0054D779    push        esi
 0054D77A    push        edi
 0054D77B    mov         esi,edx
 0054D77D    mov         ebx,eax
 0054D77F    mov         edi,dword ptr [ebx+8]
 0054D782    mov         eax,dword ptr [edi+58]
 0054D785    push        eax
 0054D786    mov         eax,dword ptr [edi+5C]
 0054D789    push        eax
 0054D78A    mov         eax,esi
 0054D78C    xor         ecx,ecx
 0054D78E    xor         edx,edx
 0054D790    call        TRect.Create
 0054D795    mov         eax,ebx
 0054D797    call        0054DA10
 0054D79C    neg         eax
 0054D79E    push        eax
 0054D79F    mov         eax,ebx
 0054D7A1    call        0054DA10
 0054D7A6    mov         edx,eax
 0054D7A8    neg         edx
 0054D7AA    mov         eax,esi
 0054D7AC    pop         ecx
 0054D7AD    call        InflateRect
 0054D7B2    pop         edi
 0054D7B3    pop         esi
 0054D7B4    pop         ebx
 0054D7B5    ret
end;*}

//0054D7B8
{*procedure TProgressBarStyleHook.WMNCCalcSize(?:?);
begin
 0054D7B8    xor         ecx,ecx
 0054D7BA    mov         dword ptr [edx+0C],ecx
 0054D7BD    mov         byte ptr [eax+14],1;TProgressBarStyleHook.FHandled:Boolean
 0054D7C1    ret
end;*}

//0054D7C4
procedure sub_0054D7C4;
begin
{*
 0054D7C4    call        0058D8DC
 0054D7C9    ret
*}
end;

//0054D7CC
{*procedure sub_0054D7CC(?:?);
begin
 0054D7CC    push        ebx
 0054D7CD    push        esi
 0054D7CE    add         esp,0FFFFFFE4
 0054D7D1    mov         esi,edx
 0054D7D3    mov         ebx,eax
 0054D7D5    call        StyleServices
 0054D7DA    mov         edx,dword ptr [eax]
 0054D7DC    call        dword ptr [edx+48];@AbstractError
 0054D7DF    test        al,al
>0054D7E1    je          0054D839
 0054D7E3    mov         edx,esp
 0054D7E5    mov         eax,ebx
 0054D7E7    call        0054D778
 0054D7EC    mov         eax,ebx
 0054D7EE    call        0054D9C4
 0054D7F3    test        al,al
>0054D7F5    jne         0054D80C
 0054D7F7    call        StyleServices
 0054D7FC    lea         ecx,[esp+10]
 0054D800    mov         dl,2
 0054D802    mov         ebx,dword ptr [eax]
 0054D804    call        dword ptr [ebx+0BC];TCustomStyleServices.GetElementDetails
>0054D80A    jmp         0054D81F
 0054D80C    call        StyleServices
 0054D811    lea         ecx,[esp+10]
 0054D815    mov         dl,3
 0054D817    mov         ebx,dword ptr [eax]
 0054D819    call        dword ptr [ebx+0BC];TCustomStyleServices.GetElementDetails
 0054D81F    push        esp
 0054D820    push        0
 0054D822    mov         eax,esi
 0054D824    call        TCanvas.GetHandle
 0054D829    push        eax
 0054D82A    call        StyleServices
 0054D82F    lea         ecx,[esp+1C]
 0054D833    pop         edx
 0054D834    call        TCustomStyleServices.DrawElement
 0054D839    add         esp,1C
 0054D83C    pop         esi
 0054D83D    pop         ebx
 0054D83E    ret
end;*}

//0054D840
{*procedure sub_0054D840(?:?);
begin
 0054D840    push        ebx
 0054D841    push        esi
 0054D842    push        edi
 0054D843    add         esp,0FFFFFFD0
 0054D846    mov         edi,edx
 0054D848    mov         ebx,eax
 0054D84A    call        StyleServices
 0054D84F    mov         edx,dword ptr [eax]
 0054D851    call        dword ptr [edx+48];@AbstractError
 0054D854    test        al,al
>0054D856    je          0054D91F
 0054D85C    lea         edx,[esp+10]
 0054D860    mov         eax,ebx
 0054D862    call        0054D778
 0054D867    lea         eax,[esp+10]
 0054D86B    or          ecx,0FFFFFFFF
 0054D86E    or          edx,0FFFFFFFF
 0054D871    call        InflateRect
 0054D876    mov         eax,ebx
 0054D878    call        0054D9C4
 0054D87D    test        al,al
>0054D87F    jne         0054D88E
 0054D881    lea         eax,[esp+10]
 0054D885    call        RectWidth
 0054D88A    mov         esi,eax
>0054D88C    jmp         0054D899
 0054D88E    lea         eax,[esp+10]
 0054D892    call        RectHeight
 0054D897    mov         esi,eax
 0054D899    mov         eax,ebx
 0054D89B    call        0054D718
 0054D8A0    mov         dword ptr [esp+2C],esi
 0054D8A4    fild        dword ptr [esp+2C]
 0054D8A8    fmulp       st(1),st
 0054D8AA    call        @ROUND
 0054D8AF    mov         esi,eax
 0054D8B1    push        esi
 0054D8B2    push        edi
 0054D8B3    lea         esi,[esp+18]
 0054D8B7    lea         edi,[esp+8]
 0054D8BB    movs        dword ptr [edi],dword ptr [esi]
 0054D8BC    movs        dword ptr [edi],dword ptr [esi]
 0054D8BD    movs        dword ptr [edi],dword ptr [esi]
 0054D8BE    movs        dword ptr [edi],dword ptr [esi]
 0054D8BF    pop         edi
 0054D8C0    pop         esi
 0054D8C1    mov         eax,ebx
 0054D8C3    call        0054D9C4
 0054D8C8    test        al,al
>0054D8CA    jne         0054D8E8
 0054D8CC    add         esi,dword ptr [esp]
 0054D8CF    mov         dword ptr [esp+8],esi
 0054D8D3    call        StyleServices
 0054D8D8    lea         ecx,[esp+20]
 0054D8DC    mov         dl,4
 0054D8DE    mov         ebx,dword ptr [eax]
 0054D8E0    call        dword ptr [ebx+0BC];TCustomStyleServices.GetElementDetails
>0054D8E6    jmp         0054D905
 0054D8E8    mov         eax,dword ptr [esp+0C]
 0054D8EC    sub         eax,esi
 0054D8EE    mov         dword ptr [esp+4],eax
 0054D8F2    call        StyleServices
 0054D8F7    lea         ecx,[esp+20]
 0054D8FB    mov         dl,5
 0054D8FD    mov         ebx,dword ptr [eax]
 0054D8FF    call        dword ptr [ebx+0BC];TCustomStyleServices.GetElementDetails
 0054D905    push        esp
 0054D906    push        0
 0054D908    mov         eax,edi
 0054D90A    call        TCanvas.GetHandle
 0054D90F    push        eax
 0054D910    call        StyleServices
 0054D915    lea         ecx,[esp+2C]
 0054D919    pop         edx
 0054D91A    call        TCustomStyleServices.DrawElement
 0054D91F    add         esp,30
 0054D922    pop         edi
 0054D923    pop         esi
 0054D924    pop         ebx
 0054D925    ret
end;*}

//0054D928
{*procedure sub_0054D928(?:?);
begin
 0054D928    push        ebx
 0054D929    push        esi
 0054D92A    add         esp,0FFFFFFF4
 0054D92D    mov         esi,edx
 0054D92F    mov         ebx,eax
 0054D931    call        StyleServices
 0054D936    mov         edx,dword ptr [eax]
 0054D938    call        dword ptr [edx+48];@AbstractError
 0054D93B    test        al,al
>0054D93D    je          0054D974
 0054D93F    mov         byte ptr [esp],0F
 0054D943    call        StyleServices
 0054D948    mov         edx,esp
 0054D94A    call        TCustomStyleServices.HasTransparentParts
 0054D94F    test        al,al
>0054D951    je          0054D974
 0054D953    push        esp
 0054D954    push        0
 0054D956    push        0
 0054D958    mov         eax,esi
 0054D95A    call        TCanvas.GetHandle
 0054D95F    push        eax
 0054D960    mov         eax,ebx
 0054D962    call        TStyleHook.GetHandle
 0054D967    push        eax
 0054D968    call        StyleServices
 0054D96D    pop         edx
 0054D96E    pop         ecx
 0054D96F    call        TCustomStyleServices.DrawParentBackground
 0054D974    mov         edx,esi
 0054D976    mov         eax,ebx
 0054D978    mov         ecx,dword ptr [eax]
 0054D97A    call        dword ptr [ecx+34];TProgressBarStyleHook.sub_0054D7CC
 0054D97D    mov         edx,esi
 0054D97F    mov         eax,ebx
 0054D981    mov         ecx,dword ptr [eax]
 0054D983    call        dword ptr [ecx+30];TProgressBarStyleHook.sub_0054D840
 0054D986    add         esp,0C
 0054D989    pop         esi
 0054D98A    pop         ebx
 0054D98B    ret
end;*}

//0054D98C
{*function sub_0054D98C(?:?):?;
begin
 0054D98C    push        ebx
 0054D98D    mov         ebx,eax
 0054D98F    push        0
 0054D991    push        0
 0054D993    push        407
 0054D998    mov         eax,ebx
 0054D99A    call        TStyleHook.GetHandle
 0054D99F    push        eax
 0054D9A0    call        user32.SendMessageW
 0054D9A5    pop         ebx
 0054D9A6    ret
end;*}

//0054D9A8
{*function sub_0054D9A8(?:?):?;
begin
 0054D9A8    push        ebx
 0054D9A9    mov         ebx,eax
 0054D9AB    push        0
 0054D9AD    push        1
 0054D9AF    push        407
 0054D9B4    mov         eax,ebx
 0054D9B6    call        TStyleHook.GetHandle
 0054D9BB    push        eax
 0054D9BC    call        user32.SendMessageW
 0054D9C1    pop         ebx
 0054D9C2    ret
end;*}

//0054D9C4
{*function sub_0054D9C4(?:TProgressBarStyleHook):?;
begin
 0054D9C4    push        ebx
 0054D9C5    push        esi
 0054D9C6    mov         esi,eax
 0054D9C8    xor         ebx,ebx
 0054D9CA    mov         eax,esi
 0054D9CC    call        TStyleHook.GetHandle
 0054D9D1    test        eax,eax
>0054D9D3    je          0054D9EE
 0054D9D5    mov         eax,esi
 0054D9D7    call        TStyleHook.GetHandle
 0054D9DC    push        0F0
 0054D9DE    push        eax
 0054D9DF    call        user32.GetWindowLongW
 0054D9E4    and         eax,4
 0054D9E7    cmp         eax,4
>0054D9EA    jne         0054D9EE
 0054D9EC    mov         bl,1
 0054D9EE    mov         eax,ebx
 0054D9F0    pop         esi
 0054D9F1    pop         ebx
 0054D9F2    ret
end;*}

//0054D9F4
{*function sub_0054D9F4(?:?):?;
begin
 0054D9F4    push        ebx
 0054D9F5    mov         ebx,eax
 0054D9F7    push        0
 0054D9F9    push        0
 0054D9FB    push        408
 0054DA00    mov         eax,ebx
 0054DA02    call        TStyleHook.GetHandle
 0054DA07    push        eax
 0054DA08    call        user32.SendMessageW
 0054DA0D    pop         ebx
 0054DA0E    ret
end;*}

//0054DA10
{*function sub_0054DA10:?;
begin
 0054DA10    xor         eax,eax
 0054DA12    ret
end;*}

//0054DA14
constructor TStatusBarStyleHook.Create(AControl:TWinControl);
begin
{*
 0054DA14    push        ebx
 0054DA15    push        esi
 0054DA16    test        dl,dl
>0054DA18    je          0054DA22
 0054DA1A    add         esp,0FFFFFFF0
 0054DA1D    call        @ClassCreate
 0054DA22    mov         ebx,edx
 0054DA24    mov         esi,eax
 0054DA26    xor         edx,edx
 0054DA28    mov         eax,esi
 0054DA2A    call        TStyleHook.Create
 0054DA2F    mov         byte ptr [esi+17],1;TStatusBarStyleHook.FOverridePaint:Boolean
 0054DA33    mov         byte ptr [esi+0D],1;TStatusBarStyleHook.FDoubleBuffered:Boolean
 0054DA37    mov         eax,esi
 0054DA39    test        bl,bl
>0054DA3B    je          0054DA4C
 0054DA3D    call        @AfterConstruction
 0054DA42    pop         dword ptr fs:[0]
 0054DA49    add         esp,0C
 0054DA4C    mov         eax,esi
 0054DA4E    pop         esi
 0054DA4F    pop         ebx
 0054DA50    ret
*}
end;

//0054DA54
{*procedure sub_0054DA54(?:?);
begin
 0054DA54    push        ebp
 0054DA55    mov         ebp,esp
 0054DA57    add         esp,0FFFFFF9C
 0054DA5A    push        ebx
 0054DA5B    push        esi
 0054DA5C    push        edi
 0054DA5D    xor         ecx,ecx
 0054DA5F    mov         dword ptr [ebp-4],ecx
 0054DA62    mov         dword ptr [ebp-0C],edx
 0054DA65    mov         dword ptr [ebp-8],eax
 0054DA68    xor         eax,eax
 0054DA6A    push        ebp
 0054DA6B    push        54DFC5
 0054DA70    push        dword ptr fs:[eax]
 0054DA73    mov         dword ptr fs:[eax],esp
 0054DA76    call        StyleServices
 0054DA7B    mov         edx,dword ptr [eax]
 0054DA7D    call        dword ptr [edx+48];@AbstractError
 0054DA80    test        al,al
>0054DA82    je          0054DFAF
 0054DA88    call        StyleServices
 0054DA8D    lea         ecx,[ebp-48]
 0054DA90    mov         dl,1
 0054DA92    mov         ebx,dword ptr [eax]
 0054DA94    call        dword ptr [ebx+0D4];TCustomStyleServices.GetElementDetails
 0054DA9A    mov         eax,dword ptr [ebp-8]
 0054DA9D    mov         ebx,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DAA0    mov         eax,dword ptr [ebx+5C];TWinControl.FHeight:Integer
 0054DAA3    push        eax
 0054DAA4    lea         eax,[ebp-64]
 0054DAA7    push        eax
 0054DAA8    mov         ecx,dword ptr [ebx+58];TWinControl.FWidth:Integer
 0054DAAB    xor         edx,edx
 0054DAAD    xor         eax,eax
 0054DAAF    call        Rect
 0054DAB4    lea         eax,[ebp-64]
 0054DAB7    push        eax
 0054DAB8    push        0
 0054DABA    mov         eax,dword ptr [ebp-0C]
 0054DABD    call        TCanvas.GetHandle
 0054DAC2    push        eax
 0054DAC3    call        StyleServices
 0054DAC8    lea         ecx,[ebp-48]
 0054DACB    pop         edx
 0054DACC    call        TCustomStyleServices.DrawElement
 0054DAD1    push        0
 0054DAD3    push        0
 0054DAD5    push        40E
 0054DADA    mov         eax,dword ptr [ebp-8]
 0054DADD    call        TStyleHook.GetHandle
 0054DAE2    push        eax
 0054DAE3    call        user32.SendMessageW
 0054DAE8    test        eax,eax
>0054DAEA    jle         0054DC4C
 0054DAF0    lea         edx,[ebp-2C]
 0054DAF3    mov         eax,dword ptr [ebp-8]
 0054DAF6    mov         eax,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DAF9    mov         ecx,dword ptr [eax]
 0054DAFB    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054DAFE    lea         eax,[ebp-54]
 0054DB01    xor         ecx,ecx
 0054DB03    mov         edx,0C
 0054DB08    call        @FillChar
 0054DB0D    lea         eax,[ebp-54]
 0054DB10    push        eax
 0054DB11    push        0
 0054DB13    push        407
 0054DB18    mov         eax,dword ptr [ebp-8]
 0054DB1B    call        TStyleHook.GetHandle
 0054DB20    push        eax
 0054DB21    call        user32.SendMessageW
 0054DB26    mov         eax,dword ptr [ebp-54]
 0054DB29    mov         edx,dword ptr [ebp-4C]
 0054DB2C    add         eax,edx
 0054DB2E    mov         dword ptr [ebp-2C],eax
 0054DB31    mov         eax,dword ptr [ebp-50]
 0054DB34    mov         dword ptr [ebp-28],eax
 0054DB37    sub         dword ptr [ebp-20],eax
 0054DB3A    sub         dword ptr [ebp-24],edx
 0054DB3D    call        StyleServices
 0054DB42    lea         ecx,[ebp-48]
 0054DB45    mov         dl,2
 0054DB47    mov         ebx,dword ptr [eax]
 0054DB49    call        dword ptr [ebx+0D4];TCustomStyleServices.GetElementDetails
 0054DB4F    lea         eax,[ebp-2C]
 0054DB52    push        eax
 0054DB53    push        0
 0054DB55    mov         eax,dword ptr [ebp-0C]
 0054DB58    call        TCanvas.GetHandle
 0054DB5D    push        eax
 0054DB5E    call        StyleServices
 0054DB63    lea         ecx,[ebp-48]
 0054DB66    pop         edx
 0054DB67    call        TCustomStyleServices.DrawElement
 0054DB6C    lea         edx,[ebp-3C]
 0054DB6F    mov         eax,dword ptr [ebp-8]
 0054DB72    mov         eax,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DB75    mov         ecx,dword ptr [eax]
 0054DB77    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054DB7A    lea         eax,[ebp-2C]
 0054DB7D    call        RectHeight
 0054DB82    mov         edx,dword ptr [ebp-34]
 0054DB85    sub         edx,eax
 0054DB87    mov         dword ptr [ebp-3C],edx
 0054DB8A    call        StyleServices
 0054DB8F    lea         ecx,[ebp-48]
 0054DB92    mov         dl,4
 0054DB94    mov         ebx,dword ptr [eax]
 0054DB96    call        dword ptr [ebx+0D4];TCustomStyleServices.GetElementDetails
 0054DB9C    lea         eax,[ebp-3C]
 0054DB9F    push        eax
 0054DBA0    push        0
 0054DBA2    mov         eax,dword ptr [ebp-0C]
 0054DBA5    call        TCanvas.GetHandle
 0054DBAA    push        eax
 0054DBAB    call        StyleServices
 0054DBB0    lea         ecx,[ebp-48]
 0054DBB3    pop         edx
 0054DBB4    call        TCustomStyleServices.DrawElement
 0054DBB9    call        StyleServices
 0054DBBE    lea         ecx,[ebp-48]
 0054DBC1    mov         dl,2
 0054DBC3    mov         ebx,dword ptr [eax]
 0054DBC5    call        dword ptr [ebx+0D4];TCustomStyleServices.GetElementDetails
 0054DBCB    push        0
 0054DBCD    push        0
 0054DBCF    push        40C
 0054DBD4    mov         eax,dword ptr [ebp-8]
 0054DBD7    call        TStyleHook.GetHandle
 0054DBDC    push        eax
 0054DBDD    call        user32.SendMessageW
 0054DBE2    mov         edx,eax
 0054DBE4    movzx       edx,dx
 0054DBE7    lea         eax,[ebp-4]
 0054DBEA    call        @UStrSetLength
 0054DBEF    mov         eax,dword ptr [ebp-4]
 0054DBF2    test        eax,eax
>0054DBF4    je          0054DBFB
 0054DBF6    sub         eax,4
 0054DBF9    mov         eax,dword ptr [eax]
 0054DBFB    test        eax,eax
>0054DBFD    jle         0054DFAF
 0054DC03    lea         eax,[ebp-4]
 0054DC06    call        @UniqueStringU
 0054DC0B    push        eax
 0054DC0C    push        0
 0054DC0E    push        40D
 0054DC13    mov         eax,dword ptr [ebp-8]
 0054DC16    call        TStyleHook.GetHandle
 0054DC1B    push        eax
 0054DC1C    call        user32.SendMessageW
 0054DC21    mov         eax,dword ptr [ebp-8]
 0054DC24    mov         eax,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DC27    xor         edx,edx
 0054DC29    call        TControl.DrawTextBiDiModeFlags
 0054DC2E    mov         esi,eax
 0054DC30    mov         eax,dword ptr [ebp-4]
 0054DC33    push        eax
 0054DC34    lea         eax,[ebp-2C]
 0054DC37    push        eax
 0054DC38    push        esi
 0054DC39    lea         ecx,[ebp-48]
 0054DC3C    mov         edx,dword ptr [ebp-0C]
 0054DC3F    mov         eax,dword ptr [ebp-8]
 0054DC42    call        TStyleHook.DrawControlText
>0054DC47    jmp         0054DFAF
 0054DC4C    mov         eax,dword ptr [ebp-8]
 0054DC4F    mov         ebx,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DC52    mov         eax,ebx
 0054DC54    mov         edx,dword ptr ds:[5211EC];TStatusBar
 0054DC5A    call        @IsClass
 0054DC5F    test        al,al
>0054DC61    je          0054DC74
 0054DC63    mov         eax,dword ptr [ebx+290]
 0054DC69    mov         eax,dword ptr [eax+8]
 0054DC6C    mov         eax,dword ptr [eax+8]
 0054DC6F    mov         dword ptr [ebp-10],eax
>0054DC72    jmp         0054DC8E
 0054DC74    push        0
 0054DC76    push        0
 0054DC78    push        406
 0054DC7D    mov         eax,dword ptr [ebp-8]
 0054DC80    call        TStyleHook.GetHandle
 0054DC85    push        eax
 0054DC86    call        user32.SendMessageW
 0054DC8B    mov         dword ptr [ebp-10],eax
 0054DC8E    mov         eax,dword ptr [ebp-10]
 0054DC91    dec         eax
 0054DC92    test        eax,eax
>0054DC94    jl          0054DFAF
 0054DC9A    inc         eax
 0054DC9B    mov         dword ptr [ebp-1C],eax
 0054DC9E    mov         dword ptr [ebp-14],0
 0054DCA5    push        0
 0054DCA7    lea         eax,[ebp-2C]
 0054DCAA    push        eax
 0054DCAB    xor         ecx,ecx
 0054DCAD    xor         edx,edx
 0054DCAF    xor         eax,eax
 0054DCB1    call        Rect
 0054DCB6    lea         eax,[ebp-2C]
 0054DCB9    push        eax
 0054DCBA    mov         eax,dword ptr [ebp-14]
 0054DCBD    push        eax
 0054DCBE    push        40A
 0054DCC3    mov         eax,dword ptr [ebp-8]
 0054DCC6    call        TStyleHook.GetHandle
 0054DCCB    push        eax
 0054DCCC    call        user32.SendMessageW
 0054DCD1    lea         eax,[ebp-2C]
 0054DCD4    call        IsRectEmpty
 0054DCD9    test        al,al
>0054DCDB    jne         0054DFAF
 0054DCE1    call        StyleServices
 0054DCE6    lea         ecx,[ebp-48]
 0054DCE9    mov         dl,2
 0054DCEB    mov         ebx,dword ptr [eax]
 0054DCED    call        dword ptr [ebx+0D4];TCustomStyleServices.GetElementDetails
 0054DCF3    lea         eax,[ebp-2C]
 0054DCF6    push        eax
 0054DCF7    push        0
 0054DCF9    mov         eax,dword ptr [ebp-0C]
 0054DCFC    call        TCanvas.GetHandle
 0054DD01    push        eax
 0054DD02    call        StyleServices
 0054DD07    lea         ecx,[ebp-48]
 0054DD0A    pop         edx
 0054DD0B    call        TCustomStyleServices.DrawElement
 0054DD10    mov         eax,dword ptr [ebp-10]
 0054DD13    dec         eax
 0054DD14    cmp         eax,dword ptr [ebp-14]
>0054DD17    jne         0054DD66
 0054DD19    lea         edx,[ebp-3C]
 0054DD1C    mov         eax,dword ptr [ebp-8]
 0054DD1F    mov         eax,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DD22    mov         ecx,dword ptr [eax]
 0054DD24    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054DD27    lea         eax,[ebp-2C]
 0054DD2A    call        RectHeight
 0054DD2F    mov         edx,dword ptr [ebp-34]
 0054DD32    sub         edx,eax
 0054DD34    mov         dword ptr [ebp-3C],edx
 0054DD37    call        StyleServices
 0054DD3C    lea         ecx,[ebp-48]
 0054DD3F    mov         dl,4
 0054DD41    mov         ebx,dword ptr [eax]
 0054DD43    call        dword ptr [ebx+0D4];TCustomStyleServices.GetElementDetails
 0054DD49    lea         eax,[ebp-3C]
 0054DD4C    push        eax
 0054DD4D    push        0
 0054DD4F    mov         eax,dword ptr [ebp-0C]
 0054DD52    call        TCanvas.GetHandle
 0054DD57    push        eax
 0054DD58    call        StyleServices
 0054DD5D    lea         ecx,[ebp-48]
 0054DD60    pop         edx
 0054DD61    call        TCustomStyleServices.DrawElement
 0054DD66    call        StyleServices
 0054DD6B    lea         ecx,[ebp-48]
 0054DD6E    mov         dl,2
 0054DD70    mov         ebx,dword ptr [eax]
 0054DD72    call        dword ptr [ebx+0D4];TCustomStyleServices.GetElementDetails
 0054DD78    lea         eax,[ebp-2C]
 0054DD7B    or          ecx,0FFFFFFFF
 0054DD7E    or          edx,0FFFFFFFF
 0054DD81    call        InflateRect
 0054DD86    mov         eax,dword ptr [ebp-8]
 0054DD89    mov         ebx,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DD8C    mov         eax,ebx
 0054DD8E    mov         edi,dword ptr ds:[520AF0];TCustomStatusBar
 0054DD94    mov         edx,edi
 0054DD96    call        @IsClass
 0054DD9B    test        al,al
>0054DD9D    je          0054DDC3
 0054DD9F    mov         eax,dword ptr [ebx+290]
 0054DDA5    mov         edx,dword ptr [ebp-14]
 0054DDA8    call        TStatusPanels.GetItem
 0054DDAD    movzx       eax,byte ptr [eax+14];TStatusPanel.FAlignment:TAlignment
 0054DDB1    mov         edx,dword ptr [eax*4+7A16C0]
 0054DDB8    mov         eax,ebx
 0054DDBA    call        TControl.DrawTextBiDiModeFlags
 0054DDBF    mov         esi,eax
>0054DDC1    jmp         0054DDCE
 0054DDC3    mov         eax,ebx
 0054DDC5    xor         edx,edx
 0054DDC7    call        TControl.DrawTextBiDiModeFlags
 0054DDCC    mov         esi,eax
 0054DDCE    mov         ebx,dword ptr [ebp-14]
 0054DDD1    push        0
 0054DDD3    push        ebx
 0054DDD4    push        40C
 0054DDD9    mov         eax,dword ptr [ebp-8]
 0054DDDC    call        TStyleHook.GetHandle
 0054DDE1    push        eax
 0054DDE2    call        user32.SendMessageW
 0054DDE7    mov         edx,eax
 0054DDE9    movzx       edx,dx
 0054DDEC    lea         eax,[ebp-4]
 0054DDEF    call        @UStrSetLength
 0054DDF4    mov         eax,dword ptr [ebp-4]
 0054DDF7    test        eax,eax
>0054DDF9    je          0054DE00
 0054DDFB    sub         eax,4
 0054DDFE    mov         eax,dword ptr [eax]
 0054DE00    test        eax,eax
>0054DE02    jle         0054DED5
 0054DE08    lea         eax,[ebp-4]
 0054DE0B    call        @UniqueStringU
 0054DE10    push        eax
 0054DE11    push        ebx
 0054DE12    push        40D
 0054DE17    mov         eax,dword ptr [ebp-8]
 0054DE1A    call        TStyleHook.GetHandle
 0054DE1F    push        eax
 0054DE20    call        user32.SendMessageW
 0054DE25    test        ah,10
>0054DE28    jne         0054DE46
 0054DE2A    mov         eax,dword ptr [ebp-4]
 0054DE2D    push        eax
 0054DE2E    lea         eax,[ebp-2C]
 0054DE31    push        eax
 0054DE32    push        esi
 0054DE33    lea         ecx,[ebp-48]
 0054DE36    mov         edx,dword ptr [ebp-0C]
 0054DE39    mov         eax,dword ptr [ebp-8]
 0054DE3C    call        TStyleHook.DrawControlText
>0054DE41    jmp         0054DFA3
 0054DE46    mov         eax,dword ptr [ebp-8]
 0054DE49    mov         ebx,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DE4C    mov         eax,ebx
 0054DE4E    mov         edx,dword ptr ds:[520AF0];TCustomStatusBar
 0054DE54    call        @IsClass
 0054DE59    test        al,al
>0054DE5B    je          0054DFA3
 0054DE61    cmp         word ptr [ebx+2AA],0
>0054DE69    je          0054DFA3
 0054DE6F    mov         eax,dword ptr [ebx+294]
 0054DE75    mov         dword ptr [ebp-18],eax
 0054DE78    mov         eax,dword ptr [ebp-0C]
 0054DE7B    mov         dword ptr [ebx+294],eax
 0054DE81    xor         eax,eax
 0054DE83    push        ebp
 0054DE84    push        54DECE
 0054DE89    push        dword ptr fs:[eax]
 0054DE8C    mov         dword ptr fs:[eax],esp
 0054DE8F    lea         eax,[ebp-2C]
 0054DE92    push        eax
 0054DE93    mov         eax,dword ptr [ebx+290]
 0054DE99    mov         edx,dword ptr [ebp-14]
 0054DE9C    call        TStatusPanels.GetItem
 0054DEA1    mov         ecx,eax
 0054DEA3    mov         edx,ebx
 0054DEA5    mov         eax,dword ptr [ebx+2AC]
 0054DEAB    call        dword ptr [ebx+2A8]
 0054DEB1    xor         eax,eax
 0054DEB3    pop         edx
 0054DEB4    pop         ecx
 0054DEB5    pop         ecx
 0054DEB6    mov         dword ptr fs:[eax],edx
 0054DEB9    push        54DFA3
 0054DEBE    mov         eax,dword ptr [ebp-8]
 0054DEC1    mov         eax,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DEC4    mov         edx,dword ptr [ebp-18]
 0054DEC7    mov         dword ptr [eax+294],edx
 0054DECD    ret
>0054DECE    jmp         @HandleFinally
>0054DED3    jmp         0054DEBE
 0054DED5    mov         eax,dword ptr [ebp-8]
 0054DED8    mov         ebx,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DEDB    mov         eax,ebx
 0054DEDD    mov         edx,edi
 0054DEDF    call        @IsClass
 0054DEE4    test        al,al
>0054DEE6    je          0054DFA3
 0054DEEC    mov         eax,dword ptr [ebx+290]
 0054DEF2    mov         edx,dword ptr [ebp-14]
 0054DEF5    call        TStatusPanels.GetItem
 0054DEFA    cmp         byte ptr [eax+18],1;TStatusPanel.FStyle:TStatusPanelStyle
>0054DEFE    je          0054DF2D
 0054DF00    mov         eax,dword ptr [ebp-8]
 0054DF03    mov         eax,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DF06    mov         eax,dword ptr [eax+290]
 0054DF0C    mov         edx,dword ptr [ebp-14]
 0054DF0F    call        TStatusPanels.GetItem
 0054DF14    mov         eax,dword ptr [eax+0C];TStatusPanel.FText:string
 0054DF17    push        eax
 0054DF18    lea         eax,[ebp-2C]
 0054DF1B    push        eax
 0054DF1C    push        esi
 0054DF1D    lea         ecx,[ebp-48]
 0054DF20    mov         edx,dword ptr [ebp-0C]
 0054DF23    mov         eax,dword ptr [ebp-8]
 0054DF26    call        TStyleHook.DrawControlText
>0054DF2B    jmp         0054DFA3
 0054DF2D    mov         eax,dword ptr [ebp-8]
 0054DF30    mov         ebx,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DF33    cmp         word ptr [ebx+2AA],0
>0054DF3B    je          0054DFA3
 0054DF3D    mov         eax,dword ptr [ebx+294]
 0054DF43    mov         dword ptr [ebp-18],eax
 0054DF46    mov         eax,dword ptr [ebp-0C]
 0054DF49    mov         dword ptr [ebx+294],eax
 0054DF4F    xor         eax,eax
 0054DF51    push        ebp
 0054DF52    push        54DF9C
 0054DF57    push        dword ptr fs:[eax]
 0054DF5A    mov         dword ptr fs:[eax],esp
 0054DF5D    lea         eax,[ebp-2C]
 0054DF60    push        eax
 0054DF61    mov         eax,dword ptr [ebx+290]
 0054DF67    mov         edx,dword ptr [ebp-14]
 0054DF6A    call        TStatusPanels.GetItem
 0054DF6F    mov         ecx,eax
 0054DF71    mov         edx,ebx
 0054DF73    mov         eax,dword ptr [ebx+2AC]
 0054DF79    call        dword ptr [ebx+2A8]
 0054DF7F    xor         eax,eax
 0054DF81    pop         edx
 0054DF82    pop         ecx
 0054DF83    pop         ecx
 0054DF84    mov         dword ptr fs:[eax],edx
 0054DF87    push        54DFA3
 0054DF8C    mov         eax,dword ptr [ebp-8]
 0054DF8F    mov         eax,dword ptr [eax+8];TStatusBarStyleHook.FControl:TWinControl
 0054DF92    mov         edx,dword ptr [ebp-18]
 0054DF95    mov         dword ptr [eax+294],edx
 0054DF9B    ret
>0054DF9C    jmp         @HandleFinally
>0054DFA1    jmp         0054DF8C
 0054DFA3    inc         dword ptr [ebp-14]
 0054DFA6    dec         dword ptr [ebp-1C]
>0054DFA9    jne         0054DCA5
 0054DFAF    xor         eax,eax
 0054DFB1    pop         edx
 0054DFB2    pop         ecx
 0054DFB3    pop         ecx
 0054DFB4    mov         dword ptr fs:[eax],edx
 0054DFB7    push        54DFCC
 0054DFBC    lea         eax,[ebp-4]
 0054DFBF    call        @UStrClr
 0054DFC4    ret
>0054DFC5    jmp         @HandleFinally
>0054DFCA    jmp         0054DFBC
 0054DFCC    pop         edi
 0054DFCD    pop         esi
 0054DFCE    pop         ebx
 0054DFCF    mov         esp,ebp
 0054DFD1    pop         ebp
 0054DFD2    ret
end;*}

//0054DFD4
procedure sub_0054DFD4;
begin
{*
 0054DFD4    call        0058D8DC
 0054DFD9    ret
*}
end;

//0054DFDC
constructor TUpDownStyleHook.Create(AControl:TWinControl);
begin
{*
 0054DFDC    push        ebx
 0054DFDD    push        esi
 0054DFDE    test        dl,dl
>0054DFE0    je          0054DFEA
 0054DFE2    add         esp,0FFFFFFF0
 0054DFE5    call        @ClassCreate
 0054DFEA    mov         ebx,edx
 0054DFEC    mov         esi,eax
 0054DFEE    xor         edx,edx
 0054DFF0    mov         eax,esi
 0054DFF2    call        TMouseTrackControlStyleHook.Create
 0054DFF7    mov         byte ptr [esi+17],1;TUpDownStyleHook.FOverridePaint:Boolean
 0054DFFB    mov         byte ptr [esi+0D],1;TUpDownStyleHook.FDoubleBuffered:Boolean
 0054DFFF    mov         eax,esi
 0054E001    test        bl,bl
>0054E003    je          0054E014
 0054E005    call        @AfterConstruction
 0054E00A    pop         dword ptr fs:[0]
 0054E011    add         esp,0C
 0054E014    mov         eax,esi
 0054E016    pop         esi
 0054E017    pop         ebx
 0054E018    ret
*}
end;

//0054E01C
{*function sub_0054E01C(?:TUpDownStyleHook):?;
begin
 0054E01C    push        ebx
 0054E01D    push        esi
 0054E01E    mov         ebx,eax
 0054E020    mov         esi,dword ptr [ebx+8]
 0054E023    test        esi,esi
>0054E025    je          0054E042
 0054E027    mov         eax,esi
 0054E029    mov         edx,dword ptr ds:[52BA1C];TUpDown
 0054E02F    call        @IsClass
 0054E034    test        al,al
>0054E036    je          0054E042
 0054E038    movzx       eax,byte ptr [esi+2C1]
 0054E03F    pop         esi
 0054E040    pop         ebx
 0054E041    ret
 0054E042    mov         eax,ebx
 0054E044    call        TStyleHook.GetHandle
 0054E049    test        eax,eax
>0054E04B    je          0054E06C
 0054E04D    mov         eax,ebx
 0054E04F    call        TStyleHook.GetHandle
 0054E054    push        0F0
 0054E056    push        eax
 0054E057    call        user32.GetWindowLongW
 0054E05C    and         eax,40
 0054E05F    cmp         eax,40
>0054E062    jne         0054E068
 0054E064    xor         eax,eax
>0054E066    jmp         0054E06E
 0054E068    mov         al,1
>0054E06A    jmp         0054E06E
 0054E06C    mov         al,1
 0054E06E    pop         esi
 0054E06F    pop         ebx
 0054E070    ret
end;*}

//0054E074
{*procedure sub_0054E074(?:?);
begin
 0054E074    push        ebx
 0054E075    push        esi
 0054E076    push        edi
 0054E077    add         esp,0FFFFFFE4
 0054E07A    mov         edi,edx
 0054E07C    mov         esi,eax
 0054E07E    call        StyleServices
 0054E083    mov         edx,dword ptr [eax]
 0054E085    call        dword ptr [edx+48];@AbstractError
 0054E088    test        al,al
>0054E08A    je          0054E26F
 0054E090    lea         eax,[esp+10]
 0054E094    push        eax
 0054E095    push        0
 0054E097    push        0
 0054E099    mov         eax,edi
 0054E09B    call        TCanvas.GetHandle
 0054E0A0    push        eax
 0054E0A1    mov         eax,esi
 0054E0A3    call        TStyleHook.GetHandle
 0054E0A8    push        eax
 0054E0A9    call        StyleServices
 0054E0AE    pop         edx
 0054E0AF    pop         ecx
 0054E0B0    call        TCustomStyleServices.DrawParentBackground
 0054E0B5    mov         eax,esi
 0054E0B7    call        0054E01C
 0054E0BC    test        al,al
>0054E0BE    jne         0054E19B
 0054E0C4    mov         edx,esp
 0054E0C6    mov         eax,dword ptr [esi+8];TUpDownStyleHook.FControl:TWinControl
 0054E0C9    mov         ecx,dword ptr [eax]
 0054E0CB    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E0CE    mov         eax,esp
 0054E0D0    call        RectWidth
 0054E0D5    sar         eax,1
>0054E0D7    jns         0054E0DC
 0054E0D9    adc         eax,0
 0054E0DC    add         eax,dword ptr [esp]
 0054E0DF    mov         dword ptr [esp+8],eax
 0054E0E3    cmp         byte ptr [esi+28],0;TUpDownStyleHook.FLeftPressed:Boolean
>0054E0E7    je          0054E0ED
 0054E0E9    mov         bl,0C
>0054E0EB    jmp         0054E0FF
 0054E0ED    cmp         byte ptr [esi+2A],0;TUpDownStyleHook.FMouseOnLeft:Boolean
>0054E0F1    je          0054E0FD
 0054E0F3    cmp         byte ptr [esi+24],0;TUpDownStyleHook.FMouseInControl:Boolean
>0054E0F7    je          0054E0FD
 0054E0F9    mov         bl,0B
>0054E0FB    jmp         0054E0FF
 0054E0FD    mov         bl,0A
 0054E0FF    call        StyleServices
 0054E104    mov         edx,ebx
 0054E106    lea         ecx,[esp+10]
 0054E10A    mov         ebx,dword ptr [eax]
 0054E10C    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 0054E112    push        esp
 0054E113    push        0
 0054E115    mov         eax,edi
 0054E117    call        TCanvas.GetHandle
 0054E11C    push        eax
 0054E11D    call        StyleServices
 0054E122    lea         ecx,[esp+1C]
 0054E126    pop         edx
 0054E127    call        TCustomStyleServices.DrawElement
 0054E12C    mov         edx,esp
 0054E12E    mov         eax,dword ptr [esi+8];TUpDownStyleHook.FControl:TWinControl
 0054E131    mov         ecx,dword ptr [eax]
 0054E133    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E136    mov         eax,esp
 0054E138    call        RectWidth
 0054E13D    sar         eax,1
>0054E13F    jns         0054E144
 0054E141    adc         eax,0
 0054E144    mov         edx,dword ptr [esp+8]
 0054E148    sub         edx,eax
 0054E14A    mov         dword ptr [esp],edx
 0054E14D    cmp         byte ptr [esi+29],0;TUpDownStyleHook.FRightPressed:Boolean
>0054E151    je          0054E157
 0054E153    mov         bl,10
>0054E155    jmp         0054E169
 0054E157    cmp         byte ptr [esi+2B],0;TUpDownStyleHook.FMouseOnRight:Boolean
>0054E15B    je          0054E167
 0054E15D    cmp         byte ptr [esi+24],0;TUpDownStyleHook.FMouseInControl:Boolean
>0054E161    je          0054E167
 0054E163    mov         bl,0F
>0054E165    jmp         0054E169
 0054E167    mov         bl,0E
 0054E169    call        StyleServices
 0054E16E    mov         edx,ebx
 0054E170    lea         ecx,[esp+10]
 0054E174    mov         ebx,dword ptr [eax]
 0054E176    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 0054E17C    push        esp
 0054E17D    push        0
 0054E17F    mov         eax,edi
 0054E181    call        TCanvas.GetHandle
 0054E186    push        eax
 0054E187    call        StyleServices
 0054E18C    lea         ecx,[esp+1C]
 0054E190    pop         edx
 0054E191    call        TCustomStyleServices.DrawElement
>0054E196    jmp         0054E26F
 0054E19B    mov         edx,esp
 0054E19D    mov         eax,dword ptr [esi+8];TUpDownStyleHook.FControl:TWinControl
 0054E1A0    mov         ecx,dword ptr [eax]
 0054E1A2    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E1A5    mov         eax,esp
 0054E1A7    call        RectHeight
 0054E1AC    sar         eax,1
>0054E1AE    jns         0054E1B3
 0054E1B0    adc         eax,0
 0054E1B3    add         eax,dword ptr [esp+4]
 0054E1B7    mov         dword ptr [esp+0C],eax
 0054E1BB    cmp         byte ptr [esi+28],0;TUpDownStyleHook.FLeftPressed:Boolean
>0054E1BF    je          0054E1C5
 0054E1C1    mov         bl,4
>0054E1C3    jmp         0054E1D7
 0054E1C5    cmp         byte ptr [esi+2A],0;TUpDownStyleHook.FMouseOnLeft:Boolean
>0054E1C9    je          0054E1D5
 0054E1CB    cmp         byte ptr [esi+24],0;TUpDownStyleHook.FMouseInControl:Boolean
>0054E1CF    je          0054E1D5
 0054E1D1    mov         bl,3
>0054E1D3    jmp         0054E1D7
 0054E1D5    mov         bl,2
 0054E1D7    call        StyleServices
 0054E1DC    mov         edx,ebx
 0054E1DE    lea         ecx,[esp+10]
 0054E1E2    mov         ebx,dword ptr [eax]
 0054E1E4    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 0054E1EA    push        esp
 0054E1EB    push        0
 0054E1ED    mov         eax,edi
 0054E1EF    call        TCanvas.GetHandle
 0054E1F4    push        eax
 0054E1F5    call        StyleServices
 0054E1FA    lea         ecx,[esp+1C]
 0054E1FE    pop         edx
 0054E1FF    call        TCustomStyleServices.DrawElement
 0054E204    mov         edx,esp
 0054E206    mov         eax,dword ptr [esi+8];TUpDownStyleHook.FControl:TWinControl
 0054E209    mov         ecx,dword ptr [eax]
 0054E20B    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E20E    mov         eax,esp
 0054E210    call        RectHeight
 0054E215    sar         eax,1
>0054E217    jns         0054E21C
 0054E219    adc         eax,0
 0054E21C    mov         edx,dword ptr [esp+0C]
 0054E220    sub         edx,eax
 0054E222    mov         dword ptr [esp+4],edx
 0054E226    cmp         byte ptr [esi+29],0;TUpDownStyleHook.FRightPressed:Boolean
>0054E22A    je          0054E230
 0054E22C    mov         bl,8
>0054E22E    jmp         0054E242
 0054E230    cmp         byte ptr [esi+2B],0;TUpDownStyleHook.FMouseOnRight:Boolean
>0054E234    je          0054E240
 0054E236    cmp         byte ptr [esi+24],0;TUpDownStyleHook.FMouseInControl:Boolean
>0054E23A    je          0054E240
 0054E23C    mov         bl,7
>0054E23E    jmp         0054E242
 0054E240    mov         bl,6
 0054E242    call        StyleServices
 0054E247    mov         edx,ebx
 0054E249    lea         ecx,[esp+10]
 0054E24D    mov         ebx,dword ptr [eax]
 0054E24F    call        dword ptr [ebx+0C4];TCustomStyleServices.GetElementDetails
 0054E255    push        esp
 0054E256    push        0
 0054E258    mov         eax,edi
 0054E25A    call        TCanvas.GetHandle
 0054E25F    push        eax
 0054E260    call        StyleServices
 0054E265    lea         ecx,[esp+1C]
 0054E269    pop         edx
 0054E26A    call        TCustomStyleServices.DrawElement
 0054E26F    add         esp,1C
 0054E272    pop         edi
 0054E273    pop         esi
 0054E274    pop         ebx
 0054E275    ret
end;*}

//0054E278
{*procedure TUpDownStyleHook.WMLButtonDblClk(?:?);
begin
 0054E278    push        ebx
 0054E279    push        esi
 0054E27A    add         esp,0FFFFFFD0
 0054E27D    mov         esi,edx
 0054E27F    mov         ebx,eax
 0054E281    xor         edx,edx
 0054E283    mov         eax,ebx
 0054E285    call        0058D3E4
 0054E28A    mov         edx,esi
 0054E28C    mov         eax,ebx
 0054E28E    call        TStyleHook.CallDefaultProc
 0054E293    mov         dl,1
 0054E295    mov         eax,ebx
 0054E297    call        0058D3E4
 0054E29C    mov         eax,ebx
 0054E29E    call        0054E01C
 0054E2A3    test        al,al
>0054E2A5    jne         0054E350
 0054E2AB    lea         edx,[esp+20]
 0054E2AF    mov         eax,dword ptr [ebx+8];TUpDownStyleHook.FControl:TWinControl
 0054E2B2    mov         ecx,dword ptr [eax]
 0054E2B4    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E2B7    lea         eax,[esp+20]
 0054E2BB    call        RectWidth
 0054E2C0    sar         eax,1
>0054E2C2    jns         0054E2C7
 0054E2C4    adc         eax,0
 0054E2C7    add         eax,dword ptr [esp+20]
 0054E2CB    mov         dword ptr [esp+28],eax
 0054E2CF    movsx       eax,word ptr [esi+8]
 0054E2D3    movsx       edx,word ptr [esi+0A]
 0054E2D7    mov         dword ptr [esp],eax
 0054E2DA    mov         dword ptr [esp+4],edx
 0054E2DE    mov         edx,esp
 0054E2E0    lea         eax,[esp+20]
 0054E2E4    call        TRect.Contains
 0054E2E9    test        al,al
>0054E2EB    je          0054E2F3
 0054E2ED    mov         byte ptr [ebx+28],1;TUpDownStyleHook.FLeftPressed:Boolean
>0054E2F1    jmp         0054E2F7
 0054E2F3    mov         byte ptr [ebx+28],0;TUpDownStyleHook.FLeftPressed:Boolean
 0054E2F7    lea         edx,[esp+20]
 0054E2FB    mov         eax,dword ptr [ebx+8];TUpDownStyleHook.FControl:TWinControl
 0054E2FE    mov         ecx,dword ptr [eax]
 0054E300    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E303    lea         eax,[esp+20]
 0054E307    call        RectWidth
 0054E30C    sar         eax,1
>0054E30E    jns         0054E313
 0054E310    adc         eax,0
 0054E313    mov         edx,dword ptr [esp+28]
 0054E317    sub         edx,eax
 0054E319    mov         dword ptr [esp+20],edx
 0054E31D    movsx       eax,word ptr [esi+8]
 0054E321    movsx       edx,word ptr [esi+0A]
 0054E325    mov         dword ptr [esp+8],eax
 0054E329    mov         dword ptr [esp+0C],edx
 0054E32D    lea         edx,[esp+8]
 0054E331    lea         eax,[esp+20]
 0054E335    call        TRect.Contains
 0054E33A    test        al,al
>0054E33C    je          0054E347
 0054E33E    mov         byte ptr [ebx+29],1;TUpDownStyleHook.FRightPressed:Boolean
>0054E342    jmp         0054E3F0
 0054E347    mov         byte ptr [ebx+29],0;TUpDownStyleHook.FRightPressed:Boolean
>0054E34B    jmp         0054E3F0
 0054E350    lea         edx,[esp+20]
 0054E354    mov         eax,dword ptr [ebx+8];TUpDownStyleHook.FControl:TWinControl
 0054E357    mov         ecx,dword ptr [eax]
 0054E359    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E35C    lea         eax,[esp+20]
 0054E360    call        RectHeight
 0054E365    sar         eax,1
>0054E367    jns         0054E36C
 0054E369    adc         eax,0
 0054E36C    add         eax,dword ptr [esp+24]
 0054E370    mov         dword ptr [esp+2C],eax
 0054E374    movsx       eax,word ptr [esi+8]
 0054E378    movsx       edx,word ptr [esi+0A]
 0054E37C    mov         dword ptr [esp+10],eax
 0054E380    mov         dword ptr [esp+14],edx
 0054E384    lea         edx,[esp+10]
 0054E388    lea         eax,[esp+20]
 0054E38C    call        TRect.Contains
 0054E391    test        al,al
>0054E393    je          0054E39B
 0054E395    mov         byte ptr [ebx+28],1;TUpDownStyleHook.FLeftPressed:Boolean
>0054E399    jmp         0054E39F
 0054E39B    mov         byte ptr [ebx+28],0;TUpDownStyleHook.FLeftPressed:Boolean
 0054E39F    lea         edx,[esp+20]
 0054E3A3    mov         eax,dword ptr [ebx+8];TUpDownStyleHook.FControl:TWinControl
 0054E3A6    mov         ecx,dword ptr [eax]
 0054E3A8    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E3AB    lea         eax,[esp+20]
 0054E3AF    call        RectHeight
 0054E3B4    sar         eax,1
>0054E3B6    jns         0054E3BB
 0054E3B8    adc         eax,0
 0054E3BB    mov         edx,dword ptr [esp+2C]
 0054E3BF    sub         edx,eax
 0054E3C1    mov         dword ptr [esp+24],edx
 0054E3C5    movsx       eax,word ptr [esi+8]
 0054E3C9    movsx       edx,word ptr [esi+0A]
 0054E3CD    mov         dword ptr [esp+18],eax
 0054E3D1    mov         dword ptr [esp+1C],edx
 0054E3D5    lea         edx,[esp+18]
 0054E3D9    lea         eax,[esp+20]
 0054E3DD    call        TRect.Contains
 0054E3E2    test        al,al
>0054E3E4    je          0054E3EC
 0054E3E6    mov         byte ptr [ebx+29],1;TUpDownStyleHook.FRightPressed:Boolean
>0054E3EA    jmp         0054E3F0
 0054E3EC    mov         byte ptr [ebx+29],0;TUpDownStyleHook.FRightPressed:Boolean
 0054E3F0    mov         eax,ebx
 0054E3F2    mov         edx,dword ptr [eax]
 0054E3F4    call        dword ptr [edx+28];TStyleHook.Invalidate
 0054E3F7    mov         byte ptr [ebx+14],1;TUpDownStyleHook.FHandled:Boolean
 0054E3FB    add         esp,30
 0054E3FE    pop         esi
 0054E3FF    pop         ebx
 0054E400    ret
end;*}

//0054E404
{*procedure TUpDownStyleHook.WMLButtonDown(?:?);
begin
 0054E404    push        ebx
 0054E405    push        esi
 0054E406    add         esp,0FFFFFFD0
 0054E409    mov         esi,edx
 0054E40B    mov         ebx,eax
 0054E40D    xor         edx,edx
 0054E40F    mov         eax,ebx
 0054E411    call        0058D3E4
 0054E416    mov         edx,esi
 0054E418    mov         eax,ebx
 0054E41A    call        TStyleHook.CallDefaultProc
 0054E41F    mov         dl,1
 0054E421    mov         eax,ebx
 0054E423    call        0058D3E4
 0054E428    mov         eax,ebx
 0054E42A    call        0054E01C
 0054E42F    test        al,al
>0054E431    jne         0054E4DC
 0054E437    lea         edx,[esp+20]
 0054E43B    mov         eax,dword ptr [ebx+8];TUpDownStyleHook.FControl:TWinControl
 0054E43E    mov         ecx,dword ptr [eax]
 0054E440    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E443    lea         eax,[esp+20]
 0054E447    call        RectWidth
 0054E44C    sar         eax,1
>0054E44E    jns         0054E453
 0054E450    adc         eax,0
 0054E453    add         eax,dword ptr [esp+20]
 0054E457    mov         dword ptr [esp+28],eax
 0054E45B    movsx       eax,word ptr [esi+8]
 0054E45F    movsx       edx,word ptr [esi+0A]
 0054E463    mov         dword ptr [esp],eax
 0054E466    mov         dword ptr [esp+4],edx
 0054E46A    mov         edx,esp
 0054E46C    lea         eax,[esp+20]
 0054E470    call        TRect.Contains
 0054E475    test        al,al
>0054E477    je          0054E47F
 0054E479    mov         byte ptr [ebx+28],1;TUpDownStyleHook.FLeftPressed:Boolean
>0054E47D    jmp         0054E483
 0054E47F    mov         byte ptr [ebx+28],0;TUpDownStyleHook.FLeftPressed:Boolean
 0054E483    lea         edx,[esp+20]
 0054E487    mov         eax,dword ptr [ebx+8];TUpDownStyleHook.FControl:TWinControl
 0054E48A    mov         ecx,dword ptr [eax]
 0054E48C    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E48F    lea         eax,[esp+20]
 0054E493    call        RectWidth
 0054E498    sar         eax,1
>0054E49A    jns         0054E49F
 0054E49C    adc         eax,0
 0054E49F    mov         edx,dword ptr [esp+28]
 0054E4A3    sub         edx,eax
 0054E4A5    mov         dword ptr [esp+20],edx
 0054E4A9    movsx       eax,word ptr [esi+8]
 0054E4AD    movsx       edx,word ptr [esi+0A]
 0054E4B1    mov         dword ptr [esp+8],eax
 0054E4B5    mov         dword ptr [esp+0C],edx
 0054E4B9    lea         edx,[esp+8]
 0054E4BD    lea         eax,[esp+20]
 0054E4C1    call        TRect.Contains
 0054E4C6    test        al,al
>0054E4C8    je          0054E4D3
 0054E4CA    mov         byte ptr [ebx+29],1;TUpDownStyleHook.FRightPressed:Boolean
>0054E4CE    jmp         0054E57C
 0054E4D3    mov         byte ptr [ebx+29],0;TUpDownStyleHook.FRightPressed:Boolean
>0054E4D7    jmp         0054E57C
 0054E4DC    lea         edx,[esp+20]
 0054E4E0    mov         eax,dword ptr [ebx+8];TUpDownStyleHook.FControl:TWinControl
 0054E4E3    mov         ecx,dword ptr [eax]
 0054E4E5    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E4E8    lea         eax,[esp+20]
 0054E4EC    call        RectHeight
 0054E4F1    sar         eax,1
>0054E4F3    jns         0054E4F8
 0054E4F5    adc         eax,0
 0054E4F8    add         eax,dword ptr [esp+24]
 0054E4FC    mov         dword ptr [esp+2C],eax
 0054E500    movsx       eax,word ptr [esi+8]
 0054E504    movsx       edx,word ptr [esi+0A]
 0054E508    mov         dword ptr [esp+10],eax
 0054E50C    mov         dword ptr [esp+14],edx
 0054E510    lea         edx,[esp+10]
 0054E514    lea         eax,[esp+20]
 0054E518    call        TRect.Contains
 0054E51D    test        al,al
>0054E51F    je          0054E527
 0054E521    mov         byte ptr [ebx+28],1;TUpDownStyleHook.FLeftPressed:Boolean
>0054E525    jmp         0054E52B
 0054E527    mov         byte ptr [ebx+28],0;TUpDownStyleHook.FLeftPressed:Boolean
 0054E52B    lea         edx,[esp+20]
 0054E52F    mov         eax,dword ptr [ebx+8];TUpDownStyleHook.FControl:TWinControl
 0054E532    mov         ecx,dword ptr [eax]
 0054E534    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E537    lea         eax,[esp+20]
 0054E53B    call        RectHeight
 0054E540    sar         eax,1
>0054E542    jns         0054E547
 0054E544    adc         eax,0
 0054E547    mov         edx,dword ptr [esp+2C]
 0054E54B    sub         edx,eax
 0054E54D    mov         dword ptr [esp+24],edx
 0054E551    movsx       eax,word ptr [esi+8]
 0054E555    movsx       edx,word ptr [esi+0A]
 0054E559    mov         dword ptr [esp+18],eax
 0054E55D    mov         dword ptr [esp+1C],edx
 0054E561    lea         edx,[esp+18]
 0054E565    lea         eax,[esp+20]
 0054E569    call        TRect.Contains
 0054E56E    test        al,al
>0054E570    je          0054E578
 0054E572    mov         byte ptr [ebx+29],1;TUpDownStyleHook.FRightPressed:Boolean
>0054E576    jmp         0054E57C
 0054E578    mov         byte ptr [ebx+29],0;TUpDownStyleHook.FRightPressed:Boolean
 0054E57C    mov         eax,ebx
 0054E57E    mov         edx,dword ptr [eax]
 0054E580    call        dword ptr [edx+28];TStyleHook.Invalidate
 0054E583    mov         byte ptr [ebx+14],1;TUpDownStyleHook.FHandled:Boolean
 0054E587    add         esp,30
 0054E58A    pop         esi
 0054E58B    pop         ebx
 0054E58C    ret
end;*}

//0054E590
{*procedure TUpDownStyleHook.WMLButtonUp(?:?);
begin
 0054E590    push        ebx
 0054E591    push        esi
 0054E592    mov         esi,edx
 0054E594    mov         ebx,eax
 0054E596    xor         edx,edx
 0054E598    mov         eax,ebx
 0054E59A    call        0058D3E4
 0054E59F    mov         edx,esi
 0054E5A1    mov         eax,ebx
 0054E5A3    call        TStyleHook.CallDefaultProc
 0054E5A8    mov         dl,1
 0054E5AA    mov         eax,ebx
 0054E5AC    call        0058D3E4
 0054E5B1    mov         byte ptr [ebx+28],0;TUpDownStyleHook.FLeftPressed:Boolean
 0054E5B5    mov         byte ptr [ebx+29],0;TUpDownStyleHook.FRightPressed:Boolean
 0054E5B9    mov         eax,ebx
 0054E5BB    mov         edx,dword ptr [eax]
 0054E5BD    call        dword ptr [edx+28];TStyleHook.Invalidate
 0054E5C0    mov         byte ptr [ebx+14],1;TUpDownStyleHook.FHandled:Boolean
 0054E5C4    pop         esi
 0054E5C5    pop         ebx
 0054E5C6    ret
end;*}

//0054E5C8
{*procedure TUpDownStyleHook.WMMouseMove(?:?);
begin
 0054E5C8    push        ebx
 0054E5C9    push        esi
 0054E5CA    push        edi
 0054E5CB    add         esp,0FFFFFFCC
 0054E5CE    mov         esi,edx
 0054E5D0    mov         edi,eax
 0054E5D2    mov         edx,esi
 0054E5D4    mov         eax,edi
 0054E5D6    call        TMouseTrackControlStyleHook.WMMouseMove
 0054E5DB    mov         edx,esi
 0054E5DD    mov         eax,edi
 0054E5DF    call        TStyleHook.CallDefaultProc
 0054E5E4    movzx       ebx,byte ptr [edi+2A];TUpDownStyleHook.FMouseOnLeft:Boolean
 0054E5E8    movzx       eax,byte ptr [edi+2B];TUpDownStyleHook.FMouseOnRight:Boolean
 0054E5EC    mov         byte ptr [esp],al
 0054E5EF    mov         eax,edi
 0054E5F1    call        0054E01C
 0054E5F6    test        al,al
>0054E5F8    jne         0054E6A6
 0054E5FE    lea         edx,[esp+24]
 0054E602    mov         eax,dword ptr [edi+8];TUpDownStyleHook.FControl:TWinControl
 0054E605    mov         ecx,dword ptr [eax]
 0054E607    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E60A    lea         eax,[esp+24]
 0054E60E    call        RectWidth
 0054E613    sar         eax,1
>0054E615    jns         0054E61A
 0054E617    adc         eax,0
 0054E61A    add         eax,dword ptr [esp+24]
 0054E61E    mov         dword ptr [esp+2C],eax
 0054E622    movsx       eax,word ptr [esi+8]
 0054E626    movsx       edx,word ptr [esi+0A]
 0054E62A    mov         dword ptr [esp+4],eax
 0054E62E    mov         dword ptr [esp+8],edx
 0054E632    lea         edx,[esp+4]
 0054E636    lea         eax,[esp+24]
 0054E63A    call        TRect.Contains
 0054E63F    test        al,al
>0054E641    je          0054E649
 0054E643    mov         byte ptr [edi+2A],1;TUpDownStyleHook.FMouseOnLeft:Boolean
>0054E647    jmp         0054E64D
 0054E649    mov         byte ptr [edi+2A],0;TUpDownStyleHook.FMouseOnLeft:Boolean
 0054E64D    lea         edx,[esp+24]
 0054E651    mov         eax,dword ptr [edi+8];TUpDownStyleHook.FControl:TWinControl
 0054E654    mov         ecx,dword ptr [eax]
 0054E656    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E659    lea         eax,[esp+24]
 0054E65D    call        RectWidth
 0054E662    sar         eax,1
>0054E664    jns         0054E669
 0054E666    adc         eax,0
 0054E669    mov         edx,dword ptr [esp+2C]
 0054E66D    sub         edx,eax
 0054E66F    mov         dword ptr [esp+24],edx
 0054E673    movsx       eax,word ptr [esi+8]
 0054E677    movsx       edx,word ptr [esi+0A]
 0054E67B    mov         dword ptr [esp+0C],eax
 0054E67F    mov         dword ptr [esp+10],edx
 0054E683    lea         edx,[esp+0C]
 0054E687    lea         eax,[esp+24]
 0054E68B    call        TRect.Contains
 0054E690    test        al,al
>0054E692    je          0054E69D
 0054E694    mov         byte ptr [edi+2B],1;TUpDownStyleHook.FMouseOnRight:Boolean
>0054E698    jmp         0054E746
 0054E69D    mov         byte ptr [edi+2B],0;TUpDownStyleHook.FMouseOnRight:Boolean
>0054E6A1    jmp         0054E746
 0054E6A6    lea         edx,[esp+24]
 0054E6AA    mov         eax,dword ptr [edi+8];TUpDownStyleHook.FControl:TWinControl
 0054E6AD    mov         ecx,dword ptr [eax]
 0054E6AF    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E6B2    lea         eax,[esp+24]
 0054E6B6    call        RectHeight
 0054E6BB    sar         eax,1
>0054E6BD    jns         0054E6C2
 0054E6BF    adc         eax,0
 0054E6C2    add         eax,dword ptr [esp+28]
 0054E6C6    mov         dword ptr [esp+30],eax
 0054E6CA    movsx       eax,word ptr [esi+8]
 0054E6CE    movsx       edx,word ptr [esi+0A]
 0054E6D2    mov         dword ptr [esp+14],eax
 0054E6D6    mov         dword ptr [esp+18],edx
 0054E6DA    lea         edx,[esp+14]
 0054E6DE    lea         eax,[esp+24]
 0054E6E2    call        TRect.Contains
 0054E6E7    test        al,al
>0054E6E9    je          0054E6F1
 0054E6EB    mov         byte ptr [edi+2A],1;TUpDownStyleHook.FMouseOnLeft:Boolean
>0054E6EF    jmp         0054E6F5
 0054E6F1    mov         byte ptr [edi+2A],0;TUpDownStyleHook.FMouseOnLeft:Boolean
 0054E6F5    lea         edx,[esp+24]
 0054E6F9    mov         eax,dword ptr [edi+8];TUpDownStyleHook.FControl:TWinControl
 0054E6FC    mov         ecx,dword ptr [eax]
 0054E6FE    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054E701    lea         eax,[esp+24]
 0054E705    call        RectHeight
 0054E70A    sar         eax,1
>0054E70C    jns         0054E711
 0054E70E    adc         eax,0
 0054E711    mov         edx,dword ptr [esp+30]
 0054E715    sub         edx,eax
 0054E717    mov         dword ptr [esp+28],edx
 0054E71B    movsx       eax,word ptr [esi+8]
 0054E71F    movsx       edx,word ptr [esi+0A]
 0054E723    mov         dword ptr [esp+1C],eax
 0054E727    mov         dword ptr [esp+20],edx
 0054E72B    lea         edx,[esp+1C]
 0054E72F    lea         eax,[esp+24]
 0054E733    call        TRect.Contains
 0054E738    test        al,al
>0054E73A    je          0054E742
 0054E73C    mov         byte ptr [edi+2B],1;TUpDownStyleHook.FMouseOnRight:Boolean
>0054E740    jmp         0054E746
 0054E742    mov         byte ptr [edi+2B],0;TUpDownStyleHook.FMouseOnRight:Boolean
 0054E746    cmp         bl,byte ptr [edi+2A];TUpDownStyleHook.FMouseOnLeft:Boolean
>0054E749    je          0054E75B
 0054E74B    movzx       eax,byte ptr [esp]
 0054E74F    cmp         al,byte ptr [edi+2B];TUpDownStyleHook.FMouseOnRight:Boolean
>0054E752    je          0054E75B
 0054E754    mov         eax,edi
 0054E756    mov         edx,dword ptr [eax]
 0054E758    call        dword ptr [edx+28];TStyleHook.Invalidate
 0054E75B    mov         byte ptr [edi+14],1;TUpDownStyleHook.FHandled:Boolean
 0054E75F    add         esp,34
 0054E762    pop         edi
 0054E763    pop         esi
 0054E764    pop         ebx
 0054E765    ret
end;*}

//0054E768
procedure sub_0054E768;
begin
{*
 0054E768    call        0058DB4C
 0054E76D    ret
*}
end;

//0054E770
procedure sub_0054E770;
begin
{*
 0054E770    mov         byte ptr [eax+2A],0;TUpDownStyleHook.FMouseOnLeft:Boolean
 0054E774    mov         byte ptr [eax+2B],0;TUpDownStyleHook.FMouseOnRight:Boolean
 0054E778    mov         edx,dword ptr [eax]
 0054E77A    call        dword ptr [edx+28];TStyleHook.Invalidate
 0054E77D    ret
*}
end;

//0054E780
constructor THeaderStyleHook.Create(AControl:TWinControl);
begin
{*
 0054E780    push        ebx
 0054E781    push        esi
 0054E782    test        dl,dl
>0054E784    je          0054E78E
 0054E786    add         esp,0FFFFFFF0
 0054E789    call        @ClassCreate
 0054E78E    mov         ebx,edx
 0054E790    mov         esi,eax
 0054E792    xor         edx,edx
 0054E794    mov         eax,esi
 0054E796    call        TMouseTrackControlStyleHook.Create
 0054E79B    mov         byte ptr [esi+0D],1;THeaderStyleHook.FDoubleBuffered:Boolean
 0054E79F    mov         byte ptr [esi+17],1;THeaderStyleHook.FOverridePaint:Boolean
 0054E7A3    mov         dword ptr [esi+2C],0FFFFFFFF;THeaderStyleHook.FHotSectionIndex:Integer
 0054E7AA    mov         dword ptr [esi+28],0FFFFFFFF;THeaderStyleHook.FPressedSectionIndex:Integer
 0054E7B1    mov         eax,esi
 0054E7B3    test        bl,bl
>0054E7B5    je          0054E7C6
 0054E7B7    call        @AfterConstruction
 0054E7BC    pop         dword ptr fs:[0]
 0054E7C3    add         esp,0C
 0054E7C6    mov         eax,esi
 0054E7C8    pop         esi
 0054E7C9    pop         ebx
 0054E7CA    ret
*}
end;

//0054E7CC
procedure THeaderStyleHook.WMEraseBkgnd(Message:Messages.TMessage);
begin
{*
 0054E7CC    mov         dword ptr [edx+0C],1
 0054E7D3    mov         byte ptr [eax+14],1;THeaderStyleHook.FHandled:Boolean
 0054E7D7    ret
*}
end;

//0054E7D8
procedure sub_0054E7D8;
begin
{*
 0054E7D8    mov         dword ptr [eax+2C],0FFFFFFFF;THeaderStyleHook.FHotSectionIndex:Integer
 0054E7DF    mov         edx,dword ptr [eax]
 0054E7E1    call        dword ptr [edx+28];TStyleHook.Invalidate
 0054E7E4    ret
*}
end;

//0054E7E8
{*procedure sub_0054E7E8(?:?);
begin
 0054E7E8    push        ebp
 0054E7E9    mov         ebp,esp
 0054E7EB    add         esp,0FFFFFD9C
 0054E7F1    push        ebx
 0054E7F2    push        esi
 0054E7F3    push        edi
 0054E7F4    xor         ecx,ecx
 0054E7F6    mov         dword ptr [ebp-264],ecx
 0054E7FC    mov         dword ptr [ebp-4],edx
 0054E7FF    mov         esi,eax
 0054E801    xor         eax,eax
 0054E803    push        ebp
 0054E804    push        54E95A
 0054E809    push        dword ptr fs:[eax]
 0054E80C    mov         dword ptr fs:[eax],esp
 0054E80F    xor         eax,eax
 0054E811    mov         dword ptr [ebp-0C],eax
 0054E814    mov         eax,esi
 0054E816    call        TStyleHook.GetHandle
 0054E81B    mov         ebx,eax
 0054E81D    push        0
 0054E81F    push        0
 0054E821    push        1200
 0054E826    push        ebx
 0054E827    call        user32.SendMessageW
 0054E82C    dec         eax
 0054E82D    test        eax,eax
>0054E82F    jl          0054E8E9
 0054E835    inc         eax
 0054E836    mov         dword ptr [ebp-10],eax
 0054E839    mov         dword ptr [ebp-8],0
 0054E840    mov         ebx,dword ptr [ebp-8]
 0054E843    mov         eax,esi
 0054E845    call        TStyleHook.GetHandle
 0054E84A    mov         edi,eax
 0054E84C    lea         eax,[ebp-20]
 0054E84F    push        eax
 0054E850    push        ebx
 0054E851    push        1207
 0054E856    push        edi
 0054E857    call        user32.SendMessageW
 0054E85C    lea         eax,[ebp-60]
 0054E85F    xor         ecx,ecx
 0054E861    mov         edx,30
 0054E866    call        @FillChar
 0054E86B    mov         dword ptr [ebp-60],2
 0054E872    lea         eax,[ebp-25E]
 0054E878    mov         dword ptr [ebp-58],eax
 0054E87B    mov         dword ptr [ebp-50],0FF
 0054E882    mov         eax,esi
 0054E884    call        TStyleHook.GetHandle
 0054E889    mov         edi,eax
 0054E88B    lea         eax,[ebp-60]
 0054E88E    push        eax
 0054E88F    push        ebx
 0054E890    push        120B
 0054E895    push        edi
 0054E896    call        user32.SendMessageW
 0054E89B    test        eax,eax
>0054E89D    je          0054E8D2
 0054E89F    push        ebx
 0054E8A0    lea         eax,[ebp-264]
 0054E8A6    mov         edx,dword ptr [ebp-58]
 0054E8A9    call        @UStrFromPWChar
 0054E8AE    mov         eax,dword ptr [ebp-264]
 0054E8B4    push        eax
 0054E8B5    cmp         ebx,dword ptr [esi+28];THeaderStyleHook.FPressedSectionIndex:Integer
 0054E8B8    sete        al
 0054E8BB    push        eax
 0054E8BC    cmp         ebx,dword ptr [esi+2C];THeaderStyleHook.FHotSectionIndex:Integer
 0054E8BF    sete        al
 0054E8C2    push        eax
 0054E8C3    push        0
 0054E8C5    lea         ecx,[ebp-20]
 0054E8C8    mov         edx,dword ptr [ebp-4]
 0054E8CB    mov         eax,esi
 0054E8CD    mov         ebx,dword ptr [eax]
 0054E8CF    call        dword ptr [ebx+40];THeaderStyleHook.sub_0054E968
 0054E8D2    mov         eax,dword ptr [ebp-18]
 0054E8D5    cmp         eax,dword ptr [ebp-0C]
>0054E8D8    jle         0054E8DD
 0054E8DA    mov         dword ptr [ebp-0C],eax
 0054E8DD    inc         dword ptr [ebp-8]
 0054E8E0    dec         dword ptr [ebp-10]
>0054E8E3    jne         0054E840
 0054E8E9    lea         eax,[ebp-30]
 0054E8EC    push        eax
 0054E8ED    mov         eax,esi
 0054E8EF    call        TStyleHook.GetHandle
 0054E8F4    push        eax
 0054E8F5    call        user32.GetWindowRect
 0054E8FA    lea         eax,[ebp-30]
 0054E8FD    call        RectHeight
 0054E902    push        eax
 0054E903    lea         eax,[ebp-20]
 0054E906    push        eax
 0054E907    lea         eax,[ebp-30]
 0054E90A    call        RectWidth
 0054E90F    mov         ecx,eax
 0054E911    add         ecx,2
 0054E914    xor         edx,edx
 0054E916    mov         eax,dword ptr [ebp-0C]
 0054E919    call        Rect
 0054E91E    lea         eax,[ebp-20]
 0054E921    call        IsRectEmpty
 0054E926    test        al,al
>0054E928    jne         0054E941
 0054E92A    push        0FF
 0054E92C    push        0
 0054E92E    push        0
 0054E930    push        0
 0054E932    push        1
 0054E934    lea         ecx,[ebp-20]
 0054E937    mov         edx,dword ptr [ebp-4]
 0054E93A    mov         eax,esi
 0054E93C    mov         ebx,dword ptr [eax]
 0054E93E    call        dword ptr [ebx+40];THeaderStyleHook.sub_0054E968
 0054E941    xor         eax,eax
 0054E943    pop         edx
 0054E944    pop         ecx
 0054E945    pop         ecx
 0054E946    mov         dword ptr fs:[eax],edx
 0054E949    push        54E961
 0054E94E    lea         eax,[ebp-264]
 0054E954    call        @UStrClr
 0054E959    ret
>0054E95A    jmp         @HandleFinally
>0054E95F    jmp         0054E94E
 0054E961    pop         edi
 0054E962    pop         esi
 0054E963    pop         ebx
 0054E964    mov         esp,ebp
 0054E966    pop         ebp
 0054E967    ret
end;*}

//0054E968
{*procedure sub_0054E968(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0054E968    push        ebp
 0054E969    mov         ebp,esp
 0054E96B    add         esp,0FFFFFFA0
 0054E96E    push        ebx
 0054E96F    push        esi
 0054E970    push        edi
 0054E971    mov         esi,ecx
 0054E973    lea         edi,[ebp-24]
 0054E976    movs        dword ptr [edi],dword ptr [esi]
 0054E977    movs        dword ptr [edi],dword ptr [esi]
 0054E978    movs        dword ptr [edi],dword ptr [esi]
 0054E979    movs        dword ptr [edi],dword ptr [esi]
 0054E97A    mov         dword ptr [ebp-4],edx
 0054E97D    mov         ebx,eax
 0054E97F    call        StyleServices
 0054E984    mov         edx,dword ptr [eax]
 0054E986    call        dword ptr [edx+48];@AbstractError
 0054E989    test        al,al
>0054E98B    je          0054EB4E
 0054E991    lea         eax,[ebp-54]
 0054E994    xor         ecx,ecx
 0054E996    mov         edx,30
 0054E99B    call        @FillChar
 0054E9A0    mov         dword ptr [ebp-54],4
 0054E9A7    mov         eax,ebx
 0054E9A9    call        TStyleHook.GetHandle
 0054E9AE    mov         esi,eax
 0054E9B0    lea         eax,[ebp-54]
 0054E9B3    push        eax
 0054E9B4    mov         eax,dword ptr [ebp+18]
 0054E9B7    push        eax
 0054E9B8    push        120B
 0054E9BD    push        esi
 0054E9BE    call        user32.SendMessageW
 0054E9C3    cmp         byte ptr [ebp+8],0
>0054E9C7    je          0054E9CF
 0054E9C9    mov         byte ptr [ebp-5],2
>0054E9CD    jmp         0054E9F1
 0054E9CF    cmp         byte ptr [ebp+10],0
>0054E9D3    je          0054E9DB
 0054E9D5    mov         byte ptr [ebp-5],4
>0054E9D9    jmp         0054E9F1
 0054E9DB    cmp         byte ptr [ebp+0C],0
>0054E9DF    je          0054E9ED
 0054E9E1    cmp         byte ptr [ebx+24],0;THeaderStyleHook.FMouseInControl:Boolean
>0054E9E5    je          0054E9ED
 0054E9E7    mov         byte ptr [ebp-5],3
>0054E9EB    jmp         0054E9F1
 0054E9ED    mov         byte ptr [ebp-5],2
 0054E9F1    call        StyleServices
 0054E9F6    movzx       edx,byte ptr [ebp-5]
 0054E9FA    lea         ecx,[ebp-60]
 0054E9FD    mov         esi,dword ptr [eax]
 0054E9FF    call        dword ptr [esi+94];TCustomStyleServices.GetElementDetails
 0054EA05    lea         eax,[ebp-24]
 0054EA08    push        eax
 0054EA09    push        0
 0054EA0B    mov         eax,dword ptr [ebp-4]
 0054EA0E    call        TCanvas.GetHandle
 0054EA13    push        eax
 0054EA14    call        StyleServices
 0054EA19    lea         ecx,[ebp-60]
 0054EA1C    pop         edx
 0054EA1D    call        TCustomStyleServices.DrawElement
 0054EA22    push        0
 0054EA24    push        0
 0054EA26    push        1209
 0054EA2B    mov         eax,ebx
 0054EA2D    call        TStyleHook.GetHandle
 0054EA32    push        eax
 0054EA33    call        user32.SendMessageW
 0054EA38    mov         esi,eax
 0054EA3A    mov         dword ptr [ebp-54],24
 0054EA41    lea         eax,[ebp-24]
 0054EA44    mov         ecx,0FFFFFFFD
 0054EA49    mov         edx,0FFFFFFFD
 0054EA4E    call        InflateRect
 0054EA53    test        esi,esi
>0054EA55    je          0054EA7B
 0054EA57    mov         eax,ebx
 0054EA59    call        TStyleHook.GetHandle
 0054EA5E    mov         edi,eax
 0054EA60    lea         eax,[ebp-54]
 0054EA63    push        eax
 0054EA64    mov         eax,dword ptr [ebp+18]
 0054EA67    push        eax
 0054EA68    push        120B
 0054EA6D    push        edi
 0054EA6E    call        user32.SendMessageW
 0054EA73    cmp         eax,1
 0054EA76    sbb         eax,eax
 0054EA78    inc         eax
>0054EA79    jmp         0054EA7D
 0054EA7B    xor         eax,eax
 0054EA7D    test        al,al
>0054EA7F    je          0054EAE5
 0054EA81    mov         eax,dword ptr [ebp-40]
 0054EA84    and         eax,800
 0054EA89    cmp         eax,800
>0054EA8E    jne         0054EAE5
 0054EA90    lea         eax,[ebp-14]
 0054EA93    push        eax
 0054EA94    lea         eax,[ebp-10]
 0054EA97    push        eax
 0054EA98    push        esi
 0054EA99    call        comctl32.ImageList_GetIconSize
 0054EA9E    mov         edi,dword ptr [ebp-24]
 0054EAA1    lea         eax,[ebp-24]
 0054EAA4    call        RectHeight
 0054EAA9    sar         eax,1
>0054EAAB    jns         0054EAB0
 0054EAAD    adc         eax,0
 0054EAB0    add         eax,dword ptr [ebp-20]
 0054EAB3    mov         edx,dword ptr [ebp-14]
 0054EAB6    sar         edx,1
>0054EAB8    jns         0054EABD
 0054EABA    adc         edx,0
 0054EABD    sub         eax,edx
 0054EABF    mov         dword ptr [ebp-0C],eax
 0054EAC2    push        1
 0054EAC4    mov         eax,dword ptr [ebp-0C]
 0054EAC7    push        eax
 0054EAC8    push        edi
 0054EAC9    mov         eax,dword ptr [ebp-4]
 0054EACC    call        TCanvas.GetHandle
 0054EAD1    push        eax
 0054EAD2    mov         eax,dword ptr [ebp-38]
 0054EAD5    push        eax
 0054EAD6    push        esi
 0054EAD7    call        comctl32.ImageList_Draw
 0054EADC    mov         eax,dword ptr [ebp-10]
 0054EADF    add         eax,3
 0054EAE2    add         dword ptr [ebp-24],eax
 0054EAE5    cmp         dword ptr [ebp+18],0
>0054EAE9    jge         0054EAFA
 0054EAEB    mov         edx,8024
 0054EAF0    mov         eax,dword ptr [ebx+8];THeaderStyleHook.FControl:TWinControl
 0054EAF3    call        TControl.DrawTextBiDiModeFlags
>0054EAF8    jmp         0054EB38
 0054EAFA    mov         eax,dword ptr [ebp-40]
 0054EAFD    mov         edx,eax
 0054EAFF    and         edx,1
 0054EB02    dec         edx
>0054EB03    jne         0054EB14
 0054EB05    mov         edx,8026
 0054EB0A    mov         eax,dword ptr [ebx+8];THeaderStyleHook.FControl:TWinControl
 0054EB0D    call        TControl.DrawTextBiDiModeFlags
>0054EB12    jmp         0054EB38
 0054EB14    and         eax,2
 0054EB17    cmp         eax,2
>0054EB1A    jne         0054EB2B
 0054EB1C    mov         edx,8025
 0054EB21    mov         eax,dword ptr [ebx+8];THeaderStyleHook.FControl:TWinControl
 0054EB24    call        TControl.DrawTextBiDiModeFlags
>0054EB29    jmp         0054EB38
 0054EB2B    mov         edx,8024
 0054EB30    mov         eax,dword ptr [ebx+8];THeaderStyleHook.FControl:TWinControl
 0054EB33    call        TControl.DrawTextBiDiModeFlags
 0054EB38    mov         edx,dword ptr [ebp+14]
 0054EB3B    push        edx
 0054EB3C    lea         edx,[ebp-24]
 0054EB3F    push        edx
 0054EB40    push        eax
 0054EB41    lea         ecx,[ebp-60]
 0054EB44    mov         edx,dword ptr [ebp-4]
 0054EB47    mov         eax,ebx
 0054EB49    call        TStyleHook.DrawControlText
 0054EB4E    pop         edi
 0054EB4F    pop         esi
 0054EB50    pop         ebx
 0054EB51    mov         esp,ebp
 0054EB53    pop         ebp
 0054EB54    ret         14
end;*}

//0054EB58
{*procedure THeaderStyleHook.WMLButtonDown(?:?);
begin
 0054EB58    push        ebx
 0054EB59    push        esi
 0054EB5A    add         esp,0FFFFFFF0
 0054EB5D    mov         esi,edx
 0054EB5F    mov         ebx,eax
 0054EB61    mov         edx,esi
 0054EB63    mov         eax,ebx
 0054EB65    call        TStyleHook.CallDefaultProc
 0054EB6A    movsx       eax,word ptr [esi+8]
 0054EB6E    mov         dword ptr [esp],eax
 0054EB71    movsx       eax,word ptr [esi+0A]
 0054EB75    mov         dword ptr [esp+4],eax
 0054EB79    mov         eax,esp
 0054EB7B    push        eax
 0054EB7C    push        0
 0054EB7E    push        1206
 0054EB83    mov         eax,ebx
 0054EB85    call        TStyleHook.GetHandle
 0054EB8A    push        eax
 0054EB8B    call        user32.SendMessageW
 0054EB90    mov         eax,dword ptr [esp+8]
 0054EB94    test        al,4
>0054EB96    jne         0054EBA5
 0054EB98    test        al,8
>0054EB9A    jne         0054EBA5
 0054EB9C    mov         eax,dword ptr [esp+0C]
 0054EBA0    mov         dword ptr [ebx+28],eax;THeaderStyleHook.FPressedSectionIndex:Integer
>0054EBA3    jmp         0054EBAC
 0054EBA5    mov         dword ptr [ebx+28],0FFFFFFFF;THeaderStyleHook.FPressedSectionIndex:Integer
 0054EBAC    push        1
 0054EBAE    push        0
 0054EBB0    push        0
 0054EBB2    mov         eax,ebx
 0054EBB4    call        TStyleHook.GetHandle
 0054EBB9    push        eax
 0054EBBA    call        user32.RedrawWindow
 0054EBBF    mov         byte ptr [ebx+14],1;THeaderStyleHook.FHandled:Boolean
 0054EBC3    add         esp,10
 0054EBC6    pop         esi
 0054EBC7    pop         ebx
 0054EBC8    ret
end;*}

//0054EBCC
procedure THeaderStyleHook.WMLButtonUp;
begin
{*
 0054EBCC    push        ebx
 0054EBCD    mov         ebx,eax
 0054EBCF    mov         eax,ebx
 0054EBD1    call        TStyleHook.CallDefaultProc
 0054EBD6    mov         dword ptr [ebx+28],0FFFFFFFF;THeaderStyleHook.FPressedSectionIndex:Integer
 0054EBDD    push        1
 0054EBDF    push        0
 0054EBE1    push        0
 0054EBE3    mov         eax,ebx
 0054EBE5    call        TStyleHook.GetHandle
 0054EBEA    push        eax
 0054EBEB    call        user32.RedrawWindow
 0054EBF0    mov         byte ptr [ebx+14],1;THeaderStyleHook.FHandled:Boolean
 0054EBF4    pop         ebx
 0054EBF5    ret
*}
end;

//0054EBF8
procedure THeaderStyleHook.WMRButtonUp;
begin
{*
 0054EBF8    push        ebx
 0054EBF9    mov         ebx,eax
 0054EBFB    mov         eax,ebx
 0054EBFD    call        TStyleHook.CallDefaultProc
 0054EC02    mov         dword ptr [ebx+28],0FFFFFFFF;THeaderStyleHook.FPressedSectionIndex:Integer
 0054EC09    push        1
 0054EC0B    push        0
 0054EC0D    push        0
 0054EC0F    mov         eax,ebx
 0054EC11    call        TStyleHook.GetHandle
 0054EC16    push        eax
 0054EC17    call        user32.RedrawWindow
 0054EC1C    mov         byte ptr [ebx+14],1;THeaderStyleHook.FHandled:Boolean
 0054EC20    pop         ebx
 0054EC21    ret
*}
end;

//0054EC24
procedure sub_0054EC24;
begin
{*
 0054EC24    call        0058DB4C
 0054EC29    ret
*}
end;

//0054EC2C
{*procedure THeaderStyleHook.WMMouseMove(?:?);
begin
 0054EC2C    push        ebx
 0054EC2D    push        esi
 0054EC2E    push        edi
 0054EC2F    add         esp,0FFFFFFF0
 0054EC32    mov         esi,edx
 0054EC34    mov         ebx,eax
 0054EC36    mov         edx,esi
 0054EC38    mov         eax,ebx
 0054EC3A    call        TMouseTrackControlStyleHook.WMMouseMove
 0054EC3F    mov         edx,esi
 0054EC41    mov         eax,ebx
 0054EC43    call        TStyleHook.CallDefaultProc
 0054EC48    mov         edi,dword ptr [ebx+2C];THeaderStyleHook.FHotSectionIndex:Integer
 0054EC4B    movsx       eax,word ptr [esi+8]
 0054EC4F    mov         dword ptr [esp],eax
 0054EC52    movsx       eax,word ptr [esi+0A]
 0054EC56    mov         dword ptr [esp+4],eax
 0054EC5A    mov         eax,esp
 0054EC5C    push        eax
 0054EC5D    push        0
 0054EC5F    push        1206
 0054EC64    mov         eax,ebx
 0054EC66    call        TStyleHook.GetHandle
 0054EC6B    push        eax
 0054EC6C    call        user32.SendMessageW
 0054EC71    mov         eax,dword ptr [esp+8]
 0054EC75    test        al,4
>0054EC77    jne         0054EC86
 0054EC79    test        al,8
>0054EC7B    jne         0054EC86
 0054EC7D    mov         eax,dword ptr [esp+0C]
 0054EC81    mov         dword ptr [ebx+2C],eax;THeaderStyleHook.FHotSectionIndex:Integer
>0054EC84    jmp         0054EC8D
 0054EC86    mov         dword ptr [ebx+2C],0FFFFFFFF;THeaderStyleHook.FHotSectionIndex:Integer
 0054EC8D    cmp         edi,dword ptr [ebx+2C];THeaderStyleHook.FHotSectionIndex:Integer
>0054EC90    je          0054ECA5
 0054EC92    push        1
 0054EC94    push        0
 0054EC96    push        0
 0054EC98    mov         eax,ebx
 0054EC9A    call        TStyleHook.GetHandle
 0054EC9F    push        eax
 0054ECA0    call        user32.RedrawWindow
 0054ECA5    mov         byte ptr [ebx+14],1;THeaderStyleHook.FHandled:Boolean
 0054ECA9    add         esp,10
 0054ECAC    pop         edi
 0054ECAD    pop         esi
 0054ECAE    pop         ebx
 0054ECAF    ret
end;*}

//0054ECB0
{*procedure TRichEditStyleHook.sub_0054ECB0(?:?);
begin
 0054ECB0    push        ebx
 0054ECB1    push        esi
 0054ECB2    mov         esi,edx
 0054ECB4    mov         ebx,eax
 0054ECB6    mov         eax,dword ptr [ebx+8];TRichEditStyleHook.FControl:TWinControl
 0054ECB9    test        byte ptr [eax+188],2;TWinControl.FStyleElements:TStyleElements
>0054ECC0    je          0054ECDA
 0054ECC2    call        StyleServices
 0054ECC7    mov         dl,0C
 0054ECC9    call        TCustomStyleServices.GetStyleColor
 0054ECCE    call        ColorToRGB
 0054ECD3    mov         dword ptr [esi+8],eax
 0054ECD6    mov         byte ptr [ebx+14],0;TRichEditStyleHook.FHandled:Boolean
 0054ECDA    pop         esi
 0054ECDB    pop         ebx
 0054ECDC    ret
end;*}

//0054ECE0
{*procedure TRichEditStyleHook.sub_0054ECE0(?:?);
begin
 0054ECE0    push        ebx
 0054ECE1    push        esi
 0054ECE2    mov         ebx,eax
 0054ECE4    mov         esi,dword ptr [edx+8]
 0054ECE7    mov         eax,dword ptr [ebx+8];TRichEditStyleHook.FControl:TWinControl
 0054ECEA    test        byte ptr [eax+188],1;TWinControl.FStyleElements:TStyleElements
>0054ECF1    je          0054ED61
 0054ECF3    mov         eax,dword ptr [ebx+8];TRichEditStyleHook.FControl:TWinControl
 0054ECF6    test        byte ptr [eax+188],2;TWinControl.FStyleElements:TStyleElements
>0054ECFD    je          0054ED61
 0054ECFF    mov         eax,dword ptr [esi+4]
 0054ED02    and         eax,40000000
 0054ED07    cmp         eax,40000000
>0054ED0C    jne         0054ED61
 0054ED0E    mov         eax,dword ptr [ebx+8];TRichEditStyleHook.FControl:TWinControl
 0054ED11    mov         edx,dword ptr [eax]
 0054ED13    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0054ED16    and         eax,7F
 0054ED19    movzx       eax,byte ptr [eax+7A16CC]
 0054ED20    push        eax
 0054ED21    call        StyleServices
 0054ED26    pop         edx
 0054ED27    call        TCustomStyleServices.GetStyleFontColor
 0054ED2C    call        ColorToRGB
 0054ED31    mov         dword ptr [esi+14],eax
 0054ED34    mov         eax,dword ptr [ebx+8];TRichEditStyleHook.FControl:TWinControl
 0054ED37    mov         edx,dword ptr [eax]
 0054ED39    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 0054ED3C    and         eax,7F
 0054ED3F    movzx       eax,byte ptr [eax+7A16CE]
 0054ED46    push        eax
 0054ED47    call        StyleServices
 0054ED4C    pop         edx
 0054ED4D    call        TCustomStyleServices.GetStyleColor
 0054ED52    call        ColorToRGB
 0054ED57    mov         dword ptr [esi+60],eax
 0054ED5A    and         dword ptr [esi+8],0BFFFFFFF
 0054ED61    mov         byte ptr [ebx+14],0;TRichEditStyleHook.FHandled:Boolean
 0054ED65    pop         esi
 0054ED66    pop         ebx
 0054ED67    ret
end;*}

//0054ED68
{*procedure sub_0054ED68(?:?);
begin
 0054ED68    push        ebx
 0054ED69    push        esi
 0054ED6A    mov         ebx,edx
 0054ED6C    mov         esi,eax
 0054ED6E    mov         edx,ebx
 0054ED70    mov         eax,esi
 0054ED72    call        005CF948
 0054ED77    mov         eax,dword ptr [ebx]
 0054ED79    sub         eax,0BC4E
>0054ED7E    jne         0054ED93
 0054ED80    mov         eax,dword ptr [ebx+8]
 0054ED83    cmp         dword ptr [eax+8],702
>0054ED8A    jne         0054ED93
 0054ED8C    mov         eax,esi
 0054ED8E    mov         edx,dword ptr [eax]
 0054ED90    call        dword ptr [edx+2C];TStyleHook.InvalidateNC
 0054ED93    pop         esi
 0054ED94    pop         ebx
 0054ED95    ret
end;*}

Initialization
//0079D4A8
{*
 0079D4A8    sub         dword ptr ds:[7CA6C4],1
>0079D4AF    jae         0079D4E0
 0079D4B1    mov         dl,1
 0079D4B3    mov         eax,[0046C204];TList
 0079D4B8    call        TObject.Create;TList.Create
 0079D4BD    mov         [007CA6CC],eax;gvar_007CA6CC:TList
 0079D4C2    mov         edx,7A150C
 0079D4C7    mov         eax,[007CA6CC];gvar_007CA6CC:TList
 0079D4CC    call        TList.Add
 0079D4D1    mov         edx,7A1504
 0079D4D6    mov         eax,[007CA6CC];gvar_007CA6CC:TList
 0079D4DB    call        TList.Add
 0079D4E0    ret
*}
Finalization
//0054ED98
{*
 0054ED98    inc         dword ptr ds:[7CA6C4]
>0054ED9E    jne         0054EDCD
 0054EDA0    cmp         dword ptr ds:[7CA6D0],0;gvar_007CA6D0
>0054EDA7    je          0054EDB4
 0054EDA9    mov         eax,[007CA6D0];gvar_007CA6D0
 0054EDAE    push        eax
 0054EDAF    call        kernel32.FreeLibrary
 0054EDB4    cmp         dword ptr ds:[7CA6D4],0;gvar_007CA6D4:HMODULE
>0054EDBB    je          0054EDC8
 0054EDBD    mov         eax,[007CA6D4];gvar_007CA6D4:HMODULE
 0054EDC2    push        eax
 0054EDC3    call        kernel32.FreeLibrary
 0054EDC8    call        0054B090
 0054EDCD    ret
*}
end.