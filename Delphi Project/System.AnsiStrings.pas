//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit System.AnsiStrings;

interface

uses
  SysUtils, Classes;

type
  tagSTATSTG = tagSTATSTG = record//size=48
pwcsName:PWideChar;//f0
dwType:Cardinal;//f4
cbSize:Int64;//f8
mtime:_FILETIME;//f10
ctime:_FILETIME;//f18
atime:_FILETIME;//f20
grfMode:Cardinal;//f28
grfLocksSupported:Cardinal;//f2C
clsid:TGUID;//f30
grfStateBits:Cardinal;//f40
reserved:Cardinal;//f44
end;;
  tagEXCEPINFO = tagEXCEPINFO = record//size=20
f4:WideString;//f4
f8:WideString;//f8
fC:WideString;//fC
end;
wCode:Word;//f0
wReserved:Word;//f2
bstrSource:WideString;//f4
bstrDescription:WideString;//f8
bstrHelpFile:WideString;//fC
dwHelpContext:Integer;//f10
pvReserved:Pointer;//f14
pfnDeferredFillIn:TFNDeferredFillIn;//f18
scode:HRESULT;//f1C
end;;
    function IsEqualGUID(const Guid2:TGUID):Boolean;//00431EA8
    function CoInitialize:HRESULT; stdcall;//00431EB0
    procedure CoUninitialize;//00431EB8
    function CoCreateInstance(unkOuter:IUnknown; dwClsContext:LongInt; const iid:TGUID; var pv:void ):HRESULT; stdcall;//00431EC0
    function CLSIDFromProgID(var clsid:TGUID):HRESULT; stdcall;//00431EC8
    function CoTaskMemAlloc:Pointer; stdcall;//00431ED0
    procedure CoTaskMemFree; stdcall;//00431ED8
    function OleInitialize:HRESULT; stdcall;//00431EE0
    procedure OleUninitialize;//00431EE8
    procedure SysFreeString; stdcall;//00431EF0
    function SetErrorInfo(errinfo:IErrorInfo):HRESULT; stdcall;//00431EF8
    function GetErrorInfo(var errinfo:IErrorInfo):HRESULT; stdcall;//00431F00
    function CreateErrorInfo:HRESULT; stdcall;//00431F08
    function AnsiReplaceStr(const AText:AnsiString; const AFromText:AnsiString; const AToText:AnsiString):AnsiString;//00431F10
    //procedure sub_00431F40(?:string; ?:?; ?:TTreeNode);//00431F40
    //procedure sub_00431F5C(?:UnicodeString; ?:?; ?:UnicodeString);//00431F5C
    //procedure sub_00431F88(?:UnicodeString; ?:Integer; ?:?; ?:?);//00431F88
    //function sub_00431FAC(?:?; ?:?; ?:?):?;//00431FAC
    //procedure sub_00432054(?:UnicodeString; ?:?; ?:?; ?:?);//00432054
    function StringReplace(const S:AnsiString; const OldPattern:AnsiString; const NewPattern:AnsiString; Flags:SysUtils.TReplaceFlags):AnsiString;//004320D0
    function CompareStr(const S1:AnsiString; const S2:AnsiString):Integer;//0043222C
    function AnsiUpperCase(const S:AnsiString):AnsiString;//00432294
    function AnsiPos(const Substr:AnsiString; const S:AnsiString):Integer;//004322D0
    //procedure sub_00432308(?:?; ?:UString; ?:UString; ?:?);//00432308
    function StrPos(const Str1:PAnsiChar; const Str2:PAnsiChar):PAnsiChar;//00432338
    function AnsiStrPos(Str:PAnsiChar; SubStr:PAnsiChar):PAnsiChar;//0043238C
    //function sub_0043242C(?:?; ?:?):?;//0043242C
    function StrByteType(Str:PAnsiChar; Index:Cardinal):TMbcsByteType;//004324B0

implementation

//00431EA8
function ole32.IsEqualGUID(const Guid2:TGUID):Boolean;
begin
{*
 00431EA8    jmp         dword ptr ds:[905418]
*}
end;

