//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit6;

interface

uses
  SysUtils, Classes;

type
  TUnitHashEntry = TUnitHashEntry = record//size=18
Next:PUnitHashEntry;//f0
Prev:PUnitHashEntry;//f4
LibModule:PLibModule;//f8
UnitName:PAnsiChar;//fC
DupsAllowed:Boolean;//f10
FullHash:Cardinal;//f14
end;;
  TModuleInfo = TModuleInfo = record//size=8
f4:TArray<System.SysUtils.TUnitHashEntry>;//f4
end;
Validated:Boolean;//f0
UnitHashArray:TArray<System.SysUtils.TUnitHashEntry>;//f4
end;;
  TArray<System.SysUtils.TUnitHashEntry> = array of TUnitHashEntry;
//elSize = 18;
    procedure sub_00424A40;//00424A40
    //procedure sub_00424A4C(?:?);//00424A4C
    //procedure sub_00424A7C(?:?; ?:?);//00424A7C
    procedure sub_00424AE0;//00424AE0
    //function NetWkstaGetInfo:?;//00424B0C
    //function sub_00424B14(?:?; ?:?):?;//00424B14
    procedure sub_00424B44;//00424B44
    function CheckWin32Version(AMajor:Integer; AMinor:Integer):Boolean;//00424B9C
    function GetFileVersion(const AFileName:UnicodeString):Cardinal;//00424BBC
    //function sub_00424CA8(?:UString; ?:?; ?:?; ?:?):?;//00424CA8
    //function sub_00424DC0(?:UnicodeString; ?:Integer):?;//00424DC0
    //function sub_00424E18(?:?; ?:?):?;//00424E18
    //procedure sub_00424E58(?:?; ?:?);//00424E58
    //function sub_00424E7C(?:?; ?:?):?;//00424E7C
    //procedure sub_00424EEC(?:UnicodeString; ?:?; ?:?; ?:?);//00424EEC
    //function sub_00424F8C(?:?; ?:?):?;//00424F8C
    //function sub_00425020(?:UnicodeString; ?:?):?;//00425020
    //function sub_00425084(?:?):?;//00425084
    //function sub_004250B4(?:?):?;//004250B4
    //function sub_004250E4(?:?; ?:?):?;//004250E4
    //function sub_00425128(?:?; ?:?):?;//00425128
    //function sub_00425174(?:string; ?:string):?;//00425174
    //function sub_004251C0(?:UString; ?:string; ?:?):?;//004251C0
    //procedure sub_00425210(?:?; ?:?);//00425210
    function AnsiPos(const Substr:UnicodeString; const S:UnicodeString):Integer;//00425250
    function AnsiLowerCaseFileName(const S:UnicodeString):UnicodeString;//004252B0
    function AnsiStrPos(Str:PWideChar; SubStr:PWideChar):PWideChar;//004252C4
    function AnsiStrRScan(Str:PWideChar; Chr:WideChar):PWideChar;//004252CC
    //function sub_004252D4:?;//004252D4
    //procedure sub_004252DC(?:?);//004252DC
    procedure sub_00425338;//00425338
    procedure sub_004253CC;//004253CC
    //procedure sub_00425440(?:?; ?:UString; ?:UString; ?:?; ?:?);//00425440
    procedure sub_00425834;//00425834
    procedure sub_0042586C;//0042586C
    //procedure sub_0042589C(?:?);//0042589C
    procedure Sleep; stdcall;//004259AC
    function GetModuleName(Module:Windows.HMODULE):UnicodeString;//004259B4
    procedure RaiseLastOSError;//004259E4
    //procedure sub_004259F4(?:?; ?:?);//004259F4
    function Win32Check(RetVal:Windows.BOOL):BOOL;//00425A98
    //function sub_00425AA8:?;//00425AA8
    procedure sub_00425AC8;//00425AC8
    procedure sub_00425AE8;//00425AE8
    destructor Destroy();//00425B64
    //function sub_00425BBC:?;//00425BBC
    procedure Open(var Thread:PThreadInfo);//00425BD8
    procedure Delete(var Thread:PThreadInfo);//00425C40
    //function sub_00425C50(?:TThreadLocalCounter):?;//00425C50
    constructor Create;//00425C8C
    destructor Destroy();//00425D00
    //function sub_00425D48(?:TMultiReadExclusiveWriteSynchronizer):?;//00425D48
    procedure sub_00425D54(?:TMultiReadExclusiveWriteSynchronizer);//00425D54
    procedure sub_00425D60(?:TMultiReadExclusiveWriteSynchronizer);//00425D60
    //function sub_00425D6C(?:TMultiReadExclusiveWriteSynchronizer):?;//00425D6C
    procedure sub_00425D7C(?:TMultiReadExclusiveWriteSynchronizer);//00425D7C
    //function sub_00425D8C(?:?; ?:?):?;//00425D8C
    function BeginWrite:Boolean;//00425D9C
    procedure EndWrite;//00425E54
    procedure BeginRead;//00425EA4
    procedure EndRead;//00425F1C
    //procedure sub_00425F88(?:?);//00425F88
    function Supports(const Instance:IInterface; const IID:TGUID; var Intf:void ):Boolean;//00425F98
    function Supports(const Instance:TObject; const IID:TGUID; var Intf:void ):Boolean;//00425FBC
    function Supports(const Instance:IInterface; const IID:TGUID):Boolean;//00426054
    function SafeLoadLibrary(const FileName:UnicodeString; ErrorMode:Windows.UINT):HMODULE;//004260A8
    function Append(Value:string):TStringBuilder;//00426130
    function Append(Value:Char):TStringBuilder;//00426188
    procedure sub_004261AC(?:TStringBuilder; ?:Integer);//004261AC
    constructor sub_004261E0;//004261E0
    procedure sub_00426230(?:TStringBuilder);//00426230
    //function sub_00426274(?:TStringBuilder):?;//00426274
    //function sub_0042628C(?:TStringBuilder):?;//0042628C
    //procedure sub_00426290(?:TStringBuilder; ?:?);//00426290
    //procedure sub_00426304(?:TStringBuilder; ?:?);//00426304
    //procedure ToString(?:?);//004263F0
    //procedure ToString(StartIndex:Integer; StrLength:Integer; ?:?);//00426400
    //function sub_0042650C(?:UnicodeString):?;//0042650C
    //function sub_00426518(?:?; ?:?; ?:?):?;//00426518
    //procedure sub_0042653C(?:?; ?:?; ?:?; ?:?; ?:?);//0042653C
    //function sub_00426590(?:?):?;//00426590
    //procedure sub_004265F0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004265F0
    //procedure sub_00426694(?:?; ?:?; ?:?; ?:?);//00426694
    function Contains(const Value:UnicodeString):Boolean;//004266B8
    //procedure sub_004266D4(?:void ; ?:?; ?:Integer; ?:?; ?:?);//004266D4
    //procedure sub_00426710(?:?; ?:?; ?:?);//00426710
    function GetChars(Index:Integer):Char;//00426740
    function Insert(StartIndex:Integer; const Value:UnicodeString):UnicodeString;//00426748
    function LastDelimiter(const Delims:UnicodeString):Integer;//00426768
    function StartsWith(const Value:UnicodeString):Boolean;//004267CC
    function Substring(StartIndex:Integer; Length:Integer):UnicodeString;//00426840
    //procedure sub_00426870(?:UnicodeString; ?:?; ?:Integer; ?:?);//00426870
    //procedure sub_00426894(?:?; ?:?);//00426894
    function TrimLeft:UnicodeString;//0042691C
    //procedure sub_0042696C(?:?; ?:?);//0042696C
    function Clone:TEncoding;//004269CC
    //procedure Convert(Source:TEncoding; Destination:TEncoding; ?:?; Bytes:TArray<System.Byte>);//004269D0
    //procedure Convert(Source:TEncoding; Destination:TEncoding; ?:?; Count:Integer; StartIndex:Integer; Bytes:TArray<System.Byte>);//00426A30

implementation

//00424A40
procedure sub_00424A40;
begin
{*
 00424A40    mov         eax,[007C46F8];^gvar_007C58FC
 00424A45    mov         dword ptr [eax],79F524
 00424A4B    ret
*}
end;

//00424A4C
{*procedure sub_00424A4C(?:?);
begin
 00424A4C    push        ebx
 00424A4D    push        esi
 00424A4E    push        edi
 00424A4F    mov         esi,eax
 00424A51    mov         ebx,esi
 00424A53    test        ebx,ebx
>00424A55    je          00424A75
 00424A57    mov         esi,dword ptr [ebx]
 00424A59    cmp         dword ptr [ebx+4],0
>00424A5D    je          00424A68
 00424A5F    mov         edi,dword ptr [ebx+4]
 00424A62    push        edi
 00424A63    call        kernel32.CloseHandle
 00424A68    mov         eax,ebx
 00424A6A    call        @FreeMem
 00424A6F    mov         ebx,esi
 00424A71    test        ebx,ebx
>00424A73    jne         00424A57
 00424A75    pop         edi
 00424A76    pop         esi
 00424A77    pop         ebx
 00424A78    ret
end;*}

//00424A7C
{*procedure sub_00424A7C(?:?; ?:?);
begin
 00424A7C    push        ebp
 00424A7D    mov         ebp,esp
 00424A7F    add         esp,0FFFFFFF8
 00424A82    push        ebx
 00424A83    push        esi
 00424A84    mov         esi,edx
 00424A86    test        esi,esi
>00424A88    jl          00424ACE
 00424A8A    inc         esi
 00424A8B    mov         ebx,eax
 00424A8D    call        00421148
 00424A92    fstp        qword ptr [ebp-8]
 00424A95    wait
 00424A96    call        00421148
 00424A9B    fsub        qword ptr [ebp-8]
 00424A9E    fld         tbyte ptr ds:[424AD4];1,15740740740741E-8:Extended
 00424AA4    fcompp
 00424AA6    wait
 00424AA7    fnstsw      al
 00424AA9    sahf
>00424AAA    jb          00424ABB
 00424AAC    mov         edx,1
 00424AB1    xor         eax,eax
 00424AB3    lock cmpxchgdword ptr [ebx],edx
 00424AB7    test        eax,eax
>00424AB9    jne         00424A96
 00424ABB    mov         eax,dword ptr [ebx+4]
 00424ABE    test        eax,eax
>00424AC0    je          00424AC8
 00424AC2    push        eax
 00424AC3    call        kernel32.CloseHandle
 00424AC8    add         ebx,8
 00424ACB    dec         esi
>00424ACC    jne         00424A8D
 00424ACE    pop         esi
 00424ACF    pop         ebx
 00424AD0    pop         ecx
 00424AD1    pop         ecx
 00424AD2    pop         ebp
 00424AD3    ret
end;*}

//00424AE0
procedure sub_00424AE0;
begin
{*
 00424AE0    xor         eax,eax
 00424AE2    lock xchg   eax,dword ptr ds:[7C7DF8];gvar_007C7DF8
 00424AE9    call        00424A4C
 00424AEE    xor         eax,eax
 00424AF0    lock xchg   eax,dword ptr ds:[7C7EFC];gvar_007C7EFC
 00424AF7    call        00424A4C
 00424AFC    mov         eax,7C7DFC;gvar_007C7DFC
 00424B01    mov         edx,1F
 00424B06    call        00424A7C
 00424B0B    ret
*}
end;

//00424B0C
{*function netapi32.NetWkstaGetInfo:?;
begin
 00424B0C    jmp         dword ptr ds:[9053B0]
end;*}

//00424B14
{*function sub_00424B14(?:?; ?:?):?;
begin
 00424B14    push        ebx
 00424B15    push        esi
 00424B16    push        ecx
 00424B17    mov         esi,edx
 00424B19    mov         ebx,eax
 00424B1B    push        esp
 00424B1C    push        64
 00424B1E    push        0
 00424B20    call        netapi32.NetWkstaGetInfo
 00424B25    test        eax,eax
 00424B27    sete        al
 00424B2A    test        al,al
>00424B2C    je          00424B3E
 00424B2E    mov         edx,dword ptr [esp]
 00424B31    mov         edx,dword ptr [edx+0C]
 00424B34    mov         dword ptr [ebx],edx
 00424B36    mov         edx,dword ptr [esp]
 00424B39    mov         edx,dword ptr [edx+10]
 00424B3C    mov         dword ptr [esi],edx
 00424B3E    pop         edx
 00424B3F    pop         esi
 00424B40    pop         ebx
 00424B41    ret
end;*}

//00424B44
procedure sub_00424B44;
begin
{*
 00424B44    add         esp,0FFFFFEEC
 00424B4A    mov         eax,[007C7DC0];gvar_007C7DC0
 00424B4F    mov         [0079EDE0],eax;gvar_0079EDE0
 00424B54    mov         eax,[007C7DC4];gvar_007C7DC4
 00424B59    mov         [0079EDE4],eax;gvar_0079EDE4
 00424B5E    mov         eax,[007C7DBC];gvar_007C7DBC
 00424B63    mov         [0079EDE8],eax;gvar_0079EDE8
 00424B68    mov         dword ptr [esp],114
 00424B6F    push        esp
 00424B70    call        kernel32.GetVersionExW
 00424B75    test        eax,eax
>00424B77    je          00424B95
 00424B79    mov         eax,dword ptr [esp+10]
 00424B7D    mov         [0079EDDC],eax;gvar_0079EDDC
 00424B82    mov         eax,79EDEC
 00424B87    lea         edx,[esp+14]
 00424B8B    mov         ecx,80
 00424B90    call        @UStrFromWArray
 00424B95    add         esp,114
 00424B9B    ret
*}
end;

//00424B9C
function CheckWin32Version(AMajor:Integer; AMinor:Integer):Boolean;
begin
{*
 00424B9C    cmp         eax,dword ptr ds:[79EDE0];gvar_0079EDE0
>00424BA2    jl          00424BB7
 00424BA4    cmp         eax,dword ptr ds:[79EDE0];gvar_0079EDE0
>00424BAA    jne         00424BB4
 00424BAC    cmp         edx,dword ptr ds:[79EDE4];gvar_0079EDE4
>00424BB2    jle         00424BB7
 00424BB4    xor         eax,eax
 00424BB6    ret
 00424BB7    mov         al,1
 00424BB9    ret
*}
end;

//00424BBC
function GetFileVersion(const AFileName:UnicodeString):Cardinal;
begin
{*
 00424BBC    push        ebp
 00424BBD    mov         ebp,esp
 00424BBF    add         esp,0FFFFFFE8
 00424BC2    push        ebx
 00424BC3    xor         edx,edx
 00424BC5    mov         dword ptr [ebp-4],edx
 00424BC8    mov         ebx,eax
 00424BCA    xor         eax,eax
 00424BCC    push        ebp
 00424BCD    push        424C92
 00424BD2    push        dword ptr fs:[eax]
 00424BD5    mov         dword ptr fs:[eax],esp
 00424BD8    mov         dword ptr [ebp-8],0FFFFFFFF
 00424BDF    lea         eax,[ebp-4]
 00424BE2    mov         edx,ebx
 00424BE4    call        @UStrLAsg
 00424BE9    lea         eax,[ebp-4]
 00424BEC    call        UniqueString
 00424BF1    lea         eax,[ebp-0C]
 00424BF4    push        eax
 00424BF5    mov         eax,dword ptr [ebp-4]
 00424BF8    call        @UStrToPWChar
 00424BFD    push        eax
 00424BFE    call        version.GetFileVersionInfoSizeW
 00424C03    mov         ebx,eax
 00424C05    test        ebx,ebx
>00424C07    je          00424C7C
 00424C09    mov         eax,ebx
 00424C0B    call        @GetMem
 00424C10    mov         dword ptr [ebp-10],eax
 00424C13    xor         eax,eax
 00424C15    push        ebp
 00424C16    push        424C75
 00424C1B    push        dword ptr fs:[eax]
 00424C1E    mov         dword ptr fs:[eax],esp
 00424C21    mov         eax,dword ptr [ebp-10]
 00424C24    push        eax
 00424C25    push        ebx
 00424C26    mov         eax,dword ptr [ebp-0C]
 00424C29    push        eax
 00424C2A    mov         eax,dword ptr [ebp-4]
 00424C2D    call        @UStrToPWChar
 00424C32    push        eax
 00424C33    call        version.GetFileVersionInfoW
 00424C38    test        eax,eax
>00424C3A    je          00424C5F
 00424C3C    lea         eax,[ebp-18]
 00424C3F    push        eax
 00424C40    lea         eax,[ebp-14]
 00424C43    push        eax
 00424C44    push        424CA4
 00424C49    mov         eax,dword ptr [ebp-10]
 00424C4C    push        eax
 00424C4D    call        version.VerQueryValueW
 00424C52    test        eax,eax
>00424C54    je          00424C5F
 00424C56    mov         eax,dword ptr [ebp-14]
 00424C59    mov         eax,dword ptr [eax+8]
 00424C5C    mov         dword ptr [ebp-8],eax
 00424C5F    xor         eax,eax
 00424C61    pop         edx
 00424C62    pop         ecx
 00424C63    pop         ecx
 00424C64    mov         dword ptr fs:[eax],edx
 00424C67    push        424C7C
 00424C6C    mov         eax,dword ptr [ebp-10]
 00424C6F    call        @FreeMem
 00424C74    ret
>00424C75    jmp         @HandleFinally
>00424C7A    jmp         00424C6C
 00424C7C    xor         eax,eax
 00424C7E    pop         edx
 00424C7F    pop         ecx
 00424C80    pop         ecx
 00424C81    mov         dword ptr fs:[eax],edx
 00424C84    push        424C99
 00424C89    lea         eax,[ebp-4]
 00424C8C    call        @UStrClr
 00424C91    ret
>00424C92    jmp         @HandleFinally
>00424C97    jmp         00424C89
 00424C99    mov         eax,dword ptr [ebp-8]
 00424C9C    pop         ebx
 00424C9D    mov         esp,ebp
 00424C9F    pop         ebp
 00424CA0    ret
*}
end;

