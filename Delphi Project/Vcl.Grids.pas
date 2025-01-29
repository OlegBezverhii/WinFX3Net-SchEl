//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Vcl.Grids;

interface

uses
  SysUtils, Classes;

type
  TStringGrid.Destroy$317$ActRec = class(TInterfacedObject)
  end;
  TStringGrid.ColumnMoved$319$ActRec = class(TInterfacedObject)
  public
    ToIndex:Integer;//fC
    FromIndex:Integer;//f10
  end;
    function Destroy$6412$ActRec.$0$Body(TheIndex:Integer; TheItem:Pointer):Integer;//006C4238
    destructor Destroy();//006C4244
    //function sub_006C44E4(?:?; ?:?; ?:?):?;//006C44E4
    //procedure sub_006BADC8(?:?; ?:?);//006C4500
    //procedure sub_006BAE50(?:?; ?:?);//006C459C
    //procedure GetEditText(ACol:LongInt; ARow:LongInt; ?:?);//006C45D0
    procedure SetEditText(ACol:LongInt; ARow:LongInt; const Value:UnicodeString);//006C4614
    //procedure sub_006C46D4(?:?; ?:?; ?:?; ?:?);//006C46D4
    procedure DisableEditUpdate;//006C48D0
    procedure EnableEditUpdate;//006C48D8
    procedure Initialize;//006C48E0
    procedure SetUpdateState(Updating:Boolean);//006C4964
    procedure Update(ACol:Integer; ARow:Integer);//006C4990
    function EnsureColRow(Index:Integer; IsCol:Boolean):TStringGridStrings;//006C49DC
    function EnsureDataRow(ARow:Integer):TCustomData;//006C4A40
    function GetCells(ACol:Integer; ARow:Integer):string;//006C4A94
    function GetObjects(ACol:Integer; ARow:Integer):TObject;//006C4AD8
    procedure SetCells(ACol:Integer; ARow:Integer; Value:string);//006C4B04
    procedure SetObjects(ACol:Integer; ARow:Integer; Value:TObject);//006C4B54

implementation

//006C4238
function TStringGrid.Destroy$6412$ActRec.$0$Body(TheIndex:Integer; TheItem:Pointer):Integer;
begin
{*
 006C4238    mov         eax,ecx
 006C423A    call        TObject.Free
 006C423F    xor         eax,eax
 006C4241    ret
*}
end;

//006C4244
destructor TStringGrid.Destroy();
begin
{*
 006C4244    push        ebp
 006C4245    mov         ebp,esp
 006C4247    push        0
 006C4249    push        0
 006C424B    push        ebx
 006C424C    push        esi
 006C424D    push        edi
 006C424E    call        @BeforeDestruction
 006C4253    mov         ebx,edx
 006C4255    mov         edi,eax
 006C4257    xor         eax,eax
 006C4259    push        ebp
 006C425A    push        6C4324
 006C425F    push        dword ptr fs:[eax]
 006C4262    mov         dword ptr fs:[eax],esp
 006C4265    mov         dl,1
 006C4267    mov         eax,[006C4178];TStringGrid.Destroy$317$ActRec
 006C426C    call        TObject.Create
 006C4271    mov         esi,eax
 006C4273    lea         eax,[ebp-8]
 006C4276    mov         edx,esi
 006C4278    test        edx,edx
>006C427A    je          006C427F
 006C427C    sub         edx,0FFFFFFF8
 006C427F    call        @IntfCopy
 006C4284    lea         eax,[ebp-4]
 006C4287    mov         edx,esi
 006C4289    test        edx,edx
>006C428B    je          006C4290
 006C428D    sub         edx,0FFFFFFF4
 006C4290    call        @IntfCopy
 006C4295    cmp         dword ptr [edi+3A4],0;TStringGrid.FRows:Pointer
>006C429C    je          006C42B7
 006C429E    mov         eax,dword ptr [edi+3A4];TStringGrid.FRows:Pointer
 006C42A4    mov         edx,dword ptr [ebp-4]
 006C42A7    call        TSparseList.ForAll
 006C42AC    mov         eax,dword ptr [edi+3A4];TStringGrid.FRows:Pointer
 006C42B2    call        TObject.Free
 006C42B7    cmp         dword ptr [edi+3A8],0;TStringGrid.FCols:Pointer
>006C42BE    je          006C42D9
 006C42C0    mov         eax,dword ptr [edi+3A8];TStringGrid.FCols:Pointer
 006C42C6    mov         edx,dword ptr [ebp-4]
 006C42C9    call        TSparseList.ForAll
 006C42CE    mov         eax,dword ptr [edi+3A8];TStringGrid.FCols:Pointer
 006C42D4    call        TObject.Free
 006C42D9    cmp         dword ptr [edi+3A0],0;TStringGrid.FData:Pointer
>006C42E0    je          006C42FB
 006C42E2    mov         eax,dword ptr [edi+3A0];TStringGrid.FData:Pointer
 006C42E8    mov         edx,dword ptr [ebp-4]
 006C42EB    call        TSparseList.ForAll
 006C42F0    mov         eax,dword ptr [edi+3A0];TStringGrid.FData:Pointer
 006C42F6    call        TObject.Free
 006C42FB    mov         dl,0FC
 006C42FD    and         dl,bl
 006C42FF    mov         eax,edi
 006C4301    call        TCustomGrid.Destroy
 006C4306    xor         eax,eax
 006C4308    pop         edx
 006C4309    pop         ecx
 006C430A    pop         ecx
 006C430B    mov         dword ptr fs:[eax],edx
 006C430E    push        6C432B
 006C4313    lea         eax,[ebp-8]
 006C4316    call        @IntfClear
 006C431B    lea         eax,[ebp-4]
 006C431E    call        @IntfClear
 006C4323    ret
>006C4324    jmp         @HandleFinally
>006C4329    jmp         006C4313
 006C432B    test        bl,bl
>006C432D    jle         006C4336
 006C432F    mov         eax,edi
 006C4331    call        @ClassDestroy
 006C4336    pop         edi
 006C4337    pop         esi
 006C4338    pop         ebx
 006C4339    pop         ecx
 006C433A    pop         ecx
 006C433B    pop         ebp
 006C433C    ret
*}
end;

