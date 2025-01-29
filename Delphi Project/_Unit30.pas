//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit30;

interface

uses
  SysUtils, Classes, System.Classes, System.Generics.Collections, System.TypInfo, System.Classes, System.Contnrs, System.ImageList, System.Generics.Collections, System.Generics.Defaults, System.SyncObjs, Winapi.CommCtrl, Vcl.ActnList, System.Generics.Collections, System.Rtti, System.Generics.Defaults, System;

type
  TObjectList = class(TList)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Create;//004CF604
    constructor Create();//004CF5C8
  public
    FOwnsObjects:Boolean;//f10
    procedure Notify(Ptr:Pointer; Action:Classes.TListNotification); virtual;//v4//004CF648
  end;
  TComponentList = class(TObjectList)
  published
    destructor Destroy();//004CF89C
    constructor Create;//004CF864
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    ....FNexus:TComponent;//f14
    destructor Destroy(); virtual;//004CF89C
    procedure Notify(Ptr:Pointer; Action:TListNotification); virtual;//v4//004CF8D4
    procedure HandleFreeNotify(Sender:TObject; AComponent:Classes.TComponent);//004CF8C8
  end;
  TOrderedList = class(TObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Push(AItem:Pointer):Pointer;//004CF93C
    constructor Create();//004CF94C
    destructor Destroy();//004CF990
  public
    FList:TList;//f4
    destructor Destroy(); virtual;//004CF990
    procedure PushItem; virtual; abstract;//v0//00405554
    function PopItem:Pointer; virtual;//v4//004CF9D0
    function PeekItem:Pointer; virtual;//v8//004CF9BC
  end;
  TStack = class(TOrderedList)
  public
    procedure PushItem(AItem:Pointer); virtual;//v0//004CF9F0
  end;
  TComponentListNexusEvent = procedure(Sender:TObject; AComponent:TComponent) of object;;
  TComponentListNexus = class(TComponent)
  public
    FOnFreeNotify:TComponentListNexusEvent;//f40
    f42:word;//f42
    f44:TComponentList;//f44
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//004CF834
  end;
  _TREEITEM = _TREEITEM = record//size=0;
  TASKDIALOG_BUTTON = TASKDIALOG_BUTTON = record//size=8
nButtonID:Integer;//f0
pszButtonText:PWideChar;//f4
end;;
  TBaseImageList = class(TComponent)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure BeforeDestruction;//004D18E4
    procedure Change;//004D1A98
  public
    FUpdateCount:Integer;//f40
    FLinks:TList<System.ImageList.TImageLink>;//f44
    FChanged:Boolean;//f48
    procedure BeforeDestruction; virtual;//004D18E4
    procedure Loaded; virtual;//v10//004D1AE8
    procedure v44; virtual; abstract;//v44//00405554
    procedure v48; virtual; abstract;//v48//00405554
    procedure Change; virtual;//v4C//004D1A98
    procedure Updated; dynamic;//004D1ACC
  end;
  TImageLink = class(TObject)
  published
    procedure Change;//004D1BC0
    destructor Destroy();//004D1B40
    constructor sub_004D1B04;//004D1B04
  public
    FImages:TBaseImageList;//f4
    FImageIndex:TImageIndex;//f8
    FIgnoreIndex:Boolean;//fC
    FOnChange:TNotifyEvent;//f10
    f12:word;//f12
    f14:TCustomActionList;//f14
    FIgnoreImages:Boolean;//f18
    destructor Destroy(); virtual;//004D1B40
    constructor v0; virtual;//v0//004D1B04
    procedure Change; virtual;//v4//004D1BC0
  end;
  TArray<System.ImageList.TImageLink> = array of TImageLink;
//elSize = 4;
  TEnumerator<System.ImageList.TImageLink> = class(TObject)
  published
    function ImageList.TImageLink>.MoveNext:Boolean;//004D1CB8
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<System.ImageList.TImageLink> = class(TObject)
  published
    //procedure ImageList.TImageLink>.ToArray(?:?);//004D1C04
    function ImageList.TImageLink>.GetEnumerator:TEnumerator<System.ImageList.TImageLink>;//004D1BFC
    destructor ImageList.TImageLink>.Destroy();//004D1BD8
  public
    destructor ImageList.TImageLink>.Destroy(); virtual;//004D1BD8
    procedure v0; virtual; abstract;//v0//00405554
    //procedure ImageList.TImageLink>.ToArray(?:?); virtual;//v4//004D1C04
  end;
  TList<System.ImageList.TImageLink>.arrayofT = array of TImageLink;
//elSize = 4;
  TCollectionNotifyEvent<System.ImageList.TImageLink> = procedure(Sender:TObject; const Item:TImageLink; Action:TCollectionNotification) of object;;
  TList<System.ImageList.TImageLink>.TEnumerator = class(TEnumerator<System.ImageList.TImageLink>)
  published
    function ImageList.TImageLink>.TEnumerator.MoveNext:Boolean;//004D1FA0
    constructor sub_004D1F5C(AList:TList<System.ImageList.TImageLink>);//004D1F5C
  public
    FList:TList<System.ImageList.TImageLink>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//004D1F4C
    procedure v4; virtual;//v4//004D1F54
  end;
  TList<System.ImageList.TImageLink> = class(TEnumerable<System.ImageList.TImageLink>)
  published
    procedure ImageList.TImageLink>.Add(Value:TImageLink);//004D1EFC
    //procedure ImageList.TImageLink>.Error(Msg:string; Data:NativeInt; ?:?);//004D1EC4
    procedure ImageList.TImageLink>.GetEnumerator;//004D1F20
    //procedure ImageList.TImageLink>.ToArray(?:?);//004D1F0C
    constructor sub_004D1DC8(AComparer:IComparer<System.ImageList.TImageLink>);//004D1DC8
    constructor sub_004D1D50;//004D1D50
    destructor ImageList.TImageLink>.Destroy();//004D1E78
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FListHelper:TListHelper;//f8
    FItems:TList<System.ImageList.TImageLink>.arrayofT;//f20
    FComparer:IComparer<System.ImageList.TImageLink>;//f24
    FOnNotify:TCollectionNotifyEvent<System.ImageList.TImageLink>;//f28
    destructor ImageList.TImageLink>.Destroy(); virtual;//004D1E78
    procedure v0; virtual;//v0//004D1D30
    //procedure ImageList.TImageLink>.ToArray(?:?); virtual;//v4//004D1F0C
    //procedure v8(?:?); virtual;//v8//004D1D38
    //procedure ImageList.TImageLink>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//004D1EC4
  end;
  TComparer<System.ImageList.TImageLink> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure ImageList.TImageLink>.Default(?:?);//004D1FC0
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
  TSynchroObject = class(TObject)
  published
    function WaitFor(Timeout:Cardinal):TWaitResult;//004D3244
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure Acquire;//004D3234
    procedure Release;//004D3240
  public
    procedure Acquire; virtual;//v0//004D3234
    procedure Release; virtual;//v4//004D3240
    function WaitFor(Timeout:Cardinal):TWaitResult; virtual;//v8//004D3244
  end;
  THandleObjectArray = array of THandleObject;
//elSize = 4;
  THandleObject = class(TSynchroObject)
  published
    function WaitFor(Timeout:Cardinal):TWaitResult;//004D32BC
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Create;//004D3248
    destructor Destroy();//004D328C
  public
    FHandle:NativeUInt;//f4
    FLastError:Integer;//f8
    FUseCOMWait:Boolean;//fC
    destructor Destroy(); virtual;//004D328C
    function WaitFor(Timeout:Cardinal):TWaitResult; virtual;//v8//004D32BC
  end;
  TEvent = class(THandleObject)
  published
    procedure SetEvent;//004D3408
    procedure ResetEvent;//004D3414
    constructor sub_004D3350(EventAttributes:PSecurityAttributes; UseCOMWait:Boolean; Name:string; InitialState:Boolean; ManualReset:Boolean);//004D3350
    constructor Create;//004D33C8
  end;
  TCriticalSection = class(TSynchroObject)
  published
    procedure Release;//004D34B8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    procedure Acquire;//004D34A4
    constructor Create();//004D3420
    destructor Destroy();//004D346C
  public
    FSection:_RTL_CRITICAL_SECTION;//f4
    destructor Destroy(); virtual;//004D346C
    procedure Acquire; virtual;//v0//004D34A4
    procedure Release; virtual;//v4//004D34B8
  end;
  TLightweightEvent = class(TSynchroObject)
  published
    procedure ResetEvent;//004D3A90
    procedure SetEvent;//004D3AA0
    function WaitFor(Timeout:Cardinal):TWaitResult;//004D3B70
    destructor Destroy();//004D3A44
    constructor Create();//004D3948
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Create(SpinCount:Integer);//004D3984
  public
    FLock:TObject;//f4
    FStateAndSpin:Integer;//f8
    FWaiters:Integer;//fC
    FBlockedCount:Integer;//f10
    function WaitFor(Timeout:Cardinal):TWaitResult; virtual;//v8//004D3B70
    function GetIsSet:Boolean;//004D3A70
    function GetSpinCount:Integer;//004D3A84
    procedure SetNewStateAtomically(NewValue:Integer; Mask:Integer);//004D3B20
  end;
  TMultiWaitEventImpl = class(TMultiWaitEvent)
  published
    procedure WaitFor(Timeout:Cardinal);//004D3FFC
    constructor Create;//004D3ED4
  public
    FEvent:TLightweightEvent;//f4
    FWaiters:TArray<System.Types.TMultiWaitEvent.TWaitInfo>;//f8
    procedure v0; virtual;//v0//004D3F10
    procedure v8; virtual;//v8//004D3F20
    procedure vC; virtual;//vC//004D3F48
    procedure v10; virtual;//v10//004D3F58
    //procedure v14(?:?); virtual;//v14//004D3EB0
    procedure v18; virtual;//v18//004D3F4C
    procedure v1C; virtual;//v1C//004D3EC0
    //procedure v20(?:?); virtual;//v20//004D3F5C
    procedure v24; virtual;//v24//004D3FE4
    //function v28:?; virtual;//v28//004D3F30
    //function v2C(?:?):?; virtual;//v2C//004D3F28
    procedure WaitFor(Timeout:Cardinal); virtual;//v30//004D3FFC
  end;
    procedure Notify(Ptr:Pointer; Action:Classes.TListNotification);//004CF648
    procedure Notification(AComponent:TComponent; Operation:TOperation);//004CF834
    procedure Notify(Ptr:Pointer; Action:TListNotification);//004CF8D4
    function PeekItem:Pointer;//004CF9BC
    function PopItem:Pointer;//004CF9D0
    procedure PushItem(AItem:Pointer);//004CF9F0
    function InitCommonControls:Boolean;//004CFB4C
    procedure InitComCtl;//004CFB54
    function InitCommonControlsEx(var ICC:tagINITCOMMONCONTROLSEX):BOOL;//004CFBD4
    function ImageList_Create(CY:Integer; Flags:Windows.UINT; Initial:Integer; Grow:Integer):THandle; stdcall;//004CFC08
    function ImageList_Destroy:BOOL; stdcall;//004CFC10
    function ImageList_GetImageCount:Integer; stdcall;//004CFC18
    function ImageList_SetImageCount(uNewCount:Windows.UINT):Integer; stdcall;//004CFC20
    function ImageList_Add(Image:Windows.HBITMAP; Mask:Windows.HBITMAP):Integer; stdcall;//004CFC28
    function ImageList_SetBkColor(ClrBk:Windows.TColorRef):TColorRef; stdcall;//004CFC30
    function ImageList_GetBkColor:TColorRef; stdcall;//004CFC38
    function ImageList_Draw(Index:Integer; Dest:Windows.HDC; X:Integer; Y:Integer; Style:Windows.UINT):BOOL; stdcall;//004CFC40
    function ImageList_Replace(Index:Integer; Image:Windows.HBITMAP; Mask:Windows.HBITMAP):BOOL; stdcall;//004CFC48
    function ImageList_DrawEx(Index:Integer; Dest:Windows.HDC; X:Integer; Y:Integer; DX:Integer; DY:Integer; Bk:Windows.TColorRef; Fg:Windows.TColorRef; Style:Windows.UINT):BOOL; stdcall;//004CFC50
    function ImageList_Remove(Index:Integer):BOOL; stdcall;//004CFC58
    function ImageList_GetIcon(Index:Integer; Flags:Windows.UINT):HICON; stdcall;//004CFC60
    function ImageList_BeginDrag(Track:Integer; XHotSpot:Integer; YHotSpot:Integer):BOOL; stdcall;//004CFC68
    function ImageList_EndDrag:BOOL;//004CFC70
    function ImageList_DragEnter(X:Integer; Y:Integer):BOOL; stdcall;//004CFC78
    function ImageList_DragLeave:BOOL; stdcall;//004CFC80
    function ImageList_DragMove(Y:Integer):BOOL; stdcall;//004CFC88
    function ImageList_DragShowNolock:BOOL; stdcall;//004CFC90
    function ImageList_GetDragImage(var HotSpot:Windows.TPoint):THandle; stdcall;//004CFC98
    function ImageList_Read:THandle; stdcall;//004CFCA0
    function ImageList_Write(Stream:ActiveX.IStream):BOOL; stdcall;//004CFCA8
    function ImageList_GetIconSize(var CX:Integer; var CY:Integer):BOOL; stdcall;//004CFCB0
    function ImageList_SetIconSize(CX:Integer; CY:Integer):BOOL; stdcall;//004CFCB8
    function ListView_GetNextItem(hWnd:Windows.HWND; iStart:Integer; Flags:Windows.UINT):Integer;//004CFCC0
    function ListView_GetItemRect(hWnd:Windows.HWND; i:Integer; var prc:Windows.TRect; Code:Integer):BOOL;//004CFCE0
    function ListView_EnsureVisible(hwndLV:Windows.HWND; i:Integer; fPartialOK:Windows.BOOL):BOOL;//004CFD1C
    function ListView_SetColumnWidth(hwnd:Windows.HWND; iCol:Integer; cx:Integer):BOOL;//004CFD48
    function ListView_SetItemState(hwndLV:Windows.HWND; i:Integer; data:Windows.UINT; mask:Windows.UINT):BOOL;//004CFD68
    procedure ListView_SetCheckState(hwndLV:Windows.HWND; i:Integer; Checked:Boolean);//004CFD98
    function ListView_SetItemText(hwndLV:Windows.HWND; i:Integer; iSubItem:Integer; pszText:Windows.LPWSTR):BOOL;//004CFDC4
    procedure ListView_SetItemPosition32(hwndLV:Windows.HWND; i:Integer; x:Integer; y:Integer);//004CFDF4
    function TreeView_GetItemRect(hwnd:Windows.HWND; hitem:HTREEITEM; var prc:Windows.TRect; code:Windows.BOOL):BOOL;//004CFE1C
    //function sub_004CFE40(?:HWND; ?:HTREEITEM):?;//004CFE40
    //function sub_004CFE58(?:HWND; ?:HTREEITEM):?;//004CFE58
    //function sub_004CFE70(?:?; ?:HTREEITEM):?;//004CFE70
    //function sub_004CFE88(?:HWND; ?:HTREEITEM):?;//004CFE88
    //function sub_004CFEA0(?:HWND):?;//004CFEA0
    //function sub_004CFEB4(?:?; ?:HTREEITEM):?;//004CFEB4
    //function sub_004CFECC(?:?; ?:HTREEITEM):?;//004CFECC
    //function sub_004CFEE4(?:HWND):?;//004CFEE4
    //function sub_004CFEF8(?:HWND):?;//004CFEF8
    //function sub_004CFF0C(?:?):?;//004CFF0C
    //procedure sub_004CFF20(?:HWND; ?:?);//004CFF20
    //procedure sub_004CFF38(?:HWND; ?:?);//004CFF38
    procedure sub_004CFF50(?:HWND; ?:HTREEITEM);//004CFF50
    function _TrackMouseEvent:BOOL; stdcall;//004CFF68
    function FlatSB_GetScrollInfo(BarFlag:Integer; var ScrollInfo:Windows.TScrollInfo):BOOL; stdcall;//004CFF70
    function FlatSB_GetScrollPos(nBar:Integer):Integer; stdcall;//004CFF78
    function FlatSB_SetScrollInfo(BarFlag:Integer; const ScrollInfo:Windows.TScrollInfo; Redraw:Windows.BOOL):Integer; stdcall;//004CFF80
    function FlatSB_SetScrollPos(nBar:Integer; nPos:Integer; bRedraw:Windows.BOOL):Integer; stdcall;//004CFF88
    function FlatSB_SetScrollProp(index:Integer; newValue:IntPtr; fRedraw:Windows.BOOL):BOOL; stdcall;//004CFF90
    function InitializeFlatSB:BOOL; stdcall;//004CFF98
    function TaskDialogIndirect(const pTaskConfig:TASKDIALOGCONFIG; pnButton:Windows.PInteger; pnRadioButton:Windows.PInteger; pfVerificationFlagChecked:Windows.PBOOL):HRESULT;//004CFFA0
    procedure sub_004D1938(?:TCustomImageList; ?:TChangeLink);//004D1938
    procedure sub_004D199C(?:TBaseImageList; ?:TImageLink);//004D199C
    //function sub_004D19E4(?:TBaseImageList):?;//004D19E4
    //function sub_004D19F4(?:TCustomImageList; ?:?):?;//004D19F4
    procedure Updated;//004D1ACC
    procedure Loaded;//004D1AE8
    //procedure sub_004D1B88(?:?; ?:?);//004D1B88
    procedure sub_004D1D08(?:TList<System.ImageList.TImageLink>);//004D1D08
    //procedure sub_004D1D14(?:?; ?:?);//004D1D14
    //procedure sub_004D1D20(?:?; ?:?; ?:?);//004D1D20
    procedure sub_004D1D30;//004D1D30
    //procedure sub_004D1D38(?:?);//004D1D38
    //function sub_004D1F30(?:?):?;//004D1F30
    procedure sub_004D1F4C;//004D1F4C
    procedure sub_004D1F54;//004D1F54
    procedure sub_004D225C;//004D225C
    //function sub_004D2294(?:?):?;//004D2294
    //function sub_004D22C0(?:?):?;//004D22C0
    //function sub_004D22FC:?;//004D22FC
    procedure sub_004D2334;//004D2334
    //procedure sub_004D239C(?:?);//004D239C
    //procedure sub_004D23BC(?:?);//004D23BC
    //procedure sub_004D23D8(?:?);//004D23D8
    function GetOleThreadWindow:HWND;//004D2FC8
    function InternalCoWaitForMultipleHandles(dwFlags:Windows.DWORD; dwTimeOut:Windows.DWORD; cHandles:LongWord; var Handles:void ; var lpdwIndex:Windows.DWORD):HRESULT; stdcall;//004D309C
    procedure LookupProc;//004D3180
    function CoWaitForMultipleHandles(dwFlags:Windows.DWORD; dwTimeOut:Windows.DWORD; cHandles:LongWord; var Handles:void ; var lpdwIndex:Windows.DWORD):HRESULT;//004D3200
    procedure InternalInitConditionVariable(var ConditionVariable:Windows.TRTLConditionVariable); stdcall;//004D34CC
    procedure InternalWakeAllConditionVariable(var ConditionVariable:Windows.TRTLConditionVariable); stdcall;//004D34DC
    procedure InternalWakeConditionVariable(var ConditionVariable:Windows.TRTLConditionVariable); stdcall;//004D34EC
    function InternalSleepConditionVariableCS(var ConditionVariable:Windows.TRTLConditionVariable; var CriticalSection:Windows.TRTLCriticalSection; dwMilliseconds:Windows.DWORD):BOOL; stdcall;//004D34FC
    function DequeueWaiter:PWaitingThread;//004D3518
    function DequeueWaiterNoLock(var WaitQueue:PWaitingThread):PWaitingThread;//004D3570
    function LockQueue:PWaitingThread;//004D358C
    procedure QueueWaiter(var WaitingThread:TWaitingThread);//004D35E4
    procedure RemoveWaiter(var WaitingThread:TWaitingThread);//004D364C
    function SleepCriticalSection(var CriticalSection:Windows.TRTLCriticalSection; Timeout:Windows.DWORD):Boolean;//004D36E0
    procedure UnlockQueue(WaitQueue:PWaitingThread);//004D37F0
    procedure WakeAll;//004D37F8
    procedure Wake;//004D380C
    function Add(Increment:Integer):Integer;//004D3880
    function CompareExchange(Value:Integer; Comparand:Integer):Integer;//004D388C
    function CompareExchange(Value:TObject; Comparand:TObject):TObject;//004D3898
    function GetNextSpinCycleWillYield:Boolean;//004D38B0
    //procedure sub_004D38C8(?:?);//004D38C8
    procedure SpinCycle;//004D38D0
    procedure Acquire;//004D3E98
    //procedure sub_004D3EB0(?:?);//004D3EB0
    procedure sub_004D3EC0;//004D3EC0
    procedure sub_004D3F10;//004D3F10
    procedure sub_004D3F20;//004D3F20
    //function sub_004D3F28(?:?):?;//004D3F28
    //function sub_004D3F30:?;//004D3F30
    procedure sub_004D3F48;//004D3F48
    procedure sub_004D3F4C;//004D3F4C
    procedure sub_004D3F58;//004D3F58
    //procedure sub_004D3F5C(?:?);//004D3F5C
    procedure sub_004D3FE4;//004D3FE4
    procedure InitConditionVariableProcs;//004D4010

implementation

//004CF5C8
constructor TObjectList.Create();
begin
{*
 004CF5C8    push        ebx
 004CF5C9    push        esi
 004CF5CA    test        dl,dl
>004CF5CC    je          004CF5D6
 004CF5CE    add         esp,0FFFFFFF0
 004CF5D1    call        @ClassCreate
 004CF5D6    mov         ebx,edx
 004CF5D8    mov         esi,eax
 004CF5DA    xor         edx,edx
 004CF5DC    mov         eax,esi
 004CF5DE    call        TObject.Create
 004CF5E3    mov         byte ptr [esi+10],1
 004CF5E7    mov         eax,esi
 004CF5E9    test        bl,bl
>004CF5EB    je          004CF5FC
 004CF5ED    call        @AfterConstruction
 004CF5F2    pop         dword ptr fs:[0]
 004CF5F9    add         esp,0C
 004CF5FC    mov         eax,esi
 004CF5FE    pop         esi
 004CF5FF    pop         ebx
 004CF600    ret
*}
end;

//004CF604
constructor TObjectList.Create;
begin
{*
 004CF604    push        ebp
 004CF605    mov         ebp,esp
 004CF607    push        ecx
 004CF608    push        ebx
 004CF609    push        esi
 004CF60A    test        dl,dl
>004CF60C    je          004CF616
 004CF60E    add         esp,0FFFFFFF0
 004CF611    call        @ClassCreate
 004CF616    mov         ebx,ecx
 004CF618    mov         byte ptr [ebp-1],dl
 004CF61B    mov         esi,eax
 004CF61D    xor         edx,edx
 004CF61F    mov         eax,esi
 004CF621    call        TObject.Create
 004CF626    mov         byte ptr [esi+10],bl
 004CF629    mov         eax,esi
 004CF62B    cmp         byte ptr [ebp-1],0
>004CF62F    je          004CF640
 004CF631    call        @AfterConstruction
 004CF636    pop         dword ptr fs:[0]
 004CF63D    add         esp,0C
 004CF640    mov         eax,esi
 004CF642    pop         esi
 004CF643    pop         ebx
 004CF644    pop         ecx
 004CF645    pop         ebp
 004CF646    ret
*}
end;

//004CF648
procedure TObjectList.Notify(Ptr:Pointer; Action:Classes.TListNotification);
begin
{*
 004CF648    push        ebx
 004CF649    push        esi
 004CF64A    push        edi
 004CF64B    mov         ebx,ecx
 004CF64D    mov         edi,edx
 004CF64F    mov         esi,eax
 004CF651    cmp         bl,2
>004CF654    jne         004CF663
 004CF656    cmp         byte ptr [esi+10],0
>004CF65A    je          004CF663
 004CF65C    mov         eax,edi
 004CF65E    call        TObject.Free
 004CF663    mov         ecx,ebx
 004CF665    mov         edx,edi
 004CF667    mov         eax,esi
 004CF669    call        TList.Notify
 004CF66E    pop         edi
 004CF66F    pop         esi
 004CF670    pop         ebx
 004CF671    ret
*}
end;

//004CF834
procedure TComponentListNexus.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 004CF834    push        ebx
 004CF835    push        esi
 004CF836    push        edi
 004CF837    mov         ebx,ecx
 004CF839    mov         edi,edx
 004CF83B    mov         esi,eax
 004CF83D    cmp         bl,1
>004CF840    jne         004CF853
 004CF842    cmp         word ptr [esi+42],0;TComponentListNexus.?f42:word
>004CF847    je          004CF853
 004CF849    mov         ecx,edi
 004CF84B    mov         edx,esi
 004CF84D    mov         eax,dword ptr [esi+44];TComponentListNexus.?f44:TComponentList
 004CF850    call        dword ptr [esi+40];TComponentListNexus.FOnFreeNotify
 004CF853    mov         ecx,ebx
 004CF855    mov         edx,edi
 004CF857    mov         eax,esi
 004CF859    call        TComponent.Notification
 004CF85E    pop         edi
 004CF85F    pop         esi
 004CF860    pop         ebx
 004CF861    ret
*}
end;

