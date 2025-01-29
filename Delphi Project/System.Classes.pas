//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit System.Classes;

interface

uses
  SysUtils, Classes;

type
  TMultiWaitEventImpl = class(TMultiWaitEvent)
  published
    function WaitFor(Timeout:Cardinal):TWaitResult;//004A23A0
    constructor Create;//004A227C
  public
    FState:Integer;//f4
    FWaiters:TArray<System.Types.TMultiWaitEvent.TWaitInfo>;//f8
    procedure v0; virtual;//v0//004A229C
    procedure Acquire; virtual;//v4//004A2234
    procedure v8; virtual;//v8//004A22AC
    procedure vC; virtual;//vC//004A22D4
    procedure v10; virtual;//v10//004A22F8
    //procedure v14(?:?); virtual;//v14//004A224C
    procedure v18; virtual;//v18//004A22F0
    procedure v1C; virtual;//v1C//004A2268
    //procedure v20(?:?); virtual;//v20//004A2300
    procedure v24; virtual;//v24//004A2388
    //function v28:?; virtual;//v28//004A22BC
    //function v2C(?:?):?; virtual;//v2C//004A22B4
    function WaitFor(Timeout:Cardinal):TWaitResult; virtual;//v30//004A23A0
  end;
  TArray<System.Types.TMultiWaitEvent.TWaitInfo> = array of TMultiWaitEvent.TWaitInfo;
//elSize = 8;
    function IndexOfHandler(Context:TLoginCredentialEvent):Integer;//004A0E64
    constructor TLoginCredentialEventObject.Create;//004A0EBC
    procedure RegisterLoginHandler(HandlerEvent:TLoginCredentialService.TLoginCredentialEvent);//004A0EF0
    procedure UnregisterLoginHandler(HandlerEvent:TLoginCredentialService.TLoginCredentialEvent);//004A0FE0
    constructor Create();//004A10D8
    destructor Destroy();//004A1120
    function CanObserve(ID:Integer):Boolean;//004A114C
    procedure AddObserver(IDs:Integer; AIntf:IInterface);//004A1170
    procedure AddObserver(ID:Integer; AIntf:IInterface);//004A13D4
    function GetMultiCastObserver(ID:Integer):IInterfaceList;//004A13EC
    function GetSingleCastObserver(ID:Integer):IInterface;//004A153C
    function IsObserving(ID:Integer):Boolean;//004A16B8
    function TryIsObserving(ID:Integer; AIntf:IInterface):Boolean;//004A1788
    procedure RemoveObserver(ID:Integer; AIntf:IInterface);//004A1874
    procedure RemoveObserver(IDs:Integer; AIntf:IInterface);//004A188C
    function GetEditGridLink:IEditGridLinkObserver;//004A192C
    function GetEditLink:IEditLinkObserver;//004A19D8
    function EditLinkTrackUpdate:Boolean;//004A1A84
    procedure PositionLinkPosChanged;//004A1B18
    procedure PositionLinkPosChanging;//004A1C3C
    procedure sub_004A1D04(?:TObservers);//004A1D04
    procedure ControlValueUpdate;//004A1DDC
    procedure ControlValueModified;//004A1E94
    function ControlValueTrackUpdate:Boolean;//004A1F4C
    procedure Acquire;//004A2234
    //procedure sub_004A224C(?:?);//004A224C
    procedure sub_004A2268;//004A2268
    procedure sub_004A229C;//004A229C
    procedure sub_004A22AC;//004A22AC
    //function sub_004A22B4(?:?):?;//004A22B4
    //function sub_004A22BC:?;//004A22BC
    procedure sub_004A22D4;//004A22D4
    procedure sub_004A22F0;//004A22F0
    procedure sub_004A22F8;//004A22F8
    //procedure sub_004A2300(?:?);//004A2300
    procedure sub_004A2388;//004A2388

implementation

//004A0E64
function TLoginCredentialService.IndexOfHandler(Context:TLoginCredentialEvent):Integer;
begin
{*
 004A0E64    push        ebp
 004A0E65    mov         ebp,esp
 004A0E67    add         esp,0FFFFFFF8
 004A0E6A    push        ebx
 004A0E6B    push        esi
 004A0E6C    lea         esi,[ebp-8]
 004A0E6F    mov         eax,[007CA3C4];gvar_007CA3C4:TStringList
 004A0E74    mov         edx,dword ptr [eax]
 004A0E76    call        dword ptr [edx+14]
 004A0E79    mov         ebx,eax
 004A0E7B    dec         ebx
 004A0E7C    cmp         ebx,0
>004A0E7F    jl          004A0EAD
 004A0E81    mov         edx,ebx
 004A0E83    mov         eax,[007CA3C4];gvar_007CA3C4:TStringList
 004A0E88    mov         ecx,dword ptr [eax]
 004A0E8A    call        dword ptr [ecx+18]
 004A0E8D    mov         edx,dword ptr [eax+8]
 004A0E90    mov         dword ptr [esi],edx
 004A0E92    mov         edx,dword ptr [eax+0C]
 004A0E95    mov         dword ptr [esi+4],edx
 004A0E98    mov         eax,dword ptr [esi]
 004A0E9A    cmp         eax,dword ptr [ebp+8]
>004A0E9D    jne         004A0EA7
 004A0E9F    mov         eax,dword ptr [ebp+0C]
 004A0EA2    cmp         eax,dword ptr [esi+4]
>004A0EA5    je          004A0EB0
 004A0EA7    dec         ebx
 004A0EA8    cmp         ebx,0FFFFFFFF
>004A0EAB    jne         004A0E81
 004A0EAD    or          ebx,0FFFFFFFF
 004A0EB0    mov         eax,ebx
 004A0EB2    pop         esi
 004A0EB3    pop         ebx
 004A0EB4    pop         ecx
 004A0EB5    pop         ecx
 004A0EB6    pop         ebp
 004A0EB7    ret         8
*}
end;

//004A0EBC
constructor TLoginCredentialService.TLoginCredentialEventObject.Create;
begin
{*
 004A0EBC    push        ebp
 004A0EBD    mov         ebp,esp
 004A0EBF    test        dl,dl
>004A0EC1    je          004A0ECB
 004A0EC3    add         esp,0FFFFFFF0
 004A0EC6    call        @ClassCreate
 004A0ECB    mov         ecx,dword ptr [ebp+8]
 004A0ECE    mov         dword ptr [eax+8],ecx
 004A0ED1    mov         ecx,dword ptr [ebp+0C]
 004A0ED4    mov         dword ptr [eax+0C],ecx
 004A0ED7    test        dl,dl
>004A0ED9    je          004A0EEA
 004A0EDB    call        @AfterConstruction
 004A0EE0    pop         dword ptr fs:[0]
 004A0EE7    add         esp,0C
 004A0EEA    pop         ebp
 004A0EEB    ret         8
*}
end;

//004A0EF0
procedure TLoginCredentialService.RegisterLoginHandler(HandlerEvent:TLoginCredentialService.TLoginCredentialEvent);
begin
{*
 004A0EF0    push        ebp
 004A0EF1    mov         ebp,esp
 004A0EF3    add         esp,0FFFFFFF4
 004A0EF6    push        ebx
 004A0EF7    push        esi
 004A0EF8    push        edi
 004A0EF9    xor         edx,edx
 004A0EFB    mov         dword ptr [ebp-8],edx
 004A0EFE    mov         ebx,eax
 004A0F00    xor         eax,eax
 004A0F02    push        ebp
 004A0F03    push        4A0FCF
 004A0F08    push        dword ptr fs:[eax]
 004A0F0B    mov         dword ptr fs:[eax],esp
 004A0F0E    push        dword ptr [ebp+0C]
 004A0F11    push        dword ptr [ebp+8]
 004A0F14    mov         eax,[00482D84];TLoginCredentialService
 004A0F19    call        TLoginCredentialService.IndexOfHandler
 004A0F1E    mov         esi,eax
 004A0F20    test        esi,esi
>004A0F22    jge         004A0F28
 004A0F24    mov         al,1
>004A0F26    jmp         004A0F62
 004A0F28    lea         ecx,[ebp-8]
 004A0F2B    mov         edx,esi
 004A0F2D    mov         eax,[007CA3C4];gvar_007CA3C4:TStringList
 004A0F32    mov         esi,dword ptr [eax]
 004A0F34    call        dword ptr [esi+0C]
 004A0F37    mov         esi,dword ptr [ebp-8]
 004A0F3A    cmp         ebx,esi
>004A0F3C    jne         004A0F42
 004A0F3E    mov         al,1
>004A0F40    jmp         004A0F60
 004A0F42    test        ebx,ebx
>004A0F44    je          004A0F4A
 004A0F46    test        esi,esi
>004A0F48    jne         004A0F4E
 004A0F4A    xor         eax,eax
>004A0F4C    jmp         004A0F60
 004A0F4E    mov         dword ptr [ebp-0C],esi
 004A0F51    mov         edx,dword ptr [ebp-0C]
 004A0F54    mov         eax,ebx
 004A0F56    call        CompareText
 004A0F5B    test        eax,eax
 004A0F5D    sete        al
 004A0F60    xor         al,1
 004A0F62    test        al,al
>004A0F64    je          004A0FB9
 004A0F66    push        dword ptr [ebp+0C]
 004A0F69    push        dword ptr [ebp+8]
 004A0F6C    mov         dl,1
 004A0F6E    mov         eax,[00482C38];TLoginCredentialService.TLoginCredentialEventObject
 004A0F73    call        TLoginCredentialService.TLoginCredentialEventObject.Create
 004A0F78    mov         dword ptr [ebp-4],eax
 004A0F7B    xor         eax,eax
 004A0F7D    push        ebp
 004A0F7E    push        4A0FA2
 004A0F83    push        dword ptr fs:[eax]
 004A0F86    mov         dword ptr fs:[eax],esp
 004A0F89    mov         ecx,dword ptr [ebp-4]
 004A0F8C    mov         edx,ebx
 004A0F8E    mov         eax,[007CA3C4];gvar_007CA3C4:TStringList
 004A0F93    mov         ebx,dword ptr [eax]
 004A0F95    call        dword ptr [ebx+40]
 004A0F98    xor         eax,eax
 004A0F9A    pop         edx
 004A0F9B    pop         ecx
 004A0F9C    pop         ecx
 004A0F9D    mov         dword ptr fs:[eax],edx
>004A0FA0    jmp         004A0FB9
>004A0FA2    jmp         @HandleAnyException
 004A0FA7    mov         eax,dword ptr [ebp-4]
 004A0FAA    call        TObject.Free
 004A0FAF    call        @RaiseAgain
 004A0FB4    call        @DoneExcept
 004A0FB9    xor         eax,eax
 004A0FBB    pop         edx
 004A0FBC    pop         ecx
 004A0FBD    pop         ecx
 004A0FBE    mov         dword ptr fs:[eax],edx
 004A0FC1    push        4A0FD6
 004A0FC6    lea         eax,[ebp-8]
 004A0FC9    call        @UStrClr
 004A0FCE    ret
>004A0FCF    jmp         @HandleFinally
>004A0FD4    jmp         004A0FC6
 004A0FD6    pop         edi
 004A0FD7    pop         esi
 004A0FD8    pop         ebx
 004A0FD9    mov         esp,ebp
 004A0FDB    pop         ebp
 004A0FDC    ret         8
*}
end;

