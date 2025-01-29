//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit67;

interface

uses
  SysUtils, Classes;

    procedure CreateParams(var Params:TCreateParams);//00541AE4
    procedure CreateWnd;//00541B88
    //procedure sub_00541C50(?:?);//00541C50
    //procedure WMSize(?:?);//00541CA4
    //procedure sub_00541CD4(?:?);//00541CD4
    //function sub_00541D28(?:TCustomUpDown; ?:Integer; ?:?):?;//00541D28
    procedure sub_00541D44;//00541D44
    procedure CMAllChildrenFlipped;//00541DDC
    //procedure sub_00541DF8(?:?);//00541DF8
    //procedure sub_00541E2C(?:?);//00541E2C
    //function sub_00541E4C(?:TWinControl; ?:UString):?;//00541E4C
    procedure SetAssociate(Value:TWinControl);//00541E7C
    procedure sub_00542090(?:TCustomUpDown; ?:TWinControl);//00542090
    procedure Notification(AComponent:TComponent; Operation:TOperation);//005420E4
    //function GetPosition:?;//00542134
    procedure SetMin(Value:Integer);//0054217C
    procedure SetMax(Value:Integer);//005421BC
    procedure SetIncrement(Value:Integer);//005421FC
    procedure SetPosition(Value:Integer);//00542258
    procedure SetOrientation(Value:TUDOrientation);//00542328
    procedure SetAlignButton(Value:TUDAlignButton);//0054239C
    procedure SetArrowKeys(Value:Boolean);//005423D8
    procedure SetThousands(Value:Boolean);//00542414
    procedure SetWrap(Value:Boolean);//00542450

implementation

//00541AE4
procedure TCustomUpDown.CreateParams(var Params:TCreateParams);
begin
{*
 00541AE4    push        ebx
 00541AE5    push        esi
 00541AE6    mov         ebx,edx
 00541AE8    mov         esi,eax
 00541AEA    mov         eax,10
 00541AEF    call        InitCommonControl
 00541AF4    mov         edx,ebx
 00541AF6    mov         eax,esi
 00541AF8    call        TWinControl.CreateParams
 00541AFD    or          dword ptr [ebx+4],2;TCreateParams.Style:DWORD
 00541B01    cmp         byte ptr [esi+2C0],1;TCustomUpDown.FAlignButton:TUDAlignButton
>00541B08    jne         00541B10
 00541B0A    or          dword ptr [ebx+4],4;TCreateParams.Style:DWORD
>00541B0E    jmp         00541B14
 00541B10    or          dword ptr [ebx+4],8;TCreateParams.Style:DWORD
 00541B14    cmp         byte ptr [esi+2C1],0;TCustomUpDown.FOrientation:TUDOrientation
>00541B1B    jne         00541B21
 00541B1D    or          dword ptr [ebx+4],40;TCreateParams.Style:DWORD
 00541B21    cmp         byte ptr [esi+290],0;TCustomUpDown.FArrowKeys:Boolean
>00541B28    je          00541B2E
 00541B2A    or          dword ptr [ebx+4],20;TCreateParams.Style:DWORD
 00541B2E    cmp         byte ptr [esi+2B0],0;TCustomUpDown.FThousands:Boolean
>00541B35    jne         00541B3E
 00541B37    or          dword ptr [ebx+4],80;TCreateParams.Style:DWORD
 00541B3E    cmp         byte ptr [esi+2B1],0;TCustomUpDown.FWrap:Boolean
>00541B45    je          00541B4B
 00541B47    or          dword ptr [ebx+4],1;TCreateParams.Style:DWORD
 00541B4B    mov         ecx,541B68;'m'
 00541B50    mov         edx,ebx
 00541B52    mov         eax,esi
 00541B54    call        TWinControl.CreateSubClass
 00541B59    mov         eax,dword ptr [ebx+24];TCreateParams.WindowClass:TWndClass
 00541B5C    and         eax,0FFFFFFFC
 00541B5F    or          eax,8
 00541B62    mov         dword ptr [ebx+24],eax;TCreateParams.WindowClass:TWndClass
 00541B65    pop         esi
 00541B66    pop         ebx
 00541B67    ret
*}
end;