//004CF864
constructor TComponentList.Create;
begin
{*
 004CF864    push        ebx
 004CF865    push        esi
 004CF866    test        dl,dl
>004CF868    je          004CF872
 004CF86A    add         esp,0FFFFFFF0
 004CF86D    call        @ClassCreate
 004CF872    mov         ebx,edx
 004CF874    mov         esi,eax
 004CF876    xor         edx,edx
 004CF878    mov         eax,esi
 004CF87A    call        TObjectList.Create
 004CF87F    mov         eax,esi
 004CF881    test        bl,bl
>004CF883    je          004CF894
 004CF885    call        @AfterConstruction
 004CF88A    pop         dword ptr fs:[0]
 004CF891    add         esp,0C
 004CF894    mov         eax,esi
 004CF896    pop         esi
 004CF897    pop         ebx
 004CF898    ret
*}
end;

//004CF89C
destructor TComponentList.Destroy();
begin
{*
 004CF89C    push        ebx
 004CF89D    push        esi
 004CF89E    call        @BeforeDestruction
 004CF8A3    mov         ebx,edx
 004CF8A5    mov         esi,eax
 004CF8A7    mov         dl,0FC
 004CF8A9    and         dl,bl
 004CF8AB    mov         eax,esi
 004CF8AD    call        TList.Destroy
 004CF8B2    mov         eax,dword ptr [esi+14]
 004CF8B5    call        TObject.Free
 004CF8BA    test        bl,bl
>004CF8BC    jle         004CF8C5
 004CF8BE    mov         eax,esi
 004CF8C0    call        @ClassDestroy
 004CF8C5    pop         esi
 004CF8C6    pop         ebx
 004CF8C7    ret
*}
end;

//004CF8C8
procedure TComponentList.HandleFreeNotify(Sender:TObject; AComponent:Classes.TComponent);
begin
{*
 004CF8C8    mov         edx,ecx
 004CF8CA    xor         ecx,ecx
 004CF8CC    call        TList.ExtractItem
 004CF8D1    ret
*}
end;

//004CF8D4
procedure TComponentList.Notify(Ptr:Pointer; Action:TListNotification);
begin
{*
 004CF8D4    push        ebx
 004CF8D5    push        esi
 004CF8D6    push        edi
 004CF8D7    push        ebp
 004CF8D8    mov         ebx,ecx
 004CF8DA    mov         esi,edx
 004CF8DC    mov         edi,eax
 004CF8DE    cmp         dword ptr [edi+14],0;TComponentList......FNexus:TComponent
>004CF8E2    jne         004CF901
 004CF8E4    xor         ecx,ecx
 004CF8E6    mov         dl,1
 004CF8E8    mov         eax,[004CF6F4];TComponentListNexus
 004CF8ED    call        TComponent.Create;TComponentListNexus.Create
 004CF8F2    mov         ebp,eax
 004CF8F4    mov         dword ptr [edi+14],ebp;TComponentList.......FNexus:TComponent
 004CF8F7    mov         dword ptr [ebp+44],edi;TComponentListNexus.?f44:TComponentList
 004CF8FA    mov         dword ptr [ebp+40],4CF8C8;TComponentListNexus.FOnFreeNotify:TComponentListNexusEvent TCo...
 004CF901    mov         eax,ebx
 004CF903    sub         al,1
>004CF905    jb          004CF90D
 004CF907    sub         al,2
>004CF909    jb          004CF91D
>004CF90B    jmp         004CF92B
 004CF90D    test        esi,esi
>004CF90F    je          004CF92B
 004CF911    mov         edx,dword ptr [edi+14];TComponentList........FNexus:TComponent
 004CF914    mov         eax,esi
 004CF916    call        TComponent.FreeNotification
>004CF91B    jmp         004CF92B
 004CF91D    test        esi,esi
>004CF91F    je          004CF92B
 004CF921    mov         edx,dword ptr [edi+14];TComponentList.........FNexus:TComponent
 004CF924    mov         eax,esi
 004CF926    call        TComponent.RemoveFreeNotification
 004CF92B    mov         ecx,ebx
 004CF92D    mov         edx,esi
 004CF92F    mov         eax,edi
 004CF931    call        TObjectList.Notify
 004CF936    pop         ebp
 004CF937    pop         edi
 004CF938    pop         esi
 004CF939    pop         ebx
 004CF93A    ret
*}
end;

//004CF93C
function TOrderedList.Push(AItem:Pointer):Pointer;
begin
{*
 004CF93C    push        ebx
 004CF93D    mov         ebx,edx
 004CF93F    mov         edx,ebx
 004CF941    mov         ecx,dword ptr [eax]
 004CF943    call        dword ptr [ecx]
 004CF945    mov         eax,ebx
 004CF947    pop         ebx
 004CF948    ret
*}
end;

//004CF94C
constructor TOrderedList.Create();
begin
{*
 004CF94C    push        ebx
 004CF94D    push        esi
 004CF94E    test        dl,dl
>004CF950    je          004CF95A
 004CF952    add         esp,0FFFFFFF0
 004CF955    call        @ClassCreate
 004CF95A    mov         ebx,edx
 004CF95C    mov         esi,eax
 004CF95E    xor         edx,edx
 004CF960    mov         eax,esi
 004CF962    call        TObject.Create
 004CF967    mov         dl,1
 004CF969    mov         eax,[0046C204];TList
 004CF96E    call        TObject.Create
 004CF973    mov         dword ptr [esi+4],eax
 004CF976    mov         eax,esi
 004CF978    test        bl,bl
>004CF97A    je          004CF98B
 004CF97C    call        @AfterConstruction
 004CF981    pop         dword ptr fs:[0]
 004CF988    add         esp,0C
 004CF98B    mov         eax,esi
 004CF98D    pop         esi
 004CF98E    pop         ebx
 004CF98F    ret
*}
end;

//004CF990
destructor TOrderedList.Destroy();
begin
{*
 004CF990    push        ebx
 004CF991    push        esi
 004CF992    call        @BeforeDestruction
 004CF997    mov         ebx,edx
 004CF999    mov         esi,eax
 004CF99B    mov         eax,dword ptr [esi+4]
 004CF99E    call        TObject.Free
 004CF9A3    mov         dl,0FC
 004CF9A5    and         dl,bl
 004CF9A7    mov         eax,esi
 004CF9A9    call        TObject.Destroy
 004CF9AE    test        bl,bl
>004CF9B0    jle         004CF9B9
 004CF9B2    mov         eax,esi
 004CF9B4    call        @ClassDestroy
 004CF9B9    pop         esi
 004CF9BA    pop         ebx
 004CF9BB    ret
*}
end;

//004CF9BC
function TOrderedList.PeekItem:Pointer;
begin
{*
 004CF9BC    mov         edx,dword ptr [eax+4]
 004CF9BF    mov         ecx,dword ptr [edx+8]
 004CF9C2    dec         ecx
 004CF9C3    mov         eax,edx
 004CF9C5    mov         edx,ecx
 004CF9C7    call        TList.Get
 004CF9CC    ret
*}
end;

//004CF9D0
function TOrderedList.PopItem:Pointer;
begin
{*
 004CF9D0    push        ebx
 004CF9D1    push        esi
 004CF9D2    mov         ebx,eax
 004CF9D4    mov         eax,ebx
 004CF9D6    mov         edx,dword ptr [eax]
 004CF9D8    call        dword ptr [edx+8]
 004CF9DB    mov         esi,eax
 004CF9DD    mov         eax,dword ptr [ebx+4]
 004CF9E0    mov         edx,dword ptr [eax+8]
 004CF9E3    dec         edx
 004CF9E4    call        TList.Delete
 004CF9E9    mov         eax,esi
 004CF9EB    pop         esi
 004CF9EC    pop         ebx
 004CF9ED    ret
*}
end;

//004CF9F0
procedure TStack.PushItem(AItem:Pointer);
begin
{*
 004CF9F0    mov         eax,dword ptr [eax+4]
 004CF9F3    call        TList.Add
 004CF9F8    ret
*}
end;

//004CFB4C
function comctl32.InitCommonControls:Boolean;
begin
{*
 004CFB4C    jmp         dword ptr ds:[905498]
*}
end;

//004CFB54
procedure InitComCtl;
begin
{*
 004CFB54    cmp         dword ptr ds:[7CA4AC],0
>004CFB5B    jne         004CFB8A
 004CFB5D    push        4CFB8C
 004CFB62    call        kernel32.GetModuleHandleW
 004CFB67    mov         [007CA4AC],eax
 004CFB6C    cmp         dword ptr ds:[7CA4AC],0
>004CFB73    je          004CFB8A
 004CFB75    push        4CFBA8
 004CFB7A    mov         eax,[007CA4AC]
 004CFB7F    push        eax
 004CFB80    call        GetProcAddress
 004CFB85    mov         [007CA4B0],eax
 004CFB8A    ret
*}
end;

//004CFBD4
function InitCommonControlsEx(var ICC:tagINITCOMMONCONTROLSEX):BOOL;
begin
{*
 004CFBD4    push        ebx
 004CFBD5    mov         ebx,eax
 004CFBD7    cmp         dword ptr ds:[7CA4AC],0
>004CFBDE    jne         004CFBE5
 004CFBE0    call        InitComCtl
 004CFBE5    cmp         dword ptr ds:[7CA4B0],0
>004CFBEC    je          004CFBF9
 004CFBEE    push        ebx
 004CFBEF    call        dword ptr ds:[7CA4B0]
 004CFBF5    test        eax,eax
>004CFBF7    jne         004CFBFD
 004CFBF9    xor         eax,eax
>004CFBFB    jmp         004CFBFF
 004CFBFD    mov         al,1
 004CFBFF    neg         al
 004CFC01    sbb         eax,eax
 004CFC03    pop         ebx
 004CFC04    ret
*}
end;

//004CFC08
function comctl32.ImageList_Create(CY:Integer; Flags:Windows.UINT; Initial:Integer; Grow:Integer):THandle; stdcall;
begin
{*
 004CFC08    jmp         dword ptr ds:[905494]
*}
end;

//004CFC10
function comctl32.ImageList_Destroy:BOOL; stdcall;
begin
{*
 004CFC10    jmp         dword ptr ds:[905490]
*}
end;

//004CFC18
function comctl32.ImageList_GetImageCount:Integer; stdcall;
begin
{*
 004CFC18    jmp         dword ptr ds:[90548C]
*}
end;

//004CFC20
function comctl32.ImageList_SetImageCount(uNewCount:Windows.UINT):Integer; stdcall;
begin
{*
 004CFC20    jmp         dword ptr ds:[905488]
*}
end;

//004CFC28
function comctl32.ImageList_Add(Image:Windows.HBITMAP; Mask:Windows.HBITMAP):Integer; stdcall;
begin
{*
 004CFC28    jmp         dword ptr ds:[905484]
*}
end;

//004CFC30
function comctl32.ImageList_SetBkColor(ClrBk:Windows.TColorRef):TColorRef; stdcall;
begin
{*
 004CFC30    jmp         dword ptr ds:[905480]
*}
end;

//004CFC38
function comctl32.ImageList_GetBkColor:TColorRef; stdcall;
begin
{*
 004CFC38    jmp         dword ptr ds:[90547C]
*}
end;

//004CFC40
function comctl32.ImageList_Draw(Index:Integer; Dest:Windows.HDC; X:Integer; Y:Integer; Style:Windows.UINT):BOOL; stdcall;
begin
{*
 004CFC40    jmp         dword ptr ds:[905478]
*}
end;

//004CFC48
function comctl32.ImageList_Replace(Index:Integer; Image:Windows.HBITMAP; Mask:Windows.HBITMAP):BOOL; stdcall;
begin
{*
 004CFC48    jmp         dword ptr ds:[905474]
*}
end;

//004CFC50
function comctl32.ImageList_DrawEx(Index:Integer; Dest:Windows.HDC; X:Integer; Y:Integer; DX:Integer; DY:Integer; Bk:Windows.TColorRef; Fg:Windows.TColorRef; Style:Windows.UINT):BOOL; stdcall;
begin
{*
 004CFC50    jmp         dword ptr ds:[905470]
*}
end;

//004CFC58
function comctl32.ImageList_Remove(Index:Integer):BOOL; stdcall;
begin
{*
 004CFC58    jmp         dword ptr ds:[90546C]
*}
end;

//004CFC60
function comctl32.ImageList_GetIcon(Index:Integer; Flags:Windows.UINT):HICON; stdcall;
begin
{*
 004CFC60    jmp         dword ptr ds:[905468]
*}
end;

//004CFC68
function comctl32.ImageList_BeginDrag(Track:Integer; XHotSpot:Integer; YHotSpot:Integer):BOOL; stdcall;
begin
{*
 004CFC68    jmp         dword ptr ds:[905464]
*}
end;

//004CFC70
function comctl32.ImageList_EndDrag:BOOL;
begin
{*
 004CFC70    jmp         dword ptr ds:[905460]
*}
end;

//004CFC78
function comctl32.ImageList_DragEnter(X:Integer; Y:Integer):BOOL; stdcall;
begin
{*
 004CFC78    jmp         dword ptr ds:[90545C]
*}
end;

//004CFC80
function comctl32.ImageList_DragLeave:BOOL; stdcall;
begin
{*
 004CFC80    jmp         dword ptr ds:[905458]
*}
end;

//004CFC88
function comctl32.ImageList_DragMove(Y:Integer):BOOL; stdcall;
begin
{*
 004CFC88    jmp         dword ptr ds:[905454]
*}
end;

//004CFC90
function comctl32.ImageList_DragShowNolock:BOOL; stdcall;
begin
{*
 004CFC90    jmp         dword ptr ds:[905450]
*}
end;

//004CFC98
function comctl32.ImageList_GetDragImage(var HotSpot:Windows.TPoint):THandle; stdcall;
begin
{*
 004CFC98    jmp         dword ptr ds:[90544C]
*}
end;

//004CFCA0
function comctl32.ImageList_Read:THandle; stdcall;
begin
{*
 004CFCA0    jmp         dword ptr ds:[905448]
*}
end;

//004CFCA8
function comctl32.ImageList_Write(Stream:ActiveX.IStream):BOOL; stdcall;
begin
{*
 004CFCA8    jmp         dword ptr ds:[905444]
*}
end;

//004CFCB0
function comctl32.ImageList_GetIconSize(var CX:Integer; var CY:Integer):BOOL; stdcall;
begin
{*
 004CFCB0    jmp         dword ptr ds:[905440]
*}
end;

//004CFCB8
function comctl32.ImageList_SetIconSize(CX:Integer; CY:Integer):BOOL; stdcall;
begin
{*
 004CFCB8    jmp         dword ptr ds:[90543C]
*}
end;

//004CFCC0
function ListView_GetNextItem(hWnd:Windows.HWND; iStart:Integer; Flags:Windows.UINT):Integer;
begin
{*
 004CFCC0    push        ebx
 004CFCC1    push        esi
 004CFCC2    push        edi
 004CFCC3    mov         edi,ecx
 004CFCC5    mov         esi,edx
 004CFCC7    mov         ebx,eax
 004CFCC9    movzx       eax,di
 004CFCCC    or          eax,0
 004CFCCF    push        eax
 004CFCD0    push        esi
 004CFCD1    push        100C
 004CFCD6    push        ebx
 004CFCD7    call        user32.SendMessageW
 004CFCDC    pop         edi
 004CFCDD    pop         esi
 004CFCDE    pop         ebx
 004CFCDF    ret
*}
end;

