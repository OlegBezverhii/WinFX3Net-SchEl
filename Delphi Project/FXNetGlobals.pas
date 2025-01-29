//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit FXNetGlobals;

interface

uses
  SysUtils, Classes;

type
  TPC_LANG = (PC_GB, PC_FI, PC_SE, PC_NO, PC_DK, PC_FL, PC_FR, PC_ES, PC_IT, PC_EE, PC_LV, PC_LT, PC_RU, PC_TR, PC_NL);
  TMsgData = array [1..255] of Byte;
  TToolInfoRec = TToolInfoRec = record//size=C
VMajor:Word;//f0
VMinor:Word;//f2
VRelease:Word;//f4
VBuild:Word;//f6
VFlags:Cardinal;//f8
end;;
  TToolInfo = class(TObject)
  published
    function GetVersionInfo:Boolean;//005DDD58
  public
    .FVersionInfo:TToolInfoRec;//f4
    f6:word;//f6
    f8:word;//f8
    fA:word;//fA
    fC:dword;//fC
  end;
    procedure sub_005DD41C(?:TList<System.Integer>);//005DD41C
    //procedure sub_005DD428(?:?; ?:?);//005DD428
    //procedure sub_005DD434(?:?; ?:?; ?:?);//005DD434
    procedure sub_005DD444;//005DD444
    //procedure sub_005DD44C(?:?);//005DD44C
    constructor Classes.TShortCut>.Create();//005DD464
    constructor sub_005DD4DC(AComparer:IComparer<System.Integer>);//005DD4DC
    destructor Integer>.Destroy();//005DD58C
    //procedure Integer>.Error(Msg:string; Data:NativeInt; ?:?);//005DD5D8
    function Integer>.Add(Value:Integer):Integer;//005DD610
    function Integer>.ToArray:TArray<System.Integer>;//005DD620
    procedure Integer>.GetEnumerator;//005DD634
    //function sub_005DD644(?:?):?;//005DD644
    procedure sub_005DD660;//005DD660
    procedure sub_005DD668;//005DD668
    constructor sub_005DD670(AList:TList<System.Integer>);//005DD670
    function Integer>.TEnumerator.MoveNext:Boolean;//005DD6B4
    //procedure sub_005DDB14(?:UnicodeString; ?:?; ?:?; ?:?);//005DDB14
    //procedure sub_005DDC1C(?:?; ?:?);//005DDC1C
    //procedure sub_005DDC74(?:?; ?:?);//005DDC74

implementation

//005DD41C
procedure sub_005DD41C(?:TList<System.Integer>);
begin
{*
 005DD41C    add         eax,8
 005DD41F    call        004357A0
 005DD424    ret
*}
end;

//005DD428
{*procedure sub_005DD428(?:?; ?:?);
begin
 005DD428    push        ebx
 005DD429    mov         edx,dword ptr [edx]
 005DD42B    mov         ebx,dword ptr [eax]
 005DD42D    call        dword ptr [ebx+8]
 005DD430    pop         ebx
 005DD431    ret
end;*}

//005DD434
{*procedure sub_005DD434(?:?; ?:?; ?:?);
begin
 005DD434    push        ebx
 005DD435    mov         edx,dword ptr [edx]
 005DD437    mov         ecx,dword ptr [ecx]
 005DD439    mov         eax,dword ptr [eax+24]
 005DD43C    mov         ebx,dword ptr [eax]
 005DD43E    call        dword ptr [ebx+0C]
 005DD441    pop         ebx
 005DD442    ret
end;*}

//005DD444
procedure sub_005DD444;
begin
{*
 005DD444    call        TList<System.Integer>.GetEnumerator
 005DD449    ret
*}
end;

//005DD44C
{*procedure sub_005DD44C(?:?);
begin
 005DD44C    push        ebx
 005DD44D    cmp         word ptr [eax+2A],0
>005DD452    je          005DD461
 005DD454    push        ecx
 005DD455    mov         ebx,eax
 005DD457    mov         ecx,edx
 005DD459    mov         edx,eax
 005DD45B    mov         eax,dword ptr [ebx+2C]
 005DD45E    call        dword ptr [ebx+28]
 005DD461    pop         ebx
 005DD462    ret
end;*}

