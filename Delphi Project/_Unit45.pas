//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit45;

interface

uses
  SysUtils, Classes;

    procedure sub_0050D8E4;//0050D8E4
    function GetChecked:Boolean;//0050D8F4
    procedure GetControlsAlignment;//0050D8FC
    procedure SetAlignment(Value:TLeftRight);//0050D928
    //procedure sub_0050D93C(?:?);//0050D93C
    procedure SetChecked(Value:Boolean);//0050D9F0
    procedure CreateParams(var Params:TCreateParams);//0050DA7C
    procedure CreateWnd;//0050DAD8
    procedure CMCtl3DChanged;//0050DB00
    //procedure CMDialogChar(?:?);//0050DB08
    //procedure sub_0050DB98(?:?);//0050DB98
    procedure GetCount;//0050DBC8
    //procedure Get(?:?; ?:?);//0050DBE4
    //function sub_0050DCB8(?:?):?;//0050DCB8
    //procedure sub_0050DD4C(?:?; ?:?);//0050DD4C
    //procedure sub_0050DDCC(?:?; ?:?);//0050DDCC
    function Add(S:string):Integer;//0050DE08
    procedure Insert(Index:Integer; S:string);//0050DEA0
    procedure Delete(Index:Integer);//0050DF34
    procedure Exchange(Index1:Integer; Index2:Integer);//0050DF4C
    procedure Clear;//0050E0B8
    //procedure sub_0050E0CC(?:?);//0050E0CC
    procedure IndexOf(S:string);//0050E100
    procedure Move(CurIndex:Integer; NewIndex:Integer);//0050E13C
    constructor Create(AOwner:TComponent);//0050E250

implementation

//0050D8E4
procedure sub_0050D8E4;
begin
{*
 0050D8E4    push        esi
 0050D8E5    mov         esi,eax
 0050D8E7    mov         eax,esi
 0050D8E9    mov         edx,dword ptr [eax]
 0050D8EB    call        dword ptr [edx+0A8];TWinControl.Invalidate
 0050D8F1    pop         esi
 0050D8F2    ret
*}
end;

//0050D8F4
function TRadioButton.GetChecked:Boolean;
begin
{*
 0050D8F4    movzx       eax,byte ptr [eax+299];TRadioButton.FChecked:Boolean
 0050D8FB    ret
*}
end;

//0050D8FC
procedure TRadioButton.GetControlsAlignment;
begin
{*
 0050D8FC    push        ebx
 0050D8FD    push        esi
 0050D8FE    mov         ebx,eax
 0050D900    mov         eax,ebx
 0050D902    mov         si,0FFC6
 0050D906    call        @CallDynaInst;TControl.sub_004E7698
 0050D90B    test        al,al
>0050D90D    jne         0050D914
 0050D90F    mov         al,1
 0050D911    pop         esi
 0050D912    pop         ebx
 0050D913    ret
 0050D914    cmp         byte ptr [ebx+298],1;TRadioButton.FAlignment:TLeftRight
>0050D91B    jne         0050D921
 0050D91D    xor         eax,eax
>0050D91F    jmp         0050D923
 0050D921    mov         al,1
 0050D923    pop         esi
 0050D924    pop         ebx
 0050D925    ret
*}
end;

//0050D928
procedure TRadioButton.SetAlignment(Value:TLeftRight);
begin
{*
 0050D928    cmp         dl,byte ptr [eax+298];TRadioButton.FAlignment:TLeftRight
>0050D92E    je          0050D93B
 0050D930    mov         byte ptr [eax+298],dl;TRadioButton.FAlignment:TLeftRight
 0050D936    call        TWinControl.RecreateWnd
 0050D93B    ret
*}
end;

//0050D93C
{*procedure sub_0050D93C(?:?);
begin
 0050D93C    push        ebp
 0050D93D    mov         ebp,esp
 0050D93F    add         esp,0FFFFFFF8
 0050D942    push        ebx
 0050D943    push        esi
 0050D944    push        edi
 0050D945    mov         eax,dword ptr [ebp+8]
 0050D948    mov         eax,dword ptr [eax-4]
 0050D94B    mov         eax,dword ptr [eax+40]
 0050D94E    test        eax,eax
>0050D950    je          0050D9E6
 0050D956    mov         dword ptr [ebp-8],eax
 0050D959    mov         eax,dword ptr [ebp-8]
 0050D95C    call        TWinControl.GetControlCount
 0050D961    mov         esi,eax
 0050D963    dec         esi
 0050D964    test        esi,esi
>0050D966    jl          0050D9E6
 0050D968    inc         esi
 0050D969    mov         dword ptr [ebp-4],0
 0050D970    mov         edx,dword ptr [ebp-4]
 0050D973    mov         eax,dword ptr [ebp-8]
 0050D976    call        TWinControl.GetControl
 0050D97B    mov         ebx,eax
 0050D97D    mov         eax,dword ptr [ebp+8]
 0050D980    cmp         ebx,dword ptr [eax-4]
>0050D983    je          0050D9E0
 0050D985    mov         eax,ebx
 0050D987    mov         edx,dword ptr ds:[5009D8];TRadioButton
 0050D98D    call        @IsClass
 0050D992    test        al,al
>0050D994    je          0050D9E0
 0050D996    mov         edi,ebx
 0050D998    mov         eax,edi
 0050D99A    mov         edx,dword ptr [eax]
 0050D99C    call        dword ptr [edx+5C];TButton.GetAction
 0050D99F    test        eax,eax
>0050D9A1    je          0050D9D4
 0050D9A3    mov         eax,edi
 0050D9A5    mov         edx,dword ptr [eax]
 0050D9A7    call        dword ptr [edx+5C];TButton.GetAction
 0050D9AA    mov         edx,dword ptr ds:[4D55AC];TCustomAction
 0050D9B0    call        @IsClass
 0050D9B5    test        al,al
>0050D9B7    je          0050D9D4
 0050D9B9    mov         eax,edi
 0050D9BB    mov         edx,dword ptr [eax]
 0050D9BD    call        dword ptr [edx+5C];TButton.GetAction
 0050D9C0    cmp         byte ptr [eax+6A],0
>0050D9C4    je          0050D9D4
 0050D9C6    mov         eax,edi
 0050D9C8    mov         edx,dword ptr [eax]
 0050D9CA    call        dword ptr [edx+5C];TButton.GetAction
 0050D9CD    xor         edx,edx
 0050D9CF    mov         ecx,dword ptr [eax]
 0050D9D1    call        dword ptr [ecx+70]
 0050D9D4    xor         edx,edx
 0050D9D6    mov         eax,edi
 0050D9D8    mov         ecx,dword ptr [eax]
 0050D9DA    call        dword ptr [ecx+10C]
 0050D9E0    inc         dword ptr [ebp-4]
 0050D9E3    dec         esi
>0050D9E4    jne         0050D970
 0050D9E6    pop         edi
 0050D9E7    pop         esi
 0050D9E8    pop         ebx
 0050D9E9    pop         ecx
 0050D9EA    pop         ecx
 0050D9EB    pop         ebp
 0050D9EC    ret
end;*}