//006C44E4
{*function sub_006C44E4(?:?; ?:?; ?:?):?;
begin
 006C44E4    push        ebx
 006C44E5    push        esi
 006C44E6    push        edi
 006C44E7    mov         edi,ecx
 006C44E9    mov         esi,eax
 006C44EB    mov         ecx,dword ptr [esi+0C]
 006C44EE    mov         edx,dword ptr [esi+10]
 006C44F1    mov         eax,edi
 006C44F3    mov         ebx,dword ptr [eax]
 006C44F5    call        dword ptr [ebx+7C]
 006C44F8    xor         eax,eax
 006C44FA    pop         edi
 006C44FB    pop         esi
 006C44FC    pop         ebx
 006C44FD    ret
end;*}

//006C4500
{*procedure TStringGrid.sub_006BADC8(?:?; ?:?);
begin
 006C4500    push        ebp
 006C4501    mov         ebp,esp
 006C4503    add         esp,0FFFFFFF8
 006C4506    push        ebx
 006C4507    push        esi
 006C4508    push        edi
 006C4509    xor         ebx,ebx
 006C450B    mov         dword ptr [ebp-4],ebx
 006C450E    mov         dword ptr [ebp-8],ecx
 006C4511    mov         edi,edx
 006C4513    mov         esi,eax
 006C4515    xor         eax,eax
 006C4517    push        ebp
 006C4518    push        6C458C
 006C451D    push        dword ptr fs:[eax]
 006C4520    mov         dword ptr fs:[eax],esp
 006C4523    mov         dl,1
 006C4525    mov         eax,[006C43EC];TStringGrid.ColumnMoved$319$ActRec
 006C452A    call        TObject.Create
 006C452F    mov         ebx,eax
 006C4531    lea         eax,[ebp-4]
 006C4534    mov         edx,ebx
 006C4536    test        edx,edx
>006C4538    je          006C453D
 006C453A    sub         edx,0FFFFFFF8
 006C453D    call        @IntfCopy
 006C4542    mov         eax,dword ptr [ebp-8]
 006C4545    mov         dword ptr [ebx+0C],eax
 006C4548    mov         dword ptr [ebx+10],edi
 006C454B    mov         edx,ebx
 006C454D    test        edx,edx
>006C454F    je          006C4554
 006C4551    sub         edx,0FFFFFFEC
 006C4554    mov         eax,dword ptr [esi+3A0];TStringGrid.FData:Pointer
 006C455A    call        TSparseList.ForAll
 006C455F    mov         eax,esi
 006C4561    mov         edx,dword ptr [eax]
 006C4563    call        dword ptr [edx+0A8];TWinControl.Invalidate
 006C4569    mov         ecx,dword ptr [ebx+0C]
 006C456C    mov         edx,dword ptr [ebx+10]
 006C456F    mov         eax,esi
 006C4571    call        TCustomDrawGrid.sub_006BADC8
 006C4576    xor         eax,eax
 006C4578    pop         edx
 006C4579    pop         ecx
 006C457A    pop         ecx
 006C457B    mov         dword ptr fs:[eax],edx
 006C457E    push        6C4593
 006C4583    lea         eax,[ebp-4]
 006C4586    call        @IntfClear
 006C458B    ret
>006C458C    jmp         @HandleFinally
>006C4591    jmp         006C4583
 006C4593    pop         edi
 006C4594    pop         esi
 006C4595    pop         ebx
 006C4596    pop         ecx
 006C4597    pop         ecx
 006C4598    pop         ebp
 006C4599    ret
end;*}

