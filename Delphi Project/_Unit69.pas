//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit69;

interface

uses
  SysUtils, Classes;

type
  :TCustomListView.:2 = array of Integer;
//elSize = 4
//varType equivalent: varInteger;
    destructor Destroy();//005452A4
    procedure CreateParams(var Params:TCreateParams);//005453BC
    //procedure sub_005454E8(?:?);//005454E8
    procedure CreateWnd;//0054559C
    procedure sub_005458DC;//005458DC
    //function sub_00545990(?:TCustomListView; ?:HIMAGELIST; ?:?):?;//00545990
    function IsStoredGroups(Value:TListGroups):Boolean;//005459C0
    //procedure sub_005459D4(?:?; ?:?);//005459D4
    procedure CMFontChanged(var Message:TMessage);//00545A5C
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00545A9C
    procedure UpdateItems(FirstIndex:Integer; LastIndex:Integer);//0054602C
    procedure sub_0054604C(?:TCustomListView);//0054604C
    procedure sub_00546154(?:TCustomListView);//00546154
    procedure sub_005461E8(?:TCustomListView);//005461E8
    procedure SetCheckboxes(Value:Boolean);//00546274
    procedure SetGridLines(Value:Boolean);//0054632C
    procedure SetHotTrack(Value:Boolean);//00546340
    procedure SetHotTrackStyles(Value:TListHotTrackStyles);//00546354
    procedure SetOwnerData(Value:Boolean);//0054637C
    procedure SetOwnerDraw(Value:Boolean);//005463A8
    procedure SetRowSelect(Value:Boolean);//005463BC
    procedure SetFlatScrollBars(Value:Boolean);//005463D0
    procedure SetFullDrag(Value:Boolean);//005463E4
    procedure SetBorderStyle(Value:TBorderStyle);//005463F8
    procedure SetColumnClick(Value:Boolean);//0054640C
    //procedure sub_00546420(?:?);//00546420
    procedure SetMultiSelect(Value:Boolean);//00546480
    procedure SetShowColumnHeaders(Value:Boolean);//00546494
    procedure sub_005464A8(?:TCustomListView);//005464A8
    procedure sub_005464D4(?:TCustomListView);//005464D4
    procedure SetAllocBy(Value:Integer);//00546520
    procedure CMColorChanged(var Message:Messages.TMessage);//00546558
    //procedure CMCtl3DChanged(?:?);//0054657C
    procedure WMNotify(Message:Messages.TWMNotify);//005465A0
    //function sub_00546804(?:?):Boolean;//00546804
    function sub_00546810(?:TCustomListView):Boolean;//00546810
    procedure CMFontChanged;//0054681C
    procedure SetHideSelection(Value:Boolean);//0054685C
    procedure SetReadOnly(Value:Boolean);//00546870
    procedure SetIconOptions(Value:TIconOptions);//00546884
    procedure SetViewStyle(Value:TViewStyle);//005468B4
    procedure WMParentNotify(Message:Messages.TWMParentNotify);//0054694C
    //function sub_0054699C:?;//0054699C
    //function sub_005469C4(?:?):?;//005469C4
    //function sub_005469EC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//005469EC
    //function sub_00546A38(?:?):?;//00546A38
    //function sub_00546A60(?:?; ?:?; ?:?):?;//00546A60
    procedure sub_00546A98;//00546A98
    procedure sub_00546AD0;//00546AD0
    //function sub_00546AE0(?:?):?;//00546AE0
    //function sub_00546B2C(?:TCustomListView; ?:Byte):?;//00546B2C
    procedure sub_00546C60;//00546C60
    //function sub_00546C7C(?:?):?;//00546C7C
    //function sub_00546CA0(?:?):?;//00546CA0
    //procedure sub_00546CEC(?:?);//00546CEC
    //procedure sub_00547BD4(?:?; ?:?);//00547BD4
    procedure ChangeScale(M:Integer; D:Integer);//00547CDC
    //procedure sub_00547D70(?:?);//00547D70
    //procedure sub_00547D90(?:?; ?:?);//00547D90
    //procedure sub_00547DC0(?:?);//00547DC0
    procedure AddItem(Item:string; AObject:TObject);//00547DE8
    //procedure sub_00547E50(?:?; ?:?);//00547E50
    //function sub_00547F54:?;//00547F54
    //procedure sub_00547F70(?:?; ?:?);//00547F70
    //procedure sub_00547FB0(?:?);//00547FB0
    //procedure sub_00547FF0(?:?);//00547FF0
    //procedure sub_0054801C(?:?);//0054801C
    function GetDragImages:TDragImageList;//0054809C
    //procedure sub_005480B8(?:?);//005480B8
    //procedure sub_00548164(?:?; ?:?);//00548164
    //procedure sub_004E7840(?:?);//005481E4
    //procedure sub_004E7880(?:?; ?:?);//005482C4
    procedure CMDrag(Message:TCMDrag);//005482F0
    //procedure CMExit(?:?);//00548424
    //procedure sub_005484FC(?:TCustomListView; ?:?; ?:?; ?:?; ?:?);//005484FC
    procedure SetItems(Value:TListItems);//00548588
    procedure SetColumns(Value:TListColumns);//00548594
    procedure SetGroups(Value:TListGroups);//005485A0
    function AlphaSort:Boolean;//005485AC
    procedure SetSortType(Value:TSortType);//005485E4
    //procedure sub_0054864C(?:?; ?:?);//0054864C
    //function sub_0054866C(?:TCustomListView):?;//0054866C
    procedure SetGroupHeaderImages(Value:TCustomImageList);//005486D0
    procedure SetLargeImages(Value:TCustomImageList);//0054874C
    procedure SetSmallImages(Value:TCustomImageList);//005487C0
    procedure SetStateImages(Value:TCustomImageList);//0054883C
    function GetColumnFromIndex(Index:Integer):TListColumn;//005488E4
    function FindCaption(StartIndex:Integer; Value:string; Wrap:Boolean; Inclusive:Boolean; Partial:Boolean):TListItem;//005488F0
    //function sub_005489C4:?;//005489C4
    procedure sub_005489DC(?:TCustomListView; ?:TListItem);//005489DC
    //function sub_00548A44(?:TCustomListView):?;//00548A44
    //procedure sub_00548A6C(?:TCustomListView; ?:?);//00548A6C
    //function sub_00548AB0:?;//00548AB0
    procedure sub_00548AC8(?:TCustomListView; ?:TListItem);//00548AC8
    //procedure sub_00548B0C(?:TCustomListView; ?:?);//00548B0C
    function GetNextItem(StartItem:TListItem; Direction:TSearchDirection; States:TItemStates):TListItem;//00548B2C
    function GetNearestItem(Point:TPoint; Direction:TSearchDirection):TListItem;//00548C00
    function GetItemAt(X:Integer; Y:Integer):TListItem;//00548C70
    procedure Arrange(Code:TListArrangement);//00548CDC
    procedure UpdateColumns;//00548D04
    procedure sub_00548D80(?:TCustomListView);//00548D80
    //procedure sub_00548FEC(?:TCustomListView; ?:?);//00548FEC
    procedure UpdateColumn(AnIndex:Integer);//00549278
    //procedure WMLButtonDown(?:?);//005493E4
    procedure sub_00549578(?:TCustomListView);//00549578
    //procedure WMWindowPosChangedMsg(?:?);//0054970C
    //procedure sub_00549740(?:?);//00549740
    //function sub_0054987C(?:?; ?:?):?;//0054987C
    //function sub_00549990(?:?; ?:?):?;//00549990
    //function sub_005499E8(?:?; ?:?; ?:?):?;//005499E8
    //function sub_00549A5C(?:?; ?:?; ?:?; ?:?):?;//00549A5C
    //procedure sub_00549AD4(?:?; ?:?; ?:?);//00549AD4
    //procedure sub_00549B4C(?:TCustomListView; ?:?; ?:?; ?:?);//00549B4C
    procedure sub_00549B90(?:TCustomListView);//00549B90
    //procedure WMPaint(?:?);//00549D04
    procedure SetShowWorkAreas(Value:Boolean);//00549D2C
    //procedure CMHintShow(?:?);//00549D44
    //procedure sub_00549E6C(?:?);//00549E6C
    procedure SetHoverTime(Value:Integer);//00549E8C
    procedure SetGroupView(Value:Boolean);//00549ECC
    //function GetHoverTime:?;//00549F0C
    procedure sub_00549F3C(?:TCustomListView);//00549F3C
    procedure sub_00549FA8(?:TCustomListView);//00549FA8
    procedure IsStoredItems(Value:TListItems);//0054A028
    //procedure sub_004E9010(?:?; ?:?; ?:?; ?:?);//0054A060
    //function sub_0054A0A8(?:TCustomListView; ?:?):?;//0054A0A8
    //procedure WMContextMenu(?:?);//0054A0E4
    //procedure WMCtlColorEdit(?:?);//0054A16C
    procedure ClearSelection;//0054A1C0
    procedure CopySelection(Destination:TCustomListControl);//0054A1FC
    procedure DeleteSelected;//0054A270
    procedure GetCount;//0054A318
    procedure SelectAll;//0054A324
    procedure Clear;//0054A360
    procedure sub_004E9934;//0054A3B8
    //procedure sub_004E980C(?:?; ?:?);//0054A3C0
    procedure WMVScroll(Message:Messages.TWMHScroll);//0054A424

implementation

//005452A4
destructor TCustomListView.Destroy();
begin
{*
 005452A4    push        ebx
 005452A5    push        esi
 005452A6    call        @BeforeDestruction
 005452AB    mov         ebx,edx
 005452AD    mov         esi,eax
 005452AF    mov         eax,esi
 005452B1    call        TWinControl.HandleAllocated
 005452B6    test        al,al
>005452B8    je          005452C4
 005452BA    mov         eax,esi
 005452BC    mov         edx,dword ptr [eax]
 005452BE    call        dword ptr [edx+0DC];TCustomListView.sub_004EC074
 005452C4    mov         eax,dword ptr [esi+2B4];TCustomListView.FDragImage:TDragImageList
 005452CA    call        TObject.Free
 005452CF    mov         eax,dword ptr [esi+2CC];TCustomListView.FListColumns:TListColumns
 005452D5    call        TObject.Free
 005452DA    mov         eax,dword ptr [esi+31C];TCustomListView.FTempItem:TListItem
 005452E0    call        TObject.Free
 005452E5    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 005452EB    call        TObject.Free
 005452F0    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 005452F6    call        TObject.Free
 005452FB    mov         eax,dword ptr [esi+2C4];TCustomListView.FIconOptions:TIconOptions
 00545301    call        TObject.Free
 00545306    mov         eax,dword ptr [esi+2D0];TCustomListView.FMemStream:TMemoryStream
 0054530C    call        TObject.Free
 00545311    mov         eax,dword ptr [esi+2D8];TCustomListView.FColStream:TMemoryStream
 00545317    call        TObject.Free
 0054531C    mov         eax,dword ptr [esi+2DC];TCustomListView.FCheckStream:TMemoryStream
 00545322    call        TObject.Free
 00545327    mov         eax,dword ptr [esi+320];TCustomListView.FWorkAreas:TWorkAreas
 0054532D    call        TObject.Free
 00545332    mov         eax,dword ptr [esi+420];TCustomListView.FEditInstance:Pointer
 00545338    call        FreeObjectInstance
 0054533D    mov         eax,dword ptr [esi+2EC];TCustomListView.FHeaderHandle:HWND
 00545343    test        eax,eax
>00545345    je          00545356
 00545347    mov         edx,dword ptr [esi+2E4];TCustomListView.FDefHeaderProc:Pointer
 0054534D    push        edx
 0054534E    push        0FC
 00545350    push        eax
 00545351    call        user32.SetWindowLongW
 00545356    mov         eax,dword ptr [esi+424];TCustomListView.FHeaderInstance:Pointer
 0054535C    call        FreeObjectInstance
 00545361    mov         eax,dword ptr [esi+308];TCustomListView.FLargeChangeLink:TChangeLink
 00545367    call        TObject.Free
 0054536C    mov         eax,dword ptr [esi+30C];TCustomListView.FSmallChangeLink:TChangeLink
 00545372    call        TObject.Free
 00545377    mov         eax,dword ptr [esi+314];TCustomListView.FStateChangeLink:TChangeLink
 0054537D    call        TObject.Free
 00545382    mov         eax,dword ptr [esi+310];TCustomListView.FHeaderChangeLink:TChangeLink
 00545388    call        TObject.Free
 0054538D    mov         eax,dword ptr [esi+298];TCustomListView.FCanvas:TCanvas
 00545393    call        TObject.Free
 00545398    xor         eax,eax
 0054539A    mov         dword ptr [esi+298],eax;TCustomListView.FCanvas:TCanvas
 005453A0    mov         dl,0FC
 005453A2    and         dl,bl
 005453A4    mov         eax,esi
 005453A6    call        TWinControl.Destroy
 005453AB    test        bl,bl
>005453AD    jle         005453B6
 005453AF    mov         eax,esi
 005453B1    call        @ClassDestroy
 005453B6    pop         esi
 005453B7    pop         ebx
 005453B8    ret
*}
end;

//005453BC
procedure TCustomListView.CreateParams(var Params:TCreateParams);
begin
{*
 005453BC    push        ebx
 005453BD    push        esi
 005453BE    mov         esi,edx
 005453C0    mov         ebx,eax
 005453C2    mov         eax,1
 005453C7    call        InitCommonControl
 005453CC    mov         edx,esi
 005453CE    mov         eax,ebx
 005453D0    call        TWinControl.CreateParams
 005453D5    mov         ecx,5454CC;'S'
 005453DA    mov         edx,esi
 005453DC    mov         eax,ebx
 005453DE    call        TWinControl.CreateSubClass
 005453E3    mov         edx,dword ptr [esi+4];TCreateParams.Style:DWORD
 005453E6    or          edx,2000000
 005453EC    movzx       ecx,byte ptr [ebx+29D];TCustomListView.FViewStyle:TViewStyle
 005453F3    or          edx,dword ptr [ecx*4+7A163C]
 005453FA    movzx       ecx,byte ptr [ebx+29C];TCustomListView.FBorderStyle:TBorderStyle
 00545401    or          edx,dword ptr [ecx*4+7A1604]
 00545408    mov         eax,dword ptr [ebx+2C4];TCustomListView.FIconOptions:TIconOptions
 0054540E    movzx       ecx,byte ptr [eax+8];TIconOptions.FArrangement:TIconArrangement
 00545412    or          edx,dword ptr [ecx*4+7A1624]
 00545419    movzx       ecx,byte ptr [ebx+29E];TCustomListView.FReadOnly:Boolean
 00545420    or          edx,dword ptr [ecx*4+7A160C]
 00545427    movzx       ecx,byte ptr [ebx+2B8];TCustomListView.FMultiSelect:Boolean
 0054542E    or          edx,dword ptr [ecx*4+7A1614]
 00545435    movzx       ecx,byte ptr [ebx+2C8];TCustomListView.FHideSelection:Boolean
 0054543C    or          edx,dword ptr [ecx*4+7A161C]
 00545443    movzx       ecx,byte ptr [eax+9];TIconOptions.FAutoArrange:Boolean
 00545447    or          edx,dword ptr [ecx*4+7A162C]
 0054544E    movzx       eax,byte ptr [eax+0A];TIconOptions.FWrapText:Boolean
 00545452    or          edx,dword ptr [eax*4+7A1634]
 00545459    movzx       eax,byte ptr [ebx+2BB];TCustomListView.FShowColumnHeaders:Boolean
 00545460    or          edx,dword ptr [eax*4+7A164C]
 00545467    movzx       eax,byte ptr [ebx+2BA];TCustomListView.FColumnClick:Boolean
 0054546E    or          edx,dword ptr [eax*4+7A1654]
 00545475    or          edx,40
 00545478    mov         dword ptr [esi+4],edx;TCreateParams.Style:DWORD
 0054547B    cmp         byte ptr [ebx+2D4],0;TCustomListView.FOwnerData:Boolean
>00545482    je          0054548B
 00545484    or          dword ptr [esi+4],1000;TCreateParams.Style:DWORD
 0054548B    cmp         byte ptr [ebx+2D5],0;TCustomListView.FOwnerDraw:Boolean
>00545492    je          0054549B
 00545494    or          dword ptr [esi+4],400;TCreateParams.Style:DWORD
 0054549B    cmp         byte ptr [ebx+204],0;TCustomListView.FCtl3D:Boolean
>005454A2    je          005454C5
 005454A4    mov         eax,[007C4770];^gvar_007CA5E0
 005454A9    cmp         byte ptr [eax],0
>005454AC    je          005454C5
 005454AE    cmp         byte ptr [ebx+29C],1;TCustomListView.FBorderStyle:TBorderStyle
>005454B5    jne         005454C5
 005454B7    and         dword ptr [esi+4],0FF7FFFFF;TCreateParams.Style:DWORD
 005454BE    or          dword ptr [esi+8],200;TCreateParams.ExStyle:DWORD
 005454C5    and         dword ptr [esi+24],0FFFFFFFC;TCreateParams.WindowClass:TWndClass
 005454C9    pop         esi
 005454CA    pop         ebx
 005454CB    ret
*}
end;

//005454E8
{*procedure sub_005454E8(?:?);
begin
 005454E8    push        ebp
 005454E9    mov         ebp,esp
 005454EB    push        ecx
 005454EC    mov         eax,dword ptr [ebp+8]
 005454EF    mov         eax,dword ptr [eax-4]
 005454F2    cmp         dword ptr [eax+2D8],0
>005454F9    je          00545598
 005454FF    mov         eax,dword ptr [ebp+8]
 00545502    mov         eax,dword ptr [eax-4]
 00545505    mov         eax,dword ptr [eax+2CC]
 0054550B    call        TCollection.Clear
 00545510    push        400
 00545515    mov         eax,dword ptr [ebp+8]
 00545518    mov         eax,dword ptr [eax-4]
 0054551B    mov         ecx,dword ptr [eax+2D8]
 00545521    mov         dl,1
 00545523    mov         eax,[00474D48];TReader
 00545528    call        TFiler.Create;TReader.Create
 0054552D    mov         dword ptr [ebp-4],eax
 00545530    xor         eax,eax
 00545532    push        ebp
 00545533    push        545570
 00545538    push        dword ptr fs:[eax]
 0054553B    mov         dword ptr fs:[eax],esp
 0054553E    mov         eax,dword ptr [ebp-4]
 00545541    call        TReader.ReadValue
 00545546    mov         eax,dword ptr [ebp+8]
 00545549    mov         eax,dword ptr [eax-4]
 0054554C    mov         edx,dword ptr [eax+2CC]
 00545552    mov         eax,dword ptr [ebp-4]
 00545555    call        TReader.ReadCollection
 0054555A    xor         eax,eax
 0054555C    pop         edx
 0054555D    pop         ecx
 0054555E    pop         ecx
 0054555F    mov         dword ptr fs:[eax],edx
 00545562    push        545577
 00545567    mov         eax,dword ptr [ebp-4]
 0054556A    call        TObject.Free
 0054556F    ret
>00545570    jmp         @HandleFinally
>00545575    jmp         00545567
 00545577    mov         eax,dword ptr [ebp+8]
 0054557A    mov         eax,dword ptr [eax-4]
 0054557D    mov         eax,dword ptr [eax+2D8]
 00545583    mov         dl,1
 00545585    mov         ecx,dword ptr [eax]
 00545587    call        dword ptr [ecx-4]
 0054558A    mov         eax,dword ptr [ebp+8]
 0054558D    mov         eax,dword ptr [eax-4]
 00545590    xor         edx,edx
 00545592    mov         dword ptr [eax+2D8],edx
 00545598    pop         ecx
 00545599    pop         ebp
 0054559A    ret
end;*}

//0054559C
procedure TCustomListView.CreateWnd;
begin
{*
 0054559C    push        ebp
 0054559D    mov         ebp,esp
 0054559F    push        ecx
 005455A0    push        ebx
 005455A1    mov         dword ptr [ebp-4],eax
 005455A4    mov         eax,dword ptr [ebp-4]
 005455A7    call        TWinControl.CreateWnd
 005455AC    mov         eax,dword ptr [ebp-4]
 005455AF    call        0054604C
 005455B4    mov         eax,dword ptr [ebp-4]
 005455B7    mov         edx,dword ptr [eax+7C];TCustomListView.FColor:TColor
 005455BA    mov         eax,dword ptr [ebp-4]
 005455BD    call        005464D4
 005455C2    mov         eax,dword ptr [ebp-4]
 005455C5    mov         eax,dword ptr [eax+74];TCustomListView.FFont:TFont
 005455C8    mov         edx,dword ptr [eax+18];TFont.FColor:TColor
 005455CB    mov         eax,dword ptr [ebp-4]
 005455CE    call        005464A8
 005455D3    mov         eax,dword ptr [ebp-4]
 005455D6    mov         edx,dword ptr [eax+2F0];TCustomListView.FAllocBy:Integer
 005455DC    mov         eax,dword ptr [ebp-4]
 005455DF    call        TListView.SetAllocBy
 005455E4    mov         eax,dword ptr [ebp-4]
 005455E7    mov         edx,dword ptr [eax+304];TCustomListView.FHoverTime:Integer
 005455ED    mov         eax,dword ptr [ebp-4]
 005455F0    call        TListView.SetHoverTime
 005455F5    mov         eax,dword ptr [ebp-4]
 005455F8    cmp         dword ptr [eax+2D0],0;TCustomListView.FMemStream:TMemoryStream
>005455FF    je          00545768
 00545605    mov         eax,dword ptr [ebp-4]
 00545608    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054560E    call        TListItems.BeginUpdate
 00545613    mov         eax,dword ptr [ebp-4]
 00545616    mov         byte ptr [eax+319],1;TCustomListView.FReading:Boolean
 0054561D    xor         eax,eax
 0054561F    push        ebp
 00545620    push        545761
 00545625    push        dword ptr fs:[eax]
 00545628    mov         dword ptr fs:[eax],esp
 0054562B    mov         eax,dword ptr [ebp-4]
 0054562E    mov         eax,dword ptr [eax+2CC];TCustomListView.FListColumns:TListColumns
 00545634    call        TCollection.Clear
 00545639    push        0
 0054563B    push        0
 0054563D    mov         eax,dword ptr [ebp-4]
 00545640    mov         eax,dword ptr [eax+2D0];TCustomListView.FMemStream:TMemoryStream
 00545646    call        TStream.SetPosition
 0054564B    mov         eax,dword ptr [ebp-4]
 0054564E    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>00545652    je          00545667
 00545654    mov         eax,dword ptr [ebp-4]
 00545657    mov         eax,dword ptr [eax+2D0];TCustomListView.FMemStream:TMemoryStream
 0054565D    mov         edx,dword ptr [ebp-4]
 00545660    call        TStream.ReadComponent
>00545665    jmp         00545689
 00545667    mov         eax,dword ptr [ebp-4]
 0054566A    mov         eax,dword ptr [eax+2D0];TCustomListView.FMemStream:TMemoryStream
 00545670    mov         edx,dword ptr [ebp-4]
 00545673    call        TStream.ReadComponent
 00545678    mov         eax,dword ptr [ebp-4]
 0054567B    test        byte ptr [eax+1C],1;TCustomListView.FComponentState:TComponentState
>0054567F    je          00545689
 00545681    mov         eax,dword ptr [ebp-4]
 00545684    call        TWinControl.CMFontChanged
 00545689    mov         eax,dword ptr [ebp-4]
 0054568C    mov         eax,dword ptr [eax+2D0];TCustomListView.FMemStream:TMemoryStream
 00545692    mov         dl,1
 00545694    mov         ecx,dword ptr [eax]
 00545696    call        dword ptr [ecx-4];TPersistent.Destroy
 00545699    mov         eax,dword ptr [ebp-4]
 0054569C    xor         edx,edx
 0054569E    mov         dword ptr [eax+2D0],edx;TCustomListView.FMemStream:TMemoryStream
 005456A4    mov         eax,dword ptr [ebp-4]
 005456A7    cmp         byte ptr [eax+2D4],0;TCustomListView.FOwnerData:Boolean
>005456AE    je          005456C7
 005456B0    mov         eax,dword ptr [ebp-4]
 005456B3    mov         edx,dword ptr [eax+334];TCustomListView.FOwnerDataCount:Integer
 005456B9    mov         eax,dword ptr [ebp-4]
 005456BC    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 005456C2    call        00543F54
 005456C7    mov         eax,dword ptr [ebp-4]
 005456CA    cmp         byte ptr [eax+2FC],0;TCustomListView.FCheckboxes:Boolean
>005456D1    je          005456DB
 005456D3    mov         eax,dword ptr [ebp-4]
 005456D6    call        00546154
 005456DB    push        ebp
 005456DC    call        005454E8
 005456E1    pop         ecx
 005456E2    mov         eax,dword ptr [ebp-4]
 005456E5    mov         edx,dword ptr [eax+74];TCustomListView.FFont:TFont
 005456E8    mov         eax,dword ptr [ebp-4]
 005456EB    call        TGroupBox.SetFont
 005456F0    mov         eax,dword ptr [ebp-4]
 005456F3    mov         ebx,dword ptr [eax+2A4];TCustomListView.FSaveSelectedIndex:Integer
 005456F9    cmp         ebx,0FFFFFFFF
>005456FC    je          00545733
 005456FE    mov         edx,ebx
 00545700    mov         eax,dword ptr [ebp-4]
 00545703    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 00545709    call        TListItems.GetItem
 0054570E    mov         edx,eax
 00545710    mov         eax,dword ptr [ebp-4]
 00545713    call        005489DC
 00545718    mov         eax,dword ptr [ebp-4]
 0054571B    call        005489C4
 00545720    test        eax,eax
>00545722    je          00545733
 00545724    mov         eax,dword ptr [ebp-4]
 00545727    call        005489C4
 0054572C    xor         edx,edx
 0054572E    call        TListItem.MakeVisible
 00545733    mov         eax,dword ptr [ebp-4]
 00545736    call        00549FA8
 0054573B    xor         eax,eax
 0054573D    pop         edx
 0054573E    pop         ecx
 0054573F    pop         ecx
 00545740    mov         dword ptr fs:[eax],edx
 00545743    push        545768
 00545748    mov         eax,dword ptr [ebp-4]
 0054574B    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 00545751    call        TListItems.EndUpdate
 00545756    mov         eax,dword ptr [ebp-4]
 00545759    mov         byte ptr [eax+319],0;TCustomListView.FReading:Boolean
 00545760    ret
>00545761    jmp         @HandleFinally
>00545766    jmp         00545748
 00545768    mov         eax,dword ptr [ebp-4]
 0054576B    mov         eax,dword ptr [eax+2CC];TCustomListView.FListColumns:TListColumns
 00545771    call        TListColumns.UpdateCols
 00545776    mov         eax,dword ptr [ebp-4]
 00545779    call        TWinControl.GetHandle
 0054577E    mov         edx,dword ptr [ebp-4]
 00545781    cmp         byte ptr [edx+41C],1;TCustomListView.FGroupView:Boolean
 00545788    cmc
 00545789    sbb         edx,edx
 0054578B    push        0
 0054578D    push        edx
 0054578E    push        109D
 00545793    push        eax
 00545794    call        user32.SendMessageW
 00545799    mov         eax,dword ptr [ebp-4]
 0054579C    call        00548D80
 005457A1    mov         eax,dword ptr [ebp-4]
 005457A4    mov         ebx,dword ptr [eax+2A0];TCustomListView.FLargeImages:TCustomImageList
 005457AA    test        ebx,ebx
>005457AC    je          005457D3
 005457AE    mov         eax,ebx
 005457B0    call        TCustomImageList.HandleAllocated
 005457B5    test        al,al
>005457B7    je          005457D3
 005457B9    mov         eax,dword ptr [ebp-4]
 005457BC    mov         eax,dword ptr [eax+2A0];TCustomListView.FLargeImages:TCustomImageList
 005457C2    call        TCustomImageList.GetHandle
 005457C7    mov         edx,eax
 005457C9    xor         ecx,ecx
 005457CB    mov         eax,dword ptr [ebp-4]
 005457CE    call        00545990
 005457D3    mov         eax,dword ptr [ebp-4]
 005457D6    mov         ebx,dword ptr [eax+2A8];TCustomListView.FSmallImages:TCustomImageList
 005457DC    test        ebx,ebx
>005457DE    je          00545808
 005457E0    mov         eax,ebx
 005457E2    call        TCustomImageList.HandleAllocated
 005457E7    test        al,al
>005457E9    je          00545808
 005457EB    mov         eax,dword ptr [ebp-4]
 005457EE    mov         eax,dword ptr [eax+2A8];TCustomListView.FSmallImages:TCustomImageList
 005457F4    call        TCustomImageList.GetHandle
 005457F9    mov         edx,eax
 005457FB    mov         ecx,1
 00545800    mov         eax,dword ptr [ebp-4]
 00545803    call        00545990
 00545808    mov         eax,dword ptr [ebp-4]
 0054580B    mov         ebx,dword ptr [eax+2AC];TCustomListView.FStateImages:TCustomImageList
 00545811    test        ebx,ebx
>00545813    je          0054583D
 00545815    mov         eax,ebx
 00545817    call        TCustomImageList.HandleAllocated
 0054581C    test        al,al
>0054581E    je          0054583D
 00545820    mov         eax,dword ptr [ebp-4]
 00545823    mov         eax,dword ptr [eax+2AC];TCustomListView.FStateImages:TCustomImageList
 00545829    call        TCustomImageList.GetHandle
 0054582E    mov         edx,eax
 00545830    mov         ecx,2
 00545835    mov         eax,dword ptr [ebp-4]
 00545838    call        00545990
 0054583D    mov         eax,dword ptr [ebp-4]
 00545840    mov         ebx,dword ptr [eax+2B0];TCustomListView.FGroupHeaderImages:TCustomImageList
 00545846    test        ebx,ebx
>00545848    je          00545872
 0054584A    mov         eax,ebx
 0054584C    call        TCustomImageList.HandleAllocated
 00545851    test        al,al
>00545853    je          00545872
 00545855    mov         eax,dword ptr [ebp-4]
 00545858    mov         eax,dword ptr [eax+2B0];TCustomListView.FGroupHeaderImages:TCustomImageList
 0054585E    call        TCustomImageList.GetHandle
 00545863    mov         edx,eax
 00545865    mov         ecx,3
 0054586A    mov         eax,dword ptr [ebp-4]
 0054586D    call        00545990
 00545872    mov         eax,dword ptr [ebp-4]
 00545875    call        00549578
 0054587A    call        StyleServices
 0054587F    mov         edx,dword ptr [eax]
 00545881    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00545884    test        al,al
>00545886    je          00545895
 00545888    mov         eax,[007C4364];^gvar_007C7DC0
 0054588D    cmp         dword ptr [eax],6
 00545890    setge       al
>00545893    jmp         00545897
 00545895    xor         eax,eax
 00545897    test        al,al
>00545899    je          005458C2
 0054589B    call        StyleServices
 005458A0    call        TCustomStyleServices.GetIsSystemStyle
 005458A5    test        al,al
>005458A7    je          005458C2
 005458A9    push        0
 005458AB    push        5458C8
 005458B0    mov         eax,dword ptr [ebp-4]
 005458B3    call        TWinControl.GetHandle
 005458B8    push        eax
 005458B9    mov         eax,[007C4EF0];^gvar_007CA554:Pointer
 005458BE    mov         eax,dword ptr [eax]
 005458C0    call        eax
 005458C2    pop         ebx
 005458C3    pop         ecx
 005458C4    pop         ebp
 005458C5    ret
*}
end;

//005458DC
procedure sub_005458DC;
begin
{*
 005458DC    push        ebx
 005458DD    mov         ebx,eax
 005458DF    test        byte ptr [ebx+65],20;TCustomListView.FAlign:TAlign
>005458E3    je          00545986
 005458E9    mov         eax,dword ptr [ebx+2D0];TCustomListView.FMemStream:TMemoryStream
 005458EF    test        eax,eax
>005458F1    jne         00545907
 005458F3    mov         dl,1
 005458F5    mov         eax,[00472CE4];TMemoryStream
 005458FA    call        TObject.Create;TMemoryStream.Create
 005458FF    mov         dword ptr [ebx+2D0],eax;TCustomListView.FMemStream:TMemoryStream
>00545905    jmp         00545910
 00545907    push        0
 00545909    push        0
 0054590B    call        TStream.SetSize64
 00545910    cmp         byte ptr [ebx+2D4],0;TCustomListView.FOwnerData:Boolean
>00545917    je          0054592A
 00545919    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 0054591F    call        TListItems.GetCount
 00545924    mov         dword ptr [ebx+334],eax;TCustomListView.FOwnerDataCount:Integer
 0054592A    mov         edx,ebx
 0054592C    mov         eax,dword ptr [ebx+2D0];TCustomListView.FMemStream:TMemoryStream
 00545932    call        TStream.WriteComponent
 00545937    push        0
 00545939    push        0
 0054593B    mov         eax,dword ptr [ebx+2D0];TCustomListView.FMemStream:TMemoryStream
 00545941    call        TStream.SetPosition
 00545946    cmp         byte ptr [ebx+2FC],0;TCustomListView.FCheckboxes:Boolean
>0054594D    je          00545956
 0054594F    mov         eax,ebx
 00545951    call        005461E8
 00545956    mov         eax,ebx
 00545958    call        005489C4
 0054595D    test        eax,eax
>0054595F    je          00545975
 00545961    mov         eax,ebx
 00545963    call        005489C4
 00545968    call        TListItem.GetIndex
 0054596D    mov         dword ptr [ebx+2A4],eax;TCustomListView.FSaveSelectedIndex:Integer
>00545973    jmp         0054597F
 00545975    mov         dword ptr [ebx+2A4],0FFFFFFFF;TCustomListView.FSaveSelectedIndex:Integer
 0054597F    mov         eax,ebx
 00545981    call        00549F3C
 00545986    mov         eax,ebx
 00545988    call        004EC00C
 0054598D    pop         ebx
 0054598E    ret
*}
end;

//00545990
{*function sub_00545990(?:TCustomListView; ?:HIMAGELIST; ?:?):?;
begin
 00545990    push        ebx
 00545991    push        esi
 00545992    push        edi
 00545993    mov         edi,ecx
 00545995    mov         esi,edx
 00545997    mov         ebx,eax
 00545999    mov         eax,ebx
 0054599B    call        TWinControl.HandleAllocated
 005459A0    test        al,al
>005459A2    je          005459BA
 005459A4    mov         eax,ebx
 005459A6    call        TWinControl.GetHandle
 005459AB    mov         ebx,eax
 005459AD    push        esi
 005459AE    push        edi
 005459AF    push        1003
 005459B4    push        ebx
 005459B5    call        user32.SendMessageW
 005459BA    pop         edi
 005459BB    pop         esi
 005459BC    pop         ebx
 005459BD    ret
end;*}

//005459C0
function TListView.IsStoredGroups(Value:TListGroups):Boolean;
begin
{*
 005459C0    mov         eax,dword ptr [eax+418];TListView.FListGroups:TListGroups
 005459C6    mov         eax,dword ptr [eax+8];TListGroups.FItems:TList<System.Classes.TCollectionItem>
 005459C9    cmp         dword ptr [eax+8],0;TList<System.Classes.TCollectionItem>.FCount:Integer
 005459CD    setg        al
 005459D0    ret
*}
end;

//005459D4
{*procedure sub_005459D4(?:?; ?:?);
begin
 005459D4    push        ebx
 005459D5    push        esi
 005459D6    push        edi
 005459D7    mov         esi,edx
 005459D9    mov         ebx,eax
 005459DB    mov         eax,ebx
 005459DD    call        TWinControl.HandleAllocated
 005459E2    test        al,al
>005459E4    je          00545A57
 005459E6    mov         edi,esi
 005459E8    mov         eax,edi
 005459EA    call        TCustomImageList.HandleAllocated
 005459EF    test        al,al
>005459F1    je          005459FC
 005459F3    mov         eax,edi
 005459F5    call        TCustomImageList.GetHandle
>005459FA    jmp         005459FE
 005459FC    xor         eax,eax
 005459FE    cmp         esi,dword ptr [ebx+2A0]
>00545A04    jne         00545A13
 00545A06    xor         ecx,ecx
 00545A08    mov         edx,eax
 00545A0A    mov         eax,ebx
 00545A0C    call        00545990
>00545A11    jmp         00545A57
 00545A13    cmp         esi,dword ptr [ebx+2A8]
>00545A19    jne         00545A2B
 00545A1B    mov         ecx,1
 00545A20    mov         edx,eax
 00545A22    mov         eax,ebx
 00545A24    call        00545990
>00545A29    jmp         00545A57
 00545A2B    mov         edx,dword ptr [ebx+2AC]
 00545A31    cmp         esi,edx
>00545A33    jne         00545A45
 00545A35    mov         ecx,2
 00545A3A    mov         edx,eax
 00545A3C    mov         eax,ebx
 00545A3E    call        00545990
>00545A43    jmp         00545A57
 00545A45    cmp         edx,esi
>00545A47    jne         00545A57
 00545A49    mov         ecx,3
 00545A4E    mov         edx,eax
 00545A50    mov         eax,ebx
 00545A52    call        00545990
 00545A57    pop         edi
 00545A58    pop         esi
 00545A59    pop         ebx
 00545A5A    ret
end;*}

//00545A5C
procedure TCustomListView.CMFontChanged(var Message:TMessage);
begin
{*
 00545A5C    push        ebx
 00545A5D    mov         ebx,eax
 00545A5F    mov         eax,ebx
 00545A61    call        TWinControl.CMFontChanged
 00545A66    mov         eax,ebx
 00545A68    call        TWinControl.HandleAllocated
 00545A6D    test        al,al
>00545A6F    je          00545A97
 00545A71    mov         eax,ebx
 00545A73    call        TWinControl.GetHandle
 00545A78    cmp         byte ptr [ebx+41C],1;TCustomListView.FGroupView:Boolean
 00545A7F    cmc
 00545A80    sbb         edx,edx
 00545A82    push        0
 00545A84    push        edx
 00545A85    push        109D
 00545A8A    push        eax
 00545A8B    call        user32.SendMessageW
 00545A90    mov         eax,ebx
 00545A92    call        00548D80
 00545A97    pop         ebx
 00545A98    ret
*}
end;

//00545A9C
procedure TCustomListView.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00545A9C    push        ebx
 00545A9D    push        esi
 00545A9E    push        edi
 00545A9F    mov         ebx,ecx
 00545AA1    mov         esi,edx
 00545AA3    mov         edi,eax
 00545AA5    mov         ecx,ebx
 00545AA7    mov         edx,esi
 00545AA9    mov         eax,edi
 00545AAB    call        TWinControl.Notification
 00545AB0    cmp         bl,1
