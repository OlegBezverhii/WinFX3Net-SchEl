//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit SysInit;

interface

uses
  SysUtils, Classes;

    function InterlockedExchange(var Target:Integer; Value:Integer):Integer; stdcall;//0040CCF0
    function FreeLibrary:LongBool; stdcall;//0040CD04
    function GetModuleHandleW:HINST; stdcall;//0040CD0C
    function LocalAlloc(size:Integer):Pointer; stdcall;//0040CD14
    function LocalFree:THandle; stdcall;//0040CD1C
    function TlsGetValue:Pointer; stdcall;//0040CD24
    function TlsSetValue(lpTlsValue:Pointer):LongBool; stdcall;//0040CD2C
    function GetLastError:Integer;//0040CD34
    function LoadLibraryA:HMODULE; stdcall;//0040CD3C
    procedure RaiseException(dwExceptionFlags:Types.DWORD; nNumberOfArguments:Types.DWORD; lpArguments:PUINT_PTR); stdcall;//0040CD44
    function GetProcAddress(lpProcName:MarshaledAString):Pointer; stdcall;//0040CD4C
    procedure @DelayLoadHelper2;//0040CD54
    function AllocTlsBuffer(Size:Integer):Pointer;//0040CD5C
    function GetTlsSize:Integer;//0040CD68
    procedure InitThreadTLS;//0040CD70
    function @GetTls:Pointer;//0040CDB4
    procedure InitializeModule;//0040CDF4
    procedure @InitExe;//0040CE00
    procedure @_delayLoadHelper2;//0040CE4C
    procedure @_FUnloadDelayLoadedDLL2;//0040D12C
    procedure @_HrLoadAllImportsForDll;//0040D23C
    procedure ShutdownDelayHelp2;//0040D2F4
    procedure ;//0040D2FC
    procedure ;//0040D30C
    procedure ;//0040D31C
    procedure ;//0040D32C
    procedure ;//0040D33C
    procedure ;//0040D34C
    procedure ;//0040D360
    procedure ;//0040D390
    procedure ;//0040D3A8
    procedure ;//0040D3D0
    procedure ;//0040D3F4
    procedure ;//0040D404

implementation

//0040CCF0
function InterlockedExchange(var Target:Integer; Value:Integer):Integer; stdcall;
begin
{*
 0040CCF0    push        ebp
 0040CCF1    mov         ebp,esp
 0040CCF3    mov         eax,dword ptr [ebp+8]
 0040CCF6    mov         edx,eax
 0040CCF8    mov         eax,dword ptr [ebp+0C]
 0040CCFB    lock xchg   eax,dword ptr [edx]
 0040CCFE    pop         ebp
 0040CCFF    ret         8
*}
end;

//0040CD04
function kernel32.FreeLibrary:LongBool; stdcall;
begin
{*
 0040CD04    jmp         dword ptr ds:[904C9C]
*}
end;

//0040CD0C
function kernel32.GetModuleHandleW:HINST; stdcall;
begin
{*
 0040CD0C    jmp         dword ptr ds:[904C98]
*}
end;

//0040CD14
function kernel32.LocalAlloc(size:Integer):Pointer; stdcall;
begin
{*
 0040CD14    jmp         dword ptr ds:[904C94]
*}
end;

//0040CD1C
function kernel32.LocalFree:THandle; stdcall;
begin
{*
 0040CD1C    jmp         dword ptr ds:[904C90]
*}
end;

//0040CD24
function kernel32.TlsGetValue:Pointer; stdcall;
begin
{*
 0040CD24    jmp         dword ptr ds:[904C8C]
*}
end;

//0040CD2C
function kernel32.TlsSetValue(lpTlsValue:Pointer):LongBool; stdcall;
begin
{*
 0040CD2C    jmp         dword ptr ds:[904C88]
*}
end;

//0040CD34
function kernel32.GetLastError:Integer;
begin
{*
 0040CD34    jmp         dword ptr ds:[904C84]
*}
end;

//0040CD3C
function kernel32.LoadLibraryA:HMODULE; stdcall;
begin
{*
 0040CD3C    jmp         dword ptr ds:[904C80]
*}
end;

//0040CD44
procedure kernel32.RaiseException(dwExceptionFlags:Types.DWORD; nNumberOfArguments:Types.DWORD; lpArguments:PUINT_PTR); stdcall;
begin
{*
 0040CD44    jmp         dword ptr ds:[904C7C]
*}
end;