//006C459C
{*procedure TStringGrid.sub_006BAE50(?:?; ?:?);
begin
 006C459C    push        ebx
 006C459D    push        esi
 006C459E    push        edi
 006C459F    mov         edi,ecx
 006C45A1    mov         esi,edx
 006C45A3    mov         ebx,eax
 006C45A5    mov         ecx,edi
 006C45A7    mov         edx,esi
 006C45A9    mov         eax,dword ptr [ebx+3A0];TStringGrid.FData:Pointer
 006C45AF    call        TSparseList.Move
 006C45B4    mov         eax,ebx
 006C45B6    mov         edx,dword ptr [eax]
 006C45B8    call        dword ptr [edx+0A8];TWinControl.Invalidate
 006C45BE    mov         ecx,edi
 006C45C0    mov         edx,esi
 006C45C2    mov         eax,ebx
 006C45C4    call        TCustomDrawGrid.sub_006BAE50
 006C45C9    pop         edi
 006C45CA    pop         esi
 006C45CB    pop         ebx
 006C45CC    ret
end;*}

//006C45D0
{*procedure TStringGrid.GetEditText(ACol:LongInt; ARow:LongInt; ?:?);
begin
 006C45D0    push        ebp
 006C45D1    mov         ebp,esp
 006C45D3    push        ebx
 006C45D4    push        esi
 006C45D5    push        edi
 006C45D6    mov         edi,ecx
 006C45D8    mov         esi,edx
 006C45DA    mov         ebx,eax
 006C45DC    mov         eax,dword ptr [ebp+8]
 006C45DF    push        eax
 006C45E0    mov         ecx,edi
 006C45E2    mov         edx,esi
 006C45E4    mov         eax,ebx
 006C45E6    call        TStringGrid.GetCells
 006C45EB    cmp         word ptr [ebx+372],0;TStringGrid.?f372:word
>006C45F3    je          006C460A
 006C45F5    push        edi
 006C45F6    mov         eax,dword ptr [ebp+8]
 006C45F9    push        eax
 006C45FA    mov         ecx,esi
 006C45FC    mov         edx,ebx
 006C45FE    mov         eax,dword ptr [ebx+374];TStringGrid.?f374:dword
 006C4604    call        dword ptr [ebx+370];TStringGrid.FOnGetEditText
 006C460A    pop         edi
 006C460B    pop         esi
 006C460C    pop         ebx
 006C460D    pop         ebp
 006C460E    ret         4
end;*}

//006C4614
procedure TStringGrid.SetEditText(ACol:LongInt; ARow:LongInt; const Value:UnicodeString);
begin
{*
 006C4614    push        ebp
 006C4615    mov         ebp,esp
 006C4617    add         esp,0FFFFFFF0
 006C461A    push        ebx
 006C461B    xor         ebx,ebx
 006C461D    mov         dword ptr [ebp-10],ebx
 006C4620    mov         dword ptr [ebp-0C],ecx
 006C4623    mov         dword ptr [ebp-8],edx
 006C4626    mov         dword ptr [ebp-4],eax
 006C4629    xor         eax,eax
 006C462B    push        ebp
 006C462C    push        6C46C3
 006C4631    push        dword ptr fs:[eax]
 006C4634    mov         dword ptr fs:[eax],esp
 006C4637    mov         eax,dword ptr [ebp-4]
 006C463A    call        TStringGrid.DisableEditUpdate
 006C463F    xor         eax,eax
 006C4641    push        ebp
 006C4642    push        6C4694
 006C4647    push        dword ptr fs:[eax]
 006C464A    mov         dword ptr fs:[eax],esp
 006C464D    lea         eax,[ebp-10]
 006C4650    push        eax
 006C4651    mov         ecx,dword ptr [ebp-0C]
 006C4654    mov         edx,dword ptr [ebp-8]
 006C4657    mov         eax,dword ptr [ebp-4]
 006C465A    call        TStringGrid.GetCells
 006C465F    mov         edx,dword ptr [ebp-10]
 006C4662    mov         eax,dword ptr [ebp+8]
 006C4665    call        @UStrEqual
>006C466A    je          006C467E
 006C466C    mov         eax,dword ptr [ebp+8]
 006C466F    push        eax
 006C4670    mov         ecx,dword ptr [ebp-0C]
 006C4673    mov         edx,dword ptr [ebp-8]
 006C4676    mov         eax,dword ptr [ebp-4]
 006C4679    call        TStringGrid.SetCells
 006C467E    xor         eax,eax
 006C4680    pop         edx
 006C4681    pop         ecx
 006C4682    pop         ecx
 006C4683    mov         dword ptr fs:[eax],edx
 006C4686    push        6C469B
 006C468B    mov         eax,dword ptr [ebp-4]
 006C468E    call        TStringGrid.EnableEditUpdate
 006C4693    ret
>006C4694    jmp         @HandleFinally
>006C4699    jmp         006C468B
 006C469B    mov         eax,dword ptr [ebp+8]
 006C469E    push        eax
 006C469F    mov         ecx,dword ptr [ebp-0C]
 006C46A2    mov         edx,dword ptr [ebp-8]
 006C46A5    mov         eax,dword ptr [ebp-4]
 006C46A8    call        TCustomDrawGrid.SetEditText
 006C46AD    xor         eax,eax
 006C46AF    pop         edx
 006C46B0    pop         ecx
 006C46B1    pop         ecx
 006C46B2    mov         dword ptr fs:[eax],edx
 006C46B5    push        6C46CA
 006C46BA    lea         eax,[ebp-10]
 006C46BD    call        @UStrClr
 006C46C2    ret
>006C46C3    jmp         @HandleFinally
>006C46C8    jmp         006C46BA
 006C46CA    pop         ebx
 006C46CB    mov         esp,ebp
 006C46CD    pop         ebp
 006C46CE    ret         4
*}
end;

