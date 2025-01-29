//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit41;

interface

uses
  SysUtils, Classes;

    destructor Destroy();//00508B58
    //procedure sub_00508B88(?:?);//00508B88
    procedure CreateParams(var Params:TCreateParams);//00508BC0
    //procedure sub_00508BFC(?:?);//00508BFC
    //procedure sub_00508D08(?:?);//00508D08
    //procedure sub_004E5F1C(?:?);//00508D70
    //procedure sub_00508DBC(?:?);//00508DBC
    procedure CMFontChanged(var Message:TMessage);//00508DF8
    procedure SetLines(Value:TStrings);//00508E10
    procedure SetScrollBars(Value:TScrollStyle);//00508E20
    procedure SetWordWrap(Value:Boolean);//00508E34
    //procedure WMGetDlgCode(?:?);//00508E48
    procedure WMNCDestroy;//00508E7C
    //procedure sub_004EEC30(?:?);//00508E84
    constructor sub_00508EAC;//00508EAC
    destructor Destroy();//00508EE4
    procedure GetCount;//00508F08
    //function sub_00508F24(?:?):?;//00508F24
    //procedure sub_00508FB8(?:?; ?:?);//00508FB8
    //procedure Get(?:?; ?:?);//00508FDC
    procedure Clear;//00509038
    procedure Delete(Index:Integer);//005090A8
    function IndexOf(S:string):Integer;//005090C8
    //procedure sub_00509130(?:?);//00509130
    function Add(S:string):Integer;//00509164
    procedure Insert(Index:Integer; S:string);//00509210
    constructor Create(AOwner:TComponent);//005092BC
    destructor Destroy();//005093BC
    procedure Clear;//00509418
    procedure sub_00509444;//00509444
    procedure SelectAll;//00509468
    //function sub_00509488(?:TCustomCombo):?;//00509488
    //procedure sub_005094AC(?:TCustomCombo; ?:?);//005094AC
    procedure GetItemIndex;//005094F0
    procedure SetItemIndex(Value:Integer);//0050951C
    procedure SetMaxLength(Value:Integer);//00509638
    procedure SetItemHeight(Value:Integer);//00509678
    procedure WMCreate;//00509688
    procedure WMDrawItem(var Message:Messages.TWMDrawItem);//005096B4
    procedure WMMeasureItem(var Message:Messages.TWMMeasureItem);//005096BC
    procedure WMDeleteItem(var Message:Messages.TWMDeleteItem);//005096C4
    //procedure WMGetDlgCode(?:?);//005096CC
    //procedure CMCancelMode(?:?);//005096F0
    //procedure CMCtl3DChanged(?:?);//00509704
    procedure sub_00509728;//00509728
    procedure sub_0050A238;//0050976C
    procedure Click;//005097F0
    procedure CMEnter;//00509874
    //procedure CMExit(?:?);//0050991C
    //procedure CMParentColorChanged(?:?);//00509A00
    //procedure sub_00509A2C(?:?);//00509A2C
    procedure SetCharCase(Value:TEditCharCase);//00509BC8
    procedure SetTextHint(Value:string);//00509BDC
    //procedure sub_00509C14(?:?; ?:?; ?:?);//00509C14
    //procedure sub_00509EFC(?:?);//00509EFC
    //procedure sub_0050A0BC(?:?);//0050A0BC
    procedure sub_0050A238;//0050A238
    //procedure sub_0050A25C(?:?; ?:?; ?:?; ?:?);//0050A25C
    procedure sub_0050A354;//0050A354
    procedure CMFontChanged(var Message:TMessage);//0050A374
    procedure Focused;//0050A39C
    procedure sub_0050A3DC;//0050A3DC
    procedure sub_0050A3FC;//0050A3FC
    procedure CreateWnd;//0050A428
    procedure sub_0050A49C;//0050A49C
    procedure SetItems(Value:TStrings);//0050A558
    //procedure ClearSelection(?:?);//0050A57C
    procedure CopySelection(Destination:TCustomListControl);//0050A588
    procedure DeleteSelected;//0050A614
    procedure GetCount;//0050A640
    procedure SetDropDownCount(Value:Integer);//0050A64C
    procedure AddItem(Item:string; AObject:TObject);//0050A6A8
    function sub_0050A700:Boolean;//0050A700
    constructor Create(AOwner:TComponent);//0050A70C

implementation

//00508B58
destructor TCustomMemo.Destroy();
begin
{*
 00508B58    push        ebx
 00508B59    push        esi
 00508B5A    call        @BeforeDestruction
 00508B5F    mov         ebx,edx
 00508B61    mov         esi,eax
 00508B63    mov         eax,dword ptr [esi+2C8];TCustomMemo.FLines:TStrings
 00508B69    call        TObject.Free
 00508B6E    mov         dl,0FC
 00508B70    and         dl,bl
 00508B72    mov         eax,esi
 00508B74    call        TWinControl.Destroy
 00508B79    test        bl,bl
>00508B7B    jle         00508B84
 00508B7D    mov         eax,esi
 00508B7F    call        @ClassDestroy
 00508B84    pop         esi
 00508B85    pop         ebx
 00508B86    ret
*}
end;

//00508B88
{*procedure sub_00508B88(?:?);
begin
 00508B88    push        ebx
 00508B89    push        esi
 00508B8A    mov         esi,edx
 00508B8C    mov         ebx,eax
 00508B8E    mov         edx,esi
 00508B90    mov         eax,ebx
 00508B92    call        004E7864
 00508B97    test        byte ptr [esi],2
>00508B9A    je          00508BB6
 00508B9C    movzx       eax,byte ptr [ebx+2CC];TCustomMemo.FScrollBars:TScrollStyle
 00508BA3    test        al,al
>00508BA5    je          00508BAB
 00508BA7    cmp         al,1
>00508BA9    jne         00508BB6
 00508BAB    movzx       eax,byte ptr ds:[508BBC];0x2 gvar_00508BBC
 00508BB2    not         eax
 00508BB4    and         byte ptr [esi],al
 00508BB6    pop         esi
 00508BB7    pop         ebx
 00508BB8    ret
end;*}

//00508BC0
procedure TCustomMemo.CreateParams(var Params:TCreateParams);
begin
{*
 00508BC0    push        ebx
 00508BC1    push        esi
 00508BC2    mov         esi,edx
 00508BC4    mov         ebx,eax
 00508BC6    mov         edx,esi
 00508BC8    mov         eax,ebx
 00508BCA    call        TCustomEdit.CreateParams
 00508BCF    mov         eax,dword ptr [esi+4];TCreateParams.Style:DWORD
 00508BD2    movzx       edx,byte ptr [ebx+2CD];TCustomMemo.FWordWrap:Boolean
 00508BD9    mov         edx,dword ptr [edx*4+7A1350]
 00508BE0    not         edx
 00508BE2    and         eax,edx
 00508BE4    or          eax,4
 00508BE7    movzx       edx,byte ptr [ebx+2CC];TCustomMemo.FScrollBars:TScrollStyle
 00508BEE    or          eax,dword ptr [edx*4+7A1340]
 00508BF5    mov         dword ptr [esi+4],eax;TCreateParams.Style:DWORD
 00508BF8    pop         esi
 00508BF9    pop         ebx
 00508BFA    ret
*}
end;

//00508BFC
{*procedure sub_00508BFC(?:?);
begin
 00508BFC    push        ebp
 00508BFD    mov         ebp,esp
 00508BFF    push        0
 00508C01    push        ebx
 00508C02    push        esi
 00508C03    push        edi
 00508C04    mov         ebx,edx
 00508C06    mov         esi,eax
 00508C08    xor         eax,eax
 00508C0A    push        ebp
 00508C0B    push        508CF7
 00508C10    push        dword ptr fs:[eax]
 00508C13    mov         dword ptr fs:[eax],esp
 00508C16    mov         eax,[007C4EF4];^gvar_007C7CB8:Cardinal
 00508C1B    cmp         byte ptr [eax+0C],0;TSysLocale.FarEast:Boolean
>00508C1F    je          00508C87
 00508C21    mov         eax,[007C4EC4];^gvar_0079EDDC
 00508C26    cmp         dword ptr [eax],2
>00508C29    je          00508C87
 00508C2B    test        byte ptr [ebx+5],8
>00508C2F    je          00508C87
 00508C31    mov         eax,dword ptr [ebx+4]
 00508C34    and         eax,0FFFFF7FF
 00508C39    push        eax
 00508C3A    mov         eax,dword ptr [ebx+0C]
 00508C3D    push        eax
 00508C3E    mov         eax,dword ptr [ebx+10]
 00508C41    push        eax
 00508C42    mov         eax,dword ptr [ebx+14]
 00508C45    push        eax
 00508C46    mov         eax,dword ptr [ebx+18]
 00508C49    push        eax
 00508C4A    mov         eax,dword ptr [ebx+1C]
 00508C4D    push        eax
 00508C4E    push        0
 00508C50    mov         eax,[007C7C54];gvar_007C7C54
 00508C55    push        eax
 00508C56    mov         eax,dword ptr [ebx+20]
 00508C59    push        eax
 00508C5A    mov         ecx,508D04
 00508C5F    lea         edx,[ebx+4C]
 00508C62    mov         eax,dword ptr [ebx+8]
 00508C65    call        CreateWindowEx
 00508C6A    mov         edi,eax
 00508C6C    mov         dword ptr [esi+278],edi;TCustomMemo.FHandle:HWND
 00508C72    test        edi,edi
>00508C74    je          00508CC1
 00508C76    push        0
 00508C78    push        1
 00508C7A    push        0CF
 00508C7F    push        edi
 00508C80    call        user32.SendMessageW
>00508C85    jmp         00508CC1
 00508C87    mov         eax,dword ptr [ebx+4]
 00508C8A    push        eax
 00508C8B    mov         eax,dword ptr [ebx+0C]
 00508C8E    push        eax
 00508C8F    mov         eax,dword ptr [ebx+10]
 00508C92    push        eax
 00508C93    mov         eax,dword ptr [ebx+14]
 00508C96    push        eax
 00508C97    mov         eax,dword ptr [ebx+18]
 00508C9A    push        eax
 00508C9B    mov         eax,dword ptr [ebx+1C]
 00508C9E    push        eax
 00508C9F    push        0
 00508CA1    mov         eax,[007C7C54];gvar_007C7C54
 00508CA6    push        eax
 00508CA7    mov         eax,dword ptr [ebx+20]
 00508CAA    push        eax
 00508CAB    mov         ecx,508D04
 00508CB0    lea         edx,[ebx+4C]
 00508CB3    mov         eax,dword ptr [ebx+8]
 00508CB6    call        CreateWindowEx
 00508CBB    mov         dword ptr [esi+278],eax;TCustomMemo.FHandle:HWND
 00508CC1    lea         eax,[ebp-4]
 00508CC4    mov         edx,dword ptr [ebx]
 00508CC6    call        @UStrFromPWChar
 00508CCB    mov         eax,dword ptr [ebp-4]
 00508CCE    push        eax
 00508CCF    xor         ecx,ecx
 00508CD1    mov         edx,0C
 00508CD6    mov         eax,dword ptr [esi+278];TCustomMemo.FHandle:HWND
 00508CDC    call        SendTextMessage
 00508CE1    xor         eax,eax
 00508CE3    pop         edx
 00508CE4    pop         ecx
 00508CE5    pop         ecx
 00508CE6    mov         dword ptr fs:[eax],edx
 00508CE9    push        508CFE
 00508CEE    lea         eax,[ebp-4]
 00508CF1    call        @UStrClr
 00508CF6    ret
>00508CF7    jmp         @HandleFinally
>00508CFC    jmp         00508CEE
 00508CFE    pop         edi
 00508CFF    pop         esi
 00508D00    pop         ebx
 00508D01    pop         ecx
 00508D02    pop         ebp
 00508D03    ret
end;*}

//00508D08
{*procedure sub_00508D08(?:?);
begin
 00508D08    push        ebx
 00508D09    push        esi
 00508D0A    add         esp,0FFFFFFF8
 00508D0D    mov         esi,edx
 00508D0F    mov         ebx,eax
 00508D11    lea         eax,[esp+4]
 00508D15    push        eax
 00508D16    lea         eax,[esp+4]
 00508D1A    push        eax
 00508D1B    push        0B0
 00508D20    mov         eax,ebx
 00508D22    call        TWinControl.GetHandle
 00508D27    push        eax
 00508D28    call        user32.SendMessageW
 00508D2D    push        0
 00508D2F    mov         eax,dword ptr [esp+4]
 00508D33    push        eax
 00508D34    push        0C9
 00508D39    mov         eax,ebx
 00508D3B    call        TWinControl.GetHandle
 00508D40    push        eax
 00508D41    call        user32.SendMessageW
 00508D46    mov         dword ptr [esi+4],eax
 00508D49    push        0
 00508D4B    mov         eax,dword ptr [esi+4]
 00508D4E    push        eax
 00508D4F    push        0BB
 00508D54    mov         eax,ebx
 00508D56    call        TWinControl.GetHandle
 00508D5B    push        eax
 00508D5C    call        user32.SendMessageW
 00508D61    mov         edx,dword ptr [esp]
 00508D64    sub         edx,eax
 00508D66    mov         dword ptr [esi],edx
 00508D68    pop         ecx
 00508D69    pop         edx
 00508D6A    pop         esi
 00508D6B    pop         ebx
 00508D6C    ret
end;*}

//00508D70
{*procedure TCustomMemo.sub_004E5F1C(?:?);
begin
 00508D70    push        ebx
 00508D71    push        esi
 00508D72    mov         ebx,edx
 00508D74    mov         esi,eax
 00508D76    mov         edx,ebx
 00508D78    mov         eax,esi
 00508D7A    call        TControl.sub_004E5F1C
 00508D7F    sub         bl,1
>00508D82    jb          00508D88
>00508D84    je          00508D9E
>00508D86    jmp         00508DB1
 00508D88    mov         eax,dword ptr [esi+0BC];TCustomMemo.FTouchManager:TTouchManager
 00508D8E    movzx       edx,byte ptr ds:[508DB4];0x12 gvar_00508DB4
 00508D95    cmp         dl,byte ptr [eax+10];TTouchManager.FInteractiveGestures:TInteractiveGestures
 00508D98    setne       al
 00508D9B    pop         esi
 00508D9C    pop         ebx
 00508D9D    ret
 00508D9E    mov         eax,dword ptr [esi+0BC];TCustomMemo.FTouchManager:TTouchManager
 00508DA4    movzx       edx,byte ptr ds:[508DB8];0x1E gvar_00508DB8
 00508DAB    cmp         dl,byte ptr [eax+11];TTouchManager.FInteractiveGestureOptions:TInteractiveGestureOptions
 00508DAE    setne       al
 00508DB1    pop         esi
 00508DB2    pop         ebx
 00508DB3    ret
end;*}