//00424CA8
{*function sub_00424CA8(?:UString; ?:?; ?:?; ?:?):?;
begin
 00424CA8    push        ebp
 00424CA9    mov         ebp,esp
 00424CAB    add         esp,0FFFFFFE8
 00424CAE    push        ebx
 00424CAF    push        esi
 00424CB0    push        edi
 00424CB1    xor         ebx,ebx
 00424CB3    mov         dword ptr [ebp-4],ebx
 00424CB6    mov         edi,ecx
 00424CB8    mov         esi,edx
 00424CBA    mov         ebx,eax
 00424CBC    xor         eax,eax
 00424CBE    push        ebp
 00424CBF    push        424DA8
 00424CC4    push        dword ptr fs:[eax]
 00424CC7    mov         dword ptr fs:[eax],esp
 00424CCA    mov         byte ptr [ebp-5],0
 00424CCE    lea         eax,[ebp-4]
 00424CD1    mov         edx,ebx
 00424CD3    call        @UStrLAsg
 00424CD8    lea         eax,[ebp-4]
 00424CDB    call        UniqueString
 00424CE0    lea         eax,[ebp-0C]
 00424CE3    push        eax
 00424CE4    mov         eax,dword ptr [ebp-4]
 00424CE7    call        @UStrToPWChar
 00424CEC    push        eax
 00424CED    call        version.GetFileVersionInfoSizeW
 00424CF2    mov         ebx,eax
 00424CF4    test        ebx,ebx
>00424CF6    je          00424D92
 00424CFC    mov         eax,ebx
 00424CFE    call        @GetMem
 00424D03    mov         dword ptr [ebp-10],eax
 00424D06    xor         edx,edx
 00424D08    push        ebp
 00424D09    push        424D8B
 00424D0E    push        dword ptr fs:[edx]
 00424D11    mov         dword ptr fs:[edx],esp
 00424D14    mov         eax,dword ptr [ebp-10]
 00424D17    push        eax
 00424D18    push        ebx
 00424D19    mov         eax,dword ptr [ebp-0C]
 00424D1C    push        eax
 00424D1D    mov         eax,dword ptr [ebp-4]
 00424D20    call        @UStrToPWChar
 00424D25    push        eax
 00424D26    call        version.GetFileVersionInfoW
 00424D2B    test        eax,eax
>00424D2D    je          00424D75
 00424D2F    lea         eax,[ebp-18]
 00424D32    push        eax
 00424D33    lea         eax,[ebp-14]
 00424D36    push        eax
 00424D37    push        424DBC;'\'
 00424D3C    mov         eax,dword ptr [ebp-10]
 00424D3F    push        eax
 00424D40    call        version.VerQueryValueW
 00424D45    test        eax,eax
>00424D47    je          00424D75
 00424D49    mov         eax,dword ptr [ebp-14]
 00424D4C    mov         eax,dword ptr [eax+10]
 00424D4F    shr         eax,10
 00424D52    movzx       eax,ax
 00424D55    mov         dword ptr [esi],eax
 00424D57    mov         eax,dword ptr [ebp-14]
 00424D5A    movzx       eax,word ptr [eax+10]
 00424D5E    mov         dword ptr [edi],eax
 00424D60    mov         eax,dword ptr [ebp-14]
 00424D63    mov         eax,dword ptr [eax+14]
 00424D66    shr         eax,10
 00424D69    movzx       eax,ax
 00424D6C    mov         edx,dword ptr [ebp+8]
 00424D6F    mov         dword ptr [edx],eax
 00424D71    mov         byte ptr [ebp-5],1
 00424D75    xor         eax,eax
 00424D77    pop         edx
 00424D78    pop         ecx
 00424D79    pop         ecx
 00424D7A    mov         dword ptr fs:[eax],edx
 00424D7D    push        424D92
 00424D82    mov         eax,dword ptr [ebp-10]
 00424D85    call        @FreeMem
 00424D8A    ret
>00424D8B    jmp         @HandleFinally
>00424D90    jmp         00424D82
 00424D92    xor         eax,eax
 00424D94    pop         edx
 00424D95    pop         ecx
 00424D96    pop         ecx
 00424D97    mov         dword ptr fs:[eax],edx
 00424D9A    push        424DAF
 00424D9F    lea         eax,[ebp-4]
 00424DA2    call        @UStrClr
 00424DA7    ret
>00424DA8    jmp         @HandleFinally
>00424DAD    jmp         00424D9F
 00424DAF    movzx       eax,byte ptr [ebp-5]
 00424DB3    pop         edi
 00424DB4    pop         esi
 00424DB5    pop         ebx
 00424DB6    mov         esp,ebp
 00424DB8    pop         ebp
 00424DB9    ret         4
end;*}

//00424DC0
{*function sub_00424DC0(?:UnicodeString; ?:Integer):?;
begin
 00424DC0    push        esi
 00424DC1    mov         esi,eax
 00424DC3    xor         eax,eax
 00424DC5    cmp         edx,1
>00424DC8    jl          00424DDC
 00424DCA    mov         ecx,esi
 00424DCC    test        ecx,ecx
>00424DCE    je          00424DD5
 00424DD0    sub         ecx,4
 00424DD3    mov         ecx,dword ptr [ecx]
 00424DD5    cmp         ecx,edx
 00424DD7    setge       cl
>00424DDA    jmp         00424DDE
 00424DDC    xor         ecx,ecx
 00424DDE    test        cl,cl
>00424DE0    je          00424E16
 00424DE2    movzx       ecx,word ptr [esi+edx*2-2]
 00424DE7    cmp         cx,0D800
>00424DEC    jb          00424DF5
 00424DEE    cmp         cx,0DFFF
>00424DF3    jbe         00424DF9
 00424DF5    xor         ecx,ecx
>00424DF7    jmp         00424DFB
 00424DF9    mov         cl,1
 00424DFB    test        cl,cl
>00424DFD    je          00424E16
 00424DFF    movzx       eax,word ptr [esi+edx*2-2]
 00424E04    cmp         ax,0D800
>00424E08    jb          00424E14
 00424E0A    cmp         ax,0DBFF
>00424E0E    ja          00424E14
 00424E10    mov         al,1
>00424E12    jmp         00424E16
 00424E14    mov         al,2
 00424E16    pop         esi
 00424E17    ret
end;*}

//00424E18
{*function sub_00424E18(?:?; ?:?):?;
begin
 00424E18    push        esi
 00424E19    mov         esi,edx
 00424E1B    xor         edx,edx
 00424E1D    movzx       ecx,word ptr [eax+esi*2-2]
 00424E22    cmp         cx,0D800
>00424E27    jb          00424E30
 00424E29    cmp         cx,0DFFF
>00424E2E    jbe         00424E34
 00424E30    xor         ecx,ecx
>00424E32    jmp         00424E36
 00424E34    mov         cl,1
 00424E36    test        cl,cl
>00424E38    je          00424E53
 00424E3A    movzx       edx,word ptr [eax+esi*2-2]
 00424E3F    cmp         dx,0D800
>00424E44    jb          00424E51
 00424E46    cmp         dx,0DBFF
>00424E4B    ja          00424E51
 00424E4D    mov         dl,1
>00424E4F    jmp         00424E53
 00424E51    mov         dl,2
 00424E53    mov         eax,edx
 00424E55    pop         esi
 00424E56    ret
end;*}

//00424E58
{*procedure sub_00424E58(?:?; ?:?);
begin
 00424E58    push        ebx
 00424E59    mov         ebx,eax
 00424E5B    mov         ecx,ebx
 00424E5D    test        ecx,ecx
>00424E5F    je          00424E66
 00424E61    sub         ecx,4
 00424E64    mov         ecx,dword ptr [ecx]
 00424E66    cmp         edx,ecx
>00424E68    jle         00424E75
 00424E6A    mov         edx,ebx
 00424E6C    test        edx,edx
>00424E6E    je          00424E75
 00424E70    sub         edx,4
 00424E73    mov         edx,dword ptr [edx]
 00424E75    call        00424E7C
 00424E7A    pop         ebx
 00424E7B    ret
end;*}

//00424E7C
{*function sub_00424E7C(?:?; ?:?):?;
begin
 00424E7C    push        ebx
 00424E7D    push        esi
 00424E7E    push        edi
 00424E7F    push        ebp
 00424E80    push        ecx
 00424E81    mov         ebp,edx
 00424E83    mov         edi,eax
 00424E85    xor         eax,eax
 00424E87    mov         dword ptr [esp],eax
 00424E8A    test        ebp,ebp
>00424E8C    jg          00424E92
 00424E8E    mov         al,1
>00424E90    jmp         00424EA2
 00424E92    mov         eax,edi
 00424E94    test        eax,eax
>00424E96    je          00424E9D
 00424E98    sub         eax,4
 00424E9B    mov         eax,dword ptr [eax]
 00424E9D    cmp         eax,ebp
 00424E9F    setl        al
 00424EA2    test        al,al
>00424EA4    jne         00424EE1
 00424EA6    mov         ebx,1
 00424EAB    cmp         ebp,ebx
>00424EAD    jl          00424EE1
 00424EAF    movzx       esi,word ptr [edi+ebx*2-2]
 00424EB4    cmp         si,0D800
>00424EB9    jb          00424EC2
 00424EBB    cmp         si,0DFFF
>00424EC0    jbe         00424EC6
 00424EC2    xor         eax,eax
>00424EC4    jmp         00424EC8
 00424EC6    mov         al,1
 00424EC8    test        al,al
>00424ECA    je          00424ED9
 00424ECC    mov         edx,ebx
 00424ECE    mov         eax,edi
 00424ED0    call        00425128
 00424ED5    mov         ebx,eax
>00424ED7    jmp         00424EDA
 00424ED9    inc         ebx
 00424EDA    inc         dword ptr [esp]
 00424EDD    cmp         ebp,ebx
>00424EDF    jge         00424EAF
 00424EE1    mov         eax,dword ptr [esp]
 00424EE4    pop         edx
 00424EE5    pop         ebp
 00424EE6    pop         edi
 00424EE7    pop         esi
 00424EE8    pop         ebx
 00424EE9    ret
end;*}

//00424EEC
{*procedure sub_00424EEC(?:UnicodeString; ?:?; ?:?; ?:?);
begin
 00424EEC    push        ebp
 00424EED    mov         ebp,esp
 00424EEF    add         esp,0FFFFFFF8
 00424EF2    push        ebx
 00424EF3    push        esi
 00424EF4    push        edi
 00424EF5    mov         dword ptr [ebp-8],ecx
 00424EF8    mov         dword ptr [ebp-4],edx
 00424EFB    mov         edi,eax
 00424EFD    mov         eax,edi
 00424EFF    test        eax,eax
>00424F01    je          00424F08
 00424F03    sub         eax,4
 00424F06    mov         eax,dword ptr [eax]
 00424F08    mov         edx,eax
 00424F0A    mov         esi,1
 00424F0F    mov         ebx,1
>00424F14    jmp         00424F3E
 00424F16    inc         esi
 00424F17    movzx       eax,word ptr [edi+ebx*2-2]
 00424F1C    cmp         ax,0D800
>00424F20    jb          00424F28
 00424F22    cmp         ax,0DFFF
>00424F26    jbe         00424F2C
 00424F28    xor         eax,eax
>00424F2A    jmp         00424F2E
 00424F2C    mov         al,1
 00424F2E    test        al,al
>00424F30    je          00424F3D
 00424F32    add         ebx,2
 00424F35    cmp         edx,ebx
>00424F37    jge         00424F3E
 00424F39    dec         esi
 00424F3A    dec         ebx
>00424F3B    jmp         00424F3E
 00424F3D    inc         ebx
 00424F3E    cmp         edx,ebx
>00424F40    jle         00424F47
 00424F42    cmp         esi,dword ptr [ebp-4]
>00424F45    jl          00424F16
 00424F47    cmp         esi,dword ptr [ebp-4]
>00424F4A    jne         00424F77
 00424F4C    cmp         edx,ebx
>00424F4E    jle         00424F77
 00424F50    movzx       eax,word ptr [edi+ebx*2-2]
 00424F55    cmp         ax,0D800
>00424F59    jb          00424F61
 00424F5B    cmp         ax,0DFFF
>00424F5F    jbe         00424F65
 00424F61    xor         eax,eax
>00424F63    jmp         00424F67
 00424F65    mov         al,1
 00424F67    test        al,al
>00424F69    je          00424F77
 00424F6B    mov         edx,ebx
 00424F6D    mov         eax,edi
 00424F6F    call        00425128
 00424F74    dec         eax
 00424F75    mov         ebx,eax
 00424F77    mov         eax,dword ptr [ebp-8]
 00424F7A    mov         dword ptr [eax],esi
 00424F7C    mov         eax,dword ptr [ebp+8]
 00424F7F    mov         dword ptr [eax],ebx
 00424F81    pop         edi
 00424F82    pop         esi
 00424F83    pop         ebx
 00424F84    pop         ecx
 00424F85    pop         ecx
 00424F86    pop         ebp
 00424F87    ret         4
end;*}

//00424F8C
{*function sub_00424F8C(?:?; ?:?):?;
begin
 00424F8C    push        ebx
 00424F8D    push        esi
 00424F8E    push        edi
 00424F8F    add         esp,0FFFFFFF8
 00424F92    mov         ebx,edx
 00424F94    mov         esi,eax
 00424F96    xor         eax,eax
 00424F98    mov         dword ptr [esp],eax
 00424F9B    test        ebx,ebx
>00424F9D    jg          00424FA3
 00424F9F    mov         al,1
>00424FA1    jmp         00424FB3
 00424FA3    mov         eax,esi
 00424FA5    test        eax,eax
>00424FA7    je          00424FAE
 00424FA9    sub         eax,4
 00424FAC    mov         eax,dword ptr [eax]
 00424FAE    cmp         eax,ebx
 00424FB0    setl        al
 00424FB3    test        al,al
>00424FB5    jne         00425016
 00424FB7    push        esp
 00424FB8    lea         ecx,[esp+8]
 00424FBC    mov         edi,ebx
 00424FBE    dec         edi
 00424FBF    mov         edx,edi
 00424FC1    mov         eax,esi
 00424FC3    call        00424EEC
 00424FC8    cmp         edi,dword ptr [esp+4]
>00424FCC    jle         00424FD2
 00424FCE    mov         al,1
>00424FD0    jmp         00425005
 00424FD2    mov         edx,esi
 00424FD4    mov         eax,edx
 00424FD6    test        eax,eax
>00424FD8    je          00424FDF
 00424FDA    sub         eax,4
 00424FDD    mov         eax,dword ptr [eax]
 00424FDF    cmp         eax,dword ptr [esp]
>00424FE2    jg          00425003
 00424FE4    cmp         dword ptr [esp],1
>00424FE8    jne         00424FFD
 00424FEA    mov         eax,edx
 00424FEC    test        eax,eax
>00424FEE    je          00424FF5
 00424FF0    sub         eax,4
 00424FF3    mov         eax,dword ptr [eax]
 00424FF5    cmp         eax,dword ptr [esp]
 00424FF8    setge       al
>00424FFB    jmp         00424FFF
 00424FFD    xor         eax,eax
 00424FFF    xor         al,1
>00425001    jmp         00425005
 00425003    xor         eax,eax
 00425005    test        al,al
>00425007    je          00425010
 00425009    xor         eax,eax
 0042500B    mov         dword ptr [esp],eax
>0042500E    jmp         00425016
 00425010    dec         ebx
>00425011    jle         00425016
 00425013    inc         dword ptr [esp]
 00425016    mov         eax,dword ptr [esp]
 00425019    pop         ecx
 0042501A    pop         edx
 0042501B    pop         edi
 0042501C    pop         esi
 0042501D    pop         ebx
 0042501E    ret
end;*}

//00425020
{*function sub_00425020(?:UnicodeString; ?:?):?;
begin
 00425020    push        ebx
 00425021    push        esi
 00425022    add         esp,0FFFFFFF8
 00425025    mov         ebx,eax
 00425027    xor         eax,eax
 00425029    mov         dword ptr [esp],eax
 0042502C    test        edx,edx
>0042502E    jle         0042507C
 00425030    mov         esi,ebx
 00425032    mov         eax,esi
 00425034    test        eax,eax
>00425036    je          0042503D
 00425038    sub         eax,4
 0042503B    mov         eax,dword ptr [eax]
 0042503D    cmp         eax,edx
>0042503F    jge         0042504E
 00425041    mov         eax,esi
 00425043    test        eax,eax
>00425045    je          0042504C
 00425047    sub         eax,4
 0042504A    mov         eax,dword ptr [eax]
 0042504C    mov         edx,eax
 0042504E    push        esp
 0042504F    lea         ecx,[esp+8]
 00425053    mov         eax,ebx
 00425055    call        00424EEC
 0042505A    mov         eax,esi
 0042505C    test        eax,eax
>0042505E    je          00425065
 00425060    sub         eax,4
 00425063    mov         eax,dword ptr [eax]
 00425065    add         eax,eax
 00425067    cmp         eax,dword ptr [esp]
>0042506A    jge         0042507C
 0042506C    mov         eax,esi
 0042506E    test        eax,eax
>00425070    je          00425077
 00425072    sub         eax,4
 00425075    mov         eax,dword ptr [eax]
 00425077    add         eax,eax
 00425079    mov         dword ptr [esp],eax
 0042507C    mov         eax,dword ptr [esp]
 0042507F    pop         ecx
 00425080    pop         edx
 00425081    pop         esi
 00425082    pop         ebx
 00425083    ret
end;*}

