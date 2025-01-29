//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit9;

interface

uses
  SysUtils, Classes;

    procedure FreeEncodings;//00426AAC
    function GetANSI:TEncoding;//00426B1C
    //function sub_00426B5C:?;//00426B5C
    procedure GetBufferEncoding(var AEncoding:TEncoding);//00426B90
    //function sub_00426BAC(?:TEncoding; ?:?; ?:TEncoding; ?:?):?;//00426BAC
    function GetBufferEncoding(var AEncoding:TEncoding; ADefaultEncoding:TEncoding):Integer;//00426BF4
    function GetByteCount(Chars:TArray<System.Char>):Integer;//00426DE4
    procedure GetByteCount(Chars:TArray<System.Char>; CharIndex:Integer; CharCount:Integer);//00426DF8
    function GetByteCount(S:string):Integer;//00426EA4
    procedure GetByteCount(S:string; CharIndex:Integer; CharCount:Integer);//00426ECC
    //procedure GetBytes(Chars:TArray<System.Char>; ?:?);//00426F7C
    procedure GetBytes(Chars:TArray<System.Char>; CharIndex:Integer; ByteIndex:Integer; Bytes:TArray<System.Byte>; CharCount:Integer);//00426FC8
    procedure GetBytes(S:string; ?:TEncoding);//00427138
    procedure GetBytes(S:string; CharIndex:Integer; ByteIndex:Integer; Bytes:TArray<System.Byte>; CharCount:Integer);//00427188
    function GetCharCount(Bytes:TArray<System.Byte>; ByteIndex:Integer; ByteCount:Integer):Integer;//004272D8
    procedure GetChars(Bytes:TArray<System.Byte>; ?:TEncoding);//004273A4
    //procedure GetChars(Bytes:TArray<System.Byte>; ByteIndex:Integer; ?:?; ByteCount:Integer);//004273CC
    procedure sub_004274F0;//004274F0
    //function sub_004274F4:?;//004274F4
    function GetEncoding:TEncoding;//004274FC
    //procedure sub_0042755C(?:?);//0042755C
    function GetString(Bytes:TArray<System.Byte>; ByteIndex:Integer; ByteCount:Integer):string;//00427568
    //function sub_0042768C:?;//0042768C
    //function sub_004276C0:?;//004276C0
    function IsStandardEncoding:Boolean;//004276F4
    constructor sub_00427730;//00427730
    constructor sub_00427774(CodePage:Integer);//00427774
    constructor Create(WCharToMBFlags:Integer; MBToWCharFlags:Integer);//004277BC
    procedure Clone;//00427848
    //procedure sub_0042786C(?:?);//0042786C
    //procedure sub_00427884(?:?; ?:?; ?:?);//00427884
    //procedure sub_004278A8(?:?);//004278A8
    //procedure sub_004278BC(?:?; ?:?; ?:?);//004278BC
    //function sub_004278DC:?;//004278DC
    //procedure sub_004278E0(?:?);//004278E0
    function GetMaxByteCount(CharCount:Integer):Integer;//00427920
    function GetMaxCharCount(ByteCount:Integer):Integer;//00427928
    //procedure GetPreamble(?:?);//0042792C
    constructor Create;//00427A78
    procedure Clone;//00427AB8
    procedure GetMaxByteCount(CharCount:Integer);//00427AC8
    function GetMaxCharCount(ByteCount:Integer):Integer;//00427AD0
    constructor Create;//00427AD4
    procedure Clone;//00427B18
    function GetMaxByteCount(CharCount:Integer):Integer;//00427B28
    function GetMaxCharCount(ByteCount:Integer):Integer;//00427B30
    //procedure GetPreamble(?:?);//00427B34
    constructor Create;//00427BBC
    procedure Clone;//00427BE8
    //procedure sub_00427BF8(?:?; ?:?);//00427BF8
    //function sub_00427C00(?:?; ?:?; ?:?):?;//00427C00
    //procedure sub_00427C1C(?:?; ?:?);//00427C1C
    //function sub_00427C28(?:?):?;//00427C28
    //function sub_00427C48:?;//00427C48
    //procedure sub_00427C50(?:?);//00427C50
    procedure GetMaxByteCount(CharCount:Integer);//00427C90
    procedure GetMaxCharCount(ByteCount:Integer);//00427C98
    //procedure GetPreamble(?:?);//00427CA8
    procedure Clone;//00427D28
    procedure sub_00427D38;//00427D38
    //function sub_00427D6C(?:?; ?:?; ?:?):?;//00427D6C
    //function sub_00427DB8:?;//00427DB8
    //procedure sub_00427DC0(?:?);//00427DC0
    //procedure GetPreamble(?:?);//00427E1C
    //procedure sub_00427E9C(?:?; ?:?);//00427E9C
    function BytesOf(const Val:RawByteString):TBytes;//00427EDC
    function StringOf(const Bytes:TBytes):UnicodeString;//00427EFC
    function sub_00427F38:Boolean;//00427F38
    //function sub_00427F94(?:?; ?:?):?;//00427F94

implementation

//00426AAC
procedure TEncoding.FreeEncodings;
begin
{*
 00426AAC    mov         eax,[007C7D9C];gvar_007C7D9C
 00426AB1    xor         edx,edx
 00426AB3    mov         dword ptr ds:[7C7D9C],edx;gvar_007C7D9C
 00426AB9    call        TObject.Free
 00426ABE    mov         eax,[007C7DA0];gvar_007C7DA0
 00426AC3    xor         edx,edx
 00426AC5    mov         dword ptr ds:[7C7DA0],edx;gvar_007C7DA0
 00426ACB    call        TObject.Free
 00426AD0    mov         eax,[007C7DAC];gvar_007C7DAC
 00426AD5    xor         edx,edx
 00426AD7    mov         dword ptr ds:[7C7DAC],edx;gvar_007C7DAC
 00426ADD    call        TObject.Free
 00426AE2    mov         eax,[007C7DB0];gvar_007C7DB0
 00426AE7    xor         edx,edx
 00426AE9    mov         dword ptr ds:[7C7DB0],edx;gvar_007C7DB0
 00426AEF    call        TObject.Free
 00426AF4    mov         eax,[007C7DA8];gvar_007C7DA8
 00426AF9    xor         edx,edx
 00426AFB    mov         dword ptr ds:[7C7DA8],edx;gvar_007C7DA8
 00426B01    call        TObject.Free
 00426B06    mov         eax,[007C7DA4];gvar_007C7DA4
 00426B0B    xor         edx,edx
 00426B0D    mov         dword ptr ds:[7C7DA4],edx;gvar_007C7DA4
 00426B13    call        TObject.Free
 00426B18    ret
*}
end;

//00426B1C
function TEncoding.GetANSI:TEncoding;
begin
{*
 00426B1C    cmp         dword ptr ds:[7C7D9C],0;gvar_007C7D9C
>00426B23    jne         00426B53
 00426B25    push        0
 00426B27    push        0
 00426B29    call        kernel32.GetACP
 00426B2E    mov         ecx,eax
 00426B30    mov         dl,1
 00426B32    mov         eax,[0041C870];TMBCSEncoding
 00426B37    call        TMBCSEncoding.Create
 00426B3C    mov         edx,eax
 00426B3E    xor         eax,eax
 00426B40    lock cmpxchgdword ptr ds:[7C7D9C],edx;gvar_007C7D9C
 00426B48    test        eax,eax
>00426B4A    je          00426B53
 00426B4C    mov         eax,edx
 00426B4E    call        TObject.Free
 00426B53    mov         eax,[007C7D9C];gvar_007C7D9C
 00426B58    ret
*}
end;

//00426B5C
{*function sub_00426B5C:?;
begin
 00426B5C    cmp         dword ptr ds:[7C7DA4],0;gvar_007C7DA4
>00426B63    jne         00426B88
 00426B65    mov         dl,1
 00426B67    mov         eax,[0041D148];TBigEndianUnicodeEncoding
 00426B6C    call        TUnicodeEncoding.Create;TBigEndianUnicodeEncoding.Create
 00426B71    mov         edx,eax
 00426B73    xor         eax,eax
 00426B75    lock cmpxchgdword ptr ds:[7C7DA4],edx;gvar_007C7DA4
 00426B7D    test        eax,eax
>00426B7F    je          00426B88
 00426B81    mov         eax,edx
 00426B83    call        TObject.Free
 00426B88    mov         eax,[007C7DA4];gvar_007C7DA4
 00426B8D    ret
end;*}

//00426B90
procedure TEncoding.GetBufferEncoding(var AEncoding:TEncoding);
begin
{*
 00426B90    push        ebx
 00426B91    push        esi
 00426B92    mov         esi,edx
 00426B94    mov         ebx,eax
 00426B96    call        004274F4
 00426B9B    mov         ecx,eax
 00426B9D    mov         edx,esi
 00426B9F    mov         eax,ebx
 00426BA1    call        TEncoding.GetBufferEncoding
 00426BA6    pop         esi
 00426BA7    pop         ebx
 00426BA8    ret
*}
end;

//00426BAC
{*function sub_00426BAC(?:TEncoding; ?:?; ?:TEncoding; ?:?):?;
begin
 00426BAC    push        ebp
 00426BAD    mov         ebp,esp
 00426BAF    add         esp,0FFFFFFF8
 00426BB2    push        ebx
 00426BB3    push        esi
 00426BB4    push        edi
 00426BB5    mov         dword ptr [ebp-8],ecx
 00426BB8    mov         dword ptr [ebp-4],edx
 00426BBB    mov         esi,dword ptr [ebp+8]
 00426BBE    mov         cl,1
 00426BC0    lea         edx,[esi+1]
 00426BC3    mov         ebx,dword ptr [ebp-4]
 00426BC6    inc         ebx
 00426BC7    cmp         edx,ebx
>00426BC9    jg          00426BE6
 00426BCB    test        edx,edx
>00426BCD    jle         00426BE8
 00426BCF    mov         esi,edx
 00426BD1    mov         edx,dword ptr [ebp-8]
 00426BD4    movzx       ebx,byte ptr [eax]
 00426BD7    cmp         bl,byte ptr [edx]
>00426BD9    je          00426BDF
 00426BDB    xor         ecx,ecx
>00426BDD    jmp         00426BE8
 00426BDF    inc         edx
 00426BE0    inc         eax
 00426BE1    dec         esi
>00426BE2    jne         00426BD4
>00426BE4    jmp         00426BE8
 00426BE6    xor         ecx,ecx
 00426BE8    mov         eax,ecx
 00426BEA    pop         edi
 00426BEB    pop         esi
 00426BEC    pop         ebx
 00426BED    pop         ecx
 00426BEE    pop         ecx
 00426BEF    pop         ebp
 00426BF0    ret         4
end;*}