//00431EB0
function ole32.CoInitialize:HRESULT; stdcall;
begin
{*
 00431EB0    jmp         dword ptr ds:[905414]
*}
end;

//00431EB8
procedure ole32.CoUninitialize;
begin
{*
 00431EB8    jmp         dword ptr ds:[905410]
*}
end;

//00431EC0
function ole32.CoCreateInstance(unkOuter:IUnknown; dwClsContext:LongInt; const iid:TGUID; var pv:void ):HRESULT; stdcall;
begin
{*
 00431EC0    jmp         dword ptr ds:[90540C]
*}
end;

//00431EC8
function ole32.CLSIDFromProgID(var clsid:TGUID):HRESULT; stdcall;
begin
{*
 00431EC8    jmp         dword ptr ds:[905408]
*}
end;

//00431ED0
function ole32.CoTaskMemAlloc:Pointer; stdcall;
begin
{*
 00431ED0    jmp         dword ptr ds:[905404]
*}
end;

//00431ED8
procedure ole32.CoTaskMemFree; stdcall;
begin
{*
 00431ED8    jmp         dword ptr ds:[905400]
*}
end;

//00431EE0
function ole32.OleInitialize:HRESULT; stdcall;
begin
{*
 00431EE0    jmp         dword ptr ds:[9053FC]
*}
end;

//00431EE8
procedure ole32.OleUninitialize;
begin
{*
 00431EE8    jmp         dword ptr ds:[9053F8]
*}
end;

//00431EF0
procedure oleaut32.SysFreeString; stdcall;
begin
{*
 00431EF0    jmp         dword ptr ds:[9053F0]
*}
end;

//00431EF8
function oleaut32.SetErrorInfo(errinfo:IErrorInfo):HRESULT; stdcall;
begin
{*
 00431EF8    jmp         dword ptr ds:[9053EC]
*}
end;

//00431F00
function oleaut32.GetErrorInfo(var errinfo:IErrorInfo):HRESULT; stdcall;
begin
{*
 00431F00    jmp         dword ptr ds:[9053E8]
*}
end;

//00431F08
function oleaut32.CreateErrorInfo:HRESULT; stdcall;
begin
{*
 00431F08    jmp         dword ptr ds:[9053E4]
*}
end;

//00431F10
function AnsiReplaceStr(const AText:AnsiString; const AFromText:AnsiString; const AToText:AnsiString):AnsiString;
begin
{*
 00431F10    push        ebp
 00431F11    mov         ebp,esp
 00431F13    push        ebx
 00431F14    push        esi
 00431F15    push        edi
 00431F16    mov         edi,ecx
 00431F18    mov         esi,edx
 00431F1A    mov         ebx,eax
 00431F1C    movzx       eax,byte ptr ds:[431F3C]
 00431F23    push        eax
 00431F24    mov         eax,dword ptr [ebp+8]
 00431F27    push        eax
 00431F28    mov         ecx,edi
 00431F2A    mov         edx,esi
 00431F2C    mov         eax,ebx
 00431F2E    call        00425440
 00431F33    pop         edi
 00431F34    pop         esi
 00431F35    pop         ebx
 00431F36    pop         ebp
 00431F37    ret         4
*}
end;

//00431F40
{*procedure sub_00431F40(?:string; ?:?; ?:TTreeNode);
begin
 00431F40    push        ebx
 00431F41    push        esi
 00431F42    push        edi
 00431F43    mov         edi,ecx
 00431F45    mov         esi,edx
 00431F47    mov         ebx,eax
 00431F49    push        edi
 00431F4A    mov         ecx,esi
 00431F4C    mov         edx,1
 00431F51    mov         eax,ebx
 00431F53    call        @UStrCopy
 00431F58    pop         edi
 00431F59    pop         esi
 00431F5A    pop         ebx
 00431F5B    ret
end;*}

