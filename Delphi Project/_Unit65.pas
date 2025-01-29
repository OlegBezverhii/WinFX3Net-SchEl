//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit65;

interface

uses
  SysUtils, Classes;

    destructor Destroy();//00540D0C
    procedure Clear;//00540D68
    procedure CreateParams(var Params:TCreateParams);//00540D9C
    procedure CreateWnd;//00540E40
    procedure sub_00540F8C;//00540F8C
    procedure WMNCDestroy;//005410A0
    procedure WMSetFont;//005410A8
    procedure WMRButtonUp(Message:Messages.TWMRButtonUp);//005410B8
    procedure CMFontChanged;//00541130
    procedure DoSetMaxLength(Value:Integer);//00541140
    //procedure sub_00541160(?:?);//00541160
    //procedure sub_005411BC(?:?);//005411BC
    procedure GetSelLength;//00541204
    //function GetSelStart:?;//0054122C
    function GetSelTextBuf(Buffer:PWideChar; BufSize:Integer):Integer;//00541250
    //procedure sub_005412D4(?:?);//005412D4
    procedure CMBiDiModeChanged(Message:Messages.TMessage);//0054133C
    procedure SetHideScrollBars(Value:Boolean);//00541390
    procedure SetHideSelection(Value:Boolean);//005413A4
    procedure SetSelLength(Value:Integer);//005413E0
    procedure SetZoom(Value:Integer);//00541444
    //function GetPlainText:?;//005414D0
    procedure SetPlainText(Value:Boolean);//005414DC
    procedure CMColorChanged(var Message:Messages.TMessage);//005414E8
    procedure SetLines(Value:TStrings);//00541514
    procedure SetSelStart(Value:Integer);//00541524
    //function sub_0054154C:?;//0054154C
    procedure Print(Caption:string);//00541558
    //procedure WMPaint(?:?);//00541750
    //procedure WMSetCursor(?:?);//00541814
    //procedure sub_005418C0(?:?);//005418C0
    //function sub_0054193C(?:TCustomRichEdit; ?:?):?;//0054193C
    //function sub_0054196C(?:TCustomRichEdit; ?:?):?;//0054196C
    procedure sub_0054199C;//0054199C
    //procedure sub_005419BC(?:?);//005419BC

implementation

//00540D0C
destructor TCustomRichEdit.Destroy();
begin
{*
 00540D0C    push        ebx
 00540D0D    push        esi
 00540D0E    call        @BeforeDestruction
 00540D13    mov         ebx,edx
 00540D15    mov         esi,eax
 00540D17    mov         eax,dword ptr [esi+2D4];TCustomRichEdit.FSelAttributes:TTextAttributes
 00540D1D    call        TObject.Free
 00540D22    mov         eax,dword ptr [esi+2D8];TCustomRichEdit.FDefAttributes:TTextAttributes
 00540D28    call        TObject.Free
 00540D2D    mov         eax,dword ptr [esi+2DC];TCustomRichEdit.FParagraph:TParaAttributes
 00540D33    call        TObject.Free
 00540D38    mov         eax,dword ptr [esi+2E8];TCustomRichEdit.FRichEditStrings:TStrings
 00540D3E    call        TObject.Free
 00540D43    mov         eax,dword ptr [esi+2EC];TCustomRichEdit.FMemStream:TMemoryStream
 00540D49    call        TObject.Free
 00540D4E    mov         dl,0FC
 00540D50    and         dl,bl
 00540D52    mov         eax,esi
 00540D54    call        TCustomMemo.Destroy
 00540D59    test        bl,bl
>00540D5B    jle         00540D64
 00540D5D    mov         eax,esi
 00540D5F    call        @ClassDestroy
 00540D64    pop         esi
 00540D65    pop         ebx
 00540D66    ret
*}
end;

//00540D68
procedure TCustomRichEdit.Clear;
begin
{*
 00540D68    push        ebx
 00540D69    mov         ebx,eax
 00540D6B    mov         eax,ebx
 00540D6D    call        TCustomEdit.Clear
 00540D72    xor         edx,edx
 00540D74    mov         eax,ebx
 00540D76    call        0050747C
 00540D7B    pop         ebx
 00540D7C    ret
*}
end;

//00540D9C
procedure TCustomRichEdit.CreateParams(var Params:TCreateParams);
begin
{*
 00540D9C    push        ebx
 00540D9D    push        esi
 00540D9E    mov         esi,edx
 00540DA0    mov         ebx,eax
 00540DA2    cmp         dword ptr ds:[7CA6D4],0;gvar_007CA6D4:HMODULE
>00540DA9    jne         00540DCA
 00540DAB    push        540E0C;'RICHED20.DLL'
 00540DB0    call        kernel32.LoadLibraryW
 00540DB5    mov         [007CA6D4],eax;gvar_007CA6D4:HMODULE
 00540DBA    cmp         dword ptr ds:[7CA6D4],20;gvar_007CA6D4:HMODULE
>00540DC1    ja          00540DCA
 00540DC3    xor         eax,eax
 00540DC5    mov         [007CA6D4],eax;gvar_007CA6D4:HMODULE
 00540DCA    mov         edx,esi
 00540DCC    mov         eax,ebx
 00540DCE    call        TCustomMemo.CreateParams
 00540DD3    mov         ecx,540E28;'R'
 00540DD8    mov         edx,esi
 00540DDA    mov         eax,ebx
 00540DDC    call        TWinControl.CreateSubClass
 00540DE1    mov         eax,dword ptr [esi+4];TCreateParams.Style:DWORD
 00540DE4    movzx       edx,byte ptr [ebx+2D0];TCustomRichEdit.FHideScrollBars:Boolean
 00540DEB    or          eax,dword ptr [edx*4+7A15E0]
 00540DF2    movzx       edx,byte ptr [ebx+2F8];TCustomRichEdit.FHideSelection:Boolean
 00540DF9    or          eax,dword ptr [edx*4+7A15E8]
 00540E00    mov         dword ptr [esi+4],eax;TCreateParams.Style:DWORD
 00540E03    and         dword ptr [esi+24],0FFFFFFFC;TCreateParams.WindowClass:TWndClass
 00540E07    pop         esi
 00540E08    pop         ebx
 00540E09    ret
*}
end;

