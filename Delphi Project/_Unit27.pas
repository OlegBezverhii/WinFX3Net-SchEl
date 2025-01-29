//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit27;

interface

uses
  SysUtils, Classes;

type
  EIniFileException = class(Exception)
  end;
  TCustomIniFile = class(TObject)
  published
    //procedure WriteDate(Section:string; Name:string; Value:TDateTime; ?:?);//004B580C
    //procedure WriteDateTime(Section:string; Name:string; Value:TDateTime; ?:?);//004B5870
    //procedure ReadTime(Section:string; Name:string; Default:TDateTime; ?:?);//004B5740
    procedure WriteBinaryStream(Section:string; Name:string; Value:TStream);//004B5BC8
    procedure WriteFloat(Section:string; Name:string; Value:Double);//004B58D4
    procedure ReadSubSections(Section:string; Strings:TStrings; Recurse:Boolean);//004B5FB4
    function ValueExists(Section:string; Ident:string):Boolean;//004B59DC
    //procedure WriteTime(Section:string; Name:string; Value:TDateTime; ?:?);//004B593C
    procedure ReadSections(Section:string; Strings:TStrings);//004B5FA8
    //procedure ReadFloat(Section:string; Name:string; Default:Double; ?:?);//004B5680
    function ReadInteger(Section:string; Ident:string; Default:Integer):Integer;//004B5388
    procedure WriteInteger(Section:string; Ident:string; Value:Integer);//004B5460
    constructor Create;//004B534C
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    function ReadBool(Section:string; Ident:string; Default:Boolean):Boolean;//004B54BC
    //procedure ReadDate(Section:string; Name:string; Default:TDateTime; ?:?);//004B54E8
    //procedure ReadDateTime(Section:string; Name:string; Default:TDateTime; ?:?);//004B55B4
    procedure WriteBool(Section:string; Ident:string; Value:Boolean);//004B59C0
    function ReadBinaryStream(Section:string; Name:string; Value:TStream):Integer;//004B5A4C
  public
    ....FFileName:string;//f4
    //procedure v0(?:?; ?:?; ?:?; ?:?); virtual;//v0//004B5D6C
    procedure ReadString; virtual; abstract;//v4//00405554
    procedure WriteString; virtual; abstract;//v8//00405554
    function ReadInteger(Section:string; Ident:string; Default:Integer):Integer; virtual;//vC//004B5388
    procedure WriteInteger(Section:string; Ident:string; Value:Integer); virtual;//v10//004B5460
    function ReadBool(Section:string; Ident:string; Default:Boolean):Boolean; virtual;//v14//004B54BC
    procedure WriteBool(Section:string; Ident:string; Value:Boolean); virtual;//v18//004B59C0
    function ReadBinaryStream(Section:string; Name:string; Value:TStream):Integer; virtual;//v1C//004B5A4C
    //procedure ReadDate(Section:string; Name:string; Default:TDateTime; ?:?); virtual;//v20//004B54E8
    //procedure ReadDateTime(Section:string; Name:string; Default:TDateTime; ?:?); virtual;//v24//004B55B4
    //procedure ReadFloat(Section:string; Name:string; Default:Double; ?:?); virtual;//v28//004B5680
    //procedure ReadTime(Section:string; Name:string; Default:TDateTime; ?:?); virtual;//v2C//004B5740
    procedure WriteBinaryStream(Section:string; Name:string; Value:TStream); virtual;//v30//004B5BC8
    //procedure WriteDate(Section:string; Name:string; Value:TDateTime; ?:?); virtual;//v34//004B580C
    //procedure WriteDateTime(Section:string; Name:string; Value:TDateTime; ?:?); virtual;//v38//004B5870
    procedure WriteFloat(Section:string; Name:string; Value:Double); virtual;//v3C//004B58D4
    //procedure WriteTime(Section:string; Name:string; Value:TDateTime; ?:?); virtual;//v40//004B593C
    procedure ReadSection; virtual; abstract;//v44//00405554
    procedure ReadSections; virtual; abstract;//v48//00405554
    procedure ReadSections(Section:string; Strings:TStrings); virtual;//v4C//004B5FA8
    procedure ReadSubSections(Section:string; Strings:TStrings; Recurse:Boolean); virtual;//v50//004B5FB4
    procedure ReadSectionValues; virtual; abstract;//v54//00405554
    procedure EraseSection; virtual; abstract;//v58//00405554
    procedure DeleteKey; virtual; abstract;//v5C//00405554
    procedure UpdateFile; virtual; abstract;//v60//00405554
    function ValueExists(Section:string; Ident:string):Boolean; virtual;//v64//004B59DC
  end;
  TIniFile = class(TCustomIniFile)
  published
    procedure EraseSection(Section:string);//004B6524
    procedure ReadSectionValues(Section:string; Strings:TStrings);//004B63D0
    procedure UpdateFile;//004B65A8
    procedure DeleteKey(Section:string; Ident:string);//004B6578
    procedure ReadSections(Strings:TStrings);//004B60C0
    function ReadString(Section:string; Ident:string; Default:string):string;//004B5FF4
    destructor Destroy();//004B5FC8
    procedure ReadSection(Section:string; Strings:TStrings);//004B6328
    procedure WriteString(Section:string; Ident:string; Value:string);//004B6054
  public
    destructor Destroy(); virtual;//004B5FC8
    function ReadString(Section:string; Ident:string; Default:string):string; virtual;//v4//004B5FF4
    procedure WriteString(Section:string; Ident:string; Value:string); virtual;//v8//004B6054
    procedure ReadSection(Section:string; Strings:TStrings); virtual;//v44//004B6328
    procedure ReadSections(Strings:TStrings); virtual;//v48//004B60C0
    procedure ReadSectionValues(Section:string; Strings:TStrings); virtual;//v54//004B63D0
    procedure EraseSection(Section:string); virtual;//v58//004B6524
    procedure DeleteKey(Section:string; Ident:string); virtual;//v5C//004B6578
    procedure UpdateFile; virtual;//v60//004B65A8
  end;
  ERegistryException = class(Exception)
  end;
  TRegKeyInfo = TRegKeyInfo = record//size=1C
NumSubKeys:Integer;//f0
MaxSubKeyLen:Integer;//f4
NumValues:Integer;//f8
MaxValueLen:Integer;//fC
MaxDataLen:Integer;//f10
FileTime:_FILETIME;//f14
end;;
  TRegDataType = (rdUnknown, rdString, rdExpandString, rdInteger, rdBinary);
  TRegDataInfo = TRegDataInfo = record//size=8
RegData:TRegDataType;//f0
DataSize:Integer;//f4
end;;
    procedure sub_004B39B4;//004B39B4
    procedure sub_004B39BC;//004B39BC
    //procedure sub_004B39C4(?:?; ?:?);//004B39C4
    //function sub_004B3A44:?;//004B3A44
    //procedure sub_004B3A4C(?:?; ?:?);//004B3A4C
    //function sub_004B3B6C(?:?):?;//004B3B6C
    //procedure sub_004B3BD8(?:string; ?:?);//004B3BD8
    //procedure sub_004B3BF4(?:?; ?:?);//004B3BF4
    //procedure sub_004B3C2C(?:?; ?:?; ?:?; ?:?);//004B3C2C
    //procedure sub_004B3D5C(?:?; ?:?);//004B3D5C
    //procedure sub_004B3F54(?:?; ?:?);//004B3F54
    //function sub_004B3FD0(?:?; ?:?):?;//004B3FD0
    //function sub_004B40A4(?:UnicodeString; ?:?):?;//004B40A4
    //function sub_004B40F8:?;//004B40F8
    //function sub_004B4104(?:?; ?:?):?;//004B4104
    //function sub_004B417C(?:?):?;//004B417C
    //function sub_004B4208(?:?; ?:?):?;//004B4208
    //function sub_004B4270(?:UnicodeString):?;//004B4270
    //function sub_004B42E4(?:?):?;//004B42E4
    //function sub_004B42F8(?:UnicodeString):?;//004B42F8
    //function sub_004B4338:?;//004B4338
    //function sub_004B4344(?:UnicodeString):?;//004B4344
    //function sub_004B439C(?:?):?;//004B439C
    //function sub_004B43B0(?:?):Boolean;//004B43B0
    //function sub_004B43B8:?;//004B43B8
    //function sub_004B43C0(?:?):?;//004B43C0
    //procedure sub_004B5D6C(?:?; ?:?; ?:?; ?:?);//004B5D6C
    procedure ReadStringData;//004B6254

implementation

//004B39B4
procedure sub_004B39B4;
begin
{*
 004B39B4    mov         dl,1
 004B39B6    call        004B3A4C
 004B39BB    ret
*}
end;

//004B39BC
procedure sub_004B39BC;
begin
{*
 004B39BC    mov         dl,1
 004B39BE    call        004B3A4C
 004B39C3    ret
*}
end;

//004B39C4
{*procedure sub_004B39C4(?:?; ?:?);
begin
 004B39C4    push        ebp
 004B39C5    mov         ebp,esp
 004B39C7    push        ecx
 004B39C8    push        esi
 004B39C9    push        edi
 004B39CA    mov         esi,edx
 004B39CC    mov         edi,eax
 004B39CE    xor         eax,eax
 004B39D0    mov         dword ptr [ebp-4],eax
 004B39D3    xor         edx,edx
 004B39D5    push        ebp
 004B39D6    push        4B3A35
 004B39DB    push        dword ptr fs:[edx]
 004B39DE    mov         dword ptr fs:[edx],esp
 004B39E1    mov         eax,edi
 004B39E3    call        004B3B6C
 004B39E8    mov         dword ptr [ebp-4],eax
 004B39EB    mov         eax,dword ptr [ebp-4]
 004B39EE    mov         edx,dword ptr [eax]
 004B39F0    call        dword ptr [edx]
 004B39F2    push        eax
 004B39F3    mov         eax,esi
 004B39F5    mov         ecx,1
 004B39FA    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004B3A00    call        @DynArraySetLength
 004B3A05    add         esp,4
 004B3A08    mov         eax,dword ptr [esi]
 004B3A0A    test        eax,eax
>004B3A0C    je          004B3A13
 004B3A0E    sub         eax,4
 004B3A11    mov         eax,dword ptr [eax]
 004B3A13    mov         edx,esi
 004B3A15    mov         ecx,eax
 004B3A17    mov         eax,dword ptr [ebp-4]
 004B3A1A    call        TStream.ReadBuffer
 004B3A1F    xor         eax,eax
 004B3A21    pop         edx
 004B3A22    pop         ecx
 004B3A23    pop         ecx
 004B3A24    mov         dword ptr fs:[eax],edx
 004B3A27    push        4B3A3C
 004B3A2C    mov         eax,dword ptr [ebp-4]
 004B3A2F    call        TObject.Free
 004B3A34    ret
>004B3A35    jmp         @HandleFinally
>004B3A3A    jmp         004B3A2C
 004B3A3C    pop         edi
 004B3A3D    pop         esi
 004B3A3E    pop         ecx
 004B3A3F    pop         ebp
 004B3A40    ret
end;*}

//004B3A44
{*function sub_004B3A44:?;
begin
 004B3A44    call        0041EA18
 004B3A49    ret
end;*}

//004B3A4C
{*procedure sub_004B3A4C(?:?; ?:?);
begin
 004B3A4C    push        ebp
 004B3A4D    mov         ebp,esp
 004B3A4F    push        0
 004B3A51    push        0
 004B3A53    push        0
 004B3A55    push        ebx
 004B3A56    push        esi
 004B3A57    mov         ebx,edx
 004B3A59    mov         esi,eax
 004B3A5B    xor         eax,eax
 004B3A5D    push        ebp
 004B3A5E    push        4B3B5F
 004B3A63    push        dword ptr fs:[eax]
 004B3A66    mov         dword ptr fs:[eax],esp
 004B3A69    mov         edx,104
 004B3A6E    mov         eax,esi
 004B3A70    call        004B3BF4
 004B3A75    mov         eax,esi
 004B3A77    call        004B417C
 004B3A7C    test        al,al
>004B3A7E    jne         004B3A97
 004B3A80    mov         ecx,dword ptr ds:[7C4CF4];^SResString160:TResStringRec
 004B3A86    mov         dl,1
 004B3A88    mov         eax,[00417E74];ENotSupportedException
 004B3A8D    call        Exception.CreateRes;ENotSupportedException.Create
 004B3A92    call        @RaiseExcept
 004B3A97    lea         edx,[ebp-4]
 004B3A9A    mov         eax,esi
 004B3A9C    call        0041D930
 004B3AA1    cmp         dword ptr [ebp-4],0
>004B3AA5    jne         004B3ABE
 004B3AA7    mov         ecx,dword ptr ds:[7C4EC0];^SResString157:TResStringRec
 004B3AAD    mov         dl,1
 004B3AAF    mov         eax,[00417C38];EArgumentException
 004B3AB4    call        Exception.CreateRes;EArgumentException.Create
 004B3AB9    call        @RaiseExcept
 004B3ABE    xor         edx,edx
 004B3AC0    mov         eax,esi
 004B3AC2    call        004B4104
 004B3AC7    test        al,al
>004B3AC9    jne         004B3AE2
 004B3ACB    mov         ecx,dword ptr ds:[7C4EC0];^SResString157:TResStringRec
 004B3AD1    mov         dl,1
 004B3AD3    mov         eax,[00417C38];EArgumentException
 004B3AD8    call        Exception.CreateRes;EArgumentException.Create
 004B3ADD    call        @RaiseExcept
 004B3AE2    lea         edx,[ebp-0C]
 004B3AE5    mov         eax,esi
 004B3AE7    call        004B3F54
 004B3AEC    mov         eax,dword ptr [ebp-0C]
 004B3AEF    lea         edx,[ebp-8]
 004B3AF2    call        004B3D5C
 004B3AF7    mov         eax,dword ptr [ebp-8]
 004B3AFA    mov         dl,1
 004B3AFC    call        0041EAB0
 004B3B01    test        al,al
>004B3B03    jne         004B3B1C
 004B3B05    mov         ecx,dword ptr ds:[7C4448];^SResString159:TResStringRec
 004B3B0B    mov         dl,1
 004B3B0D    mov         eax,[00417F34];EDirectoryNotFoundException
 004B3B12    call        Exception.CreateRes;EDirectoryNotFoundException.Create
 004B3B17    call        @RaiseExcept
 004B3B1C    test        bl,bl
>004B3B1E    je          004B3B44
 004B3B20    mov         dl,1
 004B3B22    mov         eax,esi
 004B3B24    call        004B3A44
 004B3B29    test        al,al
>004B3B2B    jne         004B3B44
 004B3B2D    mov         ecx,dword ptr ds:[7C4660];^SResString161:TResStringRec
 004B3B33    mov         dl,1
 004B3B35    mov         eax,[00417FFC];EFileNotFoundException
 004B3B3A    call        Exception.CreateRes;EFileNotFoundException.Create
 004B3B3F    call        @RaiseExcept
 004B3B44    xor         eax,eax
 004B3B46    pop         edx
 004B3B47    pop         ecx
 004B3B48    pop         ecx
 004B3B49    mov         dword ptr fs:[eax],edx
 004B3B4C    push        4B3B66
 004B3B51    lea         eax,[ebp-0C]
 004B3B54    mov         edx,3
 004B3B59    call        @UStrArrayClr
 004B3B5E    ret
>004B3B5F    jmp         @HandleFinally
>004B3B64    jmp         004B3B51
 004B3B66    pop         esi
 004B3B67    pop         ebx
 004B3B68    mov         esp,ebp
 004B3B6A    pop         ebp
 004B3B6B    ret
end;*}

//004B3B6C
{*function sub_004B3B6C(?:?):?;
begin
 004B3B6C    push        ebp
 004B3B6D    mov         ebp,esp
 004B3B6F    push        ebx
 004B3B70    push        esi
 004B3B71    push        edi
 004B3B72    mov         ebx,eax
 004B3B74    mov         eax,ebx
 004B3B76    call        004B39B4
 004B3B7B    xor         edx,edx
 004B3B7D    push        ebp
 004B3B7E    push        4B3BA5
 004B3B83    push        dword ptr fs:[edx]
 004B3B86    mov         dword ptr fs:[edx],esp
 004B3B89    push        0
 004B3B8B    mov         ecx,ebx
 004B3B8D    mov         dl,1
 004B3B8F    mov         eax,[00472830];TFileStream
 004B3B94    call        TFileStream.Create;TFileStream.Create
 004B3B99    pop         dword ptr fs:[0]
 004B3BA0    add         esp,8
>004B3BA3    jmp         004B3BD1
>004B3BA5    jmp         @HandleOnException
 004B3BAA    dd          1
 004B3BAE    dd          0046B63C;EFileStreamError
 004B3BB2    dd          004B3BB6
 004B3BB6    mov         ebx,eax
 004B3BB8    mov         ecx,dword ptr [ebx+4];EFileStreamError.FMessage:string
 004B3BBB    mov         dl,1
 004B3BBD    mov         eax,[004183AC];EInOutError
 004B3BC2    call        Exception.Create;EInOutError.Create
 004B3BC7    call        @RaiseExcept
 004B3BCC    call        @DoneExcept
 004B3BD1    pop         edi
 004B3BD2    pop         esi
 004B3BD3    pop         ebx
 004B3BD4    pop         ebp
 004B3BD5    ret
end;*}