//00541B88
procedure TCustomUpDown.CreateWnd;
begin
{*
 00541B88    push        ebx
 00541B89    push        esi
 00541B8A    add         esp,0FFFFFFF8
 00541B8D    mov         ebx,eax
 00541B8F    mov         esi,dword ptr [ebx+58];TCustomUpDown.FWidth:Integer
 00541B92    mov         eax,ebx
 00541B94    call        TWinControl.CreateWnd
 00541B99    mov         eax,dword ptr [ebx+294];TCustomUpDown.FAssociate:TWinControl
 00541B9F    test        eax,eax
>00541BA1    je          00541BCC
 00541BA3    mov         edx,eax
 00541BA5    mov         eax,ebx
 00541BA7    call        00542090
 00541BAC    push        0
 00541BAE    mov         eax,dword ptr [ebx+294];TCustomUpDown.FAssociate:TWinControl
 00541BB4    call        TWinControl.GetHandle
 00541BB9    push        eax
 00541BBA    push        469
 00541BBF    mov         eax,ebx
 00541BC1    call        TWinControl.GetHandle
 00541BC6    push        eax
 00541BC7    call        user32.SendMessageW
 00541BCC    mov         edx,esi
 00541BCE    mov         eax,ebx
 00541BD0    call        TControl.SetWidth
 00541BD5    mov         eax,dword ptr [ebx+29C];TCustomUpDown.FMax:Integer
 00541BDB    push        eax
 00541BDC    mov         eax,dword ptr [ebx+298];TCustomUpDown.FMin:Integer
 00541BE2    push        eax
 00541BE3    push        46F
 00541BE8    mov         eax,ebx
 00541BEA    call        TWinControl.GetHandle
 00541BEF    push        eax
 00541BF0    call        user32.SendMessageW
 00541BF5    mov         eax,dword ptr [ebx+2AC];TCustomUpDown.FPosition:Integer
 00541BFB    push        eax
 00541BFC    push        0
 00541BFE    push        471
 00541C03    mov         eax,ebx
 00541C05    call        TWinControl.GetHandle
 00541C0A    push        eax
 00541C0B    call        user32.SendMessageW
 00541C10    push        esp
 00541C11    push        0
 00541C13    mov         eax,ebx
 00541C15    call        TWinControl.GetHandle
 00541C1A    mov         ecx,1
 00541C1F    mov         edx,46C
 00541C24    call        SendGetStructMessage
 00541C29    mov         eax,dword ptr [ebx+2A0];TCustomUpDown.FIncrement:Integer
 00541C2F    mov         dword ptr [esp+4],eax
 00541C33    push        esp
 00541C34    mov         eax,ebx
 00541C36    call        TWinControl.GetHandle
 00541C3B    mov         ecx,1
 00541C40    mov         edx,46B
 00541C45    call        SendStructMessage
 00541C4A    pop         ecx
 00541C4B    pop         edx
 00541C4C    pop         esi
 00541C4D    pop         ebx
 00541C4E    ret
*}
end;

//00541C50
{*procedure TCustomUpDown.sub_00541C50(?:?);
begin
 00541C50    push        ebx
 00541C51    push        esi
 00541C52    push        edi
 00541C53    mov         edi,edx
 00541C55    mov         ebx,eax
 00541C57    mov         edx,edi
 00541C59    mov         eax,ebx
 00541C5B    mov         ecx,dword ptr [eax]
 00541C5D    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 00541C60    cmp         word ptr [edi+4],4
>00541C65    jne         00541C9F
 00541C67    movsx       eax,word ptr [edi+6]
 00541C6B    mov         edx,dword ptr [ebx+2AC];TCustomUpDown.FPosition:Integer
 00541C71    cmp         eax,edx
>00541C73    jle         00541C84
 00541C75    xor         edx,edx
 00541C77    mov         eax,ebx
 00541C79    mov         si,0FFAC
 00541C7D    call        @CallDynaInst;TCustomUpDown.sub_00541E2C
>00541C82    jmp         00541C95
 00541C84    cmp         edx,eax
>00541C86    jle         00541C95
 00541C88    mov         dl,1
 00541C8A    mov         eax,ebx
 00541C8C    mov         si,0FFAC
 00541C90    call        @CallDynaInst;TCustomUpDown.sub_00541E2C
 00541C95    movsx       eax,word ptr [edi+6]
 00541C99    mov         dword ptr [ebx+2AC],eax;TCustomUpDown.FPosition:Integer
 00541C9F    pop         edi
 00541CA0    pop         esi
 00541CA1    pop         ebx
 00541CA2    ret
end;*}

//00541CA4
{*procedure TCustomUpDown.WMSize(?:?);
begin
 00541CA4    push        ebx
 00541CA5    add         esp,0FFFFFFF0
 00541CA8    mov         ebx,eax
 00541CAA    mov         eax,ebx
 00541CAC    call        TWinControl.WMSize
 00541CB1    mov         edx,esp
 00541CB3    mov         eax,ebx
 00541CB5    mov         ecx,dword ptr [eax]
 00541CB7    call        dword ptr [ecx+64];TWinControl.GetClientRect
 00541CBA    push        0
 00541CBC    lea         eax,[esp+4]
 00541CC0    push        eax
 00541CC1    mov         eax,ebx
 00541CC3    call        TWinControl.GetHandle
 00541CC8    push        eax
 00541CC9    call        user32.InvalidateRect
 00541CCE    add         esp,10
 00541CD1    pop         ebx
 00541CD2    ret
end;*}

//00541CD4
{*procedure TCustomUpDown.sub_00541CD4(?:?);
begin
 00541CD4    push        ebx
 00541CD5    push        esi
 00541CD6    push        edi
 00541CD7    mov         edi,edx
 00541CD9    mov         ebx,eax
 00541CDB    mov         edx,edi
 00541CDD    mov         eax,ebx
 00541CDF    mov         ecx,dword ptr [eax]
 00541CE1    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 00541CE4    cmp         word ptr [edi+4],4
>00541CE9    jne         00541D23
 00541CEB    movsx       eax,word ptr [edi+6]
 00541CEF    mov         edx,dword ptr [ebx+2AC];TCustomUpDown.FPosition:Integer
 00541CF5    cmp         eax,edx
>00541CF7    jle         00541D08
 00541CF9    xor         edx,edx
 00541CFB    mov         eax,ebx
 00541CFD    mov         si,0FFAC
 00541D01    call        @CallDynaInst;TCustomUpDown.sub_00541E2C
>00541D06    jmp         00541D19
 00541D08    cmp         edx,eax
>00541D0A    jle         00541D19
 00541D0C    mov         dl,1
 00541D0E    mov         eax,ebx
 00541D10    mov         si,0FFAC
 00541D14    call        @CallDynaInst;TCustomUpDown.sub_00541E2C
 00541D19    movsx       eax,word ptr [edi+6]
 00541D1D    mov         dword ptr [ebx+2AC],eax;TCustomUpDown.FPosition:Integer
 00541D23    pop         edi
 00541D24    pop         esi
 00541D25    pop         ebx
 00541D26    ret
end;*}