//00508DBC
{*procedure sub_00508DBC(?:?);
begin
 00508DBC    push        ebx
 00508DBD    push        esi
 00508DBE    mov         esi,edx
 00508DC0    mov         ebx,eax
 00508DC2    push        0
 00508DC4    mov         eax,dword ptr [esi+4]
 00508DC7    push        eax
 00508DC8    push        0BB
 00508DCD    mov         eax,ebx
 00508DCF    call        TWinControl.GetHandle
 00508DD4    push        eax
 00508DD5    call        user32.SendMessageW
 00508DDA    add         eax,dword ptr [esi]
 00508DDC    mov         esi,eax
 00508DDE    push        esi
 00508DDF    push        esi
 00508DE0    push        0B1
 00508DE5    mov         eax,ebx
 00508DE7    call        TWinControl.GetHandle
 00508DEC    push        eax
 00508DED    call        user32.SendMessageW
 00508DF2    pop         esi
 00508DF3    pop         ebx
 00508DF4    ret
end;*}

//00508DF8
procedure TCustomMemo.CMFontChanged(var Message:TMessage);
begin
{*
 00508DF8    push        ebx
 00508DF9    mov         ebx,eax
 00508DFB    mov         eax,ebx
 00508DFD    call        TWinControl.CMFontChanged
 00508E02    xor         edx,edx
 00508E04    mov         eax,ebx
 00508E06    call        0050747C
 00508E0B    pop         ebx
 00508E0C    ret
*}
end;

//00508E10
procedure TMemo.SetLines(Value:TStrings);
begin
{*
 00508E10    push        esi
 00508E11    mov         esi,eax
 00508E13    mov         eax,dword ptr [esi+2C8];TMemo.FLines:TStrings
 00508E19    mov         ecx,dword ptr [eax]
 00508E1B    call        dword ptr [ecx+8];TStrings.Assign
 00508E1E    pop         esi
 00508E1F    ret
*}
end;

//00508E20
procedure TMemo.SetScrollBars(Value:TScrollStyle);
begin
{*
 00508E20    cmp         dl,byte ptr [eax+2CC];TMemo.FScrollBars:TScrollStyle
>00508E26    je          00508E33
 00508E28    mov         byte ptr [eax+2CC],dl;TMemo.FScrollBars:TScrollStyle
 00508E2E    call        TWinControl.RecreateWnd
 00508E33    ret
*}
end;

//00508E34
procedure TMemo.SetWordWrap(Value:Boolean);
begin
{*
 00508E34    cmp         dl,byte ptr [eax+2CD];TMemo.FWordWrap:Boolean
>00508E3A    je          00508E47
 00508E3C    mov         byte ptr [eax+2CD],dl;TMemo.FWordWrap:Boolean
 00508E42    call        TWinControl.RecreateWnd
 00508E47    ret
*}
end;

//00508E48
{*procedure TCustomMemo.WMGetDlgCode(?:?);
begin
 00508E48    push        ebx
 00508E49    push        esi
 00508E4A    mov         esi,edx
 00508E4C    mov         ebx,eax
 00508E4E    mov         edx,esi
 00508E50    mov         eax,ebx
 00508E52    mov         ecx,dword ptr [eax]
 00508E54    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 00508E57    cmp         byte ptr [ebx+2CF],0;TCustomMemo.FWantTabs:Boolean
>00508E5E    je          00508E66
 00508E60    or          dword ptr [esi+0C],2
>00508E64    jmp         00508E6A
 00508E66    and         dword ptr [esi+0C],0FFFFFFFD
 00508E6A    cmp         byte ptr [ebx+2CE],0;TCustomMemo.FWantReturns:Boolean
>00508E71    jne         00508E77
 00508E73    and         dword ptr [esi+0C],0FFFFFFFB
 00508E77    pop         esi
 00508E78    pop         ebx
 00508E79    ret
end;*}

//00508E7C
procedure TCustomMemo.WMNCDestroy;
begin
{*
 00508E7C    call        TWinControl.WMNCDestroy
 00508E81    ret
*}
end;

//00508E84
{*procedure TCustomMemo.sub_004EEC30(?:?);
begin
 00508E84    push        ebx
 00508E85    push        esi
 00508E86    mov         esi,edx
 00508E88    mov         ebx,eax
 00508E8A    mov         edx,esi
 00508E8C    mov         eax,ebx
 00508E8E    call        TCustomEdit.sub_004EEC30
 00508E93    cmp         word ptr [esi],0D
>00508E97    jne         00508EA7
 00508E99    cmp         byte ptr [ebx+2CE],0;TCustomMemo.FWantReturns:Boolean
>00508EA0    jne         00508EA7
 00508EA2    mov         word ptr [esi],0
 00508EA7    pop         esi
 00508EA8    pop         ebx
 00508EA9    ret
end;*}

//00508EAC
constructor sub_00508EAC;
begin
{*
 00508EAC    push        ebx
 00508EAD    push        esi
 00508EAE    test        dl,dl
>00508EB0    je          00508EBA
 00508EB2    add         esp,0FFFFFFF0
 00508EB5    call        @ClassCreate
 00508EBA    mov         ebx,edx
 00508EBC    mov         esi,eax
 00508EBE    xor         edx,edx
 00508EC0    mov         eax,esi
 00508EC2    call        TStrings.Create
 00508EC7    mov         eax,esi
 00508EC9    test        bl,bl
>00508ECB    je          00508EDC
 00508ECD    call        @AfterConstruction
 00508ED2    pop         dword ptr fs:[0]
 00508ED9    add         esp,0C
 00508EDC    mov         eax,esi
 00508EDE    pop         esi
 00508EDF    pop         ebx
 00508EE0    ret
*}
end;

//00508EE4
destructor TCustomComboBoxStrings.Destroy();
begin
{*
 00508EE4    push        ebx
 00508EE5    push        esi
 00508EE6    call        @BeforeDestruction
 00508EEB    mov         ebx,edx
 00508EED    mov         esi,eax
 00508EEF    mov         dl,0FC
 00508EF1    and         dl,bl
 00508EF3    mov         eax,esi
 00508EF5    call        TStrings.Destroy
 00508EFA    test        bl,bl
>00508EFC    jle         00508F05
 00508EFE    mov         eax,esi
 00508F00    call        @ClassDestroy
 00508F05    pop         esi
 00508F06    pop         ebx
 00508F07    ret
*}
end;

//00508F08
procedure TCustomComboBoxStrings.GetCount;
begin
{*
 00508F08    push        ebx
 00508F09    mov         ebx,eax
 00508F0B    push        0
 00508F0D    push        0
 00508F0F    push        146
 00508F14    mov         eax,dword ptr [ebx+2C];TCustomComboBoxStrings..................FComboBox:TCustomCombo
 00508F17    call        TWinControl.GetHandle
 00508F1C    push        eax
 00508F1D    call        user32.SendMessageW
 00508F22    pop         ebx
 00508F23    ret
*}
end;

//00508F24
{*function sub_00508F24(?:?):?;
begin
 00508F24    push        ebp
 00508F25    mov         ebp,esp
 00508F27    push        0
 00508F29    push        ebx
 00508F2A    push        esi
 00508F2B    push        edi
 00508F2C    mov         esi,edx
 00508F2E    mov         ebx,eax
 00508F30    xor         eax,eax
 00508F32    push        ebp
 00508F33    push        508FA6
 00508F38    push        dword ptr fs:[eax]
 00508F3B    mov         dword ptr fs:[eax],esp
 00508F3E    push        0
 00508F40    push        esi
 00508F41    push        150
 00508F46    mov         eax,dword ptr [ebx+2C];TCustomComboBoxStrings...................FComboBox:TCustomCombo
 00508F49    call        TWinControl.GetHandle
 00508F4E    push        eax
 00508F4F    call        user32.SendMessageW
 00508F54    mov         edi,eax
 00508F56    cmp         edi,0FFFFFFFF
>00508F59    jne         00508F8E
 00508F5B    mov         eax,ebx
 00508F5D    mov         edx,dword ptr [eax]
 00508F5F    call        dword ptr [edx+14];TCustomComboBoxStrings.GetCount
 00508F62    test        eax,eax
>00508F64    je          00508F75
 00508F66    test        esi,esi
>00508F68    jl          00508F75
 00508F6A    mov         eax,ebx
 00508F6C    mov         edx,dword ptr [eax]
 00508F6E    call        dword ptr [edx+14];TCustomComboBoxStrings.GetCount
 00508F71    cmp         esi,eax
>00508F73    jle         00508F8E
 00508F75    lea         edx,[ebp-4]
 00508F78    mov         eax,[007C4BB4];^SResString135:TResStringRec
 00508F7D    call        LoadResString
 00508F82    mov         edx,dword ptr [ebp-4]
 00508F85    mov         ecx,esi
 00508F87    mov         eax,ebx
 00508F89    call        TStrings.Error
 00508F8E    mov         ebx,edi
 00508F90    xor         eax,eax
 00508F92    pop         edx
 00508F93    pop         ecx
 00508F94    pop         ecx
 00508F95    mov         dword ptr fs:[eax],edx
 00508F98    push        508FAD
 00508F9D    lea         eax,[ebp-4]
 00508FA0    call        @UStrClr
 00508FA5    ret
>00508FA6    jmp         @HandleFinally
>00508FAB    jmp         00508F9D
 00508FAD    mov         eax,ebx
 00508FAF    pop         edi
 00508FB0    pop         esi
 00508FB1    pop         ebx
 00508FB2    pop         ecx
 00508FB3    pop         ebp
 00508FB4    ret
end;*}

//00508FB8
{*procedure sub_00508FB8(?:?; ?:?);
begin
 00508FB8    push        ebx
 00508FB9    push        esi
 00508FBA    push        edi
 00508FBB    mov         edi,ecx
 00508FBD    mov         esi,edx
 00508FBF    mov         ebx,eax
 00508FC1    push        edi
 00508FC2    push        esi
 00508FC3    push        151
 00508FC8    mov         eax,dword ptr [ebx+2C];TCustomComboBoxStrings....................FComboBox:TCustomCombo
 00508FCB    call        TWinControl.GetHandle
 00508FD0    push        eax
 00508FD1    call        user32.SendMessageW
 00508FD6    pop         edi
 00508FD7    pop         esi
 00508FD8    pop         ebx
 00508FD9    ret
end;*}

//00508FDC
{*procedure TCustomComboBoxStrings.Get(?:?; ?:?);
begin
 00508FDC    push        ebx
 00508FDD    push        esi
 00508FDE    push        edi
 00508FDF    mov         esi,ecx
 00508FE1    mov         edi,edx
 00508FE3    mov         ebx,eax
 00508FE5    push        0
 00508FE7    push        edi
 00508FE8    push        149
 00508FED    mov         eax,dword ptr [ebx+2C];TCustomComboBoxStrings.....................FComboBox:TCustomCombo
 00508FF0    call        TWinControl.GetHandle
 00508FF5    push        eax
 00508FF6    call        user32.SendMessageW
 00508FFB    cmp         eax,0FFFFFFFF
>00508FFE    je          0050902A
 00509000    test        eax,eax
>00509002    jle         0050902A
 00509004    mov         edx,esi
 00509006    xchg        eax,edx
 00509007    call        @UStrSetLength
 0050900C    mov         eax,dword ptr [esi]
 0050900E    call        @UStrToPWChar
 00509013    push        eax
 00509014    push        edi
 00509015    push        148
 0050901A    mov         eax,dword ptr [ebx+2C];TCustomComboBoxStrings......................FComboBox:TCustomComb...
 0050901D    call        TWinControl.GetHandle
 00509022    push        eax
 00509023    call        user32.SendMessageW
>00509028    jmp         00509031
 0050902A    mov         eax,esi
 0050902C    call        @UStrClr
 00509031    pop         edi
 00509032    pop         esi
 00509033    pop         ebx
 00509034    ret
end;*}

//00509038
procedure TCustomComboBoxStrings.Clear;
begin
{*
 00509038    push        ebp
 00509039    mov         ebp,esp
 0050903B    push        0
 0050903D    push        esi
 0050903E    mov         esi,eax
 00509040    xor         eax,eax
 00509042    push        ebp
 00509043    push        50909C
 00509048    push        dword ptr fs:[eax]
 0050904B    mov         dword ptr fs:[eax],esp
 0050904E    lea         edx,[ebp-4]
 00509051    mov         eax,dword ptr [esi+2C];TCustomComboBoxStrings.......................FComboBox:TCustomCom...
 00509054    call        TControl.GetText
 00509059    push        0
 0050905B    push        0
 0050905D    push        14B
 00509062    mov         eax,dword ptr [esi+2C];TCustomComboBoxStrings........................FComboBox:TCustomCo...
 00509065    call        TWinControl.GetHandle
 0050906A    push        eax
 0050906B    call        user32.SendMessageW
 00509070    mov         edx,dword ptr [ebp-4]
 00509073    mov         eax,dword ptr [esi+2C];TCustomComboBoxStrings.........................FComboBox:TCustomC...
 00509076    call        TControl.SetText
 0050907B    mov         eax,dword ptr [esi+2C];TCustomComboBoxStrings..........................FComboBox:TCustom...
 0050907E    mov         edx,dword ptr [eax]
 00509080    call        dword ptr [edx+0B4];TWinControl.Update
 00509086    xor         eax,eax
 00509088    pop         edx
 00509089    pop         ecx
 0050908A    pop         ecx
 0050908B    mov         dword ptr fs:[eax],edx
 0050908E    push        5090A3
 00509093    lea         eax,[ebp-4]
 00509096    call        @UStrClr
 0050909B    ret
>0050909C    jmp         @HandleFinally
>005090A1    jmp         00509093
 005090A3    pop         esi
 005090A4    pop         ecx
 005090A5    pop         ebp
 005090A6    ret
*}
end;

//005090A8
procedure TCustomComboBoxStrings.Delete(Index:Integer);
begin
{*
 005090A8    push        ebx
 005090A9    push        esi
 005090AA    mov         esi,edx
 005090AC    mov         ebx,eax
 005090AE    push        0
 005090B0    push        esi
 005090B1    push        144
 005090B6    mov         eax,dword ptr [ebx+2C];TCustomComboBoxStrings...........................FComboBox:TCusto...
 005090B9    call        TWinControl.GetHandle
 005090BE    push        eax
 005090BF    call        user32.SendMessageW
 005090C4    pop         esi
 005090C5    pop         ebx
 005090C6    ret
*}
end;

//005090C8
function TCustomComboBoxStrings.IndexOf(S:string):Integer;
begin
{*
 005090C8    push        ebx
 005090C9    push        esi
 005090CA    push        edi
 005090CB    mov         ebx,edx
 005090CD    mov         esi,eax
 005090CF    test        ebx,ebx
>005090D1    je          005090ED
 005090D3    push        ebx
 005090D4    mov         eax,dword ptr [esi+2C];TCustomComboBoxStrings............................FComboBox:TCust...
 005090D7    call        TWinControl.GetHandle
 005090DC    or          ecx,0FFFFFFFF
 005090DF    mov         edx,158
 005090E4    call        SendTextMessage
 005090E9    mov         edi,eax
>005090EB    jmp         00509128
 005090ED    xor         ebx,ebx
 005090EF    xor         edi,edi
>005090F1    jmp         00509112
 005090F3    push        0
 005090F5    push        edi
 005090F6    push        149
 005090FB    mov         eax,dword ptr [esi+2C];TCustomComboBoxStrings.............................FComboBox:TCus...
 005090FE    call        TWinControl.GetHandle
 00509103    push        eax
 00509104    call        user32.SendMessageW
 00509109    test        eax,eax
>0050910B    jne         00509111
 0050910D    mov         bl,1
>0050910F    jmp         00509112
 00509111    inc         edi
 00509112    test        bl,bl
>00509114    jne         00509121
 00509116    mov         eax,esi
 00509118    mov         edx,dword ptr [eax]
 0050911A    call        dword ptr [edx+14];TCustomComboBoxStrings.GetCount
 0050911D    cmp         edi,eax
>0050911F    jl          005090F3
 00509121    test        bl,bl
>00509123    jne         00509128
 00509125    or          edi,0FFFFFFFF
 00509128    mov         eax,edi
 0050912A    pop         edi
 0050912B    pop         esi
 0050912C    pop         ebx
 0050912D    ret
*}
end;

