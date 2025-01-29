//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit59;

interface

uses
  SysUtils, Classes;

    destructor Destroy();//00533A44
    procedure sub_00533AE0;//00533AE0
    procedure sub_00533AFC;//00533AFC
    //function sub_00533B28:?;//00533B28
    procedure sub_00533B2C;//00533B2C
    procedure ChangeScale(M:Integer; D:Integer);//00533B4C
    procedure CreateParams(var Params:TCreateParams);//00533B94
    procedure CreateWnd;//00533CAC
    //procedure sub_00533D40(?:?; ?:?);//00533D40
    //procedure sub_00533D7C(?:TWinControl; ?:?);//00533D7C
    //function sub_00533DB4(?:?):?;//00533DB4
    //function GetTabIndex:?;//00533DDC
    procedure CMFontChanged(var Message:TMessage);//00533DF8
    procedure SetHotTrack(Value:Boolean);//00533E24
    procedure Notification(AComponent:TComponent; Operation:TOperation);//00533E38
    procedure SetImages(Value:TCustomImageList);//00533E68
    //procedure sub_00533ED8(?:?; ?:?);//00533ED8
    //function sub_00533EF8(?:TPageControl; ?:Boolean):?;//00533EF8
    procedure SetMultiLine(Value:Boolean);//00533F88
    procedure SetOwnerDraw(Value:Boolean);//00533FA8
    procedure SetRaggedRight(Value:Boolean);//00533FBC
    procedure SetScrollOpposite(Value:Boolean);//00533FD8
    procedure SetStyle(Value:TTabStyle);//00533FF8
    procedure SetTabHeight(Value:SmallInt);//00534088
    procedure sub_00534128(?:Integer);//00534128
    procedure SetTabPosition(Value:TTabPosition);//0053414C
    procedure SetTabWidth(Value:SmallInt);//005341E4
    procedure TabsChanged;//0053429C
    procedure sub_005342DC(?:TCustomTabControl);//005342DC
    procedure sub_00534318(?:TCustomTabControl);//00534318
    //procedure sub_00534414(?:?);//00534414
    //procedure WMDestroy(?:?);//00534508
    //procedure WMNotifyFormat(?:?);//00534598
    //procedure WMSize(?:?);//005345BC
    procedure CMFontChanged;//005345DC
    //procedure CMSysColorChange(?:?);//00534604
    procedure CMTabStopChanged;//0053462C
    //procedure sub_00534638(?:?);//00534638
    //procedure CMDialogChar(?:?);//0053467C
    //procedure sub_00534768(?:?);//00534768
    function IndexOfTabAt(X:Integer; Y:Integer):Integer;//00534798
    //procedure TabRect(Index:Integer; ?:?);//005347F8
    //procedure sub_0053481C(?:?);//0053481C
    //function sub_005348A0(?:TPageControl):?;//005348A0
    constructor Create(AOwner:TComponent);//005348B4
    destructor Destroy();//00534918
    procedure sub_00534964;//00534964
    procedure sub_00534968;//00534968
    procedure sub_00534988;//00534988
    //function GetPageIndex:?;//005349A8
    //function sub_005349C4(?:TTabSheet):?;//005349C4
    procedure CreateParams(var Params:TCreateParams);//00534A14
    procedure ReadState(Reader:TReader);//00534A24
    procedure SetImageIndex(Value:TImageIndex);//00534A58
    procedure sub_00534A80(?:TTabSheet; ?:TComponent);//00534A80
    procedure SetPageIndex(Value:Integer);//00534AB8
    //procedure sub_00534B4C(?:TTabSheet; ?:?);//00534B4C
    procedure SetTabVisible(Value:Boolean);//00534B90
    //procedure sub_00534BA4(?:?; ?:?);//00534BA4
    procedure sub_00534BD4(?:TTabSheet);//00534BD4
    procedure CMTextChanged;//00534BF4
    procedure CMShowingChanged;//00534C0C
    procedure SetHighlighted(Value:Boolean);//00534CB4
    //procedure WMNCPaint(?:?);//00534D50
    //procedure WMEraseBkgnd(?:?);//00534E64
    constructor Create(AOwner:TComponent);//00534F54
    destructor Destroy();//00534FA8
    procedure sub_00535008(?:TPageControl);//00535008
    procedure CMFontChanged(var Message:TMessage);//00535048
    //procedure sub_0053505C(?:?);//0053505C
    procedure sub_00533B2C;//00535080
    procedure sub_005350C8(?:TPageControl; ?:TTabSheet);//005350C8
    //procedure sub_005351F8(?:?; ?:?; ?:?);//005351F8
    //procedure sub_004EE458(?:?);//00535254
    //procedure sub_004EE530(?:?; ?:?; ?:?; ?:?; ?:?);//0053526C
    procedure sub_004EE464;//005352C0
    function FindNextPage(CurPage:TTabSheet; GoForward:Boolean; CheckTabVisible:Boolean):TTabSheet;//005352F4
    //procedure GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);//0053537C
    //function sub_005353BC(?:?):?;//005353BC
    //function sub_00535438(?:TPageControl; ?:?):?;//00535438
    function GetPage(Index:Integer):TTabSheet;//00535488
    //function sub_005354A0(?:TPageControl):?;//005354A0
    //procedure sub_004EE62C(?:?; ?:?; ?:?; ?:?);//005354AC
    procedure sub_005354F0(?:TComponent; ?:TTabSheet);//005354F0
    //procedure sub_00535514(?:?; ?:?);//00535514
    //procedure sub_00535580(?:TPageControl; ?:?; ?:?);//00535580
    procedure sub_005355A0(?:TPageControl; ?:TTabSheet);//005355A0
    procedure SelectNextPage(GoForward:Boolean; CheckTabVisible:Boolean);//005355F4
    procedure SetActivePage(Value:TTabSheet);//00535640
    procedure SetChildOrder(Child:Classes.TComponent; Order:Integer);//005356D4
    //procedure sub_005356E0(?:?);//005356E0
    procedure sub_00535714(?:TPageControl; ?:TTabSheet);//00535714
    procedure sub_00535774;//00535774
    procedure CMDesignHitTest(Message:Messages.TWMMouse);//005357B0
    //procedure CMDialogKey(?:?);//0053581C
    //procedure CMDockClient(?:?);//00535888
    //procedure sub_00535A24(?:?);//00535A24
    //procedure CMUndockClient(?:?);//00535B48
    //function sub_00535B74(?:TPageControl; ?:?):?;//00535B74
    //procedure WMLButtonDown(?:?);//00535C04
    //procedure WMLButtonDblClk(?:?);//00535C5C
    procedure sub_00535CAC(?:TPageControl);//00535CAC
    procedure SetTabIndex(Value:Integer);//00535CFC
    //procedure WMEraseBkgnd(?:?);//00535D54
    //function sub_00535D8C(?:TPageControl; ?:Integer):?;//00535D8C
    constructor Create(Collection:TCollection);//00535DBC
    procedure Assign(Source:TPersistent);//00535E08
    procedure SetBiDiMode(Value:TBiDiMode);//00535E68
    procedure IsStoredBiDiMode(Value:TBiDiMode);//00535E7C
    procedure SetParentBiDiMode(Value:Boolean);//00535E84
    procedure ParentBiDiModeChanged;//00535E94
    function UseRightToLeftReading:Boolean;//00535ED0
    function UseRightToLeftAlignment:Boolean;//00535EE8
    //procedure GetDisplayName(?:?);//00535F00
    procedure SetAlignment(Value:TAlignment);//00535F24
    procedure SetBevel(Value:TStatusPanelBevel);//00535F34
    procedure SetStyle(Value:TStatusPanelStyle);//00535F44
    procedure SetText(Value:string);//00535F54
    procedure SetWidth(Value:Integer);//00535F7C
    constructor Create(StatusBar:TCustomStatusBar);//00535F8C
    function Add:TStatusPanel;//00535FEC
    function GetItem(Index:Integer):TStatusPanel;//00535FF8
    procedure sub_0048EDE4;//0053600C
    //procedure sub_00536010(?:?);//00536010
    constructor Create(AOwner:TComponent);//00536040

implementation

//00533A44
destructor TCustomTabControl.Destroy();
begin
{*
 00533A44    push        ebx
 00533A45    push        esi
 00533A46    add         esp,0FFFFFFF0
 00533A49    call        @BeforeDestruction
 00533A4E    mov         ebx,edx
 00533A50    mov         esi,eax
 00533A52    lea         eax,[esi+290];TCustomTabControl.FCanvas:TCanvas
 00533A58    mov         dword ptr [esp],eax
 00533A5B    mov         eax,dword ptr [esp]
 00533A5E    mov         eax,dword ptr [eax]
 00533A60    mov         edx,dword ptr [esp]
 00533A63    xor         ecx,ecx
 00533A65    mov         dword ptr [edx],ecx
 00533A67    call        TObject.Free
 00533A6C    lea         eax,[esi+2B0];TCustomTabControl.FTabs:TStrings
 00533A72    mov         dword ptr [esp+4],eax
 00533A76    mov         eax,dword ptr [esp+4]
 00533A7A    mov         eax,dword ptr [eax]
 00533A7C    mov         edx,dword ptr [esp+4]
 00533A80    xor         ecx,ecx
 00533A82    mov         dword ptr [edx],ecx
 00533A84    call        TObject.Free
 00533A89    lea         eax,[esi+2A8];TCustomTabControl.FSaveTabs:TStringList
 00533A8F    mov         dword ptr [esp+8],eax
 00533A93    mov         eax,dword ptr [esp+8]
 00533A97    mov         eax,dword ptr [eax]
 00533A99    mov         edx,dword ptr [esp+8]
 00533A9D    xor         ecx,ecx
 00533A9F    mov         dword ptr [edx],ecx
 00533AA1    call        TObject.Free
 00533AA6    lea         eax,[esi+298];TCustomTabControl.FImageChangeLink:TChangeLink
 00533AAC    mov         dword ptr [esp+0C],eax
 00533AB0    mov         eax,dword ptr [esp+0C]
 00533AB4    mov         eax,dword ptr [eax]
 00533AB6    mov         edx,dword ptr [esp+0C]
 00533ABA    xor         ecx,ecx
 00533ABC    mov         dword ptr [edx],ecx
 00533ABE    call        TObject.Free
 00533AC3    mov         dl,0FC
 00533AC5    and         dl,bl
 00533AC7    mov         eax,esi
 00533AC9    call        TWinControl.Destroy
 00533ACE    test        bl,bl
>00533AD0    jle         00533AD9
 00533AD2    mov         eax,esi
 00533AD4    call        @ClassDestroy
 00533AD9    add         esp,10
 00533ADC    pop         esi
 00533ADD    pop         ebx
 00533ADE    ret
*}
end;

//00533AE0
procedure TCustomTabControl.sub_00533AE0;
begin
{*
 00533AE0    push        ebx
 00533AE1    mov         ebx,eax
 00533AE3    mov         eax,ebx
 00533AE5    mov         ecx,dword ptr [eax]
 00533AE7    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 00533AEA    cmp         byte ptr [ebx+2AC],0;TCustomTabControl.FScrollOpposite:Boolean
>00533AF1    je          00533AFA
 00533AF3    mov         eax,ebx
 00533AF5    call        TWinControl.Realign
 00533AFA    pop         ebx
 00533AFB    ret
*}
end;

//00533AFC
procedure TCustomTabControl.sub_00533AFC;
begin
{*
 00533AFC    push        ebx
 00533AFD    push        ecx
 00533AFE    mov         byte ptr [esp],1
 00533B02    cmp         word ptr [eax+2DA],0;TCustomTabControl.?f2DA:word
>00533B0A    je          00533B1E
 00533B0C    mov         ecx,esp
 00533B0E    mov         ebx,eax
 00533B10    mov         edx,eax
 00533B12    mov         eax,dword ptr [ebx+2DC];TCustomTabControl.?f2DC:dword
 00533B18    call        dword ptr [ebx+2D8];TCustomTabControl.FOnChanging
 00533B1E    movzx       eax,byte ptr [esp]
 00533B22    pop         edx
 00533B23    pop         ebx
 00533B24    ret
*}
end;

//00533B28
{*function sub_00533B28:?;
begin
 00533B28    mov         al,1
 00533B2A    ret
end;*}

//00533B2C
procedure TCustomTabControl.sub_00533B2C;
begin
{*
 00533B2C    push        ebx
 00533B2D    cmp         word ptr [eax+2D2],0;TCustomTabControl.?f2D2:word
>00533B35    je          00533B47
 00533B37    mov         ebx,eax
 00533B39    mov         edx,eax
 00533B3B    mov         eax,dword ptr [ebx+2D4];TCustomTabControl.?f2D4:dword
 00533B41    call        dword ptr [ebx+2D0];TCustomTabControl.FOnChange
 00533B47    pop         ebx
 00533B48    ret
*}
end;

//00533B4C
procedure TCustomTabControl.ChangeScale(M:Integer; D:Integer);
begin
{*
 00533B4C    push        ebx
 00533B4D    push        esi
 00533B4E    push        edi
 00533B4F    mov         edi,ecx
 00533B51    mov         esi,edx
 00533B53    mov         ebx,eax
 00533B55    mov         ecx,edi
 00533B57    mov         edx,esi
 00533B59    mov         eax,ebx
 00533B5B    call        TWinControl.ChangeScale
 00533B60    push        edi
 00533B61    push        esi
 00533B62    movsx       eax,word ptr [ebx+2B4];TCustomTabControl.FTabSize:TSmallPoint
 00533B69    push        eax
 00533B6A    call        kernel32.MulDiv
 00533B6F    mov         edx,eax
 00533B71    mov         eax,ebx
 00533B73    call        TPageControl.SetTabWidth
 00533B78    push        edi
 00533B79    push        esi
 00533B7A    movsx       eax,word ptr [ebx+2B6]
 00533B81    push        eax
 00533B82    call        kernel32.MulDiv
 00533B87    mov         edx,eax
 00533B89    mov         eax,ebx
 00533B8B    call        TPageControl.SetTabHeight
 00533B90    pop         edi
 00533B91    pop         esi
 00533B92    pop         ebx
 00533B93    ret
*}
end;

//00533B94
procedure TCustomTabControl.CreateParams(var Params:TCreateParams);
begin
{*
 00533B94    push        ebx
 00533B95    push        esi
 00533B96    push        edi
 00533B97    mov         edi,edx
 00533B99    mov         ebx,eax
 00533B9B    mov         eax,8
 00533BA0    call        InitCommonControl
 00533BA5    mov         edx,edi
 00533BA7    mov         eax,ebx
 00533BA9    call        TWinControl.CreateParams
 00533BAE    mov         ecx,533C8C;'S'
 00533BB3    mov         edx,edi
 00533BB5    mov         eax,ebx
 00533BB7    call        TWinControl.CreateSubClass
 00533BBC    mov         eax,ebx
 00533BBE    mov         si,0FFC6
 00533BC2    call        @CallDynaInst;TControl.sub_004E7698
 00533BC7    and         eax,7F
 00533BCA    add         eax,eax
 00533BCC    lea         eax,[eax*8+7A152C]
 00533BD3    movzx       edx,byte ptr [ebx+2AE];TCustomTabControl.FTabPosition:TTabPosition
 00533BDA    mov         eax,dword ptr [eax+edx*4]
 00533BDD    mov         edx,dword ptr [edi+4];TCreateParams.Style:DWORD
 00533BE0    or          edx,2000000
 00533BE6    or          eax,edx
 00533BE8    movzx       edx,byte ptr [ebx+2AD];TCustomTabControl.FStyle:TTabStyle
 00533BEF    or          eax,dword ptr [edx*4+7A154C]
 00533BF6    movzx       edx,byte ptr [ebx+2A3];TCustomTabControl.FRaggedRight:Boolean
 00533BFD    or          eax,dword ptr [edx*4+7A1558]
 00533C04    mov         dword ptr [edi+4],eax;TCreateParams.Style:DWORD
 00533C07    cmp         byte ptr [ebx+1FC],0;TCustomTabControl.FTabStop:Boolean
>00533C0E    jne         00533C17
 00533C10    or          dword ptr [edi+4],8000;TCreateParams.Style:DWORD
 00533C17    cmp         byte ptr [ebx+2A0],0;TCustomTabControl.FMultiLine:Boolean
>00533C1E    je          00533C27
 00533C20    or          dword ptr [edi+4],200;TCreateParams.Style:DWORD
 00533C27    cmp         byte ptr [ebx+2A1],0;TCustomTabControl.FMultiSelect:Boolean
>00533C2E    je          00533C34
 00533C30    or          dword ptr [edi+4],4;TCreateParams.Style:DWORD
 00533C34    cmp         byte ptr [ebx+2A2],0;TCustomTabControl.FOwnerDraw:Boolean
>00533C3B    je          00533C4A
 00533C3D    test        byte ptr [ebx+1C],10;TCustomTabControl.FComponentState:TComponentState
>00533C41    jne         00533C4A
 00533C43    or          dword ptr [edi+4],2000;TCreateParams.Style:DWORD
 00533C4A    cmp         word ptr [ebx+2B4],0;TCustomTabControl.FTabSize:TSmallPoint
>00533C52    je          00533C5B
 00533C54    or          dword ptr [edi+4],400;TCreateParams.Style:DWORD
 00533C5B    cmp         byte ptr [ebx+294],0;TCustomTabControl.FHotTrack:Boolean
>00533C62    je          00533C6E
 00533C64    test        byte ptr [ebx+1C],10;TCustomTabControl.FComponentState:TComponentState
>00533C68    jne         00533C6E
 00533C6A    or          dword ptr [edi+4],40;TCreateParams.Style:DWORD
 00533C6E    cmp         byte ptr [ebx+2AC],0;TCustomTabControl.FScrollOpposite:Boolean
>00533C75    je          00533C7B
 00533C77    or          dword ptr [edi+4],1;TCreateParams.Style:DWORD
 00533C7B    mov         eax,dword ptr [edi+24];TCreateParams.WindowClass:TWndClass
 00533C7E    and         eax,0FFFFFFFC
 00533C81    or          eax,8
 00533C84    mov         dword ptr [edi+24],eax;TCreateParams.WindowClass:TWndClass
 00533C87    pop         edi
 00533C88    pop         esi
 00533C89    pop         ebx
 00533C8A    ret
*}
end;

//00533CAC
procedure TCustomTabControl.CreateWnd;
begin
{*
 00533CAC    push        ebx
 00533CAD    push        esi
 00533CAE    mov         ebx,eax
 00533CB0    mov         eax,ebx
 00533CB2    call        TWinControl.CreateWnd
 00533CB7    mov         esi,dword ptr [ebx+29C];TCustomTabControl.FImages:TCustomImageList
 00533CBD    test        esi,esi
>00533CBF    je          00533CE6
 00533CC1    mov         eax,esi
 00533CC3    call        TCustomImageList.HandleAllocated
 00533CC8    test        al,al
>00533CCA    je          00533CE6
 00533CCC    mov         eax,dword ptr [ebx+29C];TCustomTabControl.FImages:TCustomImageList
 00533CD2    call        TCustomImageList.GetHandle
 00533CD7    push        eax
 00533CD8    xor         ecx,ecx
 00533CDA    mov         edx,1303
 00533CDF    mov         eax,ebx
 00533CE1    call        TControl.Perform
 00533CE6    cmp         word ptr [ebx+2B4],0;TCustomTabControl.FTabSize:TSmallPoint
>00533CEE    jne         00533CFA
 00533CF0    cmp         word ptr [ebx+2B6],0
>00533CF8    je          00533D01
 00533CFA    mov         eax,ebx
 00533CFC    call        005342DC
 00533D01    mov         esi,dword ptr [ebx+2A8];TCustomTabControl.FSaveTabs:TStringList
 00533D07    test        esi,esi
>00533D09    je          00533D3B
 00533D0B    mov         edx,esi
 00533D0D    mov         eax,dword ptr [ebx+2B0];TCustomTabControl.FTabs:TStrings
 00533D13    mov         ecx,dword ptr [eax]
 00533D15    call        dword ptr [ecx+8];TStrings.Assign
 00533D18    mov         edx,dword ptr [ebx+2A4];TCustomTabControl.FSaveTabIndex:Integer
 00533D1E    mov         eax,ebx
 00533D20    mov         ecx,dword ptr [eax]
 00533D22    call        dword ptr [ecx+114];TCustomTabControl.sub_00534128
 00533D28    mov         eax,dword ptr [ebx+2A8];TCustomTabControl.FSaveTabs:TStringList
 00533D2E    call        TObject.Free
 00533D33    xor         eax,eax
 00533D35    mov         dword ptr [ebx+2A8],eax;TCustomTabControl.FSaveTabs:TStringList
 00533D3B    pop         esi
 00533D3C    pop         ebx
 00533D3D    ret
*}
end;

//00533D40
{*procedure sub_00533D40(?:?; ?:?);
begin
 00533D40    push        ebp
 00533D41    mov         ebp,esp
 00533D43    push        esi
 00533D44    mov         esi,eax
 00533D46    cmp         word ptr [esi+2E2],0;TCustomTabControl.?f2E2:word
>00533D4E    je          00533D6A
 00533D50    push        ecx
 00533D51    movzx       eax,byte ptr [ebp+8]
 00533D55    push        eax
 00533D56    mov         eax,esi
 00533D58    mov         ecx,edx
 00533D5A    mov         edx,eax
 00533D5C    mov         eax,dword ptr [esi+2E4];TCustomTabControl.?f2E4:dword
 00533D62    call        dword ptr [esi+2E0];TCustomTabControl.FOnDrawTab
>00533D68    jmp         00533D77
 00533D6A    mov         edx,ecx
 00533D6C    mov         eax,dword ptr [esi+290];TCustomTabControl.FCanvas:TCanvas
 00533D72    mov         ecx,dword ptr [eax]
 00533D74    call        dword ptr [ecx+54];TCanvas.FillRect
 00533D77    pop         esi
 00533D78    pop         ebp
 00533D79    ret         4
end;*}