//004CFCE0
function ListView_GetItemRect(hWnd:Windows.HWND; i:Integer; var prc:Windows.TRect; Code:Integer):BOOL;
begin
{*
 004CFCE0    push        ebp
 004CFCE1    mov         ebp,esp
 004CFCE3    push        ebx
 004CFCE4    push        esi
 004CFCE5    push        edi
 004CFCE6    mov         ebx,ecx
 004CFCE8    mov         edi,edx
 004CFCEA    mov         esi,eax
 004CFCEC    test        ebx,ebx
>004CFCEE    je          004CFD04
 004CFCF0    mov         eax,dword ptr [ebp+8]
 004CFCF3    mov         dword ptr [ebx],eax
 004CFCF5    push        ebx
 004CFCF6    push        edi
 004CFCF7    push        100E
 004CFCFC    push        esi
 004CFCFD    call        user32.SendMessageW
>004CFD02    jmp         004CFD12
 004CFD04    push        0
 004CFD06    push        edi
 004CFD07    push        100E
 004CFD0C    push        esi
 004CFD0D    call        user32.SendMessageW
 004CFD12    pop         edi
 004CFD13    pop         esi
 004CFD14    pop         ebx
 004CFD15    pop         ebp
 004CFD16    ret         4
*}
end;

//004CFD1C
function ListView_EnsureVisible(hwndLV:Windows.HWND; i:Integer; fPartialOK:Windows.BOOL):BOOL;
begin
{*
 004CFD1C    push        ebx
 004CFD1D    push        esi
 004CFD1E    push        edi
 004CFD1F    mov         edi,ecx
 004CFD21    mov         esi,edx
 004CFD23    mov         ebx,eax
 004CFD25    movzx       eax,di
 004CFD28    or          eax,0
 004CFD2B    push        eax
 004CFD2C    push        esi
 004CFD2D    push        1013
 004CFD32    push        ebx
 004CFD33    call        user32.SendMessageW
 004CFD38    test        eax,eax
 004CFD3A    setne       al
 004CFD3D    neg         al
 004CFD3F    sbb         eax,eax
 004CFD41    pop         edi
 004CFD42    pop         esi
 004CFD43    pop         ebx
 004CFD44    ret
*}
end;

//004CFD48
function ListView_SetColumnWidth(hwnd:Windows.HWND; iCol:Integer; cx:Integer):BOOL;
begin
{*
 004CFD48    push        ebx
 004CFD49    push        esi
 004CFD4A    push        edi
 004CFD4B    mov         edi,ecx
 004CFD4D    mov         esi,edx
 004CFD4F    mov         ebx,eax
 004CFD51    movzx       eax,di
 004CFD54    or          eax,0
 004CFD57    push        eax
 004CFD58    push        esi
 004CFD59    push        101E
 004CFD5E    push        ebx
 004CFD5F    call        user32.SendMessageW
 004CFD64    pop         edi
 004CFD65    pop         esi
 004CFD66    pop         ebx
 004CFD67    ret
*}
end;

//004CFD68
function ListView_SetItemState(hwndLV:Windows.HWND; i:Integer; data:Windows.UINT; mask:Windows.UINT):BOOL;
begin
{*
 004CFD68    push        ebp
 004CFD69    mov         ebp,esp
 004CFD6B    add         esp,0FFFFFFC4
 004CFD6E    push        ebx
 004CFD6F    push        esi
 004CFD70    mov         esi,edx
 004CFD72    mov         ebx,eax
 004CFD74    mov         eax,dword ptr [ebp+8]
 004CFD77    mov         dword ptr [ebp-2C],eax
 004CFD7A    mov         dword ptr [ebp-30],ecx
 004CFD7D    lea         eax,[ebp-3C]
 004CFD80    push        eax
 004CFD81    push        esi
 004CFD82    push        102B
 004CFD87    push        ebx
 004CFD88    call        user32.SendMessageW
 004CFD8D    pop         esi
 004CFD8E    pop         ebx
 004CFD8F    mov         esp,ebp
 004CFD91    pop         ebp
 004CFD92    ret         4
*}
end;

//004CFD98
procedure ListView_SetCheckState(hwndLV:Windows.HWND; i:Integer; Checked:Boolean);
begin
{*
 004CFD98    add         esp,0FFFFFFC4
 004CFD9B    mov         dword ptr [esp+10],0F000
 004CFDA3    and         ecx,1
 004CFDA6    inc         ecx
 004CFDA7    shl         ecx,0C
 004CFDAA    mov         dword ptr [esp+0C],ecx
 004CFDAE    mov         ecx,esp
 004CFDB0    push        ecx
 004CFDB1    push        edx
 004CFDB2    push        102B
 004CFDB7    push        eax
 004CFDB8    call        user32.SendMessageW
 004CFDBD    add         esp,3C
 004CFDC0    ret
*}
end;

//004CFDC4
function ListView_SetItemText(hwndLV:Windows.HWND; i:Integer; iSubItem:Integer; pszText:Windows.LPWSTR):BOOL;
begin
{*
 004CFDC4    push        ebp
 004CFDC5    mov         ebp,esp
 004CFDC7    add         esp,0FFFFFFC4
 004CFDCA    push        ebx
 004CFDCB    push        esi
 004CFDCC    mov         esi,edx
 004CFDCE    mov         ebx,eax
 004CFDD0    mov         dword ptr [ebp-34],ecx
 004CFDD3    mov         eax,dword ptr [ebp+8]
 004CFDD6    mov         dword ptr [ebp-28],eax
 004CFDD9    lea         eax,[ebp-3C]
 004CFDDC    push        eax
 004CFDDD    push        esi
 004CFDDE    push        1074
 004CFDE3    push        ebx
 004CFDE4    call        user32.SendMessageW
 004CFDE9    pop         esi
 004CFDEA    pop         ebx
 004CFDEB    mov         esp,ebp
 004CFDED    pop         ebp
 004CFDEE    ret         4
*}
end;

//004CFDF4
procedure ListView_SetItemPosition32(hwndLV:Windows.HWND; i:Integer; x:Integer; y:Integer);
begin
{*
 004CFDF4    push        ebp
 004CFDF5    mov         ebp,esp
 004CFDF7    add         esp,0FFFFFFF8
 004CFDFA    mov         dword ptr [ebp-8],ecx
 004CFDFD    mov         ecx,dword ptr [ebp+8]
 004CFE00    mov         dword ptr [ebp-4],ecx
 004CFE03    lea         ecx,[ebp-8]
 004CFE06    push        ecx
 004CFE07    push        edx
 004CFE08    push        1031
 004CFE0D    push        eax
 004CFE0E    call        user32.SendMessageW
 004CFE13    pop         ecx
 004CFE14    pop         ecx
 004CFE15    pop         ebp
 004CFE16    ret         4
*}
end;

//004CFE1C
function TreeView_GetItemRect(hwnd:Windows.HWND; hitem:HTREEITEM; var prc:Windows.TRect; code:Windows.BOOL):BOOL;
begin
{*
 004CFE1C    push        ebp
 004CFE1D    mov         ebp,esp
 004CFE1F    push        ebx
 004CFE20    push        esi
 004CFE21    mov         ebx,ecx
 004CFE23    mov         esi,eax
 004CFE25    mov         dword ptr [ebx],edx
 004CFE27    push        ebx
 004CFE28    mov         eax,dword ptr [ebp+8]
 004CFE2B    push        eax
 004CFE2C    push        1104
 004CFE31    push        esi
 004CFE32    call        user32.SendMessageW
 004CFE37    pop         esi
 004CFE38    pop         ebx
 004CFE39    pop         ebp
 004CFE3A    ret         4
*}
end;

//004CFE40
{*function sub_004CFE40(?:HWND; ?:HTREEITEM):?;
begin
 004CFE40    push        ebx
 004CFE41    push        esi
 004CFE42    mov         esi,edx
 004CFE44    mov         ebx,eax
 004CFE46    push        esi
 004CFE47    push        4
 004CFE49    push        110A
 004CFE4E    push        ebx
 004CFE4F    call        user32.SendMessageW
 004CFE54    pop         esi
 004CFE55    pop         ebx
 004CFE56    ret
end;*}

//004CFE58
{*function sub_004CFE58(?:HWND; ?:HTREEITEM):?;
begin
 004CFE58    push        ebx
 004CFE59    push        esi
 004CFE5A    mov         esi,edx
 004CFE5C    mov         ebx,eax
 004CFE5E    push        esi
 004CFE5F    push        1
 004CFE61    push        110A
 004CFE66    push        ebx
 004CFE67    call        user32.SendMessageW
 004CFE6C    pop         esi
 004CFE6D    pop         ebx
 004CFE6E    ret
end;*}

//004CFE70
{*function sub_004CFE70(?:?; ?:HTREEITEM):?;
begin
 004CFE70    push        ebx
 004CFE71    push        esi
 004CFE72    mov         esi,edx
 004CFE74    mov         ebx,eax
 004CFE76    push        esi
 004CFE77    push        2
 004CFE79    push        110A
 004CFE7E    push        ebx
 004CFE7F    call        user32.SendMessageW
 004CFE84    pop         esi
 004CFE85    pop         ebx
 004CFE86    ret
end;*}

//004CFE88
{*function sub_004CFE88(?:HWND; ?:HTREEITEM):?;
begin
 004CFE88    push        ebx
 004CFE89    push        esi
 004CFE8A    mov         esi,edx
 004CFE8C    mov         ebx,eax
 004CFE8E    push        esi
 004CFE8F    push        3
 004CFE91    push        110A
 004CFE96    push        ebx
 004CFE97    call        user32.SendMessageW
 004CFE9C    pop         esi
 004CFE9D    pop         ebx
 004CFE9E    ret
end;*}

//004CFEA0
{*function sub_004CFEA0(?:HWND):?;
begin
 004CFEA0    push        ebx
 004CFEA1    mov         ebx,eax
 004CFEA3    push        0
 004CFEA5    push        5
 004CFEA7    push        110A
 004CFEAC    push        ebx
 004CFEAD    call        user32.SendMessageW
 004CFEB2    pop         ebx
 004CFEB3    ret
end;*}

//004CFEB4
{*function sub_004CFEB4(?:?; ?:HTREEITEM):?;
begin
 004CFEB4    push        ebx
 004CFEB5    push        esi
 004CFEB6    mov         esi,edx
 004CFEB8    mov         ebx,eax
 004CFEBA    push        esi
 004CFEBB    push        6
 004CFEBD    push        110A
 004CFEC2    push        ebx
 004CFEC3    call        user32.SendMessageW
 004CFEC8    pop         esi
 004CFEC9    pop         ebx
 004CFECA    ret
end;*}

//004CFECC
{*function sub_004CFECC(?:?; ?:HTREEITEM):?;
begin
 004CFECC    push        ebx
 004CFECD    push        esi
 004CFECE    mov         esi,edx
 004CFED0    mov         ebx,eax
 004CFED2    push        esi
 004CFED3    push        7
 004CFED5    push        110A
 004CFEDA    push        ebx
 004CFEDB    call        user32.SendMessageW
 004CFEE0    pop         esi
 004CFEE1    pop         ebx
 004CFEE2    ret
end;*}

//004CFEE4
{*function sub_004CFEE4(?:HWND):?;
begin
 004CFEE4    push        ebx
 004CFEE5    mov         ebx,eax
 004CFEE7    push        0
 004CFEE9    push        9
 004CFEEB    push        110A
 004CFEF0    push        ebx
 004CFEF1    call        user32.SendMessageW
 004CFEF6    pop         ebx
 004CFEF7    ret
end;*}

//004CFEF8
{*function sub_004CFEF8(?:HWND):?;
begin
 004CFEF8    push        ebx
 004CFEF9    mov         ebx,eax
 004CFEFB    push        0
 004CFEFD    push        8
 004CFEFF    push        110A
 004CFF04    push        ebx
 004CFF05    call        user32.SendMessageW
 004CFF0A    pop         ebx
 004CFF0B    ret
end;*}

//004CFF0C
{*function sub_004CFF0C(?:?):?;
begin
 004CFF0C    push        ebx
 004CFF0D    mov         ebx,eax
 004CFF0F    push        0
 004CFF11    push        0
 004CFF13    push        110A
 004CFF18    push        ebx
 004CFF19    call        user32.SendMessageW
 004CFF1E    pop         ebx
 004CFF1F    ret
end;*}

//004CFF20
{*procedure sub_004CFF20(?:HWND; ?:?);
begin
 004CFF20    push        ebx
 004CFF21    push        esi
 004CFF22    mov         esi,edx
 004CFF24    mov         ebx,eax
 004CFF26    push        esi
 004CFF27    push        9
 004CFF29    push        110B
 004CFF2E    push        ebx
 004CFF2F    call        user32.SendMessageW
 004CFF34    pop         esi
 004CFF35    pop         ebx
 004CFF36    ret
end;*}

//004CFF38
{*procedure sub_004CFF38(?:HWND; ?:?);
begin
 004CFF38    push        ebx
 004CFF39    push        esi
 004CFF3A    mov         esi,edx
 004CFF3C    mov         ebx,eax
 004CFF3E    push        esi
 004CFF3F    push        8
 004CFF41    push        110B
 004CFF46    push        ebx
 004CFF47    call        user32.SendMessageW
 004CFF4C    pop         esi
 004CFF4D    pop         ebx
 004CFF4E    ret
end;*}

//004CFF50
procedure sub_004CFF50(?:HWND; ?:HTREEITEM);
begin
{*
 004CFF50    push        ebx
 004CFF51    push        esi
 004CFF52    mov         esi,edx
 004CFF54    mov         ebx,eax
 004CFF56    push        esi
 004CFF57    push        5
 004CFF59    push        110B
 004CFF5E    push        ebx
 004CFF5F    call        user32.SendMessageW
 004CFF64    pop         esi
 004CFF65    pop         ebx
 004CFF66    ret
*}
end;

//004CFF68
function comctl32._TrackMouseEvent:BOOL; stdcall;
begin
{*
 004CFF68    jmp         dword ptr ds:[905438]
*}
end;

//004CFF70
function comctl32.FlatSB_GetScrollInfo(BarFlag:Integer; var ScrollInfo:Windows.TScrollInfo):BOOL; stdcall;
begin
{*
 004CFF70    jmp         dword ptr ds:[905434]
*}
end;

//004CFF78
function comctl32.FlatSB_GetScrollPos(nBar:Integer):Integer; stdcall;
begin
{*
 004CFF78    jmp         dword ptr ds:[905430]
*}
end;

//004CFF80
function comctl32.FlatSB_SetScrollInfo(BarFlag:Integer; const ScrollInfo:Windows.TScrollInfo; Redraw:Windows.BOOL):Integer; stdcall;
begin
{*
 004CFF80    jmp         dword ptr ds:[90542C]
*}
end;

//004CFF88
function comctl32.FlatSB_SetScrollPos(nBar:Integer; nPos:Integer; bRedraw:Windows.BOOL):Integer; stdcall;
begin
{*
 004CFF88    jmp         dword ptr ds:[905428]
*}
end;

//004CFF90
function comctl32.FlatSB_SetScrollProp(index:Integer; newValue:IntPtr; fRedraw:Windows.BOOL):BOOL; stdcall;
begin
{*
 004CFF90    jmp         dword ptr ds:[905424]
*}
end;

//004CFF98
function comctl32.InitializeFlatSB:BOOL; stdcall;
begin
{*
 004CFF98    jmp         dword ptr ds:[905420]
*}
end;

//004CFFA0
function TaskDialogIndirect(const pTaskConfig:TASKDIALOGCONFIG; pnButton:Windows.PInteger; pnRadioButton:Windows.PInteger; pfVerificationFlagChecked:Windows.PBOOL):HRESULT;
begin
{*
 004CFFA0    push        ebp
 004CFFA1    mov         ebp,esp
 004CFFA3    push        ecx
 004CFFA4    push        ebx
 004CFFA5    push        esi
 004CFFA6    push        edi
 004CFFA7    mov         dword ptr [ebp-4],ecx
 004CFFAA    mov         edi,edx
 004CFFAC    mov         esi,eax
 004CFFAE    cmp         dword ptr ds:[7CA4B4],0
>004CFFB5    je          004CFFCB
 004CFFB7    mov         eax,dword ptr [ebp+8]
 004CFFBA    push        eax
 004CFFBB    mov         eax,dword ptr [ebp-4]
 004CFFBE    push        eax
 004CFFBF    push        edi
 004CFFC0    push        esi
 004CFFC1    call        dword ptr ds:[7CA4B4]
 004CFFC7    mov         ebx,eax
>004CFFC9    jmp         004D000E
 004CFFCB    call        InitComCtl
 004CFFD0    mov         ebx,80004001
 004CFFD5    cmp         dword ptr ds:[7CA4AC],0
>004CFFDC    je          004D000E
 004CFFDE    push        4D0018
 004CFFE3    mov         eax,[007CA4AC]
 004CFFE8    push        eax
 004CFFE9    call        GetProcAddress
 004CFFEE    mov         [007CA4B4],eax
 004CFFF3    cmp         dword ptr ds:[7CA4B4],0
>004CFFFA    je          004D000E
 004CFFFC    mov         eax,dword ptr [ebp+8]
 004CFFFF    push        eax
 004D0000    mov         eax,dword ptr [ebp-4]
 004D0003    push        eax
 004D0004    push        edi
 004D0005    push        esi
 004D0006    call        dword ptr ds:[7CA4B4]
 004D000C    mov         ebx,eax
 004D000E    mov         eax,ebx
 004D0010    pop         edi
 004D0011    pop         esi
 004D0012    pop         ebx
 004D0013    pop         ecx
 004D0014    pop         ebp
 004D0015    ret         4
*}
end;

//004D18E4
procedure TBaseImageList.BeforeDestruction;
begin
{*
 004D18E4    push        ebx
 004D18E5    push        esi
 004D18E6    push        edi
 004D18E7    mov         esi,eax
 004D18E9    cmp         dword ptr [esi+44],0;TBaseImageList.FLinks:TList<System.ImageList.TImageLink>
>004D18ED    je          004D192B
 004D18EF    mov         eax,esi
 004D18F1    call        004D19E4
 004D18F6    mov         ebx,eax
 004D18F8    dec         ebx
 004D18F9    cmp         ebx,0
>004D18FC    jl          004D191E
 004D18FE    mov         edi,dword ptr [esi+44];TBaseImageList.FLinks:TList<System.ImageList.TImageLink>
 004D1901    lea         eax,[edi+8]
 004D1904    mov         edx,ebx
 004D1906    call        00434534
 004D190B    mov         eax,dword ptr [edi+20]
 004D190E    mov         eax,dword ptr [eax+ebx*4]
 004D1911    xor         edx,edx
 004D1913    call        004D1B88
 004D1918    dec         ebx
 004D1919    cmp         ebx,0FFFFFFFF
>004D191C    jne         004D18FE
 004D191E    mov         eax,dword ptr [esi+44];TBaseImageList.FLinks:TList<System.ImageList.TImageLink>
 004D1921    call        TObject.Free
 004D1926    xor         eax,eax
 004D1928    mov         dword ptr [esi+44],eax;TBaseImageList.FLinks:TList<System.ImageList.TImageLink>
 004D192B    mov         eax,esi
 004D192D    call        TComponent.BeforeDestruction
 004D1932    pop         edi
 004D1933    pop         esi
 004D1934    pop         ebx
 004D1935    ret
*}
end;

//004D1938
procedure sub_004D1938(?:TCustomImageList; ?:TChangeLink);
begin
{*
 004D1938    push        ebx
 004D1939    push        esi
 004D193A    push        edi
 004D193B    add         esp,0FFFFFFF4
 004D193E    mov         esi,edx
 004D1940    mov         ebx,eax
 004D1942    test        esi,esi
>004D1944    je          004D1994
 004D1946    cmp         dword ptr [ebx+44],0
>004D194A    jne         004D195B
 004D194C    mov         dl,1
 004D194E    mov         eax,[004D0C1C];TList<System.ImageList.TImageLink>
 004D1953    call        004D1D50
 004D1958    mov         dword ptr [ebx+44],eax
 004D195B    mov         eax,dword ptr [ebx+44]
 004D195E    mov         edi,esi
 004D1960    mov         dword ptr [esp],edi
 004D1963    add         eax,8
 004D1966    mov         dword ptr [esp+4],eax
 004D196A    mov         edx,esp
 004D196C    mov         eax,dword ptr [esp+4]
 004D1970    call        00434714
 004D1975    test        eax,eax
 004D1977    setge       al
 004D197A    test        al,al
>004D197C    jne         004D1991
 004D197E    mov         eax,dword ptr [ebx+44]
 004D1981    mov         dword ptr [esp+8],edi
 004D1985    lea         edx,[esp+8]
 004D1989    add         eax,8
 004D198C    call        0043489C
 004D1991    mov         dword ptr [esi+4],ebx
 004D1994    add         esp,0C
 004D1997    pop         edi
 004D1998    pop         esi
 004D1999    pop         ebx
 004D199A    ret
*}
end;

