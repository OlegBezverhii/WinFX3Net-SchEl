//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit System.Win.ComObj;

interface

uses
  SysUtils, Classes;

type
  EOleError = class(Exception)
  end;
  EOleSysError = class(EOleError)
  published
    constructor Create(HelpContext:Integer; ErrorCode:HRESULT);//004D6284
  public
    FErrorCode:HRESULT;//f18
  end;
  EOleException = class(EOleSysError)
  published
    constructor Create(HelpContext:Integer; HelpFile:string; Source:string; ErrorCode:HRESULT);//004D635C
  public
    FSource:string;//f1C
    FHelpFile:string;//f20
  end;
  :91 = array of WideString;
//elSize = 4
//varType equivalent: varOleStr;
    function DoSetErrorInfo(const Description:WideString; HelpContext:Integer; ErrorCode:HRESULT; const ErrorIID:TGUID; const ProgID:WideString; const HelpFileName:WideString):HRESULT;//004D6020
    function HandleSafeCallException(ExceptObject:TObject; ExceptAddr:Pointer; const ErrorIID:TGUID; const ProgID:WideString; const HelpFileName:WideString):HRESULT;//004D6148
    function TrimPunctuation(const S:UnicodeString):UnicodeString;//004D6208
    procedure OleError(ErrorCode:HRESULT);//004D63F4
    procedure OleCheck(Result:HRESULT);//004D6410
    function ProgIDToClassID(const ProgID:UnicodeString):TGUID;//004D6424
    function CreateOleObject(const ClassName:UnicodeString):IDispatch;//004D6480
    procedure LoadComExProcs;//004D65DC
    function CreateSafeCallErrorExceptionObject(ErrorCode:Integer):Exception;//004D6760
    procedure SafeCallError(ErrorCode:Integer; ErrorAddr:Pointer);//004D6884
    procedure DispatchInvoke(const Dispatch:IDispatch; CallDesc:PCallDesc; DispIDs:ActiveX.PDispIDList; Params:Pointer; Result:PVariant);//004D6898
    procedure GetIDsOfNames(const Dispatch:IDispatch; Names:PWideChar; NameCount:Integer; DispIDs:ActiveX.PDispIDList);//004D6B14
    procedure RaiseException;//004D6C74
    procedure VarDispInvoke(Result:PVariant; const Instance:Variant; CallDesc:PCallDesc; Params:Pointer); cdecl;//004D6C8C
    procedure DispatchInvokeError(Status:Integer; const ExcepInfo:ActiveX.TExcepInfo);//004D6D28
    function _DispReturnPointer(Val:Pointer):Pointer;//004D6DD0
    function _DispReturnInteger(Val:Integer):Integer;//004D6DD4
    function _DispReturnInt64(Val:Int64):Int64;//004D6DD8
    procedure DispCallByID(Result:Pointer; const Dispatch:IDispatch; DispDesc:PDispDesc; Params:Pointer); cdecl;//004D6DF8
    procedure InitComObj;//004D7094

implementation

//004D6020
function DoSetErrorInfo(const Description:WideString; HelpContext:Integer; ErrorCode:HRESULT; const ErrorIID:TGUID; const ProgID:WideString; const HelpFileName:WideString):HRESULT;
begin
{*
 004D6020    push        ebp
 004D6021    mov         ebp,esp
 004D6023    push        0
 004D6025    push        0
 004D6027    push        0
 004D6029    push        ebx
 004D602A    push        esi
 004D602B    push        edi
 004D602C    mov         dword ptr [ebp-0C],ecx
 004D602F    mov         edi,edx
 004D6031    mov         esi,eax
 004D6033    xor         eax,eax
 004D6035    push        ebp
 004D6036    push        4D6123
 004D603B    push        dword ptr fs:[eax]
 004D603E    mov         dword ptr fs:[eax],esp
 004D6041    mov         ebx,8000FFFF
 004D6046    lea         eax,[ebp-4]
 004D6049    call        @IntfClear
 004D604E    push        eax
 004D604F    call        oleaut32.CreateErrorInfo
 004D6054    test        eax,80000000
 004D6059    sete        al
 004D605C    test        al,al
>004D605E    je          004D6105
 004D6064    mov         eax,dword ptr [ebp+10]
 004D6067    push        eax
 004D6068    mov         eax,dword ptr [ebp-4]
 004D606B    push        eax
 004D606C    mov         eax,dword ptr [eax]
 004D606E    call        dword ptr [eax+0C]
 004D6071    mov         eax,dword ptr [ebp+0C]
 004D6074    xor         edx,edx
 004D6076    call        @WStrEqual
>004D607B    je          004D608F
 004D607D    mov         eax,dword ptr [ebp+0C]
 004D6080    call        @WStrToPWChar
 004D6085    push        eax
 004D6086    mov         eax,dword ptr [ebp-4]
 004D6089    push        eax
 004D608A    mov         eax,dword ptr [eax]
 004D608C    call        dword ptr [eax+10]
 004D608F    mov         eax,dword ptr [ebp+8]
 004D6092    xor         edx,edx
 004D6094    call        @WStrEqual
>004D6099    je          004D60AD
 004D609B    mov         eax,dword ptr [ebp+8]
 004D609E    call        @WStrToPWChar
 004D60A3    push        eax
 004D60A4    mov         eax,dword ptr [ebp-4]
 004D60A7    push        eax
 004D60A8    mov         eax,dword ptr [eax]
 004D60AA    call        dword ptr [eax+18]
 004D60AD    mov         eax,esi
 004D60AF    xor         edx,edx
 004D60B1    call        @WStrEqual
>004D60B6    je          004D60C9
 004D60B8    mov         eax,esi
 004D60BA    call        @WStrToPWChar
 004D60BF    push        eax
 004D60C0    mov         eax,dword ptr [ebp-4]
 004D60C3    push        eax
 004D60C4    mov         eax,dword ptr [eax]
 004D60C6    call        dword ptr [eax+14]
 004D60C9    test        edi,edi
>004D60CB    je          004D60D7
 004D60CD    push        edi
 004D60CE    mov         eax,dword ptr [ebp-4]
 004D60D1    push        eax
 004D60D2    mov         eax,dword ptr [eax]
 004D60D4    call        dword ptr [eax+1C]
 004D60D7    cmp         dword ptr [ebp-0C],0
>004D60DB    je          004D60E0
 004D60DD    mov         ebx,dword ptr [ebp-0C]
 004D60E0    lea         eax,[ebp-8]
 004D60E3    call        @IntfClear
 004D60E8    push        eax
 004D60E9    push        4D6138
 004D60EE    mov         eax,dword ptr [ebp-4]
 004D60F1    push        eax
 004D60F2    mov         eax,dword ptr [eax]
 004D60F4    call        dword ptr [eax]
 004D60F6    test        eax,eax
>004D60F8    jne         004D6105
 004D60FA    mov         eax,dword ptr [ebp-8]
 004D60FD    push        eax
 004D60FE    push        0
 004D6100    call        oleaut32.SetErrorInfo
 004D6105    xor         eax,eax
 004D6107    pop         edx
 004D6108    pop         ecx
 004D6109    pop         ecx
 004D610A    mov         dword ptr fs:[eax],edx
 004D610D    push        4D612A
 004D6112    lea         eax,[ebp-8]
 004D6115    call        @IntfClear
 004D611A    lea         eax,[ebp-4]
 004D611D    call        @IntfClear
 004D6122    ret
>004D6123    jmp         @HandleFinally
>004D6128    jmp         004D6112
 004D612A    mov         eax,ebx
 004D612C    pop         edi
 004D612D    pop         esi
 004D612E    pop         ebx
 004D612F    mov         esp,ebp
 004D6131    pop         ebp
 004D6132    ret         0C
*}
end;