//00509130
{*procedure sub_00509130(?:?);
begin
 00509130    push        ebx
 00509131    push        esi
 00509132    mov         ebx,edx
 00509134    mov         esi,eax
 00509136    push        0
 00509138    mov         eax,ebx
 0050913A    xor         al,1
 0050913C    and         eax,7F
 0050913F    push        eax
 00509140    push        0B
 00509142    mov         eax,dword ptr [esi+2C];TCustomComboBoxStrings..............................FComboBox:TCu...
 00509145    call        TWinControl.GetHandle
 0050914A    push        eax
 0050914B    call        user32.SendMessageW
 00509150    xor         bl,1
 00509153    test        bl,bl
>00509155    je          0050915F
 00509157    mov         eax,dword ptr [esi+2C];TCustomComboBoxStrings...............................FComboBox:TC...
 0050915A    call        TControl.Refresh
 0050915F    pop         esi
 00509160    pop         ebx
 00509161    ret
end;*}

//00509164
function TComboBoxStrings.Add(S:string):Integer;
begin
{*
 00509164    push        ebp
 00509165    mov         ebp,esp
 00509167    push        0
 00509169    push        0
 0050916B    push        0
 0050916D    push        ebx
 0050916E    push        esi
 0050916F    mov         ebx,edx
 00509171    mov         esi,eax
 00509173    xor         eax,eax
 00509175    push        ebp
 00509176    push        509200
 0050917B    push        dword ptr fs:[eax]
 0050917E    mov         dword ptr fs:[eax],esp
 00509181    test        ebx,ebx
>00509183    jne         00509190
 00509185    mov         word ptr [ebp-6],0
 0050918B    lea         ebx,[ebp-6]
>0050918E    jmp         005091A5
 00509190    lea         eax,[ebp-4]
 00509193    mov         edx,ebx
 00509195    call        @UStrLAsg
 0050919A    lea         eax,[ebp-4]
 0050919D    call        UniqueString
 005091A2    mov         ebx,dword ptr [ebp-4]
 005091A5    push        ebx
 005091A6    push        0
 005091A8    push        143
 005091AD    mov         eax,dword ptr [esi+2C];TComboBoxStrings................................FComboBox:TCustom...
 005091B0    call        TWinControl.GetHandle
 005091B5    push        eax
 005091B6    call        user32.SendMessageW
 005091BB    mov         ebx,eax
 005091BD    test        ebx,ebx
>005091BF    jge         005091E2
 005091C1    lea         edx,[ebp-0C]
 005091C4    mov         eax,[007C44D0];^SResString310:TResStringRec
 005091C9    call        LoadResString
 005091CE    mov         ecx,dword ptr [ebp-0C]
 005091D1    mov         dl,1
 005091D3    mov         eax,[0046BDEC];EOutOfResources
 005091D8    call        Exception.Create;EOutOfResources.Create
 005091DD    call        @RaiseExcept
 005091E2    xor         eax,eax
 005091E4    pop         edx
 005091E5    pop         ecx
 005091E6    pop         ecx
 005091E7    mov         dword ptr fs:[eax],edx
 005091EA    push        509207
 005091EF    lea         eax,[ebp-0C]
 005091F2    call        @UStrClr
 005091F7    lea         eax,[ebp-4]
 005091FA    call        @UStrClr
 005091FF    ret
>00509200    jmp         @HandleFinally
>00509205    jmp         005091EF
 00509207    mov         eax,ebx
 00509209    pop         esi
 0050920A    pop         ebx
 0050920B    mov         esp,ebp
 0050920D    pop         ebp
 0050920E    ret
*}
end;

//00509210
procedure TComboBoxStrings.Insert(Index:Integer; S:string);
begin
{*
 00509210    push        ebp
 00509211    mov         ebp,esp
 00509213    push        0
 00509215    push        0
 00509217    push        0
 00509219    push        ebx
 0050921A    push        esi
 0050921B    push        edi
 0050921C    mov         ebx,ecx
 0050921E    mov         edi,edx
 00509220    mov         esi,eax
 00509222    xor         eax,eax
 00509224    push        ebp
 00509225    push        5092AC
 0050922A    push        dword ptr fs:[eax]
 0050922D    mov         dword ptr fs:[eax],esp
 00509230    test        ebx,ebx
>00509232    jne         0050923F
 00509234    mov         word ptr [ebp-6],0
 0050923A    lea         ebx,[ebp-6]
>0050923D    jmp         00509254
 0050923F    lea         eax,[ebp-4]
 00509242    mov         edx,ebx
 00509244    call        @UStrLAsg
 00509249    lea         eax,[ebp-4]
 0050924C    call        UniqueString
 00509251    mov         ebx,dword ptr [ebp-4]
 00509254    push        ebx
 00509255    push        edi
 00509256    push        14A
 0050925B    mov         eax,dword ptr [esi+2C];TComboBoxStrings.................................FComboBox:TCusto...
 0050925E    call        TWinControl.GetHandle
 00509263    push        eax
 00509264    call        user32.SendMessageW
 00509269    test        eax,eax
>0050926B    jge         0050928E
 0050926D    lea         edx,[ebp-0C]
 00509270    mov         eax,[007C44D0];^SResString310:TResStringRec
 00509275    call        LoadResString
 0050927A    mov         ecx,dword ptr [ebp-0C]
 0050927D    mov         dl,1
 0050927F    mov         eax,[0046BDEC];EOutOfResources
 00509284    call        Exception.Create;EOutOfResources.Create
 00509289    call        @RaiseExcept
 0050928E    xor         eax,eax
 00509290    pop         edx
 00509291    pop         ecx
 00509292    pop         ecx
 00509293    mov         dword ptr fs:[eax],edx
 00509296    push        5092B3
 0050929B    lea         eax,[ebp-0C]
 0050929E    call        @UStrClr
 005092A3    lea         eax,[ebp-4]
 005092A6    call        @UStrClr
 005092AB    ret
>005092AC    jmp         @HandleFinally
>005092B1    jmp         0050929B
 005092B3    pop         edi
 005092B4    pop         esi
 005092B5    pop         ebx
 005092B6    mov         esp,ebp
 005092B8    pop         ebp
 005092B9    ret
*}
end;

//005092BC
constructor TCustomCombo.Create(AOwner:TComponent);
begin
{*
 005092BC    push        ebp
 005092BD    mov         ebp,esp
 005092BF    push        ecx
 005092C0    push        ebx
 005092C1    push        esi
 005092C2    test        dl,dl
>005092C4    je          005092CE
 005092C6    add         esp,0FFFFFFF0
 005092C9    call        @ClassCreate
 005092CE    mov         byte ptr [ebp-1],dl
 005092D1    mov         ebx,eax
 005092D3    xor         edx,edx
 005092D5    mov         eax,ebx
 005092D7    call        TCustomListControl.Create
 005092DC    mov         eax,[007C4770];^gvar_007CA5E0
 005092E1    cmp         byte ptr [eax],0
>005092E4    je          005092F0
 005092E6    mov         eax,[005093B4];0x842A2 gvar_005093B4
 005092EB    mov         dword ptr [ebx+60],eax;TCustomCombo.FControlStyle:TControlStyle
>005092EE    jmp         005092F8
 005092F0    mov         eax,[005093B8];0x842B2 gvar_005093B8
 005092F5    mov         dword ptr [ebx+60],eax;TCustomCombo.FControlStyle:TControlStyle
 005092F8    mov         edx,91
 005092FD    mov         eax,ebx
 005092FF    call        TControl.SetWidth
 00509304    mov         edx,19
 00509309    mov         eax,ebx
 0050930B    call        TControl.SetHeight
 00509310    mov         dl,1
 00509312    mov         eax,ebx
 00509314    call        TWinControl.SetTabStop
 00509319    xor         edx,edx
 0050931B    mov         eax,ebx
 0050931D    call        TGroupBox.SetParentColor
 00509322    mov         dl,1
 00509324    mov         eax,[004D9044];TControlCanvas
 00509329    call        TCanvas.Create;TControlCanvas.Create
 0050932E    mov         esi,eax
 00509330    mov         dword ptr [ebx+290],esi;TCustomCombo.FCanvas:TCanvas
 00509336    mov         eax,esi
 00509338    mov         edx,ebx
 0050933A    call        TControlCanvas.SetControl
 0050933F    mov         dword ptr [ebx+2C8],10;TCustomCombo.FItemHeight:Integer
 00509349    push        ebx
 0050934A    mov         eax,dword ptr [ebx]
 0050934C    mov         eax,dword ptr [eax+138];TCustomCombo.FOnMouseActivate:TMouseActivateEvent
 00509352    push        eax
 00509353    call        MakeObjectInstance
 00509358    mov         dword ptr [ebx+2EC],eax;TCustomCombo.FEditInstance:Pointer
 0050935E    push        ebx
 0050935F    push        509BB0
 00509364    call        MakeObjectInstance
 00509369    mov         dword ptr [ebx+2F0],eax;TCustomCombo.FListInstance:Pointer
 0050936F    mov         dword ptr [ebx+298],8;TCustomCombo.FDropDownCount:Integer
 00509379    mov         dword ptr [ebx+2A0],0FFFFFFFF;TCustomCombo.FItemIndex:Integer
 00509383    mov         dword ptr [ebx+2E8],0FFFFFFFF;TCustomCombo.FSaveIndex:Integer
 0050938D    mov         byte ptr [ebx+29C],0;TCustomCombo.FInBufferedPrintClient:Boolean
 00509394    mov         eax,ebx
 00509396    cmp         byte ptr [ebp-1],0
>0050939A    je          005093AB
 0050939C    call        @AfterConstruction
 005093A1    pop         dword ptr fs:[0]
 005093A8    add         esp,0C
 005093AB    mov         eax,ebx
 005093AD    pop         esi
 005093AE    pop         ebx
 005093AF    pop         ecx
 005093B0    pop         ebp
 005093B1    ret
*}
end;

//005093BC
destructor TCustomCombo.Destroy();
begin
{*
 005093BC    push        ebx
 005093BD    push        esi
 005093BE    call        @BeforeDestruction
 005093C3    mov         ebx,edx
 005093C5    mov         esi,eax
 005093C7    mov         eax,esi
 005093C9    call        TWinControl.HandleAllocated
 005093CE    test        al,al
>005093D0    je          005093DC
 005093D2    mov         eax,esi
 005093D4    mov         edx,dword ptr [eax]
 005093D6    call        dword ptr [edx+0DC];TCustomCombo.sub_00509444
 005093DC    mov         eax,dword ptr [esi+2F0];TCustomCombo.FListInstance:Pointer
 005093E2    call        FreeObjectInstance
 005093E7    mov         eax,dword ptr [esi+2EC];TCustomCombo.FEditInstance:Pointer
 005093ED    call        FreeObjectInstance
 005093F2    mov         eax,dword ptr [esi+290];TCustomCombo.FCanvas:TCanvas
 005093F8    call        TObject.Free
 005093FD    mov         dl,0FC
 005093FF    and         dl,bl
 00509401    mov         eax,esi
 00509403    call        TWinControl.Destroy
 00509408    test        bl,bl
>0050940A    jle         00509413
 0050940C    mov         eax,esi
 0050940E    call        @ClassDestroy
 00509413    pop         esi
 00509414    pop         ebx
 00509415    ret
*}
end;

//00509418
procedure TCustomCombo.Clear;
begin
{*
 00509418    push        ebx
 00509419    mov         ebx,eax
 0050941B    mov         edx,509440
 00509420    mov         eax,ebx
 00509422    call        TControl.SetTextBuf
 00509427    mov         eax,dword ptr [ebx+2CC];TCustomCombo.FItems:TStrings
 0050942D    mov         edx,dword ptr [eax]
 0050942F    call        dword ptr [edx+48];TStrings.Clear
 00509432    mov         dword ptr [ebx+2E8],0FFFFFFFF;TCustomCombo.FSaveIndex:Integer
 0050943C    pop         ebx
 0050943D    ret
*}
end;

//00509444
procedure sub_00509444;
begin
{*
 00509444    push        ebx
 00509445    mov         ebx,eax
 00509447    mov         eax,ebx
 00509449    call        004EC074
 0050944E    xor         eax,eax
 00509450    mov         dword ptr [ebx+2D0],eax;TCustomCombo.FEditHandle:HWND
 00509456    xor         eax,eax
 00509458    mov         dword ptr [ebx+2D4],eax;TCustomCombo.FListHandle:HWND
 0050945E    xor         eax,eax
 00509460    mov         dword ptr [ebx+2D8],eax;TCustomCombo.FDropHandle:HWND
 00509466    pop         ebx
 00509467    ret
*}
end;

//00509468
procedure TCustomCombo.SelectAll;
begin
{*
 00509468    push        ebx
 00509469    mov         ebx,eax
 0050946B    push        0FFFF0000
 00509470    push        0
 00509472    push        142
 00509477    mov         eax,ebx
 00509479    call        TWinControl.GetHandle
 0050947E    push        eax
 0050947F    call        user32.SendMessageW
 00509484    pop         ebx
 00509485    ret
*}
end;

//00509488
{*function sub_00509488(?:TCustomCombo):?;
begin
 00509488    push        ebx
 00509489    mov         ebx,eax
 0050948B    push        0
 0050948D    push        0
 0050948F    push        157
 00509494    mov         eax,ebx
 00509496    call        TWinControl.GetHandle
 0050949B    push        eax
 0050949C    call        user32.SendMessageW
 005094A1    cmp         eax,1
 005094A4    sbb         eax,eax
 005094A6    inc         eax
 005094A7    pop         ebx
 005094A8    ret
end;*}

//005094AC
{*procedure sub_005094AC(?:TCustomCombo; ?:?);
begin
 005094AC    push        ebx
 005094AD    push        esi
 005094AE    add         esp,0FFFFFFF0
 005094B1    mov         ebx,edx
 005094B3    mov         esi,eax
 005094B5    push        0
 005094B7    movzx       eax,bl
 005094BA    push        eax
 005094BB    push        14F
 005094C0    mov         eax,esi
 005094C2    call        TWinControl.GetHandle
 005094C7    push        eax
 005094C8    call        user32.SendMessageW
 005094CD    mov         edx,esp
 005094CF    mov         eax,esi
 005094D1    mov         ecx,dword ptr [eax]
 005094D3    call        dword ptr [ecx+64]
 005094D6    push        0FF
 005094D8    lea         eax,[esp+4]
 005094DC    push        eax
 005094DD    mov         eax,esi
 005094DF    call        TWinControl.GetHandle
 005094E4    push        eax
 005094E5    call        user32.InvalidateRect
 005094EA    add         esp,10
 005094ED    pop         esi
 005094EE    pop         ebx
 005094EF    ret
end;*}

