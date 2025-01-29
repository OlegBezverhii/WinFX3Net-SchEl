//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit20;

interface

uses
  SysUtils, Classes, System.Classes, System.Generics.Collections;

type
  TComparer<System.Classes.TComponent> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function Classes.TComponent>.Default:IComparer<System.Classes.TComponent>;//004A7F0C
  public
    procedure Classes.TComponent>.Classes.TComponent>.Compare; virtual; abstract;//v0//00405554
  end;
  TDelegatedComparer<System.Classes.TComponent> = class(TComparer<System.Classes.TComponent>)
  published
    function Classes.TComponent>.Compare(Left:TComponent; Right:TComponent):Integer;//004A7F68
    constructor Actions.TContainedAction>.Create;//004A7F2C
  public
    FCompare:TComparison<System.Classes.TComponent>;//f10
  end;
  TComponent.Create@$940$ActRec = class(TInterfacedObject)
  end;
  TComponent.GetObservers$953$ActRec = class(TInterfacedObject)
  public
    Self:TComponent;//fC
  end;
    procedure AfterConstruction;//0049DDD8
    //procedure sub_0049DDEC(?:?; ?:?);//0049DDEC
    procedure CheckThreadError(Success:Boolean);//0049DE68
    procedure CallOnTerminate;//0049DE80
    procedure DoTerminate;//0049DE94
    procedure sub_0049DEA8;//0049DEA8
    function GetCurrentThread:TThread;//0049DEAC
    procedure InternalStart(Force:Boolean);//0049DF1C
    function GetPriority:TThreadPriority;//0049DFC8
    procedure SetPriority(Value:TThreadPriority);//0049E004
    procedure GetTickCount;//0049E03C
    procedure Queue(AMethod:TThreadMethod);//0049E044
    procedure Queue(AMethod:TThreadMethod);//0049E0D0
    procedure Synchronize(AMethod:TThreadMethod);//0049E170
    procedure Synchronize(AMethod:TThreadMethod);//0049E310
    procedure RemoveQueuedEvents;//0049E344
    procedure SpinWait;//0049E408
    procedure Sleep;//0049E418
    procedure Yield;//0049E420
    procedure Suspend;//0049E428
    procedure Resume;//0049E498
    procedure Terminate;//0049E4C0
    function WaitFor:Cardinal;//0049E4E8
    function GetCurrent:TComponent;//0049E5AC
    constructor Create;//0049E5B8
    destructor Destroy();//0049E604
    procedure sub_0049E654;//0049E654
    procedure BeforeDestruction;//0049E688
    procedure sub_0049E694(?:TComponent);//0049E694
    procedure FreeNotification(AComponent:TComponent);//0049E6F8
    //procedure sub_0049E76C(?:?);//0049E76C
    procedure ReadLeft(Reader:TReader);//0049E7B0
    procedure ReadTop(Reader:TReader);//0049E7C4
    procedure WriteLeft(Writer:TWriter);//0049E7D8
    procedure WriteTop(Writer:TWriter);//0049E7E4
    procedure sub_0049E7F0(?:TComponent; ?:TComponent);//0049E7F0
    procedure sub_0049E834(?:TComponent; ?:TComponent);//0049E834
    procedure InsertComponent(AComponent:TComponent);//0049E8F4
    procedure RemoveComponent(AComponent:TComponent);//0049E9AC
    procedure DestroyComponents;//0049E9E4
    procedure Destroying;//0049EA70
    //procedure sub_0049EAB4(?:?; ?:?; ?:?; ?:?);//0049EAB4
    procedure RemoveNotification(const AComponent:TComponent);//0049EAD8
    procedure RemoveFreeNotification(AComponent:TComponent);//0049EB68
    procedure Notification(AComponent:TComponent; Operation:TOperation);//0049EB84
    procedure DefineProperties(Filer:TFiler);//0049EBF4
    procedure HasParent;//0049EC8C
    procedure sub_0049EC90;//0049EC90
    procedure sub_0049EC98;//0049EC98
    procedure sub_0049EC9C;//0049EC9C
    procedure GetNamePath;//0049ECA0
    procedure sub_0048EDE4;//0049ECB4
    procedure sub_0049ECB8;//0049ECB8
    procedure GetParentComponent;//0049ECBC
    procedure sub_0049ECC0;//0049ECC0
    procedure Updating;//0049ECC4
    procedure Updated;//0049ECD0
    procedure Loaded;//0049ECDC
    procedure sub_0049ECE8;//0049ECE8
    procedure ReadState(Reader:TReader);//0049ECEC
    //procedure sub_0049ECF4(?:?);//0049ECF4
    //procedure sub_0049ECFC(?:?; ?:?; ?:?);//0049ECFC
    //procedure sub_0049EDB0(?:?);//0049EDB0
    procedure sub_0049EDC8;//0049EDC8
    function Create@$2648$ActRec.$0$Body(const Item1:TComponent; const Item2:TComponent):Integer;//0049F35C
    function FindComponent(AName:string):TComponent;//0049F368
    //function sub_0049F418(?:?; ?:?; ?:?):?;//0049F418
    procedure sub_0049F498(?:TComponent; ?:TComponent);//0049F498
    procedure SetName(Value:TComponentName);//0049F4C8
    procedure sub_0049F558(?:TComponent; ?:TComponentName);//0049F558
    procedure sub_0049F5E0;//0049F5E0
    function GetComponent(AIndex:Integer):TComponent;//0049F5E8
    function GetComponentCount:Integer;//0049F61C
    //procedure sub_0049F62C(?:?; ?:?);//0049F62C
    //procedure sub_0049F8E8(?:?);//0049F8E8
    //procedure sub_0049F8F8(?:?; ?:?);//0049F8F8
    function GetObservers:TObservers;//0049F910
    procedure SetDesigning(Value:Boolean; SetChildren:Boolean);//0049F9B8
    procedure SetReference(Enable:Boolean);//0049FA08
    procedure ExecuteAction(Action:TBasicAction);//0049FA30
    function UpdateAction(Action:TBasicAction):Boolean;//0049FA6C
    //function sub_0049FAA8:?;//0049FAA8
    procedure sub_0049FAAC;//0049FAAC
    function GetComObject:IUnknown;//0049FAB0
    function SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;//0049FB68
    procedure sub_0049FB80;//0049FB80
    function QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;//0049FB88
    function _AddRef:Integer; stdcall;//0049FBC8
    function _Release:Integer; stdcall;//0049FBE8
    procedure sub_0049FC08;//0049FC08
    constructor Create;//0049FC0C
    procedure sub_0049FC50;//0049FC50
    destructor Destroy();//0049FC54
    procedure Change;//0049FC88
    procedure Execute(AComponent:TComponent);//0049FCA0
    procedure SetAction(Value:TBasicAction);//0049FCBC
    //function sub_0049FCE8:?;//0049FCE8
    procedure sub_0049FCEC;//0049FCEC
    function Update:Boolean;//0049FCF4
    constructor Create(AOwner:TComponent);//0049FD18
    destructor Destroy();//0049FD5C
    function Suspended:Boolean;//0049FDE8
    function HandlesTarget(Target:TObject):Boolean;//0049FDEC
    procedure ExecuteTarget(Target:TObject);//0049FDF0
    //function sub_0049FDF4(?:TContainedAction; ?:?):?;//0049FDF4
    //function sub_0049FE10(?:TContainedAction):?;//0049FE10
    procedure Notification(AComponent:TComponent; Operation:TOperation);//0049FE20
    procedure UpdateTarget(Target:TObject);//0049FE48
    procedure Execute;//0049FE4C
    function Update:Boolean;//0049FE68
    //procedure sub_0049FE84(?:?; ?:?);//0049FE84
    procedure sub_0049FEF0;//0049FEF0
    procedure RegisterChanges(Value:TBasicActionLink);//0049FF04
    procedure UnRegisterChanges(Value:TBasicActionLink);//0049FF1C
    procedure sub_0049FF70(?:TBasicAction; ?:TComponent);//0049FF70
    constructor Create(Ownership:TStreamOwnership);//0049FF9C
    destructor Destroy();//0049FFE8
    function Read(pv:Pointer; cb:Cardinal; pcbRead:PFixedUInt):HRESULT; stdcall;//004A0020
    function Write(pv:Pointer; cb:Cardinal; pcbWritten:PFixedUInt):HRESULT; stdcall;//004A0088
    //function Seek(dlibMove:Int64; ?:?; dwOrigin:Cardinal; libNewPosition:UInt64):HRESULT; stdcall;//004A00F0
    //function SetSize(libNewSize:UInt64; ?:?):HRESULT; stdcall;//004A0184
    //function CopyTo(stm:IStream; cb:UInt64; ?:?; cbRead:UInt64; cbWritten:UInt64):HRESULT; stdcall;//004A0228
    function Commit(grfCommitFlags:Cardinal):HRESULT; stdcall;//004A0420
    function Revert:HRESULT; stdcall;//004A042C
    function LockRegion(libOffset:UInt64; cb:UInt64; dwLockType:Cardinal):HRESULT; stdcall;//004A0438
    function UnlockRegion(libOffset:UInt64; cb:UInt64; dwLockType:Cardinal):HRESULT; stdcall;//004A0444
    function Stat(statstg:tagSTATSTG; grfStatFlag:Cardinal):HRESULT; stdcall;//004A0450
    function Clone(stm:IStream):HRESULT; stdcall;//004A04BC
    procedure sub_004A04D4;//004A04D4
    constructor Create(AOwner:TComponent);//004A0554
    procedure AfterConstruction;//004A0688
    constructor CreateNew(Dummy:Integer);//004A0694
    procedure BeforeDestruction;//004A06F0
    destructor Destroy();//004A071C
    procedure sub_004A07B8;//004A07B8
    procedure sub_004A0818;//004A0818
    function DoWriteWidth:Boolean;//004A087C
    function DoWriteHorizontalOffset:Boolean;//004A08A4
    function DoWriteVerticalOffset:Boolean;//004A08D8
    function DoWriteHeight:Boolean;//004A090C
    procedure DefineProperties(Filer:TFiler);//004A0934
    //procedure sub_0049EC90(?:?; ?:?; ?:?);//004A0A84
    procedure HandleCreateException;//004A0AF0
    procedure ReadState(Reader:TReader);//004A0B10
    procedure ReadWidth(Reader:TReader);//004A0B24
    procedure ReadHorizontalOffset(Reader:TReader);//004A0B38
    procedure ReadVerticalOffset(Reader:TReader);//004A0B4C
    procedure ReadHeight(Reader:TReader);//004A0B60
    procedure WriteWidth(Writer:TWriter);//004A0B74
    procedure WriteHorizontalOffset(Writer:TWriter);//004A0B80
    procedure WriteVerticalOffset(Writer:TWriter);//004A0B8C
    procedure WriteHeight(Writer:TWriter);//004A0B98
    function StdWndProc(Window:Windows.HWND; Message:Windows.UINT; WParam:Windows.WPARAM; LParam:Windows.WPARAM):LRESULT; stdcall;//004A0BA4
    function CalcJmpOffset(Src:Pointer; Dest:Pointer):LongInt;//004A0BC4
    function MakeObjectInstance(AMethod:TWndMethod):Pointer;//004A0BCC
    procedure FreeObjectInstance(ObjectInstance:Pointer);//004A0C64
    procedure CleanupInstFreeList(BlockStart:Types.PByte; BlockEnd:Types.PByte);//004A0C78
    function GetFreeInstBlockItemCount(Item:PObjectInstance; Block:PInstanceBlock):Integer;//004A0CB4
    procedure ReleaseObjectInstanceBlocks;//004A0CE4
    function AllocateHWnd(AMethod:TWndMethod):HWND;//004A0D64
    procedure DeallocateHWnd(Wnd:Windows.HWND);//004A0E18

implementation

//0049DDD8
procedure TThread.AfterConstruction;
begin
{*
 0049DDD8    cmp         byte ptr [eax+0D],0
>0049DDDC    jne         0049DDEB
 0049DDDE    cmp         byte ptr [eax+3C],0
>0049DDE2    jne         0049DDEB
 0049DDE4    mov         dl,1
 0049DDE6    call        TThread.InternalStart
 0049DDEB    ret
*}
end;

//0049DDEC
{*procedure sub_0049DDEC(?:?; ?:?);
begin
 0049DDEC    push        ebp
 0049DDED    mov         ebp,esp
 0049DDEF    add         esp,0FFFFFFEC
 0049DDF2    push        ebx
 0049DDF3    xor         ecx,ecx
 0049DDF5    mov         dword ptr [ebp-14],ecx
 0049DDF8    mov         ebx,edx
 0049DDFA    xor         eax,eax
 0049DDFC    push        ebp
 0049DDFD    push        49DE5C
 0049DE02    push        dword ptr fs:[eax]
 0049DE05    mov         dword ptr fs:[eax],esp
 0049DE08    test        ebx,ebx
>0049DE0A    je          0049DE46
 0049DE0C    lea         ecx,[ebp-14]
 0049DE0F    xor         edx,edx
 0049DE11    mov         eax,ebx
 0049DE13    call        00422CB4
 0049DE18    mov         eax,dword ptr [ebp-14]
 0049DE1B    mov         dword ptr [ebp-10],eax
 0049DE1E    mov         byte ptr [ebp-0C],11
 0049DE22    mov         dword ptr [ebp-8],ebx
 0049DE25    mov         byte ptr [ebp-4],0
 0049DE29    lea         eax,[ebp-10]
 0049DE2C    push        eax
 0049DE2D    push        1
 0049DE2F    mov         ecx,dword ptr ds:[7C4718];^SResString151:TResStringRec
 0049DE35    mov         dl,1
 0049DE37    mov         eax,[004770A4];EThread
 0049DE3C    call        Exception.CreateResFmt;EThread.Create
 0049DE41    call        @RaiseExcept
 0049DE46    xor         eax,eax
 0049DE48    pop         edx
 0049DE49    pop         ecx
 0049DE4A    pop         ecx
 0049DE4B    mov         dword ptr fs:[eax],edx
 0049DE4E    push        49DE63
 0049DE53    lea         eax,[ebp-14]
 0049DE56    call        @UStrClr
 0049DE5B    ret
>0049DE5C    jmp         @HandleFinally
>0049DE61    jmp         0049DE53
 0049DE63    pop         ebx
 0049DE64    mov         esp,ebp
 0049DE66    pop         ebp
 0049DE67    ret
end;*}

//0049DE68
procedure TThread.CheckThreadError(Success:Boolean);
begin
{*
 0049DE68    push        ebx
 0049DE69    mov         ebx,eax
 0049DE6B    test        dl,dl
>0049DE6D    jne         0049DE7D
 0049DE6F    call        kernel32.GetLastError
 0049DE74    mov         edx,eax
 0049DE76    mov         eax,ebx
 0049DE78    call        0049DDEC
 0049DE7D    pop         ebx
 0049DE7E    ret
*}
end;

//0049DE80
procedure TThread.CallOnTerminate;
begin
{*
 0049DE80    push        ebx
 0049DE81    cmp         word ptr [eax+1A],0
>0049DE86    je          0049DE92
 0049DE88    mov         ebx,eax
 0049DE8A    mov         edx,eax
 0049DE8C    mov         eax,dword ptr [ebx+1C]
 0049DE8F    call        dword ptr [ebx+18]
 0049DE92    pop         ebx
 0049DE93    ret
*}
end;

//0049DE94
procedure TThread.DoTerminate;
begin
{*
 0049DE94    cmp         word ptr [eax+1A],0
>0049DE99    je          0049DEA6
 0049DE9B    push        eax
 0049DE9C    push        49DE80;TThread.CallOnTerminate
 0049DEA1    call        TThread.Synchronize
 0049DEA6    ret
*}
end;

//0049DEA8
procedure sub_0049DEA8;
begin
{*
 0049DEA8    ret
*}
end;

//0049DEAC
function TThread.GetCurrentThread:TThread;
begin
{*
 0049DEAC    push        ebx
 0049DEAD    call        @GetTls
 0049DEB2    cmp         dword ptr [eax+8],0;{TThread.FCurrentThread:TThread}
>0049DEB9    jne         0049DF0C
 0049DEBB    mov         dl,1
 0049DEBD    mov         eax,[0049C070];TExternalThread
 0049DEC2    call        TExternalThread.Create
 0049DEC7    mov         ebx,eax
 0049DEC9    cmp         dword ptr ds:[7CA3E8],0;gvar_007CA3E8
>0049DED0    jne         0049DEF5
 0049DED2    mov         dl,1
 0049DED4    mov         eax,[0049D52C];TThreadList<System.Classes.TThread>
 0049DED9    call        004A78F4
 0049DEDE    mov         edx,eax
 0049DEE0    xor         eax,eax
 0049DEE2    lock cmpxchgdword ptr ds:[7CA3E8],edx;gvar_007CA3E8
 0049DEEA    test        eax,eax
>0049DEEC    je          0049DEF5
 0049DEEE    mov         eax,edx
 0049DEF0    call        TObject.Free
 0049DEF5    mov         edx,ebx
 0049DEF7    mov         eax,[007CA3E8];gvar_007CA3E8
 0049DEFC    call        TThreadList<System.Classes.TThread>.Add
 0049DF01    call        @GetTls
 0049DF06    mov         dword ptr [eax+8],ebx;{TThread.FCurrentThread:TThread}
 0049DF0C    call        @GetTls
 0049DF11    mov         eax,dword ptr [eax+8];{TThread.FCurrentThread:TThread}
 0049DF17    pop         ebx
 0049DF18    ret
*}
end;

//0049DF1C
procedure TThread.InternalStart(Force:Boolean);
begin
{*
 0049DF1C    push        ebp
 0049DF1D    mov         ebp,esp
 0049DF1F    push        0
 0049DF21    push        0
 0049DF23    push        ebx
 0049DF24    mov         ebx,eax
 0049DF26    xor         eax,eax
 0049DF28    push        ebp
 0049DF29    push        49DFBA
 0049DF2E    push        dword ptr fs:[eax]
 0049DF31    mov         dword ptr fs:[eax],esp
 0049DF34    or          dl,byte ptr [ebx+0D]
>0049DF37    je          0049DF7E
 0049DF39    cmp         byte ptr [ebx+11],0
>0049DF3D    jne         0049DF7E
 0049DF3F    cmp         byte ptr [ebx+3C],0
>0049DF43    jne         0049DF7E
 0049DF45    mov         byte ptr [ebx+0F],0
 0049DF49    mov         byte ptr [ebx+0D],0
 0049DF4D    mov         eax,dword ptr [ebx+8]
 0049DF50    push        eax
 0049DF51    call        kernel32.ResumeThread
 0049DF56    cmp         eax,1
>0049DF59    je          0049DF9F
 0049DF5B    lea         edx,[ebp-4]
 0049DF5E    mov         eax,[007C4A80];^SResString154:TResStringRec
 0049DF63    call        LoadResString
 0049DF68    mov         ecx,dword ptr [ebp-4]
 0049DF6B    mov         dl,1
 0049DF6D    mov         eax,[004770A4];EThread
 0049DF72    call        Exception.Create
 0049DF77    call        @RaiseExcept
>0049DF7C    jmp         0049DF9F
 0049DF7E    lea         edx,[ebp-8]
 0049DF81    mov         eax,[007C4A80];^SResString154:TResStringRec
 0049DF86    call        LoadResString
 0049DF8B    mov         ecx,dword ptr [ebp-8]
 0049DF8E    mov         dl,1
 0049DF90    mov         eax,[004770A4];EThread
 0049DF95    call        Exception.Create
 0049DF9A    call        @RaiseExcept
 0049DF9F    xor         eax,eax
 0049DFA1    pop         edx
 0049DFA2    pop         ecx
 0049DFA3    pop         ecx
 0049DFA4    mov         dword ptr fs:[eax],edx
 0049DFA7    push        49DFC1
 0049DFAC    lea         eax,[ebp-8]
 0049DFAF    mov         edx,2
 0049DFB4    call        @UStrArrayClr
 0049DFB9    ret
>0049DFBA    jmp         @HandleFinally
>0049DFBF    jmp         0049DFAC
 0049DFC1    pop         ebx
 0049DFC2    pop         ecx
 0049DFC3    pop         ecx
 0049DFC4    pop         ebp
 0049DFC5    ret
*}
end;

//0049DFC8
function TThread.GetPriority:TThreadPriority;
begin
{*
 0049DFC8    push        ebx
 0049DFC9    push        esi
 0049DFCA    mov         ebx,eax
 0049DFCC    mov         eax,dword ptr [ebx+8]
 0049DFCF    push        eax
 0049DFD0    call        kernel32.GetThreadPriority
 0049DFD5    mov         esi,eax
 0049DFD7    cmp         esi,7FFFFFFF
 0049DFDD    setne       dl
 0049DFE0    mov         eax,ebx
 0049DFE2    call        TThread.CheckThreadError
 0049DFE7    mov         al,3
 0049DFE9    xor         edx,edx
 0049DFEB    mov         ecx,7A0690
 0049DFF0    cmp         esi,dword ptr [ecx]
>0049DFF2    jne         0049DFF6
 0049DFF4    mov         eax,edx
 0049DFF6    inc         edx
 0049DFF7    add         ecx,4
 0049DFFA    cmp         dl,7
>0049DFFD    jne         0049DFF0
 0049DFFF    pop         esi
 0049E000    pop         ebx
 0049E001    ret
*}
end;

//0049E004
procedure TThread.SetPriority(Value:TThreadPriority);
begin
{*
 0049E004    push        ebx
 0049E005    push        esi
 0049E006    mov         ebx,edx
 0049E008    mov         esi,eax
 0049E00A    movzx       eax,bl
 0049E00D    mov         eax,dword ptr [eax*4+7A0690]
 0049E014    push        eax
 0049E015    mov         eax,dword ptr [esi+8]
 0049E018    push        eax
 0049E019    call        kernel32.SetThreadPriority
 0049E01E    cmp         eax,1
 0049E021    sbb         edx,edx
 0049E023    inc         edx
 0049E024    mov         eax,esi
 0049E026    call        TThread.CheckThreadError
 0049E02B    pop         esi
 0049E02C    pop         ebx
 0049E02D    ret
*}
end;

//0049E03C
procedure TThread.GetTickCount;
begin
{*
 0049E03C    call        kernel32.GetTickCount
 0049E041    ret
*}
end;

//0049E044
procedure TThread.Queue(AMethod:TThreadMethod);
begin
{*
 0049E044    push        ebp
 0049E045    mov         ebp,esp
 0049E047    push        ecx
 0049E048    push        ebx
 0049E049    mov         ebx,eax
 0049E04B    mov         edx,dword ptr ds:[477220];TThread.TSynchronizeRecord
 0049E051    mov         eax,18
 0049E056    call        @New
 0049E05B    mov         dword ptr [ebp-4],eax
 0049E05E    xor         eax,eax
 0049E060    push        ebp
 0049E061    push        49E0C2
 0049E066    push        dword ptr fs:[eax]
 0049E069    mov         dword ptr fs:[eax],esp
 0049E06C    mov         eax,dword ptr [ebp-4]
 0049E06F    mov         dword ptr [eax],ebx
 0049E071    mov         eax,dword ptr [ebp-4]
 0049E074    xor         edx,edx
 0049E076    mov         dword ptr [eax+14],edx
 0049E079    mov         eax,dword ptr [ebp-4]
 0049E07C    mov         edx,dword ptr [ebp+8]
 0049E07F    mov         dword ptr [eax+8],edx
 0049E082    mov         edx,dword ptr [ebp+0C]
 0049E085    mov         dword ptr [eax+0C],edx
 0049E088    mov         eax,dword ptr [ebx]
 0049E08A    mov         cl,1
 0049E08C    mov         edx,dword ptr [ebp-4]
 0049E08F    call        TThread.Synchronize
 0049E094    xor         eax,eax
 0049E096    pop         edx
 0049E097    pop         ecx
 0049E098    pop         ecx
 0049E099    mov         dword ptr fs:[eax],edx
 0049E09C    push        49E0C9
 0049E0A1    call        TThread.GetCurrentThread
 0049E0A6    mov         eax,dword ptr [eax+4]
 0049E0A9    mov         edx,dword ptr ds:[7C4EF8];^MainThreadID:Cardinal
 0049E0AF    cmp         eax,dword ptr [edx]
>0049E0B1    jne         0049E0C1
 0049E0B3    mov         edx,dword ptr ds:[477220];TThread.TSynchronizeRecord
 0049E0B9    mov         eax,dword ptr [ebp-4]
 0049E0BC    call        @Dispose
 0049E0C1    ret
>0049E0C2    jmp         @HandleFinally
>0049E0C7    jmp         0049E0A1
 0049E0C9    pop         ebx
 0049E0CA    pop         ecx
 0049E0CB    pop         ebp
 0049E0CC    ret         8
*}
end;

