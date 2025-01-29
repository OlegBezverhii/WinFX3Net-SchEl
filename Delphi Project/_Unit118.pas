//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit118;

interface

uses
  SysUtils, Classes, FXCommMgr, System.Generics.Collections, System.Generics.Collections, System.Rtti, System.Generics.Defaults;

type
  TFXCmndMsg = TFXCmndMsg = record//size=3
msgCode:Byte;//f0
par:?;//f1
end;;
  TDataRec = TDataRec = record//size=104
Next:TDataPtr;//f0
DLen:Byte;//f4
Data:TMsgData;//f5
end;;
  TCommState = (WAITING_FOR_ACTION, OPENING_SERVER, CLOSING_SERVER, SENDING_CONFIG_INFO, SENDING_PANEL_DATA, SENDING_CG_DATA, SENDING_IO_DATA, SENDING_TEXT_DATA, SENDING_ADDRESS_DATA, SENDING_DATA, SENDING_CONCLUDED, RECEIVING_CONFIG_INFO, RECEIVING_PANEL_DATA, RECEIVING_CG_DATA, RECEIVING_IO_DATA, RECEIVING_TEXT_DATA, RECEIVING_ADDRESS_DATA, RECEIVING_DATA, RECEIVING_CONCLUDED, SENDING_COMMAND_RESTART, PREPARING_PANEL_FOR_CONFIG, SESSION_ENDED);
  TAcEvent = (AC_START, AC_SETTED, AC_PREPARED, AC_CONFIGURED, AC_RESTARTED, AC_NOTIFICATION, AC_ERROR);
  ActionsToDo = (NOTHING, SEND_DATA, READ_DATA, SEND_COMMAND_RESTART, PREPARING_FOR_CONFIG);
  TOnAcControl = procedure(Event:TAcEvent; msg:string) of object;;
  TOnCommState = procedure(Status:TCommState; Section:Integer; msg:string) of object;;
  TCommTask = class(TObject)
  published
    procedure ExecuteTask;//0074BFDC
    destructor Destroy();//0074AAC0
    constructor Create(CommManager:TCommManager; DataSection:Integer; Action:ActionsToDo);//0074AA88
  public
    tdp:TDataPtr;//f4
    ntp:TDataPtr;//f8
    FCommManager:TCommManager;//fC
    FDataSection:Integer;//f10
    FActionToDo:ActionsToDo;//f14
  end;
  TCommManager = class(TObject)
  published
    procedure Request(MC_Type:Integer);//0074F330
    procedure Prepare(Password:Word);//0074F220
    procedure Transmit(MC_Type:Integer);//0074F5D8
    procedure WndProc(var msg:TMessage);//0074FBD0
    procedure Restart(MC_Type:Integer);//0074F98C
    destructor Destroy();//0074C050
    constructor Create;//0074BFFC
    function CommDllOk:Boolean;//0074C0EC
    procedure SetComm(AutoMode:Integer; CommPort:Integer; BaudRate:Integer);//0074EFA4
    procedure Cancel;//0074F204
  public
    handle:HWND;//f4
    hDll:NativeUInt;//f8
    tdp:TDataPtr;//fC
    ntp:TDataPtr;//f10
    ActionToDo:ActionsToDo;//f14
    CommState:TCommState;//f15
    LastCommand:TFXCmndMsg;//f16
    CommTasks:TObjectList<FXCommMgr.TCommTask>;//f1C
    CommTask:TCommTask;//f20
    CommTaskIndex:Integer;//f24
    DllPath:?;//f28
    DllPathLen:Integer;//f234
    DllError:Integer;//f238
    OnAcControl:TOnAcControl;//f240
    f242:word;//f242
    f244:dword;//f244
    OnCommState:TOnCommState;//f248
  end;
  TArray<FXCommMgr.TCommTask> = array of TCommTask;
//elSize = 4;
  TEnumerator<FXCommMgr.TCommTask> = class(TObject)
  published
    function TCommTask>.MoveNext:Boolean;//0074FDE8
  public
    procedure v0; virtual; abstract;//v0//00405554
    procedure v4; virtual; abstract;//v4//00405554
  end;
  TEnumerable<FXCommMgr.TCommTask> = class(TObject)
  published
    //procedure TCommTask>.ToArray(?:?);//0074FD34
    function TCommTask>.GetEnumerator:TEnumerator<FXCommMgr.TCommTask>;//0074FD2C
    destructor TCommTask>.Destroy();//0074FD08
  public
    destructor TCommTask>.Destroy(); virtual;//0074FD08
    procedure v0; virtual; abstract;//v0//00405554
    //procedure TCommTask>.ToArray(?:?); virtual;//v4//0074FD34
  end;
  TList<FXCommMgr.TCommTask>.arrayofT = array of TCommTask;
//elSize = 4;
  TCollectionNotifyEvent<FXCommMgr.TCommTask> = procedure(Sender:TObject; const Item:TCommTask; Action:TCollectionNotification) of object;;
  TList<FXCommMgr.TCommTask>.TEnumerator = class(TEnumerator<FXCommMgr.TCommTask>)
  published
    function TCommTask>.TEnumerator.MoveNext:Boolean;//007500D0
    constructor sub_0075008C(AList:TList<FXCommMgr.TCommTask>);//0075008C
  public
    FList:TList<FXCommMgr.TCommTask>;//f4
    FIndex:Integer;//f8
    procedure v0; virtual;//v0//0075007C
    procedure v4; virtual;//v4//00750084
  end;
  TList<FXCommMgr.TCommTask> = class(TEnumerable<FXCommMgr.TCommTask>)
  published
    procedure TCommTask>.Add(Value:TCommTask);//0075002C
    //procedure TCommTask>.Error(Msg:string; Data:NativeInt; ?:?);//0074FFF4
    procedure TCommTask>.GetEnumerator;//00750050
    //procedure TCommTask>.ToArray(?:?);//0075003C
    constructor sub_0074FEF8(AComparer:IComparer<FXCommMgr.TCommTask>);//0074FEF8
    constructor sub_0074FE80;//0074FE80
    destructor TCommTask>.Destroy();//0074FFA8
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
  public
    FListHelper:TListHelper;//f8
    FItems:TList<FXCommMgr.TCommTask>.arrayofT;//f20
    FComparer:IComparer<FXCommMgr.TCommTask>;//f24
    FOnNotify:TCollectionNotifyEvent<FXCommMgr.TCommTask>;//f28
    destructor TCommTask>.Destroy(); virtual;//0074FFA8
    procedure v0; virtual;//v0//0074FE60
    //procedure TCommTask>.ToArray(?:?); virtual;//v4//0075003C
    //procedure v8(?:?); virtual;//v8//0074FE68
    //procedure TCommTask>.Error(Msg:string; Data:NativeInt; ?:?); virtual;//vC//0074FFF4
  end;
  TObjectList<FXCommMgr.TCommTask> = class(TList<FXCommMgr.TCommTask>)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor sub_0075011C(AOwnsObjects:Boolean);//0075011C
  public
    FOwnsObjects:Boolean;//f30
    //procedure v8(?:?; ?:?); virtual;//v8//007500F0
  end;
  TConnectionError = TConnectionError = record//size=8
f4:string;//f4
end;
Err:Boolean;//f0
Msg:string;//f4
end;
//Methods:
SetError(AErr:Boolean;AMsg:string);//0074CDE0;
    //procedure sub_0074AAEC(?:?);//0074AAEC
    procedure sub_0074AB30(?:TCommTask);//0074AB30
    //function sub_0074AB5C(?:?):?;//0074AB5C
    //function sub_0074ACE0(?:?):?;//0074ACE0
    //procedure sub_0074AE64(?:?; ?:?; ?:?);//0074AE64
    //function sub_0074AEC0(?:?):?;//0074AEC0
    //function sub_0074B1A0(?:?):?;//0074B1A0
    //function sub_0074B3CC(?:?):?;//0074B3CC
    //function sub_0074B674(?:?):?;//0074B674
    //function sub_0074B828(?:TCommTask; ?:Integer):?;//0074B828
    procedure sub_0074B9C0(?:TCommTask; ?:TMessage);//0074B9C0
    //function sub_0074BB18(?:?; ?:?):?;//0074BB18
    //function sub_0074BB74(?:?; ?:?):?;//0074BB74
    //function sub_0074BC30(?:?; ?:?):?;//0074BC30
    //function sub_0074BC64(?:?; ?:?):?;//0074BC64
    //function sub_0074BCA0(?:?; ?:?):?;//0074BCA0
    //function sub_0074BCD4(?:?; ?:?):?;//0074BCD4
    procedure sub_0074BD10(?:TCommTask; ?:Integer);//0074BD10
    procedure sub_0074BDE0(?:TCommTask; ?:TMessage);//0074BDE0
    //procedure sub_0074C090(?:?);//0074C090
    procedure sub_0074C0E4;//0074C0E4
    //procedure sub_0074C3EC(?:?; ?:?);//0074C3EC
    //procedure sub_0074C440(?:?);//0074C440
    //procedure sub_0074C484(?:?);//0074C484
    //procedure sub_0074C4B0(?:TCommManager; ?:?; ?:UString);//0074C4B0
    procedure sub_0074C548(?:TCommManager);//0074C548
    //procedure sub_0074C644(?:?);//0074C644
    //procedure sub_0074C808(?:?);//0074C808
    //procedure sub_0074C8C8(?:?);//0074C8C8
    procedure sub_0074C9B0(?:TCommManager);//0074C9B0
    procedure sub_0074CA84(?:TCommManager);//0074CA84
    //function sub_0074CB24(?:?):?;//0074CB24
    //function sub_0074CBF4(?:?; ?:?):?;//0074CBF4
    procedure sub_0074CC18(?:TCommManager; ?:TMessage);//0074CC18
    //procedure sub_0074CDE0(?:Byte; ?:?; ?:?);//0074CDE0
    procedure sub_0074CE9C(?:TCommManager; ?:TMessage);//0074CE9C
    procedure sub_0074E620(?:TCommManager; ?:TMessage);//0074E620
    //procedure sub_0074E728(?:?);//0074E728
    procedure sub_0074EA04(?:TCommManager; ?:TMessage);//0074EA04
    procedure sub_0074EC94(?:TCommManager; ?:TMessage);//0074EC94

implementation

//0074AA88
constructor TCommTask.Create(CommManager:TCommManager; DataSection:Integer; Action:ActionsToDo);
begin
{*
 0074AA88    push        ebp
 0074AA89    mov         ebp,esp
 0074AA8B    test        dl,dl
>0074AA8D    je          0074AA97
 0074AA8F    add         esp,0FFFFFFF0
 0074AA92    call        @ClassCreate
 0074AA97    mov         dword ptr [eax+0C],ecx;TCommTask.FCommManager:TCommManager
 0074AA9A    movzx       ecx,byte ptr [ebp+0C]
 0074AA9E    mov         byte ptr [eax+14],cl;TCommTask.FActionToDo:ActionsToDo
 0074AAA1    mov         ecx,dword ptr [ebp+8]
 0074AAA4    mov         dword ptr [eax+10],ecx;TCommTask.FDataSection:Integer
 0074AAA7    test        dl,dl
>0074AAA9    je          0074AABA
 0074AAAB    call        @AfterConstruction
 0074AAB0    pop         dword ptr fs:[0]
 0074AAB7    add         esp,0C
 0074AABA    pop         ebp
 0074AABB    ret         8
*}
end;

//0074AAC0
destructor TCommTask.Destroy();
begin
{*
 0074AAC0    push        ebx
 0074AAC1    push        esi
 0074AAC2    call        @BeforeDestruction
 0074AAC7    mov         ebx,edx
 0074AAC9    mov         esi,eax
 0074AACB    mov         eax,esi
 0074AACD    call        0074AB30
 0074AAD2    mov         dl,0FC
 0074AAD4    and         dl,bl
 0074AAD6    mov         eax,esi
 0074AAD8    call        TObject.Destroy
 0074AADD    test        bl,bl
>0074AADF    jle         0074AAE8
 0074AAE1    mov         eax,esi
 0074AAE3    call        @ClassDestroy
 0074AAE8    pop         esi
 0074AAE9    pop         ebx
 0074AAEA    ret
*}
end;

//0074AAEC
{*procedure sub_0074AAEC(?:?);
begin
 0074AAEC    push        ebx
 0074AAED    push        esi
 0074AAEE    mov         ebx,eax
 0074AAF0    cmp         dword ptr [ebx+4],0
>0074AAF4    jne         0074AB11
 0074AAF6    mov         eax,104
 0074AAFB    call        AllocMem
 0074AB00    mov         esi,eax
 0074AB02    mov         dword ptr [ebx+4],esi
 0074AB05    mov         eax,esi
 0074AB07    mov         dword ptr [ebx+8],eax
 0074AB0A    xor         edx,edx
 0074AB0C    mov         dword ptr [eax],edx
 0074AB0E    pop         esi
 0074AB0F    pop         ebx
 0074AB10    ret
 0074AB11    mov         eax,104
 0074AB16    call        AllocMem
 0074AB1B    mov         esi,eax
 0074AB1D    mov         eax,dword ptr [ebx+8]
 0074AB20    mov         dword ptr [eax],esi
 0074AB22    mov         eax,esi
 0074AB24    mov         dword ptr [ebx+8],eax
 0074AB27    xor         edx,edx
 0074AB29    mov         dword ptr [eax],edx
 0074AB2B    pop         esi
 0074AB2C    pop         ebx
 0074AB2D    ret
end;*}

//0074AB30
procedure sub_0074AB30(?:TCommTask);
begin
{*
 0074AB30    push        ebx
 0074AB31    mov         ebx,eax
 0074AB33    xor         eax,eax
 0074AB35    mov         dword ptr [ebx+8],eax;TCommTask.ntp:TDataPtr
 0074AB38    mov         eax,dword ptr [ebx+4];TCommTask.tdp:TDataPtr
 0074AB3B    test        eax,eax
>0074AB3D    je          0074AB52
 0074AB3F    mov         eax,dword ptr [eax]
 0074AB41    mov         dword ptr [ebx+8],eax;TCommTask.ntp:TDataPtr
 0074AB44    mov         eax,dword ptr [ebx+4];TCommTask.tdp:TDataPtr
 0074AB47    call        @FreeMem
 0074AB4C    mov         eax,dword ptr [ebx+8];TCommTask.ntp:TDataPtr
 0074AB4F    mov         dword ptr [ebx+4],eax;TCommTask.tdp:TDataPtr
 0074AB52    cmp         dword ptr [ebx+8],0;TCommTask.ntp:TDataPtr
>0074AB56    jne         0074AB33
 0074AB58    pop         ebx
 0074AB59    ret
*}
end;

//0074AB5C
{*function sub_0074AB5C(?:?):?;
begin
 0074AB5C    push        ebp
 0074AB5D    mov         ebp,esp
 0074AB5F    add         esp,0FFFFFFF8
 0074AB62    push        ebx
 0074AB63    push        esi
 0074AB64    push        edi
 0074AB65    xor         edx,edx
 0074AB67    mov         dword ptr [ebp-8],edx
 0074AB6A    mov         ebx,eax
 0074AB6C    xor         eax,eax
 0074AB6E    push        ebp
 0074AB6F    push        74AC9C
 0074AB74    push        dword ptr fs:[eax]
 0074AB77    mov         dword ptr fs:[eax],esp
 0074AB7A    mov         word ptr [ebp-2],0
 0074AB80    xor         edx,edx
 0074AB82    push        ebp
 0074AB83    push        74AC0C
 0074AB88    push        dword ptr fs:[edx]
 0074AB8B    mov         dword ptr fs:[edx],esp
 0074AB8E    mov         eax,ebx
 0074AB90    call        0074AAEC
 0074AB95    mov         eax,dword ptr [ebx+8]
 0074AB98    mov         byte ptr [eax+5],21
 0074AB9C    lea         edx,[eax+4]
 0074AB9F    push        edx
 0074ABA0    add         eax,5
 0074ABA3    push        eax
 0074ABA4    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074ABA9    mov         eax,dword ptr [eax]
 0074ABAB    mov         eax,dword ptr [eax+8]
 0074ABAE    movzx       ecx,word ptr ds:[90369C];gvar_0090369C
 0074ABB5    mov         dl,1
 0074ABB7    call        TFXPCI.EncodeFXCIMsg
 0074ABBC    add         word ptr [ebp-2],1
>0074ABC1    jae         0074ABC8
 0074ABC3    call        @IntOver
 0074ABC8    mov         eax,ebx
 0074ABCA    call        0074AAEC
 0074ABCF    mov         eax,dword ptr [ebx+8]
 0074ABD2    mov         byte ptr [eax+5],21
 0074ABD6    lea         edx,[eax+4]
 0074ABD9    push        edx
 0074ABDA    add         eax,5
 0074ABDD    push        eax
 0074ABDE    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074ABE3    mov         eax,dword ptr [eax]
 0074ABE5    mov         eax,dword ptr [eax+8]
 0074ABE8    movzx       ecx,word ptr ds:[90369C];gvar_0090369C
 0074ABEF    mov         dl,2
 0074ABF1    call        TFXPCI.EncodeFXCIMsg
 0074ABF6    add         word ptr [ebp-2],1
>0074ABFB    jae         0074AC02
 0074ABFD    call        @IntOver
 0074AC02    xor         eax,eax
 0074AC04    pop         edx
 0074AC05    pop         ecx
 0074AC06    pop         ecx
 0074AC07    mov         dword ptr fs:[eax],edx
>0074AC0A    jmp         0074AC86
>0074AC0C    jmp         @HandleOnException
 0074AC11    dd          1
 0074AC15    dd          004174D0;Exception
 0074AC19    dd          0074AC1D
 0074AC1D    mov         ebx,eax
 0074AC1F    push        0
 0074AC21    mov         edx,dword ptr [ebx+4];Exception.FMessage:string
 0074AC24    lea         eax,[ebp-8]
 0074AC27    mov         ecx,dword ptr ds:[7C3ED4];^'
Partially transferred data is invalid!'
 0074AC2D    call        @UStrCat3
 0074AC32    mov         eax,dword ptr [ebp-8]
 0074AC35    movzx       ecx,word ptr ds:[74ACB0];0x4 gvar_0074ACB0
 0074AC3C    mov         dl,1
 0074AC3E    call        MessageDlg
 0074AC43    mov         eax,[00903690];gvar_00903690:TCommManager
 0074AC48    cmp         word ptr [eax+242],0
>0074AC50    je          0074AC6B
 0074AC52    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074AC58    mov         ecx,74ACC0;'Cannot continue'
 0074AC5D    mov         dl,6
 0074AC5F    mov         eax,dword ptr [ebx+244]
 0074AC65    call        dword ptr [ebx+240]
 0074AC6B    mov         eax,[00903690];gvar_00903690:TCommManager
 0074AC70    mov         eax,dword ptr [eax+4]
 0074AC73    push        eax
 0074AC74    call        dword ptr ds:[9036B0]
 0074AC7A    call        @DoneExcept
>0074AC7F    jmp         0074AC86
 0074AC81    call        @DoneExcept
 0074AC86    xor         eax,eax
 0074AC88    pop         edx
 0074AC89    pop         ecx
 0074AC8A    pop         ecx
 0074AC8B    mov         dword ptr fs:[eax],edx
 0074AC8E    push        74ACA3
 0074AC93    lea         eax,[ebp-8]
 0074AC96    call        @UStrClr
 0074AC9B    ret
>0074AC9C    jmp         @HandleFinally
>0074ACA1    jmp         0074AC93
 0074ACA3    movzx       eax,word ptr [ebp-2]
 0074ACA7    pop         edi
 0074ACA8    pop         esi
 0074ACA9    pop         ebx
 0074ACAA    pop         ecx
 0074ACAB    pop         ecx
 0074ACAC    pop         ebp
 0074ACAD    ret
end;*}

//0074ACE0
{*function sub_0074ACE0(?:?):?;
begin
 0074ACE0    push        ebp
 0074ACE1    mov         ebp,esp
 0074ACE3    add         esp,0FFFFFFF8
 0074ACE6    push        ebx
 0074ACE7    push        esi
 0074ACE8    push        edi
 0074ACE9    xor         edx,edx
 0074ACEB    mov         dword ptr [ebp-8],edx
 0074ACEE    mov         ebx,eax
 0074ACF0    xor         eax,eax
 0074ACF2    push        ebp
 0074ACF3    push        74AE20
 0074ACF8    push        dword ptr fs:[eax]
 0074ACFB    mov         dword ptr fs:[eax],esp
 0074ACFE    mov         word ptr [ebp-2],0
 0074AD04    xor         edx,edx
 0074AD06    push        ebp
 0074AD07    push        74AD90
 0074AD0C    push        dword ptr fs:[edx]
 0074AD0F    mov         dword ptr fs:[edx],esp
 0074AD12    mov         eax,ebx
 0074AD14    call        0074AAEC
 0074AD19    mov         eax,dword ptr [ebx+8]
 0074AD1C    mov         byte ptr [eax+5],22
 0074AD20    lea         edx,[eax+4]
 0074AD23    push        edx
 0074AD24    add         eax,5
 0074AD27    push        eax
 0074AD28    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074AD2D    mov         eax,dword ptr [eax]
 0074AD2F    mov         eax,dword ptr [eax+0C]
 0074AD32    movzx       ecx,word ptr ds:[90369C];gvar_0090369C
 0074AD39    mov         dl,1
 0074AD3B    call        TFXPPD.EncodeFXPDMsg
 0074AD40    add         word ptr [ebp-2],1
>0074AD45    jae         0074AD4C
 0074AD47    call        @IntOver
 0074AD4C    mov         eax,ebx
 0074AD4E    call        0074AAEC
 0074AD53    mov         eax,dword ptr [ebx+8]
 0074AD56    mov         byte ptr [eax+5],22
 0074AD5A    lea         edx,[eax+4]
 0074AD5D    push        edx
 0074AD5E    add         eax,5
 0074AD61    push        eax
 0074AD62    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074AD67    mov         eax,dword ptr [eax]
 0074AD69    mov         eax,dword ptr [eax+0C]
 0074AD6C    movzx       ecx,word ptr ds:[90369C];gvar_0090369C
 0074AD73    mov         dl,2
 0074AD75    call        TFXPPD.EncodeFXPDMsg
 0074AD7A    add         word ptr [ebp-2],1
>0074AD7F    jae         0074AD86
 0074AD81    call        @IntOver
 0074AD86    xor         eax,eax
 0074AD88    pop         edx
 0074AD89    pop         ecx
 0074AD8A    pop         ecx
 0074AD8B    mov         dword ptr fs:[eax],edx
>0074AD8E    jmp         0074AE0A
>0074AD90    jmp         @HandleOnException
 0074AD95    dd          1
 0074AD99    dd          004174D0;Exception
 0074AD9D    dd          0074ADA1
 0074ADA1    mov         ebx,eax
 0074ADA3    push        0
 0074ADA5    mov         edx,dword ptr [ebx+4];Exception.FMessage:string
 0074ADA8    lea         eax,[ebp-8]
 0074ADAB    mov         ecx,dword ptr ds:[7C3ED4];^'
Partially transferred data is invalid!'
 0074ADB1    call        @UStrCat3
 0074ADB6    mov         eax,dword ptr [ebp-8]
 0074ADB9    movzx       ecx,word ptr ds:[74AE34];0x4 gvar_0074AE34
 0074ADC0    mov         dl,1
 0074ADC2    call        MessageDlg
 0074ADC7    mov         eax,[00903690];gvar_00903690:TCommManager
 0074ADCC    cmp         word ptr [eax+242],0
>0074ADD4    je          0074ADEF
 0074ADD6    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074ADDC    mov         ecx,74AE44;'Cannot continue'
 0074ADE1    mov         dl,6
 0074ADE3    mov         eax,dword ptr [ebx+244]
 0074ADE9    call        dword ptr [ebx+240]
 0074ADEF    mov         eax,[00903690];gvar_00903690:TCommManager
 0074ADF4    mov         eax,dword ptr [eax+4]
 0074ADF7    push        eax
 0074ADF8    call        dword ptr ds:[9036B0]
 0074ADFE    call        @DoneExcept
>0074AE03    jmp         0074AE0A
 0074AE05    call        @DoneExcept
 0074AE0A    xor         eax,eax
 0074AE0C    pop         edx
 0074AE0D    pop         ecx
 0074AE0E    pop         ecx
 0074AE0F    mov         dword ptr fs:[eax],edx
 0074AE12    push        74AE27
 0074AE17    lea         eax,[ebp-8]
 0074AE1A    call        @UStrClr
 0074AE1F    ret
>0074AE20    jmp         @HandleFinally
>0074AE25    jmp         0074AE17
 0074AE27    movzx       eax,word ptr [ebp-2]
 0074AE2B    pop         edi
 0074AE2C    pop         esi
 0074AE2D    pop         ebx
 0074AE2E    pop         ecx
 0074AE2F    pop         ecx
 0074AE30    pop         ebp
 0074AE31    ret
end;*}

//0074AE64
{*procedure sub_0074AE64(?:?; ?:?; ?:?);
begin
 0074AE64    push        ebp
 0074AE65    mov         ebp,esp
 0074AE67    push        ecx
 0074AE68    push        ebx
 0074AE69    mov         byte ptr [ebp-1],dl
 0074AE6C    mov         ebx,eax
 0074AE6E    mov         eax,dword ptr [ebp+8]
 0074AE71    mov         eax,dword ptr [eax-4]
 0074AE74    call        0074AAEC
 0074AE79    mov         eax,dword ptr [ebp+8]
 0074AE7C    mov         eax,dword ptr [eax-4]
 0074AE7F    mov         eax,dword ptr [eax+8]
 0074AE82    mov         byte ptr [eax+5],23
 0074AE86    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074AE8D    push        edx
 0074AE8E    lea         edx,[eax+4]
 0074AE91    push        edx
 0074AE92    add         eax,5
 0074AE95    push        eax
 0074AE96    movzx       ecx,byte ptr [ebp-1]
 0074AE9A    movzx       edx,bl
 0074AE9D    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074AEA2    mov         eax,dword ptr [eax]
 0074AEA4    mov         eax,dword ptr [eax+10]
 0074AEA7    call        TFXPIO.EncodeFXIOMsg
 0074AEAC    mov         eax,dword ptr [ebp+8]
 0074AEAF    add         word ptr [eax-6],1
>0074AEB4    jae         0074AEBB
 0074AEB6    call        @IntOver
 0074AEBB    pop         ebx
 0074AEBC    pop         ecx
 0074AEBD    pop         ebp
 0074AEBE    ret
end;*}