//004D6148
function HandleSafeCallException(ExceptObject:TObject; ExceptAddr:Pointer; const ErrorIID:TGUID; const ProgID:WideString; const HelpFileName:WideString):HRESULT;
begin
{*
 004D6148    push        ebp
 004D6149    mov         ebp,esp
 004D614B    push        0
 004D614D    push        ebx
 004D614E    push        esi
 004D614F    push        edi
 004D6150    mov         edi,ecx
 004D6152    xor         edx,edx
 004D6154    push        ebp
 004D6155    push        4D61F5
 004D615A    push        dword ptr fs:[edx]
 004D615D    mov         dword ptr fs:[edx],esp
 004D6160    mov         ebx,eax
 004D6162    mov         eax,ebx
 004D6164    mov         edx,dword ptr ds:[4174D0];Exception
 004D616A    call        @IsClass
 004D616F    test        al,al
>004D6171    je          004D61BB
 004D6173    lea         eax,[ebp-4]
 004D6176    mov         esi,ebx
 004D6178    mov         edx,dword ptr [esi+4]
 004D617B    call        @WStrFromUStr
 004D6180    mov         esi,dword ptr [esi+8]
 004D6183    mov         eax,ebx
 004D6185    mov         edx,dword ptr ds:[4D5CF0];EOleSysError
 004D618B    call        @IsClass
 004D6190    test        al,al
>004D6192    je          004D619F
 004D6194    cmp         dword ptr [ebx+18],0
>004D6198    jge         004D619F
 004D619A    mov         eax,dword ptr [ebx+18]
>004D619D    jmp         004D61C8
 004D619F    mov         eax,ebx
 004D61A1    mov         edx,dword ptr ds:[418164];EAbort
 004D61A7    call        @IsClass
 004D61AC    test        al,al
>004D61AE    je          004D61B7
 004D61B0    mov         eax,0A0004004
>004D61B5    jmp         004D61C8
 004D61B7    xor         eax,eax
>004D61B9    jmp         004D61C8
 004D61BB    lea         eax,[ebp-4]
 004D61BE    call        @WStrClr
 004D61C3    or          esi,0FFFFFFFF
 004D61C6    xor         eax,eax
 004D61C8    push        edi
 004D61C9    mov         edx,dword ptr [ebp+0C]
 004D61CC    push        edx
 004D61CD    mov         edx,dword ptr [ebp+8]
 004D61D0    push        edx
 004D61D1    mov         ecx,eax
 004D61D3    mov         edx,esi
 004D61D5    mov         eax,dword ptr [ebp-4]
 004D61D8    call        DoSetErrorInfo
 004D61DD    mov         ebx,eax
 004D61DF    xor         eax,eax
 004D61E1    pop         edx
 004D61E2    pop         ecx
 004D61E3    pop         ecx
 004D61E4    mov         dword ptr fs:[eax],edx
 004D61E7    push        4D61FC
 004D61EC    lea         eax,[ebp-4]
 004D61EF    call        @WStrClr
 004D61F4    ret
>004D61F5    jmp         @HandleFinally
>004D61FA    jmp         004D61EC
 004D61FC    mov         eax,ebx
 004D61FE    pop         edi
 004D61FF    pop         esi
 004D6200    pop         ebx
 004D6201    pop         ecx
 004D6202    pop         ebp
 004D6203    ret         8
*}
end;

//004D6208
function TrimPunctuation(const S:UnicodeString):UnicodeString;
begin
{*
 004D6208    push        ebx
 004D6209    push        esi
 004D620A    mov         ebx,edx
 004D620C    mov         esi,eax
 004D620E    mov         eax,ebx
 004D6210    mov         edx,esi
 004D6212    call        @UStrAsg
 004D6217    mov         eax,dword ptr [ebx]
 004D6219    call        AnsiLastChar
 004D621E    mov         esi,eax
>004D6220    jmp         004D6244
 004D6222    mov         eax,dword ptr [ebx]
 004D6224    call        @UStrToPWChar
 004D6229    mov         edx,esi
 004D622B    sub         edx,eax
 004D622D    sar         edx,1
>004D622F    jns         004D6234
 004D6231    adc         edx,0
 004D6234    mov         eax,ebx
 004D6236    call        @UStrSetLength
 004D623B    mov         eax,dword ptr [ebx]
 004D623D    call        AnsiLastChar
 004D6242    mov         esi,eax
 004D6244    mov         eax,dword ptr [ebx]
 004D6246    call        @UStrLen
 004D624B    test        eax,eax
>004D624D    jle         004D6260
 004D624F    mov         edx,4D6264
 004D6254    movzx       eax,word ptr [esi]
 004D6257    call        CharInSet
 004D625C    test        al,al
>004D625E    jne         004D6222
 004D6260    pop         esi
 004D6261    pop         ebx
 004D6262    ret
*}
end;

//004D6284
constructor EOleSysError.Create(HelpContext:Integer; ErrorCode:HRESULT);
begin
{*
 004D6284    push        ebp
 004D6285    mov         ebp,esp
 004D6287    add         esp,0FFFFFFEC
 004D628A    push        ebx
 004D628B    push        esi
 004D628C    push        edi
 004D628D    xor         ebx,ebx
 004D628F    mov         dword ptr [ebp-0C],ebx
 004D6292    mov         dword ptr [ebp-4],ebx
 004D6295    test        dl,dl
>004D6297    je          004D62A1
 004D6299    add         esp,0FFFFFFF0
 004D629C    call        @ClassCreate
 004D62A1    mov         edi,ecx
 004D62A3    mov         byte ptr [ebp-5],dl
 004D62A6    mov         ebx,eax
 004D62A8    mov         esi,dword ptr [ebp+0C]
 004D62AB    xor         eax,eax
 004D62AD    push        ebp
 004D62AE    push        4D6330
 004D62B3    push        dword ptr fs:[eax]
 004D62B6    mov         dword ptr fs:[eax],esp
 004D62B9    lea         eax,[ebp-4]
 004D62BC    mov         edx,edi
 004D62BE    call        @UStrLAsg
 004D62C3    cmp         dword ptr [ebp-4],0
>004D62C7    jne         004D62FF
 004D62C9    lea         ecx,[ebp-4]
 004D62CC    xor         edx,edx
 004D62CE    mov         eax,esi
 004D62D0    call        00422CB4
 004D62D5    cmp         dword ptr [ebp-4],0
>004D62D9    jne         004D62FF
 004D62DB    push        0
 004D62DD    lea         edx,[ebp-0C]
 004D62E0    mov         eax,[007C4380];^SResString346:TResStringRec
 004D62E5    call        LoadResString
 004D62EA    mov         edx,dword ptr [ebp-0C]
 004D62ED    mov         dword ptr [ebp-14],esi
 004D62F0    mov         byte ptr [ebp-10],0
 004D62F4    lea         ecx,[ebp-14]
 004D62F7    lea         eax,[ebp-4]
 004D62FA    call        0041F6B8
 004D62FF    mov         eax,dword ptr [ebp+8]
 004D6302    push        eax
 004D6303    mov         ecx,dword ptr [ebp-4]
 004D6306    xor         edx,edx
 004D6308    mov         eax,ebx
 004D630A    call        Exception.CreateHelp
 004D630F    mov         dword ptr [ebx+18],esi
 004D6312    xor         eax,eax
 004D6314    pop         edx
 004D6315    pop         ecx
 004D6316    pop         ecx
 004D6317    mov         dword ptr fs:[eax],edx
 004D631A    push        4D6337
 004D631F    lea         eax,[ebp-0C]
 004D6322    call        @UStrClr
 004D6327    lea         eax,[ebp-4]
 004D632A    call        @UStrClr
 004D632F    ret
>004D6330    jmp         @HandleFinally
>004D6335    jmp         004D631F
 004D6337    mov         eax,ebx
 004D6339    cmp         byte ptr [ebp-5],0
>004D633D    je          004D634E
 004D633F    call        @AfterConstruction
 004D6344    pop         dword ptr fs:[0]
 004D634B    add         esp,0C
 004D634E    mov         eax,ebx
 004D6350    pop         edi
 004D6351    pop         esi
 004D6352    pop         ebx
 004D6353    mov         esp,ebp
 004D6355    pop         ebp
 004D6356    ret         8
*}
end;