//0049E0D0
procedure TThread.Queue(AMethod:TThreadMethod);
begin
{*
 0049E0D0    push        ebp
 0049E0D1    mov         ebp,esp
 0049E0D3    push        ecx
 0049E0D4    test        eax,eax
>0049E0D6    je          0049E0E8
 0049E0D8    push        dword ptr [ebp+0C]
 0049E0DB    push        dword ptr [ebp+8]
 0049E0DE    call        TThread.Queue
>0049E0E3    jmp         0049E16B
 0049E0E8    mov         edx,dword ptr ds:[477220];TThread.TSynchronizeRecord
 0049E0EE    mov         eax,18
 0049E0F3    call        @New
 0049E0F8    mov         dword ptr [ebp-4],eax
 0049E0FB    xor         eax,eax
 0049E0FD    push        ebp
 0049E0FE    push        49E164
 0049E103    push        dword ptr fs:[eax]
 0049E106    mov         dword ptr fs:[eax],esp
 0049E109    mov         eax,dword ptr [ebp-4]
 0049E10C    xor         edx,edx
 0049E10E    mov         dword ptr [eax],edx
 0049E110    mov         eax,dword ptr [ebp-4]
 0049E113    xor         edx,edx
 0049E115    mov         dword ptr [eax+14],edx
 0049E118    mov         eax,dword ptr [ebp-4]
 0049E11B    mov         edx,dword ptr [ebp+8]
 0049E11E    mov         dword ptr [eax+8],edx
 0049E121    mov         edx,dword ptr [ebp+0C]
 0049E124    mov         dword ptr [eax+0C],edx
 0049E127    mov         cl,1
 0049E129    mov         edx,dword ptr [ebp-4]
 0049E12C    mov         eax,[00477338];TThread
 0049E131    call        TThread.Synchronize
 0049E136    xor         eax,eax
 0049E138    pop         edx
 0049E139    pop         ecx
 0049E13A    pop         ecx
 0049E13B    mov         dword ptr fs:[eax],edx
 0049E13E    push        49E16B
 0049E143    call        TThread.GetCurrentThread
 0049E148    mov         eax,dword ptr [eax+4]
 0049E14B    mov         edx,dword ptr ds:[7C4EF8];^MainThreadID:Cardinal
 0049E151    cmp         eax,dword ptr [edx]
>0049E153    jne         0049E163
 0049E155    mov         edx,dword ptr ds:[477220];TThread.TSynchronizeRecord
 0049E15B    mov         eax,dword ptr [ebp-4]
 0049E15E    call        @Dispose
 0049E163    ret
>0049E164    jmp         @HandleFinally
>0049E169    jmp         0049E143
 0049E16B    pop         ecx
 0049E16C    pop         ebp
 0049E16D    ret         8
*}
end;

//0049E170
procedure TThread.Synchronize(AMethod:TThreadMethod);
begin
{*
 0049E170    push        ebp
 0049E171    mov         ebp,esp
 0049E173    add         esp,0FFFFFFE8
 0049E176    push        ebx
 0049E177    mov         byte ptr [ebp-5],cl
 0049E17A    mov         dword ptr [ebp-4],edx
 0049E17D    call        TThread.GetCurrentThread
 0049E182    mov         eax,dword ptr [eax+4]
 0049E185    mov         edx,dword ptr ds:[7C4EF8];^MainThreadID:Cardinal
 0049E18B    cmp         eax,dword ptr [edx]
>0049E18D    jne         0049E1C4
 0049E18F    mov         eax,dword ptr [ebp-4]
 0049E192    cmp         word ptr [eax+0A],0
>0049E197    je          0049E1A7
 0049E199    mov         ebx,dword ptr [ebp-4]
 0049E19C    mov         eax,dword ptr [ebx+0C]
 0049E19F    call        dword ptr [ebx+8]
>0049E1A2    jmp         0049E30B
 0049E1A7    mov         eax,dword ptr [ebp-4]
 0049E1AA    cmp         dword ptr [eax+10],0
>0049E1AE    je          0049E30B
 0049E1B4    mov         eax,dword ptr [ebp-4]
 0049E1B7    mov         eax,dword ptr [eax+10]
 0049E1BA    mov         edx,dword ptr [eax]
 0049E1BC    call        dword ptr [edx+0C]
>0049E1BF    jmp         0049E30B
 0049E1C4    cmp         byte ptr [ebp-5],0
>0049E1C8    je          0049E1D9
 0049E1CA    mov         eax,0C
 0049E1CF    call        @GetMem
 0049E1D4    mov         dword ptr [ebp-0C],eax
>0049E1D7    jmp         0049E1DF
 0049E1D9    lea         eax,[ebp-18]
 0049E1DC    mov         dword ptr [ebp-0C],eax
 0049E1DF    movzx       ebx,byte ptr [ebp-5]
 0049E1E3    xor         bl,1
 0049E1E6    test        bl,bl
>0049E1E8    je          0049E1FE
 0049E1EA    mov         dl,1
 0049E1EC    mov         eax,[00401728];TObject
 0049E1F1    call        TObject.Create
 0049E1F6    mov         edx,dword ptr [ebp-0C]
 0049E1F9    mov         dword ptr [edx+8],eax
>0049E1FC    jmp         0049E206
 0049E1FE    mov         eax,dword ptr [ebp-0C]
 0049E201    xor         edx,edx
 0049E203    mov         dword ptr [eax+8],edx
 0049E206    xor         eax,eax
 0049E208    push        ebp
 0049E209    push        49E2EA
 0049E20E    push        dword ptr fs:[eax]
 0049E211    mov         dword ptr fs:[eax],esp
 0049E214    call        TMonitor.CheckMonitorSupport
 0049E219    mov         eax,[007CA3E4];gvar_007CA3E4:TObject
 0049E21E    call        TMonitor.GetMonitor
 0049E223    or          edx,0FFFFFFFF
 0049E226    call        TMonitor.Enter
 0049E22B    xor         eax,eax
 0049E22D    push        ebp
 0049E22E    push        49E2C4
 0049E233    push        dword ptr fs:[eax]
 0049E236    mov         dword ptr fs:[eax],esp
 0049E239    mov         eax,dword ptr [ebp-0C]
 0049E23C    movzx       edx,byte ptr [ebp-5]
 0049E240    mov         byte ptr [eax+4],dl
 0049E243    cmp         dword ptr ds:[7A068C],0;gvar_007A068C
>0049E24A    jne         0049E25D
 0049E24C    mov         dl,1
 0049E24E    mov         eax,[0046C204];TList
 0049E253    call        TObject.Create
 0049E258    mov         [007A068C],eax;gvar_007A068C
 0049E25D    mov         eax,dword ptr [ebp-0C]
 0049E260    mov         edx,dword ptr [ebp-4]
 0049E263    mov         dword ptr [eax],edx
 0049E265    mov         edx,dword ptr [ebp-0C]
 0049E268    mov         eax,[007A068C];gvar_007A068C
 0049E26D    call        TList.Add
 0049E272    call        SignalSyncEvent
 0049E277    cmp         word ptr ds:[7A05FA],0
>0049E27F    je          0049E294
 0049E281    mov         eax,dword ptr [ebp-0C]
 0049E284    mov         eax,dword ptr [eax]
 0049E286    mov         edx,dword ptr [eax]
 0049E288    mov         eax,dword ptr ds:[7A05FC]
 0049E28E    call        dword ptr ds:[7A05F8]
 0049E294    test        bl,bl
>0049E296    je          0049E2AC
 0049E298    mov         eax,dword ptr [ebp-0C]
 0049E29B    mov         eax,dword ptr [eax+8]
 0049E29E    or          ecx,0FFFFFFFF
 0049E2A1    mov         edx,dword ptr ds:[7CA3E4];gvar_007CA3E4:TObject
 0049E2A7    call        TMonitor.Wait
 0049E2AC    xor         eax,eax
 0049E2AE    pop         edx
 0049E2AF    pop         ecx
 0049E2B0    pop         ecx
 0049E2B1    mov         dword ptr fs:[eax],edx
 0049E2B4    push        49E2CB
 0049E2B9    mov         eax,[007CA3E4];gvar_007CA3E4:TObject
 0049E2BE    call        TMonitor.Exit
 0049E2C3    ret
>0049E2C4    jmp         @HandleFinally
>0049E2C9    jmp         0049E2B9
 0049E2CB    xor         eax,eax
 0049E2CD    pop         edx
 0049E2CE    pop         ecx
 0049E2CF    pop         ecx
 0049E2D0    mov         dword ptr fs:[eax],edx
 0049E2D3    push        49E2F1
 0049E2D8    cmp         byte ptr [ebp-5],0
>0049E2DC    jne         0049E2E9
 0049E2DE    mov         eax,dword ptr [ebp-0C]
 0049E2E1    mov         eax,dword ptr [eax+8]
 0049E2E4    call        TObject.Free
 0049E2E9    ret
>0049E2EA    jmp         @HandleFinally
>0049E2EF    jmp         0049E2D8
 0049E2F1    cmp         byte ptr [ebp-5],0
>0049E2F5    jne         0049E30B
 0049E2F7    mov         eax,dword ptr [ebp-4]
 0049E2FA    cmp         dword ptr [eax+14],0
>0049E2FE    je          0049E30B
 0049E300    mov         eax,dword ptr [ebp-4]
 0049E303    mov         eax,dword ptr [eax+14]
 0049E306    call        @RaiseExcept
 0049E30B    pop         ebx
 0049E30C    mov         esp,ebp
 0049E30E    pop         ebp
 0049E30F    ret
*}
end;

//0049E310
procedure TThread.Synchronize(AMethod:TThreadMethod);
begin
{*
 0049E310    push        ebp
 0049E311    mov         ebp,esp
 0049E313    push        ebx
 0049E314    mov         ebx,eax
 0049E316    mov         dword ptr [ebx+20],ebx
 0049E319    xor         eax,eax
 0049E31B    mov         dword ptr [ebx+34],eax
 0049E31E    mov         eax,dword ptr [ebp+8]
 0049E321    mov         dword ptr [ebx+28],eax
 0049E324    mov         eax,dword ptr [ebp+0C]
 0049E327    mov         dword ptr [ebx+2C],eax
 0049E32A    lea         eax,[ebx+30]
 0049E32D    call        @IntfClear
 0049E332    lea         edx,[ebx+20]
 0049E335    xor         ecx,ecx
 0049E337    mov         eax,dword ptr [ebx]
 0049E339    call        TThread.Synchronize
 0049E33E    pop         ebx
 0049E33F    pop         ebp
 0049E340    ret         8
*}
end;

//0049E344
procedure TThread.RemoveQueuedEvents;
begin
{*
 0049E344    push        ebp
 0049E345    mov         ebp,esp
 0049E347    push        ebx
 0049E348    push        esi
 0049E349    push        edi
 0049E34A    mov         edi,eax
 0049E34C    call        TMonitor.CheckMonitorSupport
 0049E351    mov         eax,[007CA3E4];gvar_007CA3E4:TObject
 0049E356    call        TMonitor.GetMonitor
 0049E35B    or          edx,0FFFFFFFF
 0049E35E    call        TMonitor.Enter
 0049E363    xor         eax,eax
 0049E365    push        ebp
 0049E366    push        49E3E4
 0049E36B    push        dword ptr fs:[eax]
 0049E36E    mov         dword ptr fs:[eax],esp
 0049E371    cmp         dword ptr ds:[7A068C],0;gvar_007A068C
>0049E378    je          0049E3CC
 0049E37A    mov         eax,[007A068C];0x0 gvar_007A068C
 0049E37F    mov         esi,dword ptr [eax+8]
 0049E382    dec         esi
 0049E383    cmp         esi,0
>0049E386    jl          0049E3CC
 0049E388    mov         edx,esi
 0049E38A    mov         eax,[007A068C];0x0 gvar_007A068C
 0049E38F    call        TList.Get
 0049E394    mov         ebx,eax
 0049E396    cmp         dword ptr [ebx+8],0
>0049E39A    jne         0049E3C6
 0049E39C    test        edi,edi
>0049E39E    je          0049E3C6
 0049E3A0    mov         eax,dword ptr [ebx]
 0049E3A2    cmp         edi,dword ptr [eax]
>0049E3A4    jne         0049E3C6
 0049E3A6    mov         edx,esi
 0049E3A8    mov         eax,[007A068C];0x0 gvar_007A068C
 0049E3AD    call        TList.Delete
 0049E3B2    mov         eax,dword ptr [ebx]
 0049E3B4    mov         edx,dword ptr ds:[477220];TThread.TSynchronizeRecord
 0049E3BA    call        @Dispose
 0049E3BF    mov         eax,ebx
 0049E3C1    call        @FreeMem
 0049E3C6    dec         esi
 0049E3C7    cmp         esi,0FFFFFFFF
>0049E3CA    jne         0049E388
 0049E3CC    xor         eax,eax
 0049E3CE    pop         edx
 0049E3CF    pop         ecx
 0049E3D0    pop         ecx
 0049E3D1    mov         dword ptr fs:[eax],edx
 0049E3D4    push        49E3EB
 0049E3D9    mov         eax,[007CA3E4];gvar_007CA3E4:TObject
 0049E3DE    call        TMonitor.Exit
 0049E3E3    ret
>0049E3E4    jmp         @HandleFinally
>0049E3E9    jmp         0049E3D9
 0049E3EB    pop         edi
 0049E3EC    pop         esi
 0049E3ED    pop         ebx
 0049E3EE    pop         ebp
 0049E3EF    ret
*}
end;

//0049E408
procedure TThread.SpinWait;
begin
{*
 0049E408    cmp         eax,0
>0049E40B    jle         0049E415
 0049E40D    rep nop
 0049E40F    dec         eax
 0049E410    cmp         eax,0
>0049E413    jg          0049E40D
 0049E415    ret
*}
end;

//0049E418
procedure TThread.Sleep;
begin
{*
 0049E418    push        eax
 0049E419    call        kernel32.Sleep
 0049E41E    ret
*}
end;

//0049E420
procedure TThread.Yield;
begin
{*
 0049E420    call        kernel32.SwitchToThread
 0049E425    ret
*}
end;

//0049E428
procedure TThread.Suspend;
begin
{*
 0049E428    push        ebp
 0049E429    mov         ebp,esp
 0049E42B    add         esp,0FFFFFFF8
 0049E42E    push        ebx
 0049E42F    push        esi
 0049E430    push        edi
 0049E431    mov         dword ptr [ebp-4],eax
 0049E434    mov         eax,dword ptr [ebp-4]
 0049E437    movzx       eax,byte ptr [eax+0F];TThread.FSuspended:Boolean
 0049E43B    mov         byte ptr [ebp-5],al
 0049E43E    xor         eax,eax
 0049E440    push        ebp
 0049E441    push        49E476
 0049E446    push        dword ptr fs:[eax]
 0049E449    mov         dword ptr fs:[eax],esp
 0049E44C    mov         eax,dword ptr [ebp-4]
 0049E44F    mov         byte ptr [eax+0F],1;TThread.FSuspended:Boolean
 0049E453    mov         eax,dword ptr [ebp-4]
 0049E456    mov         eax,dword ptr [eax+8];TThread.FHandle:NativeUInt
 0049E459    push        eax
 0049E45A    call        kernel32.SuspendThread
 0049E45F    test        eax,eax
 0049E461    setge       dl
 0049E464    mov         eax,dword ptr [ebp-4]
 0049E467    call        TThread.CheckThreadError
 0049E46C    xor         eax,eax
 0049E46E    pop         edx
 0049E46F    pop         ecx
 0049E470    pop         ecx
 0049E471    mov         dword ptr fs:[eax],edx
>0049E474    jmp         0049E48F
>0049E476    jmp         @HandleAnyException
 0049E47B    mov         eax,dword ptr [ebp-4]
 0049E47E    movzx       edx,byte ptr [ebp-5]
 0049E482    mov         byte ptr [eax+0F],dl;TThread.FSuspended:Boolean
 0049E485    call        @RaiseAgain
 0049E48A    call        @DoneExcept
 0049E48F    pop         edi
 0049E490    pop         esi
 0049E491    pop         ebx
 0049E492    pop         ecx
 0049E493    pop         ecx
 0049E494    pop         ebp
 0049E495    ret
*}
end;

//0049E498
procedure TThread.Resume;
begin
{*
 0049E498    push        ebx
 0049E499    push        esi
 0049E49A    mov         ebx,eax
 0049E49C    mov         eax,dword ptr [ebx+8];TThread.FHandle:NativeUInt
 0049E49F    push        eax
 0049E4A0    call        kernel32.ResumeThread
 0049E4A5    mov         esi,eax
 0049E4A7    test        esi,esi
 0049E4A9    setge       dl
 0049E4AC    mov         eax,ebx
 0049E4AE    call        TThread.CheckThreadError
 0049E4B3    dec         esi
>0049E4B4    jne         0049E4BA
 0049E4B6    mov         byte ptr [ebx+0F],0;TThread.FSuspended:Boolean
 0049E4BA    pop         esi
 0049E4BB    pop         ebx
 0049E4BC    ret
*}
end;

//0049E4C0
procedure TThread.Terminate;
begin
{*
 0049E4C0    cmp         byte ptr [eax+3C],0;TThread.FExternalThread:Boolean
>0049E4C4    je          0049E4DD
 0049E4C6    mov         ecx,dword ptr ds:[7C43BC];^SResString152:TResStringRec
 0049E4CC    mov         dl,1
 0049E4CE    mov         eax,[004770A4];EThread
 0049E4D3    call        Exception.CreateRes;EThread.Create
 0049E4D8    call        @RaiseExcept
 0049E4DD    mov         byte ptr [eax+0E],1;TThread.FTerminated:Boolean
 0049E4E1    mov         edx,dword ptr [eax]
 0049E4E3    call        dword ptr [edx+4];TThread.sub_0049DEA8
 0049E4E6    ret
*}
end;

//0049E4E8
function TThread.WaitFor:Cardinal;
begin
{*
 0049E4E8    push        ebx
 0049E4E9    push        esi
 0049E4EA    add         esp,0FFFFFFD8
 0049E4ED    mov         esi,eax
 0049E4EF    cmp         byte ptr [esi+3C],0
>0049E4F3    je          0049E50C
 0049E4F5    mov         ecx,dword ptr ds:[7C485C];^SResString153:TResStringRec
 0049E4FB    mov         dl,1
 0049E4FD    mov         eax,[004770A4];EThread
 0049E502    call        Exception.CreateRes
 0049E507    call        @RaiseExcept
 0049E50C    mov         eax,dword ptr [esi+8]
 0049E50F    mov         dword ptr [esp+4],eax
 0049E513    call        TThread.GetCurrentThread
 0049E518    mov         eax,dword ptr [eax+4]
 0049E51B    mov         edx,dword ptr ds:[7C4EF8];^MainThreadID:Cardinal
 0049E521    cmp         eax,dword ptr [edx]
>0049E523    jne         0049E57D
 0049E525    xor         ebx,ebx
 0049E527    mov         eax,[007CA3C0];gvar_007CA3C0:THandle
 0049E52C    mov         dword ptr [esp+8],eax
 0049E530    cmp         ebx,2
>0049E533    jne         0049E547
 0049E535    push        0
 0049E537    push        0
 0049E539    push        0
 0049E53B    push        0
 0049E53D    lea         eax,[esp+1C]
 0049E541    push        eax
 0049E542    call        user32.PeekMessageW
 0049E547    push        40
 0049E549    push        3E8
 0049E54E    push        0
 0049E550    lea         eax,[esp+10]
 0049E554    push        eax
 0049E555    push        2
 0049E557    call        user32.MsgWaitForMultipleObjects
 0049E55C    mov         ebx,eax
 0049E55E    cmp         ebx,0FFFFFFFF
 0049E561    setne       dl
 0049E564    mov         eax,esi
 0049E566    call        TThread.CheckThreadError
 0049E56B    cmp         ebx,1
>0049E56E    jne         0049E577
 0049E570    xor         eax,eax
 0049E572    call        CheckSynchronize
 0049E577    test        ebx,ebx
>0049E579    jne         0049E530
>0049E57B    jmp         0049E589
 0049E57D    push        0FF
 0049E57F    mov         eax,dword ptr [esp+8]
 0049E583    push        eax
 0049E584    call        kernel32.WaitForSingleObject
 0049E589    push        esp
 0049E58A    mov         eax,dword ptr [esp+8]
 0049E58E    push        eax
 0049E58F    call        kernel32.GetExitCodeThread
 0049E594    cmp         eax,1
 0049E597    sbb         edx,edx
 0049E599    inc         edx
 0049E59A    mov         eax,esi
 0049E59C    call        TThread.CheckThreadError
 0049E5A1    mov         eax,dword ptr [esp]
 0049E5A4    add         esp,28
 0049E5A7    pop         esi
 0049E5A8    pop         ebx
 0049E5A9    ret
*}
end;

//0049E5AC
function TComponentEnumerator.GetCurrent:TComponent;
begin
{*
 0049E5AC    mov         edx,dword ptr [eax+4]
 0049E5AF    mov         eax,dword ptr [eax+8]
 0049E5B2    call        TComponent.GetComponent
 0049E5B7    ret
*}
end;

//0049E5B8
constructor TComponent.Create;
begin
{*
 0049E5B8    push        ebx
 0049E5B9    push        esi
 0049E5BA    push        edi
 0049E5BB    test        dl,dl
>0049E5BD    je          0049E5C7
 0049E5BF    add         esp,0FFFFFFF0
 0049E5C2    call        @ClassCreate
 0049E5C7    mov         esi,ecx
 0049E5C9    mov         ebx,edx
 0049E5CB    mov         edi,eax
 0049E5CD    movzx       eax,byte ptr ds:[49E600]
 0049E5D4    mov         byte ptr [edi+30],al
 0049E5D7    test        esi,esi
>0049E5D9    je          0049E5E4
 0049E5DB    mov         edx,edi
 0049E5DD    mov         eax,esi
 0049E5DF    call        TComponent.InsertComponent
 0049E5E4    mov         eax,edi
 0049E5E6    test        bl,bl
>0049E5E8    je          0049E5F9
 0049E5EA    call        @AfterConstruction
 0049E5EF    pop         dword ptr fs:[0]
 0049E5F6    add         esp,0C
 0049E5F9    mov         eax,edi
 0049E5FB    pop         edi
 0049E5FC    pop         esi
 0049E5FD    pop         ebx
 0049E5FE    ret
*}
end;

//0049E604
destructor TComponent.Destroy();
begin
{*
 0049E604    push        ebx
 0049E605    push        esi
 0049E606    call        @BeforeDestruction
 0049E60B    mov         ebx,edx
 0049E60D    mov         esi,eax
 0049E60F    mov         eax,esi
 0049E611    call        TComponent.Destroying
 0049E616    mov         eax,esi
 0049E618    call        0049E694
 0049E61D    mov         eax,esi
 0049E61F    call        TComponent.DestroyComponents
 0049E624    mov         eax,dword ptr [esi+4];TComponent.FOwner:TComponent
 0049E627    test        eax,eax
>0049E629    je          0049E632
 0049E62B    mov         edx,esi
 0049E62D    call        TComponent.RemoveComponent
 0049E632    mov         eax,dword ptr [esi+24];TComponent.FObservers:TObservers
 0049E635    call        TObject.Free
 0049E63A    mov         dl,0FC
 0049E63C    and         dl,bl
 0049E63E    mov         eax,esi
 0049E640    call        TMemoryStream.Destroy
 0049E645    test        bl,bl
>0049E647    jle         0049E650
 0049E649    mov         eax,esi
 0049E64B    call        @ClassDestroy
 0049E650    pop         esi
 0049E651    pop         ebx
 0049E652    ret
*}
end;

//0049E654
procedure sub_0049E654;
begin
{*
 0049E654    push        esi
 0049E655    movzx       esi,word ptr [eax+1C];TComponent.FComponentState:TComponentState
 0049E659    test        si,8
>0049E65E    je          0049E677
 0049E660    mov         ecx,dword ptr ds:[7C4774];^SResString207:TResStringRec
 0049E666    mov         dl,1
 0049E668    mov         eax,[0046BE9C];EInvalidOperation
 0049E66D    call        Exception.CreateRes;EInvalidOperation.Create
 0049E672    call        @RaiseExcept
 0049E677    push        edx
 0049E678    push        4A2414;sub_004A2414
 0049E67D    xor         eax,eax
 0049E67F    call        TThread.Queue
 0049E684    pop         esi
 0049E685    ret
*}
end;

//0049E688
procedure TComponent.BeforeDestruction;
begin
{*
 0049E688    test        byte ptr [eax+1C],8
>0049E68C    jne         0049E693
 0049E68E    call        TComponent.Destroying
 0049E693    ret
*}
end;

//0049E694
procedure sub_0049E694(?:TComponent);
begin
{*
 0049E694    push        ebx
 0049E695    push        esi
 0049E696    push        edi
 0049E697    add         esp,0FFFFFFF8
 0049E69A    mov         ebx,eax
 0049E69C    cmp         dword ptr [ebx+14],0;TComponent.FFreeNotifies:TList<System.Classes.TComponent>
>0049E6A0    je          0049E6F1
>0049E6A2    jmp         0049E6CA
 0049E6A4    mov         edi,esi
 0049E6A6    mov         eax,dword ptr [esi+8]
 0049E6A9    dec         eax
 0049E6AA    mov         dword ptr [esp],eax
 0049E6AD    lea         eax,[edi+8]
 0049E6B0    mov         edx,dword ptr [esp]
 0049E6B3    call        00434534
 0049E6B8    mov         eax,dword ptr [edi+20]
 0049E6BB    mov         edx,dword ptr [esp]
 0049E6BE    mov         eax,dword ptr [eax+edx*4]
 0049E6C1    mov         cl,1
 0049E6C3    mov         edx,ebx
 0049E6C5    mov         esi,dword ptr [eax]
 0049E6C7    call        dword ptr [esi+14]
 0049E6CA    mov         esi,dword ptr [ebx+14];TComponent.FFreeNotifies:TList<System.Classes.TComponent>
 0049E6CD    test        esi,esi
>0049E6CF    je          0049E6D7
 0049E6D1    cmp         dword ptr [esi+8],0;TList<System.Classes.TComponent>.FCount:Integer
>0049E6D5    jg          0049E6A4
 0049E6D7    lea         eax,[ebx+14];TComponent.FFreeNotifies:TList<System.Classes.TComponent>
 0049E6DA    mov         dword ptr [esp+4],eax
 0049E6DE    mov         eax,dword ptr [esp+4]
 0049E6E2    mov         eax,dword ptr [eax]
 0049E6E4    mov         edx,dword ptr [esp+4]
 0049E6E8    xor         ecx,ecx
 0049E6EA    mov         dword ptr [edx],ecx
 0049E6EC    call        TObject.Free
 0049E6F1    pop         ecx
 0049E6F2    pop         edx
 0049E6F3    pop         edi
 0049E6F4    pop         esi
 0049E6F5    pop         ebx
 0049E6F6    ret
*}
end;