//00431F5C
{*procedure sub_00431F5C(?:UnicodeString; ?:?; ?:UnicodeString);
begin
 00431F5C    push        ebx
 00431F5D    push        esi
 00431F5E    push        edi
 00431F5F    push        ebp
 00431F60    mov         ebp,ecx
 00431F62    mov         edi,edx
 00431F64    mov         esi,eax
 00431F66    mov         ebx,esi
 00431F68    test        ebx,ebx
>00431F6A    je          00431F71
 00431F6C    sub         ebx,4
 00431F6F    mov         ebx,dword ptr [ebx]
 00431F71    push        ebp
 00431F72    lea         edx,[ebx+1]
 00431F75    sub         edx,edi
 00431F77    mov         ecx,edi
 00431F79    mov         eax,esi
 00431F7B    call        @UStrCopy
 00431F80    pop         ebp
 00431F81    pop         edi
 00431F82    pop         esi
 00431F83    pop         ebx
 00431F84    ret
end;*}

//00431F88
{*procedure sub_00431F88(?:UnicodeString; ?:Integer; ?:?; ?:?);
begin
 00431F88    push        ebp
 00431F89    mov         ebp,esp
 00431F8B    push        ebx
 00431F8C    push        esi
 00431F8D    push        edi
 00431F8E    mov         edi,ecx
 00431F90    mov         esi,edx
 00431F92    mov         ebx,eax
 00431F94    mov         eax,dword ptr [ebp+8]
 00431F97    push        eax
 00431F98    mov         ecx,edi
 00431F9A    mov         edx,esi
 00431F9C    mov         eax,ebx
 00431F9E    call        @UStrCopy
 00431FA3    pop         edi
 00431FA4    pop         esi
 00431FA5    pop         ebx
 00431FA6    pop         ebp
 00431FA7    ret         4
end;*}

//00431FAC
{*function sub_00431FAC(?:?; ?:?; ?:?):?;
begin
 00431FAC    push        ebx
 00431FAD    push        esi
 00431FAE    push        edi
 00431FAF    push        ebp
 00431FB0    add         esp,0FFFFFFF8
 00431FB3    mov         dword ptr [esp],ecx
 00431FB6    mov         ebx,edx
 00431FB8    mov         edi,eax
 00431FBA    xor         edx,edx
 00431FBC    test        ebx,ebx
>00431FBE    jg          00431FC5
 00431FC0    mov         ebx,1
 00431FC5    mov         eax,edi
 00431FC7    test        eax,eax
>00431FC9    je          00431FD0
 00431FCB    sub         eax,4
 00431FCE    mov         eax,dword ptr [eax]
 00431FD0    mov         esi,eax
 00431FD2    sub         esi,ebx
 00431FD4    inc         esi
 00431FD5    test        esi,esi
>00431FD7    jle         0043204B
 00431FD9    mov         eax,edi
 00431FDB    call        @UStrToPWChar
 00431FE0    mov         edx,ebx
 00431FE2    add         edx,edx
 00431FE4    add         eax,edx
 00431FE6    sub         eax,2
 00431FE9    mov         edi,eax
 00431FEB    mov         dword ptr [esp+4],edi
>00431FEF    jmp         00432034
 00431FF1    mov         ebx,1
 00431FF6    movzx       ebp,word ptr [edi]
 00431FF9    cmp         bp,0D800
>00431FFE    jb          00432007
 00432000    cmp         bp,0DFFF
>00432005    jbe         0043200B
 00432007    xor         eax,eax
>00432009    jmp         0043200D
 0043200B    mov         al,1
 0043200D    test        al,al
>0043200F    je          00432023
 00432011    mov         eax,edi
 00432013    call        004250B4
 00432018    mov         ebx,eax
 0043201A    sub         ebx,edi
 0043201C    sar         ebx,1
>0043201E    jns         00432023
 00432020    adc         ebx,0
 00432023    cmp         esi,ebx
>00432025    jge         00432029
 00432027    mov         ebx,esi
 00432029    mov         eax,ebx
 0043202B    add         eax,eax
 0043202D    add         edi,eax
 0043202F    sub         esi,ebx
 00432031    dec         dword ptr [esp]
 00432034    test        esi,esi
>00432036    jle         0043203E
 00432038    cmp         dword ptr [esp],0
>0043203C    jg          00431FF1
 0043203E    mov         edx,edi
 00432040    sub         edx,dword ptr [esp+4]
 00432044    sar         edx,1
>00432046    jns         0043204B
 00432048    adc         edx,0
 0043204B    mov         eax,edx
 0043204D    pop         ecx
 0043204E    pop         edx
 0043204F    pop         ebp
 00432050    pop         edi
 00432051    pop         esi
 00432052    pop         ebx
 00432053    ret
end;*}