//00541D28
{*function sub_00541D28(?:TCustomUpDown; ?:Integer; ?:?):?;
begin
 00541D28    push        esi
 00541D29    mov         esi,eax
 00541D2B    mov         dword ptr [esi+2A4],edx
 00541D31    mov         dword ptr [esi+2A8],ecx
 00541D37    mov         eax,esi
 00541D39    mov         si,0FFAD
 00541D3D    call        @CallDynaInst
 00541D42    pop         esi
 00541D43    ret
end;*}

//00541D44
procedure TCustomUpDown.sub_00541D44;
begin
{*
 00541D44    push        ebx
 00541D45    push        esi
 00541D46    push        ecx
 00541D47    mov         esi,eax
 00541D49    mov         byte ptr [esp],1
 00541D4D    xor         ebx,ebx
 00541D4F    mov         eax,dword ptr [esi+2A4];TCustomUpDown.FNewValue:Integer
 00541D55    cmp         eax,dword ptr [esi+298];TCustomUpDown.FMin:Integer
>00541D5B    jge         00541D66
 00541D5D    cmp         dword ptr [esi+2A8],0;TCustomUpDown.FNewValueDelta:Integer
>00541D64    jl          00541D7D
 00541D66    mov         eax,dword ptr [esi+2A4];TCustomUpDown.FNewValue:Integer
 00541D6C    cmp         eax,dword ptr [esi+29C];TCustomUpDown.FMax:Integer
>00541D72    jle         00541D81
 00541D74    cmp         dword ptr [esi+2A8],0;TCustomUpDown.FNewValueDelta:Integer
>00541D7B    jle         00541D81
 00541D7D    xor         ebx,ebx
>00541D7F    jmp         00541D95
 00541D81    mov         eax,dword ptr [esi+2A8];TCustomUpDown.FNewValueDelta:Integer
 00541D87    test        eax,eax
>00541D89    jge         00541D8F
 00541D8B    mov         bl,2
>00541D8D    jmp         00541D95
 00541D8F    test        eax,eax
>00541D91    jle         00541D95
 00541D93    mov         bl,1
 00541D95    cmp         word ptr [esi+2CA],0;TCustomUpDown.?f2CA:word
>00541D9D    je          00541DAF
 00541D9F    mov         ecx,esp
 00541DA1    mov         edx,esi
 00541DA3    mov         eax,dword ptr [esi+2CC];TCustomUpDown.?f2CC:dword
 00541DA9    call        dword ptr [esi+2C8];TCustomUpDown.FOnChanging
 00541DAF    cmp         word ptr [esi+2D2],0;TCustomUpDown.?f2D2:word
>00541DB7    je          00541DD3
 00541DB9    mov         eax,dword ptr [esi+2A4];TCustomUpDown.FNewValue:Integer
 00541DBF    push        eax
 00541DC0    push        ebx
 00541DC1    lea         ecx,[esp+8]
 00541DC5    mov         edx,esi
 00541DC7    mov         eax,dword ptr [esi+2D4];TCustomUpDown.?f2D4:dword
 00541DCD    call        dword ptr [esi+2D0];TCustomUpDown.FOnChangingEx
 00541DD3    movzx       eax,byte ptr [esp]
 00541DD7    pop         edx
 00541DD8    pop         esi
 00541DD9    pop         ebx
 00541DDA    ret
*}
end;

//00541DDC
procedure TCustomUpDown.CMAllChildrenFlipped;
begin
{*
 00541DDC    cmp         byte ptr [eax+2C0],1;TCustomUpDown.FAlignButton:TUDAlignButton
>00541DE3    jne         00541DED
 00541DE5    xor         edx,edx
 00541DE7    call        TUpDown.SetAlignButton
 00541DEC    ret
 00541DED    mov         dl,1
 00541DEF    call        TUpDown.SetAlignButton
 00541DF4    ret
*}
end;

//00541DF8
{*procedure TCustomUpDown.sub_00541DF8(?:?);
begin
 00541DF8    push        ebx
 00541DF9    push        esi
 00541DFA    push        edi
 00541DFB    push        ebp
 00541DFC    mov         edi,edx
 00541DFE    mov         esi,eax
 00541E00    mov         ebx,dword ptr [edi+8]
 00541E03    cmp         dword ptr [ebx+8],0FFFFFD2E
>00541E0A    jne         00541E25
 00541E0C    mov         edx,dword ptr [ebx+0C]
 00541E0F    mov         ebp,dword ptr [ebx+10]
 00541E12    add         edx,ebp
 00541E14    mov         ecx,ebp
 00541E16    mov         eax,esi
 00541E18    call        00541D28
 00541E1D    xor         al,1
 00541E1F    and         eax,7F
 00541E22    mov         dword ptr [edi+0C],eax
 00541E25    pop         ebp
 00541E26    pop         edi
 00541E27    pop         esi
 00541E28    pop         ebx
 00541E29    ret
end;*}