//005DD464
constructor TList<System.Classes.TShortCut>.Create();
begin
{*
 005DD464    push        ebp
 005DD465    mov         ebp,esp
 005DD467    push        0
 005DD469    push        ebx
 005DD46A    push        esi
 005DD46B    test        dl,dl
>005DD46D    je          005DD477
 005DD46F    add         esp,0FFFFFFF0
 005DD472    call        @ClassCreate
 005DD477    mov         ebx,edx
 005DD479    mov         esi,eax
 005DD47B    xor         eax,eax
 005DD47D    push        ebp
 005DD47E    push        5DD4B8
 005DD483    push        dword ptr fs:[eax]
 005DD486    mov         dword ptr fs:[eax],esp
 005DD489    lea         edx,[ebp-4]
 005DD48C    mov         eax,[004AE664];TComparer<System.Integer>
 005DD491    call        TComparer<System.Integer>.Default
 005DD496    mov         ecx,dword ptr [ebp-4]
 005DD499    xor         edx,edx
 005DD49B    mov         eax,esi
 005DD49D    call        005DD4DC
 005DD4A2    xor         eax,eax
 005DD4A4    pop         edx
 005DD4A5    pop         ecx
 005DD4A6    pop         ecx
 005DD4A7    mov         dword ptr fs:[eax],edx
 005DD4AA    push        5DD4BF
 005DD4AF    lea         eax,[ebp-4]
 005DD4B2    call        @IntfClear
 005DD4B7    ret
>005DD4B8    jmp         @HandleFinally
>005DD4BD    jmp         005DD4AF
 005DD4BF    mov         eax,esi
 005DD4C1    test        bl,bl
>005DD4C3    je          005DD4D4
 005DD4C5    call        @AfterConstruction
 005DD4CA    pop         dword ptr fs:[0]
 005DD4D1    add         esp,0C
 005DD4D4    mov         eax,esi
 005DD4D6    pop         esi
 005DD4D7    pop         ebx
 005DD4D8    pop         ecx
 005DD4D9    pop         ebp
 005DD4DA    ret
*}
end;

//005DD4DC
constructor sub_005DD4DC(AComparer:IComparer<System.Integer>);
begin
{*
 005DD4DC    push        ebp
 005DD4DD    mov         ebp,esp
 005DD4DF    push        0
 005DD4E1    push        ebx
 005DD4E2    push        esi
 005DD4E3    push        edi
 005DD4E4    test        dl,dl
>005DD4E6    je          005DD4F0
 005DD4E8    add         esp,0FFFFFFF0
 005DD4EB    call        @ClassCreate
 005DD4F0    mov         esi,ecx
 005DD4F2    mov         ebx,edx
 005DD4F4    mov         edi,eax
 005DD4F6    xor         eax,eax
 005DD4F8    push        ebp
 005DD4F9    push        5DD567
 005DD4FE    push        dword ptr fs:[eax]
 005DD501    mov         dword ptr fs:[eax],esp
 005DD504    xor         edx,edx
 005DD506    mov         eax,edi
 005DD508    call        TObject.Create
 005DD50D    mov         dword ptr [edi+14],edi;TList<System.Integer>.FOnNotify:TCollectionNotifyEvent<System.Int...
 005DD510    mov         dword ptr [edi+10],5DD428;TList<System.Integer>.FOnNotify:TCollectionNotifyEvent<System....
 005DD517    mov         dword ptr [edi+1C],edi
 005DD51A    mov         dword ptr [edi+18],5DD434;sub_005DD434
 005DD521    mov         eax,[005D8524];TList<System.Integer>.arrayofT
 005DD526    mov         dword ptr [edi+0C],eax;TList<System.Integer>.FComparer:IComparer<System.Integer>
 005DD529    lea         eax,[edi+24]
 005DD52C    mov         edx,esi
 005DD52E    call        @IntfCopy
 005DD533    cmp         dword ptr [edi+24],0
>005DD537    jne         005DD551
 005DD539    lea         edx,[ebp-4]
 005DD53C    mov         eax,[004AE664];TComparer<System.Integer>
 005DD541    call        TComparer<System.Integer>.Default
 005DD546    mov         edx,dword ptr [ebp-4]
 005DD549    lea         eax,[edi+24]
 005DD54C    call        @IntfCopy
 005DD551    xor         eax,eax
 005DD553    pop         edx
 005DD554    pop         ecx
 005DD555    pop         ecx
 005DD556    mov         dword ptr fs:[eax],edx
 005DD559    push        5DD56E
 005DD55E    lea         eax,[ebp-4]
 005DD561    call        @IntfClear
 005DD566    ret
>005DD567    jmp         @HandleFinally
>005DD56C    jmp         005DD55E
 005DD56E    mov         eax,edi
 005DD570    test        bl,bl
>005DD572    je          005DD583
 005DD574    call        @AfterConstruction
 005DD579    pop         dword ptr fs:[0]
 005DD580    add         esp,0C
 005DD583    mov         eax,edi
 005DD585    pop         edi
 005DD586    pop         esi
 005DD587    pop         ebx
 005DD588    pop         ecx
 005DD589    pop         ebp
 005DD58A    ret
*}
end;