>00545AB3    jne         00545AF9
 00545AB5    cmp         esi,dword ptr [edi+2A0];TCustomListView.FLargeImages:TCustomImageList
>00545ABB    jne         00545AC6
 00545ABD    xor         edx,edx
 00545ABF    mov         eax,edi
 00545AC1    call        TListView.SetLargeImages
 00545AC6    cmp         esi,dword ptr [edi+2A8];TCustomListView.FSmallImages:TCustomImageList
>00545ACC    jne         00545AD7
 00545ACE    xor         edx,edx
 00545AD0    mov         eax,edi
 00545AD2    call        TListView.SetSmallImages
 00545AD7    cmp         esi,dword ptr [edi+2AC];TCustomListView.FStateImages:TCustomImageList
>00545ADD    jne         00545AE8
 00545ADF    xor         edx,edx
 00545AE1    mov         eax,edi
 00545AE3    call        TListView.SetStateImages
 00545AE8    cmp         esi,dword ptr [edi+2B0];TCustomListView.FGroupHeaderImages:TCustomImageList
>00545AEE    jne         00545AF9
 00545AF0    xor         edx,edx
 00545AF2    mov         eax,edi
 00545AF4    call        TListView.SetGroupHeaderImages
 00545AF9    pop         edi
 00545AFA    pop         esi
 00545AFB    pop         ebx
 00545AFC    ret
*}
end;

//0054602C
procedure TCustomListView.UpdateItems(FirstIndex:Integer; LastIndex:Integer);
begin
{*
 0054602C    push        ebx
 0054602D    push        esi
 0054602E    push        edi
 0054602F    mov         edi,ecx
 00546031    mov         esi,edx
 00546033    call        TWinControl.GetHandle
 00546038    mov         ebx,eax
 0054603A    push        edi
 0054603B    push        esi
 0054603C    push        1015
 00546041    push        ebx
 00546042    call        user32.SendMessageW
 00546047    pop         edi
 00546048    pop         esi
 00546049    pop         ebx
 0054604A    ret
*}
end;

//0054604C
procedure sub_0054604C(?:TCustomListView);
begin
{*
 0054604C    push        ebx
 0054604D    push        esi
 0054604E    push        edi
 0054604F    push        ebp
 00546050    mov         ebx,eax
 00546052    mov         eax,ebx
 00546054    call        TWinControl.HandleAllocated
 00546059    test        al,al
>0054605B    je          00546145
 00546061    xor         edi,edi
 00546063    mov         eax,dword ptr [ebx+2AC];TCustomListView.FStateImages:TCustomImageList
 00546069    test        eax,eax
>0054606B    je          00546078
 0054606D    mov         edi,eax
 0054606F    xor         edx,edx
 00546071    mov         eax,ebx
 00546073    call        TListView.SetStateImages
 00546078    mov         esi,402
 0054607D    cmp         byte ptr [ebx+2FC],0;TCustomListView.FCheckboxes:Boolean
>00546084    je          00546089
 00546086    or          esi,4
 00546089    cmp         byte ptr [ebx+2FF],0;TCustomListView.FGridLines:Boolean
>00546090    je          00546095
 00546092    or          esi,1
 00546095    cmp         byte ptr [ebx+300],0;TCustomListView.FHotTrack:Boolean
>0054609C    je          005460A1
 0054609E    or          esi,8
 005460A1    cmp         byte ptr [ebx+302],0;TCustomListView.FRowSelect:Boolean
>005460A8    je          005460AD
 005460AA    or          esi,20
 005460AD    cmp         byte ptr [ebx+2FD],0;TCustomListView.FFlatScrollBars:Boolean
>005460B4    je          005460BC
 005460B6    or          esi,100
 005460BC    cmp         byte ptr [ebx+2FE],0;TCustomListView.FFullDrag:Boolean
>005460C3    je          005460C8
 005460C5    or          esi,10
 005460C8    cmp         byte ptr [ebx+324],0;TCustomListView.FShowWorkAreas:Boolean
>005460CF    je          005460D7
 005460D1    or          esi,2000
 005460D7    test        byte ptr [ebx+301],1;TCustomListView.FHotTrackStyles:TListHotTrackStyles
>005460DE    je          005460E5
 005460E0    or          esi,40
>005460E3    jmp         00546103
 005460E5    movzx       eax,byte ptr ds:[54614C];0x6 gvar_0054614C
 005460EC    and         al,byte ptr [ebx+301];TCustomListView.FHotTrackStyles:TListHotTrackStyles
 005460F2    movzx       edx,byte ptr ds:[546150];0x0 gvar_00546150
 005460F9    cmp         dl,al
>005460FB    je          00546103
 005460FD    or          esi,80
 00546103    test        byte ptr [ebx+301],4;TCustomListView.FHotTrackStyles:TListHotTrackStyles
>0054610A    je          00546112
 0054610C    or          esi,800
 00546112    test        byte ptr [ebx+301],2;TCustomListView.FHotTrackStyles:TListHotTrackStyles
>00546119    je          00546121
 0054611B    or          esi,1000
 00546121    mov         eax,ebx
 00546123    call        TWinControl.GetHandle
 00546128    mov         ebp,eax
 0054612A    push        esi
 0054612B    push        0
 0054612D    push        1036
 00546132    push        ebp
 00546133    call        user32.SendMessageW
 00546138    test        edi,edi
>0054613A    je          00546145
 0054613C    mov         edx,edi
 0054613E    mov         eax,ebx
 00546140    call        TListView.SetStateImages
 00546145    pop         ebp
 00546146    pop         edi
 00546147    pop         esi
 00546148    pop         ebx
 00546149    ret
*}
end;

//00546154
procedure sub_00546154(?:TCustomListView);
begin
{*
 00546154    push        ebx
 00546155    push        esi
 00546156    push        edi
 00546157    push        ecx
 00546158    mov         ebx,eax
 0054615A    cmp         byte ptr [ebx+2D4],0;TCustomListView.FOwnerData:Boolean
>00546161    jne         005461CF
 00546163    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00546169    call        TListItems.GetCount
 0054616E    mov         edi,eax
 00546170    dec         edi
 00546171    test        edi,edi
>00546173    jl          005461CF
 00546175    inc         edi
 00546176    xor         esi,esi
 00546178    mov         eax,dword ptr [ebx+2DC];TCustomListView.FCheckStream:TMemoryStream
 0054617E    test        eax,eax
>00546180    je          005461A6
 00546182    mov         edx,esp
 00546184    mov         ecx,1
 00546189    call        TStream.ReadBuffer
 0054618E    mov         edx,esi
 00546190    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00546196    call        TListItems.GetItem
 0054619B    movzx       edx,byte ptr [esp]
 0054619F    call        TListItem.SetChecked
>005461A4    jmp         005461CB
 005461A6    mov         edx,esi
 005461A8    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 005461AE    call        TListItems.GetItem
 005461B3    movzx       eax,byte ptr [eax+26];TListItem.FChecked:Boolean
 005461B7    push        eax
 005461B8    mov         edx,esi
 005461BA    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 005461C0    call        TListItems.GetItem
 005461C5    pop         edx
 005461C6    call        TListItem.SetChecked
 005461CB    inc         esi
 005461CC    dec         edi
>005461CD    jne         00546178
 005461CF    mov         eax,dword ptr [ebx+2DC];TCustomListView.FCheckStream:TMemoryStream
 005461D5    call        TObject.Free
 005461DA    xor         eax,eax
 005461DC    mov         dword ptr [ebx+2DC],eax;TCustomListView.FCheckStream:TMemoryStream
 005461E2    pop         edx
 005461E3    pop         edi
 005461E4    pop         esi
 005461E5    pop         ebx
 005461E6    ret
*}
end;

//005461E8
procedure sub_005461E8(?:TCustomListView);
begin
{*
 005461E8    push        ebx
 005461E9    push        esi
 005461EA    push        edi
 005461EB    push        ecx
 005461EC    mov         ebx,eax
 005461EE    cmp         byte ptr [ebx+2D4],0;TCustomListView.FOwnerData:Boolean
>005461F5    jne         0054626D
 005461F7    mov         eax,dword ptr [ebx+2DC];TCustomListView.FCheckStream:TMemoryStream
 005461FD    test        eax,eax
>005461FF    jne         00546215
 00546201    mov         dl,1
 00546203    mov         eax,[00472CE4];TMemoryStream
 00546208    call        TObject.Create;TMemoryStream.Create
 0054620D    mov         dword ptr [ebx+2DC],eax;TCustomListView.FCheckStream:TMemoryStream
>00546213    jmp         0054621E
 00546215    push        0
 00546217    push        0
 00546219    call        TStream.SetSize64
 0054621E    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00546224    call        TListItems.GetCount
 00546229    mov         esi,eax
 0054622B    dec         esi
 0054622C    test        esi,esi
>0054622E    jl          0054625E
 00546230    inc         esi
 00546231    xor         edi,edi
 00546233    mov         edx,edi
 00546235    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 0054623B    call        TListItems.GetItem
 00546240    call        TListItem.GetChecked
 00546245    mov         byte ptr [esp],al
 00546248    mov         edx,esp
 0054624A    mov         ecx,1
 0054624F    mov         eax,dword ptr [ebx+2DC];TCustomListView.FCheckStream:TMemoryStream
 00546255    call        TStream.WriteBuffer
 0054625A    inc         edi
 0054625B    dec         esi
>0054625C    jne         00546233
 0054625E    push        0
 00546260    push        0
 00546262    mov         eax,dword ptr [ebx+2DC];TCustomListView.FCheckStream:TMemoryStream
 00546268    call        TStream.SetPosition
 0054626D    pop         edx
 0054626E    pop         edi
 0054626F    pop         esi
 00546270    pop         ebx
 00546271    ret
*}
end;

//00546274
procedure TListView.SetCheckboxes(Value:Boolean);
begin
{*
 00546274    push        ebx
 00546275    push        esi
 00546276    push        edi
 00546277    push        ebp
 00546278    push        ecx
 00546279    mov         ebx,edx
 0054627B    mov         esi,eax
 0054627D    cmp         bl,byte ptr [esi+2FC];TListView.FCheckboxes:Boolean
>00546283    je          00546325
 00546289    test        bl,bl
>0054628B    je          00546296
 0054628D    xor         edx,edx
 0054628F    mov         eax,esi
 00546291    call        TListView.SetStateImages
 00546296    mov         byte ptr [esi+2FC],bl;TListView.FCheckboxes:Boolean
 0054629C    mov         eax,esi
 0054629E    call        0054604C
 005462A3    cmp         byte ptr [esi+2FC],0;TListView.FCheckboxes:Boolean
>005462AA    je          005462B5
 005462AC    mov         eax,esi
 005462AE    call        00546154
>005462B3    jmp         00546325
 005462B5    cmp         byte ptr [esi+2D4],0;TListView.FOwnerData:Boolean
>005462BC    jne         00546325
 005462BE    mov         eax,dword ptr [esi+2BC];TListView.FListItems:TListItems
 005462C4    call        TListItems.GetCount
 005462C9    mov         edi,eax
 005462CB    dec         edi
 005462CC    test        edi,edi
>005462CE    jl          00546325
 005462D0    inc         edi
 005462D1    xor         ebx,ebx
 005462D3    mov         eax,esi
 005462D5    call        TWinControl.GetHandle
 005462DA    mov         ebp,eax
 005462DC    mov         edx,ebx
 005462DE    mov         eax,dword ptr [esi+2BC];TListView.FListItems:TListItems
 005462E4    call        TListItems.GetItem
 005462E9    call        TListItem.GetIndex
 005462EE    mov         dword ptr [esp],eax
 005462F1    push        0F000
 005462F6    mov         eax,dword ptr [esp+4]
 005462FA    push        eax
 005462FB    push        102C
 00546300    push        ebp
 00546301    call        user32.SendMessageW
 00546306    shr         eax,0C
 00546309    dec         eax
 0054630A    mov         ebp,eax
 0054630C    mov         edx,ebx
 0054630E    mov         eax,dword ptr [esi+2BC];TListView.FListItems:TListItems
 00546314    call        TListItems.GetItem
 00546319    test        ebp,ebp
 0054631B    setne       dl
 0054631E    mov         byte ptr [eax+26],dl;TListItem.FChecked:Boolean
 00546321    inc         ebx
 00546322    dec         edi
>00546323    jne         005462D3
 00546325    pop         edx
 00546326    pop         ebp
 00546327    pop         edi
 00546328    pop         esi
 00546329    pop         ebx
 0054632A    ret
*}
end;

//0054632C
procedure TListView.SetGridLines(Value:Boolean);
begin
{*
 0054632C    cmp         dl,byte ptr [eax+2FF];TListView.FGridLines:Boolean
>00546332    je          0054633F
 00546334    mov         byte ptr [eax+2FF],dl;TListView.FGridLines:Boolean
 0054633A    call        0054604C
 0054633F    ret
*}
end;

//00546340
procedure TListView.SetHotTrack(Value:Boolean);
begin
{*
 00546340    cmp         dl,byte ptr [eax+300];TListView.FHotTrack:Boolean
>00546346    je          00546353
 00546348    mov         byte ptr [eax+300],dl;TListView.FHotTrack:Boolean
 0054634E    call        0054604C
 00546353    ret
*}
end;

//00546354
procedure TListView.SetHotTrackStyles(Value:TListHotTrackStyles);
begin
{*
 00546354    push        ebx
 00546355    push        ecx
 00546356    mov         byte ptr [esp],dl
 00546359    mov         ebx,eax
 0054635B    movzx       eax,byte ptr [esp]
 0054635F    cmp         al,byte ptr [ebx+301];TListView.FHotTrackStyles:TListHotTrackStyles
>00546365    je          00546378
 00546367    movzx       eax,byte ptr [esp]
 0054636B    mov         byte ptr [ebx+301],al;TListView.FHotTrackStyles:TListHotTrackStyles
 00546371    mov         eax,ebx
 00546373    call        0054604C
 00546378    pop         edx
 00546379    pop         ebx
 0054637A    ret
*}
end;

//0054637C
procedure TListView.SetOwnerData(Value:Boolean);
begin
{*
 0054637C    push        ebx
 0054637D    push        esi
 0054637E    mov         ebx,edx
 00546380    mov         esi,eax
 00546382    cmp         bl,byte ptr [esi+2D4];TListView.FOwnerData:Boolean
>00546388    je          005463A2
 0054638A    mov         eax,dword ptr [esi+2BC];TListView.FListItems:TListItems
 00546390    call        TListItems.Clear
 00546395    mov         byte ptr [esi+2D4],bl;TListView.FOwnerData:Boolean
 0054639B    mov         eax,esi
 0054639D    call        TWinControl.RecreateWnd
 005463A2    pop         esi
 005463A3    pop         ebx
 005463A4    ret
*}
end;

//005463A8
procedure TListView.SetOwnerDraw(Value:Boolean);
begin
{*
 005463A8    cmp         dl,byte ptr [eax+2D5];TListView.FOwnerDraw:Boolean
>005463AE    je          005463BB
 005463B0    mov         byte ptr [eax+2D5],dl;TListView.FOwnerDraw:Boolean
 005463B6    call        TWinControl.RecreateWnd
 005463BB    ret
*}
end;

//005463BC
procedure TListView.SetRowSelect(Value:Boolean);
begin
{*
 005463BC    cmp         dl,byte ptr [eax+302];TListView.FRowSelect:Boolean
>005463C2    je          005463CF
 005463C4    mov         byte ptr [eax+302],dl;TListView.FRowSelect:Boolean
 005463CA    call        0054604C
 005463CF    ret
*}
end;

//005463D0
procedure TListView.SetFlatScrollBars(Value:Boolean);
begin
{*
 005463D0    cmp         dl,byte ptr [eax+2FD];TListView.FFlatScrollBars:Boolean
>005463D6    je          005463E3
 005463D8    mov         byte ptr [eax+2FD],dl;TListView.FFlatScrollBars:Boolean
 005463DE    call        0054604C
 005463E3    ret
*}
end;

//005463E4
procedure TListView.SetFullDrag(Value:Boolean);
begin
{*
 005463E4    cmp         dl,byte ptr [eax+2FE];TListView.FFullDrag:Boolean
>005463EA    je          005463F7
 005463EC    mov         byte ptr [eax+2FE],dl;TListView.FFullDrag:Boolean
 005463F2    call        0054604C
 005463F7    ret
*}
end;

//005463F8
procedure TListView.SetBorderStyle(Value:TBorderStyle);
begin
{*
 005463F8    cmp         dl,byte ptr [eax+29C];TListView.FBorderStyle:TBorderStyle
>005463FE    je          0054640B
 00546400    mov         byte ptr [eax+29C],dl;TListView.FBorderStyle:TBorderStyle
 00546406    call        TWinControl.RecreateWnd
 0054640B    ret
*}
end;

//0054640C
procedure TListView.SetColumnClick(Value:Boolean);
begin
{*
 0054640C    cmp         dl,byte ptr [eax+2BA];TListView.FColumnClick:Boolean
>00546412    je          0054641F
 00546414    mov         byte ptr [eax+2BA],dl;TListView.FColumnClick:Boolean
 0054641A    call        TWinControl.RecreateWnd
 0054641F    ret
*}
end;

//00546420
{*procedure sub_00546420(?:?);
begin
 00546420    push        ebx
 00546421    push        esi
 00546422    mov         esi,edx
 00546424    mov         ebx,eax
 00546426    test        esi,esi
>00546428    jge         0054644B
 0054642A    mov         eax,ebx
 0054642C    call        005489C4
 00546431    test        eax,eax
>00546433    je          0054647A
 00546435    mov         eax,ebx
 00546437    call        005489C4
 0054643C    xor         ecx,ecx
 0054643E    mov         edx,3
 00546443    call        TListItem.SetState
 00546448    pop         esi
 00546449    pop         ebx
 0054644A    ret
 0054644B    mov         edx,esi
 0054644D    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00546453    call        TListItems.GetItem
 00546458    mov         cl,1
 0054645A    mov         edx,3
 0054645F    call        TListItem.SetState
 00546464    mov         edx,esi
 00546466    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 0054646C    call        TListItems.GetItem
 00546471    mov         edx,eax
 00546473    mov         eax,ebx
 00546475    call        00548AC8
 0054647A    pop         esi
 0054647B    pop         ebx
 0054647C    ret
end;*}

//00546480
procedure TListView.SetMultiSelect(Value:Boolean);
begin
{*
 00546480    cmp         dl,byte ptr [eax+2B8];TListView.FMultiSelect:Boolean
>00546486    je          00546493
 00546488    mov         byte ptr [eax+2B8],dl;TListView.FMultiSelect:Boolean
 0054648E    call        TWinControl.RecreateWnd
 00546493    ret
*}
end;

//00546494
procedure TListView.SetShowColumnHeaders(Value:Boolean);
begin
{*
 00546494    cmp         dl,byte ptr [eax+2BB];TListView.FShowColumnHeaders:Boolean
>0054649A    je          005464A7
 0054649C    mov         byte ptr [eax+2BB],dl;TListView.FShowColumnHeaders:Boolean
 005464A2    call        TWinControl.RecreateWnd
 005464A7    ret
*}
end;

//005464A8
procedure sub_005464A8(?:TCustomListView);
begin
{*
 005464A8    push        ebx
 005464A9    push        esi
 005464AA    mov         ebx,eax
 005464AC    mov         eax,ebx
 005464AE    call        TWinControl.GetHandle
 005464B3    mov         esi,eax
 005464B5    mov         eax,dword ptr [ebx+74];TCustomListView.FFont:TFont
 005464B8    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 005464BB    call        ColorToRGB
 005464C0    mov         ebx,eax
 005464C2    push        ebx
 005464C3    push        0
 005464C5    push        1024
 005464CA    push        esi
 005464CB    call        user32.SendMessageW
 005464D0    pop         esi
 005464D1    pop         ebx
 005464D2    ret
*}
end;

//005464D4
procedure sub_005464D4(?:TCustomListView);
begin
{*
 005464D4    push        ebx
 005464D5    push        esi
 005464D6    push        edi
 005464D7    mov         ebx,eax
 005464D9    mov         eax,ebx
 005464DB    call        TWinControl.GetHandle
 005464E0    mov         esi,eax
 005464E2    mov         eax,dword ptr [ebx+7C];TCustomListView.FColor:TColor
 005464E5    call        ColorToRGB
 005464EA    mov         edi,eax
 005464EC    push        edi
 005464ED    push        0
 005464EF    push        1026
 005464F4    push        esi
 005464F5    call        user32.SendMessageW
 005464FA    mov         eax,ebx
 005464FC    call        TWinControl.GetHandle
 00546501    mov         esi,eax
 00546503    mov         eax,dword ptr [ebx+7C];TCustomListView.FColor:TColor
 00546506    call        ColorToRGB
 0054650B    mov         ebx,eax
 0054650D    push        ebx
 0054650E    push        0
 00546510    push        1001
 00546515    push        esi
 00546516    call        user32.SendMessageW
 0054651B    pop         edi
 0054651C    pop         esi
 0054651D    pop         ebx
 0054651E    ret
*}
end;

//00546520
procedure TListView.SetAllocBy(Value:Integer);
begin
{*
 00546520    push        ebx
 00546521    push        esi
 00546522    mov         esi,edx
 00546524    mov         ebx,eax
 00546526    cmp         esi,dword ptr [ebx+2F0];TListView.FAllocBy:Integer
>0054652C    je          00546554
 0054652E    mov         dword ptr [ebx+2F0],esi;TListView.FAllocBy:Integer
 00546534    mov         eax,ebx
 00546536    call        TWinControl.HandleAllocated
 0054653B    test        al,al
>0054653D    je          00546554
 0054653F    mov         eax,ebx
 00546541    call        TWinControl.GetHandle
 00546546    push        0
 00546548    push        esi
 00546549    push        102F
 0054654E    push        eax
 0054654F    call        user32.SendMessageW
 00546554    pop         esi
 00546555    pop         ebx
 00546556    ret
*}
end;

//00546558
procedure TCustomListView.CMColorChanged(var Message:Messages.TMessage);
begin
{*
 00546558    push        ebx
 00546559    mov         ebx,eax
 0054655B    mov         eax,ebx
 0054655D    call        TWinControl.CMColorChanged
 00546562    mov         eax,ebx
 00546564    call        TWinControl.HandleAllocated
 00546569    test        al,al
>0054656B    je          00546577
 0054656D    mov         edx,dword ptr [ebx+7C];TCustomListView.FColor:TColor
 00546570    mov         eax,ebx
 00546572    call        005464D4
 00546577    pop         ebx
 00546578    ret
*}
end;

//0054657C
{*procedure TCustomListView.CMCtl3DChanged(?:?);
begin
 0054657C    push        ebx
 0054657D    push        esi
 0054657E    mov         esi,edx
 00546580    mov         ebx,eax
 00546582    cmp         byte ptr [ebx+29C],1;TCustomListView.FBorderStyle:TBorderStyle
>00546589    jne         00546592
 0054658B    mov         eax,ebx
 0054658D    call        TWinControl.RecreateWnd
 00546592    mov         edx,esi
 00546594    mov         eax,ebx
 00546596    call        TWinControl.CMCtl3DChanged
 0054659B    pop         esi
 0054659C    pop         ebx
 0054659D    ret
end;*}

//005465A0
procedure TCustomListView.WMNotify(Message:Messages.TWMNotify);
begin
{*
 005465A0    push        ebp
 005465A1    mov         ebp,esp
 005465A3    add         esp,0FFFFFFD8
 005465A6    push        ebx
 005465A7    push        esi
 005465A8    push        edi
 005465A9    xor         ecx,ecx
 005465AB    mov         dword ptr [ebp-4],ecx
 005465AE    mov         edi,edx
 005465B0    mov         esi,eax
 005465B2    xor         eax,eax
 005465B4    push        ebp
 005465B5    push        5467D2
 005465BA    push        dword ptr fs:[eax]
 005465BD    mov         dword ptr fs:[eax],esp
 005465C0    mov         edx,edi
 005465C2    mov         eax,esi
 005465C4    call        TWinControl.WMNotify
 005465C9    mov         ebx,dword ptr [edi+8]
 005465CC    mov         eax,esi
 005465CE    call        00546810
 005465D3    test        al,al
>005465D5    je          005467BC
 005465DB    mov         eax,dword ptr [ebx]
 005465DD    cmp         eax,dword ptr [esi+2EC];TCustomListView.FHeaderHandle:HWND
>005465E3    jne         005467BC
 005465E9    mov         eax,dword ptr [ebx+8]
 005465EC    cmp         eax,0FFFFFECD
>005465F1    jg          0054660B
>005465F3    je          00546622
 005465F5    sub         eax,0FFFFFEB9
>005465FA    je          00546622
 005465FC    sub         eax,2
>005465FF    je          00546674
 00546601    sub         eax,0E
>00546604    je          00546668
>00546606    jmp         005467BC
 0054660B    sub         eax,0FFFFFECF
>00546610    je          00546674
 00546612    sub         eax,12C
>00546617    je          005466D1
>0054661D    jmp         005467BC
 00546622    mov         eax,dword ptr [edi+8]
 00546625    mov         edi,dword ptr [eax+14]
 00546628    test        byte ptr [edi],1
>0054662B    je          005467BC
 00546631    mov         edx,dword ptr [eax+0C]
 00546634    mov         eax,esi
 00546636    call        0054A0A8
 0054663B    mov         ebx,eax
 0054663D    mov         eax,dword ptr [ebx+18]
 00546640    cmp         eax,dword ptr [edi+4]
>00546643    jl          0054664A
 00546645    mov         dword ptr [edi+4],eax
>00546648    jmp         00546659
 0054664A    mov         eax,dword ptr [ebx+14]
 0054664D    test        eax,eax
>0054664F    jle         00546659
 00546651    cmp         eax,dword ptr [edi+4]
>00546654    jg          00546659
 00546656    mov         dword ptr [edi+4],eax
 00546659    mov         edx,dword ptr [edi+4]
 0054665C    mov         eax,ebx
 0054665E    call        TListColumn.SetWidth
>00546663    jmp         005467BC
 00546668    mov         byte ptr [esi+325],1;TCustomListView.FUpdatingColumnOrder:Boolean
>0054666F    jmp         005467BC
 00546674    mov         eax,dword ptr [edi+8]
 00546677    mov         edi,eax
 00546679    mov         edx,dword ptr [edi+0C]
 0054667C    mov         eax,esi
 0054667E    call        0054A0A8
 00546683    mov         ebx,eax
 00546685    mov         eax,esi
 00546687    call        TWinControl.GetHandle
 0054668C    mov         dword ptr [ebp-10],eax
 0054668F    mov         edi,dword ptr [edi+0C]
 00546692    push        0
 00546694    push        edi
 00546695    push        101D
 0054669A    mov         eax,dword ptr [ebp-10]
 0054669D    push        eax
 0054669E    call        user32.SendMessageW
 005466A3    mov         edx,eax
 005466A5    mov         eax,ebx
 005466A7    call        TListColumn.SetWidth
 005466AC    xor         ecx,ecx
 005466AE    xor         edx,edx
 005466B0    mov         eax,esi
 005466B2    mov         ebx,dword ptr [eax]
 005466B4    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 005466BA    test        al,al
>005466BC    je          005467BC
 005466C2    mov         eax,esi
 005466C4    mov         edx,dword ptr [eax]
 005466C6    call        dword ptr [edx+0A8];TWinControl.Invalidate
>005466CC    jmp         005467BC
 005466D1    call        user32.GetMessagePos
 005466D6    call        SmallPoint
 005466DB    lea         edx,[ebp-0C]
 005466DE    call        TPoint.&op_Implicit
 005466E3    lea         ecx,[ebp-28]
 005466E6    lea         edx,[ebp-0C]
 005466E9    mov         eax,esi
 005466EB    call        TControl.ScreenToClient
 005466F0    push        dword ptr [ebp-24]
 005466F3    push        dword ptr [ebp-28]
 005466F6    mov         eax,esi
 005466F8    call        TWinControl.GetHandle
 005466FD    push        eax
 005466FE    call        user32.ChildWindowFromPoint
 00546703    mov         ebx,eax
 00546705    test        ebx,ebx
>00546707    je          005467BC
 0054670D    mov         eax,esi
 0054670F    call        TWinControl.GetHandle
 00546714    cmp         ebx,eax
>00546716    je          005467BC
 0054671C    lea         eax,[ebp-4]
 0054671F    mov         edx,50
 00546724    call        @UStrSetLength
 00546729    mov         edi,dword ptr [ebp-4]
 0054672C    test        edi,edi
>0054672E    je          00546735
 00546730    sub         edi,4
 00546733    mov         edi,dword ptr [edi]
 00546735    push        edi
 00546736    mov         eax,dword ptr [ebp-4]
 00546739    call        @UStrToPWChar
 0054673E    push        eax
 0054673F    push        ebx
 00546740    call        user32.GetClassNameW
 00546745    mov         edx,eax
 00546747    lea         eax,[ebp-4]
 0054674A    call        @UStrSetLength
 0054674F    mov         eax,dword ptr [ebp-4]
 00546752    mov         edx,5467EC;'SysHeader32'
 00546757    call        @UStrEqual
>0054675C    jne         005467BC
 0054675E    lea         ecx,[ebp-28]
 00546761    lea         edx,[ebp-0C]
 00546764    mov         eax,esi
 00546766    call        TControl.ScreenToClient
 0054676B    mov         eax,dword ptr [ebp-28]
 0054676E    mov         dword ptr [ebp-20],eax
 00546771    mov         eax,dword ptr [ebp-24]
 00546774    mov         dword ptr [ebp-1C],eax
 00546777    push        0
 00546779    mov         eax,esi
 0054677B    call        TWinControl.GetHandle
 00546780    push        eax
 00546781    call        user32.GetScrollPos
 00546786    add         dword ptr [ebp-20],eax
 00546789    lea         eax,[ebp-20]
 0054678C    push        eax
 0054678D    mov         ecx,1
 00546792    mov         edx,1206
 00546797    mov         eax,ebx
 00546799    call        SendStructMessage
 0054679E    test        eax,eax
>005467A0    jl          005467BC
 005467A2    mov         edx,dword ptr [ebp-14]
 005467A5    mov         eax,esi
 005467A7    call        0054A0A8
 005467AC    mov         edx,eax
 005467AE    lea         ecx,[ebp-20]
 005467B1    mov         eax,esi
 005467B3    mov         si,0FFA9
 005467B7    call        @CallDynaInst;TCustomListView.sub_00547D90
 005467BC    xor         eax,eax
 005467BE    pop         edx
 005467BF    pop         ecx
 005467C0    pop         ecx
 005467C1    mov         dword ptr fs:[eax],edx
 005467C4    push        5467D9
 005467C9    lea         eax,[ebp-4]
 005467CC    call        @UStrClr
 005467D1    ret
>005467D2    jmp         @HandleFinally
>005467D7    jmp         005467C9
 005467D9    pop         edi
 005467DA    pop         esi
 005467DB    pop         ebx
 005467DC    mov         esp,ebp
 005467DE    pop         ebp
 005467DF    ret
*}
end;

//00546804
{*function sub_00546804(?:?):Boolean;
begin
 00546804    cmp         byte ptr [eax+29D],3
 0054680B    sete        al
 0054680E    ret
end;*}

//00546810
function sub_00546810(?:TCustomListView):Boolean;
begin
{*
 00546810    cmp         dword ptr [eax+2EC],0;TCustomListView.FHeaderHandle:HWND
 00546817    setne       al
 0054681A    ret
*}
end;

//0054681C
procedure TCustomListView.CMFontChanged;
begin
{*
 0054681C    push        ebx
 0054681D    mov         ebx,eax
 0054681F    mov         eax,ebx
 00546821    call        TWinControl.CMFontChanged
 00546826    mov         eax,ebx
 00546828    call        TWinControl.HandleAllocated
 0054682D    test        al,al
>0054682F    je          00546859
 00546831    mov         eax,dword ptr [ebx+74];TCustomListView.FFont:TFont
 00546834    mov         edx,dword ptr [eax+18];TFont.FColor:TColor
 00546837    mov         eax,ebx
 00546839    call        005464A8
 0054683E    mov         eax,ebx
 00546840    call        00546810
 00546845    test        al,al
>00546847    je          00546859
 00546849    push        0FF
 0054684B    push        0
 0054684D    mov         eax,dword ptr [ebx+2EC];TCustomListView.FHeaderHandle:HWND
 00546853    push        eax
 00546854    call        user32.InvalidateRect
 00546859    pop         ebx
 0054685A    ret
*}
end;

//0054685C
procedure TListView.SetHideSelection(Value:Boolean);
begin
{*
 0054685C    cmp         dl,byte ptr [eax+2C8];TListView.FHideSelection:Boolean
>00546862    je          0054686F
 00546864    mov         byte ptr [eax+2C8],dl;TListView.FHideSelection:Boolean
 0054686A    call        TWinControl.RecreateWnd
 0054686F    ret
*}
end;

//00546870
procedure TListView.SetReadOnly(Value:Boolean);
begin
{*
 00546870    cmp         dl,byte ptr [eax+29E];TListView.FReadOnly:Boolean
>00546876    je          00546883
 00546878    mov         byte ptr [eax+29E],dl;TListView.FReadOnly:Boolean
 0054687E    call        TWinControl.RecreateWnd
 00546883    ret
*}
end;

//00546884
procedure TListView.SetIconOptions(Value:TIconOptions);
begin
{*
 00546884    push        ebx
 00546885    push        esi
 00546886    mov         esi,edx
 00546888    mov         ebx,dword ptr [eax+2C4];TListView.FIconOptions:TIconOptions
 0054688E    movzx       edx,byte ptr [esi+8];TIconOptions.FArrangement:TIconArrangement
 00546892    mov         eax,ebx
 00546894    call        TIconOptions.SetArrangement
 00546899    movzx       edx,byte ptr [esi+9];TIconOptions.FAutoArrange:Boolean
 0054689D    mov         eax,ebx
 0054689F    call        TIconOptions.SetAutoArrange
 005468A4    movzx       edx,byte ptr [esi+0A];TIconOptions.FWrapText:Boolean
 005468A8    mov         eax,ebx
 005468AA    call        TIconOptions.SetWrapText
 005468AF    pop         esi
 005468B0    pop         ebx
 005468B1    ret
*}
end;

//005468B4
procedure TListView.SetViewStyle(Value:TViewStyle);
begin
{*
 005468B4    push        ebx
 005468B5    push        esi
 005468B6    mov         ebx,eax
 005468B8    cmp         dl,byte ptr [ebx+29D];TListView.FViewStyle:TViewStyle
>005468BE    je          00546946
 005468C4    mov         byte ptr [ebx+29D],dl;TListView.FViewStyle:TViewStyle
 005468CA    mov         eax,ebx
 005468CC    call        TWinControl.HandleAllocated
 005468D1    test        al,al
>005468D3    je          00546946
 005468D5    mov         eax,ebx
 005468D7    call        TWinControl.GetHandle
 005468DC    push        0F0
 005468DE    push        eax
 005468DF    call        user32.GetWindowLongW
 005468E4    mov         esi,eax
 005468E6    and         esi,0FFFFFFFC
 005468E9    movzx       eax,byte ptr [ebx+29D];TListView.FViewStyle:TViewStyle
 005468F0    or          esi,dword ptr [eax*4+7A165C]
 005468F7    mov         eax,ebx
 005468F9    call        TWinControl.GetHandle
 005468FE    push        esi
 005468FF    push        0F0
 00546901    push        eax
 00546902    call        user32.SetWindowLongW
 00546907    mov         eax,ebx
 00546909    call        TCustomListView.UpdateColumns
 0054690E    movzx       eax,byte ptr [ebx+29D];TListView.FViewStyle:TViewStyle
 00546915    sub         al,2
>00546917    jae         00546939
 00546919    mov         eax,dword ptr [ebx+2C4];TListView.FIconOptions:TIconOptions
 0054691F    cmp         byte ptr [eax+8],0;TIconOptions.FArrangement:TIconArrangement
>00546923    jne         00546930
 00546925    mov         dl,3
 00546927    mov         eax,ebx
 00546929    call        TCustomListView.Arrange
>0054692E    jmp         00546939
 00546930    mov         dl,1
 00546932    mov         eax,ebx
 00546934    call        TCustomListView.Arrange
 00546939    test        byte ptr [ebx+1C],1;TListView.FComponentState:TComponentState
>0054693D    jne         00546946
 0054693F    mov         eax,ebx
 00546941    call        TWinControl.RecreateWnd
 00546946    pop         esi
 00546947    pop         ebx
 00546948    ret
*}
end;

//0054694C
procedure TCustomListView.WMParentNotify(Message:Messages.TWMParentNotify);
begin
{*
 0054694C    push        ebx
 0054694D    push        esi
 0054694E    mov         esi,edx
 00546950    mov         ebx,eax
 00546952    cmp         word ptr [esi+4],1
>00546957    jne         0054698E
 00546959    cmp         dword ptr [ebx+2EC],0;TCustomListView.FHeaderHandle:HWND
>00546960    jne         0054698E
 00546962    mov         eax,dword ptr [esi+8]
 00546965    mov         dword ptr [ebx+2EC],eax;TCustomListView.FHeaderHandle:HWND
 0054696B    push        0FC
 0054696D    push        eax
 0054696E    call        user32.GetWindowLongW
 00546973    mov         dword ptr [ebx+2E4],eax;TCustomListView.FDefHeaderProc:Pointer
 00546979    mov         eax,dword ptr [ebx+2EC];TCustomListView.FHeaderHandle:HWND
 0054697F    mov         edx,dword ptr [ebx+424];TCustomListView.FHeaderInstance:Pointer
 00546985    push        edx
 00546986    push        0FC
 00546988    push        eax
 00546989    call        user32.SetWindowLongW
 0054698E    mov         edx,esi
 00546990    mov         eax,ebx
 00546992    call        TWinControl.WMParentNotify
 00546997    pop         esi
 00546998    pop         ebx
 00546999    ret
*}
end;

//0054699C
{*function sub_0054699C:?;
begin
 0054699C    push        ebx
 0054699D    push        esi
 0054699E    mov         ebx,eax
 005469A0    or          esi,0FFFFFFFF
 005469A3    mov         eax,ebx
 005469A5    call        005489C4
 005469AA    test        eax,eax
>005469AC    je          005469BC
 005469AE    mov         eax,ebx
 005469B0    call        005489C4
 005469B5    call        TListItem.GetIndex
 005469BA    mov         esi,eax
 005469BC    mov         eax,esi
 005469BE    pop         esi
 005469BF    pop         ebx
 005469C0    ret
end;*}