//00541E2C
{*procedure TCustomUpDown.sub_00541E2C(?:?);
begin
 00541E2C    push        ebx
 00541E2D    cmp         word ptr [eax+2BA],0;TCustomUpDown.?f2BA:word
>00541E35    je          00541E49
 00541E37    mov         ecx,edx
 00541E39    mov         ebx,eax
 00541E3B    mov         edx,eax
 00541E3D    mov         eax,dword ptr [ebx+2BC];TCustomUpDown.?f2BC:dword
 00541E43    call        dword ptr [ebx+2B8];TCustomUpDown.FOnClick
 00541E49    pop         ebx
 00541E4A    ret
end;*}

//00541E4C
{*function sub_00541E4C(?:TWinControl; ?:UString):?;
begin
 00541E4C    push        ebx
 00541E4D    push        esi
 00541E4E    push        edi
 00541E4F    mov         esi,edx
 00541E51    mov         edi,eax
 00541E53    mov         bl,1
 00541E55    test        edi,edi
>00541E57    je          00541E73
 00541E59    mov         edx,esi
 00541E5B    mov         eax,edi
 00541E5D    call        TObject.ClassNameIs
 00541E62    test        al,al
>00541E64    jne         00541E75
 00541E66    mov         eax,edi
 00541E68    call        TObject.ClassParent
 00541E6D    mov         edi,eax
 00541E6F    test        edi,edi
>00541E71    jne         00541E59
 00541E73    xor         ebx,ebx
 00541E75    mov         eax,ebx
 00541E77    pop         edi
 00541E78    pop         esi
 00541E79    pop         ebx
 00541E7A    ret
end;*}