//0074AEC0
{*function sub_0074AEC0(?:?):?;
begin
 0074AEC0    push        ebp
 0074AEC1    mov         ebp,esp
 0074AEC3    add         esp,0FFFFFFF4
 0074AEC6    push        ebx
 0074AEC7    push        esi
 0074AEC8    push        edi
 0074AEC9    xor         edx,edx
 0074AECB    mov         dword ptr [ebp-0C],edx
 0074AECE    mov         dword ptr [ebp-4],eax
 0074AED1    xor         eax,eax
 0074AED3    push        ebp
 0074AED4    push        74B15B
 0074AED9    push        dword ptr fs:[eax]
 0074AEDC    mov         dword ptr fs:[eax],esp
 0074AEDF    mov         word ptr [ebp-6],0
 0074AEE5    xor         eax,eax
 0074AEE7    push        ebp
 0074AEE8    push        74B0CB
 0074AEED    push        dword ptr fs:[eax]
 0074AEF0    mov         dword ptr fs:[eax],esp
 0074AEF3    mov         byte ptr [ebp-7],0
 0074AEF7    mov         bl,1
 0074AEF9    push        ebp
 0074AEFA    movzx       edx,bl
 0074AEFD    add         edx,40
>0074AF00    jno         0074AF07
 0074AF02    call        @IntOver
 0074AF07    cmp         edx,0FF
>0074AF0D    jbe         0074AF14
 0074AF0F    call        @BoundErr
 0074AF14    movzx       eax,byte ptr [ebp-7]
 0074AF18    call        0074AE64
 0074AF1D    pop         ecx
 0074AF1E    inc         ebx
 0074AF1F    cmp         bl,3
>0074AF22    jne         0074AEF9
 0074AF24    cmp         dword ptr ds:[903698],17;gvar_00903698
>0074AF2B    jne         0074AF44
 0074AF2D    mov         bl,1
 0074AF2F    push        ebp
 0074AF30    mov         edx,ebx
 0074AF32    movzx       eax,byte ptr [ebp-7]
 0074AF36    call        0074AE64
 0074AF3B    pop         ecx
 0074AF3C    inc         ebx
 0074AF3D    cmp         bl,3
>0074AF40    jne         0074AF2F
>0074AF42    jmp         0074AF59
 0074AF44    mov         bl,1
 0074AF46    push        ebp
 0074AF47    mov         edx,ebx
 0074AF49    movzx       eax,byte ptr [ebp-7]
 0074AF4D    call        0074AE64
 0074AF52    pop         ecx
 0074AF53    inc         ebx
 0074AF54    cmp         bl,4
>0074AF57    jne         0074AF46
 0074AF59    mov         bl,1
 0074AF5B    push        ebp
 0074AF5C    movzx       edx,bl
 0074AF5F    add         edx,20
>0074AF62    jno         0074AF69
 0074AF64    call        @IntOver
 0074AF69    cmp         edx,0FF
>0074AF6F    jbe         0074AF76
 0074AF71    call        @BoundErr
 0074AF76    movzx       eax,byte ptr [ebp-7]
 0074AF7A    call        0074AE64
 0074AF7F    pop         ecx
 0074AF80    mov         byte ptr [ebp-7],1
 0074AF84    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074AF89    mov         eax,dword ptr [eax]
 0074AF8B    mov         eax,dword ptr [eax+10]
 0074AF8E    movzx       edx,byte ptr [ebp-7]
 0074AF92    call        TFXPIO.GetIOCtrlrType
 0074AF97    dec         al
>0074AF99    je          0074AFB8
 0074AF9B    dec         al
>0074AF9D    je          0074B02C
 0074AFA3    dec         al
>0074AFA5    je          0074B043
 0074AFAB    dec         al
>0074AFAD    je          0074B072
>0074AFB3    jmp         0074B0B4
 0074AFB8    mov         bl,1
 0074AFBA    push        ebp
 0074AFBB    movzx       edx,bl
 0074AFBE    add         edx,40
>0074AFC1    jno         0074AFC8
 0074AFC3    call        @IntOver
 0074AFC8    cmp         edx,0FF
>0074AFCE    jbe         0074AFD5
 0074AFD0    call        @BoundErr
 0074AFD5    movzx       eax,byte ptr [ebp-7]
 0074AFD9    call        0074AE64
 0074AFDE    pop         ecx
 0074AFDF    inc         ebx
 0074AFE0    cmp         bl,5
>0074AFE3    jne         0074AFBA
 0074AFE5    mov         bl,1
 0074AFE7    push        ebp
 0074AFE8    mov         edx,ebx
 0074AFEA    movzx       eax,byte ptr [ebp-7]
 0074AFEE    call        0074AE64
 0074AFF3    pop         ecx
 0074AFF4    inc         ebx
 0074AFF5    cmp         bl,3
>0074AFF8    jne         0074AFE7
 0074AFFA    mov         bl,1
 0074AFFC    push        ebp
 0074AFFD    movzx       edx,bl
 0074B000    add         edx,20
>0074B003    jno         0074B00A
 0074B005    call        @IntOver
 0074B00A    cmp         edx,0FF
>0074B010    jbe         0074B017
 0074B012    call        @BoundErr
 0074B017    movzx       eax,byte ptr [ebp-7]
 0074B01B    call        0074AE64
 0074B020    pop         ecx
 0074B021    inc         ebx
 0074B022    cmp         bl,5
>0074B025    jne         0074AFFC
>0074B027    jmp         0074B0B4
 0074B02C    mov         bl,1
 0074B02E    push        ebp
 0074B02F    mov         edx,ebx
 0074B031    movzx       eax,byte ptr [ebp-7]
 0074B035    call        0074AE64
 0074B03A    pop         ecx
 0074B03B    inc         ebx
 0074B03C    cmp         bl,11
>0074B03F    jne         0074B02E
>0074B041    jmp         0074B0B4
 0074B043    mov         bl,1
 0074B045    push        ebp
 0074B046    movzx       edx,bl
 0074B049    add         edx,20
>0074B04C    jno         0074B053
 0074B04E    call        @IntOver
 0074B053    cmp         edx,0FF
>0074B059    jbe         0074B060
 0074B05B    call        @BoundErr
 0074B060    movzx       eax,byte ptr [ebp-7]
 0074B064    call        0074AE64
 0074B069    pop         ecx
 0074B06A    inc         ebx
 0074B06B    cmp         bl,0D
>0074B06E    jne         0074B045
>0074B070    jmp         0074B0B4
 0074B072    mov         bl,1
 0074B074    push        ebp
 0074B075    movzx       edx,bl
 0074B078    add         edx,40
>0074B07B    jno         0074B082
 0074B07D    call        @IntOver
 0074B082    cmp         edx,0FF
>0074B088    jbe         0074B08F
 0074B08A    call        @BoundErr
 0074B08F    movzx       eax,byte ptr [ebp-7]
 0074B093    call        0074AE64
 0074B098    pop         ecx
 0074B099    inc         ebx
 0074B09A    cmp         bl,4
>0074B09D    jne         0074B074
 0074B09F    mov         bl,1
 0074B0A1    push        ebp
 0074B0A2    mov         edx,ebx
 0074B0A4    movzx       eax,byte ptr [ebp-7]
 0074B0A8    call        0074AE64
 0074B0AD    pop         ecx
 0074B0AE    inc         ebx
 0074B0AF    cmp         bl,5
>0074B0B2    jne         0074B0A1
 0074B0B4    inc         byte ptr [ebp-7]
 0074B0B7    cmp         byte ptr [ebp-7],5
>0074B0BB    jne         0074AF84
 0074B0C1    xor         eax,eax
 0074B0C3    pop         edx
 0074B0C4    pop         ecx
 0074B0C5    pop         ecx
 0074B0C6    mov         dword ptr fs:[eax],edx
>0074B0C9    jmp         0074B145
>0074B0CB    jmp         @HandleOnException
 0074B0D0    dd          1
 0074B0D4    dd          004174D0;Exception
 0074B0D8    dd          0074B0DC
 0074B0DC    mov         ebx,eax
 0074B0DE    push        0
 0074B0E0    mov         edx,dword ptr [ebx+4];Exception.FMessage:string
 0074B0E3    lea         eax,[ebp-0C]
 0074B0E6    mov         ecx,dword ptr ds:[7C3ED4];^'
Partially transferred data is invalid!'
 0074B0EC    call        @UStrCat3
 0074B0F1    mov         eax,dword ptr [ebp-0C]
 0074B0F4    movzx       ecx,word ptr ds:[74B170];0x4 gvar_0074B170
 0074B0FB    mov         dl,1
 0074B0FD    call        MessageDlg
 0074B102    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B107    cmp         word ptr [eax+242],0
>0074B10F    je          0074B12A
 0074B111    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074B117    mov         ecx,74B180;'Cannot continue'
 0074B11C    mov         dl,6
 0074B11E    mov         eax,dword ptr [ebx+244]
 0074B124    call        dword ptr [ebx+240]
 0074B12A    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B12F    mov         eax,dword ptr [eax+4]
 0074B132    push        eax
 0074B133    call        dword ptr ds:[9036B0]
 0074B139    call        @DoneExcept
>0074B13E    jmp         0074B145
 0074B140    call        @DoneExcept
 0074B145    xor         eax,eax
 0074B147    pop         edx
 0074B148    pop         ecx
 0074B149    pop         ecx
 0074B14A    mov         dword ptr fs:[eax],edx
 0074B14D    push        74B162
 0074B152    lea         eax,[ebp-0C]
 0074B155    call        @UStrClr
 0074B15A    ret
>0074B15B    jmp         @HandleFinally
>0074B160    jmp         0074B152
 0074B162    movzx       eax,word ptr [ebp-6]
 0074B166    pop         edi
 0074B167    pop         esi
 0074B168    pop         ebx
 0074B169    mov         esp,ebp
 0074B16B    pop         ebp
 0074B16C    ret
end;*}

//0074B1A0
{*function sub_0074B1A0(?:?):?;
begin
 0074B1A0    push        ebp
 0074B1A1    mov         ebp,esp
 0074B1A3    add         esp,0FFFFFFF4
 0074B1A6    push        ebx
 0074B1A7    push        esi
 0074B1A8    push        edi
 0074B1A9    xor         edx,edx
 0074B1AB    mov         dword ptr [ebp-0C],edx
 0074B1AE    mov         esi,eax
 0074B1B0    xor         eax,eax
 0074B1B2    push        ebp
 0074B1B3    push        74B387
 0074B1B8    push        dword ptr fs:[eax]
 0074B1BB    mov         dword ptr fs:[eax],esp
 0074B1BE    mov         word ptr [ebp-2],0
 0074B1C4    xor         edx,edx
 0074B1C6    push        ebp
 0074B1C7    push        74B2F7
 0074B1CC    push        dword ptr fs:[edx]
 0074B1CF    mov         dword ptr fs:[edx],esp
 0074B1D2    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074B1D7    mov         eax,dword ptr [eax]
 0074B1D9    mov         eax,dword ptr [eax+0C]
 0074B1DC    call        006A344C
 0074B1E1    test        al,al
>0074B1E3    jbe         0074B2ED
 0074B1E9    movzx       eax,al
 0074B1EC    sub         eax,1
>0074B1EF    jno         0074B1F6
 0074B1F1    call        @IntOver
 0074B1F6    cmp         eax,0FF
>0074B1FB    jbe         0074B202
 0074B1FD    call        @BoundErr
 0074B202    test        al,al
>0074B204    jb          0074B2ED
 0074B20A    inc         eax
 0074B20B    mov         byte ptr [ebp-5],al
 0074B20E    mov         byte ptr [ebp-3],0
 0074B212    mov         byte ptr [ebp-4],0
 0074B216    mov         bl,1
 0074B218    movzx       eax,byte ptr [ebp-3]
 0074B21C    cmp         eax,7
>0074B21F    jbe         0074B226
 0074B221    call        @BoundErr
 0074B226    imul        eax,eax,43B3
>0074B22C    jno         0074B233
 0074B22E    call        @IntOver
 0074B233    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0074B239    mov         edx,dword ptr [edx]
 0074B23B    mov         edx,dword ptr [edx+14]
 0074B23E    lea         edi,[edx+eax*4]
 0074B241    movzx       eax,byte ptr [ebp-4]
 0074B245    cmp         eax,1
>0074B248    jbe         0074B24F
 0074B24A    call        @BoundErr
 0074B24F    imul        eax,eax,43B3
>0074B255    jno         0074B25C
 0074B257    call        @IntOver
 0074B25C    lea         eax,[edi+eax*2]
 0074B25F    movzx       edx,bl
 0074B262    dec         edx
 0074B263    cmp         edx,9E
>0074B269    jbe         0074B270
 0074B26B    call        @BoundErr
 0074B270    inc         edx
 0074B271    imul        edx,edx,6D
>0074B274    jno         0074B27B
 0074B276    call        @IntOver
 0074B27B    cmp         byte ptr [eax+edx*2-0CC],0
>0074B283    je          0074B2CA
 0074B285    mov         eax,esi
 0074B287    call        0074AAEC
 0074B28C    mov         eax,dword ptr [esi+8]
 0074B28F    mov         byte ptr [eax+5],24
 0074B293    movzx       edx,bl
 0074B296    push        edx
 0074B297    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074B29E    push        edx
 0074B29F    lea         edx,[eax+4]
 0074B2A2    push        edx
 0074B2A3    add         eax,5
 0074B2A6    push        eax
 0074B2A7    movzx       ecx,byte ptr [ebp-4]
 0074B2AB    movzx       edx,byte ptr [ebp-3]
 0074B2AF    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074B2B4    mov         eax,dword ptr [eax]
 0074B2B6    mov         eax,dword ptr [eax+14]
 0074B2B9    call        TFXPAD.EncodeFXADMsg
 0074B2BE    add         word ptr [ebp-2],1
>0074B2C3    jae         0074B2CA
 0074B2C5    call        @IntOver
 0074B2CA    inc         ebx
 0074B2CB    cmp         bl,0A0
>0074B2CE    jne         0074B218
 0074B2D4    inc         byte ptr [ebp-4]
 0074B2D7    cmp         byte ptr [ebp-4],2
>0074B2DB    jne         0074B216
 0074B2E1    inc         byte ptr [ebp-3]
 0074B2E4    dec         byte ptr [ebp-5]
>0074B2E7    jne         0074B212
 0074B2ED    xor         eax,eax
 0074B2EF    pop         edx
 0074B2F0    pop         ecx
 0074B2F1    pop         ecx
 0074B2F2    mov         dword ptr fs:[eax],edx
>0074B2F5    jmp         0074B371
>0074B2F7    jmp         @HandleOnException
 0074B2FC    dd          1
 0074B300    dd          004174D0;Exception
 0074B304    dd          0074B308
 0074B308    mov         ebx,eax
 0074B30A    push        0
 0074B30C    mov         edx,dword ptr [ebx+4];Exception.FMessage:string
 0074B30F    lea         eax,[ebp-0C]
 0074B312    mov         ecx,dword ptr ds:[7C3ED4];^'
Partially transferred data is invalid!'
 0074B318    call        @UStrCat3
 0074B31D    mov         eax,dword ptr [ebp-0C]
 0074B320    movzx       ecx,word ptr ds:[74B39C];0x4 gvar_0074B39C
 0074B327    mov         dl,1
 0074B329    call        MessageDlg
 0074B32E    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B333    cmp         word ptr [eax+242],0
>0074B33B    je          0074B356
 0074B33D    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074B343    mov         ecx,74B3AC;'Cannot continue'
 0074B348    mov         dl,6
 0074B34A    mov         eax,dword ptr [ebx+244]
 0074B350    call        dword ptr [ebx+240]
 0074B356    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B35B    mov         eax,dword ptr [eax+4]
 0074B35E    push        eax
 0074B35F    call        dword ptr ds:[9036B0]
 0074B365    call        @DoneExcept
>0074B36A    jmp         0074B371
 0074B36C    call        @DoneExcept
 0074B371    xor         eax,eax
 0074B373    pop         edx
 0074B374    pop         ecx
 0074B375    pop         ecx
 0074B376    mov         dword ptr fs:[eax],edx
 0074B379    push        74B38E
 0074B37E    lea         eax,[ebp-0C]
 0074B381    call        @UStrClr
 0074B386    ret
>0074B387    jmp         @HandleFinally
>0074B38C    jmp         0074B37E
 0074B38E    movzx       eax,word ptr [ebp-2]
 0074B392    pop         edi
 0074B393    pop         esi
 0074B394    pop         ebx
 0074B395    mov         esp,ebp
 0074B397    pop         ebp
 0074B398    ret
end;*}

//0074B3CC
{*function sub_0074B3CC(?:?):?;
begin
 0074B3CC    push        ebp
 0074B3CD    mov         ebp,esp
 0074B3CF    add         esp,0FFFFFFF4
 0074B3D2    push        ebx
 0074B3D3    push        esi
 0074B3D4    push        edi
 0074B3D5    xor         edx,edx
 0074B3D7    mov         dword ptr [ebp-0C],edx
 0074B3DA    mov         esi,eax
 0074B3DC    xor         eax,eax
 0074B3DE    push        ebp
 0074B3DF    push        74B62F
 0074B3E4    push        dword ptr fs:[eax]
 0074B3E7    mov         dword ptr fs:[eax],esp
 0074B3EA    mov         word ptr [ebp-2],0
 0074B3F0    xor         edx,edx
 0074B3F2    push        ebp
 0074B3F3    push        74B59F
 0074B3F8    push        dword ptr fs:[edx]
 0074B3FB    mov         dword ptr fs:[edx],esp
 0074B3FE    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074B403    mov         eax,dword ptr [eax]
 0074B405    mov         eax,dword ptr [eax+0C]
 0074B408    call        006A344C
 0074B40D    test        al,al
>0074B40F    jbe         0074B518
 0074B415    movzx       eax,al
 0074B418    sub         eax,1
>0074B41B    jno         0074B422
 0074B41D    call        @IntOver
 0074B422    cmp         eax,0FF
>0074B427    jbe         0074B42E
 0074B429    call        @BoundErr
 0074B42E    test        al,al
>0074B430    jb          0074B518
 0074B436    inc         eax
 0074B437    mov         byte ptr [ebp-5],al
 0074B43A    mov         byte ptr [ebp-3],0
 0074B43E    mov         byte ptr [ebp-4],0
 0074B442    mov         bl,1
 0074B444    movzx       eax,byte ptr [ebp-3]
 0074B448    cmp         eax,7
>0074B44B    jbe         0074B452
 0074B44D    call        @BoundErr
 0074B452    imul        eax,eax,9F0
>0074B458    jno         0074B45F
 0074B45A    call        @IntOver
 0074B45F    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0074B465    mov         edx,dword ptr [edx]
 0074B467    mov         edx,dword ptr [edx+18]
 0074B46A    lea         edi,[edx+eax*8]
 0074B46D    movzx       eax,byte ptr [ebp-4]
 0074B471    cmp         eax,1
>0074B474    jbe         0074B47B
 0074B476    call        @BoundErr
 0074B47B    imul        eax,eax,4F8
>0074B481    jno         0074B488
 0074B483    call        @IntOver
 0074B488    lea         eax,[edi+eax*8]
 0074B48B    movzx       edx,bl
 0074B48E    dec         edx
 0074B48F    cmp         edx,9E
>0074B495    jbe         0074B49C
 0074B497    call        @BoundErr
 0074B49C    inc         edx
 0074B49D    imul        edx,edx,8
>0074B4A0    jno         0074B4A7
 0074B4A2    call        @IntOver
 0074B4A7    movzx       eax,byte ptr [eax+edx*8-3A]
 0074B4AC    test        al,al
>0074B4AE    jbe         0074B4F5
 0074B4B0    mov         eax,esi
 0074B4B2    call        0074AAEC
 0074B4B7    mov         eax,dword ptr [esi+8]
 0074B4BA    mov         byte ptr [eax+5],25
 0074B4BE    movzx       edx,bl
 0074B4C1    push        edx
 0074B4C2    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074B4C9    push        edx
 0074B4CA    lea         edx,[eax+4]
 0074B4CD    push        edx
 0074B4CE    add         eax,5
 0074B4D1    push        eax
 0074B4D2    movzx       ecx,byte ptr [ebp-4]
 0074B4D6    movzx       edx,byte ptr [ebp-3]
 0074B4DA    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074B4DF    mov         eax,dword ptr [eax]
 0074B4E1    mov         eax,dword ptr [eax+18]
 0074B4E4    call        TFXPTD.EncodeFXTDMsg
 0074B4E9    add         word ptr [ebp-2],1
>0074B4EE    jae         0074B4F5
 0074B4F0    call        @IntOver
 0074B4F5    inc         ebx
 0074B4F6    cmp         bl,0A0
>0074B4F9    jne         0074B444
 0074B4FF    inc         byte ptr [ebp-4]
 0074B502    cmp         byte ptr [ebp-4],2
>0074B506    jne         0074B442
 0074B50C    inc         byte ptr [ebp-3]
 0074B50F    dec         byte ptr [ebp-5]
>0074B512    jne         0074B43E
 0074B518    mov         bl,1
 0074B51A    movzx       eax,bl
 0074B51D    dec         eax
 0074B51E    cmp         eax,0F9
>0074B523    jbe         0074B52A
 0074B525    call        @BoundErr
 0074B52A    inc         eax
 0074B52B    imul        eax,eax,8
>0074B52E    jno         0074B535
 0074B530    call        @IntOver
 0074B535    mov         edx,dword ptr ds:[7C41A0];^gvar_008DF5D4:TFXPanel
 0074B53B    mov         edx,dword ptr [edx]
 0074B53D    mov         edx,dword ptr [edx+18]
 0074B540    movzx       eax,byte ptr [edx+eax*8+27BC6]
 0074B548    test        al,al
>0074B54A    jbe         0074B58F
 0074B54C    mov         eax,esi
 0074B54E    call        0074AAEC
 0074B553    mov         eax,dword ptr [esi+8]
 0074B556    mov         byte ptr [eax+5],25
 0074B55A    movzx       edx,bl
 0074B55D    push        edx
 0074B55E    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074B565    push        edx
 0074B566    lea         edx,[eax+4]
 0074B569    push        edx
 0074B56A    add         eax,5
 0074B56D    push        eax
 0074B56E    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074B573    mov         eax,dword ptr [eax]
 0074B575    mov         eax,dword ptr [eax+18]
 0074B578    xor         ecx,ecx
 0074B57A    mov         dx,0FE
 0074B57E    call        TFXPTD.EncodeFXTDMsg
 0074B583    add         word ptr [ebp-2],1
>0074B588    jae         0074B58F
 0074B58A    call        @IntOver
 0074B58F    inc         ebx
 0074B590    cmp         bl,0FB
>0074B593    jne         0074B51A
 0074B595    xor         eax,eax
 0074B597    pop         edx
 0074B598    pop         ecx
 0074B599    pop         ecx
 0074B59A    mov         dword ptr fs:[eax],edx
>0074B59D    jmp         0074B619
>0074B59F    jmp         @HandleOnException
 0074B5A4    dd          1
 0074B5A8    dd          004174D0;Exception
 0074B5AC    dd          0074B5B0
 0074B5B0    mov         ebx,eax
 0074B5B2    push        0
 0074B5B4    mov         edx,dword ptr [ebx+4];Exception.FMessage:string
 0074B5B7    lea         eax,[ebp-0C]
 0074B5BA    mov         ecx,dword ptr ds:[7C3ED4];^'
Partially transferred data is invalid!'
 0074B5C0    call        @UStrCat3
 0074B5C5    mov         eax,dword ptr [ebp-0C]
 0074B5C8    movzx       ecx,word ptr ds:[74B644];0x4 gvar_0074B644
 0074B5CF    mov         dl,1
 0074B5D1    call        MessageDlg
 0074B5D6    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B5DB    cmp         word ptr [eax+242],0
>0074B5E3    je          0074B5FE
 0074B5E5    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074B5EB    mov         ecx,74B654;'Cannot continue'
 0074B5F0    mov         dl,6
 0074B5F2    mov         eax,dword ptr [ebx+244]
 0074B5F8    call        dword ptr [ebx+240]
 0074B5FE    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B603    mov         eax,dword ptr [eax+4]
 0074B606    push        eax
 0074B607    call        dword ptr ds:[9036B0]
 0074B60D    call        @DoneExcept
>0074B612    jmp         0074B619
 0074B614    call        @DoneExcept
 0074B619    xor         eax,eax
 0074B61B    pop         edx
 0074B61C    pop         ecx
 0074B61D    pop         ecx
 0074B61E    mov         dword ptr fs:[eax],edx
 0074B621    push        74B636
 0074B626    lea         eax,[ebp-0C]
 0074B629    call        @UStrClr
 0074B62E    ret
>0074B62F    jmp         @HandleFinally
>0074B634    jmp         0074B626
 0074B636    movzx       eax,word ptr [ebp-2]
 0074B63A    pop         edi
 0074B63B    pop         esi
 0074B63C    pop         ebx
 0074B63D    mov         esp,ebp
 0074B63F    pop         ebp
 0074B640    ret
end;*}