//0049E6F8
procedure TComponent.FreeNotification(AComponent:TComponent);
begin
{*
 0049E6F8    push        ebx
 0049E6F9    push        esi
 0049E6FA    push        edi
 0049E6FB    add         esp,0FFFFFFF4
 0049E6FE    mov         esi,edx
 0049E700    mov         ebx,eax
 0049E702    mov         eax,dword ptr [ebx+4];TComponent.FOwner:TComponent
 0049E705    test        eax,eax
>0049E707    je          0049E70E
 0049E709    cmp         eax,dword ptr [esi+4];TComponent.FOwner:TComponent
>0049E70C    je          0049E75D
 0049E70E    cmp         dword ptr [ebx+14],0;TComponent.FFreeNotifies:TList<System.Classes.TComponent>
>0049E712    jne         0049E723
 0049E714    mov         dl,1
 0049E716    mov         eax,[0047E924];TList<System.Classes.TComponent>
 0049E71B    call        TList<System.Actions.TContainedAction>.Create
 0049E720    mov         dword ptr [ebx+14],eax;TComponent.FFreeNotifies:TList<System.Classes.TComponent>
 0049E723    mov         eax,dword ptr [ebx+14];TComponent.FFreeNotifies:TList<System.Classes.TComponent>
 0049E726    mov         edi,esi
 0049E728    mov         dword ptr [esp],edi
 0049E72B    add         eax,8;TList<System.Classes.TComponent>.FCount:Integer
 0049E72E    mov         dword ptr [esp+4],eax
 0049E732    mov         edx,esp
 0049E734    mov         eax,dword ptr [esp+4]
 0049E738    call        00434714
 0049E73D    test        eax,eax
>0049E73F    jge         0049E75D
 0049E741    mov         eax,dword ptr [ebx+14];TComponent.FFreeNotifies:TList<System.Classes.TComponent>
 0049E744    mov         dword ptr [esp+8],edi
 0049E748    lea         edx,[esp+8]
 0049E74C    add         eax,8;TList<System.Classes.TComponent>.FCount:Integer
 0049E74F    call        0043489C
 0049E754    mov         edx,ebx
 0049E756    mov         eax,esi
 0049E758    call        TComponent.FreeNotification
 0049E75D    or          word ptr [ebx+1C],100;TComponent.FComponentState:TComponentState
 0049E763    add         esp,0C
 0049E766    pop         edi
 0049E767    pop         esi
 0049E768    pop         ebx
 0049E769    ret
*}
end;

//0049E76C
{*procedure sub_0049E76C(?:?);
begin
 0049E76C    push        ebx
 0049E76D    push        esi
 0049E76E    push        ecx
 0049E76F    mov         ebx,eax
 0049E771    test        byte ptr [ebx+1C],10
>0049E775    jne         0049E7A3
 0049E777    mov         byte ptr [esp],0
 0049E77B    push        ebx
 0049E77C    push        49E7A8
 0049E781    lea         edx,[esp+8]
 0049E785    mov         eax,ebx
 0049E787    call        0049EAB4
 0049E78C    cmp         byte ptr [esp],0
>0049E790    jne         0049E7A3
 0049E792    push        ebx
 0049E793    push        49E7A8
 0049E798    mov         eax,ebx
 0049E79A    mov         si,0FFFA
 0049E79E    call        @CallDynaInst
 0049E7A3    pop         edx
 0049E7A4    pop         esi
 0049E7A5    pop         ebx
 0049E7A6    ret
end;*}

//0049E7B0
procedure TComponent.ReadLeft(Reader:TReader);
begin
{*
 0049E7B0    push        ebx
 0049E7B1    push        esi
 0049E7B2    mov         esi,edx
 0049E7B4    mov         ebx,eax
 0049E7B6    mov         eax,esi
 0049E7B8    call        TReader.ReadInteger
 0049E7BD    mov         word ptr [ebx+18],ax
 0049E7C1    pop         esi
 0049E7C2    pop         ebx
 0049E7C3    ret
*}
end;

//0049E7C4
procedure TComponent.ReadTop(Reader:TReader);
begin
{*
 0049E7C4    push        ebx
 0049E7C5    push        esi
 0049E7C6    mov         esi,edx
 0049E7C8    mov         ebx,eax
 0049E7CA    mov         eax,esi
 0049E7CC    call        TReader.ReadInteger
 0049E7D1    mov         word ptr [ebx+1A],ax
 0049E7D5    pop         esi
 0049E7D6    pop         ebx
 0049E7D7    ret
*}
end;

//0049E7D8
procedure TComponent.WriteLeft(Writer:TWriter);
begin
{*
 0049E7D8    movzx       eax,word ptr [eax+18]
 0049E7DC    xchg        eax,edx
 0049E7DD    call        TWriter.WriteInteger
 0049E7E2    ret
*}
end;

//0049E7E4
procedure TComponent.WriteTop(Writer:TWriter);
begin
{*
 0049E7E4    movzx       eax,word ptr [eax+1A]
 0049E7E8    xchg        eax,edx
 0049E7E9    call        TWriter.WriteInteger
 0049E7EE    ret
*}
end;

//0049E7F0
procedure sub_0049E7F0(?:TComponent; ?:TComponent);
begin
{*
 0049E7F0    push        ebx
 0049E7F1    push        esi
 0049E7F2    push        ecx
 0049E7F3    mov         esi,edx
 0049E7F5    mov         ebx,eax
 0049E7F7    cmp         dword ptr [ebx+10],0
>0049E7FB    jne         0049E80C
 0049E7FD    mov         dl,1
 0049E7FF    mov         eax,[0047E924];TList<System.Classes.TComponent>
 0049E804    call        TList<System.Actions.TContainedAction>.Create
 0049E809    mov         dword ptr [ebx+10],eax
 0049E80C    mov         eax,dword ptr [ebx+10]
 0049E80F    mov         dword ptr [esp],esi
 0049E812    mov         edx,esp
 0049E814    add         eax,8
 0049E817    call        0043489C
 0049E81C    cmp         dword ptr [ebx+34],0
>0049E820    je          0049E82B
 0049E822    mov         edx,esi
 0049E824    mov         eax,ebx
 0049E826    call        0049F498
 0049E82B    mov         dword ptr [esi+4],ebx
 0049E82E    pop         edx
 0049E82F    pop         esi
 0049E830    pop         ebx
 0049E831    ret
*}
end;

//0049E834
procedure sub_0049E834(?:TComponent; ?:TComponent);
begin
{*
 0049E834    push        ebx
 0049E835    push        esi
 0049E836    push        edi
 0049E837    push        ebp
 0049E838    add         esp,0FFFFFFC4
 0049E83B    mov         edi,edx
 0049E83D    mov         ebx,eax
 0049E83F    xor         eax,eax
 0049E841    mov         dword ptr [edi+4],eax
 0049E844    mov         eax,dword ptr [ebx+10]
 0049E847    mov         esi,dword ptr [eax+8]
 0049E84A    test        esi,esi
>0049E84C    jle         0049E8AF
 0049E84E    mov         ebp,eax
 0049E850    mov         edx,esi
 0049E852    dec         edx
 0049E853    lea         eax,[ebp+8]
 0049E856    call        00434534
 0049E85B    mov         eax,esi
 0049E85D    dec         eax
 0049E85E    mov         edx,dword ptr [ebp+20]
 0049E861    cmp         edi,dword ptr [edx+eax*4]
>0049E864    jne         0049E878
 0049E866    mov         eax,dword ptr [ebx+10]
 0049E869    mov         edx,esi
 0049E86B    dec         edx
 0049E86C    add         eax,8
 0049E86F    mov         cl,1
 0049E871    call        00435200
>0049E876    jmp         0049E890
 0049E878    mov         eax,dword ptr [ebx+10]
 0049E87B    mov         dword ptr [esp],edi
 0049E87E    add         eax,8
 0049E881    mov         dword ptr [esp+4],eax
 0049E885    mov         edx,esp
 0049E887    mov         eax,dword ptr [esp+4]
 0049E88B    call        00434878
 0049E890    mov         eax,dword ptr [ebx+34]
 0049E893    test        eax,eax
>0049E895    je          0049E8AF
 0049E897    mov         dword ptr [esp+8],edi
 0049E89B    add         eax,8
 0049E89E    mov         dword ptr [esp+20],eax
 0049E8A2    lea         edx,[esp+8]
 0049E8A6    mov         eax,dword ptr [esp+20]
 0049E8AA    call        00434878
 0049E8AF    mov         eax,dword ptr [ebx+10]
 0049E8B2    cmp         dword ptr [eax+8],0
>0049E8B6    jne         0049E8EC
 0049E8B8    lea         eax,[ebx+34]
 0049E8BB    mov         dword ptr [esp+34],eax
 0049E8BF    mov         eax,dword ptr [esp+34]
 0049E8C3    mov         eax,dword ptr [eax]
 0049E8C5    mov         edx,dword ptr [esp+34]
 0049E8C9    xor         ecx,ecx
 0049E8CB    mov         dword ptr [edx],ecx
 0049E8CD    call        TObject.Free
 0049E8D2    lea         eax,[ebx+10]
 0049E8D5    mov         dword ptr [esp+38],eax
 0049E8D9    mov         eax,dword ptr [esp+38]
 0049E8DD    mov         eax,dword ptr [eax]
 0049E8DF    mov         edx,dword ptr [esp+38]
 0049E8E3    xor         ecx,ecx
 0049E8E5    mov         dword ptr [edx],ecx
 0049E8E7    call        TObject.Free
 0049E8EC    add         esp,3C
 0049E8EF    pop         ebp
 0049E8F0    pop         edi
 0049E8F1    pop         esi
 0049E8F2    pop         ebx
 0049E8F3    ret
*}
end;

//0049E8F4
procedure TComponent.InsertComponent(AComponent:TComponent);
begin
{*
 0049E8F4    push        ebp
 0049E8F5    mov         ebp,esp
 0049E8F7    push        0
 0049E8F9    push        ebx
 0049E8FA    push        esi
 0049E8FB    push        edi
 0049E8FC    mov         ebx,edx
 0049E8FE    mov         edi,eax
 0049E900    xor         eax,eax
 0049E902    push        ebp
 0049E903    push        49E99D
 0049E908    push        dword ptr fs:[eax]
 0049E90B    mov         dword ptr fs:[eax],esp
 0049E90E    lea         eax,[ebp-4]
 0049E911    call        @IntfClear
 0049E916    mov         edx,eax
 0049E918    mov         eax,edi
 0049E91A    call        0048EF40
 0049E91F    cmp         dword ptr [ebp-4],0
>0049E923    je          0049E92F
 0049E925    mov         edx,ebx
 0049E927    mov         eax,dword ptr [ebp-4]
 0049E92A    mov         ecx,dword ptr [eax]
 0049E92C    call        dword ptr [ecx+14]
 0049E92F    mov         edx,edi
 0049E931    mov         eax,ebx
 0049E933    mov         si,0FFF4
 0049E937    call        @CallDynaInst;TComponent.sub_0049EDB0
 0049E93C    mov         eax,dword ptr [ebx+4];TComponent.FOwner:TComponent
 0049E93F    test        eax,eax
>0049E941    je          0049E94A
 0049E943    mov         edx,ebx
 0049E945    call        TComponent.RemoveComponent
 0049E94A    mov         eax,dword ptr [ebx+8];TComponent.FName:TComponentName
 0049E94D    push        eax
 0049E94E    xor         ecx,ecx
 0049E950    mov         edx,ebx
 0049E952    mov         eax,edi
 0049E954    mov         esi,dword ptr [eax]
 0049E956    call        dword ptr [esi+30];TComponent.sub_0049ECFC
 0049E959    mov         edx,ebx
 0049E95B    mov         eax,edi
 0049E95D    call        0049E7F0
 0049E962    mov         dl,1
 0049E964    mov         eax,ebx
 0049E966    call        TComponent.SetReference
 0049E96B    test        byte ptr [edi+1C],10;TComponent.FComponentState:TComponentState
>0049E96F    je          0049E97C
 0049E971    mov         cl,1
 0049E973    mov         dl,1
 0049E975    mov         eax,ebx
 0049E977    call        TComponent.SetDesigning
 0049E97C    xor         ecx,ecx
 0049E97E    mov         edx,ebx
 0049E980    mov         eax,edi
 0049E982    mov         ebx,dword ptr [eax]
 0049E984    call        dword ptr [ebx+14];TComponent.Notification
 0049E987    xor         eax,eax
 0049E989    pop         edx
 0049E98A    pop         ecx
 0049E98B    pop         ecx
 0049E98C    mov         dword ptr fs:[eax],edx
 0049E98F    push        49E9A4
 0049E994    lea         eax,[ebp-4]
 0049E997    call        @IntfClear
 0049E99C    ret
>0049E99D    jmp         @HandleFinally
>0049E9A2    jmp         0049E994
 0049E9A4    pop         edi
 0049E9A5    pop         esi
 0049E9A6    pop         ebx
 0049E9A7    pop         ecx
 0049E9A8    pop         ebp
 0049E9A9    ret
*}
end;

//0049E9AC
procedure TComponent.RemoveComponent(AComponent:TComponent);
begin
{*
 0049E9AC    push        ebx
 0049E9AD    push        esi
 0049E9AE    push        edi
 0049E9AF    mov         ebx,edx
 0049E9B1    mov         esi,eax
 0049E9B3    push        0
 0049E9B5    mov         ecx,dword ptr [ebx+8];TComponent.FName:TComponentName
 0049E9B8    mov         edx,ebx
 0049E9BA    mov         eax,esi
 0049E9BC    mov         edi,dword ptr [eax]
 0049E9BE    call        dword ptr [edi+30];TComponent.sub_0049ECFC
 0049E9C1    mov         cl,1
 0049E9C3    mov         edx,ebx
 0049E9C5    mov         eax,esi
 0049E9C7    mov         edi,dword ptr [eax]
 0049E9C9    call        dword ptr [edi+14];TComponent.Notification
 0049E9CC    xor         edx,edx
 0049E9CE    mov         eax,ebx
 0049E9D0    call        TComponent.SetReference
 0049E9D5    mov         edx,ebx
 0049E9D7    mov         eax,esi
 0049E9D9    call        0049E834
 0049E9DE    pop         edi
 0049E9DF    pop         esi
 0049E9E0    pop         ebx
 0049E9E1    ret
*}
end;

//0049E9E4
procedure TComponent.DestroyComponents;
begin
{*
 0049E9E4    push        ebx
 0049E9E5    push        esi
 0049E9E6    push        edi
 0049E9E7    push        ebp
 0049E9E8    add         esp,0FFFFFFF8
 0049E9EB    mov         ebx,eax
 0049E9ED    lea         eax,[ebx+34];TComponent.FSortedComponents:TList<System.Classes.TComponent>
 0049E9F0    mov         dword ptr [esp],eax
 0049E9F3    mov         eax,dword ptr [esp]
 0049E9F6    mov         eax,dword ptr [eax]
 0049E9F8    mov         edx,dword ptr [esp]
 0049E9FB    xor         ecx,ecx
 0049E9FD    mov         dword ptr [edx],ecx
 0049E9FF    call        TObject.Free
>0049EA04    jmp         0049EA5D
 0049EA06    mov         edi,dword ptr [ebx+10];TComponent.FComponents:TList<System.Classes.TComponent>
 0049EA09    mov         ebp,dword ptr [edi+8];TList<System.Classes.TComponent>.FCount:Integer
 0049EA0C    dec         ebp
 0049EA0D    lea         eax,[edi+8];TList<System.Classes.TComponent>.FCount:Integer
 0049EA10    mov         edx,ebp
 0049EA12    call        00434534
 0049EA17    mov         eax,dword ptr [edi+20]
 0049EA1A    mov         eax,dword ptr [eax+ebp*4]
 0049EA1D    mov         dword ptr [esp+4],eax
 0049EA21    mov         esi,dword ptr [esp+4]
 0049EA25    test        byte ptr [esi+1D],1
>0049EA29    jne         0049EA42
 0049EA2B    movzx       eax,word ptr ds:[49EA6C];0x210 gvar_0049EA6C
 0049EA32    and         ax,word ptr [ebx+1C];TComponent.FComponentState:TComponentState
 0049EA36    movzx       edx,word ptr ds:[49EA6C];0x210 gvar_0049EA6C
 0049EA3D    cmp         dx,ax
>0049EA40    jne         0049EA4D
 0049EA42    mov         edx,esi
 0049EA44    mov         eax,ebx
 0049EA46    call        TComponent.RemoveComponent
>0049EA4B    jmp         0049EA56
 0049EA4D    mov         edx,esi
 0049EA4F    mov         eax,ebx
 0049EA51    call        0049E834
 0049EA56    mov         eax,esi
 0049EA58    call        TObject.Free
 0049EA5D    cmp         dword ptr [ebx+10],0;TComponent.FComponents:TList<System.Classes.TComponent>
>0049EA61    jne         0049EA06
 0049EA63    pop         ecx
 0049EA64    pop         edx
 0049EA65    pop         ebp
 0049EA66    pop         edi
 0049EA67    pop         esi
 0049EA68    pop         ebx
 0049EA69    ret
*}
end;

//0049EA70
procedure TComponent.Destroying;
begin
{*
 0049EA70    push        ebx
 0049EA71    push        esi
 0049EA72    push        edi
 0049EA73    push        ebp
 0049EA74    mov         ebx,eax
 0049EA76    test        byte ptr [ebx+1C],8
>0049EA7A    jne         0049EAAF
 0049EA7C    or          word ptr [ebx+1C],8
 0049EA81    mov         eax,dword ptr [ebx+10]
 0049EA84    test        eax,eax
>0049EA86    je          0049EAAF
 0049EA88    mov         ebp,dword ptr [eax+8]
 0049EA8B    dec         ebp
 0049EA8C    test        ebp,ebp
>0049EA8E    jl          0049EAAF
 0049EA90    inc         ebp
 0049EA91    xor         esi,esi
 0049EA93    mov         edi,dword ptr [ebx+10]
 0049EA96    lea         eax,[edi+8]
 0049EA99    mov         edx,esi
 0049EA9B    call        00434534
 0049EAA0    mov         eax,dword ptr [edi+20]
 0049EAA3    mov         eax,dword ptr [eax+esi*4]
 0049EAA6    call        TComponent.Destroying
 0049EAAB    inc         esi
 0049EAAC    dec         ebp
>0049EAAD    jne         0049EA93
 0049EAAF    pop         ebp
 0049EAB0    pop         edi
 0049EAB1    pop         esi
 0049EAB2    pop         ebx
 0049EAB3    ret
*}
end;

//0049EAB4
{*procedure sub_0049EAB4(?:?; ?:?; ?:?; ?:?);
begin
 0049EAB4    push        ebp
 0049EAB5    mov         ebp,esp
 0049EAB7    push        ebx
 0049EAB8    cmp         word ptr [eax+2A],0
>0049EABD    je          0049EAD1
 0049EABF    push        dword ptr [ebp+0C]
 0049EAC2    push        dword ptr [ebp+8]
 0049EAC5    mov         ecx,edx
 0049EAC7    mov         ebx,eax
 0049EAC9    mov         edx,eax
 0049EACB    mov         eax,dword ptr [ebx+2C]
 0049EACE    call        dword ptr [ebx+28]
 0049EAD1    pop         ebx
 0049EAD2    pop         ebp
 0049EAD3    ret         8
end;*}

//0049EAD8
procedure TComponent.RemoveNotification(const AComponent:TComponent);
begin
{*
 0049EAD8    push        ebx
 0049EAD9    push        esi
 0049EADA    push        edi
 0049EADB    push        ebp
 0049EADC    add         esp,0FFFFFFF0
 0049EADF    mov         dword ptr [esp],edx
 0049EAE2    mov         ebx,eax
 0049EAE4    mov         eax,dword ptr [ebx+14]
 0049EAE7    test        eax,eax
>0049EAE9    je          0049EB5E
 0049EAEB    mov         esi,dword ptr [eax+8]
 0049EAEE    test        esi,esi
>0049EAF0    jle         0049EB3B
 0049EAF2    mov         edi,eax
 0049EAF4    mov         ebp,esi
 0049EAF6    dec         ebp
 0049EAF7    mov         edx,ebp
 0049EAF9    lea         eax,[edi+8]
 0049EAFC    call        00434534
 0049EB01    mov         eax,dword ptr [edi+20]
 0049EB04    mov         eax,dword ptr [eax+ebp*4]
 0049EB07    cmp         eax,dword ptr [esp]
>0049EB0A    jne         0049EB1D
 0049EB0C    mov         eax,dword ptr [ebx+14]
 0049EB0F    mov         edx,ebp
 0049EB11    add         eax,8
 0049EB14    mov         cl,1
 0049EB16    call        00435200
>0049EB1B    jmp         0049EB3B
 0049EB1D    mov         eax,dword ptr [ebx+14]
 0049EB20    mov         edx,dword ptr [esp]
 0049EB23    mov         dword ptr [esp+4],edx
 0049EB27    add         eax,8
 0049EB2A    mov         dword ptr [esp+8],eax
 0049EB2E    lea         edx,[esp+4]
 0049EB32    mov         eax,dword ptr [esp+8]
 0049EB36    call        00434878
 0049EB3B    mov         eax,dword ptr [ebx+14]
 0049EB3E    cmp         dword ptr [eax+8],0
>0049EB42    jne         0049EB5E
 0049EB44    lea         eax,[ebx+14]
 0049EB47    mov         dword ptr [esp+0C],eax
 0049EB4B    mov         eax,dword ptr [esp+0C]
 0049EB4F    mov         eax,dword ptr [eax]
 0049EB51    mov         edx,dword ptr [esp+0C]
 0049EB55    xor         ecx,ecx
 0049EB57    mov         dword ptr [edx],ecx
 0049EB59    call        TObject.Free
 0049EB5E    add         esp,10
 0049EB61    pop         ebp
 0049EB62    pop         edi
 0049EB63    pop         esi
 0049EB64    pop         ebx
 0049EB65    ret
*}
end;

//0049EB68
procedure TComponent.RemoveFreeNotification(AComponent:TComponent);
begin
{*
 0049EB68    push        ebx
 0049EB69    push        esi
 0049EB6A    mov         esi,edx
 0049EB6C    mov         ebx,eax
 0049EB6E    mov         edx,esi
 0049EB70    mov         eax,ebx
 0049EB72    call        TComponent.RemoveNotification
 0049EB77    mov         edx,ebx
 0049EB79    mov         eax,esi
 0049EB7B    call        TComponent.RemoveNotification
 0049EB80    pop         esi
 0049EB81    pop         ebx
 0049EB82    ret
*}
end;

//0049EB84
procedure TComponent.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0049EB84    push        ebx
 0049EB85    push        esi
 0049EB86    push        edi
 0049EB87    add         esp,0FFFFFFF8
 0049EB8A    mov         byte ptr [esp+4],cl
 0049EB8E    mov         dword ptr [esp],edx
 0049EB91    mov         esi,eax
 0049EB93    cmp         byte ptr [esp+4],1
>0049EB98    jne         0049EBAA
 0049EB9A    cmp         dword ptr [esp],0
>0049EB9E    je          0049EBAA
 0049EBA0    mov         edx,dword ptr [esp]
 0049EBA3    mov         eax,esi
 0049EBA5    call        TComponent.RemoveFreeNotification
 0049EBAA    mov         eax,dword ptr [esi+10]
 0049EBAD    test        eax,eax
>0049EBAF    je          0049EBED
 0049EBB1    mov         ebx,dword ptr [eax+8]
 0049EBB4    dec         ebx
 0049EBB5    test        ebx,ebx
>0049EBB7    jl          0049EBED
 0049EBB9    mov         edi,dword ptr [esi+10]
 0049EBBC    lea         eax,[edi+8]
 0049EBBF    mov         edx,ebx
 0049EBC1    call        00434534
 0049EBC6    movzx       ecx,byte ptr [esp+4]
 0049EBCB    mov         eax,dword ptr [edi+20]
 0049EBCE    mov         eax,dword ptr [eax+ebx*4]
 0049EBD1    mov         edx,dword ptr [esp]
 0049EBD4    mov         edi,dword ptr [eax]
 0049EBD6    call        dword ptr [edi+14]
 0049EBD9    dec         ebx
 0049EBDA    mov         eax,dword ptr [esi+10]
 0049EBDD    cmp         ebx,dword ptr [eax+8]
>0049EBE0    jl          0049EBE9
 0049EBE2    mov         eax,dword ptr [esi+10]
 0049EBE5    mov         ebx,dword ptr [eax+8]
 0049EBE8    dec         ebx
 0049EBE9    test        ebx,ebx
>0049EBEB    jge         0049EBB9
 0049EBED    pop         ecx
 0049EBEE    pop         edx
 0049EBEF    pop         edi
 0049EBF0    pop         esi
 0049EBF1    pop         ebx
 0049EBF2    ret
*}
end;