//00432054
{*procedure sub_00432054(?:UnicodeString; ?:?; ?:?; ?:?);
begin
 00432054    push        ebp
 00432055    mov         ebp,esp
 00432057    add         esp,0FFFFFFF8
 0043205A    push        ebx
 0043205B    push        esi
 0043205C    push        edi
 0043205D    mov         esi,ecx
 0043205F    mov         dword ptr [ebp-8],edx
 00432062    mov         dword ptr [ebp-4],eax
 00432065    mov         eax,dword ptr [ebp+8]
 00432068    call        @UStrClr
 0043206D    test        esi,esi
>0043206F    jle         004320C4
 00432071    mov         eax,dword ptr [ebp-4]
 00432074    test        eax,eax
>00432076    je          0043207D
 00432078    sub         eax,4
 0043207B    mov         eax,dword ptr [eax]
 0043207D    mov         ebx,eax
 0043207F    test        ebx,ebx
>00432081    jle         004320C4
 00432083    mov         edi,1
 00432088    cmp         dword ptr [ebp-8],0
>0043208C    jle         004320A2
 0043208E    mov         ecx,dword ptr [ebp-8]
 00432091    dec         ecx
 00432092    mov         edx,1
 00432097    mov         eax,dword ptr [ebp-4]
 0043209A    call        00431FAC
 0043209F    mov         edi,eax
 004320A1    inc         edi
 004320A2    cmp         edi,ebx
>004320A4    jg          004320C4
 004320A6    mov         ecx,esi
 004320A8    mov         edx,edi
 004320AA    mov         eax,dword ptr [ebp-4]
 004320AD    call        00431FAC
 004320B2    mov         ebx,eax
 004320B4    mov         eax,dword ptr [ebp+8]
 004320B7    push        eax
 004320B8    mov         ecx,ebx
 004320BA    mov         edx,edi
 004320BC    mov         eax,dword ptr [ebp-4]
 004320BF    call        @UStrCopy
 004320C4    pop         edi
 004320C5    pop         esi
 004320C6    pop         ebx
 004320C7    pop         ecx
 004320C8    pop         ecx
 004320C9    pop         ebp
 004320CA    ret         4
end;*}