//0040CD4C
function kernel32.GetProcAddress(lpProcName:MarshaledAString):Pointer; stdcall;
begin
{*
 0040CD4C    jmp         dword ptr ds:[904C78]
*}
end;

//0040CD54
procedure @DelayLoadHelper2;
begin
{*
 0040CD54    jmp         dword ptr ds:[79EC1C]
 0040CD5A    ret
*}
end;

//0040CD5C
function AllocTlsBuffer(Size:Integer):Pointer;
begin
{*
 0040CD5C    push        eax
 0040CD5D    push        40
 0040CD5F    call        kernel32.LocalAlloc
 0040CD64    ret
*}
end;

//0040CD68
function GetTlsSize:Integer;
begin
{*
 0040CD68    mov         eax,48
 0040CD6D    ret
*}
end;

//0040CD70
procedure InitThreadTLS;
begin
{*
 0040CD70    push        ebx
 0040CD71    call        GetTlsSize
 0040CD76    mov         ebx,eax
 0040CD78    test        ebx,ebx
>0040CD7A    je          0040CDB2
 0040CD7C    cmp         dword ptr ds:[79EC14],0FFFFFFFF
>0040CD83    jne         0040CD8F
 0040CD85    mov         eax,0E2
 0040CD8A    call        @RunError
 0040CD8F    mov         eax,ebx
 0040CD91    call        AllocTlsBuffer
 0040CD96    test        eax,eax
>0040CD98    jne         0040CDA6
 0040CD9A    mov         eax,0E2
 0040CD9F    call        @RunError
>0040CDA4    jmp         0040CDB2
 0040CDA6    push        eax
 0040CDA7    mov         eax,[0079EC14]
 0040CDAC    push        eax
 0040CDAD    call        kernel32.TlsSetValue
 0040CDB2    pop         ebx
 0040CDB3    ret
*}
end;

//0040CDB4
function @GetTls:Pointer;
begin
{*
 0040CDB4    mov         cl,byte ptr ds:[7C7C50]
 0040CDBA    mov         eax,[0079EC14]
 0040CDBF    test        cl,cl
>0040CDC1    jne         0040CDE9
 0040CDC3    mov         edx,dword ptr fs:[2C]
 0040CDCA    mov         eax,dword ptr [edx+eax*4]
 0040CDCD    ret
 0040CDCE    call        InitThreadTLS
 0040CDD3    mov         eax,[0079EC14]
 0040CDD8    push        eax
 0040CDD9    call        kernel32.TlsGetValue
 0040CDDE    test        eax,eax
>0040CDE0    je          0040CDE3
 0040CDE2    ret
 0040CDE3    mov         eax,[007C7C6C]
 0040CDE8    ret
 0040CDE9    push        eax
 0040CDEA    call        kernel32.TlsGetValue
 0040CDEF    test        eax,eax
>0040CDF1    je          0040CDCE
 0040CDF3    ret
*}
end;

//0040CDF4
procedure InitializeModule;
begin
{*
 0040CDF4    mov         eax,79EC20
 0040CDF9    call        RegisterModule
 0040CDFE    ret
*}
end;

//0040CE00
procedure @InitExe;
begin
{*
 0040CE00    push        ebx
 0040CE01    mov         ebx,eax
 0040CE03    xor         eax,eax
 0040CE05    mov         [0079EC14],eax
 0040CE0A    push        0
 0040CE0C    call        kernel32.GetModuleHandleW
 0040CE11    mov         [007C7C54],eax;gvar_007C7C54
 0040CE16    mov         eax,[007C7C54];gvar_007C7C54
 0040CE1B    mov         [0079EC24],eax
 0040CE20    xor         eax,eax
 0040CE22    mov         [0079EC28],eax
 0040CE27    xor         eax,eax
 0040CE29    mov         [0079EC2C],eax
 0040CE2E    lea         eax,[ebx+8]
 0040CE31    mov         [0079EC34],eax
 0040CE36    call        InitializeModule
 0040CE3B    mov         edx,79EC20
 0040CE40    mov         eax,ebx
 0040CE42    call        @StartExe
 0040CE47    pop         ebx
 0040CE48    ret
*}
end;

