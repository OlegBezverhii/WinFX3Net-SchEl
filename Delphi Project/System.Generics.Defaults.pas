//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit System.Generics.Defaults;

interface

uses
  SysUtils, Classes;

type
  TComparer<System.Actions.TContainedAction> = class(TInterfacedObject)
  published
    procedure TLicFile>.Compare(Left:TLicFile; Right:TLicFile);//0079EC18
    //procedure Actions.TContainedAction>.Default(?:?);//004B2E4C
  public
    procedure v0; virtual; abstract;//v0//00405554
  end;
    destructor Actions.TContainedAction>.Destroy();//004B2A64
    function Actions.TContainedAction>.GetEnumerator:TEnumerator<System.Actions.TContainedAction>;//004B2A88
    //procedure Actions.TContainedAction>.ToArray(?:?);//004B2A90
    function Actions.TContainedAction>.MoveNext:Boolean;//004B2B44
    procedure sub_004B2B94(?:TList<System.Actions.TContainedAction>);//004B2B94
    //procedure sub_004B2BA0(?:?; ?:?);//004B2BA0
    //procedure sub_004B2BAC(?:?; ?:?; ?:?);//004B2BAC
    procedure sub_004B2BBC;//004B2BBC
    //procedure sub_004B2BC4(?:?);//004B2BC4
    constructor sub_004B2BDC;//004B2BDC
    constructor sub_004B2C54(AComparer:IComparer<System.Actions.TContainedAction>);//004B2C54
    destructor Actions.TContainedAction>.Destroy();//004B2D04
    //procedure Actions.TContainedAction>.Error(Msg:string; Data:NativeInt; ?:?);//004B2D50
    procedure Actions.TContainedAction>.Add(Value:TContainedAction);//004B2D88
    //procedure Actions.TContainedAction>.ToArray(?:?);//004B2D98
    procedure Actions.TContainedAction>.GetEnumerator;//004B2DAC
    //function sub_004B2DBC(?:?):?;//004B2DBC
    procedure sub_004B2DD8;//004B2DD8
    procedure sub_004B2DE0;//004B2DE0
    constructor sub_004B2DE8(AList:TList<System.Actions.TContainedAction>);//004B2DE8
    function Actions.TContainedAction>.TEnumerator.MoveNext:Boolean;//004B2E2C
    procedure sub_004B3194;//004B3194

implementation

//004B2A64
destructor TEnumerable<System.Actions.TContainedAction>.Destroy();
begin
{*
 004B2A64    push        ebx
 004B2A65    push        esi
 004B2A66    call        @BeforeDestruction
 004B2A6B    mov         ebx,edx
 004B2A6D    mov         esi,eax
 004B2A6F    mov         dl,0FC
 004B2A71    and         dl,bl
 004B2A73    mov         eax,esi
 004B2A75    call        TObject.Destroy
 004B2A7A    test        bl,bl
>004B2A7C    jle         004B2A85
 004B2A7E    mov         eax,esi
 004B2A80    call        @ClassDestroy
 004B2A85    pop         esi
 004B2A86    pop         ebx
 004B2A87    ret
*}
end;

//004B2A88
function TEnumerable<System.Actions.TContainedAction>.GetEnumerator:TEnumerator<System.Actions.TContainedAction>;
begin
{*
 004B2A88    mov         edx,dword ptr [eax]
 004B2A8A    call        dword ptr [edx]
 004B2A8C    ret
*}
end;

