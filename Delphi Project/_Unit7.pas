//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit7;

interface

uses
  SysUtils, Classes;

type
  :58 = array of Char;
//elSize = 2;
  :TInternalEraInfoRecord.:1 = array of TFormatSettings.TEraInfo;
//elSize = 18;
  TInternalEraInfoRecord = TInternalEraInfoRecord = record//size=8
f4::TInternalEraInfoRecord.:1;//f4
end;
EraCount:Integer;//f0
EraInfo::TInternalEraInfoRecord.:1;//f4
end;;
  :78 = array of Byte;
//elSize = 1
//varType equivalent: varByte;
    //function sub_0041D2E8(?:?; ?:?; ?:?; ?:?):?;//0041D2E8
    procedure sub_0041D304(?:TResStringRec);//0041D304
    procedure ConvertErrorFmt(ResString:PResStringRec; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);//0041D31C
    procedure InvalidGUID;//0041D340
    function HexChar(c:Char):Byte;//0041D368
    function HexByte(p:PChar):Byte;//0041D3A8
    function StringToGUID(const S:UnicodeString):TGUID;//0041D3D8
    procedure sub_0041D4F8;//0041D4F8
    //procedure sub_0041D520(?:?);//0041D520
    //function sub_0041D558(?:?):Boolean;//0041D558
    function CharInSet(C:WideChar; const CharSet:TSysCharSet):Boolean;//0041D568
    function UpperCase(const S:UnicodeString):UnicodeString;//0041D578
    function LowerCase(const S:UnicodeString):UnicodeString;//0041D5C8
    function CompareStr(const S1:UnicodeString; const S2:UnicodeString):Integer;//0041D618
    function CompareMem(P1:Pointer; P2:Pointer; Length:Integer):Boolean;//0041D684
    function CompareText(const S1:UnicodeString; const S2:UnicodeString):Integer;//0041D718
    function CompareText(const S1:UnicodeString; const S2:UnicodeString; LocaleOptions:TLocaleOptions):Integer;//0041D7C8
    //procedure sub_0041D7DC(?:UnicodeString; ?:?);//0041D7DC
    function AnsiLowerCase(const S:UnicodeString):UnicodeString;//0041D810
    function AnsiCompareStr(const S1:UnicodeString; const S2:UnicodeString):Integer;//0041D84C
    function AnsiCompareText(const S1:UnicodeString; const S2:UnicodeString):Integer;//0041D890
    function AnsiStrLIComp(S1:PWideChar; S2:PWideChar; MaxLen:Cardinal):Integer;//0041D8D4
    //procedure sub_0041D8F4(?:WideString; ?:?);//0041D8F4
    //procedure sub_0041D930(?:string; ?:?);//0041D930
    function TrimLeft(const S:UnicodeString):UnicodeString;//0041D9C0
    //procedure sub_0041D9D4(?:UnicodeString; ?:?);//0041D9D4
    //procedure sub_0041D9E8(?:?; ?:?; ?:?);//0041D9E8
    //procedure sub_0041DB5C(?:?; ?:?; ?:?);//0041DB5C
    function AdjustLineBreaks(const S:UnicodeString; Style:TTextLineBreakStyle):UnicodeString;//0041DCBC
    //function sub_0041DDD0(?:TComponentName; ?:?):?;//0041DDD0
    function _IntToStr32(Value:Cardinal; Negative:Boolean):UnicodeString;//0041DED0
    //procedure sub_0041DFCC(?:?; ?:?; ?:?; ?:?);//0041DFCC
    function IntToStr(Value:Integer):UnicodeString;//0041E2DC
    //procedure sub_0041E304(?:UnicodeString; ?:?; ?:?);//0041E304
    //procedure sub_0041E348(?:?; ?:?);//0041E348
    //procedure sub_0041E35C(?:UnicodeString; ?:?; ?:?);//0041E35C
    function _IntToHex(Value:UInt64; Digits:Integer):UnicodeString;//0041E378
    function IntToHex(Value:Integer; Digits:Integer):UnicodeString;//0041E510
    //procedure sub_0041E52C(?:?; ?:UnicodeString; ?:?; ?:?);//0041E52C
    function StrToInt(const S:UnicodeString):Integer;//0041E54C
    function StrToIntDef(const S:UnicodeString; Default:Integer):Integer;//0041E588
    function sub_0041E5A0(?:UnicodeString; ?:Integer):Boolean;//0041E5A0
    function StrToInt64(const S:UnicodeString):Int64;//0041E5C0
    //function sub_0041E604(?:?; ?:?):Boolean;//0041E604
    procedure sub_0041E624;//0041E624
    //function sub_0041E6CC(?:?; ?:?; ?:?):?;//0041E6CC
    function TryStrToBool(const S:UnicodeString; var Value:Boolean):Boolean;//0041E71C
    //function sub_0041E814(?:string; ?:Word):?;//0041E814
    //function sub_0041E86C(?:string; ?:?):?;//0041E86C
    function FileRead(Handle:Windows.THandle; var Buffer:void ; Count:LongWord):Integer;//0041E8C0
    function FileWrite(Handle:Windows.THandle; const Buffer:void ; Count:LongWord):Integer;//0041E8EC
    function FileRead(Handle:Windows.THandle; var Buffer:TBytes; Offset:LongWord; Count:LongWord):Integer;//0041E918
    function FileWrite(Handle:Windows.THandle; const Buffer:TBytes; Offset:LongWord; Count:LongWord):Integer;//0041E950
    function FileSeek(Handle:Windows.THandle; Origin:Integer; const Offset:Int64):Int64;//0041E988
    //function sub_0041E9D8(?:?):?;//0041E9D8
    //function sub_0041EA18(?:UnicodeString; ?:?):?;//0041EA18
    //function sub_0041EAB0(?:UnicodeString; ?:?):?;//0041EAB0
    //function sub_0041EB90(?:UnicodeString):?;//0041EB90
    //function sub_0041EC94(?:?):?;//0041EC94
    //function sub_0041ED30(?:UnicodeString; ?:?; ?:Byte):?;//0041ED30
    //function sub_0041ED80(?:Byte):?;//0041ED80
    procedure sub_0041EDA4(?:Byte);//0041EDA4
    //function sub_0041EDC0(?:?):?;//0041EDC0
    function AnsiLastChar(const S:UnicodeString):PWideChar;//0041EE1C
    //function sub_0041EE60(?:UnicodeString; ?:UnicodeString):?;//0041EE60
    //function sub_0041EEB4(?:UnicodeString; ?:UnicodeString; ?:?):?;//0041EEB4
    //procedure sub_0041EF04(?:UnicodeString; ?:UString; ?:?);//0041EF04
    //procedure sub_0041EFA4(?:UnicodeString; ?:?);//0041EFA4
    function ExtractFileExt(const FileName:UnicodeString):UnicodeString;//0041F020
    //procedure sub_0041F078(?:string; ?:?);//0041F078
    //function sub_0041F0FC(?:?; ?:?; ?:?):?;//0041F0FC
    //function sub_0041F170(?:UnicodeString):?;//0041F170
    function StrEnd(const Str:PWideChar):PWideChar;//0041F18C
    function StrMove(Dest:PWideChar; const Source:PWideChar; Count:Cardinal):PWideChar;//0041F1A8
    function StrCopy(Dest:PWideChar; const Source:PWideChar):PWideChar;//0041F1B8
    function StrECopy(Dest:PWideChar; const Source:PWideChar):PWideChar;//0041F1F0
    function StrLCopy(Dest:PWideChar; const Source:PWideChar; MaxLen:Cardinal):PWideChar;//0041F21C
    //procedure sub_0041F258(?:?; ?:?);//0041F258
    function StrPLCopy(Dest:PWideChar; const Source:UnicodeString; MaxLen:Cardinal):PWideChar;//0041F280
    //function sub_0041F2A0(?:PWideChar; ?:?):?;//0041F2A0
    function StrLComp(const Str1:PWideChar; const Str2:PWideChar; MaxLen:Cardinal):Integer;//0041F2CC
    //function sub_0041F314(?:?; ?:?; ?:?):?;//0041F314
    //function sub_0041F38C:?;//0041F38C
    //function sub_0041F3A8(?:?; ?:?):?;//0041F3A8
    //function sub_0041F3D8(?:?; ?:?):?;//0041F3D8
    function StrPosLen(const Str1:PWideChar; const Str2:PWideChar; Len1:Integer; Len2:Integer):PWideChar;//0041F430
    //procedure sub_0041F490(?:?; ?:UnicodeString);//0041F490
    function AnsiStrAlloc(Size:Cardinal):PAnsiChar;//0041F4A4
    //function sub_0041F4BC:?;//0041F4BC
    //function sub_0041F4C4(?:?):?;//0041F4C4
    function StrNew(const Str:PAnsiChar):PAnsiChar;//0041F4D0
    procedure sub_0041F4FC(?:PWideChar);//0041F4FC
    //procedure sub_0041F50C(?:?; ?:?; ?:?);//0041F50C
    //function sub_0041F568(?:?; ?:?; ?:?):?;//0041F568
    //function sub_0041F588(?:?; ?:?; ?:?; ?:?):?;//0041F588
    function StrFmt(Buffer:PWideChar; Format:PWideChar; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):PWideChar;//0041F5A8
    //function sub_0041F5C0(?:?; ?:?; ?:?; ?:?; ?:?):?;//0041F5C0
    function StrLFmt(Buffer:PWideChar; MaxBufLen:Cardinal; Format:PWideChar; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):PWideChar;//0041F610
    //function sub_0041F62C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0041F62C
    function Format(const Format:UnicodeString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):UnicodeString;//0041F678
    //procedure sub_0041F6A0(?:?; ?:?; ?:?; ?:?);//0041F6A0
    //procedure sub_0041F6B8(?:?);//0041F6B8
    //procedure sub_0041F6D0(?:?; ?:?);//0041F6D0
    //function sub_0041F7C8(?:?; ?:?; ?:?):?;//0041F7C8
    //function sub_0041F83C(?:PWideChar; ?:?; ?:UnicodeString; ?:?):?;//0041F83C
    //procedure sub_0041F9BC(?:?; ?:?);//0041F9BC
    //function sub_0041FA08(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0041FA08
    //function sub_00420448(?:PWideChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00420448
    procedure sub_00420565;//00420565
    //procedure sub_00420768(?:?; ?:?);//00420768
    procedure sub_00420795;//00420795
    procedure sub_004208B7;//004208B7
    //procedure sub_00420994(?:PWideChar; ?:?; ?:?; ?:?);//00420994
    //procedure sub_00420A66(?:?);//00420A66
    procedure sub_00420A77;//00420A77
    procedure sub_00420A9A;//00420A9A
    //function sub_00420AE0(?:?; ?:?; ?:?):?;//00420AE0
    //procedure sub_00420B00(?:?; ?:?; ?:?);//00420B00
    //procedure sub_00420B20(?:?; ?:?; ?:?);//00420B20
    //function sub_00420B88(?:?; ?:?):?;//00420B88
    //function sub_00420BC4:?;//00420BC4
    //function sub_00420BD0:?;//00420BD0
    //function sub_00420BD8(?:UnicodeString; ?:?):?;//00420BD8
    //function sub_00420C98:?;//00420C98
    //procedure sub_00420CA0(?:?; ?:?);//00420CA0
    //procedure sub_00420CE4(?:?);//00420CE4
    procedure sub_00420D2C;//00420D2C
    //function sub_00420D68(?:?; ?:?; ?:?; ?:?; ?:?):?;//00420D68
    //procedure sub_00420DE0(?:?; ?:?; ?:?; ?:?);//00420DE0
    //procedure sub_00420E20(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00420E20
    //function sub_00420E7C(?:?):?;//00420E7C
    //function sub_00420EB8(?:?; ?:?; ?:?; ?:?):?;//00420EB8
    //function sub_00420F84(?:Integer; ?:?; ?:?):?;//00420F84
    //function sub_00420FB4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//00420FB4
    //procedure sub_00421100(?:?; ?:?; ?:?);//00421100
    //function sub_00421120(?:?; ?:?):?;//00421120
    //function sub_00421148:?;//00421148
    //function sub_00421198:?;//00421198
    //procedure sub_004211DC(?:?; ?:?; ?:?);//004211DC
    //procedure sub_004212C8(?:?; ?:?);//004212C8
    //procedure sub_004212E4(?:?; ?:?; ?:?);//004212E4
    //procedure sub_00421330(?:?);//00421330
    //procedure sub_00421364(?:?);//00421364
    //procedure sub_0042139C(?:?);//0042139C
    //procedure sub_004213DC(?:?; ?:?; ?:?);//004213DC
    //procedure sub_00421558(?:?; ?:?; ?:?);//00421558
    //procedure sub_00421674(?:?; ?:?);//00421674
    //procedure sub_00421F48(?:?; ?:?; ?:?);//00421F48
    //procedure sub_004220EC(?:?; ?:?; ?:?; ?:?);//004220EC
    //procedure sub_00422104(?:?; ?:?; ?:?; ?:?);//00422104
    //procedure sub_0042211C(?:?; ?:?; ?:?; ?:?);//0042211C
    //procedure sub_00422134(?:UnicodeString; ?:?);//00422134
    //function sub_0042215C(?:UnicodeString; ?:?; ?:?; ?:?):?;//0042215C
    //function sub_004221F4(?:?; ?:?; ?:UString):?;//004221F4
    //function sub_00422284(?:UnicodeString; ?:?; ?:?):?;//00422284
    //function sub_004222BC(?:?):?;//004222BC
    //procedure sub_00422310(?:UnicodeString; ?:?);//00422310
    //function sub_00422368(?:?; ?:?):?;//00422368
    //function sub_004223C4(?:?; ?:?; ?:?; ?:?):?;//004223C4
    //function sub_00422760(?:?; ?:?; ?:?; ?:?):?;//00422760
    //function sub_00422960(?:?; ?:?):?;//00422960
    //function sub_0042299C(?:UnicodeString; ?:?; ?:?):?;//0042299C
    //function sub_004229DC(?:?; ?:?):?;//004229DC
    //function sub_00422A18(?:?; ?:?; ?:?):?;//00422A18
    //function sub_00422A58(?:?; ?:?):?;//00422A58
    //function sub_00422A94(?:?; ?:?; ?:?):?;//00422A94
    //procedure sub_00422CB4(?:Integer; ?:?; ?:?);//00422CB4
    //procedure sub_00422D38(?:?; ?:?; ?:UString; ?:?);//00422D38
    //function sub_00422D84(?:?; ?:?; ?:?):?;//00422D84
    //procedure sub_00422DB0(?:?; ?:?);//00422DB0
    //procedure sub_004231A4(?:?; ?:?);//004231A4
    //procedure sub_00423260(?:?; ?:?);//00423260
    //procedure sub_004234E4(?:?; ?:?);//004234E4
    //procedure sub_004237C0(?:?; ?:?; ?:?; ?:?; ?:?);//004237C0
    //procedure sub_004237FC(?:?; ?:?);//004237FC
    //procedure sub_00423840(?:?; ?:?; ?:UString; ?:?);//00423840
    //function sub_00423B2C(?:?; ?:?):?;//00423B2C
    function ConvertAddr(Address:Pointer):Pointer;//00423BB8
    function ExceptionErrorMessage(ExceptObject:TObject; ExceptAddr:Pointer; Buffer:PChar; Size:Integer):Integer;//00423BC4
    procedure ShowException(ExceptObject:TObject; ExceptAddr:Pointer);//00423DBC
    procedure sub_00423F00;//00423F00
    constructor Create;//00423F0C
    constructor CreateFmt(Args:TVarRec);//00423F48
    constructor CreateRes;//00423FC8
    constructor CreateResFmt(Args:TVarRec);//00424004
    constructor CreateHelp(AHelpContext:Integer);//00424098
    destructor Destroy();//004240E0
    procedure GetBaseException;//00424124
    //procedure sub_00424158(?:?);//00424158
    procedure sub_00424184(?:Exception);//00424184
    //procedure sub_004241AC(?:Exception; ?:?);//004241AC
    function ToString:string;//004241B0
    procedure FreeInstance;//00424208
    procedure sub_00424214;//00424214
    //function sub_004243EC(?:?):?;//004243EC
    //function sub_0042446C(?:?):?;//0042446C
    //procedure sub_0042478C(?:?);//0042478C
    procedure sub_004247C0;//004247C0
    procedure sub_00424850;//00424850

implementation

//0041D2E8
{*function sub_0041D2E8(?:?; ?:?; ?:?; ?:?):?;
begin
 0041D2E8    push        ebp
 0041D2E9    mov         ebp,esp
 0041D2EB    push        ebx
 0041D2EC    mov         ebx,edx
 0041D2EE    mov         edx,eax
 0041D2F0    shr         edx,10
 0041D2F3    div         ax,bx
 0041D2F6    mov         ebx,dword ptr [ebp+8]
 0041D2F9    mov         word ptr [ecx],ax
 0041D2FC    mov         word ptr [ebx],dx
 0041D2FF    pop         ebx
 0041D300    pop         ebp
 0041D301    ret         4
end;*}

//0041D304
procedure sub_0041D304(?:TResStringRec);
begin
{*
 0041D304    push        ebx
 0041D305    mov         ebx,eax
 0041D307    mov         ecx,ebx
 0041D309    mov         dl,1
 0041D30B    mov         eax,[00418D28];EConvertError
 0041D310    call        Exception.CreateRes;EConvertError.Create
 0041D315    call        @RaiseExcept
 0041D31A    pop         ebx
 0041D31B    ret
*}
end;

//0041D31C
procedure ConvertErrorFmt(ResString:PResStringRec; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1);
begin
{*
 0041D31C    push        ebx
 0041D31D    push        esi
 0041D31E    push        edi
 0041D31F    mov         edi,ecx
 0041D321    mov         esi,edx
 0041D323    mov         ebx,eax
 0041D325    push        esi
 0041D326    push        edi
 0041D327    mov         ecx,ebx
 0041D329    mov         dl,1
 0041D32B    mov         eax,[00418D28];EConvertError
 0041D330    call        Exception.CreateResFmt
 0041D335    call        @RaiseExcept
 0041D33A    pop         edi
 0041D33B    pop         esi
 0041D33C    pop         ebx
 0041D33D    ret
*}
end;

//0041D340
procedure InvalidGUID;
begin
{*
 0041D340    push        ebp
 0041D341    mov         ebp,esp
 0041D343    add         esp,0FFFFFFF8
 0041D346    mov         eax,dword ptr [ebp+8]
 0041D349    mov         eax,dword ptr [eax-4]
 0041D34C    mov         dword ptr [ebp-8],eax
 0041D34F    mov         byte ptr [ebp-4],11
 0041D353    lea         edx,[ebp-8]
 0041D356    mov         eax,[007C4C08];^SResString6:TResStringRec
 0041D35B    xor         ecx,ecx
 0041D35D    call        ConvertErrorFmt
 0041D362    pop         ecx
 0041D363    pop         ecx
 0041D364    pop         ebp
 0041D365    ret
*}
end;

//0041D368
function HexChar(c:Char):Byte;
begin
{*
 0041D368    push        ebp
 0041D369    mov         ebp,esp
 0041D36B    mov         edx,eax
 0041D36D    add         edx,0FFFFFFD0
 0041D370    sub         dx,0A
>0041D374    jb          0041D38A
 0041D376    add         edx,0FFFFFFF9
 0041D379    sub         dx,6
>0041D37D    jb          0041D394
 0041D37F    add         edx,0FFFFFFE6
 0041D382    sub         dx,6
>0041D386    jb          0041D38E
>0041D388    jmp         0041D39A
 0041D38A    sub         al,30
 0041D38C    pop         ebp
 0041D38D    ret
 0041D38E    sub         al,61
 0041D390    add         al,0A
 0041D392    pop         ebp
 0041D393    ret
 0041D394    sub         al,41
 0041D396    add         al,0A
 0041D398    pop         ebp
 0041D399    ret
 0041D39A    mov         eax,dword ptr [ebp+8]
 0041D39D    push        eax
 0041D39E    call        InvalidGUID
 0041D3A3    pop         ecx
 0041D3A4    xor         eax,eax
 0041D3A6    pop         ebp
 0041D3A7    ret
*}
end;

//0041D3A8
function HexByte(p:PChar):Byte;
begin
{*
 0041D3A8    push        ebp
 0041D3A9    mov         ebp,esp
 0041D3AB    push        ebx
 0041D3AC    mov         ebx,eax
 0041D3AE    mov         eax,dword ptr [ebp+8]
 0041D3B1    push        eax
 0041D3B2    movzx       eax,word ptr [ebx]
 0041D3B5    call        HexChar
 0041D3BA    pop         ecx
 0041D3BB    shl         eax,4
 0041D3BE    push        eax
 0041D3BF    mov         eax,dword ptr [ebp+8]
 0041D3C2    push        eax
 0041D3C3    movzx       eax,word ptr [ebx+2]
 0041D3C7    call        HexChar
 0041D3CC    pop         ecx
 0041D3CD    mov         edx,eax
 0041D3CF    pop         eax
 0041D3D0    add         al,dl
 0041D3D2    pop         ebx
 0041D3D3    pop         ebp
 0041D3D4    ret
*}
end;

//0041D3D8
function StringToGUID(const S:UnicodeString):TGUID;
begin
{*
 0041D3D8    push        ebp
 0041D3D9    mov         ebp,esp
 0041D3DB    push        ecx
 0041D3DC    push        ebx
 0041D3DD    push        esi
 0041D3DE    push        edi
 0041D3DF    mov         ebx,edx
 0041D3E1    mov         dword ptr [ebp-4],eax
 0041D3E4    mov         eax,dword ptr [ebp-4]
 0041D3E7    test        eax,eax
>0041D3E9    je          0041D3F0
 0041D3EB    sub         eax,4
 0041D3EE    mov         eax,dword ptr [eax]
 0041D3F0    cmp         eax,26
>0041D3F3    je          0041D3F9
 0041D3F5    mov         al,1
>0041D3F7    jmp         0041D403
 0041D3F9    mov         eax,dword ptr [ebp-4]
 0041D3FC    cmp         word ptr [eax],7B
 0041D400    setne       al
 0041D403    test        al,al
>0041D405    je          0041D40E
 0041D407    push        ebp
 0041D408    call        InvalidGUID
 0041D40D    pop         ecx
 0041D40E    mov         edi,ebx
 0041D410    mov         eax,dword ptr [ebp-4]
 0041D413    call        @UStrToPWChar
 0041D418    mov         ebx,eax
 0041D41A    add         ebx,2
 0041D41D    xor         esi,esi
 0041D41F    push        ebp
 0041D420    mov         eax,3
 0041D425    sub         eax,esi
 0041D427    add         eax,eax
 0041D429    add         eax,eax
 0041D42B    add         eax,ebx
 0041D42D    call        HexByte
 0041D432    pop         ecx
 0041D433    mov         byte ptr [edi+esi],al
 0041D436    inc         esi
 0041D437    cmp         esi,4
>0041D43A    jne         0041D41F
 0041D43C    add         ebx,10
 0041D43F    add         edi,4
 0041D442    cmp         word ptr [ebx],2D
>0041D446    je          0041D44F
 0041D448    push        ebp
 0041D449    call        InvalidGUID
 0041D44E    pop         ecx
 0041D44F    add         ebx,2
 0041D452    mov         esi,2
 0041D457    push        ebp
 0041D458    lea         eax,[ebx+4]
 0041D45B    call        HexByte
 0041D460    pop         ecx
 0041D461    mov         byte ptr [edi],al
 0041D463    inc         edi
 0041D464    push        ebp
 0041D465    mov         eax,ebx
 0041D467    call        HexByte
 0041D46C    pop         ecx
 0041D46D    mov         byte ptr [edi],al
 0041D46F    inc         edi
 0041D470    add         ebx,8
 0041D473    cmp         word ptr [ebx],2D
>0041D477    je          0041D480
 0041D479    push        ebp
 0041D47A    call        InvalidGUID
 0041D47F    pop         ecx
 0041D480    add         ebx,2
 0041D483    dec         esi
>0041D484    jne         0041D457
 0041D486    push        ebp
 0041D487    mov         eax,ebx
 0041D489    call        HexByte
 0041D48E    pop         ecx
 0041D48F    mov         byte ptr [edi],al
 0041D491    inc         edi
 0041D492    add         ebx,4
 0041D495    push        ebp
 0041D496    mov         eax,ebx
 0041D498    call        HexByte
 0041D49D    pop         ecx
 0041D49E    mov         byte ptr [edi],al
 0041D4A0    inc         edi
 0041D4A1    add         ebx,4
 0041D4A4    cmp         word ptr [ebx],2D
>0041D4A8    je          0041D4B1
 0041D4AA    push        ebp
 0041D4AB    call        InvalidGUID
 0041D4B0    pop         ecx
 0041D4B1    add         ebx,2
 0041D4B4    mov         esi,6
 0041D4B9    push        ebp
 0041D4BA    mov         eax,ebx
 0041D4BC    call        HexByte
 0041D4C1    pop         ecx
 0041D4C2    mov         byte ptr [edi],al
 0041D4C4    inc         edi
 0041D4C5    add         ebx,4
 0041D4C8    dec         esi
>0041D4C9    jne         0041D4B9
 0041D4CB    pop         edi
 0041D4CC    pop         esi
 0041D4CD    pop         ebx
 0041D4CE    pop         ecx
 0041D4CF    pop         ebp
 0041D4D0    ret
*}
end;

//0041D4F8
procedure sub_0041D4F8;
begin
{*
 0041D4F8    push        ebx
 0041D4F9    mov         eax,[0079EE48];0x0 gvar_0079EE48:Pointer
 0041D4FE    mov         edx,dword ptr [eax]
 0041D500    mov         dword ptr ds:[79EE48],edx;gvar_0079EE48:Pointer
 0041D506    mov         edx,dword ptr ds:[7C4228];^gvar_007C5058
 0041D50C    mov         ecx,dword ptr [eax+4]
 0041D50F    mov         dword ptr [edx],ecx
 0041D511    mov         ebx,dword ptr [eax+8]
 0041D514    call        @FreeMem
 0041D519    call        ebx
 0041D51B    pop         ebx
 0041D51C    ret
*}
end;

//0041D520
{*procedure sub_0041D520(?:?);
begin
 0041D520    push        ebx
 0041D521    mov         ebx,eax
 0041D523    mov         eax,0C
 0041D528    call        @GetMem
 0041D52D    mov         edx,dword ptr ds:[79EE48];0x0 gvar_0079EE48:Pointer
 0041D533    mov         dword ptr [eax],edx
 0041D535    mov         edx,dword ptr ds:[7C4228];^gvar_007C5058
 0041D53B    mov         edx,dword ptr [edx]
 0041D53D    mov         dword ptr [eax+4],edx
 0041D540    mov         dword ptr [eax+8],ebx
 0041D543    mov         [0079EE48],eax;gvar_0079EE48:Pointer
 0041D548    mov         eax,[007C4228];^gvar_007C5058
 0041D54D    mov         dword ptr [eax],41D4F8;sub_0041D4F8
 0041D553    pop         ebx
 0041D554    ret
end;*}

//0041D558
{*function sub_0041D558(?:?):Boolean;
begin
 0041D558    movzx       eax,al
 0041D55B    bt          dword ptr ds:[79EE20],eax;gvar_0079EE20
 0041D562    setb        al
 0041D565    ret
end;*}

//0041D568
function CharInSet(C:WideChar; const CharSet:TSysCharSet):Boolean;
begin
{*
 0041D568    cmp         ax,0FF
>0041D56C    ja          0041D574
 0041D56E    movzx       eax,ax
 0041D571    bt          dword ptr [edx],eax
 0041D574    setb        al
 0041D577    ret
*}
end;

//0041D578
function UpperCase(const S:UnicodeString):UnicodeString;
begin
{*
 0041D578    push        ebx
 0041D579    push        esi
 0041D57A    push        edi
 0041D57B    mov         edi,edx
 0041D57D    mov         ebx,eax
 0041D57F    mov         eax,ebx
 0041D581    test        eax,eax
>0041D583    je          0041D58A
 0041D585    sub         eax,4
 0041D588    mov         eax,dword ptr [eax]
 0041D58A    mov         esi,eax
 0041D58C    mov         eax,edi
 0041D58E    mov         edx,esi
 0041D590    call        @UStrSetLength
 0041D595    test        esi,esi
>0041D597    jle         0041D5C2
 0041D599    mov         ecx,dword ptr [edi]
 0041D59B    mov         edx,esi
 0041D59D    cmp         edx,1
>0041D5A0    jl          0041D5C2
 0041D5A2    movzx       eax,word ptr [ebx]
 0041D5A5    mov         esi,eax
 0041D5A7    add         esi,0FFFFFF9F
 0041D5AA    sub         si,1A
>0041D5AE    jae         0041D5B4
 0041D5B0    xor         ax,20
 0041D5B4    mov         word ptr [ecx],ax
 0041D5B7    add         ecx,2
 0041D5BA    add         ebx,2
 0041D5BD    dec         edx
 0041D5BE    test        edx,edx
>0041D5C0    jne         0041D5A2
 0041D5C2    pop         edi
 0041D5C3    pop         esi
 0041D5C4    pop         ebx
 0041D5C5    ret
*}
end;

//0041D5C8
function LowerCase(const S:UnicodeString):UnicodeString;
begin
{*
 0041D5C8    push        ebx
 0041D5C9    push        esi
 0041D5CA    push        edi
 0041D5CB    mov         edi,edx
 0041D5CD    mov         ebx,eax
 0041D5CF    mov         eax,ebx
 0041D5D1    test        eax,eax
>0041D5D3    je          0041D5DA
 0041D5D5    sub         eax,4
 0041D5D8    mov         eax,dword ptr [eax]
 0041D5DA    mov         esi,eax
 0041D5DC    mov         eax,edi
 0041D5DE    mov         edx,esi
 0041D5E0    call        @UStrSetLength
 0041D5E5    test        esi,esi
>0041D5E7    jle         0041D612
 0041D5E9    mov         ecx,dword ptr [edi]
 0041D5EB    mov         edx,esi
 0041D5ED    cmp         edx,1
>0041D5F0    jl          0041D612
 0041D5F2    movzx       eax,word ptr [ebx]
 0041D5F5    mov         esi,eax
 0041D5F7    add         esi,0FFFFFFBF
 0041D5FA    sub         si,1A
>0041D5FE    jae         0041D604
 0041D600    or          ax,20
 0041D604    mov         word ptr [ecx],ax
 0041D607    add         ecx,2
 0041D60A    add         ebx,2
 0041D60D    dec         edx
 0041D60E    test        edx,edx
>0041D610    jne         0041D5F2
 0041D612    pop         edi
 0041D613    pop         esi
 0041D614    pop         ebx
 0041D615    ret
*}
end;

//0041D618
function CompareStr(const S1:UnicodeString; const S2:UnicodeString):Integer;
begin
{*
 0041D618    cmp         eax,edx
>0041D61A    je          0041D671
 0041D61C    test        eax,edx
>0041D61E    je          0041D674
 0041D620    movzx       ecx,word ptr [edx]
 0041D623    cmp         cx,word ptr [eax]
>0041D626    je          0041D62F
 0041D628    movzx       eax,word ptr [eax]
 0041D62B    sub         eax,ecx
>0041D62D    jmp         0041D656
 0041D62F    push        ebx
 0041D630    mov         ebx,dword ptr [eax-4]
 0041D633    xor         ecx,ecx
 0041D635    sub         ebx,dword ptr [edx-4]
 0041D638    push        ebx
 0041D639    adc         ecx,0FFFFFFFF
 0041D63C    and         ecx,ebx
 0041D63E    sub         ecx,dword ptr [eax-4]
 0041D641    shl         ecx,1
 0041D643    sub         eax,ecx
 0041D645    sub         edx,ecx
 0041D647    mov         ebx,dword ptr [ecx+eax]
 0041D64A    xor         ebx,dword ptr [ecx+edx]
>0041D64D    jne         0041D657
 0041D64F    add         ecx,4
>0041D652    js          0041D647
 0041D654    pop         eax
 0041D655    pop         ebx
 0041D656    ret
 0041D657    bsf         ebx,ebx
 0041D65A    shr         ebx,4
 0041D65D    add         ebx,ebx
 0041D65F    add         ecx,ebx
>0041D661    jns         0041D654
 0041D663    movzx       eax,word ptr [ecx+eax]
 0041D667    movzx       edx,word ptr [ecx+edx]
 0041D66B    sub         eax,edx
 0041D66D    pop         ebx
 0041D66E    pop         ebx
>0041D66F    jmp         0041D656
 0041D671    xor         eax,eax
 0041D673    ret
 0041D674    test        eax,eax
>0041D676    je          0041D680
 0041D678    test        edx,edx
>0041D67A    jne         0041D620
 0041D67C    mov         eax,dword ptr [eax-4]
 0041D67F    ret
 0041D680    sub         eax,dword ptr [edx-4]
 0041D683    ret
*}
end;

//0041D684
function CompareMem(P1:Pointer; P2:Pointer; Length:Integer):Boolean;
begin
{*
 0041D684    add         eax,ecx
 0041D686    add         edx,ecx
 0041D688    xor         ecx,0FFFFFFFF
 0041D68B    add         eax,0FFFFFFF8
 0041D68E    add         edx,0FFFFFFF8
 0041D691    add         ecx,9
 0041D694    push        ebx
>0041D695    jg          0041D6DA
 0041D697    mov         ebx,dword ptr [ecx+eax]
 0041D69A    cmp         ebx,dword ptr [ecx+edx]
>0041D69D    jne         0041D711
 0041D69F    lea         ebx,[ecx+eax]
 0041D6A2    add         ecx,4
 0041D6A5    and         ebx,3
 0041D6A8    sub         ecx,ebx
>0041D6AA    jg          0041D6DA
 0041D6AC    mov         ebx,dword ptr [ecx+eax]
 0041D6AF    cmp         ebx,dword ptr [ecx+edx]
>0041D6B2    jne         0041D711
 0041D6B4    mov         ebx,dword ptr [ecx+eax+4]
 0041D6B8    cmp         ebx,dword ptr [ecx+edx+4]
>0041D6BC    jne         0041D711
 0041D6BE    add         ecx,8
>0041D6C1    jg          0041D6DA
 0041D6C3    mov         ebx,dword ptr [ecx+eax]
 0041D6C6    cmp         ebx,dword ptr [ecx+edx]
>0041D6C9    jne         0041D711
 0041D6CB    mov         ebx,dword ptr [ecx+eax+4]
 0041D6CF    cmp         ebx,dword ptr [ecx+edx+4]
>0041D6D3    jne         0041D711
 0041D6D5    add         ecx,8
>0041D6D8    jle         0041D6AC
 0041D6DA    cmp         ecx,4
>0041D6DD    jg          0041D6EA
 0041D6DF    mov         ebx,dword ptr [ecx+eax]
 0041D6E2    cmp         ebx,dword ptr [ecx+edx]
>0041D6E5    jne         0041D711
 0041D6E7    add         ecx,4
 0041D6EA    cmp         ecx,6
>0041D6ED    jg          0041D6FC
 0041D6EF    movzx       ebx,word ptr [ecx+eax]
 0041D6F3    cmp         bx,word ptr [ecx+edx]
>0041D6F7    jne         0041D711
 0041D6F9    add         ecx,2
 0041D6FC    cmp         ecx,7
>0041D6FF    jg          0041D70A
 0041D701    movzx       ebx,byte ptr [eax+7]
 0041D705    cmp         bl,byte ptr [edx+7]
>0041D708    jne         0041D711
 0041D70A    mov         eax,1
 0041D70F    pop         ebx
 0041D710    ret
 0041D711    xor         eax,eax
 0041D713    pop         ebx
 0041D714    ret
*}
end;

//0041D718
function CompareText(const S1:UnicodeString; const S2:UnicodeString):Integer;
begin
{*
 0041D718    test        eax,eax
>0041D71A    jne         0041D726
 0041D71C    test        edx,edx
>0041D71E    je          0041D725
 0041D720    mov         eax,dword ptr [edx-4]
 0041D723    neg         eax
 0041D725    ret
 0041D726    test        edx,edx
>0041D728    jne         0041D72E
 0041D72A    mov         eax,dword ptr [eax-4]
 0041D72D    ret
 0041D72E    push        ebx
 0041D72F    push        ebp
 0041D730    push        esi
 0041D731    mov         ebp,dword ptr [eax-4]
 0041D734    mov         ebx,dword ptr [edx-4]
 0041D737    sub         ebp,ebx
 0041D739    sbb         ecx,ecx
 0041D73B    and         ecx,ebp
 0041D73D    add         ecx,ebx
 0041D73F    lea         esi,[eax+ecx*2]
 0041D742    add         edx,ecx
 0041D744    add         edx,ecx
 0041D746    neg         ecx
>0041D748    je          0041D7C0
 0041D74A    mov         eax,dword ptr [esi+ecx*2]
 0041D74D    mov         ebx,dword ptr [edx+ecx*2]
 0041D750    cmp         eax,ebx
>0041D752    je          0041D7BB
 0041D754    cmp         ax,bx
>0041D757    je          0041D797
 0041D759    and         eax,0FFFF
 0041D75E    and         ebx,0FFFF
 0041D764    cmp         eax,61
>0041D767    jl          0041D771
 0041D769    cmp         eax,7A
>0041D76C    jg          0041D771
 0041D76E    sub         eax,20
 0041D771    cmp         ebx,61
>0041D774    jl          0041D77E
 0041D776    cmp         ebx,7A
>0041D779    jg          0041D77E
 0041D77B    sub         ebx,20
 0041D77E    sub         eax,ebx
>0041D780    jne         0041D7C2
 0041D782    mov         eax,dword ptr [esi+ecx*2]
 0041D785    mov         ebx,dword ptr [edx+ecx*2]
 0041D788    and         eax,0FFFF0000
 0041D78D    and         ebx,0FFFF0000
 0041D793    cmp         eax,ebx
>0041D795    je          0041D7BB
 0041D797    shr         eax,10
 0041D79A    shr         ebx,10
 0041D79D    cmp         eax,61
>0041D7A0    jl          0041D7AA
 0041D7A2    cmp         eax,7A
>0041D7A5    jg          0041D7AA
 0041D7A7    sub         eax,20
 0041D7AA    cmp         ebx,61
>0041D7AD    jl          0041D7B7
 0041D7AF    cmp         ebx,7A
>0041D7B2    jg          0041D7B7
 0041D7B4    sub         ebx,20
 0041D7B7    sub         eax,ebx
>0041D7B9    jne         0041D7C2
 0041D7BB    add         ecx,2
>0041D7BE    jl          0041D74A
 0041D7C0    mov         eax,ebp
 0041D7C2    pop         esi
 0041D7C3    pop         ebp
 0041D7C4    pop         ebx
 0041D7C5    ret
*}
end;

//0041D7C8
function CompareText(const S1:UnicodeString; const S2:UnicodeString; LocaleOptions:TLocaleOptions):Integer;
begin
{*
 0041D7C8    cmp         cl,1
>0041D7CB    jne         0041D7D3
 0041D7CD    call        AnsiCompareText
 0041D7D2    ret
 0041D7D3    call        CompareText
 0041D7D8    ret
*}
end;

//0041D7DC
{*procedure sub_0041D7DC(?:UnicodeString; ?:?);
begin
 0041D7DC    push        ebx
 0041D7DD    push        esi
 0041D7DE    mov         ebx,edx
 0041D7E0    mov         esi,eax
 0041D7E2    mov         eax,ebx
 0041D7E4    mov         edx,esi
 0041D7E6    call        @UStrAsg
 0041D7EB    cmp         dword ptr [ebx],0
>0041D7EE    je          0041D80C
 0041D7F0    mov         eax,ebx
 0041D7F2    call        UniqueString
 0041D7F7    mov         eax,ebx
 0041D7F9    call        0042650C
 0041D7FE    push        eax
 0041D7FF    mov         eax,dword ptr [ebx]
 0041D801    call        @UStrToPWChar
 0041D806    push        eax
 0041D807    call        user32.CharUpperBuffW
 0041D80C    pop         esi
 0041D80D    pop         ebx
 0041D80E    ret
end;*}

//0041D810
function AnsiLowerCase(const S:UnicodeString):UnicodeString;
begin
{*
 0041D810    push        ebx
 0041D811    push        esi
 0041D812    push        edi
 0041D813    mov         edi,edx
 0041D815    mov         esi,eax
 0041D817    mov         eax,esi
 0041D819    test        eax,eax
>0041D81B    je          0041D822
 0041D81D    sub         eax,4
 0041D820    mov         eax,dword ptr [eax]
 0041D822    mov         ebx,eax
 0041D824    mov         eax,esi
 0041D826    call        @UStrToPWChar
 0041D82B    mov         edx,eax
 0041D82D    mov         eax,edi
 0041D82F    mov         ecx,ebx
 0041D831    call        @UStrFromPWCharLen
 0041D836    test        ebx,ebx
>0041D838    jle         0041D848
 0041D83A    push        ebx
 0041D83B    mov         eax,dword ptr [edi]
 0041D83D    call        @UStrToPWChar
 0041D842    push        eax
 0041D843    call        user32.CharLowerBuffW
 0041D848    pop         edi
 0041D849    pop         esi
 0041D84A    pop         ebx
 0041D84B    ret
*}
end;

//0041D84C
function AnsiCompareStr(const S1:UnicodeString; const S2:UnicodeString):Integer;
begin
{*
 0041D84C    push        ebx
 0041D84D    push        esi
 0041D84E    push        edi
 0041D84F    push        ebp
 0041D850    mov         ebp,edx
 0041D852    mov         edi,eax
 0041D854    mov         ebx,edi
 0041D856    test        ebx,ebx
>0041D858    je          0041D85F
 0041D85A    sub         ebx,4
 0041D85D    mov         ebx,dword ptr [ebx]
 0041D85F    mov         esi,ebp
 0041D861    test        esi,esi
>0041D863    je          0041D86A
 0041D865    sub         esi,4
 0041D868    mov         esi,dword ptr [esi]
 0041D86A    push        esi
 0041D86B    mov         eax,ebp
 0041D86D    call        @UStrToPWChar
 0041D872    push        eax
 0041D873    push        ebx
 0041D874    mov         eax,edi
 0041D876    call        @UStrToPWChar
 0041D87B    push        eax
 0041D87C    push        0
 0041D87E    push        400
 0041D883    call        kernel32.CompareStringW
 0041D888    sub         eax,2
 0041D88B    pop         ebp
 0041D88C    pop         edi
 0041D88D    pop         esi
 0041D88E    pop         ebx
 0041D88F    ret
*}
end;

//0041D890
function AnsiCompareText(const S1:UnicodeString; const S2:UnicodeString):Integer;
begin
{*
 0041D890    push        ebx
 0041D891    push        esi
 0041D892    push        edi
 0041D893    push        ebp
 0041D894    mov         ebp,edx
 0041D896    mov         edi,eax
 0041D898    mov         ebx,edi
 0041D89A    test        ebx,ebx
>0041D89C    je          0041D8A3
 0041D89E    sub         ebx,4
 0041D8A1    mov         ebx,dword ptr [ebx]
 0041D8A3    mov         esi,ebp
 0041D8A5    test        esi,esi
>0041D8A7    je          0041D8AE
 0041D8A9    sub         esi,4
 0041D8AC    mov         esi,dword ptr [esi]
 0041D8AE    push        esi
 0041D8AF    mov         eax,ebp
 0041D8B1    call        @UStrToPWChar
 0041D8B6    push        eax
 0041D8B7    push        ebx
 0041D8B8    mov         eax,edi
 0041D8BA    call        @UStrToPWChar
 0041D8BF    push        eax
 0041D8C0    push        1
 0041D8C2    push        400
 0041D8C7    call        kernel32.CompareStringW
 0041D8CC    sub         eax,2
 0041D8CF    pop         ebp
 0041D8D0    pop         edi
 0041D8D1    pop         esi
 0041D8D2    pop         ebx
 0041D8D3    ret
*}
end;

//0041D8D4
function AnsiStrLIComp(S1:PWideChar; S2:PWideChar; MaxLen:Cardinal):Integer;
begin
{*
 0041D8D4    push        ebx
 0041D8D5    push        esi
 0041D8D6    push        edi
 0041D8D7    mov         ebx,ecx
 0041D8D9    mov         edi,edx
 0041D8DB    mov         esi,eax
 0041D8DD    push        ebx
 0041D8DE    push        edi
 0041D8DF    push        ebx
 0041D8E0    push        esi
 0041D8E1    push        1
 0041D8E3    push        400
 0041D8E8    call        kernel32.CompareStringW
 0041D8ED    sub         eax,2
 0041D8F0    pop         edi
 0041D8F1    pop         esi
 0041D8F2    pop         ebx
 0041D8F3    ret
*}
end;

//0041D8F4
{*procedure sub_0041D8F4(?:WideString; ?:?);
begin
 0041D8F4    push        ebx
 0041D8F5    push        esi
 0041D8F6    push        edi
 0041D8F7    mov         edi,edx
 0041D8F9    mov         esi,eax
 0041D8FB    mov         eax,esi
 0041D8FD    test        eax,eax
>0041D8FF    je          0041D908
 0041D901    sub         eax,4
 0041D904    mov         eax,dword ptr [eax]
 0041D906    shr         eax,1
 0041D908    mov         ebx,eax
 0041D90A    mov         eax,esi
 0041D90C    call        @WStrToPWChar
 0041D911    mov         edx,eax
 0041D913    mov         eax,edi
 0041D915    mov         ecx,ebx
 0041D917    call        @WStrFromPWCharLen
 0041D91C    test        ebx,ebx
>0041D91E    jle         0041D929
 0041D920    push        ebx
 0041D921    mov         eax,dword ptr [edi]
 0041D923    push        eax
 0041D924    call        user32.CharLowerBuffW
 0041D929    pop         edi
 0041D92A    pop         esi
 0041D92B    pop         ebx
 0041D92C    ret
end;*}

//0041D930
{*procedure sub_0041D930(?:string; ?:?);
begin
 0041D930    push        ebx
 0041D931    push        esi
 0041D932    push        edi
 0041D933    push        ebp
 0041D934    push        ecx
 0041D935    mov         edi,edx
 0041D937    mov         dword ptr [esp],eax
 0041D93A    mov         ebp,esp
 0041D93C    mov         eax,ebp
 0041D93E    call        0042650C
 0041D943    mov         esi,eax
 0041D945    dec         esi
 0041D946    xor         ebx,ebx
 0041D948    cmp         esi,0FFFFFFFF
>0041D94B    jle         0041D978
 0041D94D    mov         eax,ebp
 0041D94F    mov         edx,ebx
 0041D951    call        TStringHelper.GetChars
 0041D956    cmp         ax,20
>0041D95A    jbe         0041D978
 0041D95C    mov         eax,ebp
 0041D95E    mov         edx,esi
 0041D960    call        TStringHelper.GetChars
 0041D965    cmp         ax,20
>0041D969    jbe         0041D978
 0041D96B    mov         eax,edi
 0041D96D    mov         edx,dword ptr [ebp]
 0041D970    call        @UStrAsg
>0041D975    jmp         0041D9B7
 0041D977    inc         ebx
 0041D978    cmp         esi,ebx
>0041D97A    jl          0041D98B
 0041D97C    mov         eax,ebp
 0041D97E    mov         edx,ebx
 0041D980    call        TStringHelper.GetChars
 0041D985    cmp         ax,20
>0041D989    jbe         0041D977
 0041D98B    cmp         esi,ebx
>0041D98D    jge         0041D999
 0041D98F    mov         eax,edi
 0041D991    call        @UStrClr
>0041D996    jmp         0041D9B7
 0041D998    dec         esi
 0041D999    mov         eax,ebp
 0041D99B    mov         edx,esi
 0041D99D    call        TStringHelper.GetChars
 0041D9A2    cmp         ax,20
>0041D9A6    jbe         0041D998
 0041D9A8    push        edi
 0041D9A9    mov         ecx,esi
 0041D9AB    sub         ecx,ebx
 0041D9AD    inc         ecx
 0041D9AE    mov         eax,ebp
 0041D9B0    mov         edx,ebx
 0041D9B2    call        00426870
 0041D9B7    pop         edx
 0041D9B8    pop         ebp
 0041D9B9    pop         edi
 0041D9BA    pop         esi
 0041D9BB    pop         ebx
 0041D9BC    ret
end;*}

//0041D9C0
function TrimLeft(const S:UnicodeString):UnicodeString;
begin
{*
 0041D9C0    push        ebx
 0041D9C1    push        ecx
 0041D9C2    mov         ebx,edx
 0041D9C4    mov         dword ptr [esp],eax
 0041D9C7    mov         edx,ebx
 0041D9C9    mov         eax,esp
 0041D9CB    call        TStringHelper.TrimLeft
 0041D9D0    pop         edx
 0041D9D1    pop         ebx
 0041D9D2    ret
*}
end;

//0041D9D4
{*procedure sub_0041D9D4(?:UnicodeString; ?:?);
begin
 0041D9D4    push        ebx
 0041D9D5    push        ecx
 0041D9D6    mov         ebx,edx
 0041D9D8    mov         dword ptr [esp],eax
 0041D9DB    mov         edx,ebx
 0041D9DD    mov         eax,esp
 0041D9DF    call        0042696C
 0041D9E4    pop         edx
 0041D9E5    pop         ebx
 0041D9E6    ret
end;*}

//0041D9E8
{*procedure sub_0041D9E8(?:?; ?:?; ?:?);
begin
 0041D9E8    push        ebp
 0041D9E9    mov         ebp,esp
 0041D9EB    add         esp,0FFFFFFF0
 0041D9EE    push        ebx
 0041D9EF    push        esi
 0041D9F0    push        edi
 0041D9F1    xor         ebx,ebx
 0041D9F3    mov         dword ptr [ebp-0C],ebx
 0041D9F6    mov         dword ptr [ebp-10],ebx
 0041D9F9    mov         edi,ecx
 0041D9FB    mov         word ptr [ebp-6],dx
 0041D9FF    mov         dword ptr [ebp-4],eax
 0041DA02    xor         eax,eax
 0041DA04    push        ebp
 0041DA05    push        41DB4E
 0041DA0A    push        dword ptr fs:[eax]
 0041DA0D    mov         dword ptr fs:[eax],esp
 0041DA10    xor         esi,esi
 0041DA12    mov         eax,dword ptr [ebp-4]
 0041DA15    call        @UStrToPWChar
 0041DA1A    movzx       edx,word ptr [ebp-6]
 0041DA1E    call        004252D4
 0041DA23    mov         ebx,eax
 0041DA25    test        ebx,ebx
>0041DA27    je          0041DA3E
 0041DA29    add         ebx,2
 0041DA2C    inc         esi
 0041DA2D    movzx       edx,word ptr [ebp-6]
 0041DA31    mov         eax,ebx
 0041DA33    call        004252D4
 0041DA38    mov         ebx,eax
 0041DA3A    test        ebx,ebx
>0041DA3C    jne         0041DA29
 0041DA3E    test        esi,esi
>0041DA40    jne         0041DA74
 0041DA42    lea         eax,[ebp-0C]
 0041DA45    movzx       edx,word ptr [ebp-6]
 0041DA49    call        @UStrFromWChar
 0041DA4E    push        dword ptr [ebp-0C]
 0041DA51    push        dword ptr [ebp-4]
 0041DA54    lea         eax,[ebp-10]
 0041DA57    movzx       edx,word ptr [ebp-6]
 0041DA5B    call        @UStrFromWChar
 0041DA60    push        dword ptr [ebp-10]
 0041DA63    mov         eax,edi
 0041DA65    mov         edx,3
 0041DA6A    call        @UStrCatN
>0041DA6F    jmp         0041DB33
 0041DA74    mov         eax,dword ptr [ebp-4]
 0041DA77    test        eax,eax
>0041DA79    je          0041DA80
 0041DA7B    sub         eax,4
 0041DA7E    mov         eax,dword ptr [eax]
 0041DA80    lea         edx,[esi+eax+2]
 0041DA84    mov         eax,edi
 0041DA86    call        @UStrSetLength
 0041DA8B    mov         eax,dword ptr [edi]
 0041DA8D    call        @UStrToPWChar
 0041DA92    mov         edi,eax
 0041DA94    movzx       eax,word ptr [ebp-6]
 0041DA98    mov         word ptr [edi],ax
 0041DA9B    add         edi,2
 0041DA9E    mov         eax,dword ptr [ebp-4]
 0041DAA1    call        @UStrToPWChar
 0041DAA6    mov         esi,eax
 0041DAA8    movzx       edx,word ptr [ebp-6]
 0041DAAC    mov         eax,esi
 0041DAAE    call        004252D4
 0041DAB3    mov         ebx,eax
 0041DAB5    add         ebx,2
 0041DAB8    mov         eax,ebx
 0041DABA    sub         eax,esi
 0041DABC    sar         eax,1
>0041DABE    jns         0041DAC3
 0041DAC0    adc         eax,0
 0041DAC3    mov         ecx,eax
 0041DAC5    add         ecx,ecx
 0041DAC7    mov         edx,edi
 0041DAC9    mov         eax,esi
 0041DACB    call        Move
 0041DAD0    mov         eax,ebx
 0041DAD2    sub         eax,esi
 0041DAD4    sar         eax,1
>0041DAD6    jns         0041DADB
 0041DAD8    adc         eax,0
 0041DADB    add         eax,eax
 0041DADD    add         edi,eax
 0041DADF    movzx       eax,word ptr [ebp-6]
 0041DAE3    mov         word ptr [edi],ax
 0041DAE6    add         edi,2
 0041DAE9    mov         esi,ebx
 0041DAEB    movzx       edx,word ptr [ebp-6]
 0041DAEF    mov         eax,esi
 0041DAF1    call        004252D4
 0041DAF6    mov         ebx,eax
 0041DAF8    test        ebx,ebx
>0041DAFA    jne         0041DAB5
 0041DAFC    mov         eax,esi
 0041DAFE    call        StrEnd
 0041DB03    mov         ebx,eax
 0041DB05    mov         eax,ebx
 0041DB07    sub         eax,esi
 0041DB09    sar         eax,1
>0041DB0B    jns         0041DB10
 0041DB0D    adc         eax,0
 0041DB10    mov         ecx,eax
 0041DB12    add         ecx,ecx
 0041DB14    mov         edx,edi
 0041DB16    mov         eax,esi
 0041DB18    call        Move
 0041DB1D    sub         ebx,esi
 0041DB1F    sar         ebx,1
>0041DB21    jns         0041DB26
 0041DB23    adc         ebx,0
 0041DB26    mov         eax,ebx
 0041DB28    add         eax,eax
 0041DB2A    add         edi,eax
 0041DB2C    movzx       eax,word ptr [ebp-6]
 0041DB30    mov         word ptr [edi],ax
 0041DB33    xor         eax,eax
 0041DB35    pop         edx
 0041DB36    pop         ecx
 0041DB37    pop         ecx
 0041DB38    mov         dword ptr fs:[eax],edx
 0041DB3B    push        41DB55
 0041DB40    lea         eax,[ebp-10]
 0041DB43    mov         edx,2
 0041DB48    call        @UStrArrayClr
 0041DB4D    ret
>0041DB4E    jmp         @HandleFinally
>0041DB53    jmp         0041DB40
 0041DB55    pop         edi
 0041DB56    pop         esi
 0041DB57    pop         ebx
 0041DB58    mov         esp,ebp
 0041DB5A    pop         ebp
 0041DB5B    ret
end;*}

//0041DB5C
{*procedure sub_0041DB5C(?:?; ?:?; ?:?);
begin
 0041DB5C    push        ebx
 0041DB5D    push        esi
 0041DB5E    push        edi
 0041DB5F    push        ebp
 0041DB60    add         esp,0FFFFFFF8
 0041DB63    mov         dword ptr [esp],ecx
 0041DB66    mov         edi,edx
 0041DB68    mov         ebx,eax
 0041DB6A    mov         eax,dword ptr [esp]
 0041DB6D    call        @UStrClr
 0041DB72    cmp         dword ptr [ebx],0
>0041DB75    je          0041DCB5
 0041DB7B    mov         eax,dword ptr [ebx]
 0041DB7D    cmp         di,word ptr [eax]
>0041DB80    jne         0041DCB5
 0041DB86    add         dword ptr [ebx],2
 0041DB89    mov         ebp,1
 0041DB8E    mov         esi,dword ptr [ebx]
 0041DB90    mov         eax,dword ptr [ebx]
 0041DB92    mov         edx,edi
 0041DB94    call        004252D4
 0041DB99    mov         dword ptr [ebx],eax
>0041DB9B    jmp         0041DBB6
 0041DB9D    add         dword ptr [ebx],2
 0041DBA0    mov         eax,dword ptr [ebx]
 0041DBA2    cmp         di,word ptr [eax]
>0041DBA5    jne         0041DBBB
 0041DBA7    add         dword ptr [ebx],2
 0041DBAA    inc         ebp
 0041DBAB    mov         eax,dword ptr [ebx]
 0041DBAD    mov         edx,edi
 0041DBAF    call        004252D4
 0041DBB4    mov         dword ptr [ebx],eax
 0041DBB6    cmp         dword ptr [ebx],0
>0041DBB9    jne         0041DB9D
 0041DBBB    cmp         dword ptr [ebx],0
 0041DBBE    sete        al
 0041DBC1    and         eax,7F
 0041DBC4    mov         dword ptr [esp+4],eax
 0041DBC8    cmp         dword ptr [ebx],0
>0041DBCB    jne         0041DBD6
 0041DBCD    mov         eax,esi
 0041DBCF    call        StrEnd
 0041DBD4    mov         dword ptr [ebx],eax
 0041DBD6    mov         eax,dword ptr [ebx]
 0041DBD8    sub         eax,esi
 0041DBDA    sar         eax,1
>0041DBDC    jns         0041DBE1
 0041DBDE    adc         eax,0
 0041DBE1    mov         edx,1
 0041DBE6    sub         edx,dword ptr [esp+4]
 0041DBEA    cmp         eax,edx
>0041DBEC    jle         0041DCB5
 0041DBF2    mov         edx,eax
 0041DBF4    sub         edx,ebp
 0041DBF6    cmp         edx,dword ptr [esp+4]
>0041DBFA    je          0041DCB5
 0041DC00    cmp         ebp,1
>0041DC03    jne         0041DC1B
 0041DC05    mov         ecx,eax
 0041DC07    dec         ecx
 0041DC08    add         ecx,dword ptr [esp+4]
 0041DC0C    mov         eax,dword ptr [esp]
 0041DC0F    mov         edx,esi
 0041DC11    call        @UStrFromPWCharLen
>0041DC16    jmp         0041DCB5
 0041DC1B    mov         edx,eax
 0041DC1D    sub         edx,ebp
 0041DC1F    add         edx,dword ptr [esp+4]
 0041DC23    mov         eax,dword ptr [esp]
 0041DC26    call        @UStrSetLength
 0041DC2B    mov         eax,dword ptr [esp]
 0041DC2E    mov         eax,dword ptr [eax]
 0041DC30    call        @UStrToPWChar
 0041DC35    mov         ebp,eax
 0041DC37    mov         edx,edi
 0041DC39    mov         eax,esi
 0041DC3B    call        004252D4
 0041DC40    mov         dword ptr [ebx],eax
>0041DC42    jmp         0041DC85
 0041DC44    add         dword ptr [ebx],2
 0041DC47    mov         eax,dword ptr [ebx]
 0041DC49    cmp         di,word ptr [eax]
>0041DC4C    jne         0041DC8A
 0041DC4E    mov         eax,dword ptr [ebx]
 0041DC50    sub         eax,esi
 0041DC52    sar         eax,1
>0041DC54    jns         0041DC59
 0041DC56    adc         eax,0
 0041DC59    mov         ecx,eax
 0041DC5B    add         ecx,ecx
 0041DC5D    mov         edx,ebp
 0041DC5F    mov         eax,esi
 0041DC61    call        Move
 0041DC66    mov         eax,dword ptr [ebx]
 0041DC68    sub         eax,esi
 0041DC6A    sar         eax,1
>0041DC6C    jns         0041DC71
 0041DC6E    adc         eax,0
 0041DC71    add         eax,eax
 0041DC73    add         ebp,eax
 0041DC75    add         dword ptr [ebx],2
 0041DC78    mov         esi,dword ptr [ebx]
 0041DC7A    mov         eax,dword ptr [ebx]
 0041DC7C    mov         edx,edi
 0041DC7E    call        004252D4
 0041DC83    mov         dword ptr [ebx],eax
 0041DC85    cmp         dword ptr [ebx],0
>0041DC88    jne         0041DC44
 0041DC8A    cmp         dword ptr [ebx],0
>0041DC8D    jne         0041DC98
 0041DC8F    mov         eax,esi
 0041DC91    call        StrEnd
 0041DC96    mov         dword ptr [ebx],eax
 0041DC98    mov         eax,dword ptr [ebx]
 0041DC9A    sub         eax,esi
 0041DC9C    sar         eax,1
>0041DC9E    jns         0041DCA3
 0041DCA0    adc         eax,0
 0041DCA3    dec         eax
 0041DCA4    add         eax,dword ptr [esp+4]
 0041DCA8    mov         ecx,eax
 0041DCAA    add         ecx,ecx
 0041DCAC    mov         edx,ebp
 0041DCAE    mov         eax,esi
 0041DCB0    call        Move
 0041DCB5    pop         ecx
 0041DCB6    pop         edx
 0041DCB7    pop         ebp
 0041DCB8    pop         edi
 0041DCB9    pop         esi
 0041DCBA    pop         ebx
 0041DCBB    ret
end;*}

//0041DCBC
function AdjustLineBreaks(const S:UnicodeString; Style:TTextLineBreakStyle):UnicodeString;
begin
{*
 0041DCBC    push        ebx
 0041DCBD    push        esi
 0041DCBE    push        edi
 0041DCBF    push        ebp
 0041DCC0    add         esp,0FFFFFFF8
 0041DCC3    mov         dword ptr [esp],ecx
 0041DCC6    mov         ebx,edx
 0041DCC8    mov         ebp,eax
 0041DCCA    mov         edi,ebp
 0041DCCC    mov         edx,ebp
 0041DCCE    mov         eax,edx
 0041DCD0    test        eax,eax
>0041DCD2    je          0041DCD9
 0041DCD4    sub         eax,4
 0041DCD7    mov         eax,dword ptr [eax]
 0041DCD9    mov         esi,eax
 0041DCDB    add         esi,esi
 0041DCDD    add         esi,edi
 0041DCDF    mov         eax,edx
 0041DCE1    test        eax,eax
>0041DCE3    je          0041DCEA
 0041DCE5    sub         eax,4
 0041DCE8    mov         eax,dword ptr [eax]
 0041DCEA    mov         dword ptr [esp+4],eax
 0041DCEE    cmp         esi,edi
>0041DCF0    jbe         0041DD37
 0041DCF2    movzx       eax,word ptr [edi]
 0041DCF5    sub         ax,0A
>0041DCF9    je          0041DD03
 0041DCFB    sub         ax,3
>0041DCFF    je          0041DD0E
>0041DD01    jmp         0041DD30
 0041DD03    cmp         bl,1
>0041DD06    jne         0041DD30
 0041DD08    inc         dword ptr [esp+4]
>0041DD0C    jmp         0041DD30
 0041DD0E    cmp         bl,1
>0041DD11    jne         0041DD25
 0041DD13    cmp         word ptr [edi+2],0A
>0041DD18    jne         0041DD1F
 0041DD1A    add         edi,2
>0041DD1D    jmp         0041DD30
 0041DD1F    inc         dword ptr [esp+4]
>0041DD23    jmp         0041DD30
 0041DD25    cmp         word ptr [edi+2],0A
>0041DD2A    jne         0041DD30
 0041DD2C    dec         dword ptr [esp+4]
 0041DD30    add         edi,2
 0041DD33    cmp         esi,edi
>0041DD35    ja          0041DCF2
 0041DD37    mov         eax,edi
 0041DD39    call        @PWCharLen
 0041DD3E    cmp         eax,dword ptr [esp+4]
>0041DD42    jne         0041DD50
 0041DD44    mov         eax,dword ptr [esp]
 0041DD47    mov         edx,ebp
 0041DD49    call        @UStrAsg
>0041DD4E    jmp         0041DDC6
 0041DD50    mov         edi,ebp
 0041DD52    mov         eax,dword ptr [esp]
 0041DD55    mov         ecx,dword ptr [esp+4]
 0041DD59    xor         edx,edx
 0041DD5B    call        @UStrFromPWCharLen
 0041DD60    mov         eax,dword ptr [esp]
 0041DD63    mov         eax,dword ptr [eax]
 0041DD65    cmp         esi,edi
>0041DD67    jbe         0041DDC6
 0041DD69    movzx       edx,word ptr [edi]
 0041DD6C    mov         ecx,edx
 0041DD6E    sub         cx,0A
>0041DD72    je          0041DD7C
 0041DD74    sub         cx,3
>0041DD78    je          0041DD96
>0041DD7A    jmp         0041DDB9
 0041DD7C    cmp         bl,1
>0041DD7F    jne         0041DD89
 0041DD81    mov         word ptr [eax],0D
 0041DD86    add         eax,2
 0041DD89    mov         word ptr [eax],0A
 0041DD8E    add         eax,2
 0041DD91    add         edi,2
>0041DD94    jmp         0041DDC2
 0041DD96    cmp         bl,1
>0041DD99    jne         0041DDA3
 0041DD9B    mov         word ptr [eax],0D
 0041DDA0    add         eax,2
 0041DDA3    mov         word ptr [eax],0A
 0041DDA8    add         eax,2
 0041DDAB    add         edi,2
 0041DDAE    cmp         word ptr [edi],0A
>0041DDB2    jne         0041DDC2
 0041DDB4    add         edi,2
>0041DDB7    jmp         0041DDC2
 0041DDB9    mov         word ptr [eax],dx
 0041DDBC    add         eax,2
 0041DDBF    add         edi,2
 0041DDC2    cmp         esi,edi
>0041DDC4    ja          0041DD69
 0041DDC6    pop         ecx
 0041DDC7    pop         edx
 0041DDC8    pop         ebp
 0041DDC9    pop         edi
 0041DDCA    pop         esi
 0041DDCB    pop         ebx
 0041DDCC    ret
*}
end;

//0041DDD0
{*function sub_0041DDD0(?:TComponentName; ?:?):?;
begin
 0041DDD0    push        ebx
 0041DDD1    push        esi
 0041DDD2    push        edi
 0041DDD3    add         esp,0FFFFFFF4
 0041DDD6    mov         byte ptr [esp+4],dl
 0041DDDA    mov         dword ptr [esp],eax
 0041DDDD    xor         ebx,ebx
 0041DDDF    mov         eax,esp
 0041DDE1    call        0042650C
 0041DDE6    test        eax,eax
>0041DDE8    jne         0041DDEE
 0041DDEA    mov         al,1
>0041DDEC    jmp         0041DE16
 0041DDEE    mov         eax,dword ptr [esp]
 0041DDF1    movzx       eax,word ptr [eax]
 0041DDF4    mov         word ptr [esp+6],ax
 0041DDF9    lea         eax,[esp+6]
 0041DDFD    call        00417074
 0041DE02    test        al,al
>0041DE04    jne         0041DE12
 0041DE06    cmp         word ptr [esp+6],5F
>0041DE0C    je          0041DE12
 0041DE0E    xor         eax,eax
>0041DE10    jmp         0041DE14
 0041DE12    mov         al,1
 0041DE14    xor         al,1
 0041DE16    test        al,al
>0041DE18    jne         0041DEC7
 0041DE1E    cmp         byte ptr [esp+4],0
>0041DE23    je          0041DE7C
 0041DE25    mov         eax,dword ptr [esp]
 0041DE28    test        eax,eax
>0041DE2A    je          0041DE31
 0041DE2C    sub         eax,4
 0041DE2F    mov         eax,dword ptr [eax]
 0041DE31    mov         edi,eax
 0041DE33    sub         edi,2
>0041DE36    jl          0041DEC5
 0041DE3C    inc         edi
 0041DE3D    mov         esi,2
 0041DE42    mov         eax,dword ptr [esp]
 0041DE45    movzx       eax,word ptr [eax+esi*2-2]
 0041DE4A    mov         word ptr [esp+8],ax
 0041DE4F    lea         eax,[esp+8]
 0041DE53    call        004170C8
 0041DE58    test        al,al
>0041DE5A    jne         0041DE70
 0041DE5C    cmp         word ptr [esp+8],5F
>0041DE62    je          0041DE70
 0041DE64    cmp         word ptr [esp+8],2E
>0041DE6A    je          0041DE70
 0041DE6C    xor         eax,eax
>0041DE6E    jmp         0041DE72
 0041DE70    mov         al,1
 0041DE72    test        al,al
>0041DE74    je          0041DEC7
 0041DE76    inc         esi
 0041DE77    dec         edi
>0041DE78    jne         0041DE42
>0041DE7A    jmp         0041DEC5
 0041DE7C    mov         eax,dword ptr [esp]
 0041DE7F    test        eax,eax
>0041DE81    je          0041DE88
 0041DE83    sub         eax,4
 0041DE86    mov         eax,dword ptr [eax]
 0041DE88    mov         edi,eax
 0041DE8A    sub         edi,2
>0041DE8D    jl          0041DEC5
 0041DE8F    inc         edi
 0041DE90    mov         esi,2
 0041DE95    mov         eax,dword ptr [esp]
 0041DE98    movzx       eax,word ptr [eax+esi*2-2]
 0041DE9D    mov         word ptr [esp+0A],ax
 0041DEA2    lea         eax,[esp+0A]
 0041DEA6    call        004170C8
 0041DEAB    test        al,al
>0041DEAD    jne         0041DEBB
 0041DEAF    cmp         word ptr [esp+0A],5F
>0041DEB5    je          0041DEBB
 0041DEB7    xor         eax,eax
>0041DEB9    jmp         0041DEBD
 0041DEBB    mov         al,1
 0041DEBD    test        al,al
>0041DEBF    je          0041DEC7
 0041DEC1    inc         esi
 0041DEC2    dec         edi
>0041DEC3    jne         0041DE95
 0041DEC5    mov         bl,1
 0041DEC7    mov         eax,ebx
 0041DEC9    add         esp,0C
 0041DECC    pop         edi
 0041DECD    pop         esi
 0041DECE    pop         ebx
 0041DECF    ret
end;*}

//0041DED0
function _IntToStr32(Value:Cardinal; Negative:Boolean):UnicodeString;
begin
{*
 0041DED0    push        ebx
 0041DED1    push        esi
 0041DED2    push        edi
 0041DED3    push        ebp
 0041DED4    mov         ebp,ecx
 0041DED6    mov         ebx,edx
 0041DED8    mov         edi,eax
 0041DEDA    cmp         edi,2710
>0041DEE0    jb          0041DF2B
 0041DEE2    cmp         edi,0F4240
>0041DEE8    jb          0041DF18
 0041DEEA    cmp         edi,5F5E100
>0041DEF0    jb          0041DF05
 0041DEF2    cmp         edi,3B9ACA00
 0041DEF8    setae       al
 0041DEFB    mov         esi,eax
 0041DEFD    and         esi,7F
 0041DF00    add         esi,9
>0041DF03    jmp         0041DF4F
 0041DF05    cmp         edi,989680;gvar_00989680
 0041DF0B    setae       al
 0041DF0E    mov         esi,eax
 0041DF10    and         esi,7F
 0041DF13    add         esi,7
>0041DF16    jmp         0041DF4F
 0041DF18    cmp         edi,186A0
 0041DF1E    setae       al
 0041DF21    mov         esi,eax
 0041DF23    and         esi,7F
 0041DF26    add         esi,5
>0041DF29    jmp         0041DF4F
 0041DF2B    cmp         edi,64
>0041DF2E    jb          0041DF43
 0041DF30    cmp         edi,3E8
 0041DF36    setae       al
 0041DF39    mov         esi,eax
 0041DF3B    and         esi,7F
 0041DF3E    add         esi,3
>0041DF41    jmp         0041DF4F
 0041DF43    cmp         edi,0A
 0041DF46    setae       al
 0041DF49    mov         esi,eax
 0041DF4B    and         esi,7F
 0041DF4E    inc         esi
 0041DF4F    movzx       eax,bl
 0041DF52    add         eax,esi
 0041DF54    mov         edx,ebp
 0041DF56    xchg        eax,edx
 0041DF57    call        @UStrSetLength
 0041DF5C    mov         eax,dword ptr [ebp]
 0041DF5F    call        @UStrToPWChar
 0041DF64    mov         ecx,eax
 0041DF66    mov         word ptr [ecx],2D
 0041DF6B    movzx       eax,bl
 0041DF6E    add         eax,eax
 0041DF70    add         ecx,eax
 0041DF72    cmp         esi,2
>0041DF75    jle         0041DFA4
 0041DF77    mov         eax,edi
 0041DF79    mov         ebx,64
 0041DF7E    xor         edx,edx
 0041DF80    div         eax,ebx
 0041DF82    mov         edx,eax
 0041DF84    imul        eax,edx,64
 0041DF87    sub         edi,eax
 0041DF89    mov         eax,edi
 0041DF8B    mov         edi,edx
 0041DF8D    sub         esi,2
 0041DF90    mov         eax,dword ptr [eax*4+79EE4C]
 0041DF97    mov         edx,esi
 0041DF99    add         edx,edx
 0041DF9B    add         edx,ecx
 0041DF9D    mov         dword ptr [edx],eax
 0041DF9F    cmp         esi,2
>0041DFA2    jg          0041DF77
 0041DFA4    cmp         esi,2
>0041DFA7    jne         0041DFBD
 0041DFA9    mov         eax,dword ptr [edi*4+79EE4C]
 0041DFB0    mov         edx,esi
 0041DFB2    add         edx,edx
 0041DFB4    add         ecx,edx
 0041DFB6    sub         ecx,4
 0041DFB9    mov         dword ptr [ecx],eax
>0041DFBB    jmp         0041DFC4
 0041DFBD    or          di,30
 0041DFC1    mov         word ptr [ecx],di
 0041DFC4    pop         ebp
 0041DFC5    pop         edi
 0041DFC6    pop         esi
 0041DFC7    pop         ebx
 0041DFC8    ret
*}
end;

//0041DFCC
{*procedure sub_0041DFCC(?:?; ?:?; ?:?; ?:?);
begin
 0041DFCC    push        ebp
 0041DFCD    mov         ebp,esp
 0041DFCF    add         esp,0FFFFFFDC
 0041DFD2    push        ebx
 0041DFD3    push        esi
 0041DFD4    push        edi
 0041DFD5    mov         esi,edx
 0041DFD7    mov         byte ptr [ebp-1],al
 0041DFDA    cmp         byte ptr [ebp-1],0
>0041DFDE    je          0041DFEF
 0041DFE0    cmp         dword ptr [ebp+0C],0
>0041DFE4    jne         0041DFED
 0041DFE6    cmp         dword ptr [ebp+8],7FFFFFFF
>0041DFED    jbe         0041E001
 0041DFEF    cmp         byte ptr [ebp-1],0
>0041DFF3    jne         0041E014
 0041DFF5    cmp         dword ptr [ebp+0C],0
>0041DFF9    jne         0041DFFF
 0041DFFB    cmp         dword ptr [ebp+8],0FFFFFFFF
>0041DFFF    ja          0041E014
 0041E001    mov         ecx,esi
 0041E003    movzx       edx,byte ptr [ebp-1]
 0041E007    mov         eax,dword ptr [ebp+8]
 0041E00A    call        _IntToStr32
>0041E00F    jmp         0041E2D1
 0041E014    mov         eax,dword ptr [ebp+8]
 0041E017    mov         dword ptr [ebp-10],eax
 0041E01A    mov         eax,dword ptr [ebp+0C]
 0041E01D    mov         dword ptr [ebp-0C],eax
 0041E020    cmp         dword ptr [ebp-0C],5AF3
>0041E027    jne         0041E030
 0041E029    cmp         dword ptr [ebp-10],107A4000
>0041E030    jb          0041E0A6
 0041E032    cmp         dword ptr [ebp-0C],2386F2
>0041E039    jne         0041E042
 0041E03B    cmp         dword ptr [ebp-10],6FC10000
>0041E042    jb          0041E08E
 0041E044    cmp         dword ptr [ebp-0C],0DE0B6B3
>0041E04B    jne         0041E054
 0041E04D    cmp         dword ptr [ebp-10],0A7640000
>0041E054    jb          0041E076
 0041E056    cmp         dword ptr [ebp-0C],8AC72304
>0041E05D    jne         0041E066
 0041E05F    cmp         dword ptr [ebp-10],89E80000
>0041E066    jb          0041E06F
 0041E068    mov         bl,14
>0041E06A    jmp         0041E0F6
 0041E06F    mov         bl,13
>0041E071    jmp         0041E0F6
 0041E076    cmp         dword ptr [ebp-0C],1634578
>0041E07D    jne         0041E086
 0041E07F    cmp         dword ptr [ebp-10],5D8A0000
 0041E086    setae       bl
 0041E089    add         bl,11
>0041E08C    jmp         0041E0F6
 0041E08E    cmp         dword ptr [ebp-0C],38D7E
>0041E095    jne         0041E09E
 0041E097    cmp         dword ptr [ebp-10],0A4C68000
 0041E09E    setae       bl
 0041E0A1    add         bl,0F
>0041E0A4    jmp         0041E0F6
 0041E0A6    cmp         dword ptr [ebp-0C],0E8
>0041E0AD    jne         0041E0B6
 0041E0AF    cmp         dword ptr [ebp-10],0D4A51000
>0041E0B6    jb          0041E0D0
 0041E0B8    cmp         dword ptr [ebp-0C],918
>0041E0BF    jne         0041E0C8
 0041E0C1    cmp         dword ptr [ebp-10],4E72A000
 0041E0C8    setae       bl
 0041E0CB    add         bl,0D
>0041E0CE    jmp         0041E0F6
 0041E0D0    cmp         dword ptr [ebp-0C],2
>0041E0D4    jne         0041E0DD
 0041E0D6    cmp         dword ptr [ebp-10],540BE400
>0041E0DD    jb          0041E0F4
 0041E0DF    cmp         dword ptr [ebp-0C],17
>0041E0E3    jne         0041E0EC
 0041E0E5    cmp         dword ptr [ebp-10],4876E800
 0041E0EC    setae       bl
 0041E0EF    add         bl,0B
>0041E0F2    jmp         0041E0F6
 0041E0F4    mov         bl,0A
 0041E0F6    movzx       eax,bl
 0041E0F9    movzx       edi,byte ptr [ebp-1]
 0041E0FD    add         eax,edi
 0041E0FF    mov         edx,esi
 0041E101    xchg        eax,edx
 0041E102    call        @UStrSetLength
 0041E107    mov         eax,dword ptr [esi]
 0041E109    call        @UStrToPWChar
 0041E10E    mov         esi,eax
 0041E110    mov         word ptr [esi],2D
 0041E115    mov         eax,edi
 0041E117    add         eax,eax
 0041E119    add         esi,eax
 0041E11B    cmp         bl,14
>0041E11E    jne         0041E137
 0041E120    mov         word ptr [esi],31
 0041E125    add         esi,2
 0041E128    sub         dword ptr [ebp-10],89E80000
 0041E12F    sbb         dword ptr [ebp-0C],8AC72304
 0041E136    dec         ebx
 0041E137    cmp         bl,11
>0041E13A    jbe         0041E19D
 0041E13C    cmp         bl,13
>0041E13F    jne         0041E16E
 0041E141    mov         word ptr [esi],30
>0041E146    jmp         0041E159
 0041E148    sub         dword ptr [ebp-10],0A7640000
 0041E14F    sbb         dword ptr [ebp-0C],0DE0B6B3
 0041E156    inc         word ptr [esi]
 0041E159    cmp         dword ptr [ebp-0C],0DE0B6B3
>0041E160    jne         0041E169
 0041E162    cmp         dword ptr [ebp-10],0A7640000
>0041E169    jae         0041E148
 0041E16B    add         esi,2
 0041E16E    mov         word ptr [esi],30
>0041E173    jmp         0041E186
 0041E175    sub         dword ptr [ebp-10],5D8A0000
 0041E17C    sbb         dword ptr [ebp-0C],1634578
 0041E183    inc         word ptr [esi]
 0041E186    cmp         dword ptr [ebp-0C],1634578
>0041E18D    jne         0041E196
 0041E18F    cmp         dword ptr [ebp-10],5D8A0000
>0041E196    jae         0041E175
 0041E198    add         esi,2
 0041E19B    mov         bl,11
 0041E19D    push        0
 0041E19F    push        5F5E100
 0041E1A4    mov         eax,dword ptr [ebp-10]
 0041E1A7    mov         edx,dword ptr [ebp-0C]
 0041E1AA    call        @_lludiv
 0041E1AF    mov         dword ptr [ebp-18],eax
 0041E1B2    mov         dword ptr [ebp-14],edx
 0041E1B5    mov         eax,dword ptr [ebp-10]
 0041E1B8    mov         edx,dword ptr [ebp-0C]
 0041E1BB    push        edx
 0041E1BC    push        eax
 0041E1BD    push        0
 0041E1BF    push        5F5E100
 0041E1C4    mov         eax,dword ptr [ebp-18]
 0041E1C7    mov         edx,dword ptr [ebp-14]
 0041E1CA    call        @_llmul
 0041E1CF    sub         dword ptr [esp],eax
 0041E1D2    sbb         dword ptr [esp+4],edx
 0041E1D6    pop         eax
 0041E1D7    pop         edx
 0041E1D8    mov         dword ptr [ebp-20],eax
 0041E1DB    mov         dword ptr [ebp-1C],edx
 0041E1DE    mov         ecx,dword ptr [ebp-20]
 0041E1E1    mov         eax,ecx
 0041E1E3    mov         edi,64
 0041E1E8    xor         edx,edx
 0041E1EA    div         eax,edi
 0041E1EC    mov         dword ptr [ebp-24],eax
 0041E1EF    imul        eax,dword ptr [ebp-24],64
 0041E1F3    sub         ecx,eax
 0041E1F5    mov         eax,ecx
 0041E1F7    mov         eax,dword ptr [eax*4+79EE4C]
 0041E1FE    movzx       edx,bl
 0041E201    add         edx,edx
 0041E203    add         edx,esi
 0041E205    sub         edx,4
 0041E208    mov         dword ptr [edx],eax
 0041E20A    mov         eax,dword ptr [ebp-24]
 0041E20D    mov         ecx,64
 0041E212    xor         edx,edx
 0041E214    div         eax,ecx
 0041E216    mov         ecx,eax
 0041E218    imul        eax,ecx,64
 0041E21B    mov         edx,dword ptr [ebp-24]
 0041E21E    sub         edx,eax
 0041E220    mov         eax,edx
 0041E222    mov         eax,dword ptr [eax*4+79EE4C]
 0041E229    movzx       edx,bl
 0041E22C    add         edx,edx
 0041E22E    add         edx,esi
 0041E230    sub         edx,8
 0041E233    mov         dword ptr [edx],eax
 0041E235    mov         eax,ecx
 0041E237    mov         edi,64
 0041E23C    xor         edx,edx
 0041E23E    div         eax,edi
 0041E240    mov         dword ptr [ebp-24],eax
 0041E243    imul        eax,dword ptr [ebp-24],64
 0041E247    sub         ecx,eax
 0041E249    mov         eax,ecx
 0041E24B    mov         eax,dword ptr [eax*4+79EE4C]
 0041E252    movzx       edx,bl
 0041E255    add         edx,edx
 0041E257    add         edx,esi
 0041E259    sub         edx,0C
 0041E25C    mov         dword ptr [edx],eax
 0041E25E    mov         eax,dword ptr [ebp-24]
 0041E261    mov         eax,dword ptr [eax*4+79EE4C]
 0041E268    movzx       edx,bl
 0041E26B    add         edx,edx
 0041E26D    add         edx,esi
 0041E26F    sub         edx,10
 0041E272    mov         dword ptr [edx],eax
 0041E274    sub         bl,8
 0041E277    mov         ecx,dword ptr [ebp-18]
 0041E27A    cmp         bl,2
>0041E27D    jbe         0041E2B0
 0041E27F    mov         eax,ecx
 0041E281    mov         edi,64
 0041E286    xor         edx,edx
 0041E288    div         eax,edi
 0041E28A    mov         dword ptr [ebp-24],eax
 0041E28D    imul        eax,dword ptr [ebp-24],64
 0041E291    sub         ecx,eax
 0041E293    mov         eax,ecx
 0041E295    mov         ecx,dword ptr [ebp-24]
 0041E298    sub         bl,2
 0041E29B    mov         eax,dword ptr [eax*4+79EE4C]
 0041E2A2    movzx       edx,bl
 0041E2A5    add         edx,edx
 0041E2A7    add         edx,esi
 0041E2A9    mov         dword ptr [edx],eax
 0041E2AB    cmp         bl,2
>0041E2AE    ja          0041E27F
 0041E2B0    cmp         bl,2
>0041E2B3    jne         0041E2CA
 0041E2B5    mov         eax,dword ptr [ecx*4+79EE4C]
 0041E2BC    movzx       edx,bl
 0041E2BF    add         edx,edx
 0041E2C1    add         esi,edx
 0041E2C3    sub         esi,4
 0041E2C6    mov         dword ptr [esi],eax
>0041E2C8    jmp         0041E2D1
 0041E2CA    or          cx,30
 0041E2CE    mov         word ptr [esi],cx
 0041E2D1    pop         edi
 0041E2D2    pop         esi
 0041E2D3    pop         ebx
 0041E2D4    mov         esp,ebp
 0041E2D6    pop         ebp
 0041E2D7    ret         8
end;*}

//0041E2DC
function IntToStr(Value:Integer):UnicodeString;
begin
{*
 0041E2DC    push        ebx
 0041E2DD    push        esi
 0041E2DE    mov         esi,edx
 0041E2E0    mov         ebx,eax
 0041E2E2    test        ebx,ebx
>0041E2E4    jge         0041E2F6
 0041E2E6    mov         ecx,esi
 0041E2E8    mov         eax,ebx
 0041E2EA    neg         eax
 0041E2EC    mov         dl,1
 0041E2EE    call        _IntToStr32
 0041E2F3    pop         esi
 0041E2F4    pop         ebx
 0041E2F5    ret
 0041E2F6    mov         ecx,esi
 0041E2F8    xor         edx,edx
 0041E2FA    mov         eax,ebx
 0041E2FC    call        _IntToStr32
 0041E301    pop         esi
 0041E302    pop         ebx
 0041E303    ret
*}
end;

//0041E304
{*procedure sub_0041E304(?:UnicodeString; ?:?; ?:?);
begin
 0041E304    push        ebp
 0041E305    mov         ebp,esp
 0041E307    push        ebx
 0041E308    mov         ebx,eax
 0041E30A    cmp         dword ptr [ebp+0C],0
>0041E30E    jne         0041E318
 0041E310    cmp         dword ptr [ebp+8],0
>0041E314    jae         0041E334
>0041E316    jmp         0041E31A
>0041E318    jge         0041E334
 0041E31A    mov         eax,dword ptr [ebp+8]
 0041E31D    mov         edx,dword ptr [ebp+0C]
 0041E320    neg         eax
 0041E322    adc         edx,0
 0041E325    neg         edx
 0041E327    push        edx
 0041E328    push        eax
 0041E329    mov         edx,ebx
 0041E32B    mov         al,1
 0041E32D    call        0041DFCC
>0041E332    jmp         0041E343
 0041E334    push        dword ptr [ebp+0C]
 0041E337    push        dword ptr [ebp+8]
 0041E33A    mov         edx,ebx
 0041E33C    xor         eax,eax
 0041E33E    call        0041DFCC
 0041E343    pop         ebx
 0041E344    pop         ebp
 0041E345    ret         8
end;*}

//0041E348
{*procedure sub_0041E348(?:?; ?:?);
begin
 0041E348    push        ebx
 0041E349    push        esi
 0041E34A    mov         esi,edx
 0041E34C    mov         ebx,eax
 0041E34E    mov         ecx,esi
 0041E350    xor         edx,edx
 0041E352    mov         eax,ebx
 0041E354    call        _IntToStr32
 0041E359    pop         esi
 0041E35A    pop         ebx
 0041E35B    ret
end;*}

//0041E35C
{*procedure sub_0041E35C(?:UnicodeString; ?:?; ?:?);
begin
 0041E35C    push        ebp
 0041E35D    mov         ebp,esp
 0041E35F    push        ebx
 0041E360    mov         ebx,eax
 0041E362    push        dword ptr [ebp+0C]
 0041E365    push        dword ptr [ebp+8]
 0041E368    mov         edx,ebx
 0041E36A    xor         eax,eax
 0041E36C    call        0041DFCC
 0041E371    pop         ebx
 0041E372    pop         ebp
 0041E373    ret         8
end;*}

//0041E378
function _IntToHex(Value:UInt64; Digits:Integer):UnicodeString;
begin
{*
 0041E378    push        ebp
 0041E379    mov         ebp,esp
 0041E37B    add         esp,0FFFFFFE8
 0041E37E    push        ebx
 0041E37F    push        esi
 0041E380    push        edi
 0041E381    xor         ecx,ecx
 0041E383    mov         dword ptr [ebp-4],ecx
 0041E386    mov         dword ptr [ebp-8],edx
 0041E389    mov         esi,eax
 0041E38B    xor         eax,eax
 0041E38D    push        ebp
 0041E38E    push        41E500
 0041E393    push        dword ptr fs:[eax]
 0041E396    mov         dword ptr fs:[eax],esp
 0041E399    mov         ebx,1
 0041E39E    mov         eax,dword ptr [ebp+8]
 0041E3A1    mov         edx,dword ptr [ebp+0C]
 0041E3A4    shrd        eax,edx,4
 0041E3A8    shr         edx,4
 0041E3AB    mov         dword ptr [ebp-10],eax
 0041E3AE    mov         dword ptr [ebp-0C],edx
>0041E3B1    jmp         0041E3C7
 0041E3B3    inc         ebx
 0041E3B4    mov         eax,dword ptr [ebp-10]
 0041E3B7    mov         edx,dword ptr [ebp-0C]
 0041E3BA    shrd        eax,edx,4
 0041E3BE    shr         edx,4
 0041E3C1    mov         dword ptr [ebp-10],eax
 0041E3C4    mov         dword ptr [ebp-0C],edx
 0041E3C7    cmp         dword ptr [ebp-0C],0
>0041E3CB    jne         0041E3D1
 0041E3CD    cmp         dword ptr [ebp-10],0
>0041E3D1    ja          0041E3B3
 0041E3D3    cmp         ebx,esi
>0041E3D5    jge         0041E40D
 0041E3D7    push        esi
 0041E3D8    lea         eax,[ebp-4]
 0041E3DB    mov         ecx,1
 0041E3E0    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0041E3E6    call        @DynArraySetLength
 0041E3EB    add         esp,4
 0041E3EE    mov         eax,esi
 0041E3F0    sub         eax,ebx
 0041E3F2    dec         eax
 0041E3F3    test        eax,eax
>0041E3F5    jl          0041E407
 0041E3F7    inc         eax
 0041E3F8    xor         edx,edx
 0041E3FA    mov         ecx,dword ptr [ebp-4]
 0041E3FD    mov         word ptr [ecx+edx*2],30
 0041E403    inc         edx
 0041E404    dec         eax
>0041E405    jne         0041E3FA
 0041E407    mov         ecx,esi
 0041E409    sub         ecx,ebx
>0041E40B    jmp         0041E426
 0041E40D    push        ebx
 0041E40E    lea         eax,[ebp-4]
 0041E411    mov         ecx,1
 0041E416    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0041E41C    call        @DynArraySetLength
 0041E421    add         esp,4
 0041E424    xor         ecx,ecx
 0041E426    mov         eax,dword ptr [ebp+8]
 0041E429    mov         dword ptr [ebp-10],eax
 0041E42C    mov         eax,dword ptr [ebp+0C]
 0041E42F    mov         dword ptr [ebp-0C],eax
 0041E432    cmp         ebx,2
>0041E435    jle         0041E48D
 0041E437    mov         eax,dword ptr [ebp-10]
 0041E43A    mov         edx,dword ptr [ebp-0C]
 0041E43D    and         eax,0FF
 0041E443    xor         edx,edx
 0041E445    mov         dword ptr [ebp-18],eax
 0041E448    mov         dword ptr [ebp-14],edx
 0041E44B    mov         eax,dword ptr [ebp-10]
 0041E44E    mov         edx,dword ptr [ebp-0C]
 0041E451    shrd        eax,edx,8
 0041E455    shr         edx,8
 0041E458    mov         dword ptr [ebp-10],eax
 0041E45B    mov         dword ptr [ebp-0C],edx
 0041E45E    sub         ebx,2
 0041E461    mov         eax,dword ptr [ebp-18]
 0041E464    mov         edi,eax
 0041E466    lea         esi,[ebx+ecx]
 0041E469    mov         eax,dword ptr [ebp-4]
 0041E46C    movzx       edx,word ptr [edi*4+79EFDC]
 0041E474    mov         word ptr [eax+esi*2],dx
 0041E478    mov         eax,dword ptr [ebp-4]
 0041E47B    movzx       edx,word ptr [edi*4+79EFDE]
 0041E483    mov         word ptr [eax+esi*2+2],dx
 0041E488    cmp         ebx,2
>0041E48B    jg          0041E437
 0041E48D    cmp         ebx,2
>0041E490    jne         0041E4B8
 0041E492    mov         eax,dword ptr [ebp-10]
 0041E495    mov         ebx,eax
 0041E497    movzx       eax,word ptr [ebx*4+79EFDC]
 0041E49F    mov         edx,dword ptr [ebp-4]
 0041E4A2    mov         word ptr [edx+ecx*2],ax
 0041E4A6    movzx       eax,word ptr [ebx*4+79EFDE]
 0041E4AE    mov         edx,dword ptr [ebp-4]
 0041E4B1    mov         word ptr [edx+ecx*2+2],ax
>0041E4B6    jmp         0041E4CA
 0041E4B8    mov         eax,dword ptr [ebp-10]
 0041E4BB    movzx       eax,word ptr [eax*4+79EFDE]
 0041E4C3    mov         edx,dword ptr [ebp-4]
 0041E4C6    mov         word ptr [edx+ecx*2],ax
 0041E4CA    mov         ebx,dword ptr [ebp-4]
 0041E4CD    test        ebx,ebx
>0041E4CF    je          0041E4D6
 0041E4D1    sub         ebx,4
 0041E4D4    mov         ebx,dword ptr [ebx]
 0041E4D6    mov         ecx,dword ptr [ebp-8]
 0041E4D9    mov         edx,ebx
 0041E4DB    dec         edx
 0041E4DC    mov         eax,dword ptr [ebp-4]
 0041E4DF    call        00426710
 0041E4E4    xor         eax,eax
 0041E4E6    pop         edx
 0041E4E7    pop         ecx
 0041E4E8    pop         ecx
 0041E4E9    mov         dword ptr fs:[eax],edx
 0041E4EC    push        41E507
 0041E4F1    lea         eax,[ebp-4]
 0041E4F4    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 0041E4FA    call        @DynArrayClear
 0041E4FF    ret
>0041E500    jmp         @HandleFinally
>0041E505    jmp         0041E4F1
 0041E507    pop         edi
 0041E508    pop         esi
 0041E509    pop         ebx
 0041E50A    mov         esp,ebp
 0041E50C    pop         ebp
 0041E50D    ret         8
*}
end;

//0041E510
function IntToHex(Value:Integer; Digits:Integer):UnicodeString;
begin
{*
 0041E510    push        ebx
 0041E511    push        esi
 0041E512    push        edi
 0041E513    mov         edi,ecx
 0041E515    mov         esi,edx
 0041E517    mov         ebx,eax
 0041E519    mov         eax,ebx
 0041E51B    xor         edx,edx
 0041E51D    push        edx
 0041E51E    push        eax
 0041E51F    mov         edx,edi
 0041E521    mov         eax,esi
 0041E523    call        _IntToHex
 0041E528    pop         edi
 0041E529    pop         esi
 0041E52A    pop         ebx
 0041E52B    ret
*}
end;

//0041E52C
{*procedure sub_0041E52C(?:?; ?:UnicodeString; ?:?; ?:?);
begin
 0041E52C    push        ebp
 0041E52D    mov         ebp,esp
 0041E52F    push        ebx
 0041E530    push        esi
 0041E531    mov         esi,edx
 0041E533    mov         ebx,eax
 0041E535    push        dword ptr [ebp+0C]
 0041E538    push        dword ptr [ebp+8]
 0041E53B    mov         edx,esi
 0041E53D    mov         eax,ebx
 0041E53F    call        _IntToHex
 0041E544    pop         esi
 0041E545    pop         ebx
 0041E546    pop         ebp
 0041E547    ret         8
end;*}

//0041E54C
function StrToInt(const S:UnicodeString):Integer;
begin
{*
 0041E54C    push        ebx
 0041E54D    push        esi
 0041E54E    add         esp,0FFFFFFF4
 0041E551    mov         ebx,eax
 0041E553    mov         edx,esp
 0041E555    mov         eax,ebx
 0041E557    call        @ValLong
 0041E55C    mov         esi,eax
 0041E55E    cmp         dword ptr [esp],0
>0041E562    je          0041E57D
 0041E564    mov         dword ptr [esp+4],ebx
 0041E568    mov         byte ptr [esp+8],11
 0041E56D    lea         edx,[esp+4]
 0041E571    mov         eax,[007C45F8];^SResString0:TResStringRec
 0041E576    xor         ecx,ecx
 0041E578    call        ConvertErrorFmt
 0041E57D    mov         eax,esi
 0041E57F    add         esp,0C
 0041E582    pop         esi
 0041E583    pop         ebx
 0041E584    ret
*}
end;

//0041E588
function StrToIntDef(const S:UnicodeString; Default:Integer):Integer;
begin
{*
 0041E588    push        ebx
 0041E589    push        ecx
 0041E58A    mov         ebx,edx
 0041E58C    mov         edx,esp
 0041E58E    call        @ValLong
 0041E593    cmp         dword ptr [esp],0
>0041E597    je          0041E59B
 0041E599    mov         eax,ebx
 0041E59B    pop         edx
 0041E59C    pop         ebx
 0041E59D    ret
*}
end;

//0041E5A0
function sub_0041E5A0(?:UnicodeString; ?:Integer):Boolean;
begin
{*
 0041E5A0    push        ebx
 0041E5A1    push        esi
 0041E5A2    push        ecx
 0041E5A3    mov         esi,edx
 0041E5A5    mov         ebx,eax
 0041E5A7    mov         edx,esp
 0041E5A9    mov         eax,ebx
 0041E5AB    call        @ValLong
 0041E5B0    mov         dword ptr [esi],eax
 0041E5B2    cmp         dword ptr [esp],0
 0041E5B6    sete        al
 0041E5B9    pop         edx
 0041E5BA    pop         esi
 0041E5BB    pop         ebx
 0041E5BC    ret
*}
end;

//0041E5C0
function StrToInt64(const S:UnicodeString):Int64;
begin
{*
 0041E5C0    push        ebx
 0041E5C1    add         esp,0FFFFFFEC
 0041E5C4    mov         ebx,eax
 0041E5C6    lea         edx,[esp+8]
 0041E5CA    mov         eax,ebx
 0041E5CC    call        @ValInt64
 0041E5D1    mov         dword ptr [esp],eax
 0041E5D4    mov         dword ptr [esp+4],edx
 0041E5D8    cmp         dword ptr [esp+8],0
>0041E5DD    je          0041E5F8
 0041E5DF    mov         dword ptr [esp+0C],ebx
 0041E5E3    mov         byte ptr [esp+10],11
 0041E5E8    lea         edx,[esp+0C]
 0041E5EC    mov         eax,[007C45F8];^SResString0:TResStringRec
 0041E5F1    xor         ecx,ecx
 0041E5F3    call        ConvertErrorFmt
 0041E5F8    mov         eax,dword ptr [esp]
 0041E5FB    mov         edx,dword ptr [esp+4]
 0041E5FF    add         esp,14
 0041E602    pop         ebx
 0041E603    ret
*}
end;

//0041E604
{*function sub_0041E604(?:?; ?:?):Boolean;
begin
 0041E604    push        ebx
 0041E605    push        esi
 0041E606    push        ecx
 0041E607    mov         esi,edx
 0041E609    mov         ebx,eax
 0041E60B    mov         edx,esp
 0041E60D    mov         eax,ebx
 0041E60F    call        @ValInt64
 0041E614    mov         dword ptr [esi],eax
 0041E616    mov         dword ptr [esi+4],edx
 0041E619    cmp         dword ptr [esp],0
 0041E61D    sete        al
 0041E620    pop         edx
 0041E621    pop         esi
 0041E622    pop         ebx
 0041E623    ret
end;*}

//0041E624
procedure sub_0041E624;
begin
{*
 0041E624    mov         eax,[007C7D94];gvar_007C7D94:?
 0041E629    test        eax,eax
>0041E62B    je          0041E632
 0041E62D    sub         eax,4
 0041E630    mov         eax,dword ptr [eax]
 0041E632    test        eax,eax
>0041E634    jne         0041E65F
 0041E636    push        1
 0041E638    mov         eax,7C7D94;gvar_007C7D94:?
 0041E63D    mov         ecx,1
 0041E642    mov         edx,dword ptr ds:[419D24];:55
 0041E648    call        @DynArraySetLength
 0041E64D    add         esp,4
 0041E650    mov         eax,[007C7D94];gvar_007C7D94:?
 0041E655    mov         edx,41E6A8;'True'
 0041E65A    call        @UStrAsg
 0041E65F    mov         eax,[007C7D98];gvar_007C7D98:?
 0041E664    test        eax,eax
>0041E666    je          0041E66D
 0041E668    sub         eax,4
 0041E66B    mov         eax,dword ptr [eax]
 0041E66D    test        eax,eax
>0041E66F    jne         0041E69A
 0041E671    push        1
 0041E673    mov         eax,7C7D98;gvar_007C7D98:?
 0041E678    mov         ecx,1
 0041E67D    mov         edx,dword ptr ds:[419D54];:65
 0041E683    call        @DynArraySetLength
 0041E688    add         esp,4
 0041E68B    mov         eax,[007C7D98];gvar_007C7D98:?
 0041E690    mov         edx,41E6C0;'False'
 0041E695    call        @UStrAsg
 0041E69A    ret
*}
end;

//0041E6CC
{*function sub_0041E6CC(?:?; ?:?; ?:?):?;
begin
 0041E6CC    push        ebp
 0041E6CD    mov         ebp,esp
 0041E6CF    add         esp,0FFFFFFF0
 0041E6D2    push        ebx
 0041E6D3    push        esi
 0041E6D4    push        edi
 0041E6D5    mov         byte ptr [ebp-1],0
 0041E6D9    mov         esi,edx
 0041E6DB    test        esi,esi
>0041E6DD    jl          0041E710
 0041E6DF    inc         esi
 0041E6E0    mov         ebx,eax
 0041E6E2    mov         eax,dword ptr [ebp+8]
 0041E6E5    mov         edi,dword ptr [eax-4]
 0041E6E8    mov         eax,dword ptr [ebx]
 0041E6EA    mov         dword ptr [ebp-0C],eax
 0041E6ED    mov         edx,dword ptr [ebp-0C]
 0041E6F0    mov         dword ptr [ebp-10],edi
 0041E6F3    mov         eax,dword ptr [ebp-10]
 0041E6F6    call        AnsiCompareText
 0041E6FB    test        eax,eax
 0041E6FD    sete        al
 0041E700    test        al,al
>0041E702    je          0041E70A
 0041E704    mov         byte ptr [ebp-1],1
>0041E708    jmp         0041E710
 0041E70A    add         ebx,4
 0041E70D    dec         esi
>0041E70E    jne         0041E6E2
 0041E710    movzx       eax,byte ptr [ebp-1]
 0041E714    pop         edi
 0041E715    pop         esi
 0041E716    pop         ebx
 0041E717    mov         esp,ebp
 0041E719    pop         ebp
 0041E71A    ret
end;*}

//0041E71C
function TryStrToBool(const S:UnicodeString; var Value:Boolean):Boolean;
begin
{*
 0041E71C    push        ebp
 0041E71D    mov         ebp,esp
 0041E71F    add         esp,0FFFFFFF0
 0041E722    push        ebx
 0041E723    mov         ebx,edx
 0041E725    mov         dword ptr [ebp-4],eax
 0041E728    lea         edx,[ebp-10]
 0041E72B    mov         eax,dword ptr [ebp-4]
 0041E72E    call        00420BC4
 0041E733    mov         edx,eax
 0041E735    test        dl,dl
>0041E737    je          0041E749
 0041E739    fldz
 0041E73B    fld         tbyte ptr [ebp-10]
 0041E73E    fcompp
 0041E740    wait
 0041E741    fnstsw      al
 0041E743    sahf
 0041E744    setne       byte ptr [ebx]
>0041E747    jmp         0041E79C
 0041E749    call        0041E624
 0041E74E    mov         eax,[007C7D94];gvar_007C7D94:?
 0041E753    test        eax,eax
>0041E755    je          0041E75C
 0041E757    sub         eax,4
 0041E75A    mov         eax,dword ptr [eax]
 0041E75C    push        ebp
 0041E75D    mov         edx,eax
 0041E75F    dec         edx
 0041E760    mov         eax,[007C7D94];gvar_007C7D94:?
 0041E765    call        0041E6CC
 0041E76A    pop         ecx
 0041E76B    mov         edx,eax
 0041E76D    test        dl,dl
>0041E76F    je          0041E776
 0041E771    mov         byte ptr [ebx],1
>0041E774    jmp         0041E79C
 0041E776    mov         eax,[007C7D98];gvar_007C7D98:?
 0041E77B    test        eax,eax
>0041E77D    je          0041E784
 0041E77F    sub         eax,4
 0041E782    mov         eax,dword ptr [eax]
 0041E784    push        ebp
 0041E785    mov         edx,eax
 0041E787    dec         edx
 0041E788    mov         eax,[007C7D98];gvar_007C7D98:?
 0041E78D    call        0041E6CC
 0041E792    pop         ecx
 0041E793    mov         edx,eax
 0041E795    test        dl,dl
>0041E797    je          0041E79C
 0041E799    mov         byte ptr [ebx],0
 0041E79C    mov         eax,edx
 0041E79E    pop         ebx
 0041E79F    mov         esp,ebp
 0041E7A1    pop         ebp
 0041E7A2    ret
*}
end;

//0041E814
{*function sub_0041E814(?:string; ?:Word):?;
begin
 0041E814    push        ebx
 0041E815    push        esi
 0041E816    push        edi
 0041E817    mov         ebx,edx
 0041E819    mov         edi,eax
 0041E81B    or          eax,0FFFFFFFF
 0041E81E    mov         esi,3
 0041E823    and         esi,ebx
 0041E825    cmp         esi,2
>0041E828    ja          0041E868
 0041E82A    mov         edx,0F0
 0041E82F    and         edx,ebx
 0041E831    cmp         edx,40
>0041E834    ja          0041E868
 0041E836    push        0
 0041E838    push        80
 0041E83D    push        3
 0041E83F    push        0
 0041E841    mov         eax,0F0
 0041E846    and         eax,ebx
 0041E848    shr         eax,4
 0041E84B    mov         eax,dword ptr [eax*4+79F3F0]
 0041E852    push        eax
 0041E853    mov         eax,dword ptr [esi*4+79F3E4]
 0041E85A    push        eax
 0041E85B    mov         eax,edi
 0041E85D    call        @UStrToPWChar
 0041E862    push        eax
 0041E863    call        kernel32.CreateFileW
 0041E868    pop         edi
 0041E869    pop         esi
 0041E86A    pop         ebx
 0041E86B    ret
end;*}

//0041E86C
{*function sub_0041E86C(?:string; ?:?):?;
begin
 0041E86C    push        ebx
 0041E86D    push        esi
 0041E86E    push        edi
 0041E86F    mov         ebx,edx
 0041E871    mov         edi,eax
 0041E873    or          eax,0FFFFFFFF
 0041E876    mov         esi,0F0
 0041E87B    and         esi,ebx
 0041E87D    cmp         esi,40
>0041E880    ja          0041E8BA
 0041E882    push        0
 0041E884    push        80
 0041E889    mov         eax,4
 0041E88E    and         eax,ebx
 0041E890    shr         eax,2
 0041E893    mov         eax,dword ptr [eax*4+79F404]
 0041E89A    push        eax
 0041E89B    push        0
 0041E89D    shr         esi,4
 0041E8A0    mov         eax,dword ptr [esi*4+79F40C]
 0041E8A7    push        eax
 0041E8A8    push        0C0000000
 0041E8AD    mov         eax,edi
 0041E8AF    call        @UStrToPWChar
 0041E8B4    push        eax
 0041E8B5    call        kernel32.CreateFileW
 0041E8BA    pop         edi
 0041E8BB    pop         esi
 0041E8BC    pop         ebx
 0041E8BD    ret
end;*}

//0041E8C0
function FileRead(Handle:Windows.THandle; var Buffer:void ; Count:LongWord):Integer;
begin
{*
 0041E8C0    push        ebx
 0041E8C1    push        esi
 0041E8C2    push        edi
 0041E8C3    push        ecx
 0041E8C4    mov         edi,ecx
 0041E8C6    mov         esi,edx
 0041E8C8    mov         ebx,eax
 0041E8CA    push        0
 0041E8CC    lea         eax,[esp+4]
 0041E8D0    push        eax
 0041E8D1    push        edi
 0041E8D2    push        esi
 0041E8D3    push        ebx
 0041E8D4    call        kernel32.ReadFile
 0041E8D9    test        eax,eax
>0041E8DB    jne         0041E8E4
 0041E8DD    mov         dword ptr [esp],0FFFFFFFF
 0041E8E4    mov         eax,dword ptr [esp]
 0041E8E7    pop         edx
 0041E8E8    pop         edi
 0041E8E9    pop         esi
 0041E8EA    pop         ebx
 0041E8EB    ret
*}
end;

//0041E8EC
function FileWrite(Handle:Windows.THandle; const Buffer:void ; Count:LongWord):Integer;
begin
{*
 0041E8EC    push        ebx
 0041E8ED    push        esi
 0041E8EE    push        edi
 0041E8EF    push        ecx
 0041E8F0    mov         edi,ecx
 0041E8F2    mov         esi,edx
 0041E8F4    mov         ebx,eax
 0041E8F6    push        0
 0041E8F8    lea         eax,[esp+4]
 0041E8FC    push        eax
 0041E8FD    push        edi
 0041E8FE    push        esi
 0041E8FF    push        ebx
 0041E900    call        kernel32.WriteFile
 0041E905    test        eax,eax
>0041E907    jne         0041E910
 0041E909    mov         dword ptr [esp],0FFFFFFFF
 0041E910    mov         eax,dword ptr [esp]
 0041E913    pop         edx
 0041E914    pop         edi
 0041E915    pop         esi
 0041E916    pop         ebx
 0041E917    ret
*}
end;

//0041E918
function FileRead(Handle:Windows.THandle; var Buffer:TBytes; Offset:LongWord; Count:LongWord):Integer;
begin
{*
 0041E918    push        ebp
 0041E919    mov         ebp,esp
 0041E91B    push        ecx
 0041E91C    push        ebx
 0041E91D    push        esi
 0041E91E    push        edi
 0041E91F    mov         edi,ecx
 0041E921    mov         esi,edx
 0041E923    mov         ebx,eax
 0041E925    push        0
 0041E927    lea         eax,[ebp-4]
 0041E92A    push        eax
 0041E92B    mov         eax,dword ptr [ebp+8]
 0041E92E    push        eax
 0041E92F    mov         eax,dword ptr [esi]
 0041E931    add         eax,edi
 0041E933    push        eax
 0041E934    push        ebx
 0041E935    call        kernel32.ReadFile
 0041E93A    test        eax,eax
>0041E93C    jne         0041E945
 0041E93E    mov         dword ptr [ebp-4],0FFFFFFFF
 0041E945    mov         eax,dword ptr [ebp-4]
 0041E948    pop         edi
 0041E949    pop         esi
 0041E94A    pop         ebx
 0041E94B    pop         ecx
 0041E94C    pop         ebp
 0041E94D    ret         4
*}
end;

//0041E950
function FileWrite(Handle:Windows.THandle; const Buffer:TBytes; Offset:LongWord; Count:LongWord):Integer;
begin
{*
 0041E950    push        ebp
 0041E951    mov         ebp,esp
 0041E953    push        ecx
 0041E954    push        ebx
 0041E955    push        esi
 0041E956    push        edi
 0041E957    mov         edi,ecx
 0041E959    mov         esi,edx
 0041E95B    mov         ebx,eax
 0041E95D    push        0
 0041E95F    lea         eax,[ebp-4]
 0041E962    push        eax
 0041E963    mov         eax,dword ptr [ebp+8]
 0041E966    push        eax
 0041E967    lea         eax,[esi+edi]
 0041E96A    push        eax
 0041E96B    push        ebx
 0041E96C    call        kernel32.WriteFile
 0041E971    test        eax,eax
>0041E973    jne         0041E97C
 0041E975    mov         dword ptr [ebp-4],0FFFFFFFF
 0041E97C    mov         eax,dword ptr [ebp-4]
 0041E97F    pop         edi
 0041E980    pop         esi
 0041E981    pop         ebx
 0041E982    pop         ecx
 0041E983    pop         ebp
 0041E984    ret         4
*}
end;

//0041E988
function FileSeek(Handle:Windows.THandle; Origin:Integer; const Offset:Int64):Int64;
begin
{*
 0041E988    push        ebp
 0041E989    mov         ebp,esp
 0041E98B    add         esp,0FFFFFFF8
 0041E98E    push        ebx
 0041E98F    push        esi
 0041E990    mov         esi,edx
 0041E992    mov         ebx,eax
 0041E994    mov         eax,dword ptr [ebp+8]
 0041E997    mov         dword ptr [ebp-8],eax
 0041E99A    mov         eax,dword ptr [ebp+0C]
 0041E99D    mov         dword ptr [ebp-4],eax
 0041E9A0    push        esi
 0041E9A1    lea         eax,[ebp-4]
 0041E9A4    push        eax
 0041E9A5    mov         eax,dword ptr [ebp-8]
 0041E9A8    push        eax
 0041E9A9    push        ebx
 0041E9AA    call        kernel32.SetFilePointer
 0041E9AF    mov         dword ptr [ebp-8],eax
 0041E9B2    cmp         dword ptr [ebp-8],0FFFFFFFF
>0041E9B6    jne         0041E9C8
 0041E9B8    call        kernel32.GetLastError
 0041E9BD    test        eax,eax
>0041E9BF    je          0041E9C8
 0041E9C1    mov         dword ptr [ebp-4],0FFFFFFFF
 0041E9C8    mov         eax,dword ptr [ebp-8]
 0041E9CB    mov         edx,dword ptr [ebp-4]
 0041E9CE    pop         esi
 0041E9CF    pop         ebx
 0041E9D0    pop         ecx
 0041E9D1    pop         ecx
 0041E9D2    pop         ebp
 0041E9D3    ret         8
*}
end;

//0041E9D8
{*function sub_0041E9D8(?:?):?;
begin
 0041E9D8    push        ebp
 0041E9D9    mov         ebp,esp
 0041E9DB    add         esp,0FFFFFDB0
 0041E9E1    push        ebx
 0041E9E2    mov         ebx,eax
 0041E9E4    lea         eax,[ebp-250]
 0041E9EA    push        eax
 0041E9EB    mov         eax,ebx
 0041E9ED    call        @UStrToPWChar
 0041E9F2    push        eax
 0041E9F3    call        kernel32.FindFirstFileW
 0041E9F8    cmp         eax,0FFFFFFFF
>0041E9FB    je          0041EA0F
 0041E9FD    push        eax
 0041E9FE    call        kernel32.FindClose
 0041EA03    test        byte ptr [ebp-250],10
 0041EA0A    sete        al
>0041EA0D    jmp         0041EA11
 0041EA0F    xor         eax,eax
 0041EA11    pop         ebx
 0041EA12    mov         esp,ebp
 0041EA14    pop         ebp
 0041EA15    ret
end;*}

//0041EA18
{*function sub_0041EA18(?:UnicodeString; ?:?):?;
begin
 0041EA18    push        ebx
 0041EA19    push        esi
 0041EA1A    push        edi
 0041EA1B    mov         ebx,edx
 0041EA1D    mov         esi,eax
 0041EA1F    mov         eax,esi
 0041EA21    call        @UStrToPWChar
 0041EA26    mov         edi,eax
 0041EA28    push        edi
 0041EA29    call        kernel32.GetFileAttributesW
 0041EA2E    cmp         eax,0FFFFFFFF
>0041EA31    je          0041EA82
 0041EA33    test        ah,4
>0041EA36    je          0041EA7B
 0041EA38    test        bl,bl
>0041EA3A    jne         0041EA40
 0041EA3C    mov         al,1
>0041EA3E    jmp         0041EAA9
 0041EA40    test        al,10
>0041EA42    je          0041EA48
 0041EA44    xor         eax,eax
>0041EA46    jmp         0041EAA9
 0041EA48    push        0
 0041EA4A    push        0
 0041EA4C    push        3
 0041EA4E    push        0
 0041EA50    push        1
 0041EA52    push        80000000
 0041EA57    push        edi
 0041EA58    call        kernel32.CreateFileW
 0041EA5D    cmp         eax,0FFFFFFFF
>0041EA60    je          0041EA6C
 0041EA62    push        eax
 0041EA63    call        kernel32.CloseHandle
 0041EA68    mov         al,1
>0041EA6A    jmp         0041EAA9
 0041EA6C    call        kernel32.GetLastError
 0041EA71    mov         ebx,eax
 0041EA73    cmp         ebx,20
 0041EA76    sete        al
>0041EA79    jmp         0041EAA9
 0041EA7B    test        al,10
 0041EA7D    sete        al
>0041EA80    jmp         0041EAA9
 0041EA82    call        kernel32.GetLastError
 0041EA87    mov         ebx,eax
 0041EA89    cmp         ebx,2
>0041EA8C    je          0041EAA3
 0041EA8E    cmp         ebx,3
>0041EA91    je          0041EAA3
 0041EA93    cmp         ebx,7B
>0041EA96    je          0041EAA3
 0041EA98    mov         eax,esi
 0041EA9A    call        0041E9D8
 0041EA9F    test        al,al
>0041EAA1    jne         0041EAA7
 0041EAA3    xor         eax,eax
>0041EAA5    jmp         0041EAA9
 0041EAA7    mov         al,1
 0041EAA9    pop         edi
 0041EAAA    pop         esi
 0041EAAB    pop         ebx
 0041EAAC    ret
end;*}

//0041EAB0
{*function sub_0041EAB0(?:UnicodeString; ?:?):?;
begin
 0041EAB0    push        ebx
 0041EAB1    push        esi
 0041EAB2    push        edi
 0041EAB3    push        ebp
 0041EAB4    push        ecx
 0041EAB5    mov         byte ptr [esp],dl
 0041EAB8    mov         edi,eax
 0041EABA    xor         ebx,ebx
 0041EABC    mov         eax,edi
 0041EABE    call        @UStrToPWChar
 0041EAC3    mov         ebp,eax
 0041EAC5    push        ebp
 0041EAC6    call        kernel32.GetFileAttributesW
 0041EACB    mov         esi,eax
 0041EACD    cmp         esi,0FFFFFFFF
>0041EAD0    je          0041EB57
 0041EAD6    test        esi,400
>0041EADC    jne         0041EAEC
 0041EADE    test        esi,10
 0041EAE4    setne       bl
>0041EAE7    jmp         0041EB87
 0041EAEC    cmp         byte ptr [esp],0
>0041EAF0    je          0041EB20
 0041EAF2    push        0
 0041EAF4    push        2000000
 0041EAF9    push        3
 0041EAFB    push        0
 0041EAFD    push        1
 0041EAFF    push        80000000
 0041EB04    push        ebp
 0041EB05    call        kernel32.CreateFileW
 0041EB0A    cmp         eax,0FFFFFFFF
>0041EB0D    je          0041EB87
 0041EB0F    push        eax
 0041EB10    call        kernel32.CloseHandle
 0041EB15    test        esi,10
 0041EB1B    setne       bl
>0041EB1E    jmp         0041EB87
 0041EB20    test        esi,10
>0041EB26    je          0041EB2C
 0041EB28    mov         bl,1
>0041EB2A    jmp         0041EB87
 0041EB2C    push        0
 0041EB2E    push        2000000
 0041EB33    push        3
 0041EB35    push        0
 0041EB37    push        1
 0041EB39    push        80000000
 0041EB3E    push        ebp
 0041EB3F    call        kernel32.CreateFileW
 0041EB44    cmp         eax,0FFFFFFFF
>0041EB47    je          0041EB53
 0041EB49    push        eax
 0041EB4A    call        kernel32.CloseHandle
 0041EB4F    xor         ebx,ebx
>0041EB51    jmp         0041EB87
 0041EB53    mov         bl,1
>0041EB55    jmp         0041EB87
 0041EB57    call        kernel32.GetLastError
 0041EB5C    cmp         eax,2
>0041EB5F    je          0041EB81
 0041EB61    cmp         eax,3
>0041EB64    je          0041EB81
 0041EB66    cmp         eax,0A1
>0041EB6B    je          0041EB81
 0041EB6D    cmp         eax,7B
>0041EB70    je          0041EB81
 0041EB72    cmp         eax,35
>0041EB75    je          0041EB81
 0041EB77    cmp         eax,15
>0041EB7A    je          0041EB81
 0041EB7C    cmp         eax,43
>0041EB7F    jne         0041EB85
 0041EB81    xor         ebx,ebx
>0041EB83    jmp         0041EB87
 0041EB85    mov         bl,1
 0041EB87    mov         eax,ebx
 0041EB89    pop         edx
 0041EB8A    pop         ebp
 0041EB8B    pop         edi
 0041EB8C    pop         esi
 0041EB8D    pop         ebx
 0041EB8E    ret
end;*}

//0041EB90
{*function sub_0041EB90(?:UnicodeString):?;
begin
 0041EB90    push        ebp
 0041EB91    mov         ebp,esp
 0041EB93    xor         ecx,ecx
 0041EB95    push        ecx
 0041EB96    push        ecx
 0041EB97    push        ecx
 0041EB98    push        ecx
 0041EB99    push        ebx
 0041EB9A    mov         dword ptr [ebp-4],eax
 0041EB9D    mov         eax,dword ptr [ebp-4]
 0041EBA0    call        @UStrAddRef
 0041EBA5    xor         eax,eax
 0041EBA7    push        ebp
 0041EBA8    push        41EC83
 0041EBAD    push        dword ptr fs:[eax]
 0041EBB0    mov         dword ptr fs:[eax],esp
 0041EBB3    mov         bl,1
 0041EBB5    cmp         dword ptr [ebp-4],0
>0041EBB9    jne         0041EBDD
 0041EBBB    mov         ecx,dword ptr ds:[7C4E58];^SResString104:TResStringRec
 0041EBC1    mov         dl,1
 0041EBC3    mov         eax,[004183AC];EInOutError
 0041EBC8    call        Exception.CreateRes;EInOutError.Create
 0041EBCD    mov         edx,eax
 0041EBCF    mov         dword ptr [edx+18],3;EInOutError...ErrorCode:Integer
 0041EBD6    mov         eax,edx
 0041EBD8    call        @RaiseExcept
 0041EBDD    lea         edx,[ebp-8]
 0041EBE0    mov         eax,dword ptr [ebp-4]
 0041EBE3    call        00425210
 0041EBE8    mov         edx,dword ptr [ebp-8]
 0041EBEB    lea         eax,[ebp-4]
 0041EBEE    call        @UStrLAsg
 0041EBF3    mov         dl,1
 0041EBF5    mov         eax,dword ptr [ebp-4]
 0041EBF8    call        0041EAB0
 0041EBFD    test        al,al
>0041EBFF    jne         0041EC68
 0041EC01    mov         eax,dword ptr [ebp-4]
 0041EC04    test        eax,eax
>0041EC06    je          0041EC0D
 0041EC08    sub         eax,4
 0041EC0B    mov         eax,dword ptr [eax]
 0041EC0D    cmp         eax,3
>0041EC10    jge         0041EC16
 0041EC12    mov         al,1
>0041EC14    jmp         0041EC2F
 0041EC16    lea         edx,[ebp-0C]
 0041EC19    mov         eax,dword ptr [ebp-4]
 0041EC1C    call        0041EFA4
 0041EC21    mov         eax,dword ptr [ebp-0C]
 0041EC24    mov         edx,dword ptr [ebp-4]
 0041EC27    call        @UStrEqual
 0041EC2C    sete        al
 0041EC2F    test        al,al
>0041EC31    je          0041EC3F
 0041EC33    mov         eax,dword ptr [ebp-4]
 0041EC36    call        0041F170
 0041EC3B    mov         ebx,eax
>0041EC3D    jmp         0041EC68
 0041EC3F    lea         edx,[ebp-10]
 0041EC42    mov         eax,dword ptr [ebp-4]
 0041EC45    call        0041EFA4
 0041EC4A    mov         eax,dword ptr [ebp-10]
 0041EC4D    call        0041EB90
 0041EC52    test        al,al
>0041EC54    je          0041EC62
 0041EC56    mov         eax,dword ptr [ebp-4]
 0041EC59    call        0041F170
 0041EC5E    test        al,al
>0041EC60    jne         0041EC66
 0041EC62    xor         ebx,ebx
>0041EC64    jmp         0041EC68
 0041EC66    mov         bl,1
 0041EC68    xor         eax,eax
 0041EC6A    pop         edx
 0041EC6B    pop         ecx
 0041EC6C    pop         ecx
 0041EC6D    mov         dword ptr fs:[eax],edx
 0041EC70    push        41EC8A
 0041EC75    lea         eax,[ebp-10]
 0041EC78    mov         edx,4
 0041EC7D    call        @UStrArrayClr
 0041EC82    ret
>0041EC83    jmp         @HandleFinally
>0041EC88    jmp         0041EC75
 0041EC8A    mov         eax,ebx
 0041EC8C    pop         ebx
 0041EC8D    mov         esp,ebp
 0041EC8F    pop         ebp
 0041EC90    ret
end;*}

//0041EC94
{*function sub_0041EC94(?:?):?;
begin
 0041EC94    push        ebx
 0041EC95    push        esi
 0041EC96    add         esp,0FFFFFFEC
 0041EC99    mov         ebx,eax
>0041EC9B    jmp         0041ECB7
 0041EC9D    lea         eax,[ebx+20]
 0041ECA0    push        eax
 0041ECA1    mov         eax,dword ptr [ebx+1C]
 0041ECA4    push        eax
 0041ECA5    call        kernel32.FindNextFileW
 0041ECAA    test        eax,eax
>0041ECAC    jne         0041ECB7
 0041ECAE    call        kernel32.GetLastError
 0041ECB3    mov         esi,eax
>0041ECB5    jmp         0041ED28
 0041ECB7    mov         eax,dword ptr [ebx+20]
 0041ECBA    and         eax,dword ptr [ebx+18]
>0041ECBD    jne         0041EC9D
 0041ECBF    lea         eax,[ebx+34]
 0041ECC2    mov         dword ptr [esp+8],eax
 0041ECC6    push        esp
 0041ECC7    mov         eax,dword ptr [esp+0C]
 0041ECCB    push        eax
 0041ECCC    call        kernel32.FileTimeToLocalFileTime
 0041ECD1    lea         eax,[ebx+2]
 0041ECD4    mov         dword ptr [esp+0C],eax
 0041ECD8    mov         dword ptr [esp+10],ebx
 0041ECDC    mov         eax,dword ptr [esp+10]
 0041ECE0    push        eax
 0041ECE1    mov         eax,dword ptr [esp+10]
 0041ECE5    push        eax
 0041ECE6    lea         eax,[esp+8]
 0041ECEA    push        eax
 0041ECEB    call        kernel32.FileTimeToDosDateTime
 0041ECF0    mov         eax,dword ptr [ebx+40]
 0041ECF3    xor         edx,edx
 0041ECF5    push        edx
 0041ECF6    push        eax
 0041ECF7    mov         eax,dword ptr [ebx+3C]
 0041ECFA    xor         edx,edx
 0041ECFC    mov         edx,eax
 0041ECFE    xor         eax,eax
 0041ED00    or          eax,dword ptr [esp]
 0041ED03    or          edx,dword ptr [esp+4]
 0041ED07    add         esp,8
 0041ED0A    mov         dword ptr [ebx+8],eax
 0041ED0D    mov         dword ptr [ebx+0C],edx
 0041ED10    mov         eax,dword ptr [ebx+20]
 0041ED13    mov         dword ptr [ebx+10],eax
 0041ED16    lea         eax,[ebx+14]
 0041ED19    lea         edx,[ebx+4C]
 0041ED1C    mov         ecx,104
 0041ED21    call        @UStrFromWArray
 0041ED26    xor         esi,esi
 0041ED28    mov         eax,esi
 0041ED2A    add         esp,14
 0041ED2D    pop         esi
 0041ED2E    pop         ebx
 0041ED2F    ret
end;*}

//0041ED30
{*function sub_0041ED30(?:UnicodeString; ?:?; ?:Byte):?;
begin
 0041ED30    push        ebx
 0041ED31    push        esi
 0041ED32    push        edi
 0041ED33    mov         ebx,ecx
 0041ED35    mov         edi,eax
 0041ED37    not         edx
 0041ED39    and         edx,16
 0041ED3C    mov         dword ptr [ebx+18],edx
 0041ED3F    lea         eax,[ebx+20]
 0041ED42    push        eax
 0041ED43    mov         eax,edi
 0041ED45    call        @UStrToPWChar
 0041ED4A    push        eax
 0041ED4B    call        kernel32.FindFirstFileW
 0041ED50    mov         esi,eax
 0041ED52    mov         dword ptr [ebx+1C],esi
 0041ED55    cmp         esi,0FFFFFFFF
>0041ED58    je          0041ED70
 0041ED5A    mov         eax,ebx
 0041ED5C    call        0041EC94
 0041ED61    mov         esi,eax
 0041ED63    test        esi,esi
>0041ED65    je          0041ED77
 0041ED67    mov         eax,ebx
 0041ED69    call        0041EDA4
>0041ED6E    jmp         0041ED77
 0041ED70    call        kernel32.GetLastError
 0041ED75    mov         esi,eax
 0041ED77    mov         eax,esi
 0041ED79    pop         edi
 0041ED7A    pop         esi
 0041ED7B    pop         ebx
 0041ED7C    ret
end;*}

//0041ED80
{*function sub_0041ED80(?:Byte):?;
begin
 0041ED80    push        ebx
 0041ED81    mov         ebx,eax
 0041ED83    lea         eax,[ebx+20]
 0041ED86    push        eax
 0041ED87    mov         eax,dword ptr [ebx+1C]
 0041ED8A    push        eax
 0041ED8B    call        kernel32.FindNextFileW
 0041ED90    test        eax,eax
>0041ED92    je          0041ED9D
 0041ED94    mov         eax,ebx
 0041ED96    call        0041EC94
 0041ED9B    pop         ebx
 0041ED9C    ret
 0041ED9D    call        kernel32.GetLastError
 0041EDA2    pop         ebx
 0041EDA3    ret
end;*}

//0041EDA4
procedure sub_0041EDA4(?:Byte);
begin
{*
 0041EDA4    push        ebx
 0041EDA5    mov         ebx,eax
 0041EDA7    mov         eax,dword ptr [ebx+1C]
 0041EDAA    cmp         eax,0FFFFFFFF
>0041EDAD    je          0041EDBC
 0041EDAF    push        eax
 0041EDB0    call        kernel32.FindClose
 0041EDB5    mov         dword ptr [ebx+1C],0FFFFFFFF
 0041EDBC    pop         ebx
 0041EDBD    ret
*}
end;

//0041EDC0
{*function sub_0041EDC0(?:?):?;
begin
 0041EDC0    push        ebx
 0041EDC1    push        esi
 0041EDC2    push        edi
 0041EDC3    push        ebp
 0041EDC4    mov         esi,eax
 0041EDC6    mov         eax,esi
 0041EDC8    call        @UStrToPWChar
 0041EDCD    mov         ebp,eax
 0041EDCF    push        ebp
 0041EDD0    call        kernel32.DeleteFileW
 0041EDD5    cmp         eax,1
 0041EDD8    sbb         ebx,ebx
 0041EDDA    inc         ebx
 0041EDDB    test        bl,bl
>0041EDDD    jne         0041EE15
 0041EDDF    call        kernel32.GetLastError
 0041EDE4    mov         edi,eax
 0041EDE6    push        ebp
 0041EDE7    call        kernel32.GetFileAttributesW
 0041EDEC    cmp         eax,0FFFFFFFF
>0041EDEF    je          0041EE0F
 0041EDF1    test        ah,4
>0041EDF4    je          0041EE0F
 0041EDF6    test        al,10
>0041EDF8    je          0041EE0F
 0041EDFA    mov         eax,esi
 0041EDFC    call        @UStrToPWChar
 0041EE01    push        eax
 0041EE02    call        kernel32.RemoveDirectoryW
 0041EE07    cmp         eax,1
 0041EE0A    sbb         ebx,ebx
 0041EE0C    inc         ebx
>0041EE0D    jmp         0041EE15
 0041EE0F    push        edi
 0041EE10    call        kernel32.SetLastError
 0041EE15    mov         eax,ebx
 0041EE17    pop         ebp
 0041EE18    pop         edi
 0041EE19    pop         esi
 0041EE1A    pop         ebx
 0041EE1B    ret
end;*}

//0041EE1C
function AnsiLastChar(const S:UnicodeString):PWideChar;
begin
{*
 0041EE1C    push        ebx
 0041EE1D    mov         ebx,eax
 0041EE1F    test        ebx,ebx
>0041EE21    jne         0041EE27
 0041EE23    xor         eax,eax
 0041EE25    pop         ebx
 0041EE26    ret
 0041EE27    mov         eax,ebx
 0041EE29    test        eax,eax
>0041EE2B    je          0041EE32
 0041EE2D    sub         eax,4
 0041EE30    mov         eax,dword ptr [eax]
 0041EE32    mov         edx,eax
 0041EE34    lea         eax,[ebx+edx*2-2]
 0041EE38    dec         edx
>0041EE39    jle         0041EE5C
 0041EE3B    cmp         word ptr [eax],0DC00
>0041EE40    jb          0041EE5C
 0041EE42    cmp         word ptr [eax],0DFFF
>0041EE47    ja          0041EE5C
 0041EE49    cmp         word ptr [eax-2],0D800
>0041EE4F    jb          0041EE5C
 0041EE51    cmp         word ptr [eax-2],0DBFF
>0041EE57    ja          0041EE5C
 0041EE59    sub         eax,2
 0041EE5C    pop         ebx
 0041EE5D    ret
*}
end;

//0041EE60
{*function sub_0041EE60(?:UnicodeString; ?:UnicodeString):?;
begin
 0041EE60    push        ebx
 0041EE61    push        esi
 0041EE62    push        edi
 0041EE63    push        ecx
 0041EE64    mov         dword ptr [esp],edx
 0041EE67    mov         esi,eax
 0041EE69    mov         eax,esp
 0041EE6B    call        0042650C
 0041EE70    mov         ebx,eax
 0041EE72    mov         eax,esi
 0041EE74    call        @UStrToPWChar
 0041EE79    mov         edi,eax
 0041EE7B    test        ebx,ebx
>0041EE7D    jle         0041EEAB
 0041EE7F    mov         esi,ebx
 0041EE81    dec         esi
 0041EE82    mov         edx,esi
 0041EE84    mov         eax,esp
 0041EE86    call        TStringHelper.GetChars
 0041EE8B    test        ax,ax
>0041EE8E    je          0041EEA6
 0041EE90    mov         edx,esi
 0041EE92    mov         eax,esp
 0041EE94    call        TStringHelper.GetChars
 0041EE99    mov         edx,eax
 0041EE9B    mov         eax,edi
 0041EE9D    call        0041F38C
 0041EEA2    test        eax,eax
>0041EEA4    jne         0041EEAB
 0041EEA6    dec         ebx
 0041EEA7    test        ebx,ebx
>0041EEA9    jg          0041EE7F
 0041EEAB    mov         eax,ebx
 0041EEAD    pop         edx
 0041EEAE    pop         edi
 0041EEAF    pop         esi
 0041EEB0    pop         ebx
 0041EEB1    ret
end;*}

//0041EEB4
{*function sub_0041EEB4(?:UnicodeString; ?:UnicodeString; ?:?):?;
begin
 0041EEB4    push        ebx
 0041EEB5    push        esi
 0041EEB6    push        edi
 0041EEB7    push        ebp
 0041EEB8    add         esp,0FFFFFFF8
 0041EEBB    mov         esi,ecx
 0041EEBD    mov         dword ptr [esp],edx
 0041EEC0    mov         ebp,eax
 0041EEC2    xor         eax,eax
 0041EEC4    mov         dword ptr [esp+4],eax
 0041EEC8    mov         eax,esp
 0041EECA    call        0042650C
 0041EECF    mov         edi,eax
 0041EED1    xor         ebx,ebx
>0041EED3    jmp         0041EEEE
 0041EED5    mov         ecx,esi
 0041EED7    mov         edx,dword ptr [esp]
 0041EEDA    mov         eax,ebp
 0041EEDC    call        004251C0
 0041EEE1    test        al,al
>0041EEE3    je          0041EEED
 0041EEE5    mov         dword ptr [esp+4],esi
 0041EEE9    mov         bl,1
>0041EEEB    jmp         0041EEEE
 0041EEED    inc         esi
 0041EEEE    test        bl,bl
>0041EEF0    jne         0041EEF6
 0041EEF2    cmp         edi,esi
>0041EEF4    jge         0041EED5
 0041EEF6    mov         eax,dword ptr [esp+4]
 0041EEFA    pop         ecx
 0041EEFB    pop         edx
 0041EEFC    pop         ebp
 0041EEFD    pop         edi
 0041EEFE    pop         esi
 0041EEFF    pop         ebx
 0041EF00    ret
end;*}

//0041EF04
{*procedure sub_0041EF04(?:UnicodeString; ?:UString; ?:?);
begin
 0041EF04    push        ebp
 0041EF05    mov         ebp,esp
 0041EF07    add         esp,0FFFFFFF8
 0041EF0A    push        ebx
 0041EF0B    push        esi
 0041EF0C    push        edi
 0041EF0D    xor         ebx,ebx
 0041EF0F    mov         dword ptr [ebp-8],ebx
 0041EF12    mov         edi,ecx
 0041EF14    mov         esi,edx
 0041EF16    mov         dword ptr [ebp-4],eax
 0041EF19    xor         eax,eax
 0041EF1B    push        ebp
 0041EF1C    push        41EF81
 0041EF21    push        dword ptr fs:[eax]
 0041EF24    mov         dword ptr fs:[eax],esp
 0041EF27    lea         eax,[ebp-4]
 0041EF2A    mov         edx,41EF9C;'.\:'
 0041EF2F    call        TStringHelper.LastDelimiter
 0041EF34    mov         ebx,eax
 0041EF36    test        ebx,ebx
>0041EF38    jl          0041EF4A
 0041EF3A    lea         eax,[ebp-4]
 0041EF3D    mov         edx,ebx
 0041EF3F    call        TStringHelper.GetChars
 0041EF44    cmp         ax,2E
>0041EF48    je          0041EF4F
 0041EF4A    mov         ebx,7FFFFFFF
 0041EF4F    lea         eax,[ebp-8]
 0041EF52    push        eax
 0041EF53    lea         eax,[ebp-4]
 0041EF56    mov         ecx,ebx
 0041EF58    xor         edx,edx
 0041EF5A    call        00426870
 0041EF5F    mov         edx,dword ptr [ebp-8]
 0041EF62    mov         eax,edi
 0041EF64    mov         ecx,esi
 0041EF66    call        @UStrCat3
 0041EF6B    xor         eax,eax
 0041EF6D    pop         edx
 0041EF6E    pop         ecx
 0041EF6F    pop         ecx
 0041EF70    mov         dword ptr fs:[eax],edx
 0041EF73    push        41EF88
 0041EF78    lea         eax,[ebp-8]
 0041EF7B    call        @UStrClr
 0041EF80    ret
>0041EF81    jmp         @HandleFinally
>0041EF86    jmp         0041EF78
 0041EF88    pop         edi
 0041EF89    pop         esi
 0041EF8A    pop         ebx
 0041EF8B    pop         ecx
 0041EF8C    pop         ecx
 0041EF8D    pop         ebp
 0041EF8E    ret
end;*}

//0041EFA4
{*procedure sub_0041EFA4(?:UnicodeString; ?:?);
begin
 0041EFA4    push        ebx
 0041EFA5    push        esi
 0041EFA6    push        ecx
 0041EFA7    mov         esi,edx
 0041EFA9    mov         dword ptr [esp],eax
 0041EFAC    mov         eax,esp
 0041EFAE    mov         edx,41EFDC;'\:'
 0041EFB3    call        TStringHelper.LastDelimiter
 0041EFB8    mov         ebx,eax
 0041EFBA    push        esi
 0041EFBB    lea         ecx,[ebx+1]
 0041EFBE    lea         eax,[esp+4]
 0041EFC2    xor         edx,edx
 0041EFC4    call        00426870
 0041EFC9    pop         edx
 0041EFCA    pop         esi
 0041EFCB    pop         ebx
 0041EFCC    ret
end;*}

//0041F020
function ExtractFileExt(const FileName:UnicodeString):UnicodeString;
begin
{*
 0041F020    push        ebx
 0041F021    push        esi
 0041F022    push        ecx
 0041F023    mov         esi,edx
 0041F025    mov         dword ptr [esp],eax
 0041F028    mov         eax,esp
 0041F02A    mov         edx,41F070;'.\:'
 0041F02F    call        TStringHelper.LastDelimiter
 0041F034    mov         ebx,eax
 0041F036    test        ebx,ebx
>0041F038    jl          0041F056
 0041F03A    mov         eax,esp
 0041F03C    mov         edx,ebx
 0041F03E    call        TStringHelper.GetChars
 0041F043    cmp         ax,2E
>0041F047    jne         0041F056
 0041F049    mov         ecx,esi
 0041F04B    mov         eax,esp
 0041F04D    mov         edx,ebx
 0041F04F    call        TStringHelper.Substring
>0041F054    jmp         0041F05D
 0041F056    mov         eax,esi
 0041F058    call        @UStrClr
 0041F05D    pop         edx
 0041F05E    pop         esi
 0041F05F    pop         ebx
 0041F060    ret
*}
end;

//0041F078
{*procedure sub_0041F078(?:string; ?:?);
begin
 0041F078    push        ebx
 0041F079    push        esi
 0041F07A    push        edi
 0041F07B    push        ebp
 0041F07C    add         esp,0FFFFFDF4
 0041F082    mov         esi,edx
 0041F084    mov         edi,eax
 0041F086    push        esp
 0041F087    lea         eax,[esp+8]
 0041F08B    push        eax
 0041F08C    push        104
 0041F091    mov         eax,edi
 0041F093    call        @UStrToPWChar
 0041F098    mov         ebp,eax
 0041F09A    push        ebp
 0041F09B    call        kernel32.GetFullPathNameW
 0041F0A0    mov         ebx,eax
 0041F0A2    cmp         ebx,104
>0041F0A8    jg          0041F0B9
 0041F0AA    lea         edx,[esp+4]
 0041F0AE    mov         eax,esi
 0041F0B0    mov         ecx,ebx
 0041F0B2    call        @UStrFromPWCharLen
>0041F0B7    jmp         0041F0F0
 0041F0B9    test        ebx,ebx
>0041F0BB    jle         0041F0F0
 0041F0BD    mov         eax,esi
 0041F0BF    mov         edx,ebx
 0041F0C1    call        @UStrSetLength
 0041F0C6    push        esp
 0041F0C7    mov         eax,dword ptr [esi]
 0041F0C9    call        @UStrToPWChar
 0041F0CE    push        eax
 0041F0CF    push        ebx
 0041F0D0    push        ebp
 0041F0D1    call        kernel32.GetFullPathNameW
 0041F0D6    mov         ebx,eax
 0041F0D8    mov         eax,dword ptr [esi]
 0041F0DA    test        eax,eax
>0041F0DC    je          0041F0E3
 0041F0DE    sub         eax,4
 0041F0E1    mov         eax,dword ptr [eax]
 0041F0E3    cmp         eax,ebx
>0041F0E5    jle         0041F0F0
 0041F0E7    mov         eax,esi
 0041F0E9    mov         edx,ebx
 0041F0EB    call        @UStrSetLength
 0041F0F0    add         esp,20C
 0041F0F6    pop         ebp
 0041F0F7    pop         edi
 0041F0F8    pop         esi
 0041F0F9    pop         ebx
 0041F0FA    ret
end;*}

//0041F0FC
{*function sub_0041F0FC(?:?; ?:?; ?:?):?;
begin
 0041F0FC    push        ebp
 0041F0FD    mov         ebp,esp
 0041F0FF    add         esp,0FFFFFFE8
 0041F102    push        ebx
 0041F103    mov         eax,dword ptr [ebp+8]
 0041F106    test        eax,eax
>0041F108    jne         0041F10C
 0041F10A    xor         eax,eax
 0041F10C    lea         edx,[ebp-10]
 0041F10F    push        edx
 0041F110    lea         edx,[ebp-0C]
 0041F113    push        edx
 0041F114    lea         edx,[ebp-8]
 0041F117    push        edx
 0041F118    lea         edx,[ebp-4]
 0041F11B    push        edx
 0041F11C    push        eax
 0041F11D    call        kernel32.GetDiskFreeSpaceW
 0041F122    mov         ebx,eax
 0041F124    mov         eax,dword ptr [ebp-4]
 0041F127    imul        dword ptr [ebp-8]
 0041F12A    xor         edx,edx
 0041F12C    mov         dword ptr [ebp-18],eax
 0041F12F    mov         dword ptr [ebp-14],edx
 0041F132    mov         eax,dword ptr [ebp-0C]
 0041F135    xor         edx,edx
 0041F137    push        edx
 0041F138    push        eax
 0041F139    mov         eax,dword ptr [ebp-18]
 0041F13C    mov         edx,dword ptr [ebp-14]
 0041F13F    call        @_llmul
 0041F144    mov         ecx,dword ptr [ebp+0C]
 0041F147    mov         dword ptr [ecx],eax
 0041F149    mov         dword ptr [ecx+4],edx
 0041F14C    mov         eax,dword ptr [ebp-10]
 0041F14F    xor         edx,edx
 0041F151    push        edx
 0041F152    push        eax
 0041F153    mov         eax,dword ptr [ebp-18]
 0041F156    mov         edx,dword ptr [ebp-14]
 0041F159    call        @_llmul
 0041F15E    mov         ecx,dword ptr [ebp+10]
 0041F161    mov         dword ptr [ecx],eax
 0041F163    mov         dword ptr [ecx+4],edx
 0041F166    mov         eax,ebx
 0041F168    pop         ebx
 0041F169    mov         esp,ebp
 0041F16B    pop         ebp
 0041F16C    ret         10
end;*}

//0041F170
{*function sub_0041F170(?:UnicodeString):?;
begin
 0041F170    push        ebx
 0041F171    mov         ebx,eax
 0041F173    push        0
 0041F175    mov         eax,ebx
 0041F177    call        @UStrToPWChar
 0041F17C    push        eax
 0041F17D    call        kernel32.CreateDirectoryW
 0041F182    cmp         eax,1
 0041F185    sbb         eax,eax
 0041F187    inc         eax
 0041F188    pop         ebx
 0041F189    ret
end;*}

//0041F18C
function StrEnd(const Str:PWideChar):PWideChar;
begin
{*
 0041F18C    cmp         word ptr [eax],0
>0041F190    je          0041F1A4
 0041F192    add         eax,2
 0041F195    mov         cx,word ptr [eax]
 0041F198    add         eax,2
 0041F19B    test        cx,cx
>0041F19E    jne         0041F195
 0041F1A0    sub         eax,2
 0041F1A3    ret
 0041F1A4    ret
*}
end;

//0041F1A8
function StrMove(Dest:PWideChar; const Source:PWideChar; Count:Cardinal):PWideChar;
begin
{*
 0041F1A8    push        esi
 0041F1A9    mov         esi,eax
 0041F1AB    add         ecx,ecx
 0041F1AD    xchg        eax,edx
 0041F1AE    call        Move
 0041F1B3    mov         eax,esi
 0041F1B5    pop         esi
 0041F1B6    ret
*}
end;

//0041F1B8
function StrCopy(Dest:PWideChar; const Source:PWideChar):PWideChar;
begin
{*
 0041F1B8    sub         edx,eax
 0041F1BA    test        eax,3
 0041F1BF    push        eax
>0041F1C0    je          0041F1D0
 0041F1C2    movzx       ecx,word ptr [edx+eax]
 0041F1C6    mov         word ptr [eax],cx
 0041F1C9    test        ecx,ecx
>0041F1CB    je          0041F1E8
 0041F1CD    add         eax,2
 0041F1D0    movzx       ecx,word ptr [edx+eax]
 0041F1D4    test        ecx,ecx
>0041F1D6    je          0041F1EA
 0041F1D8    mov         ecx,dword ptr [edx+eax]
 0041F1DB    mov         dword ptr [eax],ecx
 0041F1DD    add         eax,4
 0041F1E0    cmp         ecx,0FFFF
>0041F1E6    ja          0041F1D0
 0041F1E8    pop         eax
 0041F1E9    ret
 0041F1EA    mov         word ptr [eax],cx
 0041F1ED    pop         eax
 0041F1EE    ret
*}
end;

//0041F1F0
function StrECopy(Dest:PWideChar; const Source:PWideChar):PWideChar;
begin
{*
 0041F1F0    push        ebx
 0041F1F1    push        esi
 0041F1F2    push        edi
 0041F1F3    mov         edi,edx
 0041F1F5    mov         esi,eax
 0041F1F7    mov         eax,edi
 0041F1F9    call        @PWCharLen
 0041F1FE    mov         ebx,eax
 0041F200    lea         eax,[ebx+1]
 0041F203    mov         ecx,eax
 0041F205    add         ecx,ecx
 0041F207    mov         edx,esi
 0041F209    mov         eax,edi
 0041F20B    call        Move
 0041F210    mov         eax,ebx
 0041F212    add         eax,eax
 0041F214    add         eax,esi
 0041F216    pop         edi
 0041F217    pop         esi
 0041F218    pop         ebx
 0041F219    ret
*}
end;

//0041F21C
function StrLCopy(Dest:PWideChar; const Source:PWideChar; MaxLen:Cardinal):PWideChar;
begin
{*
 0041F21C    push        ebx
 0041F21D    push        esi
 0041F21E    push        edi
 0041F21F    push        ebp
 0041F220    push        ecx
 0041F221    mov         ebp,ecx
 0041F223    mov         edi,edx
 0041F225    mov         esi,eax
 0041F227    mov         dword ptr [esp],esi
 0041F22A    mov         eax,edi
 0041F22C    call        @PWCharLen
 0041F231    mov         ebx,eax
 0041F233    cmp         ebp,ebx
>0041F235    jae         0041F239
 0041F237    mov         ebx,ebp
 0041F239    mov         ecx,ebx
 0041F23B    add         ecx,ecx
 0041F23D    mov         edx,esi
 0041F23F    mov         eax,edi
 0041F241    call        Move
 0041F246    mov         word ptr [esi+ebx*2],0
 0041F24C    mov         eax,dword ptr [esp]
 0041F24F    pop         edx
 0041F250    pop         ebp
 0041F251    pop         edi
 0041F252    pop         esi
 0041F253    pop         ebx
 0041F254    ret
*}
end;

//0041F258
{*procedure sub_0041F258(?:?; ?:?);
begin
 0041F258    push        ebx
 0041F259    push        esi
 0041F25A    push        edi
 0041F25B    mov         esi,edx
 0041F25D    mov         edi,eax
 0041F25F    mov         ebx,esi
 0041F261    test        ebx,ebx
>0041F263    je          0041F26A
 0041F265    sub         ebx,4
 0041F268    mov         ebx,dword ptr [ebx]
 0041F26A    mov         eax,esi
 0041F26C    call        @UStrToPWChar
 0041F271    mov         edx,eax
 0041F273    mov         ecx,ebx
 0041F275    mov         eax,edi
 0041F277    call        StrLCopy
 0041F27C    pop         edi
 0041F27D    pop         esi
 0041F27E    pop         ebx
 0041F27F    ret
end;*}

//0041F280
function StrPLCopy(Dest:PWideChar; const Source:UnicodeString; MaxLen:Cardinal):PWideChar;
begin
{*
 0041F280    push        ebx
 0041F281    push        esi
 0041F282    push        edi
 0041F283    mov         edi,ecx
 0041F285    mov         esi,edx
 0041F287    mov         ebx,eax
 0041F289    mov         eax,esi
 0041F28B    call        @UStrToPWChar
 0041F290    mov         edx,eax
 0041F292    mov         ecx,edi
 0041F294    mov         eax,ebx
 0041F296    call        StrLCopy
 0041F29B    pop         edi
 0041F29C    pop         esi
 0041F29D    pop         ebx
 0041F29E    ret
*}
end;

//0041F2A0
{*function sub_0041F2A0(?:PWideChar; ?:?):?;
begin
 0041F2A0    push        esi
 0041F2A1    push        edi
 0041F2A2    movzx       esi,word ptr [edx]
 0041F2A5    movzx       ecx,word ptr [eax]
 0041F2A8    cmp         si,cx
>0041F2AB    jne         0041F2B2
 0041F2AD    test        cx,cx
>0041F2B0    jne         0041F2BC
 0041F2B2    movzx       edi,cx
 0041F2B5    movzx       eax,si
 0041F2B8    sub         edi,eax
>0041F2BA    jmp         0041F2C4
 0041F2BC    add         eax,2
 0041F2BF    add         edx,2
>0041F2C2    jmp         0041F2A2
 0041F2C4    mov         eax,edi
 0041F2C6    pop         edi
 0041F2C7    pop         esi
 0041F2C8    ret
end;*}

//0041F2CC
function StrLComp(const Str1:PWideChar; const Str2:PWideChar; MaxLen:Cardinal):Integer;
begin
{*
 0041F2CC    push        esi
 0041F2CD    push        edi
 0041F2CE    add         esp,0FFFFFFF8
 0041F2D1    mov         dword ptr [esp],ecx
 0041F2D4    xor         edi,edi
 0041F2D6    cmp         edi,dword ptr [esp]
>0041F2D9    jae         0041F305
 0041F2DB    movzx       ecx,word ptr [edx]
 0041F2DE    movzx       esi,word ptr [eax]
 0041F2E1    cmp         cx,si
>0041F2E4    jne         0041F2EB
 0041F2E6    test        si,si
>0041F2E9    jne         0041F2F9
 0041F2EB    movzx       eax,si
 0041F2EE    movzx       edx,cx
 0041F2F1    sub         eax,edx
 0041F2F3    mov         dword ptr [esp+4],eax
>0041F2F7    jmp         0041F30B
 0041F2F9    add         eax,2
 0041F2FC    add         edx,2
 0041F2FF    inc         edi
 0041F300    cmp         edi,dword ptr [esp]
>0041F303    jb          0041F2DB
 0041F305    xor         eax,eax
 0041F307    mov         dword ptr [esp+4],eax
 0041F30B    mov         eax,dword ptr [esp+4]
 0041F30F    pop         ecx
 0041F310    pop         edx
 0041F311    pop         edi
 0041F312    pop         esi
 0041F313    ret
*}
end;

//0041F314
{*function sub_0041F314(?:?; ?:?; ?:?):?;
begin
 0041F314    push        esi
 0041F315    push        edi
 0041F316    push        ebp
 0041F317    add         esp,0FFFFFFF8
 0041F31A    mov         dword ptr [esp],ecx
 0041F31D    mov         esi,eax
 0041F31F    mov         edi,edx
 0041F321    xor         edx,edx
 0041F323    cmp         edx,dword ptr [esp]
>0041F326    jae         0041F37C
 0041F328    movzx       eax,word ptr [esi]
 0041F32B    add         eax,0FFFFFF9F
 0041F32E    sub         ax,1A
>0041F332    jae         0041F33D
 0041F334    movzx       eax,word ptr [esi]
 0041F337    xor         ax,20
>0041F33B    jmp         0041F340
 0041F33D    movzx       eax,word ptr [esi]
 0041F340    movzx       ecx,word ptr [edi]
 0041F343    add         ecx,0FFFFFF9F
 0041F346    sub         cx,1A
>0041F34A    jae         0041F355
 0041F34C    movzx       ebp,word ptr [edi]
 0041F34F    xor         bp,20
>0041F353    jmp         0041F358
 0041F355    movzx       ebp,word ptr [edi]
 0041F358    cmp         bp,ax
>0041F35B    jne         0041F362
 0041F35D    test        ax,ax
>0041F360    jne         0041F370
 0041F362    movzx       eax,ax
 0041F365    movzx       edx,bp
 0041F368    sub         eax,edx
 0041F36A    mov         dword ptr [esp+4],eax
>0041F36E    jmp         0041F382
 0041F370    add         esi,2
 0041F373    add         edi,2
 0041F376    inc         edx
 0041F377    cmp         edx,dword ptr [esp]
>0041F37A    jb          0041F328
 0041F37C    xor         eax,eax
 0041F37E    mov         dword ptr [esp+4],eax
 0041F382    mov         eax,dword ptr [esp+4]
 0041F386    pop         ecx
 0041F387    pop         edx
 0041F388    pop         ebp
 0041F389    pop         edi
 0041F38A    pop         esi
 0041F38B    ret
end;*}

//0041F38C
{*function sub_0041F38C:?;
begin
>0041F38C    jmp         0041F396
end;*}

//0041F3A8
{*function sub_0041F3A8(?:?; ?:?):?;
begin
 0041F3A8    push        esi
 0041F3A9    test        dx,dx
>0041F3AC    jne         0041F3B7
 0041F3AE    call        StrEnd
 0041F3B3    mov         esi,eax
>0041F3B5    jmp         0041F3D2
 0041F3B7    xor         esi,esi
>0041F3B9    jmp         0041F3C3
 0041F3BB    test        cx,cx
>0041F3BE    je          0041F3D2
 0041F3C0    add         eax,2
 0041F3C3    movzx       ecx,word ptr [eax]
 0041F3C6    cmp         dx,cx
>0041F3C9    jne         0041F3BB
 0041F3CB    mov         esi,eax
 0041F3CD    add         eax,2
>0041F3D0    jmp         0041F3C3
 0041F3D2    mov         eax,esi
 0041F3D4    pop         esi
 0041F3D5    ret
end;*}

//0041F3D8
{*function sub_0041F3D8(?:?; ?:?):?;
begin
 0041F3D8    push        edi
 0041F3D9    push        esi
 0041F3DA    push        ebx
 0041F3DB    or          eax,eax
>0041F3DD    je          0041F429
 0041F3DF    or          edx,edx
>0041F3E1    je          0041F429
 0041F3E3    mov         ebx,eax
 0041F3E5    mov         edi,edx
 0041F3E7    xor         ax,ax
 0041F3EA    mov         ecx,0FFFFFFFF
 0041F3EF    repne scas  word ptr [edi]
 0041F3F2    not         ecx
 0041F3F4    dec         ecx
>0041F3F5    je          0041F429
 0041F3F7    mov         esi,ecx
 0041F3F9    mov         edi,ebx
 0041F3FB    mov         ecx,0FFFFFFFF
 0041F400    repne scas  word ptr [edi]
 0041F403    not         ecx
 0041F405    sub         ecx,esi
>0041F407    jbe         0041F429
 0041F409    mov         edi,ebx
 0041F40B    lea         ebx,[esi-1]
 0041F40E    mov         esi,edx
 0041F410    lods        word ptr [esi]
 0041F412    repne scas  word ptr [edi]
>0041F415    jne         0041F429
 0041F417    mov         eax,ecx
 0041F419    push        edi
 0041F41A    mov         ecx,ebx
 0041F41C    repe cmps   word ptr [esi],word ptr [edi]
 0041F41F    pop         edi
 0041F420    mov         ecx,eax
>0041F422    jne         0041F40E
 0041F424    lea         eax,[edi-2]
>0041F427    jmp         0041F42B
 0041F429    xor         eax,eax
 0041F42B    pop         ebx
 0041F42C    pop         esi
 0041F42D    pop         edi
 0041F42E    ret
end;*}

//0041F430
function StrPosLen(const Str1:PWideChar; const Str2:PWideChar; Len1:Integer; Len2:Integer):PWideChar;
begin
{*
 0041F430    push        ebp
 0041F431    mov         ebp,esp
 0041F433    add         esp,0FFFFFFF8
 0041F436    push        ebx
 0041F437    push        esi
 0041F438    push        edi
 0041F439    mov         dword ptr [ebp-4],edx
 0041F43C    mov         esi,eax
 0041F43E    xor         eax,eax
 0041F440    mov         dword ptr [ebp-8],eax
 0041F443    test        ecx,ecx
>0041F445    je          0041F484
 0041F447    cmp         dword ptr [ebp+8],0
>0041F44B    je          0041F484
 0041F44D    mov         edi,ecx
 0041F44F    sub         edi,dword ptr [ebp+8]
 0041F452    test        edi,edi
>0041F454    jl          0041F484
 0041F456    inc         edi
 0041F457    xor         ebx,ebx
 0041F459    cmp         word ptr [esi+ebx*2],0
>0041F45E    je          0041F480
 0041F460    mov         eax,ebx
 0041F462    add         eax,eax
 0041F464    add         eax,esi
 0041F466    mov         ecx,dword ptr [ebp+8]
 0041F469    mov         edx,dword ptr [ebp-4]
 0041F46C    call        StrLComp
 0041F471    test        eax,eax
>0041F473    jne         0041F480
 0041F475    mov         eax,ebx
 0041F477    add         eax,eax
 0041F479    add         eax,esi
 0041F47B    mov         dword ptr [ebp-8],eax
>0041F47E    jmp         0041F484
 0041F480    inc         ebx
 0041F481    dec         edi
>0041F482    jne         0041F459
 0041F484    mov         eax,dword ptr [ebp-8]
 0041F487    pop         edi
 0041F488    pop         esi
 0041F489    pop         ebx
 0041F48A    pop         ecx
 0041F48B    pop         ecx
 0041F48C    pop         ebp
 0041F48D    ret         4
*}
end;

//0041F490
{*procedure sub_0041F490(?:?; ?:UnicodeString);
begin
 0041F490    push        ebx
 0041F491    push        esi
 0041F492    mov         esi,edx
 0041F494    mov         ebx,eax
 0041F496    mov         eax,esi
 0041F498    mov         edx,ebx
 0041F49A    call        @UStrFromPWChar
 0041F49F    pop         esi
 0041F4A0    pop         ebx
 0041F4A1    ret
end;*}

//0041F4A4
function AnsiStrAlloc(Size:Cardinal):PAnsiChar;
begin
{*
 0041F4A4    push        ebx
 0041F4A5    mov         ebx,eax
 0041F4A7    add         ebx,ebx
 0041F4A9    add         ebx,4
 0041F4AC    mov         eax,ebx
 0041F4AE    call        @GetMem
 0041F4B3    mov         dword ptr [eax],ebx
 0041F4B5    add         eax,4
 0041F4B8    pop         ebx
 0041F4B9    ret
*}
end;

//0041F4BC
{*function sub_0041F4BC:?;
begin
 0041F4BC    call        AnsiStrAlloc
 0041F4C1    ret
end;*}

//0041F4C4
{*function sub_0041F4C4(?:?):?;
begin
 0041F4C4    sub         eax,4
 0041F4C7    mov         eax,dword ptr [eax]
 0041F4C9    sub         eax,4
 0041F4CC    shr         eax,1
 0041F4CE    ret
end;*}

//0041F4D0
function StrNew(const Str:PAnsiChar):PAnsiChar;
begin
{*
 0041F4D0    push        ebx
 0041F4D1    push        esi
 0041F4D2    mov         ebx,eax
 0041F4D4    test        ebx,ebx
>0041F4D6    jne         0041F4DD
 0041F4D8    xor         eax,eax
 0041F4DA    pop         esi
 0041F4DB    pop         ebx
 0041F4DC    ret
 0041F4DD    mov         eax,ebx
 0041F4DF    call        @PWCharLen
 0041F4E4    lea         esi,[eax+1]
 0041F4E7    mov         eax,esi
 0041F4E9    call        AnsiStrAlloc
 0041F4EE    mov         ecx,esi
 0041F4F0    mov         edx,ebx
 0041F4F2    call        StrMove
 0041F4F7    pop         esi
 0041F4F8    pop         ebx
 0041F4F9    ret
*}
end;

//0041F4FC
procedure sub_0041F4FC(?:PWideChar);
begin
{*
 0041F4FC    test        eax,eax
>0041F4FE    je          0041F50A
 0041F500    sub         eax,4
 0041F503    mov         edx,dword ptr [eax]
 0041F505    call        @FreeMem
 0041F50A    ret
*}
end;

//0041F50C
{*procedure sub_0041F50C(?:?; ?:?; ?:?);
begin
 0041F50C    push        ebx
 0041F50D    push        esi
 0041F50E    push        edi
 0041F50F    add         esp,0FFFFFFB8
 0041F512    mov         ebx,ecx
 0041F514    mov         esi,edx
 0041F516    mov         edi,eax
 0041F518    cmp         ebx,1F
>0041F51B    jbe         0041F522
 0041F51D    mov         ebx,1F
 0041F522    mov         edx,ebx
 0041F524    dec         edx
 0041F525    mov         eax,esi
 0041F527    call        00424E18
 0041F52C    cmp         al,1
>0041F52E    jne         0041F531
 0041F530    dec         ebx
 0041F531    mov         eax,esp
 0041F533    mov         ecx,ebx
 0041F535    mov         edx,esi
 0041F537    call        StrMove
 0041F53C    mov         word ptr [esp+ebx*2],0
 0041F542    mov         eax,esp
 0041F544    mov         dword ptr [esp+40],eax
 0041F548    mov         byte ptr [esp+44],0A
 0041F54D    lea         edx,[esp+40]
 0041F551    mov         eax,dword ptr [edi*4+79F420];^SResString32:TResStringRec
 0041F558    xor         ecx,ecx
 0041F55A    call        ConvertErrorFmt
 0041F55F    add         esp,48
 0041F562    pop         edi
 0041F563    pop         esi
 0041F564    pop         ebx
 0041F565    ret
end;*}

//0041F568
{*function sub_0041F568(?:?; ?:?; ?:?):?;
begin
 0041F568    push        ebp
 0041F569    mov         ebp,esp
 0041F56B    push        ebx
 0041F56C    mov         ebx,dword ptr [ebp+10]
 0041F56F    push        ebx
 0041F570    mov         ebx,dword ptr [ebp+0C]
 0041F573    push        ebx
 0041F574    mov         ebx,dword ptr [ebp+8]
 0041F577    push        ebx
 0041F578    push        7C7CC8;gvar_007C7CC8:Pointer
 0041F57D    call        0041F588
 0041F582    pop         ebx
 0041F583    pop         ebp
 0041F584    ret         0C
end;*}

//0041F588
{*function sub_0041F588(?:?; ?:?; ?:?; ?:?):?;
begin
 0041F588    push        ebp
 0041F589    mov         ebp,esp
 0041F58B    push        ebx
 0041F58C    mov         ebx,dword ptr [ebp+14]
 0041F58F    push        ebx
 0041F590    mov         ebx,dword ptr [ebp+10]
 0041F593    push        ebx
 0041F594    mov         ebx,dword ptr [ebp+0C]
 0041F597    push        ebx
 0041F598    mov         ebx,dword ptr [ebp+8]
 0041F59B    push        ebx
 0041F59C    call        0041FA08
 0041F5A1    pop         ebx
 0041F5A2    pop         ebp
 0041F5A3    ret         10
end;*}

//0041F5A8
function StrFmt(Buffer:PWideChar; Format:PWideChar; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):PWideChar;
begin
{*
 0041F5A8    push        ebp
 0041F5A9    mov         ebp,esp
 0041F5AB    push        ebx
 0041F5AC    mov         ebx,dword ptr [ebp+8]
 0041F5AF    push        ebx
 0041F5B0    push        7C7CC8;gvar_007C7CC8:Pointer
 0041F5B5    call        0041F5C0
 0041F5BA    pop         ebx
 0041F5BB    pop         ebp
 0041F5BC    ret         4
*}
end;

//0041F5C0
{*function sub_0041F5C0(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0041F5C0    push        ebp
 0041F5C1    mov         ebp,esp
 0041F5C3    push        ecx
 0041F5C4    push        ebx
 0041F5C5    push        esi
 0041F5C6    push        edi
 0041F5C7    mov         dword ptr [ebp-4],ecx
 0041F5CA    mov         esi,edx
 0041F5CC    mov         ebx,eax
 0041F5CE    test        ebx,ebx
>0041F5D0    je          0041F604
 0041F5D2    test        esi,esi
>0041F5D4    je          0041F604
 0041F5D6    mov         eax,esi
 0041F5D8    call        @PWCharLen
 0041F5DD    mov         edi,eax
 0041F5DF    push        edi
 0041F5E0    mov         eax,dword ptr [ebp-4]
 0041F5E3    push        eax
 0041F5E4    mov         eax,dword ptr [ebp+0C]
 0041F5E7    push        eax
 0041F5E8    mov         eax,dword ptr [ebp+8]
 0041F5EB    push        eax
 0041F5EC    mov         ecx,esi
 0041F5EE    mov         eax,ebx
 0041F5F0    mov         edx,7FFFFFFF
 0041F5F5    call        0041FA08
 0041F5FA    mov         word ptr [ebx+eax*2],0
 0041F600    mov         eax,ebx
>0041F602    jmp         0041F606
 0041F604    xor         eax,eax
 0041F606    pop         edi
 0041F607    pop         esi
 0041F608    pop         ebx
 0041F609    pop         ecx
 0041F60A    pop         ebp
 0041F60B    ret         8
end;*}

//0041F610
function StrLFmt(Buffer:PWideChar; MaxBufLen:Cardinal; Format:PWideChar; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):PWideChar;
begin
{*
 0041F610    push        ebp
 0041F611    mov         ebp,esp
 0041F613    push        ebx
 0041F614    mov         ebx,dword ptr [ebp+0C]
 0041F617    push        ebx
 0041F618    mov         ebx,dword ptr [ebp+8]
 0041F61B    push        ebx
 0041F61C    push        7C7CC8;gvar_007C7CC8:Pointer
 0041F621    call        0041F62C
 0041F626    pop         ebx
 0041F627    pop         ebp
 0041F628    ret         8
*}
end;

//0041F62C
{*function sub_0041F62C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0041F62C    push        ebp
 0041F62D    mov         ebp,esp
 0041F62F    push        ecx
 0041F630    push        ebx
 0041F631    push        esi
 0041F632    push        edi
 0041F633    mov         esi,ecx
 0041F635    mov         dword ptr [ebp-4],edx
 0041F638    mov         ebx,eax
 0041F63A    test        ebx,ebx
>0041F63C    je          0041F66E
 0041F63E    test        esi,esi
>0041F640    je          0041F66E
 0041F642    mov         eax,esi
 0041F644    call        @PWCharLen
 0041F649    mov         edi,eax
 0041F64B    push        edi
 0041F64C    mov         eax,dword ptr [ebp+10]
 0041F64F    push        eax
 0041F650    mov         eax,dword ptr [ebp+0C]
 0041F653    push        eax
 0041F654    mov         eax,dword ptr [ebp+8]
 0041F657    push        eax
 0041F658    mov         ecx,esi
 0041F65A    mov         eax,ebx
 0041F65C    mov         edx,dword ptr [ebp-4]
 0041F65F    call        0041FA08
 0041F664    mov         word ptr [ebx+eax*2],0
 0041F66A    mov         eax,ebx
>0041F66C    jmp         0041F670
 0041F66E    xor         eax,eax
 0041F670    pop         edi
 0041F671    pop         esi
 0041F672    pop         ebx
 0041F673    pop         ecx
 0041F674    pop         ebp
 0041F675    ret         0C
end;*}

//0041F678
function Format(const Format:UnicodeString; const Args:array[$0..-$1] of System.TVarRec; const _Dv_:$0..-$1):UnicodeString;
begin
{*
 0041F678    push        ebp
 0041F679    mov         ebp,esp
 0041F67B    push        ebx
 0041F67C    push        esi
 0041F67D    push        edi
 0041F67E    mov         edi,ecx
 0041F680    mov         esi,edx
 0041F682    mov         ebx,eax
 0041F684    push        7C7CC8;gvar_007C7CC8:Pointer
 0041F689    mov         eax,dword ptr [ebp+8]
 0041F68C    push        eax
 0041F68D    mov         edx,esi
 0041F68F    mov         ecx,edi
 0041F691    mov         eax,ebx
 0041F693    call        0041F6A0
 0041F698    pop         edi
 0041F699    pop         esi
 0041F69A    pop         ebx
 0041F69B    pop         ebp
 0041F69C    ret         4
*}
end;

//0041F6A0
{*procedure sub_0041F6A0(?:?; ?:?; ?:?; ?:?);
begin
 0041F6A0    push        ebp
 0041F6A1    mov         ebp,esp
 0041F6A3    push        ecx
 0041F6A4    mov         ecx,dword ptr [ebp+0C]
 0041F6A7    push        ecx
 0041F6A8    mov         ecx,dword ptr [ebp+8]
 0041F6AB    xchg        eax,ecx
 0041F6AC    xchg        edx,ecx
 0041F6AE    call        0041F6D0
 0041F6B3    pop         ebp
 0041F6B4    ret         8
end;*}

//0041F6B8
{*procedure sub_0041F6B8(?:?);
begin
 0041F6B8    push        ebp
 0041F6B9    mov         ebp,esp
 0041F6BB    push        ebx
 0041F6BC    mov         ebx,dword ptr [ebp+8]
 0041F6BF    push        ebx
 0041F6C0    push        7C7CC8;gvar_007C7CC8:Pointer
 0041F6C5    call        0041F6D0
 0041F6CA    pop         ebx
 0041F6CB    pop         ebp
 0041F6CC    ret         4
end;*}

//0041F6D0
{*procedure sub_0041F6D0(?:?; ?:?);
begin
 0041F6D0    push        ebp
 0041F6D1    mov         ebp,esp
 0041F6D3    push        eax
 0041F6D4    mov         eax,2
 0041F6D9    add         esp,0FFFFF004
 0041F6DF    push        eax
 0041F6E0    dec         eax
>0041F6E1    jne         0041F6D9
 0041F6E3    mov         eax,dword ptr [ebp-4]
 0041F6E6    add         esp,0FFFFFFF8
 0041F6E9    push        ebx
 0041F6EA    push        esi
 0041F6EB    push        edi
 0041F6EC    mov         dword ptr [ebp-8],ecx
 0041F6EF    mov         dword ptr [ebp-4],edx
 0041F6F2    mov         edi,eax
 0041F6F4    mov         ebx,1000
 0041F6F9    mov         edx,dword ptr [ebp-4]
 0041F6FC    mov         eax,edx
 0041F6FE    test        eax,eax
>0041F700    je          0041F707
 0041F702    sub         eax,4
 0041F705    mov         eax,dword ptr [eax]
 0041F707    cmp         eax,0C00
>0041F70C    jge         0041F73E
 0041F70E    mov         eax,edx
 0041F710    test        eax,eax
>0041F712    je          0041F719
 0041F714    sub         eax,4
 0041F717    mov         eax,dword ptr [eax]
 0041F719    push        eax
 0041F71A    mov         eax,dword ptr [ebp-8]
 0041F71D    push        eax
 0041F71E    mov         eax,dword ptr [ebp+0C]
 0041F721    push        eax
 0041F722    mov         eax,dword ptr [ebp+8]
 0041F725    push        eax
 0041F726    mov         ecx,dword ptr [ebp-4]
 0041F729    lea         eax,[ebp-200C]
 0041F72F    mov         edx,0FFF
 0041F734    call        0041F588
 0041F739    mov         dword ptr [ebp-0C],eax
>0041F73C    jmp         0041F74E
 0041F73E    mov         eax,edx
 0041F740    test        eax,eax
>0041F742    je          0041F749
 0041F744    sub         eax,4
 0041F747    mov         eax,dword ptr [eax]
 0041F749    mov         ebx,eax
 0041F74B    mov         dword ptr [ebp-0C],ebx
 0041F74E    mov         eax,ebx
 0041F750    dec         eax
 0041F751    cmp         eax,dword ptr [ebp-0C]
>0041F754    jg          0041F7AC
>0041F756    jmp         0041F798
 0041F758    add         ebx,ebx
 0041F75A    mov         eax,edi
 0041F75C    call        @UStrClr
 0041F761    mov         eax,edi
 0041F763    mov         edx,ebx
 0041F765    call        @UStrSetLength
 0041F76A    mov         esi,dword ptr [ebp-4]
 0041F76D    test        esi,esi
>0041F76F    je          0041F776
 0041F771    sub         esi,4
 0041F774    mov         esi,dword ptr [esi]
 0041F776    push        esi
 0041F777    mov         eax,dword ptr [ebp-8]
 0041F77A    push        eax
 0041F77B    mov         eax,dword ptr [ebp+0C]
 0041F77E    push        eax
 0041F77F    mov         eax,dword ptr [ebp+8]
 0041F782    push        eax
 0041F783    mov         eax,dword ptr [edi]
 0041F785    call        @UStrToPWChar
 0041F78A    mov         ecx,dword ptr [ebp-4]
 0041F78D    mov         edx,ebx
 0041F78F    dec         edx
 0041F790    call        0041F588
 0041F795    mov         dword ptr [ebp-0C],eax
 0041F798    mov         eax,ebx
 0041F79A    dec         eax
 0041F79B    cmp         eax,dword ptr [ebp-0C]
>0041F79E    jle         0041F758
 0041F7A0    mov         eax,edi
 0041F7A2    mov         edx,dword ptr [ebp-0C]
 0041F7A5    call        @UStrSetLength
>0041F7AA    jmp         0041F7BC
 0041F7AC    lea         edx,[ebp-200C]
 0041F7B2    mov         eax,edi
 0041F7B4    mov         ecx,dword ptr [ebp-0C]
 0041F7B7    call        @UStrFromPWCharLen
 0041F7BC    pop         edi
 0041F7BD    pop         esi
 0041F7BE    pop         ebx
 0041F7BF    mov         esp,ebp
 0041F7C1    pop         ebp
 0041F7C2    ret         8
end;*}

//0041F7C8
{*function sub_0041F7C8(?:?; ?:?; ?:?):?;
begin
 0041F7C8    push        ebp
 0041F7C9    mov         ebp,esp
 0041F7CB    push        ebx
 0041F7CC    push        esi
 0041F7CD    xor         ecx,ecx
 0041F7CF    mov         ebx,dword ptr [ebp+8]
 0041F7D2    cmp         eax,dword ptr [ebx-4]
>0041F7D5    jge         0041F7E7
 0041F7D7    mov         ebx,dword ptr [ebp+8]
 0041F7DA    cmp         word ptr [ebx-6],53
>0041F7DF    je          0041F7E7
 0041F7E1    mov         eax,dword ptr [ebp+8]
 0041F7E4    mov         eax,dword ptr [eax-4]
 0041F7E7    mov         ebx,dword ptr [ebp+8]
 0041F7EA    cmp         dword ptr [ebx-0C],0FFFFFFFF
>0041F7EE    je          0041F835
 0041F7F0    mov         ebx,dword ptr [ebp+8]
 0041F7F3    mov         ebx,dword ptr [ebx-0C]
 0041F7F6    lea         esi,[edx+eax]
 0041F7F9    cmp         ebx,esi
>0041F7FB    jle         0041F835
 0041F7FD    lea         edx,[edx+eax+1]
 0041F801    mov         eax,dword ptr [ebp+8]
 0041F804    mov         eax,dword ptr [eax-0C]
 0041F807    sub         eax,edx
>0041F809    jl          0041F835
 0041F80B    inc         eax
 0041F80C    mov         ebx,dword ptr [ebp+8]
 0041F80F    cmp         dword ptr [ebx-10],0
>0041F813    jne         0041F819
 0041F815    mov         cl,1
>0041F817    jmp         0041F835
 0041F819    mov         edx,dword ptr [ebp+8]
 0041F81C    mov         edx,dword ptr [edx-14]
 0041F81F    mov         word ptr [edx],20
 0041F824    mov         edx,dword ptr [ebp+8]
 0041F827    add         dword ptr [edx-14],2
 0041F82B    mov         edx,dword ptr [ebp+8]
 0041F82E    sub         dword ptr [edx-10],2
 0041F832    dec         eax
>0041F833    jne         0041F80C
 0041F835    mov         eax,ecx
 0041F837    pop         esi
 0041F838    pop         ebx
 0041F839    pop         ebp
 0041F83A    ret
end;*}

//0041F83C
{*function sub_0041F83C(?:PWideChar; ?:?; ?:UnicodeString; ?:?):?;
begin
 0041F83C    push        ebp
 0041F83D    mov         ebp,esp
 0041F83F    add         esp,0FFFFFFF0
 0041F842    push        ebx
 0041F843    push        esi
 0041F844    push        edi
 0041F845    mov         dword ptr [ebp-4],ecx
 0041F848    mov         ebx,edx
 0041F84A    mov         edi,eax
 0041F84C    mov         dword ptr [ebp-0C],edi
 0041F84F    test        edi,edi
>0041F851    je          0041F86A
 0041F853    cmp         dword ptr [ebp-4],0FFFFFFFF
>0041F857    jne         0041F865
 0041F859    mov         eax,dword ptr [ebp-0C]
 0041F85C    call        @PWCharLen
 0041F861    mov         esi,eax
>0041F863    jmp         0041F86C
 0041F865    mov         esi,dword ptr [ebp-4]
>0041F868    jmp         0041F86C
 0041F86A    xor         esi,esi
 0041F86C    cmp         ebx,0FFFFFFFF
>0041F86F    jle         0041F877
 0041F871    cmp         ebx,esi
>0041F873    jge         0041F877
 0041F875    mov         esi,ebx
 0041F877    mov         eax,esi
 0041F879    add         eax,eax
 0041F87B    mov         dword ptr [ebp-8],eax
 0041F87E    test        edi,edi
>0041F880    je          0041F8A3
 0041F882    mov         eax,dword ptr [ebp-0C]
 0041F885    cmp         word ptr [eax],2D
>0041F889    jne         0041F8A3
 0041F88B    mov         eax,dword ptr [ebp+8]
 0041F88E    cmp         word ptr [eax-6],53
>0041F893    je          0041F8A3
 0041F895    sub         dword ptr [ebp-8],2
 0041F899    dec         esi
 0041F89A    mov         dword ptr [ebp-10],1
>0041F8A1    jmp         0041F8A8
 0041F8A3    xor         eax,eax
 0041F8A5    mov         dword ptr [ebp-10],eax
 0041F8A8    mov         eax,dword ptr [ebp+8]
 0041F8AB    cmp         byte ptr [eax-15],0
>0041F8AF    jne         0041F8CA
 0041F8B1    mov         eax,dword ptr [ebp+8]
 0041F8B4    push        eax
 0041F8B5    mov         edx,dword ptr [ebp-10]
 0041F8B8    mov         eax,esi
 0041F8BA    call        0041F7C8
 0041F8BF    pop         ecx
 0041F8C0    mov         ebx,eax
 0041F8C2    test        bl,bl
>0041F8C4    jne         0041F9B1
 0041F8CA    cmp         dword ptr [ebp-10],1
>0041F8CE    jne         0041F8FD
 0041F8D0    mov         eax,dword ptr [ebp+8]
 0041F8D3    cmp         dword ptr [eax-10],0
>0041F8D7    jne         0041F8E0
 0041F8D9    mov         bl,1
>0041F8DB    jmp         0041F9B1
 0041F8E0    add         dword ptr [ebp-0C],2
 0041F8E4    mov         eax,dword ptr [ebp+8]
 0041F8E7    mov         eax,dword ptr [eax-14]
 0041F8EA    mov         word ptr [eax],2D
 0041F8EF    mov         eax,dword ptr [ebp+8]
 0041F8F2    add         dword ptr [eax-14],2
 0041F8F6    mov         eax,dword ptr [ebp+8]
 0041F8F9    sub         dword ptr [eax-10],2
 0041F8FD    mov         eax,dword ptr [ebp+8]
 0041F900    cmp         dword ptr [eax-4],0FFFFFFFF
>0041F904    je          0041F950
 0041F906    mov         eax,dword ptr [ebp+8]
 0041F909    cmp         esi,dword ptr [eax-4]
>0041F90C    jge         0041F950
 0041F90E    mov         eax,dword ptr [ebp+8]
 0041F911    cmp         word ptr [eax-6],53
>0041F916    je          0041F950
 0041F918    lea         eax,[esi+1]
 0041F91B    mov         edx,dword ptr [ebp+8]
 0041F91E    mov         edx,dword ptr [edx-4]
 0041F921    sub         edx,eax
>0041F923    jl          0041F950
 0041F925    inc         edx
 0041F926    xchg        eax,edx
 0041F927    mov         edx,dword ptr [ebp+8]
 0041F92A    cmp         dword ptr [edx-10],0
>0041F92E    jne         0041F934
 0041F930    mov         bl,1
>0041F932    jmp         0041F9B1
 0041F934    mov         edx,dword ptr [ebp+8]
 0041F937    mov         edx,dword ptr [edx-14]
 0041F93A    mov         word ptr [edx],30
 0041F93F    mov         edx,dword ptr [ebp+8]
 0041F942    add         dword ptr [edx-14],2
 0041F946    mov         edx,dword ptr [ebp+8]
 0041F949    sub         dword ptr [edx-10],2
 0041F94D    dec         eax
>0041F94E    jne         0041F927
 0041F950    test        edi,edi
>0041F952    je          0041F995
 0041F954    mov         eax,dword ptr [ebp+8]
 0041F957    mov         eax,dword ptr [eax-10]
 0041F95A    cmp         eax,dword ptr [ebp-8]
 0041F95D    setb        bl
 0041F960    test        bl,bl
>0041F962    je          0041F96C
 0041F964    mov         eax,dword ptr [ebp+8]
 0041F967    mov         edi,dword ptr [eax-10]
>0041F96A    jmp         0041F96F
 0041F96C    mov         edi,dword ptr [ebp-8]
 0041F96F    mov         eax,dword ptr [ebp+8]
 0041F972    mov         edx,dword ptr [eax-14]
 0041F975    mov         eax,dword ptr [ebp-0C]
 0041F978    mov         ecx,edi
 0041F97A    call        Move
 0041F97F    mov         eax,dword ptr [ebp+8]
 0041F982    mov         eax,dword ptr [eax-14]
 0041F985    add         eax,edi
 0041F987    mov         edx,dword ptr [ebp+8]
 0041F98A    mov         dword ptr [edx-14],eax
 0041F98D    mov         eax,dword ptr [ebp+8]
 0041F990    sub         dword ptr [eax-10],edi
>0041F993    jmp         0041F997
 0041F995    xor         ebx,ebx
 0041F997    mov         eax,dword ptr [ebp+8]
 0041F99A    cmp         byte ptr [eax-15],0
>0041F99E    je          0041F9B1
 0041F9A0    mov         eax,dword ptr [ebp+8]
 0041F9A3    push        eax
 0041F9A4    mov         edx,dword ptr [ebp-10]
 0041F9A7    mov         eax,esi
 0041F9A9    call        0041F7C8
 0041F9AE    pop         ecx
 0041F9AF    mov         ebx,eax
 0041F9B1    mov         eax,ebx
 0041F9B3    pop         edi
 0041F9B4    pop         esi
 0041F9B5    pop         ebx
 0041F9B6    mov         esp,ebp
 0041F9B8    pop         ebp
 0041F9B9    ret
end;*}

//0041F9BC
{*procedure sub_0041F9BC(?:?; ?:?);
begin
 0041F9BC    push        ebp
 0041F9BD    mov         ebp,esp
 0041F9BF    add         esp,0FFFFFFF0
 0041F9C2    push        ebx
 0041F9C3    push        esi
 0041F9C4    push        edi
 0041F9C5    mov         esi,eax
 0041F9C7    lea         edi,[ebp-10]
 0041F9CA    movs        dword ptr [edi],dword ptr [esi]
 0041F9CB    movs        dword ptr [edi],dword ptr [esi]
 0041F9CC    movs        dword ptr [edi],dword ptr [esi]
 0041F9CD    movs        dword ptr [edi],dword ptr [esi]
 0041F9CE    mov         ebx,edx
 0041F9D0    mov         eax,ebx
 0041F9D2    call        @UStrClr
 0041F9D7    cmp         word ptr [ebp-10],1
>0041F9DC    je          0041FA00
 0041F9DE    mov         eax,[007C42D0];^gvar_0079E024
 0041F9E3    cmp         dword ptr [eax],0
>0041F9E6    je          0041F9F9
 0041F9E8    mov         esi,dword ptr ds:[7C42D0];^gvar_0079E024
 0041F9EE    mov         esi,dword ptr [esi]
 0041F9F0    lea         edx,[ebp-10]
 0041F9F3    mov         eax,ebx
 0041F9F5    call        esi
>0041F9F7    jmp         0041FA00
 0041F9F9    mov         al,10
 0041F9FB    call        Error
 0041FA00    pop         edi
 0041FA01    pop         esi
 0041FA02    pop         ebx
 0041FA03    mov         esp,ebp
 0041FA05    pop         ebp
 0041FA06    ret
end;*}

//0041FA08
{*function sub_0041FA08(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0041FA08    push        ebp
 0041FA09    mov         ebp,esp
 0041FA0B    add         esp,0FFFFFF00
 0041FA11    push        ebx
 0041FA12    push        esi
 0041FA13    push        edi
 0041FA14    xor         ebx,ebx
 0041FA16    mov         dword ptr [ebp-100],ebx
 0041FA1C    mov         dword ptr [ebp-0FC],ebx
 0041FA22    mov         dword ptr [ebp-0F8],ebx
 0041FA28    mov         dword ptr [ebp-0F4],ebx
 0041FA2E    mov         dword ptr [ebp-0F0],ebx
 0041FA34    mov         dword ptr [ebp-0EC],ebx
 0041FA3A    mov         dword ptr [ebp-1C],ebx
 0041FA3D    mov         dword ptr [ebp-28],ecx
 0041FA40    mov         dword ptr [ebp-24],edx
 0041FA43    mov         dword ptr [ebp-20],eax
 0041FA46    xor         eax,eax
 0041FA48    push        ebp
 0041FA49    push        4203CF
 0041FA4E    push        dword ptr fs:[eax]
 0041FA51    mov         dword ptr fs:[eax],esp
 0041FA54    mov         eax,dword ptr [ebp-20]
 0041FA57    test        eax,eax
>0041FA59    je          0041FA62
 0041FA5B    mov         edx,dword ptr [ebp-28]
 0041FA5E    test        edx,edx
>0041FA60    jne         0041FA6C
 0041FA62    xor         eax,eax
 0041FA64    mov         dword ptr [ebp-2C],eax
>0041FA67    jmp         004203A9
 0041FA6C    or          edi,0FFFFFFFF
 0041FA6F    mov         edx,dword ptr [ebp+0C]
 0041FA72    inc         edx
 0041FA73    mov         dword ptr [ebp-34],edx
 0041FA76    mov         dword ptr [ebp-14],eax
 0041FA79    mov         ebx,dword ptr [ebp-28]
 0041FA7C    cmp         dword ptr [ebp-24],7FFFFFFF
>0041FA83    jae         0041FA8F
 0041FA85    mov         eax,dword ptr [ebp-24]
 0041FA88    add         eax,eax
 0041FA8A    mov         dword ptr [ebp-10],eax
>0041FA8D    jmp         0041FA95
 0041FA8F    mov         eax,dword ptr [ebp-24]
 0041FA92    mov         dword ptr [ebp-10],eax
 0041FA95    mov         esi,dword ptr [ebp+14]
 0041FA98    add         esi,esi
 0041FA9A    add         esi,ebx
 0041FA9C    cmp         esi,ebx
>0041FA9E    jbe         00420397
 0041FAA4    cmp         word ptr [ebx],25
>0041FAA8    jne         00420361
 0041FAAE    add         ebx,2
 0041FAB1    cmp         esi,ebx
>0041FAB3    jbe         00420397
 0041FAB9    cmp         word ptr [ebx],25
>0041FABD    jne         0041FAEB
 0041FABF    cmp         dword ptr [ebp-10],0
>0041FAC3    jne         0041FAD2
 0041FAC5    mov         edx,dword ptr [ebp-28]
 0041FAC8    mov         ecx,dword ptr [ebp+14]
 0041FACB    xor         eax,eax
 0041FACD    call        0041F50C
 0041FAD2    mov         eax,dword ptr [ebp-14]
 0041FAD5    movzx       edx,word ptr [ebx]
 0041FAD8    mov         word ptr [eax],dx
 0041FADB    add         ebx,2
 0041FADE    add         dword ptr [ebp-14],2
 0041FAE2    sub         dword ptr [ebp-10],2
>0041FAE6    jmp         0042038F
 0041FAEB    mov         dword ptr [ebp-0C],0FFFFFFFF
 0041FAF2    inc         edi
 0041FAF3    mov         eax,ebx
 0041FAF5    call        00417140
 0041FAFA    test        al,al
>0041FAFC    je          0041FB83
 0041FB02    mov         dword ptr [ebp-30],ebx
>0041FB05    jmp         0041FB0A
 0041FB07    add         ebx,2
 0041FB0A    cmp         esi,ebx
>0041FB0C    jbe         0041FB19
 0041FB0E    mov         eax,ebx
 0041FB10    call        00417140
 0041FB15    test        al,al
>0041FB17    jne         0041FB07
 0041FB19    cmp         ebx,dword ptr [ebp-30]
>0041FB1C    je          0041FB8E
 0041FB1E    mov         ecx,ebx
 0041FB20    sub         ecx,dword ptr [ebp-30]
 0041FB23    sar         ecx,1
>0041FB25    jns         0041FB2A
 0041FB27    adc         ecx,0
 0041FB2A    lea         eax,[ebp-0E6]
 0041FB30    mov         edx,dword ptr [ebp-30]
 0041FB33    call        StrLCopy
 0041FB38    lea         eax,[ebp-0EC]
 0041FB3E    lea         edx,[ebp-0E6]
 0041FB44    mov         ecx,41
 0041FB49    call        @UStrFromWArray
 0041FB4E    mov         eax,dword ptr [ebp-0EC]
 0041FB54    lea         edx,[ebp-40]
 0041FB57    call        0041E5A0
 0041FB5C    test        al,al
>0041FB5E    jne         0041FB6D
 0041FB60    mov         edx,dword ptr [ebp-28]
 0041FB63    mov         ecx,dword ptr [ebp+14]
 0041FB66    xor         eax,eax
 0041FB68    call        0041F50C
 0041FB6D    cmp         word ptr [ebx],3A
>0041FB71    jne         0041FB7B
 0041FB73    add         ebx,2
 0041FB76    mov         edi,dword ptr [ebp-40]
>0041FB79    jmp         0041FB8E
 0041FB7B    mov         eax,dword ptr [ebp-40]
 0041FB7E    mov         dword ptr [ebp-0C],eax
>0041FB81    jmp         0041FB8E
 0041FB83    cmp         word ptr [ebx],3A
>0041FB87    jne         0041FB8E
 0041FB89    xor         edi,edi
 0041FB8B    add         ebx,2
 0041FB8E    cmp         word ptr [ebx],2D
>0041FB92    jne         0041FB9D
 0041FB94    mov         byte ptr [ebp-15],1
 0041FB98    add         ebx,2
>0041FB9B    jmp         0041FBA1
 0041FB9D    mov         byte ptr [ebp-15],0
 0041FBA1    mov         dword ptr [ebp-30],ebx
 0041FBA4    cmp         word ptr [ebx],2A
>0041FBA8    jne         0041FBB6
 0041FBAA    mov         dword ptr [ebp-0C],0FFFFFFFE
 0041FBB1    add         ebx,2
>0041FBB4    jmp         0041FC29
 0041FBB6    mov         eax,ebx
 0041FBB8    call        00417140
 0041FBBD    test        al,al
>0041FBBF    je          0041FC29
>0041FBC1    jmp         0041FBC6
 0041FBC3    add         ebx,2
 0041FBC6    cmp         esi,ebx
>0041FBC8    jbe         0041FBD5
 0041FBCA    mov         eax,ebx
 0041FBCC    call        00417140
 0041FBD1    test        al,al
>0041FBD3    jne         0041FBC3
 0041FBD5    cmp         ebx,dword ptr [ebp-30]
>0041FBD8    je          0041FC29
 0041FBDA    mov         ecx,ebx
 0041FBDC    sub         ecx,dword ptr [ebp-30]
 0041FBDF    sar         ecx,1
>0041FBE1    jns         0041FBE6
 0041FBE3    adc         ecx,0
 0041FBE6    lea         eax,[ebp-0E6]
 0041FBEC    mov         edx,dword ptr [ebp-30]
 0041FBEF    call        StrLCopy
 0041FBF4    lea         eax,[ebp-0F0]
 0041FBFA    lea         edx,[ebp-0E6]
 0041FC00    mov         ecx,41
 0041FC05    call        @UStrFromWArray
 0041FC0A    mov         eax,dword ptr [ebp-0F0]
 0041FC10    lea         edx,[ebp-0C]
 0041FC13    call        0041E5A0
 0041FC18    test        al,al
>0041FC1A    jne         0041FC29
 0041FC1C    mov         edx,dword ptr [ebp-28]
 0041FC1F    mov         ecx,dword ptr [ebp+14]
 0041FC22    xor         eax,eax
 0041FC24    call        0041F50C
 0041FC29    cmp         word ptr [ebx],2E
>0041FC2D    jne         0041FCAE
 0041FC2F    add         ebx,2
 0041FC32    cmp         esi,ebx
>0041FC34    jbe         00420397
 0041FC3A    cmp         word ptr [ebx],2A
>0041FC3E    jne         0041FC4C
 0041FC40    mov         dword ptr [ebp-4],0FFFFFFFE
 0041FC47    add         ebx,2
>0041FC4A    jmp         0041FCB5
 0041FC4C    mov         dword ptr [ebp-30],ebx
>0041FC4F    jmp         0041FC54
 0041FC51    add         ebx,2
 0041FC54    cmp         esi,ebx
>0041FC56    jbe         0041FC63
 0041FC58    mov         eax,ebx
 0041FC5A    call        00417140
 0041FC5F    test        al,al
>0041FC61    jne         0041FC51
 0041FC63    mov         ecx,ebx
 0041FC65    sub         ecx,dword ptr [ebp-30]
 0041FC68    sar         ecx,1
>0041FC6A    jns         0041FC6F
 0041FC6C    adc         ecx,0
 0041FC6F    lea         eax,[ebp-0E6]
 0041FC75    mov         edx,dword ptr [ebp-30]
 0041FC78    call        StrLCopy
 0041FC7D    lea         eax,[ebp-0F4]
 0041FC83    lea         edx,[ebp-0E6]
 0041FC89    mov         ecx,41
 0041FC8E    call        @UStrFromWArray
 0041FC93    mov         eax,dword ptr [ebp-0F4]
 0041FC99    lea         edx,[ebp-4]
 0041FC9C    call        0041E5A0
 0041FCA1    test        al,al
>0041FCA3    jne         0041FCB5
 0041FCA5    mov         dword ptr [ebp-4],0FFFFFFFF
>0041FCAC    jmp         0041FCB5
 0041FCAE    mov         dword ptr [ebp-4],0FFFFFFFF
 0041FCB5    mov         eax,ebx
 0041FCB7    call        00417074
 0041FCBC    test        al,al
>0041FCBE    je          00420397
 0041FCC4    movzx       eax,word ptr [ebx]
 0041FCC7    add         eax,0FFFFFF9F
 0041FCCA    sub         ax,1A
>0041FCCE    jae         0041FCDD
 0041FCD0    movzx       eax,word ptr [ebx]
 0041FCD3    xor         ax,20
 0041FCD7    mov         word ptr [ebp-6],ax
>0041FCDB    jmp         0041FCE4
 0041FCDD    movzx       eax,word ptr [ebx]
 0041FCE0    mov         word ptr [ebp-6],ax
 0041FCE4    add         ebx,2
 0041FCE7    cmp         dword ptr [ebp-0C],0FFFFFFFE
>0041FCEB    jne         0041FD4C
 0041FCED    cmp         edi,dword ptr [ebp-34]
>0041FCF0    jl          0041FD02
 0041FCF2    mov         edx,dword ptr [ebp-28]
 0041FCF5    mov         ecx,dword ptr [ebp+14]
 0041FCF8    mov         eax,1
 0041FCFD    call        0041F50C
 0041FD02    mov         eax,dword ptr [ebp+10]
 0041FD05    cmp         byte ptr [eax+edi*8+4],0
>0041FD0A    jne         0041FD3F
 0041FD0C    cmp         edi,dword ptr [ebp-34]
>0041FD0F    jl          0041FD21
 0041FD11    mov         edx,dword ptr [ebp-28]
 0041FD14    mov         ecx,dword ptr [ebp+14]
 0041FD17    mov         eax,1
 0041FD1C    call        0041F50C
 0041FD21    mov         eax,dword ptr [ebp+10]
 0041FD24    mov         eax,dword ptr [eax+edi*8]
 0041FD27    mov         dword ptr [ebp-0C],eax
 0041FD2A    cmp         dword ptr [ebp-0C],0
>0041FD2E    jge         0041FD3C
 0041FD30    movzx       eax,byte ptr [ebp-15]
 0041FD34    xor         al,1
 0041FD36    mov         byte ptr [ebp-15],al
 0041FD39    neg         dword ptr [ebp-0C]
 0041FD3C    inc         edi
>0041FD3D    jmp         0041FD4C
 0041FD3F    mov         edx,dword ptr [ebp-28]
 0041FD42    mov         ecx,dword ptr [ebp+14]
 0041FD45    xor         eax,eax
 0041FD47    call        0041F50C
 0041FD4C    cmp         dword ptr [ebp-4],0FFFFFFFE
>0041FD50    jne         0041FD9F
 0041FD52    cmp         edi,dword ptr [ebp-34]
>0041FD55    jl          0041FD67
 0041FD57    mov         edx,dword ptr [ebp-28]
 0041FD5A    mov         ecx,dword ptr [ebp+14]
 0041FD5D    mov         eax,1
 0041FD62    call        0041F50C
 0041FD67    mov         eax,dword ptr [ebp+10]
 0041FD6A    cmp         byte ptr [eax+edi*8+4],0
>0041FD6F    jne         0041FD92
 0041FD71    cmp         edi,dword ptr [ebp-34]
>0041FD74    jl          0041FD86
 0041FD76    mov         edx,dword ptr [ebp-28]
 0041FD79    mov         ecx,dword ptr [ebp+14]
 0041FD7C    mov         eax,1
 0041FD81    call        0041F50C
 0041FD86    mov         eax,dword ptr [ebp+10]
 0041FD89    mov         eax,dword ptr [eax+edi*8]
 0041FD8C    mov         dword ptr [ebp-4],eax
 0041FD8F    inc         edi
>0041FD90    jmp         0041FD9F
 0041FD92    mov         edx,dword ptr [ebp-28]
 0041FD95    mov         ecx,dword ptr [ebp+14]
 0041FD98    xor         eax,eax
 0041FD9A    call        0041F50C
 0041FD9F    cmp         edi,dword ptr [ebp-34]
>0041FDA2    jl          0041FDB4
 0041FDA4    mov         edx,dword ptr [ebp-28]
 0041FDA7    mov         ecx,dword ptr [ebp+14]
 0041FDAA    mov         eax,1
 0041FDAF    call        0041F50C
 0041FDB4    mov         eax,dword ptr [ebp+10]
 0041FDB7    mov         edx,dword ptr [eax+edi*8]
 0041FDBA    mov         dword ptr [ebp-48],edx
 0041FDBD    mov         edx,dword ptr [eax+edi*8+4]
 0041FDC1    mov         dword ptr [ebp-44],edx
 0041FDC4    mov         byte ptr [ebp-35],0
 0041FDC8    movzx       eax,byte ptr [ebp-44]
 0041FDCC    cmp         eax,11
>0041FDCF    ja          00420347
 0041FDD5    jmp         dword ptr [eax*4+41FDDC]
 0041FDD5    dd          0041FE36
 0041FDD5    dd          0041FE24
 0041FDD5    dd          0041FEB2
 0041FDD5    dd          0041FF08
 0041FDD5    dd          00420141
 0041FDD5    dd          00420083
 0041FDD5    dd          004200C9
 0041FDD5    dd          0041FE24
 0041FDD5    dd          0041FE24
 0041FDD5    dd          0041FEB2
 0041FDD5    dd          00420110
 0041FDD5    dd          00420188
 0041FDD5    dd          0041FF08
 0041FDD5    dd          0042022A
 0041FDD5    dd          0041FE24
 0041FDD5    dd          004201E0
 0041FDD5    dd          00420271
 0041FDD5    dd          00420307
 0041FE24    mov         edx,dword ptr [ebp-28]
 0041FE27    mov         ecx,dword ptr [ebp+14]
 0041FE2A    xor         eax,eax
 0041FE2C    call        0041F50C
>0041FE31    jmp         00420347
 0041FE36    cmp         dword ptr [ebp-4],10
>0041FE3A    jg          0041FE42
 0041FE3C    cmp         dword ptr [ebp-4],0FFFFFFFF
>0041FE40    jne         0041FE47
 0041FE42    xor         eax,eax
 0041FE44    mov         dword ptr [ebp-4],eax
 0041FE47    movzx       eax,word ptr [ebp-6]
 0041FE4B    sub         ax,44
>0041FE4F    je          0041FE5F
 0041FE51    sub         ax,11
>0041FE55    je          0041FE6C
 0041FE57    sub         ax,3
>0041FE5B    je          0041FE79
>0041FE5D    jmp         0041FE88
 0041FE5F    lea         edx,[ebp-1C]
 0041FE62    mov         eax,dword ptr [ebp-48]
 0041FE65    call        IntToStr
>0041FE6A    jmp         0041FE95
 0041FE6C    lea         edx,[ebp-1C]
 0041FE6F    mov         eax,dword ptr [ebp-48]
 0041FE72    call        0041E348
>0041FE77    jmp         0041FE95
 0041FE79    lea         ecx,[ebp-1C]
 0041FE7C    xor         edx,edx
 0041FE7E    mov         eax,dword ptr [ebp-48]
 0041FE81    call        IntToHex
>0041FE86    jmp         0041FE95
 0041FE88    mov         edx,dword ptr [ebp-28]
 0041FE8B    mov         ecx,dword ptr [ebp+14]
 0041FE8E    xor         eax,eax
 0041FE90    call        0041F50C
 0041FE95    push        ebp
 0041FE96    mov         eax,dword ptr [ebp-1C]
 0041FE99    call        @UStrToPWChar
 0041FE9E    or          ecx,0FFFFFFFF
 0041FEA1    or          edx,0FFFFFFFF
 0041FEA4    call        0041F83C
 0041FEA9    pop         ecx
 0041FEAA    mov         byte ptr [ebp-35],al
>0041FEAD    jmp         00420347
 0041FEB2    cmp         word ptr [ebp-6],53
>0041FEB7    jne         0041FEF6
 0041FEB9    cmp         byte ptr [ebp-44],2
>0041FEBD    jne         0041FECD
 0041FEBF    lea         eax,[ebp-1C]
 0041FEC2    movzx       edx,byte ptr [ebp-48]
 0041FEC6    call        @UStrFromWChar
>0041FECB    jmp         0041FED9
 0041FECD    lea         eax,[ebp-1C]
 0041FED0    movzx       edx,word ptr [ebp-48]
 0041FED4    call        @UStrFromWChar
 0041FED9    push        ebp
 0041FEDA    mov         eax,dword ptr [ebp-1C]
 0041FEDD    call        @UStrToPWChar
 0041FEE2    or          ecx,0FFFFFFFF
 0041FEE5    mov         edx,dword ptr [ebp-4]
 0041FEE8    call        0041F83C
 0041FEED    pop         ecx
 0041FEEE    mov         byte ptr [ebp-35],al
>0041FEF1    jmp         00420347
 0041FEF6    mov         edx,dword ptr [ebp-28]
 0041FEF9    mov         ecx,dword ptr [ebp+14]
 0041FEFC    xor         eax,eax
 0041FEFE    call        0041F50C
>0041FF03    jmp         00420347
 0041FF08    cmp         byte ptr [ebp-44],3
>0041FF0C    jne         0041FF14
 0041FF0E    mov         byte ptr [ebp-49],0
>0041FF12    jmp         0041FF18
 0041FF14    mov         byte ptr [ebp-49],1
 0041FF18    xor         eax,eax
 0041FF1A    mov         dword ptr [ebp-3C],eax
 0041FF1D    cmp         word ptr [ebp-6],47
>0041FF22    je          0041FF2B
 0041FF24    cmp         word ptr [ebp-6],45
>0041FF29    jne         0041FF3A
 0041FF2B    cmp         dword ptr [ebp-4],12
>0041FF2F    jbe         0041FF58
 0041FF31    mov         dword ptr [ebp-4],0F
>0041FF38    jmp         0041FF58
 0041FF3A    cmp         dword ptr [ebp-4],12
>0041FF3E    jbe         0041FF58
 0041FF40    mov         dword ptr [ebp-4],2
 0041FF47    cmp         word ptr [ebp-6],4D
>0041FF4C    jne         0041FF58
 0041FF4E    mov         eax,dword ptr [ebp+8]
 0041FF51    movzx       eax,byte ptr [eax+5]
 0041FF55    mov         dword ptr [ebp-4],eax
 0041FF58    movzx       eax,word ptr [ebp-6]
 0041FF5C    add         eax,0FFFFFFBB
 0041FF5F    cmp         eax,9
>0041FF62    ja          00420049
 0041FF68    jmp         dword ptr [eax*4+41FF6F]
 0041FF68    dd          0041FFBD
 0041FF68    dd          0041FFE0
 0041FF68    dd          0041FF97
 0041FF68    dd          00420049
 0041FF68    dd          00420049
 0041FF68    dd          00420049
 0041FF68    dd          00420049
 0041FF68    dd          00420049
 0041FF68    dd          00420026
 0041FF68    dd          00420003
 0041FF97    push        0
 0041FF99    mov         eax,dword ptr [ebp-4]
 0041FF9C    push        eax
 0041FF9D    push        3
 0041FF9F    mov         eax,dword ptr [ebp+8]
 0041FFA2    push        eax
 0041FFA3    movzx       ecx,byte ptr [ebp-49]
 0041FFA7    mov         edx,dword ptr [ebp-48]
 0041FFAA    lea         eax,[ebp-0E6]
 0041FFB0    call        00420448
 0041FFB5    mov         dword ptr [ebp-3C],eax
>0041FFB8    jmp         00420056
 0041FFBD    push        1
 0041FFBF    mov         eax,dword ptr [ebp-4]
 0041FFC2    push        eax
 0041FFC3    push        3
 0041FFC5    mov         eax,dword ptr [ebp+8]
 0041FFC8    push        eax
 0041FFC9    movzx       ecx,byte ptr [ebp-49]
 0041FFCD    mov         edx,dword ptr [ebp-48]
 0041FFD0    lea         eax,[ebp-0E6]
 0041FFD6    call        00420448
 0041FFDB    mov         dword ptr [ebp-3C],eax
>0041FFDE    jmp         00420056
 0041FFE0    push        2
 0041FFE2    push        12
 0041FFE4    mov         eax,dword ptr [ebp-4]
 0041FFE7    push        eax
 0041FFE8    mov         eax,dword ptr [ebp+8]
 0041FFEB    push        eax
 0041FFEC    movzx       ecx,byte ptr [ebp-49]
 0041FFF0    mov         edx,dword ptr [ebp-48]
 0041FFF3    lea         eax,[ebp-0E6]
 0041FFF9    call        00420448
 0041FFFE    mov         dword ptr [ebp-3C],eax
>00420001    jmp         00420056
 00420003    push        3
 00420005    push        12
 00420007    mov         eax,dword ptr [ebp-4]
 0042000A    push        eax
 0042000B    mov         eax,dword ptr [ebp+8]
 0042000E    push        eax
 0042000F    movzx       ecx,byte ptr [ebp-49]
 00420013    mov         edx,dword ptr [ebp-48]
 00420016    lea         eax,[ebp-0E6]
 0042001C    call        00420448
 00420021    mov         dword ptr [ebp-3C],eax
>00420024    jmp         00420056
 00420026    push        4
 00420028    push        12
 0042002A    mov         eax,dword ptr [ebp-4]
 0042002D    push        eax
 0042002E    mov         eax,dword ptr [ebp+8]
 00420031    push        eax
 00420032    movzx       ecx,byte ptr [ebp-49]
 00420036    mov         edx,dword ptr [ebp-48]
 00420039    lea         eax,[ebp-0E6]
 0042003F    call        00420448
 00420044    mov         dword ptr [ebp-3C],eax
>00420047    jmp         00420056
 00420049    mov         edx,dword ptr [ebp-28]
 0042004C    mov         ecx,dword ptr [ebp+14]
 0042004F    xor         eax,eax
 00420051    call        0041F50C
 00420056    mov         eax,dword ptr [ebp-3C]
 00420059    mov         word ptr [ebp+eax*2-0E6],0
 00420063    xor         eax,eax
 00420065    mov         dword ptr [ebp-4],eax
 00420068    push        ebp
 00420069    lea         eax,[ebp-0E6]
 0042006F    or          ecx,0FFFFFFFF
 00420072    or          edx,0FFFFFFFF
 00420075    call        0041F83C
 0042007A    pop         ecx
 0042007B    mov         byte ptr [ebp-35],al
>0042007E    jmp         00420347
 00420083    cmp         word ptr [ebp-6],50
>00420088    jne         004200B7
 0042008A    lea         ecx,[ebp-1C]
 0042008D    mov         edx,8
 00420092    mov         eax,dword ptr [ebp-48]
 00420095    call        IntToHex
 0042009A    push        ebp
 0042009B    mov         eax,dword ptr [ebp-1C]
 0042009E    call        @UStrToPWChar
 004200A3    or          ecx,0FFFFFFFF
 004200A6    or          edx,0FFFFFFFF
 004200A9    call        0041F83C
 004200AE    pop         ecx
 004200AF    mov         byte ptr [ebp-35],al
>004200B2    jmp         00420347
 004200B7    mov         edx,dword ptr [ebp-28]
 004200BA    mov         ecx,dword ptr [ebp+14]
 004200BD    xor         eax,eax
 004200BF    call        0041F50C
>004200C4    jmp         00420347
 004200C9    cmp         word ptr [ebp-6],53
>004200CE    jne         004200FE
 004200D0    push        ebp
 004200D1    lea         eax,[ebp-0F8]
 004200D7    mov         edx,dword ptr [ebp-48]
 004200DA    call        @UStrFromPChar
 004200DF    mov         eax,dword ptr [ebp-0F8]
 004200E5    call        @UStrToPWChar
 004200EA    or          ecx,0FFFFFFFF
 004200ED    mov         edx,dword ptr [ebp-4]
 004200F0    call        0041F83C
 004200F5    pop         ecx
 004200F6    mov         byte ptr [ebp-35],al
>004200F9    jmp         00420347
 004200FE    mov         edx,dword ptr [ebp-28]
 00420101    mov         ecx,dword ptr [ebp+14]
 00420104    xor         eax,eax
 00420106    call        0041F50C
>0042010B    jmp         00420347
 00420110    cmp         word ptr [ebp-6],53
>00420115    jne         0042012F
 00420117    push        ebp
 00420118    or          ecx,0FFFFFFFF
 0042011B    mov         edx,dword ptr [ebp-4]
 0042011E    mov         eax,dword ptr [ebp-48]
 00420121    call        0041F83C
 00420126    pop         ecx
 00420127    mov         byte ptr [ebp-35],al
>0042012A    jmp         00420347
 0042012F    mov         edx,dword ptr [ebp-28]
 00420132    mov         ecx,dword ptr [ebp+14]
 00420135    xor         eax,eax
 00420137    call        0041F50C
>0042013C    jmp         00420347
 00420141    cmp         word ptr [ebp-6],53
>00420146    jne         00420176
 00420148    push        ebp
 00420149    lea         eax,[ebp-0FC]
 0042014F    mov         edx,dword ptr [ebp-48]
 00420152    call        @UStrFromString
 00420157    mov         eax,dword ptr [ebp-0FC]
 0042015D    call        @UStrToPWChar
 00420162    or          ecx,0FFFFFFFF
 00420165    mov         edx,dword ptr [ebp-4]
 00420168    call        0041F83C
 0042016D    pop         ecx
 0042016E    mov         byte ptr [ebp-35],al
>00420171    jmp         00420347
 00420176    mov         edx,dword ptr [ebp-28]
 00420179    mov         ecx,dword ptr [ebp+14]
 0042017C    xor         eax,eax
 0042017E    call        0041F50C
>00420183    jmp         00420347
 00420188    cmp         word ptr [ebp-6],53
>0042018D    jne         004201CE
 0042018F    lea         eax,[ebp-1C]
 00420192    mov         edx,dword ptr [ebp-48]
 00420195    call        @UStrFromLStr
 0042019A    mov         eax,dword ptr [ebp-1C]
 0042019D    mov         dword ptr [ebp-5C],eax
 004201A0    cmp         dword ptr [ebp-5C],0
>004201A4    je          004201B1
 004201A6    mov         eax,dword ptr [ebp-5C]
 004201A9    sub         eax,4
 004201AC    mov         eax,dword ptr [eax]
 004201AE    mov         dword ptr [ebp-5C],eax
 004201B1    push        ebp
 004201B2    mov         eax,dword ptr [ebp-1C]
 004201B5    call        @UStrToPWChar
 004201BA    mov         ecx,dword ptr [ebp-5C]
 004201BD    mov         edx,dword ptr [ebp-4]
 004201C0    call        0041F83C
 004201C5    pop         ecx
 004201C6    mov         byte ptr [ebp-35],al
>004201C9    jmp         00420347
 004201CE    mov         edx,dword ptr [ebp-28]
 004201D1    mov         ecx,dword ptr [ebp+14]
 004201D4    xor         eax,eax
 004201D6    call        0041F50C
>004201DB    jmp         00420347
 004201E0    cmp         word ptr [ebp-6],53
>004201E5    jne         00420218
 004201E7    mov         eax,dword ptr [ebp-48]
 004201EA    mov         dword ptr [ebp-60],eax
 004201ED    cmp         dword ptr [ebp-60],0
>004201F1    je          00420200
 004201F3    mov         eax,dword ptr [ebp-60]
 004201F6    sub         eax,4
 004201F9    mov         eax,dword ptr [eax]
 004201FB    shr         eax,1
 004201FD    mov         dword ptr [ebp-60],eax
 00420200    push        ebp
 00420201    mov         ecx,dword ptr [ebp-60]
 00420204    mov         edx,dword ptr [ebp-4]
 00420207    mov         eax,dword ptr [ebp-48]
 0042020A    call        0041F83C
 0042020F    pop         ecx
 00420210    mov         byte ptr [ebp-35],al
>00420213    jmp         00420347
 00420218    mov         edx,dword ptr [ebp-28]
 0042021B    mov         ecx,dword ptr [ebp+14]
 0042021E    xor         eax,eax
 00420220    call        0041F50C
>00420225    jmp         00420347
 0042022A    cmp         word ptr [ebp-6],53
>0042022F    jne         0042025F
 00420231    push        ebp
 00420232    lea         edx,[ebp-100]
 00420238    mov         eax,dword ptr [ebp-48]
 0042023B    call        0041F9BC
 00420240    mov         eax,dword ptr [ebp-100]
 00420246    call        @UStrToPWChar
 0042024B    or          ecx,0FFFFFFFF
 0042024E    mov         edx,dword ptr [ebp-4]
 00420251    call        0041F83C
 00420256    pop         ecx
 00420257    mov         byte ptr [ebp-35],al
>0042025A    jmp         00420347
 0042025F    mov         edx,dword ptr [ebp-28]
 00420262    mov         ecx,dword ptr [ebp+14]
 00420265    xor         eax,eax
 00420267    call        0041F50C
>0042026C    jmp         00420347
 00420271    cmp         dword ptr [ebp-4],20
>00420275    jg          0042027D
 00420277    cmp         dword ptr [ebp-4],0FFFFFFFF
>0042027B    jne         00420282
 0042027D    xor         eax,eax
 0042027F    mov         dword ptr [ebp-4],eax
 00420282    movzx       eax,word ptr [ebp-6]
 00420286    sub         ax,44
>0042028A    je          0042029A
 0042028C    sub         ax,11
>00420290    je          004202AC
 00420292    sub         ax,3
>00420296    je          004202CC
>00420298    jmp         004202E0
 0042029A    mov         eax,dword ptr [ebp-48]
 0042029D    push        dword ptr [eax+4]
 004202A0    push        dword ptr [eax]
 004202A2    lea         eax,[ebp-1C]
 004202A5    call        0041E304
>004202AA    jmp         004202ED
 004202AC    mov         eax,dword ptr [ebp-48]
 004202AF    mov         edx,dword ptr [eax]
 004202B1    mov         dword ptr [ebp-58],edx
 004202B4    mov         edx,dword ptr [eax+4]
 004202B7    mov         dword ptr [ebp-54],edx
 004202BA    mov         eax,dword ptr [ebp-58]
 004202BD    mov         edx,dword ptr [ebp-54]
 004202C0    push        edx
 004202C1    push        eax
 004202C2    lea         eax,[ebp-1C]
 004202C5    call        0041E35C
>004202CA    jmp         004202ED
 004202CC    mov         eax,dword ptr [ebp-48]
 004202CF    push        dword ptr [eax+4]
 004202D2    push        dword ptr [eax]
 004202D4    lea         edx,[ebp-1C]
 004202D7    xor         eax,eax
 004202D9    call        0041E52C
>004202DE    jmp         004202ED
 004202E0    mov         edx,dword ptr [ebp-28]
 004202E3    mov         ecx,dword ptr [ebp+14]
 004202E6    xor         eax,eax
 004202E8    call        0041F50C
 004202ED    push        ebp
 004202EE    mov         eax,dword ptr [ebp-1C]
 004202F1    call        @UStrToPWChar
 004202F6    or          ecx,0FFFFFFFF
 004202F9    or          edx,0FFFFFFFF
 004202FC    call        0041F83C
 00420301    pop         ecx
 00420302    mov         byte ptr [ebp-35],al
>00420305    jmp         00420347
 00420307    cmp         word ptr [ebp-6],53
>0042030C    jne         0042033A
 0042030E    mov         eax,dword ptr [ebp-48]
 00420311    mov         dword ptr [ebp-64],eax
 00420314    cmp         dword ptr [ebp-64],0
>00420318    je          00420325
 0042031A    mov         eax,dword ptr [ebp-64]
 0042031D    sub         eax,4
 00420320    mov         eax,dword ptr [eax]
 00420322    mov         dword ptr [ebp-64],eax
 00420325    push        ebp
 00420326    mov         ecx,dword ptr [ebp-64]
 00420329    mov         edx,dword ptr [ebp-4]
 0042032C    mov         eax,dword ptr [ebp-48]
 0042032F    call        0041F83C
 00420334    pop         ecx
 00420335    mov         byte ptr [ebp-35],al
>00420338    jmp         00420347
 0042033A    mov         edx,dword ptr [ebp-28]
 0042033D    mov         ecx,dword ptr [ebp+14]
 00420340    xor         eax,eax
 00420342    call        0041F50C
 00420347    cmp         byte ptr [ebp-35],0
>0042034B    je          0042038F
 0042034D    mov         eax,dword ptr [ebp-20]
 00420350    mov         edx,dword ptr [ebp-14]
 00420353    sub         edx,eax
 00420355    sar         edx,1
>00420357    jns         0042035C
 00420359    adc         edx,0
 0042035C    mov         dword ptr [ebp-2C],edx
>0042035F    jmp         004203A9
 00420361    cmp         dword ptr [ebp-10],0
>00420365    jne         0042037B
 00420367    mov         eax,dword ptr [ebp-20]
 0042036A    mov         edx,dword ptr [ebp-14]
 0042036D    sub         edx,eax
 0042036F    sar         edx,1
>00420371    jns         00420376
 00420373    adc         edx,0
 00420376    mov         dword ptr [ebp-2C],edx
>00420379    jmp         004203A9
 0042037B    mov         eax,dword ptr [ebp-14]
 0042037E    movzx       edx,word ptr [ebx]
 00420381    mov         word ptr [eax],dx
 00420384    add         ebx,2
 00420387    add         dword ptr [ebp-14],2
 0042038B    sub         dword ptr [ebp-10],2
 0042038F    cmp         esi,ebx
>00420391    ja          0041FAA4
 00420397    mov         eax,dword ptr [ebp-20]
 0042039A    mov         edx,dword ptr [ebp-14]
 0042039D    sub         edx,eax
 0042039F    sar         edx,1
>004203A1    jns         004203A6
 004203A3    adc         edx,0
 004203A6    mov         dword ptr [ebp-2C],edx
 004203A9    xor         eax,eax
 004203AB    pop         edx
 004203AC    pop         ecx
 004203AD    pop         ecx
 004203AE    mov         dword ptr fs:[eax],edx
 004203B1    push        4203D6
 004203B6    lea         eax,[ebp-100]
 004203BC    mov         edx,6
 004203C1    call        @UStrArrayClr
 004203C6    lea         eax,[ebp-1C]
 004203C9    call        @UStrClr
 004203CE    ret
>004203CF    jmp         @HandleFinally
>004203D4    jmp         004203B6
 004203D6    mov         eax,dword ptr [ebp-2C]
 004203D9    pop         edi
 004203DA    pop         esi
 004203DB    pop         ebx
 004203DC    mov         esp,ebp
 004203DE    pop         ebp
 004203DF    ret         10
end;*}

//00420448
{*function sub_00420448(?:PWideChar; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00420448    push        ebp
 00420449    mov         ebp,esp
 0042044B    add         esp,0FFFFFFD4
 0042044E    push        edi
 0042044F    push        esi
 00420450    push        ebx
 00420451    mov         dword ptr [ebp-4],eax
 00420454    mov         dword ptr [ebp-8],0
 0042045B    mov         eax,dword ptr [ebp+8]
 0042045E    mov         eax,dword ptr [eax]
 00420460    mov         dword ptr [ebp-0C],eax
 00420463    mov         eax,dword ptr [ebp+8]
 00420466    mov         ax,word ptr [eax+0C2]
 0042046D    mov         word ptr [ebp-0E],ax
 00420471    mov         eax,dword ptr [ebp+8]
 00420474    mov         ax,word ptr [eax+0C0]
 0042047B    mov         word ptr [ebp-10],ax
 0042047F    mov         eax,dword ptr [ebp+8]
 00420482    mov         al,byte ptr [eax+4]
 00420485    mov         byte ptr [ebp-11],al
 00420488    mov         eax,dword ptr [ebp+8]
 0042048B    mov         al,byte ptr [eax+0C6]
 00420491    mov         byte ptr [ebp-12],al
 00420494    mov         eax,13
 00420499    cmp         cl,0
>0042049C    jne         004204B5
 0042049E    mov         eax,dword ptr [ebp+10]
 004204A1    cmp         eax,2
>004204A4    jge         004204AB
 004204A6    mov         eax,2
 004204AB    cmp         eax,12
>004204AE    jle         004204B5
 004204B0    mov         eax,12
 004204B5    mov         dword ptr [ebp+10],eax
 004204B8    push        eax
 004204B9    mov         eax,270F
 004204BE    cmp         byte ptr [ebp+14],2
>004204C2    jb          004204C7
 004204C4    mov         eax,dword ptr [ebp+0C]
 004204C7    push        eax
 004204C8    lea         eax,[ebp-2A]
 004204CB    call        00420768
 004204D0    mov         edi,dword ptr [ebp-4]
 004204D3    movzx       eax,word ptr [ebp-2A]
 004204D7    sub         eax,7FFF
 004204DC    cmp         eax,2
>004204DF    jae         004204FE
 004204E1    mov         ecx,eax
 004204E3    call        00420565
 004204E8    shl         ecx,1
 004204EA    lea         esi,[ecx+ecx*2+42054E]
 004204F1    add         esi,dword ptr [ebp-8]
 004204F4    mov         ecx,3
 004204F9    rep movs    word ptr [edi],word ptr [esi]
>004204FC    jmp         0042052B
 004204FE    lea         esi,[ebp-27]
 00420501    movzx       ebx,byte ptr [ebp+14]
 00420505    cmp         bl,1
>00420508    je          0042051A
 0042050A    cmp         bl,4
>0042050D    ja          00420518
 0042050F    movsx       eax,word ptr [ebp-2A]
 00420513    cmp         eax,dword ptr [ebp+10]
>00420516    jle         0042051A
 00420518    mov         bl,0
 0042051A    lea         ebx,[ebx*4+42053A]
 00420521    add         ebx,dword ptr [ebp-8]
 00420524    mov         ebx,dword ptr [ebx]
 00420526    add         ebx,dword ptr [ebp-8]
 00420529    call        ebx
 0042052B    mov         eax,edi
 0042052D    sub         eax,dword ptr [ebp-4]
 00420530    shr         eax,1
 00420532    pop         ebx
 00420533    pop         esi
 00420534    pop         edi
>00420535    jmp         00420762
>0042053A    jb          00420541
 0042053C    inc         edx
 0042053D    add         dl,ah
 0042053F    add         eax,61F0042
 00420544    inc         edx
 00420545    add         byte ptr [edi],bl
 00420547    push        es
 00420548    inc         edx
 00420549    add         byte ptr [edi+49004206],dl
 0042054F    add         byte ptr [esi],cl
 00420552    inc         esi
 00420553    add         byte ptr [esi],cl
 00420556    inc         ecx
 00420557    add         byte ptr [esi],cl
 0042055A    lods        byte ptr [esi]
 0042055B    or          al,al
>0042055D    jne         00420562
 0042055F    mov         al,30
 00420561    dec         esi
 00420562    xor         ah,ah
 00420564    ret
end;*}

//00420565
procedure sub_00420565;
begin
{*
 00420565    cmp         byte ptr [ebp-28],0
>00420569    je          00420571
 0042056B    mov         ax,2D
 0042056F    stos        word ptr [edi]
 00420571    ret
*}
end;

//00420768
{*procedure sub_00420768(?:?; ?:?);
begin
 00420768    push        ebp
 00420769    mov         ebp,esp
 0042076B    add         esp,0FFFFFFD8
 0042076E    push        edi
 0042076F    push        esi
 00420770    push        ebx
 00420771    mov         ebx,eax
 00420773    mov         esi,edx
 00420775    mov         dword ptr [ebp-4],0
 0042077C    cmp         cl,0
>0042077F    je          0042078B
 00420781    call        004208B7
>00420786    jmp         0042098B
 0042078B    call        00420795
>00420790    jmp         0042098B
 00420795    mov         ax,word ptr [esi+8]
 00420799    mov         edx,eax
 0042079B    and         eax,7FFF
>004207A0    je          004207C0
 004207A2    cmp         eax,7FFF
>004207A7    jne         004207CB
 004207A9    test        word ptr [esi+6],8000
>004207AF    je          004207C2
 004207B1    cmp         dword ptr [esi],0
>004207B4    jne         004207BF
 004207B6    cmp         dword ptr [esi+4],80000000
>004207BD    je          004207C2
 004207BF    inc         eax
 004207C0    xor         edx,edx
 004207C2    mov         byte ptr [ebx+3],0
>004207C6    jmp         00420898
 004207CB    fld         tbyte ptr [esi]
 004207CD    sub         eax,3FFF
 004207D2    imul        eax,eax,4D10
 004207D8    sar         eax,10
 004207DB    inc         eax
 004207DC    mov         dword ptr [ebp-8],eax
 004207DF    mov         eax,12
 004207E4    sub         eax,dword ptr [ebp-8]
 004207E7    fabs
 004207E9    push        ebx
 004207EA    mov         ebx,dword ptr [ebp-4]
 004207ED    call        00406B68
 004207F2    pop         ebx
 004207F3    frndint
 004207F5    mov         edi,dword ptr [ebp-4]
 004207F8    fld         tbyte ptr [edi+79F430]
 004207FE    fcomp       st(1)
 00420800    wait
 00420801    fnstsw      word ptr [ebp-0A]
 00420804    wait
 00420805    test        word ptr [ebp-0A],4100
>0042080B    je          00420816
 0042080D    fidiv       dword ptr [edi+79F43C];1,40129846432482E-44:Single
 00420813    inc         dword ptr [ebp-8]
 00420816    fbstp       tbyte ptr [ebp-20]
 00420819    lea         edi,[ebx+3]
 0042081C    mov         edx,9
 00420821    wait
 00420822    mov         al,byte ptr [edx+ebp-21]
 00420826    mov         ah,al
 00420828    shr         al,4
 0042082B    and         ah,0F
 0042082E    add         ax,3030
 00420832    stos        word ptr [edi]
 00420834    dec         edx
>00420835    jne         00420822
 00420837    xor         al,al
 00420839    stos        byte ptr [edi]
 0042083A    mov         edi,dword ptr [ebp-8]
 0042083D    add         edi,dword ptr [ebp+8]
>00420840    jns         00420849
 00420842    xor         eax,eax
>00420844    jmp         004207C0
 00420849    cmp         edi,dword ptr [ebp+0C]
>0042084C    jb          00420851
 0042084E    mov         edi,dword ptr [ebp+0C]
 00420851    cmp         edi,12
>00420854    jae         0042087D
 00420856    cmp         byte ptr [ebx+edi+3],35
>0042085B    jb          00420882
 0042085D    mov         byte ptr [ebx+edi+3],0
 00420862    dec         edi
>00420863    js          00420872
 00420865    inc         byte ptr [ebx+edi+3]
 00420869    cmp         byte ptr [ebx+edi+3],39
>0042086E    ja          0042085D
>00420870    jmp         00420891
 00420872    mov         word ptr [ebx+3],31
 00420878    inc         dword ptr [ebp-8]
>0042087B    jmp         00420891
 0042087D    mov         edi,12
 00420882    mov         byte ptr [ebx+edi+3],0
 00420887    dec         edi
>00420888    js          004208A3
 0042088A    cmp         byte ptr [ebx+edi+3],30
>0042088F    je          00420882
 00420891    mov         dx,word ptr [esi+8]
 00420895    mov         eax,dword ptr [ebp-8]
 00420898    shr         dx,0F
 0042089C    mov         word ptr [ebx],ax
 0042089F    mov         byte ptr [ebx+2],dl
 004208A2    ret
end;*}

//00420795
procedure sub_00420795;
begin
{*
 00420795    mov         ax,word ptr [esi+8]
 00420799    mov         edx,eax
 0042079B    and         eax,7FFF
>004207A0    je          004207C0
 004207A2    cmp         eax,7FFF
>004207A7    jne         004207CB
 004207A9    test        word ptr [esi+6],8000
>004207AF    je          004207C2
 004207B1    cmp         dword ptr [esi],0
>004207B4    jne         004207BF
 004207B6    cmp         dword ptr [esi+4],80000000
>004207BD    je          004207C2
 004207BF    inc         eax
 004207C0    xor         edx,edx
 004207C2    mov         byte ptr [ebx+3],0
>004207C6    jmp         00420898
 004207CB    fld         tbyte ptr [esi]
 004207CD    sub         eax,3FFF
 004207D2    imul        eax,eax,4D10
 004207D8    sar         eax,10
 004207DB    inc         eax
 004207DC    mov         dword ptr [ebp-8],eax
 004207DF    mov         eax,12
 004207E4    sub         eax,dword ptr [ebp-8]
 004207E7    fabs
 004207E9    push        ebx
 004207EA    mov         ebx,dword ptr [ebp-4]
 004207ED    call        00406B68
 004207F2    pop         ebx
 004207F3    frndint
 004207F5    mov         edi,dword ptr [ebp-4]
 004207F8    fld         tbyte ptr [edi+79F430]
 004207FE    fcomp       st(1)
 00420800    wait
 00420801    fnstsw      word ptr [ebp-0A]
 00420804    wait
 00420805    test        word ptr [ebp-0A],4100
>0042080B    je          00420816
 0042080D    fidiv       dword ptr [edi+79F43C];1,40129846432482E-44:Single
 00420813    inc         dword ptr [ebp-8]
 00420816    fbstp       tbyte ptr [ebp-20]
 00420819    lea         edi,[ebx+3]
 0042081C    mov         edx,9
 00420821    wait
 00420822    mov         al,byte ptr [edx+ebp-21]
 00420826    mov         ah,al
 00420828    shr         al,4
 0042082B    and         ah,0F
 0042082E    add         ax,3030
 00420832    stos        word ptr [edi]
 00420834    dec         edx
>00420835    jne         00420822
 00420837    xor         al,al
 00420839    stos        byte ptr [edi]
 0042083A    mov         edi,dword ptr [ebp-8]
 0042083D    add         edi,dword ptr [ebp+8]
>00420840    jns         00420849
 00420842    xor         eax,eax
>00420844    jmp         004207C0
 00420849    cmp         edi,dword ptr [ebp+0C]
>0042084C    jb          00420851
 0042084E    mov         edi,dword ptr [ebp+0C]
 00420851    cmp         edi,12
>00420854    jae         0042087D
 00420856    cmp         byte ptr [ebx+edi+3],35
>0042085B    jb          00420882
 0042085D    mov         byte ptr [ebx+edi+3],0
 00420862    dec         edi
>00420863    js          00420872
 00420865    inc         byte ptr [ebx+edi+3]
 00420869    cmp         byte ptr [ebx+edi+3],39
>0042086E    ja          0042085D
>00420870    jmp         00420891
 00420872    mov         word ptr [ebx+3],31
 00420878    inc         dword ptr [ebp-8]
>0042087B    jmp         00420891
 0042087D    mov         edi,12
 00420882    mov         byte ptr [ebx+edi+3],0
 00420887    dec         edi
>00420888    js          004208A3
 0042088A    cmp         byte ptr [ebx+edi+3],30
>0042088F    je          00420882
 00420891    mov         dx,word ptr [esi+8]
 00420895    mov         eax,dword ptr [ebp-8]
 00420898    shr         dx,0F
 0042089C    mov         word ptr [ebx],ax
 0042089F    mov         byte ptr [ebx+2],dl
 004208A2    ret
*}
end;

//004208B7
procedure sub_004208B7;
begin
{*
 004208B7    mov         eax,dword ptr [esi]
 004208B9    mov         edx,dword ptr [esi+4]
 004208BC    mov         ecx,eax
 004208BE    or          ecx,edx
>004208C0    je          0042097D
 004208C6    or          edx,edx
>004208C8    jns         004208D1
 004208CA    neg         edx
 004208CC    neg         eax
 004208CE    sbb         edx,0
 004208D1    xor         ecx,ecx
 004208D3    mov         edi,dword ptr [ebp+8]
 004208D6    or          edi,edi
>004208D8    jge         004208DC
 004208DA    xor         edi,edi
 004208DC    cmp         edi,4
>004208DF    jl          00420900
 004208E1    mov         edi,4
 004208E6    inc         ecx
 004208E7    sub         eax,0A7640000
 004208EC    sbb         edx,0DE0B6B3
>004208F2    jae         004208E6
 004208F4    dec         ecx
 004208F5    add         eax,0A7640000
 004208FA    adc         edx,0DE0B6B3
 00420900    mov         dword ptr [ebp-28],eax
 00420903    mov         dword ptr [ebp-24],edx
 00420906    fild        qword ptr [ebp-28]
 00420909    mov         edx,edi
 0042090B    mov         eax,4
 00420910    sub         eax,edx
>00420912    je          0042091E
 00420914    mov         edi,dword ptr [ebp-4]
 00420917    fidiv       dword ptr [edi+eax*4+4208A3]
 0042091E    fbstp       tbyte ptr [ebp-20]
 00420921    lea         edi,[ebx+3]
 00420924    wait
 00420925    or          ecx,ecx
>00420927    jne         00420944
 00420929    mov         ecx,9
 0042092E    mov         al,byte ptr [ecx+ebp-21]
 00420932    mov         ah,al
 00420934    shr         al,4
>00420937    jne         00420957
 00420939    mov         al,ah
 0042093B    and         al,0F
>0042093D    jne         0042095E
 0042093F    dec         ecx
>00420940    jne         0042092E
>00420942    jmp         0042097D
 00420944    mov         al,cl
 00420946    add         al,30
 00420948    stos        byte ptr [edi]
 00420949    mov         ecx,9
 0042094E    mov         al,byte ptr [ecx+ebp-21]
 00420952    mov         ah,al
 00420954    shr         al,4
 00420957    add         al,30
 00420959    stos        byte ptr [edi]
 0042095A    mov         al,ah
 0042095C    and         al,0F
 0042095E    add         al,30
 00420960    stos        byte ptr [edi]
 00420961    dec         ecx
>00420962    jne         0042094E
 00420964    mov         eax,edi
 00420966    lea         ecx,[ebx+edx+3]
 0042096A    sub         eax,ecx
 0042096C    mov         byte ptr [edi],0
 0042096F    dec         edi
 00420970    cmp         byte ptr [edi],30
>00420973    je          0042096C
 00420975    mov         edx,dword ptr [esi+4]
 00420978    shr         edx,1F
>0042097B    jmp         00420984
 0042097D    xor         eax,eax
 0042097F    xor         edx,edx
 00420981    mov         byte ptr [ebx+3],al
 00420984    mov         word ptr [ebx],ax
 00420987    mov         byte ptr [ebx+2],dl
 0042098A    ret
*}
end;

//00420994
{*procedure sub_00420994(?:PWideChar; ?:?; ?:?; ?:?);
begin
 00420994    push        ebp
 00420995    mov         ebp,esp
 00420997    add         esp,0FFFFFFF0
 0042099A    push        edi
 0042099B    push        esi
 0042099C    push        ebx
 0042099D    mov         esi,eax
 0042099F    mov         edi,edx
 004209A1    mov         byte ptr [ebp-1],cl
 004209A4    mov         dword ptr [ebp-8],0
 004209AB    mov         eax,dword ptr [ebp+8]
 004209AE    mov         ax,word ptr [eax+0C2]
 004209B5    mov         word ptr [ebp-0A],ax
 004209B9    wait
 004209BA    fnstcw      word ptr [ebp-0C]
 004209BD    wait
 004209BE    fnclex
 004209C0    fldcw       word ptr ds:[79F440]
 004209C6    fldz
 004209C8    call        00420A66
 004209CD    mov         bx,word ptr [esi]
 004209D0    cmp         bx,2B
>004209D4    je          004209DC
 004209D6    cmp         bx,2D
>004209DA    jne         004209DF
 004209DC    add         esi,2
 004209DF    mov         ecx,esi
 004209E1    call        00420A77
 004209E6    xor         edx,edx
 004209E8    mov         ax,word ptr [esi]
 004209EB    cmp         ax,word ptr [ebp-0A]
>004209EF    jne         004209FB
 004209F1    add         esi,2
 004209F4    call        00420A77
 004209F9    neg         edx
 004209FB    cmp         ecx,esi
>004209FD    je          00420A59
 004209FF    mov         ax,word ptr [esi]
 00420A02    and         ax,0DF
 00420A06    cmp         ax,45
>00420A0A    jne         00420A18
 00420A0C    add         esi,2
 00420A0F    push        edx
 00420A10    call        00420A9A
 00420A15    pop         eax
 00420A16    add         edx,eax
 00420A18    call        00420A66
 00420A1D    cmp         word ptr [esi],0
>00420A21    jne         00420A59
 00420A23    mov         eax,edx
 00420A25    cmp         byte ptr [ebp-1],1
>00420A29    jne         00420A2E
 00420A2B    add         eax,4
 00420A2E    push        ebx
 00420A2F    mov         ebx,dword ptr [ebp-8]
 00420A32    call        00406B68
 00420A37    pop         ebx
 00420A38    cmp         bx,2D
>00420A3C    jne         00420A40
 00420A3E    fchs
 00420A40    cmp         byte ptr [ebp-1],0
>00420A44    je          00420A4A
 00420A46    fistp       qword ptr [edi]
>00420A48    jmp         00420A4C
 00420A4A    fstp        tbyte ptr [edi]
 00420A4C    wait
 00420A4D    fnstsw      al
 00420A4F    test        ax,9
>00420A53    jne         00420A5B
 00420A55    mov         al,1
>00420A57    jmp         00420A5D
 00420A59    fstp        st(0)
 00420A5B    xor         eax,eax
 00420A5D    wait
 00420A5E    fnclex
 00420A60    fldcw       word ptr [ebp-0C]
 00420A63    wait
>00420A64    jmp         00420AD6
 00420A66    lods        word ptr [esi]
 00420A68    or          ax,ax
>00420A6B    je          00420A73
 00420A6D    cmp         ax,20
>00420A71    je          00420A66
 00420A73    sub         esi,2
 00420A76    ret
 00420A77    xor         eax,eax
 00420A79    xor         edx,edx
 00420A7B    lods        word ptr [esi]
 00420A7D    sub         ax,3A
 00420A81    add         ax,0A
>00420A85    jae         00420A96
 00420A87    fimul       dword ptr ds:[79F43C];1,40129846432482E-44:Single
 00420A8D    mov         dword ptr [ebp-10],eax
 00420A90    fiadd       dword ptr [ebp-10]
 00420A93    inc         edx
>00420A94    jmp         00420A7B
 00420A96    sub         esi,2
 00420A99    ret
 00420A9A    xor         eax,eax
 00420A9C    xor         edx,edx
 00420A9E    mov         cx,word ptr [esi]
 00420AA1    cmp         cx,2B
>00420AA5    je          00420AAD
 00420AA7    cmp         cx,2D
>00420AAB    jne         00420AB0
 00420AAD    add         esi,2
 00420AB0    mov         ax,word ptr [esi]
 00420AB3    sub         ax,3A
 00420AB7    add         ax,0A
>00420ABB    jae         00420ACD
 00420ABD    add         esi,2
 00420AC0    imul        edx,edx,0A
 00420AC3    add         edx,eax
 00420AC5    cmp         edx,1F4
>00420ACB    jb          00420AB0
 00420ACD    cmp         cx,2D
>00420AD1    jne         00420AD5
 00420AD3    neg         edx
 00420AD5    ret
 00420AD6    pop         ebx
 00420AD7    pop         esi
 00420AD8    pop         edi
 00420AD9    mov         esp,ebp
 00420ADB    pop         ebp
 00420ADC    ret         4
end;*}

//00420A66
{*procedure sub_00420A66(?:?);
begin
 00420A66    lods        word ptr [esi]
 00420A68    or          ax,ax
>00420A6B    je          00420A73
 00420A6D    cmp         ax,20
>00420A71    je          00420A66
 00420A73    sub         esi,2
 00420A76    ret
end;*}

//00420A77
procedure sub_00420A77;
begin
{*
 00420A77    xor         eax,eax
 00420A79    xor         edx,edx
 00420A7B    lods        word ptr [esi]
 00420A7D    sub         ax,3A
 00420A81    add         ax,0A
>00420A85    jae         00420A96
 00420A87    fimul       dword ptr ds:[79F43C];1,40129846432482E-44:Single
 00420A8D    mov         dword ptr [ebp-10],eax
 00420A90    fiadd       dword ptr [ebp-10]
 00420A93    inc         edx
>00420A94    jmp         00420A7B
 00420A96    sub         esi,2
 00420A99    ret
*}
end;

//00420A9A
procedure sub_00420A9A;
begin
{*
 00420A9A    xor         eax,eax
 00420A9C    xor         edx,edx
 00420A9E    mov         cx,word ptr [esi]
 00420AA1    cmp         cx,2B
>00420AA5    je          00420AAD
 00420AA7    cmp         cx,2D
>00420AAB    jne         00420AB0
 00420AAD    add         esi,2
 00420AB0    mov         ax,word ptr [esi]
 00420AB3    sub         ax,3A
 00420AB7    add         ax,0A
>00420ABB    jae         00420ACD
 00420ABD    add         esi,2
 00420AC0    imul        edx,edx,0A
 00420AC3    add         edx,eax
 00420AC5    cmp         edx,1F4
>00420ACB    jb          00420AB0
 00420ACD    cmp         cx,2D
>00420AD1    jne         00420AD5
 00420AD3    neg         edx
 00420AD5    ret
*}
end;

//00420AE0
{*function sub_00420AE0(?:?; ?:?; ?:?):?;
begin
 00420AE0    push        ebx
 00420AE1    push        esi
 00420AE2    push        edi
 00420AE3    mov         edi,ecx
 00420AE5    mov         esi,edx
 00420AE7    mov         ebx,eax
 00420AE9    push        edi
 00420AEA    mov         eax,ebx
 00420AEC    call        @UStrToPWChar
 00420AF1    mov         edx,esi
 00420AF3    xor         ecx,ecx
 00420AF5    call        00420994
 00420AFA    pop         edi
 00420AFB    pop         esi
 00420AFC    pop         ebx
 00420AFD    ret
end;*}

//00420B00
{*procedure sub_00420B00(?:?; ?:?; ?:?);
begin
 00420B00    push        ebx
 00420B01    push        esi
 00420B02    push        edi
 00420B03    mov         edi,ecx
 00420B05    mov         esi,edx
 00420B07    mov         ebx,eax
 00420B09    push        edi
 00420B0A    mov         eax,ebx
 00420B0C    call        @UStrToPWChar
 00420B11    mov         edx,esi
 00420B13    mov         cl,1
 00420B15    call        00420994
 00420B1A    pop         edi
 00420B1B    pop         esi
 00420B1C    pop         ebx
 00420B1D    ret
end;*}

//00420B20
{*procedure sub_00420B20(?:?; ?:?; ?:?);
begin
 00420B20    push        ebp
 00420B21    mov         ebp,esp
 00420B23    add         esp,0FFFFFF80
 00420B26    push        ebx
 00420B27    push        esi
 00420B28    mov         esi,edx
 00420B2A    mov         ebx,eax
 00420B2C    push        0
 00420B2E    push        0F
 00420B30    push        0
 00420B32    push        ebx
 00420B33    lea         edx,[ebp+8]
 00420B36    lea         eax,[ebp-80]
 00420B39    xor         ecx,ecx
 00420B3B    call        00420448
 00420B40    mov         ecx,eax
 00420B42    lea         edx,[ebp-80]
 00420B45    mov         eax,esi
 00420B47    call        @UStrFromPWCharLen
 00420B4C    pop         esi
 00420B4D    pop         ebx
 00420B4E    mov         esp,ebp
 00420B50    pop         ebp
 00420B51    ret         0C
end;*}

//00420B88
{*function sub_00420B88(?:?; ?:?):?;
begin
 00420B88    push        ebx
 00420B89    push        esi
 00420B8A    add         esp,0FFFFFFEC
 00420B8D    mov         esi,edx
 00420B8F    mov         ebx,eax
 00420B91    mov         ecx,esi
 00420B93    mov         edx,esp
 00420B95    mov         eax,ebx
 00420B97    call        00420AE0
 00420B9C    test        al,al
>00420B9E    jne         00420BB9
 00420BA0    mov         dword ptr [esp+0C],ebx
 00420BA4    mov         byte ptr [esp+10],11
 00420BA9    lea         edx,[esp+0C]
 00420BAD    mov         eax,[007C43E0];^SResString1:TResStringRec
 00420BB2    xor         ecx,ecx
 00420BB4    call        ConvertErrorFmt
 00420BB9    fld         tbyte ptr [esp]
 00420BBC    add         esp,14
 00420BBF    pop         esi
 00420BC0    pop         ebx
 00420BC1    ret
end;*}

//00420BC4
{*function sub_00420BC4:?;
begin
 00420BC4    mov         ecx,7C7CC8;gvar_007C7CC8:Pointer
 00420BC9    call        00420BD0
 00420BCE    ret
end;*}

//00420BD0
{*function sub_00420BD0:?;
begin
 00420BD0    call        00420AE0
 00420BD5    ret
end;*}

//00420BD8
{*function sub_00420BD8(?:UnicodeString; ?:?):?;
begin
 00420BD8    push        esi
 00420BD9    add         esp,0FFFFFFF4
 00420BDC    mov         esi,edx
 00420BDE    mov         edx,esp
 00420BE0    call        00420AE0
 00420BE5    mov         edx,eax
 00420BE7    test        dl,dl
>00420BE9    je          00420C0F
 00420BEB    fld         tbyte ptr [esp]
 00420BEE    fld         tbyte ptr ds:[420C20];-1,7E308:Extended
 00420BF4    fcompp
 00420BF6    wait
 00420BF7    fnstsw      al
 00420BF9    sahf
>00420BFA    ja          00420C0D
 00420BFC    fld         tbyte ptr [esp]
 00420BFF    fld         tbyte ptr ds:[420C2C];1,7E308:Extended
 00420C05    fcompp
 00420C07    wait
 00420C08    fnstsw      al
 00420C0A    sahf
>00420C0B    jae         00420C0F
 00420C0D    xor         edx,edx
 00420C0F    test        dl,dl
>00420C11    je          00420C19
 00420C13    fld         tbyte ptr [esp]
 00420C16    fstp        qword ptr [esi]
 00420C18    wait
 00420C19    mov         eax,edx
 00420C1B    add         esp,0C
 00420C1E    pop         esi
 00420C1F    ret
end;*}

//00420C98
{*function sub_00420C98:?;
begin
 00420C98    call        00420B00
 00420C9D    ret
end;*}

//00420CA0
{*procedure sub_00420CA0(?:?; ?:?);
begin
 00420CA0    push        ebp
 00420CA1    mov         ebp,esp
 00420CA3    push        ebx
 00420CA4    xor         ebx,ebx
 00420CA6    mov         ecx,eax
 00420CA8    fld         qword ptr [ebp+8]
 00420CAB    fmul        dword ptr [ebx+79F444]
 00420CB1    sub         esp,8
 00420CB4    fistp       qword ptr [esp]
 00420CB7    wait
 00420CB8    pop         eax
 00420CB9    pop         edx
 00420CBA    or          edx,edx
>00420CBC    jns         00420CCF
 00420CBE    neg         edx
 00420CC0    neg         eax
 00420CC2    sbb         edx,0
 00420CC5    div         eax,dword ptr [ebx+79F448];gvar_0079F448
 00420CCB    neg         eax
>00420CCD    jmp         00420CD5
 00420CCF    div         eax,dword ptr [ebx+79F448];gvar_0079F448
 00420CD5    add         eax,0A955A
 00420CDA    mov         dword ptr [ecx],edx
 00420CDC    mov         dword ptr [ecx+4],eax
 00420CDF    pop         ebx
 00420CE0    pop         ebp
 00420CE1    ret         8
end;*}

//00420CE4
{*procedure sub_00420CE4(?:?);
begin
 00420CE4    push        ebx
 00420CE5    add         esp,0FFFFFFF0
 00420CE8    mov         edx,dword ptr [eax]
 00420CEA    test        edx,edx
>00420CEC    jl          00420CFC
 00420CEE    cmp         dword ptr [eax+4],0
>00420CF2    jle         00420CFC
 00420CF4    cmp         edx,dword ptr ds:[79F448];0x5265C00 gvar_0079F448
>00420CFA    jl          00420D25
 00420CFC    mov         ecx,dword ptr ds:[7C4F20];^SResString5:TResStringRec
 00420D02    mov         ebx,dword ptr [eax+4]
 00420D05    mov         dword ptr [esp],ebx
 00420D08    mov         byte ptr [esp+4],0
 00420D0D    mov         dword ptr [esp+8],edx
 00420D11    mov         byte ptr [esp+0C],0
 00420D16    mov         eax,esp
 00420D18    mov         edx,eax
 00420D1A    mov         eax,1
 00420D1F    xchg        eax,ecx
 00420D20    call        ConvertErrorFmt
 00420D25    add         esp,10
 00420D28    pop         ebx
 00420D29    ret
end;*}

//00420D2C
procedure sub_00420D2C;
begin
{*
 00420D2C    push        ebx
 00420D2D    xor         ebx,ebx
 00420D2F    push        eax
 00420D30    call        00420CE4
 00420D35    pop         eax
 00420D36    mov         ecx,dword ptr [eax]
 00420D38    mov         eax,dword ptr [eax+4]
 00420D3B    sub         eax,0A955A
 00420D40    imul        dword ptr [ebx+79F448];gvar_0079F448
 00420D46    or          edx,edx
>00420D48    jns         00420D51
 00420D4A    sub         eax,ecx
 00420D4C    sbb         edx,0
>00420D4F    jmp         00420D56
 00420D51    add         eax,ecx
 00420D53    adc         edx,0
 00420D56    push        edx
 00420D57    push        eax
 00420D58    fild        qword ptr [esp]
 00420D5B    fdiv        dword ptr [ebx+79F444]
 00420D61    add         esp,8
 00420D64    pop         ebx
 00420D65    ret
*}
end;

//00420D68
{*function sub_00420D68(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00420D68    push        ebp
 00420D69    mov         ebp,esp
 00420D6B    add         esp,0FFFFFFF4
 00420D6E    push        esi
 00420D6F    mov         esi,dword ptr [ebp+0C]
 00420D72    mov         byte ptr [ebp-1],0
 00420D76    cmp         ax,18
>00420D7A    jae         00420DD2
 00420D7C    cmp         dx,3C
>00420D80    jae         00420DD2
 00420D82    cmp         cx,3C
>00420D86    jae         00420DD2
 00420D88    cmp         si,3E8
>00420D8D    jae         00420DD2
 00420D8F    movzx       eax,ax
 00420D92    imul        eax,eax,36EE80
 00420D98    movzx       edx,dx
 00420D9B    imul        edx,edx,3C
 00420D9E    imul        edx,edx,3E8
 00420DA4    add         eax,edx
 00420DA6    movzx       edx,cx
 00420DA9    imul        edx,edx,3E8
 00420DAF    add         eax,edx
 00420DB1    movzx       edx,si
 00420DB4    add         eax,edx
 00420DB6    mov         dword ptr [ebp-0C],eax
 00420DB9    mov         dword ptr [ebp-8],0A955A
 00420DC0    lea         eax,[ebp-0C]
 00420DC3    call        00420D2C
 00420DC8    mov         eax,dword ptr [ebp+8]
 00420DCB    fstp        qword ptr [eax]
 00420DCD    wait
 00420DCE    mov         byte ptr [ebp-1],1
 00420DD2    movzx       eax,byte ptr [ebp-1]
 00420DD6    pop         esi
 00420DD7    mov         esp,ebp
 00420DD9    pop         ebp
 00420DDA    ret         8
end;*}

//00420DE0
{*procedure sub_00420DE0(?:?; ?:?; ?:?; ?:?);
begin
 00420DE0    push        ebp
 00420DE1    mov         ebp,esp
 00420DE3    add         esp,0FFFFFFF8
 00420DE6    push        ebx
 00420DE7    push        esi
 00420DE8    push        edi
 00420DE9    mov         edi,ecx
 00420DEB    mov         esi,edx
 00420DED    mov         ebx,eax
 00420DEF    movzx       eax,word ptr [ebp+8]
 00420DF3    push        eax
 00420DF4    lea         eax,[ebp-8]
 00420DF7    push        eax
 00420DF8    mov         ecx,edi
 00420DFA    mov         edx,esi
 00420DFC    mov         eax,ebx
 00420DFE    call        00420D68
 00420E03    test        al,al
>00420E05    jne         00420E11
 00420E07    mov         eax,[007C47EC];^SResString7:TResStringRec
 00420E0C    call        0041D304
 00420E11    fld         qword ptr [ebp-8]
 00420E14    pop         edi
 00420E15    pop         esi
 00420E16    pop         ebx
 00420E17    pop         ecx
 00420E18    pop         ecx
 00420E19    pop         ebp
 00420E1A    ret         4
end;*}

//00420E20
{*procedure sub_00420E20(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00420E20    push        ebp
 00420E21    mov         ebp,esp
 00420E23    add         esp,0FFFFFFF4
 00420E26    push        ebx
 00420E27    push        esi
 00420E28    push        edi
 00420E29    mov         edi,ecx
 00420E2B    mov         esi,edx
 00420E2D    mov         ebx,eax
 00420E2F    lea         eax,[ebp-4]
 00420E32    push        eax
 00420E33    push        dword ptr [ebp+10]
 00420E36    push        dword ptr [ebp+0C]
 00420E39    lea         eax,[ebp-0C]
 00420E3C    call        00420CA0
 00420E41    mov         eax,dword ptr [ebp-0C]
 00420E44    lea         ecx,[ebp-2]
 00420E47    mov         dx,0EA60
 00420E4B    call        0041D2E8
 00420E50    push        esi
 00420E51    mov         ecx,ebx
 00420E53    movzx       eax,word ptr [ebp-2]
 00420E57    mov         dx,3C
 00420E5B    call        0041D2E8
 00420E60    mov         eax,dword ptr [ebp+8]
 00420E63    push        eax
 00420E64    mov         ecx,edi
 00420E66    movzx       eax,word ptr [ebp-4]
 00420E6A    mov         dx,3E8
 00420E6E    call        0041D2E8
 00420E73    pop         edi
 00420E74    pop         esi
 00420E75    pop         ebx
 00420E76    mov         esp,ebp
 00420E78    pop         ebp
 00420E79    ret         0C
end;*}

//00420E7C
{*function sub_00420E7C(?:?):?;
begin
 00420E7C    push        ebx
 00420E7D    push        esi
 00420E7E    mov         ecx,eax
 00420E80    movzx       eax,cx
 00420E83    and         eax,3
 00420E86    test        eax,eax
>00420E88    jne         00420EAB
 00420E8A    movzx       ebx,cx
 00420E8D    mov         eax,ebx
 00420E8F    mov         esi,64
 00420E94    xor         edx,edx
 00420E96    div         eax,esi
 00420E98    test        edx,edx
>00420E9A    jne         00420EB0
 00420E9C    mov         eax,ebx
 00420E9E    mov         ecx,190
 00420EA3    xor         edx,edx
 00420EA5    div         eax,ecx
 00420EA7    test        edx,edx
>00420EA9    je          00420EB0
 00420EAB    xor         eax,eax
 00420EAD    pop         esi
 00420EAE    pop         ebx
 00420EAF    ret
 00420EB0    mov         al,1
 00420EB2    pop         esi
 00420EB3    pop         ebx
 00420EB4    ret
end;*}

//00420EB8
{*function sub_00420EB8(?:?; ?:?; ?:?; ?:?):?;
begin
 00420EB8    push        ebp
 00420EB9    mov         ebp,esp
 00420EBB    add         esp,0FFFFFFF8
 00420EBE    push        ebx
 00420EBF    push        esi
 00420EC0    push        edi
 00420EC1    mov         ebx,ecx
 00420EC3    mov         edi,edx
 00420EC5    mov         word ptr [ebp-2],ax
 00420EC9    mov         byte ptr [ebp-3],0
 00420ECD    movzx       eax,word ptr [ebp-2]
 00420ED1    call        00420E7C
 00420ED6    and         eax,7F
 00420ED9    lea         eax,[eax+eax*2]
 00420EDC    lea         esi,[eax*8+79EDF0]
 00420EE3    cmp         word ptr [ebp-2],1
>00420EE8    jb          00420F74
 00420EEE    cmp         word ptr [ebp-2],270F
>00420EF4    ja          00420F74
 00420EF6    cmp         di,1
>00420EFA    jb          00420F74
 00420EFC    cmp         di,0C
>00420F00    ja          00420F74
 00420F02    cmp         bx,1
>00420F06    jb          00420F74
 00420F08    movzx       eax,di
 00420F0B    cmp         bx,word ptr [esi+eax*2-2]
>00420F10    ja          00420F74
 00420F12    movzx       eax,di
 00420F15    dec         eax
 00420F16    test        eax,eax
>00420F18    jle         00420F28
 00420F1A    mov         ecx,1
 00420F1F    add         bx,word ptr [esi+ecx*2-2]
 00420F24    inc         ecx
 00420F25    dec         eax
>00420F26    jne         00420F1F
 00420F28    movzx       ecx,word ptr [ebp-2]
 00420F2C    dec         ecx
 00420F2D    mov         eax,ecx
 00420F2F    mov         esi,64
 00420F34    cdq
 00420F35    idiv        eax,esi
 00420F37    imul        esi,ecx,16D
 00420F3D    mov         edx,ecx
 00420F3F    test        edx,edx
>00420F41    jns         00420F46
 00420F43    add         edx,3
 00420F46    sar         edx,2
 00420F49    add         esi,edx
 00420F4B    sub         esi,eax
 00420F4D    mov         eax,ecx
 00420F4F    mov         ecx,190
 00420F54    cdq
 00420F55    idiv        eax,ecx
 00420F57    add         esi,eax
 00420F59    movzx       eax,bx
 00420F5C    add         esi,eax
 00420F5E    sub         esi,0A955A
 00420F64    mov         dword ptr [ebp-8],esi
 00420F67    fild        dword ptr [ebp-8]
 00420F6A    mov         eax,dword ptr [ebp+8]
 00420F6D    fstp        qword ptr [eax]
 00420F6F    wait
 00420F70    mov         byte ptr [ebp-3],1
 00420F74    movzx       eax,byte ptr [ebp-3]
 00420F78    pop         edi
 00420F79    pop         esi
 00420F7A    pop         ebx
 00420F7B    pop         ecx
 00420F7C    pop         ecx
 00420F7D    pop         ebp
 00420F7E    ret         4
end;*}

//00420F84
{*function sub_00420F84(?:Integer; ?:?; ?:?):?;
begin
 00420F84    push        ebx
 00420F85    push        esi
 00420F86    push        edi
 00420F87    add         esp,0FFFFFFF8
 00420F8A    mov         edi,ecx
 00420F8C    mov         esi,edx
 00420F8E    mov         ebx,eax
 00420F90    push        esp
 00420F91    mov         ecx,edi
 00420F93    mov         edx,esi
 00420F95    mov         eax,ebx
 00420F97    call        00420EB8
 00420F9C    test        al,al
>00420F9E    jne         00420FAA
 00420FA0    mov         eax,[007C4ACC];^SResString8:TResStringRec
 00420FA5    call        0041D304
 00420FAA    fld         qword ptr [esp]
 00420FAD    pop         ecx
 00420FAE    pop         edx
 00420FAF    pop         edi
 00420FB0    pop         esi
 00420FB1    pop         ebx
 00420FB2    ret
end;*}

//00420FB4
{*function sub_00420FB4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 00420FB4    push        ebp
 00420FB5    mov         ebp,esp
 00420FB7    add         esp,0FFFFFFE8
 00420FBA    push        ebx
 00420FBB    push        esi
 00420FBC    mov         dword ptr [ebp-0C],ecx
 00420FBF    mov         dword ptr [ebp-8],edx
 00420FC2    mov         dword ptr [ebp-4],eax
 00420FC5    mov         ebx,dword ptr [ebp+8]
 00420FC8    push        dword ptr [ebp+10]
 00420FCB    push        dword ptr [ebp+0C]
 00420FCE    lea         eax,[ebp-18]
 00420FD1    call        00420CA0
 00420FD6    mov         ecx,dword ptr [ebp-14]
 00420FD9    test        ecx,ecx
>00420FDB    jg          00421001
 00420FDD    mov         eax,dword ptr [ebp-4]
 00420FE0    mov         word ptr [eax],0
 00420FE5    mov         eax,dword ptr [ebp-8]
 00420FE8    mov         word ptr [eax],0
 00420FED    mov         eax,dword ptr [ebp-0C]
 00420FF0    mov         word ptr [eax],0
 00420FF5    mov         word ptr [ebx],0
 00420FFA    xor         edx,edx
>00420FFC    jmp         004210F3
 00421001    mov         eax,ecx
 00421003    mov         esi,7
 00421008    cdq
 00421009    idiv        eax,esi
 0042100B    inc         edx
 0042100C    mov         word ptr [ebx],dx
 0042100F    dec         ecx
 00421010    mov         bx,1
 00421014    cmp         ecx,23AB1
>0042101A    jl          0042102F
 0042101C    sub         ecx,23AB1
 00421022    add         bx,190
 00421027    cmp         ecx,23AB1
>0042102D    jge         0042101C
 0042102F    lea         eax,[ebp-0E]
 00421032    push        eax
 00421033    lea         eax,[ebp-10]
 00421036    mov         dx,8EAC
 0042103A    xchg        eax,ecx
 0042103B    call        0041D2E8
 00421040    cmp         word ptr [ebp-10],4
>00421045    jne         00421051
 00421047    dec         word ptr [ebp-10]
 0042104B    add         word ptr [ebp-0E],8EAC
 00421051    imul        ax,word ptr [ebp-10],64
 00421056    add         bx,ax
 00421059    lea         eax,[ebp-0E]
 0042105C    push        eax
 0042105D    lea         ecx,[ebp-10]
 00421060    movzx       eax,word ptr [ebp-0E]
 00421064    mov         dx,5B5
 00421068    call        0041D2E8
 0042106D    movzx       eax,word ptr [ebp-10]
 00421071    add         eax,eax
 00421073    add         eax,eax
 00421075    add         bx,ax
 00421078    lea         eax,[ebp-0E]
 0042107B    push        eax
 0042107C    lea         ecx,[ebp-10]
 0042107F    movzx       eax,word ptr [ebp-0E]
 00421083    mov         dx,16D
 00421087    call        0041D2E8
 0042108C    cmp         word ptr [ebp-10],4
>00421091    jne         0042109D
 00421093    dec         word ptr [ebp-10]
 00421097    add         word ptr [ebp-0E],16D
 0042109D    add         bx,word ptr [ebp-10]
 004210A1    mov         eax,ebx
 004210A3    call        00420E7C
 004210A8    mov         edx,eax
 004210AA    movzx       eax,dl
 004210AD    lea         eax,[eax+eax*2]
 004210B0    lea         esi,[eax*8+79EDF0]
 004210B7    mov         ax,1
 004210BB    movzx       ecx,ax
 004210BE    movzx       ecx,word ptr [esi+ecx*2-2]
 004210C3    mov         word ptr [ebp-10],cx
 004210C7    movzx       ecx,word ptr [ebp-0E]
 004210CB    cmp         cx,word ptr [ebp-10]
>004210CF    jb          004210DC
 004210D1    movzx       ecx,word ptr [ebp-10]
 004210D5    sub         word ptr [ebp-0E],cx
 004210D9    inc         eax
>004210DA    jmp         004210BB
 004210DC    mov         ecx,dword ptr [ebp-4]
 004210DF    mov         word ptr [ecx],bx
 004210E2    mov         ecx,dword ptr [ebp-8]
 004210E5    mov         word ptr [ecx],ax
 004210E8    movzx       eax,word ptr [ebp-0E]
 004210EC    inc         eax
 004210ED    mov         ecx,dword ptr [ebp-0C]
 004210F0    mov         word ptr [ecx],ax
 004210F3    mov         eax,edx
 004210F5    pop         esi
 004210F6    pop         ebx
 004210F7    mov         esp,ebp
 004210F9    pop         ebp
 004210FA    ret         0C
end;*}

//00421100
{*procedure sub_00421100(?:?; ?:?; ?:?);
begin
 00421100    push        ebp
 00421101    mov         ebp,esp
 00421103    push        ecx
 00421104    push        esi
 00421105    mov         esi,eax
 00421107    push        dword ptr [ebp+0C]
 0042110A    push        dword ptr [ebp+8]
 0042110D    lea         eax,[ebp-2]
 00421110    push        eax
 00421111    mov         eax,esi
 00421113    call        00420FB4
 00421118    pop         esi
 00421119    pop         ecx
 0042111A    pop         ebp
 0042111B    ret         8
end;*}

//00421120
{*function sub_00421120(?:?; ?:?):?;
begin
 00421120    push        ebp
 00421121    mov         ebp,esp
 00421123    add         esp,0FFFFFFF8
 00421126    push        dword ptr [ebp+0C]
 00421129    push        dword ptr [ebp+8]
 0042112C    lea         eax,[ebp-8]
 0042112F    call        00420CA0
 00421134    mov         eax,dword ptr [ebp-4]
 00421137    mov         ecx,7
 0042113C    cdq
 0042113D    idiv        eax,ecx
 0042113F    mov         eax,edx
 00421141    inc         eax
 00421142    pop         ecx
 00421143    pop         ecx
 00421144    pop         ebp
 00421145    ret         8
end;*}

//00421148
{*function sub_00421148:?;
begin
 00421148    add         esp,0FFFFFFE0
 0042114B    lea         eax,[esp+8]
 0042114F    push        eax
 00421150    call        kernel32.GetLocalTime
 00421155    movzx       ecx,word ptr [esp+0E]
 0042115A    movzx       edx,word ptr [esp+0A]
 0042115F    movzx       eax,word ptr [esp+8]
 00421164    call        00420F84
 00421169    fstp        qword ptr [esp+18]
 0042116D    wait
 0042116E    movzx       eax,word ptr [esp+16]
 00421173    push        eax
 00421174    movzx       ecx,word ptr [esp+18]
 00421179    movzx       edx,word ptr [esp+16]
 0042117E    movzx       eax,word ptr [esp+14]
 00421183    call        00420DE0
 00421188    fadd        qword ptr [esp+18]
 0042118C    fstp        qword ptr [esp]
 0042118F    wait
 00421190    fld         qword ptr [esp]
 00421193    add         esp,20
 00421196    ret
end;*}

//00421198
{*function sub_00421198:?;
begin
 00421198    add         esp,0FFFFFFF0
 0042119B    push        esp
 0042119C    call        kernel32.GetLocalTime
 004211A1    movzx       eax,word ptr [esp]
 004211A5    add         esp,10
 004211A8    ret
end;*}

//004211DC
{*procedure sub_004211DC(?:?; ?:?; ?:?);
begin
 004211DC    push        ebp
 004211DD    mov         ebp,esp
 004211DF    add         esp,0FFFFFFF8
 004211E2    push        ebx
 004211E3    push        esi
 004211E4    mov         ebx,edx
 004211E6    mov         dword ptr [ebp-4],eax
 004211E9    mov         eax,100
 004211EE    mov         edx,dword ptr [ebp+8]
 004211F1    sub         eax,dword ptr [edx-208]
 004211F7    cmp         eax,ebx
>004211F9    jge         00421295
 004211FF    mov         eax,dword ptr [ebp+8]
 00421202    mov         eax,dword ptr [eax-4]
 00421205    mov         dword ptr [ebp-8],eax
 00421208    mov         eax,dword ptr [ebp-8]
 0042120B    test        eax,eax
>0042120D    je          00421214
 0042120F    sub         eax,4
 00421212    mov         eax,dword ptr [eax]
 00421214    mov         esi,eax
 00421216    mov         eax,dword ptr [ebp+8]
 00421219    mov         eax,dword ptr [eax-208]
 0042121F    add         eax,esi
 00421221    add         eax,ebx
 00421223    push        eax
 00421224    mov         eax,dword ptr [ebp+8]
 00421227    add         eax,0FFFFFFFC
 0042122A    mov         ecx,1
 0042122F    mov         edx,dword ptr ds:[4211AC];:58
 00421235    call        @DynArraySetLength
 0042123A    add         esp,4
 0042123D    mov         eax,dword ptr [ebp+8]
 00421240    cmp         dword ptr [eax-208],0
>00421247    jle         00421273
 00421249    mov         eax,dword ptr [ebp+8]
 0042124C    mov         eax,dword ptr [eax-4]
 0042124F    lea         edx,[eax+esi*2]
 00421252    mov         eax,dword ptr [ebp+8]
 00421255    mov         ecx,dword ptr [eax-208]
 0042125B    add         ecx,ecx
 0042125D    mov         eax,dword ptr [ebp+8]
 00421260    add         eax,0FFFFFDFC
 00421265    call        Move
 0042126A    mov         eax,dword ptr [ebp+8]
 0042126D    add         esi,dword ptr [eax-208]
 00421273    mov         eax,dword ptr [ebp+8]
 00421276    mov         eax,dword ptr [eax-4]
 00421279    lea         edx,[eax+esi*2]
 0042127C    mov         ecx,ebx
 0042127E    add         ecx,ecx
 00421280    mov         eax,dword ptr [ebp-4]
 00421283    call        Move
 00421288    mov         eax,dword ptr [ebp+8]
 0042128B    xor         edx,edx
 0042128D    mov         dword ptr [eax-208],edx
>00421293    jmp         004212C1
 00421295    test        ebx,ebx
>00421297    jle         004212C1
 00421299    mov         eax,dword ptr [ebp+8]
 0042129C    mov         eax,dword ptr [eax-208]
 004212A2    mov         edx,dword ptr [ebp+8]
 004212A5    lea         edx,[edx+eax*2-204]
 004212AC    mov         ecx,ebx
 004212AE    add         ecx,ecx
 004212B0    mov         eax,dword ptr [ebp-4]
 004212B3    call        Move
 004212B8    mov         eax,dword ptr [ebp+8]
 004212BB    add         dword ptr [eax-208],ebx
 004212C1    pop         esi
 004212C2    pop         ebx
 004212C3    pop         ecx
 004212C4    pop         ecx
 004212C5    pop         ebp
 004212C6    ret
end;*}

//004212C8
{*procedure sub_004212C8(?:?; ?:?);
begin
 004212C8    push        ebp
 004212C9    mov         ebp,esp
 004212CB    mov         edx,eax
 004212CD    test        edx,edx
>004212CF    je          004212D6
 004212D1    sub         edx,4
 004212D4    mov         edx,dword ptr [edx]
 004212D6    mov         ecx,dword ptr [ebp+8]
 004212D9    push        ecx
 004212DA    call        004211DC
 004212DF    pop         ecx
 004212E0    pop         ebp
 004212E1    ret
end;*}

//004212E4
{*procedure sub_004212E4(?:?; ?:?; ?:?);
begin
 004212E4    push        ebp
 004212E5    mov         ebp,esp
 004212E7    add         esp,0FFFFFFD0
 004212EA    push        ebx
 004212EB    push        esi
 004212EC    mov         esi,edx
 004212EE    mov         ebx,eax
 004212F0    mov         eax,dword ptr [ebp+8]
 004212F3    push        eax
 004212F4    push        4
 004212F6    mov         dword ptr [ebp-30],esi
 004212F9    mov         byte ptr [ebp-2C],0
 004212FD    mov         dword ptr [ebp-28],ebx
 00421300    mov         byte ptr [ebp-24],0
 00421304    lea         eax,[ebp-30]
 00421307    push        eax
 00421308    push        1
 0042130A    mov         ecx,79F44C
 0042130F    lea         eax,[ebp-20]
 00421312    mov         edx,10
 00421317    call        0041F568
 0042131C    mov         edx,eax
 0042131E    lea         eax,[ebp-20]
 00421321    call        004211DC
 00421326    pop         ecx
 00421327    pop         esi
 00421328    pop         ebx
 00421329    mov         esp,ebp
 0042132B    pop         ebp
 0042132C    ret
end;*}

//00421330
{*procedure sub_00421330(?:?);
begin
 00421330    push        ebp
 00421331    mov         ebp,esp
 00421333    push        ebx
 00421334    mov         eax,dword ptr [ebp+8]
 00421337    add         eax,0FFFFFFEC
 0042133A    mov         edx,dword ptr [eax]
>0042133C    jmp         00421341
 0042133E    add         dword ptr [eax],2
 00421341    mov         ecx,dword ptr [eax]
 00421343    movzx       ecx,word ptr [ecx]
 00421346    mov         ebx,dword ptr [ebp+8]
 00421349    cmp         cx,word ptr [ebx-16]
>0042134D    je          0042133E
 0042134F    mov         eax,dword ptr [eax]
 00421351    sub         eax,edx
 00421353    sar         eax,1
>00421355    jns         0042135A
 00421357    adc         eax,0
 0042135A    inc         eax
 0042135B    mov         edx,dword ptr [ebp+8]
 0042135E    mov         dword ptr [edx-1C],eax
 00421361    pop         ebx
 00421362    pop         ebp
 00421363    ret
end;*}

//00421364
{*procedure sub_00421364(?:?);
begin
 00421364    push        ebp
 00421365    mov         ebp,esp
 00421367    mov         eax,dword ptr [ebp+8]
 0042136A    cmp         byte ptr [eax-1D],0
>0042136E    jne         0042139A
 00421370    mov         eax,dword ptr [ebp+8]
 00421373    mov         eax,dword ptr [eax+8]
 00421376    push        dword ptr [eax+0C]
 00421379    push        dword ptr [eax+8]
 0042137C    mov         eax,dword ptr [ebp+8]
 0042137F    lea         ecx,[eax-6]
 00421382    mov         eax,dword ptr [ebp+8]
 00421385    lea         edx,[eax-4]
 00421388    mov         eax,dword ptr [ebp+8]
 0042138B    add         eax,0FFFFFFFE
 0042138E    call        00421100
 00421393    mov         eax,dword ptr [ebp+8]
 00421396    mov         byte ptr [eax-1D],1
 0042139A    pop         ebp
 0042139B    ret
end;*}

//0042139C
{*procedure sub_0042139C(?:?);
begin
 0042139C    push        ebp
 0042139D    mov         ebp,esp
 0042139F    mov         eax,dword ptr [ebp+8]
 004213A2    cmp         byte ptr [eax-1E],0
>004213A6    jne         004213D9
 004213A8    mov         eax,dword ptr [ebp+8]
 004213AB    mov         eax,dword ptr [eax+8]
 004213AE    push        dword ptr [eax+0C]
 004213B1    push        dword ptr [eax+8]
 004213B4    mov         eax,dword ptr [ebp+8]
 004213B7    add         eax,0FFFFFFF2
 004213BA    push        eax
 004213BB    mov         eax,dword ptr [ebp+8]
 004213BE    lea         ecx,[eax-0C]
 004213C1    mov         eax,dword ptr [ebp+8]
 004213C4    lea         edx,[eax-0A]
 004213C7    mov         eax,dword ptr [ebp+8]
 004213CA    add         eax,0FFFFFFF8
 004213CD    call        00420E20
 004213D2    mov         eax,dword ptr [ebp+8]
 004213D5    mov         byte ptr [eax-1E],1
 004213D9    pop         ebp
 004213DA    ret
end;*}

//004213DC
{*procedure sub_004213DC(?:?; ?:?; ?:?);
begin
 004213DC    push        ebp
 004213DD    mov         ebp,esp
 004213DF    add         esp,0FFFFFDE8
 004213E5    push        ebx
 004213E6    push        esi
 004213E7    xor         ecx,ecx
 004213E9    mov         dword ptr [ebp-218],ecx
 004213EF    mov         dword ptr [ebp-4],ecx
 004213F2    mov         ebx,edx
 004213F4    mov         esi,eax
 004213F6    xor         eax,eax
 004213F8    push        ebp
 004213F9    push        421536
 004213FE    push        dword ptr fs:[eax]
 00421401    mov         dword ptr fs:[eax],esp
 00421404    mov         eax,ebx
 00421406    call        @UStrClr
 0042140B    mov         eax,dword ptr [ebp+8]
 0042140E    movzx       eax,word ptr [eax-2]
 00421412    mov         word ptr [ebp-14],ax
 00421416    mov         eax,dword ptr [ebp+8]
 00421419    movzx       eax,word ptr [eax-4]
 0042141D    mov         word ptr [ebp-12],ax
 00421421    mov         eax,dword ptr [ebp+8]
 00421424    movzx       eax,word ptr [eax-6]
 00421428    mov         word ptr [ebp-0E],ax
 0042142C    lea         eax,[ebp-4]
 0042142F    mov         edx,421550;'gg'
 00421434    call        @UStrLAsg
 00421439    push        200
 0042143E    lea         eax,[ebp-214]
 00421444    push        eax
 00421445    mov         eax,dword ptr [ebp-4]
 00421448    call        @UStrToPWChar
 0042144D    push        eax
 0042144E    lea         eax,[ebp-14]
 00421451    push        eax
 00421452    push        4
 00421454    call        kernel32.GetThreadLocale
 00421459    push        eax
 0042145A    call        kernel32.GetDateFormatW
 0042145F    test        eax,eax
>00421461    je          00421515
 00421467    mov         eax,ebx
 00421469    lea         edx,[ebp-214]
 0042146F    mov         ecx,100
 00421474    call        @UStrFromWArray
 00421479    dec         esi
>0042147A    jne         00421515
 00421480    mov         eax,[007C7CBC];gvar_007C7CBC
 00421485    sub         eax,4
>00421488    je          004214B0
 0042148A    sub         eax,0D
>0042148D    jne         00421515
 00421493    push        ebx
 00421494    mov         eax,dword ptr [ebx]
 00421496    mov         edx,1
 0042149B    call        00425020
 004214A0    mov         ecx,eax
 004214A2    mov         eax,dword ptr [ebx]
 004214A4    mov         edx,1
 004214A9    call        @UStrCopy
>004214AE    jmp         00421515
 004214B0    cmp         dword ptr ds:[7C7CC0],1;gvar_007C7CC0
>004214B7    jne         00421515
 004214B9    mov         esi,dword ptr [ebx]
 004214BB    test        esi,esi
>004214BD    je          004214C4
 004214BF    sub         esi,4
 004214C2    mov         esi,dword ptr [esi]
 004214C4    mov         eax,dword ptr [ebx]
 004214C6    mov         edx,esi
 004214C8    call        00424E58
 004214CD    cmp         eax,4
>004214D0    jne         00421515
 004214D2    mov         eax,dword ptr [ebx]
 004214D4    mov         edx,3
 004214D9    call        00424F8C
 004214DE    mov         esi,eax
 004214E0    add         esi,esi
 004214E2    lea         eax,[ebp-214]
 004214E8    add         esi,eax
 004214EA    sub         esi,2
 004214ED    lea         eax,[ebp-218]
 004214F3    mov         edx,esi
 004214F5    call        @UStrFromPWChar
 004214FA    mov         eax,dword ptr [ebp-218]
 00421500    mov         edx,2
 00421505    call        00425020
 0042150A    mov         ecx,eax
 0042150C    mov         eax,ebx
 0042150E    mov         edx,esi
 00421510    call        @UStrFromPWCharLen
 00421515    xor         eax,eax
 00421517    pop         edx
 00421518    pop         ecx
 00421519    pop         ecx
 0042151A    mov         dword ptr fs:[eax],edx
 0042151D    push        42153D
 00421522    lea         eax,[ebp-218]
 00421528    call        @UStrClr
 0042152D    lea         eax,[ebp-4]
 00421530    call        @UStrClr
 00421535    ret
>00421536    jmp         @HandleFinally
>0042153B    jmp         00421522
 0042153D    pop         esi
 0042153E    pop         ebx
 0042153F    mov         esp,ebp
 00421541    pop         ebp
 00421542    ret
end;*}

//00421558
{*procedure sub_00421558(?:?; ?:?; ?:?);
begin
 00421558    push        ebp
 00421559    mov         ebp,esp
 0042155B    add         esp,0FFFFFDEC
 00421561    push        ebx
 00421562    push        esi
 00421563    xor         ecx,ecx
 00421565    mov         dword ptr [ebp-4],ecx
 00421568    mov         ebx,edx
 0042156A    mov         esi,eax
 0042156C    xor         eax,eax
 0042156E    push        ebp
 0042156F    push        42163B
 00421574    push        dword ptr fs:[eax]
 00421577    mov         dword ptr fs:[eax],esp
 0042157A    mov         eax,ebx
 0042157C    call        @UStrClr
 00421581    mov         eax,dword ptr [ebp+8]
 00421584    movzx       eax,word ptr [eax-2]
 00421588    mov         word ptr [ebp-14],ax
 0042158C    mov         eax,dword ptr [ebp+8]
 0042158F    movzx       eax,word ptr [eax-4]
 00421593    mov         word ptr [ebp-12],ax
 00421597    mov         eax,dword ptr [ebp+8]
 0042159A    movzx       eax,word ptr [eax-6]
 0042159E    mov         word ptr [ebp-0E],ax
 004215A2    cmp         esi,2
>004215A5    jg          004215B6
 004215A7    lea         eax,[ebp-4]
 004215AA    mov         edx,421654;'yy'
 004215AF    call        @UStrLAsg
>004215B4    jmp         004215C3
 004215B6    lea         eax,[ebp-4]
 004215B9    mov         edx,421668;'yyyy'
 004215BE    call        @UStrLAsg
 004215C3    push        200
 004215C8    lea         eax,[ebp-214]
 004215CE    push        eax
 004215CF    mov         eax,dword ptr [ebp-4]
 004215D2    call        @UStrToPWChar
 004215D7    push        eax
 004215D8    lea         eax,[ebp-14]
 004215DB    push        eax
 004215DC    push        4
 004215DE    call        kernel32.GetThreadLocale
 004215E3    push        eax
 004215E4    call        kernel32.GetDateFormatW
 004215E9    test        eax,eax
>004215EB    je          00421625
 004215ED    mov         eax,ebx
 004215EF    lea         edx,[ebp-214]
 004215F5    mov         ecx,100
 004215FA    call        @UStrFromWArray
 004215FF    dec         esi
>00421600    jne         00421625
 00421602    mov         eax,dword ptr [ebx]
 00421604    cmp         word ptr [eax],30
>00421608    jne         00421625
 0042160A    mov         esi,dword ptr [ebx]
 0042160C    test        esi,esi
>0042160E    je          00421615
 00421610    sub         esi,4
 00421613    mov         esi,dword ptr [esi]
 00421615    push        ebx
 00421616    mov         ecx,esi
 00421618    dec         ecx
 00421619    mov         eax,dword ptr [ebx]
 0042161B    mov         edx,2
 00421620    call        @UStrCopy
 00421625    xor         eax,eax
 00421627    pop         edx
 00421628    pop         ecx
 00421629    pop         ecx
 0042162A    mov         dword ptr fs:[eax],edx
 0042162D    push        421642
 00421632    lea         eax,[ebp-4]
 00421635    call        @UStrClr
 0042163A    ret
>0042163B    jmp         @HandleFinally
>00421640    jmp         00421632
 00421642    pop         esi
 00421643    pop         ebx
 00421644    mov         esp,ebp
 00421646    pop         ebp
 00421647    ret
end;*}

//00421674
{*procedure sub_00421674(?:?; ?:?);
begin
 00421674    push        ebp
 00421675    mov         ebp,esp
 00421677    add         esp,0FFFFFFD0
 0042167A    push        ebx
 0042167B    push        esi
 0042167C    push        edi
 0042167D    xor         edx,edx
 0042167F    mov         dword ptr [ebp-30],edx
 00421682    mov         dword ptr [ebp-2C],edx
 00421685    mov         dword ptr [ebp-14],eax
 00421688    xor         eax,eax
 0042168A    push        ebp
 0042168B    push        421EFF
 00421690    push        dword ptr fs:[eax]
 00421693    mov         dword ptr fs:[eax],esp
 00421696    cmp         dword ptr [ebp-14],0
>0042169A    je          00421EE4
 004216A0    mov         eax,dword ptr [ebp+8]
 004216A3    cmp         dword ptr [eax-20C],2
>004216AA    jge         00421EE4
 004216B0    mov         eax,dword ptr [ebp+8]
 004216B3    inc         dword ptr [eax-20C]
 004216B9    mov         word ptr [ebp-20],20
 004216BF    mov         byte ptr [ebp-1D],0
 004216C3    mov         byte ptr [ebp-1E],0
 004216C7    mov         byte ptr [ebp-21],0
>004216CB    jmp         00421ECC
 004216D0    mov         word ptr [ebp-16],si
 004216D4    cmp         word ptr [ebp-16],0D800
>004216DA    jb          004216E4
 004216DC    cmp         word ptr [ebp-16],0DFFF
>004216E2    jbe         004216E8
 004216E4    xor         eax,eax
>004216E6    jmp         004216EA
 004216E8    mov         al,1
 004216EA    test        al,al
>004216EC    je          00421722
 004216EE    mov         eax,dword ptr [ebp+8]
 004216F1    push        eax
 004216F2    mov         eax,dword ptr [ebp-14]
 004216F5    call        00425084
 004216FA    mov         edx,eax
 004216FC    sar         edx,1
>004216FE    jns         00421703
 00421700    adc         edx,0
 00421703    mov         eax,dword ptr [ebp-14]
 00421706    call        004211DC
 0042170B    pop         ecx
 0042170C    mov         eax,dword ptr [ebp-14]
 0042170F    call        004250B4
 00421714    mov         dword ptr [ebp-14],eax
 00421717    mov         word ptr [ebp-20],20
>0042171D    jmp         00421ECC
 00421722    mov         eax,dword ptr [ebp-14]
 00421725    call        004250B4
 0042172A    mov         dword ptr [ebp-14],eax
 0042172D    movzx       ebx,word ptr [ebp-16]
 00421731    mov         eax,ebx
 00421733    add         eax,0FFFFFF9F
 00421736    sub         ax,1A
>0042173A    jae         00421740
 0042173C    sub         bx,20
 00421740    mov         eax,ebx
 00421742    add         eax,0FFFFFFBF
 00421745    sub         ax,1A
>00421749    jae         00421760
 0042174B    cmp         bx,4D
>0042174F    jne         0042175C
 00421751    cmp         word ptr [ebp-20],48
>00421756    jne         0042175C
 00421758    mov         bx,4E
 0042175C    mov         word ptr [ebp-20],bx
 00421760    movzx       eax,bx
 00421763    add         eax,0FFFFFFDE
 00421766    cmp         eax,38
>00421769    ja          00421EBA
 0042176F    movzx       eax,byte ptr [eax+42177D]
 00421776    jmp         dword ptr [eax*4+4217B6]
 00421776    db          15
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          15
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          13
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          14
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          11
 00421776    db          0
 00421776    db          12
 00421776    db          5
 00421776    db          3
 00421776    db          0
 00421776    db          2
 00421776    db          6
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          4
 00421776    db          7
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          8
 00421776    db          9
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          0
 00421776    db          1
 00421776    db          10
 00421776    dd          00421EBA
 00421776    dd          004217F6
 00421776    dd          00421845
 00421776    dd          00421872
 00421776    dd          0042189F
 00421776    dd          00421910
 00421776    dd          004219E4
 00421776    dd          00421AFE
 00421776    dd          00421B2F
 00421776    dd          00421B60
 00421776    dd          00421BA3
 00421776    dd          00421BD4
 00421776    dd          00421D69
 00421776    dd          00421DDC
 00421776    dd          00421E10
 00421776    dd          00421E44
 004217F6    push        ebp
 004217F7    call        00421330
 004217FC    pop         ecx
 004217FD    push        ebp
 004217FE    call        00421364
 00421803    pop         ecx
 00421804    cmp         dword ptr [ebp-1C],2
>00421808    jg          0042182D
 0042180A    mov         eax,dword ptr [ebp+8]
 0042180D    push        eax
 0042180E    movzx       eax,word ptr [ebp-2]
 00421812    mov         ecx,64
 00421817    xor         edx,edx
 00421819    div         eax,ecx
 0042181B    mov         eax,edx
 0042181D    mov         edx,2
 00421822    call        004212E4
 00421827    pop         ecx
>00421828    jmp         00421ECC
 0042182D    mov         eax,dword ptr [ebp+8]
 00421830    push        eax
 00421831    movzx       eax,word ptr [ebp-2]
 00421835    mov         edx,4
 0042183A    call        004212E4
 0042183F    pop         ecx
>00421840    jmp         00421ECC
 00421845    push        ebp
 00421846    call        00421330
 0042184B    pop         ecx
 0042184C    push        ebp
 0042184D    call        00421364
 00421852    pop         ecx
 00421853    mov         eax,dword ptr [ebp+8]
 00421856    push        eax
 00421857    push        ebp
 00421858    lea         edx,[ebp-2C]
 0042185B    mov         eax,dword ptr [ebp-1C]
 0042185E    call        004213DC
 00421863    pop         ecx
 00421864    mov         eax,dword ptr [ebp-2C]
 00421867    call        004212C8
 0042186C    pop         ecx
>0042186D    jmp         00421ECC
 00421872    push        ebp
 00421873    call        00421330
 00421878    pop         ecx
 00421879    push        ebp
 0042187A    call        00421364
 0042187F    pop         ecx
 00421880    mov         eax,dword ptr [ebp+8]
 00421883    push        eax
 00421884    push        ebp
 00421885    lea         edx,[ebp-30]
 00421888    mov         eax,dword ptr [ebp-1C]
 0042188B    call        00421558
 00421890    pop         ecx
 00421891    mov         eax,dword ptr [ebp-30]
 00421894    call        004212C8
 00421899    pop         ecx
>0042189A    jmp         00421ECC
 0042189F    push        ebp
 004218A0    call        00421330
 004218A5    pop         ecx
 004218A6    push        ebp
 004218A7    call        00421364
 004218AC    pop         ecx
 004218AD    mov         eax,dword ptr [ebp-1C]
 004218B0    dec         eax
 004218B1    sub         eax,2
>004218B4    jb          004218BA
>004218B6    je          004218D0
>004218B8    jmp         004218F0
 004218BA    mov         eax,dword ptr [ebp+8]
 004218BD    push        eax
 004218BE    movzx       eax,word ptr [ebp-4]
 004218C2    mov         edx,dword ptr [ebp-1C]
 004218C5    call        004212E4
 004218CA    pop         ecx
>004218CB    jmp         00421ECC
 004218D0    mov         eax,dword ptr [ebp+8]
 004218D3    push        eax
 004218D4    movzx       eax,word ptr [ebp-4]
 004218D8    mov         edx,dword ptr [ebp+8]
 004218DB    mov         edx,dword ptr [edx-210]
 004218E1    mov         eax,dword ptr [edx+eax*4+20]
 004218E5    call        004212C8
 004218EA    pop         ecx
>004218EB    jmp         00421ECC
 004218F0    mov         eax,dword ptr [ebp+8]
 004218F3    push        eax
 004218F4    movzx       eax,word ptr [ebp-4]
 004218F8    mov         edx,dword ptr [ebp+8]
 004218FB    mov         edx,dword ptr [edx-210]
 00421901    mov         eax,dword ptr [edx+eax*4+50]
 00421905    call        004212C8
 0042190A    pop         ecx
>0042190B    jmp         00421ECC
 00421910    push        ebp
 00421911    call        00421330
 00421916    pop         ecx
 00421917    mov         eax,dword ptr [ebp-1C]
 0042191A    dec         eax
 0042191B    sub         eax,2
>0042191E    jb          00421931
>00421920    je          0042194E
 00421922    dec         eax
>00421923    je          0042197E
 00421925    dec         eax
>00421926    je          004219AE
>0042192C    jmp         004219C9
 00421931    push        ebp
 00421932    call        00421364
 00421937    pop         ecx
 00421938    mov         eax,dword ptr [ebp+8]
 0042193B    push        eax
 0042193C    movzx       eax,word ptr [ebp-6]
 00421940    mov         edx,dword ptr [ebp-1C]
 00421943    call        004212E4
 00421948    pop         ecx
>00421949    jmp         00421ECC
 0042194E    mov         eax,dword ptr [ebp+8]
 00421951    push        eax
 00421952    mov         eax,dword ptr [ebp+8]
 00421955    push        dword ptr [eax+0C]
 00421958    push        dword ptr [eax+8]
 0042195B    call        00421120
 00421960    movzx       eax,ax
 00421963    mov         edx,dword ptr [ebp+8]
 00421966    mov         edx,dword ptr [edx-210]
 0042196C    mov         eax,dword ptr [edx+eax*4+80]
 00421973    call        004212C8
 00421978    pop         ecx
>00421979    jmp         00421ECC
 0042197E    mov         eax,dword ptr [ebp+8]
 00421981    push        eax
 00421982    mov         eax,dword ptr [ebp+8]
 00421985    push        dword ptr [eax+0C]
 00421988    push        dword ptr [eax+8]
 0042198B    call        00421120
 00421990    movzx       eax,ax
 00421993    mov         edx,dword ptr [ebp+8]
 00421996    mov         edx,dword ptr [edx-210]
 0042199C    mov         eax,dword ptr [edx+eax*4+9C]
 004219A3    call        004212C8
 004219A8    pop         ecx
>004219A9    jmp         00421ECC
 004219AE    mov         eax,dword ptr [ebp+8]
 004219B1    push        eax
 004219B2    mov         eax,dword ptr [ebp+8]
 004219B5    mov         eax,dword ptr [eax-210]
 004219BB    mov         eax,dword ptr [eax+0C]
 004219BE    call        00421674
 004219C3    pop         ecx
>004219C4    jmp         00421ECC
 004219C9    mov         eax,dword ptr [ebp+8]
 004219CC    push        eax
 004219CD    mov         eax,dword ptr [ebp+8]
 004219D0    mov         eax,dword ptr [eax-210]
 004219D6    mov         eax,dword ptr [eax+10]
 004219D9    call        00421674
 004219DE    pop         ecx
>004219DF    jmp         00421ECC
 004219E4    push        ebp
 004219E5    call        00421330
 004219EA    pop         ecx
 004219EB    push        ebp
 004219EC    call        0042139C
 004219F1    pop         ecx
 004219F2    mov         byte ptr [ebp-22],0
 004219F6    mov         edi,dword ptr [ebp-14]
>004219F9    jmp         00421AA8
 004219FE    movzx       eax,word ptr [edi]
 00421A01    mov         word ptr [ebp-26],ax
 00421A05    cmp         word ptr [ebp-26],0D800
>00421A0B    jb          00421A15
 00421A0D    cmp         word ptr [ebp-26],0DFFF
>00421A13    jbe         00421A19
 00421A15    xor         eax,eax
>00421A17    jmp         00421A1B
 00421A19    mov         al,1
 00421A1B    test        al,al
>00421A1D    je          00421A2A
 00421A1F    mov         eax,edi
 00421A21    call        004250B4
 00421A26    mov         edi,eax
>00421A28    jmp         00421AA8
 00421A2A    movzx       eax,word ptr [edi]
 00421A2D    cmp         eax,48
>00421A30    jg          00421A45
>00421A32    je          00421AB2
 00421A34    sub         eax,22
>00421A37    je          00421A9C
 00421A39    sub         eax,5
>00421A3C    je          00421A9C
 00421A3E    sub         eax,1A
>00421A41    je          00421A51
>00421A43    jmp         00421AA5
 00421A45    sub         eax,61
>00421A48    je          00421A51
 00421A4A    sub         eax,7
>00421A4D    je          00421AB2
>00421A4F    jmp         00421AA5
 00421A51    cmp         byte ptr [ebp-22],0
>00421A55    jne         00421AA5
 00421A57    mov         edx,421F10
 00421A5C    mov         ecx,5
 00421A61    mov         eax,edi
 00421A63    call        0041F314
 00421A68    test        eax,eax
>00421A6A    je          00421A96
 00421A6C    mov         edx,421F1C
 00421A71    mov         ecx,3
 00421A76    mov         eax,edi
 00421A78    call        0041F314
 00421A7D    test        eax,eax
>00421A7F    je          00421A96
 00421A81    mov         edx,421F24
 00421A86    mov         ecx,4
 00421A8B    mov         eax,edi
 00421A8D    call        0041F314
 00421A92    test        eax,eax
>00421A94    jne         00421AB2
 00421A96    mov         byte ptr [ebp-21],1
>00421A9A    jmp         00421AB2
 00421A9C    movzx       eax,byte ptr [ebp-22]
 00421AA0    xor         al,1
 00421AA2    mov         byte ptr [ebp-22],al
 00421AA5    add         edi,2
 00421AA8    cmp         word ptr [edi],0
>00421AAC    jne         004219FE
 00421AB2    movzx       eax,word ptr [ebp-8]
 00421AB6    mov         word ptr [ebp-24],ax
 00421ABA    cmp         byte ptr [ebp-21],0
>00421ABE    je          00421ADB
 00421AC0    cmp         word ptr [ebp-24],0
>00421AC5    jne         00421ACF
 00421AC7    mov         word ptr [ebp-24],0C
>00421ACD    jmp         00421ADB
 00421ACF    cmp         word ptr [ebp-24],0C
>00421AD4    jbe         00421ADB
 00421AD6    sub         word ptr [ebp-24],0C
 00421ADB    cmp         dword ptr [ebp-1C],2
>00421ADF    jle         00421AE8
 00421AE1    mov         dword ptr [ebp-1C],2
 00421AE8    mov         eax,dword ptr [ebp+8]
 00421AEB    push        eax
 00421AEC    movzx       eax,word ptr [ebp-24]
 00421AF0    mov         edx,dword ptr [ebp-1C]
 00421AF3    call        004212E4
 00421AF8    pop         ecx
>00421AF9    jmp         00421ECC
 00421AFE    push        ebp
 00421AFF    call        00421330
 00421B04    pop         ecx
 00421B05    push        ebp
 00421B06    call        0042139C
 00421B0B    pop         ecx
 00421B0C    cmp         dword ptr [ebp-1C],2
>00421B10    jle         00421B19
 00421B12    mov         dword ptr [ebp-1C],2
 00421B19    mov         eax,dword ptr [ebp+8]
 00421B1C    push        eax
 00421B1D    movzx       eax,word ptr [ebp-0A]
 00421B21    mov         edx,dword ptr [ebp-1C]
 00421B24    call        004212E4
 00421B29    pop         ecx
>00421B2A    jmp         00421ECC
 00421B2F    push        ebp
 00421B30    call        00421330
 00421B35    pop         ecx
 00421B36    push        ebp
 00421B37    call        0042139C
 00421B3C    pop         ecx
 00421B3D    cmp         dword ptr [ebp-1C],2
>00421B41    jle         00421B4A
 00421B43    mov         dword ptr [ebp-1C],2
 00421B4A    mov         eax,dword ptr [ebp+8]
 00421B4D    push        eax
 00421B4E    movzx       eax,word ptr [ebp-0C]
 00421B52    mov         edx,dword ptr [ebp-1C]
 00421B55    call        004212E4
 00421B5A    pop         ecx
>00421B5B    jmp         00421ECC
 00421B60    push        ebp
 00421B61    call        00421330
 00421B66    pop         ecx
 00421B67    cmp         dword ptr [ebp-1C],1
>00421B6B    jne         00421B88
 00421B6D    mov         eax,dword ptr [ebp+8]
 00421B70    push        eax
 00421B71    mov         eax,dword ptr [ebp+8]
 00421B74    mov         eax,dword ptr [eax-210]
 00421B7A    mov         eax,dword ptr [eax+1C]
 00421B7D    call        00421674
 00421B82    pop         ecx
>00421B83    jmp         00421ECC
 00421B88    mov         eax,dword ptr [ebp+8]
 00421B8B    push        eax
 00421B8C    mov         eax,dword ptr [ebp+8]
 00421B8F    mov         eax,dword ptr [eax-210]
 00421B95    mov         eax,dword ptr [eax+20]
 00421B98    call        00421674
 00421B9D    pop         ecx
>00421B9E    jmp         00421ECC
 00421BA3    push        ebp
 00421BA4    call        00421330
 00421BA9    pop         ecx
 00421BAA    push        ebp
 00421BAB    call        0042139C
 00421BB0    pop         ecx
 00421BB1    cmp         dword ptr [ebp-1C],3
>00421BB5    jle         00421BBE
 00421BB7    mov         dword ptr [ebp-1C],3
 00421BBE    mov         eax,dword ptr [ebp+8]
 00421BC1    push        eax
 00421BC2    movzx       eax,word ptr [ebp-0E]
 00421BC6    mov         edx,dword ptr [ebp-1C]
 00421BC9    call        004212E4
 00421BCE    pop         ecx
>00421BCF    jmp         00421ECC
 00421BD4    push        ebp
 00421BD5    call        0042139C
 00421BDA    pop         ecx
 00421BDB    mov         edi,dword ptr [ebp-14]
 00421BDE    sub         edi,2
 00421BE1    mov         edx,421F10
 00421BE6    mov         ecx,5
 00421BEB    mov         eax,edi
 00421BED    call        0041F314
 00421BF2    test        eax,eax
>00421BF4    jne         00421C1E
 00421BF6    cmp         word ptr [ebp-8],0C
>00421BFB    jb          00421C00
 00421BFD    add         edi,6
 00421C00    mov         eax,dword ptr [ebp+8]
 00421C03    push        eax
 00421C04    mov         edx,2
 00421C09    mov         eax,edi
 00421C0B    call        004211DC
 00421C10    pop         ecx
 00421C11    add         dword ptr [ebp-14],8
 00421C15    mov         byte ptr [ebp-21],1
>00421C19    jmp         00421ECC
 00421C1E    mov         edx,421F1C
 00421C23    mov         ecx,3
 00421C28    mov         eax,edi
 00421C2A    call        0041F314
 00421C2F    test        eax,eax
>00421C31    jne         00421C5B
 00421C33    cmp         word ptr [ebp-8],0C
>00421C38    jb          00421C3D
 00421C3A    add         edi,4
 00421C3D    mov         eax,dword ptr [ebp+8]
 00421C40    push        eax
 00421C41    mov         edx,1
 00421C46    mov         eax,edi
 00421C48    call        004211DC
 00421C4D    pop         ecx
 00421C4E    add         dword ptr [ebp-14],4
 00421C52    mov         byte ptr [ebp-21],1
>00421C56    jmp         00421ECC
 00421C5B    mov         edx,421F24
 00421C60    mov         ecx,4
 00421C65    mov         eax,edi
 00421C67    call        0041F314
 00421C6C    test        eax,eax
>00421C6E    jne         00421CB2
 00421C70    cmp         word ptr [ebp-8],0C
>00421C75    jae         00421C8F
 00421C77    mov         eax,dword ptr [ebp+8]
 00421C7A    push        eax
 00421C7B    mov         eax,dword ptr [ebp+8]
 00421C7E    mov         eax,dword ptr [eax-210]
 00421C84    mov         eax,dword ptr [eax+14]
 00421C87    call        004212C8
 00421C8C    pop         ecx
>00421C8D    jmp         00421CA5
 00421C8F    mov         eax,dword ptr [ebp+8]
 00421C92    push        eax
 00421C93    mov         eax,dword ptr [ebp+8]
 00421C96    mov         eax,dword ptr [eax-210]
 00421C9C    mov         eax,dword ptr [eax+18]
 00421C9F    call        004212C8
 00421CA4    pop         ecx
 00421CA5    add         dword ptr [ebp-14],6
 00421CA9    mov         byte ptr [ebp-21],1
>00421CAD    jmp         00421ECC
 00421CB2    mov         edx,421F30
 00421CB7    mov         ecx,4
 00421CBC    mov         eax,edi
 00421CBE    call        0041F314
 00421CC3    test        eax,eax
>00421CC5    jne         00421D02
 00421CC7    push        ebp
 00421CC8    call        00421364
 00421CCD    pop         ecx
 00421CCE    mov         eax,dword ptr [ebp+8]
 00421CD1    push        eax
 00421CD2    mov         eax,dword ptr [ebp+8]
 00421CD5    push        dword ptr [eax+0C]
 00421CD8    push        dword ptr [eax+8]
 00421CDB    call        00421120
 00421CE0    movzx       eax,ax
 00421CE3    mov         edx,dword ptr [ebp+8]
 00421CE6    mov         edx,dword ptr [edx-210]
 00421CEC    mov         eax,dword ptr [edx+eax*4+9C]
 00421CF3    call        004212C8
 00421CF8    pop         ecx
 00421CF9    add         dword ptr [ebp-14],6
>00421CFD    jmp         00421ECC
 00421D02    mov         edx,421F3C
 00421D07    mov         ecx,3
 00421D0C    mov         eax,edi
 00421D0E    call        0041F314
 00421D13    test        eax,eax
>00421D15    jne         00421D52
 00421D17    push        ebp
 00421D18    call        00421364
 00421D1D    pop         ecx
 00421D1E    mov         eax,dword ptr [ebp+8]
 00421D21    push        eax
 00421D22    mov         eax,dword ptr [ebp+8]
 00421D25    push        dword ptr [eax+0C]
 00421D28    push        dword ptr [eax+8]
 00421D2B    call        00421120
 00421D30    movzx       eax,ax
 00421D33    mov         edx,dword ptr [ebp+8]
 00421D36    mov         edx,dword ptr [edx-210]
 00421D3C    mov         eax,dword ptr [edx+eax*4+80]
 00421D43    call        004212C8
 00421D48    pop         ecx
 00421D49    add         dword ptr [ebp-14],4
>00421D4D    jmp         00421ECC
 00421D52    mov         eax,dword ptr [ebp+8]
 00421D55    push        eax
 00421D56    lea         eax,[ebp-16]
 00421D59    mov         edx,1
 00421D5E    call        004211DC
 00421D63    pop         ecx
>00421D64    jmp         00421ECC
 00421D69    push        ebp
 00421D6A    call        00421330
 00421D6F    pop         ecx
 00421D70    mov         eax,dword ptr [ebp+8]
 00421D73    push        eax
 00421D74    mov         eax,dword ptr [ebp+8]
 00421D77    mov         eax,dword ptr [eax-210]
 00421D7D    mov         eax,dword ptr [eax+0C]
 00421D80    call        00421674
 00421D85    pop         ecx
 00421D86    push        ebp
 00421D87    call        0042139C
 00421D8C    pop         ecx
 00421D8D    cmp         word ptr [ebp-8],0
>00421D92    jne         00421DAD
 00421D94    cmp         word ptr [ebp-0A],0
>00421D99    jne         00421DAD
 00421D9B    cmp         word ptr [ebp-0C],0
>00421DA0    jne         00421DAD
 00421DA2    cmp         word ptr [ebp-0E],0
>00421DA7    je          00421ECC
 00421DAD    mov         eax,dword ptr [ebp+8]
 00421DB0    push        eax
 00421DB1    mov         eax,421F44
 00421DB6    mov         edx,1
 00421DBB    call        004211DC
 00421DC0    pop         ecx
 00421DC1    mov         eax,dword ptr [ebp+8]
 00421DC4    push        eax
 00421DC5    mov         eax,dword ptr [ebp+8]
 00421DC8    mov         eax,dword ptr [eax-210]
 00421DCE    mov         eax,dword ptr [eax+20]
 00421DD1    call        00421674
 00421DD6    pop         ecx
>00421DD7    jmp         00421ECC
 00421DDC    mov         eax,dword ptr [ebp+8]
 00421DDF    mov         eax,dword ptr [eax-210]
 00421DE5    cmp         word ptr [eax+6],0
>00421DEA    je          00421ECC
 00421DF0    mov         eax,dword ptr [ebp+8]
 00421DF3    push        eax
 00421DF4    mov         eax,dword ptr [ebp+8]
 00421DF7    mov         eax,dword ptr [eax-210]
 00421DFD    add         eax,6
 00421E00    mov         edx,1
 00421E05    call        004211DC
 00421E0A    pop         ecx
>00421E0B    jmp         00421ECC
 00421E10    mov         eax,dword ptr [ebp+8]
 00421E13    mov         eax,dword ptr [eax-210]
 00421E19    cmp         word ptr [eax+8],0
>00421E1E    je          00421ECC
 00421E24    mov         eax,dword ptr [ebp+8]
 00421E27    push        eax
 00421E28    mov         eax,dword ptr [ebp+8]
 00421E2B    mov         eax,dword ptr [eax-210]
 00421E31    add         eax,8
 00421E34    mov         edx,1
 00421E39    call        004211DC
 00421E3E    pop         ecx
>00421E3F    jmp         00421ECC
 00421E44    mov         edi,dword ptr [ebp-14]
>00421E47    jmp         00421E7E
 00421E49    mov         eax,dword ptr [ebp-14]
 00421E4C    movzx       eax,word ptr [eax]
 00421E4F    mov         word ptr [ebp-28],ax
 00421E53    cmp         word ptr [ebp-28],0D800
>00421E59    jb          00421E63
 00421E5B    cmp         word ptr [ebp-28],0DFFF
>00421E61    jbe         00421E67
 00421E63    xor         eax,eax
>00421E65    jmp         00421E69
 00421E67    mov         al,1
 00421E69    test        al,al
>00421E6B    je          00421E7A
 00421E6D    mov         eax,dword ptr [ebp-14]
 00421E70    call        004250B4
 00421E75    mov         dword ptr [ebp-14],eax
>00421E78    jmp         00421E7E
 00421E7A    add         dword ptr [ebp-14],2
 00421E7E    mov         eax,dword ptr [ebp-14]
 00421E81    cmp         word ptr [eax],0
>00421E85    je          00421E93
 00421E87    mov         eax,dword ptr [ebp-14]
 00421E8A    movzx       eax,word ptr [eax]
 00421E8D    cmp         ax,word ptr [ebp-16]
>00421E91    jne         00421E49
 00421E93    mov         eax,dword ptr [ebp+8]
 00421E96    push        eax
 00421E97    mov         edx,dword ptr [ebp-14]
 00421E9A    sub         edx,edi
 00421E9C    sar         edx,1
>00421E9E    jns         00421EA3
 00421EA0    adc         edx,0
 00421EA3    mov         eax,edi
 00421EA5    call        004211DC
 00421EAA    pop         ecx
 00421EAB    mov         eax,dword ptr [ebp-14]
 00421EAE    cmp         word ptr [eax],0
>00421EB2    je          00421ECC
 00421EB4    add         dword ptr [ebp-14],2
>00421EB8    jmp         00421ECC
 00421EBA    mov         eax,dword ptr [ebp+8]
 00421EBD    push        eax
 00421EBE    lea         eax,[ebp-16]
 00421EC1    mov         edx,1
 00421EC6    call        004211DC
 00421ECB    pop         ecx
 00421ECC    mov         eax,dword ptr [ebp-14]
 00421ECF    movzx       esi,word ptr [eax]
 00421ED2    test        si,si
>00421ED5    jne         004216D0
 00421EDB    mov         eax,dword ptr [ebp+8]
 00421EDE    dec         dword ptr [eax-20C]
 00421EE4    xor         eax,eax
 00421EE6    pop         edx
 00421EE7    pop         ecx
 00421EE8    pop         ecx
 00421EE9    mov         dword ptr fs:[eax],edx
 00421EEC    push        421F06
 00421EF1    lea         eax,[ebp-30]
 00421EF4    mov         edx,2
 00421EF9    call        @UStrArrayClr
 00421EFE    ret
>00421EFF    jmp         @HandleFinally
>00421F04    jmp         00421EF1
 00421F06    pop         edi
 00421F07    pop         esi
 00421F08    pop         ebx
 00421F09    mov         esp,ebp
 00421F0B    pop         ebp
 00421F0C    ret
end;*}

//00421F48
{*procedure sub_00421F48(?:?; ?:?; ?:?);
begin
 00421F48    push        ebp
 00421F49    mov         ebp,esp
 00421F4B    add         esp,0FFFFFDE4
 00421F51    push        ebx
 00421F52    push        esi
 00421F53    xor         ebx,ebx
 00421F55    mov         dword ptr [ebp-21C],ebx
 00421F5B    mov         dword ptr [ebp-218],ebx
 00421F61    mov         dword ptr [ebp-4],ebx
 00421F64    mov         dword ptr [ebp-214],ebx
 00421F6A    mov         dword ptr [ebp-210],ecx
 00421F70    mov         ebx,edx
 00421F72    mov         esi,eax
 00421F74    xor         eax,eax
 00421F76    push        ebp
 00421F77    push        4220D9
 00421F7C    push        dword ptr fs:[eax]
 00421F7F    mov         dword ptr fs:[eax],esp
 00421F82    xor         eax,eax
 00421F84    mov         dword ptr [ebp-208],eax
 00421F8A    xor         eax,eax
 00421F8C    mov         dword ptr [ebp-20C],eax
 00421F92    test        ebx,ebx
>00421F94    je          00421FA1
 00421F96    push        ebp
 00421F97    mov         eax,ebx
 00421F99    call        00421674
 00421F9E    pop         ecx
>00421F9F    jmp         00421FAD
 00421FA1    push        ebp
 00421FA2    mov         eax,4220E8
 00421FA7    call        00421674
 00421FAC    pop         ecx
 00421FAD    mov         edx,dword ptr [ebp-4]
 00421FB0    mov         eax,edx
 00421FB2    test        eax,eax
>00421FB4    je          00421FBB
 00421FB6    sub         eax,4
 00421FB9    mov         eax,dword ptr [eax]
 00421FBB    test        eax,eax
>00421FBD    jle         0042206F
 00421FC3    mov         ebx,edx
 00421FC5    test        ebx,ebx
>00421FC7    je          00421FCE
 00421FC9    sub         ebx,4
 00421FCC    mov         ebx,dword ptr [ebx]
 00421FCE    add         ebx,dword ptr [ebp-208]
 00421FD4    push        ebx
 00421FD5    lea         eax,[ebp-214]
 00421FDB    mov         ecx,1
 00421FE0    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 00421FE6    call        @DynArraySetLength
 00421FEB    add         esp,4
 00421FEE    mov         eax,dword ptr [ebp-4]
 00421FF1    test        eax,eax
>00421FF3    je          00421FFA
 00421FF5    sub         eax,4
 00421FF8    mov         eax,dword ptr [eax]
 00421FFA    mov         ecx,eax
 00421FFC    add         ecx,ecx
 00421FFE    mov         edx,dword ptr [ebp-214]
 00422004    mov         eax,dword ptr [ebp-4]
 00422007    call        Move
 0042200C    cmp         dword ptr [ebp-208],0
>00422013    jle         0042203D
 00422015    mov         eax,dword ptr [ebp-4]
 00422018    test        eax,eax
>0042201A    je          00422021
 0042201C    sub         eax,4
 0042201F    mov         eax,dword ptr [eax]
 00422021    mov         edx,dword ptr [ebp-214]
 00422027    lea         edx,[edx+eax*2]
 0042202A    mov         ecx,dword ptr [ebp-208]
 00422030    add         ecx,ecx
 00422032    lea         eax,[ebp-204]
 00422038    call        Move
 0042203D    mov         ebx,dword ptr [ebp-214]
 00422043    test        ebx,ebx
>00422045    je          0042204C
 00422047    sub         ebx,4
 0042204A    mov         ebx,dword ptr [ebx]
 0042204C    lea         ecx,[ebp-218]
 00422052    mov         edx,ebx
 00422054    dec         edx
 00422055    mov         eax,dword ptr [ebp-214]
 0042205B    call        00426710
 00422060    mov         edx,dword ptr [ebp-218]
 00422066    mov         eax,esi
 00422068    call        @UStrAsg
>0042206D    jmp         0042209C
 0042206F    mov         eax,dword ptr [ebp-208]
 00422075    push        eax
 00422076    lea         eax,[ebp-21C]
 0042207C    push        eax
 0042207D    lea         eax,[ebp-204]
 00422083    xor         ecx,ecx
 00422085    mov         edx,0FF
 0042208A    call        004266D4
 0042208F    mov         edx,dword ptr [ebp-21C]
 00422095    mov         eax,esi
 00422097    call        @UStrAsg
 0042209C    xor         eax,eax
 0042209E    pop         edx
 0042209F    pop         ecx
 004220A0    pop         ecx
 004220A1    mov         dword ptr fs:[eax],edx
 004220A4    push        4220E0
 004220A9    lea         eax,[ebp-21C]
 004220AF    mov         edx,2
 004220B4    call        @UStrArrayClr
 004220B9    lea         eax,[ebp-214]
 004220BF    mov         edx,dword ptr ds:[402E0C];TArray<System.Char>
 004220C5    call        @DynArrayClear
 004220CA    lea         eax,[ebp-4]
 004220CD    mov         edx,dword ptr ds:[4211AC];:58
 004220D3    call        @DynArrayClear
 004220D8    ret
>004220D9    jmp         @HandleFinally
>004220DE    jmp         004220A9
 004220E0    pop         esi
 004220E1    pop         ebx
 004220E2    mov         esp,ebp
 004220E4    pop         ebp
 004220E5    ret         8
end;*}

//004220EC
{*procedure sub_004220EC(?:?; ?:?; ?:?; ?:?);
begin
 004220EC    push        ebp
 004220ED    mov         ebp,esp
 004220EF    push        dword ptr [ebp+0C]
 004220F2    push        dword ptr [ebp+8]
 004220F5    mov         ecx,eax
 004220F7    mov         eax,dword ptr [eax+0C]
 004220FA    xchg        eax,edx
 004220FB    call        00421F48
 00422100    pop         ebp
 00422101    ret         8
end;*}

//00422104
{*procedure sub_00422104(?:?; ?:?; ?:?; ?:?);
begin
 00422104    push        ebp
 00422105    mov         ebp,esp
 00422107    push        dword ptr [ebp+0C]
 0042210A    push        dword ptr [ebp+8]
 0042210D    mov         ecx,eax
 0042210F    mov         eax,dword ptr [eax+20]
 00422112    xchg        eax,edx
 00422113    call        00421F48
 00422118    pop         ebp
 00422119    ret         8
end;*}

//0042211C
{*procedure sub_0042211C(?:?; ?:?; ?:?; ?:?);
begin
 0042211C    push        ebp
 0042211D    mov         ebp,esp
 0042211F    push        dword ptr [ebp+0C]
 00422122    push        dword ptr [ebp+8]
 00422125    mov         ecx,eax
 00422127    mov         eax,edx
 00422129    xor         edx,edx
 0042212B    call        00421F48
 00422130    pop         ebp
 00422131    ret         8
end;*}

//00422134
{*procedure sub_00422134(?:UnicodeString; ?:?);
begin
 00422134    push        ebx
 00422135    push        esi
 00422136    push        edi
 00422137    mov         edi,edx
 00422139    mov         esi,eax
 0042213B    mov         ebx,dword ptr [edi]
>0042213D    jmp         00422140
 0042213F    inc         ebx
 00422140    mov         eax,esi
 00422142    call        @UStrLen
 00422147    cmp         ebx,eax
>00422149    jg          00422153
 0042214B    cmp         word ptr [esi+ebx*2-2],20
>00422151    je          0042213F
 00422153    mov         dword ptr [edi],ebx
 00422155    pop         edi
 00422156    pop         esi
 00422157    pop         ebx
 00422158    ret
end;*}

//0042215C
{*function sub_0042215C(?:UnicodeString; ?:?; ?:?; ?:?):?;
begin
 0042215C    push        ebp
 0042215D    mov         ebp,esp
 0042215F    add         esp,0FFFFFFF4
 00422162    push        ebx
 00422163    push        esi
 00422164    push        edi
 00422165    mov         dword ptr [ebp-8],ecx
 00422168    mov         dword ptr [ebp-4],edx
 0042216B    mov         edi,eax
 0042216D    mov         byte ptr [ebp-9],0
 00422171    mov         eax,dword ptr [ebp+8]
 00422174    mov         byte ptr [eax],0
 00422177    mov         edx,dword ptr [ebp-4]
 0042217A    mov         eax,edi
 0042217C    call        00422134
 00422181    mov         ebx,dword ptr [ebp-4]
 00422184    mov         ebx,dword ptr [ebx]
 00422186    xor         esi,esi
>00422188    jmp         004221A0
 0042218A    mov         eax,esi
 0042218C    add         eax,eax
 0042218E    lea         eax,[eax+eax*4]
 00422191    movzx       edx,word ptr [edi+ebx*2-2]
 00422196    sub         dx,30
 0042219A    add         ax,dx
 0042219D    mov         esi,eax
 0042219F    inc         ebx
 004221A0    mov         eax,edi
 004221A2    call        @UStrLen
 004221A7    cmp         ebx,eax
>004221A9    jg          004221C0
 004221AB    movzx       eax,word ptr [edi+ebx*2-2]
 004221B0    add         eax,0FFFFFFD0
 004221B3    sub         ax,0A
>004221B7    jae         004221C0
 004221B9    cmp         si,3E8
>004221BE    jb          0042218A
 004221C0    mov         eax,dword ptr [ebp-4]
 004221C3    cmp         ebx,dword ptr [eax]
>004221C5    jle         004221E4
 004221C7    mov         eax,ebx
 004221C9    mov         edx,dword ptr [ebp-4]
 004221CC    mov         edx,dword ptr [edx]
 004221CE    sub         al,dl
 004221D0    mov         edx,dword ptr [ebp+8]
 004221D3    mov         byte ptr [edx],al
 004221D5    mov         eax,dword ptr [ebp-4]
 004221D8    mov         dword ptr [eax],ebx
 004221DA    mov         eax,dword ptr [ebp-8]
 004221DD    mov         word ptr [eax],si
 004221E0    mov         byte ptr [ebp-9],1
 004221E4    movzx       eax,byte ptr [ebp-9]
 004221E8    pop         edi
 004221E9    pop         esi
 004221EA    pop         ebx
 004221EB    mov         esp,ebp
 004221ED    pop         ebp
 004221EE    ret         4
end;*}

//004221F4
{*function sub_004221F4(?:?; ?:?; ?:UString):?;
begin
 004221F4    push        ebp
 004221F5    mov         ebp,esp
 004221F7    add         esp,0FFFFFFF4
 004221FA    push        ebx
 004221FB    push        esi
 004221FC    xor         ebx,ebx
 004221FE    mov         dword ptr [ebp-0C],ebx
 00422201    mov         dword ptr [ebp-8],ecx
 00422204    mov         esi,edx
 00422206    mov         dword ptr [ebp-4],eax
 00422209    xor         eax,eax
 0042220B    push        ebp
 0042220C    push        422273
 00422211    push        dword ptr fs:[eax]
 00422214    mov         dword ptr fs:[eax],esp
 00422217    xor         ebx,ebx
 00422219    cmp         dword ptr [ebp-8],0
>0042221D    je          0042225D
 0042221F    mov         edx,esi
 00422221    mov         eax,dword ptr [ebp-4]
 00422224    call        00422134
 00422229    lea         eax,[ebp-0C]
 0042222C    push        eax
 0042222D    lea         eax,[ebp-8]
 00422230    call        0042650C
 00422235    mov         ecx,eax
 00422237    mov         edx,dword ptr [esi]
 00422239    dec         edx
 0042223A    lea         eax,[ebp-4]
 0042223D    call        00426870
 00422242    mov         edx,dword ptr [ebp-0C]
 00422245    mov         eax,dword ptr [ebp-8]
 00422248    call        AnsiCompareText
 0042224D    test        eax,eax
>0042224F    jne         0042225D
 00422251    lea         eax,[ebp-8]
 00422254    call        0042650C
 00422259    add         dword ptr [esi],eax
 0042225B    mov         bl,1
 0042225D    xor         eax,eax
 0042225F    pop         edx
 00422260    pop         ecx
 00422261    pop         ecx
 00422262    mov         dword ptr fs:[eax],edx
 00422265    push        42227A
 0042226A    lea         eax,[ebp-0C]
 0042226D    call        @UStrClr
 00422272    ret
>00422273    jmp         @HandleFinally
>00422278    jmp         0042226A
 0042227A    mov         eax,ebx
 0042227C    pop         esi
 0042227D    pop         ebx
 0042227E    mov         esp,ebp
 00422280    pop         ebp
 00422281    ret
end;*}

//00422284
{*function sub_00422284(?:UnicodeString; ?:?; ?:?):?;
begin
 00422284    push        ebx
 00422285    push        esi
 00422286    push        edi
 00422287    push        ebp
 00422288    mov         ebp,ecx
 0042228A    mov         edi,edx
 0042228C    mov         esi,eax
 0042228E    xor         ebx,ebx
 00422290    mov         edx,edi
 00422292    mov         eax,esi
 00422294    call        00422134
 00422299    mov         eax,esi
 0042229B    test        eax,eax
>0042229D    je          004222A4
 0042229F    sub         eax,4
 004222A2    mov         eax,dword ptr [eax]
 004222A4    cmp         eax,dword ptr [edi]
>004222A6    jl          004222B5
 004222A8    mov         eax,dword ptr [edi]
 004222AA    cmp         bp,word ptr [esi+eax*2-2]
>004222AF    jne         004222B5
 004222B1    inc         dword ptr [edi]
 004222B3    mov         bl,1
 004222B5    mov         eax,ebx
 004222B7    pop         ebp
 004222B8    pop         edi
 004222B9    pop         esi
 004222BA    pop         ebx
 004222BB    ret
end;*}

//004222BC
{*function sub_004222BC(?:?):?;
begin
 004222BC    push        ebx
 004222BD    push        esi
 004222BE    push        edi
 004222BF    mov         esi,eax
 004222C1    xor         ebx,ebx
 004222C3    mov         edi,1
>004222C8    jmp         004222FD
 004222CA    movzx       eax,word ptr [esi+edi*2-2]
 004222CF    and         ax,0DF
 004222D3    sub         ax,44
>004222D7    je          004222F8
 004222D9    dec         ax
>004222DC    je          004222EC
 004222DE    sub         ax,8
>004222E2    je          004222F4
 004222E4    sub         ax,0C
>004222E8    je          004222F0
>004222EA    jmp         004222FC
 004222EC    mov         bl,2
>004222EE    jmp         00422308
 004222F0    mov         bl,2
>004222F2    jmp         00422308
 004222F4    xor         ebx,ebx
>004222F6    jmp         00422308
 004222F8    mov         bl,1
>004222FA    jmp         00422308
 004222FC    inc         edi
 004222FD    mov         eax,esi
 004222FF    call        @UStrLen
 00422304    cmp         edi,eax
>00422306    jle         004222CA
 00422308    mov         eax,ebx
 0042230A    pop         edi
 0042230B    pop         esi
 0042230C    pop         ebx
 0042230D    ret
end;*}

//00422310
{*procedure sub_00422310(?:UnicodeString; ?:?);
begin
 00422310    push        ebx
 00422311    push        esi
 00422312    push        edi
 00422313    mov         ebx,edx
 00422315    mov         esi,eax
>00422317    jmp         00422347
 00422319    mov         eax,dword ptr [ebx]
 0042231B    movzx       edi,word ptr [esi+eax*2-2]
 00422320    cmp         di,0D800
>00422325    jb          0042232E
 00422327    cmp         di,0DFFF
>0042232C    jbe         00422332
 0042232E    xor         eax,eax
>00422330    jmp         00422334
 00422332    mov         al,1
 00422334    test        al,al
>00422336    je          00422345
 00422338    mov         edx,dword ptr [ebx]
 0042233A    mov         eax,esi
 0042233C    call        00425128
 00422341    mov         dword ptr [ebx],eax
>00422343    jmp         00422347
 00422345    inc         dword ptr [ebx]
 00422347    mov         eax,esi
 00422349    call        @UStrLen
 0042234E    cmp         eax,dword ptr [ebx]
>00422350    jl          00422362
 00422352    mov         eax,dword ptr [ebx]
 00422354    movzx       eax,word ptr [esi+eax*2-2]
 00422359    add         eax,0FFFFFFD0
 0042235C    sub         ax,0A
>00422360    jae         00422319
 00422362    pop         edi
 00422363    pop         esi
 00422364    pop         ebx
 00422365    ret
end;*}

//00422368
{*function sub_00422368(?:?; ?:?):?;
begin
 00422368    push        ebp
 00422369    mov         ebp,esp
 0042236B    push        ebx
 0042236C    mov         ebx,eax
 0042236E    cmp         dword ptr ds:[7C7CBC],12;gvar_007C7CBC
>00422375    jne         004223B1
 00422377    cmp         ebx,63
>0042237A    jg          004223A0
 0042237C    call        00421198
 00422381    movzx       ecx,ax
 00422384    mov         eax,dword ptr [ebp+8]
 00422387    mov         eax,dword ptr [eax-4]
 0042238A    cdq
 0042238B    xor         eax,edx
 0042238D    sub         eax,edx
 0042238F    add         ecx,eax
 00422391    mov         eax,ecx
 00422393    mov         ecx,64
 00422398    cdq
 00422399    idiv        eax,ecx
 0042239B    imul        eax,eax,64
 0042239E    add         ebx,eax
 004223A0    mov         eax,dword ptr [ebp+8]
 004223A3    cmp         dword ptr [eax-4],0
>004223A7    jle         004223B7
 004223A9    mov         eax,dword ptr [ebp+8]
 004223AC    neg         dword ptr [eax-4]
>004223AF    jmp         004223B7
 004223B1    mov         eax,dword ptr [ebp+8]
 004223B4    dec         dword ptr [eax-4]
 004223B7    mov         eax,dword ptr [ebp+8]
 004223BA    mov         eax,dword ptr [eax-4]
 004223BD    add         eax,ebx
 004223BF    pop         ebx
 004223C0    pop         ebp
 004223C1    ret
end;*}

//004223C4
{*function sub_004223C4(?:?; ?:?; ?:?; ?:?):?;
begin
 004223C4    push        ebp
 004223C5    mov         ebp,esp
 004223C7    add         esp,0FFFFFFCC
 004223CA    push        ebx
 004223CB    push        esi
 004223CC    push        edi
 004223CD    xor         ebx,ebx
 004223CF    mov         dword ptr [ebp-34],ebx
 004223D2    mov         dword ptr [ebp-30],ebx
 004223D5    mov         dword ptr [ebp-8],ebx
 004223D8    mov         dword ptr [ebp-0C],ebx
 004223DB    mov         dword ptr [ebp-14],ecx
 004223DE    mov         ebx,edx
 004223E0    mov         dword ptr [ebp-10],eax
 004223E3    mov         esi,dword ptr [ebp+8]
 004223E6    xor         eax,eax
 004223E8    push        ebp
 004223E9    push        422722
 004223EE    push        dword ptr fs:[eax]
 004223F1    mov         dword ptr fs:[eax],esp
 004223F4    xor         edi,edi
 004223F6    mov         word ptr [ebp-1E],0
 004223FC    mov         word ptr [ebp-20],0
 00422402    mov         byte ptr [ebp-24],0
 00422406    mov         byte ptr [ebp-15],0
 0042240A    mov         eax,dword ptr [esi+0C]
 0042240D    call        004222BC
 00422412    mov         byte ptr [ebp-16],al
 00422415    xor         eax,eax
 00422417    mov         dword ptr [ebp-4],eax
 0042241A    mov         eax,dword ptr [esi+0C]
 0042241D    cmp         word ptr [eax],67
>00422421    jne         00422458
 00422423    mov         edx,ebx
 00422425    mov         eax,dword ptr [ebp-10]
 00422428    call        00422310
 0042242D    lea         eax,[ebp-0C]
 00422430    push        eax
 00422431    mov         ecx,dword ptr [ebx]
 00422433    dec         ecx
 00422434    lea         eax,[ebp-10]
 00422437    xor         edx,edx
 00422439    call        00426870
 0042243E    lea         eax,[ebp-0C]
 00422441    lea         edx,[ebp-8]
 00422444    call        00426894
 00422449    mov         eax,esi
 0042244B    mov         edx,dword ptr [ebp-8]
 0042244E    call        00423B2C
 00422453    mov         dword ptr [ebp-4],eax
>00422456    jmp         004224A9
 00422458    mov         edx,dword ptr [esi+0C]
 0042245B    mov         eax,422744;'e'
 00422460    call        AnsiPos
 00422465    test        eax,eax
>00422467    jle         004224A9
 00422469    mov         eax,dword ptr [esi+0BC]
 0042246F    mov         dword ptr [ebp-28],eax
 00422472    mov         eax,dword ptr [ebp-28]
 00422475    test        eax,eax
>00422477    je          0042247E
 00422479    sub         eax,4
 0042247C    mov         eax,dword ptr [eax]
 0042247E    dec         eax
 0042247F    test        eax,eax
>00422481    jl          004224A9
 00422483    mov         eax,dword ptr [esi+0BC]
 00422489    mov         dword ptr [ebp-2C],eax
 0042248C    mov         eax,dword ptr [ebp-2C]
 0042248F    test        eax,eax
>00422491    je          00422498
 00422493    sub         eax,4
 00422496    mov         eax,dword ptr [eax]
 00422498    dec         eax
 00422499    lea         eax,[eax+eax*2]
 0042249C    mov         edx,dword ptr [esi+0BC]
 004224A2    mov         eax,dword ptr [edx+eax*8+4]
 004224A6    mov         dword ptr [ebp-4],eax
 004224A9    lea         eax,[ebp-21]
 004224AC    push        eax
 004224AD    lea         ecx,[ebp-18]
 004224B0    mov         edx,ebx
 004224B2    mov         eax,dword ptr [ebp-10]
 004224B5    call        0042215C
 004224BA    test        al,al
>004224BC    je          004226FA
 004224C2    movzx       ecx,word ptr [esi+6]
 004224C6    mov         edx,ebx
 004224C8    mov         eax,dword ptr [ebp-10]
 004224CB    call        00422284
 004224D0    test        al,al
>004224D2    je          004226FA
 004224D8    lea         eax,[ebp-22]
 004224DB    push        eax
 004224DC    lea         ecx,[ebp-1A]
 004224DF    mov         edx,ebx
 004224E1    mov         eax,dword ptr [ebp-10]
 004224E4    call        0042215C
 004224E9    test        al,al
>004224EB    je          004226FA
 004224F1    movzx       ecx,word ptr [esi+6]
 004224F5    mov         edx,ebx
 004224F7    mov         eax,dword ptr [ebp-10]
 004224FA    call        00422284
 004224FF    test        al,al
>00422501    je          004225DA
 00422507    lea         eax,[ebp-23]
 0042250A    push        eax
 0042250B    lea         ecx,[ebp-1C]
 0042250E    mov         edx,ebx
 00422510    mov         eax,dword ptr [ebp-10]
 00422513    call        0042215C
 00422518    test        al,al
>0042251A    je          004226FA
 00422520    movzx       eax,byte ptr [ebp-16]
 00422524    sub         al,1
>00422526    jb          00422530
>00422528    je          0042254D
 0042252A    dec         al
>0042252C    je          0042256A
>0042252E    jmp         00422585
 00422530    movzx       edi,word ptr [ebp-1C]
 00422534    movzx       eax,byte ptr [ebp-23]
 00422538    mov         byte ptr [ebp-24],al
 0042253B    movzx       eax,word ptr [ebp-18]
 0042253F    mov         word ptr [ebp-1E],ax
 00422543    movzx       eax,word ptr [ebp-1A]
 00422547    mov         word ptr [ebp-20],ax
>0042254B    jmp         00422585
 0042254D    movzx       edi,word ptr [ebp-1C]
 00422551    movzx       eax,byte ptr [ebp-23]
 00422555    mov         byte ptr [ebp-24],al
 00422558    movzx       eax,word ptr [ebp-1A]
 0042255C    mov         word ptr [ebp-1E],ax
 00422560    movzx       eax,word ptr [ebp-18]
 00422564    mov         word ptr [ebp-20],ax
>00422568    jmp         00422585
 0042256A    movzx       edi,word ptr [ebp-18]
 0042256E    movzx       eax,byte ptr [ebp-21]
 00422572    mov         byte ptr [ebp-24],al
 00422575    movzx       eax,word ptr [ebp-1A]
 00422579    mov         word ptr [ebp-1E],ax
 0042257D    movzx       eax,word ptr [ebp-1C]
 00422581    mov         word ptr [ebp-20],ax
 00422585    cmp         dword ptr [ebp-4],0
>00422589    jle         00422599
 0042258B    push        ebp
 0042258C    movzx       eax,di
 0042258F    call        00422368
 00422594    pop         ecx
 00422595    mov         edi,eax
>00422597    jmp         00422609
 00422599    cmp         byte ptr [ebp-24],2
>0042259D    ja          00422609
 0042259F    call        00421198
 004225A4    movzx       ecx,ax
 004225A7    movzx       eax,word ptr [esi+0C4]
 004225AE    sub         ecx,eax
 004225B0    mov         eax,ecx
 004225B2    push        ecx
 004225B3    mov         ecx,64
 004225B8    cdq
 004225B9    idiv        eax,ecx
 004225BB    pop         ecx
 004225BC    imul        ax,ax,64
 004225C0    add         di,ax
 004225C3    cmp         word ptr [esi+0C4],0
>004225CB    jbe         00422609
 004225CD    movzx       eax,di
 004225D0    cmp         ecx,eax
>004225D2    jle         00422609
 004225D4    add         di,64
>004225D8    jmp         00422609
 004225DA    call        00421198
 004225DF    mov         edi,eax
 004225E1    cmp         byte ptr [ebp-16],1
>004225E5    jne         004225F9
 004225E7    movzx       eax,word ptr [ebp-18]
 004225EB    mov         word ptr [ebp-20],ax
 004225EF    movzx       eax,word ptr [ebp-1A]
 004225F3    mov         word ptr [ebp-1E],ax
>004225F7    jmp         00422609
 004225F9    movzx       eax,word ptr [ebp-18]
 004225FD    mov         word ptr [ebp-1E],ax
 00422601    movzx       eax,word ptr [ebp-1A]
 00422605    mov         word ptr [ebp-20],ax
 00422609    movzx       ecx,word ptr [esi+6]
 0042260D    mov         edx,ebx
 0042260F    mov         eax,dword ptr [ebp-10]
 00422612    call        00422284
 00422617    mov         edx,ebx
 00422619    mov         eax,dword ptr [ebp-10]
 0042261C    call        00422134
 00422621    cmp         byte ptr ds:[7C7CC4],0;gvar_007C7CC4
>00422628    je          004226E4
 0042262E    lea         eax,[esi+0C]
 00422631    mov         edx,422754;'dddd'
 00422636    call        TStringHelper.Contains
 0042263B    test        al,al
>0042263D    je          004226E4
 00422643    mov         eax,dword ptr [esi+1C]
 00422646    movzx       eax,word ptr [eax]
 00422649    add         eax,0FFFFFFD0
 0042264C    sub         ax,0A
>00422650    jae         00422665
 00422652    mov         edx,ebx
 00422654    mov         eax,dword ptr [ebp-10]
 00422657    call        00422310
>0042265C    jmp         004226E4
>00422661    jmp         00422665
 00422663    inc         dword ptr [ebx]
 00422665    mov         eax,dword ptr [ebp-10]
 00422668    call        @UStrLen
 0042266D    cmp         eax,dword ptr [ebx]
>0042266F    jl          0042267E
 00422671    mov         eax,dword ptr [ebx]
 00422673    mov         edx,dword ptr [ebp-10]
 00422676    cmp         word ptr [edx+eax*2-2],20
>0042267C    jne         00422663
 0042267E    mov         edx,ebx
 00422680    mov         eax,dword ptr [ebp-10]
 00422683    call        00422134
 00422688    mov         eax,dword ptr [ebp-10]
 0042268B    call        @UStrLen
 00422690    cmp         eax,dword ptr [ebx]
>00422692    jl          004226E4
 00422694    lea         eax,[ebp-30]
 00422697    push        eax
 00422698    lea         eax,[esi+14]
 0042269B    call        0042650C
 004226A0    mov         ecx,eax
 004226A2    mov         edx,dword ptr [ebx]
 004226A4    dec         edx
 004226A5    lea         eax,[ebp-10]
 004226A8    call        00426870
 004226AD    mov         edx,dword ptr [ebp-30]
 004226B0    mov         eax,dword ptr [esi+14]
 004226B3    call        AnsiCompareText
 004226B8    test        eax,eax
>004226BA    je          004226E4
 004226BC    lea         eax,[ebp-34]
 004226BF    push        eax
 004226C0    lea         eax,[esi+18]
 004226C3    call        0042650C
 004226C8    mov         ecx,eax
 004226CA    mov         edx,dword ptr [ebx]
 004226CC    dec         edx
 004226CD    lea         eax,[ebp-10]
 004226D0    call        00426870
 004226D5    mov         edx,dword ptr [ebp-34]
 004226D8    mov         eax,dword ptr [esi+18]
 004226DB    call        AnsiCompareText
 004226E0    test        eax,eax
>004226E2    jne         00422665
 004226E4    mov         eax,dword ptr [ebp-14]
 004226E7    push        eax
 004226E8    movzx       ecx,word ptr [ebp-20]
 004226EC    movzx       edx,word ptr [ebp-1E]
 004226F0    mov         eax,edi
 004226F2    call        00420EB8
 004226F7    mov         byte ptr [ebp-15],al
 004226FA    xor         eax,eax
 004226FC    pop         edx
 004226FD    pop         ecx
 004226FE    pop         ecx
 004226FF    mov         dword ptr fs:[eax],edx
 00422702    push        422729
 00422707    lea         eax,[ebp-34]
 0042270A    mov         edx,2
 0042270F    call        @UStrArrayClr
 00422714    lea         eax,[ebp-0C]
 00422717    mov         edx,2
 0042271C    call        @UStrArrayClr
 00422721    ret
>00422722    jmp         @HandleFinally
>00422727    jmp         00422707
 00422729    movzx       eax,byte ptr [ebp-15]
 0042272D    pop         edi
 0042272E    pop         esi
 0042272F    pop         ebx
 00422730    mov         esp,ebp
 00422732    pop         ebp
 00422733    ret         4
end;*}

//00422760
{*function sub_00422760(?:?; ?:?; ?:?; ?:?):?;
begin
 00422760    push        ebp
 00422761    mov         ebp,esp
 00422763    add         esp,0FFFFFFF0
 00422766    push        ebx
 00422767    push        esi
 00422768    push        edi
 00422769    mov         dword ptr [ebp-4],ecx
 0042276C    mov         esi,edx
 0042276E    mov         ebx,eax
 00422770    mov         byte ptr [ebp-5],0
 00422774    or          edi,0FFFFFFFF
 00422777    mov         ecx,dword ptr [ebp+8]
 0042277A    mov         ecx,dword ptr [ecx+14]
 0042277D    mov         edx,esi
 0042277F    mov         eax,ebx
 00422781    call        004221F4
 00422786    test        al,al
>00422788    jne         0042279C
 0042278A    mov         edx,esi
 0042278C    mov         ecx,422944;'AM'
 00422791    mov         eax,ebx
 00422793    call        004221F4
 00422798    test        al,al
>0042279A    je          004227A0
 0042279C    xor         edi,edi
>0042279E    jmp         004227CA
 004227A0    mov         ecx,dword ptr [ebp+8]
 004227A3    mov         ecx,dword ptr [ecx+18]
 004227A6    mov         edx,esi
 004227A8    mov         eax,ebx
 004227AA    call        004221F4
 004227AF    test        al,al
>004227B1    jne         004227C5
 004227B3    mov         edx,esi
 004227B5    mov         ecx,422958;'PM'
 004227BA    mov         eax,ebx
 004227BC    call        004221F4
 004227C1    test        al,al
>004227C3    je          004227CA
 004227C5    mov         edi,0C
 004227CA    test        edi,edi
>004227CC    jl          004227D7
 004227CE    mov         edx,esi
 004227D0    mov         eax,ebx
 004227D2    call        00422134
 004227D7    lea         eax,[ebp-0F]
 004227DA    push        eax
 004227DB    lea         ecx,[ebp-8]
 004227DE    mov         edx,esi
 004227E0    mov         eax,ebx
 004227E2    call        0042215C
 004227E7    test        al,al
>004227E9    je          00422928
 004227EF    mov         word ptr [ebp-0A],0
 004227F5    mov         word ptr [ebp-0C],0
 004227FB    mov         word ptr [ebp-0E],0
 00422801    mov         ecx,dword ptr [ebp+8]
 00422804    movzx       ecx,word ptr [ecx+8]
 00422808    mov         edx,esi
 0042280A    mov         eax,ebx
 0042280C    call        00422284
 00422811    test        al,al
>00422813    je          00422888
 00422815    lea         eax,[ebp-0F]
 00422818    push        eax
 00422819    lea         ecx,[ebp-0A]
 0042281C    mov         edx,esi
 0042281E    mov         eax,ebx
 00422820    call        0042215C
 00422825    test        al,al
>00422827    je          00422928
 0042282D    mov         ecx,dword ptr [ebp+8]
 00422830    movzx       ecx,word ptr [ecx+8]
 00422834    mov         edx,esi
 00422836    mov         eax,ebx
 00422838    call        00422284
 0042283D    test        al,al
>0042283F    je          00422888
 00422841    lea         eax,[ebp-0F]
 00422844    push        eax
 00422845    lea         ecx,[ebp-0C]
 00422848    mov         edx,esi
 0042284A    mov         eax,ebx
 0042284C    call        0042215C
 00422851    test        al,al
>00422853    je          00422928
 00422859    mov         ecx,dword ptr [ebp+8]
 0042285C    movzx       ecx,word ptr [ecx+0C2]
 00422863    mov         edx,esi
 00422865    mov         eax,ebx
 00422867    call        00422284
 0042286C    test        al,al
>0042286E    je          00422888
 00422870    lea         eax,[ebp-0F]
 00422873    push        eax
 00422874    lea         ecx,[ebp-0E]
 00422877    mov         edx,esi
 00422879    mov         eax,ebx
 0042287B    call        0042215C
 00422880    test        al,al
>00422882    je          00422928
 00422888    test        edi,edi
>0042288A    jge         004228DF
 0042288C    mov         ecx,dword ptr [ebp+8]
 0042288F    mov         ecx,dword ptr [ecx+14]
 00422892    mov         edx,esi
 00422894    mov         eax,ebx
 00422896    call        004221F4
 0042289B    test        al,al
>0042289D    jne         004228B1
 0042289F    mov         edx,esi
 004228A1    mov         ecx,422944;'AM'
 004228A6    mov         eax,ebx
 004228A8    call        004221F4
 004228AD    test        al,al
>004228AF    je          004228B5
 004228B1    xor         edi,edi
>004228B3    jmp         004228DF
 004228B5    mov         ecx,dword ptr [ebp+8]
 004228B8    mov         ecx,dword ptr [ecx+18]
 004228BB    mov         edx,esi
 004228BD    mov         eax,ebx
 004228BF    call        004221F4
 004228C4    test        al,al
>004228C6    jne         004228DA
 004228C8    mov         edx,esi
 004228CA    mov         ecx,422958;'PM'
 004228CF    mov         eax,ebx
 004228D1    call        004221F4
 004228D6    test        al,al
>004228D8    je          004228DF
 004228DA    mov         edi,0C
 004228DF    test        edi,edi
>004228E1    jl          00422902
 004228E3    cmp         word ptr [ebp-8],0
>004228E8    je          00422928
 004228EA    cmp         word ptr [ebp-8],0C
>004228EF    ja          00422928
 004228F1    cmp         word ptr [ebp-8],0C
>004228F6    jne         004228FE
 004228F8    mov         word ptr [ebp-8],0
 004228FE    add         word ptr [ebp-8],di
 00422902    mov         edx,esi
 00422904    mov         eax,ebx
 00422906    call        00422134
 0042290B    movzx       eax,word ptr [ebp-0E]
 0042290F    push        eax
 00422910    mov         eax,dword ptr [ebp-4]
 00422913    push        eax
 00422914    movzx       ecx,word ptr [ebp-0C]
 00422918    movzx       edx,word ptr [ebp-0A]
 0042291C    movzx       eax,word ptr [ebp-8]
 00422920    call        00420D68
 00422925    mov         byte ptr [ebp-5],al
 00422928    movzx       eax,byte ptr [ebp-5]
 0042292C    pop         edi
 0042292D    pop         esi
 0042292E    pop         ebx
 0042292F    mov         esp,ebp
 00422931    pop         ebp
 00422932    ret         4
end;*}

//00422960
{*function sub_00422960(?:?; ?:?):?;
begin
 00422960    push        ebx
 00422961    push        esi
 00422962    add         esp,0FFFFFFF0
 00422965    mov         esi,edx
 00422967    mov         ebx,eax
 00422969    mov         ecx,esi
 0042296B    mov         edx,esp
 0042296D    mov         eax,ebx
 0042296F    call        0042299C
 00422974    test        al,al
>00422976    jne         00422991
 00422978    mov         dword ptr [esp+8],ebx
 0042297C    mov         byte ptr [esp+0C],11
 00422981    lea         edx,[esp+8]
 00422985    mov         eax,[007C480C];^SResString2:TResStringRec
 0042298A    xor         ecx,ecx
 0042298C    call        ConvertErrorFmt
 00422991    fld         qword ptr [esp]
 00422994    add         esp,10
 00422997    pop         esi
 00422998    pop         ebx
 00422999    ret
end;*}

//0042299C
{*function sub_0042299C(?:UnicodeString; ?:?; ?:?):?;
begin
 0042299C    push        ebx
 0042299D    push        esi
 0042299E    push        edi
 0042299F    push        ecx
 004229A0    mov         edi,ecx
 004229A2    mov         esi,edx
 004229A4    mov         ebx,eax
 004229A6    mov         dword ptr [esp],1
 004229AD    push        edi
 004229AE    mov         ecx,esi
 004229B0    lea         edx,[esp+4]
 004229B4    mov         eax,ebx
 004229B6    call        004223C4
 004229BB    test        al,al
>004229BD    je          004229D2
 004229BF    mov         eax,ebx
 004229C1    test        eax,eax
>004229C3    je          004229CA
 004229C5    sub         eax,4
 004229C8    mov         eax,dword ptr [eax]
 004229CA    cmp         eax,dword ptr [esp]
 004229CD    setl        al
>004229D0    jmp         004229D4
 004229D2    xor         eax,eax
 004229D4    pop         edx
 004229D5    pop         edi
 004229D6    pop         esi
 004229D7    pop         ebx
 004229D8    ret
end;*}

//004229DC
{*function sub_004229DC(?:?; ?:?):?;
begin
 004229DC    push        ebx
 004229DD    push        esi
 004229DE    add         esp,0FFFFFFF0
 004229E1    mov         esi,edx
 004229E3    mov         ebx,eax
 004229E5    mov         ecx,esi
 004229E7    mov         edx,esp
 004229E9    mov         eax,ebx
 004229EB    call        00422A18
 004229F0    test        al,al
>004229F2    jne         00422A0D
 004229F4    mov         dword ptr [esp+8],ebx
 004229F8    mov         byte ptr [esp+0C],11
 004229FD    lea         edx,[esp+8]
 00422A01    mov         eax,[007C44F4];^SResString3:TResStringRec
 00422A06    xor         ecx,ecx
 00422A08    call        ConvertErrorFmt
 00422A0D    fld         qword ptr [esp]
 00422A10    add         esp,10
 00422A13    pop         esi
 00422A14    pop         ebx
 00422A15    ret
end;*}

//00422A18
{*function sub_00422A18(?:?; ?:?; ?:?):?;
begin
 00422A18    push        ebx
 00422A19    push        esi
 00422A1A    push        edi
 00422A1B    push        ecx
 00422A1C    mov         edi,ecx
 00422A1E    mov         esi,edx
 00422A20    mov         ebx,eax
 00422A22    mov         dword ptr [esp],1
 00422A29    push        edi
 00422A2A    mov         ecx,esi
 00422A2C    lea         edx,[esp+4]
 00422A30    mov         eax,ebx
 00422A32    call        00422760
 00422A37    test        al,al
>00422A39    je          00422A4E
 00422A3B    mov         eax,ebx
 00422A3D    test        eax,eax
>00422A3F    je          00422A46
 00422A41    sub         eax,4
 00422A44    mov         eax,dword ptr [eax]
 00422A46    cmp         eax,dword ptr [esp]
 00422A49    setl        al
>00422A4C    jmp         00422A50
 00422A4E    xor         eax,eax
 00422A50    pop         edx
 00422A51    pop         edi
 00422A52    pop         esi
 00422A53    pop         ebx
 00422A54    ret
end;*}

//00422A58
{*function sub_00422A58(?:?; ?:?):?;
begin
 00422A58    push        ebx
 00422A59    push        esi
 00422A5A    add         esp,0FFFFFFF0
 00422A5D    mov         esi,edx
 00422A5F    mov         ebx,eax
 00422A61    mov         ecx,esi
 00422A63    mov         edx,esp
 00422A65    mov         eax,ebx
 00422A67    call        00422A94
 00422A6C    test        al,al
>00422A6E    jne         00422A89
 00422A70    mov         dword ptr [esp+8],ebx
 00422A74    mov         byte ptr [esp+0C],11
 00422A79    lea         edx,[esp+8]
 00422A7D    mov         eax,[007C425C];^SResString4:TResStringRec
 00422A82    xor         ecx,ecx
 00422A84    call        ConvertErrorFmt
 00422A89    fld         qword ptr [esp]
 00422A8C    add         esp,10
 00422A8F    pop         esi
 00422A90    pop         ebx
 00422A91    ret
end;*}

//00422A94
{*function sub_00422A94(?:?; ?:?; ?:?):?;
begin
 00422A94    push        ebx
 00422A95    push        esi
 00422A96    push        edi
 00422A97    push        ebp
 00422A98    add         esp,0FFFFFFD8
 00422A9B    mov         esi,ecx
 00422A9D    mov         dword ptr [esp],edx
 00422AA0    mov         edi,eax
 00422AA2    mov         bl,1
 00422AA4    mov         dword ptr [esp+4],1
 00422AAC    xor         eax,eax
 00422AAE    mov         dword ptr [esp+20],eax
 00422AB2    mov         dword ptr [esp+24],eax
 00422AB6    mov         eax,dword ptr [esi+0C]
 00422AB9    cmp         word ptr [eax],67
>00422ABD    je          00422ACA
 00422ABF    lea         edx,[esp+4]
 00422AC3    mov         eax,edi
 00422AC5    call        00422310
 00422ACA    push        esi
 00422ACB    lea         ecx,[esp+1C]
 00422ACF    lea         edx,[esp+8]
 00422AD3    mov         eax,edi
 00422AD5    call        004223C4
 00422ADA    test        al,al
>00422ADC    je          00422C71
 00422AE2    mov         eax,dword ptr [esp+4]
 00422AE6    mov         dword ptr [esp+8],eax
 00422AEA    lea         edx,[esp+8]
 00422AEE    mov         eax,edi
 00422AF0    call        00422310
 00422AF5    mov         eax,edi
 00422AF7    test        eax,eax
>00422AF9    je          00422B00
 00422AFB    sub         eax,4
 00422AFE    mov         eax,dword ptr [eax]
 00422B00    cmp         eax,dword ptr [esp+8]
>00422B04    jle         00422C5F
 00422B0A    mov         eax,dword ptr [esp+4]
 00422B0E    dec         eax
 00422B0F    mov         dword ptr [esp+0C],eax
 00422B13    xor         ebx,ebx
>00422B15    jmp         00422BD0
 00422B1A    cmp         dword ptr [esp+0C],0
>00422B1F    jle         00422B93
 00422B21    mov         eax,dword ptr [esp+0C]
 00422B25    cmp         eax,dword ptr [esp+8]
>00422B29    jge         00422B93
 00422B2B    inc         dword ptr [esp+0C]
 00422B2F    mov         eax,dword ptr [esp+0C]
 00422B33    mov         dword ptr [esp+10],eax
 00422B37    mov         ecx,dword ptr [esi+14]
 00422B3A    lea         edx,[esp+0C]
 00422B3E    mov         eax,edi
 00422B40    call        004221F4
 00422B45    test        al,al
>00422B47    jne         00422B87
 00422B49    lea         edx,[esp+0C]
 00422B4D    mov         ecx,422C98;'AM'
 00422B52    mov         eax,edi
 00422B54    call        004221F4
 00422B59    test        al,al
>00422B5B    jne         00422B87
 00422B5D    mov         ecx,dword ptr [esi+18]
 00422B60    lea         edx,[esp+0C]
 00422B64    mov         eax,edi
 00422B66    call        004221F4
 00422B6B    test        al,al
>00422B6D    jne         00422B87
 00422B6F    lea         edx,[esp+0C]
 00422B73    mov         ecx,422CAC;'PM'
 00422B78    mov         eax,edi
 00422B7A    call        004221F4
 00422B7F    test        al,al
>00422B81    jne         00422B87
 00422B83    xor         ebx,ebx
>00422B85    jmp         00422B89
 00422B87    mov         bl,1
 00422B89    mov         eax,dword ptr [esp+10]
 00422B8D    mov         dword ptr [esp+0C],eax
>00422B91    jmp         00422B95
 00422B93    mov         bl,1
 00422B95    test        bl,bl
>00422B97    jne         00422BD0
>00422B99    jmp         00422B9F
 00422B9B    inc         dword ptr [esp+0C]
 00422B9F    mov         eax,dword ptr [esp+0C]
 00422BA3    cmp         word ptr [edi+eax*2-2],20
>00422BA9    je          00422BB8
 00422BAB    mov         eax,edi
 00422BAD    call        @UStrLen
 00422BB2    cmp         eax,dword ptr [esp+0C]
>00422BB6    jge         00422B9B
 00422BB8    mov         ebp,edi
 00422BBA    test        ebp,ebp
>00422BBC    je          00422BC4
 00422BBE    sub         ebp,4
 00422BC1    mov         ebp,dword ptr [ebp]
 00422BC4    cmp         ebp,dword ptr [esp+0C]
>00422BC8    jge         00422BD0
 00422BCA    xor         eax,eax
 00422BCC    mov         dword ptr [esp+0C],eax
 00422BD0    test        bl,bl
>00422BD2    jne         00422BE2
 00422BD4    mov         eax,dword ptr [esp+0C]
 00422BD8    cmp         eax,dword ptr [esp+8]
>00422BDC    jl          00422B1A
 00422BE2    test        bl,bl
>00422BE4    je          00422C15
 00422BE6    cmp         dword ptr [esp+0C],0
>00422BEB    jle         00422C0B
 00422BED    mov         eax,dword ptr [esp+0C]
 00422BF1    cmp         eax,dword ptr [esp+8]
>00422BF5    jge         00422C01
 00422BF7    mov         eax,dword ptr [esp+0C]
 00422BFB    mov         dword ptr [esp+4],eax
>00422BFF    jmp         00422C1D
 00422C01    mov         eax,dword ptr [esp+8]
 00422C05    mov         dword ptr [esp+4],eax
>00422C09    jmp         00422C1D
 00422C0B    mov         eax,dword ptr [esp+8]
 00422C0F    mov         dword ptr [esp+4],eax
>00422C13    jmp         00422C1D
 00422C15    mov         eax,dword ptr [esp+8]
 00422C19    mov         dword ptr [esp+4],eax
 00422C1D    push        esi
 00422C1E    lea         ecx,[esp+24]
 00422C22    lea         edx,[esp+8]
 00422C26    mov         eax,edi
 00422C28    call        00422760
 00422C2D    mov         ebx,eax
 00422C2F    test        bl,bl
>00422C31    je          00422C7F
 00422C33    fldz
 00422C35    fcomp       qword ptr [esp+18]
 00422C39    wait
 00422C3A    fnstsw      al
 00422C3C    sahf
>00422C3D    ja          00422C4F
 00422C3F    fld         qword ptr [esp+18]
 00422C43    fadd        qword ptr [esp+20]
 00422C47    mov         eax,dword ptr [esp]
 00422C4A    fstp        qword ptr [eax]
 00422C4C    wait
>00422C4D    jmp         00422C7F
 00422C4F    fld         qword ptr [esp+18]
 00422C53    fsub        qword ptr [esp+20]
 00422C57    mov         eax,dword ptr [esp]
 00422C5A    fstp        qword ptr [eax]
 00422C5C    wait
>00422C5D    jmp         00422C7F
 00422C5F    mov         eax,dword ptr [esp]
 00422C62    mov         edx,dword ptr [esp+18]
 00422C66    mov         dword ptr [eax],edx
 00422C68    mov         edx,dword ptr [esp+1C]
 00422C6C    mov         dword ptr [eax+4],edx
>00422C6F    jmp         00422C7F
 00422C71    mov         ecx,esi
 00422C73    mov         edx,dword ptr [esp]
 00422C76    mov         eax,edi
 00422C78    call        00422A18
 00422C7D    mov         ebx,eax
 00422C7F    mov         eax,ebx
 00422C81    add         esp,28
 00422C84    pop         ebp
 00422C85    pop         edi
 00422C86    pop         esi
 00422C87    pop         ebx
 00422C88    ret
end;*}

//00422CB4
{*procedure sub_00422CB4(?:Integer; ?:?; ?:?);
begin
 00422CB4    push        ebp
 00422CB5    mov         ebp,esp
 00422CB7    push        ecx
 00422CB8    push        ebx
 00422CB9    push        esi
 00422CBA    mov         esi,ecx
 00422CBC    mov         ecx,3300
 00422CC1    test        edx,edx
>00422CC3    je          00422CCB
 00422CC5    or          ecx,800
 00422CCB    push        0
 00422CCD    push        0
 00422CCF    lea         ebx,[ebp-4]
 00422CD2    push        ebx
 00422CD3    push        0
 00422CD5    push        eax
 00422CD6    push        edx
 00422CD7    push        ecx
 00422CD8    call        kernel32.FormatMessageW
 00422CDD    xor         ecx,ecx
 00422CDF    push        ebp
 00422CE0    push        422D2A
 00422CE5    push        dword ptr fs:[ecx]
 00422CE8    mov         dword ptr fs:[ecx],esp
>00422CEB    jmp         00422CEE
 00422CED    dec         eax
 00422CEE    test        eax,eax
>00422CF0    jle         00422D06
 00422CF2    mov         edx,dword ptr [ebp-4]
 00422CF5    movzx       edx,word ptr [edx+eax*2-2]
 00422CFA    cmp         dx,20
>00422CFE    jbe         00422CED
 00422D00    cmp         dx,2E
>00422D04    je          00422CED
 00422D06    mov         edx,esi
 00422D08    mov         ecx,eax
 00422D0A    mov         eax,dword ptr [ebp-4]
 00422D0D    xchg        eax,edx
 00422D0E    call        @UStrFromPWCharLen
 00422D13    xor         eax,eax
 00422D15    pop         edx
 00422D16    pop         ecx
 00422D17    pop         ecx
 00422D18    mov         dword ptr fs:[eax],edx
 00422D1B    push        422D31
 00422D20    mov         eax,dword ptr [ebp-4]
 00422D23    push        eax
 00422D24    call        kernel32.LocalFree
 00422D29    ret
>00422D2A    jmp         @HandleFinally
>00422D2F    jmp         00422D20
 00422D31    pop         esi
 00422D32    pop         ebx
 00422D33    pop         ecx
 00422D34    pop         ebp
 00422D35    ret
end;*}

//00422D38
{*procedure sub_00422D38(?:?; ?:?; ?:UString; ?:?);
begin
 00422D38    push        ebp
 00422D39    mov         ebp,esp
 00422D3B    add         esp,0FFFFFE00
 00422D41    push        ebx
 00422D42    push        esi
 00422D43    mov         esi,ecx
 00422D45    mov         ebx,dword ptr [ebp+8]
 00422D48    push        100
 00422D4D    lea         ecx,[ebp-200]
 00422D53    push        ecx
 00422D54    push        edx
 00422D55    push        eax
 00422D56    call        kernel32.GetLocaleInfoW
 00422D5B    test        eax,eax
>00422D5D    jle         00422D71
 00422D5F    mov         ecx,eax
 00422D61    dec         ecx
 00422D62    lea         edx,[ebp-200]
 00422D68    mov         eax,ebx
 00422D6A    call        @UStrFromPWCharLen
>00422D6F    jmp         00422D7A
 00422D71    mov         eax,ebx
 00422D73    mov         edx,esi
 00422D75    call        @UStrAsg
 00422D7A    pop         esi
 00422D7B    pop         ebx
 00422D7C    mov         esp,ebp
 00422D7E    pop         ebp
 00422D7F    ret         4
end;*}

//00422D84
{*function sub_00422D84(?:?; ?:?; ?:?):?;
begin
 00422D84    push        ebx
 00422D85    push        esi
 00422D86    push        edi
 00422D87    push        ecx
 00422D88    mov         edi,ecx
 00422D8A    mov         esi,edx
 00422D8C    mov         ebx,eax
 00422D8E    push        2
 00422D90    lea         eax,[esp+4]
 00422D94    push        eax
 00422D95    push        esi
 00422D96    push        ebx
 00422D97    call        kernel32.GetLocaleInfoW
 00422D9C    test        eax,eax
>00422D9E    jle         00422DA6
 00422DA0    movzx       eax,word ptr [esp]
>00422DA4    jmp         00422DA8
 00422DA6    mov         eax,edi
 00422DA8    pop         edx
 00422DA9    pop         edi
 00422DAA    pop         esi
 00422DAB    pop         ebx
 00422DAC    ret
end;*}

//00422DB0
{*procedure sub_00422DB0(?:?; ?:?);
begin
 00422DB0    push        ebp
 00422DB1    mov         ebp,esp
 00422DB3    mov         ecx,7
 00422DB8    push        0
 00422DBA    push        0
 00422DBC    dec         ecx
>00422DBD    jne         00422DB8
 00422DBF    push        ebx
 00422DC0    push        esi
 00422DC1    push        edi
 00422DC2    mov         ebx,edx
 00422DC4    mov         esi,eax
 00422DC6    xor         eax,eax
 00422DC8    push        ebp
 00422DC9    push        423095
 00422DCE    push        dword ptr fs:[eax]
 00422DD1    mov         dword ptr fs:[eax],esp
 00422DD4    push        1
 00422DD6    push        esi
 00422DD7    call        kernel32.IsValidLocale
 00422DDC    test        eax,eax
>00422DDE    jne         00422DE7
 00422DE0    call        kernel32.GetThreadLocale
 00422DE5    mov         esi,eax
 00422DE7    lea         eax,[ebx+0BC]
 00422DED    mov         edx,dword ptr ds:[41996C];:TFormatSettings.:5
 00422DF3    call        @DynArrayClear
 00422DF8    mov         edx,ebx
 00422DFA    mov         eax,esi
 00422DFC    call        004234E4
 00422E01    mov         edx,ebx
 00422E03    mov         eax,esi
 00422E05    call        004231A4
 00422E0A    mov         edx,ebx
 00422E0C    mov         eax,esi
 00422E0E    call        00423260
 00422E13    lea         eax,[ebp-10]
 00422E16    push        eax
 00422E17    xor         ecx,ecx
 00422E19    mov         edx,14
 00422E1E    mov         eax,esi
 00422E20    call        00422D38
 00422E25    mov         edx,dword ptr [ebp-10]
 00422E28    mov         eax,ebx
 00422E2A    call        @UStrAsg
 00422E2F    lea         eax,[ebp-14]
 00422E32    push        eax
 00422E33    mov         ecx,4230B0;'0'
 00422E38    mov         edx,1B
 00422E3D    mov         eax,esi
 00422E3F    call        00422D38
 00422E44    mov         eax,dword ptr [ebp-14]
 00422E47    xor         edx,edx
 00422E49    call        StrToIntDef
 00422E4E    mov         byte ptr [ebx+4],al
 00422E51    lea         eax,[ebp-18]
 00422E54    push        eax
 00422E55    mov         ecx,4230B0;'0'
 00422E5A    mov         edx,1C
 00422E5F    mov         eax,esi
 00422E61    call        00422D38
 00422E66    mov         eax,dword ptr [ebp-18]
 00422E69    xor         edx,edx
 00422E6B    call        StrToIntDef
 00422E70    mov         byte ptr [ebx+0C6],al
 00422E76    mov         cx,2C
 00422E7A    mov         edx,0F
 00422E7F    mov         eax,esi
 00422E81    call        00422D84
 00422E86    mov         word ptr [ebx+0C0],ax
 00422E8D    mov         cx,2E
 00422E91    mov         edx,0E
 00422E96    mov         eax,esi
 00422E98    call        00422D84
 00422E9D    mov         word ptr [ebx+0C2],ax
 00422EA4    lea         eax,[ebp-1C]
 00422EA7    push        eax
 00422EA8    mov         ecx,4230B0;'0'
 00422EAD    mov         edx,19
 00422EB2    mov         eax,esi
 00422EB4    call        00422D38
 00422EB9    mov         eax,dword ptr [ebp-1C]
 00422EBC    xor         edx,edx
 00422EBE    call        StrToIntDef
 00422EC3    mov         byte ptr [ebx+5],al
 00422EC6    mov         cx,2F
 00422ECA    mov         edx,1D
 00422ECF    mov         eax,esi
 00422ED1    call        00422D84
 00422ED6    mov         edi,eax
 00422ED8    mov         word ptr [ebx+6],di
 00422EDC    push        edi
 00422EDD    lea         eax,[ebp-20]
 00422EE0    push        eax
 00422EE1    mov         ecx,4230C0;'m/d/yy'
 00422EE6    mov         edx,1F
 00422EEB    mov         eax,esi
 00422EED    call        00423840
 00422EF2    mov         edx,dword ptr [ebp-20]
 00422EF5    lea         eax,[ebx+0C]
 00422EF8    call        @UStrAsg
 00422EFD    movzx       eax,word ptr [ebx+6]
 00422F01    push        eax
 00422F02    lea         eax,[ebp-24]
 00422F05    push        eax
 00422F06    mov         ecx,4230DC;'mmmm d, yyyy'
 00422F0B    mov         edx,20
 00422F10    mov         eax,esi
 00422F12    call        00423840
 00422F17    mov         edx,dword ptr [ebp-24]
 00422F1A    lea         eax,[ebx+10]
 00422F1D    call        @UStrAsg
 00422F22    mov         cx,3A
 00422F26    mov         edx,1E
 00422F2B    mov         eax,esi
 00422F2D    call        00422D84
 00422F32    mov         word ptr [ebx+8],ax
 00422F36    lea         eax,[ebp-28]
 00422F39    push        eax
 00422F3A    mov         ecx,423104;'am'
 00422F3F    mov         edx,28
 00422F44    mov         eax,esi
 00422F46    call        00422D38
 00422F4B    mov         edx,dword ptr [ebp-28]
 00422F4E    lea         eax,[ebx+14]
 00422F51    call        @UStrAsg
 00422F56    lea         eax,[ebp-2C]
 00422F59    push        eax
 00422F5A    mov         ecx,423118;'pm'
 00422F5F    mov         edx,29
 00422F64    mov         eax,esi
 00422F66    call        00422D38
 00422F6B    mov         edx,dword ptr [ebp-2C]
 00422F6E    lea         eax,[ebx+18]
 00422F71    call        @UStrAsg
 00422F76    lea         eax,[ebp-8]
 00422F79    call        @UStrClr
 00422F7E    lea         eax,[ebp-0C]
 00422F81    call        @UStrClr
 00422F86    lea         eax,[ebp-30]
 00422F89    push        eax
 00422F8A    mov         ecx,4230B0;'0'
 00422F8F    mov         edx,25
 00422F94    mov         eax,esi
 00422F96    call        00422D38
 00422F9B    mov         eax,dword ptr [ebp-30]
 00422F9E    xor         edx,edx
 00422FA0    call        StrToIntDef
 00422FA5    test        eax,eax
>00422FA7    jne         00422FB8
 00422FA9    lea         eax,[ebp-4]
 00422FAC    mov         edx,42312C;'h'
 00422FB1    call        @UStrLAsg
>00422FB6    jmp         00422FC5
 00422FB8    lea         eax,[ebp-4]
 00422FBB    mov         edx,42313C;'hh'
 00422FC0    call        @UStrLAsg
 00422FC5    lea         eax,[ebp-34]
 00422FC8    push        eax
 00422FC9    mov         ecx,4230B0;'0'
 00422FCE    mov         edx,23
 00422FD3    mov         eax,esi
 00422FD5    call        00422D38
 00422FDA    mov         eax,dword ptr [ebp-34]
 00422FDD    xor         edx,edx
 00422FDF    call        StrToIntDef
 00422FE4    test        eax,eax
>00422FE6    jne         00423027
 00422FE8    lea         eax,[ebp-38]
 00422FEB    push        eax
 00422FEC    mov         ecx,4230B0;'0'
 00422FF1    mov         edx,1005
 00422FF6    mov         eax,esi
 00422FF8    call        00422D38
 00422FFD    mov         eax,dword ptr [ebp-38]
 00423000    xor         edx,edx
 00423002    call        StrToIntDef
 00423007    test        eax,eax
>00423009    jne         0042301A
 0042300B    lea         eax,[ebp-0C]
 0042300E    mov         edx,423150;' AMPM'
 00423013    call        @UStrLAsg
>00423018    jmp         00423027
 0042301A    lea         eax,[ebp-8]
 0042301D    mov         edx,423168;'AMPM '
 00423022    call        @UStrLAsg
 00423027    push        dword ptr [ebp-8]
 0042302A    push        dword ptr [ebp-4]
 0042302D    push        423180;':mm'
 00423032    push        dword ptr [ebp-0C]
 00423035    lea         eax,[ebx+1C]
 00423038    mov         edx,4
 0042303D    call        @UStrCatN
 00423042    push        dword ptr [ebp-8]
 00423045    push        dword ptr [ebp-4]
 00423048    push        423194;':mm:ss'
 0042304D    push        dword ptr [ebp-0C]
 00423050    lea         eax,[ebx+20]
 00423053    mov         edx,4
 00423058    call        @UStrCatN
 0042305D    mov         cx,2C
 00423061    mov         edx,0C
 00423066    mov         eax,esi
 00423068    call        00422D84
 0042306D    mov         word ptr [ebx+0A],ax
 00423071    mov         word ptr [ebx+0C4],32
 0042307A    xor         eax,eax
 0042307C    pop         edx
 0042307D    pop         ecx
 0042307E    pop         ecx
 0042307F    mov         dword ptr fs:[eax],edx
 00423082    push        42309C
 00423087    lea         eax,[ebp-38]
 0042308A    mov         edx,0E
 0042308F    call        @UStrArrayClr
 00423094    ret
>00423095    jmp         @HandleFinally
>0042309A    jmp         00423087
 0042309C    pop         edi
 0042309D    pop         esi
 0042309E    pop         ebx
 0042309F    mov         esp,ebp
 004230A1    pop         ebp
 004230A2    ret
end;*}

//004231A4
{*procedure sub_004231A4(?:?; ?:?);
begin
 004231A4    push        ebp
 004231A5    mov         ebp,esp
 004231A7    add         esp,0FFFFFFF0
 004231AA    push        ebx
 004231AB    push        esi
 004231AC    push        edi
 004231AD    xor         ecx,ecx
 004231AF    mov         dword ptr [ebp-10],ecx
 004231B2    mov         dword ptr [ebp-0C],ecx
 004231B5    mov         dword ptr [ebp-8],edx
 004231B8    mov         dword ptr [ebp-4],eax
 004231BB    xor         eax,eax
 004231BD    push        ebp
 004231BE    push        42324F
 004231C3    push        dword ptr fs:[eax]
 004231C6    mov         dword ptr fs:[eax],esp
 004231C9    mov         esi,1
 004231CE    mov         ebx,dword ptr [ebp-8]
 004231D1    add         ebx,84
 004231D7    lea         eax,[esi+5]
 004231DA    mov         ecx,7
 004231DF    cdq
 004231E0    idiv        eax,ecx
 004231E2    mov         edi,edx
 004231E4    push        79F4B4;^SResString90:TResStringRec
 004231E9    push        6
 004231EB    lea         eax,[ebp-0C]
 004231EE    push        eax
 004231EF    mov         ecx,esi
 004231F1    dec         ecx
 004231F2    lea         edx,[edi+31]
 004231F5    mov         eax,dword ptr [ebp-4]
 004231F8    call        004237C0
 004231FD    mov         edx,dword ptr [ebp-0C]
 00423200    mov         eax,ebx
 00423202    call        @UStrAsg
 00423207    push        79F4D0;^SResString97:TResStringRec
 0042320C    push        6
 0042320E    lea         eax,[ebp-10]
 00423211    push        eax
 00423212    mov         ecx,esi
 00423214    dec         ecx
 00423215    lea         edx,[edi+2A]
 00423218    mov         eax,dword ptr [ebp-4]
 0042321B    call        004237C0
 00423220    mov         edx,dword ptr [ebp-10]
 00423223    lea         eax,[ebx+1C]
 00423226    call        @UStrAsg
 0042322B    inc         esi
 0042322C    add         ebx,4
 0042322F    cmp         esi,8
>00423232    jne         004231D7
 00423234    xor         eax,eax
 00423236    pop         edx
 00423237    pop         ecx
 00423238    pop         ecx
 00423239    mov         dword ptr fs:[eax],edx
 0042323C    push        423256
 00423241    lea         eax,[ebp-10]
 00423244    mov         edx,2
 00423249    call        @UStrArrayClr
 0042324E    ret
>0042324F    jmp         @HandleFinally
>00423254    jmp         00423241
 00423256    pop         edi
 00423257    pop         esi
 00423258    pop         ebx
 00423259    mov         esp,ebp
 0042325B    pop         ebp
 0042325C    ret
end;*}

//00423260
{*procedure sub_00423260(?:?; ?:?);
begin
 00423260    push        ebp
 00423261    mov         ebp,esp
 00423263    push        0
 00423265    push        0
 00423267    push        0
 00423269    push        ebx
 0042326A    push        esi
 0042326B    push        edi
 0042326C    mov         dword ptr [ebp-4],edx
 0042326F    mov         edi,eax
 00423271    xor         eax,eax
 00423273    push        ebp
 00423274    push        4232F5
 00423279    push        dword ptr fs:[eax]
 0042327C    mov         dword ptr fs:[eax],esp
 0042327F    mov         esi,1
 00423284    mov         ebx,dword ptr [ebp-4]
 00423287    add         ebx,24
 0042328A    push        79F454;^SResString66:TResStringRec
 0042328F    push        0B
 00423291    lea         eax,[ebp-8]
 00423294    push        eax
 00423295    mov         ecx,esi
 00423297    dec         ecx
 00423298    lea         edx,[esi+44]
 0042329B    dec         edx
 0042329C    mov         eax,edi
 0042329E    call        004237C0
 004232A3    mov         edx,dword ptr [ebp-8]
 004232A6    mov         eax,ebx
 004232A8    call        @UStrAsg
 004232AD    push        79F484;^SResString78:TResStringRec
 004232B2    push        0B
 004232B4    lea         eax,[ebp-0C]
 004232B7    push        eax
 004232B8    mov         ecx,esi
 004232BA    dec         ecx
 004232BB    lea         edx,[esi+38]
 004232BE    dec         edx
 004232BF    mov         eax,edi
 004232C1    call        004237C0
 004232C6    mov         edx,dword ptr [ebp-0C]
 004232C9    lea         eax,[ebx+30]
 004232CC    call        @UStrAsg
 004232D1    inc         esi
 004232D2    add         ebx,4
 004232D5    cmp         esi,0D
>004232D8    jne         0042328A
 004232DA    xor         eax,eax
 004232DC    pop         edx
 004232DD    pop         ecx
 004232DE    pop         ecx
 004232DF    mov         dword ptr fs:[eax],edx
 004232E2    push        4232FC
 004232E7    lea         eax,[ebp-0C]
 004232EA    mov         edx,2
 004232EF    call        @UStrArrayClr
 004232F4    ret
>004232F5    jmp         @HandleFinally
>004232FA    jmp         004232E7
 004232FC    pop         edi
 004232FD    pop         esi
 004232FE    pop         ebx
 004232FF    mov         esp,ebp
 00423301    pop         ebp
 00423302    ret
end;*}

//004234E4
{*procedure sub_004234E4(?:?; ?:?);
begin
 004234E4    push        ebp
 004234E5    mov         ebp,esp
 004234E7    add         esp,0FFFFFFDC
 004234EA    push        ebx
 004234EB    push        esi
 004234EC    push        edi
 004234ED    xor         ecx,ecx
 004234EF    mov         dword ptr [ebp-1C],ecx
 004234F2    mov         dword ptr [ebp-4],edx
 004234F5    mov         ebx,eax
 004234F7    xor         eax,eax
 004234F9    push        ebp
 004234FA    push        423789
 004234FF    push        dword ptr fs:[eax]
 00423502    mov         dword ptr fs:[eax],esp
 00423505    call        TMonitor.CheckMonitorSupport
 0042350A    mov         eax,[007C7DEC];gvar_007C7DEC:TObject
 0042350F    call        TMonitor.GetMonitor
 00423514    or          edx,0FFFFFFFF
 00423517    call        TMonitor.Enter
 0042351C    xor         edx,edx
 0042351E    push        ebp
 0042351F    push        42376C
 00423524    push        dword ptr fs:[edx]
 00423527    mov         dword ptr fs:[edx],esp
 0042352A    xor         esi,esi
 0042352C    mov         dword ptr ds:[7C7DE4],esi;gvar_007C7DE4:?
 00423532    push        esi
 00423533    mov         eax,7C7DE8;gvar_007C7DE8:?
 00423538    mov         ecx,1
 0042353D    mov         edx,dword ptr ds:[423304];:TInternalEraInfoRecord.:1
 00423543    call        @DynArraySetLength
 00423548    add         esp,4
 0042354B    lea         eax,[ebp-1C]
 0042354E    push        eax
 0042354F    mov         ecx,4237A4;'1'
 00423554    mov         edx,100B
 00423559    mov         eax,ebx
 0042355B    call        00422D38
 00423560    mov         eax,dword ptr [ebp-1C]
 00423563    mov         edx,1
 00423568    call        StrToIntDef
 0042356D    mov         edi,eax
 0042356F    mov         eax,edi
 00423571    add         eax,0FFFFFFFD
 00423574    sub         eax,3
>00423577    jae         004235D7
 00423579    push        4
 0042357B    push        edi
 0042357C    call        kernel32.GetThreadLocale
 00423581    push        eax
 00423582    push        4233A8
 00423587    call        kernel32.EnumCalendarInfoW
 0042358C    mov         eax,[007C7DE8];gvar_007C7DE8:?
 00423591    mov         dword ptr [ebp-8],eax
 00423594    mov         eax,dword ptr [ebp-8]
 00423597    test        eax,eax
>00423599    je          004235A0
 0042359B    sub         eax,4
 0042359E    mov         eax,dword ptr [eax]
 004235A0    mov         esi,eax
 004235A2    dec         esi
 004235A3    test        esi,esi
>004235A5    jl          004235BF
 004235A7    inc         esi
 004235A8    xor         ebx,ebx
 004235AA    lea         eax,[ebx+ebx*2]
 004235AD    mov         edx,dword ptr ds:[7C7DE8];gvar_007C7DE8:?
 004235B3    mov         dword ptr [edx+eax*8+4],0FFFFFFFF
 004235BB    inc         ebx
 004235BC    dec         esi
>004235BD    jne         004235AA
 004235BF    push        3
 004235C1    push        edi
 004235C2    call        kernel32.GetThreadLocale
 004235C7    push        eax
 004235C8    push        42344C
 004235CD    call        kernel32.EnumCalendarInfoW
>004235D2    jmp         004236B6
 004235D7    mov         eax,edi
 004235D9    dec         eax
 004235DA    sub         eax,2
>004235DD    jae         004236B6
 004235E3    mov         ebx,1
 004235E8    mov         dword ptr ds:[7C7DE4],ebx;gvar_007C7DE4:?
 004235EE    push        ebx
 004235EF    mov         eax,7C7DE8;gvar_007C7DE8:?
 004235F4    mov         ecx,1
 004235F9    mov         edx,dword ptr ds:[423304];:TInternalEraInfoRecord.:1
 004235FF    call        @DynArraySetLength
 00423604    add         esp,4
 00423607    mov         eax,[007C7DE8];gvar_007C7DE8:?
 0042360C    mov         edx,4237B4;'B.C.'
 00423611    call        @UStrAsg
 00423616    mov         eax,[007C7DE8];gvar_007C7DE8:?
 0042361B    xor         edx,edx
 0042361D    mov         dword ptr [eax+4],edx
 00423620    mov         eax,[007C7DE8];gvar_007C7DE8:?
 00423625    mov         dword ptr [eax+8],0FFC00000
 0042362C    mov         dword ptr [eax+0C],0C1DFFFFF
 00423633    mov         cx,1
 00423637    mov         dx,1
 0042363B    mov         ax,1
 0042363F    call        00420F84
 00423644    call        @TRUNC
 00423649    mov         dword ptr [ebp-24],eax
 0042364C    mov         dword ptr [ebp-20],edx
 0042364F    fild        qword ptr [ebp-24]
 00423652    mov         eax,[007C7DE8];gvar_007C7DE8:?
 00423657    fstp        qword ptr [eax+10]
 0042365A    wait
 0042365B    push        4
 0042365D    push        edi
 0042365E    call        kernel32.GetThreadLocale
 00423663    push        eax
 00423664    push        4233A8
 00423669    call        kernel32.EnumCalendarInfoW
 0042366E    mov         eax,[007C7DE8];gvar_007C7DE8:?
 00423673    mov         dword ptr [ebp-0C],eax
 00423676    mov         eax,dword ptr [ebp-0C]
 00423679    test        eax,eax
>0042367B    je          00423682
 0042367D    sub         eax,4
 00423680    mov         eax,dword ptr [eax]
 00423682    mov         esi,eax
 00423684    dec         esi
 00423685    test        esi,esi
>00423687    jle         004236A3
 00423689    mov         ebx,1
 0042368E    lea         eax,[ebx+ebx*2]
 00423691    mov         edx,dword ptr ds:[7C7DE8];gvar_007C7DE8:?
 00423697    mov         dword ptr [edx+eax*8+4],0FFFFFFFF
 0042369F    inc         ebx
 004236A0    dec         esi
>004236A1    jne         0042368E
 004236A3    push        3
 004236A5    push        edi
 004236A6    call        kernel32.GetThreadLocale
 004236AB    push        eax
 004236AC    push        42344C
 004236B1    call        kernel32.EnumCalendarInfoW
 004236B6    mov         eax,[007C7DE8];gvar_007C7DE8:?
 004236BB    mov         dword ptr [ebp-10],eax
 004236BE    mov         ebx,dword ptr [ebp-10]
 004236C1    test        ebx,ebx
>004236C3    je          004236CA
 004236C5    sub         ebx,4
 004236C8    mov         ebx,dword ptr [ebx]
 004236CA    push        ebx
 004236CB    mov         eax,dword ptr [ebp-4]
 004236CE    add         eax,0BC
 004236D3    mov         ecx,1
 004236D8    mov         edx,dword ptr ds:[41996C];:TFormatSettings.:5
 004236DE    call        @DynArraySetLength
 004236E3    add         esp,4
 004236E6    mov         eax,[007C7DE8];gvar_007C7DE8:?
 004236EB    mov         dword ptr [ebp-14],eax
 004236EE    mov         eax,dword ptr [ebp-14]
 004236F1    test        eax,eax
>004236F3    je          004236FA
 004236F5    sub         eax,4
 004236F8    mov         eax,dword ptr [eax]
 004236FA    mov         esi,eax
 004236FC    dec         esi
 004236FD    test        esi,esi
>004236FF    jl          0042372B
 00423701    inc         esi
 00423702    xor         ebx,ebx
 00423704    lea         edi,[ebx+ebx*2]
 00423707    mov         eax,dword ptr [ebp-4]
 0042370A    mov         eax,dword ptr [eax+0BC]
 00423710    lea         eax,[eax+edi*8]
 00423713    mov         edx,dword ptr ds:[7C7DE8];gvar_007C7DE8:?
 00423719    lea         edx,[edx+edi*8]
 0042371C    mov         ecx,dword ptr ds:[419834];TFormatSettings.TEraInfo
 00423722    call        @CopyRecord
 00423727    inc         ebx
 00423728    dec         esi
>00423729    jne         00423704
 0042372B    mov         eax,7C7DE8;gvar_007C7DE8:?
 00423730    mov         edx,dword ptr ds:[423304];:TInternalEraInfoRecord.:1
 00423736    call        @DynArrayClear
 0042373B    mov         eax,[007C7DE8];gvar_007C7DE8:?
 00423740    mov         dword ptr [ebp-18],eax
 00423743    mov         eax,dword ptr [ebp-18]
 00423746    test        eax,eax
>00423748    je          0042374F
 0042374A    sub         eax,4
 0042374D    mov         eax,dword ptr [eax]
 0042374F    mov         [007C7DE4],eax;gvar_007C7DE4:?
 00423754    xor         eax,eax
 00423756    pop         edx
 00423757    pop         ecx
 00423758    pop         ecx
 00423759    mov         dword ptr fs:[eax],edx
 0042375C    push        423773
 00423761    mov         eax,[007C7DEC];gvar_007C7DEC:TObject
 00423766    call        TMonitor.Exit
 0042376B    ret
>0042376C    jmp         @HandleFinally
>00423771    jmp         00423761
 00423773    xor         eax,eax
 00423775    pop         edx
 00423776    pop         ecx
 00423777    pop         ecx
 00423778    mov         dword ptr fs:[eax],edx
 0042377B    push        423790
 00423780    lea         eax,[ebp-1C]
 00423783    call        @UStrClr
 00423788    ret
>00423789    jmp         @HandleFinally
>0042378E    jmp         00423780
 00423790    pop         edi
 00423791    pop         esi
 00423792    pop         ebx
 00423793    mov         esp,ebp
 00423795    pop         ebp
 00423796    ret
end;*}

//004237C0
{*procedure sub_004237C0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004237C0    push        ebp
 004237C1    mov         ebp,esp
 004237C3    push        ecx
 004237C4    push        ebx
 004237C5    push        esi
 004237C6    push        edi
 004237C7    mov         dword ptr [ebp-4],ecx
 004237CA    mov         edi,edx
 004237CC    mov         esi,eax
 004237CE    mov         ebx,dword ptr [ebp+8]
 004237D1    push        ebx
 004237D2    xor         ecx,ecx
 004237D4    mov         edx,edi
 004237D6    mov         eax,esi
 004237D8    call        00422D38
 004237DD    cmp         dword ptr [ebx],0
>004237E0    jne         004237F2
 004237E2    mov         eax,dword ptr [ebp+10]
 004237E5    mov         edx,dword ptr [ebp-4]
 004237E8    mov         eax,dword ptr [eax+edx*4]
 004237EB    mov         edx,ebx
 004237ED    call        LoadResString
 004237F2    pop         edi
 004237F3    pop         esi
 004237F4    pop         ebx
 004237F5    pop         ecx
 004237F6    pop         ebp
 004237F7    ret         0C
end;*}

//004237FC
{*procedure sub_004237FC(?:?; ?:?);
begin
 004237FC    push        ebp
 004237FD    mov         ebp,esp
 004237FF    push        ebx
 00423800    push        esi
 00423801    mov         esi,eax
 00423803    xor         ebx,ebx
 00423805    mov         eax,dword ptr [esi]
 00423807    call        @UStrToPWChar
 0042380C    test        eax,eax
>0042380E    je          0042383B
>00423810    jmp         00423833
 00423812    cmp         dx,27
>00423816    jne         0042381B
 00423818    xor         bl,1
 0042381B    mov         edx,dword ptr [ebp+8]
 0042381E    movzx       edx,word ptr [edx+0C]
 00423822    cmp         dx,word ptr [eax]
>00423825    jne         00423830
 00423827    test        bl,bl
>00423829    jne         00423830
 0042382B    mov         word ptr [eax],2F
 00423830    add         eax,2
 00423833    movzx       edx,word ptr [eax]
 00423836    test        dx,dx
>00423839    jne         00423812
 0042383B    pop         esi
 0042383C    pop         ebx
 0042383D    pop         ebp
 0042383E    ret
end;*}

//00423840
{*procedure sub_00423840(?:?; ?:?; ?:UString; ?:?);
begin
 00423840    push        ebp
 00423841    mov         ebp,esp
 00423843    push        0
 00423845    push        0
 00423847    push        0
 00423849    push        0
 0042384B    push        0
 0042384D    push        0
 0042384F    push        0
 00423851    push        0
 00423853    push        ebx
 00423854    push        esi
 00423855    push        edi
 00423856    mov         dword ptr [ebp-0C],ecx
 00423859    mov         dword ptr [ebp-8],edx
 0042385C    mov         esi,eax
 0042385E    mov         edi,dword ptr [ebp+8]
 00423861    xor         eax,eax
 00423863    push        ebp
 00423864    push        423A7A
 00423869    push        dword ptr fs:[eax]
 0042386C    mov         dword ptr fs:[eax],esp
 0042386F    mov         ebx,1
 00423874    mov         eax,edi
 00423876    call        @UStrClr
 0042387B    lea         eax,[ebp-4]
 0042387E    push        eax
 0042387F    mov         ecx,dword ptr [ebp-0C]
 00423882    mov         edx,dword ptr [ebp-8]
 00423885    mov         eax,esi
 00423887    call        00422D38
 0042388C    lea         eax,[ebp-14]
 0042388F    push        eax
 00423890    mov         ecx,423A98;'1'
 00423895    mov         edx,1009
 0042389A    mov         eax,esi
 0042389C    call        00422D38
 004238A1    mov         eax,dword ptr [ebp-14]
 004238A4    mov         edx,1
 004238A9    call        StrToIntDef
 004238AE    add         eax,0FFFFFFFD
 004238B1    sub         eax,3
>004238B4    jb          00423A3E
 004238BA    mov         eax,[007C7CBC];gvar_007C7CBC
 004238BF    sub         eax,4
>004238C2    je          004238D0
 004238C4    add         eax,0FFFFFFF3
 004238C7    sub         eax,2
>004238CA    jb          004238D0
 004238CC    xor         eax,eax
>004238CE    jmp         004238D2
 004238D0    mov         al,1
 004238D2    test        al,al
>004238D4    je          00423911
>004238D6    jmp         00423903
 004238D8    mov         eax,dword ptr [ebp-4]
 004238DB    movzx       esi,word ptr [eax+ebx*2-2]
 004238E0    mov         eax,esi
 004238E2    sub         ax,47
>004238E6    je          00423902
 004238E8    sub         ax,20
>004238EC    je          00423902
 004238EE    lea         eax,[ebp-18]
 004238F1    mov         edx,esi
 004238F3    call        @UStrFromWChar
 004238F8    mov         edx,dword ptr [ebp-18]
 004238FB    mov         eax,edi
 004238FD    call        @UStrCat
 00423902    inc         ebx
 00423903    mov         eax,dword ptr [ebp-4]
 00423906    call        @UStrLen
 0042390B    cmp         ebx,eax
>0042390D    jle         004238D8
>0042390F    jmp         0042391B
 00423911    mov         eax,edi
 00423913    mov         edx,dword ptr [ebp-4]
 00423916    call        @UStrAsg
 0042391B    push        ebp
 0042391C    mov         eax,edi
 0042391E    call        004237FC
 00423923    pop         ecx
>00423924    jmp         00423A57
 00423929    mov         eax,dword ptr [ebp-4]
 0042392C    movzx       esi,word ptr [eax+ebx*2-2]
 00423931    cmp         si,0D800
>00423936    jb          0042393F
 00423938    cmp         si,0DFFF
>0042393D    jbe         00423943
 0042393F    xor         eax,eax
>00423941    jmp         00423945
 00423943    mov         al,1
 00423945    test        al,al
>00423947    je          00423981
 00423949    mov         edx,ebx
 0042394B    mov         eax,dword ptr [ebp-4]
 0042394E    call        004250E4
 00423953    sar         eax,1
>00423955    jns         0042395A
 00423957    adc         eax,0
 0042395A    mov         dword ptr [ebp-10],eax
 0042395D    lea         eax,[ebp-1C]
 00423960    push        eax
 00423961    mov         edx,ebx
 00423963    dec         edx
 00423964    lea         eax,[ebp-4]
 00423967    mov         ecx,dword ptr [ebp-10]
 0042396A    call        00426870
 0042396F    mov         edx,dword ptr [ebp-1C]
 00423972    mov         eax,edi
 00423974    call        @UStrCat
 00423979    add         ebx,dword ptr [ebp-10]
>0042397C    jmp         00423A3E
 00423981    push        0
 00423983    push        2
 00423985    push        1
 00423987    mov         edx,ebx
 00423989    dec         edx
 0042398A    mov         ecx,423AA8;'gg'
 0042398F    mov         eax,dword ptr [ebp-4]
 00423992    call        00426518
 00423997    test        eax,eax
>00423999    jne         004239AD
 0042399B    mov         eax,edi
 0042399D    mov         edx,423ABC;'ggg'
 004239A2    call        @UStrCat
 004239A7    inc         ebx
>004239A8    jmp         00423A3D
 004239AD    push        0
 004239AF    push        4
 004239B1    push        1
 004239B3    mov         edx,ebx
 004239B5    dec         edx
 004239B6    mov         ecx,423AD0;'yyyy'
 004239BB    mov         eax,dword ptr [ebp-4]
 004239BE    call        00426518
 004239C3    test        eax,eax
>004239C5    jne         004239D8
 004239C7    mov         eax,edi
 004239C9    mov         edx,423AE8;'eeee'
 004239CE    call        @UStrCat
 004239D3    add         ebx,3
>004239D6    jmp         00423A3D
 004239D8    push        0
 004239DA    push        2
 004239DC    push        1
 004239DE    mov         edx,ebx
 004239E0    dec         edx
 004239E1    mov         ecx,423B00;'yy'
 004239E6    mov         eax,dword ptr [ebp-4]
 004239E9    call        00426518
 004239EE    test        eax,eax
>004239F0    jne         00423A01
 004239F2    mov         eax,edi
 004239F4    mov         edx,423B14;'ee'
 004239F9    call        @UStrCat
 004239FE    inc         ebx
>004239FF    jmp         00423A3D
 00423A01    mov         eax,dword ptr [ebp-4]
 00423A04    movzx       eax,word ptr [eax+ebx*2-2]
 00423A09    sub         ax,59
>00423A0D    je          00423A15
 00423A0F    sub         ax,20
>00423A13    jne         00423A23
 00423A15    mov         eax,edi
 00423A17    mov         edx,423B28;'e'
 00423A1C    call        @UStrCat
>00423A21    jmp         00423A3D
 00423A23    lea         eax,[ebp-20]
 00423A26    mov         edx,dword ptr [ebp-4]
 00423A29    movzx       edx,word ptr [edx+ebx*2-2]
 00423A2E    call        @UStrFromWChar
 00423A33    mov         edx,dword ptr [ebp-20]
 00423A36    mov         eax,edi
 00423A38    call        @UStrCat
 00423A3D    inc         ebx
 00423A3E    mov         eax,dword ptr [ebp-4]
 00423A41    call        @UStrLen
 00423A46    cmp         ebx,eax
>00423A48    jle         00423929
 00423A4E    push        ebp
 00423A4F    mov         eax,edi
 00423A51    call        004237FC
 00423A56    pop         ecx
 00423A57    xor         eax,eax
 00423A59    pop         edx
 00423A5A    pop         ecx
 00423A5B    pop         ecx
 00423A5C    mov         dword ptr fs:[eax],edx
 00423A5F    push        423A81
 00423A64    lea         eax,[ebp-20]
 00423A67    mov         edx,4
 00423A6C    call        @UStrArrayClr
 00423A71    lea         eax,[ebp-4]
 00423A74    call        @UStrClr
 00423A79    ret
>00423A7A    jmp         @HandleFinally
>00423A7F    jmp         00423A64
 00423A81    pop         edi
 00423A82    pop         esi
 00423A83    pop         ebx
 00423A84    mov         esp,ebp
 00423A86    pop         ebp
 00423A87    ret         8
end;*}

//00423B2C
{*function sub_00423B2C(?:?; ?:?):?;
begin
 00423B2C    push        ebx
 00423B2D    push        esi
 00423B2E    push        edi
 00423B2F    push        ebp
 00423B30    add         esp,0FFFFFFF4
 00423B33    mov         dword ptr [esp],edx
 00423B36    mov         esi,eax
 00423B38    xor         eax,eax
 00423B3A    mov         dword ptr [esp+4],eax
 00423B3E    mov         eax,dword ptr [esi+0BC]
 00423B44    mov         dword ptr [esp+8],eax
 00423B48    mov         eax,dword ptr [esp+8]
 00423B4C    test        eax,eax
>00423B4E    je          00423B55
 00423B50    sub         eax,4
 00423B53    mov         eax,dword ptr [eax]
 00423B55    mov         edi,eax
 00423B57    dec         edi
 00423B58    test        edi,edi
>00423B5A    jl          00423BA9
 00423B5C    inc         edi
 00423B5D    xor         ebx,ebx
 00423B5F    lea         ebp,[ebx+ebx*2]
 00423B62    mov         eax,dword ptr [esi+0BC]
 00423B68    cmp         dword ptr [eax+ebp*8],0
>00423B6C    je          00423BA9
 00423B6E    lea         eax,[ebx+ebx*2]
 00423B71    mov         edx,dword ptr [esi+0BC]
 00423B77    mov         eax,dword ptr [edx+eax*8]
 00423B7A    call        @UStrToPWChar
 00423B7F    push        eax
 00423B80    mov         eax,dword ptr [esp+4]
 00423B84    call        @UStrToPWChar
 00423B89    mov         edx,eax
 00423B8B    pop         eax
 00423B8C    call        AnsiStrPos
 00423B91    test        eax,eax
>00423B93    je          00423BA5
 00423B95    mov         eax,dword ptr [esi+0BC]
 00423B9B    mov         eax,dword ptr [eax+ebp*8+4]
 00423B9F    mov         dword ptr [esp+4],eax
>00423BA3    jmp         00423BA9
 00423BA5    inc         ebx
 00423BA6    dec         edi
>00423BA7    jne         00423B5F
 00423BA9    mov         eax,dword ptr [esp+4]
 00423BAD    add         esp,0C
 00423BB0    pop         ebp
 00423BB1    pop         edi
 00423BB2    pop         esi
 00423BB3    pop         ebx
 00423BB4    ret
end;*}

//00423BB8
function ConvertAddr(Address:Pointer):Pointer;
begin
{*
 00423BB8    test        eax,eax
>00423BBA    je          00423BC1
 00423BBC    sub         eax,1000
 00423BC1    ret
*}
end;

//00423BC4
function ExceptionErrorMessage(ExceptObject:TObject; ExceptAddr:Pointer; Buffer:PChar; Size:Integer):Integer;
begin
{*
 00423BC4    push        ebp
 00423BC5    mov         ebp,esp
 00423BC7    add         esp,0FFFFF99C
 00423BCD    push        ebx
 00423BCE    push        esi
 00423BCF    push        edi
 00423BD0    xor         ebx,ebx
 00423BD2    mov         dword ptr [ebp-664],ebx
 00423BD8    mov         dword ptr [ebp-4],ecx
 00423BDB    mov         ebx,edx
 00423BDD    mov         esi,eax
 00423BDF    xor         eax,eax
 00423BE1    push        ebp
 00423BE2    push        423D70
 00423BE7    push        dword ptr fs:[eax]
 00423BEA    mov         dword ptr fs:[eax],esp
 00423BED    push        1C
 00423BEF    lea         eax,[ebp-638]
 00423BF5    push        eax
 00423BF6    push        ebx
 00423BF7    call        kernel32.VirtualQuery
 00423BFC    cmp         dword ptr [ebp-628],1000
>00423C06    jne         00423C24
 00423C08    push        105
 00423C0D    lea         eax,[ebp-41C]
 00423C13    push        eax
 00423C14    mov         eax,dword ptr [ebp-634]
 00423C1A    push        eax
 00423C1B    call        kernel32.GetModuleFileNameW
 00423C20    test        eax,eax
>00423C22    jne         00423C47
 00423C24    push        105
 00423C29    lea         eax,[ebp-41C]
 00423C2F    push        eax
 00423C30    mov         eax,[007C7C54];gvar_007C7C54
 00423C35    push        eax
 00423C36    call        kernel32.GetModuleFileNameW
 00423C3B    mov         eax,ebx
 00423C3D    call        ConvertAddr
 00423C42    mov         dword ptr [ebp-8],eax
>00423C45    jmp         00423C50
 00423C47    sub         ebx,dword ptr [ebp-634]
 00423C4D    mov         dword ptr [ebp-8],ebx
 00423C50    lea         eax,[ebp-41C]
 00423C56    mov         dx,5C
 00423C5A    call        AnsiStrRScan
 00423C5F    mov         edx,eax
 00423C61    add         edx,2
 00423C64    lea         eax,[ebp-212]
 00423C6A    mov         ecx,104
 00423C6F    call        StrLCopy
 00423C74    mov         ebx,423D84
 00423C79    mov         edi,423D84
 00423C7E    mov         eax,esi
 00423C80    mov         edx,dword ptr ds:[4174D0];Exception
 00423C86    call        @IsClass
 00423C8B    test        al,al
>00423C8D    je          00423CB1
 00423C8F    mov         eax,dword ptr [esi+4]
 00423C92    call        @UStrToPWChar
 00423C97    mov         ebx,eax
 00423C99    mov         eax,ebx
 00423C9B    call        @PWCharLen
 00423CA0    test        eax,eax
>00423CA2    je          00423CB1
 00423CA4    cmp         word ptr [ebx+eax*2-2],2E
>00423CAA    je          00423CB1
 00423CAC    mov         edi,423D88
 00423CB1    push        100
 00423CB6    lea         eax,[ebp-61C]
 00423CBC    push        eax
 00423CBD    mov         eax,[007C4E4C];^SResString30:TResStringRec
 00423CC2    mov         eax,dword ptr [eax+4]
 00423CC5    push        eax
 00423CC6    mov         eax,[007C7C54];gvar_007C7C54
 00423CCB    call        FindResourceHInstance
 00423CD0    push        eax
 00423CD1    call        user32.LoadStringW
 00423CD6    lea         edx,[ebp-664]
 00423CDC    mov         eax,dword ptr [esi]
 00423CDE    call        TObject.ClassName
 00423CE3    mov         eax,dword ptr [ebp-664]
 00423CE9    mov         dword ptr [ebp-660],eax
 00423CEF    mov         byte ptr [ebp-65C],11
 00423CF6    lea         eax,[ebp-212]
 00423CFC    mov         dword ptr [ebp-658],eax
 00423D02    mov         byte ptr [ebp-654],0A
 00423D09    mov         eax,dword ptr [ebp-8]
 00423D0C    mov         dword ptr [ebp-650],eax
 00423D12    mov         byte ptr [ebp-64C],5
 00423D19    mov         dword ptr [ebp-648],ebx
 00423D1F    mov         byte ptr [ebp-644],0A
 00423D26    mov         dword ptr [ebp-640],edi
 00423D2C    mov         byte ptr [ebp-63C],0A
 00423D33    lea         eax,[ebp-660]
 00423D39    push        eax
 00423D3A    push        4
 00423D3C    lea         ecx,[ebp-61C]
 00423D42    mov         edx,dword ptr [ebp+8]
 00423D45    mov         eax,dword ptr [ebp-4]
 00423D48    call        StrLFmt
 00423D4D    mov         eax,dword ptr [ebp-4]
 00423D50    call        @PWCharLen
 00423D55    mov         ebx,eax
 00423D57    xor         eax,eax
 00423D59    pop         edx
 00423D5A    pop         ecx
 00423D5B    pop         ecx
 00423D5C    mov         dword ptr fs:[eax],edx
 00423D5F    push        423D77
 00423D64    lea         eax,[ebp-664]
 00423D6A    call        @UStrClr
 00423D6F    ret
>00423D70    jmp         @HandleFinally
>00423D75    jmp         00423D64
 00423D77    mov         eax,ebx
 00423D79    pop         edi
 00423D7A    pop         esi
 00423D7B    pop         ebx
 00423D7C    mov         esp,ebp
 00423D7E    pop         ebp
 00423D7F    ret         4
*}
end;

//00423DBC
procedure ShowException(ExceptObject:TObject; ExceptAddr:Pointer);
begin
{*
 00423DBC    push        ebp
 00423DBD    mov         ebp,esp
 00423DBF    add         esp,0FFFFF778
 00423DC5    push        ebx
 00423DC6    push        esi
 00423DC7    xor         ecx,ecx
 00423DC9    mov         dword ptr [ebp-4],ecx
 00423DCC    xor         ecx,ecx
 00423DCE    push        ebp
 00423DCF    push        423EE1
 00423DD4    push        dword ptr fs:[ecx]
 00423DD7    mov         dword ptr fs:[ecx],esp
 00423DDA    push        400
 00423DDF    lea         ecx,[ebp-888]
 00423DE5    call        ExceptionErrorMessage
 00423DEA    mov         esi,eax
 00423DEC    mov         eax,[007C4B64];^gvar_007C505C:Boolean
 00423DF1    cmp         byte ptr [eax],0
>00423DF4    je          00423E89
 00423DFA    mov         eax,[007C4524];Output:Text
 00423DFF    call        Flush
 00423E04    call        @_IOTest
 00423E09    push        0
 00423E0B    push        0
 00423E0D    push        0
 00423E0F    push        0
 00423E11    push        esi
 00423E12    lea         eax,[ebp-888]
 00423E18    push        eax
 00423E19    push        0
 00423E1B    push        1
 00423E1D    call        kernel32.WideCharToMultiByte
 00423E22    mov         ebx,eax
 00423E24    push        ebx
 00423E25    lea         eax,[ebp-4]
 00423E28    mov         ecx,1
 00423E2D    mov         edx,dword ptr ds:[423D8C];:78
 00423E33    call        @DynArraySetLength
 00423E38    add         esp,4
 00423E3B    push        0
 00423E3D    push        0
 00423E3F    push        ebx
 00423E40    mov         eax,dword ptr [ebp-4]
 00423E43    push        eax
 00423E44    push        esi
 00423E45    lea         eax,[ebp-888]
 00423E4B    push        eax
 00423E4C    push        0
 00423E4E    push        1
 00423E50    call        kernel32.WideCharToMultiByte
 00423E55    push        0
 00423E57    lea         eax,[ebp-8]
 00423E5A    push        eax
 00423E5B    push        ebx
 00423E5C    mov         eax,dword ptr [ebp-4]
 00423E5F    push        eax
 00423E60    push        0F4
 00423E62    call        kernel32.GetStdHandle
 00423E67    push        eax
 00423E68    call        kernel32.WriteFile
 00423E6D    push        0
 00423E6F    lea         eax,[ebp-8]
 00423E72    push        eax
 00423E73    push        2
 00423E75    push        423EFC;#13+#10
 00423E7A    push        0F4
 00423E7C    call        kernel32.GetStdHandle
 00423E81    push        eax
 00423E82    call        kernel32.WriteFile
>00423E87    jmp         00423EC5
 00423E89    push        40
 00423E8B    lea         eax,[ebp-88]
 00423E91    push        eax
 00423E92    mov         eax,[007C4468];^SResString31:TResStringRec
 00423E97    mov         eax,dword ptr [eax+4]
 00423E9A    push        eax
 00423E9B    mov         eax,[007C7C54];gvar_007C7C54
 00423EA0    call        FindResourceHInstance
 00423EA5    push        eax
 00423EA6    call        user32.LoadStringW
 00423EAB    push        2010
 00423EB0    lea         eax,[ebp-88]
 00423EB6    push        eax
 00423EB7    lea         eax,[ebp-888]
 00423EBD    push        eax
 00423EBE    push        0
 00423EC0    call        user32.MessageBoxW
 00423EC5    xor         eax,eax
 00423EC7    pop         edx
 00423EC8    pop         ecx
 00423EC9    pop         ecx
 00423ECA    mov         dword ptr fs:[eax],edx
 00423ECD    push        423EE8
 00423ED2    lea         eax,[ebp-4]
 00423ED5    mov         edx,dword ptr ds:[423D8C];:78
 00423EDB    call        @DynArrayClear
 00423EE0    ret
>00423EE1    jmp         @HandleFinally
>00423EE6    jmp         00423ED2
 00423EE8    pop         esi
 00423EE9    pop         ebx
 00423EEA    mov         esp,ebp
 00423EEC    pop         ebp
 00423EED    ret
*}
end;

//00423F00
procedure sub_00423F00;
begin
{*
 00423F00    mov         eax,[007C7DF0];gvar_007C7DF0:EOutOfMemory
 00423F05    call        @RaiseExcept
 00423F0A    ret
*}
end;

//00423F0C
constructor Exception.Create;
begin
{*
 00423F0C    push        ebx
 00423F0D    push        esi
 00423F0E    push        edi
 00423F0F    test        dl,dl
>00423F11    je          00423F1B
 00423F13    add         esp,0FFFFFFF0
 00423F16    call        @ClassCreate
 00423F1B    mov         esi,ecx
 00423F1D    mov         ebx,edx
 00423F1F    mov         edi,eax
 00423F21    lea         eax,[edi+4]
 00423F24    mov         edx,esi
 00423F26    call        @UStrAsg
 00423F2B    mov         eax,edi
 00423F2D    test        bl,bl
>00423F2F    je          00423F40
 00423F31    call        @AfterConstruction
 00423F36    pop         dword ptr fs:[0]
 00423F3D    add         esp,0C
 00423F40    mov         eax,edi
 00423F42    pop         edi
 00423F43    pop         esi
 00423F44    pop         ebx
 00423F45    ret
*}
end;

//00423F48
constructor Exception.CreateFmt(Args:TVarRec);
begin
{*
 00423F48    push        ebp
 00423F49    mov         ebp,esp
 00423F4B    push        0
 00423F4D    push        ebx
 00423F4E    push        esi
 00423F4F    push        edi
 00423F50    test        dl,dl
>00423F52    je          00423F5C
 00423F54    add         esp,0FFFFFFF0
 00423F57    call        @ClassCreate
 00423F5C    mov         esi,ecx
 00423F5E    mov         ebx,edx
 00423F60    mov         edi,eax
 00423F62    xor         eax,eax
 00423F64    push        ebp
 00423F65    push        423FA2
 00423F6A    push        dword ptr fs:[eax]
 00423F6D    mov         dword ptr fs:[eax],esp
 00423F70    lea         eax,[ebp-4]
 00423F73    push        eax
 00423F74    mov         edx,dword ptr [ebp+0C]
 00423F77    mov         ecx,dword ptr [ebp+8]
 00423F7A    mov         eax,esi
 00423F7C    call        Format
 00423F81    mov         edx,dword ptr [ebp-4]
 00423F84    lea         eax,[edi+4]
 00423F87    call        @UStrAsg
 00423F8C    xor         eax,eax
 00423F8E    pop         edx
 00423F8F    pop         ecx
 00423F90    pop         ecx
 00423F91    mov         dword ptr fs:[eax],edx
 00423F94    push        423FA9
 00423F99    lea         eax,[ebp-4]
 00423F9C    call        @UStrClr
 00423FA1    ret
>00423FA2    jmp         @HandleFinally
>00423FA7    jmp         00423F99
 00423FA9    mov         eax,edi
 00423FAB    test        bl,bl
>00423FAD    je          00423FBE
 00423FAF    call        @AfterConstruction
 00423FB4    pop         dword ptr fs:[0]
 00423FBB    add         esp,0C
 00423FBE    mov         eax,edi
 00423FC0    pop         edi
 00423FC1    pop         esi
 00423FC2    pop         ebx
 00423FC3    pop         ecx
 00423FC4    pop         ebp
 00423FC5    ret         8
*}
end;

//00423FC8
constructor Exception.CreateRes;
begin
{*
 00423FC8    push        ebx
 00423FC9    push        esi
 00423FCA    push        edi
 00423FCB    test        dl,dl
>00423FCD    je          00423FD7
 00423FCF    add         esp,0FFFFFFF0
 00423FD2    call        @ClassCreate
 00423FD7    mov         esi,ecx
 00423FD9    mov         ebx,edx
 00423FDB    mov         edi,eax
 00423FDD    lea         edx,[edi+4]
 00423FE0    mov         eax,esi
 00423FE2    call        LoadResString
 00423FE7    mov         eax,edi
 00423FE9    test        bl,bl
>00423FEB    je          00423FFC
 00423FED    call        @AfterConstruction
 00423FF2    pop         dword ptr fs:[0]
 00423FF9    add         esp,0C
 00423FFC    mov         eax,edi
 00423FFE    pop         edi
 00423FFF    pop         esi
 00424000    pop         ebx
 00424001    ret
*}
end;

//00424004
constructor Exception.CreateResFmt(Args:TVarRec);
begin
{*
 00424004    push        ebp
 00424005    mov         ebp,esp
 00424007    push        0
 00424009    push        0
 0042400B    push        ebx
 0042400C    push        esi
 0042400D    push        edi
 0042400E    test        dl,dl
>00424010    je          0042401A
 00424012    add         esp,0FFFFFFF0
 00424015    call        @ClassCreate
 0042401A    mov         esi,ecx
 0042401C    mov         ebx,edx
 0042401E    mov         edi,eax
 00424020    xor         eax,eax
 00424022    push        ebp
 00424023    push        424070
 00424028    push        dword ptr fs:[eax]
 0042402B    mov         dword ptr fs:[eax],esp
 0042402E    lea         eax,[ebp-4]
 00424031    push        eax
 00424032    lea         edx,[ebp-8]
 00424035    mov         eax,esi
 00424037    call        LoadResString
 0042403C    mov         eax,dword ptr [ebp-8]
 0042403F    mov         edx,dword ptr [ebp+0C]
 00424042    mov         ecx,dword ptr [ebp+8]
 00424045    call        Format
 0042404A    mov         edx,dword ptr [ebp-4]
 0042404D    lea         eax,[edi+4]
 00424050    call        @UStrAsg
 00424055    xor         eax,eax
 00424057    pop         edx
 00424058    pop         ecx
 00424059    pop         ecx
 0042405A    mov         dword ptr fs:[eax],edx
 0042405D    push        424077
 00424062    lea         eax,[ebp-8]
 00424065    mov         edx,2
 0042406A    call        @UStrArrayClr
 0042406F    ret
>00424070    jmp         @HandleFinally
>00424075    jmp         00424062
 00424077    mov         eax,edi
 00424079    test        bl,bl
>0042407B    je          0042408C
 0042407D    call        @AfterConstruction
 00424082    pop         dword ptr fs:[0]
 00424089    add         esp,0C
 0042408C    mov         eax,edi
 0042408E    pop         edi
 0042408F    pop         esi
 00424090    pop         ebx
 00424091    pop         ecx
 00424092    pop         ecx
 00424093    pop         ebp
 00424094    ret         8
*}
end;

//00424098
constructor Exception.CreateHelp(AHelpContext:Integer);
begin
{*
 00424098    push        ebp
 00424099    mov         ebp,esp
 0042409B    push        ebx
 0042409C    push        esi
 0042409D    push        edi
 0042409E    test        dl,dl
>004240A0    je          004240AA
 004240A2    add         esp,0FFFFFFF0
 004240A5    call        @ClassCreate
 004240AA    mov         esi,ecx
 004240AC    mov         ebx,edx
 004240AE    mov         edi,eax
 004240B0    lea         eax,[edi+4]
 004240B3    mov         edx,esi
 004240B5    call        @UStrAsg
 004240BA    mov         eax,dword ptr [ebp+8]
 004240BD    mov         dword ptr [edi+8],eax
 004240C0    mov         eax,edi
 004240C2    test        bl,bl
>004240C4    je          004240D5
 004240C6    call        @AfterConstruction
 004240CB    pop         dword ptr fs:[0]
 004240D2    add         esp,0C
 004240D5    mov         eax,edi
 004240D7    pop         edi
 004240D8    pop         esi
 004240D9    pop         ebx
 004240DA    pop         ebp
 004240DB    ret         4
*}
end;

//004240E0
destructor Exception.Destroy();
begin
{*
 004240E0    push        ebx
 004240E1    push        esi
 004240E2    call        @BeforeDestruction
 004240E7    mov         ebx,edx
 004240E9    mov         esi,eax
 004240EB    lea         eax,[esi+0C];Exception.FInnerException:Exception
 004240EE    call        00425F88
 004240F3    cmp         dword ptr ds:[7C7CB4],0;gvar_007C7CB4
>004240FA    je          00424105
 004240FC    mov         eax,dword ptr [esi+10];Exception.FStackInfo:Pointer
 004240FF    call        dword ptr ds:[7C7CB4]
 00424105    xor         eax,eax
 00424107    mov         dword ptr [esi+10],eax;Exception.FStackInfo:Pointer
 0042410A    mov         dl,0FC
 0042410C    and         dl,bl
 0042410E    mov         eax,esi
 00424110    call        TObject.Destroy
 00424115    test        bl,bl
>00424117    jle         00424120
 00424119    mov         eax,esi
 0042411B    call        @ClassDestroy
 00424120    pop         esi
 00424121    pop         ebx
 00424122    ret
*}
end;

//00424124
procedure Exception.GetBaseException;
begin
{*
>00424124    jmp         00424128
*}
end;

//00424158
{*procedure sub_00424158(?:?);
begin
 00424158    push        ebx
 00424159    push        esi
 0042415A    mov         esi,edx
 0042415C    mov         ebx,eax
 0042415E    mov         eax,ebx
 00424160    call        00424184
 00424165    cmp         dword ptr ds:[7C7CAC],0;gvar_007C7CAC
>0042416C    je          0042417F
 0042416E    mov         eax,esi
 00424170    call        dword ptr ds:[7C7CAC]
 00424176    mov         edx,eax
 00424178    mov         eax,ebx
 0042417A    call        004241AC
 0042417F    pop         esi
 00424180    pop         ebx
 00424181    ret
end;*}

//00424184
procedure sub_00424184(?:Exception);
begin
{*
 00424184    push        ebx
 00424185    mov         ebx,eax
 00424187    cmp         byte ptr [ebx+14],0;Exception.FAcquireInnerException:Boolean
>0042418B    je          004241A9
 0042418D    call        ExceptObject
 00424192    mov         edx,dword ptr ds:[4174D0];Exception
 00424198    call        @IsClass
 0042419D    test        al,al
>0042419F    je          004241A9
 004241A1    call        AcquireExceptionObject
 004241A6    mov         dword ptr [ebx+0C],eax;Exception.FInnerException:Exception
 004241A9    pop         ebx
 004241AA    ret
*}
end;

//004241AC
{*procedure sub_004241AC(?:Exception; ?:?);
begin
 004241AC    mov         dword ptr [eax+10],edx;Exception.FStackInfo:Pointer
 004241AF    ret
end;*}

//004241B0
function Exception.ToString:string;
begin
{*
 004241B0    push        ebx
 004241B1    push        esi
 004241B2    mov         esi,edx
 004241B4    mov         ebx,eax
 004241B6    mov         eax,esi
 004241B8    call        @UStrClr
 004241BD    test        ebx,ebx
>004241BF    je          004241EF
 004241C1    cmp         dword ptr [esi],0
>004241C4    je          004241DE
 004241C6    push        dword ptr [esi]
 004241C8    push        424200;'
'
 004241CD    push        dword ptr [ebx+4]
 004241D0    mov         eax,esi
 004241D2    mov         edx,3
 004241D7    call        @UStrCatN
>004241DC    jmp         004241E8
 004241DE    mov         eax,esi
 004241E0    mov         edx,dword ptr [ebx+4]
 004241E3    call        @UStrAsg
 004241E8    mov         ebx,dword ptr [ebx+0C]
 004241EB    test        ebx,ebx
>004241ED    jne         004241C1
 004241EF    pop         esi
 004241F0    pop         ebx
 004241F1    ret
*}
end;

//00424208
procedure EHeapException.FreeInstance;
begin
{*
 00424208    cmp         byte ptr [eax+18],0
>0042420C    je          00424213
 0042420E    call        TObject.FreeInstance
 00424213    ret
*}
end;

//00424214
procedure sub_00424214;
begin
{*
 00424214    call        00424184
 00424219    ret
*}
end;

//004243EC
{*function sub_004243EC(?:?):?;
begin
 004243EC    mov         eax,dword ptr [eax]
 004243EE    cmp         eax,0C0000092
>004243F3    jg          00424421
>004243F5    je          00424450
 004243F7    cmp         eax,0C000008E
>004243FC    jg          00424413
>004243FE    je          00424453
 00424400    sub         eax,0C0000005
>00424405    je          0042445C
 00424407    sub         eax,87
>0042440C    je          0042444A
 0042440E    dec         eax
>0042440F    je          00424459
>00424411    jmp         00424468
 00424413    add         eax,3FFFFF71
 00424418    sub         eax,2
>0042441B    jb          00424450
>0042441D    je          00424456
>0042441F    jmp         00424468
 00424421    cmp         eax,0C0000096
>00424426    jg          00424439
>00424428    je          0042445F
 0042442A    sub         eax,0C0000093
>0042442F    je          00424459
 00424431    dec         eax
>00424432    je          00424447
 00424434    dec         eax
>00424435    je          0042444D
>00424437    jmp         00424468
 00424439    sub         eax,0C00000FD
>0042443E    je          00424465
 00424440    sub         eax,3D
>00424443    je          00424462
>00424445    jmp         00424468
 00424447    mov         al,3
 00424449    ret
 0042444A    mov         al,4
 0042444C    ret
 0042444D    mov         al,5
 0042444F    ret
 00424450    mov         al,6
 00424452    ret
 00424453    mov         al,7
 00424455    ret
 00424456    mov         al,8
 00424458    ret
 00424459    mov         al,9
 0042445B    ret
 0042445C    mov         al,0B
 0042445E    ret
 0042445F    mov         al,0C
 00424461    ret
 00424462    mov         al,0D
 00424464    ret
 00424465    mov         al,0E
 00424467    ret
 00424468    mov         al,16
 0042446A    ret
end;*}

//0042446C
{*function sub_0042446C(?:?):?;
begin
 0042446C    push        ebx
 0042446D    mov         ebx,eax
 0042446F    mov         eax,ebx
 00424471    call        004243EC
 00424476    movzx       eax,al
 00424479    mov         edx,dword ptr ds:[7C4CE4];^gvar_0079ED00
 0042447F    movzx       eax,byte ptr [edx+eax*8-18]
 00424484    mov         edx,dword ptr ds:[7C44B0];^gvar_0079ECAC
 0042448A    mov         eax,dword ptr [edx+eax*4]
 0042448D    pop         ebx
 0042448E    ret
end;*}

//0042478C
{*procedure sub_0042478C(?:?);
begin
 0042478C    push        ebx
 0042478D    push        esi
 0042478E    mov         ebx,eax
 00424790    mov         esi,dword ptr [ebx+18]
 00424793    mov         eax,esi
 00424795    mov         edx,dword ptr ds:[4174D0];Exception
 0042479B    call        @IsClass
 004247A0    test        al,al
>004247A2    je          004247AC
 004247A4    mov         edx,ebx
 004247A6    mov         eax,esi
 004247A8    mov         ecx,dword ptr [eax]
 004247AA    call        dword ptr [ecx]
 004247AC    pop         esi
 004247AD    pop         ebx
 004247AE    ret
end;*}

//004247C0
procedure sub_004247C0;
begin
{*
 004247C0    mov         ecx,dword ptr ds:[7C4474];^SResString9:TResStringRec
 004247C6    mov         dl,1
 004247C8    mov         eax,[00418304];EOutOfMemory
 004247CD    call        Exception.CreateRes;EOutOfMemory.Create
 004247D2    mov         [007C7DF0],eax;gvar_007C7DF0:EOutOfMemory
 004247D7    mov         ecx,dword ptr ds:[7C4980];^SResString23:TResStringRec
 004247DD    mov         dl,1
 004247DF    mov         eax,[00418BD0];EInvalidPointer
 004247E4    call        Exception.CreateRes;EInvalidPointer.Create
 004247E9    mov         [007C7DF4],eax;gvar_007C7DF4:EInvalidPointer
 004247EE    mov         eax,[007C4240];^gvar_007C5010
 004247F3    mov         dword ptr [eax],42427C
 004247F9    mov         eax,[007C45C0];^gvar_007C500C
 004247FE    mov         dword ptr [eax],4247B0
 00424804    mov         eax,[007C4430];^gvar_007C502C:Exception
 00424809    mov         edx,dword ptr ds:[4174D0];Exception
 0042480F    mov         dword ptr [eax],edx
 00424811    mov         eax,[007C4580];^gvar_007C5014
 00424816    mov         dword ptr [eax],42446C;sub_0042446C
 0042481C    mov         eax,[007C45C4];^gvar_007C5018
 00424821    mov         dword ptr [eax],4246A8
 00424827    mov         eax,[007C460C];^gvar_007C5024
 0042482C    mov         dword ptr [eax],42478C;sub_0042478C
 00424832    mov         eax,4242EC
 00424837    mov         edx,dword ptr ds:[7C49F0];^gvar_007C5034
 0042483D    mov         dword ptr [edx],eax
 0042483F    mov         eax,4243D4
 00424844    mov         edx,dword ptr ds:[7C4204];^gvar_007C503C
 0042484A    mov         dword ptr [edx],eax
 0042484C    ret
*}
end;

//00424850
procedure sub_00424850;
begin
{*
 00424850    cmp         dword ptr ds:[7C7DF0],0;gvar_007C7DF0:EOutOfMemory
>00424857    je          00424873
 00424859    mov         eax,[007C7DF0];gvar_007C7DF0:EOutOfMemory
 0042485E    mov         byte ptr [eax+18],1
 00424862    mov         eax,[007C7DF0];gvar_007C7DF0:EOutOfMemory
 00424867    mov         edx,dword ptr [eax]
 00424869    call        dword ptr [edx-8]
 0042486C    xor         eax,eax
 0042486E    mov         [007C7DF0],eax;gvar_007C7DF0:EOutOfMemory
 00424873    cmp         dword ptr ds:[7C7DF4],0;gvar_007C7DF4:EInvalidPointer
>0042487A    je          00424896
 0042487C    mov         eax,[007C7DF4];gvar_007C7DF4:EInvalidPointer
 00424881    mov         byte ptr [eax+18],1
 00424885    mov         eax,[007C7DF4];gvar_007C7DF4:EInvalidPointer
 0042488A    call        TObject.Free
 0042488F    xor         eax,eax
 00424891    mov         [007C7DF4],eax;gvar_007C7DF4:EInvalidPointer
 00424896    mov         eax,[007C4240];^gvar_007C5010
 0042489B    xor         edx,edx
 0042489D    mov         dword ptr [eax],edx
 0042489F    mov         eax,[007C45C0];^gvar_007C500C
 004248A4    xor         edx,edx
 004248A6    mov         dword ptr [eax],edx
 004248A8    mov         eax,[007C4430];^gvar_007C502C:Exception
 004248AD    xor         edx,edx
 004248AF    mov         dword ptr [eax],edx
 004248B1    mov         eax,[007C4580];^gvar_007C5014
 004248B6    xor         edx,edx
 004248B8    mov         dword ptr [eax],edx
 004248BA    mov         eax,[007C45C4];^gvar_007C5018
 004248BF    xor         edx,edx
 004248C1    mov         dword ptr [eax],edx
 004248C3    mov         eax,[007C49F0];^gvar_007C5034
 004248C8    xor         edx,edx
 004248CA    mov         dword ptr [eax],edx
 004248CC    ret
*}
end;

Initialization
//0079C10C
{*
 0079C10C    sub         dword ptr ds:[7C7CA8],1
>0079C113    jae         0079C11A
 0079C115    call        004247C0
 0079C11A    ret
*}
Finalization
end.