//004D635C
constructor EOleException.Create(HelpContext:Integer; HelpFile:string; Source:string; ErrorCode:HRESULT);
begin
{*
 004D635C    push        ebp
 004D635D    mov         ebp,esp
 004D635F    push        0
 004D6361    push        ebx
 004D6362    push        esi
 004D6363    push        edi
 004D6364    test        dl,dl
>004D6366    je          004D6370
 004D6368    add         esp,0FFFFFFF0
 004D636B    call        @ClassCreate
 004D6370    mov         esi,ecx
 004D6372    mov         ebx,edx
 004D6374    mov         edi,eax
 004D6376    xor         eax,eax
 004D6378    push        ebp
 004D6379    push        4D63CE
 004D637E    push        dword ptr fs:[eax]
 004D6381    mov         dword ptr fs:[eax],esp
 004D6384    mov         eax,dword ptr [ebp+14]
 004D6387    push        eax
 004D6388    mov         eax,dword ptr [ebp+8]
 004D638B    push        eax
 004D638C    lea         edx,[ebp-4]
 004D638F    mov         eax,esi
 004D6391    call        TrimPunctuation
 004D6396    mov         ecx,dword ptr [ebp-4]
 004D6399    xor         edx,edx
 004D639B    mov         eax,edi
 004D639D    call        EOleSysError.Create
 004D63A2    lea         eax,[edi+1C]
 004D63A5    mov         edx,dword ptr [ebp+10]
 004D63A8    call        @UStrAsg
 004D63AD    lea         eax,[edi+20]
 004D63B0    mov         edx,dword ptr [ebp+0C]
 004D63B3    call        @UStrAsg
 004D63B8    xor         eax,eax
 004D63BA    pop         edx
 004D63BB    pop         ecx
 004D63BC    pop         ecx
 004D63BD    mov         dword ptr fs:[eax],edx
 004D63C0    push        4D63D5
 004D63C5    lea         eax,[ebp-4]
 004D63C8    call        @UStrClr
 004D63CD    ret
>004D63CE    jmp         @HandleFinally
>004D63D3    jmp         004D63C5
 004D63D5    mov         eax,edi
 004D63D7    test        bl,bl
>004D63D9    je          004D63EA
 004D63DB    call        @AfterConstruction
 004D63E0    pop         dword ptr fs:[0]
 004D63E7    add         esp,0C
 004D63EA    mov         eax,edi
 004D63EC    pop         edi
 004D63ED    pop         esi
 004D63EE    pop         ebx
 004D63EF    pop         ecx
 004D63F0    pop         ebp
 004D63F1    ret         10
*}
end;

//004D63F4
procedure OleError(ErrorCode:HRESULT);
begin
{*
 004D63F4    push        ebx
 004D63F5    mov         ebx,eax
 004D63F7    push        ebx
 004D63F8    push        0
 004D63FA    xor         ecx,ecx
 004D63FC    mov         dl,1
 004D63FE    mov         eax,[004D5CF0];EOleSysError
 004D6403    call        EOleSysError.Create
 004D6408    call        @RaiseExcept
 004D640D    pop         ebx
 004D640E    ret
*}
end;

//004D6410
procedure OleCheck(Result:HRESULT);
begin
{*
 004D6410    test        eax,80000000
 004D6415    sete        dl
 004D6418    test        dl,dl
>004D641A    jne         004D6421
 004D641C    call        OleError
 004D6421    ret
*}
end;

//004D6424
function ProgIDToClassID(const ProgID:UnicodeString):TGUID;
begin
{*
 004D6424    push        ebp
 004D6425    mov         ebp,esp
 004D6427    push        0
 004D6429    push        ebx
 004D642A    push        esi
 004D642B    mov         esi,edx
 004D642D    mov         ebx,eax
 004D642F    xor         eax,eax
 004D6431    push        ebp
 004D6432    push        4D6471
 004D6437    push        dword ptr fs:[eax]
 004D643A    mov         dword ptr fs:[eax],esp
 004D643D    push        esi
 004D643E    lea         eax,[ebp-4]
 004D6441    mov         edx,ebx
 004D6443    call        @WStrFromUStr
 004D6448    mov         eax,dword ptr [ebp-4]
 004D644B    call        @WStrToPWChar
 004D6450    push        eax
 004D6451    call        ole32.CLSIDFromProgID
 004D6456    call        OleCheck
 004D645B    xor         eax,eax
 004D645D    pop         edx
 004D645E    pop         ecx
 004D645F    pop         ecx
 004D6460    mov         dword ptr fs:[eax],edx
 004D6463    push        4D6478
 004D6468    lea         eax,[ebp-4]
 004D646B    call        @WStrClr
 004D6470    ret
>004D6471    jmp         @HandleFinally
>004D6476    jmp         004D6468
 004D6478    pop         esi
 004D6479    pop         ebx
 004D647A    pop         ecx
 004D647B    pop         ebp
 004D647C    ret
*}
end;

//004D6480
function CreateOleObject(const ClassName:UnicodeString):IDispatch;
begin
{*
 004D6480    push        ebp
 004D6481    mov         ebp,esp
 004D6483    add         esp,0FFFFFFD8
 004D6486    push        ebx
 004D6487    push        esi
 004D6488    push        edi
 004D6489    xor         ecx,ecx
 004D648B    mov         dword ptr [ebp-18],ecx
 004D648E    mov         ebx,edx
 004D6490    mov         dword ptr [ebp-4],eax
 004D6493    xor         eax,eax
 004D6495    push        ebp
 004D6496    push        4D658E
 004D649B    push        dword ptr fs:[eax]
 004D649E    mov         dword ptr fs:[eax],esp
 004D64A1    xor         eax,eax
 004D64A3    push        ebp
 004D64A4    push        4D651C
 004D64A9    push        dword ptr fs:[eax]
 004D64AC    mov         dword ptr fs:[eax],esp
 004D64AF    lea         edx,[ebp-14]
 004D64B2    mov         eax,dword ptr [ebp-4]
 004D64B5    call        ProgIDToClassID
 004D64BA    xor         eax,eax
 004D64BC    push        ebp
 004D64BD    push        4D650B
 004D64C2    push        dword ptr fs:[eax]
 004D64C5    mov         dword ptr fs:[eax],esp
 004D64C8    mov         eax,[007C4E38]
 004D64CD    movzx       eax,word ptr [eax]
 004D64D0    or          ax,8
 004D64D4    call        Set8087CW
 004D64D9    mov         eax,ebx
 004D64DB    call        @IntfClear
 004D64E0    push        eax
 004D64E1    push        4D659C
 004D64E6    push        5
 004D64E8    push        0
 004D64EA    lea         eax,[ebp-14]
 004D64ED    push        eax
 004D64EE    call        ole32.CoCreateInstance
 004D64F3    call        OleCheck
 004D64F8    xor         eax,eax
 004D64FA    pop         edx
 004D64FB    pop         ecx
 004D64FC    pop         ecx
 004D64FD    mov         dword ptr fs:[eax],edx
 004D6500    push        4D6512
 004D6505    call        Reset8087CW
 004D650A    ret
>004D650B    jmp         @HandleFinally
>004D6510    jmp         004D6505
 004D6512    xor         eax,eax
 004D6514    pop         edx
 004D6515    pop         ecx
 004D6516    pop         ecx
 004D6517    mov         dword ptr fs:[eax],edx
>004D651A    jmp         004D6578
>004D651C    jmp         @HandleOnException
 004D6521    dd          1
 004D6525    dd          004D5CF0;EOleSysError
 004D6529    dd          004D652D
 004D652D    mov         ebx,eax
 004D652F    mov         eax,dword ptr [ebx+18]
 004D6532    push        eax
 004D6533    push        0
 004D6535    lea         eax,[ebp-18]
 004D6538    push        eax
 004D6539    mov         eax,dword ptr [ebx+4]
 004D653C    mov         dword ptr [ebp-28],eax
 004D653F    mov         byte ptr [ebp-24],11
 004D6543    mov         eax,dword ptr [ebp-4]
 004D6546    mov         dword ptr [ebp-20],eax
 004D6549    mov         byte ptr [ebp-1C],11
 004D654D    lea         edx,[ebp-28]
 004D6550    mov         ecx,1
 004D6555    mov         eax,4D65B8;'%s, ProgID: "%s"'
 004D655A    call        Format
 004D655F    mov         ecx,dword ptr [ebp-18]
 004D6562    mov         dl,1
 004D6564    mov         eax,[004D5CF0];EOleSysError
 004D6569    call        EOleSysError.Create
 004D656E    call        @RaiseExcept
 004D6573    call        @DoneExcept
 004D6578    xor         eax,eax
 004D657A    pop         edx
 004D657B    pop         ecx
 004D657C    pop         ecx
 004D657D    mov         dword ptr fs:[eax],edx
 004D6580    push        4D6595
 004D6585    lea         eax,[ebp-18]
 004D6588    call        @UStrClr
 004D658D    ret
>004D658E    jmp         @HandleFinally
>004D6593    jmp         004D6585
 004D6595    pop         edi
 004D6596    pop         esi
 004D6597    pop         ebx
 004D6598    mov         esp,ebp
 004D659A    pop         ebp
 004D659B    ret
*}
end;