//005469C4
{*function sub_005469C4(?:?):?;
begin
 005469C4    push        ebx
 005469C5    cmp         word ptr [eax+3A2],0;TCustomListView.?f3A2:word
>005469CD    je          005469E5
 005469CF    mov         ebx,eax
 005469D1    mov         ecx,edx
 005469D3    mov         edx,eax
 005469D5    mov         eax,dword ptr [ebx+3A4];TCustomListView.?f3A4:dword
 005469DB    call        dword ptr [ebx+3A0];TCustomListView.FOnData
 005469E1    mov         al,1
 005469E3    pop         ebx
 005469E4    ret
 005469E5    xor         eax,eax
 005469E7    pop         ebx
 005469E8    ret
end;*}

//005469EC
{*function sub_005469EC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 005469EC    push        ebp
 005469ED    mov         ebp,esp
 005469EF    push        ecx
 005469F0    push        ebx
 005469F1    mov         dword ptr [ebp-4],0FFFFFFFF
 005469F8    cmp         word ptr [eax+3AA],0;TCustomListView.?f3AA:word
>00546A00    je          00546A2F
 00546A02    push        ecx
 00546A03    mov         ecx,dword ptr [ebp+18]
 00546A06    push        ecx
 00546A07    mov         ecx,dword ptr [ebp+14]
 00546A0A    push        ecx
 00546A0B    mov         ecx,dword ptr [ebp+10]
 00546A0E    push        ecx
 00546A0F    movzx       ecx,byte ptr [ebp+0C]
 00546A13    push        ecx
 00546A14    movzx       ecx,byte ptr [ebp+8]
 00546A18    push        ecx
 00546A19    lea         ecx,[ebp-4]
 00546A1C    push        ecx
 00546A1D    mov         ecx,edx
 00546A1F    mov         ebx,eax
 00546A21    mov         edx,eax
 00546A23    mov         eax,dword ptr [ebx+3AC];TCustomListView.?f3AC:dword
 00546A29    call        dword ptr [ebx+3A8];TCustomListView.FOnDataFind
 00546A2F    mov         eax,dword ptr [ebp-4]
 00546A32    pop         ebx
 00546A33    pop         ecx
 00546A34    pop         ebp
 00546A35    ret         14
end;*}

//00546A38
{*function sub_00546A38(?:?):?;
begin
 00546A38    push        ebx
 00546A39    cmp         word ptr [eax+3B2],0;TCustomListView.?f3B2:word
>00546A41    je          00546A5A
 00546A43    push        ecx
 00546A44    mov         ebx,eax
 00546A46    mov         ecx,edx
 00546A48    mov         edx,eax
 00546A4A    mov         eax,dword ptr [ebx+3B4];TCustomListView.?f3B4:dword
 00546A50    call        dword ptr [ebx+3B0];TCustomListView.FOnDataHint
 00546A56    mov         al,1
 00546A58    pop         ebx
 00546A59    ret
 00546A5A    xor         eax,eax
 00546A5C    pop         ebx
 00546A5D    ret
end;*}

//00546A60
{*function sub_00546A60(?:?; ?:?; ?:?):?;
begin
 00546A60    push        ebp
 00546A61    mov         ebp,esp
 00546A63    push        ebx
 00546A64    cmp         word ptr [eax+3BA],0;TCustomListView.?f3BA:word
>00546A6C    je          00546A8F
 00546A6E    push        ecx
 00546A6F    movzx       ecx,byte ptr [ebp+0C]
 00546A73    push        ecx
 00546A74    movzx       ecx,byte ptr [ebp+8]
 00546A78    push        ecx
 00546A79    mov         ebx,eax
 00546A7B    mov         ecx,edx
 00546A7D    mov         edx,eax
 00546A7F    mov         eax,dword ptr [ebx+3BC];TCustomListView.?f3BC:dword
 00546A85    call        dword ptr [ebx+3B8];TCustomListView.FOnDataStateChange
 00546A8B    mov         al,1
>00546A8D    jmp         00546A91
 00546A8F    xor         eax,eax
 00546A91    pop         ebx
 00546A92    pop         ebp
 00546A93    ret         8
end;*}

//00546A98
procedure sub_00546A98;
begin
{*
 00546A98    push        ebx
 00546A99    push        ecx
 00546A9A    mov         ebx,eax
 00546A9C    mov         eax,[0052CF04];TListItem
 00546AA1    mov         dword ptr [esp],eax
 00546AA4    cmp         word ptr [ebx+412],0;TCustomListView.?f412:word
>00546AAC    je          00546ABE
 00546AAE    mov         ecx,esp
 00546AB0    mov         edx,ebx
 00546AB2    mov         eax,dword ptr [ebx+414];TCustomListView.FGroupView:Boolean
 00546AB8    call        dword ptr [ebx+410];TCustomListView.FOnCreateItemClass
 00546ABE    mov         ecx,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00546AC4    mov         dl,1
 00546AC6    mov         eax,dword ptr [esp]
 00546AC9    call        dword ptr [eax+0C]
 00546ACC    pop         edx
 00546ACD    pop         ebx
 00546ACE    ret
*}
end;

//00546AD0
procedure sub_00546AD0;
begin
{*
 00546AD0    mov         ecx,eax
 00546AD2    mov         dl,1
 00546AD4    mov         eax,[0052D940];TListItems
 00546AD9    call        TParaAttributes.Create;TListItems.Create
 00546ADE    ret
*}
end;

//00546AE0
{*function sub_00546AE0(?:?):?;
begin
 00546AE0    push        ebx
 00546AE1    push        esi
 00546AE2    mov         esi,eax
 00546AE4    movzx       ebx,byte ptr ds:[546B28];0x0 gvar_00546B28
 00546AEB    test        esi,1
>00546AF1    je          00546AF6
 00546AF3    or          bl,1
 00546AF6    test        esi,2
>00546AFC    je          00546B01
 00546AFE    or          bl,2
 00546B01    test        esi,4
>00546B07    je          00546B0C
 00546B09    or          bl,4
 00546B0C    test        esi,8
>00546B12    je          00546B17
 00546B14    or          bl,8
 00546B17    test        esi,10
>00546B1D    je          00546B22
 00546B1F    or          bl,10
 00546B22    mov         eax,ebx
 00546B24    pop         esi
 00546B25    pop         ebx
 00546B26    ret
end;*}

//00546B2C
{*function sub_00546B2C(?:TCustomListView; ?:Byte):?;
begin
 00546B2C    push        ebp
 00546B2D    mov         ebp,esp
 00546B2F    add         esp,0FFFFFFBC
 00546B32    push        ebx
 00546B33    push        esi
 00546B34    push        edi
 00546B35    xor         ecx,ecx
 00546B37    mov         dword ptr [ebp-4],ecx
 00546B3A    mov         esi,edx
 00546B3C    lea         edi,[ebp-44]
 00546B3F    mov         ecx,0F
 00546B44    rep movs    dword ptr [edi],dword ptr [esi]
 00546B46    mov         esi,eax
 00546B48    xor         eax,eax
 00546B4A    push        ebp
 00546B4B    push        546C4E
 00546B50    push        dword ptr fs:[eax]
 00546B53    mov         dword ptr fs:[eax],esp
 00546B56    mov         ebx,dword ptr [ebp-44]
 00546B59    test        bl,4
>00546B5C    je          00546B66
 00546B5E    mov         ebx,dword ptr [ebp-24]
>00546B61    jmp         00546C38
 00546B66    cmp         byte ptr [esi+2D4],0
>00546B6D    je          00546C28
 00546B73    cmp         dword ptr [ebp-40],0
>00546B77    jge         00546B80
 00546B79    xor         ebx,ebx
>00546B7B    jmp         00546C38
 00546B80    cmp         dword ptr [ebp-3C],0
>00546B84    jne         00546C20
 00546B8A    mov         eax,ebx
 00546B8C    call        00546AE0
 00546B91    mov         byte ptr [ebp-5],al
 00546B94    mov         eax,dword ptr [esi+31C]
 00546B9A    mov         edx,dword ptr [ebp-40]
 00546B9D    mov         dword ptr [eax+14],edx
 00546BA0    mov         edx,dword ptr [ebp-24]
 00546BA3    mov         dword ptr [eax+28],edx
 00546BA6    mov         eax,dword ptr [eax+8]
 00546BA9    mov         edx,dword ptr [eax]
 00546BAB    call        dword ptr [edx+48]
 00546BAE    test        byte ptr [ebp-5],1
>00546BB2    je          00546BC7
 00546BB4    cmp         dword ptr [ebp-30],0
>00546BB8    je          00546BC7
 00546BBA    lea         edx,[ebp-4]
 00546BBD    mov         eax,dword ptr [ebp-30]
 00546BC0    call        0041F490
>00546BC5    jmp         00546BCF
 00546BC7    lea         eax,[ebp-4]
 00546BCA    call        @UStrClr
 00546BCF    mov         eax,dword ptr [esi+31C]
 00546BD5    add         eax,20
 00546BD8    mov         edx,dword ptr [ebp-4]
 00546BDB    call        @UStrAsg
 00546BE0    test        byte ptr [ebp-5],2
>00546BE4    je          00546BF2
 00546BE6    mov         eax,dword ptr [esi+31C]
 00546BEC    mov         edx,dword ptr [ebp-28]
 00546BEF    mov         dword ptr [eax+0C],edx
 00546BF2    test        byte ptr [ebp-5],10
>00546BF6    je          00546C04
 00546BF8    mov         eax,dword ptr [esi+31C]
 00546BFE    mov         edx,dword ptr [ebp-20]
 00546C01    mov         dword ptr [eax+10],edx
 00546C04    movzx       ecx,byte ptr [ebp-5]
 00546C08    mov         edx,dword ptr [esi+31C]
 00546C0E    mov         eax,esi
 00546C10    mov         ebx,dword ptr [eax]
 00546C12    call        dword ptr [ebx+158]
 00546C18    mov         ebx,dword ptr [esi+31C]
>00546C1E    jmp         00546C38
 00546C20    mov         ebx,dword ptr [esi+31C]
>00546C26    jmp         00546C38
 00546C28    mov         edx,dword ptr [ebp-40]
 00546C2B    mov         eax,dword ptr [esi+2BC]
 00546C31    call        TListItems.GetItem
 00546C36    mov         ebx,eax
 00546C38    xor         eax,eax
 00546C3A    pop         edx
 00546C3B    pop         ecx
 00546C3C    pop         ecx
 00546C3D    mov         dword ptr fs:[eax],edx
 00546C40    push        546C55
 00546C45    lea         eax,[ebp-4]
 00546C48    call        @UStrClr
 00546C4D    ret
>00546C4E    jmp         @HandleFinally
>00546C53    jmp         00546C45
 00546C55    mov         eax,ebx
 00546C57    pop         edi
 00546C58    pop         esi
 00546C59    pop         ebx
 00546C5A    mov         esp,ebp
 00546C5C    pop         ebp
 00546C5D    ret
end;*}

//00546C60
procedure sub_00546C60;
begin
{*
 00546C60    push        ebx
 00546C61    call        TWinControl.GetHandle
 00546C66    mov         ebx,eax
 00546C68    push        0
 00546C6A    push        0
 00546C6C    push        1032
 00546C71    push        ebx
 00546C72    call        user32.SendMessageW
 00546C77    pop         ebx
 00546C78    ret
*}
end;

//00546C7C
{*function sub_00546C7C(?:?):?;
begin
 00546C7C    test        al,1
>00546C7E    je          00546C83
 00546C80    xor         eax,eax
 00546C82    ret
 00546C83    test        al,8
>00546C85    je          00546C8B
 00546C87    mov         al,1
>00546C89    jmp         00546C9D
 00546C8B    test        al,2
>00546C8D    je          00546C93
 00546C8F    mov         al,2
>00546C91    jmp         00546C9D
 00546C93    test        al,40
>00546C95    je          00546C9B
 00546C97    mov         al,3
>00546C99    jmp         00546C9D
 00546C9B    xor         eax,eax
 00546C9D    ret
end;*}

//00546CA0
{*function sub_00546CA0(?:?):?;
begin
 00546CA0    push        ebx
 00546CA1    push        esi
 00546CA2    mov         esi,eax
 00546CA4    movzx       ebx,byte ptr ds:[546CE8];0x0 gvar_00546CE8
 00546CAB    test        esi,20
>00546CB1    je          00546CB6
 00546CB3    or          bl,20
 00546CB6    test        esi,4
>00546CBC    je          00546CC1
 00546CBE    or          bl,2
 00546CC1    test        esi,8
>00546CC7    je          00546CCC
 00546CC9    or          bl,4
 00546CCC    test        esi,1
>00546CD2    je          00546CD7
 00546CD4    or          bl,8
 00546CD7    test        esi,2
>00546CDD    je          00546CE2
 00546CDF    or          bl,10
 00546CE2    mov         eax,ebx
 00546CE4    pop         esi
 00546CE5    pop         ebx
 00546CE6    ret
end;*}