//0040CE4C
procedure @_delayLoadHelper2;
begin
{*
 0040CE4C    push        ebp
 0040CE4D    mov         ebp,esp
 0040CE4F    add         esp,0FFFFFFA8
 0040CE52    mov         ecx,8
 0040CE57    push        ebx
 0040CE58    push        esi
 0040CE59    push        edi
 0040CE5A    lea         edi,[ebp-34]
 0040CE5D    mov         esi,dword ptr [ebp+8]
 0040CE60    push        esi
 0040CE61    mov         esi,79EC40
 0040CE66    rep movs    dword ptr [edi],dword ptr [esi]
 0040CE68    pop         esi
 0040CE69    mov         eax,dword ptr [esi]
 0040CE6B    mov         dword ptr [ebp-34],eax
 0040CE6E    mov         edx,dword ptr [esi+4]
 0040CE71    push        edx
 0040CE72    call        _DF_.
 0040CE77    pop         ecx
 0040CE78    mov         dword ptr [ebp-30],eax
 0040CE7B    mov         ecx,dword ptr [esi+8]
 0040CE7E    push        ecx
 0040CE7F    call        _DF_.
 0040CE84    pop         ecx
 0040CE85    mov         dword ptr [ebp-2C],eax
 0040CE88    mov         eax,dword ptr [esi+0C]
 0040CE8B    push        eax
 0040CE8C    call        _DF_.
 0040CE91    pop         ecx
 0040CE92    mov         dword ptr [ebp-28],eax
 0040CE95    mov         edx,dword ptr [esi+10]
 0040CE98    push        edx
 0040CE99    call        _DF_.
 0040CE9E    pop         ecx
 0040CE9F    mov         dword ptr [ebp-24],eax
 0040CEA2    mov         ecx,dword ptr [esi+14]
 0040CEA5    push        ecx
 0040CEA6    call        _DF_.
 0040CEAB    pop         ecx
 0040CEAC    mov         dword ptr [ebp-20],eax
 0040CEAF    mov         eax,dword ptr [esi+18]
 0040CEB2    push        eax
 0040CEB3    call        _DF_.
 0040CEB8    pop         ecx
 0040CEB9    mov         dword ptr [ebp-1C],eax
 0040CEBC    mov         edx,dword ptr [esi+1C]
 0040CEBF    lea         edi,[ebp-58]
 0040CEC2    mov         dword ptr [ebp-18],edx
 0040CEC5    push        esi
 0040CEC6    mov         esi,79EC60
 0040CECB    mov         ecx,9
 0040CED0    rep movs    dword ptr [edi],dword ptr [esi]
 0040CED2    pop         esi
 0040CED3    mov         dword ptr [ebp-54],esi
 0040CED6    mov         eax,dword ptr [ebp+0C]
 0040CED9    mov         dword ptr [ebp-50],eax
 0040CEDC    mov         edx,dword ptr [ebp-30]
 0040CEDF    mov         dword ptr [ebp-4C],edx
 0040CEE2    test        byte ptr [ebp-34],1
>0040CEE6    jne         0040CF10
 0040CEE8    mov         ecx,dword ptr ds:[79EC84]
 0040CEEE    mov         dword ptr [ebp-4],ecx
 0040CEF1    lea         eax,[ebp-58]
 0040CEF4    mov         dword ptr [ebp-4],eax
 0040CEF7    lea         edx,[ebp-4]
 0040CEFA    push        edx
 0040CEFB    push        1
 0040CEFD    push        0
 0040CEFF    push        0C06D0057
 0040CF04    call        kernel32.RaiseException
 0040CF09    xor         eax,eax
>0040CF0B    jmp         0040D120
 0040CF10    mov         edx,dword ptr [ebp-2C]
 0040CF13    mov         eax,dword ptr [ebp+0C]
 0040CF16    sub         eax,dword ptr [ebp-28]
 0040CF19    test        eax,eax
 0040CF1B    mov         ebx,dword ptr [edx]
>0040CF1D    jns         0040CF22
 0040CF1F    add         eax,3
 0040CF22    sar         eax,2
 0040CF25    mov         dword ptr [ebp-8],eax
 0040CF28    mov         eax,dword ptr [ebp-8]
 0040CF2B    mov         edi,eax
 0040CF2D    shl         edi,2
 0040CF30    add         edi,dword ptr [ebp-24]
 0040CF33    test        byte ptr [edi+3],80
 0040CF37    sete        al
 0040CF3A    and         eax,1
 0040CF3D    mov         dword ptr [ebp-48],eax
 0040CF40    test        eax,eax
>0040CF42    je          0040CF55
 0040CF44    mov         edx,dword ptr [edi]
 0040CF46    push        edx
 0040CF47    call        _DF_.
 0040CF4C    pop         ecx
 0040CF4D    add         eax,2
 0040CF50    mov         dword ptr [ebp-44],eax
>0040CF53    jmp         0040CF60
 0040CF55    mov         ecx,dword ptr [edi]
 0040CF57    and         ecx,0FFFF
 0040CF5D    mov         dword ptr [ebp-44],ecx
 0040CF60    xor         edi,edi
 0040CF62    cmp         dword ptr ds:[7C7C60],0
>0040CF69    je          0040CF82
 0040CF6B    lea         eax,[ebp-58]
 0040CF6E    push        eax
 0040CF6F    push        0
 0040CF71    call        dword ptr ds:[7C7C60]
 0040CF77    mov         edi,eax
 0040CF79    test        edi,edi
>0040CF7B    je          0040CF82
>0040CF7D    jmp         0040D0FE
 0040CF82    test        ebx,ebx
>0040CF84    jne         0040D046
 0040CF8A    cmp         dword ptr ds:[7C7C60],0
>0040CF91    je          0040CFA1
 0040CF93    lea         eax,[ebp-58]
 0040CF96    push        eax
 0040CF97    push        1
 0040CF99    call        dword ptr ds:[7C7C60]
 0040CF9F    mov         ebx,eax
 0040CFA1    test        ebx,ebx
>0040CFA3    jne         0040CFB0
 0040CFA5    mov         eax,dword ptr [ebp-4C]
 0040CFA8    push        eax
 0040CFA9    call        kernel32.LoadLibraryA
 0040CFAE    mov         ebx,eax
 0040CFB0    test        ebx,ebx
>0040CFB2    jne         0040CFFF
 0040CFB4    call        kernel32.GetLastError
 0040CFB9    mov         dword ptr [ebp-38],eax
 0040CFBC    cmp         dword ptr ds:[7C7C64],0
>0040CFC3    je          0040CFD3
 0040CFC5    lea         eax,[ebp-58]
 0040CFC8    push        eax
 0040CFC9    push        3
 0040CFCB    call        dword ptr ds:[7C7C64]
 0040CFD1    mov         ebx,eax
 0040CFD3    test        ebx,ebx
>0040CFD5    jne         0040CFFF
 0040CFD7    mov         eax,[0079EC88]
 0040CFDC    mov         dword ptr [ebp-0C],eax
 0040CFDF    lea         edx,[ebp-58]
 0040CFE2    mov         dword ptr [ebp-0C],edx
 0040CFE5    lea         ecx,[ebp-0C]
 0040CFE8    push        ecx
 0040CFE9    push        1
 0040CFEB    push        0
 0040CFED    push        0C06D007E
 0040CFF2    call        kernel32.RaiseException
 0040CFF7    mov         eax,dword ptr [ebp-3C]
>0040CFFA    jmp         0040D120
 0040CFFF    push        ebx
 0040D000    mov         edx,dword ptr [ebp-2C]
 0040D003    push        edx
 0040D004    call        InterlockedExchange
 0040D009    cmp         ebx,eax
>0040D00B    je          0040D040
 0040D00D    cmp         dword ptr [esi+18],0
>0040D011    je          0040D046
 0040D013    push        8
 0040D015    push        40
 0040D017    call        kernel32.LocalAlloc
 0040D01C    mov         dword ptr [ebp-10],eax
 0040D01F    test        eax,eax
>0040D021    je          0040D046
 0040D023    mov         eax,esi
 0040D025    mov         edx,dword ptr [ebp-10]
 0040D028    mov         dword ptr [edx+4],eax
 0040D02B    mov         ecx,dword ptr [ebp-10]
 0040D02E    mov         eax,[0079EC3C]
 0040D033    mov         dword ptr [ecx],eax
 0040D035    mov         edx,dword ptr [ebp-10]
 0040D038    mov         dword ptr ds:[79EC3C],edx
>0040D03E    jmp         0040D046
 0040D040    push        ebx
 0040D041    call        kernel32.FreeLibrary
 0040D046    mov         dword ptr [ebp-40],ebx
 0040D049    cmp         dword ptr ds:[7C7C60],0
>0040D050    je          0040D060
 0040D052    lea         ecx,[ebp-58]
 0040D055    push        ecx
 0040D056    push        2
 0040D058    call        dword ptr ds:[7C7C60]
 0040D05E    mov         edi,eax
 0040D060    test        edi,edi
>0040D062    jne         0040D0AF
 0040D064    cmp         dword ptr [esi+14],0
>0040D068    je          0040D0A3
 0040D06A    cmp         dword ptr [esi+1C],0
>0040D06E    je          0040D0A3
 0040D070    mov         eax,dword ptr [ebx+3C]
 0040D073    add         eax,ebx
 0040D075    cmp         dword ptr [eax],4550
>0040D07B    jne         0040D0A3
 0040D07D    mov         edx,dword ptr [eax+8]
 0040D080    cmp         edx,dword ptr [ebp-18]
>0040D083    jne         0040D0A3
 0040D085    mov         ecx,dword ptr [eax+34]
 0040D088    cmp         ecx,ebx
 0040D08A    sete        cl
 0040D08D    and         ecx,1
 0040D090    test        cl,cl
>0040D092    je          0040D0A3
 0040D094    mov         eax,dword ptr [ebp-20]
 0040D097    mov         edx,dword ptr [ebp-8]
 0040D09A    mov         edi,dword ptr [eax+edx*4]
 0040D09D    test        edi,edi
>0040D09F    je          0040D0A3
>0040D0A1    jmp         0040D0F9
 0040D0A3    mov         eax,dword ptr [ebp-44]
 0040D0A6    push        eax
 0040D0A7    push        ebx
 0040D0A8    call        kernel32.GetProcAddress
 0040D0AD    mov         edi,eax
 0040D0AF    test        edi,edi
>0040D0B1    jne         0040D0F9
 0040D0B3    call        kernel32.GetLastError
 0040D0B8    mov         dword ptr [ebp-38],eax
 0040D0BB    cmp         dword ptr ds:[7C7C64],0
>0040D0C2    je          0040D0D2
 0040D0C4    lea         eax,[ebp-58]
 0040D0C7    push        eax
 0040D0C8    push        4
 0040D0CA    call        dword ptr ds:[7C7C64]
 0040D0D0    mov         edi,eax
 0040D0D2    test        edi,edi
>0040D0D4    jne         0040D0F9
 0040D0D6    mov         eax,[0079EC8C]
 0040D0DB    mov         dword ptr [ebp-14],eax
 0040D0DE    lea         edx,[ebp-58]
 0040D0E1    mov         dword ptr [ebp-14],edx
 0040D0E4    lea         ecx,[ebp-14]
 0040D0E7    push        ecx
 0040D0E8    push        1
 0040D0EA    push        0
 0040D0EC    push        0C06D007F
 0040D0F1    call        kernel32.RaiseException
 0040D0F6    mov         edi,dword ptr [ebp-3C]
 0040D0F9    mov         eax,dword ptr [ebp+0C]
 0040D0FC    mov         dword ptr [eax],edi
 0040D0FE    cmp         dword ptr ds:[7C7C60],0
>0040D105    je          0040D11E
 0040D107    xor         edx,edx
 0040D109    mov         dword ptr [ebp-38],edx
 0040D10C    mov         dword ptr [ebp-40],ebx
 0040D10F    mov         dword ptr [ebp-3C],edi
 0040D112    lea         ecx,[ebp-58]
 0040D115    push        ecx
 0040D116    push        5
 0040D118    call        dword ptr ds:[7C7C60]
 0040D11E    mov         eax,edi
 0040D120    pop         edi
 0040D121    pop         esi
 0040D122    pop         ebx
 0040D123    mov         esp,ebp
 0040D125    pop         ebp
 0040D126    ret         8
*}
end;