//0074B674
{*function sub_0074B674(?:?):?;
begin
 0074B674    push        ebp
 0074B675    mov         ebp,esp
 0074B677    add         esp,0FFFFFFF4
 0074B67A    push        ebx
 0074B67B    push        esi
 0074B67C    push        edi
 0074B67D    xor         edx,edx
 0074B67F    mov         dword ptr [ebp-0C],edx
 0074B682    mov         ebx,eax
 0074B684    xor         eax,eax
 0074B686    push        ebp
 0074B687    push        74B7E6
 0074B68C    push        dword ptr fs:[eax]
 0074B68F    mov         dword ptr fs:[eax],esp
 0074B692    mov         word ptr [ebp-2],0
 0074B698    xor         edx,edx
 0074B69A    push        ebp
 0074B69B    push        74B756
 0074B6A0    push        dword ptr fs:[edx]
 0074B6A3    mov         dword ptr fs:[edx],esp
 0074B6A6    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0074B6AB    mov         eax,dword ptr [eax]
 0074B6AD    call        TCGData.Build
 0074B6B2    xor         edx,edx
 0074B6B4    push        ebp
 0074B6B5    push        74B745
 0074B6BA    push        dword ptr fs:[edx]
 0074B6BD    mov         dword ptr fs:[edx],esp
 0074B6C0    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0074B6C5    mov         eax,dword ptr [eax]
 0074B6C7    mov         esi,dword ptr [eax+8]
 0074B6CA    sub         esi,1
>0074B6CD    jno         0074B6D4
 0074B6CF    call        @IntOver
 0074B6D4    test        esi,esi
>0074B6D6    jl          0074B72B
 0074B6D8    inc         esi
 0074B6D9    mov         dword ptr [ebp-8],0
 0074B6E0    mov         eax,ebx
 0074B6E2    call        0074AAEC
 0074B6E7    mov         eax,dword ptr [ebx+8]
 0074B6EA    mov         byte ptr [eax+5],26
 0074B6EE    lea         edx,[eax+4]
 0074B6F1    push        edx
 0074B6F2    add         eax,5
 0074B6F5    push        eax
 0074B6F6    mov         edx,dword ptr [ebp-8]
 0074B6F9    cmp         edx,0FFFF
>0074B6FF    jbe         0074B706
 0074B701    call        @BoundErr
 0074B706    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0074B70B    mov         eax,dword ptr [eax]
 0074B70D    movzx       ecx,word ptr ds:[90369C];gvar_0090369C
 0074B714    call        TCGData.EncodeFXCGMsg
 0074B719    add         word ptr [ebp-2],1
>0074B71E    jae         0074B725
 0074B720    call        @IntOver
 0074B725    inc         dword ptr [ebp-8]
 0074B728    dec         esi
>0074B729    jne         0074B6E0
 0074B72B    xor         eax,eax
 0074B72D    pop         edx
 0074B72E    pop         ecx
 0074B72F    pop         ecx
 0074B730    mov         dword ptr fs:[eax],edx
 0074B733    push        74B74C
 0074B738    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0074B73D    mov         eax,dword ptr [eax]
 0074B73F    call        TCGData.Clear
 0074B744    ret
>0074B745    jmp         @HandleFinally
>0074B74A    jmp         0074B738
 0074B74C    xor         eax,eax
 0074B74E    pop         edx
 0074B74F    pop         ecx
 0074B750    pop         ecx
 0074B751    mov         dword ptr fs:[eax],edx
>0074B754    jmp         0074B7D0
>0074B756    jmp         @HandleOnException
 0074B75B    dd          1
 0074B75F    dd          004174D0;Exception
 0074B763    dd          0074B767
 0074B767    mov         ebx,eax
 0074B769    push        0
 0074B76B    mov         edx,dword ptr [ebx+4];Exception.FMessage:string
 0074B76E    lea         eax,[ebp-0C]
 0074B771    mov         ecx,dword ptr ds:[7C3ED4];^'
Partially transferred data is invalid!'
 0074B777    call        @UStrCat3
 0074B77C    mov         eax,dword ptr [ebp-0C]
 0074B77F    movzx       ecx,word ptr ds:[74B7F8];0x4 gvar_0074B7F8
 0074B786    mov         dl,1
 0074B788    call        MessageDlg
 0074B78D    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B792    cmp         word ptr [eax+242],0
>0074B79A    je          0074B7B5
 0074B79C    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074B7A2    mov         ecx,74B808;'Cannot continue'
 0074B7A7    mov         dl,6
 0074B7A9    mov         eax,dword ptr [ebx+244]
 0074B7AF    call        dword ptr [ebx+240]
 0074B7B5    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B7BA    mov         eax,dword ptr [eax+4]
 0074B7BD    push        eax
 0074B7BE    call        dword ptr ds:[9036B0]
 0074B7C4    call        @DoneExcept
>0074B7C9    jmp         0074B7D0
 0074B7CB    call        @DoneExcept
 0074B7D0    xor         eax,eax
 0074B7D2    pop         edx
 0074B7D3    pop         ecx
 0074B7D4    pop         ecx
 0074B7D5    mov         dword ptr fs:[eax],edx
 0074B7D8    push        74B7ED
 0074B7DD    lea         eax,[ebp-0C]
 0074B7E0    call        @UStrClr
 0074B7E5    ret
>0074B7E6    jmp         @HandleFinally
>0074B7EB    jmp         0074B7DD
 0074B7ED    movzx       eax,word ptr [ebp-2]
 0074B7F1    pop         edi
 0074B7F2    pop         esi
 0074B7F3    pop         ebx
 0074B7F4    mov         esp,ebp
 0074B7F6    pop         ebp
 0074B7F7    ret
end;*}

//0074B828
{*function sub_0074B828(?:TCommTask; ?:Integer):?;
begin
 0074B828    push        ebp
 0074B829    mov         ebp,esp
 0074B82B    push        0
 0074B82D    push        0
 0074B82F    push        ebx
 0074B830    push        esi
 0074B831    push        edi
 0074B832    mov         edi,edx
 0074B834    mov         ebx,eax
 0074B836    xor         eax,eax
 0074B838    push        ebp
 0074B839    push        74B95B
 0074B83E    push        dword ptr fs:[eax]
 0074B841    mov         dword ptr fs:[eax],esp
 0074B844    xor         esi,esi
 0074B846    mov         eax,dword ptr [ebx+10]
 0074B849    cmp         eax,6
>0074B84C    ja          0074B8B1
 0074B84E    jmp         dword ptr [eax*4+74B855]
 0074B84E    dd          0074B8B1
 0074B84E    dd          0074B871
 0074B84E    dd          0074B87C
 0074B84E    dd          0074B887
 0074B84E    dd          0074B892
 0074B84E    dd          0074B89D
 0074B84E    dd          0074B8A8
 0074B871    mov         eax,ebx
 0074B873    call        0074AB5C
 0074B878    mov         esi,eax
>0074B87A    jmp         0074B8B1
 0074B87C    mov         eax,ebx
 0074B87E    call        0074ACE0
 0074B883    mov         esi,eax
>0074B885    jmp         0074B8B1
 0074B887    mov         eax,ebx
 0074B889    call        0074AEC0
 0074B88E    mov         esi,eax
>0074B890    jmp         0074B8B1
 0074B892    mov         eax,ebx
 0074B894    call        0074B1A0
 0074B899    mov         esi,eax
>0074B89B    jmp         0074B8B1
 0074B89D    mov         eax,ebx
 0074B89F    call        0074B3CC
 0074B8A4    mov         esi,eax
>0074B8A6    jmp         0074B8B1
 0074B8A8    mov         eax,ebx
 0074B8AA    call        0074B674
 0074B8AF    mov         esi,eax
 0074B8B1    mov         eax,dword ptr [ebx+4]
 0074B8B4    push        eax
 0074B8B5    cmp         edi,0FF
>0074B8BB    jbe         0074B8C2
 0074B8BD    call        @BoundErr
 0074B8C2    push        edi
 0074B8C3    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B8C8    mov         eax,dword ptr [eax+4]
 0074B8CB    push        eax
 0074B8CC    call        dword ptr ds:[9036A8]
 0074B8D2    sub         eax,1
>0074B8D5    jb          0074B8DE
>0074B8D7    je          0074B92A
 0074B8D9    dec         eax
>0074B8DA    je          0074B936
>0074B8DC    jmp         0074B940
 0074B8DE    push        74B978;'Sending '
 0074B8E3    dec         edi
 0074B8E4    cmp         edi,5
>0074B8E7    jbe         0074B8EE
 0074B8E9    call        @BoundErr
 0074B8EE    inc         edi
 0074B8EF    push        dword ptr [edi*4+7C3ED4];^'
Partially transferred data is invalid!'
 0074B8F6    push        74B998;' ('
 0074B8FB    lea         edx,[ebp-8]
 0074B8FE    movzx       eax,si
 0074B901    call        IntToStr
 0074B906    push        dword ptr [ebp-8]
 0074B909    push        74B9AC;' records)'
 0074B90E    lea         eax,[ebp-4]
 0074B911    mov         edx,5
 0074B916    call        @UStrCatN
 0074B91B    mov         ecx,dword ptr [ebp-4]
 0074B91E    mov         dl,9
 0074B920    mov         eax,dword ptr [ebx+0C]
 0074B923    call        0074C4B0
>0074B928    jmp         0074B940
 0074B92A    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B92F    call        0074C548
>0074B934    jmp         0074B940
 0074B936    mov         eax,[00903690];gvar_00903690:TCommManager
 0074B93B    call        0074C644
 0074B940    xor         eax,eax
 0074B942    pop         edx
 0074B943    pop         ecx
 0074B944    pop         ecx
 0074B945    mov         dword ptr fs:[eax],edx
 0074B948    push        74B962
 0074B94D    lea         eax,[ebp-8]
 0074B950    mov         edx,2
 0074B955    call        @UStrArrayClr
 0074B95A    ret
>0074B95B    jmp         @HandleFinally
>0074B960    jmp         0074B94D
 0074B962    pop         edi
 0074B963    pop         esi
 0074B964    pop         ebx
 0074B965    pop         ecx
 0074B966    pop         ecx
 0074B967    pop         ebp
 0074B968    ret
end;*}

//0074B9C0
procedure sub_0074B9C0(?:TCommTask; ?:TMessage);
begin
{*
 0074B9C0    push        ebp
 0074B9C1    mov         ebp,esp
 0074B9C3    add         esp,0FFFFFFEC
 0074B9C6    push        ebx
 0074B9C7    push        esi
 0074B9C8    push        edi
 0074B9C9    xor         ecx,ecx
 0074B9CB    mov         dword ptr [ebp-4],ecx
 0074B9CE    mov         esi,edx
 0074B9D0    lea         edi,[ebp-14]
 0074B9D3    movs        dword ptr [edi],dword ptr [esi]
 0074B9D4    movs        dword ptr [edi],dword ptr [esi]
 0074B9D5    movs        dword ptr [edi],dword ptr [esi]
 0074B9D6    movs        dword ptr [edi],dword ptr [esi]
 0074B9D7    mov         ebx,eax
 0074B9D9    xor         eax,eax
 0074B9DB    push        ebp
 0074B9DC    push        74BAC6
 0074B9E1    push        dword ptr fs:[eax]
 0074B9E4    mov         dword ptr fs:[eax],esp
 0074B9E7    mov         eax,dword ptr [ebp-10]
 0074B9EA    dec         eax
>0074B9EB    je          0074BA8E
 0074B9F1    dec         eax
>0074B9F2    je          0074BA9A
 0074B9F8    dec         eax
>0074B9F9    je          0074BAA6
 0074B9FF    sub         eax,2
>0074BA02    jne         0074BAB0
 0074BA08    push        74BAE0;'Sending '
 0074BA0D    mov         esi,dword ptr [ebx+10]
 0074BA10    dec         esi
 0074BA11    cmp         esi,5
>0074BA14    jbe         0074BA1B
 0074BA16    call        @BoundErr
 0074BA1B    inc         esi
 0074BA1C    push        dword ptr [esi*4+7C3ED4];^'
Partially transferred data is invalid!'
 0074BA23    push        74BB00;' succeeded.'
 0074BA28    lea         eax,[ebp-4]
 0074BA2B    mov         edx,3
 0074BA30    call        @UStrCatN
 0074BA35    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BA3A    cmp         word ptr [eax+24A],0
>0074BA42    je          0074BA5E
 0074BA44    mov         eax,dword ptr [ebp-4]
 0074BA47    push        eax
 0074BA48    mov         edi,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074BA4E    mov         ecx,esi
 0074BA50    mov         dl,9
 0074BA52    mov         eax,dword ptr [edi+24C]
 0074BA58    call        dword ptr [edi+248]
 0074BA5E    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BA63    cmp         word ptr [eax+242],0
>0074BA6B    je          0074BA84
 0074BA6D    mov         esi,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074BA73    mov         ecx,dword ptr [ebp-4]
 0074BA76    mov         dl,5
 0074BA78    mov         eax,dword ptr [esi+244]
 0074BA7E    call        dword ptr [esi+240]
 0074BA84    mov         eax,dword ptr [ebx+0C]
 0074BA87    call        0074C0E4
>0074BA8C    jmp         0074BAB0
 0074BA8E    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BA93    call        0074C644
>0074BA98    jmp         0074BAB0
 0074BA9A    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BA9F    call        0074C8C8
>0074BAA4    jmp         0074BAB0
 0074BAA6    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BAAB    call        0074C808
 0074BAB0    xor         eax,eax
 0074BAB2    pop         edx
 0074BAB3    pop         ecx
 0074BAB4    pop         ecx
 0074BAB5    mov         dword ptr fs:[eax],edx
 0074BAB8    push        74BACD
 0074BABD    lea         eax,[ebp-4]
 0074BAC0    call        @UStrClr
 0074BAC5    ret
>0074BAC6    jmp         @HandleFinally
>0074BACB    jmp         0074BABD
 0074BACD    pop         edi
 0074BACE    pop         esi
 0074BACF    pop         ebx
 0074BAD0    mov         esp,ebp
 0074BAD2    pop         ebp
 0074BAD3    ret
*}
end;

//0074BB18
{*function sub_0074BB18(?:?; ?:?):?;
begin
 0074BB18    push        ebx
 0074BB19    push        esi
 0074BB1A    mov         ebx,edx
 0074BB1C    xor         esi,esi
 0074BB1E    test        ebx,ebx
>0074BB20    je          0074BB46
 0074BB22    lea         eax,[ebx+5]
 0074BB25    push        eax
 0074BB26    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074BB2B    mov         eax,dword ptr [eax+8]
 0074BB2E    movzx       ecx,byte ptr [ebx+4]
 0074BB32    mov         dl,1
 0074BB34    call        TFXPCI.DecodeFXCIMsg
 0074BB39    mov         ebx,dword ptr [ebx]
 0074BB3B    add         si,1
>0074BB3F    jae         0074BB46
 0074BB41    call        @IntOver
 0074BB46    test        ebx,ebx
>0074BB48    je          0074BB6C
 0074BB4A    lea         eax,[ebx+5]
 0074BB4D    push        eax
 0074BB4E    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074BB53    mov         eax,dword ptr [eax+8]
 0074BB56    movzx       ecx,byte ptr [ebx+4]
 0074BB5A    mov         dl,2
 0074BB5C    call        TFXPCI.DecodeFXCIMsg
 0074BB61    add         si,1
>0074BB65    jae         0074BB6C
 0074BB67    call        @IntOver
 0074BB6C    mov         eax,esi
 0074BB6E    pop         esi
 0074BB6F    pop         ebx
 0074BB70    ret
end;*}

//0074BB74
{*function sub_0074BB74(?:?; ?:?):?;
begin
 0074BB74    push        ebx
 0074BB75    push        esi
 0074BB76    mov         ebx,edx
 0074BB78    xor         esi,esi
 0074BB7A    mov         eax,[007C41F0];^gvar_00857F44:TDbgFrm
 0074BB7F    mov         eax,dword ptr [eax]
 0074BB81    mov         edx,74BC10;'ReadFXPanelData'
 0074BB86    call        TDbgFrm.Log
 0074BB8B    test        ebx,ebx
>0074BB8D    je          0074BBB3
 0074BB8F    lea         eax,[ebx+5]
 0074BB92    push        eax
 0074BB93    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074BB98    mov         eax,dword ptr [eax+0C]
 0074BB9B    movzx       ecx,byte ptr [ebx+4]
 0074BB9F    mov         dl,1
 0074BBA1    call        TFXPPD.DecodeFXPDMsg
 0074BBA6    add         si,1
>0074BBAA    jae         0074BBB1
 0074BBAC    call        @IntOver
 0074BBB1    mov         ebx,dword ptr [ebx]
 0074BBB3    test        ebx,ebx
>0074BBB5    je          0074BBFE
 0074BBB7    lea         eax,[ebx+5]
 0074BBBA    push        eax
 0074BBBB    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074BBC0    mov         eax,dword ptr [eax+0C]
 0074BBC3    movzx       ecx,byte ptr [ebx+4]
 0074BBC7    mov         dl,2
 0074BBC9    call        TFXPPD.DecodeFXPDMsg
 0074BBCE    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074BBD3    mov         eax,dword ptr [eax+0C]
 0074BBD6    movzx       eax,byte ptr [eax+180]
 0074BBDD    mov         edx,eax
 0074BBDF    add         dl,0FD
 0074BBE2    sub         dl,6
>0074BBE5    jae         0074BBF3
 0074BBE7    movzx       eax,al
 0074BBEA    mov         edx,dword ptr ds:[90368C];gvar_0090368C:TFXPanel
 0074BBF0    mov         dword ptr [edx+4],eax
 0074BBF3    add         si,1
>0074BBF7    jae         0074BBFE
 0074BBF9    call        @IntOver
 0074BBFE    mov         eax,esi
 0074BC00    pop         esi
 0074BC01    pop         ebx
 0074BC02    ret
end;*}

//0074BC30
{*function sub_0074BC30(?:?; ?:?):?;
begin
 0074BC30    push        ebx
 0074BC31    push        esi
 0074BC32    mov         ebx,edx
 0074BC34    xor         esi,esi
 0074BC36    test        ebx,ebx
>0074BC38    je          0074BC5F
 0074BC3A    lea         ecx,[ebx+5]
 0074BC3D    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074BC42    mov         eax,dword ptr [eax+10]
 0074BC45    movzx       edx,byte ptr [ebx+4]
 0074BC49    call        TFXPIO.DecodeFXIOMsg
 0074BC4E    add         si,1
>0074BC52    jae         0074BC59
 0074BC54    call        @IntOver
 0074BC59    mov         ebx,dword ptr [ebx]
 0074BC5B    test        ebx,ebx
>0074BC5D    jne         0074BC3A
 0074BC5F    mov         eax,esi
 0074BC61    pop         esi
 0074BC62    pop         ebx
 0074BC63    ret
end;*}

//0074BC64
{*function sub_0074BC64(?:?; ?:?):?;
begin
 0074BC64    push        ebx
 0074BC65    push        esi
 0074BC66    mov         ebx,edx
 0074BC68    xor         esi,esi
 0074BC6A    test        ebx,ebx
>0074BC6C    je          0074BC9B
 0074BC6E    add         si,1
>0074BC72    jae         0074BC79
 0074BC74    call        @IntOver
 0074BC79    lea         eax,[ebx+5]
 0074BC7C    push        eax
 0074BC7D    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074BC82    mov         eax,dword ptr [eax+14]
 0074BC85    movzx       ecx,byte ptr [ebx+4]
 0074BC89    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074BC90    call        TFXPAD.DecodeFXADMsg
 0074BC95    mov         ebx,dword ptr [ebx]
 0074BC97    test        ebx,ebx
>0074BC99    jne         0074BC6E
 0074BC9B    mov         eax,esi
 0074BC9D    pop         esi
 0074BC9E    pop         ebx
 0074BC9F    ret
end;*}

//0074BCA0
{*function sub_0074BCA0(?:?; ?:?):?;
begin
 0074BCA0    push        ebx
 0074BCA1    push        esi
 0074BCA2    mov         ebx,edx
 0074BCA4    xor         esi,esi
 0074BCA6    test        ebx,ebx
>0074BCA8    je          0074BCCF
 0074BCAA    lea         ecx,[ebx+5]
 0074BCAD    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074BCB2    mov         eax,dword ptr [eax+18]
 0074BCB5    movzx       edx,byte ptr [ebx+4]
 0074BCB9    call        TFXPTD.DecodeFXTDMsg
 0074BCBE    add         si,1
>0074BCC2    jae         0074BCC9
 0074BCC4    call        @IntOver
 0074BCC9    mov         ebx,dword ptr [ebx]
 0074BCCB    test        ebx,ebx
>0074BCCD    jne         0074BCAA
 0074BCCF    mov         eax,esi
 0074BCD1    pop         esi
 0074BCD2    pop         ebx
 0074BCD3    ret
end;*}

//0074BCD4
{*function sub_0074BCD4(?:?; ?:?):?;
begin
 0074BCD4    push        ebx
 0074BCD5    push        esi
 0074BCD6    mov         ebx,edx
 0074BCD8    xor         esi,esi
 0074BCDA    test        ebx,ebx
>0074BCDC    je          0074BD0A
 0074BCDE    lea         eax,[ebx+5]
 0074BCE1    push        eax
 0074BCE2    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0074BCE7    mov         eax,dword ptr [eax]
 0074BCE9    movzx       ecx,byte ptr [ebx+4]
 0074BCED    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074BCF4    call        TCGData.DecodeFXCGMsg
 0074BCF9    add         si,1
>0074BCFD    jae         0074BD04
 0074BCFF    call        @IntOver
 0074BD04    mov         ebx,dword ptr [ebx]
 0074BD06    test        ebx,ebx
>0074BD08    jne         0074BCDE
 0074BD0A    mov         eax,esi
 0074BD0C    pop         esi
 0074BD0D    pop         ebx
 0074BD0E    ret
end;*}

//0074BD10
procedure sub_0074BD10(?:TCommTask; ?:Integer);
begin
{*
 0074BD10    push        ebp
 0074BD11    mov         ebp,esp
 0074BD13    push        0
 0074BD15    push        ebx
 0074BD16    push        esi
 0074BD17    mov         esi,edx
 0074BD19    mov         ebx,eax
 0074BD1B    xor         eax,eax
 0074BD1D    push        ebp
 0074BD1E    push        74BDAD
 0074BD23    push        dword ptr fs:[eax]
 0074BD26    mov         dword ptr fs:[eax],esp
 0074BD29    cmp         esi,0FF
>0074BD2F    jbe         0074BD36
 0074BD31    call        @BoundErr
 0074BD36    push        esi
 0074BD37    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BD3C    mov         eax,dword ptr [eax+4]
 0074BD3F    push        eax
 0074BD40    call        dword ptr ds:[9036AC]
 0074BD46    sub         eax,1
>0074BD49    jb          0074BD52
>0074BD4B    je          0074BD81
 0074BD4D    dec         eax
>0074BD4E    je          0074BD8D
>0074BD50    jmp         0074BD97
 0074BD52    dec         esi
 0074BD53    cmp         esi,5
>0074BD56    jbe         0074BD5D
 0074BD58    call        @BoundErr
 0074BD5D    inc         esi
 0074BD5E    mov         ecx,dword ptr [esi*4+7C3ED4];^'
Partially transferred data is invalid!'
 0074BD65    lea         eax,[ebp-4]
 0074BD68    mov         edx,74BDC8;'Receiving '
 0074BD6D    call        @UStrCat3
 0074BD72    mov         ecx,dword ptr [ebp-4]
 0074BD75    mov         dl,11
 0074BD77    mov         eax,dword ptr [ebx+0C]
 0074BD7A    call        0074C4B0
>0074BD7F    jmp         0074BD97
 0074BD81    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BD86    call        0074C548
>0074BD8B    jmp         0074BD97
 0074BD8D    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BD92    call        0074C644
 0074BD97    xor         eax,eax
 0074BD99    pop         edx
 0074BD9A    pop         ecx
 0074BD9B    pop         ecx
 0074BD9C    mov         dword ptr fs:[eax],edx
 0074BD9F    push        74BDB4
 0074BDA4    lea         eax,[ebp-4]
 0074BDA7    call        @UStrClr
 0074BDAC    ret
>0074BDAD    jmp         @HandleFinally
>0074BDB2    jmp         0074BDA4
 0074BDB4    pop         esi
 0074BDB5    pop         ebx
 0074BDB6    pop         ecx
 0074BDB7    pop         ebp
 0074BDB8    ret
*}
end;