//00546CEC
{*procedure TCustomListView.sub_00546CEC(?:?);
begin
 00546CEC    push        ebp
 00546CED    mov         ebp,esp
 00546CEF    add         esp,0FFFFFF10
 00546CF5    push        ebx
 00546CF6    push        esi
 00546CF7    push        edi
 00546CF8    xor         ecx,ecx
 00546CFA    mov         dword ptr [ebp-0E8],ecx
 00546D00    mov         dword ptr [ebp-4],ecx
 00546D03    mov         dword ptr [ebp-0C],edx
 00546D06    mov         dword ptr [ebp-8],eax
 00546D09    xor         eax,eax
 00546D0B    push        ebp
 00546D0C    push        547BC4
 00546D11    push        dword ptr fs:[eax]
 00546D14    mov         dword ptr fs:[eax],esp
 00546D17    mov         esi,dword ptr [ebp-0C]
 00546D1A    mov         esi,dword ptr [esi+8]
 00546D1D    mov         eax,dword ptr [esi+8]
 00546D20    cmp         eax,0FFFFFF93
>00546D23    jg          00546DB9
>00546D29    je          0054767C
 00546D2F    cmp         eax,0FFFFFF51
>00546D34    jg          00546D79
>00546D36    je          00547940
 00546D3C    cmp         eax,0FFFFFF4D
>00546D41    jg          00546D62
>00546D43    je          00547847
 00546D49    sub         eax,0FFFFFEB8
>00546D4E    je          00546E26
 00546D54    sub         eax,14
>00546D57    je          00546E26
>00546D5D    jmp         00547BA3
 00546D62    sub         eax,0FFFFFF4F
>00546D67    je          0054772B
 00546D6D    dec         eax
>00546D6E    je          005479CD
>00546D74    jmp         00547BA3
 00546D79    cmp         eax,0FFFFFF6A
>00546D7E    jg          00546DA2
>00546D80    je          0054772B
 00546D86    add         eax,9E
 00546D8B    sub         eax,2
>00546D8E    jb          00547B5A
 00546D94    sub         eax,4
>00546D97    je          00547847
>00546D9D    jmp         00547BA3
 00546DA2    sub         eax,0FFFFFF8D
>00546DA5    je          00547918
 00546DAB    sub         eax,2
>00546DAE    je          00547831
>00546DB4    jmp         00547BA3
 00546DB9    cmp         eax,0FFFFFF9A
>00546DBC    jg          00546DEF
>00546DBE    je          00547A13
 00546DC4    add         eax,6C
 00546DC7    cmp         eax,5
>00546DCA    ja          00547BA3
 00546DD0    jmp         dword ptr [eax*4+546DD7]
 00546DD0    dd          005479F5
 00546DD0    dd          00547BA3
 00546DD0    dd          005479CD
 00546DD0    dd          00547940
 00546DD0    dd          005476AB
 00546DD0    dd          0054768D
 00546DEF    cmp         eax,0FFFFFFF4
>00546DF2    jg          00546E0F
>00546DF4    je          00546EA8
 00546DFA    sub         eax,0FFFFFF9B
>00546DFD    je          00547A72
 00546E03    dec         eax
>00546E04    je          00547A37
>00546E0A    jmp         00547BA3
 00546E0F    sub         eax,0FFFFFFFB
>00546E12    je          00547B99
 00546E18    sub         eax,3
>00546E1B    je          00547B8D
>00546E21    jmp         00547BA3
 00546E26    mov         ebx,esi
 00546E28    mov         esi,dword ptr [ebx+14]
 00546E2B    test        byte ptr [esi],1
>00546E2E    je          00547BA3
 00546E34    mov         edx,dword ptr [ebx+0C]
 00546E37    mov         eax,dword ptr [ebp-8]
 00546E3A    call        TCustomListView.GetColumnFromIndex
 00546E3F    mov         eax,dword ptr [eax+18];TListColumn.FMinWidth:TWidth
 00546E42    cmp         eax,dword ptr [esi+4]
>00546E45    jl          00546E6C
 00546E47    mov         edx,dword ptr [ebx+0C]
 00546E4A    mov         eax,dword ptr [ebp-8]
 00546E4D    call        TCustomListView.GetColumnFromIndex
 00546E52    mov         eax,dword ptr [eax+18];TListColumn.FMinWidth:TWidth
 00546E55    push        eax
 00546E56    mov         edx,dword ptr [ebx+0C]
 00546E59    mov         eax,dword ptr [ebp-8]
 00546E5C    call        TCustomListView.GetColumnFromIndex
 00546E61    pop         edx
 00546E62    call        TListColumn.SetWidth
>00546E67    jmp         00547BA3
 00546E6C    mov         edx,dword ptr [ebx+0C]
 00546E6F    mov         eax,dword ptr [ebp-8]
 00546E72    call        TCustomListView.GetColumnFromIndex
 00546E77    mov         eax,dword ptr [eax+14];TListColumn.FMaxWidth:TWidth
 00546E7A    cmp         eax,dword ptr [esi+4]
>00546E7D    jg          00547BA3
 00546E83    mov         edx,dword ptr [ebx+0C]
 00546E86    mov         eax,dword ptr [ebp-8]
 00546E89    call        TCustomListView.GetColumnFromIndex
 00546E8E    mov         eax,dword ptr [eax+14];TListColumn.FMaxWidth:TWidth
 00546E91    push        eax
 00546E92    mov         edx,dword ptr [ebx+0C]
 00546E95    mov         eax,dword ptr [ebp-8]
 00546E98    call        TCustomListView.GetColumnFromIndex
 00546E9D    pop         edx
 00546E9E    call        TListColumn.SetWidth
>00546EA3    jmp         00547BA3
 00546EA8    mov         eax,dword ptr [ebp-8]
 00546EAB    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00546EB1    test        eax,eax
>00546EB3    je          00547BA3
 00546EB9    mov         dword ptr [ebp-24],esi
 00546EBC    xor         edx,edx
 00546EBE    push        ebp
 00546EBF    push        547675
 00546EC4    push        dword ptr fs:[edx]
 00546EC7    mov         dword ptr fs:[edx],esp
 00546ECA    call        TCustomCanvas.Lock
 00546ECF    mov         eax,dword ptr [ebp-0C]
 00546ED2    xor         edx,edx
 00546ED4    mov         dword ptr [eax+0C],edx
 00546ED7    mov         eax,dword ptr [ebp-24]
 00546EDA    test        byte ptr [eax+0E],1
>00546EDE    jne         005470E6
 00546EE4    lea         edx,[ebp-4C]
 00546EE7    mov         eax,dword ptr [ebp-8]
 00546EEA    mov         ecx,dword ptr [eax]
 00546EEC    call        dword ptr [ecx+64];TWinControl.GetClientRect
 00546EEF    mov         eax,dword ptr [ebp-24]
 00546EF2    mov         eax,dword ptr [eax+0C]
 00546EF5    dec         eax
>00546EF6    je          00546F12
 00546EF8    dec         eax
>00546EF9    je          00547062
 00546EFF    dec         eax
>00546F00    je          0054708E
 00546F06    dec         eax
>00546F07    je          005470BA
>00546F0D    jmp         00547659
 00546F12    xor         ecx,ecx
 00546F14    xor         edx,edx
 00546F16    mov         eax,dword ptr [ebp-8]
 00546F19    mov         ebx,dword ptr [eax]
 00546F1B    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 00546F21    test        al,al
>00546F23    je          00546FC8
 00546F29    xor         eax,eax
 00546F2B    push        ebp
 00546F2C    push        546FA7
 00546F31    push        dword ptr fs:[eax]
 00546F34    mov         dword ptr fs:[eax],esp
 00546F37    mov         eax,dword ptr [ebp-24]
 00546F3A    mov         edx,dword ptr [eax+10]
 00546F3D    mov         eax,dword ptr [ebp-8]
 00546F40    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00546F46    call        TCanvas.SetHandle
 00546F4B    mov         eax,dword ptr [ebp-8]
 00546F4E    mov         edx,dword ptr [eax+74];TCustomListView.FFont:TFont
 00546F51    mov         eax,dword ptr [ebp-8]
 00546F54    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00546F5A    call        TCanvas.SetFont
 00546F5F    mov         eax,dword ptr [ebp-8]
 00546F62    mov         edx,dword ptr [eax+1D0];TCustomListView.FBrush:TBrush
 00546F68    mov         eax,dword ptr [ebp-8]
 00546F6B    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00546F71    call        TCanvas.SetBrush
 00546F76    lea         edx,[ebp-4C]
 00546F79    xor         ecx,ecx
 00546F7B    mov         eax,dword ptr [ebp-8]
 00546F7E    mov         ebx,dword ptr [eax]
 00546F80    call        dword ptr [ebx+140];TCustomListView.sub_00549990
 00546F86    mov         byte ptr [ebp-0D],al
 00546F89    xor         eax,eax
 00546F8B    pop         edx
 00546F8C    pop         ecx
 00546F8D    pop         ecx
 00546F8E    mov         dword ptr fs:[eax],edx
 00546F91    push        546FAE
 00546F96    mov         eax,dword ptr [ebp-8]
 00546F99    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00546F9F    xor         edx,edx
 00546FA1    call        TCanvas.SetHandle
 00546FA6    ret
>00546FA7    jmp         @HandleFinally
>00546FAC    jmp         00546F96
 00546FAE    cmp         byte ptr [ebp-0D],0
>00546FB2    jne         00546FC8
 00546FB4    mov         eax,dword ptr [ebp-0C]
 00546FB7    mov         dword ptr [eax+0C],4
 00546FBE    call        @TryFinallyExit
>00546FC3    jmp         00547BA3
 00546FC8    xor         ecx,ecx
 00546FCA    mov         dl,1
 00546FCC    mov         eax,dword ptr [ebp-8]
 00546FCF    mov         ebx,dword ptr [eax]
 00546FD1    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 00546FD7    test        al,al
>00546FD9    jne         00546FEE
 00546FDB    mov         cl,2
 00546FDD    mov         dl,1
 00546FDF    mov         eax,dword ptr [ebp-8]
 00546FE2    mov         ebx,dword ptr [eax]
 00546FE4    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 00546FEA    test        al,al
>00546FEC    je          00546FF8
 00546FEE    mov         eax,dword ptr [ebp-0C]
 00546FF1    mov         dword ptr [eax+0C],20
 00546FF8    mov         cl,1
 00546FFA    mov         dl,1
 00546FFC    mov         eax,dword ptr [ebp-8]
 00546FFF    mov         ebx,dword ptr [eax]
 00547001    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 00547007    test        al,al
>00547009    je          00547012
 0054700B    mov         eax,dword ptr [ebp-0C]
 0054700E    or          dword ptr [eax+0C],10
 00547012    mov         cl,3
 00547014    mov         dl,1
 00547016    mov         eax,dword ptr [ebp-8]
 00547019    mov         ebx,dword ptr [eax]
 0054701B    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 00547021    test        al,al
>00547023    je          0054702C
 00547025    mov         eax,dword ptr [ebp-0C]
 00547028    or          dword ptr [eax+0C],40
 0054702C    xor         ecx,ecx
 0054702E    mov         dl,2
 00547030    mov         eax,dword ptr [ebp-8]
 00547033    mov         ebx,dword ptr [eax]
 00547035    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 0054703B    test        al,al
>0054703D    jne         00547056
 0054703F    mov         cl,1
 00547041    mov         dl,2
 00547043    mov         eax,dword ptr [ebp-8]
 00547046    mov         ebx,dword ptr [eax]
 00547048    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 0054704E    test        al,al
>00547050    je          00547659
 00547056    mov         eax,dword ptr [ebp-0C]
 00547059    or          dword ptr [eax+0C],20
>0054705D    jmp         00547659
 00547062    mov         cl,1
 00547064    xor         edx,edx
 00547066    mov         eax,dword ptr [ebp-8]
 00547069    mov         ebx,dword ptr [eax]
 0054706B    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 00547071    test        al,al
>00547073    je          00547659
 00547079    lea         edx,[ebp-4C]
 0054707C    mov         cl,1
 0054707E    mov         eax,dword ptr [ebp-8]
 00547081    mov         ebx,dword ptr [eax]
 00547083    call        dword ptr [ebx+140];TCustomListView.sub_00549990
>00547089    jmp         00547659
 0054708E    mov         cl,2
 00547090    xor         edx,edx
 00547092    mov         eax,dword ptr [ebp-8]
 00547095    mov         ebx,dword ptr [eax]
 00547097    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 0054709D    test        al,al
>0054709F    je          00547659
 005470A5    lea         edx,[ebp-4C]
 005470A8    mov         cl,2
 005470AA    mov         eax,dword ptr [ebp-8]
 005470AD    mov         ebx,dword ptr [eax]
 005470AF    call        dword ptr [ebx+140];TCustomListView.sub_00549990
>005470B5    jmp         00547659
 005470BA    mov         cl,3
 005470BC    xor         edx,edx
 005470BE    mov         eax,dword ptr [ebp-8]
 005470C1    mov         ebx,dword ptr [eax]
 005470C3    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 005470C9    test        al,al
>005470CB    je          00547659
 005470D1    lea         edx,[ebp-4C]
 005470D4    mov         cl,3
 005470D6    mov         eax,dword ptr [ebp-8]
 005470D9    mov         ebx,dword ptr [eax]
 005470DB    call        dword ptr [ebx+140];TCustomListView.sub_00549990
>005470E1    jmp         00547659
 005470E6    mov         ebx,dword ptr [ebp-0C]
 005470E9    mov         ebx,dword ptr [ebx+8]
 005470EC    mov         eax,dword ptr [ebp-24]
 005470EF    test        byte ptr [eax+0E],2
 005470F3    setne       byte ptr [ebp-1A]
 005470F7    cmp         byte ptr [ebp-1A],0
>005470FB    je          0054710D
 005470FD    cmp         dword ptr [ebx+38],0
>00547101    jne         0054710D
 00547103    call        @TryFinallyExit
>00547108    jmp         00547BA3
 0054710D    mov         esi,dword ptr [ebx+38]
 00547110    lea         eax,[ebp-88]
 00547116    xor         ecx,ecx
 00547118    mov         edx,3C
 0054711D    call        @FillChar
 00547122    mov         eax,dword ptr [ebp-24]
 00547125    mov         eax,dword ptr [eax+24]
 00547128    mov         dword ptr [ebp-84],eax
 0054712E    mov         eax,dword ptr [ebp-24]
 00547131    mov         eax,dword ptr [eax+0C]
 00547134    and         eax,10001
 00547139    cmp         eax,10001
>0054713E    jne         0054744F
 00547144    xor         eax,eax
 00547146    push        ebp
 00547147    push        5473AE
 0054714C    push        dword ptr fs:[eax]
 0054714F    mov         dword ptr fs:[eax],esp
 00547152    mov         eax,dword ptr [ebp-24]
 00547155    mov         edx,dword ptr [eax+10]
 00547158    mov         eax,dword ptr [ebp-8]
 0054715B    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00547161    call        TCanvas.SetHandle
 00547166    mov         eax,dword ptr [ebp-8]
 00547169    mov         edx,dword ptr [eax+74];TCustomListView.FFont:TFont
 0054716C    mov         eax,dword ptr [ebp-8]
 0054716F    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00547175    call        TCanvas.SetFont
 0054717A    mov         eax,dword ptr [ebp-8]
 0054717D    mov         edx,dword ptr [eax+1D0];TCustomListView.FBrush:TBrush
 00547183    mov         eax,dword ptr [ebp-8]
 00547186    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 0054718C    call        TCanvas.SetBrush
 00547191    mov         eax,dword ptr [ebp-8]
 00547194    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 0054719A    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0054719D    mov         edx,dword ptr [ebp-8]
 005471A0    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomTreeView
 005471A3    mov         dword ptr [eax+8],549874;TFont.FOnChange:TNotifyEvent
 005471AA    mov         eax,dword ptr [ebp-8]
 005471AD    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 005471B3    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005471B6    mov         edx,dword ptr [ebp-8]
 005471B9    mov         dword ptr [eax+0C],edx;TBrush.?fC:TCustomTreeView
 005471BC    mov         dword ptr [eax+8],549874;TBrush.FOnChange:TNotifyEvent
 005471C3    mov         eax,dword ptr [ebp-8]
 005471C6    mov         byte ptr [eax+31A],0;TCustomListView.FCanvasChanged:Boolean
 005471CD    cmp         byte ptr [ebp-1A],0
>005471D1    je          005471FF
 005471D3    mov         eax,dword ptr [ebp-24]
 005471D6    movzx       eax,word ptr [eax+28]
 005471DA    push        eax
 005471DB    push        0
 005471DD    lea         edx,[ebp-88]
 005471E3    mov         eax,dword ptr [ebp-8]
 005471E6    call        00546B2C
 005471EB    mov         edx,eax
 005471ED    mov         ecx,esi
 005471EF    mov         eax,dword ptr [ebp-8]
 005471F2    mov         esi,dword ptr [eax]
 005471F4    call        dword ptr [esi+148];TCustomListView.sub_00549A5C
 005471FA    mov         byte ptr [ebp-0D],al
>005471FD    jmp         00547226
 005471FF    push        0
 00547201    lea         edx,[ebp-88]
 00547207    mov         eax,dword ptr [ebp-8]
 0054720A    call        00546B2C
 0054720F    mov         edx,eax
 00547211    mov         eax,dword ptr [ebp-24]
 00547214    movzx       ecx,word ptr [eax+28]
 00547218    mov         eax,dword ptr [ebp-8]
 0054721B    mov         esi,dword ptr [eax]
 0054721D    call        dword ptr [esi+144];TCustomListView.sub_005499E8
 00547223    mov         byte ptr [ebp-0D],al
 00547226    cmp         byte ptr [ebp-0D],0
>0054722A    jne         00547242
 0054722C    mov         eax,dword ptr [ebp-0C]
 0054722F    or          dword ptr [eax+0C],4
 00547233    call        @TryFinallyExit
 00547238    call        @TryFinallyExit
>0054723D    jmp         00547BA3
 00547242    mov         eax,dword ptr [ebp-8]
 00547245    cmp         byte ptr [eax+31A],0;TCustomListView.FCanvasChanged:Boolean
>0054724C    je          00547390
 00547252    mov         eax,dword ptr [ebp-8]
 00547255    mov         byte ptr [eax+31A],0;TCustomListView.FCanvasChanged:Boolean
 0054725C    mov         eax,dword ptr [ebp-8]
 0054725F    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00547265    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00547268    xor         edx,edx
 0054726A    mov         dword ptr [eax+8],edx;TFont.FOnChange:TNotifyEvent
 0054726D    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomTreeView
 00547270    mov         eax,dword ptr [ebp-8]
 00547273    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00547279    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0054727C    xor         edx,edx
 0054727E    mov         dword ptr [eax+8],edx;TBrush.FOnChange:TNotifyEvent
 00547281    mov         dword ptr [eax+0C],edx;TBrush.?fC:TCustomTreeView
 00547284    mov         dword ptr [ebp-28],ebx
 00547287    mov         eax,dword ptr [ebp-8]
 0054728A    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00547290    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 00547293    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 00547296    call        ColorToRGB
 0054729B    mov         edx,dword ptr [ebp-28]
 0054729E    mov         dword ptr [edx+30],eax
 005472A1    mov         eax,dword ptr [ebp-8]
 005472A4    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 005472AA    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005472AD    mov         dword ptr [ebp-30],eax
 005472B0    mov         eax,dword ptr [ebp-30]
 005472B3    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 005472B6    mov         eax,dword ptr [eax+18]
 005472B9    call        ColorToRGB
 005472BE    mov         edx,dword ptr [ebp-28]
 005472C1    mov         dword ptr [edx+34],eax
 005472C4    lea         eax,[ebp-0E4]
 005472CA    push        eax
 005472CB    push        5C
 005472CD    mov         eax,dword ptr [ebp-8]
 005472D0    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 005472D6    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 005472D9    call        TFont.GetHandle
 005472DE    push        eax
 005472DF    call        gdi32.GetObjectW
 005472E4    test        eax,eax
>005472E6    je          00547390
 005472EC    mov         eax,dword ptr [ebp-8]
 005472EF    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 005472F5    xor         edx,edx
 005472F7    call        TCanvas.SetHandle
 005472FC    cmp         byte ptr [ebp-1A],0
>00547300    je          00547355
 00547302    mov         eax,dword ptr [ebp-8]
 00547305    cmp         dword ptr [eax+328],0;TCustomListView.FOurFont:Integer
>0054730C    je          00547355
 0054730E    mov         eax,dword ptr [ebp-8]
 00547311    cmp         dword ptr [eax+32C],0;TCustomListView.FStockFont:Integer
>00547318    je          00547355
 0054731A    mov         eax,dword ptr [ebp-8]
 0054731D    mov         eax,dword ptr [eax+32C];TCustomListView.FStockFont:Integer
 00547323    push        eax
 00547324    mov         eax,dword ptr [ebp-24]
 00547327    mov         eax,dword ptr [eax+10]
 0054732A    push        eax
 0054732B    call        gdi32.SelectObject
 00547330    mov         eax,dword ptr [ebp-8]
 00547333    mov         eax,dword ptr [eax+328];TCustomListView.FOurFont:Integer
 00547339    push        eax
 0054733A    call        gdi32.DeleteObject
 0054733F    mov         eax,dword ptr [ebp-8]
 00547342    xor         edx,edx
 00547344    mov         dword ptr [eax+328],edx;TCustomListView.FOurFont:Integer
 0054734A    mov         eax,dword ptr [ebp-8]
 0054734D    xor         edx,edx
 0054734F    mov         dword ptr [eax+32C],edx;TCustomListView.FStockFont:Integer
 00547355    lea         eax,[ebp-0E4]
 0054735B    push        eax
 0054735C    call        gdi32.CreateFontIndirectW
 00547361    mov         edx,dword ptr [ebp-8]
 00547364    mov         dword ptr [edx+328],eax;TCustomListView.FOurFont:Integer
 0054736A    mov         eax,dword ptr [ebp-8]
 0054736D    mov         eax,dword ptr [eax+328];TCustomListView.FOurFont:Integer
 00547373    push        eax
 00547374    mov         eax,dword ptr [ebp-24]
 00547377    mov         eax,dword ptr [eax+10]
 0054737A    push        eax
 0054737B    call        gdi32.SelectObject
 00547380    mov         edx,dword ptr [ebp-8]
 00547383    mov         dword ptr [edx+32C],eax;TCustomListView.FStockFont:Integer
 00547389    mov         eax,dword ptr [ebp-0C]
 0054738C    or          dword ptr [eax+0C],2
 00547390    xor         eax,eax
 00547392    pop         edx
 00547393    pop         ecx
 00547394    pop         ecx
 00547395    mov         dword ptr fs:[eax],edx
 00547398    push        5473B5
 0054739D    mov         eax,dword ptr [ebp-8]
 005473A0    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 005473A6    xor         edx,edx
 005473A8    call        TCanvas.SetHandle
 005473AD    ret
>005473AE    jmp         @HandleFinally
>005473B3    jmp         0054739D
 005473B5    cmp         byte ptr [ebp-1A],0
>005473B9    jne         00547412
 005473BB    xor         ecx,ecx
 005473BD    mov         dl,2
 005473BF    mov         eax,dword ptr [ebp-8]
 005473C2    mov         ebx,dword ptr [eax]
 005473C4    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 005473CA    test        al,al
>005473CC    je          005473D5
 005473CE    mov         eax,dword ptr [ebp-0C]
 005473D1    or          dword ptr [eax+0C],20
 005473D5    mov         cl,1
 005473D7    mov         dl,1
 005473D9    mov         eax,dword ptr [ebp-8]
 005473DC    mov         ebx,dword ptr [eax]
 005473DE    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 005473E4    test        al,al
>005473E6    je          005473EF
 005473E8    mov         eax,dword ptr [ebp-0C]
 005473EB    or          dword ptr [eax+0C],10
 005473EF    mov         cl,3
 005473F1    mov         dl,1
 005473F3    mov         eax,dword ptr [ebp-8]
 005473F6    mov         ebx,dword ptr [eax]
 005473F8    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 005473FE    test        al,al
>00547400    je          00547659
 00547406    mov         eax,dword ptr [ebp-0C]
 00547409    or          dword ptr [eax+0C],40
>0054740D    jmp         00547659
 00547412    mov         cl,1
 00547414    mov         dl,2
 00547416    mov         eax,dword ptr [ebp-8]
 00547419    mov         ebx,dword ptr [eax]
 0054741B    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 00547421    test        al,al
>00547423    je          0054742C
 00547425    mov         eax,dword ptr [ebp-0C]
 00547428    or          dword ptr [eax+0C],10
 0054742C    mov         cl,3
 0054742E    mov         dl,2
 00547430    mov         eax,dword ptr [ebp-8]
 00547433    mov         ebx,dword ptr [eax]
 00547435    call        dword ptr [ebx+168];TCustomListView.sub_0054987C
 0054743B    test        al,al
>0054743D    je          00547659
 00547443    mov         eax,dword ptr [ebp-0C]
 00547446    or          dword ptr [eax+0C],40
>0054744A    jmp         00547659
 0054744F    mov         eax,dword ptr [ebp-24]
 00547452    mov         eax,dword ptr [eax+0C]
 00547455    and         eax,10002
 0054745A    cmp         eax,10002
>0054745F    jne         0054758A
 00547465    xor         eax,eax
 00547467    push        ebp
 00547468    push        547523
 0054746D    push        dword ptr fs:[eax]
 00547470    mov         dword ptr fs:[eax],esp
 00547473    mov         eax,dword ptr [ebp-24]
 00547476    mov         edx,dword ptr [eax+10]
 00547479    mov         eax,dword ptr [ebp-8]
 0054747C    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00547482    call        TCanvas.SetHandle
 00547487    mov         eax,dword ptr [ebp-8]
 0054748A    mov         edx,dword ptr [eax+74];TCustomListView.FFont:TFont
 0054748D    mov         eax,dword ptr [ebp-8]
 00547490    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00547496    call        TCanvas.SetFont
 0054749B    mov         eax,dword ptr [ebp-8]
 0054749E    mov         edx,dword ptr [eax+1D0];TCustomListView.FBrush:TBrush
 005474A4    mov         eax,dword ptr [ebp-8]
 005474A7    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 005474AD    call        TCanvas.SetBrush
 005474B2    cmp         byte ptr [ebp-1A],0
>005474B6    je          005474E1
 005474B8    mov         eax,dword ptr [ebp-24]
 005474BB    movzx       eax,word ptr [eax+28]
 005474BF    push        eax
 005474C0    push        1
 005474C2    lea         edx,[ebp-88]
 005474C8    mov         eax,dword ptr [ebp-8]
 005474CB    call        00546B2C
 005474D0    mov         edx,eax
 005474D2    mov         ecx,esi
 005474D4    mov         eax,dword ptr [ebp-8]
 005474D7    mov         ebx,dword ptr [eax]
 005474D9    call        dword ptr [ebx+148];TCustomListView.sub_00549A5C
>005474DF    jmp         00547505
 005474E1    push        1
 005474E3    lea         edx,[ebp-88]
 005474E9    mov         eax,dword ptr [ebp-8]
 005474EC    call        00546B2C
 005474F1    mov         edx,eax
 005474F3    mov         eax,dword ptr [ebp-24]
 005474F6    movzx       ecx,word ptr [eax+28]
 005474FA    mov         eax,dword ptr [ebp-8]
 005474FD    mov         ebx,dword ptr [eax]
 005474FF    call        dword ptr [ebx+144];TCustomListView.sub_005499E8
 00547505    xor         eax,eax
 00547507    pop         edx
 00547508    pop         ecx
 00547509    pop         ecx
 0054750A    mov         dword ptr fs:[eax],edx
 0054750D    push        54752A
 00547512    mov         eax,dword ptr [ebp-8]
 00547515    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 0054751B    xor         edx,edx
 0054751D    call        TCanvas.SetHandle
 00547522    ret
>00547523    jmp         @HandleFinally
>00547528    jmp         00547512
 0054752A    mov         eax,dword ptr [ebp-8]
 0054752D    cmp         dword ptr [eax+328],0;TCustomListView.FOurFont:Integer
>00547534    je          00547659
 0054753A    mov         eax,dword ptr [ebp-8]
 0054753D    cmp         dword ptr [eax+32C],0;TCustomListView.FStockFont:Integer
>00547544    je          00547659
 0054754A    mov         eax,dword ptr [ebp-8]
 0054754D    mov         eax,dword ptr [eax+32C];TCustomListView.FStockFont:Integer
 00547553    push        eax
 00547554    mov         eax,dword ptr [ebp-24]
 00547557    mov         eax,dword ptr [eax+10]
 0054755A    push        eax
 0054755B    call        gdi32.SelectObject
 00547560    mov         eax,dword ptr [ebp-8]
 00547563    mov         eax,dword ptr [eax+328];TCustomListView.FOurFont:Integer
 00547569    push        eax
 0054756A    call        gdi32.DeleteObject
 0054756F    mov         eax,dword ptr [ebp-8]
 00547572    xor         edx,edx
 00547574    mov         dword ptr [eax+328],edx;TCustomListView.FOurFont:Integer
 0054757A    mov         eax,dword ptr [ebp-8]
 0054757D    xor         edx,edx
 0054757F    mov         dword ptr [eax+32C],edx;TCustomListView.FStockFont:Integer
>00547585    jmp         00547659
 0054758A    mov         eax,dword ptr [ebp-24]
 0054758D    mov         eax,dword ptr [eax+0C]
 00547590    and         eax,10003
 00547595    cmp         eax,10003
>0054759A    jne         005475F4
 0054759C    cmp         byte ptr [ebp-1A],0
>005475A0    je          005475CE
 005475A2    mov         eax,dword ptr [ebp-24]
 005475A5    movzx       eax,word ptr [eax+28]
 005475A9    push        eax
 005475AA    push        2
 005475AC    lea         edx,[ebp-88]
 005475B2    mov         eax,dword ptr [ebp-8]
 005475B5    call        00546B2C
 005475BA    mov         edx,eax
 005475BC    mov         ecx,esi
 005475BE    mov         eax,dword ptr [ebp-8]
 005475C1    mov         ebx,dword ptr [eax]
 005475C3    call        dword ptr [ebx+148];TCustomListView.sub_00549A5C
>005475C9    jmp         00547659
 005475CE    push        2
 005475D0    lea         edx,[ebp-88]
 005475D6    mov         eax,dword ptr [ebp-8]
 005475D9    call        00546B2C
 005475DE    mov         edx,eax
 005475E0    mov         eax,dword ptr [ebp-24]
 005475E3    movzx       ecx,word ptr [eax+28]
 005475E7    mov         eax,dword ptr [ebp-8]
 005475EA    mov         ebx,dword ptr [eax]
 005475EC    call        dword ptr [ebx+144];TCustomListView.sub_005499E8
>005475F2    jmp         00547659
 005475F4    mov         eax,dword ptr [ebp-24]
 005475F7    mov         eax,dword ptr [eax+0C]
 005475FA    and         eax,10004
 005475FF    cmp         eax,10004
>00547604    jne         00547659
 00547606    cmp         byte ptr [ebp-1A],0
>0054760A    je          00547635
 0054760C    mov         eax,dword ptr [ebp-24]
 0054760F    movzx       eax,word ptr [eax+28]
 00547613    push        eax
 00547614    push        3
 00547616    lea         edx,[ebp-88]
 0054761C    mov         eax,dword ptr [ebp-8]
 0054761F    call        00546B2C
 00547624    mov         edx,eax
 00547626    mov         ecx,esi
 00547628    mov         eax,dword ptr [ebp-8]
 0054762B    mov         ebx,dword ptr [eax]
 0054762D    call        dword ptr [ebx+148];TCustomListView.sub_00549A5C
>00547633    jmp         00547659
 00547635    push        3
 00547637    lea         edx,[ebp-88]
 0054763D    mov         eax,dword ptr [ebp-8]
 00547640    call        00546B2C
 00547645    mov         edx,eax
 00547647    mov         eax,dword ptr [ebp-24]
 0054764A    movzx       ecx,word ptr [eax+28]
 0054764E    mov         eax,dword ptr [ebp-8]
 00547651    mov         ebx,dword ptr [eax]
 00547653    call        dword ptr [ebx+144];TCustomListView.sub_005499E8
 00547659    xor         eax,eax
 0054765B    pop         edx
 0054765C    pop         ecx
 0054765D    pop         ecx
 0054765E    mov         dword ptr fs:[eax],edx
 00547661    push        547BA3
 00547666    mov         eax,dword ptr [ebp-8]
 00547669    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 0054766F    call        TCustomCanvas.Unlock
 00547674    ret
>00547675    jmp         @HandleFinally
>0054767A    jmp         00547666
 0054767C    mov         eax,dword ptr [esi+0C]
 0054767F    mov         edx,dword ptr [ebp-8]
 00547682    mov         dword ptr [edx+2F4],eax;TCustomListView.FDragIndex:Integer
>00547688    jmp         00547BA3
 0054768D    mov         edx,dword ptr [esi+28]
 00547690    mov         eax,dword ptr [ebp-8]
 00547693    mov         si,0FFA8
 00547697    call        @CallDynaInst;TCustomListView.sub_00547FB0
 0054769C    mov         eax,dword ptr [ebp-0C]
 0054769F    mov         dword ptr [eax+0C],1
>005476A6    jmp         00547BA3
 005476AB    mov         eax,dword ptr [ebp-8]
 005476AE    mov         byte ptr [eax+42C],1;TCustomListView.FDeletingAllItems:Boolean
 005476B5    xor         eax,eax
 005476B7    push        ebp
 005476B8    push        547715
 005476BD    push        dword ptr fs:[eax]
 005476C0    mov         dword ptr fs:[eax],esp
 005476C3    mov         eax,dword ptr [ebp-8]
 005476C6    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 005476CC    call        TListItems.GetCount
 005476D1    mov         ebx,eax
 005476D3    dec         ebx
 005476D4    cmp         ebx,0
>005476D7    jl          005476FD
 005476D9    mov         eax,dword ptr [ebp-8]
 005476DC    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 005476E2    mov         edx,ebx
 005476E4    call        TListItems.GetItem
 005476E9    mov         edx,eax
 005476EB    mov         eax,dword ptr [ebp-8]
 005476EE    mov         si,0FFA8
 005476F2    call        @CallDynaInst;TCustomListView.sub_00547FB0
 005476F7    dec         ebx
 005476F8    cmp         ebx,0FFFFFFFF
>005476FB    jne         005476D9
 005476FD    xor         eax,eax
 005476FF    pop         edx
 00547700    pop         ecx
 00547701    pop         ecx
 00547702    mov         dword ptr fs:[eax],edx
 00547705    push        54771C
 0054770A    mov         eax,dword ptr [ebp-8]
 0054770D    mov         byte ptr [eax+42C],0;TCustomListView.FDeletingAllItems:Boolean
 00547714    ret
>00547715    jmp         @HandleFinally
>0054771A    jmp         0054770A
 0054771C    mov         eax,dword ptr [ebp-0C]
 0054771F    mov         dword ptr [eax+0C],1
>00547726    jmp         00547BA3
 0054772B    mov         ebx,esi
 0054772D    lea         edx,[ebx+0C]
 00547730    mov         eax,dword ptr [ebp-8]
 00547733    call        00546B2C
 00547738    mov         edi,eax
 0054773A    lea         eax,[ebx+0C]
 0054773D    mov         ebx,eax
 0054773F    test        byte ptr [ebx],1
>00547742    je          0054779C
 00547744    cmp         dword ptr [ebx+8],0
>00547748    jne         0054775B
 0054774A    mov         ecx,dword ptr [ebx+18]
 0054774D    dec         ecx
 0054774E    mov         edx,dword ptr [edi+20]
 00547751    mov         eax,dword ptr [ebx+14]
 00547754    call        StrPLCopy
>00547759    jmp         0054779C
 0054775B    mov         eax,dword ptr [edi+8]
 0054775E    mov         dword ptr [ebp-2C],eax
 00547761    mov         eax,dword ptr [ebp-2C]
 00547764    mov         edx,dword ptr [eax]
 00547766    call        dword ptr [edx+14]
 00547769    cmp         eax,dword ptr [ebx+8]
>0054776C    jl          00547794
 0054776E    lea         ecx,[ebp-0E8]
 00547774    mov         edx,dword ptr [ebx+8]
 00547777    dec         edx
 00547778    mov         eax,dword ptr [ebp-2C]
 0054777B    mov         esi,dword ptr [eax]
 0054777D    call        dword ptr [esi+0C]
 00547780    mov         edx,dword ptr [ebp-0E8]
 00547786    mov         ecx,dword ptr [ebx+18]
 00547789    dec         ecx
 0054778A    mov         eax,dword ptr [ebx+14]
 0054778D    call        StrPLCopy
>00547792    jmp         0054779C
 00547794    mov         eax,dword ptr [ebx+14]
 00547797    mov         word ptr [eax],0
 0054779C    test        byte ptr [ebx],2
>0054779F    je          0054781D
 005477A1    cmp         dword ptr [ebx+8],0
>005477A5    jne         005477DF
 005477A7    mov         edx,edi
 005477A9    mov         eax,dword ptr [ebp-8]
 005477AC    call        00548B0C
 005477B1    mov         eax,dword ptr [edi+0C]
 005477B4    mov         dword ptr [ebx+1C],eax
 005477B7    mov         eax,dword ptr [ebp-8]
 005477BA    cmp         dword ptr [eax+2AC],0;TCustomListView.FStateImages:TCustomImageList
>005477C1    je          0054781D
 005477C3    mov         eax,dword ptr [edi+1C]
 005477C6    inc         eax
 005477C7    mov         dword ptr [ebp-34],eax
 005477CA    mov         eax,dword ptr [ebp-34]
 005477CD    shl         eax,0C
 005477D0    mov         dword ptr [ebx+0C],eax
 005477D3    mov         dword ptr [ebx+10],0F000
 005477DA    or          dword ptr [ebx],8
>005477DD    jmp         0054781D
 005477DF    mov         eax,dword ptr [ebx+8]
 005477E2    dec         eax
 005477E3    test        eax,eax
>005477E5    jl          0054781D
 005477E7    mov         eax,dword ptr [edi+8]
 005477EA    mov         edx,dword ptr [eax]
 005477EC    call        dword ptr [edx+14]
 005477EF    mov         edx,dword ptr [ebx+8]
 005477F2    dec         edx
 005477F3    cmp         eax,edx
>005477F5    jle         0054781D
 005477F7    mov         edx,dword ptr [ebx+8]
 005477FA    dec         edx
 005477FB    mov         eax,edi
 005477FD    call        TListItem.GetSubItemImage
 00547802    mov         dword ptr [ebp-20],eax
 00547805    lea         eax,[ebp-20]
 00547808    push        eax
 00547809    mov         ecx,dword ptr [ebx+8]
 0054780C    dec         ecx
 0054780D    mov         edx,edi
 0054780F    mov         eax,dword ptr [ebp-8]
 00547812    call        00549B4C
 00547817    mov         eax,dword ptr [ebp-20]
 0054781A    mov         dword ptr [ebx+1C],eax
 0054781D    test        byte ptr [ebx],10
>00547820    je          00547BA3
 00547826    mov         eax,dword ptr [edi+10]
 00547829    mov         dword ptr [ebx+24],eax
>0054782C    jmp         00547BA3
 00547831    mov         ecx,dword ptr [esi+10]
 00547834    mov         edx,dword ptr [esi+0C]
 00547837    mov         eax,dword ptr [ebp-8]
 0054783A    mov         ebx,dword ptr [eax]
 0054783C    call        dword ptr [ebx+160];TCustomListView.sub_00546A38
>00547842    jmp         00547BA3
 00547847    mov         ebx,esi
 00547849    mov         eax,dword ptr [ebx+10]
 0054784C    call        00546C7C
 00547851    mov         byte ptr [ebp-0E],al
 00547854    xor         esi,esi
 00547856    lea         eax,[ebp-4]
 00547859    call        @UStrClr
 0054785E    xor         eax,eax
 00547860    mov         dword ptr [ebp-3C],eax
 00547863    xor         eax,eax
 00547865    mov         dword ptr [ebp-38],eax
 00547868    mov         eax,dword ptr [ebp-3C]
 0054786B    mov         dword ptr [ebp-18],eax
 0054786E    mov         eax,dword ptr [ebp-38]
 00547871    mov         dword ptr [ebp-14],eax
 00547874    mov         byte ptr [ebp-19],4
 00547878    movzx       eax,byte ptr [ebp-0E]
 0054787C    sub         al,1
>0054787E    jb          00547888
 00547880    sub         al,2
>00547882    jb          0054788D
>00547884    je          005478AA
>00547886    jmp         005478DF
 00547888    mov         esi,dword ptr [ebx+18]
>0054788B    jmp         005478DF
 0054788D    cmp         dword ptr [ebx+14],0
>00547891    je          005478A0
 00547893    lea         edx,[ebp-4]
 00547896    mov         eax,dword ptr [ebx+14]
 00547899    call        0041F490
>0054789E    jmp         005478DF
 005478A0    lea         eax,[ebp-4]
 005478A3    call        @UStrClr
>005478A8    jmp         005478DF
 005478AA    mov         eax,dword ptr [ebx+1C]
 005478AD    mov         dword ptr [ebp-18],eax
 005478B0    mov         eax,dword ptr [ebx+20]
 005478B3    mov         dword ptr [ebp-14],eax
 005478B6    mov         eax,dword ptr [ebx+24]
 005478B9    sub         eax,25
>005478BC    je          005478C9
 005478BE    dec         eax
>005478BF    je          005478CF
 005478C1    dec         eax
>005478C2    je          005478D5
 005478C4    dec         eax
>005478C5    je          005478DB
>005478C7    jmp         005478DF
 005478C9    mov         byte ptr [ebp-19],0
>005478CD    jmp         005478DF
 005478CF    mov         byte ptr [ebp-19],2
>005478D3    jmp         005478DF
 005478D5    mov         byte ptr [ebp-19],1
>005478D9    jmp         005478DF
 005478DB    mov         byte ptr [ebp-19],3
 005478DF    lea         eax,[ebp-18]
 005478E2    push        eax
 005478E3    push        esi
 005478E4    mov         eax,dword ptr [ebx+0C]
 005478E7    push        eax
 005478E8    movzx       eax,byte ptr [ebp-19]
 005478EC    push        eax
 005478ED    test        byte ptr [ebx+10],20
 005478F1    setne       al
 005478F4    push        eax
 005478F5    mov         eax,dword ptr [ebx+10]
 005478F8    call        00546C7C
 005478FD    mov         edx,eax
 005478FF    mov         ecx,dword ptr [ebp-4]
 00547902    mov         eax,dword ptr [ebp-8]
 00547905    mov         ebx,dword ptr [eax]
 00547907    call        dword ptr [ebx+15C];TCustomListView.sub_005469EC
 0054790D    mov         edx,dword ptr [ebp-0C]
 00547910    mov         dword ptr [edx+0C],eax
>00547913    jmp         00547BA3
 00547918    mov         eax,dword ptr [esi+14]
 0054791B    call        00546CA0
 00547920    push        eax
 00547921    mov         eax,dword ptr [esi+18]
 00547924    call        00546CA0
 00547929    push        eax
 0054792A    mov         ecx,dword ptr [esi+10]
 0054792D    mov         edx,dword ptr [esi+0C]
 00547930    mov         eax,dword ptr [ebp-8]
 00547933    mov         ebx,dword ptr [eax]
 00547935    call        dword ptr [ebx+164];TCustomListView.sub_00546A60
>0054793B    jmp         00547BA3
 00547940    lea         edx,[esi+0C]
 00547943    mov         eax,dword ptr [ebp-8]
 00547946    call        00546B2C
 0054794B    mov         edi,eax
 0054794D    mov         edx,edi
 0054794F    mov         eax,dword ptr [ebp-8]
 00547952    mov         si,0FFAC
 00547956    call        @CallDynaInst;TCustomListView.sub_00547FF0
 0054795B    test        al,al
>0054795D    jne         00547969
 0054795F    mov         eax,dword ptr [ebp-0C]
 00547962    mov         dword ptr [eax+0C],1
 00547969    mov         eax,dword ptr [ebp-0C]
 0054796C    cmp         dword ptr [eax+0C],0
>00547970    jne         00547BA3
 00547976    mov         eax,dword ptr [ebp-8]
 00547979    call        TWinControl.GetHandle
 0054797E    mov         ebx,eax
 00547980    push        0
 00547982    push        0
 00547984    push        1018
 00547989    push        ebx
 0054798A    call        user32.SendMessageW
 0054798F    mov         ecx,dword ptr [ebp-8]
 00547992    mov         edx,eax
 00547994    mov         dword ptr [ecx+2E8],edx;TCustomListView.FEditHandle:HWND
 0054799A    mov         eax,edx
 0054799C    push        0FC
 0054799E    push        eax
 0054799F    call        user32.GetWindowLongW
 005479A4    mov         edx,dword ptr [ebp-8]
 005479A7    mov         dword ptr [edx+2E0],eax;TCustomListView.FDefEditProc:Pointer
 005479AD    mov         eax,dword ptr [ebp-8]
 005479B0    mov         eax,dword ptr [eax+2E8];TCustomListView.FEditHandle:HWND
 005479B6    mov         edx,dword ptr [ebp-8]
 005479B9    mov         edx,dword ptr [edx+420];TCustomListView.FEditInstance:Pointer
 005479BF    push        edx
 005479C0    push        0FC
 005479C2    push        eax
 005479C3    call        user32.SetWindowLongW
>005479C8    jmp         00547BA3
 005479CD    cmp         dword ptr [esi+20],0
>005479D1    je          00547BA3
 005479D7    cmp         dword ptr [esi+10],0FFFFFFFF
>005479DB    je          00547BA3
 005479E1    lea         edx,[esi+0C]
 005479E4    mov         eax,dword ptr [ebp-8]
 005479E7    mov         si,0FFA7
 005479EB    call        @CallDynaInst;TCustomListView.sub_0054801C
>005479F0    jmp         00547BA3
 005479F5    mov         edx,dword ptr [esi+10]
 005479F8    mov         eax,dword ptr [ebp-8]
 005479FB    call        0054A0A8
 00547A00    mov         edx,eax
 00547A02    mov         eax,dword ptr [ebp-8]
 00547A05    mov         si,0FFAA
 00547A09    call        @CallDynaInst;TCustomListView.sub_00547D70
>00547A0E    jmp         00547BA3
 00547A13    mov         edx,dword ptr [esi+0C]
 00547A16    mov         eax,dword ptr [ebp-8]
 00547A19    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 00547A1F    call        TListItems.GetItem
 00547A24    mov         edx,eax
 00547A26    mov         eax,dword ptr [ebp-8]
 00547A29    mov         si,0FFA6
 00547A2D    call        @CallDynaInst;TCustomListView.sub_00547DC0
>00547A32    jmp         00547BA3
 00547A37    mov         ebx,esi
 00547A39    mov         edx,dword ptr [ebx+0C]
 00547A3C    mov         eax,dword ptr [ebp-8]
 00547A3F    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 00547A45    call        TListItems.GetItem
 00547A4A    mov         edx,eax
 00547A4C    mov         ecx,dword ptr [ebx+1C]
 00547A4F    mov         eax,dword ptr [ebp-8]
 00547A52    mov         si,0FFAD
 00547A56    call        @CallDynaInst;TCustomListView.sub_00547E50
 00547A5B    test        al,al
>00547A5D    jne         00547BA3
 00547A63    mov         eax,dword ptr [ebp-0C]
 00547A66    mov         dword ptr [eax+0C],1
>00547A6D    jmp         00547BA3
 00547A72    mov         ebx,esi
 00547A74    mov         eax,dword ptr [ebp-8]
 00547A77    cmp         byte ptr [eax+319],0;TCustomListView.FReading:Boolean
>00547A7E    jne         00547BA3
 00547A84    mov         edx,dword ptr [ebx+0C]
 00547A87    mov         eax,dword ptr [ebp-8]
 00547A8A    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 00547A90    call        TListItems.GetItem
 00547A95    mov         edi,eax
 00547A97    mov         ecx,dword ptr [ebx+1C]
 00547A9A    mov         edx,edi
 00547A9C    mov         eax,dword ptr [ebp-8]
 00547A9F    mov         si,0FFAB
 00547AA3    call        @CallDynaInst;TCustomListView.sub_00547F70
 00547AA8    cmp         dword ptr [ebx+1C],8
>00547AAC    jne         00547AE6
 00547AAE    test        byte ptr [ebx+18],2
>00547AB2    je          00547ACB
 00547AB4    test        byte ptr [ebx+14],2
>00547AB8    jne         00547ACB
 00547ABA    xor         ecx,ecx
 00547ABC    mov         edx,edi
 00547ABE    mov         eax,dword ptr [ebp-8]
 00547AC1    mov         esi,dword ptr [eax]
 00547AC3    call        dword ptr [esi+14C];TCustomListView.sub_00547BD4
>00547AC9    jmp         00547AE6
 00547ACB    test        byte ptr [ebx+18],2
>00547ACF    jne         00547AE6
 00547AD1    test        byte ptr [ebx+14],2
>00547AD5    je          00547AE6
 00547AD7    mov         cl,1
 00547AD9    mov         edx,edi
 00547ADB    mov         eax,dword ptr [ebp-8]
 00547ADE    mov         esi,dword ptr [eax]
 00547AE0    call        dword ptr [esi+14C];TCustomListView.sub_00547BD4
 00547AE6    mov         eax,dword ptr [ebp-8]
 00547AE9    mov         edx,dword ptr [eax]
 00547AEB    call        dword ptr [edx+5C];TButton.GetAction
 00547AEE    test        eax,eax
>00547AF0    je          00547B12
 00547AF2    mov         eax,dword ptr [ebp-8]
 00547AF5    test        byte ptr [eax+1C],10;TCustomListView.FComponentState:TComponentState
>00547AF9    jne         00547B12
 00547AFB    mov         eax,dword ptr [ebp-8]
 00547AFE    cmp         dword ptr [eax+78],0;TCustomListView.FActionLink:TControlActionLink
>00547B02    je          00547B12
 00547B04    mov         eax,dword ptr [ebp-8]
 00547B07    mov         eax,dword ptr [eax+78];TCustomListView.FActionLink:TControlActionLink
 00547B0A    mov         edx,dword ptr [ebp-8]
 00547B0D    mov         ecx,dword ptr [eax]
 00547B0F    call        dword ptr [ecx+18];TBasicActionLink.Execute
 00547B12    mov         eax,dword ptr [ebp-8]
 00547B15    cmp         word ptr [eax+40A],0;TCustomListView.?f40A:word
>00547B1D    je          00547BA3
 00547B23    cmp         dword ptr [ebx+1C],8
>00547B27    jne         00547BA3
 00547B29    mov         eax,dword ptr [ebx+18]
 00547B2C    and         eax,0F000
 00547B31    shr         eax,0C
 00547B34    mov         edx,dword ptr [ebx+14]
 00547B37    and         edx,0F000
 00547B3D    shr         edx,0C
 00547B40    cmp         eax,edx
>00547B42    je          00547BA3
 00547B44    mov         ebx,dword ptr [ebp-8]
 00547B47    mov         ecx,edi
 00547B49    mov         edx,dword ptr [ebp-8]
 00547B4C    mov         eax,dword ptr [ebx+40C];TCustomListView.?f40C:dword
 00547B52    call        dword ptr [ebx+408];TCustomListView.FOnItemChecked
>00547B58    jmp         00547BA3
 00547B5A    mov         eax,dword ptr [ebp-8]
 00547B5D    cmp         word ptr [eax+3F2],0;TCustomListView.?f3F2:word
>00547B65    je          00547BA3
 00547B67    lea         edx,[ebp-0F0]
 00547B6D    mov         eax,[007C4DA0];^gvar_007CA5D4
 00547B72    mov         eax,dword ptr [eax]
 00547B74    call        TMouse.GetCursorPos
 00547B79    lea         edx,[ebp-0F0]
 00547B7F    mov         eax,[007C4A18];^Application:TApplication
 00547B84    mov         eax,dword ptr [eax]
 00547B86    call        TApplication.ActivateHint
>00547B8B    jmp         00547BA3
 00547B8D    mov         eax,dword ptr [ebp-8]
 00547B90    mov         byte ptr [eax+2C0],1;TCustomListView.FClicked:Boolean
>00547B97    jmp         00547BA3
 00547B99    mov         eax,dword ptr [ebp-8]
 00547B9C    mov         byte ptr [eax+2C1],1;TCustomListView.FRClicked:Boolean
 00547BA3    xor         eax,eax
 00547BA5    pop         edx
 00547BA6    pop         ecx
 00547BA7    pop         ecx
 00547BA8    mov         dword ptr fs:[eax],edx
 00547BAB    push        547BCB
 00547BB0    lea         eax,[ebp-0E8]
 00547BB6    call        @UStrClr
 00547BBB    lea         eax,[ebp-4]
 00547BBE    call        @UStrClr
 00547BC3    ret
>00547BC4    jmp         @HandleFinally
>00547BC9    jmp         00547BB0
 00547BCB    pop         edi
 00547BCC    pop         esi
 00547BCD    pop         ebx
 00547BCE    mov         esp,ebp
 00547BD0    pop         ebp
 00547BD1    ret
end;*}

//00547BD4
{*procedure sub_00547BD4(?:?; ?:?);
begin
 00547BD4    push        ebp
 00547BD5    mov         ebp,esp
 00547BD7    add         esp,0FFFFFFF0
 00547BDA    push        ebx
 00547BDB    push        esi
 00547BDC    push        edi
 00547BDD    xor         ebx,ebx
 00547BDF    mov         dword ptr [ebp-10],ebx
 00547BE2    mov         dword ptr [ebp-0C],ebx
 00547BE5    mov         ebx,ecx
 00547BE7    mov         dword ptr [ebp-4],edx
 00547BEA    mov         esi,eax
 00547BEC    xor         eax,eax
 00547BEE    push        ebp
 00547BEF    push        547CCB
 00547BF4    push        dword ptr fs:[eax]
 00547BF7    mov         dword ptr fs:[eax],esp
 00547BFA    test        bl,bl
>00547BFC    je          00547C8E
 00547C02    mov         eax,esi
 00547C04    mov         edx,dword ptr [eax]
 00547C06    call        dword ptr [edx+24];TComponent.GetObservers
 00547C09    mov         edx,1
 00547C0E    mov         ecx,dword ptr [eax]
 00547C10    call        dword ptr [ecx+14];TObservers.IsObserving
 00547C13    test        al,al
>00547C15    je          00547C82
 00547C17    mov         eax,esi
 00547C19    mov         edx,dword ptr [eax]
 00547C1B    call        dword ptr [edx+24];TComponent.GetObservers
 00547C1E    mov         dword ptr [ebp-8],eax
 00547C21    lea         edx,[ebp-0C]
 00547C24    mov         eax,dword ptr [ebp-8]
 00547C27    call        TLinkObservers.GetEditLink
 00547C2C    mov         eax,dword ptr [ebp-0C]
 00547C2F    mov         edx,dword ptr [eax]
 00547C31    call        dword ptr [edx+44]
 00547C34    test        al,al
>00547C36    je          00547C8E
 00547C38    mov         eax,esi
 00547C3A    mov         edx,dword ptr [eax]
 00547C3C    call        dword ptr [edx+24];TComponent.GetObservers
 00547C3F    mov         edi,eax
 00547C41    lea         edx,[ebp-10]
 00547C44    mov         eax,edi
 00547C46    call        TLinkObservers.GetEditLink
 00547C4B    mov         eax,dword ptr [ebp-10]
 00547C4E    mov         edx,dword ptr [eax]
 00547C50    call        dword ptr [edx+2C]
 00547C53    mov         eax,esi
 00547C55    mov         edx,dword ptr [eax]
 00547C57    call        dword ptr [edx+24];TComponent.GetObservers
 00547C5A    call        TLinkObservers.EditLinkTrackUpdate
 00547C5F    mov         eax,esi
 00547C61    mov         edx,dword ptr [eax]
 00547C63    call        dword ptr [edx+24];TComponent.GetObservers
 00547C66    mov         edx,3
 00547C6B    mov         ecx,dword ptr [eax]
 00547C6D    call        dword ptr [ecx+14];TObservers.IsObserving
 00547C70    test        al,al
>00547C72    je          00547C8E
 00547C74    mov         eax,esi
 00547C76    mov         edx,dword ptr [eax]
 00547C78    call        dword ptr [edx+24];TComponent.GetObservers
 00547C7B    call        TLinkObservers.PositionLinkPosChanged
>00547C80    jmp         00547C8E
 00547C82    mov         eax,esi
 00547C84    mov         edx,dword ptr [eax]
 00547C86    call        dword ptr [edx+24];TComponent.GetObservers
 00547C89    call        004A1D04
 00547C8E    cmp         word ptr [esi+402],0;TCustomListView.?f402:word
>00547C96    je          00547CAA
 00547C98    push        ebx
 00547C99    mov         ecx,dword ptr [ebp-4]
 00547C9C    mov         edx,esi
 00547C9E    mov         eax,dword ptr [esi+404];TCustomListView.?f404:dword
 00547CA4    call        dword ptr [esi+400];TCustomListView.FOnSelectItem
 00547CAA    xor         eax,eax
 00547CAC    pop         edx
 00547CAD    pop         ecx
 00547CAE    pop         ecx
 00547CAF    mov         dword ptr fs:[eax],edx
 00547CB2    push        547CD2
 00547CB7    lea         eax,[ebp-10]
 00547CBA    mov         edx,dword ptr ds:[4782BC];IEditLinkObserver
 00547CC0    mov         ecx,2
 00547CC5    call        @FinalizeArray
 00547CCA    ret
>00547CCB    jmp         @HandleFinally
>00547CD0    jmp         00547CB7
 00547CD2    pop         edi
 00547CD3    pop         esi
 00547CD4    pop         ebx
 00547CD5    mov         esp,ebp
 00547CD7    pop         ebp
 00547CD8    ret
end;*}

//00547CDC
procedure TCustomListView.ChangeScale(M:Integer; D:Integer);
begin
{*
 00547CDC    push        ebx
 00547CDD    push        esi
 00547CDE    push        edi
 00547CDF    push        ebp
 00547CE0    push        ecx
 00547CE1    mov         dword ptr [esp],ecx
 00547CE4    mov         ebp,edx
 00547CE6    mov         esi,eax
 00547CE8    mov         eax,dword ptr [esi+2CC];TCustomListView.FListColumns:TListColumns
 00547CEE    mov         eax,dword ptr [eax+8];TListColumns.FItems:TList<System.Classes.TCollectionItem>
 00547CF1    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00547CF4    dec         edi
 00547CF5    test        edi,edi
>00547CF7    jl          00547D5D
 00547CF9    inc         edi
 00547CFA    xor         ebx,ebx
 00547CFC    mov         edx,ebx
 00547CFE    mov         eax,dword ptr [esi+2CC];TCustomListView.FListColumns:TListColumns
 00547D04    call        TListColumns.GetItem
 00547D09    call        TListColumn.GetWidth
 00547D0E    inc         eax
>00547D0F    je          00547D59
 00547D11    mov         edx,ebx
 00547D13    mov         eax,dword ptr [esi+2CC];TCustomListView.FListColumns:TListColumns
 00547D19    call        TListColumns.GetItem
 00547D1E    call        TListColumn.GetWidth
 00547D23    cmp         eax,0FFFFFFFE
>00547D26    je          00547D59
 00547D28    mov         eax,dword ptr [esp]
 00547D2B    push        eax
 00547D2C    push        ebp
 00547D2D    mov         edx,ebx
 00547D2F    mov         eax,dword ptr [esi+2CC];TCustomListView.FListColumns:TListColumns
 00547D35    call        TListColumns.GetItem
 00547D3A    call        TListColumn.GetWidth
 00547D3F    push        eax
 00547D40    call        kernel32.MulDiv
 00547D45    push        eax
 00547D46    mov         edx,ebx
 00547D48    mov         eax,dword ptr [esi+2CC];TCustomListView.FListColumns:TListColumns
 00547D4E    call        TListColumns.GetItem
 00547D53    pop         edx
 00547D54    call        TListColumn.SetWidth
 00547D59    inc         ebx
 00547D5A    dec         edi
>00547D5B    jne         00547CFC
 00547D5D    mov         ecx,dword ptr [esp]
 00547D60    mov         edx,ebp
 00547D62    mov         eax,esi
 00547D64    call        TWinControl.ChangeScale
 00547D69    pop         edx
 00547D6A    pop         ebp
 00547D6B    pop         edi
 00547D6C    pop         esi
 00547D6D    pop         ebx
 00547D6E    ret
*}
end;

//00547D70
{*procedure TCustomListView.sub_00547D70(?:?);
begin
 00547D70    push        ebx
 00547D71    cmp         word ptr [eax+36A],0;TCustomListView.?f36A:word
>00547D79    je          00547D8D
 00547D7B    mov         ebx,eax
 00547D7D    mov         ecx,edx
 00547D7F    mov         edx,eax
 00547D81    mov         eax,dword ptr [ebx+36C];TCustomListView.?f36C:dword
 00547D87    call        dword ptr [ebx+368];TCustomListView.FOnColumnClick
 00547D8D    pop         ebx
 00547D8E    ret
end;*}

//00547D90
{*procedure TCustomListView.sub_00547D90(?:?; ?:?);
begin
 00547D90    push        ebx
 00547D91    push        esi
 00547D92    push        edi
 00547D93    add         esp,0FFFFFFF8
 00547D96    mov         esi,ecx
 00547D98    lea         edi,[esp]
 00547D9B    movs        dword ptr [edi],dword ptr [esi]
 00547D9C    movs        dword ptr [edi],dword ptr [esi]
 00547D9D    cmp         word ptr [eax+37A],0;TCustomListView.?f37A:word
>00547DA5    je          00547DBA
 00547DA7    push        esp
 00547DA8    mov         ebx,eax
 00547DAA    mov         ecx,edx
 00547DAC    mov         edx,eax
 00547DAE    mov         eax,dword ptr [ebx+37C];TCustomListView.?f37C:dword
 00547DB4    call        dword ptr [ebx+378];TCustomListView.FOnColumnRightClick
 00547DBA    pop         ecx
 00547DBB    pop         edx
 00547DBC    pop         edi
 00547DBD    pop         esi
 00547DBE    pop         ebx
 00547DBF    ret
end;*}

//00547DC0
{*procedure TCustomListView.sub_00547DC0(?:?);
begin
 00547DC0    push        ebx
 00547DC1    cmp         byte ptr [eax+319],0;TCustomListView.FReading:Boolean
>00547DC8    jne         00547DE6
 00547DCA    cmp         word ptr [eax+3FA],0;TCustomListView.?f3FA:word
>00547DD2    je          00547DE6
 00547DD4    mov         ebx,eax
 00547DD6    mov         ecx,edx
 00547DD8    mov         edx,eax
 00547DDA    mov         eax,dword ptr [ebx+3FC];TCustomListView.?f3FC:dword
 00547DE0    call        dword ptr [ebx+3F8];TCustomListView.FOnInsert
 00547DE6    pop         ebx
 00547DE7    ret
end;*}

//00547DE8
procedure TCustomListView.AddItem(Item:string; AObject:TObject);
begin
{*
 00547DE8    push        ebp
 00547DE9    mov         ebp,esp
 00547DEB    push        ecx
 00547DEC    push        ebx
 00547DED    push        esi
 00547DEE    mov         esi,ecx
 00547DF0    mov         dword ptr [ebp-4],edx
 00547DF3    mov         ebx,eax
 00547DF5    mov         eax,dword ptr [ebp-4]
 00547DF8    call        @UStrAddRef
 00547DFD    xor         eax,eax
 00547DFF    push        ebp
 00547E00    push        547E41
 00547E05    push        dword ptr fs:[eax]
 00547E08    mov         dword ptr fs:[eax],esp
 00547E0B    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00547E11    call        TListItems.Add
 00547E16    mov         ebx,eax
 00547E18    mov         edx,dword ptr [ebp-4]
 00547E1B    mov         eax,ebx
 00547E1D    call        TListItem.SetCaption
 00547E22    mov         edx,esi
 00547E24    mov         eax,ebx
 00547E26    call        TListItem.SetData
 00547E2B    xor         eax,eax
 00547E2D    pop         edx
 00547E2E    pop         ecx
 00547E2F    pop         ecx
 00547E30    mov         dword ptr fs:[eax],edx
 00547E33    push        547E48
 00547E38    lea         eax,[ebp-4]
 00547E3B    call        @UStrClr
 00547E40    ret
>00547E41    jmp         @HandleFinally
>00547E46    jmp         00547E38
 00547E48    pop         esi
 00547E49    pop         ebx
 00547E4A    pop         ecx
 00547E4B    pop         ebp
 00547E4C    ret
*}
end;