//004A0FE0
procedure TLoginCredentialService.UnregisterLoginHandler(HandlerEvent:TLoginCredentialService.TLoginCredentialEvent);
begin
{*
 004A0FE0    push        ebp
 004A0FE1    mov         ebp,esp
 004A0FE3    add         esp,0FFFFFFEC
 004A0FE6    push        ebx
 004A0FE7    push        esi
 004A0FE8    xor         edx,edx
 004A0FEA    mov         dword ptr [ebp-10],edx
 004A0FED    mov         esi,eax
 004A0FEF    xor         eax,eax
 004A0FF1    push        ebp
 004A0FF2    push        4A10C7
 004A0FF7    push        dword ptr fs:[eax]
 004A0FFA    mov         dword ptr fs:[eax],esp
 004A0FFD    mov         eax,[007CA3C4];gvar_007CA3C4:TStringList
 004A1002    mov         edx,dword ptr [eax]
 004A1004    call        dword ptr [edx+14]
 004A1007    dec         eax
 004A1008    cmp         eax,0
>004A100B    jl          004A10B1
 004A1011    mov         dword ptr [ebp-4],eax
 004A1014    mov         edx,dword ptr [ebp-4]
 004A1017    mov         eax,[007CA3C4];gvar_007CA3C4:TStringList
 004A101C    mov         ecx,dword ptr [eax]
 004A101E    call        dword ptr [ecx+18]
 004A1021    mov         edx,dword ptr [eax+8]
 004A1024    mov         dword ptr [ebp-0C],edx
 004A1027    mov         edx,dword ptr [eax+0C]
 004A102A    mov         dword ptr [ebp-8],edx
 004A102D    lea         ecx,[ebp-10]
 004A1030    mov         edx,dword ptr [ebp-4]
 004A1033    mov         eax,[007CA3C4];gvar_007CA3C4:TStringList
 004A1038    mov         ebx,dword ptr [eax]
 004A103A    call        dword ptr [ebx+0C]
 004A103D    mov         ebx,dword ptr [ebp-10]
 004A1040    cmp         ebx,esi
>004A1042    jne         004A1048
 004A1044    mov         al,1
>004A1046    jmp         004A1066
 004A1048    test        ebx,ebx
>004A104A    je          004A1050
 004A104C    test        esi,esi
>004A104E    jne         004A1054
 004A1050    xor         eax,eax
>004A1052    jmp         004A1066
 004A1054    mov         edx,esi
 004A1056    mov         dword ptr [ebp-14],ebx
 004A1059    mov         eax,dword ptr [ebp-14]
 004A105C    call        CompareText
 004A1061    test        eax,eax
 004A1063    sete        al
 004A1066    test        al,al
>004A1068    je          004A1075
 004A106A    mov         eax,dword ptr [ebp-0C]
 004A106D    cmp         eax,dword ptr [ebp+8]
 004A1070    sete        al
>004A1073    jmp         004A1077
 004A1075    xor         eax,eax
 004A1077    test        al,al
>004A1079    je          004A10A4
 004A107B    mov         eax,dword ptr [ebp+0C]
 004A107E    cmp         eax,dword ptr [ebp-8]
>004A1081    jne         004A10A4
 004A1083    mov         edx,dword ptr [ebp-4]
 004A1086    mov         eax,[007CA3C4];gvar_007CA3C4:TStringList
 004A108B    mov         ecx,dword ptr [eax]
 004A108D    call        dword ptr [ecx+18]
 004A1090    call        TObject.Free
 004A1095    mov         edx,dword ptr [ebp-4]
 004A1098    mov         eax,[007CA3C4];gvar_007CA3C4:TStringList
 004A109D    mov         ecx,dword ptr [eax]
 004A109F    call        dword ptr [ecx+4C]
>004A10A2    jmp         004A10B1
 004A10A4    dec         dword ptr [ebp-4]
 004A10A7    cmp         dword ptr [ebp-4],0FFFFFFFF
>004A10AB    jne         004A1014
 004A10B1    xor         eax,eax
 004A10B3    pop         edx
 004A10B4    pop         ecx
 004A10B5    pop         ecx
 004A10B6    mov         dword ptr fs:[eax],edx
 004A10B9    push        4A10CE
 004A10BE    lea         eax,[ebp-10]
 004A10C1    call        @UStrClr
 004A10C6    ret
>004A10C7    jmp         @HandleFinally
>004A10CC    jmp         004A10BE
 004A10CE    pop         esi
 004A10CF    pop         ebx
 004A10D0    mov         esp,ebp
 004A10D2    pop         ebp
 004A10D3    ret         8
*}
end;

//004A10D8
constructor TObservers.Create();
begin
{*
 004A10D8    push        ebx
 004A10D9    push        esi
 004A10DA    test        dl,dl
>004A10DC    je          004A10E6
 004A10DE    add         esp,0FFFFFFF0
 004A10E1    call        @ClassCreate
 004A10E6    mov         ebx,edx
 004A10E8    mov         esi,eax
 004A10EA    xor         edx,edx
 004A10EC    mov         eax,esi
 004A10EE    call        TObject.Create
 004A10F3    xor         ecx,ecx
 004A10F5    mov         dl,1
 004A10F7    mov         eax,[00480D64];TDictionary<System.Integer,System.Classes.IInterfaceList>
 004A10FC    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.Create
 004A1101    mov         dword ptr [esi+4],eax
 004A1104    mov         eax,esi
 004A1106    test        bl,bl
>004A1108    je          004A1119
 004A110A    call        @AfterConstruction
 004A110F    pop         dword ptr fs:[0]
 004A1116    add         esp,0C
 004A1119    mov         eax,esi
 004A111B    pop         esi
 004A111C    pop         ebx
 004A111D    ret
*}
end;

//004A1120
destructor TObservers.Destroy();
begin
{*
 004A1120    push        ebx
 004A1121    push        esi
 004A1122    call        @BeforeDestruction
 004A1127    mov         ebx,edx
 004A1129    mov         esi,eax
 004A112B    mov         eax,dword ptr [esi+4]
 004A112E    call        TObject.Free
 004A1133    mov         dl,0FC
 004A1135    and         dl,bl
 004A1137    mov         eax,esi
 004A1139    call        TObject.Destroy
 004A113E    test        bl,bl
>004A1140    jle         004A1149
 004A1142    mov         eax,esi
 004A1144    call        @ClassDestroy
 004A1149    pop         esi
 004A114A    pop         ebx
 004A114B    ret
*}
end;

//004A114C
function TObservers.CanObserve(ID:Integer):Boolean;
begin
{*
 004A114C    push        ebx
 004A114D    push        esi
 004A114E    mov         esi,edx
 004A1150    mov         ebx,eax
 004A1152    cmp         dword ptr [ebx+8],0
>004A1156    je          004A1166
 004A1158    mov         edx,esi
 004A115A    mov         eax,dword ptr [ebx+8]
 004A115D    mov         ecx,dword ptr [eax]
 004A115F    call        dword ptr [ecx+0C]
 004A1162    test        al,al
>004A1164    jne         004A116B
 004A1166    xor         eax,eax
 004A1168    pop         esi
 004A1169    pop         ebx
 004A116A    ret
 004A116B    mov         al,1
 004A116D    pop         esi
 004A116E    pop         ebx
 004A116F    ret
*}
end;