//005DD58C
destructor TList<System.Integer>.Destroy();
begin
{*
 005DD58C    push        ebx
 005DD58D    push        esi
 005DD58E    call        @BeforeDestruction
 005DD593    mov         ebx,edx
 005DD595    mov         esi,eax
 005DD597    cmp         dword ptr [esi+8],0;TList<System.Integer>.FCount:Integer
>005DD59B    jle         005DD5A6
 005DD59D    xor         edx,edx
 005DD59F    mov         eax,esi
 005DD5A1    call        005DD41C
 005DD5A6    push        0
 005DD5A8    lea         eax,[esi+20]
 005DD5AB    mov         ecx,1
 005DD5B0    mov         edx,dword ptr ds:[5D8524];TList<System.Integer>.arrayofT
 005DD5B6    call        @DynArraySetLength
 005DD5BB    add         esp,4
 005DD5BE    mov         dl,0FC
 005DD5C0    and         dl,bl
 005DD5C2    mov         eax,esi
 005DD5C4    call        TEnumerable<System.Integer>.Destroy
 005DD5C9    test        bl,bl
>005DD5CB    jle         005DD5D4
 005DD5CD    mov         eax,esi
 005DD5CF    call        @ClassDestroy
 005DD5D4    pop         esi
 005DD5D5    pop         ebx
 005DD5D6    ret
*}
end;

//005DD5D8
{*procedure TList<System.Integer>.Error(Msg:string; Data:NativeInt; ?:?);
begin
 005DD5D8    push        ebp
 005DD5D9    mov         ebp,esp
 005DD5DB    add         esp,0FFFFFFF0
 005DD5DE    mov         dword ptr [ebp-8],ecx
 005DD5E1    mov         dword ptr [ebp-4],edx
 005DD5E4    push        dword ptr [ebp+4]
 005DD5E7    mov         eax,dword ptr [ebp-8]
 005DD5EA    mov         dword ptr [ebp-10],eax
 005DD5ED    mov         byte ptr [ebp-0C],0
 005DD5F1    lea         eax,[ebp-10]
 005DD5F4    push        eax
 005DD5F5    push        0
 005DD5F7    mov         ecx,dword ptr [ebp-4]
 005DD5FA    mov         dl,1
 005DD5FC    mov         eax,[004180BC];EListError
 005DD601    call        Exception.CreateFmt;EListError.Create
>005DD606    jmp         @RaiseExcept
end;*}

//005DD610
function TList<System.Integer>.Add(Value:Integer):Integer;
begin
{*
 005DD610    push        ecx
 005DD611    mov         dword ptr [esp],edx
 005DD614    mov         edx,esp
 005DD616    add         eax,8
 005DD619    call        0043489C
 005DD61E    pop         edx
 005DD61F    ret
*}
end;

//005DD620
function TList<System.Integer>.ToArray:TArray<System.Integer>;
begin
{*
 005DD620    push        ecx
 005DD621    mov         dword ptr [esp],edx
 005DD624    mov         edx,dword ptr [esp]
 005DD627    add         eax,8
 005DD62A    call        00435980
 005DD62F    pop         edx
 005DD630    ret
*}
end;

//005DD634
procedure TList<System.Integer>.GetEnumerator;
begin
{*
 005DD634    mov         ecx,eax
 005DD636    mov         dl,1
 005DD638    mov         eax,[005D8674];TList<System.Integer>.TEnumerator
 005DD63D    call        005DD670
 005DD642    ret
*}
end;

