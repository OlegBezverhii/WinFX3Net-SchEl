//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXLCChangeTypeDlg;

interface

uses
  SysUtils, Classes, Vcl.StdCtrls;

type
  TLoopCtrlrTypeChangeDlg = class(TForm)
  published
    lblMessage:TLabel;//f3C0
    GroupBox1:TGroupBox;//f3C4
    GroupBox2:TGroupBox;//f3C8
    GroupBox3:TGroupBox;//f3CC
    lblConvert:TLabel;//f3D0
    lblDelete:TLabel;//f3D4
    lblCancel:TLabel;//f3D8
    btnConvert:TButton;//f3DC
    btnDelete:TButton;//f3E0
    btnCancel:TButton;//f3E4
    lblApplyOk:TLabel;//f3E8
    procedure Translate(IniFile:TFXIniFile);//006D67F4
    procedure FormCreate(Sender:TObject);//006D6704
  end;
    //procedure sub_006D5940(?:?; ?:UnicodeString);//006D5940
    //function sub_006D5A18(?:?):?;//006D5A18
    //function sub_006D5B90(?:?):?;//006D5B90
    //procedure sub_006D5D28(?:?; ?:?);//006D5D28

implementation

{$R *.DFM}

//006D5940
{*procedure sub_006D5940(?:?; ?:UnicodeString);
begin
 006D5940    push        ebp
 006D5941    mov         ebp,esp
 006D5943    add         esp,0FFFFFFE4
 006D5946    push        ebx
 006D5947    push        esi
 006D5948    xor         ecx,ecx
 006D594A    mov         dword ptr [ebp-0C],ecx
 006D594D    mov         dword ptr [ebp-4],ecx
 006D5950    mov         esi,edx
 006D5952    mov         dword ptr [ebp-8],eax
 006D5955    xor         eax,eax
 006D5957    push        ebp
 006D5958    push        6D59E8
 006D595D    push        dword ptr fs:[eax]
 006D5960    mov         dword ptr fs:[eax],esp
 006D5963    lea         eax,[ebp-4]
 006D5966    call        @UStrClr
 006D596B    xor         ebx,ebx
 006D596D    mov         eax,ebx
 006D596F    cmp         eax,1F
>006D5972    ja          006D5978
 006D5974    bt          dword ptr [ebp-8],eax
>006D5978    jae         006D59BA
 006D597A    lea         eax,[ebp-0C]
 006D597D    push        eax
 006D597E    mov         eax,dword ptr [ebp-4]
 006D5981    mov         dword ptr [ebp-1C],eax
 006D5984    mov         byte ptr [ebp-18],11
 006D5988    mov         eax,1
 006D598D    add         eax,ebx
>006D598F    jno         006D5996
 006D5991    call        @IntOver
 006D5996    mov         dword ptr [ebp-14],eax
 006D5999    mov         byte ptr [ebp-10],0
 006D599D    lea         edx,[ebp-1C]
 006D59A0    mov         ecx,1
 006D59A5    mov         eax,6D5A04;'%s%.2d; '
 006D59AA    call        Format
 006D59AF    mov         edx,dword ptr [ebp-0C]
 006D59B2    lea         eax,[ebp-4]
 006D59B5    call        @UStrLAsg
 006D59BA    inc         ebx
 006D59BB    cmp         ebx,20
>006D59BE    jne         006D596D
 006D59C0    mov         eax,esi
 006D59C2    mov         edx,dword ptr [ebp-4]
 006D59C5    call        @UStrAsg
 006D59CA    xor         eax,eax
 006D59CC    pop         edx
 006D59CD    pop         ecx
 006D59CE    pop         ecx
 006D59CF    mov         dword ptr fs:[eax],edx
 006D59D2    push        6D59EF
 006D59D7    lea         eax,[ebp-0C]
 006D59DA    call        @UStrClr
 006D59DF    lea         eax,[ebp-4]
 006D59E2    call        @UStrClr
 006D59E7    ret
>006D59E8    jmp         @HandleFinally
>006D59ED    jmp         006D59D7
 006D59EF    pop         esi
 006D59F0    pop         ebx
 006D59F1    mov         esp,ebp
 006D59F3    pop         ebp
 006D59F4    ret
end;*}