//004D65DC
procedure LoadComExProcs;
begin
{*
 004D65DC    push        ebx
 004D65DD    push        4D6650
 004D65E2    call        kernel32.GetModuleHandleW
 004D65E7    mov         ebx,eax
 004D65E9    test        ebx,ebx
>004D65EB    je          004D664D
 004D65ED    push        4D6664
 004D65F2    push        ebx
 004D65F3    call        GetProcAddress
 004D65F8    mov         [007A10F4],eax
 004D65FD    push        4D668C
 004D6602    push        ebx
 004D6603    call        GetProcAddress
 004D6608    mov         [007A10F8],eax
 004D660D    push        4D66AC
 004D6612    push        ebx
 004D6613    call        GetProcAddress
 004D6618    mov         [007A10FC],eax
 004D661D    push        4D66D8
 004D6622    push        ebx
 004D6623    call        GetProcAddress
 004D6628    mov         [007A1100],eax
 004D662D    push        4D6708
 004D6632    push        ebx
 004D6633    call        GetProcAddress
 004D6638    mov         [007A1104],eax
 004D663D    push        4D6734
 004D6642    push        ebx
 004D6643    call        GetProcAddress
 004D6648    mov         [007A1108],eax
 004D664D    pop         ebx
 004D664E    ret
*}
end;

//004D6760
function CreateSafeCallErrorExceptionObject(ErrorCode:Integer):Exception;
begin
{*
 004D6760    push        ebp
 004D6761    mov         ebp,esp
 004D6763    mov         ecx,4
 004D6768    push        0
 004D676A    push        0
 004D676C    dec         ecx
>004D676D    jne         004D6768
 004D676F    push        ecx
 004D6770    push        ebx
 004D6771    mov         ebx,eax
 004D6773    xor         eax,eax
 004D6775    push        ebp
 004D6776    push        4D6876
 004D677B    push        dword ptr fs:[eax]
 004D677E    mov         dword ptr fs:[eax],esp
 004D6781    xor         eax,eax
 004D6783    mov         dword ptr [ebp-14],eax
 004D6786    lea         eax,[ebp-4]
 004D6789    call        @IntfClear
 004D678E    push        eax
 004D678F    push        0
 004D6791    call        oleaut32.GetErrorInfo
 004D6796    test        eax,eax
>004D6798    jne         004D67DD
 004D679A    lea         eax,[ebp-8]
 004D679D    call        @WStrClr
 004D67A2    push        eax
 004D67A3    mov         eax,dword ptr [ebp-4]
 004D67A6    push        eax
 004D67A7    mov         eax,dword ptr [eax]
 004D67A9    call        dword ptr [eax+10]
 004D67AC    lea         eax,[ebp-0C]
 004D67AF    call        @WStrClr
 004D67B4    push        eax
 004D67B5    mov         eax,dword ptr [ebp-4]
 004D67B8    push        eax
 004D67B9    mov         eax,dword ptr [eax]
 004D67BB    call        dword ptr [eax+14]
 004D67BE    lea         eax,[ebp-10]
 004D67C1    call        @WStrClr
 004D67C6    push        eax
 004D67C7    mov         eax,dword ptr [ebp-4]
 004D67CA    push        eax
 004D67CB    mov         eax,dword ptr [eax]
 004D67CD    call        dword ptr [eax+18]
 004D67D0    lea         eax,[ebp-14]
 004D67D3    push        eax
 004D67D4    mov         eax,dword ptr [ebp-4]
 004D67D7    push        eax
 004D67D8    mov         eax,dword ptr [eax]
 004D67DA    call        dword ptr [eax+1C]
 004D67DD    cmp         ebx,0A0004004
>004D67E3    jne         004D6807
 004D67E5    mov         eax,dword ptr [ebp-14]
 004D67E8    push        eax
 004D67E9    lea         eax,[ebp-18]
 004D67EC    mov         edx,dword ptr [ebp-0C]
 004D67EF    call        @UStrFromWStr
 004D67F4    mov         ecx,dword ptr [ebp-18]
 004D67F7    mov         dl,1
 004D67F9    mov         eax,[00418164];EAbort
 004D67FE    call        Exception.CreateHelp
 004D6803    mov         ebx,eax
>004D6805    jmp         004D6846
 004D6807    push        ebx
 004D6808    lea         eax,[ebp-1C]
 004D680B    mov         edx,dword ptr [ebp-8]
 004D680E    call        @UStrFromWStr
 004D6813    mov         eax,dword ptr [ebp-1C]
 004D6816    push        eax
 004D6817    lea         eax,[ebp-20]
 004D681A    mov         edx,dword ptr [ebp-10]
 004D681D    call        @UStrFromWStr
 004D6822    mov         eax,dword ptr [ebp-20]
 004D6825    push        eax
 004D6826    mov         eax,dword ptr [ebp-14]
 004D6829    push        eax
 004D682A    lea         eax,[ebp-24]
 004D682D    mov         edx,dword ptr [ebp-0C]
 004D6830    call        @UStrFromWStr
 004D6835    mov         ecx,dword ptr [ebp-24]
 004D6838    mov         dl,1
 004D683A    mov         eax,[004D5E4C];EOleException
 004D683F    call        EOleException.Create
 004D6844    mov         ebx,eax
 004D6846    xor         eax,eax
 004D6848    pop         edx
 004D6849    pop         ecx
 004D684A    pop         ecx
 004D684B    mov         dword ptr fs:[eax],edx
 004D684E    push        4D687D
 004D6853    lea         eax,[ebp-24]
 004D6856    mov         edx,4
 004D685B    call        @UStrArrayClr
 004D6860    lea         eax,[ebp-10]
 004D6863    mov         edx,3
 004D6868    call        @WStrArrayClr
 004D686D    lea         eax,[ebp-4]
 004D6870    call        @IntfClear
 004D6875    ret
>004D6876    jmp         @HandleFinally
>004D687B    jmp         004D6853
 004D687D    mov         eax,ebx
 004D687F    pop         ebx
 004D6880    mov         esp,ebp
 004D6882    pop         ebp
 004D6883    ret
*}
end;

//004D6884
procedure SafeCallError(ErrorCode:Integer; ErrorAddr:Pointer);
begin
{*
 004D6884    push        ebx
 004D6885    mov         ebx,edx
 004D6887    call        CreateSafeCallErrorExceptionObject
 004D688C    mov         edx,eax
 004D688E    push        ebx
 004D688F    mov         eax,edx
>004D6891    jmp         @RaiseExcept
 004D6896    pop         ebx
 004D6897    ret
*}
end;

