//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.ActnList;

interface

uses
  SysUtils, Classes, System.Generics.Defaults, System.Generics.Collections, Vcl.ImgList, Vcl.Menus, System;

type
  TCustomActionList = class(TContainedActionList)
  published
    function IsShortCut(var Message:TWMKey):Boolean;//004D592C
    destructor Destroy();//004D58E0
    constructor Create(AOwner:TComponent);//004D5884
  public
    FImageChangeLink:TChangeLink;//f70
    FImages:TCustomImageList;//f74
    destructor Destroy(); virtual;//004D58E0
    procedure Notification(AComponent:TComponent; Operation:TOperation); virtual;//v14//004D59D8
    constructor Create(AOwner:TComponent); virtual;//v3C//004D5884
    procedure v44; virtual;//v44//004D583C
    //procedure v4C(?:?); virtual;//v4C//004D5A04
  end;
  TActionLink = class(TContainedActionLink)
  end;
  TShortCutList = class(TCustomShortCutList)
  published
    function Add(S:string):Integer;//004D5A38
  public
    function Add(S:string):Integer; virtual;//v3C//004D5A38
  end;
  TCustomAction = class(TContainedAction)
  published
    function Update:Boolean;//004D5BCC
    procedure Execute;//004D5B04
    constructor Create;//004D5A64
    destructor Destroy();//004D5AAC
  public
    FImage:TObject;//fA0
    FMask:TObject;//fA4
    destructor Destroy(); virtual;//004D5AAC
    procedure AssignTo(Dest:Classes.TPersistent); virtual;//v0//004D5AE8
    constructor Create; virtual;//v3C//004D5A64
    function Update:Boolean; virtual;//v5C//004D5BCC
    function CreateShortCutList:TCustomShortCutList; virtual;//v60//004D5A9C
    procedure Execute; dynamic;//004D5B04
  end;
    function MonitorFromWindow(dwFlags:Windows.DWORD):HMONITOR; stdcall;//004D5028
    function MonitorFromPoint(dwFlags:Windows.DWORD):HMONITOR; stdcall;//004D5030
    function GetMonitorInfoW(lpMonitorInfo:PMonitorInfoW):Boolean; stdcall;//004D5038
    function EnumDisplayMonitors(lprcIntersect:Windows.PRect; lpfnEnumProc:TMonitorEnumProc; lData:Windows.LPARAM):Boolean; stdcall;//004D5040
    //function sub_004D5068:?;//004D5068
    //function sub_004D5080:?;//004D5080
    procedure sub_004D5098;//004D5098
    procedure sub_004D50B0;//004D50B0
    procedure sub_004D50C8;//004D50C8
    procedure sub_004D50E0;//004D50E0
    procedure sub_004D50F8;//004D50F8
    procedure sub_004D583C;//004D583C
    procedure Notification(AComponent:TComponent; Operation:TOperation);//004D59D8
    //procedure sub_004D5A04(?:?);//004D5A04
    function CreateShortCutList:TCustomShortCutList;//004D5A9C
    procedure AssignTo(Dest:Classes.TPersistent);//004D5AE8
    //function sub_004D5BB0(?:TCustomAction):?;//004D5BB0

implementation

//004D5028
function user32.MonitorFromWindow(dwFlags:Windows.DWORD):HMONITOR; stdcall;
begin
{*
 004D5028    jmp         dword ptr ds:[9054AC]
*}
end;

//004D5030
function user32.MonitorFromPoint(dwFlags:Windows.DWORD):HMONITOR; stdcall;
begin
{*
 004D5030    jmp         dword ptr ds:[9054A8]
*}
end;

//004D5038
function user32.GetMonitorInfoW(lpMonitorInfo:PMonitorInfoW):Boolean; stdcall;
begin
{*
 004D5038    jmp         dword ptr ds:[9054A4]
*}
end;

//004D5040
function user32.EnumDisplayMonitors(lprcIntersect:Windows.PRect; lpfnEnumProc:TMonitorEnumProc; lData:Windows.LPARAM):Boolean; stdcall;
begin
{*
 004D5040    jmp         dword ptr ds:[9054A0]
*}
end;