//006D5A18
{*function sub_006D5A18(?:?):?;
begin
 006D5A18    push        ebp
 006D5A19    mov         ebp,esp
 006D5A1B    add         esp,0FFFFFFE8
 006D5A1E    push        ebx
 006D5A1F    push        esi
 006D5A20    push        edi
 006D5A21    xor         edx,edx
 006D5A23    mov         dword ptr [ebp-18],edx
 006D5A26    mov         dword ptr [ebp-14],edx
 006D5A29    mov         dword ptr [ebp-4],eax
 006D5A2C    mov         eax,dword ptr [ebp-4]
 006D5A2F    call        @UStrAddRef
 006D5A34    xor         eax,eax
 006D5A36    push        ebp
 006D5A37    push        6D5B40
 006D5A3C    push        dword ptr fs:[eax]
 006D5A3F    mov         dword ptr fs:[eax],esp
 006D5A42    mov         eax,[006D5B54];0x0 gvar_006D5B54
 006D5A47    mov         dword ptr [ebp-8],eax
 006D5A4A    mov         dl,1
 006D5A4C    mov         eax,[0046F9A0];TStringList
 006D5A51    call        TStringList.Create;TStringList.Create
 006D5A56    mov         dword ptr [ebp-10],eax
 006D5A59    xor         eax,eax
 006D5A5B    push        ebp
 006D5A5C    push        6D5B16
 006D5A61    push        dword ptr fs:[eax]
 006D5A64    mov         dword ptr fs:[eax],esp
 006D5A67    mov         dx,3B
 006D5A6B    mov         eax,dword ptr [ebp-10]
 006D5A6E    call        TStrings.SetDelimiter
 006D5A73    mov         edx,dword ptr [ebp-4]
 006D5A76    mov         eax,dword ptr [ebp-10]
 006D5A79    call        TStrings.SetDelimitedText
 006D5A7E    mov         eax,dword ptr [ebp-10]
 006D5A81    mov         edx,dword ptr [eax]
 006D5A83    call        dword ptr [edx+14];TStringList.GetCount
 006D5A86    mov         esi,eax
 006D5A88    sub         esi,1
>006D5A8B    jno         006D5A92
 006D5A8D    call        @IntOver
 006D5A92    test        esi,esi
>006D5A94    jl          006D5B00
 006D5A96    inc         esi
 006D5A97    xor         ebx,ebx
 006D5A99    lea         ecx,[ebp-14]
 006D5A9C    mov         edx,ebx
 006D5A9E    mov         eax,dword ptr [ebp-10]
 006D5AA1    mov         edi,dword ptr [eax]
 006D5AA3    call        dword ptr [edi+0C];TStringList.Get
 006D5AA6    cmp         dword ptr [ebp-14],0
>006D5AAA    je          006D5AFC
 006D5AAC    lea         ecx,[ebp-18]
 006D5AAF    mov         edx,ebx
 006D5AB1    mov         eax,dword ptr [ebp-10]
 006D5AB4    mov         edi,dword ptr [eax]
 006D5AB6    call        dword ptr [edi+0C];TStringList.Get
 006D5AB9    mov         eax,dword ptr [ebp-18]
 006D5ABC    lea         edx,[ebp-0C]
 006D5ABF    call        0041E5A0
 006D5AC4    test        al,al
>006D5AC6    je          006D5AE6
 006D5AC8    cmp         dword ptr [ebp-0C],0
>006D5ACC    jle         006D5AFC
 006D5ACE    mov         eax,dword ptr [ebp-0C]
 006D5AD1    sub         eax,1
>006D5AD4    jno         006D5ADB
 006D5AD6    call        @IntOver
 006D5ADB    cmp         eax,1F
>006D5ADE    ja          006D5AFC
 006D5AE0    bts         dword ptr [ebp-8],eax
>006D5AE4    jmp         006D5AFC
 006D5AE6    mov         ecx,6D5B64;'Invalid input string'
 006D5AEB    mov         dl,1
 006D5AED    mov         eax,[004174D0];Exception
 006D5AF2    call        Exception.Create;Exception.Create
 006D5AF7    call        @RaiseExcept
 006D5AFC    inc         ebx
 006D5AFD    dec         esi
>006D5AFE    jne         006D5A99
 006D5B00    xor         eax,eax
 006D5B02    pop         edx
 006D5B03    pop         ecx
 006D5B04    pop         ecx
 006D5B05    mov         dword ptr fs:[eax],edx
 006D5B08    push        6D5B1D
 006D5B0D    mov         eax,dword ptr [ebp-10]
 006D5B10    call        TObject.Free
 006D5B15    ret
>006D5B16    jmp         @HandleFinally
>006D5B1B    jmp         006D5B0D
 006D5B1D    xor         eax,eax
 006D5B1F    pop         edx
 006D5B20    pop         ecx
 006D5B21    pop         ecx
 006D5B22    mov         dword ptr fs:[eax],edx
 006D5B25    push        6D5B47
 006D5B2A    lea         eax,[ebp-18]
 006D5B2D    mov         edx,2
 006D5B32    call        @UStrArrayClr
 006D5B37    lea         eax,[ebp-4]
 006D5B3A    call        @UStrClr
 006D5B3F    ret
>006D5B40    jmp         @HandleFinally
>006D5B45    jmp         006D5B2A
 006D5B47    mov         eax,dword ptr [ebp-8]
 006D5B4A    pop         edi
 006D5B4B    pop         esi
 006D5B4C    pop         ebx
 006D5B4D    mov         esp,ebp
 006D5B4F    pop         ebp
 006D5B50    ret
end;*}