//004D6898
procedure DispatchInvoke(const Dispatch:IDispatch; CallDesc:PCallDesc; DispIDs:ActiveX.PDispIDList; Params:Pointer; Result:PVariant);
begin
{*
 004D6898    push        ebp
 004D6899    mov         ebp,esp
 004D689B    add         esp,0FFFFFCC4
 004D68A1    push        ebx
 004D68A2    push        esi
 004D68A3    push        edi
 004D68A4    xor         ebx,ebx
 004D68A6    mov         dword ptr [ebp-4],ebx
 004D68A9    mov         esi,ecx
 004D68AB    mov         dword ptr [ebp-32C],edx
 004D68B1    mov         dword ptr [ebp-328],eax
 004D68B7    lea         eax,[ebp-24]
 004D68BA    mov         edx,dword ptr ds:[431DA0];tagEXCEPINFO
 004D68C0    call        @AddRefRecord
 004D68C5    mov         ecx,40
 004D68CA    lea         eax,[ebp-324]
 004D68D0    mov         edx,dword ptr ds:[429AC0];TStringRef
 004D68D6    call        @AddRefArray
 004D68DB    xor         eax,eax
 004D68DD    push        ebp
 004D68DE    push        4D6ACE
 004D68E3    push        dword ptr fs:[eax]
 004D68E6    mov         dword ptr fs:[eax],esp
 004D68E9    lea         eax,[ebp-324]
 004D68EF    xor         ecx,ecx
 004D68F1    mov         edx,300
 004D68F6    call        @FillChar
 004D68FB    push        0
 004D68FD    lea         eax,[ebp-4]
 004D6900    push        eax
 004D6901    lea         ecx,[ebp-324]
 004D6907    mov         edx,dword ptr [ebp+0C]
 004D690A    mov         eax,dword ptr [ebp-32C]
 004D6910    call        GetDispatchInvokeArgs
 004D6915    xor         edx,edx
 004D6917    push        ebp
 004D6918    push        4D6A4A
 004D691D    push        dword ptr fs:[edx]
 004D6920    mov         dword ptr fs:[edx],esp
 004D6923    mov         eax,dword ptr [ebp-32C]
 004D6929    movzx       eax,byte ptr [eax+1]
 004D692D    movzx       edx,al
 004D6930    mov         dword ptr [ebp-334],edx
 004D6936    test        al,al
>004D6938    jbe         004D6945
 004D693A    mov         eax,dword ptr [ebp-4]
 004D693D    mov         dword ptr [ebp-33C],eax
>004D6943    jmp         004D694D
 004D6945    xor         eax,eax
 004D6947    mov         dword ptr [ebp-33C],eax
 004D694D    mov         eax,dword ptr [ebp-32C]
 004D6953    movzx       eax,byte ptr [eax+2]
 004D6957    test        al,al
>004D6959    jbe         004D6966
 004D695B    lea         edx,[esi+4]
 004D695E    mov         dword ptr [ebp-338],edx
>004D6964    jmp         004D696E
 004D6966    xor         edx,edx
 004D6968    mov         dword ptr [ebp-338],edx
 004D696E    movzx       eax,al
 004D6971    mov         dword ptr [ebp-330],eax
 004D6977    mov         edi,dword ptr [esi]
 004D6979    mov         eax,dword ptr [ebp-32C]
 004D697F    movzx       ebx,byte ptr [eax]
 004D6982    cmp         ebx,4
>004D6985    jne         004D69B6
 004D6987    mov         eax,dword ptr [ebp-4]
 004D698A    movzx       eax,word ptr [eax]
 004D698D    and         ax,0FFF
 004D6991    cmp         ax,9
>004D6995    je          004D699D
 004D6997    cmp         ax,0D
>004D699B    jne         004D69A2
 004D699D    mov         ebx,0C
 004D69A2    mov         dword ptr [esi],0FFFFFFFD
 004D69A8    mov         dword ptr [ebp-338],esi
 004D69AE    inc         dword ptr [ebp-330]
>004D69B4    jmp         004D69EA
 004D69B6    cmp         ebx,1
>004D69B9    jne         004D69D4
 004D69BB    mov         eax,dword ptr [ebp-32C]
 004D69C1    cmp         byte ptr [eax+1],0
>004D69C5    jne         004D69D4
 004D69C7    cmp         dword ptr [ebp+8],0
>004D69CB    je          004D69D4
 004D69CD    mov         ebx,3
>004D69D2    jmp         004D69EA
 004D69D4    cmp         ebx,2
>004D69D7    jne         004D69EA
 004D69D9    mov         eax,dword ptr [ebp-32C]
 004D69DF    cmp         byte ptr [eax+1],0
>004D69E3    je          004D69EA
 004D69E5    mov         ebx,3
 004D69EA    lea         eax,[ebp-24]
 004D69ED    xor         ecx,ecx
 004D69EF    mov         edx,20
 004D69F4    call        @FillChar
 004D69F9    push        0
 004D69FB    lea         eax,[ebp-24]
 004D69FE    push        eax
 004D69FF    mov         eax,dword ptr [ebp+8]
 004D6A02    push        eax
 004D6A03    lea         eax,[ebp-33C]
 004D6A09    push        eax
 004D6A0A    push        ebx
 004D6A0B    push        0
 004D6A0D    mov         eax,[007C4748]
 004D6A12    push        eax
 004D6A13    push        edi
 004D6A14    mov         eax,dword ptr [ebp-328]
 004D6A1A    push        eax
 004D6A1B    mov         eax,dword ptr [eax]
 004D6A1D    call        dword ptr [eax+18]
 004D6A20    test        eax,eax
>004D6A22    je          004D6A2C
 004D6A24    lea         edx,[ebp-24]
 004D6A27    call        DispatchInvokeError
 004D6A2C    xor         eax,eax
 004D6A2E    pop         edx
 004D6A2F    pop         ecx
 004D6A30    pop         ecx
 004D6A31    mov         dword ptr fs:[eax],edx
 004D6A34    push        4D6A51
 004D6A39    xor         ecx,ecx
 004D6A3B    mov         edx,dword ptr [ebp-4]
 004D6A3E    mov         eax,dword ptr [ebp-32C]
 004D6A44    call        0042A8C0
 004D6A49    ret
>004D6A4A    jmp         @HandleFinally
>004D6A4F    jmp         004D6A39
 004D6A51    mov         esi,40
 004D6A56    lea         ebx,[ebp-324]
 004D6A5C    cmp         dword ptr [ebx],0
>004D6A5F    je          004D6A8E
 004D6A61    mov         edi,dword ptr [ebx+4]
 004D6A64    test        edi,edi
>004D6A66    je          004D6A78
 004D6A68    mov         eax,edi
 004D6A6A    mov         edx,dword ptr [ebx]
 004D6A6C    mov         ecx,0
 004D6A71    call        @LStrFromWStr
>004D6A76    jmp         004D6A88
 004D6A78    mov         edi,dword ptr [ebx+8]
 004D6A7B    test        edi,edi
>004D6A7D    je          004D6A88
 004D6A7F    mov         eax,edi
 004D6A81    mov         edx,dword ptr [ebx]
 004D6A83    call        @UStrFromWStr
 004D6A88    add         ebx,0C
 004D6A8B    dec         esi
>004D6A8C    jne         004D6A5C
 004D6A8E    xor         eax,eax
 004D6A90    pop         edx
 004D6A91    pop         ecx
 004D6A92    pop         ecx
 004D6A93    mov         dword ptr fs:[eax],edx
 004D6A96    push        4D6AD5
 004D6A9B    lea         eax,[ebp-324]
 004D6AA1    mov         ecx,40
 004D6AA6    mov         edx,dword ptr ds:[429AC0];TStringRef
 004D6AAC    call        @FinalizeArray
 004D6AB1    lea         eax,[ebp-24]
 004D6AB4    mov         edx,dword ptr ds:[431DA0];tagEXCEPINFO
 004D6ABA    call        @FinalizeRecord
 004D6ABF    lea         eax,[ebp-4]
 004D6AC2    mov         edx,dword ptr ds:[4290D4];TVarDataArray
 004D6AC8    call        @DynArrayClear
 004D6ACD    ret
>004D6ACE    jmp         @HandleFinally
>004D6AD3    jmp         004D6A9B
 004D6AD5    pop         edi
 004D6AD6    pop         esi
 004D6AD7    pop         ebx
 004D6AD8    mov         esp,ebp
 004D6ADA    pop         ebp
 004D6ADB    ret         8
*}
end;