//0049EBF4
procedure TComponent.DefineProperties(Filer:TFiler);
begin
{*
 0049EBF4    push        ebp
 0049EBF5    mov         ebp,esp
 0049EBF7    push        ecx
 0049EBF8    push        ebx
 0049EBF9    push        esi
 0049EBFA    push        edi
 0049EBFB    mov         esi,edx
 0049EBFD    mov         ebx,eax
 0049EBFF    xor         eax,eax
 0049EC01    mov         dword ptr [ebp-4],eax
 0049EC04    mov         eax,dword ptr [esi+20]
 0049EC07    test        eax,eax
>0049EC09    je          0049EC11
 0049EC0B    mov         eax,dword ptr [eax+18]
 0049EC0E    mov         dword ptr [ebp-4],eax
 0049EC11    push        ebx
 0049EC12    push        49E7B0;TComponent.ReadLeft
 0049EC17    push        ebx
 0049EC18    push        49E7D8;TComponent.WriteLeft
 0049EC1D    movzx       eax,word ptr [ebx+18]
 0049EC21    cmp         ax,word ptr [ebp-4]
 0049EC25    setne       cl
 0049EC28    mov         edx,49EC6C;'Left'
 0049EC2D    mov         eax,esi
 0049EC2F    mov         edi,dword ptr [eax]
 0049EC31    call        dword ptr [edi+4]
 0049EC34    push        ebx
 0049EC35    push        49E7C4;TComponent.ReadTop
 0049EC3A    push        ebx
 0049EC3B    push        49E7E4;TComponent.WriteTop
 0049EC40    movzx       eax,word ptr [ebp-2]
 0049EC44    cmp         ax,word ptr [ebx+1A]
 0049EC48    setne       cl
 0049EC4B    mov         edx,49EC84;'Top'
 0049EC50    mov         eax,esi
 0049EC52    mov         ebx,dword ptr [eax]
 0049EC54    call        dword ptr [ebx+4]
 0049EC57    pop         edi
 0049EC58    pop         esi
 0049EC59    pop         ebx
 0049EC5A    pop         ecx
 0049EC5B    pop         ebp
 0049EC5C    ret
*}
end;

//0049EC8C
procedure TComponent.HasParent;
begin
{*
 0049EC8C    xor         eax,eax
 0049EC8E    ret
*}
end;

//0049EC90
procedure TComponent.sub_0049EC90;
begin
{*
 0049EC90    push        ebp
 0049EC91    mov         ebp,esp
 0049EC93    pop         ebp
 0049EC94    ret         8
*}
end;

//0049EC98
procedure TComponent.sub_0049EC98;
begin
{*
 0049EC98    xor         eax,eax
 0049EC9A    ret
*}
end;

//0049EC9C
procedure TComponent.sub_0049EC9C;
begin
{*
 0049EC9C    ret
*}
end;

//0049ECA0
procedure TComponent.GetNamePath;
begin
{*
 0049ECA0    push        ebx
 0049ECA1    push        esi
 0049ECA2    mov         esi,edx
 0049ECA4    mov         ebx,eax
 0049ECA6    mov         eax,esi
 0049ECA8    mov         edx,dword ptr [ebx+8]
 0049ECAB    call        @UStrAsg
 0049ECB0    pop         esi
 0049ECB1    pop         ebx
 0049ECB2    ret
*}
end;

//0049ECB4
procedure TComponent.sub_0048EDE4;
begin
{*
 0049ECB4    mov         eax,dword ptr [eax+4];TComponent.FOwner:TComponent
 0049ECB7    ret
*}
end;

//0049ECB8
procedure TComponent.sub_0049ECB8;
begin
{*
 0049ECB8    ret
*}
end;

//0049ECBC
procedure TComponent.GetParentComponent;
begin
{*
 0049ECBC    xor         eax,eax
 0049ECBE    ret
*}
end;

//0049ECC0
procedure TComponent.sub_0049ECC0;
begin
{*
 0049ECC0    ret
*}
end;

//0049ECC4
procedure TComponent.Updating;
begin
{*
 0049ECC4    push        ebx
 0049ECC5    mov         ebx,eax
 0049ECC7    or          word ptr [ebx+1C],40
 0049ECCC    pop         ebx
 0049ECCD    ret
*}
end;

//0049ECD0
procedure TComponent.Updated;
begin
{*
 0049ECD0    push        ebx
 0049ECD1    mov         ebx,eax
 0049ECD3    and         word ptr [ebx+1C],0FFFFFFBF
 0049ECD8    pop         ebx
 0049ECD9    ret
*}
end;

//0049ECDC
procedure TComponent.Loaded;
begin
{*
 0049ECDC    push        ebx
 0049ECDD    mov         ebx,eax
 0049ECDF    and         word ptr [ebx+1C],0FFFFFFFE
 0049ECE4    pop         ebx
 0049ECE5    ret
*}
end;

//0049ECE8
procedure TComponent.sub_0049ECE8;
begin
{*
 0049ECE8    ret
*}
end;

//0049ECEC
procedure TComponent.ReadState(Reader:TReader);
begin
{*
 0049ECEC    xchg        eax,edx
 0049ECED    call        TReader.ReadData
 0049ECF2    ret
*}
end;

//0049ECF4
{*procedure sub_0049ECF4(?:?);
begin
 0049ECF4    xchg        eax,edx
 0049ECF5    mov         ecx,dword ptr [eax]
 0049ECF7    call        dword ptr [ecx+10]
 0049ECFA    ret
end;*}

//0049ECFC
{*procedure sub_0049ECFC(?:?; ?:?; ?:?);
begin
 0049ECFC    push        ebp
 0049ECFD    mov         ebp,esp
 0049ECFF    add         esp,0FFFFFFF0
 0049ED02    push        ebx
 0049ED03    push        esi
 0049ED04    push        edi
 0049ED05    mov         dword ptr [ebp-8],ecx
 0049ED08    mov         dword ptr [ebp-4],edx
 0049ED0B    mov         edi,eax
 0049ED0D    mov         esi,dword ptr [ebp+8]
 0049ED10    cmp         dword ptr [ebp-4],0
>0049ED14    je          0049ED42
 0049ED16    mov         eax,dword ptr [ebp-8]
 0049ED19    cmp         eax,esi
>0049ED1B    jne         0049ED21
 0049ED1D    mov         al,1
>0049ED1F    jmp         0049ED3E
 0049ED21    cmp         dword ptr [ebp-8],0
>0049ED25    je          0049ED2B
 0049ED27    test        esi,esi
>0049ED29    jne         0049ED2F
 0049ED2B    xor         eax,eax
>0049ED2D    jmp         0049ED3E
 0049ED2F    mov         edx,esi
 0049ED31    mov         eax,dword ptr [ebp-8]
 0049ED34    call        CompareText
 0049ED39    test        eax,eax
 0049ED3B    sete        al
 0049ED3E    xor         al,1
>0049ED40    jmp         0049ED44
 0049ED42    xor         eax,eax
 0049ED44    test        al,al
>0049ED46    je          0049ED53
 0049ED48    mov         eax,dword ptr [ebp-4]
 0049ED4B    cmp         edi,dword ptr [eax+4]
 0049ED4E    sete        al
>0049ED51    jmp         0049ED55
 0049ED53    xor         eax,eax
 0049ED55    test        al,al
>0049ED57    je          0049ED8A
 0049ED59    mov         edx,esi
 0049ED5B    mov         eax,edi
 0049ED5D    call        TComponent.FindComponent
 0049ED62    test        eax,eax
>0049ED64    je          0049ED8A
 0049ED66    mov         dword ptr [ebp-10],esi
 0049ED69    mov         byte ptr [ebp-0C],11
 0049ED6D    lea         eax,[ebp-10]
 0049ED70    push        eax
 0049ED71    push        0
 0049ED73    mov         ecx,dword ptr ds:[7C4974];^SResString121:TResStringRec
 0049ED79    mov         dl,1
 0049ED7B    mov         eax,[0046BD3C];EComponentError
 0049ED80    call        Exception.CreateResFmt;EComponentError.Create
 0049ED85    call        @RaiseExcept
 0049ED8A    test        byte ptr [edi+1C],10;TSpeedButton.FComponentState:TComponentState
>0049ED8E    je          0049EDA5
 0049ED90    cmp         dword ptr [edi+4],0;TSpeedButton.FOwner:TComponent
>0049ED94    je          0049EDA5
 0049ED96    push        esi
 0049ED97    mov         ecx,dword ptr [ebp-8]
 0049ED9A    mov         edx,dword ptr [ebp-4]
 0049ED9D    mov         eax,dword ptr [edi+4];TSpeedButton.FOwner:TComponent
 0049EDA0    mov         ebx,dword ptr [eax]
 0049EDA2    call        dword ptr [ebx+30];TComponent.sub_0049ECFC
 0049EDA5    pop         edi
 0049EDA6    pop         esi
 0049EDA7    pop         ebx
 0049EDA8    mov         esp,ebp
 0049EDAA    pop         ebp
 0049EDAB    ret         4
end;*}

//0049EDB0
{*procedure TComponent.sub_0049EDB0(?:?);
begin
 0049EDB0    push        esi
 0049EDB1    push        edi
 0049EDB2    mov         edi,edx
 0049EDB4    mov         esi,eax
 0049EDB6    mov         edx,esi
 0049EDB8    mov         eax,edi
 0049EDBA    mov         si,0FFF3
 0049EDBE    call        @CallDynaInst
 0049EDC3    pop         edi
 0049EDC4    pop         esi
 0049EDC5    ret
end;*}

//0049EDC8
procedure TComponent.sub_0049EDC8;
begin
{*
 0049EDC8    ret
*}
end;

//0049F35C
function TComponent.Create@$2648$ActRec.$0$Body(const Item1:TComponent; const Item2:TComponent):Integer;
begin
{*
 0049F35C    mov         eax,dword ptr [edx+8]
 0049F35F    mov         edx,dword ptr [ecx+8]
 0049F362    call        CompareText
 0049F367    ret
*}
end;

//0049F368
function TComponent.FindComponent(AName:string):TComponent;
begin
{*
 0049F368    push        ebx
 0049F369    push        esi
 0049F36A    push        edi
 0049F36B    push        ebp
 0049F36C    add         esp,0FFFFFFF8
 0049F36F    mov         ebp,edx
 0049F371    mov         ebx,eax
 0049F373    xor         esi,esi
 0049F375    test        ebp,ebp
>0049F377    je          0049F40F
 0049F37D    cmp         dword ptr [ebx+10],0
>0049F381    je          0049F40F
 0049F387    cmp         dword ptr [ebx+34],0
>0049F38B    jne         0049F402
 0049F38D    mov         dl,1
 0049F38F    mov         eax,[0047E924];TList<System.Classes.TComponent>
 0049F394    call        TList<System.Actions.TContainedAction>.Create
 0049F399    mov         esi,eax
 0049F39B    mov         dword ptr [ebx+34],esi
 0049F39E    mov         eax,esi
 0049F3A0    mov         edx,dword ptr [ebx+10]
 0049F3A3    mov         edx,dword ptr [edx+8]
 0049F3A6    add         eax,8
 0049F3A9    call        004357A0
 0049F3AE    mov         eax,dword ptr [ebx+10]
 0049F3B1    mov         edi,dword ptr [eax+8]
 0049F3B4    dec         edi
 0049F3B5    test        edi,edi
>0049F3B7    jl          0049F3F4
 0049F3B9    inc         edi
 0049F3BA    mov         dword ptr [esp],0
 0049F3C1    mov         esi,dword ptr [ebx+10]
 0049F3C4    lea         eax,[esi+8]
 0049F3C7    mov         edx,dword ptr [esp]
 0049F3CA    call        00434534
 0049F3CF    mov         eax,dword ptr [ebx+34]
 0049F3D2    mov         edx,dword ptr [esi+20]
 0049F3D5    mov         ecx,dword ptr [esp]
 0049F3D8    mov         edx,dword ptr [edx+ecx*4]
 0049F3DB    mov         dword ptr [esp+4],edx
 0049F3DF    lea         edx,[esp+4]
 0049F3E3    add         eax,8
 0049F3E6    mov         ecx,dword ptr [esp]
 0049F3E9    call        0043455C
 0049F3EE    inc         dword ptr [esp]
 0049F3F1    dec         edi
>0049F3F2    jne         0049F3C1
 0049F3F4    mov         edx,dword ptr ds:[7CA3B0];gvar_007CA3B0:IInterface
 0049F3FA    mov         eax,dword ptr [ebx+34]
 0049F3FD    call        TList<System.Classes.TComponent>.Sort
 0049F402    mov         ecx,esp
 0049F404    mov         edx,ebp
 0049F406    mov         eax,ebx
 0049F408    call        0049F418
 0049F40D    mov         esi,eax
 0049F40F    mov         eax,esi
 0049F411    pop         ecx
 0049F412    pop         edx
 0049F413    pop         ebp
 0049F414    pop         edi
 0049F415    pop         esi
 0049F416    pop         ebx
 0049F417    ret
*}
end;

//0049F418
{*function sub_0049F418(?:?; ?:?; ?:?):?;
begin
 0049F418    push        ebx
 0049F419    push        esi
 0049F41A    push        edi
 0049F41B    push        ebp
 0049F41C    add         esp,0FFFFFFF0
 0049F41F    mov         dword ptr [esp+8],ecx
 0049F423    mov         dword ptr [esp+4],edx
 0049F427    mov         dword ptr [esp],eax
 0049F42A    xor         esi,esi
 0049F42C    mov         eax,dword ptr [esp]
 0049F42F    mov         eax,dword ptr [eax+34]
 0049F432    mov         edi,dword ptr [eax+8]
 0049F435    dec         edi
 0049F436    cmp         edi,esi
>0049F438    jl          0049F47D
 0049F43A    lea         ebx,[edi+esi]
 0049F43D    shr         ebx,1
 0049F43F    mov         eax,dword ptr [esp]
 0049F442    mov         eax,dword ptr [eax+34]
 0049F445    mov         eax,dword ptr [eax+20]
 0049F448    mov         eax,dword ptr [eax+ebx*4]
 0049F44B    mov         dword ptr [esp+0C],eax
 0049F44F    mov         eax,dword ptr [esp+0C]
 0049F453    mov         eax,dword ptr [eax+8]
 0049F456    mov         edx,dword ptr [esp+4]
 0049F45A    call        CompareText
 0049F45F    mov         ebp,eax
 0049F461    test        ebp,ebp
>0049F463    jge         0049F46A
 0049F465    lea         esi,[ebx+1]
>0049F468    jmp         0049F479
 0049F46A    mov         edi,ebx
 0049F46C    dec         edi
 0049F46D    test        ebp,ebp
>0049F46F    jne         0049F479
 0049F471    mov         eax,dword ptr [esp+8]
 0049F475    mov         dword ptr [eax],ebx
>0049F477    jmp         0049F489
 0049F479    cmp         edi,esi
>0049F47B    jge         0049F43A
 0049F47D    mov         eax,dword ptr [esp+8]
 0049F481    mov         dword ptr [eax],esi
 0049F483    xor         eax,eax
 0049F485    mov         dword ptr [esp+0C],eax
 0049F489    mov         eax,dword ptr [esp+0C]
 0049F48D    add         esp,10
 0049F490    pop         ebp
 0049F491    pop         edi
 0049F492    pop         esi
 0049F493    pop         ebx
 0049F494    ret
end;*}

//0049F498
procedure sub_0049F498(?:TComponent; ?:TComponent);
begin
{*
 0049F498    push        ebx
 0049F499    push        esi
 0049F49A    add         esp,0FFFFFFF8
 0049F49D    mov         esi,edx
 0049F49F    mov         ebx,eax
 0049F4A1    mov         ecx,esp
 0049F4A3    mov         edx,dword ptr [esi+8]
 0049F4A6    mov         eax,ebx
 0049F4A8    call        0049F418
 0049F4AD    mov         eax,dword ptr [ebx+34]
 0049F4B0    mov         dword ptr [esp+4],esi
 0049F4B4    lea         ecx,[esp+4]
 0049F4B8    add         eax,8
 0049F4BB    mov         edx,dword ptr [esp]
 0049F4BE    call        004353E0
 0049F4C3    pop         ecx
 0049F4C4    pop         edx
 0049F4C5    pop         esi
 0049F4C6    pop         ebx
 0049F4C7    ret
*}
end;

//0049F4C8
procedure TComponent.SetName(Value:TComponentName);
begin
{*
 0049F4C8    push        ebx
 0049F4C9    push        esi
 0049F4CA    push        edi
 0049F4CB    push        ebp
 0049F4CC    add         esp,0FFFFFFF8
 0049F4CF    mov         edi,edx
 0049F4D1    mov         esi,eax
 0049F4D3    mov         eax,dword ptr [esi+8];TComponent.FName:TComponentName
 0049F4D6    mov         edx,edi
 0049F4D8    call        @UStrEqual
>0049F4DD    je          0049F550
 0049F4DF    test        edi,edi
>0049F4E1    je          0049F512
 0049F4E3    xor         edx,edx
 0049F4E5    mov         eax,edi
 0049F4E7    call        0041DDD0
 0049F4EC    test        al,al
>0049F4EE    jne         0049F512
 0049F4F0    mov         dword ptr [esp],edi
 0049F4F3    mov         byte ptr [esp+4],11
 0049F4F8    push        esp
 0049F4F9    push        0
 0049F4FB    mov         ecx,dword ptr ds:[7C47E8];^SResString128:TResStringRec
 0049F501    mov         dl,1
 0049F503    mov         eax,[0046BD3C];EComponentError
 0049F508    call        Exception.CreateResFmt;EComponentError.Create
 0049F50D    call        @RaiseExcept
 0049F512    mov         ebp,dword ptr [esi+4];TComponent.FOwner:TComponent
 0049F515    test        ebp,ebp
>0049F517    je          0049F528
 0049F519    push        edi
 0049F51A    mov         ecx,dword ptr [esi+8];TComponent.FName:TComponentName
 0049F51D    mov         edx,esi
 0049F51F    mov         eax,ebp
 0049F521    mov         ebx,dword ptr [eax]
 0049F523    call        dword ptr [ebx+30];TComponent.sub_0049ECFC
>0049F526    jmp         0049F535
 0049F528    push        edi
 0049F529    mov         ecx,dword ptr [esi+8];TComponent.FName:TComponentName
 0049F52C    xor         edx,edx
 0049F52E    mov         eax,esi
 0049F530    mov         ebx,dword ptr [eax]
 0049F532    call        dword ptr [ebx+30];TComponent.sub_0049ECFC
 0049F535    xor         edx,edx
 0049F537    mov         eax,esi
 0049F539    call        TComponent.SetReference
 0049F53E    mov         edx,edi
 0049F540    mov         eax,esi
 0049F542    call        0049F558
 0049F547    mov         dl,1
 0049F549    mov         eax,esi
 0049F54B    call        TComponent.SetReference
 0049F550    pop         ecx
 0049F551    pop         edx
 0049F552    pop         ebp
 0049F553    pop         edi
 0049F554    pop         esi
 0049F555    pop         ebx
 0049F556    ret
*}
end;

//0049F558
procedure sub_0049F558(?:TComponent; ?:TComponentName);
begin
{*
 0049F558    push        ebx
 0049F559    push        esi
 0049F55A    add         esp,0FFFFFFF4
 0049F55D    mov         esi,edx
 0049F55F    mov         ebx,eax
 0049F561    lea         eax,[ebx+8];TComponent.FName:TComponentName
 0049F564    mov         edx,esi
 0049F566    call        @UStrAsg
 0049F56B    mov         eax,dword ptr [ebx+4];TComponent.FOwner:TComponent
 0049F56E    test        eax,eax
>0049F570    je          0049F5A3
 0049F572    cmp         dword ptr [eax+34],0;TComponent.FSortedComponents:TList<System.Classes.TComponent>
>0049F576    je          0049F5A3
 0049F578    mov         eax,dword ptr [eax+34];TComponent.FSortedComponents:TList<System.Classes.TComponent>
 0049F57B    mov         dword ptr [esp],eax
 0049F57E    mov         dword ptr [esp+4],ebx
 0049F582    mov         eax,dword ptr [esp]
 0049F585    add         eax,8
 0049F588    mov         dword ptr [esp+8],eax
 0049F58C    lea         edx,[esp+4]
 0049F590    mov         eax,dword ptr [esp+8]
 0049F594    call        00434878
 0049F599    mov         edx,ebx
 0049F59B    mov         eax,dword ptr [ebx+4];TComponent.FOwner:TComponent
 0049F59E    call        0049F498
 0049F5A3    add         esp,0C
 0049F5A6    pop         esi
 0049F5A7    pop         ebx
 0049F5A8    ret
*}
end;

//0049F5E0
procedure TComponent.sub_0049F5E0;
begin
{*
 0049F5E0    push        ebp
 0049F5E1    mov         ebp,esp
 0049F5E3    pop         ebp
 0049F5E4    ret         8
*}
end;

//0049F5E8
function TComponent.GetComponent(AIndex:Integer):TComponent;
begin
{*
 0049F5E8    push        ebx
 0049F5E9    push        esi
 0049F5EA    mov         esi,edx
 0049F5EC    mov         ebx,eax
 0049F5EE    cmp         dword ptr [ebx+10],0
>0049F5F2    jne         0049F606
 0049F5F4    mov         edx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0049F5FA    mov         ecx,esi
 0049F5FC    mov         eax,[0046C204];TList
 0049F601    call        TList.Error
 0049F606    mov         ebx,dword ptr [ebx+10]
 0049F609    lea         eax,[ebx+8]
 0049F60C    mov         edx,esi
 0049F60E    call        00434534
 0049F613    mov         eax,dword ptr [ebx+20]
 0049F616    mov         eax,dword ptr [eax+esi*4]
 0049F619    pop         esi
 0049F61A    pop         ebx
 0049F61B    ret
*}
end;

//0049F61C
function TComponent.GetComponentCount:Integer;
begin
{*
 0049F61C    mov         edx,dword ptr [eax+10]
 0049F61F    test        edx,edx
>0049F621    je          0049F627
 0049F623    mov         eax,dword ptr [edx+8]
 0049F626    ret
 0049F627    xor         eax,eax
 0049F629    ret
*}
end;

//0049F62C
{*procedure sub_0049F62C(?:?; ?:?);
begin
 0049F62C    push        ebx
 0049F62D    push        esi
 0049F62E    push        edi
 0049F62F    push        ebp
 0049F630    add         esp,0FFFFFFF4
 0049F633    mov         esi,edx
 0049F635    mov         ebx,eax
 0049F637    mov         eax,dword ptr [ebx+4]
 0049F63A    test        eax,eax
>0049F63C    je          0049F69B
 0049F63E    mov         eax,dword ptr [eax+10]
 0049F641    mov         edi,ebx
 0049F643    mov         dword ptr [esp],edi
 0049F646    add         eax,8
 0049F649    mov         dword ptr [esp+4],eax
 0049F64D    mov         edx,esp
 0049F64F    mov         eax,dword ptr [esp+4]
 0049F653    call        00434714
 0049F658    test        eax,eax
>0049F65A    jl          0049F69B
 0049F65C    mov         edx,dword ptr [ebx+4]
 0049F65F    mov         ebp,dword ptr [edx+10]
 0049F662    mov         edx,dword ptr [ebp+8]
 0049F665    test        esi,esi
>0049F667    jge         0049F66B
 0049F669    xor         esi,esi
 0049F66B    cmp         edx,esi
>0049F66D    jg          0049F672
 0049F66F    mov         esi,edx
 0049F671    dec         esi
 0049F672    cmp         eax,esi
>0049F674    je          0049F69B
 0049F676    mov         edx,ebp
 0049F678    add         edx,8
 0049F67B    mov         cl,1
 0049F67D    xchg        eax,edx
 0049F67E    call        00435200
 0049F683    mov         eax,dword ptr [ebx+4]
 0049F686    mov         eax,dword ptr [eax+10]
 0049F689    mov         dword ptr [esp+8],edi
 0049F68D    lea         ecx,[esp+8]
 0049F691    add         eax,8
 0049F694    mov         edx,esi
 0049F696    call        004353E0
 0049F69B    add         esp,0C
 0049F69E    pop         ebp
 0049F69F    pop         edi
 0049F6A0    pop         esi
 0049F6A1    pop         ebx
 0049F6A2    ret
end;*}

//0049F8E8
{*procedure sub_0049F8E8(?:?);
begin
 0049F8E8    push        esi
 0049F8E9    mov         esi,eax
 0049F8EB    mov         eax,dword ptr [esi+0C]
 0049F8EE    mov         ecx,dword ptr [eax]
 0049F8F0    call        dword ptr [ecx+1C]
 0049F8F3    pop         esi
 0049F8F4    ret
end;*}

//0049F8F8
{*procedure sub_0049F8F8(?:?; ?:?);
begin
 0049F8F8    push        ebx
 0049F8F9    push        esi
 0049F8FA    push        edi
 0049F8FB    mov         edi,edx
 0049F8FD    mov         esi,eax
 0049F8FF    mov         edx,edi
 0049F901    mov         eax,dword ptr [esi+0C]
 0049F904    mov         ebx,dword ptr [eax]
 0049F906    call        dword ptr [ebx+20]
 0049F909    pop         edi
 0049F90A    pop         esi
 0049F90B    pop         ebx
 0049F90C    ret
end;*}