//004D199C
procedure sub_004D199C(?:TBaseImageList; ?:TImageLink);
begin
{*
 004D199C    push        ebx
 004D199D    push        esi
 004D199E    add         esp,0FFFFFFF8
 004D19A1    mov         esi,edx
 004D19A3    mov         ebx,eax
 004D19A5    test        esi,esi
>004D19A7    je          004D19DD
 004D19A9    mov         eax,dword ptr [ebx+44]
 004D19AC    test        eax,eax
>004D19AE    je          004D19D8
 004D19B0    mov         dword ptr [esp],esi
 004D19B3    add         eax,8
 004D19B6    mov         dword ptr [esp+4],eax
 004D19BA    mov         edx,esp
 004D19BC    mov         eax,dword ptr [esp+4]
 004D19C0    call        00434878
 004D19C5    mov         eax,dword ptr [ebx+44]
 004D19C8    cmp         dword ptr [eax+8],0
>004D19CC    jne         004D19D8
 004D19CE    call        TObject.Free
 004D19D3    xor         eax,eax
 004D19D5    mov         dword ptr [ebx+44],eax
 004D19D8    xor         eax,eax
 004D19DA    mov         dword ptr [esi+4],eax
 004D19DD    pop         ecx
 004D19DE    pop         edx
 004D19DF    pop         esi
 004D19E0    pop         ebx
 004D19E1    ret
*}
end;

//004D19E4
{*function sub_004D19E4(?:TBaseImageList):?;
begin
 004D19E4    mov         edx,dword ptr [eax+44];TBaseImageList.FLinks:TList<System.ImageList.TImageLink>
 004D19E7    test        edx,edx
>004D19E9    je          004D19EF
 004D19EB    mov         eax,dword ptr [edx+8]
 004D19EE    ret
 004D19EF    xor         eax,eax
 004D19F1    ret
end;*}

//004D19F4
{*function sub_004D19F4(?:TCustomImageList; ?:?):?;
begin
 004D19F4    push        ebp
 004D19F5    mov         ebp,esp
 004D19F7    add         esp,0FFFFFFEC
 004D19FA    push        ebx
 004D19FB    push        esi
 004D19FC    xor         ecx,ecx
 004D19FE    mov         dword ptr [ebp-14],ecx
 004D1A01    mov         ebx,edx
 004D1A03    mov         esi,eax
 004D1A05    xor         eax,eax
 004D1A07    push        ebp
 004D1A08    push        4D1A87
 004D1A0D    push        dword ptr fs:[eax]
 004D1A10    mov         dword ptr fs:[eax],esp
 004D1A13    test        ebx,ebx
>004D1A15    jl          004D1A22
 004D1A17    mov         eax,esi
 004D1A19    call        004D19E4
 004D1A1E    cmp         ebx,eax
>004D1A20    jl          004D1A5E
 004D1A22    mov         dword ptr [ebp-10],ebx
 004D1A25    mov         byte ptr [ebp-0C],0
 004D1A29    mov         eax,esi
 004D1A2B    call        004D19E4
 004D1A30    mov         dword ptr [ebp-8],eax
 004D1A33    mov         byte ptr [ebp-4],0
 004D1A37    lea         eax,[ebp-10]
 004D1A3A    push        eax
 004D1A3B    push        1
 004D1A3D    lea         edx,[ebp-14]
 004D1A40    mov         eax,[007C4578];^SResString163:TResStringRec
 004D1A45    call        LoadResString
 004D1A4A    mov         ecx,dword ptr [ebp-14]
 004D1A4D    mov         dl,1
 004D1A4F    mov         eax,[004180BC];EListError
 004D1A54    call        Exception.CreateFmt;EListError.Create
 004D1A59    call        @RaiseExcept
 004D1A5E    mov         esi,dword ptr [esi+44]
 004D1A61    lea         eax,[esi+8]
 004D1A64    mov         edx,ebx
 004D1A66    call        00434534
 004D1A6B    mov         eax,dword ptr [esi+20]
 004D1A6E    mov         ebx,dword ptr [eax+ebx*4]
 004D1A71    xor         eax,eax
 004D1A73    pop         edx
 004D1A74    pop         ecx
 004D1A75    pop         ecx
 004D1A76    mov         dword ptr fs:[eax],edx
 004D1A79    push        4D1A8E
 004D1A7E    lea         eax,[ebp-14]
 004D1A81    call        @UStrClr
 004D1A86    ret
>004D1A87    jmp         @HandleFinally
>004D1A8C    jmp         004D1A7E
 004D1A8E    mov         eax,ebx
 004D1A90    pop         esi
 004D1A91    pop         ebx
 004D1A92    mov         esp,ebp
 004D1A94    pop         ebp
 004D1A95    ret
end;*}

//004D1A98
procedure TBaseImageList.Change;
begin
{*
 004D1A98    push        ebx
 004D1A99    mov         ebx,eax
 004D1A9B    mov         byte ptr [ebx+48],1;TBaseImageList.FChanged:Boolean
 004D1A9F    movzx       eax,word ptr [ebx+1C];TBaseImageList.FComponentState:TComponentState
 004D1AA3    and         ax,word ptr ds:[4D1AC4];0x49 gvar_004D1AC4
 004D1AAA    movzx       edx,word ptr ds:[4D1AC8];0x0 gvar_004D1AC8
 004D1AB1    cmp         dx,ax
>004D1AB4    jne         004D1AC1
 004D1AB6    mov         eax,ebx
 004D1AB8    mov         edx,dword ptr [eax]
 004D1ABA    call        dword ptr [edx+44];@AbstractError
 004D1ABD    mov         byte ptr [ebx+48],0;TBaseImageList.FChanged:Boolean
 004D1AC1    pop         ebx
 004D1AC2    ret
*}
end;

//004D1ACC
procedure TBaseImageList.Updated;
begin
{*
 004D1ACC    push        ebx
 004D1ACD    mov         ebx,eax
 004D1ACF    mov         eax,ebx
 004D1AD1    call        TComponent.Updated
 004D1AD6    cmp         byte ptr [ebx+48],0;TBaseImageList.FChanged:Boolean
>004D1ADA    je          004D1AE3
 004D1ADC    mov         eax,ebx
 004D1ADE    mov         edx,dword ptr [eax]
 004D1AE0    call        dword ptr [edx+4C];TBaseImageList.Change
 004D1AE3    pop         ebx
 004D1AE4    ret
*}
end;

//004D1AE8
procedure TBaseImageList.Loaded;
begin
{*
 004D1AE8    push        ebx
 004D1AE9    mov         ebx,eax
 004D1AEB    mov         eax,ebx
 004D1AED    call        TComponent.Loaded
 004D1AF2    cmp         byte ptr [ebx+48],0;TBaseImageList.FChanged:Boolean
>004D1AF6    je          004D1AFF
 004D1AF8    mov         eax,ebx
 004D1AFA    mov         edx,dword ptr [eax]
 004D1AFC    call        dword ptr [edx+4C];TBaseImageList.Change
 004D1AFF    pop         ebx
 004D1B00    ret
*}
end;

//004D1B04
constructor sub_004D1B04;
begin
{*
 004D1B04    push        ebx
 004D1B05    push        esi
 004D1B06    test        dl,dl
>004D1B08    je          004D1B12
 004D1B0A    add         esp,0FFFFFFF0
 004D1B0D    call        @ClassCreate
 004D1B12    mov         ebx,edx
 004D1B14    mov         esi,eax
 004D1B16    xor         edx,edx
 004D1B18    mov         eax,esi
 004D1B1A    call        TObject.Create
 004D1B1F    mov         dword ptr [esi+8],0FFFFFFFF;TImageLink.FImageIndex:TImageIndex
 004D1B26    mov         eax,esi
 004D1B28    test        bl,bl
>004D1B2A    je          004D1B3B
 004D1B2C    call        @AfterConstruction
 004D1B31    pop         dword ptr fs:[0]
 004D1B38    add         esp,0C
 004D1B3B    mov         eax,esi
 004D1B3D    pop         esi
 004D1B3E    pop         ebx
 004D1B3F    ret
*}
end;

//004D1B40
destructor TImageLink.Destroy();
begin
{*
 004D1B40    push        ebx
 004D1B41    push        esi
 004D1B42    call        @BeforeDestruction
 004D1B47    mov         ebx,edx
 004D1B49    mov         esi,eax
 004D1B4B    mov         eax,dword ptr [esi+4];TImageLink.FImages:TBaseImageList
 004D1B4E    test        eax,eax
>004D1B50    je          004D1B59
 004D1B52    mov         edx,esi
 004D1B54    call        004D199C
 004D1B59    mov         dl,0FC
 004D1B5B    and         dl,bl
 004D1B5D    mov         eax,esi
 004D1B5F    call        TObject.Destroy
 004D1B64    test        bl,bl
>004D1B66    jle         004D1B6F
 004D1B68    mov         eax,esi
 004D1B6A    call        @ClassDestroy
 004D1B6F    pop         esi
 004D1B70    pop         ebx
 004D1B71    ret
*}
end;

//004D1B88
{*procedure sub_004D1B88(?:?; ?:?);
begin
 004D1B88    push        ebx
 004D1B89    push        esi
 004D1B8A    mov         esi,edx
 004D1B8C    mov         ebx,eax
 004D1B8E    mov         eax,dword ptr [ebx+4]
 004D1B91    cmp         esi,eax
>004D1B93    je          004D1BBA
 004D1B95    test        eax,eax
>004D1B97    je          004D1BA0
 004D1B99    mov         edx,ebx
 004D1B9B    call        004D199C
 004D1BA0    test        esi,esi
>004D1BA2    je          004D1BAD
 004D1BA4    mov         edx,ebx
 004D1BA6    mov         eax,esi
 004D1BA8    call        004D1938
 004D1BAD    cmp         byte ptr [ebx+18],0
>004D1BB1    jne         004D1BBA
 004D1BB3    mov         eax,ebx
 004D1BB5    mov         edx,dword ptr [eax]
 004D1BB7    call        dword ptr [edx+4]
 004D1BBA    pop         esi
 004D1BBB    pop         ebx
 004D1BBC    ret
end;*}

//004D1BC0
procedure TImageLink.Change;
begin
{*
 004D1BC0    push        ebx
 004D1BC1    cmp         word ptr [eax+12],0;TImageLink.?f12:word
>004D1BC6    je          004D1BD3
 004D1BC8    mov         ebx,eax
 004D1BCA    mov         edx,dword ptr [eax+4];TImageLink.FImages:TBaseImageList
 004D1BCD    mov         eax,dword ptr [ebx+14];TImageLink.?f14:TCustomActionList
 004D1BD0    call        dword ptr [ebx+10];TImageLink.FOnChange
 004D1BD3    pop         ebx
 004D1BD4    ret
*}
end;

//004D1BD8
destructor TEnumerable<System.ImageList.TImageLink>.Destroy();
begin
{*
 004D1BD8    push        ebx
 004D1BD9    push        esi
 004D1BDA    call        @BeforeDestruction
 004D1BDF    mov         ebx,edx
 004D1BE1    mov         esi,eax
 004D1BE3    mov         dl,0FC
 004D1BE5    and         dl,bl
 004D1BE7    mov         eax,esi
 004D1BE9    call        TObject.Destroy
 004D1BEE    test        bl,bl
>004D1BF0    jle         004D1BF9
 004D1BF2    mov         eax,esi
 004D1BF4    call        @ClassDestroy
 004D1BF9    pop         esi
 004D1BFA    pop         ebx
 004D1BFB    ret
*}
end;

//004D1BFC
function TEnumerable<System.ImageList.TImageLink>.GetEnumerator:TEnumerator<System.ImageList.TImageLink>;
begin
{*
 004D1BFC    mov         edx,dword ptr [eax]
 004D1BFE    call        dword ptr [edx]
 004D1C00    ret
*}
end;

//004D1C04
{*procedure TEnumerable<System.ImageList.TImageLink>.ToArray(?:?);
begin
 004D1C04    push        ebp
 004D1C05    mov         ebp,esp
 004D1C07    add         esp,0FFFFFFF4
 004D1C0A    push        ebx
 004D1C0B    mov         dword ptr [ebp-4],edx
 004D1C0E    mov         ebx,eax
 004D1C10    mov         dl,1
 004D1C12    mov         eax,[004D0C1C];TList<System.ImageList.TImageLink>
 004D1C17    call        004D1D50
 004D1C1C    mov         dword ptr [ebp-8],eax
 004D1C1F    xor         eax,eax
 004D1C21    push        ebp
 004D1C22    push        4D1CAC
 004D1C27    push        dword ptr fs:[eax]
 004D1C2A    mov         dword ptr fs:[eax],esp
 004D1C2D    mov         eax,ebx
 004D1C2F    call        TEnumerable<System.ImageList.TImageLink>.GetEnumerator
 004D1C34    mov         dword ptr [ebp-0C],eax
 004D1C37    xor         eax,eax
 004D1C39    push        ebp
 004D1C3A    push        4D1C84
 004D1C3F    push        dword ptr fs:[eax]
 004D1C42    mov         dword ptr fs:[eax],esp
>004D1C45    jmp         004D1C5A
 004D1C47    mov         eax,dword ptr [ebp-0C]
 004D1C4A    mov         edx,dword ptr [eax]
 004D1C4C    call        dword ptr [edx]
 004D1C4E    mov         ebx,eax
 004D1C50    mov         edx,ebx
 004D1C52    mov         eax,dword ptr [ebp-8]
 004D1C55    call        TList<System.ImageList.TImageLink>.Add
 004D1C5A    mov         eax,dword ptr [ebp-0C]
 004D1C5D    call        TEnumerator<System.ImageList.TImageLink>.MoveNext
 004D1C62    test        al,al
>004D1C64    jne         004D1C47
 004D1C66    xor         eax,eax
 004D1C68    pop         edx
 004D1C69    pop         ecx
 004D1C6A    pop         ecx
 004D1C6B    mov         dword ptr fs:[eax],edx
 004D1C6E    push        4D1C8B
 004D1C73    cmp         dword ptr [ebp-0C],0
>004D1C77    je          004D1C83
 004D1C79    mov         dl,1
 004D1C7B    mov         eax,dword ptr [ebp-0C]
 004D1C7E    mov         ecx,dword ptr [eax]
 004D1C80    call        dword ptr [ecx-4]
 004D1C83    ret
>004D1C84    jmp         @HandleFinally
>004D1C89    jmp         004D1C73
 004D1C8B    mov         edx,dword ptr [ebp-4]
 004D1C8E    mov         eax,dword ptr [ebp-8]
 004D1C91    call        TList<System.ImageList.TImageLink>.ToArray
 004D1C96    xor         eax,eax
 004D1C98    pop         edx
 004D1C99    pop         ecx
 004D1C9A    pop         ecx
 004D1C9B    mov         dword ptr fs:[eax],edx
 004D1C9E    push        4D1CB3
 004D1CA3    mov         eax,dword ptr [ebp-8]
 004D1CA6    call        TObject.Free
 004D1CAB    ret
>004D1CAC    jmp         @HandleFinally
>004D1CB1    jmp         004D1CA3
 004D1CB3    pop         ebx
 004D1CB4    mov         esp,ebp
 004D1CB6    pop         ebp
 004D1CB7    ret
end;*}

//004D1CB8
function TEnumerator<System.ImageList.TImageLink>.MoveNext:Boolean;
begin
{*
 004D1CB8    mov         edx,dword ptr [eax]
 004D1CBA    call        dword ptr [edx+4]
 004D1CBD    ret
*}
end;

//004D1D08
procedure sub_004D1D08(?:TList<System.ImageList.TImageLink>);
begin
{*
 004D1D08    add         eax,8
 004D1D0B    call        004357A0
 004D1D10    ret
*}
end;

//004D1D14
{*procedure sub_004D1D14(?:?; ?:?);
begin
 004D1D14    push        ebx
 004D1D15    mov         edx,dword ptr [edx]
 004D1D17    mov         ebx,dword ptr [eax]
 004D1D19    call        dword ptr [ebx+8]
 004D1D1C    pop         ebx
 004D1D1D    ret
end;*}

//004D1D20
{*procedure sub_004D1D20(?:?; ?:?; ?:?);
begin
 004D1D20    push        ebx
 004D1D21    mov         edx,dword ptr [edx]
 004D1D23    mov         ecx,dword ptr [ecx]
 004D1D25    mov         eax,dword ptr [eax+24]
 004D1D28    mov         ebx,dword ptr [eax]
 004D1D2A    call        dword ptr [ebx+0C]
 004D1D2D    pop         ebx
 004D1D2E    ret
end;*}

//004D1D30
procedure sub_004D1D30;
begin
{*
 004D1D30    call        TList<System.ImageList.TImageLink>.GetEnumerator
 004D1D35    ret
*}
end;

//004D1D38
{*procedure sub_004D1D38(?:?);
begin
 004D1D38    push        ebx
 004D1D39    cmp         word ptr [eax+2A],0
>004D1D3E    je          004D1D4D
 004D1D40    push        ecx
 004D1D41    mov         ebx,eax
 004D1D43    mov         ecx,edx
 004D1D45    mov         edx,eax
 004D1D47    mov         eax,dword ptr [ebx+2C]
 004D1D4A    call        dword ptr [ebx+28]
 004D1D4D    pop         ebx
 004D1D4E    ret
end;*}

//004D1D50
constructor sub_004D1D50;
begin
{*
 004D1D50    push        ebp
 004D1D51    mov         ebp,esp
 004D1D53    push        0
 004D1D55    push        ebx
 004D1D56    push        esi
 004D1D57    test        dl,dl
>004D1D59    je          004D1D63
 004D1D5B    add         esp,0FFFFFFF0
 004D1D5E    call        @ClassCreate
 004D1D63    mov         ebx,edx
 004D1D65    mov         esi,eax
 004D1D67    xor         eax,eax
 004D1D69    push        ebp
 004D1D6A    push        4D1DA4
 004D1D6F    push        dword ptr fs:[eax]
 004D1D72    mov         dword ptr fs:[eax],esp
 004D1D75    lea         edx,[ebp-4]
 004D1D78    mov         eax,[004D20A4];TComparer<System.ImageList.TImageLink>
 004D1D7D    call        TComparer<System.ImageList.TImageLink>.Default
 004D1D82    mov         ecx,dword ptr [ebp-4]
 004D1D85    xor         edx,edx
 004D1D87    mov         eax,esi
 004D1D89    call        004D1DC8
 004D1D8E    xor         eax,eax
 004D1D90    pop         edx
 004D1D91    pop         ecx
 004D1D92    pop         ecx
 004D1D93    mov         dword ptr fs:[eax],edx
 004D1D96    push        4D1DAB
 004D1D9B    lea         eax,[ebp-4]
 004D1D9E    call        @IntfClear
 004D1DA3    ret
>004D1DA4    jmp         @HandleFinally
>004D1DA9    jmp         004D1D9B
 004D1DAB    mov         eax,esi
 004D1DAD    test        bl,bl
>004D1DAF    je          004D1DC0
 004D1DB1    call        @AfterConstruction
 004D1DB6    pop         dword ptr fs:[0]
 004D1DBD    add         esp,0C
 004D1DC0    mov         eax,esi
 004D1DC2    pop         esi
 004D1DC3    pop         ebx
 004D1DC4    pop         ecx
 004D1DC5    pop         ebp
 004D1DC6    ret
*}
end;