//006C46D4
{*procedure sub_006C46D4(?:?; ?:?; ?:?; ?:?);
begin
 006C46D4    push        ebp
 006C46D5    mov         ebp,esp
 006C46D7    add         esp,0FFFFFFC0
 006C46DA    push        ebx
 006C46DB    push        esi
 006C46DC    push        edi
 006C46DD    xor         ebx,ebx
 006C46DF    mov         dword ptr [ebp-40],ebx
 006C46E2    mov         dword ptr [ebp-4],ebx
 006C46E5    mov         esi,dword ptr [ebp+0C]
 006C46E8    lea         edi,[ebp-30]
 006C46EB    movs        dword ptr [edi],dword ptr [esi]
 006C46EC    movs        dword ptr [edi],dword ptr [esi]
 006C46ED    movs        dword ptr [edi],dword ptr [esi]
 006C46EE    movs        dword ptr [edi],dword ptr [esi]
 006C46EF    mov         dword ptr [ebp-0C],ecx
 006C46F2    mov         dword ptr [ebp-8],edx
 006C46F5    mov         esi,eax
 006C46F7    mov         ebx,dword ptr [ebp+8]
 006C46FA    xor         eax,eax
 006C46FC    push        ebp
 006C46FD    push        6C48BD
 006C4702    push        dword ptr fs:[eax]
 006C4705    mov         dword ptr fs:[eax],esp
 006C4708    cmp         byte ptr [esi+31C],0;TStringGrid.FDefaultDrawing:Boolean
>006C470F    je          006C488D
 006C4715    call        TStyleManager.GetActiveStyle
 006C471A    mov         edi,eax
 006C471C    mov         eax,edi
 006C471E    mov         edx,dword ptr [eax]
 006C4720    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 006C4723    test        al,al
>006C4725    je          006C485A
 006C472B    add         dword ptr [ebp-30],4
 006C472F    test        bl,4
>006C4732    je          006C47B3
 006C4734    test        bl,10
>006C4737    je          006C4762
 006C4739    call        TStyleManager.GetActiveStyle
 006C473E    mov         dword ptr [ebp-10],eax
 006C4741    movzx       eax,byte ptr [esi+344];TStringGrid.FInternalDrawingStyle:TGridDrawingStyle
 006C4748    movzx       edx,byte ptr [eax+7C2B91]
 006C474F    lea         ecx,[ebp-3C]
 006C4752    mov         eax,dword ptr [ebp-10]
 006C4755    mov         edi,dword ptr [eax]
 006C4757    call        dword ptr [edi+90];TCustomStyleServices.GetElementDetails
>006C475D    jmp         006C4807
 006C4762    test        bl,20
>006C4765    je          006C478D
 006C4767    call        TStyleManager.GetActiveStyle
 006C476C    mov         dword ptr [ebp-14],eax
 006C476F    movzx       eax,byte ptr [esi+344];TStringGrid.FInternalDrawingStyle:TGridDrawingStyle
 006C4776    movzx       edx,byte ptr [eax+7C2B94]
 006C477D    lea         ecx,[ebp-3C]
 006C4780    mov         eax,dword ptr [ebp-14]
 006C4783    mov         edi,dword ptr [eax]
 006C4785    call        dword ptr [edi+90];TCustomStyleServices.GetElementDetails
>006C478B    jmp         006C4807
 006C478D    call        TStyleManager.GetActiveStyle
 006C4792    mov         dword ptr [ebp-18],eax
 006C4795    movzx       eax,byte ptr [esi+344];TStringGrid.FInternalDrawingStyle:TGridDrawingStyle
 006C479C    movzx       edx,byte ptr [eax+7C2B8E]
 006C47A3    lea         ecx,[ebp-3C]
 006C47A6    mov         eax,dword ptr [ebp-18]
 006C47A9    mov         edi,dword ptr [eax]
 006C47AB    call        dword ptr [edi+90];TCustomStyleServices.GetElementDetails
>006C47B1    jmp         006C4807
 006C47B3    test        bl,1
>006C47B6    jne         006C47BD
 006C47B8    test        bl,8
>006C47BB    je          006C47E3
 006C47BD    call        TStyleManager.GetActiveStyle
 006C47C2    mov         dword ptr [ebp-1C],eax
 006C47C5    movzx       eax,byte ptr [esi+344];TStringGrid.FInternalDrawingStyle:TGridDrawingStyle
 006C47CC    movzx       edx,byte ptr [eax+7C2B8B]
 006C47D3    lea         ecx,[ebp-3C]
 006C47D6    mov         eax,dword ptr [ebp-1C]
 006C47D9    mov         edi,dword ptr [eax]
 006C47DB    call        dword ptr [edi+90];TCustomStyleServices.GetElementDetails
>006C47E1    jmp         006C4807
 006C47E3    call        TStyleManager.GetActiveStyle
 006C47E8    mov         dword ptr [ebp-20],eax
 006C47EB    movzx       eax,byte ptr [esi+344];TStringGrid.FInternalDrawingStyle:TGridDrawingStyle
 006C47F2    movzx       edx,byte ptr [eax+7C2B88]
 006C47F9    lea         ecx,[ebp-3C]
 006C47FC    mov         eax,dword ptr [ebp-20]
 006C47FF    mov         edi,dword ptr [eax]
 006C4801    call        dword ptr [edi+90];TCustomStyleServices.GetElementDetails
 006C4807    lea         eax,[ebp-4]
 006C480A    push        eax
 006C480B    mov         ecx,dword ptr [ebp-0C]
 006C480E    mov         edx,dword ptr [ebp-8]
 006C4811    mov         eax,esi
 006C4813    call        TStringGrid.GetCells
 006C4818    mov         edx,dword ptr [ebp-4]
 006C481B    mov         eax,dword ptr [esi+290];TStringGrid.FCanvas:TCanvas
 006C4821    call        TCustomCanvas.TextHeight
 006C4826    push        eax
 006C4827    lea         eax,[ebp-30]
 006C482A    call        RectHeight
 006C482F    pop         edx
 006C4830    sub         eax,edx
 006C4832    sar         eax,1
>006C4834    jns         006C4839
 006C4836    adc         eax,0
 006C4839    add         eax,dword ptr [ebp-2C]
 006C483C    push        eax
 006C483D    mov         eax,dword ptr [ebp-4]
 006C4840    push        eax
 006C4841    mov         ecx,dword ptr [ebp-30]
 006C4844    add         ecx,2;TRect.Left:LongInt
 006C4847    lea         edx,[ebp-30]
 006C484A    mov         eax,dword ptr [esi+290];TStringGrid.FCanvas:TCanvas
 006C4850    mov         edi,dword ptr [eax]
 006C4852    call        dword ptr [edi+98];TCanvas.TextRect
>006C4858    jmp         006C488D
 006C485A    mov         eax,dword ptr [ebp-2C]
 006C485D    add         eax,2
 006C4860    push        eax
 006C4861    lea         eax,[ebp-40]
 006C4864    push        eax
 006C4865    mov         ecx,dword ptr [ebp-0C]
 006C4868    mov         edx,dword ptr [ebp-8]
 006C486B    mov         eax,esi
 006C486D    call        TStringGrid.GetCells
 006C4872    mov         eax,dword ptr [ebp-40]
 006C4875    push        eax
 006C4876    mov         ecx,dword ptr [ebp-30]
 006C4879    add         ecx,2;TRect.Left:LongInt
 006C487C    lea         edx,[ebp-30]
 006C487F    mov         eax,dword ptr [esi+290];TStringGrid.FCanvas:TCanvas
 006C4885    mov         edi,dword ptr [eax]
 006C4887    call        dword ptr [edi+98];TCanvas.TextRect
 006C488D    lea         eax,[ebp-30]
 006C4890    push        eax
 006C4891    push        ebx
 006C4892    mov         ecx,dword ptr [ebp-0C]
 006C4895    mov         edx,dword ptr [ebp-8]
 006C4898    mov         eax,esi
 006C489A    call        006C1D30
 006C489F    xor         eax,eax
 006C48A1    pop         edx
 006C48A2    pop         ecx
 006C48A3    pop         ecx
 006C48A4    mov         dword ptr fs:[eax],edx
 006C48A7    push        6C48C4
 006C48AC    lea         eax,[ebp-40]
 006C48AF    call        @UStrClr
 006C48B4    lea         eax,[ebp-4]
 006C48B7    call        @UStrClr
 006C48BC    ret
>006C48BD    jmp         @HandleFinally
>006C48C2    jmp         006C48AC
 006C48C4    pop         edi
 006C48C5    pop         esi
 006C48C6    pop         ebx
 006C48C7    mov         esp,ebp
 006C48C9    pop         ebp
 006C48CA    ret         8
end;*}