//005DD644
{*function sub_005DD644(?:?):?;
begin
 005DD644    push        ebx
 005DD645    push        esi
 005DD646    mov         ebx,dword ptr [eax+4]
 005DD649    mov         esi,dword ptr [eax+8]
 005DD64C    lea         eax,[ebx+8]
 005DD64F    mov         edx,esi
 005DD651    call        00434534
 005DD656    mov         eax,dword ptr [ebx+20]
 005DD659    mov         eax,dword ptr [eax+esi*4]
 005DD65C    pop         esi
 005DD65D    pop         ebx
 005DD65E    ret
end;*}

//005DD660
procedure sub_005DD660;
begin
{*
 005DD660    call        005DD644
 005DD665    ret
*}
end;

//005DD668
procedure sub_005DD668;
begin
{*
 005DD668    call        TList<System.Integer>.TEnumerator.MoveNext
 005DD66D    ret
*}
end;

//005DD670
constructor sub_005DD670(AList:TList<System.Integer>);
begin
{*
 005DD670    push        ebx
 005DD671    push        esi
 005DD672    push        edi
 005DD673    test        dl,dl
>005DD675    je          005DD67F
 005DD677    add         esp,0FFFFFFF0
 005DD67A    call        @ClassCreate
 005DD67F    mov         esi,ecx
 005DD681    mov         ebx,edx
 005DD683    mov         edi,eax
 005DD685    xor         edx,edx
 005DD687    mov         eax,edi
 005DD689    call        TObject.Create
 005DD68E    mov         dword ptr [edi+4],esi;TList<System.Integer>.TEnumerator.FList:TList<System.Integer>
 005DD691    mov         dword ptr [edi+8],0FFFFFFFF
 005DD698    mov         eax,edi
 005DD69A    test        bl,bl
>005DD69C    je          005DD6AD
 005DD69E    call        @AfterConstruction
 005DD6A3    pop         dword ptr fs:[0]
 005DD6AA    add         esp,0C
 005DD6AD    mov         eax,edi
 005DD6AF    pop         edi
 005DD6B0    pop         esi
 005DD6B1    pop         ebx
 005DD6B2    ret
*}
end;

//005DD6B4
function TList<System.Integer>.TEnumerator.MoveNext:Boolean;
begin
{*
 005DD6B4    mov         edx,dword ptr [eax+4]
 005DD6B7    mov         edx,dword ptr [edx+8]
 005DD6BA    cmp         edx,dword ptr [eax+8]
>005DD6BD    jg          005DD6C2
 005DD6BF    xor         eax,eax
 005DD6C1    ret
 005DD6C2    inc         dword ptr [eax+8]
 005DD6C5    mov         edx,dword ptr [eax+4]
 005DD6C8    mov         edx,dword ptr [edx+8]
 005DD6CB    cmp         edx,dword ptr [eax+8]
 005DD6CE    setg        al
 005DD6D1    ret
*}
end;