//004D1DC8
constructor sub_004D1DC8(AComparer:IComparer<System.ImageList.TImageLink>);
begin
{*
 004D1DC8    push        ebp
 004D1DC9    mov         ebp,esp
 004D1DCB    push        0
 004D1DCD    push        ebx
 004D1DCE    push        esi
 004D1DCF    push        edi
 004D1DD0    test        dl,dl
>004D1DD2    je          004D1DDC
 004D1DD4    add         esp,0FFFFFFF0
 004D1DD7    call        @ClassCreate
 004D1DDC    mov         esi,ecx
 004D1DDE    mov         ebx,edx
 004D1DE0    mov         edi,eax
 004D1DE2    xor         eax,eax
 004D1DE4    push        ebp
 004D1DE5    push        4D1E53
 004D1DEA    push        dword ptr fs:[eax]
 004D1DED    mov         dword ptr fs:[eax],esp
 004D1DF0    xor         edx,edx
 004D1DF2    mov         eax,edi
 004D1DF4    call        TObject.Create
 004D1DF9    mov         dword ptr [edi+14],edi
 004D1DFC    mov         dword ptr [edi+10],4D1D14;sub_004D1D14
 004D1E03    mov         dword ptr [edi+1C],edi
 004D1E06    mov         dword ptr [edi+18],4D1D20;sub_004D1D20
 004D1E0D    mov         eax,[004D0820];TList<System.ImageList.TImageLink>.arrayofT
 004D1E12    mov         dword ptr [edi+0C],eax
 004D1E15    lea         eax,[edi+24]
 004D1E18    mov         edx,esi
 004D1E1A    call        @IntfCopy
 004D1E1F    cmp         dword ptr [edi+24],0
>004D1E23    jne         004D1E3D
 004D1E25    lea         edx,[ebp-4]
 004D1E28    mov         eax,[004D20A4];TComparer<System.ImageList.TImageLink>
 004D1E2D    call        TComparer<System.ImageList.TImageLink>.Default
 004D1E32    mov         edx,dword ptr [ebp-4]
 004D1E35    lea         eax,[edi+24]
 004D1E38    call        @IntfCopy
 004D1E3D    xor         eax,eax
 004D1E3F    pop         edx
 004D1E40    pop         ecx
 004D1E41    pop         ecx
 004D1E42    mov         dword ptr fs:[eax],edx
 004D1E45    push        4D1E5A
 004D1E4A    lea         eax,[ebp-4]
 004D1E4D    call        @IntfClear
 004D1E52    ret
>004D1E53    jmp         @HandleFinally
>004D1E58    jmp         004D1E4A
 004D1E5A    mov         eax,edi
 004D1E5C    test        bl,bl
>004D1E5E    je          004D1E6F
 004D1E60    call        @AfterConstruction
 004D1E65    pop         dword ptr fs:[0]
 004D1E6C    add         esp,0C
 004D1E6F    mov         eax,edi
 004D1E71    pop         edi
 004D1E72    pop         esi
 004D1E73    pop         ebx
 004D1E74    pop         ecx
 004D1E75    pop         ebp
 004D1E76    ret
*}
end;

//004D1E78
destructor TList<System.ImageList.TImageLink>.Destroy();
begin
{*
 004D1E78    push        ebx
 004D1E79    push        esi
 004D1E7A    call        @BeforeDestruction
 004D1E7F    mov         ebx,edx
 004D1E81    mov         esi,eax
 004D1E83    cmp         dword ptr [esi+8],0
>004D1E87    jle         004D1E92
 004D1E89    xor         edx,edx
 004D1E8B    mov         eax,esi
 004D1E8D    call        004D1D08
 004D1E92    push        0
 004D1E94    lea         eax,[esi+20]
 004D1E97    mov         ecx,1
 004D1E9C    mov         edx,dword ptr ds:[4D0820];TList<System.ImageList.TImageLink>.arrayofT
 004D1EA2    call        @DynArraySetLength
 004D1EA7    add         esp,4
 004D1EAA    mov         dl,0FC
 004D1EAC    and         dl,bl
 004D1EAE    mov         eax,esi
 004D1EB0    call        TEnumerable<System.ImageList.TImageLink>.Destroy
 004D1EB5    test        bl,bl
>004D1EB7    jle         004D1EC0
 004D1EB9    mov         eax,esi
 004D1EBB    call        @ClassDestroy
 004D1EC0    pop         esi
 004D1EC1    pop         ebx
 004D1EC2    ret
*}
end;

//004D1EC4
{*procedure TList<System.ImageList.TImageLink>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004D1EC4    push        ebp
 004D1EC5    mov         ebp,esp
 004D1EC7    add         esp,0FFFFFFF0
 004D1ECA    mov         dword ptr [ebp-8],ecx
 004D1ECD    mov         dword ptr [ebp-4],edx
 004D1ED0    push        dword ptr [ebp+4]
 004D1ED3    mov         eax,dword ptr [ebp-8]
 004D1ED6    mov         dword ptr [ebp-10],eax
 004D1ED9    mov         byte ptr [ebp-0C],0
 004D1EDD    lea         eax,[ebp-10]
 004D1EE0    push        eax
 004D1EE1    push        0
 004D1EE3    mov         ecx,dword ptr [ebp-4]
 004D1EE6    mov         dl,1
 004D1EE8    mov         eax,[004180BC];EListError
 004D1EED    call        Exception.CreateFmt;EListError.Create
>004D1EF2    jmp         @RaiseExcept
end;*}

//004D1EFC
procedure TList<System.ImageList.TImageLink>.Add(Value:TImageLink);
begin
{*
 004D1EFC    push        ecx
 004D1EFD    mov         dword ptr [esp],edx
 004D1F00    mov         edx,esp
 004D1F02    add         eax,8
 004D1F05    call        0043489C
 004D1F0A    pop         edx
 004D1F0B    ret
*}
end;

//004D1F0C
{*procedure TList<System.ImageList.TImageLink>.ToArray(?:?);
begin
 004D1F0C    push        ecx
 004D1F0D    mov         dword ptr [esp],edx
 004D1F10    mov         edx,dword ptr [esp]
 004D1F13    add         eax,8
 004D1F16    call        00435980
 004D1F1B    pop         edx
 004D1F1C    ret
end;*}

//004D1F20
procedure TList<System.ImageList.TImageLink>.GetEnumerator;
begin
{*
 004D1F20    mov         ecx,eax
 004D1F22    mov         dl,1
 004D1F24    mov         eax,[004D0A60];TList<System.ImageList.TImageLink>.TEnumerator
 004D1F29    call        004D1F5C
 004D1F2E    ret
*}
end;

//004D1F30
{*function sub_004D1F30(?:?):?;
begin
 004D1F30    push        ebx
 004D1F31    push        esi
 004D1F32    mov         ebx,dword ptr [eax+4]
 004D1F35    mov         esi,dword ptr [eax+8]
 004D1F38    lea         eax,[ebx+8]
 004D1F3B    mov         edx,esi
 004D1F3D    call        00434534
 004D1F42    mov         eax,dword ptr [ebx+20]
 004D1F45    mov         eax,dword ptr [eax+esi*4]
 004D1F48    pop         esi
 004D1F49    pop         ebx
 004D1F4A    ret
end;*}

//004D1F4C
procedure sub_004D1F4C;
begin
{*
 004D1F4C    call        004D1F30
 004D1F51    ret
*}
end;

//004D1F54
procedure sub_004D1F54;
begin
{*
 004D1F54    call        TList<System.ImageList.TImageLink>.TEnumerator.MoveNext
 004D1F59    ret
*}
end;

//004D1F5C
constructor sub_004D1F5C(AList:TList<System.ImageList.TImageLink>);
begin
{*
 004D1F5C    push        ebx
 004D1F5D    push        esi
 004D1F5E    push        edi
 004D1F5F    test        dl,dl
>004D1F61    je          004D1F6B
 004D1F63    add         esp,0FFFFFFF0
 004D1F66    call        @ClassCreate
 004D1F6B    mov         esi,ecx
 004D1F6D    mov         ebx,edx
 004D1F6F    mov         edi,eax
 004D1F71    xor         edx,edx
 004D1F73    mov         eax,edi
 004D1F75    call        TObject.Create
 004D1F7A    mov         dword ptr [edi+4],esi
 004D1F7D    mov         dword ptr [edi+8],0FFFFFFFF
 004D1F84    mov         eax,edi
 004D1F86    test        bl,bl
>004D1F88    je          004D1F99
 004D1F8A    call        @AfterConstruction
 004D1F8F    pop         dword ptr fs:[0]
 004D1F96    add         esp,0C
 004D1F99    mov         eax,edi
 004D1F9B    pop         edi
 004D1F9C    pop         esi
 004D1F9D    pop         ebx
 004D1F9E    ret
*}
end;

//004D1FA0
function TList<System.ImageList.TImageLink>.TEnumerator.MoveNext:Boolean;
begin
{*
 004D1FA0    mov         edx,dword ptr [eax+4]
 004D1FA3    mov         edx,dword ptr [edx+8]
 004D1FA6    cmp         edx,dword ptr [eax+8]
>004D1FA9    jg          004D1FAE
 004D1FAB    xor         eax,eax
 004D1FAD    ret
 004D1FAE    inc         dword ptr [eax+8]
 004D1FB1    mov         edx,dword ptr [eax+4]
 004D1FB4    mov         edx,dword ptr [edx+8]
 004D1FB7    cmp         edx,dword ptr [eax+8]
 004D1FBA    setg        al
 004D1FBD    ret
*}
end;

//004D1FC0
{*procedure TComparer<System.ImageList.TImageLink>.Default(?:?);
begin
 004D1FC0    push        ebx
 004D1FC1    mov         ebx,edx
 004D1FC3    mov         ecx,4
 004D1FC8    mov         edx,dword ptr ds:[4D03F8];TImageLink
 004D1FCE    xor         eax,eax
 004D1FD0    call        _LookupVtableInfo
 004D1FD5    mov         edx,eax
 004D1FD7    mov         eax,ebx
 004D1FD9    call        @IntfCopy
 004D1FDE    pop         ebx
 004D1FDF    ret
end;*}

//004D225C
procedure sub_004D225C;
begin
{*
 004D225C    add         esp,0FFFFFFF8
 004D225F    call        004D22C0
 004D2264    mov         dword ptr [esp],eax
 004D2267    mov         dword ptr [esp+4],edx
 004D226B    cmp         byte ptr ds:[7CA4C0],0;gvar_007CA4C0
>004D2272    je          004D2289
 004D2274    fild        qword ptr [esp]
 004D2277    fmul        qword ptr ds:[7CA4C8];gvar_007CA4C8:Double
 004D227D    call        @TRUNC
 004D2282    mov         dword ptr [esp],eax
 004D2285    mov         dword ptr [esp+4],edx
 004D2289    mov         eax,dword ptr [esp]
 004D228C    mov         edx,dword ptr [esp+4]
 004D2290    pop         ecx
 004D2291    pop         edx
 004D2292    ret
*}
end;

//004D2294
{*function sub_004D2294(?:?):?;
begin
 004D2294    push        ebx
 004D2295    add         esp,0FFFFFFF8
 004D2298    mov         ebx,eax
 004D229A    push        0
 004D229C    push        2710
 004D22A1    mov         eax,ebx
 004D22A3    call        004D225C
 004D22A8    call        @_lldiv
 004D22AD    mov         dword ptr [esp],eax
 004D22B0    mov         dword ptr [esp+4],edx
 004D22B4    mov         eax,dword ptr [esp]
 004D22B7    mov         edx,dword ptr [esp+4]
 004D22BB    pop         ecx
 004D22BC    pop         edx
 004D22BD    pop         ebx
 004D22BE    ret
end;*}

//004D22C0
{*function sub_004D22C0(?:?):?;
begin
 004D22C0    push        ebx
 004D22C1    add         esp,0FFFFFFF8
 004D22C4    mov         ebx,eax
 004D22C6    mov         eax,dword ptr [ebx]
 004D22C8    mov         dword ptr [esp],eax
 004D22CB    mov         eax,dword ptr [ebx+4]
 004D22CE    mov         dword ptr [esp+4],eax
 004D22D2    cmp         byte ptr [ebx+8],0
>004D22D6    je          004D22F1
 004D22D8    call        004D22FC
 004D22DD    add         eax,dword ptr [esp]
 004D22E0    adc         edx,dword ptr [esp+4]
 004D22E4    sub         eax,dword ptr [ebx+10]
 004D22E7    sbb         edx,dword ptr [ebx+14]
 004D22EA    mov         dword ptr [esp],eax
 004D22ED    mov         dword ptr [esp+4],edx
 004D22F1    mov         eax,dword ptr [esp]
 004D22F4    mov         edx,dword ptr [esp+4]
 004D22F8    pop         ecx
 004D22F9    pop         edx
 004D22FA    pop         ebx
 004D22FB    ret
end;*}

//004D22FC
{*function sub_004D22FC:?;
begin
 004D22FC    add         esp,0FFFFFFF8
 004D22FF    cmp         byte ptr ds:[7CA4C0],0;gvar_007CA4C0
>004D2306    je          004D2310
 004D2308    push        esp
 004D2309    call        kernel32.QueryPerformanceCounter
>004D230E    jmp         004D232A
 004D2310    push        0
 004D2312    push        2710
 004D2317    call        kernel32.GetTickCount
 004D231C    xor         edx,edx
 004D231E    call        @_llmul
 004D2323    mov         dword ptr [esp],eax
 004D2326    mov         dword ptr [esp+4],edx
 004D232A    mov         eax,dword ptr [esp]
 004D232D    mov         edx,dword ptr [esp+4]
 004D2331    pop         ecx
 004D2332    pop         edx
 004D2333    ret
end;*}

//004D2334
procedure sub_004D2334;
begin
{*
 004D2334    cmp         dword ptr ds:[7CA4BC],0;gvar_007CA4BC
>004D233B    jne         004D2394
 004D233D    cmp         dword ptr ds:[7CA4B8],0;gvar_007CA4B8:Double
>004D2344    jne         004D2394
 004D2346    push        7CA4B8;gvar_007CA4B8:Double
 004D234B    call        kernel32.QueryPerformanceFrequency
 004D2350    test        eax,eax
>004D2352    jne         004D237A
 004D2354    mov         byte ptr ds:[7CA4C0],0;gvar_007CA4C0
 004D235B    mov         dword ptr ds:[7CA4B8],989680
 004D2365    mov         dword ptr ds:[7CA4BC],0;gvar_007CA4BC
 004D236F    fld1
 004D2371    fstp        qword ptr ds:[7CA4C8];gvar_007CA4C8:Double
 004D2377    wait
>004D2378    jmp         004D2394
 004D237A    mov         byte ptr ds:[7CA4C0],1;gvar_007CA4C0
 004D2381    fild        qword ptr ds:[7CA4B8];gvar_007CA4B8:Double
 004D2387    fdivr       dword ptr ds:[4D2398];10000000:Single
 004D238D    fstp        qword ptr ds:[7CA4C8];gvar_007CA4C8:Double
 004D2393    wait
 004D2394    ret
*}
end;

//004D239C
{*procedure sub_004D239C(?:?);
begin
 004D239C    mov         dword ptr [eax],0
 004D23A2    mov         dword ptr [eax+4],0
 004D23A9    mov         byte ptr [eax+8],0
 004D23AD    mov         dword ptr [eax+10],0
 004D23B4    mov         dword ptr [eax+14],0
 004D23BB    ret
end;*}

//004D23BC
{*procedure sub_004D23BC(?:?);
begin
 004D23BC    push        ebx
 004D23BD    mov         ebx,eax
 004D23BF    cmp         byte ptr [ebx+8],0
>004D23C3    jne         004D23D4
 004D23C5    call        004D22FC
 004D23CA    mov         dword ptr [ebx+10],eax
 004D23CD    mov         dword ptr [ebx+14],edx
 004D23D0    mov         byte ptr [ebx+8],1
 004D23D4    pop         ebx
 004D23D5    ret
end;*}

//004D23D8
{*procedure sub_004D23D8(?:?);
begin
 004D23D8    push        ebx
 004D23D9    mov         ebx,eax
 004D23DB    call        004D2334
 004D23E0    mov         eax,ebx
 004D23E2    call        004D239C
 004D23E7    mov         eax,ebx
 004D23E9    call        004D23BC
 004D23EE    pop         ebx
 004D23EF    ret
end;*}

//004D2FC8
function GetOleThreadWindow:HWND;
begin
{*
 004D2FC8    push        ebx
 004D2FC9    push        esi
 004D2FCA    push        edi
 004D2FCB    call        @GetTls
 004D2FD0    cmp         dword ptr [eax+14],0;{OleThreadWnd:Windows.HWND}
>004D2FD7    je          004D2FEE
 004D2FD9    call        @GetTls
 004D2FDE    mov         eax,dword ptr [eax+14];{OleThreadWnd:Windows.HWND}
 004D2FE4    push        eax
 004D2FE5    call        user32.IsWindow
 004D2FEA    test        eax,eax
>004D2FEC    jne         004D305F
 004D2FEE    mov         eax,[007C4EC4];^gvar_0079EDDC
 004D2FF3    cmp         dword ptr [eax],2
>004D2FF6    jne         004D3009
 004D2FF8    mov         eax,[007C4590];^gvar_0079EDE0
 004D2FFD    cmp         dword ptr [eax],5
>004D3000    jl          004D3009
 004D3002    mov         esi,0FFFFFFFD
>004D3007    jmp         004D300B
 004D3009    xor         esi,esi
 004D300B    xor         ebx,ebx
 004D300D    push        0
 004D300F    push        4D3070
 004D3014    push        ebx
 004D3015    push        esi
 004D3016    call        user32.FindWindowExW
 004D301B    mov         ebx,eax
 004D301D    call        @GetTls
 004D3022    mov         dword ptr [eax+14],ebx;{OleThreadWnd:Windows.HWND}
 004D3028    call        @GetTls
 004D302D    mov         ebx,dword ptr [eax+14];{OleThreadWnd:Windows.HWND}
 004D3033    call        @GetTls
 004D3038    cmp         dword ptr [eax+14],0;{OleThreadWnd:Windows.HWND}
>004D303F    je          004D305F
 004D3041    push        0
 004D3043    call        @GetTls
 004D3048    mov         eax,dword ptr [eax+14];{OleThreadWnd:Windows.HWND}
 004D304E    push        eax
 004D304F    call        user32.GetWindowThreadProcessId
 004D3054    mov         edi,eax
 004D3056    call        kernel32.GetCurrentThreadId
 004D305B    cmp         edi,eax
>004D305D    jne         004D300D
 004D305F    call        @GetTls
 004D3064    mov         eax,dword ptr [eax+14];{OleThreadWnd:Windows.HWND}
 004D306A    pop         edi
 004D306B    pop         esi
 004D306C    pop         ebx
 004D306D    ret
*}
end;

//004D309C
function InternalCoWaitForMultipleHandles(dwFlags:Windows.DWORD; dwTimeOut:Windows.DWORD; cHandles:LongWord; var Handles:void ; var lpdwIndex:Windows.DWORD):HRESULT; stdcall;
begin
{*
 004D309C    push        ebp
 004D309D    mov         ebp,esp
 004D309F    add         esp,0FFFFFFE0
 004D30A2    push        ebx
 004D30A3    push        esi
 004D30A4    push        edi
 004D30A5    mov         esi,dword ptr [ebp+10]
 004D30A8    mov         edi,dword ptr [ebp+8]
 004D30AB    xor         ebx,ebx
 004D30AD    call        GetOleThreadWindow
 004D30B2    mov         dword ptr [ebp-4],eax
 004D30B5    cmp         dword ptr [ebp-4],0
>004D30B9    je          004D3102
 004D30BB    push        edi
 004D30BC    push        4BF
 004D30C1    mov         eax,dword ptr [ebp+0C]
 004D30C4    push        eax
 004D30C5    mov         eax,dword ptr [ebp+14]
 004D30C8    push        eax
 004D30C9    push        esi
 004D30CA    call        user32.MsgWaitForMultipleObjectsEx
 004D30CF    mov         ebx,eax
 004D30D1    lea         eax,[esi]
 004D30D3    cmp         ebx,eax
>004D30D5    jne         004D312E
 004D30D7    push        1
 004D30D9    push        0
 004D30DB    push        0
 004D30DD    mov         eax,dword ptr [ebp-4]
 004D30E0    push        eax
 004D30E1    lea         eax,[ebp-20]
 004D30E4    push        eax
 004D30E5    call        user32.PeekMessageW
 004D30EA    test        eax,eax
>004D30EC    je          004D30BB
 004D30EE    lea         eax,[ebp-20]
 004D30F1    push        eax
 004D30F2    call        user32.TranslateMessage
 004D30F7    lea         eax,[ebp-20]
 004D30FA    push        eax
 004D30FB    call        user32.DispatchMessageW
>004D3100    jmp         004D30BB
 004D3102    test        edi,2
 004D3108    setne       al
 004D310B    neg         al
 004D310D    sbb         eax,eax
 004D310F    push        eax
 004D3110    mov         eax,dword ptr [ebp+0C]
 004D3113    push        eax
 004D3114    test        edi,1
 004D311A    setne       al
 004D311D    neg         al
 004D311F    sbb         eax,eax
 004D3121    push        eax
 004D3122    mov         eax,dword ptr [ebp+14]
 004D3125    push        eax
 004D3126    push        esi
 004D3127    call        kernel32.WaitForMultipleObjectsEx
 004D312C    mov         ebx,eax
 004D312E    cmp         ebx,102
>004D3134    jne         004D313D
 004D3136    mov         eax,8001011F
>004D313B    jmp         004D3175
 004D313D    cmp         ebx,0C0
>004D3143    jne         004D314C
 004D3145    mov         eax,80010115
>004D314A    jmp         004D3175
 004D314C    xor         eax,eax
 004D314E    cmp         ebx,80
>004D3154    jb          004D316D
 004D3156    add         esi,80
 004D315C    cmp         ebx,esi
>004D315E    jae         004D316D
 004D3160    sub         ebx,80
 004D3166    mov         edx,dword ptr [ebp+18]
 004D3169    mov         dword ptr [edx],ebx
>004D316B    jmp         004D3175
 004D316D    sub         ebx,0
 004D3170    mov         edx,dword ptr [ebp+18]
 004D3173    mov         dword ptr [edx],ebx
 004D3175    pop         edi
 004D3176    pop         esi
 004D3177    pop         ebx
 004D3178    mov         esp,ebp
 004D317A    pop         ebp
 004D317B    ret         14
*}
end;

