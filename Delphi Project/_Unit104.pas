//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit104;

interface

uses
  SysUtils, Classes;

    destructor Destroy();//006C6108
    procedure CreateWnd;//006C6164
    //function sub_006C6178(?:TCheckListBox):?;//006C6178
    procedure CreateParams(var Params:TCreateParams);//006C61A8
    //function sub_006C61C0:?;//006C61C0
    procedure CMFontChanged;//006C61CC
    procedure sub_006C61E0(?:TCheckListBox);//006C61E0
    //procedure sub_006C6260(?:?; ?:?; ?:?);//006C6260
    //procedure sub_0050F8A8(?:?);//006C6564
    //procedure sub_006C65C8(?:TCheckListBox; ?:?; ?:TCheckBoxState; ?:?);//006C65C8
    procedure sub_006C69B8;//006C69B8
    procedure SetChecked(Index:Integer; AChecked:Boolean);//006C6AF0
    procedure SetItemEnabled(Index:Integer; Value:Boolean);//006C6B24
    procedure SetState(Index:Integer; AState:TCheckBoxState);//006C6B58
    procedure sub_006C6B88(?:TCheckListBox; ?:Integer);//006C6B88
    function GetChecked(Index:Integer):Boolean;//006C6C0C
    function GetItemEnabled(Index:Integer):Boolean;//006C6C38
    function GetState(Index:Integer):TCheckBoxState;//006C6C64
    //procedure sub_004EEC30(?:?);//006C6C90
    //procedure sub_006C6CBC(?:?);//006C6CBC
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?);//006C6DF4
    procedure sub_006C6EC4(?:TCheckListBox; ?:Integer);//006C6EC4
    procedure sub_006C6F34;//006C6F34
    procedure sub_0050E43C(?:Integer);//006C6F54
    //function sub_006C6F7C(?:TCheckListBox; ?:Integer):?;//006C6F7C
    //function sub_006C6F9C(?:TCheckListBox; ?:Integer):?;//006C6F9C
    //procedure sub_0050E480(?:?);//006C6FF8
    //procedure sub_0050E498(?:?; ?:?);//006C7000
    //function sub_006C7008(?:TCheckListBox; ?:Integer):?;//006C7008
    function sub_006C7048(?:TCheckListBox; ?:Integer):Boolean;//006C7048
    procedure sub_0050E45C(?:Integer; ?:TCheckListBoxDataWrapper);//006C7060
    procedure sub_0050E4D4;//006C708C
    //procedure sub_006C70EC(?:?);//006C70EC
    //procedure sub_0050E4B4(?:?);//006C7230
    procedure SetFlat(Value:Boolean);//006C7284
    function GetHeader(Index:Integer):Boolean;//006C72A4
    procedure SetHeaderBackgroundColor(Value:TColor);//006C72CC
    procedure SetHeaderColor(Value:TColor);//006C72EC
    procedure sub_006CA204(?:TFXIniFile);//006CA204

implementation

//006C6108
destructor TCheckListBox.Destroy();
begin
{*
 006C6108    push        ebx
 006C6109    push        esi
 006C610A    push        edi
 006C610B    push        ebp
 006C610C    call        @BeforeDestruction
 006C6111    mov         ebx,edx
 006C6113    mov         esi,eax
 006C6115    mov         eax,dword ptr [esi+328];TCheckListBox.FWrapperList:TList
 006C611B    mov         ebp,dword ptr [eax+8];TList.FCount:Integer
 006C611E    dec         ebp
 006C611F    test        ebp,ebp
>006C6121    jl          006C613C
 006C6123    inc         ebp
 006C6124    xor         edi,edi
 006C6126    mov         eax,dword ptr [esi+328];TCheckListBox.FWrapperList:TList
 006C612C    mov         edx,edi
 006C612E    call        TList.Get
 006C6133    call        TObject.Free
 006C6138    inc         edi
 006C6139    dec         ebp
>006C613A    jne         006C6126
 006C613C    mov         eax,dword ptr [esi+328];TCheckListBox.FWrapperList:TList
 006C6142    call        TObject.Free
 006C6147    mov         dl,0FC
 006C6149    and         dl,bl
 006C614B    mov         eax,esi
 006C614D    call        TCustomListBox.Destroy
 006C6152    test        bl,bl
>006C6154    jle         006C615D
 006C6156    mov         eax,esi
 006C6158    call        @ClassDestroy
 006C615D    pop         ebp
 006C615E    pop         edi
 006C615F    pop         esi
 006C6160    pop         ebx
 006C6161    ret
*}
end;

//006C6164
procedure TCheckListBox.CreateWnd;
begin
{*
 006C6164    push        ebx
 006C6165    mov         ebx,eax
 006C6167    mov         eax,ebx
 006C6169    call        TCustomListBox.CreateWnd
 006C616E    mov         eax,ebx
 006C6170    call        006C61E0
 006C6175    pop         ebx
 006C6176    ret
*}
end;

//006C6178
{*function sub_006C6178(?:TCheckListBox):?;
begin
 006C6178    push        ebx
 006C6179    push        esi
 006C617A    mov         esi,eax
 006C617C    call        TStyleManager.GetActiveStyle
 006C6181    mov         edx,dword ptr [eax]
 006C6183    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 006C6186    mov         ebx,eax
 006C6188    test        bl,bl
>006C618A    je          006C61A0
 006C618C    call        TStyleManager.GetIsCustomStyleActive
 006C6191    test        al,al
>006C6193    je          006C61A0
 006C6195    test        byte ptr [esi+188],2
>006C619C    jne         006C61A0
 006C619E    xor         ebx,ebx
 006C61A0    mov         eax,ebx
 006C61A2    pop         esi
 006C61A3    pop         ebx
 006C61A4    ret
end;*}

//006C61A8
procedure TCheckListBox.CreateParams(var Params:TCreateParams);
begin
{*
 006C61A8    push        ebx
 006C61A9    mov         ebx,edx
 006C61AB    mov         edx,ebx
 006C61AD    call        TCustomListBox.CreateParams
 006C61B2    test        byte ptr [ebx+4],30;TCreateParams.Style:DWORD
>006C61B6    jne         006C61BC
 006C61B8    or          dword ptr [ebx+4],10;TCreateParams.Style:DWORD
 006C61BC    pop         ebx
 006C61BD    ret
*}
end;

//006C61C0
{*function sub_006C61C0:?;
begin
 006C61C0    mov         eax,[00901E24];gvar_00901E24
 006C61C5    add         eax,2
 006C61C8    ret
end;*}

//006C61CC
procedure TCheckListBox.CMFontChanged;
begin
{*
 006C61CC    push        ebx
 006C61CD    mov         ebx,eax
 006C61CF    mov         eax,ebx
 006C61D1    call        TWinControl.CMFontChanged
 006C61D6    mov         eax,ebx
 006C61D8    call        006C61E0
 006C61DD    pop         ebx
 006C61DE    ret
*}
end;

//006C61E0
procedure sub_006C61E0(?:TCheckListBox);
begin
{*
 006C61E0    push        ebx
 006C61E1    push        esi
 006C61E2    mov         ebx,eax
 006C61E4    mov         eax,ebx
 006C61E6    call        TWinControl.HandleAllocated
 006C61EB    test        al,al
>006C61ED    je          006C6246
 006C61EF    cmp         byte ptr [ebx+2C0],0;TCheckListBox.FStyle:TListBoxStyle
>006C61F6    jne         006C6246
 006C61F8    mov         edx,dword ptr [ebx+74];TCheckListBox.FFont:TFont
 006C61FB    mov         eax,dword ptr [ebx+2B0];TCheckListBox.FCanvas:TCanvas
 006C6201    call        TCanvas.SetFont
 006C6206    mov         edx,6C6258;'Wg'
 006C620B    mov         eax,dword ptr [ebx+2B0];TCheckListBox.FCanvas:TCanvas
 006C6211    call        TCustomCanvas.TextHeight
 006C6216    mov         esi,eax
 006C6218    mov         dword ptr [ebx+314],esi;TCheckListBox.FStandardItemHeight:Integer
 006C621E    cmp         esi,dword ptr ds:[901E28];gvar_00901E28:Integer
>006C6224    jge         006C6231
 006C6226    mov         eax,[00901E28];gvar_00901E28:Integer
 006C622B    mov         dword ptr [ebx+314],eax;TCheckListBox.FStandardItemHeight:Integer
 006C6231    mov         eax,dword ptr [ebx+314];TCheckListBox.FStandardItemHeight:Integer
 006C6237    push        eax
 006C6238    xor         ecx,ecx
 006C623A    mov         edx,1A0
 006C623F    mov         eax,ebx
 006C6241    call        TControl.Perform
 006C6246    pop         esi
 006C6247    pop         ebx
 006C6248    ret
*}
end;

//006C6260
{*procedure sub_006C6260(?:?; ?:?; ?:?);
begin
 006C6260    push        ebp
 006C6261    mov         ebp,esp
 006C6263    add         esp,0FFFFFFB4
 006C6266    push        ebx
 006C6267    push        esi
 006C6268    push        edi
 006C6269    mov         esi,ecx
 006C626B    lea         edi,[ebp-30]
 006C626E    movs        dword ptr [edi],dword ptr [esi]
 006C626F    movs        dword ptr [edi],dword ptr [esi]
 006C6270    movs        dword ptr [edi],dword ptr [esi]
 006C6271    movs        dword ptr [edi],dword ptr [esi]
 006C6272    mov         edi,edx
 006C6274    mov         dword ptr [ebp-4],eax
 006C6277    mov         eax,dword ptr [ebp-4]
 006C627A    call        006C61C0
 006C627F    mov         dword ptr [ebp-8],eax
 006C6282    mov         eax,dword ptr [ebp-4]
 006C6285    mov         eax,dword ptr [eax+2A0];TCheckListBox.FItems:TStrings
 006C628B    mov         edx,dword ptr [eax]
 006C628D    call        dword ptr [edx+14];TStrings.GetCount
 006C6290    cmp         edi,eax
>006C6292    jge         006C64BD
 006C6298    push        edi
 006C6299    lea         esi,[ebp-30]
 006C629C    lea         edi,[ebp-40]
 006C629F    movs        dword ptr [edi],dword ptr [esi]
 006C62A0    movs        dword ptr [edi],dword ptr [esi]
 006C62A1    movs        dword ptr [edi],dword ptr [esi]
 006C62A2    movs        dword ptr [edi],dword ptr [esi]
 006C62A3    pop         edi
 006C62A4    mov         eax,dword ptr [ebp-4]
 006C62A7    mov         edx,dword ptr [eax]
 006C62A9    call        dword ptr [edx+6C];TGroupBox.GetEnabled
 006C62AC    test        al,al
>006C62AE    je          006C62BE
 006C62B0    mov         edx,edi
 006C62B2    mov         eax,dword ptr [ebp-4]
 006C62B5    call        TCheckListBox.GetItemEnabled
 006C62BA    test        al,al
>006C62BC    jne         006C62C2
 006C62BE    xor         ebx,ebx
>006C62C0    jmp         006C62C4
 006C62C2    mov         bl,1
 006C62C4    call        TStyleManager.GetActiveStyle
 006C62C9    mov         dword ptr [ebp-18],eax
 006C62CC    mov         edx,edi
 006C62CE    mov         eax,dword ptr [ebp-4]
 006C62D1    call        TCheckListBox.GetHeader
 006C62D6    test        al,al
>006C62D8    jne         006C6407
 006C62DE    mov         eax,dword ptr [ebp-4]
 006C62E1    mov         si,0FFC6
 006C62E5    call        @CallDynaInst;TControl.sub_004E7698
 006C62EA    test        al,al
>006C62EC    jne         006C62FC
 006C62EE    mov         eax,dword ptr [ebp-30]
 006C62F1    mov         dword ptr [ebp-38],eax
 006C62F4    sub         eax,dword ptr [ebp-8]
 006C62F7    mov         dword ptr [ebp-40],eax
>006C62FA    jmp         006C6308
 006C62FC    mov         eax,dword ptr [ebp-28]
 006C62FF    mov         dword ptr [ebp-40],eax
 006C6302    add         eax,dword ptr [ebp-8]
 006C6305    mov         dword ptr [ebp-38],eax
 006C6308    push        ebx
 006C6309    mov         edx,edi
 006C630B    mov         eax,dword ptr [ebp-4]
 006C630E    call        TCheckListBox.GetState
 006C6313    mov         ecx,eax
 006C6315    lea         edx,[ebp-40]
 006C6318    mov         eax,dword ptr [ebp-4]
 006C631B    call        006C65C8
 006C6320    mov         eax,dword ptr [ebp-4]
 006C6323    call        006C6178
 006C6328    test        al,al
>006C632A    je          006C63E4
 006C6330    movzx       eax,bl
 006C6333    movzx       edx,byte ptr [eax+7C2B9A]
 006C633A    lea         ecx,[ebp-4C]
 006C633D    mov         eax,dword ptr [ebp-18]
 006C6340    mov         esi,dword ptr [eax]
 006C6342    call        dword ptr [esi+68];TCustomStyleServices.GetElementDetails
 006C6345    test        bl,bl
>006C6347    jne         006C6395
 006C6349    call        TStyleManager.GetIsCustomStyleActive
 006C634E    test        al,al
>006C6350    je          006C637A
 006C6352    call        TStyleManager.GetActiveStyle
 006C6357    mov         ebx,eax
 006C6359    mov         dl,18
 006C635B    mov         eax,ebx
 006C635D    call        TCustomStyleServices.GetStyleFontColor
 006C6362    mov         edx,eax
 006C6364    mov         eax,dword ptr [ebp-4]
 006C6367    mov         eax,dword ptr [eax+2B0];TCheckListBox.FCanvas:TCanvas
 006C636D    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 006C6370    call        TFont.SetColor
>006C6375    jmp         006C64BD
 006C637A    mov         eax,dword ptr [ebp-4]
 006C637D    mov         eax,dword ptr [eax+2B0];TCheckListBox.FCanvas:TCanvas
 006C6383    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 006C6386    mov         edx,0FF000011
 006C638B    call        TFont.SetColor
>006C6390    jmp         006C64BD
 006C6395    mov         eax,dword ptr [ebp-4]
 006C6398    test        byte ptr [eax+188],1;TCheckListBox.FStyleElements:TStyleElements
>006C639F    je          006C64BD
 006C63A5    lea         eax,[ebp-14]
 006C63A8    push        eax
 006C63A9    mov         cl,2
 006C63AB    lea         edx,[ebp-4C]
 006C63AE    mov         eax,dword ptr [ebp-18]
 006C63B1    call        TCustomStyleServices.GetElementColor
 006C63B6    test        al,al
>006C63B8    je          006C64BD
 006C63BE    cmp         dword ptr [ebp-14],1FFFFFFF
>006C63C5    je          006C64BD
 006C63CB    mov         eax,dword ptr [ebp-4]
 006C63CE    mov         eax,dword ptr [eax+2B0];TCheckListBox.FCanvas:TCanvas
 006C63D4    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 006C63D7    mov         edx,dword ptr [ebp-14]
 006C63DA    call        TFont.SetColor
>006C63DF    jmp         006C64BD
 006C63E4    test        bl,bl
>006C63E6    jne         006C64BD
 006C63EC    mov         eax,dword ptr [ebp-4]
 006C63EF    mov         eax,dword ptr [eax+2B0];TCheckListBox.FCanvas:TCanvas
 006C63F5    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 006C63F8    mov         edx,0FF000011
 006C63FD    call        TFont.SetColor
>006C6402    jmp         006C64BD
 006C6407    test        bl,bl
>006C6409    je          006C6419
 006C640B    mov         eax,dword ptr [ebp-4]
 006C640E    mov         eax,dword ptr [eax+320];TCheckListBox.FHeaderColor:TColor
 006C6414    mov         dword ptr [ebp-1C],eax
>006C6417    jmp         006C6420
 006C6419    mov         dword ptr [ebp-1C],0FF000011
 006C6420    mov         eax,dword ptr [ebp-4]
 006C6423    mov         eax,dword ptr [eax+324];TCheckListBox.FHeaderBackgroundColor:TColor
 006C6429    mov         dword ptr [ebp-20],eax
 006C642C    mov         eax,dword ptr [ebp-4]
 006C642F    call        006C6178
 006C6434    test        al,al
>006C6436    je          006C6495
 006C6438    movzx       eax,bl
 006C643B    movzx       edx,byte ptr [eax+7C2B98]
 006C6442    lea         ecx,[ebp-4C]
 006C6445    mov         eax,dword ptr [ebp-18]
 006C6448    mov         ebx,dword ptr [eax]
 006C644A    call        dword ptr [ebx+68];TCustomStyleServices.GetElementDetails
 006C644D    lea         eax,[ebp-14]
 006C6450    push        eax
 006C6451    mov         cl,2
 006C6453    lea         edx,[ebp-4C]
 006C6456    mov         eax,dword ptr [ebp-18]
 006C6459    call        TCustomStyleServices.GetElementColor
 006C645E    test        al,al
>006C6460    je          006C6471
 006C6462    cmp         dword ptr [ebp-14],1FFFFFFF
>006C6469    je          006C6471
 006C646B    mov         eax,dword ptr [ebp-14]
 006C646E    mov         dword ptr [ebp-1C],eax
 006C6471    lea         eax,[ebp-14]
 006C6474    push        eax
 006C6475    mov         cl,1
 006C6477    lea         edx,[ebp-4C]
 006C647A    mov         eax,dword ptr [ebp-18]
 006C647D    call        TCustomStyleServices.GetElementColor
 006C6482    test        al,al
>006C6484    je          006C6495
 006C6486    cmp         dword ptr [ebp-14],1FFFFFFF
>006C648D    je          006C6495
 006C648F    mov         eax,dword ptr [ebp-14]
 006C6492    mov         dword ptr [ebp-20],eax
 006C6495    mov         eax,dword ptr [ebp-4]
 006C6498    mov         eax,dword ptr [eax+2B0];TCheckListBox.FCanvas:TCanvas
 006C649E    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 006C64A1    mov         edx,dword ptr [ebp-1C]
 006C64A4    call        TFont.SetColor
 006C64A9    mov         eax,dword ptr [ebp-4]
 006C64AC    mov         eax,dword ptr [eax+2B0];TCheckListBox.FCanvas:TCanvas
 006C64B2    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C64B5    mov         edx,dword ptr [ebp-20]
 006C64B8    call        TBrush.SetColor
 006C64BD    mov         eax,dword ptr [ebp-4]
 006C64C0    cmp         byte ptr [eax+2C0],0;TCheckListBox.FStyle:TListBoxStyle
>006C64C7    jne         006C6546
 006C64C9    mov         eax,dword ptr [ebp-4]
 006C64CC    cmp         word ptr [eax+2E2],0;TCheckListBox.?f2E2:word
>006C64D4    je          006C6546
 006C64D6    mov         eax,dword ptr [ebp-4]
 006C64D9    mov         edx,dword ptr [eax+2E0];TCheckListBox.FOnDrawItem:TDrawItemEvent
 006C64DF    mov         dword ptr [ebp-10],edx
 006C64E2    mov         edx,dword ptr [eax+2E4];TCheckListBox.?f2E4:dword
 006C64E8    mov         dword ptr [ebp-0C],edx
 006C64EB    mov         eax,dword ptr [ebp-4]
 006C64EE    xor         edx,edx
 006C64F0    mov         dword ptr [eax+2E0],edx;TCheckListBox.FOnDrawItem:TDrawItemEvent
 006C64F6    mov         dword ptr [eax+2E4],edx;TCheckListBox.?f2E4:dword
 006C64FC    xor         eax,eax
 006C64FE    push        ebp
 006C64FF    push        6C653F
 006C6504    push        dword ptr fs:[eax]
 006C6507    mov         dword ptr fs:[eax],esp
 006C650A    movzx       eax,word ptr [ebp+8]
 006C650E    push        eax
 006C650F    lea         ecx,[ebp-30]
 006C6512    mov         edx,edi
 006C6514    mov         eax,dword ptr [ebp-4]
 006C6517    call        0050F748
 006C651C    xor         eax,eax
 006C651E    pop         edx
 006C651F    pop         ecx
 006C6520    pop         ecx
 006C6521    mov         dword ptr fs:[eax],edx
 006C6524    push        6C6558
 006C6529    mov         eax,dword ptr [ebp-4]
 006C652C    mov         edx,dword ptr [ebp-10]
 006C652F    mov         dword ptr [eax+2E0],edx;TCheckListBox.FOnDrawItem:TDrawItemEvent
 006C6535    mov         edx,dword ptr [ebp-0C]
 006C6538    mov         dword ptr [eax+2E4],edx;TCheckListBox.?f2E4:dword
 006C653E    ret
>006C653F    jmp         @HandleFinally
>006C6544    jmp         006C6529
 006C6546    movzx       eax,word ptr [ebp+8]
 006C654A    push        eax
 006C654B    lea         ecx,[ebp-30]
 006C654E    mov         edx,edi
 006C6550    mov         eax,dword ptr [ebp-4]
 006C6553    call        0050F748
 006C6558    pop         edi
 006C6559    pop         esi
 006C655A    pop         ebx
 006C655B    mov         esp,ebp
 006C655D    pop         ebp
 006C655E    ret         4
end;*}

//006C6564
{*procedure TCheckListBox.sub_0050F8A8(?:?);
begin
 006C6564    push        ebx
 006C6565    push        esi
 006C6566    push        edi
 006C6567    push        ebp
 006C6568    mov         ebp,edx
 006C656A    mov         ebx,eax
 006C656C    test        byte ptr [ebx+1C],8;TCheckListBox.FComponentState:TComponentState
>006C6570    jne         006C65C2
 006C6572    mov         eax,dword ptr [ebx+2A0];TCheckListBox.FItems:TStrings
 006C6578    mov         edx,dword ptr [eax]
 006C657A    call        dword ptr [edx+14];TStrings.GetCount
 006C657D    test        eax,eax
>006C657F    je          006C65C2
 006C6581    mov         eax,dword ptr [ebp+8]
 006C6584    mov         edi,eax
 006C6586    mov         edx,dword ptr [edi+8]
 006C6589    mov         eax,ebx
 006C658B    call        TCheckListBox.GetHeader
 006C6590    test        al,al
>006C6592    jne         006C65B9
 006C6594    mov         eax,ebx
 006C6596    mov         si,0FFC6
 006C659A    call        @CallDynaInst;TControl.sub_004E7698
 006C659F    test        al,al
>006C65A1    jne         006C65AF
 006C65A3    mov         eax,ebx
 006C65A5    call        006C61C0
 006C65AA    add         dword ptr [edi+1C],eax
>006C65AD    jmp         006C65B9
 006C65AF    mov         eax,ebx
 006C65B1    call        006C61C0
 006C65B6    sub         dword ptr [edi+24],eax
 006C65B9    mov         edx,ebp
 006C65BB    mov         eax,ebx
 006C65BD    call        TCustomListBox.sub_0050F8A8
 006C65C2    pop         ebp
 006C65C3    pop         edi
 006C65C4    pop         esi
 006C65C5    pop         ebx
 006C65C6    ret
end;*}

//006C65C8
{*procedure sub_006C65C8(?:TCheckListBox; ?:?; ?:TCheckBoxState; ?:?);
begin
 006C65C8    push        ebp
 006C65C9    mov         ebp,esp
 006C65CB    add         esp,0FFFFFFB0
 006C65CE    push        ebx
 006C65CF    push        esi
 006C65D0    mov         byte ptr [ebp-9],cl
 006C65D3    mov         dword ptr [ebp-8],edx
 006C65D6    mov         dword ptr [ebp-4],eax
 006C65D9    mov         ebx,dword ptr [ebp+8]
 006C65DC    mov         edx,dword ptr [ebp-8]
 006C65DF    mov         edx,dword ptr [edx+8]
 006C65E2    mov         eax,dword ptr [ebp-8]
 006C65E5    mov         eax,dword ptr [eax]
 006C65E7    sub         edx,eax
 006C65E9    sub         edx,dword ptr ds:[901E24];gvar_00901E24
 006C65EF    sar         edx,1
>006C65F1    jns         006C65F6
 006C65F3    adc         edx,0
 006C65F6    add         edx,eax
 006C65F8    mov         dword ptr [ebp-34],edx
 006C65FB    mov         edx,dword ptr [ebp-8]
 006C65FE    mov         edx,dword ptr [edx+0C]
 006C6601    mov         eax,dword ptr [ebp-8]
 006C6604    mov         eax,dword ptr [eax+4]
 006C6607    sub         edx,eax
 006C6609    sub         edx,dword ptr ds:[901E28];gvar_00901E28:Integer
 006C660F    sar         edx,1
>006C6611    jns         006C6616
 006C6613    adc         edx,0
 006C6616    add         edx,eax
 006C6618    mov         dword ptr [ebp-30],edx
 006C661B    mov         eax,dword ptr [ebp-34]
 006C661E    add         eax,dword ptr ds:[901E24];gvar_00901E24
 006C6624    mov         dword ptr [ebp-2C],eax
 006C6627    mov         eax,dword ptr [ebp-30]
 006C662A    add         eax,dword ptr ds:[901E28];gvar_00901E28:Integer
 006C6630    mov         dword ptr [ebp-28],eax
 006C6633    mov         eax,dword ptr [ebp-4]
 006C6636    mov         eax,dword ptr [eax+2B0];TCheckListBox.FCanvas:TCanvas
 006C663C    mov         dword ptr [ebp-24],eax
 006C663F    mov         eax,dword ptr [ebp-4]
 006C6642    call        00585D90
 006C6647    test        al,al
>006C6649    je          006C67E0
 006C664F    movzx       eax,byte ptr [ebp-9]
 006C6653    sub         al,1
>006C6655    jb          006C6687
>006C6657    jne         006C66B5
 006C6659    test        bl,bl
>006C665B    je          006C6672
 006C665D    call        TStyleManager.GetActiveStyle
 006C6662    mov         ebx,eax
 006C6664    lea         ecx,[ebp-40]
 006C6667    mov         dl,14
 006C6669    mov         eax,ebx
 006C666B    mov         ebx,dword ptr [eax]
 006C666D    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>006C6670    jmp         006C66E1
 006C6672    call        TStyleManager.GetActiveStyle
 006C6677    mov         ebx,eax
 006C6679    lea         ecx,[ebp-40]
 006C667C    mov         dl,17
 006C667E    mov         eax,ebx
 006C6680    mov         ebx,dword ptr [eax]
 006C6682    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>006C6685    jmp         006C66E1
 006C6687    test        bl,bl
>006C6689    je          006C66A0
 006C668B    call        TStyleManager.GetActiveStyle
 006C6690    mov         ebx,eax
 006C6692    lea         ecx,[ebp-40]
 006C6695    mov         dl,10
 006C6697    mov         eax,ebx
 006C6699    mov         ebx,dword ptr [eax]
 006C669B    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>006C669E    jmp         006C66E1
 006C66A0    call        TStyleManager.GetActiveStyle
 006C66A5    mov         ebx,eax
 006C66A7    lea         ecx,[ebp-40]
 006C66AA    mov         dl,13
 006C66AC    mov         eax,ebx
 006C66AE    mov         ebx,dword ptr [eax]
 006C66B0    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>006C66B3    jmp         006C66E1
 006C66B5    test        bl,bl
>006C66B7    je          006C66CE
 006C66B9    call        TStyleManager.GetActiveStyle
 006C66BE    mov         ebx,eax
 006C66C0    lea         ecx,[ebp-40]
 006C66C3    mov         dl,18
 006C66C5    mov         eax,ebx
 006C66C7    mov         ebx,dword ptr [eax]
 006C66C9    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
>006C66CC    jmp         006C66E1
 006C66CE    call        TStyleManager.GetActiveStyle
 006C66D3    mov         ebx,eax
 006C66D5    lea         ecx,[ebp-40]
 006C66D8    mov         dl,1B
 006C66DA    mov         eax,ebx
 006C66DC    mov         ebx,dword ptr [eax]
 006C66DE    call        dword ptr [ebx+5C];TCustomStyleServices.GetElementDetails
 006C66E1    mov         eax,dword ptr [ebp-24]
 006C66E4    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C66E7    mov         eax,dword ptr [eax+10];TBrush.FResource:PResource
 006C66EA    mov         eax,dword ptr [eax+18]
 006C66ED    mov         dword ptr [ebp-20],eax
 006C66F0    mov         eax,dword ptr [ebp-24]
 006C66F3    call        TCanvas.GetHandle
 006C66F8    push        eax
 006C66F9    call        gdi32.SaveDC
 006C66FE    mov         dword ptr [ebp-1C],eax
 006C6701    xor         eax,eax
 006C6703    push        ebp
 006C6704    push        6C67C9
 006C6709    push        dword ptr fs:[eax]
 006C670C    mov         dword ptr fs:[eax],esp
 006C670F    call        TStyleManager.GetIsCustomStyleActive
 006C6714    test        al,al
>006C6716    je          006C6743
 006C6718    mov         eax,dword ptr [ebp-4]
 006C671B    test        byte ptr [eax+188],2;TCheckListBox.FStyleElements:TStyleElements
>006C6722    je          006C6743
 006C6724    call        TStyleManager.GetActiveStyle
 006C6729    mov         ebx,eax
 006C672B    mov         dl,14
 006C672D    mov         eax,ebx
 006C672F    call        TCustomStyleServices.GetStyleColor
 006C6734    mov         edx,eax
 006C6736    mov         eax,dword ptr [ebp-24]
 006C6739    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C673C    call        TBrush.SetColor
>006C6741    jmp         006C6754
 006C6743    mov         eax,dword ptr [ebp-4]
 006C6746    mov         edx,dword ptr [eax+7C];TCheckListBox.FColor:TColor
 006C6749    mov         eax,dword ptr [ebp-24]
 006C674C    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C674F    call        TBrush.SetColor
 006C6754    mov         edx,dword ptr [ebp-8]
 006C6757    mov         eax,dword ptr [ebp-24]
 006C675A    mov         ecx,dword ptr [eax]
 006C675C    call        dword ptr [ecx+54];TCanvas.FillRect
 006C675F    mov         eax,dword ptr [ebp-8]
 006C6762    mov         eax,dword ptr [eax+0C]
 006C6765    push        eax
 006C6766    mov         eax,dword ptr [ebp-8]
 006C6769    mov         eax,dword ptr [eax+8]
 006C676C    push        eax
 006C676D    mov         eax,dword ptr [ebp-8]
 006C6770    mov         eax,dword ptr [eax+4]
 006C6773    push        eax
 006C6774    mov         eax,dword ptr [ebp-8]
 006C6777    mov         eax,dword ptr [eax]
 006C6779    push        eax
 006C677A    mov         eax,dword ptr [ebp-24]
 006C677D    call        TCanvas.GetHandle
 006C6782    push        eax
 006C6783    call        gdi32.IntersectClipRect
 006C6788    call        TStyleManager.GetActiveStyle
 006C678D    mov         ebx,eax
 006C678F    mov         eax,dword ptr [ebp-8]
 006C6792    push        eax
 006C6793    push        0
 006C6795    mov         eax,dword ptr [ebp-24]
 006C6798    call        TCanvas.GetHandle
 006C679D    mov         edx,eax
 006C679F    lea         ecx,[ebp-40]
 006C67A2    mov         eax,ebx
 006C67A4    call        TCustomStyleServices.DrawElement
 006C67A9    xor         eax,eax
 006C67AB    pop         edx
 006C67AC    pop         ecx
 006C67AD    pop         ecx
 006C67AE    mov         dword ptr fs:[eax],edx
 006C67B1    push        6C67D0
 006C67B6    mov         eax,dword ptr [ebp-1C]
 006C67B9    push        eax
 006C67BA    mov         eax,dword ptr [ebp-24]
 006C67BD    call        TCanvas.GetHandle
 006C67C2    push        eax
 006C67C3    call        gdi32.RestoreDC
 006C67C8    ret
>006C67C9    jmp         @HandleFinally
>006C67CE    jmp         006C67B6
 006C67D0    mov         eax,dword ptr [ebp-24]
 006C67D3    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C67D6    mov         edx,dword ptr [ebp-20]
 006C67D9    call        TBrush.SetColor
>006C67DE    jmp         006C6819
 006C67E0    movzx       eax,byte ptr [ebp-9]
 006C67E4    sub         al,1
>006C67E6    jb          006C67F1
>006C67E8    jne         006C67F5
 006C67EA    mov         esi,400
>006C67EF    jmp         006C67FA
 006C67F1    xor         esi,esi
>006C67F3    jmp         006C67FA
 006C67F5    mov         esi,408
 006C67FA    test        bl,bl
>006C67FC    jne         006C6804
 006C67FE    or          esi,100
 006C6804    push        esi
 006C6805    push        4
 006C6807    lea         eax,[ebp-34]
 006C680A    push        eax
 006C680B    mov         eax,dword ptr [ebp-24]
 006C680E    call        TCanvas.GetHandle
 006C6813    push        eax
 006C6814    call        user32.DrawFrameControl
 006C6819    mov         eax,dword ptr [ebp-4]
 006C681C    cmp         byte ptr [eax+311],0;TCheckListBox.FFlat:Boolean
>006C6823    je          006C69AD
 006C6829    call        TStyleManager.GetIsCustomStyleActive
 006C682E    test        al,al
>006C6830    jne         006C69AD
 006C6836    mov         eax,dword ptr [ebp-24]
 006C6839    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C683C    mov         edx,eax
 006C683E    mov         edx,dword ptr [edx+10];TBrush.FResource:PResource
 006C6841    movzx       edx,byte ptr [edx+20]
 006C6845    mov         byte ptr [ebp-11],dl
 006C6848    mov         edx,eax
 006C684A    mov         edx,dword ptr [edx+10];TBrush.FResource:PResource
 006C684D    mov         edx,dword ptr [edx+18]
 006C6850    mov         dword ptr [ebp-10],edx
 006C6853    mov         edx,dword ptr [ebp-24]
 006C6856    mov         edx,dword ptr [edx+44];TCanvas.FPen:TPen
 006C6859    mov         edx,dword ptr [edx+10];TPen.FResource:PResource
 006C685C    mov         edx,dword ptr [edx+18]
 006C685F    mov         dword ptr [ebp-18],edx
 006C6862    mov         dl,1
 006C6864    call        TBrush.SetStyle
 006C6869    mov         eax,dword ptr [ebp-4]
 006C686C    mov         edx,dword ptr [eax+7C];TCheckListBox.FColor:TColor
 006C686F    mov         eax,dword ptr [ebp-24]
 006C6872    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 006C6875    call        TPen.SetColor
 006C687A    mov         eax,dword ptr [ebp-2C]
 006C687D    push        eax
 006C687E    mov         eax,dword ptr [ebp-28]
 006C6881    push        eax
 006C6882    mov         ecx,dword ptr [ebp-30]
 006C6885    mov         edx,dword ptr [ebp-34]
 006C6888    mov         eax,dword ptr [ebp-24]
 006C688B    mov         ebx,dword ptr [eax]
 006C688D    call        dword ptr [ebx+7C];TCanvas.Rectangle
 006C6890    mov         eax,dword ptr [ebp-24]
 006C6893    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C6896    mov         dl,1
 006C6898    call        TBrush.SetStyle
 006C689D    mov         eax,dword ptr [ebp-24]
 006C68A0    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 006C68A3    mov         edx,0FF000010
 006C68A8    call        TPen.SetColor
 006C68AD    mov         eax,dword ptr [ebp-2C]
 006C68B0    dec         eax
 006C68B1    push        eax
 006C68B2    mov         eax,dword ptr [ebp-28]
 006C68B5    dec         eax
 006C68B6    push        eax
 006C68B7    mov         ecx,dword ptr [ebp-30]
 006C68BA    inc         ecx
 006C68BB    mov         edx,dword ptr [ebp-34]
 006C68BE    inc         edx
 006C68BF    mov         eax,dword ptr [ebp-24]
 006C68C2    mov         ebx,dword ptr [eax]
 006C68C4    call        dword ptr [ebx+7C];TCanvas.Rectangle
 006C68C7    mov         eax,dword ptr [ebp-24]
 006C68CA    call        TCanvas.GetHandle
 006C68CF    push        eax
 006C68D0    call        gdi32.SaveDC
 006C68D5    mov         dword ptr [ebp-1C],eax
 006C68D8    xor         eax,eax
 006C68DA    push        ebp
 006C68DB    push        6C697B
 006C68E0    push        dword ptr fs:[eax]
 006C68E3    mov         dword ptr fs:[eax],esp
 006C68E6    mov         eax,dword ptr [ebp-8]
 006C68E9    mov         eax,dword ptr [eax+0C]
 006C68EC    push        eax
 006C68ED    lea         eax,[ebp-50]
 006C68F0    push        eax
 006C68F1    mov         ecx,dword ptr [ebp-2C]
 006C68F4    add         ecx,2
 006C68F7    mov         edx,dword ptr [ebp-8]
 006C68FA    mov         edx,dword ptr [edx+4]
 006C68FD    mov         eax,dword ptr [ebp-8]
 006C6900    mov         eax,dword ptr [eax]
 006C6902    call        Rect
 006C6907    mov         eax,dword ptr [ebp-24]
 006C690A    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C690D    xor         edx,edx
 006C690F    call        TBrush.SetStyle
 006C6914    mov         eax,dword ptr [ebp-4]
 006C6917    mov         edx,dword ptr [eax+7C];TCheckListBox.FColor:TColor
 006C691A    mov         eax,dword ptr [ebp-24]
 006C691D    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C6920    call        TBrush.SetColor
 006C6925    mov         eax,dword ptr [ebp-28]
 006C6928    push        eax
 006C6929    mov         eax,dword ptr [ebp-2C]
 006C692C    push        eax
 006C692D    mov         eax,dword ptr [ebp-30]
 006C6930    push        eax
 006C6931    mov         eax,dword ptr [ebp-34]
 006C6934    push        eax
 006C6935    mov         eax,dword ptr [ebp-24]
 006C6938    call        TCanvas.GetHandle
 006C693D    push        eax
 006C693E    call        gdi32.ExcludeClipRect
 006C6943    lea         edx,[ebp-50]
 006C6946    mov         eax,dword ptr [ebp-24]
 006C6949    mov         ecx,dword ptr [eax]
 006C694B    call        dword ptr [ecx+54];TCanvas.FillRect
 006C694E    xor         eax,eax
 006C6950    pop         edx
 006C6951    pop         ecx
 006C6952    pop         ecx
 006C6953    mov         dword ptr fs:[eax],edx
 006C6956    push        6C6982
 006C695B    mov         eax,dword ptr [ebp-1C]
 006C695E    push        eax
 006C695F    mov         eax,dword ptr [ebp-24]
 006C6962    call        TCanvas.GetHandle
 006C6967    push        eax
 006C6968    call        gdi32.RestoreDC
 006C696D    mov         eax,dword ptr [ebp-24]
 006C6970    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C6973    mov         dl,1
 006C6975    call        TBrush.SetStyle
 006C697A    ret
>006C697B    jmp         @HandleFinally
>006C6980    jmp         006C695B
 006C6982    movzx       edx,byte ptr [ebp-11]
 006C6986    mov         eax,dword ptr [ebp-24]
 006C6989    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C698C    call        TBrush.SetStyle
 006C6991    mov         eax,dword ptr [ebp-24]
 006C6994    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 006C6997    mov         edx,dword ptr [ebp-10]
 006C699A    call        TBrush.SetColor
 006C699F    mov         eax,dword ptr [ebp-24]
 006C69A2    mov         eax,dword ptr [eax+44];TCanvas.FPen:TPen
 006C69A5    mov         edx,dword ptr [ebp-18]
 006C69A8    call        TPen.SetColor
 006C69AD    pop         esi
 006C69AE    pop         ebx
 006C69AF    mov         esp,ebp
 006C69B1    pop         ebp
 006C69B2    ret         4
end;*}

