//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit46;

interface

uses
  SysUtils, Classes;

    destructor Destroy();//0050E36C
    procedure AddItem(Item:string; AObject:TObject);//0050E3B4
    procedure sub_0050E43C(?:Integer);//0050E43C
    procedure sub_0050E45C(?:Integer; ?:TCheckListBoxDataWrapper);//0050E45C
    //procedure sub_0050E480(?:?);//0050E480
    //procedure sub_0050E498(?:?; ?:?);//0050E498
    //procedure sub_0050E4B4(?:?);//0050E4B4
    procedure sub_0050E4D4;//0050E4D4
    //procedure sub_0050E4FC(?:?);//0050E4FC
    procedure Clear;//0050E510
    procedure ClearSelection;//0050E51C
    procedure CopySelection(Destination:TCustomListControl);//0050E564
    procedure DeleteSelected;//0050E68C
    procedure sub_0050E6F8(?:TCustomListBox);//0050E6F8
    procedure SetColumns(Value:Integer);//0050E74C
    //function sub_0050E790:?;//0050E790
    procedure GetCount;//0050E7E8
    procedure sub_0050E80C;//0050E80C
    //procedure sub_0050E828(?:?);//0050E828
    procedure SetExtendedSelect(Value:Boolean);//0050E874
    procedure SetIntegralHeight(Value:Boolean);//0050E888
    procedure GetItemHeight;//0050E8AC
    procedure sub_0050E8E8(?:TCustomListBox; ?:Integer);//0050E8E8
    procedure SetItemHeight(Value:Integer);//0050E8F8
    procedure SetTabWidth(Value:Integer);//0050E910
    procedure SetMultiSelect(Value:Boolean);//0050E92C
    function GetSelected(Index:Integer):Boolean;//0050E940
    procedure SetSelected(Index:Integer; Value:Boolean);//0050E990
    procedure SetSorted(Value:Boolean);//0050EA40
    procedure SetStyle(Value:TListBoxStyle);//0050EA64
    //function sub_0050EAA0(?:TCustomListBox):?;//0050EAA0
    //procedure sub_0050EABC(?:?);//0050EABC
    //procedure sub_0050EB70(?:?);//0050EB70
    procedure SetBorderStyle(Value:TBorderStyle);//0050EC14
    procedure sub_0050EC28(?:TCustomListBox; ?:Integer);//0050EC28
    procedure SetItems(Value:TStrings);//0050EC54
    function ItemAtPos(Pos:TPoint; Existing:Boolean):Integer;//0050EC9C
    //procedure ItemRect(Index:Integer; ?:?);//0050ED14
    procedure CreateParams(var Params:TCreateParams);//0050ED80
    procedure CreateWnd;//0050EEAC
    procedure sub_0050F014;//0050F014
    //procedure sub_0050F104(?:?);//0050F104
    //procedure WMEraseBkgnd(?:?);//0050F2D8
    //procedure WMLButtonDown(?:?);//0050F2F0
    //procedure sub_0050F448(?:?);//0050F448
    //procedure sub_0050F48C(?:?);//0050F48C
    //procedure WMPaint(?:?);//0050F698
    //procedure WMSize(?:?);//0050F6C8
    procedure sub_004E77C8;//0050F6DC
    //procedure sub_0050F748(?:?; ?:?; ?:?);//0050F748
    //procedure sub_0050F86C(?:?);//0050F86C
    //function sub_0050F88C:?;//0050F88C
    //procedure sub_0050F8A8(?:?);//0050F8A8
    //procedure sub_0050FA14(?:?);//0050FA14
    //procedure CMCtl3DChanged(?:?);//0050FA50
    //procedure CMExit(?:?);//0050FA7C
    procedure SelectAll;//0050FB54
    //procedure sub_004E8C70(?:?; ?:?; ?:?; ?:?);//0050FB8C
    //procedure sub_004EE9E0(?:?; ?:?);//0050FC1C
    //procedure sub_0050FCB8(?:?);//0050FCB8
    //procedure sub_004EEC30(?:?);//0050FDA0
    procedure sub_0051007C;//0051007C
    procedure sub_0051008C(?:TCustomListBox; ?:Integer);//0051008C
    //procedure sub_00510170(?:TCustomListBox; ?:?);//00510170
    //function sub_00510190(?:TCustomListBox; ?:?):?;//00510190
    //function sub_005101BC(?:TCustomListBox; ?:string):?;//005101BC
    //function GetScrollWidth:?;//005101E0
    procedure SetScrollWidth(Value:Integer);//005101FC
    constructor Create(AOwner:TComponent);//00510228

implementation

//0050E36C
destructor TCustomListBox.Destroy();
begin
{*
 0050E36C    push        ebx
 0050E36D    push        esi
 0050E36E    call        @BeforeDestruction
 0050E373    mov         ebx,edx
 0050E375    mov         esi,eax
 0050E377    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050E37D    call        TObject.Free
 0050E382    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050E388    call        TObject.Free
 0050E38D    mov         eax,dword ptr [esi+2C8];TCustomListBox.FSaveItems:TStringList
 0050E393    call        TObject.Free
 0050E398    mov         dl,0FC
 0050E39A    and         dl,bl
 0050E39C    mov         eax,esi
 0050E39E    call        TWinControl.Destroy
 0050E3A3    test        bl,bl
>0050E3A5    jle         0050E3AE
 0050E3A7    mov         eax,esi
 0050E3A9    call        @ClassDestroy
 0050E3AE    pop         esi
 0050E3AF    pop         ebx
 0050E3B0    ret
*}
end;

//0050E3B4
procedure TCustomListBox.AddItem(Item:string; AObject:TObject);
begin
{*
 0050E3B4    push        ebp
 0050E3B5    mov         ebp,esp
 0050E3B7    add         esp,0FFFFFFF4
 0050E3BA    push        ebx
 0050E3BB    push        esi
 0050E3BC    push        edi
 0050E3BD    xor         ebx,ebx
 0050E3BF    mov         dword ptr [ebp-8],ebx
 0050E3C2    mov         dword ptr [ebp-0C],ecx
 0050E3C5    mov         dword ptr [ebp-4],edx
 0050E3C8    mov         ebx,eax
 0050E3CA    mov         eax,dword ptr [ebp-4]
 0050E3CD    call        @UStrAddRef
 0050E3D2    xor         eax,eax
 0050E3D4    push        ebp
 0050E3D5    push        50E42B
 0050E3DA    push        dword ptr fs:[eax]
 0050E3DD    mov         dword ptr fs:[eax],esp
 0050E3E0    mov         eax,dword ptr [ebp-4]
 0050E3E3    call        @UStrToPWChar
 0050E3E8    mov         edi,eax
 0050E3EA    mov         eax,edi
 0050E3EC    call        @PWCharLen
 0050E3F1    mov         esi,eax
 0050E3F3    mov         edx,edi
 0050E3F5    lea         eax,[ebp-8]
 0050E3F8    mov         ecx,esi
 0050E3FA    call        @UStrFromPWCharLen
 0050E3FF    mov         ecx,dword ptr [ebp-0C]
 0050E402    mov         edx,dword ptr [ebp-8]
 0050E405    mov         eax,dword ptr [ebx+2A0];TCustomListBox.FItems:TStrings
 0050E40B    mov         ebx,dword ptr [eax]
 0050E40D    call        dword ptr [ebx+40];TStrings.AddObject
 0050E410    xor         eax,eax
 0050E412    pop         edx
 0050E413    pop         ecx
 0050E414    pop         ecx
 0050E415    mov         dword ptr fs:[eax],edx
 0050E418    push        50E432
 0050E41D    lea         eax,[ebp-8]
 0050E420    mov         edx,2
 0050E425    call        @UStrArrayClr
 0050E42A    ret
>0050E42B    jmp         @HandleFinally
>0050E430    jmp         0050E41D
 0050E432    pop         edi
 0050E433    pop         esi
 0050E434    pop         ebx
 0050E435    mov         esp,ebp
 0050E437    pop         ebp
 0050E438    ret
*}
end;

//0050E43C
procedure TCustomListBox.sub_0050E43C(?:Integer);
begin
{*
 0050E43C    push        ebx
 0050E43D    push        esi
 0050E43E    mov         esi,edx
 0050E440    mov         ebx,eax
 0050E442    push        0
 0050E444    push        esi
 0050E445    push        199
 0050E44A    mov         eax,ebx
 0050E44C    call        TWinControl.GetHandle
 0050E451    push        eax
 0050E452    call        user32.SendMessageW
 0050E457    pop         esi
 0050E458    pop         ebx
 0050E459    ret
*}
end;

//0050E45C
procedure TCustomListBox.sub_0050E45C(?:Integer; ?:TCheckListBoxDataWrapper);
begin
{*
 0050E45C    push        ebx
 0050E45D    push        esi
 0050E45E    push        edi
 0050E45F    mov         edi,ecx
 0050E461    mov         esi,edx
 0050E463    mov         ebx,eax
 0050E465    push        edi
 0050E466    push        esi
 0050E467    push        19A
 0050E46C    mov         eax,ebx
 0050E46E    call        TWinControl.GetHandle
 0050E473    push        eax
 0050E474    call        user32.SendMessageW
 0050E479    pop         edi
 0050E47A    pop         esi
 0050E47B    pop         ebx
 0050E47C    ret
*}
end;

//0050E480
{*procedure TCustomListBox.sub_0050E480(?:?);
begin
 0050E480    push        esi
 0050E481    push        edi
 0050E482    mov         edi,edx
 0050E484    mov         esi,eax
 0050E486    mov         edx,edi
 0050E488    mov         eax,esi
 0050E48A    mov         si,0FFAB
 0050E48E    call        @CallDynaInst;TCustomListBox.sub_0050E43C
 0050E493    pop         edi
 0050E494    pop         esi
 0050E495    ret
end;*}

//0050E498
{*procedure TCustomListBox.sub_0050E498(?:?; ?:?);
begin
 0050E498    push        esi
 0050E499    push        edi
 0050E49A    push        ebp
 0050E49B    mov         ebp,ecx
 0050E49D    mov         edi,edx
 0050E49F    mov         esi,eax
 0050E4A1    mov         ecx,ebp
 0050E4A3    mov         edx,edi
 0050E4A5    mov         eax,esi
 0050E4A7    mov         si,0FFAA
 0050E4AB    call        @CallDynaInst;TCustomListBox.sub_0050E45C
 0050E4B0    pop         ebp
 0050E4B1    pop         edi
 0050E4B2    pop         esi
 0050E4B3    ret
end;*}

//0050E4B4
{*procedure TCustomListBox.sub_0050E4B4(?:?);
begin
 0050E4B4    push        ebx
 0050E4B5    push        esi
 0050E4B6    mov         esi,edx
 0050E4B8    mov         ebx,eax
 0050E4BA    push        0
 0050E4BC    push        esi
 0050E4BD    push        182
 0050E4C2    mov         eax,ebx
 0050E4C4    call        TWinControl.GetHandle
 0050E4C9    push        eax
 0050E4CA    call        user32.SendMessageW
 0050E4CF    pop         esi
 0050E4D0    pop         ebx
 0050E4D1    ret
end;*}