//00541E7C
procedure TUpDown.SetAssociate(Value:TWinControl);
begin
{*
 00541E7C    push        ebp
 00541E7D    mov         ebp,esp
 00541E7F    add         esp,0FFFFFFE8
 00541E82    push        ebx
 00541E83    push        esi
 00541E84    push        edi
 00541E85    xor         ecx,ecx
 00541E87    mov         dword ptr [ebp-18],ecx
 00541E8A    mov         esi,edx
 00541E8C    mov         ebx,eax
 00541E8E    xor         eax,eax
 00541E90    push        ebp
 00541E91    push        542049
 00541E96    push        dword ptr fs:[eax]
 00541E99    mov         dword ptr fs:[eax],esp
 00541E9C    test        esi,esi
>00541E9E    je          00541F35
 00541EA4    mov         eax,dword ptr [ebx+40];TUpDown.FParent:TWinControl
 00541EA7    call        TWinControl.GetControlCount
 00541EAC    dec         eax
 00541EAD    test        eax,eax
>00541EAF    jl          00541F35
 00541EB5    inc         eax
 00541EB6    mov         dword ptr [ebp-4],eax
 00541EB9    xor         edi,edi
 00541EBB    mov         edx,edi
 00541EBD    mov         eax,dword ptr [ebx+40];TUpDown.FParent:TWinControl
 00541EC0    call        TWinControl.GetControl
 00541EC5    mov         edx,dword ptr ds:[52B6C0];TCustomUpDown
 00541ECB    call        @IsClass
 00541ED0    test        al,al
>00541ED2    je          00541F2F
 00541ED4    mov         edx,edi
 00541ED6    mov         eax,dword ptr [ebx+40];TUpDown.FParent:TWinControl
 00541ED9    call        TWinControl.GetControl
 00541EDE    cmp         ebx,eax
>00541EE0    je          00541F2F
 00541EE2    mov         edx,edi
 00541EE4    mov         eax,dword ptr [ebx+40];TUpDown.FParent:TWinControl
 00541EE7    call        TWinControl.GetControl
 00541EEC    cmp         esi,dword ptr [eax+294]
>00541EF2    jne         00541F2F
 00541EF4    mov         eax,dword ptr [esi+8];TWinControl.FName:TComponentName
 00541EF7    mov         dword ptr [ebp-14],eax
 00541EFA    mov         byte ptr [ebp-10],11
 00541EFE    mov         edx,edi
 00541F00    mov         eax,dword ptr [ebx+40];TUpDown.FParent:TWinControl
 00541F03    call        TWinControl.GetControl
 00541F08    mov         eax,dword ptr [eax+8];TControl.FName:TComponentName
 00541F0B    mov         dword ptr [ebp-0C],eax
 00541F0E    mov         byte ptr [ebp-8],11
 00541F12    lea         eax,[ebp-14]
 00541F15    push        eax
 00541F16    push        1
 00541F18    mov         ecx,dword ptr ds:[7C4E08];^SResString363:TResStringRec
 00541F1E    mov         dl,1
 00541F20    mov         eax,[004174D0];Exception
 00541F25    call        Exception.CreateResFmt;Exception.Create
 00541F2A    call        @RaiseExcept
 00541F2F    inc         edi
 00541F30    dec         dword ptr [ebp-4]
>00541F33    jne         00541EBB
 00541F35    cmp         dword ptr [ebx+294],0;TUpDown.FAssociate:TWinControl
>00541F3C    je          00541F67
 00541F3E    mov         eax,ebx
 00541F40    call        TWinControl.HandleAllocated
 00541F45    test        al,al
>00541F47    je          00541F5F
 00541F49    push        0
 00541F4B    push        0
 00541F4D    push        469
 00541F52    mov         eax,ebx
 00541F54    call        TWinControl.GetHandle
 00541F59    push        eax
 00541F5A    call        user32.SendMessageW
 00541F5F    xor         eax,eax
 00541F61    mov         dword ptr [ebx+294],eax;TUpDown.FAssociate:TWinControl
 00541F67    test        esi,esi
>00541F69    je          00541FBA
 00541F6B    mov         eax,dword ptr [esi+40];TWinControl.FParent:TWinControl
 00541F6E    cmp         eax,dword ptr [ebx+40];TUpDown.FParent:TWinControl
>00541F71    jne         00541FBA
 00541F73    mov         eax,esi
 00541F75    mov         edx,dword ptr ds:[52B6C0];TCustomUpDown
 00541F7B    call        @IsClass
 00541F80    test        al,al
>00541F82    jne         00541FBA
 00541F84    mov         eax,esi
 00541F86    mov         edx,dword ptr ds:[52638C];TCustomTreeView
 00541F8C    call        @IsClass
 00541F91    test        al,al
>00541F93    jne         00541FBA
 00541F95    mov         eax,esi
 00541F97    mov         edx,dword ptr ds:[52F86C];TCustomListView
 00541F9D    call        @IsClass
 00541FA2    test        al,al
>00541FA4    jne         00541FBA
 00541FA6    mov         eax,dword ptr [esi]
 00541FA8    mov         edi,eax
 00541FAA    mov         edx,542064;'TDBEdit'
 00541FAF    mov         eax,edi
 00541FB1    call        00541E4C
 00541FB6    xor         al,1
>00541FB8    jmp         00541FBC
 00541FBA    xor         eax,eax
 00541FBC    test        al,al
>00541FBE    je          00542033
 00541FC0    mov         eax,dword ptr [esi]
 00541FC2    mov         edi,eax
 00541FC4    mov         edx,542080;'TDBMemo'
 00541FC9    mov         eax,edi
 00541FCB    call        00541E4C
 00541FD0    test        al,al
>00541FD2    jne         00542033
 00541FD4    mov         eax,ebx
 00541FD6    call        TWinControl.HandleAllocated
 00541FDB    test        al,al
>00541FDD    je          00542004
 00541FDF    mov         edx,esi
 00541FE1    mov         eax,ebx
 00541FE3    call        00542090
 00541FE8    push        0
 00541FEA    mov         eax,esi
 00541FEC    call        TWinControl.GetHandle
 00541FF1    push        eax
 00541FF2    push        469
 00541FF7    mov         eax,ebx
 00541FF9    call        TWinControl.GetHandle
 00541FFE    push        eax
 00541FFF    call        user32.SendMessageW
 00542004    mov         dword ptr [ebx+294],esi;TUpDown.FAssociate:TWinControl
 0054200A    mov         eax,esi
 0054200C    mov         edx,dword ptr ds:[4F9C6C];TCustomEdit
 00542012    call        @IsClass
 00542017    test        al,al
>00542019    je          00542033
 0054201B    lea         edx,[ebp-18]
 0054201E    mov         eax,dword ptr [ebx+2AC];TUpDown.FPosition:Integer
 00542024    call        IntToStr
 00542029    mov         edx,dword ptr [ebp-18]
 0054202C    mov         eax,esi
 0054202E    call        TControl.SetText
 00542033    xor         eax,eax
 00542035    pop         edx
 00542036    pop         ecx
 00542037    pop         ecx
 00542038    mov         dword ptr fs:[eax],edx
 0054203B    push        542050
 00542040    lea         eax,[ebp-18]
 00542043    call        @UStrClr
 00542048    ret
>00542049    jmp         @HandleFinally
>0054204E    jmp         00542040
 00542050    pop         edi
 00542051    pop         esi
 00542052    pop         ebx
 00542053    mov         esp,ebp
 00542055    pop         ebp
 00542056    ret
*}
end;

//00542090
procedure sub_00542090(?:TCustomUpDown; ?:TWinControl);
begin
{*
 00542090    push        ebx
 00542091    push        esi
 00542092    push        edi
 00542093    push        ebp
 00542094    mov         ebx,edx
 00542096    mov         ebp,eax
 00542098    mov         esi,dword ptr [ebx+58];TWinControl.FWidth:Integer
 0054209B    mov         edi,dword ptr [ebx+50];TWinControl.FLeft:Integer
 0054209E    push        0
 005420A0    mov         eax,ebx
 005420A2    call        TWinControl.GetHandle
 005420A7    push        eax
 005420A8    push        469
 005420AD    mov         eax,ebp
 005420AF    call        TWinControl.GetHandle
 005420B4    push        eax
 005420B5    call        user32.SendMessageW
 005420BA    mov         eax,dword ptr [ebx+58];TWinControl.FWidth:Integer
 005420BD    mov         edx,dword ptr [ebx+50];TWinControl.FLeft:Integer
 005420C0    mov         ecx,esi
 005420C2    sub         ecx,eax
 005420C4    mov         eax,ecx
 005420C6    mov         ebp,edx
 005420C8    sub         ebp,edi
 005420CA    lea         edx,[eax+esi]
 005420CD    mov         eax,ebx
 005420CF    call        TControl.SetWidth
 005420D4    mov         edx,edi
 005420D6    sub         edx,ebp
 005420D8    mov         eax,ebx
 005420DA    call        TControl.SetLeft
 005420DF    pop         ebp
 005420E0    pop         edi
 005420E1    pop         esi
 005420E2    pop         ebx
 005420E3    ret
*}
end;