//004A1170
procedure TObservers.AddObserver(IDs:Integer; AIntf:IInterface);
begin
{*
 004A1170    push        ebp
 004A1171    mov         ebp,esp
 004A1173    push        0
 004A1175    push        0
 004A1177    push        0
 004A1179    push        0
 004A117B    push        0
 004A117D    push        0
 004A117F    push        0
 004A1181    push        ebx
 004A1182    push        esi
 004A1183    push        edi
 004A1184    mov         edi,ecx
 004A1186    mov         ebx,edx
 004A1188    mov         esi,eax
 004A118A    xor         eax,eax
 004A118C    push        ebp
 004A118D    push        4A1393
 004A1192    push        dword ptr fs:[eax]
 004A1195    mov         dword ptr fs:[eax],esp
 004A1198    lea         eax,[ebp-0C]
 004A119B    call        @IntfClear
 004A11A0    mov         ecx,eax
 004A11A2    mov         edx,4A13A4
 004A11A7    mov         eax,dword ptr [ebp+8]
 004A11AA    call        Supports
 004A11AF    test        al,al
>004A11B1    jne         004A11CA
 004A11B3    mov         ecx,dword ptr ds:[7C4A58];^SResString199:TResStringRec
 004A11B9    mov         dl,1
 004A11BB    mov         eax,[0047887C];EObserverException
 004A11C0    call        Exception.CreateRes
 004A11C5    call        @RaiseExcept
 004A11CA    inc         edi
 004A11CB    dec         edi
 004A11CC    test        edi,edi
>004A11CE    jl          004A1365
 004A11D4    inc         edi
 004A11D5    mov         dword ptr [ebp-14],edi
 004A11D8    mov         edx,dword ptr [ebx]
 004A11DA    mov         eax,esi
 004A11DC    mov         ecx,dword ptr [eax]
 004A11DE    call        dword ptr [ecx]
 004A11E0    test        al,al
>004A11E2    jne         004A11FB
 004A11E4    mov         ecx,dword ptr ds:[7C4320];^SResString197:TResStringRec
 004A11EA    mov         dl,1
 004A11EC    mov         eax,[0047887C];EObserverException
 004A11F1    call        Exception.CreateRes
 004A11F6    call        @RaiseExcept
 004A11FB    mov         edi,dword ptr [ebx]
 004A11FD    lea         eax,[ebp-4]
 004A1200    call        @IntfClear
 004A1205    mov         ecx,eax
 004A1207    mov         edx,edi
 004A1209    mov         eax,dword ptr [esi+4]
 004A120C    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TryGetValue
 004A1211    test        al,al
>004A1213    je          004A1311
 004A1219    mov         edx,4A13B4
 004A121E    mov         eax,dword ptr [ebp+8]
 004A1221    call        Supports
 004A1226    test        al,al
>004A1228    je          004A133B
 004A122E    lea         eax,[ebp-8]
 004A1231    call        @IntfClear
 004A1236    mov         ecx,eax
 004A1238    mov         edx,4A13C4
 004A123D    mov         eax,dword ptr [ebp+8]
 004A1240    call        Supports
 004A1245    test        al,al
>004A1247    je          004A1259
 004A1249    mov         eax,dword ptr [ebp-8]
 004A124C    mov         edx,dword ptr [eax]
 004A124E    call        dword ptr [edx+3C]
 004A1251    test        al,al
>004A1253    jne         004A133B
 004A1259    lea         eax,[ebp-8]
 004A125C    call        @IntfClear
 004A1261    mov         ecx,eax
 004A1263    mov         edx,4A13C4
 004A1268    mov         eax,dword ptr [ebp+8]
 004A126B    call        Supports
 004A1270    test        al,al
>004A1272    je          004A12F8
 004A1278    mov         eax,dword ptr [ebp-8]
 004A127B    mov         edx,dword ptr [eax]
 004A127D    call        dword ptr [edx+3C]
 004A1280    test        al,al
>004A1282    jne         004A12F8
 004A1284    mov         eax,dword ptr [ebp-4]
 004A1287    mov         edx,dword ptr [eax]
 004A1289    call        dword ptr [edx+14]
 004A128C    dec         eax
 004A128D    test        eax,eax
>004A128F    jl          004A133B
 004A1295    inc         eax
 004A1296    mov         dword ptr [ebp-18],eax
 004A1299    mov         dword ptr [ebp-10],0
 004A12A0    lea         ecx,[ebp-1C]
 004A12A3    mov         edx,dword ptr [ebp-10]
 004A12A6    mov         eax,dword ptr [ebp-4]
 004A12A9    mov         edi,dword ptr [eax]
 004A12AB    call        dword ptr [edi+0C]
 004A12AE    mov         eax,dword ptr [ebp-1C]
 004A12B1    push        eax
 004A12B2    lea         eax,[ebp-8]
 004A12B5    call        @IntfClear
 004A12BA    mov         ecx,eax
 004A12BC    mov         edx,4A13C4
 004A12C1    pop         eax
 004A12C2    call        Supports
 004A12C7    test        al,al
>004A12C9    je          004A12EE
 004A12CB    mov         eax,dword ptr [ebp-8]
 004A12CE    mov         edx,dword ptr [eax]
 004A12D0    call        dword ptr [edx+3C]
 004A12D3    test        al,al
>004A12D5    jne         004A12EE
 004A12D7    mov         ecx,dword ptr ds:[7C4AF8];^SResString198:TResStringRec
 004A12DD    mov         dl,1
 004A12DF    mov         eax,[0047887C];EObserverException
 004A12E4    call        Exception.CreateRes
 004A12E9    call        @RaiseExcept
 004A12EE    inc         dword ptr [ebp-10]
 004A12F1    dec         dword ptr [ebp-18]
>004A12F4    jne         004A12A0
>004A12F6    jmp         004A133B
 004A12F8    mov         ecx,dword ptr ds:[7C4AF8];^SResString198:TResStringRec
 004A12FE    mov         dl,1
 004A1300    mov         eax,[0047887C];EObserverException
 004A1305    call        Exception.CreateRes
 004A130A    call        @RaiseExcept
>004A130F    jmp         004A133B
 004A1311    mov         dl,1
 004A1313    mov         eax,[0046D010];TInterfaceList
 004A1318    call        TInterfaceList.Create
 004A131D    mov         edx,eax
 004A131F    test        edx,edx
>004A1321    je          004A1326
 004A1323    sub         edx,0FFFFFFF0
 004A1326    lea         eax,[ebp-4]
 004A1329    call        @IntfCopy
 004A132E    mov         ecx,dword ptr [ebp-4]
 004A1331    mov         edx,edi
 004A1333    mov         eax,dword ptr [esi+4]
 004A1336    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.Add
 004A133B    mov         edx,dword ptr [ebp+8]
 004A133E    mov         eax,dword ptr [ebp-4]
 004A1341    mov         ecx,dword ptr [eax]
 004A1343    call        dword ptr [ecx+38]
 004A1346    cmp         dword ptr [esi+0C],0
>004A134A    je          004A1359
 004A134C    mov         ecx,dword ptr [ebp-0C]
 004A134F    mov         edx,dword ptr [ebx]
 004A1351    mov         eax,dword ptr [esi+0C]
 004A1354    mov         edi,dword ptr [eax]
 004A1356    call        dword ptr [edi+0C]
 004A1359    add         ebx,4
 004A135C    dec         dword ptr [ebp-14]
>004A135F    jne         004A11D8
 004A1365    xor         eax,eax
 004A1367    pop         edx
 004A1368    pop         ecx
 004A1369    pop         ecx
 004A136A    mov         dword ptr fs:[eax],edx
 004A136D    push        4A139A
 004A1372    lea         eax,[ebp-1C]
 004A1375    call        @IntfClear
 004A137A    lea         eax,[ebp-0C]
 004A137D    call        @IntfClear
 004A1382    lea         eax,[ebp-8]
 004A1385    call        @IntfClear
 004A138A    lea         eax,[ebp-4]
 004A138D    call        @IntfClear
 004A1392    ret
>004A1393    jmp         @HandleFinally
>004A1398    jmp         004A1372
 004A139A    pop         edi
 004A139B    pop         esi
 004A139C    pop         ebx
 004A139D    mov         esp,ebp
 004A139F    pop         ebp
 004A13A0    ret         4
*}
end;

//004A13D4
procedure TObservers.AddObserver(ID:Integer; AIntf:IInterface);
begin
{*
 004A13D4    push        ebx
 004A13D5    push        ecx
 004A13D6    push        ecx
 004A13D7    mov         dword ptr [esp+4],edx
 004A13DB    lea         edx,[esp+4]
 004A13DF    xor         ecx,ecx
 004A13E1    mov         ebx,dword ptr [eax]
 004A13E3    call        dword ptr [ebx+8];TObservers.AddObserver
 004A13E6    pop         edx
 004A13E7    pop         ebx
 004A13E8    ret
*}
end;

//004A13EC
function TObservers.GetMultiCastObserver(ID:Integer):IInterfaceList;
begin
{*
 004A13EC    push        ebp
 004A13ED    mov         ebp,esp
 004A13EF    add         esp,0FFFFFFE0
 004A13F2    push        ebx
 004A13F3    push        esi
 004A13F4    push        edi
 004A13F5    xor         ebx,ebx
 004A13F7    mov         dword ptr [ebp-18],ebx
 004A13FA    mov         dword ptr [ebp-14],ebx
 004A13FD    mov         dword ptr [ebp-4],ebx
 004A1400    mov         dword ptr [ebp-8],ebx
 004A1403    mov         dword ptr [ebp-10],ecx
 004A1406    mov         dword ptr [ebp-0C],edx
 004A1409    mov         ebx,eax
 004A140B    xor         eax,eax
 004A140D    push        ebp
 004A140E    push        4A151B
 004A1413    push        dword ptr fs:[eax]
 004A1416    mov         dword ptr fs:[eax],esp
 004A1419    mov         dl,1
 004A141B    mov         eax,[0046D010];TInterfaceList
 004A1420    call        TInterfaceList.Create
 004A1425    mov         edx,eax
 004A1427    test        edx,edx
>004A1429    je          004A142E
 004A142B    sub         edx,0FFFFFFF0
 004A142E    mov         eax,dword ptr [ebp-10]
 004A1431    call        @IntfCopy
 004A1436    lea         eax,[ebp-4]
 004A1439    call        @IntfClear
 004A143E    mov         ecx,eax
 004A1440    mov         eax,dword ptr [ebx+4]
 004A1443    mov         edx,dword ptr [ebp-0C]
 004A1446    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TryGetValue
 004A144B    test        al,al
>004A144D    je          004A14B5
 004A144F    mov         eax,dword ptr [ebp-4]
 004A1452    mov         edx,dword ptr [eax]
 004A1454    call        dword ptr [edx+14]
 004A1457    mov         ebx,eax
 004A1459    dec         ebx
 004A145A    test        ebx,ebx
>004A145C    jl          004A14B5
 004A145E    inc         ebx
 004A145F    xor         esi,esi
 004A1461    lea         ecx,[ebp-14]
 004A1464    mov         edx,esi
 004A1466    mov         eax,dword ptr [ebp-4]
 004A1469    mov         edi,dword ptr [eax]
 004A146B    call        dword ptr [edi+0C]
 004A146E    mov         eax,dword ptr [ebp-14]
 004A1471    push        eax
 004A1472    lea         eax,[ebp-8]
 004A1475    call        @IntfClear
 004A147A    mov         ecx,eax
 004A147C    mov         edx,4A152C
 004A1481    pop         eax
 004A1482    call        Supports
 004A1487    test        al,al
>004A1489    je          004A14B1
 004A148B    mov         eax,dword ptr [ebp-8]
 004A148E    mov         edx,dword ptr [eax]
 004A1490    call        dword ptr [edx+10]
 004A1493    test        al,al
>004A1495    je          004A14B1
 004A1497    lea         ecx,[ebp-18]
 004A149A    mov         edx,esi
 004A149C    mov         eax,dword ptr [ebp-4]
 004A149F    mov         edi,dword ptr [eax]
 004A14A1    call        dword ptr [edi+0C]
 004A14A4    mov         edx,dword ptr [ebp-18]
 004A14A7    mov         eax,dword ptr [ebp-10]
 004A14AA    mov         eax,dword ptr [eax]
 004A14AC    mov         ecx,dword ptr [eax]
 004A14AE    call        dword ptr [ecx+38]
 004A14B1    inc         esi
 004A14B2    dec         ebx
>004A14B3    jne         004A1461
 004A14B5    mov         eax,dword ptr [ebp-10]
 004A14B8    mov         eax,dword ptr [eax]
 004A14BA    mov         edx,dword ptr [eax]
 004A14BC    call        dword ptr [edx+14]
 004A14BF    test        eax,eax
>004A14C1    jne         004A14EA
 004A14C3    mov         eax,dword ptr [ebp-0C]
 004A14C6    mov         dword ptr [ebp-20],eax
 004A14C9    mov         byte ptr [ebp-1C],0
 004A14CD    lea         eax,[ebp-20]
 004A14D0    push        eax
 004A14D1    push        0
 004A14D3    mov         ecx,dword ptr ds:[7C41A8];^SResString201:TResStringRec
 004A14D9    mov         dl,1
 004A14DB    mov         eax,[0047887C];EObserverException
 004A14E0    call        Exception.CreateResFmt
 004A14E5    call        @RaiseExcept
 004A14EA    xor         eax,eax
 004A14EC    pop         edx
 004A14ED    pop         ecx
 004A14EE    pop         ecx
 004A14EF    mov         dword ptr fs:[eax],edx
 004A14F2    push        4A1522
 004A14F7    lea         eax,[ebp-18]
 004A14FA    mov         edx,dword ptr ds:[4022C8];IInterface
 004A1500    mov         ecx,2
 004A1505    call        @FinalizeArray
 004A150A    lea         eax,[ebp-8]
 004A150D    call        @IntfClear
 004A1512    lea         eax,[ebp-4]
 004A1515    call        @IntfClear
 004A151A    ret
>004A151B    jmp         @HandleFinally
>004A1520    jmp         004A14F7
 004A1522    pop         edi
 004A1523    pop         esi
 004A1524    pop         ebx
 004A1525    mov         esp,ebp
 004A1527    pop         ebp
 004A1528    ret
*}
end;