//00426BF4
function TEncoding.GetBufferEncoding(var AEncoding:TEncoding; ADefaultEncoding:TEncoding):Integer;
begin
{*
 00426BF4    push        ebp
 00426BF5    mov         ebp,esp
 00426BF7    add         esp,0FFFFFFBC
 00426BFA    push        ebx
 00426BFB    push        esi
 00426BFC    push        edi
 00426BFD    xor         ebx,ebx
 00426BFF    mov         dword ptr [ebp-44],ebx
 00426C02    mov         dword ptr [ebp-40],ebx
 00426C05    mov         dword ptr [ebp-3C],ebx
 00426C08    mov         dword ptr [ebp-38],ebx
 00426C0B    mov         dword ptr [ebp-4],ebx
 00426C0E    mov         dword ptr [ebp-8],ecx
 00426C11    mov         esi,edx
 00426C13    mov         ebx,eax
 00426C15    xor         eax,eax
 00426C17    push        ebp
 00426C18    push        426DD3
 00426C1D    push        dword ptr fs:[eax]
 00426C20    mov         dword ptr fs:[eax],esp
 00426C23    xor         eax,eax
 00426C25    mov         dword ptr [ebp-0C],eax
 00426C28    cmp         dword ptr [esi],0
>00426C2B    jne         00426D61
 00426C31    mov         edi,ebx
 00426C33    test        edi,edi
>00426C35    je          00426C3C
 00426C37    sub         edi,4
 00426C3A    mov         edi,dword ptr [edi]
 00426C3C    call        004276C0
 00426C41    lea         edx,[ebp-38]
 00426C44    mov         ecx,dword ptr [eax]
 00426C46    call        dword ptr [ecx+24]
 00426C49    mov         eax,dword ptr [ebp-38]
 00426C4C    mov         dword ptr [ebp-10],eax
 00426C4F    mov         dword ptr [ebp-1C],eax
 00426C52    mov         eax,dword ptr [ebp-1C]
 00426C55    mov         dword ptr [ebp-20],eax
 00426C58    cmp         dword ptr [ebp-20],0
>00426C5C    je          00426C69
 00426C5E    mov         eax,dword ptr [ebp-20]
 00426C61    sub         eax,4
 00426C64    mov         eax,dword ptr [eax]
 00426C66    mov         dword ptr [ebp-20],eax
 00426C69    mov         eax,dword ptr [ebp-20]
 00426C6C    dec         eax
 00426C6D    push        eax
 00426C6E    mov         ecx,dword ptr [ebp-10]
 00426C71    mov         edx,edi
 00426C73    dec         edx
 00426C74    mov         eax,ebx
 00426C76    call        00426BAC
 00426C7B    test        al,al
>00426C7D    je          00426C8B
 00426C7F    call        004276C0
 00426C84    mov         dword ptr [esi],eax
>00426C86    jmp         00426D40
 00426C8B    mov         edi,ebx
 00426C8D    test        edi,edi
>00426C8F    je          00426C96
 00426C91    sub         edi,4
 00426C94    mov         edi,dword ptr [edi]
 00426C96    call        0042768C
 00426C9B    lea         edx,[ebp-3C]
 00426C9E    mov         ecx,dword ptr [eax]
 00426CA0    call        dword ptr [ecx+24]
 00426CA3    mov         eax,dword ptr [ebp-3C]
 00426CA6    mov         dword ptr [ebp-14],eax
 00426CA9    mov         dword ptr [ebp-24],eax
 00426CAC    mov         eax,dword ptr [ebp-24]
 00426CAF    mov         dword ptr [ebp-28],eax
 00426CB2    cmp         dword ptr [ebp-28],0
>00426CB6    je          00426CC3
 00426CB8    mov         eax,dword ptr [ebp-28]
 00426CBB    sub         eax,4
 00426CBE    mov         eax,dword ptr [eax]
 00426CC0    mov         dword ptr [ebp-28],eax
 00426CC3    mov         eax,dword ptr [ebp-28]
 00426CC6    dec         eax
 00426CC7    push        eax
 00426CC8    mov         ecx,dword ptr [ebp-14]
 00426CCB    mov         edx,edi
 00426CCD    dec         edx
 00426CCE    mov         eax,ebx
 00426CD0    call        00426BAC
 00426CD5    test        al,al
>00426CD7    je          00426CE2
 00426CD9    call        0042768C
 00426CDE    mov         dword ptr [esi],eax
>00426CE0    jmp         00426D40
 00426CE2    mov         edi,ebx
 00426CE4    test        edi,edi
>00426CE6    je          00426CED
 00426CE8    sub         edi,4
 00426CEB    mov         edi,dword ptr [edi]
 00426CED    call        00426B5C
 00426CF2    lea         edx,[ebp-40]
 00426CF5    mov         ecx,dword ptr [eax]
 00426CF7    call        dword ptr [ecx+24]
 00426CFA    mov         eax,dword ptr [ebp-40]
 00426CFD    mov         dword ptr [ebp-18],eax
 00426D00    mov         dword ptr [ebp-2C],eax
 00426D03    mov         eax,dword ptr [ebp-2C]
 00426D06    mov         dword ptr [ebp-30],eax
 00426D09    cmp         dword ptr [ebp-30],0
>00426D0D    je          00426D1A
 00426D0F    mov         eax,dword ptr [ebp-30]
 00426D12    sub         eax,4
 00426D15    mov         eax,dword ptr [eax]
 00426D17    mov         dword ptr [ebp-30],eax
 00426D1A    mov         eax,dword ptr [ebp-30]
 00426D1D    dec         eax
 00426D1E    push        eax
 00426D1F    mov         ecx,dword ptr [ebp-18]
 00426D22    mov         edx,edi
 00426D24    dec         edx
 00426D25    mov         eax,ebx
 00426D27    call        00426BAC
 00426D2C    test        al,al
>00426D2E    je          00426D39
 00426D30    call        00426B5C
 00426D35    mov         dword ptr [esi],eax
>00426D37    jmp         00426D40
 00426D39    mov         eax,dword ptr [ebp-8]
 00426D3C    mov         dword ptr [esi],eax
>00426D3E    jmp         00426DA4
 00426D40    lea         edx,[ebp-44]
 00426D43    mov         eax,dword ptr [esi]
 00426D45    mov         ecx,dword ptr [eax]
 00426D47    call        dword ptr [ecx+24]
 00426D4A    mov         eax,dword ptr [ebp-44]
 00426D4D    mov         dword ptr [ebp-34],eax
 00426D50    mov         eax,dword ptr [ebp-34]
 00426D53    test        eax,eax
>00426D55    je          00426D5C
 00426D57    sub         eax,4
 00426D5A    mov         eax,dword ptr [eax]
 00426D5C    mov         dword ptr [ebp-0C],eax
>00426D5F    jmp         00426DA4
 00426D61    lea         edx,[ebp-4]
 00426D64    mov         eax,dword ptr [esi]
 00426D66    mov         ecx,dword ptr [eax]
 00426D68    call        dword ptr [ecx+24]
 00426D6B    mov         esi,ebx
 00426D6D    test        esi,esi
>00426D6F    je          00426D76
 00426D71    sub         esi,4
 00426D74    mov         esi,dword ptr [esi]
 00426D76    mov         edi,dword ptr [ebp-4]
 00426D79    test        edi,edi
>00426D7B    je          00426D82
 00426D7D    sub         edi,4
 00426D80    mov         edi,dword ptr [edi]
 00426D82    dec         edi
 00426D83    push        edi
 00426D84    mov         edx,esi
 00426D86    dec         edx
 00426D87    mov         ecx,dword ptr [ebp-4]
 00426D8A    mov         eax,ebx
 00426D8C    call        00426BAC
 00426D91    test        al,al
>00426D93    je          00426DA4
 00426D95    mov         eax,dword ptr [ebp-4]
 00426D98    test        eax,eax
>00426D9A    je          00426DA1
 00426D9C    sub         eax,4
 00426D9F    mov         eax,dword ptr [eax]
 00426DA1    mov         dword ptr [ebp-0C],eax
 00426DA4    xor         eax,eax
 00426DA6    pop         edx
 00426DA7    pop         ecx
 00426DA8    pop         ecx
 00426DA9    mov         dword ptr fs:[eax],edx
 00426DAC    push        426DDA
 00426DB1    lea         eax,[ebp-44]
 00426DB4    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00426DBA    mov         ecx,4
 00426DBF    call        @FinalizeArray
 00426DC4    lea         eax,[ebp-4]
 00426DC7    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00426DCD    call        @DynArrayClear
 00426DD2    ret
>00426DD3    jmp         @HandleFinally
>00426DD8    jmp         00426DB1
 00426DDA    mov         eax,dword ptr [ebp-0C]
 00426DDD    pop         edi
 00426DDE    pop         esi
 00426DDF    pop         ebx
 00426DE0    mov         esp,ebp
 00426DE2    pop         ebp
 00426DE3    ret
*}
end;

//00426DE4
function TEncoding.GetByteCount(Chars:TArray<System.Char>):Integer;
begin
{*
 00426DE4    mov         ecx,edx
 00426DE6    test        ecx,ecx
>00426DE8    je          00426DEF
 00426DEA    sub         ecx,4
 00426DED    mov         ecx,dword ptr [ecx]
 00426DEF    push        ecx
 00426DF0    xor         ecx,ecx
 00426DF2    call        TEncoding.GetByteCount
 00426DF7    ret
*}
end;

//00426DF8
procedure TEncoding.GetByteCount(Chars:TArray<System.Char>; CharIndex:Integer; CharCount:Integer);
begin
{*
 00426DF8    push        ebp
 00426DF9    mov         ebp,esp
 00426DFB    add         esp,0FFFFFFF4
 00426DFE    push        ebx
 00426DFF    mov         dword ptr [ebp-4],ecx
 00426E02    mov         ebx,dword ptr [ebp+8]
 00426E05    cmp         dword ptr [ebp-4],0
>00426E09    jge         00426E32
 00426E0B    mov         eax,dword ptr [ebp-4]
 00426E0E    mov         dword ptr [ebp-0C],eax
 00426E11    mov         byte ptr [ebp-8],0
 00426E15    lea         eax,[ebp-0C]
 00426E18    push        eax
 00426E19    push        0
 00426E1B    mov         ecx,dword ptr ds:[7C4B40];^SResString107:TResStringRec
 00426E21    mov         dl,1
 00426E23    mov         eax,[0041B6C0];EEncodingError
 00426E28    call        Exception.CreateResFmt;EEncodingError.Create
 00426E2D    call        @RaiseExcept
 00426E32    test        ebx,ebx
>00426E34    jge         00426E5A
 00426E36    mov         dword ptr [ebp-0C],ebx
 00426E39    mov         byte ptr [ebp-8],0
 00426E3D    lea         eax,[ebp-0C]
 00426E40    push        eax
 00426E41    push        0
 00426E43    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00426E49    mov         dl,1
 00426E4B    mov         eax,[0041B6C0];EEncodingError
 00426E50    call        Exception.CreateResFmt;EEncodingError.Create
 00426E55    call        @RaiseExcept
 00426E5A    mov         ecx,edx
 00426E5C    test        ecx,ecx
>00426E5E    je          00426E65
 00426E60    sub         ecx,4
 00426E63    mov         ecx,dword ptr [ecx]
 00426E65    sub         ecx,dword ptr [ebp-4]
 00426E68    cmp         ebx,ecx
>00426E6A    jle         00426E90
 00426E6C    mov         dword ptr [ebp-0C],ebx
 00426E6F    mov         byte ptr [ebp-8],0
 00426E73    lea         eax,[ebp-0C]
 00426E76    push        eax
 00426E77    push        0
 00426E79    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00426E7F    mov         dl,1
 00426E81    mov         eax,[0041B6C0];EEncodingError
 00426E86    call        Exception.CreateResFmt;EEncodingError.Create
 00426E8B    call        @RaiseExcept
 00426E90    mov         ecx,dword ptr [ebp-4]
 00426E93    lea         edx,[edx+ecx*2]
 00426E96    mov         ecx,ebx
 00426E98    mov         ebx,dword ptr [eax]
 00426E9A    call        dword ptr [ebx];@AbstractError
 00426E9C    pop         ebx
 00426E9D    mov         esp,ebp
 00426E9F    pop         ebp
 00426EA0    ret         4
*}
end;

//00426EA4
function TEncoding.GetByteCount(S:string):Integer;
begin
{*
 00426EA4    push        ebx
 00426EA5    push        esi
 00426EA6    push        edi
 00426EA7    mov         edi,edx
 00426EA9    mov         esi,eax
 00426EAB    mov         ebx,edi
 00426EAD    test        ebx,ebx
>00426EAF    je          00426EB6
 00426EB1    sub         ebx,4
 00426EB4    mov         ebx,dword ptr [ebx]
 00426EB6    mov         eax,edi
 00426EB8    call        @UStrToPWChar
 00426EBD    mov         edx,eax
 00426EBF    mov         ecx,ebx
 00426EC1    mov         eax,esi
 00426EC3    mov         ebx,dword ptr [eax]
 00426EC5    call        dword ptr [ebx];@AbstractError
 00426EC7    pop         edi
 00426EC8    pop         esi
 00426EC9    pop         ebx
 00426ECA    ret
*}
end;