//005420E4
procedure TCustomUpDown.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 005420E4    push        ebx
 005420E5    push        esi
 005420E6    push        edi
 005420E7    mov         ebx,ecx
 005420E9    mov         esi,edx
 005420EB    mov         edi,eax
 005420ED    mov         ecx,ebx
 005420EF    mov         edx,esi
 005420F1    mov         eax,edi
 005420F3    call        TWinControl.Notification
 005420F8    cmp         bl,1
>005420FB    jne         0054212E
 005420FD    cmp         esi,dword ptr [edi+294];TCustomUpDown.FAssociate:TWinControl
>00542103    jne         0054212E
 00542105    mov         eax,edi
 00542107    call        TWinControl.HandleAllocated
 0054210C    test        al,al
>0054210E    je          0054212E
 00542110    push        0
 00542112    push        0
 00542114    push        469
 00542119    mov         eax,edi
 0054211B    call        TWinControl.GetHandle
 00542120    push        eax
 00542121    call        user32.SendMessageW
 00542126    xor         eax,eax
 00542128    mov         dword ptr [edi+294],eax;TCustomUpDown.FAssociate:TWinControl
 0054212E    pop         edi
 0054212F    pop         esi
 00542130    pop         ebx
 00542131    ret
*}
end;

//00542134
{*function TUpDown.GetPosition:?;
begin
 00542134    push        ebx
 00542135    push        ecx
 00542136    mov         ebx,eax
 00542138    mov         eax,ebx
 0054213A    call        TWinControl.HandleAllocated
 0054213F    test        al,al
>00542141    je          00542171
 00542143    mov         eax,esp
 00542145    push        eax
 00542146    push        0
 00542148    push        472
 0054214D    mov         eax,ebx
 0054214F    call        TWinControl.GetHandle
 00542154    push        eax
 00542155    call        user32.SendMessageW
 0054215A    cmp         dword ptr [esp],0
>0054215E    jne         00542168
 00542160    mov         dword ptr [ebx+2AC],eax;TUpDown.FPosition:Integer
>00542166    jmp         00542177
 00542168    mov         eax,dword ptr [ebx+2AC];TUpDown.FPosition:Integer
 0054216E    pop         edx
 0054216F    pop         ebx
 00542170    ret
 00542171    mov         eax,dword ptr [ebx+2AC];TUpDown.FPosition:Integer
 00542177    pop         edx
 00542178    pop         ebx
 00542179    ret
end;*}

//0054217C
procedure TUpDown.SetMin(Value:Integer);
begin
{*
 0054217C    push        ebx
 0054217D    mov         ebx,eax
 0054217F    cmp         edx,dword ptr [ebx+298];TUpDown.FMin:Integer
>00542185    je          005421B8
 00542187    mov         dword ptr [ebx+298],edx;TUpDown.FMin:Integer
 0054218D    mov         eax,ebx
 0054218F    call        TWinControl.HandleAllocated
 00542194    test        al,al
>00542196    je          005421B8
 00542198    mov         eax,dword ptr [ebx+29C];TUpDown.FMax:Integer
 0054219E    push        eax
 0054219F    mov         eax,dword ptr [ebx+298];TUpDown.FMin:Integer
 005421A5    push        eax
 005421A6    push        46F
 005421AB    mov         eax,ebx
 005421AD    call        TWinControl.GetHandle
 005421B2    push        eax
 005421B3    call        user32.SendMessageW
 005421B8    pop         ebx
 005421B9    ret
*}
end;

//005421BC
procedure TUpDown.SetMax(Value:Integer);
begin
{*
 005421BC    push        ebx
 005421BD    mov         ebx,eax
 005421BF    cmp         edx,dword ptr [ebx+29C];TUpDown.FMax:Integer
>005421C5    je          005421F8
 005421C7    mov         dword ptr [ebx+29C],edx;TUpDown.FMax:Integer
 005421CD    mov         eax,ebx
 005421CF    call        TWinControl.HandleAllocated
 005421D4    test        al,al
>005421D6    je          005421F8
 005421D8    mov         eax,dword ptr [ebx+29C];TUpDown.FMax:Integer
 005421DE    push        eax
 005421DF    mov         eax,dword ptr [ebx+298];TUpDown.FMin:Integer
 005421E5    push        eax
 005421E6    push        46F
 005421EB    mov         eax,ebx
 005421ED    call        TWinControl.GetHandle
 005421F2    push        eax
 005421F3    call        user32.SendMessageW
 005421F8    pop         ebx
 005421F9    ret
*}
end;