//00425084
{*function sub_00425084(?:?):?;
begin
 00425084    movzx       edx,word ptr [eax]
 00425087    cmp         dx,0D800
>0042508C    jb          004250AB
 0042508E    cmp         dx,0DBFF
>00425093    ja          004250AB
 00425095    cmp         word ptr [eax+2],0DC00
>0042509B    jb          004250AB
 0042509D    cmp         word ptr [eax+2],0DFFF
>004250A3    ja          004250AB
 004250A5    mov         eax,4
 004250AA    ret
 004250AB    mov         eax,2
 004250B0    ret
end;*}

//004250B4
{*function sub_004250B4(?:?):?;
begin
 004250B4    movzx       edx,word ptr [eax]
 004250B7    cmp         dx,0D800
>004250BC    jb          004250D9
 004250BE    cmp         dx,0DBFF
>004250C3    ja          004250D9
 004250C5    cmp         word ptr [eax+2],0DC00
>004250CB    jb          004250D9
 004250CD    cmp         word ptr [eax+2],0DFFF
>004250D3    ja          004250D9
 004250D5    add         eax,4
 004250D8    ret
 004250D9    test        dx,dx
>004250DC    je          004250E1
 004250DE    add         eax,2
 004250E1    ret
end;*}

//004250E4
{*function sub_004250E4(?:?; ?:?):?;
begin
 004250E4    push        ebx
 004250E5    push        esi
 004250E6    mov         esi,edx
 004250E8    mov         ebx,eax
 004250EA    mov         edx,2
 004250EF    movzx       eax,word ptr [ebx+esi*2-2]
 004250F4    cmp         ax,0D800
>004250F8    jb          00425100
 004250FA    cmp         ax,0DFFF
>004250FE    jbe         00425104
 00425100    xor         eax,eax
>00425102    jmp         00425106
 00425104    mov         al,1
 00425106    test        al,al
>00425108    je          00425121
 0042510A    mov         eax,ebx
 0042510C    call        @UStrToPWChar
 00425111    mov         edx,esi
 00425113    add         edx,edx
 00425115    add         eax,edx
 00425117    sub         eax,2
 0042511A    call        00425084
 0042511F    mov         edx,eax
 00425121    mov         eax,edx
 00425123    pop         esi
 00425124    pop         ebx
 00425125    ret
end;*}

//00425128
{*function sub_00425128(?:?; ?:?):?;
begin
 00425128    push        ebx
 00425129    push        esi
 0042512A    mov         ebx,edx
 0042512C    mov         esi,eax
 0042512E    lea         edx,[ebx+1]
 00425131    movzx       eax,word ptr [esi+ebx*2-2]
 00425136    cmp         ax,0D800
>0042513A    jb          00425142
 0042513C    cmp         ax,0DFFF
>00425140    jbe         00425146
 00425142    xor         eax,eax
>00425144    jmp         00425148
 00425146    mov         al,1
 00425148    test        al,al
>0042514A    je          0042516C
 0042514C    mov         eax,esi
 0042514E    call        @UStrToPWChar
 00425153    mov         edx,ebx
 00425155    add         edx,edx
 00425157    add         eax,edx
 00425159    sub         eax,2
 0042515C    call        00425084
 00425161    mov         edx,eax
 00425163    sar         edx,1
>00425165    jns         0042516A
 00425167    adc         edx,0
 0042516A    add         edx,ebx
 0042516C    mov         eax,edx
 0042516E    pop         esi
 0042516F    pop         ebx
 00425170    ret
end;*}

//00425174
{*function sub_00425174(?:string; ?:string):?;
begin
 00425174    push        ebx
 00425175    push        esi
 00425176    mov         ebx,edx
 00425178    mov         esi,eax
 0042517A    cmp         ebx,1
>0042517D    jl          00425191
 0042517F    mov         eax,esi
 00425181    test        eax,eax
>00425183    je          0042518A
 00425185    sub         eax,4
 00425188    mov         eax,dword ptr [eax]
 0042518A    cmp         eax,ebx
 0042518C    setge       al
>0042518F    jmp         00425193
 00425191    xor         eax,eax
 00425193    test        al,al
>00425195    je          004251A2
 00425197    cmp         word ptr [esi+ebx*2-2],5C
 0042519D    sete        al
>004251A0    jmp         004251A4
 004251A2    xor         eax,eax
 004251A4    test        al,al
>004251A6    je          004251B9
 004251A8    mov         edx,ebx
 004251AA    mov         eax,esi
 004251AC    call        00424DC0
 004251B1    test        al,al
 004251B3    sete        al
 004251B6    pop         esi
 004251B7    pop         ebx
 004251B8    ret
 004251B9    xor         eax,eax
 004251BB    pop         esi
 004251BC    pop         ebx
 004251BD    ret
end;*}

//004251C0
{*function sub_004251C0(?:UString; ?:string; ?:?):?;
begin
 004251C0    push        ebx
 004251C1    push        esi
 004251C2    push        edi
 004251C3    push        ecx
 004251C4    mov         esi,ecx
 004251C6    mov         dword ptr [esp],edx
 004251C9    mov         edi,eax
 004251CB    xor         ebx,ebx
 004251CD    test        esi,esi
>004251CF    jle         00425207
 004251D1    mov         eax,esp
 004251D3    call        0042650C
 004251D8    cmp         esi,eax
>004251DA    jg          00425207
 004251DC    mov         edx,esi
 004251DE    mov         eax,dword ptr [esp]
 004251E1    call        00424DC0
 004251E6    test        al,al
>004251E8    jne         00425207
 004251EA    mov         edx,esi
 004251EC    dec         edx
 004251ED    mov         eax,esp
 004251EF    call        TStringHelper.GetChars
 004251F4    push        eax
 004251F5    mov         eax,edi
 004251F7    call        @UStrToPWChar
 004251FC    pop         edx
 004251FD    call        0041F38C
 00425202    test        eax,eax
 00425204    setne       bl
 00425207    mov         eax,ebx
 00425209    pop         edx
 0042520A    pop         edi
 0042520B    pop         esi
 0042520C    pop         ebx
 0042520D    ret
end;*}

//00425210
{*procedure sub_00425210(?:?; ?:?);
begin
 00425210    push        ebx
 00425211    push        esi
 00425212    mov         ebx,edx
 00425214    mov         esi,eax
 00425216    mov         eax,ebx
 00425218    mov         edx,esi
 0042521A    call        @UStrAsg
 0042521F    mov         esi,dword ptr [ebx]
 00425221    test        esi,esi
>00425223    je          0042522A
 00425225    sub         esi,4
 00425228    mov         esi,dword ptr [esi]
 0042522A    mov         eax,dword ptr [ebx]
 0042522C    mov         edx,esi
 0042522E    call        00425174
 00425233    test        al,al
>00425235    je          0042524C
 00425237    mov         eax,dword ptr [ebx]
 00425239    test        eax,eax
>0042523B    je          00425242
 0042523D    sub         eax,4
 00425240    mov         eax,dword ptr [eax]
 00425242    mov         edx,eax
 00425244    dec         edx
 00425245    mov         eax,ebx
 00425247    call        @UStrSetLength
 0042524C    pop         esi
 0042524D    pop         ebx
 0042524E    ret
end;*}

//00425250
function AnsiPos(const Substr:UnicodeString; const S:UnicodeString):Integer;
begin
{*
 00425250    push        ebx
 00425251    push        esi
 00425252    push        edi
 00425253    push        ebp
 00425254    push        ecx
 00425255    mov         edi,edx
 00425257    mov         ebp,eax
 00425259    xor         eax,eax
 0042525B    mov         dword ptr [esp],eax
 0042525E    mov         ebx,edi
 00425260    test        ebx,ebx
>00425262    je          00425269
 00425264    sub         ebx,4
 00425267    mov         ebx,dword ptr [ebx]
 00425269    mov         esi,ebp
 0042526B    test        esi,esi
>0042526D    je          00425274
 0042526F    sub         esi,4
 00425272    mov         esi,dword ptr [esi]
 00425274    push        esi
 00425275    mov         eax,ebp
 00425277    call        @UStrToPWChar
 0042527C    push        eax
 0042527D    mov         eax,edi
 0042527F    call        @UStrToPWChar
 00425284    mov         ecx,ebx
 00425286    pop         edx
 00425287    call        StrPosLen
 0042528C    mov         ebx,eax
 0042528E    test        ebx,ebx
>00425290    je          004252A6
 00425292    mov         eax,edi
 00425294    call        @UStrToPWChar
 00425299    sub         ebx,eax
 0042529B    sar         ebx,1
>0042529D    jns         004252A2
 0042529F    adc         ebx,0
 004252A2    inc         ebx
 004252A3    mov         dword ptr [esp],ebx
 004252A6    mov         eax,dword ptr [esp]
 004252A9    pop         edx
 004252AA    pop         ebp
 004252AB    pop         edi
 004252AC    pop         esi
 004252AD    pop         ebx
 004252AE    ret
*}
end;

//004252B0
function AnsiLowerCaseFileName(const S:UnicodeString):UnicodeString;
begin
{*
 004252B0    push        ebx
 004252B1    push        esi
 004252B2    mov         esi,edx
 004252B4    mov         ebx,eax
 004252B6    mov         edx,esi
 004252B8    mov         eax,ebx
 004252BA    call        AnsiLowerCase
 004252BF    pop         esi
 004252C0    pop         ebx
 004252C1    ret
*}
end;

//004252C4
function AnsiStrPos(Str:PWideChar; SubStr:PWideChar):PWideChar;
begin
{*
 004252C4    call        0041F3D8
 004252C9    ret
*}
end;

//004252CC
function AnsiStrRScan(Str:PWideChar; Chr:WideChar):PWideChar;
begin
{*
 004252CC    call        0041F3A8
 004252D1    ret
*}
end;

//004252D4
{*function sub_004252D4:?;
begin
 004252D4    call        0041F38C
 004252D9    ret
end;*}

//004252DC
{*procedure sub_004252DC(?:?);
begin
 004252DC    push        ebp
 004252DD    mov         ebp,esp
 004252DF    push        ecx
 004252E0    push        ebx
 004252E1    push        esi
 004252E2    push        edi
 004252E3    mov         edi,dword ptr [ebp+8]
 004252E6    add         edi,0FFFFFFEC
 004252E9    push        edi
 004252EA    push        0
 004252EC    call        kernel32.GetCPInfo
 004252F1    xor         esi,esi
>004252F3    jmp         0042531F
 004252F5    movzx       eax,byte ptr [edi+esi+6]
 004252FA    movzx       ebx,byte ptr [edi+esi+7]
 004252FF    sub         bl,al
>00425301    jb          0042531C
 00425303    inc         ebx
 00425304    mov         byte ptr [ebp-1],al
 00425307    movzx       eax,byte ptr [ebp-1]
 0042530B    movzx       eax,al
 0042530E    bts         dword ptr ds:[79EE20],eax;gvar_0079EE20
 00425315    inc         byte ptr [ebp-1]
 00425318    dec         bl
>0042531A    jne         00425307
 0042531C    add         esi,2
 0042531F    cmp         esi,0C
>00425322    jge         0042532F
 00425324    movzx       eax,byte ptr [edi+esi+6]
 00425329    or          al,byte ptr [edi+esi+7]
>0042532D    jne         004252F5
 0042532F    pop         edi
 00425330    pop         esi
 00425331    pop         ebx
 00425332    pop         ecx
 00425333    pop         ebp
 00425334    ret
end;*}

//00425338
procedure sub_00425338;
begin
{*
 00425338    push        ebp
 00425339    mov         ebp,esp
 0042533B    add         esp,0FFFFFFEC
 0042533E    push        ebx
 0042533F    push        esi
 00425340    push        edi
 00425341    mov         ebx,7C7CB8;gvar_007C7CB8:Cardinal
 00425346    mov         dword ptr [ebx],409
 0042534C    mov         dword ptr [ebx+4],9
 00425353    mov         dword ptr [ebx+8],1
 0042535A    call        kernel32.GetThreadLocale
 0042535F    test        eax,eax
>00425361    je          00425365
 00425363    mov         dword ptr [ebx],eax
 00425365    test        ax,ax
>00425368    je          00425380
 0042536A    mov         dx,3FF
 0042536E    and         dx,ax
 00425371    movzx       edx,dx
 00425374    mov         dword ptr [ebx+4],edx
 00425377    movzx       eax,ax
 0042537A    shr         eax,0A
 0042537D    mov         dword ptr [ebx+8],eax
 00425380    mov         esi,4253AC
 00425385    mov         edi,79EE20;gvar_0079EE20
 0042538A    mov         ecx,8
 0042538F    rep movs    dword ptr [edi],dword ptr [esi]
 00425391    mov         byte ptr [ebx+0D],1
 00425395    mov         al,1
 00425397    mov         byte ptr [ebx+0C],al
 0042539A    test        al,al
>0042539C    je          004253A5
 0042539E    push        ebp
 0042539F    call        004252DC
 004253A4    pop         ecx
 004253A5    pop         edi
 004253A6    pop         esi
 004253A7    pop         ebx
 004253A8    mov         esp,ebp
 004253AA    pop         ebp
 004253AB    ret
*}
end;

//004253CC
procedure sub_004253CC;
begin
{*
 004253CC    push        ebp
 004253CD    mov         ebp,esp
 004253CF    mov         ecx,19
 004253D4    push        0
 004253D6    push        0
 004253D8    dec         ecx
>004253D9    jne         004253D4
 004253DB    push        ecx
 004253DC    xor         eax,eax
 004253DE    push        ebp
 004253DF    push        425434
 004253E4    push        dword ptr fs:[eax]
 004253E7    mov         dword ptr fs:[eax],esp
 004253EA    call        00425338
 004253EF    lea         edx,[ebp-0CC]
 004253F5    mov         eax,[007C7CB8];gvar_007C7CB8:Cardinal
 004253FA    call        00422DB0
 004253FF    lea         edx,[ebp-0CC]
 00425405    mov         eax,7C7CC8;gvar_007C7CC8:Pointer
 0042540A    mov         ecx,dword ptr ds:[4199AC];TFormatSettings
 00425410    call        @CopyRecord
 00425415    xor         eax,eax
 00425417    pop         edx
 00425418    pop         ecx
 00425419    pop         ecx
 0042541A    mov         dword ptr fs:[eax],edx
 0042541D    push        42543B
 00425422    lea         eax,[ebp-0CC]
 00425428    mov         edx,dword ptr ds:[4199AC];TFormatSettings
 0042542E    call        @FinalizeRecord
 00425433    ret
>00425434    jmp         @HandleFinally
>00425439    jmp         00425422
 0042543B    mov         esp,ebp
 0042543D    pop         ebp
 0042543E    ret
*}
end;