//004320D0
function StringReplace(const S:AnsiString; const OldPattern:AnsiString; const NewPattern:AnsiString; Flags:SysUtils.TReplaceFlags):AnsiString;
begin
{*
 004320D0    push        ebp
 004320D1    mov         ebp,esp
 004320D3    push        0
 004320D5    push        0
 004320D7    push        0
 004320D9    push        0
 004320DB    push        0
 004320DD    push        0
 004320DF    push        0
 004320E1    push        ebx
 004320E2    push        esi
 004320E3    push        edi
 004320E4    mov         dword ptr [ebp-14],ecx
 004320E7    mov         dword ptr [ebp-10],edx
 004320EA    mov         ebx,eax
 004320EC    mov         esi,dword ptr [ebp+8]
 004320EF    xor         eax,eax
 004320F1    push        ebp
 004320F2    push        432219
 004320F7    push        dword ptr fs:[eax]
 004320FA    mov         dword ptr fs:[eax],esp
 004320FD    test        byte ptr [ebp+0C],2
>00432101    je          0043211A
 00432103    lea         edx,[ebp-4]
 00432106    mov         eax,ebx
 00432108    call        AnsiUpperCase
 0043210D    lea         edx,[ebp-8]
 00432110    mov         eax,dword ptr [ebp-10]
 00432113    call        AnsiUpperCase
>00432118    jmp         0043212F
 0043211A    lea         eax,[ebp-4]
 0043211D    mov         edx,ebx
 0043211F    call        @LStrLAsg
 00432124    lea         eax,[ebp-8]
 00432127    mov         edx,dword ptr [ebp-10]
 0043212A    call        @LStrLAsg
 0043212F    lea         eax,[ebp-0C]
 00432132    mov         edx,ebx
 00432134    call        @LStrLAsg
 00432139    mov         eax,esi
 0043213B    call        @LStrClr
>00432140    jmp         004321EC
 00432145    mov         edx,dword ptr [ebp-4]
 00432148    mov         eax,dword ptr [ebp-8]
 0043214B    call        AnsiPos
 00432150    mov         ebx,eax
 00432152    test        ebx,ebx
>00432154    jne         00432165
 00432156    mov         eax,esi
 00432158    mov         edx,dword ptr [ebp-0C]
 0043215B    call        @LStrCat
>00432160    jmp         004321F6
 00432165    push        dword ptr [esi]
 00432167    lea         eax,[ebp-1C]
 0043216A    push        eax
 0043216B    mov         ecx,ebx
 0043216D    dec         ecx
 0043216E    mov         edx,1
 00432173    mov         eax,dword ptr [ebp-0C]
 00432176    call        @LStrCopy
 0043217B    push        dword ptr [ebp-1C]
 0043217E    push        dword ptr [ebp-14]
 00432181    mov         eax,esi
 00432183    mov         edx,3
 00432188    call        @LStrCatN
 0043218D    mov         edi,dword ptr [ebp-10]
 00432190    test        edi,edi
>00432192    je          00432199
 00432194    sub         edi,4
 00432197    mov         edi,dword ptr [edi]
 00432199    lea         eax,[ebp-0C]
 0043219C    push        eax
 0043219D    lea         edx,[edi+ebx]
 004321A0    mov         ecx,7FFFFFFF
 004321A5    mov         eax,dword ptr [ebp-0C]
 004321A8    call        @LStrCopy
 004321AD    test        byte ptr [ebp+0C],1
>004321B1    jne         004321BF
 004321B3    mov         eax,esi
 004321B5    mov         edx,dword ptr [ebp-0C]
 004321B8    call        @LStrCat
>004321BD    jmp         004321F6
 004321BF    mov         eax,dword ptr [ebp-8]
 004321C2    mov         dword ptr [ebp-18],eax
 004321C5    cmp         dword ptr [ebp-18],0
>004321C9    je          004321D6
 004321CB    mov         eax,dword ptr [ebp-18]
 004321CE    sub         eax,4
 004321D1    mov         eax,dword ptr [eax]
 004321D3    mov         dword ptr [ebp-18],eax
 004321D6    lea         eax,[ebp-4]
 004321D9    push        eax
 004321DA    mov         edx,ebx
 004321DC    add         edx,dword ptr [ebp-18]
 004321DF    mov         ecx,7FFFFFFF
 004321E4    mov         eax,dword ptr [ebp-4]
 004321E7    call        @LStrCopy
 004321EC    cmp         dword ptr [ebp-4],0
>004321F0    jne         00432145
 004321F6    xor         eax,eax
 004321F8    pop         edx
 004321F9    pop         ecx
 004321FA    pop         ecx
 004321FB    mov         dword ptr fs:[eax],edx
 004321FE    push        432220
 00432203    lea         eax,[ebp-1C]
 00432206    call        @LStrClr
 0043220B    lea         eax,[ebp-0C]
 0043220E    mov         edx,3
 00432213    call        @LStrArrayClr
 00432218    ret
>00432219    jmp         @HandleFinally
>0043221E    jmp         00432203
 00432220    pop         edi
 00432221    pop         esi
 00432222    pop         ebx
 00432223    mov         esp,ebp
 00432225    pop         ebp
 00432226    ret         8
*}
end;