//004B2A90
{*procedure TEnumerable<System.Actions.TContainedAction>.ToArray(?:?);
begin
 004B2A90    push        ebp
 004B2A91    mov         ebp,esp
 004B2A93    add         esp,0FFFFFFF4
 004B2A96    push        ebx
 004B2A97    mov         dword ptr [ebp-4],edx
 004B2A9A    mov         ebx,eax
 004B2A9C    mov         dl,1
 004B2A9E    mov         eax,[004B0968];TList<System.Actions.TContainedAction>
 004B2AA3    call        004B2BDC
 004B2AA8    mov         dword ptr [ebp-8],eax
 004B2AAB    xor         eax,eax
 004B2AAD    push        ebp
 004B2AAE    push        4B2B38
 004B2AB3    push        dword ptr fs:[eax]
 004B2AB6    mov         dword ptr fs:[eax],esp
 004B2AB9    mov         eax,ebx
 004B2ABB    call        TEnumerable<System.Actions.TContainedAction>.GetEnumerator
 004B2AC0    mov         dword ptr [ebp-0C],eax
 004B2AC3    xor         eax,eax
 004B2AC5    push        ebp
 004B2AC6    push        4B2B10
 004B2ACB    push        dword ptr fs:[eax]
 004B2ACE    mov         dword ptr fs:[eax],esp
>004B2AD1    jmp         004B2AE6
 004B2AD3    mov         eax,dword ptr [ebp-0C]
 004B2AD6    mov         edx,dword ptr [eax]
 004B2AD8    call        dword ptr [edx]
 004B2ADA    mov         ebx,eax
 004B2ADC    mov         edx,ebx
 004B2ADE    mov         eax,dword ptr [ebp-8]
 004B2AE1    call        TList<System.Actions.TContainedAction>.Add
 004B2AE6    mov         eax,dword ptr [ebp-0C]
 004B2AE9    call        TEnumerator<System.Actions.TContainedAction>.MoveNext
 004B2AEE    test        al,al
>004B2AF0    jne         004B2AD3
 004B2AF2    xor         eax,eax
 004B2AF4    pop         edx
 004B2AF5    pop         ecx
 004B2AF6    pop         ecx
 004B2AF7    mov         dword ptr fs:[eax],edx
 004B2AFA    push        4B2B17
 004B2AFF    cmp         dword ptr [ebp-0C],0
>004B2B03    je          004B2B0F
 004B2B05    mov         dl,1
 004B2B07    mov         eax,dword ptr [ebp-0C]
 004B2B0A    mov         ecx,dword ptr [eax]
 004B2B0C    call        dword ptr [ecx-4]
 004B2B0F    ret
>004B2B10    jmp         @HandleFinally
>004B2B15    jmp         004B2AFF
 004B2B17    mov         edx,dword ptr [ebp-4]
 004B2B1A    mov         eax,dword ptr [ebp-8]
 004B2B1D    call        TList<System.Actions.TContainedAction>.ToArray
 004B2B22    xor         eax,eax
 004B2B24    pop         edx
 004B2B25    pop         ecx
 004B2B26    pop         ecx
 004B2B27    mov         dword ptr fs:[eax],edx
 004B2B2A    push        4B2B3F
 004B2B2F    mov         eax,dword ptr [ebp-8]
 004B2B32    call        TObject.Free
 004B2B37    ret
>004B2B38    jmp         @HandleFinally
>004B2B3D    jmp         004B2B2F
 004B2B3F    pop         ebx
 004B2B40    mov         esp,ebp
 004B2B42    pop         ebp
 004B2B43    ret
end;*}

//004B2B44
function TEnumerator<System.Actions.TContainedAction>.MoveNext:Boolean;
begin
{*
 004B2B44    mov         edx,dword ptr [eax]
 004B2B46    call        dword ptr [edx+4]
 004B2B49    ret
*}
end;

//004B2B94
procedure sub_004B2B94(?:TList<System.Actions.TContainedAction>);
begin
{*
 004B2B94    add         eax,8
 004B2B97    call        004357A0
 004B2B9C    ret
*}
end;

//004B2BA0
{*procedure sub_004B2BA0(?:?; ?:?);
begin
 004B2BA0    push        ebx
 004B2BA1    mov         edx,dword ptr [edx]
 004B2BA3    mov         ebx,dword ptr [eax]
 004B2BA5    call        dword ptr [ebx+8]
 004B2BA8    pop         ebx
 004B2BA9    ret
end;*}

//004B2BAC
{*procedure sub_004B2BAC(?:?; ?:?; ?:?);
begin
 004B2BAC    push        ebx
 004B2BAD    mov         edx,dword ptr [edx]
 004B2BAF    mov         ecx,dword ptr [ecx]
 004B2BB1    mov         eax,dword ptr [eax+24]
 004B2BB4    mov         ebx,dword ptr [eax]
 004B2BB6    call        dword ptr [ebx+0C]
 004B2BB9    pop         ebx
 004B2BBA    ret
end;*}

//004B2BBC
procedure sub_004B2BBC;
begin
{*
 004B2BBC    call        TList<System.Actions.TContainedAction>.GetEnumerator
 004B2BC1    ret
*}
end;

//004B2BC4
{*procedure sub_004B2BC4(?:?);
begin
 004B2BC4    push        ebx
 004B2BC5    cmp         word ptr [eax+2A],0
>004B2BCA    je          004B2BD9
 004B2BCC    push        ecx
 004B2BCD    mov         ebx,eax
 004B2BCF    mov         ecx,edx
 004B2BD1    mov         edx,eax
 004B2BD3    mov         eax,dword ptr [ebx+2C]
 004B2BD6    call        dword ptr [ebx+28]
 004B2BD9    pop         ebx
 004B2BDA    ret
end;*}

