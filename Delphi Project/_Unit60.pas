//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit60;

interface

uses
  SysUtils, Classes;

    destructor Destroy();//00536120
    procedure CreateParams(var Params:TCreateParams);//0053615C
    procedure CreateWnd;//005361F4
    //function sub_00536278:?;//00536278
    //procedure sub_0053629C(?:?);//0053629C
    procedure SetPanels(Value:TStatusPanels);//005362D0
    procedure SetSimplePanel(Value:Boolean);//005362DC
    //procedure sub_00536318(?:TCustomStatusBar; ?:UnicodeString; ?:TAlignment; ?:?);//00536318
    procedure sub_0053638C(?:TCustomStatusBar);//0053638C
    procedure SetSimpleText(Value:string);//005363EC
    procedure CMBiDiModeChanged(var Message:Messages.TMessage);//00536418
    procedure FlipChildren(AllLevels:Boolean);//00536490
    procedure SetSizeGrip(Value:Boolean);//00536650
    procedure sub_00536668(?:TCustomStatusBar);//00536668
    //procedure sub_00536698(?:TCustomStatusBar; ?:Integer; ?:?);//00536698
    //procedure sub_0053682C(?:TCustomStatusBar; ?:?; ?:?);//0053682C
    //procedure CMWinIniChange(?:?);//00536944
    //procedure sub_0053696C(?:?);//0053696C
    //procedure WMGetTextLength(?:?);//00536A78
    //procedure WMPaint(?:?);//00536A9C
    //procedure WMSize(?:?);//00536B04
    function IsStoredFont(Value:TFont):Boolean;//00536B28
    procedure SetUseSystemFont(Value:Boolean);//00536B44
    procedure CMColorChanged(var Message:Messages.TMessage);//00536B74
    //procedure CMParentFontChanged(?:?);//00536B88
    procedure ExecuteAction(Action:TBasicAction);//00536BAC
    procedure CMSysColorChange;//00536C3C
    procedure CMSysFontChanged(var Message:Messages.TMessage);//00536C50
    procedure ChangeScale(M:Integer; D:Integer);//00536C64
    procedure SetBounds(ALeft:Integer; ATop:Integer; AHeight:Integer; AWidth:Integer);//00536C8C
    procedure sub_00536CB0;//00536CB0
    //procedure sub_00536CB8(?:TCustomStatusBar; ?:?);//00536CB8
    procedure sub_00536D48;//00536D48
    procedure sub_00536D84;//00536D84
    constructor Create;//00536D94
    //procedure WMEraseBkgnd(?:?);//00536D9C
    constructor Create(Collection:TCollection);//00536E04
    procedure Assign(Source:TPersistent);//00536E6C
    procedure SetBiDiMode(Value:TBiDiMode);//00536EFC
    procedure IsStoredBiDiMode(Value:TBiDiMode);//00536F10
    procedure SetParentBiDiMode(Value:Boolean);//00536F18
    procedure ParentBiDiModeChanged;//00536F28
    function UseRightToLeftReading:Boolean;//00536F64
    function UseRightToLeftAlignment:Boolean;//00536F7C
    //procedure GetDisplayName(?:?);//00536F94
    //function sub_00536FB8(?:THeaderSection):?;//00536FB8
    procedure sub_00536FEC(?:THeaderSection);//00536FEC
    procedure SetAlignment(Value:TAlignment);//00536FFC
    procedure SetAutoSize(Value:Boolean);//0053700C
    procedure SetMaxWidth(Value:Integer);//0053702C
    procedure SetMinWidth(Value:Integer);//00537050
    procedure SetStyle(Value:THeaderSectionStyle);//0053706C
    procedure SetText(Value:string);//0053707C
    procedure SetWidth(Value:Integer);//005370A4
    procedure SetImageIndex(Value:TImageIndex);//005370E8
    procedure SetCheckBox(Value:Boolean);//005370F8
    procedure SetChecked(Value:Boolean);//00537108
    procedure SetFixedWidth(Value:Boolean);//0053713C
    constructor Create(HeaderControl:TCustomHeaderControl);//0053714C
    function Add(?:Integer; ?:THeaderSections):THeaderSection;//00537190
    function GetItem(Index:Integer):THeaderSection;//0053719C
    procedure sub_0048EDE4;//005371B0
    //procedure sub_005371B4(?:?);//005371B4
    function AddItem(Item:THeaderSection; Index:Integer):THeaderSection;//005371E0
    constructor Create(AOwner:TComponent);//00537228

implementation

//00536120
destructor TCustomStatusBar.Destroy();
begin
{*
 00536120    push        ebx
 00536121    push        esi
 00536122    call        @BeforeDestruction
 00536127    mov         ebx,edx
 00536129    mov         esi,eax
 0053612B    mov         eax,dword ptr [esi+294];TCustomStatusBar.FCanvas:TCanvas
 00536131    call        TObject.Free
 00536136    mov         eax,dword ptr [esi+290];TCustomStatusBar.FPanels:TStatusPanels
 0053613C    call        TObject.Free
 00536141    mov         dl,0FC
 00536143    and         dl,bl
 00536145    mov         eax,esi
 00536147    call        TWinControl.Destroy
 0053614C    test        bl,bl
>0053614E    jle         00536157
 00536150    mov         eax,esi
 00536152    call        @ClassDestroy
 00536157    pop         esi
 00536158    pop         ebx
 00536159    ret
*}
end;

//0053615C
procedure TCustomStatusBar.CreateParams(var Params:TCreateParams);
begin
{*
 0053615C    push        ebx
 0053615D    push        esi
 0053615E    mov         esi,edx
 00536160    mov         ebx,eax
 00536162    mov         eax,4
 00536167    call        InitCommonControl
 0053616C    mov         edx,esi
 0053616E    mov         eax,ebx
 00536170    call        TWinControl.CreateParams
 00536175    mov         ecx,5361CC;'m'
 0053617A    mov         edx,esi
 0053617C    mov         eax,ebx
 0053617E    call        TWinControl.CreateSubClass
 00536183    cmp         byte ptr [ebx+29D],0;TCustomStatusBar.FSizeGrip:Boolean
>0053618A    je          00536195
 0053618C    cmp         byte ptr [ebx+29E],0;TCustomStatusBar.FSizeGripValid:Boolean
>00536193    jne         00536199
 00536195    xor         eax,eax
>00536197    jmp         0053619B
 00536199    mov         al,1
 0053619B    and         eax,7F
 0053619E    mov         eax,dword ptr [eax*4+7A1560]
 005361A5    or          dword ptr [esi+4],eax;TCreateParams.Style:DWORD
 005361A8    call        StyleServices
 005361AD    mov         edx,dword ptr [eax]
 005361AF    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 005361B2    test        al,al
>005361B4    je          005361C5
 005361B6    mov         eax,dword ptr [esi+24];TCreateParams.WindowClass:TWndClass
 005361B9    or          eax,2
 005361BC    or          eax,1
 005361BF    mov         dword ptr [esi+24],eax;TCreateParams.WindowClass:TWndClass
 005361C2    pop         esi
 005361C3    pop         ebx
 005361C4    ret
 005361C5    and         dword ptr [esi+24],0FFFFFFFC;TCreateParams.WindowClass:TWndClass
 005361C9    pop         esi
 005361CA    pop         ebx
 005361CB    ret
*}
end;

//005361F4
procedure TCustomStatusBar.CreateWnd;
begin
{*
 005361F4    push        ebx
 005361F5    mov         ebx,eax
 005361F7    xor         edx,edx
 005361F9    mov         eax,ebx
 005361FB    call        00536CB8
 00536200    mov         eax,ebx
 00536202    call        TWinControl.CreateWnd
 00536207    mov         eax,dword ptr [ebx+7C];TCustomStatusBar.FColor:TColor
 0053620A    call        ColorToRGB
 0053620F    push        eax
 00536210    push        0
 00536212    push        2001
 00536217    mov         eax,ebx
 00536219    call        TWinControl.GetHandle
 0053621E    push        eax
 0053621F    call        user32.SendMessageW
 00536224    xor         ecx,ecx
 00536226    mov         dl,1
 00536228    mov         eax,ebx
 0053622A    call        0053682C
 0053622F    cmp         dword ptr [ebx+298],0;TCustomStatusBar.FSimpleText:string
>00536236    je          00536255
 00536238    mov         eax,dword ptr [ebx+298];TCustomStatusBar.FSimpleText:string
 0053623E    push        eax
 0053623F    mov         eax,ebx
 00536241    call        TWinControl.GetHandle
 00536246    mov         ecx,0FF
 0053624B    mov         edx,40B
 00536250    call        SendTextMessage
 00536255    cmp         byte ptr [ebx+29C],0;TCustomStatusBar.FSimplePanel:Boolean
>0053625C    je          00536274
 0053625E    push        0
 00536260    push        1
 00536262    push        409
 00536267    mov         eax,ebx
 00536269    call        TWinControl.GetHandle
 0053626E    push        eax
 0053626F    call        user32.SendMessageW
 00536274    pop         ebx
 00536275    ret
*}
end;

//00536278
{*function sub_00536278:?;
begin
 00536278    push        ebx
 00536279    cmp         word ptr [eax+2B2],0;TCustomStatusBar.?f2B2:word
>00536281    je          00536297
 00536283    mov         ebx,eax
 00536285    mov         edx,eax
 00536287    mov         eax,dword ptr [ebx+2B4];TCustomStatusBar.?f2B4:dword
 0053628D    call        dword ptr [ebx+2B0];TCustomStatusBar.FOnHint
 00536293    mov         al,1
 00536295    pop         ebx
 00536296    ret
 00536297    xor         eax,eax
 00536299    pop         ebx
 0053629A    ret
end;*}

//0053629C
{*procedure TCustomStatusBar.sub_0053629C(?:?);
begin
 0053629C    push        esi
 0053629D    mov         esi,eax
 0053629F    cmp         word ptr [esi+2AA],0;TCustomStatusBar.?f2AA:word
>005362A7    je          005362BE
 005362A9    push        ecx
 005362AA    mov         eax,esi
 005362AC    mov         ecx,edx
 005362AE    mov         edx,eax
 005362B0    mov         eax,dword ptr [esi+2AC];TCustomStatusBar.?f2AC:dword
 005362B6    call        dword ptr [esi+2A8];TCustomStatusBar.FOnDrawPanel
 005362BC    pop         esi
 005362BD    ret
 005362BE    mov         edx,ecx
 005362C0    mov         eax,dword ptr [esi+294];TCustomStatusBar.FCanvas:TCanvas
 005362C6    mov         ecx,dword ptr [eax]
 005362C8    call        dword ptr [ecx+54];TCanvas.FillRect
 005362CB    pop         esi
 005362CC    ret
end;*}