//006C69B8
procedure sub_006C69B8;
begin
{*
 006C69B8    push        ebp
 006C69B9    mov         ebp,esp
 006C69BB    add         esp,0FFFFFFE4
 006C69BE    push        ebx
 006C69BF    push        esi
 006C69C0    call        TStyleManager.GetActiveStyle
 006C69C5    mov         ebx,eax
 006C69C7    mov         eax,ebx
 006C69C9    mov         edx,dword ptr [eax]
 006C69CB    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 006C69CE    test        al,al
>006C69D0    je          006C6A6D
 006C69D6    push        0
 006C69D8    call        gdi32.CreateCompatibleDC
 006C69DD    mov         dword ptr [ebp-4],eax
 006C69E0    xor         eax,eax
 006C69E2    push        ebp
 006C69E3    push        6C6A66
 006C69E8    push        dword ptr fs:[eax]
 006C69EB    mov         dword ptr fs:[eax],esp
 006C69EE    push        1
 006C69F0    lea         eax,[ebp-0C]
 006C69F3    push        eax
 006C69F4    lea         ecx,[ebp-1C]
 006C69F7    mov         dl,14
 006C69F9    mov         eax,ebx
 006C69FB    mov         esi,dword ptr [eax]
 006C69FD    call        dword ptr [esi+5C];TCustomStyleServices.GetElementDetails
 006C6A00    lea         ecx,[ebp-1C]
 006C6A03    mov         edx,dword ptr [ebp-4]
 006C6A06    mov         eax,ebx
 006C6A08    call        TCustomStyleServices.GetElementSize
 006C6A0D    cmp         dword ptr [ebp-0C],0
>006C6A11    jle         006C6A19
 006C6A13    cmp         dword ptr [ebp-8],0
>006C6A17    jg          006C6A3F
 006C6A19    call        TStyleManager.GetSystemStyle
 006C6A1E    mov         ebx,eax
 006C6A20    push        1
 006C6A22    lea         eax,[ebp-0C]
 006C6A25    push        eax
 006C6A26    lea         ecx,[ebp-1C]
 006C6A29    mov         dl,14
 006C6A2B    mov         eax,ebx
 006C6A2D    mov         esi,dword ptr [eax]
 006C6A2F    call        dword ptr [esi+5C];TCustomStyleServices.GetElementDetails
 006C6A32    lea         ecx,[ebp-1C]
 006C6A35    mov         edx,dword ptr [ebp-4]
 006C6A38    mov         eax,ebx
 006C6A3A    call        TCustomStyleServices.GetElementSize
 006C6A3F    mov         eax,dword ptr [ebp-0C]
 006C6A42    mov         [00901E24],eax;gvar_00901E24
 006C6A47    mov         eax,dword ptr [ebp-8]
 006C6A4A    mov         [00901E28],eax;gvar_00901E28:Integer
 006C6A4F    xor         eax,eax
 006C6A51    pop         edx
 006C6A52    pop         ecx
 006C6A53    pop         ecx
 006C6A54    mov         dword ptr fs:[eax],edx
 006C6A57    push        6C6AE9
 006C6A5C    mov         eax,dword ptr [ebp-4]
 006C6A5F    push        eax
 006C6A60    call        gdi32.DeleteDC
 006C6A65    ret
>006C6A66    jmp         @HandleFinally
>006C6A6B    jmp         006C6A5C
 006C6A6D    mov         dl,1
 006C6A6F    mov         eax,[004C1D10];TBitmap
 006C6A74    call        TBitmap.Create;TBitmap.Create
 006C6A79    mov         dword ptr [ebp-10],eax
 006C6A7C    xor         eax,eax
 006C6A7E    push        ebp
 006C6A7F    push        6C6AE2
 006C6A84    push        dword ptr fs:[eax]
 006C6A87    mov         dword ptr fs:[eax],esp
 006C6A8A    push        7FF7
 006C6A8F    push        0
 006C6A91    call        user32.LoadBitmapW
 006C6A96    mov         edx,eax
 006C6A98    mov         eax,dword ptr [ebp-10]
 006C6A9B    call        TBitmap.SetHandle
 006C6AA0    mov         eax,dword ptr [ebp-10]
 006C6AA3    mov         edx,dword ptr [eax]
 006C6AA5    call        dword ptr [edx+30];TBitmap.GetWidth
 006C6AA8    test        eax,eax
>006C6AAA    jns         006C6AAF
 006C6AAC    add         eax,3
 006C6AAF    sar         eax,2
 006C6AB2    mov         [00901E24],eax;gvar_00901E24
 006C6AB7    mov         eax,dword ptr [ebp-10]
 006C6ABA    mov         edx,dword ptr [eax]
 006C6ABC    call        dword ptr [edx+24];TBitmap.GetHeight
 006C6ABF    mov         ecx,3
 006C6AC4    cdq
 006C6AC5    idiv        eax,ecx
 006C6AC7    mov         [00901E28],eax;gvar_00901E28:Integer
 006C6ACC    xor         eax,eax
 006C6ACE    pop         edx
 006C6ACF    pop         ecx
 006C6AD0    pop         ecx
 006C6AD1    mov         dword ptr fs:[eax],edx
 006C6AD4    push        6C6AE9
 006C6AD9    mov         eax,dword ptr [ebp-10]
 006C6ADC    call        TObject.Free
 006C6AE1    ret
>006C6AE2    jmp         @HandleFinally
>006C6AE7    jmp         006C6AD9
 006C6AE9    pop         esi
 006C6AEA    pop         ebx
 006C6AEB    mov         esp,ebp
 006C6AED    pop         ebp
 006C6AEE    ret
*}
end;

//006C6AF0
procedure TCheckListBox.SetChecked(Index:Integer; AChecked:Boolean);
begin
{*
 006C6AF0    push        ebx
 006C6AF1    push        esi
 006C6AF2    push        edi
 006C6AF3    mov         ebx,ecx
 006C6AF5    mov         esi,edx
 006C6AF7    mov         edi,eax
 006C6AF9    mov         edx,esi
 006C6AFB    mov         eax,edi
 006C6AFD    call        TCheckListBox.GetChecked
 006C6B02    cmp         bl,al
>006C6B04    je          006C6B1F
 006C6B06    mov         edx,esi
 006C6B08    mov         eax,edi
 006C6B0A    call        006C6F7C
 006C6B0F    mov         edx,ebx
 006C6B11    call        TCheckListBoxDataWrapper.SetChecked
 006C6B16    mov         edx,esi
 006C6B18    mov         eax,edi
 006C6B1A    call        006C6B88
 006C6B1F    pop         edi
 006C6B20    pop         esi
 006C6B21    pop         ebx
 006C6B22    ret
*}
end;

//006C6B24
procedure TCheckListBox.SetItemEnabled(Index:Integer; Value:Boolean);
begin
{*
 006C6B24    push        ebx
 006C6B25    push        esi
 006C6B26    push        edi
 006C6B27    mov         ebx,ecx
 006C6B29    mov         esi,edx
 006C6B2B    mov         edi,eax
 006C6B2D    mov         edx,esi
 006C6B2F    mov         eax,edi
 006C6B31    call        TCheckListBox.GetItemEnabled
 006C6B36    cmp         bl,al
>006C6B38    je          006C6B52
 006C6B3A    mov         edx,esi
 006C6B3C    mov         eax,edi
 006C6B3E    call        006C6F7C
 006C6B43    xor         bl,1
 006C6B46    mov         byte ptr [eax+9],bl
 006C6B49    mov         edx,esi
 006C6B4B    mov         eax,edi
 006C6B4D    call        006C6B88
 006C6B52    pop         edi
 006C6B53    pop         esi
 006C6B54    pop         ebx
 006C6B55    ret
*}
end;

//006C6B58
procedure TCheckListBox.SetState(Index:Integer; AState:TCheckBoxState);
begin
{*
 006C6B58    push        ebx
 006C6B59    push        esi
 006C6B5A    push        edi
 006C6B5B    mov         ebx,ecx
 006C6B5D    mov         esi,edx
 006C6B5F    mov         edi,eax
 006C6B61    mov         edx,esi
 006C6B63    mov         eax,edi
 006C6B65    call        TCheckListBox.GetState
 006C6B6A    cmp         bl,al
>006C6B6C    je          006C6B83
 006C6B6E    mov         edx,esi
 006C6B70    mov         eax,edi
 006C6B72    call        006C6F7C
 006C6B77    mov         byte ptr [eax+8],bl
 006C6B7A    mov         edx,esi
 006C6B7C    mov         eax,edi
 006C6B7E    call        006C6B88
 006C6B83    pop         edi
 006C6B84    pop         esi
 006C6B85    pop         ebx
 006C6B86    ret
*}
end;

//006C6B88
procedure sub_006C6B88(?:TCheckListBox; ?:Integer);
begin
{*
 006C6B88    push        ebx
 006C6B89    push        esi
 006C6B8A    add         esp,0FFFFFFF0
 006C6B8D    mov         esi,edx
 006C6B8F    mov         ebx,eax
 006C6B91    mov         edx,esi
 006C6B93    mov         eax,ebx
 006C6B95    call        TCheckListBox.GetHeader
 006C6B9A    test        al,al
>006C6B9C    jne         006C6C05
 006C6B9E    mov         ecx,esp
 006C6BA0    mov         edx,esi
 006C6BA2    mov         eax,ebx
 006C6BA4    call        TCustomListBox.ItemRect
 006C6BA9    mov         eax,ebx
 006C6BAB    mov         si,0FFC6
 006C6BAF    call        @CallDynaInst;TControl.sub_004E7698
 006C6BB4    test        al,al
>006C6BB6    jne         006C6BC8
 006C6BB8    mov         eax,ebx
 006C6BBA    call        006C61C0
 006C6BBF    add         eax,dword ptr [esp]
 006C6BC2    mov         dword ptr [esp+8],eax
>006C6BC6    jmp         006C6BD8
 006C6BC8    mov         eax,ebx
 006C6BCA    call        006C61C0
 006C6BCF    mov         edx,dword ptr [esp+8]
 006C6BD3    sub         edx,eax
 006C6BD5    mov         dword ptr [esp],edx
 006C6BD8    test        byte ptr [ebx+60],40;TCheckListBox.FControlStyle:TControlStyle
 006C6BDC    setne       al
 006C6BDF    xor         al,1
 006C6BE1    neg         al
 006C6BE3    sbb         eax,eax
 006C6BE5    push        eax
 006C6BE6    lea         eax,[esp+4]
 006C6BEA    push        eax
 006C6BEB    mov         eax,ebx
 006C6BED    call        TWinControl.GetHandle
 006C6BF2    push        eax
 006C6BF3    call        user32.InvalidateRect
 006C6BF8    mov         eax,ebx
 006C6BFA    call        TWinControl.GetHandle
 006C6BFF    push        eax
 006C6C00    call        user32.UpdateWindow
 006C6C05    add         esp,10
 006C6C08    pop         esi
 006C6C09    pop         ebx
 006C6C0A    ret
*}
end;

//006C6C0C
function TCheckListBox.GetChecked(Index:Integer):Boolean;
begin
{*
 006C6C0C    push        ebx
 006C6C0D    push        esi
 006C6C0E    mov         esi,edx
 006C6C10    mov         ebx,eax
 006C6C12    mov         edx,esi
 006C6C14    mov         eax,ebx
 006C6C16    call        006C7048
 006C6C1B    test        al,al
>006C6C1D    je          006C6C30
 006C6C1F    mov         edx,esi
 006C6C21    mov         eax,ebx
 006C6C23    call        006C6F7C
 006C6C28    call        TCheckListBoxDataWrapper.GetChecked
 006C6C2D    pop         esi
 006C6C2E    pop         ebx
 006C6C2F    ret
 006C6C30    xor         eax,eax
 006C6C32    pop         esi
 006C6C33    pop         ebx
 006C6C34    ret
*}
end;

//006C6C38
function TCheckListBox.GetItemEnabled(Index:Integer):Boolean;
begin
{*
 006C6C38    push        ebx
 006C6C39    push        esi
 006C6C3A    mov         esi,edx
 006C6C3C    mov         ebx,eax
 006C6C3E    mov         edx,esi
 006C6C40    mov         eax,ebx
 006C6C42    call        006C7048
 006C6C47    test        al,al
>006C6C49    je          006C6C5D
 006C6C4B    mov         edx,esi
 006C6C4D    mov         eax,ebx
 006C6C4F    call        006C6F7C
 006C6C54    movzx       eax,byte ptr [eax+9]
 006C6C58    xor         al,1
 006C6C5A    pop         esi
 006C6C5B    pop         ebx
 006C6C5C    ret
 006C6C5D    mov         al,1
 006C6C5F    pop         esi
 006C6C60    pop         ebx
 006C6C61    ret
*}
end;

//006C6C64
function TCheckListBox.GetState(Index:Integer):TCheckBoxState;
begin
{*
 006C6C64    push        ebx
 006C6C65    push        esi
 006C6C66    mov         esi,edx
 006C6C68    mov         ebx,eax
 006C6C6A    mov         edx,esi
 006C6C6C    mov         eax,ebx
 006C6C6E    call        006C7048
 006C6C73    test        al,al
>006C6C75    je          006C6C87
 006C6C77    mov         edx,esi
 006C6C79    mov         eax,ebx
 006C6C7B    call        006C6F7C
 006C6C80    movzx       eax,byte ptr [eax+8]
 006C6C84    pop         esi
 006C6C85    pop         ebx
 006C6C86    ret
 006C6C87    call        TCheckListBoxDataWrapper.GetDefaultState
 006C6C8C    pop         esi
 006C6C8D    pop         ebx
 006C6C8E    ret
*}
end;

//006C6C90
{*procedure TCheckListBox.sub_004EEC30(?:?);
begin
 006C6C90    push        ebx
 006C6C91    push        esi
 006C6C92    mov         esi,edx
 006C6C94    mov         ebx,eax
 006C6C96    cmp         word ptr [esi],20
>006C6C9A    jne         006C6CAF
 006C6C9C    mov         eax,ebx
 006C6C9E    mov         edx,dword ptr [eax]
 006C6CA0    call        dword ptr [edx+108];TCheckListBox.sub_0050E790
 006C6CA6    mov         edx,eax
 006C6CA8    mov         eax,ebx
 006C6CAA    call        006C6EC4
 006C6CAF    mov         edx,esi
 006C6CB1    mov         eax,ebx
 006C6CB3    call        TCustomListBox.sub_004EEC30
 006C6CB8    pop         esi
 006C6CB9    pop         ebx
 006C6CBA    ret
end;*}

//006C6CBC
{*procedure sub_006C6CBC(?:?);
begin
 006C6CBC    push        ebp
 006C6CBD    mov         ebp,esp
 006C6CBF    add         esp,0FFFFFFF0
 006C6CC2    push        ebx
 006C6CC3    push        esi
 006C6CC4    push        edi
 006C6CC5    xor         ecx,ecx
 006C6CC7    mov         dword ptr [ebp-10],ecx
 006C6CCA    mov         dword ptr [ebp-0C],ecx
 006C6CCD    mov         dword ptr [ebp-4],edx
 006C6CD0    mov         edi,eax
 006C6CD2    xor         eax,eax
 006C6CD4    push        ebp
 006C6CD5    push        6C6DE3
 006C6CDA    push        dword ptr fs:[eax]
 006C6CDD    mov         dword ptr fs:[eax],esp
 006C6CE0    mov         eax,dword ptr [ebp-4]
 006C6CE3    call        TStrings.BeginUpdate
 006C6CE8    xor         eax,eax
 006C6CEA    push        ebp
 006C6CEB    push        6C6DC1
 006C6CF0    push        dword ptr fs:[eax]
 006C6CF3    mov         dword ptr fs:[eax],esp
 006C6CF6    mov         eax,dword ptr [ebp-4]
 006C6CF9    call        TStrings.GetNameValueSeparator
 006C6CFE    mov         edx,eax
 006C6D00    mov         eax,dword ptr [edi+2A0];TCheckListBox.FItems:TStrings
 006C6D06    call        TStrings.SetNameValueSeparator
 006C6D0B    mov         eax,dword ptr [ebp-4]
 006C6D0E    call        TStrings.GetQuoteChar
 006C6D13    mov         edx,eax
 006C6D15    mov         eax,dword ptr [edi+2A0];TCheckListBox.FItems:TStrings
 006C6D1B    call        TStrings.SetQuoteChar
 006C6D20    mov         eax,dword ptr [ebp-4]
 006C6D23    call        TStrings.GetDelimiter
 006C6D28    mov         edx,eax
 006C6D2A    mov         eax,dword ptr [edi+2A0];TCheckListBox.FItems:TStrings
 006C6D30    call        TStrings.SetDelimiter
 006C6D35    lea         edx,[ebp-0C]
 006C6D38    mov         eax,dword ptr [ebp-4]
 006C6D3B    call        TStrings.GetLineBreak
 006C6D40    mov         edx,dword ptr [ebp-0C]
 006C6D43    mov         eax,dword ptr [edi+2A0];TCheckListBox.FItems:TStrings
 006C6D49    call        TStrings.SetLineBreak
 006C6D4E    mov         eax,dword ptr [ebp-4]
 006C6D51    mov         edx,dword ptr [eax]
 006C6D53    call        dword ptr [edx+14]
 006C6D56    dec         eax
 006C6D57    test        eax,eax
>006C6D59    jl          006C6DAB
 006C6D5B    inc         eax
 006C6D5C    mov         dword ptr [ebp-8],eax
 006C6D5F    xor         ebx,ebx
 006C6D61    lea         ecx,[ebp-10]
 006C6D64    mov         edx,ebx
 006C6D66    mov         eax,dword ptr [ebp-4]
 006C6D69    mov         esi,dword ptr [eax]
 006C6D6B    call        dword ptr [esi+0C]
 006C6D6E    mov         edx,dword ptr [ebp-10]
 006C6D71    mov         eax,dword ptr [edi+2A0];TCheckListBox.FItems:TStrings
 006C6D77    mov         ecx,dword ptr [eax]
 006C6D79    call        dword ptr [ecx+3C];TStrings.Add
 006C6D7C    mov         esi,eax
 006C6D7E    mov         edx,ebx
 006C6D80    mov         eax,dword ptr [ebp-4]
 006C6D83    mov         ecx,dword ptr [eax]
 006C6D85    call        dword ptr [ecx+18]
 006C6D88    test        eax,eax
>006C6D8A    je          006C6DA5
 006C6D8C    mov         edx,ebx
 006C6D8E    mov         eax,dword ptr [ebp-4]
 006C6D91    mov         ecx,dword ptr [eax]
 006C6D93    call        dword ptr [ecx+18]
 006C6D96    mov         ecx,eax
 006C6D98    mov         edx,esi
 006C6D9A    mov         eax,edi
 006C6D9C    mov         si,0FFAC
 006C6DA0    call        @CallDynaInst;TCheckListBox.sub_0050E498
 006C6DA5    inc         ebx
 006C6DA6    dec         dword ptr [ebp-8]
>006C6DA9    jne         006C6D61
 006C6DAB    xor         eax,eax
 006C6DAD    pop         edx
 006C6DAE    pop         ecx
 006C6DAF    pop         ecx
 006C6DB0    mov         dword ptr fs:[eax],edx
 006C6DB3    push        6C6DC8
 006C6DB8    mov         eax,dword ptr [ebp-4]
 006C6DBB    call        TStrings.EndUpdate
 006C6DC0    ret
>006C6DC1    jmp         @HandleFinally
>006C6DC6    jmp         006C6DB8
 006C6DC8    xor         eax,eax
 006C6DCA    pop         edx
 006C6DCB    pop         ecx
 006C6DCC    pop         ecx
 006C6DCD    mov         dword ptr fs:[eax],edx
 006C6DD0    push        6C6DEA
 006C6DD5    lea         eax,[ebp-10]
 006C6DD8    mov         edx,2
 006C6DDD    call        @UStrArrayClr
 006C6DE2    ret
>006C6DE3    jmp         @HandleFinally
>006C6DE8    jmp         006C6DD5
 006C6DEA    pop         edi
 006C6DEB    pop         esi
 006C6DEC    pop         ebx
 006C6DED    mov         esp,ebp
 006C6DEF    pop         ebp
 006C6DF0    ret
end;*}

//006C6DF4
{*procedure TCheckListBox.sub_004E8C70(?:?; ?:?; ?:?; ?:?);
begin
 006C6DF4    push        ebp
 006C6DF5    mov         ebp,esp
 006C6DF7    add         esp,0FFFFFFE0
 006C6DFA    push        ebx
 006C6DFB    push        esi
 006C6DFC    push        edi
 006C6DFD    mov         word ptr [ebp-3],cx
 006C6E01    mov         byte ptr [ebp-1],dl
 006C6E04    mov         ebx,eax
 006C6E06    mov         esi,dword ptr [ebp+8]
 006C6E09    mov         edi,dword ptr [ebp+0C]
 006C6E0C    push        edi
 006C6E0D    push        esi
 006C6E0E    movzx       ecx,word ptr [ebp-3]
 006C6E12    movzx       edx,byte ptr [ebp-1]
 006C6E16    mov         eax,ebx
 006C6E18    call        TCustomListBox.sub_004E8C70
 006C6E1D    cmp         byte ptr [ebp-1],0
>006C6E21    jne         006C6EBA
 006C6E27    mov         dword ptr [ebp-10],edi
 006C6E2A    mov         dword ptr [ebp-0C],esi
 006C6E2D    mov         cl,1
 006C6E2F    lea         edx,[ebp-10]
 006C6E32    mov         eax,ebx
 006C6E34    call        TCustomListBox.ItemAtPos
 006C6E39    mov         dword ptr [ebp-8],eax
 006C6E3C    cmp         dword ptr [ebp-8],0FFFFFFFF
>006C6E40    je          006C6EBA
 006C6E42    mov         edx,dword ptr [ebp-8]
 006C6E45    mov         eax,ebx
 006C6E47    call        TCheckListBox.GetItemEnabled
 006C6E4C    test        al,al
>006C6E4E    je          006C6EBA
 006C6E50    mov         eax,ebx
 006C6E52    mov         si,0FFC6
 006C6E56    call        @CallDynaInst;TControl.sub_004E7698
 006C6E5B    test        al,al
>006C6E5D    jne         006C6E86
 006C6E5F    lea         ecx,[ebp-20]
 006C6E62    mov         edx,dword ptr [ebp-8]
 006C6E65    mov         eax,ebx
 006C6E67    call        TCustomListBox.ItemRect
 006C6E6C    sub         edi,dword ptr [ebp-20]
 006C6E6F    mov         eax,ebx
 006C6E71    call        006C61C0
 006C6E76    cmp         edi,eax
>006C6E78    jge         006C6EBA
 006C6E7A    mov         edx,dword ptr [ebp-8]
 006C6E7D    mov         eax,ebx
 006C6E7F    call        006C6EC4
>006C6E84    jmp         006C6EBA
 006C6E86    lea         ecx,[ebp-20]
 006C6E89    mov         edx,dword ptr [ebp-8]
 006C6E8C    mov         eax,ebx
 006C6E8E    call        TCustomListBox.ItemRect
 006C6E93    mov         esi,dword ptr [ebp-18]
 006C6E96    mov         eax,ebx
 006C6E98    call        006C61C0
 006C6E9D    sub         esi,eax
 006C6E9F    sub         edi,esi
 006C6EA1    test        edi,edi
>006C6EA3    jle         006C6EBA
 006C6EA5    mov         eax,ebx
 006C6EA7    call        006C61C0
 006C6EAC    cmp         edi,eax
>006C6EAE    jge         006C6EBA
 006C6EB0    mov         edx,dword ptr [ebp-8]
 006C6EB3    mov         eax,ebx
 006C6EB5    call        006C6EC4
 006C6EBA    pop         edi
 006C6EBB    pop         esi
 006C6EBC    pop         ebx
 006C6EBD    mov         esp,ebp
 006C6EBF    pop         ebp
 006C6EC0    ret         8
end;*}

//006C6EC4
procedure sub_006C6EC4(?:TCheckListBox; ?:Integer);
begin
{*
 006C6EC4    push        ebx
 006C6EC5    push        esi
 006C6EC6    mov         esi,edx
 006C6EC8    mov         ebx,eax
 006C6ECA    test        esi,esi
>006C6ECC    jl          006C6F2F
 006C6ECE    mov         eax,dword ptr [ebx+2A0];TCheckListBox.FItems:TStrings
 006C6ED4    mov         edx,dword ptr [eax]
 006C6ED6    call        dword ptr [edx+14];TStrings.GetCount
 006C6ED9    cmp         esi,eax
>006C6EDB    jge         006C6F2F
 006C6EDD    mov         edx,esi
 006C6EDF    mov         eax,ebx
 006C6EE1    call        TCheckListBox.GetItemEnabled
 006C6EE6    test        al,al
>006C6EE8    je          006C6F2F
 006C6EEA    mov         edx,esi
 006C6EEC    mov         eax,ebx
 006C6EEE    call        TCheckListBox.GetState
 006C6EF3    mov         edx,eax
 006C6EF5    sub         dl,1
>006C6EF8    jb          006C6F02
>006C6EFA    je          006C6F13
 006C6EFC    dec         dl
>006C6EFE    je          006C6F17
>006C6F00    jmp         006C6F19
 006C6F02    cmp         byte ptr [ebx+310],0;TCheckListBox.FAllowGrayed:Boolean
>006C6F09    je          006C6F0F
 006C6F0B    mov         al,2
>006C6F0D    jmp         006C6F19
 006C6F0F    mov         al,1
>006C6F11    jmp         006C6F19
 006C6F13    xor         eax,eax
>006C6F15    jmp         006C6F19
 006C6F17    mov         al,1
 006C6F19    mov         ecx,eax
 006C6F1B    mov         edx,esi
 006C6F1D    mov         eax,ebx
 006C6F1F    call        TCheckListBox.SetState
 006C6F24    mov         eax,ebx
 006C6F26    mov         si,0FFA7
 006C6F2A    call        @CallDynaInst;TCheckListBox.sub_006C6F34
 006C6F2F    pop         esi
 006C6F30    pop         ebx
 006C6F31    ret
*}
end;

//006C6F34
procedure TCheckListBox.sub_006C6F34;
begin
{*
 006C6F34    push        ebx
 006C6F35    cmp         word ptr [eax+31A],0;TCheckListBox.?f31A:word
>006C6F3D    je          006C6F4F
 006C6F3F    mov         ebx,eax
 006C6F41    mov         edx,eax
 006C6F43    mov         eax,dword ptr [ebx+31C];TCheckListBox.FHeaderBackgroundColor:TColor
 006C6F49    call        dword ptr [ebx+318];TCheckListBox.FOnClickCheck
 006C6F4F    pop         ebx
 006C6F50    ret
*}
end;

//006C6F54
procedure TCheckListBox.sub_0050E43C(?:Integer);
begin
{*
 006C6F54    push        ebx
 006C6F55    push        esi
 006C6F56    push        edi
 006C6F57    mov         esi,edx
 006C6F59    mov         ebx,eax
 006C6F5B    xor         edi,edi
 006C6F5D    mov         edx,esi
 006C6F5F    mov         eax,ebx
 006C6F61    call        006C7048
 006C6F66    test        al,al
>006C6F68    je          006C6F76
 006C6F6A    mov         edx,esi
 006C6F6C    mov         eax,ebx
 006C6F6E    call        006C6F7C
 006C6F73    mov         edi,dword ptr [eax+4]
 006C6F76    mov         eax,edi
 006C6F78    pop         edi
 006C6F79    pop         esi
 006C6F7A    pop         ebx
 006C6F7B    ret
*}
end;

//006C6F7C
{*function sub_006C6F7C(?:TCheckListBox; ?:Integer):?;
begin
 006C6F7C    push        ebx
 006C6F7D    push        esi
 006C6F7E    mov         esi,edx
 006C6F80    mov         ebx,eax
 006C6F82    mov         edx,esi
 006C6F84    mov         eax,ebx
 006C6F86    call        006C6F9C
 006C6F8B    test        eax,eax
>006C6F8D    jne         006C6F98
 006C6F8F    mov         edx,esi
 006C6F91    mov         eax,ebx
 006C6F93    call        006C7008
 006C6F98    pop         esi
 006C6F99    pop         ebx
 006C6F9A    ret
end;*}