//004B3BD8
{*procedure sub_004B3BD8(?:string; ?:?);
begin
 004B3BD8    push        ebx
 004B3BD9    push        esi
 004B3BDA    mov         esi,edx
 004B3BDC    mov         ebx,eax
 004B3BDE    mov         eax,ebx
 004B3BE0    call        004B39BC
 004B3BE5    mov         edx,esi
 004B3BE7    mov         eax,ebx
 004B3BE9    call        004B39C4
 004B3BEE    pop         esi
 004B3BEF    pop         ebx
 004B3BF0    ret
end;*}

//004B3BF4
{*procedure sub_004B3BF4(?:?; ?:?);
begin
 004B3BF4    push        ebx
 004B3BF5    mov         ebx,eax
 004B3BF7    mov         eax,ebx
 004B3BF9    test        eax,eax
>004B3BFB    je          004B3C02
 004B3BFD    sub         eax,4
 004B3C00    mov         eax,dword ptr [eax]
 004B3C02    cmp         edx,eax
>004B3C04    jg          004B3C28
 004B3C06    mov         eax,ebx
 004B3C08    call        004B42E4
 004B3C0D    test        al,al
>004B3C0F    jne         004B3C28
 004B3C11    mov         ecx,dword ptr ds:[7C4278];^SResString158:TResStringRec
 004B3C17    mov         dl,1
 004B3C19    mov         eax,[00417DB8];EPathTooLongException
 004B3C1E    call        Exception.CreateRes;EPathTooLongException.Create
 004B3C23    call        @RaiseExcept
 004B3C28    pop         ebx
 004B3C29    ret
end;*}

//004B3C2C
{*procedure sub_004B3C2C(?:?; ?:?; ?:?; ?:?);
begin
 004B3C2C    push        ebp
 004B3C2D    mov         ebp,esp
 004B3C2F    add         esp,0FFFFFFF8
 004B3C32    push        ebx
 004B3C33    push        esi
 004B3C34    push        edi
 004B3C35    xor         ebx,ebx
 004B3C37    mov         dword ptr [ebp-8],ebx
 004B3C3A    mov         byte ptr [ebp-1],cl
 004B3C3D    mov         ebx,edx
 004B3C3F    mov         esi,eax
 004B3C41    mov         edi,dword ptr [ebp+8]
 004B3C44    xor         eax,eax
 004B3C46    push        ebp
 004B3C47    push        4B3D49
 004B3C4C    push        dword ptr fs:[eax]
 004B3C4F    mov         dword ptr fs:[eax],esp
 004B3C52    test        esi,esi
>004B3C54    jne         004B3C64
 004B3C56    mov         eax,edi
 004B3C58    mov         edx,ebx
 004B3C5A    call        @UStrAsg
>004B3C5F    jmp         004B3D33
 004B3C64    test        ebx,ebx
>004B3C66    jne         004B3C76
 004B3C68    mov         eax,edi
 004B3C6A    mov         edx,esi
 004B3C6C    call        @UStrAsg
>004B3C71    jmp         004B3D33
 004B3C76    cmp         byte ptr [ebp-1],0
>004B3C7A    je          004B3CC4
 004B3C7C    mov         dl,1
 004B3C7E    mov         eax,esi
 004B3C80    call        004B4104
 004B3C85    test        al,al
>004B3C87    jne         004B3CA0
 004B3C89    mov         ecx,dword ptr ds:[7C4EC0];^SResString157:TResStringRec
 004B3C8F    mov         dl,1
 004B3C91    mov         eax,[00417C38];EArgumentException
 004B3C96    call        Exception.CreateRes;EArgumentException.Create
 004B3C9B    call        @RaiseExcept
 004B3CA0    mov         dl,1
 004B3CA2    mov         eax,ebx
 004B3CA4    call        004B4104
 004B3CA9    test        al,al
>004B3CAB    jne         004B3CC4
 004B3CAD    mov         ecx,dword ptr ds:[7C4EC0];^SResString157:TResStringRec
 004B3CB3    mov         dl,1
 004B3CB5    mov         eax,[00417C38];EArgumentException
 004B3CBA    call        Exception.CreateRes;EArgumentException.Create
 004B3CBF    call        @RaiseExcept
 004B3CC4    mov         eax,ebx
 004B3CC6    call        004B43B8
 004B3CCB    test        al,al
>004B3CCD    jne         004B3CDA
 004B3CCF    mov         eax,ebx
 004B3CD1    call        004B42E4
 004B3CD6    test        al,al
>004B3CD8    je          004B3CE5
 004B3CDA    mov         eax,edi
 004B3CDC    mov         edx,ebx
 004B3CDE    call        @UStrAsg
>004B3CE3    jmp         004B3D33
 004B3CE5    mov         eax,esi
 004B3CE7    test        eax,eax
>004B3CE9    je          004B3CF0
 004B3CEB    sub         eax,4
 004B3CEE    mov         eax,dword ptr [eax]
 004B3CF0    movzx       eax,word ptr [esi+eax*2-2]
 004B3CF5    mov         word ptr [ebp-4],ax
 004B3CF9    movzx       eax,word ptr [ebp-4]
 004B3CFD    call        004B43C0
 004B3D02    test        al,al
>004B3D04    jne         004B3D28
 004B3D06    push        esi
 004B3D07    lea         eax,[ebp-8]
 004B3D0A    movzx       edx,word ptr ds:[7CA41E];gvar_007CA41E
 004B3D11    call        @UStrFromWChar
 004B3D16    push        dword ptr [ebp-8]
 004B3D19    push        ebx
 004B3D1A    mov         eax,edi
 004B3D1C    mov         edx,3
 004B3D21    call        @UStrCatN
>004B3D26    jmp         004B3D33
 004B3D28    mov         eax,edi
 004B3D2A    mov         ecx,ebx
 004B3D2C    mov         edx,esi
 004B3D2E    call        @UStrCat3
 004B3D33    xor         eax,eax
 004B3D35    pop         edx
 004B3D36    pop         ecx
 004B3D37    pop         ecx
 004B3D38    mov         dword ptr fs:[eax],edx
 004B3D3B    push        4B3D50
 004B3D40    lea         eax,[ebp-8]
 004B3D43    call        @UStrClr
 004B3D48    ret
>004B3D49    jmp         @HandleFinally
>004B3D4E    jmp         004B3D40
 004B3D50    pop         edi
 004B3D51    pop         esi
 004B3D52    pop         ebx
 004B3D53    pop         ecx
 004B3D54    pop         ecx
 004B3D55    pop         ebp
 004B3D56    ret         4
end;*}

//004B3D5C
{*procedure sub_004B3D5C(?:?; ?:?);
begin
 004B3D5C    push        ebp
 004B3D5D    mov         ebp,esp
 004B3D5F    mov         ecx,4
 004B3D64    push        0
 004B3D66    push        0
 004B3D68    dec         ecx
>004B3D69    jne         004B3D64
 004B3D6B    push        ecx
 004B3D6C    push        ebx
 004B3D6D    push        esi
 004B3D6E    push        edi
 004B3D6F    mov         dword ptr [ebp-0C],edx
 004B3D72    mov         dword ptr [ebp-4],eax
 004B3D75    mov         eax,dword ptr [ebp-4]
 004B3D78    call        @UStrAddRef
 004B3D7D    xor         eax,eax
 004B3D7F    push        ebp
 004B3D80    push        4B3F44
 004B3D85    push        dword ptr fs:[eax]
 004B3D88    mov         dword ptr fs:[eax],esp
 004B3D8B    mov         eax,dword ptr [ebp-0C]
 004B3D8E    call        @UStrClr
 004B3D93    lea         edx,[ebp-18]
 004B3D96    mov         eax,dword ptr [ebp-4]
 004B3D99    call        0041D930
 004B3D9E    mov         edx,dword ptr [ebp-18]
 004B3DA1    lea         eax,[ebp-4]
 004B3DA4    call        @UStrLAsg
 004B3DA9    lea         eax,[ebp-1C]
 004B3DAC    movzx       edx,word ptr ds:[7CA41C];gvar_007CA41C
 004B3DB3    call        @UStrFromWChar
 004B3DB8    mov         eax,dword ptr [ebp-1C]
 004B3DBB    push        eax
 004B3DBC    lea         eax,[ebp-20]
 004B3DBF    movzx       edx,word ptr ds:[7CA41E];gvar_007CA41E
 004B3DC6    call        @UStrFromWChar
 004B3DCB    mov         edx,dword ptr [ebp-20]
 004B3DCE    lea         eax,[ebp-8]
 004B3DD1    pop         ecx
 004B3DD2    call        @UStrCat3
 004B3DD7    mov         edx,dword ptr [ebp-4]
 004B3DDA    mov         eax,dword ptr [ebp-8]
 004B3DDD    call        0041EE60
 004B3DE2    mov         dword ptr [ebp-14],eax
 004B3DE5    lea         edx,[ebp-0D]
 004B3DE8    mov         eax,dword ptr [ebp-4]
 004B3DEB    call        004B40A4
 004B3DF0    mov         esi,eax
 004B3DF2    cmp         dword ptr [ebp-14],0
 004B3DF6    setg        dl
 004B3DF9    mov         eax,dword ptr [ebp-4]
 004B3DFC    test        eax,eax
>004B3DFE    je          004B3E05
 004B3E00    sub         eax,4
 004B3E03    mov         eax,dword ptr [eax]
 004B3E05    mov         edi,eax
 004B3E07    xor         ebx,ebx
 004B3E09    test        dl,dl
>004B3E0B    je          004B3EDC
 004B3E11    mov         eax,dword ptr [ebp-4]
 004B3E14    call        004B4344
 004B3E19    test        al,al
>004B3E1B    je          004B3E5E
 004B3E1D    cmp         byte ptr [ebp-0D],0
>004B3E21    jne         004B3E26
 004B3E23    add         esi,2
 004B3E26    lea         ecx,[esi+1]
 004B3E29    mov         edx,dword ptr [ebp-4]
 004B3E2C    mov         eax,dword ptr [ebp-8]
 004B3E2F    call        0041EEB4
 004B3E34    mov         esi,eax
 004B3E36    test        esi,esi
>004B3E38    jle         004B3E4A
 004B3E3A    lea         ecx,[esi+1]
 004B3E3D    mov         edx,dword ptr [ebp-4]
 004B3E40    mov         eax,dword ptr [ebp-8]
 004B3E43    call        0041EEB4
 004B3E48    mov         esi,eax
 004B3E4A    test        esi,esi
>004B3E4C    jne         004B3E55
 004B3E4E    xor         ebx,ebx
>004B3E50    jmp         004B3F0C
 004B3E55    mov         ebx,dword ptr [ebp-14]
 004B3E58    dec         ebx
>004B3E59    jmp         004B3F0C
 004B3E5E    mov         eax,dword ptr [ebp-4]
 004B3E61    call        004B4270
 004B3E66    test        al,al
>004B3E68    je          004B3EB0
 004B3E6A    mov         eax,dword ptr [ebp-14]
 004B3E6D    sub         eax,2
 004B3E70    mov         edx,dword ptr [ebp-4]
 004B3E73    movzx       eax,word ptr [edx+eax*2]
 004B3E77    cmp         ax,word ptr ds:[7CA422];gvar_007CA422
>004B3E7E    jne         004B3EA1
 004B3E80    movzx       eax,byte ptr [ebp-0D]
 004B3E84    call        004B43B0
 004B3E89    test        al,al
>004B3E8B    je          004B3E93
 004B3E8D    mov         ebx,dword ptr [ebp-14]
 004B3E90    dec         ebx
>004B3E91    jmp         004B3F0C
 004B3E93    cmp         edi,dword ptr [ebp-14]
>004B3E96    jle         004B3E9D
 004B3E98    mov         ebx,dword ptr [ebp-14]
>004B3E9B    jmp         004B3F0C
 004B3E9D    xor         ebx,ebx
>004B3E9F    jmp         004B3F0C
 004B3EA1    cmp         esi,dword ptr [ebp-14]
>004B3EA4    jge         004B3EAC
 004B3EA6    mov         ebx,dword ptr [ebp-14]
 004B3EA9    dec         ebx
>004B3EAA    jmp         004B3F0C
 004B3EAC    xor         ebx,ebx
>004B3EAE    jmp         004B3F0C
 004B3EB0    movzx       eax,byte ptr [ebp-0D]
 004B3EB4    call        004B43B0
 004B3EB9    test        al,al
>004B3EBB    jne         004B3ED8
 004B3EBD    cmp         esi,dword ptr [ebp-14]
>004B3EC0    jne         004B3ED2
 004B3EC2    cmp         edi,dword ptr [ebp-14]
>004B3EC5    jle         004B3ECE
 004B3EC7    mov         ebx,1
>004B3ECC    jmp         004B3F0C
 004B3ECE    xor         ebx,ebx
>004B3ED0    jmp         004B3F0C
 004B3ED2    mov         ebx,dword ptr [ebp-14]
 004B3ED5    dec         ebx
>004B3ED6    jmp         004B3F0C
 004B3ED8    xor         ebx,ebx
>004B3EDA    jmp         004B3F0C
 004B3EDC    mov         eax,dword ptr [ebp-4]
 004B3EDF    call        004B4270
 004B3EE4    test        al,al
>004B3EE6    je          004B3F0C
 004B3EE8    lea         eax,[ebp-24]
 004B3EEB    movzx       edx,word ptr ds:[7CA422];gvar_007CA422
 004B3EF2    call        @UStrFromWChar
 004B3EF7    mov         eax,dword ptr [ebp-24]
 004B3EFA    mov         ecx,esi
 004B3EFC    mov         edx,dword ptr [ebp-4]
 004B3EFF    call        Pos
 004B3F04    mov         ebx,eax
 004B3F06    cmp         edi,ebx
>004B3F08    jne         004B3F0C
 004B3F0A    xor         ebx,ebx
 004B3F0C    mov         eax,dword ptr [ebp-0C]
 004B3F0F    push        eax
 004B3F10    lea         eax,[ebp-4]
 004B3F13    mov         ecx,ebx
 004B3F15    xor         edx,edx
 004B3F17    call        00426870
 004B3F1C    xor         eax,eax
 004B3F1E    pop         edx
 004B3F1F    pop         ecx
 004B3F20    pop         ecx
 004B3F21    mov         dword ptr fs:[eax],edx
 004B3F24    push        4B3F4B
 004B3F29    lea         eax,[ebp-24]
 004B3F2C    mov         edx,4
 004B3F31    call        @UStrArrayClr
 004B3F36    lea         eax,[ebp-8]
 004B3F39    mov         edx,2
 004B3F3E    call        @UStrArrayClr
 004B3F43    ret
>004B3F44    jmp         @HandleFinally
>004B3F49    jmp         004B3F29
 004B3F4B    pop         edi
 004B3F4C    pop         esi
 004B3F4D    pop         ebx
 004B3F4E    mov         esp,ebp
 004B3F50    pop         ebp
 004B3F51    ret
end;*}

//004B3F54
{*procedure sub_004B3F54(?:?; ?:?);
begin
 004B3F54    push        ebp
 004B3F55    mov         ebp,esp
 004B3F57    push        0
 004B3F59    push        ebx
 004B3F5A    push        esi
 004B3F5B    mov         esi,edx
 004B3F5D    mov         ebx,eax
 004B3F5F    xor         eax,eax
 004B3F61    push        ebp
 004B3F62    push        4B3FC3
 004B3F67    push        dword ptr fs:[eax]
 004B3F6A    mov         dword ptr fs:[eax],esp
 004B3F6D    push        0
 004B3F6F    call        kernel32.SetLastError
 004B3F74    mov         edx,esi
 004B3F76    mov         eax,ebx
 004B3F78    call        0041F078
 004B3F7D    call        kernel32.GetLastError
 004B3F82    mov         ebx,eax
 004B3F84    test        ebx,ebx
>004B3F86    je          004B3FAD
 004B3F88    cmp         ebx,2
>004B3F8B    je          004B3FAD
 004B3F8D    lea         ecx,[ebp-4]
 004B3F90    xor         edx,edx
 004B3F92    mov         eax,ebx
 004B3F94    call        00422CB4
 004B3F99    mov         ecx,dword ptr [ebp-4]
 004B3F9C    mov         dl,1
 004B3F9E    mov         eax,[00417E74];ENotSupportedException
 004B3FA3    call        Exception.Create;ENotSupportedException.Create
 004B3FA8    call        @RaiseExcept
 004B3FAD    xor         eax,eax
 004B3FAF    pop         edx
 004B3FB0    pop         ecx
 004B3FB1    pop         ecx
 004B3FB2    mov         dword ptr fs:[eax],edx
 004B3FB5    push        4B3FCA
 004B3FBA    lea         eax,[ebp-4]
 004B3FBD    call        @UStrClr
 004B3FC2    ret
>004B3FC3    jmp         @HandleFinally
>004B3FC8    jmp         004B3FBA
 004B3FCA    pop         esi
 004B3FCB    pop         ebx
 004B3FCC    pop         ecx
 004B3FCD    pop         ebp
 004B3FCE    ret
end;*}