//00540E40
procedure TCustomRichEdit.CreateWnd;
begin
{*
 00540E40    push        ebp
 00540E41    mov         ebp,esp
 00540E43    add         esp,0FFFFFFF8
 00540E46    push        ebx
 00540E47    mov         dword ptr [ebp-4],eax
 00540E4A    mov         eax,dword ptr [ebp-4]
 00540E4D    call        TCustomEdit.GetModified
 00540E52    mov         byte ptr [ebp-7],al
 00540E55    mov         eax,dword ptr [ebp-4]
 00540E58    call        TCustomEdit.CreateWnd
 00540E5D    call        GetDefFontCharSet
 00540E62    mov         edx,eax
 00540E64    mov         eax,dword ptr [ebp-4]
 00540E67    mov         eax,dword ptr [eax+74];TCustomRichEdit.FFont:TFont
 00540E6A    call        TFont.SetCharset
 00540E6F    push        2C0001
 00540E74    push        0
 00540E76    push        445
 00540E7B    mov         eax,dword ptr [ebp-4]
 00540E7E    call        TWinControl.GetHandle
 00540E83    push        eax
 00540E84    call        user32.SendMessageW
 00540E89    mov         eax,dword ptr [ebp-4]
 00540E8C    mov         eax,dword ptr [eax+7C];TCustomRichEdit.FColor:TColor
 00540E8F    call        ColorToRGB
 00540E94    push        eax
 00540E95    push        0
 00540E97    push        443
 00540E9C    mov         eax,dword ptr [ebp-4]
 00540E9F    call        TWinControl.GetHandle
 00540EA4    push        eax
 00540EA5    call        user32.SendMessageW
 00540EAA    mov         eax,dword ptr [ebp-4]
 00540EAD    cmp         dword ptr [eax+2EC],0;TCustomRichEdit.FMemStream:TMemoryStream
>00540EB4    je          00540F78
 00540EBA    mov         eax,dword ptr [ebp-4]
 00540EBD    call        TRichEdit.GetPlainText
 00540EC2    mov         byte ptr [ebp-6],al
 00540EC5    lea         edx,[ebp-5]
 00540EC8    mov         eax,dword ptr [ebp-4]
 00540ECB    mov         eax,dword ptr [eax+2EC];TCustomRichEdit.FMemStream:TMemoryStream
 00540ED1    mov         ecx,1
 00540ED6    call        TStream.ReadBuffer
 00540EDB    movzx       edx,byte ptr [ebp-5]
 00540EDF    or          dl,byte ptr [ebp-6]
 00540EE2    mov         eax,dword ptr [ebp-4]
 00540EE5    call        TRichEdit.SetPlainText
 00540EEA    xor         eax,eax
 00540EEC    push        ebp
 00540EED    push        540F49
 00540EF2    push        dword ptr fs:[eax]
 00540EF5    mov         dword ptr fs:[eax],esp
 00540EF8    call        0042768C
 00540EFD    mov         ecx,eax
 00540EFF    mov         eax,dword ptr [ebp-4]
 00540F02    mov         edx,dword ptr [eax+2EC];TCustomRichEdit.FMemStream:TMemoryStream
 00540F08    mov         eax,dword ptr [ebp-4]
 00540F0B    mov         eax,dword ptr [eax+2E8];TCustomRichEdit.FRichEditStrings:TStrings
 00540F11    mov         ebx,dword ptr [eax]
 00540F13    call        dword ptr [ebx+78];TStrings.LoadFromStream
 00540F16    mov         eax,dword ptr [ebp-4]
 00540F19    mov         eax,dword ptr [eax+2EC];TCustomRichEdit.FMemStream:TMemoryStream
 00540F1F    call        TObject.Free
 00540F24    mov         eax,dword ptr [ebp-4]
 00540F27    xor         edx,edx
 00540F29    mov         dword ptr [eax+2EC],edx;TCustomRichEdit.FMemStream:TMemoryStream
 00540F2F    xor         eax,eax
 00540F31    pop         edx
 00540F32    pop         ecx
 00540F33    pop         ecx
 00540F34    mov         dword ptr fs:[eax],edx
 00540F37    push        540F50
 00540F3C    movzx       edx,byte ptr [ebp-6]
 00540F40    mov         eax,dword ptr [ebp-4]
 00540F43    call        TRichEdit.SetPlainText
 00540F48    ret
>00540F49    jmp         @HandleFinally
>00540F4E    jmp         00540F3C
 00540F50    mov         eax,dword ptr [ebp-4]
 00540F53    mov         edx,dword ptr [eax+32C];TCustomRichEdit.FOldSelStart:Integer
 00540F59    mov         eax,dword ptr [ebp-4]
 00540F5C    mov         ecx,dword ptr [eax]
 00540F5E    call        dword ptr [ecx+120];TCustomRichEdit.SetSelStart
 00540F64    mov         eax,dword ptr [ebp-4]
 00540F67    mov         edx,dword ptr [eax+328];TCustomRichEdit.FOldSelLength:Integer
 00540F6D    mov         eax,dword ptr [ebp-4]
 00540F70    mov         ecx,dword ptr [eax]
 00540F72    call        dword ptr [ecx+11C];TCustomRichEdit.SetSelLength
 00540F78    movzx       edx,byte ptr [ebp-7]
 00540F7C    mov         eax,dword ptr [ebp-4]
 00540F7F    call        0050747C
 00540F84    pop         ebx
 00540F85    pop         ecx
 00540F86    pop         ecx
 00540F87    pop         ebp
 00540F88    ret
*}
end;