//004D5068
{*function sub_004D5068:?;
begin
 004D5068    jmp         dword ptr ds:[908270]
end;*}

//004D5080
{*function sub_004D5080:?;
begin
 004D5080    jmp         dword ptr ds:[90826C]
end;*}

//004D5098
procedure sub_004D5098;
begin
{*
 004D5098    jmp         dword ptr ds:[908268]
*}
end;

//004D50B0
procedure sub_004D50B0;
begin
{*
 004D50B0    jmp         dword ptr ds:[908264]
*}
end;

//004D50C8
procedure sub_004D50C8;
begin
{*
 004D50C8    jmp         dword ptr ds:[908260]
*}
end;

//004D50E0
procedure sub_004D50E0;
begin
{*
 004D50E0    jmp         dword ptr ds:[90825C]
*}
end;

//004D50F8
procedure sub_004D50F8;
begin
{*
 004D50F8    jmp         dword ptr ds:[908258]
*}
end;

//004D583C
procedure sub_004D583C;
begin
{*
 004D583C    push        ebx
 004D583D    push        esi
 004D583E    mov         ebx,eax
 004D5840    mov         eax,ebx
 004D5842    call        004B2384
 004D5847    cmp         dword ptr [ebx+40],0;TCustomActionList.FActions:TList<System.Actions.TContainedAction>
 004D584B    setne       al
 004D584E    test        al,al
>004D5850    je          004D5880
 004D5852    test        byte ptr [ebx+1C],10;TCustomActionList.FComponentState:TComponentState
>004D5856    je          004D5880
 004D5858    mov         esi,dword ptr [ebx+4];TCustomActionList.FOwner:TComponent
 004D585B    mov         eax,esi
 004D585D    mov         edx,dword ptr ds:[5B865C];TForm
 004D5863    call        @IsClass
 004D5868    test        al,al
>004D586A    je          004D5880
 004D586C    cmp         dword ptr [esi+2E0],0
>004D5873    je          004D5880
 004D5875    mov         eax,dword ptr [esi+2E0]
 004D587B    mov         edx,dword ptr [eax]
 004D587D    call        dword ptr [edx+0C]
 004D5880    pop         esi
 004D5881    pop         ebx
 004D5882    ret
*}
end;

//004D5884
constructor TCustomActionList.Create(AOwner:TComponent);
begin
{*
 004D5884    push        ebp
 004D5885    mov         ebp,esp
 004D5887    push        ecx
 004D5888    push        ebx
 004D5889    push        esi
 004D588A    test        dl,dl
>004D588C    je          004D5896
 004D588E    add         esp,0FFFFFFF0
 004D5891    call        @ClassCreate
 004D5896    mov         byte ptr [ebp-1],dl
 004D5899    mov         ebx,eax
 004D589B    xor         edx,edx
 004D589D    mov         eax,ebx
 004D589F    call        TContainedActionList.Create
 004D58A4    mov         dl,1
 004D58A6    mov         eax,[005A6CE0];TChangeLink
 004D58AB    call        TChangeLink.Create;TChangeLink.Create
 004D58B0    mov         esi,eax
 004D58B2    mov         dword ptr [ebx+70],esi;TCustomActionList.FImageChangeLink:TChangeLink
 004D58B5    mov         dword ptr [esi+14],ebx;TChangeLink.?f14:TCustomActionList
 004D58B8    mov         dword ptr [esi+10],4D5920;TChangeLink.FOnChange:TNotifyEvent
 004D58BF    mov         eax,ebx
 004D58C1    cmp         byte ptr [ebp-1],0
>004D58C5    je          004D58D6
 004D58C7    call        @AfterConstruction
 004D58CC    pop         dword ptr fs:[0]
 004D58D3    add         esp,0C
 004D58D6    mov         eax,ebx
 004D58D8    pop         esi
 004D58D9    pop         ebx
 004D58DA    pop         ecx
 004D58DB    pop         ebp
 004D58DC    ret
*}
end;