//005094F0
procedure TComboBox.GetItemIndex;
begin
{*
 005094F0    push        ebx
 005094F1    mov         ebx,eax
 005094F3    test        byte ptr [ebx+1C],1;TComboBox.FComponentState:TComponentState
>005094F7    je          00509501
 005094F9    mov         eax,dword ptr [ebx+2A0];TComboBox.FItemIndex:Integer
 005094FF    pop         ebx
 00509500    ret
 00509501    push        0
 00509503    push        0
 00509505    push        147
 0050950A    mov         eax,ebx
 0050950C    call        TWinControl.GetHandle
 00509511    push        eax
 00509512    call        user32.SendMessageW
 00509517    pop         ebx
 00509518    ret
*}
end;

//0050951C
procedure TComboBox.SetItemIndex(Value:Integer);
begin
{*
 0050951C    push        ebx
 0050951D    push        esi
 0050951E    mov         esi,edx
 00509520    mov         ebx,eax
 00509522    test        byte ptr [ebx+1C],1;TComboBox.FComponentState:TComponentState
>00509526    je          00509531
 00509528    mov         dword ptr [ebx+2A0],esi;TComboBox.FItemIndex:Integer
 0050952E    pop         esi
 0050952F    pop         ebx
 00509530    ret
 00509531    mov         eax,ebx
 00509533    mov         edx,dword ptr [eax]
 00509535    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050953B    cmp         esi,eax
>0050953D    je          00509554
 0050953F    push        0
 00509541    push        esi
 00509542    push        14E
 00509547    mov         eax,ebx
 00509549    call        TWinControl.GetHandle
 0050954E    push        eax
 0050954F    call        user32.SendMessageW
 00509554    pop         esi
 00509555    pop         ebx
 00509556    ret
*}
end;

//00509638
procedure TComboBox.SetMaxLength(Value:Integer);
begin
{*
 00509638    push        ebx
 00509639    push        esi
 0050963A    mov         esi,edx
 0050963C    mov         ebx,eax
 0050963E    test        esi,esi
>00509640    jge         00509644
 00509642    xor         esi,esi
 00509644    cmp         esi,dword ptr [ebx+294];TComboBox.FMaxLength:Integer
>0050964A    je          00509672
 0050964C    mov         dword ptr [ebx+294],esi;TComboBox.FMaxLength:Integer
 00509652    mov         eax,ebx
 00509654    call        TWinControl.HandleAllocated
 00509659    test        al,al
>0050965B    je          00509672
 0050965D    push        0
 0050965F    push        esi
 00509660    push        141
 00509665    mov         eax,ebx
 00509667    call        TWinControl.GetHandle
 0050966C    push        eax
 0050966D    call        user32.SendMessageW
 00509672    pop         esi
 00509673    pop         ebx
 00509674    ret
*}
end;

//00509678
procedure TComboBox.SetItemHeight(Value:Integer);
begin
{*
 00509678    test        edx,edx
>0050967A    jle         00509687
 0050967C    mov         dword ptr [eax+2C8],edx;TComboBox.FItemHeight:Integer
 00509682    call        TWinControl.RecreateWnd
 00509687    ret
*}
end;

//00509688
procedure TCustomCombo.WMCreate;
begin
{*
 00509688    push        ebx
 00509689    mov         ebx,eax
 0050968B    mov         eax,ebx
 0050968D    mov         ecx,dword ptr [eax]
 0050968F    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 00509692    cmp         dword ptr [ebx+184],0;TCustomCombo.FText:PWideChar
>00509699    je          005096AF
 0050969B    mov         eax,dword ptr [ebx+184];TCustomCombo.FText:PWideChar
 005096A1    push        eax
 005096A2    mov         eax,ebx
 005096A4    call        TWinControl.GetHandle
 005096A9    push        eax
 005096AA    call        user32.SetWindowTextW
 005096AF    pop         ebx
 005096B0    ret
*}
end;

//005096B4
procedure TCustomCombo.WMDrawItem(var Message:Messages.TWMDrawItem);
begin
{*
 005096B4    mov         ecx,dword ptr [eax]
 005096B6    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 005096B9    ret
*}
end;

//005096BC
procedure TCustomCombo.WMMeasureItem(var Message:Messages.TWMMeasureItem);
begin
{*
 005096BC    mov         ecx,dword ptr [eax]
 005096BE    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 005096C1    ret
*}
end;

//005096C4
procedure TCustomCombo.WMDeleteItem(var Message:Messages.TWMDeleteItem);
begin
{*
 005096C4    mov         ecx,dword ptr [eax]
 005096C6    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 005096C9    ret
*}
end;

//005096CC
{*procedure TCustomCombo.WMGetDlgCode(?:?);
begin
 005096CC    push        ebx
 005096CD    push        esi
 005096CE    mov         esi,edx
 005096D0    mov         ebx,eax
 005096D2    mov         edx,esi
 005096D4    mov         eax,ebx
 005096D6    mov         ecx,dword ptr [eax]
 005096D8    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 005096DB    mov         eax,ebx
 005096DD    call        00509488
 005096E2    test        al,al
>005096E4    je          005096EA
 005096E6    or          dword ptr [esi+0C],4
 005096EA    pop         esi
 005096EB    pop         ebx
 005096EC    ret
end;*}

//005096F0
{*procedure TCustomCombo.CMCancelMode(?:?);
begin
 005096F0    cmp         eax,dword ptr [edx+8]
>005096F3    je          00509703
 005096F5    push        0
 005096F7    xor         ecx,ecx
 005096F9    mov         edx,14F
 005096FE    call        TControl.Perform
 00509703    ret
end;*}

//00509704
{*procedure TCustomCombo.CMCtl3DChanged(?:?);
begin
 00509704    push        ebx
 00509705    push        esi
 00509706    mov         esi,edx
 00509708    mov         ebx,eax
 0050970A    mov         eax,[007C4770];^gvar_007CA5E0
 0050970F    cmp         byte ptr [eax],0
>00509712    je          0050971B
 00509714    mov         eax,ebx
 00509716    call        TWinControl.RecreateWnd
 0050971B    mov         edx,esi
 0050971D    mov         eax,ebx
 0050971F    call        TWinControl.CMCtl3DChanged
 00509724    pop         esi
 00509725    pop         ebx
 00509726    ret
end;*}

//00509728
procedure TCustomCombo.sub_00509728;
begin
{*
 00509728    push        ebx
 00509729    mov         ebx,eax
 0050972B    test        byte ptr [ebx+1C],8;TCustomCombo.FComponentState:TComponentState
>0050972F    jne         00509763
 00509731    mov         eax,dword ptr [ebx+0BC];TCustomCombo.FTouchManager:TTouchManager
 00509737    cmp         dword ptr [eax+0C],0;TTouchManager.FGestureManager:TCustomGestureManager
>0050973B    je          00509747
 0050973D    mov         eax,[00509768];0x200000 gvar_00509768
 00509742    or          dword ptr [ebx+60],eax;TCustomCombo.FControlStyle:TControlStyle
>00509745    jmp         00509751
 00509747    mov         eax,[00509768];0x200000 gvar_00509768
 0050974C    not         eax
 0050974E    and         dword ptr [ebx+60],eax;TCustomCombo.FControlStyle:TControlStyle
 00509751    mov         eax,ebx
 00509753    call        TWinControl.HandleAllocated
 00509758    test        al,al
>0050975A    je          00509763
 0050975C    mov         eax,ebx
 0050975E    call        TWinControl.RecreateWnd
 00509763    pop         ebx
 00509764    ret
*}
end;

//0050976C
procedure TCustomComboBox.sub_0050A238;
begin
{*
 0050976C    push        ebp
 0050976D    mov         ebp,esp
 0050976F    add         esp,0FFFFFFF8
 00509772    push        ebx
 00509773    xor         edx,edx
 00509775    mov         dword ptr [ebp-8],edx
 00509778    mov         ebx,eax
 0050977A    xor         eax,eax
 0050977C    push        ebp
 0050977D    push        5097E3
 00509782    push        dword ptr fs:[eax]
 00509785    mov         dword ptr fs:[eax],esp
 00509788    mov         eax,ebx
 0050978A    mov         edx,dword ptr [eax]
 0050978C    call        dword ptr [edx+24];TComponent.GetObservers
 0050978F    mov         edx,1
 00509794    mov         ecx,dword ptr [eax]
 00509796    call        dword ptr [ecx+14];TObservers.IsObserving
 00509799    test        al,al
>0050979B    je          005097BA
 0050979D    mov         eax,ebx
 0050979F    mov         edx,dword ptr [eax]
 005097A1    call        dword ptr [edx+24];TComponent.GetObservers
 005097A4    mov         dword ptr [ebp-4],eax
 005097A7    lea         edx,[ebp-8]
 005097AA    mov         eax,dword ptr [ebp-4]
 005097AD    call        TLinkObservers.GetEditLink
 005097B2    mov         eax,dword ptr [ebp-8]
 005097B5    mov         edx,dword ptr [eax]
 005097B7    call        dword ptr [edx+24]
 005097BA    mov         eax,ebx
 005097BC    call        TCustomCombo.sub_0050A238
 005097C1    mov         eax,ebx
 005097C3    mov         edx,dword ptr [eax]
 005097C5    call        dword ptr [edx+24];TComponent.GetObservers
 005097C8    call        004A1D04
 005097CD    xor         eax,eax
 005097CF    pop         edx
 005097D0    pop         ecx
 005097D1    pop         ecx
 005097D2    mov         dword ptr fs:[eax],edx
 005097D5    push        5097EA
 005097DA    lea         eax,[ebp-8]
 005097DD    call        @IntfClear
 005097E2    ret
>005097E3    jmp         @HandleFinally
>005097E8    jmp         005097DA
 005097EA    pop         ebx
 005097EB    pop         ecx
 005097EC    pop         ecx
 005097ED    pop         ebp
 005097EE    ret
*}
end;

//005097F0
procedure TCustomComboBox.Click;
begin
{*
 005097F0    push        ebp
 005097F1    mov         ebp,esp
 005097F3    add         esp,0FFFFFFF8
 005097F6    push        ebx
 005097F7    xor         edx,edx
 005097F9    mov         dword ptr [ebp-8],edx
 005097FC    mov         ebx,eax
 005097FE    xor         eax,eax
 00509800    push        ebp
 00509801    push        509867
 00509806    push        dword ptr fs:[eax]
 00509809    mov         dword ptr fs:[eax],esp
 0050980C    mov         eax,ebx
 0050980E    mov         edx,dword ptr [eax]
 00509810    call        dword ptr [edx+24];TComponent.GetObservers
 00509813    mov         edx,1
 00509818    mov         ecx,dword ptr [eax]
 0050981A    call        dword ptr [ecx+14];TObservers.IsObserving
 0050981D    test        al,al
>0050981F    je          0050983E
 00509821    mov         eax,ebx
 00509823    mov         edx,dword ptr [eax]
 00509825    call        dword ptr [edx+24];TComponent.GetObservers
 00509828    mov         dword ptr [ebp-4],eax
 0050982B    lea         edx,[ebp-8]
 0050982E    mov         eax,dword ptr [ebp-4]
 00509831    call        TLinkObservers.GetEditLink
 00509836    mov         eax,dword ptr [ebp-8]
 00509839    mov         edx,dword ptr [eax]
 0050983B    call        dword ptr [edx+24]
 0050983E    mov         eax,ebx
 00509840    call        TControl.Click
 00509845    mov         eax,ebx
 00509847    mov         edx,dword ptr [eax]
 00509849    call        dword ptr [edx+24];TComponent.GetObservers
 0050984C    call        004A1D04
 00509851    xor         eax,eax
 00509853    pop         edx
 00509854    pop         ecx
 00509855    pop         ecx
 00509856    mov         dword ptr fs:[eax],edx
 00509859    push        50986E
 0050985E    lea         eax,[ebp-8]
 00509861    call        @IntfClear
 00509866    ret
>00509867    jmp         @HandleFinally
>0050986C    jmp         0050985E
 0050986E    pop         ebx
 0050986F    pop         ecx
 00509870    pop         ecx
 00509871    pop         ebp
 00509872    ret
*}
end;

//00509874
procedure TCustomComboBox.CMEnter;
begin
{*
 00509874    push        ebp
 00509875    mov         ebp,esp
 00509877    add         esp,0FFFFFFF8
 0050987A    push        ebx
 0050987B    xor         ecx,ecx
 0050987D    mov         dword ptr [ebp-8],ecx
 00509880    mov         ebx,eax
 00509882    xor         eax,eax
 00509884    push        ebp
 00509885    push        50990F
 0050988A    push        dword ptr fs:[eax]
 0050988D    mov         dword ptr fs:[eax],esp
 00509890    mov         eax,ebx
 00509892    call        TWinControl.CMEnter
 00509897    mov         eax,ebx
 00509899    mov         edx,dword ptr [eax]
 0050989B    call        dword ptr [edx+24];TComponent.GetObservers
 0050989E    mov         edx,1
 005098A3    mov         ecx,dword ptr [eax]
 005098A5    call        dword ptr [ecx+14];TObservers.IsObserving
 005098A8    test        al,al
>005098AA    je          005098F9
 005098AC    mov         eax,ebx
 005098AE    mov         edx,dword ptr [eax]
 005098B0    call        dword ptr [edx+24];TComponent.GetObservers
 005098B3    mov         dword ptr [ebp-4],eax
 005098B6    lea         edx,[ebp-8]
 005098B9    mov         eax,dword ptr [ebp-4]
 005098BC    call        TLinkObservers.GetEditLink
 005098C1    mov         eax,dword ptr [ebp-8]
 005098C4    mov         edx,dword ptr [eax]
 005098C6    call        dword ptr [edx+3C]
 005098C9    test        al,al
>005098CB    je          005098E4
 005098CD    push        0
 005098CF    push        1
 005098D1    push        0CF
 005098D6    mov         eax,dword ptr [ebx+2D0];TCustomComboBox.FEditHandle:HWND
 005098DC    push        eax
 005098DD    call        user32.SendMessageW
>005098E2    jmp         005098F9
 005098E4    push        0
 005098E6    push        0
 005098E8    push        0CF
 005098ED    mov         eax,dword ptr [ebx+2D0];TCustomComboBox.FEditHandle:HWND
 005098F3    push        eax
 005098F4    call        user32.SendMessageW
 005098F9    xor         eax,eax
 005098FB    pop         edx
 005098FC    pop         ecx
 005098FD    pop         ecx
 005098FE    mov         dword ptr fs:[eax],edx
 00509901    push        509916
 00509906    lea         eax,[ebp-8]
 00509909    call        @IntfClear
 0050990E    ret
>0050990F    jmp         @HandleFinally
>00509914    jmp         00509906
 00509916    pop         ebx
 00509917    pop         ecx
 00509918    pop         ecx
 00509919    pop         ebp
 0050991A    ret
*}
end;