//004B3FD0
{*function sub_004B3FD0(?:?; ?:?):?;
begin
 004B3FD0    push        ebx
 004B3FD1    push        esi
 004B3FD2    push        edi
 004B3FD3    push        ebp
 004B3FD4    push        ecx
 004B3FD5    mov         byte ptr [esp],dl
 004B3FD8    mov         edi,eax
 004B3FDA    xor         ebx,ebx
 004B3FDC    test        edi,edi
>004B3FDE    je          004B4099
 004B3FE4    cmp         byte ptr [esp],0
>004B3FE8    je          004B400E
 004B3FEA    xor         edx,edx
 004B3FEC    mov         eax,edi
 004B3FEE    call        004B4104
 004B3FF3    test        al,al
>004B3FF5    jne         004B400E
 004B3FF7    mov         ecx,dword ptr ds:[7C4EC0];^SResString157:TResStringRec
 004B3FFD    mov         dl,1
 004B3FFF    mov         eax,[00417C38];EArgumentException
 004B4004    call        Exception.CreateRes;EArgumentException.Create
 004B4009    call        @RaiseExcept
 004B400E    lea         edx,[esp+1]
 004B4012    mov         eax,edi
 004B4014    call        004B40A4
 004B4019    mov         esi,eax
 004B401B    mov         eax,edi
 004B401D    call        @UStrToPWChar
 004B4022    mov         ebp,eax
 004B4024    mov         eax,edi
 004B4026    test        eax,eax
>004B4028    je          004B402F
 004B402A    sub         eax,4
 004B402D    mov         eax,dword ptr [eax]
 004B402F    sub         eax,esi
 004B4031    inc         eax
 004B4032    cmp         eax,2
>004B4035    jl          004B4045
 004B4037    movzx       edx,word ptr [ebp+esi*2]
 004B403C    cmp         dx,word ptr ds:[7CA422];gvar_007CA422
>004B4043    je          004B4049
 004B4045    xor         ebx,ebx
>004B4047    jmp         004B404B
 004B4049    mov         bl,1
 004B404B    test        bl,bl
>004B404D    jne         004B4074
 004B404F    cmp         byte ptr [esp+1],0
>004B4054    jne         004B4070
 004B4056    dec         eax
>004B4057    jl          004B4070
 004B4059    movzx       edx,word ptr [ebp+esi*2-2]
 004B405E    cmp         dx,word ptr ds:[7CA41E];gvar_007CA41E
>004B4065    je          004B4074
 004B4067    cmp         dx,word ptr ds:[7CA41C];gvar_007CA41C
>004B406E    je          004B4074
 004B4070    xor         eax,eax
>004B4072    jmp         004B4076
 004B4074    mov         al,1
 004B4076    mov         ebx,eax
 004B4078    test        bl,bl
>004B407A    jne         004B4095
 004B407C    cmp         byte ptr [esp+1],2
>004B4081    jne         004B4091
 004B4083    movzx       eax,word ptr [ebp+esi*2-2]
 004B4088    call        004B439C
 004B408D    test        al,al
>004B408F    jne         004B4095
 004B4091    xor         eax,eax
>004B4093    jmp         004B4097
 004B4095    mov         al,1
 004B4097    mov         ebx,eax
 004B4099    mov         eax,ebx
 004B409B    pop         edx
 004B409C    pop         ebp
 004B409D    pop         edi
 004B409E    pop         esi
 004B409F    pop         ebx
 004B40A0    ret
end;*}

//004B40A4
{*function sub_004B40A4(?:UnicodeString; ?:?):?;
begin
 004B40A4    push        ebx
 004B40A5    push        esi
 004B40A6    mov         ebx,edx
 004B40A8    mov         esi,eax
 004B40AA    mov         eax,esi
 004B40AC    call        004B42F8
 004B40B1    mov         byte ptr [ebx],al
 004B40B3    movzx       eax,byte ptr [ebx]
 004B40B6    sub         al,1
>004B40B8    jb          004B40C2
>004B40BA    je          004B40CA
 004B40BC    dec         al
>004B40BE    je          004B40DC
>004B40C0    jmp         004B40EE
 004B40C2    mov         eax,1
 004B40C7    pop         esi
 004B40C8    pop         ebx
 004B40C9    ret
 004B40CA    mov         eax,[007A0774];^'\\?\'
 004B40CF    test        eax,eax
>004B40D1    je          004B40D8
 004B40D3    sub         eax,4
 004B40D6    mov         eax,dword ptr [eax]
 004B40D8    inc         eax
 004B40D9    pop         esi
 004B40DA    pop         ebx
 004B40DB    ret
 004B40DC    mov         eax,[007A0778];^'\\?\UNC\'
 004B40E1    test        eax,eax
>004B40E3    je          004B40EA
 004B40E5    sub         eax,4
 004B40E8    mov         eax,dword ptr [eax]
 004B40EA    inc         eax
 004B40EB    pop         esi
 004B40EC    pop         ebx
 004B40ED    ret
 004B40EE    mov         eax,1
 004B40F3    pop         esi
 004B40F4    pop         ebx
 004B40F5    ret
end;*}

//004B40F8
{*function sub_004B40F8:?;
begin
 004B40F8    push        ecx
 004B40F9    mov         edx,esp
 004B40FB    call        004B40A4
 004B4100    pop         edx
 004B4101    ret
end;*}

//004B4104
{*function sub_004B4104(?:?; ?:?):?;
begin
 004B4104    push        ebx
 004B4105    push        esi
 004B4106    push        edi
 004B4107    push        ebp
 004B4108    add         esp,0FFFFFFF8
 004B410B    mov         byte ptr [esp],dl
 004B410E    mov         ebx,eax
 004B4110    mov         eax,ebx
 004B4112    call        004B40F8
 004B4117    mov         edi,eax
 004B4119    dec         edi
 004B411A    mov         eax,ebx
 004B411C    call        @UStrToPWChar
 004B4121    mov         ebp,eax
 004B4123    mov         eax,ebx
 004B4125    test        eax,eax
>004B4127    je          004B412E
 004B4129    sub         eax,4
 004B412C    mov         eax,dword ptr [eax]
 004B412E    mov         dword ptr [esp+4],eax
 004B4132    xor         ebx,ebx
>004B4134    jmp         004B4163
 004B4136    movzx       esi,word ptr [ebp+edi*2]
 004B413B    mov         eax,esi
 004B413D    call        004B439C
 004B4142    test        al,al
>004B4144    jne         004B4162
 004B4146    cmp         byte ptr [esp],0
>004B414A    je          004B415E
 004B414C    mov         eax,esi
 004B414E    call        004B4338
 004B4153    test        al,al
>004B4155    jne         004B415B
 004B4157    mov         bl,1
>004B4159    jmp         004B4163
 004B415B    inc         edi
>004B415C    jmp         004B4163
 004B415E    mov         bl,1
>004B4160    jmp         004B4163
 004B4162    inc         edi
 004B4163    test        bl,bl
>004B4165    jne         004B416D
 004B4167    cmp         edi,dword ptr [esp+4]
>004B416B    jl          004B4136
 004B416D    xor         bl,1
 004B4170    mov         eax,ebx
 004B4172    pop         ecx
 004B4173    pop         edx
 004B4174    pop         ebp
 004B4175    pop         edi
 004B4176    pop         esi
 004B4177    pop         ebx
 004B4178    ret
end;*}

//004B417C
{*function sub_004B417C(?:?):?;
begin
 004B417C    push        ebp
 004B417D    mov         ebp,esp
 004B417F    push        0
 004B4181    push        0
 004B4183    push        ebx
 004B4184    push        esi
 004B4185    mov         esi,eax
 004B4187    xor         eax,eax
 004B4189    push        ebp
 004B418A    push        4B41F9
 004B418F    push        dword ptr fs:[eax]
 004B4192    mov         dword ptr fs:[eax],esp
 004B4195    mov         bl,1
 004B4197    lea         edx,[ebp-4]
 004B419A    mov         eax,esi
 004B419C    call        0041D930
 004B41A1    cmp         dword ptr [ebp-4],0
>004B41A5    je          004B41DE
 004B41A7    mov         eax,esi
 004B41A9    call        004B40F8
 004B41AE    mov         ebx,eax
 004B41B0    mov         eax,esi
 004B41B2    call        004B4270
 004B41B7    test        al,al
>004B41B9    je          004B41BE
 004B41BB    add         ebx,2
 004B41BE    lea         eax,[ebp-8]
 004B41C1    movzx       edx,word ptr ds:[7CA422];gvar_007CA422
 004B41C8    call        @UStrFromWChar
 004B41CD    mov         eax,dword ptr [ebp-8]
 004B41D0    mov         ecx,ebx
 004B41D2    mov         edx,esi
 004B41D4    call        Pos
 004B41D9    test        eax,eax
 004B41DB    sete        bl
 004B41DE    xor         eax,eax
 004B41E0    pop         edx
 004B41E1    pop         ecx
 004B41E2    pop         ecx
 004B41E3    mov         dword ptr fs:[eax],edx
 004B41E6    push        4B4200
 004B41EB    lea         eax,[ebp-8]
 004B41EE    mov         edx,2
 004B41F3    call        @UStrArrayClr
 004B41F8    ret
>004B41F9    jmp         @HandleFinally
>004B41FE    jmp         004B41EB
 004B4200    mov         eax,ebx
 004B4202    pop         esi
 004B4203    pop         ebx
 004B4204    pop         ecx
 004B4205    pop         ecx
 004B4206    pop         ebp
 004B4207    ret
end;*}

//004B4208
{*function sub_004B4208(?:?; ?:?):?;
begin
 004B4208    push        ebx
 004B4209    push        esi
 004B420A    push        edi
 004B420B    push        ebp
 004B420C    push        ecx
 004B420D    mov         byte ptr [esp],0
 004B4211    xor         ecx,ecx
 004B4213    mov         ebx,edx
 004B4215    test        ebx,ebx
>004B4217    je          004B421E
 004B4219    sub         ebx,4
 004B421C    mov         ebx,dword ptr [ebx]
 004B421E    mov         esi,ebx
 004B4220    dec         esi
 004B4221    test        esi,esi
>004B4223    jl          004B4264
 004B4225    cmp         ax,word ptr [edx+ecx*2]
>004B4229    jb          004B4264
 004B422B    cmp         ax,word ptr [edx+esi*2]
>004B422F    ja          004B4264
 004B4231    mov         edi,esi
 004B4233    sub         edi,ecx
 004B4235    sar         edi,1
>004B4237    jns         004B423C
 004B4239    adc         edi,0
 004B423C    add         edi,ecx
 004B423E    movzx       ebp,word ptr [edx+edi*2]
 004B4242    cmp         bp,ax
>004B4245    jbe         004B424C
 004B4247    mov         esi,edi
 004B4249    dec         esi
>004B424A    jmp         004B425A
 004B424C    cmp         bp,ax
>004B424F    jae         004B4256
 004B4251    lea         ecx,[edi+1]
>004B4254    jmp         004B425A
 004B4256    mov         byte ptr [esp],1
 004B425A    cmp         byte ptr [esp],0
>004B425E    jne         004B4264
 004B4260    cmp         esi,ecx
>004B4262    jge         004B4231
 004B4264    movzx       eax,byte ptr [esp]
 004B4268    pop         edx
 004B4269    pop         ebp
 004B426A    pop         edi
 004B426B    pop         esi
 004B426C    pop         ebx
 004B426D    ret
end;*}

//004B4270
{*function sub_004B4270(?:UnicodeString):?;
begin
 004B4270    push        ebx
 004B4271    push        esi
 004B4272    mov         ebx,eax
 004B4274    xor         edx,edx
 004B4276    mov         eax,ebx
 004B4278    test        eax,eax
>004B427A    je          004B4281
 004B427C    sub         eax,4
 004B427F    mov         eax,dword ptr [eax]
 004B4281    cmp         eax,2
>004B4284    jl          004B42DD
 004B4286    mov         eax,ebx
 004B4288    call        004B40F8
 004B428D    mov         esi,eax
 004B428F    mov         eax,ebx
 004B4291    call        @UStrToPWChar
 004B4296    mov         edx,esi
 004B4298    add         edx,edx
 004B429A    add         eax,edx
 004B429C    sub         eax,2
 004B429F    movzx       ecx,word ptr [eax]
 004B42A2    mov         edx,ecx
 004B42A4    mov         ebx,ecx
 004B42A6    add         ebx,0FFFFFF9F
 004B42A9    sub         bx,1A
>004B42AD    jae         004B42B6
 004B42AF    mov         edx,ecx
 004B42B1    and         dx,0FFDF
 004B42B6    cmp         dx,0FF
>004B42BB    ja          004B42C7
 004B42BD    movzx       edx,dx
 004B42C0    bt          dword ptr ds:[7A077C],edx;gvar_007A077C
>004B42C7    jae         004B42D9
 004B42C9    movzx       eax,word ptr [eax+2]
 004B42CD    cmp         ax,word ptr ds:[7CA422];gvar_007CA422
 004B42D4    sete        al
>004B42D7    jmp         004B42DB
 004B42D9    xor         eax,eax
 004B42DB    mov         edx,eax
 004B42DD    mov         eax,edx
 004B42DF    pop         esi
 004B42E0    pop         ebx
 004B42E1    ret
end;*}

//004B42E4
{*function sub_004B42E4(?:?):?;
begin
 004B42E4    push        ebx
 004B42E5    mov         ebx,eax
 004B42E7    mov         eax,ebx
 004B42E9    call        004B42F8
 004B42EE    call        004B43B0
 004B42F3    pop         ebx
 004B42F4    ret
end;*}

//004B42F8
{*function sub_004B42F8(?:UnicodeString):?;
begin
 004B42F8    push        ebx
 004B42F9    push        ecx
 004B42FA    mov         dword ptr [esp],eax
 004B42FD    xor         ebx,ebx
 004B42FF    cmp         dword ptr [esp],0
>004B4303    je          004B4331
 004B4305    mov         eax,esp
 004B4307    xor         ecx,ecx
 004B4309    mov         edx,dword ptr ds:[7A0778];^'\\?\UNC\'
 004B430F    call        TStringHelper.StartsWith
 004B4314    test        al,al
>004B4316    je          004B431C
 004B4318    mov         bl,2
>004B431A    jmp         004B4331
 004B431C    mov         eax,esp
 004B431E    xor         ecx,ecx
 004B4320    mov         edx,dword ptr ds:[7A0774];^'\\?\'
 004B4326    call        TStringHelper.StartsWith
 004B432B    test        al,al
>004B432D    je          004B4331
 004B432F    mov         bl,1
 004B4331    mov         eax,ebx
 004B4333    pop         edx
 004B4334    pop         ebx
 004B4335    ret
end;*}

//004B4338
{*function sub_004B4338:?;
begin
 004B4338    mov         edx,dword ptr ds:[7CA430];gvar_007CA430:?
 004B433E    call        004B4208
 004B4343    ret
end;*}

//004B4344
{*function sub_004B4344(?:UnicodeString):?;
begin
 004B4344    push        ebx
 004B4345    push        esi
 004B4346    mov         esi,eax
 004B4348    xor         ebx,ebx
 004B434A    mov         eax,esi
 004B434C    test        eax,eax
>004B434E    je          004B4355
 004B4350    sub         eax,4
 004B4353    mov         eax,dword ptr [eax]
 004B4355    cmp         eax,3
>004B4358    jl          004B4396
 004B435A    mov         eax,esi
 004B435C    call        @UStrToPWChar
 004B4361    movzx       edx,word ptr ds:[7CA41E];gvar_007CA41E
 004B4368    cmp         dx,word ptr [eax]
>004B436B    jne         004B4396
 004B436D    cmp         dx,word ptr [eax+2]
>004B4371    jne         004B4396
 004B4373    movzx       edx,word ptr [eax+4]
 004B4377    mov         ecx,edx
 004B4379    sub         cx,3F
>004B437D    jne         004B438D
 004B437F    mov         eax,esi
 004B4381    call        004B42F8
 004B4386    cmp         al,2
 004B4388    sete        bl
>004B438B    jmp         004B4396
 004B438D    mov         eax,edx
 004B438F    call        004B439C
 004B4394    mov         ebx,eax
 004B4396    mov         eax,ebx
 004B4398    pop         esi
 004B4399    pop         ebx
 004B439A    ret
end;*}

//004B439C
{*function sub_004B439C(?:?):?;
begin
 004B439C    push        ebx
 004B439D    mov         ebx,eax
 004B439F    mov         edx,dword ptr ds:[7CA428];gvar_007CA428:?
 004B43A5    mov         eax,ebx
 004B43A7    call        004B4208
 004B43AC    xor         al,1
 004B43AE    pop         ebx
 004B43AF    ret
end;*}

//004B43B0
{*function sub_004B43B0(?:?):Boolean;
begin
 004B43B0    dec         eax
 004B43B1    sub         al,2
 004B43B3    setb        al
 004B43B6    ret
end;*}