//00533D7C
{*procedure sub_00533D7C(?:TWinControl; ?:?);
begin
 00533D7C    push        ebx
 00533D7D    push        esi
 00533D7E    mov         esi,edx
 00533D80    mov         ebx,eax
 00533D82    mov         edx,esi
 00533D84    mov         eax,ebx
 00533D86    mov         ecx,dword ptr [eax]
 00533D88    call        dword ptr [ecx+64]
 00533D8B    push        esi
 00533D8C    push        1
 00533D8E    mov         eax,ebx
 00533D90    call        TWinControl.GetHandle
 00533D95    xor         ecx,ecx
 00533D97    mov         edx,1328
 00533D9C    call        SendGetStructMessage
 00533DA1    cmp         byte ptr [ebx+2AE],0
>00533DA8    jne         00533DAE
 00533DAA    add         dword ptr [esi+4],2
 00533DAE    pop         esi
 00533DAF    pop         ebx
 00533DB0    ret
end;*}

//00533DB4
{*function sub_00533DB4(?:?):?;
begin
 00533DB4    push        ebx
 00533DB5    push        ecx
 00533DB6    mov         dword ptr [esp],edx
 00533DB9    cmp         word ptr [eax+2EA],0;TCustomTabControl.?f2EA:word
>00533DC1    je          00533DD6
 00533DC3    push        esp
 00533DC4    mov         ebx,eax
 00533DC6    mov         ecx,edx
 00533DC8    mov         edx,eax
 00533DCA    mov         eax,dword ptr [ebx+2EC];TCustomTabControl.?f2EC:dword
 00533DD0    call        dword ptr [ebx+2E8];TCustomTabControl.FOnGetImageIndex
 00533DD6    mov         eax,dword ptr [esp]
 00533DD9    pop         edx
 00533DDA    pop         ebx
 00533DDB    ret
end;*}

//00533DDC
{*function TPageControl.GetTabIndex:?;
begin
 00533DDC    push        ebx
 00533DDD    mov         ebx,eax
 00533DDF    push        0
 00533DE1    push        0
 00533DE3    push        130B
 00533DE8    mov         eax,ebx
 00533DEA    call        TWinControl.GetHandle
 00533DEF    push        eax
 00533DF0    call        user32.SendMessageW
 00533DF5    pop         ebx
 00533DF6    ret
end;*}

//00533DF8
procedure TCustomTabControl.CMFontChanged(var Message:TMessage);
begin
{*
 00533DF8    push        ebx
 00533DF9    mov         ebx,eax
 00533DFB    mov         eax,ebx
 00533DFD    call        TWinControl.CMFontChanged
 00533E02    cmp         dword ptr [ebx+29C],0;TCustomTabControl.FImages:TCustomImageList
>00533E09    je          00533E12
 00533E0B    mov         eax,ebx
 00533E0D    call        00534318
 00533E12    cmp         byte ptr [ebx+2AC],0;TCustomTabControl.FScrollOpposite:Boolean
>00533E19    je          00533E22
 00533E1B    mov         eax,ebx
 00533E1D    call        TWinControl.Realign
 00533E22    pop         ebx
 00533E23    ret
*}
end;

//00533E24
procedure TPageControl.SetHotTrack(Value:Boolean);
begin
{*
 00533E24    cmp         dl,byte ptr [eax+294];TPageControl.FHotTrack:Boolean
>00533E2A    je          00533E37
 00533E2C    mov         byte ptr [eax+294],dl;TPageControl.FHotTrack:Boolean
 00533E32    call        TWinControl.RecreateWnd
 00533E37    ret
*}
end;

//00533E38
procedure TCustomTabControl.Notification(AComponent:TComponent; Operation:TOperation);
begin
{*
 00533E38    push        ebx
 00533E39    push        esi
 00533E3A    push        edi
 00533E3B    mov         ebx,ecx
 00533E3D    mov         esi,edx
 00533E3F    mov         edi,eax
 00533E41    mov         ecx,ebx
 00533E43    mov         edx,esi
 00533E45    mov         eax,edi
 00533E47    call        TWinControl.Notification
 00533E4C    cmp         bl,1
>00533E4F    jne         00533E62
 00533E51    cmp         esi,dword ptr [edi+29C];TCustomTabControl.FImages:TCustomImageList
>00533E57    jne         00533E62
 00533E59    xor         edx,edx
 00533E5B    mov         eax,edi
 00533E5D    call        TPageControl.SetImages
 00533E62    pop         edi
 00533E63    pop         esi
 00533E64    pop         ebx
 00533E65    ret
*}
end;

//00533E68
procedure TPageControl.SetImages(Value:TCustomImageList);
begin
{*
 00533E68    push        ebx
 00533E69    push        esi
 00533E6A    mov         esi,edx
 00533E6C    mov         ebx,eax
 00533E6E    mov         eax,dword ptr [ebx+29C];TPageControl.FImages:TCustomImageList
 00533E74    test        eax,eax
>00533E76    je          00533E83
 00533E78    mov         edx,dword ptr [ebx+298];TPageControl.FImageChangeLink:TChangeLink
 00533E7E    call        TCustomImageList.UnRegisterChanges
 00533E83    mov         eax,esi
 00533E85    mov         dword ptr [ebx+29C],eax;TPageControl.FImages:TCustomImageList
 00533E8B    test        eax,eax
>00533E8D    je          00533EC4
 00533E8F    mov         edx,dword ptr [ebx+298];TPageControl.FImageChangeLink:TChangeLink
 00533E95    call        TCustomImageList.RegisterChanges
 00533E9A    mov         edx,ebx
 00533E9C    mov         eax,dword ptr [ebx+29C];TPageControl.FImages:TCustomImageList
 00533EA2    call        TComponent.FreeNotification
 00533EA7    mov         eax,dword ptr [ebx+29C];TPageControl.FImages:TCustomImageList
 00533EAD    call        TCustomImageList.GetHandle
 00533EB2    push        eax
 00533EB3    xor         ecx,ecx
 00533EB5    mov         edx,1303
 00533EBA    mov         eax,ebx
 00533EBC    call        TControl.Perform
 00533EC1    pop         esi
 00533EC2    pop         ebx
 00533EC3    ret
 00533EC4    push        0
 00533EC6    xor         ecx,ecx
 00533EC8    mov         edx,1303
 00533ECD    mov         eax,ebx
 00533ECF    call        TControl.Perform
 00533ED4    pop         esi
 00533ED5    pop         ebx
 00533ED6    ret
*}
end;

//00533ED8
{*procedure sub_00533ED8(?:?; ?:?);
begin
 00533ED8    push        ebx
 00533ED9    push        esi
 00533EDA    mov         esi,edx
 00533EDC    mov         ebx,eax
 00533EDE    mov         eax,esi
 00533EE0    call        TCustomImageList.GetHandle
 00533EE5    push        eax
 00533EE6    xor         ecx,ecx
 00533EE8    mov         edx,1303
 00533EED    mov         eax,ebx
 00533EEF    call        TControl.Perform
 00533EF4    pop         esi
 00533EF5    pop         ebx
 00533EF6    ret
end;*}

//00533EF8
{*function sub_00533EF8(?:TPageControl; ?:Boolean):?;
begin
 00533EF8    push        ebp
 00533EF9    mov         ebp,esp
 00533EFB    add         esp,0FFFFFFF8
 00533EFE    push        ebx
 00533EFF    push        esi
 00533F00    xor         ecx,ecx
 00533F02    mov         dword ptr [ebp-8],ecx
 00533F05    mov         ebx,edx
 00533F07    mov         esi,eax
 00533F09    xor         eax,eax
 00533F0B    push        ebp
 00533F0C    push        533F76
 00533F11    push        dword ptr fs:[eax]
 00533F14    mov         dword ptr fs:[eax],esp
 00533F17    cmp         bl,byte ptr [esi+2A0]
 00533F1D    setne       byte ptr [ebp-1]
 00533F21    cmp         byte ptr [ebp-1],0
>00533F25    je          00533F60
 00533F27    test        bl,bl
>00533F29    jne         00533F4F
 00533F2B    movzx       eax,byte ptr [esi+2AE]
 00533F32    cmp         al,2
>00533F34    je          00533F3A
 00533F36    cmp         al,3
>00533F38    jne         00533F4F
 00533F3A    lea         edx,[ebp-8]
 00533F3D    mov         eax,[007C4C18];^SResString356:TResStringRec
 00533F42    call        LoadResString
 00533F47    mov         eax,dword ptr [ebp-8]
 00533F4A    call        TabControlError
 00533F4F    mov         byte ptr [esi+2A0],bl
 00533F55    test        bl,bl
>00533F57    jne         00533F60
 00533F59    mov         byte ptr [esi+2AC],0
 00533F60    xor         eax,eax
 00533F62    pop         edx
 00533F63    pop         ecx
 00533F64    pop         ecx
 00533F65    mov         dword ptr fs:[eax],edx
 00533F68    push        533F7D
 00533F6D    lea         eax,[ebp-8]
 00533F70    call        @UStrClr
 00533F75    ret
>00533F76    jmp         @HandleFinally
>00533F7B    jmp         00533F6D
 00533F7D    movzx       eax,byte ptr [ebp-1]
 00533F81    pop         esi
 00533F82    pop         ebx
 00533F83    pop         ecx
 00533F84    pop         ecx
 00533F85    pop         ebp
 00533F86    ret
end;*}

//00533F88
procedure TPageControl.SetMultiLine(Value:Boolean);
begin
{*
 00533F88    push        ebx
 00533F89    push        esi
 00533F8A    mov         ebx,edx
 00533F8C    mov         esi,eax
 00533F8E    mov         edx,ebx
 00533F90    mov         eax,esi
 00533F92    call        00533EF8
 00533F97    test        al,al
>00533F99    je          00533FA2
 00533F9B    mov         eax,esi
 00533F9D    call        TWinControl.RecreateWnd
 00533FA2    pop         esi
 00533FA3    pop         ebx
 00533FA4    ret
*}
end;

//00533FA8
procedure TPageControl.SetOwnerDraw(Value:Boolean);
begin
{*
 00533FA8    cmp         dl,byte ptr [eax+2A2];TPageControl.FOwnerDraw:Boolean
>00533FAE    je          00533FBB
 00533FB0    mov         byte ptr [eax+2A2],dl;TPageControl.FOwnerDraw:Boolean
 00533FB6    call        TWinControl.RecreateWnd
 00533FBB    ret
*}
end;

//00533FBC
procedure TPageControl.SetRaggedRight(Value:Boolean);
begin
{*
 00533FBC    cmp         dl,byte ptr [eax+2A3];TPageControl.FRaggedRight:Boolean
>00533FC2    je          00533FD6
 00533FC4    mov         byte ptr [eax+2A3],dl;TPageControl.FRaggedRight:Boolean
 00533FCA    mov         ecx,edx
 00533FCC    mov         edx,800
 00533FD1    call        00533190
 00533FD6    ret
*}
end;

//00533FD8
procedure TPageControl.SetScrollOpposite(Value:Boolean);
begin
{*
 00533FD8    cmp         dl,byte ptr [eax+2AC];TPageControl.FScrollOpposite:Boolean
>00533FDE    je          00533FF5
 00533FE0    mov         byte ptr [eax+2AC],dl;TPageControl.FScrollOpposite:Boolean
 00533FE6    test        dl,dl
>00533FE8    je          00533FF0
 00533FEA    mov         byte ptr [eax+2A0],dl;TPageControl.FMultiLine:Boolean
 00533FF0    call        TWinControl.RecreateWnd
 00533FF5    ret
*}
end;

//00533FF8
procedure TPageControl.SetStyle(Value:TTabStyle);
begin
{*
 00533FF8    push        ebp
 00533FF9    mov         ebp,esp
 00533FFB    push        0
 00533FFD    push        ebx
 00533FFE    push        esi
 00533FFF    mov         ebx,edx
 00534001    mov         esi,eax
 00534003    xor         eax,eax
 00534005    push        ebp
 00534006    push        534079
 0053400B    push        dword ptr fs:[eax]
 0053400E    mov         dword ptr fs:[eax],esp
 00534011    cmp         bl,byte ptr [esi+2AD];TPageControl.FStyle:TTabStyle
>00534017    je          00534063
 00534019    test        bl,bl
>0053401B    je          00534047
 0053401D    cmp         byte ptr [esi+2AE],0;TPageControl.FTabPosition:TTabPosition
>00534024    je          00534047
 00534026    lea         edx,[ebp-4]
 00534029    mov         eax,[007C4868];^SResString209:TResStringRec
 0053402E    call        LoadResString
 00534033    mov         ecx,dword ptr [ebp-4]
 00534036    mov         dl,1
 00534038    mov         eax,[0046BE9C];EInvalidOperation
 0053403D    call        Exception.Create;EInvalidOperation.Create
 00534042    call        @RaiseExcept
 00534047    test        bl,bl
 00534049    sete        dl
 0053404C    mov         eax,esi
 0053404E    mov         ecx,dword ptr [eax]
 00534050    call        dword ptr [ecx+0F0];TGroupBox.SetParentBackground
 00534056    mov         byte ptr [esi+2AD],bl;TPageControl.FStyle:TTabStyle
 0053405C    mov         eax,esi
 0053405E    call        TWinControl.RecreateWnd
 00534063    xor         eax,eax
 00534065    pop         edx
 00534066    pop         ecx
 00534067    pop         ecx
 00534068    mov         dword ptr fs:[eax],edx
 0053406B    push        534080
 00534070    lea         eax,[ebp-4]
 00534073    call        @UStrClr
 00534078    ret
>00534079    jmp         @HandleFinally
>0053407E    jmp         00534070
 00534080    pop         esi
 00534081    pop         ebx
 00534082    pop         ecx
 00534083    pop         ebp
 00534084    ret
*}
end;

//00534088
procedure TPageControl.SetTabHeight(Value:SmallInt);
begin
{*
 00534088    push        ebp
 00534089    mov         ebp,esp
 0053408B    add         esp,0FFFFFFF0
 0053408E    push        ebx
 0053408F    xor         ecx,ecx
 00534091    mov         dword ptr [ebp-0C],ecx
 00534094    mov         dword ptr [ebp-10],ecx
 00534097    mov         ebx,eax
 00534099    xor         eax,eax
 0053409B    push        ebp
 0053409C    push        534119
 005340A1    push        dword ptr fs:[eax]
 005340A4    mov         dword ptr fs:[eax],esp
 005340A7    cmp         dx,word ptr [ebx+2B6]
>005340AE    je          005340FE
 005340B0    test        dx,dx
>005340B3    jge         005340F0
 005340B5    lea         edx,[ebp-0C]
 005340B8    mov         eax,dword ptr [ebx]
 005340BA    call        TObject.ClassName
 005340BF    mov         eax,dword ptr [ebp-0C]
 005340C2    mov         dword ptr [ebp-8],eax
 005340C5    mov         byte ptr [ebp-4],11
 005340C9    lea         eax,[ebp-8]
 005340CC    push        eax
 005340CD    push        0
 005340CF    lea         edx,[ebp-10]
 005340D2    mov         eax,[007C45BC];^SResString237:TResStringRec
 005340D7    call        LoadResString
 005340DC    mov         ecx,dword ptr [ebp-10]
 005340DF    mov         dl,1
 005340E1    mov         eax,[0046BE9C];EInvalidOperation
 005340E6    call        Exception.CreateFmt;EInvalidOperation.Create
 005340EB    call        @RaiseExcept
 005340F0    mov         word ptr [ebx+2B6],dx
 005340F7    mov         eax,ebx
 005340F9    call        005342DC
 005340FE    xor         eax,eax
 00534100    pop         edx
 00534101    pop         ecx
 00534102    pop         ecx
 00534103    mov         dword ptr fs:[eax],edx
 00534106    push        534120
 0053410B    lea         eax,[ebp-10]
 0053410E    mov         edx,2
 00534113    call        @UStrArrayClr
 00534118    ret
>00534119    jmp         @HandleFinally
>0053411E    jmp         0053410B
 00534120    pop         ebx
 00534121    mov         esp,ebp
 00534123    pop         ebp
 00534124    ret
*}
end;

//00534128
procedure sub_00534128(?:Integer);
begin
{*
 00534128    push        ebx
 00534129    push        esi
 0053412A    mov         esi,edx
 0053412C    mov         ebx,eax
 0053412E    test        byte ptr [ebx+1C],8;TCustomTabControl.FComponentState:TComponentState
>00534132    jne         00534149
 00534134    push        0
 00534136    push        esi
 00534137    push        130C
 0053413C    mov         eax,ebx
 0053413E    call        TWinControl.GetHandle
 00534143    push        eax
 00534144    call        user32.SendMessageW
 00534149    pop         esi
 0053414A    pop         ebx
 0053414B    ret
*}
end;

//0053414C
procedure TPageControl.SetTabPosition(Value:TTabPosition);
begin
{*
 0053414C    push        ebp
 0053414D    mov         ebp,esp
 0053414F    push        0
 00534151    push        ebx
 00534152    mov         ebx,eax
 00534154    xor         eax,eax
 00534156    push        ebp
 00534157    push        5341D7
 0053415C    push        dword ptr fs:[eax]
 0053415F    mov         dword ptr fs:[eax],esp
 00534162    cmp         dl,byte ptr [ebx+2AE];TPageControl.FTabPosition:TTabPosition
>00534168    je          005341C1
 0053416A    test        dl,dl
>0053416C    je          00534198
 0053416E    cmp         byte ptr [ebx+2AD],0;TPageControl.FStyle:TTabStyle
>00534175    je          00534198
 00534177    lea         edx,[ebp-4]
 0053417A    mov         eax,[007C42AC];^SResString208:TResStringRec
 0053417F    call        LoadResString
 00534184    mov         ecx,dword ptr [ebp-4]
 00534187    mov         dl,1
 00534189    mov         eax,[0046BE9C];EInvalidOperation
 0053418E    call        Exception.Create;EInvalidOperation.Create
 00534193    call        @RaiseExcept
 00534198    mov         byte ptr [ebx+2AE],dl;TPageControl.FTabPosition:TTabPosition
 0053419E    cmp         byte ptr [ebx+2A0],0;TPageControl.FMultiLine:Boolean
>005341A5    jne         005341BA
 005341A7    cmp         dl,2
>005341AA    je          005341B1
 005341AC    cmp         dl,3
>005341AF    jne         005341BA
 005341B1    mov         dl,1
 005341B3    mov         eax,ebx
 005341B5    call        00533EF8
 005341BA    mov         eax,ebx
 005341BC    call        TWinControl.RecreateWnd
 005341C1    xor         eax,eax
 005341C3    pop         edx
 005341C4    pop         ecx
 005341C5    pop         ecx
 005341C6    mov         dword ptr fs:[eax],edx
 005341C9    push        5341DE
 005341CE    lea         eax,[ebp-4]
 005341D1    call        @UStrClr
 005341D6    ret
>005341D7    jmp         @HandleFinally
>005341DC    jmp         005341CE
 005341DE    pop         ebx
 005341DF    pop         ecx
 005341E0    pop         ebp
 005341E1    ret
*}
end;

//005341E4
procedure TPageControl.SetTabWidth(Value:SmallInt);
begin
{*
 005341E4    push        ebp
 005341E5    mov         ebp,esp
 005341E7    add         esp,0FFFFFFF0
 005341EA    push        ebx
 005341EB    xor         ecx,ecx
 005341ED    mov         dword ptr [ebp-0C],ecx
 005341F0    mov         dword ptr [ebp-10],ecx
 005341F3    mov         ebx,eax
 005341F5    xor         eax,eax
 005341F7    push        ebp
 005341F8    push        53428F
 005341FD    push        dword ptr fs:[eax]
 00534200    mov         dword ptr fs:[eax],esp
 00534203    cmp         dx,word ptr [ebx+2B4];TPageControl.FTabSize:TSmallPoint
>0053420A    je          00534274
 0053420C    test        dx,dx
>0053420F    jge         0053424C
 00534211    lea         edx,[ebp-0C]
 00534214    mov         eax,dword ptr [ebx]
 00534216    call        TObject.ClassName
 0053421B    mov         eax,dword ptr [ebp-0C]
 0053421E    mov         dword ptr [ebp-8],eax
 00534221    mov         byte ptr [ebp-4],11
 00534225    lea         eax,[ebp-8]
 00534228    push        eax
 00534229    push        0
 0053422B    lea         edx,[ebp-10]
 0053422E    mov         eax,[007C45BC];^SResString237:TResStringRec
 00534233    call        LoadResString
 00534238    mov         ecx,dword ptr [ebp-10]
 0053423B    mov         dl,1
 0053423D    mov         eax,[0046BE9C];EInvalidOperation
 00534242    call        Exception.CreateFmt;EInvalidOperation.Create
 00534247    call        @RaiseExcept
 0053424C    movzx       eax,word ptr [ebx+2B4];TPageControl.FTabSize:TSmallPoint
 00534253    mov         word ptr [ebx+2B4],dx;TPageControl.FTabSize:TSmallPoint
 0053425A    test        ax,ax
>0053425D    je          00534264
 0053425F    test        dx,dx
>00534262    jne         0053426D
 00534264    mov         eax,ebx
 00534266    call        TWinControl.RecreateWnd
>0053426B    jmp         00534274
 0053426D    mov         eax,ebx
 0053426F    call        005342DC
 00534274    xor         eax,eax
 00534276    pop         edx
 00534277    pop         ecx
 00534278    pop         ecx
 00534279    mov         dword ptr fs:[eax],edx
 0053427C    push        534296
 00534281    lea         eax,[ebp-10]
 00534284    mov         edx,2
 00534289    call        @UStrArrayClr
 0053428E    ret
>0053428F    jmp         @HandleFinally
>00534294    jmp         00534281
 00534296    pop         ebx
 00534297    mov         esp,ebp
 00534299    pop         ebp
 0053429A    ret
*}
end;