//0049F910
function TComponent.GetObservers:TObservers;
begin
{*
 0049F910    push        ebp
 0049F911    mov         ebp,esp
 0049F913    push        0
 0049F915    push        ebx
 0049F916    push        esi
 0049F917    mov         esi,eax
 0049F919    xor         eax,eax
 0049F91B    push        ebp
 0049F91C    push        49F9A9
 0049F921    push        dword ptr fs:[eax]
 0049F924    mov         dword ptr fs:[eax],esp
 0049F927    mov         dl,1
 0049F929    mov         eax,[0049F800];TComponent.GetObservers$953$ActRec
 0049F92E    call        TObject.Create
 0049F933    mov         ebx,eax
 0049F935    lea         eax,[ebp-4]
 0049F938    mov         edx,ebx
 0049F93A    test        edx,edx
>0049F93C    je          0049F941
 0049F93E    sub         edx,0FFFFFFF8
 0049F941    call        @IntfCopy
 0049F946    mov         eax,esi
 0049F948    mov         dword ptr [ebx+0C],eax
 0049F94B    cmp         dword ptr [eax+24],0
>0049F94F    jne         0049F98D
 0049F951    mov         dl,1
 0049F953    mov         eax,[004783E4];TObservers
 0049F958    call        TObservers.Create
 0049F95D    mov         esi,eax
 0049F95F    mov         eax,dword ptr [ebx+0C]
 0049F962    mov         dword ptr [eax+24],esi
 0049F965    lea         eax,[esi+8]
 0049F968    mov         edx,ebx
 0049F96A    test        edx,edx
>0049F96C    je          0049F971
 0049F96E    sub         edx,0FFFFFFEC
 0049F971    call        @IntfCopy
 0049F976    mov         eax,dword ptr [ebx+0C]
 0049F979    mov         eax,dword ptr [eax+24]
 0049F97C    add         eax,0C
 0049F97F    mov         edx,ebx
 0049F981    test        edx,edx
>0049F983    je          0049F988
 0049F985    sub         edx,0FFFFFFF0
 0049F988    call        @IntfCopy
 0049F98D    mov         eax,dword ptr [ebx+0C]
 0049F990    mov         ebx,dword ptr [eax+24]
 0049F993    xor         eax,eax
 0049F995    pop         edx
 0049F996    pop         ecx
 0049F997    pop         ecx
 0049F998    mov         dword ptr fs:[eax],edx
 0049F99B    push        49F9B0
 0049F9A0    lea         eax,[ebp-4]
 0049F9A3    call        @IntfClear
 0049F9A8    ret
>0049F9A9    jmp         @HandleFinally
>0049F9AE    jmp         0049F9A0
 0049F9B0    mov         eax,ebx
 0049F9B2    pop         esi
 0049F9B3    pop         ebx
 0049F9B4    pop         ecx
 0049F9B5    pop         ebp
 0049F9B6    ret
*}
end;

//0049F9B8
procedure TComponent.SetDesigning(Value:Boolean; SetChildren:Boolean);
begin
{*
 0049F9B8    push        ebx
 0049F9B9    push        esi
 0049F9BA    push        edi
 0049F9BB    push        ebp
 0049F9BC    push        ecx
 0049F9BD    mov         byte ptr [esp],cl
 0049F9C0    mov         ebx,edx
 0049F9C2    mov         esi,eax
 0049F9C4    test        bl,bl
>0049F9C6    je          0049F9CF
 0049F9C8    or          word ptr [esi+1C],10
>0049F9CD    jmp         0049F9D4
 0049F9CF    and         word ptr [esi+1C],0FFFFFFEF
 0049F9D4    cmp         byte ptr [esp],0
>0049F9D8    je          0049FA01
 0049F9DA    mov         eax,esi
 0049F9DC    call        TComponent.GetComponentCount
 0049F9E1    mov         ebp,eax
 0049F9E3    dec         ebp
 0049F9E4    test        ebp,ebp
>0049F9E6    jl          0049FA01
 0049F9E8    inc         ebp
 0049F9E9    xor         edi,edi
 0049F9EB    mov         edx,edi
 0049F9ED    mov         eax,esi
 0049F9EF    call        TComponent.GetComponent
 0049F9F4    mov         cl,1
 0049F9F6    mov         edx,ebx
 0049F9F8    call        TComponent.SetDesigning
 0049F9FD    inc         edi
 0049F9FE    dec         ebp
>0049F9FF    jne         0049F9EB
 0049FA01    pop         edx
 0049FA02    pop         ebp
 0049FA03    pop         edi
 0049FA04    pop         esi
 0049FA05    pop         ebx
 0049FA06    ret
*}
end;

//0049FA08
procedure TComponent.SetReference(Enable:Boolean);
begin
{*
 0049FA08    push        ebx
 0049FA09    push        esi
 0049FA0A    mov         ebx,edx
 0049FA0C    mov         esi,eax
 0049FA0E    mov         eax,dword ptr [esi+4]
 0049FA11    test        eax,eax
>0049FA13    je          0049FA2D
 0049FA15    mov         edx,dword ptr [esi+8]
 0049FA18    call        TObject.FieldAddress
 0049FA1D    test        eax,eax
>0049FA1F    je          0049FA2D
 0049FA21    test        bl,bl
>0049FA23    je          0049FA29
 0049FA25    mov         dword ptr [eax],esi
>0049FA27    jmp         0049FA2D
 0049FA29    xor         edx,edx
 0049FA2B    mov         dword ptr [eax],edx
 0049FA2D    pop         esi
 0049FA2E    pop         ebx
 0049FA2F    ret
*}
end;

//0049FA30
procedure TComponent.ExecuteAction(Action:TBasicAction);
begin
{*
 0049FA30    push        ebx
 0049FA31    push        esi
 0049FA32    push        edi
 0049FA33    mov         edi,edx
 0049FA35    mov         esi,eax
 0049FA37    test        edi,edi
>0049FA39    je          0049FA53
 0049FA3B    mov         eax,edi
 0049FA3D    mov         edx,dword ptr [eax]
 0049FA3F    call        dword ptr [edx+4C];TBasicAction.Suspended
 0049FA42    test        al,al
>0049FA44    jne         0049FA53
 0049FA46    mov         edx,esi
 0049FA48    mov         eax,edi
 0049FA4A    mov         ecx,dword ptr [eax]
 0049FA4C    call        dword ptr [ecx+50];TBasicAction.HandlesTarget
 0049FA4F    test        al,al
>0049FA51    jne         0049FA57
 0049FA53    xor         ebx,ebx
>0049FA55    jmp         0049FA59
 0049FA57    mov         bl,1
 0049FA59    test        bl,bl
>0049FA5B    je          0049FA66
 0049FA5D    mov         edx,esi
 0049FA5F    mov         eax,edi
 0049FA61    mov         ecx,dword ptr [eax]
 0049FA63    call        dword ptr [ecx+58];TBasicAction.ExecuteTarget
 0049FA66    mov         eax,ebx
 0049FA68    pop         edi
 0049FA69    pop         esi
 0049FA6A    pop         ebx
 0049FA6B    ret
*}
end;

//0049FA6C
function TComponent.UpdateAction(Action:TBasicAction):Boolean;
begin
{*
 0049FA6C    push        ebx
 0049FA6D    push        esi
 0049FA6E    push        edi
 0049FA6F    mov         edi,edx
 0049FA71    mov         esi,eax
 0049FA73    test        edi,edi
>0049FA75    je          0049FA8F
 0049FA77    mov         eax,edi
 0049FA79    mov         edx,dword ptr [eax]
 0049FA7B    call        dword ptr [edx+4C];TBasicAction.Suspended
 0049FA7E    test        al,al
>0049FA80    jne         0049FA8F
 0049FA82    mov         edx,esi
 0049FA84    mov         eax,edi
 0049FA86    mov         ecx,dword ptr [eax]
 0049FA88    call        dword ptr [ecx+50];TBasicAction.HandlesTarget
 0049FA8B    test        al,al
>0049FA8D    jne         0049FA93
 0049FA8F    xor         ebx,ebx
>0049FA91    jmp         0049FA95
 0049FA93    mov         bl,1
 0049FA95    test        bl,bl
>0049FA97    je          0049FAA2
 0049FA99    mov         edx,esi
 0049FA9B    mov         eax,edi
 0049FA9D    mov         ecx,dword ptr [eax]
 0049FA9F    call        dword ptr [ecx+54];TBasicAction.UpdateTarget
 0049FAA2    mov         eax,ebx
 0049FAA4    pop         edi
 0049FAA5    pop         esi
 0049FAA6    pop         ebx
 0049FAA7    ret
*}
end;

//0049FAA8
{*function sub_0049FAA8:?;
begin
 0049FAA8    xor         eax,eax
 0049FAAA    ret
end;*}

//0049FAAC
procedure sub_0049FAAC;
begin
{*
 0049FAAC    ret
*}
end;

//0049FAB0
function TComponent.GetComObject:IUnknown;
begin
{*
 0049FAB0    push        ebp
 0049FAB1    mov         ebp,esp
 0049FAB3    add         esp,0FFFFFFF4
 0049FAB6    push        ebx
 0049FAB7    push        esi
 0049FAB8    xor         ecx,ecx
 0049FABA    mov         dword ptr [ebp-0C],ecx
 0049FABD    mov         esi,edx
 0049FABF    mov         ebx,eax
 0049FAC1    xor         eax,eax
 0049FAC3    push        ebp
 0049FAC4    push        49FB48
 0049FAC9    push        dword ptr fs:[eax]
 0049FACC    mov         dword ptr fs:[eax],esp
 0049FACF    cmp         dword ptr [ebx+20],0
>0049FAD3    jne         0049FB1D
 0049FAD5    cmp         dword ptr ds:[7A05F0],0
>0049FADC    je          0049FAE6
 0049FADE    mov         eax,ebx
 0049FAE0    call        dword ptr ds:[7A05F0]
 0049FAE6    cmp         dword ptr [ebx+20],0
>0049FAEA    jne         0049FB1D
 0049FAEC    lea         edx,[ebp-0C]
 0049FAEF    mov         eax,dword ptr [ebx]
 0049FAF1    call        TObject.ClassName
 0049FAF6    mov         eax,dword ptr [ebp-0C]
 0049FAF9    mov         dword ptr [ebp-8],eax
 0049FAFC    mov         byte ptr [ebp-4],11
 0049FB00    lea         eax,[ebp-8]
 0049FB03    push        eax
 0049FB04    push        0
 0049FB06    mov         ecx,dword ptr ds:[7C4C24];^SResString137:TResStringRec
 0049FB0C    mov         dl,1
 0049FB0E    mov         eax,[0046BD3C];EComponentError
 0049FB13    call        Exception.CreateResFmt
 0049FB18    call        @RaiseExcept
 0049FB1D    mov         eax,esi
 0049FB1F    call        @IntfClear
 0049FB24    push        eax
 0049FB25    push        49FB58
 0049FB2A    mov         eax,dword ptr [ebx+20]
 0049FB2D    push        eax
 0049FB2E    mov         eax,dword ptr [eax]
 0049FB30    call        dword ptr [eax]
 0049FB32    xor         eax,eax
 0049FB34    pop         edx
 0049FB35    pop         ecx
 0049FB36    pop         ecx
 0049FB37    mov         dword ptr fs:[eax],edx
 0049FB3A    push        49FB4F
 0049FB3F    lea         eax,[ebp-0C]
 0049FB42    call        @UStrClr
 0049FB47    ret
>0049FB48    jmp         @HandleFinally
>0049FB4D    jmp         0049FB3F
 0049FB4F    pop         esi
 0049FB50    pop         ebx
 0049FB51    mov         esp,ebp
 0049FB53    pop         ebp
 0049FB54    ret
*}
end;

//0049FB68
function TComponent.SafeCallException(ExceptObject:TObject; ExceptAddr:Pointer):HRESULT;
begin
{*
 0049FB68    push        ebx
 0049FB69    cmp         dword ptr [eax+20],0
>0049FB6D    je          0049FB79
 0049FB6F    mov         eax,dword ptr [eax+20]
 0049FB72    mov         ebx,dword ptr [eax]
 0049FB74    call        dword ptr [ebx+1C]
 0049FB77    pop         ebx
 0049FB78    ret
 0049FB79    call        TObject.SafeCallException
 0049FB7E    pop         ebx
 0049FB7F    ret
*}
end;

//0049FB80
procedure sub_0049FB80;
begin
{*
 0049FB80    push        ebp
 0049FB81    mov         ebp,esp
 0049FB83    pop         ebp
 0049FB84    ret         4
*}
end;

//0049FB88
function TComponent.QueryInterface(const IID:TGUID; var Obj:Pointer):HRESULT; stdcall;
begin
{*
 0049FB88    push        ebp
 0049FB89    mov         ebp,esp
 0049FB8B    push        ebx
 0049FB8C    push        esi
 0049FB8D    push        edi
 0049FB8E    mov         edi,dword ptr [ebp+10]
 0049FB91    mov         esi,dword ptr [ebp+0C]
 0049FB94    mov         ebx,dword ptr [ebp+8]
 0049FB97    cmp         dword ptr [ebx+20],0
>0049FB9B    jne         0049FBB7
 0049FB9D    mov         ecx,edi
 0049FB9F    mov         edx,esi
 0049FBA1    mov         eax,ebx
 0049FBA3    call        TObject.GetInterface
 0049FBA8    test        al,al
>0049FBAA    je          0049FBB0
 0049FBAC    xor         eax,eax
>0049FBAE    jmp         0049FBC1
 0049FBB0    mov         eax,80004002
>0049FBB5    jmp         0049FBC1
 0049FBB7    push        edi
 0049FBB8    push        esi
 0049FBB9    mov         eax,dword ptr [ebx+20]
 0049FBBC    push        eax
 0049FBBD    mov         eax,dword ptr [eax]
 0049FBBF    call        dword ptr [eax]
 0049FBC1    pop         edi
 0049FBC2    pop         esi
 0049FBC3    pop         ebx
 0049FBC4    pop         ebp
 0049FBC5    ret         0C
*}
end;

//0049FBC8
function TComponent._AddRef:Integer; stdcall;
begin
{*
 0049FBC8    push        ebp
 0049FBC9    mov         ebp,esp
 0049FBCB    mov         eax,dword ptr [ebp+8]
 0049FBCE    cmp         dword ptr [eax+20],0
>0049FBD2    jne         0049FBD9
 0049FBD4    or          eax,0FFFFFFFF
>0049FBD7    jmp         0049FBE2
 0049FBD9    mov         eax,dword ptr [eax+20]
 0049FBDC    push        eax
 0049FBDD    mov         eax,dword ptr [eax]
 0049FBDF    call        dword ptr [eax+4]
 0049FBE2    pop         ebp
 0049FBE3    ret         4
*}
end;

//0049FBE8
function TComponent._Release:Integer; stdcall;
begin
{*
 0049FBE8    push        ebp
 0049FBE9    mov         ebp,esp
 0049FBEB    mov         eax,dword ptr [ebp+8]
 0049FBEE    cmp         dword ptr [eax+20],0
>0049FBF2    jne         0049FBF9
 0049FBF4    or          eax,0FFFFFFFF
>0049FBF7    jmp         0049FC02
 0049FBF9    mov         eax,dword ptr [eax+20]
 0049FBFC    push        eax
 0049FBFD    mov         eax,dword ptr [eax]
 0049FBFF    call        dword ptr [eax+8]
 0049FC02    pop         ebp
 0049FC03    ret         4
*}
end;

//0049FC08
procedure sub_0049FC08;
begin
{*
 0049FC08    ret
*}
end;

//0049FC0C
constructor TBasicActionLink.Create;
begin
{*
 0049FC0C    push        ebx
 0049FC0D    push        esi
 0049FC0E    push        edi
 0049FC0F    test        dl,dl
>0049FC11    je          0049FC1B
 0049FC13    add         esp,0FFFFFFF0
 0049FC16    call        @ClassCreate
 0049FC1B    mov         esi,ecx
 0049FC1D    mov         ebx,edx
 0049FC1F    mov         edi,eax
 0049FC21    xor         edx,edx
 0049FC23    mov         eax,edi
 0049FC25    call        TObject.Create
 0049FC2A    mov         edx,esi
 0049FC2C    mov         eax,edi
 0049FC2E    mov         ecx,dword ptr [eax]
 0049FC30    call        dword ptr [ecx]
 0049FC32    mov         eax,edi
 0049FC34    test        bl,bl
>0049FC36    je          0049FC47
 0049FC38    call        @AfterConstruction
 0049FC3D    pop         dword ptr fs:[0]
 0049FC44    add         esp,0C
 0049FC47    mov         eax,edi
 0049FC49    pop         edi
 0049FC4A    pop         esi
 0049FC4B    pop         ebx
 0049FC4C    ret
*}
end;

//0049FC50
procedure sub_0049FC50;
begin
{*
 0049FC50    ret
*}
end;

//0049FC54
destructor TBasicActionLink.Destroy();
begin
{*
 0049FC54    push        ebx
 0049FC55    push        esi
 0049FC56    call        @BeforeDestruction
 0049FC5B    mov         ebx,edx
 0049FC5D    mov         esi,eax
 0049FC5F    mov         eax,dword ptr [esi+10]
 0049FC62    test        eax,eax
>0049FC64    je          0049FC6D
 0049FC66    mov         edx,esi
 0049FC68    call        TBasicAction.UnRegisterChanges
 0049FC6D    mov         dl,0FC
 0049FC6F    and         dl,bl
 0049FC71    mov         eax,esi
 0049FC73    call        TObject.Destroy
 0049FC78    test        bl,bl
>0049FC7A    jle         0049FC83
 0049FC7C    mov         eax,esi
 0049FC7E    call        @ClassDestroy
 0049FC83    pop         esi
 0049FC84    pop         ebx
 0049FC85    ret
*}
end;

//0049FC88
procedure TBasicActionLink.Change;
begin
{*
 0049FC88    push        ebx
 0049FC89    cmp         word ptr [eax+0A],0
>0049FC8E    je          0049FC9B
 0049FC90    mov         ebx,eax
 0049FC92    mov         edx,dword ptr [eax+10]
 0049FC95    mov         eax,dword ptr [ebx+0C]
 0049FC98    call        dword ptr [ebx+8]
 0049FC9B    pop         ebx
 0049FC9C    ret
*}
end;

//0049FCA0
procedure TBasicActionLink.Execute(AComponent:TComponent);
begin
{*
 0049FCA0    push        ebx
 0049FCA1    push        esi
 0049FCA2    mov         ebx,eax
 0049FCA4    mov         eax,dword ptr [ebx+10];TBasicActionLink.FAction:TBasicAction
 0049FCA7    call        0049FF70
 0049FCAC    mov         eax,dword ptr [ebx+10];TBasicActionLink.FAction:TBasicAction
 0049FCAF    mov         si,0FFEF
 0049FCB3    call        @CallDynaInst;TBasicAction.Update
 0049FCB8    pop         esi
 0049FCB9    pop         ebx
 0049FCBA    ret
*}
end;

//0049FCBC
procedure TBasicActionLink.SetAction(Value:TBasicAction);
begin
{*
 0049FCBC    push        ebx
 0049FCBD    push        esi
 0049FCBE    mov         esi,edx
 0049FCC0    mov         ebx,eax
 0049FCC2    mov         eax,dword ptr [ebx+10]
 0049FCC5    cmp         esi,eax
>0049FCC7    je          0049FCE4
 0049FCC9    test        eax,eax
>0049FCCB    je          0049FCD4
 0049FCCD    mov         edx,ebx
 0049FCCF    call        TBasicAction.UnRegisterChanges
 0049FCD4    mov         dword ptr [ebx+10],esi
 0049FCD7    test        esi,esi
>0049FCD9    je          0049FCE4
 0049FCDB    mov         edx,ebx
 0049FCDD    mov         eax,esi
 0049FCDF    call        TBasicAction.RegisterChanges
 0049FCE4    pop         esi
 0049FCE5    pop         ebx
 0049FCE6    ret
*}
end;

//0049FCE8
{*function sub_0049FCE8:?;
begin
 0049FCE8    mov         al,1
 0049FCEA    ret
end;*}

//0049FCEC
procedure sub_0049FCEC;
begin
{*
 0049FCEC    push        ebp
 0049FCED    mov         ebp,esp
 0049FCEF    pop         ebp
 0049FCF0    ret         8
*}
end;

//0049FCF4
function TBasicActionLink.Update:Boolean;
begin
{*
 0049FCF4    push        ebx
 0049FCF5    mov         ebx,eax
 0049FCF7    mov         eax,dword ptr [ebx+10];TBasicActionLink.FAction:TBasicAction
 0049FCFA    mov         edx,dword ptr [eax]
 0049FCFC    call        dword ptr [edx+4C];TBasicAction.Suspended
 0049FCFF    test        al,al
>0049FD01    jne         0049FD0F
 0049FD03    mov         eax,dword ptr [ebx+10];TBasicActionLink.FAction:TBasicAction
 0049FD06    mov         edx,dword ptr [eax]
 0049FD08    call        dword ptr [edx+5C];TBasicAction.Update
 0049FD0B    test        al,al
>0049FD0D    jne         0049FD13
 0049FD0F    xor         eax,eax
 0049FD11    pop         ebx
 0049FD12    ret
 0049FD13    mov         al,1
 0049FD15    pop         ebx
 0049FD16    ret
*}
end;

//0049FD18
constructor TBasicAction.Create(AOwner:TComponent);
begin
{*
 0049FD18    push        ebx
 0049FD19    push        esi
 0049FD1A    test        dl,dl
>0049FD1C    je          0049FD26
 0049FD1E    add         esp,0FFFFFFF0
 0049FD21    call        @ClassCreate
 0049FD26    mov         ebx,edx
 0049FD28    mov         esi,eax
 0049FD2A    xor         edx,edx
 0049FD2C    mov         eax,esi
 0049FD2E    call        TComponent.Create
 0049FD33    mov         dl,1
 0049FD35    mov         eax,[00481C70];TList<System.Classes.TBasicActionLink>
 0049FD3A    call        004A4954
 0049FD3F    mov         dword ptr [esi+40],eax;TBasicAction.FClients:TList<System.Classes.TBasicActionLink>
 0049FD42    mov         eax,esi
 0049FD44    test        bl,bl
>0049FD46    je          0049FD57
 0049FD48    call        @AfterConstruction
 0049FD4D    pop         dword ptr fs:[0]
 0049FD54    add         esp,0C
 0049FD57    mov         eax,esi
 0049FD59    pop         esi
 0049FD5A    pop         ebx
 0049FD5B    ret
*}
end;

//0049FD5C
destructor TBasicAction.Destroy();
begin
{*
 0049FD5C    push        ebx
 0049FD5D    push        esi
 0049FD5E    push        edi
 0049FD5F    push        ebp
 0049FD60    add         esp,0FFFFFFF8
 0049FD63    call        @BeforeDestruction
 0049FD68    mov         byte ptr [esp],dl
 0049FD6B    mov         ebx,eax
 0049FD6D    movzx       edx,byte ptr [esp]
 0049FD71    and         dl,0FC
 0049FD74    mov         eax,ebx
 0049FD76    call        TComponent.Destroy
 0049FD7B    mov         eax,dword ptr [ebx+44];TBasicAction.FActionComponent:TComponent
 0049FD7E    test        eax,eax
>0049FD80    je          0049FD89
 0049FD82    mov         edx,ebx
 0049FD84    call        TComponent.RemoveFreeNotification
 0049FD89    cmp         dword ptr [ebx+40],0;TBasicAction.FClients:TList<System.Classes.TBasicActionLink>
>0049FD8D    je          0049FDBA
>0049FD8F    jmp         0049FDB1
 0049FD91    mov         esi,dword ptr [ebx+40];TBasicAction.FClients:TList<System.Classes.TBasicActionLink>
 0049FD94    mov         edi,dword ptr [esi+8];TList<System.Classes.TBasicActionLink>.FCount:Integer
 0049FD97    dec         edi
 0049FD98    lea         eax,[esi+8];TList<System.Classes.TBasicActionLink>.FCount:Integer
 0049FD9B    mov         edx,edi
 0049FD9D    call        00434534
 0049FDA2    mov         eax,dword ptr [esi+20]
 0049FDA5    mov         ebp,dword ptr [eax+edi*4]
 0049FDA8    mov         edx,ebp
 0049FDAA    mov         eax,ebx
 0049FDAC    call        TBasicAction.UnRegisterChanges
 0049FDB1    mov         eax,dword ptr [ebx+40];TBasicAction.FClients:TList<System.Classes.TBasicActionLink>
 0049FDB4    cmp         dword ptr [eax+8],0;TList<System.Classes.TBasicActionLink>.FCount:Integer
>0049FDB8    jg          0049FD91
 0049FDBA    lea         eax,[ebx+40];TBasicAction.FClients:TList<System.Classes.TBasicActionLink>
 0049FDBD    mov         dword ptr [esp+4],eax
 0049FDC1    mov         eax,dword ptr [esp+4]
 0049FDC5    mov         eax,dword ptr [eax]
 0049FDC7    mov         edx,dword ptr [esp+4]
 0049FDCB    xor         ecx,ecx
 0049FDCD    mov         dword ptr [edx],ecx
 0049FDCF    call        TObject.Free
 0049FDD4    cmp         byte ptr [esp],0
>0049FDD8    jle         0049FDE1
 0049FDDA    mov         eax,ebx
 0049FDDC    call        @ClassDestroy
 0049FDE1    pop         ecx
 0049FDE2    pop         edx
 0049FDE3    pop         ebp
 0049FDE4    pop         edi
 0049FDE5    pop         esi
 0049FDE6    pop         ebx
 0049FDE7    ret
*}
end;

//0049FDE8
function TBasicAction.Suspended:Boolean;
begin
{*
 0049FDE8    xor         eax,eax
 0049FDEA    ret
*}
end;

//0049FDEC
function TBasicAction.HandlesTarget(Target:TObject):Boolean;
begin
{*
 0049FDEC    xor         eax,eax
 0049FDEE    ret
*}
end;

//0049FDF0
procedure TBasicAction.ExecuteTarget(Target:TObject);
begin
{*
 0049FDF0    ret
*}
end;