//004B43B8
{*function sub_004B43B8:?;
begin
 004B43B8    mov         dl,1
 004B43BA    call        004B3FD0
 004B43BF    ret
end;*}

//004B43C0
{*function sub_004B43C0(?:?):?;
begin
 004B43C0    cmp         ax,word ptr ds:[7CA41E];gvar_007CA41E
>004B43C7    je          004B43DE
 004B43C9    cmp         ax,word ptr ds:[7CA41C];gvar_007CA41C
>004B43D0    je          004B43DE
 004B43D2    cmp         ax,word ptr ds:[7CA422];gvar_007CA422
>004B43D9    je          004B43DE
 004B43DB    xor         eax,eax
 004B43DD    ret
 004B43DE    mov         al,1
 004B43E0    ret
end;*}

//004B534C
constructor TCustomIniFile.Create;
begin
{*
 004B534C    push        ebx
 004B534D    push        esi
 004B534E    push        edi
 004B534F    test        dl,dl
>004B5351    je          004B535B
 004B5353    add         esp,0FFFFFFF0
 004B5356    call        @ClassCreate
 004B535B    mov         esi,ecx
 004B535D    mov         ebx,edx
 004B535F    mov         edi,eax
 004B5361    lea         eax,[edi+4]
 004B5364    mov         edx,esi
 004B5366    call        @UStrAsg
 004B536B    mov         eax,edi
 004B536D    test        bl,bl
>004B536F    je          004B5380
 004B5371    call        @AfterConstruction
 004B5376    pop         dword ptr fs:[0]
 004B537D    add         esp,0C
 004B5380    mov         eax,edi
 004B5382    pop         edi
 004B5383    pop         esi
 004B5384    pop         ebx
 004B5385    ret
*}
end;

//004B5388
function TCustomIniFile.ReadInteger(Section:string; Ident:string; Default:Integer):Integer;
begin
{*
 004B5388    push        ebp
 004B5389    mov         ebp,esp
 004B538B    push        0
 004B538D    push        0
 004B538F    push        0
 004B5391    push        ebx
 004B5392    push        esi
 004B5393    mov         dword ptr [ebp-8],ecx
 004B5396    mov         esi,edx
 004B5398    mov         ebx,eax
 004B539A    xor         eax,eax
 004B539C    push        ebp
 004B539D    push        4B5429
 004B53A2    push        dword ptr fs:[eax]
 004B53A5    mov         dword ptr fs:[eax],esp
 004B53A8    push        0
 004B53AA    lea         eax,[ebp-4]
 004B53AD    push        eax
 004B53AE    mov         ecx,dword ptr [ebp-8]
 004B53B1    mov         edx,esi
 004B53B3    mov         eax,ebx
 004B53B5    mov         ebx,dword ptr [eax]
 004B53B7    call        dword ptr [ebx+4]
 004B53BA    mov         eax,dword ptr [ebp-4]
 004B53BD    test        eax,eax
>004B53BF    je          004B53C6
 004B53C1    sub         eax,4
 004B53C4    mov         eax,dword ptr [eax]
 004B53C6    cmp         eax,2
>004B53C9    jle         004B53FE
 004B53CB    lea         eax,[ebp-4]
 004B53CE    mov         cl,1
 004B53D0    mov         edx,4B5448;'0x'
 004B53D5    call        TStringHelper.StartsWith
 004B53DA    test        al,al
>004B53DC    je          004B53FE
 004B53DE    lea         ecx,[ebp-0C]
 004B53E1    lea         eax,[ebp-4]
 004B53E4    mov         edx,2
 004B53E9    call        TStringHelper.Substring
 004B53EE    mov         ecx,dword ptr [ebp-0C]
 004B53F1    lea         eax,[ebp-4]
 004B53F4    mov         edx,4B545C;'$'
 004B53F9    call        @UStrCat3
 004B53FE    mov         edx,dword ptr [ebp+8]
 004B5401    mov         eax,dword ptr [ebp-4]
 004B5404    call        StrToIntDef
 004B5409    mov         ebx,eax
 004B540B    xor         eax,eax
 004B540D    pop         edx
 004B540E    pop         ecx
 004B540F    pop         ecx
 004B5410    mov         dword ptr fs:[eax],edx
 004B5413    push        4B5430
 004B5418    lea         eax,[ebp-0C]
 004B541B    call        @UStrClr
 004B5420    lea         eax,[ebp-4]
 004B5423    call        @UStrClr
 004B5428    ret
>004B5429    jmp         @HandleFinally
>004B542E    jmp         004B5418
 004B5430    mov         eax,ebx
 004B5432    pop         esi
 004B5433    pop         ebx
 004B5434    mov         esp,ebp
 004B5436    pop         ebp
 004B5437    ret         4
*}
end;

//004B5460
procedure TCustomIniFile.WriteInteger(Section:string; Ident:string; Value:Integer);
begin
{*
 004B5460    push        ebp
 004B5461    mov         ebp,esp
 004B5463    push        0
 004B5465    push        ebx
 004B5466    push        esi
 004B5467    push        edi
 004B5468    mov         edi,ecx
 004B546A    mov         esi,edx
 004B546C    mov         ebx,eax
 004B546E    xor         eax,eax
 004B5470    push        ebp
 004B5471    push        4B54AC
 004B5476    push        dword ptr fs:[eax]
 004B5479    mov         dword ptr fs:[eax],esp
 004B547C    lea         edx,[ebp-4]
 004B547F    mov         eax,dword ptr [ebp+8]
 004B5482    call        IntToStr
 004B5487    mov         eax,dword ptr [ebp-4]
 004B548A    push        eax
 004B548B    mov         ecx,edi
 004B548D    mov         edx,esi
 004B548F    mov         eax,ebx
 004B5491    mov         ebx,dword ptr [eax]
 004B5493    call        dword ptr [ebx+8]
 004B5496    xor         eax,eax
 004B5498    pop         edx
 004B5499    pop         ecx
 004B549A    pop         ecx
 004B549B    mov         dword ptr fs:[eax],edx
 004B549E    push        4B54B3
 004B54A3    lea         eax,[ebp-4]
 004B54A6    call        @UStrClr
 004B54AB    ret
>004B54AC    jmp         @HandleFinally
>004B54B1    jmp         004B54A3
 004B54B3    pop         edi
 004B54B4    pop         esi
 004B54B5    pop         ebx
 004B54B6    pop         ecx
 004B54B7    pop         ebp
 004B54B8    ret         4
*}
end;

//004B54BC
function TCustomIniFile.ReadBool(Section:string; Ident:string; Default:Boolean):Boolean;
begin
{*
 004B54BC    push        ebp
 004B54BD    mov         ebp,esp
 004B54BF    push        ecx
 004B54C0    push        ebx
 004B54C1    push        esi
 004B54C2    mov         dword ptr [ebp-4],ecx
 004B54C5    mov         esi,edx
 004B54C7    mov         ebx,eax
 004B54C9    movzx       eax,byte ptr [ebp+8]
 004B54CD    push        eax
 004B54CE    mov         ecx,dword ptr [ebp-4]
 004B54D1    mov         edx,esi
 004B54D3    mov         eax,ebx
 004B54D5    mov         ebx,dword ptr [eax]
 004B54D7    call        dword ptr [ebx+0C]
 004B54DA    test        eax,eax
 004B54DC    setne       al
 004B54DF    pop         esi
 004B54E0    pop         ebx
 004B54E1    pop         ecx
 004B54E2    pop         ebp
 004B54E3    ret         4
*}
end;

//004B54E8
{*procedure TCustomIniFile.ReadDate(Section:string; Name:string; Default:TDateTime; ?:?);
begin
 004B54E8    push        ebp
 004B54E9    mov         ebp,esp
 004B54EB    add         esp,0FFFFFFE8
 004B54EE    push        ebx
 004B54EF    push        esi
 004B54F0    push        edi
 004B54F1    xor         ebx,ebx
 004B54F3    mov         dword ptr [ebp-4],ebx
 004B54F6    mov         dword ptr [ebp-8],ecx
 004B54F9    mov         esi,edx
 004B54FB    mov         ebx,eax
 004B54FD    xor         eax,eax
 004B54FF    push        ebp
 004B5500    push        4B55A0
 004B5505    push        dword ptr fs:[eax]
 004B5508    mov         dword ptr fs:[eax],esp
 004B550B    push        0
 004B550D    lea         eax,[ebp-4]
 004B5510    push        eax
 004B5511    mov         ecx,dword ptr [ebp-8]
 004B5514    mov         edx,esi
 004B5516    mov         eax,ebx
 004B5518    mov         ebx,dword ptr [eax]
 004B551A    call        dword ptr [ebx+4];TCustomIniFile.ReadString
 004B551D    mov         eax,dword ptr [ebp+8]
 004B5520    mov         dword ptr [ebp-10],eax
 004B5523    mov         eax,dword ptr [ebp+0C]
 004B5526    mov         dword ptr [ebp-0C],eax
 004B5529    cmp         dword ptr [ebp-4],0
>004B552D    je          004B558A
 004B552F    xor         eax,eax
 004B5531    push        ebp
 004B5532    push        4B5565
 004B5537    push        dword ptr fs:[eax]
 004B553A    mov         dword ptr fs:[eax],esp
 004B553D    mov         edx,dword ptr ds:[7C4B88];^gvar_007C7CC8:Pointer
 004B5543    mov         eax,dword ptr [ebp-4]
 004B5546    call        00422960
 004B554B    fstp        qword ptr [ebp-18]
 004B554E    wait
 004B554F    mov         eax,dword ptr [ebp-18]
 004B5552    mov         dword ptr [ebp-10],eax
 004B5555    mov         eax,dword ptr [ebp-14]
 004B5558    mov         dword ptr [ebp-0C],eax
 004B555B    xor         eax,eax
 004B555D    pop         edx
 004B555E    pop         ecx
 004B555F    pop         ecx
 004B5560    mov         dword ptr fs:[eax],edx
>004B5563    jmp         004B558A
>004B5565    jmp         @HandleOnException
 004B556A    dd          2
 004B556E    dd          00418D28;EConvertError
 004B5572    dd          004B5585
 004B5576    dd          00000000
 004B557A    dd          004B5580
>004B557E    jmp         004B5585
 004B5580    call        @RaiseAgain
 004B5585    call        @DoneExcept
 004B558A    xor         eax,eax
 004B558C    pop         edx
 004B558D    pop         ecx
 004B558E    pop         ecx
 004B558F    mov         dword ptr fs:[eax],edx
 004B5592    push        4B55A7
 004B5597    lea         eax,[ebp-4]
 004B559A    call        @UStrClr
 004B559F    ret
>004B55A0    jmp         @HandleFinally
>004B55A5    jmp         004B5597
 004B55A7    fld         qword ptr [ebp-10]
 004B55AA    pop         edi
 004B55AB    pop         esi
 004B55AC    pop         ebx
 004B55AD    mov         esp,ebp
 004B55AF    pop         ebp
 004B55B0    ret         8
end;*}

//004B55B4
{*procedure TCustomIniFile.ReadDateTime(Section:string; Name:string; Default:TDateTime; ?:?);
begin
 004B55B4    push        ebp
 004B55B5    mov         ebp,esp
 004B55B7    add         esp,0FFFFFFE8
 004B55BA    push        ebx
 004B55BB    push        esi
 004B55BC    push        edi
 004B55BD    xor         ebx,ebx
 004B55BF    mov         dword ptr [ebp-4],ebx
 004B55C2    mov         dword ptr [ebp-8],ecx
 004B55C5    mov         esi,edx
 004B55C7    mov         ebx,eax
 004B55C9    xor         eax,eax
 004B55CB    push        ebp
 004B55CC    push        4B566C
 004B55D1    push        dword ptr fs:[eax]
 004B55D4    mov         dword ptr fs:[eax],esp
 004B55D7    push        0
 004B55D9    lea         eax,[ebp-4]
 004B55DC    push        eax
 004B55DD    mov         ecx,dword ptr [ebp-8]
 004B55E0    mov         edx,esi
 004B55E2    mov         eax,ebx
 004B55E4    mov         ebx,dword ptr [eax]
 004B55E6    call        dword ptr [ebx+4];TCustomIniFile.ReadString
 004B55E9    mov         eax,dword ptr [ebp+8]
 004B55EC    mov         dword ptr [ebp-10],eax
 004B55EF    mov         eax,dword ptr [ebp+0C]
 004B55F2    mov         dword ptr [ebp-0C],eax
 004B55F5    cmp         dword ptr [ebp-4],0
>004B55F9    je          004B5656
 004B55FB    xor         eax,eax
 004B55FD    push        ebp
 004B55FE    push        4B5631
 004B5603    push        dword ptr fs:[eax]
 004B5606    mov         dword ptr fs:[eax],esp
 004B5609    mov         edx,dword ptr ds:[7C4B88];^gvar_007C7CC8:Pointer
 004B560F    mov         eax,dword ptr [ebp-4]
 004B5612    call        00422A58
 004B5617    fstp        qword ptr [ebp-18]
 004B561A    wait
 004B561B    mov         eax,dword ptr [ebp-18]
 004B561E    mov         dword ptr [ebp-10],eax
 004B5621    mov         eax,dword ptr [ebp-14]
 004B5624    mov         dword ptr [ebp-0C],eax
 004B5627    xor         eax,eax
 004B5629    pop         edx
 004B562A    pop         ecx
 004B562B    pop         ecx
 004B562C    mov         dword ptr fs:[eax],edx
>004B562F    jmp         004B5656
>004B5631    jmp         @HandleOnException
 004B5636    dd          2
 004B563A    dd          00418D28;EConvertError
 004B563E    dd          004B5651
 004B5642    dd          00000000
 004B5646    dd          004B564C
>004B564A    jmp         004B5651
 004B564C    call        @RaiseAgain
 004B5651    call        @DoneExcept
 004B5656    xor         eax,eax
 004B5658    pop         edx
 004B5659    pop         ecx
 004B565A    pop         ecx
 004B565B    mov         dword ptr fs:[eax],edx
 004B565E    push        4B5673
 004B5663    lea         eax,[ebp-4]
 004B5666    call        @UStrClr
 004B566B    ret
>004B566C    jmp         @HandleFinally
>004B5671    jmp         004B5663
 004B5673    fld         qword ptr [ebp-10]
 004B5676    pop         edi
 004B5677    pop         esi
 004B5678    pop         ebx
 004B5679    mov         esp,ebp
 004B567B    pop         ebp
 004B567C    ret         8
end;*}

//004B5680
{*procedure TCustomIniFile.ReadFloat(Section:string; Name:string; Default:Double; ?:?);
begin
 004B5680    push        ebp
 004B5681    mov         ebp,esp
 004B5683    add         esp,0FFFFFFF0
 004B5686    push        ebx
 004B5687    push        esi
 004B5688    push        edi
 004B5689    xor         ebx,ebx
 004B568B    mov         dword ptr [ebp-4],ebx
 004B568E    mov         dword ptr [ebp-8],ecx
 004B5691    mov         esi,edx
 004B5693    mov         ebx,eax
 004B5695    xor         eax,eax
 004B5697    push        ebp
 004B5698    push        4B572C
 004B569D    push        dword ptr fs:[eax]
 004B56A0    mov         dword ptr fs:[eax],esp
 004B56A3    push        0
 004B56A5    lea         eax,[ebp-4]
 004B56A8    push        eax
 004B56A9    mov         ecx,dword ptr [ebp-8]
 004B56AC    mov         edx,esi
 004B56AE    mov         eax,ebx
 004B56B0    mov         ebx,dword ptr [eax]
 004B56B2    call        dword ptr [ebx+4];TCustomIniFile.ReadString
 004B56B5    mov         eax,dword ptr [ebp+8]
 004B56B8    mov         dword ptr [ebp-10],eax
 004B56BB    mov         eax,dword ptr [ebp+0C]
 004B56BE    mov         dword ptr [ebp-0C],eax
 004B56C1    cmp         dword ptr [ebp-4],0
>004B56C5    je          004B5716
 004B56C7    xor         eax,eax
 004B56C9    push        ebp
 004B56CA    push        4B56F1
 004B56CF    push        dword ptr fs:[eax]
 004B56D2    mov         dword ptr fs:[eax],esp
 004B56D5    mov         edx,dword ptr ds:[7C4B88];^gvar_007C7CC8:Pointer
 004B56DB    mov         eax,dword ptr [ebp-4]
 004B56DE    call        00420B88
 004B56E3    fstp        qword ptr [ebp-10]
 004B56E6    wait
 004B56E7    xor         eax,eax
 004B56E9    pop         edx
 004B56EA    pop         ecx
 004B56EB    pop         ecx
 004B56EC    mov         dword ptr fs:[eax],edx
>004B56EF    jmp         004B5716
>004B56F1    jmp         @HandleOnException
 004B56F6    dd          2
 004B56FA    dd          00418D28;EConvertError
 004B56FE    dd          004B5711
 004B5702    dd          00000000
 004B5706    dd          004B570C
>004B570A    jmp         004B5711
 004B570C    call        @RaiseAgain
 004B5711    call        @DoneExcept
 004B5716    xor         eax,eax
 004B5718    pop         edx
 004B5719    pop         ecx
 004B571A    pop         ecx
 004B571B    mov         dword ptr fs:[eax],edx
 004B571E    push        4B5733
 004B5723    lea         eax,[ebp-4]
 004B5726    call        @UStrClr
 004B572B    ret
>004B572C    jmp         @HandleFinally
>004B5731    jmp         004B5723
 004B5733    fld         qword ptr [ebp-10]
 004B5736    pop         edi
 004B5737    pop         esi
 004B5738    pop         ebx
 004B5739    mov         esp,ebp
 004B573B    pop         ebp
 004B573C    ret         8
end;*}