//0050D9F0
procedure TRadioButton.SetChecked(Value:Boolean);
begin
{*
 0050D9F0    push        ebp
 0050D9F1    mov         ebp,esp
 0050D9F3    push        ecx
 0050D9F4    push        ebx
 0050D9F5    push        esi
 0050D9F6    mov         ebx,edx
 0050D9F8    mov         dword ptr [ebp-4],eax
 0050D9FB    mov         eax,dword ptr [ebp-4]
 0050D9FE    cmp         bl,byte ptr [eax+299];TRadioButton.FChecked:Boolean
>0050DA04    je          0050DA74
 0050DA06    mov         eax,dword ptr [ebp-4]
 0050DA09    mov         byte ptr [eax+299],bl;TRadioButton.FChecked:Boolean
 0050DA0F    mov         edx,ebx
 0050DA11    mov         eax,dword ptr [ebp-4]
 0050DA14    call        TWinControl.SetTabStop
 0050DA19    mov         eax,dword ptr [ebp-4]
 0050DA1C    call        TWinControl.HandleAllocated
 0050DA21    test        al,al
>0050DA23    je          0050DA49
 0050DA25    push        0
 0050DA27    mov         eax,dword ptr [ebp-4]
 0050DA2A    mov         edx,dword ptr [eax]
 0050DA2C    call        dword ptr [edx+108];TRadioButton.GetChecked
 0050DA32    and         eax,7F
 0050DA35    push        eax
 0050DA36    push        0F1
 0050DA3B    mov         eax,dword ptr [ebp-4]
 0050DA3E    call        TWinControl.GetHandle
 0050DA43    push        eax
 0050DA44    call        user32.SendMessageW
 0050DA49    test        bl,bl
>0050DA4B    je          0050DA74
 0050DA4D    push        ebp
 0050DA4E    call        0050D93C
 0050DA53    pop         ecx
 0050DA54    mov         eax,dword ptr [ebp-4]
 0050DA57    call        TControl.Changed
 0050DA5C    mov         eax,dword ptr [ebp-4]
 0050DA5F    cmp         byte ptr [eax+290],0;TRadioButton.FClicksDisabled:Boolean
>0050DA66    jne         0050DA74
 0050DA68    mov         eax,dword ptr [ebp-4]
 0050DA6B    mov         si,0FFEB
 0050DA6F    call        @CallDynaInst;TControl.Click
 0050DA74    pop         esi
 0050DA75    pop         ebx
 0050DA76    pop         ecx
 0050DA77    pop         ebp
 0050DA78    ret
*}
end;

//0050DA7C
procedure TRadioButton.CreateParams(var Params:TCreateParams);
begin
{*
 0050DA7C    push        ebx
 0050DA7D    push        esi
 0050DA7E    push        edi
 0050DA7F    mov         edi,edx
 0050DA81    mov         ebx,eax
 0050DA83    mov         edx,edi
 0050DA85    mov         eax,ebx
 0050DA87    call        TButtonControl.CreateParams
 0050DA8C    mov         ecx,50DAC8;'B'
 0050DA91    mov         edx,edi
 0050DA93    mov         eax,ebx
 0050DA95    call        TWinControl.CreateSubClass
 0050DA9A    mov         eax,ebx
 0050DA9C    mov         si,0FFC6
 0050DAA0    call        @CallDynaInst;TControl.sub_004E7698
 0050DAA5    and         eax,7F
 0050DAA8    lea         eax,[eax*8+7A1418]
 0050DAAF    movzx       edx,byte ptr [ebx+298];TRadioButton.FAlignment:TLeftRight
 0050DAB6    mov         eax,dword ptr [eax+edx*4]
 0050DAB9    mov         edx,dword ptr [edi+4];TCreateParams.Style:DWORD
 0050DABC    or          edx,4
 0050DABF    or          eax,edx
 0050DAC1    mov         dword ptr [edi+4],eax;TCreateParams.Style:DWORD
 0050DAC4    pop         edi
 0050DAC5    pop         esi
 0050DAC6    pop         ebx
 0050DAC7    ret
*}
end;

//0050DAD8
procedure TRadioButton.CreateWnd;
begin
{*
 0050DAD8    push        ebx
 0050DAD9    mov         ebx,eax
 0050DADB    mov         eax,ebx
 0050DADD    call        TWinControl.CreateWnd
 0050DAE2    push        0
 0050DAE4    movzx       eax,byte ptr [ebx+299];TRadioButton.FChecked:Boolean
 0050DAEB    push        eax
 0050DAEC    push        0F1
 0050DAF1    mov         eax,ebx
 0050DAF3    call        TWinControl.GetHandle
 0050DAF8    push        eax
 0050DAF9    call        user32.SendMessageW
 0050DAFE    pop         ebx
 0050DAFF    ret
*}
end;

//0050DB00
procedure TRadioButton.CMCtl3DChanged;
begin
{*
 0050DB00    call        TWinControl.RecreateWnd
 0050DB05    ret
*}
end;