//006C48D0
procedure TStringGrid.DisableEditUpdate;
begin
{*
 006C48D0    inc         dword ptr [eax+39C]
 006C48D6    ret
*}
end;

//006C48D8
procedure TStringGrid.EnableEditUpdate;
begin
{*
 006C48D8    dec         dword ptr [eax+39C]
 006C48DE    ret
*}
end;

//006C48E0
procedure TStringGrid.Initialize;
begin
{*
 006C48E0    push        ebx
 006C48E1    push        esi
 006C48E2    mov         esi,eax
 006C48E4    cmp         dword ptr [esi+3A8],0
>006C48EB    jne         006C4913
 006C48ED    cmp         dword ptr [esi+2A4],200
>006C48F7    jle         006C48FD
 006C48F9    mov         bl,1
>006C48FB    jmp         006C48FF
 006C48FD    xor         ebx,ebx
 006C48FF    mov         ecx,ebx
 006C4901    mov         dl,1
 006C4903    mov         eax,[006C2220];TSparseList
 006C4908    call        TSparseList.Create
 006C490D    mov         dword ptr [esi+3A8],eax
 006C4913    cmp         dword ptr [esi+2E0],100
>006C491D    jle         006C4923
 006C491F    mov         bl,1
>006C4921    jmp         006C4925
 006C4923    xor         ebx,ebx
 006C4925    cmp         dword ptr [esi+3A4],0
>006C492C    jne         006C4942
 006C492E    mov         ecx,ebx
 006C4930    mov         dl,1
 006C4932    mov         eax,[006C2220];TSparseList
 006C4937    call        TSparseList.Create
 006C493C    mov         dword ptr [esi+3A4],eax
 006C4942    cmp         dword ptr [esi+3A0],0
>006C4949    jne         006C495F
 006C494B    mov         ecx,ebx
 006C494D    mov         dl,1
 006C494F    mov         eax,[006C2220];TSparseList
 006C4954    call        TSparseList.Create
 006C4959    mov         dword ptr [esi+3A0],eax
 006C495F    pop         esi
 006C4960    pop         ebx
 006C4961    ret
*}
end;