//00547E50
{*procedure TCustomListView.sub_00547E50(?:?; ?:?);
begin
 00547E50    push        ebp
 00547E51    mov         ebp,esp
 00547E53    add         esp,0FFFFFFE8
 00547E56    push        ebx
 00547E57    push        esi
 00547E58    xor         ebx,ebx
 00547E5A    mov         dword ptr [ebp-18],ebx
 00547E5D    mov         dword ptr [ebp-14],ebx
 00547E60    mov         dword ptr [ebp-8],ecx
 00547E63    mov         dword ptr [ebp-4],edx
 00547E66    mov         esi,eax
 00547E68    xor         eax,eax
 00547E6A    push        ebp
 00547E6B    push        547F41
 00547E70    push        dword ptr fs:[eax]
 00547E73    mov         dword ptr fs:[eax],esp
 00547E76    mov         byte ptr [ebp-9],1
 00547E7A    mov         eax,dword ptr [ebp-8]
 00547E7D    dec         eax
>00547E7E    je          00547E8D
 00547E80    dec         eax
>00547E81    je          00547E91
 00547E83    sub         eax,6
>00547E86    je          00547E95
>00547E88    jmp         00547F20
 00547E8D    xor         ebx,ebx
>00547E8F    jmp         00547E97
 00547E91    mov         bl,1
>00547E93    jmp         00547E97
 00547E95    mov         bl,2
 00547E97    cmp         byte ptr [esi+319],0;TCustomListView.FReading:Boolean
>00547E9E    jne         00547EC0
 00547EA0    cmp         word ptr [esi+362],0;TCustomListView.?f362:word
>00547EA8    je          00547EC0
 00547EAA    push        ebx
 00547EAB    lea         eax,[ebp-9]
 00547EAE    push        eax
 00547EAF    mov         ecx,dword ptr [ebp-4]
 00547EB2    mov         edx,esi
 00547EB4    mov         eax,dword ptr [esi+364];TCustomListView.?f364:dword
 00547EBA    call        dword ptr [esi+360];TCustomListView.FOnChanging
 00547EC0    cmp         bl,2
>00547EC3    jne         00547F20
 00547EC5    mov         eax,esi
 00547EC7    mov         edx,dword ptr [eax]
 00547EC9    call        dword ptr [edx+24];TComponent.GetObservers
 00547ECC    mov         edx,1
 00547ED1    mov         ecx,dword ptr [eax]
 00547ED3    call        dword ptr [ecx+14];TObservers.IsObserving
 00547ED6    test        al,al
>00547ED8    je          00547F20
 00547EDA    mov         eax,esi
 00547EDC    mov         edx,dword ptr [eax]
 00547EDE    call        dword ptr [edx+24];TComponent.GetObservers
 00547EE1    lea         edx,[ebp-14]
 00547EE4    call        TLinkObservers.GetEditLink
 00547EE9    mov         eax,dword ptr [ebp-14]
 00547EEC    mov         edx,dword ptr [eax]
 00547EEE    call        dword ptr [edx+50]
 00547EF1    test        al,al
>00547EF3    je          00547EFB
 00547EF5    mov         byte ptr [ebp-9],1
>00547EF9    jmp         00547F20
 00547EFB    mov         eax,esi
 00547EFD    mov         edx,dword ptr [eax]
 00547EFF    call        dword ptr [edx+24];TComponent.GetObservers
 00547F02    mov         dword ptr [ebp-10],eax
 00547F05    lea         edx,[ebp-18]
 00547F08    mov         eax,dword ptr [ebp-10]
 00547F0B    call        TLinkObservers.GetEditLink
 00547F10    mov         eax,dword ptr [ebp-18]
 00547F13    mov         edx,dword ptr [eax]
 00547F15    call        dword ptr [edx+24]
 00547F18    test        al,al
>00547F1A    jne         00547F20
 00547F1C    mov         byte ptr [ebp-9],0
 00547F20    xor         eax,eax
 00547F22    pop         edx
 00547F23    pop         ecx
 00547F24    pop         ecx
 00547F25    mov         dword ptr fs:[eax],edx
 00547F28    push        547F48
 00547F2D    lea         eax,[ebp-18]
 00547F30    mov         edx,dword ptr ds:[4782BC];IEditLinkObserver
 00547F36    mov         ecx,2
 00547F3B    call        @FinalizeArray
 00547F40    ret
>00547F41    jmp         @HandleFinally
>00547F46    jmp         00547F2D
 00547F48    movzx       eax,byte ptr [ebp-9]
 00547F4C    pop         esi
 00547F4D    pop         ebx
 00547F4E    mov         esp,ebp
 00547F50    pop         ebp
 00547F51    ret
end;*}

//00547F54
{*function sub_00547F54:?;
begin
 00547F54    xor         eax,eax
 00547F56    cmp         edx,1
>00547F59    jne         00547F5E
 00547F5B    mov         al,1
 00547F5D    ret
 00547F5E    cmp         edx,3
>00547F61    jne         00547F67
 00547F63    mov         al,1
>00547F65    jmp         00547F6E
 00547F67    cmp         edx,4
>00547F6A    jne         00547F6E
 00547F6C    mov         al,1
 00547F6E    ret
end;*}

//00547F70
{*procedure TCustomListView.sub_00547F70(?:?; ?:?);
begin
 00547F70    push        ebx
 00547F71    dec         ecx
>00547F72    je          00547F7E
 00547F74    dec         ecx
>00547F75    je          00547F82
 00547F77    sub         ecx,6
>00547F7A    je          00547F86
>00547F7C    jmp         00547FAE
 00547F7E    xor         ecx,ecx
>00547F80    jmp         00547F88
 00547F82    mov         cl,1
>00547F84    jmp         00547F88
 00547F86    mov         cl,2
 00547F88    cmp         byte ptr [eax+319],0;TCustomListView.FReading:Boolean
>00547F8F    jne         00547FAE
 00547F91    cmp         word ptr [eax+35A],0;TCustomListView.?f35A:word
>00547F99    je          00547FAE
 00547F9B    push        ecx
 00547F9C    mov         ebx,eax
 00547F9E    mov         ecx,edx
 00547FA0    mov         edx,eax
 00547FA2    mov         eax,dword ptr [ebx+35C];TCustomListView.?f35C:dword
 00547FA8    call        dword ptr [ebx+358];TCustomListView.FOnChange
 00547FAE    pop         ebx
 00547FAF    ret
end;*}

//00547FB0
{*procedure TCustomListView.sub_00547FB0(?:?);
begin
 00547FB0    push        ebx
 00547FB1    push        esi
 00547FB2    mov         ebx,edx
 00547FB4    test        ebx,ebx
>00547FB6    je          00547FEB
 00547FB8    cmp         byte ptr [ebx+25],0
>00547FBC    jne         00547FEB
 00547FBE    test        byte ptr [eax+65],20;TCustomListView.FAlign:TAlign
>00547FC2    jne         00547FE0
 00547FC4    cmp         word ptr [eax+3C2],0;TCustomListView.?f3C2:word
>00547FCC    je          00547FE0
 00547FCE    mov         esi,eax
 00547FD0    mov         ecx,ebx
 00547FD2    mov         edx,eax
 00547FD4    mov         eax,dword ptr [esi+3C4];TCustomListView.?f3C4:dword
 00547FDA    call        dword ptr [esi+3C0];TCustomListView.FOnDeletion
 00547FE0    mov         byte ptr [ebx+25],1
 00547FE4    mov         eax,ebx
 00547FE6    call        TListItem.Delete
 00547FEB    pop         esi
 00547FEC    pop         ebx
 00547FED    ret
end;*}

//00547FF0
{*procedure TCustomListView.sub_00547FF0(?:?);
begin
 00547FF0    push        ebx
 00547FF1    push        ecx
 00547FF2    mov         byte ptr [esp],1
 00547FF6    cmp         word ptr [eax+3DA],0;TCustomListView.?f3DA:word
>00547FFE    je          00548013
 00548000    push        esp
 00548001    mov         ebx,eax
 00548003    mov         ecx,edx
 00548005    mov         edx,eax
 00548007    mov         eax,dword ptr [ebx+3DC];TCustomListView.?f3DC:dword
 0054800D    call        dword ptr [ebx+3D8];TCustomListView.FOnEditing
 00548013    movzx       eax,byte ptr [esp]
 00548017    pop         edx
 00548018    pop         ebx
 00548019    ret
end;*}

//0054801C
{*procedure TCustomListView.sub_0054801C(?:?);
begin
 0054801C    push        ebp
 0054801D    mov         ebp,esp
 0054801F    push        0
 00548021    push        ebx
 00548022    push        esi
 00548023    mov         esi,edx
 00548025    mov         ebx,eax
 00548027    xor         eax,eax
 00548029    push        ebp
 0054802A    push        54808D
 0054802F    push        dword ptr fs:[eax]
 00548032    mov         dword ptr fs:[eax],esp
 00548035    lea         eax,[ebp-4]
 00548038    mov         edx,dword ptr [esi+14]
 0054803B    call        @UStrFromPWChar
 00548040    mov         edx,esi
 00548042    mov         eax,ebx
 00548044    call        00546B2C
 00548049    mov         esi,eax
 0054804B    cmp         word ptr [ebx+3D2],0;TCustomListView.?f3D2:word
>00548053    je          00548069
 00548055    lea         eax,[ebp-4]
 00548058    push        eax
 00548059    mov         ecx,esi
 0054805B    mov         edx,ebx
 0054805D    mov         eax,dword ptr [ebx+3D4];TCustomListView.?f3D4:dword
 00548063    call        dword ptr [ebx+3D0];TCustomListView.FOnEdited
 00548069    test        esi,esi
>0054806B    je          00548077
 0054806D    mov         edx,dword ptr [ebp-4]
 00548070    mov         eax,esi
 00548072    call        TListItem.SetCaption
 00548077    xor         eax,eax
 00548079    pop         edx
 0054807A    pop         ecx
 0054807B    pop         ecx
 0054807C    mov         dword ptr fs:[eax],edx
 0054807F    push        548094
 00548084    lea         eax,[ebp-4]
 00548087    call        @UStrClr
 0054808C    ret
>0054808D    jmp         @HandleFinally
>00548092    jmp         00548084
 00548094    pop         esi
 00548095    pop         ebx
 00548096    pop         ecx
 00548097    pop         ebp
 00548098    ret
end;*}

//0054809C
function TCustomListView.GetDragImages:TDragImageList;
begin
{*
 0054809C    push        ebx
 0054809D    mov         ebx,eax
 0054809F    mov         eax,ebx
 005480A1    mov         edx,dword ptr [eax]
 005480A3    call        dword ptr [edx+130];TCustomListView.sub_00546C60
 005480A9    dec         eax
>005480AA    jne         005480B4
 005480AC    mov         eax,dword ptr [ebx+2B4];TCustomListView.FDragImage:TDragImageList
 005480B2    pop         ebx
 005480B3    ret
 005480B4    xor         eax,eax
 005480B6    pop         ebx
 005480B7    ret
*}
end;

//005480B8
{*procedure sub_005480B8(?:?);
begin
 005480B8    push        ebx
 005480B9    push        esi
 005480BA    push        edi
 005480BB    mov         esi,edx
 005480BD    mov         ebx,eax
 005480BF    test        byte ptr [ebx+1C],10;TCustomListView.FComponentState:TComponentState
>005480C3    jne         0054810D
 005480C5    mov         edi,dword ptr [esi]
 005480C7    cmp         edi,201
>005480CD    je          005480D7
 005480CF    cmp         edi,203
>005480D5    jne         0054810D
 005480D7    mov         eax,ebx
 005480D9    call        TControl.Dragging
 005480DE    test        al,al
>005480E0    jne         0054810D
 005480E2    mov         eax,ebx
 005480E4    call        TGroupBox.GetDragMode
 005480E9    cmp         al,1
>005480EB    jne         0054810D
 005480ED    mov         edx,esi
 005480EF    mov         eax,ebx
 005480F1    call        TWinControl.IsControlMouseMsg
 005480F6    test        al,al
>005480F8    jne         0054815C
 005480FA    mov         eax,[00548160];0x1 gvar_00548160
 005480FF    or          dword ptr [ebx+64],eax;TCustomListView.FControlState:TControlState
 00548102    mov         edx,esi
 00548104    mov         eax,ebx
 00548106    mov         ecx,dword ptr [eax]
 00548108    call        dword ptr [ecx-14];TObject.Dispatch
>0054810B    jmp         0054815C
 0054810D    cmp         dword ptr [esi],0B051
>00548113    jne         00548124
 00548115    test        byte ptr [ebx+1C],1;TCustomListView.FComponentState:TComponentState
>00548119    jne         00548124
 0054811B    mov         eax,ebx
 0054811D    call        TWinControl.RecreateWnd
>00548122    jmp         0054815C
 00548124    cmp         dword ptr [esi],0B024
>0054812A    jne         0054813B
 0054812C    test        byte ptr [ebx+1C],1;TCustomListView.FComponentState:TComponentState
>00548130    jne         0054813B
 00548132    mov         eax,ebx
 00548134    call        TWinControl.RecreateWnd
>00548139    jmp         0054815C
 0054813B    mov         eax,dword ptr [esi]
 0054813D    cmp         eax,0F
>00548140    je          00548147
 00548142    cmp         eax,14
>00548145    jne         00548153
 00548147    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 0054814D    cmp         byte ptr [eax+0C],0;TListItems.FNoRedraw:Boolean
>00548151    jne         0054815C
 00548153    mov         edx,esi
 00548155    mov         eax,ebx
 00548157    call        004ECAFC
 0054815C    pop         edi
 0054815D    pop         esi
 0054815E    pop         ebx
 0054815F    ret
end;*}

//00548164
{*procedure sub_00548164(?:?; ?:?);
begin
 00548164    push        ebx
 00548165    push        esi
 00548166    push        edi
 00548167    push        ebp
 00548168    push        ecx
 00548169    mov         ebx,edx
 0054816B    mov         esi,eax
 0054816D    cmp         word ptr [ebx],104
>00548172    jne         005481DB
 00548174    mov         byte ptr [ecx],1
 00548177    test        byte ptr [ebx+0C],1
>0054817B    je          00548191
 0054817D    mov         eax,dword ptr [ebx+4]
 00548180    mov         dword ptr [esi+338],eax;TCustomListView.FPanPoint:TPoint
 00548186    mov         eax,dword ptr [ebx+8]
 00548189    mov         dword ptr [esi+33C],eax
>0054818F    jmp         005481DB
 00548191    test        byte ptr [ebx+0C],4
>00548195    jne         005481DB
 00548197    mov         eax,esi
 00548199    call        TWinControl.GetHandle
 0054819E    mov         edi,eax
 005481A0    mov         ebp,dword ptr [ebx+4]
 005481A3    sub         ebp,dword ptr [esi+338]
 005481A9    neg         ebp
 005481AB    mov         eax,dword ptr [ebx+8]
 005481AE    sub         eax,dword ptr [esi+33C]
 005481B4    neg         eax
 005481B6    mov         dword ptr [esp],eax
 005481B9    mov         eax,dword ptr [esp]
 005481BC    push        eax
 005481BD    push        ebp
 005481BE    push        1014
 005481C3    push        edi
 005481C4    call        user32.SendMessageW
 005481C9    mov         eax,dword ptr [ebx+4]
 005481CC    mov         dword ptr [esi+338],eax;TCustomListView.FPanPoint:TPoint
 005481D2    mov         eax,dword ptr [ebx+8]
 005481D5    mov         dword ptr [esi+33C],eax
 005481DB    pop         edx
 005481DC    pop         ebp
 005481DD    pop         edi
 005481DE    pop         esi
 005481DF    pop         ebx
 005481E0    ret
end;*}

//005481E4
{*procedure TCustomListView.sub_004E7840(?:?);
begin
 005481E4    push        ebx
 005481E5    push        esi
 005481E6    push        edi
 005481E7    push        ebp
 005481E8    add         esp,0FFFFFFD8
 005481EB    mov         ebx,eax
 005481ED    mov         eax,ebx
 005481EF    call        TControl.sub_004E7840
 005481F4    xor         eax,eax
 005481F6    mov         dword ptr [ebx+2F8],eax;TCustomListView.FLastDropTarget:TListItem
 005481FC    push        esp
 005481FD    call        user32.GetCursorPos
 00548202    lea         ecx,[esp+20]
 00548206    mov         edx,esp
 00548208    mov         eax,ebx
 0054820A    call        TControl.ScreenToClient
 0054820F    mov         eax,dword ptr [esp+20]
 00548213    mov         dword ptr [esp],eax
 00548216    mov         eax,dword ptr [esp+24]
 0054821A    mov         dword ptr [esp+4],eax
 0054821E    mov         eax,dword ptr [ebx+2F4];TCustomListView.FDragIndex:Integer
 00548224    cmp         eax,0FFFFFFFF
>00548227    je          0054823A
 00548229    mov         edx,eax
 0054822B    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00548231    call        TListItems.GetItem
 00548236    mov         esi,eax
>00548238    jmp         0054823C
 0054823A    xor         esi,esi
 0054823C    mov         dword ptr [ebx+2F4],0FFFFFFFF;TCustomListView.FDragIndex:Integer
 00548246    test        esi,esi
>00548248    jne         0054825A
 0054824A    mov         ecx,dword ptr [esp+4]
 0054824E    mov         edx,dword ptr [esp]
 00548251    mov         eax,ebx
 00548253    call        TCustomListView.GetItemAt
 00548258    mov         esi,eax
 0054825A    test        esi,esi
>0054825C    je          005482BB
 0054825E    mov         eax,ebx
 00548260    call        TWinControl.GetHandle
 00548265    mov         edi,eax
 00548267    mov         eax,esi
 00548269    call        TListItem.GetIndex
 0054826E    mov         ebp,eax
 00548270    lea         eax,[esp+8]
 00548274    push        eax
 00548275    push        ebp
 00548276    push        1021
 0054827B    push        edi
 0054827C    call        user32.SendMessageW
 00548281    test        eax,eax
>00548283    je          005482BB
 00548285    mov         ebx,dword ptr [ebx+2B4];TCustomListView.FDragImage:TDragImageList
 0054828B    mov         edx,eax
 0054828D    mov         eax,ebx
 0054828F    call        005A8660
 00548294    lea         ecx,[esp+10]
 00548298    xor         edx,edx
 0054829A    mov         eax,esi
 0054829C    call        TListItem.DisplayRect
 005482A1    mov         eax,dword ptr [esp+4]
 005482A5    sub         eax,dword ptr [esp+14]
 005482A9    push        eax
 005482AA    mov         ecx,dword ptr [esp+4]
 005482AE    sub         ecx,dword ptr [esp+14]
 005482B2    xor         edx,edx
 005482B4    mov         eax,ebx
 005482B6    call        TDragImageList.SetDragImage
 005482BB    add         esp,28
 005482BE    pop         ebp
 005482BF    pop         edi
 005482C0    pop         esi
 005482C1    pop         ebx
 005482C2    ret
end;*}

//005482C4
{*procedure TCustomListView.sub_004E7880(?:?; ?:?);
begin
 005482C4    push        ebp
 005482C5    mov         ebp,esp
 005482C7    push        ebx
 005482C8    mov         ebx,eax
 005482CA    mov         eax,dword ptr [ebp+8]
 005482CD    push        eax
 005482CE    mov         eax,ebx
 005482D0    call        TControl.sub_004E7880
 005482D5    mov         eax,dword ptr [ebx+2B4];TCustomListView.FDragImage:TDragImageList
 005482DB    call        TDragImageList.EndDrag
 005482E0    xor         eax,eax
 005482E2    mov         dword ptr [ebx+2F8],eax;TCustomListView.FLastDropTarget:TListItem
 005482E8    pop         ebx
 005482E9    pop         ebp
 005482EA    ret         4
end;*}

//005482F0
procedure TCustomListView.CMDrag(Message:TCMDrag);
begin
{*
 005482F0    push        ebx
 005482F1    push        esi
 005482F2    push        edi
 005482F3    add         esp,0FFFFFFF0
 005482F6    mov         ebx,edx
 005482F8    mov         esi,eax
 005482FA    mov         edx,ebx
 005482FC    mov         eax,esi
 005482FE    call        TWinControl.CMDrag
 00548303    mov         edi,dword ptr [ebx+8]
 00548306    movzx       eax,byte ptr [ebx+4]
 0054830A    dec         al
>0054830C    je          00548346
 0054830E    dec         al
>00548310    je          0054831B
 00548312    dec         al
>00548314    je          0054837B
>00548316    jmp         0054841D
 0054831B    mov         ecx,esp
 0054831D    mov         edx,edi
 0054831F    mov         eax,esi
 00548321    call        TControl.ScreenToClient
 00548326    mov         eax,dword ptr [esp+4]
 0054832A    push        eax
 0054832B    cmp         dword ptr [ebx+0C],0
 0054832F    setne       al
 00548332    push        eax
 00548333    mov         edx,dword ptr [edi+8]
 00548336    mov         ecx,dword ptr [esp+8]
 0054833A    mov         eax,esi
 0054833C    call        005484FC
>00548341    jmp         0054841D
 00548346    mov         eax,dword ptr [edi+8]
 00548349    mov         edx,dword ptr [eax]
 0054834B    call        dword ptr [edx+18]
 0054834E    mov         eax,esi
 00548350    call        00548A44
 00548355    mov         dword ptr [esi+2F8],eax;TCustomListView.FLastDropTarget:TListItem
 0054835B    xor         edx,edx
 0054835D    mov         eax,esi
 0054835F    call        00548A6C
 00548364    mov         eax,esi
 00548366    mov         edx,dword ptr [eax]
 00548368    call        dword ptr [edx+0B4];TWinControl.Update
 0054836E    mov         eax,dword ptr [edi+8]
 00548371    mov         edx,dword ptr [eax]
 00548373    call        dword ptr [edx+20]
>00548376    jmp         0054841D
 0054837B    xor         eax,eax
 0054837D    mov         dword ptr [esi+2F8],eax;TCustomListView.FLastDropTarget:TListItem
 00548383    cmp         byte ptr [esi+2D4],0;TCustomListView.FOwnerData:Boolean
>0054838A    je          0054841D
 00548390    movzx       eax,byte ptr [esi+29D];TCustomListView.FViewStyle:TViewStyle
 00548397    sub         al,2
>00548399    jae         005483B8
 0054839B    xor         eax,eax
 0054839D    mov         dword ptr [esp+8],eax
 005483A1    xor         eax,eax
 005483A3    mov         dword ptr [esp+0C],eax
 005483A7    mov         cl,4
 005483A9    lea         edx,[esp+8]
 005483AD    mov         eax,esi
 005483AF    call        TCustomListView.GetNearestItem
 005483B4    mov         ebx,eax
>005483B6    jmp         005483C1
 005483B8    mov         eax,esi
 005483BA    call        0054866C
 005483BF    mov         ebx,eax
 005483C1    test        ebx,ebx
>005483C3    je          0054841D
 005483C5    mov         eax,ebx
 005483C7    call        TListItem.GetIndex
 005483CC    push        eax
 005483CD    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 005483D3    call        TListItems.GetCount
 005483D8    mov         edi,eax
 005483DA    dec         edi
 005483DB    pop         eax
 005483DC    sub         edi,eax
>005483DE    jl          0054841D
 005483E0    inc         edi
 005483E1    mov         ebx,eax
 005483E3    mov         edx,ebx
 005483E5    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 005483EB    call        TListItems.GetItem
 005483F0    mov         edx,1
 005483F5    call        005438B4
 005483FA    test        al,al
>005483FC    je          00548419
 005483FE    mov         edx,ebx
 00548400    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 00548406    call        TListItems.GetItem
 0054840B    xor         ecx,ecx
 0054840D    mov         edx,1
 00548412    call        TListItem.SetState
>00548417    jmp         0054841D
 00548419    inc         ebx
 0054841A    dec         edi
>0054841B    jne         005483E3
 0054841D    add         esp,10
 00548420    pop         edi
 00548421    pop         esi
 00548422    pop         ebx
 00548423    ret
*}
end;

//00548424
{*procedure TCustomListView.CMExit(?:?);
begin
 00548424    push        ebp
 00548425    mov         ebp,esp
 00548427    add         esp,0FFFFFFF4
 0054842A    push        ebx
 0054842B    push        esi
 0054842C    push        edi
 0054842D    xor         ecx,ecx
 0054842F    mov         dword ptr [ebp-0C],ecx
 00548432    mov         ebx,edx
 00548434    mov         dword ptr [ebp-4],eax
 00548437    xor         eax,eax
 00548439    push        ebp
 0054843A    push        5484EE
 0054843F    push        dword ptr fs:[eax]
 00548442    mov         dword ptr fs:[eax],esp
 00548445    xor         eax,eax
 00548447    push        ebp
 00548448    push        5484B4
 0054844D    push        dword ptr fs:[eax]
 00548450    mov         dword ptr fs:[eax],esp
 00548453    mov         eax,dword ptr [ebp-4]
 00548456    mov         edx,dword ptr [eax]
 00548458    call        dword ptr [edx+24];TComponent.GetObservers
 0054845B    mov         edx,1
 00548460    mov         ecx,dword ptr [eax]
 00548462    call        dword ptr [ecx+14];TObservers.IsObserving
 00548465    test        al,al
>00548467    je          00548487
 00548469    mov         eax,dword ptr [ebp-4]
 0054846C    mov         edx,dword ptr [eax]
 0054846E    call        dword ptr [edx+24];TComponent.GetObservers
 00548471    mov         dword ptr [ebp-8],eax
 00548474    lea         edx,[ebp-0C]
 00548477    mov         eax,dword ptr [ebp-8]
 0054847A    call        TLinkObservers.GetEditLink
 0054847F    mov         eax,dword ptr [ebp-0C]
 00548482    mov         edx,dword ptr [eax]
 00548484    call        dword ptr [edx+20]
 00548487    mov         eax,dword ptr [ebp-4]
 0054848A    mov         edx,dword ptr [eax]
 0054848C    call        dword ptr [edx+24];TComponent.GetObservers
 0054848F    mov         edx,4
 00548494    mov         ecx,dword ptr [eax]
 00548496    call        dword ptr [ecx+14];TObservers.IsObserving
 00548499    test        al,al
>0054849B    je          005484AA
 0054849D    mov         eax,dword ptr [ebp-4]
 005484A0    mov         edx,dword ptr [eax]
 005484A2    call        dword ptr [edx+24];TComponent.GetObservers
 005484A5    call        TLinkObservers.ControlValueUpdate
 005484AA    xor         eax,eax
 005484AC    pop         edx
 005484AD    pop         ecx
 005484AE    pop         ecx
 005484AF    mov         dword ptr fs:[eax],edx
>005484B2    jmp         005484CE
>005484B4    jmp         @HandleAnyException
 005484B9    mov         eax,dword ptr [ebp-4]
 005484BC    mov         edx,dword ptr [eax]
 005484BE    call        dword ptr [edx+104];TWinControl.SetFocus
 005484C4    call        @RaiseAgain
 005484C9    call        @DoneExcept
 005484CE    mov         edx,ebx
 005484D0    mov         eax,dword ptr [ebp-4]
 005484D3    call        TWinControl.CMExit
 005484D8    xor         eax,eax
 005484DA    pop         edx
 005484DB    pop         ecx
 005484DC    pop         ecx
 005484DD    mov         dword ptr fs:[eax],edx
 005484E0    push        5484F5
 005484E5    lea         eax,[ebp-0C]
 005484E8    call        @IntfClear
 005484ED    ret
>005484EE    jmp         @HandleFinally
>005484F3    jmp         005484E5
 005484F5    pop         edi
 005484F6    pop         esi
 005484F7    pop         ebx
 005484F8    mov         esp,ebp
 005484FA    pop         ebp
 005484FB    ret
end;*}

//005484FC
{*procedure sub_005484FC(?:TCustomListView; ?:?; ?:?; ?:?; ?:?);
begin
 005484FC    push        ebp
 005484FD    mov         ebp,esp
 005484FF    push        ecx
 00548500    push        ebx
 00548501    push        esi
 00548502    push        edi
 00548503    mov         dword ptr [ebp-4],edx
 00548506    mov         esi,eax
 00548508    mov         edx,ecx
 0054850A    mov         eax,esi
 0054850C    mov         ecx,dword ptr [ebp+0C]
 0054850F    call        TCustomListView.GetItemAt
 00548514    mov         ebx,eax
 00548516    test        ebx,ebx
>00548518    je          0054857D
 0054851A    mov         eax,esi
 0054851C    call        00548A44
 00548521    mov         edi,eax
 00548523    cmp         edi,ebx
>00548525    jne         0054852F
 00548527    cmp         ebx,dword ptr [esi+2F8];TCustomListView.FLastDropTarget:TListItem
>0054852D    jne         0054857D
 0054852F    xor         eax,eax
 00548531    mov         dword ptr [esi+2F8],eax;TCustomListView.FLastDropTarget:TListItem
 00548537    mov         eax,dword ptr [ebp-4]
 0054853A    mov         edx,dword ptr [eax]
 0054853C    call        dword ptr [edx+18]
 0054853F    mov         eax,esi
 00548541    mov         edx,dword ptr [eax]
 00548543    call        dword ptr [edx+0B4];TWinControl.Update
 00548549    test        edi,edi
>0054854B    je          0054855B
 0054854D    xor         ecx,ecx
 0054854F    mov         edx,1
 00548554    mov         eax,edi
 00548556    call        TListItem.SetState
 0054855B    movzx       ecx,byte ptr [ebp+8]
 0054855F    mov         edx,1
 00548564    mov         eax,ebx
 00548566    call        TListItem.SetState
 0054856B    mov         eax,esi
 0054856D    mov         edx,dword ptr [eax]
 0054856F    call        dword ptr [edx+0B4];TWinControl.Update
 00548575    mov         eax,dword ptr [ebp-4]
 00548578    mov         edx,dword ptr [eax]
 0054857A    call        dword ptr [edx+20]
 0054857D    pop         edi
 0054857E    pop         esi
 0054857F    pop         ebx
 00548580    pop         ecx
 00548581    pop         ebp
 00548582    ret         8
end;*}

//00548588
procedure TListView.SetItems(Value:TListItems);
begin
{*
 00548588    mov         eax,dword ptr [eax+2BC];TListView.FListItems:TListItems
 0054858E    mov         ecx,dword ptr [eax]
 00548590    call        dword ptr [ecx+8];TListItems.Assign
 00548593    ret
*}
end;

//00548594
procedure TListView.SetColumns(Value:TListColumns);
begin
{*
 00548594    mov         eax,dword ptr [eax+2CC];TListView.FListColumns:TListColumns
 0054859A    mov         ecx,dword ptr [eax]
 0054859C    call        dword ptr [ecx+8];TCollection.Assign
 0054859F    ret
*}
end;

//005485A0
procedure TListView.SetGroups(Value:TListGroups);
begin
{*
 005485A0    mov         eax,dword ptr [eax+418];TListView.FListGroups:TListGroups
 005485A6    mov         ecx,dword ptr [eax]
 005485A8    call        dword ptr [ecx+8];TCollection.Assign
 005485AB    ret
*}
end;

//005485AC
function TCustomListView.AlphaSort:Boolean;
begin
{*
 005485AC    push        ebx
 005485AD    mov         ebx,eax
 005485AF    mov         eax,ebx
 005485B1    call        TWinControl.HandleAllocated
 005485B6    test        al,al
>005485B8    je          005485DE
 005485BA    mov         eax,ebx
 005485BC    call        TWinControl.GetHandle
 005485C1    mov         ebx,eax
 005485C3    mov         eax,544FCC;sub_00544FCC
 005485C8    push        eax
 005485C9    push        0
 005485CB    push        1030
 005485D0    push        ebx
 005485D1    call        user32.SendMessageW
 005485D6    cmp         eax,1
 005485D9    sbb         eax,eax
 005485DB    inc         eax
 005485DC    pop         ebx
 005485DD    ret
 005485DE    xor         eax,eax
 005485E0    pop         ebx
 005485E1    ret
*}
end;

//005485E4
procedure TListView.SetSortType(Value:TSortType);
begin
{*
 005485E4    cmp         dl,byte ptr [eax+2B9];TListView.FSortType:TSortType
>005485EA    je          0054861C
 005485EC    mov         byte ptr [eax+2B9],dl;TListView.FSortType:TSortType
 005485F2    movzx       edx,byte ptr [eax+2B9];TListView.FSortType:TSortType
 005485F9    mov         ecx,edx
 005485FB    sub         cl,1
>005485FE    je          00548605
 00548600    sub         cl,2
>00548603    jne         0054860F
 00548605    cmp         word ptr [eax+382],0;TListView.?f382:word
>0054860D    jne         00548617
 0054860F    add         dl,0FE
 00548612    sub         dl,2
>00548615    jae         0054861C
 00548617    call        TCustomListView.AlphaSort
 0054861C    ret
*}
end;

//0054864C
{*procedure sub_0054864C(?:?; ?:?);
begin
 0054864C    push        ebx
 0054864D    push        ecx
 0054864E    mov         dword ptr [esp],edx
 00548651    call        TWinControl.GetHandle
 00548656    mov         ebx,eax
 00548658    mov         eax,dword ptr [esp]
 0054865B    push        eax
 0054865C    push        0
 0054865E    push        1029
 00548663    push        ebx
 00548664    call        user32.SendMessageW
 00548669    pop         edx
 0054866A    pop         ebx
 0054866B    ret
end;*}

//0054866C
{*function sub_0054866C(?:TCustomListView):?;
begin
 0054866C    push        ebx
 0054866D    push        esi
 0054866E    push        edi
 0054866F    mov         ebx,eax
 00548671    xor         esi,esi
 00548673    movzx       eax,byte ptr [ebx+29D];TCustomListView.FViewStyle:TViewStyle
 0054867A    sub         al,2
>0054867C    jb          005486AA
 0054867E    mov         eax,ebx
 00548680    call        TWinControl.GetHandle
 00548685    mov         edi,eax
 00548687    push        0
 00548689    push        0
 0054868B    push        1027
 00548690    push        edi
 00548691    call        user32.SendMessageW
 00548696    cmp         eax,0FFFFFFFF
>00548699    je          005486AA
 0054869B    mov         edx,eax
 0054869D    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 005486A3    call        TListItems.GetItem
 005486A8    mov         esi,eax
 005486AA    mov         eax,esi
 005486AC    pop         edi
 005486AD    pop         esi
 005486AE    pop         ebx
 005486AF    ret
end;*}

//005486D0
procedure TListView.SetGroupHeaderImages(Value:TCustomImageList);
begin
{*
 005486D0    push        ebx
 005486D1    push        esi
 005486D2    mov         ebx,edx
 005486D4    mov         esi,eax
 005486D6    mov         eax,dword ptr [esi+2B0];TListView.FGroupHeaderImages:TCustomImageList
 005486DC    cmp         ebx,eax
>005486DE    je          00548746
 005486E0    test        eax,eax
>005486E2    je          005486EF
 005486E4    mov         edx,dword ptr [esi+310];TListView.FHeaderChangeLink:TChangeLink
 005486EA    call        TCustomImageList.UnRegisterChanges
 005486EF    mov         eax,ebx
 005486F1    mov         dword ptr [esi+2B0],eax;TListView.FGroupHeaderImages:TCustomImageList
 005486F7    test        eax,eax
>005486F9    je          0054872E
 005486FB    mov         edx,dword ptr [esi+310];TListView.FHeaderChangeLink:TChangeLink
 00548701    call        TCustomImageList.RegisterChanges
 00548706    mov         edx,esi
 00548708    mov         eax,dword ptr [esi+2B0];TListView.FGroupHeaderImages:TCustomImageList
 0054870E    call        TComponent.FreeNotification
 00548713    mov         eax,dword ptr [esi+2B0];TListView.FGroupHeaderImages:TCustomImageList
 00548719    call        TCustomImageList.GetHandle
 0054871E    mov         edx,eax
 00548720    mov         ecx,3
 00548725    mov         eax,esi
 00548727    call        00545990
>0054872C    jmp         0054873C
 0054872E    mov         ecx,3
 00548733    xor         edx,edx
 00548735    mov         eax,esi
 00548737    call        00545990
 0054873C    mov         eax,esi
 0054873E    mov         edx,dword ptr [eax]
 00548740    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00548746    pop         esi
 00548747    pop         ebx
 00548748    ret
*}
end;

//0054874C
procedure TListView.SetLargeImages(Value:TCustomImageList);
begin
{*
 0054874C    push        ebx
 0054874D    push        esi
 0054874E    mov         ebx,edx
 00548750    mov         esi,eax
 00548752    mov         eax,dword ptr [esi+2A0];TListView.FLargeImages:TCustomImageList
 00548758    cmp         ebx,eax
>0054875A    je          005487BC
 0054875C    test        eax,eax
>0054875E    je          0054876B
 00548760    mov         edx,dword ptr [esi+308];TListView.FLargeChangeLink:TChangeLink
 00548766    call        TCustomImageList.UnRegisterChanges
 0054876B    mov         eax,ebx
 0054876D    mov         dword ptr [esi+2A0],eax;TListView.FLargeImages:TCustomImageList
 00548773    test        eax,eax
>00548775    je          005487A7
 00548777    mov         edx,dword ptr [esi+308];TListView.FLargeChangeLink:TChangeLink
 0054877D    call        TCustomImageList.RegisterChanges
 00548782    mov         edx,esi
 00548784    mov         eax,dword ptr [esi+2A0];TListView.FLargeImages:TCustomImageList
 0054878A    call        TComponent.FreeNotification
 0054878F    mov         eax,dword ptr [esi+2A0];TListView.FLargeImages:TCustomImageList
 00548795    call        TCustomImageList.GetHandle
 0054879A    mov         edx,eax
 0054879C    xor         ecx,ecx
 0054879E    mov         eax,esi
 005487A0    call        00545990
>005487A5    jmp         005487B2
 005487A7    xor         ecx,ecx
 005487A9    xor         edx,edx
 005487AB    mov         eax,esi
 005487AD    call        00545990
 005487B2    mov         eax,esi
 005487B4    mov         edx,dword ptr [eax]
 005487B6    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005487BC    pop         esi
 005487BD    pop         ebx
 005487BE    ret
*}
end;