//004D58E0
destructor TCustomActionList.Destroy();
begin
{*
 004D58E0    push        ebx
 004D58E1    push        esi
 004D58E2    push        ecx
 004D58E3    call        @BeforeDestruction
 004D58E8    mov         ebx,edx
 004D58EA    mov         esi,eax
 004D58EC    lea         eax,[esi+70];TCustomActionList.FImageChangeLink:TChangeLink
 004D58EF    mov         dword ptr [esp],eax
 004D58F2    mov         eax,dword ptr [esp]
 004D58F5    mov         eax,dword ptr [eax]
 004D58F7    mov         edx,dword ptr [esp]
 004D58FA    xor         ecx,ecx
 004D58FC    mov         dword ptr [edx],ecx
 004D58FE    call        TObject.Free
 004D5903    mov         dl,0FC
 004D5905    and         dl,bl
 004D5907    mov         eax,esi
 004D5909    call        TContainedActionList.Destroy
 004D590E    test        bl,bl
>004D5910    jle         004D5919
 004D5912    mov         eax,esi
 004D5914    call        @ClassDestroy
 004D5919    pop         edx
 004D591A    pop         esi
 004D591B    pop         ebx
 004D591C    ret
*}
end;

//004D592C
function TCustomActionList.IsShortCut(var Message:TWMKey):Boolean;
begin
{*
 004D592C    push        ebx
 004D592D    push        esi
 004D592E    push        edi
 004D592F    push        ebp
 004D5930    add         esp,0FFFFFFF8
 004D5933    mov         ebx,edx
 004D5935    mov         dword ptr [esp],eax
 004D5938    mov         byte ptr [esp+4],0
 004D593D    call        IsAltGRPressed
 004D5942    test        al,al
>004D5944    jne         004D59CB
 004D594A    mov         eax,dword ptr [ebx+8];TWMKey.KeyData:LongInt
 004D594D    call        KeyDataToShiftState
 004D5952    mov         esi,eax
 004D5954    movzx       eax,word ptr [ebx+4];TWMKey.CharCode:Word
 004D5958    mov         edx,esi
 004D595A    call        ShortCut
 004D595F    mov         edi,eax
 004D5961    test        di,di
>004D5964    je          004D59CB
 004D5966    mov         eax,dword ptr [esp]
 004D5969    call        004B25EC
 004D596E    mov         esi,eax
 004D5970    dec         esi
 004D5971    test        esi,esi
>004D5973    jl          004D59CB
 004D5975    inc         esi
 004D5976    xor         ebp,ebp
 004D5978    mov         edx,ebp
 004D597A    mov         eax,dword ptr [esp]
 004D597D    call        TContainedActionList.GetAction
 004D5982    mov         ebx,eax
 004D5984    mov         eax,ebx
 004D5986    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 004D598C    call        @IsClass
 004D5991    test        al,al
>004D5993    je          004D59C7
 004D5995    cmp         di,word ptr [ebx+8A];TContainedAction.FShortCut:TShortCut
>004D599C    je          004D59BA
 004D599E    mov         eax,ebx
 004D59A0    call        TVirtualListAction.GetSecondaryShortCuts
 004D59A5    test        eax,eax
>004D59A7    je          004D59C7
 004D59A9    mov         eax,ebx
 004D59AB    call        TVirtualListAction.GetSecondaryShortCuts
 004D59B0    mov         edx,edi
 004D59B2    call        TCustomShortCutList.IndexOfShortCut
 004D59B7    inc         eax
>004D59B8    je          004D59C7
 004D59BA    mov         eax,ebx
 004D59BC    mov         edx,dword ptr [eax]
 004D59BE    call        dword ptr [edx+64];TContainedAction.sub_004B19BC
 004D59C1    mov         byte ptr [esp+4],al
>004D59C5    jmp         004D59CB
 004D59C7    inc         ebp
 004D59C8    dec         esi
>004D59C9    jne         004D5978
 004D59CB    movzx       eax,byte ptr [esp+4]
 004D59D0    pop         ecx
 004D59D1    pop         edx
 004D59D2    pop         ebp
 004D59D3    pop         edi
 004D59D4    pop         esi
 004D59D5    pop         ebx
 004D59D6    ret
*}
end;