//0074BDE0
procedure sub_0074BDE0(?:TCommTask; ?:TMessage);
begin
{*
 0074BDE0    push        ebp
 0074BDE1    mov         ebp,esp
 0074BDE3    add         esp,0FFFFFFE8
 0074BDE6    push        ebx
 0074BDE7    push        esi
 0074BDE8    push        edi
 0074BDE9    xor         ecx,ecx
 0074BDEB    mov         dword ptr [ebp-18],ecx
 0074BDEE    mov         dword ptr [ebp-4],ecx
 0074BDF1    mov         esi,edx
 0074BDF3    lea         edi,[ebp-14]
 0074BDF6    movs        dword ptr [edi],dword ptr [esi]
 0074BDF7    movs        dword ptr [edi],dword ptr [esi]
 0074BDF8    movs        dword ptr [edi],dword ptr [esi]
 0074BDF9    movs        dword ptr [edi],dword ptr [esi]
 0074BDFA    mov         ebx,eax
 0074BDFC    xor         eax,eax
 0074BDFE    push        ebp
 0074BDFF    push        74BF61
 0074BE04    push        dword ptr fs:[eax]
 0074BE07    mov         dword ptr fs:[eax],esp
 0074BE0A    xor         esi,esi
 0074BE0C    mov         eax,dword ptr [ebp-10]
 0074BE0F    dec         eax
>0074BE10    je          0074BF21
 0074BE16    dec         eax
>0074BE17    je          0074BF2D
 0074BE1D    dec         eax
>0074BE1E    je          0074BF39
 0074BE24    dec         eax
>0074BE25    jne         0074BF43
 0074BE2B    mov         eax,dword ptr [ebx+10]
 0074BE2E    cmp         eax,6
>0074BE31    ja          0074BEAE
 0074BE33    jmp         dword ptr [eax*4+74BE3A]
 0074BE33    dd          0074BEAE
 0074BE33    dd          0074BE56
 0074BE33    dd          0074BE65
 0074BE33    dd          0074BE74
 0074BE33    dd          0074BE83
 0074BE33    dd          0074BE92
 0074BE33    dd          0074BEA1
 0074BE56    mov         edx,dword ptr [ebp-0C]
 0074BE59    mov         eax,ebx
 0074BE5B    call        0074BB18
 0074BE60    movzx       esi,ax
>0074BE63    jmp         0074BEAE
 0074BE65    mov         edx,dword ptr [ebp-0C]
 0074BE68    mov         eax,ebx
 0074BE6A    call        0074BB74
 0074BE6F    movzx       esi,ax
>0074BE72    jmp         0074BEAE
 0074BE74    mov         edx,dword ptr [ebp-0C]
 0074BE77    mov         eax,ebx
 0074BE79    call        0074BC30
 0074BE7E    movzx       esi,ax
>0074BE81    jmp         0074BEAE
 0074BE83    mov         edx,dword ptr [ebp-0C]
 0074BE86    mov         eax,ebx
 0074BE88    call        0074BC64
 0074BE8D    movzx       esi,ax
>0074BE90    jmp         0074BEAE
 0074BE92    mov         edx,dword ptr [ebp-0C]
 0074BE95    mov         eax,ebx
 0074BE97    call        0074BCA0
 0074BE9C    movzx       esi,ax
>0074BE9F    jmp         0074BEAE
 0074BEA1    mov         edx,dword ptr [ebp-0C]
 0074BEA4    mov         eax,ebx
 0074BEA6    call        0074BCD4
 0074BEAB    movzx       esi,ax
 0074BEAE    push        74BF7C;'Receiving '
 0074BEB3    mov         eax,dword ptr [ebx+10]
 0074BEB6    dec         eax
 0074BEB7    cmp         eax,5
>0074BEBA    jbe         0074BEC1
 0074BEBC    call        @BoundErr
 0074BEC1    inc         eax
 0074BEC2    push        dword ptr [eax*4+7C3ED4];^'
Partially transferred data is invalid!'
 0074BEC9    push        74BFA0;' succeeded. ('
 0074BECE    lea         edx,[ebp-18]
 0074BED1    mov         eax,esi
 0074BED3    call        IntToStr
 0074BED8    push        dword ptr [ebp-18]
 0074BEDB    push        74BFC8;' records)'
 0074BEE0    lea         eax,[ebp-4]
 0074BEE3    mov         edx,5
 0074BEE8    call        @UStrCatN
 0074BEED    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BEF2    cmp         word ptr [eax+24A],0
>0074BEFA    je          0074BF17
 0074BEFC    mov         eax,dword ptr [ebp-4]
 0074BEFF    push        eax
 0074BF00    mov         esi,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074BF06    mov         ecx,dword ptr [ebx+10]
 0074BF09    mov         dl,11
 0074BF0B    mov         eax,dword ptr [esi+24C]
 0074BF11    call        dword ptr [esi+248]
 0074BF17    mov         eax,dword ptr [ebx+0C]
 0074BF1A    call        0074C0E4
>0074BF1F    jmp         0074BF43
 0074BF21    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BF26    call        0074C644
>0074BF2B    jmp         0074BF43
 0074BF2D    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BF32    call        0074C8C8
>0074BF37    jmp         0074BF43
 0074BF39    mov         eax,[00903690];gvar_00903690:TCommManager
 0074BF3E    call        0074C808
 0074BF43    xor         eax,eax
 0074BF45    pop         edx
 0074BF46    pop         ecx
 0074BF47    pop         ecx
 0074BF48    mov         dword ptr fs:[eax],edx
 0074BF4B    push        74BF68
 0074BF50    lea         eax,[ebp-18]
 0074BF53    call        @UStrClr
 0074BF58    lea         eax,[ebp-4]
 0074BF5B    call        @UStrClr
 0074BF60    ret
>0074BF61    jmp         @HandleFinally
>0074BF66    jmp         0074BF50
 0074BF68    pop         edi
 0074BF69    pop         esi
 0074BF6A    pop         ebx
 0074BF6B    mov         esp,ebp
 0074BF6D    pop         ebp
 0074BF6E    ret
*}
end;

//0074BFDC
procedure TCommTask.ExecuteTask;
begin
{*
 0074BFDC    movzx       edx,byte ptr [eax+14];TCommTask.FActionToDo:ActionsToDo
 0074BFE0    dec         dl
>0074BFE2    je          0074BFEA
 0074BFE4    dec         dl
>0074BFE6    je          0074BFF3
>0074BFE8    jmp         0074BFFB
 0074BFEA    mov         edx,dword ptr [eax+10];TCommTask.FDataSection:Integer
 0074BFED    call        0074B828
 0074BFF2    ret
 0074BFF3    mov         edx,dword ptr [eax+10];TCommTask.FDataSection:Integer
 0074BFF6    call        0074BD10
 0074BFFB    ret
*}
end;

//0074BFFC
constructor TCommManager.Create;
begin
{*
 0074BFFC    push        ebx
 0074BFFD    push        esi
 0074BFFE    test        dl,dl
>0074C000    je          0074C00A
 0074C002    add         esp,0FFFFFFF0
 0074C005    call        @ClassCreate
 0074C00A    mov         ebx,edx
 0074C00C    mov         esi,eax
 0074C00E    push        esi
 0074C00F    push        74FBD0;TCommManager.WndProc
 0074C014    call        AllocateHWnd
 0074C019    mov         dword ptr [esi+4],eax;TCommManager.handle:HWND
 0074C01C    mov         cl,1
 0074C01E    mov         dl,1
 0074C020    mov         eax,[0074A4AC];TObjectList<FXCommMgr.TCommTask>
 0074C025    call        0075011C
 0074C02A    mov         dword ptr [esi+1C],eax;TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074C02D    mov         dword ptr [esi+24],0FFFFFFFF;TCommManager.CommTaskIndex:Integer
 0074C034    mov         eax,esi
 0074C036    test        bl,bl
>0074C038    je          0074C049
 0074C03A    call        @AfterConstruction
 0074C03F    pop         dword ptr fs:[0]
 0074C046    add         esp,0C
 0074C049    mov         eax,esi
 0074C04B    pop         esi
 0074C04C    pop         ebx
 0074C04D    ret
*}
end;