//004D3180
procedure LookupProc;
begin
{*
 004D3180    push        ebx
 004D3181    push        4D31B8
 004D3186    call        kernel32.GetModuleHandleW
 004D318B    mov         ebx,eax
 004D318D    test        ebx,ebx
>004D318F    je          004D31A1
 004D3191    push        4D31CC
 004D3196    push        ebx
 004D3197    call        GetProcAddress
 004D319C    mov         [007CA4D4],eax
 004D31A1    cmp         dword ptr ds:[7CA4D4],0
>004D31A8    jne         004D31B4
 004D31AA    mov         dword ptr ds:[7CA4D4],4D309C
 004D31B4    pop         ebx
 004D31B5    ret
*}
end;

//004D3200
function CoWaitForMultipleHandles(dwFlags:Windows.DWORD; dwTimeOut:Windows.DWORD; cHandles:LongWord; var Handles:void ; var lpdwIndex:Windows.DWORD):HRESULT;
begin
{*
 004D3200    push        ebp
 004D3201    mov         ebp,esp
 004D3203    push        ebx
 004D3204    push        esi
 004D3205    push        edi
 004D3206    mov         edi,ecx
 004D3208    mov         esi,edx
 004D320A    mov         ebx,eax
 004D320C    cmp         dword ptr ds:[7CA4D4],0
>004D3213    jne         004D321A
 004D3215    call        LookupProc
 004D321A    mov         eax,dword ptr [ebp+8]
 004D321D    push        eax
 004D321E    mov         eax,dword ptr [ebp+0C]
 004D3221    push        eax
 004D3222    push        edi
 004D3223    push        esi
 004D3224    push        ebx
 004D3225    call        dword ptr ds:[7CA4D4]
 004D322B    pop         edi
 004D322C    pop         esi
 004D322D    pop         ebx
 004D322E    pop         ebp
 004D322F    ret         8
*}
end;

//004D3234
procedure TSynchroObject.Acquire;
begin
{*
 004D3234    or          edx,0FFFFFFFF
 004D3237    mov         ecx,dword ptr [eax]
 004D3239    call        dword ptr [ecx+8]
 004D323C    ret
*}
end;

//004D3240
procedure TSynchroObject.Release;
begin
{*
 004D3240    ret
*}
end;

//004D3244
function TSynchroObject.WaitFor(Timeout:Cardinal):TWaitResult;
begin
{*
 004D3244    mov         al,3
 004D3246    ret
*}
end;

//004D3248
constructor THandleObject.Create;
begin
{*
 004D3248    push        ebp
 004D3249    mov         ebp,esp
 004D324B    push        ecx
 004D324C    push        ebx
 004D324D    push        esi
 004D324E    test        dl,dl
>004D3250    je          004D325A
 004D3252    add         esp,0FFFFFFF0
 004D3255    call        @ClassCreate
 004D325A    mov         ebx,ecx
 004D325C    mov         byte ptr [ebp-1],dl
 004D325F    mov         esi,eax
 004D3261    xor         edx,edx
 004D3263    mov         eax,esi
 004D3265    call        TObject.Create
 004D326A    mov         byte ptr [esi+0C],bl
 004D326D    mov         eax,esi
 004D326F    cmp         byte ptr [ebp-1],0
>004D3273    je          004D3284
 004D3275    call        @AfterConstruction
 004D327A    pop         dword ptr fs:[0]
 004D3281    add         esp,0C
 004D3284    mov         eax,esi
 004D3286    pop         esi
 004D3287    pop         ebx
 004D3288    pop         ecx
 004D3289    pop         ebp
 004D328A    ret
*}
end;

//004D328C
destructor THandleObject.Destroy();
begin
{*
 004D328C    push        ebx
 004D328D    push        esi
 004D328E    call        @BeforeDestruction
 004D3293    mov         ebx,edx
 004D3295    mov         esi,eax
 004D3297    mov         eax,dword ptr [esi+4]
 004D329A    push        eax
 004D329B    call        kernel32.CloseHandle
 004D32A0    mov         dl,0FC
 004D32A2    and         dl,bl
 004D32A4    mov         eax,esi
 004D32A6    call        TObject.Destroy
 004D32AB    test        bl,bl
>004D32AD    jle         004D32B6
 004D32AF    mov         eax,esi
 004D32B1    call        @ClassDestroy
 004D32B6    pop         esi
 004D32B7    pop         ebx
 004D32B8    ret
*}
end;

//004D32BC
function THandleObject.WaitFor(Timeout:Cardinal):TWaitResult;
begin
{*
 004D32BC    push        ebx
 004D32BD    push        esi
 004D32BE    push        ecx
 004D32BF    mov         esi,eax
 004D32C1    cmp         byte ptr [esi+0C],0
>004D32C5    je          004D3307
 004D32C7    lea         eax,[esi+4]
 004D32CA    push        eax
 004D32CB    lea         eax,[esp+4]
 004D32CF    push        eax
 004D32D0    mov         ecx,1
 004D32D5    xor         eax,eax
 004D32D7    call        CoWaitForMultipleHandles
 004D32DC    sub         eax,80010115
>004D32E1    je          004D32F3
 004D32E3    sub         eax,0A
>004D32E6    je          004D32F7
 004D32E8    sub         eax,7FFEFEE1
>004D32ED    jne         004D32FB
 004D32EF    xor         ebx,ebx
>004D32F1    jmp         004D3349
 004D32F3    mov         bl,4
>004D32F5    jmp         004D3349
 004D32F7    mov         bl,1
>004D32F9    jmp         004D3349
 004D32FB    mov         bl,3
 004D32FD    call        kernel32.GetLastError
 004D3302    mov         dword ptr [esi+8],eax
>004D3305    jmp         004D3349
 004D3307    push        0
 004D3309    push        edx
 004D330A    push        0FF
 004D330C    lea         eax,[esi+4]
 004D330F    push        eax
 004D3310    push        1
 004D3312    call        kernel32.WaitForMultipleObjectsEx
 004D3317    sub         eax,0FFFFFFFF
>004D331A    je          004D333B
 004D331C    dec         eax
>004D331D    je          004D3333
 004D331F    sub         eax,80
>004D3324    je          004D332F
 004D3326    sub         eax,82
>004D332B    je          004D3337
>004D332D    jmp         004D3347
 004D332F    mov         bl,2
>004D3331    jmp         004D3349
 004D3333    xor         ebx,ebx
>004D3335    jmp         004D3349
 004D3337    mov         bl,1
>004D3339    jmp         004D3349
 004D333B    mov         bl,3
 004D333D    call        kernel32.GetLastError
 004D3342    mov         dword ptr [esi+8],eax
>004D3345    jmp         004D3349
 004D3347    mov         bl,3
 004D3349    mov         eax,ebx
 004D334B    pop         edx
 004D334C    pop         esi
 004D334D    pop         ebx
 004D334E    ret
*}
end;

//004D3350
constructor sub_004D3350(EventAttributes:PSecurityAttributes; UseCOMWait:Boolean; Name:string; InitialState:Boolean; ManualReset:Boolean);
begin
{*
 004D3350    push        ebp
 004D3351    mov         ebp,esp
 004D3353    push        ecx
 004D3354    push        ebx
 004D3355    push        esi
 004D3356    push        edi
 004D3357    test        dl,dl
>004D3359    je          004D3363
 004D335B    add         esp,0FFFFFFF0
 004D335E    call        @ClassCreate
 004D3363    mov         edi,ecx
 004D3365    mov         byte ptr [ebp-1],dl
 004D3368    mov         ebx,eax
 004D336A    mov         esi,dword ptr [ebp+0C]
 004D336D    movzx       ecx,byte ptr [ebp+8]
 004D3371    xor         edx,edx
 004D3373    mov         eax,ebx
 004D3375    call        THandleObject.Create
 004D337A    test        esi,esi
>004D337C    jne         004D3382
 004D337E    xor         esi,esi
>004D3380    jmp         004D338B
 004D3382    mov         eax,esi
 004D3384    call        @UStrToPWChar
 004D3389    mov         esi,eax
 004D338B    push        esi
 004D338C    cmp         byte ptr [ebp+10],1
 004D3390    cmc
 004D3391    sbb         eax,eax
 004D3393    push        eax
 004D3394    cmp         byte ptr [ebp+14],1
 004D3398    cmc
 004D3399    sbb         eax,eax
 004D339B    push        eax
 004D339C    push        edi
 004D339D    call        kernel32.CreateEventW
 004D33A2    mov         dword ptr [ebx+4],eax;TEvent.FHandle:NativeUInt
 004D33A5    mov         eax,ebx
 004D33A7    cmp         byte ptr [ebp-1],0
>004D33AB    je          004D33BC
 004D33AD    call        @AfterConstruction
 004D33B2    pop         dword ptr fs:[0]
 004D33B9    add         esp,0C
 004D33BC    mov         eax,ebx
 004D33BE    pop         edi
 004D33BF    pop         esi
 004D33C0    pop         ebx
 004D33C1    pop         ecx
 004D33C2    pop         ebp
 004D33C3    ret         10
*}
end;

//004D33C8
constructor TEvent.Create;
begin
{*
 004D33C8    push        ebx
 004D33C9    push        esi
 004D33CA    test        dl,dl
>004D33CC    je          004D33D6
 004D33CE    add         esp,0FFFFFFF0
 004D33D1    call        @ClassCreate
 004D33D6    mov         ebx,edx
 004D33D8    mov         esi,eax
 004D33DA    push        1
 004D33DC    push        0
 004D33DE    push        0
 004D33E0    push        ecx
 004D33E1    xor         edx,edx
 004D33E3    mov         eax,esi
 004D33E5    xor         ecx,ecx
 004D33E7    call        004D3350
 004D33EC    mov         eax,esi
 004D33EE    test        bl,bl
>004D33F0    je          004D3401
 004D33F2    call        @AfterConstruction
 004D33F7    pop         dword ptr fs:[0]
 004D33FE    add         esp,0C
 004D3401    mov         eax,esi
 004D3403    pop         esi
 004D3404    pop         ebx
 004D3405    ret
*}
end;

//004D3408
procedure TEvent.SetEvent;
begin
{*
 004D3408    mov         eax,dword ptr [eax+4]
 004D340B    push        eax
 004D340C    call        kernel32.SetEvent
 004D3411    ret
*}
end;

//004D3414
procedure TEvent.ResetEvent;
begin
{*
 004D3414    mov         eax,dword ptr [eax+4]
 004D3417    push        eax
 004D3418    call        kernel32.ResetEvent
 004D341D    ret
*}
end;

//004D3420
constructor TCriticalSection.Create();
begin
{*
 004D3420    push        ebp
 004D3421    mov         ebp,esp
 004D3423    push        ecx
 004D3424    push        ebx
 004D3425    push        esi
 004D3426    test        dl,dl
>004D3428    je          004D3432
 004D342A    add         esp,0FFFFFFF0
 004D342D    call        @ClassCreate
 004D3432    mov         ebx,edx
 004D3434    mov         esi,eax
 004D3436    xor         edx,edx
 004D3438    mov         eax,esi
 004D343A    call        TObject.Create
 004D343F    lea         eax,[esi+4]
 004D3442    mov         dword ptr [ebp-4],eax
 004D3445    mov         eax,dword ptr [ebp-4]
 004D3448    push        eax
 004D3449    call        kernel32.InitializeCriticalSection
 004D344E    mov         eax,esi
 004D3450    test        bl,bl
>004D3452    je          004D3463
 004D3454    call        @AfterConstruction
 004D3459    pop         dword ptr fs:[0]
 004D3460    add         esp,0C
 004D3463    mov         eax,esi
 004D3465    pop         esi
 004D3466    pop         ebx
 004D3467    pop         ecx
 004D3468    pop         ebp
 004D3469    ret
*}
end;

//004D346C
destructor TCriticalSection.Destroy();
begin
{*
 004D346C    push        ebx
 004D346D    push        esi
 004D346E    push        ecx
 004D346F    call        @BeforeDestruction
 004D3474    mov         ebx,edx
 004D3476    mov         esi,eax
 004D3478    lea         eax,[esi+4]
 004D347B    mov         dword ptr [esp],eax
 004D347E    mov         eax,dword ptr [esp]
 004D3481    push        eax
 004D3482    call        kernel32.DeleteCriticalSection
 004D3487    mov         dl,0FC
 004D3489    and         dl,bl
 004D348B    mov         eax,esi
 004D348D    call        TObject.Destroy
 004D3492    test        bl,bl
>004D3494    jle         004D349D
 004D3496    mov         eax,esi
 004D3498    call        @ClassDestroy
 004D349D    pop         edx
 004D349E    pop         esi
 004D349F    pop         ebx
 004D34A0    ret
*}
end;

//004D34A4
procedure TCriticalSection.Acquire;
begin
{*
 004D34A4    push        ecx
 004D34A5    add         eax,4
 004D34A8    mov         dword ptr [esp],eax
 004D34AB    mov         eax,dword ptr [esp]
 004D34AE    push        eax
 004D34AF    call        kernel32.EnterCriticalSection
 004D34B4    pop         edx
 004D34B5    ret
*}
end;

//004D34B8
procedure TCriticalSection.Release;
begin
{*
 004D34B8    push        ecx
 004D34B9    add         eax,4
 004D34BC    mov         dword ptr [esp],eax
 004D34BF    mov         eax,dword ptr [esp]
 004D34C2    push        eax
 004D34C3    call        kernel32.LeaveCriticalSection
 004D34C8    pop         edx
 004D34C9    ret
*}
end;

//004D34CC
procedure InternalInitConditionVariable(var ConditionVariable:Windows.TRTLConditionVariable); stdcall;
begin
{*
 004D34CC    push        ebp
 004D34CD    mov         ebp,esp
 004D34CF    mov         eax,dword ptr [ebp+8]
 004D34D2    xor         edx,edx
 004D34D4    mov         dword ptr [eax],edx
 004D34D6    pop         ebp
 004D34D7    ret         4
*}
end;

//004D34DC
procedure InternalWakeAllConditionVariable(var ConditionVariable:Windows.TRTLConditionVariable); stdcall;
begin
{*
 004D34DC    push        ebp
 004D34DD    mov         ebp,esp
 004D34DF    mov         eax,dword ptr [ebp+8]
 004D34E2    call        TInternalConditionVariable.WakeAll
 004D34E7    pop         ebp
 004D34E8    ret         4
*}
end;

//004D34EC
procedure InternalWakeConditionVariable(var ConditionVariable:Windows.TRTLConditionVariable); stdcall;
begin
{*
 004D34EC    push        ebp
 004D34ED    mov         ebp,esp
 004D34EF    mov         eax,dword ptr [ebp+8]
 004D34F2    call        TInternalConditionVariable.Wake
 004D34F7    pop         ebp
 004D34F8    ret         4
*}
end;

//004D34FC
function InternalSleepConditionVariableCS(var ConditionVariable:Windows.TRTLConditionVariable; var CriticalSection:Windows.TRTLCriticalSection; dwMilliseconds:Windows.DWORD):BOOL; stdcall;
begin
{*
 004D34FC    push        ebp
 004D34FD    mov         ebp,esp
 004D34FF    mov         edx,dword ptr [ebp+0C]
 004D3502    mov         eax,dword ptr [ebp+8]
 004D3505    mov         ecx,dword ptr [ebp+10]
 004D3508    call        TInternalConditionVariable.SleepCriticalSection
 004D350D    neg         al
 004D350F    sbb         eax,eax
 004D3511    pop         ebp
 004D3512    ret         0C
*}
end;

//004D3518
function TInternalConditionVariable.DequeueWaiter:PWaitingThread;
begin
{*
 004D3518    push        ebp
 004D3519    mov         ebp,esp
 004D351B    add         esp,0FFFFFFF4
 004D351E    mov         dword ptr [ebp-4],eax
 004D3521    mov         eax,dword ptr [ebp-4]
 004D3524    call        TInternalConditionVariable.LockQueue
 004D3529    mov         dword ptr [ebp-0C],eax
 004D352C    xor         eax,eax
 004D352E    push        ebp
 004D352F    push        4D3561
 004D3534    push        dword ptr fs:[eax]
 004D3537    mov         dword ptr fs:[eax],esp
 004D353A    lea         edx,[ebp-0C]
 004D353D    mov         eax,dword ptr [ebp-4]
 004D3540    call        TInternalConditionVariable.DequeueWaiterNoLock
 004D3545    mov         dword ptr [ebp-8],eax
 004D3548    xor         eax,eax
 004D354A    pop         edx
 004D354B    pop         ecx
 004D354C    pop         ecx
 004D354D    mov         dword ptr fs:[eax],edx
 004D3550    push        4D3568
 004D3555    mov         eax,dword ptr [ebp-4]
 004D3558    mov         edx,dword ptr [ebp-0C]
 004D355B    call        TInternalConditionVariable.UnlockQueue
 004D3560    ret
>004D3561    jmp         @HandleFinally
>004D3566    jmp         004D3555
 004D3568    mov         eax,dword ptr [ebp-8]
 004D356B    mov         esp,ebp
 004D356D    pop         ebp
 004D356E    ret
*}
end;

//004D3570
function TInternalConditionVariable.DequeueWaiterNoLock(var WaitQueue:PWaitingThread):PWaitingThread;
begin
{*
 004D3570    mov         eax,dword ptr [edx]
 004D3572    test        eax,eax
>004D3574    je          004D357A
 004D3576    cmp         eax,dword ptr [eax]
>004D3578    jne         004D357F
 004D357A    xor         ecx,ecx
 004D357C    mov         dword ptr [edx],ecx
 004D357E    ret
 004D357F    mov         eax,dword ptr [edx]
 004D3581    mov         ecx,dword ptr [eax]
 004D3583    mov         eax,ecx
 004D3585    mov         ecx,dword ptr [ecx]
 004D3587    mov         edx,dword ptr [edx]
 004D3589    mov         dword ptr [edx],ecx
 004D358B    ret
*}
end;

//004D358C
function TInternalConditionVariable.LockQueue:PWaitingThread;
begin
{*
 004D358C    push        ebx
 004D358D    push        esi
 004D358E    push        edi
 004D358F    mov         esi,eax
 004D3591    mov         eax,[007C4D48];^CPUCount:Integer
 004D3596    cmp         dword ptr [eax],1
 004D3599    setg        bl
 004D359C    test        bl,bl
>004D359E    je          004D35A7
 004D35A0    mov         edx,0FA0
>004D35A5    jmp         004D35AA
 004D35A7    or          edx,0FFFFFFFF
 004D35AA    mov         edi,dword ptr [esi]
 004D35AC    and         edi,0FFFFFFFE
 004D35AF    mov         ecx,edi
 004D35B1    or          ecx,1
 004D35B4    mov         eax,edi
 004D35B6    lock cmpxchgdword ptr [esi],ecx
 004D35BA    cmp         edi,eax
>004D35BC    je          004D35DB
 004D35BE    test        edx,edx
>004D35C0    jge         004D35D6
 004D35C2    call        kernel32.SwitchToThread
 004D35C7    test        bl,bl
>004D35C9    je          004D35D2
 004D35CB    mov         edx,0FA0
>004D35D0    jmp         004D35D8
 004D35D2    xor         edx,edx
>004D35D4    jmp         004D35D8
 004D35D6    rep nop
 004D35D8    dec         edx
>004D35D9    jmp         004D35AA
 004D35DB    mov         eax,edi
 004D35DD    pop         edi
 004D35DE    pop         esi
 004D35DF    pop         ebx
 004D35E0    ret
*}
end;