//0049FDF4
{*function sub_0049FDF4(?:TContainedAction; ?:?):?;
begin
 0049FDF4    push        ebx
 0049FDF5    push        esi
 0049FDF6    mov         esi,edx
 0049FDF8    mov         ebx,dword ptr [eax+40]
 0049FDFB    lea         eax,[ebx+8]
 0049FDFE    mov         edx,esi
 0049FE00    call        00434534
 0049FE05    mov         eax,dword ptr [ebx+20]
 0049FE08    mov         eax,dword ptr [eax+esi*4]
 0049FE0B    pop         esi
 0049FE0C    pop         ebx
 0049FE0D    ret
end;*}

//0049FE10
{*function sub_0049FE10(?:TContainedAction):?;
begin
 0049FE10    mov         edx,dword ptr [eax+40]
 0049FE13    test        edx,edx
>0049FE15    je          0049FE1B
 0049FE17    mov         eax,dword ptr [edx+8]
 0049FE1A    ret
 0049FE1B    xor         eax,eax
 0049FE1D    ret
end;*}

//0049FE20
procedure TBasicAction.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 0049FE20    push        ebx
 0049FE21    push        esi
 0049FE22    push        edi
 0049FE23    mov         ebx,ecx
 0049FE25    mov         esi,edx
 0049FE27    mov         edi,eax
 0049FE29    mov         ecx,ebx
 0049FE2B    mov         edx,esi
 0049FE2D    mov         eax,edi
 0049FE2F    call        TComponent.Notification
 0049FE34    cmp         bl,1
>0049FE37    jne         0049FE43
 0049FE39    cmp         esi,dword ptr [edi+44];TBasicAction.FActionComponent:TComponent
>0049FE3C    jne         0049FE43
 0049FE3E    xor         eax,eax
 0049FE40    mov         dword ptr [edi+44],eax;TBasicAction.FActionComponent:TComponent
 0049FE43    pop         edi
 0049FE44    pop         esi
 0049FE45    pop         ebx
 0049FE46    ret
*}
end;

//0049FE48
procedure TBasicAction.UpdateTarget(Target:TObject);
begin
{*
 0049FE48    ret
*}
end;

//0049FE4C
procedure TBasicAction.Execute;
begin
{*
 0049FE4C    push        ebx
 0049FE4D    cmp         word ptr [eax+52],0
>0049FE52    je          0049FE62
 0049FE54    mov         ebx,eax
 0049FE56    mov         edx,eax
 0049FE58    mov         eax,dword ptr [ebx+54]
 0049FE5B    call        dword ptr [ebx+50]
 0049FE5E    mov         al,1
 0049FE60    pop         ebx
 0049FE61    ret
 0049FE62    xor         eax,eax
 0049FE64    pop         ebx
 0049FE65    ret
*}
end;

//0049FE68
function TBasicAction.Update:Boolean;
begin
{*
 0049FE68    push        ebx
 0049FE69    cmp         word ptr [eax+5A],0;TBasicAction.?f5A:word
>0049FE6E    je          0049FE7E
 0049FE70    mov         ebx,eax
 0049FE72    mov         edx,eax
 0049FE74    mov         eax,dword ptr [ebx+5C];TBasicAction.?f5C:dword
 0049FE77    call        dword ptr [ebx+58];TBasicAction.FOnUpdate
 0049FE7A    mov         al,1
 0049FE7C    pop         ebx
 0049FE7D    ret
 0049FE7E    xor         eax,eax
 0049FE80    pop         ebx
 0049FE81    ret
*}
end;

//0049FE84
{*procedure sub_0049FE84(?:?; ?:?);
begin
 0049FE84    push        ebp
 0049FE85    mov         ebp,esp
 0049FE87    push        ecx
 0049FE88    push        ebx
 0049FE89    push        esi
 0049FE8A    push        edi
 0049FE8B    mov         ebx,eax
 0049FE8D    mov         eax,dword ptr [ebp+8]
 0049FE90    cmp         eax,dword ptr [ebx+50];TBasicAction.FOnExecute:TNotifyEvent
>0049FE93    jne         0049FE9D
 0049FE95    mov         eax,dword ptr [ebp+0C]
 0049FE98    cmp         eax,dword ptr [ebx+54];TBasicAction.?f54:dword
>0049FE9B    je          0049FEE5
 0049FE9D    mov         eax,dword ptr [ebx+40];TBasicAction.FClients:TList<System.Classes.TBasicActionLink>
 0049FEA0    mov         eax,dword ptr [eax+8];TList<System.Classes.TBasicActionLink>.FCount:Integer
 0049FEA3    dec         eax
 0049FEA4    test        eax,eax
>0049FEA6    jl          0049FED2
 0049FEA8    inc         eax
 0049FEA9    mov         dword ptr [ebp-4],eax
 0049FEAC    xor         esi,esi
 0049FEAE    mov         edi,dword ptr [ebx+40];TBasicAction.FClients:TList<System.Classes.TBasicActionLink>
 0049FEB1    lea         eax,[edi+8];TList<System.Classes.TBasicActionLink>.FCount:Integer
 0049FEB4    mov         edx,esi
 0049FEB6    call        00434534
 0049FEBB    push        dword ptr [ebp+0C]
 0049FEBE    push        dword ptr [ebp+8]
 0049FEC1    mov         eax,dword ptr [edi+20]
 0049FEC4    mov         eax,dword ptr [eax+esi*4]
 0049FEC7    mov         edx,dword ptr [eax]
 0049FEC9    call        dword ptr [edx+10]
 0049FECC    inc         esi
 0049FECD    dec         dword ptr [ebp-4]
>0049FED0    jne         0049FEAE
 0049FED2    mov         eax,dword ptr [ebp+8]
 0049FED5    mov         dword ptr [ebx+50],eax;TBasicAction.FOnExecute:TNotifyEvent
 0049FED8    mov         eax,dword ptr [ebp+0C]
 0049FEDB    mov         dword ptr [ebx+54],eax;TBasicAction.?f54:dword
 0049FEDE    mov         eax,ebx
 0049FEE0    mov         edx,dword ptr [eax]
 0049FEE2    call        dword ptr [edx+44];TBasicAction.sub_0049FEF0
 0049FEE5    pop         edi
 0049FEE6    pop         esi
 0049FEE7    pop         ebx
 0049FEE8    pop         ecx
 0049FEE9    pop         ebp
 0049FEEA    ret         8
end;*}

//0049FEF0
procedure sub_0049FEF0;
begin
{*
 0049FEF0    push        ebx
 0049FEF1    cmp         word ptr [eax+4A],0;TBasicAction.?f4A:word
>0049FEF6    je          0049FF02
 0049FEF8    mov         ebx,eax
 0049FEFA    mov         edx,eax
 0049FEFC    mov         eax,dword ptr [ebx+4C];TBasicAction.?f4C:dword
 0049FEFF    call        dword ptr [ebx+48];TBasicAction.FOnChange
 0049FF02    pop         ebx
 0049FF03    ret
*}
end;

//0049FF04
procedure TBasicAction.RegisterChanges(Value:TBasicActionLink);
begin
{*
 0049FF04    push        ecx
 0049FF05    mov         dword ptr [edx+10],eax
 0049FF08    mov         eax,dword ptr [eax+40]
 0049FF0B    mov         dword ptr [esp],edx
 0049FF0E    mov         edx,esp
 0049FF10    add         eax,8
 0049FF13    call        0043489C
 0049FF18    pop         edx
 0049FF19    ret
*}
end;

//0049FF1C
procedure TBasicAction.UnRegisterChanges(Value:TBasicActionLink);
begin
{*
 0049FF1C    push        ebx
 0049FF1D    push        esi
 0049FF1E    push        edi
 0049FF1F    push        ebp
 0049FF20    push        ecx
 0049FF21    mov         dword ptr [esp],edx
 0049FF24    mov         ebp,eax
 0049FF26    mov         eax,dword ptr [ebp+40]
 0049FF29    mov         edi,dword ptr [eax+8]
 0049FF2C    dec         edi
 0049FF2D    test        edi,edi
>0049FF2F    jl          0049FF69
 0049FF31    inc         edi
 0049FF32    xor         ebx,ebx
 0049FF34    mov         esi,dword ptr [ebp+40]
 0049FF37    lea         eax,[esi+8]
 0049FF3A    mov         edx,ebx
 0049FF3C    call        00434534
 0049FF41    mov         eax,dword ptr [esi+20]
 0049FF44    mov         eax,dword ptr [eax+ebx*4]
 0049FF47    cmp         eax,dword ptr [esp]
>0049FF4A    jne         0049FF65
 0049FF4C    mov         eax,dword ptr [esp]
 0049FF4F    xor         edx,edx
 0049FF51    mov         dword ptr [eax+10],edx
 0049FF54    mov         eax,dword ptr [ebp+40]
 0049FF57    add         eax,8
 0049FF5A    mov         cl,1
 0049FF5C    mov         edx,ebx
 0049FF5E    call        00435200
>0049FF63    jmp         0049FF69
 0049FF65    inc         ebx
 0049FF66    dec         edi
>0049FF67    jne         0049FF34
 0049FF69    pop         edx
 0049FF6A    pop         ebp
 0049FF6B    pop         edi
 0049FF6C    pop         esi
 0049FF6D    pop         ebx
 0049FF6E    ret
*}
end;

//0049FF70
procedure sub_0049FF70(?:TBasicAction; ?:TComponent);
begin
{*
 0049FF70    push        ebx
 0049FF71    push        esi
 0049FF72    mov         esi,edx
 0049FF74    mov         ebx,eax
 0049FF76    mov         eax,dword ptr [ebx+44];TBasicAction.FActionComponent:TComponent
 0049FF79    cmp         esi,eax
>0049FF7B    je          0049FF98
 0049FF7D    test        eax,eax
>0049FF7F    je          0049FF88
 0049FF81    mov         edx,ebx
 0049FF83    call        TComponent.RemoveFreeNotification
 0049FF88    mov         eax,esi
 0049FF8A    mov         dword ptr [ebx+44],eax;TBasicAction.FActionComponent:TComponent
 0049FF8D    test        eax,eax
>0049FF8F    je          0049FF98
 0049FF91    mov         edx,ebx
 0049FF93    call        TComponent.FreeNotification
 0049FF98    pop         esi
 0049FF99    pop         ebx
 0049FF9A    ret
*}
end;

//0049FF9C
constructor TStreamAdapter.Create(Ownership:TStreamOwnership);
begin
{*
 0049FF9C    push        ebp
 0049FF9D    mov         ebp,esp
 0049FF9F    push        ebx
 0049FFA0    push        esi
 0049FFA1    push        edi
 0049FFA2    test        dl,dl
>0049FFA4    je          0049FFAE
 0049FFA6    add         esp,0FFFFFFF0
 0049FFA9    call        @ClassCreate
 0049FFAE    mov         esi,ecx
 0049FFB0    mov         ebx,edx
 0049FFB2    mov         edi,eax
 0049FFB4    xor         edx,edx
 0049FFB6    mov         eax,edi
 0049FFB8    call        TObject.Create
 0049FFBD    mov         dword ptr [edi+0C],esi
 0049FFC0    movzx       eax,byte ptr [ebp+8]
 0049FFC4    mov         byte ptr [edi+10],al
 0049FFC7    mov         eax,edi
 0049FFC9    test        bl,bl
>0049FFCB    je          0049FFDC
 0049FFCD    call        @AfterConstruction
 0049FFD2    pop         dword ptr fs:[0]
 0049FFD9    add         esp,0C
 0049FFDC    mov         eax,edi
 0049FFDE    pop         edi
 0049FFDF    pop         esi
 0049FFE0    pop         ebx
 0049FFE1    pop         ebp
 0049FFE2    ret         4
*}
end;

//0049FFE8
destructor TStreamAdapter.Destroy();
begin
{*
 0049FFE8    push        ebx
 0049FFE9    push        esi
 0049FFEA    call        @BeforeDestruction
 0049FFEF    mov         ebx,edx
 0049FFF1    mov         esi,eax
 0049FFF3    cmp         byte ptr [esi+10],1
>0049FFF7    jne         004A0006
 0049FFF9    mov         eax,dword ptr [esi+0C]
 0049FFFC    call        TObject.Free
 004A0001    xor         eax,eax
 004A0003    mov         dword ptr [esi+0C],eax
 004A0006    mov         dl,0FC
 004A0008    and         dl,bl
 004A000A    mov         eax,esi
 004A000C    call        TObject.Destroy
 004A0011    test        bl,bl
>004A0013    jle         004A001C
 004A0015    mov         eax,esi
 004A0017    call        @ClassDestroy
 004A001C    pop         esi
 004A001D    pop         ebx
 004A001E    ret
*}
end;

//004A0020
function TStreamAdapter.Read(pv:Pointer; cb:Cardinal; pcbRead:PFixedUInt):HRESULT; stdcall;
begin
{*
 004A0020    push        ebp
 004A0021    mov         ebp,esp
 004A0023    push        ebx
 004A0024    push        esi
 004A0025    push        edi
 004A0026    mov         edx,dword ptr [ebp+0C]
 004A0029    mov         eax,dword ptr [ebp+8]
 004A002C    xor         ecx,ecx
 004A002E    push        ebp
 004A002F    push        4A006F
 004A0034    push        dword ptr fs:[ecx]
 004A0037    mov         dword ptr fs:[ecx],esp
 004A003A    test        edx,edx
>004A003C    jne         004A004D
 004A003E    mov         ebx,80030009
 004A0043    xor         eax,eax
 004A0045    pop         edx
 004A0046    pop         ecx
 004A0047    pop         ecx
 004A0048    mov         dword ptr fs:[eax],edx
>004A004B    jmp         004A007E
 004A004D    mov         eax,dword ptr [eax+0C]
 004A0050    mov         ecx,dword ptr [ebp+10]
 004A0053    mov         ebx,dword ptr [eax]
 004A0055    call        dword ptr [ebx+0C]
 004A0058    cmp         dword ptr [ebp+14],0
>004A005C    je          004A0063
 004A005E    mov         edx,dword ptr [ebp+14]
 004A0061    mov         dword ptr [edx],eax
 004A0063    xor         ebx,ebx
 004A0065    xor         eax,eax
 004A0067    pop         edx
 004A0068    pop         ecx
 004A0069    pop         ecx
 004A006A    mov         dword ptr fs:[eax],edx
>004A006D    jmp         004A007E
>004A006F    jmp         @HandleAnyException
 004A0074    mov         ebx,1
 004A0079    call        @DoneExcept
 004A007E    mov         eax,ebx
 004A0080    pop         edi
 004A0081    pop         esi
 004A0082    pop         ebx
 004A0083    pop         ebp
 004A0084    ret         10
*}
end;

//004A0088
function TStreamAdapter.Write(pv:Pointer; cb:Cardinal; pcbWritten:PFixedUInt):HRESULT; stdcall;
begin
{*
 004A0088    push        ebp
 004A0089    mov         ebp,esp
 004A008B    push        ebx
 004A008C    push        esi
 004A008D    push        edi
 004A008E    mov         edx,dword ptr [ebp+0C]
 004A0091    mov         eax,dword ptr [ebp+8]
 004A0094    xor         ecx,ecx
 004A0096    push        ebp
 004A0097    push        4A00D7
 004A009C    push        dword ptr fs:[ecx]
 004A009F    mov         dword ptr fs:[ecx],esp
 004A00A2    test        edx,edx
>004A00A4    jne         004A00B5
 004A00A6    mov         ebx,80030009
 004A00AB    xor         eax,eax
 004A00AD    pop         edx
 004A00AE    pop         ecx
 004A00AF    pop         ecx
 004A00B0    mov         dword ptr fs:[eax],edx
>004A00B3    jmp         004A00E6
 004A00B5    mov         eax,dword ptr [eax+0C]
 004A00B8    mov         ecx,dword ptr [ebp+10]
 004A00BB    mov         ebx,dword ptr [eax]
 004A00BD    call        dword ptr [ebx+10]
 004A00C0    cmp         dword ptr [ebp+14],0
>004A00C4    je          004A00CB
 004A00C6    mov         edx,dword ptr [ebp+14]
 004A00C9    mov         dword ptr [edx],eax
 004A00CB    xor         ebx,ebx
 004A00CD    xor         eax,eax
 004A00CF    pop         edx
 004A00D0    pop         ecx
 004A00D1    pop         ecx
 004A00D2    mov         dword ptr fs:[eax],edx
>004A00D5    jmp         004A00E6
>004A00D7    jmp         @HandleAnyException
 004A00DC    mov         ebx,80030103
 004A00E1    call        @DoneExcept
 004A00E6    mov         eax,ebx
 004A00E8    pop         edi
 004A00E9    pop         esi
 004A00EA    pop         ebx
 004A00EB    pop         ebp
 004A00EC    ret         10
*}
end;

//004A00F0
{*function TStreamAdapter.Seek(dlibMove:Int64; ?:?; dwOrigin:Cardinal; libNewPosition:UInt64):HRESULT; stdcall;
begin
 004A00F0    push        ebp
 004A00F1    mov         ebp,esp
 004A00F3    add         esp,0FFFFFFF0
 004A00F6    push        ebx
 004A00F7    push        esi
 004A00F8    push        edi
 004A00F9    mov         esi,dword ptr [ebp+14]
 004A00FC    mov         eax,dword ptr [ebp+8]
 004A00FF    xor         edx,edx
 004A0101    push        ebp
 004A0102    push        4A016A
 004A0107    push        dword ptr fs:[edx]
 004A010A    mov         dword ptr fs:[edx],esp
 004A010D    test        esi,esi
>004A010F    jl          004A0116
 004A0111    cmp         esi,2
>004A0114    jbe         004A0125
 004A0116    mov         ebx,80030001
 004A011B    xor         eax,eax
 004A011D    pop         edx
 004A011E    pop         ecx
 004A011F    pop         ecx
 004A0120    mov         dword ptr fs:[eax],edx
>004A0123    jmp         004A0179
 004A0125    mov         edi,dword ptr [eax+0C];TStreamAdapter.FStream:TStream
 004A0128    push        dword ptr [ebp+10]
 004A012B    push        dword ptr [ebp+0C]
 004A012E    mov         edx,esi
 004A0130    mov         eax,edi
 004A0132    mov         ecx,dword ptr [eax]
 004A0134    call        dword ptr [ecx+20];TStream.Seek
 004A0137    mov         dword ptr [ebp-10],eax
 004A013A    mov         dword ptr [ebp-0C],edx
 004A013D    mov         eax,dword ptr [ebp-10]
 004A0140    mov         dword ptr [ebp-8],eax
 004A0143    mov         eax,dword ptr [ebp-0C]
 004A0146    mov         dword ptr [ebp-4],eax
 004A0149    mov         eax,dword ptr [ebp+18]
 004A014C    test        eax,eax
>004A014E    je          004A015E
 004A0150    mov         eax,dword ptr [ebp+18]
 004A0153    mov         edx,dword ptr [ebp-8]
 004A0156    mov         dword ptr [eax],edx
 004A0158    mov         edx,dword ptr [ebp-4]
 004A015B    mov         dword ptr [eax+4],edx
 004A015E    xor         ebx,ebx
 004A0160    xor         eax,eax
 004A0162    pop         edx
 004A0163    pop         ecx
 004A0164    pop         ecx
 004A0165    mov         dword ptr fs:[eax],edx
>004A0168    jmp         004A0179
>004A016A    jmp         @HandleAnyException
 004A016F    mov         ebx,80030009
 004A0174    call        @DoneExcept
 004A0179    mov         eax,ebx
 004A017B    pop         edi
 004A017C    pop         esi
 004A017D    pop         ebx
 004A017E    mov         esp,ebp
 004A0180    pop         ebp
 004A0181    ret         14
end;*}

//004A0184
{*function TStreamAdapter.SetSize(libNewSize:UInt64; ?:?):HRESULT; stdcall;
begin
 004A0184    push        ebp
 004A0185    mov         ebp,esp
 004A0187    add         esp,0FFFFFFF8
 004A018A    push        ebx
 004A018B    push        esi
 004A018C    push        edi
 004A018D    mov         ebx,dword ptr [ebp+8]
 004A0190    xor         eax,eax
 004A0192    push        ebp
 004A0193    push        4A020E
 004A0198    push        dword ptr fs:[eax]
 004A019B    mov         dword ptr fs:[eax],esp
 004A019E    mov         eax,dword ptr [ebx+0C];TStreamAdapter.FStream:TStream
 004A01A1    call        TStream.GetPosition
 004A01A6    mov         dword ptr [ebp-8],eax
 004A01A9    mov         dword ptr [ebp-4],edx
 004A01AC    push        dword ptr [ebp+10]
 004A01AF    push        dword ptr [ebp+0C]
 004A01B2    mov         eax,dword ptr [ebx+0C];TStreamAdapter.FStream:TStream
 004A01B5    call        TStream.SetSize64
 004A01BA    mov         eax,dword ptr [ebx+0C];TStreamAdapter.FStream:TStream
 004A01BD    mov         edx,dword ptr [eax]
 004A01BF    call        dword ptr [edx];TStream.sub_00491B30
 004A01C1    cmp         edx,dword ptr [ebp-4]
>004A01C4    jne         004A01CD
 004A01C6    cmp         eax,dword ptr [ebp-8]
>004A01C9    jae         004A01DC
>004A01CB    jmp         004A01CF
>004A01CD    jge         004A01DC
 004A01CF    mov         eax,dword ptr [ebx+0C];TStreamAdapter.FStream:TStream
 004A01D2    mov         edx,dword ptr [eax]
 004A01D4    call        dword ptr [edx];TStream.sub_00491B30
 004A01D6    mov         dword ptr [ebp-8],eax
 004A01D9    mov         dword ptr [ebp-4],edx
 004A01DC    push        dword ptr [ebp-4]
 004A01DF    push        dword ptr [ebp-8]
 004A01E2    mov         eax,dword ptr [ebx+0C];TStreamAdapter.FStream:TStream
 004A01E5    call        TStream.SetPosition
 004A01EA    mov         eax,dword ptr [ebx+0C];TStreamAdapter.FStream:TStream
 004A01ED    mov         edx,dword ptr [eax]
 004A01EF    call        dword ptr [edx];TStream.sub_00491B30
 004A01F1    cmp         edx,dword ptr [ebp+10]
>004A01F4    jne         004A01F9
 004A01F6    cmp         eax,dword ptr [ebp+0C]
>004A01F9    je          004A0202
 004A01FB    mov         ebx,80004005
>004A0200    jmp         004A0204
 004A0202    xor         ebx,ebx
 004A0204    xor         eax,eax
 004A0206    pop         edx
 004A0207    pop         ecx
 004A0208    pop         ecx
 004A0209    mov         dword ptr fs:[eax],edx
>004A020C    jmp         004A021D
>004A020E    jmp         @HandleAnyException
 004A0213    mov         ebx,8000FFFF
 004A0218    call        @DoneExcept
 004A021D    mov         eax,ebx
 004A021F    pop         edi
 004A0220    pop         esi
 004A0221    pop         ebx
 004A0222    pop         ecx
 004A0223    pop         ecx
 004A0224    pop         ebp
 004A0225    ret         0C
end;*}