//006D5B90
{*function sub_006D5B90(?:?):?;
begin
 006D5B90    push        ebp
 006D5B91    mov         ebp,esp
 006D5B93    add         esp,0FFFFFFDC
 006D5B96    push        ebx
 006D5B97    xor         edx,edx
 006D5B99    mov         dword ptr [ebp-24],edx
 006D5B9C    mov         dword ptr [ebp-20],edx
 006D5B9F    mov         dword ptr [ebp-1C],edx
 006D5BA2    mov         dword ptr [ebp-18],edx
 006D5BA5    mov         dword ptr [ebp-4],eax
 006D5BA8    mov         eax,dword ptr [ebp-4]
 006D5BAB    call        @UStrAddRef
 006D5BB0    xor         eax,eax
 006D5BB2    push        ebp
 006D5BB3    push        6D5CE5
 006D5BB8    push        dword ptr fs:[eax]
 006D5BBB    mov         dword ptr fs:[eax],esp
 006D5BBE    lea         eax,[ebp-18]
 006D5BC1    push        eax
 006D5BC2    mov         ecx,3
 006D5BC7    mov         edx,1
 006D5BCC    mov         eax,dword ptr [ebp-4]
 006D5BCF    call        @UStrCopy
 006D5BD4    mov         eax,dword ptr [ebp-18]
 006D5BD7    lea         edx,[ebp-8]
 006D5BDA    call        0041E5A0
 006D5BDF    lea         eax,[ebp-1C]
 006D5BE2    push        eax
 006D5BE3    mov         ecx,3
 006D5BE8    mov         edx,5
 006D5BED    mov         eax,dword ptr [ebp-4]
 006D5BF0    call        @UStrCopy
 006D5BF5    mov         eax,dword ptr [ebp-1C]
 006D5BF8    lea         edx,[ebp-0C]
 006D5BFB    call        0041E5A0
 006D5C00    lea         eax,[ebp-20]
 006D5C03    push        eax
 006D5C04    mov         ecx,3
 006D5C09    mov         edx,9
 006D5C0E    mov         eax,dword ptr [ebp-4]
 006D5C11    call        @UStrCopy
 006D5C16    mov         eax,dword ptr [ebp-20]
 006D5C19    lea         edx,[ebp-10]
 006D5C1C    call        0041E5A0
 006D5C21    lea         eax,[ebp-24]
 006D5C24    push        eax
 006D5C25    mov         ecx,3
 006D5C2A    mov         edx,0D
 006D5C2F    mov         eax,dword ptr [ebp-4]
 006D5C32    call        @UStrCopy
 006D5C37    mov         eax,dword ptr [ebp-24]
 006D5C3A    lea         edx,[ebp-14]
 006D5C3D    call        0041E5A0
 006D5C42    cmp         dword ptr [ebp-8],0
>006D5C46    jl          006D5C7E
 006D5C48    cmp         dword ptr [ebp-8],0FF
>006D5C4F    jg          006D5C7E
 006D5C51    cmp         dword ptr [ebp-0C],0
>006D5C55    jl          006D5C7E
 006D5C57    cmp         dword ptr [ebp-0C],0FF
>006D5C5E    jg          006D5C7E
 006D5C60    cmp         dword ptr [ebp-10],0
>006D5C64    jl          006D5C7E
 006D5C66    cmp         dword ptr [ebp-10],0FF
>006D5C6D    jg          006D5C7E
 006D5C6F    cmp         dword ptr [ebp-14],0
>006D5C73    jl          006D5C7E
 006D5C75    cmp         dword ptr [ebp-14],0FF
>006D5C7C    jle         006D5C94
 006D5C7E    mov         ecx,6D5D00;'Invalid IP address'
 006D5C83    mov         dl,1
 006D5C85    mov         eax,[004174D0];Exception
 006D5C8A    call        Exception.Create;Exception.Create
 006D5C8F    call        @RaiseExcept
 006D5C94    mov         ebx,dword ptr [ebp-8]
 006D5C97    shl         ebx,18
 006D5C9A    mov         eax,dword ptr [ebp-0C]
 006D5C9D    shl         eax,10
 006D5CA0    add         ebx,eax
>006D5CA2    jno         006D5CA9
 006D5CA4    call        @IntOver
 006D5CA9    mov         eax,dword ptr [ebp-10]
 006D5CAC    shl         eax,8
 006D5CAF    add         ebx,eax
>006D5CB1    jno         006D5CB8
 006D5CB3    call        @IntOver
 006D5CB8    add         ebx,dword ptr [ebp-14]
>006D5CBB    jno         006D5CC2
 006D5CBD    call        @IntOver
 006D5CC2    xor         eax,eax
 006D5CC4    pop         edx
 006D5CC5    pop         ecx
 006D5CC6    pop         ecx
 006D5CC7    mov         dword ptr fs:[eax],edx
 006D5CCA    push        6D5CEC
 006D5CCF    lea         eax,[ebp-24]
 006D5CD2    mov         edx,4
 006D5CD7    call        @UStrArrayClr
 006D5CDC    lea         eax,[ebp-4]
 006D5CDF    call        @UStrClr
 006D5CE4    ret
>006D5CE5    jmp         @HandleFinally
>006D5CEA    jmp         006D5CCF
 006D5CEC    mov         eax,ebx
 006D5CEE    pop         ebx
 006D5CEF    mov         esp,ebp
 006D5CF1    pop         ebp
 006D5CF2    ret
end;*}

