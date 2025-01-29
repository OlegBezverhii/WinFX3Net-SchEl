//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.AppEvnts;

interface

uses
  SysUtils, Classes, System.Contnrs, System.ImageList, System.Generics.Collections, System.Generics.Defaults, System.SyncObjs, Winapi.CommCtrl, Vcl.AppEvnts;

type
  TCustomApplicationEvents = class(TComponent)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Create;//00734358
  public
    FOnActionExecute:TActionEvent;//f40
    FOnActionUpdate:TActionEvent;//f48
    FOnException:TExceptionEvent;//f50
    FOnMessage:TMessageEvent;//f58
    FOnHelp:THelpEvent;//f60
    FOnHint:TNotifyEvent;//f68
    FOnIdle:TIdleEvent;//f70
    FOnDeactivate:TNotifyEvent;//f78
    FOnActivate:TNotifyEvent;//f80
    FOnMinimize:TNotifyEvent;//f88
    FOnRestore:TNotifyEvent;//f90
    FOnShortCut:TShortCutEvent;//f98
    FOnShowHint:TShowHintEvent;//fA0
    FOnSettingChange:TSettingChangeEvent;//fA8
    FOnModalBegin:TNotifyEvent;//fB0
    FOnModalEnd:TNotifyEvent;//fB8
    constructor Create; virtual;//v3C//00734358
    procedure DoActionUpdate(Action:Classes.TBasicAction; var Handled:Boolean);//007343A4
    procedure DoMinimize(Sender:TObject);//007343CC
    procedure DoActivate(Sender:TObject);//007343E8
    procedure DoDeactivate(Sender:TObject);//007344C8
    procedure DoRestore(Sender:TObject);//007344F0
    procedure DoShortcut(var Msg:Messages.TWMKey; var Handled:Boolean);//0073450C
    procedure DoModalEnd(Sender:TObject);//00734598
  end;
  TMultiCaster = class(TComponent)
  published
    procedure AddAppEvent(AppEvent:TCustomApplicationEvents);//007345D0
    procedure GetAppEvents(Index:Integer);//0073500C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    constructor Create;//007345F8
    destructor Destroy();//00734770
  public
    FAppEvents:TComponentList;//f40
    FCacheAppEvent:TCustomApplicationEvents;//f44
    FCancelDispatching:Boolean;//f48
    FDispatching:Integer;//f4C
    destructor Destroy(); virtual;//00734770
    constructor Create; virtual;//v3C//007345F8
  end;

implementation

//00734358
constructor TCustomApplicationEvents.Create;
begin
{*
 00734358    push        ebx
 00734359    push        esi
 0073435A    test        dl,dl
>0073435C    je          00734366
 0073435E    add         esp,0FFFFFFF0
 00734361    call        @ClassCreate
 00734366    mov         ebx,edx
 00734368    mov         esi,eax
 0073436A    xor         edx,edx
 0073436C    mov         eax,esi
 0073436E    call        TComponent.Create
 00734373    cmp         dword ptr ds:[7C3E08],0;gvar_007C3E08
>0073437A    je          00734388
 0073437C    mov         edx,esi
 0073437E    mov         eax,[007C3E08];gvar_007C3E08
 00734383    call        TMultiCaster.AddAppEvent
 00734388    mov         eax,esi
 0073438A    test        bl,bl
>0073438C    je          0073439D
 0073438E    call        @AfterConstruction
 00734393    pop         dword ptr fs:[0]
 0073439A    add         esp,0C
 0073439D    mov         eax,esi
 0073439F    pop         esi
 007343A0    pop         ebx
 007343A1    ret
*}
end;

//007343A4
procedure TCustomApplicationEvents.DoActionUpdate(Action:Classes.TBasicAction; var Handled:Boolean);
begin
{*
 007343A4    push        ebx
 007343A5    cmp         word ptr [eax+42],0
>007343AA    je          007343B4
 007343AC    mov         ebx,eax
 007343AE    mov         eax,dword ptr [ebx+44]
 007343B1    call        dword ptr [ebx+40]
 007343B4    pop         ebx
 007343B5    ret
*}
end;

//007343CC
procedure TCustomApplicationEvents.DoMinimize(Sender:TObject);
begin
{*
 007343CC    push        ebx
 007343CD    cmp         word ptr [eax+82],0
>007343D5    je          007343E5
 007343D7    mov         ebx,eax
 007343D9    mov         eax,dword ptr [ebx+84]
 007343DF    call        dword ptr [ebx+80]
 007343E5    pop         ebx
 007343E6    ret
*}
end;