//00425440
{*procedure sub_00425440(?:?; ?:UString; ?:UString; ?:?; ?:?);
begin
 00425440    push        ebp
 00425441    mov         ebp,esp
 00425443    push        ecx
 00425444    mov         ecx,4
 00425449    push        0
 0042544B    push        0
 0042544D    dec         ecx
>0042544E    jne         00425449
 00425450    push        ecx
 00425451    xchg        ecx,dword ptr [ebp-4]
 00425454    push        ebx
 00425455    push        esi
 00425456    push        edi
 00425457    mov         dword ptr [ebp-18],ecx
 0042545A    mov         dword ptr [ebp-14],edx
 0042545D    mov         dword ptr [ebp-10],eax
 00425460    mov         ebx,dword ptr [ebp+8]
 00425463    xor         eax,eax
 00425465    push        ebp
 00425466    push        425633
 0042546B    push        dword ptr fs:[eax]
 0042546E    mov         dword ptr fs:[eax],esp
 00425471    test        byte ptr [ebp+0C],2
>00425475    je          0042548F
 00425477    lea         edx,[ebp-4]
 0042547A    mov         eax,dword ptr [ebp-10]
 0042547D    call        0041D7DC
 00425482    lea         edx,[ebp-8]
 00425485    mov         eax,dword ptr [ebp-14]
 00425488    call        0041D7DC
>0042548D    jmp         004254A5
 0042548F    lea         eax,[ebp-4]
 00425492    mov         edx,dword ptr [ebp-10]
 00425495    call        @UStrLAsg
 0042549A    lea         eax,[ebp-8]
 0042549D    mov         edx,dword ptr [ebp-14]
 004254A0    call        @UStrLAsg
 004254A5    lea         eax,[ebp-0C]
 004254A8    mov         edx,dword ptr [ebp-10]
 004254AB    call        @UStrLAsg
 004254B0    mov         eax,ebx
 004254B2    call        @UStrClr
 004254B7    lea         eax,[ebp-4]
 004254BA    call        0042650C
 004254BF    mov         esi,eax
 004254C1    lea         eax,[ebp-10]
 004254C4    call        0042650C
 004254C9    cmp         esi,eax
>004254CB    je          00425601
 004254D1    mov         esi,1
 004254D6    lea         eax,[ebp-14]
 004254D9    call        0042650C
 004254DE    mov         edi,eax
>004254E0    jmp         00425549
 004254E2    push        0
 004254E4    push        edi
 004254E5    push        1
 004254E7    mov         edx,esi
 004254E9    dec         edx
 004254EA    mov         ecx,dword ptr [ebp-14]
 004254ED    mov         eax,dword ptr [ebp-10]
 004254F0    call        00426518
 004254F5    test        eax,eax
>004254F7    jne         0042552E
 004254F9    mov         eax,ebx
 004254FB    mov         edx,dword ptr [ebp-18]
 004254FE    call        @UStrCat
 00425503    add         esi,edi
 00425505    test        byte ptr [ebp+0C],1
>00425509    jne         00425549
 0042550B    lea         eax,[ebp-20]
 0042550E    push        eax
 0042550F    mov         edx,esi
 00425511    dec         edx
 00425512    lea         eax,[ebp-10]
 00425515    mov         ecx,7FFFFFFF
 0042551A    call        00426870
 0042551F    mov         edx,dword ptr [ebp-20]
 00425522    mov         eax,ebx
 00425524    call        @UStrCat
>00425529    jmp         0042560B
 0042552E    lea         eax,[ebp-24]
 00425531    mov         edx,dword ptr [ebp-10]
 00425534    movzx       edx,word ptr [edx+esi*2-2]
 00425539    call        @UStrFromWChar
 0042553E    mov         edx,dword ptr [ebp-24]
 00425541    mov         eax,ebx
 00425543    call        @UStrCat
 00425548    inc         esi
 00425549    mov         eax,dword ptr [ebp-10]
 0042554C    call        @UStrLen
 00425551    cmp         esi,eax
>00425553    jle         004254E2
>00425555    jmp         0042560B
 0042555A    mov         edx,dword ptr [ebp-4]
 0042555D    mov         eax,dword ptr [ebp-8]
 00425560    call        AnsiPos
 00425565    mov         esi,eax
 00425567    test        esi,esi
>00425569    jne         0042557A
 0042556B    mov         eax,ebx
 0042556D    mov         edx,dword ptr [ebp-0C]
 00425570    call        @UStrCat
>00425575    jmp         0042560B
 0042557A    push        dword ptr [ebx]
 0042557C    lea         eax,[ebp-28]
 0042557F    push        eax
 00425580    mov         ecx,esi
 00425582    dec         ecx
 00425583    mov         edx,1
 00425588    mov         eax,dword ptr [ebp-0C]
 0042558B    call        @UStrCopy
 00425590    push        dword ptr [ebp-28]
 00425593    push        dword ptr [ebp-18]
 00425596    mov         eax,ebx
 00425598    mov         edx,3
 0042559D    call        @UStrCatN
 004255A2    mov         edi,dword ptr [ebp-14]
 004255A5    test        edi,edi
>004255A7    je          004255AE
 004255A9    sub         edi,4
 004255AC    mov         edi,dword ptr [edi]
 004255AE    lea         eax,[ebp-0C]
 004255B1    push        eax
 004255B2    lea         edx,[edi+esi]
 004255B5    mov         ecx,7FFFFFFF
 004255BA    mov         eax,dword ptr [ebp-0C]
 004255BD    call        @UStrCopy
 004255C2    test        byte ptr [ebp+0C],1
>004255C6    jne         004255D4
 004255C8    mov         eax,ebx
 004255CA    mov         edx,dword ptr [ebp-0C]
 004255CD    call        @UStrCat
>004255D2    jmp         0042560B
 004255D4    mov         eax,dword ptr [ebp-8]
 004255D7    mov         dword ptr [ebp-1C],eax
 004255DA    cmp         dword ptr [ebp-1C],0
>004255DE    je          004255EB
 004255E0    mov         eax,dword ptr [ebp-1C]
 004255E3    sub         eax,4
 004255E6    mov         eax,dword ptr [eax]
 004255E8    mov         dword ptr [ebp-1C],eax
 004255EB    lea         eax,[ebp-4]
 004255EE    push        eax
 004255EF    mov         edx,esi
 004255F1    add         edx,dword ptr [ebp-1C]
 004255F4    mov         ecx,7FFFFFFF
 004255F9    mov         eax,dword ptr [ebp-4]
 004255FC    call        @UStrCopy
 00425601    cmp         dword ptr [ebp-4],0
>00425605    jne         0042555A
 0042560B    xor         eax,eax
 0042560D    pop         edx
 0042560E    pop         ecx
 0042560F    pop         ecx
 00425610    mov         dword ptr fs:[eax],edx
 00425613    push        42563A
 00425618    lea         eax,[ebp-28]
 0042561B    mov         edx,3
 00425620    call        @UStrArrayClr
 00425625    lea         eax,[ebp-0C]
 00425628    mov         edx,3
 0042562D    call        @UStrArrayClr
 00425632    ret
>00425633    jmp         @HandleFinally
>00425638    jmp         00425618
 0042563A    pop         edi
 0042563B    pop         esi
 0042563C    pop         ebx
 0042563D    mov         esp,ebp
 0042563F    pop         ebp
 00425640    ret         8
end;*}

//00425834
procedure sub_00425834;
begin
{*
 00425834    push        esi
 00425835    push        ebx
 00425836    mov         esi,eax
 00425838    xor         eax,eax
 0042583A    push        esi
 0042583B    rol         eax,5
 0042583E    mov         bl,byte ptr [esi]
 00425840    test        bl,80
>00425843    jne         00425860
 00425845    cmp         bl,0
>00425848    je          0042585C
 0042584A    cmp         bl,41
>0042584D    jl          00425857
 0042584F    cmp         bl,5A
>00425852    jg          00425857
 00425854    or          bl,20
 00425857    xor         al,bl
 00425859    inc         esi
>0042585A    jmp         0042583B
 0042585C    pop         ecx
 0042585D    pop         ebx
 0042585E    pop         esi
 0042585F    ret
*}
end;

//0042586C
procedure sub_0042586C;
begin
{*
 0042586C    push        ebx
 0042586D    mov         ebx,dword ptr ds:[7C4C94];^gvar_0079E03C
 00425873    mov         ebx,dword ptr [ebx]
 00425875    test        ebx,ebx
>00425877    je          00425898
 00425879    cmp         dword ptr [ebx+18],0
>0042587D    je          00425892
 0042587F    mov         edx,dword ptr ds:[4256FC];TModuleInfo
 00425885    mov         eax,dword ptr [ebx+18]
 00425888    call        @Dispose
 0042588D    xor         eax,eax
 0042588F    mov         dword ptr [ebx+18],eax
 00425892    mov         ebx,dword ptr [ebx]
 00425894    test        ebx,ebx
>00425896    jne         00425879
 00425898    pop         ebx
 00425899    ret
*}
end;

//0042589C
{*procedure sub_0042589C(?:?);
begin
 0042589C    push        ebx
 0042589D    push        esi
 0042589E    push        edi
 0042589F    push        ebp
 004258A0    add         esp,0FFFFFFF0
 004258A3    mov         edx,dword ptr ds:[7C4C94];^gvar_0079E03C
 004258A9    mov         edx,dword ptr [edx]
 004258AB    test        edx,edx
>004258AD    je          004258BC
 004258AF    mov         ecx,dword ptr [edx+4]
 004258B2    cmp         ecx,eax
>004258B4    je          004258BC
 004258B6    mov         edx,dword ptr [edx]
 004258B8    test        edx,edx
>004258BA    jne         004258AF
 004258BC    mov         dword ptr [esp],edx
 004258BF    cmp         dword ptr [esp],0
>004258C3    je          004259A1
 004258C9    mov         eax,dword ptr [esp]
 004258CC    cmp         dword ptr [eax+18],0
>004258D0    je          004259A1
 004258D6    mov         eax,dword ptr [esp]
 004258D9    mov         ebx,dword ptr [eax+18]
 004258DC    cmp         byte ptr [ebx],0
>004258DF    je          004258EB
 004258E1    mov         dword ptr [esp+8],7C7F00
>004258E9    jmp         004258F3
 004258EB    mov         dword ptr [esp+8],7C8EF4
 004258F3    mov         eax,dword ptr [ebx+4]
 004258F6    mov         dword ptr [esp+0C],eax
 004258FA    mov         eax,dword ptr [esp+0C]
 004258FE    test        eax,eax
>00425900    je          00425907
 00425902    sub         eax,4
 00425905    mov         eax,dword ptr [eax]
 00425907    mov         ebp,eax
 00425909    dec         ebp
 0042590A    test        ebp,ebp
>0042590C    jl          0042598C
 0042590E    inc         ebp
 0042590F    xor         esi,esi
 00425911    lea         edi,[esi+esi*2]
 00425914    mov         eax,dword ptr [ebx+4]
 00425917    mov         eax,dword ptr [eax+edi*8+4]
 0042591B    test        eax,eax
>0042591D    je          0042592A
 0042591F    mov         edx,dword ptr [ebx+4]
 00425922    push        dword ptr [edx+edi*8]
 00425925    pop         edx
 00425926    mov         dword ptr [eax],edx
>00425928    jmp         00425973
 0042592A    mov         eax,dword ptr [ebx+4]
 0042592D    cmp         dword ptr [eax+edi*8+0C],0
>00425932    je          00425973
 00425934    mov         eax,dword ptr [ebx+4]
 00425937    mov         eax,dword ptr [eax+edi*8+0C]
 0042593B    call        00425834
 00425940    mov         ecx,3FD
 00425945    xor         edx,edx
 00425947    div         eax,ecx
 00425949    mov         dword ptr [esp+4],edx
 0042594D    mov         eax,dword ptr [esp+8]
 00425951    mov         edx,dword ptr [esp+4]
 00425955    mov         eax,dword ptr [eax+edx*4]
 00425958    mov         edx,dword ptr [ebx+4]
 0042595B    lea         edx,[edx+edi*8]
 0042595E    cmp         eax,edx
>00425960    jne         00425973
 00425962    mov         eax,dword ptr [ebx+4]
 00425965    mov         eax,dword ptr [eax+edi*8]
 00425968    mov         edx,dword ptr [esp+8]
 0042596C    mov         ecx,dword ptr [esp+4]
 00425970    mov         dword ptr [edx+ecx*4],eax
 00425973    mov         eax,dword ptr [ebx+4]
 00425976    mov         eax,dword ptr [eax+edi*8]
 00425979    test        eax,eax
>0042597B    je          00425988
 0042597D    mov         edx,dword ptr [ebx+4]
 00425980    push        dword ptr [edx+edi*8+4]
 00425984    pop         edx
 00425985    mov         dword ptr [eax+4],edx
 00425988    inc         esi
 00425989    dec         ebp
>0042598A    jne         00425911
 0042598C    mov         edx,dword ptr ds:[4256FC];TModuleInfo
 00425992    mov         eax,ebx
 00425994    call        @Dispose
 00425999    mov         eax,dword ptr [esp]
 0042599C    xor         edx,edx
 0042599E    mov         dword ptr [eax+18],edx
 004259A1    add         esp,10
 004259A4    pop         ebp
 004259A5    pop         edi
 004259A6    pop         esi
 004259A7    pop         ebx
 004259A8    ret
end;*}

//004259AC
procedure kernel32.Sleep; stdcall;
begin
{*
 004259AC    jmp         dword ptr ds:[9053A8]
*}
end;

//004259B4
function GetModuleName(Module:Windows.HMODULE):UnicodeString;
begin
{*
 004259B4    push        ebx
 004259B5    push        esi
 004259B6    add         esp,0FFFFFDF4
 004259BC    mov         esi,edx
 004259BE    mov         ebx,eax
 004259C0    push        105
 004259C5    lea         eax,[esp+4]
 004259C9    push        eax
 004259CA    push        ebx
 004259CB    call        kernel32.GetModuleFileNameW
 004259D0    mov         ecx,eax
 004259D2    mov         edx,esp
 004259D4    mov         eax,esi
 004259D6    call        @UStrFromPWCharLen
 004259DB    add         esp,20C
 004259E1    pop         esi
 004259E2    pop         ebx
 004259E3    ret
*}
end;

//004259E4
procedure RaiseLastOSError;
begin
{*
 004259E4    call        kernel32.GetLastError
 004259E9    xor         edx,edx
 004259EB    call        004259F4
 004259F0    ret
*}
end;

//004259F4
{*procedure sub_004259F4(?:?; ?:?);
begin
 004259F4    push        ebp
 004259F5    mov         ebp,esp
 004259F7    add         esp,0FFFFFFE4
 004259FA    push        ebx
 004259FB    push        esi
 004259FC    xor         ecx,ecx
 004259FE    mov         dword ptr [ebp-1C],ecx
 00425A01    mov         esi,edx
 00425A03    mov         ebx,eax
 00425A05    xor         eax,eax
 00425A07    push        ebp
 00425A08    push        425A8B
 00425A0D    push        dword ptr fs:[eax]
 00425A10    mov         dword ptr fs:[eax],esp
 00425A13    test        ebx,ebx
>00425A15    je          00425A57
 00425A17    mov         dword ptr [ebp-18],ebx
 00425A1A    mov         byte ptr [ebp-14],0
 00425A1E    lea         ecx,[ebp-1C]
 00425A21    xor         edx,edx
 00425A23    mov         eax,ebx
 00425A25    call        00422CB4
 00425A2A    mov         eax,dword ptr [ebp-1C]
 00425A2D    mov         dword ptr [ebp-10],eax
 00425A30    mov         byte ptr [ebp-0C],11
 00425A34    mov         dword ptr [ebp-8],esi
 00425A37    mov         byte ptr [ebp-4],11
 00425A3B    lea         eax,[ebp-18]
 00425A3E    push        eax
 00425A3F    push        2
 00425A41    mov         ecx,dword ptr ds:[7C4AB0];^SResString64:TResStringRec
 00425A47    mov         dl,1
 00425A49    mov         eax,[0041933C];EOSError
 00425A4E    call        Exception.CreateResFmt;EOSError.Create
 00425A53    mov         edx,eax
>00425A55    jmp         00425A6B
 00425A57    mov         ecx,dword ptr ds:[7C4D78];^SResString65:TResStringRec
 00425A5D    mov         dl,1
 00425A5F    mov         eax,[0041933C];EOSError
 00425A64    call        Exception.CreateRes;EOSError.Create
 00425A69    mov         edx,eax
 00425A6B    mov         dword ptr [edx+18],ebx;EOSError...ErrorCode:Cardinal
 00425A6E    mov         eax,edx
 00425A70    call        @RaiseExcept
 00425A75    xor         eax,eax
 00425A77    pop         edx
 00425A78    pop         ecx
 00425A79    pop         ecx
 00425A7A    mov         dword ptr fs:[eax],edx
 00425A7D    push        425A92
 00425A82    lea         eax,[ebp-1C]
 00425A85    call        @UStrClr
 00425A8A    ret
>00425A8B    jmp         @HandleFinally
>00425A90    jmp         00425A82
 00425A92    pop         esi
 00425A93    pop         ebx
 00425A94    mov         esp,ebp
 00425A96    pop         ebp
 00425A97    ret
end;*}

//00425A98
function Win32Check(RetVal:Windows.BOOL):BOOL;
begin
{*
 00425A98    push        ebx
 00425A99    mov         ebx,eax
 00425A9B    test        ebx,ebx
>00425A9D    jne         00425AA4
 00425A9F    call        RaiseLastOSError
 00425AA4    mov         eax,ebx
 00425AA6    pop         ebx
 00425AA7    ret
*}
end;

//00425AA8
{*function sub_00425AA8:?;
begin
 00425AA8    push        ebx
 00425AA9    push        esi
 00425AAA    mov         bl,1
 00425AAC    mov         esi,dword ptr ds:[79F538];0x0 gvar_0079F538
>00425AB2    jmp         00425ABB
 00425AB4    call        dword ptr [esi+4]
 00425AB7    mov         ebx,eax
 00425AB9    mov         esi,dword ptr [esi]
 00425ABB    test        bl,bl
>00425ABD    je          00425AC3
 00425ABF    test        esi,esi
>00425AC1    jne         00425AB4
 00425AC3    mov         eax,ebx
 00425AC5    pop         esi
 00425AC6    pop         ebx
 00425AC7    ret
end;*}

//00425AC8
procedure sub_00425AC8;
begin
{*
 00425AC8    push        ebx
 00425AC9    push        esi
 00425ACA    mov         esi,79F538;gvar_0079F538
>00425ACF    jmp         00425ADE
 00425AD1    mov         ebx,dword ptr [esi]
 00425AD3    mov         eax,dword ptr [ebx]
 00425AD5    mov         dword ptr [esi],eax
 00425AD7    mov         eax,ebx
 00425AD9    call        @FreeMem
 00425ADE    cmp         dword ptr [esi],0
>00425AE1    jne         00425AD1
 00425AE3    pop         esi
 00425AE4    pop         ebx
 00425AE5    ret
*}
end;