//004B2BDC
constructor sub_004B2BDC;
begin
{*
 004B2BDC    push        ebp
 004B2BDD    mov         ebp,esp
 004B2BDF    push        0
 004B2BE1    push        ebx
 004B2BE2    push        esi
 004B2BE3    test        dl,dl
>004B2BE5    je          004B2BEF
 004B2BE7    add         esp,0FFFFFFF0
 004B2BEA    call        @ClassCreate
 004B2BEF    mov         ebx,edx
 004B2BF1    mov         esi,eax
 004B2BF3    xor         eax,eax
 004B2BF5    push        ebp
 004B2BF6    push        4B2C30
 004B2BFB    push        dword ptr fs:[eax]
 004B2BFE    mov         dword ptr fs:[eax],esp
 004B2C01    lea         edx,[ebp-4]
 004B2C04    mov         eax,[004B2F34];TComparer<System.Actions.TContainedAction>
 004B2C09    call        TComparer<System.Actions.TContainedAction>.Default
 004B2C0E    mov         ecx,dword ptr [ebp-4]
 004B2C11    xor         edx,edx
 004B2C13    mov         eax,esi
 004B2C15    call        004B2C54
 004B2C1A    xor         eax,eax
 004B2C1C    pop         edx
 004B2C1D    pop         ecx
 004B2C1E    pop         ecx
 004B2C1F    mov         dword ptr fs:[eax],edx
 004B2C22    push        4B2C37
 004B2C27    lea         eax,[ebp-4]
 004B2C2A    call        @IntfClear
 004B2C2F    ret
>004B2C30    jmp         @HandleFinally
>004B2C35    jmp         004B2C27
 004B2C37    mov         eax,esi
 004B2C39    test        bl,bl
>004B2C3B    je          004B2C4C
 004B2C3D    call        @AfterConstruction
 004B2C42    pop         dword ptr fs:[0]
 004B2C49    add         esp,0C
 004B2C4C    mov         eax,esi
 004B2C4E    pop         esi
 004B2C4F    pop         ebx
 004B2C50    pop         ecx
 004B2C51    pop         ebp
 004B2C52    ret
*}
end;

//004B2C54
constructor sub_004B2C54(AComparer:IComparer<System.Actions.TContainedAction>);
begin
{*
 004B2C54    push        ebp
 004B2C55    mov         ebp,esp
 004B2C57    push        0
 004B2C59    push        ebx
 004B2C5A    push        esi
 004B2C5B    push        edi
 004B2C5C    test        dl,dl
>004B2C5E    je          004B2C68
 004B2C60    add         esp,0FFFFFFF0
 004B2C63    call        @ClassCreate
 004B2C68    mov         esi,ecx
 004B2C6A    mov         ebx,edx
 004B2C6C    mov         edi,eax
 004B2C6E    xor         eax,eax
 004B2C70    push        ebp
 004B2C71    push        4B2CDF
 004B2C76    push        dword ptr fs:[eax]
 004B2C79    mov         dword ptr fs:[eax],esp
 004B2C7C    xor         edx,edx
 004B2C7E    mov         eax,edi
 004B2C80    call        TObject.Create
 004B2C85    mov         dword ptr [edi+14],edi;TList<System.Actions.TContainedAction>.FOnNotify:TCollectionNotif...
 004B2C88    mov         dword ptr [edi+10],4B2BA0;TList<System.Actions.TContainedAction>.FOnNotify:TCollectionNo...
 004B2C8F    mov         dword ptr [edi+1C],edi
 004B2C92    mov         dword ptr [edi+18],4B2BAC;sub_004B2BAC
 004B2C99    mov         eax,[004B054C];TList<System.Actions.TContainedAction>.arrayofT
 004B2C9E    mov         dword ptr [edi+0C],eax;TList<System.Actions.TContainedAction>.FComparer:IComparer<System...
 004B2CA1    lea         eax,[edi+24]
 004B2CA4    mov         edx,esi
 004B2CA6    call        @IntfCopy
 004B2CAB    cmp         dword ptr [edi+24],0
>004B2CAF    jne         004B2CC9
 004B2CB1    lea         edx,[ebp-4]
 004B2CB4    mov         eax,[004B2F34];TComparer<System.Actions.TContainedAction>
 004B2CB9    call        TComparer<System.Actions.TContainedAction>.Default
 004B2CBE    mov         edx,dword ptr [ebp-4]
 004B2CC1    lea         eax,[edi+24]
 004B2CC4    call        @IntfCopy
 004B2CC9    xor         eax,eax
 004B2CCB    pop         edx
 004B2CCC    pop         ecx
 004B2CCD    pop         ecx
 004B2CCE    mov         dword ptr fs:[eax],edx
 004B2CD1    push        4B2CE6
 004B2CD6    lea         eax,[ebp-4]
 004B2CD9    call        @IntfClear
 004B2CDE    ret
>004B2CDF    jmp         @HandleFinally
>004B2CE4    jmp         004B2CD6
 004B2CE6    mov         eax,edi
 004B2CE8    test        bl,bl
>004B2CEA    je          004B2CFB
 004B2CEC    call        @AfterConstruction
 004B2CF1    pop         dword ptr fs:[0]
 004B2CF8    add         esp,0C
 004B2CFB    mov         eax,edi
 004B2CFD    pop         edi
 004B2CFE    pop         esi
 004B2CFF    pop         ebx
 004B2D00    pop         ecx
 004B2D01    pop         ebp
 004B2D02    ret
*}
end;