//006C4964
procedure TStringGrid.SetUpdateState(Updating:Boolean);
begin
{*
 006C4964    push        ebx
 006C4965    mov         ebx,eax
 006C4967    mov         byte ptr [ebx+398],dl
 006C496D    test        dl,dl
>006C496F    jne         006C498B
 006C4971    cmp         byte ptr [ebx+399],0
>006C4978    je          006C498B
 006C497A    mov         eax,ebx
 006C497C    mov         edx,dword ptr [eax]
 006C497E    call        dword ptr [edx+0A8]
 006C4984    mov         byte ptr [ebx+399],0
 006C498B    pop         ebx
 006C498C    ret
*}
end;

//006C4990
procedure TStringGrid.Update(ACol:Integer; ARow:Integer);
begin
{*
 006C4990    push        ebx
 006C4991    push        esi
 006C4992    push        edi
 006C4993    mov         edi,ecx
 006C4995    mov         esi,edx
 006C4997    mov         ebx,eax
 006C4999    cmp         byte ptr [ebx+398],0
>006C49A0    jne         006C49AF
 006C49A2    mov         ecx,edi
 006C49A4    mov         edx,esi
 006C49A6    mov         eax,ebx
 006C49A8    call        TCustomGrid.InvalidateCell
>006C49AD    jmp         006C49B6
 006C49AF    mov         byte ptr [ebx+399],1
 006C49B6    cmp         esi,dword ptr [ebx+2A8]
>006C49BC    jne         006C49D6
 006C49BE    cmp         edi,dword ptr [ebx+2AC]
>006C49C4    jne         006C49D6
 006C49C6    cmp         dword ptr [ebx+39C],0
>006C49CD    jne         006C49D6
 006C49CF    mov         eax,ebx
 006C49D1    call        006BAA88
 006C49D6    pop         edi
 006C49D7    pop         esi
 006C49D8    pop         ebx
 006C49D9    ret
*}
end;