//00426ECC
procedure TEncoding.GetByteCount(S:string; CharIndex:Integer; CharCount:Integer);
begin
{*
 00426ECC    push        ebp
 00426ECD    mov         ebp,esp
 00426ECF    add         esp,0FFFFFFF4
 00426ED2    push        ebx
 00426ED3    mov         dword ptr [ebp-4],ecx
 00426ED6    mov         ebx,dword ptr [ebp+8]
 00426ED9    cmp         dword ptr [ebp-4],1
>00426EDD    jge         00426F06
 00426EDF    mov         eax,dword ptr [ebp-4]
 00426EE2    mov         dword ptr [ebp-0C],eax
 00426EE5    mov         byte ptr [ebp-8],0
 00426EE9    lea         eax,[ebp-0C]
 00426EEC    push        eax
 00426EED    push        0
 00426EEF    mov         ecx,dword ptr ds:[7C4B40];^SResString107:TResStringRec
 00426EF5    mov         dl,1
 00426EF7    mov         eax,[0041B6C0];EEncodingError
 00426EFC    call        Exception.CreateResFmt;EEncodingError.Create
 00426F01    call        @RaiseExcept
 00426F06    test        ebx,ebx
>00426F08    jge         00426F2E
 00426F0A    mov         dword ptr [ebp-0C],ebx
 00426F0D    mov         byte ptr [ebp-8],0
 00426F11    lea         eax,[ebp-0C]
 00426F14    push        eax
 00426F15    push        0
 00426F17    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00426F1D    mov         dl,1
 00426F1F    mov         eax,[0041B6C0];EEncodingError
 00426F24    call        Exception.CreateResFmt;EEncodingError.Create
 00426F29    call        @RaiseExcept
 00426F2E    mov         ecx,edx
 00426F30    test        ecx,ecx
>00426F32    je          00426F39
 00426F34    sub         ecx,4
 00426F37    mov         ecx,dword ptr [ecx]
 00426F39    sub         ecx,dword ptr [ebp-4]
 00426F3C    inc         ecx
 00426F3D    cmp         ebx,ecx
>00426F3F    jle         00426F65
 00426F41    mov         dword ptr [ebp-0C],ebx
 00426F44    mov         byte ptr [ebp-8],0
 00426F48    lea         eax,[ebp-0C]
 00426F4B    push        eax
 00426F4C    push        0
 00426F4E    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00426F54    mov         dl,1
 00426F56    mov         eax,[0041B6C0];EEncodingError
 00426F5B    call        Exception.CreateResFmt;EEncodingError.Create
 00426F60    call        @RaiseExcept
 00426F65    mov         ecx,dword ptr [ebp-4]
 00426F68    lea         edx,[edx+ecx*2-2]
 00426F6C    mov         ecx,ebx
 00426F6E    mov         ebx,dword ptr [eax]
 00426F70    call        dword ptr [ebx];@AbstractError
 00426F72    pop         ebx
 00426F73    mov         esp,ebp
 00426F75    pop         ebp
 00426F76    ret         4
*}
end;

//00426F7C
{*procedure TEncoding.GetBytes(Chars:TArray<System.Char>; ?:?);
begin
 00426F7C    push        ebx
 00426F7D    push        esi
 00426F7E    push        edi
 00426F7F    push        ebp
 00426F80    mov         edi,ecx
 00426F82    mov         esi,edx
 00426F84    mov         ebx,eax
 00426F86    mov         edx,esi
 00426F88    mov         eax,ebx
 00426F8A    call        TEncoding.GetByteCount
 00426F8F    mov         ebp,eax
 00426F91    push        ebp
 00426F92    mov         eax,edi
 00426F94    mov         ecx,1
 00426F99    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00426F9F    call        @DynArraySetLength
 00426FA4    add         esp,4
 00426FA7    mov         eax,esi
 00426FA9    test        eax,eax
>00426FAB    je          00426FB2
 00426FAD    sub         eax,4
 00426FB0    mov         eax,dword ptr [eax]
 00426FB2    push        eax
 00426FB3    mov         eax,dword ptr [edi]
 00426FB5    push        eax
 00426FB6    push        0
 00426FB8    xor         ecx,ecx
 00426FBA    mov         edx,esi
 00426FBC    mov         eax,ebx
 00426FBE    call        TEncoding.GetBytes
 00426FC3    pop         ebp
 00426FC4    pop         edi
 00426FC5    pop         esi
 00426FC6    pop         ebx
 00426FC7    ret
end;*}

//00426FC8
procedure TEncoding.GetBytes(Chars:TArray<System.Char>; CharIndex:Integer; ByteIndex:Integer; Bytes:TArray<System.Byte>; CharCount:Integer);
begin
{*
 00426FC8    push        ebp
 00426FC9    mov         ebp,esp
 00426FCB    add         esp,0FFFFFFEC
 00426FCE    push        ebx
 00426FCF    push        esi
 00426FD0    push        edi
 00426FD1    mov         edi,ecx
 00426FD3    mov         dword ptr [ebp-8],edx
 00426FD6    mov         dword ptr [ebp-4],eax
 00426FD9    mov         esi,dword ptr [ebp+8]
 00426FDC    mov         ebx,dword ptr [ebp+10]
 00426FDF    cmp         dword ptr [ebp-8],0
>00426FE3    jne         00427000
 00426FE5    test        ebx,ebx
>00426FE7    je          00427000
 00426FE9    mov         ecx,dword ptr ds:[7C4510];^SResString105:TResStringRec
 00426FEF    mov         dl,1
 00426FF1    mov         eax,[0041B6C0];EEncodingError
 00426FF6    call        Exception.CreateRes;EEncodingError.Create
 00426FFB    call        @RaiseExcept
 00427000    cmp         dword ptr [ebp+0C],0
>00427004    jne         00427021
 00427006    test        ebx,ebx
>00427008    je          00427021
 0042700A    mov         ecx,dword ptr ds:[7C4280];^SResString106:TResStringRec
 00427010    mov         dl,1
 00427012    mov         eax,[0041B6C0];EEncodingError
 00427017    call        Exception.CreateRes;EEncodingError.Create
 0042701C    call        @RaiseExcept
 00427021    test        edi,edi
>00427023    jge         00427049
 00427025    mov         dword ptr [ebp-14],edi
 00427028    mov         byte ptr [ebp-10],0
 0042702C    lea         eax,[ebp-14]
 0042702F    push        eax
 00427030    push        0
 00427032    mov         ecx,dword ptr ds:[7C4B40];^SResString107:TResStringRec
 00427038    mov         dl,1
 0042703A    mov         eax,[0041B6C0];EEncodingError
 0042703F    call        Exception.CreateResFmt;EEncodingError.Create
 00427044    call        @RaiseExcept
 00427049    test        ebx,ebx
>0042704B    jge         00427071
 0042704D    mov         dword ptr [ebp-14],ebx
 00427050    mov         byte ptr [ebp-10],0
 00427054    lea         eax,[ebp-14]
 00427057    push        eax
 00427058    push        0
 0042705A    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00427060    mov         dl,1
 00427062    mov         eax,[0041B6C0];EEncodingError
 00427067    call        Exception.CreateResFmt;EEncodingError.Create
 0042706C    call        @RaiseExcept
 00427071    mov         eax,dword ptr [ebp-8]
 00427074    test        eax,eax
>00427076    je          0042707D
 00427078    sub         eax,4
 0042707B    mov         eax,dword ptr [eax]
 0042707D    sub         eax,edi
 0042707F    cmp         ebx,eax
>00427081    jle         004270A7
 00427083    mov         dword ptr [ebp-14],ebx
 00427086    mov         byte ptr [ebp-10],0
 0042708A    lea         eax,[ebp-14]
 0042708D    push        eax
 0042708E    push        0
 00427090    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00427096    mov         dl,1
 00427098    mov         eax,[0041B6C0];EEncodingError
 0042709D    call        Exception.CreateResFmt;EEncodingError.Create
 004270A2    call        @RaiseExcept
 004270A7    mov         eax,dword ptr [ebp+0C]
 004270AA    test        eax,eax
>004270AC    je          004270B3
 004270AE    sub         eax,4
 004270B1    mov         eax,dword ptr [eax]
 004270B3    mov         dword ptr [ebp-0C],eax
 004270B6    test        esi,esi
>004270B8    jl          004270BF
 004270BA    cmp         esi,dword ptr [ebp-0C]
>004270BD    jle         004270E3
 004270BF    mov         dword ptr [ebp-14],esi
 004270C2    mov         byte ptr [ebp-10],0
 004270C6    lea         eax,[ebp-14]
 004270C9    push        eax
 004270CA    push        0
 004270CC    mov         ecx,dword ptr ds:[7C4978];^SResString110:TResStringRec
 004270D2    mov         dl,1
 004270D4    mov         eax,[0041B6C0];EEncodingError
 004270D9    call        Exception.CreateResFmt;EEncodingError.Create
 004270DE    call        @RaiseExcept
 004270E3    push        ebx
 004270E4    mov         ecx,edi
 004270E6    mov         edx,dword ptr [ebp-8]
 004270E9    mov         eax,dword ptr [ebp-4]
 004270EC    call        TEncoding.GetByteCount
 004270F1    mov         edx,dword ptr [ebp-0C]
 004270F4    sub         edx,esi
 004270F6    cmp         eax,edx
>004270F8    jle         00427111
 004270FA    mov         ecx,dword ptr ds:[7C4280];^SResString106:TResStringRec
 00427100    mov         dl,1
 00427102    mov         eax,[0041B6C0];EEncodingError
 00427107    call        Exception.CreateRes;EEncodingError.Create
 0042710C    call        @RaiseExcept
 00427111    mov         eax,dword ptr [ebp+0C]
 00427114    add         eax,esi
 00427116    push        eax
 00427117    mov         eax,dword ptr [ebp-0C]
 0042711A    sub         eax,esi
 0042711C    push        eax
 0042711D    mov         eax,dword ptr [ebp-8]
 00427120    lea         edx,[eax+edi*2]
 00427123    mov         ecx,ebx
 00427125    mov         eax,dword ptr [ebp-4]
 00427128    mov         ebx,dword ptr [eax]
 0042712A    call        dword ptr [ebx+4];@AbstractError
 0042712D    pop         edi
 0042712E    pop         esi
 0042712F    pop         ebx
 00427130    mov         esp,ebp
 00427132    pop         ebp
 00427133    ret         0C
*}
end;

//00427138
procedure TEncoding.GetBytes(S:string; ?:TEncoding);
begin
{*
 00427138    push        ebx
 00427139    push        esi
 0042713A    push        edi
 0042713B    push        ebp
 0042713C    mov         edi,ecx
 0042713E    mov         esi,edx
 00427140    mov         ebx,eax
 00427142    mov         edx,esi
 00427144    mov         eax,ebx
 00427146    call        TEncoding.GetByteCount
 0042714B    mov         ebp,eax
 0042714D    push        ebp
 0042714E    mov         eax,edi
 00427150    mov         ecx,1
 00427155    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 0042715B    call        @DynArraySetLength
 00427160    add         esp,4
 00427163    mov         eax,esi
 00427165    test        eax,eax
>00427167    je          0042716E
 00427169    sub         eax,4
 0042716C    mov         eax,dword ptr [eax]
 0042716E    push        eax
 0042716F    mov         eax,dword ptr [edi]
 00427171    push        eax
 00427172    push        0
 00427174    mov         ecx,1
 00427179    mov         edx,esi
 0042717B    mov         eax,ebx
 0042717D    call        TEncoding.GetBytes
 00427182    pop         ebp
 00427183    pop         edi
 00427184    pop         esi
 00427185    pop         ebx
 00427186    ret
*}
end;