//0040D12C
procedure @_FUnloadDelayLoadedDLL2;
begin
{*
 0040D12C    push        ebp
 0040D12D    mov         ebp,esp
 0040D12F    add         esp,0FFFFFFE4
 0040D132    xor         eax,eax
 0040D134    push        ebx
 0040D135    push        esi
 0040D136    push        edi
 0040D137    mov         esi,dword ptr [ebp+8]
 0040D13A    mov         dword ptr [ebp-4],eax
 0040D13D    test        esi,esi
>0040D13F    je          0040D14A
 0040D141    push        esi
 0040D142    call        _DF_.
 0040D147    pop         ecx
>0040D148    jmp         0040D14C
 0040D14A    xor         eax,eax
 0040D14C    mov         dword ptr [ebp-0C],eax
 0040D14F    mov         ebx,dword ptr ds:[79EC3C]
 0040D155    test        ebx,ebx
>0040D157    je          0040D230
 0040D15D    mov         eax,dword ptr [ebx+4]
 0040D160    mov         edx,dword ptr [eax+4]
 0040D163    push        edx
 0040D164    call        _DF_.
 0040D169    pop         ecx
 0040D16A    mov         edi,eax
 0040D16C    push        edi
 0040D16D    call        _DF_.
 0040D172    pop         ecx
 0040D173    mov         dword ptr [ebp-10],eax
 0040D176    mov         eax,dword ptr [ebx]
 0040D178    test        esi,esi
 0040D17A    mov         dword ptr [ebp-8],eax
>0040D17D    je          0040D1A1
 0040D17F    mov         edx,dword ptr [ebp-10]
 0040D182    cmp         edx,dword ptr [ebp-0C]
>0040D185    jne         0040D225
 0040D18B    mov         ecx,dword ptr [ebp-10]
 0040D18E    push        ecx
 0040D18F    push        edi
 0040D190    push        esi
 0040D191    call        _DF_.
 0040D196    add         esp,0C
 0040D199    test        eax,eax
>0040D19B    jne         0040D225
 0040D1A1    test        ebx,ebx
>0040D1A3    je          0040D221
 0040D1A5    mov         ecx,dword ptr [ebx+4]
 0040D1A8    cmp         dword ptr [ecx+18],0
>0040D1AC    je          0040D221
 0040D1AE    mov         edi,dword ptr [ebx+4]
 0040D1B1    mov         eax,dword ptr [edi+8]
 0040D1B4    push        eax
 0040D1B5    call        _DF_.
 0040D1BA    pop         ecx
 0040D1BB    mov         dword ptr [ebp-14],eax
 0040D1BE    mov         edx,dword ptr [ebp-14]
 0040D1C1    mov         ecx,dword ptr [edx]
 0040D1C3    mov         dword ptr [ebp-18],ecx
 0040D1C6    mov         ecx,dword ptr [edi+18]
 0040D1C9    push        ecx
 0040D1CA    call        _DF_.
 0040D1CF    pop         ecx
 0040D1D0    mov         dword ptr [ebp-1C],eax
 0040D1D3    mov         eax,dword ptr [edi+0C]
 0040D1D6    push        eax
 0040D1D7    call        _DF_.
 0040D1DC    pop         ecx
 0040D1DD    mov         edi,eax
 0040D1DF    push        edi
 0040D1E0    call        _DF_.
 0040D1E5    shl         eax,2
 0040D1E8    pop         ecx
 0040D1E9    push        eax
 0040D1EA    mov         edx,dword ptr [ebp-1C]
 0040D1ED    push        edx
 0040D1EE    push        edi
 0040D1EF    call        _DF_.
 0040D1F4    add         esp,0C
 0040D1F7    mov         ecx,dword ptr [ebp-18]
 0040D1FA    push        ecx
 0040D1FB    call        kernel32.FreeLibrary
 0040D200    mov         eax,dword ptr [ebp-14]
 0040D203    xor         edx,edx
 0040D205    mov         dword ptr [eax],edx
 0040D207    test        ebx,ebx
>0040D209    je          0040D21A
 0040D20B    push        ebx
 0040D20C    call        _DF_.
 0040D211    pop         ecx
 0040D212    mov         edi,ebx
 0040D214    push        edi
 0040D215    call        kernel32.LocalFree
 0040D21A    mov         dword ptr [ebp-4],1
 0040D221    test        esi,esi
>0040D223    jne         0040D230
 0040D225    mov         ebx,dword ptr [ebp-8]
 0040D228    test        ebx,ebx
>0040D22A    jne         0040D15D
 0040D230    mov         eax,dword ptr [ebp-4]
 0040D233    pop         edi
 0040D234    pop         esi
 0040D235    pop         ebx
 0040D236    mov         esp,ebp
 0040D238    pop         ebp
 0040D239    ret         4
*}
end;