//004A153C
function TObservers.GetSingleCastObserver(ID:Integer):IInterface;
begin
{*
 004A153C    push        ebp
 004A153D    mov         ebp,esp
 004A153F    push        0
 004A1541    push        0
 004A1543    push        0
 004A1545    push        0
 004A1547    push        0
 004A1549    push        0
 004A154B    push        0
 004A154D    push        0
 004A154F    push        ebx
 004A1550    push        esi
 004A1551    push        edi
 004A1552    mov         dword ptr [ebp-14],ecx
 004A1555    mov         esi,edx
 004A1557    mov         ebx,eax
 004A1559    xor         eax,eax
 004A155B    push        ebp
 004A155C    push        4A1688
 004A1561    push        dword ptr fs:[eax]
 004A1564    mov         dword ptr fs:[eax],esp
 004A1567    mov         eax,dword ptr [ebp-14]
 004A156A    call        @IntfClear
 004A156F    lea         eax,[ebp-10]
 004A1572    call        @IntfClear
 004A1577    lea         eax,[ebp-4]
 004A157A    call        @IntfClear
 004A157F    mov         ecx,eax
 004A1581    mov         eax,dword ptr [ebx+4]
 004A1584    mov         edx,esi
 004A1586    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TryGetValue
 004A158B    test        al,al
>004A158D    je          004A161B
 004A1593    mov         eax,dword ptr [ebp-4]
 004A1596    mov         edx,dword ptr [eax]
 004A1598    call        dword ptr [edx+14]
 004A159B    mov         ebx,eax
 004A159D    dec         ebx
 004A159E    test        ebx,ebx
>004A15A0    jl          004A161B
 004A15A2    inc         ebx
 004A15A3    lea         ecx,[ebp-18]
 004A15A6    xor         edx,edx
 004A15A8    mov         eax,dword ptr [ebp-4]
 004A15AB    mov         edi,dword ptr [eax]
 004A15AD    call        dword ptr [edi+0C]
 004A15B0    mov         eax,dword ptr [ebp-18]
 004A15B3    push        eax
 004A15B4    lea         eax,[ebp-8]
 004A15B7    call        @IntfClear
 004A15BC    mov         ecx,eax
 004A15BE    mov         edx,4A1698
 004A15C3    pop         eax
 004A15C4    call        Supports
 004A15C9    test        al,al
>004A15CB    je          004A1618
 004A15CD    lea         eax,[ebp-10]
 004A15D0    mov         edx,dword ptr [ebp-8]
 004A15D3    call        @IntfCopy
 004A15D8    mov         eax,dword ptr [ebp-8]
 004A15DB    mov         edx,dword ptr [eax]
 004A15DD    call        dword ptr [edx+10]
 004A15E0    test        al,al
>004A15E2    je          004A1618
 004A15E4    lea         eax,[ebp-0C]
 004A15E7    call        @IntfClear
 004A15EC    mov         ecx,eax
 004A15EE    mov         edx,4A16A8
 004A15F3    mov         eax,dword ptr [ebp-8]
 004A15F6    call        Supports
 004A15FB    test        al,al
>004A15FD    je          004A1618
 004A15FF    mov         eax,dword ptr [ebp-0C]
 004A1602    mov         edx,dword ptr [eax]
 004A1604    call        dword ptr [edx+3C]
 004A1607    test        al,al
>004A1609    jne         004A1618
 004A160B    mov         eax,dword ptr [ebp-14]
 004A160E    mov         edx,dword ptr [ebp-8]
 004A1611    call        @IntfCopy
>004A1616    jmp         004A1652
 004A1618    dec         ebx
>004A1619    jne         004A15A3
 004A161B    cmp         dword ptr [ebp-10],0
>004A161F    je          004A162E
 004A1621    mov         eax,dword ptr [ebp-14]
 004A1624    mov         edx,dword ptr [ebp-10]
 004A1627    call        @IntfCopy
>004A162C    jmp         004A1652
 004A162E    mov         dword ptr [ebp-20],esi
 004A1631    mov         byte ptr [ebp-1C],0
 004A1635    lea         eax,[ebp-20]
 004A1638    push        eax
 004A1639    push        0
 004A163B    mov         ecx,dword ptr ds:[7C43B0];^SResString200:TResStringRec
 004A1641    mov         dl,1
 004A1643    mov         eax,[0047887C];EObserverException
 004A1648    call        Exception.CreateResFmt
 004A164D    call        @RaiseExcept
 004A1652    xor         eax,eax
 004A1654    pop         edx
 004A1655    pop         ecx
 004A1656    pop         ecx
 004A1657    mov         dword ptr fs:[eax],edx
 004A165A    push        4A168F
 004A165F    lea         eax,[ebp-18]
 004A1662    call        @IntfClear
 004A1667    lea         eax,[ebp-10]
 004A166A    call        @IntfClear
 004A166F    lea         eax,[ebp-0C]
 004A1672    call        @IntfClear
 004A1677    lea         eax,[ebp-8]
 004A167A    call        @IntfClear
 004A167F    lea         eax,[ebp-4]
 004A1682    call        @IntfClear
 004A1687    ret
>004A1688    jmp         @HandleFinally
>004A168D    jmp         004A165F
 004A168F    pop         edi
 004A1690    pop         esi
 004A1691    pop         ebx
 004A1692    mov         esp,ebp
 004A1694    pop         ebp
 004A1695    ret
*}
end;

//004A16B8
function TObservers.IsObserving(ID:Integer):Boolean;
begin
{*
 004A16B8    push        ebp
 004A16B9    mov         ebp,esp
 004A16BB    push        0
 004A16BD    push        0
 004A16BF    push        0
 004A16C1    push        ebx
 004A16C2    push        esi
 004A16C3    push        edi
 004A16C4    mov         esi,edx
 004A16C6    mov         ebx,eax
 004A16C8    xor         eax,eax
 004A16CA    push        ebp
 004A16CB    push        4A1766
 004A16D0    push        dword ptr fs:[eax]
 004A16D3    mov         dword ptr fs:[eax],esp
 004A16D6    lea         eax,[ebp-8]
 004A16D9    call        @IntfClear
 004A16DE    mov         ecx,eax
 004A16E0    mov         eax,dword ptr [ebx+4]
 004A16E3    mov         edx,esi
 004A16E5    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TryGetValue
 004A16EA    test        al,al
>004A16EC    je          004A173E
 004A16EE    mov         eax,dword ptr [ebp-8]
 004A16F1    mov         edx,dword ptr [eax]
 004A16F3    call        dword ptr [edx+14]
 004A16F6    mov         ebx,eax
 004A16F8    dec         ebx
 004A16F9    test        ebx,ebx
>004A16FB    jl          004A173E
 004A16FD    inc         ebx
 004A16FE    xor         esi,esi
 004A1700    lea         ecx,[ebp-0C]
 004A1703    mov         edx,esi
 004A1705    mov         eax,dword ptr [ebp-8]
 004A1708    mov         edi,dword ptr [eax]
 004A170A    call        dword ptr [edi+0C]
 004A170D    mov         eax,dword ptr [ebp-0C]
 004A1710    push        eax
 004A1711    lea         eax,[ebp-4]
 004A1714    call        @IntfClear
 004A1719    mov         ecx,eax
 004A171B    mov         edx,4A1778
 004A1720    pop         eax
 004A1721    call        Supports
 004A1726    test        al,al
>004A1728    je          004A173A
 004A172A    mov         eax,dword ptr [ebp-4]
 004A172D    mov         edx,dword ptr [eax]
 004A172F    call        dword ptr [edx+10]
 004A1732    test        al,al
>004A1734    je          004A173A
 004A1736    mov         bl,1
>004A1738    jmp         004A1740
 004A173A    inc         esi
 004A173B    dec         ebx
>004A173C    jne         004A1700
 004A173E    xor         ebx,ebx
 004A1740    xor         eax,eax
 004A1742    pop         edx
 004A1743    pop         ecx
 004A1744    pop         ecx
 004A1745    mov         dword ptr fs:[eax],edx
 004A1748    push        4A176D
 004A174D    lea         eax,[ebp-0C]
 004A1750    call        @IntfClear
 004A1755    lea         eax,[ebp-8]
 004A1758    call        @IntfClear
 004A175D    lea         eax,[ebp-4]
 004A1760    call        @IntfClear
 004A1765    ret
>004A1766    jmp         @HandleFinally
>004A176B    jmp         004A174D
 004A176D    mov         eax,ebx
 004A176F    pop         edi
 004A1770    pop         esi
 004A1771    pop         ebx
 004A1772    mov         esp,ebp
 004A1774    pop         ebp
 004A1775    ret
*}
end;

//004A1788
function TObservers.TryIsObserving(ID:Integer; AIntf:IInterface):Boolean;
begin
{*
 004A1788    push        ebp
 004A1789    mov         ebp,esp
 004A178B    push        0
 004A178D    push        0
 004A178F    push        0
 004A1791    push        0
 004A1793    push        ebx
 004A1794    push        esi
 004A1795    push        edi
 004A1796    mov         dword ptr [ebp-0C],ecx
 004A1799    mov         esi,edx
 004A179B    mov         ebx,eax
 004A179D    mov         eax,dword ptr [ebp-0C]
 004A17A0    test        eax,eax
>004A17A2    je          004A17A8
 004A17A4    xor         edx,edx
 004A17A6    mov         dword ptr [eax],edx
 004A17A8    xor         eax,eax
 004A17AA    push        ebp
 004A17AB    push        4A1851
 004A17B0    push        dword ptr fs:[eax]
 004A17B3    mov         dword ptr fs:[eax],esp
 004A17B6    lea         eax,[ebp-8]
 004A17B9    call        @IntfClear
 004A17BE    mov         ecx,eax
 004A17C0    mov         eax,dword ptr [ebx+4]
 004A17C3    mov         edx,esi
 004A17C5    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TryGetValue
 004A17CA    test        al,al
>004A17CC    je          004A1829
 004A17CE    mov         eax,dword ptr [ebp-8]
 004A17D1    mov         edx,dword ptr [eax]
 004A17D3    call        dword ptr [edx+14]
 004A17D6    mov         ebx,eax
 004A17D8    dec         ebx
 004A17D9    test        ebx,ebx
>004A17DB    jl          004A1829
 004A17DD    inc         ebx
 004A17DE    xor         esi,esi
 004A17E0    lea         ecx,[ebp-10]
 004A17E3    mov         edx,esi
 004A17E5    mov         eax,dword ptr [ebp-8]
 004A17E8    mov         edi,dword ptr [eax]
 004A17EA    call        dword ptr [edi+0C]
 004A17ED    mov         eax,dword ptr [ebp-10]
 004A17F0    push        eax
 004A17F1    lea         eax,[ebp-4]
 004A17F4    call        @IntfClear
 004A17F9    mov         ecx,eax
 004A17FB    mov         edx,4A1864
 004A1800    pop         eax
 004A1801    call        Supports
 004A1806    test        al,al
>004A1808    je          004A1825
 004A180A    mov         eax,dword ptr [ebp-4]
 004A180D    mov         edx,dword ptr [eax]
 004A180F    call        dword ptr [edx+10]
 004A1812    test        al,al
>004A1814    je          004A1825
 004A1816    mov         eax,dword ptr [ebp-0C]
 004A1819    mov         edx,dword ptr [ebp-4]
 004A181C    call        @IntfCopy
 004A1821    mov         bl,1
>004A1823    jmp         004A182B
 004A1825    inc         esi
 004A1826    dec         ebx
>004A1827    jne         004A17E0
 004A1829    xor         ebx,ebx
 004A182B    xor         eax,eax
 004A182D    pop         edx
 004A182E    pop         ecx
 004A182F    pop         ecx
 004A1830    mov         dword ptr fs:[eax],edx
 004A1833    push        4A1858
 004A1838    lea         eax,[ebp-10]
 004A183B    call        @IntfClear
 004A1840    lea         eax,[ebp-8]
 004A1843    call        @IntfClear
 004A1848    lea         eax,[ebp-4]
 004A184B    call        @IntfClear
 004A1850    ret
>004A1851    jmp         @HandleFinally
>004A1856    jmp         004A1838
 004A1858    mov         eax,ebx
 004A185A    pop         edi
 004A185B    pop         esi
 004A185C    pop         ebx
 004A185D    mov         esp,ebp
 004A185F    pop         ebp
 004A1860    ret
*}
end;