//00540F8C
procedure sub_00540F8C;
begin
{*
 00540F8C    push        ebp
 00540F8D    mov         ebp,esp
 00540F8F    add         esp,0FFFFFFF8
 00540F92    push        ebx
 00540F93    mov         dword ptr [ebp-4],eax
 00540F96    mov         eax,dword ptr [ebp-4]
 00540F99    test        byte ptr [eax+65],20;TCustomRichEdit.FAlign:TAlign
>00540F9D    je          00541090
 00540FA3    mov         eax,dword ptr [ebp-4]
 00540FA6    call        TCustomEdit.GetModified
 00540FAB    mov         edx,dword ptr [ebp-4]
 00540FAE    mov         byte ptr [edx+2F9],al;TCustomRichEdit.FModified:Boolean
 00540FB4    mov         dl,1
 00540FB6    mov         eax,[00472CE4];TMemoryStream
 00540FBB    call        TObject.Create;TMemoryStream.Create
 00540FC0    mov         edx,dword ptr [ebp-4]
 00540FC3    mov         dword ptr [edx+2EC],eax;TCustomRichEdit.FMemStream:TMemoryStream
 00540FC9    mov         eax,dword ptr [ebp-4]
 00540FCC    call        TRichEdit.GetPlainText
 00540FD1    mov         byte ptr [ebp-5],al
 00540FD4    mov         eax,dword ptr [ebp-4]
 00540FD7    test        byte ptr [eax+1C],10;TCustomRichEdit.FComponentState:TComponentState
 00540FDB    setne       al
 00540FDE    mov         byte ptr [ebp-6],al
 00540FE1    movzx       edx,byte ptr [ebp-6]
 00540FE5    or          dl,byte ptr [ebp-5]
 00540FE8    mov         eax,dword ptr [ebp-4]
 00540FEB    call        TRichEdit.SetPlainText
 00540FF0    mov         eax,dword ptr [ebp-4]
 00540FF3    mov         edx,dword ptr [eax]
 00540FF5    call        dword ptr [edx+110];TCustomRichEdit.GetSelLength
 00540FFB    mov         edx,dword ptr [ebp-4]
 00540FFE    mov         dword ptr [edx+328],eax;TCustomRichEdit.FOldSelLength:Integer
 00541004    mov         eax,dword ptr [ebp-4]
 00541007    mov         edx,dword ptr [eax]
 00541009    call        dword ptr [edx+114];TCustomRichEdit.GetSelStart
 0054100F    mov         edx,dword ptr [ebp-4]
 00541012    mov         dword ptr [edx+32C],eax;TCustomRichEdit.FOldSelStart:Integer
 00541018    lea         edx,[ebp-6]
 0054101B    mov         eax,dword ptr [ebp-4]
 0054101E    mov         eax,dword ptr [eax+2EC];TCustomRichEdit.FMemStream:TMemoryStream
 00541024    mov         ecx,1
 00541029    call        TStream.WriteBuffer
 0054102E    xor         eax,eax
 00541030    push        ebp
 00541031    push        541089
 00541036    push        dword ptr fs:[eax]
 00541039    mov         dword ptr fs:[eax],esp
 0054103C    call        0042768C
 00541041    mov         ecx,eax
 00541043    mov         eax,dword ptr [ebp-4]
 00541046    mov         edx,dword ptr [eax+2EC];TCustomRichEdit.FMemStream:TMemoryStream
 0054104C    mov         eax,dword ptr [ebp-4]
 0054104F    mov         eax,dword ptr [eax+2E8];TCustomRichEdit.FRichEditStrings:TStrings
 00541055    mov         ebx,dword ptr [eax]
 00541057    call        dword ptr [ebx+8C];TStrings.SaveToStream
 0054105D    push        0
 0054105F    push        0
 00541061    mov         eax,dword ptr [ebp-4]
 00541064    mov         eax,dword ptr [eax+2EC];TCustomRichEdit.FMemStream:TMemoryStream
 0054106A    call        TStream.SetPosition
 0054106F    xor         eax,eax
 00541071    pop         edx
 00541072    pop         ecx
 00541073    pop         ecx
 00541074    mov         dword ptr fs:[eax],edx
 00541077    push        541090
 0054107C    movzx       edx,byte ptr [ebp-5]
 00541080    mov         eax,dword ptr [ebp-4]
 00541083    call        TRichEdit.SetPlainText
 00541088    ret
>00541089    jmp         @HandleFinally
>0054108E    jmp         0054107C
 00541090    mov         eax,dword ptr [ebp-4]
 00541093    call        005080B4
 00541098    pop         ebx
 00541099    pop         ecx
 0054109A    pop         ecx
 0054109B    pop         ebp
 0054109C    ret
*}
end;

//005410A0
procedure TCustomRichEdit.WMNCDestroy;
begin
{*
 005410A0    call        TCustomMemo.WMNCDestroy
 005410A5    ret
*}
end;

//005410A8
procedure TCustomRichEdit.WMSetFont;
begin
{*
 005410A8    mov         edx,dword ptr [eax+74];TCustomRichEdit.FFont:TFont
 005410AB    mov         eax,dword ptr [eax+2D8];TCustomRichEdit.FDefAttributes:TTextAttributes
 005410B1    mov         ecx,dword ptr [eax]
 005410B3    call        dword ptr [ecx+8];TTextAttributes.Assign
 005410B6    ret
*}
end;

//005410B8
procedure TCustomRichEdit.WMRButtonUp(Message:Messages.TWMRButtonUp);
begin
{*
 005410B8    push        ebx
 005410B9    push        esi
 005410BA    push        edi
 005410BB    add         esp,0FFFFFFEC
 005410BE    mov         edi,edx
 005410C0    mov         ebx,eax
 005410C2    mov         eax,[007C4590];^gvar_0079EDE0
 005410C7    cmp         dword ptr [eax],5
>005410CA    jge         00541120
 005410CC    mov         eax,ebx
 005410CE    call        TWinControl.GetHandle
 005410D3    mov         esi,eax
 005410D5    lea         eax,[edi+8]
 005410D8    mov         dword ptr [esp],eax
 005410DB    mov         eax,dword ptr [esp]
 005410DE    movsx       eax,word ptr [eax]
 005410E1    mov         dword ptr [esp+4],eax
 005410E5    mov         eax,dword ptr [esp]
 005410E8    movsx       eax,word ptr [eax+2]
 005410EC    mov         dword ptr [esp+8],eax
 005410F0    lea         ecx,[esp+0C]
 005410F4    lea         edx,[esp+4]
 005410F8    mov         eax,ebx
 005410FA    call        TControl.ClientToScreen
 005410FF    mov         eax,dword ptr [esp+0C]
 00541103    and         eax,0FFFF
 00541108    mov         edx,dword ptr [esp+10]
 0054110C    shl         edx,10
 0054110F    or          eax,edx
 00541111    push        eax
 00541112    mov         ecx,esi
 00541114    mov         edx,7B
 00541119    mov         eax,ebx
 0054111B    call        TControl.Perform
 00541120    mov         edx,edi
 00541122    mov         eax,ebx
 00541124    call        TControl.WMRButtonUp
 00541129    add         esp,14
 0054112C    pop         edi
 0054112D    pop         esi
 0054112E    pop         ebx
 0054112F    ret
*}
end;

//00541130
procedure TCustomRichEdit.CMFontChanged;
begin
{*
 00541130    mov         edx,dword ptr [eax+74];TCustomRichEdit.FFont:TFont
 00541133    mov         eax,dword ptr [eax+2D8];TCustomRichEdit.FDefAttributes:TTextAttributes
 00541139    mov         ecx,dword ptr [eax]
 0054113B    call        dword ptr [ecx+8];TTextAttributes.Assign
 0054113E    ret
*}
end;

//00541140
procedure TCustomRichEdit.DoSetMaxLength(Value:Integer);
begin
{*
 00541140    push        ebx
 00541141    push        esi
 00541142    mov         esi,edx
 00541144    mov         ebx,eax
 00541146    push        esi
 00541147    push        0
 00541149    push        435
 0054114E    mov         eax,ebx
 00541150    call        TWinControl.GetHandle
 00541155    push        eax
 00541156    call        user32.SendMessageW
 0054115B    pop         esi
 0054115C    pop         ebx
 0054115D    ret
*}
end;