//0043222C
function CompareStr(const S1:AnsiString; const S2:AnsiString):Integer;
begin
{*
 0043222C    cmp         eax,edx
>0043222E    je          0043227E
 00432230    test        eax,edx
>00432232    je          00432281
 00432234    movzx       ecx,byte ptr [edx]
 00432237    cmp         cl,byte ptr [eax]
>00432239    je          00432241
 0043223B    movzx       eax,byte ptr [eax]
 0043223E    sub         eax,ecx
 00432240    ret
 00432241    push        ebx
 00432242    mov         ebx,dword ptr [eax-4]
 00432245    xor         ecx,ecx
 00432247    sub         ebx,dword ptr [edx-4]
 0043224A    push        ebx
 0043224B    adc         ecx,0FFFFFFFF
 0043224E    and         ecx,ebx
 00432250    sub         ecx,dword ptr [eax-4]
 00432253    sub         eax,ecx
 00432255    sub         edx,ecx
 00432257    mov         ebx,dword ptr [ecx+eax]
 0043225A    xor         ebx,dword ptr [ecx+edx]
>0043225D    jne         00432267
 0043225F    add         ecx,4
>00432262    js          00432257
 00432264    pop         eax
 00432265    pop         ebx
 00432266    ret
 00432267    bsf         ebx,ebx
 0043226A    shr         ebx,3
 0043226D    add         ecx,ebx
>0043226F    jns         00432264
 00432271    movzx       eax,byte ptr [ecx+eax]
 00432275    movzx       edx,byte ptr [ecx+edx]
 00432279    sub         eax,edx
 0043227B    pop         ebx
 0043227C    pop         ebx
 0043227D    ret
 0043227E    xor         eax,eax
 00432280    ret
 00432281    test        eax,eax
>00432283    je          0043228D
 00432285    test        edx,edx
>00432287    jne         00432234
 00432289    mov         eax,dword ptr [eax-4]
 0043228C    ret
 0043228D    sub         eax,dword ptr [edx-4]
 00432290    ret
*}
end;

//00432294
function AnsiUpperCase(const S:AnsiString):AnsiString;
begin
{*
 00432294    push        ebx
 00432295    push        esi
 00432296    push        edi
 00432297    mov         edi,edx
 00432299    mov         esi,eax
 0043229B    mov         eax,esi
 0043229D    test        eax,eax
>0043229F    je          004322A6
 004322A1    sub         eax,4
 004322A4    mov         eax,dword ptr [eax]
 004322A6    mov         ebx,eax
 004322A8    push        0
 004322AA    mov         eax,esi
 004322AC    call        @LStrToPChar
 004322B1    mov         edx,eax
 004322B3    mov         eax,edi
 004322B5    mov         ecx,ebx
 004322B7    call        @LStrFromPCharLen
 004322BC    test        ebx,ebx
>004322BE    jle         004322C9
 004322C0    push        ebx
 004322C1    mov         eax,dword ptr [edi]
 004322C3    push        eax
 004322C4    call        user32.CharUpperBuffA
 004322C9    pop         edi
 004322CA    pop         esi
 004322CB    pop         ebx
 004322CC    ret
*}
end;

//004322D0
function AnsiPos(const Substr:AnsiString; const S:AnsiString):Integer;
begin
{*
 004322D0    push        ebx
 004322D1    push        esi
 004322D2    push        edi
 004322D3    push        ebp
 004322D4    mov         esi,edx
 004322D6    mov         ebx,eax
 004322D8    xor         edi,edi
 004322DA    mov         eax,ebx
 004322DC    call        @LStrToPChar
 004322E1    push        eax
 004322E2    mov         eax,esi
 004322E4    call        @LStrToPChar
 004322E9    mov         ebp,eax
 004322EB    mov         eax,ebp
 004322ED    pop         edx
 004322EE    call        AnsiStrPos
 004322F3    mov         ebx,eax
 004322F5    test        ebx,ebx
>004322F7    je          004322FE
 004322F9    mov         edi,ebx
 004322FB    sub         edi,ebp
 004322FD    inc         edi
 004322FE    mov         eax,edi
 00432300    pop         ebp
 00432301    pop         edi
 00432302    pop         esi
 00432303    pop         ebx
 00432304    ret
*}
end;