//004A1874
procedure TObservers.RemoveObserver(ID:Integer; AIntf:IInterface);
begin
{*
 004A1874    push        ebx
 004A1875    push        ecx
 004A1876    push        ecx
 004A1877    mov         dword ptr [esp+4],edx
 004A187B    lea         edx,[esp+4]
 004A187F    xor         ecx,ecx
 004A1881    mov         ebx,dword ptr [eax]
 004A1883    call        dword ptr [ebx+10];TObservers.RemoveObserver
 004A1886    pop         edx
 004A1887    pop         ebx
 004A1888    ret
*}
end;

//004A188C
procedure TObservers.RemoveObserver(IDs:Integer; AIntf:IInterface);
begin
{*
 004A188C    push        ebp
 004A188D    mov         ebp,esp
 004A188F    add         esp,0FFFFFFF8
 004A1892    push        ebx
 004A1893    push        esi
 004A1894    push        edi
 004A1895    xor         ebx,ebx
 004A1897    mov         dword ptr [ebp-4],ebx
 004A189A    mov         dword ptr [ebp-8],eax
 004A189D    xor         eax,eax
 004A189F    push        ebp
 004A18A0    push        4A191B
 004A18A5    push        dword ptr fs:[eax]
 004A18A8    mov         dword ptr fs:[eax],esp
 004A18AB    lea         esi,[ecx+1]
 004A18AE    dec         esi
 004A18AF    test        esi,esi
>004A18B1    jl          004A1905
 004A18B3    inc         esi
 004A18B4    mov         ebx,edx
 004A18B6    mov         edi,dword ptr [ebx]
 004A18B8    lea         eax,[ebp-4]
 004A18BB    call        @IntfClear
 004A18C0    mov         ecx,eax
 004A18C2    mov         eax,dword ptr [ebp-8]
 004A18C5    mov         eax,dword ptr [eax+4]
 004A18C8    mov         edx,edi
 004A18CA    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.TryGetValue
 004A18CF    test        al,al
>004A18D1    je          004A18FF
 004A18D3    mov         edx,dword ptr [ebp+8]
 004A18D6    mov         eax,dword ptr [ebp-4]
 004A18D9    mov         ecx,dword ptr [eax]
 004A18DB    call        dword ptr [ecx+44]
 004A18DE    mov         eax,dword ptr [ebp-4]
 004A18E1    mov         edx,dword ptr [eax]
 004A18E3    call        dword ptr [edx+14]
 004A18E6    test        eax,eax
>004A18E8    jne         004A18FF
 004A18EA    mov         eax,dword ptr [ebp-8]
 004A18ED    mov         eax,dword ptr [eax+4]
 004A18F0    mov         edx,edi
 004A18F2    call        TDictionary<System.Integer,System.Classes.IInterfaceList>.Remove
 004A18F7    lea         eax,[ebp-4]
 004A18FA    call        @IntfClear
 004A18FF    add         ebx,4
 004A1902    dec         esi
>004A1903    jne         004A18B6
 004A1905    xor         eax,eax
 004A1907    pop         edx
 004A1908    pop         ecx
 004A1909    pop         ecx
 004A190A    mov         dword ptr fs:[eax],edx
 004A190D    push        4A1922
 004A1912    lea         eax,[ebp-4]
 004A1915    call        @IntfClear
 004A191A    ret
>004A191B    jmp         @HandleFinally
>004A1920    jmp         004A1912
 004A1922    pop         edi
 004A1923    pop         esi
 004A1924    pop         ebx
 004A1925    pop         ecx
 004A1926    pop         ecx
 004A1927    pop         ebp
 004A1928    ret         4
*}
end;

//004A192C
function TLinkObservers.GetEditGridLink:IEditGridLinkObserver;
begin
{*
 004A192C    push        ebp
 004A192D    mov         ebp,esp
 004A192F    push        0
 004A1931    push        0
 004A1933    push        0
 004A1935    push        ebx
 004A1936    push        esi
 004A1937    mov         dword ptr [ebp-4],edx
 004A193A    mov         esi,eax
 004A193C    xor         eax,eax
 004A193E    push        ebp
 004A193F    push        4A19B9
 004A1944    push        dword ptr fs:[eax]
 004A1947    mov         dword ptr fs:[eax],esp
 004A194A    mov         ebx,2
 004A194F    mov         edx,ebx
 004A1951    mov         eax,esi
 004A1953    mov         ecx,dword ptr [eax]
 004A1955    call        dword ptr [ecx+14]
 004A1958    test        al,al
>004A195A    je          004A197A
 004A195C    lea         ecx,[ebp-8]
 004A195F    mov         edx,ebx
 004A1961    mov         eax,esi
 004A1963    mov         ebx,dword ptr [eax]
 004A1965    call        dword ptr [ebx+1C]
 004A1968    mov         edx,dword ptr [ebp-8]
 004A196B    mov         eax,dword ptr [ebp-4]
 004A196E    mov         ecx,4A19C8
 004A1973    call        @IntfCast
>004A1978    jmp         004A199B
 004A197A    lea         edx,[ebp-0C]
 004A197D    mov         eax,[007C49DC];^SResString202:TResStringRec
 004A1982    call        LoadResString
 004A1987    mov         ecx,dword ptr [ebp-0C]
 004A198A    mov         dl,1
 004A198C    mov         eax,[0047887C];EObserverException
 004A1991    call        Exception.Create
 004A1996    call        @RaiseExcept
 004A199B    xor         eax,eax
 004A199D    pop         edx
 004A199E    pop         ecx
 004A199F    pop         ecx
 004A19A0    mov         dword ptr fs:[eax],edx
 004A19A3    push        4A19C0
 004A19A8    lea         eax,[ebp-0C]
 004A19AB    call        @UStrClr
 004A19B0    lea         eax,[ebp-8]
 004A19B3    call        @IntfClear
 004A19B8    ret
>004A19B9    jmp         @HandleFinally
>004A19BE    jmp         004A19A8
 004A19C0    pop         esi
 004A19C1    pop         ebx
 004A19C2    mov         esp,ebp
 004A19C4    pop         ebp
 004A19C5    ret
*}
end;

//004A19D8
function TLinkObservers.GetEditLink:IEditLinkObserver;
begin
{*
 004A19D8    push        ebp
 004A19D9    mov         ebp,esp
 004A19DB    push        0
 004A19DD    push        0
 004A19DF    push        0
 004A19E1    push        ebx
 004A19E2    push        esi
 004A19E3    mov         dword ptr [ebp-4],edx
 004A19E6    mov         esi,eax
 004A19E8    xor         eax,eax
 004A19EA    push        ebp
 004A19EB    push        4A1A65
 004A19F0    push        dword ptr fs:[eax]
 004A19F3    mov         dword ptr fs:[eax],esp
 004A19F6    mov         ebx,1
 004A19FB    mov         edx,ebx
 004A19FD    mov         eax,esi
 004A19FF    mov         ecx,dword ptr [eax]
 004A1A01    call        dword ptr [ecx+14]
 004A1A04    test        al,al
>004A1A06    je          004A1A26
 004A1A08    lea         ecx,[ebp-8]
 004A1A0B    mov         edx,ebx
 004A1A0D    mov         eax,esi
 004A1A0F    mov         ebx,dword ptr [eax]
 004A1A11    call        dword ptr [ebx+1C]
 004A1A14    mov         edx,dword ptr [ebp-8]
 004A1A17    mov         eax,dword ptr [ebp-4]
 004A1A1A    mov         ecx,4A1A74
 004A1A1F    call        @IntfCast
>004A1A24    jmp         004A1A47
 004A1A26    lea         edx,[ebp-0C]
 004A1A29    mov         eax,[007C49DC];^SResString202:TResStringRec
 004A1A2E    call        LoadResString
 004A1A33    mov         ecx,dword ptr [ebp-0C]
 004A1A36    mov         dl,1
 004A1A38    mov         eax,[0047887C];EObserverException
 004A1A3D    call        Exception.Create
 004A1A42    call        @RaiseExcept
 004A1A47    xor         eax,eax
 004A1A49    pop         edx
 004A1A4A    pop         ecx
 004A1A4B    pop         ecx
 004A1A4C    mov         dword ptr fs:[eax],edx
 004A1A4F    push        4A1A6C
 004A1A54    lea         eax,[ebp-0C]
 004A1A57    call        @UStrClr
 004A1A5C    lea         eax,[ebp-8]
 004A1A5F    call        @IntfClear
 004A1A64    ret
>004A1A65    jmp         @HandleFinally
>004A1A6A    jmp         004A1A54
 004A1A6C    pop         esi
 004A1A6D    pop         ebx
 004A1A6E    mov         esp,ebp
 004A1A70    pop         ebp
 004A1A71    ret
*}
end;