//004D59D8
procedure TCustomActionList.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 004D59D8    push        ebx
 004D59D9    push        esi
 004D59DA    push        edi
 004D59DB    mov         ebx,ecx
 004D59DD    mov         edi,edx
 004D59DF    mov         esi,eax
 004D59E1    mov         ecx,ebx
 004D59E3    mov         edx,edi
 004D59E5    mov         eax,esi
 004D59E7    call        TContainedActionList.Notification
 004D59EC    cmp         bl,1
>004D59EF    jne         004D59FF
 004D59F1    cmp         edi,dword ptr [esi+74];TCustomActionList.FImages:TCustomImageList
>004D59F4    jne         004D59FF
 004D59F6    xor         edx,edx
 004D59F8    mov         eax,esi
 004D59FA    mov         ecx,dword ptr [eax]
 004D59FC    call        dword ptr [ecx+4C];TCustomActionList.sub_004D5A04
 004D59FF    pop         edi
 004D5A00    pop         esi
 004D5A01    pop         ebx
 004D5A02    ret
*}
end;

//004D5A04
{*procedure sub_004D5A04(?:?);
begin
 004D5A04    push        ebx
 004D5A05    push        esi
 004D5A06    mov         esi,edx
 004D5A08    mov         ebx,eax
 004D5A0A    mov         eax,dword ptr [ebx+74];TCustomActionList.FImages:TCustomImageList
 004D5A0D    test        eax,eax
>004D5A0F    je          004D5A19
 004D5A11    mov         edx,dword ptr [ebx+70];TCustomActionList.FImageChangeLink:TChangeLink
 004D5A14    call        TCustomImageList.UnRegisterChanges
 004D5A19    mov         eax,esi
 004D5A1B    mov         dword ptr [ebx+74],eax;TCustomActionList.FImages:TCustomImageList
 004D5A1E    test        eax,eax
>004D5A20    je          004D5A34
 004D5A22    mov         edx,dword ptr [ebx+70];TCustomActionList.FImageChangeLink:TChangeLink
 004D5A25    call        TCustomImageList.RegisterChanges
 004D5A2A    mov         edx,ebx
 004D5A2C    mov         eax,dword ptr [ebx+74];TCustomActionList.FImages:TCustomImageList
 004D5A2F    call        TComponent.FreeNotification
 004D5A34    pop         esi
 004D5A35    pop         ebx
 004D5A36    ret
end;*}

//004D5A38
function TShortCutList.Add(S:string):Integer;
begin
{*
 004D5A38    push        ebx
 004D5A39    push        esi
 004D5A3A    push        edi
 004D5A3B    mov         esi,edx
 004D5A3D    mov         ebx,eax
 004D5A3F    mov         edx,esi
 004D5A41    mov         eax,ebx
 004D5A43    call        TStringList.Add
 004D5A48    mov         edi,eax
 004D5A4A    mov         eax,esi
 004D5A4C    call        TextToShortCut
 004D5A51    movzx       ecx,ax
 004D5A54    mov         edx,edi
 004D5A56    mov         eax,ebx
 004D5A58    mov         ebx,dword ptr [eax]
 004D5A5A    call        dword ptr [ebx+24]
 004D5A5D    mov         eax,edi
 004D5A5F    pop         edi
 004D5A60    pop         esi
 004D5A61    pop         ebx
 004D5A62    ret
*}
end;

//004D5A64
constructor TCustomAction.Create;
begin
{*
 004D5A64    push        ebx
 004D5A65    push        esi
 004D5A66    test        dl,dl
>004D5A68    je          004D5A72
 004D5A6A    add         esp,0FFFFFFF0
 004D5A6D    call        @ClassCreate
 004D5A72    mov         ebx,edx
 004D5A74    mov         esi,eax
 004D5A76    xor         edx,edx
 004D5A78    mov         eax,esi
 004D5A7A    call        TContainedAction.Create
 004D5A7F    mov         eax,esi
 004D5A81    test        bl,bl
>004D5A83    je          004D5A94
 004D5A85    call        @AfterConstruction
 004D5A8A    pop         dword ptr fs:[0]
 004D5A91    add         esp,0C
 004D5A94    mov         eax,esi
 004D5A96    pop         esi
 004D5A97    pop         ebx
 004D5A98    ret
*}
end;