//00427188
procedure TEncoding.GetBytes(S:string; CharIndex:Integer; ByteIndex:Integer; Bytes:TArray<System.Byte>; CharCount:Integer);
begin
{*
 00427188    push        ebp
 00427189    mov         ebp,esp
 0042718B    add         esp,0FFFFFFEC
 0042718E    push        ebx
 0042718F    push        esi
 00427190    push        edi
 00427191    mov         edi,ecx
 00427193    mov         dword ptr [ebp-8],edx
 00427196    mov         dword ptr [ebp-4],eax
 00427199    mov         esi,dword ptr [ebp+8]
 0042719C    mov         ebx,dword ptr [ebp+10]
 0042719F    cmp         dword ptr [ebp+0C],0
>004271A3    jne         004271C0
 004271A5    test        ebx,ebx
>004271A7    je          004271C0
 004271A9    mov         ecx,dword ptr ds:[7C4510];^SResString105:TResStringRec
 004271AF    mov         dl,1
 004271B1    mov         eax,[0041B6C0];EEncodingError
 004271B6    call        Exception.CreateRes;EEncodingError.Create
 004271BB    call        @RaiseExcept
 004271C0    cmp         edi,1
>004271C3    jge         004271E9
 004271C5    mov         dword ptr [ebp-14],edi
 004271C8    mov         byte ptr [ebp-10],0
 004271CC    lea         eax,[ebp-14]
 004271CF    push        eax
 004271D0    push        0
 004271D2    mov         ecx,dword ptr ds:[7C4B40];^SResString107:TResStringRec
 004271D8    mov         dl,1
 004271DA    mov         eax,[0041B6C0];EEncodingError
 004271DF    call        Exception.CreateResFmt;EEncodingError.Create
 004271E4    call        @RaiseExcept
 004271E9    test        ebx,ebx
>004271EB    jge         00427211
 004271ED    mov         dword ptr [ebp-14],ebx
 004271F0    mov         byte ptr [ebp-10],0
 004271F4    lea         eax,[ebp-14]
 004271F7    push        eax
 004271F8    push        0
 004271FA    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00427200    mov         dl,1
 00427202    mov         eax,[0041B6C0];EEncodingError
 00427207    call        Exception.CreateResFmt;EEncodingError.Create
 0042720C    call        @RaiseExcept
 00427211    mov         eax,dword ptr [ebp-8]
 00427214    test        eax,eax
>00427216    je          0042721D
 00427218    sub         eax,4
 0042721B    mov         eax,dword ptr [eax]
 0042721D    sub         eax,edi
 0042721F    inc         eax
 00427220    cmp         ebx,eax
>00427222    jle         00427248
 00427224    mov         dword ptr [ebp-14],ebx
 00427227    mov         byte ptr [ebp-10],0
 0042722B    lea         eax,[ebp-14]
 0042722E    push        eax
 0042722F    push        0
 00427231    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00427237    mov         dl,1
 00427239    mov         eax,[0041B6C0];EEncodingError
 0042723E    call        Exception.CreateResFmt;EEncodingError.Create
 00427243    call        @RaiseExcept
 00427248    mov         eax,dword ptr [ebp+0C]
 0042724B    test        eax,eax
>0042724D    je          00427254
 0042724F    sub         eax,4
 00427252    mov         eax,dword ptr [eax]
 00427254    mov         dword ptr [ebp-0C],eax
 00427257    test        esi,esi
>00427259    jl          00427260
 0042725B    cmp         esi,dword ptr [ebp-0C]
>0042725E    jle         00427284
 00427260    mov         dword ptr [ebp-14],esi
 00427263    mov         byte ptr [ebp-10],0
 00427267    lea         eax,[ebp-14]
 0042726A    push        eax
 0042726B    push        0
 0042726D    mov         ecx,dword ptr ds:[7C4978];^SResString110:TResStringRec
 00427273    mov         dl,1
 00427275    mov         eax,[0041B6C0];EEncodingError
 0042727A    call        Exception.CreateResFmt;EEncodingError.Create
 0042727F    call        @RaiseExcept
 00427284    push        ebx
 00427285    mov         ecx,edi
 00427287    mov         edx,dword ptr [ebp-8]
 0042728A    mov         eax,dword ptr [ebp-4]
 0042728D    call        TEncoding.GetByteCount
 00427292    mov         edx,dword ptr [ebp-0C]
 00427295    sub         edx,esi
 00427297    cmp         eax,edx
>00427299    jle         004272B2
 0042729B    mov         ecx,dword ptr ds:[7C4280];^SResString106:TResStringRec
 004272A1    mov         dl,1
 004272A3    mov         eax,[0041B6C0];EEncodingError
 004272A8    call        Exception.CreateRes;EEncodingError.Create
 004272AD    call        @RaiseExcept
 004272B2    mov         eax,dword ptr [ebp+0C]
 004272B5    add         eax,esi
 004272B7    push        eax
 004272B8    mov         eax,dword ptr [ebp-0C]
 004272BB    sub         eax,esi
 004272BD    push        eax
 004272BE    mov         eax,dword ptr [ebp-8]
 004272C1    lea         edx,[eax+edi*2-2]
 004272C5    mov         ecx,ebx
 004272C7    mov         eax,dword ptr [ebp-4]
 004272CA    mov         ebx,dword ptr [eax]
 004272CC    call        dword ptr [ebx+4];@AbstractError
 004272CF    pop         edi
 004272D0    pop         esi
 004272D1    pop         ebx
 004272D2    mov         esp,ebp
 004272D4    pop         ebp
 004272D5    ret         0C
*}
end;

//004272D8
function TEncoding.GetCharCount(Bytes:TArray<System.Byte>; ByteIndex:Integer; ByteCount:Integer):Integer;
begin
{*
 004272D8    push        ebp
 004272D9    mov         ebp,esp
 004272DB    add         esp,0FFFFFFF4
 004272DE    push        ebx
 004272DF    mov         dword ptr [ebp-4],ecx
 004272E2    mov         ebx,dword ptr [ebp+8]
 004272E5    test        edx,edx
>004272E7    jne         00427304
 004272E9    test        ebx,ebx
>004272EB    je          00427304
 004272ED    mov         ecx,dword ptr ds:[7C4510];^SResString105:TResStringRec
 004272F3    mov         dl,1
 004272F5    mov         eax,[0041B6C0];EEncodingError
 004272FA    call        Exception.CreateRes;EEncodingError.Create
 004272FF    call        @RaiseExcept
 00427304    cmp         dword ptr [ebp-4],0
>00427308    jge         00427331
 0042730A    mov         eax,dword ptr [ebp-4]
 0042730D    mov         dword ptr [ebp-0C],eax
 00427310    mov         byte ptr [ebp-8],0
 00427314    lea         eax,[ebp-0C]
 00427317    push        eax
 00427318    push        0
 0042731A    mov         ecx,dword ptr ds:[7C47C4];^SResString108:TResStringRec
 00427320    mov         dl,1
 00427322    mov         eax,[0041B6C0];EEncodingError
 00427327    call        Exception.CreateResFmt;EEncodingError.Create
 0042732C    call        @RaiseExcept
 00427331    test        ebx,ebx
>00427333    jge         00427359
 00427335    mov         dword ptr [ebp-0C],ebx
 00427338    mov         byte ptr [ebp-8],0
 0042733C    lea         eax,[ebp-0C]
 0042733F    push        eax
 00427340    push        0
 00427342    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00427348    mov         dl,1
 0042734A    mov         eax,[0041B6C0];EEncodingError
 0042734F    call        Exception.CreateResFmt;EEncodingError.Create
 00427354    call        @RaiseExcept
 00427359    mov         ecx,edx
 0042735B    test        ecx,ecx
>0042735D    je          00427364
 0042735F    sub         ecx,4
 00427362    mov         ecx,dword ptr [ecx]
 00427364    sub         ecx,dword ptr [ebp-4]
 00427367    cmp         ebx,ecx
>00427369    jle         0042738F
 0042736B    mov         dword ptr [ebp-0C],ebx
 0042736E    mov         byte ptr [ebp-8],0
 00427372    lea         eax,[ebp-0C]
 00427375    push        eax
 00427376    push        0
 00427378    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 0042737E    mov         dl,1
 00427380    mov         eax,[0041B6C0];EEncodingError
 00427385    call        Exception.CreateResFmt;EEncodingError.Create
 0042738A    call        @RaiseExcept
 0042738F    mov         ecx,dword ptr [ebp-4]
 00427392    add         edx,ecx
 00427394    mov         ecx,ebx
 00427396    mov         ebx,dword ptr [eax]
 00427398    call        dword ptr [ebx+8];@AbstractError
 0042739B    pop         ebx
 0042739C    mov         esp,ebp
 0042739E    pop         ebp
 0042739F    ret         4
*}
end;

//004273A4
procedure TEncoding.GetChars(Bytes:TArray<System.Byte>; ?:TEncoding);
begin
{*
 004273A4    push        ebx
 004273A5    push        esi
 004273A6    push        edi
 004273A7    push        ebp
 004273A8    mov         ebp,ecx
 004273AA    mov         edi,edx
 004273AC    mov         esi,eax
 004273AE    mov         ebx,edi
 004273B0    test        ebx,ebx
>004273B2    je          004273B9
 004273B4    sub         ebx,4
 004273B7    mov         ebx,dword ptr [ebx]
 004273B9    push        ebx
 004273BA    push        ebp
 004273BB    xor         ecx,ecx
 004273BD    mov         edx,edi
 004273BF    mov         eax,esi
 004273C1    call        TEncoding.GetChars
 004273C6    pop         ebp
 004273C7    pop         edi
 004273C8    pop         esi
 004273C9    pop         ebx
 004273CA    ret
*}
end;

//004273CC
{*procedure TEncoding.GetChars(Bytes:TArray<System.Byte>; ByteIndex:Integer; ?:?; ByteCount:Integer);
begin
 004273CC    push        ebp
 004273CD    mov         ebp,esp
 004273CF    add         esp,0FFFFFFF0
 004273D2    push        ebx
 004273D3    push        esi
 004273D4    push        edi
 004273D5    mov         esi,ecx
 004273D7    mov         dword ptr [ebp-8],edx
 004273DA    mov         dword ptr [ebp-4],eax
 004273DD    mov         ebx,dword ptr [ebp+0C]
 004273E0    cmp         dword ptr [ebp-8],0
>004273E4    jne         00427401
 004273E6    test        ebx,ebx
>004273E8    je          00427401
 004273EA    mov         ecx,dword ptr ds:[7C4510];^SResString105:TResStringRec
 004273F0    mov         dl,1
 004273F2    mov         eax,[0041B6C0];EEncodingError
 004273F7    call        Exception.CreateRes;EEncodingError.Create
 004273FC    call        @RaiseExcept
 00427401    test        esi,esi
>00427403    jge         00427429
 00427405    mov         dword ptr [ebp-10],esi
 00427408    mov         byte ptr [ebp-0C],0
 0042740C    lea         eax,[ebp-10]
 0042740F    push        eax
 00427410    push        0
 00427412    mov         ecx,dword ptr ds:[7C47C4];^SResString108:TResStringRec
 00427418    mov         dl,1
 0042741A    mov         eax,[0041B6C0];EEncodingError
 0042741F    call        Exception.CreateResFmt;EEncodingError.Create
 00427424    call        @RaiseExcept
 00427429    test        ebx,ebx
>0042742B    jge         00427451
 0042742D    mov         dword ptr [ebp-10],ebx
 00427430    mov         byte ptr [ebp-0C],0
 00427434    lea         eax,[ebp-10]
 00427437    push        eax
 00427438    push        0
 0042743A    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00427440    mov         dl,1
 00427442    mov         eax,[0041B6C0];EEncodingError
 00427447    call        Exception.CreateResFmt;EEncodingError.Create
 0042744C    call        @RaiseExcept
 00427451    mov         eax,dword ptr [ebp-8]
 00427454    test        eax,eax
>00427456    je          0042745D
 00427458    sub         eax,4
 0042745B    mov         eax,dword ptr [eax]
 0042745D    sub         eax,esi
 0042745F    cmp         ebx,eax
>00427461    jle         00427487
 00427463    mov         dword ptr [ebp-10],ebx
 00427466    mov         byte ptr [ebp-0C],0
 0042746A    lea         eax,[ebp-10]
 0042746D    push        eax
 0042746E    push        0
 00427470    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 00427476    mov         dl,1
 00427478    mov         eax,[0041B6C0];EEncodingError
 0042747D    call        Exception.CreateResFmt;EEncodingError.Create
 00427482    call        @RaiseExcept
 00427487    push        ebx
 00427488    mov         ecx,esi
 0042748A    mov         edx,dword ptr [ebp-8]
 0042748D    mov         eax,dword ptr [ebp-4]
 00427490    call        TEncoding.GetCharCount
 00427495    mov         edi,eax
 00427497    test        ebx,ebx
>00427499    jle         004274B6
 0042749B    test        edi,edi
>0042749D    jne         004274B6
 0042749F    mov         ecx,dword ptr ds:[7C4658];^SResString112:TResStringRec
 004274A5    mov         dl,1
 004274A7    mov         eax,[0041B6C0];EEncodingError
 004274AC    call        Exception.CreateRes;EEncodingError.Create
 004274B1    call        @RaiseExcept
 004274B6    push        edi
 004274B7    mov         eax,dword ptr [ebp+8]
 004274BA    mov         ecx,1
 004274BF    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 004274C5    call        @DynArraySetLength
 004274CA    add         esp,4
 004274CD    mov         eax,dword ptr [ebp+8]
 004274D0    mov         eax,dword ptr [eax]
 004274D2    push        eax
 004274D3    push        edi
 004274D4    mov         eax,dword ptr [ebp-8]
 004274D7    lea         edx,[eax+esi]
 004274DA    mov         ecx,ebx
 004274DC    mov         eax,dword ptr [ebp-4]
 004274DF    mov         ebx,dword ptr [eax]
 004274E1    call        dword ptr [ebx+0C];@AbstractError
 004274E4    pop         edi
 004274E5    pop         esi
 004274E6    pop         ebx
 004274E7    mov         esp,ebp
 004274E9    pop         ebp
 004274EA    ret         8
end;*}