//007343E8
procedure TCustomApplicationEvents.DoActivate(Sender:TObject);
begin
{*
 007343E8    push        ebx
 007343E9    cmp         word ptr [eax+7A],0
>007343EE    je          007343F8
 007343F0    mov         ebx,eax
 007343F2    mov         eax,dword ptr [ebx+7C]
 007343F5    call        dword ptr [ebx+78]
 007343F8    pop         ebx
 007343F9    ret
*}
end;

//007344C8
procedure TCustomApplicationEvents.DoDeactivate(Sender:TObject);
begin
{*
 007344C8    push        ebx
 007344C9    cmp         word ptr [eax+72],0
>007344CE    je          007344D8
 007344D0    mov         ebx,eax
 007344D2    mov         eax,dword ptr [ebx+74]
 007344D5    call        dword ptr [ebx+70]
 007344D8    pop         ebx
 007344D9    ret
*}
end;

//007344F0
procedure TCustomApplicationEvents.DoRestore(Sender:TObject);
begin
{*
 007344F0    push        ebx
 007344F1    cmp         word ptr [eax+8A],0
>007344F9    je          00734509
 007344FB    mov         ebx,eax
 007344FD    mov         eax,dword ptr [ebx+8C]
 00734503    call        dword ptr [ebx+88]
 00734509    pop         ebx
 0073450A    ret
*}
end;

//0073450C
procedure TCustomApplicationEvents.DoShortcut(var Msg:Messages.TWMKey; var Handled:Boolean);
begin
{*
 0073450C    push        ebx
 0073450D    cmp         word ptr [eax+92],0
>00734515    je          00734525
 00734517    mov         ebx,eax
 00734519    mov         eax,dword ptr [ebx+94]
 0073451F    call        dword ptr [ebx+90]
 00734525    pop         ebx
 00734526    ret
*}
end;

//00734598
procedure TCustomApplicationEvents.DoModalEnd(Sender:TObject);
begin
{*
 00734598    push        ebx
 00734599    cmp         word ptr [eax+0B2],0
>007345A1    je          007345B1
 007345A3    mov         ebx,eax
 007345A5    mov         eax,dword ptr [ebx+0B4]
 007345AB    call        dword ptr [ebx+0B0]
 007345B1    pop         ebx
 007345B2    ret
*}
end;

//007345D0
procedure TMultiCaster.AddAppEvent(AppEvent:TCustomApplicationEvents);
begin
{*
 007345D0    push        ebx
 007345D1    push        esi
 007345D2    push        edi
 007345D3    mov         esi,edx
 007345D5    mov         ebx,eax
 007345D7    mov         eax,dword ptr [ebx+40]
 007345DA    mov         edi,esi
 007345DC    mov         edx,edi
 007345DE    call        TList.IndexOf
 007345E3    inc         eax
>007345E4    jne         007345F0
 007345E6    mov         eax,dword ptr [ebx+40]
 007345E9    mov         edx,edi
 007345EB    call        TList.Add
 007345F0    pop         edi
 007345F1    pop         esi
 007345F2    pop         ebx
 007345F3    ret
*}
end;