//006D5D28
{*procedure sub_006D5D28(?:?; ?:?);
begin
 006D5D28    push        ebx
 006D5D29    push        esi
 006D5D2A    push        edi
 006D5D2B    push        ebp
 006D5D2C    add         esp,0FFFFFFDC
 006D5D2F    mov         dword ptr [esp],edx
 006D5D32    mov         ebx,0FF000000
 006D5D37    and         ebx,eax
 006D5D39    shr         ebx,18
 006D5D3C    test        ebx,ebx
>006D5D3E    jns         006D5D45
 006D5D40    call        @BoundErr
 006D5D45    mov         esi,0FF0000
 006D5D4A    and         esi,eax
 006D5D4C    shr         esi,10
 006D5D4F    test        esi,esi
>006D5D51    jns         006D5D58
 006D5D53    call        @BoundErr
 006D5D58    mov         edi,0FF00
 006D5D5D    and         edi,eax
 006D5D5F    shr         edi,8
 006D5D62    test        edi,edi
>006D5D64    jns         006D5D6B
 006D5D66    call        @BoundErr
 006D5D6B    mov         ebp,0FF
 006D5D70    and         ebp,eax
 006D5D72    test        ebp,ebp
>006D5D74    jns         006D5D7B
 006D5D76    call        @BoundErr
 006D5D7B    mov         eax,dword ptr [esp]
 006D5D7E    push        eax
 006D5D7F    mov         dword ptr [esp+8],ebx
 006D5D83    mov         byte ptr [esp+0C],0
 006D5D88    mov         dword ptr [esp+10],esi
 006D5D8C    mov         byte ptr [esp+14],0
 006D5D91    mov         dword ptr [esp+18],edi
 006D5D95    mov         byte ptr [esp+1C],0
 006D5D9A    mov         dword ptr [esp+20],ebp
 006D5D9E    mov         byte ptr [esp+24],0
 006D5DA3    lea         edx,[esp+8]
 006D5DA7    mov         ecx,3
 006D5DAC    mov         eax,6D5DCC;'%d.%d.%d.%d'
 006D5DB1    call        Format
 006D5DB6    add         esp,24
 006D5DB9    pop         ebp
 006D5DBA    pop         edi
 006D5DBB    pop         esi
 006D5DBC    pop         ebx
 006D5DBD    ret
end;*}