//005487C0
procedure TListView.SetSmallImages(Value:TCustomImageList);
begin
{*
 005487C0    push        ebx
 005487C1    push        esi
 005487C2    mov         ebx,edx
 005487C4    mov         esi,eax
 005487C6    mov         eax,dword ptr [esi+2A8];TListView.FSmallImages:TCustomImageList
 005487CC    cmp         ebx,eax
>005487CE    je          00548836
 005487D0    test        eax,eax
>005487D2    je          005487DF
 005487D4    mov         edx,dword ptr [esi+30C];TListView.FSmallChangeLink:TChangeLink
 005487DA    call        TCustomImageList.UnRegisterChanges
 005487DF    mov         eax,ebx
 005487E1    mov         dword ptr [esi+2A8],eax;TListView.FSmallImages:TCustomImageList
 005487E7    test        eax,eax
>005487E9    je          0054881E
 005487EB    mov         edx,dword ptr [esi+30C];TListView.FSmallChangeLink:TChangeLink
 005487F1    call        TCustomImageList.RegisterChanges
 005487F6    mov         edx,esi
 005487F8    mov         eax,dword ptr [esi+2A8];TListView.FSmallImages:TCustomImageList
 005487FE    call        TComponent.FreeNotification
 00548803    mov         eax,dword ptr [esi+2A8];TListView.FSmallImages:TCustomImageList
 00548809    call        TCustomImageList.GetHandle
 0054880E    mov         edx,eax
 00548810    mov         ecx,1
 00548815    mov         eax,esi
 00548817    call        00545990
>0054881C    jmp         0054882C
 0054881E    mov         ecx,1
 00548823    xor         edx,edx
 00548825    mov         eax,esi
 00548827    call        00545990
 0054882C    mov         eax,esi
 0054882E    mov         edx,dword ptr [eax]
 00548830    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00548836    pop         esi
 00548837    pop         ebx
 00548838    ret
*}
end;

//0054883C
procedure TListView.SetStateImages(Value:TCustomImageList);
begin
{*
 0054883C    push        ebx
 0054883D    push        esi
 0054883E    mov         ebx,edx
 00548840    mov         esi,eax
 00548842    mov         eax,dword ptr [esi+2AC];TListView.FStateImages:TCustomImageList
 00548848    cmp         ebx,eax
>0054884A    je          005488E0
 00548850    test        eax,eax
>00548852    je          0054885F
 00548854    mov         edx,dword ptr [esi+314];TListView.FStateChangeLink:TChangeLink
 0054885A    call        TCustomImageList.UnRegisterChanges
 0054885F    mov         eax,ebx
 00548861    mov         dword ptr [esi+2AC],eax;TListView.FStateImages:TCustomImageList
 00548867    test        eax,eax
>00548869    je          005488AD
 0054886B    xor         edx,edx
 0054886D    mov         eax,esi
 0054886F    call        TListView.SetCheckboxes
 00548874    mov         edx,dword ptr [esi+314];TListView.FStateChangeLink:TChangeLink
 0054887A    mov         eax,dword ptr [esi+2AC];TListView.FStateImages:TCustomImageList
 00548880    call        TCustomImageList.RegisterChanges
 00548885    mov         edx,esi
 00548887    mov         eax,dword ptr [esi+2AC];TListView.FStateImages:TCustomImageList
 0054888D    call        TComponent.FreeNotification
 00548892    mov         eax,dword ptr [esi+2AC];TListView.FStateImages:TCustomImageList
 00548898    call        TCustomImageList.GetHandle
 0054889D    mov         edx,eax
 0054889F    mov         ecx,2
 005488A4    mov         eax,esi
 005488A6    call        00545990
>005488AB    jmp         005488D6
 005488AD    mov         ecx,2
 005488B2    xor         edx,edx
 005488B4    mov         eax,esi
 005488B6    call        00545990
 005488BB    cmp         byte ptr [esi+2FC],0;TListView.FCheckboxes:Boolean
>005488C2    je          005488D6
 005488C4    xor         edx,edx
 005488C6    mov         eax,esi
 005488C8    call        TListView.SetCheckboxes
 005488CD    mov         dl,1
 005488CF    mov         eax,esi
 005488D1    call        TListView.SetCheckboxes
 005488D6    mov         eax,esi
 005488D8    mov         edx,dword ptr [eax]
 005488DA    call        dword ptr [edx+0A8];TWinControl.Invalidate
 005488E0    pop         esi
 005488E1    pop         ebx
 005488E2    ret
*}
end;

//005488E4
function TCustomListView.GetColumnFromIndex(Index:Integer):TListColumn;
begin
{*
 005488E4    mov         eax,dword ptr [eax+2CC];TCustomListView.FListColumns:TListColumns
 005488EA    call        TListColumns.GetItem
 005488EF    ret
*}
end;

//005488F0
function TCustomListView.FindCaption(StartIndex:Integer; Value:string; Wrap:Boolean; Inclusive:Boolean; Partial:Boolean):TListItem;
begin
{*
 005488F0    push        ebp
 005488F1    mov         ebp,esp
 005488F3    add         esp,0FFFFFFE0
 005488F6    push        ebx
 005488F7    push        esi
 005488F8    push        edi
 005488F9    mov         dword ptr [ebp-4],ecx
 005488FC    mov         edi,edx
 005488FE    mov         ebx,eax
 00548900    mov         eax,dword ptr [ebp-4]
 00548903    call        @UStrAddRef
 00548908    xor         eax,eax
 0054890A    push        ebp
 0054890B    push        5489B1
 00548910    push        dword ptr fs:[eax]
 00548913    mov         dword ptr fs:[eax],esp
 00548916    movzx       eax,byte ptr [ebp+10]
 0054891A    mov         eax,dword ptr [eax*4+7A166C]
 00548921    or          eax,2
 00548924    movzx       edx,byte ptr [ebp+8]
 00548928    or          eax,dword ptr [edx*4+7A1674]
 0054892F    mov         dword ptr [ebp-20],eax
 00548932    mov         eax,dword ptr [ebp-4]
 00548935    call        @UStrToPWChar
 0054893A    mov         dword ptr [ebp-1C],eax
 0054893D    xor         edx,edx
 0054893F    push        ebp
 00548940    push        548994
 00548945    push        dword ptr fs:[edx]
 00548948    mov         dword ptr fs:[edx],esp
 0054894B    cmp         byte ptr [ebp+0C],0
>0054894F    je          00548952
 00548951    dec         edi
 00548952    mov         eax,ebx
 00548954    call        TWinControl.GetHandle
 00548959    mov         esi,eax
 0054895B    lea         eax,[ebp-20]
 0054895E    push        eax
 0054895F    push        edi
 00548960    push        1053
 00548965    push        esi
 00548966    call        user32.SendMessageW
 0054896B    cmp         eax,0FFFFFFFF
>0054896E    je          00548981
 00548970    mov         edx,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00548976    xchg        eax,edx
 00548977    call        TListItems.GetItem
 0054897C    mov         dword ptr [ebp-8],eax
>0054897F    jmp         00548986
 00548981    xor         eax,eax
 00548983    mov         dword ptr [ebp-8],eax
 00548986    xor         eax,eax
 00548988    pop         edx
 00548989    pop         ecx
 0054898A    pop         ecx
 0054898B    mov         dword ptr fs:[eax],edx
 0054898E    push        54899B
 00548993    ret
>00548994    jmp         @HandleFinally
>00548999    jmp         00548993
 0054899B    xor         eax,eax
 0054899D    pop         edx
 0054899E    pop         ecx
 0054899F    pop         ecx
 005489A0    mov         dword ptr fs:[eax],edx
 005489A3    push        5489B8
 005489A8    lea         eax,[ebp-4]
 005489AB    call        @UStrClr
 005489B0    ret
>005489B1    jmp         @HandleFinally
>005489B6    jmp         005489A8
 005489B8    mov         eax,dword ptr [ebp-8]
 005489BB    pop         edi
 005489BC    pop         esi
 005489BD    pop         ebx
 005489BE    mov         esp,ebp
 005489C0    pop         ebp
 005489C1    ret         0C
*}
end;

//005489C4
{*function sub_005489C4:?;
begin
 005489C4    movzx       edx,byte ptr ds:[5489D8];0x10 gvar_005489D8
 005489CB    push        edx
 005489CC    mov         cl,4
 005489CE    xor         edx,edx
 005489D0    call        TCustomListView.GetNextItem
 005489D5    ret
end;*}

//005489DC
procedure sub_005489DC(?:TCustomListView; ?:TListItem);
begin
{*
 005489DC    push        ebx
 005489DD    push        esi
 005489DE    push        edi
 005489DF    mov         ebx,edx
 005489E1    mov         edi,eax
 005489E3    test        ebx,ebx
>005489E5    je          005489F7
 005489E7    mov         cl,1
 005489E9    mov         edx,3
 005489EE    mov         eax,ebx
 005489F0    call        TListItem.SetState
>005489F5    jmp         00548A3C
 005489F7    mov         eax,edi
 005489F9    call        005489C4
 005489FE    mov         ebx,eax
 00548A00    mov         eax,edi
 00548A02    mov         edx,dword ptr [eax]
 00548A04    call        dword ptr [edx+130];TCustomListView.sub_00546C60
 00548A0A    mov         esi,eax
 00548A0C    dec         esi
 00548A0D    test        esi,esi
>00548A0F    jl          00548A3C
 00548A11    inc         esi
 00548A12    test        ebx,ebx
>00548A14    je          00548A39
 00548A16    xor         ecx,ecx
 00548A18    mov         edx,3
 00548A1D    mov         eax,ebx
 00548A1F    call        TListItem.SetState
 00548A24    movzx       eax,byte ptr ds:[548A40];0x10 gvar_00548A40
 00548A2B    push        eax
 00548A2C    mov         cl,4
 00548A2E    mov         edx,ebx
 00548A30    mov         eax,edi
 00548A32    call        TCustomListView.GetNextItem
 00548A37    mov         ebx,eax
 00548A39    dec         esi
>00548A3A    jne         00548A12
 00548A3C    pop         edi
 00548A3D    pop         esi
 00548A3E    pop         ebx
 00548A3F    ret
*}
end;

//00548A44
{*function sub_00548A44(?:TCustomListView):?;
begin
 00548A44    push        ebx
 00548A45    mov         ebx,eax
 00548A47    movzx       eax,byte ptr ds:[548A68];0x4 gvar_00548A68
 00548A4E    push        eax
 00548A4F    mov         cl,4
 00548A51    xor         edx,edx
 00548A53    mov         eax,ebx
 00548A55    call        TCustomListView.GetNextItem
 00548A5A    test        eax,eax
>00548A5C    jne         00548A64
 00548A5E    mov         eax,dword ptr [ebx+2F8];TCustomListView.FLastDropTarget:TListItem
 00548A64    pop         ebx
 00548A65    ret
end;*}

//00548A6C
{*procedure sub_00548A6C(?:TCustomListView; ?:?);
begin
 00548A6C    push        ebx
 00548A6D    push        esi
 00548A6E    mov         esi,edx
 00548A70    mov         ebx,eax
 00548A72    mov         eax,ebx
 00548A74    call        TWinControl.HandleAllocated
 00548A79    test        al,al
>00548A7B    je          00548AAC
 00548A7D    test        esi,esi
>00548A7F    je          00548A91
 00548A81    mov         cl,1
 00548A83    mov         edx,1
 00548A88    mov         eax,esi
 00548A8A    call        TListItem.SetState
>00548A8F    jmp         00548AAC
 00548A91    mov         eax,ebx
 00548A93    call        00548A44
 00548A98    mov         esi,eax
 00548A9A    test        esi,esi
>00548A9C    je          00548AAC
 00548A9E    xor         ecx,ecx
 00548AA0    mov         edx,1
 00548AA5    mov         eax,esi
 00548AA7    call        TListItem.SetState
 00548AAC    pop         esi
 00548AAD    pop         ebx
 00548AAE    ret
end;*}

//00548AB0
{*function sub_00548AB0:?;
begin
 00548AB0    movzx       edx,byte ptr ds:[548AC4];0x8 gvar_00548AC4
 00548AB7    push        edx
 00548AB8    mov         cl,4
 00548ABA    xor         edx,edx
 00548ABC    call        TCustomListView.GetNextItem
 00548AC1    ret
end;*}

//00548AC8
procedure sub_00548AC8(?:TCustomListView; ?:TListItem);
begin
{*
 00548AC8    push        ebx
 00548AC9    push        esi
 00548ACA    mov         esi,edx
 00548ACC    mov         ebx,eax
 00548ACE    mov         eax,ebx
 00548AD0    call        TWinControl.HandleAllocated
 00548AD5    test        al,al
>00548AD7    je          00548B08
 00548AD9    test        esi,esi
>00548ADB    je          00548AED
 00548ADD    mov         cl,1
 00548ADF    mov         edx,2
 00548AE4    mov         eax,esi
 00548AE6    call        TListItem.SetState
>00548AEB    jmp         00548B08
 00548AED    mov         eax,ebx
 00548AEF    call        00548AB0
 00548AF4    mov         esi,eax
 00548AF6    test        esi,esi
>00548AF8    je          00548B08
 00548AFA    xor         ecx,ecx
 00548AFC    mov         edx,2
 00548B01    mov         eax,esi
 00548B03    call        TListItem.SetState
 00548B08    pop         esi
 00548B09    pop         ebx
 00548B0A    ret
*}
end;

//00548B0C
{*procedure sub_00548B0C(?:TCustomListView; ?:?);
begin
 00548B0C    push        ebx
 00548B0D    cmp         word ptr [eax+3E2],0;TCustomListView.?f3E2:word
>00548B15    je          00548B29
 00548B17    mov         ebx,eax
 00548B19    mov         ecx,edx
 00548B1B    mov         edx,eax
 00548B1D    mov         eax,dword ptr [ebx+3E4];TCustomListView.?f3E4:dword
 00548B23    call        dword ptr [ebx+3E0];TCustomListView.FOnGetImageIndex
 00548B29    pop         ebx
 00548B2A    ret
end;*}

//00548B2C
function TCustomListView.GetNextItem(StartItem:TListItem; Direction:TSearchDirection; States:TItemStates):TListItem;
begin
{*
 00548B2C    push        ebp
 00548B2D    mov         ebp,esp
 00548B2F    add         esp,0FFFFFFF8
 00548B32    push        ebx
 00548B33    push        esi
 00548B34    push        edi
 00548B35    mov         byte ptr [ebp-1],cl
 00548B38    mov         edi,edx
 00548B3A    mov         ebx,eax
 00548B3C    xor         eax,eax
 00548B3E    mov         dword ptr [ebp-8],eax
 00548B41    mov         eax,ebx
 00548B43    call        TWinControl.HandleAllocated
 00548B48    test        al,al
>00548B4A    je          00548BF1
 00548B50    xor         esi,esi
 00548B52    movzx       eax,byte ptr [ebp-1]
 00548B56    cmp         eax,4
>00548B59    ja          00548B94
 00548B5B    jmp         dword ptr [eax*4+548B62]
 00548B5B    dd          00548B84
 00548B5B    dd          00548B8B
 00548B5B    dd          00548B76
 00548B5B    dd          00548B7D
 00548B5B    dd          00548B92
 00548B76    mov         esi,100
>00548B7B    jmp         00548B94
 00548B7D    mov         esi,200
>00548B82    jmp         00548B94
 00548B84    mov         esi,400
>00548B89    jmp         00548B94
 00548B8B    mov         esi,800
>00548B90    jmp         00548B94
 00548B92    xor         esi,esi
 00548B94    test        edi,edi
>00548B96    je          00548BA3
 00548B98    mov         eax,edi
 00548B9A    call        TListItem.GetIndex
 00548B9F    mov         edi,eax
>00548BA1    jmp         00548BA6
 00548BA3    or          edi,0FFFFFFFF
 00548BA6    test        byte ptr [ebp+8],2
>00548BAA    je          00548BAF
 00548BAC    or          esi,4
 00548BAF    test        byte ptr [ebp+8],4
>00548BB3    je          00548BB8
 00548BB5    or          esi,8
 00548BB8    test        byte ptr [ebp+8],8
>00548BBC    je          00548BC1
 00548BBE    or          esi,1
 00548BC1    test        byte ptr [ebp+8],10
>00548BC5    je          00548BCA
 00548BC7    or          esi,2
 00548BCA    mov         eax,ebx
 00548BCC    call        TWinControl.GetHandle
 00548BD1    mov         ecx,esi
 00548BD3    mov         edx,edi
 00548BD5    call        ListView_GetNextItem
 00548BDA    mov         edi,eax
 00548BDC    cmp         edi,0FFFFFFFF
>00548BDF    je          00548BF1
 00548BE1    mov         edx,edi
 00548BE3    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00548BE9    call        TListItems.GetItem
 00548BEE    mov         dword ptr [ebp-8],eax
 00548BF1    mov         eax,dword ptr [ebp-8]
 00548BF4    pop         edi
 00548BF5    pop         esi
 00548BF6    pop         ebx
 00548BF7    pop         ecx
 00548BF8    pop         ecx
 00548BF9    pop         ebp
 00548BFA    ret         4
*}
end;

//00548C00
function TCustomListView.GetNearestItem(Point:TPoint; Direction:TSearchDirection):TListItem;
begin
{*
 00548C00    push        ebx
 00548C01    push        esi
 00548C02    push        edi
 00548C03    add         esp,0FFFFFFE0
 00548C06    mov         esi,edx
 00548C08    lea         edi,[esp]
 00548C0B    movs        dword ptr [edi],dword ptr [esi]
 00548C0C    movs        dword ptr [edi],dword ptr [esi]
 00548C0D    mov         ebx,ecx
 00548C0F    mov         edi,eax
 00548C11    mov         dword ptr [esp+8],40
 00548C19    mov         eax,dword ptr [esp]
 00548C1C    mov         dword ptr [esp+14],eax
 00548C20    mov         eax,dword ptr [esp+4]
 00548C24    mov         dword ptr [esp+18],eax
 00548C28    movzx       eax,bl
 00548C2B    mov         eax,dword ptr [eax*4+7A167C]
 00548C32    mov         dword ptr [esp+1C],eax
 00548C36    mov         eax,edi
 00548C38    call        TWinControl.GetHandle
 00548C3D    mov         esi,eax
 00548C3F    lea         eax,[esp+8]
 00548C43    push        eax
 00548C44    push        0FF
 00548C46    push        1053
 00548C4B    push        esi
 00548C4C    call        user32.SendMessageW
 00548C51    cmp         eax,0FFFFFFFF
>00548C54    je          00548C65
 00548C56    mov         edx,eax
 00548C58    mov         eax,dword ptr [edi+2BC];TCustomListView.FListItems:TListItems
 00548C5E    call        TListItems.GetItem
>00548C63    jmp         00548C67
 00548C65    xor         eax,eax
 00548C67    add         esp,20
 00548C6A    pop         edi
 00548C6B    pop         esi
 00548C6C    pop         ebx
 00548C6D    ret
*}
end;

//00548C70
function TCustomListView.GetItemAt(X:Integer; Y:Integer):TListItem;
begin
{*
 00548C70    push        ebx
 00548C71    push        esi
 00548C72    push        edi
 00548C73    push        ebp
 00548C74    add         esp,0FFFFFFE0
 00548C77    mov         ebp,ecx
 00548C79    mov         edi,edx
 00548C7B    mov         ebx,eax
 00548C7D    xor         esi,esi
 00548C7F    mov         eax,ebx
 00548C81    call        TWinControl.HandleAllocated
 00548C86    test        al,al
>00548C88    je          00548CCF
 00548C8A    mov         dword ptr [esp],edi
 00548C8D    mov         dword ptr [esp+4],ebp
 00548C91    mov         eax,dword ptr [esp]
 00548C94    mov         dword ptr [esp+8],eax
 00548C98    mov         eax,dword ptr [esp+4]
 00548C9C    mov         dword ptr [esp+0C],eax
 00548CA0    mov         eax,ebx
 00548CA2    call        TWinControl.GetHandle
 00548CA7    mov         edi,eax
 00548CA9    lea         eax,[esp+8]
 00548CAD    push        eax
 00548CAE    push        0
 00548CB0    push        1012
 00548CB5    push        edi
 00548CB6    call        user32.SendMessageW
 00548CBB    cmp         eax,0FFFFFFFF
>00548CBE    je          00548CCF
 00548CC0    mov         edx,eax
 00548CC2    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00548CC8    call        TListItems.GetItem
 00548CCD    mov         esi,eax
 00548CCF    mov         eax,esi
 00548CD1    add         esp,20
 00548CD4    pop         ebp
 00548CD5    pop         edi
 00548CD6    pop         esi
 00548CD7    pop         ebx
 00548CD8    ret
*}
end;

//00548CDC
procedure TCustomListView.Arrange(Code:TListArrangement);
begin
{*
 00548CDC    push        ebx
 00548CDD    push        esi
 00548CDE    push        edi
 00548CDF    mov         ebx,edx
 00548CE1    call        TWinControl.GetHandle
 00548CE6    mov         edi,eax
 00548CE8    movzx       eax,bl
 00548CEB    mov         esi,dword ptr [eax*4+7A1690]
 00548CF2    push        0
 00548CF4    push        esi
 00548CF5    push        1016
 00548CFA    push        edi
 00548CFB    call        user32.SendMessageW
 00548D00    pop         edi
 00548D01    pop         esi
 00548D02    pop         ebx
 00548D03    ret
*}
end;

//00548D04
procedure TCustomListView.UpdateColumns;
begin
{*
 00548D04    push        ebx
 00548D05    push        esi
 00548D06    push        edi
 00548D07    mov         ebx,eax
 00548D09    mov         eax,ebx
 00548D0B    call        TWinControl.HandleAllocated
 00548D10    test        al,al
>00548D12    je          00548D3E
 00548D14    cmp         byte ptr [ebx+325],0
>00548D1B    jne         00548D3E
 00548D1D    mov         eax,dword ptr [ebx+2CC]
 00548D23    mov         eax,dword ptr [eax+8]
 00548D26    mov         esi,dword ptr [eax+8]
 00548D29    dec         esi
 00548D2A    test        esi,esi
>00548D2C    jl          00548D3E
 00548D2E    inc         esi
 00548D2F    xor         edi,edi
 00548D31    mov         edx,edi
 00548D33    mov         eax,ebx
 00548D35    call        TCustomListView.UpdateColumn
 00548D3A    inc         edi
 00548D3B    dec         esi
>00548D3C    jne         00548D31
 00548D3E    pop         edi
 00548D3F    pop         esi
 00548D40    pop         ebx
 00548D41    ret
*}
end;

//00548D80
procedure sub_00548D80(?:TCustomListView);
begin
{*
 00548D80    push        ebp
 00548D81    mov         ebp,esp
 00548D83    push        0
 00548D85    push        0
 00548D87    push        0
 00548D89    push        ebx
 00548D8A    push        esi
 00548D8B    push        edi
 00548D8C    mov         esi,eax
 00548D8E    xor         eax,eax
 00548D90    push        ebp
 00548D91    push        548FDC
 00548D96    push        dword ptr fs:[eax]
 00548D99    mov         dword ptr fs:[eax],esp
 00548D9C    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548DA2    mov         eax,dword ptr [eax+8];TListGroups.FItems:TList<System.Classes.TCollectionItem>
 00548DA5    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00548DA8    dec         edi
 00548DA9    test        edi,edi
>00548DAB    jl          00548EBC
 00548DB1    inc         edi
 00548DB2    xor         ebx,ebx
 00548DB4    mov         edx,ebx
 00548DB6    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548DBC    call        TListGroups.GetItem
 00548DC1    cmp         dword ptr [eax+20],0;TListGroup.FDescriptionTop:string
>00548DC5    je          00548E34
 00548DC7    mov         edx,ebx
 00548DC9    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548DCF    call        TListGroups.GetItem
 00548DD4    cmp         dword ptr [eax+28],0FFFFFFFF;TListGroup.FTitleImage:TImageIndex
>00548DD8    jle         00548E1F
 00548DDA    mov         edx,ebx
 00548DDC    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548DE2    call        TListGroups.GetItem
 00548DE7    mov         eax,dword ptr [eax+0C];TListGroup.FHeader:string
 00548DEA    lea         edx,[ebp-8]
 00548DED    call        0041D930
 00548DF2    cmp         dword ptr [ebp-8],0
>00548DF6    jne         00548E1F
 00548DF8    mov         edx,ebx
 00548DFA    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548E00    call        TListGroups.GetItem
 00548E05    add         eax,0C;TListGroup.FHeader:string
 00548E08    push        eax
 00548E09    mov         edx,ebx
 00548E0B    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548E11    call        TListGroups.GetItem
 00548E16    mov         edx,dword ptr [eax+20];TListGroup.FDescriptionTop:string
 00548E19    pop         eax
 00548E1A    call        @UStrAsg
 00548E1F    mov         edx,ebx
 00548E21    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548E27    call        TListGroups.GetItem
 00548E2C    add         eax,20;TListGroup.FDescriptionTop:string
 00548E2F    call        @UStrClr
 00548E34    mov         edx,ebx
 00548E36    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548E3C    call        TListGroups.GetItem
 00548E41    cmp         dword ptr [eax+24],0;TListGroup.FDescriptionBottom:string
>00548E45    je          00548EB4
 00548E47    mov         edx,ebx
 00548E49    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548E4F    call        TListGroups.GetItem
 00548E54    cmp         dword ptr [eax+28],0FFFFFFFF;TListGroup.FTitleImage:TImageIndex
>00548E58    jle         00548E9F
 00548E5A    mov         edx,ebx
 00548E5C    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548E62    call        TListGroups.GetItem
 00548E67    mov         eax,dword ptr [eax+1C];TListGroup.FSubtitle:string
 00548E6A    lea         edx,[ebp-0C]
 00548E6D    call        0041D930
 00548E72    cmp         dword ptr [ebp-0C],0
>00548E76    jne         00548E9F
 00548E78    mov         edx,ebx
 00548E7A    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548E80    call        TListGroups.GetItem
 00548E85    add         eax,1C;TListGroup.FSubtitle:string
 00548E88    push        eax
 00548E89    mov         edx,ebx
 00548E8B    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548E91    call        TListGroups.GetItem
 00548E96    mov         edx,dword ptr [eax+24];TListGroup.FDescriptionBottom:string
 00548E99    pop         eax
 00548E9A    call        @UStrAsg
 00548E9F    mov         edx,ebx
 00548EA1    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548EA7    call        TListGroups.GetItem
 00548EAC    add         eax,24;TListGroup.FDescriptionBottom:string
 00548EAF    call        @UStrClr
 00548EB4    inc         ebx
 00548EB5    dec         edi
>00548EB6    jne         00548DB4
 00548EBC    mov         eax,esi
 00548EBE    call        TWinControl.HandleAllocated
 00548EC3    test        al,al
>00548EC5    je          00548FB3
 00548ECB    cmp         byte ptr [esi+2D4],0;TCustomListView.FOwnerData:Boolean
>00548ED2    jne         00548F92
 00548ED8    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 00548EDE    call        TListItems.GetCount
 00548EE3    push        eax
 00548EE4    lea         eax,[ebp-4]
 00548EE7    mov         ecx,1
 00548EEC    mov         edx,dword ptr ds:[548D44];:TCustomListView.:2
 00548EF2    call        @DynArraySetLength
 00548EF7    add         esp,4
 00548EFA    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 00548F00    call        TListItems.GetCount
 00548F05    mov         edi,eax
 00548F07    dec         edi
 00548F08    test        edi,edi
>00548F0A    jl          00548F3E
 00548F0C    inc         edi
 00548F0D    xor         ebx,ebx
 00548F0F    mov         edx,ebx
 00548F11    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 00548F17    call        TListItems.GetItem
 00548F1C    mov         eax,dword ptr [eax+2C];TListItem.FGroupID:Integer
 00548F1F    mov         edx,dword ptr [ebp-4]
 00548F22    mov         dword ptr [edx+ebx*4],eax
 00548F25    mov         edx,ebx
 00548F27    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 00548F2D    call        TListItems.GetItem
 00548F32    or          edx,0FFFFFFFF
 00548F35    call        TListItem.SetGroupID
 00548F3A    inc         ebx
 00548F3B    dec         edi
>00548F3C    jne         00548F0F
 00548F3E    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548F44    mov         eax,dword ptr [eax+8];TListGroups.FItems:TList<System.Classes.TCollectionItem>
 00548F47    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00548F4A    dec         edi
 00548F4B    test        edi,edi
>00548F4D    jl          00548F5F
 00548F4F    inc         edi
 00548F50    xor         ebx,ebx
 00548F52    mov         edx,ebx
 00548F54    mov         eax,esi
 00548F56    call        00548FEC
 00548F5B    inc         ebx
 00548F5C    dec         edi
>00548F5D    jne         00548F52
 00548F5F    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 00548F65    call        TListItems.GetCount
 00548F6A    mov         edi,eax
 00548F6C    dec         edi
 00548F6D    test        edi,edi
>00548F6F    jl          00548FB3
 00548F71    inc         edi
 00548F72    xor         ebx,ebx
 00548F74    mov         edx,ebx
 00548F76    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 00548F7C    call        TListItems.GetItem
 00548F81    mov         edx,dword ptr [ebp-4]
 00548F84    mov         edx,dword ptr [edx+ebx*4]
 00548F87    call        TListItem.SetGroupID
 00548F8C    inc         ebx
 00548F8D    dec         edi
>00548F8E    jne         00548F74
>00548F90    jmp         00548FB3
 00548F92    mov         eax,dword ptr [esi+418];TCustomListView.FListGroups:TListGroups
 00548F98    mov         eax,dword ptr [eax+8];TListGroups.FItems:TList<System.Classes.TCollectionItem>
 00548F9B    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00548F9E    dec         edi
 00548F9F    test        edi,edi
>00548FA1    jl          00548FB3
 00548FA3    inc         edi
 00548FA4    xor         ebx,ebx
 00548FA6    mov         edx,ebx
 00548FA8    mov         eax,esi
 00548FAA    call        00548FEC
 00548FAF    inc         ebx
 00548FB0    dec         edi
>00548FB1    jne         00548FA6
 00548FB3    xor         eax,eax
 00548FB5    pop         edx
 00548FB6    pop         ecx
 00548FB7    pop         ecx
 00548FB8    mov         dword ptr fs:[eax],edx
 00548FBB    push        548FE3
 00548FC0    lea         eax,[ebp-0C]
 00548FC3    mov         edx,2
 00548FC8    call        @UStrArrayClr
 00548FCD    lea         eax,[ebp-4]
 00548FD0    mov         edx,dword ptr ds:[548D44];:TCustomListView.:2
 00548FD6    call        @DynArrayClear
 00548FDB    ret
>00548FDC    jmp         @HandleFinally
>00548FE1    jmp         00548FC0
 00548FE3    pop         edi
 00548FE4    pop         esi
 00548FE5    pop         ebx
 00548FE6    mov         esp,ebp
 00548FE8    pop         ebp
 00548FE9    ret
*}
end;

//00548FEC
{*procedure sub_00548FEC(?:TCustomListView; ?:?);
begin
 00548FEC    push        ebx
 00548FED    push        esi
 00548FEE    push        edi
 00548FEF    push        ebp
 00548FF0    add         esp,0FFFFFFA0
 00548FF3    mov         edi,edx
 00548FF5    mov         ebx,eax
 00548FF7    mov         eax,ebx
 00548FF9    call        TWinControl.HandleAllocated
 00548FFE    test        al,al
>00549000    je          0054926B
 00549006    mov         eax,esp
 00549008    xor         ecx,ecx
 0054900A    mov         edx,60
 0054900F    call        @FillChar
 00549014    mov         edx,edi
 00549016    mov         eax,dword ptr [ebx+418];TCustomListView.FListGroups:TListGroups
 0054901C    call        TListGroups.GetItem
 00549021    mov         esi,eax
 00549023    mov         eax,ebx
 00549025    call        TWinControl.GetHandle
 0054902A    mov         ebp,eax
 0054902C    mov         edx,edi
 0054902E    mov         eax,dword ptr [ebx+418];TCustomListView.FListGroups:TListGroups
 00549034    call        TListGroups.GetItem
 00549039    mov         eax,dword ptr [eax+14];TListGroup.FGroupID:Integer
 0054903C    push        0
 0054903E    push        eax
 0054903F    push        1096
 00549044    push        ebp
 00549045    call        user32.SendMessageW
 0054904A    mov         dword ptr [esp+4],0D
 00549052    cmp         dword ptr [esi+10],0;TListGroup.FFooter:string
>00549056    je          0054905D
 00549058    or          dword ptr [esp+4],2
 0054905D    xor         eax,eax
 0054905F    mov         dword ptr [esp+24],eax
 00549063    mov         dword ptr [esp],60
 0054906A    cmp         byte ptr [esi+1A],2;TListGroup.FHeaderAlign:TAlignment
>0054906E    jne         005490A2
 00549070    cmp         dword ptr [esi+28],0FFFFFFFF;TListGroup.FTitleImage:TImageIndex
>00549074    jle         005490A2
 00549076    mov         eax,549274
 0054907B    mov         dword ptr [esp+8],eax
 0054907F    mov         eax,549274
 00549084    mov         dword ptr [esp+28],eax
 00549088    mov         eax,dword ptr [esi+0C];TListGroup.FHeader:string
 0054908B    call        @UStrToPWChar
 00549090    mov         dword ptr [esp+38],eax
 00549094    mov         eax,dword ptr [esi+1C];TListGroup.FSubtitle:string
 00549097    call        @UStrToPWChar
 0054909C    mov         dword ptr [esp+40],eax
>005490A0    jmp         005490CC
 005490A2    mov         eax,dword ptr [esi+0C];TListGroup.FHeader:string
 005490A5    call        @UStrToPWChar
 005490AA    mov         dword ptr [esp+8],eax
 005490AE    mov         eax,dword ptr [esi+1C];TListGroup.FSubtitle:string
 005490B1    call        @UStrToPWChar
 005490B6    mov         dword ptr [esp+28],eax
 005490BA    mov         eax,549274
 005490BF    mov         dword ptr [esp+38],eax
 005490C3    mov         eax,549274
 005490C8    mov         dword ptr [esp+40],eax
 005490CC    mov         eax,dword ptr [esi+10];TListGroup.FFooter:string
 005490CF    call        @UStrToPWChar
 005490D4    mov         dword ptr [esp+10],eax
 005490D8    xor         eax,eax
 005490DA    mov         dword ptr [esp+1C],eax
 005490DE    xor         eax,eax
 005490E0    mov         dword ptr [esp+20],eax
 005490E4    mov         edx,edi
 005490E6    mov         eax,dword ptr [ebx+418];TCustomListView.FListGroups:TListGroups
 005490EC    call        TListGroups.GetItem
 005490F1    test        byte ptr [eax+18],1;TListGroup.FState:TListGroupStateSet
>005490F5    je          005490FC
 005490F7    or          dword ptr [esp+20],0
 005490FC    mov         edx,edi
 005490FE    mov         eax,dword ptr [ebx+418];TCustomListView.FListGroups:TListGroups
 00549104    call        TListGroups.GetItem
 00549109    test        byte ptr [eax+18],2;TListGroup.FState:TListGroupStateSet
>0054910D    je          00549114
 0054910F    or          dword ptr [esp+20],2
 00549114    xor         edx,edx
 00549116    mov         eax,6
 0054911B    call        CheckWin32Version
 00549120    test        al,al
>00549122    je          00549219
 00549128    mov         edx,edi
 0054912A    mov         eax,dword ptr [ebx+418];TCustomListView.FListGroups:TListGroups
 00549130    call        TListGroups.GetItem
 00549135    test        byte ptr [eax+18],8;TListGroup.FState:TListGroupStateSet
>00549139    je          00549140
 0054913B    or          dword ptr [esp+20],4
 00549140    mov         edx,edi
 00549142    mov         eax,dword ptr [ebx+418];TCustomListView.FListGroups:TListGroups
 00549148    call        TListGroups.GetItem
 0054914D    test        byte ptr [eax+18],10;TListGroup.FState:TListGroupStateSet
>00549151    je          00549158
 00549153    or          dword ptr [esp+20],8
 00549158    mov         edx,edi
 0054915A    mov         eax,dword ptr [ebx+418];TCustomListView.FListGroups:TListGroups
 00549160    call        TListGroups.GetItem
 00549165    test        byte ptr [eax+18],4;TListGroup.FState:TListGroupStateSet
>00549169    je          00549170
 0054916B    or          dword ptr [esp+20],1
 00549170    mov         edx,edi
 00549172    mov         eax,dword ptr [ebx+418];TCustomListView.FListGroups:TListGroups
 00549178    call        TListGroups.GetItem
 0054917D    test        byte ptr [eax+18],20;TListGroup.FState:TListGroupStateSet
>00549181    je          00549188
 00549183    or          dword ptr [esp+20],10
 00549188    mov         edx,edi
 0054918A    mov         eax,dword ptr [ebx+418];TCustomListView.FListGroups:TListGroups
 00549190    call        TListGroups.GetItem
 00549195    test        byte ptr [eax+18],40;TListGroup.FState:TListGroupStateSet
>00549199    je          005491A0
 0054919B    or          dword ptr [esp+20],20
 005491A0    mov         eax,dword ptr [esi+28];TListGroup.FTitleImage:TImageIndex
 005491A3    cmp         eax,0FFFFFFFF
>005491A6    jle         005491B0
 005491A8    or          dword ptr [esp+4],1000
 005491B0    mov         dword ptr [esp+48],eax
 005491B4    cmp         byte ptr [esi+1A],2;TListGroup.FHeaderAlign:TAlignment
>005491B8    jne         005491C8
 005491BA    cmp         dword ptr [esi+28],0FFFFFFFF;TListGroup.FTitleImage:TImageIndex
>005491BE    jle         005491C8
 005491C0    or          dword ptr [esp+4],400
 005491C8    cmp         dword ptr [esi+1C],0;TListGroup.FSubtitle:string
>005491CC    je          005491F6
 005491CE    cmp         byte ptr [esi+1A],2;TListGroup.FHeaderAlign:TAlignment
>005491D2    jne         005491EE
 005491D4    cmp         dword ptr [esi+28],0FFFFFFFF;TListGroup.FTitleImage:TImageIndex
>005491D8    jle         005491EE
 005491DA    mov         eax,dword ptr [esp+4]
 005491DE    or          eax,800
 005491E3    or          eax,100
 005491E8    mov         dword ptr [esp+4],eax
>005491EC    jmp         005491F6
 005491EE    or          dword ptr [esp+4],100
 005491F6    movzx       eax,byte ptr [esi+1B];TListGroup.FFooterAlign:TAlignment
 005491FA    test        al,al
>005491FC    jne         00549205
 005491FE    or          dword ptr [esp+24],8
>00549203    jmp         00549219
 00549205    cmp         al,1
>00549207    jne         00549210
 00549209    or          dword ptr [esp+24],20
>0054920E    jmp         00549219
 00549210    cmp         al,2
>00549212    jne         00549219
 00549214    or          dword ptr [esp+24],10
 00549219    movzx       eax,byte ptr [esi+1A];TListGroup.FHeaderAlign:TAlignment
 0054921D    test        al,al
>0054921F    jne         00549228
 00549221    or          dword ptr [esp+24],1
>00549226    jmp         0054923C
 00549228    cmp         al,1
>0054922A    jne         00549233
 0054922C    or          dword ptr [esp+24],4
>00549231    jmp         0054923C
 00549233    cmp         al,2
>00549235    jne         0054923C
 00549237    or          dword ptr [esp+24],2
 0054923C    or          dword ptr [esp+4],10
 00549241    mov         edx,edi
 00549243    mov         eax,dword ptr [ebx+418];TCustomListView.FListGroups:TListGroups
 00549249    call        TListGroups.GetItem
 0054924E    mov         eax,dword ptr [eax+14];TListGroup.FGroupID:Integer
 00549251    mov         dword ptr [esp+18],eax
 00549255    mov         eax,ebx
 00549257    call        TWinControl.GetHandle
 0054925C    mov         edx,esp
 0054925E    push        edx
 0054925F    push        edi
 00549260    push        1091
 00549265    push        eax
 00549266    call        user32.SendMessageW
 0054926B    add         esp,60
 0054926E    pop         ebp
 0054926F    pop         edi
 00549270    pop         esi
 00549271    pop         ebx
 00549272    ret
end;*}