//00425AE8
procedure sub_00425AE8;
begin
{*
 00425AE8    push        ebx
 00425AE9    push        425B20;'kernel32.dll'
 00425AEE    call        kernel32.GetModuleHandleW
 00425AF3    mov         ebx,eax
 00425AF5    test        ebx,ebx
>00425AF7    je          00425B09
 00425AF9    push        425B3C;'GetDiskFreeSpaceExW'
 00425AFE    push        ebx
 00425AFF    call        GetProcAddress
 00425B04    mov         [0079EE44],eax;gvar_0079EE44:Pointer
 00425B09    cmp         dword ptr ds:[79EE44],0;gvar_0079EE44:Pointer
>00425B10    jne         00425B1C
 00425B12    mov         eax,41F0FC;sub_0041F0FC
 00425B17    mov         [0079EE44],eax;gvar_0079EE44:Pointer
 00425B1C    pop         ebx
 00425B1D    ret
*}
end;

//00425B64
destructor TThreadLocalCounter.Destroy();
begin
{*
 00425B64    push        ebx
 00425B65    push        esi
 00425B66    push        edi
 00425B67    push        ebp
 00425B68    push        ecx
 00425B69    call        @BeforeDestruction
 00425B6E    mov         byte ptr [esp],dl
 00425B71    mov         ebp,eax
 00425B73    xor         edi,edi
 00425B75    mov         ebx,dword ptr [ebp+edi*4+4]
 00425B79    xor         eax,eax
 00425B7B    mov         dword ptr [ebp+edi*4+4],eax
 00425B7F    test        ebx,ebx
>00425B81    je          00425B92
 00425B83    mov         esi,ebx
 00425B85    mov         ebx,dword ptr [ebx]
 00425B87    mov         eax,esi
 00425B89    call        @FreeMem
 00425B8E    test        ebx,ebx
>00425B90    jne         00425B83
 00425B92    inc         edi
 00425B93    cmp         edi,10
>00425B96    jne         00425B75
 00425B98    movzx       edx,byte ptr [esp]
 00425B9C    and         dl,0FC
 00425B9F    mov         eax,ebp
 00425BA1    call        TObject.Destroy
 00425BA6    cmp         byte ptr [esp],0
>00425BAA    jle         00425BB3
 00425BAC    mov         eax,ebp
 00425BAE    call        @ClassDestroy
 00425BB3    pop         edx
 00425BB4    pop         ebp
 00425BB5    pop         edi
 00425BB6    pop         esi
 00425BB7    pop         ebx
 00425BB8    ret
*}
end;

//00425BBC
{*function sub_00425BBC:?;
begin
 00425BBC    push        ebp
 00425BBD    mov         ebp,esp
 00425BBF    push        ecx
 00425BC0    call        kernel32.GetCurrentThreadId
 00425BC5    mov         word ptr [ebp-2],ax
 00425BC9    movzx       eax,byte ptr [ebp-2]
 00425BCD    xor         al,byte ptr [ebp-1]
 00425BD0    and         al,0F
 00425BD2    pop         ecx
 00425BD3    pop         ebp
 00425BD4    ret
end;*}

//00425BD8
procedure TThreadLocalCounter.Open(var Thread:PThreadInfo);
begin
{*
 00425BD8    push        ebx
 00425BD9    push        esi
 00425BDA    push        edi
 00425BDB    push        ebp
 00425BDC    mov         ebp,edx
 00425BDE    mov         esi,eax
 00425BE0    mov         eax,esi
 00425BE2    call        00425BBC
 00425BE7    mov         ebx,eax
 00425BE9    call        kernel32.GetCurrentThreadId
 00425BEE    mov         edi,eax
 00425BF0    movzx       eax,bl
 00425BF3    mov         eax,dword ptr [esi+eax*4+4]
>00425BF7    jmp         00425BFB
 00425BF9    mov         eax,dword ptr [eax]
 00425BFB    test        eax,eax
>00425BFD    je          00425C04
 00425BFF    cmp         edi,dword ptr [eax+4]
>00425C02    jne         00425BF9
 00425C04    test        eax,eax
>00425C06    jne         00425C35
 00425C08    mov         eax,esi
 00425C0A    call        00425C50
 00425C0F    test        eax,eax
>00425C11    jne         00425C35
 00425C13    mov         eax,10
 00425C18    call        AllocMem
 00425C1D    mov         dword ptr [eax+4],edi
 00425C20    mov         dword ptr [eax+8],7FFFFFFF
 00425C27    mov         dword ptr [eax],eax
 00425C29    movzx       edx,bl
 00425C2C    mov         ecx,eax
 00425C2E    lock xchg   ecx,dword ptr [esi+edx*4+4]
 00425C33    mov         dword ptr [eax],ecx
 00425C35    mov         dword ptr [ebp],eax
 00425C38    pop         ebp
 00425C39    pop         edi
 00425C3A    pop         esi
 00425C3B    pop         ebx
 00425C3C    ret
*}
end;

//00425C40
procedure TThreadLocalCounter.Delete(var Thread:PThreadInfo);
begin
{*
 00425C40    mov         eax,dword ptr [edx]
 00425C42    xor         ecx,ecx
 00425C44    mov         dword ptr [eax+4],ecx
 00425C47    mov         eax,dword ptr [edx]
 00425C49    xor         edx,edx
 00425C4B    mov         dword ptr [eax+8],edx
 00425C4E    ret
*}
end;

//00425C50
{*function sub_00425C50(?:TThreadLocalCounter):?;
begin
 00425C50    push        ebx
 00425C51    push        esi
 00425C52    mov         ebx,eax
 00425C54    mov         eax,ebx
 00425C56    call        00425BBC
 00425C5B    movzx       eax,al
 00425C5E    mov         ebx,dword ptr [ebx+eax*4+4]
 00425C62    test        ebx,ebx
>00425C64    je          00425C87
 00425C66    mov         esi,7FFFFFFF
 00425C6B    lock xchg   esi,dword ptr [ebx+8]
 00425C6F    cmp         esi,7FFFFFFF
>00425C75    je          00425C81
 00425C77    call        kernel32.GetCurrentThreadId
 00425C7C    mov         dword ptr [ebx+4],eax
>00425C7F    jmp         00425C87
 00425C81    mov         ebx,dword ptr [ebx]
 00425C83    test        ebx,ebx
>00425C85    jne         00425C66
 00425C87    mov         eax,ebx
 00425C89    pop         esi
 00425C8A    pop         ebx
 00425C8B    ret
end;*}

//00425C8C
constructor TMultiReadExclusiveWriteSynchronizer.Create;
begin
{*
 00425C8C    push        ebx
 00425C8D    push        esi
 00425C8E    test        dl,dl
>00425C90    je          00425C9A
 00425C92    add         esp,0FFFFFFF0
 00425C95    call        @ClassCreate
 00425C9A    mov         ebx,edx
 00425C9C    mov         esi,eax
 00425C9E    xor         edx,edx
 00425CA0    mov         eax,esi
 00425CA2    call        TObject.Create
 00425CA7    mov         dword ptr [esi+0C],0FFFF;TMultiReadExclusiveWriteSynchronizer.FSentinel:Integer
 00425CAE    push        0
 00425CB0    push        0FF
 00425CB2    push        0FF
 00425CB4    push        0
 00425CB6    call        kernel32.CreateEventW
 00425CBB    mov         dword ptr [esi+10],eax;TMultiReadExclusiveWriteSynchronizer.FReadSignal:NativeUInt
 00425CBE    push        0
 00425CC0    push        0
 00425CC2    push        0
 00425CC4    push        0
 00425CC6    call        kernel32.CreateEventW
 00425CCB    mov         dword ptr [esi+14],eax;TMultiReadExclusiveWriteSynchronizer.FWriteSignal:NativeUInt
 00425CCE    mov         dword ptr [esi+18],0FFFFFFFF;TMultiReadExclusiveWriteSynchronizer.FWaitRecycle:Cardinal
 00425CD5    mov         dl,1
 00425CD7    mov         eax,[00419E60];TThreadLocalCounter
 00425CDC    call        TObject.Create;TThreadLocalCounter.Create
 00425CE1    mov         dword ptr [esi+20],eax;TMultiReadExclusiveWriteSynchronizer.tls:TThreadLocalCounter
 00425CE4    mov         eax,esi
 00425CE6    test        bl,bl
>00425CE8    je          00425CF9
 00425CEA    call        @AfterConstruction
 00425CEF    pop         dword ptr fs:[0]
 00425CF6    add         esp,0C
 00425CF9    mov         eax,esi
 00425CFB    pop         esi
 00425CFC    pop         ebx
 00425CFD    ret
*}
end;

//00425D00
destructor TMultiReadExclusiveWriteSynchronizer.Destroy();
begin
{*
 00425D00    push        ebx
 00425D01    push        esi
 00425D02    call        @BeforeDestruction
 00425D07    mov         ebx,edx
 00425D09    mov         esi,eax
 00425D0B    mov         eax,esi
 00425D0D    call        TMultiReadExclusiveWriteSynchronizer.BeginWrite
 00425D12    mov         dl,0FC
 00425D14    and         dl,bl
 00425D16    mov         eax,esi
 00425D18    call        TObject.Destroy
 00425D1D    mov         eax,dword ptr [esi+10];TMultiReadExclusiveWriteSynchronizer.FReadSignal:NativeUInt
 00425D20    push        eax
 00425D21    call        kernel32.CloseHandle
 00425D26    mov         eax,dword ptr [esi+14];TMultiReadExclusiveWriteSynchronizer.FWriteSignal:NativeUInt
 00425D29    push        eax
 00425D2A    call        kernel32.CloseHandle
 00425D2F    mov         eax,dword ptr [esi+20];TMultiReadExclusiveWriteSynchronizer.tls:TThreadLocalCounter
 00425D32    call        TObject.Free
 00425D37    test        bl,bl
>00425D39    jle         00425D42
 00425D3B    mov         eax,esi
 00425D3D    call        @ClassDestroy
 00425D42    pop         esi
 00425D43    pop         ebx
 00425D44    ret
*}
end;

//00425D48
{*function sub_00425D48(?:TMultiReadExclusiveWriteSynchronizer):?;
begin
 00425D48    mov         eax,dword ptr [eax+10]
 00425D4B    push        eax
 00425D4C    call        kernel32.ResetEvent
 00425D51    ret
end;*}

//00425D54
procedure sub_00425D54(?:TMultiReadExclusiveWriteSynchronizer);
begin
{*
 00425D54    mov         eax,dword ptr [eax+10]
 00425D57    push        eax
 00425D58    call        kernel32.SetEvent
 00425D5D    ret
*}
end;

//00425D60
procedure sub_00425D60(?:TMultiReadExclusiveWriteSynchronizer);
begin
{*
 00425D60    mov         eax,dword ptr [eax+14]
 00425D63    push        eax
 00425D64    call        kernel32.SetEvent
 00425D69    ret
*}
end;

//00425D6C
{*function sub_00425D6C(?:TMultiReadExclusiveWriteSynchronizer):?;
begin
 00425D6C    mov         edx,dword ptr [eax+18]
 00425D6F    push        edx
 00425D70    mov         eax,dword ptr [eax+10]
 00425D73    push        eax
 00425D74    call        kernel32.WaitForSingleObject
 00425D79    ret
end;*}

//00425D7C
procedure sub_00425D7C(?:TMultiReadExclusiveWriteSynchronizer);
begin
{*
 00425D7C    mov         edx,dword ptr [eax+18]
 00425D7F    push        edx
 00425D80    mov         eax,dword ptr [eax+14]
 00425D83    push        eax
 00425D84    call        kernel32.WaitForSingleObject
 00425D89    ret
*}
end;

//00425D8C
{*function sub_00425D8C(?:?; ?:?):?;
begin
 00425D8C    mov         ecx,edx
 00425D8E    lock xadd   dword ptr [eax],ecx
 00425D92    add         ecx,edx
 00425D94    sub         ecx,edx
 00425D96    mov         eax,ecx
 00425D98    ret
end;*}

//00425D9C
function TMultiReadExclusiveWriteSynchronizer.BeginWrite:Boolean;
begin
{*
 00425D9C    push        ebx
 00425D9D    push        esi
 00425D9E    push        edi
 00425D9F    push        ebp
 00425DA0    add         esp,0FFFFFFF8
 00425DA3    mov         ebp,eax
 00425DA5    mov         bl,1
 00425DA7    call        kernel32.GetCurrentThreadId
 00425DAC    mov         edi,eax
 00425DAE    cmp         edi,dword ptr [ebp+24];TMultiReadExclusiveWriteSynchronizer.FWriterID:Cardinal
>00425DB1    je          00425E48
 00425DB7    mov         eax,ebp
 00425DB9    call        00425D48
 00425DBE    mov         eax,dword ptr [ebp+28];TMultiReadExclusiveWriteSynchronizer.FRevisionLevel:Cardinal
 00425DC1    mov         dword ptr [esp+4],eax
 00425DC5    mov         edx,esp
 00425DC7    mov         eax,dword ptr [ebp+20];TMultiReadExclusiveWriteSynchronizer.tls:TThreadLocalCounter
 00425DCA    call        TThreadLocalCounter.Open
 00425DCF    mov         eax,dword ptr [esp]
 00425DD2    cmp         dword ptr [eax+0C],0
 00425DD6    seta        bl
 00425DD9    test        bl,bl
>00425DDB    je          00425E06
 00425DDD    mov         eax,1
 00425DE2    lock xadd   dword ptr [ebp+0C],eax
 00425DE7    add         eax,1
>00425DEA    jmp         00425E06
 00425DEC    lea         eax,[ebp+0C];TMultiReadExclusiveWriteSynchronizer.FSentinel:Integer
 00425DEF    mov         edx,0FFFF
 00425DF4    call        00425D8C
 00425DF9    mov         esi,eax
 00425DFB    test        esi,esi
>00425DFD    je          00425E06
 00425DFF    mov         eax,ebp
 00425E01    call        00425D7C
 00425E06    lea         eax,[ebp+0C];TMultiReadExclusiveWriteSynchronizer.FSentinel:Integer
 00425E09    mov         edx,0FFFF0001
 00425E0E    call        00425D8C
 00425E13    cmp         eax,0FFFF
>00425E18    jne         00425DEC
 00425E1A    mov         eax,ebp
 00425E1C    call        00425D48
 00425E21    test        bl,bl
>00425E23    je          00425E30
 00425E25    or          eax,0FFFFFFFF
 00425E28    lock xadd   dword ptr [ebp+0C],eax
 00425E2D    add         eax,0FFFFFFFF
 00425E30    mov         dword ptr [ebp+24],edi;TMultiReadExclusiveWriteSynchronizer.FWriterID:Cardinal
 00425E33    mov         eax,1
 00425E38    lock xadd   dword ptr [ebp+28],eax
 00425E3D    add         eax,1
 00425E40    dec         eax
 00425E41    cmp         eax,dword ptr [esp+4]
 00425E45    sete        bl
 00425E48    inc         dword ptr [ebp+1C];TMultiReadExclusiveWriteSynchronizer.FWriteRecursionCount:Cardinal
 00425E4B    mov         eax,ebx
 00425E4D    pop         ecx
 00425E4E    pop         edx
 00425E4F    pop         ebp
 00425E50    pop         edi
 00425E51    pop         esi
 00425E52    pop         ebx
 00425E53    ret
*}
end;

//00425E54
procedure TMultiReadExclusiveWriteSynchronizer.EndWrite;
begin
{*
 00425E54    push        ebx
 00425E55    push        ecx
 00425E56    mov         ebx,eax
 00425E58    mov         edx,esp
 00425E5A    mov         eax,dword ptr [ebx+20];TMultiReadExclusiveWriteSynchronizer.tls:TThreadLocalCounter
 00425E5D    call        TThreadLocalCounter.Open
 00425E62    dec         dword ptr [ebx+1C];TMultiReadExclusiveWriteSynchronizer.FWriteRecursionCount:Cardinal
 00425E65    cmp         dword ptr [ebx+1C],0;TMultiReadExclusiveWriteSynchronizer.FWriteRecursionCount:Cardinal
>00425E69    jne         00425E8D
 00425E6B    xor         eax,eax
 00425E6D    mov         dword ptr [ebx+24],eax;TMultiReadExclusiveWriteSynchronizer.FWriterID:Cardinal
 00425E70    mov         eax,0FFFF
 00425E75    lock xadd   dword ptr [ebx+0C],eax
 00425E7A    add         eax,0FFFF
 00425E7F    mov         eax,ebx
 00425E81    call        00425D60
 00425E86    mov         eax,ebx
 00425E88    call        00425D54
 00425E8D    mov         eax,dword ptr [esp]
 00425E90    cmp         dword ptr [eax+0C],0
>00425E94    jne         00425EA0
 00425E96    mov         edx,esp
 00425E98    mov         eax,dword ptr [ebx+20];TMultiReadExclusiveWriteSynchronizer.tls:TThreadLocalCounter
 00425E9B    call        TThreadLocalCounter.Delete
 00425EA0    pop         edx
 00425EA1    pop         ebx
 00425EA2    ret
*}
end;