//004B5740
{*procedure TCustomIniFile.ReadTime(Section:string; Name:string; Default:TDateTime; ?:?);
begin
 004B5740    push        ebp
 004B5741    mov         ebp,esp
 004B5743    add         esp,0FFFFFFE8
 004B5746    push        ebx
 004B5747    push        esi
 004B5748    push        edi
 004B5749    xor         ebx,ebx
 004B574B    mov         dword ptr [ebp-4],ebx
 004B574E    mov         dword ptr [ebp-8],ecx
 004B5751    mov         esi,edx
 004B5753    mov         ebx,eax
 004B5755    xor         eax,eax
 004B5757    push        ebp
 004B5758    push        4B57F8
 004B575D    push        dword ptr fs:[eax]
 004B5760    mov         dword ptr fs:[eax],esp
 004B5763    push        0
 004B5765    lea         eax,[ebp-4]
 004B5768    push        eax
 004B5769    mov         ecx,dword ptr [ebp-8]
 004B576C    mov         edx,esi
 004B576E    mov         eax,ebx
 004B5770    mov         ebx,dword ptr [eax]
 004B5772    call        dword ptr [ebx+4];TCustomIniFile.ReadString
 004B5775    mov         eax,dword ptr [ebp+8]
 004B5778    mov         dword ptr [ebp-10],eax
 004B577B    mov         eax,dword ptr [ebp+0C]
 004B577E    mov         dword ptr [ebp-0C],eax
 004B5781    cmp         dword ptr [ebp-4],0
>004B5785    je          004B57E2
 004B5787    xor         eax,eax
 004B5789    push        ebp
 004B578A    push        4B57BD
 004B578F    push        dword ptr fs:[eax]
 004B5792    mov         dword ptr fs:[eax],esp
 004B5795    mov         edx,dword ptr ds:[7C4B88];^gvar_007C7CC8:Pointer
 004B579B    mov         eax,dword ptr [ebp-4]
 004B579E    call        004229DC
 004B57A3    fstp        qword ptr [ebp-18]
 004B57A6    wait
 004B57A7    mov         eax,dword ptr [ebp-18]
 004B57AA    mov         dword ptr [ebp-10],eax
 004B57AD    mov         eax,dword ptr [ebp-14]
 004B57B0    mov         dword ptr [ebp-0C],eax
 004B57B3    xor         eax,eax
 004B57B5    pop         edx
 004B57B6    pop         ecx
 004B57B7    pop         ecx
 004B57B8    mov         dword ptr fs:[eax],edx
>004B57BB    jmp         004B57E2
>004B57BD    jmp         @HandleOnException
 004B57C2    dd          2
 004B57C6    dd          00418D28;EConvertError
 004B57CA    dd          004B57DD
 004B57CE    dd          00000000
 004B57D2    dd          004B57D8
>004B57D6    jmp         004B57DD
 004B57D8    call        @RaiseAgain
 004B57DD    call        @DoneExcept
 004B57E2    xor         eax,eax
 004B57E4    pop         edx
 004B57E5    pop         ecx
 004B57E6    pop         ecx
 004B57E7    mov         dword ptr fs:[eax],edx
 004B57EA    push        4B57FF
 004B57EF    lea         eax,[ebp-4]
 004B57F2    call        @UStrClr
 004B57F7    ret
>004B57F8    jmp         @HandleFinally
>004B57FD    jmp         004B57EF
 004B57FF    fld         qword ptr [ebp-10]
 004B5802    pop         edi
 004B5803    pop         esi
 004B5804    pop         ebx
 004B5805    mov         esp,ebp
 004B5807    pop         ebp
 004B5808    ret         8
end;*}

//004B580C
{*procedure TCustomIniFile.WriteDate(Section:string; Name:string; Value:TDateTime; ?:?);
begin
 004B580C    push        ebp
 004B580D    mov         ebp,esp
 004B580F    push        0
 004B5811    push        ebx
 004B5812    push        esi
 004B5813    push        edi
 004B5814    mov         edi,ecx
 004B5816    mov         esi,edx
 004B5818    mov         ebx,eax
 004B581A    xor         eax,eax
 004B581C    push        ebp
 004B581D    push        4B5860
 004B5822    push        dword ptr fs:[eax]
 004B5825    mov         dword ptr fs:[eax],esp
 004B5828    push        dword ptr [ebp+0C]
 004B582B    push        dword ptr [ebp+8]
 004B582E    lea         edx,[ebp-4]
 004B5831    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 004B5836    call        004220EC
 004B583B    mov         eax,dword ptr [ebp-4]
 004B583E    push        eax
 004B583F    mov         ecx,edi
 004B5841    mov         edx,esi
 004B5843    mov         eax,ebx
 004B5845    mov         ebx,dword ptr [eax]
 004B5847    call        dword ptr [ebx+8];TCustomIniFile.WriteString
 004B584A    xor         eax,eax
 004B584C    pop         edx
 004B584D    pop         ecx
 004B584E    pop         ecx
 004B584F    mov         dword ptr fs:[eax],edx
 004B5852    push        4B5867
 004B5857    lea         eax,[ebp-4]
 004B585A    call        @UStrClr
 004B585F    ret
>004B5860    jmp         @HandleFinally
>004B5865    jmp         004B5857
 004B5867    pop         edi
 004B5868    pop         esi
 004B5869    pop         ebx
 004B586A    pop         ecx
 004B586B    pop         ebp
 004B586C    ret         8
end;*}

//004B5870
{*procedure TCustomIniFile.WriteDateTime(Section:string; Name:string; Value:TDateTime; ?:?);
begin
 004B5870    push        ebp
 004B5871    mov         ebp,esp
 004B5873    push        0
 004B5875    push        ebx
 004B5876    push        esi
 004B5877    push        edi
 004B5878    mov         edi,ecx
 004B587A    mov         esi,edx
 004B587C    mov         ebx,eax
 004B587E    xor         eax,eax
 004B5880    push        ebp
 004B5881    push        4B58C4
 004B5886    push        dword ptr fs:[eax]
 004B5889    mov         dword ptr fs:[eax],esp
 004B588C    push        dword ptr [ebp+0C]
 004B588F    push        dword ptr [ebp+8]
 004B5892    lea         edx,[ebp-4]
 004B5895    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 004B589A    call        0042211C
 004B589F    mov         eax,dword ptr [ebp-4]
 004B58A2    push        eax
 004B58A3    mov         ecx,edi
 004B58A5    mov         edx,esi
 004B58A7    mov         eax,ebx
 004B58A9    mov         ebx,dword ptr [eax]
 004B58AB    call        dword ptr [ebx+8];TCustomIniFile.WriteString
 004B58AE    xor         eax,eax
 004B58B0    pop         edx
 004B58B1    pop         ecx
 004B58B2    pop         ecx
 004B58B3    mov         dword ptr fs:[eax],edx
 004B58B6    push        4B58CB
 004B58BB    lea         eax,[ebp-4]
 004B58BE    call        @UStrClr
 004B58C3    ret
>004B58C4    jmp         @HandleFinally
>004B58C9    jmp         004B58BB
 004B58CB    pop         edi
 004B58CC    pop         esi
 004B58CD    pop         ebx
 004B58CE    pop         ecx
 004B58CF    pop         ebp
 004B58D0    ret         8
end;*}

//004B58D4
procedure TCustomIniFile.WriteFloat(Section:string; Name:string; Value:Double);
begin
{*
 004B58D4    push        ebp
 004B58D5    mov         ebp,esp
 004B58D7    push        0
 004B58D9    push        ebx
 004B58DA    push        esi
 004B58DB    push        edi
 004B58DC    mov         edi,ecx
 004B58DE    mov         esi,edx
 004B58E0    mov         ebx,eax
 004B58E2    xor         eax,eax
 004B58E4    push        ebp
 004B58E5    push        4B592C
 004B58EA    push        dword ptr fs:[eax]
 004B58ED    mov         dword ptr fs:[eax],esp
 004B58F0    fld         qword ptr [ebp+8]
 004B58F3    add         esp,0FFFFFFF4
 004B58F6    fstp        tbyte ptr [esp]
 004B58F9    wait
 004B58FA    lea         edx,[ebp-4]
 004B58FD    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 004B5902    call        00420B20
 004B5907    mov         eax,dword ptr [ebp-4]
 004B590A    push        eax
 004B590B    mov         ecx,edi
 004B590D    mov         edx,esi
 004B590F    mov         eax,ebx
 004B5911    mov         ebx,dword ptr [eax]
 004B5913    call        dword ptr [ebx+8];TCustomIniFile.WriteString
 004B5916    xor         eax,eax
 004B5918    pop         edx
 004B5919    pop         ecx
 004B591A    pop         ecx
 004B591B    mov         dword ptr fs:[eax],edx
 004B591E    push        4B5933
 004B5923    lea         eax,[ebp-4]
 004B5926    call        @UStrClr
 004B592B    ret
>004B592C    jmp         @HandleFinally
>004B5931    jmp         004B5923
 004B5933    pop         edi
 004B5934    pop         esi
 004B5935    pop         ebx
 004B5936    pop         ecx
 004B5937    pop         ebp
 004B5938    ret         8
*}
end;

//004B593C
{*procedure TCustomIniFile.WriteTime(Section:string; Name:string; Value:TDateTime; ?:?);
begin
 004B593C    push        ebp
 004B593D    mov         ebp,esp
 004B593F    push        0
 004B5941    push        ebx
 004B5942    push        esi
 004B5943    push        edi
 004B5944    mov         edi,ecx
 004B5946    mov         esi,edx
 004B5948    mov         ebx,eax
 004B594A    xor         eax,eax
 004B594C    push        ebp
 004B594D    push        4B5990
 004B5952    push        dword ptr fs:[eax]
 004B5955    mov         dword ptr fs:[eax],esp
 004B5958    push        dword ptr [ebp+0C]
 004B595B    push        dword ptr [ebp+8]
 004B595E    lea         edx,[ebp-4]
 004B5961    mov         eax,[007C4B88];^gvar_007C7CC8:Pointer
 004B5966    call        00422104
 004B596B    mov         eax,dword ptr [ebp-4]
 004B596E    push        eax
 004B596F    mov         ecx,edi
 004B5971    mov         edx,esi
 004B5973    mov         eax,ebx
 004B5975    mov         ebx,dword ptr [eax]
 004B5977    call        dword ptr [ebx+8];TCustomIniFile.WriteString
 004B597A    xor         eax,eax
 004B597C    pop         edx
 004B597D    pop         ecx
 004B597E    pop         ecx
 004B597F    mov         dword ptr fs:[eax],edx
 004B5982    push        4B5997
 004B5987    lea         eax,[ebp-4]
 004B598A    call        @UStrClr
 004B598F    ret
>004B5990    jmp         @HandleFinally
>004B5995    jmp         004B5987
 004B5997    pop         edi
 004B5998    pop         esi
 004B5999    pop         ebx
 004B599A    pop         ecx
 004B599B    pop         ebp
 004B599C    ret         8
end;*}

//004B59C0
procedure TCustomIniFile.WriteBool(Section:string; Ident:string; Value:Boolean);
begin
{*
 004B59C0    push        ebp
 004B59C1    mov         ebp,esp
 004B59C3    push        ebx
 004B59C4    movzx       ebx,byte ptr [ebp+8]
 004B59C8    mov         ebx,dword ptr [ebx*4+7A07A0];^'0'
 004B59CF    push        ebx
 004B59D0    mov         ebx,dword ptr [eax]
 004B59D2    call        dword ptr [ebx+8]
 004B59D5    pop         ebx
 004B59D6    pop         ebp
 004B59D7    ret         4
*}
end;

//004B59DC
function TCustomIniFile.ValueExists(Section:string; Ident:string):Boolean;
begin
{*
 004B59DC    push        ebp
 004B59DD    mov         ebp,esp
 004B59DF    add         esp,0FFFFFFF4
 004B59E2    push        ebx
 004B59E3    push        esi
 004B59E4    mov         dword ptr [ebp-4],ecx
 004B59E7    mov         esi,edx
 004B59E9    mov         ebx,eax
 004B59EB    mov         dl,1
 004B59ED    mov         eax,[0046F9A0];TStringList
 004B59F2    call        TStringList.Create
 004B59F7    mov         dword ptr [ebp-0C],eax
 004B59FA    xor         eax,eax
 004B59FC    push        ebp
 004B59FD    push        4B5A3A
 004B5A02    push        dword ptr fs:[eax]
 004B5A05    mov         dword ptr fs:[eax],esp
 004B5A08    mov         ecx,dword ptr [ebp-0C]
 004B5A0B    mov         edx,esi
 004B5A0D    mov         eax,ebx
 004B5A0F    mov         ebx,dword ptr [eax]
 004B5A11    call        dword ptr [ebx+44]
 004B5A14    mov         edx,dword ptr [ebp-4]
 004B5A17    mov         eax,dword ptr [ebp-0C]
 004B5A1A    mov         ecx,dword ptr [eax]
 004B5A1C    call        dword ptr [ecx+58]
 004B5A1F    inc         eax
 004B5A20    setg        byte ptr [ebp-5]
 004B5A24    xor         eax,eax
 004B5A26    pop         edx
 004B5A27    pop         ecx
 004B5A28    pop         ecx
 004B5A29    mov         dword ptr fs:[eax],edx
 004B5A2C    push        4B5A41
 004B5A31    mov         eax,dword ptr [ebp-0C]
 004B5A34    call        TObject.Free
 004B5A39    ret
>004B5A3A    jmp         @HandleFinally
>004B5A3F    jmp         004B5A31
 004B5A41    movzx       eax,byte ptr [ebp-5]
 004B5A45    pop         esi
 004B5A46    pop         ebx
 004B5A47    mov         esp,ebp
 004B5A49    pop         ebp
 004B5A4A    ret
*}
end;