//005362D0
procedure TStatusBar.SetPanels(Value:TStatusPanels);
begin
{*
 005362D0    mov         eax,dword ptr [eax+290];TStatusBar.FPanels:TStatusPanels
 005362D6    mov         ecx,dword ptr [eax]
 005362D8    call        dword ptr [ecx+8];TCollection.Assign
 005362DB    ret
*}
end;

//005362DC
procedure TStatusBar.SetSimplePanel(Value:Boolean);
begin
{*
 005362DC    push        ebx
 005362DD    mov         ebx,eax
 005362DF    cmp         dl,byte ptr [ebx+29C];TStatusBar.FSimplePanel:Boolean
>005362E5    je          00536314
 005362E7    mov         byte ptr [ebx+29C],dl;TStatusBar.FSimplePanel:Boolean
 005362ED    mov         eax,ebx
 005362EF    call        TWinControl.HandleAllocated
 005362F4    test        al,al
>005362F6    je          00536314
 005362F8    push        0
 005362FA    movzx       eax,byte ptr [ebx+29C];TStatusBar.FSimplePanel:Boolean
 00536301    push        eax
 00536302    push        409
 00536307    mov         eax,ebx
 00536309    call        TWinControl.GetHandle
 0053630E    push        eax
 0053630F    call        user32.SendMessageW
 00536314    pop         ebx
 00536315    ret
*}
end;

//00536318
{*procedure sub_00536318(?:TCustomStatusBar; ?:UnicodeString; ?:TAlignment; ?:?);
begin
 00536318    push        ebp
 00536319    mov         ebp,esp
 0053631B    push        ecx
 0053631C    push        ebx
 0053631D    mov         byte ptr [ebp-1],cl
 00536320    mov         ebx,edx
 00536322    cmp         byte ptr [ebp+8],0
>00536326    je          00536330
 00536328    lea         eax,[ebp-1]
 0053632B    call        ChangeBiDiModeAlignment
 00536330    movzx       eax,byte ptr [ebp-1]
 00536334    dec         al
>00536336    je          0053634F
 00536338    dec         al
>0053633A    jne         00536360
 0053633C    mov         edx,ebx
 0053633E    mov         ecx,1
 00536343    mov         eax,536374;'	'
 00536348    call        @UStrInsert
>0053634D    jmp         00536360
 0053634F    mov         edx,ebx
 00536351    mov         ecx,1
 00536356    mov         eax,536384;'		'
 0053635B    call        @UStrInsert
 00536360    pop         ebx
 00536361    pop         ecx
 00536362    pop         ebp
 00536363    ret         4
end;*}

//0053638C
procedure sub_0053638C(?:TCustomStatusBar);
begin
{*
 0053638C    push        ebx
 0053638D    push        esi
 0053638E    mov         ebx,eax
 00536390    mov         eax,ebx
 00536392    mov         si,0FFC6
 00536396    call        @CallDynaInst
 0053639B    push        eax
 0053639C    lea         edx,[ebx+298]
 005363A2    xor         ecx,ecx
 005363A4    mov         eax,ebx
 005363A6    call        00536318
 005363AB    mov         eax,ebx
 005363AD    call        TWinControl.HandleAllocated
 005363B2    test        al,al
>005363B4    je          005363E6
 005363B6    mov         eax,dword ptr [ebx+298]
 005363BC    push        eax
 005363BD    mov         eax,ebx
 005363BF    call        TControl.UseRightToLeftReading
 005363C4    and         eax,7F
 005363C7    mov         eax,dword ptr [eax*4+7A1568]
 005363CE    or          eax,0FF
 005363D3    push        eax
 005363D4    mov         eax,ebx
 005363D6    call        TWinControl.GetHandle
 005363DB    mov         edx,40B
 005363E0    pop         ecx
 005363E1    call        SendTextMessage
 005363E6    pop         esi
 005363E7    pop         ebx
 005363E8    ret
*}
end;

//005363EC
procedure TStatusBar.SetSimpleText(Value:string);
begin
{*
 005363EC    push        ebx
 005363ED    push        esi
 005363EE    mov         esi,edx
 005363F0    mov         ebx,eax
 005363F2    mov         eax,dword ptr [ebx+298];TStatusBar.FSimpleText:string
 005363F8    mov         edx,esi
 005363FA    call        @UStrEqual
>005363FF    je          00536415
 00536401    lea         eax,[ebx+298];TStatusBar.FSimpleText:string
 00536407    mov         edx,esi
 00536409    call        @UStrAsg
 0053640E    mov         eax,ebx
 00536410    call        0053638C
 00536415    pop         esi
 00536416    pop         ebx
 00536417    ret
*}
end;