//006D6704
procedure TLoopCtrlrTypeChangeDlg.FormCreate(Sender:TObject);
begin
{*
 006D6704    push        ebp
 006D6705    mov         ebp,esp
 006D6707    add         esp,0FFFFFFE8
 006D670A    push        ebx
 006D670B    xor         ecx,ecx
 006D670D    mov         dword ptr [ebp-4],ecx
 006D6710    mov         dword ptr [ebp-18],ecx
 006D6713    mov         ebx,eax
 006D6715    xor         eax,eax
 006D6717    push        ebp
 006D6718    push        6D6786
 006D671D    push        dword ptr fs:[eax]
 006D6720    mov         dword ptr fs:[eax],esp
 006D6723    lea         eax,[ebp-4]
 006D6726    push        eax
 006D6727    mov         eax,6D67A0;'Loop Controller type change'
 006D672C    mov         dword ptr [ebp-14],eax
 006D672F    mov         byte ptr [ebp-10],11
 006D6733    lea         edx,[ebp-18]
 006D6736    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 006D673B    mov         eax,dword ptr [eax]
 006D673D    call        005DDC74
 006D6742    mov         eax,dword ptr [ebp-18]
 006D6745    mov         dword ptr [ebp-0C],eax
 006D6748    mov         byte ptr [ebp-8],11
 006D674C    lea         edx,[ebp-14]
 006D674F    mov         ecx,1
 006D6754    mov         eax,6D67E4;'%s (%s)'
 006D6759    call        Format
 006D675E    mov         edx,dword ptr [ebp-4]
 006D6761    mov         eax,ebx
 006D6763    call        TControl.SetText
 006D6768    xor         eax,eax
 006D676A    pop         edx
 006D676B    pop         ecx
 006D676C    pop         ecx
 006D676D    mov         dword ptr fs:[eax],edx
 006D6770    push        6D678D
 006D6775    lea         eax,[ebp-18]
 006D6778    call        @UStrClr
 006D677D    lea         eax,[ebp-4]
 006D6780    call        @UStrClr
 006D6785    ret
>006D6786    jmp         @HandleFinally
>006D678B    jmp         006D6775
 006D678D    pop         ebx
 006D678E    mov         esp,ebp
 006D6790    pop         ebp
 006D6791    ret
*}
end;