//007345F8
constructor TMultiCaster.Create;
begin
{*
 007345F8    push        ebp
 007345F9    mov         ebp,esp
 007345FB    push        ecx
 007345FC    push        ebx
 007345FD    push        esi
 007345FE    test        dl,dl
>00734600    je          0073460A
 00734602    add         esp,0FFFFFFF0
 00734605    call        @ClassCreate
 0073460A    mov         byte ptr [ebp-1],dl
 0073460D    mov         ebx,eax
 0073460F    mov         esi,dword ptr ds:[7C4A18];^Application:TApplication
 00734615    xor         edx,edx
 00734617    mov         eax,ebx
 00734619    call        TComponent.Create
 0073461E    xor         ecx,ecx
 00734620    mov         dl,1
 00734622    mov         eax,[004CEE40];TComponentList
 00734627    call        TComponentList.Create
 0073462C    mov         dword ptr [ebx+40],eax
 0073462F    mov         eax,dword ptr [esi]
 00734631    mov         dword ptr [eax+0FC],ebx
 00734637    mov         dword ptr [eax+0F8],7348AC
 00734641    mov         eax,dword ptr [esi]
 00734643    mov         dword ptr [eax+104],ebx
 00734649    mov         dword ptr [eax+100],734928
 00734653    mov         eax,dword ptr [esi]
 00734655    mov         dword ptr [eax+15C],ebx
 0073465B    mov         dword ptr [eax+158],7349A4
 00734665    mov         eax,dword ptr [esi]
 00734667    mov         dword ptr [eax+154],ebx
 0073466D    mov         dword ptr [eax+150],734A18
 00734677    mov         eax,dword ptr [esi]
 00734679    mov         dword ptr [eax+10C],ebx
 0073467F    mov         dword ptr [eax+108],734A8C
 00734689    mov         eax,dword ptr [esi]
 0073468B    mov         dword ptr [eax+13C],ebx
 00734691    mov         dword ptr [eax+138],734B48
 0073469B    mov         eax,dword ptr [esi]
 0073469D    mov         dword ptr [eax+144],ebx
 007346A3    mov         dword ptr [eax+140],734BE8
 007346AD    mov         eax,dword ptr [esi]
 007346AF    mov         dword ptr [eax+14C],ebx
 007346B5    mov         dword ptr [eax+148],734C5C
 007346BF    mov         eax,dword ptr [esi]
 007346C1    mov         dword ptr [eax+124],ebx
 007346C7    mov         dword ptr [eax+120],734CD8
 007346D1    mov         eax,dword ptr [esi]
 007346D3    mov         dword ptr [eax+164],ebx
 007346D9    mov         dword ptr [eax+160],734D54
 007346E3    mov         eax,dword ptr [esi]
 007346E5    mov         dword ptr [eax+16C],ebx
 007346EB    mov         dword ptr [eax+168],734DC8
 007346F5    mov         eax,dword ptr [esi]
 007346F7    mov         dword ptr [eax+17C],ebx
 007346FD    mov         dword ptr [eax+178],734EB8
 00734707    mov         eax,dword ptr [esi]
 00734709    mov         dword ptr [eax+174],ebx
 0073470F    mov         dword ptr [eax+170],734E3C
 00734719    mov         eax,dword ptr [esi]
 0073471B    mov         dword ptr [eax+184],ebx
 00734721    mov         dword ptr [eax+180],734F38
 0073472B    mov         eax,dword ptr [esi]
 0073472D    mov         dword ptr [eax+12C],ebx
 00734733    mov         dword ptr [eax+128],735028
 0073473D    mov         eax,dword ptr [esi]
 0073473F    mov         dword ptr [eax+134],ebx
 00734745    mov         dword ptr [eax+130],73509C
 0073474F    mov         eax,ebx
 00734751    cmp         byte ptr [ebp-1],0
>00734755    je          00734766
 00734757    call        @AfterConstruction
 0073475C    pop         dword ptr fs:[0]
 00734763    add         esp,0C
 00734766    mov         eax,ebx
 00734768    pop         esi
 00734769    pop         ebx
 0073476A    pop         ecx
 0073476B    pop         ebp
 0073476C    ret
*}
end;