//0040D23C
procedure @_HrLoadAllImportsForDll;
begin
{*
 0040D23C    push        ebp
 0040D23D    mov         ebp,esp
 0040D23F    push        ecx
 0040D240    push        ebx
 0040D241    mov         eax,400000;{__ImageBase:Pointer}
 0040D246    push        esi
 0040D247    add         eax,dword ptr ds:[40003C];{__ImageBase:Pointer}
 0040D24D    push        edi
 0040D24E    mov         dword ptr [ebp-4],8007007E
 0040D255    cmp         dword ptr [eax+0E4],0
>0040D25C    je          0040D2E8
 0040D262    mov         edx,dword ptr [eax+0E0]
 0040D268    push        edx
 0040D269    call        _DF_.
 0040D26E    pop         ecx
 0040D26F    mov         ebx,eax
>0040D271    jmp         0040D2AA
 0040D273    push        eax
 0040D274    call        _DF_.
 0040D279    pop         ecx
 0040D27A    mov         esi,eax
 0040D27C    push        esi
 0040D27D    call        _DF_.
 0040D282    pop         ecx
 0040D283    mov         edi,eax
 0040D285    mov         eax,dword ptr [ebp+8]
 0040D288    push        eax
 0040D289    call        _DF_.
 0040D28E    pop         ecx
 0040D28F    cmp         edi,eax
>0040D291    jne         0040D2A7
 0040D293    push        edi
 0040D294    push        esi
 0040D295    mov         edx,dword ptr [ebp+8]
 0040D298    push        edx
 0040D299    call        _DF_.
 0040D29E    add         esp,0C
 0040D2A1    test        eax,eax
>0040D2A3    jne         0040D2A7
>0040D2A5    jmp         0040D2B1
 0040D2A7    add         ebx,20
 0040D2AA    mov         eax,dword ptr [ebx+4]
 0040D2AD    test        eax,eax
>0040D2AF    jne         0040D273
 0040D2B1    cmp         dword ptr [ebx+4],0
>0040D2B5    je          0040D2E8
 0040D2B7    mov         edx,dword ptr [ebx+0C]
 0040D2BA    push        edx
 0040D2BB    call        _DF_.
 0040D2C0    pop         ecx
 0040D2C1    mov         esi,eax
 0040D2C3    push        esi
 0040D2C4    call        _DF_.
 0040D2C9    pop         ecx
 0040D2CA    mov         edi,eax
 0040D2CC    shl         edi,2
 0040D2CF    add         edi,esi
 0040D2D1    cmp         edi,esi
>0040D2D3    jbe         0040D2E3
 0040D2D5    push        esi
 0040D2D6    push        ebx
 0040D2D7    call        @_delayLoadHelper2
 0040D2DC    add         esi,4
 0040D2DF    cmp         edi,esi
>0040D2E1    ja          0040D2D5
 0040D2E3    xor         eax,eax
 0040D2E5    mov         dword ptr [ebp-4],eax
 0040D2E8    mov         eax,dword ptr [ebp-4]
 0040D2EB    pop         edi
 0040D2EC    pop         esi
 0040D2ED    pop         ebx
 0040D2EE    pop         ecx
 0040D2EF    pop         ebp
 0040D2F0    ret         4
*}
end;