//004D35E4
procedure TInternalConditionVariable.QueueWaiter(var WaitingThread:TWaitingThread);
begin
{*
 004D35E4    push        ebp
 004D35E5    mov         ebp,esp
 004D35E7    add         esp,0FFFFFFF8
 004D35EA    push        ebx
 004D35EB    mov         ebx,edx
 004D35ED    mov         dword ptr [ebp-4],eax
 004D35F0    mov         eax,dword ptr [ebp-4]
 004D35F3    call        TInternalConditionVariable.LockQueue
 004D35F8    mov         dword ptr [ebp-8],eax
 004D35FB    xor         eax,eax
 004D35FD    push        ebp
 004D35FE    push        4D363E
 004D3603    push        dword ptr fs:[eax]
 004D3606    mov         dword ptr fs:[eax],esp
 004D3609    cmp         dword ptr [ebp-8],0
>004D360D    jne         004D3616
 004D360F    mov         dword ptr [ebp-8],ebx
 004D3612    mov         dword ptr [ebx],ebx
>004D3614    jmp         004D3625
 004D3616    mov         eax,dword ptr [ebp-8]
 004D3619    mov         eax,dword ptr [eax]
 004D361B    mov         dword ptr [ebx],eax
 004D361D    mov         eax,dword ptr [ebp-8]
 004D3620    mov         dword ptr [eax],ebx
 004D3622    mov         dword ptr [ebp-8],ebx
 004D3625    xor         eax,eax
 004D3627    pop         edx
 004D3628    pop         ecx
 004D3629    pop         ecx
 004D362A    mov         dword ptr fs:[eax],edx
 004D362D    push        4D3645
 004D3632    mov         eax,dword ptr [ebp-4]
 004D3635    mov         edx,dword ptr [ebp-8]
 004D3638    call        TInternalConditionVariable.UnlockQueue
 004D363D    ret
>004D363E    jmp         @HandleFinally
>004D3643    jmp         004D3632
 004D3645    pop         ebx
 004D3646    pop         ecx
 004D3647    pop         ecx
 004D3648    pop         ebp
 004D3649    ret
*}
end;

//004D364C
procedure TInternalConditionVariable.RemoveWaiter(var WaitingThread:TWaitingThread);
begin
{*
 004D364C    push        ebp
 004D364D    mov         ebp,esp
 004D364F    add         esp,0FFFFFFF8
 004D3652    push        ebx
 004D3653    push        esi
 004D3654    mov         ebx,edx
 004D3656    mov         dword ptr [ebp-4],eax
 004D3659    mov         eax,dword ptr [ebp-4]
 004D365C    mov         eax,dword ptr [eax]
 004D365E    and         eax,0FFFFFFFE
 004D3661    test        eax,eax
>004D3663    je          004D36D9
 004D3665    mov         eax,dword ptr [ebp-4]
 004D3668    call        TInternalConditionVariable.LockQueue
 004D366D    mov         dword ptr [ebp-8],eax
 004D3670    xor         esi,esi
 004D3672    push        ebp
 004D3673    push        4D36D2
 004D3678    push        dword ptr fs:[esi]
 004D367B    mov         dword ptr fs:[esi],esp
 004D367E    mov         edx,dword ptr [ebp-8]
 004D3681    mov         eax,dword ptr [edx]
 004D3683    cmp         eax,dword ptr [ebp-8]
>004D3686    je          004D369B
 004D3688    cmp         eax,ebx
>004D368A    jne         004D3692
 004D368C    mov         ecx,dword ptr [eax]
 004D368E    mov         dword ptr [edx],ecx
>004D3690    jmp         004D369B
 004D3692    mov         edx,eax
 004D3694    mov         eax,dword ptr [eax]
 004D3696    cmp         eax,dword ptr [ebp-8]
>004D3699    jne         004D3688
 004D369B    cmp         eax,dword ptr [ebp-8]
>004D369E    jne         004D36B9
 004D36A0    cmp         eax,ebx
>004D36A2    jne         004D36B9
 004D36A4    mov         ecx,dword ptr [eax]
 004D36A6    cmp         eax,ecx
>004D36A8    jne         004D36B1
 004D36AA    xor         eax,eax
 004D36AC    mov         dword ptr [ebp-8],eax
>004D36AF    jmp         004D36B9
 004D36B1    mov         dword ptr [ebp-8],ecx
 004D36B4    mov         eax,dword ptr [ebp-8]
 004D36B7    mov         dword ptr [edx],eax
 004D36B9    xor         eax,eax
 004D36BB    pop         edx
 004D36BC    pop         ecx
 004D36BD    pop         ecx
 004D36BE    mov         dword ptr fs:[eax],edx
 004D36C1    push        4D36D9
 004D36C6    mov         eax,dword ptr [ebp-4]
 004D36C9    mov         edx,dword ptr [ebp-8]
 004D36CC    call        TInternalConditionVariable.UnlockQueue
 004D36D1    ret
>004D36D2    jmp         @HandleFinally
>004D36D7    jmp         004D36C6
 004D36D9    pop         esi
 004D36DA    pop         ebx
 004D36DB    pop         ecx
 004D36DC    pop         ecx
 004D36DD    pop         ebp
 004D36DE    ret
*}
end;

//004D36E0
function TInternalConditionVariable.SleepCriticalSection(var CriticalSection:Windows.TRTLCriticalSection; Timeout:Windows.DWORD):Boolean;
begin
{*
 004D36E0    push        ebp
 004D36E1    mov         ebp,esp
 004D36E3    add         esp,0FFFFFFE8
 004D36E6    push        ebx
 004D36E7    push        esi
 004D36E8    push        edi
 004D36E9    mov         dword ptr [ebp-8],ecx
 004D36EC    mov         dword ptr [ebp-4],edx
 004D36EF    mov         esi,eax
 004D36F1    call        kernel32.GetCurrentThreadId
 004D36F6    mov         edx,dword ptr [ebp-4]
 004D36F9    cmp         eax,dword ptr [edx+0C]
>004D36FC    jne         004D37E1
 004D3702    xor         eax,eax
 004D3704    mov         dword ptr [ebp-18],eax
 004D3707    mov         eax,dword ptr [ebp-4]
 004D370A    mov         eax,dword ptr [eax+0C]
 004D370D    mov         dword ptr [ebp-14],eax
 004D3710    push        0
 004D3712    push        0
 004D3714    push        0
 004D3716    push        0
 004D3718    call        kernel32.CreateEventW
 004D371D    mov         dword ptr [ebp-10],eax
 004D3720    xor         eax,eax
 004D3722    push        ebp
 004D3723    push        4D37DA
 004D3728    push        dword ptr fs:[eax]
 004D372B    mov         dword ptr fs:[eax],esp
 004D372E    mov         ebx,dword ptr [ebp-4]
 004D3731    mov         ebx,dword ptr [ebx+8]
 004D3734    lea         edx,[ebp-18]
 004D3737    mov         eax,esi
 004D3739    call        TInternalConditionVariable.QueueWaiter
 004D373E    mov         eax,dword ptr [ebp-4]
 004D3741    mov         dword ptr [eax+8],1
 004D3748    mov         edi,ebx
 004D374A    dec         edi
 004D374B    mov         eax,edi
 004D374D    neg         eax
 004D374F    mov         edx,dword ptr [ebp-4]
 004D3752    mov         ecx,eax
 004D3754    lock xadd   dword ptr [edx+4],eax
 004D3759    add         eax,ecx
 004D375B    mov         eax,dword ptr [ebp-4]
 004D375E    push        eax
 004D375F    call        kernel32.LeaveCriticalSection
 004D3764    mov         eax,dword ptr [ebp-8]
 004D3767    push        eax
 004D3768    mov         eax,dword ptr [ebp-10]
 004D376B    push        eax
 004D376C    call        kernel32.WaitForSingleObject
 004D3771    sub         eax,1
>004D3774    jb          004D378D
 004D3776    sub         eax,101
>004D377B    jne         004D3793
 004D377D    mov         byte ptr [ebp-9],0
 004D3781    push        5B4
 004D3786    call        kernel32.SetLastError
>004D378B    jmp         004D379E
 004D378D    mov         byte ptr [ebp-9],1
>004D3791    jmp         004D379E
 004D3793    mov         byte ptr [ebp-9],0
 004D3797    push        0
 004D3799    call        kernel32.SetLastError
 004D379E    mov         eax,dword ptr [ebp-4]
 004D37A1    push        eax
 004D37A2    call        kernel32.EnterCriticalSection
 004D37A7    lea         edx,[ebp-18]
 004D37AA    mov         eax,esi
 004D37AC    call        TInternalConditionVariable.RemoveWaiter
 004D37B1    mov         eax,dword ptr [ebp-4]
 004D37B4    mov         edx,edi
 004D37B6    lock xadd   dword ptr [eax+4],edi
 004D37BB    add         edi,edx
 004D37BD    mov         eax,dword ptr [ebp-4]
 004D37C0    mov         dword ptr [eax+8],ebx
 004D37C3    xor         eax,eax
 004D37C5    pop         edx
 004D37C6    pop         ecx
 004D37C7    pop         ecx
 004D37C8    mov         dword ptr fs:[eax],edx
 004D37CB    push        4D37E5
 004D37D0    mov         eax,dword ptr [ebp-10]
 004D37D3    push        eax
 004D37D4    call        kernel32.CloseHandle
 004D37D9    ret
>004D37DA    jmp         @HandleFinally
>004D37DF    jmp         004D37D0
 004D37E1    mov         byte ptr [ebp-9],0
 004D37E5    movzx       eax,byte ptr [ebp-9]
 004D37E9    pop         edi
 004D37EA    pop         esi
 004D37EB    pop         ebx
 004D37EC    mov         esp,ebp
 004D37EE    pop         ebp
 004D37EF    ret
*}
end;

//004D37F0
procedure TInternalConditionVariable.UnlockQueue(WaitQueue:PWaitingThread);
begin
{*
 004D37F0    and         edx,0FFFFFFFE
 004D37F3    mov         dword ptr [eax],edx
 004D37F5    ret
*}
end;

//004D37F8
procedure TInternalConditionVariable.WakeAll;
begin
{*
 004D37F8    call        TInternalConditionVariable.DequeueWaiter
 004D37FD    test        eax,eax
>004D37FF    je          004D380A
 004D3801    mov         eax,dword ptr [eax+8]
 004D3804    push        eax
 004D3805    call        kernel32.SetEvent
 004D380A    ret
*}
end;

//004D380C
procedure TInternalConditionVariable.Wake;
begin
{*
 004D380C    push        ebp
 004D380D    mov         ebp,esp
 004D380F    add         esp,0FFFFFFF8
 004D3812    push        ebx
 004D3813    mov         dword ptr [ebp-4],eax
 004D3816    mov         eax,dword ptr [ebp-4]
 004D3819    call        TInternalConditionVariable.LockQueue
 004D381E    mov         dword ptr [ebp-8],eax
 004D3821    xor         eax,eax
 004D3823    push        ebp
 004D3824    push        4D3873
 004D3829    push        dword ptr fs:[eax]
 004D382C    mov         dword ptr fs:[eax],esp
 004D382F    lea         edx,[ebp-8]
 004D3832    mov         eax,dword ptr [ebp-4]
 004D3835    call        TInternalConditionVariable.DequeueWaiterNoLock
 004D383A    mov         ebx,eax
 004D383C    test        ebx,ebx
>004D383E    je          004D385A
 004D3840    mov         eax,dword ptr [ebx+8]
 004D3843    push        eax
 004D3844    call        kernel32.SetEvent
 004D3849    lea         edx,[ebp-8]
 004D384C    mov         eax,dword ptr [ebp-4]
 004D384F    call        TInternalConditionVariable.DequeueWaiterNoLock
 004D3854    mov         ebx,eax
 004D3856    test        ebx,ebx
>004D3858    jne         004D3840
 004D385A    xor         eax,eax
 004D385C    pop         edx
 004D385D    pop         ecx
 004D385E    pop         ecx
 004D385F    mov         dword ptr fs:[eax],edx
 004D3862    push        4D387A
 004D3867    mov         eax,dword ptr [ebp-4]
 004D386A    mov         edx,dword ptr [ebp-8]
 004D386D    call        TInternalConditionVariable.UnlockQueue
 004D3872    ret
>004D3873    jmp         @HandleFinally
>004D3878    jmp         004D3867
 004D387A    pop         ebx
 004D387B    pop         ecx
 004D387C    pop         ecx
 004D387D    pop         ebp
 004D387E    ret
*}
end;

//004D3880
function TInterlocked.Add(Increment:Integer):Integer;
begin
{*
 004D3880    mov         ecx,edx
 004D3882    lock xadd   dword ptr [eax],edx
 004D3886    add         edx,ecx
 004D3888    mov         eax,edx
 004D388A    ret
*}
end;

//004D388C
function TInterlocked.CompareExchange(Value:Integer; Comparand:Integer):Integer;
begin
{*
 004D388C    push        ebx
 004D388D    mov         ebx,eax
 004D388F    mov         eax,ecx
 004D3891    lock cmpxchgdword ptr [ebx],edx
 004D3895    pop         ebx
 004D3896    ret
*}
end;

//004D3898
function TInterlocked.CompareExchange(Value:TObject; Comparand:TObject):TObject;
begin
{*
 004D3898    push        ebx
 004D3899    push        esi
 004D389A    push        edi
 004D389B    mov         edi,ecx
 004D389D    mov         esi,edx
 004D389F    mov         ebx,eax
 004D38A1    mov         eax,ebx
 004D38A3    mov         ecx,edi
 004D38A5    mov         edx,esi
 004D38A7    call        TInterlocked.CompareExchange
 004D38AC    pop         edi
 004D38AD    pop         esi
 004D38AE    pop         ebx
 004D38AF    ret
*}
end;

//004D38B0
function TSpinWait.GetNextSpinCycleWillYield:Boolean;
begin
{*
 004D38B0    cmp         dword ptr [eax],0A
>004D38B3    jg          004D38C2
 004D38B5    mov         eax,[007C4D48];^CPUCount:Integer
 004D38BA    cmp         dword ptr [eax],1
>004D38BD    je          004D38C2
 004D38BF    xor         eax,eax
 004D38C1    ret
 004D38C2    mov         al,1
 004D38C4    ret
*}
end;

//004D38C8
{*procedure sub_004D38C8(?:?);
begin
 004D38C8    xor         edx,edx
 004D38CA    mov         dword ptr [eax],edx
 004D38CC    ret
end;*}

//004D38D0
procedure TSpinWait.SpinCycle;
begin
{*
 004D38D0    push        ebx
 004D38D1    push        esi
 004D38D2    mov         ebx,eax
 004D38D4    mov         eax,ebx
 004D38D6    call        TSpinWait.GetNextSpinCycleWillYield
 004D38DB    test        al,al
>004D38DD    je          004D3929
 004D38DF    mov         eax,dword ptr [ebx]
 004D38E1    cmp         eax,0A
>004D38E4    jl          004D38ED
 004D38E6    mov         ecx,eax
 004D38E8    sub         ecx,0A
>004D38EB    jmp         004D38EF
 004D38ED    mov         ecx,eax
 004D38EF    mov         eax,ecx
 004D38F1    mov         esi,14
 004D38F6    cdq
 004D38F7    idiv        eax,esi
 004D38F9    cmp         edx,13
>004D38FC    jne         004D390A
 004D38FE    mov         eax,1
 004D3903    call        TThread.Sleep
>004D3908    jmp         004D3937
 004D390A    mov         eax,ecx
 004D390C    mov         ecx,5
 004D3911    cdq
 004D3912    idiv        eax,ecx
 004D3914    cmp         edx,4
>004D3917    jne         004D3922
 004D3919    xor         eax,eax
 004D391B    call        TThread.Sleep
>004D3920    jmp         004D3937
 004D3922    call        TThread.Yield
>004D3927    jmp         004D3937
 004D3929    mov         ecx,dword ptr [ebx]
 004D392B    mov         eax,4
 004D3930    shl         eax,cl
 004D3932    call        TThread.SpinWait
 004D3937    inc         dword ptr [ebx]
 004D3939    cmp         dword ptr [ebx],0
>004D393C    jge         004D3944
 004D393E    mov         dword ptr [ebx],0B
 004D3944    pop         esi
 004D3945    pop         ebx
 004D3946    ret
*}
end;

//004D3948
constructor TLightweightEvent.Create();
begin
{*
 004D3948    push        ebx
 004D3949    push        esi
 004D394A    test        dl,dl
>004D394C    je          004D3956
 004D394E    add         esp,0FFFFFFF0
 004D3951    call        @ClassCreate
 004D3956    mov         ebx,edx
 004D3958    mov         esi,eax
 004D395A    push        0A
 004D395C    xor         ecx,ecx
 004D395E    xor         edx,edx
 004D3960    mov         eax,esi
 004D3962    call        TLightweightEvent.Create
 004D3967    mov         eax,esi
 004D3969    test        bl,bl
>004D396B    je          004D397C
 004D396D    call        @AfterConstruction
 004D3972    pop         dword ptr fs:[0]
 004D3979    add         esp,0C
 004D397C    mov         eax,esi
 004D397E    pop         esi
 004D397F    pop         ebx
 004D3980    ret
*}
end;

//004D3984
constructor TLightweightEvent.Create(SpinCount:Integer);
begin
{*
 004D3984    push        ebp
 004D3985    mov         ebp,esp
 004D3987    add         esp,0FFFFFFF4
 004D398A    push        ebx
 004D398B    push        esi
 004D398C    push        edi
 004D398D    test        dl,dl
>004D398F    je          004D3999
 004D3991    add         esp,0FFFFFFF0
 004D3994    call        @ClassCreate
 004D3999    mov         byte ptr [ebp-2],cl
 004D399C    mov         byte ptr [ebp-1],dl
 004D399F    mov         ebx,eax
 004D39A1    mov         esi,dword ptr [ebp+8]
 004D39A4    xor         edx,edx
 004D39A6    mov         eax,ebx
 004D39A8    call        TObject.Create
 004D39AD    mov         dl,1
 004D39AF    mov         eax,[00401728];TObject
 004D39B4    call        TObject.Create
 004D39B9    mov         edi,eax
 004D39BB    mov         dword ptr [ebx+4],edi
 004D39BE    mov         eax,edi
 004D39C0    mov         edx,0A
 004D39C5    call        TMonitor.SetSpinCount
 004D39CA    cmp         byte ptr [ebp-2],0
>004D39CE    je          004D39D7
 004D39D0    mov         dword ptr [ebx+8],80000000
 004D39D7    test        esi,esi
>004D39D9    jl          004D39E3
 004D39DB    cmp         esi,0FFF
>004D39E1    jle         004D3A0B
 004D39E3    mov         dword ptr [ebp-0C],0FFF
 004D39EA    mov         byte ptr [ebp-8],0
 004D39EE    lea         eax,[ebp-0C]
 004D39F1    push        eax
 004D39F2    push        0
 004D39F4    mov         ecx,dword ptr ds:[7C4E6C];^SResString164:TResStringRec
 004D39FA    mov         dl,1
 004D39FC    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004D3A01    call        Exception.CreateResFmt
 004D3A06    call        @RaiseExcept
 004D3A0B    mov         eax,[007C4D48];^CPUCount:Integer
 004D3A10    cmp         dword ptr [eax],1
>004D3A13    jne         004D3A1F
 004D3A15    test        esi,esi
>004D3A17    jle         004D3A1F
 004D3A19    or          dword ptr [ebx+8],1
>004D3A1D    jmp         004D3A22
 004D3A1F    or          dword ptr [ebx+8],esi
 004D3A22    mov         eax,ebx
 004D3A24    cmp         byte ptr [ebp-1],0
>004D3A28    je          004D3A39
 004D3A2A    call        @AfterConstruction
 004D3A2F    pop         dword ptr fs:[0]
 004D3A36    add         esp,0C
 004D3A39    mov         eax,ebx
 004D3A3B    pop         edi
 004D3A3C    pop         esi
 004D3A3D    pop         ebx
 004D3A3E    mov         esp,ebp
 004D3A40    pop         ebp
 004D3A41    ret         4
*}
end;

//004D3A44
destructor TCountdownEvent.Destroy();
begin
{*
 004D3A44    push        ebx
 004D3A45    push        esi
 004D3A46    call        @BeforeDestruction
 004D3A4B    mov         ebx,edx
 004D3A4D    mov         esi,eax
 004D3A4F    mov         eax,dword ptr [esi+4]
 004D3A52    call        TObject.Free
 004D3A57    mov         dl,0FC
 004D3A59    and         dl,bl
 004D3A5B    mov         eax,esi
 004D3A5D    call        TObject.Destroy
 004D3A62    test        bl,bl
>004D3A64    jle         004D3A6D
 004D3A66    mov         eax,esi
 004D3A68    call        @ClassDestroy
 004D3A6D    pop         esi
 004D3A6E    pop         ebx
 004D3A6F    ret
*}
end;

//004D3A70
function TLightweightEvent.GetIsSet:Boolean;
begin
{*
 004D3A70    mov         eax,dword ptr [eax+8]
 004D3A73    and         eax,80000000
 004D3A78    cmp         eax,80000000
 004D3A7D    sete        al
 004D3A80    ret
*}
end;

//004D3A84
function TLightweightEvent.GetSpinCount:Integer;
begin
{*
 004D3A84    mov         eax,dword ptr [eax+8]
 004D3A87    and         eax,0FFF
 004D3A8C    ret
*}
end;