//00425EA4
procedure TMultiReadExclusiveWriteSynchronizer.BeginRead;
begin
{*
 00425EA4    push        ebx
 00425EA5    push        esi
 00425EA6    push        edi
 00425EA7    push        ecx
 00425EA8    mov         edi,eax
 00425EAA    mov         edx,esp
 00425EAC    mov         eax,dword ptr [edi+20];TMultiReadExclusiveWriteSynchronizer.tls:TThreadLocalCounter
 00425EAF    call        TThreadLocalCounter.Open
 00425EB4    mov         eax,dword ptr [esp]
 00425EB7    inc         dword ptr [eax+0C]
 00425EBA    mov         eax,dword ptr [esp]
 00425EBD    cmp         dword ptr [eax+0C],1
 00425EC1    seta        bl
 00425EC4    call        kernel32.GetCurrentThreadId
 00425EC9    cmp         eax,dword ptr [edi+24];TMultiReadExclusiveWriteSynchronizer.FWriterID:Cardinal
>00425ECC    je          00425F14
 00425ECE    test        bl,bl
>00425ED0    jne         00425F14
 00425ED2    mov         eax,edi
 00425ED4    call        00425D6C
>00425ED9    jmp         00425F05
 00425EDB    mov         esi,1
 00425EE0    lock xadd   dword ptr [edi+0C],esi
 00425EE5    add         esi,1
 00425EE8    cmp         esi,0FFFF
>00425EEE    jne         00425EF7
 00425EF0    mov         eax,edi
 00425EF2    call        00425D60
 00425EF7    push        0
 00425EF9    call        kernel32.Sleep
 00425EFE    mov         eax,edi
 00425F00    call        00425D6C
 00425F05    or          eax,0FFFFFFFF
 00425F08    lock xadd   dword ptr [edi+0C],eax
 00425F0D    add         eax,0FFFFFFFF
 00425F10    test        eax,eax
>00425F12    jle         00425EDB
 00425F14    pop         edx
 00425F15    pop         edi
 00425F16    pop         esi
 00425F17    pop         ebx
 00425F18    ret
*}
end;

//00425F1C
procedure TMultiReadExclusiveWriteSynchronizer.EndRead;
begin
{*
 00425F1C    push        ebx
 00425F1D    push        ecx
 00425F1E    mov         ebx,eax
 00425F20    mov         edx,esp
 00425F22    mov         eax,dword ptr [ebx+20];TMultiReadExclusiveWriteSynchronizer.tls:TThreadLocalCounter
 00425F25    call        TThreadLocalCounter.Open
 00425F2A    mov         eax,dword ptr [esp]
 00425F2D    dec         dword ptr [eax+0C]
 00425F30    mov         eax,dword ptr [esp]
 00425F33    cmp         dword ptr [eax+0C],0
>00425F37    jne         00425F84
 00425F39    mov         edx,esp
 00425F3B    mov         eax,dword ptr [ebx+20];TMultiReadExclusiveWriteSynchronizer.tls:TThreadLocalCounter
 00425F3E    call        TThreadLocalCounter.Delete
 00425F43    call        kernel32.GetCurrentThreadId
 00425F48    cmp         eax,dword ptr [ebx+24];TMultiReadExclusiveWriteSynchronizer.FWriterID:Cardinal
>00425F4B    je          00425F84
 00425F4D    mov         ecx,1
 00425F52    lock xadd   dword ptr [ebx+0C],ecx
 00425F57    add         ecx,1
 00425F5A    cmp         ecx,0FFFF
>00425F60    jne         00425F6B
 00425F62    mov         eax,ebx
 00425F64    call        00425D60
>00425F69    jmp         00425F84
 00425F6B    test        ecx,ecx
>00425F6D    jg          00425F84
 00425F6F    mov         eax,ecx
 00425F71    mov         ecx,0FFFF
 00425F76    cdq
 00425F77    idiv        eax,ecx
 00425F79    test        edx,edx
>00425F7B    jne         00425F84
 00425F7D    mov         eax,ebx
 00425F7F    call        00425D60
 00425F84    pop         edx
 00425F85    pop         ebx
 00425F86    ret
*}
end;

//00425F88
{*procedure sub_00425F88(?:?);
begin
 00425F88    mov         edx,dword ptr [eax]
 00425F8A    xor         ecx,ecx
 00425F8C    mov         dword ptr [eax],ecx
 00425F8E    mov         eax,edx
 00425F90    call        TObject.Free
 00425F95    ret
end;*}

//00425F98
function Supports(const Instance:IInterface; const IID:TGUID; var Intf:void ):Boolean;
begin
{*
 00425F98    push        ebx
 00425F99    push        esi
 00425F9A    push        edi
 00425F9B    mov         edi,ecx
 00425F9D    mov         esi,edx
 00425F9F    mov         ebx,eax
 00425FA1    test        ebx,ebx
>00425FA3    je          00425FB0
 00425FA5    push        edi
 00425FA6    push        esi
 00425FA7    push        ebx
 00425FA8    mov         eax,dword ptr [ebx]
 00425FAA    call        dword ptr [eax]
 00425FAC    test        eax,eax
>00425FAE    je          00425FB4
 00425FB0    xor         eax,eax
>00425FB2    jmp         00425FB6
 00425FB4    mov         al,1
 00425FB6    pop         edi
 00425FB7    pop         esi
 00425FB8    pop         ebx
 00425FB9    ret
*}
end;

//00425FBC
function Supports(const Instance:TObject; const IID:TGUID; var Intf:void ):Boolean;
begin
{*
 00425FBC    push        ebp
 00425FBD    mov         ebp,esp
 00425FBF    push        0
 00425FC1    push        ebx
 00425FC2    push        esi
 00425FC3    push        edi
 00425FC4    mov         edi,ecx
 00425FC6    mov         esi,edx
 00425FC8    mov         ebx,eax
 00425FCA    xor         eax,eax
 00425FCC    push        ebp
 00425FCD    push        426033
 00425FD2    push        dword ptr fs:[eax]
 00425FD5    mov         dword ptr fs:[eax],esp
 00425FD8    test        ebx,ebx
>00425FDA    je          00426015
 00425FDC    lea         eax,[ebp-4]
 00425FDF    call        @IntfClear
 00425FE4    mov         ecx,eax
 00425FE6    mov         edx,426044
 00425FEB    mov         eax,ebx
 00425FED    call        TObject.GetInterface
 00425FF2    test        al,al
>00425FF4    je          00426006
 00425FF6    mov         ecx,edi
 00425FF8    mov         edx,esi
 00425FFA    mov         eax,dword ptr [ebp-4]
 00425FFD    call        Supports
 00426002    test        al,al
>00426004    jne         00426019
 00426006    mov         ecx,edi
 00426008    mov         edx,esi
 0042600A    mov         eax,ebx
 0042600C    call        TObject.GetInterface
 00426011    test        al,al
>00426013    jne         00426019
 00426015    xor         eax,eax
>00426017    jmp         0042601B
 00426019    mov         al,1
 0042601B    mov         ebx,eax
 0042601D    xor         eax,eax
 0042601F    pop         edx
 00426020    pop         ecx
 00426021    pop         ecx
 00426022    mov         dword ptr fs:[eax],edx
 00426025    push        42603A
 0042602A    lea         eax,[ebp-4]
 0042602D    call        @IntfClear
 00426032    ret
>00426033    jmp         @HandleFinally
>00426038    jmp         0042602A
 0042603A    mov         eax,ebx
 0042603C    pop         edi
 0042603D    pop         esi
 0042603E    pop         ebx
 0042603F    pop         ecx
 00426040    pop         ebp
 00426041    ret
*}
end;

//00426054
function Supports(const Instance:IInterface; const IID:TGUID):Boolean;
begin
{*
 00426054    push        ebp
 00426055    mov         ebp,esp
 00426057    push        0
 00426059    push        ebx
 0042605A    push        esi
 0042605B    mov         esi,edx
 0042605D    mov         ebx,eax
 0042605F    xor         eax,eax
 00426061    push        ebp
 00426062    push        426098
 00426067    push        dword ptr fs:[eax]
 0042606A    mov         dword ptr fs:[eax],esp
 0042606D    lea         eax,[ebp-4]
 00426070    call        @IntfClear
 00426075    mov         ecx,eax
 00426077    mov         edx,esi
 00426079    mov         eax,ebx
 0042607B    call        Supports
 00426080    mov         ebx,eax
 00426082    xor         eax,eax
 00426084    pop         edx
 00426085    pop         ecx
 00426086    pop         ecx
 00426087    mov         dword ptr fs:[eax],edx
 0042608A    push        42609F
 0042608F    lea         eax,[ebp-4]
 00426092    call        @IntfClear
 00426097    ret
>00426098    jmp         @HandleFinally
>0042609D    jmp         0042608F
 0042609F    mov         eax,ebx
 004260A1    pop         esi
 004260A2    pop         ebx
 004260A3    pop         ecx
 004260A4    pop         ebp
 004260A5    ret
*}
end;

//004260A8
function SafeLoadLibrary(const FileName:UnicodeString; ErrorMode:Windows.UINT):HMODULE;
begin
{*
 004260A8    push        ebp
 004260A9    mov         ebp,esp
 004260AB    add         esp,0FFFFFFF4
 004260AE    push        ebx
 004260AF    mov         ebx,eax
 004260B1    push        edx
 004260B2    call        kernel32.SetErrorMode
 004260B7    mov         dword ptr [ebp-0C],eax
 004260BA    xor         eax,eax
 004260BC    push        ebp
 004260BD    push        42611A
 004260C2    push        dword ptr fs:[eax]
 004260C5    mov         dword ptr fs:[eax],esp
 004260C8    fnstcw      word ptr [ebp-2]
 004260CB    xor         eax,eax
 004260CD    push        ebp
 004260CE    push        4260FC
 004260D3    push        dword ptr fs:[eax]
 004260D6    mov         dword ptr fs:[eax],esp
 004260D9    mov         eax,ebx
 004260DB    call        @UStrToPWChar
 004260E0    push        eax
 004260E1    call        kernel32.LoadLibraryW
 004260E6    mov         dword ptr [ebp-8],eax
 004260E9    xor         eax,eax
 004260EB    pop         edx
 004260EC    pop         ecx
 004260ED    pop         ecx
 004260EE    mov         dword ptr fs:[eax],edx
 004260F1    push        426103
 004260F6    fnclex
 004260F8    fldcw       word ptr [ebp-2]
 004260FB    ret
>004260FC    jmp         @HandleFinally
>00426101    jmp         004260F6
 00426103    xor         eax,eax
 00426105    pop         edx
 00426106    pop         ecx
 00426107    pop         ecx
 00426108    mov         dword ptr fs:[eax],edx
 0042610B    push        426121
 00426110    mov         eax,dword ptr [ebp-0C]
 00426113    push        eax
 00426114    call        kernel32.SetErrorMode
 00426119    ret
>0042611A    jmp         @HandleFinally
>0042611F    jmp         00426110
 00426121    mov         eax,dword ptr [ebp-8]
 00426124    pop         ebx
 00426125    mov         esp,ebp
 00426127    pop         ebp
 00426128    ret
*}
end;

//00426130
function TStringBuilder.Append(Value:string):TStringBuilder;
begin
{*
 00426130    push        ebx
 00426131    push        esi
 00426132    push        edi
 00426133    push        ebp
 00426134    mov         ebp,edx
 00426136    mov         ebx,eax
 00426138    mov         edi,ebp
 0042613A    mov         eax,edi
 0042613C    test        eax,eax
>0042613E    je          00426145
 00426140    sub         eax,4
 00426143    mov         eax,dword ptr [eax]
 00426145    mov         edx,dword ptr [ebx+8];TStringBuilder.FLength:Integer
 00426148    add         edx,eax
 0042614A    mov         eax,ebx
 0042614C    call        00426304
 00426151    mov         esi,edi
 00426153    test        esi,esi
>00426155    je          0042615C
 00426157    sub         esi,4
 0042615A    mov         esi,dword ptr [esi]
 0042615C    test        edi,edi
>0042615E    je          00426165
 00426160    sub         edi,4
 00426163    mov         edi,dword ptr [edi]
 00426165    mov         eax,ebp
 00426167    call        @UStrToPWChar
 0042616C    mov         edx,dword ptr [ebx+8];TStringBuilder.FLength:Integer
 0042616F    sub         edx,esi
 00426171    mov         ecx,dword ptr [ebx+4];TStringBuilder.FData:TArray<System.Char>
 00426174    lea         edx,[ecx+edx*2]
 00426177    mov         ecx,edi
 00426179    add         ecx,ecx
 0042617B    call        Move
 00426180    mov         eax,ebx
 00426182    pop         ebp
 00426183    pop         edi
 00426184    pop         esi
 00426185    pop         ebx
 00426186    ret
*}
end;

//00426188
function TStringBuilder.Append(Value:Char):TStringBuilder;
begin
{*
 00426188    push        ebx
 00426189    push        esi
 0042618A    mov         esi,edx
 0042618C    mov         ebx,eax
 0042618E    mov         edx,dword ptr [ebx+8];TStringBuilder.FLength:Integer
 00426191    inc         edx
 00426192    mov         eax,ebx
 00426194    call        00426304
 00426199    mov         eax,dword ptr [ebx+4];TStringBuilder.FData:TArray<System.Char>
 0042619C    mov         edx,dword ptr [ebx+8];TStringBuilder.FLength:Integer
 0042619F    mov         word ptr [eax+edx*2-2],si
 004261A4    mov         eax,ebx
 004261A6    pop         esi
 004261A7    pop         ebx
 004261A8    ret
*}
end;

//004261AC
procedure sub_004261AC(?:TStringBuilder; ?:Integer);
begin
{*
 004261AC    push        ebx
 004261AD    add         esp,0FFFFFFF8
 004261B0    mov         ebx,edx
 004261B2    cmp         ebx,dword ptr [eax+8]
>004261B5    jb          004261D9
 004261B7    mov         dword ptr [esp],ebx
 004261BA    mov         byte ptr [esp+4],0
 004261BF    push        esp
 004261C0    push        0
 004261C2    mov         ecx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 004261C8    mov         dl,1
 004261CA    mov         eax,[0041873C];ERangeError
 004261CF    call        Exception.CreateResFmt;ERangeError.Create
 004261D4    call        @RaiseExcept
 004261D9    pop         ecx
 004261DA    pop         edx
 004261DB    pop         ebx
 004261DC    ret
*}
end;

//004261E0
constructor sub_004261E0;
begin
{*
 004261E0    push        ebx
 004261E1    push        esi
 004261E2    test        dl,dl
>004261E4    je          004261EE
 004261E6    add         esp,0FFFFFFF0
 004261E9    call        @ClassCreate
 004261EE    mov         ebx,edx
 004261F0    mov         esi,eax
 004261F2    xor         edx,edx
 004261F4    mov         eax,esi
 004261F6    call        TObject.Create
 004261FB    mov         dword ptr [esi+0C],7FFFFFFF;TStringBuilder.FMaxCapacity:Integer
 00426202    mov         edx,10
 00426207    mov         eax,esi
 00426209    call        00426290
 0042620E    xor         eax,eax
 00426210    mov         dword ptr [esi+8],eax;TStringBuilder.FLength:Integer
 00426213    mov         eax,esi
 00426215    test        bl,bl
>00426217    je          00426228
 00426219    call        @AfterConstruction
 0042621E    pop         dword ptr fs:[0]
 00426225    add         esp,0C
 00426228    mov         eax,esi
 0042622A    pop         esi
 0042622B    pop         ebx
 0042622C    ret
*}
end;

//00426230
procedure sub_00426230(?:TStringBuilder);
begin
{*
 00426230    push        ebx
 00426231    push        esi
 00426232    mov         ebx,eax
 00426234    mov         eax,ebx
 00426236    call        00426274
 0042623B    mov         esi,eax
 0042623D    add         esi,esi
 0042623F    mov         eax,dword ptr [ebx+8]
 00426242    cmp         esi,eax
>00426244    jge         0042624A
 00426246    mov         esi,eax
 00426248    add         esi,esi
 0042624A    mov         eax,ebx
 0042624C    call        0042628C
 00426251    cmp         esi,eax
>00426253    jle         0042625E
 00426255    mov         eax,ebx
 00426257    call        0042628C
 0042625C    mov         esi,eax
 0042625E    test        esi,esi
>00426260    jge         00426265
 00426262    mov         esi,dword ptr [ebx+8]
 00426265    mov         edx,esi
 00426267    mov         eax,ebx
 00426269    call        00426290
 0042626E    pop         esi
 0042626F    pop         ebx
 00426270    ret
*}
end;

//00426274
{*function sub_00426274(?:TStringBuilder):?;
begin
 00426274    push        ecx
 00426275    mov         eax,dword ptr [eax+4]
 00426278    mov         dword ptr [esp],eax
 0042627B    mov         eax,dword ptr [esp]
 0042627E    test        eax,eax
>00426280    je          00426287
 00426282    sub         eax,4
 00426285    mov         eax,dword ptr [eax]
 00426287    pop         edx
 00426288    ret
end;*}

//0042628C
{*function sub_0042628C(?:TStringBuilder):?;
begin
 0042628C    mov         eax,dword ptr [eax+0C]
 0042628F    ret
end;*}