//004B5A4C
function TCustomIniFile.ReadBinaryStream(Section:string; Name:string; Value:TStream):Integer;
begin
{*
 004B5A4C    push        ebp
 004B5A4D    mov         ebp,esp
 004B5A4F    add         esp,0FFFFFFE8
 004B5A52    push        ebx
 004B5A53    push        esi
 004B5A54    push        edi
 004B5A55    xor         ebx,ebx
 004B5A57    mov         dword ptr [ebp-18],ebx
 004B5A5A    mov         dword ptr [ebp-4],ebx
 004B5A5D    mov         dword ptr [ebp-8],ebx
 004B5A60    mov         dword ptr [ebp-0C],ecx
 004B5A63    mov         esi,edx
 004B5A65    mov         ebx,eax
 004B5A67    xor         eax,eax
 004B5A69    push        ebp
 004B5A6A    push        4B5BB3
 004B5A6F    push        dword ptr fs:[eax]
 004B5A72    mov         dword ptr fs:[eax],esp
 004B5A75    push        0
 004B5A77    lea         eax,[ebp-4]
 004B5A7A    push        eax
 004B5A7B    mov         ecx,dword ptr [ebp-0C]
 004B5A7E    mov         edx,esi
 004B5A80    mov         eax,ebx
 004B5A82    mov         ebx,dword ptr [eax]
 004B5A84    call        dword ptr [ebx+4]
 004B5A87    cmp         dword ptr [ebp-4],0
>004B5A8B    je          004B5B7C
 004B5A91    mov         eax,dword ptr [ebp+8]
 004B5A94    mov         edx,dword ptr ds:[472CE4];TMemoryStream
 004B5A9A    call        @IsClass
 004B5A9F    test        al,al
>004B5AA1    je          004B5AAB
 004B5AA3    mov         eax,dword ptr [ebp+8]
 004B5AA6    mov         dword ptr [ebp-14],eax
>004B5AA9    jmp         004B5ABA
 004B5AAB    mov         dl,1
 004B5AAD    mov         eax,[00472CE4];TMemoryStream
 004B5AB2    call        TObject.Create
 004B5AB7    mov         dword ptr [ebp-14],eax
 004B5ABA    xor         edx,edx
 004B5ABC    push        ebp
 004B5ABD    push        4B5B75
 004B5AC2    push        dword ptr fs:[edx]
 004B5AC5    mov         dword ptr fs:[edx],esp
 004B5AC8    mov         eax,dword ptr [ebp-4]
 004B5ACB    test        eax,eax
>004B5ACD    je          004B5AD4
 004B5ACF    sub         eax,4
 004B5AD2    mov         eax,dword ptr [eax]
 004B5AD4    mov         ebx,eax
 004B5AD6    sar         ebx,1
>004B5AD8    jns         004B5ADD
 004B5ADA    adc         ebx,0
 004B5ADD    push        ebx
 004B5ADE    lea         eax,[ebp-8]
 004B5AE1    mov         ecx,1
 004B5AE6    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004B5AEC    call        @DynArraySetLength
 004B5AF1    add         esp,4
 004B5AF4    mov         eax,dword ptr [ebp-14]
 004B5AF7    call        TStream.GetPosition
 004B5AFC    mov         esi,eax
 004B5AFE    push        0
 004B5B00    push        ebx
 004B5B01    lea         edx,[ebp-18]
 004B5B04    mov         eax,dword ptr [ebp-4]
 004B5B07    call        BytesOf
 004B5B0C    mov         eax,dword ptr [ebp-18]
 004B5B0F    lea         ecx,[ebp-8]
 004B5B12    xor         edx,edx
 004B5B14    call        HexToBin
 004B5B19    mov         edx,dword ptr [ebp-8]
 004B5B1C    mov         ecx,ebx
 004B5B1E    mov         eax,dword ptr [ebp-14]
 004B5B21    mov         edi,dword ptr [eax]
 004B5B23    call        dword ptr [edi+10]
 004B5B26    mov         eax,esi
 004B5B28    cdq
 004B5B29    push        edx
 004B5B2A    push        eax
 004B5B2B    mov         eax,dword ptr [ebp-14]
 004B5B2E    call        TStream.SetPosition
 004B5B33    mov         eax,dword ptr [ebp+8]
 004B5B36    cmp         eax,dword ptr [ebp-14]
>004B5B39    je          004B5B4B
 004B5B3B    mov         eax,ebx
 004B5B3D    cdq
 004B5B3E    push        edx
 004B5B3F    push        eax
 004B5B40    mov         edx,dword ptr [ebp-14]
 004B5B43    mov         eax,dword ptr [ebp+8]
 004B5B46    call        TStream.CopyFrom
 004B5B4B    mov         eax,dword ptr [ebp-14]
 004B5B4E    mov         edx,dword ptr [eax]
 004B5B50    call        dword ptr [edx]
 004B5B52    sub         eax,esi
 004B5B54    mov         dword ptr [ebp-10],eax
 004B5B57    xor         eax,eax
 004B5B59    pop         edx
 004B5B5A    pop         ecx
 004B5B5B    pop         ecx
 004B5B5C    mov         dword ptr fs:[eax],edx
 004B5B5F    push        4B5B81
 004B5B64    mov         eax,dword ptr [ebp+8]
 004B5B67    cmp         eax,dword ptr [ebp-14]
>004B5B6A    je          004B5B74
 004B5B6C    mov         eax,dword ptr [ebp-14]
 004B5B6F    call        TObject.Free
 004B5B74    ret
>004B5B75    jmp         @HandleFinally
>004B5B7A    jmp         004B5B64
 004B5B7C    xor         eax,eax
 004B5B7E    mov         dword ptr [ebp-10],eax
 004B5B81    xor         eax,eax
 004B5B83    pop         edx
 004B5B84    pop         ecx
 004B5B85    pop         ecx
 004B5B86    mov         dword ptr fs:[eax],edx
 004B5B89    push        4B5BBA
 004B5B8E    lea         eax,[ebp-18]
 004B5B91    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004B5B97    call        @DynArrayClear
 004B5B9C    lea         eax,[ebp-8]
 004B5B9F    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004B5BA5    call        @DynArrayClear
 004B5BAA    lea         eax,[ebp-4]
 004B5BAD    call        @UStrClr
 004B5BB2    ret
>004B5BB3    jmp         @HandleFinally
>004B5BB8    jmp         004B5B8E
 004B5BBA    mov         eax,dword ptr [ebp-10]
 004B5BBD    pop         edi
 004B5BBE    pop         esi
 004B5BBF    pop         ebx
 004B5BC0    mov         esp,ebp
 004B5BC2    pop         ebp
 004B5BC3    ret         4
*}
end;

//004B5BC8
procedure TCustomIniFile.WriteBinaryStream(Section:string; Name:string; Value:TStream);
begin
{*
 004B5BC8    push        ebp
 004B5BC9    mov         ebp,esp
 004B5BCB    add         esp,0FFFFFFE8
 004B5BCE    push        ebx
 004B5BCF    xor         ebx,ebx
 004B5BD1    mov         dword ptr [ebp-4],ebx
 004B5BD4    mov         dword ptr [ebp-8],ebx
 004B5BD7    mov         dword ptr [ebp-14],ecx
 004B5BDA    mov         dword ptr [ebp-10],edx
 004B5BDD    mov         dword ptr [ebp-0C],eax
 004B5BE0    xor         eax,eax
 004B5BE2    push        ebp
 004B5BE3    push        4B5D5C
 004B5BE8    push        dword ptr fs:[eax]
 004B5BEB    mov         dword ptr fs:[eax],esp
 004B5BEE    push        0
 004B5BF0    push        2
 004B5BF2    mov         eax,dword ptr [ebp+8]
 004B5BF5    mov         edx,dword ptr [eax]
 004B5BF7    call        dword ptr [edx]
 004B5BF9    push        edx
 004B5BFA    push        eax
 004B5BFB    mov         eax,dword ptr [ebp+8]
 004B5BFE    call        TStream.GetPosition
 004B5C03    sub         dword ptr [esp],eax
 004B5C06    sbb         dword ptr [esp+4],edx
 004B5C0A    pop         eax
 004B5C0B    pop         edx
 004B5C0C    call        @_llmul
 004B5C11    mov         edx,eax
 004B5C13    lea         eax,[ebp-4]
 004B5C16    call        @UStrSetLength
 004B5C1B    mov         eax,dword ptr [ebp-4]
 004B5C1E    test        eax,eax
>004B5C20    je          004B5C27
 004B5C22    sub         eax,4
 004B5C25    mov         eax,dword ptr [eax]
 004B5C27    test        eax,eax
>004B5C29    jle         004B5D26
 004B5C2F    mov         eax,dword ptr [ebp+8]
 004B5C32    mov         edx,dword ptr ds:[472CE4];TMemoryStream
 004B5C38    call        @IsClass
 004B5C3D    test        al,al
>004B5C3F    je          004B5C49
 004B5C41    mov         eax,dword ptr [ebp+8]
 004B5C44    mov         dword ptr [ebp-18],eax
>004B5C47    jmp         004B5C58
 004B5C49    mov         dl,1
 004B5C4B    mov         eax,[00472CE4];TMemoryStream
 004B5C50    call        TObject.Create
 004B5C55    mov         dword ptr [ebp-18],eax
 004B5C58    xor         eax,eax
 004B5C5A    push        ebp
 004B5C5B    push        4B5D1F
 004B5C60    push        dword ptr fs:[eax]
 004B5C63    mov         dword ptr fs:[eax],esp
 004B5C66    mov         eax,dword ptr [ebp-18]
 004B5C69    cmp         eax,dword ptr [ebp+8]
>004B5C6C    je          004B5CA1
 004B5C6E    mov         eax,dword ptr [ebp+8]
 004B5C71    mov         edx,dword ptr [eax]
 004B5C73    call        dword ptr [edx]
 004B5C75    push        edx
 004B5C76    push        eax
 004B5C77    mov         eax,dword ptr [ebp+8]
 004B5C7A    call        TStream.GetPosition
 004B5C7F    sub         dword ptr [esp],eax
 004B5C82    sbb         dword ptr [esp+4],edx
 004B5C86    pop         eax
 004B5C87    pop         edx
 004B5C88    push        edx
 004B5C89    push        eax
 004B5C8A    mov         edx,dword ptr [ebp+8]
 004B5C8D    mov         eax,dword ptr [ebp-18]
 004B5C90    call        TStream.CopyFrom
 004B5C95    push        0
 004B5C97    push        0
 004B5C99    mov         eax,dword ptr [ebp-18]
 004B5C9C    call        TStream.SetPosition
 004B5CA1    push        0
 004B5CA3    push        2
 004B5CA5    mov         eax,dword ptr [ebp-18]
 004B5CA8    mov         edx,dword ptr [eax]
 004B5CAA    call        dword ptr [edx]
 004B5CAC    call        @_llmul
 004B5CB1    push        eax
 004B5CB2    lea         eax,[ebp-8]
 004B5CB5    mov         ecx,1
 004B5CBA    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004B5CC0    call        @DynArraySetLength
 004B5CC5    add         esp,4
 004B5CC8    push        0
 004B5CCA    mov         eax,dword ptr [ebp-18]
 004B5CCD    mov         edx,dword ptr [eax]
 004B5CCF    call        dword ptr [edx]
 004B5CD1    mov         ebx,eax
 004B5CD3    mov         eax,dword ptr [ebp-18]
 004B5CD6    call        TStream.GetPosition
 004B5CDB    sub         ebx,eax
 004B5CDD    push        ebx
 004B5CDE    mov         eax,dword ptr [ebp-18]
 004B5CE1    call        TStream.GetPosition
 004B5CE6    mov         edx,eax
 004B5CE8    lea         ecx,[ebp-8]
 004B5CEB    mov         eax,dword ptr [ebp-18]
 004B5CEE    mov         eax,dword ptr [eax+4]
 004B5CF1    call        BinToHex
 004B5CF6    lea         edx,[ebp-4]
 004B5CF9    mov         eax,dword ptr [ebp-8]
 004B5CFC    call        StringOf
 004B5D01    xor         eax,eax
 004B5D03    pop         edx
 004B5D04    pop         ecx
 004B5D05    pop         ecx
 004B5D06    mov         dword ptr fs:[eax],edx
 004B5D09    push        4B5D26
 004B5D0E    mov         eax,dword ptr [ebp+8]
 004B5D11    cmp         eax,dword ptr [ebp-18]
>004B5D14    je          004B5D1E
 004B5D16    mov         eax,dword ptr [ebp-18]
 004B5D19    call        TObject.Free
 004B5D1E    ret
>004B5D1F    jmp         @HandleFinally
>004B5D24    jmp         004B5D0E
 004B5D26    mov         eax,dword ptr [ebp-4]
 004B5D29    push        eax
 004B5D2A    mov         ecx,dword ptr [ebp-14]
 004B5D2D    mov         edx,dword ptr [ebp-10]
 004B5D30    mov         eax,dword ptr [ebp-0C]
 004B5D33    mov         ebx,dword ptr [eax]
 004B5D35    call        dword ptr [ebx+8]
 004B5D38    xor         eax,eax
 004B5D3A    pop         edx
 004B5D3B    pop         ecx
 004B5D3C    pop         ecx
 004B5D3D    mov         dword ptr fs:[eax],edx
 004B5D40    push        4B5D63
 004B5D45    lea         eax,[ebp-8]
 004B5D48    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004B5D4E    call        @DynArrayClear
 004B5D53    lea         eax,[ebp-4]
 004B5D56    call        @UStrClr
 004B5D5B    ret
>004B5D5C    jmp         @HandleFinally
>004B5D61    jmp         004B5D45
 004B5D63    pop         ebx
 004B5D64    mov         esp,ebp
 004B5D66    pop         ebp
 004B5D67    ret         4
*}
end;

//004B5D6C
{*procedure sub_004B5D6C(?:?; ?:?; ?:?; ?:?);
begin
 004B5D6C    push        ebp
 004B5D6D    mov         ebp,esp
 004B5D6F    add         esp,0FFFFFFD4
 004B5D72    push        ebx
 004B5D73    push        esi
 004B5D74    push        edi
 004B5D75    xor         ebx,ebx
 004B5D77    mov         dword ptr [ebp-2C],ebx
 004B5D7A    mov         dword ptr [ebp-24],ebx
 004B5D7D    mov         dword ptr [ebp-4],ebx
 004B5D80    mov         dword ptr [ebp-8],ebx
 004B5D83    mov         dword ptr [ebp-10],ecx
 004B5D86    mov         dword ptr [ebp-0C],edx
 004B5D89    mov         ebx,eax
 004B5D8B    xor         eax,eax
 004B5D8D    push        ebp
 004B5D8E    push        4B5F96
 004B5D93    push        dword ptr fs:[eax]
 004B5D96    mov         dword ptr fs:[eax],esp
 004B5D99    mov         dl,1
 004B5D9B    mov         eax,[0046F9A0];TStringList
 004B5DA0    call        TStringList.Create;TStringList.Create
 004B5DA5    mov         dword ptr [ebp-1C],eax
 004B5DA8    xor         edx,edx
 004B5DAA    push        ebp
 004B5DAB    push        4B5F64
 004B5DB0    push        dword ptr fs:[edx]
 004B5DB3    mov         dword ptr fs:[edx],esp
 004B5DB6    mov         edx,dword ptr [ebp-1C]
 004B5DB9    mov         eax,ebx
 004B5DBB    mov         ecx,dword ptr [eax]
 004B5DBD    call        dword ptr [ecx+48];TCustomIniFile.ReadSections
 004B5DC0    mov         eax,dword ptr [ebp-0C]
 004B5DC3    test        eax,eax
>004B5DC5    je          004B5DCC
 004B5DC7    sub         eax,4
 004B5DCA    mov         eax,dword ptr [eax]
 004B5DCC    mov         ebx,eax
 004B5DCE    test        ebx,ebx
 004B5DD0    setg        al
 004B5DD3    and         eax,7F
 004B5DD6    add         eax,ebx
 004B5DD8    mov         dword ptr [ebp-14],eax
 004B5DDB    mov         eax,dword ptr [ebp-10]
 004B5DDE    call        TStrings.BeginUpdate
 004B5DE3    xor         edx,edx
 004B5DE5    push        ebp
 004B5DE6    push        4B5F47
 004B5DEB    push        dword ptr fs:[edx]
 004B5DEE    mov         dword ptr fs:[edx],esp
 004B5DF1    mov         eax,dword ptr [ebp-1C]
 004B5DF4    mov         edx,dword ptr [eax]
 004B5DF6    call        dword ptr [edx+14];TStringList.GetCount
 004B5DF9    dec         eax
 004B5DFA    test        eax,eax
>004B5DFC    jl          004B5F31
 004B5E02    inc         eax
 004B5E03    mov         dword ptr [ebp-20],eax
 004B5E06    mov         dword ptr [ebp-18],0
 004B5E0D    lea         ecx,[ebp-4]
 004B5E10    mov         edx,dword ptr [ebp-18]
 004B5E13    mov         eax,dword ptr [ebp-1C]
 004B5E16    mov         esi,dword ptr [eax]
 004B5E18    call        dword ptr [esi+0C];TStringList.Get
 004B5E1B    mov         eax,dword ptr [ebp-4]
 004B5E1E    test        eax,eax
>004B5E20    je          004B5E27
 004B5E22    sub         eax,4
 004B5E25    mov         eax,dword ptr [eax]
 004B5E27    mov         esi,eax
 004B5E29    test        ebx,ebx
>004B5E2B    jne         004B5E31
 004B5E2D    mov         al,1
>004B5E2F    jmp         004B5E7E
 004B5E31    cmp         byte ptr [ebp+0C],0
>004B5E35    je          004B5E7C
 004B5E37    cmp         ebx,esi
>004B5E39    jge         004B5E7C
 004B5E3B    lea         eax,[ebp-24]
 004B5E3E    push        eax
 004B5E3F    lea         eax,[ebp-4]
 004B5E42    mov         ecx,ebx
 004B5E44    xor         edx,edx
 004B5E46    call        00426870
 004B5E4B    mov         edi,dword ptr [ebp-24]
 004B5E4E    mov         eax,dword ptr [ebp-0C]
 004B5E51    cmp         eax,edi
>004B5E53    jne         004B5E59
 004B5E55    mov         al,1
>004B5E57    jmp         004B5E7E
 004B5E59    cmp         dword ptr [ebp-0C],0
>004B5E5D    je          004B5E63
 004B5E5F    test        edi,edi
>004B5E61    jne         004B5E67
 004B5E63    xor         eax,eax
>004B5E65    jmp         004B5E7E
 004B5E67    mov         dword ptr [ebp-28],edi
 004B5E6A    mov         edx,dword ptr [ebp-28]
 004B5E6D    mov         eax,dword ptr [ebp-0C]
 004B5E70    call        CompareText
 004B5E75    test        eax,eax
 004B5E77    sete        al
>004B5E7A    jmp         004B5E7E
 004B5E7C    xor         eax,eax
 004B5E7E    test        al,al
>004B5E80    je          004B5E86
 004B5E82    mov         al,1
>004B5E84    jmp         004B5ED3
 004B5E86    cmp         byte ptr [ebp+0C],0
>004B5E8A    jne         004B5ED1
 004B5E8C    cmp         ebx,esi
>004B5E8E    jg          004B5ED1
 004B5E90    lea         eax,[ebp-2C]
 004B5E93    push        eax
 004B5E94    lea         eax,[ebp-4]
 004B5E97    mov         ecx,ebx
 004B5E99    xor         edx,edx
 004B5E9B    call        00426870
 004B5EA0    mov         edi,dword ptr [ebp-2C]
 004B5EA3    mov         eax,dword ptr [ebp-0C]
 004B5EA6    cmp         eax,edi
>004B5EA8    jne         004B5EAE
 004B5EAA    mov         al,1
>004B5EAC    jmp         004B5ED3
 004B5EAE    cmp         dword ptr [ebp-0C],0
>004B5EB2    je          004B5EB8
 004B5EB4    test        edi,edi
>004B5EB6    jne         004B5EBC
 004B5EB8    xor         eax,eax
>004B5EBA    jmp         004B5ED3
 004B5EBC    mov         dword ptr [ebp-28],edi
 004B5EBF    mov         edx,dword ptr [ebp-28]
 004B5EC2    mov         eax,dword ptr [ebp-0C]
 004B5EC5    call        CompareText
 004B5ECA    test        eax,eax
 004B5ECC    sete        al
>004B5ECF    jmp         004B5ED3
 004B5ED1    xor         eax,eax
 004B5ED3    test        al,al
>004B5ED5    je          004B5F25
 004B5ED7    lea         eax,[ebp-8]
 004B5EDA    push        eax
 004B5EDB    lea         ecx,[esi+1]
 004B5EDE    sub         ecx,dword ptr [ebp-14]
 004B5EE1    lea         eax,[ebp-4]
 004B5EE4    mov         edx,dword ptr [ebp-14]
 004B5EE7    call        00426870
 004B5EEC    cmp         byte ptr [ebp+8],0
>004B5EF0    jne         004B5F09
 004B5EF2    mov         ecx,1
 004B5EF7    mov         edx,dword ptr [ebp-8]
 004B5EFA    mov         eax,[007A079C];^'\'
 004B5EFF    call        Pos
 004B5F04    dec         eax
 004B5F05    test        eax,eax
>004B5F07    jge         004B5F25
 004B5F09    cmp         byte ptr [ebp+0C],0
>004B5F0D    je          004B5F1A
 004B5F0F    lea         eax,[ebp-4]
 004B5F12    mov         edx,dword ptr [ebp-8]
 004B5F15    call        @UStrLAsg
 004B5F1A    mov         edx,dword ptr [ebp-4]
 004B5F1D    mov         eax,dword ptr [ebp-10]
 004B5F20    mov         ecx,dword ptr [eax]
 004B5F22    call        dword ptr [ecx+3C]
 004B5F25    inc         dword ptr [ebp-18]
 004B5F28    dec         dword ptr [ebp-20]
>004B5F2B    jne         004B5E0D
 004B5F31    xor         eax,eax
 004B5F33    pop         edx
 004B5F34    pop         ecx
 004B5F35    pop         ecx
 004B5F36    mov         dword ptr fs:[eax],edx
 004B5F39    push        4B5F4E
 004B5F3E    mov         eax,dword ptr [ebp-10]
 004B5F41    call        TStrings.EndUpdate
 004B5F46    ret
>004B5F47    jmp         @HandleFinally
>004B5F4C    jmp         004B5F3E
 004B5F4E    xor         eax,eax
 004B5F50    pop         edx
 004B5F51    pop         ecx
 004B5F52    pop         ecx
 004B5F53    mov         dword ptr fs:[eax],edx
 004B5F56    push        4B5F6B
 004B5F5B    mov         eax,dword ptr [ebp-1C]
 004B5F5E    call        TObject.Free
 004B5F63    ret
>004B5F64    jmp         @HandleFinally
>004B5F69    jmp         004B5F5B
 004B5F6B    xor         eax,eax
 004B5F6D    pop         edx
 004B5F6E    pop         ecx
 004B5F6F    pop         ecx
 004B5F70    mov         dword ptr fs:[eax],edx
 004B5F73    push        4B5F9D
 004B5F78    lea         eax,[ebp-2C]
 004B5F7B    call        @UStrClr
 004B5F80    lea         eax,[ebp-24]
 004B5F83    call        @UStrClr
 004B5F88    lea         eax,[ebp-8]
 004B5F8B    mov         edx,2
 004B5F90    call        @UStrArrayClr
 004B5F95    ret
>004B5F96    jmp         @HandleFinally
>004B5F9B    jmp         004B5F78
 004B5F9D    pop         edi
 004B5F9E    pop         esi
 004B5F9F    pop         ebx
 004B5FA0    mov         esp,ebp
 004B5FA2    pop         ebp
 004B5FA3    ret         8
end;*}