//004A1A84
function TLinkObservers.EditLinkTrackUpdate:Boolean;
begin
{*
 004A1A84    push        ebp
 004A1A85    mov         ebp,esp
 004A1A87    push        0
 004A1A89    push        0
 004A1A8B    push        ebx
 004A1A8C    push        esi
 004A1A8D    mov         esi,eax
 004A1A8F    xor         eax,eax
 004A1A91    push        ebp
 004A1A92    push        4A1AF8
 004A1A97    push        dword ptr fs:[eax]
 004A1A9A    mov         dword ptr fs:[eax],esp
 004A1A9D    xor         ebx,ebx
 004A1A9F    lea         edx,[ebp-4]
 004A1AA2    mov         eax,esi
 004A1AA4    call        TLinkObservers.GetEditLink
 004A1AA9    lea         eax,[ebp-8]
 004A1AAC    call        @IntfClear
 004A1AB1    mov         ecx,eax
 004A1AB3    mov         edx,4A1B08
 004A1AB8    mov         eax,dword ptr [ebp-4]
 004A1ABB    call        Supports
 004A1AC0    test        al,al
>004A1AC2    je          004A1ADA
 004A1AC4    mov         eax,dword ptr [ebp-8]
 004A1AC7    mov         edx,dword ptr [eax]
 004A1AC9    call        dword ptr [edx+0C]
 004A1ACC    test        al,al
>004A1ACE    je          004A1ADA
 004A1AD0    mov         eax,dword ptr [ebp-4]
 004A1AD3    mov         edx,dword ptr [eax]
 004A1AD5    call        dword ptr [edx+20]
 004A1AD8    mov         bl,1
 004A1ADA    xor         eax,eax
 004A1ADC    pop         edx
 004A1ADD    pop         ecx
 004A1ADE    pop         ecx
 004A1ADF    mov         dword ptr fs:[eax],edx
 004A1AE2    push        4A1AFF
 004A1AE7    lea         eax,[ebp-8]
 004A1AEA    call        @IntfClear
 004A1AEF    lea         eax,[ebp-4]
 004A1AF2    call        @IntfClear
 004A1AF7    ret
>004A1AF8    jmp         @HandleFinally
>004A1AFD    jmp         004A1AE7
 004A1AFF    mov         eax,ebx
 004A1B01    pop         esi
 004A1B02    pop         ebx
 004A1B03    pop         ecx
 004A1B04    pop         ecx
 004A1B05    pop         ebp
 004A1B06    ret
*}
end;

//004A1B18
procedure TLinkObservers.PositionLinkPosChanged;
begin
{*
 004A1B18    push        ebp
 004A1B19    mov         ebp,esp
 004A1B1B    xor         ecx,ecx
 004A1B1D    push        ecx
 004A1B1E    push        ecx
 004A1B1F    push        ecx
 004A1B20    push        ecx
 004A1B21    push        ecx
 004A1B22    push        ebx
 004A1B23    push        esi
 004A1B24    push        edi
 004A1B25    mov         ebx,eax
 004A1B27    xor         eax,eax
 004A1B29    push        ebp
 004A1B2A    push        4A1C0D
 004A1B2F    push        dword ptr fs:[eax]
 004A1B32    mov         dword ptr fs:[eax],esp
 004A1B35    mov         edx,3
 004A1B3A    mov         eax,ebx
 004A1B3C    mov         ecx,dword ptr [eax]
 004A1B3E    call        dword ptr [ecx+14]
 004A1B41    test        al,al
>004A1B43    je          004A1BD4
 004A1B49    lea         ecx,[ebp-4]
 004A1B4C    mov         edx,3
 004A1B51    mov         eax,ebx
 004A1B53    mov         ebx,dword ptr [eax]
 004A1B55    call        dword ptr [ebx+20]
 004A1B58    mov         eax,dword ptr [ebp-4]
 004A1B5B    mov         edx,dword ptr [eax]
 004A1B5D    call        dword ptr [edx+14]
 004A1B60    mov         esi,eax
 004A1B62    dec         esi
 004A1B63    test        esi,esi
>004A1B65    jl          004A1BD4
 004A1B67    inc         esi
 004A1B68    xor         ebx,ebx
 004A1B6A    lea         ecx,[ebp-10]
 004A1B6D    mov         edx,ebx
 004A1B6F    mov         eax,dword ptr [ebp-4]
 004A1B72    mov         edi,dword ptr [eax]
 004A1B74    call        dword ptr [edi+0C]
 004A1B77    mov         eax,dword ptr [ebp-10]
 004A1B7A    push        eax
 004A1B7B    lea         eax,[ebp-8]
 004A1B7E    call        @IntfClear
 004A1B83    mov         ecx,eax
 004A1B85    mov         edx,4A1C1C
 004A1B8A    pop         eax
 004A1B8B    call        Supports
 004A1B90    test        al,al
>004A1B92    je          004A1B9E
 004A1B94    mov         eax,dword ptr [ebp-8]
 004A1B97    mov         edx,dword ptr [eax]
 004A1B99    call        dword ptr [edx+0C]
>004A1B9C    jmp         004A1BD0
 004A1B9E    lea         ecx,[ebp-14]
 004A1BA1    mov         edx,ebx
 004A1BA3    mov         eax,dword ptr [ebp-4]
 004A1BA6    mov         edi,dword ptr [eax]
 004A1BA8    call        dword ptr [edi+0C]
 004A1BAB    mov         eax,dword ptr [ebp-14]
 004A1BAE    push        eax
 004A1BAF    lea         eax,[ebp-0C]
 004A1BB2    call        @IntfClear
 004A1BB7    mov         ecx,eax
 004A1BB9    mov         edx,4A1C2C
 004A1BBE    pop         eax
 004A1BBF    call        Supports
 004A1BC4    test        al,al
>004A1BC6    je          004A1BD0
 004A1BC8    mov         eax,dword ptr [ebp-0C]
 004A1BCB    mov         edx,dword ptr [eax]
 004A1BCD    call        dword ptr [edx+0C]
 004A1BD0    inc         ebx
 004A1BD1    dec         esi
>004A1BD2    jne         004A1B6A
 004A1BD4    xor         eax,eax
 004A1BD6    pop         edx
 004A1BD7    pop         ecx
 004A1BD8    pop         ecx
 004A1BD9    mov         dword ptr fs:[eax],edx
 004A1BDC    push        4A1C14
 004A1BE1    lea         eax,[ebp-14]
 004A1BE4    mov         edx,dword ptr ds:[4022C8];IInterface
 004A1BEA    mov         ecx,2
 004A1BEF    call        @FinalizeArray
 004A1BF4    lea         eax,[ebp-0C]
 004A1BF7    call        @IntfClear
 004A1BFC    lea         eax,[ebp-8]
 004A1BFF    call        @IntfClear
 004A1C04    lea         eax,[ebp-4]
 004A1C07    call        @IntfClear
 004A1C0C    ret
>004A1C0D    jmp         @HandleFinally
>004A1C12    jmp         004A1BE1
 004A1C14    pop         edi
 004A1C15    pop         esi
 004A1C16    pop         ebx
 004A1C17    mov         esp,ebp
 004A1C19    pop         ebp
 004A1C1A    ret
*}
end;

//004A1C3C
procedure TLinkObservers.PositionLinkPosChanging;
begin
{*
 004A1C3C    push        ebp
 004A1C3D    mov         ebp,esp
 004A1C3F    push        0
 004A1C41    push        0
 004A1C43    push        0
 004A1C45    push        ebx
 004A1C46    push        esi
 004A1C47    push        edi
 004A1C48    mov         ebx,eax
 004A1C4A    xor         eax,eax
 004A1C4C    push        ebp
 004A1C4D    push        4A1CE5
 004A1C52    push        dword ptr fs:[eax]
 004A1C55    mov         dword ptr fs:[eax],esp
 004A1C58    mov         edx,3
 004A1C5D    mov         eax,ebx
 004A1C5F    mov         ecx,dword ptr [eax]
 004A1C61    call        dword ptr [ecx+14]
 004A1C64    test        al,al
>004A1C66    je          004A1CBF
 004A1C68    lea         ecx,[ebp-4]
 004A1C6B    mov         edx,3
 004A1C70    mov         eax,ebx
 004A1C72    mov         ebx,dword ptr [eax]
 004A1C74    call        dword ptr [ebx+20]
 004A1C77    mov         eax,dword ptr [ebp-4]
 004A1C7A    mov         edx,dword ptr [eax]
 004A1C7C    call        dword ptr [edx+14]
 004A1C7F    mov         ebx,eax
 004A1C81    dec         ebx
 004A1C82    test        ebx,ebx
>004A1C84    jl          004A1CBF
 004A1C86    inc         ebx
 004A1C87    xor         esi,esi
 004A1C89    lea         ecx,[ebp-0C]
 004A1C8C    mov         edx,esi
 004A1C8E    mov         eax,dword ptr [ebp-4]
 004A1C91    mov         edi,dword ptr [eax]
 004A1C93    call        dword ptr [edi+0C]
 004A1C96    mov         eax,dword ptr [ebp-0C]
 004A1C99    push        eax
 004A1C9A    lea         eax,[ebp-8]
 004A1C9D    call        @IntfClear
 004A1CA2    mov         ecx,eax
 004A1CA4    mov         edx,4A1CF4
 004A1CA9    pop         eax
 004A1CAA    call        Supports
 004A1CAF    test        al,al
>004A1CB1    je          004A1CBB
 004A1CB3    mov         eax,dword ptr [ebp-8]
 004A1CB6    mov         edx,dword ptr [eax]
 004A1CB8    call        dword ptr [edx+10]
 004A1CBB    inc         esi
 004A1CBC    dec         ebx
>004A1CBD    jne         004A1C89
 004A1CBF    xor         eax,eax
 004A1CC1    pop         edx
 004A1CC2    pop         ecx
 004A1CC3    pop         ecx
 004A1CC4    mov         dword ptr fs:[eax],edx
 004A1CC7    push        4A1CEC
 004A1CCC    lea         eax,[ebp-0C]
 004A1CCF    call        @IntfClear
 004A1CD4    lea         eax,[ebp-8]
 004A1CD7    call        @IntfClear
 004A1CDC    lea         eax,[ebp-4]
 004A1CDF    call        @IntfClear
 004A1CE4    ret
>004A1CE5    jmp         @HandleFinally
>004A1CEA    jmp         004A1CCC
 004A1CEC    pop         edi
 004A1CED    pop         esi
 004A1CEE    pop         ebx
 004A1CEF    mov         esp,ebp
 004A1CF1    pop         ebp
 004A1CF2    ret
*}
end;