//00426290
{*procedure sub_00426290(?:TStringBuilder; ?:?);
begin
 00426290    push        ebx
 00426291    push        esi
 00426292    add         esp,0FFFFFFF8
 00426295    mov         ebx,edx
 00426297    mov         esi,eax
 00426299    cmp         ebx,dword ptr [esi+8];TStringBuilder.FLength:Integer
>0042629C    jge         004262C0
 0042629E    mov         dword ptr [esp],ebx
 004262A1    mov         byte ptr [esp+4],0
 004262A6    push        esp
 004262A7    push        0
 004262A9    mov         ecx,dword ptr ds:[7C4908];^SResString133:TResStringRec
 004262AF    mov         dl,1
 004262B1    mov         eax,[0041873C];ERangeError
 004262B6    call        Exception.CreateResFmt;ERangeError.Create
 004262BB    call        @RaiseExcept
 004262C0    cmp         ebx,dword ptr [esi+0C];TStringBuilder.FMaxCapacity:Integer
>004262C3    jle         004262E7
 004262C5    mov         dword ptr [esp],ebx
 004262C8    mov         byte ptr [esp+4],0
 004262CD    push        esp
 004262CE    push        0
 004262D0    mov         ecx,dword ptr ds:[7C4908];^SResString133:TResStringRec
 004262D6    mov         dl,1
 004262D8    mov         eax,[0041873C];ERangeError
 004262DD    call        Exception.CreateResFmt;ERangeError.Create
 004262E2    call        @RaiseExcept
 004262E7    push        ebx
 004262E8    lea         eax,[esi+4];TStringBuilder.FData:TArray<System.Char>
 004262EB    mov         ecx,1
 004262F0    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 004262F6    call        @DynArraySetLength
 004262FB    add         esp,4
 004262FE    pop         ecx
 004262FF    pop         edx
 00426300    pop         esi
 00426301    pop         ebx
 00426302    ret
end;*}

//00426304
{*procedure sub_00426304(?:TStringBuilder; ?:?);
begin
 00426304    push        ebp
 00426305    mov         ebp,esp
 00426307    add         esp,0FFFFFFF0
 0042630A    push        ebx
 0042630B    push        esi
 0042630C    push        edi
 0042630D    mov         ebx,edx
 0042630F    mov         dword ptr [ebp-4],eax
 00426312    test        ebx,ebx
>00426314    jge         0042633F
 00426316    mov         eax,4263E4;'Value'
 0042631B    mov         dword ptr [ebp-10],eax
 0042631E    mov         byte ptr [ebp-0C],11
 00426322    lea         eax,[ebp-10]
 00426325    push        eax
 00426326    push        0
 00426328    mov         ecx,dword ptr ds:[7C4DE0];^SResString156:TResStringRec
 0042632E    mov         dl,1
 00426330    mov         eax,[0041873C];ERangeError
 00426335    call        Exception.CreateResFmt;ERangeError.Create
 0042633A    call        @RaiseExcept
 0042633F    mov         eax,dword ptr [ebp-4]
 00426342    call        0042628C
 00426347    cmp         ebx,eax
>00426349    jle         0042636F
 0042634B    mov         dword ptr [ebp-10],ebx
 0042634E    mov         byte ptr [ebp-0C],0
 00426352    lea         eax,[ebp-10]
 00426355    push        eax
 00426356    push        0
 00426358    mov         ecx,dword ptr ds:[7C4908];^SResString133:TResStringRec
 0042635E    mov         dl,1
 00426360    mov         eax,[0041873C];ERangeError
 00426365    call        Exception.CreateResFmt;ERangeError.Create
 0042636A    call        @RaiseExcept
 0042636F    mov         eax,dword ptr [ebp-4]
 00426372    mov         eax,dword ptr [eax+8];TStringBuilder.FLength:Integer
 00426375    mov         dword ptr [ebp-8],eax
 00426378    xor         edx,edx
 0042637A    push        ebp
 0042637B    push        4263AC
 00426380    push        dword ptr fs:[edx]
 00426383    mov         dword ptr fs:[edx],esp
 00426386    mov         eax,dword ptr [ebp-4]
 00426389    mov         esi,ebx
 0042638B    mov         dword ptr [eax+8],esi;TStringBuilder.FLength:Integer
 0042638E    mov         eax,dword ptr [ebp-4]
 00426391    call        00426274
 00426396    cmp         esi,eax
>00426398    jle         004263A2
 0042639A    mov         eax,dword ptr [ebp-4]
 0042639D    call        00426230
 004263A2    xor         eax,eax
 004263A4    pop         edx
 004263A5    pop         ecx
 004263A6    pop         ecx
 004263A7    mov         dword ptr fs:[eax],edx
>004263AA    jmp         004263D0
>004263AC    jmp         @HandleOnException
 004263B1    dd          1
 004263B5    dd          00418304;EOutOfMemory
 004263B9    dd          004263BD
 004263BD    mov         eax,dword ptr [ebp-4]
 004263C0    mov         edx,dword ptr [ebp-8]
 004263C3    mov         dword ptr [eax+8],edx;TStringBuilder.FLength:Integer
 004263C6    call        @RaiseAgain
 004263CB    call        @DoneExcept
 004263D0    pop         edi
 004263D1    pop         esi
 004263D2    pop         ebx
 004263D3    mov         esp,ebp
 004263D5    pop         ebp
 004263D6    ret
end;*}

//004263F0
{*procedure TStringBuilder.ToString(?:?);
begin
 004263F0    mov         ecx,dword ptr [eax+8];TStringBuilder.FLength:Integer
 004263F3    mov         eax,dword ptr [eax+4];TStringBuilder.FData:TArray<System.Char>
 004263F6    xchg        eax,edx
 004263F7    call        @UStrFromPWCharLen
 004263FC    ret
end;*}

//00426400
{*procedure TStringBuilder.ToString(StartIndex:Integer; StrLength:Integer; ?:?);
begin
 00426400    push        ebp
 00426401    mov         ebp,esp
 00426403    add         esp,0FFFFFFEC
 00426406    push        ebx
 00426407    push        esi
 00426408    push        edi
 00426409    mov         esi,ecx
 0042640B    mov         dword ptr [ebp-4],edx
 0042640E    mov         ebx,eax
 00426410    test        esi,esi
>00426412    je          004264B5
 00426418    cmp         dword ptr [ebp-4],0
>0042641C    jge         00426447
 0042641E    mov         eax,4264D4;'StartIndex'
 00426423    mov         dword ptr [ebp-14],eax
 00426426    mov         byte ptr [ebp-10],11
 0042642A    lea         eax,[ebp-14]
 0042642D    push        eax
 0042642E    push        0
 00426430    mov         ecx,dword ptr ds:[7C4DE0];^SResString156:TResStringRec
 00426436    mov         dl,1
 00426438    mov         eax,[0041873C];ERangeError
 0042643D    call        Exception.CreateResFmt;ERangeError.Create
 00426442    call        @RaiseExcept
 00426447    test        esi,esi
>00426449    jge         00426474
 0042644B    mov         eax,4264F8;'StrLength'
 00426450    mov         dword ptr [ebp-14],eax
 00426453    mov         byte ptr [ebp-10],11
 00426457    lea         eax,[ebp-14]
 0042645A    push        eax
 0042645B    push        0
 0042645D    mov         ecx,dword ptr ds:[7C4DE0];^SResString156:TResStringRec
 00426463    mov         dl,1
 00426465    mov         eax,[0041873C];ERangeError
 0042646A    call        Exception.CreateResFmt;ERangeError.Create
 0042646F    call        @RaiseExcept
 00426474    mov         edx,dword ptr [ebp-4]
 00426477    mov         eax,ebx
 00426479    call        004261AC
 0042647E    mov         edx,dword ptr [ebp-4]
 00426481    add         edx,esi
 00426483    dec         edx
 00426484    mov         eax,ebx
 00426486    call        004261AC
 0042648B    mov         eax,dword ptr [ebx+4];TStringBuilder.FData:TArray<System.Char>
 0042648E    mov         dword ptr [ebp-8],eax
 00426491    mov         dword ptr [ebp-0C],eax
 00426494    mov         edi,dword ptr [ebp-0C]
 00426497    test        edi,edi
>00426499    je          004264A0
 0042649B    sub         edi,4
 0042649E    mov         edi,dword ptr [edi]
 004264A0    push        esi
 004264A1    mov         eax,dword ptr [ebp+8]
 004264A4    push        eax
 004264A5    mov         edx,edi
 004264A7    dec         edx
 004264A8    mov         eax,dword ptr [ebp-8]
 004264AB    mov         ecx,dword ptr [ebp-4]
 004264AE    call        004266D4
>004264B3    jmp         004264BD
 004264B5    mov         eax,dword ptr [ebp+8]
 004264B8    call        @UStrClr
 004264BD    pop         edi
 004264BE    pop         esi
 004264BF    pop         ebx
 004264C0    mov         esp,ebp
 004264C2    pop         ebp
 004264C3    ret         4
end;*}

//0042650C
{*function sub_0042650C(?:UnicodeString):?;
begin
 0042650C    mov         eax,dword ptr [eax]
 0042650E    test        eax,eax
>00426510    je          00426517
 00426512    sub         eax,4
 00426515    mov         eax,dword ptr [eax]
 00426517    ret
end;*}

//00426518
{*function sub_00426518(?:?; ?:?; ?:?):?;
begin
 00426518    push        ebp
 00426519    mov         ebp,esp
 0042651B    push        ebx
 0042651C    mov         ebx,dword ptr [ebp+10]
 0042651F    push        ebx
 00426520    mov         ebx,dword ptr [ebp+0C]
 00426523    push        ebx
 00426524    movzx       ebx,byte ptr [ebp+8]
 00426528    push        ebx
 00426529    mov         ebx,dword ptr ds:[7C7CB8];gvar_007C7CB8:Cardinal
 0042652F    push        ebx
 00426530    call        00426694
 00426535    pop         ebx
 00426536    pop         ebp
 00426537    ret         0C
end;*}

//0042653C
{*procedure sub_0042653C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0042653C    push        ebp
 0042653D    mov         ebp,esp
 0042653F    push        ebx
 00426540    push        esi
 00426541    push        edi
 00426542    mov         edi,dword ptr [ebp+14]
 00426545    mov         esi,dword ptr [ebp+18]
 00426548    cmp         byte ptr [ebp+0C],0
>0042654C    je          00426567
 0042654E    push        esi
 0042654F    push        edi
 00426550    mov         ebx,dword ptr [ebp+10]
 00426553    push        ebx
 00426554    movzx       ebx,word ptr ds:[426588];0x4 gvar_00426588
 0042655B    push        ebx
 0042655C    mov         ebx,dword ptr [ebp+8]
 0042655F    push        ebx
 00426560    call        004265F0
>00426565    jmp         0042657E
 00426567    push        esi
 00426568    push        edi
 00426569    mov         ebx,dword ptr [ebp+10]
 0042656C    push        ebx
 0042656D    movzx       ebx,word ptr ds:[42658C];0x0 gvar_0042658C
 00426574    push        ebx
 00426575    mov         ebx,dword ptr [ebp+8]
 00426578    push        ebx
 00426579    call        004265F0
 0042657E    pop         edi
 0042657F    pop         esi
 00426580    pop         ebx
 00426581    pop         ebp
 00426582    ret         14
end;*}

//00426590
{*function sub_00426590(?:?):?;
begin
 00426590    push        ebx
 00426591    push        esi
 00426592    push        edi
 00426593    push        ecx
 00426594    mov         word ptr [esp],ax
 00426598    xor         edi,edi
 0042659A    xor         ebx,ebx
 0042659C    mov         esi,79F53C
 004265A1    mov         eax,ebx
 004265A3    cmp         al,0F
>004265A5    ja          004265AF
 004265A7    and         eax,7F
 004265AA    bt          word ptr [esp],ax
>004265AF    jae         004265DF
 004265B1    test        bl,bl
>004265B3    jne         004265C5
 004265B5    xor         edx,edx
 004265B7    mov         eax,6
 004265BC    call        00427F94
 004265C1    test        al,al
>004265C3    je          004265DF
 004265C5    cmp         bl,8
>004265C8    jne         004265DD
 004265CA    mov         edx,1
 004265CF    mov         eax,6
 004265D4    call        00427F94
 004265D9    test        al,al
>004265DB    je          004265DF
 004265DD    or          edi,dword ptr [esi]
 004265DF    inc         ebx
 004265E0    add         esi,4
 004265E3    cmp         bl,0A
>004265E6    jne         004265A1
 004265E8    mov         eax,edi
 004265EA    pop         edx
 004265EB    pop         edi
 004265EC    pop         esi
 004265ED    pop         ebx
 004265EE    ret
end;*}

//004265F0
{*procedure sub_004265F0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004265F0    push        ebp
 004265F1    mov         ebp,esp
 004265F3    add         esp,0FFFFFFF8
 004265F6    push        ebx
 004265F7    push        esi
 004265F8    mov         dword ptr [ebp-8],ecx
 004265FB    mov         esi,edx
 004265FD    mov         dword ptr [ebp-4],eax
 00426600    mov         edx,dword ptr [ebp-4]
 00426603    mov         eax,edx
 00426605    test        eax,eax
>00426607    je          0042660E
 00426609    sub         eax,4
 0042660C    mov         eax,dword ptr [eax]
 0042660E    test        eax,eax
>00426610    jne         00426616
 00426612    mov         al,1
>00426614    jmp         00426627
 00426616    mov         eax,dword ptr [ebp-8]
 00426619    test        eax,eax
>0042661B    je          00426622
 0042661D    sub         eax,4
 00426620    mov         eax,dword ptr [eax]
 00426622    test        eax,eax
 00426624    sete        al
 00426627    test        al,al
>00426629    je          0042665A
 0042662B    mov         eax,edx
 0042662D    test        eax,eax
>0042662F    je          00426636
 00426631    sub         eax,4
 00426634    mov         eax,dword ptr [eax]
 00426636    test        eax,eax
>00426638    jle         00426641
 0042663A    mov         eax,1
>0042663F    jmp         0042668B
 00426641    mov         eax,dword ptr [ebp-8]
 00426644    test        eax,eax
>00426646    je          0042664D
 00426648    sub         eax,4
 0042664B    mov         eax,dword ptr [eax]
 0042664D    test        eax,eax
>0042664F    jle         00426656
 00426651    or          eax,0FFFFFFFF
>00426654    jmp         0042668B
 00426656    xor         eax,eax
>00426658    jmp         0042668B
 0042665A    movzx       eax,word ptr [ebp+0C]
 0042665E    call        00426590
 00426663    mov         ebx,eax
 00426665    mov         eax,dword ptr [ebp+10]
 00426668    push        eax
 00426669    mov         eax,dword ptr [ebp-8]
 0042666C    mov         edx,dword ptr [ebp+18]
 0042666F    lea         eax,[eax+edx*2]
 00426672    push        eax
 00426673    mov         eax,dword ptr [ebp+14]
 00426676    push        eax
 00426677    mov         eax,dword ptr [ebp-4]
 0042667A    lea         eax,[eax+esi*2]
 0042667D    push        eax
 0042667E    push        ebx
 0042667F    mov         eax,dword ptr [ebp+8]
 00426682    push        eax
 00426683    call        kernel32.CompareStringW
 00426688    sub         eax,2
 0042668B    pop         esi
 0042668C    pop         ebx
 0042668D    pop         ecx
 0042668E    pop         ecx
 0042668F    pop         ebp
 00426690    ret         14
end;*}

//00426694
{*procedure sub_00426694(?:?; ?:?; ?:?; ?:?);
begin
 00426694    push        ebp
 00426695    mov         ebp,esp
 00426697    push        ebx
 00426698    push        esi
 00426699    mov         esi,dword ptr [ebp+10]
 0042669C    mov         ebx,dword ptr [ebp+14]
 0042669F    push        ebx
 004266A0    push        esi
 004266A1    push        esi
 004266A2    movzx       ebx,byte ptr [ebp+0C]
 004266A6    push        ebx
 004266A7    mov         ebx,dword ptr [ebp+8]
 004266AA    push        ebx
 004266AB    call        0042653C
 004266B0    pop         esi
 004266B1    pop         ebx
 004266B2    pop         ebp
 004266B3    ret         10
end;*}

//004266B8
function TStringHelper.Contains(const Value:UnicodeString):Boolean;
begin
{*
 004266B8    push        ebx
 004266B9    push        esi
 004266BA    mov         esi,edx
 004266BC    mov         ebx,eax
 004266BE    mov         edx,dword ptr [ebx]
 004266C0    mov         ecx,1
 004266C5    mov         eax,esi
 004266C7    call        Pos
 004266CC    test        eax,eax
 004266CE    setg        al
 004266D1    pop         esi
 004266D2    pop         ebx
 004266D3    ret
*}
end;

//004266D4
{*procedure sub_004266D4(?:void ; ?:?; ?:Integer; ?:?; ?:?);
begin
 004266D4    push        ebp
 004266D5    mov         ebp,esp
 004266D7    push        ecx
 004266D8    push        ebx
 004266D9    push        esi
 004266DA    push        edi
 004266DB    mov         dword ptr [ebp-4],ecx
 004266DE    mov         edi,eax
 004266E0    mov         esi,dword ptr [ebp+8]
 004266E3    mov         ebx,dword ptr [ebp+0C]
 004266E6    mov         eax,esi
 004266E8    mov         edx,ebx
 004266EA    call        @UStrSetLength
 004266EF    mov         eax,dword ptr [esi]
 004266F1    call        @UStrToPWChar
 004266F6    mov         edx,eax
 004266F8    mov         eax,dword ptr [ebp-4]
 004266FB    lea         eax,[edi+eax*2]
 004266FE    mov         ecx,ebx
 00426700    add         ecx,ecx
 00426702    call        Move
 00426707    pop         edi
 00426708    pop         esi
 00426709    pop         ebx
 0042670A    pop         ecx
 0042670B    pop         ebp
 0042670C    ret         8
end;*}