//005421FC
procedure TUpDown.SetIncrement(Value:Integer);
begin
{*
 005421FC    push        ebx
 005421FD    push        esi
 005421FE    add         esp,0FFFFFFF8
 00542201    mov         esi,edx
 00542203    mov         ebx,eax
 00542205    cmp         esi,dword ptr [ebx+2A0];TUpDown.FIncrement:Integer
>0054220B    je          00542252
 0054220D    mov         dword ptr [ebx+2A0],esi;TUpDown.FIncrement:Integer
 00542213    mov         eax,ebx
 00542215    call        TWinControl.HandleAllocated
 0054221A    test        al,al
>0054221C    je          00542252
 0054221E    push        esp
 0054221F    push        0
 00542221    mov         eax,ebx
 00542223    call        TWinControl.GetHandle
 00542228    mov         ecx,1
 0054222D    mov         edx,46C
 00542232    call        SendGetStructMessage
 00542237    mov         dword ptr [esp+4],esi
 0054223B    push        esp
 0054223C    mov         eax,ebx
 0054223E    call        TWinControl.GetHandle
 00542243    mov         ecx,1
 00542248    mov         edx,46B
 0054224D    call        SendStructMessage
 00542252    pop         ecx
 00542253    pop         edx
 00542254    pop         esi
 00542255    pop         ebx
 00542256    ret
*}
end;

//00542258
procedure TUpDown.SetPosition(Value:Integer);
begin
{*
 00542258    push        ebp
 00542259    mov         ebp,esp
 0054225B    push        0
 0054225D    push        ebx
 0054225E    push        esi
 0054225F    mov         esi,edx
 00542261    mov         ebx,eax
 00542263    xor         eax,eax
 00542265    push        ebp
 00542266    push        54231B
 0054226B    push        dword ptr fs:[eax]
 0054226E    mov         dword ptr fs:[eax],esp
 00542271    mov         eax,ebx
 00542273    call        TUpDown.GetPosition
 00542278    cmp         esi,eax
>0054227A    je          00542305
 00542280    test        byte ptr [ebx+1C],10;TUpDown.FComponentState:TComponentState
>00542284    jne         0054229B
 00542286    mov         ecx,esi
 00542288    sub         ecx,dword ptr [ebx+2AC]
 0054228E    mov         edx,esi
 00542290    mov         eax,ebx
 00542292    call        00541D28
 00542297    test        al,al
>00542299    je          00542305
 0054229B    mov         dword ptr [ebx+2AC],esi;TUpDown.FPosition:Integer
 005422A1    test        byte ptr [ebx+1C],10;TUpDown.FComponentState:TComponentState
>005422A5    je          005422DF
 005422A7    cmp         dword ptr [ebx+294],0;TUpDown.FAssociate:TWinControl
>005422AE    je          005422DF
 005422B0    mov         esi,dword ptr [ebx+294];TUpDown.FAssociate:TWinControl
 005422B6    mov         eax,esi
 005422B8    mov         edx,dword ptr ds:[4F9C6C];TCustomEdit
 005422BE    call        @IsClass
 005422C3    test        al,al
>005422C5    je          005422DF
 005422C7    lea         edx,[ebp-4]
 005422CA    mov         eax,dword ptr [ebx+2AC];TUpDown.FPosition:Integer
 005422D0    call        IntToStr
 005422D5    mov         edx,dword ptr [ebp-4]
 005422D8    mov         eax,esi
 005422DA    call        TControl.SetText
 005422DF    mov         eax,ebx
 005422E1    call        TWinControl.HandleAllocated
 005422E6    test        al,al
>005422E8    je          00542305
 005422EA    mov         eax,dword ptr [ebx+2AC];TUpDown.FPosition:Integer
 005422F0    push        eax
 005422F1    push        0
 005422F3    push        471
 005422F8    mov         eax,ebx
 005422FA    call        TWinControl.GetHandle
 005422FF    push        eax
 00542300    call        user32.SendMessageW
 00542305    xor         eax,eax
 00542307    pop         edx
 00542308    pop         ecx
 00542309    pop         ecx
 0054230A    mov         dword ptr fs:[eax],edx
 0054230D    push        542322
 00542312    lea         eax,[ebp-4]
 00542315    call        @UStrClr
 0054231A    ret
>0054231B    jmp         @HandleFinally
>00542320    jmp         00542312
 00542322    pop         esi
 00542323    pop         ebx
 00542324    pop         ecx
 00542325    pop         ebp
 00542326    ret
*}
end;

//00542328
procedure TUpDown.SetOrientation(Value:TUDOrientation);
begin
{*
 00542328    push        ebx
 00542329    push        esi
 0054232A    mov         ebx,eax
 0054232C    cmp         dl,byte ptr [ebx+2C1];TUpDown.FOrientation:TUDOrientation
>00542332    je          00542391
 00542334    mov         byte ptr [ebx+2C1],dl;TUpDown.FOrientation:TUDOrientation
 0054233A    movzx       eax,word ptr ds:[542394];0x41 gvar_00542394
 00542341    and         ax,word ptr [ebx+1C];TUpDown.FComponentState:TComponentState
 00542345    movzx       edx,word ptr ds:[542398];0x0 gvar_00542398
 0054234C    cmp         dx,ax
>0054234F    jne         00542369
 00542351    mov         eax,dword ptr [ebx+5C];TUpDown.FHeight:Integer
 00542354    push        eax
 00542355    mov         eax,dword ptr [ebx+58];TUpDown.FWidth:Integer
 00542358    push        eax
 00542359    mov         ecx,dword ptr [ebx+54];TUpDown.FTop:Integer
 0054235C    mov         edx,dword ptr [ebx+50];TUpDown.FLeft:Integer
 0054235F    mov         eax,ebx
 00542361    mov         esi,dword ptr [eax]
 00542363    call        dword ptr [esi+0B0];TWinControl.SetBounds
 00542369    mov         eax,ebx
 0054236B    call        TWinControl.HandleAllocated
 00542370    test        al,al
>00542372    je          0054238A
 00542374    push        0
 00542376    push        0
 00542378    push        469
 0054237D    mov         eax,ebx
 0054237F    call        TWinControl.GetHandle
 00542384    push        eax
 00542385    call        user32.SendMessageW
 0054238A    mov         eax,ebx
 0054238C    call        TWinControl.RecreateWnd
 00542391    pop         esi
 00542392    pop         ebx
 00542393    ret
*}
end;