//004D6B14
procedure GetIDsOfNames(const Dispatch:IDispatch; Names:PWideChar; NameCount:Integer; DispIDs:ActiveX.PDispIDList);
begin
{*
 004D6B14    push        ebp
 004D6B15    mov         ebp,esp
 004D6B17    add         esp,0FFFFFFD8
 004D6B1A    push        ebx
 004D6B1B    push        esi
 004D6B1C    push        edi
 004D6B1D    xor         ebx,ebx
 004D6B1F    mov         dword ptr [ebp-20],ebx
 004D6B22    mov         dword ptr [ebp-1C],ebx
 004D6B25    mov         dword ptr [ebp-4],ebx
 004D6B28    mov         dword ptr [ebp-8],ebx
 004D6B2B    mov         dword ptr [ebp-0C],ebx
 004D6B2E    mov         dword ptr [ebp-18],ecx
 004D6B31    mov         dword ptr [ebp-14],edx
 004D6B34    mov         dword ptr [ebp-10],eax
 004D6B37    xor         eax,eax
 004D6B39    push        ebp
 004D6B3A    push        4D6C62
 004D6B3F    push        dword ptr fs:[eax]
 004D6B42    mov         dword ptr fs:[eax],esp
 004D6B45    mov         eax,dword ptr [ebp-18]
 004D6B48    push        eax
 004D6B49    lea         eax,[ebp-4]
 004D6B4C    mov         ecx,1
 004D6B51    mov         edx,dword ptr ds:[4D6AE0];:91
 004D6B57    call        @DynArraySetLength
 004D6B5C    add         esp,4
 004D6B5F    mov         ebx,dword ptr [ebp-14]
 004D6B62    mov         edi,dword ptr [ebp-18]
 004D6B65    dec         edi
 004D6B66    test        edi,edi
>004D6B68    jl          004D6BD6
 004D6B6A    inc         edi
 004D6B6B    xor         esi,esi
 004D6B6D    test        esi,esi
>004D6B6F    jne         004D6B9B
 004D6B71    lea         eax,[ebp-1C]
 004D6B74    mov         edx,ebx
 004D6B76    mov         ecx,0
 004D6B7B    call        @LStrFromPChar
 004D6B80    mov         eax,dword ptr [ebp-1C]
 004D6B83    lea         edx,[ebp-8]
 004D6B86    call        UTF8Decode
 004D6B8B    mov         eax,dword ptr [ebp-4]
 004D6B8E    lea         eax,[eax+esi*4]
 004D6B91    mov         edx,dword ptr [ebp-8]
 004D6B94    call        @WStrAsg
>004D6B99    jmp         004D6BC8
 004D6B9B    lea         eax,[ebp-20]
 004D6B9E    mov         edx,ebx
 004D6BA0    mov         ecx,0
 004D6BA5    call        @LStrFromPChar
 004D6BAA    mov         eax,dword ptr [ebp-20]
 004D6BAD    lea         edx,[ebp-0C]
 004D6BB0    call        UTF8Decode
 004D6BB5    mov         eax,dword ptr [ebp-18]
 004D6BB8    sub         eax,esi
 004D6BBA    mov         edx,dword ptr [ebp-4]
 004D6BBD    lea         eax,[edx+eax*4]
 004D6BC0    mov         edx,dword ptr [ebp-0C]
 004D6BC3    call        @WStrAsg
 004D6BC8    mov         eax,ebx
 004D6BCA    call        @PCharLen
 004D6BCF    inc         eax
 004D6BD0    add         ebx,eax
 004D6BD2    inc         esi
 004D6BD3    dec         edi
>004D6BD4    jne         004D6B6D
 004D6BD6    mov         eax,dword ptr [ebp+8]
 004D6BD9    push        eax
 004D6BDA    call        kernel32.GetThreadLocale
 004D6BDF    push        eax
 004D6BE0    mov         eax,dword ptr [ebp-18]
 004D6BE3    push        eax
 004D6BE4    mov         eax,dword ptr [ebp-4]
 004D6BE7    push        eax
 004D6BE8    mov         eax,[007C4748]
 004D6BED    push        eax
 004D6BEE    mov         eax,dword ptr [ebp-10]
 004D6BF1    push        eax
 004D6BF2    mov         eax,dword ptr [eax]
 004D6BF4    call        dword ptr [eax+14]
 004D6BF7    cmp         eax,80020006
>004D6BFC    jne         004D6C27
 004D6BFE    mov         eax,dword ptr [ebp-14]
 004D6C01    mov         dword ptr [ebp-28],eax
 004D6C04    mov         byte ptr [ebp-24],6
 004D6C08    lea         eax,[ebp-28]
 004D6C0B    push        eax
 004D6C0C    push        0
 004D6C0E    mov         ecx,dword ptr ds:[7C4B5C];^SResString347:TResStringRec
 004D6C14    mov         dl,1
 004D6C16    mov         eax,[004D5C4C];EOleError
 004D6C1B    call        Exception.CreateResFmt
 004D6C20    call        @RaiseExcept
>004D6C25    jmp         004D6C2C
 004D6C27    call        OleCheck
 004D6C2C    xor         eax,eax
 004D6C2E    pop         edx
 004D6C2F    pop         ecx
 004D6C30    pop         ecx
 004D6C31    mov         dword ptr fs:[eax],edx
 004D6C34    push        4D6C69
 004D6C39    lea         eax,[ebp-20]
 004D6C3C    mov         edx,2
 004D6C41    call        @LStrArrayClr
 004D6C46    lea         eax,[ebp-0C]
 004D6C49    mov         edx,2
 004D6C4E    call        @WStrArrayClr
 004D6C53    lea         eax,[ebp-4]
 004D6C56    mov         edx,dword ptr ds:[4D6AE0];:91
 004D6C5C    call        @DynArrayClear
 004D6C61    ret
>004D6C62    jmp         @HandleFinally
>004D6C67    jmp         004D6C39
 004D6C69    pop         edi
 004D6C6A    pop         esi
 004D6C6B    pop         ebx
 004D6C6C    mov         esp,ebp
 004D6C6E    pop         ebp
 004D6C6F    ret         4
*}
end;

//004D6C74
procedure RaiseException;
begin
{*
 004D6C74    mov         ecx,dword ptr ds:[7C4CD0];^SResString348:TResStringRec
 004D6C7A    mov         dl,1
 004D6C7C    mov         eax,[004D5C4C];EOleError
 004D6C81    call        Exception.CreateRes
 004D6C86    call        @RaiseExcept
 004D6C8B    ret
*}
end;

//004D6C8C
procedure VarDispInvoke(Result:PVariant; const Instance:Variant; CallDesc:PCallDesc; Params:Pointer); cdecl;
begin
{*
 004D6C8C    push        ebp
 004D6C8D    mov         ebp,esp
 004D6C8F    add         esp,0FFFFFEFC
 004D6C95    push        ebx
 004D6C96    push        esi
 004D6C97    mov         ebx,dword ptr [ebp+10]
 004D6C9A    mov         eax,dword ptr [ebp+0C]
 004D6C9D    mov         esi,dword ptr [ebp+8]
 004D6CA0    cmp         byte ptr [ebx+1],40
>004D6CA4    jbe         004D6CBD
 004D6CA6    mov         ecx,dword ptr ds:[7C45E0];^SResString349:TResStringRec
 004D6CAC    mov         dl,1
 004D6CAE    mov         eax,[004D5C4C];EOleError
 004D6CB3    call        Exception.CreateRes
 004D6CB8    call        @RaiseExcept
 004D6CBD    movzx       edx,word ptr [eax]
 004D6CC0    cmp         dx,9
>004D6CC4    jne         004D6CCE
 004D6CC6    mov         eax,dword ptr [eax+8]
 004D6CC9    mov         dword ptr [ebp-4],eax
>004D6CCC    jmp         004D6CE4
 004D6CCE    cmp         dx,4009
>004D6CD3    jne         004D6CDF
 004D6CD5    mov         eax,dword ptr [eax+8]
 004D6CD8    mov         eax,dword ptr [eax]
 004D6CDA    mov         dword ptr [ebp-4],eax
>004D6CDD    jmp         004D6CE4
 004D6CDF    call        RaiseException
 004D6CE4    lea         eax,[ebp-104]
 004D6CEA    push        eax
 004D6CEB    movzx       ecx,byte ptr [ebx+2]
 004D6CEF    inc         ecx
 004D6CF0    movzx       eax,byte ptr [ebx+1]
 004D6CF4    lea         edx,[ebx+eax+3]
 004D6CF8    mov         eax,dword ptr [ebp-4]
 004D6CFB    call        GetIDsOfNames
 004D6D00    test        esi,esi
>004D6D02    je          004D6D0B
 004D6D04    mov         eax,esi
 004D6D06    call        @VarClear
 004D6D0B    mov         eax,dword ptr [ebp+14]
 004D6D0E    push        eax
 004D6D0F    push        esi
 004D6D10    lea         ecx,[ebp-104]
 004D6D16    mov         edx,ebx
 004D6D18    mov         eax,dword ptr [ebp-4]
 004D6D1B    call        DispatchInvoke
 004D6D20    pop         esi
 004D6D21    pop         ebx
 004D6D22    mov         esp,ebp
 004D6D24    pop         ebp
 004D6D25    ret
*}
end;