//006C49DC
function TStringGrid.EnsureColRow(Index:Integer; IsCol:Boolean):TStringGridStrings;
begin
{*
 006C49DC    push        ebx
 006C49DD    push        esi
 006C49DE    push        edi
 006C49DF    push        ebp
 006C49E0    push        ecx
 006C49E1    mov         byte ptr [esp],cl
 006C49E4    mov         ebp,edx
 006C49E6    mov         esi,eax
 006C49E8    cmp         byte ptr [esp],0
>006C49EC    je          006C49F6
 006C49EE    lea         edi,[esi+3A8]
>006C49F4    jmp         006C49FC
 006C49F6    lea         edi,[esi+3A4]
 006C49FC    mov         eax,dword ptr [edi]
 006C49FE    mov         edx,ebp
 006C4A00    call        TSparseList.Get
 006C4A05    mov         ebx,eax
 006C4A07    test        ebx,ebx
>006C4A09    jne         006C4A37
 006C4A0B    cmp         byte ptr [esp],0
>006C4A0F    je          006C4A18
 006C4A11    mov         eax,ebp
 006C4A13    neg         eax
 006C4A15    dec         eax
>006C4A16    jmp         006C4A1B
 006C4A18    lea         eax,[ebp+1]
 006C4A1B    push        eax
 006C4A1C    mov         ecx,esi
 006C4A1E    mov         dl,1
 006C4A20    mov         eax,[006B8BB0];TStringGridStrings
 006C4A25    call        TStringGridStrings.Create
 006C4A2A    mov         ebx,eax
 006C4A2C    mov         eax,dword ptr [edi]
 006C4A2E    mov         ecx,ebx
 006C4A30    mov         edx,ebp
 006C4A32    call        TSparseList.Put
 006C4A37    mov         eax,ebx
 006C4A39    pop         edx
 006C4A3A    pop         ebp
 006C4A3B    pop         edi
 006C4A3C    pop         esi
 006C4A3D    pop         ebx
 006C4A3E    ret
*}
end;

//006C4A40
function TStringGrid.EnsureDataRow(ARow:Integer):TCustomData;
begin
{*
 006C4A40    push        ebx
 006C4A41    push        esi
 006C4A42    push        edi
 006C4A43    mov         edi,edx
 006C4A45    mov         ebx,eax
 006C4A47    mov         edx,edi
 006C4A49    mov         eax,dword ptr [ebx+3A0]
 006C4A4F    call        TSparseList.Get
 006C4A54    mov         esi,eax
 006C4A56    test        esi,esi
>006C4A58    jne         006C4A8B
 006C4A5A    cmp         dword ptr [ebx+2A4],200
>006C4A64    jle         006C4A6A
 006C4A66    mov         al,1
>006C4A68    jmp         006C4A6C
 006C4A6A    xor         eax,eax
 006C4A6C    mov         ecx,eax
 006C4A6E    mov         dl,1
 006C4A70    mov         eax,[006C25B8];TStringSparseList
 006C4A75    call        TStringSparseList.Create
 006C4A7A    mov         esi,eax
 006C4A7C    mov         ecx,esi
 006C4A7E    mov         edx,edi
 006C4A80    mov         eax,dword ptr [ebx+3A0]
 006C4A86    call        TSparseList.Put
 006C4A8B    mov         eax,esi
 006C4A8D    pop         edi
 006C4A8E    pop         esi
 006C4A8F    pop         ebx
 006C4A90    ret
*}
end;

//006C4A94
function TStringGrid.GetCells(ACol:Integer; ARow:Integer):string;
begin
{*
 006C4A94    push        ebp
 006C4A95    mov         ebp,esp
 006C4A97    push        ecx
 006C4A98    push        ebx
 006C4A99    push        esi
 006C4A9A    push        edi
 006C4A9B    mov         edi,ecx
 006C4A9D    mov         dword ptr [ebp-4],edx
 006C4AA0    mov         ebx,eax
 006C4AA2    mov         esi,dword ptr [ebp+8]
 006C4AA5    mov         edx,edi
 006C4AA7    mov         eax,dword ptr [ebx+3A0]
 006C4AAD    call        TSparseList.Get
 006C4AB2    mov         ebx,eax
 006C4AB4    test        ebx,ebx
>006C4AB6    jne         006C4AC1
 006C4AB8    mov         eax,esi
 006C4ABA    call        @UStrClr
>006C4ABF    jmp         006C4ACD
 006C4AC1    mov         ecx,esi
 006C4AC3    mov         edx,dword ptr [ebp-4]
 006C4AC6    mov         eax,ebx
 006C4AC8    mov         ebx,dword ptr [eax]
 006C4ACA    call        dword ptr [ebx+0C]
 006C4ACD    pop         edi
 006C4ACE    pop         esi
 006C4ACF    pop         ebx
 006C4AD0    pop         ecx
 006C4AD1    pop         ebp
 006C4AD2    ret         4
*}
end;