//00734770
destructor TMultiCaster.Destroy();
begin
{*
 00734770    push        ebx
 00734771    push        esi
 00734772    call        @BeforeDestruction
 00734777    mov         ebx,edx
 00734779    mov         esi,eax
 0073477B    mov         eax,[007C4A18];^Application:TApplication
 00734780    xor         edx,edx
 00734782    mov         dword ptr ds:[7C3E08],edx;gvar_007C3E08
 00734788    mov         edx,dword ptr [eax]
 0073478A    xor         ecx,ecx
 0073478C    mov         dword ptr [edx+0F8],ecx;TApplication.FOnActionExecute:TActionEvent
 00734792    mov         dword ptr [edx+0FC],ecx;TApplication.?fFC:dword
 00734798    mov         edx,dword ptr [eax]
 0073479A    xor         ecx,ecx
 0073479C    mov         dword ptr [edx+100],ecx;TApplication.FOnActionUpdate:TActionEvent
 007347A2    mov         dword ptr [edx+104],ecx;TApplication.?f104:dword
 007347A8    mov         edx,dword ptr [eax]
 007347AA    xor         ecx,ecx
 007347AC    mov         dword ptr [edx+158],ecx;TApplication.FOnActivate:TNotifyEvent
 007347B2    mov         dword ptr [edx+15C],ecx;TApplication.?f15C:dword
 007347B8    mov         edx,dword ptr [eax]
 007347BA    xor         ecx,ecx
 007347BC    mov         dword ptr [edx+150],ecx;TApplication.FOnDeactivate:TNotifyEvent
 007347C2    mov         dword ptr [edx+154],ecx;TApplication.?f154:dword
 007347C8    mov         edx,dword ptr [eax]
 007347CA    xor         ecx,ecx
 007347CC    mov         dword ptr [edx+108],ecx;TApplication.FOnException:TExceptionEvent
 007347D2    mov         dword ptr [edx+10C],ecx;TApplication.?f10C:dword
 007347D8    mov         edx,dword ptr [eax]
 007347DA    xor         ecx,ecx
 007347DC    mov         dword ptr [edx+138],ecx;TApplication.FOnHelp:THelpEvent
 007347E2    mov         dword ptr [edx+13C],ecx;TApplication.?f13C:dword
 007347E8    mov         edx,dword ptr [eax]
 007347EA    xor         ecx,ecx
 007347EC    mov         dword ptr [edx+140],ecx;TApplication.FOnHint:TNotifyEvent
 007347F2    mov         dword ptr [edx+144],ecx;TApplication.?f144:dword
 007347F8    mov         edx,dword ptr [eax]
 007347FA    xor         ecx,ecx
 007347FC    mov         dword ptr [edx+148],ecx;TApplication.FOnIdle:TIdleEvent
 00734802    mov         dword ptr [edx+14C],ecx;TApplication.?f14C:dword
 00734808    mov         edx,dword ptr [eax]
 0073480A    xor         ecx,ecx
 0073480C    mov         dword ptr [edx+120],ecx;TApplication.FOnMessage:TMessageEvent
 00734812    mov         dword ptr [edx+124],ecx;TApplication.?f124:dword
 00734818    mov         edx,dword ptr [eax]
 0073481A    xor         ecx,ecx
 0073481C    mov         dword ptr [edx+160],ecx;TApplication.FOnMinimize:TNotifyEvent
 00734822    mov         dword ptr [edx+164],ecx;TApplication.?f164:dword
 00734828    mov         edx,dword ptr [eax]
 0073482A    xor         ecx,ecx
 0073482C    mov         dword ptr [edx+168],ecx;TApplication.FOnRestore:TNotifyEvent
 00734832    mov         dword ptr [edx+16C],ecx;TApplication.?f16C:dword
 00734838    mov         edx,dword ptr [eax]
 0073483A    xor         ecx,ecx
 0073483C    mov         dword ptr [edx+178],ecx;TApplication.FOnShowHint:TShowHintEvent
 00734842    mov         dword ptr [edx+17C],ecx;TApplication.?f17C:dword
 00734848    mov         edx,dword ptr [eax]
 0073484A    xor         ecx,ecx
 0073484C    mov         dword ptr [edx+170],ecx;TApplication.FOnShortCut:TShortCutEvent
 00734852    mov         dword ptr [edx+174],ecx;TApplication.?f174:dword
 00734858    mov         edx,dword ptr [eax]
 0073485A    xor         ecx,ecx
 0073485C    mov         dword ptr [edx+180],ecx;TApplication.FOnSettingChange:TSettingChangeEvent
 00734862    mov         dword ptr [edx+184],ecx;TApplication.FObjectInstance:Pointer
 00734868    mov         edx,dword ptr [eax]
 0073486A    xor         ecx,ecx
 0073486C    mov         dword ptr [edx+128],ecx;TApplication.FOnModalBegin:TNotifyEvent
 00734872    mov         dword ptr [edx+12C],ecx;TApplication.?f12C:dword
 00734878    mov         eax,dword ptr [eax]
 0073487A    xor         edx,edx
 0073487C    mov         dword ptr [eax+130],edx;TApplication.FOnModalEnd:TNotifyEvent
 00734882    mov         dword ptr [eax+134],edx;TApplication.?f134:dword
 00734888    mov         eax,dword ptr [esi+40];TMultiCaster.FAppEvents:TComponentList
 0073488B    call        TObject.Free
 00734890    mov         dl,0FC
 00734892    and         dl,bl
 00734894    mov         eax,esi
 00734896    call        TComponent.Destroy
 0073489B    test        bl,bl
>0073489D    jle         007348A6
 0073489F    mov         eax,esi
 007348A1    call        @ClassDestroy
 007348A6    pop         esi
 007348A7    pop         ebx
 007348A8    ret
*}
end;

//0073500C
procedure TMultiCaster.GetAppEvents(Index:Integer);
begin
{*
 0073500C    push        ebx
 0073500D    push        esi
 0073500E    mov         esi,edx
 00735010    mov         ebx,dword ptr [eax+40];TMultiCaster.FAppEvents:TComponentList
 00735013    mov         eax,ebx
 00735015    mov         edx,esi
 00735017    call        TList.Get
 0073501C    pop         esi
 0073501D    pop         ebx
 0073501E    ret
*}
end;

Initialization
//0079DAE4
{*
 0079DAE4    sub         dword ptr ds:[902528],1
>0079DAEB    jae         0079DB16
 0079DAED    mov         edx,dword ptr ds:[4DC470];TControl
 0079DAF3    mov         eax,[00733CF8];TCustomApplicationEvents
 0079DAF8    call        GroupDescendentsWith
 0079DAFD    mov         ecx,dword ptr ds:[7C4A18];^Application:TApplication
 0079DB03    mov         ecx,dword ptr [ecx]
 0079DB05    mov         dl,1
 0079DB07    mov         eax,[00734014];TMultiCaster
 0079DB0C    call        TMultiCaster.Create
 0079DB11    mov         [007C3E08],eax;gvar_007C3E08
 0079DB16    ret
*}
Finalization
end.