//00541160
{*procedure sub_00541160(?:?);
begin
 00541160    push        ebx
 00541161    push        esi
 00541162    add         esp,0FFFFFFF8
 00541165    mov         esi,edx
 00541167    mov         ebx,eax
 00541169    push        esp
 0054116A    push        0
 0054116C    mov         eax,ebx
 0054116E    call        TWinControl.GetHandle
 00541173    xor         ecx,ecx
 00541175    mov         edx,434
 0054117A    call        SendGetStructMessage
 0054117F    mov         eax,dword ptr [esp+4]
 00541183    mov         dword ptr [esi],eax
 00541185    mov         eax,dword ptr [esi]
 00541187    push        eax
 00541188    push        0
 0054118A    push        436
 0054118F    mov         eax,ebx
 00541191    call        TWinControl.GetHandle
 00541196    push        eax
 00541197    call        user32.SendMessageW
 0054119C    mov         dword ptr [esi+4],eax
 0054119F    push        0
 005411A1    push        0FF
 005411A3    push        0BB
 005411A8    mov         eax,ebx
 005411AA    call        TWinControl.GetHandle
 005411AF    push        eax
 005411B0    call        user32.SendMessageW
 005411B5    sub         dword ptr [esi],eax
 005411B7    pop         ecx
 005411B8    pop         edx
 005411B9    pop         esi
 005411BA    pop         ebx
 005411BB    ret
end;*}

//005411BC
{*procedure sub_005411BC(?:?);
begin
 005411BC    push        ebx
 005411BD    push        esi
 005411BE    push        edi
 005411BF    add         esp,0FFFFFFF8
 005411C2    mov         esi,edx
 005411C4    mov         ebx,eax
 005411C6    push        0
 005411C8    mov         eax,dword ptr [esi+4]
 005411CB    push        eax
 005411CC    push        0BB
 005411D1    mov         eax,ebx
 005411D3    call        TWinControl.GetHandle
 005411D8    push        eax
 005411D9    call        user32.SendMessageW
 005411DE    mov         edi,eax
 005411E0    add         edi,dword ptr [esi]
 005411E2    mov         dword ptr [esp],edi
 005411E5    mov         dword ptr [esp+4],edi
 005411E9    push        esp
 005411EA    mov         eax,ebx
 005411EC    call        TWinControl.GetHandle
 005411F1    xor         ecx,ecx
 005411F3    mov         edx,437
 005411F8    call        SendStructMessage
 005411FD    pop         ecx
 005411FE    pop         edx
 005411FF    pop         edi
 00541200    pop         esi
 00541201    pop         ebx
 00541202    ret
end;*}

//00541204
procedure TCustomRichEdit.GetSelLength;
begin
{*
 00541204    push        ebx
 00541205    add         esp,0FFFFFFF8
 00541208    mov         ebx,eax
 0054120A    push        esp
 0054120B    push        0
 0054120D    mov         eax,ebx
 0054120F    call        TWinControl.GetHandle
 00541214    xor         ecx,ecx
 00541216    mov         edx,434
 0054121B    call        SendGetStructMessage
 00541220    mov         eax,dword ptr [esp+4]
 00541224    sub         eax,dword ptr [esp]
 00541227    pop         ecx
 00541228    pop         edx
 00541229    pop         ebx
 0054122A    ret
*}
end;

//0054122C
{*function TCustomRichEdit.GetSelStart:?;
begin
 0054122C    push        ebx
 0054122D    add         esp,0FFFFFFF8
 00541230    mov         ebx,eax
 00541232    push        esp
 00541233    push        0
 00541235    mov         eax,ebx
 00541237    call        TWinControl.GetHandle
 0054123C    xor         ecx,ecx
 0054123E    mov         edx,434
 00541243    call        SendGetStructMessage
 00541248    mov         eax,dword ptr [esp]
 0054124B    pop         ecx
 0054124C    pop         edx
 0054124D    pop         ebx
 0054124E    ret
end;*}

//00541250
function TCustomRichEdit.GetSelTextBuf(Buffer:PWideChar; BufSize:Integer):Integer;
begin
{*
 00541250    push        ebp
 00541251    mov         ebp,esp
 00541253    add         esp,0FFFFFFF8
 00541256    push        ebx
 00541257    push        esi
 00541258    xor         ebx,ebx
 0054125A    mov         dword ptr [ebp-4],ebx
 0054125D    mov         esi,ecx
 0054125F    mov         dword ptr [ebp-8],edx
 00541262    mov         ebx,eax
 00541264    xor         eax,eax
 00541266    push        ebp
 00541267    push        5412C4
 0054126C    push        dword ptr fs:[eax]
 0054126F    mov         dword ptr fs:[eax],esp
 00541272    lea         edx,[ebp-4]
 00541275    mov         eax,ebx
 00541277    mov         ecx,dword ptr [eax]
 00541279    call        dword ptr [ecx+118];TCustomRichEdit.sub_005412D4
 0054127F    mov         edx,dword ptr [ebp-4]
 00541282    mov         eax,edx
 00541284    test        eax,eax
>00541286    je          0054128D
 00541288    sub         eax,4
 0054128B    mov         eax,dword ptr [eax]
 0054128D    mov         ebx,eax
 0054128F    mov         eax,edx
 00541291    test        eax,eax
>00541293    je          0054129A
 00541295    sub         eax,4
 00541298    mov         eax,dword ptr [eax]
 0054129A    cmp         eax,esi
>0054129C    jl          005412A1
 0054129E    mov         ebx,esi
 005412A0    dec         ebx
 005412A1    mov         ecx,ebx
 005412A3    mov         edx,dword ptr [ebp-4]
 005412A6    mov         eax,dword ptr [ebp-8]
 005412A9    call        StrPLCopy
 005412AE    xor         eax,eax
 005412B0    pop         edx
 005412B1    pop         ecx
 005412B2    pop         ecx
 005412B3    mov         dword ptr fs:[eax],edx
 005412B6    push        5412CB
 005412BB    lea         eax,[ebp-4]
 005412BE    call        @UStrClr
 005412C3    ret
>005412C4    jmp         @HandleFinally
>005412C9    jmp         005412BB
 005412CB    mov         eax,ebx
 005412CD    pop         esi
 005412CE    pop         ebx
 005412CF    pop         ecx
 005412D0    pop         ecx
 005412D1    pop         ebp
 005412D2    ret
*}
end;

//005412D4
{*procedure sub_005412D4(?:?);
begin
 005412D4    push        ebx
 005412D5    push        esi
 005412D6    add         esp,0FFFFFFEC
 005412D9    mov         esi,edx
 005412DB    mov         ebx,eax
 005412DD    mov         eax,ebx
 005412DF    mov         edx,dword ptr [eax]
 005412E1    call        dword ptr [edx+110];TCustomRichEdit.GetSelLength
 005412E7    mov         edx,eax
 005412E9    inc         edx
 005412EA    mov         eax,esi
 005412EC    call        @UStrSetLength
 005412F1    mov         eax,dword ptr [esi]
 005412F3    test        eax,eax
>005412F5    je          005412FC
 005412F7    sub         eax,4
 005412FA    mov         eax,dword ptr [eax]
 005412FC    add         eax,eax
 005412FE    mov         dword ptr [esp],eax
 00541301    mov         dword ptr [esp+4],2
 00541309    mov         dword ptr [esp+8],4B0
 00541311    xor         eax,eax
 00541313    mov         dword ptr [esp+0C],eax
 00541317    xor         eax,eax
 00541319    mov         dword ptr [esp+10],eax
 0054131D    push        esi
 0054131E    mov         eax,ebx
 00541320    call        TWinControl.GetHandle
 00541325    lea         ecx,[esp+4]
 00541329    mov         edx,45E
 0054132E    call        0051A674
 00541333    add         esp,14
 00541336    pop         esi
 00541337    pop         ebx
 00541338    ret
end;*}