//004D6D28
procedure DispatchInvokeError(Status:Integer; const ExcepInfo:ActiveX.TExcepInfo);
begin
{*
 004D6D28    push        ebp
 004D6D29    mov         ebp,esp
 004D6D2B    push        0
 004D6D2D    push        0
 004D6D2F    push        0
 004D6D31    push        ebx
 004D6D32    mov         ebx,edx
 004D6D34    xor         edx,edx
 004D6D36    push        ebp
 004D6D37    push        4D6DC2
 004D6D3C    push        dword ptr fs:[edx]
 004D6D3F    mov         dword ptr fs:[edx],esp
 004D6D42    cmp         eax,80020009
>004D6D47    jne         004D6D8D
 004D6D49    mov         eax,dword ptr [ebx+1C]
 004D6D4C    push        eax
 004D6D4D    lea         eax,[ebp-4]
 004D6D50    mov         edx,dword ptr [ebx+4]
 004D6D53    call        @UStrFromWStr
 004D6D58    mov         eax,dword ptr [ebp-4]
 004D6D5B    push        eax
 004D6D5C    lea         eax,[ebp-8]
 004D6D5F    mov         edx,dword ptr [ebx+0C]
 004D6D62    call        @UStrFromWStr
 004D6D67    mov         eax,dword ptr [ebp-8]
 004D6D6A    push        eax
 004D6D6B    mov         eax,dword ptr [ebx+10]
 004D6D6E    push        eax
 004D6D6F    lea         eax,[ebp-0C]
 004D6D72    mov         edx,dword ptr [ebx+8]
 004D6D75    call        @UStrFromWStr
 004D6D7A    mov         ecx,dword ptr [ebp-0C]
 004D6D7D    mov         dl,1
 004D6D7F    mov         eax,[004D5E4C];EOleException
 004D6D84    call        EOleException.Create
 004D6D89    mov         edx,eax
>004D6D8B    jmp         004D6DA0
 004D6D8D    push        eax
 004D6D8E    push        0
 004D6D90    xor         ecx,ecx
 004D6D92    mov         dl,1
 004D6D94    mov         eax,[004D5CF0];EOleSysError
 004D6D99    call        EOleSysError.Create
 004D6D9E    mov         edx,eax
 004D6DA0    mov         eax,edx
 004D6DA2    call        @RaiseExcept
 004D6DA7    xor         eax,eax
 004D6DA9    pop         edx
 004D6DAA    pop         ecx
 004D6DAB    pop         ecx
 004D6DAC    mov         dword ptr fs:[eax],edx
 004D6DAF    push        4D6DC9
 004D6DB4    lea         eax,[ebp-0C]
 004D6DB7    mov         edx,3
 004D6DBC    call        @UStrArrayClr
 004D6DC1    ret
>004D6DC2    jmp         @HandleFinally
>004D6DC7    jmp         004D6DB4
 004D6DC9    pop         ebx
 004D6DCA    mov         esp,ebp
 004D6DCC    pop         ebp
 004D6DCD    ret
*}
end;

//004D6DD0
function _DispReturnPointer(Val:Pointer):Pointer;
begin
{*
 004D6DD0    ret
*}
end;

//004D6DD4
function _DispReturnInteger(Val:Integer):Integer;
begin
{*
 004D6DD4    ret
*}
end;

//004D6DD8
function _DispReturnInt64(Val:Int64):Int64;
begin
{*
 004D6DD8    push        ebp
 004D6DD9    mov         ebp,esp
 004D6DDB    add         esp,0FFFFFFF8
 004D6DDE    mov         eax,dword ptr [ebp+8]
 004D6DE1    mov         dword ptr [ebp-8],eax
 004D6DE4    mov         eax,dword ptr [ebp+0C]
 004D6DE7    mov         dword ptr [ebp-4],eax
 004D6DEA    mov         eax,dword ptr [ebp-8]
 004D6DED    mov         edx,dword ptr [ebp-4]
 004D6DF0    pop         ecx
 004D6DF1    pop         ecx
 004D6DF2    pop         ebp
 004D6DF3    ret         8
*}
end;

//004D6DF8
procedure DispCallByID(Result:Pointer; const Dispatch:IDispatch; DispDesc:PDispDesc; Params:Pointer); cdecl;
begin
{*
 004D6DF8    push        ebp
 004D6DF9    mov         ebp,esp
 004D6DFB    add         esp,0FFFFFFE8
 004D6DFE    push        ebx
 004D6DFF    push        esi
 004D6E00    mov         ebx,dword ptr [ebp+10]
 004D6E03    mov         esi,dword ptr [ebp+8]
 004D6E06    lea         eax,[ebp-10]
 004D6E09    push        eax
 004D6E0A    call        oleaut32.VariantInit
 004D6E0F    mov         eax,dword ptr [ebx]
 004D6E11    mov         dword ptr [ebp-18],eax
 004D6E14    lea         eax,[ebp+14]
 004D6E17    push        eax
 004D6E18    lea         eax,[ebp-10]
 004D6E1B    push        eax
 004D6E1C    lea         ecx,[ebp-18]
 004D6E1F    lea         edx,[ebx+5]
 004D6E22    mov         eax,dword ptr [ebp+0C]
 004D6E25    call        DispatchInvoke
 004D6E2A    test        esi,esi
>004D6E2C    je          004D6F93
 004D6E32    movzx       eax,byte ptr [ebx+4]
 004D6E36    cmp         eax,15
>004D6E39    ja          004D708D
 004D6E3F    jmp         dword ptr [eax*4+4D6E46]
 004D6E3F    dd          004D708D
 004D6E3F    dd          004D708D
 004D6E3F    dd          004D6E9E
 004D6E3F    dd          004D6EAA
 004D6E3F    dd          004D6EB4
 004D6E3F    dd          004D6EBE
 004D6E3F    dd          004D6ECE
 004D6E3F    dd          004D6EDE
 004D6E3F    dd          004D6F46
 004D6E3F    dd          004D6F5F
 004D6E3F    dd          004D708D
 004D6E3F    dd          004D6EEE
 004D6E3F    dd          004D6F78
 004D6E3F    dd          004D6F5F
 004D6E3F    dd          004D708D
 004D6E3F    dd          004D708D
 004D6E3F    dd          004D6EFA
 004D6E3F    dd          004D6F05
 004D6E3F    dd          004D6F10
 004D6E3F    dd          004D6F1C
 004D6E3F    dd          004D6F26
 004D6E3F    dd          004D6F36
 004D6E9E    movzx       eax,word ptr [ebp-8]
 004D6EA2    mov         word ptr [esi],ax
>004D6EA5    jmp         004D708D
 004D6EAA    mov         eax,dword ptr [ebp-8]
 004D6EAD    mov         dword ptr [esi],eax
>004D6EAF    jmp         004D708D
 004D6EB4    mov         eax,dword ptr [ebp-8]
 004D6EB7    mov         dword ptr [esi],eax
>004D6EB9    jmp         004D708D
 004D6EBE    mov         eax,dword ptr [ebp-8]
 004D6EC1    mov         dword ptr [esi],eax
 004D6EC3    mov         eax,dword ptr [ebp-4]
 004D6EC6    mov         dword ptr [esi+4],eax
>004D6EC9    jmp         004D708D
 004D6ECE    mov         eax,dword ptr [ebp-8]
 004D6ED1    mov         dword ptr [esi],eax
 004D6ED3    mov         eax,dword ptr [ebp-4]
 004D6ED6    mov         dword ptr [esi+4],eax
>004D6ED9    jmp         004D708D
 004D6EDE    mov         eax,dword ptr [ebp-8]
 004D6EE1    mov         dword ptr [esi],eax
 004D6EE3    mov         eax,dword ptr [ebp-4]
 004D6EE6    mov         dword ptr [esi+4],eax
>004D6EE9    jmp         004D708D
 004D6EEE    movzx       eax,word ptr [ebp-8]
 004D6EF2    mov         word ptr [esi],ax
>004D6EF5    jmp         004D708D
 004D6EFA    movzx       eax,byte ptr [ebp-8]
 004D6EFE    mov         byte ptr [esi],al
>004D6F00    jmp         004D708D
 004D6F05    movzx       eax,byte ptr [ebp-8]
 004D6F09    mov         byte ptr [esi],al
>004D6F0B    jmp         004D708D
 004D6F10    movzx       eax,word ptr [ebp-8]
 004D6F14    mov         word ptr [esi],ax
>004D6F17    jmp         004D708D
 004D6F1C    mov         eax,dword ptr [ebp-8]
 004D6F1F    mov         dword ptr [esi],eax
>004D6F21    jmp         004D708D
 004D6F26    mov         eax,dword ptr [ebp-8]
 004D6F29    mov         dword ptr [esi],eax
 004D6F2B    mov         eax,dword ptr [ebp-4]
 004D6F2E    mov         dword ptr [esi+4],eax
>004D6F31    jmp         004D708D
 004D6F36    mov         eax,dword ptr [ebp-8]
 004D6F39    mov         dword ptr [esi],eax
 004D6F3B    mov         eax,dword ptr [ebp-4]
 004D6F3E    mov         dword ptr [esi+4],eax
>004D6F41    jmp         004D708D
 004D6F46    mov         ebx,esi
 004D6F48    cmp         dword ptr [ebx],0
>004D6F4B    je          004D6F55
 004D6F4D    mov         eax,dword ptr [esi]
 004D6F4F    push        eax
 004D6F50    call        oleaut32.SysFreeString
 004D6F55    mov         eax,dword ptr [ebp-8]
 004D6F58    mov         dword ptr [ebx],eax
>004D6F5A    jmp         004D708D
 004D6F5F    mov         ebx,esi
 004D6F61    cmp         dword ptr [ebx],0
>004D6F64    je          004D6F6E
 004D6F66    mov         eax,dword ptr [esi]
 004D6F68    push        eax
 004D6F69    mov         eax,dword ptr [eax]
 004D6F6B    call        dword ptr [eax+8]
 004D6F6E    mov         eax,dword ptr [ebp-8]
 004D6F71    mov         dword ptr [ebx],eax
>004D6F73    jmp         004D708D
 004D6F78    mov         eax,esi
 004D6F7A    call        @VarClear
 004D6F7F    mov         edx,esi
 004D6F81    lea         eax,[ebp-10]
 004D6F84    mov         ecx,10
 004D6F89    call        Move
>004D6F8E    jmp         004D708D
 004D6F93    movzx       eax,byte ptr [ebx+4]
 004D6F97    cmp         eax,15
>004D6F9A    ja          004D708D
 004D6FA0    jmp         dword ptr [eax*4+4D6FA7]
 004D6FA0    dd          004D708D
 004D6FA0    dd          004D708D
 004D6FA0    dd          004D6FFF
 004D6FA0    dd          004D700D
 004D6FA0    dd          004D7017
 004D6FA0    dd          004D701C
 004D6FA0    dd          004D7021
 004D6FA0    dd          004D7026
 004D6FA0    dd          004D707B
 004D6FA0    dd          004D7085
 004D6FA0    dd          004D708D
 004D6FA0    dd          004D702B
 004D6FA0    dd          004D708D
 004D6FA0    dd          004D7085
 004D6FA0    dd          004D708D
 004D6FA0    dd          004D708D
 004D6FA0    dd          004D7036
 004D6FA0    dd          004D7041
 004D6FA0    dd          004D704C
 004D6FA0    dd          004D7057
 004D6FA0    dd          004D7061
 004D6FA0    dd          004D706E
 004D6FFF    movsx       eax,word ptr [ebp-8]
 004D7003    call        _DispReturnInteger
>004D7008    jmp         004D708D
 004D700D    mov         eax,dword ptr [ebp-8]
 004D7010    call        _DispReturnInteger
>004D7015    jmp         004D708D
 004D7017    fld         dword ptr [ebp-8]
>004D701A    jmp         004D708D
 004D701C    fld         qword ptr [ebp-8]
>004D701F    jmp         004D708D
 004D7021    fild        qword ptr [ebp-8]
>004D7024    jmp         004D708D
 004D7026    fld         qword ptr [ebp-8]
>004D7029    jmp         004D708D
 004D702B    movsx       eax,word ptr [ebp-8]
 004D702F    call        _DispReturnInteger
>004D7034    jmp         004D708D
 004D7036    movsx       eax,byte ptr [ebp-8]
 004D703A    call        _DispReturnInteger
>004D703F    jmp         004D708D
 004D7041    movzx       eax,byte ptr [ebp-8]
 004D7045    call        _DispReturnInteger
>004D704A    jmp         004D708D
 004D704C    movzx       eax,word ptr [ebp-8]
 004D7050    call        _DispReturnInteger
>004D7055    jmp         004D708D
 004D7057    mov         eax,dword ptr [ebp-8]
 004D705A    call        _DispReturnInteger
>004D705F    jmp         004D708D
 004D7061    push        dword ptr [ebp-4]
 004D7064    push        dword ptr [ebp-8]
 004D7067    call        _DispReturnInt64
>004D706C    jmp         004D708D
 004D706E    push        dword ptr [ebp-4]
 004D7071    push        dword ptr [ebp-8]
 004D7074    call        _DispReturnInt64
>004D7079    jmp         004D708D
 004D707B    mov         eax,dword ptr [ebp-8]
 004D707E    call        _DispReturnPointer
>004D7083    jmp         004D708D
 004D7085    mov         eax,dword ptr [ebp-8]
 004D7088    call        _DispReturnPointer
 004D708D    pop         esi
 004D708E    pop         ebx
 004D708F    mov         esp,ebp
 004D7091    pop         ebp
 004D7092    ret
*}
end;