//0054239C
procedure TUpDown.SetAlignButton(Value:TUDAlignButton);
begin
{*
 0054239C    push        ebx
 0054239D    mov         ebx,eax
 0054239F    cmp         dl,byte ptr [ebx+2C0];TUpDown.FAlignButton:TUDAlignButton
>005423A5    je          005423D5
 005423A7    mov         byte ptr [ebx+2C0],dl;TUpDown.FAlignButton:TUDAlignButton
 005423AD    mov         eax,ebx
 005423AF    call        TWinControl.HandleAllocated
 005423B4    test        al,al
>005423B6    je          005423CE
 005423B8    push        0
 005423BA    push        0
 005423BC    push        469
 005423C1    mov         eax,ebx
 005423C3    call        TWinControl.GetHandle
 005423C8    push        eax
 005423C9    call        user32.SendMessageW
 005423CE    mov         eax,ebx
 005423D0    call        TWinControl.RecreateWnd
 005423D5    pop         ebx
 005423D6    ret
*}
end;

//005423D8
procedure TUpDown.SetArrowKeys(Value:Boolean);
begin
{*
 005423D8    push        ebx
 005423D9    mov         ebx,eax
 005423DB    cmp         dl,byte ptr [ebx+290];TUpDown.FArrowKeys:Boolean
>005423E1    je          00542411
 005423E3    mov         byte ptr [ebx+290],dl;TUpDown.FArrowKeys:Boolean
 005423E9    mov         eax,ebx
 005423EB    call        TWinControl.HandleAllocated
 005423F0    test        al,al
>005423F2    je          0054240A
 005423F4    push        0
 005423F6    push        0
 005423F8    push        469
 005423FD    mov         eax,ebx
 005423FF    call        TWinControl.GetHandle
 00542404    push        eax
 00542405    call        user32.SendMessageW
 0054240A    mov         eax,ebx
 0054240C    call        TWinControl.RecreateWnd
 00542411    pop         ebx
 00542412    ret
*}
end;

//00542414
procedure TUpDown.SetThousands(Value:Boolean);
begin
{*
 00542414    push        ebx
 00542415    mov         ebx,eax
 00542417    cmp         dl,byte ptr [ebx+2B0];TUpDown.FThousands:Boolean
>0054241D    je          0054244D
 0054241F    mov         byte ptr [ebx+2B0],dl;TUpDown.FThousands:Boolean
 00542425    mov         eax,ebx
 00542427    call        TWinControl.HandleAllocated
 0054242C    test        al,al
>0054242E    je          00542446
 00542430    push        0
 00542432    push        0
 00542434    push        469
 00542439    mov         eax,ebx
 0054243B    call        TWinControl.GetHandle
 00542440    push        eax
 00542441    call        user32.SendMessageW
 00542446    mov         eax,ebx
 00542448    call        TWinControl.RecreateWnd
 0054244D    pop         ebx
 0054244E    ret
*}
end;

//00542450
procedure TUpDown.SetWrap(Value:Boolean);
begin
{*
 00542450    push        ebx
 00542451    mov         ebx,eax
 00542453    cmp         dl,byte ptr [ebx+2B1];TUpDown.FWrap:Boolean
>00542459    je          00542489
 0054245B    mov         byte ptr [ebx+2B1],dl;TUpDown.FWrap:Boolean
 00542461    mov         eax,ebx
 00542463    call        TWinControl.HandleAllocated
 00542468    test        al,al
>0054246A    je          00542482
 0054246C    push        0
 0054246E    push        0
 00542470    push        469
 00542475    mov         eax,ebx
 00542477    call        TWinControl.GetHandle
 0054247C    push        eax
 0054247D    call        user32.SendMessageW
 00542482    mov         eax,ebx
 00542484    call        TWinControl.RecreateWnd
 00542489    pop         ebx
 0054248A    ret
*}
end;

Initialization
//0079D408
{*
 0079D408    sub         dword ptr ds:[7CA6B8],1
>0079D40F    jae         0079D427
 0079D411    mov         ecx,dword ptr ds:[532CB0];TUpDownStyleHook
 0079D417    mov         edx,dword ptr ds:[52BA1C];TUpDown
 0079D41D    mov         eax,[005738E0];TCustomStyleEngine
 0079D422    call        TCustomStyleEngine.RegisterStyleHook
 0079D427    ret
*}
Finalization
end.