//0050E4D4
procedure TCustomListBox.sub_0050E4D4;
begin
{*
 0050E4D4    push        ebx
 0050E4D5    mov         ebx,eax
 0050E4D7    movzx       eax,byte ptr [ebx+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050E4DE    add         al,0FD
 0050E4E0    sub         al,2
>0050E4E2    jb          0050E4FA
 0050E4E4    push        0
 0050E4E6    push        0
 0050E4E8    push        184
 0050E4ED    mov         eax,ebx
 0050E4EF    call        TWinControl.GetHandle
 0050E4F4    push        eax
 0050E4F5    call        user32.SendMessageW
 0050E4FA    pop         ebx
 0050E4FB    ret
*}
end;

//0050E4FC
{*procedure sub_0050E4FC(?:?);
begin
 0050E4FC    push        esi
 0050E4FD    mov         esi,eax
 0050E4FF    mov         eax,edx
 0050E501    mov         edx,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050E507    mov         ecx,dword ptr [eax]
 0050E509    call        dword ptr [ecx+8]
 0050E50C    pop         esi
 0050E50D    ret
end;*}

//0050E510
procedure TCustomListBox.Clear;
begin
{*
 0050E510    mov         eax,dword ptr [eax+2A0];TCustomListBox.FItems:TStrings
 0050E516    mov         edx,dword ptr [eax]
 0050E518    call        dword ptr [edx+48];TStrings.Clear
 0050E51B    ret
*}
end;

//0050E51C
procedure TCustomListBox.ClearSelection;
begin
{*
 0050E51C    push        ebx
 0050E51D    push        esi
 0050E51E    push        edi
 0050E51F    mov         esi,eax
 0050E521    cmp         byte ptr [esi+290],0;TCustomListBox.FMultiSelect:Boolean
>0050E528    je          0050E550
 0050E52A    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050E530    mov         edx,dword ptr [eax]
 0050E532    call        dword ptr [edx+14];TStrings.GetCount
 0050E535    mov         ebx,eax
 0050E537    dec         ebx
 0050E538    test        ebx,ebx
>0050E53A    jl          0050E55D
 0050E53C    inc         ebx
 0050E53D    xor         edi,edi
 0050E53F    xor         ecx,ecx
 0050E541    mov         edx,edi
 0050E543    mov         eax,esi
 0050E545    call        TCustomListBox.SetSelected
 0050E54A    inc         edi
 0050E54B    dec         ebx
>0050E54C    jne         0050E53F
>0050E54E    jmp         0050E55D
 0050E550    or          edx,0FFFFFFFF
 0050E553    mov         eax,esi
 0050E555    mov         ecx,dword ptr [eax]
 0050E557    call        dword ptr [ecx+10C];TCustomListBox.sub_0050E828
 0050E55D    pop         edi
 0050E55E    pop         esi
 0050E55F    pop         ebx
 0050E560    ret
*}
end;

//0050E564
procedure TCustomListBox.CopySelection(Destination:TCustomListControl);
begin
{*
 0050E564    push        ebp
 0050E565    mov         ebp,esp
 0050E567    xor         ecx,ecx
 0050E569    push        ecx
 0050E56A    push        ecx
 0050E56B    push        ecx
 0050E56C    push        ecx
 0050E56D    push        ecx
 0050E56E    push        ecx
 0050E56F    push        ebx
 0050E570    push        esi
 0050E571    push        edi
 0050E572    mov         dword ptr [ebp-4],edx
 0050E575    mov         ebx,eax
 0050E577    xor         eax,eax
 0050E579    push        ebp
 0050E57A    push        50E67B
 0050E57F    push        dword ptr fs:[eax]
 0050E582    mov         dword ptr fs:[eax],esp
 0050E585    cmp         byte ptr [ebx+290],0;TCustomListBox.FMultiSelect:Boolean
>0050E58C    je          0050E5FE
 0050E58E    mov         eax,dword ptr [ebx+2A0];TCustomListBox.FItems:TStrings
 0050E594    mov         edx,dword ptr [eax]
 0050E596    call        dword ptr [edx+14];TStrings.GetCount
 0050E599    dec         eax
 0050E59A    test        eax,eax
>0050E59C    jl          0050E660
 0050E5A2    inc         eax
 0050E5A3    mov         dword ptr [ebp-8],eax
 0050E5A6    xor         esi,esi
 0050E5A8    mov         edx,esi
 0050E5AA    mov         eax,ebx
 0050E5AC    call        TCustomListBox.GetSelected
 0050E5B1    test        al,al
>0050E5B3    je          0050E5F6
 0050E5B5    lea         ecx,[ebp-10]
 0050E5B8    mov         edx,esi
 0050E5BA    mov         eax,dword ptr [ebx+2A0];TCustomListBox.FItems:TStrings
 0050E5C0    mov         edi,dword ptr [eax]
 0050E5C2    call        dword ptr [edi+0C];TStrings.Get
 0050E5C5    mov         eax,dword ptr [ebp-10]
 0050E5C8    call        @UStrToPWChar
 0050E5CD    mov         edx,eax
 0050E5CF    lea         eax,[ebp-0C]
 0050E5D2    call        @UStrFromPWChar
 0050E5D7    mov         eax,dword ptr [ebp-0C]
 0050E5DA    push        eax
 0050E5DB    mov         edx,esi
 0050E5DD    mov         eax,dword ptr [ebx+2A0];TCustomListBox.FItems:TStrings
 0050E5E3    mov         ecx,dword ptr [eax]
 0050E5E5    call        dword ptr [ecx+18];TStrings.GetObject
 0050E5E8    mov         ecx,eax
 0050E5EA    mov         eax,dword ptr [ebp-4]
 0050E5ED    pop         edx
 0050E5EE    mov         edi,dword ptr [eax]
 0050E5F0    call        dword ptr [edi+110];TCustomListControl.AddItem
 0050E5F6    inc         esi
 0050E5F7    dec         dword ptr [ebp-8]
>0050E5FA    jne         0050E5A8
>0050E5FC    jmp         0050E660
 0050E5FE    mov         eax,ebx
 0050E600    mov         edx,dword ptr [eax]
 0050E602    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050E608    inc         eax
>0050E609    je          0050E660
 0050E60B    mov         eax,ebx
 0050E60D    mov         edx,dword ptr [eax]
 0050E60F    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050E615    mov         edx,eax
 0050E617    lea         ecx,[ebp-18]
 0050E61A    mov         eax,dword ptr [ebx+2A0];TCustomListBox.FItems:TStrings
 0050E620    mov         esi,dword ptr [eax]
 0050E622    call        dword ptr [esi+0C];TStrings.Get
 0050E625    mov         eax,dword ptr [ebp-18]
 0050E628    call        @UStrToPWChar
 0050E62D    mov         edx,eax
 0050E62F    lea         eax,[ebp-14]
 0050E632    call        @UStrFromPWChar
 0050E637    mov         eax,dword ptr [ebp-14]
 0050E63A    push        eax
 0050E63B    mov         eax,ebx
 0050E63D    mov         edx,dword ptr [eax]
 0050E63F    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050E645    mov         edx,eax
 0050E647    mov         eax,dword ptr [ebx+2A0];TCustomListBox.FItems:TStrings
 0050E64D    mov         ecx,dword ptr [eax]
 0050E64F    call        dword ptr [ecx+18];TStrings.GetObject
 0050E652    mov         ecx,eax
 0050E654    mov         eax,dword ptr [ebp-4]
 0050E657    pop         edx
 0050E658    mov         ebx,dword ptr [eax]
 0050E65A    call        dword ptr [ebx+110];TCustomListControl.AddItem
 0050E660    xor         eax,eax
 0050E662    pop         edx
 0050E663    pop         ecx
 0050E664    pop         ecx
 0050E665    mov         dword ptr fs:[eax],edx
 0050E668    push        50E682
 0050E66D    lea         eax,[ebp-18]
 0050E670    mov         edx,4
 0050E675    call        @UStrArrayClr
 0050E67A    ret
>0050E67B    jmp         @HandleFinally
>0050E680    jmp         0050E66D
 0050E682    pop         edi
 0050E683    pop         esi
 0050E684    pop         ebx
 0050E685    mov         esp,ebp
 0050E687    pop         ebp
 0050E688    ret
*}
end;

//0050E68C
procedure TCustomListBox.DeleteSelected;
begin
{*
 0050E68C    push        ebx
 0050E68D    push        esi
 0050E68E    mov         esi,eax
 0050E690    cmp         byte ptr [esi+290],0;TCustomListBox.FMultiSelect:Boolean
>0050E697    je          0050E6CF
 0050E699    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050E69F    mov         edx,dword ptr [eax]
 0050E6A1    call        dword ptr [edx+14];TStrings.GetCount
 0050E6A4    mov         ebx,eax
 0050E6A6    dec         ebx
 0050E6A7    cmp         ebx,0
>0050E6AA    jl          0050E6F3
 0050E6AC    mov         edx,ebx
 0050E6AE    mov         eax,esi
 0050E6B0    call        TCustomListBox.GetSelected
 0050E6B5    test        al,al
>0050E6B7    je          0050E6C6
 0050E6B9    mov         edx,ebx
 0050E6BB    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050E6C1    mov         ecx,dword ptr [eax]
 0050E6C3    call        dword ptr [ecx+4C];TStrings.Delete
 0050E6C6    dec         ebx
 0050E6C7    cmp         ebx,0FFFFFFFF
>0050E6CA    jne         0050E6AC
 0050E6CC    pop         esi
 0050E6CD    pop         ebx
 0050E6CE    ret
 0050E6CF    mov         eax,esi
 0050E6D1    mov         edx,dword ptr [eax]
 0050E6D3    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050E6D9    inc         eax
>0050E6DA    je          0050E6F3
 0050E6DC    mov         eax,esi
 0050E6DE    mov         edx,dword ptr [eax]
 0050E6E0    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050E6E6    mov         edx,eax
 0050E6E8    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050E6EE    mov         ecx,dword ptr [eax]
 0050E6F0    call        dword ptr [ecx+4C];TStrings.Delete
 0050E6F3    pop         esi
 0050E6F4    pop         ebx
 0050E6F5    ret
*}
end;

//0050E6F8
procedure sub_0050E6F8(?:TCustomListBox);
begin
{*
 0050E6F8    push        ebx
 0050E6F9    push        esi
 0050E6FA    push        ecx
 0050E6FB    mov         ebx,eax
 0050E6FD    cmp         dword ptr [ebx+2B4],0
>0050E704    jle         0050E747
 0050E706    cmp         dword ptr [ebx+58],0
>0050E70A    jle         0050E747
 0050E70C    mov         eax,ebx
 0050E70E    call        TControl.GetClientWidth
 0050E713    mov         dword ptr [esp],eax
 0050E716    fild        dword ptr [esp]
 0050E719    fild        dword ptr [ebx+2B4]
 0050E71F    fdivp       st(1),st
 0050E721    call        @TRUNC
 0050E726    mov         esi,eax
 0050E728    cmp         esi,1
>0050E72B    jge         0050E732
 0050E72D    mov         esi,1
 0050E732    push        0
 0050E734    push        esi
 0050E735    push        195
 0050E73A    mov         eax,ebx
 0050E73C    call        TWinControl.GetHandle
 0050E741    push        eax
 0050E742    call        user32.SendMessageW
 0050E747    pop         edx
 0050E748    pop         esi
 0050E749    pop         ebx
 0050E74A    ret
*}
end;

//0050E74C
procedure TListBox.SetColumns(Value:Integer);
begin
{*
 0050E74C    push        ebx
 0050E74D    mov         ebx,eax
 0050E74F    cmp         edx,dword ptr [ebx+2B4];TListBox.FColumns:Integer
>0050E755    je          0050E78B
 0050E757    cmp         dword ptr [ebx+2B4],0;TListBox.FColumns:Integer
>0050E75E    je          0050E764
 0050E760    test        edx,edx
>0050E762    jne         0050E773
 0050E764    mov         dword ptr [ebx+2B4],edx;TListBox.FColumns:Integer
 0050E76A    mov         eax,ebx
 0050E76C    call        TWinControl.RecreateWnd
>0050E771    jmp         0050E78B
 0050E773    mov         dword ptr [ebx+2B4],edx;TListBox.FColumns:Integer
 0050E779    mov         eax,ebx
 0050E77B    call        TWinControl.HandleAllocated
 0050E780    test        al,al
>0050E782    je          0050E78B
 0050E784    mov         eax,ebx
 0050E786    call        0050E6F8
 0050E78B    pop         ebx
 0050E78C    ret
*}
end;

//0050E790
{*function sub_0050E790:?;
begin
 0050E790    push        ebx
 0050E791    push        esi
 0050E792    mov         ebx,eax
 0050E794    cmp         byte ptr [ebx+290],0;TCustomListBox.FMultiSelect:Boolean
>0050E79B    jne         0050E7B7
 0050E79D    push        0
 0050E79F    push        0
 0050E7A1    push        188
 0050E7A6    mov         eax,ebx
 0050E7A8    call        TWinControl.GetHandle
 0050E7AD    push        eax
 0050E7AE    call        user32.SendMessageW
 0050E7B3    mov         esi,eax
>0050E7B5    jmp         0050E7E0
 0050E7B7    push        0
 0050E7B9    push        0
 0050E7BB    push        19F
 0050E7C0    mov         eax,ebx
 0050E7C2    call        TWinControl.GetHandle
 0050E7C7    push        eax
 0050E7C8    call        user32.SendMessageW
 0050E7CD    mov         esi,eax
 0050E7CF    mov         eax,ebx
 0050E7D1    mov         edx,dword ptr [eax]
 0050E7D3    call        dword ptr [edx+124];TCustomListBox.GetCount
 0050E7D9    cmp         esi,eax
>0050E7DB    jl          0050E7E0
 0050E7DD    or          esi,0FFFFFFFF
 0050E7E0    mov         eax,esi
 0050E7E2    pop         esi
 0050E7E3    pop         ebx
 0050E7E4    ret
end;*}

//0050E7E8
procedure TCustomListBox.GetCount;
begin
{*
 0050E7E8    movzx       edx,byte ptr [eax+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050E7EF    add         dl,0FD
 0050E7F2    sub         dl,2
>0050E7F5    jae         0050E7FE
 0050E7F7    mov         eax,dword ptr [eax+29C];TCustomListBox.FCount:Integer
 0050E7FD    ret
 0050E7FE    mov         eax,dword ptr [eax+2A0];TCustomListBox.FItems:TStrings
 0050E804    mov         edx,dword ptr [eax]
 0050E806    call        dword ptr [edx+14];TStrings.GetCount
 0050E809    ret
*}
end;

//0050E80C
procedure sub_0050E80C;
begin
{*
 0050E80C    push        ebx
 0050E80D    mov         ebx,eax
 0050E80F    push        0
 0050E811    push        0
 0050E813    push        190
 0050E818    mov         eax,ebx
 0050E81A    call        TWinControl.GetHandle
 0050E81F    push        eax
 0050E820    call        user32.SendMessageW
 0050E825    pop         ebx
 0050E826    ret
*}
end;

//0050E828
{*procedure sub_0050E828(?:?);
begin
 0050E828    push        ebx
 0050E829    push        esi
 0050E82A    mov         esi,edx
 0050E82C    mov         ebx,eax
 0050E82E    mov         eax,ebx
 0050E830    mov         edx,dword ptr [eax]
 0050E832    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050E838    cmp         esi,eax
>0050E83A    je          0050E871
 0050E83C    cmp         byte ptr [ebx+290],0;TCustomListBox.FMultiSelect:Boolean
>0050E843    je          0050E85C
 0050E845    push        0
 0050E847    push        esi
 0050E848    push        19E
 0050E84D    mov         eax,ebx
 0050E84F    call        TWinControl.GetHandle
 0050E854    push        eax
 0050E855    call        user32.SendMessageW
>0050E85A    jmp         0050E871
 0050E85C    push        0
 0050E85E    push        esi
 0050E85F    push        186
 0050E864    mov         eax,ebx
 0050E866    call        TWinControl.GetHandle
 0050E86B    push        eax
 0050E86C    call        user32.SendMessageW
 0050E871    pop         esi
 0050E872    pop         ebx
 0050E873    ret
end;*}

//0050E874
procedure TListBox.SetExtendedSelect(Value:Boolean);
begin
{*
 0050E874    cmp         dl,byte ptr [eax+2C3];TListBox.FExtendedSelect:Boolean
>0050E87A    je          0050E887
 0050E87C    mov         byte ptr [eax+2C3],dl;TListBox.FExtendedSelect:Boolean
 0050E882    call        TWinControl.RecreateWnd
 0050E887    ret
*}
end;

//0050E888
procedure TListBox.SetIntegralHeight(Value:Boolean);
begin
{*
 0050E888    push        esi
 0050E889    mov         esi,eax
 0050E88B    cmp         dl,byte ptr [esi+2C1];TListBox.FIntegralHeight:Boolean
>0050E891    je          0050E8A7
 0050E893    mov         byte ptr [esi+2C1],dl;TListBox.FIntegralHeight:Boolean
 0050E899    mov         eax,esi
 0050E89B    call        TWinControl.RecreateWnd
 0050E8A0    mov         eax,esi
 0050E8A2    mov         edx,dword ptr [eax]
 0050E8A4    call        dword ptr [edx+78];TListBox.sub_004EE248
 0050E8A7    pop         esi
 0050E8A8    ret
*}
end;

//0050E8AC
procedure TListBox.GetItemHeight;
begin
{*
 0050E8AC    push        ebx
 0050E8AD    push        esi
 0050E8AE    add         esp,0FFFFFFF0
 0050E8B1    mov         ebx,eax
 0050E8B3    mov         esi,dword ptr [ebx+2B8];TListBox.FItemHeight:Integer
 0050E8B9    mov         eax,ebx
 0050E8BB    call        TWinControl.HandleAllocated
 0050E8C0    test        al,al
>0050E8C2    je          0050E8E0
 0050E8C4    cmp         byte ptr [ebx+2C0],0;TListBox.FStyle:TListBoxStyle
>0050E8CB    jne         0050E8E0
 0050E8CD    mov         ecx,esp
 0050E8CF    xor         edx,edx
 0050E8D1    mov         eax,ebx
 0050E8D3    call        0050E8E8
 0050E8D8    mov         esi,dword ptr [esp+0C]
 0050E8DC    sub         esi,dword ptr [esp+4]
 0050E8E0    mov         eax,esi
 0050E8E2    add         esp,10
 0050E8E5    pop         esi
 0050E8E6    pop         ebx
 0050E8E7    ret
*}
end;

//0050E8E8
procedure sub_0050E8E8(?:TCustomListBox; ?:Integer);
begin
{*
 0050E8E8    push        ecx
 0050E8E9    mov         ecx,198
 0050E8EE    xchg        ecx,edx
 0050E8F0    call        TControl.Perform
 0050E8F5    ret
*}
end;

//0050E8F8
procedure TListBox.SetItemHeight(Value:Integer);
begin
{*
 0050E8F8    cmp         edx,dword ptr [eax+2B8];TListBox.FItemHeight:Integer
>0050E8FE    je          0050E90F
 0050E900    test        edx,edx
>0050E902    jle         0050E90F
 0050E904    mov         dword ptr [eax+2B8],edx;TListBox.FItemHeight:Integer
 0050E90A    call        TWinControl.RecreateWnd
 0050E90F    ret
*}
end;

//0050E910
procedure TListBox.SetTabWidth(Value:Integer);
begin
{*
 0050E910    test        edx,edx
>0050E912    jge         0050E916
 0050E914    xor         edx,edx
 0050E916    cmp         edx,dword ptr [eax+2C4];TListBox.FTabWidth:Integer
>0050E91C    je          0050E929
 0050E91E    mov         dword ptr [eax+2C4],edx;TListBox.FTabWidth:Integer
 0050E924    call        TWinControl.RecreateWnd
 0050E929    ret
*}
end;

//0050E92C
procedure TListBox.SetMultiSelect(Value:Boolean);
begin
{*
 0050E92C    cmp         dl,byte ptr [eax+290];TListBox.FMultiSelect:Boolean
>0050E932    je          0050E93F
 0050E934    mov         byte ptr [eax+290],dl;TListBox.FMultiSelect:Boolean
 0050E93A    call        TWinControl.RecreateWnd
 0050E93F    ret
*}
end;

//0050E940
function TCustomListBox.GetSelected(Index:Integer):Boolean;
begin
{*
 0050E940    push        ebx
 0050E941    push        esi
 0050E942    add         esp,0FFFFFFF8
 0050E945    mov         esi,edx
 0050E947    mov         ebx,eax
 0050E949    push        0
 0050E94B    push        esi
 0050E94C    push        187
 0050E951    mov         eax,ebx
 0050E953    call        TWinControl.GetHandle
 0050E958    push        eax
 0050E959    call        user32.SendMessageW
 0050E95E    cmp         eax,0FFFFFFFF
>0050E961    jne         0050E985
 0050E963    mov         dword ptr [esp],esi
 0050E966    mov         byte ptr [esp+4],0
 0050E96B    push        esp
 0050E96C    push        0
 0050E96E    mov         ecx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0050E974    mov         dl,1
 0050E976    mov         eax,[004180BC];EListError
 0050E97B    call        Exception.CreateResFmt;EListError.Create
 0050E980    call        @RaiseExcept
 0050E985    cmp         eax,1
 0050E988    sbb         eax,eax
 0050E98A    inc         eax
 0050E98B    pop         ecx
 0050E98C    pop         edx
 0050E98D    pop         esi
 0050E98E    pop         ebx
 0050E98F    ret
*}
end;

//0050E990
procedure TCustomListBox.SetSelected(Index:Integer; Value:Boolean);
begin
{*
 0050E990    push        ebx
 0050E991    push        esi
 0050E992    push        edi
 0050E993    add         esp,0FFFFFFF8
 0050E996    mov         ebx,ecx
 0050E998    mov         esi,edx
 0050E99A    mov         edi,eax
 0050E99C    cmp         byte ptr [edi+290],0;TCustomListBox.FMultiSelect:Boolean
>0050E9A3    je          0050E9E3
 0050E9A5    push        esi
 0050E9A6    movzx       eax,bl
 0050E9A9    push        eax
 0050E9AA    push        185
 0050E9AF    mov         eax,edi
 0050E9B1    call        TWinControl.GetHandle
 0050E9B6    push        eax
 0050E9B7    call        user32.SendMessageW
 0050E9BC    inc         eax
>0050E9BD    jne         0050EA39
 0050E9BF    mov         dword ptr [esp],esi
 0050E9C2    mov         byte ptr [esp+4],0
 0050E9C7    push        esp
 0050E9C8    push        0
 0050E9CA    mov         ecx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0050E9D0    mov         dl,1
 0050E9D2    mov         eax,[004180BC];EListError
 0050E9D7    call        Exception.CreateResFmt;EListError.Create
 0050E9DC    call        @RaiseExcept
>0050E9E1    jmp         0050EA39
 0050E9E3    test        bl,bl
>0050E9E5    je          0050EA23
 0050E9E7    push        0
 0050E9E9    push        esi
 0050E9EA    push        186
 0050E9EF    mov         eax,edi
 0050E9F1    call        TWinControl.GetHandle
 0050E9F6    push        eax
 0050E9F7    call        user32.SendMessageW
 0050E9FC    inc         eax
>0050E9FD    jne         0050EA39
 0050E9FF    mov         dword ptr [esp],esi
 0050EA02    mov         byte ptr [esp+4],0
 0050EA07    push        esp
 0050EA08    push        0
 0050EA0A    mov         ecx,dword ptr ds:[7C4BB4];^SResString135:TResStringRec
 0050EA10    mov         dl,1
 0050EA12    mov         eax,[004180BC];EListError
 0050EA17    call        Exception.CreateResFmt;EListError.Create
 0050EA1C    call        @RaiseExcept
>0050EA21    jmp         0050EA39
 0050EA23    push        0
 0050EA25    push        0FF
 0050EA27    push        186
 0050EA2C    mov         eax,edi
 0050EA2E    call        TWinControl.GetHandle
 0050EA33    push        eax
 0050EA34    call        user32.SendMessageW
 0050EA39    pop         ecx
 0050EA3A    pop         edx
 0050EA3B    pop         edi
 0050EA3C    pop         esi
 0050EA3D    pop         ebx
 0050EA3E    ret
*}
end;

//0050EA40
procedure TListBox.SetSorted(Value:Boolean);
begin
{*
 0050EA40    movzx       ecx,byte ptr [eax+2C0];TListBox.FStyle:TListBoxStyle
 0050EA47    add         cl,0FD
 0050EA4A    sub         cl,2
>0050EA4D    jb          0050EA62
 0050EA4F    cmp         dl,byte ptr [eax+2C2];TListBox.FSorted:Boolean
>0050EA55    je          0050EA62
 0050EA57    mov         byte ptr [eax+2C2],dl;TListBox.FSorted:Boolean
 0050EA5D    call        TWinControl.RecreateWnd
 0050EA62    ret
*}
end;

//0050EA64
procedure TListBox.SetStyle(Value:TListBoxStyle);
begin
{*
 0050EA64    push        ebx
 0050EA65    push        esi
 0050EA66    mov         ebx,edx
 0050EA68    mov         esi,eax
 0050EA6A    cmp         bl,byte ptr [esi+2C0];TListBox.FStyle:TListBoxStyle
>0050EA70    je          0050EA9B
 0050EA72    mov         eax,ebx
 0050EA74    add         al,0FD
 0050EA76    sub         al,2
>0050EA78    jae         0050EA8E
 0050EA7A    mov         eax,dword ptr [esi+2A0];TListBox.FItems:TStrings
 0050EA80    mov         edx,dword ptr [eax]
 0050EA82    call        dword ptr [edx+48];TStrings.Clear
 0050EA85    xor         edx,edx
 0050EA87    mov         eax,esi
 0050EA89    call        TListBox.SetSorted
 0050EA8E    mov         byte ptr [esi+2C0],bl;TListBox.FStyle:TListBoxStyle
 0050EA94    mov         eax,esi
 0050EA96    call        TWinControl.RecreateWnd
 0050EA9B    pop         esi
 0050EA9C    pop         ebx
 0050EA9D    ret
*}
end;

//0050EAA0
{*function sub_0050EAA0(?:TCustomListBox):?;
begin
 0050EAA0    push        ebx
 0050EAA1    mov         ebx,eax
 0050EAA3    push        0
 0050EAA5    push        0
 0050EAA7    push        18E
 0050EAAC    mov         eax,ebx
 0050EAAE    call        TWinControl.GetHandle
 0050EAB3    push        eax
 0050EAB4    call        user32.SendMessageW
 0050EAB9    pop         ebx
 0050EABA    ret
end;*}

//0050EABC
{*procedure TCustomListBox.sub_0050EABC(?:?);
begin
 0050EABC    push        ebp
 0050EABD    mov         ebp,esp
 0050EABF    push        0
 0050EAC1    push        ebx
 0050EAC2    push        esi
 0050EAC3    mov         esi,edx
 0050EAC5    mov         ebx,eax
 0050EAC7    xor         eax,eax
 0050EAC9    push        ebp
 0050EACA    push        50EB63
 0050EACF    push        dword ptr fs:[eax]
 0050EAD2    mov         dword ptr fs:[eax],esp
 0050EAD5    movzx       eax,byte ptr [ebx+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050EADC    add         al,0FD
 0050EADE    sub         al,2
>0050EAE0    jae         0050EB44
 0050EAE2    cmp         word ptr [ebx+2F2],0;TCustomListBox.?f2F2:word
>0050EAEA    je          0050EB3B
 0050EAEC    mov         eax,ebx
 0050EAEE    mov         edx,dword ptr [eax]
 0050EAF0    call        dword ptr [edx+124];TCustomListBox.GetCount
 0050EAF6    cmp         eax,dword ptr [esi+4]
>0050EAF9    jbe         0050EB3B
 0050EAFB    lea         eax,[ebp-4]
 0050EAFE    call        @UStrClr
 0050EB03    lea         eax,[ebp-4]
 0050EB06    push        eax
 0050EB07    mov         ecx,dword ptr [esi+4]
 0050EB0A    mov         edx,ebx
 0050EB0C    mov         eax,dword ptr [ebx+2F4];TCustomListBox.?f2F4:dword
 0050EB12    call        dword ptr [ebx+2F0];TCustomListBox.FOnData
 0050EB18    mov         eax,dword ptr [ebp-4]
 0050EB1B    call        @UStrToPWChar
 0050EB20    mov         edx,eax
 0050EB22    mov         eax,dword ptr [esi+8]
 0050EB25    call        StrCopy
 0050EB2A    mov         eax,dword ptr [ebp-4]
 0050EB2D    test        eax,eax
>0050EB2F    je          0050EB36
 0050EB31    sub         eax,4
 0050EB34    mov         eax,dword ptr [eax]
 0050EB36    mov         dword ptr [esi+0C],eax
>0050EB39    jmp         0050EB4D
 0050EB3B    mov         dword ptr [esi+0C],0FFFFFFFF
>0050EB42    jmp         0050EB4D
 0050EB44    mov         edx,esi
 0050EB46    mov         eax,ebx
 0050EB48    mov         ecx,dword ptr [eax]
 0050EB4A    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0050EB4D    xor         eax,eax
 0050EB4F    pop         edx
 0050EB50    pop         ecx
 0050EB51    pop         ecx
 0050EB52    mov         dword ptr fs:[eax],edx
 0050EB55    push        50EB6A
 0050EB5A    lea         eax,[ebp-4]
 0050EB5D    call        @UStrClr
 0050EB62    ret
>0050EB63    jmp         @HandleFinally
>0050EB68    jmp         0050EB5A
 0050EB6A    pop         esi
 0050EB6B    pop         ebx
 0050EB6C    pop         ecx
 0050EB6D    pop         ebp
 0050EB6E    ret
end;*}

//0050EB70
{*procedure TCustomListBox.sub_0050EB70(?:?);
begin
 0050EB70    push        ebp
 0050EB71    mov         ebp,esp
 0050EB73    push        0
 0050EB75    push        ebx
 0050EB76    push        esi
 0050EB77    mov         esi,edx
 0050EB79    mov         ebx,eax
 0050EB7B    xor         eax,eax
 0050EB7D    push        ebp
 0050EB7E    push        50EC05
 0050EB83    push        dword ptr fs:[eax]
 0050EB86    mov         dword ptr fs:[eax],esp
 0050EB89    movzx       eax,byte ptr [ebx+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050EB90    add         al,0FD
 0050EB92    sub         al,2
>0050EB94    jae         0050EBE6
 0050EB96    cmp         word ptr [ebx+2F2],0;TCustomListBox.?f2F2:word
>0050EB9E    je          0050EBDD
 0050EBA0    mov         eax,ebx
 0050EBA2    mov         edx,dword ptr [eax]
 0050EBA4    call        dword ptr [edx+124];TCustomListBox.GetCount
 0050EBAA    cmp         eax,dword ptr [esi+4]
>0050EBAD    jbe         0050EBDD
 0050EBAF    lea         eax,[ebp-4]
 0050EBB2    call        @UStrClr
 0050EBB7    lea         eax,[ebp-4]
 0050EBBA    push        eax
 0050EBBB    mov         ecx,dword ptr [esi+4]
 0050EBBE    mov         edx,ebx
 0050EBC0    mov         eax,dword ptr [ebx+2F4];TCustomListBox.?f2F4:dword
 0050EBC6    call        dword ptr [ebx+2F0];TCustomListBox.FOnData
 0050EBCC    mov         eax,dword ptr [ebp-4]
 0050EBCF    test        eax,eax
>0050EBD1    je          0050EBD8
 0050EBD3    sub         eax,4
 0050EBD6    mov         eax,dword ptr [eax]
 0050EBD8    mov         dword ptr [esi+0C],eax
>0050EBDB    jmp         0050EBEF
 0050EBDD    mov         dword ptr [esi+0C],0FFFFFFFF
>0050EBE4    jmp         0050EBEF
 0050EBE6    mov         edx,esi
 0050EBE8    mov         eax,ebx
 0050EBEA    mov         ecx,dword ptr [eax]
 0050EBEC    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0050EBEF    xor         eax,eax
 0050EBF1    pop         edx
 0050EBF2    pop         ecx
 0050EBF3    pop         ecx
 0050EBF4    mov         dword ptr fs:[eax],edx
 0050EBF7    push        50EC0C
 0050EBFC    lea         eax,[ebp-4]
 0050EBFF    call        @UStrClr
 0050EC04    ret
>0050EC05    jmp         @HandleFinally
>0050EC0A    jmp         0050EBFC
 0050EC0C    pop         esi
 0050EC0D    pop         ebx
 0050EC0E    pop         ecx
 0050EC0F    pop         ebp
 0050EC10    ret
end;*}

//0050EC14
procedure TListBox.SetBorderStyle(Value:TBorderStyle);
begin
{*
 0050EC14    cmp         dl,byte ptr [eax+2AC];TListBox.FBorderStyle:TBorderStyle
>0050EC1A    je          0050EC27
 0050EC1C    mov         byte ptr [eax+2AC],dl;TListBox.FBorderStyle:TBorderStyle
 0050EC22    call        TWinControl.RecreateWnd
 0050EC27    ret
*}
end;

//0050EC28
procedure sub_0050EC28(?:TCustomListBox; ?:Integer);
begin
{*
 0050EC28    push        ebx
 0050EC29    push        esi
 0050EC2A    mov         esi,edx
 0050EC2C    mov         ebx,eax
 0050EC2E    mov         eax,ebx
 0050EC30    call        0050EAA0
 0050EC35    cmp         esi,eax
>0050EC37    je          0050EC4E
 0050EC39    push        0
 0050EC3B    push        esi
 0050EC3C    push        197
 0050EC41    mov         eax,ebx
 0050EC43    call        TWinControl.GetHandle
 0050EC48    push        eax
 0050EC49    call        user32.SendMessageW
 0050EC4E    pop         esi
 0050EC4F    pop         ebx
 0050EC50    ret
*}
end;

//0050EC54
procedure TListBox.SetItems(Value:TStrings);
begin
{*
 0050EC54    push        ebx
 0050EC55    push        esi
 0050EC56    mov         esi,edx
 0050EC58    mov         ebx,eax
 0050EC5A    movzx       eax,byte ptr [ebx+2C0];TListBox.FStyle:TListBoxStyle
 0050EC61    mov         edx,eax
 0050EC63    add         dl,0FD
 0050EC66    sub         dl,2
>0050EC69    jae         0050EC89
 0050EC6B    sub         al,3
>0050EC6D    je          0050EC75
 0050EC6F    dec         al
>0050EC71    je          0050EC80
>0050EC73    jmp         0050EC89
 0050EC75    xor         edx,edx
 0050EC77    mov         eax,ebx
 0050EC79    call        TListBox.SetStyle
>0050EC7E    jmp         0050EC89
 0050EC80    mov         dl,1
 0050EC82    mov         eax,ebx
 0050EC84    call        TListBox.SetStyle
 0050EC89    mov         edx,esi
 0050EC8B    mov         eax,dword ptr [ebx+2A0];TListBox.FItems:TStrings
 0050EC91    mov         ecx,dword ptr [eax]
 0050EC93    call        dword ptr [ecx+8];TStrings.Assign
 0050EC96    pop         esi
 0050EC97    pop         ebx
 0050EC98    ret
*}
end;

//0050EC9C
function TCustomListBox.ItemAtPos(Pos:TPoint; Existing:Boolean):Integer;
begin
{*
 0050EC9C    push        ebx
 0050EC9D    push        esi
 0050EC9E    push        edi
 0050EC9F    push        ebp
 0050ECA0    add         esp,0FFFFFFD8
 0050ECA3    mov         esi,edx
 0050ECA5    lea         edi,[esp]
 0050ECA8    movs        dword ptr [edi],dword ptr [esi]
 0050ECA9    movs        dword ptr [edi],dword ptr [esi]
 0050ECAA    mov         ebx,ecx
 0050ECAC    mov         esi,eax
 0050ECAE    lea         edx,[esp+18]
 0050ECB2    mov         eax,esi
 0050ECB4    mov         ecx,dword ptr [eax]
 0050ECB6    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0050ECB9    lea         eax,[esp+18]
 0050ECBD    mov         edx,esp
 0050ECBF    call        TRect.Contains
 0050ECC4    test        al,al
>0050ECC6    je          0050ED07
 0050ECC8    mov         eax,esi
 0050ECCA    call        0050EAA0
 0050ECCF    mov         ebp,eax
 0050ECD1    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050ECD7    mov         edx,dword ptr [eax]
 0050ECD9    call        dword ptr [edx+14];TStrings.GetCount
 0050ECDC    mov         edi,eax
 0050ECDE    cmp         edi,ebp
>0050ECE0    jle         0050ED03
 0050ECE2    lea         ecx,[esp+8]
 0050ECE6    mov         edx,ebp
 0050ECE8    mov         eax,esi
 0050ECEA    call        0050E8E8
 0050ECEF    mov         edx,esp
 0050ECF1    lea         eax,[esp+8]
 0050ECF5    call        TRect.Contains
 0050ECFA    test        al,al
>0050ECFC    jne         0050ED0A
 0050ECFE    inc         ebp
 0050ECFF    cmp         edi,ebp
>0050ED01    jg          0050ECE2
 0050ED03    test        bl,bl
>0050ED05    je          0050ED0A
 0050ED07    or          ebp,0FFFFFFFF
 0050ED0A    mov         eax,ebp
 0050ED0C    add         esp,28
 0050ED0F    pop         ebp
 0050ED10    pop         edi
 0050ED11    pop         esi
 0050ED12    pop         ebx
 0050ED13    ret
*}
end;

//0050ED14
{*procedure TCustomListBox.ItemRect(Index:Integer; ?:?);
begin
 0050ED14    push        ebx
 0050ED15    push        esi
 0050ED16    push        edi
 0050ED17    add         esp,0FFFFFFF0
 0050ED1A    mov         edi,ecx
 0050ED1C    mov         ebx,edx
 0050ED1E    mov         esi,eax
 0050ED20    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050ED26    mov         edx,dword ptr [eax]
 0050ED28    call        dword ptr [edx+14];TStrings.GetCount
 0050ED2B    test        ebx,ebx
>0050ED2D    je          0050ED33
 0050ED2F    cmp         eax,ebx
>0050ED31    jle         0050ED40
 0050ED33    mov         ecx,edi
 0050ED35    mov         edx,ebx
 0050ED37    mov         eax,esi
 0050ED39    call        0050E8E8
>0050ED3E    jmp         0050ED78
 0050ED40    cmp         eax,ebx
>0050ED42    jne         0050ED61
 0050ED44    mov         ecx,edi
 0050ED46    mov         edx,ebx
 0050ED48    dec         edx
 0050ED49    mov         eax,esi
 0050ED4B    call        0050E8E8
 0050ED50    mov         ecx,dword ptr [edi+0C]
 0050ED53    sub         ecx,dword ptr [edi+4]
 0050ED56    mov         eax,edi
 0050ED58    xor         edx,edx
 0050ED5A    call        OffsetRect
>0050ED5F    jmp         0050ED78
 0050ED61    push        0
 0050ED63    push        0
 0050ED65    xor         ecx,ecx
 0050ED67    xor         edx,edx
 0050ED69    lea         eax,[esp+8]
 0050ED6D    call        TRect.Create
 0050ED72    mov         esi,esp
 0050ED74    movs        dword ptr [edi],dword ptr [esi]
 0050ED75    movs        dword ptr [edi],dword ptr [esi]
 0050ED76    movs        dword ptr [edi],dword ptr [esi]
 0050ED77    movs        dword ptr [edi],dword ptr [esi]
 0050ED78    add         esp,10
 0050ED7B    pop         edi
 0050ED7C    pop         esi
 0050ED7D    pop         ebx
 0050ED7E    ret
end;*}

//0050ED80
procedure TCustomListBox.CreateParams(var Params:TCreateParams);
begin
{*
 0050ED80    push        ebx
 0050ED81    push        esi
 0050ED82    push        edi
 0050ED83    mov         edi,edx
 0050ED85    mov         ebx,eax
 0050ED87    mov         edx,edi
 0050ED89    mov         eax,ebx
 0050ED8B    call        TWinControl.CreateParams
 0050ED90    mov         ecx,50EE9C;'L'
 0050ED95    mov         edx,edi
 0050ED97    mov         eax,ebx
 0050ED99    call        TWinControl.CreateSubClass
 0050ED9E    cmp         byte ptr [ebx+2C3],0;TCustomListBox.FExtendedSelect:Boolean
>0050EDA5    je          0050EDB7
 0050EDA7    movzx       eax,byte ptr [ebx+290];TCustomListBox.FMultiSelect:Boolean
 0050EDAE    mov         esi,dword ptr [eax*4+7A144C]
>0050EDB5    jmp         0050EDC5
 0050EDB7    movzx       eax,byte ptr [ebx+290];TCustomListBox.FMultiSelect:Boolean
 0050EDBE    mov         esi,dword ptr [eax*4+7A1444]
 0050EDC5    movzx       eax,byte ptr [ebx+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050EDCC    mov         edx,eax
 0050EDCE    add         dl,0FD
 0050EDD1    sub         dl,2
 0050EDD4    setb        dl
 0050EDD7    and         edx,7F
 0050EDDA    mov         edx,dword ptr [edx*4+7A1474]
 0050EDE1    or          edx,300000
 0050EDE7    or          edx,1
 0050EDEA    or          edx,dword ptr [edi+4];TCreateParams.Style:DWORD
 0050EDED    and         eax,7F
 0050EDF0    or          edx,dword ptr [eax*4+7A1428]
 0050EDF7    movzx       eax,byte ptr [ebx+2C2];TCustomListBox.FSorted:Boolean
 0050EDFE    or          edx,dword ptr [eax*4+7A143C]
 0050EE05    or          esi,edx
 0050EE07    movzx       eax,byte ptr [ebx+2C1];TCustomListBox.FIntegralHeight:Boolean
 0050EE0E    or          esi,dword ptr [eax*4+7A1454]
 0050EE15    cmp         dword ptr [ebx+2B4],0;TCustomListBox.FColumns:Integer
 0050EE1C    setne       al
 0050EE1F    and         eax,7F
 0050EE22    or          esi,dword ptr [eax*4+7A145C]
 0050EE29    movzx       eax,byte ptr [ebx+2AC];TCustomListBox.FBorderStyle:TBorderStyle
 0050EE30    or          esi,dword ptr [eax*4+7A12C8]
 0050EE37    cmp         dword ptr [ebx+2C4],0;TCustomListBox.FTabWidth:Integer
 0050EE3E    setne       al
 0050EE41    and         eax,7F
 0050EE44    or          esi,dword ptr [eax*4+7A1464]
 0050EE4B    mov         dword ptr [edi+4],esi;TCreateParams.Style:DWORD
 0050EE4E    mov         eax,[007C4770];^gvar_007CA5E0
 0050EE53    cmp         byte ptr [eax],0
>0050EE56    je          0050EE78
 0050EE58    cmp         byte ptr [ebx+204],0;TCustomListBox.FCtl3D:Boolean
>0050EE5F    je          0050EE78
 0050EE61    cmp         byte ptr [ebx+2AC],1;TCustomListBox.FBorderStyle:TBorderStyle
>0050EE68    jne         0050EE78
 0050EE6A    and         dword ptr [edi+4],0FF7FFFFF;TCreateParams.Style:DWORD
 0050EE71    or          dword ptr [edi+8],200;TCreateParams.ExStyle:DWORD
 0050EE78    mov         eax,ebx
 0050EE7A    mov         si,0FFC6
 0050EE7E    call        @CallDynaInst;TControl.sub_004E7698
 0050EE83    and         eax,7F
 0050EE86    mov         eax,dword ptr [eax*4+7A146C]
 0050EE8D    or          eax,1
 0050EE90    not         eax
 0050EE92    and         dword ptr [edi+24],eax;TCreateParams.WindowClass:TWndClass
 0050EE95    pop         edi
 0050EE96    pop         esi
 0050EE97    pop         ebx
 0050EE98    ret
*}
end;

//0050EEAC
procedure TCustomListBox.CreateWnd;
begin
{*
 0050EEAC    push        ebx
 0050EEAD    push        esi
 0050EEAE    push        edi
 0050EEAF    add         esp,0FFFFFFF8
 0050EEB2    mov         esi,eax
 0050EEB4    mov         ebx,dword ptr [esi+58];TCustomListBox.FWidth:Integer
 0050EEB7    mov         edi,dword ptr [esi+5C];TCustomListBox.FHeight:Integer
 0050EEBA    mov         eax,esi
 0050EEBC    call        TWinControl.CreateWnd
 0050EEC1    push        14
 0050EEC3    push        edi
 0050EEC4    push        ebx
 0050EEC5    mov         eax,dword ptr [esi+54];TCustomListBox.FTop:Integer
 0050EEC8    push        eax
 0050EEC9    mov         eax,dword ptr [esi+50];TCustomListBox.FLeft:Integer
 0050EECC    push        eax
 0050EECD    push        0
 0050EECF    mov         eax,esi
 0050EED1    call        TWinControl.GetHandle
 0050EED6    push        eax
 0050EED7    call        user32.SetWindowPos
 0050EEDC    cmp         dword ptr [esi+2C4],0;TCustomListBox.FTabWidth:Integer
>0050EEE3    je          0050EF00
 0050EEE5    lea         eax,[esi+2C4];TCustomListBox.FTabWidth:Integer
 0050EEEB    push        eax
 0050EEEC    push        1
 0050EEEE    push        192
 0050EEF3    mov         eax,esi
 0050EEF5    call        TWinControl.GetHandle
 0050EEFA    push        eax
 0050EEFB    call        user32.SendMessageW
 0050EF00    mov         eax,esi
 0050EF02    call        0050E6F8
 0050EF07    mov         eax,dword ptr [esi+2D4];TCustomListBox.FSaveScrollWidth:Integer
 0050EF0D    test        eax,eax
>0050EF0F    je          0050EF1A
 0050EF11    mov         edx,eax
 0050EF13    mov         eax,esi
 0050EF15    call        TListBox.SetScrollWidth
 0050EF1A    mov         eax,dword ptr [esi+2BC];TCustomListBox.FOldCount:Integer
 0050EF20    cmp         eax,0FFFFFFFF
>0050EF23    jne         0050EF32
 0050EF25    cmp         dword ptr [esi+2C8],0;TCustomListBox.FSaveItems:TStringList
>0050EF2C    je          0050F00D
 0050EF32    movzx       edx,byte ptr [esi+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050EF39    add         dl,0FD
 0050EF3C    sub         dl,2
>0050EF3F    jae         0050EF4A
 0050EF41    mov         edx,eax
 0050EF43    mov         eax,esi
 0050EF45    call        0051008C
 0050EF4A    mov         edi,dword ptr [esi+2C8];TCustomListBox.FSaveItems:TStringList
 0050EF50    test        edi,edi
>0050EF52    je          0050EF7A
 0050EF54    mov         edx,edi
 0050EF56    mov         eax,esi
 0050EF58    mov         ecx,dword ptr [eax]
 0050EF5A    call        dword ptr [ecx+140];TCustomListBox.sub_0051007C
 0050EF60    lea         eax,[esi+2C8];TCustomListBox.FSaveItems:TStringList
 0050EF66    mov         dword ptr [esp],eax
 0050EF69    mov         eax,dword ptr [esp]
 0050EF6C    mov         eax,dword ptr [eax]
 0050EF6E    mov         edx,dword ptr [esp]
 0050EF71    xor         ecx,ecx
 0050EF73    mov         dword ptr [edx],ecx
 0050EF75    call        TObject.Free
 0050EF7A    mov         edx,dword ptr [esi+2CC];TCustomListBox.FSaveTopIndex:Integer
 0050EF80    mov         eax,esi
 0050EF82    call        0050EC28
 0050EF87    mov         edx,dword ptr [esi+2D0];TCustomListBox.FSaveItemIndex:Integer
 0050EF8D    mov         eax,esi
 0050EF8F    mov         ecx,dword ptr [eax]
 0050EF91    call        dword ptr [ecx+10C];TCustomListBox.sub_0050E828
 0050EF97    cmp         byte ptr [esi+290],0;TCustomListBox.FMultiSelect:Boolean
>0050EF9E    je          0050EFF2
 0050EFA0    mov         eax,dword ptr [esi+2D8];TCustomListBox.FSaveSelection::1
 0050EFA6    mov         dword ptr [esp+4],eax
 0050EFAA    mov         ebx,dword ptr [esp+4]
 0050EFAE    test        ebx,ebx
>0050EFB0    je          0050EFB7
 0050EFB2    sub         ebx,4
 0050EFB5    mov         ebx,dword ptr [ebx]
 0050EFB7    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050EFBD    mov         edx,dword ptr [eax]
 0050EFBF    call        dword ptr [edx+14];TStrings.GetCount
 0050EFC2    cmp         ebx,eax
>0050EFC4    jne         0050EFF2
 0050EFC6    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050EFCC    mov         edx,dword ptr [eax]
 0050EFCE    call        dword ptr [edx+14];TStrings.GetCount
 0050EFD1    mov         edi,eax
 0050EFD3    dec         edi
 0050EFD4    test        edi,edi
>0050EFD6    jl          0050EFF2
 0050EFD8    inc         edi
 0050EFD9    xor         ebx,ebx
 0050EFDB    mov         eax,dword ptr [esi+2D8];TCustomListBox.FSaveSelection::1
 0050EFE1    movzx       ecx,byte ptr [eax+ebx]
 0050EFE5    mov         edx,ebx
 0050EFE7    mov         eax,esi
 0050EFE9    call        TCustomListBox.SetSelected
 0050EFEE    inc         ebx
 0050EFEF    dec         edi
>0050EFF0    jne         0050EFDB
 0050EFF2    lea         eax,[esi+2D8];TCustomListBox.FSaveSelection::1
 0050EFF8    mov         edx,dword ptr ds:[5016C8];:TCustomListBox.:1
 0050EFFE    call        @DynArrayClear
 0050F003    mov         dword ptr [esi+2BC],0FFFFFFFF;TCustomListBox.FOldCount:Integer
 0050F00D    pop         ecx
 0050F00E    pop         edx
 0050F00F    pop         edi
 0050F010    pop         esi
 0050F011    pop         ebx
 0050F012    ret
*}
end;

//0050F014
procedure sub_0050F014;
begin
{*
 0050F014    push        ebx
 0050F015    push        esi
 0050F016    push        edi
 0050F017    mov         esi,eax
 0050F019    test        byte ptr [esi+65],20;TCustomListBox.FAlign:TAlign
>0050F01D    je          0050F0F9
 0050F023    mov         eax,esi
 0050F025    call        TListBox.GetScrollWidth
 0050F02A    mov         dword ptr [esi+2D4],eax;TCustomListBox.FSaveScrollWidth:Integer
 0050F030    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050F036    mov         edx,dword ptr [eax]
 0050F038    call        dword ptr [edx+14];TStrings.GetCount
 0050F03B    test        eax,eax
>0050F03D    jle         0050F0F9
 0050F043    movzx       eax,byte ptr [esi+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050F04A    add         al,0FD
 0050F04C    sub         al,2
>0050F04E    jae         0050F063
 0050F050    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050F056    mov         edx,dword ptr [eax]
 0050F058    call        dword ptr [edx+14];TStrings.GetCount
 0050F05B    mov         dword ptr [esi+2BC],eax;TCustomListBox.FOldCount:Integer
>0050F061    jmp         0050F0DC
 0050F063    mov         dl,1
 0050F065    mov         eax,[0046F9A0];TStringList
 0050F06A    call        TStringList.Create;TStringList.Create
 0050F06F    mov         edi,eax
 0050F071    mov         dword ptr [esi+2C8],edi;TCustomListBox.FSaveItems:TStringList
 0050F077    mov         edx,edi
 0050F079    mov         eax,esi
 0050F07B    mov         ecx,dword ptr [eax]
 0050F07D    call        dword ptr [ecx+144];TCustomListBox.sub_0050E4FC
 0050F083    cmp         byte ptr [esi+290],0;TCustomListBox.FMultiSelect:Boolean
>0050F08A    je          0050F0DC
 0050F08C    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050F092    mov         edx,dword ptr [eax]
 0050F094    call        dword ptr [edx+14];TStrings.GetCount
 0050F097    push        eax
 0050F098    lea         eax,[esi+2D8];TCustomListBox.FSaveSelection::1
 0050F09E    mov         ecx,1
 0050F0A3    mov         edx,dword ptr ds:[5016C8];:TCustomListBox.:1
 0050F0A9    call        @DynArraySetLength
 0050F0AE    add         esp,4
 0050F0B1    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050F0B7    mov         edx,dword ptr [eax]
 0050F0B9    call        dword ptr [edx+14];TStrings.GetCount
 0050F0BC    mov         edi,eax
 0050F0BE    dec         edi
 0050F0BF    test        edi,edi
>0050F0C1    jl          0050F0DC
 0050F0C3    inc         edi
 0050F0C4    xor         ebx,ebx
 0050F0C6    mov         edx,ebx
 0050F0C8    mov         eax,esi
 0050F0CA    call        TCustomListBox.GetSelected
 0050F0CF    mov         edx,dword ptr [esi+2D8];TCustomListBox.FSaveSelection::1
 0050F0D5    mov         byte ptr [edx+ebx],al
 0050F0D8    inc         ebx
 0050F0D9    dec         edi
>0050F0DA    jne         0050F0C6
 0050F0DC    mov         eax,esi
 0050F0DE    call        0050EAA0
 0050F0E3    mov         dword ptr [esi+2CC],eax;TCustomListBox.FSaveTopIndex:Integer
 0050F0E9    mov         eax,esi
 0050F0EB    mov         edx,dword ptr [eax]
 0050F0ED    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050F0F3    mov         dword ptr [esi+2D0],eax;TCustomListBox.FSaveItemIndex:Integer
 0050F0F9    mov         eax,esi
 0050F0FB    call        004EC00C
 0050F100    pop         edi
 0050F101    pop         esi
 0050F102    pop         ebx
 0050F103    ret
*}
end;

//0050F104
{*procedure sub_0050F104(?:?);
begin
 0050F104    push        ebp
 0050F105    mov         ebp,esp
 0050F107    add         esp,0FFFFFFE8
 0050F10A    push        ebx
 0050F10B    push        esi
 0050F10C    mov         ebx,edx
 0050F10E    mov         dword ptr [ebp-4],eax
 0050F111    mov         eax,dword ptr [ebp-4]
 0050F114    test        byte ptr [eax+1C],10;TCustomListBox.FComponentState:TComponentState
>0050F118    jne         0050F171
 0050F11A    mov         esi,dword ptr [ebx]
 0050F11C    cmp         esi,201
>0050F122    je          0050F12C
 0050F124    cmp         esi,203
>0050F12A    jne         0050F171
 0050F12C    mov         eax,dword ptr [ebp-4]
 0050F12F    call        TControl.Dragging
 0050F134    test        al,al
>0050F136    jne         0050F171
 0050F138    mov         eax,dword ptr [ebp-4]
 0050F13B    call        TGroupBox.GetDragMode
 0050F140    cmp         al,1
>0050F142    jne         0050F171
 0050F144    mov         edx,ebx
 0050F146    mov         eax,dword ptr [ebp-4]
 0050F149    call        TWinControl.IsControlMouseMsg
 0050F14E    test        al,al
>0050F150    jne         0050F2CE
 0050F156    mov         eax,dword ptr [ebp-4]
 0050F159    mov         edx,dword ptr ds:[50F2D4];0x1 gvar_0050F2D4
 0050F15F    or          dword ptr [eax+64],edx;TCustomListBox.FControlState:TControlState
 0050F162    mov         edx,ebx
 0050F164    mov         eax,dword ptr [ebp-4]
 0050F167    mov         ecx,dword ptr [eax]
 0050F169    call        dword ptr [ecx-14];TObject.Dispatch
>0050F16C    jmp         0050F2CE
 0050F171    mov         eax,dword ptr [ebx]
 0050F173    sub         eax,114
>0050F178    je          0050F23C
 0050F17E    sub         eax,0AEF9
>0050F183    je          0050F196
 0050F185    sub         eax,40
>0050F188    je          0050F200
 0050F18A    sub         eax,0CE7
>0050F18F    je          0050F1BD
>0050F191    jmp         0050F2C4
 0050F196    mov         eax,dword ptr [ebp-4]
 0050F199    call        TWinControl.HandleAllocated
 0050F19E    test        al,al
>0050F1A0    je          0050F2C4
 0050F1A6    push        0FF
 0050F1A8    push        0
 0050F1AA    mov         eax,dword ptr [ebp-4]
 0050F1AD    call        TWinControl.GetHandle
 0050F1B2    push        eax
 0050F1B3    call        user32.InvalidateRect
>0050F1B8    jmp         0050F2C4
 0050F1BD    mov         eax,dword ptr [ebp-4]
 0050F1C0    test        byte ptr [eax+65],80;TCustomListBox.FAlign:TAlign
>0050F1C4    je          0050F2C4
 0050F1CA    mov         eax,dword ptr [ebp-4]
 0050F1CD    cmp         byte ptr [eax+30C],0;TCustomListBox.FInBufferedPrintClient:Boolean
>0050F1D4    jne         0050F2C4
 0050F1DA    mov         eax,dword ptr [ebp-4]
 0050F1DD    mov         byte ptr [eax+30C],1;TCustomListBox.FInBufferedPrintClient:Boolean
 0050F1E4    push        0
 0050F1E6    push        0
 0050F1E8    push        0B04D
 0050F1ED    mov         eax,dword ptr [ebp-4]
 0050F1F0    call        TWinControl.GetHandle
 0050F1F5    push        eax
 0050F1F6    call        user32.PostMessageW
>0050F1FB    jmp         0050F2C4
 0050F200    mov         eax,dword ptr [ebp-4]
 0050F203    cmp         byte ptr [eax+30C],0;TCustomListBox.FInBufferedPrintClient:Boolean
>0050F20A    je          0050F2C4
 0050F210    lea         edx,[ebp-18]
 0050F213    mov         eax,dword ptr [ebp-4]
 0050F216    mov         ecx,dword ptr [eax]
 0050F218    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0050F21B    lea         eax,[ebp-18]
 0050F21E    push        eax
 0050F21F    mov         eax,dword ptr [ebp-4]
 0050F222    call        TWinControl.GetHandle
 0050F227    pop         edx
 0050F228    call        PerformBufferedPrintClient
 0050F22D    mov         eax,dword ptr [ebp-4]
 0050F230    mov         byte ptr [eax+30C],0;TCustomListBox.FInBufferedPrintClient:Boolean
>0050F237    jmp         0050F2C4
 0050F23C    mov         edx,ebx
 0050F23E    mov         eax,dword ptr [ebp-4]
 0050F241    call        004ECAFC
 0050F246    mov         edx,dword ptr [ebp-4]
 0050F249    cmp         byte ptr [edx+280],0;TCustomListBox.FDoubleBuffered:Boolean
>0050F250    je          0050F2CE
 0050F252    movzx       eax,word ptr [ebx+4]
 0050F256    mov         edx,eax
 0050F258    and         dx,5
 0050F25C    cmp         dx,5
>0050F260    je          0050F270
 0050F262    test        al,0
>0050F264    je          0050F270
 0050F266    and         ax,1
 0050F26A    cmp         ax,1
>0050F26E    jne         0050F2CE
 0050F270    mov         eax,dword ptr [ebp-4]
 0050F273    call        TWinControl.GetHandle
 0050F278    push        eax
 0050F279    call        user32.GetDC
 0050F27E    mov         dword ptr [ebp-8],eax
 0050F281    xor         eax,eax
 0050F283    push        ebp
 0050F284    push        50F2BD
 0050F289    push        dword ptr fs:[eax]
 0050F28C    mov         dword ptr fs:[eax],esp
 0050F28F    mov         edx,dword ptr [ebp-8]
 0050F292    mov         eax,dword ptr [ebp-4]
 0050F295    mov         ecx,dword ptr [eax]
 0050F297    call        dword ptr [ecx+0EC];TCustomListBox.sub_004ED3CC
 0050F29D    xor         eax,eax
 0050F29F    pop         edx
 0050F2A0    pop         ecx
 0050F2A1    pop         ecx
 0050F2A2    mov         dword ptr fs:[eax],edx
 0050F2A5    push        50F2CE
 0050F2AA    mov         eax,dword ptr [ebp-8]
 0050F2AD    push        eax
 0050F2AE    mov         eax,dword ptr [ebp-4]
 0050F2B1    call        TWinControl.GetHandle
 0050F2B6    push        eax
 0050F2B7    call        user32.ReleaseDC
 0050F2BC    ret
>0050F2BD    jmp         @HandleFinally
>0050F2C2    jmp         0050F2AA
 0050F2C4    mov         edx,ebx
 0050F2C6    mov         eax,dword ptr [ebp-4]
 0050F2C9    call        004ECAFC
 0050F2CE    pop         esi
 0050F2CF    pop         ebx
 0050F2D0    mov         esp,ebp
 0050F2D2    pop         ebp
 0050F2D3    ret
end;*}

//0050F2D8
{*procedure TCustomListBox.WMEraseBkgnd(?:?);
begin
 0050F2D8    cmp         byte ptr [eax+280],0;TCustomListBox.FDoubleBuffered:Boolean
>0050F2DF    je          0050F2E7
 0050F2E1    mov         ecx,dword ptr [eax]
 0050F2E3    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0050F2E6    ret
 0050F2E7    call        TWinControl.WMEraseBkgnd
 0050F2EC    ret
end;*}

//0050F2F0
{*procedure TCustomListBox.WMLButtonDown(?:?);
begin
 0050F2F0    push        ebp
 0050F2F1    mov         ebp,esp
 0050F2F3    add         esp,0FFFFFFE8
 0050F2F6    push        ebx
 0050F2F7    push        esi
 0050F2F8    push        edi
 0050F2F9    xor         ecx,ecx
 0050F2FB    mov         dword ptr [ebp-18],ecx
 0050F2FE    mov         edi,edx
 0050F300    mov         esi,eax
 0050F302    xor         eax,eax
 0050F304    push        ebp
 0050F305    push        50F439
 0050F30A    push        dword ptr fs:[eax]
 0050F30D    mov         dword ptr fs:[eax],esp
 0050F310    mov         eax,esi
 0050F312    mov         edx,dword ptr [eax]
 0050F314    call        dword ptr [edx+24];TComponent.GetObservers
 0050F317    mov         edx,1
 0050F31C    mov         ecx,dword ptr [eax]
 0050F31E    call        dword ptr [ecx+14];TObservers.IsObserving
 0050F321    test        al,al
>0050F323    je          0050F346
 0050F325    mov         eax,esi
 0050F327    mov         edx,dword ptr [eax]
 0050F329    call        dword ptr [edx+24];TComponent.GetObservers
 0050F32C    mov         dword ptr [ebp-8],eax
 0050F32F    lea         edx,[ebp-18]
 0050F332    mov         eax,dword ptr [ebp-8]
 0050F335    call        TLinkObservers.GetEditLink
 0050F33A    mov         eax,dword ptr [ebp-18]
 0050F33D    mov         edx,dword ptr [eax]
 0050F33F    call        dword ptr [edx+24]
 0050F342    xor         al,1
>0050F344    jmp         0050F348
 0050F346    xor         eax,eax
 0050F348    test        al,al
>0050F34A    je          0050F37D
 0050F34C    mov         eax,esi
 0050F34E    mov         edx,dword ptr [eax]
 0050F350    call        dword ptr [edx+104];TWinControl.SetFocus
 0050F356    movsx       eax,word ptr [edi+8]
 0050F35A    push        eax
 0050F35B    movsx       eax,word ptr [edi+0A]
 0050F35F    push        eax
 0050F360    movzx       eax,word ptr [edi+4]
 0050F364    call        KeysToShiftState
 0050F369    mov         ecx,eax
 0050F36B    xor         edx,edx
 0050F36D    mov         eax,esi
 0050F36F    mov         si,0FFD4
 0050F373    call        @CallDynaInst;TCustomListBox.sub_004E8C70
>0050F378    jmp         0050F423
 0050F37D    movzx       eax,word ptr [edi+4]
 0050F381    call        KeysToShiftState
 0050F386    mov         ebx,eax
 0050F388    mov         eax,esi
 0050F38A    call        TGroupBox.GetDragMode
 0050F38F    cmp         al,1
>0050F391    jne         0050F3F0
 0050F393    cmp         byte ptr [esi+290],0;TCustomListBox.FMultiSelect:Boolean
>0050F39A    je          0050F3F0
 0050F39C    test        bl,1
>0050F39F    je          0050F3A6
 0050F3A1    test        bl,4
>0050F3A4    je          0050F3F0
 0050F3A6    lea         eax,[edi+8]
 0050F3A9    mov         dword ptr [ebp-0C],eax
 0050F3AC    mov         eax,dword ptr [ebp-0C]
 0050F3AF    movsx       eax,word ptr [eax]
 0050F3B2    mov         dword ptr [ebp-14],eax
 0050F3B5    mov         eax,dword ptr [ebp-0C]
 0050F3B8    movsx       eax,word ptr [eax+2]
 0050F3BC    mov         dword ptr [ebp-10],eax
 0050F3BF    mov         cl,1
 0050F3C1    lea         edx,[ebp-14]
 0050F3C4    mov         eax,esi
 0050F3C6    call        TCustomListBox.ItemAtPos
 0050F3CB    mov         dword ptr [ebp-4],eax
 0050F3CE    cmp         dword ptr [ebp-4],0
>0050F3D2    jl          0050F3F0
 0050F3D4    mov         edx,dword ptr [ebp-4]
 0050F3D7    mov         eax,esi
 0050F3D9    call        TCustomListBox.GetSelected
 0050F3DE    test        al,al
>0050F3E0    je          0050F3F0
 0050F3E2    or          ecx,0FFFFFFFF
 0050F3E5    xor         edx,edx
 0050F3E7    mov         eax,esi
 0050F3E9    call        TControl.BeginDrag
>0050F3EE    jmp         0050F423
 0050F3F0    mov         edx,edi
 0050F3F2    mov         eax,esi
 0050F3F4    call        TControl.WMLButtonDown
 0050F3F9    mov         eax,esi
 0050F3FB    call        TGroupBox.GetDragMode
 0050F400    cmp         al,1
>0050F402    jne         0050F423
 0050F404    cmp         byte ptr [esi+290],0;TCustomListBox.FMultiSelect:Boolean
>0050F40B    je          0050F417
 0050F40D    test        bl,4
>0050F410    jne         0050F423
 0050F412    test        bl,1
>0050F415    jne         0050F423
 0050F417    or          ecx,0FFFFFFFF
 0050F41A    xor         edx,edx
 0050F41C    mov         eax,esi
 0050F41E    call        TControl.BeginDrag
 0050F423    xor         eax,eax
 0050F425    pop         edx
 0050F426    pop         ecx
 0050F427    pop         ecx
 0050F428    mov         dword ptr fs:[eax],edx
 0050F42B    push        50F440
 0050F430    lea         eax,[ebp-18]
 0050F433    call        @IntfClear
 0050F438    ret
>0050F439    jmp         @HandleFinally
>0050F43E    jmp         0050F430
 0050F440    pop         edi
 0050F441    pop         esi
 0050F442    pop         ebx
 0050F443    mov         esp,ebp
 0050F445    pop         ebp
 0050F446    ret
end;*}

//0050F448
{*procedure TCustomListBox.sub_0050F448(?:?);
begin
 0050F448    push        esi
 0050F449    push        edi
 0050F44A    mov         edi,eax
 0050F44C    movzx       eax,word ptr [edx+6]
 0050F450    dec         ax
>0050F453    je          0050F45C
 0050F455    dec         ax
>0050F458    je          0050F47D
>0050F45A    jmp         0050F488
 0050F45C    mov         eax,edi
 0050F45E    call        TControl.Changed
 0050F463    mov         eax,edi
 0050F465    mov         si,0FFEB
 0050F469    call        @CallDynaInst;TControl.Click
 0050F46E    mov         eax,edi
 0050F470    mov         edx,dword ptr [eax]
 0050F472    call        dword ptr [edx+24];TComponent.GetObservers
 0050F475    call        004A1D04
 0050F47A    pop         edi
 0050F47B    pop         esi
 0050F47C    ret
 0050F47D    mov         eax,edi
 0050F47F    mov         si,0FFEA
 0050F483    call        @CallDynaInst;TControl.sub_004E8C50
 0050F488    pop         edi
 0050F489    pop         esi
 0050F48A    ret
end;*}

//0050F48C
{*procedure sub_0050F48C(?:?);
begin
 0050F48C    push        ebp
 0050F48D    mov         ebp,esp
 0050F48F    add         esp,0FFFFFF6C
 0050F495    push        ebx
 0050F496    push        esi
 0050F497    push        edi
 0050F498    mov         edi,dword ptr [ebp+8]
 0050F49B    add         edi,0FFFFFFFC
 0050F49E    mov         eax,dword ptr [edi]
 0050F4A0    mov         eax,dword ptr [eax+2A0]
 0050F4A6    mov         edx,dword ptr [eax]
 0050F4A8    call        dword ptr [edx+14]
 0050F4AB    test        eax,eax
>0050F4AD    jne         0050F522
 0050F4AF    mov         dl,1
 0050F4B1    mov         eax,[004BE308];TBrush
 0050F4B6    call        TBrush.Create;TBrush.Create
 0050F4BB    mov         dword ptr [ebp-0C],eax
 0050F4BE    xor         eax,eax
 0050F4C0    push        ebp
 0050F4C1    push        50F51B
 0050F4C6    push        dword ptr fs:[eax]
 0050F4C9    mov         dword ptr fs:[eax],esp
 0050F4CC    mov         eax,dword ptr [edi]
 0050F4CE    mov         edx,dword ptr [eax+7C]
 0050F4D1    mov         eax,dword ptr [ebp-0C]
 0050F4D4    call        TBrush.SetColor
 0050F4D9    mov         eax,dword ptr [ebp-0C]
 0050F4DC    call        TBrush.GetHandle
 0050F4E1    push        eax
 0050F4E2    lea         edx,[ebp-94]
 0050F4E8    mov         eax,dword ptr [edi]
 0050F4EA    mov         ecx,dword ptr [eax]
 0050F4EC    call        dword ptr [ecx+64]
 0050F4EF    lea         eax,[ebp-94]
 0050F4F5    push        eax
 0050F4F6    mov         eax,dword ptr [ebp+8]
 0050F4F9    mov         eax,dword ptr [eax-8]
 0050F4FC    mov         eax,dword ptr [eax+4]
 0050F4FF    push        eax
 0050F500    call        user32.FillRect
 0050F505    xor         eax,eax
 0050F507    pop         edx
 0050F508    pop         ecx
 0050F509    pop         ecx
 0050F50A    mov         dword ptr fs:[eax],edx
 0050F50D    push        50F68F
 0050F512    mov         eax,dword ptr [ebp-0C]
 0050F515    call        TObject.Free
 0050F51A    ret
>0050F51B    jmp         @HandleFinally
>0050F520    jmp         0050F512
 0050F522    xor         eax,eax
 0050F524    push        ebp
 0050F525    push        50F688
 0050F52A    push        dword ptr fs:[eax]
 0050F52D    mov         dword ptr fs:[eax],esp
 0050F530    lea         eax,[ebp-5C]
 0050F533    mov         dword ptr [ebp-14],eax
 0050F536    lea         eax,[ebp-74]
 0050F539    mov         dword ptr [ebp-24],eax
 0050F53C    mov         dword ptr [ebp-1C],0BC2B
 0050F543    mov         eax,dword ptr [edi]
 0050F545    call        TWinControl.GetHandle
 0050F54A    mov         dword ptr [ebp-18],eax
 0050F54D    mov         dword ptr [ebp-5C],2
 0050F554    mov         dword ptr [ebp-50],1
 0050F55B    xor         eax,eax
 0050F55D    mov         dword ptr [ebp-4C],eax
 0050F560    mov         eax,dword ptr [ebp+8]
 0050F563    mov         eax,dword ptr [eax-8]
 0050F566    mov         eax,dword ptr [eax+4]
 0050F569    mov         dword ptr [ebp-44],eax
 0050F56C    mov         eax,dword ptr [edi]
 0050F56E    call        TWinControl.GetHandle
 0050F573    mov         dword ptr [ebp-58],eax
 0050F576    mov         eax,dword ptr [edi]
 0050F578    call        TWinControl.GetHandle
 0050F57D    mov         dword ptr [ebp-48],eax
 0050F580    mov         dword ptr [ebp-2C],0BC2C
 0050F587    mov         eax,dword ptr [edi]
 0050F589    call        TWinControl.GetHandle
 0050F58E    mov         dword ptr [ebp-28],eax
 0050F591    mov         dword ptr [ebp-74],2
 0050F598    mov         eax,dword ptr [edi]
 0050F59A    call        TWinControl.GetHandle
 0050F59F    mov         dword ptr [ebp-70],eax
 0050F5A2    xor         esi,esi
 0050F5A4    mov         eax,dword ptr [edi]
 0050F5A6    call        0050EAA0
 0050F5AB    mov         ebx,eax
 0050F5AD    lea         eax,[ebp-84]
 0050F5B3    push        eax
 0050F5B4    mov         eax,dword ptr [ebp+8]
 0050F5B7    mov         eax,dword ptr [eax-8]
 0050F5BA    mov         eax,dword ptr [eax+4]
 0050F5BD    push        eax
 0050F5BE    call        gdi32.GetClipBox
 0050F5C3    mov         eax,dword ptr [edi]
 0050F5C5    mov         eax,dword ptr [eax+5C]
 0050F5C8    mov         dword ptr [ebp-4],eax
 0050F5CB    mov         eax,dword ptr [edi]
 0050F5CD    mov         eax,dword ptr [eax+58]
 0050F5D0    mov         dword ptr [ebp-8],eax
 0050F5D3    cmp         esi,dword ptr [ebp-4]
>0050F5D6    jge         0050F67A
 0050F5DC    mov         dword ptr [ebp-6C],ebx
 0050F5DF    mov         eax,dword ptr [edi]
 0050F5E1    mov         eax,dword ptr [eax+2A0]
 0050F5E7    mov         edx,dword ptr [eax]
 0050F5E9    call        dword ptr [edx+14]
 0050F5EC    cmp         ebx,eax
>0050F5EE    jge         0050F602
 0050F5F0    mov         eax,dword ptr [edi]
 0050F5F2    mov         eax,dword ptr [eax+2A0]
 0050F5F8    mov         edx,ebx
 0050F5FA    mov         ecx,dword ptr [eax]
 0050F5FC    call        dword ptr [ecx+18]
 0050F5FF    mov         dword ptr [ebp-60],eax
 0050F602    mov         eax,dword ptr [ebp-8]
 0050F605    mov         dword ptr [ebp-68],eax
 0050F608    mov         eax,dword ptr [edi]
 0050F60A    mov         eax,dword ptr [eax+2B8]
 0050F610    mov         dword ptr [ebp-64],eax
 0050F613    mov         eax,dword ptr [ebp-60]
 0050F616    mov         dword ptr [ebp-30],eax
 0050F619    mov         dword ptr [ebp-54],ebx
 0050F61C    lea         edx,[ebp-2C]
 0050F61F    mov         eax,dword ptr [edi]
 0050F621    mov         ecx,dword ptr [eax]
 0050F623    call        dword ptr [ecx-14]
 0050F626    mov         eax,esi
 0050F628    add         eax,dword ptr [ebp-64]
 0050F62B    push        eax
 0050F62C    lea         eax,[ebp-94]
 0050F632    push        eax
 0050F633    mov         ecx,dword ptr [ebp-68]
 0050F636    mov         edx,esi
 0050F638    xor         eax,eax
 0050F63A    call        Rect
 0050F63F    push        esi
 0050F640    push        edi
 0050F641    lea         esi,[ebp-94]
 0050F647    lea         edi,[ebp-40]
 0050F64A    movs        dword ptr [edi],dword ptr [esi]
 0050F64B    movs        dword ptr [edi],dword ptr [esi]
 0050F64C    movs        dword ptr [edi],dword ptr [esi]
 0050F64D    movs        dword ptr [edi],dword ptr [esi]
 0050F64E    pop         edi
 0050F64F    pop         esi
 0050F650    lea         edx,[ebp-1C]
 0050F653    mov         eax,dword ptr [edi]
 0050F655    mov         ecx,dword ptr [eax]
 0050F657    call        dword ptr [ecx-14]
 0050F65A    mov         eax,dword ptr [ebp-64]
 0050F65D    add         esi,eax
 0050F65F    inc         ebx
 0050F660    mov         eax,dword ptr [edi]
 0050F662    mov         eax,dword ptr [eax+2A0]
 0050F668    mov         edx,dword ptr [eax]
 0050F66A    call        dword ptr [edx+14]
 0050F66D    cmp         ebx,eax
>0050F66F    jge         0050F67A
 0050F671    cmp         esi,dword ptr [ebp-4]
>0050F674    jl          0050F5DC
 0050F67A    xor         eax,eax
 0050F67C    pop         edx
 0050F67D    pop         ecx
 0050F67E    pop         ecx
 0050F67F    mov         dword ptr fs:[eax],edx
 0050F682    push        50F68F
 0050F687    ret
>0050F688    jmp         @HandleFinally
>0050F68D    jmp         0050F687
 0050F68F    pop         edi
 0050F690    pop         esi
 0050F691    pop         ebx
 0050F692    mov         esp,ebp
 0050F694    pop         ebp
 0050F695    ret
end;*}

//0050F698
{*procedure TCustomListBox.WMPaint(?:?);
begin
 0050F698    push        ebp
 0050F699    mov         ebp,esp
 0050F69B    add         esp,0FFFFFFF8
 0050F69E    mov         dword ptr [ebp-8],edx
 0050F6A1    mov         dword ptr [ebp-4],eax
 0050F6A4    mov         eax,dword ptr [ebp-8]
 0050F6A7    cmp         dword ptr [eax+4],0
>0050F6AB    je          0050F6B6
 0050F6AD    push        ebp
 0050F6AE    call        0050F48C
 0050F6B3    pop         ecx
>0050F6B4    jmp         0050F6C1
 0050F6B6    mov         edx,dword ptr [ebp-8]
 0050F6B9    mov         eax,dword ptr [ebp-4]
 0050F6BC    call        TWinControl.WMPaint
 0050F6C1    pop         ecx
 0050F6C2    pop         ecx
 0050F6C3    pop         ebp
 0050F6C4    ret
end;*}

//0050F6C8
{*procedure TCustomListBox.WMSize(?:?);
begin
 0050F6C8    push        ebx
 0050F6C9    mov         ebx,eax
 0050F6CB    mov         eax,ebx
 0050F6CD    call        TWinControl.WMSize
 0050F6D2    mov         eax,ebx
 0050F6D4    call        0050E6F8
 0050F6D9    pop         ebx
 0050F6DA    ret
end;*}

//0050F6DC
procedure TCustomListBox.sub_004E77C8;
begin
{*
 0050F6DC    push        ebx
 0050F6DD    add         esp,0FFFFFFDC
 0050F6E0    mov         ebx,eax
 0050F6E2    mov         dword ptr [esp+14],201
 0050F6EA    push        esp
 0050F6EB    call        user32.GetCursorPos
 0050F6F0    lea         ecx,[esp+8]
 0050F6F4    mov         edx,esp
 0050F6F6    mov         eax,ebx
 0050F6F8    call        TControl.ScreenToClient
 0050F6FD    movzx       eax,word ptr [esp+8]
 0050F702    mov         word ptr [esp+10],ax
 0050F707    movzx       eax,word ptr [esp+0C]
 0050F70C    mov         word ptr [esp+12],ax
 0050F711    mov         eax,dword ptr [esp+10]
 0050F715    mov         dword ptr [esp+1C],eax
 0050F719    xor         eax,eax
 0050F71B    mov         dword ptr [esp+18],eax
 0050F71F    xor         eax,eax
 0050F721    mov         dword ptr [esp+20],eax
 0050F725    lea         edx,[esp+14]
 0050F729    mov         eax,ebx
 0050F72B    mov         ecx,dword ptr [eax]
 0050F72D    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0050F730    mov         dword ptr [esp+14],202
 0050F738    lea         edx,[esp+14]
 0050F73C    mov         eax,ebx
 0050F73E    mov         ecx,dword ptr [eax]
 0050F740    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 0050F743    add         esp,24
 0050F746    pop         ebx
 0050F747    ret
*}
end;

//0050F748
{*procedure sub_0050F748(?:?; ?:?; ?:?);
begin
 0050F748    push        ebp
 0050F749    mov         ebp,esp
 0050F74B    add         esp,0FFFFFFE8
 0050F74E    push        ebx
 0050F74F    push        esi
 0050F750    push        edi
 0050F751    xor         ebx,ebx
 0050F753    mov         dword ptr [ebp-4],ebx
 0050F756    mov         esi,ecx
 0050F758    lea         edi,[ebp-18]
 0050F75B    movs        dword ptr [edi],dword ptr [esi]
 0050F75C    movs        dword ptr [edi],dword ptr [esi]
 0050F75D    movs        dword ptr [edi],dword ptr [esi]
 0050F75E    movs        dword ptr [edi],dword ptr [esi]
 0050F75F    mov         edi,edx
 0050F761    mov         ebx,eax
 0050F763    xor         eax,eax
 0050F765    push        ebp
 0050F766    push        50F85B
 0050F76B    push        dword ptr fs:[eax]
 0050F76E    mov         dword ptr fs:[eax],esp
 0050F771    cmp         word ptr [ebx+2E2],0;TCustomListBox.?f2E2:word
>0050F779    je          0050F799
 0050F77B    lea         eax,[ebp-18]
 0050F77E    push        eax
 0050F77F    movzx       eax,word ptr [ebp+8]
 0050F783    push        eax
 0050F784    mov         ecx,edi
 0050F786    mov         edx,ebx
 0050F788    mov         eax,dword ptr [ebx+2E4];TCustomListBox.?f2E4:dword
 0050F78E    call        dword ptr [ebx+2E0];TCustomListBox.FOnDrawItem
>0050F794    jmp         0050F845
 0050F799    lea         edx,[ebp-18]
 0050F79C    mov         eax,dword ptr [ebx+2B0];TCustomListBox.FCanvas:TCanvas
 0050F7A2    mov         ecx,dword ptr [eax]
 0050F7A4    call        dword ptr [ecx+54];TCanvas.FillRect
 0050F7A7    mov         eax,ebx
 0050F7A9    mov         edx,dword ptr [eax]
 0050F7AB    call        dword ptr [edx+124];TCustomListBox.GetCount
 0050F7B1    cmp         edi,eax
>0050F7B3    jge         0050F845
 0050F7B9    mov         edx,824
 0050F7BE    mov         eax,ebx
 0050F7C0    call        TControl.DrawTextBiDiModeFlags
 0050F7C5    mov         dword ptr [ebp-8],eax
 0050F7C8    mov         eax,ebx
 0050F7CA    mov         si,0FFC6
 0050F7CE    call        @CallDynaInst;TControl.sub_004E7698
 0050F7D3    test        al,al
>0050F7D5    jne         0050F7DD
 0050F7D7    add         dword ptr [ebp-18],2
>0050F7DB    jmp         0050F7E1
 0050F7DD    sub         dword ptr [ebp-10],2
 0050F7E1    lea         eax,[ebp-4]
 0050F7E4    call        @UStrClr
 0050F7E9    movzx       eax,byte ptr [ebx+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050F7F0    add         al,0FD
 0050F7F2    sub         al,2
>0050F7F4    jae         0050F804
 0050F7F6    lea         ecx,[ebp-4]
 0050F7F9    mov         edx,edi
 0050F7FB    mov         eax,ebx
 0050F7FD    call        00510170
>0050F802    jmp         0050F814
 0050F804    lea         ecx,[ebp-4]
 0050F807    mov         edx,edi
 0050F809    mov         eax,dword ptr [ebx+2A0];TCustomListBox.FItems:TStrings
 0050F80F    mov         esi,dword ptr [eax]
 0050F811    call        dword ptr [esi+0C];TStrings.Get
 0050F814    mov         eax,dword ptr [ebx+2B0];TCustomListBox.FCanvas:TCanvas
 0050F81A    call        TCanvas.GetHandle
 0050F81F    mov         esi,eax
 0050F821    mov         ebx,dword ptr [ebp-4]
 0050F824    test        ebx,ebx
>0050F826    je          0050F82D
 0050F828    sub         ebx,4
 0050F82B    mov         ebx,dword ptr [ebx]
 0050F82D    mov         eax,dword ptr [ebp-8]
 0050F830    push        eax
 0050F831    lea         eax,[ebp-18]
 0050F834    push        eax
 0050F835    push        ebx
 0050F836    mov         eax,dword ptr [ebp-4]
 0050F839    call        @UStrToPWChar
 0050F83E    push        eax
 0050F83F    push        esi
 0050F840    call        user32.DrawTextW
 0050F845    xor         eax,eax
 0050F847    pop         edx
 0050F848    pop         ecx
 0050F849    pop         ecx
 0050F84A    mov         dword ptr fs:[eax],edx
 0050F84D    push        50F862
 0050F852    lea         eax,[ebp-4]
 0050F855    call        @UStrClr
 0050F85A    ret
>0050F85B    jmp         @HandleFinally
>0050F860    jmp         0050F852
 0050F862    pop         edi
 0050F863    pop         esi
 0050F864    pop         ebx
 0050F865    mov         esp,ebp
 0050F867    pop         ebp
 0050F868    ret         4
end;*}

//0050F86C
{*procedure sub_0050F86C(?:?);
begin
 0050F86C    push        ebx
 0050F86D    cmp         word ptr [eax+2EA],0;TCustomListBox.?f2EA:word
>0050F875    je          0050F88A
 0050F877    push        ecx
 0050F878    mov         ebx,eax
 0050F87A    mov         ecx,edx
 0050F87C    mov         edx,eax
 0050F87E    mov         eax,dword ptr [ebx+2EC];TCustomListBox.?f2EC:dword
 0050F884    call        dword ptr [ebx+2E8];TCustomListBox.FOnMeasureItem
 0050F88A    pop         ebx
 0050F88B    ret
end;*}

//0050F88C
{*function sub_0050F88C:?;
begin
 0050F88C    xor         eax,eax
 0050F88E    cmp         edx,1
>0050F891    jne         0050F896
 0050F893    mov         al,1
 0050F895    ret
 0050F896    cmp         edx,3
>0050F899    jne         0050F89F
 0050F89B    mov         al,1
>0050F89D    jmp         0050F8A6
 0050F89F    cmp         edx,4
>0050F8A2    jne         0050F8A6
 0050F8A4    mov         al,1
 0050F8A6    ret
end;*}

//0050F8A8
{*procedure TCustomListBox.sub_0050F8A8(?:?);
begin
 0050F8A8    push        ebx
 0050F8A9    push        esi
 0050F8AA    push        edi
 0050F8AB    push        ebp
 0050F8AC    mov         esi,eax
 0050F8AE    mov         edi,dword ptr [edx+8]
 0050F8B1    movzx       ebp,word ptr [edi+10]
 0050F8B5    mov         edx,dword ptr [edi+18]
 0050F8B8    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050F8BE    call        TCanvas.SetHandle
 0050F8C3    mov         edx,dword ptr [esi+74];TCustomListBox.FFont:TFont
 0050F8C6    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050F8CC    call        TCanvas.SetFont
 0050F8D1    mov         edx,dword ptr [esi+1D0];TCustomListBox.FBrush:TBrush
 0050F8D7    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050F8DD    call        TCanvas.SetBrush
 0050F8E2    call        TStyleManager.GetIsCustomStyleActive
 0050F8E7    test        al,al
>0050F8E9    je          0050F989
 0050F8EF    test        byte ptr [esi+188],2;TCustomListBox.FStyleElements:TStyleElements
>0050F8F6    je          0050F989
 0050F8FC    cmp         dword ptr [edi+8],0
>0050F900    jl          0050F946
 0050F902    test        bp,1
>0050F907    je          0050F946
 0050F909    call        StyleServices
 0050F90E    mov         edx,0FF00000D
 0050F913    call        TCustomStyleServices.GetSystemColor
 0050F918    mov         edx,eax
 0050F91A    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050F920    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0050F923    call        TBrush.SetColor
 0050F928    call        StyleServices
 0050F92D    mov         dl,2C
 0050F92F    call        TCustomStyleServices.GetStyleFontColor
 0050F934    mov         edx,eax
 0050F936    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050F93C    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0050F93F    call        TFont.SetColor
>0050F944    jmp         0050F9BC
 0050F946    call        StyleServices
 0050F94B    mov         dl,14
 0050F94D    call        TCustomStyleServices.GetStyleColor
 0050F952    mov         edx,eax
 0050F954    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050F95A    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0050F95D    call        TBrush.SetColor
 0050F962    test        byte ptr [esi+188],1;TCustomListBox.FStyleElements:TStyleElements
>0050F969    je          0050F9BC
 0050F96B    call        StyleServices
 0050F970    mov         dl,2B
 0050F972    call        TCustomStyleServices.GetStyleFontColor
 0050F977    mov         edx,eax
 0050F979    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050F97F    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0050F982    call        TFont.SetColor
>0050F987    jmp         0050F9BC
 0050F989    cmp         dword ptr [edi+8],0
>0050F98D    jl          0050F9BC
 0050F98F    test        bp,1
>0050F994    je          0050F9BC
 0050F996    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050F99C    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 0050F99F    mov         edx,0FF00000D
 0050F9A4    call        TBrush.SetColor
 0050F9A9    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050F9AF    mov         eax,dword ptr [eax+40];TCanvas.FFont:TFont
 0050F9B2    mov         edx,0FF00000E
 0050F9B7    call        TFont.SetColor
 0050F9BC    cmp         dword ptr [edi+8],0
>0050F9C0    jl          0050F9D5
 0050F9C2    push        ebp
 0050F9C3    lea         ecx,[edi+1C]
 0050F9C6    mov         edx,dword ptr [edi+8]
 0050F9C9    mov         eax,esi
 0050F9CB    mov         ebx,dword ptr [eax]
 0050F9CD    call        dword ptr [ebx+138];TCustomListBox.sub_0050F748
>0050F9D3    jmp         0050F9E3
 0050F9D5    lea         edx,[edi+1C]
 0050F9D8    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050F9DE    mov         ecx,dword ptr [eax]
 0050F9E0    call        dword ptr [ecx+54];TCanvas.FillRect
 0050F9E3    test        bp,10
>0050F9E8    je          0050FA00
 0050F9EA    call        TStyleManager.GetIsCustomStyleActive
 0050F9EF    test        al,al
>0050F9F1    jne         0050FA00
 0050F9F3    lea         eax,[edi+1C]
 0050F9F6    push        eax
 0050F9F7    mov         eax,dword ptr [edi+18]
 0050F9FA    push        eax
 0050F9FB    call        user32.DrawFocusRect
 0050FA00    xor         edx,edx
 0050FA02    mov         eax,dword ptr [esi+2B0];TCustomListBox.FCanvas:TCanvas
 0050FA08    call        TCanvas.SetHandle
 0050FA0D    pop         ebp
 0050FA0E    pop         edi
 0050FA0F    pop         esi
 0050FA10    pop         ebx
 0050FA11    ret
end;*}

//0050FA14
{*procedure TCustomListBox.sub_0050FA14(?:?);
begin
 0050FA14    push        ebx
 0050FA15    push        esi
 0050FA16    push        edi
 0050FA17    push        ecx
 0050FA18    mov         edi,eax
 0050FA1A    mov         eax,dword ptr [edx+8]
 0050FA1D    mov         esi,eax
 0050FA1F    mov         eax,dword ptr [edi+2B8];TCustomListBox.FItemHeight:Integer
 0050FA25    mov         dword ptr [esi+10],eax
 0050FA28    cmp         byte ptr [edi+2C0],2;TCustomListBox.FStyle:TListBoxStyle
>0050FA2F    jne         0050FA49
 0050FA31    mov         dword ptr [esp],eax
 0050FA34    mov         ecx,esp
 0050FA36    mov         edx,dword ptr [esi+8]
 0050FA39    mov         eax,edi
 0050FA3B    mov         ebx,dword ptr [eax]
 0050FA3D    call        dword ptr [ebx+13C];TCustomListBox.sub_0050F86C
 0050FA43    mov         eax,dword ptr [esp]
 0050FA46    mov         dword ptr [esi+10],eax
 0050FA49    pop         edx
 0050FA4A    pop         edi
 0050FA4B    pop         esi
 0050FA4C    pop         ebx
 0050FA4D    ret
end;*}

//0050FA50
{*procedure TCustomListBox.CMCtl3DChanged(?:?);
begin
 0050FA50    push        ebx
 0050FA51    push        esi
 0050FA52    mov         esi,edx
 0050FA54    mov         ebx,eax
 0050FA56    mov         eax,[007C4770];^gvar_007CA5E0
 0050FA5B    cmp         byte ptr [eax],0
>0050FA5E    je          0050FA70
 0050FA60    cmp         byte ptr [ebx+2AC],1;TCustomListBox.FBorderStyle:TBorderStyle
>0050FA67    jne         0050FA70
 0050FA69    mov         eax,ebx
 0050FA6B    call        TWinControl.RecreateWnd
 0050FA70    mov         edx,esi
 0050FA72    mov         eax,ebx
 0050FA74    call        TWinControl.CMCtl3DChanged
 0050FA79    pop         esi
 0050FA7A    pop         ebx
 0050FA7B    ret
end;*}

//0050FA7C
{*procedure TCustomListBox.CMExit(?:?);
begin
 0050FA7C    push        ebp
 0050FA7D    mov         ebp,esp
 0050FA7F    add         esp,0FFFFFFF4
 0050FA82    push        ebx
 0050FA83    push        esi
 0050FA84    push        edi
 0050FA85    xor         ecx,ecx
 0050FA87    mov         dword ptr [ebp-0C],ecx
 0050FA8A    mov         ebx,edx
 0050FA8C    mov         dword ptr [ebp-4],eax
 0050FA8F    xor         eax,eax
 0050FA91    push        ebp
 0050FA92    push        50FB46
 0050FA97    push        dword ptr fs:[eax]
 0050FA9A    mov         dword ptr fs:[eax],esp
 0050FA9D    xor         eax,eax
 0050FA9F    push        ebp
 0050FAA0    push        50FB0C
 0050FAA5    push        dword ptr fs:[eax]
 0050FAA8    mov         dword ptr fs:[eax],esp
 0050FAAB    mov         eax,dword ptr [ebp-4]
 0050FAAE    mov         edx,dword ptr [eax]
 0050FAB0    call        dword ptr [edx+24];TComponent.GetObservers
 0050FAB3    mov         edx,1
 0050FAB8    mov         ecx,dword ptr [eax]
 0050FABA    call        dword ptr [ecx+14];TObservers.IsObserving
 0050FABD    test        al,al
>0050FABF    je          0050FADF
 0050FAC1    mov         eax,dword ptr [ebp-4]
 0050FAC4    mov         edx,dword ptr [eax]
 0050FAC6    call        dword ptr [edx+24];TComponent.GetObservers
 0050FAC9    mov         dword ptr [ebp-8],eax
 0050FACC    lea         edx,[ebp-0C]
 0050FACF    mov         eax,dword ptr [ebp-8]
 0050FAD2    call        TLinkObservers.GetEditLink
 0050FAD7    mov         eax,dword ptr [ebp-0C]
 0050FADA    mov         edx,dword ptr [eax]
 0050FADC    call        dword ptr [edx+20]
 0050FADF    mov         eax,dword ptr [ebp-4]
 0050FAE2    mov         edx,dword ptr [eax]
 0050FAE4    call        dword ptr [edx+24];TComponent.GetObservers
 0050FAE7    mov         edx,4
 0050FAEC    mov         ecx,dword ptr [eax]
 0050FAEE    call        dword ptr [ecx+14];TObservers.IsObserving
 0050FAF1    test        al,al
>0050FAF3    je          0050FB02
 0050FAF5    mov         eax,dword ptr [ebp-4]
 0050FAF8    mov         edx,dword ptr [eax]
 0050FAFA    call        dword ptr [edx+24];TComponent.GetObservers
 0050FAFD    call        TLinkObservers.ControlValueUpdate
 0050FB02    xor         eax,eax
 0050FB04    pop         edx
 0050FB05    pop         ecx
 0050FB06    pop         ecx
 0050FB07    mov         dword ptr fs:[eax],edx
>0050FB0A    jmp         0050FB26
>0050FB0C    jmp         @HandleAnyException
 0050FB11    mov         eax,dword ptr [ebp-4]
 0050FB14    mov         edx,dword ptr [eax]
 0050FB16    call        dword ptr [edx+104];TWinControl.SetFocus
 0050FB1C    call        @RaiseAgain
 0050FB21    call        @DoneExcept
 0050FB26    mov         edx,ebx
 0050FB28    mov         eax,dword ptr [ebp-4]
 0050FB2B    call        TWinControl.CMExit
 0050FB30    xor         eax,eax
 0050FB32    pop         edx
 0050FB33    pop         ecx
 0050FB34    pop         ecx
 0050FB35    mov         dword ptr fs:[eax],edx
 0050FB38    push        50FB4D
 0050FB3D    lea         eax,[ebp-0C]
 0050FB40    call        @IntfClear
 0050FB45    ret
>0050FB46    jmp         @HandleFinally
>0050FB4B    jmp         0050FB3D
 0050FB4D    pop         edi
 0050FB4E    pop         esi
 0050FB4F    pop         ebx
 0050FB50    mov         esp,ebp
 0050FB52    pop         ebp
 0050FB53    ret
end;*}

//0050FB54
procedure TCustomListBox.SelectAll;
begin
{*
 0050FB54    push        ebx
 0050FB55    push        esi
 0050FB56    push        edi
 0050FB57    mov         esi,eax
 0050FB59    cmp         byte ptr [esi+290],0;TCustomListBox.FMultiSelect:Boolean
>0050FB60    je          0050FB86
 0050FB62    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 0050FB68    mov         edx,dword ptr [eax]
 0050FB6A    call        dword ptr [edx+14];TStrings.GetCount
 0050FB6D    mov         ebx,eax
 0050FB6F    dec         ebx
 0050FB70    test        ebx,ebx
>0050FB72    jl          0050FB86
 0050FB74    inc         ebx
 0050FB75    xor         edi,edi
 0050FB77    mov         cl,1
 0050FB79    mov         edx,edi
 0050FB7B    mov         eax,esi
 0050FB7D    call        TCustomListBox.SetSelected
 0050FB82    inc         edi
 0050FB83    dec         ebx
>0050FB84    jne         0050FB77
 0050FB86    pop         edi
 0050FB87    pop         esi
 0050FB88    pop         ebx
 0050FB89    ret
*}
end;

//0050FB8C
{*procedure TCustomListBox.sub_004E8C70(?:?; ?:?; ?:?; ?:?);
begin
 0050FB8C    push        ebp
 0050FB8D    mov         ebp,esp
 0050FB8F    add         esp,0FFFFFFF4
 0050FB92    push        ebx
 0050FB93    push        esi
 0050FB94    xor         ebx,ebx
 0050FB96    mov         dword ptr [ebp-0C],ebx
 0050FB99    mov         word ptr [ebp-2],cx
 0050FB9D    mov         ebx,edx
 0050FB9F    mov         esi,eax
 0050FBA1    xor         eax,eax
 0050FBA3    push        ebp
 0050FBA4    push        50FC0C
 0050FBA9    push        dword ptr fs:[eax]
 0050FBAC    mov         dword ptr fs:[eax],esp
 0050FBAF    mov         eax,esi
 0050FBB1    mov         edx,dword ptr [eax]
 0050FBB3    call        dword ptr [edx+24];TComponent.GetObservers
 0050FBB6    mov         edx,1
 0050FBBB    mov         ecx,dword ptr [eax]
 0050FBBD    call        dword ptr [ecx+14];TObservers.IsObserving
 0050FBC0    test        al,al
>0050FBC2    je          0050FBE1
 0050FBC4    mov         eax,esi
 0050FBC6    mov         edx,dword ptr [eax]
 0050FBC8    call        dword ptr [edx+24];TComponent.GetObservers
 0050FBCB    mov         dword ptr [ebp-8],eax
 0050FBCE    lea         edx,[ebp-0C]
 0050FBD1    mov         eax,dword ptr [ebp-8]
 0050FBD4    call        TLinkObservers.GetEditLink
 0050FBD9    mov         eax,dword ptr [ebp-0C]
 0050FBDC    mov         edx,dword ptr [eax]
 0050FBDE    call        dword ptr [edx+24]
 0050FBE1    mov         eax,dword ptr [ebp+0C]
 0050FBE4    push        eax
 0050FBE5    mov         eax,dword ptr [ebp+8]
 0050FBE8    push        eax
 0050FBE9    movzx       ecx,word ptr [ebp-2]
 0050FBED    mov         edx,ebx
 0050FBEF    mov         eax,esi
 0050FBF1    call        TControl.sub_004E8C70
 0050FBF6    xor         eax,eax
 0050FBF8    pop         edx
 0050FBF9    pop         ecx
 0050FBFA    pop         ecx
 0050FBFB    mov         dword ptr fs:[eax],edx
 0050FBFE    push        50FC13
 0050FC03    lea         eax,[ebp-0C]
 0050FC06    call        @IntfClear
 0050FC0B    ret
>0050FC0C    jmp         @HandleFinally
>0050FC11    jmp         0050FC03
 0050FC13    pop         esi
 0050FC14    pop         ebx
 0050FC15    mov         esp,ebp
 0050FC17    pop         ebp
 0050FC18    ret         8
end;*}

//0050FC1C
{*procedure TCustomListBox.sub_004EE9E0(?:?; ?:?);
begin
 0050FC1C    push        ebp
 0050FC1D    mov         ebp,esp
 0050FC1F    add         esp,0FFFFFFF4
 0050FC22    push        ebx
 0050FC23    push        esi
 0050FC24    xor         ebx,ebx
 0050FC26    mov         dword ptr [ebp-0C],ebx
 0050FC29    mov         word ptr [ebp-2],cx
 0050FC2D    mov         esi,edx
 0050FC2F    mov         ebx,eax
 0050FC31    xor         eax,eax
 0050FC33    push        ebp
 0050FC34    push        50FCA9
 0050FC39    push        dword ptr fs:[eax]
 0050FC3C    mov         dword ptr fs:[eax],esp
 0050FC3F    mov         edx,esi
 0050FC41    movzx       ecx,word ptr [ebp-2]
 0050FC45    mov         eax,ebx
 0050FC47    call        TWinControl.sub_004EE9E0
 0050FC4C    mov         eax,ebx
 0050FC4E    mov         edx,dword ptr [eax]
 0050FC50    call        dword ptr [edx+24];TComponent.GetObservers
 0050FC53    mov         edx,1
 0050FC58    mov         ecx,dword ptr [eax]
 0050FC5A    call        dword ptr [ecx+14];TObservers.IsObserving
 0050FC5D    movzx       edx,word ptr [esi]
 0050FC60    add         edx,0FFFFFFDF
 0050FC63    sub         dx,8
>0050FC67    jae         0050FC93
 0050FC69    test        al,al
>0050FC6B    je          0050FC93
 0050FC6D    mov         eax,ebx
 0050FC6F    mov         edx,dword ptr [eax]
 0050FC71    call        dword ptr [edx+24];TComponent.GetObservers
 0050FC74    mov         dword ptr [ebp-8],eax
 0050FC77    lea         edx,[ebp-0C]
 0050FC7A    mov         eax,dword ptr [ebp-8]
 0050FC7D    call        TLinkObservers.GetEditLink
 0050FC82    mov         eax,dword ptr [ebp-0C]
 0050FC85    mov         edx,dword ptr [eax]
 0050FC87    call        dword ptr [edx+24]
 0050FC8A    test        al,al
>0050FC8C    jne         0050FC93
 0050FC8E    mov         word ptr [esi],0
 0050FC93    xor         eax,eax
 0050FC95    pop         edx
 0050FC96    pop         ecx
 0050FC97    pop         ecx
 0050FC98    mov         dword ptr fs:[eax],edx
 0050FC9B    push        50FCB0
 0050FCA0    lea         eax,[ebp-0C]
 0050FCA3    call        @IntfClear
 0050FCA8    ret
>0050FCA9    jmp         @HandleFinally
>0050FCAE    jmp         0050FCA0
 0050FCB0    pop         esi
 0050FCB1    pop         ebx
 0050FCB2    mov         esp,ebp
 0050FCB4    pop         ebp
 0050FCB5    ret
end;*}

//0050FCB8
{*procedure sub_0050FCB8(?:?);
begin
 0050FCB8    push        ebp
 0050FCB9    mov         ebp,esp
 0050FCBB    push        ebx
 0050FCBC    push        esi
 0050FCBD    mov         eax,dword ptr [ebp+8]
 0050FCC0    mov         eax,dword ptr [eax-4]
 0050FCC3    movzx       eax,byte ptr [eax+2C0]
 0050FCCA    add         al,0FD
 0050FCCC    sub         al,2
>0050FCCE    jae         0050FCEB
 0050FCD0    mov         eax,dword ptr [ebp+8]
 0050FCD3    mov         eax,dword ptr [eax-4]
 0050FCD6    mov         edx,dword ptr [eax+2A4]
 0050FCDC    mov         eax,dword ptr [ebp+8]
 0050FCDF    mov         eax,dword ptr [eax-4]
 0050FCE2    call        005101BC
 0050FCE7    mov         ebx,eax
>0050FCE9    jmp         0050FD12
 0050FCEB    mov         eax,dword ptr [ebp+8]
 0050FCEE    mov         eax,dword ptr [eax-4]
 0050FCF1    mov         eax,dword ptr [eax+2A4]
 0050FCF7    push        eax
 0050FCF8    mov         eax,dword ptr [ebp+8]
 0050FCFB    mov         eax,dword ptr [eax-4]
 0050FCFE    call        TWinControl.GetHandle
 0050FD03    or          ecx,0FFFFFFFF
 0050FD06    mov         edx,18F
 0050FD0B    call        SendTextMessage
 0050FD10    mov         ebx,eax
 0050FD12    cmp         ebx,0FFFFFFFF
>0050FD15    je          0050FD76
 0050FD17    mov         eax,dword ptr [ebp+8]
 0050FD1A    mov         eax,dword ptr [eax-4]
 0050FD1D    cmp         byte ptr [eax+290],0
>0050FD24    je          0050FD57
 0050FD26    mov         eax,dword ptr [ebp+8]
 0050FD29    mov         eax,dword ptr [eax-4]
 0050FD2C    mov         edx,dword ptr [eax]
 0050FD2E    call        dword ptr [edx+118]
 0050FD34    movzx       esi,bx
 0050FD37    mov         eax,esi
 0050FD39    shl         esi,10
 0050FD3C    or          eax,esi
 0050FD3E    push        eax
 0050FD3F    push        1
 0050FD41    push        19B
 0050FD46    mov         eax,dword ptr [ebp+8]
 0050FD49    mov         eax,dword ptr [eax-4]
 0050FD4C    call        TWinControl.GetHandle
 0050FD51    push        eax
 0050FD52    call        user32.SendMessageW
 0050FD57    mov         eax,dword ptr [ebp+8]
 0050FD5A    mov         eax,dword ptr [eax-4]
 0050FD5D    mov         edx,ebx
 0050FD5F    mov         ecx,dword ptr [eax]
 0050FD61    call        dword ptr [ecx+10C]
 0050FD67    mov         eax,dword ptr [ebp+8]
 0050FD6A    mov         eax,dword ptr [eax-4]
 0050FD6D    mov         si,0FFEB
 0050FD71    call        @CallDynaInst
 0050FD76    mov         eax,dword ptr [ebp+8]
 0050FD79    mov         eax,dword ptr [eax-8]
 0050FD7C    movzx       eax,word ptr [eax]
 0050FD7F    sub         ax,8
>0050FD83    je          0050FD9C
 0050FD85    sub         ax,5
>0050FD89    je          0050FD9C
 0050FD8B    sub         ax,0E
>0050FD8F    je          0050FD9C
 0050FD91    mov         eax,dword ptr [ebp+8]
 0050FD94    mov         eax,dword ptr [eax-8]
 0050FD97    mov         word ptr [eax],0
 0050FD9C    pop         esi
 0050FD9D    pop         ebx
 0050FD9E    pop         ebp
 0050FD9F    ret
end;*}

//0050FDA0
{*procedure TCustomListBox.sub_004EEC30(?:?);
begin
 0050FDA0    push        ebp
 0050FDA1    mov         ebp,esp
 0050FDA3    add         esp,0FFFFFFB8
 0050FDA6    push        ebx
 0050FDA7    push        esi
 0050FDA8    xor         ecx,ecx
 0050FDAA    mov         dword ptr [ebp-48],ecx
 0050FDAD    mov         dword ptr [ebp-40],ecx
 0050FDB0    mov         dword ptr [ebp-44],ecx
 0050FDB3    mov         dword ptr [ebp-3C],ecx
 0050FDB6    mov         dword ptr [ebp-38],ecx
 0050FDB9    mov         dword ptr [ebp-34],ecx
 0050FDBC    mov         dword ptr [ebp-8],edx
 0050FDBF    mov         dword ptr [ebp-4],eax
 0050FDC2    xor         eax,eax
 0050FDC4    push        ebp
 0050FDC5    push        51006E
 0050FDCA    push        dword ptr fs:[eax]
 0050FDCD    mov         dword ptr fs:[eax],esp
 0050FDD0    mov         eax,dword ptr [ebp-4]
 0050FDD3    mov         edx,dword ptr [eax]
 0050FDD5    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050FDDB    mov         dword ptr [ebp-0C],eax
 0050FDDE    mov         edx,dword ptr [ebp-8]
 0050FDE1    mov         eax,dword ptr [ebp-4]
 0050FDE4    call        TWinControl.sub_004EEC30
 0050FDE9    mov         eax,dword ptr [ebp-4]
 0050FDEC    mov         edx,dword ptr [eax]
 0050FDEE    call        dword ptr [edx+24];TComponent.GetObservers
 0050FDF1    mov         edx,1
 0050FDF6    mov         ecx,dword ptr [eax]
 0050FDF8    call        dword ptr [ecx+14];TObservers.IsObserving
 0050FDFB    test        al,al
>0050FDFD    je          0050FE7C
 0050FDFF    mov         eax,dword ptr [ebp-8]
 0050FE02    movzx       eax,word ptr [eax]
 0050FE05    sub         ax,1B
>0050FE09    je          0050FE5E
 0050FE0B    add         eax,0FFFFFFFB
 0050FE0E    sub         ax,0FFE0
>0050FE12    jae         0050FE7C
 0050FE14    mov         eax,dword ptr [ebp-4]
 0050FE17    mov         edx,dword ptr [eax]
 0050FE19    call        dword ptr [edx+24];TComponent.GetObservers
 0050FE1C    mov         dword ptr [ebp-10],eax
 0050FE1F    lea         edx,[ebp-34]
 0050FE22    mov         eax,dword ptr [ebp-10]
 0050FE25    call        TLinkObservers.GetEditLink
 0050FE2A    mov         eax,dword ptr [ebp-34]
 0050FE2D    mov         edx,dword ptr [eax]
 0050FE2F    call        dword ptr [edx+24]
 0050FE32    test        al,al
>0050FE34    jne         0050FE40
 0050FE36    mov         eax,dword ptr [ebp-8]
 0050FE39    mov         word ptr [eax],0
>0050FE3E    jmp         0050FE7C
 0050FE40    mov         eax,dword ptr [ebp-4]
 0050FE43    mov         edx,dword ptr [eax]
 0050FE45    call        dword ptr [edx+24];TComponent.GetObservers
 0050FE48    mov         ebx,eax
 0050FE4A    lea         edx,[ebp-38]
 0050FE4D    mov         eax,ebx
 0050FE4F    call        TLinkObservers.GetEditLink
 0050FE54    mov         eax,dword ptr [ebp-38]
 0050FE57    mov         edx,dword ptr [eax]
 0050FE59    call        dword ptr [edx+2C]
>0050FE5C    jmp         0050FE7C
 0050FE5E    mov         eax,dword ptr [ebp-4]
 0050FE61    mov         edx,dword ptr [eax]
 0050FE63    call        dword ptr [edx+24];TComponent.GetObservers
 0050FE66    mov         dword ptr [ebp-14],eax
 0050FE69    lea         edx,[ebp-3C]
 0050FE6C    mov         eax,dword ptr [ebp-14]
 0050FE6F    call        TLinkObservers.GetEditLink
 0050FE74    mov         eax,dword ptr [ebp-3C]
 0050FE77    mov         edx,dword ptr [eax]
 0050FE79    call        dword ptr [edx+28]
 0050FE7C    mov         eax,dword ptr [ebp-4]
 0050FE7F    cmp         byte ptr [eax+298],0;TCustomListBox.FAutoComplete:Boolean
>0050FE86    je          00510040
 0050FE8C    call        kernel32.GetTickCount
 0050FE91    mov         edx,dword ptr [ebp-4]
 0050FE94    sub         eax,dword ptr [edx+2A8]
 0050FE9A    mov         edx,dword ptr [ebp-4]
 0050FE9D    cmp         eax,dword ptr [edx+308];TCustomListBox.FAutoCompleteDelay:Cardinal
>0050FEA3    jb          0050FEB2
 0050FEA5    mov         eax,dword ptr [ebp-4]
 0050FEA8    add         eax,2A4;TCustomListBox.FFilter:string
 0050FEAD    call        @UStrClr
 0050FEB2    call        kernel32.GetTickCount
 0050FEB7    mov         edx,dword ptr [ebp-4]
 0050FEBA    mov         dword ptr [edx+2A8],eax;TCustomListBox.FLastTime:Cardinal
 0050FEC0    mov         eax,dword ptr [ebp-8]
 0050FEC3    movzx       eax,word ptr [eax]
 0050FEC6    cmp         ax,8
>0050FECA    je          0050FFA3
 0050FED0    mov         eax,dword ptr [ebp-8]
 0050FED3    cmp         word ptr [eax],0D800
>0050FED8    jb          0050FEE4
 0050FEDA    mov         eax,dword ptr [ebp-8]
 0050FEDD    cmp         word ptr [eax],0DFFF
>0050FEE2    jbe         0050FEE8
 0050FEE4    xor         eax,eax
>0050FEE6    jmp         0050FEEA
 0050FEE8    mov         al,1
 0050FEEA    test        al,al
>0050FEEC    je          0050FF5B
 0050FEEE    push        1
 0050FEF0    push        102
 0050FEF5    push        102
 0050FEFA    mov         eax,dword ptr [ebp-4]
 0050FEFD    call        TWinControl.GetHandle
 0050FF02    push        eax
 0050FF03    lea         eax,[ebp-30]
 0050FF06    push        eax
 0050FF07    call        user32.PeekMessageW
 0050FF0C    test        eax,eax
>0050FF0E    je          0050FFEB
 0050FF14    mov         eax,dword ptr [ebp-4]
 0050FF17    push        dword ptr [eax+2A4];TCustomListBox.FFilter:string
 0050FF1D    lea         eax,[ebp-40]
 0050FF20    mov         edx,dword ptr [ebp-8]
 0050FF23    movzx       edx,word ptr [edx]
 0050FF26    call        @UStrFromWChar
 0050FF2B    push        dword ptr [ebp-40]
 0050FF2E    lea         eax,[ebp-44]
 0050FF31    mov         edx,dword ptr [ebp-28]
 0050FF34    call        @UStrFromWChar
 0050FF39    push        dword ptr [ebp-44]
 0050FF3C    mov         eax,dword ptr [ebp-4]
 0050FF3F    add         eax,2A4;TCustomListBox.FFilter:string
 0050FF44    mov         edx,3
 0050FF49    call        @UStrCatN
 0050FF4E    mov         eax,dword ptr [ebp-8]
 0050FF51    mov         word ptr [eax],0
>0050FF56    jmp         0050FFEB
 0050FF5B    lea         eax,[ebp-48]
 0050FF5E    mov         edx,dword ptr [ebp-8]
 0050FF61    movzx       edx,word ptr [edx]
 0050FF64    call        @UStrFromWChar
 0050FF69    mov         edx,dword ptr [ebp-48]
 0050FF6C    mov         eax,dword ptr [ebp-4]
 0050FF6F    add         eax,2A4;TCustomListBox.FFilter:string
 0050FF74    call        @UStrCat
>0050FF79    jmp         0050FFEB
 0050FF7B    mov         eax,dword ptr [ebp-4]
 0050FF7E    mov         esi,dword ptr [eax+2A4];TCustomListBox.FFilter:string
 0050FF84    mov         ebx,esi
 0050FF86    test        ebx,ebx
>0050FF88    je          0050FF8F
 0050FF8A    sub         ebx,4
 0050FF8D    mov         ebx,dword ptr [ebx]
 0050FF8F    mov         eax,dword ptr [ebp-4]
 0050FF92    add         eax,2A4;TCustomListBox.FFilter:string
 0050FF97    mov         ecx,1
 0050FF9C    mov         edx,ebx
 0050FF9E    call        @UStrDelete
 0050FFA3    mov         eax,dword ptr [ebp-4]
 0050FFA6    mov         eax,dword ptr [eax+2A4];TCustomListBox.FFilter:string
 0050FFAC    call        @UStrLen
 0050FFB1    mov         edx,eax
 0050FFB3    mov         eax,dword ptr [ebp-4]
 0050FFB6    mov         eax,dword ptr [eax+2A4];TCustomListBox.FFilter:string
 0050FFBC    call        00424DC0
 0050FFC1    cmp         al,2
>0050FFC3    je          0050FF7B
 0050FFC5    mov         eax,dword ptr [ebp-4]
 0050FFC8    mov         eax,dword ptr [eax+2A4];TCustomListBox.FFilter:string
 0050FFCE    test        eax,eax
>0050FFD0    je          0050FFD7
 0050FFD2    sub         eax,4
 0050FFD5    mov         eax,dword ptr [eax]
 0050FFD7    mov         edx,dword ptr [ebp-4]
 0050FFDA    add         edx,2A4;TCustomListBox.FFilter:string
 0050FFE0    mov         ecx,1
 0050FFE5    xchg        eax,edx
 0050FFE6    call        @UStrDelete
 0050FFEB    mov         eax,dword ptr [ebp-4]
 0050FFEE    mov         eax,dword ptr [eax+2A4];TCustomListBox.FFilter:string
 0050FFF4    test        eax,eax
>0050FFF6    je          0050FFFD
 0050FFF8    sub         eax,4
 0050FFFB    mov         eax,dword ptr [eax]
 0050FFFD    test        eax,eax
>0050FFFF    jle         0051000A
 00510001    push        ebp
 00510002    call        0050FCB8
 00510007    pop         ecx
>00510008    jmp         00510023
 0051000A    xor         edx,edx
 0051000C    mov         eax,dword ptr [ebp-4]
 0051000F    mov         ecx,dword ptr [eax]
 00510011    call        dword ptr [ecx+10C];TCustomListBox.sub_0050E828
 00510017    mov         eax,dword ptr [ebp-4]
 0051001A    mov         si,0FFEB
 0051001E    call        @CallDynaInst;TControl.Click
 00510023    mov         eax,dword ptr [ebp-4]
 00510026    mov         edx,dword ptr [eax]
 00510028    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0051002E    cmp         eax,dword ptr [ebp-0C]
>00510031    je          00510040
 00510033    mov         eax,dword ptr [ebp-4]
 00510036    mov         edx,dword ptr [eax]
 00510038    call        dword ptr [edx+24];TComponent.GetObservers
 0051003B    call        004A1D04
 00510040    xor         eax,eax
 00510042    pop         edx
 00510043    pop         ecx
 00510044    pop         ecx
 00510045    mov         dword ptr fs:[eax],edx
 00510048    push        510075
 0051004D    lea         eax,[ebp-48]
 00510050    mov         edx,3
 00510055    call        @UStrArrayClr
 0051005A    lea         eax,[ebp-3C]
 0051005D    mov         edx,dword ptr ds:[4782BC];IEditLinkObserver
 00510063    mov         ecx,3
 00510068    call        @FinalizeArray
 0051006D    ret
>0051006E    jmp         @HandleFinally
>00510073    jmp         0051004D
 00510075    pop         esi
 00510076    pop         ebx
 00510077    mov         esp,ebp
 00510079    pop         ebp
 0051007A    ret
end;*}

//0051007C
procedure sub_0051007C;
begin
{*
 0051007C    push        esi
 0051007D    mov         esi,eax
 0051007F    mov         eax,dword ptr [esi+2A0];TCustomListBox.FItems:TStrings
 00510085    mov         ecx,dword ptr [eax]
 00510087    call        dword ptr [ecx+8];TStrings.Assign
 0051008A    pop         esi
 0051008B    ret
*}
end;

//0051008C
procedure sub_0051008C(?:TCustomListBox; ?:Integer);
begin
{*
 0051008C    push        ebp
 0051008D    mov         ebp,esp
 0051008F    add         esp,0FFFFFFF0
 00510092    push        ebx
 00510093    push        esi
 00510094    xor         ecx,ecx
 00510096    mov         dword ptr [ebp-10],ecx
 00510099    mov         dword ptr [ebp-0C],ecx
 0051009C    mov         esi,edx
 0051009E    mov         ebx,eax
 005100A0    xor         eax,eax
 005100A2    push        ebp
 005100A3    push        510161
 005100A8    push        dword ptr fs:[eax]
 005100AB    mov         dword ptr fs:[eax],esp
 005100AE    movzx       eax,byte ptr [ebx+2C0];TCustomListBox.FStyle:TListBoxStyle
 005100B5    add         al,0FD
 005100B7    sub         al,2
>005100B9    jae         00510115
 005100BB    push        0
 005100BD    push        esi
 005100BE    push        1A7
 005100C3    mov         eax,ebx
 005100C5    call        TWinControl.GetHandle
 005100CA    push        eax
 005100CB    call        user32.SendMessageW
 005100D0    cmp         eax,0FFFFFFFF
>005100D3    je          005100E2
 005100D5    cmp         eax,0FFFFFFFE
>005100D8    je          005100E2
 005100DA    mov         dword ptr [ebx+29C],esi;TCustomListBox.FCount:Integer
>005100E0    jmp         00510146
 005100E2    mov         eax,dword ptr [ebx+8];TCustomListBox.FName:TComponentName
 005100E5    mov         dword ptr [ebp-8],eax
 005100E8    mov         byte ptr [ebp-4],11
 005100EC    lea         eax,[ebp-8]
 005100EF    push        eax
 005100F0    push        0
 005100F2    lea         edx,[ebp-0C]
 005100F5    mov         eax,[007C4BA0];^SResString330:TResStringRec
 005100FA    call        LoadResString
 005100FF    mov         ecx,dword ptr [ebp-0C]
 00510102    mov         dl,1
 00510104    mov         eax,[004174D0];Exception
 00510109    call        Exception.CreateFmt;Exception.Create
 0051010E    call        @RaiseExcept
>00510113    jmp         00510146
 00510115    mov         eax,dword ptr [ebx+8];TCustomListBox.FName:TComponentName
 00510118    mov         dword ptr [ebp-8],eax
 0051011B    mov         byte ptr [ebp-4],11
 0051011F    lea         eax,[ebp-8]
 00510122    push        eax
 00510123    push        0
 00510125    lea         edx,[ebp-10]
 00510128    mov         eax,[007C4518];^SResString331:TResStringRec
 0051012D    call        LoadResString
 00510132    mov         ecx,dword ptr [ebp-10]
 00510135    mov         dl,1
 00510137    mov         eax,[004174D0];Exception
 0051013C    call        Exception.CreateFmt;Exception.Create
 00510141    call        @RaiseExcept
 00510146    xor         eax,eax
 00510148    pop         edx
 00510149    pop         ecx
 0051014A    pop         ecx
 0051014B    mov         dword ptr fs:[eax],edx
 0051014E    push        510168
 00510153    lea         eax,[ebp-10]
 00510156    mov         edx,2
 0051015B    call        @UStrArrayClr
 00510160    ret
>00510161    jmp         @HandleFinally
>00510166    jmp         00510153
 00510168    pop         esi
 00510169    pop         ebx
 0051016A    mov         esp,ebp
 0051016C    pop         ebp
 0051016D    ret
*}
end;

//00510170
{*procedure sub_00510170(?:TCustomListBox; ?:?);
begin
 00510170    push        ebx
 00510171    cmp         word ptr [eax+2F2],0;TCustomListBox.?f2F2:word
>00510179    je          0051018E
 0051017B    push        ecx
 0051017C    mov         ebx,eax
 0051017E    mov         ecx,edx
 00510180    mov         edx,eax
 00510182    mov         eax,dword ptr [ebx+2F4];TCustomListBox.?f2F4:dword
 00510188    call        dword ptr [ebx+2F0];TCustomListBox.FOnData
 0051018E    pop         ebx
 0051018F    ret
end;*}

//00510190
{*function sub_00510190(?:TCustomListBox; ?:?):?;
begin
 00510190    push        ebx
 00510191    push        ecx
 00510192    xor         ecx,ecx
 00510194    mov         dword ptr [esp],ecx
 00510197    cmp         word ptr [eax+302],0;TCustomListBox.?f302:word
>0051019F    je          005101B4
 005101A1    push        esp
 005101A2    mov         ebx,eax
 005101A4    mov         ecx,edx
 005101A6    mov         edx,eax
 005101A8    mov         eax,dword ptr [ebx+304];TCustomListBox.FInBufferedPrintClient:Boolean
 005101AE    call        dword ptr [ebx+300];TCustomListBox.FOnDataObject
 005101B4    mov         eax,dword ptr [esp]
 005101B7    pop         edx
 005101B8    pop         ebx
 005101B9    ret
end;*}

//005101BC
{*function sub_005101BC(?:TCustomListBox; ?:string):?;
begin
 005101BC    push        ebx
 005101BD    cmp         word ptr [eax+2FA],0;TCustomListBox.?f2FA:word
>005101C5    je          005101DB
 005101C7    mov         ebx,eax
 005101C9    mov         ecx,edx
 005101CB    mov         edx,eax
 005101CD    mov         eax,dword ptr [ebx+2FC];TCustomListBox.?f2FC:dword
 005101D3    call        dword ptr [ebx+2F8];TCustomListBox.FOnDataFind
 005101D9    pop         ebx
 005101DA    ret
 005101DB    or          eax,0FFFFFFFF
 005101DE    pop         ebx
 005101DF    ret
end;*}

//005101E0
{*function TListBox.GetScrollWidth:?;
begin
 005101E0    push        ebx
 005101E1    mov         ebx,eax
 005101E3    push        0
 005101E5    push        0
 005101E7    push        193
 005101EC    mov         eax,ebx
 005101EE    call        TWinControl.GetHandle
 005101F3    push        eax
 005101F4    call        user32.SendMessageW
 005101F9    pop         ebx
 005101FA    ret
end;*}

//005101FC
procedure TListBox.SetScrollWidth(Value:Integer);
begin
{*
 005101FC    push        ebx
 005101FD    push        esi
 005101FE    mov         esi,edx
 00510200    mov         ebx,eax
 00510202    mov         eax,ebx
 00510204    call        TListBox.GetScrollWidth
 00510209    cmp         esi,eax
>0051020B    je          00510222
 0051020D    push        0
 0051020F    push        esi
 00510210    push        194
 00510215    mov         eax,ebx
 00510217    call        TWinControl.GetHandle
 0051021C    push        eax
 0051021D    call        user32.SendMessageW
 00510222    pop         esi
 00510223    pop         ebx
 00510224    ret
*}
end;

//00510228
constructor TScrollBar.Create(AOwner:TComponent);
begin
{*
 00510228    push        ebx
 00510229    push        esi
 0051022A    test        dl,dl
>0051022C    je          00510236
 0051022E    add         esp,0FFFFFFF0
 00510231    call        @ClassCreate
 00510236    mov         ebx,edx
 00510238    mov         esi,eax
 0051023A    xor         edx,edx
 0051023C    mov         eax,esi
 0051023E    call        TWinControl.Create
 00510243    mov         edx,79
 00510248    mov         eax,esi
 0051024A    call        TControl.SetWidth
 0051024F    push        3
 00510251    call        user32.GetSystemMetrics
 00510256    mov         edx,eax
 00510258    mov         eax,esi
 0051025A    call        TControl.SetHeight
 0051025F    mov         dl,1
 00510261    mov         eax,esi
 00510263    call        TWinControl.SetTabStop
 00510268    mov         eax,[005102DC];0xD0 gvar_005102DC
 0051026D    mov         dword ptr [esi+60],eax;TScrollBar.FControlStyle:TControlStyle
 00510270    mov         byte ptr [esi+290],0;TScrollBar.FKind:TScrollBarKind
 00510277    xor         eax,eax
 00510279    mov         dword ptr [esi+294],eax;TScrollBar.FPosition:Integer
 0051027F    xor         eax,eax
 00510281    mov         dword ptr [esi+298],eax;TScrollBar.FMin:Integer
 00510287    mov         dword ptr [esi+29C],64;TScrollBar.FMax:Integer
 00510291    mov         word ptr [esi+2A8],1;TScrollBar.FSmallChange:TScrollBarInc
 0051029A    mov         word ptr [esi+2AA],1;TScrollBar.FLargeChange:TScrollBarInc
 005102A3    mov         eax,[007C4EF4];^gvar_007C7CB8:Cardinal
 005102A8    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>005102AC    je          005102BF
 005102AE    mov         eax,[007C4EC4];^gvar_0079EDDC
 005102B3    cmp         dword ptr [eax],2
>005102B6    jne         005102BF
 005102B8    mov         byte ptr [esi+1DC],0;TScrollBar.FImeMode:TImeMode
 005102BF    mov         eax,esi
 005102C1    test        bl,bl
>005102C3    je          005102D4
 005102C5    call        @AfterConstruction
 005102CA    pop         dword ptr fs:[0]
 005102D1    add         esp,0C
 005102D4    mov         eax,esi
 005102D6    pop         esi
 005102D7    pop         ebx
 005102D8    ret
*}
end;

Initialization
//0079D128
{*
 0079D128    sub         dword ptr ds:[7CA670],1
>0079D12F    jae         0079D147
 0079D131    mov         ecx,dword ptr ds:[5049B8];TScrollBarStyleHook
 0079D137    mov         edx,dword ptr ds:[502F40];TScrollBar
 0079D13D    mov         eax,[005738E0];TCustomStyleEngine
 0079D142    call        TCustomStyleEngine.RegisterStyleHook
 0079D147    ret
*}
Finalization
end.