//0050991C
{*procedure TCustomComboBox.CMExit(?:?);
begin
 0050991C    push        ebp
 0050991D    mov         ebp,esp
 0050991F    add         esp,0FFFFFFF4
 00509922    push        ebx
 00509923    push        esi
 00509924    push        edi
 00509925    xor         ecx,ecx
 00509927    mov         dword ptr [ebp-0C],ecx
 0050992A    mov         ebx,edx
 0050992C    mov         dword ptr [ebp-4],eax
 0050992F    xor         eax,eax
 00509931    push        ebp
 00509932    push        5099F1
 00509937    push        dword ptr fs:[eax]
 0050993A    mov         dword ptr fs:[eax],esp
 0050993D    xor         eax,eax
 0050993F    push        ebp
 00509940    push        5099AC
 00509945    push        dword ptr fs:[eax]
 00509948    mov         dword ptr fs:[eax],esp
 0050994B    mov         eax,dword ptr [ebp-4]
 0050994E    mov         edx,dword ptr [eax]
 00509950    call        dword ptr [edx+24];TComponent.GetObservers
 00509953    mov         edx,1
 00509958    mov         ecx,dword ptr [eax]
 0050995A    call        dword ptr [ecx+14];TObservers.IsObserving
 0050995D    test        al,al
>0050995F    je          0050997F
 00509961    mov         eax,dword ptr [ebp-4]
 00509964    mov         edx,dword ptr [eax]
 00509966    call        dword ptr [edx+24];TComponent.GetObservers
 00509969    mov         dword ptr [ebp-8],eax
 0050996C    lea         edx,[ebp-0C]
 0050996F    mov         eax,dword ptr [ebp-8]
 00509972    call        TLinkObservers.GetEditLink
 00509977    mov         eax,dword ptr [ebp-0C]
 0050997A    mov         edx,dword ptr [eax]
 0050997C    call        dword ptr [edx+20]
 0050997F    mov         eax,dword ptr [ebp-4]
 00509982    mov         edx,dword ptr [eax]
 00509984    call        dword ptr [edx+24];TComponent.GetObservers
 00509987    mov         edx,4
 0050998C    mov         ecx,dword ptr [eax]
 0050998E    call        dword ptr [ecx+14];TObservers.IsObserving
 00509991    test        al,al
>00509993    je          005099A2
 00509995    mov         eax,dword ptr [ebp-4]
 00509998    mov         edx,dword ptr [eax]
 0050999A    call        dword ptr [edx+24];TComponent.GetObservers
 0050999D    call        TLinkObservers.ControlValueUpdate
 005099A2    xor         eax,eax
 005099A4    pop         edx
 005099A5    pop         ecx
 005099A6    pop         ecx
 005099A7    mov         dword ptr fs:[eax],edx
>005099AA    jmp         005099D1
>005099AC    jmp         @HandleAnyException
 005099B1    mov         eax,dword ptr [ebp-4]
 005099B4    mov         edx,dword ptr [eax]
 005099B6    call        dword ptr [edx+12C];TCustomCombo.SelectAll
 005099BC    mov         eax,dword ptr [ebp-4]
 005099BF    mov         edx,dword ptr [eax]
 005099C1    call        dword ptr [edx+104];TWinControl.SetFocus
 005099C7    call        @RaiseAgain
 005099CC    call        @DoneExcept
 005099D1    mov         edx,ebx
 005099D3    mov         eax,dword ptr [ebp-4]
 005099D6    call        TWinControl.CMExit
 005099DB    xor         eax,eax
 005099DD    pop         edx
 005099DE    pop         ecx
 005099DF    pop         ecx
 005099E0    mov         dword ptr fs:[eax],edx
 005099E3    push        5099F8
 005099E8    lea         eax,[ebp-0C]
 005099EB    call        @IntfClear
 005099F0    ret
>005099F1    jmp         @HandleFinally
>005099F6    jmp         005099E8
 005099F8    pop         edi
 005099F9    pop         esi
 005099FA    pop         ebx
 005099FB    mov         esp,ebp
 005099FD    pop         ebp
 005099FE    ret
end;*}

//00509A00
{*procedure TCustomComboBox.CMParentColorChanged(?:?);
begin
 00509A00    push        esi
 00509A01    mov         esi,eax
 00509A03    mov         eax,esi
 00509A05    call        TControl.CMParentColorChanged
 00509A0A    mov         eax,[007C4770];^gvar_007CA5E0
 00509A0F    cmp         byte ptr [eax],0
>00509A12    jne         00509A27
 00509A14    cmp         byte ptr [esi+306],2;TCustomComboBox.FStyle:TComboBoxStyle
>00509A1B    jae         00509A27
 00509A1D    mov         eax,esi
 00509A1F    mov         edx,dword ptr [eax]
 00509A21    call        dword ptr [edx+0A8];TWinControl.Invalidate
 00509A27    pop         esi
 00509A28    ret
end;*}

//00509A2C
{*procedure sub_00509A2C(?:?);
begin
 00509A2C    push        ebx
 00509A2D    push        esi
 00509A2E    push        edi
 00509A2F    add         esp,0FFFFFFE0
 00509A32    mov         esi,edx
 00509A34    mov         ebx,eax
 00509A36    cmp         dword ptr [esi],112
>00509A3C    jne         00509A4F
 00509A3E    mov         edx,esi
 00509A40    mov         eax,ebx
 00509A42    mov         ecx,dword ptr [eax]
 00509A44    call        dword ptr [ecx+98];TCustomCombo.sub_00509EFC
>00509A4A    jmp         00509BA8
 00509A4F    mov         eax,dword ptr [esi]
 00509A51    cmp         eax,100
>00509A56    jb          00509A84
 00509A58    cmp         eax,109
>00509A5D    ja          00509A84
 00509A5F    mov         dl,1
 00509A61    mov         eax,ebx
 00509A63    call        GetParentForm
 00509A68    mov         edi,eax
 00509A6A    test        edi,edi
>00509A6C    je          00509A84
 00509A6E    mov         ecx,esi
 00509A70    mov         edx,ebx
 00509A72    mov         eax,edi
 00509A74    mov         edi,dword ptr [eax]
 00509A76    call        dword ptr [edi+140];TCustomForm.WantChildKey
 00509A7C    test        al,al
>00509A7E    jne         00509BA8
 00509A84    mov         eax,dword ptr [ebx+2DC];TCustomCombo.FDefEditProc:Pointer
 00509A8A    push        eax
 00509A8B    mov         edx,esi
 00509A8D    mov         ecx,dword ptr [ebx+2D0];TCustomCombo.FEditHandle:HWND
 00509A93    mov         eax,ebx
 00509A95    mov         edi,dword ptr [eax]
 00509A97    call        dword ptr [edi+134];TCustomCombo.sub_00509C14
 00509A9D    mov         eax,dword ptr [esi]
 00509A9F    mov         edx,eax
 00509AA1    cmp         edx,201
>00509AA7    jg          00509AC1
>00509AA9    je          00509ADA
 00509AAB    sub         edx,30
>00509AAE    je          00509B42
 00509AB4    sub         edx,1D0
>00509ABA    je          00509B30
>00509ABC    jmp         00509BA8
 00509AC1    sub         edx,203
>00509AC7    je          00509ADA
 00509AC9    sub         edx,0AE4A
>00509ACF    je          00509B63
>00509AD5    jmp         00509BA8
 00509ADA    mov         eax,ebx
 00509ADC    call        TGroupBox.GetDragMode
 00509AE1    cmp         al,1
>00509AE3    jne         00509BA8
 00509AE9    push        esp
 00509AEA    call        user32.GetCursorPos
 00509AEF    lea         ecx,[esp+8]
 00509AF3    mov         edx,esp
 00509AF5    mov         eax,ebx
 00509AF7    call        TControl.ScreenToClient
 00509AFC    mov         eax,dword ptr [esp+8]
 00509B00    and         eax,0FFFF
 00509B05    mov         edx,dword ptr [esp+0C]
 00509B09    shl         edx,10
 00509B0C    or          eax,edx
 00509B0E    push        eax
 00509B0F    push        0
 00509B11    push        202
 00509B16    mov         eax,dword ptr [ebx+2D0];TCustomCombo.FEditHandle:HWND
 00509B1C    push        eax
 00509B1D    call        user32.SendMessageW
 00509B22    or          ecx,0FFFFFFFF
 00509B25    xor         edx,edx
 00509B27    mov         eax,ebx
 00509B29    call        TControl.BeginDrag
>00509B2E    jmp         00509BA8
 00509B30    mov         edx,dword ptr [esi+8]
 00509B33    push        edx
 00509B34    mov         ecx,dword ptr [esi+4]
 00509B37    mov         edx,eax
 00509B39    mov         eax,ebx
 00509B3B    call        TControl.Perform
>00509B40    jmp         00509BA8
 00509B42    mov         eax,[007C4770];^gvar_007CA5E0
 00509B47    cmp         byte ptr [eax],0
>00509B4A    je          00509BA8
 00509B4C    push        0
 00509B4E    push        3
 00509B50    push        0D3
 00509B55    mov         eax,dword ptr [ebx+2D0];TCustomCombo.FEditHandle:HWND
 00509B5B    push        eax
 00509B5C    call        user32.SendMessageW
>00509B61    jmp         00509BA8
 00509B63    cmp         byte ptr [ebx+29C],0;TCustomCombo.FInBufferedPrintClient:Boolean
>00509B6A    je          00509BA8
 00509B6C    lea         eax,[esp+10]
 00509B70    push        eax
 00509B71    mov         eax,dword ptr [ebx+2D0];TCustomCombo.FEditHandle:HWND
 00509B77    push        eax
 00509B78    call        user32.GetWindowRect
 00509B7D    push        2
 00509B7F    lea         eax,[esp+14]
 00509B83    push        eax
 00509B84    mov         eax,dword ptr [ebx+2D0];TCustomCombo.FEditHandle:HWND
 00509B8A    push        eax
 00509B8B    push        0
 00509B8D    call        user32.MapWindowPoints
 00509B92    lea         edx,[esp+10]
 00509B96    mov         eax,dword ptr [ebx+2D0];TCustomCombo.FEditHandle:HWND
 00509B9C    call        PerformBufferedPrintClient
 00509BA1    mov         byte ptr [ebx+29C],0;TCustomCombo.FInBufferedPrintClient:Boolean
 00509BA8    add         esp,20
 00509BAB    pop         edi
 00509BAC    pop         esi
 00509BAD    pop         ebx
 00509BAE    ret
end;*}

//00509BC8
procedure TComboBox.SetCharCase(Value:TEditCharCase);
begin
{*
 00509BC8    cmp         dl,byte ptr [eax+304];TComboBox.FCharCase:TEditCharCase
>00509BCE    je          00509BDB
 00509BD0    mov         byte ptr [eax+304],dl;TComboBox.FCharCase:TEditCharCase
 00509BD6    call        TWinControl.RecreateWnd
 00509BDB    ret
*}
end;

//00509BDC
procedure TComboBox.SetTextHint(Value:string);
begin
{*
 00509BDC    push        ebx
 00509BDD    push        esi
 00509BDE    mov         esi,edx
 00509BE0    mov         ebx,eax
 00509BE2    mov         eax,dword ptr [ebx+328];TComboBox.FTextHint:string
 00509BE8    mov         edx,esi
 00509BEA    call        @UStrEqual
>00509BEF    je          00509C0E
 00509BF1    lea         eax,[ebx+328];TComboBox.FTextHint:string
 00509BF7    mov         edx,esi
 00509BF9    call        @UStrAsg
 00509BFE    test        byte ptr [ebx+1C],1;TComboBox.FComponentState:TComponentState
>00509C02    jne         00509C0E
 00509C04    mov         eax,ebx
 00509C06    mov         edx,dword ptr [eax]
 00509C08    call        dword ptr [edx+158];TComboBox.sub_0050AB44
 00509C0E    pop         esi
 00509C0F    pop         ebx
 00509C10    ret
*}
end;