//004D3A90
procedure TLightweightEvent.ResetEvent;
begin
{*
 004D3A90    mov         ecx,80000000
 004D3A95    xor         edx,edx
 004D3A97    call        TLightweightEvent.SetNewStateAtomically
 004D3A9C    ret
*}
end;

//004D3AA0
procedure TLightweightEvent.SetEvent;
begin
{*
 004D3AA0    push        ebp
 004D3AA1    mov         ebp,esp
 004D3AA3    add         esp,0FFFFFFF8
 004D3AA6    mov         dword ptr [ebp-4],eax
 004D3AA9    mov         ecx,80000000
 004D3AAE    mov         edx,80000000
 004D3AB3    mov         eax,dword ptr [ebp-4]
 004D3AB6    call        TLightweightEvent.SetNewStateAtomically
 004D3ABB    mov         eax,dword ptr [ebp-4]
 004D3ABE    cmp         dword ptr [eax+0C],0;TLightweightEvent.FWaiters:Integer
>004D3AC2    jle         004D3B1B
 004D3AC4    mov         eax,dword ptr [ebp-4]
 004D3AC7    mov         eax,dword ptr [eax+4];TLightweightEvent.FLock:TObject
 004D3ACA    mov         dword ptr [ebp-8],eax
 004D3ACD    call        TMonitor.CheckMonitorSupport
 004D3AD2    mov         eax,dword ptr [ebp-8]
 004D3AD5    call        TMonitor.GetMonitor
 004D3ADA    or          edx,0FFFFFFFF
 004D3ADD    call        TMonitor.Enter
 004D3AE2    xor         eax,eax
 004D3AE4    push        ebp
 004D3AE5    push        4D3B14
 004D3AEA    push        dword ptr fs:[eax]
 004D3AED    mov         dword ptr fs:[eax],esp
 004D3AF0    mov         eax,dword ptr [ebp-4]
 004D3AF3    mov         eax,dword ptr [eax+4];TLightweightEvent.FLock:TObject
 004D3AF6    call        TMonitor.PulseAll
 004D3AFB    xor         eax,eax
 004D3AFD    pop         edx
 004D3AFE    pop         ecx
 004D3AFF    pop         ecx
 004D3B00    mov         dword ptr fs:[eax],edx
 004D3B03    push        4D3B1B
 004D3B08    mov         eax,dword ptr [ebp-4]
 004D3B0B    mov         eax,dword ptr [eax+4];TLightweightEvent.FLock:TObject
 004D3B0E    call        TMonitor.Exit
 004D3B13    ret
>004D3B14    jmp         @HandleFinally
>004D3B19    jmp         004D3B08
 004D3B1B    pop         ecx
 004D3B1C    pop         ecx
 004D3B1D    pop         ebp
 004D3B1E    ret
*}
end;

//004D3B20
procedure TLightweightEvent.SetNewStateAtomically(NewValue:Integer; Mask:Integer);
begin
{*
 004D3B20    push        ebx
 004D3B21    push        esi
 004D3B22    push        edi
 004D3B23    push        ebp
 004D3B24    add         esp,0FFFFFFF4
 004D3B27    mov         dword ptr [esp],ecx
 004D3B2A    mov         ebp,edx
 004D3B2C    mov         esi,eax
 004D3B2E    lea         eax,[esp+4]
 004D3B32    call        004D38C8
 004D3B37    mov         ebx,dword ptr [esi+8]
 004D3B3A    mov         edi,dword ptr [esp]
 004D3B3D    not         edi
 004D3B3F    and         edi,ebx
 004D3B41    or          edi,ebp
 004D3B43    lea         eax,[esi+8]
 004D3B46    mov         dword ptr [esp+8],eax
 004D3B4A    mov         eax,dword ptr [esp+8]
 004D3B4E    mov         edx,eax
 004D3B50    mov         eax,ebx
 004D3B52    lock cmpxchgdword ptr [edx],edi
 004D3B56    cmp         ebx,eax
>004D3B58    je          004D3B65
 004D3B5A    lea         eax,[esp+4]
 004D3B5E    call        TSpinWait.SpinCycle
>004D3B63    jmp         004D3B37
 004D3B65    add         esp,0C
 004D3B68    pop         ebp
 004D3B69    pop         edi
 004D3B6A    pop         esi
 004D3B6B    pop         ebx
 004D3B6C    ret
*}
end;

//004D3B70
function TLightweightEvent.WaitFor(Timeout:Cardinal):TWaitResult;
begin
{*
 004D3B70    push        ebp
 004D3B71    mov         ebp,esp
 004D3B73    add         esp,0FFFFFFC0
 004D3B76    push        ebx
 004D3B77    push        esi
 004D3B78    mov         esi,edx
 004D3B7A    mov         dword ptr [ebp-4],eax
 004D3B7D    mov         eax,dword ptr [ebp-4]
 004D3B80    call        TLightweightEvent.GetIsSet
 004D3B85    test        al,al
>004D3B87    jne         004D3CF7
 004D3B8D    test        esi,esi
>004D3B8F    jne         004D3B9A
 004D3B91    mov         byte ptr [ebp-5],1
>004D3B95    jmp         004D3CFB
 004D3B9A    lea         eax,[ebp-0C]
 004D3B9D    call        004D38C8
 004D3BA2    mov         eax,dword ptr [ebp-4]
 004D3BA5    call        TLightweightEvent.GetSpinCount
 004D3BAA    test        eax,eax
>004D3BAC    jle         004D3BEB
 004D3BAE    cmp         esi,0FFFFFFFF
>004D3BB1    jae         004D3BBB
 004D3BB3    lea         eax,[ebp-40]
 004D3BB6    call        004D23D8
 004D3BBB    mov         eax,dword ptr [ebp-4]
 004D3BBE    call        TLightweightEvent.GetSpinCount
 004D3BC3    mov         ebx,eax
 004D3BC5    dec         ebx
 004D3BC6    test        ebx,ebx
>004D3BC8    jl          004D3BEB
 004D3BCA    inc         ebx
 004D3BCB    lea         eax,[ebp-0C]
 004D3BCE    call        TSpinWait.SpinCycle
 004D3BD3    mov         eax,dword ptr [ebp-4]
 004D3BD6    call        TLightweightEvent.GetIsSet
 004D3BDB    test        al,al
>004D3BDD    je          004D3BE8
 004D3BDF    mov         byte ptr [ebp-5],0
>004D3BE3    jmp         004D3CFB
 004D3BE8    dec         ebx
>004D3BE9    jne         004D3BCB
 004D3BEB    cmp         esi,0FFFFFFFF
>004D3BEE    jae         004D3C2F
 004D3BF0    lea         eax,[ebp-40]
 004D3BF3    call        004D2294
 004D3BF8    mov         dword ptr [ebp-18],eax
 004D3BFB    mov         dword ptr [ebp-14],edx
 004D3BFE    cmp         dword ptr [ebp-14],0
>004D3C02    jne         004D3C0F
 004D3C04    cmp         dword ptr [ebp-18],7FFFFFFF
>004D3C0B    ja          004D3C23
>004D3C0D    jmp         004D3C11
>004D3C0F    jg          004D3C23
 004D3C11    mov         eax,esi
 004D3C13    xor         edx,edx
 004D3C15    cmp         edx,dword ptr [ebp-14]
>004D3C18    jne         004D3C21
 004D3C1A    cmp         eax,dword ptr [ebp-18]
>004D3C1D    ja          004D3C2C
>004D3C1F    jmp         004D3C23
>004D3C21    jg          004D3C2C
 004D3C23    mov         byte ptr [ebp-5],1
>004D3C27    jmp         004D3CFB
 004D3C2C    sub         esi,dword ptr [ebp-18]
 004D3C2F    mov         eax,dword ptr [ebp-4]
 004D3C32    mov         eax,dword ptr [eax+4];TLightweightEvent.FLock:TObject
 004D3C35    mov         dword ptr [ebp-1C],eax
 004D3C38    call        TMonitor.CheckMonitorSupport
 004D3C3D    mov         eax,dword ptr [ebp-1C]
 004D3C40    call        TMonitor.GetMonitor
 004D3C45    or          edx,0FFFFFFFF
 004D3C48    call        TMonitor.Enter
 004D3C4D    xor         edx,edx
 004D3C4F    push        ebp
 004D3C50    push        4D3CF0
 004D3C55    push        dword ptr fs:[edx]
 004D3C58    mov         dword ptr fs:[edx],esp
 004D3C5B    mov         eax,dword ptr [ebp-4]
 004D3C5E    add         eax,0C;TLightweightEvent.FWaiters:Integer
 004D3C61    mov         dword ptr [ebp-20],eax
 004D3C64    mov         eax,dword ptr [ebp-20]
 004D3C67    mov         edx,1
 004D3C6C    call        TInterlocked.Add
 004D3C71    xor         edx,edx
 004D3C73    push        ebp
 004D3C74    push        4D3CD0
 004D3C79    push        dword ptr fs:[edx]
 004D3C7C    mov         dword ptr fs:[edx],esp
 004D3C7F    mov         eax,dword ptr [ebp-4]
 004D3C82    add         eax,10;TLightweightEvent.FBlockedCount:Integer
 004D3C85    mov         dword ptr [ebp-24],eax
 004D3C88    mov         eax,dword ptr [ebp-24]
 004D3C8B    mov         edx,1
 004D3C90    call        TInterlocked.Add
 004D3C95    mov         eax,dword ptr [ebp-4]
 004D3C98    call        TLightweightEvent.GetIsSet
 004D3C9D    test        al,al
>004D3C9F    jne         004D3CB2
 004D3CA1    mov         eax,dword ptr [ebp-4]
 004D3CA4    mov         eax,dword ptr [eax+4];TLightweightEvent.FLock:TObject
 004D3CA7    mov         edx,esi
 004D3CA9    call        TMonitor.Wait
 004D3CAE    test        al,al
>004D3CB0    je          004D3CB8
 004D3CB2    mov         byte ptr [ebp-5],0
>004D3CB6    jmp         004D3CBC
 004D3CB8    mov         byte ptr [ebp-5],1
 004D3CBC    xor         eax,eax
 004D3CBE    pop         edx
 004D3CBF    pop         ecx
 004D3CC0    pop         ecx
 004D3CC1    mov         dword ptr fs:[eax],edx
 004D3CC4    push        4D3CD7
 004D3CC9    mov         eax,dword ptr [ebp-4]
 004D3CCC    dec         dword ptr [eax+0C];TLightweightEvent.FWaiters:Integer
 004D3CCF    ret
>004D3CD0    jmp         @HandleFinally
>004D3CD5    jmp         004D3CC9
 004D3CD7    xor         eax,eax
 004D3CD9    pop         edx
 004D3CDA    pop         ecx
 004D3CDB    pop         ecx
 004D3CDC    mov         dword ptr fs:[eax],edx
 004D3CDF    push        4D3CFB
 004D3CE4    mov         eax,dword ptr [ebp-4]
 004D3CE7    mov         eax,dword ptr [eax+4];TLightweightEvent.FLock:TObject
 004D3CEA    call        TMonitor.Exit
 004D3CEF    ret
>004D3CF0    jmp         @HandleFinally
>004D3CF5    jmp         004D3CE4
 004D3CF7    mov         byte ptr [ebp-5],0
 004D3CFB    movzx       eax,byte ptr [ebp-5]
 004D3CFF    pop         esi
 004D3D00    pop         ebx
 004D3D01    mov         esp,ebp
 004D3D03    pop         ebp
 004D3D04    ret
*}
end;

//004D3E98
procedure TConditionVariableCS.Acquire;
begin
{*
 004D3E98    mov         ecx,dword ptr ds:[7C48F4];^SResString206:TResStringRec
 004D3E9E    mov         dl,1
 004D3EA0    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004D3EA5    call        Exception.CreateRes
 004D3EAA    call        @RaiseExcept
 004D3EAF    ret
*}
end;

//004D3EB0
{*procedure sub_004D3EB0(?:?);
begin
 004D3EB0    test        dl,dl
>004D3EB2    jne         004D3EBC
 004D3EB4    mov         eax,dword ptr [eax+4];TMultiWaitEventImpl.FState:Integer
 004D3EB7    call        TLightweightEvent.ResetEvent
 004D3EBC    ret
end;*}

//004D3EC0
procedure sub_004D3EC0;
begin
{*
 004D3EC0    push        ebx
 004D3EC1    mov         ebx,eax
 004D3EC3    lea         eax,[ebx+8];TMultiWaitEventImpl.FWaiters:TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004D3EC6    mov         edx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004D3ECC    call        @DynArrayClear
 004D3ED1    pop         ebx
 004D3ED2    ret
*}
end;

//004D3ED4
constructor TMultiWaitEventImpl.Create;
begin
{*
 004D3ED4    push        ebx
 004D3ED5    push        esi
 004D3ED6    test        dl,dl
>004D3ED8    je          004D3EE2
 004D3EDA    add         esp,0FFFFFFF0
 004D3EDD    call        @ClassCreate
 004D3EE2    mov         ebx,edx
 004D3EE4    mov         esi,eax
 004D3EE6    mov         dl,1
 004D3EE8    mov         eax,[004D2C4C];TLightweightEvent
 004D3EED    call        TLightweightEvent.Create;TLightweightEvent.Create
 004D3EF2    mov         dword ptr [esi+4],eax;TMultiWaitEventImpl.FState:Integer
 004D3EF5    mov         eax,esi
 004D3EF7    test        bl,bl
>004D3EF9    je          004D3F0A
 004D3EFB    call        @AfterConstruction
 004D3F00    pop         dword ptr fs:[0]
 004D3F07    add         esp,0C
 004D3F0A    mov         eax,esi
 004D3F0C    pop         esi
 004D3F0D    pop         ebx
 004D3F0E    ret
*}
end;

//004D3F10
procedure sub_004D3F10;
begin
{*
 004D3F10    mov         dl,1
 004D3F12    mov         eax,[004D3D08];TMultiWaitEventImpl
 004D3F17    call        TMultiWaitEventImpl.Create;TMultiWaitEventImpl.Create
 004D3F1C    ret
*}
end;

//004D3F20
procedure sub_004D3F20;
begin
{*
 004D3F20    call        TThread.GetTickCount
 004D3F25    ret
*}
end;

//004D3F28
{*function sub_004D3F28(?:?):?;
begin
 004D3F28    mov         eax,dword ptr [eax+8];TMultiWaitEventImpl.FWaiters:TArray<System.Types.TMultiWaitEvent.T...
 004D3F2B    lea         eax,[eax+edx*8]
 004D3F2E    ret
end;*}

//004D3F30
{*function sub_004D3F30:?;
begin
 004D3F30    push        ecx
 004D3F31    mov         eax,dword ptr [eax+8];TMultiWaitEventImpl.FWaiters:TArray<System.Types.TMultiWaitEvent.T...
 004D3F34    mov         dword ptr [esp],eax
 004D3F37    mov         eax,dword ptr [esp]
 004D3F3A    test        eax,eax
>004D3F3C    je          004D3F43
 004D3F3E    sub         eax,4
 004D3F41    mov         eax,dword ptr [eax]
 004D3F43    pop         edx
 004D3F44    ret
end;*}

//004D3F48
procedure sub_004D3F48;
begin
{*
 004D3F48    ret
*}
end;

//004D3F4C
procedure sub_004D3F4C;
begin
{*
 004D3F4C    mov         eax,dword ptr [eax+4];TMultiWaitEventImpl.FState:Integer
 004D3F4F    call        TLightweightEvent.SetEvent
 004D3F54    ret
*}
end;

//004D3F58
procedure sub_004D3F58;
begin
{*
 004D3F58    ret
*}
end;

//004D3F5C
{*procedure sub_004D3F5C(?:?);
begin
 004D3F5C    push        ebp
 004D3F5D    mov         ebp,esp
 004D3F5F    push        0
 004D3F61    push        ebx
 004D3F62    push        esi
 004D3F63    mov         esi,edx
 004D3F65    mov         ebx,eax
 004D3F67    xor         eax,eax
 004D3F69    push        ebp
 004D3F6A    push        4D3FD5
 004D3F6F    push        dword ptr fs:[eax]
 004D3F72    mov         dword ptr fs:[eax],esp
 004D3F75    lea         eax,[ebp-4]
 004D3F78    mov         edx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004D3F7E    call        @DynArrayClear
 004D3F83    push        1
 004D3F85    lea         eax,[ebp-4]
 004D3F88    mov         ecx,1
 004D3F8D    mov         edx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004D3F93    call        @DynArraySetLength
 004D3F98    add         esp,4
 004D3F9B    mov         eax,dword ptr [ebp-4]
 004D3F9E    mov         edx,dword ptr [esi]
 004D3FA0    mov         dword ptr [eax],edx
 004D3FA2    mov         edx,dword ptr [esi+4]
 004D3FA5    mov         dword ptr [eax+4],edx
 004D3FA8    mov         edx,dword ptr [ebp-4]
 004D3FAB    lea         eax,[ebx+8];TMultiWaitEventImpl.FWaiters:TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004D3FAE    mov         ecx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004D3FB4    call        0040AF74
 004D3FB9    xor         eax,eax
 004D3FBB    pop         edx
 004D3FBC    pop         ecx
 004D3FBD    pop         ecx
 004D3FBE    mov         dword ptr fs:[eax],edx
 004D3FC1    push        4D3FDC
 004D3FC6    lea         eax,[ebp-4]
 004D3FC9    mov         edx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004D3FCF    call        @DynArrayClear
 004D3FD4    ret
>004D3FD5    jmp         @HandleFinally
>004D3FDA    jmp         004D3FC6
 004D3FDC    pop         esi
 004D3FDD    pop         ebx
 004D3FDE    pop         ecx
 004D3FDF    pop         ebp
 004D3FE0    ret
end;*}

//004D3FE4
procedure sub_004D3FE4;
begin
{*
 004D3FE4    mov         ecx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004D3FEA    push        ecx
 004D3FEB    add         eax,8;TMultiWaitEventImpl.FWaiters:TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004D3FEE    mov         ecx,1
 004D3FF3    call        0040B078
 004D3FF8    ret
*}
end;

//004D3FFC
procedure TMultiWaitEventImpl.WaitFor(Timeout:Cardinal);
begin
{*
 004D3FFC    push        ebx
 004D3FFD    push        esi
 004D3FFE    mov         esi,edx
 004D4000    mov         ebx,eax
 004D4002    mov         edx,esi
 004D4004    mov         eax,dword ptr [ebx+4];TMultiWaitEventImpl.FState:Integer
 004D4007    mov         ecx,dword ptr [eax]
 004D4009    call        dword ptr [ecx+8]
 004D400C    pop         esi
 004D400D    pop         ebx
 004D400E    ret
*}
end;

//004D4010
procedure InitConditionVariableProcs;
begin
{*
 004D4010    push        ebx
 004D4011    push        4D4094
 004D4016    call        kernel32.GetModuleHandleW
 004D401B    mov         ebx,eax
 004D401D    push        4D40B0
 004D4022    push        ebx
 004D4023    call        GetProcAddress
 004D4028    mov         [007CA4D8],eax
 004D402D    cmp         dword ptr ds:[7CA4D8],0
>004D4034    jne         004D4060
 004D4036    mov         dword ptr ds:[7CA4D8],4D34CC
 004D4040    mov         dword ptr ds:[7CA4E0],4D34DC
 004D404A    mov         dword ptr ds:[7CA4E4],4D34EC
 004D4054    mov         dword ptr ds:[7CA4DC],4D34FC
 004D405E    pop         ebx
 004D405F    ret
 004D4060    push        4D40E8
 004D4065    push        ebx
 004D4066    call        GetProcAddress
 004D406B    mov         [007CA4E0],eax
 004D4070    push        4D4114
 004D4075    push        ebx
 004D4076    call        GetProcAddress
 004D407B    mov         [007CA4E4],eax
 004D4080    push        4D4148
 004D4085    push        ebx
 004D4086    call        GetProcAddress
 004D408B    mov         [007CA4DC],eax
 004D4090    pop         ebx
 004D4091    ret
*}
end;

Initialization
//0079CE20
{*
 0079CE20    sub         dword ptr ds:[7CA4D0],1
>0079CE27    jae         0079CE3B
 0079CE29    call        InitConditionVariableProcs
 0079CE2E    mov         eax,[007C467C];^gvar_007C7C70:TMultiWaitEventImpl
 0079CE33    mov         edx,dword ptr ds:[4D3D08];TMultiWaitEventImpl
 0079CE39    mov         dword ptr [eax],edx
 0079CE3B    ret
*}
Finalization
end.