//0040D2F4
procedure ShutdownDelayHelp2;
begin
{*
 0040D2F4    push        0
 0040D2F6    call        @_FUnloadDelayLoadedDLL2
 0040D2FB    ret
*}
end;

//0040D2FC
procedure _DF_.;
begin
{*
 0040D2FC    push        ebp
 0040D2FD    mov         ebp,esp
 0040D2FF    mov         eax,400000;{__ImageBase:Pointer}
 0040D304    add         eax,dword ptr [ebp+8]
 0040D307    pop         ebp
 0040D308    ret
*}
end;

//0040D30C
procedure _DF_.;
begin
{*
 0040D30C    push        ebp
 0040D30D    mov         ebp,esp
 0040D30F    mov         eax,400000;{__ImageBase:Pointer}
 0040D314    add         eax,dword ptr [ebp+8]
 0040D317    pop         ebp
 0040D318    ret
*}
end;

//0040D31C
procedure _DF_.;
begin
{*
 0040D31C    push        ebp
 0040D31D    mov         ebp,esp
 0040D31F    mov         eax,400000;{__ImageBase:Pointer}
 0040D324    add         eax,dword ptr [ebp+8]
 0040D327    pop         ebp
 0040D328    ret
*}
end;

//0040D32C
procedure _DF_.;
begin
{*
 0040D32C    push        ebp
 0040D32D    mov         ebp,esp
 0040D32F    mov         eax,400000;{__ImageBase:Pointer}
 0040D334    add         eax,dword ptr [ebp+8]
 0040D337    pop         ebp
 0040D338    ret
*}
end;