//006C6F9C
{*function sub_006C6F9C(?:TCheckListBox; ?:Integer):?;
begin
 006C6F9C    push        ebx
 006C6F9D    push        esi
 006C6F9E    add         esp,0FFFFFFF8
 006C6FA1    mov         esi,edx
 006C6FA3    mov         ebx,eax
 006C6FA5    mov         edx,esi
 006C6FA7    mov         eax,ebx
 006C6FA9    call        TCustomListBox.sub_0050E43C
 006C6FAE    mov         ebx,eax
 006C6FB0    cmp         ebx,0FFFFFFFF
>006C6FB3    jne         006C6FD7
 006C6FB5    mov         dword ptr [esp],esi
 006C6FB8    mov         byte ptr [esp+4],0
 006C6FBD    push        esp
 006C6FBE    push        0
 006C6FC0    mov         ecx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 006C6FC6    mov         dl,1
 006C6FC8    mov         eax,[004180BC];EListError
 006C6FCD    call        Exception.CreateResFmt;EListError.Create
 006C6FD2    call        @RaiseExcept
 006C6FD7    test        ebx,ebx
>006C6FD9    je          006C6FEE
 006C6FDB    mov         eax,ebx
 006C6FDD    mov         edx,dword ptr ds:[6C5E7C];TCheckListBoxDataWrapper
 006C6FE3    call        @IsClass
 006C6FE8    test        al,al
>006C6FEA    jne         006C6FEE
 006C6FEC    xor         ebx,ebx
 006C6FEE    mov         eax,ebx
 006C6FF0    pop         ecx
 006C6FF1    pop         edx
 006C6FF2    pop         esi
 006C6FF3    pop         ebx
 006C6FF4    ret
end;*}

//006C6FF8
{*procedure TCheckListBox.sub_0050E480(?:?);
begin
 006C6FF8    call        TCustomListBox.sub_0050E43C
 006C6FFD    ret
end;*}

//006C7000
{*procedure TCheckListBox.sub_0050E498(?:?; ?:?);
begin
 006C7000    call        TCustomListBox.sub_0050E45C
 006C7005    ret
end;*}

//006C7008
{*function sub_006C7008(?:TCheckListBox; ?:Integer):?;
begin
 006C7008    push        ebx
 006C7009    push        esi
 006C700A    push        edi
 006C700B    mov         edi,edx
 006C700D    mov         ebx,eax
 006C700F    mov         eax,dword ptr [ebx+328];TCheckListBox.FWrapperList:TList
 006C7015    call        TList.Expand
 006C701A    mov         dl,1
 006C701C    mov         eax,[006C5E7C];TCheckListBoxDataWrapper
 006C7021    call        TObject.Create;TCheckListBoxDataWrapper.Create
 006C7026    mov         esi,eax
 006C7028    mov         edx,esi
 006C702A    mov         eax,dword ptr [ebx+328];TCheckListBox.FWrapperList:TList
 006C7030    call        TList.Add
 006C7035    mov         ecx,esi
 006C7037    mov         edx,edi
 006C7039    mov         eax,ebx
 006C703B    call        TCustomListBox.sub_0050E45C
 006C7040    mov         eax,esi
 006C7042    pop         edi
 006C7043    pop         esi
 006C7044    pop         ebx
 006C7045    ret
end;*}

//006C7048
function sub_006C7048(?:TCheckListBox; ?:Integer):Boolean;
begin
{*
 006C7048    push        ebx
 006C7049    push        esi
 006C704A    mov         esi,edx
 006C704C    mov         ebx,eax
 006C704E    mov         edx,esi
 006C7050    mov         eax,ebx
 006C7052    call        006C6F9C
 006C7057    test        eax,eax
 006C7059    setne       al
 006C705C    pop         esi
 006C705D    pop         ebx
 006C705E    ret
*}
end;

//006C7060
procedure TCheckListBox.sub_0050E45C(?:Integer; ?:TCheckListBoxDataWrapper);
begin
{*
 006C7060    push        ebx
 006C7061    push        esi
 006C7062    push        edi
 006C7063    mov         edi,ecx
 006C7065    mov         esi,edx
 006C7067    mov         ebx,eax
 006C7069    mov         edx,esi
 006C706B    mov         eax,ebx
 006C706D    call        006C7048
 006C7072    test        al,al
>006C7074    jne         006C707A
 006C7076    test        edi,edi
>006C7078    je          006C7086
 006C707A    mov         edx,esi
 006C707C    mov         eax,ebx
 006C707E    call        006C6F7C
 006C7083    mov         dword ptr [eax+4],edi
 006C7086    pop         edi
 006C7087    pop         esi
 006C7088    pop         ebx
 006C7089    ret
*}
end;

//006C708C
procedure TCheckListBox.sub_0050E4D4;
begin
{*
 006C708C    push        ebx
 006C708D    push        esi
 006C708E    push        edi
 006C708F    push        ebp
 006C7090    mov         esi,eax
 006C7092    mov         eax,dword ptr [esi+2A0];TCheckListBox.FItems:TStrings
 006C7098    mov         edx,dword ptr [eax]
 006C709A    call        dword ptr [edx+14];TStrings.GetCount
 006C709D    mov         edi,eax
 006C709F    dec         edi
 006C70A0    test        edi,edi
>006C70A2    jl          006C70E0
 006C70A4    inc         edi
 006C70A5    xor         ebp,ebp
 006C70A7    mov         edx,ebp
 006C70A9    mov         eax,esi
 006C70AB    call        006C6F9C
 006C70B0    mov         ebx,eax
 006C70B2    test        ebx,ebx
>006C70B4    je          006C70DC
 006C70B6    mov         edx,ebx
 006C70B8    mov         eax,dword ptr [esi+328];TCheckListBox.FWrapperList:TList
 006C70BE    call        TList.IndexOf
 006C70C3    cmp         eax,0FFFFFFFF
>006C70C6    je          006C70D5
 006C70C8    mov         edx,eax
 006C70CA    mov         eax,dword ptr [esi+328];TCheckListBox.FWrapperList:TList
 006C70D0    call        TList.Delete
 006C70D5    mov         eax,ebx
 006C70D7    call        TObject.Free
 006C70DC    inc         ebp
 006C70DD    dec         edi
>006C70DE    jne         006C70A7
 006C70E0    mov         eax,esi
 006C70E2    call        TCustomListBox.sub_0050E4D4
 006C70E7    pop         ebp
 006C70E8    pop         edi
 006C70E9    pop         esi
 006C70EA    pop         ebx
 006C70EB    ret
*}
end;

//006C70EC
{*procedure sub_006C70EC(?:?);
begin
 006C70EC    push        ebp
 006C70ED    mov         ebp,esp
 006C70EF    add         esp,0FFFFFFEC
 006C70F2    push        ebx
 006C70F3    push        esi
 006C70F4    push        edi
 006C70F5    xor         ecx,ecx
 006C70F7    mov         dword ptr [ebp-14],ecx
 006C70FA    mov         dword ptr [ebp-10],ecx
 006C70FD    mov         dword ptr [ebp-4],edx
 006C7100    mov         ebx,eax
 006C7102    xor         eax,eax
 006C7104    push        ebp
 006C7105    push        6C721F
 006C710A    push        dword ptr fs:[eax]
 006C710D    mov         dword ptr fs:[eax],esp
 006C7110    mov         eax,dword ptr [ebx+328];TCheckListBox.FWrapperList:TList
 006C7116    mov         edx,dword ptr [eax]
 006C7118    call        dword ptr [edx+8];TList.Clear
 006C711B    mov         eax,dword ptr [ebp-4]
 006C711E    call        TStrings.BeginUpdate
 006C7123    xor         eax,eax
 006C7125    push        ebp
 006C7126    push        6C71FD
 006C712B    push        dword ptr fs:[eax]
 006C712E    mov         dword ptr fs:[eax],esp
 006C7131    mov         eax,dword ptr [ebx+2A0];TCheckListBox.FItems:TStrings
 006C7137    call        TStrings.GetNameValueSeparator
 006C713C    mov         edx,eax
 006C713E    mov         eax,dword ptr [ebp-4]
 006C7141    call        TStrings.SetNameValueSeparator
 006C7146    mov         eax,dword ptr [ebx+2A0];TCheckListBox.FItems:TStrings
 006C714C    call        TStrings.GetQuoteChar
 006C7151    mov         edx,eax
 006C7153    mov         eax,dword ptr [ebp-4]
 006C7156    call        TStrings.SetQuoteChar
 006C715B    mov         eax,dword ptr [ebx+2A0];TCheckListBox.FItems:TStrings
 006C7161    call        TStrings.GetDelimiter
 006C7166    mov         edx,eax
 006C7168    mov         eax,dword ptr [ebp-4]
 006C716B    call        TStrings.SetDelimiter
 006C7170    lea         edx,[ebp-10]
 006C7173    mov         eax,dword ptr [ebx+2A0];TCheckListBox.FItems:TStrings
 006C7179    call        TStrings.GetLineBreak
 006C717E    mov         edx,dword ptr [ebp-10]
 006C7181    mov         eax,dword ptr [ebp-4]
 006C7184    call        TStrings.SetLineBreak
 006C7189    mov         eax,dword ptr [ebx+2A0];TCheckListBox.FItems:TStrings
 006C718F    mov         edx,dword ptr [eax]
 006C7191    call        dword ptr [edx+14];TStrings.GetCount
 006C7194    dec         eax
 006C7195    test        eax,eax
>006C7197    jl          006C71E7
 006C7199    inc         eax
 006C719A    mov         dword ptr [ebp-0C],eax
 006C719D    mov         dword ptr [ebp-8],0
 006C71A4    mov         edx,dword ptr [ebp-8]
 006C71A7    mov         eax,ebx
 006C71A9    call        006C6F9C
 006C71AE    mov         esi,eax
 006C71B0    lea         ecx,[ebp-14]
 006C71B3    mov         eax,dword ptr [ebx+2A0];TCheckListBox.FItems:TStrings
 006C71B9    mov         edx,dword ptr [ebp-8]
 006C71BC    mov         edi,dword ptr [eax]
 006C71BE    call        dword ptr [edi+0C];TStrings.Get
 006C71C1    mov         edx,dword ptr [ebp-14]
 006C71C4    mov         ecx,esi
 006C71C6    mov         eax,dword ptr [ebp-4]
 006C71C9    mov         edi,dword ptr [eax]
 006C71CB    call        dword ptr [edi+40]
 006C71CE    test        esi,esi
>006C71D0    je          006C71DF
 006C71D2    mov         eax,dword ptr [ebx+328];TCheckListBox.FWrapperList:TList
 006C71D8    mov         edx,esi
 006C71DA    call        TList.Add
 006C71DF    inc         dword ptr [ebp-8]
 006C71E2    dec         dword ptr [ebp-0C]
>006C71E5    jne         006C71A4
 006C71E7    xor         eax,eax
 006C71E9    pop         edx
 006C71EA    pop         ecx
 006C71EB    pop         ecx
 006C71EC    mov         dword ptr fs:[eax],edx
 006C71EF    push        6C7204
 006C71F4    mov         eax,dword ptr [ebp-4]
 006C71F7    call        TStrings.EndUpdate
 006C71FC    ret
>006C71FD    jmp         @HandleFinally
>006C7202    jmp         006C71F4
 006C7204    xor         eax,eax
 006C7206    pop         edx
 006C7207    pop         ecx
 006C7208    pop         ecx
 006C7209    mov         dword ptr fs:[eax],edx
 006C720C    push        6C7226
 006C7211    lea         eax,[ebp-14]
 006C7214    mov         edx,2
 006C7219    call        @UStrArrayClr
 006C721E    ret
>006C721F    jmp         @HandleFinally
>006C7224    jmp         006C7211
 006C7226    pop         edi
 006C7227    pop         esi
 006C7228    pop         ebx
 006C7229    mov         esp,ebp
 006C722B    pop         ebp
 006C722C    ret
end;*}

//006C7230
{*procedure TCheckListBox.sub_0050E4B4(?:?);
begin
 006C7230    push        ebx
 006C7231    push        esi
 006C7232    push        edi
 006C7233    mov         esi,edx
 006C7235    mov         ebx,eax
 006C7237    mov         edx,esi
 006C7239    mov         eax,ebx
 006C723B    call        006C7048
 006C7240    test        al,al
>006C7242    je          006C7275
 006C7244    mov         edx,esi
 006C7246    mov         eax,ebx
 006C7248    call        006C6F7C
 006C724D    mov         edi,eax
 006C724F    mov         edx,edi
 006C7251    mov         eax,dword ptr [ebx+328];TCheckListBox.FWrapperList:TList
 006C7257    call        TList.IndexOf
 006C725C    cmp         eax,0FFFFFFFF
>006C725F    je          006C726E
 006C7261    mov         edx,eax
 006C7263    mov         eax,dword ptr [ebx+328];TCheckListBox.FWrapperList:TList
 006C7269    call        TList.Delete
 006C726E    mov         eax,edi
 006C7270    call        TObject.Free
 006C7275    mov         edx,esi
 006C7277    mov         eax,ebx
 006C7279    call        TCustomListBox.sub_0050E4B4
 006C727E    pop         edi
 006C727F    pop         esi
 006C7280    pop         ebx
 006C7281    ret
end;*}

//006C7284
procedure TCheckListBox.SetFlat(Value:Boolean);
begin
{*
 006C7284    push        esi
 006C7285    mov         esi,eax
 006C7287    cmp         dl,byte ptr [esi+311];TCheckListBox.FFlat:Boolean
>006C728D    je          006C729F
 006C728F    mov         byte ptr [esi+311],dl;TCheckListBox.FFlat:Boolean
 006C7295    mov         eax,esi
 006C7297    mov         edx,dword ptr [eax]
 006C7299    call        dword ptr [edx+0A8];TWinControl.Invalidate
 006C729F    pop         esi
 006C72A0    ret
*}
end;

//006C72A4
function TCheckListBox.GetHeader(Index:Integer):Boolean;
begin
{*
 006C72A4    push        ebx
 006C72A5    push        esi
 006C72A6    mov         esi,edx
 006C72A8    mov         ebx,eax
 006C72AA    mov         edx,esi
 006C72AC    mov         eax,ebx
 006C72AE    call        006C7048
 006C72B3    test        al,al
>006C72B5    je          006C72C7
 006C72B7    mov         edx,esi
 006C72B9    mov         eax,ebx
 006C72BB    call        006C6F7C
 006C72C0    movzx       eax,byte ptr [eax+0A]
 006C72C4    pop         esi
 006C72C5    pop         ebx
 006C72C6    ret
 006C72C7    xor         eax,eax
 006C72C9    pop         esi
 006C72CA    pop         ebx
 006C72CB    ret
*}
end;

//006C72CC
procedure TCheckListBox.SetHeaderBackgroundColor(Value:TColor);
begin
{*
 006C72CC    push        esi
 006C72CD    mov         esi,eax
 006C72CF    cmp         edx,dword ptr [esi+324];TCheckListBox.FHeaderBackgroundColor:TColor
>006C72D5    je          006C72E7
 006C72D7    mov         dword ptr [esi+324],edx;TCheckListBox.FHeaderBackgroundColor:TColor
 006C72DD    mov         eax,esi
 006C72DF    mov         edx,dword ptr [eax]
 006C72E1    call        dword ptr [edx+0A8];TWinControl.Invalidate
 006C72E7    pop         esi
 006C72E8    ret
*}
end;

//006C72EC
procedure TCheckListBox.SetHeaderColor(Value:TColor);
begin
{*
 006C72EC    push        esi
 006C72ED    mov         esi,eax
 006C72EF    cmp         edx,dword ptr [esi+320];TCheckListBox.FHeaderColor:TColor
>006C72F5    je          006C7307
 006C72F7    mov         dword ptr [esi+320],edx;TCheckListBox.FHeaderColor:TColor
 006C72FD    mov         eax,esi
 006C72FF    mov         edx,dword ptr [eax]
 006C7301    call        dword ptr [edx+0A8];TWinControl.Invalidate
 006C7307    pop         esi
 006C7308    ret
*}
end;