//004D5A9C
function TCustomAction.CreateShortCutList:TCustomShortCutList;
begin
{*
 004D5A9C    mov         dl,1
 004D5A9E    mov         eax,[004D5428];TShortCutList
 004D5AA3    call        TStringList.Create
 004D5AA8    ret
*}
end;

//004D5AAC
destructor TCustomAction.Destroy();
begin
{*
 004D5AAC    push        ebx
 004D5AAD    push        esi
 004D5AAE    call        @BeforeDestruction
 004D5AB3    mov         ebx,edx
 004D5AB5    mov         esi,eax
 004D5AB7    mov         eax,dword ptr [esi+0A0];TCustomAction.FImage:TObject
 004D5ABD    call        TObject.Free
 004D5AC2    mov         eax,dword ptr [esi+0A4];TCustomAction.FMask:TObject
 004D5AC8    call        TObject.Free
 004D5ACD    mov         dl,0FC
 004D5ACF    and         dl,bl
 004D5AD1    mov         eax,esi
 004D5AD3    call        TContainedAction.Destroy
 004D5AD8    test        bl,bl
>004D5ADA    jle         004D5AE3
 004D5ADC    mov         eax,esi
 004D5ADE    call        @ClassDestroy
 004D5AE3    pop         esi
 004D5AE4    pop         ebx
 004D5AE5    ret
*}
end;

//004D5AE8
procedure TCustomAction.AssignTo(Dest:Classes.TPersistent);
begin
{*
 004D5AE8    push        ebx
 004D5AE9    mov         ebx,edx
 004D5AEB    mov         edx,ebx
 004D5AED    call        TContainedAction.AssignTo
 004D5AF2    mov         eax,ebx
 004D5AF4    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 004D5AFA    call        @IsClass
 004D5AFF    test        al,al
 004D5B01    pop         ebx
 004D5B02    ret
*}
end;

//004D5B04
procedure TCustomAction.Execute;
begin
{*
 004D5B04    push        ebx
 004D5B05    push        esi
 004D5B06    push        edi
 004D5B07    mov         edi,eax
 004D5B09    xor         ebx,ebx
 004D5B0B    mov         eax,edi
 004D5B0D    mov         edx,dword ptr [eax]
 004D5B0F    call        dword ptr [edx+4C];TContainedAction.Suspended
 004D5B12    test        al,al
>004D5B14    jne         004D5BAA
 004D5B1A    mov         eax,edi
 004D5B1C    mov         edx,dword ptr [eax]
 004D5B1E    call        dword ptr [edx+5C];TCustomAction.Update
 004D5B21    cmp         byte ptr [edi+71],0;TCustomAction.FEnabled:Boolean
>004D5B25    je          004D5B4D
 004D5B27    cmp         byte ptr [edi+6A],0;TCustomAction.FAutoCheck:Boolean
>004D5B2B    je          004D5B4D
 004D5B2D    cmp         byte ptr [edi+70],0;TCustomAction.FChecked:Boolean
>004D5B31    je          004D5B3F
 004D5B33    cmp         byte ptr [edi+70],0;TCustomAction.FChecked:Boolean
>004D5B37    je          004D5B4D
 004D5B39    cmp         dword ptr [edi+74],0;TCustomAction.FGroupIndex:Integer
>004D5B3D    jne         004D5B4D
 004D5B3F    movzx       edx,byte ptr [edi+70];TCustomAction.FChecked:Boolean
 004D5B43    xor         dl,1
 004D5B46    mov         eax,edi
 004D5B48    mov         ecx,dword ptr [eax]
 004D5B4A    call        dword ptr [ecx+70];TCustomAction.sub_004B1B74
 004D5B4D    movzx       ebx,byte ptr [edi+71];TCustomAction.FEnabled:Boolean
 004D5B51    test        bl,bl
>004D5B53    je          004D5BAA
 004D5B55    mov         eax,edi
 004D5B57    call        004D5BB0
 004D5B5C    test        eax,eax
>004D5B5E    je          004D5B76
 004D5B60    mov         eax,edi
 004D5B62    call        004D5BB0
 004D5B67    mov         edx,edi
 004D5B69    mov         si,0FFF2
 004D5B6D    call        @CallDynaInst
 004D5B72    test        al,al
>004D5B74    jne         004D5BA8
 004D5B76    mov         eax,[007C4A18];^Application:TApplication
 004D5B7B    mov         eax,dword ptr [eax]
 004D5B7D    mov         edx,edi
 004D5B7F    call        TApplication.ExecuteAction
 004D5B84    test        al,al
>004D5B86    jne         004D5BA8
 004D5B88    mov         eax,edi
 004D5B8A    call        TBasicAction.Execute
 004D5B8F    test        al,al
>004D5B91    jne         004D5BA8
 004D5B93    mov         ecx,edi
 004D5B95    xor         edx,edx
 004D5B97    mov         eax,0B040
 004D5B9C    call        004E3688
 004D5BA1    dec         eax
>004D5BA2    je          004D5BA8
 004D5BA4    xor         ebx,ebx
>004D5BA6    jmp         004D5BAA
 004D5BA8    mov         bl,1
 004D5BAA    mov         eax,ebx
 004D5BAC    pop         edi
 004D5BAD    pop         esi
 004D5BAE    pop         ebx
 004D5BAF    ret
*}
end;