//0074C050
destructor TCommManager.Destroy();
begin
{*
 0074C050    push        ebx
 0074C051    push        esi
 0074C052    call        @BeforeDestruction
 0074C057    mov         ebx,edx
 0074C059    mov         esi,eax
 0074C05B    mov         eax,dword ptr [esi+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074C05E    call        TObject.Free
 0074C063    mov         eax,dword ptr [esi+8];TCommManager.hDll:NativeUInt
 0074C066    push        eax
 0074C067    call        kernel32.FreeLibrary
 0074C06C    mov         eax,dword ptr [esi+4];TCommManager.handle:HWND
 0074C06F    call        DeallocateHWnd
 0074C074    mov         dl,0FC
 0074C076    and         dl,bl
 0074C078    mov         eax,esi
 0074C07A    call        TObject.Destroy
 0074C07F    test        bl,bl
>0074C081    jle         0074C08A
 0074C083    mov         eax,esi
 0074C085    call        @ClassDestroy
 0074C08A    pop         esi
 0074C08B    pop         ebx
 0074C08C    ret
*}
end;

//0074C090
{*procedure sub_0074C090(?:?);
begin
 0074C090    push        ebx
 0074C091    push        esi
 0074C092    push        edi
 0074C093    mov         ebx,eax
 0074C095    mov         eax,dword ptr [ebx+1C]
 0074C098    mov         eax,dword ptr [eax+8]
 0074C09B    mov         edx,dword ptr [ebx+24]
 0074C09E    add         edx,1
>0074C0A1    jno         0074C0A8
 0074C0A3    call        @IntOver
 0074C0A8    cmp         eax,edx
>0074C0AA    jle         0074C0D7
 0074C0AC    add         dword ptr [ebx+24],1
>0074C0B0    jno         0074C0B7
 0074C0B2    call        @IntOver
 0074C0B7    mov         esi,dword ptr [ebx+1C]
 0074C0BA    mov         edi,dword ptr [ebx+24]
 0074C0BD    lea         eax,[esi+8]
 0074C0C0    mov         edx,edi
 0074C0C2    call        00434534
 0074C0C7    mov         eax,dword ptr [esi+20]
 0074C0CA    mov         eax,dword ptr [eax+edi*4]
 0074C0CD    mov         dword ptr [ebx+20],eax
 0074C0D0    call        TCommTask.ExecuteTask
>0074C0D5    jmp         0074C0DE
 0074C0D7    mov         eax,ebx
 0074C0D9    call        0074E728
 0074C0DE    pop         edi
 0074C0DF    pop         esi
 0074C0E0    pop         ebx
 0074C0E1    ret
end;*}

//0074C0E4
procedure sub_0074C0E4;
begin
{*
 0074C0E4    call        0074C090
 0074C0E9    ret
*}
end;

//0074C0EC
function TCommManager.CommDllOk:Boolean;
begin
{*
 0074C0EC    push        ebx
 0074C0ED    push        esi
 0074C0EE    mov         ebx,eax
 0074C0F0    xor         eax,eax
 0074C0F2    mov         dword ptr [ebx+238],eax;TCommManager.DllError:Integer
 0074C0F8    cmp         dword ptr [ebx+8],0;TCommManager.hDll:NativeUInt
>0074C0FC    jne         0074C248
 0074C102    push        74C270;'essdl32usb.dll'
 0074C107    call        kernel32.LoadLibraryW
 0074C10C    mov         esi,eax
 0074C10E    mov         dword ptr [ebx+8],esi;TCommManager.hDll:NativeUInt
 0074C111    test        esi,esi
>0074C113    jne         0074C12E
 0074C115    call        kernel32.GetLastError
 0074C11A    test        eax,eax
>0074C11C    jns         0074C123
 0074C11E    call        @BoundErr
 0074C123    mov         dword ptr [ebx+238],eax;TCommManager.DllError:Integer
>0074C129    jmp         0074C248
 0074C12E    push        104
 0074C133    lea         eax,[ebx+28];TCommManager.DllPath:?
 0074C136    push        eax
 0074C137    push        esi
 0074C138    call        kernel32.GetModuleFileNameW
 0074C13D    test        eax,eax
>0074C13F    jns         0074C146
 0074C141    call        @BoundErr
 0074C146    mov         dword ptr [ebx+234],eax;TCommManager.DllPathLen:Integer
 0074C14C    push        74C290;'SDL_SetComm'
 0074C151    mov         eax,dword ptr [ebx+8];TCommManager.hDll:NativeUInt
 0074C154    push        eax
 0074C155    call        GetProcAddress
 0074C15A    mov         esi,eax
 0074C15C    mov         dword ptr ds:[9036A0],esi;gvar_009036A0:Pointer
 0074C162    test        esi,esi
>0074C164    jne         0074C170
 0074C166    mov         dword ptr [ebx+238],0FFFFFFFF;TCommManager.DllError:Integer
 0074C170    push        74C2A8;'SDL_Open'
 0074C175    mov         eax,dword ptr [ebx+8];TCommManager.hDll:NativeUInt
 0074C178    push        eax
 0074C179    call        GetProcAddress
 0074C17E    mov         esi,eax
 0074C180    mov         dword ptr ds:[9036A4],esi;gvar_009036A4:Pointer
 0074C186    test        esi,esi
>0074C188    jne         0074C194
 0074C18A    mov         dword ptr [ebx+238],0FFFFFFFE;TCommManager.DllError:Integer
 0074C194    push        74C2BC;'SDL_Transmit'
 0074C199    mov         eax,dword ptr [ebx+8];TCommManager.hDll:NativeUInt
 0074C19C    push        eax
 0074C19D    call        GetProcAddress
 0074C1A2    mov         esi,eax
 0074C1A4    mov         dword ptr ds:[9036A8],esi;gvar_009036A8:Pointer
 0074C1AA    test        esi,esi
>0074C1AC    jne         0074C1B8
 0074C1AE    mov         dword ptr [ebx+238],0FFFFFFFE;TCommManager.DllError:Integer
 0074C1B8    push        74C2D8;'SDL_Receive'
 0074C1BD    mov         eax,dword ptr [ebx+8];TCommManager.hDll:NativeUInt
 0074C1C0    push        eax
 0074C1C1    call        GetProcAddress
 0074C1C6    mov         esi,eax
 0074C1C8    mov         dword ptr ds:[9036AC],esi;gvar_009036AC:Pointer
 0074C1CE    test        esi,esi
>0074C1D0    jne         0074C1DC
 0074C1D2    mov         dword ptr [ebx+238],0FFFFFFFE;TCommManager.DllError:Integer
 0074C1DC    push        74C2F0;'SDL_Close'
 0074C1E1    mov         eax,dword ptr [ebx+8];TCommManager.hDll:NativeUInt
 0074C1E4    push        eax
 0074C1E5    call        GetProcAddress
 0074C1EA    mov         esi,eax
 0074C1EC    mov         dword ptr ds:[9036B0],esi;gvar_009036B0:Pointer
 0074C1F2    test        esi,esi
>0074C1F4    jne         0074C200
 0074C1F6    mov         dword ptr [ebx+238],0FFFFFFFE;TCommManager.DllError:Integer
 0074C200    push        74C304;'SDL_Send'
 0074C205    mov         eax,dword ptr [ebx+8];TCommManager.hDll:NativeUInt
 0074C208    push        eax
 0074C209    call        GetProcAddress
 0074C20E    mov         esi,eax
 0074C210    mov         dword ptr ds:[9036B4],esi;gvar_009036B4:Pointer
 0074C216    test        esi,esi
>0074C218    jne         0074C224
 0074C21A    mov         dword ptr [ebx+238],0FFFFFFFE;TCommManager.DllError:Integer
 0074C224    push        74C318;'SDL_ToConfigState'
 0074C229    mov         eax,dword ptr [ebx+8];TCommManager.hDll:NativeUInt
 0074C22C    push        eax
 0074C22D    call        GetProcAddress
 0074C232    mov         esi,eax
 0074C234    mov         dword ptr ds:[9036B8],esi;gvar_009036B8:Pointer
 0074C23A    test        esi,esi
>0074C23C    jne         0074C248
 0074C23E    mov         dword ptr [ebx+238],0FFFFFFFE;TCommManager.DllError:Integer
 0074C248    cmp         dword ptr [ebx+238],0;TCommManager.DllError:Integer
>0074C24F    jne         0074C256
 0074C251    mov         al,1
 0074C253    pop         esi
 0074C254    pop         ebx
 0074C255    ret
 0074C256    push        0
 0074C258    movzx       ecx,word ptr ds:[74C33C];0x4 gvar_0074C33C
 0074C25F    xor         edx,edx
 0074C261    mov         eax,74C34C;'Module EsSDL32usb.dll not found, communication with the panel is not possibl...
 0074C266    call        MessageDlg
 0074C26B    xor         eax,eax
 0074C26D    pop         esi
 0074C26E    pop         ebx
 0074C26F    ret
*}
end;

//0074C3EC
{*procedure sub_0074C3EC(?:?; ?:?);
begin
 0074C3EC    push        ebp
 0074C3ED    mov         ebp,esp
 0074C3EF    push        ebx
 0074C3F0    mov         ebx,dword ptr [ebp+8]
 0074C3F3    mov         eax,dword ptr [ebp+0C]
 0074C3F6    sub         edx,1
>0074C3F9    jb          0074C402
>0074C3FB    je          0074C410
 0074C3FD    dec         edx
>0074C3FE    je          0074C41E
>0074C400    jmp         0074C42C
 0074C402    mov         dword ptr [ecx],22
 0074C408    mov         byte ptr [eax],20
 0074C40B    mov         byte ptr [ebx],48
>0074C40E    jmp         0074C438
 0074C410    mov         dword ptr [ecx],21
 0074C416    mov         byte ptr [eax],20
 0074C419    mov         byte ptr [ebx],48
>0074C41C    jmp         0074C438
 0074C41E    mov         dword ptr [ecx],17
 0074C424    mov         byte ptr [eax],7
 0074C427    mov         byte ptr [ebx],8
>0074C42A    jmp         0074C438
 0074C42C    mov         dword ptr [ecx],21
 0074C432    mov         byte ptr [eax],20
 0074C435    mov         byte ptr [ebx],48
 0074C438    pop         ebx
 0074C439    pop         ebp
 0074C43A    ret         8
end;*}

//0074C440
{*procedure sub_0074C440(?:?);
begin
 0074C440    push        ebx
 0074C441    push        esi
 0074C442    mov         ebx,eax
 0074C444    cmp         dword ptr [ebx+0C],0
>0074C448    jne         0074C465
 0074C44A    mov         eax,104
 0074C44F    call        AllocMem
 0074C454    mov         esi,eax
 0074C456    mov         dword ptr [ebx+0C],esi
 0074C459    mov         eax,esi
 0074C45B    mov         dword ptr [ebx+10],eax
 0074C45E    xor         edx,edx
 0074C460    mov         dword ptr [eax],edx
 0074C462    pop         esi
 0074C463    pop         ebx
 0074C464    ret
 0074C465    mov         eax,104
 0074C46A    call        AllocMem
 0074C46F    mov         esi,eax
 0074C471    mov         eax,dword ptr [ebx+10]
 0074C474    mov         dword ptr [eax],esi
 0074C476    mov         eax,esi
 0074C478    mov         dword ptr [ebx+10],eax
 0074C47B    xor         edx,edx
 0074C47D    mov         dword ptr [eax],edx
 0074C47F    pop         esi
 0074C480    pop         ebx
 0074C481    ret
end;*}

//0074C484
{*procedure sub_0074C484(?:?);
begin
 0074C484    push        ebx
 0074C485    mov         ebx,eax
 0074C487    xor         eax,eax
 0074C489    mov         dword ptr [ebx+10],eax
 0074C48C    mov         eax,dword ptr [ebx+0C]
 0074C48F    test        eax,eax
>0074C491    je          0074C4A6
 0074C493    mov         eax,dword ptr [eax]
 0074C495    mov         dword ptr [ebx+10],eax
 0074C498    mov         eax,dword ptr [ebx+0C]
 0074C49B    call        @FreeMem
 0074C4A0    mov         eax,dword ptr [ebx+10]
 0074C4A3    mov         dword ptr [ebx+0C],eax
 0074C4A6    cmp         dword ptr [ebx+10],0
>0074C4AA    jne         0074C487
 0074C4AC    pop         ebx
 0074C4AD    ret
end;*}

//0074C4B0
{*procedure sub_0074C4B0(?:TCommManager; ?:?; ?:UString);
begin
 0074C4B0    push        ebp
 0074C4B1    mov         ebp,esp
 0074C4B3    push        ecx
 0074C4B4    push        ebx
 0074C4B5    push        esi
 0074C4B6    mov         dword ptr [ebp-4],ecx
 0074C4B9    mov         ebx,edx
 0074C4BB    mov         esi,eax
 0074C4BD    mov         eax,dword ptr [ebp-4]
 0074C4C0    call        @UStrAddRef
 0074C4C5    xor         eax,eax
 0074C4C7    push        ebp
 0074C4C8    push        74C53B
 0074C4CD    push        dword ptr fs:[eax]
 0074C4D0    mov         dword ptr fs:[eax],esp
 0074C4D3    mov         byte ptr [esi+15],bl
 0074C4D6    cmp         word ptr [esi+242],0
>0074C4DE    je          0074C4F1
 0074C4E0    mov         ecx,dword ptr [ebp-4]
 0074C4E3    mov         dl,5
 0074C4E5    mov         eax,dword ptr [esi+244]
 0074C4EB    call        dword ptr [esi+240]
 0074C4F1    test        bl,bl
>0074C4F3    jne         0074C507
 0074C4F5    mov         eax,dword ptr [esi+1C]
 0074C4F8    add         eax,8
 0074C4FB    call        00434988
 0074C500    mov         dword ptr [esi+24],0FFFFFFFF
 0074C507    cmp         word ptr [esi+24A],0
>0074C50F    je          0074C525
 0074C511    mov         eax,dword ptr [ebp-4]
 0074C514    push        eax
 0074C515    mov         edx,ebx
 0074C517    xor         ecx,ecx
 0074C519    mov         eax,dword ptr [esi+24C]
 0074C51F    call        dword ptr [esi+248]
 0074C525    xor         eax,eax
 0074C527    pop         edx
 0074C528    pop         ecx
 0074C529    pop         ecx
 0074C52A    mov         dword ptr fs:[eax],edx
 0074C52D    push        74C542
 0074C532    lea         eax,[ebp-4]
 0074C535    call        @UStrClr
 0074C53A    ret
>0074C53B    jmp         @HandleFinally
>0074C540    jmp         0074C532
 0074C542    pop         esi
 0074C543    pop         ebx
 0074C544    pop         ecx
 0074C545    pop         ebp
 0074C546    ret
end;*}

//0074C548
procedure sub_0074C548(?:TCommManager);
begin
{*
 0074C548    push        ebx
 0074C549    mov         ebx,eax
 0074C54B    mov         byte ptr [ebx+14],0
 0074C54F    mov         ecx,74C5A0;'SDL Server is occupied.'
 0074C554    xor         edx,edx
 0074C556    mov         eax,ebx
 0074C558    call        0074C4B0
 0074C55D    cmp         word ptr [ebx+242],0
>0074C565    je          0074C57C
 0074C567    mov         ecx,74C5DC;'Cannot continue'
 0074C56C    mov         dl,6
 0074C56E    mov         eax,dword ptr [ebx+244]
 0074C574    call        dword ptr [ebx+240]
 0074C57A    pop         ebx
 0074C57B    ret
 0074C57C    push        0
 0074C57E    movzx       ecx,word ptr ds:[74C5FC];0x4 gvar_0074C5FC
 0074C585    mov         dl,1
 0074C587    mov         eax,74C60C;'The SDL Server is occupied'
 0074C58C    call        MessageDlg
 0074C591    pop         ebx
 0074C592    ret
*}
end;

//0074C644
{*procedure sub_0074C644(?:?);
begin
 0074C644    push        ebx
 0074C645    push        esi
 0074C646    movzx       ebx,byte ptr [eax+14]
 0074C64A    mov         byte ptr [eax+14],0
 0074C64E    mov         ecx,74C750;'Connection is closed.'
 0074C653    xor         edx,edx
 0074C655    call        0074C4B0
 0074C65A    xor         eax,eax
 0074C65C    mov         [00903698],eax;gvar_00903698
 0074C661    mov         eax,[00903690];gvar_00903690:TCommManager
 0074C666    cmp         word ptr [eax+242],0
>0074C66E    je          0074C6CF
 0074C670    mov         eax,ebx
 0074C672    dec         al
>0074C674    je          0074C680
 0074C676    sub         al,2
>0074C678    je          0074C69B
 0074C67A    dec         al
>0074C67C    je          0074C6B6
>0074C67E    jmp         0074C6CF
 0074C680    mov         esi,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074C686    mov         ecx,74C788;'Configured'
 0074C68B    mov         dl,3
 0074C68D    mov         eax,dword ptr [esi+244]
 0074C693    call        dword ptr [esi+240]
>0074C699    jmp         0074C6CF
 0074C69B    mov         esi,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074C6A1    mov         ecx,74C7AC;'Restarted'
 0074C6A6    mov         dl,4
 0074C6A8    mov         eax,dword ptr [esi+244]
 0074C6AE    call        dword ptr [esi+240]
>0074C6B4    jmp         0074C6CF
 0074C6B6    mov         esi,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074C6BC    mov         ecx,74C7CC;'Prepared'
 0074C6C1    mov         dl,2
 0074C6C3    mov         eax,dword ptr [esi+244]
 0074C6C9    call        dword ptr [esi+240]
 0074C6CF    mov         eax,[00903690];gvar_00903690:TCommManager
 0074C6D4    cmp         word ptr [eax+24A],0
>0074C6DC    je          0074C741
 0074C6DE    dec         bl
>0074C6E0    je          0074C6EC
 0074C6E2    dec         bl
>0074C6E4    je          0074C709
 0074C6E6    dec         bl
>0074C6E8    je          0074C726
>0074C6EA    jmp         0074C741
 0074C6EC    push        74C7EC;'Session ended'
 0074C6F1    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074C6F7    xor         ecx,ecx
 0074C6F9    mov         dl,15
 0074C6FB    mov         eax,dword ptr [ebx+24C]
 0074C701    call        dword ptr [ebx+248]
>0074C707    jmp         0074C741
 0074C709    push        74C7EC;'Session ended'
 0074C70E    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074C714    xor         ecx,ecx
 0074C716    mov         dl,15
 0074C718    mov         eax,dword ptr [ebx+24C]
 0074C71E    call        dword ptr [ebx+248]
>0074C724    jmp         0074C741
 0074C726    push        74C7AC;'Restarted'
 0074C72B    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074C731    xor         ecx,ecx
 0074C733    mov         dl,13
 0074C735    mov         eax,dword ptr [ebx+24C]
 0074C73B    call        dword ptr [ebx+248]
 0074C741    pop         esi
 0074C742    pop         ebx
 0074C743    ret
end;*}

//0074C808
{*procedure sub_0074C808(?:?);
begin
 0074C808    push        ebx
 0074C809    mov         byte ptr [eax+14],0
 0074C80D    mov         ecx,74C860;'User aborted the connection.'
 0074C812    mov         dl,2
 0074C814    call        0074C4B0
 0074C819    mov         eax,[00903690];gvar_00903690:TCommManager
 0074C81E    cmp         word ptr [eax+242],0
>0074C826    je          0074C841
 0074C828    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074C82E    mov         ecx,74C8A8;'Cannot continue'
 0074C833    mov         dl,6
 0074C835    mov         eax,dword ptr [ebx+244]
 0074C83B    call        dword ptr [ebx+240]
 0074C841    mov         eax,[00903690];gvar_00903690:TCommManager
 0074C846    mov         eax,dword ptr [eax+4]
 0074C849    push        eax
 0074C84A    call        dword ptr ds:[9036B0]
 0074C850    pop         ebx
 0074C851    ret
end;*}

//0074C8C8
{*procedure sub_0074C8C8(?:?);
begin
 0074C8C8    push        ebx
 0074C8C9    mov         byte ptr [eax+14],0
 0074C8CD    mov         ecx,74C920;'SDL Server failed (Panel might be incompatible).'
 0074C8D2    mov         dl,2
 0074C8D4    call        0074C4B0
 0074C8D9    mov         eax,[00903690];gvar_00903690:TCommManager
 0074C8DE    cmp         word ptr [eax+242],0
>0074C8E6    je          0074C901
 0074C8E8    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074C8EE    mov         ecx,74C990;'Cannot continue'
 0074C8F3    mov         dl,6
 0074C8F5    mov         eax,dword ptr [ebx+244]
 0074C8FB    call        dword ptr [ebx+240]
 0074C901    mov         eax,[00903690];gvar_00903690:TCommManager
 0074C906    mov         eax,dword ptr [eax+4]
 0074C909    push        eax
 0074C90A    call        dword ptr ds:[9036B0]
 0074C910    pop         ebx
 0074C911    ret
end;*}

//0074C9B0
procedure sub_0074C9B0(?:TCommManager);
begin
{*
 0074C9B0    push        ebx
 0074C9B1    mov         ebx,eax
 0074C9B3    mov         ecx,74CA04;'Connection is closed.'
 0074C9B8    xor         edx,edx
 0074C9BA    mov         eax,ebx
 0074C9BC    call        0074C4B0
 0074C9C1    cmp         word ptr [ebx+242],0
>0074C9C9    je          0074C9E0
 0074C9CB    mov         ecx,74CA3C;'Internal error in the SDL Server'
 0074C9D0    mov         dl,6
 0074C9D2    mov         eax,dword ptr [ebx+244]
 0074C9D8    call        dword ptr [ebx+240]
 0074C9DE    pop         ebx
 0074C9DF    ret
 0074C9E0    push        0
 0074C9E2    movzx       ecx,word ptr ds:[74CA80];0x4 gvar_0074CA80
 0074C9E9    mov         dl,1
 0074C9EB    mov         eax,74CA3C;'Internal error in the SDL Server'
 0074C9F0    call        MessageDlg
 0074C9F5    pop         ebx
 0074C9F6    ret
*}
end;

//0074CA84
procedure sub_0074CA84(?:TCommManager);
begin
{*
 0074CA84    push        ebx
 0074CA85    mov         ebx,eax
 0074CA87    mov         ecx,74CAD8;'The SDL Server could not be opened'
 0074CA8C    xor         edx,edx
 0074CA8E    mov         eax,ebx
 0074CA90    call        0074C4B0
 0074CA95    cmp         word ptr [ebx+242],0
>0074CA9D    je          0074CAB4
 0074CA9F    mov         ecx,74CAD8;'The SDL Server could not be opened'
 0074CAA4    mov         dl,6
 0074CAA6    mov         eax,dword ptr [ebx+244]
 0074CAAC    call        dword ptr [ebx+240]
 0074CAB2    pop         ebx
 0074CAB3    ret
 0074CAB4    push        0
 0074CAB6    movzx       ecx,word ptr ds:[74CB20];0x4 gvar_0074CB20
 0074CABD    mov         dl,1
 0074CABF    mov         eax,74CAD8;'The SDL Server could not be opened'
 0074CAC4    call        MessageDlg
 0074CAC9    pop         ebx
 0074CACA    ret
*}
end;

//0074CB24
{*function sub_0074CB24(?:?):?;
begin
 0074CB24    push        ebx
 0074CB25    push        esi
 0074CB26    push        ecx
 0074CB27    mov         esi,eax
 0074CB29    xor         ebx,ebx
 0074CB2B    mov         eax,esi
 0074CB2D    call        0074C484
 0074CB32    mov         eax,esp
 0074CB34    xor         ecx,ecx
 0074CB36    mov         edx,3
 0074CB3B    call        @FillChar
 0074CB40    mov         eax,esi
 0074CB42    call        0074C440
 0074CB47    mov         byte ptr [esp],5
 0074CB4B    mov         byte ptr [esp+1],0
 0074CB50    mov         byte ptr [esp+2],0
 0074CB55    mov         eax,dword ptr [esi+10]
 0074CB58    mov         dl,3
 0074CB5A    mov         byte ptr [eax+4],dl
 0074CB5D    movzx       ecx,dl
 0074CB60    mov         edx,esp
 0074CB62    add         eax,5
 0074CB65    xchg        eax,edx
 0074CB66    call        Move
 0074CB6B    mov         ax,word ptr [esp]
 0074CB6F    mov         word ptr [esi+16],ax
 0074CB73    mov         al,byte ptr [esp+2]
 0074CB77    mov         byte ptr [esi+18],al
 0074CB7A    mov         ecx,74CBD0;'Sending command.'
 0074CB7F    mov         dl,13
 0074CB81    mov         eax,esi
 0074CB83    call        0074C4B0
 0074CB88    mov         eax,dword ptr [esi+0C]
 0074CB8B    push        eax
 0074CB8C    mov         eax,[00903690];gvar_00903690:TCommManager
 0074CB91    mov         eax,dword ptr [eax+4]
 0074CB94    push        eax
 0074CB95    call        dword ptr ds:[9036B4]
 0074CB9B    sub         eax,1
>0074CB9E    jb          0074CBA7
>0074CBA0    je          0074CBAB
 0074CBA2    dec         eax
>0074CBA3    je          0074CBB4
>0074CBA5    jmp         0074CBBB
 0074CBA7    mov         bl,1
>0074CBA9    jmp         0074CBBB
 0074CBAB    mov         eax,esi
 0074CBAD    call        0074C548
>0074CBB2    jmp         0074CBBB
 0074CBB4    mov         eax,esi
 0074CBB6    call        0074C644
 0074CBBB    mov         eax,ebx
 0074CBBD    pop         edx
 0074CBBE    pop         esi
 0074CBBF    pop         ebx
 0074CBC0    ret
end;*}

//0074CBF4
{*function sub_0074CBF4(?:?; ?:?):?;
begin
 0074CBF4    push        ebx
 0074CBF5    xor         ecx,ecx
 0074CBF7    cmp         byte ptr [edx+5],6
>0074CBFB    jne         0074CC11
 0074CBFD    movzx       ebx,byte ptr [edx+6]
 0074CC01    cmp         bl,byte ptr [eax+17]
>0074CC04    jne         0074CC11
 0074CC06    movzx       edx,byte ptr [edx+7]
 0074CC0A    cmp         dl,byte ptr [eax+18]
>0074CC0D    jne         0074CC11
 0074CC0F    mov         cl,1
 0074CC11    mov         eax,ecx
 0074CC13    pop         ebx
 0074CC14    ret
end;*}

//0074CC18
procedure sub_0074CC18(?:TCommManager; ?:TMessage);
begin
{*
 0074CC18    push        ebp
 0074CC19    mov         ebp,esp
 0074CC1B    add         esp,0FFFFFFE0
 0074CC1E    push        ebx
 0074CC1F    push        esi
 0074CC20    push        edi
 0074CC21    xor         ecx,ecx
 0074CC23    mov         dword ptr [ebp-18],ecx
 0074CC26    mov         dword ptr [ebp-4],ecx
 0074CC29    mov         esi,edx
 0074CC2B    lea         edi,[ebp-14]
 0074CC2E    movs        dword ptr [edi],dword ptr [esi]
 0074CC2F    movs        dword ptr [edi],dword ptr [esi]
 0074CC30    movs        dword ptr [edi],dword ptr [esi]
 0074CC31    movs        dword ptr [edi],dword ptr [esi]
 0074CC32    xor         eax,eax
 0074CC34    push        ebp
 0074CC35    push        74CCE1
 0074CC3A    push        dword ptr fs:[eax]
 0074CC3D    mov         dword ptr fs:[eax],esp
 0074CC40    mov         ebx,dword ptr [ebp-10]
 0074CC43    mov         eax,ebx
 0074CC45    sub         eax,0B
>0074CC48    jne         0074CC80
 0074CC4A    mov         eax,[00903690];gvar_00903690:TCommManager
 0074CC4F    cmp         word ptr [eax+24A],0
>0074CC57    je          0074CCC3
 0074CC59    lea         eax,[ebp-18]
 0074CC5C    mov         edx,dword ptr [ebp-0C]
 0074CC5F    call        @UStrFromPChar
 0074CC64    mov         eax,dword ptr [ebp-18]
 0074CC67    push        eax
 0074CC68    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074CC6E    xor         ecx,ecx
 0074CC70    xor         edx,edx
 0074CC72    mov         eax,dword ptr [ebx+24C]
 0074CC78    call        dword ptr [ebx+248]
>0074CC7E    jmp         0074CCC3
 0074CC80    lea         eax,[ebp-4]
 0074CC83    push        eax
 0074CC84    mov         dword ptr [ebp-20],ebx
 0074CC87    mov         byte ptr [ebp-1C],0
 0074CC8B    lea         edx,[ebp-20]
 0074CC8E    xor         ecx,ecx
 0074CC90    mov         eax,74CCFC;'Unexpected SDL message (%d) in chsWaitingForAction'
 0074CC95    call        Format
 0074CC9A    mov         eax,[00903690];gvar_00903690:TCommManager
 0074CC9F    cmp         word ptr [eax+24A],0
>0074CCA7    je          0074CCC3
 0074CCA9    mov         eax,dword ptr [ebp-4]
 0074CCAC    push        eax
 0074CCAD    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074CCB3    xor         ecx,ecx
 0074CCB5    xor         edx,edx
 0074CCB7    mov         eax,dword ptr [ebx+24C]
 0074CCBD    call        dword ptr [ebx+248]
 0074CCC3    xor         eax,eax
 0074CCC5    pop         edx
 0074CCC6    pop         ecx
 0074CCC7    pop         ecx
 0074CCC8    mov         dword ptr fs:[eax],edx
 0074CCCB    push        74CCE8
 0074CCD0    lea         eax,[ebp-18]
 0074CCD3    call        @UStrClr
 0074CCD8    lea         eax,[ebp-4]
 0074CCDB    call        @UStrClr
 0074CCE0    ret
>0074CCE1    jmp         @HandleFinally
>0074CCE6    jmp         0074CCD0
 0074CCE8    pop         edi
 0074CCE9    pop         esi
 0074CCEA    pop         ebx
 0074CCEB    mov         esp,ebp
 0074CCED    pop         ebp
 0074CCEE    ret
*}
end;

//0074CDE0
{*procedure sub_0074CDE0(?:Byte; ?:?; ?:?);
begin
 0074CDE0    push        ebp
 0074CDE1    mov         ebp,esp
 0074CDE3    push        ecx
 0074CDE4    push        ebx
 0074CDE5    push        esi
 0074CDE6    mov         dword ptr [ebp-4],ecx
 0074CDE9    mov         ebx,edx
 0074CDEB    mov         esi,eax
 0074CDED    mov         eax,dword ptr [ebp-4]
 0074CDF0    call        @UStrAddRef
 0074CDF5    xor         eax,eax
 0074CDF7    push        ebp
 0074CDF8    push        74CE26
 0074CDFD    push        dword ptr fs:[eax]
 0074CE00    mov         dword ptr fs:[eax],esp
 0074CE03    mov         byte ptr [esi],bl
 0074CE05    lea         eax,[esi+4]
 0074CE08    mov         edx,dword ptr [ebp-4]
 0074CE0B    call        @UStrAsg
 0074CE10    xor         eax,eax
 0074CE12    pop         edx
 0074CE13    pop         ecx
 0074CE14    pop         ecx
 0074CE15    mov         dword ptr fs:[eax],edx
 0074CE18    push        74CE2D
 0074CE1D    lea         eax,[ebp-4]
 0074CE20    call        @UStrClr
 0074CE25    ret
>0074CE26    jmp         @HandleFinally
>0074CE2B    jmp         0074CE1D
 0074CE2D    pop         esi
 0074CE2E    pop         ebx
 0074CE2F    pop         ecx
 0074CE30    pop         ebp
 0074CE31    ret
end;*}

//0074CE9C
procedure sub_0074CE9C(?:TCommManager; ?:TMessage);
begin
{*
 0074CE9C    push        ebp
 0074CE9D    mov         ebp,esp
 0074CE9F    mov         ecx,16
 0074CEA4    push        0
 0074CEA6    push        0
 0074CEA8    dec         ecx
>0074CEA9    jne         0074CEA4
 0074CEAB    push        ebx
 0074CEAC    push        esi
 0074CEAD    push        edi
 0074CEAE    mov         esi,edx
 0074CEB0    lea         edi,[ebp-18]
 0074CEB3    movs        dword ptr [edi],dword ptr [esi]
 0074CEB4    movs        dword ptr [edi],dword ptr [esi]
 0074CEB5    movs        dword ptr [edi],dword ptr [esi]
 0074CEB6    movs        dword ptr [edi],dword ptr [esi]
 0074CEB7    mov         ebx,eax
 0074CEB9    lea         eax,[ebp-8]
 0074CEBC    mov         edx,dword ptr ds:[74CD64];TConnectionError
 0074CEC2    call        @AddRefRecord
 0074CEC7    xor         eax,eax
 0074CEC9    push        ebp
 0074CECA    push        74DB06
 0074CECF    push        dword ptr fs:[eax]
 0074CED2    mov         dword ptr fs:[eax],esp
 0074CED5    mov         esi,dword ptr [ebp-14]
 0074CED8    mov         eax,esi
 0074CEDA    sub         eax,1
>0074CEDD    jb          0074CEF8
>0074CEDF    je          0074DA6E
 0074CEE5    dec         eax
>0074CEE6    je          0074DA77
 0074CEEC    dec         eax
>0074CEED    je          0074DA80
>0074CEF3    jmp         0074DA89
 0074CEF8    lea         eax,[ebp-8]
 0074CEFB    xor         ecx,ecx
 0074CEFD    xor         edx,edx
 0074CEFF    call        0074CDE0
 0074CF04    movzx       eax,word ptr [ebp-0E]
 0074CF08    mov         [00903698],eax;gvar_00903698
 0074CF0D    cmp         dword ptr ds:[903698],22;gvar_00903698
>0074CF14    je          0074CF56
 0074CF16    cmp         dword ptr ds:[903698],21;gvar_00903698
>0074CF1D    je          0074CF56
 0074CF1F    cmp         dword ptr ds:[903698],17;gvar_00903698
>0074CF26    je          0074CF56
 0074CF28    lea         eax,[ebp-1C]
 0074CF2B    push        eax
 0074CF2C    mov         eax,[00903698];gvar_00903698
 0074CF31    mov         dword ptr [ebp-24],eax
 0074CF34    mov         byte ptr [ebp-20],0
 0074CF38    lea         edx,[ebp-24]
 0074CF3B    xor         ecx,ecx
 0074CF3D    mov         eax,74DB20;'Connected to UNKNOWN, ID = %d'
 0074CF42    call        Format
 0074CF47    mov         ecx,dword ptr [ebp-1C]
 0074CF4A    lea         eax,[ebp-8]
 0074CF4D    mov         dl,1
 0074CF4F    call        0074CDE0
>0074CF54    jmp         0074CF8F
 0074CF56    mov         eax,[00903698];gvar_00903698
 0074CF5B    cmp         eax,dword ptr ds:[903694];gvar_00903694
>0074CF61    je          0074CF8F
 0074CF63    lea         eax,[ebp-28]
 0074CF66    push        eax
 0074CF67    mov         eax,[00903698];gvar_00903698
 0074CF6C    mov         dword ptr [ebp-24],eax
 0074CF6F    mov         byte ptr [ebp-20],0
 0074CF73    lea         edx,[ebp-24]
 0074CF76    xor         ecx,ecx
 0074CF78    mov         eax,74DB68;'Connected to unexpected panel type, ID = %d'
 0074CF7D    call        Format
 0074CF82    mov         ecx,dword ptr [ebp-28]
 0074CF85    lea         eax,[ebp-8]
 0074CF88    mov         dl,1
 0074CF8A    call        0074CDE0
 0074CF8F    cmp         byte ptr [ebp-8],0
>0074CF93    je          0074CFE1
 0074CF95    mov         byte ptr [ebx+14],0
 0074CF99    mov         ecx,dword ptr [ebp-4]
 0074CF9C    mov         dl,2
 0074CF9E    mov         eax,ebx
 0074CFA0    call        0074C4B0
 0074CFA5    mov         eax,[00903690];gvar_00903690:TCommManager
 0074CFAA    cmp         word ptr [eax+242],0
>0074CFB2    je          0074CFCD
 0074CFB4    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074CFBA    mov         ecx,74DBCC;'Cannot continue'
 0074CFBF    mov         dl,6
 0074CFC1    mov         eax,dword ptr [ebx+244]
 0074CFC7    call        dword ptr [ebx+240]
 0074CFCD    mov         eax,[00903690];gvar_00903690:TCommManager
 0074CFD2    mov         eax,dword ptr [eax+4]
 0074CFD5    push        eax
 0074CFD6    call        dword ptr ds:[9036B0]
>0074CFDC    jmp         0074DAD2
 0074CFE1    movzx       eax,word ptr [ebp-10]
 0074CFE5    mov         [0090369C],ax;gvar_0090369C
 0074CFEB    cmp         dword ptr ds:[903698],22;gvar_00903698
>0074CFF2    jne         0074D152
 0074CFF8    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074CFFF    add         eax,0FFFFFFE0
 0074D002    sub         ax,2
>0074D006    jb          0074D041
 0074D008    add         eax,0FFFFFFE2
 0074D00B    sub         ax,9
>0074D00F    jb          0074D041
 0074D011    lea         eax,[ebp-2C]
 0074D014    push        eax
 0074D015    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D01C    mov         dword ptr [ebp-24],eax
 0074D01F    mov         byte ptr [ebp-20],0
 0074D023    lea         edx,[ebp-24]
 0074D026    xor         ecx,ecx
 0074D028    mov         eax,74DBF8;'Connected to FX3Net with incompatible Conf.vers. = %d'
 0074D02D    call        Format
 0074D032    mov         ecx,dword ptr [ebp-2C]
 0074D035    lea         eax,[ebp-8]
 0074D038    mov         dl,1
 0074D03A    call        0074CDE0
>0074D03F    jmp         0074D0B6
 0074D041    cmp         word ptr ds:[90369C],48;gvar_0090369C
>0074D049    jae         0074D0B6
 0074D04B    cmp         byte ptr [ebx+14],1
>0074D04F    jne         0074D0B6
 0074D051    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D056    mov         eax,dword ptr [eax]
 0074D058    mov         eax,dword ptr [eax+10]
 0074D05B    call        TFXPIO.IsMainsOffFaultOutputIOConfigured
 0074D060    test        al,al
>0074D062    jne         0074D077
 0074D064    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D069    mov         eax,dword ptr [eax]
 0074D06B    mov         eax,dword ptr [eax+14]
 0074D06E    call        TFXPAD.IsMainsOffFaultOutputAddrConfigured
 0074D073    test        al,al
>0074D075    je          0074D0B6
 0074D077    lea         eax,[ebp-30]
 0074D07A    push        eax
 0074D07B    lea         eax,[ebp-34]
 0074D07E    mov         ecx,74DC70;' -> MainsOffFaultOutput (Panel conf.vers. = %d)'
 0074D083    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D089    call        @UStrCat3
 0074D08E    mov         eax,dword ptr [ebp-34]
 0074D091    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D098    mov         dword ptr [ebp-24],edx
 0074D09B    mov         byte ptr [ebp-20],0
 0074D09F    lea         edx,[ebp-24]
 0074D0A2    xor         ecx,ecx
 0074D0A4    call        Format
 0074D0A9    mov         ecx,dword ptr [ebp-30]
 0074D0AC    lea         eax,[ebp-8]
 0074D0AF    mov         dl,1
 0074D0B1    call        0074CDE0
 0074D0B6    cmp         byte ptr [ebp-8],0
>0074D0BA    je          0074D108
 0074D0BC    mov         byte ptr [ebx+14],0
 0074D0C0    mov         ecx,dword ptr [ebp-4]
 0074D0C3    mov         dl,2
 0074D0C5    mov         eax,ebx
 0074D0C7    call        0074C4B0
 0074D0CC    mov         eax,[00903690];gvar_00903690:TCommManager
 0074D0D1    cmp         word ptr [eax+242],0
>0074D0D9    je          0074D0F4
 0074D0DB    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074D0E1    mov         ecx,74DBCC;'Cannot continue'
 0074D0E6    mov         dl,6
 0074D0E8    mov         eax,dword ptr [ebx+244]
 0074D0EE    call        dword ptr [ebx+240]
 0074D0F4    mov         eax,[00903690];gvar_00903690:TCommManager
 0074D0F9    mov         eax,dword ptr [eax+4]
 0074D0FC    push        eax
 0074D0FD    call        dword ptr ds:[9036B0]
>0074D103    jmp         0074DAD2
 0074D108    mov         eax,[00903690];gvar_00903690:TCommManager
 0074D10D    cmp         word ptr [eax+24A],0
>0074D115    je          0074D152
 0074D117    lea         eax,[ebp-38]
 0074D11A    push        eax
 0074D11B    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D122    mov         dword ptr [ebp-24],eax
 0074D125    mov         byte ptr [ebp-20],0
 0074D129    lea         edx,[ebp-24]
 0074D12C    xor         ecx,ecx
 0074D12E    mov         eax,74DCDC;'Connected to FX101, Conf.v. = %d'
 0074D133    call        Format
 0074D138    mov         eax,dword ptr [ebp-38]
 0074D13B    push        eax
 0074D13C    mov         esi,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074D142    xor         ecx,ecx
 0074D144    xor         edx,edx
 0074D146    mov         eax,dword ptr [esi+24C]
 0074D14C    call        dword ptr [esi+248]
 0074D152    cmp         dword ptr ds:[903698],21;gvar_00903698
>0074D159    jne         0074D72F
 0074D15F    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D166    add         eax,0FFFFFFE0
 0074D169    sub         ax,2
>0074D16D    jb          0074D1AB
 0074D16F    add         eax,0FFFFFFE2
 0074D172    sub         ax,9
>0074D176    jb          0074D1AB
 0074D178    lea         eax,[ebp-3C]
 0074D17B    push        eax
 0074D17C    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D183    mov         dword ptr [ebp-24],eax
 0074D186    mov         byte ptr [ebp-20],0
 0074D18A    lea         edx,[ebp-24]
 0074D18D    xor         ecx,ecx
 0074D18F    mov         eax,74DD2C;'Connected to FX3Net with incompatible Panel conf.vers. = %d'
 0074D194    call        Format
 0074D199    mov         ecx,dword ptr [ebp-3C]
 0074D19C    lea         eax,[ebp-8]
 0074D19F    mov         dl,1
 0074D1A1    call        0074CDE0
>0074D1A6    jmp         0074D68D
 0074D1AB    cmp         word ptr ds:[90369C],21;gvar_0090369C
>0074D1B3    jae         0074D225
 0074D1B5    cmp         byte ptr [ebx+14],1
>0074D1B9    jne         0074D225
 0074D1BB    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D1C0    mov         eax,dword ptr [eax]
 0074D1C2    mov         eax,dword ptr [eax+14]
 0074D1C5    call        TFXPAD.IsApoWLConfigured
 0074D1CA    test        al,al
>0074D1CC    jne         0074D1E1
 0074D1CE    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D1D3    mov         eax,dword ptr [eax]
 0074D1D5    mov         eax,dword ptr [eax+0C]
 0074D1D8    call        TFXPPD.IsApoStartDelayConfigured
 0074D1DD    test        al,al
>0074D1DF    je          0074D225
 0074D1E1    lea         eax,[ebp-40]
 0074D1E4    push        eax
 0074D1E5    lea         eax,[ebp-44]
 0074D1E8    mov         ecx,74DDB0;' -> Apollo Wireless (Panel conf.vers. = %d)'
 0074D1ED    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D1F3    call        @UStrCat3
 0074D1F8    mov         eax,dword ptr [ebp-44]
 0074D1FB    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D202    mov         dword ptr [ebp-24],edx
 0074D205    mov         byte ptr [ebp-20],0
 0074D209    lea         edx,[ebp-24]
 0074D20C    xor         ecx,ecx
 0074D20E    call        Format
 0074D213    mov         ecx,dword ptr [ebp-40]
 0074D216    lea         eax,[ebp-8]
 0074D219    mov         dl,1
 0074D21B    call        0074CDE0
>0074D220    jmp         0074D68D
 0074D225    cmp         word ptr ds:[90369C],40;gvar_0090369C
>0074D22D    jae         0074D28C
 0074D22F    cmp         byte ptr [ebx+14],1
>0074D233    jne         0074D28C
 0074D235    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D23A    mov         eax,dword ptr [eax]
 0074D23C    mov         eax,dword ptr [eax+14]
 0074D23F    call        TFXPAD.IsApoDSBConfigured
 0074D244    test        al,al
>0074D246    je          0074D28C
 0074D248    lea         eax,[ebp-48]
 0074D24B    push        eax
 0074D24C    lea         eax,[ebp-4C]
 0074D24F    mov         ecx,74DE14;' -> Apollo New Sounder-Beacons (Panel conf.vers. = %d)'
 0074D254    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D25A    call        @UStrCat3
 0074D25F    mov         eax,dword ptr [ebp-4C]
 0074D262    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D269    mov         dword ptr [ebp-24],edx
 0074D26C    mov         byte ptr [ebp-20],0
 0074D270    lea         edx,[ebp-24]
 0074D273    xor         ecx,ecx
 0074D275    call        Format
 0074D27A    mov         ecx,dword ptr [ebp-48]
 0074D27D    lea         eax,[ebp-8]
 0074D280    mov         dl,1
 0074D282    call        0074CDE0
>0074D287    jmp         0074D68D
 0074D28C    cmp         word ptr ds:[90369C],41;gvar_0090369C
>0074D294    jae         0074D2F3
 0074D296    cmp         byte ptr [ebx+14],1
>0074D29A    jne         0074D2F3
 0074D29C    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D2A1    mov         eax,dword ptr [eax]
 0074D2A3    mov         eax,dword ptr [eax+14]
 0074D2A6    call        TFXPAD.IsSapSndrVolOrOut2Configured
 0074D2AB    test        al,al
>0074D2AD    je          0074D2F3
 0074D2AF    lea         eax,[ebp-50]
 0074D2B2    push        eax
 0074D2B3    lea         eax,[ebp-54]
 0074D2B6    mov         ecx,74DE90;' -> Advanced Protocol sounder volumes nor Output2 funct. (Panel conf.vers. =...
 0074D2BB    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D2C1    call        @UStrCat3
 0074D2C6    mov         eax,dword ptr [ebp-54]
 0074D2C9    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D2D0    mov         dword ptr [ebp-24],edx
 0074D2D3    mov         byte ptr [ebp-20],0
 0074D2D7    lea         edx,[ebp-24]
 0074D2DA    xor         ecx,ecx
 0074D2DC    call        Format
 0074D2E1    mov         ecx,dword ptr [ebp-50]
 0074D2E4    lea         eax,[ebp-8]
 0074D2E7    mov         dl,1
 0074D2E9    call        0074CDE0
>0074D2EE    jmp         0074D68D
 0074D2F3    cmp         word ptr ds:[90369C],42;gvar_0090369C
>0074D2FB    jae         0074D35A
 0074D2FD    cmp         byte ptr [ebx+14],1
>0074D301    jne         0074D35A
 0074D303    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D308    mov         eax,dword ptr [eax]
 0074D30A    mov         eax,dword ptr [eax+14]
 0074D30D    call        TFXPAD.IsSapEnvirConfigured
 0074D312    test        al,al
>0074D314    je          0074D35A
 0074D316    lea         eax,[ebp-58]
 0074D319    push        eax
 0074D31A    lea         eax,[ebp-5C]
 0074D31D    mov         ecx,74DF40;' -> Advanced Protocol Environment settings. (Panel conf.vers. = %d)'
 0074D322    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D328    call        @UStrCat3
 0074D32D    mov         eax,dword ptr [ebp-5C]
 0074D330    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D337    mov         dword ptr [ebp-24],edx
 0074D33A    mov         byte ptr [ebp-20],0
 0074D33E    lea         edx,[ebp-24]
 0074D341    xor         ecx,ecx
 0074D343    call        Format
 0074D348    mov         ecx,dword ptr [ebp-58]
 0074D34B    lea         eax,[ebp-8]
 0074D34E    mov         dl,1
 0074D350    call        0074CDE0
>0074D355    jmp         0074D68D
 0074D35A    cmp         word ptr ds:[90369C],43;gvar_0090369C
>0074D362    jae         0074D3C1
 0074D364    cmp         byte ptr [ebx+14],1
>0074D368    jne         0074D3C1
 0074D36A    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D36F    mov         eax,dword ptr [eax]
 0074D371    mov         eax,dword ptr [eax+14]
 0074D374    call        TFXPAD.IsMiniModuleConfigured
 0074D379    test        al,al
>0074D37B    je          0074D3C1
 0074D37D    lea         eax,[ebp-60]
 0074D380    push        eax
 0074D381    lea         eax,[ebp-64]
 0074D384    mov         ecx,74DFD4;' -> Advanced Protocol Mini module. (Panel conf.vers. = %d)'
 0074D389    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D38F    call        @UStrCat3
 0074D394    mov         eax,dword ptr [ebp-64]
 0074D397    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D39E    mov         dword ptr [ebp-24],edx
 0074D3A1    mov         byte ptr [ebp-20],0
 0074D3A5    lea         edx,[ebp-24]
 0074D3A8    xor         ecx,ecx
 0074D3AA    call        Format
 0074D3AF    mov         ecx,dword ptr [ebp-60]
 0074D3B2    lea         eax,[ebp-8]
 0074D3B5    mov         dl,1
 0074D3B7    call        0074CDE0
>0074D3BC    jmp         0074D68D
 0074D3C1    cmp         word ptr ds:[90369C],44;gvar_0090369C
>0074D3C9    jae         0074D425
 0074D3CB    cmp         byte ptr [ebx+14],1
>0074D3CF    jne         0074D425
 0074D3D1    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D3D6    mov         eax,dword ptr [eax]
 0074D3D8    call        TFXPanel.IsControlGroupB2Configured
 0074D3DD    test        al,al
>0074D3DF    je          0074D425
 0074D3E1    lea         eax,[ebp-68]
 0074D3E4    push        eax
 0074D3E5    lea         eax,[ebp-6C]
 0074D3E8    mov         ecx,74E058;' -> additions in v. 6.8.x (Panel conf.vers. = %d)'
 0074D3ED    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D3F3    call        @UStrCat3
 0074D3F8    mov         eax,dword ptr [ebp-6C]
 0074D3FB    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D402    mov         dword ptr [ebp-24],edx
 0074D405    mov         byte ptr [ebp-20],0
 0074D409    lea         edx,[ebp-24]
 0074D40C    xor         ecx,ecx
 0074D40E    call        Format
 0074D413    mov         ecx,dword ptr [ebp-68]
 0074D416    lea         eax,[ebp-8]
 0074D419    mov         dl,1
 0074D41B    call        0074CDE0
>0074D420    jmp         0074D68D
 0074D425    cmp         word ptr ds:[90369C],45;gvar_0090369C
>0074D42D    jae         0074D48C
 0074D42F    cmp         byte ptr [ebx+14],1
>0074D433    jne         0074D48C
 0074D435    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D43A    mov         eax,dword ptr [eax]
 0074D43C    mov         eax,dword ptr [eax+0C]
 0074D43F    call        TFXPPD.IsFDSensorInputDisablementConfigured
 0074D444    test        al,al
>0074D446    je          0074D48C
 0074D448    lea         eax,[ebp-70]
 0074D44B    push        eax
 0074D44C    lea         eax,[ebp-74]
 0074D44F    mov         ecx,74E0C8;' -> additions in v. 6.9.x (Panel conf.vers. = %d)'
 0074D454    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D45A    call        @UStrCat3
 0074D45F    mov         eax,dword ptr [ebp-74]
 0074D462    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D469    mov         dword ptr [ebp-24],edx
 0074D46C    mov         byte ptr [ebp-20],0
 0074D470    lea         edx,[ebp-24]
 0074D473    xor         ecx,ecx
 0074D475    call        Format
 0074D47A    mov         ecx,dword ptr [ebp-70]
 0074D47D    lea         eax,[ebp-8]
 0074D480    mov         dl,1
 0074D482    call        0074CDE0
>0074D487    jmp         0074D68D
 0074D48C    cmp         word ptr ds:[90369C],47;gvar_0090369C
>0074D494    jae         0074D506
 0074D496    cmp         byte ptr [ebx+14],1
>0074D49A    jne         0074D506
 0074D49C    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D4A1    mov         eax,dword ptr [eax]
 0074D4A3    mov         eax,dword ptr [eax+10]
 0074D4A6    call        TFXPIO.IsDelayedAlarmEnabledOutputIOConfigured
 0074D4AB    test        al,al
>0074D4AD    jne         0074D4C2
 0074D4AF    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D4B4    mov         eax,dword ptr [eax]
 0074D4B6    mov         eax,dword ptr [eax+14]
 0074D4B9    call        TFXPAD.IsDelayedAlarmEnabledOutputAddrConfigured
 0074D4BE    test        al,al
>0074D4C0    je          0074D506
 0074D4C2    lea         eax,[ebp-78]
 0074D4C5    push        eax
 0074D4C6    lea         eax,[ebp-7C]
 0074D4C9    mov         ecx,74E138;' -> DelayedAlarmEnabledOutput (Panel conf.vers. = %d)'
 0074D4CE    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D4D4    call        @UStrCat3
 0074D4D9    mov         eax,dword ptr [ebp-7C]
 0074D4DC    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D4E3    mov         dword ptr [ebp-24],edx
 0074D4E6    mov         byte ptr [ebp-20],0
 0074D4EA    lea         edx,[ebp-24]
 0074D4ED    xor         ecx,ecx
 0074D4EF    call        Format
 0074D4F4    mov         ecx,dword ptr [ebp-78]
 0074D4F7    lea         eax,[ebp-8]
 0074D4FA    mov         dl,1
 0074D4FC    call        0074CDE0
>0074D501    jmp         0074D68D
 0074D506    cmp         word ptr ds:[90369C],47;gvar_0090369C
>0074D50E    jae         0074D586
 0074D510    cmp         byte ptr [ebx+14],1
>0074D514    jne         0074D586
 0074D516    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D51B    mov         eax,dword ptr [eax]
 0074D51D    mov         eax,dword ptr [eax+10]
 0074D520    call        TFXPIO.IsFireRouterDisabledOutputIOConfigured
 0074D525    test        al,al
>0074D527    jne         0074D53C
 0074D529    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D52E    mov         eax,dword ptr [eax]
 0074D530    mov         eax,dword ptr [eax+14]
 0074D533    call        TFXPAD.IsFireRouterDisabledOutputAddrConfigured
 0074D538    test        al,al
>0074D53A    je          0074D586
 0074D53C    lea         eax,[ebp-80]
 0074D53F    push        eax
 0074D540    lea         eax,[ebp-84]
 0074D546    mov         ecx,74E1B0;' -> FireRouterDisabledOutput (Panel conf.vers. = %d)'
 0074D54B    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D551    call        @UStrCat3
 0074D556    mov         eax,dword ptr [ebp-84]
 0074D55C    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D563    mov         dword ptr [ebp-24],edx
 0074D566    mov         byte ptr [ebp-20],0
 0074D56A    lea         edx,[ebp-24]
 0074D56D    xor         ecx,ecx
 0074D56F    call        Format
 0074D574    mov         ecx,dword ptr [ebp-80]
 0074D577    lea         eax,[ebp-8]
 0074D57A    mov         dl,1
 0074D57C    call        0074CDE0
>0074D581    jmp         0074D68D
 0074D586    cmp         word ptr ds:[90369C],47;gvar_0090369C
>0074D58E    jae         0074D60C
 0074D590    cmp         byte ptr [ebx+14],1
>0074D594    jne         0074D60C
 0074D596    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D59B    mov         eax,dword ptr [eax]
 0074D59D    mov         eax,dword ptr [eax+10]
 0074D5A0    call        TFXPIO.IsFaultRouterDisabledOutputIOConfigured
 0074D5A5    test        al,al
>0074D5A7    jne         0074D5BC
 0074D5A9    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D5AE    mov         eax,dword ptr [eax]
 0074D5B0    mov         eax,dword ptr [eax+14]
 0074D5B3    call        TFXPAD.IsFaultRouterDisabledOutputAddrConfigured
 0074D5B8    test        al,al
>0074D5BA    je          0074D60C
 0074D5BC    lea         eax,[ebp-88]
 0074D5C2    push        eax
 0074D5C3    lea         eax,[ebp-8C]
 0074D5C9    mov         ecx,74E228;' -> FaultRouterDisabledOutput (Panel conf.vers. = %d)'
 0074D5CE    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D5D4    call        @UStrCat3
 0074D5D9    mov         eax,dword ptr [ebp-8C]
 0074D5DF    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D5E6    mov         dword ptr [ebp-24],edx
 0074D5E9    mov         byte ptr [ebp-20],0
 0074D5ED    lea         edx,[ebp-24]
 0074D5F0    xor         ecx,ecx
 0074D5F2    call        Format
 0074D5F7    mov         ecx,dword ptr [ebp-88]
 0074D5FD    lea         eax,[ebp-8]
 0074D600    mov         dl,1
 0074D602    call        0074CDE0
>0074D607    jmp         0074D68D
 0074D60C    cmp         word ptr ds:[90369C],48;gvar_0090369C
>0074D614    jae         0074D68D
 0074D616    cmp         byte ptr [ebx+14],1
>0074D61A    jne         0074D68D
 0074D61C    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D621    mov         eax,dword ptr [eax]
 0074D623    mov         eax,dword ptr [eax+10]
 0074D626    call        TFXPIO.IsMainsOffFaultOutputIOConfigured
 0074D62B    test        al,al
>0074D62D    jne         0074D642
 0074D62F    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D634    mov         eax,dword ptr [eax]
 0074D636    mov         eax,dword ptr [eax+14]
 0074D639    call        TFXPAD.IsMainsOffFaultOutputAddrConfigured
 0074D63E    test        al,al
>0074D640    je          0074D68D
 0074D642    lea         eax,[ebp-90]
 0074D648    push        eax
 0074D649    lea         eax,[ebp-94]
 0074D64F    mov         ecx,74DC70;' -> MainsOffFaultOutput (Panel conf.vers. = %d)'
 0074D654    mov         edx,dword ptr ds:[7C3EF0];^'Connected to FX panel that does not support
'
 0074D65A    call        @UStrCat3
 0074D65F    mov         eax,dword ptr [ebp-94]
 0074D665    movzx       edx,word ptr ds:[90369C];gvar_0090369C
 0074D66C    mov         dword ptr [ebp-24],edx
 0074D66F    mov         byte ptr [ebp-20],0
 0074D673    lea         edx,[ebp-24]
 0074D676    xor         ecx,ecx
 0074D678    call        Format
 0074D67D    mov         ecx,dword ptr [ebp-90]
 0074D683    lea         eax,[ebp-8]
 0074D686    mov         dl,1
 0074D688    call        0074CDE0
 0074D68D    cmp         byte ptr [ebp-8],0
>0074D691    je          0074D6DF
 0074D693    mov         byte ptr [ebx+14],0
 0074D697    mov         ecx,dword ptr [ebp-4]
 0074D69A    mov         dl,2
 0074D69C    mov         eax,ebx
 0074D69E    call        0074C4B0
 0074D6A3    mov         eax,[00903690];gvar_00903690:TCommManager
 0074D6A8    cmp         word ptr [eax+242],0
>0074D6B0    je          0074D6CB
 0074D6B2    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074D6B8    mov         ecx,74DBCC;'Cannot continue'
 0074D6BD    mov         dl,6
 0074D6BF    mov         eax,dword ptr [ebx+244]
 0074D6C5    call        dword ptr [ebx+240]
 0074D6CB    mov         eax,[00903690];gvar_00903690:TCommManager
 0074D6D0    mov         eax,dword ptr [eax+4]
 0074D6D3    push        eax
 0074D6D4    call        dword ptr ds:[9036B0]
>0074D6DA    jmp         0074DAD2
 0074D6DF    mov         eax,[00903690];gvar_00903690:TCommManager
 0074D6E4    cmp         word ptr [eax+24A],0
>0074D6EC    je          0074D72F
 0074D6EE    lea         eax,[ebp-98]
 0074D6F4    push        eax
 0074D6F5    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D6FC    mov         dword ptr [ebp-24],eax
 0074D6FF    mov         byte ptr [ebp-20],0
 0074D703    lea         edx,[ebp-24]
 0074D706    xor         ecx,ecx
 0074D708    mov         eax,74E2A0;'Connected to FX3Net, Conf.v. = %d'
 0074D70D    call        Format
 0074D712    mov         eax,dword ptr [ebp-98]
 0074D718    push        eax
 0074D719    mov         esi,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074D71F    xor         ecx,ecx
 0074D721    xor         edx,edx
 0074D723    mov         eax,dword ptr [esi+24C]
 0074D729    call        dword ptr [esi+248]
 0074D72F    cmp         dword ptr ds:[903698],17;gvar_00903698
>0074D736    jne         0074D99D
 0074D73C    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D743    dec         eax
 0074D744    sub         ax,8
>0074D748    jb          0074D783
 0074D74A    lea         eax,[ebp-9C]
 0074D750    push        eax
 0074D751    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D758    mov         dword ptr [ebp-24],eax
 0074D75B    mov         byte ptr [ebp-20],0
 0074D75F    lea         edx,[ebp-24]
 0074D762    xor         ecx,ecx
 0074D764    mov         eax,74E2F0;'Connected to FX/FXNet with incompatible Conf.vers. = %d'
 0074D769    call        Format
 0074D76E    mov         ecx,dword ptr [ebp-9C]
 0074D774    lea         eax,[ebp-8]
 0074D777    mov         dl,1
 0074D779    call        0074CDE0
>0074D77E    jmp         0074D8FB
 0074D783    cmp         word ptr ds:[90369C],7;gvar_0090369C
>0074D78B    jae         0074D7DF
 0074D78D    cmp         byte ptr [ebx+14],1
>0074D791    jne         0074D7DF
 0074D793    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D798    mov         eax,dword ptr [eax]
 0074D79A    mov         eax,dword ptr [eax+14]
 0074D79D    call        TFXPAD.IsApoWLConfigured
 0074D7A2    test        al,al
>0074D7A4    je          0074D7DF
 0074D7A6    lea         eax,[ebp-0A0]
 0074D7AC    push        eax
 0074D7AD    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D7B4    mov         dword ptr [ebp-24],eax
 0074D7B7    mov         byte ptr [ebp-20],0
 0074D7BB    lea         edx,[ebp-24]
 0074D7BE    xor         ecx,ecx
 0074D7C0    mov         eax,74E36C;'Connected to FXNet that can not be configured with this tool (Conf.vers. = %...
 0074D7C5    call        Format
 0074D7CA    mov         ecx,dword ptr [ebp-0A0]
 0074D7D0    lea         eax,[ebp-8]
 0074D7D3    mov         dl,1
 0074D7D5    call        0074CDE0
>0074D7DA    jmp         0074D8FB
 0074D7DF    cmp         word ptr ds:[90369C],8;gvar_0090369C
>0074D7E7    jae         0074D84E
 0074D7E9    cmp         byte ptr [ebx+14],1
>0074D7ED    jne         0074D84E
 0074D7EF    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D7F4    mov         eax,dword ptr [eax]
 0074D7F6    mov         eax,dword ptr [eax+14]
 0074D7F9    call        TFXPAD.IsApoWLConfigured
 0074D7FE    test        al,al
>0074D800    jne         0074D815
 0074D802    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D807    mov         eax,dword ptr [eax]
 0074D809    mov         eax,dword ptr [eax+0C]
 0074D80C    call        TFXPPD.IsApoStartDelayConfigured
 0074D811    test        al,al
>0074D813    je          0074D84E
 0074D815    lea         eax,[ebp-0A4]
 0074D81B    push        eax
 0074D81C    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D823    mov         dword ptr [ebp-24],eax
 0074D826    mov         byte ptr [ebp-20],0
 0074D82A    lea         edx,[ebp-24]
 0074D82D    xor         ecx,ecx
 0074D82F    mov         eax,74E418;'Connected to FXNet that does not support Apollo Wireless (Conf.vers. = %d)'
 0074D834    call        Format
 0074D839    mov         ecx,dword ptr [ebp-0A4]
 0074D83F    lea         eax,[ebp-8]
 0074D842    mov         dl,1
 0074D844    call        0074CDE0
>0074D849    jmp         0074D8FB
 0074D84E    cmp         byte ptr [ebx+14],1
>0074D852    jne         0074D8FB
 0074D858    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D85D    mov         eax,dword ptr [eax]
 0074D85F    mov         eax,dword ptr [eax+14]
 0074D862    call        TFXPAD.IsApoDSBConfigured
 0074D867    test        al,al
>0074D869    jne         0074D8C7
 0074D86B    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D870    mov         eax,dword ptr [eax]
 0074D872    mov         eax,dword ptr [eax+14]
 0074D875    call        TFXPAD.IsSapSndrVolOrOut2Configured
 0074D87A    test        al,al
>0074D87C    jne         0074D8C7
 0074D87E    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D883    mov         eax,dword ptr [eax]
 0074D885    mov         eax,dword ptr [eax+14]
 0074D888    call        TFXPAD.IsSapEnvirConfigured
 0074D88D    test        al,al
>0074D88F    jne         0074D8C7
 0074D891    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D896    mov         eax,dword ptr [eax]
 0074D898    mov         eax,dword ptr [eax+14]
 0074D89B    call        TFXPAD.IsMiniModuleConfigured
 0074D8A0    test        al,al
>0074D8A2    jne         0074D8C7
 0074D8A4    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D8A9    mov         eax,dword ptr [eax]
 0074D8AB    call        TFXPanel.IsControlGroupB2Configured
 0074D8B0    test        al,al
>0074D8B2    jne         0074D8C7
 0074D8B4    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D8B9    mov         eax,dword ptr [eax]
 0074D8BB    mov         eax,dword ptr [eax+0C]
 0074D8BE    call        TFXPPD.IsFDSensorInputDisablementConfigured
 0074D8C3    test        al,al
>0074D8C5    je          0074D8FB
 0074D8C7    lea         eax,[ebp-0A8]
 0074D8CD    push        eax
 0074D8CE    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D8D5    mov         dword ptr [ebp-24],eax
 0074D8D8    mov         byte ptr [ebp-20],0
 0074D8DC    lea         edx,[ebp-24]
 0074D8DF    xor         ecx,ecx
 0074D8E1    mov         eax,74E4BC;'Connected to FXNet that does not support configured MC2 features (Conf.vers....
 0074D8E6    call        Format
 0074D8EB    mov         ecx,dword ptr [ebp-0A8]
 0074D8F1    lea         eax,[ebp-8]
 0074D8F4    mov         dl,1
 0074D8F6    call        0074CDE0
 0074D8FB    cmp         byte ptr [ebp-8],0
>0074D8FF    je          0074D94D
 0074D901    mov         byte ptr [ebx+14],0
 0074D905    mov         ecx,dword ptr [ebp-4]
 0074D908    mov         dl,2
 0074D90A    mov         eax,ebx
 0074D90C    call        0074C4B0
 0074D911    mov         eax,[00903690];gvar_00903690:TCommManager
 0074D916    cmp         word ptr [eax+242],0
>0074D91E    je          0074D939
 0074D920    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074D926    mov         ecx,74DBCC;'Cannot continue'
 0074D92B    mov         dl,6
 0074D92D    mov         eax,dword ptr [ebx+244]
 0074D933    call        dword ptr [ebx+240]
 0074D939    mov         eax,[00903690];gvar_00903690:TCommManager
 0074D93E    mov         eax,dword ptr [eax+4]
 0074D941    push        eax
 0074D942    call        dword ptr ds:[9036B0]
>0074D948    jmp         0074DAD2
 0074D94D    mov         eax,[00903690];gvar_00903690:TCommManager
 0074D952    cmp         word ptr [eax+24A],0
>0074D95A    je          0074D99D
 0074D95C    lea         eax,[ebp-0AC]
 0074D962    push        eax
 0074D963    movzx       eax,word ptr ds:[90369C];gvar_0090369C
 0074D96A    mov         dword ptr [ebp-24],eax
 0074D96D    mov         byte ptr [ebp-20],0
 0074D971    lea         edx,[ebp-24]
 0074D974    xor         ecx,ecx
 0074D976    mov         eax,74E570;'Connected to F3Net, Conf.v. = %d'
 0074D97B    call        Format
 0074D980    mov         eax,dword ptr [ebp-0AC]
 0074D986    push        eax
 0074D987    mov         esi,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074D98D    xor         ecx,ecx
 0074D98F    xor         edx,edx
 0074D991    mov         eax,dword ptr [esi+24C]
 0074D997    call        dword ptr [esi+248]
 0074D99D    movzx       eax,byte ptr [ebx+14]
 0074D9A1    dec         al
>0074D9A3    je          0074D9BF
 0074D9A5    dec         al
>0074D9A7    je          0074D9FE
 0074D9A9    dec         al
>0074D9AB    jne         0074DAD2
 0074D9B1    mov         eax,ebx
 0074D9B3    call        0074CB24
 0074D9B8    test        al,al
>0074D9BA    jmp         0074DAD2
 0074D9BF    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0074D9C4    cmp         dword ptr [eax],0
>0074D9C7    jne         0074D9DD
 0074D9C9    mov         dl,1
 0074D9CB    mov         eax,[00695010];TCGData
 0074D9D0    call        TCGData.Create;TCGData.Create
 0074D9D5    mov         edx,dword ptr ds:[7C47B0];^gvar_008DF5B0:TCGData
 0074D9DB    mov         dword ptr [edx],eax
 0074D9DD    mov         eax,[007C41A0];^gvar_008DF5D4:TFXPanel
 0074D9E2    mov         eax,dword ptr [eax]
 0074D9E4    mov         eax,dword ptr [eax+8]
 0074D9E7    lea         edx,[eax+144]
 0074D9ED    call        TFXPCI.SetConfigInfo
 0074D9F2    mov         eax,ebx
 0074D9F4    call        0074C090
>0074D9F9    jmp         0074DAD2
 0074D9FE    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0074DA03    cmp         dword ptr [eax],0
>0074DA06    jne         0074DA1C
 0074DA08    mov         dl,1
 0074DA0A    mov         eax,[00695010];TCGData
 0074DA0F    call        TCGData.Create;TCGData.Create
 0074DA14    mov         edx,dword ptr ds:[7C47B0];^gvar_008DF5B0:TCGData
 0074DA1A    mov         dword ptr [edx],eax
 0074DA1C    cmp         dword ptr ds:[903698],22;gvar_00903698
>0074DA23    jne         0074DA46
 0074DA25    mov         cl,7
 0074DA27    mov         dl,1
 0074DA29    mov         eax,[006A4DA4];TFXPanel
 0074DA2E    call        TFXPanel.Create;TFXPanel.Create
 0074DA33    mov         [0090368C],eax;gvar_0090368C:TFXPanel
 0074DA38    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074DA3D    mov         dword ptr [eax+4],7
>0074DA44    jmp         0074DA65
 0074DA46    mov         cl,3
 0074DA48    mov         dl,1
 0074DA4A    mov         eax,[006A4DA4];TFXPanel
 0074DA4F    call        TFXPanel.Create;TFXPanel.Create
 0074DA54    mov         [0090368C],eax;gvar_0090368C:TFXPanel
 0074DA59    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074DA5E    mov         dword ptr [eax+4],3
 0074DA65    mov         eax,ebx
 0074DA67    call        0074C090
>0074DA6C    jmp         0074DAD2
 0074DA6E    mov         eax,ebx
 0074DA70    call        0074C644
>0074DA75    jmp         0074DAD2
 0074DA77    mov         eax,ebx
 0074DA79    call        0074C8C8
>0074DA7E    jmp         0074DAD2
 0074DA80    mov         eax,ebx
 0074DA82    call        0074C808
>0074DA87    jmp         0074DAD2
 0074DA89    mov         eax,[00903690];gvar_00903690:TCommManager
 0074DA8E    cmp         word ptr [eax+24A],0
>0074DA96    je          0074DAD2
 0074DA98    lea         eax,[ebp-0B0]
 0074DA9E    push        eax
 0074DA9F    mov         dword ptr [ebp-24],esi
 0074DAA2    mov         byte ptr [ebp-20],0
 0074DAA6    lea         edx,[ebp-24]
 0074DAA9    xor         ecx,ecx
 0074DAAB    mov         eax,74E5C0;'Unexpected SDL message (%d) in chsOpeningServer'
 0074DAB0    call        Format
 0074DAB5    mov         eax,dword ptr [ebp-0B0]
 0074DABB    push        eax
 0074DABC    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074DAC2    xor         ecx,ecx
 0074DAC4    xor         edx,edx
 0074DAC6    mov         eax,dword ptr [ebx+24C]
 0074DACC    call        dword ptr [ebx+248]
 0074DAD2    xor         eax,eax
 0074DAD4    pop         edx
 0074DAD5    pop         ecx
 0074DAD6    pop         ecx
 0074DAD7    mov         dword ptr fs:[eax],edx
 0074DADA    push        74DB0D
 0074DADF    lea         eax,[ebp-0B0]
 0074DAE5    mov         edx,23
 0074DAEA    call        @UStrArrayClr
 0074DAEF    lea         eax,[ebp-1C]
 0074DAF2    call        @UStrClr
 0074DAF7    lea         eax,[ebp-8]
 0074DAFA    mov         edx,dword ptr ds:[74CD64];TConnectionError
 0074DB00    call        @FinalizeRecord
 0074DB05    ret
>0074DB06    jmp         @HandleFinally
>0074DB0B    jmp         0074DADF
 0074DB0D    pop         edi
 0074DB0E    pop         esi
 0074DB0F    pop         ebx
 0074DB10    mov         esp,ebp
 0074DB12    pop         ebp
 0074DB13    ret
*}
end;

//0074E620
procedure sub_0074E620(?:TCommManager; ?:TMessage);
begin
{*
 0074E620    push        ebp
 0074E621    mov         ebp,esp
 0074E623    add         esp,0FFFFFFE4
 0074E626    push        ebx
 0074E627    push        esi
 0074E628    push        edi
 0074E629    xor         ecx,ecx
 0074E62B    mov         dword ptr [ebp-14],ecx
 0074E62E    mov         esi,edx
 0074E630    lea         edi,[ebp-10]
 0074E633    movs        dword ptr [edi],dword ptr [esi]
 0074E634    movs        dword ptr [edi],dword ptr [esi]
 0074E635    movs        dword ptr [edi],dword ptr [esi]
 0074E636    movs        dword ptr [edi],dword ptr [esi]
 0074E637    xor         edx,edx
 0074E639    push        ebp
 0074E63A    push        74E6AD
 0074E63F    push        dword ptr fs:[edx]
 0074E642    mov         dword ptr fs:[edx],esp
 0074E645    mov         ebx,dword ptr [ebp-0C]
 0074E648    mov         edx,ebx
 0074E64A    dec         edx
>0074E64B    jne         0074E654
 0074E64D    call        0074C644
>0074E652    jmp         0074E697
 0074E654    mov         eax,[00903690];gvar_00903690:TCommManager
 0074E659    cmp         word ptr [eax+24A],0
>0074E661    je          0074E697
 0074E663    lea         eax,[ebp-14]
 0074E666    push        eax
 0074E667    mov         dword ptr [ebp-1C],ebx
 0074E66A    mov         byte ptr [ebp-18],0
 0074E66E    lea         edx,[ebp-1C]
 0074E671    xor         ecx,ecx
 0074E673    mov         eax,74E6C8;'Unexpected SDL message (%d) in chsClosingServer'
 0074E678    call        Format
 0074E67D    mov         eax,dword ptr [ebp-14]
 0074E680    push        eax
 0074E681    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074E687    xor         ecx,ecx
 0074E689    xor         edx,edx
 0074E68B    mov         eax,dword ptr [ebx+24C]
 0074E691    call        dword ptr [ebx+248]
 0074E697    xor         eax,eax
 0074E699    pop         edx
 0074E69A    pop         ecx
 0074E69B    pop         ecx
 0074E69C    mov         dword ptr fs:[eax],edx
 0074E69F    push        74E6B4
 0074E6A4    lea         eax,[ebp-14]
 0074E6A7    call        @UStrClr
 0074E6AC    ret
>0074E6AD    jmp         @HandleFinally
>0074E6B2    jmp         0074E6A4
 0074E6B4    pop         edi
 0074E6B5    pop         esi
 0074E6B6    pop         ebx
 0074E6B7    mov         esp,ebp
 0074E6B9    pop         ebp
 0074E6BA    ret
*}
end;

//0074E728
{*procedure sub_0074E728(?:?);
begin
 0074E728    push        ebx
 0074E729    push        esi
 0074E72A    push        edi
 0074E72B    add         esp,0FFFFFFF8
 0074E72E    mov         ebx,eax
 0074E730    mov         eax,ebx
 0074E732    call        0074C484
 0074E737    movzx       eax,byte ptr [ebx+14]
 0074E73B    sub         al,1
>0074E73D    jb          0074E74E
>0074E73F    je          0074E90B
 0074E745    dec         al
>0074E747    je          0074E764
>0074E749    jmp         0074E92A
 0074E74E    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074E753    call        TObject.Free
 0074E758    xor         eax,eax
 0074E75A    mov         [0090368C],eax;gvar_0090368C:TFXPanel
>0074E75F    jmp         0074E92A
 0074E764    mov         byte ptr [esp],0
 0074E768    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074E76D    mov         eax,dword ptr [eax+0C]
 0074E770    movzx       esi,byte ptr [eax+122]
 0074E777    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 0074E77C    mov         eax,dword ptr [eax]
 0074E77E    xor         edx,edx
 0074E780    mov         dword ptr [eax+2DC],edx
 0074E786    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0074E78B    mov         eax,dword ptr [eax]
 0074E78D    mov         edx,esi
 0074E78F    call        TFXNet.GetPanel
 0074E794    test        eax,eax
>0074E796    je          0074E814
 0074E798    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 0074E79D    mov         eax,dword ptr [eax]
 0074E79F    mov         eax,dword ptr [eax+3DC]
 0074E7A5    mov         edx,esi
 0074E7A7    call        TUpDown.SetPosition
 0074E7AC    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 0074E7B1    mov         eax,dword ptr [eax]
 0074E7B3    mov         edx,dword ptr [eax]
 0074E7B5    call        dword ptr [edx+13C]
 0074E7BB    dec         eax
>0074E7BC    je          0074E7C8
 0074E7BE    dec         eax
>0074E7BF    je          0074E7F6
 0074E7C1    sub         eax,2
>0074E7C4    je          0074E7CE
>0074E7C6    jmp         0074E7FA
 0074E7C8    mov         byte ptr [esp],1
>0074E7CC    jmp         0074E7FA
 0074E7CE    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 0074E7D3    mov         eax,dword ptr [eax]
 0074E7D5    mov         eax,dword ptr [eax+3DC]
 0074E7DB    call        TUpDown.GetPosition
 0074E7E0    mov         edx,eax
 0074E7E2    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0074E7E7    mov         eax,dword ptr [eax]
 0074E7E9    call        TFXNet.GetPanel
 0074E7EE    test        eax,eax
 0074E7F0    sete        byte ptr [esp]
>0074E7F4    jmp         0074E7FA
 0074E7F6    mov         byte ptr [esp],1
 0074E7FA    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 0074E7FF    mov         eax,dword ptr [eax]
 0074E801    mov         eax,dword ptr [eax+3DC]
 0074E807    call        TUpDown.GetPosition
 0074E80C    mov         esi,eax
 0074E80E    cmp         byte ptr [esp],0
>0074E812    je          0074E798
 0074E814    mov         eax,[007C4DEC];^gvar_00901E0C:TOverwriteDlg
 0074E819    mov         eax,dword ptr [eax]
 0074E81B    cmp         dword ptr [eax+2DC],2
>0074E822    jne         0074E83A
 0074E824    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074E829    call        TObject.Free
 0074E82E    xor         eax,eax
 0074E830    mov         [0090368C],eax;gvar_0090368C:TFXPanel
>0074E835    jmp         0074E92A
 0074E83A    mov         edx,esi
 0074E83C    cmp         edx,0FF
>0074E842    jbe         0074E849
 0074E844    call        @BoundErr
 0074E849    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074E84E    mov         eax,dword ptr [eax+0C]
 0074E851    call        006A2BC4
 0074E856    cmp         word ptr [ebx+24A],0
>0074E85E    je          0074E875
 0074E860    push        74E970;'Receiving concluded'
 0074E865    xor         ecx,ecx
 0074E867    mov         dl,12
 0074E869    mov         eax,dword ptr [ebx+24C]
 0074E86F    call        dword ptr [ebx+248]
 0074E875    test        esi,esi
>0074E877    jle         0074E8B6
 0074E879    mov         edx,esi
 0074E87B    sub         edx,1
>0074E87E    jno         0074E885
 0074E880    call        @IntOver
 0074E885    cmp         edx,0FF
>0074E88B    jbe         0074E892
 0074E88D    call        @BoundErr
 0074E892    lea         eax,[esp+4]
 0074E896    mov         cl,4
 0074E898    call        @SetElem
 0074E89D    mov         edx,dword ptr [esp+4]
 0074E8A1    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074E8A6    mov         edi,dword ptr [eax+0C]
 0074E8A9    or          edx,dword ptr [edi+171]
 0074E8AF    mov         eax,edi
 0074E8B1    call        006A2E40
 0074E8B6    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074E8BB    mov         eax,dword ptr [eax+8]
 0074E8BE    movzx       ecx,byte ptr [eax+41]
 0074E8C2    movzx       edx,byte ptr [eax+40]
 0074E8C6    mov         eax,[0090368C];gvar_0090368C:TFXPanel
 0074E8CB    mov         eax,dword ptr [eax+0C]
 0074E8CE    call        TFXPPD.UpdateOldPanelData
 0074E8D3    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0074E8D8    mov         eax,dword ptr [eax]
 0074E8DA    mov         edx,esi
 0074E8DC    call        TFXNet.GetPanel
 0074E8E1    call        TObject.Free
 0074E8E6    mov         eax,[007C4C84];^gvar_008DF5C8:TFXNet
 0074E8EB    mov         eax,dword ptr [eax]
 0074E8ED    mov         ecx,dword ptr ds:[90368C];gvar_0090368C:TFXPanel
 0074E8F3    mov         edx,esi
 0074E8F5    call        TFXNet.SetPanel
 0074E8FA    mov         eax,[007C491C];^gvar_008DF5CC
 0074E8FF    mov         byte ptr [eax],1
 0074E902    xor         eax,eax
 0074E904    mov         [0090368C],eax;gvar_0090368C:TFXPanel
>0074E909    jmp         0074E92A
 0074E90B    cmp         word ptr [ebx+24A],0
>0074E913    je          0074E92A
 0074E915    push        74E9A4;'Sending concluded'
 0074E91A    xor         ecx,ecx
 0074E91C    mov         dl,0A
 0074E91E    mov         eax,dword ptr [ebx+24C]
 0074E924    call        dword ptr [ebx+248]
 0074E92A    mov         eax,[007C47B0];^gvar_008DF5B0:TCGData
 0074E92F    mov         eax,dword ptr [eax]
 0074E931    mov         edx,dword ptr ds:[7C47B0];^gvar_008DF5B0:TCGData
 0074E937    xor         ecx,ecx
 0074E939    mov         dword ptr [edx],ecx
 0074E93B    call        TObject.Free
 0074E940    mov         ecx,74E9D4;'Closing the SDL Server.'
 0074E945    mov         dl,2
 0074E947    mov         eax,ebx
 0074E949    call        0074C4B0
 0074E94E    mov         eax,[00903690];gvar_00903690:TCommManager
 0074E953    mov         eax,dword ptr [eax+4]
 0074E956    push        eax
 0074E957    call        dword ptr ds:[9036B0]
 0074E95D    pop         ecx
 0074E95E    pop         edx
 0074E95F    pop         edi
 0074E960    pop         esi
 0074E961    pop         ebx
 0074E962    ret
end;*}

//0074EA04
procedure sub_0074EA04(?:TCommManager; ?:TMessage);
begin
{*
 0074EA04    push        ebp
 0074EA05    mov         ebp,esp
 0074EA07    add         esp,0FFFFFFE4
 0074EA0A    push        ebx
 0074EA0B    push        esi
 0074EA0C    push        edi
 0074EA0D    xor         ecx,ecx
 0074EA0F    mov         dword ptr [ebp-14],ecx
 0074EA12    mov         esi,edx
 0074EA14    lea         edi,[ebp-10]
 0074EA17    movs        dword ptr [edi],dword ptr [esi]
 0074EA18    movs        dword ptr [edi],dword ptr [esi]
 0074EA19    movs        dword ptr [edi],dword ptr [esi]
 0074EA1A    movs        dword ptr [edi],dword ptr [esi]
 0074EA1B    mov         ebx,eax
 0074EA1D    xor         eax,eax
 0074EA1F    push        ebp
 0074EA20    push        74EB53
 0074EA25    push        dword ptr fs:[eax]
 0074EA28    mov         dword ptr fs:[eax],esp
 0074EA2B    mov         esi,dword ptr [ebp-0C]
 0074EA2E    mov         eax,esi
 0074EA30    cmp         eax,7
>0074EA33    ja          0074EAFA
 0074EA39    jmp         dword ptr [eax*4+74EA40]
 0074EA39    dd          0074EAFA
 0074EA39    dd          0074EADF
 0074EA39    dd          0074EAE8
 0074EA39    dd          0074EAF1
 0074EA39    dd          0074EAFA
 0074EA39    dd          0074EAFA
 0074EA39    dd          0074EA93
 0074EA39    dd          0074EA60
 0074EA60    mov         eax,[00903690];gvar_00903690:TCommManager
 0074EA65    cmp         word ptr [eax+24A],0
>0074EA6D    je          0074EB3D
 0074EA73    push        74EB70;'Waiting for command accept.'
 0074EA78    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074EA7E    xor         ecx,ecx
 0074EA80    xor         edx,edx
 0074EA82    mov         eax,dword ptr [ebx+24C]
 0074EA88    call        dword ptr [ebx+248]
>0074EA8E    jmp         0074EB3D
 0074EA93    mov         edx,dword ptr [ebp-8]
 0074EA96    mov         eax,ebx
 0074EA98    call        0074CBF4
 0074EA9D    test        al,al
>0074EA9F    je          0074EAC0
 0074EAA1    mov         ecx,74EBB4;'Command accepted'
 0074EAA6    mov         dl,2
 0074EAA8    mov         eax,ebx
 0074EAAA    call        0074C4B0
 0074EAAF    mov         eax,[00903690];gvar_00903690:TCommManager
 0074EAB4    mov         eax,dword ptr [eax+4]
 0074EAB7    push        eax
 0074EAB8    call        dword ptr ds:[9036B0]
>0074EABE    jmp         0074EB3D
 0074EAC0    mov         ecx,74EBE4;'Command was not accepted'
 0074EAC5    mov         dl,2
 0074EAC7    mov         eax,ebx
 0074EAC9    call        0074C4B0
 0074EACE    mov         eax,[00903690];gvar_00903690:TCommManager
 0074EAD3    mov         eax,dword ptr [eax+4]
 0074EAD6    push        eax
 0074EAD7    call        dword ptr ds:[9036B0]
>0074EADD    jmp         0074EB3D
 0074EADF    mov         eax,ebx
 0074EAE1    call        0074C644
>0074EAE6    jmp         0074EB3D
 0074EAE8    mov         eax,ebx
 0074EAEA    call        0074C8C8
>0074EAEF    jmp         0074EB3D
 0074EAF1    mov         eax,ebx
 0074EAF3    call        0074C808
>0074EAF8    jmp         0074EB3D
 0074EAFA    mov         eax,[00903690];gvar_00903690:TCommManager
 0074EAFF    cmp         word ptr [eax+24A],0
>0074EB07    je          0074EB3D
 0074EB09    lea         eax,[ebp-14]
 0074EB0C    push        eax
 0074EB0D    mov         dword ptr [ebp-1C],esi
 0074EB10    mov         byte ptr [ebp-18],0
 0074EB14    lea         edx,[ebp-1C]
 0074EB17    xor         ecx,ecx
 0074EB19    mov         eax,74EC24;'Unexpected SDL message (%d) in chsSendingCommandRestart'
 0074EB1E    call        Format
 0074EB23    mov         eax,dword ptr [ebp-14]
 0074EB26    push        eax
 0074EB27    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074EB2D    xor         ecx,ecx
 0074EB2F    xor         edx,edx
 0074EB31    mov         eax,dword ptr [ebx+24C]
 0074EB37    call        dword ptr [ebx+248]
 0074EB3D    xor         eax,eax
 0074EB3F    pop         edx
 0074EB40    pop         ecx
 0074EB41    pop         ecx
 0074EB42    mov         dword ptr fs:[eax],edx
 0074EB45    push        74EB5A
 0074EB4A    lea         eax,[ebp-14]
 0074EB4D    call        @UStrClr
 0074EB52    ret
>0074EB53    jmp         @HandleFinally
>0074EB58    jmp         0074EB4A
 0074EB5A    pop         edi
 0074EB5B    pop         esi
 0074EB5C    pop         ebx
 0074EB5D    mov         esp,ebp
 0074EB5F    pop         ebp
 0074EB60    ret
*}
end;

//0074EC94
procedure sub_0074EC94(?:TCommManager; ?:TMessage);
begin
{*
 0074EC94    push        ebp
 0074EC95    mov         ebp,esp
 0074EC97    add         esp,0FFFFFFE4
 0074EC9A    push        ebx
 0074EC9B    push        esi
 0074EC9C    push        edi
 0074EC9D    xor         ecx,ecx
 0074EC9F    mov         dword ptr [ebp-14],ecx
 0074ECA2    mov         esi,edx
 0074ECA4    lea         edi,[ebp-10]
 0074ECA7    movs        dword ptr [edi],dword ptr [esi]
 0074ECA8    movs        dword ptr [edi],dword ptr [esi]
 0074ECA9    movs        dword ptr [edi],dword ptr [esi]
 0074ECAA    movs        dword ptr [edi],dword ptr [esi]
 0074ECAB    xor         edx,edx
 0074ECAD    push        ebp
 0074ECAE    push        74EDFD
 0074ECB3    push        dword ptr fs:[edx]
 0074ECB6    mov         dword ptr fs:[edx],esp
 0074ECB9    mov         ebx,dword ptr [ebp-0C]
 0074ECBC    mov         edx,ebx
 0074ECBE    sub         edx,8
>0074ECC1    je          0074ECD2
 0074ECC3    dec         edx
>0074ECC4    je          0074ED13
 0074ECC6    dec         edx
>0074ECC7    je          0074ED50
>0074ECCD    jmp         0074EDA4
 0074ECD2    mov         byte ptr [eax+14],0
 0074ECD6    mov         ecx,74EE18;'Panel is prepared for configuration.'
 0074ECDB    xor         edx,edx
 0074ECDD    call        0074C4B0
 0074ECE2    mov         eax,[00903690];gvar_00903690:TCommManager
 0074ECE7    cmp         word ptr [eax+242],0
>0074ECEF    je          0074EDE7
 0074ECF5    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074ECFB    mov         ecx,74EE70;'Prepared'
 0074ED00    mov         dl,2
 0074ED02    mov         eax,dword ptr [ebx+244]
 0074ED08    call        dword ptr [ebx+240]
>0074ED0E    jmp         0074EDE7
 0074ED13    mov         ecx,74EE90;'Preparation for configuration failed.'
 0074ED18    xor         edx,edx
 0074ED1A    call        0074C4B0
 0074ED1F    mov         eax,[00903690];gvar_00903690:TCommManager
 0074ED24    cmp         word ptr [eax+242],0
>0074ED2C    je          0074EDE7
 0074ED32    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074ED38    mov         ecx,74EE90;'Preparation for configuration failed.'
 0074ED3D    mov         dl,6
 0074ED3F    mov         eax,dword ptr [ebx+244]
 0074ED45    call        dword ptr [ebx+240]
>0074ED4B    jmp         0074EDE7
 0074ED50    mov         eax,[00903690];gvar_00903690:TCommManager
 0074ED55    cmp         word ptr [eax+24A],0
>0074ED5D    je          0074ED7A
 0074ED5F    push        74EEE8;'Attempting another protocol.'
 0074ED64    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074ED6A    xor         ecx,ecx
 0074ED6C    xor         edx,edx
 0074ED6E    mov         eax,dword ptr [ebx+24C]
 0074ED74    call        dword ptr [ebx+248]
 0074ED7A    mov         eax,[00903690];gvar_00903690:TCommManager
 0074ED7F    cmp         word ptr [eax+242],0
>0074ED87    je          0074EDE7
 0074ED89    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074ED8F    mov         ecx,74EEE8;'Attempting another protocol.'
 0074ED94    mov         dl,5
 0074ED96    mov         eax,dword ptr [ebx+244]
 0074ED9C    call        dword ptr [ebx+240]
>0074EDA2    jmp         0074EDE7
 0074EDA4    mov         eax,[00903690];gvar_00903690:TCommManager
 0074EDA9    cmp         word ptr [eax+24A],0
>0074EDB1    je          0074EDE7
 0074EDB3    lea         eax,[ebp-14]
 0074EDB6    push        eax
 0074EDB7    mov         dword ptr [ebp-1C],ebx
 0074EDBA    mov         byte ptr [ebp-18],0
 0074EDBE    lea         edx,[ebp-1C]
 0074EDC1    xor         ecx,ecx
 0074EDC3    mov         eax,74EF30;'Unexpected SDL message (%d) in chsPreparingPanelForConfig'
 0074EDC8    call        Format
 0074EDCD    mov         eax,dword ptr [ebp-14]
 0074EDD0    push        eax
 0074EDD1    mov         ebx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074EDD7    xor         ecx,ecx
 0074EDD9    xor         edx,edx
 0074EDDB    mov         eax,dword ptr [ebx+24C]
 0074EDE1    call        dword ptr [ebx+248]
 0074EDE7    xor         eax,eax
 0074EDE9    pop         edx
 0074EDEA    pop         ecx
 0074EDEB    pop         ecx
 0074EDEC    mov         dword ptr fs:[eax],edx
 0074EDEF    push        74EE04
 0074EDF4    lea         eax,[ebp-14]
 0074EDF7    call        @UStrClr
 0074EDFC    ret
>0074EDFD    jmp         @HandleFinally
>0074EE02    jmp         0074EDF4
 0074EE04    pop         edi
 0074EE05    pop         esi
 0074EE06    pop         ebx
 0074EE07    mov         esp,ebp
 0074EE09    pop         ebp
 0074EE0A    ret
*}
end;

//0074EFA4
procedure TCommManager.SetComm(AutoMode:Integer; CommPort:Integer; BaudRate:Integer);
begin
{*
 0074EFA4    push        ebp
 0074EFA5    mov         ebp,esp
 0074EFA7    push        ebx
 0074EFA8    push        esi
 0074EFA9    push        edi
 0074EFAA    mov         edi,ecx
 0074EFAC    mov         esi,edx
 0074EFAE    mov         ebx,eax
 0074EFB0    mov         eax,ebx
 0074EFB2    call        TCommManager.CommDllOk
 0074EFB7    test        al,al
>0074EFB9    je          0074F0CE
 0074EFBF    cmp         byte ptr [ebx+15],0;TCommManager.CommState:TCommState
>0074EFC3    jne         0074F0CE
 0074EFC9    mov         eax,dword ptr [ebp+8]
 0074EFCC    push        eax
 0074EFCD    cmp         edi,0FF
>0074EFD3    jbe         0074EFDA
 0074EFD5    call        @BoundErr
 0074EFDA    push        edi
 0074EFDB    cmp         esi,0FF
>0074EFE1    jbe         0074EFE8
 0074EFE3    call        @BoundErr
 0074EFE8    push        esi
 0074EFE9    call        dword ptr ds:[9036A0]
 0074EFEF    sub         eax,1
>0074EFF2    jb          0074F005
>0074EFF4    je          0074F02B
 0074EFF6    dec         eax
>0074EFF7    je          0074F064
 0074EFF9    dec         eax
>0074EFFA    je          0074F09A
>0074F000    jmp         0074F0CE
 0074F005    cmp         word ptr [ebx+242],0;TCommManager.?f242:word
>0074F00D    je          0074F0CE
 0074F013    mov         ecx,74F0E4;'The SDL Server is set up'
 0074F018    mov         dl,1
 0074F01A    mov         eax,dword ptr [ebx+244];TCommManager.?f244:dword
 0074F020    call        dword ptr [ebx+240];TCommManager.OnAcControl
>0074F026    jmp         0074F0CE
 0074F02B    cmp         word ptr [ebx+242],0;TCommManager.?f242:word
>0074F033    je          0074F04D
 0074F035    mov         ecx,74F124;'The SDL Server is occupied'
 0074F03A    mov         dl,6
 0074F03C    mov         eax,dword ptr [ebx+244];TCommManager.?f244:dword
 0074F042    call        dword ptr [ebx+240];TCommManager.OnAcControl
>0074F048    jmp         0074F0CE
 0074F04D    push        0
 0074F04F    movzx       ecx,word ptr ds:[74F15C];0x4 gvar_0074F15C
 0074F056    mov         dl,1
 0074F058    mov         eax,74F124;'The SDL Server is occupied'
 0074F05D    call        MessageDlg
>0074F062    jmp         0074F0CE
 0074F064    cmp         word ptr [ebx+242],0;TCommManager.?f242:word
>0074F06C    je          0074F083
 0074F06E    mov         ecx,74F16C;'The SDL Server could not be opened'
 0074F073    mov         dl,6
 0074F075    mov         eax,dword ptr [ebx+244];TCommManager.?f244:dword
 0074F07B    call        dword ptr [ebx+240];TCommManager.OnAcControl
>0074F081    jmp         0074F0CE
 0074F083    push        0
 0074F085    movzx       ecx,word ptr ds:[74F15C];0x4 gvar_0074F15C
 0074F08C    mov         dl,1
 0074F08E    mov         eax,74F16C;'The SDL Server could not be opened'
 0074F093    call        MessageDlg
>0074F098    jmp         0074F0CE
 0074F09A    cmp         word ptr [ebx+242],0;TCommManager.?f242:word
>0074F0A2    je          0074F0B9
 0074F0A4    mov         ecx,74F1C0;'Internal error in the SDL Server'
 0074F0A9    mov         dl,6
 0074F0AB    mov         eax,dword ptr [ebx+244];TCommManager.?f244:dword
 0074F0B1    call        dword ptr [ebx+240];TCommManager.OnAcControl
>0074F0B7    jmp         0074F0CE
 0074F0B9    push        0
 0074F0BB    movzx       ecx,word ptr ds:[74F15C];0x4 gvar_0074F15C
 0074F0C2    mov         dl,1
 0074F0C4    mov         eax,74F1C0;'Internal error in the SDL Server'
 0074F0C9    call        MessageDlg
 0074F0CE    pop         edi
 0074F0CF    pop         esi
 0074F0D0    pop         ebx
 0074F0D1    pop         ebp
 0074F0D2    ret         4
*}
end;

//0074F204
procedure TCommManager.Cancel;
begin
{*
 0074F204    push        ebx
 0074F205    mov         ebx,eax
 0074F207    mov         eax,[00903690];gvar_00903690:TCommManager
 0074F20C    mov         eax,dword ptr [eax+1C]
 0074F20F    add         eax,8
 0074F212    call        00434988
 0074F217    mov         byte ptr [ebx+14],0;TCommManager.ActionToDo:ActionsToDo
 0074F21B    pop         ebx
 0074F21C    ret
*}
end;

//0074F220
procedure TCommManager.Prepare(Password:Word);
begin
{*
 0074F220    push        ebx
 0074F221    push        esi
 0074F222    mov         esi,edx
 0074F224    mov         ebx,eax
 0074F226    mov         eax,ebx
 0074F228    call        TCommManager.CommDllOk
 0074F22D    test        al,al
>0074F22F    je          0074F2A4
 0074F231    cmp         byte ptr [ebx+15],0;TCommManager.CommState:TCommState
>0074F235    jne         0074F2A4
 0074F237    push        esi
 0074F238    mov         eax,[00903690];gvar_00903690:TCommManager
 0074F23D    mov         eax,dword ptr [eax+4]
 0074F240    push        eax
 0074F241    call        dword ptr ds:[9036B8]
 0074F247    cmp         eax,4
>0074F24A    ja          0074F2A4
 0074F24C    jmp         dword ptr [eax*4+74F253]
 0074F24C    dd          0074F267
 0074F24C    dd          0074F27B
 0074F24C    dd          0074F284
 0074F24C    dd          0074F28D
 0074F24C    dd          0074F296
 0074F267    mov         byte ptr [ebx+14],4;TCommManager.ActionToDo:ActionsToDo
 0074F26B    mov         ecx,74F2B4;'Preparing for configuration.'
 0074F270    mov         dl,14
 0074F272    mov         eax,ebx
 0074F274    call        0074C4B0
>0074F279    jmp         0074F2A4
 0074F27B    mov         eax,ebx
 0074F27D    call        0074C548
>0074F282    jmp         0074F2A4
 0074F284    mov         eax,ebx
 0074F286    call        0074CA84
>0074F28B    jmp         0074F2A4
 0074F28D    mov         eax,ebx
 0074F28F    call        0074C9B0
>0074F294    jmp         0074F2A4
 0074F296    mov         ecx,74F2FC;'User cancelled preparing.'
 0074F29B    xor         edx,edx
 0074F29D    mov         eax,ebx
 0074F29F    call        0074C4B0
 0074F2A4    pop         esi
 0074F2A5    pop         ebx
 0074F2A6    ret
*}
end;

//0074F330
procedure TCommManager.Request(MC_Type:Integer);
begin
{*
 0074F330    push        ebx
 0074F331    push        esi
 0074F332    add         esp,0FFFFFFE4
 0074F335    mov         esi,edx
 0074F337    mov         ebx,eax
 0074F339    mov         eax,ebx
 0074F33B    call        TCommManager.CommDllOk
 0074F340    test        al,al
>0074F342    je          0074F4EB
 0074F348    cmp         byte ptr [ebx+15],0;TCommManager.CommState:TCommState
>0074F34C    jne         0074F4EB
 0074F352    push        esp
 0074F353    lea         eax,[esp+5]
 0074F357    push        eax
 0074F358    mov         ecx,903694;gvar_00903694
 0074F35D    mov         edx,esi
 0074F35F    mov         eax,ebx
 0074F361    call        0074C3EC
 0074F366    mov         word ptr ds:[90369C],0;gvar_0090369C
 0074F36F    movzx       eax,byte ptr [esp+1]
 0074F374    push        eax
 0074F375    movzx       eax,byte ptr [esp+4]
 0074F37A    push        eax
 0074F37B    mov         eax,[00903690];gvar_00903690:TCommManager
 0074F380    mov         eax,dword ptr [eax+4]
 0074F383    push        eax
 0074F384    call        dword ptr ds:[9036A4]
 0074F38A    sub         eax,1
>0074F38D    jb          0074F3AA
>0074F38F    je          0074F4B4
 0074F395    dec         eax
>0074F396    je          0074F4BD
 0074F39C    sub         eax,2
>0074F39F    je          0074F4C6
>0074F3A5    jmp         0074F4D6
 0074F3AA    mov         byte ptr [ebx+14],2;TCommManager.ActionToDo:ActionsToDo
 0074F3AE    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F3B1    push        2
 0074F3B3    push        1
 0074F3B5    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F3BB    mov         dl,1
 0074F3BD    mov         eax,[00748B3C];TCommTask
 0074F3C2    call        TCommTask.Create;TCommTask.Create
 0074F3C7    mov         dword ptr [esp+4],eax
 0074F3CB    lea         edx,[esp+4]
 0074F3CF    lea         eax,[esi+8]
 0074F3D2    call        0043489C
 0074F3D7    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F3DA    push        2
 0074F3DC    push        2
 0074F3DE    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F3E4    mov         dl,1
 0074F3E6    mov         eax,[00748B3C];TCommTask
 0074F3EB    call        TCommTask.Create;TCommTask.Create
 0074F3F0    mov         dword ptr [esp+8],eax
 0074F3F4    lea         edx,[esp+8]
 0074F3F8    lea         eax,[esi+8]
 0074F3FB    call        0043489C
 0074F400    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F403    push        2
 0074F405    push        6
 0074F407    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F40D    mov         dl,1
 0074F40F    mov         eax,[00748B3C];TCommTask
 0074F414    call        TCommTask.Create;TCommTask.Create
 0074F419    mov         dword ptr [esp+0C],eax
 0074F41D    lea         edx,[esp+0C]
 0074F421    lea         eax,[esi+8]
 0074F424    call        0043489C
 0074F429    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F42C    push        2
 0074F42E    push        3
 0074F430    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F436    mov         dl,1
 0074F438    mov         eax,[00748B3C];TCommTask
 0074F43D    call        TCommTask.Create;TCommTask.Create
 0074F442    mov         dword ptr [esp+10],eax
 0074F446    lea         edx,[esp+10]
 0074F44A    lea         eax,[esi+8]
 0074F44D    call        0043489C
 0074F452    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F455    push        2
 0074F457    push        4
 0074F459    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F45F    mov         dl,1
 0074F461    mov         eax,[00748B3C];TCommTask
 0074F466    call        TCommTask.Create;TCommTask.Create
 0074F46B    mov         dword ptr [esp+14],eax
 0074F46F    lea         edx,[esp+14]
 0074F473    lea         eax,[esi+8]
 0074F476    call        0043489C
 0074F47B    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F47E    push        2
 0074F480    push        5
 0074F482    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F488    mov         dl,1
 0074F48A    mov         eax,[00748B3C];TCommTask
 0074F48F    call        TCommTask.Create;TCommTask.Create
 0074F494    mov         dword ptr [esp+18],eax
 0074F498    lea         edx,[esp+18]
 0074F49C    lea         eax,[esi+8]
 0074F49F    call        0043489C
 0074F4A4    mov         ecx,74F500;'Opening the SDL Server.'
 0074F4A9    mov         dl,1
 0074F4AB    mov         eax,ebx
 0074F4AD    call        0074C4B0
>0074F4B2    jmp         0074F4EB
 0074F4B4    mov         eax,ebx
 0074F4B6    call        0074C548
>0074F4BB    jmp         0074F4EB
 0074F4BD    mov         eax,ebx
 0074F4BF    call        0074CA84
>0074F4C4    jmp         0074F4EB
 0074F4C6    mov         ecx,74F53C;'User cancelled receiving.'
 0074F4CB    xor         edx,edx
 0074F4CD    mov         eax,ebx
 0074F4CF    call        0074C4B0
>0074F4D4    jmp         0074F4EB
 0074F4D6    push        0
 0074F4D8    movzx       ecx,word ptr ds:[74F570];0x4 gvar_0074F570
 0074F4DF    mov         dl,1
 0074F4E1    mov         eax,74F580;'Unexpected return value from the SDL Server'
 0074F4E6    call        MessageDlg
 0074F4EB    add         esp,1C
 0074F4EE    pop         esi
 0074F4EF    pop         ebx
 0074F4F0    ret
*}
end;

//0074F5D8
procedure TCommManager.Transmit(MC_Type:Integer);
begin
{*
 0074F5D8    push        ebx
 0074F5D9    push        esi
 0074F5DA    add         esp,0FFFFFFD0
 0074F5DD    mov         esi,edx
 0074F5DF    mov         ebx,eax
 0074F5E1    mov         eax,ebx
 0074F5E3    call        TCommManager.CommDllOk
 0074F5E8    test        al,al
>0074F5EA    je          0074F80E
 0074F5F0    cmp         byte ptr [ebx+15],0;TCommManager.CommState:TCommState
>0074F5F4    jne         0074F80E
 0074F5FA    push        esp
 0074F5FB    lea         eax,[esp+5]
 0074F5FF    push        eax
 0074F600    mov         ecx,903694;gvar_00903694
 0074F605    mov         edx,esi
 0074F607    mov         eax,ebx
 0074F609    call        0074C3EC
 0074F60E    mov         word ptr ds:[90369C],0;gvar_0090369C
 0074F617    movzx       eax,byte ptr [esp+1]
 0074F61C    push        eax
 0074F61D    movzx       eax,byte ptr [esp+4]
 0074F622    push        eax
 0074F623    mov         eax,[00903690];gvar_00903690:TCommManager
 0074F628    mov         eax,dword ptr [eax+4]
 0074F62B    push        eax
 0074F62C    call        dword ptr ds:[9036A4]
 0074F632    sub         eax,1
>0074F635    jb          0074F652
>0074F637    je          0074F7C9
 0074F63D    dec         eax
>0074F63E    je          0074F7D9
 0074F644    sub         eax,2
>0074F647    je          0074F7E9
>0074F64D    jmp         0074F7F9
 0074F652    mov         byte ptr [ebx+14],1;TCommManager.ActionToDo:ActionsToDo
 0074F656    mov         eax,[007C4B98];^gvar_007A1EBC
 0074F65B    mov         eax,dword ptr [eax]
 0074F65D    dec         eax
>0074F65E    je          0074F66C
 0074F660    sub         eax,0FE
>0074F665    je          0074F6C3
>0074F667    jmp         0074F7B9
 0074F66C    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F66F    push        1
 0074F671    push        1
 0074F673    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F679    mov         dl,1
 0074F67B    mov         eax,[00748B3C];TCommTask
 0074F680    call        TCommTask.Create;TCommTask.Create
 0074F685    mov         dword ptr [esp+4],eax
 0074F689    lea         edx,[esp+4]
 0074F68D    lea         eax,[esi+8]
 0074F690    call        0043489C
 0074F695    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F698    push        1
 0074F69A    push        5
 0074F69C    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F6A2    mov         dl,1
 0074F6A4    mov         eax,[00748B3C];TCommTask
 0074F6A9    call        TCommTask.Create;TCommTask.Create
 0074F6AE    mov         dword ptr [esp+8],eax
 0074F6B2    lea         edx,[esp+8]
 0074F6B6    lea         eax,[esi+8]
 0074F6B9    call        0043489C
>0074F6BE    jmp         0074F7B9
 0074F6C3    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F6C6    push        1
 0074F6C8    push        1
 0074F6CA    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F6D0    mov         dl,1
 0074F6D2    mov         eax,[00748B3C];TCommTask
 0074F6D7    call        TCommTask.Create;TCommTask.Create
 0074F6DC    mov         dword ptr [esp+0C],eax
 0074F6E0    lea         edx,[esp+0C]
 0074F6E4    lea         eax,[esi+8]
 0074F6E7    call        0043489C
 0074F6EC    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F6EF    push        1
 0074F6F1    push        2
 0074F6F3    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F6F9    mov         dl,1
 0074F6FB    mov         eax,[00748B3C];TCommTask
 0074F700    call        TCommTask.Create;TCommTask.Create
 0074F705    mov         dword ptr [esp+10],eax
 0074F709    lea         edx,[esp+10]
 0074F70D    lea         eax,[esi+8]
 0074F710    call        0043489C
 0074F715    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F718    push        1
 0074F71A    push        6
 0074F71C    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F722    mov         dl,1
 0074F724    mov         eax,[00748B3C];TCommTask
 0074F729    call        TCommTask.Create;TCommTask.Create
 0074F72E    mov         dword ptr [esp+14],eax
 0074F732    lea         edx,[esp+14]
 0074F736    lea         eax,[esi+8]
 0074F739    call        0043489C
 0074F73E    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F741    push        1
 0074F743    push        3
 0074F745    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F74B    mov         dl,1
 0074F74D    mov         eax,[00748B3C];TCommTask
 0074F752    call        TCommTask.Create;TCommTask.Create
 0074F757    mov         dword ptr [esp+18],eax
 0074F75B    lea         edx,[esp+18]
 0074F75F    lea         eax,[esi+8]
 0074F762    call        0043489C
 0074F767    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F76A    push        1
 0074F76C    push        4
 0074F76E    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F774    mov         dl,1
 0074F776    mov         eax,[00748B3C];TCommTask
 0074F77B    call        TCommTask.Create;TCommTask.Create
 0074F780    mov         dword ptr [esp+1C],eax
 0074F784    lea         edx,[esp+1C]
 0074F788    lea         eax,[esi+8]
 0074F78B    call        0043489C
 0074F790    mov         esi,dword ptr [ebx+1C];TCommManager.CommTasks:TObjectList<FXCommMgr.TCommTask>
 0074F793    push        1
 0074F795    push        5
 0074F797    mov         ecx,dword ptr ds:[903690];gvar_00903690:TCommManager
 0074F79D    mov         dl,1
 0074F79F    mov         eax,[00748B3C];TCommTask
 0074F7A4    call        TCommTask.Create;TCommTask.Create
 0074F7A9    mov         dword ptr [esp+24],eax
 0074F7AD    lea         edx,[esp+24]
 0074F7B1    lea         eax,[esi+8]
 0074F7B4    call        0043489C
 0074F7B9    mov         ecx,74F820;'Opening the SDL Server.'
 0074F7BE    mov         dl,1
 0074F7C0    mov         eax,ebx
 0074F7C2    call        0074C4B0
>0074F7C7    jmp         0074F80E
 0074F7C9    mov         ecx,74F85C;'The SDL Server is occupied'
 0074F7CE    xor         edx,edx
 0074F7D0    mov         eax,ebx
 0074F7D2    call        0074C4B0
>0074F7D7    jmp         0074F80E
 0074F7D9    mov         ecx,74F8A0;'The SDL Server could not be opened'
 0074F7DE    xor         edx,edx
 0074F7E0    mov         eax,ebx
 0074F7E2    call        0074C4B0
>0074F7E7    jmp         0074F80E
 0074F7E9    mov         ecx,74F8F4;'User cancelled sending.'
 0074F7EE    xor         edx,edx
 0074F7F0    mov         eax,ebx
 0074F7F2    call        0074C4B0
>0074F7F7    jmp         0074F80E
 0074F7F9    push        0
 0074F7FB    movzx       ecx,word ptr ds:[74F924];0x4 gvar_0074F924
 0074F802    mov         dl,1
 0074F804    mov         eax,74F934;'Unexpected return value from the SDL Server'
 0074F809    call        MessageDlg
 0074F80E    add         esp,30
 0074F811    pop         esi
 0074F812    pop         ebx
 0074F813    ret
*}
end;

//0074F98C
procedure TCommManager.Restart(MC_Type:Integer);
begin
{*
 0074F98C    push        ebx
 0074F98D    push        esi
 0074F98E    push        ecx
 0074F98F    mov         esi,edx
 0074F991    mov         ebx,eax
 0074F993    mov         eax,ebx
 0074F995    call        TCommManager.CommDllOk
 0074F99A    test        al,al
>0074F99C    je          0074FA4E
 0074F9A2    cmp         byte ptr [ebx+15],0;TCommManager.CommState:TCommState
>0074F9A6    jne         0074FA4E
 0074F9AC    push        esp
 0074F9AD    lea         eax,[esp+5]
 0074F9B1    push        eax
 0074F9B2    mov         ecx,903694;gvar_00903694
 0074F9B7    mov         edx,esi
 0074F9B9    mov         eax,ebx
 0074F9BB    call        0074C3EC
 0074F9C0    mov         word ptr ds:[90369C],0;gvar_0090369C
 0074F9C9    movzx       eax,byte ptr [esp+1]
 0074F9CE    push        eax
 0074F9CF    movzx       eax,byte ptr [esp+4]
 0074F9D4    push        eax
 0074F9D5    mov         eax,[00903690];gvar_00903690:TCommManager
 0074F9DA    mov         eax,dword ptr [eax+4]
 0074F9DD    push        eax
 0074F9DE    call        dword ptr ds:[9036A4]
 0074F9E4    sub         eax,1
>0074F9E7    jb          0074F9F5
>0074F9E9    je          0074FA09
 0074F9EB    dec         eax
>0074F9EC    je          0074FA19
 0074F9EE    sub         eax,2
>0074F9F1    je          0074FA29
>0074F9F3    jmp         0074FA39
 0074F9F5    mov         byte ptr [ebx+14],3;TCommManager.ActionToDo:ActionsToDo
 0074F9F9    mov         ecx,74FA60;'Opening the SDL Server.'
 0074F9FE    mov         dl,1
 0074FA00    mov         eax,ebx
 0074FA02    call        0074C4B0
>0074FA07    jmp         0074FA4E
 0074FA09    mov         ecx,74FA9C;'The SDL Server is occupied'
 0074FA0E    xor         edx,edx
 0074FA10    mov         eax,ebx
 0074FA12    call        0074C4B0
>0074FA17    jmp         0074FA4E
 0074FA19    mov         ecx,74FAE0;'The SDL Server could not be opened'
 0074FA1E    xor         edx,edx
 0074FA20    mov         eax,ebx
 0074FA22    call        0074C4B0
>0074FA27    jmp         0074FA4E
 0074FA29    mov         ecx,74FB34;'User cancelled preparing.'
 0074FA2E    xor         edx,edx
 0074FA30    mov         eax,ebx
 0074FA32    call        0074C4B0
>0074FA37    jmp         0074FA4E
 0074FA39    push        0
 0074FA3B    movzx       ecx,word ptr ds:[74FB68];0x4 gvar_0074FB68
 0074FA42    mov         dl,1
 0074FA44    mov         eax,74FB78;'Unexpected return value from the SDL Server'
 0074FA49    call        MessageDlg
 0074FA4E    pop         edx
 0074FA4F    pop         esi
 0074FA50    pop         ebx
 0074FA51    ret
*}
end;

//0074FBD0
procedure TCommManager.WndProc(var msg:TMessage);
begin
{*
 0074FBD0    push        ebx
 0074FBD1    push        esi
 0074FBD2    push        edi
 0074FBD3    mov         ebx,edx
 0074FBD5    mov         esi,eax
 0074FBD7    mov         edi,dword ptr [ebx]
 0074FBD9    cmp         edi,401
>0074FBDF    jne         0074FC8B
 0074FBE5    movzx       eax,byte ptr [esi+15];TCommManager.CommState:TCommState
 0074FBE9    cmp         eax,14
>0074FBEC    ja          0074FC82
 0074FBF2    movzx       eax,byte ptr [eax+74FC00]
 0074FBF9    jmp         dword ptr [eax*4+74FC15]
 0074FBF9    db          1
 0074FBF9    db          2
 0074FBF9    db          3
 0074FBF9    db          5
 0074FBF9    db          5
 0074FBF9    db          5
 0074FBF9    db          5
 0074FBF9    db          5
 0074FBF9    db          5
 0074FBF9    db          5
 0074FBF9    db          0
 0074FBF9    db          4
 0074FBF9    db          4
 0074FBF9    db          4
 0074FBF9    db          4
 0074FBF9    db          4
 0074FBF9    db          4
 0074FBF9    db          4
 0074FBF9    db          0
 0074FBF9    db          6
 0074FBF9    db          7
 0074FBF9    dd          0074FC82
 0074FBF9    dd          0074FC35
 0074FBF9    dd          0074FC40
 0074FBF9    dd          0074FC4B
 0074FBF9    dd          0074FC56
 0074FBF9    dd          0074FC62
 0074FBF9    dd          0074FC6E
 0074FBF9    dd          0074FC79
 0074FC35    mov         edx,ebx
 0074FC37    mov         eax,esi
 0074FC39    call        0074CC18
>0074FC3E    jmp         0074FC82
 0074FC40    mov         edx,ebx
 0074FC42    mov         eax,esi
 0074FC44    call        0074CE9C
>0074FC49    jmp         0074FC82
 0074FC4B    mov         edx,ebx
 0074FC4D    mov         eax,esi
 0074FC4F    call        0074E620
>0074FC54    jmp         0074FC82
 0074FC56    mov         edx,ebx
 0074FC58    mov         eax,dword ptr [esi+20];TCommManager.CommTask:TCommTask
 0074FC5B    call        0074BDE0
>0074FC60    jmp         0074FC82
 0074FC62    mov         edx,ebx
 0074FC64    mov         eax,dword ptr [esi+20];TCommManager.CommTask:TCommTask
 0074FC67    call        0074B9C0
>0074FC6C    jmp         0074FC82
 0074FC6E    mov         edx,ebx
 0074FC70    mov         eax,esi
 0074FC72    call        0074EA04
>0074FC77    jmp         0074FC82
 0074FC79    mov         edx,ebx
 0074FC7B    mov         eax,esi
 0074FC7D    call        0074EC94
 0074FC82    mov         dword ptr [ebx+0C],1
>0074FC89    jmp         0074FCA0
 0074FC8B    mov         eax,dword ptr [ebx+8]
 0074FC8E    push        eax
 0074FC8F    mov         eax,dword ptr [ebx+4]
 0074FC92    push        eax
 0074FC93    push        edi
 0074FC94    mov         eax,dword ptr [esi+4];TCommManager.handle:HWND
 0074FC97    push        eax
 0074FC98    call        user32.DefWindowProcW
 0074FC9D    mov         dword ptr [ebx+0C],eax
 0074FCA0    pop         edi
 0074FCA1    pop         esi
 0074FCA2    pop         ebx
 0074FCA3    ret
*}
end;

Initialization
Finalization
//0074FCA4
{*
 0074FCA4    push        ebp
 0074FCA5    mov         ebp,esp
 0074FCA7    xor         eax,eax
 0074FCA9    push        ebp
 0074FCAA    push        74FCFE
 0074FCAF    push        dword ptr fs:[eax]
 0074FCB2    mov         dword ptr fs:[eax],esp
 0074FCB5    inc         dword ptr ds:[9036BC]
>0074FCBB    jne         0074FCF0
 0074FCBD    mov         eax,7C3ECC;^'Warning! The FX panel is of an older version, and might not be able to hand...
 0074FCC2    call        @UStrClr
 0074FCC7    mov         eax,7C3ED0;^'The configuration can not be read because of license restrictions.'
 0074FCCC    call        @UStrClr
 0074FCD1    mov         eax,7C3ED4;^'
Partially transferred data is invalid!'
 0074FCD6    call        @UStrClr
 0074FCDB    mov         eax,7C3ED8;^'Config Info'
 0074FCE0    mov         ecx,6
 0074FCE5    mov         edx,dword ptr ds:[4012B8];string
 0074FCEB    call        @FinalizeArray
 0074FCF0    xor         eax,eax
 0074FCF2    pop         edx
 0074FCF3    pop         ecx
 0074FCF4    pop         ecx
 0074FCF5    mov         dword ptr fs:[eax],edx
 0074FCF8    push        74FD05
 0074FCFD    ret
>0074FCFE    jmp         @HandleFinally
>0074FD03    jmp         0074FCFD
 0074FD05    pop         ebp
 0074FD06    ret
*}
end.