//00432308
{*procedure sub_00432308(?:?; ?:UString; ?:UString; ?:?);
begin
 00432308    push        ebp
 00432309    mov         ebp,esp
 0043230B    push        ebx
 0043230C    push        esi
 0043230D    push        edi
 0043230E    mov         edi,ecx
 00432310    mov         esi,edx
 00432312    mov         ebx,eax
 00432314    movzx       eax,byte ptr ds:[432334];0x1 gvar_00432334
 0043231B    push        eax
 0043231C    mov         eax,dword ptr [ebp+8]
 0043231F    push        eax
 00432320    mov         ecx,edi
 00432322    mov         edx,esi
 00432324    mov         eax,ebx
 00432326    call        StringReplace
 0043232B    pop         edi
 0043232C    pop         esi
 0043232D    pop         ebx
 0043232E    pop         ebp
 0043232F    ret         4
end;*}

//00432338
function StrPos(const Str1:PAnsiChar; const Str2:PAnsiChar):PAnsiChar;
begin
{*
 00432338    push        edi
 00432339    push        esi
 0043233A    push        ebx
 0043233B    or          eax,eax
>0043233D    je          00432383
 0043233F    or          edx,edx
>00432341    je          00432383
 00432343    mov         ebx,eax
 00432345    mov         edi,edx
 00432347    xor         al,al
 00432349    mov         ecx,0FFFFFFFF
 0043234E    repne scas  byte ptr [edi]
 00432350    not         ecx
 00432352    dec         ecx
>00432353    je          00432383
 00432355    mov         esi,ecx
 00432357    mov         edi,ebx
 00432359    mov         ecx,0FFFFFFFF
 0043235E    repne scas  byte ptr [edi]
 00432360    not         ecx
 00432362    sub         ecx,esi
>00432364    jbe         00432383
 00432366    mov         edi,ebx
 00432368    lea         ebx,[esi-1]
 0043236B    mov         esi,edx
 0043236D    lods        byte ptr [esi]
 0043236E    repne scas  byte ptr [edi]
>00432370    jne         00432383
 00432372    mov         eax,ecx
 00432374    push        edi
 00432375    mov         ecx,ebx
 00432377    repe cmps   byte ptr [esi],byte ptr [edi]
 00432379    pop         edi
 0043237A    mov         ecx,eax
>0043237C    jne         0043236B
 0043237E    lea         eax,[edi-1]
>00432381    jmp         00432385
 00432383    xor         eax,eax
 00432385    pop         ebx
 00432386    pop         esi
 00432387    pop         edi
 00432388    ret
*}
end;

//0043238C
function AnsiStrPos(Str:PAnsiChar; SubStr:PAnsiChar):PAnsiChar;
begin
{*
 0043238C    push        ebx
 0043238D    push        esi
 0043238E    push        edi
 0043238F    push        ebp
 00432390    add         esp,0FFFFFFF8
 00432393    mov         ebp,edx
 00432395    mov         esi,eax
 00432397    xor         ebx,ebx
 00432399    test        esi,esi
>0043239B    je          00432422
 004323A1    cmp         byte ptr [esi],0
>004323A4    je          00432422
 004323A6    test        ebp,ebp
>004323A8    je          00432422
 004323AA    cmp         byte ptr [ebp],0
>004323AE    je          00432422
 004323B0    mov         eax,esi
 004323B2    call        @PCharLen
 004323B7    mov         dword ptr [esp],eax
 004323BA    mov         eax,ebp
 004323BC    call        @PCharLen
 004323C1    mov         edi,eax
 004323C3    mov         edx,ebp
 004323C5    mov         eax,esi
 004323C7    call        StrPos
 004323CC    mov         ebx,eax
>004323CE    jmp         0043240F
 004323D0    mov         edx,ebx
 004323D2    sub         edx,esi
 004323D4    mov         eax,esi
 004323D6    call        StrByteType
 004323DB    mov         byte ptr [esp+4],al
 004323DF    cmp         byte ptr [esp+4],2
>004323E4    je          004323FB
 004323E6    push        edi
 004323E7    push        ebp
 004323E8    push        edi
 004323E9    push        ebx
 004323EA    push        0
 004323EC    push        400
 004323F1    call        kernel32.CompareStringA
 004323F6    cmp         eax,2
>004323F9    je          00432422
 004323FB    cmp         byte ptr [esp+4],1
>00432400    jne         00432403
 00432402    inc         ebx
 00432403    inc         ebx
 00432404    mov         edx,ebp
 00432406    mov         eax,ebx
 00432408    call        StrPos
 0043240D    mov         ebx,eax
 0043240F    test        ebx,ebx
>00432411    je          00432420
 00432413    mov         eax,ebx
 00432415    sub         eax,esi
 00432417    mov         edx,dword ptr [esp]
 0043241A    sub         edx,eax
 0043241C    cmp         edi,edx
>0043241E    jbe         004323D0
 00432420    xor         ebx,ebx
 00432422    mov         eax,ebx
 00432424    pop         ecx
 00432425    pop         edx
 00432426    pop         ebp
 00432427    pop         edi
 00432428    pop         esi
 00432429    pop         ebx
 0043242A    ret
*}
end;