//006C4AD8
function TStringGrid.GetObjects(ACol:Integer; ARow:Integer):TObject;
begin
{*
 006C4AD8    push        ebx
 006C4AD9    push        esi
 006C4ADA    push        edi
 006C4ADB    mov         esi,ecx
 006C4ADD    mov         edi,edx
 006C4ADF    mov         ebx,eax
 006C4AE1    mov         edx,esi
 006C4AE3    mov         eax,dword ptr [ebx+3A0]
 006C4AE9    call        TSparseList.Get
 006C4AEE    test        eax,eax
>006C4AF0    jne         006C4AF6
 006C4AF2    xor         eax,eax
>006C4AF4    jmp         006C4AFD
 006C4AF6    mov         edx,edi
 006C4AF8    mov         ecx,dword ptr [eax]
 006C4AFA    call        dword ptr [ecx+18]
 006C4AFD    pop         edi
 006C4AFE    pop         esi
 006C4AFF    pop         ebx
 006C4B00    ret
*}
end;

//006C4B04
procedure TStringGrid.SetCells(ACol:Integer; ARow:Integer; Value:string);
begin
{*
 006C4B04    push        ebp
 006C4B05    mov         ebp,esp
 006C4B07    push        ecx
 006C4B08    push        ebx
 006C4B09    push        esi
 006C4B0A    push        edi
 006C4B0B    mov         dword ptr [ebp-4],ecx
 006C4B0E    mov         esi,edx
 006C4B10    mov         ebx,eax
 006C4B12    mov         edx,dword ptr [ebp-4]
 006C4B15    mov         eax,ebx
 006C4B17    call        TStringGrid.EnsureDataRow
 006C4B1C    mov         ecx,dword ptr [ebp+8]
 006C4B1F    mov         edx,esi
 006C4B21    mov         edi,dword ptr [eax]
 006C4B23    call        dword ptr [edi+20]
 006C4B26    mov         cl,1
 006C4B28    mov         edx,esi
 006C4B2A    mov         eax,ebx
 006C4B2C    call        TStringGrid.EnsureColRow
 006C4B31    xor         ecx,ecx
 006C4B33    mov         edx,dword ptr [ebp-4]
 006C4B36    mov         eax,ebx
 006C4B38    call        TStringGrid.EnsureColRow
 006C4B3D    mov         ecx,dword ptr [ebp-4]
 006C4B40    mov         edx,esi
 006C4B42    mov         eax,ebx
 006C4B44    call        TStringGrid.Update
 006C4B49    pop         edi
 006C4B4A    pop         esi
 006C4B4B    pop         ebx
 006C4B4C    pop         ecx
 006C4B4D    pop         ebp
 006C4B4E    ret         4
*}
end;

//006C4B54
procedure TStringGrid.SetObjects(ACol:Integer; ARow:Integer; Value:TObject);
begin
{*
 006C4B54    push        ebp
 006C4B55    mov         ebp,esp
 006C4B57    push        ecx
 006C4B58    push        ebx
 006C4B59    push        esi
 006C4B5A    push        edi
 006C4B5B    mov         dword ptr [ebp-4],ecx
 006C4B5E    mov         esi,edx
 006C4B60    mov         ebx,eax
 006C4B62    mov         edx,dword ptr [ebp-4]
 006C4B65    mov         eax,ebx
 006C4B67    call        TStringGrid.EnsureDataRow
 006C4B6C    mov         ecx,dword ptr [ebp+8]
 006C4B6F    mov         edx,esi
 006C4B71    mov         edi,dword ptr [eax]
 006C4B73    call        dword ptr [edi+24]
 006C4B76    mov         cl,1
 006C4B78    mov         edx,esi
 006C4B7A    mov         eax,ebx
 006C4B7C    call        TStringGrid.EnsureColRow
 006C4B81    xor         ecx,ecx
 006C4B83    mov         edx,dword ptr [ebp-4]
 006C4B86    mov         eax,ebx
 006C4B88    call        TStringGrid.EnsureColRow
 006C4B8D    mov         ecx,dword ptr [ebp-4]
 006C4B90    mov         edx,esi
 006C4B92    mov         eax,ebx
 006C4B94    call        TStringGrid.Update
 006C4B99    pop         edi
 006C4B9A    pop         esi
 006C4B9B    pop         ebx
 006C4B9C    pop         ecx
 006C4B9D    pop         ebp
 006C4B9E    ret         4
*}
end;

Initialization
//0079DA6C
{*
 0079DA6C    sub         dword ptr ds:[901E1C],1
>0079DA73    jae         0079DA8B
 0079DA75    mov         ecx,dword ptr ds:[5BD5B0];TScrollingStyleHook
 0079DA7B    mov         edx,dword ptr ds:[6B7C4C];TDrawGrid
 0079DA81    mov         eax,[005738E0];TCustomStyleEngine
 0079DA86    call        TCustomStyleEngine.RegisterStyleHook
 0079DA8B    ret
*}
Finalization
end.