//0040D33C
procedure _DF_.;
begin
{*
 0040D33C    push        ebp
 0040D33D    mov         ebp,esp
 0040D33F    mov         eax,400000;{__ImageBase:Pointer}
 0040D344    add         eax,dword ptr [ebp+8]
 0040D347    pop         ebp
 0040D348    ret
*}
end;

//0040D34C
procedure _DF_.;
begin
{*
 0040D34C    push        ebp
 0040D34D    mov         ebp,esp
 0040D34F    mov         edx,dword ptr [ebp+8]
 0040D352    mov         eax,edx
 0040D354    mov         cl,byte ptr [eax]
 0040D356    inc         eax
 0040D357    test        cl,cl
>0040D359    jne         0040D354
 0040D35B    sub         eax,edx
 0040D35D    dec         eax
 0040D35E    pop         ebp
 0040D35F    ret
*}
end;

//0040D360
procedure _DF_.;
begin
{*
 0040D360    push        ebp
 0040D361    mov         ebp,esp
 0040D363    push        ebx
 0040D364    mov         ecx,dword ptr [ebp+10]
 0040D367    mov         edx,dword ptr [ebp+0C]
 0040D36A    mov         eax,dword ptr [ebp+8]
 0040D36D    test        ecx,ecx
>0040D36F    jne         0040D37A
 0040D371    xor         eax,eax
 0040D373    pop         ebx
 0040D374    pop         ebp
 0040D375    ret
>0040D376    jmp         0040D37A
 0040D378    inc         eax
 0040D379    inc         edx
 0040D37A    dec         ecx
>0040D37B    je          0040D383
 0040D37D    mov         bl,byte ptr [eax]
 0040D37F    cmp         bl,byte ptr [edx]
>0040D381    je          0040D378
 0040D383    movzx       eax,byte ptr [eax]
 0040D386    movzx       edx,byte ptr [edx]
 0040D389    sub         eax,edx
 0040D38B    pop         ebx
 0040D38C    pop         ebp
 0040D38D    ret
*}
end;