//0053429C
procedure TCustomTabControl.TabsChanged;
begin
{*
 0053429C    push        ebx
 0053429D    mov         ebx,eax
 0053429F    cmp         byte ptr [ebx+2B8],0
>005342A6    jne         005342D9
 005342A8    mov         eax,ebx
 005342AA    call        TWinControl.HandleAllocated
 005342AF    test        al,al
>005342B1    je          005342D2
 005342B3    movzx       eax,word ptr [ebx+58]
 005342B7    movzx       edx,word ptr [ebx+5C]
 005342BB    shl         edx,10
 005342BE    or          eax,edx
 005342C0    push        eax
 005342C1    push        0
 005342C3    push        5
 005342C5    mov         eax,ebx
 005342C7    call        TWinControl.GetHandle
 005342CC    push        eax
 005342CD    call        user32.SendMessageW
 005342D2    mov         eax,ebx
 005342D4    call        TWinControl.Realign
 005342D9    pop         ebx
 005342DA    ret
*}
end;

//005342DC
procedure sub_005342DC(?:TCustomTabControl);
begin
{*
 005342DC    push        ebx
 005342DD    push        esi
 005342DE    mov         ebx,eax
 005342E0    lea         esi,[ebx+2B4];TCustomTabControl.FTabSize:TSmallPoint
 005342E6    mov         eax,ebx
 005342E8    call        TWinControl.GetHandle
 005342ED    movzx       edx,word ptr [esi]
 005342F0    movzx       esi,word ptr [esi+2]
 005342F4    movzx       edx,dx
 005342F7    movzx       ecx,si
 005342FA    shl         ecx,10
 005342FD    or          edx,ecx
 005342FF    push        edx
 00534300    push        0
 00534302    push        1329
 00534307    push        eax
 00534308    call        user32.SendMessageW
 0053430D    mov         eax,ebx
 0053430F    call        TCustomTabControl.TabsChanged
 00534314    pop         esi
 00534315    pop         ebx
 00534316    ret
*}
end;

//00534318
procedure sub_00534318(?:TCustomTabControl);
begin
{*
 00534318    push        ebp
 00534319    mov         ebp,esp
 0053431B    add         esp,0FFFFFFC4
 0053431E    push        ebx
 0053431F    push        esi
 00534320    push        edi
 00534321    xor         edx,edx
 00534323    mov         dword ptr [ebp-24],edx
 00534326    mov         dword ptr [ebp-38],edx
 00534329    mov         dword ptr [ebp-3C],edx
 0053432C    mov         esi,eax
 0053432E    xor         eax,eax
 00534330    push        ebp
 00534331    push        534403
 00534336    push        dword ptr fs:[eax]
 00534339    mov         dword ptr fs:[eax],esp
 0053433C    mov         dword ptr [ebp-20],2
 00534343    mov         eax,dword ptr [esi+2B0];TCustomTabControl.FTabs:TStrings
 00534349    mov         edx,dword ptr [eax]
 0053434B    call        dword ptr [edx+14];TStrings.GetCount
 0053434E    dec         eax
 0053434F    test        eax,eax
>00534351    jl          005343D9
 00534357    inc         eax
 00534358    mov         dword ptr [ebp-4],eax
 0053435B    xor         ebx,ebx
 0053435D    mov         edx,ebx
 0053435F    mov         eax,esi
 00534361    mov         ecx,dword ptr [eax]
 00534363    call        dword ptr [ecx+110];TCustomTabControl.sub_00533DB4
 00534369    mov         dword ptr [ebp-0C],eax
 0053436C    lea         eax,[ebp-20]
 0053436F    push        eax
 00534370    mov         eax,esi
 00534372    call        TWinControl.GetHandle
 00534377    mov         ecx,ebx
 00534379    mov         edx,133D
 0053437E    call        SendStructMessage
 00534383    test        eax,eax
>00534385    jne         005343D3
 00534387    lea         eax,[ebp-24]
 0053438A    push        eax
 0053438B    lea         ecx,[ebp-38]
 0053438E    mov         edx,ebx
 00534390    mov         eax,dword ptr [esi+2B0];TCustomTabControl.FTabs:TStrings
 00534396    mov         edi,dword ptr [eax]
 00534398    call        dword ptr [edi+0C];TStrings.Get
 0053439B    mov         eax,dword ptr [ebp-38]
 0053439E    mov         dword ptr [ebp-34],eax
 005343A1    mov         byte ptr [ebp-30],11
 005343A5    mov         dword ptr [ebp-2C],ebx
 005343A8    mov         byte ptr [ebp-28],0
 005343AC    lea         eax,[ebp-34]
 005343AF    push        eax
 005343B0    lea         edx,[ebp-3C]
 005343B3    mov         eax,[007C4C1C];^SResString354:TResStringRec
 005343B8    call        LoadResString
 005343BD    mov         eax,dword ptr [ebp-3C]
 005343C0    mov         ecx,1
 005343C5    pop         edx
 005343C6    call        Format
 005343CB    mov         eax,dword ptr [ebp-24]
 005343CE    call        TabControlError
 005343D3    inc         ebx
 005343D4    dec         dword ptr [ebp-4]
>005343D7    jne         0053435D
 005343D9    mov         eax,esi
 005343DB    call        TCustomTabControl.TabsChanged
 005343E0    xor         eax,eax
 005343E2    pop         edx
 005343E3    pop         ecx
 005343E4    pop         ecx
 005343E5    mov         dword ptr fs:[eax],edx
 005343E8    push        53440A
 005343ED    lea         eax,[ebp-3C]
 005343F0    mov         edx,2
 005343F5    call        @UStrArrayClr
 005343FA    lea         eax,[ebp-24]
 005343FD    call        @UStrClr
 00534402    ret
>00534403    jmp         @HandleFinally
>00534408    jmp         005343ED
 0053440A    pop         edi
 0053440B    pop         esi
 0053440C    pop         ebx
 0053440D    mov         esp,ebp
 0053440F    pop         ebp
 00534410    ret
*}
end;

//00534414
{*procedure TCustomTabControl.sub_00534414(?:?);
begin
 00534414    push        ebp
 00534415    mov         ebp,esp
 00534417    add         esp,0FFFFFFF0
 0053441A    push        ebx
 0053441B    mov         dword ptr [ebp-8],edx
 0053441E    mov         dword ptr [ebp-4],eax
 00534421    mov         eax,dword ptr [ebp-8]
 00534424    mov         eax,dword ptr [eax+8]
 00534427    mov         dword ptr [ebp-10],eax
 0053442A    mov         eax,dword ptr [ebp-10]
 0053442D    mov         eax,dword ptr [eax+18]
 00534430    push        eax
 00534431    call        gdi32.SaveDC
 00534436    mov         dword ptr [ebp-0C],eax
 00534439    mov         eax,dword ptr [ebp-4]
 0053443C    mov         eax,dword ptr [eax+290];TCustomTabControl.FCanvas:TCanvas
 00534442    call        TCustomCanvas.Lock
 00534447    xor         eax,eax
 00534449    push        ebp
 0053444A    push        5344F2
 0053444F    push        dword ptr fs:[eax]
 00534452    mov         dword ptr fs:[eax],esp
 00534455    mov         eax,dword ptr [ebp-10]
 00534458    mov         edx,dword ptr [eax+18]
 0053445B    mov         eax,dword ptr [ebp-4]
 0053445E    mov         eax,dword ptr [eax+290];TCustomTabControl.FCanvas:TCanvas
 00534464    call        TCanvas.SetHandle
 00534469    mov         eax,dword ptr [ebp-4]
 0053446C    mov         edx,dword ptr [eax+74];TCustomTabControl.FFont:TFont
 0053446F    mov         eax,dword ptr [ebp-4]
 00534472    mov         eax,dword ptr [eax+290];TCustomTabControl.FCanvas:TCanvas
 00534478    call        TCanvas.SetFont
 0053447D    mov         eax,dword ptr [ebp-4]
 00534480    mov         edx,dword ptr [eax+1D0];TCustomTabControl.FBrush:TBrush
 00534486    mov         eax,dword ptr [ebp-4]
 00534489    mov         eax,dword ptr [eax+290];TCustomTabControl.FCanvas:TCanvas
 0053448F    call        TCanvas.SetBrush
 00534494    mov         eax,dword ptr [ebp-10]
 00534497    test        byte ptr [eax+10],1
 0053449B    setne       al
 0053449E    push        eax
 0053449F    mov         eax,dword ptr [ebp-10]
 005344A2    lea         ecx,[eax+1C]
 005344A5    mov         eax,dword ptr [ebp-10]
 005344A8    mov         edx,dword ptr [eax+8]
 005344AB    mov         eax,dword ptr [ebp-4]
 005344AE    mov         ebx,dword ptr [eax]
 005344B0    call        dword ptr [ebx+10C];TCustomTabControl.sub_00533D40
 005344B6    xor         eax,eax
 005344B8    pop         edx
 005344B9    pop         ecx
 005344BA    pop         ecx
 005344BB    mov         dword ptr fs:[eax],edx
 005344BE    push        5344F9
 005344C3    mov         eax,dword ptr [ebp-4]
 005344C6    mov         eax,dword ptr [eax+290];TCustomTabControl.FCanvas:TCanvas
 005344CC    xor         edx,edx
 005344CE    call        TCanvas.SetHandle
 005344D3    mov         eax,dword ptr [ebp-4]
 005344D6    mov         eax,dword ptr [eax+290];TCustomTabControl.FCanvas:TCanvas
 005344DC    call        TCustomCanvas.Unlock
 005344E1    mov         eax,dword ptr [ebp-0C]
 005344E4    push        eax
 005344E5    mov         eax,dword ptr [ebp-10]
 005344E8    mov         eax,dword ptr [eax+18]
 005344EB    push        eax
 005344EC    call        gdi32.RestoreDC
 005344F1    ret
>005344F2    jmp         @HandleFinally
>005344F7    jmp         005344C3
 005344F9    mov         eax,dword ptr [ebp-8]
 005344FC    mov         dword ptr [eax+0C],1
 00534503    pop         ebx
 00534504    mov         esp,ebp
 00534506    pop         ebp
 00534507    ret
end;*}

//00534508
{*procedure TCustomTabControl.WMDestroy(?:?);
begin
 00534508    push        ebx
 00534509    push        esi
 0053450A    push        edi
 0053450B    mov         edi,edx
 0053450D    mov         ebx,eax
 0053450F    mov         esi,dword ptr [ebx+2B0];TCustomTabControl.FTabs:TStrings
 00534515    test        esi,esi
>00534517    je          00534552
 00534519    mov         eax,esi
 0053451B    mov         edx,dword ptr [eax]
 0053451D    call        dword ptr [edx+14];TStrings.GetCount
 00534520    test        eax,eax
>00534522    jle         00534552
 00534524    mov         dl,1
 00534526    mov         eax,[0046F9A0];TStringList
 0053452B    call        TStringList.Create;TStringList.Create
 00534530    mov         esi,eax
 00534532    mov         dword ptr [ebx+2A8],esi;TCustomTabControl.FSaveTabs:TStringList
 00534538    mov         edx,dword ptr [ebx+2B0];TCustomTabControl.FTabs:TStrings
 0053453E    mov         eax,esi
 00534540    mov         ecx,dword ptr [eax]
 00534542    call        dword ptr [ecx+8];TStringList.Assign
 00534545    mov         eax,ebx
 00534547    call        TPageControl.GetTabIndex
 0053454C    mov         dword ptr [ebx+2A4],eax;TCustomTabControl.FSaveTabIndex:Integer
 00534552    call        user32.GetFocus
 00534557    mov         esi,eax
 00534559    test        esi,esi
>0053455B    je          00534581
 0053455D    mov         eax,ebx
 0053455F    call        TWinControl.GetHandle
 00534564    cmp         esi,eax
>00534566    je          0053457A
 00534568    push        esi
 00534569    mov         eax,ebx
 0053456B    call        TWinControl.GetHandle
 00534570    push        eax
 00534571    call        user32.IsChild
 00534576    test        eax,eax
>00534578    je          00534581
 0053457A    push        0
 0053457C    call        user32.SetFocus
 00534581    mov         edx,edi
 00534583    mov         eax,ebx
 00534585    call        TWinControl.WMDestroy
 0053458A    xor         eax,eax
 0053458C    mov         dword ptr [ebx+278],eax;TCustomTabControl.FHandle:HWND
 00534592    pop         edi
 00534593    pop         esi
 00534594    pop         ebx
 00534595    ret
end;*}

//00534598
{*procedure TCustomTabControl.WMNotifyFormat(?:?);
begin
 00534598    push        ebx
 00534599    push        esi
 0053459A    mov         ebx,edx
 0053459C    mov         esi,eax
 0053459E    mov         eax,dword ptr [ebx+8]
 005345A1    push        eax
 005345A2    mov         eax,dword ptr [ebx+4]
 005345A5    push        eax
 005345A6    mov         eax,dword ptr [ebx]
 005345A8    push        eax
 005345A9    mov         eax,esi
 005345AB    call        TWinControl.GetHandle
 005345B0    push        eax
 005345B1    call        user32.DefWindowProcW
 005345B6    mov         dword ptr [ebx+0C],eax
 005345B9    pop         esi
 005345BA    pop         ebx
 005345BB    ret
end;*}

//005345BC
{*procedure TCustomTabControl.WMSize(?:?);
begin
 005345BC    push        ebx
 005345BD    mov         ebx,eax
 005345BF    mov         eax,ebx
 005345C1    call        TWinControl.WMSize
 005345C6    push        5
 005345C8    push        0
 005345CA    push        0
 005345CC    mov         eax,ebx
 005345CE    call        TWinControl.GetHandle
 005345D3    push        eax
 005345D4    call        user32.RedrawWindow
 005345D9    pop         ebx
 005345DA    ret
end;*}

//005345DC
procedure TCustomTabControl.CMFontChanged;
begin
{*
 005345DC    push        ebx
 005345DD    mov         ebx,eax
 005345DF    mov         eax,ebx
 005345E1    call        TWinControl.CMFontChanged
 005345E6    mov         eax,ebx
 005345E8    call        TWinControl.HandleAllocated
 005345ED    test        al,al
>005345EF    je          00534601
 005345F1    push        0
 005345F3    xor         ecx,ecx
 005345F5    mov         edx,5
 005345FA    mov         eax,ebx
 005345FC    call        TControl.Perform
 00534601    pop         ebx
 00534602    ret
*}
end;

//00534604
{*procedure TCustomTabControl.CMSysColorChange(?:?);
begin
 00534604    push        ebx
 00534605    push        esi
 00534606    mov         esi,edx
 00534608    mov         ebx,eax
 0053460A    mov         edx,esi
 0053460C    mov         eax,ebx
 0053460E    call        TWinControl.CMSysColorChange
 00534613    test        byte ptr [ebx+1C],1;TCustomTabControl.FComponentState:TComponentState
>00534617    jne         00534628
 00534619    mov         dword ptr [esi],15
 0053461F    mov         edx,esi
 00534621    mov         eax,ebx
 00534623    mov         ecx,dword ptr [eax]
 00534625    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 00534628    pop         esi
 00534629    pop         ebx
 0053462A    ret
end;*}

//0053462C
procedure TCustomTabControl.CMTabStopChanged;
begin
{*
 0053462C    test        byte ptr [eax+1C],10;TCustomTabControl.FComponentState:TComponentState
>00534630    jne         00534637
 00534632    call        TWinControl.RecreateWnd
 00534637    ret
*}
end;

//00534638
{*procedure TCustomTabControl.sub_00534638(?:?);
begin
 00534638    push        ebx
 00534639    push        esi
 0053463A    push        edi
 0053463B    mov         edi,edx
 0053463D    mov         ebx,eax
 0053463F    mov         eax,dword ptr [edi+8]
 00534642    mov         eax,dword ptr [eax+8]
 00534645    sub         eax,0FFFFFDD8
>0053464A    je          0053465C
 0053464C    dec         eax
>0053464D    jne         00534677
 0053464F    mov         eax,ebx
 00534651    mov         si,0FFAC
 00534655    call        @CallDynaInst;TCustomTabControl.sub_00533B2C
>0053465A    jmp         00534677
 0053465C    mov         dword ptr [edi+0C],1
 00534663    mov         eax,ebx
 00534665    mov         si,0FFAD
 00534669    call        @CallDynaInst;TCustomTabControl.sub_00533AFC
 0053466E    test        al,al
>00534670    je          00534677
 00534672    xor         eax,eax
 00534674    mov         dword ptr [edi+0C],eax
 00534677    pop         edi
 00534678    pop         esi
 00534679    pop         ebx
 0053467A    ret
end;*}

//0053467C
{*procedure TCustomTabControl.CMDialogChar(?:?);
begin
 0053467C    push        ebp
 0053467D    mov         ebp,esp
 0053467F    add         esp,0FFFFFFF4
 00534682    push        ebx
 00534683    push        esi
 00534684    push        edi
 00534685    xor         ecx,ecx
 00534687    mov         dword ptr [ebp-0C],ecx
 0053468A    mov         dword ptr [ebp-4],edx
 0053468D    mov         edi,eax
 0053468F    xor         eax,eax
 00534691    push        ebp
 00534692    push        534758
 00534697    push        dword ptr fs:[eax]
 0053469A    mov         dword ptr fs:[eax],esp
 0053469D    mov         eax,dword ptr [edi+2B0];TCustomTabControl.FTabs:TStrings
 005346A3    mov         edx,dword ptr [eax]
 005346A5    call        dword ptr [edx+14];TStrings.GetCount
 005346A8    mov         ebx,eax
 005346AA    dec         ebx
 005346AB    test        ebx,ebx
>005346AD    jl          00534738
 005346B3    inc         ebx
 005346B4    mov         dword ptr [ebp-8],0
 005346BB    lea         ecx,[ebp-0C]
 005346BE    mov         edx,dword ptr [ebp-8]
 005346C1    mov         eax,dword ptr [edi+2B0];TCustomTabControl.FTabs:TStrings
 005346C7    mov         esi,dword ptr [eax]
 005346C9    call        dword ptr [esi+0C];TStrings.Get
 005346CC    mov         edx,dword ptr [ebp-0C]
 005346CF    mov         eax,dword ptr [ebp-4]
 005346D2    movzx       eax,word ptr [eax+4]
 005346D6    call        IsAccel
 005346DB    test        al,al
>005346DD    je          00534732
 005346DF    mov         edx,dword ptr [ebp-8]
 005346E2    mov         eax,edi
 005346E4    mov         ecx,dword ptr [eax]
 005346E6    call        dword ptr [ecx+108];TCustomTabControl.sub_00533B28
 005346EC    test        al,al
>005346EE    je          00534732
 005346F0    mov         eax,edi
 005346F2    mov         si,0FFB4
 005346F6    call        @CallDynaInst;TWinControl.sub_004EFD3C
 005346FB    test        al,al
>005346FD    je          00534732
 005346FF    mov         eax,dword ptr [ebp-4]
 00534702    mov         dword ptr [eax+0C],1
 00534709    mov         eax,edi
 0053470B    mov         si,0FFAD
 0053470F    call        @CallDynaInst;TCustomTabControl.sub_00533AFC
 00534714    test        al,al
>00534716    je          00534742
 00534718    mov         edx,dword ptr [ebp-8]
 0053471B    mov         eax,edi
 0053471D    mov         ecx,dword ptr [eax]
 0053471F    call        dword ptr [ecx+114];TCustomTabControl.sub_00534128
 00534725    mov         eax,edi
 00534727    mov         si,0FFAC
 0053472B    call        @CallDynaInst;TCustomTabControl.sub_00533B2C
>00534730    jmp         00534742
 00534732    inc         dword ptr [ebp-8]
 00534735    dec         ebx
>00534736    jne         005346BB
 00534738    mov         edx,dword ptr [ebp-4]
 0053473B    mov         eax,edi
 0053473D    call        TWinControl.CMDialogChar
 00534742    xor         eax,eax
 00534744    pop         edx
 00534745    pop         ecx
 00534746    pop         ecx
 00534747    mov         dword ptr fs:[eax],edx
 0053474A    push        53475F
 0053474F    lea         eax,[ebp-0C]
 00534752    call        @UStrClr
 00534757    ret
>00534758    jmp         @HandleFinally
>0053475D    jmp         0053474F
 0053475F    pop         edi
 00534760    pop         esi
 00534761    pop         ebx
 00534762    mov         esp,ebp
 00534764    pop         ebp
 00534765    ret
end;*}

//00534768
{*procedure sub_00534768(?:?);
begin
 00534768    push        ebx
 00534769    push        esi
 0053476A    push        edi
 0053476B    add         esp,0FFFFFFF0
 0053476E    mov         esi,edx
 00534770    mov         ebx,eax
 00534772    mov         edx,esp
 00534774    mov         eax,ebx
 00534776    call        00533D7C
 0053477B    push        esi
 0053477C    mov         edi,esi
 0053477E    lea         esi,[esp+4]
 00534782    movs        dword ptr [edi],dword ptr [esi]
 00534783    movs        dword ptr [edi],dword ptr [esi]
 00534784    movs        dword ptr [edi],dword ptr [esi]
 00534785    movs        dword ptr [edi],dword ptr [esi]
 00534786    pop         esi
 00534787    mov         edx,esi
 00534789    mov         eax,ebx
 0053478B    call        004EA530
 00534790    add         esp,10
 00534793    pop         edi
 00534794    pop         esi
 00534795    pop         ebx
 00534796    ret
end;*}

//00534798
function TCustomTabControl.IndexOfTabAt(X:Integer; Y:Integer):Integer;
begin
{*
 00534798    push        ebx
 00534799    push        esi
 0053479A    push        edi
 0053479B    push        ebp
 0053479C    add         esp,0FFFFFFDC
 0053479F    mov         edi,ecx
 005347A1    mov         esi,edx
 005347A3    mov         ebx,eax
 005347A5    or          ebp,0FFFFFFFF
 005347A8    mov         dword ptr [esp],esi
 005347AB    mov         dword ptr [esp+4],edi
 005347AF    lea         edx,[esp+14]
 005347B3    mov         eax,ebx
 005347B5    mov         ecx,dword ptr [eax]
 005347B7    call        dword ptr [ecx+64];TWinControl.GetClientRect
 005347BA    lea         eax,[esp+14]
 005347BE    mov         edx,esp
 005347C0    call        TRect.Contains
 005347C5    test        al,al
>005347C7    je          005347EC
 005347C9    mov         dword ptr [esp+8],esi
 005347CD    mov         dword ptr [esp+0C],edi
 005347D1    mov         eax,ebx
 005347D3    call        TWinControl.GetHandle
 005347D8    lea         edx,[esp+8]
 005347DC    push        edx
 005347DD    push        0
 005347DF    push        130D
 005347E4    push        eax
 005347E5    call        user32.SendMessageW
 005347EA    mov         ebp,eax
 005347EC    mov         eax,ebp
 005347EE    add         esp,24
 005347F1    pop         ebp
 005347F2    pop         edi
 005347F3    pop         esi
 005347F4    pop         ebx
 005347F5    ret
*}
end;