//00509C14
{*procedure sub_00509C14(?:?; ?:?; ?:?);
begin
 00509C14    push        ebp
 00509C15    mov         ebp,esp
 00509C17    add         esp,0FFFFFFF0
 00509C1A    push        ebx
 00509C1B    push        esi
 00509C1C    push        edi
 00509C1D    mov         esi,ecx
 00509C1F    mov         ebx,edx
 00509C21    mov         dword ptr [ebp-4],eax
 00509C24    xor         edx,edx
 00509C26    push        ebp
 00509C27    push        509ED8
 00509C2C    push        dword ptr fs:[edx]
 00509C2F    mov         dword ptr fs:[edx],esp
 00509C32    mov         eax,dword ptr [ebx]
 00509C34    cmp         eax,104
>00509C39    jg          00509C8A
>00509C3B    je          00509D2D
 00509C41    cmp         eax,87
>00509C46    jg          00509C6C
>00509C48    je          00509E48
 00509C4E    sub         eax,7
>00509C51    je          00509CDD
 00509C57    dec         eax
>00509C58    je          00509D13
 00509C5E    sub         eax,7C
>00509C61    je          00509E68
>00509C67    jmp         00509E99
 00509C6C    sub         eax,100
>00509C71    je          00509D2D
 00509C77    dec         eax
>00509C78    je          00509DB1
 00509C7E    dec         eax
>00509C7F    je          00509D5B
>00509C85    jmp         00509E99
 00509C8A    cmp         eax,0BD00
>00509C8F    jg          00509CBB
>00509C91    je          00509E82
 00509C97    sub         eax,105
>00509C9C    je          00509DB1
 00509CA2    sub         eax,0FB
>00509CA7    je          00509DD0
 00509CAD    sub         eax,5
>00509CB0    je          00509DE6
>00509CB6    jmp         00509E99
 00509CBB    sub         eax,0BD02
>00509CC0    je          00509E82
 00509CC6    sub         eax,2
>00509CC9    je          00509E82
 00509CCF    sub         eax,2
>00509CD2    je          00509E82
>00509CD8    jmp         00509E99
 00509CDD    mov         dl,1
 00509CDF    mov         eax,dword ptr [ebp-4]
 00509CE2    call        GetParentForm
 00509CE7    mov         edi,eax
 00509CE9    test        edi,edi
>00509CEB    je          00509E99
 00509CF1    mov         edx,dword ptr [ebp-4]
 00509CF4    mov         eax,edi
 00509CF6    mov         ecx,dword ptr [eax]
 00509CF8    call        dword ptr [ecx+138];TCustomForm.SetFocusedControl
 00509CFE    test        al,al
>00509D00    jne         00509E99
 00509D06    xor         eax,eax
 00509D08    pop         edx
 00509D09    pop         ecx
 00509D0A    pop         ecx
 00509D0B    mov         dword ptr fs:[eax],edx
>00509D0E    jmp         00509EF1
 00509D13    mov         eax,dword ptr [ebp-4]
 00509D16    test        byte ptr [eax+64],20;TCustomCombo.FControlState:TControlState
>00509D1A    je          00509E99
 00509D20    xor         eax,eax
 00509D22    pop         edx
 00509D23    pop         ecx
 00509D24    pop         ecx
 00509D25    mov         dword ptr fs:[eax],edx
>00509D28    jmp         00509EF1
 00509D2D    mov         eax,dword ptr [ebp-4]
 00509D30    cmp         esi,dword ptr [eax+2D4];TCustomCombo.FListHandle:HWND
>00509D36    je          00509E99
 00509D3C    mov         edx,ebx
 00509D3E    mov         eax,dword ptr [ebp-4]
 00509D41    call        TWinControl.DoKeyDown
 00509D46    test        al,al
>00509D48    je          00509E99
 00509D4E    xor         eax,eax
 00509D50    pop         edx
 00509D51    pop         ecx
 00509D52    pop         ecx
 00509D53    mov         dword ptr fs:[eax],edx
>00509D56    jmp         00509EF1
 00509D5B    mov         edx,ebx
 00509D5D    mov         eax,dword ptr [ebp-4]
 00509D60    call        TWinControl.DoKeyUp
 00509D65    test        al,al
>00509D67    je          00509D76
 00509D69    xor         eax,eax
 00509D6B    pop         edx
 00509D6C    pop         ecx
 00509D6D    pop         ecx
 00509D6E    mov         dword ptr fs:[eax],edx
>00509D71    jmp         00509EF1
 00509D76    movzx       edi,word ptr [ebx+4]
 00509D7A    cmp         di,0D
>00509D7E    je          00509D8A
 00509D80    cmp         di,1B
>00509D84    jne         00509E99
 00509D8A    mov         eax,dword ptr [ebp-4]
 00509D8D    call        00509488
 00509D92    test        al,al
>00509D94    je          00509E99
 00509D9A    xor         edx,edx
 00509D9C    mov         eax,dword ptr [ebp-4]
 00509D9F    call        005094AC
 00509DA4    xor         eax,eax
 00509DA6    pop         edx
 00509DA7    pop         ecx
 00509DA8    pop         ecx
 00509DA9    mov         dword ptr fs:[eax],edx
>00509DAC    jmp         00509EF1
 00509DB1    mov         edx,ebx
 00509DB3    mov         eax,dword ptr [ebp-4]
 00509DB6    call        TWinControl.DoKeyPress
 00509DBB    test        al,al
>00509DBD    je          00509E99
 00509DC3    xor         eax,eax
 00509DC5    pop         edx
 00509DC6    pop         ecx
 00509DC7    pop         ecx
 00509DC8    mov         dword ptr fs:[eax],edx
>00509DCB    jmp         00509EF1
 00509DD0    mov         ecx,ebx
 00509DD2    mov         eax,[007C4A18];^Application:TApplication
 00509DD7    mov         eax,dword ptr [eax]
 00509DD9    mov         edx,dword ptr [ebp-4]
 00509DDC    call        TApplication.HintMouseMessage
>00509DE1    jmp         00509E99
 00509DE6    mov         eax,dword ptr [ebp-4]
 00509DE9    call        00505A08
 00509DEE    test        al,al
>00509DF0    je          00509E99
 00509DF6    movsx       eax,word ptr [ebx+8]
 00509DFA    mov         dword ptr [ebp-0C],eax
 00509DFD    movsx       eax,word ptr [ebx+0A]
 00509E01    mov         dword ptr [ebp-8],eax
 00509E04    push        1
 00509E06    lea         eax,[ebp-0C]
 00509E09    push        eax
 00509E0A    mov         eax,dword ptr [ebp-4]
 00509E0D    call        TWinControl.GetHandle
 00509E12    push        eax
 00509E13    push        esi
 00509E14    call        user32.MapWindowPoints
 00509E19    mov         eax,dword ptr [ebp-8]
 00509E1C    movzx       edx,word ptr [ebp-0C]
 00509E20    mov         word ptr [ebp-10],dx
 00509E24    mov         word ptr [ebp-0E],ax
 00509E28    mov         eax,dword ptr [ebp-10]
 00509E2B    mov         dword ptr [ebx+8],eax
 00509E2E    mov         edx,ebx
 00509E30    mov         eax,dword ptr [ebp-4]
 00509E33    mov         ecx,dword ptr [eax]
 00509E35    call        dword ptr [ecx+98];TCustomCombo.sub_00509EFC
 00509E3B    xor         eax,eax
 00509E3D    pop         edx
 00509E3E    pop         ecx
 00509E3F    pop         ecx
 00509E40    mov         dword ptr fs:[eax],edx
>00509E43    jmp         00509EF1
 00509E48    mov         eax,dword ptr [ebp-4]
 00509E4B    call        00509488
 00509E50    test        al,al
>00509E52    je          00509E99
 00509E54    mov         dword ptr [ebx+0C],4
 00509E5B    xor         eax,eax
 00509E5D    pop         edx
 00509E5E    pop         ecx
 00509E5F    pop         ecx
 00509E60    mov         dword ptr fs:[eax],edx
>00509E63    jmp         00509EF1
 00509E68    mov         eax,dword ptr [ebp-4]
 00509E6B    test        byte ptr [eax+1C],10;TCustomCombo.FComponentState:TComponentState
>00509E6F    je          00509E99
 00509E71    mov         dword ptr [ebx+0C],0FFFFFFFF
 00509E78    xor         eax,eax
 00509E7A    pop         edx
 00509E7B    pop         ecx
 00509E7C    pop         ecx
 00509E7D    mov         dword ptr fs:[eax],edx
>00509E80    jmp         00509EF1
 00509E82    mov         edx,ebx
 00509E84    mov         eax,dword ptr [ebp-4]
 00509E87    mov         ecx,dword ptr [eax]
 00509E89    call        dword ptr [ecx+98];TCustomCombo.sub_00509EFC
 00509E8F    xor         eax,eax
 00509E91    pop         edx
 00509E92    pop         ecx
 00509E93    pop         ecx
 00509E94    mov         dword ptr fs:[eax],edx
>00509E97    jmp         00509EF1
 00509E99    mov         eax,dword ptr [ebx+8]
 00509E9C    push        eax
 00509E9D    mov         eax,dword ptr [ebx+4]
 00509EA0    push        eax
 00509EA1    mov         eax,dword ptr [ebx]
 00509EA3    push        eax
 00509EA4    push        esi
 00509EA5    mov         eax,dword ptr [ebp+8]
 00509EA8    push        eax
 00509EA9    call        user32.CallWindowProcW
 00509EAE    mov         dword ptr [ebx+0C],eax
 00509EB1    cmp         dword ptr [ebx],203
>00509EB7    jne         00509ECE
 00509EB9    mov         eax,dword ptr [ebp-4]
 00509EBC    test        byte ptr [eax+60],80;TCustomCombo.FControlStyle:TControlStyle
>00509EC0    je          00509ECE
 00509EC2    mov         eax,dword ptr [ebp-4]
 00509EC5    mov         si,0FFEA
 00509EC9    call        @CallDynaInst;TControl.sub_004E8C50
 00509ECE    xor         eax,eax
 00509ED0    pop         edx
 00509ED1    pop         ecx
 00509ED2    pop         ecx
 00509ED3    mov         dword ptr fs:[eax],edx
>00509ED6    jmp         00509EF1
>00509ED8    jmp         @HandleAnyException
 00509EDD    mov         eax,[007C4A18];^Application:TApplication
 00509EE2    mov         eax,dword ptr [eax]
 00509EE4    mov         edx,dword ptr [ebp-4]
 00509EE7    call        TApplication.HandleException
 00509EEC    call        @DoneExcept
 00509EF1    pop         edi
 00509EF2    pop         esi
 00509EF3    pop         ebx
 00509EF4    mov         esp,ebp
 00509EF6    pop         ebp
 00509EF7    ret         4
end;*}

//00509EFC
{*procedure sub_00509EFC(?:?);
begin
 00509EFC    push        ebx
 00509EFD    push        esi
 00509EFE    push        edi
 00509EFF    mov         esi,edx
 00509F01    mov         ebx,eax
 00509F03    test        byte ptr [ebx+1C],10;TCustomCombo.FComponentState:TComponentState
>00509F07    jne         00509F58
 00509F09    mov         edi,dword ptr [esi]
 00509F0B    cmp         edi,201
>00509F11    je          00509F1B
 00509F13    cmp         edi,203
>00509F19    jne         00509F58
 00509F1B    mov         eax,ebx
 00509F1D    call        TControl.Dragging
 00509F22    test        al,al
>00509F24    jne         00509F58
 00509F26    mov         eax,ebx
 00509F28    call        TGroupBox.GetDragMode
 00509F2D    cmp         al,1
>00509F2F    jne         00509F58
 00509F31    mov         edx,esi
 00509F33    mov         eax,ebx
 00509F35    call        TWinControl.IsControlMouseMsg
 00509F3A    test        al,al
>00509F3C    jne         0050A0B4
 00509F42    mov         eax,[0050A0B8];0x1 gvar_0050A0B8
 00509F47    or          dword ptr [ebx+64],eax;TCustomCombo.FControlState:TControlState
 00509F4A    mov         edx,esi
 00509F4C    mov         eax,ebx
 00509F4E    mov         ecx,dword ptr [eax]
 00509F50    call        dword ptr [ecx-14];TObject.Dispatch
>00509F53    jmp         0050A0B4
 00509F58    mov         eax,dword ptr [esi]
 00509F5A    cmp         eax,83
>00509F5F    jg          00509F7A
>00509F61    je          0050A0B4
 00509F67    sub         eax,5
>00509F6A    je          00509F92
 00509F6C    sub         eax,76
>00509F6F    je          0050A076
>00509F75    jmp         0050A0AB
 00509F7A    sub         eax,102
>00509F7F    je          0050A043
 00509F85    add         eax,0FFFFFFD0
 00509F88    sub         eax,7
>00509F8B    jb          00509FAD
>00509F8D    jmp         0050A0AB
 00509F92    cmp         byte ptr [ebx+2E4],0;TCustomCombo.FDroppingDown:Boolean
>00509F99    je          0050A0AB
 00509F9F    mov         edx,esi
 00509FA1    mov         eax,ebx
 00509FA3    mov         ecx,dword ptr [eax]
 00509FA5    call        dword ptr [ecx-10];TWinControl.DefaultHandler
>00509FA8    jmp         0050A0B4
 00509FAD    call        TStyleManager.GetIsCustomStyleActive
 00509FB2    test        al,al
>00509FB4    je          00509FD0
 00509FB6    call        TStyleManager.GetIsCustomStyleActive
 00509FBB    test        al,al
>00509FBD    je          0050A0AB
 00509FC3    test        byte ptr [ebx+188],4;TCustomCombo.FStyleElements:TStyleElements
>00509FCA    jne         0050A0AB
 00509FD0    mov         eax,dword ptr [ebx+74];TCustomCombo.FFont:TFont
 00509FD3    mov         eax,dword ptr [eax+18];TFont.FColor:TColor
 00509FD6    call        ColorToRGB
 00509FDB    push        eax
 00509FDC    mov         eax,dword ptr [esi+4]
 00509FDF    push        eax
 00509FE0    call        gdi32.SetTextColor
 00509FE5    mov         edi,dword ptr [ebx+1D0];TCustomCombo.FBrush:TBrush
 00509FEB    mov         eax,dword ptr [edi+10];TBrush.FResource:PResource
 00509FEE    mov         eax,dword ptr [eax+18]
 00509FF1    call        ColorToRGB
 00509FF6    push        eax
 00509FF7    mov         eax,dword ptr [esi+4]
 00509FFA    push        eax
 00509FFB    call        gdi32.SetBkColor
 0050A000    mov         eax,dword ptr [ebx+1D0];TCustomCombo.FBrush:TBrush
 0050A006    call        TBrush.GetHandle
 0050A00B    mov         dword ptr [esi+0C],eax
 0050A00E    test        byte ptr [ebx+65],80;TCustomCombo.FAlign:TAlign
>0050A012    je          0050A0B4
 0050A018    cmp         byte ptr [ebx+29C],0;TCustomCombo.FInBufferedPrintClient:Boolean
>0050A01F    jne         0050A0B4
 0050A025    mov         byte ptr [ebx+29C],1;TCustomCombo.FInBufferedPrintClient:Boolean
 0050A02C    push        0
 0050A02E    push        0
 0050A030    push        0B04D
 0050A035    mov         eax,dword ptr [ebx+2D0];TCustomCombo.FEditHandle:HWND
 0050A03B    push        eax
 0050A03C    call        user32.PostMessageW
>0050A041    jmp         0050A0B4
 0050A043    mov         edx,esi
 0050A045    mov         eax,ebx
 0050A047    call        TWinControl.DoKeyUp
 0050A04C    test        al,al
>0050A04E    jne         0050A0B4
 0050A050    movzx       edi,word ptr [esi+4]
 0050A054    cmp         di,0D
>0050A058    je          0050A060
 0050A05A    cmp         di,1B
>0050A05E    jne         0050A0AB
 0050A060    mov         eax,ebx
 0050A062    call        00509488
 0050A067    test        al,al
>0050A069    je          0050A0AB
 0050A06B    xor         edx,edx
 0050A06D    mov         eax,ebx
 0050A06F    call        005094AC
>0050A074    jmp         0050A0B4
 0050A076    cmp         dword ptr [ebx+8C],0;TCustomCombo.FPopupMenu:TPopupMenu
>0050A07D    jne         0050A0AB
 0050A07F    mov         edx,esi
 0050A081    mov         eax,ebx
 0050A083    mov         ecx,dword ptr [eax]
 0050A085    call        dword ptr [ecx-14];TObject.Dispatch
 0050A088    mov         eax,dword ptr [esi+8]
 0050A08B    push        eax
 0050A08C    mov         eax,dword ptr [esi+4]
 0050A08F    push        eax
 0050A090    mov         eax,dword ptr [esi]
 0050A092    push        eax
 0050A093    mov         eax,dword ptr [ebx+2D0];TCustomCombo.FEditHandle:HWND
 0050A099    push        eax
 0050A09A    mov         eax,dword ptr [ebx+2DC];TCustomCombo.FDefEditProc:Pointer
 0050A0A0    push        eax
 0050A0A1    call        user32.CallWindowProcW
 0050A0A6    mov         dword ptr [esi+0C],eax
>0050A0A9    jmp         0050A0B4
 0050A0AB    mov         edx,esi
 0050A0AD    mov         eax,ebx
 0050A0AF    call        004ECAFC
 0050A0B4    pop         edi
 0050A0B5    pop         esi
 0050A0B6    pop         ebx
 0050A0B7    ret
end;*}