//005DDB14
{*procedure sub_005DDB14(?:UnicodeString; ?:?; ?:?; ?:?);
begin
 005DDB14    push        ebp
 005DDB15    mov         ebp,esp
 005DDB17    push        0
 005DDB19    push        0
 005DDB1B    push        0
 005DDB1D    push        0
 005DDB1F    push        0
 005DDB21    push        ebx
 005DDB22    push        esi
 005DDB23    push        edi
 005DDB24    mov         byte ptr [ebp-6],cl
 005DDB27    mov         byte ptr [ebp-5],dl
 005DDB2A    mov         dword ptr [ebp-4],eax
 005DDB2D    mov         edi,dword ptr [ebp+8]
 005DDB30    xor         eax,eax
 005DDB32    push        ebp
 005DDB33    push        5DDC0C
 005DDB38    push        dword ptr fs:[eax]
 005DDB3B    mov         dword ptr fs:[eax],esp
 005DDB3E    mov         eax,edi
 005DDB40    call        @LStrClr
 005DDB45    mov         eax,dword ptr [ebp-4]
 005DDB48    test        eax,eax
>005DDB4A    je          005DDB51
 005DDB4C    sub         eax,4
 005DDB4F    mov         eax,dword ptr [eax]
 005DDB51    mov         ebx,eax
 005DDB53    test        ebx,ebx
>005DDB55    jle         005DDBF1
 005DDB5B    mov         esi,1
 005DDB60    mov         eax,dword ptr [ebp-4]
 005DDB63    dec         esi
 005DDB64    test        eax,eax
>005DDB66    je          005DDB6D
 005DDB68    cmp         esi,dword ptr [eax-4]
>005DDB6B    jb          005DDB72
 005DDB6D    call        @BoundErr
 005DDB72    inc         esi
 005DDB73    movzx       eax,byte ptr [eax+esi-1]
 005DDB78    sub         al,0A
>005DDB7A    je          005DDB9D
 005DDB7C    sub         al,3
>005DDB7E    jne         005DDBBA
 005DDB80    lea         eax,[ebp-0C]
 005DDB83    movzx       edx,byte ptr [ebp-5]
 005DDB87    mov         ecx,0
 005DDB8C    call        @LStrFromChar
 005DDB91    mov         edx,dword ptr [ebp-0C]
 005DDB94    mov         eax,edi
 005DDB96    call        @LStrCat
>005DDB9B    jmp         005DDBE9
 005DDB9D    lea         eax,[ebp-10]
 005DDBA0    movzx       edx,byte ptr [ebp-6]
 005DDBA4    mov         ecx,0
 005DDBA9    call        @LStrFromChar
 005DDBAE    mov         edx,dword ptr [ebp-10]
 005DDBB1    mov         eax,edi
 005DDBB3    call        @LStrCat
>005DDBB8    jmp         005DDBE9
 005DDBBA    lea         eax,[ebp-14]
 005DDBBD    mov         edx,dword ptr [ebp-4]
 005DDBC0    dec         esi
 005DDBC1    test        edx,edx
>005DDBC3    je          005DDBCA
 005DDBC5    cmp         esi,dword ptr [edx-4]
>005DDBC8    jb          005DDBCF
 005DDBCA    call        @BoundErr
 005DDBCF    inc         esi
 005DDBD0    movzx       edx,byte ptr [edx+esi-1]
 005DDBD5    mov         ecx,0
 005DDBDA    call        @LStrFromChar
 005DDBDF    mov         edx,dword ptr [ebp-14]
 005DDBE2    mov         eax,edi
 005DDBE4    call        @LStrCat
 005DDBE9    inc         esi
 005DDBEA    dec         ebx
>005DDBEB    jne         005DDB60
 005DDBF1    xor         eax,eax
 005DDBF3    pop         edx
 005DDBF4    pop         ecx
 005DDBF5    pop         ecx
 005DDBF6    mov         dword ptr fs:[eax],edx
 005DDBF9    push        5DDC13
 005DDBFE    lea         eax,[ebp-14]
 005DDC01    mov         edx,3
 005DDC06    call        @LStrArrayClr
 005DDC0B    ret
>005DDC0C    jmp         @HandleFinally
>005DDC11    jmp         005DDBFE
 005DDC13    pop         edi
 005DDC14    pop         esi
 005DDC15    pop         ebx
 005DDC16    mov         esp,ebp
 005DDC18    pop         ebp
 005DDC19    ret         4
end;*}

//005DDC1C
{*procedure sub_005DDC1C(?:?; ?:?);
begin
 005DDC1C    push        ebx
 005DDC1D    push        esi
 005DDC1E    add         esp,0FFFFFFF0
 005DDC21    mov         esi,edx
 005DDC23    mov         ebx,eax
 005DDC25    push        esi
 005DDC26    movzx       eax,word ptr [ebx+4]
 005DDC2A    mov         dword ptr [esp+4],eax
 005DDC2E    mov         byte ptr [esp+8],0
 005DDC33    movzx       eax,word ptr [ebx+6]
 005DDC37    mov         dword ptr [esp+0C],eax
 005DDC3B    mov         byte ptr [esp+10],0
 005DDC40    lea         edx,[esp+4]
 005DDC44    mov         ecx,1
 005DDC49    mov         eax,5DDC68;'%d.%d'
 005DDC4E    call        Format
 005DDC53    add         esp,10
 005DDC56    pop         esi
 005DDC57    pop         ebx
 005DDC58    ret
end;*}