//004274F0
procedure sub_004274F0;
begin
{*
 004274F0    or          eax,0FFFFFFFF
 004274F3    ret
*}
end;

//004274F4
{*function sub_004274F4:?;
begin
 004274F4    call        TEncoding.GetANSI
 004274F9    ret
end;*}

//004274FC
function TEncoding.GetEncoding:TEncoding;
begin
{*
 004274FC    mov         edx,eax
 004274FE    sub         edx,4B0
>00427504    je          00427516
 00427506    dec         edx
>00427507    je          00427523
 00427509    sub         edx,0F937
>0042750F    je          00427530
 00427511    dec         edx
>00427512    je          0042753D
>00427514    jmp         0042754A
 00427516    mov         dl,1
 00427518    mov         eax,[0041CF48];TUnicodeEncoding
 0042751D    call        TUnicodeEncoding.Create;TUnicodeEncoding.Create
 00427522    ret
 00427523    mov         dl,1
 00427525    mov         eax,[0041D148];TBigEndianUnicodeEncoding
 0042752A    call        TUnicodeEncoding.Create;TBigEndianUnicodeEncoding.Create
 0042752F    ret
 00427530    mov         dl,1
 00427532    mov         eax,[0041CB78];TUTF7Encoding
 00427537    call        TUTF7Encoding.Create;TUTF7Encoding.Create
 0042753C    ret
 0042753D    mov         dl,1
 0042753F    mov         eax,[0041CD40];TUTF8Encoding
 00427544    call        TUTF8Encoding.Create;TUTF8Encoding.Create
 00427549    ret
 0042754A    mov         ecx,eax
 0042754C    mov         dl,1
 0042754E    mov         eax,[0041C870];TMBCSEncoding
 00427553    call        00427774
 00427558    ret
*}
end;

//0042755C
{*procedure sub_0042755C(?:?);
begin
 0042755C    push        ebx
 0042755D    mov         ebx,edx
 0042755F    mov         eax,ebx
 00427561    call        @UStrClr
 00427566    pop         ebx
 00427567    ret
end;*}

//00427568
function TEncoding.GetString(Bytes:TArray<System.Byte>; ByteIndex:Integer; ByteCount:Integer):string;
begin
{*
 00427568    push        ebp
 00427569    mov         ebp,esp
 0042756B    add         esp,0FFFFFFF0
 0042756E    push        ebx
 0042756F    push        esi
 00427570    push        edi
 00427571    mov         esi,ecx
 00427573    mov         dword ptr [ebp-8],edx
 00427576    mov         dword ptr [ebp-4],eax
 00427579    mov         ebx,dword ptr [ebp+0C]
 0042757C    mov         edx,dword ptr [ebp-8]
 0042757F    mov         eax,edx
 00427581    test        eax,eax
>00427583    je          0042758A
 00427585    sub         eax,4
 00427588    mov         eax,dword ptr [eax]
 0042758A    test        eax,eax
>0042758C    jne         004275A9
 0042758E    test        ebx,ebx
>00427590    je          004275A9
 00427592    mov         ecx,dword ptr ds:[7C4510];^SResString105:TResStringRec
 00427598    mov         dl,1
 0042759A    mov         eax,[0041B6C0];EEncodingError
 0042759F    call        Exception.CreateRes
 004275A4    call        @RaiseExcept
 004275A9    test        esi,esi
>004275AB    jge         004275D1
 004275AD    mov         dword ptr [ebp-10],esi
 004275B0    mov         byte ptr [ebp-0C],0
 004275B4    lea         eax,[ebp-10]
 004275B7    push        eax
 004275B8    push        0
 004275BA    mov         ecx,dword ptr ds:[7C47C4];^SResString108:TResStringRec
 004275C0    mov         dl,1
 004275C2    mov         eax,[0041B6C0];EEncodingError
 004275C7    call        Exception.CreateResFmt
 004275CC    call        @RaiseExcept
 004275D1    test        ebx,ebx
>004275D3    jge         004275F9
 004275D5    mov         dword ptr [ebp-10],ebx
 004275D8    mov         byte ptr [ebp-0C],0
 004275DC    lea         eax,[ebp-10]
 004275DF    push        eax
 004275E0    push        0
 004275E2    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 004275E8    mov         dl,1
 004275EA    mov         eax,[0041B6C0];EEncodingError
 004275EF    call        Exception.CreateResFmt
 004275F4    call        @RaiseExcept
 004275F9    mov         eax,edx
 004275FB    test        eax,eax
>004275FD    je          00427604
 004275FF    sub         eax,4
 00427602    mov         eax,dword ptr [eax]
 00427604    sub         eax,esi
 00427606    cmp         ebx,eax
>00427608    jle         0042762E
 0042760A    mov         dword ptr [ebp-10],ebx
 0042760D    mov         byte ptr [ebp-0C],0
 00427611    lea         eax,[ebp-10]
 00427614    push        eax
 00427615    push        0
 00427617    mov         ecx,dword ptr ds:[7C4758];^SResString109:TResStringRec
 0042761D    mov         dl,1
 0042761F    mov         eax,[0041B6C0];EEncodingError
 00427624    call        Exception.CreateResFmt
 00427629    call        @RaiseExcept
 0042762E    push        ebx
 0042762F    mov         ecx,esi
 00427631    mov         edx,dword ptr [ebp-8]
 00427634    mov         eax,dword ptr [ebp-4]
 00427637    call        TEncoding.GetCharCount
 0042763C    mov         edi,eax
 0042763E    test        ebx,ebx
>00427640    jle         0042765D
 00427642    test        edi,edi
>00427644    jne         0042765D
 00427646    mov         ecx,dword ptr ds:[7C4658];^SResString112:TResStringRec
 0042764C    mov         dl,1
 0042764E    mov         eax,[0041B6C0];EEncodingError
 00427653    call        Exception.CreateRes
 00427658    call        @RaiseExcept
 0042765D    mov         eax,dword ptr [ebp+8]
 00427660    mov         edx,edi
 00427662    call        @UStrSetLength
 00427667    mov         eax,dword ptr [ebp+8]
 0042766A    mov         eax,dword ptr [eax]
 0042766C    call        @UStrToPWChar
 00427671    push        eax
 00427672    push        edi
 00427673    mov         eax,dword ptr [ebp-8]
 00427676    lea         edx,[eax+esi]
 00427679    mov         ecx,ebx
 0042767B    mov         eax,dword ptr [ebp-4]
 0042767E    mov         ebx,dword ptr [eax]
 00427680    call        dword ptr [ebx+0C]
 00427683    pop         edi
 00427684    pop         esi
 00427685    pop         ebx
 00427686    mov         esp,ebp
 00427688    pop         ebp
 00427689    ret         8
*}
end;

//0042768C
{*function sub_0042768C:?;
begin
 0042768C    cmp         dword ptr ds:[7C7DA8],0;gvar_007C7DA8
>00427693    jne         004276B8
 00427695    mov         dl,1
 00427697    mov         eax,[0041CF48];TUnicodeEncoding
 0042769C    call        TUnicodeEncoding.Create;TUnicodeEncoding.Create
 004276A1    mov         edx,eax
 004276A3    xor         eax,eax
 004276A5    lock cmpxchgdword ptr ds:[7C7DA8],edx;gvar_007C7DA8
 004276AD    test        eax,eax
>004276AF    je          004276B8
 004276B1    mov         eax,edx
 004276B3    call        TObject.Free
 004276B8    mov         eax,[007C7DA8];gvar_007C7DA8
 004276BD    ret
end;*}

//004276C0
{*function sub_004276C0:?;
begin
 004276C0    cmp         dword ptr ds:[7C7DB0],0;gvar_007C7DB0
>004276C7    jne         004276EC
 004276C9    mov         dl,1
 004276CB    mov         eax,[0041CD40];TUTF8Encoding
 004276D0    call        TUTF8Encoding.Create;TUTF8Encoding.Create
 004276D5    mov         edx,eax
 004276D7    xor         eax,eax
 004276D9    lock cmpxchgdword ptr ds:[7C7DB0],edx;gvar_007C7DB0
 004276E1    test        eax,eax
>004276E3    je          004276EC
 004276E5    mov         eax,edx
 004276E7    call        TObject.Free
 004276EC    mov         eax,[007C7DB0];gvar_007C7DB0
 004276F1    ret
end;*}

//004276F4
function TEncoding.IsStandardEncoding:Boolean;
begin
{*
 004276F4    test        eax,eax
>004276F6    je          00427728
 004276F8    cmp         eax,dword ptr ds:[7C7D9C];gvar_007C7D9C
>004276FE    je          0042772B
 00427700    cmp         eax,dword ptr ds:[7C7DB0];gvar_007C7DB0
>00427706    je          0042772B
 00427708    cmp         eax,dword ptr ds:[7C7DA8];gvar_007C7DA8
>0042770E    je          0042772B
 00427710    cmp         eax,dword ptr ds:[7C7DA0];gvar_007C7DA0
>00427716    je          0042772B
 00427718    cmp         eax,dword ptr ds:[7C7DAC];gvar_007C7DAC
>0042771E    je          0042772B
 00427720    cmp         eax,dword ptr ds:[7C7DA4];gvar_007C7DA4
>00427726    je          0042772B
 00427728    xor         eax,eax
 0042772A    ret
 0042772B    mov         al,1
 0042772D    ret
*}
end;

//00427730
constructor sub_00427730;
begin
{*
 00427730    push        ebx
 00427731    push        esi
 00427732    push        edi
 00427733    test        dl,dl
>00427735    je          0042773F
 00427737    add         esp,0FFFFFFF0
 0042773A    call        @ClassCreate
 0042773F    mov         ebx,edx
 00427741    mov         esi,eax
 00427743    push        0
 00427745    push        0
 00427747    call        kernel32.GetACP
 0042774C    mov         ecx,eax
 0042774E    xor         edx,edx
 00427750    mov         eax,esi
 00427752    mov         edi,dword ptr [eax]
 00427754    call        dword ptr [edi+30];TMBCSEncoding.Create
 00427757    mov         eax,esi
 00427759    test        bl,bl
>0042775B    je          0042776C
 0042775D    call        @AfterConstruction
 00427762    pop         dword ptr fs:[0]
 00427769    add         esp,0C
 0042776C    mov         eax,esi
 0042776E    pop         edi
 0042776F    pop         esi
 00427770    pop         ebx
 00427771    ret
*}
end;

//00427774
constructor sub_00427774(CodePage:Integer);
begin
{*
 00427774    push        ebp
 00427775    mov         ebp,esp
 00427777    push        ecx
 00427778    push        ebx
 00427779    push        esi
 0042777A    test        dl,dl
>0042777C    je          00427786
 0042777E    add         esp,0FFFFFFF0
 00427781    call        @ClassCreate
 00427786    mov         byte ptr [ebp-1],dl
 00427789    mov         ebx,eax
 0042778B    mov         dword ptr [ebx+0C],ecx;TMBCSEncoding.FCodePage:Cardinal
 0042778E    push        0
 00427790    push        0
 00427792    xor         edx,edx
 00427794    mov         eax,ebx
 00427796    mov         esi,dword ptr [eax]
 00427798    call        dword ptr [esi+30];TMBCSEncoding.Create
 0042779B    mov         eax,ebx
 0042779D    cmp         byte ptr [ebp-1],0
>004277A1    je          004277B2
 004277A3    call        @AfterConstruction
 004277A8    pop         dword ptr fs:[0]
 004277AF    add         esp,0C
 004277B2    mov         eax,ebx
 004277B4    pop         esi
 004277B5    pop         ebx
 004277B6    pop         ecx
 004277B7    pop         ebp
 004277B8    ret
*}
end;