//00549278
procedure TCustomListView.UpdateColumn(AnIndex:Integer);
begin
{*
 00549278    push        ebx
 00549279    push        esi
 0054927A    push        edi
 0054927B    push        ebp
 0054927C    add         esp,0FFFFFFCC
 0054927F    mov         ebp,edx
 00549281    mov         ebx,eax
 00549283    mov         eax,ebx
 00549285    call        TWinControl.HandleAllocated
 0054928A    test        al,al
>0054928C    je          005493DA
 00549292    mov         edx,ebp
 00549294    mov         eax,dword ptr [ebx+2CC]
 0054929A    call        TListColumns.GetItem
 0054929F    mov         edi,eax
 005492A1    mov         dword ptr [esp+8],15
 005492A9    mov         eax,dword ptr [edi+1C]
 005492AC    mov         dword ptr [esp+20],eax
 005492B0    mov         eax,dword ptr [edi+10]
 005492B3    call        @UStrToPWChar
 005492B8    mov         dword ptr [esp+14],eax
 005492BC    movzx       eax,byte ptr [edi+0C]
 005492C0    mov         byte ptr [esp],al
 005492C3    mov         eax,edi
 005492C5    call        TCollectionItem.GetIndex
 005492CA    test        eax,eax
>005492CC    je          005492F3
 005492CE    mov         eax,ebx
 005492D0    mov         si,0FFC6
 005492D4    call        @CallDynaInst
 005492D9    and         eax,7F
 005492DC    lea         eax,[eax+eax*2]
 005492DF    lea         eax,[eax*4+7A16A8]
 005492E6    movzx       edx,byte ptr [esp]
 005492EA    mov         eax,dword ptr [eax+edx*4]
 005492ED    mov         dword ptr [esp+0C],eax
>005492F1    jmp         005492F9
 005492F3    xor         eax,eax
 005492F5    mov         dword ptr [esp+0C],eax
 005492F9    cmp         dword ptr [edi+1C],0FFFFFFFF
>005492FD    je          00549313
 005492FF    mov         eax,dword ptr [esp+0C]
 00549303    or          eax,800
 00549308    or          eax,8000
 0054930D    mov         dword ptr [esp+0C],eax
>00549311    jmp         00549318
 00549313    and         dword ptr [esp+8],0FFFFFFEF
 00549318    mov         eax,dword ptr [edi+24]
 0054931B    cmp         eax,0FFFFFFFF
>0054931E    jle         00549358
 00549320    or          dword ptr [esp+8],2
 00549325    mov         dword ptr [esp+10],eax
 00549329    mov         eax,ebx
 0054932B    call        TWinControl.GetHandle
 00549330    mov         esi,eax
 00549332    mov         edx,ebp
 00549334    mov         eax,dword ptr [ebx+2CC]
 0054933A    call        TListColumns.GetItem
 0054933F    mov         ebx,dword ptr [eax+28]
 00549342    lea         eax,[esp+8]
 00549346    push        eax
 00549347    push        ebx
 00549348    push        1060
 0054934D    push        esi
 0054934E    call        user32.SendMessageW
>00549353    jmp         005493DA
 00549358    mov         eax,ebx
 0054935A    call        TWinControl.GetHandle
 0054935F    mov         esi,eax
 00549361    mov         edx,ebp
 00549363    mov         eax,dword ptr [ebx+2CC]
 00549369    call        TListColumns.GetItem
 0054936E    mov         eax,dword ptr [eax+28]
 00549371    mov         dword ptr [esp+4],eax
 00549375    lea         eax,[esp+8]
 00549379    push        eax
 0054937A    mov         eax,dword ptr [esp+8]
 0054937E    push        eax
 0054937F    push        1060
 00549384    push        esi
 00549385    call        user32.SendMessageW
 0054938A    cmp         byte ptr [ebx+29D],2
>00549391    jne         005493A7
 00549393    mov         eax,ebx
 00549395    call        TWinControl.GetHandle
 0054939A    mov         ecx,dword ptr [edi+24]
 0054939D    or          edx,0FFFFFFFF
 005493A0    call        ListView_SetColumnWidth
>005493A5    jmp         005493DA
 005493A7    cmp         byte ptr [ebx+29D],3
>005493AE    jne         005493DA
 005493B0    cmp         byte ptr [ebx+2D4],0
>005493B7    jne         005493DA
 005493B9    mov         edx,ebp
 005493BB    mov         eax,dword ptr [ebx+2CC]
 005493C1    call        TListColumns.GetItem
 005493C6    mov         eax,dword ptr [eax+28]
 005493C9    push        eax
 005493CA    mov         eax,ebx
 005493CC    call        TWinControl.GetHandle
 005493D1    mov         ecx,dword ptr [edi+24]
 005493D4    pop         edx
 005493D5    call        ListView_SetColumnWidth
 005493DA    add         esp,34
 005493DD    pop         ebp
 005493DE    pop         edi
 005493DF    pop         esi
 005493E0    pop         ebx
 005493E1    ret
*}
end;

//005493E4
{*procedure TCustomListView.WMLButtonDown(?:?);
begin
 005493E4    push        ebx
 005493E5    push        esi
 005493E6    push        edi
 005493E7    push        ebp
 005493E8    add         esp,0FFFFFFE8
 005493EB    mov         edi,edx
 005493ED    mov         ebx,eax
 005493EF    mov         eax,ebx
 005493F1    mov         edx,dword ptr [eax]
 005493F3    call        dword ptr [edx+104];TWinControl.SetFocus
 005493F9    movzx       eax,word ptr [edi+4]
 005493FD    call        KeysToShiftState
 00549402    mov         esi,eax
 00549404    mov         byte ptr [ebx+2C0],0;TCustomListView.FClicked:Boolean
 0054940B    mov         dword ptr [ebx+2F4],0FFFFFFFF;TCustomListView.FDragIndex:Integer
 00549415    mov         edx,edi
 00549417    mov         eax,ebx
 00549419    call        TControl.WMLButtonDown
 0054941E    mov         eax,ebx
 00549420    call        TGroupBox.GetDragMode
 00549425    cmp         al,1
>00549427    jne         0054947F
 00549429    cmp         byte ptr [ebx+2B8],0;TCustomListView.FMultiSelect:Boolean
>00549430    je          0054947F
 00549432    test        si,1
>00549437    jne         0054947F
 00549439    test        si,4
>0054943E    jne         0054947F
 00549440    cmp         byte ptr [ebx+2C0],0;TCustomListView.FClicked:Boolean
>00549447    jne         0054947F
 00549449    movsx       ecx,word ptr [edi+0A]
 0054944D    movsx       edx,word ptr [edi+8]
 00549451    mov         eax,ebx
 00549453    call        TCustomListView.GetItemAt
 00549458    mov         ebp,eax
 0054945A    test        ebp,ebp
>0054945C    je          0054947F
 0054945E    mov         edx,3
 00549463    mov         eax,ebp
 00549465    call        005438B4
 0054946A    test        al,al
>0054946C    je          0054947F
 0054946E    or          ecx,0FFFFFFFF
 00549471    xor         edx,edx
 00549473    mov         eax,ebx
 00549475    call        TControl.BeginDrag
>0054947A    jmp         00549570
 0054947F    cmp         byte ptr [ebx+2C0],0;TCustomListView.FClicked:Boolean
>00549486    je          0054951D
 0054948C    push        esp
 0054948D    call        user32.GetCursorPos
 00549492    lea         ecx,[esp+0C]
 00549496    mov         edx,esp
 00549498    mov         eax,ebx
 0054949A    call        TControl.ScreenToClient
 0054949F    movzx       eax,word ptr [esp+0C]
 005494A4    mov         word ptr [esp+14],ax
 005494A9    movzx       eax,word ptr [esp+10]
 005494AE    mov         word ptr [esp+16],ax
 005494B3    mov         eax,dword ptr [esp+14]
 005494B7    mov         dword ptr [esp+8],eax
 005494BB    mov         eax,ebx
 005494BD    call        TControl.Dragging
 005494C2    test        al,al
>005494C4    jne         005494F3
 005494C6    movzx       eax,word ptr [esp+0A]
 005494CB    movzx       edx,word ptr [esp+8]
 005494D0    movzx       edx,dx
 005494D3    movzx       eax,ax
 005494D6    shl         eax,10
 005494D9    or          edx,eax
 005494DB    push        edx
 005494DC    xor         ecx,ecx
 005494DE    mov         edx,202
 005494E3    mov         eax,ebx
 005494E5    call        TControl.Perform
 005494EA    mov         byte ptr [ebx+2C0],0;TCustomListView.FClicked:Boolean
>005494F1    jmp         00549570
 005494F3    call        user32.GetCapture
 005494F8    movzx       edx,word ptr [esp+0A]
 005494FD    movzx       ecx,word ptr [esp+8]
 00549502    movzx       ecx,cx
 00549505    movzx       edx,dx
 00549508    shl         edx,10
 0054950B    or          ecx,edx
 0054950D    push        ecx
 0054950E    push        0
 00549510    push        202
 00549515    push        eax
 00549516    call        user32.SendMessageW
>0054951B    jmp         00549570
 0054951D    mov         eax,ebx
 0054951F    call        TGroupBox.GetDragMode
 00549524    cmp         al,1
>00549526    jne         00549570
 00549528    cmp         byte ptr [ebx+2B8],0;TCustomListView.FMultiSelect:Boolean
>0054952F    je          0054953F
 00549531    test        si,1
>00549536    jne         00549570
 00549538    test        si,4
>0054953D    jne         00549570
 0054953F    movsx       ecx,word ptr [edi+0A]
 00549543    movsx       edx,word ptr [edi+8]
 00549547    mov         eax,ebx
 00549549    call        TCustomListView.GetItemAt
 0054954E    mov         ebp,eax
 00549550    test        ebp,ebp
>00549552    je          00549570
 00549554    mov         edx,3
 00549559    mov         eax,ebp
 0054955B    call        005438B4
 00549560    test        al,al
>00549562    je          00549570
 00549564    or          ecx,0FFFFFFFF
 00549567    xor         edx,edx
 00549569    mov         eax,ebx
 0054956B    call        TControl.BeginDrag
 00549570    add         esp,18
 00549573    pop         ebp
 00549574    pop         edi
 00549575    pop         esi
 00549576    pop         ebx
 00549577    ret
end;*}

//00549578
procedure sub_00549578(?:TCustomListView);
begin
{*
 00549578    push        ebp
 00549579    mov         ebp,esp
 0054957B    add         esp,0FFFFFFEC
 0054957E    push        ebx
 0054957F    push        esi
 00549580    push        edi
 00549581    mov         dword ptr [ebp-4],eax
 00549584    mov         dl,1
 00549586    mov         eax,[0046C204];TList
 0054958B    call        TObject.Create;TList.Create
 00549590    mov         dword ptr [ebp-14],eax
 00549593    xor         edx,edx
 00549595    push        ebp
 00549596    push        5496FB
 0054959B    push        dword ptr fs:[edx]
 0054959E    mov         dword ptr fs:[edx],esp
 005495A1    mov         eax,dword ptr [ebp-4]
 005495A4    call        TControl.GetClientWidth
 005495A9    mov         dword ptr [ebp-0C],eax
 005495AC    mov         eax,dword ptr [ebp-4]
 005495AF    mov         eax,dword ptr [eax+2CC];TCustomListView.FListColumns:TListColumns
 005495B5    mov         eax,dword ptr [eax+8];TListColumns.FItems:TList<System.Classes.TCollectionItem>
 005495B8    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 005495BB    dec         edi
 005495BC    test        edi,edi
>005495BE    jl          005495F5
 005495C0    inc         edi
 005495C1    xor         ebx,ebx
 005495C3    mov         eax,dword ptr [ebp-4]
 005495C6    mov         eax,dword ptr [eax+2CC];TCustomListView.FListColumns:TListColumns
 005495CC    mov         edx,ebx
 005495CE    call        TListColumns.GetItem
 005495D3    mov         esi,eax
 005495D5    cmp         byte ptr [esi+0D],0;TListColumn.FAutoSize:Boolean
>005495D9    je          005495E7
 005495DB    mov         edx,esi
 005495DD    mov         eax,dword ptr [ebp-14]
 005495E0    call        TList.Add
>005495E5    jmp         005495F1
 005495E7    mov         eax,esi
 005495E9    call        TListColumn.GetWidth
 005495EE    sub         dword ptr [ebp-0C],eax
 005495F1    inc         ebx
 005495F2    dec         edi
>005495F3    jne         005495C3
 005495F5    mov         eax,dword ptr [ebp-14]
 005495F8    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>005495FC    jle         005496E5
 00549602    mov         eax,dword ptr [ebp-4]
 00549605    mov         eax,dword ptr [eax+2CC];TCustomListView.FListColumns:TListColumns
 0054960B    mov         edx,dword ptr [eax]
 0054960D    call        dword ptr [edx+20];TCollection.BeginUpdate
 00549610    xor         edx,edx
 00549612    push        ebp
 00549613    push        5496DE
 00549618    push        dword ptr fs:[edx]
 0054961B    mov         dword ptr fs:[edx],esp
 0054961E    mov         eax,dword ptr [ebp-14]
 00549621    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 00549624    mov         dword ptr [ebp-8],eax
 00549627    mov         eax,dword ptr [ebp-0C]
 0054962A    cdq
 0054962B    idiv        eax,dword ptr [ebp-8]
 0054962E    mov         dword ptr [ebp-10],edx
 00549631    mov         eax,dword ptr [ebp-0C]
 00549634    cdq
 00549635    idiv        eax,dword ptr [ebp-8]
 00549638    mov         edi,eax
 0054963A    mov         ebx,dword ptr [ebp-8]
 0054963D    dec         ebx
 0054963E    cmp         ebx,0
>00549641    jl          00549665
 00549643    mov         edx,ebx
 00549645    mov         eax,dword ptr [ebp-14]
 00549648    call        TList.Get
 0054964D    mov         esi,eax
 0054964F    test        ebx,ebx
>00549651    jne         00549656
 00549653    add         edi,dword ptr [ebp-10]
 00549656    mov         edx,edi
 00549658    mov         eax,esi
 0054965A    call        TListColumn.SetWidth
 0054965F    dec         ebx
 00549660    cmp         ebx,0FFFFFFFF
>00549663    jne         00549643
 00549665    mov         eax,dword ptr [ebp-0C]
 00549668    cdq
 00549669    idiv        eax,dword ptr [ebp-8]
 0054966C    mov         edi,eax
 0054966E    mov         ebx,dword ptr [ebp-8]
 00549671    dec         ebx
 00549672    cmp         ebx,0
>00549675    jl          005496AF
 00549677    mov         edx,ebx
 00549679    mov         eax,dword ptr [ebp-14]
 0054967C    call        TList.Get
 00549681    mov         esi,eax
 00549683    test        ebx,ebx
>00549685    jne         0054968A
 00549687    add         edi,dword ptr [ebp-10]
 0054968A    mov         eax,esi
 0054968C    call        TListColumn.GetWidth
 00549691    cmp         edi,eax
>00549693    je          005496A9
 00549695    mov         edx,ebx
 00549697    mov         eax,dword ptr [ebp-14]
 0054969A    call        TList.Delete
 0054969F    mov         eax,esi
 005496A1    call        TListColumn.GetWidth
 005496A6    sub         dword ptr [ebp-0C],eax
 005496A9    dec         ebx
 005496AA    cmp         ebx,0FFFFFFFF
>005496AD    jne         00549677
 005496AF    mov         eax,dword ptr [ebp-14]
 005496B2    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 005496B5    test        eax,eax
>005496B7    je          005496C2
 005496B9    cmp         eax,dword ptr [ebp-8]
>005496BC    jne         0054961E
 005496C2    xor         eax,eax
 005496C4    pop         edx
 005496C5    pop         ecx
 005496C6    pop         ecx
 005496C7    mov         dword ptr fs:[eax],edx
 005496CA    push        5496E5
 005496CF    mov         eax,dword ptr [ebp-4]
 005496D2    mov         eax,dword ptr [eax+2CC];TCustomListView.FListColumns:TListColumns
 005496D8    mov         edx,dword ptr [eax]
 005496DA    call        dword ptr [edx+24];TCollection.EndUpdate
 005496DD    ret
>005496DE    jmp         @HandleFinally
>005496E3    jmp         005496CF
 005496E5    xor         eax,eax
 005496E7    pop         edx
 005496E8    pop         ecx
 005496E9    pop         ecx
 005496EA    mov         dword ptr fs:[eax],edx
 005496ED    push        549702
 005496F2    mov         eax,dword ptr [ebp-14]
 005496F5    call        TObject.Free
 005496FA    ret
>005496FB    jmp         @HandleFinally
>00549700    jmp         005496F2
 00549702    pop         edi
 00549703    pop         esi
 00549704    pop         ebx
 00549705    mov         esp,ebp
 00549707    pop         ebp
 00549708    ret
*}
end;

//0054970C
{*procedure TCustomListView.WMWindowPosChangedMsg(?:?);
begin
 0054970C    push        ebx
 0054970D    push        esi
 0054970E    mov         esi,edx
 00549710    mov         ebx,eax
 00549712    test        byte ptr [ebx+1C],2;TCustomListView.FComponentState:TComponentState
>00549716    jne         00549733
 00549718    mov         eax,dword ptr [esi+8]
 0054971B    test        byte ptr [eax+18],1
>0054971F    jne         00549733
 00549721    mov         eax,ebx
 00549723    call        TWinControl.HandleAllocated
 00549728    test        al,al
>0054972A    je          00549733
 0054972C    mov         eax,ebx
 0054972E    call        00549578
 00549733    mov         edx,esi
 00549735    mov         eax,ebx
 00549737    call        TWinControl.WMWindowPosChangedMsg
 0054973C    pop         esi
 0054973D    pop         ebx
 0054973E    ret
end;*}

//00549740
{*procedure TCustomListView.sub_00549740(?:?);
begin
 00549740    push        ebp
 00549741    mov         ebp,esp
 00549743    add         esp,0FFFFFFF0
 00549746    push        ebx
 00549747    push        esi
 00549748    push        edi
 00549749    mov         dword ptr [ebp-8],edx
 0054974C    mov         dword ptr [ebp-4],eax
 0054974F    mov         eax,dword ptr [ebp-4]
 00549752    cmp         dword ptr [eax+298],0;TCustomListView.FCanvas:TCanvas
>00549759    je          0054986B
 0054975F    mov         eax,dword ptr [ebp-8]
 00549762    mov         eax,dword ptr [eax+8]
 00549765    mov         dword ptr [ebp-10],eax
 00549768    mov         eax,dword ptr [ebp-10]
 0054976B    movzx       esi,word ptr [eax+10]
 0054976F    mov         eax,dword ptr [ebp-10]
 00549772    mov         eax,dword ptr [eax+18]
 00549775    push        eax
 00549776    call        gdi32.SaveDC
 0054977B    mov         dword ptr [ebp-0C],eax
 0054977E    mov         eax,dword ptr [ebp-4]
 00549781    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00549787    call        TCustomCanvas.Lock
 0054978C    xor         eax,eax
 0054978E    push        ebp
 0054978F    push        54985A
 00549794    push        dword ptr fs:[eax]
 00549797    mov         dword ptr fs:[eax],esp
 0054979A    mov         eax,dword ptr [ebp-10]
 0054979D    mov         edx,dword ptr [eax+18]
 005497A0    mov         eax,dword ptr [ebp-4]
 005497A3    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 005497A9    call        TCanvas.SetHandle
 005497AE    mov         eax,dword ptr [ebp-4]
 005497B1    mov         edx,dword ptr [eax+74];TCustomListView.FFont:TFont
 005497B4    mov         eax,dword ptr [ebp-4]
 005497B7    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 005497BD    call        TCanvas.SetFont
 005497C2    mov         eax,dword ptr [ebp-4]
 005497C5    mov         edx,dword ptr [eax+1D0];TCustomListView.FBrush:TBrush
 005497CB    mov         eax,dword ptr [ebp-4]
 005497CE    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 005497D4    call        TCanvas.SetBrush
 005497D9    mov         eax,dword ptr [ebp-10]
 005497DC    mov         edi,dword ptr [eax+8]
 005497DF    cmp         edi,0FFFFFFFF
>005497E2    jne         005497FA
 005497E4    mov         eax,dword ptr [ebp-10]
 005497E7    lea         edx,[eax+1C]
 005497EA    mov         eax,dword ptr [ebp-4]
 005497ED    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 005497F3    mov         ecx,dword ptr [eax]
 005497F5    call        dword ptr [ecx+54];TCanvas.FillRect
>005497F8    jmp         0054981E
 005497FA    push        esi
 005497FB    mov         edx,edi
 005497FD    mov         eax,dword ptr [ebp-4]
 00549800    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 00549806    call        TListItems.GetItem
 0054980B    mov         edx,eax
 0054980D    mov         eax,dword ptr [ebp-10]
 00549810    lea         ecx,[eax+1C]
 00549813    mov         eax,dword ptr [ebp-4]
 00549816    mov         ebx,dword ptr [eax]
 00549818    call        dword ptr [ebx+154];TCustomListView.sub_00549AD4
 0054981E    xor         eax,eax
 00549820    pop         edx
 00549821    pop         ecx
 00549822    pop         ecx
 00549823    mov         dword ptr fs:[eax],edx
 00549826    push        549861
 0054982B    mov         eax,dword ptr [ebp-4]
 0054982E    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00549834    xor         edx,edx
 00549836    call        TCanvas.SetHandle
 0054983B    mov         eax,dword ptr [ebp-4]
 0054983E    mov         eax,dword ptr [eax+298];TCustomListView.FCanvas:TCanvas
 00549844    call        TCustomCanvas.Unlock
 00549849    mov         eax,dword ptr [ebp-0C]
 0054984C    push        eax
 0054984D    mov         eax,dword ptr [ebp-10]
 00549850    mov         eax,dword ptr [eax+18]
 00549853    push        eax
 00549854    call        gdi32.RestoreDC
 00549859    ret
>0054985A    jmp         @HandleFinally
>0054985F    jmp         0054982B
 00549861    mov         eax,dword ptr [ebp-8]
 00549864    mov         dword ptr [eax+0C],1
 0054986B    pop         edi
 0054986C    pop         esi
 0054986D    pop         ebx
 0054986E    mov         esp,ebp
 00549870    pop         ebp
 00549871    ret
end;*}

//0054987C
{*function sub_0054987C(?:?; ?:?):?;
begin
 0054987C    test        cl,cl
>0054987E    jne         00549929
 00549884    cmp         dl,2
>00549887    jne         005498AB
 00549889    cmp         word ptr [eax+39A],0;TCustomListView.?f39A:word
>00549891    jne         005498A4
 00549893    cmp         word ptr [eax+352],0;TCustomListView.?f352:word
>0054989B    jne         005498A4
 0054989D    xor         eax,eax
>0054989F    jmp         0054998F
 005498A4    mov         al,1
>005498A6    jmp         0054998F
 005498AB    cmp         dl,1
>005498AE    jne         005498E6
 005498B0    cmp         word ptr [eax+392],0;TCustomListView.?f392:word
>005498B8    jne         005498DF
 005498BA    cmp         word ptr [eax+34A],0;TCustomListView.?f34A:word
>005498C2    jne         005498DF
 005498C4    cmp         word ptr [eax+39A],0;TCustomListView.?f39A:word
>005498CC    jne         005498DF
 005498CE    cmp         word ptr [eax+352],0;TCustomListView.?f352:word
>005498D6    jne         005498DF
 005498D8    xor         eax,eax
>005498DA    jmp         0054998F
 005498DF    mov         al,1
>005498E1    jmp         0054998F
 005498E6    cmp         word ptr [eax+38A],0;TCustomListView.?f38A:word
>005498EE    jne         00549926
 005498F0    cmp         word ptr [eax+342],0;TCustomListView.?f342:word
>005498F8    jne         00549926
 005498FA    cmp         word ptr [eax+392],0;TCustomListView.?f392:word
>00549902    jne         00549926
 00549904    cmp         word ptr [eax+34A],0;TCustomListView.?f34A:word
>0054990C    jne         00549926
 0054990E    cmp         word ptr [eax+39A],0;TCustomListView.?f39A:word
>00549916    jne         00549926
 00549918    cmp         word ptr [eax+352],0;TCustomListView.?f352:word
>00549920    jne         00549926
 00549922    xor         eax,eax
>00549924    jmp         0054998F
 00549926    mov         al,1
 00549928    ret
 00549929    cmp         dl,2
>0054992C    jne         0054994A
 0054992E    cmp         word ptr [eax+352],0;TCustomListView.?f352:word
>00549936    jne         00549946
 00549938    cmp         word ptr [eax+39A],0;TCustomListView.?f39A:word
>00549940    jne         00549946
 00549942    xor         eax,eax
>00549944    jmp         0054998F
 00549946    mov         al,1
>00549948    jmp         0054998F
 0054994A    cmp         dl,1
>0054994D    jne         0054996B
 0054994F    cmp         word ptr [eax+34A],0;TCustomListView.?f34A:word
>00549957    jne         00549967
 00549959    cmp         word ptr [eax+392],0;TCustomListView.?f392:word
>00549961    jne         00549967
 00549963    xor         eax,eax
>00549965    jmp         0054998F
 00549967    mov         al,1
>00549969    jmp         0054998F
 0054996B    cmp         word ptr [eax+342],0;TCustomListView.?f342:word
>00549973    jne         0054998D
 00549975    cmp         word ptr [eax+34A],0;TCustomListView.?f34A:word
>0054997D    jne         0054998D
 0054997F    cmp         word ptr [eax+352],0;TCustomListView.?f352:word
>00549987    jne         0054998D
 00549989    xor         eax,eax
>0054998B    jmp         0054998F
 0054998D    mov         al,1
 0054998F    ret
end;*}

//00549990
{*function sub_00549990(?:?; ?:?):?;
begin
 00549990    push        ebx
 00549991    push        esi
 00549992    push        edi
 00549993    push        ecx
 00549994    mov         ebx,ecx
 00549996    mov         edi,edx
 00549998    mov         esi,eax
 0054999A    mov         byte ptr [esp],1
 0054999E    test        bl,bl
>005499A0    jne         005499BD
 005499A2    cmp         word ptr [esi+38A],0;TCustomListView.?f38A:word
>005499AA    je          005499BD
 005499AC    push        esp
 005499AD    mov         ecx,edi
 005499AF    mov         edx,esi
 005499B1    mov         eax,dword ptr [esi+38C];TCustomListView.?f38C:dword
 005499B7    call        dword ptr [esi+388];TCustomListView.FOnCustomDraw
 005499BD    cmp         word ptr [esi+342],0;TCustomListView.?f342:word
>005499C5    je          005499DD
 005499C7    push        ebx
 005499C8    lea         eax,[esp+4]
 005499CC    push        eax
 005499CD    mov         ecx,edi
 005499CF    mov         edx,esi
 005499D1    mov         eax,dword ptr [esi+344];TCustomListView.?f344:dword
 005499D7    call        dword ptr [esi+340];TCustomListView.FOnAdvancedCustomDraw
 005499DD    movzx       eax,byte ptr [esp]
 005499E1    pop         edx
 005499E2    pop         edi
 005499E3    pop         esi
 005499E4    pop         ebx
 005499E5    ret
end;*}

//005499E8
{*function sub_005499E8(?:?; ?:?; ?:?):?;
begin
 005499E8    push        ebp
 005499E9    mov         ebp,esp
 005499EB    add         esp,0FFFFFFF8
 005499EE    push        ebx
 005499EF    push        esi
 005499F0    mov         word ptr [ebp-6],cx
 005499F4    mov         dword ptr [ebp-4],edx
 005499F7    mov         esi,eax
 005499F9    mov         ebx,dword ptr [ebp+8]
 005499FC    mov         byte ptr [ebp-7],1
 00549A00    test        bl,bl
>00549A02    jne         00549A28
 00549A04    cmp         word ptr [esi+392],0;TCustomListView.?f392:word
>00549A0C    je          00549A28
 00549A0E    movzx       eax,word ptr [ebp-6]
 00549A12    push        eax
 00549A13    lea         eax,[ebp-7]
 00549A16    push        eax
 00549A17    mov         ecx,dword ptr [ebp-4]
 00549A1A    mov         edx,esi
 00549A1C    mov         eax,dword ptr [esi+394];TCustomListView.?f394:dword
 00549A22    call        dword ptr [esi+390];TCustomListView.FOnCustomDrawItem
 00549A28    cmp         word ptr [esi+34A],0;TCustomListView.?f34A:word
>00549A30    je          00549A4D
 00549A32    movzx       eax,word ptr [ebp-6]
 00549A36    push        eax
 00549A37    push        ebx
 00549A38    lea         eax,[ebp-7]
 00549A3B    push        eax
 00549A3C    mov         ecx,dword ptr [ebp-4]
 00549A3F    mov         edx,esi
 00549A41    mov         eax,dword ptr [esi+34C];TCustomListView.?f34C:dword
 00549A47    call        dword ptr [esi+348];TCustomListView.FOnAdvancedCustomDrawItem
 00549A4D    movzx       eax,byte ptr [ebp-7]
 00549A51    pop         esi
 00549A52    pop         ebx
 00549A53    pop         ecx
 00549A54    pop         ecx
 00549A55    pop         ebp
 00549A56    ret         4
end;*}

//00549A5C
{*function sub_00549A5C(?:?; ?:?; ?:?; ?:?):?;
begin
 00549A5C    push        ebp
 00549A5D    mov         ebp,esp
 00549A5F    add         esp,0FFFFFFF4
 00549A62    push        ebx
 00549A63    push        esi
 00549A64    mov         dword ptr [ebp-8],ecx
 00549A67    mov         dword ptr [ebp-4],edx
 00549A6A    mov         esi,eax
 00549A6C    mov         ebx,dword ptr [ebp+8]
 00549A6F    mov         byte ptr [ebp-9],1
 00549A73    test        bl,bl
>00549A75    jne         00549A9F
 00549A77    cmp         word ptr [esi+39A],0;TCustomListView.?f39A:word
>00549A7F    je          00549A9F
 00549A81    mov         eax,dword ptr [ebp-8]
 00549A84    push        eax
 00549A85    movzx       eax,word ptr [ebp+0C]
 00549A89    push        eax
 00549A8A    lea         eax,[ebp-9]
 00549A8D    push        eax
 00549A8E    mov         ecx,dword ptr [ebp-4]
 00549A91    mov         edx,esi
 00549A93    mov         eax,dword ptr [esi+39C];TCustomListView.?f39C:dword
 00549A99    call        dword ptr [esi+398];TCustomListView.FOnCustomDrawSubItem
 00549A9F    cmp         word ptr [esi+352],0;TCustomListView.?f352:word
>00549AA7    je          00549AC8
 00549AA9    mov         eax,dword ptr [ebp-8]
 00549AAC    push        eax
 00549AAD    movzx       eax,word ptr [ebp+0C]
 00549AB1    push        eax
 00549AB2    push        ebx
 00549AB3    lea         eax,[ebp-9]
 00549AB6    push        eax
 00549AB7    mov         ecx,dword ptr [ebp-4]
 00549ABA    mov         edx,esi
 00549ABC    mov         eax,dword ptr [esi+354];TCustomListView.?f354:dword
 00549AC2    call        dword ptr [esi+350];TCustomListView.FOnAdvancedCustomDrawSubItem
 00549AC8    movzx       eax,byte ptr [ebp-9]
 00549ACC    pop         esi
 00549ACD    pop         ebx
 00549ACE    mov         esp,ebp
 00549AD0    pop         ebp
 00549AD1    ret         8
end;*}

//00549AD4
{*procedure sub_00549AD4(?:?; ?:?; ?:?);
begin
 00549AD4    push        ebp
 00549AD5    mov         ebp,esp
 00549AD7    add         esp,0FFFFFFF0
 00549ADA    push        ebx
 00549ADB    push        esi
 00549ADC    push        edi
 00549ADD    mov         esi,ecx
 00549ADF    lea         edi,[ebp-10]
 00549AE2    movs        dword ptr [edi],dword ptr [esi]
 00549AE3    movs        dword ptr [edi],dword ptr [esi]
 00549AE4    movs        dword ptr [edi],dword ptr [esi]
 00549AE5    movs        dword ptr [edi],dword ptr [esi]
 00549AE6    mov         esi,edx
 00549AE8    mov         ebx,eax
 00549AEA    mov         eax,dword ptr [ebx+298];TCustomListView.FCanvas:TCanvas
 00549AF0    call        TControlCanvas.UpdateTextFlags
 00549AF5    cmp         word ptr [ebx+3CA],0;TCustomListView.?f3CA:word
>00549AFD    je          00549B1A
 00549AFF    lea         eax,[ebp-10]
 00549B02    push        eax
 00549B03    movzx       eax,word ptr [ebp+8]
 00549B07    push        eax
 00549B08    mov         ecx,esi
 00549B0A    mov         edx,ebx
 00549B0C    mov         eax,dword ptr [ebx+3CC];TCustomListView.?f3CC:dword
 00549B12    call        dword ptr [ebx+3C8];TCustomListView.FOnDrawItem
>00549B18    jmp         00549B43
 00549B1A    lea         edx,[ebp-10]
 00549B1D    mov         eax,dword ptr [ebx+298];TCustomListView.FCanvas:TCanvas
 00549B23    mov         ecx,dword ptr [eax]
 00549B25    call        dword ptr [ecx+54];TCanvas.FillRect
 00549B28    mov         eax,dword ptr [esi+20]
 00549B2B    push        eax
 00549B2C    mov         edx,dword ptr [ebp-10]
 00549B2F    add         edx,2
 00549B32    mov         ecx,dword ptr [ebp-0C]
 00549B35    mov         eax,dword ptr [ebx+298];TCustomListView.FCanvas:TCanvas
 00549B3B    mov         ebx,dword ptr [eax]
 00549B3D    call        dword ptr [ebx+90];TCanvas.TextOut
 00549B43    pop         edi
 00549B44    pop         esi
 00549B45    pop         ebx
 00549B46    mov         esp,ebp
 00549B48    pop         ebp
 00549B49    ret         4
end;*}

//00549B4C
{*procedure sub_00549B4C(?:TCustomListView; ?:?; ?:?; ?:?);
begin
 00549B4C    push        ebp
 00549B4D    mov         ebp,esp
 00549B4F    push        ebx
 00549B50    push        esi
 00549B51    push        edi
 00549B52    mov         esi,ecx
 00549B54    mov         edi,edx
 00549B56    mov         ebx,eax
 00549B58    cmp         word ptr [ebx+3EA],0;TCustomListView.?f3EA:word
>00549B60    je          00549B87
 00549B62    mov         eax,dword ptr [edi+8]
 00549B65    mov         edx,dword ptr [eax]
 00549B67    call        dword ptr [edx+14]
 00549B6A    cmp         esi,eax
>00549B6C    jge         00549B87
 00549B6E    test        esi,esi
>00549B70    jl          00549B87
 00549B72    push        esi
 00549B73    mov         eax,dword ptr [ebp+8]
 00549B76    push        eax
 00549B77    mov         ecx,edi
 00549B79    mov         edx,ebx
 00549B7B    mov         eax,dword ptr [ebx+3EC];TCustomListView.?f3EC:dword
 00549B81    call        dword ptr [ebx+3E8];TCustomListView.FOnGetSubItemImage
 00549B87    pop         edi
 00549B88    pop         esi
 00549B89    pop         ebx
 00549B8A    pop         ebp
 00549B8B    ret         4
end;*}