//0050DB08
{*procedure TRadioButton.CMDialogChar(?:?);
begin
 0050DB08    push        ebp
 0050DB09    mov         ebp,esp
 0050DB0B    add         esp,0FFFFFFF8
 0050DB0E    push        esi
 0050DB0F    push        edi
 0050DB10    xor         ecx,ecx
 0050DB12    mov         dword ptr [ebp-8],ecx
 0050DB15    mov         dword ptr [ebp-4],edx
 0050DB18    mov         edi,eax
 0050DB1A    xor         eax,eax
 0050DB1C    push        ebp
 0050DB1D    push        50DB8A
 0050DB22    push        dword ptr fs:[eax]
 0050DB25    mov         dword ptr fs:[eax],esp
 0050DB28    lea         edx,[ebp-8]
 0050DB2B    mov         eax,edi
 0050DB2D    call        TControl.GetText
 0050DB32    mov         edx,dword ptr [ebp-8]
 0050DB35    mov         eax,dword ptr [ebp-4]
 0050DB38    movzx       eax,word ptr [eax+4]
 0050DB3C    call        IsAccel
 0050DB41    test        al,al
>0050DB43    je          0050DB6A
 0050DB45    mov         eax,edi
 0050DB47    mov         si,0FFB4
 0050DB4B    call        @CallDynaInst;TWinControl.sub_004EFD3C
 0050DB50    test        al,al
>0050DB52    je          0050DB6A
 0050DB54    mov         eax,edi
 0050DB56    mov         edx,dword ptr [eax]
 0050DB58    call        dword ptr [edx+104];TWinControl.SetFocus
 0050DB5E    mov         eax,dword ptr [ebp-4]
 0050DB61    mov         dword ptr [eax+0C],1
>0050DB68    jmp         0050DB74
 0050DB6A    mov         edx,dword ptr [ebp-4]
 0050DB6D    mov         eax,edi
 0050DB6F    call        TWinControl.CMDialogChar
 0050DB74    xor         eax,eax
 0050DB76    pop         edx
 0050DB77    pop         ecx
 0050DB78    pop         ecx
 0050DB79    mov         dword ptr fs:[eax],edx
 0050DB7C    push        50DB91
 0050DB81    lea         eax,[ebp-8]
 0050DB84    call        @UStrClr
 0050DB89    ret
>0050DB8A    jmp         @HandleFinally
>0050DB8F    jmp         0050DB81
 0050DB91    pop         edi
 0050DB92    pop         esi
 0050DB93    pop         ecx
 0050DB94    pop         ecx
 0050DB95    pop         ebp
 0050DB96    ret
end;*}

//0050DB98
{*procedure TRadioButton.sub_0050DB98(?:?);
begin
 0050DB98    push        esi
 0050DB99    mov         esi,eax
 0050DB9B    movzx       eax,word ptr [edx+6]
 0050DB9F    sub         ax,1
>0050DBA3    jb          0050DBAD
 0050DBA5    sub         ax,4
>0050DBA9    je          0050DBBB
>0050DBAB    jmp         0050DBC6
 0050DBAD    mov         dl,1
 0050DBAF    mov         eax,esi
 0050DBB1    mov         ecx,dword ptr [eax]
 0050DBB3    call        dword ptr [ecx+10C];TRadioButton.SetChecked
 0050DBB9    pop         esi
 0050DBBA    ret
 0050DBBB    mov         eax,esi
 0050DBBD    mov         si,0FFEA
 0050DBC1    call        @CallDynaInst;TControl.sub_004E8C50
 0050DBC6    pop         esi
 0050DBC7    ret
end;*}

//0050DBC8
procedure TListBoxStrings.GetCount;
begin
{*
 0050DBC8    push        ebx
 0050DBC9    mov         ebx,eax
 0050DBCB    push        0
 0050DBCD    push        0
 0050DBCF    push        18B
 0050DBD4    mov         eax,dword ptr [ebx+2C];TListBoxStrings....................................ListBox:TCusto...
 0050DBD7    call        TWinControl.GetHandle
 0050DBDC    push        eax
 0050DBDD    call        user32.SendMessageW
 0050DBE2    pop         ebx
 0050DBE3    ret
*}
end;