//005347F8
{*procedure TCustomTabControl.TabRect(Index:Integer; ?:?);
begin
 005347F8    push        ebx
 005347F9    push        esi
 005347FA    push        ecx
 005347FB    mov         dword ptr [esp],ecx
 005347FE    mov         esi,edx
 00534800    call        TWinControl.GetHandle
 00534805    mov         ebx,eax
 00534807    mov         eax,dword ptr [esp]
 0053480A    push        eax
 0053480B    push        esi
 0053480C    push        130A
 00534811    push        ebx
 00534812    call        user32.SendMessageW
 00534817    pop         edx
 00534818    pop         esi
 00534819    pop         ebx
 0053481A    ret
end;*}

//0053481C
{*procedure TCustomTabControl.sub_0053481C(?:?);
begin
 0053481C    push        ebp
 0053481D    mov         ebp,esp
 0053481F    add         esp,0FFFFFFF8
 00534822    push        ebx
 00534823    push        esi
 00534824    push        edi
 00534825    mov         dword ptr [ebp-8],edx
 00534828    mov         dword ptr [ebp-4],eax
 0053482B    xor         eax,eax
 0053482D    push        ebp
 0053482E    push        534878
 00534833    push        dword ptr fs:[eax]
 00534836    mov         dword ptr fs:[eax],esp
 00534839    mov         edx,dword ptr [ebp-8]
 0053483C    mov         eax,dword ptr [ebp-4]
 0053483F    mov         ecx,dword ptr [eax]
 00534841    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 00534844    mov         eax,dword ptr [ebp-4]
 00534847    cmp         byte ptr [eax+2AE],0;TCustomTabControl.FTabPosition:TTabPosition
>0053484E    je          0053486E
 00534850    mov         eax,dword ptr [ebp-8]
 00534853    cmp         dword ptr [eax+4],0
>00534857    jne         0053486E
 00534859    mov         eax,dword ptr [ebp-8]
 0053485C    mov         eax,dword ptr [eax+8]
 0053485F    mov         edx,dword ptr [ebp-4]
 00534862    mov         esi,eax
 00534864    lea         edi,[edx+2BC];TCustomTabControl.FSavedAdjustRect:TRect
 0053486A    movs        dword ptr [edi],dword ptr [esi]
 0053486B    movs        dword ptr [edi],dword ptr [esi]
 0053486C    movs        dword ptr [edi],dword ptr [esi]
 0053486D    movs        dword ptr [edi],dword ptr [esi]
 0053486E    xor         eax,eax
 00534870    pop         edx
 00534871    pop         ecx
 00534872    pop         ecx
 00534873    mov         dword ptr fs:[eax],edx
>00534876    jmp         00534897
>00534878    jmp         @HandleAnyException
 0053487D    mov         eax,dword ptr [ebp-4]
 00534880    mov         edx,dword ptr [ebp-8]
 00534883    mov         edx,dword ptr [edx+8]
 00534886    lea         esi,[eax+2BC];TCustomTabControl.FSavedAdjustRect:TRect
 0053488C    mov         edi,edx
 0053488E    movs        dword ptr [edi],dword ptr [esi]
 0053488F    movs        dword ptr [edi],dword ptr [esi]
 00534890    movs        dword ptr [edi],dword ptr [esi]
 00534891    movs        dword ptr [edi],dword ptr [esi]
 00534892    call        @DoneExcept
 00534897    pop         edi
 00534898    pop         esi
 00534899    pop         ebx
 0053489A    pop         ecx
 0053489B    pop         ecx
 0053489C    pop         ebp
 0053489D    ret
end;*}

//005348A0
{*function sub_005348A0(?:TPageControl):?;
begin
 005348A0    mov         edx,dword ptr [eax+2A8]
 005348A6    test        edx,edx
>005348A8    je          005348AD
 005348AA    mov         eax,edx
 005348AC    ret
 005348AD    mov         eax,dword ptr [eax+2B0]
 005348B3    ret
end;*}

//005348B4
constructor TTabSheet.Create(AOwner:TComponent);
begin
{*
 005348B4    push        ebx
 005348B5    push        esi
 005348B6    test        dl,dl
>005348B8    je          005348C2
 005348BA    add         esp,0FFFFFFF0
 005348BD    call        @ClassCreate
 005348C2    mov         ebx,edx
 005348C4    mov         esi,eax
 005348C6    xor         edx,edx
 005348C8    mov         eax,esi
 005348CA    call        TWinControl.Create
 005348CF    mov         dl,5
 005348D1    mov         eax,esi
 005348D3    call        TGroupBox.SetAlign
 005348D8    mov         eax,[00534914];0xC0401 gvar_00534914
 005348DD    or          dword ptr [esi+60],eax;TTabSheet.FControlStyle:TControlStyle
 005348E0    xor         edx,edx
 005348E2    mov         eax,esi
 005348E4    call        TControl.SetVisible
 005348E9    mov         byte ptr [esi+298],1;TTabSheet.FTabVisible:Boolean
 005348F0    mov         byte ptr [esi+29A],0;TTabSheet.FHighlighted:Boolean
 005348F7    mov         eax,esi
 005348F9    test        bl,bl
>005348FB    je          0053490C
 005348FD    call        @AfterConstruction
 00534902    pop         dword ptr fs:[0]
 00534909    add         esp,0C
 0053490C    mov         eax,esi
 0053490E    pop         esi
 0053490F    pop         ebx
 00534910    ret
*}
end;

//00534918
destructor TTabSheet.Destroy();
begin
{*
 00534918    push        ebx
 00534919    push        esi
 0053491A    call        @BeforeDestruction
 0053491F    mov         ebx,edx
 00534921    mov         esi,eax
 00534923    mov         eax,dword ptr [esi+294];TTabSheet.FPageControl:TPageControl
 00534929    test        eax,eax
>0053492B    je          0053494A
 0053492D    cmp         esi,dword ptr [eax+2FC];TPageControl.FUndockingPage:TTabSheet
>00534933    jne         0053493D
 00534935    xor         edx,edx
 00534937    mov         dword ptr [eax+2FC],edx;TPageControl.FUndockingPage:TTabSheet
 0053493D    mov         eax,dword ptr [esi+294];TTabSheet.FPageControl:TPageControl
 00534943    mov         edx,esi
 00534945    call        005355A0
 0053494A    mov         dl,0FC
 0053494C    and         dl,bl
 0053494E    mov         eax,esi
 00534950    call        TWinControl.Destroy
 00534955    test        bl,bl
>00534957    jle         00534960
 00534959    mov         eax,esi
 0053495B    call        @ClassDestroy
 00534960    pop         esi
 00534961    pop         ebx
 00534962    ret
*}
end;

//00534964
procedure sub_00534964;
begin
{*
 00534964    ret
*}
end;

//00534968
procedure TTabSheet.sub_00534968;
begin
{*
 00534968    push        ebx
 00534969    cmp         word ptr [eax+2A2],0;TTabSheet.?f2A2:word
>00534971    je          00534983
 00534973    mov         ebx,eax
 00534975    mov         edx,eax
 00534977    mov         eax,dword ptr [ebx+2A4];TTabSheet.?f2A4:dword
 0053497D    call        dword ptr [ebx+2A0];TTabSheet.FOnHide
 00534983    pop         ebx
 00534984    ret
*}
end;

//00534988
procedure TTabSheet.sub_00534988;
begin
{*
 00534988    push        ebx
 00534989    cmp         word ptr [eax+2AA],0;TTabSheet.?f2AA:word
>00534991    je          005349A3
 00534993    mov         ebx,eax
 00534995    mov         edx,eax
 00534997    mov         eax,dword ptr [ebx+2AC];TTabSheet.?f2AC:dword
 0053499D    call        dword ptr [ebx+2A8];TTabSheet.FOnShow
 005349A3    pop         ebx
 005349A4    ret
*}
end;

//005349A8
{*function TTabSheet.GetPageIndex:?;
begin
 005349A8    mov         edx,dword ptr [eax+294];TTabSheet.FPageControl:TPageControl
 005349AE    test        edx,edx
>005349B0    je          005349BF
 005349B2    mov         edx,dword ptr [edx+2F0];TPageControl.FPages:TList
 005349B8    xchg        eax,edx
 005349B9    call        TList.IndexOf
 005349BE    ret
 005349BF    or          eax,0FFFFFFFF
 005349C2    ret
end;*}

//005349C4
{*function sub_005349C4(?:TTabSheet):?;
begin
 005349C4    push        ebx
 005349C5    push        esi
 005349C6    push        edi
 005349C7    push        ebp
 005349C8    mov         esi,eax
 005349CA    xor         ebp,ebp
 005349CC    cmp         byte ptr [esi+299],0
>005349D3    jne         005349D8
 005349D5    dec         ebp
>005349D6    jmp         00534A0A
 005349D8    mov         eax,esi
 005349DA    call        TTabSheet.GetPageIndex
 005349DF    mov         ebx,eax
 005349E1    dec         ebx
 005349E2    test        ebx,ebx
>005349E4    jl          00534A0A
 005349E6    inc         ebx
 005349E7    xor         edi,edi
 005349E9    mov         eax,dword ptr [esi+294]
 005349EF    mov         eax,dword ptr [eax+2F0]
 005349F5    mov         edx,edi
 005349F7    call        TList.Get
 005349FC    cmp         byte ptr [eax+299],0
>00534A03    je          00534A06
 00534A05    inc         ebp
 00534A06    inc         edi
 00534A07    dec         ebx
>00534A08    jne         005349E9
 00534A0A    mov         eax,ebp
 00534A0C    pop         ebp
 00534A0D    pop         edi
 00534A0E    pop         esi
 00534A0F    pop         ebx
 00534A10    ret
end;*}

//00534A14
procedure TTabSheet.CreateParams(var Params:TCreateParams);
begin
{*
 00534A14    push        ebx
 00534A15    mov         ebx,edx
 00534A17    mov         edx,ebx
 00534A19    call        TWinControl.CreateParams
 00534A1E    and         dword ptr [ebx+24],0FFFFFFFC;TCreateParams.WindowClass:TWndClass
 00534A22    pop         ebx
 00534A23    ret
*}
end;

//00534A24
procedure TTabSheet.ReadState(Reader:TReader);
begin
{*
 00534A24    push        ebx
 00534A25    push        esi
 00534A26    push        edi
 00534A27    mov         esi,edx
 00534A29    mov         ebx,eax
 00534A2B    mov         edx,esi
 00534A2D    mov         eax,ebx
 00534A2F    call        TWinControl.ReadState
 00534A34    mov         edi,dword ptr [esi+2C];TReader.FParent:TComponent
 00534A37    mov         eax,edi
 00534A39    mov         edx,dword ptr ds:[51F3D4];TPageControl
 00534A3F    call        @IsClass
 00534A44    test        al,al
>00534A46    je          00534A51
 00534A48    mov         edx,edi
 00534A4A    mov         eax,ebx
 00534A4C    call        00534A80
 00534A51    pop         edi
 00534A52    pop         esi
 00534A53    pop         ebx
 00534A54    ret
*}
end;

//00534A58
procedure TTabSheet.SetImageIndex(Value:TImageIndex);
begin
{*
 00534A58    cmp         edx,dword ptr [eax+290];TTabSheet.FImageIndex:TImageIndex
>00534A5E    je          00534A7C
 00534A60    mov         dword ptr [eax+290],edx;TTabSheet.FImageIndex:TImageIndex
 00534A66    cmp         byte ptr [eax+299],0;TTabSheet.FTabShowing:Boolean
>00534A6D    je          00534A7C
 00534A6F    mov         edx,eax
 00534A71    mov         eax,dword ptr [eax+294];TTabSheet.FPageControl:TPageControl
 00534A77    call        00535714
 00534A7C    ret
*}
end;

//00534A80
procedure sub_00534A80(?:TTabSheet; ?:TComponent);
begin
{*
 00534A80    push        ebx
 00534A81    push        esi
 00534A82    mov         esi,edx
 00534A84    mov         ebx,eax
 00534A86    mov         eax,dword ptr [ebx+294];TTabSheet.FPageControl:TPageControl
 00534A8C    cmp         esi,eax
>00534A8E    je          00534AB4
 00534A90    test        eax,eax
>00534A92    je          00534A9B
 00534A94    mov         edx,ebx
 00534A96    call        005355A0
 00534A9B    mov         edx,esi
 00534A9D    mov         eax,ebx
 00534A9F    mov         ecx,dword ptr [eax]
 00534AA1    call        dword ptr [ecx+8C];TTabSheet.sub_004F22F8
 00534AA7    test        esi,esi
>00534AA9    je          00534AB4
 00534AAB    mov         edx,ebx
 00534AAD    mov         eax,esi
 00534AAF    call        005354F0
 00534AB4    pop         esi
 00534AB5    pop         ebx
 00534AB6    ret
*}
end;

//00534AB8
procedure TTabSheet.SetPageIndex(Value:Integer);
begin
{*
 00534AB8    push        ebx
 00534AB9    push        esi
 00534ABA    push        edi
 00534ABB    add         esp,0FFFFFFF0
 00534ABE    mov         esi,edx
 00534AC0    mov         ebx,eax
 00534AC2    mov         eax,dword ptr [ebx+294];TTabSheet.FPageControl:TPageControl
 00534AC8    test        eax,eax
>00534ACA    je          00534B44
 00534ACC    mov         eax,dword ptr [eax+2F0];TPageControl.FPages:TList
 00534AD2    mov         edi,dword ptr [eax+8];TList.FCount:Integer
 00534AD5    dec         edi
 00534AD6    cmp         edi,esi
>00534AD8    jge         00534B05
 00534ADA    mov         dword ptr [esp],esi
 00534ADD    mov         byte ptr [esp+4],0
 00534AE2    mov         dword ptr [esp+8],edi
 00534AE6    mov         byte ptr [esp+0C],0
 00534AEB    push        esp
 00534AEC    push        1
 00534AEE    mov         ecx,dword ptr ds:[7C43C0];^SResString364:TResStringRec
 00534AF4    mov         dl,1
 00534AF6    mov         eax,[004180BC];EListError
 00534AFB    call        Exception.CreateResFmt;EListError.Create
 00534B00    call        @RaiseExcept
 00534B05    mov         eax,ebx
 00534B07    call        005349C4
 00534B0C    mov         edi,eax
 00534B0E    mov         eax,ebx
 00534B10    call        TTabSheet.GetPageIndex
 00534B15    mov         edx,eax
 00534B17    mov         eax,dword ptr [ebx+294];TTabSheet.FPageControl:TPageControl
 00534B1D    mov         eax,dword ptr [eax+2F0];TPageControl.FPages:TList
 00534B23    mov         ecx,esi
 00534B25    call        TList.Move
 00534B2A    test        edi,edi
>00534B2C    jl          00534B44
 00534B2E    mov         eax,ebx
 00534B30    call        005349C4
 00534B35    mov         ecx,eax
 00534B37    mov         edx,edi
 00534B39    mov         eax,dword ptr [ebx+294];TTabSheet.FPageControl:TPageControl
 00534B3F    call        00535580
 00534B44    add         esp,10
 00534B47    pop         edi
 00534B48    pop         esi
 00534B49    pop         ebx
 00534B4A    ret
*}
end;

//00534B4C
{*procedure sub_00534B4C(?:TTabSheet; ?:?);
begin
 00534B4C    push        ebx
 00534B4D    mov         ebx,eax
 00534B4F    cmp         dl,byte ptr [ebx+299]
>00534B55    je          00534B8E
 00534B57    test        dl,dl
>00534B59    je          00534B71
 00534B5B    mov         byte ptr [ebx+299],1
 00534B62    mov         edx,ebx
 00534B64    mov         eax,dword ptr [ebx+294]
 00534B6A    call        00535514
>00534B6F    jmp         00534B8E
 00534B71    mov         eax,ebx
 00534B73    call        005349C4
 00534B78    mov         byte ptr [ebx+299],0
 00534B7F    mov         ecx,eax
 00534B81    mov         edx,ebx
 00534B83    mov         eax,dword ptr [ebx+294]
 00534B89    call        005351F8
 00534B8E    pop         ebx
 00534B8F    ret
end;*}

//00534B90
procedure TTabSheet.SetTabVisible(Value:Boolean);
begin
{*
 00534B90    cmp         dl,byte ptr [eax+298];TTabSheet.FTabVisible:Boolean
>00534B96    je          00534BA3
 00534B98    mov         byte ptr [eax+298],dl;TTabSheet.FTabVisible:Boolean
 00534B9E    call        00534BD4
 00534BA3    ret
*}
end;

//00534BA4
{*procedure sub_00534BA4(?:?; ?:?);
begin
 00534BA4    push        ebx
 00534BA5    push        esi
 00534BA6    mov         esi,ecx
 00534BA8    mov         ebx,eax
 00534BAA    mov         ecx,esi
 00534BAC    mov         eax,ebx
 00534BAE    call        004F227C
 00534BB3    test        byte ptr [ebx+1C],2;TTabSheet.FComponentState:TComponentState
>00534BB7    jne         00534BCE
 00534BB9    mov         eax,ebx
 00534BBB    call        TWinControl.HandleAllocated
 00534BC0    test        al,al
>00534BC2    jne         00534BCE
 00534BC4    mov         eax,dword ptr [ebx+1C8];TTabSheet.FBorderWidth:TBorderWidth
 00534BCA    add         eax,eax
 00534BCC    sub         dword ptr [esi],eax
 00534BCE    pop         esi
 00534BCF    pop         ebx
 00534BD0    ret
end;*}

//00534BD4
procedure sub_00534BD4(?:TTabSheet);
begin
{*
 00534BD4    cmp         dword ptr [eax+294],0;TTabSheet.FPageControl:TPageControl
>00534BDB    je          00534BE6
 00534BDD    cmp         byte ptr [eax+298],0;TTabSheet.FTabVisible:Boolean
>00534BE4    jne         00534BEA
 00534BE6    xor         edx,edx
>00534BE8    jmp         00534BEC
 00534BEA    mov         dl,1
 00534BEC    call        00534B4C
 00534BF1    ret
*}
end;

//00534BF4
procedure TTabSheet.CMTextChanged;
begin
{*
 00534BF4    cmp         byte ptr [eax+299],0;TTabSheet.FTabShowing:Boolean
>00534BFB    je          00534C0A
 00534BFD    mov         edx,eax
 00534BFF    mov         eax,dword ptr [eax+294];TTabSheet.FPageControl:TPageControl
 00534C05    call        00535714
 00534C0A    ret
*}
end;

//00534C0C
procedure TTabSheet.CMShowingChanged;
begin
{*
 00534C0C    push        ebp
 00534C0D    mov         ebp,esp
 00534C0F    push        ecx
 00534C10    push        ebx
 00534C11    push        esi
 00534C12    push        edi
 00534C13    mov         dword ptr [ebp-4],eax
 00534C16    mov         eax,dword ptr [ebp-4]
 00534C19    call        TWinControl.CMShowingChanged
 00534C1E    mov         eax,dword ptr [ebp-4]
 00534C21    movzx       eax,byte ptr [eax+205];TTabSheet.FShowing:Boolean
 00534C28    test        al,al
>00534C2A    je          00534C6B
 00534C2C    xor         eax,eax
 00534C2E    push        ebp
 00534C2F    push        534C50
 00534C34    push        dword ptr fs:[eax]
 00534C37    mov         dword ptr fs:[eax],esp
 00534C3A    mov         eax,dword ptr [ebp-4]
 00534C3D    mov         si,0FFAC
 00534C41    call        @CallDynaInst;TTabSheet.sub_00534988
 00534C46    xor         eax,eax
 00534C48    pop         edx
 00534C49    pop         ecx
 00534C4A    pop         ecx
 00534C4B    mov         dword ptr fs:[eax],edx
>00534C4E    jmp         00534CAC
>00534C50    jmp         @HandleAnyException
 00534C55    mov         eax,[007C4A18];^Application:TApplication
 00534C5A    mov         eax,dword ptr [eax]
 00534C5C    mov         edx,dword ptr [ebp-4]
 00534C5F    call        TApplication.HandleException
 00534C64    call        @DoneExcept
>00534C69    jmp         00534CAC
 00534C6B    test        al,al
>00534C6D    jne         00534CAC
 00534C6F    xor         eax,eax
 00534C71    push        ebp
 00534C72    push        534C93
 00534C77    push        dword ptr fs:[eax]
 00534C7A    mov         dword ptr fs:[eax],esp
 00534C7D    mov         eax,dword ptr [ebp-4]
 00534C80    mov         si,0FFAD
 00534C84    call        @CallDynaInst;TTabSheet.sub_00534968
 00534C89    xor         eax,eax
 00534C8B    pop         edx
 00534C8C    pop         ecx
 00534C8D    pop         ecx
 00534C8E    mov         dword ptr fs:[eax],edx
>00534C91    jmp         00534CAC
>00534C93    jmp         @HandleAnyException
 00534C98    mov         eax,[007C4A18];^Application:TApplication
 00534C9D    mov         eax,dword ptr [eax]
 00534C9F    mov         edx,dword ptr [ebp-4]
 00534CA2    call        TApplication.HandleException
 00534CA7    call        @DoneExcept
 00534CAC    pop         edi
 00534CAD    pop         esi
 00534CAE    pop         ebx
 00534CAF    pop         ecx
 00534CB0    pop         ebp
 00534CB1    ret
*}
end;