//004B2D04
destructor TList<System.Actions.TContainedAction>.Destroy();
begin
{*
 004B2D04    push        ebx
 004B2D05    push        esi
 004B2D06    call        @BeforeDestruction
 004B2D0B    mov         ebx,edx
 004B2D0D    mov         esi,eax
 004B2D0F    cmp         dword ptr [esi+8],0;TList<System.Actions.TContainedAction>.FCount:Integer
>004B2D13    jle         004B2D1E
 004B2D15    xor         edx,edx
 004B2D17    mov         eax,esi
 004B2D19    call        004B2B94
 004B2D1E    push        0
 004B2D20    lea         eax,[esi+20]
 004B2D23    mov         ecx,1
 004B2D28    mov         edx,dword ptr ds:[4B054C];TList<System.Actions.TContainedAction>.arrayofT
 004B2D2E    call        @DynArraySetLength
 004B2D33    add         esp,4
 004B2D36    mov         dl,0FC
 004B2D38    and         dl,bl
 004B2D3A    mov         eax,esi
 004B2D3C    call        TEnumerable<System.Actions.TContainedAction>.Destroy
 004B2D41    test        bl,bl
>004B2D43    jle         004B2D4C
 004B2D45    mov         eax,esi
 004B2D47    call        @ClassDestroy
 004B2D4C    pop         esi
 004B2D4D    pop         ebx
 004B2D4E    ret
*}
end;

//004B2D50
{*procedure TList<System.Actions.TContainedAction>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 004B2D50    push        ebp
 004B2D51    mov         ebp,esp
 004B2D53    add         esp,0FFFFFFF0
 004B2D56    mov         dword ptr [ebp-8],ecx
 004B2D59    mov         dword ptr [ebp-4],edx
 004B2D5C    push        dword ptr [ebp+4]
 004B2D5F    mov         eax,dword ptr [ebp-8]
 004B2D62    mov         dword ptr [ebp-10],eax
 004B2D65    mov         byte ptr [ebp-0C],0
 004B2D69    lea         eax,[ebp-10]
 004B2D6C    push        eax
 004B2D6D    push        0
 004B2D6F    mov         ecx,dword ptr [ebp-4]
 004B2D72    mov         dl,1
 004B2D74    mov         eax,[004180BC];EListError
 004B2D79    call        Exception.CreateFmt;EListError.Create
>004B2D7E    jmp         @RaiseExcept
end;*}

//004B2D88
procedure TList<System.Actions.TContainedAction>.Add(Value:TContainedAction);
begin
{*
 004B2D88    push        ecx
 004B2D89    mov         dword ptr [esp],edx
 004B2D8C    mov         edx,esp
 004B2D8E    add         eax,8
 004B2D91    call        0043489C
 004B2D96    pop         edx
 004B2D97    ret
*}
end;

//004B2D98
{*procedure TList<System.Actions.TContainedAction>.ToArray(?:?);
begin
 004B2D98    push        ecx
 004B2D99    mov         dword ptr [esp],edx
 004B2D9C    mov         edx,dword ptr [esp]
 004B2D9F    add         eax,8
 004B2DA2    call        00435980
 004B2DA7    pop         edx
 004B2DA8    ret
end;*}

//004B2DAC
procedure TList<System.Actions.TContainedAction>.GetEnumerator;
begin
{*
 004B2DAC    mov         ecx,eax
 004B2DAE    mov         dl,1
 004B2DB0    mov         eax,[004B07A4];TList<System.Actions.TContainedAction>.TEnumerator
 004B2DB5    call        004B2DE8
 004B2DBA    ret
*}
end;