//0054133C
procedure TCustomRichEdit.CMBiDiModeChanged(Message:Messages.TMessage);
begin
{*
 0054133C    push        ebx
 0054133D    push        esi
 0054133E    add         esp,0FFFFFF44
 00541344    mov         esi,edx
 00541346    mov         ebx,eax
 00541348    mov         eax,ebx
 0054134A    call        TWinControl.HandleNeeded
 0054134F    mov         edx,esi
 00541351    mov         eax,ebx
 00541353    call        TWinControl.CMBiDiModeChanged
 00541358    mov         edx,esp
 0054135A    mov         eax,dword ptr [ebx+2DC];TCustomRichEdit.FParagraph:TParaAttributes
 00541360    call        TParaAttributes.GetAttributes
 00541365    mov         dword ptr [esp+4],8
 0054136D    movzx       eax,byte ptr [ebx+290];TCustomRichEdit.FAlignment:TAlignment
 00541374    inc         eax
 00541375    mov         word ptr [esp+18],ax
 0054137A    mov         edx,esp
 0054137C    mov         eax,dword ptr [ebx+2DC];TCustomRichEdit.FParagraph:TParaAttributes
 00541382    call        TParaAttributes.SetAttributes
 00541387    add         esp,0BC
 0054138D    pop         esi
 0054138E    pop         ebx
 0054138F    ret
*}
end;

//00541390
procedure TRichEdit.SetHideScrollBars(Value:Boolean);
begin
{*
 00541390    cmp         dl,byte ptr [eax+2D0];TRichEdit.FHideScrollBars:Boolean
>00541396    je          005413A3
 00541398    mov         byte ptr [eax+2D0],dl;TRichEdit.FHideScrollBars:Boolean
 0054139E    call        TWinControl.RecreateWnd
 005413A3    ret
*}
end;

//005413A4
procedure TRichEdit.SetHideSelection(Value:Boolean);
begin
{*
 005413A4    push        ebx
 005413A5    mov         ebx,eax
 005413A7    cmp         dl,byte ptr [ebx+2F8];TRichEdit.FHideSelection:Boolean
>005413AD    je          005413D1
 005413AF    mov         byte ptr [ebx+2F8],dl;TRichEdit.FHideSelection:Boolean
 005413B5    push        1
 005413B7    movzx       eax,byte ptr [ebx+2F8];TRichEdit.FHideSelection:Boolean
 005413BE    push        eax
 005413BF    push        43F
 005413C4    mov         eax,ebx
 005413C6    call        TWinControl.GetHandle
 005413CB    push        eax
 005413CC    call        user32.SendMessageW
 005413D1    pop         ebx
 005413D2    ret
*}
end;

//005413E0
procedure TCustomRichEdit.SetSelLength(Value:Integer);
begin
{*
 005413E0    push        ebx
 005413E1    push        esi
 005413E2    add         esp,0FFFFFFF8
 005413E5    mov         esi,edx
 005413E7    mov         ebx,eax
 005413E9    push        esp
 005413EA    push        0
 005413EC    mov         eax,ebx
 005413EE    call        TWinControl.GetHandle
 005413F3    xor         ecx,ecx
 005413F5    mov         edx,434
 005413FA    call        SendGetStructMessage
 005413FF    add         esi,dword ptr [esp]
 00541402    mov         dword ptr [esp+4],esi
 00541406    push        esp
 00541407    mov         eax,ebx
 00541409    call        TWinControl.GetHandle
 0054140E    xor         ecx,ecx
 00541410    mov         edx,437
 00541415    call        SendStructMessage
 0054141A    push        0
 0054141C    push        0
 0054141E    push        431
 00541423    mov         eax,ebx
 00541425    call        TWinControl.GetHandle
 0054142A    push        eax
 0054142B    call        user32.SendMessageW
 00541430    pop         ecx
 00541431    pop         edx
 00541432    pop         esi
 00541433    pop         ebx
 00541434    ret
*}
end;

//00541444
procedure TRichEdit.SetZoom(Value:Integer);
begin
{*
 00541444    push        ebx
 00541445    push        esi
 00541446    push        edi
 00541447    push        ecx
 00541448    mov         esi,edx
 0054144A    mov         ebx,eax
 0054144C    cmp         esi,dword ptr [ebx+330];TRichEdit.FZoom:Integer
>00541452    je          005414B1
 00541454    cmp         esi,64
>00541457    jle         00541470
 00541459    mov         dword ptr [esp],esi
 0054145C    fild        dword ptr [esp]
 0054145F    fld         tbyte ptr ds:[5414B8];0,64:Extended
 00541465    fmulp       st(1),st
 00541467    call        @ROUND
 0054146C    mov         edi,eax
>0054146E    jmp         00541489
 00541470    mov         dword ptr [esp],esi
 00541473    fild        dword ptr [esp]
 00541476    fld         tbyte ptr ds:[5414C4];0,63:Extended
 0054147C    fmulp       st(1),st
 0054147E    fld1
 00541480    faddp       st(1),st
 00541482    call        @ROUND
 00541487    mov         edi,eax
 00541489    cmp         edi,1
>0054148C    jle         005414B1
 0054148E    cmp         edi,1000
>00541494    jge         005414B1
 00541496    mov         dword ptr [ebx+330],esi;TRichEdit.FZoom:Integer
 0054149C    push        40
 0054149E    push        edi
 0054149F    push        4E1
 005414A4    mov         eax,ebx
 005414A6    call        TWinControl.GetHandle
 005414AB    push        eax
 005414AC    call        user32.SendMessageW
 005414B1    pop         edx
 005414B2    pop         edi
 005414B3    pop         esi
 005414B4    pop         ebx
 005414B5    ret
*}
end;

//005414D0
{*function TRichEdit.GetPlainText:?;
begin
 005414D0    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 005414D6    movzx       eax,byte ptr [eax+30]
 005414DA    ret
end;*}

//005414DC
procedure TRichEdit.SetPlainText(Value:Boolean);
begin
{*
 005414DC    mov         eax,dword ptr [eax+2E8];TRichEdit.FRichEditStrings:TStrings
 005414E2    mov         byte ptr [eax+30],dl
 005414E5    ret
*}
end;

//005414E8
procedure TCustomRichEdit.CMColorChanged(var Message:Messages.TMessage);
begin
{*
 005414E8    push        ebx
 005414E9    mov         ebx,eax
 005414EB    mov         eax,ebx
 005414ED    call        TCustomEdit.CMColorChanged
 005414F2    mov         eax,dword ptr [ebx+7C];TCustomRichEdit.FColor:TColor
 005414F5    call        ColorToRGB
 005414FA    push        eax
 005414FB    push        0
 005414FD    push        443
 00541502    mov         eax,ebx
 00541504    call        TWinControl.GetHandle
 00541509    push        eax
 0054150A    call        user32.SendMessageW
 0054150F    pop         ebx
 00541510    ret
*}
end;