//00549B90
procedure sub_00549B90(?:TCustomListView);
begin
{*
 00549B90    push        ebp
 00549B91    mov         ebp,esp
 00549B93    add         esp,0FFFFFFD4
 00549B96    push        ebx
 00549B97    push        esi
 00549B98    push        edi
 00549B99    xor         edx,edx
 00549B9B    mov         dword ptr [ebp-2C],edx
 00549B9E    mov         dword ptr [ebp-28],edx
 00549BA1    mov         ebx,eax
 00549BA3    xor         eax,eax
 00549BA5    push        ebp
 00549BA6    push        549CF3
 00549BAB    push        dword ptr fs:[eax]
 00549BAE    mov         dword ptr fs:[eax],esp
 00549BB1    mov         esi,dword ptr [ebx+298]
 00549BB7    mov         dl,1
 00549BB9    mov         eax,dword ptr [esi+48]
 00549BBC    call        TBrush.SetStyle
 00549BC1    mov         eax,dword ptr [ebx+320]
 00549BC7    mov         eax,dword ptr [eax+8]
 00549BCA    mov         eax,dword ptr [eax+8]
 00549BCD    dec         eax
 00549BCE    test        eax,eax
>00549BD0    jl          00549CD8
 00549BD6    inc         eax
 00549BD7    mov         dword ptr [ebp-0C],eax
 00549BDA    mov         dword ptr [ebp-4],0
 00549BE1    mov         edx,dword ptr [ebp-4]
 00549BE4    mov         eax,dword ptr [ebx+320]
 00549BEA    call        TWorkAreas.GetItem
 00549BEF    mov         edx,dword ptr [eax+20];TWorkArea.FColor:TColor
 00549BF2    mov         eax,dword ptr [esi+44]
 00549BF5    call        TPen.SetColor
 00549BFA    mov         dl,2
 00549BFC    mov         eax,dword ptr [esi+44]
 00549BFF    call        TPen.SetStyle
 00549C04    lea         edx,[ebp-24]
 00549C07    mov         eax,ebx
 00549C09    call        0054864C
 00549C0E    mov         edi,dword ptr [ebp-24]
 00549C11    neg         edi
 00549C13    lea         edx,[ebp-24]
 00549C16    mov         eax,ebx
 00549C18    call        0054864C
 00549C1D    mov         eax,dword ptr [ebp-20]
 00549C20    neg         eax
 00549C22    mov         dword ptr [ebp-8],eax
 00549C25    mov         edx,dword ptr [ebp-4]
 00549C28    mov         eax,dword ptr [ebx+320]
 00549C2E    call        TWorkAreas.GetItem
 00549C33    push        esi
 00549C34    push        edi
 00549C35    lea         esi,[eax+0C];TWorkArea.FRect:TRect
 00549C38    lea         edi,[ebp-1C]
 00549C3B    movs        dword ptr [edi],dword ptr [esi]
 00549C3C    movs        dword ptr [edi],dword ptr [esi]
 00549C3D    movs        dword ptr [edi],dword ptr [esi]
 00549C3E    movs        dword ptr [edi],dword ptr [esi]
 00549C3F    pop         edi
 00549C40    pop         esi
 00549C41    lea         eax,[ebp-1C]
 00549C44    mov         ecx,dword ptr [ebp-8]
 00549C47    mov         edx,edi
 00549C49    call        OffsetRect
 00549C4E    mov         eax,dword ptr [ebp-14]
 00549C51    push        eax
 00549C52    mov         eax,dword ptr [ebp-10]
 00549C55    push        eax
 00549C56    mov         ecx,dword ptr [ebp-18]
 00549C59    mov         edx,dword ptr [ebp-1C]
 00549C5C    mov         eax,esi
 00549C5E    mov         edi,dword ptr [eax]
 00549C60    call        dword ptr [edi+7C]
 00549C63    mov         edx,dword ptr [ebp-4]
 00549C66    mov         eax,dword ptr [ebx+320]
 00549C6C    call        TWorkAreas.GetItem
 00549C71    lea         edx,[ebp-28]
 00549C74    mov         ecx,dword ptr [eax]
 00549C76    call        dword ptr [ecx+0C];TWorkArea.GetDisplayName
 00549C79    cmp         dword ptr [ebp-28],0
>00549C7D    je          00549CCC
 00549C7F    xor         edx,edx
 00549C81    mov         eax,dword ptr [esi+44]
 00549C84    call        TPen.SetStyle
 00549C89    mov         edx,dword ptr [ebp-4]
 00549C8C    mov         eax,dword ptr [ebx+320]
 00549C92    call        TWorkAreas.GetItem
 00549C97    mov         edx,dword ptr [eax+20];TWorkArea.FColor:TColor
 00549C9A    mov         eax,dword ptr [esi+40]
 00549C9D    call        TFont.SetColor
 00549CA2    mov         edx,dword ptr [ebp-4]
 00549CA5    mov         eax,dword ptr [ebx+320]
 00549CAB    call        TWorkAreas.GetItem
 00549CB0    lea         edx,[ebp-2C]
 00549CB3    mov         ecx,dword ptr [eax]
 00549CB5    call        dword ptr [ecx+0C];TWorkArea.GetDisplayName
 00549CB8    mov         eax,dword ptr [ebp-2C]
 00549CBB    push        eax
 00549CBC    mov         ecx,dword ptr [ebp-10]
 00549CBF    mov         edx,dword ptr [ebp-1C]
 00549CC2    mov         eax,esi
 00549CC4    mov         edi,dword ptr [eax]
 00549CC6    call        dword ptr [edi+90]
 00549CCC    inc         dword ptr [ebp-4]
 00549CCF    dec         dword ptr [ebp-0C]
>00549CD2    jne         00549BE1
 00549CD8    xor         eax,eax
 00549CDA    pop         edx
 00549CDB    pop         ecx
 00549CDC    pop         ecx
 00549CDD    mov         dword ptr fs:[eax],edx
 00549CE0    push        549CFA
 00549CE5    lea         eax,[ebp-2C]
 00549CE8    mov         edx,2
 00549CED    call        @UStrArrayClr
 00549CF2    ret
>00549CF3    jmp         @HandleFinally
>00549CF8    jmp         00549CE5
 00549CFA    pop         edi
 00549CFB    pop         esi
 00549CFC    pop         ebx
 00549CFD    mov         esp,ebp
 00549CFF    pop         ebp
 00549D00    ret
*}
end;

//00549D04
{*procedure TCustomListView.WMPaint(?:?);
begin
 00549D04    push        ebx
 00549D05    mov         ebx,eax
 00549D07    mov         eax,ebx
 00549D09    call        TWinControl.WMPaint
 00549D0E    movzx       eax,byte ptr [ebx+29D];TCustomListView.FViewStyle:TViewStyle
 00549D15    sub         al,2
>00549D17    jae         00549D29
 00549D19    cmp         byte ptr [ebx+324],0;TCustomListView.FShowWorkAreas:Boolean
>00549D20    je          00549D29
 00549D22    mov         eax,ebx
 00549D24    call        00549B90
 00549D29    pop         ebx
 00549D2A    ret
end;*}

//00549D2C
procedure TListView.SetShowWorkAreas(Value:Boolean);
begin
{*
 00549D2C    push        esi
 00549D2D    mov         esi,eax
 00549D2F    mov         byte ptr [esi+324],dl;TListView.FShowWorkAreas:Boolean
 00549D35    mov         eax,esi
 00549D37    mov         edx,dword ptr [eax]
 00549D39    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00549D3F    pop         esi
 00549D40    ret
*}
end;

//00549D44
{*procedure TCustomListView.CMHintShow(?:?);
begin
 00549D44    push        ebp
 00549D45    mov         ebp,esp
 00549D47    add         esp,0FFFFFFDC
 00549D4A    push        ebx
 00549D4B    push        esi
 00549D4C    push        edi
 00549D4D    xor         ecx,ecx
 00549D4F    mov         dword ptr [ebp-4],ecx
 00549D52    mov         dword ptr [ebp-8],edx
 00549D55    mov         ebx,eax
 00549D57    xor         eax,eax
 00549D59    push        ebp
 00549D5A    push        549E5B
 00549D5F    push        dword ptr fs:[eax]
 00549D62    mov         dword ptr fs:[eax],esp
 00549D65    cmp         word ptr [ebx+3F2],0;TCustomListView.?f3F2:word
>00549D6D    je          00549E3B
 00549D73    mov         eax,dword ptr [ebp-8]
 00549D76    mov         eax,dword ptr [eax+8]
 00549D79    mov         ecx,dword ptr [eax+2C]
 00549D7C    mov         edx,dword ptr [eax+28]
 00549D7F    mov         eax,ebx
 00549D81    call        TCustomListView.GetItemAt
 00549D86    mov         esi,eax
 00549D88    test        esi,esi
>00549D8A    je          00549E45
 00549D90    mov         eax,dword ptr [ebp-8]
 00549D93    mov         eax,dword ptr [eax+8]
 00549D96    mov         dword ptr [ebp-0C],eax
 00549D99    lea         eax,[ebp-4]
 00549D9C    mov         edx,dword ptr [esi+20];TListItem.FCaption:string
 00549D9F    call        @UStrLAsg
 00549DA4    lea         ecx,[ebp-4]
 00549DA7    mov         edx,esi
 00549DA9    mov         eax,ebx
 00549DAB    mov         edi,dword ptr [eax]
 00549DAD    call        dword ptr [edi+150];TCustomListView.sub_00549E6C
 00549DB3    lea         ecx,[ebp-1C]
 00549DB6    xor         edx,edx
 00549DB8    mov         eax,esi
 00549DBA    call        TListItem.DisplayRect
 00549DBF    lea         ecx,[ebp-24]
 00549DC2    lea         edx,[ebp-1C]
 00549DC5    mov         eax,ebx
 00549DC7    call        TControl.ClientToScreen
 00549DCC    mov         eax,dword ptr [ebp-24]
 00549DCF    mov         dword ptr [ebp-1C],eax
 00549DD2    mov         eax,dword ptr [ebp-20]
 00549DD5    mov         dword ptr [ebp-18],eax
 00549DD8    lea         ecx,[ebp-24]
 00549DDB    lea         edx,[ebp-14]
 00549DDE    mov         eax,ebx
 00549DE0    call        TControl.ClientToScreen
 00549DE5    mov         eax,dword ptr [ebp-24]
 00549DE8    mov         dword ptr [ebp-14],eax
 00549DEB    mov         eax,dword ptr [ebp-20]
 00549DEE    mov         dword ptr [ebp-10],eax
 00549DF1    mov         eax,dword ptr [ebp-0C]
 00549DF4    mov         esi,eax
 00549DF6    push        esi
 00549DF7    lea         edi,[esi+18]
 00549DFA    lea         esi,[ebp-1C]
 00549DFD    movs        dword ptr [edi],dword ptr [esi]
 00549DFE    movs        dword ptr [edi],dword ptr [esi]
 00549DFF    movs        dword ptr [edi],dword ptr [esi]
 00549E00    movs        dword ptr [edi],dword ptr [esi]
 00549E01    pop         esi
 00549E02    lea         eax,[esi+38]
 00549E05    mov         edx,dword ptr [ebp-4]
 00549E08    call        @UStrAsg
 00549E0D    push        0E
 00549E0F    call        user32.GetSystemMetrics
 00549E14    add         eax,dword ptr [esi+1C]
 00549E17    mov         dword ptr [esi+0C],eax
 00549E1A    push        0D
 00549E1C    call        user32.GetSystemMetrics
 00549E21    add         eax,dword ptr [esi+18]
 00549E24    mov         dword ptr [esi+8],eax
 00549E27    mov         eax,ebx
 00549E29    call        TControl.GetClientWidth
 00549E2E    mov         dword ptr [esi+10],eax
 00549E31    mov         eax,dword ptr [ebp-8]
 00549E34    xor         edx,edx
 00549E36    mov         dword ptr [eax+0C],edx
>00549E39    jmp         00549E45
 00549E3B    mov         edx,dword ptr [ebp-8]
 00549E3E    mov         eax,ebx
 00549E40    call        TControl.CMHintShow
 00549E45    xor         eax,eax
 00549E47    pop         edx
 00549E48    pop         ecx
 00549E49    pop         ecx
 00549E4A    mov         dword ptr fs:[eax],edx
 00549E4D    push        549E62
 00549E52    lea         eax,[ebp-4]
 00549E55    call        @UStrClr
 00549E5A    ret
>00549E5B    jmp         @HandleFinally
>00549E60    jmp         00549E52
 00549E62    pop         edi
 00549E63    pop         esi
 00549E64    pop         ebx
 00549E65    mov         esp,ebp
 00549E67    pop         ebp
 00549E68    ret
end;*}

//00549E6C
{*procedure sub_00549E6C(?:?);
begin
 00549E6C    push        ebx
 00549E6D    cmp         word ptr [eax+3F2],0;TCustomListView.?f3F2:word
>00549E75    je          00549E8A
 00549E77    push        ecx
 00549E78    mov         ebx,eax
 00549E7A    mov         ecx,edx
 00549E7C    mov         edx,eax
 00549E7E    mov         eax,dword ptr [ebx+3F4];TCustomListView.?f3F4:dword
 00549E84    call        dword ptr [ebx+3F0];TCustomListView.FOnInfoTip
 00549E8A    pop         ebx
 00549E8B    ret
end;*}

//00549E8C
procedure TListView.SetHoverTime(Value:Integer);
begin
{*
 00549E8C    push        ebx
 00549E8D    push        esi
 00549E8E    mov         esi,edx
 00549E90    mov         ebx,eax
 00549E92    mov         eax,ebx
 00549E94    call        TListView.GetHoverTime
 00549E99    cmp         esi,eax
>00549E9B    je          00549EC7
 00549E9D    mov         eax,ebx
 00549E9F    call        TWinControl.HandleAllocated
 00549EA4    test        al,al
>00549EA6    je          00549EC1
 00549EA8    mov         eax,ebx
 00549EAA    call        TWinControl.GetHandle
 00549EAF    mov         ebx,eax
 00549EB1    push        esi
 00549EB2    push        0
 00549EB4    push        1047
 00549EB9    push        ebx
 00549EBA    call        user32.SendMessageW
>00549EBF    jmp         00549EC7
 00549EC1    mov         dword ptr [ebx+304],esi;TListView.FHoverTime:Integer
 00549EC7    pop         esi
 00549EC8    pop         ebx
 00549EC9    ret
*}
end;

//00549ECC
procedure TListView.SetGroupView(Value:Boolean);
begin
{*
 00549ECC    push        ebx
 00549ECD    mov         ebx,eax
 00549ECF    cmp         dl,byte ptr [ebx+41C];TListView.FGroupView:Boolean
>00549ED5    je          00549F07
 00549ED7    mov         byte ptr [ebx+41C],dl;TListView.FGroupView:Boolean
 00549EDD    mov         eax,ebx
 00549EDF    call        TWinControl.HandleAllocated
 00549EE4    test        al,al
>00549EE6    je          00549F07
 00549EE8    mov         eax,ebx
 00549EEA    call        TWinControl.GetHandle
 00549EEF    cmp         byte ptr [ebx+41C],1;TListView.FGroupView:Boolean
 00549EF6    cmc
 00549EF7    sbb         edx,edx
 00549EF9    push        0
 00549EFB    push        edx
 00549EFC    push        109D
 00549F01    push        eax
 00549F02    call        user32.SendMessageW
 00549F07    pop         ebx
 00549F08    ret
*}
end;

//00549F0C
{*function TListView.GetHoverTime:?;
begin
 00549F0C    push        ebx
 00549F0D    mov         ebx,eax
 00549F0F    mov         eax,ebx
 00549F11    call        TWinControl.HandleAllocated
 00549F16    test        al,al
>00549F18    je          00549F34
 00549F1A    mov         eax,ebx
 00549F1C    call        TWinControl.GetHandle
 00549F21    mov         ebx,eax
 00549F23    push        0
 00549F25    push        0
 00549F27    push        1048
 00549F2C    push        ebx
 00549F2D    call        user32.SendMessageW
 00549F32    pop         ebx
 00549F33    ret
 00549F34    mov         eax,dword ptr [ebx+304];TListView.FHoverTime:Integer
 00549F3A    pop         ebx
 00549F3B    ret
end;*}

//00549F3C
procedure sub_00549F3C(?:TCustomListView);
begin
{*
 00549F3C    push        ebx
 00549F3D    push        esi
 00549F3E    push        edi
 00549F3F    mov         ebx,eax
 00549F41    cmp         byte ptr [ebx+2D4],0;TCustomListView.FOwnerData:Boolean
>00549F48    jne         00549FA1
 00549F4A    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00549F50    call        TListItems.GetCount
 00549F55    push        eax
 00549F56    lea         eax,[ebx+428];TCustomListView.FSavedIndents::1
 00549F5C    mov         ecx,1
 00549F61    mov         edx,dword ptr ds:[52F830];:TCustomListView.:1
 00549F67    call        @DynArraySetLength
 00549F6C    add         esp,4
 00549F6F    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00549F75    call        TListItems.GetCount
 00549F7A    mov         edi,eax
 00549F7C    dec         edi
 00549F7D    test        edi,edi
>00549F7F    jl          00549FA1
 00549F81    inc         edi
 00549F82    xor         esi,esi
 00549F84    mov         edx,esi
 00549F86    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00549F8C    call        TListItems.GetItem
 00549F91    mov         eax,dword ptr [eax+10];TListItem.FIndent:Integer
 00549F94    mov         edx,dword ptr [ebx+428];TCustomListView.FSavedIndents::1
 00549F9A    mov         dword ptr [edx+esi*4],eax
 00549F9D    inc         esi
 00549F9E    dec         edi
>00549F9F    jne         00549F84
 00549FA1    pop         edi
 00549FA2    pop         esi
 00549FA3    pop         ebx
 00549FA4    ret
*}
end;

//00549FA8
procedure sub_00549FA8(?:TCustomListView);
begin
{*
 00549FA8    push        ebx
 00549FA9    push        esi
 00549FAA    push        edi
 00549FAB    push        ecx
 00549FAC    mov         ebx,eax
 00549FAE    cmp         byte ptr [ebx+2D4],0;TCustomListView.FOwnerData:Boolean
>00549FB5    jne         0054A020
 00549FB7    mov         eax,dword ptr [ebx+428];TCustomListView.FSavedIndents::1
 00549FBD    mov         dword ptr [esp],eax
 00549FC0    mov         esi,dword ptr [esp]
 00549FC3    test        esi,esi
>00549FC5    je          00549FCC
 00549FC7    sub         esi,4
 00549FCA    mov         esi,dword ptr [esi]
 00549FCC    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00549FD2    call        TListItems.GetCount
 00549FD7    cmp         esi,eax
>00549FD9    jne         0054A00F
 00549FDB    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00549FE1    call        TListItems.GetCount
 00549FE6    mov         edi,eax
 00549FE8    dec         edi
 00549FE9    test        edi,edi
>00549FEB    jl          0054A00F
 00549FED    inc         edi
 00549FEE    xor         esi,esi
 00549FF0    mov         edx,esi
 00549FF2    mov         eax,dword ptr [ebx+2BC];TCustomListView.FListItems:TListItems
 00549FF8    call        TListItems.GetItem
 00549FFD    mov         edx,dword ptr [ebx+428];TCustomListView.FSavedIndents::1
 0054A003    mov         edx,dword ptr [edx+esi*4]
 0054A006    call        TListItem.SetIndent
 0054A00B    inc         esi
 0054A00C    dec         edi
>0054A00D    jne         00549FF0
 0054A00F    lea         eax,[ebx+428];TCustomListView.FSavedIndents::1
 0054A015    mov         edx,dword ptr ds:[52F830];:TCustomListView.:1
 0054A01B    call        @DynArrayClear
 0054A020    pop         edx
 0054A021    pop         edi
 0054A022    pop         esi
 0054A023    pop         ebx
 0054A024    ret
*}
end;

//0054A028
procedure TListView.IsStoredItems(Value:TListItems);
begin
{*
 0054A028    push        ebx
 0054A029    mov         ebx,eax
 0054A02B    mov         eax,ebx
 0054A02D    mov         edx,dword ptr [eax]
 0054A02F    call        dword ptr [edx+5C];TButton.GetAction
 0054A032    test        eax,eax
>0054A034    je          0054A054
 0054A036    mov         eax,ebx
 0054A038    mov         edx,dword ptr [eax]
 0054A03A    call        dword ptr [edx+5C];TButton.GetAction
 0054A03D    mov         edx,dword ptr ds:[51AE1C];TCustomListAction
 0054A043    call        @IsClass
 0054A048    test        al,al
>0054A04A    je          0054A050
 0054A04C    xor         eax,eax
>0054A04E    jmp         0054A05D
 0054A050    mov         al,1
 0054A052    pop         ebx
 0054A053    ret
 0054A054    movzx       eax,byte ptr [ebx+2D4];TListView.FOwnerData:Boolean
 0054A05B    xor         al,1
 0054A05D    pop         ebx
 0054A05E    ret
*}
end;

//0054A060
{*procedure TCustomListView.sub_004E9010(?:?; ?:?; ?:?; ?:?);
begin
 0054A060    push        ebp
 0054A061    mov         ebp,esp
 0054A063    push        ecx
 0054A064    push        ebx
 0054A065    push        esi
 0054A066    push        edi
 0054A067    mov         word ptr [ebp-3],cx
 0054A06B    mov         byte ptr [ebp-1],dl
 0054A06E    mov         ebx,eax
 0054A070    mov         edi,dword ptr [ebp+8]
 0054A073    mov         esi,dword ptr [ebp+0C]
 0054A076    mov         ecx,edi
 0054A078    mov         edx,esi
 0054A07A    mov         eax,ebx
 0054A07C    call        TCustomListView.GetItemAt
 0054A081    test        eax,eax
>0054A083    jne         0054A08E
 0054A085    cmp         byte ptr [ebx+2C0],0;TCustomListView.FClicked:Boolean
>0054A08C    jne         0054A09F
 0054A08E    push        esi
 0054A08F    push        edi
 0054A090    movzx       ecx,word ptr [ebp-3]
 0054A094    movzx       edx,byte ptr [ebp-1]
 0054A098    mov         eax,ebx
 0054A09A    call        TControl.sub_004E9010
 0054A09F    pop         edi
 0054A0A0    pop         esi
 0054A0A1    pop         ebx
 0054A0A2    pop         ecx
 0054A0A3    pop         ebp
 0054A0A4    ret         8
end;*}

//0054A0A8
{*function sub_0054A0A8(?:TCustomListView; ?:?):?;
begin
 0054A0A8    push        ebx
 0054A0A9    push        esi
 0054A0AA    push        edi
 0054A0AB    push        ebp
 0054A0AC    mov         ebp,edx
 0054A0AE    mov         edi,eax
 0054A0B0    mov         eax,dword ptr [edi+2CC];TCustomListView.FListColumns:TListColumns
 0054A0B6    mov         eax,dword ptr [eax+8];TListColumns.FItems:TList<System.Classes.TCollectionItem>
 0054A0B9    mov         ebx,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0054A0BC    dec         ebx
 0054A0BD    test        ebx,ebx
>0054A0BF    jl          0054A0DA
 0054A0C1    inc         ebx
 0054A0C2    xor         esi,esi
 0054A0C4    mov         eax,dword ptr [edi+2CC];TCustomListView.FListColumns:TListColumns
 0054A0CA    mov         edx,esi
 0054A0CC    call        TListColumns.GetItem
 0054A0D1    cmp         ebp,dword ptr [eax+28];TListColumn.FOrderTag:Integer
>0054A0D4    je          0054A0DC
 0054A0D6    inc         esi
 0054A0D7    dec         ebx
>0054A0D8    jne         0054A0C4
 0054A0DA    xor         eax,eax
 0054A0DC    pop         ebp
 0054A0DD    pop         edi
 0054A0DE    pop         esi
 0054A0DF    pop         ebx
 0054A0E0    ret
end;*}

//0054A0E4
{*procedure TCustomListView.WMContextMenu(?:?);
begin
 0054A0E4    push        ebx
 0054A0E5    push        esi
 0054A0E6    add         esp,0FFFFFFDC
 0054A0E9    mov         esi,edx
 0054A0EB    mov         ebx,eax
 0054A0ED    test        byte ptr [ebx+1C],10;TCustomListView.FComponentState:TComponentState
>0054A0F1    jne         0054A0FD
 0054A0F3    mov         eax,ebx
 0054A0F5    mov         edx,dword ptr [eax]
 0054A0F7    call        dword ptr [edx+104];TWinControl.SetFocus
 0054A0FD    mov         eax,dword ptr [esi+8]
 0054A100    call        InvalidPoint
 0054A105    test        al,al
>0054A107    je          0054A15A
 0054A109    mov         eax,ebx
 0054A10B    call        005489C4
 0054A110    test        eax,eax
>0054A112    je          0054A15A
 0054A114    mov         eax,ebx
 0054A116    call        005489C4
 0054A11B    lea         ecx,[esp+14]
 0054A11F    mov         dl,3
 0054A121    call        TListItem.DisplayRect
 0054A126    lea         eax,[esp+14]
 0054A12A    lea         edx,[esp+0C]
 0054A12E    call        TRect.CenterPoint
 0054A133    lea         edx,[esp+0C]
 0054A137    mov         ecx,esp
 0054A139    mov         eax,ebx
 0054A13B    call        TControl.ClientToScreen
 0054A140    movzx       eax,word ptr [esp]
 0054A144    mov         word ptr [esp+8],ax
 0054A149    movzx       eax,word ptr [esp+4]
 0054A14E    mov         word ptr [esp+0A],ax
 0054A153    mov         eax,dword ptr [esp+8]
 0054A157    mov         dword ptr [esi+8],eax
 0054A15A    mov         edx,esi
 0054A15C    mov         eax,ebx
 0054A15E    call        TWinControl.WMContextMenu
 0054A163    add         esp,24
 0054A166    pop         esi
 0054A167    pop         ebx
 0054A168    ret
end;*}

//0054A16C
{*procedure TCustomListView.WMCtlColorEdit(?:?);
begin
 0054A16C    push        ebx
 0054A16D    push        esi
 0054A16E    mov         esi,edx
 0054A170    mov         ebx,eax
 0054A172    test        byte ptr [ebx+65],80;TCustomListView.FAlign:TAlign
>0054A176    je          0054A1A0
 0054A178    cmp         byte ptr [ebx+330],0;TCustomListView.FInBufferedPrintClient:Boolean
>0054A17F    jne         0054A1A0
 0054A181    mov         byte ptr [ebx+330],1;TCustomListView.FInBufferedPrintClient:Boolean
 0054A188    push        0
 0054A18A    push        0
 0054A18C    push        0B04D
 0054A191    mov         eax,dword ptr [ebx+2E8];TCustomListView.FEditHandle:HWND
 0054A197    push        eax
 0054A198    call        user32.PostMessageW
 0054A19D    pop         esi
 0054A19E    pop         ebx
 0054A19F    ret
 0054A1A0    mov         eax,dword ptr [esi+8]
 0054A1A3    push        eax
 0054A1A4    mov         eax,dword ptr [esi+4]
 0054A1A7    push        eax
 0054A1A8    mov         eax,dword ptr [esi]
 0054A1AA    push        eax
 0054A1AB    mov         eax,ebx
 0054A1AD    call        TWinControl.GetHandle
 0054A1B2    push        eax
 0054A1B3    call        user32.DefWindowProcW
 0054A1B8    mov         dword ptr [esi+0C],eax
 0054A1BB    pop         esi
 0054A1BC    pop         ebx
 0054A1BD    ret
end;*}

//0054A1C0
procedure TCustomListView.ClearSelection;
begin
{*
 0054A1C0    push        ebx
 0054A1C1    push        esi
 0054A1C2    push        edi
 0054A1C3    mov         edi,eax
 0054A1C5    mov         eax,dword ptr [edi+2BC];TCustomListView.FListItems:TListItems
 0054A1CB    call        TListItems.GetCount
 0054A1D0    mov         ebx,eax
 0054A1D2    dec         ebx
 0054A1D3    test        ebx,ebx
>0054A1D5    jl          0054A1F7
 0054A1D7    inc         ebx
 0054A1D8    xor         esi,esi
 0054A1DA    mov         eax,dword ptr [edi+2BC];TCustomListView.FListItems:TListItems
 0054A1E0    mov         edx,esi
 0054A1E2    call        TListItems.GetItem
 0054A1E7    xor         ecx,ecx
 0054A1E9    mov         edx,3
 0054A1EE    call        TListItem.SetState
 0054A1F3    inc         esi
 0054A1F4    dec         ebx
>0054A1F5    jne         0054A1DA
 0054A1F7    pop         edi
 0054A1F8    pop         esi
 0054A1F9    pop         ebx
 0054A1FA    ret
*}
end;

//0054A1FC
procedure TCustomListView.CopySelection(Destination:TCustomListControl);
begin
{*
 0054A1FC    push        ebx
 0054A1FD    push        esi
 0054A1FE    push        edi
 0054A1FF    push        ebp
 0054A200    push        ecx
 0054A201    mov         dword ptr [esp],edx
 0054A204    mov         esi,eax
 0054A206    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 0054A20C    call        TListItems.GetCount
 0054A211    mov         edi,eax
 0054A213    dec         edi
 0054A214    test        edi,edi
>0054A216    jl          0054A268
 0054A218    inc         edi
 0054A219    xor         ebx,ebx
 0054A21B    mov         edx,ebx
 0054A21D    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 0054A223    call        TListItems.GetItem
 0054A228    mov         edx,3
 0054A22D    call        005438B4
 0054A232    test        al,al
>0054A234    je          0054A264
 0054A236    mov         edx,ebx
 0054A238    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 0054A23E    call        TListItems.GetItem
 0054A243    mov         eax,dword ptr [eax+28];TListItem.FData:Pointer
 0054A246    push        eax
 0054A247    mov         edx,ebx
 0054A249    mov         eax,dword ptr [esi+2BC];TCustomListView.FListItems:TListItems
 0054A24F    call        TListItems.GetItem
 0054A254    mov         edx,dword ptr [eax+20];TListItem.FCaption:string
 0054A257    mov         eax,dword ptr [esp+4]
 0054A25B    pop         ecx
 0054A25C    mov         ebp,dword ptr [eax]
 0054A25E    call        dword ptr [ebp+110]
 0054A264    inc         ebx
 0054A265    dec         edi
>0054A266    jne         0054A21B
 0054A268    pop         edx
 0054A269    pop         ebp
 0054A26A    pop         edi
 0054A26B    pop         esi
 0054A26C    pop         ebx
 0054A26D    ret
*}
end;

//0054A270
procedure TCustomListView.DeleteSelected;
begin
{*
 0054A270    push        ebp
 0054A271    mov         ebp,esp
 0054A273    push        ecx
 0054A274    push        ebx
 0054A275    push        esi
 0054A276    mov         dword ptr [ebp-4],eax
 0054A279    mov         eax,dword ptr [ebp-4]
 0054A27C    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A282    call        TListItems.BeginUpdate
 0054A287    xor         eax,eax
 0054A289    push        ebp
 0054A28A    push        54A309
 0054A28F    push        dword ptr fs:[eax]
 0054A292    mov         dword ptr fs:[eax],esp
 0054A295    mov         eax,dword ptr [ebp-4]
 0054A298    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A29E    call        TListItems.GetCount
 0054A2A3    mov         ebx,eax
 0054A2A5    dec         ebx
 0054A2A6    cmp         ebx,0
>0054A2A9    jl          0054A2ED
 0054A2AB    mov         eax,dword ptr [ebp-4]
 0054A2AE    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A2B4    mov         edx,ebx
 0054A2B6    call        TListItems.GetItem
 0054A2BB    mov         edx,3
 0054A2C0    call        005438B4
 0054A2C5    test        al,al
>0054A2C7    je          0054A2E7
 0054A2C9    mov         eax,dword ptr [ebp-4]
 0054A2CC    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A2D2    mov         edx,ebx
 0054A2D4    call        TListItems.GetItem
 0054A2D9    mov         edx,eax
 0054A2DB    mov         eax,dword ptr [ebp-4]
 0054A2DE    mov         si,0FFA8
 0054A2E2    call        @CallDynaInst;TCustomListView.sub_00547FB0
 0054A2E7    dec         ebx
 0054A2E8    cmp         ebx,0FFFFFFFF
>0054A2EB    jne         0054A2AB
 0054A2ED    xor         eax,eax
 0054A2EF    pop         edx
 0054A2F0    pop         ecx
 0054A2F1    pop         ecx
 0054A2F2    mov         dword ptr fs:[eax],edx
 0054A2F5    push        54A310
 0054A2FA    mov         eax,dword ptr [ebp-4]
 0054A2FD    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A303    call        TListItems.EndUpdate
 0054A308    ret
>0054A309    jmp         @HandleFinally
>0054A30E    jmp         0054A2FA
 0054A310    pop         esi
 0054A311    pop         ebx
 0054A312    pop         ecx
 0054A313    pop         ebp
 0054A314    ret
*}
end;

//0054A318
procedure TCustomListView.GetCount;
begin
{*
 0054A318    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A31E    call        TListItems.GetCount
 0054A323    ret
*}
end;

//0054A324
procedure TCustomListView.SelectAll;
begin
{*
 0054A324    push        ebx
 0054A325    push        esi
 0054A326    push        edi
 0054A327    mov         edi,eax
 0054A329    mov         eax,dword ptr [edi+2BC];TCustomListView.FListItems:TListItems
 0054A32F    call        TListItems.GetCount
 0054A334    mov         ebx,eax
 0054A336    dec         ebx
 0054A337    test        ebx,ebx
>0054A339    jl          0054A35B
 0054A33B    inc         ebx
 0054A33C    xor         esi,esi
 0054A33E    mov         eax,dword ptr [edi+2BC];TCustomListView.FListItems:TListItems
 0054A344    mov         edx,esi
 0054A346    call        TListItems.GetItem
 0054A34B    mov         cl,1
 0054A34D    mov         edx,3
 0054A352    call        TListItem.SetState
 0054A357    inc         esi
 0054A358    dec         ebx
>0054A359    jne         0054A33E
 0054A35B    pop         edi
 0054A35C    pop         esi
 0054A35D    pop         ebx
 0054A35E    ret
*}
end;

//0054A360
procedure TCustomListView.Clear;
begin
{*
 0054A360    push        ebp
 0054A361    mov         ebp,esp
 0054A363    push        ecx
 0054A364    mov         dword ptr [ebp-4],eax
 0054A367    mov         eax,dword ptr [ebp-4]
 0054A36A    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A370    call        TListItems.BeginUpdate
 0054A375    xor         eax,eax
 0054A377    push        ebp
 0054A378    push        54A3AD
 0054A37D    push        dword ptr fs:[eax]
 0054A380    mov         dword ptr fs:[eax],esp
 0054A383    mov         eax,dword ptr [ebp-4]
 0054A386    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A38C    call        TListItems.Clear
 0054A391    xor         eax,eax
 0054A393    pop         edx
 0054A394    pop         ecx
 0054A395    pop         ecx
 0054A396    mov         dword ptr fs:[eax],edx
 0054A399    push        54A3B4
 0054A39E    mov         eax,dword ptr [ebp-4]
 0054A3A1    mov         eax,dword ptr [eax+2BC];TCustomListView.FListItems:TListItems
 0054A3A7    call        TListItems.EndUpdate
 0054A3AC    ret
>0054A3AD    jmp         @HandleFinally
>0054A3B2    jmp         0054A39E
 0054A3B4    pop         ecx
 0054A3B5    pop         ebp
 0054A3B6    ret
*}
end;

//0054A3B8
procedure TCustomListView.sub_004E9934;
begin
{*
 0054A3B8    mov         eax,[005322FC];TListViewActionLink
 0054A3BD    ret
*}
end;

//0054A3C0
{*procedure TCustomListView.sub_004E980C(?:?; ?:?);
begin
 0054A3C0    push        ebx
 0054A3C1    push        esi
 0054A3C2    push        edi
 0054A3C3    mov         ebx,ecx
 0054A3C5    mov         esi,edx
 0054A3C7    mov         edi,eax
 0054A3C9    mov         ecx,ebx
 0054A3CB    mov         edx,esi
 0054A3CD    mov         eax,edi
 0054A3CF    call        TWinControl.sub_004E980C
 0054A3D4    mov         eax,esi
 0054A3D6    mov         edx,dword ptr ds:[51BC98];TStaticListAction
 0054A3DC    call        @IsClass
 0054A3E1    test        al,al
>0054A3E3    je          0054A420
 0054A3E5    test        bl,bl
>0054A3E7    je          0054A3F2
 0054A3E9    cmp         dword ptr [edi+2A8],0;TCustomListView.FSmallImages:TCustomImageList
>0054A3F0    jne         0054A3FF
 0054A3F2    mov         edx,dword ptr [esi+0AC]
 0054A3F8    mov         eax,edi
 0054A3FA    call        TListView.SetSmallImages
 0054A3FF    test        bl,bl
>0054A401    je          0054A410
 0054A403    mov         eax,edi
 0054A405    mov         edx,dword ptr [eax]
 0054A407    call        dword ptr [edx+108];TCustomListView.sub_0054699C
 0054A40D    inc         eax
>0054A40E    je          0054A420
 0054A410    mov         edx,dword ptr [esi+0D0]
 0054A416    mov         eax,edi
 0054A418    mov         ecx,dword ptr [eax]
 0054A41A    call        dword ptr [ecx+10C];TCustomListView.sub_00546420
 0054A420    pop         edi
 0054A421    pop         esi
 0054A422    pop         ebx
 0054A423    ret
end;*}

//0054A424
procedure TCustomListView.WMVScroll(Message:Messages.TWMHScroll);
begin
{*
 0054A424    push        ebx
 0054A425    push        esi
 0054A426    push        edi
 0054A427    mov         esi,edx
 0054A429    mov         ebx,eax
 0054A42B    call        StyleServices
 0054A430    mov         edx,dword ptr [eax]
 0054A432    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 0054A435    test        al,al
>0054A437    je          0054A479
 0054A439    push        1
 0054A43B    mov         eax,ebx
 0054A43D    call        TWinControl.GetHandle
 0054A442    push        eax
 0054A443    call        user32.GetScrollPos
 0054A448    mov         edi,eax
 0054A44A    mov         edx,esi
 0054A44C    mov         eax,ebx
 0054A44E    call        TWinControl.WMHScroll
 0054A453    push        1
 0054A455    mov         eax,ebx
 0054A457    call        TWinControl.GetHandle
 0054A45C    push        eax
 0054A45D    call        user32.GetScrollPos
 0054A462    cmp         eax,edi
>0054A464    je          0054A482
 0054A466    push        0FF
 0054A468    push        0
 0054A46A    mov         eax,ebx
 0054A46C    call        TWinControl.GetHandle
 0054A471    push        eax
 0054A472    call        user32.InvalidateRect
>0054A477    jmp         0054A482
 0054A479    mov         edx,esi
 0054A47B    mov         eax,ebx
 0054A47D    call        TWinControl.WMHScroll
 0054A482    pop         edi
 0054A483    pop         esi
 0054A484    pop         ebx
 0054A485    ret
*}
end;

Initialization
//0079D448
{*
 0079D448    sub         dword ptr ds:[7CA6C0],1
>0079D44F    jae         0079D467
 0079D451    mov         ecx,dword ptr ds:[532844];TListViewStyleHook
 0079D457    mov         edx,dword ptr ds:[530DF4];TListView
 0079D45D    mov         eax,[005738E0];TCustomStyleEngine
 0079D462    call        TCustomStyleEngine.RegisterStyleHook
 0079D467    ret
*}
Finalization
end.