//0050A0BC
{*procedure TCustomCombo.sub_0050A0BC(?:?);
begin
 0050A0BC    push        ebp
 0050A0BD    mov         ebp,esp
 0050A0BF    push        0
 0050A0C1    push        ebx
 0050A0C2    push        esi
 0050A0C3    push        edi
 0050A0C4    mov         edi,eax
 0050A0C6    xor         eax,eax
 0050A0C8    push        ebp
 0050A0C9    push        50A228
 0050A0CE    push        dword ptr fs:[eax]
 0050A0D1    mov         dword ptr fs:[eax],esp
 0050A0D4    movzx       eax,word ptr [edx+6]
 0050A0D8    cmp         eax,8
>0050A0DB    ja          0050A212
 0050A0E1    jmp         dword ptr [eax*4+50A0E8]
 0050A0E1    dd          0050A212
 0050A0E1    dd          0050A190
 0050A0E1    dd          0050A10C
 0050A0E1    dd          0050A1E6
 0050A0E1    dd          0050A1FD
 0050A0E1    dd          0050A11C
 0050A0E1    dd          0050A212
 0050A0E1    dd          0050A12C
 0050A0E1    dd          0050A1D9
 0050A10C    mov         eax,edi
 0050A10E    mov         si,0FFEA
 0050A112    call        @CallDynaInst;TControl.sub_004E8C50
>0050A117    jmp         0050A212
 0050A11C    mov         eax,edi
 0050A11E    mov         si,0FFAD
 0050A122    call        @CallDynaInst;TCustomCombo.sub_0050A238
>0050A127    jmp         0050A212
 0050A12C    mov         byte ptr [edi+2E5],0;TCustomCombo.FFocusChanged:Boolean
 0050A133    mov         eax,edi
 0050A135    mov         si,0FFAB
 0050A139    call        @CallDynaInst;TCustomCombo.sub_0050A354
 0050A13E    mov         eax,edi
 0050A140    mov         edx,dword ptr [eax]
 0050A142    call        dword ptr [edx+130];TCustomCombo.sub_0050A49C
 0050A148    cmp         byte ptr [edi+2E5],0;TCustomCombo.FFocusChanged:Boolean
>0050A14F    je          0050A212
 0050A155    push        0
 0050A157    push        0
 0050A159    push        1F
 0050A15B    mov         eax,edi
 0050A15D    call        TWinControl.GetHandle
 0050A162    push        eax
 0050A163    call        user32.PostMessageW
 0050A168    cmp         byte ptr [edi+2E6],0;TCustomCombo.FIsFocused:Boolean
>0050A16F    jne         0050A212
 0050A175    push        0
 0050A177    push        0
 0050A179    push        14F
 0050A17E    mov         eax,edi
 0050A180    call        TWinControl.GetHandle
 0050A185    push        eax
 0050A186    call        user32.PostMessageW
>0050A18B    jmp         0050A212
 0050A190    mov         eax,edi
 0050A192    mov         edx,dword ptr [eax]
 0050A194    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050A19A    inc         eax
>0050A19B    je          0050A212
 0050A19D    mov         eax,edi
 0050A19F    mov         edx,dword ptr [eax]
 0050A1A1    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050A1A7    mov         edx,eax
 0050A1A9    lea         ecx,[ebp-4]
 0050A1AC    mov         eax,dword ptr [edi+2CC];TCustomCombo.FItems:TStrings
 0050A1B2    mov         ebx,dword ptr [eax]
 0050A1B4    call        dword ptr [ebx+0C];TStrings.Get
 0050A1B7    mov         edx,dword ptr [ebp-4]
 0050A1BA    mov         eax,edi
 0050A1BC    call        TControl.SetText
 0050A1C1    mov         eax,edi
 0050A1C3    mov         si,0FFEB
 0050A1C7    call        @CallDynaInst;TControl.Click
 0050A1CC    mov         eax,edi
 0050A1CE    mov         si,0FFAC
 0050A1D2    call        @CallDynaInst;TCustomCombo.sub_0050A3FC
>0050A1D7    jmp         0050A212
 0050A1D9    mov         eax,edi
 0050A1DB    mov         si,0FFAA
 0050A1DF    call        @CallDynaInst;TCustomCombo.sub_0050A3DC
>0050A1E4    jmp         0050A212
 0050A1E6    mov         byte ptr [edi+2E6],1;TCustomCombo.FIsFocused:Boolean
 0050A1ED    mov         byte ptr [edi+2E5],1;TCustomCombo.FFocusChanged:Boolean
 0050A1F4    mov         eax,edi
 0050A1F6    call        004EE2D0
>0050A1FB    jmp         0050A212
 0050A1FD    mov         byte ptr [edi+2E6],0;TCustomCombo.FIsFocused:Boolean
 0050A204    mov         byte ptr [edi+2E5],1;TCustomCombo.FFocusChanged:Boolean
 0050A20B    mov         eax,edi
 0050A20D    call        004EE3C0
 0050A212    xor         eax,eax
 0050A214    pop         edx
 0050A215    pop         ecx
 0050A216    pop         ecx
 0050A217    mov         dword ptr fs:[eax],edx
 0050A21A    push        50A22F
 0050A21F    lea         eax,[ebp-4]
 0050A222    call        @UStrClr
 0050A227    ret
>0050A228    jmp         @HandleFinally
>0050A22D    jmp         0050A21F
 0050A22F    pop         edi
 0050A230    pop         esi
 0050A231    pop         ebx
 0050A232    pop         ecx
 0050A233    pop         ebp
 0050A234    ret
end;*}

//0050A238
procedure TCustomCombo.sub_0050A238;
begin
{*
 0050A238    push        ebx
 0050A239    mov         ebx,eax
 0050A23B    mov         eax,ebx
 0050A23D    call        TControl.Changed
 0050A242    cmp         word ptr [ebx+2AA],0;TCustomCombo.?f2AA:word
>0050A24A    je          0050A25A
 0050A24C    mov         edx,ebx
 0050A24E    mov         eax,dword ptr [ebx+2AC];TCustomCombo.?f2AC:dword
 0050A254    call        dword ptr [ebx+2A8];TCustomCombo.FOnChange
 0050A25A    pop         ebx
 0050A25B    ret
*}
end;

//0050A25C
{*procedure sub_0050A25C(?:?; ?:?; ?:?; ?:?);
begin
 0050A25C    push        ebp
 0050A25D    mov         ebp,esp
 0050A25F    add         esp,0FFFFFFE8
 0050A262    push        ebx
 0050A263    push        esi
 0050A264    push        edi
 0050A265    xor         ebx,ebx
 0050A267    mov         dword ptr [ebp-18],ebx
 0050A26A    mov         dword ptr [ebp-14],ebx
 0050A26D    mov         esi,ecx
 0050A26F    lea         edi,[ebp-10]
 0050A272    movs        dword ptr [edi],dword ptr [esi]
 0050A273    movs        dword ptr [edi],dword ptr [esi]
 0050A274    movs        dword ptr [edi],dword ptr [esi]
 0050A275    movs        dword ptr [edi],dword ptr [esi]
 0050A276    mov         esi,edx
 0050A278    mov         ebx,eax
 0050A27A    xor         eax,eax
 0050A27C    push        ebp
 0050A27D    push        50A342
 0050A282    push        dword ptr fs:[eax]
 0050A285    mov         dword ptr fs:[eax],esp
 0050A288    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050A28E    call        TControlCanvas.UpdateTextFlags
 0050A293    cmp         word ptr [ebx+312],0;TCustomComboBox.?f312:word
>0050A29B    je          0050A2B8
 0050A29D    lea         eax,[ebp-10]
 0050A2A0    push        eax
 0050A2A1    movzx       eax,word ptr [ebp+8]
 0050A2A5    push        eax
 0050A2A6    mov         ecx,esi
 0050A2A8    mov         edx,ebx
 0050A2AA    mov         eax,dword ptr [ebx+314];TCustomComboBox.?f314:dword
 0050A2B0    call        dword ptr [ebx+310];TCustomComboBox.FOnDrawItem
>0050A2B6    jmp         0050A327
 0050A2B8    lea         edx,[ebp-10]
 0050A2BB    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050A2C1    mov         ecx,dword ptr [eax]
 0050A2C3    call        dword ptr [ecx+54];TCanvas.FillRect
 0050A2C6    test        esi,esi
>0050A2C8    jl          0050A327
 0050A2CA    test        byte ptr [ebp+9],10
>0050A2CE    je          0050A2FC
 0050A2D0    lea         ecx,[ebp-14]
 0050A2D3    mov         edx,esi
 0050A2D5    mov         eax,dword ptr [ebx+2CC];TCustomComboBox.FItems:TStrings
 0050A2DB    mov         esi,dword ptr [eax]
 0050A2DD    call        dword ptr [esi+0C];TStrings.Get
 0050A2E0    mov         eax,dword ptr [ebp-14]
 0050A2E3    push        eax
 0050A2E4    mov         ecx,dword ptr [ebp-0C]
 0050A2E7    inc         ecx
 0050A2E8    mov         edx,dword ptr [ebp-10]
 0050A2EB    inc         edx
 0050A2EC    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050A2F2    mov         ebx,dword ptr [eax]
 0050A2F4    call        dword ptr [ebx+90];TCanvas.TextOut
>0050A2FA    jmp         0050A327
 0050A2FC    lea         ecx,[ebp-18]
 0050A2FF    mov         edx,esi
 0050A301    mov         eax,dword ptr [ebx+2CC];TCustomComboBox.FItems:TStrings
 0050A307    mov         esi,dword ptr [eax]
 0050A309    call        dword ptr [esi+0C];TStrings.Get
 0050A30C    mov         eax,dword ptr [ebp-18]
 0050A30F    push        eax
 0050A310    mov         edx,dword ptr [ebp-10]
 0050A313    add         edx,2
 0050A316    mov         ecx,dword ptr [ebp-0C]
 0050A319    mov         eax,dword ptr [ebx+290];TCustomComboBox.FCanvas:TCanvas
 0050A31F    mov         ebx,dword ptr [eax]
 0050A321    call        dword ptr [ebx+90];TCanvas.TextOut
 0050A327    xor         eax,eax
 0050A329    pop         edx
 0050A32A    pop         ecx
 0050A32B    pop         ecx
 0050A32C    mov         dword ptr fs:[eax],edx
 0050A32F    push        50A349
 0050A334    lea         eax,[ebp-18]
 0050A337    mov         edx,2
 0050A33C    call        @UStrArrayClr
 0050A341    ret
>0050A342    jmp         @HandleFinally
>0050A347    jmp         0050A334
 0050A349    pop         edi
 0050A34A    pop         esi
 0050A34B    pop         ebx
 0050A34C    mov         esp,ebp
 0050A34E    pop         ebp
 0050A34F    ret         4
end;*}

//0050A354
procedure TCustomCombo.sub_0050A354;
begin
{*
 0050A354    push        ebx
 0050A355    cmp         word ptr [eax+2BA],0;TCustomCombo.?f2BA:word
>0050A35D    je          0050A36F
 0050A35F    mov         ebx,eax
 0050A361    mov         edx,eax
 0050A363    mov         eax,dword ptr [ebx+2BC];TCustomCombo.?f2BC:dword
 0050A369    call        dword ptr [ebx+2B8];TCustomCombo.FOnDropDown
 0050A36F    pop         ebx
 0050A370    ret
*}
end;

//0050A374
procedure TCustomCombo.CMFontChanged(var Message:TMessage);
begin
{*
 0050A374    push        ebx
 0050A375    push        esi
 0050A376    mov         ebx,eax
 0050A378    mov         eax,ebx
 0050A37A    call        TWinControl.CMFontChanged
 0050A37F    mov         esi,dword ptr [ebx+2A0];TCustomCombo.FItemIndex:Integer
 0050A385    cmp         esi,0FFFFFFFF
>0050A388    je          0050A396
 0050A38A    mov         edx,esi
 0050A38C    mov         eax,ebx
 0050A38E    mov         ecx,dword ptr [eax]
 0050A390    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 0050A396    pop         esi
 0050A397    pop         ebx
 0050A398    ret
*}
end;

//0050A39C
procedure TCustomCombo.Focused;
begin
{*
 0050A39C    push        ebx
 0050A39D    push        esi
 0050A39E    push        edi
 0050A39F    mov         edi,eax
 0050A3A1    xor         ebx,ebx
 0050A3A3    mov         eax,edi
 0050A3A5    call        TWinControl.HandleAllocated
 0050A3AA    test        al,al
>0050A3AC    je          0050A3D6
 0050A3AE    call        user32.GetFocus
 0050A3B3    mov         esi,eax
 0050A3B5    cmp         esi,dword ptr [edi+2D0];TCustomCombo.FEditHandle:HWND
>0050A3BB    je          0050A3D4
 0050A3BD    cmp         esi,dword ptr [edi+2D4];TCustomCombo.FListHandle:HWND
>0050A3C3    je          0050A3D4
 0050A3C5    mov         eax,edi
 0050A3C7    call        TWinControl.GetHandle
 0050A3CC    cmp         esi,eax
>0050A3CE    je          0050A3D4
 0050A3D0    xor         ebx,ebx
>0050A3D2    jmp         0050A3D6
 0050A3D4    mov         bl,1
 0050A3D6    mov         eax,ebx
 0050A3D8    pop         edi
 0050A3D9    pop         esi
 0050A3DA    pop         ebx
 0050A3DB    ret
*}
end;

//0050A3DC
procedure TCustomCombo.sub_0050A3DC;
begin
{*
 0050A3DC    push        ebx
 0050A3DD    cmp         word ptr [eax+2C2],0;TCustomCombo.?f2C2:word
>0050A3E5    je          0050A3F7
 0050A3E7    mov         ebx,eax
 0050A3E9    mov         edx,eax
 0050A3EB    mov         eax,dword ptr [ebx+2C4];TCustomCombo.FItems:TStrings
 0050A3F1    call        dword ptr [ebx+2C0];TCustomCombo.FOnCloseUp
 0050A3F7    pop         ebx
 0050A3F8    ret
*}
end;

//0050A3FC
procedure TCustomCombo.sub_0050A3FC;
begin
{*
 0050A3FC    push        ebx
 0050A3FD    push        esi
 0050A3FE    cmp         word ptr [eax+2B2],0;TCustomCombo.?f2B2:word
>0050A406    je          0050A41B
 0050A408    mov         ebx,eax
 0050A40A    mov         edx,eax
 0050A40C    mov         eax,dword ptr [ebx+2B4];TCustomCombo.?f2B4:dword
 0050A412    call        dword ptr [ebx+2B0];TCustomCombo.FOnSelect
 0050A418    pop         esi
 0050A419    pop         ebx
 0050A41A    ret
 0050A41B    mov         si,0FFAD
 0050A41F    call        @CallDynaInst;TCustomCombo.sub_0050A238
 0050A424    pop         esi
 0050A425    pop         ebx
 0050A426    ret
*}
end;

//0050A428
procedure TCustomCombo.CreateWnd;
begin
{*
 0050A428    push        ebx
 0050A429    mov         ebx,eax
 0050A42B    mov         eax,ebx
 0050A42D    call        TWinControl.CreateWnd
 0050A432    push        0
 0050A434    mov         eax,dword ptr [ebx+294];TCustomCombo.FMaxLength:Integer
 0050A43A    push        eax
 0050A43B    push        141
 0050A440    mov         eax,ebx
 0050A442    call        TWinControl.GetHandle
 0050A447    push        eax
 0050A448    call        user32.SendMessageW
 0050A44D    xor         eax,eax
 0050A44F    mov         dword ptr [ebx+2D0],eax;TCustomCombo.FEditHandle:HWND
 0050A455    xor         eax,eax
 0050A457    mov         dword ptr [ebx+2D4],eax;TCustomCombo.FListHandle:HWND
 0050A45D    mov         edx,1
 0050A462    mov         eax,5
 0050A467    call        CheckWin32Version
 0050A46C    test        al,al
>0050A46E    je          0050A499
 0050A470    call        StyleServices
 0050A475    mov         edx,dword ptr [eax]
 0050A477    call        dword ptr [edx+48];@AbstractError
 0050A47A    test        al,al
>0050A47C    je          0050A499
 0050A47E    push        0
 0050A480    mov         eax,dword ptr [ebx+298];TCustomCombo.FDropDownCount:Integer
 0050A486    push        eax
 0050A487    push        1701
 0050A48C    mov         eax,ebx
 0050A48E    call        TWinControl.GetHandle
 0050A493    push        eax
 0050A494    call        user32.SendMessageW
 0050A499    pop         ebx
 0050A49A    ret
*}
end;