//00541514
procedure TRichEdit.SetLines(Value:TStrings);
begin
{*
 00541514    push        esi
 00541515    mov         esi,eax
 00541517    mov         eax,dword ptr [esi+2E8];TRichEdit.FRichEditStrings:TStrings
 0054151D    mov         ecx,dword ptr [eax]
 0054151F    call        dword ptr [ecx+8];TStrings.Assign
 00541522    pop         esi
 00541523    ret
*}
end;

//00541524
procedure TCustomRichEdit.SetSelStart(Value:Integer);
begin
{*
 00541524    push        ebx
 00541525    add         esp,0FFFFFFF8
 00541528    mov         ebx,eax
 0054152A    mov         dword ptr [esp],edx
 0054152D    mov         dword ptr [esp+4],edx
 00541531    push        esp
 00541532    mov         eax,ebx
 00541534    call        TWinControl.GetHandle
 00541539    xor         ecx,ecx
 0054153B    mov         edx,437
 00541540    call        SendStructMessage
 00541545    pop         ecx
 00541546    pop         edx
 00541547    pop         ebx
 00541548    ret
*}
end;

//0054154C
{*function sub_0054154C:?;
begin
 0054154C    movzx       eax,byte ptr ds:[541554];0xF gvar_00541554
 00541553    ret
end;*}

//00541558
procedure TCustomRichEdit.Print(Caption:string);
begin
{*
 00541558    push        ebp
 00541559    mov         ebp,esp
 0054155B    add         esp,0FFFFFFB0
 0054155E    push        ebx
 0054155F    push        esi
 00541560    push        edi
 00541561    mov         ebx,edx
 00541563    mov         dword ptr [ebp-4],eax
 00541566    lea         eax,[ebp-40]
 00541569    xor         ecx,ecx
 0054156B    mov         edx,30
 00541570    call        @FillChar
 00541575    call        Printer
 0054157A    mov         esi,eax
 0054157C    lea         eax,[esi+18];TPrinter.FTitle:string
 0054157F    mov         edx,ebx
 00541581    call        @UStrAsg
 00541586    mov         eax,esi
 00541588    call        TPrinter.BeginDoc
 0054158D    mov         eax,esi
 0054158F    call        TPrinter.GetHandle
 00541594    mov         ebx,eax
 00541596    mov         dword ptr [ebp-40],ebx
 00541599    mov         dword ptr [ebp-3C],ebx
 0054159C    push        58
 0054159E    mov         eax,esi
 005415A0    call        TPrinter.GetHandle
 005415A5    push        eax
 005415A6    call        gdi32.GetDeviceCaps
 005415AB    mov         ebx,eax
 005415AD    push        5A
 005415AF    mov         eax,esi
 005415B1    call        TPrinter.GetHandle
 005415B6    push        eax
 005415B7    call        gdi32.GetDeviceCaps
 005415BC    mov         edi,eax
 005415BE    mov         eax,dword ptr [ebp-4]
 005415C1    add         eax,318;TCustomRichEdit.FPageRect:TRect
 005415C6    call        IsRectEmpty
 005415CB    test        al,al
>005415CD    je          005415F7
 005415CF    mov         eax,esi
 005415D1    call        TPrinter.GetPageWidth
 005415D6    imul        eax,eax,5A0
 005415DC    cdq
 005415DD    idiv        eax,ebx
 005415DF    mov         dword ptr [ebp-30],eax
 005415E2    mov         eax,esi
 005415E4    call        TPrinter.GetPageHeight
 005415E9    imul        eax,eax,5A0
 005415EF    cdq
 005415F0    idiv        eax,edi
 005415F2    mov         dword ptr [ebp-2C],eax
>005415F5    jmp         00541643
 005415F7    mov         eax,dword ptr [ebp-4]
 005415FA    imul        eax,dword ptr [eax+318],5A0;TCustomRichEdit.FPageRect:TRect
 00541604    cdq
 00541605    idiv        eax,ebx
 00541607    mov         dword ptr [ebp-38],eax
 0054160A    mov         eax,dword ptr [ebp-4]
 0054160D    imul        eax,dword ptr [eax+31C],5A0;TCustomRichEdit.FPageRect.Top:LongInt
 00541617    cdq
 00541618    idiv        eax,edi
 0054161A    mov         dword ptr [ebp-34],eax
 0054161D    mov         eax,dword ptr [ebp-4]
 00541620    imul        eax,dword ptr [eax+320],5A0;TCustomRichEdit.FOldSelLength:Integer
 0054162A    cdq
 0054162B    idiv        eax,ebx
 0054162D    mov         dword ptr [ebp-30],eax
 00541630    mov         eax,dword ptr [ebp-4]
 00541633    imul        eax,dword ptr [eax+324],5A0;TCustomRichEdit.FOldSelStart:Integer
 0054163D    cdq
 0054163E    idiv        eax,edi
 00541640    mov         dword ptr [ebp-2C],eax
 00541643    push        esi
 00541644    lea         esi,[ebp-38]
 00541647    lea         edi,[ebp-28]
 0054164A    movs        dword ptr [edi],dword ptr [esi]
 0054164B    movs        dword ptr [edi],dword ptr [esi]
 0054164C    movs        dword ptr [edi],dword ptr [esi]
 0054164D    movs        dword ptr [edi],dword ptr [esi]
 0054164E    pop         esi
 0054164F    push        esi
 00541650    lea         esi,[ebp-38]
 00541653    lea         edi,[ebp-50]
 00541656    movs        dword ptr [edi],dword ptr [esi]
 00541657    movs        dword ptr [edi],dword ptr [esi]
 00541658    movs        dword ptr [edi],dword ptr [esi]
 00541659    movs        dword ptr [edi],dword ptr [esi]
 0054165A    pop         esi
 0054165B    xor         ebx,ebx
 0054165D    mov         dword ptr [ebp-10],8
 00541664    mov         dword ptr [ebp-0C],4B0
 0054166B    push        0
 0054166D    lea         eax,[ebp-10]
 00541670    push        eax
 00541671    push        45F
 00541676    mov         eax,dword ptr [ebp-4]
 00541679    call        TWinControl.GetHandle
 0054167E    push        eax
 0054167F    call        user32.SendMessageW
 00541684    mov         edi,eax
 00541686    mov         dword ptr [ebp-14],0FFFFFFFF
 0054168D    push        1
 0054168F    mov         eax,dword ptr [ebp-40]
 00541692    push        eax
 00541693    call        gdi32.SetMapMode
 00541698    mov         dword ptr [ebp-8],eax
 0054169B    push        0
 0054169D    push        0
 0054169F    push        439
 005416A4    mov         eax,dword ptr [ebp-4]
 005416A7    call        TWinControl.GetHandle
 005416AC    push        eax
 005416AD    call        user32.SendMessageW
 005416B2    xor         eax,eax
 005416B4    push        ebp
 005416B5    push        541740
 005416BA    push        dword ptr fs:[eax]
 005416BD    mov         dword ptr fs:[eax],esp
 005416C0    push        esi
 005416C1    push        edi
 005416C2    lea         esi,[ebp-50]
 005416C5    lea         edi,[ebp-38]
 005416C8    movs        dword ptr [edi],dword ptr [esi]
 005416C9    movs        dword ptr [edi],dword ptr [esi]
 005416CA    movs        dword ptr [edi],dword ptr [esi]
 005416CB    movs        dword ptr [edi],dword ptr [esi]
 005416CC    pop         edi
 005416CD    pop         esi
 005416CE    mov         dword ptr [ebp-18],ebx
 005416D1    lea         eax,[ebp-40]
 005416D4    push        eax
 005416D5    mov         eax,dword ptr [ebp-4]
 005416D8    call        TWinControl.GetHandle
 005416DD    mov         ecx,1
 005416E2    mov         edx,439
 005416E7    call        SendStructMessage
 005416EC    mov         ebx,eax
 005416EE    cmp         edi,ebx
>005416F0    jle         005416FE
 005416F2    cmp         ebx,0FFFFFFFF
>005416F5    je          005416FE
 005416F7    mov         eax,esi
 005416F9    call        TPrinter.NewPage
 005416FE    cmp         edi,ebx
>00541700    jle         00541707
 00541702    cmp         ebx,0FFFFFFFF
>00541705    jne         005416C0
 00541707    mov         eax,esi
 00541709    call        TPrinter.EndDoc
 0054170E    xor         eax,eax
 00541710    pop         edx
 00541711    pop         ecx
 00541712    pop         ecx
 00541713    mov         dword ptr fs:[eax],edx
 00541716    push        541747
 0054171B    push        0
 0054171D    push        0
 0054171F    push        439
 00541724    mov         eax,dword ptr [ebp-4]
 00541727    call        TWinControl.GetHandle
 0054172C    push        eax
 0054172D    call        user32.SendMessageW
 00541732    mov         eax,dword ptr [ebp-8]
 00541735    push        eax
 00541736    mov         eax,dword ptr [ebp-40]
 00541739    push        eax
 0054173A    call        gdi32.SetMapMode
 0054173F    ret
>00541740    jmp         @HandleFinally
>00541745    jmp         0054171B
 00541747    pop         edi
 00541748    pop         esi
 00541749    pop         ebx
 0054174A    mov         esp,ebp
 0054174C    pop         ebp
 0054174D    ret
*}
end;