//004D5BB0
{*function sub_004D5BB0(?:TCustomAction):?;
begin
 004D5BB0    mov         eax,dword ptr [eax+64];TCustomAction.FActionList:TContainedActionList
 004D5BB3    ret
end;*}

//004D5BCC
function TCustomAction.Update:Boolean;
begin
{*
 004D5BCC    push        ebx
 004D5BCD    mov         ebx,eax
 004D5BCF    mov         eax,dword ptr [ebx+64];TCustomAction.FActionList:TContainedActionList
 004D5BD2    test        eax,eax
>004D5BD4    je          004D5BDF
 004D5BD6    mov         edx,ebx
 004D5BD8    mov         ecx,dword ptr [eax]
 004D5BDA    call        dword ptr [ecx+40];TContainedActionList.UpdateAction
>004D5BDD    jmp         004D5BE1
 004D5BDF    xor         eax,eax
 004D5BE1    test        al,al
>004D5BE3    je          004D5BE9
 004D5BE5    mov         al,1
>004D5BE7    jmp         004D5BF7
 004D5BE9    mov         eax,[007C4A18];^Application:TApplication
 004D5BEE    mov         eax,dword ptr [eax]
 004D5BF0    mov         edx,ebx
 004D5BF2    call        TApplication.UpdateAction
 004D5BF7    test        al,al
>004D5BF9    je          004D5BFF
 004D5BFB    mov         al,1
>004D5BFD    jmp         004D5C06
 004D5BFF    mov         eax,ebx
 004D5C01    call        TBasicAction.Update
 004D5C06    test        al,al
>004D5C08    je          004D5C0E
 004D5C0A    mov         al,1
 004D5C0C    pop         ebx
 004D5C0D    ret
 004D5C0E    mov         ecx,ebx
 004D5C10    xor         edx,edx
 004D5C12    mov         eax,0B03F
 004D5C17    call        004E3688
 004D5C1C    dec         eax
 004D5C1D    sete        al
 004D5C20    pop         ebx
 004D5C21    ret
*}
end;

Initialization
//0079CE58
{*
 0079CE58    sub         dword ptr ds:[7CA5B0],1
>0079CE5F    jae         0079CE95
 0079CE61    mov         eax,[004DC470];TControl
 0079CE66    call        StartClassGroup
 0079CE6B    mov         eax,[004DC470];TControl
 0079CE70    call        ActivateClassGroup
 0079CE75    mov         edx,dword ptr ds:[4DC470];TControl
 0079CE7B    mov         eax,[004D5100];TCustomActionList
 0079CE80    call        GroupDescendentsWith
 0079CE85    mov         edx,dword ptr ds:[4DC470];TControl
 0079CE8B    mov         eax,[004D55AC];TCustomAction
 0079CE90    call        GroupDescendentsWith
 0079CE95    ret
*}
Finalization
end.