//004277BC
constructor TMBCSEncoding.Create(WCharToMBFlags:Integer; MBToWCharFlags:Integer);
begin
{*
 004277BC    push        ebp
 004277BD    mov         ebp,esp
 004277BF    add         esp,0FFFFFFEC
 004277C2    push        ebx
 004277C3    push        esi
 004277C4    test        dl,dl
>004277C6    je          004277D0
 004277C8    add         esp,0FFFFFFF0
 004277CB    call        @ClassCreate
 004277D0    mov         ebx,edx
 004277D2    mov         esi,eax
 004277D4    test        ecx,ecx
>004277D6    jne         004277E2
 004277D8    call        kernel32.GetACP
 004277DD    mov         dword ptr [esi+0C],eax
>004277E0    jmp         004277E5
 004277E2    mov         dword ptr [esi+0C],ecx
 004277E5    mov         eax,dword ptr [ebp+0C]
 004277E8    mov         dword ptr [esi+10],eax
 004277EB    mov         eax,dword ptr [ebp+8]
 004277EE    mov         dword ptr [esi+14],eax
 004277F1    lea         eax,[ebp-14]
 004277F4    push        eax
 004277F5    mov         eax,dword ptr [esi+0C]
 004277F8    push        eax
 004277F9    call        kernel32.GetCPInfo
 004277FE    test        eax,eax
>00427800    jne         00427819
 00427802    mov         ecx,dword ptr ds:[7C4AC8];^SResString111:TResStringRec
 00427808    mov         dl,1
 0042780A    mov         eax,[0041B6C0];EEncodingError
 0042780F    call        Exception.CreateRes
 00427814    call        @RaiseExcept
 00427819    mov         eax,dword ptr [ebp-14]
 0042781C    mov         dword ptr [esi+8],eax
 0042781F    dec         eax
 00427820    sete        al
 00427823    mov         byte ptr [esi+4],al
 00427826    mov         eax,esi
 00427828    test        bl,bl
>0042782A    je          0042783B
 0042782C    call        @AfterConstruction
 00427831    pop         dword ptr fs:[0]
 00427838    add         esp,0C
 0042783B    mov         eax,esi
 0042783D    pop         esi
 0042783E    pop         ebx
 0042783F    mov         esp,ebp
 00427841    pop         ebp
 00427842    ret         8
*}
end;

//00427848
procedure TMBCSEncoding.Clone;
begin
{*
 00427848    push        ebx
 00427849    mov         ebx,eax
 0042784B    mov         eax,dword ptr [ebx+10];TMBCSEncoding.FMBToWCharFlags:Cardinal
 0042784E    push        eax
 0042784F    mov         eax,dword ptr [ebx+14];TMBCSEncoding.FWCharToMBFlags:Cardinal
 00427852    push        eax
 00427853    mov         eax,ebx
 00427855    mov         edx,dword ptr [eax]
 00427857    call        dword ptr [edx+10];TMBCSEncoding.sub_004278DC
 0042785A    mov         ecx,eax
 0042785C    mov         dl,1
 0042785E    mov         eax,[0041C870];TMBCSEncoding
 00427863    call        TMBCSEncoding.Create;TMBCSEncoding.Create
 00427868    pop         ebx
 00427869    ret
*}
end;

//0042786C
{*procedure sub_0042786C(?:?);
begin
 0042786C    push        ecx
 0042786D    push        0
 0042786F    push        0
 00427871    push        0
 00427873    push        0
 00427875    mov         ecx,dword ptr [eax+0C];TMBCSEncoding.FCodePage:Cardinal
 00427878    mov         eax,dword ptr [eax+14];TMBCSEncoding.FWCharToMBFlags:Cardinal
 0042787B    xchg        eax,ecx
 0042787C    xchg        ecx,edx
 0042787E    call        LocaleCharsFromUnicode
 00427883    ret
end;*}

//00427884
{*procedure sub_00427884(?:?; ?:?; ?:?);
begin
 00427884    push        ebp
 00427885    mov         ebp,esp
 00427887    push        ecx
 00427888    mov         ecx,dword ptr [ebp+0C]
 0042788B    push        ecx
 0042788C    mov         ecx,dword ptr [ebp+8]
 0042788F    push        ecx
 00427890    push        0
 00427892    push        0
 00427894    mov         ecx,dword ptr [eax+0C];TMBCSEncoding.FCodePage:Cardinal
 00427897    mov         eax,dword ptr [eax+14];TMBCSEncoding.FWCharToMBFlags:Cardinal
 0042789A    xchg        eax,ecx
 0042789B    xchg        ecx,edx
 0042789D    call        LocaleCharsFromUnicode
 004278A2    pop         ebp
 004278A3    ret         8
end;*}

//004278A8
{*procedure sub_004278A8(?:?);
begin
 004278A8    push        ecx
 004278A9    push        0
 004278AB    push        0
 004278AD    mov         ecx,dword ptr [eax+0C];TMBCSEncoding.FCodePage:Cardinal
 004278B0    mov         eax,dword ptr [eax+10];TMBCSEncoding.FMBToWCharFlags:Cardinal
 004278B3    xchg        eax,ecx
 004278B4    xchg        ecx,edx
 004278B6    call        UnicodeFromLocaleChars
 004278BB    ret
end;*}

//004278BC
{*procedure sub_004278BC(?:?; ?:?; ?:?);
begin
 004278BC    push        ebp
 004278BD    mov         ebp,esp
 004278BF    push        ecx
 004278C0    mov         ecx,dword ptr [ebp+0C]
 004278C3    push        ecx
 004278C4    mov         ecx,dword ptr [ebp+8]
 004278C7    push        ecx
 004278C8    mov         ecx,dword ptr [eax+0C];TMBCSEncoding.FCodePage:Cardinal
 004278CB    mov         eax,dword ptr [eax+10];TMBCSEncoding.FMBToWCharFlags:Cardinal
 004278CE    xchg        eax,ecx
 004278CF    xchg        ecx,edx
 004278D1    call        UnicodeFromLocaleChars
 004278D6    pop         ebp
 004278D7    ret         8
end;*}

//004278DC
{*function sub_004278DC:?;
begin
 004278DC    mov         eax,dword ptr [eax+0C];TMBCSEncoding.FCodePage:Cardinal
 004278DF    ret
end;*}

//004278E0
{*procedure sub_004278E0(?:?);
begin
 004278E0    push        ebx
 004278E1    push        esi
 004278E2    add         esp,0FFFFFDE0
 004278E8    mov         esi,edx
 004278EA    mov         ebx,eax
 004278EC    push        esp
 004278ED    push        0
 004278EF    mov         eax,dword ptr [ebx+0C];TMBCSEncoding.FCodePage:Cardinal
 004278F2    push        eax
 004278F3    call        kernel32.GetCPInfoExW
 004278F8    test        eax,eax
>004278FA    je          0042790E
 004278FC    mov         eax,esi
 004278FE    lea         edx,[esp+18]
 00427902    mov         ecx,104
 00427907    call        @UStrFromWArray
>0042790C    jmp         00427915
 0042790E    mov         eax,esi
 00427910    call        @UStrClr
 00427915    add         esp,220
 0042791B    pop         esi
 0042791C    pop         ebx
 0042791D    ret
end;*}

//00427920
function TMBCSEncoding.GetMaxByteCount(CharCount:Integer):Integer;
begin
{*
 00427920    inc         edx
 00427921    imul        edx,dword ptr [eax+8];TMBCSEncoding.FMaxCharSize:Integer
 00427925    mov         eax,edx
 00427927    ret
*}
end;

//00427928
function TMBCSEncoding.GetMaxCharCount(ByteCount:Integer):Integer;
begin
{*
 00427928    mov         eax,edx
 0042792A    ret
*}
end;

//0042792C
{*procedure TMBCSEncoding.GetPreamble(?:?);
begin
 0042792C    push        ebp
 0042792D    mov         ebp,esp
 0042792F    push        0
 00427931    push        0
 00427933    push        0
 00427935    push        ebx
 00427936    mov         ebx,edx
 00427938    xor         edx,edx
 0042793A    push        ebp
 0042793B    push        427A6C
 00427940    push        dword ptr fs:[edx]
 00427943    mov         dword ptr fs:[edx],esp
 00427946    mov         edx,dword ptr [eax]
 00427948    call        dword ptr [edx+10];TMBCSEncoding.sub_004278DC
 0042794B    sub         eax,4B0
>00427950    je          00427965
 00427952    dec         eax
>00427953    je          004279AD
 00427955    sub         eax,0F938
>0042795A    je          004279F2
>00427960    jmp         00427A3E
 00427965    lea         eax,[ebp-4]
 00427968    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 0042796E    call        @DynArrayClear
 00427973    push        2
 00427975    lea         eax,[ebp-4]
 00427978    mov         ecx,1
 0042797D    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427983    call        @DynArraySetLength
 00427988    add         esp,4
 0042798B    mov         eax,dword ptr [ebp-4]
 0042798E    mov         byte ptr [eax],0FF
 00427991    mov         eax,dword ptr [ebp-4]
 00427994    mov         byte ptr [eax+1],0FE
 00427998    mov         edx,dword ptr [ebp-4]
 0042799B    mov         eax,ebx
 0042799D    mov         ecx,dword ptr ds:[402DD4];TArray<System.Byte>
 004279A3    call        @DynArrayAsg
>004279A8    jmp         00427A4B
 004279AD    lea         eax,[ebp-8]
 004279B0    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004279B6    call        @DynArrayClear
 004279BB    push        2
 004279BD    lea         eax,[ebp-8]
 004279C0    mov         ecx,1
 004279C5    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004279CB    call        @DynArraySetLength
 004279D0    add         esp,4
 004279D3    mov         eax,dword ptr [ebp-8]
 004279D6    mov         byte ptr [eax],0FE
 004279D9    mov         eax,dword ptr [ebp-8]
 004279DC    mov         byte ptr [eax+1],0FF
 004279E0    mov         edx,dword ptr [ebp-8]
 004279E3    mov         eax,ebx
 004279E5    mov         ecx,dword ptr ds:[402DD4];TArray<System.Byte>
 004279EB    call        @DynArrayAsg
>004279F0    jmp         00427A4B
 004279F2    lea         eax,[ebp-0C]
 004279F5    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004279FB    call        @DynArrayClear
 00427A00    push        3
 00427A02    lea         eax,[ebp-0C]
 00427A05    mov         ecx,1
 00427A0A    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427A10    call        @DynArraySetLength
 00427A15    add         esp,4
 00427A18    mov         eax,dword ptr [ebp-0C]
 00427A1B    mov         byte ptr [eax],0EF
 00427A1E    mov         eax,dword ptr [ebp-0C]
 00427A21    mov         byte ptr [eax+1],0BB
 00427A25    mov         eax,dword ptr [ebp-0C]
 00427A28    mov         byte ptr [eax+2],0BF
 00427A2C    mov         edx,dword ptr [ebp-0C]
 00427A2F    mov         eax,ebx
 00427A31    mov         ecx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427A37    call        @DynArrayAsg
>00427A3C    jmp         00427A4B
 00427A3E    mov         eax,ebx
 00427A40    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427A46    call        @DynArrayClear
 00427A4B    xor         eax,eax
 00427A4D    pop         edx
 00427A4E    pop         ecx
 00427A4F    pop         ecx
 00427A50    mov         dword ptr fs:[eax],edx
 00427A53    push        427A73
 00427A58    lea         eax,[ebp-0C]
 00427A5B    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427A61    mov         ecx,3
 00427A66    call        @FinalizeArray
 00427A6B    ret
>00427A6C    jmp         @HandleFinally
>00427A71    jmp         00427A58
 00427A73    pop         ebx
 00427A74    mov         esp,ebp
 00427A76    pop         ebp
 00427A77    ret
end;*}

//00427A78
constructor TUTF7Encoding.Create;
begin
{*
 00427A78    push        ebx
 00427A79    push        esi
 00427A7A    test        dl,dl
>00427A7C    je          00427A86
 00427A7E    add         esp,0FFFFFFF0
 00427A81    call        @ClassCreate
 00427A86    mov         ebx,edx
 00427A88    mov         esi,eax
 00427A8A    mov         ecx,0FDE8
 00427A8F    xor         edx,edx
 00427A91    mov         eax,esi
 00427A93    call        00427774
 00427A98    mov         byte ptr [esi+4],0;TUTF7Encoding.FIsSingleByte:Boolean
 00427A9C    mov         eax,esi
 00427A9E    test        bl,bl
>00427AA0    je          00427AB1
 00427AA2    call        @AfterConstruction
 00427AA7    pop         dword ptr fs:[0]
 00427AAE    add         esp,0C
 00427AB1    mov         eax,esi
 00427AB3    pop         esi
 00427AB4    pop         ebx
 00427AB5    ret
*}
end;

//00427AB8
procedure TUTF7Encoding.Clone;
begin
{*
 00427AB8    mov         dl,1
 00427ABA    mov         eax,[0041CB78];TUTF7Encoding
 00427ABF    call        TUTF7Encoding.Create;TUTF7Encoding.Create
 00427AC4    ret
*}
end;