//00541750
{*procedure TCustomRichEdit.WMPaint(?:?);
begin
 00541750    push        ebp
 00541751    mov         ebp,esp
 00541753    add         esp,0FFFFFFD0
 00541756    push        ebx
 00541757    push        esi
 00541758    push        edi
 00541759    mov         edi,edx
 0054175B    mov         esi,eax
 0054175D    push        0FF
 0054175F    lea         eax,[ebp-10]
 00541762    push        eax
 00541763    mov         eax,esi
 00541765    call        TWinControl.GetHandle
 0054176A    push        eax
 0054176B    call        user32.GetUpdateRect
 00541770    test        eax,eax
>00541772    je          005417BD
 00541774    lea         edx,[ebp-30]
 00541777    mov         eax,esi
 00541779    mov         ecx,dword ptr [eax]
 0054177B    call        dword ptr [ecx+64];TWinControl.GetClientRect
 0054177E    mov         eax,dword ptr [ebp-24]
 00541781    push        eax
 00541782    lea         eax,[ebp-20]
 00541785    push        eax
 00541786    mov         ebx,dword ptr [ebp-28]
 00541789    mov         eax,ebx
 0054178B    sub         eax,3
 0054178E    mov         ecx,ebx
 00541790    mov         edx,dword ptr [ebp-2C]
 00541793    call        Rect
 00541798    lea         ecx,[ebp-20]
 0054179B    lea         edx,[ebp-10]
 0054179E    lea         eax,[ebp-10]
 005417A1    call        IntersectRect
 005417A6    test        al,al
>005417A8    je          005417BD
 005417AA    push        0FF
 005417AC    lea         eax,[ebp-20]
 005417AF    push        eax
 005417B0    mov         eax,esi
 005417B2    call        TWinControl.GetHandle
 005417B7    push        eax
 005417B8    call        user32.InvalidateRect
 005417BD    cmp         byte ptr ds:[7A15F0],0;gvar_007A15F0
>005417C4    je          005417D2
 005417C6    mov         eax,esi
 005417C8    mov         edx,dword ptr [eax]
 005417CA    call        dword ptr [edx+0A8];TWinControl.Invalidate
>005417D0    jmp         0054180C
 005417D2    mov         byte ptr ds:[7A15F0],1;gvar_007A15F0
 005417D9    xor         eax,eax
 005417DB    push        ebp
 005417DC    push        541805
 005417E1    push        dword ptr fs:[eax]
 005417E4    mov         dword ptr fs:[eax],esp
 005417E7    mov         edx,edi
 005417E9    mov         eax,esi
 005417EB    call        TWinControl.WMPaint
 005417F0    xor         eax,eax
 005417F2    pop         edx
 005417F3    pop         ecx
 005417F4    pop         ecx
 005417F5    mov         dword ptr fs:[eax],edx
 005417F8    push        54180C
 005417FD    mov         byte ptr ds:[7A15F0],0;gvar_007A15F0
 00541804    ret
>00541805    jmp         @HandleFinally
>0054180A    jmp         005417FD
 0054180C    pop         edi
 0054180D    pop         esi
 0054180E    pop         ebx
 0054180F    mov         esp,ebp
 00541811    pop         ebp
 00541812    ret
end;*}