//004B5FA8
procedure TCustomIniFile.ReadSections(Section:string; Strings:TStrings);
begin
{*
 004B5FA8    push        ebx
 004B5FA9    push        0
 004B5FAB    push        1
 004B5FAD    mov         ebx,dword ptr [eax]
 004B5FAF    call        dword ptr [ebx]
 004B5FB1    pop         ebx
 004B5FB2    ret
*}
end;

//004B5FB4
procedure TCustomIniFile.ReadSubSections(Section:string; Strings:TStrings; Recurse:Boolean);
begin
{*
 004B5FB4    push        ebp
 004B5FB5    mov         ebp,esp
 004B5FB7    push        ebx
 004B5FB8    push        1
 004B5FBA    movzx       ebx,byte ptr [ebp+8]
 004B5FBE    push        ebx
 004B5FBF    mov         ebx,dword ptr [eax]
 004B5FC1    call        dword ptr [ebx]
 004B5FC3    pop         ebx
 004B5FC4    pop         ebp
 004B5FC5    ret         4
*}
end;

//004B5FC8
destructor TIniFile.Destroy();
begin
{*
 004B5FC8    push        ebx
 004B5FC9    push        esi
 004B5FCA    call        @BeforeDestruction
 004B5FCF    mov         ebx,edx
 004B5FD1    mov         esi,eax
 004B5FD3    mov         eax,esi
 004B5FD5    mov         edx,dword ptr [eax]
 004B5FD7    call        dword ptr [edx+60]
 004B5FDA    mov         dl,0FC
 004B5FDC    and         dl,bl
 004B5FDE    mov         eax,esi
 004B5FE0    call        TObject.Destroy
 004B5FE5    test        bl,bl
>004B5FE7    jle         004B5FF0
 004B5FE9    mov         eax,esi
 004B5FEB    call        @ClassDestroy
 004B5FF0    pop         esi
 004B5FF1    pop         ebx
 004B5FF2    ret
*}
end;

//004B5FF4
function TIniFile.ReadString(Section:string; Ident:string; Default:string):string;
begin
{*
 004B5FF4    push        ebp
 004B5FF5    mov         ebp,esp
 004B5FF7    add         esp,0FFFFF004
 004B5FFD    push        eax
 004B5FFE    push        ebx
 004B5FFF    push        esi
 004B6000    push        edi
 004B6001    mov         edi,ecx
 004B6003    mov         esi,edx
 004B6005    mov         ebx,eax
 004B6007    mov         eax,dword ptr [ebx+4]
 004B600A    call        @UStrToPWChar
 004B600F    push        eax
 004B6010    push        800
 004B6015    lea         eax,[ebp-1000]
 004B601B    push        eax
 004B601C    mov         eax,dword ptr [ebp+0C]
 004B601F    call        @UStrToPWChar
 004B6024    push        eax
 004B6025    mov         eax,edi
 004B6027    call        @UStrToPWChar
 004B602C    push        eax
 004B602D    mov         eax,esi
 004B602F    call        @UStrToPWChar
 004B6034    push        eax
 004B6035    call        kernel32.GetPrivateProfileStringW
 004B603A    mov         ecx,eax
 004B603C    lea         edx,[ebp-1000]
 004B6042    mov         eax,dword ptr [ebp+8]
 004B6045    call        @UStrFromPWCharLen
 004B604A    pop         edi
 004B604B    pop         esi
 004B604C    pop         ebx
 004B604D    mov         esp,ebp
 004B604F    pop         ebp
 004B6050    ret         8
*}
end;

//004B6054
procedure TIniFile.WriteString(Section:string; Ident:string; Value:string);
begin
{*
 004B6054    push        ebp
 004B6055    mov         ebp,esp
 004B6057    add         esp,0FFFFFFF8
 004B605A    push        ebx
 004B605B    push        esi
 004B605C    push        edi
 004B605D    mov         edi,ecx
 004B605F    mov         esi,edx
 004B6061    mov         ebx,eax
 004B6063    mov         eax,dword ptr [ebx+4]
 004B6066    call        @UStrToPWChar
 004B606B    push        eax
 004B606C    mov         eax,dword ptr [ebp+8]
 004B606F    call        @UStrToPWChar
 004B6074    push        eax
 004B6075    mov         eax,edi
 004B6077    call        @UStrToPWChar
 004B607C    push        eax
 004B607D    mov         eax,esi
 004B607F    call        @UStrToPWChar
 004B6084    push        eax
 004B6085    call        kernel32.WritePrivateProfileStringW
 004B608A    test        eax,eax
>004B608C    jne         004B60B5
 004B608E    mov         eax,dword ptr [ebx+4]
 004B6091    mov         dword ptr [ebp-8],eax
 004B6094    mov         byte ptr [ebp-4],11
 004B6098    lea         eax,[ebp-8]
 004B609B    push        eax
 004B609C    push        0
 004B609E    mov         ecx,dword ptr ds:[7C4BE8];^SResString125:TResStringRec
 004B60A4    mov         dl,1
 004B60A6    mov         eax,[004B43F4];EIniFileException
 004B60AB    call        Exception.CreateResFmt
 004B60B0    call        @RaiseExcept
 004B60B5    pop         edi
 004B60B6    pop         esi
 004B60B7    pop         ebx
 004B60B8    pop         ecx
 004B60B9    pop         ecx
 004B60BA    pop         ebp
 004B60BB    ret         4
*}
end;

//004B60C0
procedure TIniFile.ReadSections(Strings:TStrings);
begin
{*
 004B60C0    push        ebp
 004B60C1    mov         ebp,esp
 004B60C3    add         esp,0FFFFFFEC
 004B60C6    push        ebx
 004B60C7    push        esi
 004B60C8    xor         ecx,ecx
 004B60CA    mov         dword ptr [ebp-14],ecx
 004B60CD    mov         dword ptr [ebp-4],ecx
 004B60D0    mov         dword ptr [ebp-8],edx
 004B60D3    mov         esi,eax
 004B60D5    xor         eax,eax
 004B60D7    push        ebp
 004B60D8    push        4B6246
 004B60DD    push        dword ptr fs:[eax]
 004B60E0    mov         dword ptr fs:[eax],esp
 004B60E3    xor         eax,eax
 004B60E5    mov         dword ptr [ebp-0C],eax
 004B60E8    xor         eax,eax
 004B60EA    mov         dword ptr [ebp-10],eax
 004B60ED    xor         edx,edx
 004B60EF    push        ebp
 004B60F0    push        4B621B
 004B60F5    push        dword ptr fs:[edx]
 004B60F8    mov         dword ptr fs:[edx],esp
 004B60FB    mov         eax,8000
 004B6100    call        @GetMem
 004B6105    mov         dword ptr [ebp-10],eax
 004B6108    mov         eax,dword ptr [ebp-8]
 004B610B    call        TStrings.BeginUpdate
 004B6110    xor         edx,edx
 004B6112    push        ebp
 004B6113    push        4B61FE
 004B6118    push        dword ptr fs:[edx]
 004B611B    mov         dword ptr fs:[edx],esp
 004B611E    mov         eax,dword ptr [ebp-8]
 004B6121    mov         edx,dword ptr [eax]
 004B6123    call        dword ptr [edx+48];TStrings.Clear
 004B6126    mov         eax,dword ptr [esi+4];TIniFile......FFileName:string
 004B6129    call        @UStrToPWChar
 004B612E    push        eax
 004B612F    push        4000
 004B6134    mov         eax,dword ptr [ebp-10]
 004B6137    push        eax
 004B6138    push        0
 004B613A    push        0
 004B613C    push        0
 004B613E    call        kernel32.GetPrivateProfileStringW
 004B6143    mov         ebx,eax
 004B6145    cmp         ebx,3FFE
>004B614B    jne         004B61B4
 004B614D    lea         edx,[ebp-4]
 004B6150    mov         eax,dword ptr [esi+4];TIniFile.......FFileName:string
 004B6153    call        004B3BD8
 004B6158    lea         edx,[ebp-0C]
 004B615B    mov         eax,dword ptr [ebp-4]
 004B615E    call        TEncoding.GetBufferEncoding
 004B6163    mov         eax,dword ptr [ebp-4]
 004B6166    test        eax,eax
>004B6168    je          004B616F
 004B616A    sub         eax,4
 004B616D    mov         eax,dword ptr [eax]
 004B616F    push        eax
 004B6170    xor         ecx,ecx
 004B6172    mov         edx,dword ptr [ebp-4]
 004B6175    mov         eax,dword ptr [ebp-0C]
 004B6178    call        TEncoding.GetCharCount
 004B617D    mov         ebx,eax
 004B617F    mov         edx,1
 004B6184    mov         eax,dword ptr [ebp-0C]
 004B6187    mov         ecx,dword ptr [eax]
 004B6189    call        dword ptr [ecx+1C];TEncoding.GetMaxByteCount
 004B618C    mov         edx,eax
 004B618E    imul        edx,ebx
 004B6191    lea         eax,[ebp-10]
 004B6194    call        @ReallocMem
 004B6199    mov         eax,dword ptr [esi+4];TIniFile........FFileName:string
 004B619C    call        @UStrToPWChar
 004B61A1    push        eax
 004B61A2    push        ebx
 004B61A3    mov         eax,dword ptr [ebp-10]
 004B61A6    push        eax
 004B61A7    push        0
 004B61A9    push        0
 004B61AB    push        0
 004B61AD    call        kernel32.GetPrivateProfileStringW
 004B61B2    mov         ebx,eax
 004B61B4    test        ebx,ebx
>004B61B6    je          004B61E8
 004B61B8    mov         ebx,dword ptr [ebp-10]
>004B61BB    jmp         004B61E2
 004B61BD    lea         eax,[ebp-14]
 004B61C0    mov         edx,ebx
 004B61C2    call        @UStrFromPWChar
 004B61C7    mov         edx,dword ptr [ebp-14]
 004B61CA    mov         eax,dword ptr [ebp-8]
 004B61CD    mov         ecx,dword ptr [eax]
 004B61CF    call        dword ptr [ecx+3C];TStrings.Add
 004B61D2    mov         eax,ebx
 004B61D4    call        @PWCharLen
 004B61D9    mov         esi,eax
 004B61DB    inc         esi
 004B61DC    mov         eax,esi
 004B61DE    add         eax,eax
 004B61E0    add         ebx,eax
 004B61E2    cmp         word ptr [ebx],0
>004B61E6    jne         004B61BD
 004B61E8    xor         eax,eax
 004B61EA    pop         edx
 004B61EB    pop         ecx
 004B61EC    pop         ecx
 004B61ED    mov         dword ptr fs:[eax],edx
 004B61F0    push        4B6205
 004B61F5    mov         eax,dword ptr [ebp-8]
 004B61F8    call        TStrings.EndUpdate
 004B61FD    ret
>004B61FE    jmp         @HandleFinally
>004B6203    jmp         004B61F5
 004B6205    xor         eax,eax
 004B6207    pop         edx
 004B6208    pop         ecx
 004B6209    pop         ecx
 004B620A    mov         dword ptr fs:[eax],edx
 004B620D    push        4B6222
 004B6212    mov         eax,dword ptr [ebp-10]
 004B6215    call        @FreeMem
 004B621A    ret
>004B621B    jmp         @HandleFinally
>004B6220    jmp         004B6212
 004B6222    xor         eax,eax
 004B6224    pop         edx
 004B6225    pop         ecx
 004B6226    pop         ecx
 004B6227    mov         dword ptr fs:[eax],edx
 004B622A    push        4B624D
 004B622F    lea         eax,[ebp-14]
 004B6232    call        @UStrClr
 004B6237    lea         eax,[ebp-4]
 004B623A    mov         edx,dword ptr ds:[402DD4];TArray<System.Byte>
 004B6240    call        @DynArrayClear
 004B6245    ret
>004B6246    jmp         @HandleFinally
>004B624B    jmp         004B622F
 004B624D    pop         esi
 004B624E    pop         ebx
 004B624F    mov         esp,ebp
 004B6251    pop         ebp
 004B6252    ret
*}
end;