//004D7094
procedure InitComObj;
begin
{*
 004D7094    cmp         byte ptr ds:[7A1110],0
>004D709B    jne         004D7124
 004D70A1    cmp         dword ptr ds:[7CA5C0],0
>004D70A8    je          004D70B0
 004D70AA    call        dword ptr ds:[7CA5C0]
 004D70B0    cmp         dword ptr ds:[7A110C],0FFFFFFFF
>004D70B7    je          004D7109
 004D70B9    cmp         dword ptr ds:[7A10F8],0
>004D70C0    je          004D7109
 004D70C2    mov         eax,[007A110C]
 004D70C7    push        eax
 004D70C8    push        0
 004D70CA    call        dword ptr ds:[7A10F8]
 004D70D0    test        eax,80000000
 004D70D5    sete        al
 004D70D8    mov         [007A1111],al
 004D70DD    mov         eax,[007C445C];IsMultiThread:Boolean
 004D70E2    cmp         byte ptr [eax],0
>004D70E5    jne         004D70FD
 004D70E7    test        byte ptr ds:[7A110C],2
>004D70EE    jne         004D70FD
 004D70F0    cmp         dword ptr ds:[7A110C],0
>004D70F7    je          004D70FD
 004D70F9    xor         eax,eax
>004D70FB    jmp         004D70FF
 004D70FD    mov         al,1
 004D70FF    mov         edx,dword ptr ds:[7C445C];IsMultiThread:Boolean
 004D7105    mov         byte ptr [edx],al
>004D7107    jmp         004D711D
 004D7109    push        0
 004D710B    call        ole32.CoInitialize
 004D7110    test        eax,80000000
 004D7115    sete        al
 004D7118    mov         [007A1111],al
 004D711D    mov         byte ptr ds:[7A1110],1
 004D7124    ret
*}
end;

Initialization
//0079CE98
{*
 0079CE98    sub         dword ptr ds:[7CA5B4],1
>0079CE9F    jae         0079CEEC
 0079CEA1    call        LoadComExProcs
 0079CEA6    mov         eax,4D6C8C;VarDispInvoke
 0079CEAB    mov         edx,dword ptr ds:[7C4AAC];VarDispProc:TVarDispProc
 0079CEB1    mov         dword ptr [edx],eax
 0079CEB3    mov         eax,[007C431C];DispCallByIDProc:Pointer
 0079CEB8    mov         dword ptr [eax],4D6DF8;DispCallByID
 0079CEBE    mov         eax,4D6884;SafeCallError
 0079CEC3    mov         edx,dword ptr ds:[7C4B84];^SafeCallErrorProc:TSafeCallErrorProc
 0079CEC9    mov         dword ptr [edx],eax
 0079CECB    mov         eax,[007C41B8];IsLibrary:Boolean
 0079CED0    cmp         byte ptr [eax],0
>0079CED3    jne         0079CEEC
 0079CED5    mov         eax,[007C4804];^InitProc:Pointer
 0079CEDA    mov         eax,dword ptr [eax]
 0079CEDC    mov         [007CA5C0],eax
 0079CEE1    mov         eax,[007C4804];^InitProc:Pointer
 0079CEE6    mov         dword ptr [eax],4D7094;InitComObj
 0079CEEC    ret
*}
Finalization
//004D7128
{*
 004D7128    inc         dword ptr ds:[7CA5B4]
>004D712E    jne         004D716A
 004D7130    mov         byte ptr ds:[7CA5B8],1
 004D7137    mov         eax,[007CA5BC]
 004D713C    call        TObject.Free
 004D7141    mov         eax,[007C4B84];^SafeCallErrorProc:TSafeCallErrorProc
 004D7146    xor         edx,edx
 004D7148    mov         dword ptr [eax],edx
 004D714A    mov         eax,[007C431C];DispCallByIDProc:Pointer
 004D714F    xor         edx,edx
 004D7151    mov         dword ptr [eax],edx
 004D7153    mov         eax,[007C4AAC];VarDispProc:TVarDispProc
 004D7158    xor         edx,edx
 004D715A    mov         dword ptr [eax],edx
 004D715C    cmp         byte ptr ds:[7A1111],0
>004D7163    je          004D716A
 004D7165    call        ole32.CoUninitialize
 004D716A    ret
*}
end.