//00541814
{*procedure TCustomRichEdit.WMSetCursor(?:?);
begin
 00541814    push        ebx
 00541815    push        esi
 00541816    add         esp,0FFFFFFF0
 00541819    mov         esi,edx
 0054181B    mov         ebx,eax
 0054181D    mov         edx,esi
 0054181F    mov         eax,ebx
 00541821    call        TWinControl.WMSetCursor
 00541826    cmp         dword ptr [esi+0C],0
>0054182A    jne         005418B8
 00541830    mov         dword ptr [esi+0C],1
 00541837    push        esp
 00541838    call        user32.GetCursorPos
 0054183D    movzx       eax,word ptr [esp]
 00541841    mov         word ptr [esp+0C],ax
 00541846    movzx       eax,word ptr [esp+4]
 0054184B    mov         word ptr [esp+0E],ax
 00541850    mov         eax,dword ptr [esp+0C]
 00541854    mov         dword ptr [esp+8],eax
 00541858    movzx       esi,word ptr [esp+0A]
 0054185D    movzx       eax,word ptr [esp+8]
 00541862    movzx       eax,ax
 00541865    movzx       edx,si
 00541868    shl         edx,10
 0054186B    or          eax,edx
 0054186D    push        eax
 0054186E    xor         ecx,ecx
 00541870    mov         edx,84
 00541875    mov         eax,ebx
 00541877    call        TControl.Perform
 0054187C    cdq
 0054187D    dec         eax
>0054187E    je          005418A1
 00541880    add         eax,0FFFFFFFB
 00541883    sub         eax,2
>00541886    jae         005418B8
 00541888    mov         eax,[007C4E78];^Screen:TScreen
 0054188D    mov         eax,dword ptr [eax]
 0054188F    mov         edx,0FFFFFFFE
 00541894    call        TScreen.GetCursors
 00541899    push        eax
 0054189A    call        user32.SetCursor
>0054189F    jmp         005418B8
 005418A1    mov         eax,[007C4E78];^Screen:TScreen
 005418A6    mov         eax,dword ptr [eax]
 005418A8    mov         edx,0FFFFFFFC
 005418AD    call        TScreen.GetCursors
 005418B2    push        eax
 005418B3    call        user32.SetCursor
 005418B8    add         esp,10
 005418BB    pop         esi
 005418BC    pop         ebx
 005418BD    ret
end;*}

//005418C0
{*procedure TCustomRichEdit.sub_005418C0(?:?);
begin
 005418C0    push        ebx
 005418C1    push        esi
 005418C2    push        edi
 005418C3    mov         ebx,edx
 005418C5    mov         esi,eax
 005418C7    mov         eax,dword ptr [ebx+8]
 005418CA    mov         edx,dword ptr [eax+8]
 005418CD    sub         edx,701
>005418D3    je          005418F1
 005418D5    dec         edx
>005418D6    je          005418E4
 005418D8    sub         edx,2
>005418DB    je          0054191C
 005418DD    sub         edx,4
>005418E0    je          00541900
>005418E2    jmp         00541936
 005418E4    mov         eax,esi
 005418E6    mov         si,0FFAC
 005418EA    call        @CallDynaInst;TCustomRichEdit.sub_0054199C
>005418EF    jmp         00541936
 005418F1    lea         edx,[eax+0C]
 005418F4    mov         eax,esi
 005418F6    mov         ecx,dword ptr [eax]
 005418F8    call        dword ptr [ecx+134];TCustomRichEdit.sub_005419BC
>005418FE    jmp         00541936
 00541900    mov         edi,eax
 00541902    mov         ecx,dword ptr [edi+10]
 00541905    mov         edx,dword ptr [edi+0C]
 00541908    mov         eax,esi
 0054190A    call        0054193C
 0054190F    test        al,al
>00541911    jne         00541936
 00541913    mov         dword ptr [ebx+0C],1
>0054191A    jmp         00541936
 0054191C    lea         edi,[eax+18]
 0054191F    mov         ecx,dword ptr [edi+4]
 00541922    mov         edx,dword ptr [edi]
 00541924    mov         eax,esi
 00541926    call        0054196C
 0054192B    test        al,al
>0054192D    jne         00541936
 0054192F    mov         dword ptr [ebx+0C],1
 00541936    pop         edi
 00541937    pop         esi
 00541938    pop         ebx
 00541939    ret
end;*}

//0054193C
{*function sub_0054193C(?:TCustomRichEdit; ?:?):?;
begin
 0054193C    push        ebx
 0054193D    push        ecx
 0054193E    mov         byte ptr [esp],1
 00541942    cmp         word ptr [eax+312],0;TCustomRichEdit.?f312:word
>0054194A    je          00541964
 0054194C    push        ecx
 0054194D    lea         ecx,[esp+4]
 00541951    push        ecx
 00541952    mov         ebx,eax
 00541954    mov         ecx,edx
 00541956    mov         edx,eax
 00541958    mov         eax,dword ptr [ebx+314];TCustomRichEdit.?f314:dword
 0054195E    call        dword ptr [ebx+310];TCustomRichEdit.FOnSaveClipboard
 00541964    movzx       eax,byte ptr [esp]
 00541968    pop         edx
 00541969    pop         ebx
 0054196A    ret
end;*}

//0054196C
{*function sub_0054196C(?:TCustomRichEdit; ?:?):?;
begin
 0054196C    push        ebx
 0054196D    push        ecx
 0054196E    mov         byte ptr [esp],0
 00541972    cmp         word ptr [eax+30A],0;TCustomRichEdit.?f30A:word
>0054197A    je          00541994
 0054197C    push        ecx
 0054197D    lea         ecx,[esp+4]
 00541981    push        ecx
 00541982    mov         ebx,eax
 00541984    mov         ecx,edx
 00541986    mov         edx,eax
 00541988    mov         eax,dword ptr [ebx+30C];TCustomRichEdit.?f30C:dword
 0054198E    call        dword ptr [ebx+308];TCustomRichEdit.FOnProtectChange
 00541994    movzx       eax,byte ptr [esp]
 00541998    pop         edx
 00541999    pop         ebx
 0054199A    ret
end;*}

//0054199C
procedure TCustomRichEdit.sub_0054199C;
begin
{*
 0054199C    push        ebx
 0054199D    cmp         word ptr [eax+2F2],0;TCustomRichEdit.?f2F2:word
>005419A5    je          005419B7
 005419A7    mov         ebx,eax
 005419A9    mov         edx,eax
 005419AB    mov         eax,dword ptr [ebx+2F4];TCustomRichEdit.FDefaultConverter:TConversionClass
 005419B1    call        dword ptr [ebx+2F0];TCustomRichEdit.FOnSelChange
 005419B7    pop         ebx
 005419B8    ret
*}
end;

//005419BC
{*procedure sub_005419BC(?:?);
begin
 005419BC    push        ebx
 005419BD    cmp         word ptr [eax+302],0;TCustomRichEdit.?f302:word
>005419C5    je          005419D9
 005419C7    mov         ecx,edx
 005419C9    mov         ebx,eax
 005419CB    mov         edx,eax
 005419CD    mov         eax,dword ptr [ebx+304];TCustomRichEdit.?f304:dword
 005419D3    call        dword ptr [ebx+300];TCustomRichEdit.FOnResizeRequest
 005419D9    pop         ebx
 005419DA    ret
end;*}

Initialization
//0079D3C8
{*
 0079D3C8    sub         dword ptr ds:[7CA6B0],1
>0079D3CF    jae         0079D3E7
 0079D3D1    mov         ecx,dword ptr ds:[532FEC];TRichEditStyleHook
 0079D3D7    mov         edx,dword ptr ds:[52A5B8];TRichEdit
 0079D3DD    mov         eax,[005738E0];TCustomStyleEngine
 0079D3E2    call        TCustomStyleEngine.RegisterStyleHook
 0079D3E7    ret
*}
Finalization
end.