//004A0228
{*function TStreamAdapter.CopyTo(stm:IStream; cb:UInt64; ?:?; cbRead:UInt64; cbWritten:UInt64):HRESULT; stdcall;
begin
 004A0228    push        ebp
 004A0229    mov         ebp,esp
 004A022B    add         esp,0FFFFFFD8
 004A022E    push        ebx
 004A022F    push        esi
 004A0230    push        edi
 004A0231    mov         eax,dword ptr [ebp+0C]
 004A0234    call        @IntfAddRef
 004A0239    xor         eax,eax
 004A023B    push        ebp
 004A023C    push        4A040B
 004A0241    push        dword ptr fs:[eax]
 004A0244    mov         dword ptr fs:[eax],esp
 004A0247    xor         eax,eax
 004A0249    mov         dword ptr [ebp-4],eax
 004A024C    mov         dword ptr [ebp-18],0
 004A0253    mov         dword ptr [ebp-14],0
 004A025A    mov         dword ptr [ebp-20],0
 004A0261    mov         dword ptr [ebp-1C],0
 004A0268    xor         eax,eax
 004A026A    push        ebp
 004A026B    push        4A03E4
 004A0270    push        dword ptr fs:[eax]
 004A0273    mov         dword ptr fs:[eax],esp
 004A0276    cmp         dword ptr [ebp+14],0
>004A027A    jne         004A0283
 004A027C    cmp         dword ptr [ebp+10],100000
>004A0283    jbe         004A028E
 004A0285    mov         dword ptr [ebp-0C],100000
>004A028C    jmp         004A0294
 004A028E    mov         eax,dword ptr [ebp+10]
 004A0291    mov         dword ptr [ebp-0C],eax
 004A0294    mov         eax,dword ptr [ebp-0C]
 004A0297    call        @GetMem
 004A029C    mov         dword ptr [ebp-8],eax
 004A029F    xor         eax,eax
 004A02A1    push        ebp
 004A02A2    push        4A03D3
 004A02A7    push        dword ptr fs:[eax]
 004A02AA    mov         dword ptr fs:[eax],esp
>004A02AD    jmp         004A0383
 004A02B2    cmp         dword ptr [ebp+14],0
>004A02B6    jne         004A02BF
 004A02B8    cmp         dword ptr [ebp+10],7FFFFFFF
>004A02BF    jbe         004A02C8
 004A02C1    mov         esi,7FFFFFFF
>004A02C6    jmp         004A02CB
 004A02C8    mov         esi,dword ptr [ebp+10]
 004A02CB    test        esi,esi
>004A02CD    jle         004A0383
 004A02D3    cmp         esi,dword ptr [ebp-0C]
>004A02D6    jle         004A02E0
 004A02D8    mov         eax,dword ptr [ebp-0C]
 004A02DB    mov         dword ptr [ebp-10],eax
>004A02DE    jmp         004A02E3
 004A02E0    mov         dword ptr [ebp-10],esi
 004A02E3    mov         edx,dword ptr [ebp-8]
 004A02E6    mov         eax,dword ptr [ebp+8]
 004A02E9    mov         eax,dword ptr [eax+0C];TStreamAdapter.FStream:TStream
 004A02EC    mov         ecx,dword ptr [ebp-10]
 004A02EF    mov         ebx,dword ptr [eax]
 004A02F1    call        dword ptr [ebx+0C];TStream.Read
 004A02F4    mov         ebx,eax
 004A02F6    test        ebx,ebx
>004A02F8    jne         004A030C
 004A02FA    call        @TryFinallyExit
 004A02FF    xor         eax,eax
 004A0301    pop         edx
 004A0302    pop         ecx
 004A0303    pop         ecx
 004A0304    mov         dword ptr fs:[eax],edx
>004A0307    jmp         004A03F5
 004A030C    mov         eax,ebx
 004A030E    cdq
 004A030F    add         dword ptr [ebp-18],eax
 004A0312    adc         dword ptr [ebp-14],edx
 004A0315    mov         dword ptr [ebp-28],0
 004A031C    mov         dword ptr [ebp-24],0
 004A0323    lea         eax,[ebp-28]
 004A0326    push        eax
 004A0327    push        ebx
 004A0328    mov         eax,dword ptr [ebp-8]
 004A032B    push        eax
 004A032C    mov         eax,dword ptr [ebp+0C]
 004A032F    push        eax
 004A0330    mov         eax,dword ptr [eax]
 004A0332    call        dword ptr [eax+10]
 004A0335    mov         dword ptr [ebp-4],eax
 004A0338    mov         eax,dword ptr [ebp-28]
 004A033B    mov         edx,dword ptr [ebp-24]
 004A033E    add         dword ptr [ebp-20],eax
 004A0341    adc         dword ptr [ebp-1C],edx
 004A0344    cmp         dword ptr [ebp-4],0
>004A0348    jne         004A0358
 004A034A    mov         eax,dword ptr [ebp-28]
 004A034D    cmp         ebx,eax
>004A034F    je          004A0358
 004A0351    mov         dword ptr [ebp-4],80004005
 004A0358    cmp         dword ptr [ebp-4],0
>004A035C    je          004A0370
 004A035E    call        @TryFinallyExit
 004A0363    xor         eax,eax
 004A0365    pop         edx
 004A0366    pop         ecx
 004A0367    pop         ecx
 004A0368    mov         dword ptr fs:[eax],edx
>004A036B    jmp         004A03F5
 004A0370    sub         esi,ebx
 004A0372    mov         eax,ebx
 004A0374    cdq
 004A0375    sub         dword ptr [ebp+10],eax
 004A0378    sbb         dword ptr [ebp+14],edx
 004A037B    test        esi,esi
>004A037D    jg          004A02D3
 004A0383    cmp         dword ptr [ebp+14],0
>004A0387    jne         004A038D
 004A0389    cmp         dword ptr [ebp+10],0
>004A038D    ja          004A02B2
 004A0393    xor         eax,eax
 004A0395    pop         edx
 004A0396    pop         ecx
 004A0397    pop         ecx
 004A0398    mov         dword ptr fs:[eax],edx
 004A039B    push        4A03DA
 004A03A0    mov         eax,dword ptr [ebp-8]
 004A03A3    call        @FreeMem
 004A03A8    mov         eax,dword ptr [ebp+1C]
 004A03AB    test        eax,eax
>004A03AD    je          004A03BD
 004A03AF    mov         eax,dword ptr [ebp+1C]
 004A03B2    mov         edx,dword ptr [ebp-20]
 004A03B5    mov         dword ptr [eax],edx
 004A03B7    mov         edx,dword ptr [ebp-1C]
 004A03BA    mov         dword ptr [eax+4],edx
 004A03BD    mov         eax,dword ptr [ebp+18]
 004A03C0    test        eax,eax
>004A03C2    je          004A03D2
 004A03C4    mov         eax,dword ptr [ebp+18]
 004A03C7    mov         edx,dword ptr [ebp-18]
 004A03CA    mov         dword ptr [eax],edx
 004A03CC    mov         edx,dword ptr [ebp-14]
 004A03CF    mov         dword ptr [eax+4],edx
 004A03D2    ret
>004A03D3    jmp         @HandleFinally
>004A03D8    jmp         004A03A0
 004A03DA    xor         eax,eax
 004A03DC    pop         edx
 004A03DD    pop         ecx
 004A03DE    pop         ecx
 004A03DF    mov         dword ptr fs:[eax],edx
>004A03E2    jmp         004A03F5
>004A03E4    jmp         @HandleAnyException
 004A03E9    mov         dword ptr [ebp-4],8000FFFF
 004A03F0    call        @DoneExcept
 004A03F5    xor         eax,eax
 004A03F7    pop         edx
 004A03F8    pop         ecx
 004A03F9    pop         ecx
 004A03FA    mov         dword ptr fs:[eax],edx
 004A03FD    push        4A0412
 004A0402    lea         eax,[ebp+0C]
 004A0405    call        @IntfClear
 004A040A    ret
>004A040B    jmp         @HandleFinally
>004A0410    jmp         004A0402
 004A0412    mov         eax,dword ptr [ebp-4]
 004A0415    pop         edi
 004A0416    pop         esi
 004A0417    pop         ebx
 004A0418    mov         esp,ebp
 004A041A    pop         ebp
 004A041B    ret         18
end;*}

//004A0420
function TStreamAdapter.Commit(grfCommitFlags:Cardinal):HRESULT; stdcall;
begin
{*
 004A0420    push        ebp
 004A0421    mov         ebp,esp
 004A0423    xor         eax,eax
 004A0425    pop         ebp
 004A0426    ret         8
*}
end;

//004A042C
function TStreamAdapter.Revert:HRESULT; stdcall;
begin
{*
 004A042C    push        ebp
 004A042D    mov         ebp,esp
 004A042F    mov         eax,80030102
 004A0434    pop         ebp
 004A0435    ret         4
*}
end;

//004A0438
function TStreamAdapter.LockRegion(libOffset:UInt64; cb:UInt64; dwLockType:Cardinal):HRESULT; stdcall;
begin
{*
 004A0438    push        ebp
 004A0439    mov         ebp,esp
 004A043B    mov         eax,80030001
 004A0440    pop         ebp
 004A0441    ret         18
*}
end;

//004A0444
function TStreamAdapter.UnlockRegion(libOffset:UInt64; cb:UInt64; dwLockType:Cardinal):HRESULT; stdcall;
begin
{*
 004A0444    push        ebp
 004A0445    mov         ebp,esp
 004A0447    mov         eax,80030001
 004A044C    pop         ebp
 004A044D    ret         18
*}
end;

//004A0450
function TStreamAdapter.Stat(statstg:tagSTATSTG; grfStatFlag:Cardinal):HRESULT; stdcall;
begin
{*
 004A0450    push        ebp
 004A0451    mov         ebp,esp
 004A0453    push        ebx
 004A0454    push        esi
 004A0455    push        edi
 004A0456    mov         ebx,dword ptr [ebp+0C]
 004A0459    mov         edi,dword ptr [ebp+8]
 004A045C    xor         esi,esi
 004A045E    xor         eax,eax
 004A0460    push        ebp
 004A0461    push        4A04A3
 004A0466    push        dword ptr fs:[eax]
 004A0469    mov         dword ptr fs:[eax],esp
 004A046C    test        ebx,ebx
>004A046E    je          004A0499
 004A0470    mov         eax,ebx
 004A0472    xor         ecx,ecx
 004A0474    mov         edx,48
 004A0479    call        @FillChar
 004A047E    mov         dword ptr [ebx+4],2;tagSTATSTG.dwType:LongInt
 004A0485    mov         eax,dword ptr [edi+0C];TStreamAdapter.FStream:TStream
 004A0488    mov         edx,dword ptr [eax]
 004A048A    call        dword ptr [edx];TStream.sub_00491B30
 004A048C    mov         dword ptr [ebx+8],eax;tagSTATSTG.cbSize:Int64
 004A048F    mov         dword ptr [ebx+0C],edx;tagSTATSTG.cbSize:Int64
 004A0492    mov         dword ptr [ebx+2C],1;tagSTATSTG.grfLocksSupported:LongInt
 004A0499    xor         eax,eax
 004A049B    pop         edx
 004A049C    pop         ecx
 004A049D    pop         ecx
 004A049E    mov         dword ptr fs:[eax],edx
>004A04A1    jmp         004A04B2
>004A04A3    jmp         @HandleAnyException
 004A04A8    mov         esi,8000FFFF
 004A04AD    call        @DoneExcept
 004A04B2    mov         eax,esi
 004A04B4    pop         edi
 004A04B5    pop         esi
 004A04B6    pop         ebx
 004A04B7    pop         ebp
 004A04B8    ret         0C
*}
end;

//004A04BC
function TStreamAdapter.Clone(stm:IStream):HRESULT; stdcall;
begin
{*
 004A04BC    push        ebp
 004A04BD    mov         ebp,esp
 004A04BF    mov         eax,dword ptr [ebp+0C]
 004A04C2    test        eax,eax
>004A04C4    je          004A04CA
 004A04C6    xor         edx,edx
 004A04C8    mov         dword ptr [eax],edx
 004A04CA    mov         eax,80004001
 004A04CF    pop         ebp
 004A04D0    ret         8
*}
end;

//004A04D4
procedure sub_004A04D4;
begin
{*
 004A04D4    push        ebp
 004A04D5    mov         ebp,esp
 004A04D7    push        ebx
 004A04D8    push        esi
 004A04D9    push        edi
 004A04DA    mov         eax,[007CA3D8];gvar_007CA3D8:TThreadList<System.Classes.TIntConst>
 004A04DF    call        TThreadList<System.Classes.TIntConst>.LockList
 004A04E4    mov         esi,eax
 004A04E6    xor         edx,edx
 004A04E8    push        ebp
 004A04E9    push        4A0533
 004A04EE    push        dword ptr fs:[edx]
 004A04F1    mov         dword ptr fs:[edx],esp
 004A04F4    mov         edi,dword ptr [esi+8];TList<System.Classes.TIntConst>.FCount:Integer
 004A04F7    dec         edi
 004A04F8    test        edi,edi
>004A04FA    jl          004A0518
 004A04FC    inc         edi
 004A04FD    xor         ebx,ebx
 004A04FF    lea         eax,[esi+8];TList<System.Classes.TIntConst>.FCount:Integer
 004A0502    mov         edx,ebx
 004A0504    call        00434534
 004A0509    mov         eax,dword ptr [esi+20]
 004A050C    mov         eax,dword ptr [eax+ebx*4]
 004A050F    call        TObject.Free
 004A0514    inc         ebx
 004A0515    dec         edi
>004A0516    jne         004A04FF
 004A0518    xor         eax,eax
 004A051A    pop         edx
 004A051B    pop         ecx
 004A051C    pop         ecx
 004A051D    mov         dword ptr fs:[eax],edx
 004A0520    push        4A053A
 004A0525    mov         eax,[007CA3D8];gvar_007CA3D8:TThreadList<System.Classes.TIntConst>
 004A052A    mov         eax,dword ptr [eax+8]
 004A052D    call        TMonitor.Exit
 004A0532    ret
>004A0533    jmp         @HandleFinally
>004A0538    jmp         004A0525
 004A053A    mov         eax,[007CA3D8];gvar_007CA3D8:TThreadList<System.Classes.TIntConst>
 004A053F    call        TObject.Free
 004A0544    pop         edi
 004A0545    pop         esi
 004A0546    pop         ebx
 004A0547    pop         ebp
 004A0548    ret
*}
end;

//004A0554
constructor TDataModule.Create(AOwner:TComponent);
begin
{*
 004A0554    push        ebp
 004A0555    mov         ebp,esp
 004A0557    add         esp,0FFFFFFE8
 004A055A    push        ebx
 004A055B    xor         ebx,ebx
 004A055D    mov         dword ptr [ebp-14],ebx
 004A0560    mov         dword ptr [ebp-18],ebx
 004A0563    test        dl,dl
>004A0565    je          004A056F
 004A0567    add         esp,0FFFFFFF0
 004A056A    call        @ClassCreate
 004A056F    mov         ebx,ecx
 004A0571    mov         byte ptr [ebp-5],dl
 004A0574    mov         dword ptr [ebp-4],eax
 004A0577    xor         eax,eax
 004A0579    push        ebp
 004A057A    push        4A065E
 004A057F    push        dword ptr fs:[eax]
 004A0582    mov         dword ptr fs:[eax],esp
 004A0585    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 004A058A    mov         edx,dword ptr [eax]
 004A058C    call        dword ptr [edx+14]
 004A058F    xor         edx,edx
 004A0591    push        ebp
 004A0592    push        4A063C
 004A0597    push        dword ptr fs:[edx]
 004A059A    mov         dword ptr fs:[edx],esp
 004A059D    push        0
 004A059F    mov         ecx,ebx
 004A05A1    xor         edx,edx
 004A05A3    mov         eax,dword ptr [ebp-4]
 004A05A6    mov         ebx,dword ptr [eax]
 004A05A8    call        dword ptr [ebx+4C];TDataModule.CreateNew
 004A05AB    mov         edx,dword ptr [ebp-4]
 004A05AE    mov         edx,dword ptr [edx]
 004A05B0    mov         eax,edx
 004A05B2    cmp         eax,dword ptr ds:[47A0E0];TDataModule
>004A05B8    je          004A0624
 004A05BA    mov         eax,dword ptr [ebp-4]
 004A05BD    test        byte ptr [eax+1C],10;TDataModule.FComponentState:TComponentState
>004A05C1    jne         004A0624
 004A05C3    mov         edx,dword ptr ds:[47A0E0];TDataModule
 004A05C9    mov         eax,dword ptr [ebp-4]
 004A05CC    call        0048D348
 004A05D1    test        al,al
>004A05D3    jne         004A0613
 004A05D5    lea         edx,[ebp-14]
 004A05D8    mov         eax,dword ptr [ebp-4]
 004A05DB    mov         eax,dword ptr [eax]
 004A05DD    call        TObject.ClassName
 004A05E2    mov         eax,dword ptr [ebp-14]
 004A05E5    mov         dword ptr [ebp-10],eax
 004A05E8    mov         byte ptr [ebp-0C],11
 004A05EC    lea         eax,[ebp-10]
 004A05EF    push        eax
 004A05F0    push        0
 004A05F2    lea         edx,[ebp-18]
 004A05F5    mov         eax,[007C47C0];^SResString144:TResStringRec
 004A05FA    call        LoadResString
 004A05FF    mov         ecx,dword ptr [ebp-18]
 004A0602    mov         dl,1
 004A0604    mov         eax,[0046BB3C];EResNotFound
 004A0609    call        Exception.CreateFmt;EResNotFound.Create
 004A060E    call        @RaiseExcept
 004A0613    mov         eax,dword ptr [ebp-4]
 004A0616    cmp         byte ptr [eax+60],0;TDataModule.FOldCreateOrder:Boolean
>004A061A    je          004A0624
 004A061C    mov         eax,dword ptr [ebp-4]
 004A061F    mov         edx,dword ptr [eax]
 004A0621    call        dword ptr [edx+44];TDataModule.sub_004A07B8
 004A0624    xor         eax,eax
 004A0626    pop         edx
 004A0627    pop         ecx
 004A0628    pop         ecx
 004A0629    mov         dword ptr fs:[eax],edx
 004A062C    push        4A0643
 004A0631    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 004A0636    mov         edx,dword ptr [eax]
 004A0638    call        dword ptr [edx+18]
 004A063B    ret
>004A063C    jmp         @HandleFinally
>004A0641    jmp         004A0631
 004A0643    xor         eax,eax
 004A0645    pop         edx
 004A0646    pop         ecx
 004A0647    pop         ecx
 004A0648    mov         dword ptr fs:[eax],edx
 004A064B    push        4A0665
 004A0650    lea         eax,[ebp-18]
 004A0653    mov         edx,2
 004A0658    call        @UStrArrayClr
 004A065D    ret
>004A065E    jmp         @HandleFinally
>004A0663    jmp         004A0650
 004A0665    mov         eax,dword ptr [ebp-4]
 004A0668    cmp         byte ptr [ebp-5],0
>004A066C    je          004A067D
 004A066E    call        @AfterConstruction
 004A0673    pop         dword ptr fs:[0]
 004A067A    add         esp,0C
 004A067D    mov         eax,dword ptr [ebp-4]
 004A0680    pop         ebx
 004A0681    mov         esp,ebp
 004A0683    pop         ebp
 004A0684    ret
*}
end;

//004A0688
procedure TDataModule.AfterConstruction;
begin
{*
 004A0688    cmp         byte ptr [eax+60],0
>004A068C    jne         004A0693
 004A068E    mov         edx,dword ptr [eax]
 004A0690    call        dword ptr [edx+44]
 004A0693    ret
*}
end;

//004A0694
constructor TDataModule.CreateNew(Dummy:Integer);
begin
{*
 004A0694    push        ebp
 004A0695    mov         ebp,esp
 004A0697    push        ebx
 004A0698    push        esi
 004A0699    test        dl,dl
>004A069B    je          004A06A5
 004A069D    add         esp,0FFFFFFF0
 004A06A0    call        @ClassCreate
 004A06A5    mov         ebx,edx
 004A06A7    mov         esi,eax
 004A06A9    xor         edx,edx
 004A06AB    mov         eax,esi
 004A06AD    call        TComponent.Create
 004A06B2    cmp         word ptr ds:[7A05D2],0
>004A06BA    je          004A06D0
 004A06BC    cmp         dword ptr [ebp+8],0
>004A06C0    jl          004A06D0
 004A06C2    mov         edx,esi
 004A06C4    mov         eax,dword ptr ds:[7A05D4]
 004A06CA    call        dword ptr ds:[7A05D0]
 004A06D0    mov         eax,esi
 004A06D2    test        bl,bl
>004A06D4    je          004A06E5
 004A06D6    call        @AfterConstruction
 004A06DB    pop         dword ptr fs:[0]
 004A06E2    add         esp,0C
 004A06E5    mov         eax,esi
 004A06E7    pop         esi
 004A06E8    pop         ebx
 004A06E9    pop         ebp
 004A06EA    ret         4
*}
end;

//004A06F0
procedure TDataModule.BeforeDestruction;
begin
{*
 004A06F0    push        ebx
 004A06F1    mov         ebx,eax
 004A06F3    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 004A06F8    mov         edx,dword ptr [eax]
 004A06FA    call        dword ptr [edx+14]
 004A06FD    mov         eax,ebx
 004A06FF    call        TComponent.Destroying
 004A0704    xor         edx,edx
 004A0706    mov         eax,ebx
 004A0708    call        RemoveFixupReferences
 004A070D    cmp         byte ptr [ebx+60],0
>004A0711    jne         004A071A
 004A0713    mov         eax,ebx
 004A0715    mov         edx,dword ptr [eax]
 004A0717    call        dword ptr [edx+48]
 004A071A    pop         ebx
 004A071B    ret
*}
end;

//004A071C
destructor TDataModule.Destroy();
begin
{*
 004A071C    push        ebp
 004A071D    mov         ebp,esp
 004A071F    add         esp,0FFFFFFF8
 004A0722    call        @BeforeDestruction
 004A0727    mov         byte ptr [ebp-5],dl
 004A072A    mov         dword ptr [ebp-4],eax
 004A072D    mov         eax,dword ptr [ebp-4]
 004A0730    test        byte ptr [eax+1C],8;TDataModule.FComponentState:TComponentState
>004A0734    jne         004A0740
 004A0736    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 004A073B    mov         edx,dword ptr [eax]
 004A073D    call        dword ptr [edx+14]
 004A0740    xor         eax,eax
 004A0742    push        ebp
 004A0743    push        4A079F
 004A0748    push        dword ptr fs:[eax]
 004A074B    mov         dword ptr fs:[eax],esp
 004A074E    mov         eax,dword ptr [ebp-4]
 004A0751    cmp         byte ptr [eax+60],0;TDataModule.FOldCreateOrder:Boolean
>004A0755    je          004A075F
 004A0757    mov         eax,dword ptr [ebp-4]
 004A075A    mov         edx,dword ptr [eax]
 004A075C    call        dword ptr [edx+48];TDataModule.sub_004A0818
 004A075F    cmp         word ptr ds:[7A05DA],0;gvar_007A05DA
>004A0767    je          004A0778
 004A0769    mov         edx,dword ptr [ebp-4]
 004A076C    mov         eax,dword ptr ds:[7A05DC];0x0 gvar_007A05DC
 004A0772    call        dword ptr ds:[7A05D8]
 004A0778    movzx       edx,byte ptr [ebp-5]
 004A077C    and         dl,0FC
 004A077F    mov         eax,dword ptr [ebp-4]
 004A0782    call        TComponent.Destroy
 004A0787    xor         eax,eax
 004A0789    pop         edx
 004A078A    pop         ecx
 004A078B    pop         ecx
 004A078C    mov         dword ptr fs:[eax],edx
 004A078F    push        4A07A6
 004A0794    mov         eax,[007CA3B8];gvar_007CA3B8:IInterface
 004A0799    mov         edx,dword ptr [eax]
 004A079B    call        dword ptr [edx+18]
 004A079E    ret
>004A079F    jmp         @HandleFinally
>004A07A4    jmp         004A0794
 004A07A6    cmp         byte ptr [ebp-5],0
>004A07AA    jle         004A07B4
 004A07AC    mov         eax,dword ptr [ebp-4]
 004A07AF    call        @ClassDestroy
 004A07B4    pop         ecx
 004A07B5    pop         ecx
 004A07B6    pop         ebp
 004A07B7    ret
*}
end;

//004A07B8
procedure sub_004A07B8;
begin
{*
 004A07B8    push        ebp
 004A07B9    mov         ebp,esp
 004A07BB    push        ecx
 004A07BC    push        ebx
 004A07BD    push        esi
 004A07BE    push        edi
 004A07BF    mov         dword ptr [ebp-4],eax
 004A07C2    mov         eax,dword ptr [ebp-4]
 004A07C5    cmp         word ptr [eax+52],0;TDataModule.?f52:word
>004A07CA    je          004A080F
 004A07CC    xor         eax,eax
 004A07CE    push        ebp
 004A07CF    push        4A07F0
 004A07D4    push        dword ptr fs:[eax]
 004A07D7    mov         dword ptr fs:[eax],esp
 004A07DA    mov         ebx,dword ptr [ebp-4]
 004A07DD    mov         edx,dword ptr [ebp-4]
 004A07E0    mov         eax,dword ptr [ebx+54];TDataModule.?f54:dword
 004A07E3    call        dword ptr [ebx+50];TDataModule.FOnCreate
 004A07E6    xor         eax,eax
 004A07E8    pop         edx
 004A07E9    pop         ecx
 004A07EA    pop         ecx
 004A07EB    mov         dword ptr fs:[eax],edx
>004A07EE    jmp         004A080F
>004A07F0    jmp         @HandleAnyException
 004A07F5    mov         eax,dword ptr [ebp-4]
 004A07F8    mov         si,0FFEF
 004A07FC    call        @CallDynaInst;TDataModule.HandleCreateException
 004A0801    test        al,al
>004A0803    jne         004A080A
 004A0805    call        @RaiseAgain
 004A080A    call        @DoneExcept
 004A080F    pop         edi
 004A0810    pop         esi
 004A0811    pop         ebx
 004A0812    pop         ecx
 004A0813    pop         ebp
 004A0814    ret
*}
end;

//004A0818
procedure sub_004A0818;
begin
{*
 004A0818    push        ebp
 004A0819    mov         ebp,esp
 004A081B    push        ecx
 004A081C    push        ebx
 004A081D    push        esi
 004A081E    push        edi
 004A081F    mov         dword ptr [ebp-4],eax
 004A0822    mov         eax,dword ptr [ebp-4]
 004A0825    cmp         word ptr [eax+5A],0;TDataModule.?f5A:word
>004A082A    je          004A0873
 004A082C    xor         eax,eax
 004A082E    push        ebp
 004A082F    push        4A0850
 004A0834    push        dword ptr fs:[eax]
 004A0837    mov         dword ptr fs:[eax],esp
 004A083A    mov         ebx,dword ptr [ebp-4]
 004A083D    mov         edx,dword ptr [ebp-4]
 004A0840    mov         eax,dword ptr [ebx+5C];TDataModule.?f5C:dword
 004A0843    call        dword ptr [ebx+58];TDataModule.FOnDestroy
 004A0846    xor         eax,eax
 004A0848    pop         edx
 004A0849    pop         ecx
 004A084A    pop         ecx
 004A084B    mov         dword ptr fs:[eax],edx
>004A084E    jmp         004A0873
>004A0850    jmp         @HandleAnyException
 004A0855    cmp         word ptr ds:[7A05E2],0;gvar_007A05E2
>004A085D    je          004A086E
 004A085F    mov         edx,dword ptr [ebp-4]
 004A0862    mov         eax,dword ptr ds:[7A05E4];0x0 gvar_007A05E4
 004A0868    call        dword ptr ds:[7A05E0]
 004A086E    call        @DoneExcept
 004A0873    pop         edi
 004A0874    pop         esi
 004A0875    pop         ebx
 004A0876    pop         ecx
 004A0877    pop         ebp
 004A0878    ret
*}
end;