//004B6254
procedure ReadStringData;
begin
{*
 004B6254    push        ebp
 004B6255    mov         ebp,esp
 004B6257    add         esp,0FFFFFFF8
 004B625A    push        ebx
 004B625B    push        esi
 004B625C    xor         eax,eax
 004B625E    mov         dword ptr [ebp-8],eax
 004B6261    mov         esi,dword ptr [ebp+8]
 004B6264    add         esi,0FFFFFFF0
 004B6267    xor         eax,eax
 004B6269    push        ebp
 004B626A    push        4B6318
 004B626F    push        dword ptr fs:[eax]
 004B6272    mov         dword ptr fs:[eax],esp
 004B6275    mov         eax,dword ptr [ebp+8]
 004B6278    mov         eax,dword ptr [eax-4]
 004B627B    call        TStrings.BeginUpdate
 004B6280    xor         eax,eax
 004B6282    push        ebp
 004B6283    push        4B62FB
 004B6288    push        dword ptr fs:[eax]
 004B628B    mov         dword ptr fs:[eax],esp
 004B628E    mov         eax,dword ptr [ebp+8]
 004B6291    mov         eax,dword ptr [eax-4]
 004B6294    mov         edx,dword ptr [eax]
 004B6296    call        dword ptr [edx+48]
 004B6299    mov         eax,dword ptr [ebp+8]
 004B629C    cmp         dword ptr [eax-8],0
>004B62A0    je          004B62E2
 004B62A2    mov         eax,dword ptr [ebp+8]
 004B62A5    mov         eax,dword ptr [eax-0C]
 004B62A8    mov         dword ptr [esi],eax
>004B62AA    jmp         004B62DA
 004B62AC    lea         eax,[ebp-8]
 004B62AF    mov         edx,dword ptr [esi]
 004B62B1    call        @UStrFromPWChar
 004B62B6    mov         edx,dword ptr [ebp-8]
 004B62B9    mov         eax,dword ptr [ebp+8]
 004B62BC    mov         eax,dword ptr [eax-4]
 004B62BF    mov         ecx,dword ptr [eax]
 004B62C1    call        dword ptr [ecx+3C]
 004B62C4    mov         eax,dword ptr [esi]
 004B62C6    mov         dword ptr [ebp-4],eax
 004B62C9    mov         eax,dword ptr [ebp-4]
 004B62CC    call        @PWCharLen
 004B62D1    mov         ebx,eax
 004B62D3    inc         ebx
 004B62D4    mov         eax,ebx
 004B62D6    add         eax,eax
 004B62D8    add         dword ptr [esi],eax
 004B62DA    mov         eax,dword ptr [esi]
 004B62DC    cmp         word ptr [eax],0
>004B62E0    jne         004B62AC
 004B62E2    xor         eax,eax
 004B62E4    pop         edx
 004B62E5    pop         ecx
 004B62E6    pop         ecx
 004B62E7    mov         dword ptr fs:[eax],edx
 004B62EA    push        4B6302
 004B62EF    mov         eax,dword ptr [ebp+8]
 004B62F2    mov         eax,dword ptr [eax-4]
 004B62F5    call        TStrings.EndUpdate
 004B62FA    ret
>004B62FB    jmp         @HandleFinally
>004B6300    jmp         004B62EF
 004B6302    xor         eax,eax
 004B6304    pop         edx
 004B6305    pop         ecx
 004B6306    pop         ecx
 004B6307    mov         dword ptr fs:[eax],edx
 004B630A    push        4B631F
 004B630F    lea         eax,[ebp-8]
 004B6312    call        @UStrClr
 004B6317    ret
>004B6318    jmp         @HandleFinally
>004B631D    jmp         004B630F
 004B631F    pop         esi
 004B6320    pop         ebx
 004B6321    pop         ecx
 004B6322    pop         ecx
 004B6323    pop         ebp
 004B6324    ret
*}
end;

//004B6328
procedure TIniFile.ReadSection(Section:string; Strings:TStrings);
begin
{*
 004B6328    push        ebp
 004B6329    mov         ebp,esp
 004B632B    add         esp,0FFFFFFE4
 004B632E    mov         dword ptr [ebp-4],ecx
 004B6331    mov         dword ptr [ebp-18],edx
 004B6334    mov         dword ptr [ebp-14],eax
 004B6337    mov         dword ptr [ebp-1C],400
 004B633E    mov         eax,dword ptr [ebp-1C]
 004B6341    add         eax,eax
 004B6343    call        @GetMem
 004B6348    mov         dword ptr [ebp-0C],eax
 004B634B    xor         eax,eax
 004B634D    push        ebp
 004B634E    push        4B63B4
 004B6353    push        dword ptr fs:[eax]
 004B6356    mov         dword ptr fs:[eax],esp
 004B6359    mov         eax,dword ptr [ebp-14]
 004B635C    mov         eax,dword ptr [eax+4]
 004B635F    call        @UStrToPWChar
 004B6364    push        eax
 004B6365    mov         eax,dword ptr [ebp-1C]
 004B6368    push        eax
 004B6369    mov         eax,dword ptr [ebp-0C]
 004B636C    push        eax
 004B636D    push        0
 004B636F    push        0
 004B6371    mov         eax,dword ptr [ebp-18]
 004B6374    call        @UStrToPWChar
 004B6379    push        eax
 004B637A    call        kernel32.GetPrivateProfileStringW
 004B637F    mov         dword ptr [ebp-8],eax
 004B6382    mov         eax,dword ptr [ebp-1C]
 004B6385    sub         eax,2
 004B6388    cmp         eax,dword ptr [ebp-8]
>004B638B    jle         004B639B
 004B638D    push        ebp
 004B638E    call        ReadStringData
 004B6393    pop         ecx
 004B6394    call        @TryFinallyExit
>004B6399    jmp         004B63CA
 004B639B    xor         eax,eax
 004B639D    pop         edx
 004B639E    pop         ecx
 004B639F    pop         ecx
 004B63A0    mov         dword ptr fs:[eax],edx
 004B63A3    push        4B63BB
 004B63A8    mov         edx,dword ptr [ebp-1C]
 004B63AB    mov         eax,dword ptr [ebp-0C]
 004B63AE    call        @FreeMem
 004B63B3    ret
>004B63B4    jmp         @HandleFinally
>004B63B9    jmp         004B63A8
 004B63BB    mov         eax,dword ptr [ebp-1C]
 004B63BE    add         eax,eax
 004B63C0    add         eax,eax
 004B63C2    mov         dword ptr [ebp-1C],eax
>004B63C5    jmp         004B633E
 004B63CA    mov         esp,ebp
 004B63CC    pop         ebp
 004B63CD    ret
*}
end;

//004B63D0
procedure TIniFile.ReadSectionValues(Section:string; Strings:TStrings);
begin
{*
 004B63D0    push        ebp
 004B63D1    mov         ebp,esp
 004B63D3    add         esp,0FFFFFFE0
 004B63D6    push        ebx
 004B63D7    push        esi
 004B63D8    push        edi
 004B63D9    xor         ebx,ebx
 004B63DB    mov         dword ptr [ebp-14],ebx
 004B63DE    mov         dword ptr [ebp-18],ebx
 004B63E1    mov         dword ptr [ebp-1C],ebx
 004B63E4    mov         dword ptr [ebp-20],ebx
 004B63E7    mov         dword ptr [ebp-0C],ecx
 004B63EA    mov         dword ptr [ebp-8],edx
 004B63ED    mov         dword ptr [ebp-4],eax
 004B63F0    xor         eax,eax
 004B63F2    push        ebp
 004B63F3    push        4B6503
 004B63F8    push        dword ptr fs:[eax]
 004B63FB    mov         dword ptr fs:[eax],esp
 004B63FE    mov         dl,1
 004B6400    mov         eax,[0046F9A0];TStringList
 004B6405    call        TStringList.Create
 004B640A    mov         dword ptr [ebp-10],eax
 004B640D    xor         eax,eax
 004B640F    push        ebp
 004B6410    push        4B64E1
 004B6415    push        dword ptr fs:[eax]
 004B6418    mov         dword ptr fs:[eax],esp
 004B641B    mov         ecx,dword ptr [ebp-10]
 004B641E    mov         edx,dword ptr [ebp-8]
 004B6421    mov         eax,dword ptr [ebp-4]
 004B6424    mov         ebx,dword ptr [eax]
 004B6426    call        dword ptr [ebx+44]
 004B6429    mov         eax,dword ptr [ebp-0C]
 004B642C    call        TStrings.BeginUpdate
 004B6431    xor         eax,eax
 004B6433    push        ebp
 004B6434    push        4B64C4
 004B6439    push        dword ptr fs:[eax]
 004B643C    mov         dword ptr fs:[eax],esp
 004B643F    mov         eax,dword ptr [ebp-0C]
 004B6442    mov         edx,dword ptr [eax]
 004B6444    call        dword ptr [edx+48]
 004B6447    mov         eax,dword ptr [ebp-10]
 004B644A    mov         edx,dword ptr [eax]
 004B644C    call        dword ptr [edx+14]
 004B644F    mov         esi,eax
 004B6451    dec         esi
 004B6452    test        esi,esi
>004B6454    jl          004B64AE
 004B6456    inc         esi
 004B6457    xor         ebx,ebx
 004B6459    lea         ecx,[ebp-18]
 004B645C    mov         edx,ebx
 004B645E    mov         eax,dword ptr [ebp-10]
 004B6461    mov         edi,dword ptr [eax]
 004B6463    call        dword ptr [edi+0C]
 004B6466    push        dword ptr [ebp-18]
 004B6469    push        4B6520;'='
 004B646E    push        0
 004B6470    lea         eax,[ebp-1C]
 004B6473    push        eax
 004B6474    lea         ecx,[ebp-20]
 004B6477    mov         edx,ebx
 004B6479    mov         eax,dword ptr [ebp-10]
 004B647C    mov         edi,dword ptr [eax]
 004B647E    call        dword ptr [edi+0C]
 004B6481    mov         ecx,dword ptr [ebp-20]
 004B6484    mov         edx,dword ptr [ebp-8]
 004B6487    mov         eax,dword ptr [ebp-4]
 004B648A    mov         edi,dword ptr [eax]
 004B648C    call        dword ptr [edi+4]
 004B648F    push        dword ptr [ebp-1C]
 004B6492    lea         eax,[ebp-14]
 004B6495    mov         edx,3
 004B649A    call        @UStrCatN
 004B649F    mov         edx,dword ptr [ebp-14]
 004B64A2    mov         eax,dword ptr [ebp-0C]
 004B64A5    mov         ecx,dword ptr [eax]
 004B64A7    call        dword ptr [ecx+3C]
 004B64AA    inc         ebx
 004B64AB    dec         esi
>004B64AC    jne         004B6459
 004B64AE    xor         eax,eax
 004B64B0    pop         edx
 004B64B1    pop         ecx
 004B64B2    pop         ecx
 004B64B3    mov         dword ptr fs:[eax],edx
 004B64B6    push        4B64CB
 004B64BB    mov         eax,dword ptr [ebp-0C]
 004B64BE    call        TStrings.EndUpdate
 004B64C3    ret
>004B64C4    jmp         @HandleFinally
>004B64C9    jmp         004B64BB
 004B64CB    xor         eax,eax
 004B64CD    pop         edx
 004B64CE    pop         ecx
 004B64CF    pop         ecx
 004B64D0    mov         dword ptr fs:[eax],edx
 004B64D3    push        4B64E8
 004B64D8    mov         eax,dword ptr [ebp-10]
 004B64DB    call        TObject.Free
 004B64E0    ret
>004B64E1    jmp         @HandleFinally
>004B64E6    jmp         004B64D8
 004B64E8    xor         eax,eax
 004B64EA    pop         edx
 004B64EB    pop         ecx
 004B64EC    pop         ecx
 004B64ED    mov         dword ptr fs:[eax],edx
 004B64F0    push        4B650A
 004B64F5    lea         eax,[ebp-20]
 004B64F8    mov         edx,4
 004B64FD    call        @UStrArrayClr
 004B6502    ret
>004B6503    jmp         @HandleFinally
>004B6508    jmp         004B64F5
 004B650A    pop         edi
 004B650B    pop         esi
 004B650C    pop         ebx
 004B650D    mov         esp,ebp
 004B650F    pop         ebp
 004B6510    ret
*}
end;

//004B6524
procedure TIniFile.EraseSection(Section:string);
begin
{*
 004B6524    push        ebx
 004B6525    push        esi
 004B6526    add         esp,0FFFFFFF8
 004B6529    mov         esi,edx
 004B652B    mov         ebx,eax
 004B652D    mov         eax,dword ptr [ebx+4]
 004B6530    call        @UStrToPWChar
 004B6535    push        eax
 004B6536    push        0
 004B6538    push        0
 004B653A    mov         eax,esi
 004B653C    call        @UStrToPWChar
 004B6541    push        eax
 004B6542    call        kernel32.WritePrivateProfileStringW
 004B6547    test        eax,eax
>004B6549    jne         004B6570
 004B654B    mov         eax,dword ptr [ebx+4]
 004B654E    mov         dword ptr [esp],eax
 004B6551    mov         byte ptr [esp+4],11
 004B6556    push        esp
 004B6557    push        0
 004B6559    mov         ecx,dword ptr ds:[7C4BE8];^SResString125:TResStringRec
 004B655F    mov         dl,1
 004B6561    mov         eax,[004B43F4];EIniFileException
 004B6566    call        Exception.CreateResFmt
 004B656B    call        @RaiseExcept
 004B6570    pop         ecx
 004B6571    pop         edx
 004B6572    pop         esi
 004B6573    pop         ebx
 004B6574    ret
*}
end;

//004B6578
procedure TIniFile.DeleteKey(Section:string; Ident:string);
begin
{*
 004B6578    push        ebx
 004B6579    push        esi
 004B657A    push        edi
 004B657B    mov         edi,ecx
 004B657D    mov         esi,edx
 004B657F    mov         ebx,eax
 004B6581    mov         eax,dword ptr [ebx+4]
 004B6584    call        @UStrToPWChar
 004B6589    push        eax
 004B658A    push        0
 004B658C    mov         eax,edi
 004B658E    call        @UStrToPWChar
 004B6593    push        eax
 004B6594    mov         eax,esi
 004B6596    call        @UStrToPWChar
 004B659B    push        eax
 004B659C    call        kernel32.WritePrivateProfileStringW
 004B65A1    pop         edi
 004B65A2    pop         esi
 004B65A3    pop         ebx
 004B65A4    ret
*}
end;

//004B65A8
procedure TIniFile.UpdateFile;
begin
{*
 004B65A8    push        ebx
 004B65A9    mov         ebx,eax
 004B65AB    mov         eax,dword ptr [ebx+4]
 004B65AE    call        @UStrToPWChar
 004B65B3    push        eax
 004B65B4    push        0
 004B65B6    push        0
 004B65B8    push        0
 004B65BA    call        kernel32.WritePrivateProfileStringW
 004B65BF    pop         ebx
 004B65C0    ret
*}
end;

Initialization
//0079CC68
{*
 0079CC68    sub         dword ptr ds:[7CA440],1
>0079CC6F    jae         0079CD0E
 0079CC75    mov         eax,[007C4364];^gvar_007C7DC0
 0079CC7A    cmp         dword ptr [eax],6
 0079CC7D    setge       al
 0079CC80    test        al,al
>0079CC82    je          0079CC88
 0079CC84    mov         al,1
>0079CC86    jmp         0079CCCA
 0079CC88    mov         eax,[007C4364];^gvar_007C7DC0
 0079CC8D    cmp         dword ptr [eax],5
>0079CC90    jg          0079CCC8
 0079CC92    mov         eax,[007C4364];^gvar_007C7DC0
 0079CC97    cmp         dword ptr [eax],5
>0079CC9A    jne         0079CCA6
 0079CC9C    mov         eax,[007C4904];^gvar_007C7DC4
 0079CCA1    cmp         dword ptr [eax],2
>0079CCA4    jg          0079CCC8
 0079CCA6    mov         eax,[007C4364];^gvar_007C7DC0
 0079CCAB    cmp         dword ptr [eax],5
>0079CCAE    jne         0079CCC4
 0079CCB0    mov         eax,[007C4904];^gvar_007C7DC4
 0079CCB5    cmp         dword ptr [eax],2
>0079CCB8    jne         0079CCC4
 0079CCBA    mov         eax,[007C4B00];^gvar_007C7DD0
 0079CCBF    cmp         dword ptr [eax],1
>0079CCC2    jge         0079CCC8
 0079CCC4    xor         eax,eax
>0079CCC6    jmp         0079CCCA
 0079CCC8    mov         al,1
 0079CCCA    test        al,al
>0079CCCC    je          0079CCD2
 0079CCCE    mov         al,1
>0079CCD0    jmp         0079CD09
 0079CCD2    mov         eax,[007C4364];^gvar_007C7DC0
 0079CCD7    cmp         dword ptr [eax],5
>0079CCDA    jg          0079CCF4
 0079CCDC    mov         eax,[007C4364];^gvar_007C7DC0
 0079CCE1    cmp         dword ptr [eax],5
>0079CCE4    jne         0079CCF0
 0079CCE6    mov         eax,[007C4904];^gvar_007C7DC4
 0079CCEB    cmp         dword ptr [eax],2
>0079CCEE    jge         0079CCF4
 0079CCF0    xor         eax,eax
>0079CCF2    jmp         0079CCF6
 0079CCF4    mov         al,1
 0079CCF6    test        al,al
>0079CCF8    je          0079CD07
 0079CCFA    mov         eax,[007C4AE8];^gvar_007C7DB8
 0079CCFF    cmp         byte ptr [eax],1
 0079CD02    sete        al
>0079CD05    jmp         0079CD09
 0079CD07    xor         eax,eax
 0079CD09    mov         [007CA43C],al;gvar_007CA43C
 0079CD0E    ret
*}
Finalization
end.