//0043242C
{*function sub_0043242C(?:?; ?:?):?;
begin
 0043242C    push        ebx
 0043242D    push        esi
 0043242E    push        edi
 0043242F    push        ebp
 00432430    mov         edi,edx
 00432432    mov         esi,eax
 00432434    xor         ebx,ebx
 00432436    test        esi,esi
>00432438    je          004324A6
 0043243A    cmp         byte ptr [esi+edi],0
>0043243E    je          004324A6
 00432440    test        edi,edi
>00432442    jne         0043245E
 00432444    movzx       eax,byte ptr [esi]
 00432447    mov         edx,dword ptr ds:[7C4EA0];^gvar_0079EE20
 0043244D    movzx       eax,al
 00432450    bt          dword ptr [edx],eax
 00432453    setb        al
 00432456    test        al,al
>00432458    je          004324A6
 0043245A    mov         bl,1
>0043245C    jmp         004324A6
 0043245E    mov         ebp,edi
 00432460    dec         ebp
>00432461    jmp         00432464
 00432463    dec         ebp
 00432464    test        ebp,ebp
>00432466    jl          00432475
 00432468    movzx       eax,byte ptr [esi+ebp]
 0043246C    call        0041D558
 00432471    test        al,al
>00432473    jne         00432463
 00432475    mov         eax,edi
 00432477    sub         eax,ebp
 00432479    and         eax,80000001
>0043247E    jns         00432485
 00432480    dec         eax
 00432481    or          eax,0FFFFFFFE
 00432484    inc         eax
 00432485    test        eax,eax
>00432487    jne         0043248D
 00432489    mov         bl,2
>0043248B    jmp         004324A6
 0043248D    movzx       eax,byte ptr [esi+edi]
 00432491    mov         edx,dword ptr ds:[7C4EA0];^gvar_0079EE20
 00432497    movzx       eax,al
 0043249A    bt          dword ptr [edx],eax
 0043249D    setb        al
 004324A0    test        al,al
>004324A2    je          004324A6
 004324A4    mov         bl,1
 004324A6    mov         eax,ebx
 004324A8    pop         ebp
 004324A9    pop         edi
 004324AA    pop         esi
 004324AB    pop         ebx
 004324AC    ret
end;*}

//004324B0
function StrByteType(Str:PAnsiChar; Index:Cardinal):TMbcsByteType;
begin
{*
 004324B0    push        ebx
 004324B1    push        esi
 004324B2    mov         esi,edx
 004324B4    mov         ebx,eax
 004324B6    xor         eax,eax
 004324B8    mov         edx,dword ptr ds:[7C4EF4];^gvar_007C7CB8:Cardinal
 004324BE    cmp         byte ptr [edx+0C],0
>004324C2    je          004324CD
 004324C4    mov         edx,esi
 004324C6    mov         eax,ebx
 004324C8    call        0043242C
 004324CD    pop         esi
 004324CE    pop         ebx
 004324CF    ret
*}
end;

Initialization
//0079C5B0
{*
 0079C5B0    sub         dword ptr ds:[7C9F68],1
>0079C5B7    jae         0079C5C3
 0079C5B9    mov         eax,4324D0
 0079C5BE    call        @InitImports
 0079C5C3    ret
*}
Finalization
end.