//004A087C
function DoWriteWidth:Boolean;
begin
{*
 004A087C    push        ebp
 004A087D    mov         ebp,esp
 004A087F    mov         al,1
 004A0881    mov         edx,dword ptr [ebp+8]
 004A0884    cmp         dword ptr [edx-4],0
>004A0888    je          004A089F
 004A088A    mov         eax,dword ptr [ebp+8]
 004A088D    mov         eax,dword ptr [eax-8]
 004A0890    mov         eax,dword ptr [eax+40]
 004A0893    mov         edx,dword ptr [ebp+8]
 004A0896    mov         edx,dword ptr [edx-4]
 004A0899    cmp         eax,dword ptr [edx+40]
 004A089C    setne       al
 004A089F    pop         ebp
 004A08A0    ret
*}
end;

//004A08A4
function DoWriteHorizontalOffset:Boolean;
begin
{*
 004A08A4    push        ebp
 004A08A5    mov         ebp,esp
 004A08A7    mov         eax,dword ptr [ebp+8]
 004A08AA    cmp         dword ptr [eax-4],0
>004A08AE    je          004A08C7
 004A08B0    mov         eax,dword ptr [ebp+8]
 004A08B3    mov         eax,dword ptr [eax-8]
 004A08B6    mov         eax,dword ptr [eax+48]
 004A08B9    mov         edx,dword ptr [ebp+8]
 004A08BC    mov         edx,dword ptr [edx-4]
 004A08BF    cmp         eax,dword ptr [edx+48]
 004A08C2    setne       al
 004A08C5    pop         ebp
 004A08C6    ret
 004A08C7    mov         eax,dword ptr [ebp+8]
 004A08CA    mov         eax,dword ptr [eax-8]
 004A08CD    cmp         dword ptr [eax+48],0
 004A08D1    setne       al
 004A08D4    pop         ebp
 004A08D5    ret
*}
end;

//004A08D8
function DoWriteVerticalOffset:Boolean;
begin
{*
 004A08D8    push        ebp
 004A08D9    mov         ebp,esp
 004A08DB    mov         eax,dword ptr [ebp+8]
 004A08DE    cmp         dword ptr [eax-4],0
>004A08E2    je          004A08FB
 004A08E4    mov         eax,dword ptr [ebp+8]
 004A08E7    mov         eax,dword ptr [eax-8]
 004A08EA    mov         eax,dword ptr [eax+4C]
 004A08ED    mov         edx,dword ptr [ebp+8]
 004A08F0    mov         edx,dword ptr [edx-4]
 004A08F3    cmp         eax,dword ptr [edx+4C]
 004A08F6    setne       al
 004A08F9    pop         ebp
 004A08FA    ret
 004A08FB    mov         eax,dword ptr [ebp+8]
 004A08FE    mov         eax,dword ptr [eax-8]
 004A0901    cmp         dword ptr [eax+4C],0
 004A0905    setne       al
 004A0908    pop         ebp
 004A0909    ret
*}
end;

//004A090C
function DoWriteHeight:Boolean;
begin
{*
 004A090C    push        ebp
 004A090D    mov         ebp,esp
 004A090F    mov         al,1
 004A0911    mov         edx,dword ptr [ebp+8]
 004A0914    cmp         dword ptr [edx-4],0
>004A0918    je          004A092F
 004A091A    mov         eax,dword ptr [ebp+8]
 004A091D    mov         eax,dword ptr [eax-8]
 004A0920    mov         eax,dword ptr [eax+44]
 004A0923    mov         edx,dword ptr [ebp+8]
 004A0926    mov         edx,dword ptr [edx-4]
 004A0929    cmp         eax,dword ptr [edx+44]
 004A092C    setne       al
 004A092F    pop         ebp
 004A0930    ret
*}
end;

//004A0934
procedure TDataModule.DefineProperties(Filer:TFiler);
begin
{*
 004A0934    push        ebp
 004A0935    mov         ebp,esp
 004A0937    add         esp,0FFFFFFF8
 004A093A    push        ebx
 004A093B    push        esi
 004A093C    mov         ebx,edx
 004A093E    mov         dword ptr [ebp-8],eax
 004A0941    mov         edx,ebx
 004A0943    mov         eax,dword ptr [ebp-8]
 004A0946    call        TComponent.DefineProperties
 004A094B    mov         eax,dword ptr [ebx+20]
 004A094E    mov         dword ptr [ebp-4],eax
 004A0951    mov         eax,dword ptr [ebp-8]
 004A0954    push        eax
 004A0955    push        4A0B60;TDataModule.ReadHeight
 004A095A    mov         eax,dword ptr [ebp-8]
 004A095D    push        eax
 004A095E    push        4A0B98;TDataModule.WriteHeight
 004A0963    push        ebp
 004A0964    call        DoWriteHeight
 004A0969    pop         ecx
 004A096A    mov         ecx,eax
 004A096C    mov         edx,4A0A00;'Height'
 004A0971    mov         eax,ebx
 004A0973    mov         esi,dword ptr [eax]
 004A0975    call        dword ptr [esi+4]
 004A0978    mov         eax,dword ptr [ebp-8]
 004A097B    push        eax
 004A097C    push        4A0B38;TDataModule.ReadHorizontalOffset
 004A0981    mov         eax,dword ptr [ebp-8]
 004A0984    push        eax
 004A0985    push        4A0B80;TDataModule.WriteHorizontalOffset
 004A098A    push        ebp
 004A098B    call        DoWriteHorizontalOffset
 004A0990    pop         ecx
 004A0991    mov         ecx,eax
 004A0993    mov         edx,4A0A1C;'HorizontalOffset'
 004A0998    mov         eax,ebx
 004A099A    mov         esi,dword ptr [eax]
 004A099C    call        dword ptr [esi+4]
 004A099F    mov         eax,dword ptr [ebp-8]
 004A09A2    push        eax
 004A09A3    push        4A0B4C;TDataModule.ReadVerticalOffset
 004A09A8    mov         eax,dword ptr [ebp-8]
 004A09AB    push        eax
 004A09AC    push        4A0B8C;TDataModule.WriteVerticalOffset
 004A09B1    push        ebp
 004A09B2    call        DoWriteVerticalOffset
 004A09B7    pop         ecx
 004A09B8    mov         ecx,eax
 004A09BA    mov         edx,4A0A4C;'VerticalOffset'
 004A09BF    mov         eax,ebx
 004A09C1    mov         esi,dword ptr [eax]
 004A09C3    call        dword ptr [esi+4]
 004A09C6    mov         eax,dword ptr [ebp-8]
 004A09C9    push        eax
 004A09CA    push        4A0B24;TDataModule.ReadWidth
 004A09CF    mov         eax,dword ptr [ebp-8]
 004A09D2    push        eax
 004A09D3    push        4A0B74;TDataModule.WriteWidth
 004A09D8    push        ebp
 004A09D9    call        DoWriteWidth
 004A09DE    pop         ecx
 004A09DF    mov         ecx,eax
 004A09E1    mov         edx,4A0A78;'Width'
 004A09E6    mov         eax,ebx
 004A09E8    mov         ebx,dword ptr [eax]
 004A09EA    call        dword ptr [ebx+4]
 004A09ED    pop         esi
 004A09EE    pop         ebx
 004A09EF    pop         ecx
 004A09F0    pop         ecx
 004A09F1    pop         ebp
 004A09F2    ret
*}
end;

//004A0A84
{*procedure TDataModule.sub_0049EC90(?:?; ?:?; ?:?);
begin
 004A0A84    push        ebp
 004A0A85    mov         ebp,esp
 004A0A87    add         esp,0FFFFFFF8
 004A0A8A    push        ebx
 004A0A8B    push        esi
 004A0A8C    push        edi
 004A0A8D    mov         esi,edx
 004A0A8F    mov         ebx,eax
 004A0A91    push        dword ptr [ebp+0C]
 004A0A94    push        dword ptr [ebp+8]
 004A0A97    mov         edx,esi
 004A0A99    mov         eax,ebx
 004A0A9B    call        TComponent.sub_0049EC90
 004A0AA0    cmp         ebx,esi
>004A0AA2    jne         004A0AE6
 004A0AA4    mov         eax,ebx
 004A0AA6    call        TComponent.GetComponentCount
 004A0AAB    dec         eax
 004A0AAC    test        eax,eax
>004A0AAE    jl          004A0AE6
 004A0AB0    inc         eax
 004A0AB1    mov         dword ptr [ebp-8],eax
 004A0AB4    mov         dword ptr [ebp-4],0
 004A0ABB    mov         edx,dword ptr [ebp-4]
 004A0ABE    mov         eax,ebx
 004A0AC0    call        TComponent.GetComponent
 004A0AC5    mov         edi,eax
 004A0AC7    mov         eax,edi
 004A0AC9    mov         si,0FFF0
 004A0ACD    call        @CallDynaInst;TComponent.sub_0049EC8C
 004A0AD2    test        al,al
>004A0AD4    jne         004A0ADE
 004A0AD6    mov         edx,edi
 004A0AD8    mov         eax,dword ptr [ebp+0C]
 004A0ADB    call        dword ptr [ebp+8]
 004A0ADE    inc         dword ptr [ebp-4]
 004A0AE1    dec         dword ptr [ebp-8]
>004A0AE4    jne         004A0ABB
 004A0AE6    pop         edi
 004A0AE7    pop         esi
 004A0AE8    pop         ebx
 004A0AE9    pop         ecx
 004A0AEA    pop         ecx
 004A0AEB    pop         ebp
 004A0AEC    ret         8
end;*}

//004A0AF0
procedure TDataModule.HandleCreateException;
begin
{*
 004A0AF0    cmp         word ptr ds:[7A05E2],0;gvar_007A05E2
>004A0AF8    je          004A0B0B
 004A0AFA    mov         edx,eax
 004A0AFC    mov         eax,dword ptr ds:[7A05E4];gvar_007A05E4
 004A0B02    call        dword ptr ds:[7A05E0]
 004A0B08    mov         al,1
 004A0B0A    ret
 004A0B0B    xor         eax,eax
 004A0B0D    ret
*}
end;

//004A0B10
procedure TDataModule.ReadState(Reader:TReader);
begin
{*
 004A0B10    movzx       ecx,byte ptr ds:[7C7C51];gvar_007C7C51
 004A0B17    xor         cl,1
 004A0B1A    mov         byte ptr [eax+60],cl;TDataModule.FOldCreateOrder:Boolean
 004A0B1D    call        TComponent.ReadState
 004A0B22    ret
*}
end;

//004A0B24
procedure TDataModule.ReadWidth(Reader:TReader);
begin
{*
 004A0B24    push        ebx
 004A0B25    push        esi
 004A0B26    mov         esi,edx
 004A0B28    mov         ebx,eax
 004A0B2A    mov         eax,esi
 004A0B2C    call        TReader.ReadInteger
 004A0B31    mov         dword ptr [ebx+40],eax
 004A0B34    pop         esi
 004A0B35    pop         ebx
 004A0B36    ret
*}
end;

//004A0B38
procedure TDataModule.ReadHorizontalOffset(Reader:TReader);
begin
{*
 004A0B38    push        ebx
 004A0B39    push        esi
 004A0B3A    mov         esi,edx
 004A0B3C    mov         ebx,eax
 004A0B3E    mov         eax,esi
 004A0B40    call        TReader.ReadInteger
 004A0B45    mov         dword ptr [ebx+48],eax
 004A0B48    pop         esi
 004A0B49    pop         ebx
 004A0B4A    ret
*}
end;

//004A0B4C
procedure TDataModule.ReadVerticalOffset(Reader:TReader);
begin
{*
 004A0B4C    push        ebx
 004A0B4D    push        esi
 004A0B4E    mov         esi,edx
 004A0B50    mov         ebx,eax
 004A0B52    mov         eax,esi
 004A0B54    call        TReader.ReadInteger
 004A0B59    mov         dword ptr [ebx+4C],eax
 004A0B5C    pop         esi
 004A0B5D    pop         ebx
 004A0B5E    ret
*}
end;

//004A0B60
procedure TDataModule.ReadHeight(Reader:TReader);
begin
{*
 004A0B60    push        ebx
 004A0B61    push        esi
 004A0B62    mov         esi,edx
 004A0B64    mov         ebx,eax
 004A0B66    mov         eax,esi
 004A0B68    call        TReader.ReadInteger
 004A0B6D    mov         dword ptr [ebx+44],eax
 004A0B70    pop         esi
 004A0B71    pop         ebx
 004A0B72    ret
*}
end;

//004A0B74
procedure TDataModule.WriteWidth(Writer:TWriter);
begin
{*
 004A0B74    mov         eax,dword ptr [eax+40]
 004A0B77    xchg        eax,edx
 004A0B78    call        TWriter.WriteInteger
 004A0B7D    ret
*}
end;

//004A0B80
procedure TDataModule.WriteHorizontalOffset(Writer:TWriter);
begin
{*
 004A0B80    mov         eax,dword ptr [eax+48]
 004A0B83    xchg        eax,edx
 004A0B84    call        TWriter.WriteInteger
 004A0B89    ret
*}
end;

//004A0B8C
procedure TDataModule.WriteVerticalOffset(Writer:TWriter);
begin
{*
 004A0B8C    mov         eax,dword ptr [eax+4C]
 004A0B8F    xchg        eax,edx
 004A0B90    call        TWriter.WriteInteger
 004A0B95    ret
*}
end;

//004A0B98
procedure TDataModule.WriteHeight(Writer:TWriter);
begin
{*
 004A0B98    mov         eax,dword ptr [eax+44]
 004A0B9B    xchg        eax,edx
 004A0B9C    call        TWriter.WriteInteger
 004A0BA1    ret
*}
end;

//004A0BA4
function StdWndProc(Window:Windows.HWND; Message:Windows.UINT; WParam:Windows.WPARAM; LParam:Windows.WPARAM):LRESULT; stdcall;
begin
{*
 004A0BA4    push        ebp
 004A0BA5    mov         ebp,esp
 004A0BA7    xor         eax,eax
 004A0BA9    push        eax
 004A0BAA    push        dword ptr [ebp+14]
 004A0BAD    push        dword ptr [ebp+10]
 004A0BB0    push        dword ptr [ebp+0C]
 004A0BB3    mov         edx,esp
 004A0BB5    mov         eax,dword ptr [ecx+4]
 004A0BB8    call        dword ptr [ecx]
 004A0BBA    add         esp,0C
 004A0BBD    pop         eax
 004A0BBE    pop         ebp
 004A0BBF    ret         10
*}
end;

//004A0BC4
function CalcJmpOffset(Src:Pointer; Dest:Pointer):LongInt;
begin
{*
 004A0BC4    add         eax,5
 004A0BC7    sub         edx,eax
 004A0BC9    mov         eax,edx
 004A0BCB    ret
*}
end;

//004A0BCC
function MakeObjectInstance(AMethod:TWndMethod):Pointer;
begin
{*
 004A0BCC    push        ebp
 004A0BCD    mov         ebp,esp
 004A0BCF    push        ebx
 004A0BD0    push        esi
 004A0BD1    push        edi
 004A0BD2    mov         edi,7CA3F0
 004A0BD7    cmp         dword ptr [edi],0
>004A0BDA    jne         004A0C48
 004A0BDC    push        40
 004A0BDE    push        1000
 004A0BE3    push        1000
 004A0BE8    push        0
 004A0BEA    call        kernel32.VirtualAlloc
 004A0BEF    mov         esi,eax
 004A0BF1    mov         eax,[007CA3EC]
 004A0BF6    mov         dword ptr [esi],eax
 004A0BF8    lea         edx,[esi+4]
 004A0BFB    mov         eax,7A06AC
 004A0C00    mov         ecx,2
 004A0C05    call        Move
 004A0C0A    mov         edx,4A0BA4;StdWndProc:Windows.LRESULT
 004A0C0F    lea         eax,[esi+5]
 004A0C12    call        CalcJmpOffset
 004A0C17    mov         dword ptr [esi+6],eax
 004A0C1A    lea         ebx,[esi+0A]
 004A0C1D    mov         byte ptr [ebx],0E8
 004A0C20    lea         edx,[esi+4]
 004A0C23    mov         eax,ebx
 004A0C25    call        CalcJmpOffset
 004A0C2A    mov         dword ptr [ebx+1],eax
 004A0C2D    mov         eax,dword ptr [edi]
 004A0C2F    mov         dword ptr [ebx+5],eax
 004A0C32    mov         dword ptr [edi],ebx
 004A0C34    add         ebx,0D
 004A0C37    mov         eax,ebx
 004A0C39    sub         eax,esi
 004A0C3B    cmp         eax,0FFC
>004A0C40    jl          004A0C1D
 004A0C42    mov         dword ptr ds:[7CA3EC],esi
 004A0C48    mov         eax,dword ptr [edi]
 004A0C4A    mov         ebx,dword ptr [edi]
 004A0C4C    mov         edx,dword ptr [ebx+5]
 004A0C4F    mov         dword ptr [edi],edx
 004A0C51    mov         edx,dword ptr [ebp+8]
 004A0C54    mov         dword ptr [ebx+5],edx
 004A0C57    mov         edx,dword ptr [ebp+0C]
 004A0C5A    mov         dword ptr [ebx+9],edx
 004A0C5D    pop         edi
 004A0C5E    pop         esi
 004A0C5F    pop         ebx
 004A0C60    pop         ebp
 004A0C61    ret         8
*}
end;

//004A0C64
procedure FreeObjectInstance(ObjectInstance:Pointer);
begin
{*
 004A0C64    test        eax,eax
>004A0C66    je          004A0C76
 004A0C68    mov         edx,dword ptr ds:[7CA3F0]
 004A0C6E    mov         dword ptr [eax+5],edx
 004A0C71    mov         [007CA3F0],eax
 004A0C76    ret
*}
end;

//004A0C78
procedure CleanupInstFreeList(BlockStart:Types.PByte; BlockEnd:Types.PByte);
begin
{*
 004A0C78    push        esi
 004A0C79    push        edi
 004A0C7A    push        ebp
 004A0C7B    xor         esi,esi
 004A0C7D    mov         ecx,dword ptr ds:[7CA3F0]
 004A0C83    test        ecx,ecx
>004A0C85    je          004A0CAD
 004A0C87    mov         edi,dword ptr [ecx+5]
 004A0C8A    mov         ebp,ecx
 004A0C8C    cmp         eax,ebp
>004A0C8E    ja          004A0CA5
 004A0C90    cmp         edx,ebp
>004A0C92    jb          004A0CA5
 004A0C94    mov         ecx,esi
 004A0C96    test        esi,esi
>004A0C98    jne         004A0CA2
 004A0C9A    mov         dword ptr ds:[7CA3F0],edi
>004A0CA0    jmp         004A0CA5
 004A0CA2    mov         dword ptr [esi+5],edi
 004A0CA5    mov         esi,ecx
 004A0CA7    mov         ecx,edi
 004A0CA9    test        ecx,ecx
>004A0CAB    jne         004A0C87
 004A0CAD    pop         ebp
 004A0CAE    pop         edi
 004A0CAF    pop         esi
 004A0CB0    ret
*}
end;

//004A0CB4
function GetFreeInstBlockItemCount(Item:PObjectInstance; Block:PInstanceBlock):Integer;
begin
{*
 004A0CB4    push        ebx
 004A0CB5    push        esi
 004A0CB6    xor         ebx,ebx
 004A0CB8    test        eax,eax
>004A0CBA    je          004A0CDC
 004A0CBC    mov         ecx,139
 004A0CC1    imul        esi,ecx,0D
 004A0CC4    lea         esi,[edx+esi+0A]
 004A0CC8    cmp         eax,esi
>004A0CCA    jne         004A0CCF
 004A0CCC    inc         ebx
>004A0CCD    jmp         004A0CD5
 004A0CCF    dec         ecx
 004A0CD0    cmp         ecx,0FFFFFFFF
>004A0CD3    jne         004A0CC1
 004A0CD5    mov         eax,dword ptr [eax+5]
 004A0CD8    test        eax,eax
>004A0CDA    jne         004A0CBC
 004A0CDC    mov         eax,ebx
 004A0CDE    pop         esi
 004A0CDF    pop         ebx
 004A0CE0    ret
*}
end;

//004A0CE4
procedure ReleaseObjectInstanceBlocks;
begin
{*
 004A0CE4    push        ebx
 004A0CE5    push        esi
 004A0CE6    push        edi
 004A0CE7    push        ebp
 004A0CE8    mov         ebx,dword ptr ds:[7CA3EC]
 004A0CEE    xor         esi,esi
 004A0CF0    test        ebx,ebx
>004A0CF2    je          004A0D41
 004A0CF4    mov         edi,dword ptr [ebx]
 004A0CF6    mov         edx,ebx
 004A0CF8    mov         eax,[007CA3F0]
 004A0CFD    call        GetFreeInstBlockItemCount
 004A0D02    mov         ebp,eax
 004A0D04    cmp         ebp,13A
>004A0D0A    jne         004A0D39
 004A0D0C    mov         edx,ebx
 004A0D0E    add         edx,0FFC
 004A0D14    dec         edx
 004A0D15    mov         eax,ebx
 004A0D17    call        CleanupInstFreeList
 004A0D1C    push        8000
 004A0D21    push        0
 004A0D23    push        ebx
 004A0D24    call        kernel32.VirtualFree
 004A0D29    mov         ebx,esi
 004A0D2B    test        esi,esi
>004A0D2D    jne         004A0D37
 004A0D2F    mov         dword ptr ds:[7CA3EC],edi
>004A0D35    jmp         004A0D39
 004A0D37    mov         dword ptr [esi],edi
 004A0D39    mov         esi,ebx
 004A0D3B    mov         ebx,edi
 004A0D3D    test        ebx,ebx
>004A0D3F    jne         004A0CF4
 004A0D41    pop         ebp
 004A0D42    pop         edi
 004A0D43    pop         esi
 004A0D44    pop         ebx
 004A0D45    ret
*}
end;

//004A0D64
function AllocateHWnd(AMethod:TWndMethod):HWND;
begin
{*
 004A0D64    push        ebp
 004A0D65    mov         ebp,esp
 004A0D67    add         esp,0FFFFFFD8
 004A0D6A    push        ebx
 004A0D6B    mov         eax,[007C7C54];gvar_007C7C54
 004A0D70    mov         [007A06C0],eax
 004A0D75    lea         eax,[ebp-28]
 004A0D78    push        eax
 004A0D79    mov         eax,[007A06D4]
 004A0D7E    push        eax
 004A0D7F    mov         eax,[007C7C54];gvar_007C7C54
 004A0D84    push        eax
 004A0D85    call        user32.GetClassInfoW
 004A0D8A    cmp         eax,1
 004A0D8D    sbb         eax,eax
 004A0D8F    inc         eax
 004A0D90    test        al,al
>004A0D92    je          004A0D9E
 004A0D94    mov         edx,410E98;user32.DefWindowProcW:IntPtr
 004A0D99    cmp         edx,dword ptr [ebp-24]
>004A0D9C    je          004A0DBD
 004A0D9E    test        al,al
>004A0DA0    je          004A0DB3
 004A0DA2    mov         eax,[007C7C54];gvar_007C7C54
 004A0DA7    push        eax
 004A0DA8    mov         eax,[007A06D4]
 004A0DAD    push        eax
 004A0DAE    call        user32.UnregisterClassW
 004A0DB3    push        7A06B0
 004A0DB8    call        user32.RegisterClassW
 004A0DBD    push        80000000
 004A0DC2    push        0
 004A0DC4    push        0
 004A0DC6    push        0
 004A0DC8    push        0
 004A0DCA    push        0
 004A0DCC    push        0
 004A0DCE    mov         eax,[007C7C54];gvar_007C7C54
 004A0DD3    push        eax
 004A0DD4    push        0
 004A0DD6    mov         ecx,4A0E14
 004A0DDB    mov         edx,dword ptr ds:[7A06D4]
 004A0DE1    mov         eax,80
 004A0DE6    call        CreateWindowEx
 004A0DEB    mov         ebx,eax
 004A0DED    cmp         word ptr [ebp+0A],0
>004A0DF2    je          004A0E08
 004A0DF4    push        dword ptr [ebp+0C]
 004A0DF7    push        dword ptr [ebp+8]
 004A0DFA    call        MakeObjectInstance
 004A0DFF    push        eax
 004A0E00    push        0FC
 004A0E02    push        ebx
 004A0E03    call        user32.SetWindowLongW
 004A0E08    mov         eax,ebx
 004A0E0A    pop         ebx
 004A0E0B    mov         esp,ebp
 004A0E0D    pop         ebp
 004A0E0E    ret         8
*}
end;

//004A0E18
procedure DeallocateHWnd(Wnd:Windows.HWND);
begin
{*
 004A0E18    push        ebx
 004A0E19    push        esi
 004A0E1A    mov         esi,eax
 004A0E1C    push        0FC
 004A0E1E    push        esi
 004A0E1F    call        user32.GetWindowLongW
 004A0E24    mov         ebx,eax
 004A0E26    push        esi
 004A0E27    call        user32.DestroyWindow
 004A0E2C    cmp         ebx,410E98;user32.DefWindowProcW:IntPtr
>004A0E32    je          004A0E3B
 004A0E34    mov         eax,ebx
 004A0E36    call        FreeObjectInstance
 004A0E3B    pop         esi
 004A0E3C    pop         ebx
 004A0E3D    ret
*}
end;

Initialization
//0079C6DC
{*
 0079C6DC    sub         dword ptr ds:[7CA3C8],1
>0079C6E3    jae         0079C6F6
 0079C6E5    mov         dl,1
 0079C6E7    mov         eax,[0046F9A0];TStringList
 0079C6EC    call        TStringList.Create;TStringList.Create
 0079C6F1    mov         [007CA3C4],eax;gvar_007CA3C4:TStringList
 0079C6F6    ret
*}
Finalization
end.