//0040D390
procedure _DF_.;
begin
{*
 0040D390    push        ebp
 0040D391    mov         ebp,esp
 0040D393    xor         edx,edx
 0040D395    mov         eax,dword ptr [ebp+8]
>0040D398    jmp         0040D39E
 0040D39A    add         eax,4
 0040D39D    inc         edx
 0040D39E    cmp         dword ptr [eax],0
>0040D3A1    jne         0040D39A
 0040D3A3    mov         eax,edx
 0040D3A5    pop         ebp
 0040D3A6    ret
*}
end;

//0040D3A8
procedure _DF_.;
begin
{*
 0040D3A8    push        ebp
 0040D3A9    mov         ebp,esp
 0040D3AB    push        ebx
 0040D3AC    push        esi
 0040D3AD    mov         ecx,dword ptr [ebp+10]
 0040D3B0    mov         edx,dword ptr [ebp+0C]
 0040D3B3    mov         eax,dword ptr [ebp+8]
 0040D3B6    mov         esi,eax
>0040D3B8    jmp         0040D3C0
 0040D3BA    mov         bl,byte ptr [edx]
 0040D3BC    mov         byte ptr [eax],bl
 0040D3BE    inc         eax
 0040D3BF    inc         edx
 0040D3C0    mov         ebx,ecx
 0040D3C2    add         ecx,0FFFFFFFF
 0040D3C5    test        ebx,ebx
>0040D3C7    jne         0040D3BA
 0040D3C9    mov         eax,esi
 0040D3CB    pop         esi
 0040D3CC    pop         ebx
 0040D3CD    pop         ebp
 0040D3CE    ret
*}
end;

//0040D3D0
procedure _DF_.;
begin
{*
 0040D3D0    push        ebp
 0040D3D1    mov         ebp,esp
 0040D3D3    mov         ecx,dword ptr [ebp+8]
 0040D3D6    mov         eax,79EC3C
>0040D3DB    jmp         0040D3DF
 0040D3DD    mov         eax,edx
 0040D3DF    mov         edx,dword ptr [eax]
 0040D3E1    test        edx,edx
>0040D3E3    je          0040D3E9
 0040D3E5    cmp         ecx,edx
>0040D3E7    jne         0040D3DD
 0040D3E9    cmp         ecx,dword ptr [eax]
>0040D3EB    jne         0040D3F1
 0040D3ED    mov         ecx,dword ptr [ecx]
 0040D3EF    mov         dword ptr [eax],ecx
 0040D3F1    pop         ebp
 0040D3F2    ret
*}
end;

//0040D3F4
procedure _DF_.;
begin
{*
 0040D3F4    push        ebp
 0040D3F5    mov         ebp,esp
 0040D3F7    mov         eax,400000;{__ImageBase:Pointer}
 0040D3FC    add         eax,dword ptr [ebp+8]
 0040D3FF    pop         ebp
 0040D400    ret
*}
end;

//0040D404
procedure _DF_.;
begin
{*
 0040D404    push        ebp
 0040D405    mov         ebp,esp
 0040D407    mov         eax,400000;{__ImageBase:Pointer}
 0040D40C    add         eax,dword ptr [ebp+8]
 0040D40F    pop         ebp
 0040D410    ret
*}
end;

end.