//004A1D04
procedure sub_004A1D04(?:TObservers);
begin
{*
 004A1D04    push        ebp
 004A1D05    mov         ebp,esp
 004A1D07    push        0
 004A1D09    push        0
 004A1D0B    push        0
 004A1D0D    push        ebx
 004A1D0E    mov         ebx,eax
 004A1D10    xor         eax,eax
 004A1D12    push        ebp
 004A1D13    push        4A1DD0
 004A1D18    push        dword ptr fs:[eax]
 004A1D1B    mov         dword ptr fs:[eax],esp
 004A1D1E    mov         edx,1
 004A1D23    mov         eax,ebx
 004A1D25    mov         ecx,dword ptr [eax]
 004A1D27    call        dword ptr [ecx+14]
 004A1D2A    test        al,al
>004A1D2C    je          004A1D7A
 004A1D2E    lea         edx,[ebp-4]
 004A1D31    mov         eax,ebx
 004A1D33    call        TLinkObservers.GetEditLink
 004A1D38    mov         eax,dword ptr [ebp-4]
 004A1D3B    mov         edx,dword ptr [eax]
 004A1D3D    call        dword ptr [edx+44]
 004A1D40    test        al,al
>004A1D42    je          004A1D66
 004A1D44    lea         edx,[ebp-8]
 004A1D47    mov         eax,ebx
 004A1D49    call        TLinkObservers.GetEditLink
 004A1D4E    mov         eax,dword ptr [ebp-8]
 004A1D51    mov         edx,dword ptr [eax]
 004A1D53    call        dword ptr [edx+2C]
 004A1D56    mov         eax,ebx
 004A1D58    call        TLinkObservers.EditLinkTrackUpdate
 004A1D5D    mov         eax,ebx
 004A1D5F    call        TLinkObservers.PositionLinkPosChanged
>004A1D64    jmp         004A1D91
 004A1D66    lea         edx,[ebp-0C]
 004A1D69    mov         eax,ebx
 004A1D6B    call        TLinkObservers.GetEditLink
 004A1D70    mov         eax,dword ptr [ebp-0C]
 004A1D73    mov         edx,dword ptr [eax]
 004A1D75    call        dword ptr [edx+28]
>004A1D78    jmp         004A1D91
 004A1D7A    mov         edx,3
 004A1D7F    mov         eax,ebx
 004A1D81    mov         ecx,dword ptr [eax]
 004A1D83    call        dword ptr [ecx+14]
 004A1D86    test        al,al
>004A1D88    je          004A1D91
 004A1D8A    mov         eax,ebx
 004A1D8C    call        TLinkObservers.PositionLinkPosChanged
 004A1D91    mov         edx,4
 004A1D96    mov         eax,ebx
 004A1D98    mov         ecx,dword ptr [eax]
 004A1D9A    call        dword ptr [ecx+14]
 004A1D9D    test        al,al
>004A1D9F    je          004A1DAF
 004A1DA1    mov         eax,ebx
 004A1DA3    call        TLinkObservers.ControlValueModified
 004A1DA8    mov         eax,ebx
 004A1DAA    call        TLinkObservers.ControlValueTrackUpdate
 004A1DAF    xor         eax,eax
 004A1DB1    pop         edx
 004A1DB2    pop         ecx
 004A1DB3    pop         ecx
 004A1DB4    mov         dword ptr fs:[eax],edx
 004A1DB7    push        4A1DD7
 004A1DBC    lea         eax,[ebp-0C]
 004A1DBF    mov         edx,dword ptr ds:[4782BC];IEditLinkObserver
 004A1DC5    mov         ecx,3
 004A1DCA    call        @FinalizeArray
 004A1DCF    ret
>004A1DD0    jmp         @HandleFinally
>004A1DD5    jmp         004A1DBC
 004A1DD7    pop         ebx
 004A1DD8    mov         esp,ebp
 004A1DDA    pop         ebp
 004A1DDB    ret
*}
end;

//004A1DDC
procedure TLinkObservers.ControlValueUpdate;
begin
{*
 004A1DDC    push        ebp
 004A1DDD    mov         ebp,esp
 004A1DDF    push        0
 004A1DE1    push        0
 004A1DE3    push        0
 004A1DE5    push        ebx
 004A1DE6    push        esi
 004A1DE7    push        edi
 004A1DE8    mov         ebx,eax
 004A1DEA    xor         eax,eax
 004A1DEC    push        ebp
 004A1DED    push        4A1E75
 004A1DF2    push        dword ptr fs:[eax]
 004A1DF5    mov         dword ptr fs:[eax],esp
 004A1DF8    lea         ecx,[ebp-4]
 004A1DFB    mov         edx,4
 004A1E00    mov         eax,ebx
 004A1E02    mov         ebx,dword ptr [eax]
 004A1E04    call        dword ptr [ebx+20]
 004A1E07    mov         eax,dword ptr [ebp-4]
 004A1E0A    mov         edx,dword ptr [eax]
 004A1E0C    call        dword ptr [edx+14]
 004A1E0F    mov         ebx,eax
 004A1E11    dec         ebx
 004A1E12    test        ebx,ebx
>004A1E14    jl          004A1E4F
 004A1E16    inc         ebx
 004A1E17    xor         esi,esi
 004A1E19    lea         ecx,[ebp-0C]
 004A1E1C    mov         edx,esi
 004A1E1E    mov         eax,dword ptr [ebp-4]
 004A1E21    mov         edi,dword ptr [eax]
 004A1E23    call        dword ptr [edi+0C]
 004A1E26    mov         eax,dword ptr [ebp-0C]
 004A1E29    push        eax
 004A1E2A    lea         eax,[ebp-8]
 004A1E2D    call        @IntfClear
 004A1E32    mov         ecx,eax
 004A1E34    mov         edx,4A1E84
 004A1E39    pop         eax
 004A1E3A    call        Supports
 004A1E3F    test        al,al
>004A1E41    je          004A1E4B
 004A1E43    mov         eax,dword ptr [ebp-8]
 004A1E46    mov         edx,dword ptr [eax]
 004A1E48    call        dword ptr [edx+10]
 004A1E4B    inc         esi
 004A1E4C    dec         ebx
>004A1E4D    jne         004A1E19
 004A1E4F    xor         eax,eax
 004A1E51    pop         edx
 004A1E52    pop         ecx
 004A1E53    pop         ecx
 004A1E54    mov         dword ptr fs:[eax],edx
 004A1E57    push        4A1E7C
 004A1E5C    lea         eax,[ebp-0C]
 004A1E5F    call        @IntfClear
 004A1E64    lea         eax,[ebp-8]
 004A1E67    call        @IntfClear
 004A1E6C    lea         eax,[ebp-4]
 004A1E6F    call        @IntfClear
 004A1E74    ret
>004A1E75    jmp         @HandleFinally
>004A1E7A    jmp         004A1E5C
 004A1E7C    pop         edi
 004A1E7D    pop         esi
 004A1E7E    pop         ebx
 004A1E7F    mov         esp,ebp
 004A1E81    pop         ebp
 004A1E82    ret
*}
end;

//004A1E94
procedure TLinkObservers.ControlValueModified;
begin
{*
 004A1E94    push        ebp
 004A1E95    mov         ebp,esp
 004A1E97    push        0
 004A1E99    push        0
 004A1E9B    push        0
 004A1E9D    push        ebx
 004A1E9E    push        esi
 004A1E9F    push        edi
 004A1EA0    mov         ebx,eax
 004A1EA2    xor         eax,eax
 004A1EA4    push        ebp
 004A1EA5    push        4A1F2D
 004A1EAA    push        dword ptr fs:[eax]
 004A1EAD    mov         dword ptr fs:[eax],esp
 004A1EB0    lea         ecx,[ebp-4]
 004A1EB3    mov         edx,4
 004A1EB8    mov         eax,ebx
 004A1EBA    mov         ebx,dword ptr [eax]
 004A1EBC    call        dword ptr [ebx+20]
 004A1EBF    mov         eax,dword ptr [ebp-4]
 004A1EC2    mov         edx,dword ptr [eax]
 004A1EC4    call        dword ptr [edx+14]
 004A1EC7    mov         ebx,eax
 004A1EC9    dec         ebx
 004A1ECA    test        ebx,ebx
>004A1ECC    jl          004A1F07
 004A1ECE    inc         ebx
 004A1ECF    xor         esi,esi
 004A1ED1    lea         ecx,[ebp-0C]
 004A1ED4    mov         edx,esi
 004A1ED6    mov         eax,dword ptr [ebp-4]
 004A1ED9    mov         edi,dword ptr [eax]
 004A1EDB    call        dword ptr [edi+0C]
 004A1EDE    mov         eax,dword ptr [ebp-0C]
 004A1EE1    push        eax
 004A1EE2    lea         eax,[ebp-8]
 004A1EE5    call        @IntfClear
 004A1EEA    mov         ecx,eax
 004A1EEC    mov         edx,4A1F3C
 004A1EF1    pop         eax
 004A1EF2    call        Supports
 004A1EF7    test        al,al
>004A1EF9    je          004A1F03
 004A1EFB    mov         eax,dword ptr [ebp-8]
 004A1EFE    mov         edx,dword ptr [eax]
 004A1F00    call        dword ptr [edx+0C]
 004A1F03    inc         esi
 004A1F04    dec         ebx
>004A1F05    jne         004A1ED1
 004A1F07    xor         eax,eax
 004A1F09    pop         edx
 004A1F0A    pop         ecx
 004A1F0B    pop         ecx
 004A1F0C    mov         dword ptr fs:[eax],edx
 004A1F0F    push        4A1F34
 004A1F14    lea         eax,[ebp-0C]
 004A1F17    call        @IntfClear
 004A1F1C    lea         eax,[ebp-8]
 004A1F1F    call        @IntfClear
 004A1F24    lea         eax,[ebp-4]
 004A1F27    call        @IntfClear
 004A1F2C    ret
>004A1F2D    jmp         @HandleFinally
>004A1F32    jmp         004A1F14
 004A1F34    pop         edi
 004A1F35    pop         esi
 004A1F36    pop         ebx
 004A1F37    mov         esp,ebp
 004A1F39    pop         ebp
 004A1F3A    ret
*}
end;

//004A1F4C
function TLinkObservers.ControlValueTrackUpdate:Boolean;
begin
{*
 004A1F4C    push        ebp
 004A1F4D    mov         ebp,esp
 004A1F4F    xor         ecx,ecx
 004A1F51    push        ecx
 004A1F52    push        ecx
 004A1F53    push        ecx
 004A1F54    push        ecx
 004A1F55    push        ecx
 004A1F56    push        ebx
 004A1F57    push        esi
 004A1F58    push        edi
 004A1F59    mov         ebx,eax
 004A1F5B    xor         eax,eax
 004A1F5D    push        ebp
 004A1F5E    push        4A201D
 004A1F63    push        dword ptr fs:[eax]
 004A1F66    mov         dword ptr fs:[eax],esp
 004A1F69    mov         byte ptr [ebp-0D],0
 004A1F6D    lea         ecx,[ebp-4]
 004A1F70    mov         edx,4
 004A1F75    mov         eax,ebx
 004A1F77    mov         ebx,dword ptr [eax]
 004A1F79    call        dword ptr [ebx+20]
 004A1F7C    mov         eax,dword ptr [ebp-4]
 004A1F7F    mov         edx,dword ptr [eax]
 004A1F81    call        dword ptr [edx+14]
 004A1F84    mov         ebx,eax
 004A1F86    dec         ebx
 004A1F87    test        ebx,ebx
>004A1F89    jl          004A1FEF
 004A1F8B    inc         ebx
 004A1F8C    xor         esi,esi
 004A1F8E    lea         ecx,[ebp-14]
 004A1F91    mov         edx,esi
 004A1F93    mov         eax,dword ptr [ebp-4]
 004A1F96    mov         edi,dword ptr [eax]
 004A1F98    call        dword ptr [edi+0C]
 004A1F9B    mov         eax,dword ptr [ebp-14]
 004A1F9E    push        eax
 004A1F9F    lea         eax,[ebp-8]
 004A1FA2    call        @IntfClear
 004A1FA7    mov         ecx,eax
 004A1FA9    mov         edx,4A2030
 004A1FAE    pop         eax
 004A1FAF    call        Supports
 004A1FB4    test        al,al
>004A1FB6    je          004A1FEB
 004A1FB8    lea         eax,[ebp-0C]
 004A1FBB    call        @IntfClear
 004A1FC0    mov         ecx,eax
 004A1FC2    mov         edx,4A2040
 004A1FC7    mov         eax,dword ptr [ebp-8]
 004A1FCA    call        Supports
 004A1FCF    test        al,al
>004A1FD1    je          004A1FEB
 004A1FD3    mov         eax,dword ptr [ebp-0C]
 004A1FD6    mov         edx,dword ptr [eax]
 004A1FD8    call        dword ptr [edx+0C]
 004A1FDB    test        al,al
>004A1FDD    je          004A1FEB
 004A1FDF    mov         eax,dword ptr [ebp-8]
 004A1FE2    mov         edx,dword ptr [eax]
 004A1FE4    call        dword ptr [edx+10]
 004A1FE7    mov         byte ptr [ebp-0D],1
 004A1FEB    inc         esi
 004A1FEC    dec         ebx
>004A1FED    jne         004A1F8E
 004A1FEF    xor         eax,eax
 004A1FF1    pop         edx
 004A1FF2    pop         ecx
 004A1FF3    pop         ecx
 004A1FF4    mov         dword ptr fs:[eax],edx
 004A1FF7    push        4A2024
 004A1FFC    lea         eax,[ebp-14]
 004A1FFF    call        @IntfClear
 004A2004    lea         eax,[ebp-0C]
 004A2007    call        @IntfClear
 004A200C    lea         eax,[ebp-8]
 004A200F    call        @IntfClear
 004A2014    lea         eax,[ebp-4]
 004A2017    call        @IntfClear
 004A201C    ret
>004A201D    jmp         @HandleFinally
>004A2022    jmp         004A1FFC
 004A2024    movzx       eax,byte ptr [ebp-0D]
 004A2028    pop         edi
 004A2029    pop         esi
 004A202A    pop         ebx
 004A202B    mov         esp,ebp
 004A202D    pop         ebp
 004A202E    ret
*}
end;