//006CA204
procedure sub_006CA204(?:TFXIniFile);
begin
{*
 006CA204    push        ebp
 006CA205    mov         ebp,esp
 006CA207    mov         ecx,81
 006CA20C    push        0
 006CA20E    push        0
 006CA210    dec         ecx
>006CA211    jne         006CA20C
 006CA213    push        ebx
 006CA214    push        esi
 006CA215    push        edi
 006CA216    mov         ebx,eax
 006CA218    mov         esi,901EA8;gvar_00901EA8:UnicodeString
 006CA21D    xor         eax,eax
 006CA21F    push        ebp
 006CA220    push        6CCEEE
 006CA225    push        dword ptr fs:[eax]
 006CA228    mov         dword ptr fs:[eax],esp
 006CA22B    push        6CCF08;'OK'
 006CA230    lea         eax,[ebp-4]
 006CA233    push        eax
 006CA234    mov         ecx,6CCF1C;'sOKBtn'
 006CA239    mov         edx,6CCF38;'CommonTexts'
 006CA23E    mov         eax,ebx
 006CA240    mov         edi,dword ptr [eax]
 006CA242    call        dword ptr [edi+4]
 006CA245    mov         edx,dword ptr [ebp-4]
 006CA248    mov         eax,7C2B9C;^'OK'
 006CA24D    call        @UStrAsg
 006CA252    push        6CCF5C;'Cancel'
 006CA257    lea         eax,[ebp-8]
 006CA25A    push        eax
 006CA25B    mov         ecx,6CCF78;'sCancelBtn'
 006CA260    mov         edx,6CCF38;'CommonTexts'
 006CA265    mov         eax,ebx
 006CA267    mov         edi,dword ptr [eax]
 006CA269    call        dword ptr [edi+4]
 006CA26C    mov         edx,dword ptr [ebp-8]
 006CA26F    mov         eax,7C2BA0;^'Cancel'
 006CA274    call        @UStrAsg
 006CA279    push        6CCF9C;'New file'
 006CA27E    lea         eax,[ebp-0C]
 006CA281    push        eax
 006CA282    mov         ecx,6CCFBC;'sNewFile'
 006CA287    mov         edx,6CCFDC;'Messages'
 006CA28C    mov         eax,ebx
 006CA28E    mov         edi,dword ptr [eax]
 006CA290    call        dword ptr [edi+4]
 006CA293    mov         edx,dword ptr [ebp-0C]
 006CA296    mov         eax,7C2BA4;^'New file'
 006CA29B    call        @UStrAsg
 006CA2A0    push        6CCFFC;'Changes you might have made in this data view will be lost.
Do you want to proc...
 006CA2A5    lea         eax,[ebp-10]
 006CA2A8    push        eax
 006CA2A9    mov         ecx,6CD0E0;'sChangesWillBeLost'
 006CA2AE    mov         edx,6CCFDC;'Messages'
 006CA2B3    mov         eax,ebx
 006CA2B5    mov         edi,dword ptr [eax]
 006CA2B7    call        dword ptr [edi+4]
 006CA2BA    mov         edx,dword ptr [ebp-10]
 006CA2BD    mov         eax,7C2BA8;^'Changes you might have made in this data view will be lost.
Do you want to...
 006CA2C2    call        @UStrAsg
 006CA2C7    push        6CD114;'The file does not contain valid data.'
 006CA2CC    lea         eax,[ebp-14]
 006CA2CF    push        eax
 006CA2D0    mov         ecx,6CD16C;'sFileContentInvalid'
 006CA2D5    mov         edx,6CCFDC;'Messages'
 006CA2DA    mov         eax,ebx
 006CA2DC    mov         edi,dword ptr [eax]
 006CA2DE    call        dword ptr [edi+4]
 006CA2E1    mov         edx,dword ptr [ebp-14]
 006CA2E4    mov         eax,7C2BAC;^'The file does not contain valid data.'
 006CA2E9    call        @UStrAsg
 006CA2EE    push        6CD1A0;'Select ...'
 006CA2F3    lea         eax,[ebp-18]
 006CA2F6    push        eax
 006CA2F7    mov         ecx,6CD1C4;'spopMenuSelect'
 006CA2FC    mov         edx,6CD1F0;'FXNetFrame'
 006CA301    mov         eax,ebx
 006CA303    mov         edi,dword ptr [eax]
 006CA305    call        dword ptr [edi+4]
 006CA308    mov         edx,dword ptr [ebp-18]
 006CA30B    mov         eax,901E30;gvar_00901E30:UnicodeString
 006CA310    call        @UStrAsg
 006CA315    push        6CD214;'Copy'
 006CA31A    lea         eax,[ebp-1C]
 006CA31D    push        eax
 006CA31E    mov         ecx,6CD22C;'spopMenuCopy'
 006CA323    mov         edx,6CD1F0;'FXNetFrame'
 006CA328    mov         eax,ebx
 006CA32A    mov         edi,dword ptr [eax]
 006CA32C    call        dword ptr [edi+4]
 006CA32F    mov         edx,dword ptr [ebp-1C]
 006CA332    mov         eax,901E38;gvar_00901E38:UnicodeString
 006CA337    call        @UStrAsg
 006CA33C    push        6CD254;'Paste'
 006CA341    lea         eax,[ebp-20]
 006CA344    push        eax
 006CA345    mov         ecx,6CD26C;'spopMenuPaste'
 006CA34A    mov         edx,6CD1F0;'FXNetFrame'
 006CA34F    mov         eax,ebx
 006CA351    mov         edi,dword ptr [eax]
 006CA353    call        dword ptr [edi+4]
 006CA356    mov         edx,dword ptr [ebp-20]
 006CA359    mov         eax,901E3C;gvar_00901E3C:UnicodeString
 006CA35E    call        @UStrAsg
 006CA363    push        6CD294;'Panels'
 006CA368    lea         eax,[ebp-24]
 006CA36B    push        eax
 006CA36C    mov         ecx,6CD2B0;'sTabSheetPanels'
 006CA371    mov         edx,6CD1F0;'FXNetFrame'
 006CA376    mov         eax,ebx
 006CA378    mov         edi,dword ptr [eax]
 006CA37A    call        dword ptr [edi+4]
 006CA37D    mov         edx,dword ptr [ebp-24]
 006CA380    mov         eax,7C2BB0;^'Panels'
 006CA385    call        @UStrAsg
 006CA38A    push        6CD2DC;'FXNet system name'
 006CA38F    lea         eax,[ebp-28]
 006CA392    push        eax
 006CA393    mov         ecx,6CD30C;'sgbNetName'
 006CA398    mov         edx,6CD1F0;'FXNetFrame'
 006CA39D    mov         eax,ebx
 006CA39F    mov         edi,dword ptr [eax]
 006CA3A1    call        dword ptr [edi+4]
 006CA3A4    mov         edx,dword ptr [ebp-28]
 006CA3A7    mov         eax,7C2BBC;^'FXNet system name'
 006CA3AC    call        @UStrAsg
 006CA3B1    push        6CD330;'System kind'
 006CA3B6    lea         eax,[ebp-2C]
 006CA3B9    push        eax
 006CA3BA    mov         ecx,6CD354;'sgbSystemType'
 006CA3BF    mov         edx,6CD1F0;'FXNetFrame'
 006CA3C4    mov         eax,ebx
 006CA3C6    mov         edi,dword ptr [eax]
 006CA3C8    call        dword ptr [edi+4]
 006CA3CB    mov         edx,dword ptr [ebp-2C]
 006CA3CE    mov         eax,7C2BC0;^'System kind'
 006CA3D3    call        @UStrAsg
 006CA3D8    push        6CD37C;'Standalone'
 006CA3DD    lea         eax,[ebp-30]
 006CA3E0    push        eax
 006CA3E1    mov         ecx,6CD3A0;'ssbStandalone'
 006CA3E6    mov         edx,6CD1F0;'FXNetFrame'
 006CA3EB    mov         eax,ebx
 006CA3ED    mov         edi,dword ptr [eax]
 006CA3EF    call        dword ptr [edi+4]
 006CA3F2    mov         edx,dword ptr [ebp-30]
 006CA3F5    mov         eax,901E40;gvar_00901E40:UnicodeString
 006CA3FA    call        @UStrAsg
 006CA3FF    push        6CD3C8;'Multipanel'
 006CA404    lea         eax,[ebp-34]
 006CA407    push        eax
 006CA408    mov         ecx,6CD3EC;'ssbMultipanel'
 006CA40D    mov         edx,6CD1F0;'FXNetFrame'
 006CA412    mov         eax,ebx
 006CA414    mov         edi,dword ptr [eax]
 006CA416    call        dword ptr [edi+4]
 006CA419    mov         edx,dword ptr [ebp-34]
 006CA41C    mov         eax,901E44;gvar_00901E44:UnicodeString
 006CA421    call        @UStrAsg
 006CA426    push        6CD294;'Panels'
 006CA42B    lea         eax,[ebp-38]
 006CA42E    push        eax
 006CA42F    mov         ecx,6CD414;'sgbFXNetPanels'
 006CA434    mov         edx,6CD1F0;'FXNetFrame'
 006CA439    mov         eax,ebx
 006CA43B    mov         edi,dword ptr [eax]
 006CA43D    call        dword ptr [edi+4]
 006CA440    mov         edx,dword ptr [ebp-38]
 006CA443    mov         eax,7C2BC4;^'Panels'
 006CA448    call        @UStrAsg
 006CA44D    push        6CD440;'Nr'
 006CA452    lea         eax,[ebp-3C]
 006CA455    push        eax
 006CA456    mov         ecx,6CD454;'slvPanels_Columns_0'
 006CA45B    mov         edx,6CD1F0;'FXNetFrame'
 006CA460    mov         eax,ebx
 006CA462    mov         edi,dword ptr [eax]
 006CA464    call        dword ptr [edi+4]
 006CA467    mov         edx,dword ptr [ebp-3C]
 006CA46A    mov         eax,901E48;gvar_00901E48:UnicodeString
 006CA46F    call        @UStrAsg
 006CA474    push        6CD488;'Type'
 006CA479    lea         eax,[ebp-40]
 006CA47C    push        eax
 006CA47D    mov         ecx,6CD4A0;'slvPanels_Columns_1'
 006CA482    mov         edx,6CD1F0;'FXNetFrame'
 006CA487    mov         eax,ebx
 006CA489    mov         edi,dword ptr [eax]
 006CA48B    call        dword ptr [edi+4]
 006CA48E    mov         edx,dword ptr [ebp-40]
 006CA491    mov         eax,901E4C;gvar_00901E4C:UnicodeString
 006CA496    call        @UStrAsg
 006CA49B    push        6CD4D4;'Name'
 006CA4A0    lea         eax,[ebp-44]
 006CA4A3    push        eax
 006CA4A4    mov         ecx,6CD4EC;'slvPanels_Columns_2'
 006CA4A9    mov         edx,6CD1F0;'FXNetFrame'
 006CA4AE    mov         eax,ebx
 006CA4B0    mov         edi,dword ptr [eax]
 006CA4B2    call        dword ptr [edi+4]
 006CA4B5    mov         edx,dword ptr [ebp-44]
 006CA4B8    mov         eax,901E50;gvar_00901E50:UnicodeString
 006CA4BD    call        @UStrAsg
 006CA4C2    push        6CD520;'Panel id'
 006CA4C7    lea         eax,[ebp-48]
 006CA4CA    push        eax
 006CA4CB    mov         ecx,6CD540;'slbPanelID'
 006CA4D0    mov         edx,6CD1F0;'FXNetFrame'
 006CA4D5    mov         eax,ebx
 006CA4D7    mov         edi,dword ptr [eax]
 006CA4D9    call        dword ptr [edi+4]
 006CA4DC    mov         edx,dword ptr [ebp-48]
 006CA4DF    mov         eax,7C2BC8;^'Panel id'
 006CA4E4    call        @UStrAsg
 006CA4E9    push        6CD564;'Panel type'
 006CA4EE    lea         eax,[ebp-4C]
 006CA4F1    push        eax
 006CA4F2    mov         ecx,6CD588;'slbPanelType'
 006CA4F7    mov         edx,6CD1F0;'FXNetFrame'
 006CA4FC    mov         eax,ebx
 006CA4FE    mov         edi,dword ptr [eax]
 006CA500    call        dword ptr [edi+4]
 006CA503    mov         edx,dword ptr [ebp-4C]
 006CA506    mov         eax,7C2BCC;^'Panel type'
 006CA50B    call        @UStrAsg
 006CA510    push        6CD5B0;'Panel name'
 006CA515    lea         eax,[ebp-50]
 006CA518    push        eax
 006CA519    mov         ecx,6CD5D4;'slbPanelName'
 006CA51E    mov         edx,6CD1F0;'FXNetFrame'
 006CA523    mov         eax,ebx
 006CA525    mov         edi,dword ptr [eax]
 006CA527    call        dword ptr [edi+4]
 006CA52A    mov         edx,dword ptr [ebp-50]
 006CA52D    mov         eax,7C2BD0;^'Panel name'
 006CA532    call        @UStrAsg
 006CA537    push        6CD5FC;'Add'
 006CA53C    lea         eax,[ebp-54]
 006CA53F    push        eax
 006CA540    mov         ecx,6CD610;'sbtnAdd'
 006CA545    mov         edx,6CD1F0;'FXNetFrame'
 006CA54A    mov         eax,ebx
 006CA54C    mov         edi,dword ptr [eax]
 006CA54E    call        dword ptr [edi+4]
 006CA551    mov         edx,dword ptr [ebp-54]
 006CA554    mov         eax,7C2BD4;^'Add'
 006CA559    call        @UStrAsg
 006CA55E    push        6CD62C;'Modify'
 006CA563    lea         eax,[ebp-58]
 006CA566    push        eax
 006CA567    mov         ecx,6CD648;'sbtnModify'
 006CA56C    mov         edx,6CD1F0;'FXNetFrame'
 006CA571    mov         eax,ebx
 006CA573    mov         edi,dword ptr [eax]
 006CA575    call        dword ptr [edi+4]
 006CA578    mov         edx,dword ptr [ebp-58]
 006CA57B    mov         eax,7C2BD8;^'Modify'
 006CA580    call        @UStrAsg
 006CA585    push        6CD66C;'Delete'
 006CA58A    lea         eax,[ebp-5C]
 006CA58D    push        eax
 006CA58E    mov         ecx,6CD688;'sbtnDelete'
 006CA593    mov         edx,6CD1F0;'FXNetFrame'
 006CA598    mov         eax,ebx
 006CA59A    mov         edi,dword ptr [eax]
 006CA59C    call        dword ptr [edi+4]
 006CA59F    mov         edx,dword ptr [ebp-5C]
 006CA5A2    mov         eax,7C2BDC;^'Delete'
 006CA5A7    call        @UStrAsg
 006CA5AC    push        6CD6AC;'Panel visibility'
 006CA5B1    lea         eax,[ebp-60]
 006CA5B4    push        eax
 006CA5B5    mov         ecx,6CD6DC;'sTabSheetVisibility'
 006CA5BA    mov         edx,6CD1F0;'FXNetFrame'
 006CA5BF    mov         eax,ebx
 006CA5C1    mov         edi,dword ptr [eax]
 006CA5C3    call        dword ptr [edi+4]
 006CA5C6    mov         edx,dword ptr [ebp-60]
 006CA5C9    mov         eax,7C2BB4;^'Panel visibility'
 006CA5CE    call        @UStrAsg
 006CA5D3    push        6CD710;'Summary of visible panels'
 006CA5D8    lea         eax,[ebp-64]
 006CA5DB    push        eax
 006CA5DC    mov         ecx,6CD750;'sgbPanelSummary'
 006CA5E1    mov         edx,6CD1F0;'FXNetFrame'
 006CA5E6    mov         eax,ebx
 006CA5E8    mov         edi,dword ptr [eax]
 006CA5EA    call        dword ptr [edi+4]
 006CA5ED    mov         edx,dword ptr [ebp-64]
 006CA5F0    mov         eax,7C2BE0;^'Summary of visible panels'
 006CA5F5    call        @UStrAsg
 006CA5FA    push        6CD440;'Nr'
 006CA5FF    lea         eax,[ebp-68]
 006CA602    push        eax
 006CA603    mov         ecx,6CD77C;'slvVisibles_Columns_0'
 006CA608    mov         edx,6CD1F0;'FXNetFrame'
 006CA60D    mov         eax,ebx
 006CA60F    mov         edi,dword ptr [eax]
 006CA611    call        dword ptr [edi+4]
 006CA614    mov         edx,dword ptr [ebp-68]
 006CA617    mov         eax,901E54;gvar_00901E54:UnicodeString
 006CA61C    call        @UStrAsg
 006CA621    push        6CD488;'Type'
 006CA626    lea         eax,[ebp-6C]
 006CA629    push        eax
 006CA62A    mov         ecx,6CD7B4;'slvVisibles_Columns_1'
 006CA62F    mov         edx,6CD1F0;'FXNetFrame'
 006CA634    mov         eax,ebx
 006CA636    mov         edi,dword ptr [eax]
 006CA638    call        dword ptr [edi+4]
 006CA63B    mov         edx,dword ptr [ebp-6C]
 006CA63E    mov         eax,901E58;gvar_00901E58:UnicodeString
 006CA643    call        @UStrAsg
 006CA648    push        6CD4D4;'Name'
 006CA64D    lea         eax,[ebp-70]
 006CA650    push        eax
 006CA651    mov         ecx,6CD7EC;'slvVisibles_Columns_2'
 006CA656    mov         edx,6CD1F0;'FXNetFrame'
 006CA65B    mov         eax,ebx
 006CA65D    mov         edi,dword ptr [eax]
 006CA65F    call        dword ptr [edi+4]
 006CA662    mov         edx,dword ptr [ebp-70]
 006CA665    mov         eax,901E5C;gvar_00901E5C:UnicodeString
 006CA66A    call        @UStrAsg
 006CA66F    push        6CD824;'Visible panels'
 006CA674    lea         eax,[ebp-74]
 006CA677    push        eax
 006CA678    mov         ecx,6CD850;'slvVisibles_Columns_3'
 006CA67D    mov         edx,6CD1F0;'FXNetFrame'
 006CA682    mov         eax,ebx
 006CA684    mov         edi,dword ptr [eax]
 006CA686    call        dword ptr [edi+4]
 006CA689    mov         edx,dword ptr [ebp-74]
 006CA68C    mov         eax,901E60;gvar_00901E60:UnicodeString
 006CA691    call        @UStrAsg
 006CA696    push        6CD888;' logical connections'
 006CA69B    lea         eax,[ebp-78]
 006CA69E    push        eax
 006CA69F    mov         ecx,6CD8C0;'sLogicalConnections'
 006CA6A4    mov         edx,6CD1F0;'FXNetFrame'
 006CA6A9    mov         eax,ebx
 006CA6AB    mov         edi,dword ptr [eax]
 006CA6AD    call        dword ptr [edi+4]
 006CA6B0    mov         edx,dword ptr [ebp-78]
 006CA6B3    mov         eax,7C2BE4;^' logical connections'
 006CA6B8    call        @UStrAsg
 006CA6BD    push        6CD8F4;'Loops and zones'
 006CA6C2    lea         eax,[ebp-7C]
 006CA6C5    push        eax
 006CA6C6    mov         ecx,6CD920;'sTabSheetSummary'
 006CA6CB    mov         edx,6CD1F0;'FXNetFrame'
 006CA6D0    mov         eax,ebx
 006CA6D2    mov         edi,dword ptr [eax]
 006CA6D4    call        dword ptr [edi+4]
 006CA6D7    mov         edx,dword ptr [ebp-7C]
 006CA6DA    mov         eax,7C2BB8;^'Loops and zones'
 006CA6DF    call        @UStrAsg
 006CA6E4    push        6CD950;'Summary of panels, loops and zones'
 006CA6E9    lea         eax,[ebp-80]
 006CA6EC    push        eax
 006CA6ED    mov         ecx,6CD9A4;'sgbLoopsAndZones'
 006CA6F2    mov         edx,6CD1F0;'FXNetFrame'
 006CA6F7    mov         eax,ebx
 006CA6F9    mov         edi,dword ptr [eax]
 006CA6FB    call        dword ptr [edi+4]
 006CA6FE    mov         edx,dword ptr [ebp-80]
 006CA701    mov         eax,7C2BE8;^'Summary of panels, loops and zones'
 006CA706    call        @UStrAsg
 006CA70B    push        6CD440;'Nr'
 006CA710    lea         eax,[ebp-84]
 006CA716    push        eax
 006CA717    mov         ecx,6CD9D4;'slvLoops_Columns_0'
 006CA71C    mov         edx,6CD1F0;'FXNetFrame'
 006CA721    mov         eax,ebx
 006CA723    mov         edi,dword ptr [eax]
 006CA725    call        dword ptr [edi+4]
 006CA728    mov         edx,dword ptr [ebp-84]
 006CA72E    mov         eax,901E64;gvar_00901E64:UnicodeString
 006CA733    call        @UStrAsg
 006CA738    push        6CD488;'Type'
 006CA73D    lea         eax,[ebp-88]
 006CA743    push        eax
 006CA744    mov         ecx,6CDA08;'slvLoops_Columns_1'
 006CA749    mov         edx,6CD1F0;'FXNetFrame'
 006CA74E    mov         eax,ebx
 006CA750    mov         edi,dword ptr [eax]
 006CA752    call        dword ptr [edi+4]
 006CA755    mov         edx,dword ptr [ebp-88]
 006CA75B    mov         eax,901E68;gvar_00901E68:UnicodeString
 006CA760    call        @UStrAsg
 006CA765    push        6CD4D4;'Name'
 006CA76A    lea         eax,[ebp-8C]
 006CA770    push        eax
 006CA771    mov         ecx,6CDA3C;'slvLoops_Columns_2'
 006CA776    mov         edx,6CD1F0;'FXNetFrame'
 006CA77B    mov         eax,ebx
 006CA77D    mov         edi,dword ptr [eax]
 006CA77F    call        dword ptr [edi+4]
 006CA782    mov         edx,dword ptr [ebp-8C]
 006CA788    mov         eax,901E6C;gvar_00901E6C:UnicodeString
 006CA78D    call        @UStrAsg
 006CA792    push        6CDA70;'Panel ID'
 006CA797    lea         eax,[ebp-90]
 006CA79D    push        eax
 006CA79E    mov         ecx,6CDA90;'slvLoops_Columns_3'
 006CA7A3    mov         edx,6CD1F0;'FXNetFrame'
 006CA7A8    mov         eax,ebx
 006CA7AA    mov         edi,dword ptr [eax]
 006CA7AC    call        dword ptr [edi+4]
 006CA7AF    mov         edx,dword ptr [ebp-90]
 006CA7B5    mov         eax,901E70;gvar_00901E70:UnicodeString
 006CA7BA    call        @UStrAsg
 006CA7BF    push        6CDAC4;'First loop'
 006CA7C4    lea         eax,[ebp-94]
 006CA7CA    push        eax
 006CA7CB    mov         ecx,6CDAE8;'slvLoops_Columns_4'
 006CA7D0    mov         edx,6CD1F0;'FXNetFrame'
 006CA7D5    mov         eax,ebx
 006CA7D7    mov         edi,dword ptr [eax]
 006CA7D9    call        dword ptr [edi+4]
 006CA7DC    mov         edx,dword ptr [ebp-94]
 006CA7E2    mov         eax,901E74;gvar_00901E74:UnicodeString
 006CA7E7    call        @UStrAsg
 006CA7EC    push        6CDB1C;'Last loop'
 006CA7F1    lea         eax,[ebp-98]
 006CA7F7    push        eax
 006CA7F8    mov         ecx,6CDB3C;'slvLoops_Columns_5'
 006CA7FD    mov         edx,6CD1F0;'FXNetFrame'
 006CA802    mov         eax,ebx
 006CA804    mov         edi,dword ptr [eax]
 006CA806    call        dword ptr [edi+4]
 006CA809    mov         edx,dword ptr [ebp-98]
 006CA80F    mov         eax,901E78;gvar_00901E78:UnicodeString
 006CA814    call        @UStrAsg
 006CA819    push        6CDB70;'First zone'
 006CA81E    lea         eax,[ebp-9C]
 006CA824    push        eax
 006CA825    mov         ecx,6CDB94;'slvLoops_Columns_6'
 006CA82A    mov         edx,6CD1F0;'FXNetFrame'
 006CA82F    mov         eax,ebx
 006CA831    mov         edi,dword ptr [eax]
 006CA833    call        dword ptr [edi+4]
 006CA836    mov         edx,dword ptr [ebp-9C]
 006CA83C    mov         eax,901E7C;gvar_00901E7C:UnicodeString
 006CA841    call        @UStrAsg
 006CA846    push        6CDBC8;'Last zone'
 006CA84B    lea         eax,[ebp-0A0]
 006CA851    push        eax
 006CA852    mov         ecx,6CDBE8;'slvLoops_Columns_7'
 006CA857    mov         edx,6CD1F0;'FXNetFrame'
 006CA85C    mov         eax,ebx
 006CA85E    mov         edi,dword ptr [eax]
 006CA860    call        dword ptr [edi+4]
 006CA863    mov         edx,dword ptr [ebp-0A0]
 006CA869    mov         eax,901E80;gvar_00901E80:UnicodeString
 006CA86E    call        @UStrAsg
 006CA873    push        6CDC1C;'Warning! Error in panel ID'
 006CA878    lea         eax,[ebp-0A4]
 006CA87E    push        eax
 006CA87F    mov         ecx,6CDC60;'slbErrorInPanelId'
 006CA884    mov         edx,6CD1F0;'FXNetFrame'
 006CA889    mov         eax,ebx
 006CA88B    mov         edi,dword ptr [eax]
 006CA88D    call        dword ptr [edi+4]
 006CA890    mov         edx,dword ptr [ebp-0A4]
 006CA896    mov         eax,7C2BEC;^'Warning! Error in panel ID'
 006CA89B    call        @UStrAsg
 006CA8A0    push        6CDC90;'Warning! Overlapping Loops'
 006CA8A5    lea         eax,[ebp-0A8]
 006CA8AB    push        eax
 006CA8AC    mov         ecx,6CDCD4;'slbOverlappingLoops'
 006CA8B1    mov         edx,6CD1F0;'FXNetFrame'
 006CA8B6    mov         eax,ebx
 006CA8B8    mov         edi,dword ptr [eax]
 006CA8BA    call        dword ptr [edi+4]
 006CA8BD    mov         edx,dword ptr [ebp-0A8]
 006CA8C3    mov         eax,7C2BF0;^'Warning! Overlapping Loops'
 006CA8C8    call        @UStrAsg
 006CA8CD    push        6CDD08;'Warning! Overlapping Zones'
 006CA8D2    lea         eax,[ebp-0AC]
 006CA8D8    push        eax
 006CA8D9    mov         ecx,6CDD4C;'slbOverlappingZones'
 006CA8DE    mov         edx,6CD1F0;'FXNetFrame'
 006CA8E3    mov         eax,ebx
 006CA8E5    mov         edi,dword ptr [eax]
 006CA8E7    call        dword ptr [edi+4]
 006CA8EA    mov         edx,dword ptr [ebp-0AC]
 006CA8F0    mov         eax,7C2BF4;^'Warning! Overlapping Zones'
 006CA8F5    call        @UStrAsg
 006CA8FA    push        6CDD80;'Standalone systems can only have a panel with id = 0'
 006CA8FF    lea         eax,[ebp-0B0]
 006CA905    push        eax
 006CA906    mov         ecx,6CDDF8;'sStandaloneCanOnly'
 006CA90B    mov         edx,6CD1F0;'FXNetFrame'
 006CA910    mov         eax,ebx
 006CA912    mov         edi,dword ptr [eax]
 006CA914    call        dword ptr [edi+4]
 006CA917    mov         edx,dword ptr [ebp-0B0]
 006CA91D    mov         eax,7C2BF8;^'Standalone systems can only have a panel with id = 0'
 006CA922    call        @UStrAsg
 006CA927    push        6CDE2C;'Multipanel systems can not have panels with id = 0'
 006CA92C    lea         eax,[ebp-0B4]
 006CA932    push        eax
 006CA933    mov         ecx,6CDEA0;'sMultipanelCanNot'
 006CA938    mov         edx,6CD1F0;'FXNetFrame'
 006CA93D    mov         eax,ebx
 006CA93F    mov         edi,dword ptr [eax]
 006CA941    call        dword ptr [edi+4]
 006CA944    mov         edx,dword ptr [ebp-0B4]
 006CA94A    mov         eax,7C2BFC;^'Multipanel systems can not have panels with id = 0'
 006CA94F    call        @UStrAsg
 006CA954    push        6CDED0;'A panel with this ID already exists'
 006CA959    lea         eax,[ebp-0B8]
 006CA95F    push        eax
 006CA960    mov         ecx,6CDF24;'sAPanelWithThisID'
 006CA965    mov         edx,6CD1F0;'FXNetFrame'
 006CA96A    mov         eax,ebx
 006CA96C    mov         edi,dword ptr [eax]
 006CA96E    call        dword ptr [edi+4]
 006CA971    mov         edx,dword ptr [ebp-0B8]
 006CA977    mov         eax,7C2C00;^'A panel with this ID already exists'
 006CA97C    call        @UStrAsg
 006CA981    push        6CDF54;'All panels with ID > 0 will be deleted! Do you want to continue?'
 006CA986    lea         eax,[ebp-0BC]
 006CA98C    push        eax
 006CA98D    mov         ecx,6CDFE4;'sPanelsWillBeDeleted'
 006CA992    mov         edx,6CD1F0;'FXNetFrame'
 006CA997    mov         eax,ebx
 006CA999    mov         edi,dword ptr [eax]
 006CA99B    call        dword ptr [edi+4]
 006CA99E    mov         edx,dword ptr [ebp-0BC]
 006CA9A4    mov         eax,7C2C04;^'All panels with ID > 0 will be deleted! Do you want to continue?'
 006CA9A9    call        @UStrAsg
 006CA9AE    push        6CE01C;'The Panel with ID = 0 will be deleted! Do you want to continue?'
 006CA9B3    lea         eax,[ebp-0C0]
 006CA9B9    push        eax
 006CA9BA    mov         ecx,6CE0A8;'sPanel0WillBeDeleted'
 006CA9BF    mov         edx,6CD1F0;'FXNetFrame'
 006CA9C4    mov         eax,ebx
 006CA9C6    mov         edi,dword ptr [eax]
 006CA9C8    call        dword ptr [edi+4]
 006CA9CB    mov         edx,dword ptr [ebp-0C0]
 006CA9D1    mov         eax,7C2C08;^'The Panel with ID = 0 will be deleted! Do you want to continue?'
 006CA9D6    call        @UStrAsg
 006CA9DB    push        6CE0E0;'Panel info'
 006CA9E0    lea         eax,[ebp-0C4]
 006CA9E6    push        eax
 006CA9E7    mov         ecx,6CE104;'sPanelInfoSheet'
 006CA9EC    mov         edx,6CE130;'FXPDFrame'
 006CA9F1    mov         eax,ebx
 006CA9F3    mov         edi,dword ptr [eax]
 006CA9F5    call        dword ptr [edi+4]
 006CA9F8    mov         edx,dword ptr [ebp-0C4]
 006CA9FE    mov         eax,7C2C0C;^'Panel info'
 006CAA03    call        @UStrAsg
 006CAA08    push        6CE150;'Panel file name'
 006CAA0D    lea         eax,[ebp-0C8]
 006CAA13    push        eax
 006CAA14    mov         ecx,6CE17C;'sgbPanelFileName'
 006CAA19    mov         edx,6CE130;'FXPDFrame'
 006CAA1E    mov         eax,ebx
 006CAA20    mov         edi,dword ptr [eax]
 006CAA22    call        dword ptr [edi+4]
 006CAA25    mov         edx,dword ptr [ebp-0C8]
 006CAA2B    mov         eax,7C2C10;^'Panel file name'
 006CAA30    call        @UStrAsg
 006CAA35    push        6CE1AC;'Panel description'
 006CAA3A    lea         eax,[ebp-0CC]
 006CAA40    push        eax
 006CAA41    mov         ecx,6CE1DC;'sgbPanelDescription'
 006CAA46    mov         edx,6CE130;'FXPDFrame'
 006CAA4B    mov         eax,ebx
 006CAA4D    mov         edi,dword ptr [eax]
 006CAA4F    call        dword ptr [edi+4]
 006CAA52    mov         edx,dword ptr [ebp-0CC]
 006CAA58    mov         eax,7C2C14;^'Panel description'
 006CAA5D    call        @UStrAsg
 006CAA62    push        6CE210;'Logo in display of panel'
 006CAA67    lea         eax,[ebp-0D0]
 006CAA6D    push        eax
 006CAA6E    mov         ecx,6CE250;'sgbShowLogo'
 006CAA73    mov         edx,6CE130;'FXPDFrame'
 006CAA78    mov         eax,ebx
 006CAA7A    mov         edi,dword ptr [eax]
 006CAA7C    call        dword ptr [edi+4]
 006CAA7F    mov         edx,dword ptr [ebp-0D0]
 006CAA85    mov         eax,7C2C18;^'Logo in display of panel'
 006CAA8A    call        @UStrAsg
 006CAA8F    push        6CE274;'No logo'
 006CAA94    lea         eax,[ebp-0D4]
 006CAA9A    push        eax
 006CAA9B    mov         ecx,6CE290;'sNoLogo'
 006CAAA0    mov         edx,6CE130;'FXPDFrame'
 006CAAA5    mov         eax,ebx
 006CAAA7    mov         edi,dword ptr [eax]
 006CAAA9    call        dword ptr [edi+4]
 006CAAAC    mov         edx,dword ptr [ebp-0D4]
 006CAAB2    mov         eax,7C2C1C;^'No logo'
 006CAAB7    call        @UStrAsg
 006CAABC    push        6CE2AC;'Communication'
 006CAAC1    lea         eax,[ebp-0D8]
 006CAAC7    push        eax
 006CAAC8    mov         ecx,6CE2D4;'sCommunicationSheet'
 006CAACD    mov         edx,6CE130;'FXPDFrame'
 006CAAD2    mov         eax,ebx
 006CAAD4    mov         edi,dword ptr [eax]
 006CAAD6    call        dword ptr [edi+4]
 006CAAD9    mov         edx,dword ptr [ebp-0D8]
 006CAADF    mov         eax,7C2C20;^'Communication'
 006CAAE4    call        @UStrAsg
 006CAAE9    push        6CE308;'RS232 usage'
 006CAAEE    lea         eax,[ebp-0DC]
 006CAAF4    push        eax
 006CAAF5    mov         ecx,6CE32C;'sgbRS232_0'
 006CAAFA    mov         edx,6CE130;'FXPDFrame'
 006CAAFF    mov         eax,ebx
 006CAB01    mov         edi,dword ptr [eax]
 006CAB03    call        dword ptr [edi+4]
 006CAB06    mov         edx,dword ptr [ebp-0DC]
 006CAB0C    mov         eax,7C2C24;^'RS232 usage'
 006CAB11    call        @UStrAsg
 006CAB16    push        6CE350;'Not in use'
 006CAB1B    lea         eax,[ebp-0E0]
 006CAB21    push        eax
 006CAB22    mov         ecx,6CE374;'scbRS2320UseNotUsed'
 006CAB27    mov         edx,6CE130;'FXPDFrame'
 006CAB2C    mov         eax,ebx
 006CAB2E    mov         edi,dword ptr [eax]
 006CAB30    call        dword ptr [edi+4]
 006CAB33    mov         edx,dword ptr [ebp-0E0]
 006CAB39    mov         eax,901E84;gvar_00901E84:UnicodeString
 006CAB3E    call        @UStrAsg
 006CAB43    push        6CE3A8;'Printer (ASCII)'
 006CAB48    lea         eax,[ebp-0E4]
 006CAB4E    push        eax
 006CAB4F    mov         ecx,6CE3D4;'scbRS2320UsePrinter'
 006CAB54    mov         edx,6CE130;'FXPDFrame'
 006CAB59    mov         eax,ebx
 006CAB5B    mov         edi,dword ptr [eax]
 006CAB5D    call        dword ptr [edi+4]
 006CAB60    mov         edx,dword ptr [ebp-0E4]
 006CAB66    mov         eax,901E88;gvar_00901E88:UnicodeString
 006CAB6B    call        @UStrAsg
 006CAB70    push        6CE408;'INFO protocol'
 006CAB75    lea         eax,[ebp-0E8]
 006CAB7B    push        eax
 006CAB7C    mov         ecx,6CE430;'scbRS2320UseInfoProt'
 006CAB81    mov         edx,6CE130;'FXPDFrame'
 006CAB86    mov         eax,ebx
 006CAB88    mov         edi,dword ptr [eax]
 006CAB8A    call        dword ptr [edi+4]
 006CAB8D    mov         edx,dword ptr [ebp-0E8]
 006CAB93    mov         eax,901E8C;gvar_00901E8C:UnicodeString
 006CAB98    call        @UStrAsg
 006CAB9D    push        6CE468;'INFO monitored'
 006CABA2    lea         eax,[ebp-0EC]
 006CABA8    push        eax
 006CABA9    mov         ecx,6CE494;'scbRS2320Monitored'
 006CABAE    mov         edx,6CE130;'FXPDFrame'
 006CABB3    mov         eax,ebx
 006CABB5    mov         edi,dword ptr [eax]
 006CABB7    call        dword ptr [edi+4]
 006CABBA    mov         edx,dword ptr [ebp-0EC]
 006CABC0    mov         eax,7C2C28;^'INFO monitored'
 006CABC5    call        @UStrAsg
 006CABCA    push        6CE4C8;'Disable if router disabled'
 006CABCF    lea         eax,[ebp-0F0]
 006CABD5    push        eax
 006CABD6    mov         ecx,6CE50C;'scbRS2320RouterDep'
 006CABDB    mov         edx,6CE130;'FXPDFrame'
 006CABE0    mov         eax,ebx
 006CABE2    mov         edi,dword ptr [eax]
 006CABE4    call        dword ptr [edi+4]
 006CABE7    mov         edx,dword ptr [ebp-0F0]
 006CABED    mov         eax,7C2C2C;^'Disable if router disabled'
 006CABF2    call        @UStrAsg
 006CABF7    push        6CE540;'Baud rate'
 006CABFC    lea         eax,[ebp-0F4]
 006CAC02    push        eax
 006CAC03    mov         ecx,6CE560;'slbRS2320Baud'
 006CAC08    mov         edx,6CE130;'FXPDFrame'
 006CAC0D    mov         eax,ebx
 006CAC0F    mov         edi,dword ptr [eax]
 006CAC11    call        dword ptr [edi+4]
 006CAC14    mov         edx,dword ptr [ebp-0F4]
 006CAC1A    mov         eax,7C2C30;^'Baud rate'
 006CAC1F    call        @UStrAsg
 006CAC24    push        6CE588;'Description (shown in fault situation)'
 006CAC29    lea         eax,[ebp-0F8]
 006CAC2F    push        eax
 006CAC30    mov         ecx,6CE5E4;'slbRS2320Description'
 006CAC35    mov         edx,6CE130;'FXPDFrame'
 006CAC3A    mov         eax,ebx
 006CAC3C    mov         edi,dword ptr [eax]
 006CAC3E    call        dword ptr [edi+4]
 006CAC41    mov         edx,dword ptr [ebp-0F8]
 006CAC47    mov         eax,7C2C34;^'Description (shown in fault situation)'
 006CAC4C    call        @UStrAsg
 006CAC51    push        6CE61C;'RS485 usage'
 006CAC56    lea         eax,[ebp-0FC]
 006CAC5C    push        eax
 006CAC5D    mov         ecx,6CE640;'sgbRS485_1'
 006CAC62    mov         edx,6CE130;'FXPDFrame'
 006CAC67    mov         eax,ebx
 006CAC69    mov         edi,dword ptr [eax]
 006CAC6B    call        dword ptr [edi+4]
 006CAC6E    mov         edx,dword ptr [ebp-0FC]
 006CAC74    mov         eax,7C2C38;^'RS485 usage'
 006CAC79    call        @UStrAsg
 006CAC7E    push        6CE350;'Not in use'
 006CAC83    lea         eax,[ebp-100]
 006CAC89    push        eax
 006CAC8A    mov         ecx,6CE664;'scbRS4851UseNotUsed'
 006CAC8F    mov         edx,6CE130;'FXPDFrame'
 006CAC94    mov         eax,ebx
 006CAC96    mov         edi,dword ptr [eax]
 006CAC98    call        dword ptr [edi+4]
 006CAC9B    mov         edx,dword ptr [ebp-100]
 006CACA1    mov         eax,901E90;gvar_00901E90:UnicodeString
 006CACA6    call        @UStrAsg
 006CACAB    push        6CE408;'INFO protocol'
 006CACB0    lea         eax,[ebp-104]
 006CACB6    push        eax
 006CACB7    mov         ecx,6CE698;'scbRS4851UseInfoProt'
 006CACBC    mov         edx,6CE130;'FXPDFrame'
 006CACC1    mov         eax,ebx
 006CACC3    mov         edi,dword ptr [eax]
 006CACC5    call        dword ptr [edi+4]
 006CACC8    mov         edx,dword ptr [ebp-104]
 006CACCE    mov         eax,901E94;gvar_00901E94:UnicodeString
 006CACD3    call        @UStrAsg
 006CACD8    push        6CE468;'INFO monitored'
 006CACDD    lea         eax,[ebp-108]
 006CACE3    push        eax
 006CACE4    mov         ecx,6CE6D0;'scbRS4851Monitored'
 006CACE9    mov         edx,6CE130;'FXPDFrame'
 006CACEE    mov         eax,ebx
 006CACF0    mov         edi,dword ptr [eax]
 006CACF2    call        dword ptr [edi+4]
 006CACF5    mov         edx,dword ptr [ebp-108]
 006CACFB    mov         eax,7C2C3C;^'INFO monitored'
 006CAD00    call        @UStrAsg
 006CAD05    push        6CE4C8;'Disable if router disabled'
 006CAD0A    lea         eax,[ebp-10C]
 006CAD10    push        eax
 006CAD11    mov         ecx,6CE704;'scbRS4851RouterDep'
 006CAD16    mov         edx,6CE130;'FXPDFrame'
 006CAD1B    mov         eax,ebx
 006CAD1D    mov         edi,dword ptr [eax]
 006CAD1F    call        dword ptr [edi+4]
 006CAD22    mov         edx,dword ptr [ebp-10C]
 006CAD28    mov         eax,7C2C40;^'Disable if router disabled'
 006CAD2D    call        @UStrAsg
 006CAD32    push        6CE540;'Baud rate'
 006CAD37    lea         eax,[ebp-110]
 006CAD3D    push        eax
 006CAD3E    mov         ecx,6CE738;'slbRS4851Baud'
 006CAD43    mov         edx,6CE130;'FXPDFrame'
 006CAD48    mov         eax,ebx
 006CAD4A    mov         edi,dword ptr [eax]
 006CAD4C    call        dword ptr [edi+4]
 006CAD4F    mov         edx,dword ptr [ebp-110]
 006CAD55    mov         eax,7C2C44;^'Baud rate'
 006CAD5A    call        @UStrAsg
 006CAD5F    push        6CE588;'Description (shown in fault situation)'
 006CAD64    lea         eax,[ebp-114]
 006CAD6A    push        eax
 006CAD6B    mov         ecx,6CE760;'slbRS4851Description'
 006CAD70    mov         edx,6CE130;'FXPDFrame'
 006CAD75    mov         eax,ebx
 006CAD77    mov         edi,dword ptr [eax]
 006CAD79    call        dword ptr [edi+4]
 006CAD7C    mov         edx,dword ptr [ebp-114]
 006CAD82    mov         eax,7C2C48;^'Description (shown in fault situation)'
 006CAD87    call        @UStrAsg
 006CAD8C    push        6CE798;'SYSTEM-1 usage'
 006CAD91    lea         eax,[ebp-118]
 006CAD97    push        eax
 006CAD98    mov         ecx,6CE7C4;'sgbRS485_2'
 006CAD9D    mov         edx,6CE130;'FXPDFrame'
 006CADA2    mov         eax,ebx
 006CADA4    mov         edi,dword ptr [eax]
 006CADA6    call        dword ptr [edi+4]
 006CADA9    mov         edx,dword ptr [ebp-118]
 006CADAF    mov         eax,7C2C4C;^'SYSTEM-1 usage'
 006CADB4    call        @UStrAsg
 006CADB9    push        6CE350;'Not in use'
 006CADBE    lea         eax,[ebp-11C]
 006CADC4    push        eax
 006CADC5    mov         ecx,6CE7E8;'scbRS4852UseNotUsed'
 006CADCA    mov         edx,6CE130;'FXPDFrame'
 006CADCF    mov         eax,ebx
 006CADD1    mov         edi,dword ptr [eax]
 006CADD3    call        dword ptr [edi+4]
 006CADD6    mov         edx,dword ptr [ebp-11C]
 006CADDC    mov         eax,901E98;gvar_00901E98:UnicodeString
 006CADE1    call        @UStrAsg
 006CADE6    push        6CE81C;'FX protocol'
 006CADEB    lea         eax,[ebp-120]
 006CADF1    push        eax
 006CADF2    mov         ecx,6CE840;'scbRS4852UseFXProt'
 006CADF7    mov         edx,6CE130;'FXPDFrame'
 006CADFC    mov         eax,ebx
 006CADFE    mov         edi,dword ptr [eax]
 006CAE00    call        dword ptr [edi+4]
 006CAE03    mov         edx,dword ptr [ebp-120]
 006CAE09    mov         eax,901E9C;gvar_00901E9C:UnicodeString
 006CAE0E    call        @UStrAsg
 006CAE13    push        6CE540;'Baud rate'
 006CAE18    lea         eax,[ebp-124]
 006CAE1E    push        eax
 006CAE1F    mov         ecx,6CE874;'slbRS4852Baud'
 006CAE24    mov         edx,6CE130;'FXPDFrame'
 006CAE29    mov         eax,ebx
 006CAE2B    mov         edi,dword ptr [eax]
 006CAE2D    call        dword ptr [edi+4]
 006CAE30    mov         edx,dword ptr [ebp-124]
 006CAE36    mov         eax,7C2C50;^'Baud rate'
 006CAE3B    call        @UStrAsg
 006CAE40    push        6CE89C;'SYSTEM-2 usage'
 006CAE45    lea         eax,[ebp-128]
 006CAE4B    push        eax
 006CAE4C    mov         ecx,6CE8C8;'sgbRS485_3'
 006CAE51    mov         edx,6CE130;'FXPDFrame'
 006CAE56    mov         eax,ebx
 006CAE58    mov         edi,dword ptr [eax]
 006CAE5A    call        dword ptr [edi+4]
 006CAE5D    mov         edx,dword ptr [ebp-128]
 006CAE63    mov         eax,7C2C54;^'SYSTEM-2 usage'
 006CAE68    call        @UStrAsg
 006CAE6D    push        6CE350;'Not in use'
 006CAE72    lea         eax,[ebp-12C]
 006CAE78    push        eax
 006CAE79    mov         ecx,6CE8EC;'scbRS4853UseNotUsed'
 006CAE7E    mov         edx,6CE130;'FXPDFrame'
 006CAE83    mov         eax,ebx
 006CAE85    mov         edi,dword ptr [eax]
 006CAE87    call        dword ptr [edi+4]
 006CAE8A    mov         edx,dword ptr [ebp-12C]
 006CAE90    mov         eax,901EA0;gvar_00901EA0:UnicodeString
 006CAE95    call        @UStrAsg
 006CAE9A    push        6CE81C;'FX protocol'
 006CAE9F    lea         eax,[ebp-130]
 006CAEA5    push        eax
 006CAEA6    mov         ecx,6CE920;'scbRS4853UseFXProt'
 006CAEAB    mov         edx,6CE130;'FXPDFrame'
 006CAEB0    mov         eax,ebx
 006CAEB2    mov         edi,dword ptr [eax]
 006CAEB4    call        dword ptr [edi+4]
 006CAEB7    mov         edx,dword ptr [ebp-130]
 006CAEBD    mov         eax,901EA4;gvar_00901EA4:UnicodeString
 006CAEC2    call        @UStrAsg
 006CAEC7    push        6CE954;'Ethernet communication'
 006CAECC    lea         eax,[ebp-134]
 006CAED2    push        eax
 006CAED3    mov         ecx,6CE990;'sgbEthernet'
 006CAED8    mov         edx,6CE130;'FXPDFrame'
 006CAEDD    mov         eax,ebx
 006CAEDF    mov         edi,dword ptr [eax]
 006CAEE1    call        dword ptr [edi+4]
 006CAEE4    mov         edx,dword ptr [ebp-134]
 006CAEEA    mov         eax,7C2C58;^'Ethernet communication'
 006CAEEF    call        @UStrAsg
 006CAEF4    push        6CE350;'Not in use'
 006CAEF9    lea         eax,[ebp-138]
 006CAEFF    push        eax
 006CAF00    mov         ecx,6CE9B4;'srbEthernetNotInUse'
 006CAF05    mov         edx,6CE130;'FXPDFrame'
 006CAF0A    mov         eax,ebx
 006CAF0C    mov         edi,dword ptr [eax]
 006CAF0E    call        dword ptr [edi+4]
 006CAF11    mov         edx,dword ptr [ebp-138]
 006CAF17    mov         eax,7C2C5C;^'Not in use'
 006CAF1C    call        @UStrAsg
 006CAF21    push        6CE9E8;'Obtain address from DHCP'
 006CAF26    lea         eax,[ebp-13C]
 006CAF2C    push        eax
 006CAF2D    mov         ecx,6CEA28;'srbEthernetUseDHCP'
 006CAF32    mov         edx,6CE130;'FXPDFrame'
 006CAF37    mov         eax,ebx
 006CAF39    mov         edi,dword ptr [eax]
 006CAF3B    call        dword ptr [edi+4]
 006CAF3E    mov         edx,dword ptr [ebp-13C]
 006CAF44    mov         eax,7C2C60;^'Obtain address from DHCP'
 006CAF49    call        @UStrAsg
 006CAF4E    push        6CEA5C;'Use following static settings'
 006CAF53    lea         eax,[ebp-140]
 006CAF59    push        eax
 006CAF5A    mov         ecx,6CEAA4;'srbEthernetStatic'
 006CAF5F    mov         edx,6CE130;'FXPDFrame'
 006CAF64    mov         eax,ebx
 006CAF66    mov         edi,dword ptr [eax]
 006CAF68    call        dword ptr [edi+4]
 006CAF6B    mov         edx,dword ptr [ebp-140]
 006CAF71    mov         eax,7C2C64;^'Use following static settings'
 006CAF76    call        @UStrAsg
 006CAF7B    push        6CEAD4;'Panel IP addrress'
 006CAF80    lea         eax,[ebp-144]
 006CAF86    push        eax
 006CAF87    mov         ecx,6CEB04;'slblPanelIpAddress'
 006CAF8C    mov         edx,6CE130;'FXPDFrame'
 006CAF91    mov         eax,ebx
 006CAF93    mov         edi,dword ptr [eax]
 006CAF95    call        dword ptr [edi+4]
 006CAF98    mov         edx,dword ptr [ebp-144]
 006CAF9E    mov         eax,7C2C68;^'Panel IP addrress'
 006CAFA3    call        @UStrAsg
 006CAFA8    push        6CEB38;'Subnet mask'
 006CAFAD    lea         eax,[ebp-148]
 006CAFB3    push        eax
 006CAFB4    mov         ecx,6CEB5C;'slblSubnetMask'
 006CAFB9    mov         edx,6CE130;'FXPDFrame'
 006CAFBE    mov         eax,ebx
 006CAFC0    mov         edi,dword ptr [eax]
 006CAFC2    call        dword ptr [edi+4]
 006CAFC5    mov         edx,dword ptr [ebp-148]
 006CAFCB    mov         eax,7C2C6C;^'Subnet mask'
 006CAFD0    call        @UStrAsg
 006CAFD5    push        6CEB88;'Gateway address'
 006CAFDA    lea         eax,[ebp-14C]
 006CAFE0    push        eax
 006CAFE1    mov         ecx,6CEBB4;'slblGatewayAddress'
 006CAFE6    mov         edx,6CE130;'FXPDFrame'
 006CAFEB    mov         eax,ebx
 006CAFED    mov         edi,dword ptr [eax]
 006CAFEF    call        dword ptr [edi+4]
 006CAFF2    mov         edx,dword ptr [ebp-14C]
 006CAFF8    mov         eax,7C2C70;^'Gateway address'
 006CAFFD    call        @UStrAsg
 006CB002    push        6CEBE8;' Allow FireXpert Connection'
 006CB007    lea         eax,[ebp-150]
 006CB00D    push        eax
 006CB00E    mov         ecx,6CEC2C;'srbAllowFireXpert'
 006CB013    mov         edx,6CE130;'FXPDFrame'
 006CB018    mov         eax,ebx
 006CB01A    mov         edi,dword ptr [eax]
 006CB01C    call        dword ptr [edi+4]
 006CB01F    mov         edx,dword ptr [ebp-150]
 006CB025    mov         eax,7C2C88;^' Allow FireXpert Connection'
 006CB02A    call        @UStrAsg
 006CB02F    push        6CEC5C;' Allow Remote Configuration (Unsecure)'
 006CB034    lea         eax,[ebp-154]
 006CB03A    push        eax
 006CB03B    mov         ecx,6CECB8;'srbAllowRemoteConfig'
 006CB040    mov         edx,6CE130;'FXPDFrame'
 006CB045    mov         eax,ebx
 006CB047    mov         edi,dword ptr [eax]
 006CB049    call        dword ptr [edi+4]
 006CB04C    mov         edx,dword ptr [ebp-154]
 006CB052    mov         eax,7C2C8C;^' Allow Remote Configuration (Unsecure)'
 006CB057    call        @UStrAsg
 006CB05C    push        6CECF0;'Identifications'
 006CB061    lea         eax,[ebp-158]
 006CB067    push        eax
 006CB068    mov         ecx,6CED1C;'sIdentificationSheet'
 006CB06D    mov         edx,6CE130;'FXPDFrame'
 006CB072    mov         eax,ebx
 006CB074    mov         edi,dword ptr [eax]
 006CB076    call        dword ptr [edi+4]
 006CB079    mov         edx,dword ptr [ebp-158]
 006CB07F    mov         eax,7C2C90;^'Identifications'
 006CB084    call        @UStrAsg
 006CB089    push        6CDA70;'Panel ID'
 006CB08E    lea         eax,[ebp-15C]
 006CB094    push        eax
 006CB095    mov         ecx,6CED54;'sgbPanelID'
 006CB09A    mov         edx,6CE130;'FXPDFrame'
 006CB09F    mov         eax,ebx
 006CB0A1    mov         edi,dword ptr [eax]
 006CB0A3    call        dword ptr [edi+4]
 006CB0A6    mov         edx,dword ptr [ebp-15C]
 006CB0AC    mov         eax,7C2C94;^'Panel ID'
 006CB0B1    call        @UStrAsg
 006CB0B6    push        6CED78;'System ID of this panel'
 006CB0BB    lea         eax,[ebp-160]
 006CB0C1    push        eax
 006CB0C2    mov         ecx,6CEDB4;'slbThisPanelID'
 006CB0C7    mov         edx,6CE130;'FXPDFrame'
 006CB0CC    mov         eax,ebx
 006CB0CE    mov         edi,dword ptr [eax]
 006CB0D0    call        dword ptr [edi+4]
 006CB0D3    mov         edx,dword ptr [ebp-160]
 006CB0D9    mov         eax,7C2C98;^'System ID of this panel'
 006CB0DE    call        @UStrAsg
 006CB0E3    push        6CEDE0;'Detection Zones'
 006CB0E8    lea         eax,[ebp-164]
 006CB0EE    push        eax
 006CB0EF    mov         ecx,6CEE0C;'sgbDetectionZones'
 006CB0F4    mov         edx,6CE130;'FXPDFrame'
 006CB0F9    mov         eax,ebx
 006CB0FB    mov         edi,dword ptr [eax]
 006CB0FD    call        dword ptr [edi+4]
 006CB100    mov         edx,dword ptr [ebp-164]
 006CB106    mov         eax,7C2C9C;^'Detection Zones'
 006CB10B    call        @UStrAsg
 006CB110    push        6CEE3C;'System ID of first zone'
 006CB115    lea         eax,[ebp-168]
 006CB11B    push        eax
 006CB11C    mov         ecx,6CEE78;'slbFirstZoneID'
 006CB121    mov         edx,6CE130;'FXPDFrame'
 006CB126    mov         eax,ebx
 006CB128    mov         edi,dword ptr [eax]
 006CB12A    call        dword ptr [edi+4]
 006CB12D    mov         edx,dword ptr [ebp-168]
 006CB133    mov         eax,7C2CA0;^'System ID of first zone'
 006CB138    call        @UStrAsg
 006CB13D    push        6CEEA4;'Number Of Zones'
 006CB142    lea         eax,[ebp-16C]
 006CB148    push        eax
 006CB149    mov         ecx,6CEED0;'slbNumOfZones'
 006CB14E    mov         edx,6CE130;'FXPDFrame'
 006CB153    mov         eax,ebx
 006CB155    mov         edi,dword ptr [eax]
 006CB157    call        dword ptr [edi+4]
 006CB15A    mov         edx,dword ptr [ebp-16C]
 006CB160    mov         eax,7C2CA4;^'Number Of Zones'
 006CB165    call        @UStrAsg
 006CB16A    push        6CEEF8;'System ID of last zone'
 006CB16F    lea         eax,[ebp-170]
 006CB175    push        eax
 006CB176    mov         ecx,6CEF34;'slbLastZoneID'
 006CB17B    mov         edx,6CE130;'FXPDFrame'
 006CB180    mov         eax,ebx
 006CB182    mov         edi,dword ptr [eax]
 006CB184    call        dword ptr [edi+4]
 006CB187    mov         edx,dword ptr [ebp-170]
 006CB18D    mov         eax,7C2CA8;^'System ID of last zone'
 006CB192    call        @UStrAsg
 006CB197    push        6CEF5C;'Retain zone IDs of already defined addresses'
 006CB19C    lea         eax,[ebp-174]
 006CB1A2    push        eax
 006CB1A3    mov         ecx,6CEFC4;'scbRetainZoneIDs'
 006CB1A8    mov         edx,6CE130;'FXPDFrame'
 006CB1AD    mov         eax,ebx
 006CB1AF    mov         edi,dword ptr [eax]
 006CB1B1    call        dword ptr [edi+4]
 006CB1B4    mov         edx,dword ptr [ebp-174]
 006CB1BA    mov         eax,7C2CAC;^'Retain zone IDs of already defined addresses'
 006CB1BF    call        @UStrAsg
 006CB1C4    push        6CEFF4;'Zone IDs of already defined addresses can not be retained with the given zone in...
 006CB1C9    lea         eax,[ebp-178]
 006CB1CF    push        eax
 006CB1D0    mov         ecx,6CF0B0;'sRetainZoneIdError'
 006CB1D5    mov         edx,6CE130;'FXPDFrame'
 006CB1DA    mov         eax,ebx
 006CB1DC    mov         edi,dword ptr [eax]
 006CB1DE    call        dword ptr [edi+4]
 006CB1E1    mov         edx,dword ptr [ebp-178]
 006CB1E7    mov         eax,7C2CB0;^'Zone IDs of already defined addresses can not be retained with the given zo...
 006CB1EC    call        @UStrAsg
 006CB1F1    push        6CF0E4;'Local / Shared control groups'
 006CB1F6    lea         eax,[ebp-17C]
 006CB1FC    push        eax
 006CB1FD    mov         ecx,6CF12C;'sgbLastLocalCZ'
 006CB202    mov         edx,6CE130;'FXPDFrame'
 006CB207    mov         eax,ebx
 006CB209    mov         edi,dword ptr [eax]
 006CB20B    call        dword ptr [edi+4]
 006CB20E    mov         edx,dword ptr [ebp-17C]
 006CB214    mov         eax,7C2CB4;^'Local / Shared control groups'
 006CB219    call        @UStrAsg
 006CB21E    push        6CF158;'Last Local control group'
 006CB223    lea         eax,[ebp-180]
 006CB229    push        eax
 006CB22A    mov         ecx,6CF198;'slbLastLocalCZ'
 006CB22F    mov         edx,6CE130;'FXPDFrame'
 006CB234    mov         eax,ebx
 006CB236    mov         edi,dword ptr [eax]
 006CB238    call        dword ptr [edi+4]
 006CB23B    mov         edx,dword ptr [ebp-180]
 006CB241    mov         eax,7C2CB8;^'Last Local control group'
 006CB246    call        @UStrAsg
 006CB24B    push        6CF1C4;'Panels visible by this panel'
 006CB250    lea         eax,[ebp-184]
 006CB256    push        eax
 006CB257    mov         ecx,6CF20C;'sgbVisiblePanels'
 006CB25C    mov         edx,6CE130;'FXPDFrame'
 006CB261    mov         eax,ebx
 006CB263    mov         edi,dword ptr [eax]
 006CB265    call        dword ptr [edi+4]
 006CB268    mov         edx,dword ptr [ebp-184]
 006CB26E    mov         eax,7C2CBC;^'Panels visible by this panel'
 006CB273    call        @UStrAsg
 006CB278    push        6CF23C;'Loop controllers'
 006CB27D    lea         eax,[ebp-188]
 006CB283    push        eax
 006CB284    mov         ecx,6CF26C;'sLCSheet'
 006CB289    mov         edx,6CE130;'FXPDFrame'
 006CB28E    mov         eax,ebx
 006CB290    mov         edi,dword ptr [eax]
 006CB292    call        dword ptr [edi+4]
 006CB295    mov         edx,dword ptr [ebp-188]
 006CB29B    mov         eax,7C2CC0;^'Loop controllers'
 006CB2A0    call        @UStrAsg
 006CB2A5    push        6CF28C;'Loop controller 1'
 006CB2AA    lea         eax,[ebp-18C]
 006CB2B0    push        eax
 006CB2B1    mov         ecx,6CF2BC;'sgbLC1'
 006CB2B6    mov         edx,6CE130;'FXPDFrame'
 006CB2BB    mov         eax,ebx
 006CB2BD    mov         edi,dword ptr [eax]
 006CB2BF    call        dword ptr [edi+4]
 006CB2C2    mov         edx,dword ptr [ebp-18C]
 006CB2C8    mov         eax,7C2CC4;^'Loop controller 1'
 006CB2CD    call        @UStrAsg
 006CB2D2    push        6CF2D8;'Loop controller 2'
 006CB2D7    lea         eax,[ebp-190]
 006CB2DD    push        eax
 006CB2DE    mov         ecx,6CF308;'sgbLC2'
 006CB2E3    mov         edx,6CE130;'FXPDFrame'
 006CB2E8    mov         eax,ebx
 006CB2EA    mov         edi,dword ptr [eax]
 006CB2EC    call        dword ptr [edi+4]
 006CB2EF    mov         edx,dword ptr [ebp-190]
 006CB2F5    mov         eax,7C2CC8;^'Loop controller 2'
 006CB2FA    call        @UStrAsg
 006CB2FF    push        6CF324;'Loop controller 3'
 006CB304    lea         eax,[ebp-194]
 006CB30A    push        eax
 006CB30B    mov         ecx,6CF354;'sgbLC3'
 006CB310    mov         edx,6CE130;'FXPDFrame'
 006CB315    mov         eax,ebx
 006CB317    mov         edi,dword ptr [eax]
 006CB319    call        dword ptr [edi+4]
 006CB31C    mov         edx,dword ptr [ebp-194]
 006CB322    mov         eax,7C2CCC;^'Loop controller 3'
 006CB327    call        @UStrAsg
 006CB32C    push        6CF370;'Loop controller 4'
 006CB331    lea         eax,[ebp-198]
 006CB337    push        eax
 006CB338    mov         ecx,6CF3A0;'sgbLC4'
 006CB33D    mov         edx,6CE130;'FXPDFrame'
 006CB342    mov         eax,ebx
 006CB344    mov         edi,dword ptr [eax]
 006CB346    call        dword ptr [edi+4]
 006CB349    mov         edx,dword ptr [ebp-198]
 006CB34F    mov         eax,7C2CD0;^'Loop controller 4'
 006CB354    call        @UStrAsg
 006CB359    push        6CF3BC;'Type: '
 006CB35E    lea         eax,[ebp-19C]
 006CB364    push        eax
 006CB365    mov         ecx,6CF3D8;'slbLCxType'
 006CB36A    mov         edx,6CE130;'FXPDFrame'
 006CB36F    mov         eax,ebx
 006CB371    mov         edi,dword ptr [eax]
 006CB373    call        dword ptr [edi+4]
 006CB376    mov         edx,dword ptr [ebp-19C]
 006CB37C    mov         eax,7C2CD4;^'Type: '
 006CB381    call        @UStrAsg
 006CB386    push        6CF3FC;'Not configured'
 006CB38B    lea         eax,[ebp-1A0]
 006CB391    push        eax
 006CB392    mov         ecx,6CF428;'scbLCxTypeNotUsed'
 006CB397    mov         edx,6CE130;'FXPDFrame'
 006CB39C    mov         eax,ebx
 006CB39E    mov         edi,dword ptr [eax]
 006CB3A0    call        dword ptr [edi+4]
 006CB3A3    mov         edx,dword ptr [ebp-1A0]
 006CB3A9    mov         eax,esi
 006CB3AB    call        @UStrAsg
 006CB3B0    push        6CF458;'LC System Sensor 2-loop'
 006CB3B5    lea         eax,[ebp-1A4]
 006CB3BB    push        eax
 006CB3BC    mov         ecx,6CF494;'scbLCxTypeSySe2Loop'
 006CB3C1    mov         edx,6CE130;'FXPDFrame'
 006CB3C6    mov         eax,ebx
 006CB3C8    mov         edi,dword ptr [eax]
 006CB3CA    call        dword ptr [edi+4]
 006CB3CD    mov         edx,dword ptr [ebp-1A4]
 006CB3D3    lea         eax,[esi+4]
 006CB3D6    call        @UStrAsg
 006CB3DB    push        6CF4C8;'(Reserved)'
 006CB3E0    lea         eax,[ebp-1A8]
 006CB3E6    push        eax
 006CB3E7    mov         ecx,6CF4EC;'scbLCxTypeSySe1Loop'
 006CB3EC    mov         edx,6CE130;'FXPDFrame'
 006CB3F1    mov         eax,ebx
 006CB3F3    mov         edi,dword ptr [eax]
 006CB3F5    call        dword ptr [edi+4]
 006CB3F8    mov         edx,dword ptr [ebp-1A8]
 006CB3FE    lea         eax,[esi+8]
 006CB401    call        @UStrAsg
 006CB406    push        6CF520;'CLC Conventional 16 line'
 006CB40B    lea         eax,[ebp-1AC]
 006CB411    push        eax
 006CB412    mov         ecx,6CF560;'scbLCxTypeConv1Loop'
 006CB417    mov         edx,6CE130;'FXPDFrame'
 006CB41C    mov         eax,ebx
 006CB41E    mov         edi,dword ptr [eax]
 006CB420    call        dword ptr [edi+4]
 006CB423    mov         edx,dword ptr [ebp-1AC]
 006CB429    lea         eax,[esi+0C]
 006CB42C    call        @UStrAsg
 006CB431    push        6CF594;'ALCB Intellia 2-loop'
 006CB436    lea         eax,[ebp-1B0]
 006CB43C    push        eax
 006CB43D    mov         ecx,6CF5CC;'scbLCxTypeApo2Loop'
 006CB442    mov         edx,6CE130;'FXPDFrame'
 006CB447    mov         eax,ebx
 006CB449    mov         edi,dword ptr [eax]
 006CB44B    call        dword ptr [edi+4]
 006CB44E    mov         edx,dword ptr [ebp-1B0]
 006CB454    lea         eax,[esi+10]
 006CB457    call        @UStrAsg
 006CB45C    push        6CF600;'ALCA Intellia 1-loop'
 006CB461    lea         eax,[ebp-1B4]
 006CB467    push        eax
 006CB468    mov         ecx,6CF638;'scbLCxTypeApo1Loop'
 006CB46D    mov         edx,6CE130;'FXPDFrame'
 006CB472    mov         eax,ebx
 006CB474    mov         edi,dword ptr [eax]
 006CB476    call        dword ptr [edi+4]
 006CB479    mov         edx,dword ptr [ebp-1B4]
 006CB47F    lea         eax,[esi+14]
 006CB482    call        @UStrAsg
 006CB487    push        6CF66C;'SLCB Advanced 2-loop'
 006CB48C    lea         eax,[ebp-1B8]
 006CB492    push        eax
 006CB493    mov         ecx,6CF6A4;'scbLCxTypeSap2Loop'
 006CB498    mov         edx,6CE130;'FXPDFrame'
 006CB49D    mov         eax,ebx
 006CB49F    mov         edi,dword ptr [eax]
 006CB4A1    call        dword ptr [edi+4]
 006CB4A4    mov         edx,dword ptr [ebp-1B8]
 006CB4AA    lea         eax,[esi+18]
 006CB4AD    call        @UStrAsg
 006CB4B2    push        6CF6D8;'SLCA Advanced 1-loop'
 006CB4B7    lea         eax,[ebp-1BC]
 006CB4BD    push        eax
 006CB4BE    mov         ecx,6CF710;'scbLCxTypeSap1Loop'
 006CB4C3    mov         edx,6CE130;'FXPDFrame'
 006CB4C8    mov         eax,ebx
 006CB4CA    mov         edi,dword ptr [eax]
 006CB4CC    call        dword ptr [edi+4]
 006CB4CF    mov         edx,dword ptr [ebp-1BC]
 006CB4D5    lea         eax,[esi+1C]
 006CB4D8    call        @UStrAsg
 006CB4DD    push        6CF744;'FX101 Intellia 1-loop'
 006CB4E2    lea         eax,[ebp-1C0]
 006CB4E8    push        eax
 006CB4E9    mov         ecx,6CF77C;'scbLCxTypeApoCombi'
 006CB4EE    mov         edx,6CE130;'FXPDFrame'
 006CB4F3    mov         eax,ebx
 006CB4F5    mov         edi,dword ptr [eax]
 006CB4F7    call        dword ptr [edi+4]
 006CB4FA    mov         edx,dword ptr [ebp-1C0]
 006CB500    lea         eax,[esi+20]
 006CB503    call        @UStrAsg
 006CB508    push        6CF7B0;'FX101 Syse AP200 1-loop'
 006CB50D    lea         eax,[ebp-1C4]
 006CB513    push        eax
 006CB514    mov         ecx,6CF7EC;'scbLCxTypeSapCombi'
 006CB519    mov         edx,6CE130;'FXPDFrame'
 006CB51E    mov         eax,ebx
 006CB520    mov         edi,dword ptr [eax]
 006CB522    call        dword ptr [edi+4]
 006CB525    mov         edx,dword ptr [ebp-1C4]
 006CB52B    lea         eax,[esi+24]
 006CB52E    call        @UStrAsg
 006CB533    push        6CDAC4;'First loop'
 006CB538    lea         eax,[ebp-1C8]
 006CB53E    push        eax
 006CB53F    mov         ecx,6CF820;'slbLCxFirstLoop'
 006CB544    mov         edx,6CE130;'FXPDFrame'
 006CB549    mov         eax,ebx
 006CB54B    mov         esi,dword ptr [eax]
 006CB54D    call        dword ptr [esi+4]
 006CB550    mov         edx,dword ptr [ebp-1C8]
 006CB556    mov         eax,7C2CD8;^'First loop'
 006CB55B    call        @UStrAsg
 006CB560    push        6CF84C;'Number of loops'
 006CB565    lea         eax,[ebp-1CC]
 006CB56B    push        eax
 006CB56C    mov         ecx,6CF878;'slbLCxNumOfLoops'
 006CB571    mov         edx,6CE130;'FXPDFrame'
 006CB576    mov         eax,ebx
 006CB578    mov         esi,dword ptr [eax]
 006CB57A    call        dword ptr [esi+4]
 006CB57D    mov         edx,dword ptr [ebp-1CC]
 006CB583    mov         eax,7C2CDC;^'Number of loops'
 006CB588    call        @UStrAsg
 006CB58D    push        6CDB1C;'Last loop'
 006CB592    lea         eax,[ebp-1D0]
 006CB598    push        eax
 006CB599    mov         ecx,6CF8A8;'slbLCxLastLoop'
 006CB59E    mov         edx,6CE130;'FXPDFrame'
 006CB5A3    mov         eax,ebx
 006CB5A5    mov         esi,dword ptr [eax]
 006CB5A7    call        dword ptr [esi+4]
 006CB5AA    mov         edx,dword ptr [ebp-1D0]
 006CB5B0    mov         eax,7C2CE0;^'Last loop'
 006CB5B5    call        @UStrAsg
 006CB5BA    push        6CF8D4;'Startup delay (m.) for loop %s'
 006CB5BF    lea         eax,[ebp-1D4]
 006CB5C5    push        eax
 006CB5C6    mov         ecx,6CF920;'sStartDelayForLoop'
 006CB5CB    mov         edx,6CE130;'FXPDFrame'
 006CB5D0    mov         eax,ebx
 006CB5D2    mov         esi,dword ptr [eax]
 006CB5D4    call        dword ptr [esi+4]
 006CB5D7    mov         edx,dword ptr [ebp-1D4]
 006CB5DD    mov         eax,7C2CE4;^'Startup delay (m.) for loop %s'
 006CB5E2    call        @UStrAsg
 006CB5E7    push        6CF954;'Control outputs'
 006CB5EC    lea         eax,[ebp-1D8]
 006CB5F2    push        eax
 006CB5F3    mov         ecx,6CF980;'sControlOutputsSheet'
 006CB5F8    mov         edx,6CE130;'FXPDFrame'
 006CB5FD    mov         eax,ebx
 006CB5FF    mov         esi,dword ptr [eax]
 006CB601    call        dword ptr [esi+4]
 006CB604    mov         edx,dword ptr [ebp-1D8]
 006CB60A    mov         eax,7C2CE8;^'Control outputs'
 006CB60F    call        @UStrAsg
 006CB614    push        6CF9B8;'Fire door activation'
 006CB619    lea         eax,[ebp-1DC]
 006CB61F    push        eax
 006CB620    mov         ecx,6CF9F0;'sgbFiredoorControl'
 006CB625    mov         edx,6CE130;'FXPDFrame'
 006CB62A    mov         eax,ebx
 006CB62C    mov         esi,dword ptr [eax]
 006CB62E    call        dword ptr [esi+4]
 006CB631    mov         edx,dword ptr [ebp-1DC]
 006CB637    mov         eax,7C2CEC;^'Fire door activation'
 006CB63C    call        @UStrAsg
 006CB641    push        6CFA24;'Fire Alarm'
 006CB646    lea         eax,[ebp-1E0]
 006CB64C    push        eax
 006CB64D    mov         ecx,6CFA48;'scbFDFireAlarm'
 006CB652    mov         edx,6CE130;'FXPDFrame'
 006CB657    mov         eax,ebx
 006CB659    mov         esi,dword ptr [eax]
 006CB65B    call        dword ptr [esi+4]
 006CB65E    mov         edx,dword ptr [ebp-1E0]
 006CB664    mov         eax,7C2CF0;^'Fire Alarm'
 006CB669    call        @UStrAsg
 006CB66E    push        6CFA74;'Prealarm'
 006CB673    lea         eax,[ebp-1E4]
 006CB679    push        eax
 006CB67A    mov         ecx,6CFA94;'scbFDPrewarning'
 006CB67F    mov         edx,6CE130;'FXPDFrame'
 006CB684    mov         eax,ebx
 006CB686    mov         esi,dword ptr [eax]
 006CB688    call        dword ptr [esi+4]
 006CB68B    mov         edx,dword ptr [ebp-1E4]
 006CB691    mov         eax,7C2CF4;^'Prealarm'
 006CB696    call        @UStrAsg
 006CB69B    push        6CFAC0;'Address Fault Warning'
 006CB6A0    lea         eax,[ebp-1E8]
 006CB6A6    push        eax
 006CB6A7    mov         ecx,6CFAF8;'scbFDAddressFault'
 006CB6AC    mov         edx,6CE130;'FXPDFrame'
 006CB6B1    mov         eax,ebx
 006CB6B3    mov         esi,dword ptr [eax]
 006CB6B5    call        dword ptr [esi+4]
 006CB6B8    mov         edx,dword ptr [ebp-1E8]
 006CB6BE    mov         eax,7C2CF8;^'Address Fault Warning'
 006CB6C3    call        @UStrAsg
 006CB6C8    push        6CFB28;'Address Disablement'
 006CB6CD    lea         eax,[ebp-1EC]
 006CB6D3    push        eax
 006CB6D4    mov         ecx,6CFB5C;'scbFDAddressDisablement'
 006CB6D9    mov         edx,6CE130;'FXPDFrame'
 006CB6DE    mov         eax,ebx
 006CB6E0    mov         esi,dword ptr [eax]
 006CB6E2    call        dword ptr [esi+4]
 006CB6E5    mov         edx,dword ptr [ebp-1EC]
 006CB6EB    mov         eax,7C2CFC;^'Address Disablement'
 006CB6F0    call        @UStrAsg
 006CB6F5    push        6CFB98;'Detection Zone Disablement'
 006CB6FA    lea         eax,[ebp-1F0]
 006CB700    push        eax
 006CB701    mov         ecx,6CFBDC;'scbFDZoneDisablement'
 006CB706    mov         edx,6CE130;'FXPDFrame'
 006CB70B    mov         eax,ebx
 006CB70D    mov         esi,dword ptr [eax]
 006CB70F    call        dword ptr [esi+4]
 006CB712    mov         edx,dword ptr [ebp-1F0]
 006CB718    mov         eax,7C2D00;^'Detection Zone Disablement'
 006CB71D    call        @UStrAsg
 006CB722    push        6CFC14;'Main Power Supply Off'
 006CB727    lea         eax,[ebp-1F4]
 006CB72D    push        eax
 006CB72E    mov         ecx,6CFC4C;'scbFDMainsOff'
 006CB733    mov         edx,6CE130;'FXPDFrame'
 006CB738    mov         eax,ebx
 006CB73A    mov         esi,dword ptr [eax]
 006CB73C    call        dword ptr [esi+4]
 006CB73F    mov         edx,dword ptr [ebp-1F4]
 006CB745    mov         eax,7C2D04;^'Main Power Supply Off'
 006CB74A    call        @UStrAsg
 006CB74F    push        6CFC74;'Fire door functionality ...'
 006CB754    lea         eax,[ebp-1F8]
 006CB75A    push        eax
 006CB75B    mov         ecx,6CFCB8;'sgbSensorInputDisablement'
 006CB760    mov         edx,6CE130;'FXPDFrame'
 006CB765    mov         eax,ebx
 006CB767    mov         esi,dword ptr [eax]
 006CB769    call        dword ptr [esi+4]
 006CB76C    mov         edx,dword ptr [ebp-1F8]
 006CB772    mov         eax,7C2D08;^'Fire door functionality ...'
 006CB777    call        @UStrAsg
 006CB77C    push        6CFCF8;'... when sensor input is disabled'
 006CB781    lea         eax,[ebp-1FC]
 006CB787    push        eax
 006CB788    mov         ecx,6CFD48;'slbSensorInputDisablement'
 006CB78D    mov         edx,6CE130;'FXPDFrame'
 006CB792    mov         eax,ebx
 006CB794    mov         esi,dword ptr [eax]
 006CB796    call        dword ptr [esi+4]
 006CB799    mov         edx,dword ptr [ebp-1FC]
 006CB79F    mov         eax,7C2D0C;^'... when sensor input is disabled'
 006CB7A4    call        @UStrAsg
 006CB7A9    push        6CFD88;'No fire door control'
 006CB7AE    lea         eax,[ebp-200]
 006CB7B4    push        eax
 006CB7B5    mov         ecx,6CFDC0;'srb1NotBySensorInputDisablement'
 006CB7BA    mov         edx,6CE130;'FXPDFrame'
 006CB7BF    mov         eax,ebx
 006CB7C1    mov         esi,dword ptr [eax]
 006CB7C3    call        dword ptr [esi+4]
 006CB7C6    mov         edx,dword ptr [ebp-200]
 006CB7CC    mov         eax,7C2D10;^'No fire door control'
 006CB7D1    call        @UStrAsg
 006CB7D6    push        6CFE0C;'Fire door controls activated'
 006CB7DB    lea         eax,[ebp-204]
 006CB7E1    push        eax
 006CB7E2    mov         ecx,6CFE54;'srb2BySensorInputDisablement'
 006CB7E7    mov         edx,6CE130;'FXPDFrame'
 006CB7EC    mov         eax,ebx
 006CB7EE    mov         esi,dword ptr [eax]
 006CB7F0    call        dword ptr [esi+4]
 006CB7F3    mov         edx,dword ptr [ebp-204]
 006CB7F9    mov         eax,7C2D14;^'Fire door controls activated'
 006CB7FE    call        @UStrAsg
 006CB803    push        6CFE9C;'Technical alarm when disabled input gives alarm + Fire door controls activated'
 006CB808    lea         eax,[ebp-208]
 006CB80E    push        eax
 006CB80F    mov         ecx,6CFF48;'srb3TechAlarmFromDisabledInput'
 006CB814    mov         edx,6CE130;'FXPDFrame'
 006CB819    mov         eax,ebx
 006CB81B    mov         esi,dword ptr [eax]
 006CB81D    call        dword ptr [esi+4]
 006CB820    mov         edx,dword ptr [ebp-208]
 006CB826    mov         eax,7C2D18;^'Technical alarm when disabled input gives alarm + Fire door controls activa...
 006CB82B    call        @UStrAsg
 006CB830    push        6CFF94;'Re-activation of silenced alarm devices ... '
 006CB835    lea         eax,[ebp-20C]
 006CB83B    push        eax
 006CB83C    mov         ecx,6CFFFC;'sgbActivationOfSilencedAlarms'
 006CB841    mov         edx,6CE130;'FXPDFrame'
 006CB846    mov         eax,ebx
 006CB848    mov         esi,dword ptr [eax]
 006CB84A    call        dword ptr [esi+4]
 006CB84D    mov         edx,dword ptr [ebp-20C]
 006CB853    mov         eax,7C2D1C;^'Re-activation of silenced alarm devices ... '
 006CB858    call        @UStrAsg
 006CB85D    push        6D0044;'by a new fire alarm'
 006CB862    lea         eax,[ebp-210]
 006CB868    push        eax
 006CB869    mov         ecx,6D0078;'scbResoundOnNewAlarm'
 006CB86E    mov         edx,6CE130;'FXPDFrame'
 006CB873    mov         eax,ebx
 006CB875    mov         esi,dword ptr [eax]
 006CB877    call        dword ptr [esi+4]
 006CB87A    mov         edx,dword ptr [ebp-210]
 006CB880    mov         eax,7C2D20;^'by a new fire alarm'
 006CB885    call        @UStrAsg
 006CB88A    push        6D00B0;'De-activation of alarm transmitters ...'
 006CB88F    lea         eax,[ebp-214]
 006CB895    push        eax
 006CB896    mov         ecx,6D010C;'sgbDeactivateRouters'
 006CB89B    mov         edx,6CE130;'FXPDFrame'
 006CB8A0    mov         eax,ebx
 006CB8A2    mov         esi,dword ptr [eax]
 006CB8A4    call        dword ptr [esi+4]
 006CB8A7    mov         edx,dword ptr [ebp-214]
 006CB8AD    mov         eax,7C2D24;^'De-activation of alarm transmitters ...'
 006CB8B2    call        @UStrAsg
 006CB8B7    push        6D0144;'at alarm silence'
 006CB8BC    lea         eax,[ebp-218]
 006CB8C2    push        eax
 006CB8C3    mov         ecx,6D0174;'scbRouterOffAtSilence'
 006CB8C8    mov         edx,6CE130;'FXPDFrame'
 006CB8CD    mov         eax,ebx
 006CB8CF    mov         esi,dword ptr [eax]
 006CB8D1    call        dword ptr [esi+4]
 006CB8D4    mov         edx,dword ptr [ebp-218]
 006CB8DA    mov         eax,7C2D28;^'at alarm silence'
 006CB8DF    call        @UStrAsg
 006CB8E4    push        6D01AC;'Delayed outputs'
 006CB8E9    lea         eax,[ebp-21C]
 006CB8EF    push        eax
 006CB8F0    mov         ecx,6D01D8;'sDelaySheet'
 006CB8F5    mov         edx,6CE130;'FXPDFrame'
 006CB8FA    mov         eax,ebx
 006CB8FC    mov         esi,dword ptr [eax]
 006CB8FE    call        dword ptr [esi+4]
 006CB901    mov         edx,dword ptr [ebp-21C]
 006CB907    mov         eax,7C2D2C;^'Delayed outputs'
 006CB90C    call        @UStrAsg
 006CB911    push        6D01FC;'Delay times for delayed alarm outputs'
 006CB916    lea         eax,[ebp-220]
 006CB91C    push        eax
 006CB91D    mov         ecx,6D0254;'sgbFXOutputDelay'
 006CB922    mov         edx,6CE130;'FXPDFrame'
 006CB927    mov         eax,ebx
 006CB929    mov         esi,dword ptr [eax]
 006CB92B    call        dword ptr [esi+4]
 006CB92E    mov         edx,dword ptr [ebp-220]
 006CB934    mov         eax,7C2D30;^'Delay times for delayed alarm outputs'
 006CB939    call        @UStrAsg
 006CB93E    push        6D0284;'Delayed alarm outputs'
 006CB943    lea         eax,[ebp-224]
 006CB949    push        eax
 006CB94A    mov         ecx,6D02BC;'sgbFXDelayedOutputs'
 006CB94F    mov         edx,6CE130;'FXPDFrame'
 006CB954    mov         eax,ebx
 006CB956    mov         esi,dword ptr [eax]
 006CB958    call        dword ptr [esi+4]
 006CB95B    mov         edx,dword ptr [ebp-224]
 006CB961    mov         eax,7C2D3C;^'Delayed alarm outputs'
 006CB966    call        @UStrAsg
 006CB96B    push        6D02F0;'Fire Alarm Transmitter'
 006CB970    lea         eax,[ebp-228]
 006CB976    push        eax
 006CB977    mov         ecx,6D032C;'scbFireARDelayed'
 006CB97C    mov         edx,6CE130;'FXPDFrame'
 006CB981    mov         eax,ebx
 006CB983    mov         esi,dword ptr [eax]
 006CB985    call        dword ptr [esi+4]
 006CB988    mov         edx,dword ptr [ebp-228]
 006CB98E    mov         eax,7C2D40;^'Fire Alarm Transmitter'
 006CB993    call        @UStrAsg
 006CB998    push        6D035C;'Fire Control Outputs'
 006CB99D    lea         eax,[ebp-22C]
 006CB9A3    push        eax
 006CB9A4    mov         ecx,6D0394;'scbFireCODelayed'
 006CB9A9    mov         edx,6CE130;'FXPDFrame'
 006CB9AE    mov         eax,ebx
 006CB9B0    mov         esi,dword ptr [eax]
 006CB9B2    call        dword ptr [esi+4]
 006CB9B5    mov         edx,dword ptr [ebp-22C]
 006CB9BB    mov         eax,7C2D44;^'Fire Control Outputs'
 006CB9C0    call        @UStrAsg
 006CB9C5    push        6D03C4;'Fire Alarm Devices ...'
 006CB9CA    lea         eax,[ebp-230]
 006CB9D0    push        eax
 006CB9D1    mov         ecx,6D0400;'sgbFireAlarmDevices'
 006CB9D6    mov         edx,6CE130;'FXPDFrame'
 006CB9DB    mov         eax,ebx
 006CB9DD    mov         esi,dword ptr [eax]
 006CB9DF    call        dword ptr [esi+4]
 006CB9E2    mov         edx,dword ptr [ebp-230]
 006CB9E8    mov         eax,7C2D48;^'Fire Alarm Devices ...'
 006CB9ED    call        @UStrAsg
 006CB9F2    push        6D0434;'... controlled by Ctrl A, Ctrl B, Ctrl B2 and as General'
 006CB9F7    lea         eax,[ebp-234]
 006CB9FD    push        eax
 006CB9FE    mov         ecx,6D04B4;'scbGenFireADDelayed'
 006CBA03    mov         edx,6CE130;'FXPDFrame'
 006CBA08    mov         eax,ebx
 006CBA0A    mov         esi,dword ptr [eax]
 006CBA0C    call        dword ptr [esi+4]
 006CBA0F    mov         edx,dword ptr [ebp-234]
 006CBA15    mov         eax,7C2D4C;^'... controlled by Ctrl A, Ctrl B, Ctrl B2 and as General'
 006CBA1A    call        @UStrAsg
 006CBA1F    push        6D04E8;'... controlled by Ctrl B, Ctrl B2 and as General'
 006CBA24    lea         eax,[ebp-238]
 006CBA2A    push        eax
 006CBA2B    mov         ecx,6D0558;'scbZonFireADDelayed'
 006CBA30    mov         edx,6CE130;'FXPDFrame'
 006CBA35    mov         eax,ebx
 006CBA37    mov         esi,dword ptr [eax]
 006CBA39    call        dword ptr [esi+4]
 006CBA3C    mov         edx,dword ptr [ebp-238]
 006CBA42    mov         eax,7C2D50;^'... controlled by Ctrl B, Ctrl B2 and as General'
 006CBA47    call        @UStrAsg
 006CBA4C    push        6D058C;'Delay termination for a delayed second alarm'
 006CBA51    lea         eax,[ebp-23C]
 006CBA57    push        eax
 006CBA58    mov         ecx,6D05F4;'srgDelayTermination'
 006CBA5D    mov         edx,6CE130;'FXPDFrame'
 006CBA62    mov         eax,ebx
 006CBA64    mov         esi,dword ptr [eax]
 006CBA66    call        dword ptr [esi+4]
 006CBA69    mov         edx,dword ptr [ebp-23C]
 006CBA6F    mov         eax,7C2D54;^'Delay termination for a delayed second alarm'
 006CBA74    call        @UStrAsg
 006CBA79    push        6D0628;'Do not terminate delay at second delayed alarm'
 006CBA7E    lea         eax,[ebp-240]
 006CBA84    push        eax
 006CBA85    mov         ecx,6D0694;'sDoNotTerminate'
 006CBA8A    mov         edx,6CE130;'FXPDFrame'
 006CBA8F    mov         eax,ebx
 006CBA91    mov         esi,dword ptr [eax]
 006CBA93    call        dword ptr [esi+4]
 006CBA96    mov         edx,dword ptr [ebp-240]
 006CBA9C    mov         eax,901ED0;gvar_00901ED0:UnicodeString
 006CBAA1    call        @UStrAsg
 006CBAA6    push        6D06C0;'Terminate delay at second delayed alarm in same zone'
 006CBAAB    lea         eax,[ebp-244]
 006CBAB1    push        eax
 006CBAB2    mov         ecx,6D0738;'sTerminateIfSameZone'
 006CBAB7    mov         edx,6CE130;'FXPDFrame'
 006CBABC    mov         eax,ebx
 006CBABE    mov         esi,dword ptr [eax]
 006CBAC0    call        dword ptr [esi+4]
 006CBAC3    mov         edx,dword ptr [ebp-244]
 006CBAC9    mov         eax,901ED4;gvar_00901ED4:UnicodeString
 006CBACE    call        @UStrAsg
 006CBAD3    push        6D0770;'Terminate delay at second delayed alarm in any zone of same panel'
 006CBAD8    lea         eax,[ebp-248]
 006CBADE    push        eax
 006CBADF    mov         ecx,6D0800;'sTerminateIfSamePanel'
 006CBAE4    mov         edx,6CE130;'FXPDFrame'
 006CBAE9    mov         eax,ebx
 006CBAEB    mov         esi,dword ptr [eax]
 006CBAED    call        dword ptr [esi+4]
 006CBAF0    mov         edx,dword ptr [ebp-248]
 006CBAF6    mov         eax,901ED8;gvar_00901ED8:UnicodeString
 006CBAFB    call        @UStrAsg
 006CBB00    push        6D0838;'Terminate delay at second delayed alarm in any visible panel'
 006CBB05    lea         eax,[ebp-24C]
 006CBB0B    push        eax
 006CBB0C    mov         ecx,6D08C0;'sTerminateIfAnyPanel'
 006CBB11    mov         edx,6CE130;'FXPDFrame'
 006CBB16    mov         eax,ebx
 006CBB18    mov         esi,dword ptr [eax]
 006CBB1A    call        dword ptr [esi+4]
 006CBB1D    mov         edx,dword ptr [ebp-24C]
 006CBB23    mov         eax,901EDC;gvar_00901EDC:UnicodeString
 006CBB28    call        @UStrAsg
 006CBB2D    push        6D08F8;'Delay termination for a non-delayed second alarm'
 006CBB32    lea         eax,[ebp-250]
 006CBB38    push        eax
 006CBB39    mov         ecx,6D0968;'srgDelayTerminationND'
 006CBB3E    mov         edx,6CE130;'FXPDFrame'
 006CBB43    mov         eax,ebx
 006CBB45    mov         esi,dword ptr [eax]
 006CBB47    call        dword ptr [esi+4]
 006CBB4A    mov         edx,dword ptr [ebp-250]
 006CBB50    mov         eax,7C2D58;^'Delay termination for a non-delayed second alarm'
 006CBB55    call        @UStrAsg
 006CBB5A    push        6D09A0;'Do not terminate delay at second non-delayed alarm'
 006CBB5F    lea         eax,[ebp-254]
 006CBB65    push        eax
 006CBB66    mov         ecx,6D0A14;'sDoNotTerminateND'
 006CBB6B    mov         edx,6CE130;'FXPDFrame'
 006CBB70    mov         eax,ebx
 006CBB72    mov         esi,dword ptr [eax]
 006CBB74    call        dword ptr [esi+4]
 006CBB77    mov         edx,dword ptr [ebp-254]
 006CBB7D    mov         eax,901EE0;gvar_00901EE0:UnicodeString
 006CBB82    call        @UStrAsg
 006CBB87    push        6D0A44;'Terminate delay at second non-delayed alarm in same zone'
 006CBB8C    lea         eax,[ebp-258]
 006CBB92    push        eax
 006CBB93    mov         ecx,6D0AC4;'sTerminateIfSameZoneND'
 006CBB98    mov         edx,6CE130;'FXPDFrame'
 006CBB9D    mov         eax,ebx
 006CBB9F    mov         esi,dword ptr [eax]
 006CBBA1    call        dword ptr [esi+4]
 006CBBA4    mov         edx,dword ptr [ebp-258]
 006CBBAA    mov         eax,901EE4;gvar_00901EE4:UnicodeString
 006CBBAF    call        @UStrAsg
 006CBBB4    push        6D0B00;'Terminate delay at second non-delayed alarm in any zone of same panel'
 006CBBB9    lea         eax,[ebp-25C]
 006CBBBF    push        eax
 006CBBC0    mov         ecx,6D0B98;'sTerminateIfSamePanelND'
 006CBBC5    mov         edx,6CE130;'FXPDFrame'
 006CBBCA    mov         eax,ebx
 006CBBCC    mov         esi,dword ptr [eax]
 006CBBCE    call        dword ptr [esi+4]
 006CBBD1    mov         edx,dword ptr [ebp-25C]
 006CBBD7    mov         eax,901EE8;gvar_00901EE8:UnicodeString
 006CBBDC    call        @UStrAsg
 006CBBE1    push        6D0BD4;'Terminate delay at second non-delayed alarm in any visible panel'
 006CBBE6    lea         eax,[ebp-260]
 006CBBEC    push        eax
 006CBBED    mov         ecx,6D0C64;'sTerminateIfAnyPanelND'
 006CBBF2    mov         edx,6CE130;'FXPDFrame'
 006CBBF7    mov         eax,ebx
 006CBBF9    mov         esi,dword ptr [eax]
 006CBBFB    call        dword ptr [esi+4]
 006CBBFE    mov         edx,dword ptr [ebp-260]
 006CBC04    mov         eax,901EEC;gvar_00901EEC:UnicodeString
 006CBC09    call        @UStrAsg
 006CBC0E    push        6D0CA0;'Delay Indication'
 006CBC13    lea         eax,[ebp-264]
 006CBC19    push        eax
 006CBC1A    mov         ecx,6D0CD0;'sgbDelayIndication'
 006CBC1F    mov         edx,6CE130;'FXPDFrame'
 006CBC24    mov         eax,ebx
 006CBC26    mov         esi,dword ptr [eax]
 006CBC28    call        dword ptr [esi+4]
 006CBC2B    mov         edx,dword ptr [ebp-264]
 006CBC31    mov         eax,7C2D5C;^'Delay Indication'
 006CBC36    call        @UStrAsg
 006CBC3B    push        6D0D04;'Indicate Delayed Alarm as disablement'
 006CBC40    lea         eax,[ebp-268]
 006CBC46    push        eax
 006CBC47    mov         ecx,6D0D5C;'scbDelayIndication'
 006CBC4C    mov         edx,6CE130;'FXPDFrame'
 006CBC51    mov         eax,ebx
 006CBC53    mov         esi,dword ptr [eax]
 006CBC55    call        dword ptr [esi+4]
 006CBC58    mov         edx,dword ptr [ebp-268]
 006CBC5E    mov         eax,7C2D60;^'Indicate Delayed Alarm as disablement'
 006CBC63    call        @UStrAsg
 006CBC68    push        6D0D90;'Print and Log'
 006CBC6D    lea         eax,[ebp-26C]
 006CBC73    push        eax
 006CBC74    mov         ecx,6D0DB8;'sPrintAndLogSheet'
 006CBC79    mov         edx,6CE130;'FXPDFrame'
 006CBC7E    mov         eax,ebx
 006CBC80    mov         esi,dword ptr [eax]
 006CBC82    call        dword ptr [esi+4]
 006CBC85    mov         edx,dword ptr [ebp-26C]
 006CBC8B    mov         eax,7C2D64;^'Print and Log'
 006CBC90    call        @UStrAsg
 006CBC95    push        6D0DE8;'Event groups to be recorded in the event register and to be printed in real time...
 006CBC9A    lea         eax,[ebp-270]
 006CBCA0    push        eax
 006CBCA1    mov         ecx,6D0EB8;'sgbPrintAndLog'
 006CBCA6    mov         edx,6CE130;'FXPDFrame'
 006CBCAB    mov         eax,ebx
 006CBCAD    mov         esi,dword ptr [eax]
 006CBCAF    call        dword ptr [esi+4]
 006CBCB2    mov         edx,dword ptr [ebp-270]
 006CBCB8    mov         eax,7C2D68;^'Event groups to be recorded in the event register and to be printed in real...
 006CBCBD    call        @UStrAsg
 006CBCC2    push        6D0EE4;'Print'
 006CBCC7    lea         eax,[ebp-274]
 006CBCCD    push        eax
 006CBCCE    mov         ecx,6D0EFC;'slbPrint'
 006CBCD3    mov         edx,6CE130;'FXPDFrame'
 006CBCD8    mov         eax,ebx
 006CBCDA    mov         esi,dword ptr [eax]
 006CBCDC    call        dword ptr [esi+4]
 006CBCDF    mov         edx,dword ptr [ebp-274]
 006CBCE5    mov         eax,7C2D6C;^'Print'
 006CBCEA    call        @UStrAsg
 006CBCEF    push        6D0F1C;'Record'
 006CBCF4    lea         eax,[ebp-278]
 006CBCFA    push        eax
 006CBCFB    mov         ecx,6D0F38;'slbRecord'
 006CBD00    mov         edx,6CE130;'FXPDFrame'
 006CBD05    mov         eax,ebx
 006CBD07    mov         esi,dword ptr [eax]
 006CBD09    call        dword ptr [esi+4]
 006CBD0C    mov         edx,dword ptr [ebp-278]
 006CBD12    mov         eax,7C2D70;^'Record'
 006CBD17    call        @UStrAsg
 006CBD1C    push        6D0F58;'Fire alarm, silence and reset events'
 006CBD21    lea         eax,[ebp-27C]
 006CBD27    push        eax
 006CBD28    mov         ecx,6D0FB0;'slbFireEvents'
 006CBD2D    mov         edx,6CE130;'FXPDFrame'
 006CBD32    mov         eax,ebx
 006CBD34    mov         esi,dword ptr [eax]
 006CBD36    call        dword ptr [esi+4]
 006CBD39    mov         edx,dword ptr [ebp-27C]
 006CBD3F    mov         eax,7C2D74;^'Fire alarm, silence and reset events'
 006CBD44    call        @UStrAsg
 006CBD49    push        6D0FD8;'Prealarm, silence and reset events'
 006CBD4E    lea         eax,[ebp-280]
 006CBD54    push        eax
 006CBD55    mov         ecx,6D102C;'slbPrewarningEvents'
 006CBD5A    mov         edx,6CE130;'FXPDFrame'
 006CBD5F    mov         eax,ebx
 006CBD61    mov         esi,dword ptr [eax]
 006CBD63    call        dword ptr [esi+4]
 006CBD66    mov         edx,dword ptr [ebp-280]
 006CBD6C    mov         eax,7C2D78;^'Prealarm, silence and reset events'
 006CBD71    call        @UStrAsg
 006CBD76    push        6D1060;'Fault and Maintenance alarms, silence and reset events'
 006CBD7B    lea         eax,[ebp-284]
 006CBD81    push        eax
 006CBD82    mov         ecx,6D10DC;'slbFaultEvents'
 006CBD87    mov         edx,6CE130;'FXPDFrame'
 006CBD8C    mov         eax,ebx
 006CBD8E    mov         esi,dword ptr [eax]
 006CBD90    call        dword ptr [esi+4]
 006CBD93    mov         edx,dword ptr [ebp-284]
 006CBD99    mov         eax,7C2D7C;^'Fault and Maintenance alarms, silence and reset events'
 006CBD9E    call        @UStrAsg
 006CBDA3    push        6D1108;'Disablement and re-enablement, test on/off events'
 006CBDA8    lea         eax,[ebp-288]
 006CBDAE    push        eax
 006CBDAF    mov         ecx,6D1178;'slbDisablementEvents'
 006CBDB4    mov         edx,6CE130;'FXPDFrame'
 006CBDB9    mov         eax,ebx
 006CBDBB    mov         esi,dword ptr [eax]
 006CBDBD    call        dword ptr [esi+4]
 006CBDC0    mov         edx,dword ptr [ebp-288]
 006CBDC6    mov         eax,7C2D80;^'Disablement and re-enablement, test on/off events'
 006CBDCB    call        @UStrAsg
 006CBDD0    push        6D11B0;'Access level 1 -> 2 and 2 -> 1 changes'
 006CBDD5    lea         eax,[ebp-28C]
 006CBDDB    push        eax
 006CBDDC    mov         ecx,6D120C;'slbAccessEvents'
 006CBDE1    mov         edx,6CE130;'FXPDFrame'
 006CBDE6    mov         eax,ebx
 006CBDE8    mov         esi,dword ptr [eax]
 006CBDEA    call        dword ptr [esi+4]
 006CBDED    mov         edx,dword ptr [ebp-28C]
 006CBDF3    mov         eax,7C2D84;^'Access level 1 -> 2 and 2 -> 1 changes'
 006CBDF8    call        @UStrAsg
 006CBDFD    push        6D1238;'Input / Output status changes'
 006CBE02    lea         eax,[ebp-290]
 006CBE08    push        eax
 006CBE09    mov         ecx,6D1280;'slbIOEvents'
 006CBE0E    mov         edx,6CE130;'FXPDFrame'
 006CBE13    mov         eax,ebx
 006CBE15    mov         esi,dword ptr [eax]
 006CBE17    call        dword ptr [esi+4]
 006CBE1A    mov         edx,dword ptr [ebp-290]
 006CBE20    mov         eax,7C2D88;^'Input / Output status changes'
 006CBE25    call        @UStrAsg
 006CBE2A    push        6D12A4;'Startup events and event register clearing'
 006CBE2F    lea         eax,[ebp-294]
 006CBE35    push        eax
 006CBE36    mov         ecx,6D1308;'slbStartupEvents'
 006CBE3B    mov         edx,6CE130;'FXPDFrame'
 006CBE40    mov         eax,ebx
 006CBE42    mov         esi,dword ptr [eax]
 006CBE44    call        dword ptr [esi+4]
 006CBE47    mov         edx,dword ptr [ebp-294]
 006CBE4D    mov         eax,7C2D8C;^'Startup events and event register clearing'
 006CBE52    call        @UStrAsg
 006CBE57    push        6D1338;'Status updates (after communication has been down)'
 006CBE5C    lea         eax,[ebp-298]
 006CBE62    push        eax
 006CBE63    mov         ecx,6D13AC;'slbStatusUpdateEvents'
 006CBE68    mov         edx,6CE130;'FXPDFrame'
 006CBE6D    mov         eax,ebx
 006CBE6F    mov         esi,dword ptr [eax]
 006CBE71    call        dword ptr [esi+4]
 006CBE74    mov         edx,dword ptr [ebp-298]
 006CBE7A    mov         eax,7C2D90;^'Status updates (after communication has been down)'
 006CBE7F    call        @UStrAsg
 006CBE84    push        6D13E4;'Special alarms'
 006CBE89    lea         eax,[ebp-29C]
 006CBE8F    push        eax
 006CBE90    mov         ecx,6D1410;'sSpecialAlarmsSheet'
 006CBE95    mov         edx,6CE130;'FXPDFrame'
 006CBE9A    mov         eax,ebx
 006CBE9C    mov         esi,dword ptr [eax]
 006CBE9E    call        dword ptr [esi+4]
 006CBEA1    mov         edx,dword ptr [ebp-29C]
 006CBEA7    mov         eax,7C2D94;^'Special alarms'
 006CBEAC    call        @UStrAsg
 006CBEB1    push        6D1444;'Single co-incidence alarm'
 006CBEB6    lea         eax,[ebp-2A0]
 006CBEBC    push        eax
 006CBEBD    mov         ecx,6D1484;'sgbOldCoincidence'
 006CBEC2    mov         edx,6CE130;'FXPDFrame'
 006CBEC7    mov         eax,ebx
 006CBEC9    mov         esi,dword ptr [eax]
 006CBECB    call        dword ptr [esi+4]
 006CBECE    mov         edx,dword ptr [ebp-2A0]
 006CBED4    mov         eax,7C2D98;^'Single co-incidence alarm'
 006CBED9    call        @UStrAsg
 006CBEDE    push        6D14B4;'Single co-incidence detector will not activate fire alarm after 3 minutes'
 006CBEE3    lea         eax,[ebp-2A4]
 006CBEE9    push        eax
 006CBEEA    mov         ecx,6D1554;'scbOldCoincidence'
 006CBEEF    mov         edx,6CE130;'FXPDFrame'
 006CBEF4    mov         eax,ebx
 006CBEF6    mov         esi,dword ptr [eax]
 006CBEF8    call        dword ptr [esi+4]
 006CBEFB    mov         edx,dword ptr [ebp-2A4]
 006CBF01    mov         eax,7C2D9C;^'Single co-incidence detector will not activate fire alarm after 3 minutes'
 006CBF06    call        @UStrAsg
 006CBF0B    push        6D1584;'(Prevents EN54 requirement of raising an alarm)'
 006CBF10    lea         eax,[ebp-2A8]
 006CBF16    push        eax
 006CBF17    mov         ecx,6D15F0;'slbOldCoincidence'
 006CBF1C    mov         edx,6CE130;'FXPDFrame'
 006CBF21    mov         eax,ebx
 006CBF23    mov         esi,dword ptr [eax]
 006CBF25    call        dword ptr [esi+4]
 006CBF28    mov         edx,dword ptr [ebp-2A8]
 006CBF2E    mov         eax,7C2DA0;^'(Prevents EN54 requirement of raising an alarm)'
 006CBF33    call        @UStrAsg
 006CBF38    push        6D1620;'Autoreset time in minutes 1..5
(default=5)'
 006CBF3D    lea         eax,[ebp-2AC]
 006CBF43    push        eax
 006CBF44    mov         ecx,6D1684;'slbCoincidenceAutoReset'
 006CBF49    mov         edx,6CE130;'FXPDFrame'
 006CBF4E    mov         eax,ebx
 006CBF50    mov         esi,dword ptr [eax]
 006CBF52    call        dword ptr [esi+4]
 006CBF55    mov         edx,dword ptr [ebp-2AC]
 006CBF5B    mov         eax,7C2DA4;^'Autoreset time in minutes 1..5
(default=5)'
 006CBF60    call        @UStrAsg
 006CBF65    push        6D16C0;'Second co-incidence alarm'
 006CBF6A    lea         eax,[ebp-2B0]
 006CBF70    push        eax
 006CBF71    mov         ecx,6D1700;'sgbSecondCoincidence'
 006CBF76    mov         edx,6CE130;'FXPDFrame'
 006CBF7B    mov         eax,ebx
 006CBF7D    mov         esi,dword ptr [eax]
 006CBF7F    call        dword ptr [esi+4]
 006CBF82    mov         edx,dword ptr [ebp-2B0]
 006CBF88    mov         eax,7C2DA8;^'Second co-incidence alarm'
 006CBF8D    call        @UStrAsg
 006CBF92    push        6D1738;'Activate fire alarm by second co-incidence alarm ...'
 006CBF97    lea         eax,[ebp-2B4]
 006CBF9D    push        eax
 006CBF9E    mov         ecx,6D17B0;'slbSecondCoIncidence'
 006CBFA3    mov         edx,6CE130;'FXPDFrame'
 006CBFA8    mov         eax,ebx
 006CBFAA    mov         esi,dword ptr [eax]
 006CBFAC    call        dword ptr [esi+4]
 006CBFAF    mov         edx,dword ptr [ebp-2B4]
 006CBFB5    mov         eax,7C2DAC;^'Activate fire alarm by second co-incidence alarm ...'
 006CBFBA    call        @UStrAsg
 006CBFBF    push        6D17E8;'... in the same zone'
 006CBFC4    lea         eax,[ebp-2B8]
 006CBFCA    push        eax
 006CBFCB    mov         ecx,6D1820;'sbySecondInSameZone'
 006CBFD0    mov         edx,6CE130;'FXPDFrame'
 006CBFD5    mov         eax,ebx
 006CBFD7    mov         esi,dword ptr [eax]
 006CBFD9    call        dword ptr [esi+4]
 006CBFDC    mov         edx,dword ptr [ebp-2B8]
 006CBFE2    mov         eax,7C2DB0;^'... in the same zone'
 006CBFE7    call        @UStrAsg
 006CBFEC    push        6D1854;'... in the same panel'
 006CBFF1    lea         eax,[ebp-2BC]
 006CBFF7    push        eax
 006CBFF8    mov         ecx,6D188C;'sbySecondInSamePanel'
 006CBFFD    mov         edx,6CE130;'FXPDFrame'
 006CC002    mov         eax,ebx
 006CC004    mov         esi,dword ptr [eax]
 006CC006    call        dword ptr [esi+4]
 006CC009    mov         edx,dword ptr [ebp-2BC]
 006CC00F    mov         eax,7C2DB4;^'... in the same panel'
 006CC014    call        @UStrAsg
 006CC019    push        6D18C4;'Alarm display'
 006CC01E    lea         eax,[ebp-2C0]
 006CC024    push        eax
 006CC025    mov         ecx,6D18EC;'srgAlarmdisplay'
 006CC02A    mov         edx,6CE130;'FXPDFrame'
 006CC02F    mov         eax,ebx
 006CC031    mov         esi,dword ptr [eax]
 006CC033    call        dword ptr [esi+4]
 006CC036    mov         edx,dword ptr [ebp-2C0]
 006CC03C    mov         eax,7C2DB8;^'Alarm display'
 006CC041    call        @UStrAsg
 006CC046    push        6D1918;'Detection zone + address'
 006CC04B    lea         eax,[ebp-2C4]
 006CC051    push        eax
 006CC052    mov         ecx,6D1958;'sZoneAndAddress'
 006CC057    mov         edx,6CE130;'FXPDFrame'
 006CC05C    mov         eax,ebx
 006CC05E    mov         esi,dword ptr [eax]
 006CC060    call        dword ptr [esi+4]
 006CC063    mov         edx,dword ptr [ebp-2C4]
 006CC069    mov         eax,901EF0;gvar_00901EF0:UnicodeString
 006CC06E    call        @UStrAsg
 006CC073    push        6D1984;'Detection zone only'
 006CC078    lea         eax,[ebp-2C8]
 006CC07E    push        eax
 006CC07F    mov         ecx,6D19B8;'sZoneOnly'
 006CC084    mov         edx,6CE130;'FXPDFrame'
 006CC089    mov         eax,ebx
 006CC08B    mov         esi,dword ptr [eax]
 006CC08D    call        dword ptr [esi+4]
 006CC090    mov         edx,dword ptr [ebp-2C8]
 006CC096    mov         eax,901EF4;gvar_00901EF4:UnicodeString
 006CC09B    call        @UStrAsg
 006CC0A0    push        6D19D8;'No zone display'
 006CC0A5    lea         eax,[ebp-2CC]
 006CC0AB    push        eax
 006CC0AC    mov         ecx,6D1A04;'sNoZoneDisplay'
 006CC0B1    mov         edx,6CE130;'FXPDFrame'
 006CC0B6    mov         eax,ebx
 006CC0B8    mov         esi,dword ptr [eax]
 006CC0BA    call        dword ptr [esi+4]
 006CC0BD    mov         edx,dword ptr [ebp-2CC]
 006CC0C3    mov         eax,901EF8;gvar_00901EF8:UnicodeString
 006CC0C8    call        @UStrAsg
 006CC0CD    push        6D1A30;'Configured pre-alarm'
 006CC0D2    lea         eax,[ebp-2D0]
 006CC0D8    push        eax
 006CC0D9    mov         ecx,6D1A68;'sgbConfiguredPrealarm'
 006CC0DE    mov         edx,6CE130;'FXPDFrame'
 006CC0E3    mov         eax,ebx
 006CC0E5    mov         esi,dword ptr [eax]
 006CC0E7    call        dword ptr [esi+4]
 006CC0EA    mov         edx,dword ptr [ebp-2D0]
 006CC0F0    mov         eax,7C2DBC;^'Configured pre-alarm'
 006CC0F5    call        @UStrAsg
 006CC0FA    push        6D1AA0;'Indicate with 0.25 Hz blink rate
(2 s ON, 2 s OFF)'
 006CC0FF    lea         eax,[ebp-2D4]
 006CC105    push        eax
 006CC106    mov         ecx,6D1B14;'scbPrealarmBlinkRate'
 006CC10B    mov         edx,6CE130;'FXPDFrame'
 006CC110    mov         eax,ebx
 006CC112    mov         esi,dword ptr [eax]
 006CC114    call        dword ptr [esi+4]
 006CC117    mov         edx,dword ptr [ebp-2D4]
 006CC11D    mov         eax,7C2DC0;^'Indicate with 0.25 Hz blink rate
(2 s ON, 2 s OFF)'
 006CC122    call        @UStrAsg
 006CC127    push        6D1B4C;'Power supply'
 006CC12C    lea         eax,[ebp-2D8]
 006CC132    push        eax
 006CC133    mov         ecx,6D1B74;'sPowerSupplySheet'
 006CC138    mov         edx,6CE130;'FXPDFrame'
 006CC13D    mov         eax,ebx
 006CC13F    mov         esi,dword ptr [eax]
 006CC141    call        dword ptr [esi+4]
 006CC144    mov         edx,dword ptr [ebp-2D8]
 006CC14A    mov         eax,7C2DC4;^'Power supply'
 006CC14F    call        @UStrAsg
 006CC154    push        6D1BA4;'Battery package monitoring'
 006CC159    lea         eax,[ebp-2DC]
 006CC15F    push        eax
 006CC160    mov         ecx,6D1BE8;'sgbBattPackMonitoring'
 006CC165    mov         edx,6CE130;'FXPDFrame'
 006CC16A    mov         eax,ebx
 006CC16C    mov         esi,dword ptr [eax]
 006CC16E    call        dword ptr [esi+4]
 006CC171    mov         edx,dword ptr [ebp-2DC]
 006CC177    mov         eax,7C2DC8;^'Battery package monitoring'
 006CC17C    call        @UStrAsg
 006CC181    push        6D1C20;'Monitor battery package 1'
 006CC186    lea         eax,[ebp-2E0]
 006CC18C    push        eax
 006CC18D    mov         ecx,6D1C60;'scbBattPack1Monitored'
 006CC192    mov         edx,6CE130;'FXPDFrame'
 006CC197    mov         eax,ebx
 006CC199    mov         esi,dword ptr [eax]
 006CC19B    call        dword ptr [esi+4]
 006CC19E    mov         edx,dword ptr [ebp-2E0]
 006CC1A4    mov         eax,7C2DCC;^'Monitor battery package 1'
 006CC1A9    call        @UStrAsg
 006CC1AE    push        6D1C98;'Monitor battery package 2'
 006CC1B3    lea         eax,[ebp-2E4]
 006CC1B9    push        eax
 006CC1BA    mov         ecx,6D1CD8;'scbBattPack2Monitored'
 006CC1BF    mov         edx,6CE130;'FXPDFrame'
 006CC1C4    mov         eax,ebx
 006CC1C6    mov         esi,dword ptr [eax]
 006CC1C8    call        dword ptr [esi+4]
 006CC1CB    mov         edx,dword ptr [ebp-2E4]
 006CC1D1    mov         eax,7C2DD0;^'Monitor battery package 2'
 006CC1D6    call        @UStrAsg
 006CC1DB    push        6D1D10;'Monitor battery package 3'
 006CC1E0    lea         eax,[ebp-2E8]
 006CC1E6    push        eax
 006CC1E7    mov         ecx,6D1D50;'scbBattPack3Monitored'
 006CC1EC    mov         edx,6CE130;'FXPDFrame'
 006CC1F1    mov         eax,ebx
 006CC1F3    mov         esi,dword ptr [eax]
 006CC1F5    call        dword ptr [esi+4]
 006CC1F8    mov         edx,dword ptr [ebp-2E8]
 006CC1FE    mov         eax,7C2DD4;^'Monitor battery package 3'
 006CC203    call        @UStrAsg
 006CC208    push        6D1D88;'Monitor battery package 4'
 006CC20D    lea         eax,[ebp-2EC]
 006CC213    push        eax
 006CC214    mov         ecx,6D1DC8;'scbBattPack4Monitored'
 006CC219    mov         edx,6CE130;'FXPDFrame'
 006CC21E    mov         eax,ebx
 006CC220    mov         esi,dword ptr [eax]
 006CC222    call        dword ptr [esi+4]
 006CC225    mov         edx,dword ptr [ebp-2EC]
 006CC22B    mov         eax,7C2DD8;^'Monitor battery package 4'
 006CC230    call        @UStrAsg
 006CC235    push        6D1E00;'Main supply fault delay (normally 30 min.)'
 006CC23A    lea         eax,[ebp-2F0]
 006CC240    push        eax
 006CC241    mov         ecx,6D1E64;'sgbMainsFaultDelay'
 006CC246    mov         edx,6CE130;'FXPDFrame'
 006CC24B    mov         eax,ebx
 006CC24D    mov         esi,dword ptr [eax]
 006CC24F    call        dword ptr [esi+4]
 006CC252    mov         edx,dword ptr [ebp-2F0]
 006CC258    mov         eax,7C2DDC;^'Main supply fault delay (normally 30 min.)'
 006CC25D    call        @UStrAsg
 006CC262    push        6D1E98;'Use adjusted delay (0 .. 30 min.)'
 006CC267    lea         eax,[ebp-2F4]
 006CC26D    push        eax
 006CC26E    mov         ecx,6D1EE8;'scbMainsFaultDelay'
 006CC273    mov         edx,6CE130;'FXPDFrame'
 006CC278    mov         eax,ebx
 006CC27A    mov         esi,dword ptr [eax]
 006CC27C    call        dword ptr [esi+4]
 006CC27F    mov         edx,dword ptr [ebp-2F4]
 006CC285    mov         eax,7C2DE0;^'Use adjusted delay (0 .. 30 min.)'
 006CC28A    call        @UStrAsg
 006CC28F    push        6D1F1C;'Minutes'
 006CC294    lea         eax,[ebp-2F8]
 006CC29A    push        eax
 006CC29B    mov         ecx,6D1F38;'slbMainsFaultDelay'
 006CC2A0    mov         edx,6CE130;'FXPDFrame'
 006CC2A5    mov         eax,ebx
 006CC2A7    mov         esi,dword ptr [eax]
 006CC2A9    call        dword ptr [esi+4]
 006CC2AC    mov         edx,dword ptr [ebp-2F8]
 006CC2B2    mov         eax,7C2DE4;^'Minutes'
 006CC2B7    call        @UStrAsg
 006CC2BC    push        6D1F6C;'Miscellaneous'
 006CC2C1    lea         eax,[ebp-2FC]
 006CC2C7    push        eax
 006CC2C8    mov         ecx,6D1F94;'sMiscellaneousSheet'
 006CC2CD    mov         edx,6CE130;'FXPDFrame'
 006CC2D2    mov         eax,ebx
 006CC2D4    mov         esi,dword ptr [eax]
 006CC2D6    call        dword ptr [esi+4]
 006CC2D9    mov         edx,dword ptr [ebp-2FC]
 006CC2DF    mov         eax,7C2DE8;^'Miscellaneous'
 006CC2E4    call        @UStrAsg
 006CC2E9    push        6D1FC8;'Panel language'
 006CC2EE    lea         eax,[ebp-300]
 006CC2F4    push        eax
 006CC2F5    mov         ecx,6D1FF4;'sgbPanelLanguage'
 006CC2FA    mov         edx,6CE130;'FXPDFrame'
 006CC2FF    mov         eax,ebx
 006CC301    mov         esi,dword ptr [eax]
 006CC303    call        dword ptr [esi+4]
 006CC306    mov         edx,dword ptr [ebp-300]
 006CC30C    mov         eax,7C2DEC;^'Panel language'
 006CC311    call        @UStrAsg
 006CC316    push        6D2024;'Primary language'
 006CC31B    lea         eax,[ebp-304]
 006CC321    push        eax
 006CC322    mov         ecx,6D2054;'sgbPrimaryLanguage'
 006CC327    mov         edx,6CE130;'FXPDFrame'
 006CC32C    mov         eax,ebx
 006CC32E    mov         esi,dword ptr [eax]
 006CC330    call        dword ptr [esi+4]
 006CC333    mov         edx,dword ptr [ebp-304]
 006CC339    mov         eax,7C2DF0;^'Primary language'
 006CC33E    call        @UStrAsg
 006CC343    push        6D2088;'Secondary language'
 006CC348    lea         eax,[ebp-308]
 006CC34E    push        eax
 006CC34F    mov         ecx,6D20BC;'sgbSecondaryLanguage'
 006CC354    mov         edx,6CE130;'FXPDFrame'
 006CC359    mov         eax,ebx
 006CC35B    mov         esi,dword ptr [eax]
 006CC35D    call        dword ptr [esi+4]
 006CC360    mov         edx,dword ptr [ebp-308]
 006CC366    mov         eax,7C2DF4;^'Secondary language'
 006CC36B    call        @UStrAsg
 006CC370    push        6D20F4;'English'
 006CC375    lea         eax,[ebp-30C]
 006CC37B    push        eax
 006CC37C    mov         ecx,6D2110;'sEnglish'
 006CC381    mov         edx,6CE130;'FXPDFrame'
 006CC386    mov         eax,ebx
 006CC388    mov         esi,dword ptr [eax]
 006CC38A    call        dword ptr [esi+4]
 006CC38D    mov         edx,dword ptr [ebp-30C]
 006CC393    mov         eax,901EFC;gvar_00901EFC:UnicodeString
 006CC398    call        @UStrAsg
 006CC39D    push        6D2130;'Finnish'
 006CC3A2    lea         eax,[ebp-310]
 006CC3A8    push        eax
 006CC3A9    mov         ecx,6D214C;'sFinnish'
 006CC3AE    mov         edx,6CE130;'FXPDFrame'
 006CC3B3    mov         eax,ebx
 006CC3B5    mov         esi,dword ptr [eax]
 006CC3B7    call        dword ptr [esi+4]
 006CC3BA    mov         edx,dword ptr [ebp-310]
 006CC3C0    mov         eax,901F00;gvar_00901F00:UnicodeString
 006CC3C5    call        @UStrAsg
 006CC3CA    push        6D216C;'Swedish'
 006CC3CF    lea         eax,[ebp-314]
 006CC3D5    push        eax
 006CC3D6    mov         ecx,6D2188;'sSwedish'
 006CC3DB    mov         edx,6CE130;'FXPDFrame'
 006CC3E0    mov         eax,ebx
 006CC3E2    mov         esi,dword ptr [eax]
 006CC3E4    call        dword ptr [esi+4]
 006CC3E7    mov         edx,dword ptr [ebp-314]
 006CC3ED    mov         eax,901F04;gvar_00901F04:UnicodeString
 006CC3F2    call        @UStrAsg
 006CC3F7    push        6D21A8;'Norwegian'
 006CC3FC    lea         eax,[ebp-318]
 006CC402    push        eax
 006CC403    mov         ecx,6D21C8;'sNorwegian'
 006CC408    mov         edx,6CE130;'FXPDFrame'
 006CC40D    mov         eax,ebx
 006CC40F    mov         esi,dword ptr [eax]
 006CC411    call        dword ptr [esi+4]
 006CC414    mov         edx,dword ptr [ebp-318]
 006CC41A    mov         eax,901F08;gvar_00901F08:UnicodeString
 006CC41F    call        @UStrAsg
 006CC424    push        6D21EC;'Danish'
 006CC429    lea         eax,[ebp-31C]
 006CC42F    push        eax
 006CC430    mov         ecx,6D2208;'sDanish'
 006CC435    mov         edx,6CE130;'FXPDFrame'
 006CC43A    mov         eax,ebx
 006CC43C    mov         esi,dword ptr [eax]
 006CC43E    call        dword ptr [esi+4]
 006CC441    mov         edx,dword ptr [ebp-31C]
 006CC447    mov         eax,901F0C;gvar_00901F0C:UnicodeString
 006CC44C    call        @UStrAsg
 006CC451    push        6D2224;'Flemish'
 006CC456    lea         eax,[ebp-320]
 006CC45C    push        eax
 006CC45D    mov         ecx,6D2240;'sFlemish'
 006CC462    mov         edx,6CE130;'FXPDFrame'
 006CC467    mov         eax,ebx
 006CC469    mov         esi,dword ptr [eax]
 006CC46B    call        dword ptr [esi+4]
 006CC46E    mov         edx,dword ptr [ebp-320]
 006CC474    mov         eax,901F10;gvar_00901F10:UnicodeString
 006CC479    call        @UStrAsg
 006CC47E    push        6D2260;'French'
 006CC483    lea         eax,[ebp-324]
 006CC489    push        eax
 006CC48A    mov         ecx,6D227C;'sFrench'
 006CC48F    mov         edx,6CE130;'FXPDFrame'
 006CC494    mov         eax,ebx
 006CC496    mov         esi,dword ptr [eax]
 006CC498    call        dword ptr [esi+4]
 006CC49B    mov         edx,dword ptr [ebp-324]
 006CC4A1    mov         eax,901F14;gvar_00901F14:UnicodeString
 006CC4A6    call        @UStrAsg
 006CC4AB    push        6D2298;'Spanish'
 006CC4B0    lea         eax,[ebp-328]
 006CC4B6    push        eax
 006CC4B7    mov         ecx,6D22B4;'sSpanish'
 006CC4BC    mov         edx,6CE130;'FXPDFrame'
 006CC4C1    mov         eax,ebx
 006CC4C3    mov         esi,dword ptr [eax]
 006CC4C5    call        dword ptr [esi+4]
 006CC4C8    mov         edx,dword ptr [ebp-328]
 006CC4CE    mov         eax,901F18;gvar_00901F18:UnicodeString
 006CC4D3    call        @UStrAsg
 006CC4D8    push        6D22D4;'Estonian'
 006CC4DD    lea         eax,[ebp-32C]
 006CC4E3    push        eax
 006CC4E4    mov         ecx,6D22F4;'sEstonian'
 006CC4E9    mov         edx,6CE130;'FXPDFrame'
 006CC4EE    mov         eax,ebx
 006CC4F0    mov         esi,dword ptr [eax]
 006CC4F2    call        dword ptr [esi+4]
 006CC4F5    mov         edx,dword ptr [ebp-32C]
 006CC4FB    mov         eax,901F1C;gvar_00901F1C:UnicodeString
 006CC500    call        @UStrAsg
 006CC505    push        6D2314;'Latvian'
 006CC50A    lea         eax,[ebp-330]
 006CC510    push        eax
 006CC511    mov         ecx,6D2330;'sLatvian'
 006CC516    mov         edx,6CE130;'FXPDFrame'
 006CC51B    mov         eax,ebx
 006CC51D    mov         esi,dword ptr [eax]
 006CC51F    call        dword ptr [esi+4]
 006CC522    mov         edx,dword ptr [ebp-330]
 006CC528    mov         eax,901F20;gvar_00901F20:UnicodeString
 006CC52D    call        @UStrAsg
 006CC532    push        6D2350;'Lithuanian'
 006CC537    lea         eax,[ebp-334]
 006CC53D    push        eax
 006CC53E    mov         ecx,6D2374;'sLithuanian'
 006CC543    mov         edx,6CE130;'FXPDFrame'
 006CC548    mov         eax,ebx
 006CC54A    mov         esi,dword ptr [eax]
 006CC54C    call        dword ptr [esi+4]
 006CC54F    mov         edx,dword ptr [ebp-334]
 006CC555    mov         eax,901F24;gvar_00901F24:UnicodeString
 006CC55A    call        @UStrAsg
 006CC55F    push        6D2398;'Russian'
 006CC564    lea         eax,[ebp-338]
 006CC56A    push        eax
 006CC56B    mov         ecx,6D23B4;'sRussian'
 006CC570    mov         edx,6CE130;'FXPDFrame'
 006CC575    mov         eax,ebx
 006CC577    mov         esi,dword ptr [eax]
 006CC579    call        dword ptr [esi+4]
 006CC57C    mov         edx,dword ptr [ebp-338]
 006CC582    mov         eax,901F28;gvar_00901F28:UnicodeString
 006CC587    call        @UStrAsg
 006CC58C    push        6D23D4;'Polish'
 006CC591    lea         eax,[ebp-33C]
 006CC597    push        eax
 006CC598    mov         ecx,6D23F0;'sPolish'
 006CC59D    mov         edx,6CE130;'FXPDFrame'
 006CC5A2    mov         eax,ebx
 006CC5A4    mov         esi,dword ptr [eax]
 006CC5A6    call        dword ptr [esi+4]
 006CC5A9    mov         edx,dword ptr [ebp-33C]
 006CC5AF    mov         eax,901F2C;gvar_00901F2C:UnicodeString
 006CC5B4    call        @UStrAsg
 006CC5B9    push        6D240C;'Italian'
 006CC5BE    lea         eax,[ebp-340]
 006CC5C4    push        eax
 006CC5C5    mov         ecx,6D2428;'sItalian'
 006CC5CA    mov         edx,6CE130;'FXPDFrame'
 006CC5CF    mov         eax,ebx
 006CC5D1    mov         esi,dword ptr [eax]
 006CC5D3    call        dword ptr [esi+4]
 006CC5D6    mov         edx,dword ptr [ebp-340]
 006CC5DC    mov         eax,901F30;gvar_00901F30:UnicodeString
 006CC5E1    call        @UStrAsg
 006CC5E6    push        6D2448;'Czech'
 006CC5EB    lea         eax,[ebp-344]
 006CC5F1    push        eax
 006CC5F2    mov         ecx,6D2460;'sCzech'
 006CC5F7    mov         edx,6CE130;'FXPDFrame'
 006CC5FC    mov         eax,ebx
 006CC5FE    mov         esi,dword ptr [eax]
 006CC600    call        dword ptr [esi+4]
 006CC603    mov         edx,dword ptr [ebp-344]
 006CC609    mov         eax,901F34;gvar_00901F34:UnicodeString
 006CC60E    call        @UStrAsg
 006CC613    push        6D247C;'Hungarian'
 006CC618    lea         eax,[ebp-348]
 006CC61E    push        eax
 006CC61F    mov         ecx,6D249C;'sHungarian'
 006CC624    mov         edx,6CE130;'FXPDFrame'
 006CC629    mov         eax,ebx
 006CC62B    mov         esi,dword ptr [eax]
 006CC62D    call        dword ptr [esi+4]
 006CC630    mov         edx,dword ptr [ebp-348]
 006CC636    mov         eax,901F38;gvar_00901F38:UnicodeString
 006CC63B    call        @UStrAsg
 006CC640    push        6D24C0;'Portugese'
 006CC645    lea         eax,[ebp-34C]
 006CC64B    push        eax
 006CC64C    mov         ecx,6D24E0;'sPortugese'
 006CC651    mov         edx,6CE130;'FXPDFrame'
 006CC656    mov         eax,ebx
 006CC658    mov         esi,dword ptr [eax]
 006CC65A    call        dword ptr [esi+4]
 006CC65D    mov         edx,dword ptr [ebp-34C]
 006CC663    mov         eax,901F3C;gvar_00901F3C:UnicodeString
 006CC668    call        @UStrAsg
 006CC66D    push        6D2504;'Turkish'
 006CC672    lea         eax,[ebp-350]
 006CC678    push        eax
 006CC679    mov         ecx,6D2520;'sTurkish'
 006CC67E    mov         edx,6CE130;'FXPDFrame'
 006CC683    mov         eax,ebx
 006CC685    mov         esi,dword ptr [eax]
 006CC687    call        dword ptr [esi+4]
 006CC68A    mov         edx,dword ptr [ebp-350]
 006CC690    mov         eax,901F40;gvar_00901F40:UnicodeString
 006CC695    call        @UStrAsg
 006CC69A    push        6D2540;'Dutch'
 006CC69F    lea         eax,[ebp-354]
 006CC6A5    push        eax
 006CC6A6    mov         ecx,6D2558;'sDutch'
 006CC6AB    mov         edx,6CE130;'FXPDFrame'
 006CC6B0    mov         eax,ebx
 006CC6B2    mov         esi,dword ptr [eax]
 006CC6B4    call        dword ptr [esi+4]
 006CC6B7    mov         edx,dword ptr [ebp-354]
 006CC6BD    mov         eax,901F44;gvar_00901F44:UnicodeString
 006CC6C2    call        @UStrAsg
 006CC6C7    push        6D2574;'Access level codes'
 006CC6CC    lea         eax,[ebp-358]
 006CC6D2    push        eax
 006CC6D3    mov         ecx,6D25A8;'sgbServiceCodes'
 006CC6D8    mov         edx,6CE130;'FXPDFrame'
 006CC6DD    mov         eax,ebx
 006CC6DF    mov         esi,dword ptr [eax]
 006CC6E1    call        dword ptr [esi+4]
 006CC6E4    mov         edx,dword ptr [ebp-358]
 006CC6EA    mov         eax,7C2DF8;^'Access level codes'
 006CC6EF    call        @UStrAsg
 006CC6F4    push        6D25D4;'Access level 3 code'
 006CC6F9    lea         eax,[ebp-35C]
 006CC6FF    push        eax
 006CC700    mov         ecx,6D2608;'slbSCode1'
 006CC705    mov         edx,6CE130;'FXPDFrame'
 006CC70A    mov         eax,ebx
 006CC70C    mov         esi,dword ptr [eax]
 006CC70E    call        dword ptr [esi+4]
 006CC711    mov         edx,dword ptr [ebp-35C]
 006CC717    mov         eax,7C2DFC;^'Access level 3 code'
 006CC71C    call        @UStrAsg
 006CC721    push        6D2628;'Access level 4 code'
 006CC726    lea         eax,[ebp-360]
 006CC72C    push        eax
 006CC72D    mov         ecx,6D265C;'slbSCode2'
 006CC732    mov         edx,6CE130;'FXPDFrame'
 006CC737    mov         eax,ebx
 006CC739    mov         esi,dword ptr [eax]
 006CC73B    call        dword ptr [esi+4]
 006CC73E    mov         edx,dword ptr [ebp-360]
 006CC744    mov         eax,7C2E00;^'Access level 4 code'
 006CC749    call        @UStrAsg
 006CC74E    push        6D267C;'(reserved)'
 006CC753    lea         eax,[ebp-364]
 006CC759    push        eax
 006CC75A    mov         ecx,6D26A0;'slbSCode3'
 006CC75F    mov         edx,6CE130;'FXPDFrame'
 006CC764    mov         eax,ebx
 006CC766    mov         esi,dword ptr [eax]
 006CC768    call        dword ptr [esi+4]
 006CC76B    mov         edx,dword ptr [ebp-364]
 006CC771    mov         eax,7C2E04;^'(reserved)'
 006CC776    call        @UStrAsg
 006CC77B    push        6D26C0;'Automatic summertime'
 006CC780    lea         eax,[ebp-368]
 006CC786    push        eax
 006CC787    mov         ecx,6D26F8;'sgbSummertime'
 006CC78C    mov         edx,6CE130;'FXPDFrame'
 006CC791    mov         eax,ebx
 006CC793    mov         esi,dword ptr [eax]
 006CC795    call        dword ptr [esi+4]
 006CC798    mov         edx,dword ptr [ebp-368]
 006CC79E    mov         eax,7C2E08;^'Automatic summertime'
 006CC7A3    call        @UStrAsg
 006CC7A8    push        6D2720;'Use European summertime'
 006CC7AD    lea         eax,[ebp-36C]
 006CC7B3    push        eax
 006CC7B4    mov         ecx,6D275C;'scbSummertime'
 006CC7B9    mov         edx,6CE130;'FXPDFrame'
 006CC7BE    mov         eax,ebx
 006CC7C0    mov         esi,dword ptr [eax]
 006CC7C2    call        dword ptr [esi+4]
 006CC7C5    mov         edx,dword ptr [ebp-36C]
 006CC7CB    mov         eax,7C2E0C;^'Use European summertime'
 006CC7D0    call        @UStrAsg
 006CC7D5    push        6D2784;'Max. time of zonal disablement'
 006CC7DA    lea         eax,[ebp-370]
 006CC7E0    push        eax
 006CC7E1    mov         ecx,6D27D0;'sgbZoneDisableTime'
 006CC7E6    mov         edx,6CE130;'FXPDFrame'
 006CC7EB    mov         eax,ebx
 006CC7ED    mov         esi,dword ptr [eax]
 006CC7EF    call        dword ptr [esi+4]
 006CC7F2    mov         edx,dword ptr [ebp-370]
 006CC7F8    mov         eax,7C2E10;^'Max. time of zonal disablement'
 006CC7FD    call        @UStrAsg
 006CC802    push        6D2804;'Hours'
 006CC807    lea         eax,[ebp-374]
 006CC80D    push        eax
 006CC80E    mov         ecx,6D281C;'slbHours'
 006CC813    mov         edx,6CE130;'FXPDFrame'
 006CC818    mov         eax,ebx
 006CC81A    mov         esi,dword ptr [eax]
 006CC81C    call        dword ptr [esi+4]
 006CC81F    mov         edx,dword ptr [ebp-374]
 006CC825    mov         eax,7C2E14;^'Hours'
 006CC82A    call        @UStrAsg
 006CC82F    push        6D283C;'Max. time of alarm device muting'
 006CC834    lea         eax,[ebp-378]
 006CC83A    push        eax
 006CC83B    mov         ecx,6D288C;'sgbMaxAdoDisabTime'
 006CC840    mov         edx,6CE130;'FXPDFrame'
 006CC845    mov         eax,ebx
 006CC847    mov         esi,dword ptr [eax]
 006CC849    call        dword ptr [esi+4]
 006CC84C    mov         edx,dword ptr [ebp-378]
 006CC852    mov         eax,7C2E18;^'Max. time of alarm device muting'
 006CC857    call        @UStrAsg
 006CC85C    push        6D28C0;'...by Voice Evacuation, in minutes'
 006CC861    lea         eax,[ebp-37C]
 006CC867    push        eax
 006CC868    mov         ecx,6D2914;'slbMinutes'
 006CC86D    mov         edx,6CE130;'FXPDFrame'
 006CC872    mov         eax,ebx
 006CC874    mov         esi,dword ptr [eax]
 006CC876    call        dword ptr [esi+4]
 006CC879    mov         edx,dword ptr [ebp-37C]
 006CC87F    mov         eax,7C2E1C;^'...by Voice Evacuation, in minutes'
 006CC884    call        @UStrAsg
 006CC889    push        6D2938;'Day state Level 6 of Multicriteria detectors'
 006CC88E    lea         eax,[ebp-380]
 006CC894    push        eax
 006CC895    mov         ecx,6D29A0;'sgbMultiCriteriaLevel6'
 006CC89A    mov         edx,6CE130;'FXPDFrame'
 006CC89F    mov         eax,ebx
 006CC8A1    mov         esi,dword ptr [eax]
 006CC8A3    call        dword ptr [esi+4]
 006CC8A6    mov         edx,dword ptr [ebp-380]
 006CC8AC    mov         eax,7C2E20;^'Day state Level 6 of Multicriteria detectors'
 006CC8B1    call        @UStrAsg
 006CC8B6    push        6D29DC;'Indicate as Smoke Detection Disabled'
 006CC8BB    lea         eax,[ebp-384]
 006CC8C1    push        eax
 006CC8C2    mov         ecx,6D2A34;'scbIndSmokeDetDisabled'
 006CC8C7    mov         edx,6CE130;'FXPDFrame'
 006CC8CC    mov         eax,ebx
 006CC8CE    mov         esi,dword ptr [eax]
 006CC8D0    call        dword ptr [esi+4]
 006CC8D3    mov         edx,dword ptr [ebp-384]
 006CC8D9    mov         eax,7C2E24;^'Indicate as Smoke Detection Disabled'
 006CC8DE    call        @UStrAsg
 006CC8E3    push        6D2A70;'Muted internal buzzer'
 006CC8E8    lea         eax,[ebp-388]
 006CC8EE    push        eax
 006CC8EF    mov         ecx,6D2AA8;'sgbIndBuzzerMuted'
 006CC8F4    mov         edx,6CE130;'FXPDFrame'
 006CC8F9    mov         eax,ebx
 006CC8FB    mov         esi,dword ptr [eax]
 006CC8FD    call        dword ptr [esi+4]
 006CC900    mov         edx,dword ptr [ebp-388]
 006CC906    mov         eax,7C2E28;^'Muted internal buzzer'
 006CC90B    call        @UStrAsg
 006CC910    push        6D2AD8;'Indicate with Customer LED 1'
 006CC915    lea         eax,[ebp-38C]
 006CC91B    push        eax
 006CC91C    mov         ecx,6D2B20;'scbIndBuzzerMuted'
 006CC921    mov         edx,6CE130;'FXPDFrame'
 006CC926    mov         eax,ebx
 006CC928    mov         esi,dword ptr [eax]
 006CC92A    call        dword ptr [esi+4]
 006CC92D    mov         edx,dword ptr [ebp-38C]
 006CC933    mov         eax,7C2E2C;^'Indicate with Customer LED 1'
 006CC938    call        @UStrAsg
 006CC93D    push        6D2B50;'Maintenance interval (months) and message'
 006CC942    lea         eax,[ebp-390]
 006CC948    push        eax
 006CC949    mov         ecx,6D2BB0;'sgbMaintInterval'
 006CC94E    mov         edx,6CE130;'FXPDFrame'
 006CC953    mov         eax,ebx
 006CC955    mov         esi,dword ptr [eax]
 006CC957    call        dword ptr [esi+4]
 006CC95A    mov         edx,dword ptr [ebp-390]
 006CC960    mov         eax,7C2E30;^'Maintenance interval (months) and message'
 006CC965    call        @UStrAsg
 006CC96A    push        6D2BE0;'MC IO setup'
 006CC96F    lea         eax,[ebp-394]
 006CC975    push        eax
 006CC976    mov         ecx,6D2C04;'sMCSheet'
 006CC97B    mov         edx,6CE130;'FXPDFrame'
 006CC980    mov         eax,ebx
 006CC982    mov         esi,dword ptr [eax]
 006CC984    call        dword ptr [esi+4]
 006CC987    mov         edx,dword ptr [ebp-394]
 006CC98D    mov         eax,7C2E34;^'MC IO setup'
 006CC992    call        @UStrAsg
 006CC997    push        6D2C24;'MC IO'
 006CC99C    lea         eax,[ebp-398]
 006CC9A2    push        eax
 006CC9A3    mov         ecx,6D2C3C;'sgbMCIO'
 006CC9A8    mov         edx,6CE130;'FXPDFrame'
 006CC9AD    mov         eax,ebx
 006CC9AF    mov         esi,dword ptr [eax]
 006CC9B1    call        dword ptr [esi+4]
 006CC9B4    mov         edx,dword ptr [ebp-398]
 006CC9BA    mov         eax,7C2E38;^'MC IO'
 006CC9BF    call        @UStrAsg
 006CC9C4    push        6D2C58;'Clean contact inputs'
 006CC9C9    lea         eax,[ebp-39C]
 006CC9CF    push        eax
 006CC9D0    mov         ecx,6D2C90;'slbCCIMC'
 006CC9D5    mov         edx,6CE130;'FXPDFrame'
 006CC9DA    mov         eax,ebx
 006CC9DC    mov         esi,dword ptr [eax]
 006CC9DE    call        dword ptr [esi+4]
 006CC9E1    mov         edx,dword ptr [ebp-39C]
 006CC9E7    mov         eax,7C2E3C;^'Clean contact inputs'
 006CC9EC    call        @UStrAsg
 006CC9F1    push        6D2CB0;'Clean contact outputs'
 006CC9F6    lea         eax,[ebp-3A0]
 006CC9FC    push        eax
 006CC9FD    mov         ecx,6D2CE8;'slbCCOMC'
 006CCA02    mov         edx,6CE130;'FXPDFrame'
 006CCA07    mov         eax,ebx
 006CCA09    mov         esi,dword ptr [eax]
 006CCA0B    call        dword ptr [esi+4]
 006CCA0E    mov         edx,dword ptr [ebp-3A0]
 006CCA14    mov         eax,7C2E40;^'Clean contact outputs'
 006CCA19    call        @UStrAsg
 006CCA1E    push        6D2D08;'Monitored relay output'
 006CCA23    lea         eax,[ebp-3A4]
 006CCA29    push        eax
 006CCA2A    mov         ecx,6D2D44;'slbADOMC'
 006CCA2F    mov         edx,6CE130;'FXPDFrame'
 006CCA34    mov         eax,ebx
 006CCA36    mov         esi,dword ptr [eax]
 006CCA38    call        dword ptr [esi+4]
 006CCA3B    mov         edx,dword ptr [ebp-3A4]
 006CCA41    mov         eax,7C2E44;^'Monitored relay output'
 006CCA46    call        @UStrAsg
 006CCA4B    push        6D2D64;'IO controllers'
 006CCA50    lea         eax,[ebp-3A8]
 006CCA56    push        eax
 006CCA57    mov         ecx,6D2D90;'sIOCSheet'
 006CCA5C    mov         edx,6CE130;'FXPDFrame'
 006CCA61    mov         eax,ebx
 006CCA63    mov         esi,dword ptr [eax]
 006CCA65    call        dword ptr [esi+4]
 006CCA68    mov         edx,dword ptr [ebp-3A8]
 006CCA6E    mov         eax,7C2E48;^'IO controllers'
 006CCA73    call        @UStrAsg
 006CCA78    push        6D2DB0;'IO controller'
 006CCA7D    lea         eax,[ebp-3AC]
 006CCA83    push        eax
 006CCA84    mov         ecx,6D2DD8;'sgbIOC'
 006CCA89    mov         edx,6CE130;'FXPDFrame'
 006CCA8E    mov         eax,ebx
 006CCA90    mov         esi,dword ptr [eax]
 006CCA92    call        dword ptr [esi+4]
 006CCA95    mov         edx,dword ptr [ebp-3AC]
 006CCA9B    mov         eax,7C2E4C;^'IO controller'
 006CCAA0    call        @UStrAsg
 006CCAA5    push        6CF3BC;'Type: '
 006CCAAA    lea         eax,[ebp-3B0]
 006CCAB0    push        eax
 006CCAB1    mov         ecx,6D2DF4;'slbType'
 006CCAB6    mov         edx,6CE130;'FXPDFrame'
 006CCABB    mov         eax,ebx
 006CCABD    mov         esi,dword ptr [eax]
 006CCABF    call        dword ptr [esi+4]
 006CCAC2    mov         edx,dword ptr [ebp-3B0]
 006CCAC8    mov         eax,7C2E50;^'Type: '
 006CCACD    call        @UStrAsg
 006CCAD2    push        6D2C58;'Clean contact inputs'
 006CCAD7    lea         eax,[ebp-3B4]
 006CCADD    push        eax
 006CCADE    mov         ecx,6D2E10;'slbCCI'
 006CCAE3    mov         edx,6CE130;'FXPDFrame'
 006CCAE8    mov         eax,ebx
 006CCAEA    mov         esi,dword ptr [eax]
 006CCAEC    call        dword ptr [esi+4]
 006CCAEF    mov         edx,dword ptr [ebp-3B4]
 006CCAF5    mov         eax,7C2E54;^'Clean contact inputs'
 006CCAFA    call        @UStrAsg
 006CCAFF    push        6D2CB0;'Clean contact outputs'
 006CCB04    lea         eax,[ebp-3B8]
 006CCB0A    push        eax
 006CCB0B    mov         ecx,6D2E2C;'slbCCO'
 006CCB10    mov         edx,6CE130;'FXPDFrame'
 006CCB15    mov         eax,ebx
 006CCB17    mov         esi,dword ptr [eax]
 006CCB19    call        dword ptr [esi+4]
 006CCB1C    mov         edx,dword ptr [ebp-3B8]
 006CCB22    mov         eax,7C2E58;^'Clean contact outputs'
 006CCB27    call        @UStrAsg
 006CCB2C    push        6D2E48;'Open collector outputs'
 006CCB31    lea         eax,[ebp-3BC]
 006CCB37    push        eax
 006CCB38    mov         ecx,6D2E84;'slbCCO101'
 006CCB3D    mov         edx,6CE130;'FXPDFrame'
 006CCB42    mov         eax,ebx
 006CCB44    mov         esi,dword ptr [eax]
 006CCB46    call        dword ptr [esi+4]
 006CCB49    mov         edx,dword ptr [ebp-3BC]
 006CCB4F    mov         eax,7C2E5C;^'Open collector outputs'
 006CCB54    call        @UStrAsg
 006CCB59    push        6D2EA4;'Monitored relay outputs'
 006CCB5E    lea         eax,[ebp-3C0]
 006CCB64    push        eax
 006CCB65    mov         ecx,6D2EE0;'slbADO'
 006CCB6A    mov         edx,6CE130;'FXPDFrame'
 006CCB6F    mov         eax,ebx
 006CCB71    mov         esi,dword ptr [eax]
 006CCB73    call        dword ptr [esi+4]
 006CCB76    mov         edx,dword ptr [ebp-3C0]
 006CCB7C    mov         eax,7C2E60;^'Monitored relay outputs'
 006CCB81    call        @UStrAsg
 006CCB86    push        6D2EFC;'Current data for this IO controller will be deleted if you change its type!
Are...
 006CCB8B    lea         eax,[ebp-3C4]
 006CCB91    push        eax
 006CCB92    mov         ecx,6D2FF8;'sDataWillBeCleared'
 006CCB97    mov         edx,6CE130;'FXPDFrame'
 006CCB9C    mov         eax,ebx
 006CCB9E    mov         esi,dword ptr [eax]
 006CCBA0    call        dword ptr [esi+4]
 006CCBA3    mov         edx,dword ptr [ebp-3C4]
 006CCBA9    mov         eax,7C2E64;^'Current data for this IO controller will be deleted if you change its type!...
 006CCBAE    call        @UStrAsg
 006CCBB3    push        6D302C;'Input'
 006CCBB8    lea         eax,[ebp-3C8]
 006CCBBE    push        eax
 006CCBBF    mov         ecx,6D3044;'sCCIGridHeadCol'
 006CCBC4    mov         edx,6CE130;'FXPDFrame'
 006CCBC9    mov         eax,ebx
 006CCBCB    mov         esi,dword ptr [eax]
 006CCBCD    call        dword ptr [esi+4]
 006CCBD0    mov         edx,dword ptr [ebp-3C8]
 006CCBD6    mov         eax,7C2E68;^'Input'
 006CCBDB    call        @UStrAsg
 006CCBE0    push        6D3070;'Function'
 006CCBE5    lea         eax,[ebp-3CC]
 006CCBEB    push        eax
 006CCBEC    mov         ecx,6D3090;'sCCIGridFuncCol'
 006CCBF1    mov         edx,6CE130;'FXPDFrame'
 006CCBF6    mov         eax,ebx
 006CCBF8    mov         esi,dword ptr [eax]
 006CCBFA    call        dword ptr [esi+4]
 006CCBFD    mov         edx,dword ptr [ebp-3CC]
 006CCC03    mov         eax,7C2E6C;^'Function'
 006CCC08    call        @UStrAsg
 006CCC0D    push        6D30BC;'Contact'
 006CCC12    lea         eax,[ebp-3D0]
 006CCC18    push        eax
 006CCC19    mov         ecx,6D30D8;'sCCIGridTypeCol'
 006CCC1E    mov         edx,6CE130;'FXPDFrame'
 006CCC23    mov         eax,ebx
 006CCC25    mov         esi,dword ptr [eax]
 006CCC27    call        dword ptr [esi+4]
 006CCC2A    mov         edx,dword ptr [ebp-3D0]
 006CCC30    mov         eax,7C2E70;^'Contact'
 006CCC35    call        @UStrAsg
 006CCC3A    push        6D3104;'Control A'
 006CCC3F    lea         eax,[ebp-3D4]
 006CCC45    push        eax
 006CCC46    mov         ecx,6D3124;'sCCIGridCZ1Col'
 006CCC4B    mov         edx,6CE130;'FXPDFrame'
 006CCC50    mov         eax,ebx
 006CCC52    mov         esi,dword ptr [eax]
 006CCC54    call        dword ptr [esi+4]
 006CCC57    mov         edx,dword ptr [ebp-3D4]
 006CCC5D    mov         eax,7C2E74;^'Control A'
 006CCC62    call        @UStrAsg
 006CCC67    push        6D3150;'Control B'
 006CCC6C    lea         eax,[ebp-3D8]
 006CCC72    push        eax
 006CCC73    mov         ecx,6D3170;'sCCIGridCZ2Col'
 006CCC78    mov         edx,6CE130;'FXPDFrame'
 006CCC7D    mov         eax,ebx
 006CCC7F    mov         esi,dword ptr [eax]
 006CCC81    call        dword ptr [esi+4]
 006CCC84    mov         edx,dword ptr [ebp-3D8]
 006CCC8A    mov         eax,7C2E78;^'Control B'
 006CCC8F    call        @UStrAsg
 006CCC94    push        6D319C;'Control B2'
 006CCC99    lea         eax,[ebp-3DC]
 006CCC9F    push        eax
 006CCCA0    mov         ecx,6D31C0;'sCCIGridCZ3Col'
 006CCCA5    mov         edx,6CE130;'FXPDFrame'
 006CCCAA    mov         eax,ebx
 006CCCAC    mov         esi,dword ptr [eax]
 006CCCAE    call        dword ptr [esi+4]
 006CCCB1    mov         edx,dword ptr [ebp-3DC]
 006CCCB7    mov         eax,7C2E7C;^'Control B2'
 006CCCBC    call        @UStrAsg
 006CCCC1    push        6D31EC;'Description'
 006CCCC6    lea         eax,[ebp-3E0]
 006CCCCC    push        eax
 006CCCCD    mov         ecx,6D3210;'sCCIGridDescCol'
 006CCCD2    mov         edx,6CE130;'FXPDFrame'
 006CCCD7    mov         eax,ebx
 006CCCD9    mov         esi,dword ptr [eax]
 006CCCDB    call        dword ptr [esi+4]
 006CCCDE    mov         edx,dword ptr [ebp-3E0]
 006CCCE4    mov         eax,7C2E80;^'Description'
 006CCCE9    call        @UStrAsg
 006CCCEE    push        6D323C;'Output'
 006CCCF3    lea         eax,[ebp-3E4]
 006CCCF9    push        eax
 006CCCFA    mov         ecx,6D3258;'sCCOGridHeadCol'
 006CCCFF    mov         edx,6CE130;'FXPDFrame'
 006CCD04    mov         eax,ebx
 006CCD06    mov         esi,dword ptr [eax]
 006CCD08    call        dword ptr [esi+4]
 006CCD0B    mov         edx,dword ptr [ebp-3E4]
 006CCD11    mov         eax,7C2E84;^'Output'
 006CCD16    call        @UStrAsg
 006CCD1B    push        6D3070;'Function'
 006CCD20    lea         eax,[ebp-3E8]
 006CCD26    push        eax
 006CCD27    mov         ecx,6D3284;'sCCOGridFuncCol'
 006CCD2C    mov         edx,6CE130;'FXPDFrame'
 006CCD31    mov         eax,ebx
 006CCD33    mov         esi,dword ptr [eax]
 006CCD35    call        dword ptr [esi+4]
 006CCD38    mov         edx,dword ptr [ebp-3E8]
 006CCD3E    mov         eax,7C2E88;^'Function'
 006CCD43    call        @UStrAsg
 006CCD48    push        6D32B0;'Control groups'
 006CCD4D    lea         eax,[ebp-3EC]
 006CCD53    push        eax
 006CCD54    mov         ecx,6D32DC;'sCCOGridCZsCol'
 006CCD59    mov         edx,6CE130;'FXPDFrame'
 006CCD5E    mov         eax,ebx
 006CCD60    mov         esi,dword ptr [eax]
 006CCD62    call        dword ptr [esi+4]
 006CCD65    mov         edx,dword ptr [ebp-3EC]
 006CCD6B    mov         eax,7C2E8C;^'Control groups'
 006CCD70    call        @UStrAsg
 006CCD75    push        6D31EC;'Description'
 006CCD7A    lea         eax,[ebp-3F0]
 006CCD80    push        eax
 006CCD81    mov         ecx,6D3308;'sCCOGridDescCol'
 006CCD86    mov         edx,6CE130;'FXPDFrame'
 006CCD8B    mov         eax,ebx
 006CCD8D    mov         esi,dword ptr [eax]
 006CCD8F    call        dword ptr [esi+4]
 006CCD92    mov         edx,dword ptr [ebp-3F0]
 006CCD98    mov         eax,7C2E90;^'Description'
 006CCD9D    call        @UStrAsg
 006CCDA2    push        6D323C;'Output'
 006CCDA7    lea         eax,[ebp-3F4]
 006CCDAD    push        eax
 006CCDAE    mov         ecx,6D3334;'sADOGridHeadCol'
 006CCDB3    mov         edx,6CE130;'FXPDFrame'
 006CCDB8    mov         eax,ebx
 006CCDBA    mov         esi,dword ptr [eax]
 006CCDBC    call        dword ptr [esi+4]
 006CCDBF    mov         edx,dword ptr [ebp-3F4]
 006CCDC5    mov         eax,7C2E94;^'Output'
 006CCDCA    call        @UStrAsg
 006CCDCF    push        6D3070;'Function'
 006CCDD4    lea         eax,[ebp-3F8]
 006CCDDA    push        eax
 006CCDDB    mov         ecx,6D3360;'sADOGridFuncCol'
 006CCDE0    mov         edx,6CE130;'FXPDFrame'
 006CCDE5    mov         eax,ebx
 006CCDE7    mov         esi,dword ptr [eax]
 006CCDE9    call        dword ptr [esi+4]
 006CCDEC    mov         edx,dword ptr [ebp-3F8]
 006CCDF2    mov         eax,7C2E98;^'Function'
 006CCDF7    call        @UStrAsg
 006CCDFC    push        6D338C;'Mode'
 006CCE01    lea         eax,[ebp-3FC]
 006CCE07    push        eax
 006CCE08    mov         ecx,6D33A4;'sADOGridModeCol'
 006CCE0D    mov         edx,6CE130;'FXPDFrame'
 006CCE12    mov         eax,ebx
 006CCE14    mov         esi,dword ptr [eax]
 006CCE16    call        dword ptr [esi+4]
 006CCE19    mov         edx,dword ptr [ebp-3FC]
 006CCE1F    mov         eax,7C2E9C;^'Mode'
 006CCE24    call        @UStrAsg
 006CCE29    push        6D33D0;'Monitored'
 006CCE2E    lea         eax,[ebp-400]
 006CCE34    push        eax
 006CCE35    mov         ecx,6D33F0;'sADOGridMoniCol'
 006CCE3A    mov         edx,6CE130;'FXPDFrame'
 006CCE3F    mov         eax,ebx
 006CCE41    mov         esi,dword ptr [eax]
 006CCE43    call        dword ptr [esi+4]
 006CCE46    mov         edx,dword ptr [ebp-400]
 006CCE4C    mov         eax,7C2EA0;^'Monitored'
 006CCE51    call        @UStrAsg
 006CCE56    push        6D32B0;'Control groups'
 006CCE5B    lea         eax,[ebp-404]
 006CCE61    push        eax
 006CCE62    mov         ecx,6D341C;'sADOGridCZsCol'
 006CCE67    mov         edx,6CE130;'FXPDFrame'
 006CCE6C    mov         eax,ebx
 006CCE6E    mov         esi,dword ptr [eax]
 006CCE70    call        dword ptr [esi+4]
 006CCE73    mov         edx,dword ptr [ebp-404]
 006CCE79    mov         eax,7C2EA4;^'Control groups'
 006CCE7E    call        @UStrAsg
 006CCE83    push        6D31EC;'Description'
 006CCE88    lea         eax,[ebp-408]
 006CCE8E    push        eax
 006CCE8F    mov         ecx,6D3448;'sADOGridDescCol'
 006CCE94    mov         edx,6CE130;'FXPDFrame'
 006CCE99    mov         eax,ebx
 006CCE9B    mov         ebx,dword ptr [eax]
 006CCE9D    call        dword ptr [ebx+4]
 006CCEA0    mov         edx,dword ptr [ebp-408]
 006CCEA6    mov         eax,7C2EA8;^'Description'
 006CCEAB    call        @UStrAsg
 006CCEB0    xor         eax,eax
 006CCEB2    pop         edx
 006CCEB3    pop         ecx
 006CCEB4    pop         ecx
 006CCEB5    mov         dword ptr fs:[eax],edx
 006CCEB8    push        6CCEF5
 006CCEBD    lea         eax,[ebp-408]
 006CCEC3    mov         edx,64
 006CCEC8    call        @UStrArrayClr
 006CCECD    lea         eax,[ebp-278]
 006CCED3    mov         edx,64
 006CCED8    call        @UStrArrayClr
 006CCEDD    lea         eax,[ebp-0E8]
 006CCEE3    mov         edx,3A
 006CCEE8    call        @UStrArrayClr
 006CCEED    ret
>006CCEEE    jmp         @HandleFinally
>006CCEF3    jmp         006CCEBD
 006CCEF5    pop         edi
 006CCEF6    pop         esi
 006CCEF7    pop         ebx
 006CCEF8    mov         esp,ebp
 006CCEFA    pop         ebp
 006CCEFB    ret
*}
end;