//0050A49C
procedure sub_0050A49C;
begin
{*
 0050A49C    push        ebp
 0050A49D    mov         ebp,esp
 0050A49F    push        ecx
 0050A4A0    push        ebx
 0050A4A1    mov         dword ptr [ebp-4],eax
 0050A4A4    mov         eax,dword ptr [ebp-4]
 0050A4A7    mov         edx,dword ptr [eax]
 0050A4A9    call        dword ptr [edx+148];@AbstractError
 0050A4AF    mov         ebx,eax
 0050A4B1    mov         eax,dword ptr [ebp-4]
 0050A4B4    mov         eax,dword ptr [eax+298];TCustomCombo.FDropDownCount:Integer
 0050A4BA    cmp         ebx,eax
>0050A4BC    jle         0050A4C0
 0050A4BE    mov         ebx,eax
 0050A4C0    cmp         ebx,1
>0050A4C3    jge         0050A4CA
 0050A4C5    mov         ebx,1
 0050A4CA    mov         eax,dword ptr [ebp-4]
 0050A4CD    mov         byte ptr [eax+2E4],1;TCustomCombo.FDroppingDown:Boolean
 0050A4D4    xor         eax,eax
 0050A4D6    push        ebp
 0050A4D7    push        50A532
 0050A4DC    push        dword ptr fs:[eax]
 0050A4DF    mov         dword ptr fs:[eax],esp
 0050A4E2    push        9E
 0050A4E7    mov         eax,dword ptr [ebp-4]
 0050A4EA    mov         edx,dword ptr [eax]
 0050A4EC    call        dword ptr [edx+140];@AbstractError
 0050A4F2    imul        ebx
 0050A4F4    mov         edx,dword ptr [ebp-4]
 0050A4F7    add         eax,dword ptr [edx+5C];TCustomCombo.FHeight:Integer
 0050A4FA    add         eax,2
 0050A4FD    push        eax
 0050A4FE    mov         eax,dword ptr [ebp-4]
 0050A501    mov         eax,dword ptr [eax+58];TCustomCombo.FWidth:Integer
 0050A504    push        eax
 0050A505    push        0
 0050A507    push        0
 0050A509    push        0
 0050A50B    mov         eax,dword ptr [ebp-4]
 0050A50E    mov         eax,dword ptr [eax+2D8];TCustomCombo.FDropHandle:HWND
 0050A514    push        eax
 0050A515    call        user32.SetWindowPos
 0050A51A    xor         eax,eax
 0050A51C    pop         edx
 0050A51D    pop         ecx
 0050A51E    pop         ecx
 0050A51F    mov         dword ptr fs:[eax],edx
 0050A522    push        50A539
 0050A527    mov         eax,dword ptr [ebp-4]
 0050A52A    mov         byte ptr [eax+2E4],0;TCustomCombo.FDroppingDown:Boolean
 0050A531    ret
>0050A532    jmp         @HandleFinally
>0050A537    jmp         0050A527
 0050A539    push        57
 0050A53B    push        0
 0050A53D    push        0
 0050A53F    push        0
 0050A541    push        0
 0050A543    push        0
 0050A545    mov         eax,dword ptr [ebp-4]
 0050A548    mov         eax,dword ptr [eax+2D8];TCustomCombo.FDropHandle:HWND
 0050A54E    push        eax
 0050A54F    call        user32.SetWindowPos
 0050A554    pop         ebx
 0050A555    pop         ecx
 0050A556    pop         ebp
 0050A557    ret
*}
end;

//0050A558
procedure TComboBox.SetItems(Value:TStrings);
begin
{*
 0050A558    push        esi
 0050A559    push        edi
 0050A55A    mov         esi,eax
 0050A55C    mov         edi,dword ptr [esi+2CC];TComboBox.FItems:TStrings
 0050A562    test        edi,edi
>0050A564    je          0050A570
 0050A566    mov         eax,edi
 0050A568    mov         ecx,dword ptr [eax]
 0050A56A    call        dword ptr [ecx+8];TStrings.Assign
 0050A56D    pop         edi
 0050A56E    pop         esi
 0050A56F    ret
 0050A570    mov         dword ptr [esi+2CC],edx;TComboBox.FItems:TStrings
 0050A576    pop         edi
 0050A577    pop         esi
 0050A578    ret
*}
end;

//0050A57C
{*procedure TCustomCombo.ClearSelection(?:?);
begin
 0050A57C    or          edx,0FFFFFFFF
 0050A57F    mov         ecx,dword ptr [eax]
 0050A581    call        dword ptr [ecx+10C];TComboBox.SetItemIndex
 0050A587    ret
end;*}

//0050A588
procedure TCustomCombo.CopySelection(Destination:TCustomListControl);
begin
{*
 0050A588    push        ebp
 0050A589    mov         ebp,esp
 0050A58B    push        0
 0050A58D    push        ebx
 0050A58E    push        esi
 0050A58F    push        edi
 0050A590    mov         esi,edx
 0050A592    mov         ebx,eax
 0050A594    xor         eax,eax
 0050A596    push        ebp
 0050A597    push        50A607
 0050A59C    push        dword ptr fs:[eax]
 0050A59F    mov         dword ptr fs:[eax],esp
 0050A5A2    mov         eax,ebx
 0050A5A4    mov         edx,dword ptr [eax]
 0050A5A6    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050A5AC    inc         eax
>0050A5AD    je          0050A5F1
 0050A5AF    mov         eax,ebx
 0050A5B1    mov         edx,dword ptr [eax]
 0050A5B3    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050A5B9    mov         edx,eax
 0050A5BB    lea         ecx,[ebp-4]
 0050A5BE    mov         eax,dword ptr [ebx+2CC];TCustomCombo.FItems:TStrings
 0050A5C4    mov         edi,dword ptr [eax]
 0050A5C6    call        dword ptr [edi+0C];TStrings.Get
 0050A5C9    mov         eax,dword ptr [ebp-4]
 0050A5CC    push        eax
 0050A5CD    mov         eax,ebx
 0050A5CF    mov         edx,dword ptr [eax]
 0050A5D1    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050A5D7    mov         edx,eax
 0050A5D9    mov         eax,dword ptr [ebx+2CC];TCustomCombo.FItems:TStrings
 0050A5DF    mov         ecx,dword ptr [eax]
 0050A5E1    call        dword ptr [ecx+18];TStrings.GetObject
 0050A5E4    mov         ecx,eax
 0050A5E6    mov         eax,esi
 0050A5E8    pop         edx
 0050A5E9    mov         ebx,dword ptr [eax]
 0050A5EB    call        dword ptr [ebx+110];TCustomListControl.AddItem
 0050A5F1    xor         eax,eax
 0050A5F3    pop         edx
 0050A5F4    pop         ecx
 0050A5F5    pop         ecx
 0050A5F6    mov         dword ptr fs:[eax],edx
 0050A5F9    push        50A60E
 0050A5FE    lea         eax,[ebp-4]
 0050A601    call        @UStrClr
 0050A606    ret
>0050A607    jmp         @HandleFinally
>0050A60C    jmp         0050A5FE
 0050A60E    pop         edi
 0050A60F    pop         esi
 0050A610    pop         ebx
 0050A611    pop         ecx
 0050A612    pop         ebp
 0050A613    ret
*}
end;

//0050A614
procedure TCustomCombo.DeleteSelected;
begin
{*
 0050A614    push        ebx
 0050A615    mov         ebx,eax
 0050A617    mov         eax,ebx
 0050A619    mov         edx,dword ptr [eax]
 0050A61B    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050A621    inc         eax
>0050A622    je          0050A63B
 0050A624    mov         eax,ebx
 0050A626    mov         edx,dword ptr [eax]
 0050A628    call        dword ptr [edx+108];TComboBox.GetItemIndex
 0050A62E    mov         edx,eax
 0050A630    mov         eax,dword ptr [ebx+2CC];TCustomCombo.FItems:TStrings
 0050A636    mov         ecx,dword ptr [eax]
 0050A638    call        dword ptr [ecx+4C];TStrings.Delete
 0050A63B    pop         ebx
 0050A63C    ret
*}
end;

//0050A640
procedure TCustomCombo.GetCount;
begin
{*
 0050A640    mov         edx,dword ptr [eax]
 0050A642    call        dword ptr [edx+148];@AbstractError
 0050A648    ret
*}
end;

//0050A64C
procedure TComboBox.SetDropDownCount(Value:Integer);
begin
{*
 0050A64C    push        ebx
 0050A64D    mov         ebx,eax
 0050A64F    cmp         edx,dword ptr [ebx+298];TComboBox.FDropDownCount:Integer
>0050A655    je          0050A6A4
 0050A657    mov         dword ptr [ebx+298],edx;TComboBox.FDropDownCount:Integer
 0050A65D    mov         eax,ebx
 0050A65F    call        TWinControl.HandleAllocated
 0050A664    test        al,al
>0050A666    je          0050A6A4
 0050A668    mov         edx,1
 0050A66D    mov         eax,5
 0050A672    call        CheckWin32Version
 0050A677    test        al,al
>0050A679    je          0050A6A4
 0050A67B    call        StyleServices
 0050A680    mov         edx,dword ptr [eax]
 0050A682    call        dword ptr [edx+48];@AbstractError
 0050A685    test        al,al
>0050A687    je          0050A6A4
 0050A689    push        0
 0050A68B    mov         eax,dword ptr [ebx+298];TComboBox.FDropDownCount:Integer
 0050A691    push        eax
 0050A692    push        1701
 0050A697    mov         eax,ebx
 0050A699    call        TWinControl.GetHandle
 0050A69E    push        eax
 0050A69F    call        user32.SendMessageW
 0050A6A4    pop         ebx
 0050A6A5    ret
*}
end;

//0050A6A8
procedure TCustomCombo.AddItem(Item:string; AObject:TObject);
begin
{*
 0050A6A8    push        ebp
 0050A6A9    mov         ebp,esp
 0050A6AB    push        ecx
 0050A6AC    push        ebx
 0050A6AD    push        esi
 0050A6AE    mov         esi,ecx
 0050A6B0    mov         dword ptr [ebp-4],edx
 0050A6B3    mov         ebx,eax
 0050A6B5    mov         eax,dword ptr [ebp-4]
 0050A6B8    call        @UStrAddRef
 0050A6BD    xor         eax,eax
 0050A6BF    push        ebp
 0050A6C0    push        50A6F1
 0050A6C5    push        dword ptr fs:[eax]
 0050A6C8    mov         dword ptr fs:[eax],esp
 0050A6CB    mov         ecx,esi
 0050A6CD    mov         edx,dword ptr [ebp-4]
 0050A6D0    mov         eax,dword ptr [ebx+2CC];TCustomCombo.FItems:TStrings
 0050A6D6    mov         ebx,dword ptr [eax]
 0050A6D8    call        dword ptr [ebx+40];TStrings.AddObject
 0050A6DB    xor         eax,eax
 0050A6DD    pop         edx
 0050A6DE    pop         ecx
 0050A6DF    pop         ecx
 0050A6E0    mov         dword ptr fs:[eax],edx
 0050A6E3    push        50A6F8
 0050A6E8    lea         eax,[ebp-4]
 0050A6EB    call        @UStrClr
 0050A6F0    ret
>0050A6F1    jmp         @HandleFinally
>0050A6F6    jmp         0050A6E8
 0050A6F8    pop         esi
 0050A6F9    pop         ebx
 0050A6FA    pop         ecx
 0050A6FB    pop         ebp
 0050A6FC    ret
*}
end;

//0050A700
function sub_0050A700:Boolean;
begin
{*
 0050A700    cmp         dword ptr [eax+2C8],10;TCustomCombo.FItemHeight:Integer
 0050A707    setne       al
 0050A70A    ret
*}
end;

//0050A70C
constructor TCustomComboBox.Create(AOwner:TComponent);
begin
{*
 0050A70C    push        ebp
 0050A70D    mov         ebp,esp
 0050A70F    push        ecx
 0050A710    push        ebx
 0050A711    push        esi
 0050A712    test        dl,dl
>0050A714    je          0050A71E
 0050A716    add         esp,0FFFFFFF0
 0050A719    call        @ClassCreate
 0050A71E    mov         byte ptr [ebp-1],dl
 0050A721    mov         ebx,eax
 0050A723    xor         edx,edx
 0050A725    mov         eax,ebx
 0050A727    call        TCustomCombo.Create
 0050A72C    mov         eax,ebx
 0050A72E    mov         edx,dword ptr [eax]
 0050A730    call        dword ptr [edx+13C];TCustomComboBox.sub_0050BA00
 0050A736    mov         dl,1
 0050A738    call        dword ptr [eax+94]
 0050A73E    mov         esi,eax
 0050A740    mov         dword ptr [ebx+2CC],esi;TCustomComboBox.FItems:TStrings
 0050A746    mov         dword ptr [esi+2C],ebx
 0050A749    mov         byte ptr [ebx+306],0;TCustomComboBox.FStyle:TComboBoxStyle
 0050A750    xor         eax,eax
 0050A752    mov         dword ptr [ebx+2FC],eax;TCustomComboBox.FLastTime:Cardinal
 0050A758    mov         byte ptr [ebx+2F8],1;TCustomComboBox.FAutoComplete:Boolean
 0050A75F    mov         byte ptr [ebx+320],0;TCustomComboBox.FAutoCloseUp:Boolean
 0050A766    mov         dword ptr [ebx+324],1F4;TCustomComboBox.FAutoCompleteDelay:Cardinal
 0050A770    lea         eax,[ebx+328];TCustomComboBox.FTextHint:string
 0050A776    call        @UStrClr
 0050A77B    mov         eax,ebx
 0050A77D    cmp         byte ptr [ebp-1],0
>0050A781    je          0050A792
 0050A783    call        @AfterConstruction
 0050A788    pop         dword ptr fs:[0]
 0050A78F    add         esp,0C
 0050A792    mov         eax,ebx
 0050A794    pop         esi
 0050A795    pop         ebx
 0050A796    pop         ecx
 0050A797    pop         ebp
 0050A798    ret
*}
end;

Initialization
//0079D088
{*
 0079D088    sub         dword ptr ds:[7CA64C],1
>0079D08F    jae         0079D0A7
 0079D091    mov         ecx,dword ptr ds:[504FE0];TComboBoxStyleHook
 0079D097    mov         edx,dword ptr ds:[4FCDD0];TCustomComboBox
 0079D09D    mov         eax,[005738E0];TCustomStyleEngine
 0079D0A2    call        TCustomStyleEngine.RegisterStyleHook
 0079D0A7    ret
*}
Finalization
end.