//006D67F4
procedure TLoopCtrlrTypeChangeDlg.Translate(IniFile:TFXIniFile);
begin
{*
 006D67F4    push        ebp
 006D67F5    mov         ebp,esp
 006D67F7    mov         ecx,6
 006D67FC    push        0
 006D67FE    push        0
 006D6800    dec         ecx
>006D6801    jne         006D67FC
 006D6803    push        ebx
 006D6804    push        esi
 006D6805    push        edi
 006D6806    mov         ebx,edx
 006D6808    mov         esi,eax
 006D680A    xor         eax,eax
 006D680C    push        ebp
 006D680D    push        6D69E6
 006D6812    push        dword ptr fs:[eax]
 006D6815    mov         dword ptr fs:[eax],esp
 006D6818    push        6D6A00;'Loop Controller type change'
 006D681D    lea         eax,[ebp-8]
 006D6820    push        eax
 006D6821    mov         ecx,6D6A44;'sLoopCtrlrTypeChange'
 006D6826    mov         edx,6D6A7C;'LCTypeChangeDlg'
 006D682B    mov         eax,ebx
 006D682D    mov         edi,dword ptr [eax]
 006D682F    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D6832    push        dword ptr [ebp-8]
 006D6835    push        6D6AA8;' ('
 006D683A    lea         edx,[ebp-0C]
 006D683D    mov         eax,[007C4800];^gvar_007CA844:TToolInfo
 006D6842    mov         eax,dword ptr [eax]
 006D6844    call        005DDC74
 006D6849    push        dword ptr [ebp-0C]
 006D684C    push        6D6ABC;')'
 006D6851    lea         eax,[ebp-4]
 006D6854    mov         edx,4
 006D6859    call        @UStrCatN
 006D685E    mov         edx,dword ptr [ebp-4]
 006D6861    mov         eax,esi
 006D6863    call        TControl.SetText
 006D6868    push        6D6ACC;'Address settings of second loop of current loop controller will be deleted'
 006D686D    lea         eax,[ebp-10]
 006D6870    push        eax
 006D6871    mov         ecx,6D6B70;'sAddrOf2ndLoopDelete'
 006D6876    mov         edx,6D6A7C;'LCTypeChangeDlg'
 006D687B    mov         eax,ebx
 006D687D    mov         edi,dword ptr [eax]
 006D687F    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D6882    mov         edx,dword ptr [ebp-10]
 006D6885    mov         eax,7C2EB4;^'Address settings of second loop of current loop controller will be deleted'
 006D688A    call        @UStrAsg
 006D688F    push        6D6BA8;'Address settings of current and subsequent loop controllers will be deleted'
 006D6894    lea         eax,[ebp-14]
 006D6897    push        eax
 006D6898    mov         ecx,6D6C4C;'sAddrOfCurrSubDelete'
 006D689D    mov         edx,6D6A7C;'LCTypeChangeDlg'
 006D68A2    mov         eax,ebx
 006D68A4    mov         edi,dword ptr [eax]
 006D68A6    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D68A9    mov         edx,dword ptr [ebp-14]
 006D68AC    mov         eax,7C2EB8;^'Address settings of current and subsequent loop controllers will be deleted...
 006D68B1    call        @UStrAsg
 006D68B6    push        6D6C84;'Addresses of current LC loop controller can be converted to addresses of the new...
 006D68BB    lea         eax,[ebp-18]
 006D68BE    push        eax
 006D68BF    mov         ecx,6D6D78;'sAddrOfLCtoSLCorDel'
 006D68C4    mov         edx,6D6A7C;'LCTypeChangeDlg'
 006D68C9    mov         eax,ebx
 006D68CB    mov         edi,dword ptr [eax]
 006D68CD    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D68D0    mov         edx,dword ptr [ebp-18]
 006D68D3    mov         eax,7C2EBC;^'Addresses of current LC loop controller can be converted to addresses of th...
 006D68D8    call        @UStrAsg
 006D68DD    push        6D6DAC;'Address settings of current loop controller will be deleted'
 006D68E2    lea         eax,[ebp-1C]
 006D68E5    push        eax
 006D68E6    mov         ecx,6D6E30;'sAddrOfCurrLCDelete'
 006D68EB    mov         edx,6D6A7C;'LCTypeChangeDlg'
 006D68F0    mov         eax,ebx
 006D68F2    mov         edi,dword ptr [eax]
 006D68F4    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D68F7    mov         edx,dword ptr [ebp-1C]
 006D68FA    mov         eax,7C2EC0;^'Address settings of current loop controller will be deleted'
 006D68FF    call        @UStrAsg
 006D6904    push        6D6E64;'Changes to addres settings will be applied when the Panel Data view is closed wi...
 006D6909    lea         eax,[ebp-20]
 006D690C    push        eax
 006D690D    mov         ecx,6D6F1C;'sAddrChangeApplyAtOk'
 006D6912    mov         edx,6D6A7C;'LCTypeChangeDlg'
 006D6917    mov         eax,ebx
 006D6919    mov         edi,dword ptr [eax]
 006D691B    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D691E    mov         edx,dword ptr [ebp-20]
 006D6921    mov         eax,7C2EC4;^'Changes to addres settings will be applied when the Panel Data view is clos...
 006D6926    call        @UStrAsg
 006D692B    push        6D6E64;'Changes to addres settings will be applied when the Panel Data view is closed wi...
 006D6930    lea         eax,[ebp-24]
 006D6933    push        eax
 006D6934    mov         ecx,6D6F1C;'sAddrChangeApplyAtOk'
 006D6939    mov         edx,6D6A7C;'LCTypeChangeDlg'
 006D693E    mov         eax,ebx
 006D6940    mov         edi,dword ptr [eax]
 006D6942    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D6945    mov         edx,dword ptr [ebp-24]
 006D6948    mov         eax,dword ptr [esi+3E8];TLoopCtrlrTypeChangeDlg.lblApplyOk:TLabel
 006D694E    call        TControl.SetText
 006D6953    push        6D6F54;'Convert LC addresses to SLCB addresses'
 006D6958    lea         eax,[ebp-28]
 006D695B    push        eax
 006D695C    mov         ecx,6D6FB0;'sConvertLcToSlc'
 006D6961    mov         edx,6D6A7C;'LCTypeChangeDlg'
 006D6966    mov         eax,ebx
 006D6968    mov         edi,dword ptr [eax]
 006D696A    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D696D    mov         edx,dword ptr [ebp-28]
 006D6970    mov         eax,dword ptr [esi+3D0];TLoopCtrlrTypeChangeDlg.lblConvert:TLabel
 006D6976    call        TControl.SetText
 006D697B    push        6D6FDC;'Proceed with loop controller change and delete affected loops and addresses'
 006D6980    lea         eax,[ebp-2C]
 006D6983    push        eax
 006D6984    mov         ecx,6D7080;'sProceedAndDelete'
 006D6989    mov         edx,6D6A7C;'LCTypeChangeDlg'
 006D698E    mov         eax,ebx
 006D6990    mov         edi,dword ptr [eax]
 006D6992    call        dword ptr [edi+4];TFXIniFile.ReadString
 006D6995    mov         edx,dword ptr [ebp-2C]
 006D6998    mov         eax,dword ptr [esi+3D4];TLoopCtrlrTypeChangeDlg.lblDelete:TLabel
 006D699E    call        TControl.SetText
 006D69A3    push        6D70B0;'Cancel the change of loop controller type'
 006D69A8    lea         eax,[ebp-30]
 006D69AB    push        eax
 006D69AC    mov         ecx,6D7110;'sCancelLoopCtrlrChange'
 006D69B1    mov         edx,6D6A7C;'LCTypeChangeDlg'
 006D69B6    mov         eax,ebx
 006D69B8    mov         ebx,dword ptr [eax]
 006D69BA    call        dword ptr [ebx+4];TFXIniFile.ReadString
 006D69BD    mov         edx,dword ptr [ebp-30]
 006D69C0    mov         eax,dword ptr [esi+3D8];TLoopCtrlrTypeChangeDlg.lblCancel:TLabel
 006D69C6    call        TControl.SetText
 006D69CB    xor         eax,eax
 006D69CD    pop         edx
 006D69CE    pop         ecx
 006D69CF    pop         ecx
 006D69D0    mov         dword ptr fs:[eax],edx
 006D69D3    push        6D69ED
 006D69D8    lea         eax,[ebp-30]
 006D69DB    mov         edx,0C
 006D69E0    call        @UStrArrayClr
 006D69E5    ret
>006D69E6    jmp         @HandleFinally
>006D69EB    jmp         006D69D8
 006D69ED    pop         edi
 006D69EE    pop         esi
 006D69EF    pop         ebx
 006D69F0    mov         esp,ebp
 006D69F2    pop         ebp
 006D69F3    ret
*}
end;