//0050DBE4
{*procedure TListBoxStrings.Get(?:?; ?:?);
begin
 0050DBE4    push        ebp
 0050DBE5    mov         ebp,esp
 0050DBE7    add         esp,0FFFFFFF8
 0050DBEA    push        ebx
 0050DBEB    push        esi
 0050DBEC    push        edi
 0050DBED    xor         ebx,ebx
 0050DBEF    mov         dword ptr [ebp-8],ebx
 0050DBF2    mov         dword ptr [ebp-4],ecx
 0050DBF5    mov         edi,edx
 0050DBF7    mov         ebx,eax
 0050DBF9    xor         eax,eax
 0050DBFB    push        ebp
 0050DBFC    push        50DCA9
 0050DC01    push        dword ptr fs:[eax]
 0050DC04    mov         dword ptr fs:[eax],esp
 0050DC07    mov         esi,dword ptr [ebx+2C];TListBoxStrings.....................................ListBox:TCust...
 0050DC0A    movzx       eax,byte ptr [esi+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050DC11    add         al,0FD
 0050DC13    sub         al,2
>0050DC15    jae         0050DC25
 0050DC17    mov         ecx,dword ptr [ebp-4]
 0050DC1A    mov         edx,edi
 0050DC1C    mov         eax,esi
 0050DC1E    call        00510170
>0050DC23    jmp         0050DC93
 0050DC25    push        0
 0050DC27    push        edi
 0050DC28    push        18A
 0050DC2D    mov         eax,esi
 0050DC2F    call        TWinControl.GetHandle
 0050DC34    push        eax
 0050DC35    call        user32.SendMessageW
 0050DC3A    mov         esi,eax
 0050DC3C    cmp         esi,0FFFFFFFF
>0050DC3F    jne         0050DC5A
 0050DC41    lea         edx,[ebp-8]
 0050DC44    mov         eax,[007C4BB4];^SResString135:TResStringRec
 0050DC49    call        LoadResString
 0050DC4E    mov         edx,dword ptr [ebp-8]
 0050DC51    mov         ecx,edi
 0050DC53    mov         eax,ebx
 0050DC55    call        TStrings.Error
 0050DC5A    mov         eax,dword ptr [ebp-4]
 0050DC5D    mov         edx,esi
 0050DC5F    call        @UStrSetLength
 0050DC64    test        esi,esi
>0050DC66    je          0050DC93
 0050DC68    mov         eax,dword ptr [ebp-4]
 0050DC6B    mov         eax,dword ptr [eax]
 0050DC6D    call        @UStrToPWChar
 0050DC72    push        eax
 0050DC73    push        edi
 0050DC74    push        189
 0050DC79    mov         eax,dword ptr [ebx+2C];TListBoxStrings......................................ListBox:TCus...
 0050DC7C    call        TWinControl.GetHandle
 0050DC81    push        eax
 0050DC82    call        user32.SendMessageW
 0050DC87    mov         esi,eax
 0050DC89    mov         eax,dword ptr [ebp-4]
 0050DC8C    mov         edx,esi
 0050DC8E    call        @UStrSetLength
 0050DC93    xor         eax,eax
 0050DC95    pop         edx
 0050DC96    pop         ecx
 0050DC97    pop         ecx
 0050DC98    mov         dword ptr fs:[eax],edx
 0050DC9B    push        50DCB0
 0050DCA0    lea         eax,[ebp-8]
 0050DCA3    call        @UStrClr
 0050DCA8    ret
>0050DCA9    jmp         @HandleFinally
>0050DCAE    jmp         0050DCA0
 0050DCB0    pop         edi
 0050DCB1    pop         esi
 0050DCB2    pop         ebx
 0050DCB3    pop         ecx
 0050DCB4    pop         ecx
 0050DCB5    pop         ebp
 0050DCB6    ret
end;*}

//0050DCB8
{*function sub_0050DCB8(?:?):?;
begin
 0050DCB8    push        ebp
 0050DCB9    mov         ebp,esp
 0050DCBB    add         esp,0FFFFFFF8
 0050DCBE    push        ebx
 0050DCBF    push        esi
 0050DCC0    push        edi
 0050DCC1    xor         ecx,ecx
 0050DCC3    mov         dword ptr [ebp-8],ecx
 0050DCC6    mov         dword ptr [ebp-4],edx
 0050DCC9    mov         ebx,eax
 0050DCCB    xor         eax,eax
 0050DCCD    push        ebp
 0050DCCE    push        50DD3C
 0050DCD3    push        dword ptr fs:[eax]
 0050DCD6    mov         dword ptr fs:[eax],esp
 0050DCD9    mov         edi,dword ptr [ebx+2C];TListBoxStrings.......................................ListBox:TCu...
 0050DCDC    movzx       eax,byte ptr [edi+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050DCE3    add         al,0FD
 0050DCE5    sub         al,2
>0050DCE7    jae         0050DCF7
 0050DCE9    mov         edx,dword ptr [ebp-4]
 0050DCEC    mov         eax,edi
 0050DCEE    call        00510190
 0050DCF3    mov         esi,eax
>0050DCF5    jmp         0050DD26
 0050DCF7    mov         edx,dword ptr [ebp-4]
 0050DCFA    mov         eax,edi
 0050DCFC    mov         si,0FFAB
 0050DD00    call        @CallDynaInst;TCustomListBox.sub_0050E43C
 0050DD05    mov         esi,eax
 0050DD07    cmp         esi,0FFFFFFFF
>0050DD0A    jne         0050DD26
 0050DD0C    lea         edx,[ebp-8]
 0050DD0F    mov         eax,[007C4BB4];^SResString135:TResStringRec
 0050DD14    call        LoadResString
 0050DD19    mov         edx,dword ptr [ebp-8]
 0050DD1C    mov         ecx,dword ptr [ebp-4]
 0050DD1F    mov         eax,ebx
 0050DD21    call        TStrings.Error
 0050DD26    xor         eax,eax
 0050DD28    pop         edx
 0050DD29    pop         ecx
 0050DD2A    pop         ecx
 0050DD2B    mov         dword ptr fs:[eax],edx
 0050DD2E    push        50DD43
 0050DD33    lea         eax,[ebp-8]
 0050DD36    call        @UStrClr
 0050DD3B    ret
>0050DD3C    jmp         @HandleFinally
>0050DD41    jmp         0050DD33
 0050DD43    mov         eax,esi
 0050DD45    pop         edi
 0050DD46    pop         esi
 0050DD47    pop         ebx
 0050DD48    pop         ecx
 0050DD49    pop         ecx
 0050DD4A    pop         ebp
 0050DD4B    ret
end;*}

//0050DD4C
{*procedure sub_0050DD4C(?:?; ?:?);
begin
 0050DD4C    push        ebx
 0050DD4D    push        esi
 0050DD4E    push        edi
 0050DD4F    push        ebp
 0050DD50    add         esp,0FFFFFFF4
 0050DD53    mov         dword ptr [esp],ecx
 0050DD56    mov         ebp,edx
 0050DD58    mov         edi,eax
 0050DD5A    mov         eax,dword ptr [edi+2C];TListBoxStrings........................................ListBox:TC...
 0050DD5D    mov         edx,dword ptr [eax]
 0050DD5F    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050DD65    mov         dword ptr [esp+4],eax
 0050DD69    mov         edx,ebp
 0050DD6B    mov         eax,dword ptr [edi+2C];TListBoxStrings.........................................ListBox:T...
 0050DD6E    mov         si,0FFAD
 0050DD72    call        @CallDynaInst;TCustomListBox.sub_0050E480
 0050DD77    mov         dword ptr [esp+8],eax
 0050DD7B    xor         ecx,ecx
 0050DD7D    mov         edx,ebp
 0050DD7F    mov         eax,dword ptr [edi+2C];TListBoxStrings..........................................ListBox:...
 0050DD82    mov         si,0FFAC
 0050DD86    call        @CallDynaInst;TCustomListBox.sub_0050E498
 0050DD8B    mov         edx,ebp
 0050DD8D    mov         eax,edi
 0050DD8F    mov         ecx,dword ptr [eax]
 0050DD91    call        dword ptr [ecx+4C];TListBoxStrings.Delete
 0050DD94    push        0
 0050DD96    mov         ecx,dword ptr [esp+4]
 0050DD9A    mov         edx,ebp
 0050DD9C    mov         eax,edi
 0050DD9E    mov         ebx,dword ptr [eax]
 0050DDA0    call        dword ptr [ebx+68];TStrings.InsertObject
 0050DDA3    mov         ecx,dword ptr [esp+8]
 0050DDA7    mov         edx,ebp
 0050DDA9    mov         eax,dword ptr [edi+2C];TListBoxStrings...........................................ListBox...
 0050DDAC    mov         si,0FFAC
 0050DDB0    call        @CallDynaInst;TCustomListBox.sub_0050E498
 0050DDB5    mov         edx,dword ptr [esp+4]
 0050DDB9    mov         eax,dword ptr [edi+2C];TListBoxStrings............................................ListBo...
 0050DDBC    mov         ecx,dword ptr [eax]
 0050DDBE    call        dword ptr [ecx+10C];TCustomListBox.sub_0050E828
 0050DDC4    add         esp,0C
 0050DDC7    pop         ebp
 0050DDC8    pop         edi
 0050DDC9    pop         esi
 0050DDCA    pop         ebx
 0050DDCB    ret
end;*}

//0050DDCC
{*procedure sub_0050DDCC(?:?; ?:?);
begin
 0050DDCC    push        esi
 0050DDCD    push        edi
 0050DDCE    push        ebp
 0050DDCF    mov         ebp,ecx
 0050DDD1    mov         edi,edx
 0050DDD3    mov         esi,eax
 0050DDD5    mov         eax,dword ptr [esi+2C];TListBoxStrings.............................................ListB...
 0050DDD8    movzx       eax,byte ptr [eax+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050DDDF    add         al,0FD
 0050DDE1    sub         al,2
>0050DDE3    jb          0050DE04
 0050DDE5    cmp         edi,0FFFFFFFF
>0050DDE8    jne         0050DDF4
 0050DDEA    mov         eax,esi
 0050DDEC    mov         edx,dword ptr [eax]
 0050DDEE    call        dword ptr [edx+14];TListBoxStrings.GetCount
 0050DDF1    mov         edi,eax
 0050DDF3    dec         edi
 0050DDF4    mov         ecx,ebp
 0050DDF6    mov         edx,edi
 0050DDF8    mov         eax,dword ptr [esi+2C];TListBoxStrings..............................................List...
 0050DDFB    mov         si,0FFAA
 0050DDFF    call        @CallDynaInst;TCustomListBox.sub_0050E45C
 0050DE04    pop         ebp
 0050DE05    pop         edi
 0050DE06    pop         esi
 0050DE07    ret
end;*}

//0050DE08
function TListBoxStrings.Add(S:string):Integer;
begin
{*
 0050DE08    push        ebp
 0050DE09    mov         ebp,esp
 0050DE0B    add         esp,0FFFFFFF8
 0050DE0E    push        ebx
 0050DE0F    push        esi
 0050DE10    push        edi
 0050DE11    xor         ecx,ecx
 0050DE13    mov         dword ptr [ebp-8],ecx
 0050DE16    mov         dword ptr [ebp-4],edx
 0050DE19    mov         ebx,eax
 0050DE1B    xor         eax,eax
 0050DE1D    push        ebp
 0050DE1E    push        50DE90
 0050DE23    push        dword ptr fs:[eax]
 0050DE26    mov         dword ptr fs:[eax],esp
 0050DE29    or          esi,0FFFFFFFF
 0050DE2C    mov         edi,dword ptr [ebx+2C];TListBoxStrings...............................................Lis...
 0050DE2F    movzx       eax,byte ptr [edi+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050DE36    add         al,0FD
 0050DE38    sub         al,2
>0050DE3A    jb          0050DE7A
 0050DE3C    mov         eax,dword ptr [ebp-4]
 0050DE3F    push        eax
 0050DE40    mov         eax,edi
 0050DE42    call        TWinControl.GetHandle
 0050DE47    xor         ecx,ecx
 0050DE49    mov         edx,180
 0050DE4E    call        SendTextMessage
 0050DE53    mov         esi,eax
 0050DE55    test        esi,esi
>0050DE57    jge         0050DE7A
 0050DE59    lea         edx,[ebp-8]
 0050DE5C    mov         eax,[007C44D0];^SResString310:TResStringRec
 0050DE61    call        LoadResString
 0050DE66    mov         ecx,dword ptr [ebp-8]
 0050DE69    mov         dl,1
 0050DE6B    mov         eax,[0046BDEC];EOutOfResources
 0050DE70    call        Exception.Create;EOutOfResources.Create
 0050DE75    call        @RaiseExcept
 0050DE7A    xor         eax,eax
 0050DE7C    pop         edx
 0050DE7D    pop         ecx
 0050DE7E    pop         ecx
 0050DE7F    mov         dword ptr fs:[eax],edx
 0050DE82    push        50DE97
 0050DE87    lea         eax,[ebp-8]
 0050DE8A    call        @UStrClr
 0050DE8F    ret
>0050DE90    jmp         @HandleFinally
>0050DE95    jmp         0050DE87
 0050DE97    mov         eax,esi
 0050DE99    pop         edi
 0050DE9A    pop         esi
 0050DE9B    pop         ebx
 0050DE9C    pop         ecx
 0050DE9D    pop         ecx
 0050DE9E    pop         ebp
 0050DE9F    ret
*}
end;

//0050DEA0
procedure TListBoxStrings.Insert(Index:Integer; S:string);
begin
{*
 0050DEA0    push        ebp
 0050DEA1    mov         ebp,esp
 0050DEA3    add         esp,0FFFFFFF8
 0050DEA6    push        ebx
 0050DEA7    push        esi
 0050DEA8    push        edi
 0050DEA9    xor         ebx,ebx
 0050DEAB    mov         dword ptr [ebp-8],ebx
 0050DEAE    mov         dword ptr [ebp-4],ecx
 0050DEB1    mov         edi,edx
 0050DEB3    mov         ebx,eax
 0050DEB5    xor         eax,eax
 0050DEB7    push        ebp
 0050DEB8    push        50DF25
 0050DEBD    push        dword ptr fs:[eax]
 0050DEC0    mov         dword ptr fs:[eax],esp
 0050DEC3    mov         esi,dword ptr [ebx+2C];TListBoxStrings................................................Li...
 0050DEC6    movzx       eax,byte ptr [esi+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050DECD    add         al,0FD
 0050DECF    sub         al,2
>0050DED1    jb          0050DF0F
 0050DED3    mov         eax,dword ptr [ebp-4]
 0050DED6    push        eax
 0050DED7    mov         eax,esi
 0050DED9    call        TWinControl.GetHandle
 0050DEDE    mov         ecx,edi
 0050DEE0    mov         edx,181
 0050DEE5    call        SendTextMessage
 0050DEEA    test        eax,eax
>0050DEEC    jge         0050DF0F
 0050DEEE    lea         edx,[ebp-8]
 0050DEF1    mov         eax,[007C44D0];^SResString310:TResStringRec
 0050DEF6    call        LoadResString
 0050DEFB    mov         ecx,dword ptr [ebp-8]
 0050DEFE    mov         dl,1
 0050DF00    mov         eax,[0046BDEC];EOutOfResources
 0050DF05    call        Exception.Create;EOutOfResources.Create
 0050DF0A    call        @RaiseExcept
 0050DF0F    xor         eax,eax
 0050DF11    pop         edx
 0050DF12    pop         ecx
 0050DF13    pop         ecx
 0050DF14    mov         dword ptr fs:[eax],edx
 0050DF17    push        50DF2C
 0050DF1C    lea         eax,[ebp-8]
 0050DF1F    call        @UStrClr
 0050DF24    ret
>0050DF25    jmp         @HandleFinally
>0050DF2A    jmp         0050DF1C
 0050DF2C    pop         edi
 0050DF2D    pop         esi
 0050DF2E    pop         ebx
 0050DF2F    pop         ecx
 0050DF30    pop         ecx
 0050DF31    pop         ebp
 0050DF32    ret
*}
end;

//0050DF34
procedure TListBoxStrings.Delete(Index:Integer);
begin
{*
 0050DF34    push        esi
 0050DF35    push        edi
 0050DF36    mov         edi,edx
 0050DF38    mov         esi,eax
 0050DF3A    mov         edx,edi
 0050DF3C    mov         eax,dword ptr [esi+2C];TListBoxStrings.................................................L...
 0050DF3F    mov         si,0FFA8
 0050DF43    call        @CallDynaInst;TCustomListBox.sub_0050E4B4
 0050DF48    pop         edi
 0050DF49    pop         esi
 0050DF4A    ret
*}
end;

//0050DF4C
procedure TListBoxStrings.Exchange(Index1:Integer; Index2:Integer);
begin
{*
 0050DF4C    push        ebp
 0050DF4D    mov         ebp,esp
 0050DF4F    add         esp,0FFFFFFEC
 0050DF52    push        ebx
 0050DF53    push        esi
 0050DF54    push        edi
 0050DF55    xor         ebx,ebx
 0050DF57    mov         dword ptr [ebp-14],ebx
 0050DF5A    mov         dword ptr [ebp-4],ebx
 0050DF5D    mov         dword ptr [ebp-0C],ecx
 0050DF60    mov         edi,edx
 0050DF62    mov         dword ptr [ebp-8],eax
 0050DF65    xor         eax,eax
 0050DF67    push        ebp
 0050DF68    push        50E0A7
 0050DF6D    push        dword ptr fs:[eax]
 0050DF70    mov         dword ptr fs:[eax],esp
 0050DF73    mov         eax,dword ptr [ebp-8]
 0050DF76    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050DF79    movzx       eax,byte ptr [eax+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050DF80    add         al,0FD
 0050DF82    sub         al,2
>0050DF84    jb          0050E089
 0050DF8A    mov         eax,dword ptr [ebp-8]
 0050DF8D    call        TStrings.BeginUpdate
 0050DF92    xor         eax,eax
 0050DF94    push        ebp
 0050DF95    push        50E082
 0050DF9A    push        dword ptr fs:[eax]
 0050DF9D    mov         dword ptr fs:[eax],esp
 0050DFA0    lea         ecx,[ebp-4]
 0050DFA3    mov         edx,edi
 0050DFA5    mov         eax,dword ptr [ebp-8]
 0050DFA8    mov         ebx,dword ptr [eax]
 0050DFAA    call        dword ptr [ebx+0C];TListBoxStrings.Get
 0050DFAD    mov         eax,dword ptr [ebp-8]
 0050DFB0    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050DFB3    mov         edx,edi
 0050DFB5    mov         si,0FFAD
 0050DFB9    call        @CallDynaInst;TCustomListBox.sub_0050E480
 0050DFBE    mov         dword ptr [ebp-10],eax
 0050DFC1    lea         ecx,[ebp-14]
 0050DFC4    mov         edx,dword ptr [ebp-0C]
 0050DFC7    mov         eax,dword ptr [ebp-8]
 0050DFCA    mov         ebx,dword ptr [eax]
 0050DFCC    call        dword ptr [ebx+0C];TListBoxStrings.Get
 0050DFCF    mov         ecx,dword ptr [ebp-14]
 0050DFD2    mov         edx,edi
 0050DFD4    mov         eax,dword ptr [ebp-8]
 0050DFD7    mov         ebx,dword ptr [eax]
 0050DFD9    call        dword ptr [ebx+20];TListBoxStrings.sub_0050DD4C
 0050DFDC    mov         eax,dword ptr [ebp-8]
 0050DFDF    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050DFE2    mov         edx,dword ptr [ebp-0C]
 0050DFE5    mov         si,0FFAD
 0050DFE9    call        @CallDynaInst;TCustomListBox.sub_0050E480
 0050DFEE    mov         ecx,eax
 0050DFF0    mov         eax,dword ptr [ebp-8]
 0050DFF3    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050DFF6    mov         edx,edi
 0050DFF8    mov         si,0FFAC
 0050DFFC    call        @CallDynaInst;TCustomListBox.sub_0050E498
 0050E001    mov         ecx,dword ptr [ebp-4]
 0050E004    mov         edx,dword ptr [ebp-0C]
 0050E007    mov         eax,dword ptr [ebp-8]
 0050E00A    mov         ebx,dword ptr [eax]
 0050E00C    call        dword ptr [ebx+20];TListBoxStrings.sub_0050DD4C
 0050E00F    mov         eax,dword ptr [ebp-8]
 0050E012    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E015    mov         ecx,dword ptr [ebp-10]
 0050E018    mov         edx,dword ptr [ebp-0C]
 0050E01B    mov         si,0FFAC
 0050E01F    call        @CallDynaInst;TCustomListBox.sub_0050E498
 0050E024    mov         eax,dword ptr [ebp-8]
 0050E027    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E02A    mov         edx,dword ptr [eax]
 0050E02C    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050E032    cmp         edi,eax
>0050E034    jne         0050E049
 0050E036    mov         eax,dword ptr [ebp-8]
 0050E039    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E03C    mov         edx,dword ptr [ebp-0C]
 0050E03F    mov         ecx,dword ptr [eax]
 0050E041    call        dword ptr [ecx+10C];TCustomListBox.sub_0050E828
>0050E047    jmp         0050E06C
 0050E049    mov         eax,dword ptr [ebp-8]
 0050E04C    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E04F    mov         edx,dword ptr [eax]
 0050E051    call        dword ptr [edx+108];TCustomListBox.sub_0050E790
 0050E057    cmp         eax,dword ptr [ebp-0C]
>0050E05A    jne         0050E06C
 0050E05C    mov         eax,dword ptr [ebp-8]
 0050E05F    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E062    mov         edx,edi
 0050E064    mov         ecx,dword ptr [eax]
 0050E066    call        dword ptr [ecx+10C];TCustomListBox.sub_0050E828
 0050E06C    xor         eax,eax
 0050E06E    pop         edx
 0050E06F    pop         ecx
 0050E070    pop         ecx
 0050E071    mov         dword ptr fs:[eax],edx
 0050E074    push        50E089
 0050E079    mov         eax,dword ptr [ebp-8]
 0050E07C    call        TStrings.EndUpdate
 0050E081    ret
>0050E082    jmp         @HandleFinally
>0050E087    jmp         0050E079
 0050E089    xor         eax,eax
 0050E08B    pop         edx
 0050E08C    pop         ecx
 0050E08D    pop         ecx
 0050E08E    mov         dword ptr fs:[eax],edx
 0050E091    push        50E0AE
 0050E096    lea         eax,[ebp-14]
 0050E099    call        @UStrClr
 0050E09E    lea         eax,[ebp-4]
 0050E0A1    call        @UStrClr
 0050E0A6    ret
>0050E0A7    jmp         @HandleFinally
>0050E0AC    jmp         0050E096
 0050E0AE    pop         edi
 0050E0AF    pop         esi
 0050E0B0    pop         ebx
 0050E0B1    mov         esp,ebp
 0050E0B3    pop         ebp
 0050E0B4    ret
*}
end;

//0050E0B8
procedure TListBoxStrings.Clear;
begin
{*
 0050E0B8    push        esi
 0050E0B9    mov         esi,eax
 0050E0BB    mov         eax,dword ptr [esi+2C];TListBoxStrings.....................................................
 0050E0BE    mov         si,0FFA9
 0050E0C2    call        @CallDynaInst;TCustomListBox.sub_0050E4D4
 0050E0C7    pop         esi
 0050E0C8    ret
*}
end;

//0050E0CC
{*procedure sub_0050E0CC(?:?);
begin
 0050E0CC    push        ebx
 0050E0CD    push        esi
 0050E0CE    mov         ebx,edx
 0050E0D0    mov         esi,eax
 0050E0D2    push        0
 0050E0D4    mov         eax,ebx
 0050E0D6    xor         al,1
 0050E0D8    and         eax,7F
 0050E0DB    push        eax
 0050E0DC    push        0B
 0050E0DE    mov         eax,dword ptr [esi+2C];TListBoxStrings.....................................................
 0050E0E1    call        TWinControl.GetHandle
 0050E0E6    push        eax
 0050E0E7    call        user32.SendMessageW
 0050E0EC    xor         bl,1
 0050E0EF    test        bl,bl
>0050E0F1    je          0050E0FB
 0050E0F3    mov         eax,dword ptr [esi+2C];TListBoxStrings.....................................................
 0050E0F6    call        TControl.Refresh
 0050E0FB    pop         esi
 0050E0FC    pop         ebx
 0050E0FD    ret
end;*}

//0050E100
procedure TListBoxStrings.IndexOf(S:string);
begin
{*
 0050E100    push        ebx
 0050E101    push        esi
 0050E102    push        edi
 0050E103    mov         edi,edx
 0050E105    mov         ebx,eax
 0050E107    mov         esi,dword ptr [ebx+2C];TListBoxStrings.....................................................
 0050E10A    movzx       eax,byte ptr [esi+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050E111    add         al,0FD
 0050E113    sub         al,2
>0050E115    jae         0050E122
 0050E117    mov         edx,edi
 0050E119    mov         eax,esi
 0050E11B    call        005101BC
>0050E120    jmp         0050E137
 0050E122    push        edi
 0050E123    mov         eax,esi
 0050E125    call        TWinControl.GetHandle
 0050E12A    or          ecx,0FFFFFFFF
 0050E12D    mov         edx,1A2
 0050E132    call        SendTextMessage
 0050E137    pop         edi
 0050E138    pop         esi
 0050E139    pop         ebx
 0050E13A    ret
*}
end;

//0050E13C
procedure TListBoxStrings.Move(CurIndex:Integer; NewIndex:Integer);
begin
{*
 0050E13C    push        ebp
 0050E13D    mov         ebp,esp
 0050E13F    add         esp,0FFFFFFF0
 0050E142    push        ebx
 0050E143    push        esi
 0050E144    push        edi
 0050E145    xor         ebx,ebx
 0050E147    mov         dword ptr [ebp-4],ebx
 0050E14A    mov         dword ptr [ebp-0C],ecx
 0050E14D    mov         edi,edx
 0050E14F    mov         dword ptr [ebp-8],eax
 0050E152    xor         eax,eax
 0050E154    push        ebp
 0050E155    push        50E240
 0050E15A    push        dword ptr fs:[eax]
 0050E15D    mov         dword ptr fs:[eax],esp
 0050E160    mov         eax,dword ptr [ebp-8]
 0050E163    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E166    movzx       eax,byte ptr [eax+2C0];TCustomListBox.FStyle:TListBoxStyle
 0050E16D    add         al,0FD
 0050E16F    sub         al,2
>0050E171    jb          0050E22A
 0050E177    mov         eax,dword ptr [ebp-8]
 0050E17A    call        TStrings.BeginUpdate
 0050E17F    mov         eax,dword ptr [ebp-8]
 0050E182    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E185    mov         byte ptr [eax+30D],1;TCustomListBox.FMoving:Boolean
 0050E18C    xor         eax,eax
 0050E18E    push        ebp
 0050E18F    push        50E223
 0050E194    push        dword ptr fs:[eax]
 0050E197    mov         dword ptr fs:[eax],esp
 0050E19A    cmp         edi,dword ptr [ebp-0C]
>0050E19D    je          0050E200
 0050E19F    lea         ecx,[ebp-4]
 0050E1A2    mov         edx,edi
 0050E1A4    mov         eax,dword ptr [ebp-8]
 0050E1A7    mov         ebx,dword ptr [eax]
 0050E1A9    call        dword ptr [ebx+0C];TListBoxStrings.Get
 0050E1AC    mov         eax,dword ptr [ebp-8]
 0050E1AF    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E1B2    mov         edx,edi
 0050E1B4    mov         si,0FFAD
 0050E1B8    call        @CallDynaInst;TCustomListBox.sub_0050E480
 0050E1BD    mov         dword ptr [ebp-10],eax
 0050E1C0    mov         eax,dword ptr [ebp-8]
 0050E1C3    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E1C6    xor         ecx,ecx
 0050E1C8    mov         edx,edi
 0050E1CA    mov         si,0FFAC
 0050E1CE    call        @CallDynaInst;TCustomListBox.sub_0050E498
 0050E1D3    mov         edx,edi
 0050E1D5    mov         eax,dword ptr [ebp-8]
 0050E1D8    mov         ecx,dword ptr [eax]
 0050E1DA    call        dword ptr [ecx+4C];TListBoxStrings.Delete
 0050E1DD    mov         ecx,dword ptr [ebp-4]
 0050E1E0    mov         edx,dword ptr [ebp-0C]
 0050E1E3    mov         eax,dword ptr [ebp-8]
 0050E1E6    mov         ebx,dword ptr [eax]
 0050E1E8    call        dword ptr [ebx+64];TListBoxStrings.Insert
 0050E1EB    mov         eax,dword ptr [ebp-8]
 0050E1EE    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E1F1    mov         ecx,dword ptr [ebp-10]
 0050E1F4    mov         edx,dword ptr [ebp-0C]
 0050E1F7    mov         si,0FFAC
 0050E1FB    call        @CallDynaInst;TCustomListBox.sub_0050E498
 0050E200    xor         eax,eax
 0050E202    pop         edx
 0050E203    pop         ecx
 0050E204    pop         ecx
 0050E205    mov         dword ptr fs:[eax],edx
 0050E208    push        50E22A
 0050E20D    mov         eax,dword ptr [ebp-8]
 0050E210    mov         eax,dword ptr [eax+2C];TListBoxStrings.....................................................
 0050E213    mov         byte ptr [eax+30D],0;TCustomListBox.FMoving:Boolean
 0050E21A    mov         eax,dword ptr [ebp-8]
 0050E21D    call        TStrings.EndUpdate
 0050E222    ret
>0050E223    jmp         @HandleFinally
>0050E228    jmp         0050E20D
 0050E22A    xor         eax,eax
 0050E22C    pop         edx
 0050E22D    pop         ecx
 0050E22E    pop         ecx
 0050E22F    mov         dword ptr fs:[eax],edx
 0050E232    push        50E247
 0050E237    lea         eax,[ebp-4]
 0050E23A    call        @UStrClr
 0050E23F    ret
>0050E240    jmp         @HandleFinally
>0050E245    jmp         0050E237
 0050E247    pop         edi
 0050E248    pop         esi
 0050E249    pop         ebx
 0050E24A    mov         esp,ebp
 0050E24C    pop         ebp
 0050E24D    ret
*}
end;

//0050E250
constructor TCustomListBox.Create(AOwner:TComponent);
begin
{*
 0050E250    push        ebp
 0050E251    mov         ebp,esp
 0050E253    push        ecx
 0050E254    push        ebx
 0050E255    push        esi
 0050E256    test        dl,dl
>0050E258    je          0050E262
 0050E25A    add         esp,0FFFFFFF0
 0050E25D    call        @ClassCreate
 0050E262    mov         byte ptr [ebp-1],dl
 0050E265    mov         ebx,eax
 0050E267    xor         edx,edx
 0050E269    mov         eax,ebx
 0050E26B    call        TCustomListControl.Create
 0050E270    mov         eax,[007C4770];^gvar_007CA5E0
 0050E275    cmp         byte ptr [eax],0
>0050E278    je          0050E284
 0050E27A    mov         eax,[0050E344];0x2800E0 gvar_0050E344
 0050E27F    mov         dword ptr [ebx+60],eax;TCustomListBox.FControlStyle:TControlStyle
>0050E282    jmp         0050E28C
 0050E284    mov         eax,[0050E348];0x2800F0 gvar_0050E348
 0050E289    mov         dword ptr [ebx+60],eax;TCustomListBox.FControlStyle:TControlStyle
 0050E28C    mov         edx,79
 0050E291    mov         eax,ebx
 0050E293    call        TControl.SetWidth
 0050E298    mov         edx,61
 0050E29D    mov         eax,ebx
 0050E29F    call        TControl.SetHeight
 0050E2A4    mov         dl,1
 0050E2A6    mov         eax,ebx
 0050E2A8    call        TWinControl.SetTabStop
 0050E2AD    xor         edx,edx
 0050E2AF    mov         eax,ebx
 0050E2B1    call        TGroupBox.SetParentColor
 0050E2B6    mov         byte ptr [ebx+298],1;TCustomListBox.FAutoComplete:Boolean
 0050E2BD    mov         dl,1
 0050E2BF    mov         eax,[00505DE4];TListBoxStrings
 0050E2C4    call        TStrings.Create;TListBoxStrings.Create
 0050E2C9    mov         esi,eax
 0050E2CB    mov         dword ptr [ebx+2A0],esi;TCustomListBox.FItems:TStrings
 0050E2D1    mov         dword ptr [esi+2C],ebx;TListBoxStrings.....................................................
 0050E2D4    mov         dl,1
 0050E2D6    mov         eax,[004D9044];TControlCanvas
 0050E2DB    call        TCanvas.Create;TControlCanvas.Create
 0050E2E0    mov         esi,eax
 0050E2E2    mov         dword ptr [ebx+2B0],esi;TCustomListBox.FCanvas:TCanvas
 0050E2E8    mov         eax,esi
 0050E2EA    mov         edx,ebx
 0050E2EC    call        TControlCanvas.SetControl
 0050E2F1    mov         dword ptr [ebx+2B8],10;TCustomListBox.FItemHeight:Integer
 0050E2FB    mov         byte ptr [ebx+2AC],1;TCustomListBox.FBorderStyle:TBorderStyle
 0050E302    mov         byte ptr [ebx+2C3],1;TCustomListBox.FExtendedSelect:Boolean
 0050E309    mov         dword ptr [ebx+2BC],0FFFFFFFF;TCustomListBox.FOldCount:Integer
 0050E313    mov         dword ptr [ebx+308],1F4;TCustomListBox.FAutoCompleteDelay:Cardinal
 0050E31D    mov         byte ptr [ebx+30C],0;TCustomListBox.FInBufferedPrintClient:Boolean
 0050E324    mov         eax,ebx
 0050E326    cmp         byte ptr [ebp-1],0
>0050E32A    je          0050E33B
 0050E32C    call        @AfterConstruction
 0050E331    pop         dword ptr fs:[0]
 0050E338    add         esp,0C
 0050E33B    mov         eax,ebx
 0050E33D    pop         esi
 0050E33E    pop         ebx
 0050E33F    pop         ecx
 0050E340    pop         ebp
 0050E341    ret
*}
end;

Initialization
//0079D108
{*
 0079D108    sub         dword ptr ds:[7CA668],1
>0079D10F    jae         0079D127
 0079D111    mov         ecx,dword ptr ds:[504E98];TListBoxStyleHook
 0079D117    mov         edx,dword ptr ds:[501704];TCustomListBox
 0079D11D    mov         eax,[005738E0];TCustomStyleEngine
 0079D122    call        TCustomStyleEngine.RegisterStyleHook
 0079D127    ret
*}
Finalization
end.