//004A2234
procedure TMultiWaitEventImpl.Acquire;
begin
{*
 004A2234    mov         ecx,dword ptr ds:[7C48F4];^SResString206:TResStringRec
 004A223A    mov         dl,1
 004A223C    mov         eax,[00417CF0];EArgumentOutOfRangeException
 004A2241    call        Exception.CreateRes;EArgumentOutOfRangeException.Create
 004A2246    call        @RaiseExcept
 004A224B    ret
*}
end;

//004A224C
{*procedure sub_004A224C(?:?);
begin
 004A224C    push        ebx
 004A224D    push        esi
 004A224E    mov         ebx,eax
 004A2250    mov         ecx,dword ptr [ebx+4];TMultiWaitEventImpl.FState:Integer
 004A2253    mov         esi,edx
 004A2255    and         esi,7F
 004A2258    mov         eax,ecx
 004A225A    lock cmpxchgdword ptr [ebx+4],esi
 004A225F    cmp         ecx,eax
>004A2261    jne         004A2250
 004A2263    pop         esi
 004A2264    pop         ebx
 004A2265    ret
end;*}

//004A2268
procedure sub_004A2268;
begin
{*
 004A2268    push        ebx
 004A2269    mov         ebx,eax
 004A226B    lea         eax,[ebx+8];TMultiWaitEventImpl.FWaiters:TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004A226E    mov         edx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004A2274    call        @DynArrayClear
 004A2279    pop         ebx
 004A227A    ret
*}
end;

//004A227C
constructor TMultiWaitEventImpl.Create;
begin
{*
 004A227C    test        dl,dl
>004A227E    je          004A2288
 004A2280    add         esp,0FFFFFFF0
 004A2283    call        @ClassCreate
 004A2288    test        dl,dl
>004A228A    je          004A229B
 004A228C    call        @AfterConstruction
 004A2291    pop         dword ptr fs:[0]
 004A2298    add         esp,0C
 004A229B    ret
*}
end;

//004A229C
procedure sub_004A229C;
begin
{*
 004A229C    mov         dl,1
 004A229E    mov         eax,[004A2050];TMultiWaitEventImpl
 004A22A3    call        TMultiWaitEventImpl.Create;TMultiWaitEventImpl.Create
 004A22A8    ret
*}
end;

//004A22AC
procedure sub_004A22AC;
begin
{*
 004A22AC    call        TThread.GetTickCount
 004A22B1    ret
*}
end;

//004A22B4
{*function sub_004A22B4(?:?):?;
begin
 004A22B4    mov         eax,dword ptr [eax+8];TMultiWaitEventImpl.FWaiters:TArray<System.Types.TMultiWaitEvent.T...
 004A22B7    lea         eax,[eax+edx*8]
 004A22BA    ret
end;*}

//004A22BC
{*function sub_004A22BC:?;
begin
 004A22BC    push        ecx
 004A22BD    mov         eax,dword ptr [eax+8];TMultiWaitEventImpl.FWaiters:TArray<System.Types.TMultiWaitEvent.T...
 004A22C0    mov         dword ptr [esp],eax
 004A22C3    mov         eax,dword ptr [esp]
 004A22C6    test        eax,eax
>004A22C8    je          004A22CF
 004A22CA    sub         eax,4
 004A22CD    mov         eax,dword ptr [eax]
 004A22CF    pop         edx
 004A22D0    ret
end;*}

//004A22D4
procedure sub_004A22D4;
begin
{*
 004A22D4    push        ebx
 004A22D5    mov         ebx,eax
 004A22D7    call        TMonitor.CheckMonitorSupport
 004A22DC    mov         eax,ebx
 004A22DE    call        TMonitor.GetMonitor
 004A22E3    or          edx,0FFFFFFFF
 004A22E6    call        TMonitor.Enter
 004A22EB    pop         ebx
 004A22EC    ret
*}
end;

//004A22F0
procedure sub_004A22F0;
begin
{*
 004A22F0    call        TMonitor.PulseAll
 004A22F5    ret
*}
end;

//004A22F8
procedure sub_004A22F8;
begin
{*
 004A22F8    call        TMonitor.Exit
 004A22FD    ret
*}
end;

//004A2300
{*procedure sub_004A2300(?:?);
begin
 004A2300    push        ebp
 004A2301    mov         ebp,esp
 004A2303    push        0
 004A2305    push        ebx
 004A2306    push        esi
 004A2307    mov         esi,edx
 004A2309    mov         ebx,eax
 004A230B    xor         eax,eax
 004A230D    push        ebp
 004A230E    push        4A2379
 004A2313    push        dword ptr fs:[eax]
 004A2316    mov         dword ptr fs:[eax],esp
 004A2319    lea         eax,[ebp-4]
 004A231C    mov         edx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004A2322    call        @DynArrayClear
 004A2327    push        1
 004A2329    lea         eax,[ebp-4]
 004A232C    mov         ecx,1
 004A2331    mov         edx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004A2337    call        @DynArraySetLength
 004A233C    add         esp,4
 004A233F    mov         eax,dword ptr [ebp-4]
 004A2342    mov         edx,dword ptr [esi]
 004A2344    mov         dword ptr [eax],edx
 004A2346    mov         edx,dword ptr [esi+4]
 004A2349    mov         dword ptr [eax+4],edx
 004A234C    mov         edx,dword ptr [ebp-4]
 004A234F    lea         eax,[ebx+8];TMultiWaitEventImpl.FWaiters:TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004A2352    mov         ecx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004A2358    call        0040AF74
 004A235D    xor         eax,eax
 004A235F    pop         edx
 004A2360    pop         ecx
 004A2361    pop         ecx
 004A2362    mov         dword ptr fs:[eax],edx
 004A2365    push        4A2380
 004A236A    lea         eax,[ebp-4]
 004A236D    mov         edx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004A2373    call        @DynArrayClear
 004A2378    ret
>004A2379    jmp         @HandleFinally
>004A237E    jmp         004A236A
 004A2380    pop         esi
 004A2381    pop         ebx
 004A2382    pop         ecx
 004A2383    pop         ebp
 004A2384    ret
end;*}

//004A2388
procedure sub_004A2388;
begin
{*
 004A2388    mov         ecx,dword ptr ds:[4A21E0];TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004A238E    push        ecx
 004A238F    add         eax,8;TMultiWaitEventImpl.FWaiters:TArray<System.Types.TMultiWaitEvent.TWaitInfo>
 004A2392    mov         ecx,1
 004A2397    call        0040B078
 004A239C    ret
*}
end;

//004A23A0
function TMultiWaitEventImpl.WaitFor(Timeout:Cardinal):TWaitResult;
begin
{*
 004A23A0    push        ebp
 004A23A1    mov         ebp,esp
 004A23A3    add         esp,0FFFFFFF8
 004A23A6    push        ebx
 004A23A7    mov         ebx,edx
 004A23A9    mov         dword ptr [ebp-4],eax
 004A23AC    mov         eax,dword ptr [ebp-4]
 004A23AF    mov         edx,dword ptr [eax]
 004A23B1    call        dword ptr [edx+0C];TMultiWaitEventImpl.sub_004A22D4
 004A23B4    xor         eax,eax
 004A23B6    push        ebp
 004A23B7    push        4A23F0
 004A23BC    push        dword ptr fs:[eax]
 004A23BF    mov         dword ptr fs:[eax],esp
 004A23C2    mov         edx,ebx
 004A23C4    mov         eax,dword ptr [ebp-4]
 004A23C7    call        TMonitor.Wait
 004A23CC    test        al,al
>004A23CE    je          004A23D6
 004A23D0    mov         byte ptr [ebp-5],0
>004A23D4    jmp         004A23DA
 004A23D6    mov         byte ptr [ebp-5],1
 004A23DA    xor         eax,eax
 004A23DC    pop         edx
 004A23DD    pop         ecx
 004A23DE    pop         ecx
 004A23DF    mov         dword ptr fs:[eax],edx
 004A23E2    push        4A23F7
 004A23E7    mov         eax,dword ptr [ebp-4]
 004A23EA    mov         edx,dword ptr [eax]
 004A23EC    call        dword ptr [edx+10];TMultiWaitEventImpl.sub_004A22F8
 004A23EF    ret
>004A23F0    jmp         @HandleFinally
>004A23F5    jmp         004A23E7
 004A23F7    movzx       eax,byte ptr [ebp-5]
 004A23FB    pop         ebx
 004A23FC    pop         ecx
 004A23FD    pop         ecx
 004A23FE    pop         ebp
 004A23FF    ret
*}
end;

Initialization
//0079C6F8
{*
 0079C6F8    sub         dword ptr ds:[7CA3AC],1
>0079C6FF    jae         0079C70E
 0079C701    mov         eax,[007C467C];^gvar_007C7C70:TMultiWaitEventImpl
 0079C706    mov         edx,dword ptr ds:[4A2050];TMultiWaitEventImpl
 0079C70C    mov         dword ptr [eax],edx
 0079C70E    ret
*}
Finalization
end.