Initialization
Finalization
//006D7140
{*
 006D7140    push        ebp
 006D7141    mov         ebp,esp
 006D7143    xor         eax,eax
 006D7145    push        ebp
 006D7146    push        6D71B7
 006D714B    push        dword ptr fs:[eax]
 006D714E    mov         dword ptr fs:[eax],esp
 006D7151    inc         dword ptr ds:[901F58]
>006D7157    jne         006D71A9
 006D7159    mov         eax,7C2EB4;^'Address settings of second loop of current loop controller will be deleted'
 006D715E    call        @UStrClr
 006D7163    mov         eax,7C2EB8;^'Address settings of current and subsequent loop controllers will be deleted...
 006D7168    call        @UStrClr
 006D716D    mov         eax,7C2EBC;^'Addresses of current LC loop controller can be converted to addresses of th...
 006D7172    call        @UStrClr
 006D7177    mov         eax,7C2EC0;^'Address settings of current loop controller will be deleted'
 006D717C    call        @UStrClr
 006D7181    mov         eax,7C2EC4;^'Changes to addres settings will be applied when the Panel Data view is clos...
 006D7186    call        @UStrClr
 006D718B    mov         eax,7C2EC8;^'Convert LC addresses to SLCB addresses'
 006D7190    call        @UStrClr
 006D7195    mov         eax,7C2ECC;^'Proceed with loop controller change and delete affected loops and addresses...
 006D719A    call        @UStrClr
 006D719F    mov         eax,7C2ED0;^'Cancel the change of loop controller type'
 006D71A4    call        @UStrClr
 006D71A9    xor         eax,eax
 006D71AB    pop         edx
 006D71AC    pop         ecx
 006D71AD    pop         ecx
 006D71AE    mov         dword ptr fs:[eax],edx
 006D71B1    push        6D71BE
 006D71B6    ret
>006D71B7    jmp         @HandleFinally
>006D71BC    jmp         006D71B6
 006D71BE    pop         ebp
 006D71BF    ret
*}
end.