//00427AC8
procedure TUTF7Encoding.GetMaxByteCount(CharCount:Integer);
begin
{*
 00427AC8    lea         eax,[edx+edx*2]
 00427ACB    add         eax,2
 00427ACE    ret
*}
end;

//00427AD0
function TUTF7Encoding.GetMaxCharCount(ByteCount:Integer):Integer;
begin
{*
 00427AD0    mov         eax,edx
 00427AD2    ret
*}
end;

//00427AD4
constructor TUTF8Encoding.Create;
begin
{*
 00427AD4    push        ebx
 00427AD5    push        esi
 00427AD6    test        dl,dl
>00427AD8    je          00427AE2
 00427ADA    add         esp,0FFFFFFF0
 00427ADD    call        @ClassCreate
 00427AE2    mov         ebx,edx
 00427AE4    mov         esi,eax
 00427AE6    push        8
 00427AE8    push        0
 00427AEA    mov         ecx,0FDE9
 00427AEF    xor         edx,edx
 00427AF1    mov         eax,esi
 00427AF3    call        TMBCSEncoding.Create
 00427AF8    mov         byte ptr [esi+4],0;TUTF8Encoding.FIsSingleByte:Boolean
 00427AFC    mov         eax,esi
 00427AFE    test        bl,bl
>00427B00    je          00427B11
 00427B02    call        @AfterConstruction
 00427B07    pop         dword ptr fs:[0]
 00427B0E    add         esp,0C
 00427B11    mov         eax,esi
 00427B13    pop         esi
 00427B14    pop         ebx
 00427B15    ret
*}
end;

//00427B18
procedure TUTF8Encoding.Clone;
begin
{*
 00427B18    mov         dl,1
 00427B1A    mov         eax,[0041CD40];TUTF8Encoding
 00427B1F    call        TUTF8Encoding.Create;TUTF8Encoding.Create
 00427B24    ret
*}
end;

//00427B28
function TUTF8Encoding.GetMaxByteCount(CharCount:Integer):Integer;
begin
{*
 00427B28    inc         edx
 00427B29    lea         eax,[edx+edx*2]
 00427B2C    ret
*}
end;

//00427B30
function TUTF8Encoding.GetMaxCharCount(ByteCount:Integer):Integer;
begin
{*
 00427B30    lea         eax,[edx+1]
 00427B33    ret
*}
end;

//00427B34
{*procedure TUTF8Encoding.GetPreamble(?:?);
begin
 00427B34    push        ebp
 00427B35    mov         ebp,esp
 00427B37    push        0
 00427B39    push        ebx
 00427B3A    mov         ebx,edx
 00427B3C    xor         eax,eax
 00427B3E    push        ebp
 00427B3F    push        427BB0
 00427B44    push        dword ptr fs:[eax]
 00427B47    mov         dword ptr fs:[eax],esp
 00427B4A    lea         eax,[ebp-4]
 00427B4D    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427B53    call        @DynArrayClear
 00427B58    push        3
 00427B5A    lea         eax,[ebp-4]
 00427B5D    mov         ecx,1
 00427B62    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427B68    call        @DynArraySetLength
 00427B6D    add         esp,4
 00427B70    mov         eax,dword ptr [ebp-4]
 00427B73    mov         byte ptr [eax],0EF
 00427B76    mov         eax,dword ptr [ebp-4]
 00427B79    mov         byte ptr [eax+1],0BB
 00427B7D    mov         eax,dword ptr [ebp-4]
 00427B80    mov         byte ptr [eax+2],0BF
 00427B84    mov         edx,dword ptr [ebp-4]
 00427B87    mov         eax,ebx
 00427B89    mov         ecx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427B8F    call        @DynArrayAsg
 00427B94    xor         eax,eax
 00427B96    pop         edx
 00427B97    pop         ecx
 00427B98    pop         ecx
 00427B99    mov         dword ptr fs:[eax],edx
 00427B9C    push        427BB7
 00427BA1    lea         eax,[ebp-4]
 00427BA4    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427BAA    call        @DynArrayClear
 00427BAF    ret
>00427BB0    jmp         @HandleFinally
>00427BB5    jmp         00427BA1
 00427BB7    pop         ebx
 00427BB8    pop         ecx
 00427BB9    pop         ebp
 00427BBA    ret
end;*}

//00427BBC
constructor TUnicodeEncoding.Create;
begin
{*
 00427BBC    test        dl,dl
>00427BBE    je          00427BC8
 00427BC0    add         esp,0FFFFFFF0
 00427BC3    call        @ClassCreate
 00427BC8    mov         byte ptr [eax+4],0;TUnicodeEncoding.FIsSingleByte:Boolean
 00427BCC    mov         dword ptr [eax+8],4;TUnicodeEncoding.FMaxCharSize:Integer
 00427BD3    test        dl,dl
>00427BD5    je          00427BE6
 00427BD7    call        @AfterConstruction
 00427BDC    pop         dword ptr fs:[0]
 00427BE3    add         esp,0C
 00427BE6    ret
*}
end;

//00427BE8
procedure TUnicodeEncoding.Clone;
begin
{*
 00427BE8    mov         dl,1
 00427BEA    mov         eax,[0041CF48];TUnicodeEncoding
 00427BEF    call        TUnicodeEncoding.Create;TUnicodeEncoding.Create
 00427BF4    ret
*}
end;

//00427BF8
{*procedure sub_00427BF8(?:?; ?:?);
begin
 00427BF8    mov         eax,ecx
 00427BFA    add         eax,eax
 00427BFC    ret
end;*}

//00427C00
{*function sub_00427C00(?:?; ?:?; ?:?):?;
begin
 00427C00    push        ebp
 00427C01    mov         ebp,esp
 00427C03    push        ebx
 00427C04    mov         ebx,ecx
 00427C06    add         ebx,ebx
 00427C08    mov         eax,edx
 00427C0A    mov         edx,dword ptr [ebp+0C]
 00427C0D    mov         ecx,ebx
 00427C0F    call        Move
 00427C14    mov         eax,ebx
 00427C16    pop         ebx
 00427C17    pop         ebp
 00427C18    ret         8
end;*}

//00427C1C
{*procedure sub_00427C1C(?:?; ?:?);
begin
 00427C1C    mov         eax,ecx
 00427C1E    sar         eax,1
>00427C20    jns         00427C25
 00427C22    adc         eax,0
 00427C25    ret
end;*}

//00427C28
{*function sub_00427C28(?:?):?;
begin
 00427C28    push        ebp
 00427C29    mov         ebp,esp
 00427C2B    push        ebx
 00427C2C    mov         eax,dword ptr [ebp+8]
 00427C2F    mov         ebx,eax
 00427C31    mov         ecx,eax
 00427C33    add         ecx,ecx
 00427C35    mov         eax,edx
 00427C37    mov         edx,dword ptr [ebp+0C]
 00427C3A    call        Move
 00427C3F    mov         eax,ebx
 00427C41    pop         ebx
 00427C42    pop         ebp
 00427C43    ret         8
end;*}

//00427C48
{*function sub_00427C48:?;
begin
 00427C48    mov         eax,4B0
 00427C4D    ret
end;*}

//00427C50
{*procedure sub_00427C50(?:?);
begin
 00427C50    push        ebx
 00427C51    mov         ebx,edx
 00427C53    mov         eax,ebx
 00427C55    mov         edx,427C70;'1200  (Unicode)'
 00427C5A    call        @UStrAsg
 00427C5F    pop         ebx
 00427C60    ret
end;*}

//00427C90
procedure TUnicodeEncoding.GetMaxByteCount(CharCount:Integer);
begin
{*
 00427C90    inc         edx
 00427C91    mov         eax,edx
 00427C93    add         eax,eax
 00427C95    ret
*}
end;

//00427C98
procedure TUnicodeEncoding.GetMaxCharCount(ByteCount:Integer);
begin
{*
 00427C98    mov         eax,edx
 00427C9A    sar         eax,1
>00427C9C    jns         00427CA1
 00427C9E    adc         eax,0
 00427CA1    and         edx,1
 00427CA4    add         eax,edx
 00427CA6    inc         eax
 00427CA7    ret
*}
end;

//00427CA8
{*procedure TUnicodeEncoding.GetPreamble(?:?);
begin
 00427CA8    push        ebp
 00427CA9    mov         ebp,esp
 00427CAB    push        0
 00427CAD    push        ebx
 00427CAE    mov         ebx,edx
 00427CB0    xor         eax,eax
 00427CB2    push        ebp
 00427CB3    push        427D1D
 00427CB8    push        dword ptr fs:[eax]
 00427CBB    mov         dword ptr fs:[eax],esp
 00427CBE    lea         eax,[ebp-4]
 00427CC1    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427CC7    call        @DynArrayClear
 00427CCC    push        2
 00427CCE    lea         eax,[ebp-4]
 00427CD1    mov         ecx,1
 00427CD6    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427CDC    call        @DynArraySetLength
 00427CE1    add         esp,4
 00427CE4    mov         eax,dword ptr [ebp-4]
 00427CE7    mov         byte ptr [eax],0FF
 00427CEA    mov         eax,dword ptr [ebp-4]
 00427CED    mov         byte ptr [eax+1],0FE
 00427CF1    mov         edx,dword ptr [ebp-4]
 00427CF4    mov         eax,ebx
 00427CF6    mov         ecx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427CFC    call        @DynArrayAsg
 00427D01    xor         eax,eax
 00427D03    pop         edx
 00427D04    pop         ecx
 00427D05    pop         ecx
 00427D06    mov         dword ptr fs:[eax],edx
 00427D09    push        427D24
 00427D0E    lea         eax,[ebp-4]
 00427D11    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427D17    call        @DynArrayClear
 00427D1C    ret
>00427D1D    jmp         @HandleFinally
>00427D22    jmp         00427D0E
 00427D24    pop         ebx
 00427D25    pop         ecx
 00427D26    pop         ebp
 00427D27    ret
end;*}

//00427D28
procedure TBigEndianUnicodeEncoding.Clone;
begin
{*
 00427D28    mov         dl,1
 00427D2A    mov         eax,[0041D148];TBigEndianUnicodeEncoding
 00427D2F    call        TUnicodeEncoding.Create;TBigEndianUnicodeEncoding.Create
 00427D34    ret
*}
end;

//00427D38
procedure sub_00427D38;
begin
{*
 00427D38    push        ebp
 00427D39    mov         ebp,esp
 00427D3B    push        ebx
 00427D3C    push        esi
 00427D3D    mov         eax,dword ptr [ebp+0C]
 00427D40    mov         esi,ecx
 00427D42    dec         esi
 00427D43    test        esi,esi
>00427D45    jl          00427D61
 00427D47    inc         esi
 00427D48    movzx       ebx,word ptr [edx]
 00427D4B    shr         bx,8
 00427D4F    mov         byte ptr [eax],bl
 00427D51    inc         eax
 00427D52    movzx       ebx,byte ptr [edx]
 00427D55    and         bl,0FF
 00427D58    mov         byte ptr [eax],bl
 00427D5A    inc         eax
 00427D5B    add         edx,2
 00427D5E    dec         esi
>00427D5F    jne         00427D48
 00427D61    mov         eax,ecx
 00427D63    add         eax,eax
 00427D65    pop         esi
 00427D66    pop         ebx
 00427D67    pop         ebp
 00427D68    ret         8
*}
end;

//00427D6C
{*function sub_00427D6C(?:?; ?:?; ?:?):?;
begin
 00427D6C    push        ebp
 00427D6D    mov         ebp,esp
 00427D6F    push        ecx
 00427D70    push        ebx
 00427D71    push        esi
 00427D72    push        edi
 00427D73    mov         esi,dword ptr [ebp+0C]
 00427D76    mov         eax,edx
 00427D78    inc         eax
 00427D79    mov         ecx,dword ptr [ebp+8]
 00427D7C    dec         ecx
 00427D7D    test        ecx,ecx
>00427D7F    jl          00427DAB
 00427D81    inc         ecx
 00427D82    movzx       ebx,byte ptr [eax]
 00427D85    mov         byte ptr [ebp-1],bl
 00427D88    movzx       ebx,byte ptr [edx]
 00427D8B    mov         byte ptr [ebp-2],bl
 00427D8E    movzx       ebx,byte ptr [ebp-1]
 00427D92    movzx       edi,byte ptr [ebp-2]
 00427D96    shl         edi,8
 00427D99    or          bx,di
 00427D9C    mov         word ptr [esi],bx
 00427D9F    add         edx,2
 00427DA2    add         eax,2
 00427DA5    add         esi,2
 00427DA8    dec         ecx
>00427DA9    jne         00427D82
 00427DAB    mov         eax,dword ptr [ebp+8]
 00427DAE    pop         edi
 00427DAF    pop         esi
 00427DB0    pop         ebx
 00427DB1    pop         ecx
 00427DB2    pop         ebp
 00427DB3    ret         8
end;*}