//005DDC74
{*procedure sub_005DDC74(?:?; ?:?);
begin
 005DDC74    push        ebx
 005DDC75    push        esi
 005DDC76    add         esp,0FFFFFFC8
 005DDC79    mov         esi,edx
 005DDC7B    mov         ebx,eax
 005DDC7D    mov         eax,dword ptr [ebx+0C]
 005DDC80    and         eax,2
 005DDC83    cmp         eax,2
>005DDC86    jne         005DDCD2
 005DDC88    push        esi
 005DDC89    movzx       eax,word ptr [ebx+4]
 005DDC8D    mov         dword ptr [esp+4],eax
 005DDC91    mov         byte ptr [esp+8],0
 005DDC96    movzx       eax,word ptr [ebx+6]
 005DDC9A    mov         dword ptr [esp+0C],eax
 005DDC9E    mov         byte ptr [esp+10],0
 005DDCA3    movzx       eax,word ptr [ebx+8]
 005DDCA7    mov         dword ptr [esp+14],eax
 005DDCAB    mov         byte ptr [esp+18],0
 005DDCB0    movzx       eax,word ptr [ebx+0A]
 005DDCB4    mov         dword ptr [esp+1C],eax
 005DDCB8    mov         byte ptr [esp+20],0
 005DDCBD    lea         edx,[esp+4]
 005DDCC1    mov         ecx,3
 005DDCC6    mov         eax,5DDD20;'%d.%d.%d.%d'
 005DDCCB    call        Format
>005DDCD0    jmp         005DDD0D
 005DDCD2    push        esi
 005DDCD3    movzx       eax,word ptr [ebx+4]
 005DDCD7    mov         dword ptr [esp+24],eax
 005DDCDB    mov         byte ptr [esp+28],0
 005DDCE0    movzx       eax,word ptr [ebx+6]
 005DDCE4    mov         dword ptr [esp+2C],eax
 005DDCE8    mov         byte ptr [esp+30],0
 005DDCED    movzx       eax,word ptr [ebx+8]
 005DDCF1    mov         dword ptr [esp+34],eax
 005DDCF5    mov         byte ptr [esp+38],0
 005DDCFA    lea         edx,[esp+24]
 005DDCFE    mov         ecx,2
 005DDD03    mov         eax,5DDD44;'%d.%d.%d'
 005DDD08    call        Format
 005DDD0D    add         esp,38
 005DDD10    pop         esi
 005DDD11    pop         ebx
 005DDD12    ret
end;*}