Initialization
Finalization
//006D3468
{*
 006D3468    push        ebp
 006D3469    mov         ebp,esp
 006D346B    xor         eax,eax
 006D346D    push        ebp
 006D346E    push        6D3D45
 006D3473    push        dword ptr fs:[eax]
 006D3476    mov         dword ptr fs:[eax],esp
 006D3479    inc         dword ptr ds:[901F48]
>006D347F    jne         006D3D37
 006D3485    mov         eax,7C2B9C;^'OK'
 006D348A    call        @UStrClr
 006D348F    mov         eax,7C2BA0;^'Cancel'
 006D3494    call        @UStrClr
 006D3499    mov         eax,7C2BA4;^'New file'
 006D349E    call        @UStrClr
 006D34A3    mov         eax,7C2BA8;^'Changes you might have made in this data view will be lost.
Do you want to...
 006D34A8    call        @UStrClr
 006D34AD    mov         eax,7C2BAC;^'The file does not contain valid data.'
 006D34B2    call        @UStrClr
 006D34B7    mov         eax,901E30;gvar_00901E30:UnicodeString
 006D34BC    mov         ecx,4
 006D34C1    mov         edx,dword ptr ds:[4012B8];string
 006D34C7    call        @FinalizeArray
 006D34CC    mov         eax,7C2BB0;^'Panels'
 006D34D1    call        @UStrClr
 006D34D6    mov         eax,7C2BB4;^'Panel visibility'
 006D34DB    call        @UStrClr
 006D34E0    mov         eax,7C2BB8;^'Loops and zones'
 006D34E5    call        @UStrClr
 006D34EA    mov         eax,7C2BBC;^'FXNet system name'
 006D34EF    call        @UStrClr
 006D34F4    mov         eax,7C2BC0;^'System kind'
 006D34F9    call        @UStrClr
 006D34FE    mov         eax,901E40;gvar_00901E40:UnicodeString
 006D3503    mov         ecx,2
 006D3508    mov         edx,dword ptr ds:[4012B8];string
 006D350E    call        @FinalizeArray
 006D3513    mov         eax,7C2BC4;^'Panels'
 006D3518    call        @UStrClr
 006D351D    mov         eax,901E48;gvar_00901E48:UnicodeString
 006D3522    mov         ecx,3
 006D3527    mov         edx,dword ptr ds:[4012B8];string
 006D352D    call        @FinalizeArray
 006D3532    mov         eax,7C2BC8;^'Panel id'
 006D3537    call        @UStrClr
 006D353C    mov         eax,7C2BCC;^'Panel type'
 006D3541    call        @UStrClr
 006D3546    mov         eax,7C2BD0;^'Panel name'
 006D354B    call        @UStrClr
 006D3550    mov         eax,7C2BD4;^'Add'
 006D3555    call        @UStrClr
 006D355A    mov         eax,7C2BD8;^'Modify'
 006D355F    call        @UStrClr
 006D3564    mov         eax,7C2BDC;^'Delete'
 006D3569    call        @UStrClr
 006D356E    mov         eax,7C2BE0;^'Summary of visible panels'
 006D3573    call        @UStrClr
 006D3578    mov         eax,901E54;gvar_00901E54:UnicodeString
 006D357D    mov         ecx,4
 006D3582    mov         edx,dword ptr ds:[4012B8];string
 006D3588    call        @FinalizeArray
 006D358D    mov         eax,7C2BE4;^' logical connections'
 006D3592    call        @UStrClr
 006D3597    mov         eax,7C2BE8;^'Summary of panels, loops and zones'
 006D359C    call        @UStrClr
 006D35A1    mov         eax,901E64;gvar_00901E64:UnicodeString
 006D35A6    mov         ecx,8
 006D35AB    mov         edx,dword ptr ds:[4012B8];string
 006D35B1    call        @FinalizeArray
 006D35B6    mov         eax,7C2BEC;^'Warning! Error in panel ID'
 006D35BB    call        @UStrClr
 006D35C0    mov         eax,7C2BF0;^'Warning! Overlapping Loops'
 006D35C5    call        @UStrClr
 006D35CA    mov         eax,7C2BF4;^'Warning! Overlapping Zones'
 006D35CF    call        @UStrClr
 006D35D4    mov         eax,7C2BF8;^'Standalone systems can only have a panel with id = 0'
 006D35D9    call        @UStrClr
 006D35DE    mov         eax,7C2BFC;^'Multipanel systems can not have panels with id = 0'
 006D35E3    call        @UStrClr
 006D35E8    mov         eax,7C2C00;^'A panel with this ID already exists'
 006D35ED    call        @UStrClr
 006D35F2    mov         eax,7C2C04;^'All panels with ID > 0 will be deleted! Do you want to continue?'
 006D35F7    call        @UStrClr
 006D35FC    mov         eax,7C2C08;^'The Panel with ID = 0 will be deleted! Do you want to continue?'
 006D3601    call        @UStrClr
 006D3606    mov         eax,7C2C0C;^'Panel info'
 006D360B    call        @UStrClr
 006D3610    mov         eax,7C2C10;^'Panel file name'
 006D3615    call        @UStrClr
 006D361A    mov         eax,7C2C14;^'Panel description'
 006D361F    call        @UStrClr
 006D3624    mov         eax,7C2C18;^'Logo in display of panel'
 006D3629    call        @UStrClr
 006D362E    mov         eax,7C2C1C;^'No logo'
 006D3633    call        @UStrClr
 006D3638    mov         eax,7C2C20;^'Communication'
 006D363D    call        @UStrClr
 006D3642    mov         eax,7C2C24;^'RS232 usage'
 006D3647    call        @UStrClr
 006D364C    mov         eax,901E84;gvar_00901E84:UnicodeString
 006D3651    mov         ecx,3
 006D3656    mov         edx,dword ptr ds:[4012B8];string
 006D365C    call        @FinalizeArray
 006D3661    mov         eax,7C2C28;^'INFO monitored'
 006D3666    call        @UStrClr
 006D366B    mov         eax,7C2C2C;^'Disable if router disabled'
 006D3670    call        @UStrClr
 006D3675    mov         eax,7C2C30;^'Baud rate'
 006D367A    call        @UStrClr
 006D367F    mov         eax,7C2C34;^'Description (shown in fault situation)'
 006D3684    call        @UStrClr
 006D3689    mov         eax,7C2C38;^'RS485 usage'
 006D368E    call        @UStrClr
 006D3693    mov         eax,901E90;gvar_00901E90:UnicodeString
 006D3698    mov         ecx,2
 006D369D    mov         edx,dword ptr ds:[4012B8];string
 006D36A3    call        @FinalizeArray
 006D36A8    mov         eax,7C2C3C;^'INFO monitored'
 006D36AD    call        @UStrClr
 006D36B2    mov         eax,7C2C40;^'Disable if router disabled'
 006D36B7    call        @UStrClr
 006D36BC    mov         eax,7C2C44;^'Baud rate'
 006D36C1    call        @UStrClr
 006D36C6    mov         eax,7C2C48;^'Description (shown in fault situation)'
 006D36CB    call        @UStrClr
 006D36D0    mov         eax,7C2C4C;^'SYSTEM-1 usage'
 006D36D5    call        @UStrClr
 006D36DA    mov         eax,901E98;gvar_00901E98:UnicodeString
 006D36DF    mov         ecx,2
 006D36E4    mov         edx,dword ptr ds:[4012B8];string
 006D36EA    call        @FinalizeArray
 006D36EF    mov         eax,7C2C50;^'Baud rate'
 006D36F4    call        @UStrClr
 006D36F9    mov         eax,7C2C54;^'SYSTEM-2 usage'
 006D36FE    call        @UStrClr
 006D3703    mov         eax,901EA0;gvar_00901EA0:UnicodeString
 006D3708    mov         ecx,2
 006D370D    mov         edx,dword ptr ds:[4012B8];string
 006D3713    call        @FinalizeArray
 006D3718    mov         eax,7C2C58;^'Ethernet communication'
 006D371D    call        @UStrClr
 006D3722    mov         eax,7C2C5C;^'Not in use'
 006D3727    call        @UStrClr
 006D372C    mov         eax,7C2C60;^'Obtain address from DHCP'
 006D3731    call        @UStrClr
 006D3736    mov         eax,7C2C64;^'Use following static settings'
 006D373B    call        @UStrClr
 006D3740    mov         eax,7C2C68;^'Panel IP addrress'
 006D3745    call        @UStrClr
 006D374A    mov         eax,7C2C6C;^'Subnet mask'
 006D374F    call        @UStrClr
 006D3754    mov         eax,7C2C70;^'Gateway address'
 006D3759    call        @UStrClr
 006D375E    mov         eax,7C2C74;^'1200'
 006D3763    mov         ecx,5
 006D3768    mov         edx,dword ptr ds:[4012B8];string
 006D376E    call        @FinalizeArray
 006D3773    mov         eax,7C2C88;^' Allow FireXpert Connection'
 006D3778    call        @UStrClr
 006D377D    mov         eax,7C2C8C;^' Allow Remote Configuration (Unsecure)'
 006D3782    call        @UStrClr
 006D3787    mov         eax,7C2C90;^'Identifications'
 006D378C    call        @UStrClr
 006D3791    mov         eax,7C2C94;^'Panel ID'
 006D3796    call        @UStrClr
 006D379B    mov         eax,7C2C98;^'System ID of this panel'
 006D37A0    call        @UStrClr
 006D37A5    mov         eax,7C2C9C;^'Detection Zones'
 006D37AA    call        @UStrClr
 006D37AF    mov         eax,7C2CA0;^'System ID of first zone'
 006D37B4    call        @UStrClr
 006D37B9    mov         eax,7C2CA4;^'Number Of Zones'
 006D37BE    call        @UStrClr
 006D37C3    mov         eax,7C2CA8;^'System ID of last zone'
 006D37C8    call        @UStrClr
 006D37CD    mov         eax,7C2CAC;^'Retain zone IDs of already defined addresses'
 006D37D2    call        @UStrClr
 006D37D7    mov         eax,7C2CB0;^'Zone IDs of already defined addresses can not be retained with the given zo...
 006D37DC    call        @UStrClr
 006D37E1    mov         eax,7C2CB4;^'Local / Shared control groups'
 006D37E6    call        @UStrClr
 006D37EB    mov         eax,7C2CB8;^'Last Local control group'
 006D37F0    call        @UStrClr
 006D37F5    mov         eax,7C2CBC;^'Panels visible by this panel'
 006D37FA    call        @UStrClr
 006D37FF    mov         eax,7C2CC0;^'Loop controllers'
 006D3804    call        @UStrClr
 006D3809    mov         eax,7C2CC4;^'Loop controller 1'
 006D380E    call        @UStrClr
 006D3813    mov         eax,7C2CC8;^'Loop controller 2'
 006D3818    call        @UStrClr
 006D381D    mov         eax,7C2CCC;^'Loop controller 3'
 006D3822    call        @UStrClr
 006D3827    mov         eax,7C2CD0;^'Loop controller 4'
 006D382C    call        @UStrClr
 006D3831    mov         eax,7C2CD4;^'Type: '
 006D3836    call        @UStrClr
 006D383B    mov         eax,901EA8;gvar_00901EA8:UnicodeString
 006D3840    mov         ecx,0A
 006D3845    mov         edx,dword ptr ds:[4012B8];string
 006D384B    call        @FinalizeArray
 006D3850    mov         eax,7C2CD8;^'First loop'
 006D3855    call        @UStrClr
 006D385A    mov         eax,7C2CDC;^'Number of loops'
 006D385F    call        @UStrClr
 006D3864    mov         eax,7C2CE0;^'Last loop'
 006D3869    call        @UStrClr
 006D386E    mov         eax,7C2CE4;^'Startup delay (m.) for loop %s'
 006D3873    call        @UStrClr
 006D3878    mov         eax,7C2CE8;^'Control outputs'
 006D387D    call        @UStrClr
 006D3882    mov         eax,7C2CEC;^'Fire door activation'
 006D3887    call        @UStrClr
 006D388C    mov         eax,7C2CF0;^'Fire Alarm'
 006D3891    call        @UStrClr
 006D3896    mov         eax,7C2CF4;^'Prealarm'
 006D389B    call        @UStrClr
 006D38A0    mov         eax,7C2CF8;^'Address Fault Warning'
 006D38A5    call        @UStrClr
 006D38AA    mov         eax,7C2CFC;^'Address Disablement'
 006D38AF    call        @UStrClr
 006D38B4    mov         eax,7C2D00;^'Detection Zone Disablement'
 006D38B9    call        @UStrClr
 006D38BE    mov         eax,7C2D04;^'Main Power Supply Off'
 006D38C3    call        @UStrClr
 006D38C8    mov         eax,7C2D08;^'Fire door functionality ...'
 006D38CD    call        @UStrClr
 006D38D2    mov         eax,7C2D0C;^'... when sensor input is disabled'
 006D38D7    call        @UStrClr
 006D38DC    mov         eax,7C2D10;^'No fire door control'
 006D38E1    call        @UStrClr
 006D38E6    mov         eax,7C2D14;^'Fire door controls activated'
 006D38EB    call        @UStrClr
 006D38F0    mov         eax,7C2D18;^'Technical alarm when disabled input gives alarm + Fire door controls activa...
 006D38F5    call        @UStrClr
 006D38FA    mov         eax,7C2D1C;^'Re-activation of silenced alarm devices ... '
 006D38FF    call        @UStrClr
 006D3904    mov         eax,7C2D20;^'by a new fire alarm'
 006D3909    call        @UStrClr
 006D390E    mov         eax,7C2D24;^'De-activation of alarm transmitters ...'
 006D3913    call        @UStrClr
 006D3918    mov         eax,7C2D28;^'at alarm silence'
 006D391D    call        @UStrClr
 006D3922    mov         eax,7C2D2C;^'Delayed outputs'
 006D3927    call        @UStrClr
 006D392C    mov         eax,7C2D30;^'Delay times for delayed alarm outputs'
 006D3931    call        @UStrClr
 006D3936    mov         eax,7C2D34;^'T1'
 006D393B    call        @UStrClr
 006D3940    mov         eax,7C2D38;^'T2'
 006D3945    call        @UStrClr
 006D394A    mov         eax,7C2D3C;^'Delayed alarm outputs'
 006D394F    call        @UStrClr
 006D3954    mov         eax,7C2D40;^'Fire Alarm Transmitter'
 006D3959    call        @UStrClr
 006D395E    mov         eax,7C2D44;^'Fire Control Outputs'
 006D3963    call        @UStrClr
 006D3968    mov         eax,7C2D48;^'Fire Alarm Devices ...'
 006D396D    call        @UStrClr
 006D3972    mov         eax,7C2D4C;^'... controlled by Ctrl A, Ctrl B, Ctrl B2 and as General'
 006D3977    call        @UStrClr
 006D397C    mov         eax,7C2D50;^'... controlled by Ctrl B, Ctrl B2 and as General'
 006D3981    call        @UStrClr
 006D3986    mov         eax,7C2D54;^'Delay termination for a delayed second alarm'
 006D398B    call        @UStrClr
 006D3990    mov         eax,901ED0;gvar_00901ED0:UnicodeString
 006D3995    mov         ecx,4
 006D399A    mov         edx,dword ptr ds:[4012B8];string
 006D39A0    call        @FinalizeArray
 006D39A5    mov         eax,7C2D58;^'Delay termination for a non-delayed second alarm'
 006D39AA    call        @UStrClr
 006D39AF    mov         eax,901EE0;gvar_00901EE0:UnicodeString
 006D39B4    mov         ecx,4
 006D39B9    mov         edx,dword ptr ds:[4012B8];string
 006D39BF    call        @FinalizeArray
 006D39C4    mov         eax,7C2D5C;^'Delay Indication'
 006D39C9    call        @UStrClr
 006D39CE    mov         eax,7C2D60;^'Indicate Delayed Alarm as disablement'
 006D39D3    call        @UStrClr
 006D39D8    mov         eax,7C2D64;^'Print and Log'
 006D39DD    call        @UStrClr
 006D39E2    mov         eax,7C2D68;^'Event groups to be recorded in the event register and to be printed in real...
 006D39E7    call        @UStrClr
 006D39EC    mov         eax,7C2D6C;^'Print'
 006D39F1    call        @UStrClr
 006D39F6    mov         eax,7C2D70;^'Record'
 006D39FB    call        @UStrClr
 006D3A00    mov         eax,7C2D74;^'Fire alarm, silence and reset events'
 006D3A05    call        @UStrClr
 006D3A0A    mov         eax,7C2D78;^'Prealarm, silence and reset events'
 006D3A0F    call        @UStrClr
 006D3A14    mov         eax,7C2D7C;^'Fault and Maintenance alarms, silence and reset events'
 006D3A19    call        @UStrClr
 006D3A1E    mov         eax,7C2D80;^'Disablement and re-enablement, test on/off events'
 006D3A23    call        @UStrClr
 006D3A28    mov         eax,7C2D84;^'Access level 1 -> 2 and 2 -> 1 changes'
 006D3A2D    call        @UStrClr
 006D3A32    mov         eax,7C2D88;^'Input / Output status changes'
 006D3A37    call        @UStrClr
 006D3A3C    mov         eax,7C2D8C;^'Startup events and event register clearing'
 006D3A41    call        @UStrClr
 006D3A46    mov         eax,7C2D90;^'Status updates (after communication has been down)'
 006D3A4B    call        @UStrClr
 006D3A50    mov         eax,7C2D94;^'Special alarms'
 006D3A55    call        @UStrClr
 006D3A5A    mov         eax,7C2D98;^'Single co-incidence alarm'
 006D3A5F    call        @UStrClr
 006D3A64    mov         eax,7C2D9C;^'Single co-incidence detector will not activate fire alarm after 3 minutes'
 006D3A69    call        @UStrClr
 006D3A6E    mov         eax,7C2DA0;^'(Prevents EN54 requirement of raising an alarm)'
 006D3A73    call        @UStrClr
 006D3A78    mov         eax,7C2DA4;^'Autoreset time in minutes 1..5
(default=5)'
 006D3A7D    call        @UStrClr
 006D3A82    mov         eax,7C2DA8;^'Second co-incidence alarm'
 006D3A87    call        @UStrClr
 006D3A8C    mov         eax,7C2DAC;^'Activate fire alarm by second co-incidence alarm ...'
 006D3A91    call        @UStrClr
 006D3A96    mov         eax,7C2DB0;^'... in the same zone'
 006D3A9B    mov         ecx,2
 006D3AA0    mov         edx,dword ptr ds:[4012B8];string
 006D3AA6    call        @FinalizeArray
 006D3AAB    mov         eax,7C2DB8;^'Alarm display'
 006D3AB0    call        @UStrClr
 006D3AB5    mov         eax,901EF0;gvar_00901EF0:UnicodeString
 006D3ABA    mov         ecx,3
 006D3ABF    mov         edx,dword ptr ds:[4012B8];string
 006D3AC5    call        @FinalizeArray
 006D3ACA    mov         eax,7C2DBC;^'Configured pre-alarm'
 006D3ACF    call        @UStrClr
 006D3AD4    mov         eax,7C2DC0;^'Indicate with 0.25 Hz blink rate
(2 s ON, 2 s OFF)'
 006D3AD9    call        @UStrClr
 006D3ADE    mov         eax,7C2DC4;^'Power supply'
 006D3AE3    call        @UStrClr
 006D3AE8    mov         eax,7C2DC8;^'Battery package monitoring'
 006D3AED    call        @UStrClr
 006D3AF2    mov         eax,7C2DCC;^'Monitor battery package 1'
 006D3AF7    call        @UStrClr
 006D3AFC    mov         eax,7C2DD0;^'Monitor battery package 2'
 006D3B01    call        @UStrClr
 006D3B06    mov         eax,7C2DD4;^'Monitor battery package 3'
 006D3B0B    call        @UStrClr
 006D3B10    mov         eax,7C2DD8;^'Monitor battery package 4'
 006D3B15    call        @UStrClr
 006D3B1A    mov         eax,7C2DDC;^'Main supply fault delay (normally 30 min.)'
 006D3B1F    call        @UStrClr
 006D3B24    mov         eax,7C2DE0;^'Use adjusted delay (0 .. 30 min.)'
 006D3B29    call        @UStrClr
 006D3B2E    mov         eax,7C2DE4;^'Minutes'
 006D3B33    call        @UStrClr
 006D3B38    mov         eax,7C2DE8;^'Miscellaneous'
 006D3B3D    call        @UStrClr
 006D3B42    mov         eax,7C2DEC;^'Panel language'
 006D3B47    call        @UStrClr
 006D3B4C    mov         eax,7C2DF0;^'Primary language'
 006D3B51    call        @UStrClr
 006D3B56    mov         eax,7C2DF4;^'Secondary language'
 006D3B5B    call        @UStrClr
 006D3B60    mov         eax,901EFC;gvar_00901EFC:UnicodeString
 006D3B65    mov         ecx,13
 006D3B6A    mov         edx,dword ptr ds:[4012B8];string
 006D3B70    call        @FinalizeArray
 006D3B75    mov         eax,7C2DF8;^'Access level codes'
 006D3B7A    call        @UStrClr
 006D3B7F    mov         eax,7C2DFC;^'Access level 3 code'
 006D3B84    call        @UStrClr
 006D3B89    mov         eax,7C2E00;^'Access level 4 code'
 006D3B8E    call        @UStrClr
 006D3B93    mov         eax,7C2E04;^'(reserved)'
 006D3B98    call        @UStrClr
 006D3B9D    mov         eax,7C2E08;^'Automatic summertime'
 006D3BA2    call        @UStrClr
 006D3BA7    mov         eax,7C2E0C;^'Use European summertime'
 006D3BAC    call        @UStrClr
 006D3BB1    mov         eax,7C2E10;^'Max. time of zonal disablement'
 006D3BB6    call        @UStrClr
 006D3BBB    mov         eax,7C2E14;^'Hours'
 006D3BC0    call        @UStrClr
 006D3BC5    mov         eax,7C2E18;^'Max. time of alarm device muting'
 006D3BCA    call        @UStrClr
 006D3BCF    mov         eax,7C2E1C;^'...by Voice Evacuation, in minutes'
 006D3BD4    call        @UStrClr
 006D3BD9    mov         eax,7C2E20;^'Day state Level 6 of Multicriteria detectors'
 006D3BDE    call        @UStrClr
 006D3BE3    mov         eax,7C2E24;^'Indicate as Smoke Detection Disabled'
 006D3BE8    call        @UStrClr
 006D3BED    mov         eax,7C2E28;^'Muted internal buzzer'
 006D3BF2    call        @UStrClr
 006D3BF7    mov         eax,7C2E2C;^'Indicate with Customer LED 1'
 006D3BFC    call        @UStrClr
 006D3C01    mov         eax,7C2E30;^'Maintenance interval (months) and message'
 006D3C06    call        @UStrClr
 006D3C0B    mov         eax,7C2E34;^'MC IO setup'
 006D3C10    call        @UStrClr
 006D3C15    mov         eax,7C2E38;^'MC IO'
 006D3C1A    call        @UStrClr
 006D3C1F    mov         eax,7C2E3C;^'Clean contact inputs'
 006D3C24    call        @UStrClr
 006D3C29    mov         eax,7C2E40;^'Clean contact outputs'
 006D3C2E    call        @UStrClr
 006D3C33    mov         eax,7C2E44;^'Monitored relay output'
 006D3C38    call        @UStrClr
 006D3C3D    mov         eax,7C2E48;^'IO controllers'
 006D3C42    call        @UStrClr
 006D3C47    mov         eax,7C2E4C;^'IO controller'
 006D3C4C    call        @UStrClr
 006D3C51    mov         eax,7C2E50;^'Type: '
 006D3C56    call        @UStrClr
 006D3C5B    mov         eax,7C2E54;^'Clean contact inputs'
 006D3C60    call        @UStrClr
 006D3C65    mov         eax,7C2E58;^'Clean contact outputs'
 006D3C6A    call        @UStrClr
 006D3C6F    mov         eax,7C2E5C;^'Open collector outputs'
 006D3C74    call        @UStrClr
 006D3C79    mov         eax,7C2E60;^'Monitored relay outputs'
 006D3C7E    call        @UStrClr
 006D3C83    mov         eax,7C2E64;^'Current data for this IO controller will be deleted if you change its type!...
 006D3C88    call        @UStrClr
 006D3C8D    mov         eax,7C2E68;^'Input'
 006D3C92    call        @UStrClr
 006D3C97    mov         eax,7C2E6C;^'Function'
 006D3C9C    call        @UStrClr
 006D3CA1    mov         eax,7C2E70;^'Contact'
 006D3CA6    call        @UStrClr
 006D3CAB    mov         eax,7C2E74;^'Control A'
 006D3CB0    call        @UStrClr
 006D3CB5    mov         eax,7C2E78;^'Control B'
 006D3CBA    call        @UStrClr
 006D3CBF    mov         eax,7C2E7C;^'Control B2'
 006D3CC4    call        @UStrClr
 006D3CC9    mov         eax,7C2E80;^'Description'
 006D3CCE    call        @UStrClr
 006D3CD3    mov         eax,7C2E84;^'Output'
 006D3CD8    call        @UStrClr
 006D3CDD    mov         eax,7C2E88;^'Function'
 006D3CE2    call        @UStrClr
 006D3CE7    mov         eax,7C2E8C;^'Control groups'
 006D3CEC    call        @UStrClr
 006D3CF1    mov         eax,7C2E90;^'Description'
 006D3CF6    call        @UStrClr
 006D3CFB    mov         eax,7C2E94;^'Output'
 006D3D00    call        @UStrClr
 006D3D05    mov         eax,7C2E98;^'Function'
 006D3D0A    call        @UStrClr
 006D3D0F    mov         eax,7C2E9C;^'Mode'
 006D3D14    call        @UStrClr
 006D3D19    mov         eax,7C2EA0;^'Monitored'
 006D3D1E    call        @UStrClr
 006D3D23    mov         eax,7C2EA4;^'Control groups'
 006D3D28    call        @UStrClr
 006D3D2D    mov         eax,7C2EA8;^'Description'
 006D3D32    call        @UStrClr
 006D3D37    xor         eax,eax
 006D3D39    pop         edx
 006D3D3A    pop         ecx
 006D3D3B    pop         ecx
 006D3D3C    mov         dword ptr fs:[eax],edx
 006D3D3F    push        6D3D4C
 006D3D44    ret
>006D3D45    jmp         @HandleFinally
>006D3D4A    jmp         006D3D44
 006D3D4C    pop         ebp
 006D3D4D    ret
*}
end.