//00427DB8
{*function sub_00427DB8:?;
begin
 00427DB8    mov         eax,4B1
 00427DBD    ret
end;*}

//00427DC0
{*procedure sub_00427DC0(?:?);
begin
 00427DC0    push        ebx
 00427DC1    mov         ebx,edx
 00427DC3    mov         eax,ebx
 00427DC5    mov         edx,427DE0;'1201  (Unicode - Big-Endian)'
 00427DCA    call        @UStrAsg
 00427DCF    pop         ebx
 00427DD0    ret
end;*}

//00427E1C
{*procedure TBigEndianUnicodeEncoding.GetPreamble(?:?);
begin
 00427E1C    push        ebp
 00427E1D    mov         ebp,esp
 00427E1F    push        0
 00427E21    push        ebx
 00427E22    mov         ebx,edx
 00427E24    xor         eax,eax
 00427E26    push        ebp
 00427E27    push        427E91
 00427E2C    push        dword ptr fs:[eax]
 00427E2F    mov         dword ptr fs:[eax],esp
 00427E32    lea         eax,[ebp-4]
 00427E35    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427E3B    call        @DynArrayClear
 00427E40    push        2
 00427E42    lea         eax,[ebp-4]
 00427E45    mov         ecx,1
 00427E4A    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427E50    call        @DynArraySetLength
 00427E55    add         esp,4
 00427E58    mov         eax,dword ptr [ebp-4]
 00427E5B    mov         byte ptr [eax],0FE
 00427E5E    mov         eax,dword ptr [ebp-4]
 00427E61    mov         byte ptr [eax+1],0FF
 00427E65    mov         edx,dword ptr [ebp-4]
 00427E68    mov         eax,ebx
 00427E6A    mov         ecx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427E70    call        @DynArrayAsg
 00427E75    xor         eax,eax
 00427E77    pop         edx
 00427E78    pop         ecx
 00427E79    pop         ecx
 00427E7A    mov         dword ptr fs:[eax],edx
 00427E7D    push        427E98
 00427E82    lea         eax,[ebp-4]
 00427E85    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427E8B    call        @DynArrayClear
 00427E90    ret
>00427E91    jmp         @HandleFinally
>00427E96    jmp         00427E82
 00427E98    pop         ebx
 00427E99    pop         ecx
 00427E9A    pop         ebp
 00427E9B    ret
end;*}

//00427E9C
{*procedure sub_00427E9C(?:?; ?:?);
begin
 00427E9C    push        ebx
 00427E9D    push        esi
 00427E9E    push        edi
 00427E9F    mov         edi,edx
 00427EA1    mov         esi,eax
 00427EA3    mov         eax,esi
 00427EA5    test        eax,eax
>00427EA7    je          00427EAE
 00427EA9    sub         eax,4
 00427EAC    mov         eax,dword ptr [eax]
 00427EAE    mov         ebx,eax
 00427EB0    push        ebx
 00427EB1    mov         eax,edi
 00427EB3    mov         ecx,1
 00427EB8    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 00427EBE    call        @DynArraySetLength
 00427EC3    add         esp,4
 00427EC6    mov         eax,esi
 00427EC8    call        @LStrToPChar
 00427ECD    mov         edx,dword ptr [edi]
 00427ECF    mov         ecx,ebx
 00427ED1    call        Move
 00427ED6    pop         edi
 00427ED7    pop         esi
 00427ED8    pop         ebx
 00427ED9    ret
end;*}

//00427EDC
function BytesOf(const Val:RawByteString):TBytes;
begin
{*
 00427EDC    push        ebx
 00427EDD    push        esi
 00427EDE    push        edi
 00427EDF    mov         edi,edx
 00427EE1    mov         esi,eax
 00427EE3    call        TEncoding.GetANSI
 00427EE8    mov         ebx,eax
 00427EEA    mov         ecx,edi
 00427EEC    mov         edx,esi
 00427EEE    mov         eax,ebx
 00427EF0    call        TEncoding.GetBytes
 00427EF5    pop         edi
 00427EF6    pop         esi
 00427EF7    pop         ebx
 00427EF8    ret
*}
end;

//00427EFC
function StringOf(const Bytes:TBytes):UnicodeString;
begin
{*
 00427EFC    push        ebx
 00427EFD    push        esi
 00427EFE    push        edi
 00427EFF    push        ebp
 00427F00    mov         edi,edx
 00427F02    mov         esi,eax
 00427F04    test        esi,esi
>00427F06    je          00427F2B
 00427F08    call        TEncoding.GetANSI
 00427F0D    mov         ebp,eax
 00427F0F    mov         ebx,esi
 00427F11    test        ebx,ebx
>00427F13    je          00427F1A
 00427F15    sub         ebx,4
 00427F18    mov         ebx,dword ptr [ebx]
 00427F1A    dec         ebx
 00427F1B    inc         ebx
 00427F1C    push        ebx
 00427F1D    push        edi
 00427F1E    xor         ecx,ecx
 00427F20    mov         edx,esi
 00427F22    mov         eax,ebp
 00427F24    call        TEncoding.GetString
>00427F29    jmp         00427F32
 00427F2B    mov         eax,edi
 00427F2D    call        @UStrClr
 00427F32    pop         ebp
 00427F33    pop         edi
 00427F34    pop         esi
 00427F35    pop         ebx
 00427F36    ret
*}
end;

//00427F38
function sub_00427F38:Boolean;
begin
{*
 00427F38    push        ebp
 00427F39    mov         ebp,esp
 00427F3B    add         esp,0FFFFFEDC
 00427F41    lea         eax,[ebp-124]
 00427F47    xor         ecx,ecx
 00427F49    mov         edx,11C
 00427F4E    call        @FillChar
 00427F53    mov         byte ptr [ebp-0A],1
 00427F57    push        1
 00427F59    push        80
 00427F5E    push        0
 00427F60    push        0
 00427F62    call        kernel32.VerSetConditionMask
 00427F67    mov         dword ptr [ebp-8],eax
 00427F6A    mov         dword ptr [ebp-4],edx
 00427F6D    push        dword ptr [ebp-4]
 00427F70    push        dword ptr [ebp-8]
 00427F73    push        80
 00427F78    lea         eax,[ebp-124]
 00427F7E    push        eax
 00427F7F    call        kernel32.VerifyVersionInfoW
 00427F84    cmp         eax,1
 00427F87    sbb         eax,eax
 00427F89    inc         eax
 00427F8A    test        al,al
 00427F8C    sete        al
 00427F8F    mov         esp,ebp
 00427F91    pop         ebp
 00427F92    ret
*}
end;

//00427F94
{*function sub_00427F94(?:?; ?:?):?;
begin
 00427F94    cmp         eax,dword ptr ds:[7C7DC0];gvar_007C7DC0
>00427F9A    jl          00427FAF
 00427F9C    cmp         eax,dword ptr ds:[7C7DC0];gvar_007C7DC0
>00427FA2    jne         00427FAC
 00427FA4    cmp         edx,dword ptr ds:[7C7DC4];gvar_007C7DC4
>00427FAA    jle         00427FAF
 00427FAC    xor         eax,eax
 00427FAE    ret
 00427FAF    mov         al,1
 00427FB1    ret
end;*}

Initialization
//0079C434
{*
 0079C434    push        ebp
 0079C435    mov         ebp,esp
 0079C437    xor         eax,eax
 0079C439    push        ebp
 0079C43A    push        79C4CA
 0079C43F    push        dword ptr fs:[eax]
 0079C442    mov         dword ptr fs:[eax],esp
 0079C445    sub         dword ptr ds:[7C7DDC],1
>0079C44C    jae         0079C4BC
 0079C44E    mov         eax,427FB4
 0079C453    call        @InitResStringImports
 0079C458    mov         eax,42800C
 0079C45D    call        @InitImports
 0079C462    cmp         byte ptr ds:[7C7C51],0;gvar_007C7C51
>0079C469    je          0079C47A
 0079C46B    mov         eax,79EE40;^'$'
 0079C470    mov         edx,79C4E0;'0x'
 0079C475    call        @UStrAsg
 0079C47A    call        00424A40
 0079C47F    mov         eax,42589C;sub_0042589C
 0079C484    call        AddModuleUnloadProc
 0079C489    call        00424B44
 0079C48E    call        00425AE8
 0079C493    mov         edx,79F564
 0079C498    xor         eax,eax
 0079C49A    call        GetLocaleOverride
 0079C49F    xor         eax,eax
 0079C4A1    mov         [007C7DE0],eax;gvar_007C7DE0
 0079C4A6    mov         dl,1
 0079C4A8    mov         eax,[00401728];TObject
 0079C4AD    call        TObject.Create;TObject.Create
 0079C4B2    mov         [007C7DEC],eax;gvar_007C7DEC:TObject
 0079C4B7    call        004253CC
 0079C4BC    xor         eax,eax
 0079C4BE    pop         edx
 0079C4BF    pop         ecx
 0079C4C0    pop         ecx
 0079C4C1    mov         dword ptr fs:[eax],edx
 0079C4C4    push        79C4D1
 0079C4C9    ret
>0079C4CA    jmp         @HandleFinally
>0079C4CF    jmp         0079C4C9
 0079C4D1    pop         ebp
 0079C4D2    ret
*}
Finalization
//00428220
{*
 00428220    push        ebp
 00428221    mov         ebp,esp
 00428223    xor         eax,eax
 00428225    push        ebp
 00428226    push        428304
 0042822B    push        dword ptr fs:[eax]
 0042822E    mov         dword ptr fs:[eax],esp
 00428231    inc         dword ptr ds:[7C7DDC]
>00428237    jne         004282F6
 0042823D    mov         eax,[007C7DEC];gvar_007C7DEC:TObject
 00428242    call        TObject.Free
 00428247    mov         eax,42589C;sub_0042589C
 0042824C    call        RemoveModuleUnloadProc
 00428251    call        0042586C
 00428256    call        00425AC8
 0042825B    call        00424AE0
 00428260    mov         eax,79EDD0
 00428265    call        @UStrClr
 0042826A    mov         eax,79EDD4
 0042826F    call        @WStrClr
 00428274    mov         eax,79EDD8
 00428279    call        @LStrClr
 0042827E    mov         eax,79EDEC
 00428283    call        @UStrClr
 00428288    mov         eax,7C7CC8;gvar_007C7CC8:Pointer
 0042828D    mov         edx,dword ptr ds:[4199AC];TFormatSettings
 00428293    call        @FinalizeRecord
 00428298    mov         eax,7C7D94;gvar_007C7D94:?
 0042829D    mov         edx,dword ptr ds:[419D24];:55
 004282A3    call        @DynArrayClear
 004282A8    mov         eax,7C7D98;gvar_007C7D98:?
 004282AD    mov         edx,dword ptr ds:[419D54];:65
 004282B3    call        @DynArrayClear
 004282B8    mov         eax,79EE40;^'$'
 004282BD    call        @UStrClr
 004282C2    mov         eax,7C7DE4;gvar_007C7DE4:?
 004282C7    mov         edx,dword ptr ds:[42334C];TInternalEraInfoRecord
 004282CD    call        @FinalizeRecord
 004282D2    mov         eax,7C9EE8;gvar_007C9EE8:?
 004282D7    mov         edx,dword ptr ds:[41B770];TArray<System.string>
 004282DD    call        @DynArrayClear
 004282E2    mov         eax,79F564
 004282E7    call        @UStrClr
 004282EC    mov         eax,427FB4
 004282F1    call        @FinalizeResStringImports
 004282F6    xor         eax,eax
 004282F8    pop         edx
 004282F9    pop         ecx
 004282FA    pop         ecx
 004282FB    mov         dword ptr fs:[eax],edx
 004282FE    push        42830B
 00428303    ret
>00428304    jmp         @HandleFinally
>00428309    jmp         00428303
 0042830B    pop         ebp
 0042830C    ret
*}
end.