//004B2DBC
{*function sub_004B2DBC(?:?):?;
begin
 004B2DBC    push        ebx
 004B2DBD    push        esi
 004B2DBE    mov         ebx,dword ptr [eax+4]
 004B2DC1    mov         esi,dword ptr [eax+8]
 004B2DC4    lea         eax,[ebx+8]
 004B2DC7    mov         edx,esi
 004B2DC9    call        00434534
 004B2DCE    mov         eax,dword ptr [ebx+20]
 004B2DD1    mov         eax,dword ptr [eax+esi*4]
 004B2DD4    pop         esi
 004B2DD5    pop         ebx
 004B2DD6    ret
end;*}

//004B2DD8
procedure sub_004B2DD8;
begin
{*
 004B2DD8    call        004B2DBC
 004B2DDD    ret
*}
end;

//004B2DE0
procedure sub_004B2DE0;
begin
{*
 004B2DE0    call        TList<System.Actions.TContainedAction>.TEnumerator.MoveNext
 004B2DE5    ret
*}
end;

//004B2DE8
constructor sub_004B2DE8(AList:TList<System.Actions.TContainedAction>);
begin
{*
 004B2DE8    push        ebx
 004B2DE9    push        esi
 004B2DEA    push        edi
 004B2DEB    test        dl,dl
>004B2DED    je          004B2DF7
 004B2DEF    add         esp,0FFFFFFF0
 004B2DF2    call        @ClassCreate
 004B2DF7    mov         esi,ecx
 004B2DF9    mov         ebx,edx
 004B2DFB    mov         edi,eax
 004B2DFD    xor         edx,edx
 004B2DFF    mov         eax,edi
 004B2E01    call        TObject.Create
 004B2E06    mov         dword ptr [edi+4],esi;TList<System.Actions.TContainedAction>.TEnumerator.FList:TList<Sys...
 004B2E09    mov         dword ptr [edi+8],0FFFFFFFF
 004B2E10    mov         eax,edi
 004B2E12    test        bl,bl
>004B2E14    je          004B2E25
 004B2E16    call        @AfterConstruction
 004B2E1B    pop         dword ptr fs:[0]
 004B2E22    add         esp,0C
 004B2E25    mov         eax,edi
 004B2E27    pop         edi
 004B2E28    pop         esi
 004B2E29    pop         ebx
 004B2E2A    ret
*}
end;

//004B2E2C
function TList<System.Actions.TContainedAction>.TEnumerator.MoveNext:Boolean;
begin
{*
 004B2E2C    mov         edx,dword ptr [eax+4]
 004B2E2F    mov         edx,dword ptr [edx+8]
 004B2E32    cmp         edx,dword ptr [eax+8]
>004B2E35    jg          004B2E3A
 004B2E37    xor         eax,eax
 004B2E39    ret
 004B2E3A    inc         dword ptr [eax+8]
 004B2E3D    mov         edx,dword ptr [eax+4]
 004B2E40    mov         edx,dword ptr [edx+8]
 004B2E43    cmp         edx,dword ptr [eax+8]
 004B2E46    setg        al
 004B2E49    ret
*}
end;

//004B2E4C
{*procedure TComparer<System.Actions.TContainedAction>.Default(?:?);
begin
 004B2E4C    push        ebx
 004B2E4D    mov         ebx,edx
 004B2E4F    mov         ecx,4
 004B2E54    mov         edx,dword ptr ds:[4AF5CC];TContainedAction
 004B2E5A    xor         eax,eax
 004B2E5C    call        _LookupVtableInfo
 004B2E61    mov         edx,eax
 004B2E63    mov         eax,ebx
 004B2E65    call        @IntfCopy
 004B2E6A    pop         ebx
 004B2E6B    ret
end;*}

//004B3194
procedure sub_004B3194;
begin
{*
 004B3194    jmp         dword ptr ds:[90822C]
*}
end;

Initialization
//0079C7C8
{*
 0079C7C8    sub         dword ptr ds:[7CA400],1
>0079C7CF    jae         0079C7F9
 0079C7D1    mov         dword ptr ds:[7CA408],0;gvar_007CA408
 0079C7DB    mov         dword ptr ds:[7CA40C],80000000;gvar_007CA40C
 0079C7E5    mov         dword ptr ds:[7CA410],0FFFFFFFF;gvar_007CA410
 0079C7EF    mov         dword ptr ds:[7CA414],7FFFFFFF;gvar_007CA414
 0079C7F9    ret
*}
Finalization
end.