//005DDD58
function TToolInfo.GetVersionInfo:Boolean;
begin
{*
 005DDD58    push        ebp
 005DDD59    mov         ebp,esp
 005DDD5B    add         esp,0FFFFFFEC
 005DDD5E    push        ebx
 005DDD5F    push        esi
 005DDD60    push        edi
 005DDD61    xor         edx,edx
 005DDD63    mov         dword ptr [ebp-4],edx
 005DDD66    mov         esi,eax
 005DDD68    xor         eax,eax
 005DDD6A    push        ebp
 005DDD6B    push        5DDE52
 005DDD70    push        dword ptr fs:[eax]
 005DDD73    mov         dword ptr fs:[eax],esp
 005DDD76    lea         edx,[ebp-4]
 005DDD79    xor         eax,eax
 005DDD7B    call        ParamStr
 005DDD80    lea         eax,[ebp-0C]
 005DDD83    push        eax
 005DDD84    mov         eax,dword ptr [ebp-4]
 005DDD87    call        @UStrToPWChar
 005DDD8C    mov         edi,eax
 005DDD8E    push        edi
 005DDD8F    call        version.GetFileVersionInfoSizeW
 005DDD94    mov         ebx,eax
 005DDD96    test        ebx,ebx
>005DDD98    jne         005DDDA1
 005DDD9A    xor         ebx,ebx
>005DDD9C    jmp         005DDE3C
 005DDDA1    mov         eax,ebx
 005DDDA3    call        @GetMem
 005DDDA8    mov         dword ptr [ebp-14],eax
 005DDDAB    xor         edx,edx
 005DDDAD    push        ebp
 005DDDAE    push        5DDE33
 005DDDB3    push        dword ptr fs:[edx]
 005DDDB6    mov         dword ptr fs:[edx],esp
 005DDDB9    mov         eax,dword ptr [ebp-14]
 005DDDBC    push        eax
 005DDDBD    push        ebx
 005DDDBE    mov         eax,dword ptr [ebp-0C]
 005DDDC1    push        eax
 005DDDC2    push        edi
 005DDDC3    call        version.GetFileVersionInfoW
 005DDDC8    test        eax,eax
>005DDDCA    je          005DDE1D
 005DDDCC    lea         eax,[ebp-8]
 005DDDCF    push        eax
 005DDDD0    lea         eax,[ebp-10]
 005DDDD3    push        eax
 005DDDD4    push        5DDE64;'\'
 005DDDD9    mov         eax,dword ptr [ebp-14]
 005DDDDC    push        eax
 005DDDDD    call        version.VerQueryValueW
 005DDDE2    test        eax,eax
>005DDDE4    je          005DDE1D
 005DDDE6    mov         eax,dword ptr [ebp-10]
 005DDDE9    mov         eax,dword ptr [eax+8]
 005DDDEC    shr         eax,10
 005DDDEF    mov         word ptr [esi+4],ax;TToolInfo..FVersionInfo:TToolInfoRec
 005DDDF3    mov         eax,dword ptr [ebp-10]
 005DDDF6    mov         eax,dword ptr [eax+8]
 005DDDF9    mov         word ptr [esi+6],ax;TToolInfo.?f6:word
 005DDDFD    mov         eax,dword ptr [ebp-10]
 005DDE00    mov         eax,dword ptr [eax+0C]
 005DDE03    shr         eax,10
 005DDE06    mov         word ptr [esi+8],ax;TToolInfo.?f8:word
 005DDE0A    mov         eax,dword ptr [ebp-10]
 005DDE0D    mov         eax,dword ptr [eax+0C]
 005DDE10    mov         word ptr [esi+0A],ax;TToolInfo.?fA:word
 005DDE14    mov         eax,dword ptr [ebp-10]
 005DDE17    mov         eax,dword ptr [eax+1C]
 005DDE1A    mov         dword ptr [esi+0C],eax;TToolInfo.?fC:dword
 005DDE1D    xor         eax,eax
 005DDE1F    pop         edx
 005DDE20    pop         ecx
 005DDE21    pop         ecx
 005DDE22    mov         dword ptr fs:[eax],edx
 005DDE25    push        5DDE3A
 005DDE2A    mov         eax,dword ptr [ebp-14]
 005DDE2D    call        @FreeMem
 005DDE32    ret
>005DDE33    jmp         @HandleFinally
>005DDE38    jmp         005DDE2A
 005DDE3A    mov         bl,1
 005DDE3C    xor         eax,eax
 005DDE3E    pop         edx
 005DDE3F    pop         ecx
 005DDE40    pop         ecx
 005DDE41    mov         dword ptr fs:[eax],edx
 005DDE44    push        5DDE59
 005DDE49    lea         eax,[ebp-4]
 005DDE4C    call        @UStrClr
 005DDE51    ret
>005DDE52    jmp         @HandleFinally
>005DDE57    jmp         005DDE49
 005DDE59    mov         eax,ebx
 005DDE5B    pop         edi
 005DDE5C    pop         esi
 005DDE5D    pop         ebx
 005DDE5E    mov         esp,ebp
 005DDE60    pop         ebp
 005DDE61    ret
*}
end;

Initialization
Finalization
//005DDE68
{*
 005DDE68    push        ebp
 005DDE69    mov         ebp,esp
 005DDE6B    xor         eax,eax
 005DDE6D    push        ebp
 005DDE6E    push        5DDEAE
 005DDE73    push        dword ptr fs:[eax]
 005DDE76    mov         dword ptr fs:[eax],esp
 005DDE79    inc         dword ptr ds:[7CA848]
>005DDE7F    jne         005DDEA0
 005DDE81    mov         eax,7A1E9C;^'New file'
 005DDE86    call        @UStrClr
 005DDE8B    mov         eax,7A1EA0;^'FX'
 005DDE90    mov         ecx,6
 005DDE95    mov         edx,dword ptr ds:[4012B8];string
 005DDE9B    call        @FinalizeArray
 005DDEA0    xor         eax,eax
 005DDEA2    pop         edx
 005DDEA3    pop         ecx
 005DDEA4    pop         ecx
 005DDEA5    mov         dword ptr fs:[eax],edx
 005DDEA8    push        5DDEB5
 005DDEAD    ret
>005DDEAE    jmp         @HandleFinally
>005DDEB3    jmp         005DDEAD
 005DDEB5    pop         ebp
 005DDEB6    ret
*}
end.