//00534CB4
procedure TTabSheet.SetHighlighted(Value:Boolean);
begin
{*
 00534CB4    push        ebp
 00534CB5    mov         ebp,esp
 00534CB7    push        0
 00534CB9    push        ebx
 00534CBA    push        esi
 00534CBB    push        edi
 00534CBC    mov         ebx,edx
 00534CBE    mov         esi,eax
 00534CC0    xor         eax,eax
 00534CC2    push        ebp
 00534CC3    push        534D41
 00534CC8    push        dword ptr fs:[eax]
 00534CCB    mov         dword ptr fs:[eax],esp
 00534CCE    test        byte ptr [esi+1C],2;TTabSheet.FComponentState:TComponentState
>00534CD2    jne         00534D25
 00534CD4    mov         edi,dword ptr [esi+294];TTabSheet.FPageControl:TPageControl
 00534CDA    test        edi,edi
>00534CDC    je          00534D04
 00534CDE    movzx       eax,bl
 00534CE1    movzx       eax,ax
 00534CE4    or          eax,0
 00534CE7    push        eax
 00534CE8    mov         eax,esi
 00534CEA    call        005349C4
 00534CEF    push        eax
 00534CF0    push        1333
 00534CF5    mov         eax,edi
 00534CF7    call        TWinControl.GetHandle
 00534CFC    push        eax
 00534CFD    call        user32.SendMessageW
>00534D02    jmp         00534D25
 00534D04    lea         edx,[ebp-4]
 00534D07    mov         eax,[007C4D0C];^SResString335:TResStringRec
 00534D0C    call        LoadResString
 00534D11    mov         ecx,dword ptr [ebp-4]
 00534D14    mov         dl,1
 00534D16    mov         eax,[0046BE9C];EInvalidOperation
 00534D1B    call        Exception.Create;EInvalidOperation.Create
 00534D20    call        @RaiseExcept
 00534D25    mov         byte ptr [esi+29A],bl;TTabSheet.FHighlighted:Boolean
 00534D2B    xor         eax,eax
 00534D2D    pop         edx
 00534D2E    pop         ecx
 00534D2F    pop         ecx
 00534D30    mov         dword ptr fs:[eax],edx
 00534D33    push        534D48
 00534D38    lea         eax,[ebp-4]
 00534D3B    call        @UStrClr
 00534D40    ret
>00534D41    jmp         @HandleFinally
>00534D46    jmp         00534D38
 00534D48    pop         edi
 00534D49    pop         esi
 00534D4A    pop         ebx
 00534D4B    pop         ecx
 00534D4C    pop         ebp
 00534D4D    ret
*}
end;

//00534D50
{*procedure TTabSheet.WMNCPaint(?:?);
begin
 00534D50    push        ebp
 00534D51    mov         ebp,esp
 00534D53    add         esp,0FFFFFFD8
 00534D56    push        ebx
 00534D57    mov         dword ptr [ebp-8],edx
 00534D5A    mov         dword ptr [ebp-4],eax
 00534D5D    call        StyleServices
 00534D62    mov         edx,dword ptr [eax]
 00534D64    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00534D67    test        al,al
>00534D69    je          00534E51
 00534D6F    mov         eax,dword ptr [ebp-4]
 00534D72    cmp         dword ptr [eax+1C8],0;TTabSheet.FBorderWidth:TBorderWidth
>00534D79    jbe         00534E51
 00534D7F    mov         eax,dword ptr [ebp-4]
 00534D82    call        TWinControl.GetHandle
 00534D87    push        eax
 00534D88    call        user32.GetWindowDC
 00534D8D    mov         dword ptr [ebp-0C],eax
 00534D90    xor         edx,edx
 00534D92    push        ebp
 00534D93    push        534E40
 00534D98    push        dword ptr fs:[edx]
 00534D9B    mov         dword ptr fs:[edx],esp
 00534D9E    lea         edx,[ebp-1C]
 00534DA1    mov         eax,dword ptr [ebp-4]
 00534DA4    mov         ecx,dword ptr [eax]
 00534DA6    call        dword ptr [ecx+64];TWinControl.GetClientRect
 00534DA9    mov         eax,dword ptr [ebp-4]
 00534DAC    mov         eax,dword ptr [eax+1C8];TTabSheet.FBorderWidth:TBorderWidth
 00534DB2    mov         ecx,eax
 00534DB4    mov         edx,eax
 00534DB6    lea         eax,[ebp-1C]
 00534DB9    call        OffsetRect
 00534DBE    mov         eax,dword ptr [ebp-10]
 00534DC1    push        eax
 00534DC2    mov         eax,dword ptr [ebp-14]
 00534DC5    push        eax
 00534DC6    mov         eax,dword ptr [ebp-18]
 00534DC9    push        eax
 00534DCA    mov         eax,dword ptr [ebp-1C]
 00534DCD    push        eax
 00534DCE    mov         eax,dword ptr [ebp-0C]
 00534DD1    push        eax
 00534DD2    call        gdi32.ExcludeClipRect
 00534DD7    push        0
 00534DD9    mov         eax,dword ptr [ebp-4]
 00534DDC    mov         eax,dword ptr [eax+1C8];TTabSheet.FBorderWidth:TBorderWidth
 00534DE2    neg         eax
 00534DE4    push        eax
 00534DE5    push        eax
 00534DE6    mov         eax,dword ptr [ebp-0C]
 00534DE9    push        eax
 00534DEA    call        gdi32.SetWindowOrgEx
 00534DEF    call        StyleServices
 00534DF4    lea         ecx,[ebp-28]
 00534DF7    mov         dl,2B
 00534DF9    mov         ebx,dword ptr [eax]
 00534DFB    call        dword ptr [ebx+0D8];TCustomStyleServices.GetElementDetails
 00534E01    lea         eax,[ebp-28]
 00534E04    push        eax
 00534E05    push        0
 00534E07    push        0
 00534E09    mov         eax,dword ptr [ebp-4]
 00534E0C    call        TWinControl.GetHandle
 00534E11    push        eax
 00534E12    call        StyleServices
 00534E17    mov         ecx,dword ptr [ebp-0C]
 00534E1A    pop         edx
 00534E1B    call        TCustomStyleServices.DrawParentBackground
 00534E20    xor         eax,eax
 00534E22    pop         edx
 00534E23    pop         ecx
 00534E24    pop         ecx
 00534E25    mov         dword ptr fs:[eax],edx
 00534E28    push        534E47
 00534E2D    mov         eax,dword ptr [ebp-0C]
 00534E30    push        eax
 00534E31    mov         eax,dword ptr [ebp-4]
 00534E34    call        TWinControl.GetHandle
 00534E39    push        eax
 00534E3A    call        user32.ReleaseDC
 00534E3F    ret
>00534E40    jmp         @HandleFinally
>00534E45    jmp         00534E2D
 00534E47    mov         eax,dword ptr [ebp-8]
 00534E4A    xor         edx,edx
 00534E4C    mov         dword ptr [eax+0C],edx
>00534E4F    jmp         00534E5C
 00534E51    mov         edx,dword ptr [ebp-8]
 00534E54    mov         eax,dword ptr [ebp-4]
 00534E57    call        TWinControl.WMNCPaint
 00534E5C    pop         ebx
 00534E5D    mov         esp,ebp
 00534E5F    pop         ebp
 00534E60    ret
end;*}

//00534E64
{*procedure TTabSheet.WMEraseBkgnd(?:?);
begin
 00534E64    push        ebx
 00534E65    push        esi
 00534E66    add         esp,0FFFFFFD4
 00534E69    mov         esi,edx
 00534E6B    mov         ebx,eax
 00534E6D    cmp         dword ptr [ebx+294],0;TTabSheet.FPageControl:TPageControl
>00534E74    je          00534F43
 00534E7A    call        StyleServices
 00534E7F    mov         edx,dword ptr [eax]
 00534E81    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00534E84    test        al,al
>00534E86    je          00534F43
 00534E8C    mov         eax,dword ptr [ebx+294];TTabSheet.FPageControl:TPageControl
 00534E92    test        byte ptr [eax+188],2;TPageControl.FStyleElements:TStyleElements
>00534E99    je          00534F43
 00534E9F    mov         eax,dword ptr [ebx+294];TTabSheet.FPageControl:TPageControl
 00534EA5    cmp         byte ptr [eax+2AD],0;TPageControl.FStyle:TTabStyle
>00534EAC    je          00534EBB
 00534EAE    call        TStyleManager.GetIsCustomStyleActive
 00534EB3    test        al,al
>00534EB5    je          00534F43
 00534EBB    lea         eax,[esp+8]
 00534EBF    push        eax
 00534EC0    mov         eax,ebx
 00534EC2    call        TWinControl.GetHandle
 00534EC7    push        eax
 00534EC8    call        user32.GetWindowRect
 00534ECD    mov         ecx,dword ptr [esp+0C]
 00534ED1    neg         ecx
 00534ED3    mov         edx,dword ptr [esp+8]
 00534ED7    neg         edx
 00534ED9    lea         eax,[esp+8]
 00534EDD    call        OffsetRect
 00534EE2    xor         eax,eax
 00534EE4    mov         dword ptr [esp],eax
 00534EE7    xor         eax,eax
 00534EE9    mov         dword ptr [esp+4],eax
 00534EED    lea         eax,[esp+24]
 00534EF1    push        eax
 00534EF2    lea         edx,[esp+4]
 00534EF6    xor         ecx,ecx
 00534EF8    mov         eax,ebx
 00534EFA    call        TControl.ClientToParent
 00534EFF    mov         eax,dword ptr [esp+24]
 00534F03    lea         edx,[esp+8]
 00534F07    mov         ecx,eax
 00534F09    xchg        eax,edx
 00534F0A    call        InflateRect
 00534F0F    call        StyleServices
 00534F14    lea         ecx,[esp+18]
 00534F18    mov         dl,2A
 00534F1A    mov         ebx,dword ptr [eax]
 00534F1C    call        dword ptr [ebx+0D8];TCustomStyleServices.GetElementDetails
 00534F22    lea         eax,[esp+8]
 00534F26    push        eax
 00534F27    push        0
 00534F29    call        StyleServices
 00534F2E    mov         edx,dword ptr [esi+4]
 00534F31    lea         ecx,[esp+20]
 00534F35    call        TCustomStyleServices.DrawElement
 00534F3A    mov         dword ptr [esi+0C],1
>00534F41    jmp         00534F4C
 00534F43    mov         edx,esi
 00534F45    mov         eax,ebx
 00534F47    call        TWinControl.WMEraseBkgnd
 00534F4C    add         esp,2C
 00534F4F    pop         esi
 00534F50    pop         ebx
 00534F51    ret
end;*}

//00534F54
constructor TPageControl.Create(AOwner:TComponent);
begin
{*
 00534F54    push        ebx
 00534F55    push        esi
 00534F56    test        dl,dl
>00534F58    je          00534F62
 00534F5A    add         esp,0FFFFFFF0
 00534F5D    call        @ClassCreate
 00534F62    mov         ebx,edx
 00534F64    mov         esi,eax
 00534F66    xor         edx,edx
 00534F68    mov         eax,esi
 00534F6A    call        TCustomTabControl.Create
 00534F6F    mov         eax,[00534FA4];0x2800C0 gvar_00534FA4
 00534F74    mov         dword ptr [esi+60],eax;TPageControl.FControlStyle:TControlStyle
 00534F77    mov         dl,1
 00534F79    mov         eax,[0046C204];TList
 00534F7E    call        TObject.Create;TList.Create
 00534F83    mov         dword ptr [esi+2F0],eax;TPageControl.FPages:TList
 00534F89    mov         eax,esi
 00534F8B    test        bl,bl
>00534F8D    je          00534F9E
 00534F8F    call        @AfterConstruction
 00534F94    pop         dword ptr fs:[0]
 00534F9B    add         esp,0C
 00534F9E    mov         eax,esi
 00534FA0    pop         esi
 00534FA1    pop         ebx
 00534FA2    ret
*}
end;

//00534FA8
destructor TPageControl.Destroy();
begin
{*
 00534FA8    push        ebx
 00534FA9    push        esi
 00534FAA    push        edi
 00534FAB    push        ebp
 00534FAC    call        @BeforeDestruction
 00534FB1    mov         ebx,edx
 00534FB3    mov         esi,eax
 00534FB5    mov         eax,dword ptr [esi+2F0];TPageControl.FPages:TList
 00534FBB    mov         ebp,dword ptr [eax+8];TList.FCount:Integer
 00534FBE    dec         ebp
 00534FBF    test        ebp,ebp
>00534FC1    jl          00534FDF
 00534FC3    inc         ebp
 00534FC4    xor         edi,edi
 00534FC6    mov         eax,dword ptr [esi+2F0];TPageControl.FPages:TList
 00534FCC    mov         edx,edi
 00534FCE    call        TList.Get
 00534FD3    xor         edx,edx
 00534FD5    mov         dword ptr [eax+294],edx
 00534FDB    inc         edi
 00534FDC    dec         ebp
>00534FDD    jne         00534FC6
 00534FDF    mov         eax,dword ptr [esi+2F0];TPageControl.FPages:TList
 00534FE5    call        TObject.Free
 00534FEA    mov         dl,0FC
 00534FEC    and         dl,bl
 00534FEE    mov         eax,esi
 00534FF0    call        TCustomTabControl.Destroy
 00534FF5    test        bl,bl
>00534FF7    jle         00535000
 00534FF9    mov         eax,esi
 00534FFB    call        @ClassDestroy
 00535000    pop         ebp
 00535001    pop         edi
 00535002    pop         esi
 00535003    pop         ebx
 00535004    ret
*}
end;

//00535008
procedure sub_00535008(?:TPageControl);
begin
{*
 00535008    push        ebx
 00535009    push        esi
 0053500A    push        edi
 0053500B    mov         esi,eax
 0053500D    mov         eax,esi
 0053500F    call        005354A0
 00535014    mov         edi,eax
 00535016    dec         edi
 00535017    test        edi,edi
>00535019    jl          00535042
 0053501B    inc         edi
 0053501C    xor         ebx,ebx
 0053501E    mov         edx,ebx
 00535020    mov         eax,esi
 00535022    call        TPageControl.GetPage
 00535027    movzx       eax,byte ptr [eax+29A];TTabSheet.FHighlighted:Boolean
 0053502E    push        eax
 0053502F    mov         edx,ebx
 00535031    mov         eax,esi
 00535033    call        TPageControl.GetPage
 00535038    pop         edx
 00535039    call        TTabSheet.SetHighlighted
 0053503E    inc         ebx
 0053503F    dec         edi
>00535040    jne         0053501E
 00535042    pop         edi
 00535043    pop         esi
 00535044    pop         ebx
 00535045    ret
*}
end;

//00535048
procedure TPageControl.CMFontChanged(var Message:TMessage);
begin
{*
 00535048    push        ebx
 00535049    mov         ebx,eax
 0053504B    mov         eax,ebx
 0053504D    call        TCustomTabControl.CMFontChanged
 00535052    mov         eax,ebx
 00535054    call        00535008
 00535059    pop         ebx
 0053505A    ret
*}
end;

//0053505C
{*procedure sub_0053505C(?:?);
begin
 0053505C    push        esi
 0053505D    push        edi
 0053505E    mov         edi,edx
 00535060    mov         esi,eax
 00535062    mov         edx,edi
 00535064    mov         eax,esi
 00535066    call        00535D8C
 0053506B    mov         edx,eax
 0053506D    mov         eax,dword ptr [esi+2F0];TPageControl.FPages:TList
 00535073    call        TList.Get
 00535078    mov         edx,dword ptr [eax]
 0053507A    call        dword ptr [edx+6C]
 0053507D    pop         edi
 0053507E    pop         esi
 0053507F    ret
end;*}

//00535080
procedure TPageControl.sub_00533B2C;
begin
{*
 00535080    push        ebx
 00535081    mov         ebx,eax
 00535083    mov         eax,ebx
 00535085    call        TPageControl.GetTabIndex
 0053508A    test        eax,eax
>0053508C    jl          00535098
 0053508E    mov         eax,ebx
 00535090    mov         edx,dword ptr [eax]
 00535092    call        dword ptr [edx+118];TPageControl.sub_00535774
 00535098    test        byte ptr [ebx+1C],10;TPageControl.FComponentState:TComponentState
>0053509C    je          005350BF
 0053509E    mov         dl,1
 005350A0    mov         eax,ebx
 005350A2    call        GetParentForm
 005350A7    test        eax,eax
>005350A9    je          005350BF
 005350AB    cmp         dword ptr [eax+2E0],0;TCustomForm.FDesigner:IDesignerHook
>005350B2    je          005350BF
 005350B4    mov         eax,dword ptr [eax+2E0];TCustomForm.FDesigner:IDesignerHook
 005350BA    mov         edx,dword ptr [eax]
 005350BC    call        dword ptr [edx+0C]
 005350BF    mov         eax,ebx
 005350C1    call        TCustomTabControl.sub_00533B2C
 005350C6    pop         ebx
 005350C7    ret
*}
end;

//005350C8
procedure sub_005350C8(?:TPageControl; ?:TTabSheet);
begin
{*
 005350C8    push        ebx
 005350C9    push        esi
 005350CA    push        edi
 005350CB    push        ebp
 005350CC    mov         ebp,edx
 005350CE    mov         edi,eax
 005350D0    cmp         ebp,dword ptr [edi+2F4]
>005350D6    je          005351F3
 005350DC    mov         dl,1
 005350DE    mov         eax,edi
 005350E0    call        GetParentForm
 005350E5    mov         ebx,eax
 005350E7    test        ebx,ebx
>005350E9    je          0053513C
 005350EB    cmp         dword ptr [edi+2F4],0
>005350F2    je          0053513C
 005350F4    mov         edx,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 005350FA    mov         eax,dword ptr [edi+2F4]
 00535100    call        TWinControl.ContainsControl
 00535105    test        al,al
>00535107    je          0053513C
 00535109    mov         edx,dword ptr [edi+2F4]
 0053510F    mov         eax,ebx
 00535111    call        TCustomForm.SetActiveControl
 00535116    mov         esi,dword ptr [edi+2F4]
 0053511C    cmp         esi,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
>00535122    je          0053513C
 00535124    mov         eax,esi
 00535126    call        005349C4
 0053512B    mov         edx,eax
 0053512D    mov         eax,edi
 0053512F    mov         ecx,dword ptr [eax]
 00535131    call        dword ptr [ecx+114]
>00535137    jmp         005351F3
 0053513C    test        ebp,ebp
>0053513E    je          005351B6
 00535140    mov         eax,ebp
 00535142    call        TControl.BringToFront
 00535147    mov         dl,1
 00535149    mov         eax,ebp
 0053514B    call        TControl.SetVisible
 00535150    test        ebx,ebx
>00535152    je          0053518E
 00535154    cmp         dword ptr [edi+2F4],0
>0053515B    je          0053518E
 0053515D    mov         eax,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 00535163    cmp         eax,dword ptr [edi+2F4]
>00535169    jne         0053518E
 0053516B    mov         eax,ebp
 0053516D    mov         si,0FFB4
 00535171    call        @CallDynaInst
 00535176    test        al,al
>00535178    je          00535185
 0053517A    mov         edx,ebp
 0053517C    mov         eax,ebx
 0053517E    call        TCustomForm.SetActiveControl
>00535183    jmp         0053518E
 00535185    mov         edx,edi
 00535187    mov         eax,ebx
 00535189    call        TCustomForm.SetActiveControl
 0053518E    cmp         byte ptr [ebp+298],0
>00535195    jne         005351B6
 00535197    call        TStyleManager.GetIsCustomStyleActive
 0053519C    test        al,al
>0053519E    je          005351B6
 005351A0    push        101
 005351A5    push        0
 005351A7    push        0
 005351A9    mov         eax,ebp
 005351AB    call        TWinControl.GetHandle
 005351B0    push        eax
 005351B1    call        user32.RedrawWindow
 005351B6    mov         eax,dword ptr [edi+2F4]
 005351BC    test        eax,eax
>005351BE    je          005351C7
 005351C0    xor         edx,edx
 005351C2    call        TControl.SetVisible
 005351C7    mov         dword ptr [edi+2F4],ebp
 005351CD    test        ebx,ebx
>005351CF    je          005351F3
 005351D1    cmp         dword ptr [edi+2F4],0
>005351D8    je          005351F3
 005351DA    mov         eax,dword ptr [ebx+2B4];TCustomForm.FActiveControl:TWinControl
 005351E0    cmp         eax,dword ptr [edi+2F4]
>005351E6    jne         005351F3
 005351E8    mov         eax,dword ptr [edi+2F4]
 005351EE    call        TWinControl.SelectFirst
 005351F3    pop         ebp
 005351F4    pop         edi
 005351F5    pop         esi
 005351F6    pop         ebx
 005351F7    ret
*}
end;

//005351F8
{*procedure sub_005351F8(?:?; ?:?; ?:?);
begin
 005351F8    push        ebx
 005351F9    push        esi
 005351FA    push        edi
 005351FB    mov         edi,ecx
 005351FD    mov         esi,eax
 005351FF    cmp         edx,dword ptr [esi+2F4]
 00535205    sete        bl
 00535208    mov         eax,esi
 0053520A    call        005348A0
 0053520F    mov         edx,edi
 00535211    mov         ecx,dword ptr [eax]
 00535213    call        dword ptr [ecx+4C]
 00535216    test        bl,bl
>00535218    je          00535245
 0053521A    mov         eax,esi
 0053521C    call        005348A0
 00535221    mov         edx,dword ptr [eax]
 00535223    call        dword ptr [edx+14]
 00535226    cmp         edi,eax
>00535228    jl          00535239
 0053522A    mov         eax,esi
 0053522C    call        005348A0
 00535231    mov         edx,dword ptr [eax]
 00535233    call        dword ptr [edx+14]
 00535236    mov         edi,eax
 00535238    dec         edi
 00535239    mov         edx,edi
 0053523B    mov         eax,esi
 0053523D    mov         ecx,dword ptr [eax]
 0053523F    call        dword ptr [ecx+114]
 00535245    mov         eax,esi
 00535247    mov         edx,dword ptr [eax]
 00535249    call        dword ptr [edx+118]
 0053524F    pop         edi
 00535250    pop         esi
 00535251    pop         ebx
 00535252    ret
end;*}