//00536418
procedure TCustomStatusBar.CMBiDiModeChanged(var Message:Messages.TMessage);
begin
{*
 00536418    push        ebx
 00536419    push        esi
 0053641A    push        edi
 0053641B    mov         ebx,eax
 0053641D    mov         eax,ebx
 0053641F    call        TWinControl.CMBiDiModeChanged
 00536424    mov         eax,ebx
 00536426    call        TWinControl.HandleAllocated
 0053642B    test        al,al
>0053642D    je          00536489
 0053642F    cmp         byte ptr [ebx+29C],0;TCustomStatusBar.FSimplePanel:Boolean
>00536436    jne         00536482
 00536438    mov         eax,dword ptr [ebx+290];TCustomStatusBar.FPanels:TStatusPanels
 0053643E    mov         eax,dword ptr [eax+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 00536441    mov         edi,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00536444    dec         edi
 00536445    test        edi,edi
>00536447    jl          00536475
 00536449    inc         edi
 0053644A    xor         esi,esi
 0053644C    mov         edx,esi
 0053644E    mov         eax,dword ptr [ebx+290];TCustomStatusBar.FPanels:TStatusPanels
 00536454    call        TStatusPanels.GetItem
 00536459    cmp         byte ptr [eax+17],0;TStatusPanel.FParentBiDiMode:Boolean
>0053645D    je          00536471
 0053645F    mov         edx,esi
 00536461    mov         eax,dword ptr [ebx+290];TCustomStatusBar.FPanels:TStatusPanels
 00536467    call        TStatusPanels.GetItem
 0053646C    call        TStatusPanel.ParentBiDiModeChanged
 00536471    inc         esi
 00536472    dec         edi
>00536473    jne         0053644C
 00536475    mov         cl,1
 00536477    mov         dl,1
 00536479    mov         eax,ebx
 0053647B    call        0053682C
>00536480    jmp         00536489
 00536482    mov         eax,ebx
 00536484    call        0053638C
 00536489    pop         edi
 0053648A    pop         esi
 0053648B    pop         ebx
 0053648C    ret
*}
end;

//00536490
procedure TCustomStatusBar.FlipChildren(AllLevels:Boolean);
begin
{*
 00536490    push        ebp
 00536491    mov         ebp,esp
 00536493    add         esp,0FFFFFFEC
 00536496    push        ebx
 00536497    push        esi
 00536498    push        edi
 00536499    mov         dword ptr [ebp-4],eax
 0053649C    mov         eax,dword ptr [ebp-4]
 0053649F    call        TWinControl.HandleAllocated
 005364A4    test        al,al
>005364A6    je          00536647
 005364AC    mov         eax,dword ptr [ebp-4]
 005364AF    cmp         byte ptr [eax+29C],0;TCustomStatusBar.FSimplePanel:Boolean
>005364B6    jne         00536647
 005364BC    mov         eax,dword ptr [ebp-4]
 005364BF    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 005364C5    mov         eax,dword ptr [eax+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 005364C8    cmp         dword ptr [eax+8],0;TList<System.Classes.TCollectionItem>.FCount:Integer
>005364CC    jle         00536647
 005364D2    mov         eax,dword ptr [ebp-4]
 005364D5    call        TControl.GetClientWidth
 005364DA    mov         dword ptr [ebp-0C],eax
 005364DD    mov         eax,dword ptr [ebp-4]
 005364E0    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 005364E6    xor         edx,edx
 005364E8    call        TStatusPanels.GetItem
 005364ED    mov         eax,dword ptr [eax+10];TStatusPanel.FWidth:Integer
 005364F0    mov         dword ptr [ebp-8],eax
 005364F3    mov         eax,dword ptr [ebp-4]
 005364F6    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 005364FC    mov         eax,dword ptr [eax+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 005364FF    mov         ebx,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00536502    sub         ebx,2
 00536505    test        ebx,ebx
>00536507    jl          00536526
 00536509    inc         ebx
 0053650A    xor         esi,esi
 0053650C    mov         eax,dword ptr [ebp-4]
 0053650F    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 00536515    mov         edx,esi
 00536517    call        TStatusPanels.GetItem
 0053651C    mov         eax,dword ptr [eax+10];TStatusPanel.FWidth:Integer
 0053651F    sub         dword ptr [ebp-0C],eax
 00536522    inc         esi
 00536523    dec         ebx
>00536524    jne         0053650C
 00536526    mov         ecx,dword ptr [ebp-4]
 00536529    mov         dl,1
 0053652B    mov         eax,[00520744];TStatusPanels
 00536530    call        TStatusPanels.Create;TStatusPanels.Create
 00536535    mov         dword ptr [ebp-10],eax
 00536538    xor         edx,edx
 0053653A    push        ebp
 0053653B    push        5365F0
 00536540    push        dword ptr fs:[edx]
 00536543    mov         dword ptr fs:[edx],esp
 00536546    mov         eax,dword ptr [ebp-4]
 00536549    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 0053654F    mov         eax,dword ptr [eax+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 00536552    mov         ebx,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00536555    dec         ebx
 00536556    test        ebx,ebx
>00536558    jl          00536584
 0053655A    inc         ebx
 0053655B    xor         esi,esi
 0053655D    mov         eax,dword ptr [ebp-10]
 00536560    call        TStatusPanels.Add
 00536565    mov         edi,eax
 00536567    mov         eax,dword ptr [ebp-4]
 0053656A    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 00536570    mov         edx,esi
 00536572    call        TStatusPanels.GetItem
 00536577    mov         edx,eax
 00536579    mov         eax,edi
 0053657B    mov         ecx,dword ptr [eax]
 0053657D    call        dword ptr [ecx+8];TStatusPanel.Assign
 00536580    inc         esi
 00536581    dec         ebx
>00536582    jne         0053655D
 00536584    mov         eax,dword ptr [ebp-4]
 00536587    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 0053658D    mov         eax,dword ptr [eax+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 00536590    mov         ebx,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00536593    dec         ebx
 00536594    test        ebx,ebx
>00536596    jl          005365DA
 00536598    inc         ebx
 00536599    xor         esi,esi
 0053659B    mov         eax,dword ptr [ebp-4]
 0053659E    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 005365A4    mov         edx,esi
 005365A6    call        TStatusPanels.GetItem
 005365AB    mov         edi,eax
 005365AD    mov         eax,dword ptr [ebp-4]
 005365B0    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 005365B6    mov         dword ptr [ebp-14],eax
 005365B9    mov         eax,dword ptr [ebp-14]
 005365BC    mov         eax,dword ptr [eax+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 005365BF    mov         edx,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 005365C2    sub         edx,esi
 005365C4    dec         edx
 005365C5    mov         eax,dword ptr [ebp-10]
 005365C8    call        TStatusPanels.GetItem
 005365CD    mov         edx,eax
 005365CF    mov         eax,edi
 005365D1    mov         ecx,dword ptr [eax]
 005365D3    call        dword ptr [ecx+8];TStatusPanel.Assign
 005365D6    inc         esi
 005365D7    dec         ebx
>005365D8    jne         0053659B
 005365DA    xor         eax,eax
 005365DC    pop         edx
 005365DD    pop         ecx
 005365DE    pop         ecx
 005365DF    mov         dword ptr fs:[eax],edx
 005365E2    push        5365F7
 005365E7    mov         eax,dword ptr [ebp-10]
 005365EA    call        TObject.Free
 005365EF    ret
>005365F0    jmp         @HandleFinally
>005365F5    jmp         005365E7
 005365F7    mov         eax,dword ptr [ebp-4]
 005365FA    mov         ebx,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 00536600    mov         eax,ebx
 00536602    mov         eax,dword ptr [eax+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 00536605    cmp         dword ptr [eax+8],1;TList<System.Classes.TCollectionItem>.FCount:Integer
>00536609    jle         0053663B
 0053660B    mov         esi,ebx
 0053660D    mov         eax,dword ptr [esi+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 00536610    mov         edx,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00536613    dec         edx
 00536614    mov         eax,ebx
 00536616    call        TStatusPanels.GetItem
 0053661B    mov         edx,dword ptr [ebp-8]
 0053661E    call        TStatusPanel.SetWidth
 00536623    mov         eax,dword ptr [ebp-4]
 00536626    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 0053662C    xor         edx,edx
 0053662E    call        TStatusPanels.GetItem
 00536633    mov         edx,dword ptr [ebp-0C]
 00536636    call        TStatusPanel.SetWidth
 0053663B    mov         cl,1
 0053663D    mov         dl,1
 0053663F    mov         eax,dword ptr [ebp-4]
 00536642    call        0053682C
 00536647    pop         edi
 00536648    pop         esi
 00536649    pop         ebx
 0053664A    mov         esp,ebp
 0053664C    pop         ebp
 0053664D    ret
*}
end;

//00536650
procedure TStatusBar.SetSizeGrip(Value:Boolean);
begin
{*
 00536650    cmp         dl,byte ptr [eax+29D];TStatusBar.FSizeGrip:Boolean
>00536656    je          00536665
 00536658    mov         byte ptr [eax+29D],dl;TStatusBar.FSizeGrip:Boolean
 0053665E    mov         dl,1
 00536660    call        00536CB8
 00536665    ret
*}
end;

//00536668
procedure sub_00536668(?:TCustomStatusBar);
begin
{*
 00536668    push        ebx
 00536669    mov         ebx,eax
 0053666B    cmp         byte ptr [ebx+29F],0;TCustomStatusBar.FUseSystemFont:Boolean
>00536672    je          00536695
 00536674    mov         eax,[007C4E78];^Screen:TScreen
 00536679    mov         eax,dword ptr [eax]
 0053667B    mov         edx,dword ptr [eax+88];TScreen.FHintFont:TFont
 00536681    mov         eax,ebx
 00536683    call        TGroupBox.SetFont
 00536688    mov         edx,0FF000012
 0053668D    mov         eax,dword ptr [ebx+74];TCustomStatusBar.FFont:TFont
 00536690    call        TFont.SetColor
 00536695    pop         ebx
 00536696    ret
*}
end;

//00536698
{*procedure sub_00536698(?:TCustomStatusBar; ?:Integer; ?:?);
begin
 00536698    push        ebp
 00536699    mov         ebp,esp
 0053669B    add         esp,0FFFFFFE8
 0053669E    push        ebx
 0053669F    push        esi
 005366A0    push        edi
 005366A1    xor         ebx,ebx
 005366A3    mov         dword ptr [ebp-4],ebx
 005366A6    mov         byte ptr [ebp-5],cl
 005366A9    mov         ebx,edx
 005366AB    mov         esi,eax
 005366AD    xor         eax,eax
 005366AF    push        ebp
 005366B0    push        5367F8
 005366B5    push        dword ptr fs:[eax]
 005366B8    mov         dword ptr fs:[eax],esp
 005366BB    mov         eax,esi
 005366BD    call        TWinControl.HandleAllocated
 005366C2    test        al,al
>005366C4    je          005367E2
 005366CA    mov         edx,ebx
 005366CC    mov         eax,dword ptr [esi+290];TCustomStatusBar.FPanels:TStatusPanels
 005366D2    call        TStatusPanels.GetItem
 005366D7    mov         ebx,eax
 005366D9    cmp         byte ptr [ebp-5],0
>005366DD    jne         0053671B
 005366DF    mov         byte ptr [ebx+19],1;TStatusPanel.FUpdateNeeded:Boolean
 005366E3    lea         eax,[ebp-18]
 005366E6    push        eax
 005366E7    push        0
 005366E9    mov         eax,ebx
 005366EB    call        TCollectionItem.GetIndex
 005366F0    push        eax
 005366F1    mov         eax,esi
 005366F3    call        TWinControl.GetHandle
 005366F8    mov         edx,40A
 005366FD    pop         ecx
 005366FE    call        SendGetStructMessage
 00536703    push        0FF
 00536705    lea         eax,[ebp-18]
 00536708    push        eax
 00536709    mov         eax,esi
 0053670B    call        TWinControl.GetHandle
 00536710    push        eax
 00536711    call        user32.InvalidateRect
>00536716    jmp         005367E2
 0053671B    cmp         byte ptr [ebx+19],0;TStatusPanel.FUpdateNeeded:Boolean
>0053671F    je          005367E2
 00536725    mov         byte ptr [ebx+19],0;TStatusPanel.FUpdateNeeded:Boolean
 00536729    xor         edi,edi
 0053672B    movzx       eax,byte ptr [ebx+15];TStatusPanel.FBevel:TStatusPanelBevel
 0053672F    sub         al,1
>00536731    jb          00536739
 00536733    dec         al
>00536735    je          00536740
>00536737    jmp         00536745
 00536739    mov         edi,100
>0053673E    jmp         00536745
 00536740    mov         edi,200
 00536745    mov         eax,ebx
 00536747    call        TStatusPanel.UseRightToLeftReading
 0053674C    test        al,al
>0053674E    je          00536756
 00536750    or          edi,400
 00536756    cmp         byte ptr [ebx+18],1;TStatusPanel.FStyle:TStatusPanelStyle
>0053675A    jne         00536762
 0053675C    or          edi,1000
 00536762    lea         eax,[ebp-4]
 00536765    mov         edx,dword ptr [ebx+0C];TStatusPanel.FText:string
 00536768    call        @UStrLAsg
 0053676D    mov         eax,ebx
 0053676F    call        TStatusPanel.UseRightToLeftAlignment
 00536774    test        al,al
>00536776    je          00536790
 00536778    mov         eax,ebx
 0053677A    call        TStatusPanel.UseRightToLeftAlignment
 0053677F    push        eax
 00536780    movzx       ecx,byte ptr [ebx+14];TStatusPanel.FAlignment:TAlignment
 00536784    lea         edx,[ebp-4]
 00536787    mov         eax,esi
 00536789    call        00536318
>0053678E    jmp         005367C2
 00536790    movzx       eax,byte ptr [ebx+14];TStatusPanel.FAlignment:TAlignment
 00536794    dec         al
>00536796    je          005367B0
 00536798    dec         al
>0053679A    jne         005367C2
 0053679C    lea         edx,[ebp-4]
 0053679F    mov         ecx,1
 005367A4    mov         eax,536814;'	'
 005367A9    call        @UStrInsert
>005367AE    jmp         005367C2
 005367B0    lea         edx,[ebp-4]
 005367B3    mov         ecx,1
 005367B8    mov         eax,536824;'		'
 005367BD    call        @UStrInsert
 005367C2    mov         eax,dword ptr [ebp-4]
 005367C5    push        eax
 005367C6    mov         eax,ebx
 005367C8    call        TCollectionItem.GetIndex
 005367CD    or          edi,eax
 005367CF    push        edi
 005367D0    mov         eax,esi
 005367D2    call        TWinControl.GetHandle
 005367D7    mov         edx,40B
 005367DC    pop         ecx
 005367DD    call        SendTextMessage
 005367E2    xor         eax,eax
 005367E4    pop         edx
 005367E5    pop         ecx
 005367E6    pop         ecx
 005367E7    mov         dword ptr fs:[eax],edx
 005367EA    push        5367FF
 005367EF    lea         eax,[ebp-4]
 005367F2    call        @UStrClr
 005367F7    ret
>005367F8    jmp         @HandleFinally
>005367FD    jmp         005367EF
 005367FF    pop         edi
 00536800    pop         esi
 00536801    pop         ebx
 00536802    mov         esp,ebp
 00536804    pop         ebp
 00536805    ret
end;*}

//0053682C
{*procedure sub_0053682C(?:TCustomStatusBar; ?:?; ?:?);
begin
 0053682C    push        ebx
 0053682D    push        esi
 0053682E    push        edi
 0053682F    push        ebp
 00536830    add         esp,0FFFFFDF4
 00536836    mov         byte ptr [esp],cl
 00536839    mov         ebx,edx
 0053683B    mov         esi,eax
 0053683D    mov         eax,esi
 0053683F    call        TWinControl.HandleAllocated
 00536844    test        al,al
>00536846    je          00536936
 0053684C    mov         eax,dword ptr [esi+290];TCustomStatusBar.FPanels:TStatusPanels
 00536852    mov         eax,dword ptr [eax+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 00536855    mov         eax,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 00536858    mov         dword ptr [esp+4],eax
 0053685C    test        bl,bl
>0053685E    je          00536919
 00536864    cmp         dword ptr [esp+4],80
>0053686C    jle         00536876
 0053686E    mov         dword ptr [esp+4],80
 00536876    cmp         dword ptr [esp+4],0
>0053687B    jne         005368B7
 0053687D    mov         dword ptr [esp+0C],0FFFFFFFF
 00536885    lea         eax,[esp+0C]
 00536889    push        eax
 0053688A    mov         eax,esi
 0053688C    call        TWinControl.GetHandle
 00536891    mov         ecx,1
 00536896    mov         edx,404
 0053689B    call        SendStructMessage
 005368A0    push        0
 005368A2    mov         eax,esi
 005368A4    call        TWinControl.GetHandle
 005368A9    xor         ecx,ecx
 005368AB    mov         edx,40B
 005368B0    call        SendTextMessage
>005368B5    jmp         00536919
 005368B7    xor         eax,eax
 005368B9    mov         dword ptr [esp+8],eax
 005368BD    mov         ebx,dword ptr [esp+4]
 005368C1    sub         ebx,2
 005368C4    test        ebx,ebx
>005368C6    jl          005368F1
 005368C8    inc         ebx
 005368C9    xor         edi,edi
 005368CB    lea         ebp,[esp+0C]
 005368CF    mov         edx,edi
 005368D1    mov         eax,dword ptr [esi+290];TCustomStatusBar.FPanels:TStatusPanels
 005368D7    call        TStatusPanels.GetItem
 005368DC    mov         eax,dword ptr [eax+10];TStatusPanel.FWidth:Integer
 005368DF    add         dword ptr [esp+8],eax
 005368E3    mov         eax,dword ptr [esp+8]
 005368E7    mov         dword ptr [ebp],eax
 005368EA    inc         edi
 005368EB    add         ebp,4
 005368EE    dec         ebx
>005368EF    jne         005368CF
 005368F1    mov         eax,dword ptr [esp+4]
 005368F5    mov         dword ptr [esp+eax*4+8],0FFFFFFFF
 005368FD    lea         eax,[esp+0C]
 00536901    push        eax
 00536902    mov         eax,dword ptr [esp+8]
 00536906    push        eax
 00536907    push        404
 0053690C    mov         eax,esi
 0053690E    call        TWinControl.GetHandle
 00536913    push        eax
 00536914    call        user32.SendMessageW
 00536919    mov         ebx,dword ptr [esp+4]
 0053691D    dec         ebx
 0053691E    test        ebx,ebx
>00536920    jl          00536936
 00536922    inc         ebx
 00536923    xor         edi,edi
 00536925    movzx       ecx,byte ptr [esp]
 00536929    mov         edx,edi
 0053692B    mov         eax,esi
 0053692D    call        00536698
 00536932    inc         edi
 00536933    dec         ebx
>00536934    jne         00536925
 00536936    add         esp,20C
 0053693C    pop         ebp
 0053693D    pop         edi
 0053693E    pop         esi
 0053693F    pop         ebx
 00536940    ret
end;*}

//00536944
{*procedure TCustomStatusBar.CMWinIniChange(?:?);
begin
 00536944    push        ebx
 00536945    push        esi
 00536946    mov         ebx,edx
 00536948    mov         esi,eax
 0053694A    mov         edx,ebx
 0053694C    mov         eax,esi
 0053694E    call        TWinControl.CMWinIniChange
 00536953    mov         eax,dword ptr [ebx+4]
 00536956    test        eax,eax
>00536958    je          0053695F
 0053695A    cmp         eax,2A
>0053695D    jne         00536966
 0053695F    mov         eax,esi
 00536961    call        00536668
 00536966    pop         esi
 00536967    pop         ebx
 00536968    ret
end;*}

//0053696C
{*procedure TCustomStatusBar.sub_0053696C(?:?);
begin
 0053696C    push        ebp
 0053696D    mov         ebp,esp
 0053696F    add         esp,0FFFFFFF0
 00536972    push        esi
 00536973    mov         dword ptr [ebp-8],edx
 00536976    mov         dword ptr [ebp-4],eax
 00536979    mov         eax,dword ptr [ebp-8]
 0053697C    mov         eax,dword ptr [eax+8]
 0053697F    mov         dword ptr [ebp-10],eax
 00536982    mov         eax,dword ptr [ebp-10]
 00536985    mov         eax,dword ptr [eax+18]
 00536988    push        eax
 00536989    call        gdi32.SaveDC
 0053698E    mov         dword ptr [ebp-0C],eax
 00536991    mov         eax,dword ptr [ebp-4]
 00536994    mov         eax,dword ptr [eax+294];TCustomStatusBar.FCanvas:TCanvas
 0053699A    call        TCustomCanvas.Lock
 0053699F    xor         eax,eax
 005369A1    push        ebp
 005369A2    push        536A62
 005369A7    push        dword ptr fs:[eax]
 005369AA    mov         dword ptr fs:[eax],esp
 005369AD    mov         eax,dword ptr [ebp-10]
 005369B0    mov         edx,dword ptr [eax+18]
 005369B3    mov         eax,dword ptr [ebp-4]
 005369B6    mov         eax,dword ptr [eax+294];TCustomStatusBar.FCanvas:TCanvas
 005369BC    call        TCanvas.SetHandle
 005369C1    mov         eax,dword ptr [ebp-4]
 005369C4    mov         edx,dword ptr [eax+74];TCustomStatusBar.FFont:TFont
 005369C7    mov         eax,dword ptr [ebp-4]
 005369CA    mov         eax,dword ptr [eax+294];TCustomStatusBar.FCanvas:TCanvas
 005369D0    call        TCanvas.SetFont
 005369D5    mov         eax,dword ptr [ebp-4]
 005369D8    mov         eax,dword ptr [eax+294];TCustomStatusBar.FCanvas:TCanvas
 005369DE    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005369E1    mov         edx,0FF00000F
 005369E6    call        TBrush.SetColor
 005369EB    mov         eax,dword ptr [ebp-4]
 005369EE    mov         eax,dword ptr [eax+294];TCustomStatusBar.FCanvas:TCanvas
 005369F4    mov         eax,dword ptr [eax+48];TCanvas.FBrush:TBrush
 005369F7    xor         edx,edx
 005369F9    call        TBrush.SetStyle
 005369FE    mov         eax,dword ptr [ebp-10]
 00536A01    mov         edx,dword ptr [eax+8]
 00536A04    mov         eax,dword ptr [ebp-4]
 00536A07    mov         eax,dword ptr [eax+290];TCustomStatusBar.FPanels:TStatusPanels
 00536A0D    call        TStatusPanels.GetItem
 00536A12    mov         edx,eax
 00536A14    mov         eax,dword ptr [ebp-10]
 00536A17    lea         ecx,[eax+1C]
 00536A1A    mov         eax,dword ptr [ebp-4]
 00536A1D    mov         si,0FFAD
 00536A21    call        @CallDynaInst;TCustomStatusBar.sub_0053629C
 00536A26    xor         eax,eax
 00536A28    pop         edx
 00536A29    pop         ecx
 00536A2A    pop         ecx
 00536A2B    mov         dword ptr fs:[eax],edx
 00536A2E    push        536A69
 00536A33    mov         eax,dword ptr [ebp-4]
 00536A36    mov         eax,dword ptr [eax+294];TCustomStatusBar.FCanvas:TCanvas
 00536A3C    xor         edx,edx
 00536A3E    call        TCanvas.SetHandle
 00536A43    mov         eax,dword ptr [ebp-4]
 00536A46    mov         eax,dword ptr [eax+294];TCustomStatusBar.FCanvas:TCanvas
 00536A4C    call        TCustomCanvas.Unlock
 00536A51    mov         eax,dword ptr [ebp-0C]
 00536A54    push        eax
 00536A55    mov         eax,dword ptr [ebp-10]
 00536A58    mov         eax,dword ptr [eax+18]
 00536A5B    push        eax
 00536A5C    call        gdi32.RestoreDC
 00536A61    ret
>00536A62    jmp         @HandleFinally
>00536A67    jmp         00536A33
 00536A69    mov         eax,dword ptr [ebp-8]
 00536A6C    mov         dword ptr [eax+0C],1
 00536A73    pop         esi
 00536A74    mov         esp,ebp
 00536A76    pop         ebp
 00536A77    ret
end;*}

//00536A78
{*procedure TCustomStatusBar.WMGetTextLength(?:?);
begin
 00536A78    cmp         byte ptr [eax+29C],0;TCustomStatusBar.FSimplePanel:Boolean
>00536A7F    je          00536A94
 00536A81    mov         eax,dword ptr [eax+298];TCustomStatusBar.FSimpleText:string
 00536A87    test        eax,eax
>00536A89    je          00536A90
 00536A8B    sub         eax,4
 00536A8E    mov         eax,dword ptr [eax]
 00536A90    mov         dword ptr [edx+0C],eax
 00536A93    ret
 00536A94    mov         ecx,dword ptr [eax]
 00536A96    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 00536A99    ret
end;*}

//00536A9C
{*procedure TCustomStatusBar.WMPaint(?:?);
begin
 00536A9C    push        ebx
 00536A9D    push        esi
 00536A9E    mov         esi,edx
 00536AA0    mov         ebx,eax
 00536AA2    mov         eax,ebx
 00536AA4    call        TWinControl.HandleAllocated
 00536AA9    test        al,al
>00536AAB    je          00536AD1
 00536AAD    cmp         byte ptr [ebx+2C0],0;TCustomStatusBar.FUpdatedPanels:Boolean
>00536AB4    jne         00536AD1
 00536AB6    cmp         byte ptr [ebx+29C],0;TCustomStatusBar.FSimplePanel:Boolean
>00536ABD    jne         00536AD1
 00536ABF    mov         eax,dword ptr [ebx+290];TCustomStatusBar.FPanels:TStatusPanels
 00536AC5    mov         eax,dword ptr [eax+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 00536AC8    cmp         dword ptr [eax+8],0;TList<System.Classes.TCollectionItem>.FCount:Integer
 00536ACC    setg        al
>00536ACF    jmp         00536AD3
 00536AD1    xor         eax,eax
 00536AD3    test        al,al
>00536AD5    je          00536AEB
 00536AD7    mov         byte ptr [ebx+2C0],1;TCustomStatusBar.FUpdatedPanels:Boolean
 00536ADE    mov         cl,1
 00536AE0    mov         dl,1
 00536AE2    mov         eax,ebx
 00536AE4    call        0053682C
>00536AE9    jmp         00536AF6
 00536AEB    mov         cl,1
 00536AED    xor         edx,edx
 00536AEF    mov         eax,ebx
 00536AF1    call        0053682C
 00536AF6    mov         edx,esi
 00536AF8    mov         eax,ebx
 00536AFA    call        TWinControl.WMPaint
 00536AFF    pop         esi
 00536B00    pop         ebx
 00536B01    ret
end;*}

//00536B04
{*procedure TCustomStatusBar.WMSize(?:?);
begin
 00536B04    push        esi
 00536B05    push        edi
 00536B06    mov         edi,eax
 00536B08    test        byte ptr [edi+1C],1;TCustomStatusBar.FComponentState:TComponentState
>00536B0C    jne         00536B19
 00536B0E    mov         eax,edi
 00536B10    mov         si,0FFCF
 00536B14    call        @CallDynaInst;TControl.sub_004E5FD0
 00536B19    mov         eax,edi
 00536B1B    mov         edx,dword ptr [eax]
 00536B1D    call        dword ptr [edx+0AC];TWinControl.Repaint
 00536B23    pop         edi
 00536B24    pop         esi
 00536B25    ret
end;*}

//00536B28
function TStatusBar.IsStoredFont(Value:TFont):Boolean;
begin
{*
 00536B28    cmp         byte ptr [eax+29F],0;TStatusBar.FUseSystemFont:Boolean
>00536B2F    jne         00536B3D
 00536B31    cmp         byte ptr [eax+6B],0;TStatusBar.FParentFont:Boolean
>00536B35    jne         00536B3D
 00536B37    cmp         byte ptr [eax+68],0;TStatusBar.FDesktopFont:Boolean
>00536B3B    je          00536B40
 00536B3D    xor         eax,eax
 00536B3F    ret
 00536B40    mov         al,1
 00536B42    ret
*}
end;

//00536B44
procedure TStatusBar.SetUseSystemFont(Value:Boolean);
begin
{*
 00536B44    push        ebx
 00536B45    mov         ebx,eax
 00536B47    cmp         dl,byte ptr [ebx+29F];TStatusBar.FUseSystemFont:Boolean
>00536B4D    je          00536B6F
 00536B4F    mov         byte ptr [ebx+29F],dl;TStatusBar.FUseSystemFont:Boolean
 00536B55    test        dl,dl
>00536B57    je          00536B6F
 00536B59    cmp         byte ptr [ebx+6B],0;TStatusBar.FParentFont:Boolean
>00536B5D    je          00536B68
 00536B5F    xor         edx,edx
 00536B61    mov         eax,ebx
 00536B63    call        TGroupBox.SetParentFont
 00536B68    mov         eax,ebx
 00536B6A    call        00536668
 00536B6F    pop         ebx
 00536B70    ret
*}
end;

//00536B74
procedure TCustomStatusBar.CMColorChanged(var Message:Messages.TMessage);
begin
{*
 00536B74    push        ebx
 00536B75    mov         ebx,eax
 00536B77    mov         eax,ebx
 00536B79    call        TWinControl.CMColorChanged
 00536B7E    mov         eax,ebx
 00536B80    call        TWinControl.RecreateWnd
 00536B85    pop         ebx
 00536B86    ret
*}
end;

//00536B88
{*procedure TCustomStatusBar.CMParentFontChanged(?:?);
begin
 00536B88    push        ebx
 00536B89    mov         ebx,eax
 00536B8B    mov         eax,ebx
 00536B8D    call        TControl.CMParentFontChanged
 00536B92    cmp         byte ptr [ebx+29F],0;TCustomStatusBar.FUseSystemFont:Boolean
>00536B99    je          00536BA8
 00536B9B    cmp         byte ptr [ebx+6B],0;TCustomStatusBar.FParentFont:Boolean
>00536B9F    je          00536BA8
 00536BA1    mov         byte ptr [ebx+29F],0;TCustomStatusBar.FUseSystemFont:Boolean
 00536BA8    pop         ebx
 00536BA9    ret
end;*}

//00536BAC
procedure TCustomStatusBar.ExecuteAction(Action:TBasicAction);
begin
{*
 00536BAC    push        ebx
 00536BAD    push        esi
 00536BAE    mov         esi,edx
 00536BB0    mov         ebx,eax
 00536BB2    cmp         byte ptr [ebx+2A0],0;TCustomStatusBar.FAutoHint:Boolean
>00536BB9    je          00536C2D
 00536BBB    test        byte ptr [ebx+1C],10;TCustomStatusBar.FComponentState:TComponentState
>00536BBF    jne         00536C2D
 00536BC1    mov         eax,esi
 00536BC3    mov         edx,dword ptr ds:[51DF10];THintAction
 00536BC9    call        @IsClass
 00536BCE    test        al,al
>00536BD0    je          00536C2D
 00536BD2    mov         eax,ebx
 00536BD4    mov         edx,dword ptr [eax]
 00536BD6    call        dword ptr [edx+110];TCustomStatusBar.sub_00536278
 00536BDC    test        al,al
>00536BDE    jne         00536C2D
 00536BE0    cmp         byte ptr [ebx+29C],0;TCustomStatusBar.FSimplePanel:Boolean
>00536BE7    je          00536BED
 00536BE9    mov         al,1
>00536BEB    jmp         00536BFD
 00536BED    mov         eax,dword ptr [ebx+290];TCustomStatusBar.FPanels:TStatusPanels
 00536BF3    mov         eax,dword ptr [eax+8];TStatusPanels.FItems:TList<System.Classes.TCollectionItem>
 00536BF6    cmp         dword ptr [eax+8],0;TList<System.Classes.TCollectionItem>.FCount:Integer
 00536BFA    sete        al
 00536BFD    test        al,al
>00536BFF    je          00536C10
 00536C01    mov         edx,dword ptr [esi+84]
 00536C07    mov         eax,ebx
 00536C09    call        TStatusBar.SetSimpleText
>00536C0E    jmp         00536C28
 00536C10    xor         edx,edx
 00536C12    mov         eax,dword ptr [ebx+290];TCustomStatusBar.FPanels:TStatusPanels
 00536C18    call        TStatusPanels.GetItem
 00536C1D    mov         edx,dword ptr [esi+84]
 00536C23    call        TStatusPanel.SetText
 00536C28    mov         al,1
 00536C2A    pop         esi
 00536C2B    pop         ebx
 00536C2C    ret
 00536C2D    mov         edx,esi
 00536C2F    mov         eax,ebx
 00536C31    call        TComponent.ExecuteAction
 00536C36    pop         esi
 00536C37    pop         ebx
 00536C38    ret
*}
end;

//00536C3C
procedure TCustomStatusBar.CMSysColorChange;
begin
{*
 00536C3C    push        ebx
 00536C3D    mov         ebx,eax
 00536C3F    mov         eax,ebx
 00536C41    call        TWinControl.CMSysColorChange
 00536C46    mov         eax,ebx
 00536C48    call        TWinControl.RecreateWnd
 00536C4D    pop         ebx
 00536C4E    ret
*}
end;

//00536C50
procedure TCustomStatusBar.CMSysFontChanged(var Message:Messages.TMessage);
begin
{*
 00536C50    push        ebx
 00536C51    mov         ebx,eax
 00536C53    mov         eax,ebx
 00536C55    call        TWinControl.CMSysFontChanged
 00536C5A    mov         eax,ebx
 00536C5C    call        00536668
 00536C61    pop         ebx
 00536C62    ret
*}
end;

//00536C64
procedure TCustomStatusBar.ChangeScale(M:Integer; D:Integer);
begin
{*
 00536C64    push        ebx
 00536C65    mov         ebx,ecx
 00536C67    cmp         byte ptr [eax+29F],0;TCustomStatusBar.FUseSystemFont:Boolean
>00536C6E    je          00536C7D
 00536C70    movzx       ecx,byte ptr ds:[536C88];0x2 gvar_00536C88
 00536C77    mov         byte ptr [eax+98],cl;TCustomStatusBar.FScalingFlags:TScalingFlags
 00536C7D    mov         ecx,ebx
 00536C7F    call        TWinControl.ChangeScale
 00536C84    pop         ebx
 00536C85    ret
*}
end;

//00536C8C
procedure TCustomStatusBar.SetBounds(ALeft:Integer; ATop:Integer; AHeight:Integer; AWidth:Integer);
begin
{*
 00536C8C    push        ebp
 00536C8D    mov         ebp,esp
 00536C8F    push        ebx
 00536C90    mov         ebx,eax
 00536C92    mov         eax,dword ptr [ebp+0C]
 00536C95    push        eax
 00536C96    mov         eax,dword ptr [ebp+8]
 00536C99    push        eax
 00536C9A    mov         eax,ebx
 00536C9C    call        TWinControl.SetBounds
 00536CA1    mov         dl,1
 00536CA3    mov         eax,ebx
 00536CA5    call        00536CB8
 00536CAA    pop         ebx
 00536CAB    pop         ebp
 00536CAC    ret         8
*}
end;

//00536CB0
procedure sub_00536CB0;
begin
{*
 00536CB0    call        004F22F8
 00536CB5    ret
*}
end;

//00536CB8
{*procedure sub_00536CB8(?:TCustomStatusBar; ?:?);
begin
 00536CB8    push        ebx
 00536CB9    push        esi
 00536CBA    push        edi
 00536CBB    add         esp,0FFFFFFEC
 00536CBE    mov         byte ptr [esp],dl
 00536CC1    mov         edi,eax
 00536CC3    xor         ebx,ebx
 00536CC5    mov         dl,1
 00536CC7    mov         eax,edi
 00536CC9    call        GetParentForm
 00536CCE    mov         esi,eax
 00536CD0    test        esi,esi
>00536CD2    je          00536D23
 00536CD4    movzx       eax,byte ptr [esi+2BD];TCustomForm.FBorderStyle:TFormBorderStyle
 00536CDB    sub         al,2
>00536CDD    je          00536CE3
 00536CDF    sub         al,3
>00536CE1    jne         00536D23
 00536CE3    mov         eax,dword ptr [edi+58];TCustomStatusBar.FWidth:Integer
 00536CE6    mov         edx,dword ptr [edi+5C];TCustomStatusBar.FHeight:Integer
 00536CE9    mov         dword ptr [esp+0C],eax
 00536CED    mov         dword ptr [esp+10],edx
 00536CF1    lea         eax,[esp+4]
 00536CF5    push        eax
 00536CF6    lea         edx,[esp+10]
 00536CFA    mov         ecx,esi
 00536CFC    mov         eax,edi
 00536CFE    call        TControl.ClientToParent
 00536D03    mov         eax,esi
 00536D05    call        TControl.GetClientWidth
 00536D0A    cmp         eax,dword ptr [esp+4]
>00536D0E    jne         00536D1D
 00536D10    mov         eax,esi
 00536D12    call        TControl.GetClientHeight
 00536D17    cmp         eax,dword ptr [esp+8]
>00536D1B    je          00536D21
 00536D1D    xor         ebx,ebx
>00536D1F    jmp         00536D23
 00536D21    mov         bl,1
 00536D23    cmp         bl,byte ptr [edi+29E];TCustomStatusBar.FSizeGripValid:Boolean
>00536D29    je          00536D3E
 00536D2B    mov         byte ptr [edi+29E],bl;TCustomStatusBar.FSizeGripValid:Boolean
 00536D31    cmp         byte ptr [esp],0
>00536D35    je          00536D3E
 00536D37    mov         eax,edi
 00536D39    call        TWinControl.RecreateWnd
 00536D3E    add         esp,14
 00536D41    pop         edi
 00536D42    pop         esi
 00536D43    pop         ebx
 00536D44    ret
end;*}

//00536D48
procedure sub_00536D48;
begin
{*
 00536D48    push        ebx
 00536D49    push        ecx
 00536D4A    mov         ebx,eax
 00536D4C    mov         eax,ebx
 00536D4E    mov         edx,dword ptr [eax]
 00536D50    call        dword ptr [edx+114];TCustomStatusBar.sub_00536D94
 00536D56    mov         dword ptr [esp],eax
 00536D59    cmp         word ptr [ebx+2BA],0;TCustomStatusBar.?f2BA:word
>00536D61    je          00536D73
 00536D63    mov         ecx,esp
 00536D65    mov         edx,ebx
 00536D67    mov         eax,dword ptr [ebx+2BC];TCustomStatusBar.?f2BC:dword
 00536D6D    call        dword ptr [ebx+2B8];TCustomStatusBar.FOnCreatePanelClass
 00536D73    mov         ecx,dword ptr [ebx+290];TCustomStatusBar.FPanels:TStatusPanels
 00536D79    mov         dl,1
 00536D7B    mov         eax,dword ptr [esp]
 00536D7E    call        dword ptr [eax+1C]
 00536D81    pop         edx
 00536D82    pop         ebx
 00536D83    ret
*}
end;

//00536D84
procedure sub_00536D84;
begin
{*
 00536D84    mov         ecx,eax
 00536D86    mov         dl,1
 00536D88    mov         eax,[00520744];TStatusPanels
 00536D8D    call        TStatusPanels.Create;TStatusPanels.Create
 00536D92    ret
*}
end;

//00536D94
constructor TStatusPanel.Create;
begin
{*
 00536D94    mov         eax,[00520368];TStatusPanel
 00536D99    ret
*}
end;

//00536D9C
{*procedure TCustomStatusBar.WMEraseBkgnd(?:?);
begin
 00536D9C    push        ebx
 00536D9D    push        esi
 00536D9E    push        edi
 00536D9F    add         esp,0FFFFFFE4
 00536DA2    mov         esi,edx
 00536DA4    mov         ebx,eax
 00536DA6    call        StyleServices
 00536DAB    mov         edx,dword ptr [eax]
 00536DAD    call        dword ptr [edx+4C];TCustomStyleServices.GetEnabled
 00536DB0    test        al,al
>00536DB2    je          00536DF1
 00536DB4    call        StyleServices
 00536DB9    mov         ecx,esp
 00536DBB    mov         dl,1
 00536DBD    mov         edi,dword ptr [eax]
 00536DBF    call        dword ptr [edi+0D4];TCustomStyleServices.GetElementDetails
 00536DC5    lea         edx,[esp+0C]
 00536DC9    mov         eax,ebx
 00536DCB    mov         ecx,dword ptr [eax]
 00536DCD    call        dword ptr [ecx+64];TWinControl.GetClientRect
 00536DD0    lea         eax,[esp+0C]
 00536DD4    push        eax
 00536DD5    push        0
 00536DD7    call        StyleServices
 00536DDC    mov         edx,dword ptr [esi+4]
 00536DDF    lea         ecx,[esp+8]
 00536DE3    call        TCustomStyleServices.DrawElement
 00536DE8    mov         dword ptr [esi+0C],1
>00536DEF    jmp         00536DFA
 00536DF1    mov         edx,esi
 00536DF3    mov         eax,ebx
 00536DF5    call        TWinControl.WMEraseBkgnd
 00536DFA    add         esp,1C
 00536DFD    pop         edi
 00536DFE    pop         esi
 00536DFF    pop         ebx
 00536E00    ret
end;*}

//00536E04
constructor THeaderSection.Create(Collection:TCollection);
begin
{*
 00536E04    push        ebx
 00536E05    push        esi
 00536E06    test        dl,dl
>00536E08    je          00536E12
 00536E0A    add         esp,0FFFFFFF0
 00536E0D    call        @ClassCreate
 00536E12    mov         ebx,edx
 00536E14    mov         esi,eax
 00536E16    mov         dword ptr [esi+10],32;THeaderSection.FWidth:Integer
 00536E1D    mov         dword ptr [esi+18],2710;THeaderSection.FMaxWidth:Integer
 00536E24    mov         byte ptr [esi+1E],1;THeaderSection.FAllowClick:Boolean
 00536E28    mov         dword ptr [esi+20],0FFFFFFFF;THeaderSection.FImageIndex:TImageIndex
 00536E2F    mov         byte ptr [esi+25],1;THeaderSection.FParentBiDiMode:Boolean
 00536E33    xor         edx,edx
 00536E35    mov         eax,esi
 00536E37    call        TCollectionItem.Create
 00536E3C    mov         eax,esi
 00536E3E    call        THeaderSection.ParentBiDiModeChanged
 00536E43    mov         byte ptr [esi+27],0;THeaderSection.FChecked:Boolean
 00536E47    mov         byte ptr [esi+26],0;THeaderSection.FCheckBox:Boolean
 00536E4B    mov         byte ptr [esi+28],0;THeaderSection.FFixedWidth:Boolean
 00536E4F    mov         eax,esi
 00536E51    test        bl,bl
>00536E53    je          00536E64
 00536E55    call        @AfterConstruction
 00536E5A    pop         dword ptr fs:[0]
 00536E61    add         esp,0C
 00536E64    mov         eax,esi
 00536E66    pop         esi
 00536E67    pop         ebx
 00536E68    ret
*}
end;

//00536E6C
procedure THeaderSection.Assign(Source:TPersistent);
begin
{*
 00536E6C    push        ebx
 00536E6D    push        esi
 00536E6E    push        edi
 00536E6F    mov         esi,edx
 00536E71    mov         ebx,eax
 00536E73    mov         eax,esi
 00536E75    mov         edx,dword ptr ds:[521DB8];THeaderSection
 00536E7B    call        @IsClass
 00536E80    test        al,al
>00536E82    je          00536EED
 00536E84    mov         edi,esi
 00536E86    mov         edx,dword ptr [edi+0C]
 00536E89    mov         eax,ebx
 00536E8B    call        THeaderSection.SetText
 00536E90    mov         edx,dword ptr [edi+10]
 00536E93    mov         eax,ebx
 00536E95    call        THeaderSection.SetWidth
 00536E9A    mov         edx,dword ptr [edi+14]
 00536E9D    mov         eax,ebx
 00536E9F    call        THeaderSection.SetMinWidth
 00536EA4    mov         edx,dword ptr [edi+18]
 00536EA7    mov         eax,ebx
 00536EA9    call        THeaderSection.SetMaxWidth
 00536EAE    movzx       edx,byte ptr [edi+1C]
 00536EB2    mov         eax,ebx
 00536EB4    call        THeaderSection.SetAlignment
 00536EB9    movzx       edx,byte ptr [edi+1D]
 00536EBD    mov         eax,ebx
 00536EBF    call        THeaderSection.SetStyle
 00536EC4    movzx       eax,byte ptr [edi+1E]
 00536EC8    mov         byte ptr [ebx+1E],al;THeaderSection.FAllowClick:Boolean
 00536ECB    mov         edx,dword ptr [edi+20]
 00536ECE    mov         eax,ebx
 00536ED0    call        THeaderSection.SetImageIndex
 00536ED5    movzx       edx,byte ptr [edi+26]
 00536ED9    mov         eax,ebx
 00536EDB    call        THeaderSection.SetCheckBox
 00536EE0    movzx       edx,byte ptr [edi+27]
 00536EE4    mov         eax,ebx
 00536EE6    call        THeaderSection.SetChecked
>00536EEB    jmp         00536EF6
 00536EED    mov         edx,esi
 00536EEF    mov         eax,ebx
 00536EF1    call        TPersistent.Assign
 00536EF6    pop         edi
 00536EF7    pop         esi
 00536EF8    pop         ebx
 00536EF9    ret
*}
end;

//00536EFC
procedure THeaderSection.SetBiDiMode(Value:TBiDiMode);
begin
{*
 00536EFC    cmp         dl,byte ptr [eax+24];THeaderSection.FBiDiMode:TBiDiMode
>00536EFF    je          00536F0F
 00536F01    mov         byte ptr [eax+24],dl;THeaderSection.FBiDiMode:TBiDiMode
 00536F04    mov         byte ptr [eax+25],0;THeaderSection.FParentBiDiMode:Boolean
 00536F08    xor         edx,edx
 00536F0A    call        TCollectionItem.Changed
 00536F0F    ret
*}
end;

//00536F10
procedure THeaderSection.IsStoredBiDiMode(Value:TBiDiMode);
begin
{*
 00536F10    movzx       eax,byte ptr [eax+25];THeaderSection.FParentBiDiMode:Boolean
 00536F14    xor         al,1
 00536F16    ret
*}
end;

//00536F18
procedure THeaderSection.SetParentBiDiMode(Value:Boolean);
begin
{*
 00536F18    cmp         dl,byte ptr [eax+25];THeaderSection.FParentBiDiMode:Boolean
>00536F1B    je          00536F25
 00536F1D    mov         byte ptr [eax+25],dl;THeaderSection.FParentBiDiMode:Boolean
 00536F20    call        THeaderSection.ParentBiDiModeChanged
 00536F25    ret
*}
end;

//00536F28
procedure THeaderSection.ParentBiDiModeChanged;
begin
{*
 00536F28    push        ebx
 00536F29    push        esi
 00536F2A    mov         ebx,eax
 00536F2C    cmp         byte ptr [ebx+25],0;THeaderSection.FParentBiDiMode:Boolean
>00536F30    je          00536F5E
 00536F32    mov         eax,ebx
 00536F34    mov         si,0FFFF
 00536F38    call        @CallDynaInst;TCollectionItem.sub_0048EDE4
 00536F3D    test        eax,eax
>00536F3F    je          00536F5E
 00536F41    mov         eax,ebx
 00536F43    mov         si,0FFFF
 00536F47    call        @CallDynaInst;TCollectionItem.sub_0048EDE4
 00536F4C    mov         eax,dword ptr [eax+18]
 00536F4F    movzx       edx,byte ptr [eax+71]
 00536F53    mov         eax,ebx
 00536F55    call        THeaderSection.SetBiDiMode
 00536F5A    mov         byte ptr [ebx+25],1;THeaderSection.FParentBiDiMode:Boolean
 00536F5E    pop         esi
 00536F5F    pop         ebx
 00536F60    ret
*}
end;

//00536F64
function THeaderSection.UseRightToLeftReading:Boolean;
begin
{*
 00536F64    mov         edx,dword ptr ds:[7C4EF4];^gvar_007C7CB8:Cardinal
 00536F6A    cmp         byte ptr [edx+0D],0
>00536F6E    je          00536F76
 00536F70    cmp         byte ptr [eax+24],0;THeaderSection.FBiDiMode:TBiDiMode
>00536F74    jne         00536F79
 00536F76    xor         eax,eax
 00536F78    ret
 00536F79    mov         al,1
 00536F7B    ret
*}
end;

//00536F7C
function THeaderSection.UseRightToLeftAlignment:Boolean;
begin
{*
 00536F7C    mov         edx,dword ptr ds:[7C4EF4];^gvar_007C7CB8:Cardinal
 00536F82    cmp         byte ptr [edx+0D],0
>00536F86    je          00536F8E
 00536F88    cmp         byte ptr [eax+24],1;THeaderSection.FBiDiMode:TBiDiMode
>00536F8C    je          00536F91
 00536F8E    xor         eax,eax
 00536F90    ret
 00536F91    mov         al,1
 00536F93    ret
*}
end;

//00536F94
{*procedure THeaderSection.GetDisplayName(?:?);
begin
 00536F94    push        ebx
 00536F95    push        esi
 00536F96    mov         esi,edx
 00536F98    mov         ebx,eax
 00536F9A    mov         eax,esi
 00536F9C    mov         edx,dword ptr [ebx+0C];THeaderSection.FText:string
 00536F9F    call        @UStrAsg
 00536FA4    cmp         dword ptr [esi],0
>00536FA7    jne         00536FB2
 00536FA9    mov         edx,esi
 00536FAB    mov         eax,ebx
 00536FAD    call        TCollectionItem.GetDisplayName
 00536FB2    pop         esi
 00536FB3    pop         ebx
 00536FB4    ret
end;*}

//00536FB8
{*function sub_00536FB8(?:THeaderSection):?;
begin
 00536FB8    push        ebx
 00536FB9    push        esi
 00536FBA    push        edi
 00536FBB    push        ebp
 00536FBC    mov         edi,eax
 00536FBE    xor         ebp,ebp
 00536FC0    mov         eax,edi
 00536FC2    call        TCollectionItem.GetIndex
 00536FC7    mov         ebx,eax
 00536FC9    dec         ebx
 00536FCA    test        ebx,ebx
>00536FCC    jl          00536FE2
 00536FCE    inc         ebx
 00536FCF    xor         esi,esi
 00536FD1    mov         eax,dword ptr [edi+4]
 00536FD4    mov         edx,esi
 00536FD6    call        THeaderSections.GetItem
 00536FDB    add         ebp,dword ptr [eax+10];THeaderSection.FWidth:Integer
 00536FDE    inc         esi
 00536FDF    dec         ebx
>00536FE0    jne         00536FD1
 00536FE2    mov         eax,ebp
 00536FE4    pop         ebp
 00536FE5    pop         edi
 00536FE6    pop         esi
 00536FE7    pop         ebx
 00536FE8    ret
end;*}

//00536FEC
procedure sub_00536FEC(?:THeaderSection);
begin
{*
 00536FEC    push        ebx
 00536FED    mov         ebx,eax
 00536FEF    mov         eax,ebx
 00536FF1    call        00536FB8
 00536FF6    add         eax,dword ptr [ebx+10]
 00536FF9    pop         ebx
 00536FFA    ret
*}
end;

//00536FFC
procedure THeaderSection.SetAlignment(Value:TAlignment);
begin
{*
 00536FFC    cmp         dl,byte ptr [eax+1C];THeaderSection.FAlignment:TAlignment
>00536FFF    je          0053700B
 00537001    mov         byte ptr [eax+1C],dl;THeaderSection.FAlignment:TAlignment
 00537004    xor         edx,edx
 00537006    call        TCollectionItem.Changed
 0053700B    ret
*}
end;

//0053700C
procedure THeaderSection.SetAutoSize(Value:Boolean);
begin
{*
 0053700C    push        esi
 0053700D    mov         esi,eax
 0053700F    cmp         dl,byte ptr [esi+1F];THeaderSection.FAutoSize:Boolean
>00537012    je          0053702A
 00537014    mov         byte ptr [esi+1F],dl;THeaderSection.FAutoSize:Boolean
 00537017    mov         eax,dword ptr [esi+4];THeaderSection.FCollection:TCollection
 0053701A    mov         eax,dword ptr [eax+18]
 0053701D    test        eax,eax
>0053701F    je          0053702A
 00537021    mov         si,0FFEE
 00537025    call        @CallDynaInst
 0053702A    pop         esi
 0053702B    ret
*}
end;

//0053702C
procedure THeaderSection.SetMaxWidth(Value:Integer);
begin
{*
 0053702C    mov         ecx,dword ptr [eax+14];THeaderSection.FMinWidth:Integer
 0053702F    cmp         edx,ecx
>00537031    jge         00537035
 00537033    mov         edx,ecx
 00537035    cmp         edx,2710
>0053703B    jle         00537042
 0053703D    mov         edx,2710
 00537042    mov         dword ptr [eax+18],edx;THeaderSection.FMaxWidth:Integer
 00537045    mov         edx,dword ptr [eax+10];THeaderSection.FWidth:Integer
 00537048    call        THeaderSection.SetWidth
 0053704D    ret
*}
end;

//00537050
procedure THeaderSection.SetMinWidth(Value:Integer);
begin
{*
 00537050    test        edx,edx
>00537052    jge         00537056
 00537054    xor         edx,edx
 00537056    mov         ecx,dword ptr [eax+18];THeaderSection.FMaxWidth:Integer
 00537059    cmp         edx,ecx
>0053705B    jle         0053705F
 0053705D    mov         edx,ecx
 0053705F    mov         dword ptr [eax+14],edx;THeaderSection.FMinWidth:Integer
 00537062    mov         edx,dword ptr [eax+10];THeaderSection.FWidth:Integer
 00537065    call        THeaderSection.SetWidth
 0053706A    ret
*}
end;

//0053706C
procedure THeaderSection.SetStyle(Value:THeaderSectionStyle);
begin
{*
 0053706C    cmp         dl,byte ptr [eax+1D];THeaderSection.FStyle:THeaderSectionStyle
>0053706F    je          0053707B
 00537071    mov         byte ptr [eax+1D],dl;THeaderSection.FStyle:THeaderSectionStyle
 00537074    xor         edx,edx
 00537076    call        TCollectionItem.Changed
 0053707B    ret
*}
end;

//0053707C
procedure THeaderSection.SetText(Value:string);
begin
{*
 0053707C    push        ebx
 0053707D    push        esi
 0053707E    mov         esi,edx
 00537080    mov         ebx,eax
 00537082    mov         eax,dword ptr [ebx+0C];THeaderSection.FText:string
 00537085    mov         edx,esi
 00537087    call        @UStrEqual
>0053708C    je          005370A1
 0053708E    lea         eax,[ebx+0C];THeaderSection.FText:string
 00537091    mov         edx,esi
 00537093    call        @UStrAsg
 00537098    xor         edx,edx
 0053709A    mov         eax,ebx
 0053709C    call        TCollectionItem.Changed
 005370A1    pop         esi
 005370A2    pop         ebx
 005370A3    ret
*}
end;

//005370A4
procedure THeaderSection.SetWidth(Value:Integer);
begin
{*
 005370A4    push        ebx
 005370A5    mov         ebx,eax
 005370A7    mov         eax,dword ptr [ebx+14];THeaderSection.FMinWidth:Integer
 005370AA    cmp         edx,eax
>005370AC    jge         005370B0
 005370AE    mov         edx,eax
 005370B0    mov         eax,dword ptr [ebx+18];THeaderSection.FMaxWidth:Integer
 005370B3    cmp         edx,eax
>005370B5    jle         005370B9
 005370B7    mov         edx,eax
 005370B9    cmp         edx,dword ptr [ebx+10];THeaderSection.FWidth:Integer
>005370BC    je          005370E6
 005370BE    mov         dword ptr [ebx+10],edx;THeaderSection.FWidth:Integer
 005370C1    cmp         dword ptr [ebx+4],0;THeaderSection.FCollection:TCollection
>005370C5    je          005370E6
 005370C7    mov         eax,ebx
 005370C9    call        TCollectionItem.GetIndex
 005370CE    mov         edx,dword ptr [ebx+4];THeaderSection.FCollection:TCollection
 005370D1    mov         edx,dword ptr [edx+8];TCollection.FItems:TList<System.Classes.TCollectionItem>
 005370D4    mov         edx,dword ptr [edx+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 005370D7    dec         edx
 005370D8    cmp         eax,edx
 005370DA    setl        al
 005370DD    mov         edx,eax
 005370DF    mov         eax,ebx
 005370E1    call        TCollectionItem.Changed
 005370E6    pop         ebx
 005370E7    ret
*}
end;

//005370E8
procedure THeaderSection.SetImageIndex(Value:TImageIndex);
begin
{*
 005370E8    cmp         edx,dword ptr [eax+20];THeaderSection.FImageIndex:TImageIndex
>005370EB    je          005370F7
 005370ED    mov         dword ptr [eax+20],edx;THeaderSection.FImageIndex:TImageIndex
 005370F0    xor         edx,edx
 005370F2    call        TCollectionItem.Changed
 005370F7    ret
*}
end;

//005370F8
procedure THeaderSection.SetCheckBox(Value:Boolean);
begin
{*
 005370F8    cmp         dl,byte ptr [eax+26];THeaderSection.FCheckBox:Boolean
>005370FB    je          00537107
 005370FD    mov         byte ptr [eax+26],dl;THeaderSection.FCheckBox:Boolean
 00537100    xor         edx,edx
 00537102    call        TCollectionItem.Changed
 00537107    ret
*}
end;

//00537108
procedure THeaderSection.SetChecked(Value:Boolean);
begin
{*
 00537108    push        esi
 00537109    push        edi
 0053710A    mov         edi,eax
 0053710C    cmp         dl,byte ptr [edi+27];THeaderSection.FChecked:Boolean
>0053710F    je          00537136
 00537111    mov         byte ptr [edi+27],dl;THeaderSection.FChecked:Boolean
 00537114    xor         edx,edx
 00537116    mov         eax,edi
 00537118    call        TCollectionItem.Changed
 0053711D    mov         eax,edi
 0053711F    mov         si,0FFFF
 00537123    call        @CallDynaInst;TCollectionItem.sub_0048EDE4
 00537128    mov         eax,dword ptr [eax+18]
 0053712B    mov         edx,edi
 0053712D    mov         si,0FFAB
 00537131    call        @CallDynaInst
 00537136    pop         edi
 00537137    pop         esi
 00537138    ret
*}
end;

//0053713C
procedure THeaderSection.SetFixedWidth(Value:Boolean);
begin
{*
 0053713C    cmp         dl,byte ptr [eax+28];THeaderSection.FFixedWidth:Boolean
>0053713F    je          0053714B
 00537141    mov         byte ptr [eax+28],dl;THeaderSection.FFixedWidth:Boolean
 00537144    xor         edx,edx
 00537146    call        TCollectionItem.Changed
 0053714B    ret
*}
end;

//0053714C
constructor THeaderSections.Create(HeaderControl:TCustomHeaderControl);
begin
{*
 0053714C    push        ebx
 0053714D    push        esi
 0053714E    push        edi
 0053714F    test        dl,dl
>00537151    je          0053715B
 00537153    add         esp,0FFFFFFF0
 00537156    call        @ClassCreate
 0053715B    mov         esi,ecx
 0053715D    mov         ebx,edx
 0053715F    mov         edi,eax
 00537161    mov         ecx,dword ptr ds:[521DB8];THeaderSection
 00537167    xor         edx,edx
 00537169    mov         eax,edi
 0053716B    call        TCollection.Create
 00537170    mov         dword ptr [edi+18],esi;THeaderSections.......FHeaderControl:TCustomHeaderControl
 00537173    mov         eax,edi
 00537175    test        bl,bl
>00537177    je          00537188
 00537179    call        @AfterConstruction
 0053717E    pop         dword ptr fs:[0]
 00537185    add         esp,0C
 00537188    mov         eax,edi
 0053718A    pop         edi
 0053718B    pop         esi
 0053718C    pop         ebx
 0053718D    ret
*}
end;

//00537190
function THeaderSections.Add(?:Integer; ?:THeaderSections):THeaderSection;
begin
{*
 00537190    or          ecx,0FFFFFFFF
 00537193    xor         edx,edx
 00537195    call        THeaderSections.AddItem
 0053719A    ret
*}
end;

//0053719C
function THeaderSections.GetItem(Index:Integer):THeaderSection;
begin
{*
 0053719C    push        ebx
 0053719D    push        esi
 0053719E    mov         esi,edx
 005371A0    mov         ebx,eax
 005371A2    mov         edx,esi
 005371A4    mov         eax,ebx
 005371A6    call        TCollection.GetItem
 005371AB    pop         esi
 005371AC    pop         ebx
 005371AD    ret
*}
end;

//005371B0
procedure THeaderSections.sub_0048EDE4;
begin
{*
 005371B0    mov         eax,dword ptr [eax+18];THeaderSections........FHeaderControl:TCustomHeaderControl
 005371B3    ret
*}
end;

//005371B4
{*procedure sub_005371B4(?:?);
begin
 005371B4    push        ebx
 005371B5    push        esi
 005371B6    mov         esi,edx
 005371B8    mov         ebx,eax
 005371BA    test        esi,esi
>005371BC    je          005371D2
 005371BE    mov         eax,esi
 005371C0    call        TCollectionItem.GetIndex
 005371C5    mov         edx,eax
 005371C7    mov         eax,dword ptr [ebx+18];THeaderSections.........FHeaderControl:TCustomHeaderControl
 005371CA    call        00537B14
 005371CF    pop         esi
 005371D0    pop         ebx
 005371D1    ret
 005371D2    mov         eax,dword ptr [ebx+18];THeaderSections..........FHeaderControl:TCustomHeaderControl
 005371D5    call        00537B38
 005371DA    pop         esi
 005371DB    pop         ebx
 005371DC    ret
end;*}

//005371E0
function THeaderSections.AddItem(Item:THeaderSection; Index:Integer):THeaderSection;
begin
{*
 005371E0    push        ebx
 005371E1    push        esi
 005371E2    push        edi
 005371E3    mov         edi,ecx
 005371E5    mov         esi,eax
 005371E7    test        edx,edx
>005371E9    jne         005371FA
 005371EB    mov         eax,dword ptr [esi+18];THeaderSections...........FHeaderControl:TCustomHeaderControl
 005371EE    mov         edx,dword ptr [eax]
 005371F0    call        dword ptr [edx+108];TCustomHeaderControl.sub_00538730
 005371F6    mov         ebx,eax
>005371F8    jmp         0053721F
 005371FA    mov         ebx,edx
 005371FC    test        edx,edx
>005371FE    je          0053721F
 00537200    mov         edx,esi
 00537202    mov         eax,ebx
 00537204    mov         ecx,dword ptr [eax]
 00537206    call        dword ptr [ecx+10];TCollectionItem.SetCollection
 00537209    mov         eax,dword ptr [esi+8];THeaderSections.FItems:TList<System.Classes.TCollectionItem>
 0053720C    mov         eax,dword ptr [eax+8];TList<System.Classes.TCollectionItem>.FCount:Integer
 0053720F    cmp         edi,eax
>00537211    jge         00537216
 00537213    mov         edi,eax
 00537215    dec         edi
 00537216    mov         edx,edi
 00537218    mov         eax,ebx
 0053721A    mov         ecx,dword ptr [eax]
 0053721C    call        dword ptr [ecx+14];THeaderSection.sub_0048F1A4
 0053721F    mov         eax,ebx
 00537221    pop         edi
 00537222    pop         esi
 00537223    pop         ebx
 00537224    ret
*}
end;

//00537228
constructor TCustomHeaderControl.Create(AOwner:TComponent);
begin
{*
 00537228    push        ebp
 00537229    mov         ebp,esp
 0053722B    push        ecx
 0053722C    push        ebx
 0053722D    push        esi
 0053722E    test        dl,dl
>00537230    je          0053723A
 00537232    add         esp,0FFFFFFF0
 00537235    call        @ClassCreate
 0053723A    mov         byte ptr [ebp-1],dl
 0053723D    mov         ebx,eax
 0053723F    xor         edx,edx
 00537241    mov         eax,ebx
 00537243    call        TWinControl.Create
 00537248    mov         eax,[00537308];0x0 gvar_00537308
 0053724D    mov         dword ptr [ebx+60],eax;TCustomHeaderControl.FControlStyle:TControlStyle
 00537250    mov         dl,1
 00537252    mov         eax,ebx
 00537254    call        TGroupBox.SetAlign
 00537259    mov         edx,11
 0053725E    mov         eax,ebx
 00537260    call        TControl.SetHeight
 00537265    mov         eax,ebx
 00537267    mov         edx,dword ptr [eax]
 00537269    call        dword ptr [edx+10C];TCustomHeaderControl.sub_00538768
 0053726F    mov         dword ptr [ebx+290],eax;TCustomHeaderControl.FSections:THeaderSections
 00537275    mov         dl,1
 00537277    mov         eax,[004D9044];TControlCanvas
 0053727C    call        TCanvas.Create;TControlCanvas.Create
 00537281    mov         esi,eax
 00537283    mov         dword ptr [ebx+29C],esi;TCustomHeaderControl.FCanvas:TCanvas
 00537289    mov         eax,esi
 0053728B    mov         edx,ebx
 0053728D    call        TControlCanvas.SetControl
 00537292    mov         dl,1
 00537294    mov         eax,[005A6CE0];TChangeLink
 00537299    call        TChangeLink.Create;TChangeLink.Create
 0053729E    mov         esi,eax
 005372A0    mov         dword ptr [ebx+2AC],esi;TCustomHeaderControl.FImageChangeLink:TChangeLink
 005372A6    mov         dword ptr [esi+14],ebx;TChangeLink.?f14:TCustomActionList
 005372A9    mov         dword ptr [esi+10],5384DC;TChangeLink.FOnChange:TNotifyEvent sub_005384DC
 005372B0    mov         byte ptr [ebx+2A8],1;TCustomHeaderControl.FFullDrag:Boolean
 005372B7    mov         byte ptr [ebx+2AA],0;TCustomHeaderControl.FDragReorder:Boolean
 005372BE    mov         byte ptr [ebx+299],0;TCustomHeaderControl.FSectionDragged:Boolean
 005372C5    mov         byte ptr [ebx+298],0;TCustomHeaderControl.FUpdatingSectionOrder:Boolean
 005372CC    xor         eax,eax
 005372CE    mov         dword ptr [ebx+294],eax;TCustomHeaderControl.FSectionStream:TMemoryStream
 005372D4    mov         byte ptr [ebx+308],0;TCustomHeaderControl.FCheckBoxes:Boolean
 005372DB    mov         byte ptr [ebx+309],0;TCustomHeaderControl.FNoSizing:Boolean
 005372E2    mov         byte ptr [ebx+30A],0;TCustomHeaderControl.FOverflow:Boolean
 005372E9    mov         eax,ebx
 005372EB    cmp         byte ptr [ebp-1],0
>005372EF    je          00537300
 005372F1    call        @AfterConstruction
 005372F6    pop         dword ptr fs:[0]
 005372FD    add         esp,0C
 00537300    mov         eax,ebx
 00537302    pop         esi
 00537303    pop         ebx
 00537304    pop         ecx
 00537305    pop         ebp
 00537306    ret
*}
end;

Initialization
//0079D328
{*
 0079D328    sub         dword ptr ds:[7CA698],1
>0079D32F    jae         0079D347
 0079D331    mov         ecx,dword ptr ds:[532E5C];THeaderStyleHook
 0079D337    mov         edx,dword ptr ds:[522A7C];TCustomHeaderControl
 0079D33D    mov         eax,[005738E0];TCustomStyleEngine
 0079D342    call        TCustomStyleEngine.RegisterStyleHook
 0079D347    ret
*}
Finalization
end.