//00426710
{*procedure sub_00426710(?:?; ?:?; ?:?);
begin
 00426710    push        ebx
 00426711    push        esi
 00426712    push        edi
 00426713    push        ebp
 00426714    mov         esi,ecx
 00426716    mov         ebx,edx
 00426718    mov         ebp,eax
 0042671A    lea         edi,[ebx+1]
 0042671D    mov         edx,edi
 0042671F    mov         eax,esi
 00426721    call        @UStrSetLength
 00426726    mov         eax,dword ptr [esi]
 00426728    call        @UStrToPWChar
 0042672D    mov         edx,eax
 0042672F    mov         ecx,edi
 00426731    add         ecx,ecx
 00426733    mov         eax,ebp
 00426735    call        Move
 0042673A    pop         ebp
 0042673B    pop         edi
 0042673C    pop         esi
 0042673D    pop         ebx
 0042673E    ret
end;*}

//00426740
function TStringHelper.GetChars(Index:Integer):Char;
begin
{*
 00426740    mov         eax,dword ptr [eax]
 00426742    movzx       eax,word ptr [eax+edx*2]
 00426746    ret
*}
end;

//00426748
function TStringHelper.Insert(StartIndex:Integer; const Value:UnicodeString):UnicodeString;
begin
{*
 00426748    push        ebp
 00426749    mov         ebp,esp
 0042674B    push        ebx
 0042674C    mov         ebx,eax
 0042674E    mov         eax,ebx
 00426750    inc         edx
 00426751    xchg        eax,edx
 00426752    xchg        eax,ecx
 00426753    call        @UStrInsert
 00426758    mov         eax,dword ptr [ebp+8]
 0042675B    mov         edx,dword ptr [ebx]
 0042675D    call        @UStrAsg
 00426762    pop         ebx
 00426763    pop         ebp
 00426764    ret         4
*}
end;

//00426768
function TStringHelper.LastDelimiter(const Delims:UnicodeString):Integer;
begin
{*
 00426768    push        ebx
 00426769    push        esi
 0042676A    push        edi
 0042676B    add         esp,0FFFFFFF8
 0042676E    mov         dword ptr [esp+4],edx
 00426772    mov         dword ptr [esp],eax
 00426775    mov         eax,dword ptr [esp]
 00426778    mov         eax,dword ptr [eax]
 0042677A    test        eax,eax
>0042677C    je          00426783
 0042677E    sub         eax,4
 00426781    mov         eax,dword ptr [eax]
 00426783    mov         edx,eax
 00426785    dec         edx
 00426786    test        edx,edx
>00426788    jl          004267C1
 0042678A    mov         esi,dword ptr [esp+4]
 0042678E    test        esi,esi
>00426790    je          00426797
 00426792    sub         esi,4
 00426795    mov         esi,dword ptr [esi]
 00426797    mov         eax,esi
 00426799    dec         eax
 0042679A    test        eax,eax
>0042679C    jl          004267BC
 0042679E    inc         eax
 0042679F    xor         ecx,ecx
 004267A1    mov         ebx,dword ptr [esp+4]
 004267A5    movzx       ebx,word ptr [ebx+ecx*2]
 004267A9    mov         esi,dword ptr [esp]
 004267AC    mov         esi,dword ptr [esi]
 004267AE    cmp         bx,word ptr [esi+edx*2]
>004267B2    jne         004267B8
 004267B4    mov         edi,edx
>004267B6    jmp         004267C4
 004267B8    inc         ecx
 004267B9    dec         eax
>004267BA    jne         004267A1
 004267BC    dec         edx
 004267BD    test        edx,edx
>004267BF    jge         0042678A
 004267C1    or          edi,0FFFFFFFF
 004267C4    mov         eax,edi
 004267C6    pop         ecx
 004267C7    pop         edx
 004267C8    pop         edi
 004267C9    pop         esi
 004267CA    pop         ebx
 004267CB    ret
*}
end;

//004267CC
function TStringHelper.StartsWith(const Value:UnicodeString):Boolean;
begin
{*
 004267CC    push        ebx
 004267CD    push        esi
 004267CE    push        edi
 004267CF    push        ecx
 004267D0    mov         ebx,ecx
 004267D2    mov         dword ptr [esp],edx
 004267D5    mov         edi,eax
 004267D7    cmp         dword ptr [esp],0
>004267DB    jne         004267E1
 004267DD    xor         eax,eax
>004267DF    jmp         00426839
 004267E1    test        bl,bl
>004267E3    jne         00426810
 004267E5    mov         esi,dword ptr [esp]
 004267E8    test        esi,esi
>004267EA    je          004267F1
 004267EC    sub         esi,4
 004267EF    mov         esi,dword ptr [esi]
 004267F1    mov         eax,dword ptr [esp]
 004267F4    call        @UStrToPWChar
 004267F9    push        eax
 004267FA    mov         eax,dword ptr [edi]
 004267FC    call        @UStrToPWChar
 00426801    mov         ecx,esi
 00426803    pop         edx
 00426804    call        StrLComp
 00426809    test        eax,eax
 0042680B    sete        al
>0042680E    jmp         00426839
 00426810    mov         esi,dword ptr [esp]
 00426813    test        esi,esi
>00426815    je          0042681C
 00426817    sub         esi,4
 0042681A    mov         esi,dword ptr [esi]
 0042681C    mov         eax,dword ptr [esp]
 0042681F    call        @UStrToPWChar
 00426824    push        eax
 00426825    mov         eax,dword ptr [edi]
 00426827    call        @UStrToPWChar
 0042682C    mov         ecx,esi
 0042682E    pop         edx
 0042682F    call        0041F314
 00426834    test        eax,eax
 00426836    sete        al
 00426839    pop         edx
 0042683A    pop         edi
 0042683B    pop         esi
 0042683C    pop         ebx
 0042683D    ret
*}
end;

//00426840
function TStringHelper.Substring(StartIndex:Integer; Length:Integer):UnicodeString;
begin
{*
 00426840    push        ebx
 00426841    push        esi
 00426842    push        edi
 00426843    push        ecx
 00426844    mov         edi,ecx
 00426846    mov         esi,edx
 00426848    mov         dword ptr [esp],eax
 0042684B    mov         ebx,dword ptr [esp]
 0042684E    mov         ebx,dword ptr [ebx]
 00426850    test        ebx,ebx
>00426852    je          00426859
 00426854    sub         ebx,4
 00426857    mov         ebx,dword ptr [ebx]
 00426859    push        edi
 0042685A    lea         edx,[esi+1]
 0042685D    mov         eax,dword ptr [esp+4]
 00426861    mov         eax,dword ptr [eax]
 00426863    mov         ecx,ebx
 00426865    call        @UStrCopy
 0042686A    pop         edx
 0042686B    pop         edi
 0042686C    pop         esi
 0042686D    pop         ebx
 0042686E    ret
*}
end;

//00426870
{*procedure sub_00426870(?:UnicodeString; ?:?; ?:Integer; ?:?);
begin
 00426870    push        ebp
 00426871    mov         ebp,esp
 00426873    push        ebx
 00426874    push        esi
 00426875    push        edi
 00426876    mov         edi,ecx
 00426878    mov         esi,edx
 0042687A    mov         ebx,eax
 0042687C    mov         eax,dword ptr [ebp+8]
 0042687F    push        eax
 00426880    lea         edx,[esi+1]
 00426883    mov         eax,dword ptr [ebx]
 00426885    mov         ecx,edi
 00426887    call        @UStrCopy
 0042688C    pop         edi
 0042688D    pop         esi
 0042688E    pop         ebx
 0042688F    pop         ebp
 00426890    ret         4
end;*}

//00426894
{*procedure sub_00426894(?:?; ?:?);
begin
 00426894    push        ebx
 00426895    push        esi
 00426896    push        edi
 00426897    push        ecx
 00426898    mov         edi,edx
 0042689A    mov         dword ptr [esp],eax
 0042689D    mov         eax,dword ptr [esp]
 004268A0    mov         eax,dword ptr [eax]
 004268A2    test        eax,eax
>004268A4    je          004268AB
 004268A6    sub         eax,4
 004268A9    mov         eax,dword ptr [eax]
 004268AB    mov         esi,eax
 004268AD    dec         esi
 004268AE    xor         ebx,ebx
 004268B0    cmp         esi,0FFFFFFFF
>004268B3    jle         004268DC
 004268B5    mov         eax,dword ptr [esp]
 004268B8    mov         eax,dword ptr [eax]
 004268BA    cmp         word ptr [eax+ebx*2],20
>004268BF    jbe         004268DC
 004268C1    mov         eax,dword ptr [esp]
 004268C4    mov         eax,dword ptr [eax]
 004268C6    cmp         word ptr [eax+esi*2],20
>004268CB    jbe         004268DC
 004268CD    mov         eax,edi
 004268CF    mov         edx,dword ptr [esp]
 004268D2    mov         edx,dword ptr [edx]
 004268D4    call        @UStrAsg
>004268D9    jmp         00426917
 004268DB    inc         ebx
 004268DC    cmp         esi,ebx
>004268DE    jl          004268EC
 004268E0    mov         eax,dword ptr [esp]
 004268E3    mov         eax,dword ptr [eax]
 004268E5    cmp         word ptr [eax+ebx*2],20
>004268EA    jbe         004268DB
 004268EC    cmp         esi,ebx
>004268EE    jge         004268FA
 004268F0    mov         eax,edi
 004268F2    call        @UStrClr
>004268F7    jmp         00426917
 004268F9    dec         esi
 004268FA    mov         eax,dword ptr [esp]
 004268FD    mov         eax,dword ptr [eax]
 004268FF    cmp         word ptr [eax+esi*2],20
>00426904    jbe         004268F9
 00426906    push        edi
 00426907    mov         ecx,esi
 00426909    sub         ecx,ebx
 0042690B    inc         ecx
 0042690C    mov         eax,dword ptr [esp+4]
 00426910    mov         edx,ebx
 00426912    call        00426870
 00426917    pop         edx
 00426918    pop         edi
 00426919    pop         esi
 0042691A    pop         ebx
 0042691B    ret
end;*}

//0042691C
function TStringHelper.TrimLeft:UnicodeString;
begin
{*
 0042691C    push        ebx
 0042691D    push        esi
 0042691E    push        ecx
 0042691F    mov         esi,edx
 00426921    mov         dword ptr [esp],eax
 00426924    mov         eax,dword ptr [esp]
 00426927    mov         eax,dword ptr [eax]
 00426929    test        eax,eax
>0042692B    je          00426932
 0042692D    sub         eax,4
 00426930    mov         eax,dword ptr [eax]
 00426932    dec         eax
 00426933    xor         ebx,ebx
>00426935    jmp         00426938
 00426937    inc         ebx
 00426938    cmp         eax,ebx
>0042693A    jl          00426948
 0042693C    mov         edx,dword ptr [esp]
 0042693F    mov         edx,dword ptr [edx]
 00426941    cmp         word ptr [edx+ebx*2],20
>00426946    jbe         00426937
 00426948    test        ebx,ebx
>0042694A    jle         0042695A
 0042694C    mov         ecx,esi
 0042694E    mov         eax,dword ptr [esp]
 00426951    mov         edx,ebx
 00426953    call        TStringHelper.Substring
>00426958    jmp         00426966
 0042695A    mov         eax,esi
 0042695C    mov         edx,dword ptr [esp]
 0042695F    mov         edx,dword ptr [edx]
 00426961    call        @UStrAsg
 00426966    pop         edx
 00426967    pop         esi
 00426968    pop         ebx
 00426969    ret
*}
end;

//0042696C
{*procedure sub_0042696C(?:?; ?:?);
begin
 0042696C    push        ebx
 0042696D    push        esi
 0042696E    push        ecx
 0042696F    mov         esi,edx
 00426971    mov         dword ptr [esp],eax
 00426974    mov         eax,dword ptr [esp]
 00426977    mov         eax,dword ptr [eax]
 00426979    test        eax,eax
>0042697B    je          00426982
 0042697D    sub         eax,4
 00426980    mov         eax,dword ptr [eax]
 00426982    mov         ebx,eax
 00426984    dec         ebx
 00426985    test        ebx,ebx
>00426987    jl          004269A4
 00426989    mov         eax,dword ptr [esp]
 0042698C    mov         eax,dword ptr [eax]
 0042698E    cmp         word ptr [eax+ebx*2],20
>00426993    jbe         004269A4
 00426995    mov         eax,esi
 00426997    mov         edx,dword ptr [esp]
 0042699A    mov         edx,dword ptr [edx]
 0042699C    call        @UStrAsg
>004269A1    jmp         004269C7
 004269A3    dec         ebx
 004269A4    test        ebx,ebx
>004269A6    jl          004269B8
 004269A8    mov         eax,dword ptr [esp]
 004269AB    mov         edx,ebx
 004269AD    call        TStringHelper.GetChars
 004269B2    cmp         ax,20
>004269B6    jbe         004269A3
 004269B8    push        esi
 004269B9    lea         ecx,[ebx+1]
 004269BC    mov         eax,dword ptr [esp+4]
 004269C0    xor         edx,edx
 004269C2    call        00426870
 004269C7    pop         edx
 004269C8    pop         esi
 004269C9    pop         ebx
 004269CA    ret
end;*}

//004269CC
function TEncoding.Clone:TEncoding;
begin
{*
 004269CC    xor         eax,eax
 004269CE    ret
*}
end;

//004269D0
{*procedure TEncoding.Convert(Source:TEncoding; Destination:TEncoding; ?:?; Bytes:TArray<System.Byte>);
begin
 004269D0    push        ebp
 004269D1    mov         ebp,esp
 004269D3    push        0
 004269D5    push        ebx
 004269D6    push        esi
 004269D7    mov         esi,ecx
 004269D9    mov         ebx,edx
 004269DB    xor         eax,eax
 004269DD    push        ebp
 004269DE    push        426A1F
 004269E3    push        dword ptr fs:[eax]
 004269E6    mov         dword ptr fs:[eax],esp
 004269E9    lea         ecx,[ebp-4]
 004269EC    mov         edx,dword ptr [ebp+0C]
 004269EF    mov         eax,ebx
 004269F1    call        TEncoding.GetChars
 004269F6    mov         edx,dword ptr [ebp-4]
 004269F9    mov         ecx,dword ptr [ebp+8]
 004269FC    mov         eax,esi
 004269FE    call        TEncoding.GetBytes
 00426A03    xor         eax,eax
 00426A05    pop         edx
 00426A06    pop         ecx
 00426A07    pop         ecx
 00426A08    mov         dword ptr fs:[eax],edx
 00426A0B    push        426A26
 00426A10    lea         eax,[ebp-4]
 00426A13    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 00426A19    call        @DynArrayClear
 00426A1E    ret
>00426A1F    jmp         @HandleFinally
>00426A24    jmp         00426A10
 00426A26    pop         esi
 00426A27    pop         ebx
 00426A28    pop         ecx
 00426A29    pop         ebp
 00426A2A    ret         8
end;*}

//00426A30
{*procedure TEncoding.Convert(Source:TEncoding; Destination:TEncoding; ?:?; Count:Integer; StartIndex:Integer; Bytes:TArray<System.Byte>);
begin
 00426A30    push        ebp
 00426A31    mov         ebp,esp
 00426A33    push        0
 00426A35    push        ebx
 00426A36    push        esi
 00426A37    mov         esi,ecx
 00426A39    mov         ebx,edx
 00426A3B    xor         eax,eax
 00426A3D    push        ebp
 00426A3E    push        426A87
 00426A43    push        dword ptr fs:[eax]
 00426A46    mov         dword ptr fs:[eax],esp
 00426A49    mov         eax,dword ptr [ebp+0C]
 00426A4C    push        eax
 00426A4D    lea         eax,[ebp-4]
 00426A50    push        eax
 00426A51    mov         ecx,dword ptr [ebp+10]
 00426A54    mov         edx,dword ptr [ebp+14]
 00426A57    mov         eax,ebx
 00426A59    call        TEncoding.GetChars
 00426A5E    mov         edx,dword ptr [ebp-4]
 00426A61    mov         ecx,dword ptr [ebp+8]
 00426A64    mov         eax,esi
 00426A66    call        TEncoding.GetBytes
 00426A6B    xor         eax,eax
 00426A6D    pop         edx
 00426A6E    pop         ecx
 00426A6F    pop         ecx
 00426A70    mov         dword ptr fs:[eax],edx
 00426A73    push        426A8E
 00426A78    lea         eax,[ebp-4]
 00426A7B    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 00426A81    call        @DynArrayClear
 00426A86    ret
>00426A87    jmp         @HandleFinally
>00426A8C    jmp         00426A78
 00426A8E    pop         esi
 00426A8F    pop         ebx
 00426A90    pop         ecx
 00426A91    pop         ebp
 00426A92    ret         10
end;*}

end.