//00535254
{*procedure TPageControl.sub_004EE458(?:?);
begin
 00535254    mov         ecx,dword ptr [eax+2F8];TPageControl.FNewDockSheet:TTabSheet
 0053525A    test        ecx,ecx
>0053525C    je          00535269
 0053525E    mov         eax,ecx
 00535260    xchg        eax,edx
 00535261    mov         ecx,dword ptr [eax]
 00535263    call        dword ptr [ecx+8C]
 00535269    ret
end;*}

//0053526C
{*procedure TPageControl.sub_004EE530(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0053526C    push        ebp
 0053526D    mov         ebp,esp
 0053526F    add         esp,0FFFFFFEC
 00535272    push        esi
 00535273    push        edi
 00535274    mov         dword ptr [ebp-4],ecx
 00535277    mov         edi,edx
 00535279    mov         esi,eax
 0053527B    lea         eax,[ebp-14]
 0053527E    push        eax
 0053527F    mov         eax,esi
 00535281    call        TWinControl.GetHandle
 00535286    push        eax
 00535287    call        user32.GetWindowRect
 0053528C    push        esi
 0053528D    push        edi
 0053528E    lea         esi,[ebp-14]
 00535291    add         edi,4C
 00535294    movs        dword ptr [edi],dword ptr [esi]
 00535295    movs        dword ptr [edi],dword ptr [esi]
 00535296    movs        dword ptr [edi],dword ptr [esi]
 00535297    movs        dword ptr [edi],dword ptr [esi]
 00535298    pop         edi
 00535299    pop         esi
 0053529A    mov         eax,dword ptr [ebp+10]
 0053529D    push        eax
 0053529E    movzx       eax,byte ptr [ebp+0C]
 005352A2    push        eax
 005352A3    mov         eax,dword ptr [ebp+8]
 005352A6    push        eax
 005352A7    mov         ecx,dword ptr [ebp-4]
 005352AA    mov         edx,edi
 005352AC    mov         eax,esi
 005352AE    mov         si,0FFC1
 005352B2    call        @CallDynaInst;TWinControl.sub_004EE4FC
 005352B7    pop         edi
 005352B8    pop         esi
 005352B9    mov         esp,ebp
 005352BB    pop         ebp
 005352BC    ret         0C
end;*}

//005352C0
procedure TPageControl.sub_004EE464;
begin
{*
 005352C0    push        ebx
 005352C1    mov         ebx,eax
 005352C3    cmp         dword ptr [ebx+2FC],0;TPageControl.FUndockingPage:TTabSheet
>005352CA    je          005352F0
 005352CC    test        byte ptr [ebx+1C],8;TPageControl.FComponentState:TComponentState
>005352D0    jne         005352F0
 005352D2    mov         cl,1
 005352D4    mov         dl,1
 005352D6    mov         eax,ebx
 005352D8    call        TPageControl.SelectNextPage
 005352DD    mov         eax,dword ptr [ebx+2FC];TPageControl.FUndockingPage:TTabSheet
 005352E3    call        TObject.Free
 005352E8    xor         eax,eax
 005352EA    mov         dword ptr [ebx+2FC],eax;TPageControl.FUndockingPage:TTabSheet
 005352F0    pop         ebx
 005352F1    ret
*}
end;

//005352F4
function TPageControl.FindNextPage(CurPage:TTabSheet; GoForward:Boolean; CheckTabVisible:Boolean):TTabSheet;
begin
{*
 005352F4    push        ebp
 005352F5    mov         ebp,esp
 005352F7    push        ecx
 005352F8    push        ebx
 005352F9    push        esi
 005352FA    push        edi
 005352FB    mov         byte ptr [ebp-1],cl
 005352FE    mov         esi,eax
 00535300    mov         eax,dword ptr [esi+2F0];TPageControl.FPages:TList
 00535306    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>0053530A    je          00535372
 0053530C    call        TList.IndexOf
 00535311    mov         edi,eax
 00535313    cmp         edi,0FFFFFFFF
>00535316    jne         0053532C
 00535318    cmp         byte ptr [ebp-1],0
>0053531C    je          0053532A
 0053531E    mov         eax,dword ptr [esi+2F0];TPageControl.FPages:TList
 00535324    mov         edi,dword ptr [eax+8];TList.FCount:Integer
 00535327    dec         edi
>00535328    jmp         0053532C
 0053532A    xor         edi,edi
 0053532C    mov         ebx,edi
 0053532E    cmp         byte ptr [ebp-1],0
>00535332    je          00535344
 00535334    inc         ebx
 00535335    mov         eax,dword ptr [esi+2F0];TPageControl.FPages:TList
 0053533B    cmp         ebx,dword ptr [eax+8];TList.FCount:Integer
>0053533E    jne         00535352
 00535340    xor         ebx,ebx
>00535342    jmp         00535352
 00535344    test        ebx,ebx
>00535346    jne         00535351
 00535348    mov         eax,dword ptr [esi+2F0];TPageControl.FPages:TList
 0053534E    mov         ebx,dword ptr [eax+8];TList.FCount:Integer
 00535351    dec         ebx
 00535352    mov         edx,ebx
 00535354    mov         eax,dword ptr [esi+2F0];TPageControl.FPages:TList
 0053535A    call        TList.Get
 0053535F    cmp         byte ptr [ebp+8],0
>00535363    je          00535374
 00535365    cmp         byte ptr [eax+298],0
>0053536C    jne         00535374
 0053536E    cmp         edi,ebx
>00535370    jne         0053532E
 00535372    xor         eax,eax
 00535374    pop         edi
 00535375    pop         esi
 00535376    pop         ebx
 00535377    pop         ecx
 00535378    pop         ebp
 00535379    ret         4
*}
end;

//0053537C
{*procedure TPageControl.GetChildren(Root:TComponent; Proc:TGetChildProc; ?:?);
begin
 0053537C    push        ebp
 0053537D    mov         ebp,esp
 0053537F    push        ecx
 00535380    push        ebx
 00535381    push        esi
 00535382    mov         dword ptr [ebp-4],eax
 00535385    mov         eax,dword ptr [ebp-4]
 00535388    mov         eax,dword ptr [eax+2F0];TPageControl.FPages:TList
 0053538E    mov         ebx,dword ptr [eax+8];TList.FCount:Integer
 00535391    dec         ebx
 00535392    test        ebx,ebx
>00535394    jl          005353B5
 00535396    inc         ebx
 00535397    xor         esi,esi
 00535399    mov         eax,dword ptr [ebp-4]
 0053539C    mov         eax,dword ptr [eax+2F0];TPageControl.FPages:TList
 005353A2    mov         edx,esi
 005353A4    call        TList.Get
 005353A9    mov         edx,eax
 005353AB    mov         eax,dword ptr [ebp+0C]
 005353AE    call        dword ptr [ebp+8]
 005353B1    inc         esi
 005353B2    dec         ebx
>005353B3    jne         00535399
 005353B5    pop         esi
 005353B6    pop         ebx
 005353B7    pop         ecx
 005353B8    pop         ebp
 005353B9    ret         8
end;*}

//005353BC
{*function sub_005353BC(?:?):?;
begin
 005353BC    push        ebx
 005353BD    push        esi
 005353BE    push        edi
 005353BF    push        ebp
 005353C0    add         esp,0FFFFFFF8
 005353C3    mov         dword ptr [esp],edx
 005353C6    mov         ebx,eax
 005353C8    cmp         word ptr [ebx+2EA],0;TPageControl.?f2EA:word
>005353D0    je          005353DE
 005353D2    mov         edx,dword ptr [esp]
 005353D5    mov         eax,ebx
 005353D7    call        00533DB4
>005353DC    jmp         00535430
 005353DE    xor         ebp,ebp
 005353E0    xor         eax,eax
 005353E2    mov         dword ptr [esp+4],eax
 005353E6    mov         eax,dword ptr [ebx+2F0];TPageControl.FPages:TList
 005353EC    mov         esi,dword ptr [eax+8];TList.FCount:Integer
 005353EF    dec         esi
 005353F0    test        esi,esi
>005353F2    jl          0053541C
 005353F4    inc         esi
 005353F5    xor         edi,edi
 005353F7    mov         edx,edi
 005353F9    mov         eax,ebx
 005353FB    call        TPageControl.GetPage
 00535400    cmp         byte ptr [eax+298],0;TTabSheet.FTabVisible:Boolean
>00535407    jne         0053540F
 00535409    inc         dword ptr [esp+4]
>0053540D    jmp         00535410
 0053540F    inc         ebp
 00535410    mov         eax,dword ptr [esp]
 00535413    inc         eax
 00535414    cmp         ebp,eax
>00535416    je          0053541C
 00535418    inc         edi
 00535419    dec         esi
>0053541A    jne         005353F7
 0053541C    mov         edx,dword ptr [esp]
 0053541F    add         edx,dword ptr [esp+4]
 00535423    mov         eax,ebx
 00535425    call        TPageControl.GetPage
 0053542A    mov         eax,dword ptr [eax+290];TTabSheet.FImageIndex:TImageIndex
 00535430    pop         ecx
 00535431    pop         edx
 00535432    pop         ebp
 00535433    pop         edi
 00535434    pop         esi
 00535435    pop         ebx
 00535436    ret
end;*}

//00535438
{*function sub_00535438(?:TPageControl; ?:?):?;
begin
 00535438    push        ebx
 00535439    push        esi
 0053543A    push        edi
 0053543B    push        ebp
 0053543C    push        ecx
 0053543D    mov         ebp,edx
 0053543F    mov         ebx,eax
 00535441    xor         eax,eax
 00535443    mov         dword ptr [esp],eax
 00535446    mov         eax,ebx
 00535448    call        005354A0
 0053544D    mov         edi,eax
 0053544F    dec         edi
 00535450    test        edi,edi
>00535452    jl          0053547F
 00535454    inc         edi
 00535455    xor         esi,esi
 00535457    mov         edx,esi
 00535459    mov         eax,ebx
 0053545B    call        TPageControl.GetPage
 00535460    cmp         eax,dword ptr [ebp+40]
>00535463    jne         0053547B
 00535465    cmp         ebx,dword ptr [ebp+0A0]
>0053546B    jne         0053547B
 0053546D    mov         edx,esi
 0053546F    mov         eax,ebx
 00535471    call        TPageControl.GetPage
 00535476    mov         dword ptr [esp],eax
>00535479    jmp         0053547F
 0053547B    inc         esi
 0053547C    dec         edi
>0053547D    jne         00535457
 0053547F    mov         eax,dword ptr [esp]
 00535482    pop         edx
 00535483    pop         ebp
 00535484    pop         edi
 00535485    pop         esi
 00535486    pop         ebx
 00535487    ret
end;*}

//00535488
function TPageControl.GetPage(Index:Integer):TTabSheet;
begin
{*
 00535488    push        ebx
 00535489    push        esi
 0053548A    mov         esi,edx
 0053548C    mov         ebx,eax
 0053548E    mov         edx,esi
 00535490    mov         eax,dword ptr [ebx+2F0];TPageControl.FPages:TList
 00535496    call        TList.Get
 0053549B    pop         esi
 0053549C    pop         ebx
 0053549D    ret
*}
end;

//005354A0
{*function sub_005354A0(?:TPageControl):?;
begin
 005354A0    mov         eax,dword ptr [eax+2F0]
 005354A6    mov         eax,dword ptr [eax+8]
 005354A9    ret
end;*}

//005354AC
{*procedure TPageControl.sub_004EE62C(?:?; ?:?; ?:?; ?:?);
begin
 005354AC    push        ebp
 005354AD    mov         ebp,esp
 005354AF    add         esp,0FFFFFFF4
 005354B2    push        ebx
 005354B3    push        esi
 005354B4    push        edi
 005354B5    mov         esi,dword ptr [ebp+0C]
 005354B8    lea         edi,[ebp-0C]
 005354BB    movs        dword ptr [edi],dword ptr [esi]
 005354BC    movs        dword ptr [edi],dword ptr [esi]
 005354BD    mov         dword ptr [ebp-4],ecx
 005354C0    mov         esi,edx
 005354C2    mov         ebx,eax
 005354C4    mov         edi,dword ptr [ebp+8]
 005354C7    mov         edx,esi
 005354C9    mov         eax,ebx
 005354CB    call        00535438
 005354D0    test        eax,eax
 005354D2    sete        byte ptr [edi]
 005354D5    lea         eax,[ebp-0C]
 005354D8    push        eax
 005354D9    push        edi
 005354DA    mov         ecx,dword ptr [ebp-4]
 005354DD    mov         edx,esi
 005354DF    mov         eax,ebx
 005354E1    call        TWinControl.sub_004EE62C
 005354E6    pop         edi
 005354E7    pop         esi
 005354E8    pop         ebx
 005354E9    mov         esp,ebp
 005354EB    pop         ebp
 005354EC    ret         8
end;*}

//005354F0
procedure sub_005354F0(?:TComponent; ?:TTabSheet);
begin
{*
 005354F0    push        ebx
 005354F1    push        esi
 005354F2    mov         esi,edx
 005354F4    mov         ebx,eax
 005354F6    mov         edx,esi
 005354F8    mov         eax,dword ptr [ebx+2F0]
 005354FE    call        TList.Add
 00535503    mov         dword ptr [esi+294],ebx;TTabSheet.FPageControl:TPageControl
 00535509    mov         eax,esi
 0053550B    call        00534BD4
 00535510    pop         esi
 00535511    pop         ebx
 00535512    ret
*}
end;

//00535514
{*procedure sub_00535514(?:?; ?:?);
begin
 00535514    push        ebp
 00535515    mov         ebp,esp
 00535517    push        0
 00535519    push        ebx
 0053551A    push        esi
 0053551B    push        edi
 0053551C    mov         edi,edx
 0053551E    mov         esi,eax
 00535520    xor         eax,eax
 00535522    push        ebp
 00535523    push        535573
 00535528    push        dword ptr fs:[eax]
 0053552B    mov         dword ptr fs:[eax],esp
 0053552E    push        edi
 0053552F    lea         edx,[ebp-4]
 00535532    mov         eax,edi
 00535534    call        TControl.GetText
 00535539    mov         eax,dword ptr [ebp-4]
 0053553C    push        eax
 0053553D    mov         eax,edi
 0053553F    call        005349C4
 00535544    push        eax
 00535545    mov         eax,esi
 00535547    call        005348A0
 0053554C    pop         edx
 0053554D    pop         ecx
 0053554E    mov         ebx,dword ptr [eax]
 00535550    call        dword ptr [ebx+68]
 00535553    mov         eax,esi
 00535555    mov         edx,dword ptr [eax]
 00535557    call        dword ptr [edx+118]
 0053555D    xor         eax,eax
 0053555F    pop         edx
 00535560    pop         ecx
 00535561    pop         ecx
 00535562    mov         dword ptr fs:[eax],edx
 00535565    push        53557A
 0053556A    lea         eax,[ebp-4]
 0053556D    call        @UStrClr
 00535572    ret
>00535573    jmp         @HandleFinally
>00535578    jmp         0053556A
 0053557A    pop         edi
 0053557B    pop         esi
 0053557C    pop         ebx
 0053557D    pop         ecx
 0053557E    pop         ebp
 0053557F    ret
end;*}

//00535580
{*procedure sub_00535580(?:TPageControl; ?:?; ?:?);
begin
 00535580    push        ebx
 00535581    push        esi
 00535582    push        edi
 00535583    push        ebp
 00535584    mov         ebp,ecx
 00535586    mov         edi,edx
 00535588    mov         esi,eax
 0053558A    mov         eax,esi
 0053558C    call        005348A0
 00535591    mov         ecx,ebp
 00535593    mov         edx,edi
 00535595    mov         ebx,dword ptr [eax]
 00535597    call        dword ptr [ebx+7C]
 0053559A    pop         ebp
 0053559B    pop         edi
 0053559C    pop         esi
 0053559D    pop         ebx
 0053559E    ret
end;*}

//005355A0
procedure sub_005355A0(?:TPageControl; ?:TTabSheet);
begin
{*
 005355A0    push        ebx
 005355A1    push        esi
 005355A2    push        edi
 005355A3    mov         esi,edx
 005355A5    mov         ebx,eax
 005355A7    test        byte ptr [ebx+1C],10;TPageControl.FComponentState:TComponentState
 005355AB    setne       al
 005355AE    xor         al,1
 005355B0    push        eax
 005355B1    mov         cl,1
 005355B3    mov         edx,esi
 005355B5    mov         eax,ebx
 005355B7    call        TPageControl.FindNextPage
 005355BC    mov         edi,eax
 005355BE    cmp         esi,edi
>005355C0    jne         005355C4
 005355C2    xor         edi,edi
 005355C4    xor         edx,edx
 005355C6    mov         eax,esi
 005355C8    call        00534B4C
 005355CD    xor         eax,eax
 005355CF    mov         dword ptr [esi+294],eax;TTabSheet.FPageControl:TPageControl
 005355D5    mov         eax,dword ptr [ebx+2F0];TPageControl.FPages:TList
 005355DB    mov         edx,esi
 005355DD    xor         ecx,ecx
 005355DF    call        TList.RemoveItem
 005355E4    mov         edx,edi
 005355E6    mov         eax,ebx
 005355E8    call        TPageControl.SetActivePage
 005355ED    pop         edi
 005355EE    pop         esi
 005355EF    pop         ebx
 005355F0    ret
*}
end;

//005355F4
procedure TPageControl.SelectNextPage(GoForward:Boolean; CheckTabVisible:Boolean);
begin
{*
 005355F4    push        ebx
 005355F5    push        esi
 005355F6    push        edi
 005355F7    mov         ebx,eax
 005355F9    push        ecx
 005355FA    mov         eax,ebx
 005355FC    mov         ecx,dword ptr [ebx+2F4];TPageControl.FActivePage:TTabSheet
 00535602    xchg        ecx,edx
 00535604    call        TPageControl.FindNextPage
 00535609    mov         edi,eax
 0053560B    test        edi,edi
>0053560D    je          0053563A
 0053560F    cmp         edi,dword ptr [ebx+2F4];TPageControl.FActivePage:TTabSheet
>00535615    je          0053563A
 00535617    mov         eax,ebx
 00535619    mov         si,0FFAD
 0053561D    call        @CallDynaInst;TCustomTabControl.sub_00533AFC
 00535622    test        al,al
>00535624    je          0053563A
 00535626    mov         edx,edi
 00535628    mov         eax,ebx
 0053562A    call        TPageControl.SetActivePage
 0053562F    mov         eax,ebx
 00535631    mov         si,0FFAC
 00535635    call        @CallDynaInst;TPageControl.sub_00533B2C
 0053563A    pop         edi
 0053563B    pop         esi
 0053563C    pop         ebx
 0053563D    ret
*}
end;

//00535640
procedure TPageControl.SetActivePage(Value:TTabSheet);
begin
{*
 00535640    push        ebp
 00535641    mov         ebp,esp
 00535643    push        ecx
 00535644    push        esi
 00535645    mov         esi,edx
 00535647    mov         dword ptr [ebp-4],eax
 0053564A    test        esi,esi
>0053564C    je          00535659
 0053564E    mov         eax,dword ptr [esi+294];TTabSheet.FPageControl:TPageControl
 00535654    cmp         eax,dword ptr [ebp-4]
>00535657    jne         005356CD
 00535659    mov         eax,dword ptr [ebp-4]
 0053565C    mov         byte ptr [eax+300],1;TPageControl.FInSetActivePage:Boolean
 00535663    xor         eax,eax
 00535665    push        ebp
 00535666    push        5356C6
 0053566B    push        dword ptr fs:[eax]
 0053566E    mov         dword ptr fs:[eax],esp
 00535671    mov         edx,esi
 00535673    mov         eax,dword ptr [ebp-4]
 00535676    call        005350C8
 0053567B    test        esi,esi
>0053567D    jne         0053568F
 0053567F    or          edx,0FFFFFFFF
 00535682    mov         eax,dword ptr [ebp-4]
 00535685    mov         ecx,dword ptr [eax]
 00535687    call        dword ptr [ecx+114];TPageControl.SetTabIndex
>0053568D    jmp         005356AE
 0053568F    mov         eax,dword ptr [ebp-4]
 00535692    cmp         esi,dword ptr [eax+2F4];TPageControl.FActivePage:TTabSheet
>00535698    jne         005356AE
 0053569A    mov         eax,esi
 0053569C    call        005349C4
 005356A1    mov         edx,eax
 005356A3    mov         eax,dword ptr [ebp-4]
 005356A6    mov         ecx,dword ptr [eax]
 005356A8    call        dword ptr [ecx+114];TPageControl.SetTabIndex
 005356AE    xor         eax,eax
 005356B0    pop         edx
 005356B1    pop         ecx
 005356B2    pop         ecx
 005356B3    mov         dword ptr fs:[eax],edx
 005356B6    push        5356CD
 005356BB    mov         eax,dword ptr [ebp-4]
 005356BE    mov         byte ptr [eax+300],0;TPageControl.FInSetActivePage:Boolean
 005356C5    ret
>005356C6    jmp         @HandleFinally
>005356CB    jmp         005356BB
 005356CD    pop         esi
 005356CE    pop         ecx
 005356CF    pop         ebp
 005356D0    ret
*}
end;

//005356D4
procedure TPageControl.SetChildOrder(Child:Classes.TComponent; Order:Integer);
begin
{*
 005356D4    mov         eax,edx
 005356D6    mov         edx,ecx
 005356D8    call        TTabSheet.SetPageIndex
 005356DD    ret
*}
end;

//005356E0
{*procedure sub_005356E0(?:?);
begin
 005356E0    push        ebx
 005356E1    push        esi
 005356E2    mov         esi,edx
 005356E4    mov         ebx,eax
 005356E6    mov         eax,esi
 005356E8    mov         edx,dword ptr ds:[51EA10];TTabSheet
 005356EE    call        @IsClass
 005356F3    test        al,al
>005356F5    je          00535708
 005356F7    cmp         ebx,dword ptr [esi+294]
>005356FD    jne         00535708
 005356FF    mov         edx,esi
 00535701    mov         eax,ebx
 00535703    call        TPageControl.SetActivePage
 00535708    mov         edx,esi
 0053570A    mov         eax,ebx
 0053570C    call        004EFA28
 00535711    pop         esi
 00535712    pop         ebx
 00535713    ret
end;*}

//00535714
procedure sub_00535714(?:TPageControl; ?:TTabSheet);
begin
{*
 00535714    push        ebp
 00535715    mov         ebp,esp
 00535717    push        0
 00535719    push        ebx
 0053571A    push        esi
 0053571B    mov         esi,edx
 0053571D    mov         ebx,eax
 0053571F    xor         eax,eax
 00535721    push        ebp
 00535722    push        535767
 00535727    push        dword ptr fs:[eax]
 0053572A    mov         dword ptr fs:[eax],esp
 0053572D    lea         edx,[ebp-4]
 00535730    mov         eax,esi
 00535732    call        TControl.GetText
 00535737    mov         eax,dword ptr [ebp-4]
 0053573A    push        eax
 0053573B    mov         eax,esi
 0053573D    call        005349C4
 00535742    push        eax
 00535743    mov         eax,ebx
 00535745    call        005348A0
 0053574A    pop         edx
 0053574B    pop         ecx
 0053574C    mov         ebx,dword ptr [eax]
 0053574E    call        dword ptr [ebx+20]
 00535751    xor         eax,eax
 00535753    pop         edx
 00535754    pop         ecx
 00535755    pop         ecx
 00535756    mov         dword ptr fs:[eax],edx
 00535759    push        53576E
 0053575E    lea         eax,[ebp-4]
 00535761    call        @UStrClr
 00535766    ret
>00535767    jmp         @HandleFinally
>0053576C    jmp         0053575E
 0053576E    pop         esi
 0053576F    pop         ebx
 00535770    pop         ecx
 00535771    pop         ebp
 00535772    ret
*}
end;

//00535774
procedure sub_00535774;
begin
{*
 00535774    push        ebx
 00535775    mov         ebx,eax
 00535777    mov         eax,ebx
 00535779    call        TPageControl.GetTabIndex
 0053577E    test        eax,eax
>00535780    jl          005357A2
 00535782    mov         eax,ebx
 00535784    call        TPageControl.GetTabIndex
 00535789    push        eax
 0053578A    mov         eax,ebx
 0053578C    call        005348A0
 00535791    pop         edx
 00535792    mov         ecx,dword ptr [eax]
 00535794    call        dword ptr [ecx+18]
 00535797    mov         edx,eax
 00535799    mov         eax,ebx
 0053579B    call        TPageControl.SetActivePage
 005357A0    pop         ebx
 005357A1    ret
 005357A2    xor         edx,edx
 005357A4    mov         eax,ebx
 005357A6    call        TPageControl.SetActivePage
 005357AB    pop         ebx
 005357AC    ret
*}
end;

//005357B0
procedure TPageControl.CMDesignHitTest(Message:Messages.TWMMouse);
begin
{*
 005357B0    push        ebx
 005357B1    push        esi
 005357B2    push        edi
 005357B3    add         esp,0FFFFFFE8
 005357B6    mov         edi,edx
 005357B8    mov         ebx,eax
 005357BA    lea         eax,[edi+8]
 005357BD    mov         dword ptr [esp],eax
 005357C0    mov         eax,dword ptr [esp]
 005357C3    movsx       eax,word ptr [eax]
 005357C6    mov         dword ptr [esp+4],eax
 005357CA    mov         eax,dword ptr [esp]
 005357CD    movsx       eax,word ptr [eax+2]
 005357D1    mov         dword ptr [esp+8],eax
 005357D5    mov         eax,dword ptr [esp+4]
 005357D9    mov         dword ptr [esp+0C],eax
 005357DD    mov         eax,dword ptr [esp+8]
 005357E1    mov         dword ptr [esp+10],eax
 005357E5    lea         eax,[esp+0C]
 005357E9    push        eax
 005357EA    mov         eax,ebx
 005357EC    call        TWinControl.GetHandle
 005357F1    xor         ecx,ecx
 005357F3    mov         edx,130D
 005357F8    call        SendStructMessage
 005357FD    mov         esi,eax
 005357FF    test        esi,esi
>00535801    jl          00535815
 00535803    mov         eax,ebx
 00535805    call        TPageControl.GetTabIndex
 0053580A    cmp         esi,eax
>0053580C    je          00535815
 0053580E    mov         dword ptr [edi+0C],1
 00535815    add         esp,18
 00535818    pop         edi
 00535819    pop         esi
 0053581A    pop         ebx
 0053581B    ret
*}
end;

//0053581C
{*procedure TPageControl.CMDialogKey(?:?);
begin
 0053581C    push        ebx
 0053581D    push        esi
 0053581E    push        edi
 0053581F    mov         edi,edx
 00535821    mov         ebx,eax
 00535823    mov         eax,ebx
 00535825    mov         si,0FFB1
 00535829    call        @CallDynaInst;TWinControl.sub_004EFDB8
 0053582E    test        al,al
>00535830    jne         00535849
 00535832    call        user32.GetFocus
 00535837    push        eax
 00535838    mov         eax,ebx
 0053583A    call        TWinControl.GetHandle
 0053583F    push        eax
 00535840    call        user32.IsChild
 00535845    test        eax,eax
>00535847    je          0053587B
 00535849    cmp         word ptr [edi+4],9
>0053584E    jne         0053587B
 00535850    push        11
 00535852    call        user32.GetKeyState
 00535857    test        ax,ax
>0053585A    jge         0053587B
 0053585C    push        10
 0053585E    call        user32.GetKeyState
 00535863    test        ax,ax
 00535866    setge       dl
 00535869    mov         cl,1
 0053586B    mov         eax,ebx
 0053586D    call        TPageControl.SelectNextPage
 00535872    mov         dword ptr [edi+0C],1
>00535879    jmp         00535884
 0053587B    mov         edx,edi
 0053587D    mov         eax,ebx
 0053587F    call        TWinControl.CMDialogKey
 00535884    pop         edi
 00535885    pop         esi
 00535886    pop         ebx
 00535887    ret
end;*}

//00535888
{*procedure TPageControl.CMDockClient(?:?);
begin
 00535888    push        ebp
 00535889    mov         ebp,esp
 0053588B    add         esp,0FFFFFFF4
 0053588E    push        ebx
 0053588F    push        esi
 00535890    push        edi
 00535891    xor         ecx,ecx
 00535893    mov         dword ptr [ebp-0C],ecx
 00535896    mov         edi,edx
 00535898    mov         dword ptr [ebp-4],eax
 0053589B    xor         eax,eax
 0053589D    push        ebp
 0053589E    push        535A16
 005358A3    push        dword ptr fs:[eax]
 005358A6    mov         dword ptr fs:[eax],esp
 005358A9    xor         eax,eax
 005358AB    mov         dword ptr [edi+0C],eax
 005358AE    mov         eax,dword ptr [edi+4]
 005358B1    mov         eax,dword ptr [eax+40]
 005358B4    mov         dword ptr [ebp-8],eax
 005358B7    mov         eax,dword ptr [ebp-4]
 005358BA    call        005354A0
 005358BF    mov         esi,eax
 005358C1    dec         esi
 005358C2    test        esi,esi
>005358C4    jl          00535900
 005358C6    inc         esi
 005358C7    xor         ebx,ebx
 005358C9    mov         edx,ebx
 005358CB    mov         eax,dword ptr [ebp-4]
 005358CE    call        TPageControl.GetPage
 005358D3    mov         edx,dword ptr [ebp-8]
 005358D6    cmp         eax,dword ptr [edx+40]
>005358D9    jne         005358FC
 005358DB    mov         edx,ebx
 005358DD    mov         eax,dword ptr [ebp-4]
 005358E0    call        TPageControl.GetPage
 005358E5    push        eax
 005358E6    mov         eax,dword ptr [ebp-4]
 005358E9    call        005354A0
 005358EE    mov         edx,eax
 005358F0    dec         edx
 005358F1    pop         eax
 005358F2    call        TTabSheet.SetPageIndex
>005358F7    jmp         00535A00
 005358FC    inc         ebx
 005358FD    dec         esi
>005358FE    jne         005358C9
 00535900    mov         ecx,dword ptr [ebp-4]
 00535903    mov         dl,1
 00535905    mov         eax,[0051EA10];TTabSheet
 0053590A    call        TTabSheet.Create;TTabSheet.Create
 0053590F    mov         ebx,eax
 00535911    mov         eax,dword ptr [ebp-4]
 00535914    mov         dword ptr [eax+2F8],ebx;TPageControl.FNewDockSheet:TTabSheet
 0053591A    xor         eax,eax
 0053591C    push        ebp
 0053591D    push        5359F9
 00535922    push        dword ptr fs:[eax]
 00535925    mov         dword ptr fs:[eax],esp
 00535928    xor         eax,eax
 0053592A    push        ebp
 0053592B    push        53598D
 00535930    push        dword ptr fs:[eax]
 00535933    mov         dword ptr fs:[eax],esp
 00535936    mov         eax,dword ptr [ebp-8]
 00535939    mov         edx,dword ptr ds:[5B7120];TCustomForm
 0053593F    call        @IsClass
 00535944    test        al,al
>00535946    je          0053595D
 00535948    lea         edx,[ebp-0C]
 0053594B    mov         eax,dword ptr [ebp-8]
 0053594E    call        TControl.GetText
 00535953    mov         edx,dword ptr [ebp-0C]
 00535956    mov         eax,ebx
 00535958    call        TControl.SetText
 0053595D    mov         eax,dword ptr [ebp-4]
 00535960    mov         eax,dword ptr [eax+2F8];TPageControl.FNewDockSheet:TTabSheet
 00535966    mov         edx,dword ptr [ebp-4]
 00535969    call        00534A80
 0053596E    mov         eax,dword ptr [edi+4]
 00535971    lea         ecx,[eax+4C]
 00535974    mov         edx,dword ptr [ebp-4]
 00535977    mov         eax,dword ptr [ebp-8]
 0053597A    mov         si,0FFCB
 0053597E    call        @CallDynaInst
 00535983    xor         eax,eax
 00535985    pop         edx
 00535986    pop         ecx
 00535987    pop         ecx
 00535988    mov         dword ptr fs:[eax],edx
>0053598B    jmp         005359AA
>0053598D    jmp         @HandleAnyException
 00535992    mov         eax,dword ptr [ebp-4]
 00535995    mov         eax,dword ptr [eax+2F8];TPageControl.FNewDockSheet:TTabSheet
 0053599B    call        TObject.Free
 005359A0    call        @RaiseAgain
 005359A5    call        @DoneExcept
 005359AA    mov         eax,dword ptr [ebp-8]
 005359AD    movzx       ebx,byte ptr [eax+69]
 005359B1    mov         eax,dword ptr [ebp-4]
 005359B4    mov         eax,dword ptr [eax+2F8];TPageControl.FNewDockSheet:TTabSheet
 005359BA    mov         edx,ebx
 005359BC    call        TTabSheet.SetTabVisible
 005359C1    test        bl,bl
>005359C3    je          005359D6
 005359C5    mov         eax,dword ptr [ebp-4]
 005359C8    mov         edx,dword ptr [eax+2F8];TPageControl.FNewDockSheet:TTabSheet
 005359CE    mov         eax,dword ptr [ebp-4]
 005359D1    call        TPageControl.SetActivePage
 005359D6    mov         dl,5
 005359D8    mov         eax,dword ptr [ebp-8]
 005359DB    call        TGroupBox.SetAlign
 005359E0    xor         eax,eax
 005359E2    pop         edx
 005359E3    pop         ecx
 005359E4    pop         ecx
 005359E5    mov         dword ptr fs:[eax],edx
 005359E8    push        535A00
 005359ED    mov         eax,dword ptr [ebp-4]
 005359F0    xor         edx,edx
 005359F2    mov         dword ptr [eax+2F8],edx;TPageControl.FNewDockSheet:TTabSheet
 005359F8    ret
>005359F9    jmp         @HandleFinally
>005359FE    jmp         005359ED
 00535A00    xor         eax,eax
 00535A02    pop         edx
 00535A03    pop         ecx
 00535A04    pop         ecx
 00535A05    mov         dword ptr fs:[eax],edx
 00535A08    push        535A1D
 00535A0D    lea         eax,[ebp-0C]
 00535A10    call        @UStrClr
 00535A15    ret
>00535A16    jmp         @HandleFinally
>00535A1B    jmp         00535A0D
 00535A1D    pop         edi
 00535A1E    pop         esi
 00535A1F    pop         ebx
 00535A20    mov         esp,ebp
 00535A22    pop         ebp
 00535A23    ret
end;*}

//00535A24
{*procedure TPageControl.sub_00535A24(?:?);
begin
 00535A24    push        ebp
 00535A25    mov         ebp,esp
 00535A27    add         esp,0FFFFFFEC
 00535A2A    push        ebx
 00535A2B    push        esi
 00535A2C    push        edi
 00535A2D    xor         ecx,ecx
 00535A2F    mov         dword ptr [ebp-4],ecx
 00535A32    mov         esi,edx
 00535A34    mov         ebx,eax
 00535A36    xor         eax,eax
 00535A38    push        ebp
 00535A39    push        535B1A
 00535A3E    push        dword ptr fs:[eax]
 00535A41    mov         dword ptr fs:[eax],esp
 00535A44    mov         edx,dword ptr [esi+4]
 00535A47    mov         eax,ebx
 00535A49    call        00535438
 00535A4E    mov         edi,eax
 00535A50    test        edi,edi
>00535A52    je          00535AFB
 00535A58    mov         eax,dword ptr [esi+8]
 00535A5B    mov         eax,dword ptr [eax]
 00535A5D    sub         eax,0C
>00535A60    je          00535A72
 00535A62    sub         eax,0AFFF
>00535A67    je          00535AEE
>00535A6D    jmp         00535AFB
 00535A72    lea         eax,[ebp-4]
 00535A75    mov         edx,dword ptr [esi+8]
 00535A78    mov         edx,dword ptr [edx+8]
 00535A7B    call        @UStrFromPWChar
 00535A80    mov         eax,dword ptr [ebp-4]
 00535A83    test        eax,eax
>00535A85    je          00535A8C
 00535A87    sub         eax,4
 00535A8A    mov         eax,dword ptr [eax]
 00535A8C    test        eax,eax
>00535A8E    jle         00535AE2
 00535A90    mov         dword ptr [ebp-0C],eax
 00535A93    mov         dword ptr [ebp-8],1
 00535A9A    mov         eax,dword ptr [ebp-4]
 00535A9D    mov         edx,dword ptr [ebp-8]
 00535AA0    movzx       eax,word ptr [eax+edx*2-2]
 00535AA5    mov         word ptr [ebp-0E],ax
 00535AA9    mov         eax,535B28
 00535AAE    mov         dword ptr [ebp-14],eax
 00535AB1    mov         eax,dword ptr [ebp-14]
 00535AB4    movzx       edx,word ptr [ebp-0E]
 00535AB8    cmp         dx,0FF
>00535ABD    ja          00535AC5
 00535ABF    movzx       edx,dx
 00535AC2    bt          dword ptr [eax],edx
 00535AC5    setb        al
 00535AC8    test        al,al
>00535ACA    je          00535ADA
 00535ACC    mov         edx,dword ptr [ebp-8]
 00535ACF    dec         edx
 00535AD0    lea         eax,[ebp-4]
 00535AD3    call        @UStrSetLength
>00535AD8    jmp         00535AE2
 00535ADA    inc         dword ptr [ebp-8]
 00535ADD    dec         dword ptr [ebp-0C]
>00535AE0    jne         00535A9A
 00535AE2    mov         edx,dword ptr [ebp-4]
 00535AE5    mov         eax,edi
 00535AE7    call        TControl.SetText
>00535AEC    jmp         00535AFB
 00535AEE    mov         eax,dword ptr [esi+8]
 00535AF1    mov         edx,dword ptr [eax+4]
 00535AF4    mov         eax,edi
 00535AF6    call        TTabSheet.SetTabVisible
 00535AFB    mov         edx,esi
 00535AFD    mov         eax,ebx
 00535AFF    mov         ecx,dword ptr [eax]
 00535B01    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 00535B04    xor         eax,eax
 00535B06    pop         edx
 00535B07    pop         ecx
 00535B08    pop         ecx
 00535B09    mov         dword ptr fs:[eax],edx
 00535B0C    push        535B21
 00535B11    lea         eax,[ebp-4]
 00535B14    call        @UStrClr
 00535B19    ret
>00535B1A    jmp         @HandleFinally
>00535B1F    jmp         00535B11
 00535B21    pop         edi
 00535B22    pop         esi
 00535B23    pop         ebx
 00535B24    mov         esp,ebp
 00535B26    pop         ebp
 00535B27    ret
end;*}

//00535B48
{*procedure TPageControl.CMUndockClient(?:?);
begin
 00535B48    push        ebx
 00535B49    push        esi
 00535B4A    mov         esi,edx
 00535B4C    mov         ebx,eax
 00535B4E    xor         eax,eax
 00535B50    mov         dword ptr [esi+0C],eax
 00535B53    mov         edx,dword ptr [esi+8]
 00535B56    mov         eax,ebx
 00535B58    call        00535438
 00535B5D    test        eax,eax
>00535B5F    je          00535B71
 00535B61    mov         dword ptr [ebx+2FC],eax;TPageControl.FUndockingPage:TTabSheet
 00535B67    mov         eax,dword ptr [esi+8]
 00535B6A    xor         edx,edx
 00535B6C    call        TGroupBox.SetAlign
 00535B71    pop         esi
 00535B72    pop         ebx
 00535B73    ret
end;*}

//00535B74
{*function sub_00535B74(?:TPageControl; ?:?):?;
begin
 00535B74    push        ebx
 00535B75    push        esi
 00535B76    push        edi
 00535B77    push        ebp
 00535B78    add         esp,0FFFFFFEC
 00535B7B    mov         esi,edx
 00535B7D    lea         edi,[esp]
 00535B80    movs        dword ptr [edi],dword ptr [esi]
 00535B81    movs        dword ptr [edi],dword ptr [esi]
 00535B82    mov         ebx,eax
 00535B84    xor         ebp,ebp
 00535B86    cmp         byte ptr [ebx+207],0
>00535B8D    je          00535BF9
 00535B8F    mov         eax,dword ptr [esp]
 00535B92    mov         dword ptr [esp+8],eax
 00535B96    mov         eax,dword ptr [esp+4]
 00535B9A    mov         dword ptr [esp+0C],eax
 00535B9E    lea         eax,[esp+8]
 00535BA2    push        eax
 00535BA3    mov         eax,ebx
 00535BA5    call        TWinControl.GetHandle
 00535BAA    xor         ecx,ecx
 00535BAC    mov         edx,130D
 00535BB1    call        SendStructMessage
 00535BB6    test        eax,eax
>00535BB8    jl          00535BF9
 00535BBA    xor         esi,esi
 00535BBC    mov         edi,eax
 00535BBE    test        edi,edi
>00535BC0    jl          00535BD5
 00535BC2    inc         edi
 00535BC3    push        1
 00535BC5    mov         cl,1
 00535BC7    mov         edx,esi
 00535BC9    mov         eax,ebx
 00535BCB    call        TPageControl.FindNextPage
 00535BD0    mov         esi,eax
 00535BD2    dec         edi
>00535BD3    jne         00535BC3
 00535BD5    test        esi,esi
>00535BD7    je          00535BF9
 00535BD9    mov         eax,esi
 00535BDB    call        TWinControl.GetControlCount
 00535BE0    test        eax,eax
>00535BE2    jle         00535BF9
 00535BE4    xor         edx,edx
 00535BE6    mov         eax,esi
 00535BE8    call        TWinControl.GetControl
 00535BED    mov         ebp,eax
 00535BEF    cmp         ebx,dword ptr [ebp+0A0];TControl.FHostDockSite:TWinControl
>00535BF5    je          00535BF9
 00535BF7    xor         ebp,ebp
 00535BF9    mov         eax,ebp
 00535BFB    add         esp,14
 00535BFE    pop         ebp
 00535BFF    pop         edi
 00535C00    pop         esi
 00535C01    pop         ebx
 00535C02    ret
end;*}

//00535C04
{*procedure TPageControl.WMLButtonDown(?:?);
begin
 00535C04    push        ebx
 00535C05    push        esi
 00535C06    add         esp,0FFFFFFF4
 00535C09    mov         esi,edx
 00535C0B    mov         ebx,eax
 00535C0D    mov         edx,esi
 00535C0F    mov         eax,ebx
 00535C11    call        TControl.WMLButtonDown
 00535C16    lea         eax,[esi+8]
 00535C19    mov         dword ptr [esp],eax
 00535C1C    mov         eax,dword ptr [esp]
 00535C1F    movsx       eax,word ptr [eax]
 00535C22    mov         dword ptr [esp+4],eax
 00535C26    mov         eax,dword ptr [esp]
 00535C29    movsx       eax,word ptr [eax+2]
 00535C2D    mov         dword ptr [esp+8],eax
 00535C31    lea         edx,[esp+4]
 00535C35    mov         eax,ebx
 00535C37    call        00535B74
 00535C3C    test        eax,eax
>00535C3E    je          00535C53
 00535C40    cmp         byte ptr [ebx+2AD],0;TPageControl.FStyle:TTabStyle
>00535C47    jne         00535C53
 00535C49    or          ecx,0FFFFFFFF
 00535C4C    xor         edx,edx
 00535C4E    call        TControl.BeginDrag
 00535C53    add         esp,0C
 00535C56    pop         esi
 00535C57    pop         ebx
 00535C58    ret
end;*}

//00535C5C
{*procedure TPageControl.WMLButtonDblClk(?:?);
begin
 00535C5C    push        ebx
 00535C5D    push        esi
 00535C5E    add         esp,0FFFFFFF4
 00535C61    mov         esi,edx
 00535C63    mov         ebx,eax
 00535C65    mov         edx,esi
 00535C67    mov         eax,ebx
 00535C69    call        TControl.WMLButtonDblClk
 00535C6E    lea         eax,[esi+8]
 00535C71    mov         dword ptr [esp],eax
 00535C74    mov         eax,dword ptr [esp]
 00535C77    movsx       eax,word ptr [eax]
 00535C7A    mov         dword ptr [esp+4],eax
 00535C7E    mov         eax,dword ptr [esp]
 00535C81    movsx       eax,word ptr [eax+2]
 00535C85    mov         dword ptr [esp+8],eax
 00535C89    lea         edx,[esp+4]
 00535C8D    mov         eax,ebx
 00535C8F    call        00535B74
 00535C94    test        eax,eax
>00535C96    je          00535CA3
 00535C98    push        0
 00535C9A    xor         ecx,ecx
 00535C9C    xor         edx,edx
 00535C9E    call        TControl.ManualDock
 00535CA3    add         esp,0C
 00535CA6    pop         esi
 00535CA7    pop         ebx
 00535CA8    ret
end;*}

//00535CAC
procedure sub_00535CAC(?:TPageControl);
begin
{*
 00535CAC    mov         edx,dword ptr [eax+2F4]
 00535CB2    test        edx,edx
>00535CB4    je          00535CBE
 00535CB6    mov         eax,edx
 00535CB8    call        TTabSheet.GetPageIndex
 00535CBD    ret
 00535CBE    or          eax,0FFFFFFFF
 00535CC1    ret
*}
end;

//00535CFC
procedure TPageControl.SetTabIndex(Value:Integer);
begin
{*
 00535CFC    push        ebx
 00535CFD    push        esi
 00535CFE    mov         esi,edx
 00535D00    mov         ebx,eax
 00535D02    mov         edx,esi
 00535D04    mov         eax,ebx
 00535D06    call        00534128
 00535D0B    cmp         byte ptr [ebx+300],0;TPageControl.FInSetActivePage:Boolean
>00535D12    jne         00535D50
 00535D14    test        esi,esi
>00535D16    jl          00535D50
 00535D18    mov         eax,dword ptr [ebx+2F0];TPageControl.FPages:TList
 00535D1E    cmp         esi,dword ptr [eax+8];TList.FCount:Integer
>00535D21    jge         00535D50
 00535D23    mov         edx,esi
 00535D25    mov         eax,ebx
 00535D27    call        TPageControl.GetPage
 00535D2C    cmp         byte ptr [eax+298],0;TTabSheet.FTabVisible:Boolean
>00535D33    je          00535D50
 00535D35    mov         edx,esi
 00535D37    mov         eax,ebx
 00535D39    call        00535D8C
 00535D3E    mov         edx,eax
 00535D40    mov         eax,ebx
 00535D42    call        TPageControl.GetPage
 00535D47    mov         edx,eax
 00535D49    mov         eax,ebx
 00535D4B    call        TPageControl.SetActivePage
 00535D50    pop         esi
 00535D51    pop         ebx
 00535D52    ret
*}
end;

//00535D54
{*procedure TPageControl.WMEraseBkgnd(?:?);
begin
 00535D54    push        ebx
 00535D55    push        esi
 00535D56    mov         esi,edx
 00535D58    mov         ebx,eax
 00535D5A    call        StyleServices
 00535D5F    mov         edx,dword ptr [eax]
 00535D61    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00535D64    test        al,al
>00535D66    je          00535D73
 00535D68    mov         eax,ebx
 00535D6A    call        TGroupBox.GetParentBackground
 00535D6F    test        al,al
>00535D71    jne         00535D7F
 00535D73    mov         edx,esi
 00535D75    mov         eax,ebx
 00535D77    call        TWinControl.WMEraseBkgnd
 00535D7C    pop         esi
 00535D7D    pop         ebx
 00535D7E    ret
 00535D7F    mov         dword ptr [esi+0C],1
 00535D86    pop         esi
 00535D87    pop         ebx
 00535D88    ret
end;*}

//00535D8C
{*function sub_00535D8C(?:TPageControl; ?:Integer):?;
begin
 00535D8C    push        ebx
 00535D8D    push        esi
 00535D8E    push        edi
 00535D8F    push        ebp
 00535D90    mov         edi,eax
 00535D92    mov         ebp,edx
 00535D94    mov         ebx,edx
 00535D96    test        ebx,ebx
>00535D98    jl          00535DB4
 00535D9A    inc         ebx
 00535D9B    xor         esi,esi
 00535D9D    mov         edx,esi
 00535D9F    mov         eax,edi
 00535DA1    call        TPageControl.GetPage
 00535DA6    cmp         byte ptr [eax+298],0;TTabSheet.FTabVisible:Boolean
>00535DAD    jne         00535DB0
 00535DAF    inc         ebp
 00535DB0    inc         esi
 00535DB1    dec         ebx
>00535DB2    jne         00535D9D
 00535DB4    mov         eax,ebp
 00535DB6    pop         ebp
 00535DB7    pop         edi
 00535DB8    pop         esi
 00535DB9    pop         ebx
 00535DBA    ret
end;*}

//00535DBC
constructor TStatusPanel.Create(Collection:TCollection);
begin
{*
 00535DBC    push        ebx
 00535DBD    push        esi
 00535DBE    test        dl,dl
>00535DC0    je          00535DCA
 00535DC2    add         esp,0FFFFFFF0
 00535DC5    call        @ClassCreate
 00535DCA    mov         ebx,edx
 00535DCC    mov         esi,eax
 00535DCE    mov         dword ptr [esi+10],32;TStatusPanel.FWidth:Integer
 00535DD5    mov         byte ptr [esi+15],1;TStatusPanel.FBevel:TStatusPanelBevel
 00535DD9    mov         byte ptr [esi+17],1;TStatusPanel.FParentBiDiMode:Boolean
 00535DDD    xor         edx,edx
 00535DDF    mov         eax,esi
 00535DE1    call        TCollectionItem.Create
 00535DE6    mov         eax,esi
 00535DE8    call        TStatusPanel.ParentBiDiModeChanged
 00535DED    mov         eax,esi
 00535DEF    test        bl,bl
>00535DF1    je          00535E02
 00535DF3    call        @AfterConstruction
 00535DF8    pop         dword ptr fs:[0]
 00535DFF    add         esp,0C
 00535E02    mov         eax,esi
 00535E04    pop         esi
 00535E05    pop         ebx
 00535E06    ret
*}
end;

//00535E08
procedure TStatusPanel.Assign(Source:TPersistent);
begin
{*
 00535E08    push        ebx
 00535E09    push        esi
 00535E0A    push        edi
 00535E0B    mov         esi,edx
 00535E0D    mov         ebx,eax
 00535E0F    mov         eax,esi
 00535E11    mov         edx,dword ptr ds:[520368];TStatusPanel
 00535E17    call        @IsClass
 00535E1C    test        al,al
>00535E1E    je          00535E59
 00535E20    mov         edi,esi
 00535E22    mov         edx,dword ptr [edi+0C]
 00535E25    mov         eax,ebx
 00535E27    call        TStatusPanel.SetText
 00535E2C    mov         edx,dword ptr [edi+10]
 00535E2F    mov         eax,ebx
 00535E31    call        TStatusPanel.SetWidth
 00535E36    movzx       edx,byte ptr [edi+14]
 00535E3A    mov         eax,ebx
 00535E3C    call        TStatusPanel.SetAlignment
 00535E41    movzx       edx,byte ptr [edi+15]
 00535E45    mov         eax,ebx
 00535E47    call        TStatusPanel.SetBevel
 00535E4C    movzx       edx,byte ptr [edi+18]
 00535E50    mov         eax,ebx
 00535E52    call        TStatusPanel.SetStyle
>00535E57    jmp         00535E62
 00535E59    mov         edx,esi
 00535E5B    mov         eax,ebx
 00535E5D    call        TPersistent.Assign
 00535E62    pop         edi
 00535E63    pop         esi
 00535E64    pop         ebx
 00535E65    ret
*}
end;

//00535E68
procedure TStatusPanel.SetBiDiMode(Value:TBiDiMode);
begin
{*
 00535E68    cmp         dl,byte ptr [eax+16];TStatusPanel.FBiDiMode:TBiDiMode
>00535E6B    je          00535E7B
 00535E6D    mov         byte ptr [eax+16],dl;TStatusPanel.FBiDiMode:TBiDiMode
 00535E70    mov         byte ptr [eax+17],0;TStatusPanel.FParentBiDiMode:Boolean
 00535E74    xor         edx,edx
 00535E76    call        TCollectionItem.Changed
 00535E7B    ret
*}
end;

//00535E7C
procedure TStatusPanel.IsStoredBiDiMode(Value:TBiDiMode);
begin
{*
 00535E7C    movzx       eax,byte ptr [eax+17];TStatusPanel.FParentBiDiMode:Boolean
 00535E80    xor         al,1
 00535E82    ret
*}
end;

//00535E84
procedure TStatusPanel.SetParentBiDiMode(Value:Boolean);
begin
{*
 00535E84    cmp         dl,byte ptr [eax+17];TStatusPanel.FParentBiDiMode:Boolean
>00535E87    je          00535E91
 00535E89    mov         byte ptr [eax+17],dl;TStatusPanel.FParentBiDiMode:Boolean
 00535E8C    call        TStatusPanel.ParentBiDiModeChanged
 00535E91    ret
*}
end;

//00535E94
procedure TStatusPanel.ParentBiDiModeChanged;
begin
{*
 00535E94    push        ebx
 00535E95    push        esi
 00535E96    mov         ebx,eax
 00535E98    cmp         byte ptr [ebx+17],0;TStatusPanel.FParentBiDiMode:Boolean
>00535E9C    je          00535ECA
 00535E9E    mov         eax,ebx
 00535EA0    mov         si,0FFFF
 00535EA4    call        @CallDynaInst;TCollectionItem.sub_0048EDE4
 00535EA9    test        eax,eax
>00535EAB    je          00535ECA
 00535EAD    mov         eax,ebx
 00535EAF    mov         si,0FFFF
 00535EB3    call        @CallDynaInst;TCollectionItem.sub_0048EDE4
 00535EB8    mov         eax,dword ptr [eax+18]
 00535EBB    movzx       edx,byte ptr [eax+71]
 00535EBF    mov         eax,ebx
 00535EC1    call        TStatusPanel.SetBiDiMode
 00535EC6    mov         byte ptr [ebx+17],1;TStatusPanel.FParentBiDiMode:Boolean
 00535ECA    pop         esi
 00535ECB    pop         ebx
 00535ECC    ret
*}
end;

//00535ED0
function TStatusPanel.UseRightToLeftReading:Boolean;
begin
{*
 00535ED0    mov         edx,dword ptr ds:[7C4EF4];^gvar_007C7CB8:Cardinal
 00535ED6    cmp         byte ptr [edx+0D],0
>00535EDA    je          00535EE2
 00535EDC    cmp         byte ptr [eax+16],0;TStatusPanel.FBiDiMode:TBiDiMode
>00535EE0    jne         00535EE5
 00535EE2    xor         eax,eax
 00535EE4    ret
 00535EE5    mov         al,1
 00535EE7    ret
*}
end;

//00535EE8
function TStatusPanel.UseRightToLeftAlignment:Boolean;
begin
{*
 00535EE8    mov         edx,dword ptr ds:[7C4EF4];^gvar_007C7CB8:Cardinal
 00535EEE    cmp         byte ptr [edx+0D],0
>00535EF2    je          00535EFA
 00535EF4    cmp         byte ptr [eax+16],1;TStatusPanel.FBiDiMode:TBiDiMode
>00535EF8    je          00535EFD
 00535EFA    xor         eax,eax
 00535EFC    ret
 00535EFD    mov         al,1
 00535EFF    ret
*}
end;

//00535F00
{*procedure TStatusPanel.GetDisplayName(?:?);
begin
 00535F00    push        ebx
 00535F01    push        esi
 00535F02    mov         esi,edx
 00535F04    mov         ebx,eax
 00535F06    mov         eax,esi
 00535F08    mov         edx,dword ptr [ebx+0C];TStatusPanel.FText:string
 00535F0B    call        @UStrAsg
 00535F10    cmp         dword ptr [esi],0
>00535F13    jne         00535F1E
 00535F15    mov         edx,esi
 00535F17    mov         eax,ebx
 00535F19    call        TCollectionItem.GetDisplayName
 00535F1E    pop         esi
 00535F1F    pop         ebx
 00535F20    ret
end;*}

//00535F24
procedure TStatusPanel.SetAlignment(Value:TAlignment);
begin
{*
 00535F24    cmp         dl,byte ptr [eax+14];TStatusPanel.FAlignment:TAlignment
>00535F27    je          00535F33
 00535F29    mov         byte ptr [eax+14],dl;TStatusPanel.FAlignment:TAlignment
 00535F2C    xor         edx,edx
 00535F2E    call        TCollectionItem.Changed
 00535F33    ret
*}
end;

//00535F34
procedure TStatusPanel.SetBevel(Value:TStatusPanelBevel);
begin
{*
 00535F34    cmp         dl,byte ptr [eax+15];TStatusPanel.FBevel:TStatusPanelBevel
>00535F37    je          00535F43
 00535F39    mov         byte ptr [eax+15],dl;TStatusPanel.FBevel:TStatusPanelBevel
 00535F3C    xor         edx,edx
 00535F3E    call        TCollectionItem.Changed
 00535F43    ret
*}
end;

//00535F44
procedure TStatusPanel.SetStyle(Value:TStatusPanelStyle);
begin
{*
 00535F44    cmp         dl,byte ptr [eax+18];TStatusPanel.FStyle:TStatusPanelStyle
>00535F47    je          00535F53
 00535F49    mov         byte ptr [eax+18],dl;TStatusPanel.FStyle:TStatusPanelStyle
 00535F4C    xor         edx,edx
 00535F4E    call        TCollectionItem.Changed
 00535F53    ret
*}
end;

//00535F54
procedure TStatusPanel.SetText(Value:string);
begin
{*
 00535F54    push        ebx
 00535F55    push        esi
 00535F56    mov         esi,edx
 00535F58    mov         ebx,eax
 00535F5A    mov         eax,dword ptr [ebx+0C];TStatusPanel.FText:string
 00535F5D    mov         edx,esi
 00535F5F    call        @UStrEqual
>00535F64    je          00535F79
 00535F66    lea         eax,[ebx+0C];TStatusPanel.FText:string
 00535F69    mov         edx,esi
 00535F6B    call        @UStrAsg
 00535F70    xor         edx,edx
 00535F72    mov         eax,ebx
 00535F74    call        TCollectionItem.Changed
 00535F79    pop         esi
 00535F7A    pop         ebx
 00535F7B    ret
*}
end;

//00535F7C
procedure TStatusPanel.SetWidth(Value:Integer);
begin
{*
 00535F7C    cmp         edx,dword ptr [eax+10];TStatusPanel.FWidth:Integer
>00535F7F    je          00535F8B
 00535F81    mov         dword ptr [eax+10],edx;TStatusPanel.FWidth:Integer
 00535F84    mov         dl,1
 00535F86    call        TCollectionItem.Changed
 00535F8B    ret
*}
end;

//00535F8C
constructor TStatusPanels.Create(StatusBar:TCustomStatusBar);
begin
{*
 00535F8C    push        ebx
 00535F8D    push        esi
 00535F8E    push        edi
 00535F8F    test        dl,dl
>00535F91    je          00535F9B
 00535F93    add         esp,0FFFFFFF0
 00535F96    call        @ClassCreate
 00535F9B    mov         esi,ecx
 00535F9D    mov         ebx,edx
 00535F9F    mov         edi,eax
 00535FA1    test        esi,esi
>00535FA3    je          00535FBC
 00535FA5    mov         eax,esi
 00535FA7    mov         edx,dword ptr [eax]
 00535FA9    call        dword ptr [edx+114];TCustomStatusBar.sub_00536D94
 00535FAF    mov         ecx,eax
 00535FB1    xor         edx,edx
 00535FB3    mov         eax,edi
 00535FB5    call        TCollection.Create
>00535FBA    jmp         00535FCB
 00535FBC    mov         ecx,dword ptr ds:[520368];TStatusPanel
 00535FC2    xor         edx,edx
 00535FC4    mov         eax,edi
 00535FC6    call        TCollection.Create
 00535FCB    mov         dword ptr [edi+18],esi;TStatusPanels......FStatusBar:TCustomStatusBar
 00535FCE    mov         eax,edi
 00535FD0    test        bl,bl
>00535FD2    je          00535FE3
 00535FD4    call        @AfterConstruction
 00535FD9    pop         dword ptr fs:[0]
 00535FE0    add         esp,0C
 00535FE3    mov         eax,edi
 00535FE5    pop         edi
 00535FE6    pop         esi
 00535FE7    pop         ebx
 00535FE8    ret
*}
end;

//00535FEC
function TStatusPanels.Add:TStatusPanel;
begin
{*
 00535FEC    push        ebx
 00535FED    mov         ebx,eax
 00535FEF    mov         eax,ebx
 00535FF1    call        TCollection.Add
 00535FF6    pop         ebx
 00535FF7    ret
*}
end;

//00535FF8
function TStatusPanels.GetItem(Index:Integer):TStatusPanel;
begin
{*
 00535FF8    push        ebx
 00535FF9    push        esi
 00535FFA    mov         esi,edx
 00535FFC    mov         ebx,eax
 00535FFE    mov         edx,esi
 00536000    mov         eax,ebx
 00536002    call        TCollection.GetItem
 00536007    pop         esi
 00536008    pop         ebx
 00536009    ret
*}
end;

//0053600C
procedure TStatusPanels.sub_0048EDE4;
begin
{*
 0053600C    mov         eax,dword ptr [eax+18];TStatusPanels.......FStatusBar:TCustomStatusBar
 0053600F    ret
*}
end;

//00536010
{*procedure sub_00536010(?:?);
begin
 00536010    push        ebx
 00536011    push        esi
 00536012    mov         esi,edx
 00536014    mov         ebx,eax
 00536016    test        esi,esi
>00536018    je          00536030
 0053601A    mov         eax,esi
 0053601C    call        TCollectionItem.GetIndex
 00536021    mov         edx,eax
 00536023    xor         ecx,ecx
 00536025    mov         eax,dword ptr [ebx+18];TStatusPanels........FStatusBar:TCustomStatusBar
 00536028    call        00536698
 0053602D    pop         esi
 0053602E    pop         ebx
 0053602F    ret
 00536030    xor         ecx,ecx
 00536032    mov         dl,1
 00536034    mov         eax,dword ptr [ebx+18];TStatusPanels.........FStatusBar:TCustomStatusBar
 00536037    call        0053682C
 0053603C    pop         esi
 0053603D    pop         ebx
 0053603E    ret
end;*}

//00536040
constructor TCustomStatusBar.Create(AOwner:TComponent);
begin
{*
 00536040    push        ebp
 00536041    mov         ebp,esp
 00536043    push        ecx
 00536044    push        ebx
 00536045    push        esi
 00536046    test        dl,dl
>00536048    je          00536052
 0053604A    add         esp,0FFFFFFF0
 0053604D    call        @ClassCreate
 00536052    mov         byte ptr [ebp-1],dl
 00536055    mov         ebx,eax
 00536057    xor         edx,edx
 00536059    mov         eax,ebx
 0053605B    call        TWinControl.Create
 00536060    mov         eax,[005360FC];0x2000CA gvar_005360FC
 00536065    mov         dword ptr [ebx+60],eax;TCustomStatusBar.FControlStyle:TControlStyle
 00536068    mov         edx,0FF00000F
 0053606D    mov         eax,ebx
 0053606F    call        TGroupBox.SetColor
 00536074    mov         edx,13
 00536079    mov         eax,ebx
 0053607B    call        TControl.SetHeight
 00536080    mov         dl,2
 00536082    mov         eax,ebx
 00536084    call        TGroupBox.SetAlign
 00536089    mov         eax,ebx
 0053608B    mov         edx,dword ptr [eax]
 0053608D    call        dword ptr [edx+10C];TCustomStatusBar.sub_00536D84
 00536093    mov         dword ptr [ebx+290],eax;TCustomStatusBar.FPanels:TStatusPanels
 00536099    mov         dl,1
 0053609B    mov         eax,[004D9044];TControlCanvas
 005360A0    call        TCanvas.Create;TControlCanvas.Create
 005360A5    mov         esi,eax
 005360A7    mov         dword ptr [ebx+294],esi;TCustomStatusBar.FCanvas:TCanvas
 005360AD    mov         eax,esi
 005360AF    mov         edx,ebx
 005360B1    call        TControlCanvas.SetControl
 005360B6    mov         byte ptr [ebx+29D],1;TCustomStatusBar.FSizeGrip:Boolean
 005360BD    xor         edx,edx
 005360BF    mov         eax,ebx
 005360C1    call        TGroupBox.SetParentFont
 005360C6    mov         byte ptr [ebx+29F],1;TCustomStatusBar.FUseSystemFont:Boolean
 005360CD    mov         eax,ebx
 005360CF    call        00536668
 005360D4    mov         byte ptr [ebx+2C0],0;TCustomStatusBar.FUpdatedPanels:Boolean
 005360DB    mov         eax,ebx
 005360DD    cmp         byte ptr [ebp-1],0
>005360E1    je          005360F2
 005360E3    call        @AfterConstruction
 005360E8    pop         dword ptr fs:[0]
 005360EF    add         esp,0C
 005360F2    mov         eax,ebx
 005360F4    pop         esi
 005360F5    pop         ebx
 005360F6    pop         ecx
 005360F7    pop         ebp
 005360F8    ret
*}
end;

Initialization
//0079D308
{*
 0079D308    sub         dword ptr ds:[7CA690],1
>0079D30F    jae         0079D327
 0079D311    mov         ecx,dword ptr ds:[532B94];TStatusBarStyleHook
 0079D317    mov         edx,dword ptr ds:[520AF0];TCustomStatusBar
 0079D31D    mov         eax,[005738E0];TCustomStyleEngine
 0079D322    call        TCustomStyleEngine.RegisterStyleHook
 0079D327    ret
*}
Finalization
end.